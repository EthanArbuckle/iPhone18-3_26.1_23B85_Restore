@interface Coordinator
- (BOOL)shouldHandleCardSectionEngagement:(id)engagement;
- (_TtC26ResponseGenerationUIPlugin11Coordinator)init;
- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated;
@end

@implementation Coordinator

- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_BE04(controller);
}

- (BOOL)shouldHandleCardSectionEngagement:(id)engagement
{
  engagementCopy = engagement;
  engagementCopy2 = engagement;
  selfCopy = self;
  LOBYTE(engagementCopy) = sub_7FDC(engagementCopy);

  return engagementCopy & 1;
}

- (_TtC26ResponseGenerationUIPlugin11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end