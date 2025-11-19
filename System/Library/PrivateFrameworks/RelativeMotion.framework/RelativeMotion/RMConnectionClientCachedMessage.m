@interface RMConnectionClientCachedMessage
- (id)initWithName:(void *)a3 data:;
- (id)initWithName:(void *)a3 data:(void *)a4 streamingCallback:;
- (uint64_t)data;
@end

@implementation RMConnectionClientCachedMessage

- (id)initWithName:(void *)a3 data:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = RMConnectionClientCachedMessage;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (id)initWithName:(void *)a3 data:(void *)a4 streamingCallback:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = RMConnectionClientCachedMessage;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v12 = MEMORY[0x266717B20](v10);
      v13 = a1[3];
      a1[3] = v12;
    }
  }

  return a1;
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