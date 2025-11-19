@interface SPBeaconPayloadCacheSearchCriteria
- (SPBeaconPayloadCacheSearchCriteria)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconPayloadCacheSearchCriteria

- (SPBeaconPayloadCacheSearchCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];
  [(SPBeaconPayloadCacheSearchCriteria *)self setSearchResultMarker:v5];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchLimit"];

  [(SPBeaconPayloadCacheSearchCriteria *)self setFetchLimit:v6];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPBeaconPayloadCacheSearchCriteria *)self searchResultMarker];
  [v4 encodeObject:v5 forKey:@"searchResultMarker"];

  v6 = [(SPBeaconPayloadCacheSearchCriteria *)self fetchLimit];
  [v4 encodeObject:v6 forKey:@"fetchLimit"];
}

@end