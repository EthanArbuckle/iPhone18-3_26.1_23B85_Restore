@interface DescriptionTemplateView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)handleSelected:(id)selected;
@end

@implementation DescriptionTemplateView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
  sub_1E3E2E53C(only);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)handleSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_1E3E2F0AC(selectedCopy);
}

@end