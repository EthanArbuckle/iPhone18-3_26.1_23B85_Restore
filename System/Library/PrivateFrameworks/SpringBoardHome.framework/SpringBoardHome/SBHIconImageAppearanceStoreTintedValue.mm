@interface SBHIconImageAppearanceStoreTintedValue
- (BOOL)isEqual:(id)equal;
- (void)initWithValue:(void *)value imageAppearance:;
@end

@implementation SBHIconImageAppearanceStoreTintedValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      if (BSEqualObjects())
      {
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)initWithValue:(void *)value imageAppearance:
{
  v6 = a2;
  valueCopy = value;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = SBHIconImageAppearanceStoreTintedValue;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      v9 = [valueCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

@end