@interface TSUZipReadChannel
- (BOOL)processData:(id)a3 CRC:(unsigned int *)a4 isDone:(BOOL)a5 handler:(id)a6;
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
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel initWithEntry:archive:validateCRC:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
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
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = sub_2770F07D8;
    v26[4] = sub_2770F07E8;
    v9 = MEMORY[0x277D85CC8];
    v10 = MEMORY[0x277D85CC8];
    v27 = v9;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 1;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = crc32(0, 0, 0);
    archiveReadChannel = self->_archiveReadChannel;
    v12 = [(TSUZipEntry *)self->_entry offset];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2770F07F0;
    v13[3] = &unk_27A703858;
    v15 = v22;
    v13[4] = self;
    v14 = v4;
    v16 = v26;
    v17 = v24;
    v18 = v20;
    v19 = v7 + v8 + 30;
    [(TSUReadChannel *)archiveReadChannel readFromOffset:v12 length:v19 + v5 handler:v13];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);
  }
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [(TSUZipEntry *)self->_entry compressedSize];
  if (a3 < 0 || v9 < a3)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115788();
    }

    (*(v8 + 2))(v8, 1, MEMORY[0x277D85CC8], 0);
  }

  else
  {
    if (v9 - a3 < a4)
    {
      a4 = v9 - a3;
    }

    if (a3 || a4 != v9)
    {
      v10 = [(TSUZipEntry *)self->_entry fileHeaderLength];
      if (v10)
      {
        [(TSUReadChannel *)self->_archiveReadChannel readFromOffset:v10 + a3 + [(TSUZipEntry *)self->_entry offset] length:a4 handler:v8];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        v12 = [(TSUZipEntry *)self->_entry offset];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_2770F0D48;
        v13[3] = &unk_27A703880;
        v13[4] = self;
        v15 = a3;
        v16 = a4;
        v14 = v8;
        [TSUIOUtils readAllFromChannel:archiveReadChannel offset:v12 length:30 completion:v13];
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
  v41[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  size = dispatch_data_get_size(v8);
  if (size == 30)
  {
    subrange = v8;
    goto LABEL_5;
  }

  if (size < 0x1F)
  {
    if (TSUDefaultCat_init_token == -1)
    {
      if (a5)
      {
LABEL_27:
        v29 = MEMORY[0x277CCA9B8];
        v41[0] = @"Read was less than record size";
        v40[0] = @"TSUZipArchiveErrorDescription";
        v40[1] = @"TSUZipArchiveErrorEntryName";
        v30 = [(TSUZipEntry *)self->_entry name];
        v11 = v30;
        v31 = &stru_28862C2A0;
        if (v30)
        {
          v31 = v30;
        }

        v41[1] = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        *a5 = [v29 tsu_fileReadCorruptedFileErrorWithUserInfo:v32];

        v17 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      sub_27711579C();
      if (a5)
      {
        goto LABEL_27;
      }
    }

    v17 = 0;
    goto LABEL_33;
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
      sub_2771157B0();
    }

    v18 = MEMORY[0x277CCA9B8];
    v39[0] = @"Local file header has bad signature";
    v38[0] = @"TSUZipArchiveErrorDescription";
    v38[1] = @"TSUZipArchiveErrorEntryName";
    v19 = [(TSUZipEntry *)self->_entry name];
    v20 = v19;
    v21 = &stru_28862C2A0;
    if (v19)
    {
      v21 = v19;
    }

    v39[1] = v21;
    v22 = MEMORY[0x277CBEAC0];
    v23 = v39;
    v24 = v38;
    goto LABEL_23;
  }

  v14 = *(buffer_ptr + 4);
  if (*(buffer_ptr + 4))
  {
    v15 = v14 == 8;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 || (((v14 != 8) ^ [(TSUZipEntry *)self->_entry isCompressed]) & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_2771157D8();
    }

    v18 = MEMORY[0x277CCA9B8];
    v37[0] = @"Local file header doesn't match compression method from central directory file header";
    v36[0] = @"TSUZipArchiveErrorDescription";
    v36[1] = @"TSUZipArchiveErrorEntryName";
    v25 = [(TSUZipEntry *)self->_entry name];
    v20 = v25;
    v26 = &stru_28862C2A0;
    if (v25)
    {
      v26 = v25;
    }

    v37[1] = v26;
    v22 = MEMORY[0x277CBEAC0];
    v23 = v37;
    v24 = v36;
LABEL_23:
    v27 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
    v16 = [v18 tsu_fileReadCorruptedFileErrorWithUserInfo:v27];

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

    goto LABEL_31;
  }

  *a4 = v13[13] + v13[14] + 30;
  [(TSUZipEntry *)self->_entry setFileHeaderLength:?];
  v16 = 0;
  v17 = 1;
LABEL_31:

LABEL_32:
LABEL_33:

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
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770F13B0;
  v11[3] = &unk_27A7038A8;
  v13 = v17;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v14 = v15;
  [(TSUReadChannel *)archiveReadChannel readFromOffset:v8 + a3 length:v9 handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

- (BOOL)processData:(id)a3 CRC:(unsigned int *)a4 isDone:(BOOL)a5 handler:(id)a6
{
  v7 = a5;
  v22[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a4 && self->_validateCRC && (v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = sub_2770F1660, v20[3] = &unk_27A7038C8, v20[4] = a4, dispatch_data_apply(v10, v20), v7) && [(TSUZipEntry *)self->_entry CRC]!= *a4)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115800();
    }

    v14 = MEMORY[0x277CCA9B8];
    v22[0] = @"CRC does not match";
    v21[0] = @"TSUZipArchiveErrorDescription";
    v21[1] = @"TSUZipArchiveErrorEntryName";
    v15 = [(TSUZipEntry *)self->_entry name];
    v16 = v15;
    v17 = &stru_28862C2A0;
    if (v15)
    {
      v17 = v15;
    }

    v22[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [v14 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];

    [(TSUZipReadChannel *)self handleFailureWithHandler:v11 error:v19];
    v12 = 0;
  }

  else
  {
    v11[2](v11, v7, v10, 0);
    v12 = 1;
  }

  return v12;
}

- (void)handleFailureWithHandler:(id)a3 error:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorEntryName";
    v20 = [(TSUZipEntry *)self->_entry name];
    v11 = v20;
    v21 = &stru_28862C2A0;
    if (v20)
    {
      v21 = v20;
    }

    v25[0] = v21;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v19 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 tsu_zipArchiveErrorEntryName];

  if (!v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [v8 domain];
    v12 = [v8 code];
    v13 = *MEMORY[0x277CCA7E8];
    v23[0] = v8;
    v22[0] = v13;
    v22[1] = @"TSUZipArchiveErrorEntryName";
    v14 = [(TSUZipEntry *)self->_entry name];
    v15 = v14;
    v16 = &stru_28862C2A0;
    if (v14)
    {
      v16 = v14;
    }

    v23[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v18 = [v10 errorWithDomain:v11 code:v12 userInfo:v17];

    v8 = v18;
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
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel setLowWater:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:308 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (a3 <= 0x1D)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel setLowWater:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:309 isFatal:0 description:"Low water is too small"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  archiveReadChannel = self->_archiveReadChannel;

  [(TSUReadChannel *)archiveReadChannel setLowWater:a3];
}

- (void)addBarrier:(id)a3
{
  v4 = a3;
  archiveReadChannel = self->_archiveReadChannel;
  v8 = v4;
  if (!archiveReadChannel)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel addBarrier:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:315 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v4 = v8;
    archiveReadChannel = self->_archiveReadChannel;
  }

  [(TSUReadChannel *)archiveReadChannel addBarrier:v4];
}

@end