@interface TSUZipReadChannel
- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length error:(id *)error;
- (TSUZipReadChannel)initWithEntry:(id)entry archive:(id)archive validateCRC:(BOOL)c;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)handler error:(id)error;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)readWithFileHeaderLength:(unint64_t)length handler:(id)handler;
- (void)readWithHandler:(id)handler;
- (void)setLowWater:(unint64_t)water;
@end

@implementation TSUZipReadChannel

- (TSUZipReadChannel)initWithEntry:(id)entry archive:(id)archive validateCRC:(BOOL)c
{
  entryCopy = entry;
  archiveCopy = archive;
  v18.receiver = self;
  v18.super_class = TSUZipReadChannel;
  v11 = [(TSUZipReadChannel *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, entry);
    objc_storeStrong(&v12->_archive, archive);
    v12->_validateCRC = c;
    newArchiveReadChannel = [archiveCopy newArchiveReadChannel];
    archiveReadChannel = v12->_archiveReadChannel;
    v12->_archiveReadChannel = newArchiveReadChannel;

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

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  fileHeaderLength = [(TSUZipEntry *)self->_entry fileHeaderLength];
  if (fileHeaderLength)
  {
    [(TSUZipReadChannel *)self readWithFileHeaderLength:fileHeaderLength handler:handlerCopy];
  }

  else
  {
    nameLength = [(TSUZipEntry *)self->_entry nameLength];
    extraFieldsLength = [(TSUZipEntry *)self->_entry extraFieldsLength];
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
    offset = [(TSUZipEntry *)self->_entry offset];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100093EF4;
    v12[3] = &unk_1001CD820;
    v14 = v21;
    v12[4] = self;
    v13 = handlerCopy;
    v15 = v25;
    v16 = v23;
    v17 = v19;
    v18 = nameLength + extraFieldsLength + 30;
    [(TSUReadChannel *)archiveReadChannel readFromOffset:offset length:v18 + compressedSize handler:v12];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  v10 = compressedSize;
  if (offset < 0 || compressedSize < offset)
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
      name = [(TSUZipEntry *)entry name];
      *buf = 138412802;
      v23 = name;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      offsetCopy = offset;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Requested range is not within the entry: %@. Size: %llu. Requested offset: %llu", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, 1, &_dispatch_data_empty, 0);
  }

  else
  {
    if (compressedSize - offset < length)
    {
      length = compressedSize - offset;
    }

    if (offset || length != compressedSize)
    {
      fileHeaderLength = [(TSUZipEntry *)self->_entry fileHeaderLength];
      if (fileHeaderLength)
      {
        [(TSUReadChannel *)self->_archiveReadChannel readFromOffset:[(TSUZipEntry *)self->_entry offset]+ fileHeaderLength + offset length:length handler:handlerCopy];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        offset = [(TSUZipEntry *)self->_entry offset];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000945A0;
        v18[3] = &unk_1001CD868;
        v18[4] = self;
        offsetCopy2 = offset;
        lengthCopy = length;
        v19 = handlerCopy;
        [TSUIOUtils readAllFromChannel:archiveReadChannel offset:offset length:30 completion:v18];
      }
    }

    else
    {
      [(TSUZipReadChannel *)self readWithHandler:handlerCopy];
    }
  }
}

- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length error:(id *)error
{
  dataCopy = data;
  size = dispatch_data_get_size(dataCopy);
  if (size == 30)
  {
    subrange = dataCopy;
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
      if (error)
      {
        goto LABEL_33;
      }
    }

    else if (error)
    {
LABEL_33:
      v41[0] = @"Read was less than record size";
      v40[0] = @"TSUZipArchiveErrorDescription";
      v40[1] = @"TSUZipArchiveErrorEntryName";
      name = [(TSUZipEntry *)self->_entry name];
      v11 = name;
      v31 = &stru_1001D3878;
      if (name)
      {
        v31 = name;
      }

      v41[1] = v31;
      v32 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      *error = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v32];

      v17 = 0;
      goto LABEL_38;
    }

    v17 = 0;
    goto LABEL_39;
  }

  subrange = dispatch_data_create_subrange(dataCopy, 0, 0x1EuLL);
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
    name2 = [(TSUZipEntry *)self->_entry name];
    v20 = name2;
    v21 = &stru_1001D3878;
    if (name2)
    {
      v21 = name2;
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
    name3 = [(TSUZipEntry *)self->_entry name];
    v20 = name3;
    v26 = &stru_1001D3878;
    if (name3)
    {
      v26 = name3;
    }

    v37[1] = v26;
    v22 = v37;
    v23 = v36;
LABEL_27:
    v27 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:2];
    v16 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v27];

    if (error)
    {
      v28 = v16;
      v17 = 0;
      *error = v16;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_37;
  }

  *length = v13[13] + v13[14] + 30;
  [(TSUZipEntry *)self->_entry setFileHeaderLength:?];
  v16 = 0;
  v17 = 1;
LABEL_37:

LABEL_38:
LABEL_39:

  return v17;
}

- (void)readWithFileHeaderLength:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  offset = [(TSUZipEntry *)self->_entry offset];
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094CA0;
  v11[3] = &unk_1001CD8F0;
  v13 = v17;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  v14 = v15;
  [(TSUReadChannel *)archiveReadChannel readFromOffset:offset + length length:compressedSize handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  if (!errorCopy)
  {
    v21 = @"TSUZipArchiveErrorEntryName";
    name = [(TSUZipEntry *)self->_entry name];
    domain = name;
    v18 = &stru_1001D3878;
    if (name)
    {
      v18 = name;
    }

    v22 = v18;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v8 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v13];
    goto LABEL_9;
  }

  v8 = errorCopy;
  tsu_zipArchiveErrorEntryName = [errorCopy tsu_zipArchiveErrorEntryName];

  if (!tsu_zipArchiveErrorEntryName)
  {
    domain = [v8 domain];
    code = [v8 code];
    v20[0] = v8;
    v19[0] = NSUnderlyingErrorKey;
    v19[1] = @"TSUZipArchiveErrorEntryName";
    name2 = [(TSUZipEntry *)self->_entry name];
    v13 = name2;
    v14 = &stru_1001D3878;
    if (name2)
    {
      v14 = name2;
    }

    v20[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [NSError errorWithDomain:domain code:code userInfo:v15];

    v8 = v16;
LABEL_9:
  }

  handlerCopy[2](handlerCopy, 1, 0, v8);
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

- (void)setLowWater:(unint64_t)water
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

  if (water <= 0x1D)
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

  [(TSUReadChannel *)self->_archiveReadChannel setLowWater:water];
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
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

  [(TSUReadChannel *)archiveReadChannel addBarrier:barrierCopy];
}

@end