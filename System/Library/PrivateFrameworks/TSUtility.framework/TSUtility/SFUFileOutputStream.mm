@interface SFUFileOutputStream
- (SFUFileOutputStream)initWithPath:(id)a3;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation SFUFileOutputStream

- (SFUFileOutputStream)initWithPath:(id)a3
{
  v4 = [(SFUFileOutputStream *)self init];
  if (v4)
  {
    unlink([a3 fileSystemRepresentation]);
    v4->mFile = SFUFileOpen(a3, "w");
    v4->mPath = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
  }

  v4.receiver = self;
  v4.super_class = SFUFileOutputStream;
  [(SFUFileOutputStream *)&v4 dealloc];
}

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  mFile = self->mFile;
  if (!mFile)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileOutputStream writeBuffer:size:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileOutputStream.m"), 60, @"Using a closed stream"}];
    mFile = self->mFile;
  }

  if (fwrite(a3, 1uLL, a4, mFile) != a4)
  {
    v10 = MEMORY[0x277CBEAD8];

    [v10 errnoRaise:@"SFUFileWriteError" format:@"Could not write"];
  }
}

- (int64_t)offset
{
  mFile = self->mFile;
  if (!mFile)
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileOutputStream offset]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileOutputStream.m"), 66, @"Using a closed stream"}];
    mFile = self->mFile;
  }

  v6 = ftello(mFile);
  if (v6 == -1)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileTellError" format:@"Could not tell"];
  }

  return v6;
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  mFile = self->mFile;
  if (!mFile)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileOutputStream seekToOffset:whence:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileOutputStream.m"), 78, @"Using a closed stream"}];
    mFile = self->mFile;
  }

  if (fseeko(mFile, a3, a4))
  {
    v10 = MEMORY[0x277CBEAD8];

    [v10 errnoRaise:@"SFUFileSeekError" format:@"Could not seek"];
  }
}

- (void)close
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
    self->mFile = 0;
  }
}

@end