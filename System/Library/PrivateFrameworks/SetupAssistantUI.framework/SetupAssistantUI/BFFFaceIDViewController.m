@interface BFFFaceIDViewController
- (BFFFaceIDViewController)init;
- (BFFFaceIDViewControllerDelegate)faceIDViewControllerDelegate;
- (BOOL)_sheetMode;
- (BOOL)isAnimating;
- (void)_didSelectEnroll;
- (void)_didSelectSkip;
- (void)_userDidTapCancelButton:(id)a3;
- (void)controllerWasPopped;
- (void)pearlEnrollController:(id)a3 finishedEnrollWithError:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)resetColorsAnimated:(BOOL)a3;
- (void)setCompletesOnCancel:(BOOL)a3;
- (void)startIndeterminateProgressIndicator;
- (void)stopIndeterminateProgressIndicator;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BFFFaceIDViewController

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = a3;
  BKUIPearlEnrollControllerClass = getBKUIPearlEnrollControllerClass();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__BFFFaceIDViewController_performExtendedInitializationWithCompletion___block_invoke;
  v6[3] = &unk_279BB4AC0;
  v6[4] = self;
  [BKUIPearlEnrollControllerClass preloadWithCompletion:v6];
  if (v4)
  {
    v4[2](v4, 1);
  }
}

void __71__BFFFaceIDViewController_performExtendedInitializationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 992);
  *(v5 + 992) = v3;
  v7 = v3;

  objc_sync_exit(v4);
}

- (BFFFaceIDViewController)init
{
  v3.receiver = self;
  v3.super_class = BFFFaceIDViewController;
  result = [(BFFFaceIDViewController *)&v3 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_enrollmentConfiguration = 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = BFFFaceIDViewController;
  [(BFFFaceIDViewController *)&v48 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BACK_BUTTON_TITLE" value:&stru_287761F90 table:@"Pearl"];
  v5 = [(BFFFaceIDViewController *)self navigationItem];
  [v5 setBackButtonTitle:v4];

  v54 = 0;
  v55 = &v54;
  v56 = 0x2050000000;
  v6 = getBKDeviceClass_softClass;
  v57 = getBKDeviceClass_softClass;
  if (!getBKDeviceClass_softClass)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __getBKDeviceClass_block_invoke;
    v52 = &unk_279BB49D0;
    v53 = &v54;
    __getBKDeviceClass_block_invoke(&v49);
    v6 = v55[3];
  }

  v7 = v6;
  _Block_object_dispose(&v54, 8);
  v54 = 0;
  v55 = &v54;
  v56 = 0x2050000000;
  v8 = getBKDeviceDescriptorClass_softClass;
  v57 = getBKDeviceDescriptorClass_softClass;
  if (!getBKDeviceDescriptorClass_softClass)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __getBKDeviceDescriptorClass_block_invoke;
    v52 = &unk_279BB49D0;
    v53 = &v54;
    __getBKDeviceDescriptorClass_block_invoke(&v49);
    v8 = v55[3];
  }

  v9 = v8;
  _Block_object_dispose(&v54, 8);
  v10 = [v8 deviceDescriptorForType:2];
  v11 = [v6 deviceWithDescriptor:v10 error:0];

  objc_initWeak(&location, self);
  if ([(BFFFaceIDViewController *)self enrollmentConfiguration]== 3)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v12 = getBKUIPeriocularEnableSplashViewControllerClass_softClass;
    v57 = getBKUIPeriocularEnableSplashViewControllerClass_softClass;
    if (!getBKUIPeriocularEnableSplashViewControllerClass_softClass)
    {
      v49 = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v51 = __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke;
      v52 = &unk_279BB49D0;
      v53 = &v54;
      __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke(&v49);
      v12 = v55[3];
    }

    v13 = v12;
    _Block_object_dispose(&v54, 8);
    v14 = [v12 alloc];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __38__BFFFaceIDViewController_viewDidLoad__block_invoke;
    v45[3] = &unk_279BB4AE8;
    v15 = &v46;
    objc_copyWeak(&v46, &location);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __38__BFFFaceIDViewController_viewDidLoad__block_invoke_2;
    v43[3] = &unk_279BB4AE8;
    v16 = &v44;
    objc_copyWeak(&v44, &location);
    v17 = [v14 initInBuddy:1 bkDevice:v11 upsell:0 withEndEnrollmentActionPrimary:v45 enrollmentActionSecondary:v43];
    [(BFFFaceIDViewController *)self setContentController:v17];
  }

  else
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v18 = getBKUIFaceIDSplashViewControllerClass_softClass;
    v57 = getBKUIFaceIDSplashViewControllerClass_softClass;
    if (!getBKUIFaceIDSplashViewControllerClass_softClass)
    {
      v49 = MEMORY[0x277D85DD0];
      v50 = 3221225472;
      v51 = __getBKUIFaceIDSplashViewControllerClass_block_invoke;
      v52 = &unk_279BB49D0;
      v53 = &v54;
      __getBKUIFaceIDSplashViewControllerClass_block_invoke(&v49);
      v18 = v55[3];
    }

    v19 = v18;
    _Block_object_dispose(&v54, 8);
    v20 = [v18 alloc];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __38__BFFFaceIDViewController_viewDidLoad__block_invoke_3;
    v41[3] = &unk_279BB4AE8;
    v15 = &v42;
    objc_copyWeak(&v42, &location);
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __38__BFFFaceIDViewController_viewDidLoad__block_invoke_4;
    v39 = &unk_279BB4AE8;
    v16 = &v40;
    objc_copyWeak(&v40, &location);
    v17 = [v20 initInBuddy:1 bkDevice:v11 withEndEnrollmentActionPrimary:v41 enrollmentActionSecondary:&v36];
    [(BFFFaceIDViewController *)self setContentController:v17, v36, v37, v38, v39];
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(v15);
  v21 = [(BFFFaceIDViewController *)self contentController];
  [(BFFFaceIDViewController *)self addChildViewController:v21];

  v22 = [(BFFFaceIDViewController *)self contentController];
  v23 = [v22 view];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(BFFFaceIDViewController *)self view];
  v25 = [(BFFFaceIDViewController *)self contentController];
  v26 = [v25 view];
  [v24 addSubview:v26];

  v27 = [(BFFFaceIDViewController *)self contentController];
  v28 = [v27 view];
  v29 = [(BFFFaceIDViewController *)self view];
  [v28 pinToEdges:v29];

  v30 = [(BFFFaceIDViewController *)self contentController];
  [v30 didMoveToParentViewController:self];

  v31 = [(BFFFaceIDViewController *)self contentController];
  v32 = [v31 headerView];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FACE_ID_DETAIL"];
  v35 = [v33 localizedStringForKey:v34 value:&stru_287761F90 table:@"Pearl"];
  [v32 setDetailText:v35];

  objc_destroyWeak(&location);
}

void __38__BFFFaceIDViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectEnroll];
    WeakRetained = v2;
  }
}

void __38__BFFFaceIDViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectSkip];
    WeakRetained = v2;
  }
}

void __38__BFFFaceIDViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectEnroll];
    WeakRetained = v2;
  }
}

void __38__BFFFaceIDViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectSkip];
    WeakRetained = v2;
  }
}

- (void)setCompletesOnCancel:(BOOL)a3
{
  if (self->_completesOnCancel != a3)
  {
    self->_completesOnCancel = a3;
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancelButton_];
      v5 = [(BFFFaceIDViewController *)self navigationItem];
      [v5 setLeftBarButtonItem:v6 animated:1];
    }

    else
    {
      v6 = [(BFFFaceIDViewController *)self navigationItem];
      [v6 setLeftBarButtonItem:0 animated:1];
    }
  }
}

- (void)_userDidTapCancelButton:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Face ID Enroll user did cancel", v7, 2u);
  }

  [(BFFFaceIDViewController *)self resetColorsAnimated:0];
  v5 = [(BFFFaceIDViewController *)self faceIDViewControllerDelegate];
  v8[0] = self;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 faceIDViewController:self didCompleteWithResult:2 pushedViewControllers:v6];
}

- (void)resetColorsAnimated:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BFFFaceIDViewController_resetColorsAnimated___block_invoke;
  v4[3] = &unk_279BB49A8;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__BFFFaceIDViewController_resetColorsAnimated___block_invoke_2;
  v3[3] = &unk_279BB4B10;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3 completion:0.3];
}

void __47__BFFFaceIDViewController_resetColorsAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 setBackgroundColor:0];

  v4 = [*(a1 + 32) view];
  v3 = [MEMORY[0x277D75348] _systemBackgroundColor];
  [v4 setBackgroundColor:v3];
}

void __47__BFFFaceIDViewController_resetColorsAnimated___block_invoke_2(uint64_t a1)
{
  v3 = +[BFFStyle sharedStyle];
  v2 = [*(a1 + 32) navigationController];
  [v3 applyThemeToNavigationController:v2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = BFFFaceIDViewController;
  [(BFFFaceIDViewController *)&v7 viewWillAppear:?];
  if (([(BFFFaceIDViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    BKUIPearlEnrollControllerClass = getBKUIPearlEnrollControllerClass();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__BFFFaceIDViewController_viewWillAppear___block_invoke;
    v6[3] = &unk_279BB4AC0;
    v6[4] = self;
    [BKUIPearlEnrollControllerClass preloadWithCompletion:v6];
  }

  [(BFFFaceIDViewController *)self resetColorsAnimated:v3];
}

void __42__BFFFaceIDViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 992);
  *(v5 + 992) = v3;
  v7 = v3;

  objc_sync_exit(v4);
}

- (void)controllerWasPopped
{
  obj = self;
  objc_sync_enter(obj);
  preloadedState = obj->_preloadedState;
  obj->_preloadedState = 0;

  objc_sync_exit(obj);
}

- (void)_didSelectEnroll
{
  v2 = self;
  objc_sync_enter(v2);
  preloadedState = v2->_preloadedState;
  v2->_preloadedState = 0;
  v4 = preloadedState;

  objc_sync_exit(v2);
  v14 = [objc_alloc(getBKUIPearlEnrollControllerClass()) initWithPreloadedState:v4];

  [v14 setInSheet:{-[BFFFaceIDViewController _sheetMode](v2, "_sheetMode")}];
  [v14 setEnrollmentConfiguration:{-[BFFFaceIDViewController enrollmentConfiguration](v2, "enrollmentConfiguration")}];
  v5 = [(BFFFaceIDViewController *)v2 faceIDViewControllerDelegate];
  v6 = [v5 passcodeForFaceIDViewController:v2];
  v7 = [v6 copy];

  if ([v7 length])
  {
    [v14 primeWithPasscode:v7];
  }

  else
  {
    v8 = [(BFFFaceIDViewController *)v2 authContext];

    if (v8)
    {
      v9 = [(BFFFaceIDViewController *)v2 authContext];
      v10 = [v9 externalizedContext];
      [v14 primeWithExternalizedAuthContext:v10];
    }
  }

  [v14 setDelegate:v2];
  [v14 setInBuddy:1];
  v11 = objc_alloc_init(MEMORY[0x277D75788]);
  [v11 configureWithTransparentBackground];
  v12 = [v14 navigationItem];
  [v12 setStandardAppearance:v11];

  v13 = [(BFFFaceIDViewController *)v2 navigationController];
  [v13 pushViewController:v14 animated:1];
}

- (void)_didSelectSkip
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  preloadedState = v2->_preloadedState;
  v2->_preloadedState = 0;

  objc_sync_exit(v2);
  v4 = [(BFFFaceIDViewController *)v2 faceIDViewControllerDelegate];
  v6[0] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 faceIDViewController:v2 didCompleteWithResult:1 pushedViewControllers:v5];
}

- (void)pearlEnrollController:(id)a3 finishedEnrollWithError:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (_BYIsInternalInstall())
    {
      v10 = 0;
      v11 = v8;
    }

    else if (v8)
    {
      v12 = MEMORY[0x277CCACA8];
      v4 = [v8 domain];
      v11 = [v12 stringWithFormat:@"<Error domain: %@, code %ld>", v4, objc_msgSend(v8, "code")];
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *buf = 138543362;
    v38 = v11;
    _os_log_impl(&dword_265AC5000, v9, OS_LOG_TYPE_DEFAULT, "Enroll finished with error: %{public}@", buf, 0xCu);
    if (v10)
    {
    }
  }

  if (!v8)
  {
    [(BFFFaceIDViewController *)self resetColorsAnimated:0];
    v19 = [(BFFFaceIDViewController *)self faceIDViewControllerDelegate];
    v34[0] = self;
    v34[1] = v7;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v24 = v19;
    v25 = self;
    v26 = 0;
LABEL_21:
    [v24 faceIDViewController:v25 didCompleteWithResult:v26 pushedViewControllers:v23];
LABEL_31:

    goto LABEL_32;
  }

  v13 = [v8 domain];
  v14 = getBKUIPearlEnrollErrorDomain();
  if (![v13 isEqualToString:v14] || objc_msgSend(v8, "code") != -1)
  {

    goto LABEL_13;
  }

  v32 = [(BFFFaceIDViewController *)self completesOnCancel];

  if (v32)
  {
    [(BFFFaceIDViewController *)self resetColorsAnimated:0];
    v19 = [(BFFFaceIDViewController *)self faceIDViewControllerDelegate];
    v36[0] = self;
    v36[1] = v7;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v24 = v19;
    v25 = self;
    v26 = 2;
    goto LABEL_21;
  }

LABEL_13:
  v15 = [v8 domain];
  v16 = getBKUIPearlEnrollErrorDomain();
  if ([v15 isEqualToString:v16])
  {
    v17 = [v8 code];

    if (v17 == -2)
    {
      [(BFFFaceIDViewController *)self resetColorsAnimated:0];
      v18 = [v8 userInfo];
      v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v20 = [v19 domain];
      if ([v20 isEqualToString:@"com.apple.preferences.biokit"])
      {
        v21 = [v19 code];

        if (v21 != 8)
        {
          v22 = 1;
          goto LABEL_30;
        }

        v20 = _BYLoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_265AC5000, v20, OS_LOG_TYPE_DEFAULT, "Enroll observed interlock error", buf, 2u);
        }

        v22 = 3;
      }

      else
      {
        v22 = 1;
      }

LABEL_30:
      v23 = [(BFFFaceIDViewController *)self faceIDViewControllerDelegate];
      v35[0] = self;
      v35[1] = v7;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
      [v23 faceIDViewController:self didCompleteWithResult:v22 pushedViewControllers:v33];

      goto LABEL_31;
    }
  }

  else
  {
  }

  v27 = [(BFFFaceIDViewController *)self navigationController];
  v28 = [v27 topViewController];
  getBKUIPearlEnrollControllerClass();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = [(BFFFaceIDViewController *)self navigationController];
    v31 = [v30 popToViewController:self animated:1];

    [(BFFFaceIDViewController *)self resetColorsAnimated:1];
  }

LABEL_32:
}

- (BOOL)_sheetMode
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = [(BFFFaceIDViewController *)self navigationController];
    if ([v4 modalPresentationStyle] == 2)
    {
      v5 = [(BFFFaceIDViewController *)self navigationController];
      v6 = [v5 presentingViewController];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)startIndeterminateProgressIndicator
{
  v3 = [(BFFFaceIDViewController *)self contentController];
  v2 = [v3 buttonTray];
  [v2 showButtonsBusy];
}

- (void)stopIndeterminateProgressIndicator
{
  v3 = [(BFFFaceIDViewController *)self contentController];
  v2 = [v3 buttonTray];
  [v2 showButtonsAvailable];
}

- (BOOL)isAnimating
{
  v2 = [(BFFFaceIDViewController *)self contentController];
  v3 = [v2 buttonTray];
  v4 = [v3 allButtons];
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  v7 = [v6 count] != 0;

  return v7;
}

uint64_t __38__BFFFaceIDViewController_isAnimating__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 configuration];
  v3 = [v2 showsActivityIndicator];

  return v3;
}

- (BFFFaceIDViewControllerDelegate)faceIDViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceIDViewControllerDelegate);

  return WeakRetained;
}

@end