@interface WFWidgetChicletStyle
+ (id)fallbackWidgetStyleWithAction:(id)a3;
+ (id)widgetStyleWithAction:(id)a3;
- (BOOL)needsSheenView;
- (NSString)foregroundCompositingFilter;
- (WFColor)foregroundColor;
- (WFGradient)baseGradient;
- (double)foregroundOpacity;
- (double)foregroundSaturation;
@end

@implementation WFWidgetChicletStyle

+ (id)widgetStyleWithAction:(id)a3
{
  v3 = a3;
  v4 = sub_1C83C81C4(v3);

  return v4;
}

- (double)foregroundOpacity
{
  v2 = self;
  v3 = sub_1C83C83C8();

  return v3;
}

- (double)foregroundSaturation
{
  v2 = self;
  v3 = sub_1C83C84A8();

  return v3;
}

- (WFColor)foregroundColor
{
  v2 = self;
  v3 = sub_1C83C8590();

  return v3;
}

- (NSString)foregroundCompositingFilter
{
  v2 = self;
  v3 = sub_1C83C8678();

  return v3;
}

- (WFGradient)baseGradient
{
  v2 = self;
  v3 = sub_1C83C88E4();

  return v3;
}

- (BOOL)needsSheenView
{
  v2 = self;
  v3 = sub_1C83C8974();

  return v3 & 1;
}

+ (id)fallbackWidgetStyleWithAction:(id)a3
{
  v3 = a3;
  sub_1C83C89D4(v3);
  v5 = v4;

  return v5;
}

@end