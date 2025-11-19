@interface TVRCMediaInfoRoleCategory
+ (id)roleCategoryWithRoleDescription:(id)a3 roles:(id)a4;
- (TVRCMediaInfoRoleCategory)initWithRoleDescription:(id)a3 roles:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TVRCMediaInfoRoleCategory

- (TVRCMediaInfoRoleCategory)initWithRoleDescription:(id)a3 roles:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TVRCMediaInfoRoleCategory;
  v9 = [(TVRCMediaInfoRoleCategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_roleDescription, a3);
    objc_storeStrong(&v10->_roles, a4);
  }

  return v10;
}

+ (id)roleCategoryWithRoleDescription:(id)a3 roles:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRoleDescription:v7 roles:v6];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TVRCMediaInfoRoleCategory alloc];
  v5 = [(TVRCMediaInfoRoleCategory *)self roleDescription];
  v6 = [(TVRCMediaInfoRoleCategory *)self roles];
  v7 = [(TVRCMediaInfoRoleCategory *)v4 initWithRoleDescription:v5 roles:v6];

  return v7;
}

@end