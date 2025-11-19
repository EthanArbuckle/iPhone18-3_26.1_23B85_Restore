@interface SearchUIRequestProductPageCommandHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIRequestProductPageCommandHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v5 = a3;
  v8 = [v5 distributorBundleIdentifier];
  v6 = [v5 itemIdentifier];
  v7 = [v5 versionIdentifier];

  [_TtC8SearchUI31SearchUIMarketplaceKitUtilities requestProductPageWithDistributorID:v8 itemID:v6 versionID:v7 completionHandler:&__block_literal_global_24];
}

@end