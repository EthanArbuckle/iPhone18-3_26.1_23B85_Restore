@interface PXCloudQuotaPremiumOfferController
- (PXCloudQuotaPremiumOfferController)init;
- (id)presentingViewControllerForTileView:(id)a3;
- (void)_updateInformationView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCloudQuotaPremiumOfferController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXCloudQuotaOfferProviderObservationContext_33064 == a5)
  {
    [(PXCloudQuotaPremiumOfferController *)self _updateInformationView:a3];
  }
}

- (id)presentingViewControllerForTileView:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 offer];
    v7 = PXCloudQuotaOfferDebugDescription(v6);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Presenting view controller for premium offer:%{public}@", &v10, 0xCu);
  }

  v8 = [(PXCloudQuotaController *)self presentingViewControllerForInformationView];

  return v8;
}

- (void)_updateInformationView
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PXCloudQuotaPremiumOfferProvider *)self->_premiumOfferProvider premiumOffer];
  if (v3)
  {
    v4 = PLUserStatusGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = PXCloudQuotaOfferDebugDescription(v3);
      *buf = 138543874;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v18 = v7;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Create view for premium offer:%{public}@", buf, 0x20u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v8 = getICQTileViewClass_softClass;
    v16 = getICQTileViewClass_softClass;
    if (!getICQTileViewClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getICQTileViewClass_block_invoke;
      v18 = &unk_1E774BD00;
      v19 = &v13;
      __getICQTileViewClass_block_invoke(buf);
      v8 = v14[3];
    }

    v9 = v8;
    _Block_object_dispose(&v13, 8);
    v10 = [v8 alloc];
    v11 = [v10 initWithPremiumOffer:{v3, v13}];
    [v11 setDelegate:self];
    v12 = [[PXCloudQuotaTileView alloc] initWithTileView:v11];
  }

  else
  {
    v12 = 0;
  }

  [(PXCloudQuotaController *)self setInformationView:v12];
}

- (PXCloudQuotaPremiumOfferController)init
{
  v6.receiver = self;
  v6.super_class = PXCloudQuotaPremiumOfferController;
  v2 = [(PXCloudQuotaController *)&v6 init];
  if (v2)
  {
    v3 = +[PXCloudQuotaPremiumOfferProvider currentPremiumOfferProvider];
    premiumOfferProvider = v2->_premiumOfferProvider;
    v2->_premiumOfferProvider = v3;

    [(PXCloudQuotaPremiumOfferProvider *)v2->_premiumOfferProvider registerChangeObserver:v2 context:PXCloudQuotaOfferProviderObservationContext_33064];
    [(PXCloudQuotaPremiumOfferController *)v2 _updateInformationView];
  }

  return v2;
}

@end