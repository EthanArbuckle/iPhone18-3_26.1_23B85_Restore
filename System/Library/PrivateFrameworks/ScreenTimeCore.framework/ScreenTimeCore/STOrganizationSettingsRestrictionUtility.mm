@interface STOrganizationSettingsRestrictionUtility
- (STOrganizationSettingsRestrictionUtility)init;
- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)a3 restrictionPayloadUtility:(id)a4;
- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)a3 restrictionPayloadUtility:(id)a4 userDefaults:(id)a5;
- (id)isImageGenerationAllowedForUserDSID:(id)a3 error:(id *)a4;
- (void)isImageGenerationAllowedForUserDSID:(id)a3 completionHandler:(id)a4;
@end

@implementation STOrganizationSettingsRestrictionUtility

- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)a3 restrictionPayloadUtility:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(&self->super.isa + OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation) = sub_1B83B5774(a3, a4);
  v9.receiver = self;
  v9.super_class = STOrganizationSettingsRestrictionUtility;
  v7 = [(STOrganizationSettingsRestrictionUtility *)&v9 init];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

- (STOrganizationSettingsRestrictionUtility)initWithPersistenceController:(id)a3 restrictionPayloadUtility:(id)a4 userDefaults:(id)a5
{
  v9 = type metadata accessor for STOrganizationSettingsRestrictionUtilityImplementation();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_persistenceController] = a3;
  *&v10[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_restrictionPayloadUtility] = a4;
  *&v10[OBJC_IVAR____TtC14ScreenTimeCoreP33_85746A119BB273F4CF13C31ED127C55054STOrganizationSettingsRestrictionUtilityImplementation_userDefaults] = a5;
  v15.receiver = v10;
  v15.super_class = v9;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v11 = a5;
  *(&self->super.isa + OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation) = [(STOrganizationSettingsRestrictionUtility *)&v15 init];
  v14.receiver = self;
  v14.super_class = STOrganizationSettingsRestrictionUtility;
  v12 = [(STOrganizationSettingsRestrictionUtility *)&v14 init];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

- (void)isImageGenerationAllowedForUserDSID:(id)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_1B83DDE3C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = sub_1B83B6564;
  v14[7] = v12;
  v15 = a3;
  v16 = self;
  sub_1B83B4324(0, 0, v10, &unk_1B83E8B70, v14);
}

- (id)isImageGenerationAllowedForUserDSID:(id)a3 error:(id *)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR___STOrganizationSettingsRestrictionUtility_implementation);
  v6 = a3;
  v7 = self;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

  return v8;
}

- (STOrganizationSettingsRestrictionUtility)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end