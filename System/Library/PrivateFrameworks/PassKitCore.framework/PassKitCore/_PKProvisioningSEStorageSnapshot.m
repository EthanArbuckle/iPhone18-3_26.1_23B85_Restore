@interface _PKProvisioningSEStorageSnapshot
+ (id)purpleTrustAirAccessAppletType;
+ (id)purpleTrustAirAliroAppletType;
+ (id)purpleTrustAirHomeAppletType;
- (_PKProvisioningSEStorageSnapshot)init;
- (id)appletTypesForAppletIDs:(id)a3;
- (int64_t)requiredStorageForAppletTypes:(id)a3;
- (int64_t)totalStorage;
- (int64_t)totalUsage;
- (void)encodeWithCoder:(id)a3;
- (void)removeFromSnapshotWithAppletTypes:(id)a3;
- (void)reset;
@end

@implementation _PKProvisioningSEStorageSnapshot

- (void)removeFromSnapshotWithAppletTypes:(id)a3
{
  v4 = sub_1ADB06610();
  v5 = self;
  sub_1AD4ED788(v4);
}

- (void)reset
{
  v2 = self;
  sub_1ADB060F0();
}

- (id)appletTypesForAppletIDs:(id)a3
{
  v4 = sub_1ADB06610();
  v5 = self;
  sub_1AD4ED9FC(v4);

  v6 = sub_1ADB06600();

  return v6;
}

- (int64_t)totalStorage
{
  v2 = self;
  sub_1ADB060B0();
  v4 = v3;

  return v4;
}

- (int64_t)totalUsage
{
  v2 = self;
  v3 = sub_1ADB060B0();

  return v3;
}

- (int64_t)requiredStorageForAppletTypes:(id)a3
{
  v4 = sub_1ADB06610();
  v5 = self;
  v6 = sub_1AD4EE468(v4);

  return v6;
}

+ (id)purpleTrustAirHomeAppletType
{
  v2 = sub_1ADB06370();

  return v2;
}

+ (id)purpleTrustAirAccessAppletType
{
  v2 = sub_1ADB06370();

  return v2;
}

+ (id)purpleTrustAirAliroAppletType
{
  v2 = sub_1ADB06370();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot);
  v7 = a3;
  v5 = self;
  v6 = sub_1ADB06370();
  [v7 encodeObject:v4 forKey:v6];
}

- (_PKProvisioningSEStorageSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end