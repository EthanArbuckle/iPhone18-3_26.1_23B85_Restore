@interface SFUZipArchiveFileDataRepresentation
- (BOOL)hasSameLocationAs:(id)as;
- (SFUZipArchiveFileDataRepresentation)initWithPath:(id)path;
- (id)bufferedInputStreamWithOffset:(int64_t)offset length:(int64_t)length;
- (id)inputStreamWithOffset:(int64_t)offset length:(int64_t)length;
- (void)dealloc;
@end

@implementation SFUZipArchiveFileDataRepresentation

- (SFUZipArchiveFileDataRepresentation)initWithPath:(id)path
{
  v9.receiver = self;
  v9.super_class = SFUZipArchiveFileDataRepresentation;
  v4 = [(SFUZipArchiveFileDataRepresentation *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    v6 = SFUOpen(path, 0, 0);
    v5->mFd = v6;
    if (v6 == -1 || pread(v6, 0, 0, 0) == -1)
    {
      v7 = [[SFUFileDataRepresentation alloc] initWithPath:path];
    }

    else
    {
      v7 = [[SFUFileDataRepresentation alloc] initWithPath:path sharedFileDescriptor:v5->mFd];
    }

    v5->mFileRepresentation = v7;
  }

  return v5;
}

- (void)dealloc
{
  mFd = self->mFd;
  if (mFd != -1 && close(mFd))
  {
    v4 = +[TSUAssertionHandler currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipArchiveFileDataRepresentation dealloc]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchiveFileDataRepresentation.m"), 56, @"close failed on fd = %d with errorno = %d", self->mFd, *__error()}];
  }

  v6.receiver = self;
  v6.super_class = SFUZipArchiveFileDataRepresentation;
  [(SFUZipArchiveFileDataRepresentation *)&v6 dealloc];
}

- (BOOL)hasSameLocationAs:(id)as
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    as = *(as + 4);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (!as)
  {
    return 0;
  }

  path = [(SFUFileDataRepresentation *)self->mFileRepresentation path];
  path2 = [as path];

  return [path isEqualToString:path2];
}

- (id)inputStreamWithOffset:(int64_t)offset length:(int64_t)length
{
  dataLength = [(SFUFileDataRepresentation *)self->mFileRepresentation dataLength];
  if ((length | offset) < 0 || (dataLength >= length ? (v8 = dataLength - length < offset) : (v8 = 1), v8))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Bad input stream range."];
  }

  mFd = self->mFd;
  if (mFd == -1 || pread(mFd, 0, 0, 0) == -1)
  {
    v10 = [[SFUFileInputStream alloc] initWithPath:[(SFUFileDataRepresentation *)self->mFileRepresentation path] offset:offset length:length];
  }

  else
  {
    v10 = [[SFUFileInputStream alloc] initWithFileDescriptor:SFUDup(self->mFd) offset:offset length:length];
  }

  return v10;
}

- (id)bufferedInputStreamWithOffset:(int64_t)offset length:(int64_t)length
{
  v4 = [[SFUBufferedInputStream alloc] initWithStream:[(SFUZipArchiveFileDataRepresentation *)self inputStreamWithOffset:offset length:?] dataLength:length];

  return v4;
}

@end