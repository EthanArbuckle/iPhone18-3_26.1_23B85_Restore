@interface SPBeaconPayloadCacheSearchCriteria
- (SPBeaconPayloadCacheSearchCriteria)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconPayloadCacheSearchCriteria

- (SPBeaconPayloadCacheSearchCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];
  [(SPBeaconPayloadCacheSearchCriteria *)self setSearchResultMarker:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchLimit"];

  [(SPBeaconPayloadCacheSearchCriteria *)self setFetchLimit:v6];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  searchResultMarker = [(SPBeaconPayloadCacheSearchCriteria *)self searchResultMarker];
  [coderCopy encodeObject:searchResultMarker forKey:@"searchResultMarker"];

  fetchLimit = [(SPBeaconPayloadCacheSearchCriteria *)self fetchLimit];
  [coderCopy encodeObject:fetchLimit forKey:@"fetchLimit"];
}

@end