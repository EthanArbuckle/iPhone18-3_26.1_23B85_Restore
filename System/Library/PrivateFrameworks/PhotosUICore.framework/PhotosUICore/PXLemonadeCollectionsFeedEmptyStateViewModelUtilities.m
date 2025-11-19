@interface PXLemonadeCollectionsFeedEmptyStateViewModelUtilities
+ (id)createEmptyStateViewModel;
@end

@implementation PXLemonadeCollectionsFeedEmptyStateViewModelUtilities

+ (id)createEmptyStateViewModel
{
  v2 = [[_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel alloc] initWithTitle:0 message:0 numberOfAssetResults:0 actionHandler:0];

  return v2;
}

@end