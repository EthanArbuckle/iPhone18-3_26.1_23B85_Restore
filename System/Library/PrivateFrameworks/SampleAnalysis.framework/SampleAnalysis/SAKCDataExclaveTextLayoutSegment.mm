@interface SAKCDataExclaveTextLayoutSegment
- (void)initWithInfo:(void *)result;
@end

@implementation SAKCDataExclaveTextLayoutSegment

- (void)initWithInfo:(void *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = SAKCDataExclaveTextLayoutSegment;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[1] = a2;
    }
  }

  return result;
}

@end