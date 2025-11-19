@interface _UIIntelligenceLightSourceView
- (_UIIntelligenceLightSourceView)initWithCoder:(id)a3;
- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)a3;
- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)a3 configuration:(id)a4;
@end

@implementation _UIIntelligenceLightSourceView

- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = -[_UIIntelligenceLightSourceView initWithFrame:preferAudioReactivity:](self, sel_initWithFrame_preferAudioReactivity_, [v9 prefersAudioReactivity], x, y, width, height);
  v11 = *(v9 + OBJC_IVAR____UIIntelligenceLightSourceConfiguration_wrapped);
  v12 = v10;

  v13 = OBJC_IVAR____UIIntelligenceLightSourceView_configuration;
  swift_beginAccess();
  *(&v12->super.super.super.isa + v13) = v11;

  return v12;
}

- (_UIIntelligenceLightSourceView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end