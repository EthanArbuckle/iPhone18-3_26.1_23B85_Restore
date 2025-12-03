@interface ActionPreviewActivity
- (_TtC8StocksUI21ActionPreviewActivity)init;
- (id)previewViewControllerForAction:(id)action;
- (void)commitViewController:(id)controller action:(id)action;
@end

@implementation ActionPreviewActivity

- (id)previewViewControllerForAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_22078ADA4(action);
  swift_unknownObjectRelease();

  return v6;
}

- (void)commitViewController:(id)controller action:(id)action
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
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