@interface SFUGZipFileInputStream
- (SFUGZipFileInputStream)initWithPath:(id)a3;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
@end

@implementation SFUGZipFileInputStream

- (SFUGZipFileInputStream)initWithPath:(id)a3
{
  self->_fd = -1;
  v4 = [(SFUGZipFileInputStream *)self init];
  if (v4)
  {
    v5 = SFUOpen(a3, 0, 0);
    v6 = gzdopen(v5, "r");
    v4->_file = v6;
    if (!v6)
    {
      close(v5);
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFileOpenError" format:{@"Could not gzdopen %@", a3}];
    }

    v4->_fd = v5;
  }

  return v4;
}

- (void)dealloc
{
  [(SFUGZipFileInputStream *)self close];
  v3.receiver = self;
  v3.super_class = SFUGZipFileInputStream;
  [(SFUGZipFileInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  file = self->_file;
  if (!file)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUGZipFileInputStream readToBuffer:size:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUGZipFileInputStream.m"), 59, @"Using a closed stream"}];
    file = self->_file;
    if (!file)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUGZReadError" format:@"Closed stream"];
      file = self->_file;
    }
  }

  if (a4 >= 0xFFFFFFFF)
  {
    v10 = -1;
  }

  else
  {
    v10 = a4;
  }

  v11 = gzread(file, a3, v10);
  if (v11 < 0)
  {
    [MEMORY[0x277CBEAD8] errnoRaise:@"SFUGZReadError" format:@"Could not gzread"];
  }

  result = v11;
  self->_offset += v11;
  return result;
}

- (void)disableSystemCaching
{
  fd = self->_fd;
  if (fd != -1)
  {
    if (fcntl(fd, 48, 1) == -1)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFcntlError" format:@"Could not set F_NOCACHE on read stream."];
    }

    self->_isCachingDisabled = 1;
  }
}

- (void)enableSystemCaching
{
  fd = self->_fd;
  if (fd != -1)
  {
    if (fcntl(fd, 48, 0) == -1)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFcntlError" format:@"Could not unset F_NOCACHE on read stream."];
    }

    self->_isCachingDisabled = 0;
  }
}

- (void)close
{
  fd = self->_fd;
  if (fd != -1)
  {
    if (self->_isCachingDisabled)
    {
      fcntl(fd, 48, 0);
      self->_isCachingDisabled = 0;
    }

    self->_fd = -1;
  }

  file = self->_file;
  if (file)
  {
    gzclose(file);
    self->_file = 0;
  }
}

@end