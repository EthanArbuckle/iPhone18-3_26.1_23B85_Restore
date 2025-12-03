@interface _TVRootMenuBarController
- (UINavigationController)currentNavigationController;
- (_TVRootMenuBarController)init;
- (id)selectedTabItemForTabBar:(id)bar;
- (id)tabBar:(id)bar setTabItems:(id)items;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)setAppNavigationControllersDelegate:(id)delegate;
- (void)tabBar:(id)bar setSelectedTabItem:(id)item;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
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
  view = [(_TVRootMenuBarController *)self view];
  [view setBackgroundColor:0];
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)orientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  if (TVShouldConstrainToPortait())
  {
    return 2;
  }

  return 26;
}

- (void)setAppNavigationControllersDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  [(_TVRootMenuBarController *)self setAppNavigationControllerDelegate:delegateCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [(_TVRootMenuBarController *)self viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setAppNavigationControllerDelegate:delegateCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (UINavigationController)currentNavigationController
{
  viewControllers = [(_TVRootMenuBarController *)self viewControllers];
  selectedIndex = [(_TVRootMenuBarController *)self selectedIndex];
  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [viewControllers objectAtIndex:selectedIndex];
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

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  v19[1] = *MEMORY[0x277D85DE8];
  viewControllerCopy = viewController;
  v18 = @"TVAppRootViewControllerCurrentNavigationControllerUserInfoKey";
  v19[0] = viewControllerCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:self userInfo:v6];

  viewControllers = [(_TVRootMenuBarController *)self viewControllers];
  v9 = [viewControllers indexOfObjectIdenticalTo:viewControllerCopy];

  previousSelectedIndex = [(_TVRootMenuBarController *)self previousSelectedIndex];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || previousSelectedIndex == v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v13 = viewControllerCopy;
    viewControllers2 = [v13 viewControllers];
    if ([viewControllers2 count] == 1)
    {
      visibleViewController = [v13 visibleViewController];
      view = [visibleViewController view];
      window = [view window];

      if (!window)
      {
LABEL_11:

        goto LABEL_12;
      }

      viewControllers2 = [v13 visibleViewController];
      if (objc_opt_respondsToSelector())
      {
        [viewControllers2 scrollToTop];
      }
    }

    goto LABEL_11;
  }

  [(_TVRootMenuBarController *)self setPreviousSelectedIndex:v9];
  appTabBar = [(_TVRootMenuBarController *)self appTabBar];
  [appTabBar onSelect];

  v12 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    [_TVRootMenuBarController tabBarController:v9 didSelectViewController:v12];
  }

LABEL_12:
}

- (id)tabBar:(id)bar setTabItems:(id)items
{
  v114 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  previousSelectedIndex = [(_TVRootMenuBarController *)self previousSelectedIndex];
  if (previousSelectedIndex == 0x7FFFFFFFFFFFFFFFLL || (v7 = previousSelectedIndex, previousSelectedIndex >= [(NSArray *)self->_appTabBarItems count]))
  {
    v86 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_appTabBarItems objectAtIndex:v7];
    v86 = [v8 objectForKey:*MEMORY[0x277D1AF78]];
  }

  selectedIndex = [(_TVRootMenuBarController *)self selectedIndex];
  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL || (v10 = selectedIndex, selectedIndex >= [itemsCopy count]))
  {
    v10 = 0;
  }

  v94 = v10;
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  selfCopy = self;
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
  viewControllers = [(_TVRootMenuBarController *)selfCopy viewControllers];
  v21 = [viewControllers countByEnumeratingWithState:&v103 objects:v112 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v25 = *(*(&v103 + 1) + 8 * j);
        tvIdentifier = [v25 tvIdentifier];
        [v19 setObject:v25 forKey:tvIdentifier];
      }

      v22 = [viewControllers countByEnumeratingWithState:&v103 objects:v112 count:16];
    }

    while (v22);
  }

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = itemsCopy;
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
            [(_TVAppNavigationController *)v30 setAppNavigationControllerDelegate:selfCopy->_appNavigationControllerDelegate];
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
            tabBarItem = [(_TVAppNavigationController_iOS *)v30 tabBarItem];
            [tabBarItem setTitle:v49];

            v46 = v88;
          }

          v33 = v98;
        }

        v28 = [v40 objectForKey:v46];

        if ([v28 length])
        {
          [v31 setObject:v28 forKeyedSubscript:v46];
          v52 = [MEMORY[0x277CBEBC0] URLWithString:v28];
          tabBarItem2 = [(_TVAppNavigationController_iOS *)v30 tabBarItem];
          v54 = +[TVInterfaceFactory sharedInterfaceFactory];
          [v52 tv_resourceName];
          v56 = v55 = v28;
          [v54 imageForResource:v56];
          v57 = v30;
          v59 = v58 = v31;
          _imageThatSuppressesAccessibilityHairlineThickening = [v59 _imageThatSuppressesAccessibilityHairlineThickening];
          [tabBarItem2 setImage:_imageThatSuppressesAccessibilityHairlineThickening];

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
          tabBarItem3 = [(_TVAppNavigationController_iOS *)v30 tabBarItem];
          v63 = +[TVInterfaceFactory sharedInterfaceFactory];
          tv_resourceName = [v61 tv_resourceName];
          [v63 imageForResource:tv_resourceName];
          v65 = v30;
          v67 = v66 = v31;
          [v67 _imageThatSuppressesAccessibilityHairlineThickening];
          v69 = v68 = v28;
          [tabBarItem3 setSelectedImage:v69];

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

  [(_TVRootMenuBarController *)selfCopy setViewControllers:v85];
  [(_TVRootMenuBarController *)selfCopy setAppTabBarItems:v27];
  [(_TVRootMenuBarController *)selfCopy setPreviousSelectedIndex:v73];
  [(_TVRootMenuBarController *)selfCopy setSelectedIndex:v94];
  tabBar = [(_TVRootMenuBarController *)selfCopy tabBar];
  [tabBar setNeedsLayout];

  v75 = +[_TVAppLoadingView loadingScreen];
  [v75 hide];

  return v27;
}

- (id)selectedTabItemForTabBar:(id)bar
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

- (void)tabBar:(id)bar setSelectedTabItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_appTabBarItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
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

        if ([v9 isEqualToString:itemCopy])
        {
          [(_TVRootMenuBarController *)selfCopy setSelectedIndex:v14];
          [(_TVRootMenuBarController *)selfCopy setPreviousSelectedIndex:v14];
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

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(_TVRootMenuBarController *)self presentedViewController];
  v8 = +[_TVModalPresenter presenter];
  modalRootViewController = [v8 modalRootViewController];
  if (([presentedViewController isEqual:modalRootViewController] & 1) == 0)
  {

    goto LABEL_5;
  }

  v10 = +[_TVModalPresenter presenter];
  _isDismissing = [v10 _isDismissing];

  if (_isDismissing)
  {
LABEL_5:
    v13.receiver = self;
    v13.super_class = _TVRootMenuBarController;
    [(_TVRootMenuBarController *)&v13 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
    goto LABEL_6;
  }

  v12 = +[_TVModalPresenter presenter];
  [v12 hideAllAnimated:animatedCopy withCompletion:completionCopy];

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