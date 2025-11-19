@interface PDURootViewController
+ (BOOL)deviceIsPad;
+ (unint64_t)preferredOrientation;
- (PDURootViewController)initWithApplicationIdentity:(id)a3 consentStore:(id)a4;
- (PDURootViewControllerDelegate)delegate;
- (void)_presentWelcomeViewIfNeeded;
- (void)_showWelcomeViewIfNeeded;
- (void)welcomeViewController:(id)a3 didDismissWithUserResponse:(unint64_t)a4;
@end

@implementation PDURootViewController

- (PDURootViewController)initWithApplicationIdentity:(id)a3 consentStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PDURootViewController;
  v9 = [(PDURootViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationIdentity, a3);
    objc_storeStrong(&v10->_consentStore, a4);
    v11 = v10;
  }

  return v10;
}

- (void)welcomeViewController:(id)a3 didDismissWithUserResponse:(unint64_t)a4
{
  v6 = [(PDURootViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (a4 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_25F710B18[a4];
    }

    v9 = [(PDURootViewController *)self delegate];
    [v9 rootViewController:self didDismissWithUserResponse:v8];

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

    v5 = [(UIViewController *)self->_welcomeViewController view];
    [(PDURootViewController *)self addChildViewController:self->_welcomeViewController];
    v6 = [(PDURootViewController *)self view];
    [v6 addSubview:v5];

    [(UIViewController *)self->_welcomeViewController didMoveToParentViewController:self];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = MEMORY[0x277CCAAD0];
    v24 = [v5 topAnchor];
    v25 = [(PDURootViewController *)self view];
    v23 = [v25 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v20 = [v5 bottomAnchor];
    v21 = [(PDURootViewController *)self view];
    v19 = [v21 bottomAnchor];
    v17 = [v20 constraintEqualToAnchor:v19];
    v26[1] = v17;
    v7 = [v5 leadingAnchor];
    v8 = [(PDURootViewController *)self view];
    v9 = [v8 leadingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    v26[2] = v10;
    v11 = [v5 trailingAnchor];
    v12 = [(PDURootViewController *)self view];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
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
  if ([a1 deviceIsPad])
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