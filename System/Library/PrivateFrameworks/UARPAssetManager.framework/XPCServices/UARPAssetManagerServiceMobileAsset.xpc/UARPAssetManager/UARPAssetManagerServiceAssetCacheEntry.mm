@interface UARPAssetManagerServiceAssetCacheEntry
- (BOOL)isEqual:(id)a3;
- (UARPAssetManagerServiceAssetCacheEntry)initWithCoder:(id)a3;
- (UARPAssetManagerServiceAssetCacheEntry)initWithSubscription:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAssetManagerServiceAssetCacheEntry

- (UARPAssetManagerServiceAssetCacheEntry)initWithSubscription:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UARPAssetManagerServiceAssetCacheEntry;
  v5 = [(UARPAssetManagerServiceAssetCacheEntry *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    subscription = v5->_subscription;
    v5->_subscription = v6;

    v8 = +[NSDate date];
    lastSeen = v5->_lastSeen;
    v5->_lastSeen = v8;

    cachedRecord = v5->_cachedRecord;
    v5->_cachedRecord = 0;
  }

  return v5;
}

- (UARPAssetManagerServiceAssetCacheEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscription"];
  v6 = [(UARPAssetManagerServiceAssetCacheEntry *)self initWithSubscription:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSeen"];
    lastSeen = v6->_lastSeen;
    v6->_lastSeen = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    cachedRecord = v6->_cachedRecord;
    v6->_cachedRecord = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  subscription = self->_subscription;
  v5 = a3;
  [v5 encodeObject:subscription forKey:@"subscription"];
  [v5 encodeObject:self->_lastSeen forKey:@"lastSeen"];
  [v5 encodeObject:self->_cachedRecord forKey:@"record"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UARPAssetManagerServiceAssetCacheEntry alloc] initWithSubscription:self->_subscription];
  v5 = [(NSDate *)self->_lastSeen copy];
  lastSeen = v4->_lastSeen;
  v4->_lastSeen = v5;

  v7 = [(UARPAssetCacheRecord *)self->_cachedRecord copy];
  cachedRecord = v4->_cachedRecord;
  v4->_cachedRecord = v7;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      subscription = self->_subscription;
      v6 = [(UARPAssetManagerServiceAssetCacheEntry *)v4 subscription];
      v7 = [(UARPAssetSubscription *)subscription isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(UARPAssetManagerServiceAssetCacheEntry *)self subscription];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  subscription = self->_subscription;
  v6 = [NSString stringWithFormat:@"<%@: lastSeen=%@, subscription=%@, record=%@>", v4, self->_lastSeen, subscription, self->_cachedRecord];

  return v6;
}

@end