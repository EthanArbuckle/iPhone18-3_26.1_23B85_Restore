@interface PillButton
+ (Class)layerClass;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation PillButton

+ (Class)layerClass
{
  sub_1D7E40380();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7E74A04();
}

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = sub_1D7FBD414();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D7FBD528(a3);
}

@end