@interface _UITransitionBackdropView
+ (Class)layerClass;
- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithCoder:(id)a3;
- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation _UITransitionBackdropView

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1ED48EC00);

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UITransitionBackdropView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_F084B5C1489DDF8EC47531A7840D5DBB25_UITransitionBackdropView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UITransitionBackdropView();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end