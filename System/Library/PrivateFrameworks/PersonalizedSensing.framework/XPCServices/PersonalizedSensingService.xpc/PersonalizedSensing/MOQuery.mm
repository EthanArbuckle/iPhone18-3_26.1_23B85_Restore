@interface MOQuery
- (BOOL)isEqual:(id)a3;
- (MOQuery)initWithCoder:(id)a3;
- (MOQuery)initWithQueryIdentifier:(id)a3 queryString:(id)a4 queryCategory:(unint64_t)a5 queryEventType:(unint64_t)a6 queryVersion:(int)a7 queryTemperature:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOQuery

- (MOQuery)initWithQueryIdentifier:(id)a3 queryString:(id)a4 queryCategory:(unint64_t)a5 queryEventType:(unint64_t)a6 queryVersion:(int)a7 queryTemperature:(double)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = MOQuery;
  v17 = [(MOQuery *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queryIdentifier, a3);
    objc_storeStrong(&v18->_queryString, a4);
    v18->_queryCategory = a5;
    v18->_queryEventType = a6;
    v18->_queryVersion = a7;
    v18->_queryTemperature = a8;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  queryIdentifier = self->_queryIdentifier;
  v5 = a3;
  [v5 encodeObject:queryIdentifier forKey:@"queryIdentifier"];
  [v5 encodeObject:self->_queryString forKey:@"queryString"];
  [v5 encodeInteger:self->_queryCategory forKey:@"queryCategory"];
  [v5 encodeInteger:self->_queryCategory forKey:@"queryCategory"];
  [v5 encodeInt:self->_queryVersion forKey:@"queryVersion"];
  [v5 encodeDouble:@"queryTemperature" forKey:self->_queryTemperature];
}

- (MOQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MOQuery;
  v5 = [(MOQuery *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryIdentifier"];
    queryIdentifier = v5->_queryIdentifier;
    v5->_queryIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];
    queryString = v5->_queryString;
    v5->_queryString = v8;

    v5->_queryCategory = [v4 decodeIntegerForKey:@"queryCategory"];
    v5->_queryEventType = [v4 decodeIntegerForKey:@"queryEventType"];
    v5->_queryVersion = [v4 decodeIntForKey:@"queryVersion"];
    [v4 decodeDoubleForKey:@"queryTemperature"];
    v5->_queryTemperature = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOQuery);
  objc_storeStrong(&v4->_queryIdentifier, self->_queryIdentifier);
  objc_storeStrong(&v4->_queryString, self->_queryString);
  v4->_queryCategory = self->_queryCategory;
  v4->_queryEventType = self->_queryEventType;
  v4->_queryVersion = self->_queryVersion;
  v4->_queryTemperature = self->_queryTemperature;
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"queryString, %@>", self->_queryString];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOQuery *)self queryIdentifier];
        if (v8 || ([(MOQuery *)v7 queryIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOQuery *)self queryIdentifier];
          v10 = [(MOQuery *)v7 queryIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end