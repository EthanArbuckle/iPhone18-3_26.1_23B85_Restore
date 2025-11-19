@interface SUTabBarController
- (BOOL)_saveNavigationPathToDefaults;
- (BOOL)_saveTransientNavigationPathToDefaults;
- (BOOL)loadFromDefaults;
- (BOOL)loadFromDefaultsAndSetSections:(id)a3;
- (BOOL)presentOverlayBackgroundViewController:(id)a3;
- (BOOL)saveOrderingToDefaults;
- (BOOL)saveToDefaults;
- (BOOL)window:(id)a3 shouldAutorotateToInterfaceOrientation:(int64_t)a4;
- (NSString)selectedIdentifier;
- (SUPreviewOverlayViewController)_previewOverlayViewController;
- (SUTabBarController)init;
- (SUTabBarController)initWithClientInterface:(id)a3;
- (id)_archivedContextsForViewController:(id)a3;
- (id)_rootViewControllerForSection:(id)a3;
- (id)_sectionForIdentifier:(id)a3;
- (id)_sectionForType:(int64_t)a3;
- (id)_sectionForViewController:(id)a3;
- (id)_timingFunctionForAnimation;
- (id)_viewControllerForContext:(id)a3;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (id)selectedViewController;
- (id)viewControllerForSectionIdentifier:(id)a3;
- (id)viewControllerForSectionType:(int64_t)a3;
- (unint64_t)indexOfViewControllerWithSectionType:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidChangeStatusBarFrame:(id)a3;
- (void)_applyMoreListConfiguration;
- (void)_beginReloadingUnderneathTransientViewController;
- (void)_endReloadingUnderneathTransientViewController;
- (void)_fixupTabBarSelection;
- (void)_fixupViewControllers;
- (void)_hidePreviewOverlayAnimated:(BOOL)a3;
- (void)_longPressAction:(id)a3;
- (void)_moveTransientViewController:(id)a3 toSectionWithIdentifier:(id)a4 asRoot:(BOOL)a5;
- (void)_moveView:(id)a3 toView:(id)a4;
- (void)_partnerChanged:(id)a3;
- (void)_reloadViewControllersFromSections:(id)a3 animated:(BOOL)a4;
- (void)_restoreArchivedContexts:(id)a3;
- (void)_restoreArchivedTransientContexts:(id)a3;
- (void)_restoreOverlayContexts:(id)a3;
- (void)_setSelectedViewController:(id)a3;
- (void)_setStoreBarStyle:(int64_t)a3;
- (void)_showPreviewOverlay:(id)a3 animated:(BOOL)a4;
- (void)_transitionSafeHandlePartnerChange:(id)a3;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)dismissOverlayBackgroundViewController;
- (void)loadView;
- (void)reloadSectionWithIdentifier:(id)a3 URL:(id)a4;
- (void)resetToSystemDefaults;
- (void)resetUserDefaults;
- (void)scriptOverlayBackgroundDidDismiss:(id)a3;
- (void)selectDefaultSection;
- (void)selectSectionOfType:(int64_t)a3;
- (void)setMoreListSelectedImage:(id)a3 unselectedImage:(id)a4;
- (void)setMoreListTitle:(id)a3;
- (void)setSectionOrdering:(id)a3;
- (void)setSections:(id)a3;
- (void)setSelectedIdentifier:(id)a3;
- (void)setTransientViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)tabBar:(id)a3 didEndCustomizingItems:(id)a4 changed:(BOOL)a5;
- (void)tabBar:(id)a3 willEndCustomizingItems:(id)a4 changed:(BOOL)a5;
- (void)tabBar:(id)a3 willShowCustomizationSheet:(id)a4 withNavigationBar:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation SUTabBarController

- (SUTabBarController)init
{
  v3 = +[SUClientDispatch clientInterface];

  return [(SUTabBarController *)self initWithClientInterface:v3];
}

- (SUTabBarController)initWithClientInterface:(id)a3
{
  v14.receiver = self;
  v14.super_class = SUTabBarController;
  v4 = [(SUTabBarController *)&v14 init];
  if (v4)
  {
    v4->_clientInterface = a3;
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
    {
      [(SUTabBarController *)v4 _setMaximumNumberOfItems:9];
    }

    v5 = [(SUTabBarController *)v4 tabBar];
    v6 = [(SUUIAppearance *)[(SUClientInterface *)v4->_clientInterface appearance] tabBarAppearance];
    if (v6)
    {
      v7 = v6;
      [v5 setBackgroundImage:{-[SUTabBarAppearance backgroundImage](v6, "backgroundImage")}];
      [v5 _setSelectionIndicatorImage:{-[SUTabBarAppearance selectionIndicatorImage](v7, "selectionIndicatorImage")}];
      [(SUTabBarAppearance *)v7 tabBarButtonWidth];
      if (v8 > 0.00000011920929)
      {
        [v5 _setTabButtonWidth:?];
        [(SUTabBarAppearance *)v7 tabBarButtonSpacing];
        [v5 _setInterTabButtonSpacing:?];
      }

      if (([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG] & 1) == 0)
      {
        v9 = [(SUTabBarAppearance *)v7 dividerImage];
        v10 = [(SUTabBarAppearance *)v7 selectedDividerImage];
        [v5 _setDividerImage:v9 forLeftButtonState:0 rightButtonState:0];
        [v5 _setDividerImage:v10 forLeftButtonState:1 rightButtonState:0];
      }
    }

    else
    {
      v11 = objc_alloc_init(SUNavigationBarBackgroundView);
      v4->_tabBarBackdropView = v11;
      [(SUNavigationBarBackgroundView *)v11 setSeparatorOnTop:1];
      [v5 _setBackgroundView:v4->_tabBarBackdropView];
      [v5 setTranslucent:1];
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v4 selector:sel__applicationDidChangeStatusBarFrame_ name:*MEMORY[0x1E69DDAB8] object:0];
    [v12 addObserver:v4 selector:sel__partnerChanged_ name:@"SUPartnerChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAB8] object:0];
  [v3 removeObserver:self name:@"SUPartnerChangedNotification" object:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v5 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(SUTabBarController *)self removeChildViewController:v9];
        [v9 setDelegate:0];
      }

      v6 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 dealloc];
}

- (BOOL)loadFromDefaultsAndSetSections:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];

  self->_preloadedViewController = 0;
  self->_preloadedViewControllerIdentifier = 0;
  self->_preloadedViewControllerKey = 0;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"ISURLRequest"];
  v6 = [v5 objectForKey:@"SUTransientNavigationPath"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = 0;
    v7 = MEMORY[0x1E696ACD0];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v7 unarchivedObjectOfClasses:objc_msgSend(v8 fromData:"setWithObjects:" error:{v9, objc_opt_class(), 0), v6, &v54}];
    if (v54)
    {
      v11 = [MEMORY[0x1E69D4938] sharedConfig];
      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v14 = objc_opt_class();
        v58 = 138543618;
        v59 = v14;
        v60 = 2114;
        v61 = v54;
        LODWORD(v45) = 22;
        v44 = &v58;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v58, v45}];
          free(v16);
          v44 = v17;
          SSFileLog();
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
    {
      self->_preloadedViewController = -[SUTabBarController _viewControllerForContext:](self, "_viewControllerForContext:", [v10 lastObject]);
      self->_preloadedViewControllerKey = @"SUTransientNavigationPath";
    }
  }

  if (!self->_preloadedViewController)
  {
    v18 = [v5 objectForKey:@"SUSectionNavigationPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = 0;
      v19 = MEMORY[0x1E696ACD0];
      v20 = MEMORY[0x1E695DFD8];
      v57[0] = objc_opt_class();
      v57[1] = objc_opt_class();
      v21 = [v19 unarchivedObjectOfClasses:objc_msgSend(v20 fromData:"setWithArray:" error:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v57, 2)), v18, &v54}];
      if (v54)
      {
        v22 = [MEMORY[0x1E69D4938] sharedConfig];
        v23 = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          v24 = v23 | 2;
        }

        else
        {
          v24 = v23;
        }

        if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v24 &= 2u;
        }

        if (v24)
        {
          v25 = objc_opt_class();
          v58 = 138543618;
          v59 = v25;
          v60 = 2114;
          v61 = v54;
          LODWORD(v45) = 22;
          v44 = &v58;
          v26 = _os_log_send_and_compose_impl();
          if (v26)
          {
            v27 = v26;
            v28 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v58, v45}];
            free(v27);
            v44 = v28;
            SSFileLog();
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v21 count])
        {
          v29 = [objc_msgSend(v21 objectAtIndex:{0), "sectionIdentifier"}];
        }

        else
        {
          v29 = 0;
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v30 = [v21 countByEnumeratingWithState:&v50 objects:v56 count:{16, v44}];
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          v33 = *v51;
          while (2)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v51 != v33)
              {
                objc_enumerationMutation(v21);
              }

              if ([*(*(&v50 + 1) + 8 * i) type])
              {
                if (v32 > 0)
                {
                  if ([objc_msgSend(v21 "lastObject")])
                  {
                    self->_preloadedViewController = -[SUTabBarController _viewControllerForContext:](self, "_viewControllerForContext:", [v21 lastObject]);
                    self->_preloadedViewControllerKey = @"SUSectionNavigationPath";
                  }

                  goto LABEL_42;
                }

                v32 = 1;
              }
            }

            v31 = [v21 countByEnumeratingWithState:&v50 objects:v56 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

LABEL_42:
        if (!self->_preloadedViewController && v29)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v35 = [a3 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = 0;
            v38 = *v47;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v47 != v38)
                {
                  objc_enumerationMutation(a3);
                }

                v40 = *(*(&v46 + 1) + 8 * j);
                if ([objc_msgSend(v40 "identifier")])
                {
                  v37 = v40;
                }
              }

              v36 = [a3 countByEnumeratingWithState:&v46 objects:v55 count:16];
            }

            while (v36);
          }

          else
          {
            v37 = 0;
          }

          self->_preloadedViewController = [(SUTabBarController *)self _rootViewControllerForSection:v37];
          self->_preloadedViewControllerIdentifier = v29;
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    preloadedViewController = self->_preloadedViewController;
    v42 = [(SUViewController *)preloadedViewController loadsWhenHidden];
    [(SUViewController *)preloadedViewController setLoadsWhenHidden:1];
    [(SUViewController *)preloadedViewController reload];
    [(SUViewController *)preloadedViewController setLoadsWhenHidden:v42];
  }

  [(SUTabBarController *)self setSections:a3, v44];
  [(SUTabBarController *)self loadFromDefaults];

  self->_preloadedViewController = 0;
  self->_preloadedViewControllerIdentifier = 0;
  self->_preloadedViewControllerKey = 0;
  return 1;
}

- (BOOL)loadFromDefaults
{
  v50[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"ISURLRequest"];
  v4 = [v3 objectForKey:@"SURootSections"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUTabBarController *)self setSectionOrdering:v4];
  }

  v5 = [v3 objectForKey:@"SUSectionNavigationPath"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = 0;
    v6 = MEMORY[0x1E696ACD0];
    v7 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v8 = [v6 unarchivedObjectOfClasses:objc_msgSend(v7 fromData:"setWithArray:" error:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v50, 2)), v5, &v43}];
    if (v43)
    {
      v9 = [MEMORY[0x1E69D4938] sharedConfig];
      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v46 = 138543618;
        v47 = v12;
        v48 = 2114;
        v49 = v43;
        LODWORD(v42) = 22;
        v39 = &v46;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v46, v42}];
          free(v14);
          v39 = v15;
          SSFileLog();
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUTabBarController *)self _restoreArchivedContexts:v8];
    }
  }

  v16 = [v3 objectForKey:{@"SUOverlayContexts", v39}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = 0;
    v17 = MEMORY[0x1E696ACD0];
    v18 = MEMORY[0x1E695DFD8];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v19 = [v17 unarchivedObjectOfClasses:objc_msgSend(v18 fromData:"setWithArray:" error:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v45, 2)), v16, &v43}];
    if (v43)
    {
      v20 = [MEMORY[0x1E69D4938] sharedConfig];
      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v23 = objc_opt_class();
        v46 = 138543618;
        v47 = v23;
        v48 = 2114;
        v49 = v43;
        LODWORD(v42) = 22;
        v40 = &v46;
        v24 = _os_log_send_and_compose_impl();
        if (v24)
        {
          v25 = v24;
          v26 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v46, v42}];
          free(v25);
          v40 = v26;
          SSFileLog();
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUTabBarController *)self _restoreOverlayContexts:v19];
    }
  }

  if ([(SUTabBarController *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_ignoreTabReselection = 1;
    [(SUTabBarController *)self setSelectedIndex:0];
    self->_ignoreTabReselection = 0;
  }

  v27 = [v3 objectForKey:@"SUTransientNavigationPath"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = 0;
    v28 = MEMORY[0x1E696ACD0];
    v29 = MEMORY[0x1E695DFD8];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v30 = [v28 unarchivedObjectOfClasses:objc_msgSend(v29 fromData:"setWithArray:" error:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v44, 2)), v27, &v43}];
    if (v43)
    {
      v31 = [MEMORY[0x1E69D4938] sharedConfig];
      v32 = [v31 shouldLog];
      if ([v31 shouldLogToDisk])
      {
        v33 = v32 | 2;
      }

      else
      {
        v33 = v32;
      }

      if (!os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v33 &= 2u;
      }

      if (v33)
      {
        v34 = objc_opt_class();
        v46 = 138543618;
        v47 = v34;
        v48 = 2114;
        v49 = v43;
        LODWORD(v42) = 22;
        v41 = &v46;
        v35 = _os_log_send_and_compose_impl();
        if (v35)
        {
          v36 = v35;
          v37 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:{4, &v46, v42}];
          free(v36);
          v41 = v37;
          SSFileLog();
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUTabBarController *)self _restoreArchivedTransientContexts:v30];
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  return 1;
}

- (void)reloadSectionWithIdentifier:(id)a3 URL:(id)a4
{
  [(SUTabBarController *)self setSelectedIdentifier:a3];
  v6 = [(UITabBarController *)self selectedNavigationController];
  if (v6 == [(SUTabBarController *)self moreNavigationController])
  {
    v7 = [v6 viewControllers];
    if ([v7 count] >= 3)
    {
      [v6 popToViewController:objc_msgSend(v7 animated:{"objectAtIndex:", 1), 0}];
    }
  }

  else
  {
    [v6 popToRootViewControllerAnimated:0];
  }

  v8 = [objc_msgSend(v6 "viewControllers")];
  if (a4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:a4];
    [v8 reloadWithURLRequestProperties:v9];
  }

  else if (objc_opt_respondsToSelector())
  {

    [v8 reload];
  }
}

- (void)resetToSystemDefaults
{
  [(SUTabBarController *)self resetUserDefaults];
  [(SUTabBarController *)self selectDefaultSection];
  v3 = [(UITabBarController *)self selectedNavigationController];

  [v3 popToRootViewControllerAnimated:0];
}

- (void)resetUserDefaults
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:@"SUNavigationAccountID"];
  [v2 removeObjectForKey:@"SURootSections"];
  [v2 removeObjectForKey:@"SUSectionNavigationPath"];
  [v2 removeObjectForKey:@"SUTransientNavigationPath"];

  [v2 synchronize];
}

- (BOOL)saveOrderingToDefaults
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(SUTabBarController *)self viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) section];
        if (([v9 isTransient] & 1) == 0 && objc_msgSend(v9, "identifier"))
        {
          [v3 addObject:{objc_msgSend(v9, "identifier")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];

  return 1;
}

- (BOOL)saveToDefaults
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (v3)
  {
    [v4 setObject:v3 forKey:@"SUNavigationAccountID"];
  }

  else
  {
    [v4 removeObjectForKey:@"SUNavigationAccountID"];
  }

  if (![(SUTabBarController *)self saveOrderingToDefaults]|| ![(SUTabBarController *)self _saveNavigationPathToDefaults]|| ![(SUTabBarController *)self _saveTransientNavigationPathToDefaults])
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];

  return [v5 synchronize];
}

- (void)selectDefaultSection
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SUTabBarController *)self viewControllers];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([objc_msgSend(v9 "section")])
          {
            v4 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    [(SUTabBarController *)self setSelectedViewController:v4];
  }
}

- (void)selectSectionOfType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(SUTabBarController *)self viewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) section];
        if ([v10 type] == a3)
        {
          v11 = [v10 identifier];
          if (v11)
          {
            [(SUTabBarController *)self setSelectedIdentifier:v11];
          }

          return;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)setMoreListSelectedImage:(id)a3 unselectedImage:(id)a4
{
  moreListSelectedImage = self->_moreListSelectedImage;
  if (moreListSelectedImage == a3)
  {
    p_moreListUnselectedImage = &self->_moreListUnselectedImage;
    moreListUnselectedImage = self->_moreListUnselectedImage;
    if (moreListUnselectedImage == a4)
    {
      return;
    }
  }

  else
  {

    self->_moreListSelectedImage = a3;
    p_moreListUnselectedImage = &self->_moreListUnselectedImage;
    moreListUnselectedImage = self->_moreListUnselectedImage;
    if (moreListUnselectedImage == a4)
    {
      goto LABEL_6;
    }
  }

  *p_moreListUnselectedImage = a4;
LABEL_6:

  [(SUTabBarController *)self _applyMoreListConfiguration];
}

- (void)setMoreListTitle:(id)a3
{
  moreListTitle = self->_moreListTitle;
  if (moreListTitle != a3)
  {

    self->_moreListTitle = a3;

    [(SUTabBarController *)self _applyMoreListConfiguration];
  }
}

- (void)setSectionOrdering:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = [(SUTabBarController *)self selectedIdentifier];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = self;
  v6 = [-[SUTabBarController viewControllers](self "viewControllers")];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v7 = [a3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v6 count];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          while (1)
          {
            v15 = [v6 objectAtIndex:v14];
            v16 = [v15 section];
            if ([v16 identifier])
            {
              if ([objc_msgSend(v16 "identifier")])
              {
                break;
              }
            }

            if (v13 == ++v14)
            {
              goto LABEL_13;
            }
          }

          [v5 addObject:v15];
          [v6 removeObjectAtIndex:v14];
        }

LABEL_13:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v6);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        if ([objc_msgSend(v22 "section")])
        {
          [v5 insertObject:v22 atIndex:v19++];
        }

        else
        {
          [v5 addObject:v22];
        }
      }

      v18 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  [(SUTabBarController *)v23 setViewControllers:v5];
  [(SUTabBarController *)v23 setSelectedIdentifier:v24];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SUTabBarController;
  [(SUTabBarController *)&v7 loadView];
  v3 = [(SUTabBarController *)self view];
  v4 = [SUHitTestView alloc];
  [v3 frame];
  v5 = [(SUHitTestView *)v4 initWithFrame:?];
  -[SUHitTestView setAutoresizingMask:](v5, "setAutoresizingMask:", [v3 autoresizingMask]);
  [(SUHitTestView *)v5 bounds];
  [v3 setFrame:?];
  [(SUHitTestView *)v5 addSubview:v3];
  [(SUTabBarController *)self setView:v5];
  v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__longPressAction_];
  [-[SUTabBarController tabBar](self "tabBar")];
}

- (id)rotatingFooterView
{
  if ([(SUTabBarController *)self overlayBackgroundViewController])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SUTabBarController;
  return [(SUTabBarController *)&v4 rotatingFooterView];
}

- (id)rotatingHeaderView
{
  if ([(SUTabBarController *)self overlayBackgroundViewController])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SUTabBarController;
  return [(SUTabBarController *)&v4 rotatingHeaderView];
}

- (id)_sectionForViewController:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(SUTabBarController *)self moreNavigationController];
  if (v5 != a3 || [objc_msgSend(v5 "viewControllers")] < 2)
  {
    return 0;
  }

  v6 = [(SUTabBarController *)self viewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![objc_msgSend(v11 "viewControllers")])
        {
          return [v11 section];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      result = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)_setSelectedViewController:(id)a3
{
  if ([(SUTabBarController *)self _isReloadingUnderneathTransientViewController])
  {
    self->_preTransientSelectedViewController = a3;
  }

  else
  {
    v5 = [(SUTabBarController *)self selectedViewController];
    v6 = [(SUTabBarController *)self transientViewController];
    if (v6 && v6 != a3)
    {
      self->_preTransientSelectedViewController = a3;
    }

    if (v5)
    {
      if (v5 != a3)
      {
        v7 = [a3 ITunesStoreUIBarStyle];
        if (v7 != self->_storeBarStyle)
        {
          v8 = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = a3;
          }

          else
          {
            v9 = 0;
          }

          [v9 _setStoreBarStyle:v8 clientInterface:self->_clientInterface];
          [(SUTabBarController *)self _setStoreBarStyle:v8];
          v10 = [MEMORY[0x1E69DC668] sharedApplication];
          v11 = [v10 statusBarStyle];
          if (v8 == 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11;
            if (v8 == 2)
            {
              v12 = 1;
            }
          }

          [v10 setStatusBarStyle:v12 animated:0];
        }
      }
    }

    v13.receiver = self;
    v13.super_class = SUTabBarController;
    [(SUTabBarController *)&v13 _setSelectedViewController:a3];
    if (v5 == a3 && !self->_ignoreTabReselection)
    {
      [-[SUTabBarController selectedViewController](self "selectedViewController")];
    }
  }
}

- (id)selectedViewController
{
  v5.receiver = self;
  v5.super_class = SUTabBarController;
  v3 = [(SUTabBarController *)&v5 selectedViewController];
  if (v3 == [(SUTabBarController *)self transientViewController])
  {
    return self->_preTransientSelectedViewController;
  }

  return v3;
}

- (void)setTransientViewController:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    if (!self->_preTransientSelectedViewController)
    {
      self->_preTransientSelectedViewController = [(SUTabBarController *)self selectedViewController];
    }
  }

  else
  {
    if ([(SUTabBarController *)self _isReloadingUnderneathTransientViewController:0])
    {
      return;
    }

    self->_preTransientSelectedViewController = 0;
  }

  v9.receiver = self;
  v9.super_class = SUTabBarController;
  [(SUTabBarController *)&v9 setTransientViewController:a3 animated:0];
  v6 = [(SUTabBarController *)self tabBar];
  v7 = [v6 isUserInteractionEnabled];
  if (!a3 && v7)
  {
    if (self->_preTransientSelectedViewController)
    {
      v8 = [v6 isLocked];
      [v6 setLocked:0];
      [v6 setSelectedItem:{-[UIViewController tabBarItem](self->_preTransientSelectedViewController, "tabBarItem")}];
      [v6 setLocked:v8];
    }
  }
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (self->_preTransientSelectedViewController && [a3 indexOfObjectIdenticalTo:?] == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_preTransientSelectedViewController = 0;
  }

  self->_ignoreTabReselection = 1;
  v7.receiver = self;
  v7.super_class = SUTabBarController;
  [(SUTabBarController *)&v7 setViewControllers:a3 animated:v4];
  [(SUTabBarController *)self _fixupViewControllers];
  self->_ignoreTabReselection = 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([-[SUTabBarController viewControllers](self "viewControllers")])
  {
    v3 = [(SUTabBarController *)self selectedViewController];

    return [v3 supportedInterfaceOrientations];
  }

  else if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    return 30;
  }

  else if (SUAllowsLandscapePhone())
  {
    return 26;
  }

  else
  {
    return 2;
  }
}

- (void)tabBar:(id)a3 didEndCustomizingItems:(id)a4 changed:(BOOL)a5
{
  v5 = a5;
  if ([MEMORY[0x1E69DD000] instancesRespondToSelector:a2])
  {
    v11.receiver = self;
    v11.super_class = SUTabBarController;
    [(SUTabBarController *)&v11 tabBar:a3 didEndCustomizingItems:a4 changed:v5];
  }

  if (v5)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] && -[SUPreviewOverlayViewController isViewLoaded](self->_previewOverlayViewController, "isViewLoaded"))
  {
    v9 = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];
    v10 = [(SUTabBarController *)self view];
    if ([v9 superview] != v10)
    {
      [(SUTabBarController *)self _moveView:v9 toView:v10];
    }
  }
}

- (void)tabBar:(id)a3 willEndCustomizingItems:(id)a4 changed:(BOOL)a5
{
  v5 = a5;
  if ([MEMORY[0x1E69DD000] instancesRespondToSelector:a2])
  {
    v9.receiver = self;
    v9.super_class = SUTabBarController;
    [(SUTabBarController *)&v9 tabBar:a3 willEndCustomizingItems:a4 changed:v5];
  }

  if (v5)
  {
    [(SUTabBarController *)self _fixupViewControllers];
  }
}

- (void)tabBar:(id)a3 willShowCustomizationSheet:(id)a4 withNavigationBar:(id)a5
{
  if (![objc_msgSend(MEMORY[0x1E69DC938] currentDevice])
  {
    if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
    {
      v8 = [a4 superview];
      v9 = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];
      if ([v9 superview] != v8)
      {
        [(SUTabBarController *)self _moveView:v9 toView:v8];
        [v8 insertSubview:v9 belowSubview:a4];
      }
    }
  }

  v10 = [(SUClientInterface *)self->_clientInterface appearance];

  [(SUUIAppearance *)v10 styleNavigationBar:a5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v6 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v11 + 1) + 8 * i) viewDidAppear:v3];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v6 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v11 + 1) + 8 * i) viewDidDisappear:v3];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v6 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v11 + 1) + 8 * i) viewWillAppear:v3];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v6 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v11 + 1) + 8 * i) viewWillDisappear:v3];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewWillDisappear:v3];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  [objc_msgSend(-[SUTabBarController view](self "view")];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v6 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v11 + 1) + 8 * i) didRotateFromInterfaceOrientation:a3];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
  {
    [-[SUPreviewOverlayViewController view](self->_previewOverlayViewController "view")];
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 didRotateFromInterfaceOrientation:a3];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  [objc_msgSend(-[SUTabBarController view](self "view")];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v8 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v13 + 1) + 8 * i) willAnimateRotationToInterfaceOrientation:a3 duration:a4];
      }

      v9 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = SUTabBarController;
  [(SUTabBarController *)&v12 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v8 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        [*(*(&v13 + 1) + 8 * i) willRotateToInterfaceOrientation:a3 duration:a4];
      }

      v9 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = SUTabBarController;
  [(SUTabBarController *)&v12 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (BOOL)window:(id)a3 shouldAutorotateToInterfaceOrientation:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SUTabBarController;
  v7 = [SUTabBarController window:sel_window_shouldAutorotateToInterfaceOrientation_ shouldAutorotateToInterfaceOrientation:?];
  v20.receiver = self;
  v20.super_class = SUTabBarController;
  v8 = [(SUTabBarController *)&v20 selectedViewController];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v7 = [v8 window:a3 shouldAutorotateToInterfaceOrientation:a4];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
  v11 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(overlayBackgroundViewControllers);
        }

        if (v7)
        {
          v7 = [*(*(&v16 + 1) + 8 * i) window:a3 shouldAutorotateToInterfaceOrientation:a4];
        }

        else
        {
          v7 = 0;
        }
      }

      v12 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v12);
  }

  if (v7 && [(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
  {
    [-[SUPreviewOverlayViewController view](self->_previewOverlayViewController "view")];
  }

  return v7;
}

- (void)dismissOverlayBackgroundViewController
{
  v2 = [(SUTabBarController *)self overlayBackgroundViewController];

  [v2 dismissAnimated:1];
}

- (BOOL)presentOverlayBackgroundViewController:(id)a3
{
  v5 = [(NSMutableArray *)self->_overlayBackgroundViewControllers containsObject:?];
  if ((v5 & 1) == 0)
  {
    overlayBackgroundViewControllers = self->_overlayBackgroundViewControllers;
    if (!overlayBackgroundViewControllers)
    {
      overlayBackgroundViewControllers = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_overlayBackgroundViewControllers = overlayBackgroundViewControllers;
    }

    v7 = [(NSMutableArray *)overlayBackgroundViewControllers lastObject];
    [(SUTabBarController *)self addChildViewController:a3];
    [(NSMutableArray *)self->_overlayBackgroundViewControllers addObject:a3];
    [a3 setDelegate:self];
    [v7 viewWillDisappear:0];
    [a3 viewWillAppear:0];
    v8 = [(SUTabBarController *)self view];
    v9 = [a3 view];
    [v8 bounds];
    [v9 setFrame:?];
    [v8 addSubview:v9];
    if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
    {
      [v8 bringSubviewToFront:{-[SUPreviewOverlayViewController view](self->_previewOverlayViewController, "view")}];
    }

    [a3 viewDidAppear:0];
    [v7 viewDidDisappear:0];
  }

  return v5 ^ 1;
}

- (void)scriptOverlayBackgroundDidDismiss:(id)a3
{
  v8 = [(NSMutableArray *)self->_overlayBackgroundViewControllers lastObject];
  if (v8 == a3)
  {
    v6 = [(NSMutableArray *)self->_overlayBackgroundViewControllers count];
    v5 = self;
    if (v6 >= 2)
    {
      v5 = [(NSMutableArray *)self->_overlayBackgroundViewControllers objectAtIndex:v6 - 2];
    }
  }

  else
  {
    v5 = 0;
  }

  [(SUTabBarController *)v5 viewWillAppear:0];
  v7 = a3;
  [(NSMutableArray *)self->_overlayBackgroundViewControllers removeObjectIdenticalTo:a3];
  [a3 setDelegate:0];
  [(SUTabBarController *)self removeChildViewController:a3];
  if ([a3 isViewLoaded])
  {
    [a3 viewWillDisappear:0];
    [objc_msgSend(a3 "view")];
    [a3 viewDidDisappear:0];
  }

  [(SUTabBarController *)v5 viewDidAppear:0];
}

- (unint64_t)indexOfViewControllerWithSectionType:(int64_t)a3
{
  v4 = [(SUTabBarController *)self viewControllers];
  v5 = [v4 count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([objc_msgSend(objc_msgSend(v4 objectAtIndex:{v7), "section"), "type"}] != a3)
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (NSString)selectedIdentifier
{
  v2 = [-[UITabBarController selectedNavigationController](self "selectedNavigationController")];

  return [v2 identifier];
}

- (void)setSections:(id)a3
{
  sections = self->_sections;
  if (sections != a3)
  {

    v6 = a3;
    self->_sections = v6;

    [(SUTabBarController *)self _reloadViewControllersFromSections:v6 animated:0];
  }
}

- (void)setSelectedIdentifier:(id)a3
{
  v5 = [(SUTabBarController *)self viewControllers];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndex:v8];
      v10 = [v9 section];
      if ([v10 identifier])
      {
        if ([a3 isEqualToString:{objc_msgSend(v10, "identifier")}])
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    if ([(SUTabBarController *)self selectedViewController]!= v9)
    {

      [(SUTabBarController *)self setSelectedViewController:v9];
    }
  }
}

- (id)viewControllerForSectionIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(SUTabBarController *)self viewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 section];
        if (v11 && ([objc_msgSend(v11 "identifier")] & 1) != 0)
        {
          if (v10)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v10 "viewControllers")])
            {
              return [(SUTabBarController *)self moreNavigationController];
            }
          }

          return v10;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)viewControllerForSectionType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(SUTabBarController *)self allViewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "section")] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [v9 topViewController];
  }

  return v9;
}

- (id)_timingFunctionForAnimation
{
  LODWORD(v3) = 1036831949;
  LODWORD(v2) = 0.25;
  LODWORD(v4) = 0.25;
  LODWORD(v5) = 1.0;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :v3 :v4 :v5];
}

- (void)_applicationDidChangeStatusBarFrame:(id)a3
{
  v4 = [a3 userInfo];
  [objc_msgSend(v4 objectForKey:{*MEMORY[0x1E69DDB90]), "CGRectValue"}];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  if (v8 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  v13 = v11 - v12;
  if (fabsf(v13) > 0.00000011921)
  {
    previewOverlayViewController = self->_previewOverlayViewController;
    if (previewOverlayViewController)
    {
      v15 = [-[SUPreviewOverlayViewController view](previewOverlayViewController "view")];
      if (v15 == [(SUTabBarController *)self view])
      {
        [-[SUPreviewOverlayViewController view](self->_previewOverlayViewController "view")];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22 - v13;
        v24 = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];

        [v24 setFrame:{v17, v23, v19, v21}];
      }
    }
  }
}

- (void)_partnerChanged:(id)a3
{
  v4 = [MEMORY[0x1E69DD258] transitionSafePerformer:self];

  [v4 _transitionSafeHandlePartnerChange:a3];
}

- (void)_hidePreviewOverlayAnimated:(BOOL)a3
{
  if (self->_previewOverlayViewController)
  {
    v3 = a3;
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
    {
      previewOverlayViewController = self->_previewOverlayViewController;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__SUTabBarController__hidePreviewOverlayAnimated___block_invoke;
      v9[3] = &unk_1E8164348;
      v9[4] = self;
      [(SUPreviewOverlayViewController *)previewOverlayViewController hideInViewController:self animated:v3 completionBlock:v9];
    }

    else
    {
      v6 = [(UITabBarController *)self selectedNavigationController];
      v7 = self->_previewOverlayViewController;
      if (v6)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __50__SUTabBarController__hidePreviewOverlayAnimated___block_invoke_2;
        v8[3] = &unk_1E8164348;
        v8[4] = self;
        [(SUPreviewOverlayViewController *)v7 hideInNavigationController:v6 animated:v3 completionBlock:v8];
      }

      else
      {

        self->_previewOverlayViewController = 0;
      }
    }
  }
}

- (SUPreviewOverlayViewController)_previewOverlayViewController
{
  v2 = self->_previewOverlayViewController;

  return v2;
}

- (void)_setStoreBarStyle:(int64_t)a3
{
  if (self->_storeBarStyle != a3)
  {
    self->_storeBarStyle = a3;
    if (a3 == 1)
    {
      v4 = [(SUClientInterface *)self->_clientInterface lightKeyColor];
      v5 = 10060;
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v4 = [(SUClientInterface *)self->_clientInterface darkKeyColor];
      v5 = 11050;
    }

    [(SUNavigationBarBackgroundView *)self->_tabBarBackdropView setBackdropStyle:v5];
    if (v4)
    {
      v6 = [(SUTabBarController *)self tabBar];

      [v6 setInteractionTintColor:v4];
    }
  }
}

- (void)_showPreviewOverlay:(id)a3 animated:(BOOL)a4
{
  previewOverlayViewController = self->_previewOverlayViewController;
  if (previewOverlayViewController != a3)
  {
    v6 = a4;
    if (previewOverlayViewController)
    {
      if ([(SUPreviewOverlayViewController *)previewOverlayViewController isViewLoaded])
      {
        [-[SUPreviewOverlayViewController view](self->_previewOverlayViewController "view")];
      }

      [(SUPreviewOverlayViewController *)self->_previewOverlayViewController removeFromParentViewController];
      v8 = self->_previewOverlayViewController;
    }

    else
    {
      v8 = 0;
    }

    v9 = a3;
    self->_previewOverlayViewController = v9;
    if (v9)
    {
      if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
      {
        v10 = self->_previewOverlayViewController;

        [(SUPreviewOverlayViewController *)v10 showInViewController:self animated:v6 completionBlock:0];
      }

      else
      {
        v11 = [(UITabBarController *)self selectedNavigationController];
        if (v11)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __51__SUTabBarController__showPreviewOverlay_animated___block_invoke;
          v12[3] = &unk_1E8164370;
          v12[4] = self;
          v12[5] = a3;
          [a3 showInNavigationController:v11 animated:v6 completionBlock:v12];
        }
      }
    }
  }
}

uint64_t __51__SUTabBarController__showPreviewOverlay_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) view];
  v4 = [*(a1 + 32) view];

  return [v2 _moveView:v3 toView:v4];
}

- (void)_applyMoreListConfiguration
{
  v3 = [-[SUTabBarController moreNavigationController](self "moreNavigationController")];
  v4 = v3;
  if (self->_moreListTitle)
  {
    [v3 setTitle:?];
  }

  v5 = _UIApplicationUsesLegacyUI();
  moreListSelectedImage = self->_moreListSelectedImage;
  if (v5)
  {
    if (moreListSelectedImage)
    {
      v7 = [v4 tabBarItem];
      v8 = self->_moreListSelectedImage;
      moreListUnselectedImage = self->_moreListUnselectedImage;

      [v7 setFinishedSelectedImage:v8 withFinishedUnselectedImage:moreListUnselectedImage];
      return;
    }
  }

  else if (moreListSelectedImage)
  {
    [objc_msgSend(v4 "tabBarItem")];
  }

  if (self->_moreListUnselectedImage)
  {
    v10 = [v4 tabBarItem];
    v11 = [(UIImage *)self->_moreListUnselectedImage _imageThatSuppressesAccessibilityHairlineThickening];

    [v10 setImage:v11];
  }
}

- (id)_archivedContextsForViewController:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 viewControllers];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];
  }

  v6 = v5;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) copyArchivableContext];
        if (v11)
        {
          v12 = v11;
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  v22 = 0;
  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v22];
  if (v22)
  {
    v14 = [MEMORY[0x1E69D4938] sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v27 = 138543618;
      v28 = v17;
      v29 = 2114;
      v30 = v22;
      LODWORD(v21) = 22;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v27, v21}];
        free(v19);
        SSFileLog();
      }
    }
  }

  return v13;
}

- (void)_beginReloadingUnderneathTransientViewController
{
  if ([(SUTabBarController *)self transientViewController])
  {
    ++self->_reloadingUnderneathTransientControllerCount;
  }
}

- (void)_endReloadingUnderneathTransientViewController
{
  reloadingUnderneathTransientControllerCount = self->_reloadingUnderneathTransientControllerCount;
  v3 = reloadingUnderneathTransientControllerCount < 1;
  v4 = reloadingUnderneathTransientControllerCount - 1;
  if (!v3)
  {
    self->_reloadingUnderneathTransientControllerCount = v4;
  }
}

- (void)_fixupTabBarSelection
{
  v3 = [(SUTabBarController *)self tabBar];
  v4 = [v3 items];
  v5 = [(SUTabBarController *)self selectedIndex];
  if (v5 < [v4 count] && !-[SUTabBarController _isReloadingUnderneathTransientViewController](self, "_isReloadingUnderneathTransientViewController"))
  {
    v6 = [v3 isLocked];
    [v3 setLocked:0];
    [v3 setSelectedItem:{objc_msgSend(v4, "objectAtIndex:", -[SUTabBarController selectedIndex](self, "selectedIndex"))}];

    [v3 setLocked:v6];
  }
}

- (void)_fixupViewControllers
{
  v3 = [MEMORY[0x1E69DCCD8] transitionSafetyDelegate];
  v4 = [(SUTabBarController *)self moreNavigationController];
  v5 = [-[SUTabBarController allViewControllers](self "allViewControllers")];
  v6 = [v5 indexOfObjectIdenticalTo:v4];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      if (v10 != v4 && i > v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 viewControllers];
          if ([v11 count] >= 2)
          {
            [v10 setViewControllers:{objc_msgSend(v11, "subarrayWithRange:", 0, 1)}];
          }
        }
      }

      [v10 setDelegate:v3];
    }
  }

  [(SUTabBarController *)self _applyMoreListConfiguration];
}

- (void)_longPressAction:(id)a3
{
  v6 = [a3 view];
  [a3 removeTarget:self action:a2];
  [v6 removeGestureRecognizer:a3];
  [-[SUTabBarController selectedViewController](self "selectedViewController")];
  v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:a2];
  [v6 addGestureRecognizer:v7];
}

- (void)_moveTransientViewController:(id)a3 toSectionWithIdentifier:(id)a4 asRoot:(BOOL)a5
{
  if ([(SUTabBarController *)self viewControllerForSectionIdentifier:a4])
  {
    v8 = [(SUTabBarController *)self transientViewController];
    v9 = a3;
    for (i = a3 != 0; v9 && v9 != v8; i = v9 != 0)
    {
      v9 = [v9 parentViewController];
    }

    if (i)
    {
      v18 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v18 topViewController];
      }

      else
      {
        v11 = v18;
      }

      v19 = v11;
      v12 = v11;
      [(SUTabBarController *)self setSelectedIdentifier:a4];
      [(SUTabBarController *)self setTransientViewController:0];
      v13 = [(UITabBarController *)self selectedNavigationController];
      v14 = v13;
      if (a5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SUTabBarController *)self _sectionForIdentifier:a4];
          [v19 setSection:v15];
          [objc_msgSend(v19 "_existingTabBarItem")];
        }

        if (v14 == [(SUTabBarController *)self moreNavigationController])
        {
          v16 = [objc_msgSend(v14 "viewControllers")];
          if ([v16 count] >= 2)
          {
            [v16 removeObjectsInRange:{1, objc_msgSend(v16, "count") - 1}];
          }

          [v16 addObject:v19];
          [v14 setViewControllers:v16];
        }

        else
        {
          [v14 setViewControllers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v19)}];
        }
      }

      else
      {
        [v13 pushViewController:v19 animated:0];
      }
    }
  }
}

- (void)_moveView:(id)a3 toView:(id)a4
{
  [a3 frame];
  [a4 convertRect:objc_msgSend(a3 fromView:{"superview"), v6, v7, v8, v9}];
  [a3 setFrame:?];

  [a4 addSubview:a3];
}

- (void)_reloadViewControllersFromSections:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = [-[SUTabBarController viewControllers](self "viewControllers")];
  v8 = [v35 count];
  v9 = [(SUTabBarController *)self moreNavigationController];
  v28 = v4;
  v25 = v9;
  v27 = v8;
  if (v9)
  {
    v29 = [-[SUTabBarController allViewControllers](self "allViewControllers")];
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = [(SUTabBarController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
  }

  v34 = [+[SUNetworkObserver sharedInstance](SUNetworkObserver partnerIdentifier];
  v11 = [a3 count];
  if (v11 >= 1)
  {
    v12 = v11;
    v31 = 0;
    v32 = a3;
    v13 = 0;
    v33 = v10;
    do
    {
      v14 = [a3 objectAtIndex:v13];
      v15 = [v14 partnerHeader];
      if ((!v15 || -[NSString isEqualToString:](v34, "isEqualToString:", v15)) && (!v10 || [v10 tabBarController:self shouldShowSection:v14]))
      {
        v16 = v7;
        v17 = [v35 count];
        if (v17 < 1)
        {
          goto LABEL_17;
        }

        v18 = v17;
        v19 = 0;
        while (1)
        {
          v20 = [v35 objectAtIndex:v19];
          if ([objc_msgSend(v14 "identifier")])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          if (v18 == ++v19)
          {
            goto LABEL_17;
          }
        }

        if (v29 != 0x7FFFFFFFFFFFFFFFLL && v13 < v29 && ![objc_msgSend(v20 "viewControllers")])
        {
          v22 = [v26 popToRootViewControllerAnimated:0];
          [objc_msgSend(v26 "view")];
          [v20 setViewControllers:v22];
        }

        v21 = v20;
        [v35 removeObjectAtIndex:v19];
        if (!v21)
        {
LABEL_17:
          v21 = [[SUNavigationController alloc] initWithSection:v14 rootViewController:[(SUTabBarController *)self _rootViewControllerForSection:v14]];
          [(SUNavigationController *)v21 setClientInterface:self->_clientInterface];
        }

        v7 = v16;
        if ([v14 isTransient])
        {
          [v16 insertObject:v21 atIndex:v31++];
        }

        else
        {
          [v16 addObject:v21];
          [v30 addObject:v21];
        }

        a3 = v32;
        v10 = v33;
      }

      ++v13;
    }

    while (v13 != v12);
  }

  if (![v7 count])
  {
    v23 = [(SUViewControllerFactory *)[(SUClientInterface *)self->_clientInterface viewControllerFactory] newPlaceholderViewController];
    [v23 setClientInterface:self->_clientInterface];
    v24 = [[SUNavigationController alloc] initWithRootViewController:v23];
    [(SUNavigationController *)v24 setClientInterface:self->_clientInterface];
    [v7 addObject:v24];
  }

  [(SUTabBarController *)self setViewControllers:v7 animated:v28];
  [(SUTabBarController *)self setCustomizableViewControllers:v30];
  if (v27 >= 1)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if ([v7 count] == 1)
  {
    [(SUTabBarController *)self hideBarWithTransition:0];
  }

  else
  {
    [(SUTabBarController *)self showBarWithTransition:0];
  }
}

- (void)_restoreArchivedContexts:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = [a3 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 sectionIdentifier];
  if (v6 && !v7)
  {
    v8 = [(SUTabBarController *)self moreNavigationController];
    if (v8)
    {
      v9 = v8;
      if ([-[SUTabBarController allViewControllers](self "allViewControllers")] != 0x7FFFFFFFFFFFFFFFLL)
      {

        [(SUTabBarController *)self setSelectedViewController:v9];
      }
    }

    return;
  }

  if (!v7)
  {
    return;
  }

  [(SUTabBarController *)self setSelectedIdentifier:v7];
  v10 = [(UITabBarController *)self selectedNavigationController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v11 = [v10 viewControllers];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [v10 firstViewController];
  if (v10 != [(SUTabBarController *)self moreNavigationController])
  {
    v13 = 1;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  [v15 addObject:v12];
  if ([v11 count] < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v11 objectAtIndex:1];
  }

  if ([a3 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a3 objectAtIndex:1];
  }

  v13 = 2;
  if (v12)
  {
LABEL_15:
    [v12 restoreArchivableContext:v6];
    [v15 addObject:v12];
  }

LABEL_16:
  if (v13 < v5)
  {
    while (v5 - 1 != v13 || !self->_preloadedViewController || ![(NSString *)self->_preloadedViewControllerKey isEqualToString:@"SUSectionNavigationPath"])
    {
      v14 = -[SUTabBarController _viewControllerForContext:](self, "_viewControllerForContext:", [a3 objectAtIndex:v13]);
      if (v14)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v5 == ++v13)
      {
        goto LABEL_25;
      }
    }

    v14 = self->_preloadedViewController;

    self->_preloadedViewController = 0;
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    [v15 addObject:v14];
    goto LABEL_24;
  }

LABEL_25:
  [v10 setViewControllers:v15];
}

- (void)_restoreOverlayContexts:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) copyViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUTabBarController *)self presentOverlayBackgroundViewController:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_restoreArchivedTransientContexts:(id)a3
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a3 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [a3 objectAtIndex:v5];
      if (v5 == [a3 count] - 1 && self->_preloadedViewController && -[NSString isEqualToString:](self->_preloadedViewControllerKey, "isEqualToString:", @"SUTransientNavigationPath"))
      {
        break;
      }

      v7 = [(SUTabBarController *)self _viewControllerForContext:v6];
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (++v5 >= [a3 count])
      {
        goto LABEL_11;
      }
    }

    v7 = self->_preloadedViewController;

    self->_preloadedViewController = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v9 addObject:v7];
    goto LABEL_10;
  }

LABEL_11:
  if ([v9 count])
  {
    v8 = -[SUNavigationController initWithSection:]([SUNavigationController alloc], "initWithSection:", [-[UITabBarController selectedNavigationController](self "selectedNavigationController")]);
    [(SUNavigationController *)v8 setClientInterface:self->_clientInterface];
    [(SUNavigationController *)v8 setViewControllers:v9];
    [(SUTabBarController *)self setTransientViewController:v8 animated:0];
  }
}

- (id)_rootViewControllerForSection:(id)a3
{
  if (-[NSString isEqualToString:](self->_preloadedViewControllerIdentifier, "isEqualToString:", [a3 identifier]) && (preloadedViewController = self->_preloadedViewController) != 0)
  {
    v6 = preloadedViewController;

    self->_preloadedViewController = 0;
    return v6;
  }

  else
  {
    v8 = [(SUTabBarController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 tabBarController:self rootViewControllerForSection:a3];
    }

    else
    {
      v9 = [(SUViewControllerFactory *)[(SUClientInterface *)self->_clientInterface viewControllerFactory] newStorePageViewControllerWithSection:a3];
    }

    v10 = v9;
    if (![v9 clientInterface])
    {
      [v10 setClientInterface:self->_clientInterface];
    }

    [v10 setTitle:{objc_msgSend(a3, "title")}];
    return v10;
  }
}

- (BOOL)_saveNavigationPathToDefaults
{
  v2 = [(SUTabBarController *)self _archivedContextsForViewController:[(UITabBarController *)self selectedNavigationController]];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  }

  return 1;
}

- (BOOL)_saveTransientNavigationPathToDefaults
{
  v3 = [(SUTabBarController *)self transientViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SUTabBarController *)self _archivedContextsForViewController:v3];
  }

  else
  {
    v4 = 0;
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  return 1;
}

- (id)_sectionForIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sections = self->_sections;
  v5 = [(NSArray *)sections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(sections);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "identifier")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)sections countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_sectionForType:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sections = self->_sections;
  v5 = [(NSArray *)sections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(sections);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 type] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)sections countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_transitionSafeHandlePartnerChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_sections count])
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = [a3 object];
      LODWORD(v12) = 22;
      v11 = &v13;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v13, v12}];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    [(SUTabBarController *)self _beginReloadingUnderneathTransientViewController];
    [(SUTabBarController *)self _reloadViewControllersFromSections:self->_sections animated:1];
    [(SUTabBarController *)self _endReloadingUnderneathTransientViewController];
  }
}

- (id)_viewControllerForContext:(id)a3
{
  v5 = [(SUTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 tabBarController:self viewControllerForContext:a3];
    if (![v6 clientInterface])
    {
      [v6 setClientInterface:self->_clientInterface];
    }
  }

  else
  {
    v6 = [a3 copyViewController];
    [v6 setClientInterface:self->_clientInterface];
    [v6 restoreArchivableContext:a3];
  }

  return v6;
}

@end