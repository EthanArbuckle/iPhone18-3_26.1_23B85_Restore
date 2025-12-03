@interface SPLocationProvider
- (BOOL)isEqual:(id)equal;
- (SPLocationProvider)initWithCoder:(id)coder;
- (SPLocationProvider)initWithTimestamp:(id)timestamp provider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPLocationProvider

- (SPLocationProvider)initWithTimestamp:(id)timestamp provider:(id)provider
{
  timestampCopy = timestamp;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = SPLocationProvider;
  v9 = [(SPLocationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, timestamp);
    objc_storeStrong(&v10->_provider, provider);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timestamp = [(SPLocationProvider *)self timestamp];
      timestamp2 = [(SPLocationProvider *)v5 timestamp];
      if ([timestamp isEqualToDate:timestamp2])
      {
        provider = [(SPLocationProvider *)self provider];
        provider2 = [(SPLocationProvider *)v5 provider];
        v10 = [provider isEqual:provider2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPLocationProvider alloc];
  timestamp = [(SPLocationProvider *)self timestamp];
  provider = [(SPLocationProvider *)self provider];
  v7 = [(SPLocationProvider *)v4 initWithTimestamp:timestamp provider:provider];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_provider forKey:@"provider"];
}

- (SPLocationProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SPLocationProvider;
  v5 = [(SPLocationProvider *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v8;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  provider = [(SPLocationProvider *)self provider];
  destination = [provider destination];
  timestamp = [(SPLocationProvider *)self timestamp];
  v7 = [timestamp description];
  v8 = [v3 initWithFormat:@"Location Provider: %@, timestamp: %@", destination, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  provider = [(SPLocationProvider *)self provider];
  destination = [provider destination];
  timestamp = [(SPLocationProvider *)self timestamp];
  v8 = [timestamp description];
  v9 = [v3 stringWithFormat:@"<%@: %p %@:%@>", v4, self, destination, v8];

  return v9;
}

@end