@interface MBToolsFileHandleFactory
- (MBToolsFileHandleFactory)initWithKeyBag:(id)bag key:(id)key;
@end

@implementation MBToolsFileHandleFactory

- (MBToolsFileHandleFactory)initWithKeyBag:(id)bag key:(id)key
{
  bagCopy = bag;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = MBToolsFileHandleFactory;
  v9 = [(MBToolsFileHandleFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keybag, bag);
    objc_storeStrong(&v10->_key, key);
  }

  return v10;
}

@end