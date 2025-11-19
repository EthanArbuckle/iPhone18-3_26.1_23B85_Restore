@interface SXComponentLayoutAttributeDescriptor
+ (SXComponentLayoutAttributeDescriptor)descriptorWithFromLayoutAttribute:(int)a3 toLayoutAttribute:(BOOL)a4 ignoreMargin:;
- (id)initWithFromLayoutAttribute:(int)a3 toLayoutAttribute:(char)a4 ignoreMargin:;
- (uint64_t)fromLayoutAttribute;
- (uint64_t)ignoreMargins;
- (uint64_t)toLayoutAttribute;
@end

@implementation SXComponentLayoutAttributeDescriptor

+ (SXComponentLayoutAttributeDescriptor)descriptorWithFromLayoutAttribute:(int)a3 toLayoutAttribute:(BOOL)a4 ignoreMargin:
{
  objc_opt_self();
  v7 = [SXComponentLayoutAttributeDescriptor alloc];
  if (v7)
  {
    v9.receiver = v7;
    v9.super_class = SXComponentLayoutAttributeDescriptor;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    if (v7)
    {
      v7->_fromLayoutAttribute = a2;
      v7->_toLayoutAttribute = a3;
      v7->_ignoreMargins = a4;
    }
  }

  return v7;
}

- (id)initWithFromLayoutAttribute:(int)a3 toLayoutAttribute:(char)a4 ignoreMargin:
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = SXComponentLayoutAttributeDescriptor;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *(result + 3) = a2;
      *(result + 4) = a3;
      *(result + 8) = a4;
    }
  }

  return result;
}

- (uint64_t)fromLayoutAttribute
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

- (uint64_t)toLayoutAttribute
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)ignoreMargins
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end