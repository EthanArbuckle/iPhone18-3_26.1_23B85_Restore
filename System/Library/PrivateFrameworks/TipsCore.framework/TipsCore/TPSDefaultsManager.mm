@interface TPSDefaultsManager
+ (BOOL)isInternalDevice;
+ (NSDate)lastMajorVersionUpdateDate;
+ (NSNumber)contentUpdatedDarwinNotificationInSeconds;
+ (NSNumber)contextualEventDaysSinceLastMajorUpdateInSeconds;
+ (NSNumber)holdoutGroup;
+ (NSNumber)requestInterval;
+ (NSNumber)standardNotificationInterval;
+ (NSNumber)userType;
+ (int64_t)crunchingIntervalInDays;
+ (void)setIsInternalDevice:(BOOL)device;
- (TPSDefaultsManager)init;
@end

@implementation TPSDefaultsManager

+ (int64_t)crunchingIntervalInDays
{
  sub_1C01254E8(6, &v4);
  v2 = v5;
  sub_1C00FC158(&v4);
  if (v2)
  {
    return sub_1C01258D4(6);
  }

  else
  {
    return sub_1C014B910();
  }
}

+ (BOOL)isInternalDevice
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1EDD44C08;
}

+ (void)setIsInternalDevice:(BOOL)device
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  byte_1EDD44C08 = device;
}

+ (NSNumber)contentUpdatedDarwinNotificationInSeconds
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(3);

  return v2;
}

+ (NSNumber)contextualEventDaysSinceLastMajorUpdateInSeconds
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(4);

  return v2;
}

+ (NSNumber)holdoutGroup
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(12);

  return v2;
}

+ (NSNumber)requestInterval
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(25);

  return v2;
}

+ (NSNumber)standardNotificationInterval
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(38);

  return v2;
}

+ (NSNumber)userType
{
  swift_getObjCClassMetadata();
  v2 = sub_1C012532C(41);

  return v2;
}

+ (NSDate)lastMajorVersionUpdateDate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  sub_1C01254E8(16, &v14);
  if (v15)
  {
    v6 = sub_1C014BD40();
    v7 = swift_dynamicCast();
    v8 = *(v6 - 8);
    (*(v8 + 56))(v5, v7 ^ 1u, 1, v6);
    v9 = (*(v8 + 48))(v5, 1, v6);
    v10 = 0;
    if (v9 != 1)
    {
      v11 = sub_1C014BCE0();
      (*(v8 + 8))(v5, v6);
      v10 = v11;
    }
  }

  else
  {
    sub_1C00FC158(&v14);
    v12 = sub_1C014BD40();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v10 = 0;
  }

  return v10;
}

- (TPSDefaultsManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipsDefaultsManager();
  return [(TPSDefaultsManager *)&v3 init];
}

@end