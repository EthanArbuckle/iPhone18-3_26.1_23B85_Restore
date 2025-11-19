@interface _UIIntelligenceNoisyLightView
+ (Class)layerClass;
- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithCoder:(id)a3;
- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithFrame:(CGRect)a3;
- (void)_layerCornerCurveDidChange:(id)a3;
- (void)_layerCornerRadiusDidChange:(double)a3;
- (void)_layerMaskedCornersDidChange:(unint64_t)a3;
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

- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithCoder:(id)a3
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)_layerCornerRadiusDidChange:(double)a3
{
  swift_getKeyPath();
  v4 = self;
  sub_18912BB88();
}

- (void)_layerCornerCurveDidChange:(id)a3
{
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  sub_18912BC24(v5);
}

- (void)_layerMaskedCornersDidChange:(unint64_t)a3
{
  swift_getKeyPath();
  v4 = self;
  sub_18912BCBC();
}

- (_TtC5UIKit29_UIIntelligenceNoisyLightView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end