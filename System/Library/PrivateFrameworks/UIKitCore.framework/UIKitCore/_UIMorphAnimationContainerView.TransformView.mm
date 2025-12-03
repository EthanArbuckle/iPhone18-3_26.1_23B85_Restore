@interface _UIMorphAnimationContainerView.TransformView
+ (Class)layerClass;
- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithCoder:(id)coder;
- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithFrame:(CGRect)frame;
@end

@implementation _UIMorphAnimationContainerView.TransformView

+ (Class)layerClass
{
  sub_188F2A56C();

  return swift_getObjCClassFromMetadata();
}

- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit30_UIMorphAnimationContainerView13TransformView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end