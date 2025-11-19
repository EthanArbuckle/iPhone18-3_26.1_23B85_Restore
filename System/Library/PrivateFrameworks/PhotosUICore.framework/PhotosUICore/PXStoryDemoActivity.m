@interface PXStoryDemoActivity
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)assets;
@end

@implementation PXStoryDemoActivity

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [PXStoryConfiguration alloc];
  [(PXActivity *)self itemSourceController];
  [objc_claimAutoreleasedReturnValue() assets];
  [objc_claimAutoreleasedReturnValue() array];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromArray();
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = +[PXRootSettings sharedInstance];
  v5 = [v4 canShowInternalUI];

  if (!v5)
  {
    return 0;
  }

  v6 = [(PXActivity *)self itemSourceController];
  v7 = [v6 assets];
  v8 = [v7 count] != 0;

  return v8;
}

- (id)assets
{
  v2 = [(PXActivity *)self itemSourceController];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [v2 assets];
  v5 = [v4 array];
  v6 = [v3 arrayWithArray:v5];

  return v6;
}

@end