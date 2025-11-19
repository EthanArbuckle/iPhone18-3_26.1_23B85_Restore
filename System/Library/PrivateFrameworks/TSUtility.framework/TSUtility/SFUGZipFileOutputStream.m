@interface SFUGZipFileOutputStream
- (SFUGZipFileOutputStream)initWithPath:(id)a3;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation SFUGZipFileOutputStream

- (SFUGZipFileOutputStream)initWithPath:(id)a3
{
  v4 = [(SFUGZipFileOutputStream *)self init];
  if (v4)
  {
    unlink([a3 fileSystemRepresentation]);
    v5 = TSUOpen(a3, 1537, 438);
    v6 = gzdopen(v5, "w");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", a3}];
    }

    v4->_path = [a3 copy];
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

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  v4 = a4;
  if (self->_file)
  {
    v7 = 1;
    if (!a4)
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
    if (!v4)
    {
      return;
    }
  }

  if (v7)
  {
    do
    {
      if (v4 >= 0xFFFFFFFF)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v4;
      }

      v11 = gzwrite(self->_file, a3, v10);
      if (v10 != v11)
      {
        [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileWriteError" format:@"Could not gzwrite"];
      }

      self->_offset += v11;
      a3 += v11;
      v4 -= v11;
    }

    while (v4);
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