@interface STDeviceActivityDataSource
+ (BOOL)hasDataForUserWithAltDSID:(id)d userDeviceStates:(id)states;
+ (NSArray)allLocallyUsedBundleIdentifiers;
+ (NSDictionary)deviceIdentifiersByUserAltDSID;
+ (id)lastUpdatedDateFor:(id)for;
+ (id)totalWeeklyUsageDuringDateInterval:(id)interval userAltDSID:(id)d error:(id *)error;
+ (void)downloadRemoteData;
+ (void)refreshAndUploadLocalDataSinceDate:(id)date completionHandler:(id)handler;
+ (void)setGenesisDate:(id)date;
- (_TtC14ScreenTimeCore26STDeviceActivityDataSource)init;
@end

@implementation STDeviceActivityDataSource

+ (NSDictionary)deviceIdentifiersByUserAltDSID
{
  _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F58, &qword_1B83E8F48);
  v2 = sub_1B83DDC6C();

  return v2;
}

+ (NSArray)allLocallyUsedBundleIdentifiers
{
  _s14ScreenTimeCore26STDeviceActivityDataSourceC31allLocallyUsedBundleIdentifiersSaySSGvgZ_0();
  v2 = sub_1B83DDDCC();

  return v2;
}

+ (void)setGenesisDate:(id)date
{
  v3 = sub_1B83DD94C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD93C();
  _s14ScreenTimeCore26STDeviceActivityDataSourceC14setGenesisDateyy10Foundation0J0VFZ_0(v7);
  (*(v4 + 8))(v7, v3);
}

+ (id)totalWeeklyUsageDuringDateInterval:(id)interval userAltDSID:(id)d error:(id *)error
{
  v6 = sub_1B83DD82C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD80C();
  if (d)
  {
    v11 = sub_1B83DDCEC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_1B83C1E9C(v10, v11, v13);
  (*(v7 + 8))(v10, v6);

  return v14;
}

+ (id)lastUpdatedDateFor:(id)for
{
  v3 = sub_1B83DD82C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  sub_1B83DD80C();
  static STDeviceActivityDataSource.lastUpdatedDate(for:)(v7, v11);
  (*(v4 + 8))(v7, v3);
  v12 = sub_1B83DD94C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_1B83DD91C();
    (*(v13 + 8))(v11, v12);
    v15 = v16;
  }

  return v15;
}

+ (void)refreshAndUploadLocalDataSinceDate:(id)date completionHandler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v17 = _Block_copy(handler);
  if (date)
  {
    sub_1B83DD93C();
    v18 = sub_1B83DD94C();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = sub_1B83DD94C();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = sub_1B83DDE3C();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_1B83C24E8(v16, v14);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1B83C2558(v14, v23 + v22);
  v24 = (v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_1B83C2CD8;
  v24[1] = v20;

  sub_1B83B4324(0, 0, v9, &unk_1B83E8F40, v23);

  sub_1B83AD84C(v16, &qword_1EBA84F28, &qword_1B83E8E78);
}

+ (void)downloadRemoteData
{
  v2 = sub_1B83DDB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DDB5C();
  sub_1B83DDB0C();
  (*(v3 + 8))(v6, v2);
}

+ (BOOL)hasDataForUserWithAltDSID:(id)d userDeviceStates:(id)states
{
  if (d)
  {
    v5 = sub_1B83DDCEC();
    v7 = v6;
    if (states)
    {
LABEL_3:
      sub_1B83A1210(0, &qword_1EBA83718, off_1E7CE5FF8);
      sub_1B83C2C74(&qword_1EBA83710, &qword_1EBA83718, off_1E7CE5FF8);
      v8 = sub_1B83DDE7C();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (states)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0();
  if (qword_1ED9A0050 != -1)
  {
    swift_once();
  }

  v10 = sub_1B83DDBFC();
  __swift_project_value_buffer(v10, qword_1ED9A0058);
  v11 = sub_1B83DDBDC();
  v12 = _s14ScreenTimeCore26STDeviceActivityDataSourceC03hasF018forUserWithAltDSID16userDeviceStates019deviceIdentifiersByjlM00qrsC14DuetIdentifierSbSSSg_ShySo06STUserO5StateCGSgSDySSSaySSGGSDySSShySSGGtFZ_0(v5, v7, v8, v9, v11);

  return v12 & 1;
}

- (_TtC14ScreenTimeCore26STDeviceActivityDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STDeviceActivityDataSource();
  return [(STDeviceActivityDataSource *)&v3 init];
}

@end