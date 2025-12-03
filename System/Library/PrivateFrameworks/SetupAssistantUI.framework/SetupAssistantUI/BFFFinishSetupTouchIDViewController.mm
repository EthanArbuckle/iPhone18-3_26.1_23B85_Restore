@interface BFFFinishSetupTouchIDViewController
- (BFFFinishSetupTouchIDViewController)init;
- (id)_cancelLeftNavigationItem;
- (void)_didCompleteMesaControllerWithResult:(unint64_t)result;
- (void)_userDidTapCancelButton:(id)button;
- (void)beginEnrollment;
- (void)dealloc;
- (void)deleteIdentity;
- (void)didBecomeActive:(id)active;
- (void)didResignActive:(id)active;
- (void)endEnrollment;
- (void)enrollResult:(int)result bkIdentity:(id)identity;
- (void)loadView;
- (void)resetLeftNavigationItem;
- (void)restartEnrollment;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BFFFinishSetupTouchIDViewController

- (BFFFinishSetupTouchIDViewController)init
{
  v6.receiver = self;
  v6.super_class = BFFFinishSetupTouchIDViewController;
  v2 = [(BFFFinishSetupTouchIDViewController *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_didResignActive_ name:*MEMORY[0x277D76768] object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(BiometricKitUIEnrollViewController *)self->_enrollController setDelegate:0];
  v3.receiver = self;
  v3.super_class = BFFFinishSetupTouchIDViewController;
  [(BFFFinishSetupTouchIDViewController *)&v3 dealloc];
}

- (void)didBecomeActive:(id)active
{
  if (!self->_enrollController)
  {
    [(BFFFinishSetupTouchIDViewController *)self beginEnrollment];
  }
}

- (void)didResignActive:(id)active
{
  if (!self->_enrollComplete)
  {
    [(BFFFinishSetupTouchIDViewController *)self deleteIdentity];
  }

  [(BFFFinishSetupTouchIDViewController *)self endEnrollment];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = BFFFinishSetupTouchIDViewController;
  [(BFFFinishSetupTouchIDViewController *)&v6 loadView];
  view = [(BFFFinishSetupTouchIDViewController *)self view];
  v4 = +[BFFStyle sharedStyle];
  backgroundColor = [v4 backgroundColor];
  [view setBackgroundColor:backgroundColor];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BFFFinishSetupTouchIDViewController;
  [(BFFFinishSetupTouchIDViewController *)&v4 viewDidLoad];
  navigationItem = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
  [navigationItem setLeftItemsSupplementBackButton:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BFFFinishSetupTouchIDViewController;
  [(BFFFinishSetupTouchIDViewController *)&v4 viewWillAppear:appear];
  if (![*MEMORY[0x277D76620] applicationState])
  {
    [(BFFFinishSetupTouchIDViewController *)self beginEnrollment];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BFFFinishSetupTouchIDViewController;
  [(BFFFinishSetupTouchIDViewController *)&v4 viewDidDisappear:disappear];
  [(BFFFinishSetupTouchIDViewController *)self endEnrollment];
}

- (void)beginEnrollment
{
  v27[1] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v3 = getBiometricKitUIClass_softClass;
  v25 = getBiometricKitUIClass_softClass;
  if (!getBiometricKitUIClass_softClass)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __getBiometricKitUIClass_block_invoke;
    v21[3] = &unk_279BB49D0;
    v21[4] = &v22;
    __getBiometricKitUIClass_block_invoke(v21);
    v3 = v23[3];
  }

  v4 = v3;
  _Block_object_dispose(&v22, 8);
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance getEnrollUIViewController:1 bundleName:0];
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__BFFFinishSetupTouchIDViewController_beginEnrollment__block_invoke;
    aBlock[3] = &unk_279BB4A70;
    v8 = v6;
    v19 = v8;
    selfCopy = self;
    v9 = _Block_copy(aBlock);
    passcode = [(BFFFinishSetupTouchIDViewController *)self passcode];
    v11 = [passcode length] == 0;

    if (v11)
    {
      v9[2](v9);
    }

    else
    {
      v12 = MEMORY[0x277D4DA10];
      passcode2 = [(BFFFinishSetupTouchIDViewController *)self passcode];
      v26 = &unk_287767D28;
      v27[0] = &unk_287767D40;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__BFFFinishSetupTouchIDViewController_beginEnrollment__block_invoke_23;
      v15[3] = &unk_279BB4DE0;
      v15[4] = self;
      v16 = v8;
      v17 = v9;
      [v12 createContextWithSecret:passcode2 policy:1007 options:v14 completion:v15];
    }
  }
}

void __54__BFFFinishSetupTouchIDViewController_beginEnrollment__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProperty:MEMORY[0x277CBEC38] forKey:@"IN_BUDDY"];
  v2 = *(a1 + 32);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getBiometricKitClass_softClass;
  v15 = getBiometricKitClass_softClass;
  if (!getBiometricKitClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getBiometricKitClass_block_invoke;
    v11[3] = &unk_279BB49D0;
    v11[4] = &v12;
    __getBiometricKitClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [v3 manager];
  [v2 setBiometricKit:v5];

  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 40) addChildViewController:*(a1 + 32)];
  v6 = [*(a1 + 32) view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [*(a1 + 40) view];
  v8 = [*(a1 + 32) view];
  [v7 addSubview:v8];

  v9 = [*(a1 + 32) view];
  v10 = [*(a1 + 40) view];
  [v9 pinToEdges:v10];

  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  objc_storeStrong((*(a1 + 40) + 992), *(a1 + 32));
}

void __54__BFFFinishSetupTouchIDViewController_beginEnrollment__block_invoke_23(id *a1, uint64_t a2)
{
  [a1[4] setAuthContext:a2];
  v3 = [a1[4] authContext];
  v4 = [v3 externalizedContext];

  if (v4)
  {
    [a1[5] setProperty:v4 forKey:@"credset"];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BFFFinishSetupTouchIDViewController_beginEnrollment__block_invoke_2;
  block[3] = &unk_279BB4DB8;
  v6 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)endEnrollment
{
  v5 = self->_enrollController;
  [(BiometricKitUIEnrollViewController *)v5 willMoveToParentViewController:0];
  view = [(BiometricKitUIEnrollViewController *)v5 view];
  [view removeFromSuperview];

  [(BiometricKitUIEnrollViewController *)v5 removeFromParentViewController];
  [(BiometricKitUIEnrollViewController *)v5 setDelegate:0];
  enrollController = self->_enrollController;
  self->_enrollController = 0;
}

- (void)restartEnrollment
{
  [(BFFFinishSetupTouchIDViewController *)self deleteIdentity];
  [(BiometricKitUIEnrollViewController *)self->_enrollController restartEnroll];

  [(BFFFinishSetupTouchIDViewController *)self resetLeftNavigationItem];
}

- (void)deleteIdentity
{
  if (self->_identity)
  {
    mEMORY[0x277D3F928] = [MEMORY[0x277D3F928] sharedInstance];
    [mEMORY[0x277D3F928] removeIdentity:self->_identity];

    identity = self->_identity;
    self->_identity = 0;
  }
}

- (id)_cancelLeftNavigationItem
{
  cancelLeftNavigationItem = self->_cancelLeftNavigationItem;
  if (!cancelLeftNavigationItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancelButton_];
    v5 = self->_cancelLeftNavigationItem;
    self->_cancelLeftNavigationItem = v4;

    cancelLeftNavigationItem = self->_cancelLeftNavigationItem;
  }

  return cancelLeftNavigationItem;
}

- (void)_userDidTapCancelButton:(id)button
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Buddy followup touch ID user did tap cancel", v5, 2u);
  }

  [(BFFFinishSetupTouchIDViewController *)self deleteIdentity];
  [(BFFFinishSetupTouchIDViewController *)self _didCompleteMesaControllerWithResult:2];
}

- (void)resetLeftNavigationItem
{
  navigationItem = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  _cancelLeftNavigationItem = [(BFFFinishSetupTouchIDViewController *)self _cancelLeftNavigationItem];
  v6 = [leftBarButtonItem isEqual:_cancelLeftNavigationItem];

  if (v6)
  {
    navigationItem2 = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
    [navigationItem2 performSelector:sel_setLeftBarButtonItem_animated_ withObject:0 withObject:MEMORY[0x277CBEC38]];

    navigationItem3 = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
    [navigationItem3 setHidesBackButton:0];
  }
}

- (void)_didCompleteMesaControllerWithResult:(unint64_t)result
{
  self->_enrollComplete = 1;
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, result);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)enrollResult:(int)result bkIdentity:(id)identity
{
  v31 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = result;
    _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Enroll result: %d", buf, 8u);
  }

  if (result > 3)
  {
    switch(result)
    {
      case 4:
        [(BFFFinishSetupTouchIDViewController *)self _didCompleteMesaControllerWithResult:0];
        break;
      case 9:
        if (identityCopy)
        {
          mEMORY[0x277D3F928] = [MEMORY[0x277D3F928] sharedInstance];
          [mEMORY[0x277D3F928] removeIdentity:identityCopy];

          identity = self->_identity;
          self->_identity = 0;
        }

        [(BiometricKitUIEnrollViewController *)self->_enrollController restartEnroll];
        break;
      case 10:
        v11 = self->_identity;
        self->_identity = 0;

        v12 = MEMORY[0x277D82BB8];
        navigationItem = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
        [v12 cancelPreviousPerformRequestsWithTarget:navigationItem selector:sel_setLeftBarButtonItem_ object:0];

        navigationItem2 = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
        [navigationItem2 setHidesBackButton:1];

        navigationItem3 = [(BFFFinishSetupTouchIDViewController *)self navigationItem];
        _cancelLeftNavigationItem = [(BFFFinishSetupTouchIDViewController *)self _cancelLeftNavigationItem];
        [navigationItem3 setLeftBarButtonItem:_cancelLeftNavigationItem animated:1];

        break;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      if (identityCopy)
      {
        objc_storeStrong(&self->_identity, identity);
        v22 = 0;
        v23 = &v22;
        v24 = 0x2050000000;
        v17 = getPABSBiometricControllerClass_softClass;
        v25 = getPABSBiometricControllerClass_softClass;
        if (!getPABSBiometricControllerClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = __getPABSBiometricControllerClass_block_invoke;
          v29 = &unk_279BB49D0;
          v30 = &v22;
          __getPABSBiometricControllerClass_block_invoke(buf);
          v17 = v23[3];
        }

        v18 = v17;
        _Block_object_dispose(&v22, 8);
        v19 = objc_opt_new();
        [v19 enrollmentCompletedForIdentity:{identityCopy, v22}];
      }
    }

    else if (result == 3)
    {
      if (identityCopy)
      {
        mEMORY[0x277D3F928]2 = [MEMORY[0x277D3F928] sharedInstance];
        [mEMORY[0x277D3F928]2 removeIdentity:identityCopy];

        v10 = self->_identity;
        self->_identity = 0;
      }

      [(BFFFinishSetupTouchIDViewController *)self _didCompleteMesaControllerWithResult:1];
    }
  }

  else
  {
    self->_enrollComplete = 0;
    [(BFFFinishSetupTouchIDViewController *)self resetLeftNavigationItem];
  }
}

@end