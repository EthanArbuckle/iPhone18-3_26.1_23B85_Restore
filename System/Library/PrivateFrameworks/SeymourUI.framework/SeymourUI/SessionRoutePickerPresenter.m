@interface SessionRoutePickerPresenter
- (_TtC9SeymourUI27SessionRoutePickerPresenter)init;
- (void)routingController:(id)a3 didFailToPickRouteWithError:(id)a4;
- (void)routingControllerAvailableRoutesDidChange:(id)a3;
@end

@implementation SessionRoutePickerPresenter

- (_TtC9SeymourUI27SessionRoutePickerPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)routingControllerAvailableRoutesDidChange:(id)a3
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  sub_20BBBAAE0();
}

- (void)routingController:(id)a3 didFailToPickRouteWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_20BBC0908();
}

@end