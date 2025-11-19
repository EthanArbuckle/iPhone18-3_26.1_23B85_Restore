@interface TextRenderLayer
- (_TtC20TextAnimationSupport15TextRenderLayer)init;
- (id)actionForLayer:forKey:;
- (void)layoutSublayers;
@end

@implementation TextRenderLayer

- (id)actionForLayer:forKey:
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];

  return v0;
}

- (void)layoutSublayers
{
  v2 = self;
  TextRenderLayer.layoutSublayers()();
}

- (_TtC20TextAnimationSupport15TextRenderLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end