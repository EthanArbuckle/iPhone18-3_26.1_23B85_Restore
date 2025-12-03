@interface PDURootViewController
+ (BOOL)deviceIsPad;
+ (unint64_t)preferredOrientation;
- (PDURootViewController)initWithApplicationIdentity:(id)identity consentStore:(id)store;
- (PDURootViewControllerDelegate)delegate;
- (void)_presentWelcomeViewIfNeeded;
- (void)_showWelcomeViewIfNeeded;
- (void)welcomeViewController:(id)controller didDismissWithUserResponse:(unint64_t)response;
@end

@implementation PDURootViewController

- (PDURootViewController)initWithApplicationIdentity:(id)identity consentStore:(id)store
{
  identityCopy = identity;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = PDURootViewController;
  v9 = [(PDURootViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationIdentity, identity);
    objc_storeStrong(&v10->_consentStore, store);
    v11 = v10;
  }

  return v10;
}

- (void)welcomeViewController:(id)controller didDismissWithUserResponse:(unint64_t)response
{
  delegate = [(PDURootViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (response > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_25F710B18[response];
    }

    delegate2 = [(PDURootViewController *)self delegate];
    [delegate2 rootViewController:self didDismissWithUserResponse:v8];

    [(PDURootViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_showWelcomeViewIfNeeded
{
  v26[4] = *MEMORY[0x277D85DE8];
  if (!self->_welcomeViewController)
  {
    v3 = PDUWelcomeViewControllerForApplicationWithConsentStore(self->_applicationIdentity, self, self->_consentStore);
    welcomeViewController = self->_welcomeViewController;
    self->_welcomeViewController = v3;

    view = [(UIViewController *)self->_welcomeViewController view];
    [(PDURootViewController *)self addChildViewController:self->_welcomeViewController];
    view2 = [(PDURootViewController *)self view];
    [view2 addSubview:view];

    [(UIViewController *)self->_welcomeViewController didMoveToParentViewController:self];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = MEMORY[0x277CCAAD0];
    topAnchor = [view topAnchor];
    view3 = [(PDURootViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v22;
    bottomAnchor = [view bottomAnchor];
    view4 = [(PDURootViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[1] = v17;
    leadingAnchor = [view leadingAnchor];
    view5 = [(PDURootViewController *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[2] = v10;
    trailingAnchor = [view trailingAnchor];
    view6 = [(PDURootViewController *)self view];
    trailingAnchor2 = [view6 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v18 activateConstraints:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)deviceIsPad
{
  if (deviceIsPad_onceToken != -1)
  {
    +[PDURootViewController deviceIsPad];
  }

  return deviceIsPad_isPad;
}

uint64_t __36__PDURootViewController_deviceIsPad__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceIsPad_isPad = result == 3;
  return result;
}

+ (unint64_t)preferredOrientation
{
  if ([self deviceIsPad])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_presentWelcomeViewIfNeeded
{
  if (!self->_welcomeViewController)
  {
    v3 = PDUWelcomeViewControllerForApplicationWithConsentStore(self->_applicationIdentity, self, self->_consentStore);
    welcomeViewController = self->_welcomeViewController;
    self->_welcomeViewController = v3;

    if ([objc_opt_class() deviceIsPad])
    {
      v5 = 2;
    }

    else
    {
      v5 = 5;
    }

    [(UIViewController *)self->_welcomeViewController setModalPresentationStyle:v5];
    [(UIViewController *)self->_welcomeViewController setModalInPresentation:1];
    v6 = self->_welcomeViewController;

    [(PDURootViewController *)self presentViewController:v6 animated:0 completion:0];
  }
}

- (PDURootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end