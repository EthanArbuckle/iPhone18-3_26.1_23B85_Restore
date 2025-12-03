@interface SPAdvertisementCacheSearchCriteria
- (SPAdvertisementCacheSearchCriteria)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAdvertisementCacheSearchCriteria

- (SPAdvertisementCacheSearchCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];

  [(SPAdvertisementCacheSearchCriteria *)self setSearchResultMarker:v5];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  searchResultMarker = [(SPAdvertisementCacheSearchCriteria *)self searchResultMarker];
  [coderCopy encodeObject:searchResultMarker forKey:@"searchResultMarker"];
}

@end