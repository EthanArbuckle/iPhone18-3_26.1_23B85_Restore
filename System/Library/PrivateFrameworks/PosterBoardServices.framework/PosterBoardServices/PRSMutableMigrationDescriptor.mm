@interface PRSMutableMigrationDescriptor
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRSMutableMigrationDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PRSMigrationDescriptor);
  isHomeScreenDim = [(PRSMigrationDescriptor *)self isHomeScreenDim];
  [(PRSMigrationDescriptor *)v4 setHomeScreenDim:isHomeScreenDim];

  homeScreenTintColor = [(PRSMigrationDescriptor *)self homeScreenTintColor];
  [(PRSMigrationDescriptor *)v4 setHomeScreenTintColor:homeScreenTintColor];

  homeScreenIconTintSource = [(PRSMigrationDescriptor *)self homeScreenIconTintSource];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconTintSource:homeScreenIconTintSource];

  homeScreenIconSize = [(PRSMigrationDescriptor *)self homeScreenIconSize];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconSize:homeScreenIconSize];

  homeScreenIconStyle = [(PRSMigrationDescriptor *)self homeScreenIconStyle];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyle:homeScreenIconStyle];

  homeScreenIconStyleVariant = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariant];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariant:homeScreenIconStyleVariant];

  homeScreenIconStyleVariantsForStyles = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariantsForStyles];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariantsForStyles:homeScreenIconStyleVariantsForStyles];

  return v4;
}

@end