@interface _UISliderColorKnobView
+ (Class)layerClass;
- (_TtC5UIKit22_UISliderColorKnobView)initWithCoder:(id)coder;
- (_TtC5UIKit22_UISliderColorKnobView)initWithFrame:(CGRect)frame;
@end

@implementation _UISliderColorKnobView

+ (Class)layerClass
{
  type metadata accessor for _UISliderColorKnobLayer();

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKit22_UISliderColorKnobView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UISliderColorKnobView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKit22_UISliderColorKnobView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UISliderColorKnobView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end