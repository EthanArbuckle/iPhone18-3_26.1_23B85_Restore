@interface SearchUIRequestProductPageCommandHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIRequestProductPageCommandHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  distributorBundleIdentifier = [commandCopy distributorBundleIdentifier];
  itemIdentifier = [commandCopy itemIdentifier];
  versionIdentifier = [commandCopy versionIdentifier];

  [_TtC8SearchUI31SearchUIMarketplaceKitUtilities requestProductPageWithDistributorID:distributorBundleIdentifier itemID:itemIdentifier versionID:versionIdentifier completionHandler:&__block_literal_global_24];
}

@end