@interface SAMountStatusData
- (SAMountStatusData)initWithMount:(statfs *)a3 status:(netfs_status *)a4;
- (void)dealloc;
@end

@implementation SAMountStatusData

- (SAMountStatusData)initWithMount:(statfs *)a3 status:(netfs_status *)a4
{
  v10.receiver = self;
  v10.super_class = SAMountStatusData;
  v6 = [(SAMountStatusData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_mount = a3;
    v6->_status = a4;
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