@interface MultiGroupHorizontalCollectionController.MultiGroupContainerView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation MultiGroupHorizontalCollectionController.MultiGroupContainerView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_6_12();
  sub_1E408E538(only, v6);
  OUTLINED_FUNCTION_18_3();

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

@end