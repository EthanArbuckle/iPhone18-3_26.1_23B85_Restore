@interface AlertPresentationDelegatePresentationEnvironment
- (UIViewController)presentingViewController;
- (_TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment)init;
- (id)presentAlertWithConfigurationHandler:(id)a3;
- (void)dismissAlertWithToken:(id)a3 completionHandler:(id)a4;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation AlertPresentationDelegatePresentationEnvironment

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_1A4A35490(v10, a4, v8, v9);
  sub_1A3C784D4(v8, v9);
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_1A4A3557C(v10, a4, v8, v9);
  sub_1A3C784D4(v8, v9);
}

- (UIViewController)presentingViewController
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment) presentingViewController];

  return v2;
}

- (id)presentAlertWithConfigurationHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v8[2] = v4;
  v5 = self;
  v6 = sub_1A4A358F8(sub_1A3E79128, v8);
  _Block_release(v4);

  return v6;
}

- (void)dismissAlertWithToken:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
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
  v8 = self;
  sub_1A4A35CB0(a3, v6, v7);
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