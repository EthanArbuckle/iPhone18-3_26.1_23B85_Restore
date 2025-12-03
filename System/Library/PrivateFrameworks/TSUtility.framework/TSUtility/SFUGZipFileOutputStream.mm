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
    v5 = TSUOpen(path, 1537, 438);
    v6 = gzdopen(v5, "w");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", path}];
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
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUGZipFileOutputStream writeBuffer:size:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUGZipFileOutputStream.m"), 72, @"Using a closed stream"}];
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
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = sizeCopy;
      }

      v11 = gzwrite(self->_file, buffer, v10);
      if (v10 != v11)
      {
        [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileWriteError" format:@"Could not gzwrite"];
      }

      self->_offset += v11;
      buffer += v11;
      sizeCopy -= v11;
    }

    while (sizeCopy);
  }
}

- (int64_t)offset
{
  if (!self->_file)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUGZipFileOutputStream offset]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUGZipFileOutputStream.m"), 92, @"Using a closed stream"}];
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