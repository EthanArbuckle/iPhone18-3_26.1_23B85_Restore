@interface PXCloudQuotaOfferController
- (id)initForDismissibleOffers:(BOOL)offers;
- (id)presentingViewControllerForBannerView:(id)view;
- (int64_t)_mockOfferLevel;
- (void)_updateInformationView;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PXCloudQuotaOfferController

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v6 = NSStringFromSelector(sel_cloudQuotaOfferLevel);
  v7 = [keyCopy isEqualToString:v6];

  if (v7)
  {

    [(PXCloudQuotaOfferController *)self _updateInformationView];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PXCloudQuotaOfferControllerUserDefaultsContext)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PXCloudQuotaOfferController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXCloudQuotaOfferController;
    [(PXCloudQuotaOfferController *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)presentingViewControllerForBannerView:(id)view
{
  v12 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = PLUserStatusGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    offer = [viewCopy offer];
    v7 = PXCloudQuotaOfferDebugDescription(offer);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Presenting view controller for offer:%{public}@", &v10, 0xCu);
  }

  presentingViewControllerForInformationView = [(PXCloudQuotaController *)self presentingViewControllerForInformationView];

  return presentingViewControllerForInformationView;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXCloudQuotaOfferProviderObservationContext_89668 == context)
  {
    [(PXCloudQuotaOfferController *)self _updateInformationView:observable];
  }
}

- (void)_updateInformationView
{
  v32[3] = *MEMORY[0x1E69E9840];
  _mockOfferLevel = [(PXCloudQuotaOfferController *)self _mockOfferLevel];
  if (_mockOfferLevel)
  {
    v4 = _mockOfferLevel;
    if (_mockOfferLevel == 1)
    {
      v5 = PLUserStatusGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        v6 = *&buf[4];
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Mock showing no information banner!", buf, 0x16u);
      }

      v7 = 0;
    }

    else
    {
      v12 = PLUserStatusGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        v13 = *&buf[4];
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Create mock information banner!", buf, 0x16u);
      }

      v7 = [[PXCloudQuotaMockView alloc] initWithCloudQuotaFull:v4 == 3];
    }
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v8 = getICQBannerViewClass_softClass_89672;
    v29 = getICQBannerViewClass_softClass_89672;
    if (!getICQBannerViewClass_softClass_89672)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getICQBannerViewClass_block_invoke_89673;
      v31 = &unk_1E774BD00;
      v32[0] = &v26;
      __getICQBannerViewClass_block_invoke_89673(buf);
      v8 = v27[3];
    }

    v9 = v8;
    _Block_object_dispose(&v26, 8);
    dismissibleOffers = [(PXCloudQuotaOfferController *)self dismissibleOffers];
    offerProvider = self->_offerProvider;
    if (dismissibleOffers)
    {
      [(PXCloudQuotaOfferProvider *)offerProvider dismissibleOffer];
    }

    else
    {
      [(PXCloudQuotaOfferProvider *)offerProvider offer];
    }
    v14 = ;
    if (v14)
    {
      v15 = PLUserStatusGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        if ([(PXCloudQuotaOfferController *)self dismissibleOffers])
        {
          v18 = @"dismissible";
        }

        else
        {
          v18 = @"non-dismissible";
        }

        v19 = PXCloudQuotaOfferDebugDescription(v14);
        *buf = 138544130;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        v31 = v18;
        LOWORD(v32[0]) = 2114;
        *(v32 + 2) = v19;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Create information banner for %@ offer:%{public}@", buf, 0x2Au);
      }

      dismissibleOffers2 = [(PXCloudQuotaOfferController *)self dismissibleOffers];
      v21 = [v8 alloc];
      if (dismissibleOffers2)
      {
        v22 = [v21 initWithDismissibleOffer:v14];
      }

      else
      {
        v22 = [v21 initWithOffer:v14];
      }

      v23 = v22;
      [v22 setDelegate:self];
      v7 = [[PXCloudQuotaBannerView alloc] initWithBannerView:v23];
      v24 = [v14 level] - 1;
      if (v24 > 2)
      {
        v25 = 0;
      }

      else
      {
        v25 = qword_1A5381548[v24];
      }

      [(PXCloudQuotaView *)v7 setOfferLevel:v25];
    }

    else
    {
      v7 = 0;
    }
  }

  [(PXCloudQuotaController *)self setInformationView:v7];
}

- (int64_t)_mockOfferLevel
{
  v2 = +[PXCPLStatusSettings sharedInstance];
  cloudQuotaOfferLevel = [v2 cloudQuotaOfferLevel];
  if (!cloudQuotaOfferLevel)
  {
    v4 = _SharedDefaults();
    v5 = [v4 stringForKey:@"PXCloudQuotaControllerOfferLevelMock"];

    if ([v5 isEqualToString:@"no-offer"])
    {
      cloudQuotaOfferLevel = 1;
    }

    else if ([v5 isEqualToString:@"almost-full"])
    {
      cloudQuotaOfferLevel = 2;
    }

    else if ([v5 isEqualToString:@"full"])
    {
      cloudQuotaOfferLevel = 3;
    }

    else
    {
      cloudQuotaOfferLevel = 0;
    }
  }

  return cloudQuotaOfferLevel;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v4 = v8;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> dealloc", buf, 0x16u);
  }

  v5 = _SharedDefaults();
  [v5 removeObserver:self forKeyPath:@"PXCloudQuotaControllerOfferLevelMock" context:&PXCloudQuotaOfferControllerUserDefaultsContext];

  v6.receiver = self;
  v6.super_class = PXCloudQuotaOfferController;
  [(PXCloudQuotaOfferController *)&v6 dealloc];
}

- (id)initForDismissibleOffers:(BOOL)offers
{
  v11.receiver = self;
  v11.super_class = PXCloudQuotaOfferController;
  v4 = [(PXCloudQuotaController *)&v11 init];
  p_isa = &v4->super.super.isa;
  if (v4)
  {
    v4->_dismissibleOffers = offers;
    v6 = +[PXCloudQuotaOfferProvider currentOfferProvider];
    v7 = p_isa[3];
    p_isa[3] = v6;

    [p_isa[3] registerChangeObserver:p_isa context:PXCloudQuotaOfferProviderObservationContext_89668];
    [p_isa _updateInformationView];
    v8 = +[PXCPLStatusSettings sharedInstance];
    [v8 addDeferredKeyObserver:p_isa];

    v9 = _SharedDefaults();
    [v9 addObserver:p_isa forKeyPath:@"PXCloudQuotaControllerOfferLevelMock" options:0 context:&PXCloudQuotaOfferControllerUserDefaultsContext];
  }

  return p_isa;
}

@end