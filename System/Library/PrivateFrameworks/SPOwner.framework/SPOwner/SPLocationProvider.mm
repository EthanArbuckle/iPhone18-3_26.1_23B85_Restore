@interface SPLocationProvider
- (BOOL)isEqual:(id)a3;
- (SPLocationProvider)initWithCoder:(id)a3;
- (SPLocationProvider)initWithTimestamp:(id)a3 provider:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPLocationProvider

- (SPLocationProvider)initWithTimestamp:(id)a3 provider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPLocationProvider;
  v9 = [(SPLocationProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, a3);
    objc_storeStrong(&v10->_provider, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPLocationProvider *)self timestamp];
      v7 = [(SPLocationProvider *)v5 timestamp];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(SPLocationProvider *)self provider];
        v9 = [(SPLocationProvider *)v5 provider];
        v10 = [v8 isEqual:v9];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPLocationProvider alloc];
  v5 = [(SPLocationProvider *)self timestamp];
  v6 = [(SPLocationProvider *)self provider];
  v7 = [(SPLocationProvider *)v4 initWithTimestamp:v5 provider:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_provider forKey:@"provider"];
}

- (SPLocationProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SPLocationProvider;
  v5 = [(SPLocationProvider *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v8;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SPLocationProvider *)self provider];
  v5 = [v4 destination];
  v6 = [(SPLocationProvider *)self timestamp];
  v7 = [v6 description];
  v8 = [v3 initWithFormat:@"Location Provider: %@, timestamp: %@", v5, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPLocationProvider *)self provider];
  v6 = [v5 destination];
  v7 = [(SPLocationProvider *)self timestamp];
  v8 = [v7 description];
  v9 = [v3 stringWithFormat:@"<%@: %p %@:%@>", v4, self, v6, v8];

  return v9;
}

@end