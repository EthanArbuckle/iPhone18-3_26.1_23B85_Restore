@interface MOQuery
- (BOOL)isEqual:(id)equal;
- (MOQuery)initWithCoder:(id)coder;
- (MOQuery)initWithQueryIdentifier:(id)identifier queryString:(id)string queryCategory:(unint64_t)category queryEventType:(unint64_t)type queryVersion:(int)version queryTemperature:(double)temperature;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOQuery

- (MOQuery)initWithQueryIdentifier:(id)identifier queryString:(id)string queryCategory:(unint64_t)category queryEventType:(unint64_t)type queryVersion:(int)version queryTemperature:(double)temperature
{
  identifierCopy = identifier;
  stringCopy = string;
  v20.receiver = self;
  v20.super_class = MOQuery;
  v17 = [(MOQuery *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queryIdentifier, identifier);
    objc_storeStrong(&v18->_queryString, string);
    v18->_queryCategory = category;
    v18->_queryEventType = type;
    v18->_queryVersion = version;
    v18->_queryTemperature = temperature;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  queryIdentifier = self->_queryIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:queryIdentifier forKey:@"queryIdentifier"];
  [coderCopy encodeObject:self->_queryString forKey:@"queryString"];
  [coderCopy encodeInteger:self->_queryCategory forKey:@"queryCategory"];
  [coderCopy encodeInteger:self->_queryCategory forKey:@"queryCategory"];
  [coderCopy encodeInt:self->_queryVersion forKey:@"queryVersion"];
  [coderCopy encodeDouble:@"queryTemperature" forKey:self->_queryTemperature];
}

- (MOQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MOQuery;
  v5 = [(MOQuery *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryIdentifier"];
    queryIdentifier = v5->_queryIdentifier;
    v5->_queryIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];
    queryString = v5->_queryString;
    v5->_queryString = v8;

    v5->_queryCategory = [coderCopy decodeIntegerForKey:@"queryCategory"];
    v5->_queryEventType = [coderCopy decodeIntegerForKey:@"queryEventType"];
    v5->_queryVersion = [coderCopy decodeIntForKey:@"queryVersion"];
    [coderCopy decodeDoubleForKey:@"queryTemperature"];
    v5->_queryTemperature = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        queryIdentifier = [(MOQuery *)self queryIdentifier];
        if (queryIdentifier || ([(MOQuery *)v7 queryIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          queryIdentifier2 = [(MOQuery *)self queryIdentifier];
          queryIdentifier3 = [(MOQuery *)v7 queryIdentifier];
          v11 = [queryIdentifier2 isEqual:queryIdentifier3];

          if (queryIdentifier)
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