@interface SCLSchoolModeManagerConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SCLSchoolModeManagerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SCLSchoolModeManagerConfiguration);
  deviceRegistry = [(SCLSchoolModeManagerConfiguration *)self deviceRegistry];
  [(SCLSchoolModeManagerConfiguration *)v4 setDeviceRegistry:deviceRegistry];

  service = [(SCLSchoolModeManagerConfiguration *)self service];
  [(SCLSchoolModeManagerConfiguration *)v4 setService:service];

  [(SCLSchoolModeManagerConfiguration *)v4 setManagesSchoolTimeSession:[(SCLSchoolModeManagerConfiguration *)self managesSchoolTimeSession]];
  [(SCLSchoolModeManagerConfiguration *)v4 setAllowsNonTinkerPairing:[(SCLSchoolModeManagerConfiguration *)self allowsNonTinkerPairing]];
  workloop = [(SCLSchoolModeManagerConfiguration *)self workloop];
  [(SCLSchoolModeManagerConfiguration *)v4 setWorkloop:workloop];

  return v4;
}

@end