@interface PUEditLocationActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityViewController;
@end

@implementation PUEditLocationActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    itemSourceController = [(PXActivity *)self itemSourceController];
    assets = [itemSourceController assets];
    array = [assets array];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PUEditLocationActivity_canPerformWithActivityItems___block_invoke;
    v10[3] = &unk_1E7B7BAA0;
    v10[4] = &v11;
    [array enumerateObjectsUsingBlock:v10];
    v8 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __54__PUEditLocationActivity_canPerformWithActivityItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 canPerformEditOperation:3];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

- (id)activityViewController
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  array = [assets array];

  v6 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:array title:0];
  v7 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PUEditLocationActivity_activityViewController__block_invoke;
  v10[3] = &unk_1E7B7F020;
  v10[4] = self;
  v8 = [MEMORY[0x1E69C38A0] searchViewControllerWithAssets:v7 delegate:self completion:v10];

  return v8;
}

@end