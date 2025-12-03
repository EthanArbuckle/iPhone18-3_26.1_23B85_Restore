@interface _UIIntelligenceLightSourceView
- (_UIIntelligenceLightSourceView)initWithCoder:(id)coder;
- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)frame;
- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)frame configuration:(id)configuration;
@end

@implementation _UIIntelligenceLightSourceView

- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v10 = -[_UIIntelligenceLightSourceView initWithFrame:preferAudioReactivity:](self, sel_initWithFrame_preferAudioReactivity_, [configurationCopy prefersAudioReactivity], x, y, width, height);
  v11 = *(configurationCopy + OBJC_IVAR____UIIntelligenceLightSourceConfiguration_wrapped);
  v12 = v10;

  v13 = OBJC_IVAR____UIIntelligenceLightSourceView_configuration;
  swift_beginAccess();
  *(&v12->super.super.super.isa + v13) = v11;

  return v12;
}

- (_UIIntelligenceLightSourceView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_UIIntelligenceLightSourceView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end