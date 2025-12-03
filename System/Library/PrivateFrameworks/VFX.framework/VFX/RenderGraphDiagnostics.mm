@interface RenderGraphDiagnostics
- (_TtC3VFX22RenderGraphDiagnostics)init;
- (void)addGenericRenderGraphErrorWithMessage:(id)message;
@end

@implementation RenderGraphDiagnostics

- (void)addGenericRenderGraphErrorWithMessage:(id)message
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  selfCopy = self;
  sub_1AF9A32D8(v4, v6);
}

- (_TtC3VFX22RenderGraphDiagnostics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end