@interface PXPeopleDonationSettingsSuggestionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXPeopleDonationSettingsSuggestionViewController)initWithPerson:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)loadDataSource;
- (void)viewDidLoad;
@end

@implementation PXPeopleDonationSettingsSuggestionViewController

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
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"faceCellIdentifier" forIndexPath:v6];
  [v7 setTag:{objc_msgSend(v7, "tag") + 1}];
  v8 = [v6 item];

  v9 = [(PHFetchResult *)self->_faceCrops objectAtIndexedSubscript:v8];
  v10 = [v9 resourceData];
  v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v10];
  [v7 setImage:v11];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = [(PXPeopleDonationSettingsSuggestionViewController *)self collectionView:a3];
  [v5 contentSize];
  v7 = v6;

  v8 = 30.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PXPeopleDonationSettingsSuggestionViewController;
  [(PXPeopleDonationSettingsSuggestionViewController *)&v10 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setMinimumLineSpacing:15.0];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(PXPeopleDonationSettingsSuggestionViewController *)self view];
  [v5 frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];

  [v6 setAutoresizingMask:18];
  [v6 setDataSource:self];
  [v6 setDelegate:self];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setAllowsSelection:0];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"faceCellIdentifier"];
  [(PXPeopleDonationSettingsSuggestionViewController *)self setCollectionView:v6];
  v8 = [(PXPeopleDonationSettingsSuggestionViewController *)self view];
  v9 = [(PXPeopleDonationSettingsSuggestionViewController *)self collectionView];
  [v8 addSubview:v9];

  [(PXPeopleDonationSettingsSuggestionViewController *)self loadDataSource];
}

- (void)loadDataSource
{
  v3 = [(PXPeopleDonationSettingsSuggestionViewController *)self person];
  v4 = [(PXPeopleDonationSettingsSuggestionViewController *)self collectionView];
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXPeopleDonationSettingsSuggestionViewController_loadDataSource__block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

void __66__PXPeopleDonationSettingsSuggestionViewController_loadDataSource__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E69787F0] fetchTransientTrainingFaceCropsForPerson:*(a1 + 40) options:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1016);
  *(v4 + 1016) = v3;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXPeopleDonationSettingsSuggestionViewController_loadDataSource__block_invoke_2;
  block[3] = &unk_1E774C648;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_sync_exit(v2);
}

- (PXPeopleDonationSettingsSuggestionViewController)initWithPerson:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPeopleDonationSettingsSuggestionViewController;
  v6 = [(PXPeopleDonationSettingsSuggestionViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
  }

  return v7;
}

@end