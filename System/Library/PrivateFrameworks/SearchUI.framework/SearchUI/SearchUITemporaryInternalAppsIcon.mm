@interface SearchUITemporaryInternalAppsIcon
- (SearchUITemporaryInternalAppsIcon)initWithResult:(id)result variant:(unint64_t)variant;
- (id)displayNameForLocation:(id)location;
- (id)iconImageWithInfo:(SBIconImageInfo *)info;
@end

@implementation SearchUITemporaryInternalAppsIcon

- (SearchUITemporaryInternalAppsIcon)initWithResult:(id)result variant:(unint64_t)variant
{
  resultCopy = result;
  applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
  applicationBundleIdentifier2 = [resultCopy applicationBundleIdentifier];
  v12.receiver = self;
  v12.super_class = SearchUITemporaryInternalAppsIcon;
  v10 = [(SBLeafIcon *)&v12 initWithLeafIdentifier:applicationBundleIdentifier applicationBundleID:applicationBundleIdentifier2];

  if (v10)
  {
    objc_storeStrong(&v10->_searchResult, result);
    v10->_variant = variant;
  }

  return v10;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info
{
  v4 = v3;
  searchResult = [(SearchUITemporaryInternalAppsIcon *)self searchResult];
  if (searchResult)
  {
    searchResult2 = [(SearchUITemporaryInternalAppsIcon *)self searchResult];
    v8 = [SearchUIAppIconImage appIconForResult:searchResult2 variant:[(SearchUITemporaryInternalAppsIcon *)self variant]];
    v9 = [v8 loadImageWithScale:0 isDarkStyle:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)displayNameForLocation:(id)location
{
  searchResult = [(SearchUITemporaryInternalAppsIcon *)self searchResult];
  title = [searchResult title];
  text = [title text];

  return text;
}

@end