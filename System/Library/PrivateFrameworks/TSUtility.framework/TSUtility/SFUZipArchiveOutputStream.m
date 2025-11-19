@interface SFUZipArchiveOutputStream
+ (unint64_t)approximateBytesForEntryHeaderWithName:(id)a3;
- (BOOL)canRemoveEntryWithName:(id)a3;
- (SFUZipArchiveOutputStream)initWithOutputStream:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5;
- (SFUZipArchiveOutputStream)initWithPath:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5;
- (id)beginUncompressedUnknownSizeEntryWithName:(id)a3;
- (id)entriesAtPath:(id)a3;
- (id)entryNames;
- (unint64_t)writeLocalFileHeaderForEntry:(id)a3;
- (unsigned)crc32ForEntry:(id)a3;
- (void)beginEntryWithName:(id)a3 isCompressed:(BOOL)a4 uncompressedSize:(unint64_t)a5;
- (void)close;
- (void)coalesceAndTruncateFreeSpace;
- (void)dealloc;
- (void)finishEntry;
- (void)moveToPath:(id)a3;
- (void)removeEntryWithName:(id)a3;
- (void)reset;
- (void)setCrc32ForCurrentEntry:(unsigned int)a3;
- (void)setEncryptedDocumentUuid:(id)a3;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)writeCentralFileHeaderUsingEntry:(id)a3 isFirstEntry:(BOOL)a4;
- (void)writeEndOfCentralDirectoryWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3;
@end

@implementation SFUZipArchiveOutputStream

+ (unint64_t)approximateBytesForEntryHeaderWithName:(id)a3
{
  v3 = [a3 UTF8String];
  if (v3)
  {
    v3 = strlen(v3);
  }

  return (v3 + 30);
}

- (SFUZipArchiveOutputStream)initWithOutputStream:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5
{
  v8 = [(SFUZipArchiveOutputStream *)self init];
  if (v8)
  {
    v8->mOutputStream = a3;
    v8->mCryptoKey = a4;
    v8->mPassphraseHint = [SFUCryptoUtils encodePassphraseHint:a5];
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

- (SFUZipArchiveOutputStream)initWithPath:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5
{
  v8 = [[SFUMoveableFileOutputStream alloc] initWithPath:a3];

  return [(SFUZipArchiveOutputStream *)self initWithOutputStream:v8 cryptoKey:a4 passphraseHint:a5];
}

- (void)dealloc
{
  free(self->mBuffer);
  v3.receiver = self;
  v3.super_class = SFUZipArchiveOutputStream;
  [(SFUZipArchiveOutputStream *)&v3 dealloc];
}

- (void)beginEntryWithName:(id)a3 isCompressed:(BOOL)a4 uncompressedSize:(unint64_t)a5
{
  v6 = a4;
  if (!self->mOutputStream)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream beginEntryWithName:isCompressed:uncompressedSize:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 177, @"Zip output stream is closed."}];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  if (self->mCryptoKey)
  {
    a5 = [SFUCryptoOutputStream encodedLengthForDataLength:a5 key:?];
  }

  v11 = objc_alloc_init(SFUZipOutputEntry);
  self->mCurrentEntry = v11;
  [(NSMutableArray *)self->mEntries addObject:v11];

  v12 = [a3 UTF8String];
  self->mCurrentEntry->name = [a3 copy];
  if (v12)
  {
    v13 = strlen(v12);
  }

  else
  {
    v13 = 0;
  }

  self->mCurrentEntry->utf8NameLength = v13;
  self->mCurrentEntry->isCompressed = v6;
  self->mCurrentEntry->isEncrypted = self->mCryptoKey != 0;
  self->mCurrentEntry->time = SFUZipCurrentDosTime();
  self->mCurrentEntry->is64Bit = a5 > 0xFFC2F6FF;
  if (!v6 && [(SFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    mCurrentEntry = self->mCurrentEntry;
    v15 = mCurrentEntry->utf8NameLength + 30;
    v16 = mCurrentEntry->is64Bit ? 20 : 0;
    v17 = v15 + v16;
    if (!__CFADD__(a5, v15 + v16))
    {
      v18 = [(NSMutableArray *)self->mFreeList count];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = 0;
        v22 = v17 + a5;
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
    if (!v6)
    {
LABEL_30:
      self->mEntryOutputStream = v26;
      return;
    }
  }

  else
  {
    v26 = self->mOutputStream;
    if (!v6)
    {
      goto LABEL_30;
    }
  }

  v27 = v26;
  self->mEntryOutputStream = [[SFUZipDeflateOutputStream alloc] initWithOutputStream:v26];
}

- (id)beginUncompressedUnknownSizeEntryWithName:(id)a3
{
  [(SFUZipArchiveOutputStream *)self beginUnknownSizeEntryWithName:a3 isCompressed:0];
  self->mCurrentEntry->isWrittenDirectlyToFile = 1;
  v4 = [[SFUOffsetOutputStream alloc] initWithOutputStream:self->mEntryOutputStream];
  if (self->mCurrentEntry->isEncrypted)
  {
    v5 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v4 key:self->mCryptoKey computeCrc32:1];

    v4 = v5;
  }

  return v4;
}

- (void)setCrc32ForCurrentEntry:(unsigned int)a3
{
  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry)
  {
    if (mCurrentEntry->isWrittenDirectlyToFile)
    {
      mCurrentEntry->crc = a3;
    }
  }
}

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  if (self->mCurrentEntry)
  {
    if (!self->mOutputStream)
    {
      v8 = +[TSUAssertionHandler currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream writeBuffer:size:]"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 326, @"Zip output stream is closed."}];
    }

    [(SFUOutputStream *)self->mEntryOutputStream writeBuffer:a3 size:a4];
    self->mCurrentEntry->uncompressedSize += a4;
    mCurrentEntry = self->mCurrentEntry;
    if (!mCurrentEntry->isEncrypted)
    {
      if (a4 >= 0xFFFFFFFF)
      {
        v11 = +[TSUAssertionHandler currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream writeBuffer:size:]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 337, @"overflow in writeBuffer:"}];
        mCurrentEntry = self->mCurrentEntry;
      }

      self->mCurrentEntry->crc = crc32(mCurrentEntry->crc, a3, a4);
    }
  }

  else
  {

    [SFUZipException raise:@"SFUZipOutputError" format:@"-writeBuffer:size: called when current entry is nil"];
  }
}

- (BOOL)canRemoveEntryWithName:(id)a3
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
    if ([*(v8 + 8) isEqualToString:a3])
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
  [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 357, @"Can't find entry named: %@", a3}];
  return 0;
}

- (void)removeEntryWithName:(id)a3
{
  if (!self->mOutputStream)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream removeEntryWithName:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 366, @"Zip output stream is closed."}];
  }

  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry && [(NSString *)mCurrentEntry->name isEqualToString:a3])
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
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 388, @"Can't find entry named: %@", a3}];
      return;
    }

    v10 = v9;
    v11 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->mEntries objectAtIndex:v11];
      if (![(NSString *)v8->name isEqualToString:a3])
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
    v20 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(SFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:v8->offset];
    if (v20 < v8->offset)
    {
      [(SFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v20 whence:0];
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

      [SFUZipException raise:@"SFUZipOutputError" format:@"Removing entry named %@ produced free space that is too small.", a3];
    }
  }
}

- (void)setEncryptedDocumentUuid:(id)a3
{
  if (!self->mOutputStream)
  {
    [SFUZipException raise:@"SFUZipOutputError" format:@"Tried to set encrypted document UUID after writing finished."];
  }

  v5 = a3;

  self->mEncryptedDocumentUuid = a3;
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
      v12 = [v11 UTF8String];
      self->mCurrentEntry->name = [v11 copy];
      if (v12)
      {
        v13 = strlen(v12);
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

  v16 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
  [(NSMutableArray *)self->mEntries sortUsingSelector:sel_compareByOffset_];
  v17 = [(NSMutableArray *)self->mEntries objectEnumerator];
  v18 = [v17 nextObject];
  if (v18)
  {
    [(SFUZipArchiveOutputStream *)self writeCentralFileHeaderUsingEntry:v18 isFirstEntry:1];
  }

  v19 = [v17 nextObject];
  if (v19)
  {
    v20 = v19;
    do
    {
      [(SFUZipArchiveOutputStream *)self writeCentralFileHeaderUsingEntry:v20 isFirstEntry:0];
      v20 = [v17 nextObject];
    }

    while (v20);
  }

  [(SFUZipArchiveOutputStream *)self writeEndOfCentralDirectoryWithOffset:v16];

  self->mOutputStream = 0;
}

- (void)moveToPath:(id)a3
{
  if (!self->mOutputStream)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveOutputStream moveToPath:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveOutputStream.m"), 545, @"Zip output stream is closed."}];
  }

  [(SFUZipArchiveOutputStream *)self finishEntry];
  v7 = [(SFUMoveableFileOutputStream *)self->mOutputStream path];
  if (![(SFUMoveableFileOutputStream *)self->mOutputStream moveToPath:a3])
  {
    [SFUZipException raise:@"SFUZipOutputError" format:@"Could not move output stream from %@ to %@", v7, a3];
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

- (id)entriesAtPath:(id)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableArray count](self->mEntries, "count")}];
  v6 = [[SFUZipArchiveFileDataRepresentation alloc] initWithPath:a3];
  v7 = [(NSMutableArray *)self->mEntries objectEnumerator];
  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = [[SFUZipEntry alloc] initWithDataRepresentation:v6 compressionMethod:*(v9 + 24) compressedSize:*(v9 + 32) uncompressedSize:*(v9 + 40) offset:*(v9 + 48) crc:*(v9 + 64)];
      v11 = v10;
      if (*(v9 + 25) == 1)
      {
        [(SFUZipEntry *)v10 setCryptoKey:self->mCryptoKey];
      }

      [v5 setObject:v11 forKey:*(v9 + 8)];

      v9 = [v7 nextObject];
    }

    while (v9);
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

- (unsigned)crc32ForEntry:(id)a3
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
        if ([(NSString *)v10->name isEqualToString:a3])
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
      v13 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
      v14 = self->mCurrentEntry;
      v15 = v13 - v14->offset;
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
      v15 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
      v16 = [(NSMutableArray *)self->mFreeList lastObject];
      if (v15 - *(v16 + 16) == *(v16 + 8))
      {
        v17 = v16;
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

- (unint64_t)writeLocalFileHeaderForEntry:(id)a3
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
  if (*(a3 + 24))
  {
    v7 = 25452;
  }

  else
  {
    v7 = 25451;
  }

  if (*(a3 + 24))
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  if (*(a3 + 25))
  {
    v8 = v7;
  }

  *(mBuffer + 4) = v8;
  *(mBuffer + 10) = *(a3 + 7);
  *(mBuffer + 14) = 0;
  *(mBuffer + 22) = 0;
  v9 = *(a3 + 2);
  if (v9 >= 0x10000)
  {
    [SFUZipException raise:@"SFUZipOutputError" format:@"File name %@ is too long", *(a3 + 1)];
    v9 = *(a3 + 2);
  }

  if (v9 >= 0xFFFF)
  {
    LOWORD(v9) = -1;
  }

  *(mBuffer + 13) = v9;
  if (*(a3 + 69))
  {
    v10 = 20;
  }

  else
  {
    v10 = 0;
  }

  *(mBuffer + 14) = v10;
  *(a3 + 6) = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:30];
  -[SFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [*(a3 + 1) UTF8String], *(a3 + 2));
  if (*(a3 + 69) == 1)
  {
    v11 = self->mBuffer;
    *v11 = 1048577;
    *(v11 + 12) = 0;
    *(v11 + 4) = 0;
    [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:20];
  }

  return v10 + 30 + *(a3 + 2);
}

- (void)writeCentralFileHeaderUsingEntry:(id)a3 isFirstEntry:(BOOL)a4
{
  v40 = a4;
  mBuffer = self->mBuffer;
  v7 = *(a3 + 4);
  v8 = *(a3 + 5);
  v9 = *(a3 + 2);
  v10 = *(a3 + 6);
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
  if (*(a3 + 24))
  {
    v12 = 25452;
  }

  else
  {
    v12 = 25451;
  }

  if (*(a3 + 24))
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  if (*(a3 + 25))
  {
    v13 = v12;
  }

  *(mBuffer + 5) = v13;
  *(mBuffer + 3) = *(a3 + 7);
  *(mBuffer + 4) = *(a3 + 16);
  v14 = HIDWORD(v7);
  if (HIDWORD(v7))
  {
    v15 = -1;
  }

  else
  {
    v15 = *(a3 + 8);
  }

  *(mBuffer + 5) = v15;
  v16 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
    v17 = -1;
  }

  else
  {
    v17 = *(a3 + 10);
  }

  *(mBuffer + 6) = v17;
  if (v9 >> 16)
  {
    v18 = -1;
  }

  else
  {
    v18 = *(a3 + 8);
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
  if (self->mCryptoKey && v40)
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
    v29 = *(a3 + 12);
  }

  *(mBuffer + 42) = v29;
  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:46];
  -[SFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [*(a3 + 1) UTF8String], *(a3 + 2));
  if (!v20)
  {
    goto LABEL_51;
  }

  v30 = self->mBuffer;
  *v30 = 1;
  *(v30 + 1) = v38;
  if (v16)
  {
    *(v30 + 4) = *(a3 + 5);
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
    *v31 = *(a3 + 4);
    v31 += 8;
  }

LABEL_48:
  if (v21)
  {
    *v31 = *(a3 + 6);
    v31 += 8;
  }

  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:v31 - self->mBuffer];
LABEL_51:
  if (self->mCryptoKey && v40)
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
      v36 = [(NSData *)v28 bytes];
      v37 = [(NSData *)v28 length];

      [(SFUMoveableFileOutputStream *)mOutputStream writeBuffer:v36 size:v37];
    }
  }
}

- (void)writeEndOfCentralDirectoryWithOffset:(int64_t)a3
{
  v5 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset]- a3;
  v6 = [(NSMutableArray *)self->mEntries count];
  v7 = v6;
  if (a3 > 0xFFFFFFFFLL || (!(v6 >> 16) ? (v8 = HIDWORD(v5) == 0) : (v8 = 0), !v8))
  {
    v9 = [(SFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(SFUZipArchiveOutputStream *)self writeZip64EndOfCentralDirectoryWithOffset:a3];
    [(SFUZipArchiveOutputStream *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:v9];
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
  v12 = -1;
  if (a3 > 0xFFFFFFFFLL)
  {
    v13 = -1;
  }

  else
  {
    v13 = v5;
  }

  if (a3 < 0xFFFFFFFFLL)
  {
    v12 = a3;
  }

  *(mBuffer + 3) = v13;
  *(mBuffer + 4) = v12;
  *(mBuffer + 10) = 0;
  mOutputStream = self->mOutputStream;
  v15 = self->mBuffer;

  [(SFUMoveableFileOutputStream *)mOutputStream writeBuffer:v15 size:22];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3
{
  mBuffer = self->mBuffer;
  *mBuffer = 101075792;
  *(mBuffer + 4) = 44;
  *(mBuffer + 2) = 0;
  *(mBuffer + 3) = 1310782;
  v6 = [(NSMutableArray *)self->mEntries count];
  *(mBuffer + 3) = v6;
  *(mBuffer + 4) = v6;
  *(mBuffer + 5) = [(SFUMoveableFileOutputStream *)self->mOutputStream offset]- a3;
  *(mBuffer + 6) = a3;
  mOutputStream = self->mOutputStream;
  v8 = self->mBuffer;

  [(SFUMoveableFileOutputStream *)mOutputStream writeBuffer:v8 size:56];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3
{
  mBuffer = self->mBuffer;
  *mBuffer = 117853008;
  *(mBuffer + 1) = 0;
  *(mBuffer + 1) = a3;
  *(mBuffer + 4) = 1;
  [(SFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:20];
}

@end