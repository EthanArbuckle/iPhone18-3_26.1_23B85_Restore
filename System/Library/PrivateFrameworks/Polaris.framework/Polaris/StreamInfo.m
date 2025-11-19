@interface StreamInfo
- (StreamInfo)initWithKey:(id)a3 device:(id)a4 manager:(id)a5;
- (void)dealloc;
@end

@implementation StreamInfo

- (StreamInfo)initWithKey:(id)a3 device:(id)a4 manager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = StreamInfo;
  v10 = [(StreamInfo *)&v14 init];
  v11 = v10;
  if (v10)
  {
    *&v10->_openCount = 0;
    objc_storeStrong(&v10->_key, a3);
    objc_storeStrong(&v11->_manager, a5);
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