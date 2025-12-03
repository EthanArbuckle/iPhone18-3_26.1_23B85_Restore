@interface SPBeaconRole
- (SPBeaconRole)initWithCoder:(id)coder;
- (SPBeaconRole)initWithRoleId:(int64_t)id role:(id)role roleEmoji:(id)emoji;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconRole

- (SPBeaconRole)initWithRoleId:(int64_t)id role:(id)role roleEmoji:(id)emoji
{
  roleCopy = role;
  emojiCopy = emoji;
  v13.receiver = self;
  v13.super_class = SPBeaconRole;
  v10 = [(SPBeaconRole *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SPBeaconRole *)v10 setRoleId:id];
    [(SPBeaconRole *)v11 setRole:roleCopy];
    [(SPBeaconRole *)v11 setRoleEmoji:emojiCopy];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconRole alloc];
  roleId = [(SPBeaconRole *)self roleId];
  role = [(SPBeaconRole *)self role];
  roleEmoji = [(SPBeaconRole *)self roleEmoji];
  v8 = [(SPBeaconRole *)v4 initWithRoleId:roleId role:role roleEmoji:roleEmoji];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  roleId = self->_roleId;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:roleId];
  [coderCopy encodeObject:v6 forKey:@"roleId"];

  [coderCopy encodeObject:self->_role forKey:@"role"];
  [coderCopy encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
}

- (SPBeaconRole)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleId"];
  self->_roleId = [v5 integerValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  role = self->_role;
  self->_role = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];

  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v8;

  return self;
}

@end