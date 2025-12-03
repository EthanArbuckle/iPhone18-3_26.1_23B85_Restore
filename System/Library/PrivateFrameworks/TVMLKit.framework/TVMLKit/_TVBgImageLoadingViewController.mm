@interface _TVBgImageLoadingViewController
+ (id)_decorateImage:(id)image decorator:(id)decorator;
- (BOOL)_isNewiOSTVApp;
- (CGSize)_backgroundImageProxySize;
- (_TVBgImageLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_stackViewWithMinSpacing:(double)spacing layoutMargin:(UIEdgeInsets)margin;
- (void)_dismissViewController:(id)controller;
- (void)_reparentNavigationItem:(id)item;
- (void)_updateNavigationBarPadding;
- (void)_updateNavigationItem;
- (void)configureAppearanceTransition;
- (void)dealloc;
- (void)loadFromViewController:(id)controller completion:(id)completion;
- (void)updateNavigationItem:(id)item;
- (void)updateWithViewElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _TVBgImageLoadingViewController

- (_TVBgImageLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = _TVBgImageLoadingViewController;
  v4 = [(_TVBgImageLoadingViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_loaded = 0;
    v4->_bgImageLoadingOptions.respondsToBackroundImageProxy = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToBackgroundImageRequiresBlur = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToBackdropNeeded = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToImageProxySize = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToBlurEffectStyle = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToPurgeBgImages = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToConfigureBgImageBackdropImage = objc_opt_respondsToSelector() & 1;
    v5->_bgImageLoadingOptions.respondsToShouldLoadBackgroundImageAsynchronously = objc_opt_respondsToSelector() & 1;
  }

  return v5;
}

- (void)dealloc
{
  [self->_imageProxy cancel];
  v3.receiver = self;
  v3.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v3 dealloc];
}

- (CGSize)_backgroundImageProxySize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateWithViewElement:(id)element
{
  v19 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [elementCopy children];
  v6 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(children);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 tv_elementType] == 31)
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (self->_navigationItemElement)
  {
    updateType = [v8 updateType];
    objc_storeStrong(&self->_navigationItemElement, v8);
    if (!updateType)
    {
      goto LABEL_17;
    }
  }

  else
  {
    objc_storeStrong(&self->_navigationItemElement, v8);
  }

  [(_TVBgImageLoadingViewController *)self _updateNavigationItem];
LABEL_17:
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidAppear:appear];
  self->_loaded = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v5 viewDidDisappear:disappear];
  navigationController = [(_TVBgImageLoadingViewController *)self navigationController];

  if (!navigationController)
  {
    self->_loaded = 0;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v5 viewWillAppear:appear];
  [(_TVBgImageLoadingViewController *)self _updateNavigationBarPadding];
  parentViewController = [(_TVBgImageLoadingViewController *)self parentViewController];
  [(_TVBgImageLoadingViewController *)self _reparentNavigationItem:parentViewController];

  [(_TVBgImageLoadingViewController *)self configureAppearanceTransition];
}

- (void)configureAppearanceTransition
{
  v3 = 1.0;
  if ([(_TVBgImageLoadingViewController *)self _isNewiOSTVApp])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationItem = [(_TVBgImageLoadingViewController *)self navigationItem];
      title = [navigationItem title];
      if (title)
      {
      }

      else
      {
        navigationItem2 = [(_TVBgImageLoadingViewController *)self navigationItem];
        titleView = [navigationItem2 titleView];

        if (titleView)
        {
          v3 = 1.0;
        }

        else
        {
          v3 = 0.0;
        }
      }
    }
  }

  transitionCoordinator = [(_TVBgImageLoadingViewController *)self transitionCoordinator];

  if (v3 <= 0.0 || transitionCoordinator == 0)
  {
    navigationController = [(_TVBgImageLoadingViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    tvmlkit_keyColor = [MEMORY[0x277D75348] tvmlkit_keyColor];
    [navigationBar setTintColor:tvmlkit_keyColor];

    [navigationBar _setBackgroundOpacity:v3];
    [navigationBar _setTitleOpacity:v3];
  }

  else
  {
    objc_initWeak(&location, self);
    transitionCoordinator2 = [(_TVBgImageLoadingViewController *)self transitionCoordinator];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64___TVBgImageLoadingViewController_configureAppearanceTransition__block_invoke;
    v16[3] = &unk_279D6F790;
    objc_copyWeak(v17, &location);
    v17[1] = *&v3;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64___TVBgImageLoadingViewController_configureAppearanceTransition__block_invoke_2;
    v14[3] = &unk_279D6F790;
    objc_copyWeak(v15, &location);
    v15[1] = *&v3;
    [transitionCoordinator2 animateAlongsideTransition:v16 completion:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

- (void)loadFromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (!self->_bgImageLoadingOptions.respondsToConfigureBgImageBackdropImage)
  {
    v12 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVBgImageLoadingViewController loadFromViewController:v12 completion:?];
      if (!completionCopy)
      {
        goto LABEL_16;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_16;
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_16;
  }

  _backgroundImageProxy = [(_TVBgImageLoadingViewController *)self _backgroundImageProxy];
  imageProxy = self->_imageProxy;
  self->_imageProxy = _backgroundImageProxy;

  isImageAvailable = [self->_imageProxy isImageAvailable];
  v11 = self->_bgImageLoadingOptions.respondsToShouldLoadBackgroundImageAsynchronously && [(_TVBgImageLoadingViewController *)self _shouldLoadBackgroundImageAsynchronously];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = self->_imageProxy;
    [v13 setAllowsSubstitutionForOriginal:{-[_TVBgImageLoadingViewController _backgroundImageRequiresBlur](self, "_backgroundImageRequiresBlur")}];
    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __69___TVBgImageLoadingViewController_loadFromViewController_completion___block_invoke;
    v19 = &unk_279D6F7E0;
    objc_copyWeak(&v21, &location);
    v22 = v11;
    v14 = completionCopy;
    v20 = v14;
    v23 = isImageAvailable;
    [v13 setCompletionHandler:&v16];
    [v13 setCacheOnLoad:{+[TVMLUtilities canHandleDecodingOnRenderThread](TVMLUtilities, "canHandleDecodingOnRenderThread", v16, v17, v18, v19) ^ 1}];
    [v13 load];
    v15 = !v11;
    if (!v14)
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      (*(v14 + 2))(v14, 1, 0);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [(_TVBgImageLoadingViewController *)self _configureWithBgImage:0 backdropImage:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

LABEL_16:
}

+ (id)_decorateImage:(id)image decorator:(id)decorator
{
  imageCopy = image;
  decoratorCopy = decorator;
  if (imageCopy)
  {
    v7 = +[TVImage imageWithCGImageRef:preserveAlpha:](TVImage, "imageWithCGImageRef:preserveAlpha:", [imageCopy CGImage], 0);
    v8 = v7;
    if (decoratorCopy && v7)
    {
      [imageCopy size];
      v9 = [decoratorCopy decorate:v8 scaledWithSize:1 croppedToFit:?];

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateNavigationItem:(id)item
{
  itemCopy = item;
  [itemCopy setSearchController:0];
  [itemCopy setHidesSearchBarWhenScrolling:0];
}

- (void)_dismissViewController:(id)controller
{
  v9 = +[_TVModalPresenter presenter];
  modalRootViewController = [v9 modalRootViewController];
  navigationController = [(_TVBgImageLoadingViewController *)self navigationController];
  v6 = navigationController;
  if (modalRootViewController)
  {
    v7 = navigationController == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && modalRootViewController == navigationController)
  {
    [v9 hideAllAnimated:1 withCompletion:0];
  }

  else
  {
    [(_TVBgImageLoadingViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)_isNewiOSTVApp
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v4 = [processName isEqualToString:@"AppleTV"];

  return v4;
}

- (void)_reparentNavigationItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(_TVBgImageLoadingViewController *)self appliedNavigationItem])
  {
    navigationItem = [(_TVBgImageLoadingViewController *)self navigationItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = 0;
    }

    else
    {
      v6 = &stru_287E12870;
    }

    title = [navigationItem title];
    v8 = title;
    if (title)
    {
      v9 = title;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;

    leftBarButtonItems = [navigationItem leftBarButtonItems];
    v30 = [leftBarButtonItems copy];

    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v13 = [rightBarButtonItems copy];

    titleView = [navigationItem titleView];
    _isNewiOSTVApp = [(_TVBgImageLoadingViewController *)self _isNewiOSTVApp];
    presentingViewController = [(_TVBgImageLoadingViewController *)self presentingViewController];

    v27 = _isNewiOSTVApp;
    if (presentingViewController && !_isNewiOSTVApp)
    {
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismissViewController_];
      v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count") + 1}];
      [v17 addObject:v16];
      v18 = [v17 copy];

      v13 = v18;
    }

    leftItemsSupplementBackButton = [navigationItem leftItemsSupplementBackButton];
    largeTitleDisplayMode = [navigationItem largeTitleDisplayMode];
    if ([(_TVBgImageLoadingViewController *)self _overrideLargeTitleDisplayMode])
    {
      largeTitleDisplayMode = [(_TVBgImageLoadingViewController *)self _overrideLargeTitleDisplayMode];
    }

    v20 = v8 == 0;
    _largeTitleAccessoryView = [navigationItem _largeTitleAccessoryView];
    _supportsTwoLineLargeTitles = [navigationItem _supportsTwoLineLargeTitles];
    navigationItem2 = [itemCopy navigationItem];
    [navigationItem2 setTitle:v10];

    [navigationItem2 setTitleView:titleView];
    [navigationItem2 setLeftBarButtonItems:v30];
    [navigationItem2 setRightBarButtonItems:v13];
    [navigationItem2 setLeftItemsSupplementBackButton:leftItemsSupplementBackButton];
    if (largeTitleDisplayMode <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = largeTitleDisplayMode;
    }

    if ((v20 & isKindOfClass) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24;
    }

    [navigationItem2 setLargeTitleDisplayMode:v25];
    [navigationItem2 _setLargeTitleAccessoryView:_largeTitleAccessoryView alignToBaseline:!v27];
    [navigationItem2 _setSupportsTwoLineLargeTitles:_supportsTwoLineLargeTitles];
    [(_TVBgImageLoadingViewController *)self updateNavigationItem:navigationItem2];
    [(_TVBgImageLoadingViewController *)self setAppliedNavigationItem:1];
  }

  else
  {
    v4 = itemCopy;
    if (itemCopy)
    {
      goto LABEL_24;
    }

    [(_TVBgImageLoadingViewController *)self setAppliedNavigationItem:0];
  }

  v4 = itemCopy;
LABEL_24:
}

- (void)_updateNavigationBarPadding
{
  if (self->_navigationItemElement)
  {
    navigationController = [(_TVBgImageLoadingViewController *)self navigationController];
    v4 = +[_TVModalPresenter presenter];
    modalRootViewController = [v4 modalRootViewController];

    if (navigationController != modalRootViewController)
    {
      style = [(IKViewElement *)self->_navigationItemElement style];
      [style tv_padding];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      navigationController2 = [(_TVBgImageLoadingViewController *)self navigationController];
      navigationBar = [navigationController2 navigationBar];
      [navigationBar layoutMargins];
      if (v10 == v20 && v8 == v17 && v14 == v19)
      {
        v23 = v18;

        if (v12 == v23)
        {
          return;
        }
      }

      else
      {
      }

      navigationController3 = [(_TVBgImageLoadingViewController *)self navigationController];
      navigationBar2 = [navigationController3 navigationBar];
      [navigationBar2 setLayoutMargins:{v8, v10, v12, v14}];

      navigationController4 = [(_TVBgImageLoadingViewController *)self navigationController];
      navigationBar3 = [navigationController4 navigationBar];
      [navigationBar3 setNeedsLayout];
    }
  }
}

- (void)_updateNavigationItem
{
  v125 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  navigationItem = [(_TVBgImageLoadingViewController *)self navigationItem];
  selfCopy = self;
  v101 = array;
  navigationItemElement = self->_navigationItemElement;
  v99 = navigationItem;
  if (!navigationItemElement)
  {
    v102 = 0;
    v104 = 1;
    [navigationItem leftBarButtonItem];
    goto LABEL_35;
  }

  children = [(IKViewElement *)navigationItemElement children];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v7 = [children countByEnumeratingWithState:&v118 objects:v124 count:16];
  if (!v7)
  {
    v102 = 0;
    v9 = 0;
    v104 = 1;
    goto LABEL_34;
  }

  v8 = v7;
  v102 = 0;
  v9 = 0;
  v10 = *v119;
  v104 = 1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v119 != v10)
      {
        objc_enumerationMutation(children);
      }

      v12 = *(*(&v118 + 1) + 8 * i);
      tv_elementType = [v12 tv_elementType];
      if (tv_elementType != 6)
      {
        if (tv_elementType == 16)
        {
          style = [v12 style];
          tv_alignment = [style tv_alignment];

          if (tv_alignment == 3)
          {
            goto LABEL_24;
          }

          if (tv_alignment == 1)
          {
            v24 = array;
LABEL_25:
            [v24 addObject:v12];
            continue;
          }

          v33 = +[TVInterfaceFactory sharedInterfaceFactory];
          titleView = [v99 titleView];
          v35 = [v33 _viewFromElement:v12 existingView:titleView];

          [v35 sizeToFit];
          v102 = v35;
        }

        else if (tv_elementType == 55)
        {
          text = [v12 text];
          string = [text string];

          attributes = [v12 attributes];
          v17 = [attributes objectForKey:@"showLargeTitle"];
          if ([v17 length])
          {
            attributes2 = [v12 attributes];
            v19 = [attributes2 objectForKey:@"showLargeTitle"];
            bOOLValue = [v19 BOOLValue];

            array = v101;
            v21 = v104;
            if ((bOOLValue & 1) == 0)
            {
              v21 = 2;
            }

            v104 = v21;
          }

          else
          {
          }

          v9 = string;
        }

        continue;
      }

      style2 = [v12 style];
      tv_alignment2 = [style2 tv_alignment];

      v27 = array;
      if (tv_alignment2 != 1)
      {
        if (tv_alignment2 != 3)
        {
          goto LABEL_21;
        }

        v27 = array2;
      }

      [v27 addObject:v12];
LABEL_21:
      style3 = [v12 style];
      tv_position = [style3 tv_position];

      if (tv_position == 10)
      {
        v30 = +[TVInterfaceFactory sharedInterfaceFactory];
        v31 = [v30 _viewFromElement:v12 existingView:0];
        rightLargeTitleButton = selfCopy->_rightLargeTitleButton;
        selfCopy->_rightLargeTitleButton = v31;

        continue;
      }

      if (!(tv_position | tv_alignment2))
      {
LABEL_24:
        v24 = array2;
        goto LABEL_25;
      }
    }

    v8 = [children countByEnumeratingWithState:&v118 objects:v124 count:16];
  }

  while (v8);
LABEL_34:
  v96 = v9;

  navigationItem = v99;
  [v99 leftBarButtonItem];
  v36 = LABEL_35:;
  view = [v36 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    view2 = [leftBarButtonItem view];
  }

  else
  {
    view2 = [(_TVBgImageLoadingViewController *)selfCopy _stackViewWithMinSpacing:15.0 layoutMargin:0.0, 0.0, 0.0, 15.0];
  }

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  view3 = [rightBarButtonItem view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rightBarButtonItem2 = [navigationItem rightBarButtonItem];
    view4 = [rightBarButtonItem2 view];
  }

  else
  {
    view4 = [(_TVBgImageLoadingViewController *)selfCopy _stackViewWithMinSpacing:15.0 layoutMargin:0.0, 15.0, 0.0, 0.0];
  }

  v106 = view4;
  v107 = view2;
  if ([array count])
  {
    v97 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array, "count")}];
    subviews = [view2 subviews];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = array;
    v45 = [obj countByEnumeratingWithState:&v114 objects:v123 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = 0;
      v48 = *v115;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v115 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v114 + 1) + 8 * j);
          if (v47 >= [subviews count])
          {
            v51 = 0;
          }

          else
          {
            v51 = [subviews objectAtIndexedSubscript:v47];
          }

          v52 = +[TVInterfaceFactory sharedInterfaceFactory];
          v53 = [v52 _viewFromElement:v50 existingView:v51];

          [v53 sizeToFit];
          if (!v51)
          {
            [v53 frame];
            v55 = v54;
            v57 = v56;
            widthAnchor = [v53 widthAnchor];
            v59 = [widthAnchor constraintEqualToConstant:v55];
            [v59 setActive:1];

            heightAnchor = [v53 heightAnchor];
            v61 = [heightAnchor constraintEqualToConstant:v57];
            [v61 setActive:1];

            [v107 insertArrangedSubview:v53 atIndex:0];
          }

          ++v47;
        }

        v46 = [obj countByEnumeratingWithState:&v114 objects:v123 count:16];
      }

      while (v46);
    }

    v62 = v97;
    navigationItem = v99;
    view2 = v107;
  }

  else
  {
    v62 = 0;
  }

  if ([array2 count])
  {
    v98 = v62;
    v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array2, "count")}];
    subviews2 = [view4 subviews];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    obja = array2;
    v65 = [obja countByEnumeratingWithState:&v110 objects:v122 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v68 = *v111;
      v69 = 0x279D6D000uLL;
      v105 = subviews2;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v111 != v68)
          {
            objc_enumerationMutation(obja);
          }

          v71 = *(*(&v110 + 1) + 8 * k);
          if (v67 >= [subviews2 count])
          {
            v72 = 0;
          }

          else
          {
            v72 = [subviews2 objectAtIndexedSubscript:v67];
          }

          sharedInterfaceFactory = [*(v69 + 1176) sharedInterfaceFactory];
          v74 = [sharedInterfaceFactory _viewFromElement:v71 existingView:v72];

          [v74 sizeToFit];
          if (!v72)
          {
            [v74 frame];
            v76 = v75;
            v78 = v77;
            widthAnchor2 = [v74 widthAnchor];
            [widthAnchor2 constraintEqualToConstant:v76];
            v80 = v66;
            v81 = v68;
            v82 = v69;
            v84 = v83 = v63;
            [v84 setActive:1];

            heightAnchor2 = [v74 heightAnchor];
            v86 = [heightAnchor2 constraintEqualToConstant:v78];
            [v86 setActive:1];

            v63 = v83;
            v69 = v82;
            v68 = v81;
            v66 = v80;
            subviews2 = v105;

            [v106 insertArrangedSubview:v74 atIndex:0];
          }

          ++v67;
        }

        v66 = [obja countByEnumeratingWithState:&v110 objects:v122 count:16];
      }

      while (v66);
    }

    v62 = v98;
    navigationItem = v99;
    view4 = v106;
    view2 = v107;
  }

  else
  {
    v63 = 0;
  }

  subviews3 = [view2 subviews];
  v88 = [subviews3 count];

  if (v88)
  {
    [view2 sizeToFit];
    v89 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:view2];
    [v62 addObject:v89];
  }

  subviews4 = [view4 subviews];
  v91 = [subviews4 count];

  if (v91)
  {
    [view4 sizeToFit];
    v92 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:view4];
    [v63 addObject:v92];
  }

  [view4 sizeToFit];
  [navigationItem setTitleView:v102];
  [navigationItem setTitle:v95];
  [navigationItem setLeftBarButtonItems:v62];
  [navigationItem setRightBarButtonItems:v63];
  [navigationItem setLeftItemsSupplementBackButton:1];
  [navigationItem setLargeTitleDisplayMode:v104];
  [navigationItem _setLargeTitleAccessoryView:selfCopy->_rightLargeTitleButton alignToBaseline:1];
  [navigationItem _setSupportsTwoLineLargeTitles:1];
  [(_TVBgImageLoadingViewController *)selfCopy updateNavigationItem:navigationItem];
  [(_TVBgImageLoadingViewController *)selfCopy setAppliedNavigationItem:0];
  parentViewController = [(_TVBgImageLoadingViewController *)selfCopy parentViewController];
  [(_TVBgImageLoadingViewController *)selfCopy _reparentNavigationItem:parentViewController];

  [(_TVBgImageLoadingViewController *)selfCopy setNeedsStatusBarAppearanceUpdate];
  navigationController = [(_TVBgImageLoadingViewController *)selfCopy navigationController];
  [navigationController setNeedsStatusBarAppearanceUpdate];
}

- (id)_stackViewWithMinSpacing:(double)spacing layoutMargin:(UIEdgeInsets)margin
{
  right = margin.right;
  bottom = margin.bottom;
  left = margin.left;
  top = margin.top;
  v9 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v9 setAxis:0];
  [v9 setDistribution:0];
  [v9 setAlignment:3];
  [v9 setSpacing:spacing];
  [v9 setLayoutMargins:{top, left, bottom, right}];
  [v9 setLayoutMarginsRelativeArrangement:1];

  return v9;
}

- (void)loadFromViewController:(void *)a1 completion:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_26CD9A000, v1, OS_LOG_TYPE_DEBUG, "_configureBgImage:backdropImage: not defined on %@. loadFromViewController:completion: aborted", &v4, 0xCu);
}

@end