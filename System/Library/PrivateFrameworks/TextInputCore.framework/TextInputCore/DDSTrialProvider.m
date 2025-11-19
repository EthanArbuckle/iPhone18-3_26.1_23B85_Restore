@interface DDSTrialProvider
- (id)contentItemsFromAssets:(id)a3 matchingFilter:(id)a4;
- (void)fetchTrialAssetForQuery:(id)a3 callback:(id)a4;
- (void)registerDelegate:(id)a3;
- (void)setUpTrialForQuery:(id)a3;
- (void)unregisterDelegate:(id)a3;
@end

@implementation DDSTrialProvider

- (id)contentItemsFromAssets:(id)a3 matchingFilter:(id)a4
{
  v5 = MEMORY[0x277D04010];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  v9 = [v8 contentItemsFromAssets:v7 matchingFilter:v6];

  return v9;
}

- (void)fetchTrialAssetForQuery:(id)a3 callback:(id)a4
{
  v5 = MEMORY[0x277D04010];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  [v8 fetchTrialAssetForQuery:v7 callback:v6];
}

- (void)setUpTrialForQuery:(id)a3
{
  v3 = MEMORY[0x277D04010];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 setUpTrialForQuery:v4];
}

- (void)unregisterDelegate:(id)a3
{
  v3 = MEMORY[0x277D04010];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 unregisterDelegate:v4];
}

- (void)registerDelegate:(id)a3
{
  v3 = MEMORY[0x277D04010];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 registerDelegate:v4];
}

@end