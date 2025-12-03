@interface SFUZipArchiveOutputStream
+ (BOOL)createZipWithItemsAtPath:(id)path zippedPath:(id)zippedPath rootPathComponentName:(id)name;
+ (unint64_t)approximateBytesForEntryHeaderWithName:(id)name;
- (BOOL)canRemoveEntryWithName:(id)name;
- (SFUZipArchiveOutputStream)initWithOutputStream:(id)stream cryptoKey:(id)key passphraseHint:(id)hint;
- (SFUZipArchiveOutputStream)initWithPath:(id)path cryptoKey:(id)key passphraseHint:(id)hint;
- (id)beginUncompressedUnknownSizeEntryWithName:(id)name;
- (id)entriesAtPath:(id)path;
- (id)entryNames;
- (unint64_t)writeLocalFileHeaderForEntry:(id)entry;
- (unsigned)crc32ForEntry:(id)entry;
- (void)beginEntryWithName:(id)name isCompressed:(BOOL)compressed uncompressedSize:(unint64_t)size;
- (void)close;
- (void)coalesceAndTruncateFreeSpace;
- (void)dealloc;
- (void)finishEntry;
- (void)moveToPath:(id)path;
- (void)removeEntryWithName:(id)name;
- (void)reset;
- (void)setCrc32ForCurrentEntry:(unsigned int)entry;
- (void)setEncryptedDocumentUuid:(id)uuid;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
- (void)writeCentralFileHeaderUsingEntry:(id)entry isFirstEntry:(BOOL)firstEntry;
- (void)writeEndOfCentralDirectoryWithOffset:(int64_t)offset;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset;
@end

@implementation SFUZipArchiveOutputStream

+ (unint64_t)approximateBytesForEntryHeaderWithName:(id)name
{
  if (name)
  {
    v3 = strlen([name UTF8String]);
  }

  else
  {
    v3 = 0;
  }

  return v3 + 30;
}

- (SFUZipArchiveOutputStream)initWithOutputStream:(id)stream cryptoKey:(id)key passphraseHint:(id)hint
{
  v8 = [(SFUZipArchiveOutputStream *)self init];
  if (v8)
  {
    v8->mOutputStream = stream;
    v8->mCryptoKey = key;
    v8->mPassphraseHint = [SFUCryptoUtils encodePassphraseHint:hint];
    v8->mEntries = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8->mFreeList = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = malloc_type_malloc(*"8", 0x100004077774924uLL);
    v8->mBuffer = v9;
    if (!v9)
    {
      [SFUZipException raise:@"SFUZipOutputError" format:@"Initialization error. Could not allocate record buffer of size: %zu", *"8"];
    }
  }

  return v8;
}

- (SFUZipArchiveOutputStream)initWithPath:(id)path cryptoKey:(id)key passphraseHint:(id)hint
{
  v6 = [[SFUMoveableFileOutputStream alloc] initWithPath:path];

  return MEMORY[0x2821F9670](self, sel_initWithOutputStream_cryptoKey_passphraseHint_);
}

- (void)dealloc
{
  free(self->mBuffer);
  v3.receiver = self;
  v3.super_class = SFUZipArchiveOutputStream;
  [(SFUZipArchiveOutputStream *)&v3 dealloc];
}

+ (BOOL)createZipWithItemsAtPath:(id)path zippedPath:(id)zippedPath rootPathComponentName:(id)name
{
  v39[2] = *MEMORY[0x277D85DE8];
  v7 = [[SFUZipArchiveOutputStream alloc] initWithPath:zippedPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:path];
  v9 = *MEMORY[0x277CBE8F8];
  v10 = *MEMORY[0x277CBE838];
  v39[0] = *MEMORY[0x277CBE8F8];
  v39[1] = v10;
  v27 = v10;
  v11 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:count:" errorHandler:{v39, 2), 0, 0}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    obj = v11;
    v13 = *v35;
    pathCopy = path;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v32 = 0;
        v33 = 0;
        if ([v15 getResourceValue:&v33 forKey:v9 error:0])
        {
          v16 = [v15 getResourceValue:&v32 forKey:v27 error:0];
        }

        else
        {
          v16 = 0;
        }

        if (name)
        {
          v17 = [name stringByAppendingPathComponent:{objc_msgSend(v33, "tsu_stringWithPathRelativeTo:", path)}];
        }

        else
        {
          v17 = [v33 tsu_stringWithPathRelativeTo:{objc_msgSend(path, "stringByDeletingLastPathComponent")}];
        }

        v18 = v17;
        if ((v16 & 1) == 0)
        {
          v24 = 0;
          goto LABEL_24;
        }

        v31 = 0;
        if ([defaultManager fileExistsAtPath:v33 isDirectory:&v31])
        {
          if ((v31 & 1) == 0)
          {
            -[SFUZipArchiveOutputStream beginEntryWithName:isCompressed:uncompressedSize:](v7, "beginEntryWithName:isCompressed:uncompressedSize:", v18, 0, [v32 unsignedLongLongValue]);
            v19 = [SFUFileDataRepresentation alloc];
            v20 = [(SFUFileDataRepresentation *)v19 initWithPath:v33];
            bufferedInputStream = [(SFUDataRepresentation *)v20 bufferedInputStream];
            while (1)
            {
              v30 = 0;
              if (![bufferedInputStream readToOwnBuffer:&v30 size:0xFFFFFFFFLL])
              {
                break;
              }

              [(SFUZipArchiveOutputStream *)v7 writeBuffer:v30 size:?];
            }

            [bufferedInputStream close];

            path = pathCopy;
          }
        }

        else
        {
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SFUZipArchiveOutputStream createZipWithItemsAtPath:zippedPath:rootPathComponentName:]"];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"];
          [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:181 isFatal:0 description:"Trying to add file that doesn't exist: %@", v33];
          +[TSUAssertionHandler logBacktraceThrottled];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_24:
  [(SFUZipArchiveOutputStream *)v7 close];

  return v24;
}

- (void)beginEntryWithName:(id)name isCompressed:(BOOL)compressed uncompressedSize:(unint64_t)size
{
  compressedCopy = compressed;
  if (!self->mOutputStream)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream beginEntryWithName:isCompressed:uncompressedSize:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 232, 0, "Zip output stream is closed.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  if (self->mCryptoKey)
  {
    size = [SFUCryptoOutputStream encodedLengthForDataLength:size key:?];
  }

  v10 = objc_alloc_init(SFUZipOutputEntry);
  self->mCurrentEntry = v10;
  [(NSMutableArray *)self->mEntries addObject:v10];

  self->mCurrentEntry->name = [name copy];
  self->mCurrentEntry->utf8NameLength = strlen([name UTF8String]);
  self->mCurrentEntry->isCompressed = compressedCopy;
  self->mCurrentEntry->isEncrypted = self->mCryptoKey != 0;
  self->mCurrentEntry->time = sub_2770A5448();
  self->mCurrentEntry->is64Bit = size > 0xFFC2F6FF;
  if (!compressedCopy && [(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    mCurrentEntry = self->mCurrentEntry;
    v12 = mCurrentEntry->utf8NameLength + 30;
    v13 = mCurrentEntry->is64Bit ? 20 : 0;
    v14 = v12 + v13;
    if (!__CFADD__(size, v12 + v13))
    {
      v15 = [(NSMutableArray *)self->mFreeList count];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = 0;
        v19 = v14 + size;
        do
        {
          v20 = [(NSMutableArray *)self->mFreeList objectAtIndex:v17];
          v21 = *(v20 + 16);
          if (v21 == v19)
          {
            v18 = v20;
            goto LABEL_22;
          }

          if (v21 >= v19 + 47 && (!v18 || v21 < v18[2]))
          {
            v18 = v20;
          }

          ++v17;
        }

        while (v16 != v17);
        if (!v18)
        {
          goto LABEL_23;
        }

LABEL_22:
        [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v18[1] whence:0];
        self->mCurrentFreeSpace = v18;
      }
    }
  }

LABEL_23:
  v22 = self->mCurrentEntry;
  if (!self->mCurrentFreeSpace)
  {
    self->mLastEntryInFile = v22;
  }

  self->mCurrentEntry->compressedDataOffset = self->mCurrentEntry->offset + [(SFUZipArchiveOutputStream *)self writeLocalFileHeaderForEntry:v22];
  self->mCurrentEntry->crc = crc32(0, 0, 0);
  if (self->mCurrentEntry->isEncrypted)
  {
    v23 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:self->mOutputStream key:self->mCryptoKey computeCrc32:1];
    if (!compressedCopy)
    {
LABEL_27:
      self->mEntryOutputStream = v23;
      return;
    }
  }

  else
  {
    v23 = self->mOutputStream;
    if (!compressedCopy)
    {
      goto LABEL_27;
    }
  }

  v24 = v23;
  self->mEntryOutputStream = [[SFUZipDeflateOutputStream alloc] initWithOutputStream:v23];
}

- (id)beginUncompressedUnknownSizeEntryWithName:(id)name
{
  [(SFUZipArchiveOutputStream *)self beginUnknownSizeEntryWithName:name isCompressed:0];
  self->mCurrentEntry->isWrittenDirectlyToFile = 1;
  v4 = [[SFUOffsetOutputStream alloc] initWithOutputStream:self->mEntryOutputStream];
  if (self->mCurrentEntry->isEncrypted)
  {
    v5 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v4 key:self->mCryptoKey computeCrc32:1];

    v4 = v5;
  }

  return v4;
}

- (void)setCrc32ForCurrentEntry:(unsigned int)entry
{
  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry)
  {
    if (mCurrentEntry->isWrittenDirectlyToFile)
    {
      mCurrentEntry->crc = entry;
    }
  }
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  if (self->mCurrentEntry)
  {
    if (!self->mOutputStream)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream writeBuffer:size:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 355, 0, "Zip output stream is closed.");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    [(SFUOutputStream *)self->mEntryOutputStream writeBuffer:buffer size:size];
    self->mCurrentEntry->uncompressedSize += size;
    mCurrentEntry = self->mCurrentEntry;
    if (!mCurrentEntry->isEncrypted)
    {
      if (size >= 0xFFFFFFFF)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream writeBuffer:size:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 365, 0, "overflow in writeBuffer:");
        +[TSUAssertionHandler logBacktraceThrottled];
        mCurrentEntry = self->mCurrentEntry;
      }

      self->mCurrentEntry->crc = crc32(mCurrentEntry->crc, buffer, size);
    }
  }

  else
  {

    [SFUZipException raise:@"SFUZipOutputError" format:@"-writeBuffer:size: called when current entry is nil"];
  }
}

- (BOOL)canRemoveEntryWithName:(id)name
{
  v5 = [(NSMutableArray *)self->mEntries count];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = 0;
  do
  {
    v8 = [(NSMutableArray *)self->mEntries objectAtIndex:v7];
    if ([*(v8 + 8) isEqualToString:name])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    ++v7;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >= v6;
    }
  }

  while (!v10);
  if (v9)
  {
    return v9 == self->mLastEntryInFile || v9->compressedSize + v9->utf8NameLength > 0x10;
  }

LABEL_14:
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream canRemoveEntryWithName:]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 382, 0, "Can't find entry named: %@", name);
  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (void)removeEntryWithName:(id)name
{
  if (!self->mOutputStream)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream removeEntryWithName:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 390, 0, "Zip output stream is closed.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry && [(NSString *)mCurrentEntry->name isEqualToString:name])
  {
    v7 = self->mCurrentEntry;
    [(SFUZipArchiveOutputStream *)self finishEntry];
  }

  else
  {
    v8 = [(NSMutableArray *)self->mEntries count];
    if (!v8)
    {
LABEL_19:
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream removeEntryWithName:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v17, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 407, 0, "Can't find entry named: %@", name);

      +[TSUAssertionHandler logBacktraceThrottled];
      return;
    }

    v9 = v8;
    v10 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->mEntries objectAtIndex:v10];
      if (![(NSString *)v7->name isEqualToString:name])
      {
        v7 = 0;
      }

      ++v10;
      if (v7)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 >= v9;
      }
    }

    while (!v11);
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  v12 = v7;
  [(NSMutableArray *)self->mEntries removeObject:v7];
  if (v7 == self->mLastEntryInFile)
  {
    offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(SFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:v7->offset];
    if (offset < v7->offset)
    {
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:offset whence:0];
    }

    self->mLastEntryInFile = 0;
    v19 = [(NSMutableArray *)self->mEntries count];
    if (!self->mLastEntryInFile && v19)
    {
      v20 = v19 - 1;
      while (1)
      {
        v21 = [(NSMutableArray *)self->mEntries objectAtIndex:v20];
        if (v21->compressedSize + v21->compressedDataOffset == v7->offset)
        {
          break;
        }

        v11 = v20-- != 0;
        v22 = v11;
        if (self->mLastEntryInFile || (v22 & 1) == 0)
        {
          return;
        }
      }

      self->mLastEntryInFile = v21;
    }
  }

  else
  {
    v13 = objc_alloc_init(SFUZipFreeSpaceEntry);
    v14 = v13;
    offset = v7->offset;
    v13->offset = offset;
    v16 = v7->compressedDataOffset - offset + v7->compressedSize;
    v13->length = v16;
    if (v16 >= 0x2F)
    {
      [(NSMutableArray *)self->mFreeList addObject:v13];

      self->mFreeBytes += v14->length;
    }

    else
    {

      [SFUZipException raise:@"SFUZipOutputError" format:@"Removing entry named %@ produced free space that is too small.", name];
    }
  }
}

- (void)setEncryptedDocumentUuid:(id)uuid
{
  if (!self->mOutputStream)
  {
    [SFUZipException raise:@"SFUZipOutputError" format:@"Tried to set encrypted document UUID after writing finished."];
  }

  uuidCopy = uuid;

  self->mEncryptedDocumentUuid = uuid;
}

- (void)close
{
  if (!self->mOutputStream)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream close]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 470, 0, "Zip output stream is closed.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  v4 = [(NSMutableArray *)self->mFreeList count];
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_calloc(1uLL, 0x40000uLL, 0x100004077774924uLL);
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->mFreeList objectAtIndex:v7];
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:*(v8 + 8) whence:0];
      v9 = objc_alloc_init(SFUZipOutputEntry);
      self->mCurrentEntry = v9;
      [(NSMutableArray *)self->mEntries addObject:v9];

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@".iWTrash/%08X", ++v7];
      self->mCurrentEntry->name = [v10 copy];
      self->mCurrentEntry->utf8NameLength = strlen([v10 UTF8String]);
      self->mCurrentEntry->isCompressed = 0;
      self->mCurrentEntry->isEncrypted = 0;
      self->mCurrentEntry->time = sub_2770A5448();
      self->mCurrentEntry->compressedDataOffset = self->mCurrentEntry->offset + [(SFUZipArchiveOutputStream *)self writeLocalFileHeaderForEntry:self->mCurrentEntry];
      self->mCurrentEntry->crc = crc32(0, 0, 0);
      self->mEntryOutputStream = self->mOutputStream;
      for (i = *(v8 + 16) - self->mCurrentEntry->compressedDataOffset + self->mCurrentEntry->offset; i; i -= v12)
      {
        if (i >= 0x40000)
        {
          v12 = 0x40000;
        }

        else
        {
          v12 = i;
        }

        [(SFUZipArchiveOutputStream *)self writeBuffer:v6 size:v12];
      }

      [(SFUZipArchiveOutputStream *)self finishEntry];
    }

    while (v7 != v5);
    if (v6)
    {
      free(v6);
    }
  }

  offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
  [(NSMutableArray *)self->mEntries sortUsingSelector:sel_compareByOffset_];
  objectEnumerator = [(NSMutableArray *)self->mEntries objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    [(SFUZipArchiveOutputStream *)self writeCentralFileHeaderUsingEntry:nextObject isFirstEntry:1];
  }

  nextObject2 = [objectEnumerator nextObject];
  if (nextObject2)
  {
    nextObject3 = nextObject2;
    do
    {
      [(SFUZipArchiveOutputStream *)self writeCentralFileHeaderUsingEntry:nextObject3 isFirstEntry:0];
      nextObject3 = [objectEnumerator nextObject];
    }

    while (nextObject3);
  }

  [(SFUZipArchiveOutputStream *)self writeEndOfCentralDirectoryWithOffset:offset];

  self->mOutputStream = 0;
}

- (void)moveToPath:(id)path
{
  if (!self->mOutputStream)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream moveToPath:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 545, 0, "Zip output stream is closed.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  path = [(SFUMoveableFileOutputStream *)self->mOutputStream path];
  if (![(SFUMoveableFileOutputStream *)self->mOutputStream moveToPath:path])
  {
    [SFUZipException raise:@"SFUZipOutputError" format:@"Could not move output stream from %@ to %@", path, path];
  }
}

- (id)entryNames
{
  v3 = [(NSMutableArray *)self->mEntries count];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      [v4 addObject:{*(-[NSMutableArray objectAtIndex:](self->mEntries, "objectAtIndex:", i) + 8)}];
    }
  }

  return v4;
}

- (id)entriesAtPath:(id)path
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableArray count](self->mEntries, "count")}];
  v6 = [[SFUZipArchiveFileDataRepresentation alloc] initWithPath:path];
  objectEnumerator = [(NSMutableArray *)self->mEntries objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v10 = [[SFUZipEntry alloc] initWithDataRepresentation:v6 compressionMethod:*(nextObject2 + 24) compressedSize:*(nextObject2 + 32) uncompressedSize:*(nextObject2 + 40) offset:*(nextObject2 + 48) crc:*(nextObject2 + 64)];
      v11 = v10;
      if (*(nextObject2 + 25) == 1)
      {
        [(SFUZipEntry *)v10 setCryptoKey:self->mCryptoKey];
      }

      [v5 setObject:v11 forKey:*(nextObject2 + 8)];

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return v5;
}

- (void)reset
{
  [(NSMutableArray *)self->mEntries removeAllObjects];
  [(NSMutableArray *)self->mFreeList removeAllObjects];
  self->mCurrentEntry = 0;
  self->mLastEntryInFile = 0;
  self->mCurrentFreeSpace = 0;
  self->mFreeBytes = 0;

  self->mEntryOutputStream = 0;
  mOutputStream = self->mOutputStream;

  [(SFUMoveableFileOutputStream *)mOutputStream truncateToLength:0];
}

- (unsigned)crc32ForEntry:(id)entry
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEntries = self->mEntries;
  v6 = [(NSMutableArray *)mEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mEntries);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([(NSString *)v10->name isEqualToString:entry])
        {
          if (v10 == self->mCurrentEntry)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            LODWORD(v6) = v10->crc;
          }

          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [(NSMutableArray *)mEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)finishEntry
{
  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry)
  {
    mEntryOutputStream = self->mEntryOutputStream;
    if (mCurrentEntry->isCompressed)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) finishEntry]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 659, 0, "Wrong output stream for compressed entry.");
        +[TSUAssertionHandler logBacktraceThrottled];
      }

      mEntryOutputStream = [(SFUOutputStream *)self->mEntryOutputStream closeLocalStream];
      mCurrentEntry = self->mCurrentEntry;
    }

    if (mCurrentEntry->isEncrypted)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) finishEntry]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 667, 0, "Wrong output stream type for encrypted entry.");
        +[TSUAssertionHandler logBacktraceThrottled];
      }

      [(SFUOutputStream *)mEntryOutputStream closeLocalStream];
      self->mCurrentEntry->crc = [(SFUOutputStream *)mEntryOutputStream crc32];
    }

    self->mEntryOutputStream = 0;
    self->mCurrentEntry->compressedSize = [(SFUMoveableFileOutputStream *)self->mOutputStream offset]- self->mCurrentEntry->compressedDataOffset;
    v7 = self->mCurrentEntry;
    if (v7->isWrittenDirectlyToFile)
    {
      v7->uncompressedSize = v7->compressedSize;
      if (!self->mCurrentEntry->crc)
      {
        if (![(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
        {
          [SFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but output stream cannot be seeked for CRC calculation."];
        }

        if (![(SFUMoveableFileOutputStream *)self->mOutputStream canCreateInputStream])
        {
          [SFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but output stream cannot be read for CRC calculation."];
        }

        v8 = [[SFUBufferedInputStream alloc] initWithStream:[(SFUMoveableFileOutputStream *)self->mOutputStream inputStream]];
        if (![(SFUBufferedInputStream *)v8 canSeek])
        {
          [(SFUBufferedInputStream *)v8 close];

          [SFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but input stream cannot be seeked for CRC calculation."];
          v8 = 0;
        }

        [(SFUBufferedInputStream *)v8 seekToOffset:self->mCurrentEntry->compressedDataOffset];
        buf = 0;
        v9 = [(SFUBufferedInputStream *)v8 readToOwnBuffer:&buf size:0xFFFFFFFFLL];
        if (v9)
        {
          LODWORD(v10) = v9;
          do
          {
            self->mCurrentEntry->crc = crc32(self->mCurrentEntry->crc, buf, v10);
            buf = 0;
            v10 = [(SFUBufferedInputStream *)v8 readToOwnBuffer:&buf size:0xFFFFFFFFLL];
          }

          while (v10);
        }

        [(SFUBufferedInputStream *)v8 close];
      }
    }

    if (![(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
    {
      mBuffer = self->mBuffer;
      *mBuffer = *"PK\a\b";
      *(mBuffer + 1) = self->mCurrentEntry->crc;
      v18 = self->mCurrentEntry;
      is64Bit = v18->is64Bit;
      compressedSize = v18->compressedSize;
      if (is64Bit)
      {
        *(mBuffer + 1) = compressedSize;
        *(mBuffer + 2) = self->mCurrentEntry->uncompressedSize;
        v21 = 24;
      }

      else
      {
        *(mBuffer + 2) = compressedSize;
        *(mBuffer + 3) = self->mCurrentEntry->uncompressedSize;
        v21 = 16;
      }

      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:&mBuffer[v21] - self->mBuffer];
      goto LABEL_50;
    }

    if (self->mCurrentFreeSpace)
    {
      offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
      v12 = self->mCurrentEntry;
      v13 = offset - v12->offset;
      mCurrentFreeSpace = self->mCurrentFreeSpace;
      length = mCurrentFreeSpace->length;
      if (v13 > length)
      {
        [SFUZipException raise:@"SFUZipOutputError" format:@"Wrote more bytes than we had allocated for file %@", v12->name];
        mCurrentFreeSpace = self->mCurrentFreeSpace;
        length = mCurrentFreeSpace->length;
      }

      v16 = length - v13;
      if ((length - v13) < 1)
      {
        [(NSMutableArray *)self->mFreeList removeObject:?];
      }

      else
      {
        if (v16 < 0x2F)
        {
          [SFUZipException raise:@"SFUZipOutputError" format:@"Wrote more bytes than we had allocated for file %@", self->mCurrentEntry->name];
          mCurrentFreeSpace = self->mCurrentFreeSpace;
        }

        mCurrentFreeSpace->offset += v13;
        self->mCurrentFreeSpace->length = v16;
      }

      v22 = self->mCurrentFreeSpace;
      self->mFreeBytes -= v13;

      self->mCurrentFreeSpace = 0;
    }

    v23 = self->mBuffer;
    v24 = self->mCurrentEntry;
    v26 = v24->compressedSize;
    uncompressedSize = v24->uncompressedSize;
    *v23 = v24->crc;
    v27 = HIDWORD(v26);
    if (HIDWORD(v26))
    {
      v28 = -1;
    }

    else
    {
      v28 = self->mCurrentEntry->compressedSize;
    }

    *(v23 + 1) = v28;
    v29 = HIDWORD(uncompressedSize);
    if (HIDWORD(uncompressedSize))
    {
      *(v23 + 2) = -1;
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:self->mCurrentEntry->offset + 14 whence:0];
      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:12];
    }

    else
    {
      *(v23 + 2) = self->mCurrentEntry->uncompressedSize;
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:self->mCurrentEntry->offset + 14 whence:0];
      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:12];
      if (!v27)
      {
LABEL_49:
        [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:0 whence:2];
LABEL_50:
        self->mCurrentEntry = 0;
        [(SFUZipArchiveOutputStream *)self coalesceAndTruncateFreeSpace];
        return;
      }
    }

    v30 = self->mCurrentEntry;
    if (!v30->is64Bit)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) finishEntry]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v31, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"], 776, 0, "Wrote a zip entry that needs 64 bit sizes, but didn't create 64 bit field.");
      +[TSUAssertionHandler logBacktraceThrottled];
      v30 = self->mCurrentEntry;
    }

    v32 = self->mBuffer;
    if (v29)
    {
      *v32 = v30->uncompressedSize;
      v32 += 8;
      v30 = self->mCurrentEntry;
    }

    if (v27)
    {
      *v32 = v30->compressedSize;
      v32 += 8;
      v30 = self->mCurrentEntry;
    }

    [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v30->offset + v30->utf8NameLength + 34 whence:0];
    [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:v32 - self->mBuffer];
    goto LABEL_49;
  }
}

- (void)coalesceAndTruncateFreeSpace
{
  if (!self->mCurrentEntry || (v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) coalesceAndTruncateFreeSpace]"], +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchiveOutputStream.m"), 820, 0, "-coalesceAndTruncateFreeSpace should not be called while an entry is being written to"), +[TSUAssertionHandler logBacktraceThrottled](TSUAssertionHandler, "logBacktraceThrottled"), !self->mCurrentEntry))
  {
    if ([(SFUMoveableFileOutputStream *)self->mOutputStream canSeek]&& [(NSMutableArray *)self->mFreeList count])
    {
      [(NSMutableArray *)self->mFreeList sortUsingSelector:sel_compareByOffset_];
      v4 = [(NSMutableArray *)self->mFreeList count];
      if (v4 >= 2)
      {
        v5 = v4;
        v6 = 0;
        for (i = 1; i != v5; ++i)
        {
          v8 = [(NSMutableArray *)self->mFreeList objectAtIndex:i];
          if (v6 && (v9 = [(NSMutableArray *)v6 lastObject]) != 0 && (v10 = *(v9 + 16), *(v8 + 8) - v10 == *(v9 + 8)))
          {
            *(v9 + 16) = *(v8 + 16) + v10;
          }

          else
          {
            v11 = [(NSMutableArray *)self->mFreeList objectAtIndex:i - 1];
            v12 = *(v11 + 16);
            if (*(v8 + 8) - v12 == *(v11 + 8))
            {
              v13 = v11;
              if (!v6)
              {
                v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v12 = *(v13 + 16);
              }

              *(v13 + 16) = v12 + *(v8 + 16);
              [(NSMutableArray *)v6 addObject:v13];
            }
          }
        }

        if (v6)
        {

          self->mFreeList = v6;
        }
      }

      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:0 whence:2];
      offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
      lastObject = [(NSMutableArray *)self->mFreeList lastObject];
      if (offset - *(lastObject + 16) == *(lastObject + 8))
      {
        v16 = lastObject;
        [(SFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:?];
        self->mFreeBytes -= *(v16 + 16);
        [(NSMutableArray *)self->mFreeList removeLastObject];
        if (!self->mLastEntryInFile)
        {
          v17 = [(NSMutableArray *)self->mEntries count];
          if (!self->mLastEntryInFile)
          {
            if (v17)
            {
              v18 = v17 - 1;
              while (1)
              {
                v19 = [(NSMutableArray *)self->mEntries objectAtIndex:v18];
                if (v19->compressedSize + v19->compressedDataOffset == *(v16 + 8))
                {
                  break;
                }

                v21 = v18-- != 0;
                if (self->mLastEntryInFile || !v21)
                {
                  return;
                }
              }

              self->mLastEntryInFile = v19;
            }
          }
        }
      }
    }
  }
}

- (unint64_t)writeLocalFileHeaderForEntry:(id)entry
{
  mBuffer = self->mBuffer;
  *mBuffer = 67324752;
  *(mBuffer + 2) = 20;
  if ([(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    v6 = 0;
  }

  else
  {
    v6 = 8;
  }

  *(mBuffer + 3) = v6;
  if (*(entry + 24))
  {
    v7 = 25452;
  }

  else
  {
    v7 = 25451;
  }

  if (*(entry + 24))
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  if (*(entry + 25))
  {
    v8 = v7;
  }

  *(mBuffer + 4) = v8;
  *(mBuffer + 10) = *(entry + 7);
  *(mBuffer + 14) = 0;
  *(mBuffer + 22) = 0;
  v9 = *(entry + 2);
  if (v9 >= 0x10000)
  {
    [SFUZipException raise:@"SFUZipOutputError" format:@"File name %@ is too long", *(entry + 1)];
    v9 = *(entry + 2);
  }

  if (v9 >= 0xFFFF)
  {
    LOWORD(v9) = -1;
  }

  *(mBuffer + 13) = v9;
  if (*(entry + 69))
  {
    v10 = 20;
  }

  else
  {
    v10 = 0;
  }

  *(mBuffer + 14) = v10;
  *(entry + 6) = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:30];
  -[SFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [*(entry + 1) UTF8String], *(entry + 2));
  if (*(entry + 69) == 1)
  {
    v11 = self->mBuffer;
    *v11 = 1048577;
    *(v11 + 12) = 0;
    *(v11 + 4) = 0;
    [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:20];
  }

  return v10 + 30 + *(entry + 2);
}

- (void)writeCentralFileHeaderUsingEntry:(id)entry isFirstEntry:(BOOL)firstEntry
{
  firstEntryCopy = firstEntry;
  mBuffer = self->mBuffer;
  v7 = *(entry + 4);
  v8 = *(entry + 5);
  v9 = *(entry + 2);
  v10 = *(entry + 6);
  *mBuffer = 33639248;
  *(mBuffer + 1) = 1310782;
  if ([(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    v11 = 0;
  }

  else
  {
    v11 = 8;
  }

  *(mBuffer + 4) = v11;
  if (*(entry + 24))
  {
    v12 = 25452;
  }

  else
  {
    v12 = 25451;
  }

  if (*(entry + 24))
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  if (*(entry + 25))
  {
    v13 = v12;
  }

  *(mBuffer + 5) = v13;
  *(mBuffer + 3) = *(entry + 7);
  *(mBuffer + 4) = *(entry + 16);
  v14 = HIDWORD(v7);
  if (HIDWORD(v7))
  {
    v15 = -1;
  }

  else
  {
    v15 = *(entry + 8);
  }

  *(mBuffer + 5) = v15;
  v16 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
    v17 = -1;
  }

  else
  {
    v17 = *(entry + 10);
  }

  *(mBuffer + 6) = v17;
  if (v9 >> 16)
  {
    v18 = -1;
  }

  else
  {
    v18 = *(entry + 8);
  }

  *(mBuffer + 14) = v18;
  v19 = (v8 | v7 | v10) >> 32;
  v20 = v19 != 0;
  v21 = HIDWORD(v10);
  v22 = 8 * (v16 != 0);
  if (v14)
  {
    v22 += 8;
  }

  if (v21)
  {
    v22 += 8;
  }

  if (v19)
  {
    v23 = v22 | 4;
  }

  else
  {
    v23 = 0;
  }

  if (v19)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v38 = v24;
  if (self->mCryptoKey && firstEntryCopy)
  {
    v25 = [SFUCryptoUtils generatePassphraseVerifierForKey:"generatePassphraseVerifierForKey:verifierVersion:" verifierVersion:?];
    v23 += [v25 length] + 8;
    mPassphraseHint = self->mPassphraseHint;
    v39 = mPassphraseHint;
    if (mPassphraseHint)
    {
      v23 += [(NSData *)mPassphraseHint length]+ 8;
    }

    mEncryptedDocumentUuid = self->mEncryptedDocumentUuid;
    if (mEncryptedDocumentUuid)
    {
      v28 = self->mEncryptedDocumentUuid;
      LOWORD(v23) = v23 + [(NSData *)mEncryptedDocumentUuid length]+ 8;
      goto LABEL_39;
    }
  }

  else
  {
    v25 = 0;
    v39 = 0;
  }

  v28 = 0;
LABEL_39:
  *(mBuffer + 15) = v23;
  *(mBuffer + 8) = 0;
  *(mBuffer + 18) = 0;
  *(mBuffer + 38) = 0;
  if (v21)
  {
    v29 = -1;
  }

  else
  {
    v29 = *(entry + 12);
  }

  *(mBuffer + 42) = v29;
  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:46];
  -[SFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [*(entry + 1) UTF8String], *(entry + 2));
  if (!v20)
  {
    goto LABEL_51;
  }

  v30 = self->mBuffer;
  *v30 = 1;
  *(v30 + 1) = v38;
  if (v16)
  {
    *(v30 + 4) = *(entry + 5);
    v31 = v30 + 12;
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v31 = v30 + 4;
  if (v14)
  {
LABEL_47:
    *v31 = *(entry + 4);
    v31 += 8;
  }

LABEL_48:
  if (v21)
  {
    *v31 = *(entry + 6);
    v31 += 8;
  }

  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:v31 - self->mBuffer];
LABEL_51:
  if (self->mCryptoKey && firstEntryCopy)
  {
    v32 = self->mBuffer;
    *v32 = 25453;
    *(v32 + 1) = [v25 length] + 4;
    *(v32 + 1) = *"iwpviwphiwuu";
    [SFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
    -[SFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [v25 bytes], objc_msgSend(v25, "length"));
    if (v39)
    {
      v33 = self->mBuffer;
      *v33 = 25454;
      *(v33 + 1) = [(NSData *)v39 length]+ 4;
      *(v33 + 1) = *"iwphiwuu";
      [SFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:[(NSData *)v39 bytes] size:[(NSData *)v39 length]];
    }

    if (v28)
    {
      v34 = self->mBuffer;
      *v34 = 25455;
      *(v34 + 1) = [(NSData *)v28 length]+ 4;
      *(v34 + 1) = *"iwuu";
      [SFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
      mOutputStream = self->mOutputStream;
      bytes = [(NSData *)v28 bytes];
      v37 = [(NSData *)v28 length];

      [(SFUMoveableFileOutputStream *)mOutputStream writeBuffer:bytes size:v37];
    }
  }
}

- (void)writeEndOfCentralDirectoryWithOffset:(int64_t)offset
{
  v5 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset]- offset;
  v6 = [(NSMutableArray *)self->mEntries count];
  v7 = v6;
  if (offset > 0xFFFFFFFFLL || (!(v6 >> 16) ? (v8 = HIDWORD(v5) == 0) : (v8 = 0), !v8))
  {
    offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(SFUZipArchiveOutputStream *)self writeZip64EndOfCentralDirectoryWithOffset:offset];
    [(SFUZipArchiveOutputStream *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:offset];
  }

  mBuffer = self->mBuffer;
  *mBuffer = 101010256;
  *(mBuffer + 1) = 0;
  v11 = -1;
  if (v7 < 0xFFFF)
  {
    v11 = v7;
  }

  *(mBuffer + 4) = v11;
  *(mBuffer + 5) = v11;
  offsetCopy = -1;
  if (offset > 0xFFFFFFFFLL)
  {
    v13 = -1;
  }

  else
  {
    v13 = v5;
  }

  if (offset < 0xFFFFFFFFLL)
  {
    offsetCopy = offset;
  }

  *(mBuffer + 3) = v13;
  *(mBuffer + 4) = offsetCopy;
  *(mBuffer + 10) = 0;
  mOutputStream = self->mOutputStream;
  v15 = self->mBuffer;

  [(SFUMoveableFileOutputStream *)mOutputStream writeBuffer:v15 size:22];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset
{
  mBuffer = self->mBuffer;
  *mBuffer = 101075792;
  *(mBuffer + 4) = 44;
  *(mBuffer + 2) = 0;
  *(mBuffer + 3) = 1310782;
  v6 = [(NSMutableArray *)self->mEntries count];
  *(mBuffer + 3) = v6;
  *(mBuffer + 4) = v6;
  *(mBuffer + 5) = [(SFUMoveableFileOutputStream *)self->mOutputStream offset]- offset;
  *(mBuffer + 6) = offset;
  mOutputStream = self->mOutputStream;
  v8 = self->mBuffer;

  [(SFUMoveableFileOutputStream *)mOutputStream writeBuffer:v8 size:56];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset
{
  mBuffer = self->mBuffer;
  *mBuffer = 117853008;
  *(mBuffer + 1) = 0;
  *(mBuffer + 1) = offset;
  *(mBuffer + 4) = 1;
  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:20];
}

@end