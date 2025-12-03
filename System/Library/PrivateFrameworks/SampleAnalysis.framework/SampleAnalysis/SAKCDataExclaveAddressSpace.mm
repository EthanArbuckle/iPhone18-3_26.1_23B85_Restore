@interface SAKCDataExclaveAddressSpace
- (void)initWithInfo:(uint64_t)info name:;
@end

@implementation SAKCDataExclaveAddressSpace

- (void)initWithInfo:(uint64_t)info name:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = SAKCDataExclaveAddressSpace;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = info;
    }
  }

  return result;
}

@end