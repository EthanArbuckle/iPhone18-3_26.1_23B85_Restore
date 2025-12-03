@interface UIRBDirectionalLightEffectView.DrawingView
+ (Class)layerClass;
- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithCoder:(id)coder;
- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithFrame:(CGRect)frame;
- (void)RBLayer:(id)layer draw:(id)draw;
@end

@implementation UIRBDirectionalLightEffectView.DrawingView

+ (Class)layerClass
{
  sub_189233AB8();

  return swift_getObjCClassFromMetadata();
}

- (void)RBLayer:(id)layer draw:(id)draw
{
  layerCopy = layer;
  drawCopy = draw;
  selfCopy = self;
  sub_1892331A8(layerCopy, drawCopy);
}

- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = MEMORY[0x1E69E7CC0];
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_timeOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = MEMORY[0x1E69E7CC0];
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(UIView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end