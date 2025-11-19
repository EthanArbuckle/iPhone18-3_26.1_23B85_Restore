@interface SBHIconImageAppearanceStoreTintedValue
- (BOOL)isEqual:(id)a3;
- (void)initWithValue:(void *)a3 imageAppearance:;
@end

@implementation SBHIconImageAppearanceStoreTintedValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
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

- (void)initWithValue:(void *)a3 imageAppearance:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SBHIconImageAppearanceStoreTintedValue;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      v9 = [v7 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

@end