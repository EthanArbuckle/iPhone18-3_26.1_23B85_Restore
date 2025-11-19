@interface SSKDisplayProfile
+ (id)mirroringMainDisplayProfileWithDelegate:(id)a3;
+ (id)sceneHostingProfileWithDelegate:(id)a3 builder:(id)a4;
- (SSKDisplayProfile)init;
- (SSKDisplayProfile)initWithAnyConfiguration:(id)a3;
- (SSKDisplayProfile)initWithDelegate:(id)a3 builder:(id)a4;
- (SSKDisplayProfileDelegate)delegate;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SSKDisplayProfile

- (SSKDisplayProfileDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (id)sceneHostingProfileWithDelegate:(id)a3 builder:(id)a4
{
  v4 = _Block_copy(a4);
  v8[2] = v4;
  swift_getObjCClassMetadata();
  v5 = swift_unknownObjectRetain();
  v6 = static SSKDisplayProfile.sceneHostingProfile(with:builder:)(v5, sub_265FDB788, v8);
  _Block_release(v4);
  swift_unknownObjectRelease();

  return v6;
}

+ (id)mirroringMainDisplayProfileWithDelegate:(id)a3
{
  swift_getObjCClassMetadata();
  v3 = _sSo17SSKDisplayProfileC13ShellSceneKitE020mirroringMainDisplayB04withABXDSo0aB8Delegate_p_tFZ_0();

  return v3;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  SSKDisplayProfile.appendDescription(toFormatter:)();
  swift_unknownObjectRelease();
}

- (SSKDisplayProfile)initWithDelegate:(id)a3 builder:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_unknownObjectRetain();
  v7 = sub_265FDB664(v6, self, v5);
  _Block_release(v5);
  swift_unknownObjectRelease();
  return v7;
}

- (SSKDisplayProfile)initWithAnyConfiguration:(id)a3
{
  swift_unknownObjectRetain();
  sub_265FEC450();
  swift_unknownObjectRelease();
  *(self + OBJC_IVAR___SSKDisplayProfile_deactivationReasonsWhenActive) = 0;
  swift_unknownObjectWeakInit();
  sub_265FDB5F0(v17, v16);
  swift_dynamicCast();
  v4 = v12;
  v5 = v14;
  v6 = v15;
  v7 = self + OBJC_IVAR___SSKDisplayProfile_configuration;
  *v7 = v11;
  *(v7 + 1) = v4;
  *(v7 + 1) = v13;
  v7[32] = v5;
  v7[33] = v6;
  v10.receiver = self;
  v10.super_class = SSKDisplayProfile;
  v8 = [(SSKDisplayProfile *)&v10 init];
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v8;
}

- (SSKDisplayProfile)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end