@interface PXPeopleDetailSettingsFaceCropController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXPeopleDetailSettingsFaceCropController)init;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation PXPeopleDetailSettingsFaceCropController

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 10.0;
  v6 = 0.0;
  v7 = 10.0;
  v8 = 2.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"faceCropCellIdentifier" forIndexPath:v6];
  [v7 setTag:{objc_msgSend(v7, "tag") + 1}];
  v8 = [(PXPeopleDetailSettingsFaceCropController *)self dataSource];
  v9 = [v8 nameAtIndexPath:v6];

  v10 = [(PXPeopleDetailSettingsFaceCropController *)self dataSource];
  v11 = [v10 imageAtIndexPath:v6];

  [v7 setImage:v11];
  v12 = [v7 avatarView];
  [v12 setAlpha:1.0];
  [v12 setHighlighted:0];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  v16[0] = *MEMORY[0x1E695EFD0];
  v16[1] = v13;
  v16[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v12 setTransform:v16];
  v14 = [v7 quantityLabel];
  [v14 removeFromSuperview];

  [v7 setName:v9];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PXPeopleDetailSettingsFaceCropController *)self dataSource:a3];
  v5 = [v4 numberOfAssets];

  return v5;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PXPeopleDetailSettingsFaceCropController;
  [(PXPeopleDetailSettingsFaceCropController *)&v15 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setMinimumInteritemSpacing:2.0];
  [v3 setMinimumLineSpacing:2.0];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(PXPeopleDetailSettingsFaceCropController *)self view];
  [v5 frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(PXPeopleDetailSettingsFaceCropController *)self setCollectionView:v6];

  v7 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [v7 setAutoresizingMask:18];

  v8 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [v8 setDataSource:self];

  v9 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [v9 setDelegate:self];

  v10 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"faceCropCellIdentifier"];

  v11 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [v11 setBackgroundColor:v12];

  v13 = [(PXPeopleDetailSettingsFaceCropController *)self view];
  v14 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [v13 addSubview:v14];
}

- (PXPeopleDetailSettingsFaceCropController)init
{
  v6.receiver = self;
  v6.super_class = PXPeopleDetailSettingsFaceCropController;
  v2 = [(PXPeopleDetailSettingsFaceCropController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXPeopleDetailSettingsFaceCropDataSource);
    dataSource = v2->_dataSource;
    v2->_dataSource = v3;
  }

  return v2;
}

@end