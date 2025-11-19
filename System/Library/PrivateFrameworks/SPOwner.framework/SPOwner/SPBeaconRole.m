@interface SPBeaconRole
- (SPBeaconRole)initWithCoder:(id)a3;
- (SPBeaconRole)initWithRoleId:(int64_t)a3 role:(id)a4 roleEmoji:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconRole

- (SPBeaconRole)initWithRoleId:(int64_t)a3 role:(id)a4 roleEmoji:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SPBeaconRole;
  v10 = [(SPBeaconRole *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SPBeaconRole *)v10 setRoleId:a3];
    [(SPBeaconRole *)v11 setRole:v8];
    [(SPBeaconRole *)v11 setRoleEmoji:v9];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconRole alloc];
  v5 = [(SPBeaconRole *)self roleId];
  v6 = [(SPBeaconRole *)self role];
  v7 = [(SPBeaconRole *)self roleEmoji];
  v8 = [(SPBeaconRole *)v4 initWithRoleId:v5 role:v6 roleEmoji:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  roleId = self->_roleId;
  v7 = a3;
  v6 = [v4 numberWithInteger:roleId];
  [v7 encodeObject:v6 forKey:@"roleId"];

  [v7 encodeObject:self->_role forKey:@"role"];
  [v7 encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
}

- (SPBeaconRole)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roleId"];
  self->_roleId = [v5 integerValue];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  role = self->_role;
  self->_role = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];

  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v8;

  return self;
}

@end