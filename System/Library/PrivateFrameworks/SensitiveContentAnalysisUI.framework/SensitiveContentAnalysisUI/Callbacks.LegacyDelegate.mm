@interface Callbacks.LegacyDelegate
- (BOOL)respondsToSelector:(SEL)selector;
- (_TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate)init;
- (void)didBypassInterventionWithUpdatedAnalyses:(id)analyses container:(id)container;
@end

@implementation Callbacks.LegacyDelegate

- (BOOL)respondsToSelector:(SEL)selector
{
  selfCopy = self;
  LOBYTE(selector) = sub_1BC717E34(selector);

  return selector & 1;
}

- (_TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didBypassInterventionWithUpdatedAnalyses:(id)analyses container:(id)container
{
  sub_1BC75BDE0();
  v7[2] = container;
  v7[3] = self;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BC7182DC(sub_1BC71CC98, v7);
  swift_unknownObjectRelease();
}

@end