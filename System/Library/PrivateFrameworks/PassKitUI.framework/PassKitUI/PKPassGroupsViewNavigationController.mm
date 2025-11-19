@interface PKPassGroupsViewNavigationController
- (PKDashboardPassGroupViewController)dashboardPassGroupViewController;
- (PKPassGroupsViewNavigationController)initWithPassGroupsViewController:(id)a3;
- (id)_popToDashboardPassGroupVCAnimated:(id *)a3 poppedVCs:;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (int64_t)VCsState;
- (void)_assertViewControllersPreconditions:(uint64_t)a1;
- (void)_popToPassGroupsVCAnimated:(id *)a3 poppedVCs:;
- (void)dealloc;
- (void)invalidate;
- (void)loadView;
- (void)setViewControllers:(id)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPassGroupsViewNavigationController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = PKPassGroupsViewNavigationController;
  [(PKPassGroupsViewNavigationController *)&v4 loadView];
  v3 = [(PKPassGroupsViewNavigationController *)self navigationBar];
  [v3 setPrefersLargeTitles:1];
  [(PKPassGroupsViewNavigationController *)self setToolbarHidden:0];
}

- (PKPassGroupsViewNavigationController)initWithPassGroupsViewController:(id)a3
{
  result = a3;
  if (result)
  {
    v6 = result;
    v9.receiver = self;
    v9.super_class = PKPassGroupsViewNavigationController;
    v7 = [(PKNavigationController *)&v9 initWithRootViewController:result];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_passGroupsViewController, a3);
      [(PKNavigationController *)v8 setSupportedInterfaceOrientations:[(PKPassGroupsViewController *)v8->_passGroupsViewController supportedInterfaceOrientations]];
      [(PKPassGroupsViewNavigationController *)v8 setRestorationIdentifier:@"PKPassGroupsViewNavigationController"];
      [(PKPassGroupsViewController *)v6 _setExternalNavigationController:v8];
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  [(PKPassGroupsViewNavigationController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKPassGroupsViewNavigationController;
  [(PKNavigationController *)&v3 dealloc];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPassGroupsViewNavigationController;
  [(PKPassGroupsViewNavigationController *)&v5 viewWillDisappear:a3];
  if (self && !self->_invalidated && !self->_willInvalidate)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 pkui_consumeSharedRootAuthenticationContext];
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKPassGroupsViewController *)&self->_passGroupsViewController->super.super.super.isa _setExternalNavigationController:?];
    passGroupsViewController = self->_passGroupsViewController;

    [(PKPassGroupsViewController *)passGroupsViewController invalidate];
  }
}

- (void)_assertViewControllersPreconditions:(uint64_t)a1
{
  v3 = a2;
  if (!a1 || v3 && (v6 = v3, [v3 count]) && (objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 1560), v4, v3 = v6, v4 == v5))
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)setViewControllers:(id)a3
{
  v4 = a3;
  [(PKPassGroupsViewNavigationController *)self _assertViewControllersPreconditions:v4];
  v5.receiver = self;
  v5.super_class = PKPassGroupsViewNavigationController;
  [(PKPassGroupsViewNavigationController *)&v5 setViewControllers:v4];
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PKPassGroupsViewNavigationController *)self _assertViewControllersPreconditions:v6];
  v7.receiver = self;
  v7.super_class = PKPassGroupsViewNavigationController;
  [(PKPassGroupsViewNavigationController *)&v7 setViewControllers:v6 animated:v4];
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v5 = 0;
  [(PKPassGroupsViewNavigationController *)&self->super.super.super.super.super.isa _popToDashboardPassGroupVCAnimated:a3 poppedVCs:&v5];
  v3 = v5;

  return v3;
}

- (id)_popToDashboardPassGroupVCAnimated:(id *)a3 poppedVCs:
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = [result viewControllers];
    v7 = [v6 count];
    if (v7 && (v8 = v7, [v6 objectAtIndexedSubscript:0], v9 = objc_claimAutoreleasedReturnValue(), v10 = v5[195], v9, v9 == v10))
    {
      if (v8 == 1)
      {
        v12 = 0;
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v12 = [v5 popToViewController:v5[195] animated:1];
      if (a3)
      {
LABEL_11:
        objc_storeStrong(a3, v12);
      }
    }

    else
    {
      v16[0] = v5[195];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v5 setViewControllers:v11 animated:a2];

      if (a3)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __85__PKPassGroupsViewNavigationController__popToDashboardPassGroupVCAnimated_poppedVCs___block_invoke;
        v14[3] = &unk_1E80252C8;
        v14[4] = v5;
        v12 = [v6 pk_createArrayByRemovingObjectsPassingTest:v14];
        goto LABEL_11;
      }

      v12 = 0;
    }

LABEL_12:
    v13 = [v5[195] dashboardPassGroupViewController];
    v15 = v13 != 0;

    return v15;
  }

  return result;
}

- (void)_popToPassGroupsVCAnimated:(id *)a3 poppedVCs:
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [a1 viewControllers];
    v7 = [v6 count];
    if (v7 && (v8 = v7, [v6 objectAtIndexedSubscript:0], v9 = objc_claimAutoreleasedReturnValue(), v10 = a1[195], v9, v9 == v10))
    {
      v13 = a1[195];
      if (v8 == 1)
      {
        [v13 presentGroupTableAnimated:a2];
        v12 = 0;
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      [v13 presentGroupTableAnimated:0];
      v12 = [a1 popToViewController:a1[195] animated:a2];
      if (a3)
      {
LABEL_11:
        objc_storeStrong(a3, v12);
      }
    }

    else
    {
      [a1[195] presentGroupTableAnimated:0];
      v15[0] = a1[195];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [a1 setViewControllers:v11 animated:a2];

      if (a3)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __77__PKPassGroupsViewNavigationController__popToPassGroupsVCAnimated_poppedVCs___block_invoke;
        v14[3] = &unk_1E80252C8;
        v14[4] = a1;
        v12 = [v6 pk_createArrayByRemovingObjectsPassingTest:v14];
        goto LABEL_11;
      }

      v12 = 0;
    }

LABEL_12:
  }
}

- (int64_t)VCsState
{
  v3 = [(PKPassGroupsViewNavigationController *)self viewControllers];
  v4 = [v3 count];
  if (v4 && (v5 = v4, [v3 objectAtIndexedSubscript:0], v6 = objc_claimAutoreleasedReturnValue(), passGroupsViewController = self->_passGroupsViewController, v6, v6 == passGroupsViewController))
  {
    v9 = [(PKPassGroupsViewController *)self->_passGroupsViewController dashboardPassGroupViewController];
    v10 = 3;
    if (!v9)
    {
      v10 = 1;
    }

    if (v5 == 1)
    {
      v8 = 2 * (v9 != 0);
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (PKDashboardPassGroupViewController)dashboardPassGroupViewController
{
  if (self)
  {
    self = [(PKPassGroupsViewController *)self->_passGroupsViewController dashboardPassGroupViewController];
    v2 = vars8;
  }

  return self;
}

@end