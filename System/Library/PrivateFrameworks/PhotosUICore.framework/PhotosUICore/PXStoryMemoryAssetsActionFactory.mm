@interface PXStoryMemoryAssetsActionFactory
- (PXStoryMemoryAssetsActionFactory)initWithViewModel:(id)model;
- (id)assetsPickerPresenter;
- (id)rearrangeMemoryAssetsActionWithAssetCollection:(id)collection movedAssets:(id)assets beforeAsset:(id)asset;
@end

@implementation PXStoryMemoryAssetsActionFactory

- (id)assetsPickerPresenter
{
  viewModel = [(PXStoryMemoryAssetsActionFactory *)self viewModel];
  actionPerformer = [viewModel actionPerformer];

  return actionPerformer;
}

- (id)rearrangeMemoryAssetsActionWithAssetCollection:(id)collection movedAssets:(id)assets beforeAsset:(id)asset
{
  assetCopy = asset;
  assetsCopy = assets;
  collectionCopy = collection;
  viewModel = [(PXStoryMemoryAssetsActionFactory *)self viewModel];
  mainModel = [viewModel mainModel];

  currentAssetCollection = [mainModel currentAssetCollection];

  if (currentAssetCollection != collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryAssetsActionFactory.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"assetCollection == modelCollection"}];
  }

  v15 = [[PXStoryRearrangeMemoryAssetsAction alloc] initWithModel:mainModel movedAssets:assetsCopy beforeAsset:assetCopy];

  return v15;
}

- (PXStoryMemoryAssetsActionFactory)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXStoryMemoryAssetsActionFactory;
  v6 = [(PXStoryMemoryAssetsActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
  }

  return v7;
}

@end