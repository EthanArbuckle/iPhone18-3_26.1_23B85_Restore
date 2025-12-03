@interface UIViewController(PUNavigationController_Private)
- (id)pu_navigationController;
- (void)ppt_performBlockAfterNextNavigationAnimation:()PUNavigationController_Private;
@end

@implementation UIViewController(PUNavigationController_Private)

- (void)ppt_performBlockAfterNextNavigationAnimation:()PUNavigationController_Private
{
  v5 = a3;
  selfCopy = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PUNavigationController.m" lineNumber:554 description:@"navigation controller must be a PUNavigationController"];
  }

  if (v5)
  {
    ppt_onDidShowViewControllerBlock = [selfCopy ppt_onDidShowViewControllerBlock];

    if (ppt_onDidShowViewControllerBlock)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PUNavigationController.m" lineNumber:557 description:@"a previous block has already been scheduled for after the next navigation animation"];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__UIViewController_PUNavigationController_Private__ppt_performBlockAfterNextNavigationAnimation___block_invoke;
    v10[3] = &unk_1E7B80C88;
    v11 = v5;
    [selfCopy ppt_setOnDidShowViewControllerBlock:v10];
  }

  else
  {
    [selfCopy ppt_setOnDidShowViewControllerBlock:0];
  }
}

- (id)pu_navigationController
{
  navigationController = [self navigationController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    navigationController = 0;
  }

  return navigationController;
}

@end