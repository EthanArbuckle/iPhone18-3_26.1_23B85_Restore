@interface VUIModalPresentationNavigationController
- (NSHashTable)presentedViewControllers;
- (UIAlertController)containingAlertController;
- (VUIModalPresentationNavigationController)initWithConfiguration:(id)a3;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)popViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissForLastViewController:(BOOL)a3;
- (void)_updateConfiguration;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setConfiguration:(id)a3;
- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3;
@end

@implementation VUIModalPresentationNavigationController

- (NSHashTable)presentedViewControllers
{
  presentedViewControllers = self->_presentedViewControllers;
  if (!presentedViewControllers)
  {
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->_presentedViewControllers;
    self->_presentedViewControllers = v4;

    presentedViewControllers = self->_presentedViewControllers;
  }

  return presentedViewControllers;
}

- (VUIModalPresentationNavigationController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  v7 = [v6 view];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  v18.receiver = self;
  v18.super_class = VUIModalPresentationNavigationController;
  v9 = [(VUIModalPresentationNavigationController *)&v18 initWithRootViewController:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootViewController, v6);
    v11 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
    pushCompletionBlocks = v10->_pushCompletionBlocks;
    v10->_pushCompletionBlocks = v11;

    v13 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
    popCompletionBlocks = v10->_popCompletionBlocks;
    v10->_popCompletionBlocks = v13;

    objc_storeStrong(&v10->_configuration, a3);
    [(VUIModalPresentationNavigationController *)v10 _updateConfiguration];
    v15 = [(VUIModalPresentationNavigationController *)v10 navigationBar];
    [v15 setPrefersLargeTitles:1];

    v16 = [(VUIModalPresentationNavigationController *)v10 navigationBar];
    [v16 _setHidesShadow:1];
  }

  return v10;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (self->_configuration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_configuration, a3);
    [(VUIModalPresentationNavigationController *)self _updateConfiguration];
    v5 = v6;
  }
}

- (void)_updateConfiguration
{
  v3 = [(VUIModalPresentationNavigationController *)self configuration];
  if ([v3 type] == 1000)
  {
    goto LABEL_4;
  }

  v4 = [(VUIModalPresentationNavigationController *)self configuration];
  if ([v4 type] == 1001)
  {

LABEL_4:
    v5 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v6 = [(VUIModalPresentationNavigationController *)self configuration];
  v7 = [v6 type];

  if (v7 != 1002)
  {
    v3 = [(VUIModalPresentationNavigationController *)self configuration];
    v5 = [v3 type];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
  [(VUIModalPresentationNavigationController *)self setModalPresentationStyle:v5];
  v8 = [(VUIModalPresentationNavigationController *)self configuration];
  -[VUIModalPresentationNavigationController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v8 isNavigationBarHidden], 0);
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [(NSArray *)self->_previousViewControllers copy];
  v7 = [(VUIModalPresentationNavigationController *)self viewControllers];
  if (([v6 containsObject:v5] & 1) == 0 && (objc_msgSend(v7, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v5))
  {
    v11 = [(NSMapTable *)self->_pushCompletionBlocks objectForKey:v5];
    [(NSMapTable *)self->_pushCompletionBlocks removeObjectForKey:v5];
  }

  else
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v10 = [v6 lastObject];
    v11 = [(NSMapTable *)popCompletionBlocks objectForKey:v10];

    v12 = self->_popCompletionBlocks;
    v13 = [v6 lastObject];
    [(NSMapTable *)v12 removeObjectForKey:v13];
  }

  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = 0;

  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__VUIModalPresentationNavigationController_didShowViewController_animated___block_invoke;
    block[3] = &unk_279E21370;
    v17 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:@"VUIModalPresentationNavigationControllerDidShowNotification" object:self];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  if (a5)
  {
    pushCompletionBlocks = self->_pushCompletionBlocks;
    v9 = MEMORY[0x2743B7C30](a5);
    [(NSMapTable *)pushCompletionBlocks setObject:v9 forKey:v10];
  }

  [(VUIModalPresentationNavigationController *)self pushViewController:v10 animated:v6];
}

- (id)popViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  if (a4)
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v7 = MEMORY[0x2743B7C30](a4, a2);
    v8 = [(VUIModalPresentationNavigationController *)self viewControllers];
    v9 = [v8 lastObject];
    [(NSMapTable *)popCompletionBlocks setObject:v7 forKey:v9];
  }

  return [(VUIModalPresentationNavigationController *)self popViewControllerAnimated:v4];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VUIModalPresentationNavigationController *)self viewControllers];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 navigationItem];
    [v9 setHidesBackButton:1];
  }

  v10 = [(VUIModalPresentationNavigationController *)self viewControllers];
  v11 = [v10 copy];
  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = v11;

  v13.receiver = self;
  v13.super_class = VUIModalPresentationNavigationController;
  [(VUIModalPresentationNavigationController *)&v13 pushViewController:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIModalPresentationNavigationController *)self viewControllers];
  v6 = [v5 copy];
  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = v6;

  v8 = [(VUIModalPresentationNavigationController *)self viewControllers];
  v9 = [v8 count];

  if (v9 == 2)
  {
    [(VUIModalPresentationNavigationController *)self _dismissForLastViewController:v3];
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VUIModalPresentationNavigationController;
    v10 = [(VUIModalPresentationNavigationController *)&v12 popViewControllerAnimated:v3];
  }

  return v10;
}

- (void)_dismissForLastViewController:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSArray *)self->_previousViewControllers lastObject];
  v6 = [(NSMapTable *)self->_popCompletionBlocks objectForKey:v5];
  objc_initWeak(&location, self);
  v7 = [(VUIModalPresentationNavigationController *)self presentingViewController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__VUIModalPresentationNavigationController__dismissForLastViewController___block_invoke;
  v9[3] = &unk_279E21410;
  v8 = v6;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [v7 dismissViewControllerAnimated:v3 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __74__VUIModalPresentationNavigationController__dismissForLastViewController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 1, 0);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"VUIModalPresentationNavigationControllerDismissedNotification" object:WeakRetained];
}

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(VUIModalPresentationNavigationController *)self childViewControllers];
  v5 = [v4 lastObject];

  if ([v5 conformsToProtocol:&unk_288115768])
  {
    [v5 updatePreferredFocusedViewStateForFocus:v3];
  }
}

- (UIAlertController)containingAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_containingAlertController);

  return WeakRetained;
}

@end