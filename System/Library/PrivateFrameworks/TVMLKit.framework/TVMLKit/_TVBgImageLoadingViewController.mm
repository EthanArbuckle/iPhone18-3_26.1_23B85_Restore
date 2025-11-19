@interface _TVBgImageLoadingViewController
+ (id)_decorateImage:(id)a3 decorator:(id)a4;
- (BOOL)_isNewiOSTVApp;
- (CGSize)_backgroundImageProxySize;
- (_TVBgImageLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_stackViewWithMinSpacing:(double)a3 layoutMargin:(UIEdgeInsets)a4;
- (void)_dismissViewController:(id)a3;
- (void)_reparentNavigationItem:(id)a3;
- (void)_updateNavigationBarPadding;
- (void)_updateNavigationItem;
- (void)configureAppearanceTransition;
- (void)dealloc;
- (void)loadFromViewController:(id)a3 completion:(id)a4;
- (void)updateNavigationItem:(id)a3;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _TVBgImageLoadingViewController

- (_TVBgImageLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = _TVBgImageLoadingViewController;
  v4 = [(_TVBgImageLoadingViewController *)&v7 initWithNibName:a3 bundle:a4];
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

- (void)updateWithViewElement:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 children];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 tv_elementType] == 31)
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (self->_navigationItemElement)
  {
    v13 = [v8 updateType];
    objc_storeStrong(&self->_navigationItemElement, v8);
    if (!v13)
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidAppear:a3];
  self->_loaded = 1;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v5 viewDidDisappear:a3];
  v4 = [(_TVBgImageLoadingViewController *)self navigationController];

  if (!v4)
  {
    self->_loaded = 0;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVBgImageLoadingViewController;
  [(_TVBgImageLoadingViewController *)&v5 viewWillAppear:a3];
  [(_TVBgImageLoadingViewController *)self _updateNavigationBarPadding];
  v4 = [(_TVBgImageLoadingViewController *)self parentViewController];
  [(_TVBgImageLoadingViewController *)self _reparentNavigationItem:v4];

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
      v4 = [(_TVBgImageLoadingViewController *)self navigationItem];
      v5 = [v4 title];
      if (v5)
      {
      }

      else
      {
        v6 = [(_TVBgImageLoadingViewController *)self navigationItem];
        v7 = [v6 titleView];

        if (v7)
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

  v8 = [(_TVBgImageLoadingViewController *)self transitionCoordinator];

  if (v3 <= 0.0 || v8 == 0)
  {
    v10 = [(_TVBgImageLoadingViewController *)self navigationController];
    v13 = [v10 navigationBar];

    v11 = [MEMORY[0x277D75348] tvmlkit_keyColor];
    [v13 setTintColor:v11];

    [v13 _setBackgroundOpacity:v3];
    [v13 _setTitleOpacity:v3];
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = [(_TVBgImageLoadingViewController *)self transitionCoordinator];
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
    [v12 animateAlongsideTransition:v16 completion:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

- (void)loadFromViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_bgImageLoadingOptions.respondsToConfigureBgImageBackdropImage)
  {
    v12 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVBgImageLoadingViewController loadFromViewController:v12 completion:?];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_16;
  }

  v8 = [(_TVBgImageLoadingViewController *)self _backgroundImageProxy];
  imageProxy = self->_imageProxy;
  self->_imageProxy = v8;

  v10 = [self->_imageProxy isImageAvailable];
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
    v14 = v7;
    v20 = v14;
    v23 = v10;
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
    if (v7)
    {
      (*(v7 + 2))(v7, 1, 0);
    }
  }

LABEL_16:
}

+ (id)_decorateImage:(id)a3 decorator:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = +[TVImage imageWithCGImageRef:preserveAlpha:](TVImage, "imageWithCGImageRef:preserveAlpha:", [v5 CGImage], 0);
    v8 = v7;
    if (v6 && v7)
    {
      [v5 size];
      v9 = [v6 decorate:v8 scaledWithSize:1 croppedToFit:?];

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateNavigationItem:(id)a3
{
  v3 = a3;
  [v3 setSearchController:0];
  [v3 setHidesSearchBarWhenScrolling:0];
}

- (void)_dismissViewController:(id)a3
{
  v9 = +[_TVModalPresenter presenter];
  v4 = [v9 modalRootViewController];
  v5 = [(_TVBgImageLoadingViewController *)self navigationController];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v4 == v5)
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
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];
  v4 = [v3 isEqualToString:@"AppleTV"];

  return v4;
}

- (void)_reparentNavigationItem:(id)a3
{
  v31 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(_TVBgImageLoadingViewController *)self appliedNavigationItem])
  {
    v5 = [(_TVBgImageLoadingViewController *)self navigationItem];
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

    v7 = [v5 title];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;

    v11 = [v5 leftBarButtonItems];
    v30 = [v11 copy];

    v12 = [v5 rightBarButtonItems];
    v13 = [v12 copy];

    v28 = [v5 titleView];
    v14 = [(_TVBgImageLoadingViewController *)self _isNewiOSTVApp];
    v15 = [(_TVBgImageLoadingViewController *)self presentingViewController];

    v27 = v14;
    if (v15 && !v14)
    {
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__dismissViewController_];
      v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count") + 1}];
      [v17 addObject:v16];
      v18 = [v17 copy];

      v13 = v18;
    }

    v26 = [v5 leftItemsSupplementBackButton];
    v19 = [v5 largeTitleDisplayMode];
    if ([(_TVBgImageLoadingViewController *)self _overrideLargeTitleDisplayMode])
    {
      v19 = [(_TVBgImageLoadingViewController *)self _overrideLargeTitleDisplayMode];
    }

    v20 = v8 == 0;
    v21 = [v5 _largeTitleAccessoryView];
    v22 = [v5 _supportsTwoLineLargeTitles];
    v23 = [v31 navigationItem];
    [v23 setTitle:v10];

    [v23 setTitleView:v28];
    [v23 setLeftBarButtonItems:v30];
    [v23 setRightBarButtonItems:v13];
    [v23 setLeftItemsSupplementBackButton:v26];
    if (v19 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v19;
    }

    if ((v20 & isKindOfClass) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24;
    }

    [v23 setLargeTitleDisplayMode:v25];
    [v23 _setLargeTitleAccessoryView:v21 alignToBaseline:!v27];
    [v23 _setSupportsTwoLineLargeTitles:v22];
    [(_TVBgImageLoadingViewController *)self updateNavigationItem:v23];
    [(_TVBgImageLoadingViewController *)self setAppliedNavigationItem:1];
  }

  else
  {
    v4 = v31;
    if (v31)
    {
      goto LABEL_24;
    }

    [(_TVBgImageLoadingViewController *)self setAppliedNavigationItem:0];
  }

  v4 = v31;
LABEL_24:
}

- (void)_updateNavigationBarPadding
{
  if (self->_navigationItemElement)
  {
    v3 = [(_TVBgImageLoadingViewController *)self navigationController];
    v4 = +[_TVModalPresenter presenter];
    v5 = [v4 modalRootViewController];

    if (v3 != v5)
    {
      v6 = [(IKViewElement *)self->_navigationItemElement style];
      [v6 tv_padding];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [(_TVBgImageLoadingViewController *)self navigationController];
      v16 = [v15 navigationBar];
      [v16 layoutMargins];
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

      v24 = [(_TVBgImageLoadingViewController *)self navigationController];
      v25 = [v24 navigationBar];
      [v25 setLayoutMargins:{v8, v10, v12, v14}];

      v27 = [(_TVBgImageLoadingViewController *)self navigationController];
      v26 = [v27 navigationBar];
      [v26 setNeedsLayout];
    }
  }
}

- (void)_updateNavigationItem
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v103 = [MEMORY[0x277CBEB18] array];
  v4 = [(_TVBgImageLoadingViewController *)self navigationItem];
  v100 = self;
  v101 = v3;
  navigationItemElement = self->_navigationItemElement;
  v99 = v4;
  if (!navigationItemElement)
  {
    v102 = 0;
    v104 = 1;
    [v4 leftBarButtonItem];
    goto LABEL_35;
  }

  v6 = [(IKViewElement *)navigationItemElement children];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v118 objects:v124 count:16];
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
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v118 + 1) + 8 * i);
      v13 = [v12 tv_elementType];
      if (v13 != 6)
      {
        if (v13 == 16)
        {
          v22 = [v12 style];
          v23 = [v22 tv_alignment];

          if (v23 == 3)
          {
            goto LABEL_24;
          }

          if (v23 == 1)
          {
            v24 = v3;
LABEL_25:
            [v24 addObject:v12];
            continue;
          }

          v33 = +[TVInterfaceFactory sharedInterfaceFactory];
          v34 = [v99 titleView];
          v35 = [v33 _viewFromElement:v12 existingView:v34];

          [v35 sizeToFit];
          v102 = v35;
        }

        else if (v13 == 55)
        {
          v14 = [v12 text];
          v15 = [v14 string];

          v16 = [v12 attributes];
          v17 = [v16 objectForKey:@"showLargeTitle"];
          if ([v17 length])
          {
            v18 = [v12 attributes];
            v19 = [v18 objectForKey:@"showLargeTitle"];
            v20 = [v19 BOOLValue];

            v3 = v101;
            v21 = v104;
            if ((v20 & 1) == 0)
            {
              v21 = 2;
            }

            v104 = v21;
          }

          else
          {
          }

          v9 = v15;
        }

        continue;
      }

      v25 = [v12 style];
      v26 = [v25 tv_alignment];

      v27 = v3;
      if (v26 != 1)
      {
        if (v26 != 3)
        {
          goto LABEL_21;
        }

        v27 = v103;
      }

      [v27 addObject:v12];
LABEL_21:
      v28 = [v12 style];
      v29 = [v28 tv_position];

      if (v29 == 10)
      {
        v30 = +[TVInterfaceFactory sharedInterfaceFactory];
        v31 = [v30 _viewFromElement:v12 existingView:0];
        rightLargeTitleButton = v100->_rightLargeTitleButton;
        v100->_rightLargeTitleButton = v31;

        continue;
      }

      if (!(v29 | v26))
      {
LABEL_24:
        v24 = v103;
        goto LABEL_25;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v118 objects:v124 count:16];
  }

  while (v8);
LABEL_34:
  v96 = v9;

  v4 = v99;
  [v99 leftBarButtonItem];
  v36 = LABEL_35:;
  v37 = [v36 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [v4 leftBarButtonItem];
    v39 = [v38 view];
  }

  else
  {
    v39 = [(_TVBgImageLoadingViewController *)v100 _stackViewWithMinSpacing:15.0 layoutMargin:0.0, 0.0, 0.0, 15.0];
  }

  v40 = [v4 rightBarButtonItem];
  v41 = [v40 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [v4 rightBarButtonItem];
    v43 = [v42 view];
  }

  else
  {
    v43 = [(_TVBgImageLoadingViewController *)v100 _stackViewWithMinSpacing:15.0 layoutMargin:0.0, 15.0, 0.0, 0.0];
  }

  v106 = v43;
  v107 = v39;
  if ([v3 count])
  {
    v97 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v44 = [v39 subviews];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v3;
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
          if (v47 >= [v44 count])
          {
            v51 = 0;
          }

          else
          {
            v51 = [v44 objectAtIndexedSubscript:v47];
          }

          v52 = +[TVInterfaceFactory sharedInterfaceFactory];
          v53 = [v52 _viewFromElement:v50 existingView:v51];

          [v53 sizeToFit];
          if (!v51)
          {
            [v53 frame];
            v55 = v54;
            v57 = v56;
            v58 = [v53 widthAnchor];
            v59 = [v58 constraintEqualToConstant:v55];
            [v59 setActive:1];

            v60 = [v53 heightAnchor];
            v61 = [v60 constraintEqualToConstant:v57];
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
    v4 = v99;
    v39 = v107;
  }

  else
  {
    v62 = 0;
  }

  if ([v103 count])
  {
    v98 = v62;
    v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v103, "count")}];
    v64 = [v43 subviews];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    obja = v103;
    v65 = [obja countByEnumeratingWithState:&v110 objects:v122 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v68 = *v111;
      v69 = 0x279D6D000uLL;
      v105 = v64;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v111 != v68)
          {
            objc_enumerationMutation(obja);
          }

          v71 = *(*(&v110 + 1) + 8 * k);
          if (v67 >= [v64 count])
          {
            v72 = 0;
          }

          else
          {
            v72 = [v64 objectAtIndexedSubscript:v67];
          }

          v73 = [*(v69 + 1176) sharedInterfaceFactory];
          v74 = [v73 _viewFromElement:v71 existingView:v72];

          [v74 sizeToFit];
          if (!v72)
          {
            [v74 frame];
            v76 = v75;
            v78 = v77;
            v79 = [v74 widthAnchor];
            [v79 constraintEqualToConstant:v76];
            v80 = v66;
            v81 = v68;
            v82 = v69;
            v84 = v83 = v63;
            [v84 setActive:1];

            v85 = [v74 heightAnchor];
            v86 = [v85 constraintEqualToConstant:v78];
            [v86 setActive:1];

            v63 = v83;
            v69 = v82;
            v68 = v81;
            v66 = v80;
            v64 = v105;

            [v106 insertArrangedSubview:v74 atIndex:0];
          }

          ++v67;
        }

        v66 = [obja countByEnumeratingWithState:&v110 objects:v122 count:16];
      }

      while (v66);
    }

    v62 = v98;
    v4 = v99;
    v43 = v106;
    v39 = v107;
  }

  else
  {
    v63 = 0;
  }

  v87 = [v39 subviews];
  v88 = [v87 count];

  if (v88)
  {
    [v39 sizeToFit];
    v89 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v39];
    [v62 addObject:v89];
  }

  v90 = [v43 subviews];
  v91 = [v90 count];

  if (v91)
  {
    [v43 sizeToFit];
    v92 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v43];
    [v63 addObject:v92];
  }

  [v43 sizeToFit];
  [v4 setTitleView:v102];
  [v4 setTitle:v95];
  [v4 setLeftBarButtonItems:v62];
  [v4 setRightBarButtonItems:v63];
  [v4 setLeftItemsSupplementBackButton:1];
  [v4 setLargeTitleDisplayMode:v104];
  [v4 _setLargeTitleAccessoryView:v100->_rightLargeTitleButton alignToBaseline:1];
  [v4 _setSupportsTwoLineLargeTitles:1];
  [(_TVBgImageLoadingViewController *)v100 updateNavigationItem:v4];
  [(_TVBgImageLoadingViewController *)v100 setAppliedNavigationItem:0];
  v93 = [(_TVBgImageLoadingViewController *)v100 parentViewController];
  [(_TVBgImageLoadingViewController *)v100 _reparentNavigationItem:v93];

  [(_TVBgImageLoadingViewController *)v100 setNeedsStatusBarAppearanceUpdate];
  v94 = [(_TVBgImageLoadingViewController *)v100 navigationController];
  [v94 setNeedsStatusBarAppearanceUpdate];
}

- (id)_stackViewWithMinSpacing:(double)a3 layoutMargin:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v9 setAxis:0];
  [v9 setDistribution:0];
  [v9 setAlignment:3];
  [v9 setSpacing:a3];
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