@interface TVRCMediaInfoRoleCategory
+ (id)roleCategoryWithRoleDescription:(id)description roles:(id)roles;
- (TVRCMediaInfoRoleCategory)initWithRoleDescription:(id)description roles:(id)roles;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TVRCMediaInfoRoleCategory

- (TVRCMediaInfoRoleCategory)initWithRoleDescription:(id)description roles:(id)roles
{
  descriptionCopy = description;
  rolesCopy = roles;
  v12.receiver = self;
  v12.super_class = TVRCMediaInfoRoleCategory;
  v9 = [(TVRCMediaInfoRoleCategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_roleDescription, description);
    objc_storeStrong(&v10->_roles, roles);
  }

  return v10;
}

+ (id)roleCategoryWithRoleDescription:(id)description roles:(id)roles
{
  rolesCopy = roles;
  descriptionCopy = description;
  v8 = [[self alloc] initWithRoleDescription:descriptionCopy roles:rolesCopy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TVRCMediaInfoRoleCategory alloc];
  roleDescription = [(TVRCMediaInfoRoleCategory *)self roleDescription];
  roles = [(TVRCMediaInfoRoleCategory *)self roles];
  v7 = [(TVRCMediaInfoRoleCategory *)v4 initWithRoleDescription:roleDescription roles:roles];

  return v7;
}

@end