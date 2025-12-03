@interface UIColorPickerViewController
- (BOOL)_allowsNoColor;
- (BOOL)_shouldUseDarkGridInDarkMode;
- (BOOL)_showsGridOnly;
- (BOOL)supportsAlpha;
- (BOOL)supportsEyedropper;
- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)size screenSize:(CGSize)screenSize;
- (NSArray)_suggestedColors;
- (UIColor)selectedColor;
- (UIColorPickerViewController)init;
- (UIColorPickerViewController)initWithCoder:(id)coder;
- (double)maximumLinearExposure;
- (id)_defaultColor;
- (id)delegate;
- (int64_t)_userInterfaceStyleForGrid;
- (void)__setSelectedColor:(id)color notifyingViewService:(BOOL)service;
- (void)_commonUIColorPickerViewControllerInit;
- (void)_dequeue_pickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile;
- (void)_pickerDidDismissEyedropper;
- (void)_pickerDidFinish;
- (void)_pickerDidShowEyedropper;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)_selectDefaultColorIfNecessary;
- (void)_setAllowsNoColor:(BOOL)color;
- (void)_setChildViewController:(id)controller;
- (void)_setSelectedColor:(id)color;
- (void)_setShouldUseDarkGridInDarkMode:(BOOL)mode;
- (void)_setShowsGridOnly:(BOOL)only;
- (void)_setSuggestedColors:(id)colors;
- (void)_setUserInterfaceStyleForGrid:(int64_t)grid;
- (void)_updateConfiguration;
- (void)_updateConfigurationIfNeeded;
- (void)beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated;
- (void)didMoveToParentViewController:(id)controller;
- (void)dismissEyedropper:(BOOL)eyedropper;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setDelegate:(id)delegate;
- (void)setMaximumLinearExposure:(double)exposure;
- (void)setSupportsAlpha:(BOOL)supportsAlpha;
- (void)setSupportsEyedropper:(BOOL)eyedropper;
- (void)setTitle:(id)title;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation UIColorPickerViewController

- (UIColorPickerViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIColorPickerViewController;
  v5 = [(UIViewController *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIColorPickerViewControllerConfiguration"];
    v7 = v6;
    if (!v6)
    {
      v7 = objc_opt_new();
    }

    objc_storeStrong(&v5->_configuration, v7);
    if (!v6)
    {
    }

    [(UIColorPickerViewController *)v5 _commonUIColorPickerViewControllerInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configuration = [(UIColorPickerViewController *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"UIColorPickerViewControllerConfiguration"];
}

- (UIColorPickerViewController)init
{
  v6.receiver = self;
  v6.super_class = UIColorPickerViewController;
  v2 = [(UIViewController *)&v6 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(_UIColorPickerViewControllerConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v3;

    [(UIColorPickerViewController *)v2 _commonUIColorPickerViewControllerInit];
  }

  return v2;
}

- (void)_commonUIColorPickerViewControllerInit
{
  v3 = objc_alloc_init(_UIColorPickerColorQueue);
  colorQueue = self->_colorQueue;
  self->_colorQueue = v3;

  [(_UIColorPickerColorQueue *)self->_colorQueue setDelegate:self];
  v5 = objc_alloc_init(_UIColorPickerSceneHostingImpl);
  hostingImpl = self->_hostingImpl;
  self->_hostingImpl = v5;

  [(_UIColorPickerViewHostingImpl *)self->_hostingImpl setDelegateColorPickerViewController:self];
  v7 = self->_hostingImpl;

  [(_UIColorPickerViewHostingImpl *)v7 setupRemoteHosting];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UIColorPickerViewController;
  [(UIViewController *)&v4 viewWillAppear:appear];
  [(UIColorPickerViewController *)self _selectDefaultColorIfNecessary];
}

- (id)_defaultColor
{
  v2 = +[UIDevice currentDevice];
  _nativeScreenGamut = [v2 _nativeScreenGamut];

  if (_nativeScreenGamut)
  {
    [UIColor colorWithDisplayP3Red:0.0 green:0.0 blue:0.0 alpha:1.0];
  }

  else
  {
    [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  }
  v4 = ;

  return v4;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  objc_storeWeak(&self->_delegate, v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v5;
  *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v7;
  if (_UIApplicationPackedMinimumDeploymentVersion() >= 0xF0000 && (~*&self->_flags & 3) == 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("UIColorPicker", &setDelegate____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "UIColorPickerViewControllerDelegate implements colorPickerViewControllerDidSelectColor: and colorPickerViewController:didSelectColor:continuously:, only colorPickerViewController:didSelectColor:continuous: will be called.", v9, 2u);
    }
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = UIColorPickerViewController;
  [(UIViewController *)&v5 loadView];
  view = [(UIViewController *)self view];
  [view setBackgroundColor:0];

  view2 = [(UIViewController *)self view];
  [view2 setAccessibilityIdentifier:@"UIColorPicker"];
}

- (void)didMoveToParentViewController:(id)controller
{
  if (!controller)
  {
    configuration = [(UIColorPickerViewController *)self configuration];
    [configuration set_isEmbedded:0];

    [(UIColorPickerViewController *)self _updateConfiguration];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  if (controller)
  {
    configuration = [(UIColorPickerViewController *)self configuration];
    [configuration set_isEmbedded:1];

    [(UIColorPickerViewController *)self _updateConfiguration];
  }
}

- (void)_updateConfiguration
{
  view = [(UIViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v29);

  activePresentationController = [(UIViewController *)self activePresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [activePresentationController _currentPresentedViewFrame];
    Width = CGRectGetWidth(v30);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = activePresentationController;
      v7 = 1;
      [v6 _setIgnoresKeyboardNotifications:1];
      [v6 _proposedSize];
      Width = v8;

      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  [activePresentationController set_shouldSuppressHDRDuringPresentation:0];
  if (Width > 0.0)
  {
    configuration = [(UIColorPickerViewController *)self configuration];
    _isEmbedded = [configuration _isEmbedded];

    _window = [(UIViewController *)self _window];
    v12 = _window;
    if (_window)
    {
      [_window frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
    }

    else
    {
      view2 = [(UIViewController *)self view];
      [view2 frame];
      v14 = v22;
      v16 = v23;
      v18 = v24;
      v20 = v25;
    }

    v26 = ((v7 | _isEmbedded) & 1) == 0 && (v31.origin.x = v14, v31.origin.y = v16, v31.size.width = v18, v31.size.height = v20, CGRectGetHeight(v31) < Width) && Width >= 550.0;
    [(_UIColorPickerViewControllerConfiguration *)self->_configuration set_preferredWidth:Width];
    [(_UIColorPickerViewControllerConfiguration *)self->_configuration set_isInPopoverPresentation:v7];
    [(_UIColorPickerViewControllerConfiguration *)self->_configuration set_useLandscapeLayout:v26];
    [(_UIColorPickerViewControllerConfiguration *)self->_configuration set_isInSheetPresentation:isKindOfClass & 1];
    [(UIColorPickerViewController *)self _setRemoteConfiguration:self->_configuration];
    [(_UIColorPickerViewHostingImpl *)self->_hostingImpl setRemoteConfiguration:self->_configuration];
  }
}

- (void)_updateConfigurationIfNeeded
{
  if (self)
  {
    if ((*&self->super._viewControllerFlags & 3u) - 1 <= 1)
    {
      [(UIColorPickerViewController *)self _updateConfiguration];
    }
  }
}

- (void)beginAppearanceTransition:(BOOL)transition animated:(BOOL)animated
{
  transitionCopy = transition;
  v6.receiver = self;
  v6.super_class = UIColorPickerViewController;
  [(UIViewController *)&v6 beginAppearanceTransition:transition animated:animated];
  if (transitionCopy)
  {
    [(UIColorPickerViewController *)self _updateConfiguration];
  }
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  v10[1] = *MEMORY[0x1E69E9840];
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = presentationControllerCopy;
    [v6 setPrefersEdgeAttachedInCompactHeight:1];
    [v6 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__UIColorPickerViewController__presentationController_prepareAdaptivePresentationController___block_invoke;
    v9[3] = &unk_1E70F9480;
    v9[4] = self;
    v7 = [UISheetPresentationControllerDetent customDetentWithIdentifier:0 resolver:v9];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 setDetents:v8];
  }
}

- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)size screenSize:(CGSize)screenSize
{
  [UIViewController defaultFormSheetSizeForScreenSize:screenSize.width, screenSize.height];
  v6 = fmax(v5, 550.0);
  result.height = v4;
  result.width = v6;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIColorPickerViewController;
  [(UIViewController *)&v3 viewWillLayoutSubviews];
  [(UIColorPickerViewController *)self _updateConfiguration];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [container preferredContentSize];

  [(UIViewController *)self setPreferredContentSize:?];
}

- (void)_setChildViewController:(id)controller
{
  v25[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  childViewController = self->_childViewController;
  if (childViewController != controllerCopy)
  {
    [(UIViewController *)childViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_childViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_childViewController removeFromParentViewController];
    objc_storeStrong(&self->_childViewController, controller);
    if (self->_childViewController)
    {
      view2 = [(UIViewController *)self view];
      view3 = [(UIViewController *)self->_childViewController view];
      [(UIViewController *)self addChildViewController:self->_childViewController];
      [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 addSubview:view3];
      v19 = MEMORY[0x1E69977A0];
      topAnchor = [view3 topAnchor];
      topAnchor2 = [view2 topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v25[0] = v22;
      leadingAnchor = [view3 leadingAnchor];
      leadingAnchor2 = [view2 leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v25[1] = v18;
      trailingAnchor = [view3 trailingAnchor];
      trailingAnchor2 = [view2 trailingAnchor];
      v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v25[2] = v10;
      bottomAnchor = [view3 bottomAnchor];
      bottomAnchor2 = [view2 bottomAnchor];
      v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v25[3] = v13;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      v15 = v14 = controllerCopy;
      [v19 activateConstraints:v15];

      controllerCopy = v14;
      [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
    }
  }
}

- (void)_selectDefaultColorIfNecessary
{
  if (!self->_selectedColor && ![(UIColorPickerViewController *)self _allowsNoColor])
  {
    _defaultColor = [(UIColorPickerViewController *)self _defaultColor];
    [(UIColorPickerViewController *)self setSelectedColor:_defaultColor];
  }
}

- (UIColor)selectedColor
{
  selectedColor = self->_selectedColor;
  if (selectedColor)
  {
    _defaultColor = selectedColor;
  }

  else
  {
    _defaultColor = [(UIColorPickerViewController *)self _defaultColor];
  }

  return _defaultColor;
}

- (void)_setSelectedColor:(id)color
{
  colorCopy = color;
  _allowsNoColor = [(UIColorPickerViewController *)self _allowsNoColor];
  v5 = colorCopy;
  if (colorCopy || _allowsNoColor)
  {
    [(UIColorPickerViewController *)self __setSelectedColor:colorCopy notifyingViewService:1];
    v5 = colorCopy;
  }
}

- (void)__setSelectedColor:(id)color notifyingViewService:(BOOL)service
{
  serviceCopy = service;
  colorCopy = color;
  if (self->_selectedColor != colorCopy)
  {
    v9 = colorCopy;
    if (colorCopy)
    {
      [(UIColorPickerViewController *)self willChangeValueForKey:@"selectedColor"];
      [(UIColorPickerViewController *)self willChangeValueForKey:@"_selectedColor"];
      objc_storeStrong(&self->_selectedColor, color);
      [(UIColorPickerViewController *)self didChangeValueForKey:@"selectedColor"];
    }

    else
    {
      [(UIColorPickerViewController *)self willChangeValueForKey:@"_selectedColor"];
      selectedColor = self->_selectedColor;
      self->_selectedColor = 0;
    }

    [(UIColorPickerViewController *)self didChangeValueForKey:@"_selectedColor"];
    colorCopy = v9;
    if (serviceCopy)
    {
      [(_UIColorPickerViewHostingImpl *)self->_hostingImpl setRemoteSelectedColor:v9];
      colorCopy = v9;
    }
  }
}

- (void)dismissEyedropper:(BOOL)eyedropper
{
  if (eyedropper)
  {
    v3 = 0;
  }

  else
  {
    v3 = 8;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
  [(_UIColorPickerViewHostingImpl *)self->_hostingImpl dismissEyedropper:?];
}

- (void)setSupportsAlpha:(BOOL)supportsAlpha
{
  v3 = supportsAlpha;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration setShowsAlpha:v3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)supportsAlpha
{
  configuration = [(UIColorPickerViewController *)self configuration];
  showsAlpha = [configuration showsAlpha];

  return showsAlpha;
}

- (void)setMaximumLinearExposure:(double)exposure
{
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration setMaxGain:exposure];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (double)maximumLinearExposure
{
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration maxGain];
  v4 = v3;

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration setTitle:titleCopy];

  v6.receiver = self;
  v6.super_class = UIColorPickerViewController;
  [(UIViewController *)&v6 setTitle:titleCopy];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (void)_setShouldUseDarkGridInDarkMode:(BOOL)mode
{
  modeCopy = mode;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration set_shouldUseDarkGridInDarkMode:modeCopy];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)_shouldUseDarkGridInDarkMode
{
  configuration = [(UIColorPickerViewController *)self configuration];
  _shouldUseDarkGridInDarkMode = [configuration _shouldUseDarkGridInDarkMode];

  return _shouldUseDarkGridInDarkMode;
}

- (void)_setUserInterfaceStyleForGrid:(int64_t)grid
{
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration set_userInterfaceStyleForGrid:grid];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (int64_t)_userInterfaceStyleForGrid
{
  configuration = [(UIColorPickerViewController *)self configuration];
  _userInterfaceStyleForGrid = [configuration _userInterfaceStyleForGrid];

  return _userInterfaceStyleForGrid;
}

- (void)_setSuggestedColors:(id)colors
{
  colorsCopy = colors;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration set_suggestedColors:colorsCopy];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (NSArray)_suggestedColors
{
  configuration = [(UIColorPickerViewController *)self configuration];
  _suggestedColors = [configuration _suggestedColors];

  return _suggestedColors;
}

- (void)_setAllowsNoColor:(BOOL)color
{
  colorCopy = color;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration set_allowsNoColor:colorCopy];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)_allowsNoColor
{
  configuration = [(UIColorPickerViewController *)self configuration];
  _allowsNoColor = [configuration _allowsNoColor];

  return _allowsNoColor;
}

- (BOOL)supportsEyedropper
{
  configuration = [(UIColorPickerViewController *)self configuration];
  _showsEyedropper = [configuration _showsEyedropper];

  return _showsEyedropper;
}

- (void)setSupportsEyedropper:(BOOL)eyedropper
{
  eyedropperCopy = eyedropper;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration set_showsEyedropper:eyedropperCopy];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)_showsGridOnly
{
  configuration = [(UIColorPickerViewController *)self configuration];
  _showsGridOnly = [configuration _showsGridOnly];

  return _showsGridOnly;
}

- (void)_setShowsGridOnly:(BOOL)only
{
  onlyCopy = only;
  configuration = [(UIColorPickerViewController *)self configuration];
  [configuration set_showsGridOnly:onlyCopy];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (void)_dequeue_pickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile
{
  volatileCopy = volatile;
  colorCopy = color;
  spaceCopy = space;
  v10 = colorCopy;
  v14 = v10;
  if (spaceCopy && (dyld_program_sdk_at_least() & 1) == 0)
  {
    UISCreateCachedColorTransform();
    v11 = v10;
    [v10 CGColor];
    v12 = CGColorTransformConvertColor();
    CGColorTransformRelease();
    v10 = [UIColor colorWithCGColor:v12];
  }

  kdebug_trace();
  [(UIColorPickerViewController *)self __setSelectedColor:v10 notifyingViewService:0];
  if (v10)
  {
    if (*&self->_flags)
    {
      WeakRetained = [(UIColorPickerViewController *)self delegate];
      [WeakRetained colorPickerViewController:self didSelectColor:v10 continuously:volatileCopy];
    }

    else
    {
      if ((*&self->_flags & 2) == 0)
      {
        goto LABEL_12;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained colorPickerViewControllerDidSelectColor:self];
    }
  }

  else
  {
    if ((*&self->_flags & 4) == 0)
    {
      goto LABEL_12;
    }

    WeakRetained = [(UIColorPickerViewController *)self delegate];
    [WeakRetained _colorPickerViewControllerDidDeselectColor:self];
  }

LABEL_12:
  kdebug_trace();
}

- (void)_pickerDidShowEyedropper
{
  obj = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];
  presentedView = [obj presentedView];
  [presentedView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view = [(UIViewController *)self view];
  [view bounds];
  v24.origin.x = v13;
  v24.origin.y = v14;
  v24.size.width = v15;
  v24.size.height = v16;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v17 = CGRectEqualToRect(v23, v24);

  if (v17)
  {
    if (obj)
    {
      objc_storeStrong(&self->_presentationController, obj);
      [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  obj = 0;
LABEL_6:
  delegate = [(UIColorPickerViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(UIColorPickerViewController *)self delegate];
    [delegate2 _colorPickerViewControllerDidShowEyedropper:self];
  }
}

- (void)_pickerDidDismissEyedropper
{
  presentationController = self->_presentationController;
  if (presentationController)
  {
    activePresentationController = [(UIViewController *)self activePresentationController];
    v5 = activePresentationController;
    if ((*&self->_flags & 8) == 0 && (!activePresentationController || ([activePresentationController dismissing] & 1) != 0 || objc_msgSend(v5, "dismissed")))
    {
      presentedViewController = [(UIPresentationController *)self->_presentationController presentedViewController];
      [presentedViewController _setTemporaryPresentationController:self->_presentationController];

      presentingViewController = [(UIPresentationController *)self->_presentationController presentingViewController];
      presentedViewController2 = [(UIPresentationController *)self->_presentationController presentedViewController];
      [presentingViewController presentViewController:presentedViewController2 animated:1 completion:0];
    }

    delegate = [(UIColorPickerViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(UIColorPickerViewController *)self delegate];
      [delegate2 _colorPickerViewControllerDidHideEyedropper:self];
    }

    presentationController = self->_presentationController;
  }

  self->_presentationController = 0;

  *&self->_flags &= ~8u;
}

- (void)_pickerDidFinish
{
  if (![(_UIColorPickerViewControllerConfiguration *)self->_configuration _isEmbedded])
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  delegate = [(UIColorPickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(UIColorPickerViewController *)self delegate];
    [delegate2 colorPickerViewControllerDidFinish:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end