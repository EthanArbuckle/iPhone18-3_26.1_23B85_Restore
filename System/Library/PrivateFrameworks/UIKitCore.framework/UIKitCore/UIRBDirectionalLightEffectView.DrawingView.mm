@interface UIRBDirectionalLightEffectView.DrawingView
+ (Class)layerClass;
- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithCoder:(id)a3;
- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithFrame:(CGRect)a3;
- (void)RBLayer:(id)a3 draw:(id)a4;
@end

@implementation UIRBDirectionalLightEffectView.DrawingView

+ (Class)layerClass
{
  sub_189233AB8();

  return swift_getObjCClassFromMetadata();
}

- (void)RBLayer:(id)a3 draw:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1892331A8(v6, v7);
}

- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = MEMORY[0x1E69E7CC0];
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = MEMORY[0x1E69E7CC0];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(UIView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end