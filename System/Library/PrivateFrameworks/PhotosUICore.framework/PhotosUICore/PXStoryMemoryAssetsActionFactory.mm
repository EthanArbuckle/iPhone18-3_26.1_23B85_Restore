@interface PXStoryMemoryAssetsActionFactory
- (PXStoryMemoryAssetsActionFactory)initWithViewModel:(id)a3;
- (id)assetsPickerPresenter;
- (id)rearrangeMemoryAssetsActionWithAssetCollection:(id)a3 movedAssets:(id)a4 beforeAsset:(id)a5;
@end

@implementation PXStoryMemoryAssetsActionFactory

- (id)assetsPickerPresenter
{
  v2 = [(PXStoryMemoryAssetsActionFactory *)self viewModel];
  v3 = [v2 actionPerformer];

  return v3;
}

- (id)rearrangeMemoryAssetsActionWithAssetCollection:(id)a3 movedAssets:(id)a4 beforeAsset:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(PXStoryMemoryAssetsActionFactory *)self viewModel];
  v13 = [v12 mainModel];

  v14 = [v13 currentAssetCollection];

  if (v14 != v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryAssetsActionFactory.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"assetCollection == modelCollection"}];
  }

  v15 = [[PXStoryRearrangeMemoryAssetsAction alloc] initWithModel:v13 movedAssets:v10 beforeAsset:v9];

  return v15;
}

- (PXStoryMemoryAssetsActionFactory)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryMemoryAssetsActionFactory;
  v6 = [(PXStoryMemoryAssetsActionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

@end