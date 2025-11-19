@interface TVModalPresentationNavigationController
- (NSHashTable)presentedViewControllers;
- (TVModalPresentationNavigationController)initWithConfiguration:(id)a3;
- (UIAlertController)containingAlertController;
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

@implementation TVModalPresentationNavigationController

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

- (TVModalPresentationNavigationController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  v7 = [v6 view];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  v18.receiver = self;
  v18.super_class = TVModalPresentationNavigationController;
  v9 = [(TVModalPresentationNavigationController *)&v18 initWithRootViewController:v6];
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
    [(TVModalPresentationNavigationController *)v10 _updateConfiguration];
    v15 = [(TVModalPresentationNavigationController *)v10 navigationBar];
    [v15 setPrefersLargeTitles:1];

    v16 = [(TVModalPresentationNavigationController *)v10 navigationBar];
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
    [(TVModalPresentationNavigationController *)self _updateConfiguration];
    v5 = v6;
  }
}

- (void)_updateConfiguration
{
  v3 = [(TVModalPresentationNavigationController *)self configuration];
  if ([v3 type] == 1000)
  {
    goto LABEL_4;
  }

  v4 = [(TVModalPresentationNavigationController *)self configuration];
  if ([v4 type] == 1001)
  {

LABEL_4:
    v5 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v6 = [(TVModalPresentationNavigationController *)self configuration];
  v7 = [v6 type];

  if (v7 != 1002)
  {
    v3 = [(TVModalPresentationNavigationController *)self configuration];
    v5 = [v3 type];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
  [(TVModalPresentationNavigationController *)self setModalPresentationStyle:v5];
  v8 = [(TVModalPresentationNavigationController *)self configuration];
  -[TVModalPresentationNavigationController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [v8 isNavigationBarHidden], 0);
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [(NSArray *)self->_previousViewControllers copy];
  v7 = [(TVModalPresentationNavigationController *)self viewControllers];
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
    block[2] = __74__TVModalPresentationNavigationController_didShowViewController_animated___block_invoke;
    block[3] = &unk_279D6E6F8;
    v16 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  if (a5)
  {
    pushCompletionBlocks = self->_pushCompletionBlocks;
    v9 = MEMORY[0x26D6AFBB0](a5);
    [(NSMapTable *)pushCompletionBlocks setObject:v9 forKey:v10];
  }

  [(TVModalPresentationNavigationController *)self pushViewController:v10 animated:v6];
}

- (id)popViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  if (a4)
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v7 = MEMORY[0x26D6AFBB0](a4, a2);
    v8 = [(TVModalPresentationNavigationController *)self viewControllers];
    v9 = [v8 lastObject];
    [(NSMapTable *)popCompletionBlocks setObject:v7 forKey:v9];
  }

  return [(TVModalPresentationNavigationController *)self popViewControllerAnimated:v4];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TVModalPresentationNavigationController *)self viewControllers];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 navigationItem];
    [v9 setHidesBackButton:1];
  }

  v10 = [(TVModalPresentationNavigationController *)self viewControllers];
  v11 = [v10 copy];
  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = v11;

  v13.receiver = self;
  v13.super_class = TVModalPresentationNavigationController;
  [(TVModalPresentationNavigationController *)&v13 pushViewController:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVModalPresentationNavigationController *)self viewControllers];
  v6 = [v5 copy];
  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = v6;

  v8 = [(TVModalPresentationNavigationController *)self viewControllers];
  v9 = [v8 count];

  if (v9 == 2)
  {
    [(TVModalPresentationNavigationController *)self _dismissForLastViewController:v3];
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TVModalPresentationNavigationController;
    v10 = [(TVModalPresentationNavigationController *)&v12 popViewControllerAnimated:v3];
  }

  return v10;
}

- (void)_dismissForLastViewController:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSArray *)self->_previousViewControllers lastObject];
  v6 = [(NSMapTable *)self->_popCompletionBlocks objectForKey:v5];
  v7 = [(TVModalPresentationNavigationController *)self presentingViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__TVModalPresentationNavigationController__dismissForLastViewController___block_invoke;
  v10[3] = &unk_279D6E6F8;
  v11 = v6;
  v8 = v6;
  [v7 dismissViewControllerAnimated:v3 completion:v10];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"TVModalPresentationNavigationControllerDismissedNotification" object:self];
}

uint64_t __73__TVModalPresentationNavigationController__dismissForLastViewController___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(TVModalPresentationNavigationController *)self childViewControllers];
  v5 = [v4 lastObject];

  if ([v5 conformsToProtocol:&unk_287E7C098])
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