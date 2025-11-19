@interface Callbacks.LegacyDelegate
- (BOOL)respondsToSelector:(SEL)a3;
- (_TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate)init;
- (void)didBypassInterventionWithUpdatedAnalyses:(id)a3 container:(id)a4;
@end

@implementation Callbacks.LegacyDelegate

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1BC717E34(a3);

  return a3 & 1;
}

- (_TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didBypassInterventionWithUpdatedAnalyses:(id)a3 container:(id)a4
{
  sub_1BC75BDE0();
  v7[2] = a4;
  v7[3] = self;
  swift_unknownObjectRetain();
  v6 = self;
  sub_1BC7182DC(sub_1BC71CC98, v7);
  swift_unknownObjectRelease();
}

@end