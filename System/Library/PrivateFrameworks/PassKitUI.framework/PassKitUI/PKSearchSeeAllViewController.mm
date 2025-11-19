@interface PKSearchSeeAllViewController
- (PKSearchSeeAllViewController)initWithSearchResultItems:(id)a3 itemPresenter:(id)a4 searchQuery:(id)a5;
- (PKSearchSeeAllViewControllerDelegate)seeAllViewControllerDelegate;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dashboardPaymentSetupProductPresenter:(id)a3 actionButtonPressedOnCellAtIndexPath:(id)a4;
- (void)updateWithItems:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKSearchSeeAllViewController

- (PKSearchSeeAllViewController)initWithSearchResultItems:(id)a3 itemPresenter:(id)a4 searchQuery:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[PKSearchSeeAllDashboardDataSource alloc] initWithItems:v8 searchQuery:v10];

  v12 = objc_alloc_init(PKDashboardSearchSeeAllHeaderItemPresenter);
  v13 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  v18[0] = v12;
  v18[1] = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17.receiver = self;
  v17.super_class = PKSearchSeeAllViewController;
  v15 = [(PKDashboardViewController *)&v17 initWithDataSource:v11 presenters:v14 layout:v13];

  if (v15)
  {
    objc_storeStrong(&v15->_itemPresenter, a4);
    v15->_presentationCounter = 0;
    if ([v8 count])
    {
      [(PKDashboardViewController *)v15 contentIsLoaded];
    }
  }

  return v15;
}

- (void)updateWithItems:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardViewController *)self dataSource];
  [v5 updateWithItems:v4];

  [(PKDashboardViewController *)self updateContent];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKSearchSeeAllViewController;
  [(PKDashboardViewController *)&v5 viewDidLoad];
  v3 = [(PKSearchSeeAllViewController *)self view];
  v4 = +[PKDashboardViewController backgroundColor];
  [v3 setBackgroundColor:v4];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PKSearchSeeAllViewController;
  [(PKDashboardViewController *)&v13 collectionView:v6 didSelectItemAtIndexPath:v7];
  ++self->_presentationCounter;
  WeakRetained = objc_loadWeakRetained(&self->_seeAllViewControllerDelegate);
  if (WeakRetained)
  {
    v9 = [(PKDashboardViewController *)self dataSource];
    v10 = [v9 itemAtIndexPath:v7];

    v11 = [(PKDashboardItemPresenter *)self->_itemPresenter itemClass];
    if (v11 == objc_opt_class() && [(PKDashboardItemPresenter *)self->_itemPresenter conformsToProtocol:&unk_1F3D13340])
    {
      v12 = [(PKDashboardItemPresenter *)self->_itemPresenter searchHistoryStringForItem:v10 inCollectionView:v6 atIndexPath:v7];
      [WeakRetained searchSeeAllViewController:self saveSearchHistory:v12];
    }
  }
}

- (void)dashboardPaymentSetupProductPresenter:(id)a3 actionButtonPressedOnCellAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = (self->_presentationCounter + 1);
  self->_presentationCounter = v8;
  objc_initWeak(&location, self);
  v9 = [v7 row];
  v10 = [(PKDashboardViewController *)self dataSource];
  v11 = [v10 items];
  if (v9 < [v11 count])
  {
    v12 = [v11 objectAtIndex:v9];
    if (v12)
    {
      v13 = [(PKSearchSeeAllViewController *)self collectionView];
      v14 = [(PKSearchSeeAllViewController *)self navigationController];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __107__PKSearchSeeAllViewController_dashboardPaymentSetupProductPresenter_actionButtonPressedOnCellAtIndexPath___block_invoke;
      v15[3] = &unk_1E8013C18;
      objc_copyWeak(v16, &location);
      v16[1] = v8;
      [v6 performActionForItem:v12 inCollectionView:v13 atIndexPath:v7 navigationController:v14 canPresent:v15];

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