@interface QLSpotlightSearchableItemInfo
+ (id)spotlightInfoWithUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier;
- (QLSpotlightSearchableItemInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLSpotlightSearchableItemInfo

+ (id)spotlightInfoWithUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  stringCopy = string;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  [v10 setSearchableItemUniqueIdentifier:identifierCopy];

  [v10 setQueryString:stringCopy];
  [v10 setApplicationBundleIdentifier:bundleIdentifierCopy];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  searchableItemUniqueIdentifier = self->_searchableItemUniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:searchableItemUniqueIdentifier forKey:@"searchableItemUniqueIdentifier"];
  [coderCopy encodeObject:self->_queryString forKey:@"queryString"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
}

- (QLSpotlightSearchableItemInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = QLSpotlightSearchableItemInfo;
  v5 = [(QLSpotlightSearchableItemInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemUniqueIdentifier"];
    searchableItemUniqueIdentifier = v5->_searchableItemUniqueIdentifier;
    v5->_searchableItemUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];
    queryString = v5->_queryString;
    v5->_queryString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;
  }

  return v5;
}

@end