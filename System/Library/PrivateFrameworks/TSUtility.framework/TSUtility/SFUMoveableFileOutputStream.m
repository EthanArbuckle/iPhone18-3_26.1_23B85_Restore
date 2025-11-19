@interface SFUMoveableFileOutputStream
- (BOOL)moveToPath:(id)a3;
- (SFUMoveableFileOutputStream)initWithPath:(id)a3;
- (SFUMoveableFileOutputStream)initWithTemporaryFile:(id)a3;
- (id)inputStream;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
- (void)truncateToLength:(int64_t)a3;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation SFUMoveableFileOutputStream

- (SFUMoveableFileOutputStream)initWithTemporaryFile:(id)a3
{
  v11.receiver = self;
  v11.super_class = SFUMoveableFileOutputStream;
  v4 = [(SFUMoveableFileOutputStream *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    v6 = [a3 stringByAppendingString:@"XXXXXXXX"];
    v7 = [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:v6] UTF8String];
    v8 = strdup(v7);
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

- (SFUMoveableFileOutputStream)initWithPath:(id)a3
{
  v4 = [(SFUMoveableFileOutputStream *)self init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    unlink([a3 fileSystemRepresentation]);
    v5->mFd = TSUOpen(a3, 1537, 438);
    v5->mPath = [a3 copy];
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

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  mFd = self->mFd;
  do
  {
    v7 = write(mFd, a3, a4);
    if (v7 < 0)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUWriteError" format:@"Could not write"];
    }

    a3 += v7;
    a4 -= v7;
  }

  while (a4);
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

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  if (lseek(self->mFd, a3, a4) == -1)
  {
    v4 = MEMORY[0x277CBEAD8];

    [v4 errnoRaise:@"SFUSeekError" format:@"Could not seek"];
  }
}

- (BOOL)moveToPath:(id)a3
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
    v7 = [a3 copy];

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

- (void)truncateToLength:(int64_t)a3
{
  [(SFUMoveableFileOutputStream *)self seekToOffset:0 whence:2];
  if ([(SFUMoveableFileOutputStream *)self offset]< a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-[SFUMoveableFileOutputStream truncateToOffset:] does not allow expanding the file"];
  }

  [(SFUMoveableFileOutputStream *)self seekToOffset:a3 whence:0];
  if (ftruncate(self->mFd, a3))
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
  v3 = [(SFUMoveableFileOutputStream *)self offset];
  [(SFUMoveableFileOutputStream *)self seekToOffset:0 whence:2];
  v4 = [(SFUMoveableFileOutputStream *)self offset];
  [(SFUMoveableFileOutputStream *)self seekToOffset:v3 whence:0];
  v5 = [[SFUFileInputStream alloc] initWithPath:self->mPath offset:0 length:v4];

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