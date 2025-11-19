@interface REGeofenceRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REGeofenceRelevanceProvider)init;
- (REGeofenceRelevanceProvider)initWithDictionary:(id)a3;
- (REGeofenceRelevanceProvider)initWithRegion:(id)a3 bundleIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (REGeofenceRelevanceProvider)initWithRegion:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = REGeofenceRelevanceProvider;
  v9 = [(RERelevanceProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_region, a3);
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

- (REGeofenceRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"latitude"];
  v6 = [v4 objectForKeyedSubscript:@"longitude"];
  v7 = [v4 objectForKeyedSubscript:@"radius"];
  v8 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
  v9 = [v4 objectForKeyedSubscript:@"region_name"];

  v10 = &stru_283B97458;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  v12 = 0;
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

    v12 = self;
  }

  return v12;
}

- (id)dictionaryEncoding
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(CLCircularRegion *)self->_region center];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"latitude"];

  v6 = MEMORY[0x277CCABB0];
  [(CLCircularRegion *)self->_region center];
  v8 = [v6 numberWithDouble:v7];
  [v3 setObject:v8 forKeyedSubscript:@"longitude"];

  v9 = MEMORY[0x277CCABB0];
  [(CLCircularRegion *)self->_region radius];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"radius"];

  [v3 setObject:self->_bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];
  v11 = [(CLCircularRegion *)self->_region identifier];
  [v3 setObject:v11 forKeyedSubscript:@"region_name"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = REGeofenceRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_region);
  objc_storeStrong(v4 + 5, self->_bundleIdentifier);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = REGeofenceRelevanceProvider;
    if ([(RERelevanceProvider *)&v11 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
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