@interface ActionPreviewActivity
- (_TtC8StocksUI21ActionPreviewActivity)init;
- (id)previewViewControllerForAction:(id)a3;
- (void)commitViewController:(id)a3 action:(id)a4;
@end

@implementation ActionPreviewActivity

- (id)previewViewControllerForAction:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_22078ADA4(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)commitViewController:(id)a3 action:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_22078BDC0();

  swift_unknownObjectRelease();
}

- (_TtC8StocksUI21ActionPreviewActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end