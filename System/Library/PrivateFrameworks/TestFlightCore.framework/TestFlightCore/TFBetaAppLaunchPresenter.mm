@interface TFBetaAppLaunchPresenter
- (TFBetaAppLaunchPresenter)initWithBundleURL:(id)l launchDataProvider:(id)provider launchScreenSidepack:(id)sidepack;
- (TFBetaAppLaunchPresenterView)presenterView;
- (void)_abortLaunchScreenLoadWithError:(id)error;
- (void)_showHowToViewWithLaunchScreen:(id)screen;
- (void)_showLoading;
- (void)_showTestNotesViewWithLaunchScreen:(id)screen;
- (void)exitLaunchScreen;
- (void)openHowToSupportLink;
- (void)showHowToScreen;
- (void)update;
@end

@implementation TFBetaAppLaunchPresenter

- (TFBetaAppLaunchPresenter)initWithBundleURL:(id)l launchDataProvider:(id)provider launchScreenSidepack:(id)sidepack
{
  lCopy = l;
  providerCopy = provider;
  sidepackCopy = sidepack;
  v17.receiver = self;
  v17.super_class = TFBetaAppLaunchPresenter;
  v11 = [(TFBetaAppLaunchPresenter *)&v17 init];
  if (v11)
  {
    v12 = [lCopy copy];
    bundleURL = v11->_bundleURL;
    v11->_bundleURL = v12;

    objc_storeStrong(&v11->_launchDataProvider, provider);
    objc_storeStrong(&v11->_launchScreen, sidepack);
    v14 = objc_alloc_init(TFImageFetcher);
    imageFetcher = v11->_imageFetcher;
    v11->_imageFetcher = v14;
  }

  return v11;
}

- (void)update
{
  launchScreen = [(TFBetaAppLaunchPresenter *)self launchScreen];

  if (launchScreen)
  {
    launchScreen2 = [(TFBetaAppLaunchPresenter *)self launchScreen];
    [(TFBetaAppLaunchPresenter *)self _showTestNotesViewWithLaunchScreen:launchScreen2];
  }

  else
  {
    [(TFBetaAppLaunchPresenter *)self _showLoading];
    launchDataProvider = [(TFBetaAppLaunchPresenter *)self launchDataProvider];
    bundleURL = [(TFBetaAppLaunchPresenter *)self bundleURL];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__TFBetaAppLaunchPresenter_update__block_invoke;
    v7[3] = &unk_279D98450;
    v7[4] = self;
    [launchDataProvider loadLaunchScreenForBundleWithURL:bundleURL withCompletionHandler:v7];
  }
}

void __34__TFBetaAppLaunchPresenter_update__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = v6;
LABEL_9:
    [v7 _abortLaunchScreenLoadWithError:v8];
    goto LABEL_10;
  }

  if (!v5 || ([v5 testerNotes], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v12 = +[TFLogConfiguration defaultConfiguration];
    v13 = [v12 generatedLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 bundleURL];
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v17;
      _os_log_impl(&dword_26D2C7000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] update: failed to fetch launch screen record, or no tester notes are available", &v18, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = 0;
    goto LABEL_9;
  }

  [*(a1 + 32) setLaunchScreen:v5];
  v10 = *(a1 + 32);
  v11 = [v10 launchScreen];
  [v10 _showTestNotesViewWithLaunchScreen:v11];

LABEL_10:
}

- (void)showHowToScreen
{
  launchScreen = [(TFBetaAppLaunchPresenter *)self launchScreen];

  if (launchScreen)
  {
    launchScreen2 = [(TFBetaAppLaunchPresenter *)self launchScreen];
    [(TFBetaAppLaunchPresenter *)self _showHowToViewWithLaunchScreen:launchScreen2];
  }
}

- (void)openHowToSupportLink
{
  launchScreen = [(TFBetaAppLaunchPresenter *)self launchScreen];

  if (launchScreen)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    launchScreen2 = [(TFBetaAppLaunchPresenter *)self launchScreen];
    howToScreenshotSupportUrl = [launchScreen2 howToScreenshotSupportUrl];
    [mEMORY[0x277D75128] openURL:howToScreenshotSupportUrl options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

- (void)exitLaunchScreen
{
  presenterView = [(TFBetaAppLaunchPresenter *)self presenterView];
  [presenterView dismissAnimated:1];
}

- (void)_showLoading
{
  presenterView = [(TFBetaAppLaunchPresenter *)self presenterView];
  [presenterView showLoadingAnimated:1];
}

- (void)_showTestNotesViewWithLaunchScreen:(id)screen
{
  screenCopy = screen;
  v12 = TFLocalizedString(@"LAUNCH_BUTTON_CONTINUE");
  presenterView = [(TFBetaAppLaunchPresenter *)self presenterView];
  v6 = TFLocalizedString(@"LAUNCH_TITLE_FROM_THE_DEVELOPER");
  lockup = [screenCopy lockup];
  v8 = TFLocalizedString(@"LAUNCH_TEST_NOTES_TITLE");
  testerNotes = [screenCopy testerNotes];

  imageFetcher = [(TFBetaAppLaunchPresenter *)self imageFetcher];
  LOBYTE(v11) = 1;
  [presenterView showTestNotesWithTitle:v6 lockup:lockup testNotesTitle:v8 testNotesText:testerNotes primaryButtonTitle:v12 primaryButtonEvent:0 animated:v11 fetchingOnImageFetcher:imageFetcher];
}

- (void)_showHowToViewWithLaunchScreen:(id)screen
{
  v10 = +[TFCoreUtils tf_screenshotInstructionImageDict];
  presenterView = [(TFBetaAppLaunchPresenter *)self presenterView];
  v5 = TFLocalizedString(@"LAUNCH_TITLE_SHARE_FEEDBACK");
  v6 = TFLocalizedString(@"LAUNCH_SUBTITLE_TAKE_SCREENSHOT_MESSAGE");
  v7 = TFLocalizedString(@"LAUNCH_BUTTON_START_TESTING");
  v8 = TFLocalizedString(@"LAUNCH_BUTTON_LEARN_MORE");
  LOBYTE(v9) = 1;
  [presenterView showHowToWithTitle:v5 subtitle:v6 screenshotImageDict:v10 primaryButtonTitle:v7 primaryButtonEvent:2 secondaryButtonTitle:v8 secondaryButtonEvent:1 animated:v9];
}

- (void)_abortLaunchScreenLoadWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    bundleURL = [(TFBetaAppLaunchPresenter *)self bundleURL];
    localizedDescription = [errorCopy localizedDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = bundleURL;
    v15 = 2112;
    v16 = localizedDescription;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] _abortLaunchScreenLoadWithError: error = %@", &v11, 0x20u);
  }

  [(TFBetaAppLaunchPresenter *)self exitLaunchScreen];
}

- (TFBetaAppLaunchPresenterView)presenterView
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterView);

  return WeakRetained;
}

@end