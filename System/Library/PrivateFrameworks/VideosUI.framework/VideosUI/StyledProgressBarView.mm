@interface StyledProgressBarView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (double)accessibilityProgress;
- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
@end

@implementation StyledProgressBarView

- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1E41ED0D4(selected, animated, coordinator);
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  v7 = sub_1E41ED274(only, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)accessibilityProgress
{
  selfCopy = self;
  sub_1E41EE998();
  v4 = v3;

  return v4;
}

@end