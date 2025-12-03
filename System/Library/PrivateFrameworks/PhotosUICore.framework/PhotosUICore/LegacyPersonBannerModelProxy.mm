@interface LegacyPersonBannerModelProxy
- (BOOL)popToViewController:(id)controller animated:(BOOL)animated;
- (BOOL)pushViewController:(id)controller animated:(BOOL)animated;
- (_TtC12PhotosUICore28LegacyPersonBannerModelProxy)init;
- (id)presentAlertWithConfigurationHandler:(id)handler;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation LegacyPersonBannerModelProxy

- (void)presentViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1A3F3D540;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = self + OBJC_IVAR____TtC12PhotosUICore28LegacyPersonBannerModelProxy_model;
  swift_unknownObjectUnownedLoadStrong();
  v11 = *(v10 + 1);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  controllerCopy = controller;
  selfCopy = self;
  v13(controller, ObjectType, v11);
  v15 = swift_unknownObjectRelease();
  if (v7)
  {
    (v9)(v15);

    sub_1A3C784D4(v9, v8);
    v16 = controllerCopy;
  }

  else
  {

    v16 = selfCopy;
  }
}

- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3F3D4CC;
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1A46BBFC4(controllerCopy, v7);
  sub_1A3C784D4(v7, v8);
}

- (BOOL)pushViewController:(id)controller animated:(BOOL)animated
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (BOOL)popToViewController:(id)controller animated:(BOOL)animated
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (id)presentAlertWithConfigurationHandler:(id)handler
{
  _Block_copy(handler);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (_TtC12PhotosUICore28LegacyPersonBannerModelProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end