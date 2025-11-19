@interface SBAmbientProudLockViewController
- (SBAmbientProudLockViewController)init;
- (SBAmbientProudLockViewController)initWithBiometricResource:(id)a3 authenticationController:(id)a4;
- (void)_dismissTransientProudLockAnimated;
- (void)_prepareBlurForWrapperView;
- (void)setAuthenticated:(BOOL)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation SBAmbientProudLockViewController

- (SBAmbientProudLockViewController)initWithBiometricResource:(id)a3 authenticationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBAmbientProudLockViewController;
  v9 = [(SBAmbientProudLockViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biometricResource, a3);
    objc_storeStrong(&v10->_authenticationController, a4);
  }

  return v10;
}

- (SBAmbientProudLockViewController)init
{
  v3 = [MEMORY[0x277D67C98] sharedInstance];
  v4 = [SBApp authenticationController];
  v5 = [(SBAmbientProudLockViewController *)self initWithBiometricResource:v3 authenticationController:v4];

  return v5;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = SBAmbientProudLockViewController;
  [(SBAmbientProudLockViewController *)&v28 viewDidLoad];
  v3 = [(SBAmbientProudLockViewController *)self view];
  v4 = objc_alloc_init(SBPropertyAnimatingView);
  proudLockWrapperView = self->_proudLockWrapperView;
  self->_proudLockWrapperView = v4;

  [v3 addSubview:self->_proudLockWrapperView];
  [(SBAmbientProudLockViewController *)self _prepareBlurForWrapperView];
  v6 = [objc_alloc(MEMORY[0x277D67D80]) initWithAuthenticationInformationProvider:self];
  proudLockContainerViewController = self->_proudLockContainerViewController;
  self->_proudLockContainerViewController = v6;

  v8 = [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController view];
  [v8 setAlpha:0.0];
  objc_initWeak(&location, self);
  v9 = self->_proudLockContainerViewController;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__SBAmbientProudLockViewController_viewDidLoad__block_invoke;
  v24[3] = &unk_2783A9CE8;
  objc_copyWeak(&v26, &location);
  v10 = v8;
  v25 = v10;
  [(SBUIProudLockContainerViewController *)v9 setAuthenticated:1 completion:v24];
  [v3 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [MEMORY[0x277D65EC0] proudLockAssetSize];
  v20 = v19;
  v22 = v21;
  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  Width = CGRectGetWidth(v29);
  [(SBPropertyAnimatingView *)self->_proudLockWrapperView setFrame:0.0, 0.0, Width, v22 * 0.5 + 20.0 + v22 * 0.5 + 20.0];
  [v10 setFrame:{0.0, 0.0, Width, v22 * 0.5 + 20.0 + v22 * 0.5 + 20.0}];
  [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController overrideProudLockIconViewLayoutWithSize:v20 offset:v22 extent:v16 * 0.5, 20.0, 0.0];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __47__SBAmbientProudLockViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained bs_addChildViewController:WeakRetained[124] withSuperview:WeakRetained[125]];
  v3 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SBAmbientProudLockViewController_viewDidLoad__block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v5 = *(a1 + 32);
  [v3 animateWithDuration:v4 animations:0.5];
}

- (void)setAuthenticated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  proudLockContainerViewController = self->_proudLockContainerViewController;
  v7 = a4;
  [(SBUIProudLockContainerViewController *)proudLockContainerViewController setAuthenticated:v4];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__dismissTransientProudLockAnimated object:0];
  v8 = MEMORY[0x223D6F7F0](v7);

  authenticationCompletion = self->_authenticationCompletion;
  self->_authenticationCompletion = v8;

  [(SBAmbientProudLockViewController *)self performSelector:sel__dismissTransientProudLockAnimated withObject:0 afterDelay:2.0];
}

- (void)_prepareBlurForWrapperView
{
  v14[1] = *MEMORY[0x277D85DE8];
  proudLockWrapperView = self->_proudLockWrapperView;
  if (proudLockWrapperView)
  {
    v4 = [(SBPropertyAnimatingView *)proudLockWrapperView layer];
    v5 = [v4 valueForKeyPath:@"filters.gaussianBlur"];
    if (!v5)
    {
      v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [v6 setValue:MEMORY[0x277CBEC38] forKey:@"inputHardEdges"];
      [v6 setName:@"gaussianBlur"];
      v7 = [v4 filters];

      if (v7)
      {
        v8 = [v4 mutableArrayValueForKeyPath:@"filters"];
        [v8 addObject:v6];
      }

      else
      {
        v14[0] = v6;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
        [v4 setFilters:v8];
      }
    }

    v9 = [(SBPropertyAnimatingView *)self->_proudLockWrapperView animatedLayerProperties];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;

    [v13 addObject:@"filters.gaussianBlur.inputRadius"];
    [(SBPropertyAnimatingView *)self->_proudLockWrapperView setAnimatedLayerProperties:v13];
  }
}

- (void)_dismissTransientProudLockAnimated
{
  v3 = self->_proudLockWrapperView;
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 0.5, 0.5);
  v4 = [MEMORY[0x277CF0B70] settingsWithDuration:0.5];
  v5 = MEMORY[0x277CF0D38];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v10 = v11;
  v8[2] = __70__SBAmbientProudLockViewController__dismissTransientProudLockAnimated__block_invoke;
  v8[3] = &unk_2783AF078;
  v9 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SBAmbientProudLockViewController__dismissTransientProudLockAnimated__block_invoke_85;
  v7[3] = &unk_2783A9398;
  v7[4] = self;
  v6 = v3;
  [v5 animateWithSettings:v4 actions:v8 completion:v7];
}

void __70__SBAmbientProudLockViewController__dismissTransientProudLockAnimated__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setTransform:v5];
  [*(a1 + 32) setAlpha:0.0];
  v4 = [*(a1 + 32) layer];
  [v4 setValue:&unk_28336F280 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __70__SBAmbientProudLockViewController__dismissTransientProudLockAnimated__block_invoke_85(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 1024);
    *(v3 + 1024) = 0;
  }
}

@end