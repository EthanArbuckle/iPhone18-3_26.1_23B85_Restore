@interface MOEventAnalytics
- (MOEventAnalytics)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventAnalytics

- (void)encodeWithCoder:(id)a3
{
  trends = self->_trends;
  v7 = a3;
  v5 = [MODictionaryEncoder encodeDictionary:trends];
  [v7 encodeObject:v5 forKey:@"trends"];

  v6 = [MODictionaryEncoder encodeDictionary:self->_patterns];
  [v7 encodeObject:v6 forKey:@"patterns"];

  [v7 encodeInteger:self->_timeAtHomeSubType forKey:@"timeAtHomeSubtype"];
}

- (MOEventAnalytics)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MOEventAnalytics;
  v5 = [(MOEventAnalytics *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trends"];
    v7 = [MODictionaryEncoder decodeToDictionary:v6];
    trends = v5->_trends;
    v5->_trends = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patterns"];
    v10 = [MODictionaryEncoder decodeToDictionary:v9];
    patterns = v5->_patterns;
    v5->_patterns = v10;

    v5->_timeAtHomeSubType = [v4 decodeIntegerForKey:@"timeAtHomeSubtype"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventAnalytics);
  objc_storeStrong(&v4->_trends, self->_trends);
  objc_storeStrong(&v4->_patterns, self->_patterns);
  v4->_timeAtHomeSubType = self->_timeAtHomeSubType;
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NSDictionary *)self->_trends description];
  v5 = [(NSDictionary *)self->_patterns description];
  v6 = [v3 initWithFormat:@"trends data, {%@}, @patterns data, %@", v4, v5];

  return v6;
}

@end