@interface SessionRoutePickerPresenter
- (_TtC9SeymourUI27SessionRoutePickerPresenter)init;
- (void)routingController:(id)controller didFailToPickRouteWithError:(id)error;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
@end

@implementation SessionRoutePickerPresenter

- (_TtC9SeymourUI27SessionRoutePickerPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  sub_20BBBAAE0();
}

- (void)routingController:(id)controller didFailToPickRouteWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_20BBC0908();
}

@end