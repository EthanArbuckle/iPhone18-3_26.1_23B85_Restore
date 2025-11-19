@interface SFUZipArchive
+ (BOOL)isZipArchiveAtPath:(id)a3;
- (BOOL)decompressAtPath:(id)a3;
- (SFUZipArchive)initWithData:(id)a3 collapseCommonRootDirectory:(BOOL)a4;
- (SFUZipArchive)initWithPath:(id)a3 collapseCommonRootDirectory:(BOOL)a4;
- (SFUZipEndOfCentralDirectory)readEndOfCentralDirectoryFromInputStream:(SEL)a3;
- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 eocdOffset:(id)a4;
- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 offset:(id)a4;
- (const)searchForEndOfCentralDirectoryFromInputStream:(id)a3 offset:(int64_t *)a4;
- (id)entryWithName:(id)a3 dataLength:(int64_t)a4;
- (id)readFilenameFromBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)collapseCommonRootDirectory;
- (void)dealloc;
- (void)readEntries;
- (void)readExtraFieldFromBuffer:(const char *)a3 size:(unint64_t)a4 entry:(id)a5;
- (void)setCryptoKey:(id)a3;
@end

@implementation SFUZipArchive

+ (BOOL)isZipArchiveAtPath:(id)a3
{
  v3 = [[SFUZipArchiveFileDataRepresentation alloc] initWithPath:a3];
  v4 = [(SFUZipArchiveFileDataRepresentation *)v3 inputStream];
  v6 = [v4 readToBuffer:&v8 size:4] == 4 && v8 == 67324752;
  [v4 close];

  return v6;
}

- (SFUZipArchive)initWithPath:(id)a3 collapseCommonRootDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = [(SFUZipArchive *)self init];
  if (v6)
  {
    v6->mEntries = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->mDataRepresentation = [[SFUZipArchiveFileDataRepresentation alloc] initWithPath:a3];
    [(SFUZipArchive *)v6 readEntries];
    if (v4)
    {
      [(SFUZipArchive *)v6 collapseCommonRootDirectory];
    }
  }

  return v6;
}

- (SFUZipArchive)initWithData:(id)a3 collapseCommonRootDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = [(SFUZipArchive *)self init];
  if (v6)
  {
    v6->mEntries = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->mDataRepresentation = [[SFUZipArchiveMemoryDataRepresentation alloc] initWithData:a3];
    [(SFUZipArchive *)v6 readEntries];
    if (v4)
    {
      [(SFUZipArchive *)v6 collapseCommonRootDirectory];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipArchive;
  [(SFUZipArchive *)&v3 dealloc];
}

- (id)entryWithName:(id)a3 dataLength:(int64_t)a4
{
  v5 = [(SFUZipArchive *)self entryWithName:a3];
  v6 = v5;
  if (v5)
  {
    [v5 setDataLength:a4];
  }

  return v6;
}

- (void)setCryptoKey:(id)a3
{
  v5 = a3;

  self->mCryptoKey = a3;
  v6 = [(NSMutableDictionary *)self->mEntries allValues];
  mCryptoKey = self->mCryptoKey;

  [v6 makeObjectsPerformSelector:sel_setCryptoKey_ withObject:mCryptoKey];
}

- (BOOL)decompressAtPath:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  if ([v5 fileExistsAtPath:a3 isDirectory:&v24])
  {
    if ((v24 & 1) == 0)
    {
      v6 = +[TSUAssertionHandler currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchive decompressAtPath:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchive.m"), 231, @"Can only decompress into a directory"}];
      return 0;
    }
  }

  else if (([v5 createDirectoryAtPath:a3 withIntermediateDirectories:1 attributes:0 error:0] & 1) == 0)
  {
    v17 = +[TSUAssertionHandler currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchive decompressAtPath:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchive.m"), 226, @"Can't create output directory"}];
    return 0;
  }

  v8 = [-[SFUZipArchive allEntryNames](self "allEntryNames")];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v9)
  {
    return 1;
  }

  v10 = *v21;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v13 = [v12 length];
      v14 = [a3 stringByAppendingPathComponent:v12];
      if ([v12 characterAtIndex:v13 - 1] == 47)
      {
        v15 = [v5 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:0];
      }

      else
      {
        v15 = [v5 createDirectoryAtPath:objc_msgSend(v14 withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, 0}];
        v16 = [(SFUZipArchive *)self entryWithName:v12];
        [v16 copyToFile:v14];
        [(SFUZipArchiveDelegate *)[(SFUZipArchive *)self delegate] zipArchiveDidDecompressEntry:v16];
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  }

  while (v9);
  return v15;
}

- (void)readEntries
{
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [[SFUZipRecordInputStream alloc] initWithDataRepresentation:self->mDataRepresentation];
  [(SFUZipArchive *)self readEndOfCentralDirectoryFromInputStream:?];
}

- (void)collapseCommonRootDirectory
{
  v20 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v3 = [(SFUZipArchive *)self allEntryNames];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [objc_msgSend(v3 objectAtIndex:{v7), "pathComponents"}];
      if ([v8 count] < 2 || (objc_msgSend(objc_msgSend(v8, "objectAtIndex:", 0), "isEqualToString:", @"__MACOSX") & 1) == 0)
      {
        if (v6)
        {
          v9 = 0;
          if ([v6 count])
          {
            do
            {
              if (v9 >= [v8 count])
              {
                break;
              }

              if (![objc_msgSend(v6 objectAtIndexedSubscript:{v9), "isEqualToString:", objc_msgSend(v8, "objectAtIndexedSubscript:", v9)}])
              {
                break;
              }

              ++v9;
            }

            while (v9 < [v6 count]);
            if (v9 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          if (v9 != [v6 count] + 1)
          {
            [v6 removeObjectsInRange:{v9, objc_msgSend(v6, "count") - v9}];
          }
        }

        else
        {
          v6 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
          [v6 removeLastObject];
        }
      }

      if (++v7 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  v6 = 0;
LABEL_17:
  if ([v6 count])
  {
    v10 = [MEMORY[0x277CCACA8] pathWithComponents:v6];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (v10)
  {
    v21 = v11;
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->mEntries, "count")}];
    v13 = [v10 length];
    v14 = [(SFUZipArchive *)self allEntryNames];
    v15 = [v14 count];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = v13 + 1;
      do
      {
        v19 = [v14 objectAtIndex:v17];
        if ([v19 length] != v18 && (objc_msgSend(v19, "hasPrefix:", @"__MACOSX") & 1) == 0)
        {
          -[NSMutableDictionary setObject:forKey:](v12, "setObject:forKey:", -[NSMutableDictionary objectForKey:](self->mEntries, "objectForKey:", v19), [v19 substringFromIndex:v18]);
        }

        ++v17;
      }

      while (v16 != v17);
    }

    self->mEntries = v12;
    v11 = v21;
  }
}

- (SFUZipEndOfCentralDirectory)readEndOfCentralDirectoryFromInputStream:(SEL)a3
{
  v16 = [(SFUZipArchiveDataRepresentation *)self->mDataRepresentation dataLength]- 22;
  result = [a4 dataAtOffset:? size:? end:?];
  v8 = (&result->var0 + 4);
  if (LODWORD(result->var0) != 101010256)
  {
    result = [(SFUZipArchive *)self searchForEndOfCentralDirectoryFromInputStream:a4 offset:&v16];
    v8 = result;
  }

  if (LOWORD(v8->var0) | WORD1(v8->var0))
  {
    result = [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  var0_high = HIWORD(v8->var0);
  var1_low = LODWORD(v8->var1);
  var1_high = HIDWORD(v8->var1);
  retstr->var0 = var0_high;
  retstr->var1 = var1_low;
  retstr->var2 = var1_high;
  if (var0_high == 0xFFFF || var1_low == -1 || var1_high == -1)
  {
    v14 = 0uLL;
    v15 = 0;
    result = [(SFUZipArchive *)self readZip64EndOfCentralDirectoryFromInputStream:a4 eocdOffset:v16];
    if (*(&v14 + 1))
    {
      *&retstr->var0 = v14;
      retstr->var2 = v15;
    }
  }

  return result;
}

- (const)searchForEndOfCentralDirectoryFromInputStream:(id)a3 offset:(int64_t *)a4
{
  v6 = [(SFUZipArchiveDataRepresentation *)self->mDataRepresentation dataLength];
  if (v6 <= 0x10015)
  {
    v7 = v6;
  }

  else
  {
    v7 = 65557;
  }

  v8 = v6 - v7;
  v9 = [a3 dataAtOffset:v6 - v7 size:v7 end:v6];
  v10 = v7 & 0x3FF | 0x400;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = (v9 + v7 - v10);
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
            if (v17[1] == 75 && v17[2] == 5)
            {
              v18 = v17;
              if (v17[3] == 6)
              {
                v12 = v17 + 4;
                *a4 = &v17[v8 - v13];
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

- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 eocdOffset:(id)a4
{
  v8 = a5 - 20;
  if (a5 < 0x14)
  {
    [SFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"File isn't long enough for Zip64 locator"];
  }

  result = [a4 dataAtOffset:v8 size:20 end:0];
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

    return [(SFUZipArchive *)self readZip64EndOfCentralDirectoryFromInputStream:a4 offset:var1];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 offset:(id)a4
{
  result = [a4 dataAtOffset:a5 size:56 end:0];
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

- (id)readFilenameFromBuffer:(const char *)a3 size:(unint64_t)a4
{
  result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
  if (!result)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:CFStringConvertEncodingToNSStringEncoding(SystemEncoding)];
    if (!result)
    {
      [SFUZipException raise:@"SFUZipFilenameError" format:@"Could not read filename."];
      return 0;
    }
  }

  return result;
}

- (void)readExtraFieldFromBuffer:(const char *)a3 size:(unint64_t)a4 entry:(id)a5
{
  if (a4 >= 4)
  {
    v18 = v5;
    v19 = v6;
    v8 = a3;
    v10 = &a3[a4];
    qmemcpy(v17, "iwphiwuu", sizeof(v17));
    do
    {
      v11 = *(v8 + 1);
      v12 = v8 + 4;
      v13 = &v8[v11 + 4];
      if (v13 > v10)
      {
        break;
      }

      v14 = *v8;
      if (v14 > 0x636D)
      {
        if (v14 == 25454)
        {
          v15 = v11 >= 4 && self->mPassphraseHint == 0;
          if (v15 && *v12 == v17[0])
          {
            v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + 8 length:(v11 - 4)];
            self->mPassphraseHint = [SFUCryptoUtils decodePassphraseHint:v16];
          }
        }

        else if (v14 == 25455 && v11 >= 4 && !self->mEncryptedDocumentUuid && *v12 == v17[1])
        {
          self->mEncryptedDocumentUuid = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + 8 length:(v11 - 4)];
        }
      }

      else if (v14 == 1)
      {
        [a5 readZip64ExtraField:? size:?];
      }

      else if (v14 == 25453 && v11 >= 4 && !self->mPassphraseVerifier && *v12 == 1987082089)
      {
        self->mPassphraseVerifier = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + 8 length:(v11 - 4)];
      }

      v8 = v13;
    }

    while (v13 + 4 <= v10);
  }
}

@end