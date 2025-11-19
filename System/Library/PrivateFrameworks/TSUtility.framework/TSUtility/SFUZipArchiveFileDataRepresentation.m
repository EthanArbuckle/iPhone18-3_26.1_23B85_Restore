@interface SFUZipArchiveFileDataRepresentation
- (BOOL)hasSameLocationAs:(id)a3;
- (SFUZipArchiveFileDataRepresentation)initWithPath:(id)a3;
- (id)bufferedInputStreamWithOffset:(int64_t)a3 length:(int64_t)a4;
- (id)inputStreamWithOffset:(int64_t)a3 length:(int64_t)a4;
- (void)dealloc;
@end

@implementation SFUZipArchiveFileDataRepresentation

- (SFUZipArchiveFileDataRepresentation)initWithPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = SFUZipArchiveFileDataRepresentation;
  v4 = [(SFUZipArchiveFileDataRepresentation *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->mFd = -1;
    v6 = SFUOpen(a3, 0, 0);
    v5->mFd = v6;
    if (v6 == -1 || pread(v6, 0, 0, 0) == -1)
    {
      v7 = [[SFUFileDataRepresentation alloc] initWithPath:a3];
    }

    else
    {
      v7 = [[SFUFileDataRepresentation alloc] initWithPath:a3 sharedFileDescriptor:v5->mFd];
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

- (BOOL)hasSameLocationAs:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = *(a3 + 4);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if (!a3)
  {
    return 0;
  }

  v5 = [(SFUFileDataRepresentation *)self->mFileRepresentation path];
  v6 = [a3 path];

  return [v5 isEqualToString:v6];
}

- (id)inputStreamWithOffset:(int64_t)a3 length:(int64_t)a4
{
  v7 = [(SFUFileDataRepresentation *)self->mFileRepresentation dataLength];
  if ((a4 | a3) < 0 || (v7 >= a4 ? (v8 = v7 - a4 < a3) : (v8 = 1), v8))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Bad input stream range."];
  }

  mFd = self->mFd;
  if (mFd == -1 || pread(mFd, 0, 0, 0) == -1)
  {
    v10 = [[SFUFileInputStream alloc] initWithPath:[(SFUFileDataRepresentation *)self->mFileRepresentation path] offset:a3 length:a4];
  }

  else
  {
    v10 = [[SFUFileInputStream alloc] initWithFileDescriptor:SFUDup(self->mFd) offset:a3 length:a4];
  }

  return v10;
}

- (id)bufferedInputStreamWithOffset:(int64_t)a3 length:(int64_t)a4
{
  v4 = [[SFUBufferedInputStream alloc] initWithStream:[(SFUZipArchiveFileDataRepresentation *)self inputStreamWithOffset:a3 length:?] dataLength:a4];

  return v4;
}

@end