@interface SPAdvertisementCacheSearchCriteria
- (SPAdvertisementCacheSearchCriteria)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPAdvertisementCacheSearchCriteria

- (SPAdvertisementCacheSearchCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];

  [(SPAdvertisementCacheSearchCriteria *)self setSearchResultMarker:v5];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPAdvertisementCacheSearchCriteria *)self searchResultMarker];
  [v4 encodeObject:v5 forKey:@"searchResultMarker"];
}

@end