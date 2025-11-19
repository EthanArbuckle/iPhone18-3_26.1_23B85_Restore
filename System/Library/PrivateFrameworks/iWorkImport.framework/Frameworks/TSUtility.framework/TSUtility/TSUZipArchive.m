@interface TSUZipArchive
- (BOOL)hasNonEmptyEntries;
- (BOOL)isValid;
- (BOOL)readCentralFileHeaderWithBuffer:(const void *)a3 dataSize:(unint64_t *)a4 error:(id *)a5;
- (BOOL)readExtraFieldsFromBuffer:(const void *)a3 extraFieldsLength:(unsigned __int16)a4 entry:(id)a5 dataSize:(unint64_t *)a6 error:(id *)a7;
- (BOOL)readFileCommentFromBuffer:(const void *)a3 fileCommentLength:(unsigned __int16)a4 entry:(id)a5 dataSize:(unint64_t *)a6 error:(id *)a7;
- (BOOL)readFilenameFromBuffer:(const void *)a3 nameLength:(unsigned __int16)a4 entry:(id)a5 dataSize:(unint64_t *)a6 error:(id *)a7;
- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)a3 forEntry:(id)a4 error:(id *)a5;
- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)a3 dataLength:(unsigned __int16)a4 entry:(id)a5 error:(id *)a6;
- (BOOL)validateCRCAndReturnError:(id *)a3;
- (TSUZipArchive)initWithOptions:(unint64_t)a3;
- (id)debugDescription;
- (id)entryForName:(id)a3;
- (id)newArchiveReadChannel;
- (id)normalizeEntryName:(id)a3;
- (id)readChannelForEntry:(id)a3 validateCRC:(BOOL)a4;
- (id)streamReadChannelForEntry:(id)a3 validateCRC:(BOOL)a4;
- (unint64_t)archiveLength;
- (void)addEntry:(id)a3;
- (void)collapseCommonRootDirectory;
- (void)enumerateEntriesUsingBlock:(id)a3;
- (void)readArchiveWithQueue:(id)a3 completion:(id)a4;
- (void)readCentralDirectoryData:(id)a3 entryCount:(unint64_t)a4 completion:(id)a5;
- (void)readCentralDirectoryWithEntryCount:(unint64_t)a3 offset:(int64_t)a4 size:(unint64_t)a5 channel:(id)a6 completion:(id)a7;
- (void)readEndOfCentralDirectoryData:(id)a3 eocdOffset:(int64_t)a4 channel:(id)a5 completion:(id)a6;
- (void)readLocalFileHeaderData:(id)a3 atOffset:(int64_t)a4 channel:(id)a5 completion:(id)a6;
- (void)readLocalFileHeaderEntriesFromChannel:(id)a3 offset:(int64_t)a4 previousEntry:(id)a5 seekAttempts:(unsigned int)a6 seekForward:(BOOL)a7 completion:(id)a8;
- (void)readZip64EndOfCentralDirectoryData:(id)a3 channel:(id)a4 completion:(id)a5;
- (void)readZip64EndOfCentralDirectoryLocatorData:(id)a3 channel:(id)a4 completion:(id)a5;
- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)a3 eocdOffset:(int64_t)a4 completion:(id)a5;
- (void)readZip64EndOfCentralDirectoryWithChannel:(id)a3 offset:(int64_t)a4 completion:(id)a5;
- (void)validateCRCWithQueue:(id)a3 completion:(id)a4;
@end

@implementation TSUZipArchive

- (TSUZipArchive)initWithOptions:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = TSUZipArchive;
  v4 = [(TSUZipArchive *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    entries = v5->_entries;
    v5->_entries = v8;
  }

  return v5;
}

- (BOOL)hasNonEmptyEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2770C2E8C;
  v4[3] = &unk_27A7029E8;
  v4[4] = &v5;
  [(TSUZipArchive *)self enumerateEntriesUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)readArchiveWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TSUZipArchive *)self archiveLength];
  v9 = [(TSUZipArchive *)self newArchiveReadChannel];
  v10 = v9;
  if (v9)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2770C3100;
    aBlock[3] = &unk_27A702A38;
    v11 = v21;
    v12 = v9;
    v21[0] = v12;
    v21[1] = self;
    v22 = v6;
    v23 = v7;
    v13 = _Block_copy(aBlock);
    if ((self->_options & 8) != 0)
    {
      [(TSUZipArchive *)self readLocalFileHeaderEntriesFromChannel:v12 offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:v13];
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_2770C3210;
      v16[3] = &unk_27A702A88;
      v16[4] = self;
      v19 = v8 - 22;
      v17 = v12;
      v18 = v13;
      [TSUIOUtils readAllFromChannel:v17 offset:v8 - 22 length:22 completion:v16];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770C34A4;
    block[3] = &unk_27A702350;
    v11 = &v15;
    v15 = v7;
    dispatch_async(v6, block);
  }
}

- (void)readEndOfCentralDirectoryData:(id)a3 eocdOffset:(int64_t)a4 channel:(id)a5 completion:(id)a6
{
  v31[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x15)
  {
    v17 = MEMORY[0x277CCA9B8];
    v30 = @"TSUZipArchiveErrorDescription";
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrong data size (%zu) for TSUZipEndOfCentralDirectoryRecord (size: %zu)", size_ptr, 22];
    v31[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v20 = [v17 tsu_fileReadCorruptedFileErrorWithUserInfo:v19];

    goto LABEL_9;
  }

  if (*buffer_ptr != 101010256)
  {
    v13 = MEMORY[0x277CCA9B8];
    v28 = @"TSUZipArchiveErrorDescription";
    v29 = @"Don't support end of central directory comments";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v29;
    v16 = &v28;
    goto LABEL_8;
  }

  if (*(buffer_ptr + 2) || *(buffer_ptr + 3))
  {
    v13 = MEMORY[0x277CCA9B8];
    v26 = @"TSUZipArchiveErrorDescription";
    v27 = @"Don't support multi-disk";
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v27;
    v16 = &v26;
LABEL_8:
    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v20 = [v13 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];
LABEL_9:

    if (v20)
    {
      v11[2](v11, v20);
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      v11[2](v11, v21);
    }

    goto LABEL_12;
  }

  if (*(buffer_ptr + 5) == 0xFFFFLL || *(buffer_ptr + 4) == -1 || *(buffer_ptr + 3) == -1)
  {
    [(TSUZipArchive *)self readZip64EndOfCentralDirectoryLocatorWithChannel:v10 eocdOffset:a4 completion:v11];
  }

  else
  {
    [TSUZipArchive readCentralDirectoryWithEntryCount:"readCentralDirectoryWithEntryCount:offset:size:channel:completion:" offset:? size:? channel:? completion:?];
  }

LABEL_12:
}

- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)a3 eocdOffset:(int64_t)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 > 0x13)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2770C3904;
    v13[3] = &unk_27A702AB0;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    [TSUIOUtils readAllFromChannel:v14 offset:a4 - 20 length:20 completion:v13];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v16 = @"TSUZipArchiveErrorDescription";
    v17[0] = @"File isn't long enough for Zip64 locator";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v10 tsu_fileReadCorruptedFileErrorWithUserInfo:v11];
    (*(v9 + 2))(v9, v12);
  }
}

- (void)readZip64EndOfCentralDirectoryLocatorData:(id)a3 channel:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x13)
  {
    v11 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorDescription";
    v25[0] = @"Wrong data size for TSUZip64EndOfCentralDirectoryLocatorRecord";
    v12 = MEMORY[0x277CBEAC0];
    v13 = v25;
    v14 = &v24;
  }

  else if (*buffer_ptr == 117853008)
  {
    if (!*(buffer_ptr + 1) && *(buffer_ptr + 4) == 1)
    {
      [(TSUZipArchive *)self readZip64EndOfCentralDirectoryWithChannel:v8 offset:*(buffer_ptr + 1) completion:v9];
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CCA9B8];
    v20 = @"TSUZipArchiveErrorDescription";
    v21 = @"Multi-disk is not supported";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v21;
    v14 = &v20;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Zip64 end of central directory locator record signature not found";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v23;
    v14 = &v22;
  }

  v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  v16 = [v11 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

  if (v16)
  {
    v9[2](v9, v16);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    v9[2](v9, v17);
  }

LABEL_12:
}

- (void)readZip64EndOfCentralDirectoryWithChannel:(id)a3 offset:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2770C3BFC;
  v12[3] = &unk_27A702AB0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [TSUIOUtils readAllFromChannel:v11 offset:a4 length:56 completion:v12];
}

- (void)readZip64EndOfCentralDirectoryData:(id)a3 channel:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x37)
  {
    v11 = MEMORY[0x277CCA9B8];
    v24 = @"TSUZipArchiveErrorDescription";
    v25[0] = @"Wrong data size for TSUZip64EndOfCentralDirectoryRecord";
    v12 = MEMORY[0x277CBEAC0];
    v13 = v25;
    v14 = &v24;
  }

  else if (*buffer_ptr == 101075792)
  {
    if (!*(buffer_ptr + 4) && !*(buffer_ptr + 5))
    {
      [(TSUZipArchive *)self readCentralDirectoryWithEntryCount:*(buffer_ptr + 4) offset:*(buffer_ptr + 6) size:*(buffer_ptr + 5) channel:v8 completion:v9];
      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCA9B8];
    v20 = @"TSUZipArchiveErrorDescription";
    v21 = @"Multi-disk is not supported";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v21;
    v14 = &v20;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Zip64 end of central directory record signature not found";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v23;
    v14 = &v22;
  }

  v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
  v16 = [v11 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

  if (v16)
  {
    v9[2](v9, v16);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    v9[2](v9, v17);
  }

LABEL_11:
}

- (void)readCentralDirectoryWithEntryCount:(unint64_t)a3 offset:(int64_t)a4 size:(unint64_t)a5 channel:(id)a6 completion:(id)a7
{
  v12 = a7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2770C3EE8;
  v14[3] = &unk_27A702AD8;
  v15 = v12;
  v16 = a3;
  v14[4] = self;
  v13 = v12;
  [TSUIOUtils readAllFromChannel:a6 offset:a4 length:a5 completion:v14];
}

- (void)readCentralDirectoryData:(id)a3 entryCount:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  v10 = 0;
  if (!a4)
  {
    goto LABEL_7;
  }

  v11 = 1;
  do
  {
    v12 = v10;
    v15 = v10;
    v13 = [(TSUZipArchive *)self readCentralFileHeaderWithBuffer:&buffer_ptr dataSize:&size_ptr error:&v15];
    v10 = v15;

    if (!v13)
    {
      break;
    }
  }

  while (v11++ < a4);
  if (!v13)
  {
    if (!v10)
    {
      v10 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    }

    v8[2](v8, v10);
  }

  else
  {
LABEL_7:
    v8[2](v8, 0);
  }
}

- (BOOL)readCentralFileHeaderWithBuffer:(const void *)a3 dataSize:(unint64_t *)a4 error:(id *)a5
{
  v44[1] = *MEMORY[0x277D85DE8];
  v9 = objc_alloc_init(TSUZipEntry);
  v10 = v9;
  if (*a4 <= 0x2D)
  {
    v14 = MEMORY[0x277CCA9B8];
    v43 = @"TSUZipArchiveErrorDescription";
    v44[0] = @"Central directory too short";
    v15 = MEMORY[0x277CBEAC0];
    v16 = v44;
    v17 = &v43;
    goto LABEL_9;
  }

  v11 = *a3;
  v12 = *a3 + 46;
  v13 = **a3;
  *a4 -= 46;
  *a3 = v12;
  if (v13 != 33639248)
  {
    v14 = MEMORY[0x277CCA9B8];
    v41 = @"TSUZipArchiveErrorDescription";
    v42 = @"Central directory file header has bad signature";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v42;
    v17 = &v41;
    goto LABEL_9;
  }

  if (v11[4])
  {
    v14 = MEMORY[0x277CCA9B8];
    v39 = @"TSUZipArchiveErrorDescription";
    v40 = @"Encrypted files are not supported";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v40;
    v17 = &v39;
    goto LABEL_9;
  }

  if (v11[17])
  {
    v14 = MEMORY[0x277CCA9B8];
    v37 = @"TSUZipArchiveErrorDescription";
    v38 = @"No multi-disk support";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v38;
    v17 = &v37;
LABEL_9:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = [v14 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];

    goto LABEL_10;
  }

  v23 = v11[5];
  if (v11[5])
  {
    v24 = v23 == 8;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v14 = MEMORY[0x277CCA9B8];
    v35 = @"TSUZipArchiveErrorDescription";
    v36 = @"Unsupported compression method";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v36;
    v17 = &v35;
    goto LABEL_9;
  }

  [(TSUZipEntry *)v9 setCompressed:v23 == 8];
  v25 = [objc_alloc(MEMORY[0x277CBEAA8]) tsu_initWithDOSTime:v11[7] | (v11[6] << 16)];
  [(TSUZipEntry *)v10 setLastModificationDate:v25];

  [(TSUZipEntry *)v10 setCRC:*(v11 + 4)];
  [(TSUZipEntry *)v10 setCompressedSize:*(v11 + 5)];
  [(TSUZipEntry *)v10 setSize:*(v11 + 6)];
  [(TSUZipEntry *)v10 setOffset:*(v11 + 21)];
  [(TSUZipEntry *)v10 setNameLength:v11[14]];
  [(TSUZipEntry *)v10 setExtraFieldsLength:v11[15]];
  v26 = v11[14];
  v34 = 0;
  v27 = [(TSUZipArchive *)self readFilenameFromBuffer:a3 nameLength:v26 entry:v10 dataSize:a4 error:&v34];
  v28 = v34;
  v19 = v28;
  if (v27)
  {
    if (!v11[15] || (v33 = v28, v29 = [TSUZipArchive readExtraFieldsFromBuffer:"readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:" extraFieldsLength:a3 entry:? dataSize:? error:?], v30 = v33, v19, v19 = v30, v29))
    {
      if (!v11[16] || (v31 = [TSUZipArchive readFileCommentFromBuffer:"readFileCommentFromBuffer:fileCommentLength:entry:dataSize:error:" fileCommentLength:a3 entry:? dataSize:? error:?], v32 = v19, v19, v19 = v32, v31))
      {
        [(TSUZipArchive *)self addEntry:v10];
        v21 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_10:
  if (a5)
  {
    v20 = v19;
    v21 = 0;
    *a5 = v19;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (BOOL)readFilenameFromBuffer:(const void *)a3 nameLength:(unsigned __int16)a4 entry:(id)a5 dataSize:(unint64_t *)a6 error:(id *)a7
{
  v9 = a4;
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a5;
  if (*a6 < v9)
  {
    v12 = MEMORY[0x277CCA9B8];
    v21 = @"TSUZipArchiveErrorDescription";
    v22 = @"Central directory too short";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v12 tsu_fileReadCorruptedFileErrorWithUserInfo:v13];
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v15 = v9;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*a3 length:v9 encoding:4];
  [v11 setName:v13];
  *a6 -= v15;
  *a3 = *a3 + v15;
  v16 = v13 != 0;
  if (!v13)
  {
    v17 = MEMORY[0x277CCA9B8];
    v23 = @"TSUZipArchiveErrorDescription";
    v24[0] = @"Couldn't read name";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v17 tsu_fileReadCorruptedFileErrorWithUserInfo:v18];

    goto LABEL_6;
  }

  v14 = 0;
LABEL_7:

  if (a7 && !v16)
  {
    v19 = v14;
    *a7 = v14;
  }

  return v16;
}

- (BOOL)readExtraFieldsFromBuffer:(const void *)a3 extraFieldsLength:(unsigned __int16)a4 entry:(id)a5 dataSize:(unint64_t *)a6 error:(id *)a7
{
  v9 = a4;
  v40[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = v12;
  if (*a6 < v9)
  {
    v14 = MEMORY[0x277CCA9B8];
    v37 = @"TSUZipArchiveErrorDescription";
    v38 = @"Central directory too short";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v16 = [v14 tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

    v17 = 0;
    if (!a7)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v35 = a7;
  v36 = v12;
  v16 = 0;
  v18 = *a3 + v9;
  while (2)
  {
    v19 = *a3;
    v20 = *a3 + 4;
    v17 = v20 > v18;
    if (v20 > v18)
    {
      v24 = *a3;
    }

    else
    {
      v21 = *a6;
      while (1)
      {
        v22 = v21 - 4;
        v23 = v19[1];
        v24 = &v20[v23];
        if (&v20[v23] > v18)
        {
          *a6 = v22;
          *a3 = v20;
          v29 = MEMORY[0x277CCA9B8];
          v39 = @"TSUZipArchiveErrorDescription";
          v40[0] = @"Invalid Zip entry extra field length";
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
          v26 = [v29 tsu_fileReadCorruptedFileErrorWithUserInfo:v30];

          goto LABEL_14;
        }

        if (*v19 == 1)
        {
          break;
        }

        v21 = v22 - v23;
        v20 = v24 + 4;
        v19 = v24;
        v17 = v24 + 4 > v18;
        if (v24 + 4 > v18)
        {
          *a6 = v21;
          *a3 = v24;
          goto LABEL_15;
        }
      }

      *a6 = v22;
      *a3 = v20;
      v25 = [TSUZipArchive readZip64ExtraFieldFromBuffer:"readZip64ExtraFieldFromBuffer:dataLength:entry:error:" dataLength:? entry:? error:?];
      v26 = v16;

      v27 = v19[1];
      v28 = *a3;
      *a6 -= v27;
      *a3 = &v28[v27];
      v16 = v26;
      if (v25)
      {
        continue;
      }

LABEL_14:
      v24 = *a3;
      v16 = v26;
    }

    break;
  }

LABEL_15:
  a7 = v35;
  if (v24 != v18)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:]"];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:461 isFatal:0 description:"Unexpected buffer position while reading extra fields."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v13 = v36;
  if (v35)
  {
LABEL_18:
    if (!v17)
    {
      v33 = v16;
      *a7 = v16;
    }
  }

LABEL_20:

  return v17;
}

- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)a3 dataLength:(unsigned __int16)a4 entry:(id)a5 error:(id *)a6
{
  v7 = a4;
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  if ([v9 size] == 0xFFFFFFFFLL)
  {
    v10 = v7 >= 8;
    LOWORD(v7) = v7 - 8;
    if (!v10)
    {
      v15 = MEMORY[0x277CCA9B8];
      v26 = @"TSUZipArchiveErrorDescription";
      v27[0] = @"Not enough room for Zip64 uncompressed size";
      v16 = MEMORY[0x277CBEAC0];
      v17 = v27;
      v18 = &v26;
      goto LABEL_14;
    }

    v11 = *a3;
    a3 = a3 + 8;
    [v9 setSize:v11];
  }

  if ([v9 compressedSize] == 0xFFFFFFFFLL)
  {
    if (v7 < 8u)
    {
      v15 = MEMORY[0x277CCA9B8];
      v24 = @"TSUZipArchiveErrorDescription";
      v25 = @"Not enough room for Zip64 compressed size";
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v25;
      v18 = &v24;
      goto LABEL_14;
    }

    v12 = *a3;
    a3 = a3 + 8;
    [v9 setCompressedSize:v12];
    LOWORD(v7) = v7 - 8;
  }

  if ([v9 offset] != 0xFFFFFFFFLL)
  {
LABEL_11:
    v13 = 0;
    v14 = 1;
    goto LABEL_17;
  }

  if (v7 >= 8u)
  {
    [v9 setOffset:*a3];
    goto LABEL_11;
  }

  v15 = MEMORY[0x277CCA9B8];
  v22 = @"TSUZipArchiveErrorDescription";
  v23 = @"Not enough room for Zip64 offset";
  v16 = MEMORY[0x277CBEAC0];
  v17 = &v23;
  v18 = &v22;
LABEL_14:
  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  v13 = [v15 tsu_fileReadCorruptedFileErrorWithUserInfo:v19];

  if (a6)
  {
    v20 = v13;
    v14 = 0;
    *a6 = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (BOOL)readFileCommentFromBuffer:(const void *)a3 fileCommentLength:(unsigned __int16)a4 entry:(id)a5 dataSize:(unint64_t *)a6 error:(id *)a7
{
  v9 = a4;
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = *a6;
  v13 = v9;
  if (*a6 < v9)
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = @"TSUZipArchiveErrorDescription";
    v20[0] = @"Central directory too short";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v15 tsu_fileReadCorruptedFileErrorWithUserInfo:v16];

    if (a7)
    {
      v17 = v14;
      *a7 = v14;
    }
  }

  else
  {
    v14 = 0;
    *a6 = v12 - v13;
    *a3 = *a3 + v13;
  }

  return v12 >= v13;
}

- (void)readLocalFileHeaderEntriesFromChannel:(id)a3 offset:(int64_t)a4 previousEntry:(id)a5 seekAttempts:(unsigned int)a6 seekForward:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2770C4C48;
  v20[3] = &unk_27A702B28;
  v23 = v16;
  v24 = a4;
  v20[4] = self;
  v21 = v14;
  v26 = a7;
  v25 = a6;
  v22 = v15;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  [TSUIOUtils readAllFromChannel:v19 offset:a4 length:30 completion:v20];
}

- (void)readLocalFileHeaderData:(id)a3 atOffset:(int64_t)a4 channel:(id)a5 completion:(id)a6
{
  v45[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x1D)
  {
    v20 = MEMORY[0x277CCA9B8];
    v44 = @"TSUZipArchiveErrorDescription";
    v45[0] = @"Wrong data size for TSUZipLocalFileHeaderRecord";
    v21 = MEMORY[0x277CBEAC0];
    v22 = 1;
    v23 = v45;
    v24 = &v44;
    goto LABEL_13;
  }

  v13 = buffer_ptr;
  if (*buffer_ptr != 67324752)
  {
    v22 = *buffer_ptr == 33639248;
    v20 = MEMORY[0x277CCA9B8];
    v42 = @"TSUZipArchiveErrorDescription";
    v43 = @"Local file header has bad signature";
    v21 = MEMORY[0x277CBEAC0];
    v23 = &v43;
    v24 = &v42;
LABEL_13:
    v25 = [v21 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v19 = [v20 tsu_fileReadCorruptedFileErrorWithUserInfo:v25];

    if ([(NSMutableOrderedSet *)self->_entries count])
    {
      (*(v11 + 2))(v11, 0, 0, v22);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v14 = *(buffer_ptr + 3);
  if (v14)
  {
    v26 = MEMORY[0x277CCA9B8];
    v40 = @"TSUZipArchiveErrorDescription";
    v41 = @"Encrypted files are not supported";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v41;
    v29 = &v40;
  }

  else if ((v14 & 8) != 0)
  {
    v26 = MEMORY[0x277CCA9B8];
    v38 = @"TSUZipArchiveErrorDescription";
    v39 = @"Local file header does not have the entry CRC and size";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v39;
    v29 = &v38;
  }

  else
  {
    if (*(buffer_ptr + 4))
    {
      v15 = *(buffer_ptr + 4) == 8;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = objc_alloc_init(TSUZipEntry);
      [(TSUZipEntry *)v16 setCompressed:v13[4] == 8];
      v17 = [objc_alloc(MEMORY[0x277CBEAA8]) tsu_initWithDOSTime:v13[6] | (v13[5] << 16)];
      [(TSUZipEntry *)v16 setLastModificationDate:v17];

      [(TSUZipEntry *)v16 setCRC:*(v13 + 7)];
      [(TSUZipEntry *)v16 setCompressedSize:*(v13 + 9)];
      [(TSUZipEntry *)v16 setSize:*(v13 + 11)];
      [(TSUZipEntry *)v16 setOffset:a4];
      [(TSUZipEntry *)v16 setNameLength:v13[13]];
      [(TSUZipEntry *)v16 setExtraFieldsLength:v13[14]];
      v18 = v13[14] + v13[13];
      [(TSUZipEntry *)v16 setFileHeaderLength:v18 + 30];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_2770C549C;
      v31[3] = &unk_27A702AB0;
      v31[4] = self;
      v32 = v16;
      v33 = v11;
      v19 = v16;
      [TSUIOUtils readAllFromChannel:v10 offset:a4 + 30 length:v18 completion:v31];

      goto LABEL_21;
    }

    v26 = MEMORY[0x277CCA9B8];
    v36 = @"TSUZipArchiveErrorDescription";
    v37 = @"Unsupported compression method";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v37;
    v29 = &v36;
  }

  v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
  v19 = [v26 tsu_fileReadCorruptedFileErrorWithUserInfo:v30];

LABEL_18:
  if (!v19)
  {
    v19 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
  }

  (*(v11 + 2))(v11, 0, v19, 0);
LABEL_21:
}

- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)a3 forEntry:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  v10 = size_ptr;
  v11 = [v8 nameLength];
  if (v10 >= [v8 extraFieldsLength] + v11)
  {
    v20 = 0;
    v16 = -[TSUZipArchive readFilenameFromBuffer:nameLength:entry:dataSize:error:](self, "readFilenameFromBuffer:nameLength:entry:dataSize:error:", &buffer_ptr, [v8 nameLength], v8, &size_ptr, &v20);
    v13 = v20;
    if (!v16)
    {
      v15 = 0;
      if (!a5)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (![v8 extraFieldsLength])
    {
      v15 = 1;
      goto LABEL_11;
    }

    v19 = v13;
    v15 = -[TSUZipArchive readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:](self, "readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:", &buffer_ptr, [v8 extraFieldsLength], v8, &size_ptr, &v19);
    v14 = v19;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v23 = @"TSUZipArchiveErrorDescription";
    v24[0] = @"Wrong data size for TSUZipLocalFileHeaderRecord filename and extra fields";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v12 tsu_fileReadCorruptedFileErrorWithUserInfo:v13];
    v15 = 0;
  }

  v13 = v14;
  if (!a5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v15)
  {
    v17 = v13;
    v15 = 0;
    *a5 = v13;
  }

LABEL_11:

  return v15;
}

- (void)addEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [v4 name];
    v6 = [(TSUZipArchive *)self normalizeEntryName:v5];

    v7 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v6];

    if (v7)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_2771145C8();
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_entriesMap setObject:v8 forKeyedSubscript:v6];
      [(NSMutableOrderedSet *)self->_entries addObject:v8];
    }

    v4 = v8;
  }
}

- (id)readChannelForEntry:(id)a3 validateCRC:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(NSMutableOrderedSet *)self->_entries containsObject:v6])
  {
    v7 = [v6 isCompressed] ^ 1;
    v8 = [[TSUZipReadChannel alloc] initWithEntry:v6 archive:self validateCRC:v4 & v7];
    if ((v7 & 1) == 0)
    {
      v9 = [TSUBufferedReadChannel alloc];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_2770C5A04;
      v14[3] = &unk_27A702B50;
      v15 = v6;
      v16 = v4;
      v10 = [(TSUBufferedReadChannel *)v9 initWithReadChannel:v8 blockInfos:0 streamReadChannelBlock:v14];

      v8 = v10;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive readChannelForEntry:validateCRC:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:779 isFatal:0 description:"Entry isn't part of this archive"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = 0;
  }

  return v8;
}

- (id)streamReadChannelForEntry:(id)a3 validateCRC:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(NSMutableOrderedSet *)self->_entries containsObject:v6])
  {
    v7 = [v6 isCompressed] ^ 1;
    v8 = [[TSUZipReadChannel alloc] initWithEntry:v6 archive:self validateCRC:v4 & v7];
    if ((v7 & 1) == 0)
    {
      v9 = [TSUZipInflateReadChannel alloc];
      [v6 size];
      v10 = -[TSUZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:](v9, "initWithReadChannel:uncompressedSize:CRC:validateCRC:", v8, [v6 size], objc_msgSend(v6, "CRC"), v4);

      v8 = v10;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive streamReadChannelForEntry:validateCRC:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:802 isFatal:0 description:"Entry isn't part of this archive"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = 0;
  }

  return v8;
}

- (id)normalizeEntryName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((self->_options & 2) != 0)
  {
    v6 = [v4 lowercaseString];

    v5 = v6;
  }

  v7 = [v5 precomposedStringWithCanonicalMapping];

  return v7;
}

- (id)entryForName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(TSUZipArchive *)self normalizeEntryName:v4];

    v7 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateEntriesUsingBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_entries;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v10 collapsedName];
      if (v11)
      {
        v4[2](v4, v11, v10, &v17);
      }

      else
      {
        v12 = [v10 name];
        v4[2](v4, v12, v10, &v17);
      }

      if (v17)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)collapseCommonRootDirectory
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2770C609C;
  v22 = sub_2770C60AC;
  v23 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = (self->_options >> 1) & 1 | 2;
  entriesMap = self->_entriesMap;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2770C60B4;
  v17[3] = &unk_27A702B78;
  v17[4] = &v18;
  v17[5] = v4;
  [(NSMutableDictionary *)entriesMap enumerateKeysAndObjectsUsingBlock:v17];
  objc_autoreleasePoolPop(v3);
  if ([v19[5] count])
  {
    v6 = [MEMORY[0x277CCACA8] pathWithComponents:v19[5]];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 length];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_entriesMap, "count")}];
    v9 = objc_autoreleasePoolPush();
    v10 = self->_entriesMap;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2770C6290;
    v13[3] = &unk_27A702BA0;
    v16 = v7;
    v11 = v8;
    v14 = v11;
    v15 = self;
    [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v13];

    objc_autoreleasePoolPop(v9);
    v12 = self->_entriesMap;
    self->_entriesMap = v11;
  }

  _Block_object_dispose(&v18, 8);
}

- (unint64_t)archiveLength
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive archiveLength]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipArchive.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:919 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUZipArchive archiveLength]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (id)newArchiveReadChannel
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive newArchiveReadChannel]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipArchive.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:923 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUZipArchive newArchiveReadChannel]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (BOOL)isValid
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipArchive isValid]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipArchive.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:927 isFatal:0 description:"Abstract method not overridden by %{public}@", v5];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "-[TSUZipArchive isValid]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)validateCRCWithQueue:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v15 = a4;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("TSUZipArchive.Validation", v6);

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_2770C609C;
  v28[4] = sub_2770C60AC;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_entries;
  v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2770C6994;
        block[3] = &unk_27A702BF0;
        block[4] = self;
        block[5] = v12;
        v23 = v28;
        v22 = v7;
        dispatch_async(v22, block);

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2770C6B78;
  v17[3] = &unk_27A702C40;
  v18 = v16;
  v19 = v15;
  v20 = v28;
  v13 = v16;
  v14 = v15;
  dispatch_async(v7, v17);

  _Block_object_dispose(v28, 8);
}

- (BOOL)validateCRCAndReturnError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2770C609C;
  v15 = sub_2770C60AC;
  v16 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2770C6DB8;
  v10[3] = &unk_27A702C68;
  v10[4] = v5;
  v10[5] = &v11;
  [(TSUZipArchive *)self validateCRCWithQueue:v6 completion:v10];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v12[5];
  if (a3 && v7)
  {
    v7 = v7;
    *a3 = v7;
  }

  v8 = v7 == 0;

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)debugDescription
{
  v3 = [TSUDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [(NSMutableOrderedSet *)self->_entries array];
  v5 = TSUArrayDescription(v4);
  [v3 addField:@"entries" value:v5];

  v6 = [v3 descriptionString];

  return v6;
}

@end