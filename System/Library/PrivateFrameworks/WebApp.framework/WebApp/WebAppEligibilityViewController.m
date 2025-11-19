@interface WebAppEligibilityViewController
- (WebAppEligibilityViewController)initWithWebClip:(id)a3 scene:(id)a4;
- (void)_openURLAndDestroySceneIfNeeded;
- (void)loadView;
- (void)presentAlertIfNeeded;
@end

@implementation WebAppEligibilityViewController

- (WebAppEligibilityViewController)initWithWebClip:(id)a3 scene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = WebAppEligibilityViewController;
  v9 = [(WebAppEligibilityViewController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webClip, a3);
    objc_storeStrong(&v10->_scene, a4);
    webClip = v10->_webClip;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__WebAppEligibilityViewController_initWithWebClip_scene___block_invoke;
    v17[3] = &unk_279E74050;
    v12 = v10;
    v18 = v12;
    v13 = [(UIWebClip *)webClip eligibilityAlert:v17];
    alertController = v12->_alertController;
    v12->_alertController = v13;

    v15 = v12;
  }

  return v10;
}

void __57__WebAppEligibilityViewController_initWithWebClip_scene___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D66CE8];
    v4 = [*(*(a1 + 32) + 1024) identifier];
    [v3 launchWebClipWithIdentifier:v4];

    *(*(a1 + 32) + 1016) = 1;
  }

  else
  {
    v5 = *(*(a1 + 32) + 1008);

    [v5 _sf_destroyScene];
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D753A8]);
  v4 = [MEMORY[0x277D75390] emptyConfiguration];
  v5 = [v3 initWithConfiguration:v4];
  unavailableView = self->_unavailableView;
  self->_unavailableView = v5;

  [(UIContentUnavailableView *)self->_unavailableView setAutoresizingMask:18];
  v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UIContentUnavailableView *)self->_unavailableView setBackgroundColor:v7];

  v8 = self->_unavailableView;

  [(WebAppEligibilityViewController *)self setView:v8];
}

- (void)presentAlertIfNeeded
{
  if ([(UIWebClip *)self->_webClip eligibilityStatus]== 1 || ![(UIWebClip *)self->_webClip eligibilityStatus]&& self->_overrideShowAlert)
  {
    v3 = [(UIAlertController *)self->_alertController presentingViewController];

    if (!v3)
    {
      alertController = self->_alertController;

      [(WebAppEligibilityViewController *)self presentViewController:alertController animated:1 completion:0];
    }
  }
}

- (void)_openURLAndDestroySceneIfNeeded
{
  if ([(UIWebClip *)self->_webClip eligibilityStatus]== 2)
  {
    v3 = MEMORY[0x277D66CE8];
    v4 = [(UIWebClip *)self->_webClip identifier];
    [v3 launchWebClipWithIdentifier:v4];

    self->_hasPendingDestroyScene = 1;
  }
}

@end