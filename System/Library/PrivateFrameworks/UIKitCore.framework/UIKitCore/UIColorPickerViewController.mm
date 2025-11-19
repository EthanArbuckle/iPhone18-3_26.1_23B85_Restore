@interface UIColorPickerViewController
- (BOOL)_allowsNoColor;
- (BOOL)_shouldUseDarkGridInDarkMode;
- (BOOL)_showsGridOnly;
- (BOOL)supportsAlpha;
- (BOOL)supportsEyedropper;
- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)a3 screenSize:(CGSize)a4;
- (NSArray)_suggestedColors;
- (UIColor)selectedColor;
- (UIColorPickerViewController)init;
- (UIColorPickerViewController)initWithCoder:(id)a3;
- (double)maximumLinearExposure;
- (id)_defaultColor;
- (id)delegate;
- (int64_t)_userInterfaceStyleForGrid;
- (void)__setSelectedColor:(id)a3 notifyingViewService:(BOOL)a4;
- (void)_commonUIColorPickerViewControllerInit;
- (void)_dequeue_pickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5;
- (void)_pickerDidDismissEyedropper;
- (void)_pickerDidFinish;
- (void)_pickerDidShowEyedropper;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)_selectDefaultColorIfNecessary;
- (void)_setAllowsNoColor:(BOOL)a3;
- (void)_setChildViewController:(id)a3;
- (void)_setSelectedColor:(id)a3;
- (void)_setShouldUseDarkGridInDarkMode:(BOOL)a3;
- (void)_setShowsGridOnly:(BOOL)a3;
- (void)_setSuggestedColors:(id)a3;
- (void)_setUserInterfaceStyleForGrid:(int64_t)a3;
- (void)_updateConfiguration;
- (void)_updateConfigurationIfNeeded;
- (void)beginAppearanceTransition:(BOOL)a3 animated:(BOOL)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissEyedropper:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)setMaximumLinearExposure:(double)a3;
- (void)setSupportsAlpha:(BOOL)supportsAlpha;
- (void)setSupportsEyedropper:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation UIColorPickerViewController

- (UIColorPickerViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIColorPickerViewController;
  v5 = [(UIViewController *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIColorPickerViewControllerConfiguration"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v4 encodeObject:v5 forKey:@"UIColorPickerViewControllerConfiguration"];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIColorPickerViewController;
  [(UIViewController *)&v4 viewWillAppear:a3];
  [(UIColorPickerViewController *)self _selectDefaultColorIfNecessary];
}

- (id)_defaultColor
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _nativeScreenGamut];

  if (v3)
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
  v3 = [(UIViewController *)self view];
  [v3 setBackgroundColor:0];

  v4 = [(UIViewController *)self view];
  [v4 setAccessibilityIdentifier:@"UIColorPicker"];
}

- (void)didMoveToParentViewController:(id)a3
{
  if (!a3)
  {
    v5 = [(UIColorPickerViewController *)self configuration];
    [v5 set_isEmbedded:0];

    [(UIColorPickerViewController *)self _updateConfiguration];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  if (a3)
  {
    v4 = [(UIColorPickerViewController *)self configuration];
    [v4 set_isEmbedded:1];

    [(UIColorPickerViewController *)self _updateConfiguration];
  }
}

- (void)_updateConfiguration
{
  v3 = [(UIViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v29);

  v27 = [(UIViewController *)self activePresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v27 _currentPresentedViewFrame];
    Width = CGRectGetWidth(v30);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v27;
      v7 = 1;
      [v6 _setIgnoresKeyboardNotifications:1];
      [v6 _proposedSize];
      Width = v8;

      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  [v27 set_shouldSuppressHDRDuringPresentation:0];
  if (Width > 0.0)
  {
    v9 = [(UIColorPickerViewController *)self configuration];
    v10 = [v9 _isEmbedded];

    v11 = [(UIViewController *)self _window];
    v12 = v11;
    if (v11)
    {
      [v11 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
    }

    else
    {
      v21 = [(UIViewController *)self view];
      [v21 frame];
      v14 = v22;
      v16 = v23;
      v18 = v24;
      v20 = v25;
    }

    v26 = ((v7 | v10) & 1) == 0 && (v31.origin.x = v14, v31.origin.y = v16, v31.size.width = v18, v31.size.height = v20, CGRectGetHeight(v31) < Width) && Width >= 550.0;
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

- (void)beginAppearanceTransition:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UIColorPickerViewController;
  [(UIViewController *)&v6 beginAppearanceTransition:a3 animated:a4];
  if (v4)
  {
    [(UIColorPickerViewController *)self _updateConfiguration];
  }
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)a3 screenSize:(CGSize)a4
{
  [UIViewController defaultFormSheetSizeForScreenSize:a4.width, a4.height];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  [a3 preferredContentSize];

  [(UIViewController *)self setPreferredContentSize:?];
}

- (void)_setChildViewController:(id)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  childViewController = self->_childViewController;
  if (childViewController != v5)
  {
    [(UIViewController *)childViewController willMoveToParentViewController:0];
    v7 = [(UIViewController *)self->_childViewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_childViewController removeFromParentViewController];
    objc_storeStrong(&self->_childViewController, a3);
    if (self->_childViewController)
    {
      v8 = [(UIViewController *)self view];
      v9 = [(UIViewController *)self->_childViewController view];
      [(UIViewController *)self addChildViewController:self->_childViewController];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 addSubview:v9];
      v19 = MEMORY[0x1E69977A0];
      v24 = [v9 topAnchor];
      v23 = [v8 topAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v25[0] = v22;
      v21 = [v9 leadingAnchor];
      v20 = [v8 leadingAnchor];
      v18 = [v21 constraintEqualToAnchor:v20];
      v25[1] = v18;
      v17 = [v9 trailingAnchor];
      v16 = [v8 trailingAnchor];
      v10 = [v17 constraintEqualToAnchor:v16];
      v25[2] = v10;
      v11 = [v9 bottomAnchor];
      v12 = [v8 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v25[3] = v13;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      v15 = v14 = v5;
      [v19 activateConstraints:v15];

      v5 = v14;
      [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
    }
  }
}

- (void)_selectDefaultColorIfNecessary
{
  if (!self->_selectedColor && ![(UIColorPickerViewController *)self _allowsNoColor])
  {
    v3 = [(UIColorPickerViewController *)self _defaultColor];
    [(UIColorPickerViewController *)self setSelectedColor:v3];
  }
}

- (UIColor)selectedColor
{
  selectedColor = self->_selectedColor;
  if (selectedColor)
  {
    v3 = selectedColor;
  }

  else
  {
    v3 = [(UIColorPickerViewController *)self _defaultColor];
  }

  return v3;
}

- (void)_setSelectedColor:(id)a3
{
  v6 = a3;
  v4 = [(UIColorPickerViewController *)self _allowsNoColor];
  v5 = v6;
  if (v6 || v4)
  {
    [(UIColorPickerViewController *)self __setSelectedColor:v6 notifyingViewService:1];
    v5 = v6;
  }
}

- (void)__setSelectedColor:(id)a3 notifyingViewService:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_selectedColor != v7)
  {
    v9 = v7;
    if (v7)
    {
      [(UIColorPickerViewController *)self willChangeValueForKey:@"selectedColor"];
      [(UIColorPickerViewController *)self willChangeValueForKey:@"_selectedColor"];
      objc_storeStrong(&self->_selectedColor, a3);
      [(UIColorPickerViewController *)self didChangeValueForKey:@"selectedColor"];
    }

    else
    {
      [(UIColorPickerViewController *)self willChangeValueForKey:@"_selectedColor"];
      selectedColor = self->_selectedColor;
      self->_selectedColor = 0;
    }

    [(UIColorPickerViewController *)self didChangeValueForKey:@"_selectedColor"];
    v7 = v9;
    if (v4)
    {
      [(_UIColorPickerViewHostingImpl *)self->_hostingImpl setRemoteSelectedColor:v9];
      v7 = v9;
    }
  }
}

- (void)dismissEyedropper:(BOOL)a3
{
  if (a3)
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
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 setShowsAlpha:v3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)supportsAlpha
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 showsAlpha];

  return v3;
}

- (void)setMaximumLinearExposure:(double)a3
{
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 setMaxGain:a3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (double)maximumLinearExposure
{
  v2 = [(UIColorPickerViewController *)self configuration];
  [v2 maxGain];
  v4 = v3;

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 setTitle:v4];

  v6.receiver = self;
  v6.super_class = UIColorPickerViewController;
  [(UIViewController *)&v6 setTitle:v4];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (void)_setShouldUseDarkGridInDarkMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 set_shouldUseDarkGridInDarkMode:v3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)_shouldUseDarkGridInDarkMode
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 _shouldUseDarkGridInDarkMode];

  return v3;
}

- (void)_setUserInterfaceStyleForGrid:(int64_t)a3
{
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 set_userInterfaceStyleForGrid:a3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (int64_t)_userInterfaceStyleForGrid
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 _userInterfaceStyleForGrid];

  return v3;
}

- (void)_setSuggestedColors:(id)a3
{
  v4 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 set_suggestedColors:v4];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (NSArray)_suggestedColors
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 _suggestedColors];

  return v3;
}

- (void)_setAllowsNoColor:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 set_allowsNoColor:v3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)_allowsNoColor
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 _allowsNoColor];

  return v3;
}

- (BOOL)supportsEyedropper
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 _showsEyedropper];

  return v3;
}

- (void)setSupportsEyedropper:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 set_showsEyedropper:v3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (BOOL)_showsGridOnly
{
  v2 = [(UIColorPickerViewController *)self configuration];
  v3 = [v2 _showsGridOnly];

  return v3;
}

- (void)_setShowsGridOnly:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIColorPickerViewController *)self configuration];
  [v5 set_showsGridOnly:v3];

  [(UIColorPickerViewController *)self _updateConfigurationIfNeeded];
}

- (void)_dequeue_pickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v14 = v10;
  if (v9 && (dyld_program_sdk_at_least() & 1) == 0)
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
      [WeakRetained colorPickerViewController:self didSelectColor:v10 continuously:v5];
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
  v3 = [obj presentedView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIViewController *)self view];
  [v12 bounds];
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
  v18 = [(UIColorPickerViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(UIColorPickerViewController *)self delegate];
    [v20 _colorPickerViewControllerDidShowEyedropper:self];
  }
}

- (void)_pickerDidDismissEyedropper
{
  presentationController = self->_presentationController;
  if (presentationController)
  {
    v4 = [(UIViewController *)self activePresentationController];
    v5 = v4;
    if ((*&self->_flags & 8) == 0 && (!v4 || ([v4 dismissing] & 1) != 0 || objc_msgSend(v5, "dismissed")))
    {
      v6 = [(UIPresentationController *)self->_presentationController presentedViewController];
      [v6 _setTemporaryPresentationController:self->_presentationController];

      v7 = [(UIPresentationController *)self->_presentationController presentingViewController];
      v8 = [(UIPresentationController *)self->_presentationController presentedViewController];
      [v7 presentViewController:v8 animated:1 completion:0];
    }

    v9 = [(UIColorPickerViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(UIColorPickerViewController *)self delegate];
      [v11 _colorPickerViewControllerDidHideEyedropper:self];
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
    v3 = [(UIViewController *)self presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = [(UIColorPickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIColorPickerViewController *)self delegate];
    [v6 colorPickerViewControllerDidFinish:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end