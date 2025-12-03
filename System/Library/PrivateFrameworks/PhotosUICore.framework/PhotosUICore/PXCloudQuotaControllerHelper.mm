@interface PXCloudQuotaControllerHelper
- (BOOL)hasAnyInformationViews;
- (PXCloudQuotaControllerHelperDelegate)delegate;
- (UIView)informationView;
- (id)initForDismissibleOffers:(BOOL)offers;
- (id)presentingViewControllerForCloudQuotaController:(id)controller;
- (void)cloudQuotaController:(id)controller informationViewDidChange:(id)change;
@end

@implementation PXCloudQuotaControllerHelper

- (PXCloudQuotaControllerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForCloudQuotaController:(id)controller
{
  delegate = [(PXCloudQuotaControllerHelper *)self delegate];
  v5 = [delegate presentingViewControllerForCloudQuotaControllerHelper:self];

  return v5;
}

- (void)cloudQuotaController:(id)controller informationViewDidChange:(id)change
{
  changeCopy = change;
  delegate = [(PXCloudQuotaControllerHelper *)self delegate];
  [delegate cloudQuotaControllerHelper:self informationViewDidChange:changeCopy];
}

- (UIView)informationView
{
  v12 = *MEMORY[0x1E69E9840];
  informationView = [(PXCloudQuotaController *)self->_offerController informationView];
  premiumInformationView = [(PXCloudQuotaControllerHelper *)self premiumInformationView];

  if (premiumInformationView && informationView)
  {
    v5 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2048;
      selfCopy = self;
      v6 = v9;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Both offer and premium offer available. Will only use premium offer", &v8, 0x16u);
    }

    informationView = 0;
  }

  return informationView;
}

- (BOOL)hasAnyInformationViews
{
  informationView = [(PXCloudQuotaController *)self->_offerController informationView];
  if (informationView)
  {
    v4 = 1;
  }

  else
  {
    informationView2 = [(PXCloudQuotaController *)self->_premiumOfferController informationView];
    v4 = informationView2 != 0;
  }

  return v4;
}

- (id)initForDismissibleOffers:(BOOL)offers
{
  offersCopy = offers;
  v22 = *MEMORY[0x1E69E9840];
  v5 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = @"non-dismissible";
    *buf = 138543874;
    v17 = v6;
    if (offersCopy)
    {
      v7 = @"dismissible";
    }

    v18 = 2048;
    selfCopy = self;
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
    v10 = [[PXCloudQuotaOfferController alloc] initForDismissibleOffers:offersCopy];
    offerController = v9->_offerController;
    v9->_offerController = v10;

    [(PXCloudQuotaController *)v9->_offerController setDelegate:v9];
    v12 = objc_alloc_init(PXCloudQuotaPremiumOfferController);
    premiumOfferController = v9->_premiumOfferController;
    v9->_premiumOfferController = v12;

    [(PXCloudQuotaController *)v9->_premiumOfferController setDelegate:v9];
    v9->_dismissibleOffers = offersCopy;
  }

  return v9;
}

@end