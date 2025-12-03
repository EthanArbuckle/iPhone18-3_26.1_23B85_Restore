@interface SFUZipArchiveOutputStream
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
  uTF8String = [name UTF8String];
  if (uTF8String)
  {
    uTF8String = strlen(uTF8String);
  }

  return (uTF8String + 30);
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
    v9 = malloc_type_malloc(0x38uLL, 0x100004077774924uLL);
    v8->mBuffer = v9;
    if (!v9)
    {
      [SFUZipException raise:@"SFUZipOutputError" format:@"Initialization error. Could not allocate record buffer of size: %zu", 56];
    }
  }

  return v8;
}

- (SFUZipArchiveOutputStream)initWithPath:(id)path cryptoKey:(id)key passphraseHint:(id)hint
{
  v8 = [[SFUMoveableFileOutputStream alloc] initWithPath:path];

  return [(SFUZipArchiveOutputStream *)self initWithOutputStream:v8 cryptoKey:key passphraseHint:hint];
}

- (void)dealloc
{
  free(self->mBuffer);
  v3.receiver = self;
  v3.super_class = SFUZipArchiveOutputStream;
  [(SFUZipArchiveOutputStream *)&v3 dealloc];
}

- (void)beginEntryWithName:(id)name isCompressed:(BOOL)compressed uncompressedSize:(unint64_t)size
{
  compressedCopy = compressed;
  if (!self->mOutputStream)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream beginEntryWithName:isCompressed:uncompressedSize:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 177, @"Zip output stream is closed."}];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  if (self->mCryptoKey)
  {
    size = [SFUCryptoOutputStream encodedLengthForDataLength:size key:?];
  }

  v11 = objc_alloc_init(SFUZipOutputEntry);
  self->mCurrentEntry = v11;
  [(NSMutableArray *)self->mEntries addObject:v11];

  uTF8String = [name UTF8String];
  self->mCurrentEntry->name = [name copy];
  if (uTF8String)
  {
    v13 = strlen(uTF8String);
  }

  else
  {
    v13 = 0;
  }

  self->mCurrentEntry->utf8NameLength = v13;
  self->mCurrentEntry->isCompressed = compressedCopy;
  self->mCurrentEntry->isEncrypted = self->mCryptoKey != 0;
  self->mCurrentEntry->time = SFUZipCurrentDosTime();
  self->mCurrentEntry->is64Bit = size > 0xFFC2F6FF;
  if (!compressedCopy && [(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    mCurrentEntry = self->mCurrentEntry;
    v15 = mCurrentEntry->utf8NameLength + 30;
    v16 = mCurrentEntry->is64Bit ? 20 : 0;
    v17 = v15 + v16;
    if (!__CFADD__(size, v15 + v16))
    {
      v18 = [(NSMutableArray *)self->mFreeList count];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = 0;
        v22 = v17 + size;
        do
        {
          v23 = [(NSMutableArray *)self->mFreeList objectAtIndex:v20];
          v24 = *(v23 + 16);
          if (v24 == v22)
          {
            v21 = v23;
            goto LABEL_25;
          }

          if (v24 >= v22 + 47 && (!v21 || v24 < v21[2]))
          {
            v21 = v23;
          }

          ++v20;
        }

        while (v19 != v20);
        if (!v21)
        {
          goto LABEL_26;
        }

LABEL_25:
        [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v21[1] whence:0];
        self->mCurrentFreeSpace = v21;
      }
    }
  }

LABEL_26:
  v25 = self->mCurrentEntry;
  if (!self->mCurrentFreeSpace)
  {
    self->mLastEntryInFile = v25;
  }

  self->mCurrentEntry->compressedDataOffset = self->mCurrentEntry->offset + [(SFUZipArchiveOutputStream *)self writeLocalFileHeaderForEntry:v25];
  self->mCurrentEntry->crc = crc32(0, 0, 0);
  if (self->mCurrentEntry->isEncrypted)
  {
    v26 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:self->mOutputStream key:self->mCryptoKey computeCrc32:1];
    if (!compressedCopy)
    {
LABEL_30:
      self->mEntryOutputStream = v26;
      return;
    }
  }

  else
  {
    v26 = self->mOutputStream;
    if (!compressedCopy)
    {
      goto LABEL_30;
    }
  }

  v27 = v26;
  self->mEntryOutputStream = [[SFUZipDeflateOutputStream alloc] initWithOutputStream:v26];
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
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream writeBuffer:size:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 326, @"Zip output stream is closed."}];
    }

    [(SFUOutputStream *)self->mEntryOutputStream writeBuffer:buffer size:size];
    self->mCurrentEntry->uncompressedSize += size;
    mCurrentEntry = self->mCurrentEntry;
    if (!mCurrentEntry->isEncrypted)
    {
      if (size >= 0xFFFFFFFF)
      {
        v11 = +[TSUAssertionHandler currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream writeBuffer:size:]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 337, @"overflow in writeBuffer:"}];
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
  v12 = +[TSUAssertionHandler currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream canRemoveEntryWithName:]"];
  [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 357, @"Can't find entry named: %@", name}];
  return 0;
}

- (void)removeEntryWithName:(id)name
{
  if (!self->mOutputStream)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream removeEntryWithName:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 366, @"Zip output stream is closed."}];
  }

  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry && [(NSString *)mCurrentEntry->name isEqualToString:name])
  {
    v8 = self->mCurrentEntry;
    [(SFUZipArchiveOutputStream *)self finishEntry];
  }

  else
  {
    v9 = [(NSMutableArray *)self->mEntries count];
    if (!v9)
    {
LABEL_19:
      v18 = +[TSUAssertionHandler currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream removeEntryWithName:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 388, @"Can't find entry named: %@", name}];
      return;
    }

    v10 = v9;
    v11 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->mEntries objectAtIndex:v11];
      if (![(NSString *)v8->name isEqualToString:name])
      {
        v8 = 0;
      }

      ++v11;
      if (v8)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >= v10;
      }
    }

    while (!v12);
  }

  if (!v8)
  {
    goto LABEL_19;
  }

  v13 = v8;
  [(NSMutableArray *)self->mEntries removeObject:v8];
  if (v8 == self->mLastEntryInFile)
  {
    offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(SFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:v8->offset];
    if (offset < v8->offset)
    {
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:offset whence:0];
    }

    self->mLastEntryInFile = 0;
    v21 = [(NSMutableArray *)self->mEntries count];
    if (!self->mLastEntryInFile && v21)
    {
      v22 = v21 - 1;
      while (1)
      {
        v23 = [(NSMutableArray *)self->mEntries objectAtIndex:v22];
        if (v23->compressedSize + v23->compressedDataOffset == v8->offset)
        {
          break;
        }

        v12 = v22-- != 0;
        v24 = v12;
        if (self->mLastEntryInFile || (v24 & 1) == 0)
        {
          return;
        }
      }

      self->mLastEntryInFile = v23;
    }
  }

  else
  {
    v14 = objc_alloc_init(SFUZipFreeSpaceEntry);
    v15 = v14;
    offset = v8->offset;
    v14->offset = offset;
    v17 = v8->compressedDataOffset - offset + v8->compressedSize;
    v14->length = v17;
    if (v17 >= 0x2F)
    {
      [(NSMutableArray *)self->mFreeList addObject:v14];

      self->mFreeBytes += v15->length;
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
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream close]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 462, @"Zip output stream is closed."}];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  v5 = [(NSMutableArray *)self->mFreeList count];
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_calloc(1uLL, 0x40000uLL, 0x100004077774924uLL);
    v8 = 0;
    do
    {
      v9 = [(NSMutableArray *)self->mFreeList objectAtIndex:v8];
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:*(v9 + 8) whence:0];
      v10 = objc_alloc_init(SFUZipOutputEntry);
      self->mCurrentEntry = v10;
      [(NSMutableArray *)self->mEntries addObject:v10];

      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@".iWTrash/%08X", ++v8];
      uTF8String = [v11 UTF8String];
      self->mCurrentEntry->name = [v11 copy];
      if (uTF8String)
      {
        v13 = strlen(uTF8String);
      }

      else
      {
        v13 = 0;
      }

      self->mCurrentEntry->utf8NameLength = v13;
      self->mCurrentEntry->isCompressed = 0;
      self->mCurrentEntry->isEncrypted = 0;
      self->mCurrentEntry->time = SFUZipCurrentDosTime();
      self->mCurrentEntry->compressedDataOffset = self->mCurrentEntry->offset + [(SFUZipArchiveOutputStream *)self writeLocalFileHeaderForEntry:self->mCurrentEntry];
      self->mCurrentEntry->crc = crc32(0, 0, 0);
      self->mEntryOutputStream = self->mOutputStream;
      for (i = *(v9 + 16) - self->mCurrentEntry->compressedDataOffset + self->mCurrentEntry->offset; i; i -= v15)
      {
        if (i >= 0x40000)
        {
          v15 = 0x40000;
        }

        else
        {
          v15 = i;
        }

        [(SFUZipArchiveOutputStream *)self writeBuffer:v7 size:v15];
      }

      [(SFUZipArchiveOutputStream *)self finishEntry];
    }

    while (v8 != v6);
    if (v7)
    {
      free(v7);
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
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream moveToPath:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 545, @"Zip output stream is closed."}];
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
        v5 = +[TSUAssertionHandler currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) finishEntry]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 676, @"Wrong output stream for compressed entry."}];
      }

      mEntryOutputStream = [(SFUOutputStream *)self->mEntryOutputStream closeLocalStream];
      mCurrentEntry = self->mCurrentEntry;
    }

    if (mCurrentEntry->isEncrypted)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = +[TSUAssertionHandler currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) finishEntry]"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 687, @"Wrong output stream type for encrypted entry."}];
      }

      [(SFUOutputStream *)mEntryOutputStream closeLocalStream];
      self->mCurrentEntry->crc = [(SFUOutputStream *)mEntryOutputStream crc32];
    }

    self->mEntryOutputStream = 0;
    self->mCurrentEntry->compressedSize = [(SFUMoveableFileOutputStream *)self->mOutputStream offset]- self->mCurrentEntry->compressedDataOffset;
    v9 = self->mCurrentEntry;
    if (v9->isWrittenDirectlyToFile)
    {
      v9->uncompressedSize = v9->compressedSize;
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

        v10 = [[SFUBufferedInputStream alloc] initWithStream:[(SFUMoveableFileOutputStream *)self->mOutputStream inputStream]];
        if (![(SFUBufferedInputStream *)v10 canSeek])
        {
          [(SFUBufferedInputStream *)v10 close];

          [SFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but input stream cannot be seeked for CRC calculation."];
          v10 = 0;
        }

        [(SFUBufferedInputStream *)v10 seekToOffset:self->mCurrentEntry->compressedDataOffset];
        buf = 0;
        v11 = [(SFUBufferedInputStream *)v10 readToOwnBuffer:&buf size:0xFFFFFFFFLL];
        if (v11)
        {
          LODWORD(v12) = v11;
          do
          {
            self->mCurrentEntry->crc = crc32(self->mCurrentEntry->crc, buf, v12);
            buf = 0;
            v12 = [(SFUBufferedInputStream *)v10 readToOwnBuffer:&buf size:0xFFFFFFFFLL];
          }

          while (v12);
        }

        [(SFUBufferedInputStream *)v10 close];
      }
    }

    if (![(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
    {
      mBuffer = self->mBuffer;
      *mBuffer = *"PK\a\b";
      *(mBuffer + 1) = self->mCurrentEntry->crc;
      v20 = self->mCurrentEntry;
      is64Bit = v20->is64Bit;
      compressedSize = v20->compressedSize;
      if (is64Bit)
      {
        *(mBuffer + 1) = compressedSize;
        *(mBuffer + 2) = self->mCurrentEntry->uncompressedSize;
        v23 = 24;
      }

      else
      {
        *(mBuffer + 2) = compressedSize;
        *(mBuffer + 3) = self->mCurrentEntry->uncompressedSize;
        v23 = 16;
      }

      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:&mBuffer[v23] - self->mBuffer];
      goto LABEL_50;
    }

    if (self->mCurrentFreeSpace)
    {
      offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
      v14 = self->mCurrentEntry;
      v15 = offset - v14->offset;
      mCurrentFreeSpace = self->mCurrentFreeSpace;
      length = mCurrentFreeSpace->length;
      if (v15 > length)
      {
        [SFUZipException raise:@"SFUZipOutputError" format:@"Wrote more bytes than we had allocated for file %@", v14->name];
        mCurrentFreeSpace = self->mCurrentFreeSpace;
        length = mCurrentFreeSpace->length;
      }

      v18 = length - v15;
      if ((length - v15) < 1)
      {
        [(NSMutableArray *)self->mFreeList removeObject:?];
      }

      else
      {
        if (v18 < 0x2F)
        {
          [SFUZipException raise:@"SFUZipOutputError" format:@"Wrote more bytes than we had allocated for file %@", self->mCurrentEntry->name];
          mCurrentFreeSpace = self->mCurrentFreeSpace;
        }

        mCurrentFreeSpace->offset += v15;
        self->mCurrentFreeSpace->length = v18;
      }

      v24 = self->mCurrentFreeSpace;
      self->mFreeBytes -= v15;

      self->mCurrentFreeSpace = 0;
    }

    v25 = self->mBuffer;
    v26 = self->mCurrentEntry;
    v28 = v26->compressedSize;
    uncompressedSize = v26->uncompressedSize;
    *v25 = v26->crc;
    v29 = HIDWORD(v28);
    if (HIDWORD(v28))
    {
      v30 = -1;
    }

    else
    {
      v30 = self->mCurrentEntry->compressedSize;
    }

    *(v25 + 1) = v30;
    v31 = HIDWORD(uncompressedSize);
    if (HIDWORD(uncompressedSize))
    {
      *(v25 + 2) = -1;
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:self->mCurrentEntry->offset + 14 whence:0];
      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:12];
    }

    else
    {
      *(v25 + 2) = self->mCurrentEntry->uncompressedSize;
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:self->mCurrentEntry->offset + 14 whence:0];
      [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:12];
      if (!v29)
      {
LABEL_49:
        [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:0 whence:2];
LABEL_50:
        self->mCurrentEntry = 0;
        [(SFUZipArchiveOutputStream *)self coalesceAndTruncateFreeSpace];
        return;
      }
    }

    v32 = self->mCurrentEntry;
    if (!v32->is64Bit)
    {
      v33 = +[TSUAssertionHandler currentHandler];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) finishEntry]"];
      [v33 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 810, @"Wrote a zip entry that needs 64 bit sizes, but didn't create 64 bit field."}];
      v32 = self->mCurrentEntry;
    }

    v35 = self->mBuffer;
    if (v31)
    {
      *v35 = v32->uncompressedSize;
      v35 += 8;
      v32 = self->mCurrentEntry;
    }

    if (v29)
    {
      *v35 = v32->compressedSize;
      v35 += 8;
      v32 = self->mCurrentEntry;
    }

    [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v32->offset + v32->utf8NameLength + 34 whence:0];
    [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:v35 - self->mBuffer];
    goto LABEL_49;
  }
}

- (void)coalesceAndTruncateFreeSpace
{
  if (!self->mCurrentEntry || (v3 = +[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream(Private) coalesceAndTruncateFreeSpace]"], objc_msgSend(v3, "handleFailureInFunction:file:lineNumber:description:", v4, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 863, @"-coalesceAndTruncateFreeSpace should not be called while an entry is being written to"), !self->mCurrentEntry))
  {
    if ([(SFUMoveableFileOutputStream *)self->mOutputStream canSeek]&& [(NSMutableArray *)self->mFreeList count])
    {
      [(NSMutableArray *)self->mFreeList sortUsingSelector:sel_compareByOffset_];
      v5 = [(NSMutableArray *)self->mFreeList count];
      if (v5 >= 2)
      {
        v6 = v5;
        v7 = 0;
        for (i = 1; i != v6; ++i)
        {
          v9 = [(NSMutableArray *)self->mFreeList objectAtIndex:i];
          if (v7 && (v10 = [(NSMutableArray *)v7 lastObject]) != 0 && (v11 = *(v10 + 16), *(v9 + 8) - v11 == *(v10 + 8)))
          {
            *(v10 + 16) = *(v9 + 16) + v11;
          }

          else
          {
            v12 = [(NSMutableArray *)self->mFreeList objectAtIndex:i - 1];
            v13 = *(v12 + 16);
            if (*(v9 + 8) - v13 == *(v12 + 8))
            {
              v14 = v12;
              if (!v7)
              {
                v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v13 = *(v14 + 16);
              }

              *(v14 + 16) = v13 + *(v9 + 16);
              [(NSMutableArray *)v7 addObject:v14];
            }
          }
        }

        if (v7)
        {

          self->mFreeList = v7;
        }
      }

      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:0 whence:2];
      offset = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
      lastObject = [(NSMutableArray *)self->mFreeList lastObject];
      if (offset - *(lastObject + 16) == *(lastObject + 8))
      {
        v17 = lastObject;
        [(SFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:?];
        self->mFreeBytes -= *(v17 + 16);
        [(NSMutableArray *)self->mFreeList removeLastObject];
        if (!self->mLastEntryInFile)
        {
          v18 = [(NSMutableArray *)self->mEntries count];
          if (!self->mLastEntryInFile)
          {
            if (v18)
            {
              v19 = v18 - 1;
              while (1)
              {
                v20 = [(NSMutableArray *)self->mEntries objectAtIndex:v19];
                if (v20->compressedSize + v20->compressedDataOffset == *(v17 + 8))
                {
                  break;
                }

                v22 = v19-- != 0;
                if (self->mLastEntryInFile || !v22)
                {
                  return;
                }
              }

              self->mLastEntryInFile = v20;
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
    *(v32 + 1) = 1987082089;
    [SFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
    -[SFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [v25 bytes], objc_msgSend(v25, "length"));
    if (v39)
    {
      v33 = self->mBuffer;
      *v33 = 25454;
      *(v33 + 1) = [(NSData *)v39 length]+ 4;
      *(v33 + 1) = 1752201065;
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