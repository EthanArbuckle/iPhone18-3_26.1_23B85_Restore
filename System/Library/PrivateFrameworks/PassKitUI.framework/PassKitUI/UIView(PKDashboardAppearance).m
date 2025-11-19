@interface UIView(PKDashboardAppearance)
- (void)pkui_setMaskType:()PKDashboardAppearance;
@end

@implementation UIView(PKDashboardAppearance)

- (void)pkui_setMaskType:()PKDashboardAppearance
{
  v8 = [a1 layer];
  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = 26.0;
  }

  else
  {
    v4 = 10.0;
  }

  v5 = 1;
  if (a3 <= 1)
  {
    if (a3)
    {
      v6 = v8;
      if (a3 != 1)
      {
        goto LABEL_15;
      }

      v7 = 3;
      goto LABEL_14;
    }

    v5 = 0;
    v4 = 0.0;
    v7 = 15;
    goto LABEL_13;
  }

  if (a3 == 2)
  {
    v7 = 12;
LABEL_13:
    v6 = v8;
    goto LABEL_14;
  }

  v6 = v8;
  if (a3 != 3)
  {
    goto LABEL_15;
  }

  v7 = 15;
LABEL_14:
  [v6 setMaskedCorners:v7];
LABEL_15:
  [v8 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v8 setCornerRadius:v4];
  [v8 setMasksToBounds:v5];
}

@end