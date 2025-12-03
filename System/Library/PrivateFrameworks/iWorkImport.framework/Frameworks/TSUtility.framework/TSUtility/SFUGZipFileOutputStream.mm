@interface SFUGZipFileOutputStream
- (SFUGZipFileOutputStream)initWithPath:(id)path;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation SFUGZipFileOutputStream

- (SFUGZipFileOutputStream)initWithPath:(id)path
{
  v4 = [(SFUGZipFileOutputStream *)self init];
  if (v4)
  {
    unlink([path fileSystemRepresentation]);
    v5 = sub_27709E424(path, 1537, 438);
    v6 = gzdopen(v5, "w");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", path}];
    }

    v4->_path = [path copy];
  }

  return v4;
}

- (void)dealloc
{
  file = self->_file;
  if (file)
  {
    gzclose(file);
  }

  v4.receiver = self;
  v4.super_class = SFUGZipFileOutputStream;
  [(SFUGZipFileOutputStream *)&v4 dealloc];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  sizeCopy = size;
  if (self->_file)
  {
    v7 = 1;
    if (!size)
    {
      return;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUGZipFileOutputStream writeBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUGZipFileOutputStream.m"], 64, 0, "Using a closed stream");
    +[TSUAssertionHandler logBacktraceThrottled];
    v7 = self->_file != 0;
    if (!sizeCopy)
    {
      return;
    }
  }

  if (v7)
  {
    do
    {
      if (sizeCopy >= 0xFFFFFFFF)
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        v9 = sizeCopy;
      }

      v10 = gzwrite(self->_file, buffer, v9);
      if (v9 != v10)
      {
        [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not gzwrite"];
      }

      self->_offset += v10;
      buffer += v10;
      sizeCopy -= v10;
    }

    while (sizeCopy);
  }
}

- (int64_t)offset
{
  if (!self->_file)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUGZipFileOutputStream offset]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUGZipFileOutputStream.m"], 80, 0, "Using a closed stream");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return self->_offset;
}

- (void)close
{
  file = self->_file;
  if (file)
  {
    gzclose(file);
    self->_file = 0;
  }
}

@end