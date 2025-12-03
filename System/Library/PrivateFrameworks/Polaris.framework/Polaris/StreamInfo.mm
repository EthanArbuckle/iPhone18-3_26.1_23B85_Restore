@interface StreamInfo
- (StreamInfo)initWithKey:(id)key device:(id)device manager:(id)manager;
- (void)dealloc;
@end

@implementation StreamInfo

- (StreamInfo)initWithKey:(id)key device:(id)device manager:(id)manager
{
  keyCopy = key;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = StreamInfo;
  v10 = [(StreamInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    *&v10->_openCount = 0;
    objc_storeStrong(&v10->_key, key);
    objc_storeStrong(&v11->_manager, manager);
    v12 = v11;
  }

  return v11;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = StreamInfo;
  [(StreamInfo *)&v2 dealloc];
}

@end