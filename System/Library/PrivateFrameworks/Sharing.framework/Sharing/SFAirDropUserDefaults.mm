@interface SFAirDropUserDefaults
+ (SFAirDropUserDefaults)shared;
- (BOOL)objcMoveToAppEnabled;
- (BOOL)objcPrivateContactDiscoveryEnabled;
- (BOOL)objcSystemLevelProgressEnabled;
- (NSString)description;
- (void)setObjcCellularUsageEnabled:(BOOL)enabled;
- (void)setObjcNearFieldSharingEnabled:(BOOL)enabled;
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
  selfCopy = self;
  v3 = SFAirDropUserDefaults.privateContactDiscoveryEnabled.getter();

  return v3 & 1;
}

- (BOOL)objcSystemLevelProgressEnabled
{
  selfCopy = self;
  v3 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

  return v3 & 1;
}

- (BOOL)objcMoveToAppEnabled
{
  selfCopy = self;
  v3 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  return v3 & 1;
}

- (void)setObjcNearFieldSharingEnabled:(BOOL)enabled
{
  selfCopy = self;
  SFAirDropUserDefaults.objcNearFieldSharingEnabled.setter(enabled);
}

- (void)setObjcCellularUsageEnabled:(BOOL)enabled
{
  selfCopy = self;
  SFAirDropUserDefaults.cellularUsageEnabled.setter(enabled);
}

- (NSString)description
{
  _s7Sharing21SFAirDropUserDefaultsC11descriptionSSvg_0();
  v2 = sub_1A99767E0();

  return v2;
}

@end