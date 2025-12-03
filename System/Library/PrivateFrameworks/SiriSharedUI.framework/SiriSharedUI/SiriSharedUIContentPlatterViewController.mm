@interface SiriSharedUIContentPlatterViewController
- (BOOL)_canShowWhileLocked;
- (SiriSharedUIContentPlatterView)contentPlatterView;
- (void)appendSeparatorToViewControllers:(id)controllers forNextViewController:(id)controller;
- (void)loadView;
- (void)setContentViewControllers:(id)controllers;
@end

@implementation SiriSharedUIContentPlatterViewController

- (void)loadView
{
  v3 = objc_alloc_init(SiriSharedUIContentPlatterView);
  [(SiriSharedUIContentPlatterViewController *)self setView:v3];
}

- (void)setContentViewControllers:(id)controllers
{
  v33 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  contentViewControllers = self->_contentViewControllers;
  if (contentViewControllers != controllersCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = contentViewControllers;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          [v12 removeFromParentViewController];
          view = [v12 view];
          [view removeFromSuperview];

          [v12 didMoveToParentViewController:0];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_contentViewControllers, controllers);
    v14 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_contentViewControllers;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          [(SiriSharedUIContentPlatterViewController *)self addChildViewController:v20, v23];
          [v20 didMoveToParentViewController:self];
          view2 = [v20 view];
          [v14 addObject:view2];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    contentPlatterView = [(SiriSharedUIContentPlatterViewController *)self contentPlatterView];
    [contentPlatterView setContentViews:v14];
  }
}

- (void)appendSeparatorToViewControllers:(id)controllers forNextViewController:(id)controller
{
  controllerCopy = controller;
  v5 = MEMORY[0x277D75D28];
  controllersCopy = controllers;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(SiriSharedUIContentPlatterSeparatorView);
  aceObject = [controllerCopy aceObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    aceObject2 = [controllerCopy aceObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [(SiriSharedUIContentPlatterSeparatorView *)v8 setSeparatorType:1];
LABEL_5:
  [v7 setView:v8];
  [controllersCopy addObject:v7];
}

- (SiriSharedUIContentPlatterView)contentPlatterView
{
  view = [(SiriSharedUIContentPlatterViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = view;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)_canShowWhileLocked
{
  mEMORY[0x277D61AB8] = [MEMORY[0x277D61AB8] sharedInstance];
  isSiriSafeForLockScreen = [mEMORY[0x277D61AB8] isSiriSafeForLockScreen];

  return isSiriSafeForLockScreen;
}

@end