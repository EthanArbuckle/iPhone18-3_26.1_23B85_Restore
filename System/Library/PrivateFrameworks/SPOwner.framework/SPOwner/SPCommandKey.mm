@interface SPCommandKey
- (NSData)address;
- (NSDateInterval)dateInterval;
- (NSString)description;
- (SPCommandKey)initWithBeaconingKey:(id)key commandKey:(id)commandKey connectionToken:(id)token nearbyToken:(id)nearbyToken primaryIndex:(id)index secondaryIndex:(id)secondaryIndex type:(int64_t)type;
- (SPCommandKey)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPCommandKey

- (NSData)address
{
  beaconingKey = [(SPCommandKey *)self beaconingKey];
  v3 = [beaconingKey key];
  v4 = [v3 subdataWithRange:{0, 6}];

  return v4;
}

- (SPCommandKey)initWithBeaconingKey:(id)key commandKey:(id)commandKey connectionToken:(id)token nearbyToken:(id)nearbyToken primaryIndex:(id)index secondaryIndex:(id)secondaryIndex type:(int64_t)type
{
  keyCopy = key;
  commandKeyCopy = commandKey;
  tokenCopy = token;
  nearbyTokenCopy = nearbyToken;
  indexCopy = index;
  secondaryIndexCopy = secondaryIndex;
  v25.receiver = self;
  v25.super_class = SPCommandKey;
  v19 = [(SPCommandKey *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_beaconingKey, key);
    objc_storeStrong(&v20->_commandKey, commandKey);
    objc_storeStrong(&v20->_connectionToken, token);
    objc_storeStrong(&v20->_nearbyToken, nearbyToken);
    objc_storeStrong(&v20->_primaryIndex, index);
    objc_storeStrong(&v20->_secondaryIndex, secondaryIndex);
    v20->_type = type;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPCommandKey alloc];
  beaconingKey = [(SPCommandKey *)self beaconingKey];
  commandKey = [(SPCommandKey *)self commandKey];
  connectionToken = [(SPCommandKey *)self connectionToken];
  nearbyToken = [(SPCommandKey *)self nearbyToken];
  primaryIndex = [(SPCommandKey *)self primaryIndex];
  secondaryIndex = [(SPCommandKey *)self secondaryIndex];
  v11 = [(SPCommandKey *)v4 initWithBeaconingKey:beaconingKey commandKey:commandKey connectionToken:connectionToken nearbyToken:nearbyToken primaryIndex:primaryIndex secondaryIndex:secondaryIndex type:[(SPCommandKey *)self type]];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  beaconingKey = self->_beaconingKey;
  coderCopy = coder;
  [coderCopy encodeObject:beaconingKey forKey:@"beaconingKey"];
  [coderCopy encodeObject:self->_commandKey forKey:@"commandKey"];
  [coderCopy encodeObject:self->_connectionToken forKey:@"connectionToken"];
  [coderCopy encodeObject:self->_nearbyToken forKey:@"nearbyToken"];
  [coderCopy encodeObject:self->_primaryIndex forKey:@"primaryIndex"];
  [coderCopy encodeObject:self->_secondaryIndex forKey:@"secondaryIndex"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (SPCommandKey)initWithCoder:(id)coder
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

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryIndex"];
  primaryIndex = self->_primaryIndex;
  self->_primaryIndex = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryIndex"];
  secondaryIndex = self->_secondaryIndex;
  self->_secondaryIndex = v15;

  v17 = [coderCopy decodeIntegerForKey:@"type"];
  self->_type = v17;
  return self;
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  beaconingKey = [(SPCommandKey *)self beaconingKey];
  commandKey = [(SPCommandKey *)self commandKey];
  v4 = [commandKey length];
  connectionToken = [(SPCommandKey *)self connectionToken];
  v6 = [connectionToken length];
  nearbyToken = [(SPCommandKey *)self nearbyToken];
  v8 = [nearbyToken length];
  primaryIndex = [(SPCommandKey *)self primaryIndex];
  unsignedLongValue = [primaryIndex unsignedLongValue];
  secondaryIndex = [(SPCommandKey *)self secondaryIndex];
  v12 = [v16 stringWithFormat:@"<%@: %p -- beaconingKey: %@ commandKey: %lu connectionToken: %lu nearbyToken: %lu> primaryIndex: %lu> secondaryIndex: %lu>", v15, self, beaconingKey, v4, v6, v8, unsignedLongValue, objc_msgSend(secondaryIndex, "unsignedLongValue")];

  return v12;
}

- (NSDateInterval)dateInterval
{
  beaconingKey = [(SPCommandKey *)self beaconingKey];
  dateInterval = [beaconingKey dateInterval];

  return dateInterval;
}

@end