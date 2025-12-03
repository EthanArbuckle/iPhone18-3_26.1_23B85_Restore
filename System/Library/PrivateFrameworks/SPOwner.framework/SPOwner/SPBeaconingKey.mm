@interface SPBeaconingKey
- (SPBeaconingKey)initWithCoder:(id)coder;
- (SPBeaconingKey)initWithDateInterval:(id)interval key:(id)key;
- (SPBeaconingKey)initWithDateInterval:(id)interval key:(id)key secondaryKey:(id)secondaryKey primaryIndex:(unint64_t)index secondaryIndex:(unint64_t)secondaryIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconingKey

- (SPBeaconingKey)initWithDateInterval:(id)interval key:(id)key
{
  intervalCopy = interval;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = SPBeaconingKey;
  v9 = [(SPBeaconingKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateInterval, interval);
    objc_storeStrong(&v10->_key, key);
  }

  return v10;
}

- (SPBeaconingKey)initWithDateInterval:(id)interval key:(id)key secondaryKey:(id)secondaryKey primaryIndex:(unint64_t)index secondaryIndex:(unint64_t)secondaryIndex
{
  intervalCopy = interval;
  keyCopy = key;
  secondaryKeyCopy = secondaryKey;
  v19.receiver = self;
  v19.super_class = SPBeaconingKey;
  v16 = [(SPBeaconingKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dateInterval, interval);
    objc_storeStrong(&v17->_key, key);
    objc_storeStrong(&v17->_secondaryKey, secondaryKey);
    v17->_primaryIndex = index;
    v17->_secondaryIndex = secondaryIndex;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconingKey alloc];
  dateInterval = [(SPBeaconingKey *)self dateInterval];
  v6 = [(SPBeaconingKey *)self key];
  secondaryKey = [(SPBeaconingKey *)self secondaryKey];
  v8 = [(SPBeaconingKey *)v4 initWithDateInterval:dateInterval key:v6 secondaryKey:secondaryKey primaryIndex:[(SPBeaconingKey *)self primaryIndex] secondaryIndex:[(SPBeaconingKey *)self secondaryIndex]];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeObject:self->_secondaryKey forKey:@"secondaryKey"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_primaryIndex];
  [coderCopy encodeObject:v6 forKey:@"primaryIndex"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_secondaryIndex];
  [coderCopy encodeObject:v7 forKey:@"secondaryIndex"];
}

- (SPBeaconingKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  dateInterval = self->_dateInterval;
  self->_dateInterval = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  key = self->_key;
  self->_key = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryKey"];
  secondaryKey = self->_secondaryKey;
  self->_secondaryKey = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryIndex"];
  self->_primaryIndex = [v11 unsignedIntegerValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryIndex"];

  self->_secondaryIndex = [v12 unsignedIntegerValue];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dateInterval = [(SPBeaconingKey *)self dateInterval];
  v6 = [(SPBeaconingKey *)self key];
  secondaryKey = [(SPBeaconingKey *)self secondaryKey];
  v8 = [v3 stringWithFormat:@"<%@: %p -- dateInterval: %@ key: %@ secondaryKey: %@ primaryIndex: %llu secondaryIndex: %llu>", v4, self, dateInterval, v6, secondaryKey, -[SPBeaconingKey primaryIndex](self, "primaryIndex"), -[SPBeaconingKey secondaryIndex](self, "secondaryIndex")];

  return v8;
}

@end