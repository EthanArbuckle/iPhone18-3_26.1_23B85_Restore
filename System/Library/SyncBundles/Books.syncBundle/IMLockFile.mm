@interface IMLockFile
- (BOOL)_lock:(BOOL)_lock blocking:(BOOL)blocking;
- (IMLockFile)initWithPath:(id)path;
- (void)dealloc;
- (void)unlock;
@end

@implementation IMLockFile

- (IMLockFile)initWithPath:(id)path
{
  v4 = [(IMLockFile *)self init];
  if (v4)
  {
    v4->_path = path;
    v4->_fd = -1;
    v4->_locked = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(IMLockFile *)self unlock];

  v3.receiver = self;
  v3.super_class = IMLockFile;
  [(IMLockFile *)&v3 dealloc];
}

- (BOOL)_lock:(BOOL)_lock blocking:(BOOL)blocking
{
  blockingCopy = blocking;
  _lockCopy = _lock;
  if (![(IMLockFile *)self locked])
  {
    if ([(NSString *)[(IMLockFile *)self path] length])
    {
      v7 = open([(NSString *)[(IMLockFile *)self path] fileSystemRepresentation], 16777728, 438);
      self->_fd = v7;
      if (v7 != -1)
      {
        v8 = _lockCopy ? 2 : 1;
        v9 = blockingCopy ? 0 : 4;
        self->_locked = flock(v7, v9 | v8) != -1;
        if (![(IMLockFile *)self locked])
        {
          close(self->_fd);
          self->_fd = -1;
        }
      }
    }
  }

  return [(IMLockFile *)self locked];
}

- (void)unlock
{
  if ([(IMLockFile *)self locked])
  {
    flock(self->_fd, 8);
    close(self->_fd);
    self->_fd = -1;
    self->_locked = 0;
  }
}

@end