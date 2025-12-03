@interface TVModalPresentationNavigationController
- (NSHashTable)presentedViewControllers;
- (TVModalPresentationNavigationController)initWithConfiguration:(id)configuration;
- (UIAlertController)containingAlertController;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_dismissForLastViewController:(BOOL)controller;
- (void)_updateConfiguration;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setConfiguration:(id)configuration;
- (void)updatePreferredFocusedViewStateForFocus:(BOOL)focus;
@end

@implementation TVModalPresentationNavigationController

- (NSHashTable)presentedViewControllers
{
  presentedViewControllers = self->_presentedViewControllers;
  if (!presentedViewControllers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v5 = self->_presentedViewControllers;
    self->_presentedViewControllers = weakObjectsHashTable;

    presentedViewControllers = self->_presentedViewControllers;
  }

  return presentedViewControllers;
}

- (TVModalPresentationNavigationController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
  view = [v6 view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

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

    objc_storeStrong(&v10->_configuration, configuration);
    [(TVModalPresentationNavigationController *)v10 _updateConfiguration];
    navigationBar = [(TVModalPresentationNavigationController *)v10 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    navigationBar2 = [(TVModalPresentationNavigationController *)v10 navigationBar];
    [navigationBar2 _setHidesShadow:1];
  }

  return v10;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    [(TVModalPresentationNavigationController *)self _updateConfiguration];
    configurationCopy = v6;
  }
}

- (void)_updateConfiguration
{
  configuration = [(TVModalPresentationNavigationController *)self configuration];
  if ([configuration type] == 1000)
  {
    goto LABEL_4;
  }

  configuration2 = [(TVModalPresentationNavigationController *)self configuration];
  if ([configuration2 type] == 1001)
  {

LABEL_4:
    type2 = 0;
LABEL_5:

    goto LABEL_6;
  }

  configuration3 = [(TVModalPresentationNavigationController *)self configuration];
  type = [configuration3 type];

  if (type != 1002)
  {
    configuration = [(TVModalPresentationNavigationController *)self configuration];
    type2 = [configuration type];
    goto LABEL_5;
  }

  type2 = 0;
LABEL_6:
  [(TVModalPresentationNavigationController *)self setModalPresentationStyle:type2];
  configuration4 = [(TVModalPresentationNavigationController *)self configuration];
  -[TVModalPresentationNavigationController setNavigationBarHidden:animated:](self, "setNavigationBarHidden:animated:", [configuration4 isNavigationBarHidden], 0);
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  v6 = [(NSArray *)self->_previousViewControllers copy];
  viewControllers = [(TVModalPresentationNavigationController *)self viewControllers];
  if (([v6 containsObject:controllerCopy] & 1) == 0 && (objc_msgSend(viewControllers, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == controllerCopy))
  {
    v11 = [(NSMapTable *)self->_pushCompletionBlocks objectForKey:controllerCopy];
    [(NSMapTable *)self->_pushCompletionBlocks removeObjectForKey:controllerCopy];
  }

  else
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    lastObject = [v6 lastObject];
    v11 = [(NSMapTable *)popCompletionBlocks objectForKey:lastObject];

    v12 = self->_popCompletionBlocks;
    lastObject2 = [v6 lastObject];
    [(NSMapTable *)v12 removeObjectForKey:lastObject2];
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

- (void)pushViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (completion)
  {
    pushCompletionBlocks = self->_pushCompletionBlocks;
    v9 = MEMORY[0x26D6AFBB0](completion);
    [(NSMapTable *)pushCompletionBlocks setObject:v9 forKey:controllerCopy];
  }

  [(TVModalPresentationNavigationController *)self pushViewController:controllerCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if (completion)
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v7 = MEMORY[0x26D6AFBB0](completion, a2);
    viewControllers = [(TVModalPresentationNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
    [(NSMapTable *)popCompletionBlocks setObject:v7 forKey:lastObject];
  }

  return [(TVModalPresentationNavigationController *)self popViewControllerAnimated:animatedCopy];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllers = [(TVModalPresentationNavigationController *)self viewControllers];
  v8 = [viewControllers count];

  if (v8 == 1)
  {
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  viewControllers2 = [(TVModalPresentationNavigationController *)self viewControllers];
  v11 = [viewControllers2 copy];
  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = v11;

  v13.receiver = self;
  v13.super_class = TVModalPresentationNavigationController;
  [(TVModalPresentationNavigationController *)&v13 pushViewController:controllerCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(TVModalPresentationNavigationController *)self viewControllers];
  v6 = [viewControllers copy];
  previousViewControllers = self->_previousViewControllers;
  self->_previousViewControllers = v6;

  viewControllers2 = [(TVModalPresentationNavigationController *)self viewControllers];
  v9 = [viewControllers2 count];

  if (v9 == 2)
  {
    [(TVModalPresentationNavigationController *)self _dismissForLastViewController:animatedCopy];
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TVModalPresentationNavigationController;
    v10 = [(TVModalPresentationNavigationController *)&v12 popViewControllerAnimated:animatedCopy];
  }

  return v10;
}

- (void)_dismissForLastViewController:(BOOL)controller
{
  controllerCopy = controller;
  lastObject = [(NSArray *)self->_previousViewControllers lastObject];
  v6 = [(NSMapTable *)self->_popCompletionBlocks objectForKey:lastObject];
  presentingViewController = [(TVModalPresentationNavigationController *)self presentingViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__TVModalPresentationNavigationController__dismissForLastViewController___block_invoke;
  v10[3] = &unk_279D6E6F8;
  v11 = v6;
  v8 = v6;
  [presentingViewController dismissViewControllerAnimated:controllerCopy completion:v10];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVModalPresentationNavigationControllerDismissedNotification" object:self];
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

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)focus
{
  focusCopy = focus;
  childViewControllers = [(TVModalPresentationNavigationController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if ([lastObject conformsToProtocol:&unk_287E7C098])
  {
    [lastObject updatePreferredFocusedViewStateForFocus:focusCopy];
  }
}

- (UIAlertController)containingAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_containingAlertController);

  return WeakRetained;
}

@end