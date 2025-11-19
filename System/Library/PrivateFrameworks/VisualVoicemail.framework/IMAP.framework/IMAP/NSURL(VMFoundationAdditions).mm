@interface NSURL(VMFoundationAdditions)
+ (id)vf_defaultAllowedCharacterSet;
- (void)vf_hostNilForEmpty;
@end

@implementation NSURL(VMFoundationAdditions)

- (void)vf_hostNilForEmpty
{
  v1 = [a1 host];
  if ([v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

+ (id)vf_defaultAllowedCharacterSet
  v0 = {;
  v1 = [v0 invertedSet];

  return v1;
}

@end