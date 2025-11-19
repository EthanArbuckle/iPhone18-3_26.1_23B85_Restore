@interface QLSpotlightSearchableItemInfo
+ (id)spotlightInfoWithUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5;
- (QLSpotlightSearchableItemInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLSpotlightSearchableItemInfo

+ (id)spotlightInfoWithUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setSearchableItemUniqueIdentifier:v9];

  [v10 setQueryString:v8];
  [v10 setApplicationBundleIdentifier:v7];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  searchableItemUniqueIdentifier = self->_searchableItemUniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:searchableItemUniqueIdentifier forKey:@"searchableItemUniqueIdentifier"];
  [v5 encodeObject:self->_queryString forKey:@"queryString"];
  [v5 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
}

- (QLSpotlightSearchableItemInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = QLSpotlightSearchableItemInfo;
  v5 = [(QLSpotlightSearchableItemInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemUniqueIdentifier"];
    searchableItemUniqueIdentifier = v5->_searchableItemUniqueIdentifier;
    v5->_searchableItemUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];
    queryString = v5->_queryString;
    v5->_queryString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;
  }

  return v5;
}

@end