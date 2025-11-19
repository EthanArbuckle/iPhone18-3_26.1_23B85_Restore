@interface SXTextComponentLayoutAttributeDescriptor
+ (void)descriptorWithFromLayoutAttribute:(int)a3 toLayoutAttribute:(char)a4 ignoreMargin:(uint64_t)a5 withRange:(uint64_t)a6;
- (uint64_t)range;
- (uint64_t)resultingExclusionPath;
- (void)setResultingExclusionPath:(uint64_t)a1;
@end

@implementation SXTextComponentLayoutAttributeDescriptor

+ (void)descriptorWithFromLayoutAttribute:(int)a3 toLayoutAttribute:(char)a4 ignoreMargin:(uint64_t)a5 withRange:(uint64_t)a6
{
  objc_opt_self();
  v11 = [(SXComponentLayoutAttributeDescriptor *)[SXTextComponentLayoutAttributeDescriptor alloc] initWithFromLayoutAttribute:a2 toLayoutAttribute:a3 ignoreMargin:a4];
  if (v11)
  {
    v11[4] = a5;
    v11[5] = a6;
  }

  return v11;
}

- (uint64_t)range
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)resultingExclusionPath
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setResultingExclusionPath:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

@end