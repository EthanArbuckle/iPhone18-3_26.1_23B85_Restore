@interface PUWhatsNewWelcomeViewController
+ (void)presentIfNecessaryFromViewController:(id)controller presentationHandler:(id)handler completionHandler:(id)completionHandler;
+ (void)resetLastPresentationInfo;
- (PUWhatsNewWelcomeViewController)initWithCompletionHandler:(id)handler;
- (void)_presentPrivacyOverview;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation PUWhatsNewWelcomeViewController

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PUWhatsNewWelcomeViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E7B80B48;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = PUWhatsNewWelcomeViewController;
  v7 = completionCopy;
  [(PUWhatsNewWelcomeViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
}

void __76__PUWhatsNewWelcomeViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setInteger:13 forKey:@"LastWhatsNewShown"];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) _completionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) _completionHandler];
    v5[2](v5, 1);

    v6 = *(a1 + 32);

    [v6 _setCompletionHandler:0];
  }
}

- (void)_presentPrivacyOverview
{
  v3 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.photos"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (PUWhatsNewWelcomeViewController)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = PULocalizedString(@"WHATS_NEW_WELCOME_TITLE");
  v44.receiver = self;
  v44.super_class = PUWhatsNewWelcomeViewController;
  v6 = [(PUWhatsNewWelcomeViewController *)&v44 initWithTitle:v5 detailText:0 icon:0];

  if (v6)
  {
    v7 = PULocalizedString(@"WHATS_NEW_UPDATED_NAVIGATION_TITLE");
    v8 = PULocalizedString(@"WHATS_NEW_UPDATED_NAVIGATION_CONTENT");
    v9 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"photo.on.rectangle"];
    v10 = [v9 imageWithRenderingMode:2];

    v39 = v10;
    v40 = v8;
    [(PUWhatsNewWelcomeViewController *)v6 addBulletedListItemWithTitle:v7 description:v8 image:v10];
    if (PFPosterDeviceSupportsSpatialPhoto())
    {
      v11 = PULocalizedString(@"WHATS_NEW_SPATIAL_SCENES_TITLE");
      if (PLPhysicalDeviceIsIPad())
      {
        v12 = @"WHATS_NEW_SPATIAL_SCENES_CONTENT_IPAD";
      }

      else
      {
        v12 = @"WHATS_NEW_SPATIAL_SCENES_CONTENT_IPHONE";
      }

      v13 = PULocalizedString(v12);
      v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"spatial.capture"];
      v15 = [v14 imageWithRenderingMode:2];

      [(PUWhatsNewWelcomeViewController *)v6 addBulletedListItemWithTitle:v11 description:v13 image:v15];
    }

    v16 = PULocalizedString(@"WHATS_NEW_MORE_CUSTOMIZATION_TITLE");
    v17 = PULocalizedString(@"WHATS_NEW_MORE_CUSTOMIZATION_CONTENT");
    v18 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"rectangle.stack"];
    v19 = [v18 imageWithRenderingMode:2];

    [(PUWhatsNewWelcomeViewController *)v6 addBulletedListItemWithTitle:v16 description:v17 image:v19];
    if (PLDeviceSupportsEnhancedVisualSearch())
    {
      v35 = v16;
      v36 = v7;
      v37 = handlerCopy;
      v38 = PULocalizedString(@"WHATS_NEW_VISUAL_SEARCH_TITLE");
      v20 = PULocalizedString(@"WHATS_NEW_VISUAL_SEARCH_CONTENT");
      v21 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"mappin.and.ellipse"];
      v22 = [v21 imageWithRenderingMode:2];

      linkButton = [MEMORY[0x1E69B7D08] linkButton];
      configuration = [linkButton configuration];

      v25 = PULocalizedString(@"WHATS_NEW_VISUAL_SEARCH_LINK_TITLE");
      [configuration setTitle:v25];

      objc_initWeak(&location, v6);
      v26 = MEMORY[0x1E69DC628];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __61__PUWhatsNewWelcomeViewController_initWithCompletionHandler___block_invoke;
      v41[3] = &unk_1E7B80890;
      objc_copyWeak(&v42, &location);
      v27 = [v26 actionWithHandler:v41];
      v28 = [MEMORY[0x1E69B7D08] buttonWithConfiguration:configuration primaryAction:v27];
      [(PUWhatsNewWelcomeViewController *)v6 addBulletedListItemWithTitle:v38 description:v20 image:v22 tintColor:0 linkButton:v28];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);

      v7 = v36;
    }

    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    [boldButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = PULocalizedString(@"WHATS_NEW_WELCOME_CONTINUE");
    [boldButton setTitle:v30 forState:0];

    [boldButton addTarget:v6 action:sel__handleContinueButton_ forControlEvents:0x2000];
    buttonTray = [(PUWhatsNewWelcomeViewController *)v6 buttonTray];
    [buttonTray addButton:boldButton];

    v32 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__handleContinueButton_];
    [(PUWhatsNewWelcomeViewController *)v6 addKeyCommand:v32];

    [(PUWhatsNewWelcomeViewController *)v6 setModalPresentationStyle:2];
    [(PUWhatsNewWelcomeViewController *)v6 setModalInPresentation:1];
    v33 = [handlerCopy copy];
    [(PUWhatsNewWelcomeViewController *)v6 _setCompletionHandler:v33];
  }

  return v6;
}

void __61__PUWhatsNewWelcomeViewController_initWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentPrivacyOverview];
}

+ (void)resetLastPresentationInfo
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"LastWhatsNewShown"];
}

+ (void)presentIfNecessaryFromViewController:(id)controller presentationHandler:(id)handler completionHandler:(id)completionHandler
{
  controllerCopy = controller;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults integerForKey:@"LastWhatsNewShown"];

  v11 = +[PUWelcomeSettings sharedInstance];
  whatsNewBehavior = [v11 whatsNewBehavior];

  if (!whatsNewBehavior || (whatsNewBehavior != 1 ? (v13 = v10 <= 12) : (v13 = 0), v13))
  {
    v14 = [[PUWhatsNewWelcomeViewController alloc] initWithCompletionHandler:completionHandlerCopy];
    [controllerCopy presentViewController:v14 animated:1 completion:0];
    handlerCopy[2](handlerCopy);
  }

  else
  {
    completionHandlerCopy[2](completionHandlerCopy, 0);
  }
}

@end