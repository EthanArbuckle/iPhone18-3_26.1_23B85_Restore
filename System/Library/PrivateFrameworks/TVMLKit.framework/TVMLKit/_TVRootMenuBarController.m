@interface _TVRootMenuBarController
- (UINavigationController)currentNavigationController;
- (_TVRootMenuBarController)init;
- (id)selectedTabItemForTabBar:(id)a3;
- (id)tabBar:(id)a3 setTabItems:(id)a4;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)a3;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)setAppNavigationControllersDelegate:(id)a3;
- (void)tabBar:(id)a3 setSelectedTabItem:(id)a4;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)viewDidLoad;
@end

@implementation _TVRootMenuBarController

- (_TVRootMenuBarController)init
{
  v7.receiver = self;
  v7.super_class = _TVRootMenuBarController;
  v2 = [(_TVRootMenuBarController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_TVRootMenuBarController *)v2 setDelegate:v2];
    v3->_previousSelectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v4 = [objc_alloc(MEMORY[0x277D1B048]) initWithTabBarController:v3];
    appTabBar = v3->_appTabBar;
    v3->_appTabBar = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(_TVRootMenuBarController *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = _TVRootMenuBarController;
  [(_TVRootMenuBarController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _TVRootMenuBarController;
  [(_TVRootMenuBarController *)&v4 viewDidLoad];
  v3 = [(_TVRootMenuBarController *)self view];
  [v3 setBackgroundColor:0];
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    return 30;
  }

  if (TVShouldConstrainToPortait())
  {
    return 2;
  }

  return 26;
}

- (void)setAppNavigationControllersDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(_TVRootMenuBarController *)self setAppNavigationControllerDelegate:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(_TVRootMenuBarController *)self viewControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setAppNavigationControllerDelegate:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (UINavigationController)currentNavigationController
{
  v3 = [(_TVRootMenuBarController *)self viewControllers];
  v4 = [(_TVRootMenuBarController *)self selectedIndex];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndex:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v18 = @"TVAppRootViewControllerCurrentNavigationControllerUserInfoKey";
  v19[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:self userInfo:v6];

  v8 = [(_TVRootMenuBarController *)self viewControllers];
  v9 = [v8 indexOfObjectIdenticalTo:v5];

  v10 = [(_TVRootMenuBarController *)self previousSelectedIndex];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v10 == v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v13 = v5;
    v14 = [v13 viewControllers];
    if ([v14 count] == 1)
    {
      v15 = [v13 visibleViewController];
      v16 = [v15 view];
      v17 = [v16 window];

      if (!v17)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = [v13 visibleViewController];
      if (objc_opt_respondsToSelector())
      {
        [v14 scrollToTop];
      }
    }

    goto LABEL_11;
  }

  [(_TVRootMenuBarController *)self setPreviousSelectedIndex:v9];
  v11 = [(_TVRootMenuBarController *)self appTabBar];
  [v11 onSelect];

  v12 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVRootMenuBarController tabBarController:v9 didSelectViewController:v12];
  }

LABEL_12:
}

- (id)tabBar:(id)a3 setTabItems:(id)a4
{
  v114 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(_TVRootMenuBarController *)self previousSelectedIndex];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6, v6 >= [(NSArray *)self->_appTabBarItems count]))
  {
    v86 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_appTabBarItems objectAtIndex:v7];
    v86 = [v8 objectForKey:*MEMORY[0x277D1AF78]];
  }

  v9 = [(_TVRootMenuBarController *)self selectedIndex];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9, v9 >= [v5 count]))
  {
    v10 = 0;
  }

  v94 = v10;
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v79 = self;
  v11 = self->_appTabBarItems;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v107 objects:v113 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v108;
    v15 = *MEMORY[0x277D1AF78];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v108 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v107 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:v15];
        [v96 setObject:v17 forKey:v18];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v107 objects:v113 count:16];
    }

    while (v13);
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v20 = [(_TVRootMenuBarController *)v79 viewControllers];
  v21 = [v20 countByEnumeratingWithState:&v103 objects:v112 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v104;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v104 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v103 + 1) + 8 * j);
        v26 = [v25 tvIdentifier];
        [v19 setObject:v25 forKey:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v103 objects:v112 count:16];
    }

    while (v22);
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v5;
  v87 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v87)
  {
    v84 = v27;
    v97 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v83 = *v100;
    v82 = *MEMORY[0x277D1AF78];
    v78 = *MEMORY[0x277D1AF90];
    v90 = *MEMORY[0x277D1AF98];
    v88 = *MEMORY[0x277D1AF80];
    v93 = 0x7FFFFFFFFFFFFFFFLL;
    v81 = *MEMORY[0x277D1AF88];
    v89 = v19;
    do
    {
      v34 = 0;
      v35 = v97;
      v36 = v28;
      v37 = v29;
      v77 = v32;
      v95 = v32;
      do
      {
        v91 = v37;
        v38 = v30;
        if (*v100 != v83)
        {
          v39 = v34;
          objc_enumerationMutation(obj);
          v34 = v39;
        }

        v92 = v34;
        v40 = *(*(&v99 + 1) + 8 * v34);
        v41 = [v40 objectForKeyedSubscript:{v82, v77}];

        v33 = v41;
        v42 = [v96 objectForKey:v41];

        v98 = v33;
        if (v42)
        {
          v43 = [v96 objectForKey:v33];
          v44 = [v43 mutableCopy];

          v31 = v44;
          v33 = v98;
        }

        else
        {
          v43 = v31;
          v31 = [v40 mutableCopy];
        }

        v45 = [v19 objectForKey:v33];

        if (v45)
        {
          v30 = [v19 objectForKey:v33];

          v46 = v88;
        }

        else
        {
          v47 = +[TVInterfaceFactory sharedInterfaceFactory];
          v48 = [v47 _navigationControllerForTabIdentifier:v33];

          v30 = v48;
          if (!v48)
          {
            v30 = objc_alloc_init(_TVAppNavigationController_iOS);
          }

          objc_opt_class();
          v46 = v88;
          if (objc_opt_isKindOfClass())
          {
            [(_TVAppNavigationController *)v30 setAppNavigationControllerDelegate:v79->_appNavigationControllerDelegate];
            [v31 setObject:v30 forKeyedSubscript:v78];
          }

          v33 = v98;
          [(UIViewController *)v30 tv_setIdentifier:v98];
        }

        v49 = [v40 objectForKey:v90];

        v97 = v49;
        if ([v49 length])
        {
          v50 = [v31 objectForKeyedSubscript:v90];
          [v31 setObject:v49 forKeyedSubscript:v90];
          [(_TVAppNavigationController *)v30 setTitle:v49];
          if (v50 && ([v50 isEqualToString:v49] & 1) == 0)
          {
            v51 = [(_TVAppNavigationController_iOS *)v30 tabBarItem];
            [v51 setTitle:v49];

            v46 = v88;
          }

          v33 = v98;
        }

        v28 = [v40 objectForKey:v46];

        if ([v28 length])
        {
          [v31 setObject:v28 forKeyedSubscript:v46];
          v52 = [MEMORY[0x277CBEBC0] URLWithString:v28];
          v53 = [(_TVAppNavigationController_iOS *)v30 tabBarItem];
          v54 = +[TVInterfaceFactory sharedInterfaceFactory];
          [v52 tv_resourceName];
          v56 = v55 = v28;
          [v54 imageForResource:v56];
          v57 = v30;
          v59 = v58 = v31;
          v60 = [v59 _imageThatSuppressesAccessibilityHairlineThickening];
          [v53 setImage:v60];

          v31 = v58;
          v30 = v57;

          v28 = v55;
          v19 = v89;

          v33 = v98;
        }

        v29 = [v40 objectForKey:v81];

        if ([v29 length])
        {
          [v31 setObject:v29 forKeyedSubscript:v81];
          v61 = [MEMORY[0x277CBEBC0] URLWithString:v29];
          v62 = [(_TVAppNavigationController_iOS *)v30 tabBarItem];
          v63 = +[TVInterfaceFactory sharedInterfaceFactory];
          v64 = [v61 tv_resourceName];
          [v63 imageForResource:v64];
          v65 = v30;
          v67 = v66 = v31;
          [v67 _imageThatSuppressesAccessibilityHairlineThickening];
          v69 = v68 = v28;
          [v62 setSelectedImage:v69];

          v28 = v68;
          v31 = v66;
          v30 = v65;

          v19 = v89;
          v33 = v98;
        }

        [v84 addObject:v31];
        [v85 addObject:v30];
        v70 = [v86 isEqualToString:v33];
        if (v70)
        {
          v71 = v95;
        }

        else
        {
          v71 = v94;
        }

        v72 = v93;
        if (v70)
        {
          v72 = v95;
        }

        v93 = v72;
        v94 = v71;
        ++v95;
        v34 = v92 + 1;
        v35 = v97;
        v36 = v28;
        v37 = v29;
      }

      while (v87 != v92 + 1);
      v32 = v77 + v87;
      v87 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
    }

    while (v87);

    v27 = v84;
    v73 = v93;
  }

  else
  {
    v73 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(_TVRootMenuBarController *)v79 setViewControllers:v85];
  [(_TVRootMenuBarController *)v79 setAppTabBarItems:v27];
  [(_TVRootMenuBarController *)v79 setPreviousSelectedIndex:v73];
  [(_TVRootMenuBarController *)v79 setSelectedIndex:v94];
  v74 = [(_TVRootMenuBarController *)v79 tabBar];
  [v74 setNeedsLayout];

  v75 = +[_TVAppLoadingView loadingScreen];
  [v75 hide];

  return v27;
}

- (id)selectedTabItemForTabBar:(id)a3
{
  if ([(_TVRootMenuBarController *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_appTabBarItems objectAtIndex:[(_TVRootMenuBarController *)self selectedIndex]];
    v4 = [v5 objectForKey:*MEMORY[0x277D1AF78]];
  }

  return v4;
}

- (void)tabBar:(id)a3 setSelectedTabItem:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_appTabBarItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v16 = self;
    v9 = 0;
    v10 = 0;
    v11 = *v18;
    v12 = *MEMORY[0x277D1AF78];
    while (2)
    {
      v13 = 0;
      v14 = v10;
      v10 += v8;
      v15 = v9;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v9 = [*(*(&v17 + 1) + 8 * v13) objectForKey:v12];

        if ([v9 isEqualToString:v5])
        {
          [(_TVRootMenuBarController *)v16 setSelectedIndex:v14];
          [(_TVRootMenuBarController *)v16 setPreviousSelectedIndex:v14];
          goto LABEL_11;
        }

        ++v14;
        ++v13;
        v15 = v9;
      }

      while (v8 != v13);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_11:
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_TVRootMenuBarController *)self presentedViewController];
  v8 = +[_TVModalPresenter presenter];
  v9 = [v8 modalRootViewController];
  if (([v7 isEqual:v9] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = +[_TVModalPresenter presenter];
  v11 = [v10 _isDismissing];

  if (v11)
  {
LABEL_5:
    v13.receiver = self;
    v13.super_class = _TVRootMenuBarController;
    [(_TVRootMenuBarController *)&v13 dismissViewControllerAnimated:v4 completion:v6];
    goto LABEL_6;
  }

  v12 = +[_TVModalPresenter presenter];
  [v12 hideAllAnimated:v4 withCompletion:v6];

LABEL_6:
}

- (void)tabBarController:(uint64_t)a1 didSelectViewController:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_DEBUG, "Selected menu item at index %ld", &v2, 0xCu);
}

@end