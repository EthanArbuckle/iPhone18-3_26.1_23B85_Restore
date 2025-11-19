@interface SPBeaconUpdates
- (SPBeaconUpdates)initWithCoder:(id)a3;
- (SPBeaconUpdates)initWithName:(id)a3 roleId:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconUpdates

- (SPBeaconUpdates)initWithName:(id)a3 roleId:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SPBeaconUpdates;
  v8 = [(SPBeaconUpdates *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_roleId = a4;
    v9->_restoreDefaultName = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SPBeaconUpdates);
  [(SPBeaconUpdates *)v4 setName:self->_name];
  [(SPBeaconUpdates *)v4 setRoleId:self->_roleId];
  [(SPBeaconUpdates *)v4 setEmoji:self->_emoji];
  [(SPBeaconUpdates *)v4 setRestoreDefaultName:self->_restoreDefaultName];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_name forKey:@"name"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roleId];
  [v6 encodeObject:v4 forKey:@"roleId"];

  emoji = self->_emoji;
  if (emoji)
  {
    [v6 encodeObject:emoji forKey:@"emoji"];
  }

  [v6 encodeBool:self->_restoreDefaultName forKey:@"restoreDefaultName"];
}

- (SPBeaconUpdates)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  self->_roleId = [v4 decodeIntegerForKey:@"roleId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emoji"];
  emoji = self->_emoji;
  self->_emoji = v7;

  v9 = [v4 decodeBoolForKey:@"restoreDefaultName"];
  self->_restoreDefaultName = v9;
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPBeaconUpdates *)self name];
  v6 = [(SPBeaconUpdates *)self roleId];
  v7 = [(SPBeaconUpdates *)self emoji];
  v8 = [v3 stringWithFormat:@"<%@: %p. name [%@] role [%ld] emoji [%@] restoreDefaultName [%i]>", v4, self, v5, v6, v7, -[SPBeaconUpdates restoreDefaultName](self, "restoreDefaultName")];

  return v8;
}

@end