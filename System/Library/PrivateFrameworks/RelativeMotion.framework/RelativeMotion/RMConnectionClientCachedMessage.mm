@interface RMConnectionClientCachedMessage
- (id)initWithName:(void *)name data:;
- (id)initWithName:(void *)name data:(void *)data streamingCallback:;
- (uint64_t)data;
@end

@implementation RMConnectionClientCachedMessage

- (id)initWithName:(void *)name data:
{
  v6 = a2;
  nameCopy = name;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = RMConnectionClientCachedMessage;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, name);
    }
  }

  return self;
}

- (id)initWithName:(void *)name data:(void *)data streamingCallback:
{
  v8 = a2;
  nameCopy = name;
  dataCopy = data;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = RMConnectionClientCachedMessage;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, name);
      v12 = MEMORY[0x266717B20](dataCopy);
      v13 = self[3];
      self[3] = v12;
    }
  }

  return self;
}

- (uint64_t)data
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end