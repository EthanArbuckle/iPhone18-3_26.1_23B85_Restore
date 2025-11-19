@interface SearchCardView.Coordinator
- (BOOL)canPerformCommand:(id)a3;
- (_TtCV20VisualIntelligenceUI14SearchCardView11Coordinator)init;
- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5;
- (void)performCommand:(id)a3;
- (void)presentViewController:(id)a3;
@end

@implementation SearchCardView.Coordinator

- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_21DFF26EC(a3);
}

- (void)presentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21DFF11EC(a3);
}

- (BOOL)canPerformCommand:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_21DFF2814(v3);

  return v3 & 1;
}

- (void)performCommand:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21DFF18FC(a3);
}

- (_TtCV20VisualIntelligenceUI14SearchCardView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end