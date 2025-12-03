@interface TintableShapeLayer
- (_TtC9SeymourUI18TintableShapeLayer)init;
- (_TtC9SeymourUI18TintableShapeLayer)initWithLayer:(id)layer;
- (void)setBorderColor:(CGColor *)color;
- (void)setStrokeColor:(CGColor *)color;
@end

@implementation TintableShapeLayer

- (void)setBorderColor:(CGColor *)color
{
  colorCopy = color;
  selfCopy = self;
  sub_20B5EB248(color, &selRef_setBorderColor_, &selRef_borderColor, &OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedBorderColor);
}

- (void)setStrokeColor:(CGColor *)color
{
  colorCopy = color;
  selfCopy = self;
  sub_20B5EB248(color, &selRef_setStrokeColor_, &selRef_strokeColor, &OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor);
}

- (_TtC9SeymourUI18TintableShapeLayer)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedBorderColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for TintableShapeLayer();
  return [(TintableShapeLayer *)&v3 init];
}

- (_TtC9SeymourUI18TintableShapeLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_20C13DA64();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedBorderColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor) = 0;
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_20C13DFD4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for TintableShapeLayer();
  v5 = [(TintableShapeLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

@end