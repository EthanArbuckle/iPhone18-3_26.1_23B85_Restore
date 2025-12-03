@interface TSUZipReadChannel
- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler;
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
    offset = [(TSUZipEntry *)self->_entry offset];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2770F07F0;
    v13[3] = &unk_27A703858;
    v15 = v22;
    v13[4] = self;
    v14 = handlerCopy;
    v16 = v26;
    v17 = v24;
    v18 = v20;
    v19 = nameLength + extraFieldsLength + 30;
    [(TSUReadChannel *)archiveReadChannel readFromOffset:offset length:v19 + compressedSize handler:v13];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);
  }
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  if (offset < 0 || compressedSize < offset)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115788();
    }

    (*(handlerCopy + 2))(handlerCopy, 1, MEMORY[0x277D85CC8], 0);
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
        [(TSUReadChannel *)self->_archiveReadChannel readFromOffset:fileHeaderLength + offset + [(TSUZipEntry *)self->_entry offset] length:length handler:handlerCopy];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        offset = [(TSUZipEntry *)self->_entry offset];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_2770F0D48;
        v13[3] = &unk_27A703880;
        v13[4] = self;
        offsetCopy = offset;
        lengthCopy = length;
        v14 = handlerCopy;
        [TSUIOUtils readAllFromChannel:archiveReadChannel offset:offset length:30 completion:v13];
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
  v41[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  size = dispatch_data_get_size(dataCopy);
  if (size == 30)
  {
    subrange = dataCopy;
    goto LABEL_5;
  }

  if (size < 0x1F)
  {
    if (TSUDefaultCat_init_token == -1)
    {
      if (error)
      {
LABEL_27:
        v29 = MEMORY[0x277CCA9B8];
        v41[0] = @"Read was less than record size";
        v40[0] = @"TSUZipArchiveErrorDescription";
        v40[1] = @"TSUZipArchiveErrorEntryName";
        name = [(TSUZipEntry *)self->_entry name];
        v11 = name;
        v31 = &stru_28862C2A0;
        if (name)
        {
          v31 = name;
        }

        v41[1] = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        *error = [v29 tsu_fileReadCorruptedFileErrorWithUserInfo:v32];

        v17 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      sub_27711579C();
      if (error)
      {
        goto LABEL_27;
      }
    }

    v17 = 0;
    goto LABEL_33;
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
      sub_2771157B0();
    }

    v18 = MEMORY[0x277CCA9B8];
    v39[0] = @"Local file header has bad signature";
    v38[0] = @"TSUZipArchiveErrorDescription";
    v38[1] = @"TSUZipArchiveErrorEntryName";
    name2 = [(TSUZipEntry *)self->_entry name];
    v20 = name2;
    v21 = &stru_28862C2A0;
    if (name2)
    {
      v21 = name2;
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
    name3 = [(TSUZipEntry *)self->_entry name];
    v20 = name3;
    v26 = &stru_28862C2A0;
    if (name3)
    {
      v26 = name3;
    }

    v37[1] = v26;
    v22 = MEMORY[0x277CBEAC0];
    v23 = v37;
    v24 = v36;
LABEL_23:
    v27 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
    v16 = [v18 tsu_fileReadCorruptedFileErrorWithUserInfo:v27];

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

    goto LABEL_31;
  }

  *length = v13[13] + v13[14] + 30;
  [(TSUZipEntry *)self->_entry setFileHeaderLength:?];
  v16 = 0;
  v17 = 1;
LABEL_31:

LABEL_32:
LABEL_33:

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
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770F13B0;
  v11[3] = &unk_27A7038A8;
  v13 = v17;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  v14 = v15;
  [(TSUReadChannel *)archiveReadChannel readFromOffset:offset + length length:compressedSize handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler
{
  doneCopy = done;
  v22[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  if (c && self->_validateCRC && (v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = sub_2770F1660, v20[3] = &unk_27A7038C8, v20[4] = c, dispatch_data_apply(dataCopy, v20), doneCopy) && [(TSUZipEntry *)self->_entry CRC]!= *c)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277115800();
    }

    v14 = MEMORY[0x277CCA9B8];
    v22[0] = @"CRC does not match";
    v21[0] = @"TSUZipArchiveErrorDescription";
    v21[1] = @"TSUZipArchiveErrorEntryName";
    name = [(TSUZipEntry *)self->_entry name];
    v16 = name;
    v17 = &stru_28862C2A0;
    if (name)
    {
      v17 = name;
    }

    v22[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [v14 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];

    [(TSUZipReadChannel *)self handleFailureWithHandler:handlerCopy error:v19];
    v12 = 0;
  }

  else
  {
    handlerCopy[2](handlerCopy, doneCopy, dataCopy, 0);
    v12 = 1;
  }

  return v12;
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  errorCopy = error;
  if (!errorCopy)
  {
    v19 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorEntryName";
    name = [(TSUZipEntry *)self->_entry name];
    domain = name;
    v21 = &stru_28862C2A0;
    if (name)
    {
      v21 = name;
    }

    v25[0] = v21;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v19 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];
    goto LABEL_9;
  }

  v8 = errorCopy;
  tsu_zipArchiveErrorEntryName = [errorCopy tsu_zipArchiveErrorEntryName];

  if (!tsu_zipArchiveErrorEntryName)
  {
    v10 = MEMORY[0x277CCA9B8];
    domain = [v8 domain];
    code = [v8 code];
    v13 = *MEMORY[0x277CCA7E8];
    v23[0] = v8;
    v22[0] = v13;
    v22[1] = @"TSUZipArchiveErrorEntryName";
    name2 = [(TSUZipEntry *)self->_entry name];
    v15 = name2;
    v16 = &stru_28862C2A0;
    if (name2)
    {
      v16 = name2;
    }

    v23[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v18 = [v10 errorWithDomain:domain code:code userInfo:v17];

    v8 = v18;
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
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel setLowWater:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:308 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (water <= 0x1D)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel setLowWater:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:309 isFatal:0 description:"Low water is too small"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  archiveReadChannel = self->_archiveReadChannel;

  [(TSUReadChannel *)archiveReadChannel setLowWater:water];
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  archiveReadChannel = self->_archiveReadChannel;
  v8 = barrierCopy;
  if (!archiveReadChannel)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel addBarrier:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:315 isFatal:0 description:"Already closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    barrierCopy = v8;
    archiveReadChannel = self->_archiveReadChannel;
  }

  [(TSUReadChannel *)archiveReadChannel addBarrier:barrierCopy];
}

@end