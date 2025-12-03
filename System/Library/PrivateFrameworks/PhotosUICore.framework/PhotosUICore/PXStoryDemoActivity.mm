@interface PXStoryDemoActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)assets;
@end

@implementation PXStoryDemoActivity

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v9 = [PXStoryConfiguration alloc];
  [(PXActivity *)self itemSourceController];
  [objc_claimAutoreleasedReturnValue() assets];
  [objc_claimAutoreleasedReturnValue() array];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromArray();
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v4 canShowInternalUI];

  if (!canShowInternalUI)
  {
    return 0;
  }

  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  v8 = [assets count] != 0;

  return v8;
}

- (id)assets
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  v3 = MEMORY[0x1E695DEC8];
  assets = [itemSourceController assets];
  array = [assets array];
  v6 = [v3 arrayWithArray:array];

  return v6;
}

@end