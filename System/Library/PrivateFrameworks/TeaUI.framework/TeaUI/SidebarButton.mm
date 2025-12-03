@interface SidebarButton
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityLabel;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation SidebarButton

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1D8026058();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1D8026124();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_1D8190F14();
  }

  selfCopy = self;
  OUTLINED_FUNCTION_6_54();
}

@end