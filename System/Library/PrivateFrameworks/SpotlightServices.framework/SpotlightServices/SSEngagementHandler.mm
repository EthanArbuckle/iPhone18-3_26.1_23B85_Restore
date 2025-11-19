@interface SSEngagementHandler
+ (void)userEngagedResultWithIdentifier:(id)a3 forQueryString:(id)a4;
+ (void)userEngagedResultWithIdentifier:(id)a3 forQueryString:(id)a4 bundle:(id)a5;
@end

@implementation SSEngagementHandler

+ (void)userEngagedResultWithIdentifier:(id)a3 forQueryString:(id)a4
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = a4;
  v7 = a3;
  v9 = [v5 mainBundle];
  v8 = [v9 bundleIdentifier];
  [SSEngagementHandler userEngagedResultWithIdentifier:v7 forQueryString:v6 bundle:v8];
}

+ (void)userEngagedResultWithIdentifier:(id)a3 forQueryString:(id)a4 bundle:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[PRSAnonymousPipelineManagerSession sharedManager];
  [v10 userEngagedItemWithIdentifier:v9 forBundle:v7 forQuery:v8];
}

@end