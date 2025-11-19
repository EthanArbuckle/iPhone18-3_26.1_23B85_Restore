@interface SFOpenCoreSpotlightItemCommand(SearchUICommandClass)
- (void)_searchUICommandHandlerClass;
@end

@implementation SFOpenCoreSpotlightItemCommand(SearchUICommandClass)

- (void)_searchUICommandHandlerClass
{
  v1 = [a1 applicationBundleIdentifier];
  if ([SearchUIUtilities isAppInstalledWithBundleId:v1])
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end