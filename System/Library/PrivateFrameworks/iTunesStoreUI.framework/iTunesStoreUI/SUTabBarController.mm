@interface SUTabBarController
- (BOOL)_saveNavigationPathToDefaults;
- (BOOL)_saveTransientNavigationPathToDefaults;
- (BOOL)loadFromDefaults;
- (BOOL)loadFromDefaultsAndSetSections:(id)sections;
- (BOOL)presentOverlayBackgroundViewController:(id)controller;
- (BOOL)saveOrderingToDefaults;
- (BOOL)saveToDefaults;
- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (NSString)selectedIdentifier;
- (SUPreviewOverlayViewController)_previewOverlayViewController;
- (SUTabBarController)init;
- (SUTabBarController)initWithClientInterface:(id)interface;
- (id)_archivedContextsForViewController:(id)controller;
- (id)_rootViewControllerForSection:(id)section;
- (id)_sectionForIdentifier:(id)identifier;
- (id)_sectionForType:(int64_t)type;
- (id)_sectionForViewController:(id)controller;
- (id)_timingFunctionForAnimation;
- (id)_viewControllerForContext:(id)context;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (id)selectedViewController;
- (id)viewControllerForSectionIdentifier:(id)identifier;
- (id)viewControllerForSectionType:(int64_t)type;
- (unint64_t)indexOfViewControllerWithSectionType:(int64_t)type;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidChangeStatusBarFrame:(id)frame;
- (void)_applyMoreListConfiguration;
- (void)_beginReloadingUnderneathTransientViewController;
- (void)_endReloadingUnderneathTransientViewController;
- (void)_fixupTabBarSelection;
- (void)_fixupViewControllers;
- (void)_hidePreviewOverlayAnimated:(BOOL)animated;
- (void)_longPressAction:(id)action;
- (void)_moveTransientViewController:(id)controller toSectionWithIdentifier:(id)identifier asRoot:(BOOL)root;
- (void)_moveView:(id)view toView:(id)toView;
- (void)_partnerChanged:(id)changed;
- (void)_reloadViewControllersFromSections:(id)sections animated:(BOOL)animated;
- (void)_restoreArchivedContexts:(id)contexts;
- (void)_restoreArchivedTransientContexts:(id)contexts;
- (void)_restoreOverlayContexts:(id)contexts;
- (void)_setSelectedViewController:(id)controller;
- (void)_setStoreBarStyle:(int64_t)style;
- (void)_showPreviewOverlay:(id)overlay animated:(BOOL)animated;
- (void)_transitionSafeHandlePartnerChange:(id)change;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)dismissOverlayBackgroundViewController;
- (void)loadView;
- (void)reloadSectionWithIdentifier:(id)identifier URL:(id)l;
- (void)resetToSystemDefaults;
- (void)resetUserDefaults;
- (void)scriptOverlayBackgroundDidDismiss:(id)dismiss;
- (void)selectDefaultSection;
- (void)selectSectionOfType:(int64_t)type;
- (void)setMoreListSelectedImage:(id)image unselectedImage:(id)unselectedImage;
- (void)setMoreListTitle:(id)title;
- (void)setSectionOrdering:(id)ordering;
- (void)setSections:(id)sections;
- (void)setSelectedIdentifier:(id)identifier;
- (void)setTransientViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)tabBar:(id)bar didEndCustomizingItems:(id)items changed:(BOOL)changed;
- (void)tabBar:(id)bar willEndCustomizingItems:(id)items changed:(BOOL)changed;
- (void)tabBar:(id)bar willShowCustomizationSheet:(id)sheet withNavigationBar:(id)navigationBar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SUTabBarController

- (SUTabBarController)init
{
  v3 = +[SUClientDispatch clientInterface];

  return [(SUTabBarController *)self initWithClientInterface:v3];
}

- (SUTabBarController)initWithClientInterface:(id)interface
{
  v14.receiver = self;
  v14.super_class = SUTabBarController;
  v4 = [(SUTabBarController *)&v14 init];
  if (v4)
  {
    v4->_clientInterface = interface;
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
    {
      [(SUTabBarController *)v4 _setMaximumNumberOfItems:9];
    }

    tabBar = [(SUTabBarController *)v4 tabBar];
    tabBarAppearance = [(SUUIAppearance *)[(SUClientInterface *)v4->_clientInterface appearance] tabBarAppearance];
    if (tabBarAppearance)
    {
      v7 = tabBarAppearance;
      [tabBar setBackgroundImage:{-[SUTabBarAppearance backgroundImage](tabBarAppearance, "backgroundImage")}];
      [tabBar _setSelectionIndicatorImage:{-[SUTabBarAppearance selectionIndicatorImage](v7, "selectionIndicatorImage")}];
      [(SUTabBarAppearance *)v7 tabBarButtonWidth];
      if (v8 > 0.00000011920929)
      {
        [tabBar _setTabButtonWidth:?];
        [(SUTabBarAppearance *)v7 tabBarButtonSpacing];
        [tabBar _setInterTabButtonSpacing:?];
      }

      if (([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG] & 1) == 0)
      {
        dividerImage = [(SUTabBarAppearance *)v7 dividerImage];
        selectedDividerImage = [(SUTabBarAppearance *)v7 selectedDividerImage];
        [tabBar _setDividerImage:dividerImage forLeftButtonState:0 rightButtonState:0];
        [tabBar _setDividerImage:selectedDividerImage forLeftButtonState:1 rightButtonState:0];
      }
    }

    else
    {
      v11 = objc_alloc_init(SUNavigationBarBackgroundView);
      v4->_tabBarBackdropView = v11;
      [(SUNavigationBarBackgroundView *)v11 setSeparatorOnTop:1];
      [tabBar _setBackgroundView:v4->_tabBarBackdropView];
      [tabBar setTranslucent:1];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__applicationDidChangeStatusBarFrame_ name:*MEMORY[0x1E69DDAB8] object:0];
    [defaultCenter addObserver:v4 selector:sel__partnerChanged_ name:@"SUPartnerChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAB8] object:0];
  [defaultCenter removeObserver:self name:@"SUPartnerChangedNotification" object:0];
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

- (BOOL)loadFromDefaultsAndSetSections:(id)sections
{
  v62 = *MEMORY[0x1E69E9840];

  self->_preloadedViewController = 0;
  self->_preloadedViewControllerIdentifier = 0;
  self->_preloadedViewControllerKey = 0;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"ISURLRequest"];
  v6 = [standardUserDefaults objectForKey:@"SUTransientNavigationPath"];
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
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_ERROR))
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
    v18 = [standardUserDefaults objectForKey:@"SUSectionNavigationPath"];
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
        mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
        if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
        {
          v24 = shouldLog2 | 2;
        }

        else
        {
          v24 = shouldLog2;
        }

        if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_ERROR))
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
          v35 = [sections countByEnumeratingWithState:&v46 objects:v55 count:16];
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
                  objc_enumerationMutation(sections);
                }

                v40 = *(*(&v46 + 1) + 8 * j);
                if ([objc_msgSend(v40 "identifier")])
                {
                  v37 = v40;
                }
              }

              v36 = [sections countByEnumeratingWithState:&v46 objects:v55 count:16];
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
    loadsWhenHidden = [(SUViewController *)preloadedViewController loadsWhenHidden];
    [(SUViewController *)preloadedViewController setLoadsWhenHidden:1];
    [(SUViewController *)preloadedViewController reload];
    [(SUViewController *)preloadedViewController setLoadsWhenHidden:loadsWhenHidden];
  }

  [(SUTabBarController *)self setSections:sections, v44];
  [(SUTabBarController *)self loadFromDefaults];

  self->_preloadedViewController = 0;
  self->_preloadedViewControllerIdentifier = 0;
  self->_preloadedViewControllerKey = 0;
  return 1;
}

- (BOOL)loadFromDefaults
{
  v50[2] = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"ISURLRequest"];
  v4 = [standardUserDefaults objectForKey:@"SURootSections"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUTabBarController *)self setSectionOrdering:v4];
  }

  v5 = [standardUserDefaults objectForKey:@"SUSectionNavigationPath"];
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
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_ERROR))
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

  v16 = [standardUserDefaults objectForKey:{@"SUOverlayContexts", v39}];
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
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        v22 = shouldLog2 | 2;
      }

      else
      {
        v22 = shouldLog2;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_ERROR))
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

  v27 = [standardUserDefaults objectForKey:@"SUTransientNavigationPath"];
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
      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
      if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
      {
        v33 = shouldLog3 | 2;
      }

      else
      {
        v33 = shouldLog3;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_ERROR))
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

- (void)reloadSectionWithIdentifier:(id)identifier URL:(id)l
{
  [(SUTabBarController *)self setSelectedIdentifier:identifier];
  selectedNavigationController = [(UITabBarController *)self selectedNavigationController];
  if (selectedNavigationController == [(SUTabBarController *)self moreNavigationController])
  {
    viewControllers = [selectedNavigationController viewControllers];
    if ([viewControllers count] >= 3)
    {
      [selectedNavigationController popToViewController:objc_msgSend(viewControllers animated:{"objectAtIndex:", 1), 0}];
    }
  }

  else
  {
    [selectedNavigationController popToRootViewControllerAnimated:0];
  }

  v8 = [objc_msgSend(selectedNavigationController "viewControllers")];
  if (l && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:l];
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
  selectedNavigationController = [(UITabBarController *)self selectedNavigationController];

  [selectedNavigationController popToRootViewControllerAnimated:0];
}

- (void)resetUserDefaults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"SUNavigationAccountID"];
  [standardUserDefaults removeObjectForKey:@"SURootSections"];
  [standardUserDefaults removeObjectForKey:@"SUSectionNavigationPath"];
  [standardUserDefaults removeObjectForKey:@"SUTransientNavigationPath"];

  [standardUserDefaults synchronize];
}

- (BOOL)saveOrderingToDefaults
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  viewControllers = [(SUTabBarController *)self viewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        section = [*(*(&v11 + 1) + 8 * v8) section];
        if (([section isTransient] & 1) == 0 && objc_msgSend(section, "identifier"))
        {
          [v3 addObject:{objc_msgSend(section, "identifier")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];

  return 1;
}

- (BOOL)saveToDefaults
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (v3)
  {
    [standardUserDefaults setObject:v3 forKey:@"SUNavigationAccountID"];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:@"SUNavigationAccountID"];
  }

  if (![(SUTabBarController *)self saveOrderingToDefaults]|| ![(SUTabBarController *)self _saveNavigationPathToDefaults]|| ![(SUTabBarController *)self _saveTransientNavigationPathToDefaults])
  {
    return 0;
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];

  return [standardUserDefaults2 synchronize];
}

- (void)selectDefaultSection
{
  v15 = *MEMORY[0x1E69E9840];
  viewControllers = [(SUTabBarController *)self viewControllers];
  if ([viewControllers count])
  {
    v4 = [viewControllers objectAtIndex:0];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(viewControllers);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([objc_msgSend(v9 "section")])
          {
            v4 = v9;
            goto LABEL_12;
          }
        }

        v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)selectSectionOfType:(int64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  viewControllers = [(SUTabBarController *)self viewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        section = [*(*(&v12 + 1) + 8 * i) section];
        if ([section type] == type)
        {
          identifier = [section identifier];
          if (identifier)
          {
            [(SUTabBarController *)self setSelectedIdentifier:identifier];
          }

          return;
        }
      }

      v7 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)setMoreListSelectedImage:(id)image unselectedImage:(id)unselectedImage
{
  moreListSelectedImage = self->_moreListSelectedImage;
  if (moreListSelectedImage == image)
  {
    p_moreListUnselectedImage = &self->_moreListUnselectedImage;
    moreListUnselectedImage = self->_moreListUnselectedImage;
    if (moreListUnselectedImage == unselectedImage)
    {
      return;
    }
  }

  else
  {

    self->_moreListSelectedImage = image;
    p_moreListUnselectedImage = &self->_moreListUnselectedImage;
    moreListUnselectedImage = self->_moreListUnselectedImage;
    if (moreListUnselectedImage == unselectedImage)
    {
      goto LABEL_6;
    }
  }

  *p_moreListUnselectedImage = unselectedImage;
LABEL_6:

  [(SUTabBarController *)self _applyMoreListConfiguration];
}

- (void)setMoreListTitle:(id)title
{
  moreListTitle = self->_moreListTitle;
  if (moreListTitle != title)
  {

    self->_moreListTitle = title;

    [(SUTabBarController *)self _applyMoreListConfiguration];
  }
}

- (void)setSectionOrdering:(id)ordering
{
  v36 = *MEMORY[0x1E69E9840];
  selectedIdentifier = [(SUTabBarController *)self selectedIdentifier];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v6 = [-[SUTabBarController viewControllers](self "viewControllers")];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = ordering;
  v7 = [ordering countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            section = [v15 section];
            if ([section identifier])
            {
              if ([objc_msgSend(section "identifier")])
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

  [(SUTabBarController *)selfCopy setViewControllers:v5];
  [(SUTabBarController *)selfCopy setSelectedIdentifier:selectedIdentifier];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SUTabBarController;
  [(SUTabBarController *)&v7 loadView];
  view = [(SUTabBarController *)self view];
  v4 = [SUHitTestView alloc];
  [view frame];
  v5 = [(SUHitTestView *)v4 initWithFrame:?];
  -[SUHitTestView setAutoresizingMask:](v5, "setAutoresizingMask:", [view autoresizingMask]);
  [(SUHitTestView *)v5 bounds];
  [view setFrame:?];
  [(SUHitTestView *)v5 addSubview:view];
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

- (id)_sectionForViewController:(id)controller
{
  v17 = *MEMORY[0x1E69E9840];
  moreNavigationController = [(SUTabBarController *)self moreNavigationController];
  if (moreNavigationController != controller || [objc_msgSend(moreNavigationController "viewControllers")] < 2)
  {
    return 0;
  }

  viewControllers = [(SUTabBarController *)self viewControllers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![objc_msgSend(v11 "viewControllers")])
        {
          return [v11 section];
        }
      }

      v8 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_setSelectedViewController:(id)controller
{
  if ([(SUTabBarController *)self _isReloadingUnderneathTransientViewController])
  {
    self->_preTransientSelectedViewController = controller;
  }

  else
  {
    selectedViewController = [(SUTabBarController *)self selectedViewController];
    transientViewController = [(SUTabBarController *)self transientViewController];
    if (transientViewController && transientViewController != controller)
    {
      self->_preTransientSelectedViewController = controller;
    }

    if (selectedViewController)
    {
      if (selectedViewController != controller)
      {
        iTunesStoreUIBarStyle = [controller ITunesStoreUIBarStyle];
        if (iTunesStoreUIBarStyle != self->_storeBarStyle)
        {
          v8 = iTunesStoreUIBarStyle;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            controllerCopy = controller;
          }

          else
          {
            controllerCopy = 0;
          }

          [controllerCopy _setStoreBarStyle:v8 clientInterface:self->_clientInterface];
          [(SUTabBarController *)self _setStoreBarStyle:v8];
          mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
          statusBarStyle = [mEMORY[0x1E69DC668] statusBarStyle];
          if (v8 == 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = statusBarStyle;
            if (v8 == 2)
            {
              v12 = 1;
            }
          }

          [mEMORY[0x1E69DC668] setStatusBarStyle:v12 animated:0];
        }
      }
    }

    v13.receiver = self;
    v13.super_class = SUTabBarController;
    [(SUTabBarController *)&v13 _setSelectedViewController:controller];
    if (selectedViewController == controller && !self->_ignoreTabReselection)
    {
      [-[SUTabBarController selectedViewController](self "selectedViewController")];
    }
  }
}

- (id)selectedViewController
{
  v5.receiver = self;
  v5.super_class = SUTabBarController;
  selectedViewController = [(SUTabBarController *)&v5 selectedViewController];
  if (selectedViewController == [(SUTabBarController *)self transientViewController])
  {
    return self->_preTransientSelectedViewController;
  }

  return selectedViewController;
}

- (void)setTransientViewController:(id)controller animated:(BOOL)animated
{
  if (controller)
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
  [(SUTabBarController *)&v9 setTransientViewController:controller animated:0];
  tabBar = [(SUTabBarController *)self tabBar];
  isUserInteractionEnabled = [tabBar isUserInteractionEnabled];
  if (!controller && isUserInteractionEnabled)
  {
    if (self->_preTransientSelectedViewController)
    {
      isLocked = [tabBar isLocked];
      [tabBar setLocked:0];
      [tabBar setSelectedItem:{-[UIViewController tabBarItem](self->_preTransientSelectedViewController, "tabBarItem")}];
      [tabBar setLocked:isLocked];
    }
  }
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_preTransientSelectedViewController && [controllers indexOfObjectIdenticalTo:?] == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_preTransientSelectedViewController = 0;
  }

  self->_ignoreTabReselection = 1;
  v7.receiver = self;
  v7.super_class = SUTabBarController;
  [(SUTabBarController *)&v7 setViewControllers:controllers animated:animatedCopy];
  [(SUTabBarController *)self _fixupViewControllers];
  self->_ignoreTabReselection = 0;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([-[SUTabBarController viewControllers](self "viewControllers")])
  {
    selectedViewController = [(SUTabBarController *)self selectedViewController];

    return [selectedViewController supportedInterfaceOrientations];
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

- (void)tabBar:(id)bar didEndCustomizingItems:(id)items changed:(BOOL)changed
{
  changedCopy = changed;
  if ([MEMORY[0x1E69DD000] instancesRespondToSelector:a2])
  {
    v11.receiver = self;
    v11.super_class = SUTabBarController;
    [(SUTabBarController *)&v11 tabBar:bar didEndCustomizingItems:items changed:changedCopy];
  }

  if (changedCopy)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] && -[SUPreviewOverlayViewController isViewLoaded](self->_previewOverlayViewController, "isViewLoaded"))
  {
    view = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];
    view2 = [(SUTabBarController *)self view];
    if ([view superview] != view2)
    {
      [(SUTabBarController *)self _moveView:view toView:view2];
    }
  }
}

- (void)tabBar:(id)bar willEndCustomizingItems:(id)items changed:(BOOL)changed
{
  changedCopy = changed;
  if ([MEMORY[0x1E69DD000] instancesRespondToSelector:a2])
  {
    v9.receiver = self;
    v9.super_class = SUTabBarController;
    [(SUTabBarController *)&v9 tabBar:bar willEndCustomizingItems:items changed:changedCopy];
  }

  if (changedCopy)
  {
    [(SUTabBarController *)self _fixupViewControllers];
  }
}

- (void)tabBar:(id)bar willShowCustomizationSheet:(id)sheet withNavigationBar:(id)navigationBar
{
  if (![objc_msgSend(MEMORY[0x1E69DC938] currentDevice])
  {
    if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
    {
      superview = [sheet superview];
      view = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];
      if ([view superview] != superview)
      {
        [(SUTabBarController *)self _moveView:view toView:superview];
        [superview insertSubview:view belowSubview:sheet];
      }
    }
  }

  appearance = [(SUClientInterface *)self->_clientInterface appearance];

  [(SUUIAppearance *)appearance styleNavigationBar:navigationBar];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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

        [*(*(&v11 + 1) + 8 * i) viewDidAppear:appearCopy];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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

        [*(*(&v11 + 1) + 8 * i) viewDidDisappear:disappearCopy];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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

        [*(*(&v11 + 1) + 8 * i) viewWillAppear:appearCopy];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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

        [*(*(&v11 + 1) + 8 * i) viewWillDisappear:disappearCopy];
      }

      v7 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUTabBarController;
  [(SUTabBarController *)&v10 viewWillDisappear:disappearCopy];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
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

        [*(*(&v11 + 1) + 8 * i) didRotateFromInterfaceOrientation:orientation];
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
  [(SUTabBarController *)&v10 didRotateFromInterfaceOrientation:orientation];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
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

        [*(*(&v13 + 1) + 8 * i) willAnimateRotationToInterfaceOrientation:orientation duration:duration];
      }

      v9 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = SUTabBarController;
  [(SUTabBarController *)&v12 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
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

        [*(*(&v13 + 1) + 8 * i) willRotateToInterfaceOrientation:orientation duration:duration];
      }

      v9 = [(NSMutableArray *)overlayBackgroundViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = SUTabBarController;
  [(SUTabBarController *)&v12 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SUTabBarController;
  v7 = [SUTabBarController window:sel_window_shouldAutorotateToInterfaceOrientation_ shouldAutorotateToInterfaceOrientation:?];
  v20.receiver = self;
  v20.super_class = SUTabBarController;
  selectedViewController = [(SUTabBarController *)&v20 selectedViewController];
  if (v7)
  {
    v9 = selectedViewController == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v7 = [selectedViewController window:window shouldAutorotateToInterfaceOrientation:orientation];
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
          v7 = [*(*(&v16 + 1) + 8 * i) window:window shouldAutorotateToInterfaceOrientation:orientation];
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
  overlayBackgroundViewController = [(SUTabBarController *)self overlayBackgroundViewController];

  [overlayBackgroundViewController dismissAnimated:1];
}

- (BOOL)presentOverlayBackgroundViewController:(id)controller
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

    lastObject = [(NSMutableArray *)overlayBackgroundViewControllers lastObject];
    [(SUTabBarController *)self addChildViewController:controller];
    [(NSMutableArray *)self->_overlayBackgroundViewControllers addObject:controller];
    [controller setDelegate:self];
    [lastObject viewWillDisappear:0];
    [controller viewWillAppear:0];
    view = [(SUTabBarController *)self view];
    view2 = [controller view];
    [view bounds];
    [view2 setFrame:?];
    [view addSubview:view2];
    if ([(SUPreviewOverlayViewController *)self->_previewOverlayViewController isViewLoaded])
    {
      [view bringSubviewToFront:{-[SUPreviewOverlayViewController view](self->_previewOverlayViewController, "view")}];
    }

    [controller viewDidAppear:0];
    [lastObject viewDidDisappear:0];
  }

  return v5 ^ 1;
}

- (void)scriptOverlayBackgroundDidDismiss:(id)dismiss
{
  lastObject = [(NSMutableArray *)self->_overlayBackgroundViewControllers lastObject];
  if (lastObject == dismiss)
  {
    v6 = [(NSMutableArray *)self->_overlayBackgroundViewControllers count];
    selfCopy = self;
    if (v6 >= 2)
    {
      selfCopy = [(NSMutableArray *)self->_overlayBackgroundViewControllers objectAtIndex:v6 - 2];
    }
  }

  else
  {
    selfCopy = 0;
  }

  [(SUTabBarController *)selfCopy viewWillAppear:0];
  dismissCopy = dismiss;
  [(NSMutableArray *)self->_overlayBackgroundViewControllers removeObjectIdenticalTo:dismiss];
  [dismiss setDelegate:0];
  [(SUTabBarController *)self removeChildViewController:dismiss];
  if ([dismiss isViewLoaded])
  {
    [dismiss viewWillDisappear:0];
    [objc_msgSend(dismiss "view")];
    [dismiss viewDidDisappear:0];
  }

  [(SUTabBarController *)selfCopy viewDidAppear:0];
}

- (unint64_t)indexOfViewControllerWithSectionType:(int64_t)type
{
  viewControllers = [(SUTabBarController *)self viewControllers];
  v5 = [viewControllers count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([objc_msgSend(objc_msgSend(viewControllers objectAtIndex:{v7), "section"), "type"}] != type)
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

- (void)setSections:(id)sections
{
  sections = self->_sections;
  if (sections != sections)
  {

    sectionsCopy = sections;
    self->_sections = sectionsCopy;

    [(SUTabBarController *)self _reloadViewControllersFromSections:sectionsCopy animated:0];
  }
}

- (void)setSelectedIdentifier:(id)identifier
{
  viewControllers = [(SUTabBarController *)self viewControllers];
  v6 = [viewControllers count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [viewControllers objectAtIndex:v8];
      section = [v9 section];
      if ([section identifier])
      {
        if ([identifier isEqualToString:{objc_msgSend(section, "identifier")}])
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

- (id)viewControllerForSectionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  viewControllers = [(SUTabBarController *)self viewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        section = [v10 section];
        if (section && ([objc_msgSend(section "identifier")] & 1) != 0)
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

      v7 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)viewControllerForSectionType:(int64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  allViewControllers = [(SUTabBarController *)self allViewControllers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [allViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(allViewControllers);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "section")] == type)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [allViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_applicationDidChangeStatusBarFrame:(id)frame
{
  userInfo = [frame userInfo];
  [objc_msgSend(userInfo objectForKey:{*MEMORY[0x1E69DDB90]), "CGRectValue"}];
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
        view = [(SUPreviewOverlayViewController *)self->_previewOverlayViewController view];

        [view setFrame:{v17, v23, v19, v21}];
      }
    }
  }
}

- (void)_partnerChanged:(id)changed
{
  v4 = [MEMORY[0x1E69DD258] transitionSafePerformer:self];

  [v4 _transitionSafeHandlePartnerChange:changed];
}

- (void)_hidePreviewOverlayAnimated:(BOOL)animated
{
  if (self->_previewOverlayViewController)
  {
    animatedCopy = animated;
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
    {
      previewOverlayViewController = self->_previewOverlayViewController;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__SUTabBarController__hidePreviewOverlayAnimated___block_invoke;
      v9[3] = &unk_1E8164348;
      v9[4] = self;
      [(SUPreviewOverlayViewController *)previewOverlayViewController hideInViewController:self animated:animatedCopy completionBlock:v9];
    }

    else
    {
      selectedNavigationController = [(UITabBarController *)self selectedNavigationController];
      v7 = self->_previewOverlayViewController;
      if (selectedNavigationController)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __50__SUTabBarController__hidePreviewOverlayAnimated___block_invoke_2;
        v8[3] = &unk_1E8164348;
        v8[4] = self;
        [(SUPreviewOverlayViewController *)v7 hideInNavigationController:selectedNavigationController animated:animatedCopy completionBlock:v8];
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

- (void)_setStoreBarStyle:(int64_t)style
{
  if (self->_storeBarStyle != style)
  {
    self->_storeBarStyle = style;
    if (style == 1)
    {
      lightKeyColor = [(SUClientInterface *)self->_clientInterface lightKeyColor];
      v5 = 10060;
    }

    else
    {
      if (style != 2)
      {
        return;
      }

      lightKeyColor = [(SUClientInterface *)self->_clientInterface darkKeyColor];
      v5 = 11050;
    }

    [(SUNavigationBarBackgroundView *)self->_tabBarBackdropView setBackdropStyle:v5];
    if (lightKeyColor)
    {
      tabBar = [(SUTabBarController *)self tabBar];

      [tabBar setInteractionTintColor:lightKeyColor];
    }
  }
}

- (void)_showPreviewOverlay:(id)overlay animated:(BOOL)animated
{
  previewOverlayViewController = self->_previewOverlayViewController;
  if (previewOverlayViewController != overlay)
  {
    animatedCopy = animated;
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

    overlayCopy = overlay;
    self->_previewOverlayViewController = overlayCopy;
    if (overlayCopy)
    {
      if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
      {
        v10 = self->_previewOverlayViewController;

        [(SUPreviewOverlayViewController *)v10 showInViewController:self animated:animatedCopy completionBlock:0];
      }

      else
      {
        selectedNavigationController = [(UITabBarController *)self selectedNavigationController];
        if (selectedNavigationController)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __51__SUTabBarController__showPreviewOverlay_animated___block_invoke;
          v12[3] = &unk_1E8164370;
          v12[4] = self;
          v12[5] = overlay;
          [overlay showInNavigationController:selectedNavigationController animated:animatedCopy completionBlock:v12];
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
      tabBarItem = [v4 tabBarItem];
      v8 = self->_moreListSelectedImage;
      moreListUnselectedImage = self->_moreListUnselectedImage;

      [tabBarItem setFinishedSelectedImage:v8 withFinishedUnselectedImage:moreListUnselectedImage];
      return;
    }
  }

  else if (moreListSelectedImage)
  {
    [objc_msgSend(v4 "tabBarItem")];
  }

  if (self->_moreListUnselectedImage)
  {
    tabBarItem2 = [v4 tabBarItem];
    _imageThatSuppressesAccessibilityHairlineThickening = [(UIImage *)self->_moreListUnselectedImage _imageThatSuppressesAccessibilityHairlineThickening];

    [tabBarItem2 setImage:_imageThatSuppressesAccessibilityHairlineThickening];
  }
}

- (id)_archivedContextsForViewController:(id)controller
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [controller viewControllers];
  }

  else
  {
    viewControllers = [MEMORY[0x1E695DEC8] arrayWithObjects:{controller, 0}];
  }

  v6 = viewControllers;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [viewControllers countByEnumeratingWithState:&v23 objects:v31 count:16];
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

        copyArchivableContext = [*(*(&v23 + 1) + 8 * i) copyArchivableContext];
        if (copyArchivableContext)
        {
          v12 = copyArchivableContext;
          [v4 addObject:copyArchivableContext];
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
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_ERROR))
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
  tabBar = [(SUTabBarController *)self tabBar];
  items = [tabBar items];
  selectedIndex = [(SUTabBarController *)self selectedIndex];
  if (selectedIndex < [items count] && !-[SUTabBarController _isReloadingUnderneathTransientViewController](self, "_isReloadingUnderneathTransientViewController"))
  {
    isLocked = [tabBar isLocked];
    [tabBar setLocked:0];
    [tabBar setSelectedItem:{objc_msgSend(items, "objectAtIndex:", -[SUTabBarController selectedIndex](self, "selectedIndex"))}];

    [tabBar setLocked:isLocked];
  }
}

- (void)_fixupViewControllers
{
  transitionSafetyDelegate = [MEMORY[0x1E69DCCD8] transitionSafetyDelegate];
  moreNavigationController = [(SUTabBarController *)self moreNavigationController];
  v5 = [-[SUTabBarController allViewControllers](self "allViewControllers")];
  v6 = [v5 indexOfObjectIdenticalTo:moreNavigationController];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      if (v10 != moreNavigationController && i > v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          viewControllers = [v10 viewControllers];
          if ([viewControllers count] >= 2)
          {
            [v10 setViewControllers:{objc_msgSend(viewControllers, "subarrayWithRange:", 0, 1)}];
          }
        }
      }

      [v10 setDelegate:transitionSafetyDelegate];
    }
  }

  [(SUTabBarController *)self _applyMoreListConfiguration];
}

- (void)_longPressAction:(id)action
{
  view = [action view];
  [action removeTarget:self action:a2];
  [view removeGestureRecognizer:action];
  [-[SUTabBarController selectedViewController](self "selectedViewController")];
  v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:a2];
  [view addGestureRecognizer:v7];
}

- (void)_moveTransientViewController:(id)controller toSectionWithIdentifier:(id)identifier asRoot:(BOOL)root
{
  if ([(SUTabBarController *)self viewControllerForSectionIdentifier:identifier])
  {
    transientViewController = [(SUTabBarController *)self transientViewController];
    controllerCopy = controller;
    for (i = controller != 0; controllerCopy && controllerCopy != transientViewController; i = controllerCopy != 0)
    {
      controllerCopy = [controllerCopy parentViewController];
    }

    if (i)
    {
      v18 = controllerCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        topViewController = [v18 topViewController];
      }

      else
      {
        topViewController = v18;
      }

      v19 = topViewController;
      v12 = topViewController;
      [(SUTabBarController *)self setSelectedIdentifier:identifier];
      [(SUTabBarController *)self setTransientViewController:0];
      selectedNavigationController = [(UITabBarController *)self selectedNavigationController];
      v14 = selectedNavigationController;
      if (root)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SUTabBarController *)self _sectionForIdentifier:identifier];
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
        [selectedNavigationController pushViewController:v19 animated:0];
      }
    }
  }
}

- (void)_moveView:(id)view toView:(id)toView
{
  [view frame];
  [toView convertRect:objc_msgSend(view fromView:{"superview"), v6, v7, v8, v9}];
  [view setFrame:?];

  [toView addSubview:view];
}

- (void)_reloadViewControllersFromSections:(id)sections animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = [-[SUTabBarController viewControllers](self "viewControllers")];
  v8 = [v35 count];
  moreNavigationController = [(SUTabBarController *)self moreNavigationController];
  v28 = animatedCopy;
  v25 = moreNavigationController;
  v27 = v8;
  if (moreNavigationController)
  {
    v29 = [-[SUTabBarController allViewControllers](self "allViewControllers")];
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  delegate = [(SUTabBarController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    delegate = 0;
  }

  partnerIdentifier = [+[SUNetworkObserver sharedInstance](SUNetworkObserver partnerIdentifier];
  v11 = [sections count];
  if (v11 >= 1)
  {
    v12 = v11;
    v31 = 0;
    sectionsCopy = sections;
    v13 = 0;
    v33 = delegate;
    do
    {
      v14 = [sections objectAtIndex:v13];
      partnerHeader = [v14 partnerHeader];
      if ((!partnerHeader || -[NSString isEqualToString:](partnerIdentifier, "isEqualToString:", partnerHeader)) && (!delegate || [delegate tabBarController:self shouldShowSection:v14]))
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

        sections = sectionsCopy;
        delegate = v33;
      }

      ++v13;
    }

    while (v13 != v12);
  }

  if (![v7 count])
  {
    newPlaceholderViewController = [(SUViewControllerFactory *)[(SUClientInterface *)self->_clientInterface viewControllerFactory] newPlaceholderViewController];
    [newPlaceholderViewController setClientInterface:self->_clientInterface];
    v24 = [[SUNavigationController alloc] initWithRootViewController:newPlaceholderViewController];
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

- (void)_restoreArchivedContexts:(id)contexts
{
  v5 = [contexts count];
  if (v5)
  {
    v6 = [contexts objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  sectionIdentifier = [v6 sectionIdentifier];
  if (v6 && !sectionIdentifier)
  {
    moreNavigationController = [(SUTabBarController *)self moreNavigationController];
    if (moreNavigationController)
    {
      v9 = moreNavigationController;
      if ([-[SUTabBarController allViewControllers](self "allViewControllers")] != 0x7FFFFFFFFFFFFFFFLL)
      {

        [(SUTabBarController *)self setSelectedViewController:v9];
      }
    }

    return;
  }

  if (!sectionIdentifier)
  {
    return;
  }

  [(SUTabBarController *)self setSelectedIdentifier:sectionIdentifier];
  selectedNavigationController = [(UITabBarController *)self selectedNavigationController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  viewControllers = [selectedNavigationController viewControllers];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  firstViewController = [selectedNavigationController firstViewController];
  if (selectedNavigationController != [(SUTabBarController *)self moreNavigationController])
  {
    v13 = 1;
    if (!firstViewController)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  [v15 addObject:firstViewController];
  if ([viewControllers count] < 2)
  {
    firstViewController = 0;
  }

  else
  {
    firstViewController = [viewControllers objectAtIndex:1];
  }

  if ([contexts count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [contexts objectAtIndex:1];
  }

  v13 = 2;
  if (firstViewController)
  {
LABEL_15:
    [firstViewController restoreArchivableContext:v6];
    [v15 addObject:firstViewController];
  }

LABEL_16:
  if (v13 < v5)
  {
    while (v5 - 1 != v13 || !self->_preloadedViewController || ![(NSString *)self->_preloadedViewControllerKey isEqualToString:@"SUSectionNavigationPath"])
    {
      v14 = -[SUTabBarController _viewControllerForContext:](self, "_viewControllerForContext:", [contexts objectAtIndex:v13]);
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
  [selectedNavigationController setViewControllers:v15];
}

- (void)_restoreOverlayContexts:(id)contexts
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [contexts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(contexts);
        }

        copyViewController = [*(*(&v10 + 1) + 8 * v8) copyViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUTabBarController *)self presentOverlayBackgroundViewController:copyViewController];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [contexts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_restoreArchivedTransientContexts:(id)contexts
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([contexts count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [contexts objectAtIndex:v5];
      if (v5 == [contexts count] - 1 && self->_preloadedViewController && -[NSString isEqualToString:](self->_preloadedViewControllerKey, "isEqualToString:", @"SUTransientNavigationPath"))
      {
        break;
      }

      v7 = [(SUTabBarController *)self _viewControllerForContext:v6];
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (++v5 >= [contexts count])
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

- (id)_rootViewControllerForSection:(id)section
{
  if (-[NSString isEqualToString:](self->_preloadedViewControllerIdentifier, "isEqualToString:", [section identifier]) && (preloadedViewController = self->_preloadedViewController) != 0)
  {
    v6 = preloadedViewController;

    self->_preloadedViewController = 0;
    return v6;
  }

  else
  {
    delegate = [(SUTabBarController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [delegate tabBarController:self rootViewControllerForSection:section];
    }

    else
    {
      v9 = [(SUViewControllerFactory *)[(SUClientInterface *)self->_clientInterface viewControllerFactory] newStorePageViewControllerWithSection:section];
    }

    v10 = v9;
    if (![v9 clientInterface])
    {
      [v10 setClientInterface:self->_clientInterface];
    }

    [v10 setTitle:{objc_msgSend(section, "title")}];
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
  transientViewController = [(SUTabBarController *)self transientViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(SUTabBarController *)self _archivedContextsForViewController:transientViewController];
  }

  else
  {
    v4 = 0;
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  return 1;
}

- (id)_sectionForIdentifier:(id)identifier
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

- (id)_sectionForType:(int64_t)type
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
    if ([v9 type] == type)
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

- (void)_transitionSafeHandlePartnerChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_sections count])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      object = [change object];
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

- (id)_viewControllerForContext:(id)context
{
  delegate = [(SUTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    copyViewController = [delegate tabBarController:self viewControllerForContext:context];
    if (![copyViewController clientInterface])
    {
      [copyViewController setClientInterface:self->_clientInterface];
    }
  }

  else
  {
    copyViewController = [context copyViewController];
    [copyViewController setClientInterface:self->_clientInterface];
    [copyViewController restoreArchivableContext:context];
  }

  return copyViewController;
}

@end