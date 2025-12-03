@interface SPCommandKeys
- (NSData)address;
- (NSDateInterval)dateInterval;
- (NSString)description;
- (SPCommandKeys)initWithBeaconingKey:(id)key commandKey:(id)commandKey connectionToken:(id)token nearbyToken:(id)nearbyToken;
- (SPCommandKeys)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCommandKeys

- (SPCommandKeys)initWithBeaconingKey:(id)key commandKey:(id)commandKey connectionToken:(id)token nearbyToken:(id)nearbyToken
{
  keyCopy = key;
  commandKeyCopy = commandKey;
  tokenCopy = token;
  nearbyTokenCopy = nearbyToken;
  v18.receiver = self;
  v18.super_class = SPCommandKeys;
  v15 = [(SPCommandKeys *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_beaconingKey, key);
    objc_storeStrong(&v16->_commandKey, commandKey);
    objc_storeStrong(&v16->_connectionToken, token);
    objc_storeStrong(&v16->_nearbyToken, nearbyToken);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPCommandKeys alloc];
  beaconingKey = [(SPCommandKeys *)self beaconingKey];
  commandKey = [(SPCommandKeys *)self commandKey];
  connectionToken = [(SPCommandKeys *)self connectionToken];
  nearbyToken = [(SPCommandKeys *)self nearbyToken];
  v9 = [(SPCommandKeys *)v4 initWithBeaconingKey:beaconingKey commandKey:commandKey connectionToken:connectionToken nearbyToken:nearbyToken];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  beaconingKey = self->_beaconingKey;
  coderCopy = coder;
  [coderCopy encodeObject:beaconingKey forKey:@"beaconingKey"];
  [coderCopy encodeObject:self->_commandKey forKey:@"commandKey"];
  [coderCopy encodeObject:self->_connectionToken forKey:@"connectionToken"];
  [coderCopy encodeObject:self->_nearbyToken forKey:@"nearbyToken"];
}

- (SPCommandKeys)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconingKey"];
  beaconingKey = self->_beaconingKey;
  self->_beaconingKey = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandKey"];
  commandKey = self->_commandKey;
  self->_commandKey = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectionToken"];
  connectionToken = self->_connectionToken;
  self->_connectionToken = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nearbyToken"];

  nearbyToken = self->_nearbyToken;
  self->_nearbyToken = v11;

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  beaconingKey = [(SPCommandKeys *)self beaconingKey];
  commandKey = [(SPCommandKeys *)self commandKey];
  v7 = [commandKey length];
  connectionToken = [(SPCommandKeys *)self connectionToken];
  v9 = [connectionToken length];
  nearbyToken = [(SPCommandKeys *)self nearbyToken];
  v11 = [v3 stringWithFormat:@"<%@: %p -- beaconingKey: %@ commandKey: %lu connectionToken: %lu nearbyToken: %lu>", v4, self, beaconingKey, v7, v9, objc_msgSend(nearbyToken, "length")];

  return v11;
}

- (NSData)address
{
  beaconingKey = [(SPCommandKeys *)self beaconingKey];
  v3 = [beaconingKey key];
  v4 = [v3 subdataWithRange:{0, 6}];

  return v4;
}

- (NSDateInterval)dateInterval
{
  beaconingKey = [(SPCommandKeys *)self beaconingKey];
  dateInterval = [beaconingKey dateInterval];

  return dateInterval;
}

@end