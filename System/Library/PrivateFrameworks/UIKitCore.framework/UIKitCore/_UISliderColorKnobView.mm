@interface _UISliderColorKnobView
+ (Class)layerClass;
- (_TtC5UIKit22_UISliderColorKnobView)initWithCoder:(id)a3;
- (_TtC5UIKit22_UISliderColorKnobView)initWithFrame:(CGRect)a3;
@end

@implementation _UISliderColorKnobView

+ (Class)layerClass
{
  type metadata accessor for _UISliderColorKnobLayer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKit22_UISliderColorKnobView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UISliderColorKnobView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKit22_UISliderColorKnobView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UISliderColorKnobView();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end