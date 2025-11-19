@interface PPConnectionsDonationStore
+ (id)defaultStore;
- (id)recentLocationDonationsSinceDate:(id)a3 error:(id *)a4;
@end

@implementation PPConnectionsDonationStore

- (id)recentLocationDonationsSinceDate:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[PPConnectionsDuetSource sharedInstance];
  v6 = [objc_alloc(MEMORY[0x277D3A340]) initWithLocationField:1 bundleIdentifier:0];
  v7 = objc_opt_new();
  LOWORD(v10) = 1;
  v8 = [v5 locationItemsWithCriteria:v6 earliest:v4 latest:v7 limit:0x7FFFFFFFFFFFFFFFLL duetLimit:0x7FFFFFFFFFFFFFFFLL consumer:0 richLocationItems:v10 resolveEKLocations:0 explanationSet:?];

  return v8;
}

+ (id)defaultStore
{
  if (defaultStore__pasOnceToken2 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken2, &__block_literal_global_2843);
  }

  v3 = defaultStore__pasExprOnceResult;

  return v3;
}

void __42__PPConnectionsDonationStore_defaultStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultStore__pasExprOnceResult;
  defaultStore__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end