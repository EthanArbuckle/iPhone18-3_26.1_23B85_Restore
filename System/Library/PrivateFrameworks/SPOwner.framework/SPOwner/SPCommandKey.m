@interface SPCommandKey
- (NSData)address;
- (NSDateInterval)dateInterval;
- (NSString)description;
- (SPCommandKey)initWithBeaconingKey:(id)a3 commandKey:(id)a4 connectionToken:(id)a5 nearbyToken:(id)a6 primaryIndex:(id)a7 secondaryIndex:(id)a8 type:(int64_t)a9;
- (SPCommandKey)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCommandKey

- (NSData)address
{
  v2 = [(SPCommandKey *)self beaconingKey];
  v3 = [v2 key];
  v4 = [v3 subdataWithRange:{0, 6}];

  return v4;
}

- (SPCommandKey)initWithBeaconingKey:(id)a3 commandKey:(id)a4 connectionToken:(id)a5 nearbyToken:(id)a6 primaryIndex:(id)a7 secondaryIndex:(id)a8 type:(int64_t)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = SPCommandKey;
  v19 = [(SPCommandKey *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_beaconingKey, a3);
    objc_storeStrong(&v20->_commandKey, a4);
    objc_storeStrong(&v20->_connectionToken, a5);
    objc_storeStrong(&v20->_nearbyToken, a6);
    objc_storeStrong(&v20->_primaryIndex, a7);
    objc_storeStrong(&v20->_secondaryIndex, a8);
    v20->_type = a9;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPCommandKey alloc];
  v5 = [(SPCommandKey *)self beaconingKey];
  v6 = [(SPCommandKey *)self commandKey];
  v7 = [(SPCommandKey *)self connectionToken];
  v8 = [(SPCommandKey *)self nearbyToken];
  v9 = [(SPCommandKey *)self primaryIndex];
  v10 = [(SPCommandKey *)self secondaryIndex];
  v11 = [(SPCommandKey *)v4 initWithBeaconingKey:v5 commandKey:v6 connectionToken:v7 nearbyToken:v8 primaryIndex:v9 secondaryIndex:v10 type:[(SPCommandKey *)self type]];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  beaconingKey = self->_beaconingKey;
  v5 = a3;
  [v5 encodeObject:beaconingKey forKey:@"beaconingKey"];
  [v5 encodeObject:self->_commandKey forKey:@"commandKey"];
  [v5 encodeObject:self->_connectionToken forKey:@"connectionToken"];
  [v5 encodeObject:self->_nearbyToken forKey:@"nearbyToken"];
  [v5 encodeObject:self->_primaryIndex forKey:@"primaryIndex"];
  [v5 encodeObject:self->_secondaryIndex forKey:@"secondaryIndex"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (SPCommandKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconingKey"];
  beaconingKey = self->_beaconingKey;
  self->_beaconingKey = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandKey"];
  commandKey = self->_commandKey;
  self->_commandKey = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectionToken"];
  connectionToken = self->_connectionToken;
  self->_connectionToken = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nearbyToken"];
  nearbyToken = self->_nearbyToken;
  self->_nearbyToken = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryIndex"];
  primaryIndex = self->_primaryIndex;
  self->_primaryIndex = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryIndex"];
  secondaryIndex = self->_secondaryIndex;
  self->_secondaryIndex = v15;

  v17 = [v4 decodeIntegerForKey:@"type"];
  self->_type = v17;
  return self;
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v14 = [(SPCommandKey *)self beaconingKey];
  v3 = [(SPCommandKey *)self commandKey];
  v4 = [v3 length];
  v5 = [(SPCommandKey *)self connectionToken];
  v6 = [v5 length];
  v7 = [(SPCommandKey *)self nearbyToken];
  v8 = [v7 length];
  v9 = [(SPCommandKey *)self primaryIndex];
  v10 = [v9 unsignedLongValue];
  v11 = [(SPCommandKey *)self secondaryIndex];
  v12 = [v16 stringWithFormat:@"<%@: %p -- beaconingKey: %@ commandKey: %lu connectionToken: %lu nearbyToken: %lu> primaryIndex: %lu> secondaryIndex: %lu>", v15, self, v14, v4, v6, v8, v10, objc_msgSend(v11, "unsignedLongValue")];

  return v12;
}

- (NSDateInterval)dateInterval
{
  v2 = [(SPCommandKey *)self beaconingKey];
  v3 = [v2 dateInterval];

  return v3;
}

@end