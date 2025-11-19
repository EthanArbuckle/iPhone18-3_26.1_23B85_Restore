@interface PXCloudQuotaControllerHelper
- (BOOL)hasAnyInformationViews;
- (PXCloudQuotaControllerHelperDelegate)delegate;
- (UIView)informationView;
- (id)initForDismissibleOffers:(BOOL)a3;
- (id)presentingViewControllerForCloudQuotaController:(id)a3;
- (void)cloudQuotaController:(id)a3 informationViewDidChange:(id)a4;
@end

@implementation PXCloudQuotaControllerHelper

- (PXCloudQuotaControllerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForCloudQuotaController:(id)a3
{
  v4 = [(PXCloudQuotaControllerHelper *)self delegate];
  v5 = [v4 presentingViewControllerForCloudQuotaControllerHelper:self];

  return v5;
}

- (void)cloudQuotaController:(id)a3 informationViewDidChange:(id)a4
{
  v5 = a4;
  v6 = [(PXCloudQuotaControllerHelper *)self delegate];
  [v6 cloudQuotaControllerHelper:self informationViewDidChange:v5];
}

- (UIView)informationView
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(PXCloudQuotaController *)self->_offerController informationView];
  v4 = [(PXCloudQuotaControllerHelper *)self premiumInformationView];

  if (v4 && v3)
  {
    v5 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v6 = v9;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Both offer and premium offer available. Will only use premium offer", &v8, 0x16u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)hasAnyInformationViews
{
  v3 = [(PXCloudQuotaController *)self->_offerController informationView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PXCloudQuotaController *)self->_premiumOfferController informationView];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)initForDismissibleOffers:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = @"non-dismissible";
    *buf = 138543874;
    v17 = v6;
    if (v3)
    {
      v7 = @"dismissible";
    }

    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v8 = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> init %@", buf, 0x20u);
  }

  v15.receiver = self;
  v15.super_class = PXCloudQuotaControllerHelper;
  v9 = [(PXCloudQuotaControllerHelper *)&v15 init];
  if (v9)
  {
    v10 = [[PXCloudQuotaOfferController alloc] initForDismissibleOffers:v3];
    offerController = v9->_offerController;
    v9->_offerController = v10;

    [(PXCloudQuotaController *)v9->_offerController setDelegate:v9];
    v12 = objc_alloc_init(PXCloudQuotaPremiumOfferController);
    premiumOfferController = v9->_premiumOfferController;
    v9->_premiumOfferController = v12;

    [(PXCloudQuotaController *)v9->_premiumOfferController setDelegate:v9];
    v9->_dismissibleOffers = v3;
  }

  return v9;
}

@end