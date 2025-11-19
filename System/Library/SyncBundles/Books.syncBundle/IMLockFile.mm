@interface IMLockFile
- (BOOL)_lock:(BOOL)a3 blocking:(BOOL)a4;
- (IMLockFile)initWithPath:(id)a3;
- (void)dealloc;
- (void)unlock;
@end

@implementation IMLockFile

- (IMLockFile)initWithPath:(id)a3
{
  v4 = [(IMLockFile *)self init];
  if (v4)
  {
    v4->_path = a3;
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

- (BOOL)_lock:(BOOL)a3 blocking:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![(IMLockFile *)self locked])
  {
    if ([(NSString *)[(IMLockFile *)self path] length])
    {
      v7 = open([(NSString *)[(IMLockFile *)self path] fileSystemRepresentation], 16777728, 438);
      self->_fd = v7;
      if (v7 != -1)
      {
        v8 = v5 ? 2 : 1;
        v9 = v4 ? 0 : 4;
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