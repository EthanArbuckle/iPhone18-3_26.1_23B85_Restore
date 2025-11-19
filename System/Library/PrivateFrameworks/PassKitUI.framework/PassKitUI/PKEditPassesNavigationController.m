@interface PKEditPassesNavigationController
- (PKEditPassesNavigationController)initWithExistingGroupsController:(id)a3;
- (PKEditPassesNavigationController)initWithExistingGroupsController:(id)a3 specificGroup:(id)a4 isForWatch:(BOOL)a5 delegate:(id)a6;
- (void)_done;
@end

@implementation PKEditPassesNavigationController

- (PKEditPassesNavigationController)initWithExistingGroupsController:(id)a3
{
  v4 = a3;
  v5 = [[PKEditGroupsViewController alloc] initInEditingMode:1 existingGroupsController:v4 isForWatch:0];
  v6 = [v5 navigationItem];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__done];
  [v6 setLeftBarButtonItem:v7];

  v16.receiver = self;
  v16.super_class = PKEditPassesNavigationController;
  v8 = [(PKNavigationController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(PKEditPassesNavigationController *)v8 pushViewController:v5 animated:0];
  }

  [(PKEditPassesNavigationController *)v9 _beginDelayingPresentation:0 cancellationHandler:2.0];
  objc_initWeak(&location, v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKEditPassesNavigationController_initWithExistingGroupsController___block_invoke;
  v12[3] = &unk_1E80191F0;
  objc_copyWeak(&v14, &location);
  v10 = v5;
  v13 = v10;
  [PKEditTableViewController loadPlaceholdersWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __69__PKEditPassesNavigationController_initWithExistingGroupsController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKEditPassesNavigationController_initWithExistingGroupsController___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __69__PKEditPassesNavigationController_initWithExistingGroupsController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) setPlaceholders:*(a1 + 40)];
    [v3 _endDelayingPresentation];
    WeakRetained = v3;
  }
}

- (PKEditPassesNavigationController)initWithExistingGroupsController:(id)a3 specificGroup:(id)a4 isForWatch:(BOOL)a5 delegate:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[PKEditGroupViewController alloc] initWithGroup:v11 existingGroupsController:v10 style:1 placeholders:0 isForWatch:v7 delegate:v12];
  v14 = [(PKEditGroupViewController *)v13 navigationItem];
  v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__done];
  [v14 setLeftBarButtonItem:v15];

  v24.receiver = self;
  v24.super_class = PKEditPassesNavigationController;
  v16 = [(PKNavigationController *)&v24 init];
  v17 = v16;
  if (v16)
  {
    [(PKEditPassesNavigationController *)v16 pushViewController:v13 animated:0];
  }

  [(PKEditPassesNavigationController *)v17 _beginDelayingPresentation:0 cancellationHandler:2.0];
  objc_initWeak(&location, v17);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PKEditPassesNavigationController_initWithExistingGroupsController_specificGroup_isForWatch_delegate___block_invoke;
  v20[3] = &unk_1E80191F0;
  objc_copyWeak(&v22, &location);
  v18 = v13;
  v21 = v18;
  [PKEditTableViewController loadPlaceholdersWithCompletion:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v17;
}

void __103__PKEditPassesNavigationController_initWithExistingGroupsController_specificGroup_isForWatch_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__PKEditPassesNavigationController_initWithExistingGroupsController_specificGroup_isForWatch_delegate___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __103__PKEditPassesNavigationController_initWithExistingGroupsController_specificGroup_isForWatch_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) setPlaceholders:*(a1 + 40)];
    [v3 _endDelayingPresentation];
    WeakRetained = v3;
  }
}

- (void)_done
{
  v2 = [(PKEditPassesNavigationController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end