@interface TSUZipReadChannel
- (BOOL)readFileHeaderFromData:(id)a3 headerLength:(unint64_t *)a4 error:(id *)a5;
- (TSUZipReadChannel)initWithEntry:(id)a3 archive:(id)a4 validateCRC:(BOOL)a5;
- (void)addBarrier:(id)a3;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)a3 error:(id)a4;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)readWithFileHeaderLength:(unint64_t)a3 handler:(id)a4;
- (void)readWithHandler:(id)a3;
- (void)setLowWater:(unint64_t)a3;
@end

@implementation TSUZipReadChannel

- (TSUZipReadChannel)initWithEntry:(id)a3 archive:(id)a4 validateCRC:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = TSUZipReadChannel;
  v11 = [(TSUZipReadChannel *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, a3);
    objc_storeStrong(&v12->_archive, a4);
    v12->_validateCRC = a5;
    v13 = [v10 newArchiveReadChannel];
    archiveReadChannel = v12->_archiveReadChannel;
    v12->_archiveReadChannel = v13;

    if (!v12->_archiveReadChannel)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015D498();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015D4C0();
      }

      v15 = [NSString stringWithUTF8String:"[TSUZipReadChannel initWithEntry:archive:validateCRC:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipReadChannel.m"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:38 isFatal:0 description:"Archive is closed"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v12 = 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  [(TSUZipReadChannel *)self close];
  v3.receiver = self;
  v3.super_class = TSUZipReadChannel;
  [(TSUZipReadChannel *)&v3 dealloc];
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(TSUZipEntry *)self->_entry compressedSize];
  v6 = [(TSUZipEntry *)self->_entry fileHeaderLength];
  if (v6)
  {
    [(TSUZipReadChannel *)self readWithFileHeaderLength:v6 handler:v4];
  }

  else
  {
    v7 = [(TSUZipEntry *)self->_entry nameLength];
    v8 = [(TSUZipEntry *)self->_entry extraFieldsLength];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_100093EDC;
    v25[4] = sub_100093EEC;
    v9 = &_dispatch_data_empty;
    v26 = &_dispatch_data_empty;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 1;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = crc32(0, 0, 0);
    archiveReadChannel = self->_archiveReadChannel;
    v11 = [(TSUZipEntry *)self->_entry offset];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100093EF4;
    v12[3] = &unk_1001CD820;
    v14 = v21;
    v12[4] = self;
    v13 = v4;
    v15 = v25;
    v16 = v23;
    v17 = v19;
    v18 = v7 + v8 + 30;
    [(TSUReadChannel *)archiveReadChannel readFromOffset:v11 length:v18 + v5 handler:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [(TSUZipEntry *)self->_entry compressedSize];
  v10 = v9;
  if (a3 < 0 || v9 < a3)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015D570();
    }

    v11 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      entry = self->_entry;
      v16 = v11;
      v17 = [(TSUZipEntry *)entry name];
      *buf = 138412802;
      v23 = v17;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = a3;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Requested range is not within the entry: %@. Size: %llu. Requested offset: %llu", buf, 0x20u);
    }

    v8[2](v8, 1, &_dispatch_data_empty, 0);
  }

  else
  {
    if (v9 - a3 < a4)
    {
      a4 = v9 - a3;
    }

    if (a3 || a4 != v9)
    {
      v12 = [(TSUZipEntry *)self->_entry fileHeaderLength];
      if (v12)
      {
        [(TSUReadChannel *)self->_archiveReadChannel readFromOffset:[(TSUZipEntry *)self->_entry offset]+ v12 + a3 length:a4 handler:v8];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        v14 = [(TSUZipEntry *)self->_entry offset];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000945A0;
        v18[3] = &unk_1001CD868;
        v18[4] = self;
        v20 = a3;
        v21 = a4;
        v19 = v8;
        [TSUIOUtils readAllFromChannel:archiveReadChannel offset:v14 length:30 completion:v18];
      }
    }

    else
    {
      [(TSUZipReadChannel *)self readWithHandler:v8];
    }
  }
}

- (BOOL)readFileHeaderFromData:(id)a3 headerLength:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  size = dispatch_data_get_size(v8);
  if (size == 30)
  {
    subrange = v8;
    goto LABEL_5;
  }

  if (size < 0x1F)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015D584();
    }

    v29 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D598(self, v29);
      if (a5)
      {
        goto LABEL_33;
      }
    }

    else if (a5)
    {
LABEL_33:
      v41[0] = @"Read was less than record size";
      v40[0] = @"TSUZipArchiveErrorDescription";
      v40[1] = @"TSUZipArchiveErrorEntryName";
      v30 = [(TSUZipEntry *)self->_entry name];
      v11 = v30;
      v31 = &stru_1001D3878;
      if (v30)
      {
        v31 = v30;
      }

      v41[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      *a5 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v32];

      v17 = 0;
      goto LABEL_38;
    }

    v17 = 0;
    goto LABEL_39;
  }

  subrange = dispatch_data_create_subrange(v8, 0, 0x1EuLL);
LABEL_5:
  v11 = subrange;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(subrange, &buffer_ptr, &size_ptr);
  v13 = buffer_ptr;
  if (*buffer_ptr != 67324752)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015D65C();
    }

    v18 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D684(self, v18, v13);
    }

    v39[0] = @"Local file header has bad signature";
    v38[0] = @"TSUZipArchiveErrorDescription";
    v38[1] = @"TSUZipArchiveErrorEntryName";
    v19 = [(TSUZipEntry *)self->_entry name];
    v20 = v19;
    v21 = &stru_1001D3878;
    if (v19)
    {
      v21 = v19;
    }

    v39[1] = v21;
    v22 = v39;
    v23 = v38;
    goto LABEL_27;
  }

  v14 = *(buffer_ptr + 4);
  if (*(buffer_ptr + 4))
  {
    v15 = v14 == TSUZipDeflateCompressionMethod;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 || (((v14 != TSUZipDeflateCompressionMethod) ^ [(TSUZipEntry *)self->_entry isCompressed]) & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015D730();
    }

    v24 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D758(self, v24, v13 + 4);
    }

    v37[0] = @"Local file header doesn't match compression method from central directory file header";
    v36[0] = @"TSUZipArchiveErrorDescription";
    v36[1] = @"TSUZipArchiveErrorEntryName";
    v25 = [(TSUZipEntry *)self->_entry name];
    v20 = v25;
    v26 = &stru_1001D3878;
    if (v25)
    {
      v26 = v25;
    }

    v37[1] = v26;
    v22 = v37;
    v23 = v36;
LABEL_27:
    v27 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:2];
    v16 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v27];

    if (a5)
    {
      v28 = v16;
      v17 = 0;
      *a5 = v16;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_37;
  }

  *a4 = v13[13] + v13[14] + 30;
  [(TSUZipEntry *)self->_entry setFileHeaderLength:?];
  v16 = 0;
  v17 = 1;
LABEL_37:

LABEL_38:
LABEL_39:

  return v17;
}

- (void)readWithFileHeaderLength:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  v8 = [(TSUZipEntry *)self->_entry offset];
  v9 = [(TSUZipEntry *)self->_entry compressedSize];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094CA0;
  v11[3] = &unk_1001CD8F0;
  v13 = v17;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v14 = v15;
  [(TSUReadChannel *)archiveReadChannel readFromOffset:v8 + a3 length:v9 handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

- (void)handleFailureWithHandler:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v21 = @"TSUZipArchiveErrorEntryName";
    v17 = [(TSUZipEntry *)self->_entry name];
    v10 = v17;
    v18 = &stru_1001D3878;
    if (v17)
    {
      v18 = v17;
    }

    v22 = v18;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v8 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v13];
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 tsu_zipArchiveErrorEntryName];

  if (!v9)
  {
    v10 = [v8 domain];
    v11 = [v8 code];
    v20[0] = v8;
    v19[0] = NSUnderlyingErrorKey;
    v19[1] = @"TSUZipArchiveErrorEntryName";
    v12 = [(TSUZipEntry *)self->_entry name];
    v13 = v12;
    v14 = &stru_1001D3878;
    if (v12)
    {
      v14 = v12;
    }

    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [NSError errorWithDomain:v10 code:v11 userInfo:v15];

    v8 = v16;
LABEL_9:
  }

  v6[2](v6, 1, 0, v8);
}

- (void)close
{
  [(TSUReadChannel *)self->_archiveReadChannel close];
  archiveReadChannel = self->_archiveReadChannel;
  self->_archiveReadChannel = 0;

  entry = self->_entry;
  self->_entry = 0;

  archive = self->_archive;
  self->_archive = 0;
}

- (void)setLowWater:(unint64_t)a3
{
  if (!self->_archiveReadChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015DA58();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015DA6C();
    }

    v5 = [NSString stringWithUTF8String:"[TSUZipReadChannel setLowWater:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:308 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (a3 <= 0x1D)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015DAF4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015DB1C();
    }

    v7 = [NSString stringWithUTF8String:"[TSUZipReadChannel setLowWater:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:309 isFatal:0 description:"Low water is too small"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [(TSUReadChannel *)self->_archiveReadChannel setLowWater:a3];
}

- (void)addBarrier:(id)a3
{
  v4 = a3;
  archiveReadChannel = self->_archiveReadChannel;
  if (!archiveReadChannel)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015DBA4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015DBB8();
    }

    v6 = [NSString stringWithUTF8String:"[TSUZipReadChannel addBarrier:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:315 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    archiveReadChannel = self->_archiveReadChannel;
  }

  [(TSUReadChannel *)archiveReadChannel addBarrier:v4];
}

@end