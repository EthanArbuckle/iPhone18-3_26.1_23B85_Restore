@interface LegacyPersonBannerModelProxy
- (BOOL)popToViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)pushViewController:(id)a3 animated:(BOOL)a4;
- (_TtC12PhotosUICore28LegacyPersonBannerModelProxy)init;
- (id)presentAlertWithConfigurationHandler:(id)a3;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation LegacyPersonBannerModelProxy

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
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
  v17 = a3;
  v14 = self;
  v13(a3, ObjectType, v11);
  v15 = swift_unknownObjectRelease();
  if (v7)
  {
    (v9)(v15);

    sub_1A3C784D4(v9, v8);
    v16 = v17;
  }

  else
  {

    v16 = v14;
  }
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
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

  v9 = a3;
  v10 = self;
  sub_1A46BBFC4(v9, v7);
  sub_1A3C784D4(v7, v8);
}

- (BOOL)pushViewController:(id)a3 animated:(BOOL)a4
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (BOOL)popToViewController:(id)a3 animated:(BOOL)a4
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (id)presentAlertWithConfigurationHandler:(id)a3
{
  _Block_copy(a3);
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