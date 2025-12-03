@interface PSEnrollmentNavigationController
- (CGSize)preferredContentSize;
- (PSEnrollmentNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (PSEnrollmentNavigationControllerDismissalDelegate)dismissalDelegate;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation PSEnrollmentNavigationController

- (PSEnrollmentNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v13.receiver = self;
  v13.super_class = PSEnrollmentNavigationController;
  v8 = [(PSEnrollmentNavigationController *)&v13 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v9 = getBFFStyleClass_softClass;
    v18 = getBFFStyleClass_softClass;
    if (!getBFFStyleClass_softClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getBFFStyleClass_block_invoke;
      v14[3] = &unk_279A03148;
      v14[4] = &v15;
      __getBFFStyleClass_block_invoke(v14);
      v9 = v16[3];
    }

    v10 = v9;
    _Block_object_dispose(&v15, 8);
    sharedStyle = [v9 sharedStyle];
    [sharedStyle applyThemeToNavigationController:v8];
  }

  return v8;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  topViewController = [(PSEnrollmentNavigationController *)self topViewController];
  preferredStatusBarStyle = [topViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (CGSize)preferredContentSize
{
  topViewController = [(PSEnrollmentNavigationController *)self topViewController];
  [topViewController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PSEnrollmentNavigationControllerDismissalDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

@end