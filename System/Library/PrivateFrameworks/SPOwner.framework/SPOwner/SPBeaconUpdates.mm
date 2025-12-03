@interface SPBeaconUpdates
- (SPBeaconUpdates)initWithCoder:(id)coder;
- (SPBeaconUpdates)initWithName:(id)name roleId:(int64_t)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconUpdates

- (SPBeaconUpdates)initWithName:(id)name roleId:(int64_t)id
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = SPBeaconUpdates;
  v8 = [(SPBeaconUpdates *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_roleId = id;
    v9->_restoreDefaultName = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SPBeaconUpdates);
  [(SPBeaconUpdates *)v4 setName:self->_name];
  [(SPBeaconUpdates *)v4 setRoleId:self->_roleId];
  [(SPBeaconUpdates *)v4 setEmoji:self->_emoji];
  [(SPBeaconUpdates *)v4 setRestoreDefaultName:self->_restoreDefaultName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roleId];
  [coderCopy encodeObject:v4 forKey:@"roleId"];

  emoji = self->_emoji;
  if (emoji)
  {
    [coderCopy encodeObject:emoji forKey:@"emoji"];
  }

  [coderCopy encodeBool:self->_restoreDefaultName forKey:@"restoreDefaultName"];
}

- (SPBeaconUpdates)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  self->_roleId = [coderCopy decodeIntegerForKey:@"roleId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emoji"];
  emoji = self->_emoji;
  self->_emoji = v7;

  v9 = [coderCopy decodeBoolForKey:@"restoreDefaultName"];
  self->_restoreDefaultName = v9;
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(SPBeaconUpdates *)self name];
  roleId = [(SPBeaconUpdates *)self roleId];
  emoji = [(SPBeaconUpdates *)self emoji];
  v8 = [v3 stringWithFormat:@"<%@: %p. name [%@] role [%ld] emoji [%@] restoreDefaultName [%i]>", v4, self, name, roleId, emoji, -[SPBeaconUpdates restoreDefaultName](self, "restoreDefaultName")];

  return v8;
}

@end