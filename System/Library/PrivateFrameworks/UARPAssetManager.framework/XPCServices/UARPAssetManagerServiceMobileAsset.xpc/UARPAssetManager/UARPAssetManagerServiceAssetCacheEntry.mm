@interface UARPAssetManagerServiceAssetCacheEntry
- (BOOL)isEqual:(id)equal;
- (UARPAssetManagerServiceAssetCacheEntry)initWithCoder:(id)coder;
- (UARPAssetManagerServiceAssetCacheEntry)initWithSubscription:(id)subscription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAssetManagerServiceAssetCacheEntry

- (UARPAssetManagerServiceAssetCacheEntry)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v12.receiver = self;
  v12.super_class = UARPAssetManagerServiceAssetCacheEntry;
  v5 = [(UARPAssetManagerServiceAssetCacheEntry *)&v12 init];
  if (v5)
  {
    v6 = [subscriptionCopy copy];
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

- (UARPAssetManagerServiceAssetCacheEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscription"];
  v6 = [(UARPAssetManagerServiceAssetCacheEntry *)self initWithSubscription:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSeen"];
    lastSeen = v6->_lastSeen;
    v6->_lastSeen = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    cachedRecord = v6->_cachedRecord;
    v6->_cachedRecord = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  subscription = self->_subscription;
  coderCopy = coder;
  [coderCopy encodeObject:subscription forKey:@"subscription"];
  [coderCopy encodeObject:self->_lastSeen forKey:@"lastSeen"];
  [coderCopy encodeObject:self->_cachedRecord forKey:@"record"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      subscription = self->_subscription;
      subscription = [(UARPAssetManagerServiceAssetCacheEntry *)equalCopy subscription];
      v7 = [(UARPAssetSubscription *)subscription isEqual:subscription];
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
  subscription = [(UARPAssetManagerServiceAssetCacheEntry *)self subscription];
  v3 = [subscription hash];

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