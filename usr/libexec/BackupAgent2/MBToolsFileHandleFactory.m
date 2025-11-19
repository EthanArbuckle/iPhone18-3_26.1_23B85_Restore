@interface MBToolsFileHandleFactory
- (MBToolsFileHandleFactory)initWithKeyBag:(id)a3 key:(id)a4;
@end

@implementation MBToolsFileHandleFactory

- (MBToolsFileHandleFactory)initWithKeyBag:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MBToolsFileHandleFactory;
  v9 = [(MBToolsFileHandleFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keybag, a3);
    objc_storeStrong(&v10->_key, a4);
  }

  return v10;
}

@end