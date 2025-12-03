@interface PillButton
+ (Class)layerClass;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation PillButton

+ (Class)layerClass
{
  sub_1D7E40380();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D7E74A04();
}

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_1D7FBD414();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D7FBD528(color);
}

@end