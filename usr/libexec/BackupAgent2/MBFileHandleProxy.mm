@interface MBFileHandleProxy
- (MBFileHandleProxy)initWithFileHandle:(id)a3;
@end

@implementation MBFileHandleProxy

- (MBFileHandleProxy)initWithFileHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MBFileHandleProxy;
  v6 = [(MBFileHandleProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileHandle, a3);
  }

  return v7;
}

@end