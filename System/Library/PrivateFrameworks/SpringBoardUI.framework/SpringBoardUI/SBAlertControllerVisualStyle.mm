@interface SBAlertControllerVisualStyle
- (SBAlertControllerVisualStyle)init;
@end

@implementation SBAlertControllerVisualStyle

- (SBAlertControllerVisualStyle)init
{
  v6.receiver = self;
  v6.super_class = SBAlertControllerVisualStyle;
  v2 = [(UIAlertControllerVisualStyle *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = SBAlertControllerVisualStyle;
    v2->_permittedActionLayoutDirection = [(UIAlertControllerVisualStyleAlert *)&v5 permittedActionLayoutDirection];
  }

  return v3;
}

@end