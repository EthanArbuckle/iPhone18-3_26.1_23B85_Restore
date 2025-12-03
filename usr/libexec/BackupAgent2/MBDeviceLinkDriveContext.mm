@interface MBDeviceLinkDriveContext
- (MBDeviceLinkDriveContext)initWithFileHandleFactory:(id)factory;
- (id)_fileForFD:(int)d;
- (int)_addFile:(id)file;
- (void)_removeFileWithFD:(int)d;
- (void)dealloc;
@end

@implementation MBDeviceLinkDriveContext

- (MBDeviceLinkDriveContext)initWithFileHandleFactory:(id)factory
{
  v6.receiver = self;
  v6.super_class = MBDeviceLinkDriveContext;
  v4 = [(MBDeviceLinkDriveContext *)&v6 init];
  if (v4)
  {
    v4->_fileHandleFactory = factory;
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

- (id)_fileForFD:(int)d
{
  if ([(NSMutableArray *)self->_fileHandlesByFD count]<= d)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_fileHandlesByFD objectAtIndexedSubscript:d];
  if (v5 == objc_opt_class())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (int)_addFile:(id)file
{
  v5 = [file fd];
  while ([(NSMutableArray *)self->_fileHandlesByFD count]<= v5)
  {
    [(NSMutableArray *)self->_fileHandlesByFD addObject:+[NSNull null]];
  }

  [(NSMutableArray *)self->_fileHandlesByFD setObject:file atIndexedSubscript:v5];
  return v5;
}

- (void)_removeFileWithFD:(int)d
{
  v5 = +[NSNull null];
  fileHandlesByFD = self->_fileHandlesByFD;

  [(NSMutableArray *)fileHandlesByFD setObject:v5 atIndexedSubscript:d];
}

@end