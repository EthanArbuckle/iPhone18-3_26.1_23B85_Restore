@interface TSUZipArchive
- (BOOL)hasNonEmptyEntries;
- (BOOL)isValid;
- (BOOL)readCentralFileHeaderWithBuffer:(const void *)buffer dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readExtraFieldsFromBuffer:(const void *)buffer extraFieldsLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readFileCommentFromBuffer:(const void *)buffer fileCommentLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readFilenameFromBuffer:(const void *)buffer nameLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error;
- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)data forEntry:(id)entry error:(id *)error;
- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)buffer dataLength:(unsigned __int16)length entry:(id)entry error:(id *)error;
- (BOOL)validateCRCAndReturnError:(id *)error;
- (TSUZipArchive)initWithOptions:(unint64_t)options;
- (id)debugDescription;
- (id)entryForName:(id)name;
- (id)newArchiveReadChannel;
- (id)normalizeEntryName:(id)name;
- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (id)tsp_dataForEntry:(id)entry;
- (unint64_t)archiveLength;
- (void)addEntry:(id)entry;
- (void)collapseCommonRootDirectory;
- (void)enumerateEntriesUsingBlock:(id)block;
- (void)readArchiveWithQueue:(id)queue completion:(id)completion;
- (void)readCentralDirectoryData:(id)data entryCount:(unint64_t)count completion:(id)completion;
- (void)readCentralDirectoryWithEntryCount:(unint64_t)count offset:(int64_t)offset size:(unint64_t)size channel:(id)channel completion:(id)completion;
- (void)readEndOfCentralDirectoryData:(id)data eocdOffset:(int64_t)offset channel:(id)channel completion:(id)completion;
- (void)readLocalFileHeaderData:(id)data atOffset:(int64_t)offset channel:(id)channel completion:(id)completion;
- (void)readLocalFileHeaderEntriesFromChannel:(id)channel offset:(int64_t)offset previousEntry:(id)entry seekAttempts:(unsigned int)attempts seekForward:(BOOL)forward completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryData:(id)data channel:(id)channel completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryLocatorData:(id)data channel:(id)channel completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)channel eocdOffset:(int64_t)offset completion:(id)completion;
- (void)readZip64EndOfCentralDirectoryWithChannel:(id)channel offset:(int64_t)offset completion:(id)completion;
- (void)validateCRCWithQueue:(id)queue completion:(id)completion;
@end

@implementation TSUZipArchive

- (id)tsp_dataForEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(TSUZipArchive *)self streamReadChannelForEntry:entryCopy];
    v7 = [TSPReadChannelUtils dataFromReadChannel:v6];
    [v6 close];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSUZipArchive)initWithOptions:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = TSUZipArchive;
  v4 = [(TSUZipArchive *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = objc_alloc_init(NSMutableDictionary);
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v6;

    v8 = objc_alloc_init(NSMutableOrderedSet);
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
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008298C;
  v4[3] = &unk_1001CCA70;
  v4[4] = &v5;
  [(TSUZipArchive *)self enumerateEntriesUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)readArchiveWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  archiveLength = [(TSUZipArchive *)self archiveLength];
  newArchiveReadChannel = [(TSUZipArchive *)self newArchiveReadChannel];
  v10 = newArchiveReadChannel;
  if (newArchiveReadChannel)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100082C00;
    v20[3] = &unk_1001CCAC0;
    v11 = v21;
    v12 = newArchiveReadChannel;
    v21[0] = v12;
    v21[1] = self;
    v22 = queueCopy;
    v23 = completionCopy;
    v13 = objc_retainBlock(v20);
    if ((self->_options & 8) != 0)
    {
      [(TSUZipArchive *)self readLocalFileHeaderEntriesFromChannel:v12 offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:v13];
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100082D10;
      v16[3] = &unk_1001CCB30;
      v16[4] = self;
      v19 = archiveLength - 22;
      v17 = v12;
      v18 = v13;
      [TSUIOUtils readAllFromChannel:v17 offset:archiveLength - 22 length:22 completion:v16];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100082FB0;
    block[3] = &unk_1001C6968;
    v11 = &v15;
    v15 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

- (void)readEndOfCentralDirectoryData:(id)data eocdOffset:(int64_t)offset channel:(id)channel completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x15)
  {
    v27 = @"TSUZipArchiveErrorDescription";
    v15 = [NSString stringWithFormat:@"Wrong data size (%zu) for TSUZipEndOfCentralDirectoryRecord (size: %zu)", size_ptr, 22];
    v28 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v17 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v16];

    goto LABEL_9;
  }

  if (*buffer_ptr != 101010256)
  {
    v25 = @"TSUZipArchiveErrorDescription";
    v26 = @"Don't support end of central directory comments";
    v13 = &v26;
    v14 = &v25;
    goto LABEL_8;
  }

  if (*(buffer_ptr + 2) || *(buffer_ptr + 3))
  {
    v23 = @"TSUZipArchiveErrorDescription";
    v24 = @"Don't support multi-disk";
    v13 = &v24;
    v14 = &v23;
LABEL_8:
    v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
    v17 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v15];
LABEL_9:

    if (v17)
    {
      completionCopy[2](completionCopy, v17);
    }

    else
    {
      v18 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
      completionCopy[2](completionCopy, v18);
    }

    goto LABEL_12;
  }

  if (*(buffer_ptr + 5) == 0xFFFFLL || *(buffer_ptr + 4) == -1 || *(buffer_ptr + 3) == -1)
  {
    [(TSUZipArchive *)self readZip64EndOfCentralDirectoryLocatorWithChannel:channelCopy eocdOffset:offset completion:completionCopy];
  }

  else
  {
    [TSUZipArchive readCentralDirectoryWithEntryCount:"readCentralDirectoryWithEntryCount:offset:size:channel:completion:" offset:? size:? channel:? completion:?];
  }

LABEL_12:
}

- (void)readZip64EndOfCentralDirectoryLocatorWithChannel:(id)channel eocdOffset:(int64_t)offset completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  if (offset > 0x13)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100083410;
    v12[3] = &unk_1001CCB58;
    v12[4] = self;
    v13 = channelCopy;
    v14 = completionCopy;
    [TSUIOUtils readAllFromChannel:v13 offset:offset - 20 length:20 completion:v12];
  }

  else
  {
    v15 = @"TSUZipArchiveErrorDescription";
    v16 = @"File isn't long enough for Zip64 locator";
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v10];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

- (void)readZip64EndOfCentralDirectoryLocatorData:(id)data channel:(id)channel completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x13)
  {
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Wrong data size for TSUZip64EndOfCentralDirectoryLocatorRecord";
    v11 = &v23;
    v12 = &v22;
  }

  else if (*buffer_ptr == 117853008)
  {
    if (!*(buffer_ptr + 1) && *(buffer_ptr + 4) == 1)
    {
      [(TSUZipArchive *)self readZip64EndOfCentralDirectoryWithChannel:channelCopy offset:*(buffer_ptr + 1) completion:completionCopy];
      goto LABEL_12;
    }

    v18 = @"TSUZipArchiveErrorDescription";
    v19 = @"Multi-disk is not supported";
    v11 = &v19;
    v12 = &v18;
  }

  else
  {
    v20 = @"TSUZipArchiveErrorDescription";
    v21 = @"Zip64 end of central directory locator record signature not found";
    v11 = &v21;
    v12 = &v20;
  }

  v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
  v14 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v13];

  if (v14)
  {
    completionCopy[2](completionCopy, v14);
  }

  else
  {
    v15 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
    completionCopy[2](completionCopy, v15);
  }

LABEL_12:
}

- (void)readZip64EndOfCentralDirectoryWithChannel:(id)channel offset:(int64_t)offset completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100083708;
  v9[3] = &unk_1001CCB58;
  v9[4] = self;
  channelCopy = channel;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = channelCopy;
  [TSUIOUtils readAllFromChannel:v8 offset:offset length:56 completion:v9];
}

- (void)readZip64EndOfCentralDirectoryData:(id)data channel:(id)channel completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v10 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x37)
  {
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Wrong data size for TSUZip64EndOfCentralDirectoryRecord";
    v11 = &v23;
    v12 = &v22;
  }

  else if (*buffer_ptr == 101075792)
  {
    if (!*(buffer_ptr + 4) && !*(buffer_ptr + 5))
    {
      [(TSUZipArchive *)self readCentralDirectoryWithEntryCount:*(buffer_ptr + 4) offset:*(buffer_ptr + 6) size:*(buffer_ptr + 5) channel:channelCopy completion:completionCopy];
      goto LABEL_11;
    }

    v18 = @"TSUZipArchiveErrorDescription";
    v19 = @"Multi-disk is not supported";
    v11 = &v19;
    v12 = &v18;
  }

  else
  {
    v20 = @"TSUZipArchiveErrorDescription";
    v21 = @"Zip64 end of central directory record signature not found";
    v11 = &v21;
    v12 = &v20;
  }

  v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:1];
  v14 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v13];

  if (v14)
  {
    completionCopy[2](completionCopy, v14);
  }

  else
  {
    v15 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
    completionCopy[2](completionCopy, v15);
  }

LABEL_11:
}

- (void)readCentralDirectoryWithEntryCount:(unint64_t)count offset:(int64_t)offset size:(unint64_t)size channel:(id)channel completion:(id)completion
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000839F4;
  v13[3] = &unk_1001CCB80;
  completionCopy = completion;
  countCopy = count;
  v13[4] = self;
  v12 = completionCopy;
  [TSUIOUtils readAllFromChannel:channel offset:offset length:size completion:v13];
}

- (void)readCentralDirectoryData:(id)data entryCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v10 = 0;
  if (!count)
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

  while (v11++ < count);
  if ((v13 & 1) == 0)
  {
    if (!v10)
    {
      v10 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
    }

    completionCopy[2](completionCopy, v10);
  }

  else
  {
LABEL_7:
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)readCentralFileHeaderWithBuffer:(const void *)buffer dataSize:(unint64_t *)size error:(id *)error
{
  v9 = objc_alloc_init(TSUZipEntry);
  v10 = v9;
  if (*size <= 0x2D)
  {
    v41 = @"TSUZipArchiveErrorDescription";
    v42 = @"Central directory too short";
    v14 = &v42;
    v15 = &v41;
    goto LABEL_9;
  }

  v11 = *buffer;
  v12 = *buffer + 46;
  v13 = **buffer;
  *size -= 46;
  *buffer = v12;
  if (v13 != 33639248)
  {
    v39 = @"TSUZipArchiveErrorDescription";
    v40 = @"Central directory file header has bad signature";
    v14 = &v40;
    v15 = &v39;
    goto LABEL_9;
  }

  if (v11[4])
  {
    v37 = @"TSUZipArchiveErrorDescription";
    v38 = @"Encrypted files are not supported";
    v14 = &v38;
    v15 = &v37;
    goto LABEL_9;
  }

  if (v11[17])
  {
    v35 = @"TSUZipArchiveErrorDescription";
    v36 = @"No multi-disk support";
    v14 = &v36;
    v15 = &v35;
LABEL_9:
    v16 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:1];
    v17 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v16];

    goto LABEL_10;
  }

  v21 = v11[5];
  if (v11[5])
  {
    v22 = v21 == TSUZipDeflateCompressionMethod;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v33 = @"TSUZipArchiveErrorDescription";
    v34 = @"Unsupported compression method";
    v14 = &v34;
    v15 = &v33;
    goto LABEL_9;
  }

  [(TSUZipEntry *)v9 setCompressed:v21 == TSUZipDeflateCompressionMethod];
  v23 = [[NSDate alloc] tsu_initWithDOSTime:v11[7] | (v11[6] << 16)];
  [(TSUZipEntry *)v10 setLastModificationDate:v23];

  [(TSUZipEntry *)v10 setCRC:*(v11 + 4)];
  [(TSUZipEntry *)v10 setCompressedSize:*(v11 + 5)];
  [(TSUZipEntry *)v10 setSize:*(v11 + 6)];
  [(TSUZipEntry *)v10 setOffset:*(v11 + 21)];
  [(TSUZipEntry *)v10 setNameLength:v11[14]];
  [(TSUZipEntry *)v10 setExtraFieldsLength:v11[15]];
  v24 = v11[14];
  v32 = 0;
  v25 = [(TSUZipArchive *)self readFilenameFromBuffer:buffer nameLength:v24 entry:v10 dataSize:size error:&v32];
  v26 = v32;
  v17 = v26;
  if (v25)
  {
    if (!v11[15] || (v31 = v26, v27 = [TSUZipArchive readExtraFieldsFromBuffer:"readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:" extraFieldsLength:buffer entry:? dataSize:? error:?], v28 = v31, v17, v17 = v28, v27))
    {
      if (!v11[16] || (v29 = [TSUZipArchive readFileCommentFromBuffer:"readFileCommentFromBuffer:fileCommentLength:entry:dataSize:error:" fileCommentLength:buffer entry:? dataSize:? error:?], v30 = v17, v17, v17 = v30, v29))
      {
        [(TSUZipArchive *)self addEntry:v10];
        v19 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_10:
  if (error)
  {
    v18 = v17;
    v19 = 0;
    *error = v17;
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  return v19;
}

- (BOOL)readFilenameFromBuffer:(const void *)buffer nameLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  entryCopy = entry;
  if (*size < lengthCopy)
  {
    v19 = @"TSUZipArchiveErrorDescription";
    v20 = @"Central directory too short";
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v12];
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v14 = lengthCopy;
  v12 = [[NSString alloc] initWithBytes:*buffer length:lengthCopy encoding:4];
  [entryCopy setName:v12];
  *size -= v14;
  *buffer = *buffer + v14;
  v15 = v12 != 0;
  if (!v12)
  {
    v21 = @"TSUZipArchiveErrorDescription";
    v22 = @"Couldn't read name";
    v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v16];

    goto LABEL_6;
  }

  v13 = 0;
LABEL_7:

  if (error && !v15)
  {
    v17 = v13;
    *error = v13;
  }

  return v15;
}

- (BOOL)readExtraFieldsFromBuffer:(const void *)buffer extraFieldsLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  entryCopy = entry;
  v13 = entryCopy;
  if (*size < lengthCopy)
  {
    v35 = @"TSUZipArchiveErrorDescription";
    v36 = @"Central directory too short";
    v14 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v15 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v14];

    v16 = 0;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  errorCopy = error;
  v34 = entryCopy;
  v15 = 0;
  v17 = *buffer + lengthCopy;
  while (2)
  {
    v18 = *buffer;
    v19 = *buffer + 4;
    v16 = v19 > v17;
    if (v19 > v17)
    {
      v23 = *buffer;
    }

    else
    {
      v20 = *size;
      while (1)
      {
        v21 = v20 - 4;
        v22 = v18[1];
        v23 = &v19[v22];
        if (&v19[v22] > v17)
        {
          *size = v21;
          *buffer = v19;
          v37 = @"TSUZipArchiveErrorDescription";
          v38 = @"Invalid Zip entry extra field length";
          v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v25 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v28];

          goto LABEL_14;
        }

        if (*v18 == TSUZip64ExtraFieldSignature)
        {
          break;
        }

        v20 = v21 - v22;
        v19 = v23 + 4;
        v18 = v23;
        v16 = v23 + 4 > v17;
        if (v23 + 4 > v17)
        {
          *size = v20;
          *buffer = v23;
          goto LABEL_15;
        }
      }

      *size = v21;
      *buffer = v19;
      v24 = [TSUZipArchive readZip64ExtraFieldFromBuffer:"readZip64ExtraFieldFromBuffer:dataLength:entry:error:" dataLength:? entry:? error:?];
      v25 = v15;

      v26 = v18[1];
      v27 = *buffer;
      *size -= v26;
      *buffer = &v27[v26];
      v15 = v25;
      if (v24)
      {
        continue;
      }

LABEL_14:
      v23 = *buffer;
      v15 = v25;
    }

    break;
  }

LABEL_15:
  error = errorCopy;
  if (v23 != v17)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015B2E8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B310();
    }

    errorCopy = [NSString stringWithUTF8String:"[TSUZipArchive readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:]", errorCopy];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:errorCopy file:v30 lineNumber:461 isFatal:0 description:"Unexpected buffer position while reading extra fields."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v13 = v34;
  if (error)
  {
LABEL_22:
    if (!v16)
    {
      v31 = v15;
      *error = v15;
    }
  }

LABEL_24:

  return v16;
}

- (BOOL)readZip64ExtraFieldFromBuffer:(const void *)buffer dataLength:(unsigned __int16)length entry:(id)entry error:(id *)error
{
  lengthCopy = length;
  entryCopy = entry;
  if ([entryCopy size] == 0xFFFFFFFFLL)
  {
    v10 = lengthCopy >= 8;
    LOWORD(lengthCopy) = lengthCopy - 8;
    if (!v10)
    {
      v24 = @"TSUZipArchiveErrorDescription";
      v25 = @"Not enough room for Zip64 uncompressed size";
      v15 = &v25;
      v16 = &v24;
      goto LABEL_14;
    }

    v11 = *buffer;
    buffer = buffer + 8;
    [entryCopy setSize:v11];
  }

  if ([entryCopy compressedSize] == 0xFFFFFFFFLL)
  {
    if (lengthCopy < 8u)
    {
      v22 = @"TSUZipArchiveErrorDescription";
      v23 = @"Not enough room for Zip64 compressed size";
      v15 = &v23;
      v16 = &v22;
      goto LABEL_14;
    }

    v12 = *buffer;
    buffer = buffer + 8;
    [entryCopy setCompressedSize:v12];
    LOWORD(lengthCopy) = lengthCopy - 8;
  }

  if ([entryCopy offset] != 0xFFFFFFFFLL)
  {
LABEL_11:
    v13 = 0;
    v14 = 1;
    goto LABEL_17;
  }

  if (lengthCopy >= 8u)
  {
    [entryCopy setOffset:*buffer];
    goto LABEL_11;
  }

  v20 = @"TSUZipArchiveErrorDescription";
  v21 = @"Not enough room for Zip64 offset";
  v15 = &v21;
  v16 = &v20;
LABEL_14:
  v17 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:1];
  v13 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v17];

  if (error)
  {
    v18 = v13;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (BOOL)readFileCommentFromBuffer:(const void *)buffer fileCommentLength:(unsigned __int16)length entry:(id)entry dataSize:(unint64_t *)size error:(id *)error
{
  lengthCopy = length;
  entryCopy = entry;
  v12 = *size;
  v13 = lengthCopy;
  if (*size < lengthCopy)
  {
    v18 = @"TSUZipArchiveErrorDescription";
    v19 = @"Central directory too short";
    v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v15];

    if (error)
    {
      v16 = v14;
      *error = v14;
    }
  }

  else
  {
    v14 = 0;
    *size = v12 - v13;
    *buffer = *buffer + v13;
  }

  return v12 >= v13;
}

- (void)readLocalFileHeaderEntriesFromChannel:(id)channel offset:(int64_t)offset previousEntry:(id)entry seekAttempts:(unsigned int)attempts seekForward:(BOOL)forward completion:(id)completion
{
  channelCopy = channel;
  entryCopy = entry;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000847EC;
  v19[3] = &unk_1001CCC50;
  completionCopy = completion;
  offsetCopy = offset;
  v19[4] = self;
  v20 = channelCopy;
  forwardCopy = forward;
  attemptsCopy = attempts;
  v21 = entryCopy;
  v16 = completionCopy;
  v17 = entryCopy;
  v18 = channelCopy;
  [TSUIOUtils readAllFromChannel:v18 offset:offset length:30 completion:v19];
}

- (void)readLocalFileHeaderData:(id)data atOffset:(int64_t)offset channel:(id)channel completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  if (size_ptr <= 0x1D)
  {
    v40 = @"TSUZipArchiveErrorDescription";
    v41 = @"Wrong data size for TSUZipLocalFileHeaderRecord";
    v20 = 1;
    v21 = &v41;
    v22 = &v40;
    goto LABEL_13;
  }

  v13 = buffer_ptr;
  if (*buffer_ptr != 67324752)
  {
    v20 = *buffer_ptr == 33639248;
    v38 = @"TSUZipArchiveErrorDescription";
    v39 = @"Local file header has bad signature";
    v21 = &v39;
    v22 = &v38;
LABEL_13:
    v23 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:1];
    v19 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v23];

    if ([(NSMutableOrderedSet *)self->_entries count])
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v20);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v14 = *(buffer_ptr + 3);
  if (v14)
  {
    v36 = @"TSUZipArchiveErrorDescription";
    v37 = @"Encrypted files are not supported";
    v24 = &v37;
    v25 = &v36;
  }

  else if ((v14 & 8) != 0)
  {
    v34 = @"TSUZipArchiveErrorDescription";
    v35 = @"Local file header does not have the entry CRC and size";
    v24 = &v35;
    v25 = &v34;
  }

  else
  {
    if (*(buffer_ptr + 4))
    {
      v15 = *(buffer_ptr + 4) == TSUZipDeflateCompressionMethod;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = objc_alloc_init(TSUZipEntry);
      [(TSUZipEntry *)v16 setCompressed:v13[4] == TSUZipDeflateCompressionMethod];
      v17 = [[NSDate alloc] tsu_initWithDOSTime:v13[6] | (v13[5] << 16)];
      [(TSUZipEntry *)v16 setLastModificationDate:v17];

      [(TSUZipEntry *)v16 setCRC:*(v13 + 7)];
      [(TSUZipEntry *)v16 setCompressedSize:*(v13 + 9)];
      [(TSUZipEntry *)v16 setSize:*(v13 + 11)];
      [(TSUZipEntry *)v16 setOffset:offset];
      [(TSUZipEntry *)v16 setNameLength:v13[13]];
      [(TSUZipEntry *)v16 setExtraFieldsLength:v13[14]];
      v18 = v13[14] + v13[13];
      [(TSUZipEntry *)v16 setFileHeaderLength:v18 + 30];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000850AC;
      v27[3] = &unk_1001CCB58;
      v27[4] = self;
      v28 = v16;
      v29 = completionCopy;
      v19 = v16;
      [TSUIOUtils readAllFromChannel:channelCopy offset:offset + 30 length:v18 completion:v27];

      goto LABEL_21;
    }

    v32 = @"TSUZipArchiveErrorDescription";
    v33 = @"Unsupported compression method";
    v24 = &v33;
    v25 = &v32;
  }

  v26 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:1];
  v19 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v26];

LABEL_18:
  if (!v19)
  {
    v19 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
  }

  (*(completionCopy + 2))(completionCopy, 0, v19, 0);
LABEL_21:
}

- (BOOL)readLocalFileHeaderFilenameAndExtraFieldsData:(id)data forEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  size_ptr = 0;
  buffer_ptr = 0;
  v9 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v10 = size_ptr;
  nameLength = [entryCopy nameLength];
  if (v10 >= [entryCopy extraFieldsLength] + nameLength)
  {
    v19 = 0;
    v15 = -[TSUZipArchive readFilenameFromBuffer:nameLength:entry:dataSize:error:](self, "readFilenameFromBuffer:nameLength:entry:dataSize:error:", &buffer_ptr, [entryCopy nameLength], entryCopy, &size_ptr, &v19);
    v12 = v19;
    if (!v15)
    {
      v14 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    if (![entryCopy extraFieldsLength])
    {
      v14 = 1;
      goto LABEL_11;
    }

    v18 = v12;
    v14 = -[TSUZipArchive readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:](self, "readExtraFieldsFromBuffer:extraFieldsLength:entry:dataSize:error:", &buffer_ptr, [entryCopy extraFieldsLength], entryCopy, &size_ptr, &v18);
    v13 = v18;
  }

  else
  {
    v22 = @"TSUZipArchiveErrorDescription";
    v23 = @"Wrong data size for TSUZipLocalFileHeaderRecord filename and extra fields";
    v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v12];
    v14 = 0;
  }

  v12 = v13;
  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v14)
  {
    v16 = v12;
    v14 = 0;
    *error = v12;
  }

LABEL_11:

  return v14;
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    name = [entryCopy name];
    v7 = [(TSUZipArchive *)self normalizeEntryName:name];

    v8 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v7];

    if (v8)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015B58C();
      }

      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015B5A0();
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_entriesMap setObject:v5 forKeyedSubscript:v7];
      [(NSMutableOrderedSet *)self->_entries addObject:v5];
    }
  }
}

- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  cCopy = c;
  entryCopy = entry;
  if ([(NSMutableOrderedSet *)self->_entries containsObject:entryCopy])
  {
    v7 = [entryCopy isCompressed] ^ 1;
    v8 = [[TSUZipReadChannel alloc] initWithEntry:entryCopy archive:self validateCRC:cCopy & v7];
    if ((v7 & 1) == 0)
    {
      v9 = [TSUBufferedReadChannel alloc];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10008567C;
      v14[3] = &unk_1001CCC98;
      v15 = entryCopy;
      v16 = cCopy;
      v10 = [(TSUBufferedReadChannel *)v9 initWithReadChannel:v8 blockInfos:0 streamReadChannelBlock:v14];

      v8 = v10;
    }
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015B614();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B628();
    }

    v11 = [NSString stringWithUTF8String:"[TSUZipArchive readChannelForEntry:validateCRC:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:779 isFatal:0 description:"Entry isn't part of this archive"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = 0;
  }

  return v8;
}

- (id)normalizeEntryName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if ((self->_options & 2) != 0)
  {
    lowercaseString = [nameCopy lowercaseString];

    v5 = lowercaseString;
  }

  precomposedStringWithCanonicalMapping = [v5 precomposedStringWithCanonicalMapping];

  return precomposedStringWithCanonicalMapping;
}

- (id)entryForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
    v6 = [(TSUZipArchive *)self normalizeEntryName:nameCopy];

    v7 = [(NSMutableDictionary *)self->_entriesMap objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
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
      collapsedName = [v10 collapsedName];
      if (collapsedName)
      {
        blockCopy[2](blockCopy, collapsedName, v10, &v17);
      }

      else
      {
        name = [v10 name];
        blockCopy[2](blockCopy, name, v10, &v17);
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
  v21 = sub_100085DF0;
  v22 = sub_100085E00;
  v23 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = (self->_options >> 1) & 1 | 2;
  entriesMap = self->_entriesMap;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100085E08;
  v17[3] = &unk_1001CCD00;
  v17[4] = &v18;
  v17[5] = v4;
  [(NSMutableDictionary *)entriesMap enumerateKeysAndObjectsUsingBlock:v17];
  objc_autoreleasePoolPop(v3);
  if ([v19[5] count])
  {
    v6 = [NSString pathWithComponents:v19[5]];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 length];
  if (v7)
  {
    v8 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_entriesMap, "count")}];
    v9 = objc_autoreleasePoolPush();
    v10 = self->_entriesMap;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100085FE4;
    v13[3] = &unk_1001CCD28;
    v16 = v7;
    v11 = v8;
    v14 = v11;
    selfCopy = self;
    [(NSMutableDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v13];

    objc_autoreleasePoolPop(v9);
    v12 = self->_entriesMap;
    self->_entriesMap = v11;
  }

  _Block_object_dispose(&v18, 8);
}

- (unint64_t)archiveLength
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CCD48);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v17 = v2;
    v18 = 2082;
    v19 = "[TSUZipArchive archiveLength]";
    v20 = 2082;
    v21 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m";
    v22 = 1024;
    v23 = 919;
    v24 = 2114;
    v25 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v7 = [NSString stringWithUTF8String:"[TSUZipArchive archiveLength]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:919 isFatal:0 description:"Abstract method not overridden by %{public}@", v10];

  +[TSUAssertionHandler logBacktraceThrottled];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "[TSUZipArchive archiveLength]"];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)newArchiveReadChannel
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CCD68);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v17 = v2;
    v18 = 2082;
    v19 = "[TSUZipArchive newArchiveReadChannel]";
    v20 = 2082;
    v21 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m";
    v22 = 1024;
    v23 = 923;
    v24 = 2114;
    v25 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v7 = [NSString stringWithUTF8String:"[TSUZipArchive newArchiveReadChannel]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:923 isFatal:0 description:"Abstract method not overridden by %{public}@", v10];

  +[TSUAssertionHandler logBacktraceThrottled];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "[TSUZipArchive newArchiveReadChannel]"];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (BOOL)isValid
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CCD88);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v17 = v2;
    v18 = 2082;
    v19 = "[TSUZipArchive isValid]";
    v20 = 2082;
    v21 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m";
    v22 = 1024;
    v23 = 927;
    v24 = 2114;
    v25 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  v7 = [NSString stringWithUTF8String:"[TSUZipArchive isValid]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipArchive.m"];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:927 isFatal:0 description:"Abstract method not overridden by %{public}@", v10];

  +[TSUAssertionHandler logBacktraceThrottled];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v12, "[TSUZipArchive isValid]"];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)validateCRCWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("TSUZipArchive.Validation", v6);

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100085DF0;
  v28[4] = sub_100085E00;
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
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100086A90;
        block[3] = &unk_1001CCDD0;
        block[4] = self;
        block[5] = v12;
        v23 = v28;
        v22 = v7;
        dispatch_async(v22, block);

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100086CAC;
  v17[3] = &unk_1001CCE20;
  v18 = queueCopy;
  v19 = completionCopy;
  v20 = v28;
  v13 = queueCopy;
  v14 = completionCopy;
  dispatch_async(v7, v17);

  _Block_object_dispose(v28, 8);
}

- (BOOL)validateCRCAndReturnError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100085DF0;
  v15 = sub_100085E00;
  v16 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100086EEC;
  v10[3] = &unk_1001CC768;
  v10[4] = v5;
  v10[5] = &v11;
  [(TSUZipArchive *)self validateCRCWithQueue:v6 completion:v10];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v12[5];
  if (error && v7)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)debugDescription
{
  v3 = [TSUDescription descriptionWithObject:self class:objc_opt_class()];
  array = [(NSMutableOrderedSet *)self->_entries array];
  v5 = TSUArrayDescription(array);
  [v3 addField:@"entries" value:v5];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end