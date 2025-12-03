@interface DDSTrialProvider
- (id)contentItemsFromAssets:(id)assets matchingFilter:(id)filter;
- (void)fetchTrialAssetForQuery:(id)query callback:(id)callback;
- (void)registerDelegate:(id)delegate;
- (void)setUpTrialForQuery:(id)query;
- (void)unregisterDelegate:(id)delegate;
@end

@implementation DDSTrialProvider

- (id)contentItemsFromAssets:(id)assets matchingFilter:(id)filter
{
  v5 = MEMORY[0x277D04010];
  filterCopy = filter;
  assetsCopy = assets;
  sharedInstance = [v5 sharedInstance];
  v9 = [sharedInstance contentItemsFromAssets:assetsCopy matchingFilter:filterCopy];

  return v9;
}

- (void)fetchTrialAssetForQuery:(id)query callback:(id)callback
{
  v5 = MEMORY[0x277D04010];
  callbackCopy = callback;
  queryCopy = query;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance fetchTrialAssetForQuery:queryCopy callback:callbackCopy];
}

- (void)setUpTrialForQuery:(id)query
{
  v3 = MEMORY[0x277D04010];
  queryCopy = query;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance setUpTrialForQuery:queryCopy];
}

- (void)unregisterDelegate:(id)delegate
{
  v3 = MEMORY[0x277D04010];
  delegateCopy = delegate;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance unregisterDelegate:delegateCopy];
}

- (void)registerDelegate:(id)delegate
{
  v3 = MEMORY[0x277D04010];
  delegateCopy = delegate;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance registerDelegate:delegateCopy];
}

@end