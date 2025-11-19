@interface _UIBarButtonItemDataBaseFallback
+ (id)fallback;
- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4;
- (id)fontForState:(int64_t)a3 style:(int64_t)a4;
@end

@implementation _UIBarButtonItemDataBaseFallback

+ (id)fallback
{
  v2 = fallback_fallback;
  if (!fallback_fallback)
  {
    v3 = objc_opt_new();
    v4 = fallback_fallback;
    fallback_fallback = v3;

    v2 = fallback_fallback;
  }

  return v2;
}

- (id)fontForState:(int64_t)a3 style:(int64_t)a4
{
  if (a4 == 2)
  {
    v9 = _UIBarsUseDynamicType();
    v7 = off_1E70ECC18;
    if (v9)
    {
      v10 = UIFontTextStyleEmphasizedBody;
LABEL_12:
      v8 = [v7 preferredFontForTextStyle:*v10];
      goto LABEL_16;
    }

    v8 = [off_1E70ECC18 boldSystemFontOfSize:17.0];
  }

  else
  {
    if (a4)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"_UIBarButtonItemData.m" lineNumber:52 description:{@"Unsupported style %li", a4}];

      v8 = 0;
      goto LABEL_16;
    }

    v5 = _UISolariumEnabled();
    v6 = _UIBarsUseDynamicType();
    v7 = off_1E70ECC18;
    if (v5)
    {
      if (v6)
      {
        [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
      }

      else
      {
        [off_1E70ECC18 systemFontOfSize:17.0 weight:*off_1E70ECD20];
      }
      v8 = ;
      goto LABEL_16;
    }

    if (v6)
    {
      v10 = &UIFontTextStyleBody;
      goto LABEL_12;
    }

    v8 = [off_1E70ECC18 systemFontOfSize:17.0];
  }

LABEL_16:

  return v8;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4
{
  v4 = 0.0;
  v5 = 0.0;
  result.vertical = v5;
  result.horizontal = v4;
  return result;
}

- (UIOffset)backgroundImagePositionAdjustmentForState:(int64_t)a3 style:(int64_t)a4
{
  v4 = 0.0;
  v5 = 0.0;
  result.vertical = v5;
  result.horizontal = v4;
  return result;
}

@end