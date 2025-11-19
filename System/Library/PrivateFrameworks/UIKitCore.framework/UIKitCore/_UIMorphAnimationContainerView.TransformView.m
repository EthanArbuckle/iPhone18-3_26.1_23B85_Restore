@interface _UIMorphAnimationContainerView.TransformView
+ (Class)layerClass;
- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithCoder:(id)a3;
- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithFrame:(CGRect)a3;
@end

@implementation _UIMorphAnimationContainerView.TransformView

+ (Class)layerClass
{
  sub_188F2A56C();

  return swift_getObjCClassFromMetadata();
}

- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end