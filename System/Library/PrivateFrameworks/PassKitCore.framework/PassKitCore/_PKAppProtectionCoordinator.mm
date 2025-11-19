@interface _PKAppProtectionCoordinator
+ (_PKAppProtectionCoordinator)shared;
+ (id)sharedInstanceForApp:(id)a3;
- (BOOL)isEffectivelyLocked;
- (_PKAppProtectionCoordinator)init;
- (void)isShieldRequiredWithCompletionHandler:(id)a3;
- (void)requestAccess;
- (void)requestAccessWithCompletionHandler:(id)a3;
@end

@implementation _PKAppProtectionCoordinator

+ (_PKAppProtectionCoordinator)shared
{
  v2 = _s11PassKitCore24AppProtectionCoordinatorC6sharedACvgZ_0();

  return v2;
}

+ (id)sharedInstanceForApp:(id)a3
{
  v3 = qword_1EB5980F0;
  v4 = a3;
  v5 = v4;
  if (v3 != -1)
  {
    v4 = swift_once();
  }

  v6 = qword_1EB598928;
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock((v6 + 24));
  sub_1AD3DABC4((v6 + 16), &v9);
  os_unfair_lock_unlock((v6 + 24));

  v7 = v9;

  return v7;
}

- (BOOL)isEffectivelyLocked
{
  v2 = self;
  if (PKAppProtectionEnabled())
  {
    v3 = [*(&v2->super.isa + OBJC_IVAR____PKAppProtectionCoordinator_application) isEffectivelyLocked];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)isShieldRequiredWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1ADB06720();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1ADB78B60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1ADB78B68;
  v12[5] = v11;
  v13 = self;
  sub_1AD4BBDF0(0, 0, v7, &unk_1ADB78B70, v12);
}

- (void)requestAccess
{
  v2 = self;
  AppProtectionCoordinator.requestAccess()();
}

- (void)requestAccessWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1ADB06720();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1ADB78B40;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1ADB78B48;
  v12[5] = v11;
  v13 = self;
  sub_1AD4BBDF0(0, 0, v7, &unk_1ADB78B50, v12);
}

- (_PKAppProtectionCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end