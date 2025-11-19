@interface SPBeaconRoleCategory
- (SPBeaconRoleCategory)initWithCategoryId:(int64_t)a3 category:(id)a4 roles:(id)a5;
- (SPBeaconRoleCategory)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconRoleCategory

- (SPBeaconRoleCategory)initWithCategoryId:(int64_t)a3 category:(id)a4 roles:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SPBeaconRoleCategory;
  v10 = [(SPBeaconRoleCategory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SPBeaconRoleCategory *)v10 setCategoryId:a3];
    [(SPBeaconRoleCategory *)v11 setCategory:v8];
    [(SPBeaconRoleCategory *)v11 setRoles:v9];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconRoleCategory alloc];
  v5 = [(SPBeaconRoleCategory *)self categoryId];
  v6 = [(SPBeaconRoleCategory *)self category];
  v7 = objc_alloc(MEMORY[0x277CBEA60]);
  v8 = [(SPBeaconRoleCategory *)self roles];
  v9 = [v7 initWithArray:v8 copyItems:1];
  v10 = [(SPBeaconRoleCategory *)v4 initWithCategoryId:v5 category:v6 roles:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  categoryId = self->_categoryId;
  v7 = a3;
  v6 = [v4 numberWithInteger:categoryId];
  [v7 encodeObject:v6 forKey:@"categoryId"];

  [v7 encodeObject:self->_category forKey:@"category"];
  [v7 encodeObject:self->_roles forKey:@"roles"];
}

- (SPBeaconRoleCategory)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryId"];
  self->_categoryId = [v5 integerValue];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  category = self->_category;
  self->_category = v6;

  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"roles"];

  roles = self->_roles;
  self->_roles = v11;

  v13 = *MEMORY[0x277D85DE8];
  return self;
}

@end