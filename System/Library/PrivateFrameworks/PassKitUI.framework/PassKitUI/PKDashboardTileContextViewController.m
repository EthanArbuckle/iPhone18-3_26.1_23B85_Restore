@interface PKDashboardTileContextViewController
- (PKDashboardTileContextViewController)initWithTitle:(id)a3 dataSource:(id)a4;
- (id)presentationWindowForSectionedDataSource:(id)a3;
- (void)dashboardPassLinkedAppItemPresenter:(id)a3 reloadItemForCollectionViewCell:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKDashboardTileContextViewController

- (PKDashboardTileContextViewController)initWithTitle:(id)a3 dataSource:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PKDashboardPassTilesItemPresenter);
  v9 = objc_alloc_init(PKDashboardPassLinkedAppItemPresenter);
  v16[0] = v8;
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v11 = objc_alloc_init(PKTileContextCompositionalLayout);
  v15.receiver = self;
  v15.super_class = PKDashboardTileContextViewController;
  v12 = [(PKDashboardViewController *)&v15 initWithDataSource:v7 presenters:v10 layout:v11];
  v13 = v12;
  if (v12)
  {
    [(PKDashboardTileContextViewController *)v12 setTitle:v6];
    [v7 setPresentationProvider:v13];
    [(PKDashboardPassTilesItemPresenter *)v8 setDelegate:v13];
    [(PKDashboardPassLinkedAppItemPresenter *)v9 setDelegate:v13];
  }

  return v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKDashboardTileContextViewController;
  [(PKDashboardViewController *)&v5 viewDidLoad];
  v3 = [(PKDashboardTileContextViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)dashboardPassLinkedAppItemPresenter:(id)a3 reloadItemForCollectionViewCell:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKDashboardTileContextViewController *)self collectionView];
  v7 = [v6 indexPathForCell:v5];

  if (v7)
  {
    v9[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 reloadItemsAtIndexPaths:v8];
  }
}

- (id)presentationWindowForSectionedDataSource:(id)a3
{
  v3 = [(PKDashboardTileContextViewController *)self navigationController];
  v4 = [v3 view];
  v5 = [v4 window];

  return v5;
}

@end