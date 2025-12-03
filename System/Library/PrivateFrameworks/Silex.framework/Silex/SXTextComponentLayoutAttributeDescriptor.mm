@interface SXTextComponentLayoutAttributeDescriptor
+ (void)descriptorWithFromLayoutAttribute:(int)attribute toLayoutAttribute:(char)layoutAttribute ignoreMargin:(uint64_t)margin withRange:(uint64_t)range;
- (uint64_t)range;
- (uint64_t)resultingExclusionPath;
- (void)setResultingExclusionPath:(uint64_t)path;
@end

@implementation SXTextComponentLayoutAttributeDescriptor

+ (void)descriptorWithFromLayoutAttribute:(int)attribute toLayoutAttribute:(char)layoutAttribute ignoreMargin:(uint64_t)margin withRange:(uint64_t)range
{
  objc_opt_self();
  v11 = [(SXComponentLayoutAttributeDescriptor *)[SXTextComponentLayoutAttributeDescriptor alloc] initWithFromLayoutAttribute:a2 toLayoutAttribute:attribute ignoreMargin:layoutAttribute];
  if (v11)
  {
    v11[4] = margin;
    v11[5] = range;
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

- (void)setResultingExclusionPath:(uint64_t)path
{
  if (path)
  {
    objc_storeStrong((path + 24), a2);
  }
}

@end