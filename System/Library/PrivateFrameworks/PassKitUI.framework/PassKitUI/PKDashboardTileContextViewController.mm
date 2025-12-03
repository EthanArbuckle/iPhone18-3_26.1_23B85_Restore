@interface PKDashboardTileContextViewController
- (PKDashboardTileContextViewController)initWithTitle:(id)title dataSource:(id)source;
- (id)presentationWindowForSectionedDataSource:(id)source;
- (void)dashboardPassLinkedAppItemPresenter:(id)presenter reloadItemForCollectionViewCell:(id)cell;
- (void)viewDidLoad;
@end

@implementation PKDashboardTileContextViewController

- (PKDashboardTileContextViewController)initWithTitle:(id)title dataSource:(id)source
{
  v16[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  sourceCopy = source;
  v8 = objc_alloc_init(PKDashboardPassTilesItemPresenter);
  v9 = objc_alloc_init(PKDashboardPassLinkedAppItemPresenter);
  v16[0] = v8;
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v11 = objc_alloc_init(PKTileContextCompositionalLayout);
  v15.receiver = self;
  v15.super_class = PKDashboardTileContextViewController;
  v12 = [(PKDashboardViewController *)&v15 initWithDataSource:sourceCopy presenters:v10 layout:v11];
  v13 = v12;
  if (v12)
  {
    [(PKDashboardTileContextViewController *)v12 setTitle:titleCopy];
    [sourceCopy setPresentationProvider:v13];
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
  view = [(PKDashboardTileContextViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [view setBackgroundColor:v4];
}

- (void)dashboardPassLinkedAppItemPresenter:(id)presenter reloadItemForCollectionViewCell:(id)cell
{
  v9[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = [(PKDashboardTileContextViewController *)self collectionView];
  v7 = [collectionView indexPathForCell:cellCopy];

  if (v7)
  {
    v9[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [collectionView reloadItemsAtIndexPaths:v8];
  }
}

- (id)presentationWindowForSectionedDataSource:(id)source
{
  navigationController = [(PKDashboardTileContextViewController *)self navigationController];
  view = [navigationController view];
  window = [view window];

  return window;
}

@end