@interface PCDistributedLock
- (BOOL)_lockBlocking:(BOOL)blocking;
- (PCDistributedLock)initWithName:(id)name;
- (PCDistributedLock)initWithPath:(id)path;
- (void)dealloc;
- (void)unlock;
@end

@implementation PCDistributedLock

- (PCDistributedLock)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = PCDistributedLock;
  v5 = [(PCDistributedLock *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;

    v5->_fd = -1;
  }

  return v5;
}

- (PCDistributedLock)initWithName:(id)name
{
  nameCopy = name;
  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = [v5 objectAtIndex:0];

  nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@".%@.lock", nameCopy];
  v8 = [v6 stringByAppendingPathComponent:nameCopy];
  v9 = [(PCDistributedLock *)self initWithPath:v8];

  return v9;
}

- (void)dealloc
{
  if (self->_fd != -1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ at path '%@' is being deallocated while locked", objc_opt_class(), self->_path}];
  }

  v3.receiver = self;
  v3.super_class = PCDistributedLock;
  [(PCDistributedLock *)&v3 dealloc];
}

- (BOOL)_lockBlocking:(BOOL)blocking
{
  blockingCopy = blocking;
  if (self->_fd != -1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ at path '%@' is already locked", objc_opt_class(), self->_path}];
  }

  if (blockingCopy)
  {
    v5 = 544;
  }

  else
  {
    v5 = 548;
  }

  v6 = open([(NSString *)self->_path fileSystemRepresentation], v5, 420);
  self->_fd = v6;
  if (v6 == -1)
  {
    if (*__error() == 1)
    {
      chmod([(NSString *)self->_path fileSystemRepresentation], 0x1A4u);
      fd = open([(NSString *)self->_path fileSystemRepresentation], v5, 420);
      self->_fd = fd;
    }

    else
    {
      fd = self->_fd;
    }

    if (fd == -1 && (blockingCopy || *__error() != 35))
    {
      v8 = MEMORY[0x277CBEAD8];
      v9 = *MEMORY[0x277CBE658];
      v10 = objc_opt_class();
      path = self->_path;
      v12 = __error();
      [v8 raise:v9 format:{@"Unable to take %@ at path '%@': %s", v10, path, strerror(*v12)}];
    }
  }

  return self->_fd != -1;
}

- (void)unlock
{
  fd = self->_fd;
  if (fd == -1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ at path '%@' is not locked", objc_opt_class(), self->_path}];
    fd = self->_fd;
  }

  close(fd);
  self->_fd = -1;
}

@end