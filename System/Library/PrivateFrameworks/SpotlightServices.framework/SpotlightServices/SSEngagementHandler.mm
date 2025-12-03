@interface SSEngagementHandler
+ (void)userEngagedResultWithIdentifier:(id)identifier forQueryString:(id)string;
+ (void)userEngagedResultWithIdentifier:(id)identifier forQueryString:(id)string bundle:(id)bundle;
@end

@implementation SSEngagementHandler

+ (void)userEngagedResultWithIdentifier:(id)identifier forQueryString:(id)string
{
  v5 = MEMORY[0x1E696AAE8];
  stringCopy = string;
  identifierCopy = identifier;
  mainBundle = [v5 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [SSEngagementHandler userEngagedResultWithIdentifier:identifierCopy forQueryString:stringCopy bundle:bundleIdentifier];
}

+ (void)userEngagedResultWithIdentifier:(id)identifier forQueryString:(id)string bundle:(id)bundle
{
  bundleCopy = bundle;
  stringCopy = string;
  identifierCopy = identifier;
  v10 = +[PRSAnonymousPipelineManagerSession sharedManager];
  [v10 userEngagedItemWithIdentifier:identifierCopy forBundle:bundleCopy forQuery:stringCopy];
}

@end