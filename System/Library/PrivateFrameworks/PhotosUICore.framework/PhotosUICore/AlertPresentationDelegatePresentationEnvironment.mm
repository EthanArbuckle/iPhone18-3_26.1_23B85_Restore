@interface AlertPresentationDelegatePresentationEnvironment
- (UIViewController)presentingViewController;
- (_TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment)init;
- (id)presentAlertWithConfigurationHandler:(id)handler;
- (void)dismissAlertWithToken:(id)token completionHandler:(id)handler;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation AlertPresentationDelegatePresentationEnvironment

- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1A3F3D540;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1A4A35490(controllerCopy, animated, v8, v9);
  sub_1A3C784D4(v8, v9);
}

- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1A3F3D540;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1A4A3557C(controllerCopy, animated, v8, v9);
  sub_1A3C784D4(v8, v9);
}

- (UIViewController)presentingViewController
{
  presentingViewController = [*(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment) presentingViewController];

  return presentingViewController;
}

- (id)presentAlertWithConfigurationHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v8[2] = v4;
  selfCopy = self;
  v6 = sub_1A4A358F8(sub_1A3E79128, v8);
  _Block_release(v4);

  return v6;
}

- (void)dismissAlertWithToken:(id)token completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1A3F3D4CC;
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A4A35CB0(token, v6, v7);
  sub_1A3C784D4(v6, v7);
  swift_unknownObjectRelease();
}

- (_TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end