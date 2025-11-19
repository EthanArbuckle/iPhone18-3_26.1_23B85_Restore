@interface SPAccessoryPairingConfiguration
- (SPAccessoryPairingConfiguration)initWithCoder:(id)a3;
- (SPAccessoryPairingConfiguration)initWithName:(id)a3 roleId:(int64_t)a4 roleEmoji:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPAccessoryPairingConfiguration

- (SPAccessoryPairingConfiguration)initWithName:(id)a3 roleId:(int64_t)a4 roleEmoji:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SPAccessoryPairingConfiguration;
  v11 = [(SPAccessoryPairingConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_roleId = a4;
    objc_storeStrong(&v12->_roleEmoji, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPAccessoryPairingConfiguration alloc];
  v5 = [(SPAccessoryPairingConfiguration *)self name];
  v6 = [(SPAccessoryPairingConfiguration *)self roleId];
  v7 = [(SPAccessoryPairingConfiguration *)self roleEmoji];
  v8 = [(SPAccessoryPairingConfiguration *)v4 initWithName:v5 roleId:v6 roleEmoji:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInteger:self->_roleId forKey:@"roleId"];
  [v5 encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
}

- (SPAccessoryPairingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  self->_roleId = [v4 decodeIntegerForKey:@"roleId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];

  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v7;

  return self;
}

@end