@interface PXPeopleDetailSettingsAssetsViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXPeopleDetailSettingsAssetsViewController)initWithAssets:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXPeopleDetailSettingsAssetsViewController

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PXPeopleDetailSettingsAssetsViewController *)self assets];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v9 setDeliveryMode:0];
  [v9 setResizeMode:1];
  v10 = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  [v10 frame];
  v12 = v11;
  v13 = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  [v13 frame];
  v15 = v14;

  v16 = [[PXPeopleDetailSettingsOneUpViewController alloc] initWithAsset:0];
  v17 = [(PXPeopleDetailSettingsAssetsViewController *)self navigationController];
  [v17 pushViewController:v16 animated:1];

  v18 = [MEMORY[0x1E6978860] defaultManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__PXPeopleDetailSettingsAssetsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v20[3] = &unk_1E7745FE8;
  v21 = v16;
  v19 = v16;
  [v18 requestImageForAsset:v8 targetSize:0 contentMode:v9 options:v20 resultHandler:{v12, v15}];
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 110.0;
  v6 = 110.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PXPeopleDetailSettingsAssetsViewController *)self assets:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"faceCellIdentifier" forIndexPath:v6];
  v9 = [v8 tag] + 1;
  [v8 setTag:v9];
  v10 = [(PXPeopleDetailSettingsAssetsViewController *)self assets];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v13 setDeliveryMode:0];
  [v13 setResizeMode:1];
  [v7 px_screenScale];
  v15 = v14;

  v16 = [MEMORY[0x1E6978860] defaultManager];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__PXPeopleDetailSettingsAssetsViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v19[3] = &unk_1E774A840;
  v17 = v8;
  v20 = v17;
  v21 = v9;
  [v16 requestImageForAsset:v12 targetSize:1 contentMode:v13 options:v19 resultHandler:{v15 * 110.0, v15 * 110.0}];

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
  v5 = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  [v5 frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(PXPeopleDetailSettingsAssetsViewController *)self setCollectionView:v6];

  v7 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [v7 setAutoresizingMask:18];

  v8 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [v8 setDataSource:self];

  v9 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [v9 setDelegate:self];

  v10 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"faceCellIdentifier"];

  v11 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [(PXPeopleDetailSettingsAssetsViewController *)self view];
  v14 = [(PXPeopleDetailSettingsAssetsViewController *)self collectionView];
  [v13 addSubview:v14];
}

- (PXPeopleDetailSettingsAssetsViewController)initWithAssets:(id)a3
{
  v5 = a3;
  if (self)
  {
    [(PXPeopleDetailSettingsAssetsViewController *)self superclass];
    objc_storeStrong(&self->_assets, a3);
  }

  return self;
}

@end