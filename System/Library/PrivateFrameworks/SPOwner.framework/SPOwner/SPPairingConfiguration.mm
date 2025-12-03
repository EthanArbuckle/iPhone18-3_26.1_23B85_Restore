@interface SPPairingConfiguration
- (SPPairingConfiguration)initWithCoder:(id)coder;
- (SPPairingConfiguration)initWithName:(id)name roleId:(int64_t)id roleEmoji:(id)emoji keyStatus:(id)status collaborativeKeyC3:(id)c3 signatureS4:(id)s4 isZeus:(BOOL)zeus batteryLevel:(int64_t)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPPairingConfiguration

- (SPPairingConfiguration)initWithName:(id)name roleId:(int64_t)id roleEmoji:(id)emoji keyStatus:(id)status collaborativeKeyC3:(id)c3 signatureS4:(id)s4 isZeus:(BOOL)zeus batteryLevel:(int64_t)self0
{
  nameCopy = name;
  emojiCopy = emoji;
  statusCopy = status;
  c3Copy = c3;
  s4Copy = s4;
  v25.receiver = self;
  v25.super_class = SPPairingConfiguration;
  v20 = [(SPPairingConfiguration *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, name);
    v21->_roleId = id;
    objc_storeStrong(&v21->_roleEmoji, emoji);
    objc_storeStrong(&v21->_collaborativeKeyC3, c3);
    objc_storeStrong(&v21->_signatureS4, s4);
    objc_storeStrong(&v21->_keyStatus, status);
    v21->_isZeus = zeus;
    v21->_batteryLevel = level;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPPairingConfiguration alloc];
  name = [(SPPairingConfiguration *)self name];
  roleId = [(SPPairingConfiguration *)self roleId];
  roleEmoji = [(SPPairingConfiguration *)self roleEmoji];
  keyStatus = [(SPPairingConfiguration *)self keyStatus];
  collaborativeKeyC3 = [(SPPairingConfiguration *)self collaborativeKeyC3];
  signatureS4 = [(SPPairingConfiguration *)self signatureS4];
  LOBYTE(v13) = [(SPPairingConfiguration *)self isZeus];
  v11 = [(SPPairingConfiguration *)v4 initWithName:name roleId:roleId roleEmoji:roleEmoji keyStatus:keyStatus collaborativeKeyC3:collaborativeKeyC3 signatureS4:signatureS4 isZeus:v13 batteryLevel:[(SPPairingConfiguration *)self batteryLevel]];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInteger:self->_roleId forKey:@"roleId"];
  [coderCopy encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
  [coderCopy encodeObject:self->_collaborativeKeyC3 forKey:@"collaborativeKeyC3"];
  [coderCopy encodeObject:self->_signatureS4 forKey:@"signatureS4"];
  [coderCopy encodeObject:self->_keyStatus forKey:@"keyStatus"];
  [coderCopy encodeBool:self->_isZeus forKey:@"isZeus"];
  [coderCopy encodeInteger:self->_batteryLevel forKey:@"batteryLevel"];
}

- (SPPairingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  self->_roleId = [coderCopy decodeIntegerForKey:@"roleId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];
  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC3"];
  collaborativeKeyC3 = self->_collaborativeKeyC3;
  self->_collaborativeKeyC3 = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signatureS4"];
  signatureS4 = self->_signatureS4;
  self->_signatureS4 = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyStatus"];
  keyStatus = self->_keyStatus;
  self->_keyStatus = v13;

  self->_isZeus = [coderCopy decodeBoolForKey:@"isZeus"];
  v15 = [coderCopy decodeIntegerForKey:@"batteryLevel"];

  self->_batteryLevel = v15;
  return self;
}

@end