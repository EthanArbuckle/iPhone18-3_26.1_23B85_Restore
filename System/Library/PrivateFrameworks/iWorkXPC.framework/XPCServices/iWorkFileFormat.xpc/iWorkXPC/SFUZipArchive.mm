@interface SFUZipArchive
+ (BOOL)isZipArchiveAtPath:(id)path;
- (BOOL)decompressAtPath:(id)path wasEmpty:(BOOL *)empty;
- (SFUZipEndOfCentralDirectory)readEndOfCentralDirectoryFromInputStream:(SEL)stream;
- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)stream eocdOffset:(id)offset;
- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)stream offset:(id)offset;
- (const)searchForEndOfCentralDirectoryFromInputStream:(id)stream offset:(int64_t *)offset;
- (id)commonRootDirectoryIgnoringCase:(BOOL)case;
- (id)entryWithName:(id)name dataLength:(int64_t)length;
- (id)readFilenameFromBuffer:(const char *)buffer size:(unint64_t)size;
- (void)dealloc;
- (void)readEntries;
- (void)readExtraFieldFromBuffer:(const char *)buffer size:(unint64_t)size entry:(id)entry;
- (void)setCryptoKey:(id)key;
@end

@implementation SFUZipArchive

+ (BOOL)isZipArchiveAtPath:(id)path
{
  v3 = [[SFUZipArchiveFileDataRepresentation alloc] initWithPath:path];
  inputStream = [(SFUZipArchiveFileDataRepresentation *)v3 inputStream];
  v6 = [inputStream readToBuffer:v8 size:4] == 4 && v8[0] == 67324752;
  [inputStream close];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipArchive;
  [(SFUZipArchive *)&v3 dealloc];
}

- (id)entryWithName:(id)name dataLength:(int64_t)length
{
  v5 = [(SFUZipArchive *)self entryWithName:name];
  v6 = v5;
  if (v5)
  {
    [v5 setDataLength:length];
  }

  return v6;
}

- (void)setCryptoKey:(id)key
{
  keyCopy = key;

  self->mCryptoKey = key;
  allValues = [(NSMutableDictionary *)self->mEntries allValues];
  mCryptoKey = self->mCryptoKey;

  [allValues makeObjectsPerformSelector:"setCryptoKey:" withObject:mCryptoKey];
}

- (BOOL)decompressAtPath:(id)path wasEmpty:(BOOL *)empty
{
  v6 = +[NSFileManager defaultManager];
  v23 = 0;
  if ([(NSFileManager *)v6 fileExistsAtPath:path isDirectory:&v23])
  {
    if ((v23 & 1) == 0)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015F4DC();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015F504();
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipArchive decompressAtPath:wasEmpty:]" file:empty] lineNumber:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipArchive.m"] isFatal:220 description:0, "Can only decompress into a directory"];
      +[TSUAssertionHandler logBacktraceThrottled];
LABEL_27:
      v8 = 0;
      v15 = 0;
      goto LABEL_29;
    }
  }

  else if (![(NSFileManager *)v6 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0])
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F42C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F454();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipArchive decompressAtPath:wasEmpty:]" file:empty] lineNumber:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipArchive.m"] isFatal:217 description:0, "Can't create output directory"];
    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_27;
  }

  allEntryNames = [-[SFUZipArchive allEntryNames](self allEntryNames];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = 0;
  v9 = [allEntryNames countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allEntryNames);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 length];
        v14 = [path stringByAppendingPathComponent:v12];
        if ([v12 characterAtIndex:v13 - 1] == 47)
        {
          v15 = [(NSFileManager *)v6 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];
        }

        else
        {
          v15 = -[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](v6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [v14 stringByDeletingLastPathComponent], 1, 0, 0);
          [-[SFUZipArchive entryWithName:](self entryWithName:{v12), "copyToFile:", v14}];
          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = [v12 hasPrefix:@"."] ^ 1;
          }
        }
      }

      v9 = [allEntryNames countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v15 = 1;
  }

LABEL_29:
  if (v17)
  {
    *v17 = (v8 & 1) == 0;
  }

  return v15;
}

- (id)commonRootDirectoryIgnoringCase:(BOOL)case
{
  caseCopy = case;
  context = objc_autoreleasePoolPush();
  allEntryNames = [(SFUZipArchive *)self allEntryNames];
  v6 = [allEntryNames count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [objc_msgSend(allEntryNames objectAtIndex:{v9), "pathComponents"}];
      if ([v10 count] < 2 || (objc_msgSend(objc_msgSend(v10, "objectAtIndex:", 0), "isEqualToString:", @"__MACOSX") & 1) == 0)
      {
        if (v8)
        {
          v11 = 0;
          if ([(NSMutableArray *)v8 count])
          {
            do
            {
              if (v11 >= [v10 count])
              {
                break;
              }

              if ([-[NSMutableArray objectAtIndexedSubscript:](v8 objectAtIndexedSubscript:{v11), "compare:options:", objc_msgSend(v10, "objectAtIndexedSubscript:", v11), caseCopy | 2}])
              {
                break;
              }

              ++v11;
            }

            while (v11 < [(NSMutableArray *)v8 count]);
            if (v11 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          if (v11 != [(NSMutableArray *)v8 count]+ 1)
          {
            [(NSMutableArray *)v8 removeObjectsInRange:v11, [(NSMutableArray *)v8 count]- v11];
          }
        }

        else
        {
          v8 = [NSMutableArray arrayWithArray:v10];
          [(NSMutableArray *)v8 removeLastObject];
        }
      }

      if (++v9 == v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
LABEL_17:
  if ([(NSMutableArray *)v8 count])
  {
    v12 = [NSString pathWithComponents:v8];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v12;
}

- (void)readEntries
{
  context = objc_autoreleasePoolPush();
  [[SFUZipRecordInputStream alloc] initWithDataRepresentation:self->mDataRepresentation];
  [(SFUZipArchive *)self readEndOfCentralDirectoryFromInputStream:?];
  objc_autoreleasePoolPop(context);
}

- (SFUZipEndOfCentralDirectory)readEndOfCentralDirectoryFromInputStream:(SEL)stream
{
  v14 = [(SFUZipArchiveDataRepresentation *)self->mDataRepresentation dataLength]- 22;
  result = [a4 dataAtOffset:? size:? end:?];
  v8 = (&result->var0 + 4);
  if (LODWORD(result->var0) != 101010256)
  {
    result = [(SFUZipArchive *)self searchForEndOfCentralDirectoryFromInputStream:a4 offset:&v14];
    v8 = result;
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (LOWORD(v8->var0) | WORD1(v8->var0))
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  var0_high = HIWORD(v8->var0);
  retstr->var0 = var0_high;
  var1_low = LODWORD(v8->var1);
  retstr->var1 = var1_low;
  var1_high = HIDWORD(v8->var1);
  retstr->var2 = var1_high;
  if (var0_high == 0xFFFF || var1_low == -1 || var1_high == -1)
  {
    return [(SFUZipArchive *)self readZip64EndOfCentralDirectoryFromInputStream:a4 eocdOffset:v14];
  }

  return result;
}

- (const)searchForEndOfCentralDirectoryFromInputStream:(id)stream offset:(int64_t *)offset
{
  dataLength = [(SFUZipArchiveDataRepresentation *)self->mDataRepresentation dataLength];
  if (dataLength <= 0x10015)
  {
    v7 = dataLength;
  }

  else
  {
    v7 = 65557;
  }

  v8 = &dataLength[-v7];
  v9 = [stream dataAtOffset:&dataLength[-v7] size:v7 end:dataLength];
  v10 = v7 & 0x3FF | 0x400;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = &v9[v7 - v10];
  if (v11 >= v9)
  {
    v13 = v9;
    v14 = v10 - 21;
    do
    {
      if (v14 >= 1)
      {
        v15 = &v11[v14];
        v16 = v11;
        do
        {
          v17 = memchr(v16, 80, v15 - v16);
          v18 = v15;
          if (v17)
          {
            if (*(v17 + 1) == 75 && *(v17 + 2) == 5)
            {
              v18 = v17;
              if (*(v17 + 3) == 6)
              {
                v12 = v17 + 4;
                *offset = &v8[v17] - v13;
                return v12;
              }
            }

            else
            {
              v18 = v17;
            }
          }

          v16 = v18 + 4;
        }

        while ((v18 + 4) < v15);
      }

      v11 -= 1024;
      v14 = 1024;
    }

    while (v11 >= v13);
  }

  [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"Could not find the end of central directory record"];
  return 0;
}

- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)stream eocdOffset:(id)offset
{
  v8 = a5 - 20;
  if (a5 < 0x14)
  {
    [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"File isn't long enough for Zip64 locator"];
  }

  result = [offset dataAtOffset:v8 size:20 end:0];
  v10 = result;
  if (LODWORD(result->var0) != 117853008)
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"Zip64 end of central directory locator record signature not found"];
  }

  if (HIDWORD(v10->var0))
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  var1 = v10->var1;
  if (LODWORD(v10->var2) != 1)
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  if (self)
  {

    return [(SFUZipArchive *)self readZip64EndOfCentralDirectoryFromInputStream:offset offset:var1];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)stream offset:(id)offset
{
  result = [offset dataAtOffset:a5 size:56 end:0];
  v7 = result;
  if (LODWORD(result->var0) != 101075792)
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"Zip64 end of central directory record signature not found"];
  }

  if (LODWORD(v7->var2))
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  if (HIDWORD(v7->var2))
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  *&retstr->var0 = *&v7[1].var1;
  retstr->var2 = v7[2].var0;
  return result;
}

- (id)readFilenameFromBuffer:(const char *)buffer size:(unint64_t)size
{
  result = [[NSString alloc] initWithBytes:buffer length:size encoding:4];
  if (!result)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    result = [[NSString alloc] initWithBytes:buffer length:size encoding:CFStringConvertEncodingToNSStringEncoding(SystemEncoding)];
    if (!result)
    {
      [SFUZipException raise:@"SFUZipFilenameError" format:@"Could not read filename."];
      return 0;
    }
  }

  return result;
}

- (void)readExtraFieldFromBuffer:(const char *)buffer size:(unint64_t)size entry:(id)entry
{
  if (size >= 4)
  {
    v19 = v5;
    v20 = v6;
    bufferCopy = buffer;
    v10 = &buffer[size];
    qmemcpy(v18, "iwphiwuu", sizeof(v18));
    while (1)
    {
      v11 = *(bufferCopy + 1);
      v12 = bufferCopy + 4;
      v13 = &bufferCopy[v11 + 4];
      if (v13 > v10)
      {
        break;
      }

      v14 = *bufferCopy;
      if (v14 > 0x636D)
      {
        if (v14 == 25454)
        {
          v15 = v11 >= 4 && self->mPassphraseHint == 0;
          if (v15 && *v12 == v18[0])
          {
            v16 = [[NSData alloc] initWithBytes:bufferCopy + 8 length:(v11 - 4)];
            self->mPassphraseHint = [SFUCryptoUtils decodePassphraseHint:v16];
          }
        }

        else if (v14 == 25455 && v11 >= 4 && !self->mEncryptedDocumentUuid && *v12 == v18[1])
        {
          self->mEncryptedDocumentUuid = [[NSData alloc] initWithBytes:bufferCopy + 8 length:(v11 - 4)];
        }
      }

      else if (v14 == 1)
      {
        [entry readZip64ExtraField:? size:?];
      }

      else if (v14 == 25453 && v11 >= 4 && !self->mPassphraseVerifier && *v12 == 1987082089)
      {
        self->mPassphraseVerifier = [[NSData alloc] initWithBytes:bufferCopy + 8 length:(v11 - 4)];
      }

      bufferCopy = v13;
      if (v13 + 4 > v10)
      {
        return;
      }
    }

    if (TSUErrorCat_init_token != -1)
    {
      sub_10015F58C();
    }

    v17 = TSUErrorCat_log_t;
    if (os_log_type_enabled(TSUErrorCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F5A0(v17);
    }
  }
}

@end