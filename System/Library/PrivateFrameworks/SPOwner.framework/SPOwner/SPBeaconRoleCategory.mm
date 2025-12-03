@interface SPBeaconRoleCategory
- (SPBeaconRoleCategory)initWithCategoryId:(int64_t)id category:(id)category roles:(id)roles;
- (SPBeaconRoleCategory)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconRoleCategory

- (SPBeaconRoleCategory)initWithCategoryId:(int64_t)id category:(id)category roles:(id)roles
{
  categoryCopy = category;
  rolesCopy = roles;
  v13.receiver = self;
  v13.super_class = SPBeaconRoleCategory;
  v10 = [(SPBeaconRoleCategory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SPBeaconRoleCategory *)v10 setCategoryId:id];
    [(SPBeaconRoleCategory *)v11 setCategory:categoryCopy];
    [(SPBeaconRoleCategory *)v11 setRoles:rolesCopy];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconRoleCategory alloc];
  categoryId = [(SPBeaconRoleCategory *)self categoryId];
  category = [(SPBeaconRoleCategory *)self category];
  v7 = objc_alloc(MEMORY[0x277CBEA60]);
  roles = [(SPBeaconRoleCategory *)self roles];
  v9 = [v7 initWithArray:roles copyItems:1];
  v10 = [(SPBeaconRoleCategory *)v4 initWithCategoryId:categoryId category:category roles:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  categoryId = self->_categoryId;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:categoryId];
  [coderCopy encodeObject:v6 forKey:@"categoryId"];

  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_roles forKey:@"roles"];
}

- (SPBeaconRoleCategory)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryId"];
  self->_categoryId = [v5 integerValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  category = self->_category;
  self->_category = v6;

  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"roles"];

  roles = self->_roles;
  self->_roles = v11;

  v13 = *MEMORY[0x277D85DE8];
  return self;
}

@end