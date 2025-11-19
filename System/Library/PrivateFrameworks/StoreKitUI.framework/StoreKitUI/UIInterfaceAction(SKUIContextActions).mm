@interface UIInterfaceAction(SKUIContextActions)
+ (id)actionWithTitle:()SKUIContextActions resource:handler:;
@end

@implementation UIInterfaceAction(SKUIContextActions)

+ (id)actionWithTitle:()SKUIContextActions resource:handler:
{
  v7 = MEMORY[0x277D75618];
  v8 = a4;
  v9 = [v7 actionWithTitle:a3 type:0 handler:a5];
  [v9 setTitleAlignment:4];
  v10 = [v8 _imageThatSuppressesAccessibilityHairlineThickening];

  [v10 size];
  v12 = [v10 imageWithAlignmentRectInsets:{(56.0 - v11) * -0.5, 0.0, (56.0 - v11) * -0.5, 0.0}];
  [v9 setTrailingImage:v12];

  return v9;
}

@end