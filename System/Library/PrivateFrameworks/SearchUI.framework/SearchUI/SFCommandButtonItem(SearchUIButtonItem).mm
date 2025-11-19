@interface SFCommandButtonItem(SearchUIButtonItem)
- (void)_searchUIButtonItemGeneratorClass;
@end

@implementation SFCommandButtonItem(SearchUIButtonItem)

- (void)_searchUIButtonItemGeneratorClass
{
  v1 = [a1 command];
  v2 = [v1 _searchUIButtonItemGeneratorClass];
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  v3 = v2;

  return v2;
}

@end