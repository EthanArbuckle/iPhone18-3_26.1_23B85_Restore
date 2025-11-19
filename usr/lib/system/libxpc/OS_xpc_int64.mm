@interface OS_xpc_int64
- (BOOL)allowsWeakReference;
- (BOOL)retainWeakReference;
- (OS_xpc_int64)retain;
- (unint64_t)retainCount;
- (void)release;
@end

@implementation OS_xpc_int64

- (OS_xpc_int64)retain
{
  if ((self & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1EEE6FDB0]();
  }

  return self;
}

- (void)release
{
  if ((self & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE6FDA8]();
  }
}

- (BOOL)retainWeakReference
{
  if ((self & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = OS_xpc_int64;
  return [(OS_object *)&v5 retainWeakReference];
}

- (BOOL)allowsWeakReference
{
  if ((self & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = OS_xpc_int64;
  return [(OS_object *)&v5 allowsWeakReference];
}

- (unint64_t)retainCount
{
  if ((self & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = OS_xpc_int64;
  return [(OS_object *)&v5 retainCount];
}

@end