@interface UISDFElementView
+ (Class)layerClass;
- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView)initWithCoder:(id)a3;
- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView)initWithFrame:(CGRect)a3;
- (void)_prepareForLayerDump;
@end

@implementation UISDFElementView

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1ED48E368);

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UISDFElementView();
  return [(_UIMaterialDefinitionView *)&v8 initWithFrame:x, y, width, height];
}

- (void)_prepareForLayerDump
{
  v2 = self;
  sub_18900F434();
}

- (_TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_ACD4A08F4BE9D00246F2A9C24A80CA8816UISDFElementView_gradientOvalization) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UISDFElementView();
  v4 = a3;
  v5 = [(_UIMaterialDefinitionView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end