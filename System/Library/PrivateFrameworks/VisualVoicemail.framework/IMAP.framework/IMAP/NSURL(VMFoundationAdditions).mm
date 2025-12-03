@interface NSURL(VMFoundationAdditions)
- (void)vf_hostNilForEmpty;
@end

@implementation NSURL(VMFoundationAdditions)

- (void)vf_hostNilForEmpty
{
  host = [self host];
  if ([host length])
  {
    v2 = host;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end