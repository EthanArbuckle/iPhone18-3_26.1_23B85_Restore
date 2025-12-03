@interface WFVariablePillHostingView
- (CGSize)intrinsicContentSize;
- (WFVariablePillHostingView)initWithName:(id)name icon:(id)icon font:(id)font available:(BOOL)available height:(double)height controlState:(unint64_t)state;
@end

@implementation WFVariablePillHostingView

- (WFVariablePillHostingView)initWithName:(id)name icon:(id)icon font:(id)font available:(BOOL)available height:(double)height controlState:(unint64_t)state
{
  v13 = sub_1C840CDDC();
  v15 = v14;
  iconCopy = icon;
  fontCopy = font;
  return sub_1C8340218(v13, v15, icon, font, available, state, height);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1C83405C0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end