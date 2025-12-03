@interface SPAccessoryPairingConfiguration
- (SPAccessoryPairingConfiguration)initWithCoder:(id)coder;
- (SPAccessoryPairingConfiguration)initWithName:(id)name roleId:(int64_t)id roleEmoji:(id)emoji;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAccessoryPairingConfiguration

- (SPAccessoryPairingConfiguration)initWithName:(id)name roleId:(int64_t)id roleEmoji:(id)emoji
{
  nameCopy = name;
  emojiCopy = emoji;
  v14.receiver = self;
  v14.super_class = SPAccessoryPairingConfiguration;
  v11 = [(SPAccessoryPairingConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_roleId = id;
    objc_storeStrong(&v12->_roleEmoji, emoji);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPAccessoryPairingConfiguration alloc];
  name = [(SPAccessoryPairingConfiguration *)self name];
  roleId = [(SPAccessoryPairingConfiguration *)self roleId];
  roleEmoji = [(SPAccessoryPairingConfiguration *)self roleEmoji];
  v8 = [(SPAccessoryPairingConfiguration *)v4 initWithName:name roleId:roleId roleEmoji:roleEmoji];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInteger:self->_roleId forKey:@"roleId"];
  [coderCopy encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
}

- (SPAccessoryPairingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  self->_roleId = [coderCopy decodeIntegerForKey:@"roleId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];

  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v7;

  return self;
}

@end