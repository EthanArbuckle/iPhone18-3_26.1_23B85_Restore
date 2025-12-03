@interface SAMountStatusData
- (SAMountStatusData)initWithMount:(statfs *)mount status:(netfs_status *)status;
- (void)dealloc;
@end

@implementation SAMountStatusData

- (SAMountStatusData)initWithMount:(statfs *)mount status:(netfs_status *)status
{
  v10.receiver = self;
  v10.super_class = SAMountStatusData;
  v6 = [(SAMountStatusData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_mount = mount;
    v6->_status = status;
    v8 = v6;
  }

  return v7;
}

- (void)dealloc
{
  free(self->_status);
  v3.receiver = self;
  v3.super_class = SAMountStatusData;
  [(SAMountStatusData *)&v3 dealloc];
}

@end