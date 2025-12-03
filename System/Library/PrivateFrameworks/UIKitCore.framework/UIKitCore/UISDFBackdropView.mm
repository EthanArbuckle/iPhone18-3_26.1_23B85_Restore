@interface UISDFBackdropView
+ (Class)layerClass;
- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8817UISDFBackdropView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8817UISDFBackdropView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation UISDFBackdropView

- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8817UISDFBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for UISDFBackdropView();
  height = [(_UIMaterialDefinitionView *)&v11 initWithFrame:x, y, width, height];
  v8 = qword_1ED48CFD0;
  v9 = height;
  if (v8 != -1)
  {
    swift_once();
  }

  [qword_1ED48CC18 addObject_];

  return v9;
}

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1ED48EC00);

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8817UISDFBackdropView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UISDFBackdropView();
  v2 = v3.receiver;
  [(UIView *)&v3 didMoveToWindow];
  sub_188F623D4();
}

@end