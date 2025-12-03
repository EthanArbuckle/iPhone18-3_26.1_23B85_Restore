@interface REGeofenceRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REGeofenceRelevanceProvider)init;
- (REGeofenceRelevanceProvider)initWithDictionary:(id)dictionary;
- (REGeofenceRelevanceProvider)initWithRegion:(id)region bundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REGeofenceRelevanceProvider

- (REGeofenceRelevanceProvider)init
{
  v3 = objc_opt_new();
  v4 = [(REGeofenceRelevanceProvider *)self initWithRegion:v3];

  return v4;
}

- (REGeofenceRelevanceProvider)initWithRegion:(id)region bundleIdentifier:(id)identifier
{
  regionCopy = region;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = REGeofenceRelevanceProvider;
  v9 = [(RERelevanceProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_region, region);
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

- (REGeofenceRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"radius"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"region_name"];

  v10 = &stru_283B97458;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  selfCopy = 0;
  if (v5 && v6)
  {
    [v5 doubleValue];
    v14 = v13;
    [v6 doubleValue];
    v16 = v15;
    if (v7)
    {
      [v7 doubleValue];
      v18 = v17;
    }

    else
    {
      v18 = 1000.0;
    }

    v19 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v11 radius:v14 identifier:{v16, v18}];
    self = [(REGeofenceRelevanceProvider *)self initWithRegion:v19 bundleIdentifier:v8];

    selfCopy = self;
  }

  return selfCopy;
}

- (id)dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(CLCircularRegion *)self->_region center];
  v5 = [v4 numberWithDouble:?];
  [dictionary setObject:v5 forKeyedSubscript:@"latitude"];

  v6 = MEMORY[0x277CCABB0];
  [(CLCircularRegion *)self->_region center];
  v8 = [v6 numberWithDouble:v7];
  [dictionary setObject:v8 forKeyedSubscript:@"longitude"];

  v9 = MEMORY[0x277CCABB0];
  [(CLCircularRegion *)self->_region radius];
  v10 = [v9 numberWithDouble:?];
  [dictionary setObject:v10 forKeyedSubscript:@"radius"];

  [dictionary setObject:self->_bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];
  identifier = [(CLCircularRegion *)self->_region identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"region_name"];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REGeofenceRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_region);
  objc_storeStrong(v4 + 5, self->_bundleIdentifier);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = REGeofenceRelevanceProvider;
    if ([(RERelevanceProvider *)&v11 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      v6 = [(CLCircularRegion *)self->_region isEqual:v5->_region];
      bundleIdentifier = self->_bundleIdentifier;
      if (bundleIdentifier == v5->_bundleIdentifier)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSString *)bundleIdentifier isEqualToString:?];
      }

      v9 = v6 & v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = REGeofenceRelevanceProvider;
  v3 = [(REGeofenceRelevanceProvider *)&v7 description];
  region = self->_region;
  v5 = [v3 stringByAppendingFormat:@" region=%@ bundleIdentifier=%@", region, self->_bundleIdentifier];

  return v5;
}

@end