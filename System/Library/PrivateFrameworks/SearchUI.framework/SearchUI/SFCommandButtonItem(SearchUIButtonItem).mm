@interface SFCommandButtonItem(SearchUIButtonItem)
- (void)_searchUIButtonItemGeneratorClass;
@end

@implementation SFCommandButtonItem(SearchUIButtonItem)

- (void)_searchUIButtonItemGeneratorClass
{
  command = [self command];
  _searchUIButtonItemGeneratorClass = [command _searchUIButtonItemGeneratorClass];
  if (!_searchUIButtonItemGeneratorClass)
  {
    _searchUIButtonItemGeneratorClass = objc_opt_class();
  }

  v3 = _searchUIButtonItemGeneratorClass;

  return _searchUIButtonItemGeneratorClass;
}

@end