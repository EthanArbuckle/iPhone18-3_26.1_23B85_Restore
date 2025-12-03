@interface PXPeopleDetailSettingsAssetsViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PXPeopleDetailSettingsAssetsViewController)initWithAssets:(id)assets;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PXPeopleDetailSettingsAssetsViewController

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  assets = [(PXPeopleDetailSettingsAssetsViewController *)self assets];
  v7 = [pathCopy row];

  v8 = [assets objectAtIndexedSubscript:v7];

  v9 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v9 setDeliveryMode:0];
  [v9 setResizeMode:1];
  view = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  [view frame];
  v12 = v11;
  view2 = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  [view2 frame];
  v15 = v14;

  v16 = [[PXPeopleDetailSettingsOneUpViewController alloc] initWithAsset:0];
  navigationController = [(PXPeopleDetailSettingsAssetsViewController *)self navigationController];
  [navigationController pushViewController:v16 animated:1];

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__PXPeopleDetailSettingsAssetsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v20[3] = &unk_1E7745FE8;
  v21 = v16;
  v19 = v16;
  [defaultManager requestImageForAsset:v8 targetSize:0 contentMode:v9 options:v20 resultHandler:{v12, v15}];
}

void __86__PXPeopleDetailSettingsAssetsViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PXPeopleDetailSettingsAssetsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v5[3] = &unk_1E774C620;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 2.0;
  v6 = 2.0;
  v7 = 2.0;
  v8 = 2.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = 110.0;
  v6 = 110.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PXPeopleDetailSettingsAssetsViewController *)self assets:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"faceCellIdentifier" forIndexPath:pathCopy];
  v9 = [v8 tag] + 1;
  [v8 setTag:v9];
  assets = [(PXPeopleDetailSettingsAssetsViewController *)self assets];
  v11 = [pathCopy row];

  v12 = [assets objectAtIndexedSubscript:v11];

  v13 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v13 setDeliveryMode:0];
  [v13 setResizeMode:1];
  [viewCopy px_screenScale];
  v15 = v14;

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__PXPeopleDetailSettingsAssetsViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v19[3] = &unk_1E774A840;
  v17 = v8;
  v20 = v17;
  v21 = v9;
  [defaultManager requestImageForAsset:v12 targetSize:1 contentMode:v13 options:v19 resultHandler:{v15 * 110.0, v15 * 110.0}];

  return v17;
}

void __84__PXPeopleDetailSettingsAssetsViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PXPeopleDetailSettingsAssetsViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
  block[3] = &unk_1E7749FF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__PXPeopleDetailSettingsAssetsViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) tag];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setImage:v4];
  }

  return result;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PXPeopleDetailSettingsAssetsViewController;
  [(PXPeopleDetailSettingsAssetsViewController *)&v15 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setMinimumInteritemSpacing:15.0];
  [v3 setMinimumLineSpacing:15.0];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  [view frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(PXPeopleDetailSettingsAssetsViewController *)self setCollectionView:v6];

  collectionView = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [collectionView setAutoresizingMask:18];

  collectionView2 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [collectionView2 setDataSource:self];

  collectionView3 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [collectionView3 setDelegate:self];

  collectionView4 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"faceCellIdentifier"];

  collectionView5 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [collectionView5 setBackgroundColor:systemBackgroundColor];

  view2 = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  collectionView6 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [view2 addSubview:collectionView6];
}

- (PXPeopleDetailSettingsAssetsViewController)initWithAssets:(id)assets
{
  assetsCopy = assets;
  if (self)
  {
    [(PXPeopleDetailSettingsAssetsViewController *)self superclass];
    objc_storeStrong(&self->_assets, assets);
  }

  return self;
}

@end