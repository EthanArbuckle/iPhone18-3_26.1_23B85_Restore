@interface PRSMutableMigrationDescriptor
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRSMutableMigrationDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PRSMigrationDescriptor);
  v5 = [(PRSMigrationDescriptor *)self isHomeScreenDim];
  [(PRSMigrationDescriptor *)v4 setHomeScreenDim:v5];

  v6 = [(PRSMigrationDescriptor *)self homeScreenTintColor];
  [(PRSMigrationDescriptor *)v4 setHomeScreenTintColor:v6];

  v7 = [(PRSMigrationDescriptor *)self homeScreenIconTintSource];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconTintSource:v7];

  v8 = [(PRSMigrationDescriptor *)self homeScreenIconSize];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconSize:v8];

  v9 = [(PRSMigrationDescriptor *)self homeScreenIconStyle];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyle:v9];

  v10 = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariant];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariant:v10];

  v11 = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariantsForStyles];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariantsForStyles:v11];

  return v4;
}

@end