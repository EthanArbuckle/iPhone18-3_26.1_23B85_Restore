@interface Coordinator
- (BOOL)shouldHandleCardSectionEngagement:(id)a3;
- (_TtC26ResponseGenerationUIPlugin11Coordinator)init;
- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5;
@end

@implementation Coordinator

- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_BE04(a3);
}

- (BOOL)shouldHandleCardSectionEngagement:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_7FDC(v3);

  return v3 & 1;
}

- (_TtC26ResponseGenerationUIPlugin11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end