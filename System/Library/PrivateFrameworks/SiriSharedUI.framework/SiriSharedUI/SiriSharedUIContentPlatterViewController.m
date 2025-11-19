@interface SiriSharedUIContentPlatterViewController
- (BOOL)_canShowWhileLocked;
- (SiriSharedUIContentPlatterView)contentPlatterView;
- (void)appendSeparatorToViewControllers:(id)a3 forNextViewController:(id)a4;
- (void)loadView;
- (void)setContentViewControllers:(id)a3;
@end

@implementation SiriSharedUIContentPlatterViewController

- (void)loadView
{
  v3 = objc_alloc_init(SiriSharedUIContentPlatterView);
  [(SiriSharedUIContentPlatterViewController *)self setView:v3];
}

- (void)setContentViewControllers:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  contentViewControllers = self->_contentViewControllers;
  if (contentViewControllers != v5)
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
          v13 = [v12 view];
          [v13 removeFromSuperview];

          [v12 didMoveToParentViewController:0];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_contentViewControllers, a3);
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
          v21 = [v20 view];
          [v14 addObject:v21];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    v22 = [(SiriSharedUIContentPlatterViewController *)self contentPlatterView];
    [v22 setContentViews:v14];
  }
}

- (void)appendSeparatorToViewControllers:(id)a3 forNextViewController:(id)a4
{
  v12 = a4;
  v5 = MEMORY[0x277D75D28];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(SiriSharedUIContentPlatterSeparatorView);
  v9 = [v12 aceObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v10 = [v12 aceObject];
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
  [v6 addObject:v7];
}

- (SiriSharedUIContentPlatterView)contentPlatterView
{
  v2 = [(SiriSharedUIContentPlatterViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v2 = [MEMORY[0x277D61AB8] sharedInstance];
  v3 = [v2 isSiriSafeForLockScreen];

  return v3;
}

@end