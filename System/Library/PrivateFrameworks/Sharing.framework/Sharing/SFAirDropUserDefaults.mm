@interface SFAirDropUserDefaults
+ (SFAirDropUserDefaults)shared;
- (BOOL)objcMoveToAppEnabled;
- (BOOL)objcPrivateContactDiscoveryEnabled;
- (BOOL)objcSystemLevelProgressEnabled;
- (NSString)description;
- (void)setObjcCellularUsageEnabled:(BOOL)a3;
- (void)setObjcNearFieldSharingEnabled:(BOOL)a3;
@end

@implementation SFAirDropUserDefaults

+ (SFAirDropUserDefaults)shared
{
  if (qword_1EB3ACAD0 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();

  return v3;
}

- (BOOL)objcPrivateContactDiscoveryEnabled
{
  v2 = self;
  v3 = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();

  return v3 & 1;
}

- (BOOL)objcSystemLevelProgressEnabled
{
  v2 = self;
  v3 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

  return v3 & 1;
}

- (BOOL)objcMoveToAppEnabled
{
  v2 = self;
  v3 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  return v3 & 1;
}

- (void)setObjcNearFieldSharingEnabled:(BOOL)a3
{
  v4 = self;
  SFAirDropUserDefaults.objcNearFieldSharingEnabled.setter(a3);
}

- (void)setObjcCellularUsageEnabled:(BOOL)a3
{
  v4 = self;
  SFAirDropUserDefaults.cellularUsageEnabled.setter(a3);
}

- (NSString)description
{
  _s7Sharing21SFAirDropUserDefaultsC11descriptionSSvg_0();
  v2 = sub_1A99767E0();

  return v2;
}

@end