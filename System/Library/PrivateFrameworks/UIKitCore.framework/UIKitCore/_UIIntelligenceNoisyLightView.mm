@interface _UIIntelligenceNoisyLightView
+ (Class)layerClass;
- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithCoder:(id)coder;
- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithFrame:(CGRect)frame;
- (void)_layerCornerCurveDidChange:(id)change;
- (void)_layerCornerRadiusDidChange:(double)change;
- (void)_layerMaskedCornersDidChange:(unint64_t)change;
- (void)layoutSubviews;
@end

@implementation _UIIntelligenceNoisyLightView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UIView *)&v3 layoutSubviews];
  [v2 bounds];
  swift_getKeyPath();
  sub_188DEDFE8();
}

+ (Class)layerClass
{
  sub_18912BF9C();

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithCoder:(id)coder
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_layerCornerRadiusDidChange:(double)change
{
  swift_getKeyPath();
  selfCopy = self;
  sub_18912BB88();
}

- (void)_layerCornerCurveDidChange:(id)change
{
  swift_getKeyPath();
  changeCopy = change;
  selfCopy = self;
  sub_18912BC24(changeCopy);
}

- (void)_layerMaskedCornersDidChange:(unint64_t)change
{
  swift_getKeyPath();
  selfCopy = self;
  sub_18912BCBC();
}

- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end