@interface SPCommandKeys
- (NSData)address;
- (NSDateInterval)dateInterval;
- (NSString)description;
- (SPCommandKeys)initWithBeaconingKey:(id)a3 commandKey:(id)a4 connectionToken:(id)a5 nearbyToken:(id)a6;
- (SPCommandKeys)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCommandKeys

- (SPCommandKeys)initWithBeaconingKey:(id)a3 commandKey:(id)a4 connectionToken:(id)a5 nearbyToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SPCommandKeys;
  v15 = [(SPCommandKeys *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_beaconingKey, a3);
    objc_storeStrong(&v16->_commandKey, a4);
    objc_storeStrong(&v16->_connectionToken, a5);
    objc_storeStrong(&v16->_nearbyToken, a6);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPCommandKeys alloc];
  v5 = [(SPCommandKeys *)self beaconingKey];
  v6 = [(SPCommandKeys *)self commandKey];
  v7 = [(SPCommandKeys *)self connectionToken];
  v8 = [(SPCommandKeys *)self nearbyToken];
  v9 = [(SPCommandKeys *)v4 initWithBeaconingKey:v5 commandKey:v6 connectionToken:v7 nearbyToken:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  beaconingKey = self->_beaconingKey;
  v5 = a3;
  [v5 encodeObject:beaconingKey forKey:@"beaconingKey"];
  [v5 encodeObject:self->_commandKey forKey:@"commandKey"];
  [v5 encodeObject:self->_connectionToken forKey:@"connectionToken"];
  [v5 encodeObject:self->_nearbyToken forKey:@"nearbyToken"];
}

- (SPCommandKeys)initWithCoder:(id)a3
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

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPCommandKeys *)self beaconingKey];
  v6 = [(SPCommandKeys *)self commandKey];
  v7 = [v6 length];
  v8 = [(SPCommandKeys *)self connectionToken];
  v9 = [v8 length];
  v10 = [(SPCommandKeys *)self nearbyToken];
  v11 = [v3 stringWithFormat:@"<%@: %p -- beaconingKey: %@ commandKey: %lu connectionToken: %lu nearbyToken: %lu>", v4, self, v5, v7, v9, objc_msgSend(v10, "length")];

  return v11;
}

- (NSData)address
{
  v2 = [(SPCommandKeys *)self beaconingKey];
  v3 = [v2 key];
  v4 = [v3 subdataWithRange:{0, 6}];

  return v4;
}

- (NSDateInterval)dateInterval
{
  v2 = [(SPCommandKeys *)self beaconingKey];
  v3 = [v2 dateInterval];

  return v3;
}

@end