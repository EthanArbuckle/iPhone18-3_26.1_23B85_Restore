@interface SPPairingConfiguration
- (SPPairingConfiguration)initWithCoder:(id)a3;
- (SPPairingConfiguration)initWithName:(id)a3 roleId:(int64_t)a4 roleEmoji:(id)a5 keyStatus:(id)a6 collaborativeKeyC3:(id)a7 signatureS4:(id)a8 isZeus:(BOOL)a9 batteryLevel:(int64_t)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPPairingConfiguration

- (SPPairingConfiguration)initWithName:(id)a3 roleId:(int64_t)a4 roleEmoji:(id)a5 keyStatus:(id)a6 collaborativeKeyC3:(id)a7 signatureS4:(id)a8 isZeus:(BOOL)a9 batteryLevel:(int64_t)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v24 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = SPPairingConfiguration;
  v20 = [(SPPairingConfiguration *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, a3);
    v21->_roleId = a4;
    objc_storeStrong(&v21->_roleEmoji, a5);
    objc_storeStrong(&v21->_collaborativeKeyC3, a7);
    objc_storeStrong(&v21->_signatureS4, a8);
    objc_storeStrong(&v21->_keyStatus, a6);
    v21->_isZeus = a9;
    v21->_batteryLevel = a10;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPPairingConfiguration alloc];
  v5 = [(SPPairingConfiguration *)self name];
  v6 = [(SPPairingConfiguration *)self roleId];
  v7 = [(SPPairingConfiguration *)self roleEmoji];
  v8 = [(SPPairingConfiguration *)self keyStatus];
  v9 = [(SPPairingConfiguration *)self collaborativeKeyC3];
  v10 = [(SPPairingConfiguration *)self signatureS4];
  LOBYTE(v13) = [(SPPairingConfiguration *)self isZeus];
  v11 = [(SPPairingConfiguration *)v4 initWithName:v5 roleId:v6 roleEmoji:v7 keyStatus:v8 collaborativeKeyC3:v9 signatureS4:v10 isZeus:v13 batteryLevel:[(SPPairingConfiguration *)self batteryLevel]];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInteger:self->_roleId forKey:@"roleId"];
  [v5 encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
  [v5 encodeObject:self->_collaborativeKeyC3 forKey:@"collaborativeKeyC3"];
  [v5 encodeObject:self->_signatureS4 forKey:@"signatureS4"];
  [v5 encodeObject:self->_keyStatus forKey:@"keyStatus"];
  [v5 encodeBool:self->_isZeus forKey:@"isZeus"];
  [v5 encodeInteger:self->_batteryLevel forKey:@"batteryLevel"];
}

- (SPPairingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  self->_roleId = [v4 decodeIntegerForKey:@"roleId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];
  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC3"];
  collaborativeKeyC3 = self->_collaborativeKeyC3;
  self->_collaborativeKeyC3 = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signatureS4"];
  signatureS4 = self->_signatureS4;
  self->_signatureS4 = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyStatus"];
  keyStatus = self->_keyStatus;
  self->_keyStatus = v13;

  self->_isZeus = [v4 decodeBoolForKey:@"isZeus"];
  v15 = [v4 decodeIntegerForKey:@"batteryLevel"];

  self->_batteryLevel = v15;
  return self;
}

@end