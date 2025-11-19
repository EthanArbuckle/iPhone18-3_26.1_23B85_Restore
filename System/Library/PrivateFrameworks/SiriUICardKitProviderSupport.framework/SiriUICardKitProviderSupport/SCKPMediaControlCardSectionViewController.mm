@interface SCKPMediaControlCardSectionViewController
+ (void)initialize;
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (SCKPMediaControlCardSectionViewController)initWithMediaRemoteControlCardSection:(id)a3;
- (id)_nowPlayingViewControllerWithRouteUID:(id)a3;
- (id)_nowPlayingVisualStylingProvider;
- (void)_updateActiveSystemEndpointForRouteUID:(id)a3;
- (void)_updatePlatterForHashedRouteUID:(id)a3;
- (void)_updatePlatterForRouteUID:(id)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SCKPMediaControlCardSectionViewController

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___SCKPMediaControlCardSectionViewController;
  objc_msgSendSuper2(&v2, sel_initialize);
  CRLogInitIfNeeded();
}

- (SCKPMediaControlCardSectionViewController)initWithMediaRemoteControlCardSection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCKPMediaControlCardSectionViewController;
  v6 = [(SCKPMediaControlCardSectionViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardSection, a3);
  }

  return v7;
}

- (void)loadView
{
  v7 = objc_alloc_init(SCKPMediaControlCardSectionView);
  [(SCKPMediaControlCardSectionViewController *)self setView:?];
  v3 = [(SCKPMediaControlCardSectionViewController *)self cardSection];
  v4 = [v3 playbackRouteUniqueIdentifierIsEncrypted];

  v5 = [(SCKPMediaControlCardSectionViewController *)self cardSection];
  v6 = [v5 playbackRouteUniqueIdentifier];
  if (v4)
  {
    [(SCKPMediaControlCardSectionViewController *)self _updatePlatterForHashedRouteUID:v6];
  }

  else
  {
    [(SCKPMediaControlCardSectionViewController *)self _updatePlatterForRouteUID:v6];
  }
}

- (void)_updatePlatterForHashedRouteUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_assistantSecurityConnection)
  {
    v8 = objc_alloc_init(MEMORY[0x277CEF388]);
    assistantSecurityConnection = self->_assistantSecurityConnection;
    self->_assistantSecurityConnection = v8;

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(SCKPMediaControlCardSectionViewController *)self _updatePlatterForRouteUID:0];
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
  objc_initWeak(&location, self);
  v7 = self->_assistantSecurityConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke;
  v10[3] = &unk_279C601C8;
  v11 = v5;
  objc_copyWeak(&v12, &location);
  [(AFSecurityConnection *)v7 processData:v6 usingProcedure:2 completion:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
LABEL_6:
}

void __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    v8 = MEMORY[0x277CF93F0];
    v9 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_26950D000, v9, OS_LOG_TYPE_DEFAULT, "Decoded routeUID: %@ => %@", buf, 0x16u);
    }

    if (v7)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_7;
      v12[3] = &unk_279C601A0;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v12);

      objc_destroyWeak(&v14);
    }

    else if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_cold_2();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePlatterForRouteUID:*(a1 + 32)];
}

- (void)_updatePlatterForRouteUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_26950D000, v5, OS_LOG_TYPE_DEFAULT, "update platter for routeUID: %@", &v12, 0xCu);
  }

  v6 = [(SCKPMediaControlCardSectionViewController *)self view];
  mediaPlatterViewController = self->_mediaPlatterViewController;
  if (mediaPlatterViewController)
  {
    [(UIViewController *)mediaPlatterViewController willMoveToParentViewController:0];
    [v6 setContentView:0];
    [(UIViewController *)self->_mediaPlatterViewController removeFromParentViewController];
    v8 = self->_mediaPlatterViewController;
    self->_mediaPlatterViewController = 0;
  }

  v9 = [(SCKPMediaControlCardSectionViewController *)self _nowPlayingViewControllerWithRouteUID:v4];
  if (v9)
  {
    [(SCKPMediaControlCardSectionViewController *)self addChildViewController:v9];
    v10 = [v9 view];
    [v6 setContentView:v10];

    [v9 didMoveToParentViewController:self];
    objc_storeStrong(&self->_mediaPlatterViewController, v9);
    [(SCKPMediaControlCardSectionViewController *)self _updateActiveSystemEndpointForRouteUID:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_nowPlayingViewControllerWithRouteUID:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    MRUNowPlayingViewControllerClass = getMRUNowPlayingViewControllerClass();
    if (MRUNowPlayingViewControllerClass)
    {
      v6 = [[MRUNowPlayingViewControllerClass alloc] initWithRouteUID:v4];
      v7 = objc_alloc(getMRUVisualStylingProviderClass());
      v8 = [(SCKPMediaControlCardSectionViewController *)self _nowPlayingVisualStylingProvider];
      v9 = [v7 initWithVisualStylingProvider:v8];
      [v6 setStylingProvider:v9];

      [v6 setLayout:4];
      [v6 setContext:5];
      goto LABEL_11;
    }

    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SCKPMediaControlCardSectionViewController _nowPlayingViewControllerWithRouteUID:];
    }
  }

  if (getMRPlatterViewControllerClass())
  {
    v6 = [objc_alloc(getMRPlatterViewControllerClass()) initWithRouteUID:v4];
    [v6 setStyle:4];
    [v6 setAllowsNowPlayingAppLaunch:1];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SCKPMediaControlCardSectionViewController _nowPlayingViewControllerWithRouteUID:];
    }

    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (id)_nowPlayingVisualStylingProvider
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMTVisualStylingProviderClass_softClass;
  v12 = getMTVisualStylingProviderClass_softClass;
  if (!getMTVisualStylingProviderClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getMTVisualStylingProviderClass_block_invoke;
    v8[3] = &unk_279C60140;
    v8[4] = &v9;
    __getMTVisualStylingProviderClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [(SCKPMediaControlCardSectionViewController *)self traitCollection];
  v6 = [v3 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = SCKPMediaControlCardSectionViewController;
  v4 = a3;
  [(SCKPMediaControlCardSectionViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [(SCKPMediaControlCardSectionViewController *)self traitCollection:v12.receiver];
  v6 = [v4 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {
    getMRUNowPlayingViewControllerClass();
    v7 = self->_mediaPlatterViewController;
    mediaPlatterViewController = self->_mediaPlatterViewController;
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc(getMRUVisualStylingProviderClass());
      v10 = [(SCKPMediaControlCardSectionViewController *)self _nowPlayingVisualStylingProvider];
      v11 = [v9 initWithVisualStylingProvider:v10];
      [(UIViewController *)v7 setStylingProvider:v11];
    }
  }
}

- (void)_updateActiveSystemEndpointForRouteUID:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_ptr;
  v10 = getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_ptr;
  if (!getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_block_invoke;
    v6[3] = &unk_279C60140;
    v6[4] = &v7;
    __getMRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithReasonSymbolLoc_block_invoke(v6);
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    v5 = [SCKPMediaControlCardSectionViewController _updateActiveSystemEndpointForRouteUID:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  (v4)(v3, 0, @"SCKPMediaControlCardSectionViewController", 0, &__block_literal_global_1);
}

void __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke_cold_1();
    }
  }
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->cardSectionViewControllingDelegate);

  return WeakRetained;
}

void __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__SCKPMediaControlCardSectionViewController__updatePlatterForHashedRouteUID___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_updateActiveSystemEndpointForRouteUID:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke_cold_1(v0);
}

void __84__SCKPMediaControlCardSectionViewController__updateActiveSystemEndpointForRouteUID___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end