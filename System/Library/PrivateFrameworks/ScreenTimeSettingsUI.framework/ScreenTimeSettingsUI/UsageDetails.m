@interface UsageDetails
+ (NSString)appUsageItemIdentifier;
+ (NSString)categoryUsageItemIdentifier;
+ (NSString)notificationUsageItemIdentifier;
+ (NSString)pickupUsageItemIdentifier;
+ (NSString)screenTimeUsageItemIdentifier;
+ (NSString)webUsageItemIdentifier;
+ (id)detailsForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 dateInterval:(id)a5 referenceDate:(id)a6 usageContext:(int64_t)a7 error:(id *)a8;
+ (id)earliestUsageDateForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 error:(id *)a5;
- (NSArray)usageItems;
- (NSDate)lastUpdatedDate;
- (NSDictionary)firstPickupByWeekdayByWeek;
- (_TtC20ScreenTimeSettingsUI12UsageDetails)init;
@end

@implementation UsageDetails

- (NSArray)usageItems
{
  sub_264C6A7A4();

  v2 = sub_264CC468C();

  return v2;
}

- (NSDate)lastUpdatedDate
{
  v3 = sub_264CC2FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC20ScreenTimeSettingsUI12UsageDetails_lastUpdatedDate, v3);
  v7 = sub_264CC2F7C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSDictionary)firstPickupByWeekdayByWeek
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA92D8);
  v2 = sub_264CC453C();

  return v2;
}

- (_TtC20ScreenTimeSettingsUI12UsageDetails)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)appUsageItemIdentifier
{
  v2 = sub_264CC459C();

  return v2;
}

+ (NSString)categoryUsageItemIdentifier
{
  v2 = sub_264CC459C();

  return v2;
}

+ (NSString)pickupUsageItemIdentifier
{
  v2 = sub_264CC459C();

  return v2;
}

+ (NSString)notificationUsageItemIdentifier
{
  v2 = sub_264CC459C();

  return v2;
}

+ (NSString)screenTimeUsageItemIdentifier
{
  v2 = sub_264CC459C();

  return v2;
}

+ (NSString)webUsageItemIdentifier
{
  v2 = sub_264CC459C();

  return v2;
}

+ (id)earliestUsageDateForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 error:(id *)a5
{
  v7 = sub_264CC2FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3 = sub_264CC45DC();
    v12 = v11;
    if (a4)
    {
LABEL_3:
      v13 = sub_264CC45DC();
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v17[3] = sub_264CC32DC();
  v17[4] = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_264CC32CC();
  sub_264C6510C(a3, v12, v13, v17, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v14 = sub_264CC2F7C();
  (*(v8 + 8))(v10, v7);

  return v14;
}

+ (id)detailsForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 dateInterval:(id)a5 referenceDate:(id)a6 usageContext:(int64_t)a7 error:(id *)a8
{
  v23 = a8;
  v24 = a7;
  v26 = sub_264CC2FCC();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_264CC2E7C();
  v13 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v16 = sub_264CC45DC();
    v18 = v17;
    if (a4)
    {
LABEL_3:
      v19 = sub_264CC45DC();
      a4 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  sub_264CC2E5C();
  sub_264CC2FAC();
  v27[3] = sub_264CC32DC();
  v27[4] = sub_264C6A9DC(&qword_27FFA92A8, MEMORY[0x277CC57C0]);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_264CC32CC();
  v21 = sub_264C68A70(v16, v18, v19, a4, v15, v12, v24, v27);

  (*(v10 + 8))(v12, v26);
  (*(v13 + 8))(v15, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);

  return v21;
}

@end