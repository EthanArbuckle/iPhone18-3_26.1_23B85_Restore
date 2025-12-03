@interface STOrganizationSettingsRestrictionUtility
- (STOrganizationSettingsRestrictionUtility)init;
- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)controller restrictionPayloadUtility:(id)utility;
- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)controller restrictionPayloadUtility:(id)utility userDefaults:(id)defaults;
- (id)isImageGenerationAllowedForUserDSID:(id)d error:(id *)error;
- (void)isImageGenerationAllowedForUserDSID:(id)d completionHandler:(id)handler;
@end

@implementation STOrganizationSettingsRestrictionUtility

- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)controller restrictionPayloadUtility:(id)utility
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(&self->super.isa + OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation) = sub_1B83B5774(controller, utility);
  v9.receiver = self;
  v9.super_class = STOrganizationSettingsRestrictionUtility;
  v7 = [(STOrganizationSettingsRestrictionUtility *)&v9 init];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)controller restrictionPayloadUtility:(id)utility userDefaults:(id)defaults
{
  v9 = type metadata accessor for STOrganizationSettingsRestrictionUtilityImplementation();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_persistenceController] = controller;
  *&v10[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_restrictionPayloadUtility] = utility;
  *&v10[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_userDefaults] = defaults;
  v15.receiver = v10;
  v15.super_class = v9;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  defaultsCopy = defaults;
  *(&self->super.isa + OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation) = [(STOrganizationSettingsRestrictionUtility *)&v15 init];
  v14.receiver = self;
  v14.super_class = STOrganizationSettingsRestrictionUtility;
  v12 = [(STOrganizationSettingsRestrictionUtility *)&v14 init];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

- (void)isImageGenerationAllowedForUserDSID:(id)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_1B83DDE3C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = d;
  v14[6] = sub_1B83B6564;
  v14[7] = v12;
  dCopy = d;
  selfCopy = self;
  sub_1B83B4324(0, 0, v10, &unk_1B83E8B70, v14);
}

- (id)isImageGenerationAllowedForUserDSID:(id)d error:(id *)error
{
  v5 = *(&self->super.isa + OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation);
  dCopy = d;
  selfCopy = self;
  initWithBool_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

  return initWithBool_;
}

- (STOrganizationSettingsRestrictionUtility)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end