@interface SearchUIAppIconImageOverride
- (SearchUIAppIconImageOverride)initWithName:(id)name bundle:(id)bundle;
@end

@implementation SearchUIAppIconImageOverride

- (SearchUIAppIconImageOverride)initWithName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = SearchUIAppIconImageOverride;
  v9 = [(SearchUIAppIconImageOverride *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageName, name);
    objc_storeStrong(&v10->_bundle, bundle);
  }

  return v10;
}

@end