@interface UIView(NCPlatterShadowAdditions)
- (BOOL)nc_isPlatterSubordinateIconShadowEnabled;
- (void)nc_setPlatterSubordinateIconShadowEnabled:()NCPlatterShadowAdditions;
@end

@implementation UIView(NCPlatterShadowAdditions)

- (BOOL)nc_isPlatterSubordinateIconShadowEnabled
{
  layer = [self layer];
  [layer shadowOpacity];
  if (!BSFloatEqualToFloat())
  {
    goto LABEL_7;
  }

  [layer shadowRadius];
  if (v2 != 7.0)
  {
    goto LABEL_7;
  }

  [layer shadowOffset];
  v4 = 0;
  if (v5 == 0.0 && v3 == 3.0)
  {
    if ([layer shadowColor])
    {
      shadowColor = [layer shadowColor];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v4 = CGColorEqualToColor(shadowColor, [blackColor CGColor]);

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
  layer = [self layer];
  v7 = layer;
  if (a3)
  {
    [layer setShadowPathIsBounds:1];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v7 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    LODWORD(v6) = 1045220557;
    [v7 setShadowOpacity:v6];
    [v7 setShadowOffset:{0.0, 3.0}];
    [v7 setShadowRadius:7.0];
  }

  else
  {
    [layer setShadowOpacity:0.0];
  }
}

@end