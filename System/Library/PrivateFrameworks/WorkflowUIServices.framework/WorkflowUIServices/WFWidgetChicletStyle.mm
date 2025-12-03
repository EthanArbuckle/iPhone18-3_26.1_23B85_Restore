@interface WFWidgetChicletStyle
+ (id)fallbackWidgetStyleWithAction:(id)action;
+ (id)widgetStyleWithAction:(id)action;
- (BOOL)needsSheenView;
- (NSString)foregroundCompositingFilter;
- (WFColor)foregroundColor;
- (WFGradient)baseGradient;
- (double)foregroundOpacity;
- (double)foregroundSaturation;
@end

@implementation WFWidgetChicletStyle

+ (id)widgetStyleWithAction:(id)action
{
  actionCopy = action;
  v4 = sub_1C83C81C4(actionCopy);

  return v4;
}

- (double)foregroundOpacity
{
  selfCopy = self;
  v3 = sub_1C83C83C8();

  return v3;
}

- (double)foregroundSaturation
{
  selfCopy = self;
  v3 = sub_1C83C84A8();

  return v3;
}

- (WFColor)foregroundColor
{
  selfCopy = self;
  v3 = sub_1C83C8590();

  return v3;
}

- (NSString)foregroundCompositingFilter
{
  selfCopy = self;
  v3 = sub_1C83C8678();

  return v3;
}

- (WFGradient)baseGradient
{
  selfCopy = self;
  v3 = sub_1C83C88E4();

  return v3;
}

- (BOOL)needsSheenView
{
  selfCopy = self;
  v3 = sub_1C83C8974();

  return v3 & 1;
}

+ (id)fallbackWidgetStyleWithAction:(id)action
{
  actionCopy = action;
  sub_1C83C89D4(actionCopy);
  v5 = v4;

  return v5;
}

@end