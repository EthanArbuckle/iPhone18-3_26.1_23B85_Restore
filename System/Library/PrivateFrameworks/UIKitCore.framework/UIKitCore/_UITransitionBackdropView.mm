@interface _UITransitionBackdropView
+ (Class)layerClass;
- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation _UITransitionBackdropView

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1ED48EC00);

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UITransitionBackdropView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UITransitionBackdropView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end