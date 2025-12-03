@interface SFUMoveableFileOutputStream
- (BOOL)moveToPath:(id)path;
- (SFUMoveableFileOutputStream)initWithPath:(id)path;
- (SFUMoveableFileOutputStream)initWithTemporaryFile:(id)file;
- (id)inputStream;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
- (void)truncateToLength:(int64_t)length;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation SFUMoveableFileOutputStream

- (SFUMoveableFileOutputStream)initWithTemporaryFile:(id)file
{
  v11.receiver = self;
  v11.super_class = SFUMoveableFileOutputStream;
  v4 = [(SFUMoveableFileOutputStream *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    v6 = [file stringByAppendingString:@"XXXXXXXX"];
    uTF8String = [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:v6] UTF8String];
    v8 = strdup(uTF8String);
    v9 = mkstemp(v8);
    v5->mFd = v9;
    if (v9 == -1)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUMkstempError" format:{@"Cannot create temporary file with template %@", v6}];
    }

    v5->mPath = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v8];
    free(v8);
  }

  return v5;
}

- (SFUMoveableFileOutputStream)initWithPath:(id)path
{
  v4 = [(SFUMoveableFileOutputStream *)self init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    unlink([path fileSystemRepresentation]);
    v5->mFd = TSUOpen(path, 1537, 438);
    v5->mPath = [path copy];
  }

  return v5;
}

- (void)dealloc
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    close(mFd);
  }

  v4.receiver = self;
  v4.super_class = SFUMoveableFileOutputStream;
  [(SFUMoveableFileOutputStream *)&v4 dealloc];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  mFd = self->mFd;
  do
  {
    v7 = write(mFd, buffer, size);
    if (v7 < 0)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUWriteError" format:@"Could not write"];
    }

    buffer += v7;
    size -= v7;
  }

  while (size);
}

- (int64_t)offset
{
  v2 = lseek(self->mFd, 0, 1);
  if (v2 == -1)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUTellError" format:@"Could not tell"];
  }

  return v2;
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  if (lseek(self->mFd, offset, whence) == -1)
  {
    v4 = MEMORY[0x277CBEAD8];

    [v4 errnoRaise:@"SFUSeekError" format:@"Could not seek"];
  }
}

- (BOOL)moveToPath:(id)path
{
  mFd = self->mFd;
  if ((mFd & 0x80000000) == 0)
  {
    close(mFd);
    self->mFd = -1;
  }

  v6 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v6)
  {
    v7 = [path copy];

    self->mPath = v7;
    v8 = SFUOpen(v7, 1, 0);
    self->mFd = v8;
    if (lseek(v8, 0, 2) == -1)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUSeekError" format:@"Could not seek"];
    }
  }

  return v6;
}

- (void)truncateToLength:(int64_t)length
{
  [(SFUMoveableFileOutputStream *)self seekToOffset:0 whence:2];
  if ([(SFUMoveableFileOutputStream *)self offset]< length)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-[SFUMoveableFileOutputStream truncateToOffset:] does not allow expanding the file"];
  }

  [(SFUMoveableFileOutputStream *)self seekToOffset:length whence:0];
  if (ftruncate(self->mFd, length))
  {
    v5 = MEMORY[0x277CBEAD8];

    [v5 errnoRaise:@"SFUTruncateError" format:@"Could not ftruncate."];
  }
}

- (void)flush
{
  if (fsync(self->mFd))
  {
    v2 = MEMORY[0x277CBEAD8];

    [v2 errnoRaise:@"SFUFlushError" format:@"Could not fsync."];
  }
}

- (id)inputStream
{
  [(SFUMoveableFileOutputStream *)self flush];
  offset = [(SFUMoveableFileOutputStream *)self offset];
  [(SFUMoveableFileOutputStream *)self seekToOffset:0 whence:2];
  offset2 = [(SFUMoveableFileOutputStream *)self offset];
  [(SFUMoveableFileOutputStream *)self seekToOffset:offset whence:0];
  v5 = [[SFUFileInputStream alloc] initWithPath:self->mPath offset:0 length:offset2];

  return v5;
}

- (void)close
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    close(mFd);
    self->mFd = -1;
  }
}

@end