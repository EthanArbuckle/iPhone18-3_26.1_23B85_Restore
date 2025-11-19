@interface SPBeaconingKey
- (SPBeaconingKey)initWithCoder:(id)a3;
- (SPBeaconingKey)initWithDateInterval:(id)a3 key:(id)a4;
- (SPBeaconingKey)initWithDateInterval:(id)a3 key:(id)a4 secondaryKey:(id)a5 primaryIndex:(unint64_t)a6 secondaryIndex:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconingKey

- (SPBeaconingKey)initWithDateInterval:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPBeaconingKey;
  v9 = [(SPBeaconingKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateInterval, a3);
    objc_storeStrong(&v10->_key, a4);
  }

  return v10;
}

- (SPBeaconingKey)initWithDateInterval:(id)a3 key:(id)a4 secondaryKey:(id)a5 primaryIndex:(unint64_t)a6 secondaryIndex:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = SPBeaconingKey;
  v16 = [(SPBeaconingKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dateInterval, a3);
    objc_storeStrong(&v17->_key, a4);
    objc_storeStrong(&v17->_secondaryKey, a5);
    v17->_primaryIndex = a6;
    v17->_secondaryIndex = a7;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconingKey alloc];
  v5 = [(SPBeaconingKey *)self dateInterval];
  v6 = [(SPBeaconingKey *)self key];
  v7 = [(SPBeaconingKey *)self secondaryKey];
  v8 = [(SPBeaconingKey *)v4 initWithDateInterval:v5 key:v6 secondaryKey:v7 primaryIndex:[(SPBeaconingKey *)self primaryIndex] secondaryIndex:[(SPBeaconingKey *)self secondaryIndex]];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_key forKey:@"key"];
  [v5 encodeObject:self->_secondaryKey forKey:@"secondaryKey"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_primaryIndex];
  [v5 encodeObject:v6 forKey:@"primaryIndex"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_secondaryIndex];
  [v5 encodeObject:v7 forKey:@"secondaryIndex"];
}

- (SPBeaconingKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  dateInterval = self->_dateInterval;
  self->_dateInterval = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  key = self->_key;
  self->_key = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryKey"];
  secondaryKey = self->_secondaryKey;
  self->_secondaryKey = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryIndex"];
  self->_primaryIndex = [v11 unsignedIntegerValue];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryIndex"];

  self->_secondaryIndex = [v12 unsignedIntegerValue];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPBeaconingKey *)self dateInterval];
  v6 = [(SPBeaconingKey *)self key];
  v7 = [(SPBeaconingKey *)self secondaryKey];
  v8 = [v3 stringWithFormat:@"<%@: %p -- dateInterval: %@ key: %@ secondaryKey: %@ primaryIndex: %llu secondaryIndex: %llu>", v4, self, v5, v6, v7, -[SPBeaconingKey primaryIndex](self, "primaryIndex"), -[SPBeaconingKey secondaryIndex](self, "secondaryIndex")];

  return v8;
}

@end