@interface PKSearchSeeAllViewController
- (PKSearchSeeAllViewController)initWithSearchResultItems:(id)items itemPresenter:(id)presenter searchQuery:(id)query;
- (PKSearchSeeAllViewControllerDelegate)seeAllViewControllerDelegate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dashboardPaymentSetupProductPresenter:(id)presenter actionButtonPressedOnCellAtIndexPath:(id)path;
- (void)updateWithItems:(id)items;
- (void)viewDidLoad;
@end

@implementation PKSearchSeeAllViewController

- (PKSearchSeeAllViewController)initWithSearchResultItems:(id)items itemPresenter:(id)presenter searchQuery:(id)query
{
  v18[2] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  presenterCopy = presenter;
  queryCopy = query;
  v11 = [[PKSearchSeeAllDashboardDataSource alloc] initWithItems:itemsCopy searchQuery:queryCopy];

  v12 = objc_alloc_init(PKDashboardSearchSeeAllHeaderItemPresenter);
  v13 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  v18[0] = v12;
  v18[1] = presenterCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17.receiver = self;
  v17.super_class = PKSearchSeeAllViewController;
  v15 = [(PKDashboardViewController *)&v17 initWithDataSource:v11 presenters:v14 layout:v13];

  if (v15)
  {
    objc_storeStrong(&v15->_itemPresenter, presenter);
    v15->_presentationCounter = 0;
    if ([itemsCopy count])
    {
      [(PKDashboardViewController *)v15 contentIsLoaded];
    }
  }

  return v15;
}

- (void)updateWithItems:(id)items
{
  itemsCopy = items;
  dataSource = [(PKDashboardViewController *)self dataSource];
  [dataSource updateWithItems:itemsCopy];

  [(PKDashboardViewController *)self updateContent];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKSearchSeeAllViewController;
  [(PKDashboardViewController *)&v5 viewDidLoad];
  view = [(PKSearchSeeAllViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [view setBackgroundColor:v4];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = PKSearchSeeAllViewController;
  [(PKDashboardViewController *)&v13 collectionView:viewCopy didSelectItemAtIndexPath:pathCopy];
  ++self->_presentationCounter;
  WeakRetained = objc_loadWeakRetained(&self->_seeAllViewControllerDelegate);
  if (WeakRetained)
  {
    dataSource = [(PKDashboardViewController *)self dataSource];
    v10 = [dataSource itemAtIndexPath:pathCopy];

    itemClass = [(PKDashboardItemPresenter *)self->_itemPresenter itemClass];
    if (itemClass == objc_opt_class() && [(PKDashboardItemPresenter *)self->_itemPresenter conformsToProtocol:&unk_1F3D13340])
    {
      v12 = [(PKDashboardItemPresenter *)self->_itemPresenter searchHistoryStringForItem:v10 inCollectionView:viewCopy atIndexPath:pathCopy];
      [WeakRetained searchSeeAllViewController:self saveSearchHistory:v12];
    }
  }
}

- (void)dashboardPaymentSetupProductPresenter:(id)presenter actionButtonPressedOnCellAtIndexPath:(id)path
{
  presenterCopy = presenter;
  pathCopy = path;
  v8 = (self->_presentationCounter + 1);
  self->_presentationCounter = v8;
  objc_initWeak(&location, self);
  v9 = [pathCopy row];
  dataSource = [(PKDashboardViewController *)self dataSource];
  items = [dataSource items];
  if (v9 < [items count])
  {
    v12 = [items objectAtIndex:v9];
    if (v12)
    {
      collectionView = [(PKSearchSeeAllViewController *)self collectionView];
      navigationController = [(PKSearchSeeAllViewController *)self navigationController];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __107__PKSearchSeeAllViewController_dashboardPaymentSetupProductPresenter_actionButtonPressedOnCellAtIndexPath___block_invoke;
      v15[3] = &unk_1E8013C18;
      objc_copyWeak(v16, &location);
      v16[1] = v8;
      [presenterCopy performActionForItem:v12 inCollectionView:collectionView atIndexPath:pathCopy navigationController:navigationController canPresent:v15];

      objc_destroyWeak(v16);
    }
  }

  objc_destroyWeak(&location);
}

BOOL __107__PKSearchSeeAllViewController_dashboardPaymentSetupProductPresenter_actionButtonPressedOnCellAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[152] == *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKSearchSeeAllViewControllerDelegate)seeAllViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_seeAllViewControllerDelegate);

  return WeakRetained;
}

@end