@interface SearchUITemporaryInternalAppsIcon
- (SearchUITemporaryInternalAppsIcon)initWithResult:(id)a3 variant:(unint64_t)a4;
- (id)displayNameForLocation:(id)a3;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3;
@end

@implementation SearchUITemporaryInternalAppsIcon

- (SearchUITemporaryInternalAppsIcon)initWithResult:(id)a3 variant:(unint64_t)a4
{
  v7 = a3;
  v8 = [v7 applicationBundleIdentifier];
  v9 = [v7 applicationBundleIdentifier];
  v12.receiver = self;
  v12.super_class = SearchUITemporaryInternalAppsIcon;
  v10 = [(SBLeafIcon *)&v12 initWithLeafIdentifier:v8 applicationBundleID:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_searchResult, a3);
    v10->_variant = a4;
  }

  return v10;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3
{
  v4 = v3;
  v6 = [(SearchUITemporaryInternalAppsIcon *)self searchResult];
  if (v6)
  {
    v7 = [(SearchUITemporaryInternalAppsIcon *)self searchResult];
    v8 = [SearchUIAppIconImage appIconForResult:v7 variant:[(SearchUITemporaryInternalAppsIcon *)self variant]];
    v9 = [v8 loadImageWithScale:0 isDarkStyle:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)displayNameForLocation:(id)a3
{
  v3 = [(SearchUITemporaryInternalAppsIcon *)self searchResult];
  v4 = [v3 title];
  v5 = [v4 text];

  return v5;
}

@end