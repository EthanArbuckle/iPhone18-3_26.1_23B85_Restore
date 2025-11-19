@interface MBDeviceLinkDriveContext
- (MBDeviceLinkDriveContext)initWithFileHandleFactory:(id)a3;
- (id)_fileForFD:(int)a3;
- (int)_addFile:(id)a3;
- (void)_removeFileWithFD:(int)a3;
- (void)dealloc;
@end

@implementation MBDeviceLinkDriveContext

- (MBDeviceLinkDriveContext)initWithFileHandleFactory:(id)a3
{
  v6.receiver = self;
  v6.super_class = MBDeviceLinkDriveContext;
  v4 = [(MBDeviceLinkDriveContext *)&v6 init];
  if (v4)
  {
    v4->_fileHandleFactory = a3;
    v4->_fileHandlesByFD = [[NSMutableArray alloc] initWithCapacity:0];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDeviceLinkDriveContext;
  [(MBDeviceLinkDriveContext *)&v3 dealloc];
}

- (id)_fileForFD:(int)a3
{
  if ([(NSMutableArray *)self->_fileHandlesByFD count]<= a3)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_fileHandlesByFD objectAtIndexedSubscript:a3];
  if (v5 == objc_opt_class())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int)_addFile:(id)a3
{
  v5 = [a3 fd];
  while ([(NSMutableArray *)self->_fileHandlesByFD count]<= v5)
  {
    [(NSMutableArray *)self->_fileHandlesByFD addObject:+[NSNull null]];
  }

  [(NSMutableArray *)self->_fileHandlesByFD setObject:a3 atIndexedSubscript:v5];
  return v5;
}

- (void)_removeFileWithFD:(int)a3
{
  v5 = +[NSNull null];
  fileHandlesByFD = self->_fileHandlesByFD;

  [(NSMutableArray *)fileHandlesByFD setObject:v5 atIndexedSubscript:a3];
}

@end