@interface UIView(NCPlatterShadowAdditions)
- (BOOL)nc_isPlatterSubordinateIconShadowEnabled;
- (void)nc_setPlatterSubordinateIconShadowEnabled:()NCPlatterShadowAdditions;
@end

@implementation UIView(NCPlatterShadowAdditions)

- (BOOL)nc_isPlatterSubordinateIconShadowEnabled
{
  v1 = [a1 layer];
  [v1 shadowOpacity];
  if (!BSFloatEqualToFloat())
  {
    goto LABEL_7;
  }

  [v1 shadowRadius];
  if (v2 != 7.0)
  {
    goto LABEL_7;
  }

  [v1 shadowOffset];
  v4 = 0;
  if (v5 == 0.0 && v3 == 3.0)
  {
    if ([v1 shadowColor])
    {
      v6 = [v1 shadowColor];
      v7 = [MEMORY[0x277D75348] blackColor];
      v4 = CGColorEqualToColor(v6, [v7 CGColor]);

      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (void)nc_setPlatterSubordinateIconShadowEnabled:()NCPlatterShadowAdditions
{
  v4 = [a1 layer];
  v7 = v4;
  if (a3)
  {
    [v4 setShadowPathIsBounds:1];
    v5 = [MEMORY[0x277D75348] blackColor];
    [v7 setShadowColor:{objc_msgSend(v5, "CGColor")}];

    LODWORD(v6) = 1045220557;
    [v7 setShadowOpacity:v6];
    [v7 setShadowOffset:{0.0, 3.0}];
    [v7 setShadowRadius:7.0];
  }

  else
  {
    [v4 setShadowOpacity:0.0];
  }
}

@end