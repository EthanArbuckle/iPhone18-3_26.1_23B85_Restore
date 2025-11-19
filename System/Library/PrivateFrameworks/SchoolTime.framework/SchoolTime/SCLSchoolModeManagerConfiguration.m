@interface SCLSchoolModeManagerConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SCLSchoolModeManagerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCLSchoolModeManagerConfiguration);
  v5 = [(SCLSchoolModeManagerConfiguration *)self deviceRegistry];
  [(SCLSchoolModeManagerConfiguration *)v4 setDeviceRegistry:v5];

  v6 = [(SCLSchoolModeManagerConfiguration *)self service];
  [(SCLSchoolModeManagerConfiguration *)v4 setService:v6];

  [(SCLSchoolModeManagerConfiguration *)v4 setManagesSchoolTimeSession:[(SCLSchoolModeManagerConfiguration *)self managesSchoolTimeSession]];
  [(SCLSchoolModeManagerConfiguration *)v4 setAllowsNonTinkerPairing:[(SCLSchoolModeManagerConfiguration *)self allowsNonTinkerPairing]];
  v7 = [(SCLSchoolModeManagerConfiguration *)self workloop];
  [(SCLSchoolModeManagerConfiguration *)v4 setWorkloop:v7];

  return v4;
}

@end