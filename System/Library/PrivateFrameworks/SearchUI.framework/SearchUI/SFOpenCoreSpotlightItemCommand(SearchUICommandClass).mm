@interface SFOpenCoreSpotlightItemCommand(SearchUICommandClass)
- (void)_searchUICommandHandlerClass;
@end

@implementation SFOpenCoreSpotlightItemCommand(SearchUICommandClass)

- (void)_searchUICommandHandlerClass
{
  applicationBundleIdentifier = [self applicationBundleIdentifier];
  if ([SearchUIUtilities isAppInstalledWithBundleId:applicationBundleIdentifier])
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