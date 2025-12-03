@interface PXPeopleDetailSettingsFaceCropController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PXPeopleDetailSettingsFaceCropController)init;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation PXPeopleDetailSettingsFaceCropController

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  [view bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  [view bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"faceCropCellIdentifier" forIndexPath:pathCopy];
  [v7 setTag:{objc_msgSend(v7, "tag") + 1}];
  dataSource = [(PXPeopleDetailSettingsFaceCropController *)self dataSource];
  v9 = [dataSource nameAtIndexPath:pathCopy];

  dataSource2 = [(PXPeopleDetailSettingsFaceCropController *)self dataSource];
  v11 = [dataSource2 imageAtIndexPath:pathCopy];

  [v7 setImage:v11];
  avatarView = [v7 avatarView];
  [avatarView setAlpha:1.0];
  [avatarView setHighlighted:0];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  v16[0] = *MEMORY[0x1E695EFD0];
  v16[1] = v13;
  v16[2] = *(MEMORY[0x1E695EFD0] + 32);
  [avatarView setTransform:v16];
  quantityLabel = [v7 quantityLabel];
  [quantityLabel removeFromSuperview];

  [v7 setName:v9];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PXPeopleDetailSettingsFaceCropController *)self dataSource:view];
  numberOfAssets = [v4 numberOfAssets];

  return numberOfAssets;
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
  view = [(PXPeopleDetailSettingsFaceCropController *)self view];
  [view frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(PXPeopleDetailSettingsFaceCropController *)self setCollectionView:v6];

  collectionView = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [collectionView setAutoresizingMask:18];

  collectionView2 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [collectionView2 setDataSource:self];

  collectionView3 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [collectionView3 setDelegate:self];

  collectionView4 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"faceCropCellIdentifier"];

  collectionView5 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [collectionView5 setBackgroundColor:whiteColor];

  view2 = [(PXPeopleDetailSettingsFaceCropController *)self view];
  collectionView6 = [(PXPeopleDetailSettingsFaceCropController *)self collectionView];
  [view2 addSubview:collectionView6];
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