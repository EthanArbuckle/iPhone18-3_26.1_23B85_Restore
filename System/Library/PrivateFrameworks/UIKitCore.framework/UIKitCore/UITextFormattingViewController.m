@interface UITextFormattingViewController
- (BOOL)_adjustAttributesInTextStorage:(id)a3 atRange:(_NSRange)a4 forChangeValue:(id)a5;
- (BOOL)_useChildViewWidthForContentSize;
- (BOOL)_useLandscapeLayout;
- (BOOL)_useLandscapeLayoutForSize:(CGSize)a3;
- (CGSize)_computeContentSize;
- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)a3 screenSize:(CGSize)a4;
- (UIResponderStandardEditActions)_editResponder;
- (UITextFormattingViewController)init;
- (UITextFormattingViewController)initWithCoder:(id)a3;
- (UITextFormattingViewController)initWithConfiguration:(id)a3;
- (UITextFormattingViewControllerDelegate)delegate;
- (UITextFormattingViewControllerFormattingDescriptor)formattingDescriptor;
- (_UITextFormattingViewControllerInternalDelegate)_internalDelegate;
- (double)_preferredCornerRadiusForAnimationOptionsSheet;
- (id)_scrollView;
- (id)_textView;
- (int64_t)_backdropViewStyle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)_applyTextViewHighlightWithChangeValue:(id)a3;
- (void)_cleanupForEditResponder;
- (void)_commonInit;
- (void)_invokeEditResponderAction:(SEL)a3;
- (void)_invokeEditResponderAction:(SEL)a3 withArgument:(id)a4;
- (void)_modifyKeyboardTrackingIfNeededForKeyboardSuppression;
- (void)_modifyKeyboardTrackingIfNeededForType:(unint64_t)a3 fromFrame:(CGRect)a4 toFrame:(CGRect)a5 start:(BOOL)a6;
- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4;
- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4;
- (void)_presentTypographySettingsForFont:(id)a3;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)_reconfigureViewHierarchyForParentController:(id)a3;
- (void)_resetDetentsForSheetController:(id)a3 invalidate:(BOOL)a4;
- (void)_resumeKeyboardSuppressionIfNeeded;
- (void)_sendUpdatesToEditResponder:(id)a3;
- (void)_setChildViewController:(id)a3;
- (void)_setEditResponder:(id)a3;
- (void)_setupForEditResponder;
- (void)_startSuppressingKeyboardForTextFormatting;
- (void)_stopSuppressingKeyboardForTextFormatting;
- (void)_textFormattingDidChangeValue:(id)a3 textAttributes:(id)a4;
- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4;
- (void)_textFormattingDidFinish;
- (void)_textFormattingRequestsFirstResponderResignation;
- (void)_textFormattingRequestsFirstResponderRestoration;
- (void)_textViewFormattingDidBegin;
- (void)_textViewFormattingDidEnd;
- (void)_textViewFormattingWillBegin;
- (void)_textViewFormattingWillEnd;
- (void)_typographySettingsViewControllerDidUpdateFont:(id)a3;
- (void)_updateBackdropView;
- (void)_updateChildControllersConfiguration;
- (void)_updateContentSizeForAppearance:(BOOL)a3;
- (void)_updateDisabledComponents;
- (void)_updateFormattingDescriptor:(id)a3;
- (void)_updateInternalConfigurationProperties;
- (void)_updateNavBarVisibility;
- (void)_updateScrollViewContentSizeIfNeeded;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)colorPickerViewControllerDidFinish:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fontPickerViewControllerDidCancel:(id)a3;
- (void)fontPickerViewControllerDidPickFont:(id)a3;
- (void)loadView;
- (void)modifyKeyboardTrackingIfNeededForType:(unint64_t)a3 start:(BOOL)a4 force:(BOOL)a5 immediate:(BOOL)a6;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setFormattingDescriptor:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation UITextFormattingViewController

- (void)_modifyKeyboardTrackingIfNeededForKeyboardSuppression
{
  v2 = self;
  sub_188F7A85C();
}

- (void)modifyKeyboardTrackingIfNeededForType:(unint64_t)a3 start:(BOOL)a4 force:(BOOL)a5 immediate:(BOOL)a6
{
  v10 = self;
  sub_188F7A9FC(a3, a4, a5, a6);
}

- (void)_modifyKeyboardTrackingIfNeededForType:(unint64_t)a3 fromFrame:(CGRect)a4 toFrame:(CGRect)a5 start:(BOOL)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v16 = self;
  sub_188F7AEA4(a3, a6, v14, v13, v12, v11, x, y, width, height);
}

- (void)_setupForEditResponder
{
  v2 = self;
  sub_188F7B2B8();
}

- (void)_cleanupForEditResponder
{
  v3 = objc_opt_self();
  v5 = self;
  v4 = [v3 defaultCenter];
  [v4 removeObserver_];
}

- (void)_resumeKeyboardSuppressionIfNeeded
{
  v2 = self;
  sub_188F7B610();
}

- (BOOL)_adjustAttributesInTextStorage:(id)a3 atRange:(_NSRange)a4 forChangeValue:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_188FE6F7C(v9, location, length, v10);
  LOBYTE(length) = v12;

  return length & 1;
}

- (UITextFormattingViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewController *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UITextFormattingViewControllerConfiguration"];
    v7 = v6;
    if (!v6)
    {
      v7 = objc_alloc_init(UITextFormattingViewControllerConfiguration);
    }

    objc_storeStrong(&v5->_configuration, v7);
    if (!v6)
    {
    }
  }

  return v5;
}

- (UITextFormattingViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITextFormattingViewController;
  v5 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(UITextFormattingViewController *)v5 _commonInit];
  }

  return v5;
}

- (UITextFormattingViewController)init
{
  v6.receiver = self;
  v6.super_class = UITextFormattingViewController;
  v2 = [(UIViewController *)&v6 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(UITextFormattingViewControllerConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v3;

    [(UITextFormattingViewController *)v2 _commonInit];
  }

  return v2;
}

- (void)_commonInit
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  containerView = self->_containerView;
  self->_containerView = v3;

  v5 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v5;

  v7 = objc_opt_new();
  contentStackView = self->_contentStackView;
  self->_contentStackView = v7;

  [(UIStackView *)self->_contentStackView setAxis:1];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v9 = qword_1ED49AEF0;
  v28 = qword_1ED49AEF0;
  if (!qword_1ED49AEF0)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __get_TFTextFormattingContentViewControllerClass_block_invoke;
    v23[3] = &unk_1E70F2F20;
    v24 = &v25;
    TextFormattingUILibraryCore();
    v26[3] = objc_getClass("_TFTextFormattingContentViewController");
    qword_1ED49AEF0 = *(v24[1] + 24);
    v9 = v26[3];
  }

  v10 = v9;
  _Block_object_dispose(&v25, 8);
  v11 = objc_alloc_init(v9);
  contentViewController = self->_contentViewController;
  self->_contentViewController = v11;

  v13 = self->_contentViewController;
  if (v13)
  {
    [(_TFTextFormattingContentViewController *)v13 loadView];
  }

  else
  {
    v14 = *(__UILogGetCategoryCachedImpl("TextFormattingUI", &_MergedGlobals_7_17) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23[0]) = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "TextFormattingUI was not loaded!", v23, 2u);
    }
  }

  v15 = objc_alloc_init(_UITextFormattingSceneHostingImpl);
  hostingImpl = self->_hostingImpl;
  self->_hostingImpl = v15;

  [(_UITextFormattingViewHostingImpl *)self->_hostingImpl setDelegateTextFormattingViewController:self];
  [(UIViewController *)self setPreferredContentSize:375.0, 196.0];
  v17 = objc_opt_self();
  v30[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v19 = [(UIViewController *)self registerForTraitChanges:v18 withTarget:self action:sel__updateInternalConfigurationProperties];

  v20 = objc_opt_self();
  v29 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v22 = [(UIViewController *)self registerForTraitChanges:v21 withTarget:self action:sel__onUserInterfaceStyleChange];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewController *)self configuration];
  [v4 encodeObject:v5 forKey:@"UITextFormattingViewControllerConfiguration"];
}

- (void)dealloc
{
  [(UITextFormattingViewController *)self _cleanupForEditResponder];
  v3.receiver = self;
  v3.super_class = UITextFormattingViewController;
  [(UIViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewWillAppear:a3];
  [(UITextFormattingViewController *)self _textViewFormattingWillBegin];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewIsAppearing:a3];
  [(UITextFormattingViewController *)self _updateNavBarVisibility];
  [(UITextFormattingViewController *)self _updateInternalConfigurationProperties];
  [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
  [(UITextFormattingViewController *)self _updateContentSizeForAppearance:1];
  [(UITextFormattingViewController *)self _updateDisabledComponents];
  [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:2 start:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = UITextFormattingViewController;
  [(UIViewController *)&v8 viewDidAppear:a3];
  [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:2 start:0];
  [(UITextFormattingViewController *)self _textViewFormattingDidBegin];
  v4 = [(UITextFormattingViewController *)self configuration];
  if ([v4 _isTextAnimationsConfiguration])
  {
    v5 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
    v6 = [v5 _textFormattingViewController];

    if (v6 != self)
    {
      return;
    }

    v7 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
    v4 = [v7 _textFormattingResponder];

    if (v4 && ([v4 isFirstResponder] & 1) == 0)
    {
      if ([v4 canBecomeFirstResponder])
      {
        [v4 becomeFirstResponder];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewWillDisappear:a3];
  if ([(UIViewController *)self isBeingDismissed])
  {
    [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:3 start:1];
  }

  [(UITextFormattingViewController *)self _textViewFormattingWillEnd];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = UITextFormattingViewController;
  [(UIViewController *)&v9 viewDidDisappear:a3];
  if ([(UIViewController *)self isBeingDismissed])
  {
    [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:3 start:0];
  }

  if ([(UIViewController *)self isBeingDismissed])
  {
    WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained(&self->_internalDelegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_internalDelegate);
        [v8 _textFormattingDidDisappear:self];
      }
    }
  }

  if ([(UIViewController *)self isBeingDismissed]&& !self->_shouldSkipStoppingKeyboardSuppressionOnDidDisappear)
  {
    [(UITextFormattingViewController *)self _stopSuppressingKeyboardForTextFormatting];
  }

  [(UITextFormattingViewController *)self _textViewFormattingDidEnd];
}

- (void)loadView
{
  v49[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(UIViewController *)self setView:v3];

  if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _allowContentToScroll])
  {
    v4 = objc_opt_new();
    [(UIView *)v4 setClipsToBounds:0];
    [(UIView *)v4 setShowsHorizontalScrollIndicator:0];
    [(UIView *)v4 setShowsVerticalScrollIndicator:0];
    [(UIView *)v4 setDirectionalLockEnabled:1];
    [(UIView *)v4 addSubview:self->_contentView];
    containerView = self->_containerView;
    self->_containerView = v4;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = self->_containerView;
    self->_containerView = v6;

    [(UIView *)self->_containerView addSubview:self->_contentView];
    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = MEMORY[0x1E69977A0];
    v46 = [(UIView *)self->_contentView topAnchor];
    v44 = [(UIView *)self->_containerView topAnchor];
    v42 = [v46 constraintEqualToAnchor:v44];
    v49[0] = v42;
    v40 = [(UIView *)self->_contentView leadingAnchor];
    v38 = [(UIView *)self->_containerView leadingAnchor];
    v8 = [v40 constraintEqualToAnchor:v38];
    v49[1] = v8;
    v9 = [(UIView *)self->_contentView trailingAnchor];
    v10 = [(UIView *)self->_containerView trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v49[2] = v11;
    v12 = [(UIView *)self->_contentView bottomAnchor];
    v13 = [(UIView *)self->_containerView bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v49[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v36 activateConstraints:v15];
  }

  [(UIView *)self->_contentView addSubview:self->_contentStackView];
  [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [(UIStackView *)self->_contentStackView axis];
  v33 = MEMORY[0x1E69977A0];
  v45 = [(UIView *)self->_contentStackView topAnchor];
  v47 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  v43 = [v47 topAnchor];
  v41 = [v45 constraintEqualToAnchor:v43];
  v48[0] = v41;
  v35 = [(UIView *)self->_contentStackView leadingAnchor];
  v37 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  v34 = [v37 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v34];
  v48[1] = v32;
  v31 = [(UIView *)self->_contentStackView trailingAnchor];
  v16 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  v17 = [v16 trailingAnchor];
  v18 = [v31 constraintEqualToAnchor:v17];
  v48[2] = v18;
  v19 = [(UIView *)self->_contentStackView bottomAnchor];
  v20 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v48[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  [v33 activateConstraints:v23];

  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    v25 = [(_TFTextFormattingContentViewController *)contentViewController view];
    [v25 removeFromSuperview];

    [(_TFTextFormattingContentViewController *)self->_contentViewController removeFromParentViewController];
    [(_TFTextFormattingContentViewController *)self->_contentViewController willMoveToParentViewController:self];
    v26 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
    LODWORD(v27) = 1148846080;
    [v26 setContentCompressionResistancePriority:v39 == UILayoutConstraintAxisVertical forAxis:v27];
    [(UIViewController *)self addChildViewController:self->_contentViewController];
    [(UIStackView *)self->_contentStackView addArrangedSubview:v26];
    [(_TFTextFormattingContentViewController *)self->_contentViewController didMoveToParentViewController:self];
  }

  if (![(UITextFormattingViewControllerConfiguration *)self->_configuration _allowContentToScroll])
  {
    v28 = objc_opt_new();
    LODWORD(v29) = 1132068864;
    [v28 setContentHuggingPriority:v39 == UILayoutConstraintAxisVertical forAxis:v29];
    [(UIStackView *)self->_contentStackView addArrangedSubview:v28];
  }

  v30 = [(UIViewController *)self parentViewController];
  [(UITextFormattingViewController *)self _reconfigureViewHierarchyForParentController:v30];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewWillLayoutSubviews];
  [(UITextFormattingViewController *)self _updateScrollViewContentSizeIfNeeded];
  v3 = [(UITextFormattingViewController *)self _useLandscapeLayout];
  if (v3 != [(UITextFormattingViewControllerConfiguration *)self->_configuration _useLandscapeLayout])
  {
    [(UITextFormattingViewController *)self _updateInternalConfigurationProperties];
    [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITextFormattingViewController;
  v4 = a3;
  [(UIViewController *)&v5 willMoveToParentViewController:v4];
  [(UITextFormattingViewController *)self _reconfigureViewHierarchyForParentController:v4, v5.receiver, v5.super_class];

  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setHasParentViewController:v4 != 0];
  [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITextFormattingViewController;
  v4 = a3;
  [(UIViewController *)&v5 didMoveToParentViewController:v4];
  [(UITextFormattingViewController *)self _reconfigureViewHierarchyForParentController:v4, v5.receiver, v5.super_class];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:a3];
  [(UITextFormattingViewController *)self _updateContentSizeForAppearance:0];
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v6;
    [v5 setPrefersEdgeAttachedInCompactHeight:1];
    [v5 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    [(UITextFormattingViewController *)self _resetDetentsForSheetController:v5 invalidate:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = UITextFormattingViewController;
  [(UIViewController *)&v35 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __85__UITextFormattingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v33[3] = &unk_1E70F4990;
    v33[4] = self;
    v34 = v8;
    [v7 animateAlongsideTransition:v33 completion:0];
  }

  [(UITextFormattingViewController *)self _updateInternalConfigurationProperties];
  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setUseLandscapeLayout:[(UITextFormattingViewController *)self _useLandscapeLayoutForSize:width, height]];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x4010000000;
  v30[3] = "";
  v31 = 0u;
  v32 = 0u;
  v9 = [(UIViewController *)self view];
  v10 = [(UIViewController *)self view];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIViewController *)self view];
  v20 = [v19 window];
  [v9 convertRect:v20 toView:{v12, v14, v16, v18}];
  *&v31 = v21;
  *(&v31 + 1) = v22;
  *&v32 = v23;
  *(&v32 + 1) = v24;

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4010000000;
  v27[3] = "";
  v28 = 0u;
  v29 = 0u;
  v25[6] = v27;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __85__UITextFormattingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v26[3] = &unk_1E70F5A70;
  v26[4] = self;
  v26[5] = v27;
  v26[6] = v30;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__UITextFormattingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v25[3] = &unk_1E70F5A98;
  v25[4] = self;
  v25[5] = v30;
  [v7 animateAlongsideTransition:v26 completion:v25];
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v30, 8);
}

uint64_t __85__UITextFormattingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [*(a1 + 32) view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) view];
  v13 = [v12 window];
  [v2 convertRect:v13 toView:{v5, v7, v9, v11}];
  v14 = *(*(a1 + 40) + 8);
  v14[4] = v15;
  v14[5] = v16;
  v14[6] = v17;
  v14[7] = v18;

  v19 = *(*(a1 + 48) + 8);
  v20 = *(*(a1 + 40) + 8);
  [*(a1 + 32) _modifyKeyboardTrackingIfNeededForType:1 fromFrame:1 toFrame:v19[4] start:{v19[5], v19[6], v19[7], v20[4], v20[5], v20[6], v20[7]}];
  v21 = *(a1 + 32);

  return [v21 _updateChildControllersConfiguration];
}

uint64_t __85__UITextFormattingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 48) + 8);
  return [*(a1 + 32) _modifyKeyboardTrackingIfNeededForType:1 fromFrame:0 toFrame:v1[4] start:{v1[5], v1[6], v1[7], v2[4], v2[5], v2[6], v2[7]}];
}

- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)a3 screenSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _textViewConfiguration])
  {
    [UIViewController defaultFormSheetSizeForScreenSize:width, height];
    v10 = 656.0;
    if (v7 <= 656.0)
    {
      v10 = v7;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UITextFormattingViewController;
    [(UIViewController *)&v11 _formSheetSizeForWindowWithSize:v7 screenSize:v6, width, height];
  }

  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setConfiguration:(id)a3
{
  v4 = [a3 copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
}

- (void)_setChildViewController:(id)a3
{
  v5 = a3;
  remoteViewController = self->_remoteViewController;
  if (remoteViewController != v5)
  {
    v9 = v5;
    v7 = [(UIViewController *)remoteViewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_remoteViewController removeFromParentViewController];
    objc_storeStrong(&self->_remoteViewController, a3);
    v5 = v9;
    if (self->_remoteViewController)
    {
      [(UIViewController *)v9 willMoveToParentViewController:self];
      v8 = [(UIViewController *)v9 view];
      [(UIViewController *)self addChildViewController:v9];
      [(UIStackView *)self->_contentStackView addArrangedSubview:v8];
      [(UIViewController *)v9 didMoveToParentViewController:self];
      [(UITextFormattingViewController *)self _computeContentSize];
      [(UIViewController *)self setPreferredContentSize:?];

      v5 = v9;
    }
  }
}

- (UITextFormattingViewControllerFormattingDescriptor)formattingDescriptor
{
  v2 = [(UITextFormattingViewControllerFormattingDescriptor *)self->_formattingDescriptor copy];

  return v2;
}

- (void)setFormattingDescriptor:(id)a3
{
  conversionHandler = self->__conversionHandler;
  self->__conversionHandler = 0;
  v5 = a3;

  v6 = [v5 copy];
  formattingDescriptor = self->_formattingDescriptor;
  self->_formattingDescriptor = v6;

  v8 = self->_formattingDescriptor;

  [(UITextFormattingViewController *)self _updateFormattingDescriptor:v8];
}

- (void)_setEditResponder:(id)a3
{
  v4 = a3;
  [(UITextFormattingViewController *)self _cleanupForEditResponder];
  objc_storeWeak(&self->__editResponder, v4);

  [(UITextFormattingViewController *)self _setupForEditResponder];
}

- (void)_textFormattingDidChangeValue:(id)a3 textAttributesData:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  if (v5)
  {
    v20 = 0;
    v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v5 error:&v20];
    v17 = v20;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v19 textAttributes:v16];
}

- (void)_textFormattingDidFinish
{
  v3 = [(UITextFormattingViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UITextFormattingViewController *)self delegate];
    [v5 textFormattingDidFinish:self];
  }

  [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_textFormattingRequestsFirstResponderRestoration
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_internalDelegate);
      [v7 _textFormattingRequestsFirstResponderRestoration:self];
    }
  }
}

- (void)_textFormattingRequestsFirstResponderResignation
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_internalDelegate);
      [v7 _textFormattingRequestsFirstResponderResignation:self];
    }
  }
}

- (void)_startSuppressingKeyboardForTextFormatting
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_internalDelegate);
      [v7 _startSuppressingKeyboardForTextFormatting:self];

      [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForKeyboardSuppression];
    }
  }
}

- (void)_stopSuppressingKeyboardForTextFormatting
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_internalDelegate);
      [v7 _stopSuppressingKeyboardForTextFormatting:self];
    }
  }
}

- (void)_presentColorPicker:(CGRect)a3 selectedColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = objc_alloc_init(UIColorPickerViewController);
  [(UIColorPickerViewController *)v10 setSelectedColor:v9];
  [(UIColorPickerViewController *)v10 setSupportsAlpha:0];
  [(UIColorPickerViewController *)v10 _setSupportsEyedropper:0];
  [(UIColorPickerViewController *)v10 _setShowsGridOnly:1];
  v11 = [(UITextFormattingViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0 || (-[UITextFormattingViewController delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 textFormattingViewController:self shouldPresentColorPicker:v10], v13, v14))
  {
    WeakRetained = objc_loadWeakRetained(&self->_preferredColorPickerPresentationViewController);
    if (WeakRetained)
    {
      v16 = WeakRetained;
      v17 = objc_loadWeakRetained(&self->_preferredColorPickerPresentationViewController);
      v18 = v17;
      if (v17 == self)
      {
      }

      else
      {
        v19 = objc_loadWeakRetained(&self->_internalDelegate);

        if (v19)
        {
          v20 = objc_loadWeakRetained(&self->_preferredColorPickerPresentationViewController);
          v21 = [(UITextFormattingViewController *)self _editResponder];
          self->_shouldSkipStoppingKeyboardSuppressionOnDidDisappear = 1;
          v22 = objc_loadWeakRetained(&self->_internalDelegate);
          objc_initWeak(&location, v22);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __68__UITextFormattingViewController__presentColorPicker_selectedColor___block_invoke;
          v33[3] = &unk_1E711B1F8;
          v23 = v21;
          v34 = v23;
          v35 = v10;
          v24 = v20;
          v36 = v24;
          objc_copyWeak(&v37, &location);
          [(UIViewController *)self dismissViewControllerAnimated:1 completion:v33];
          objc_destroyWeak(&v37);

          objc_destroyWeak(&location);
          goto LABEL_11;
        }
      }
    }

    [(UIColorPickerViewController *)v10 setDelegate:self];
    [(UIViewController *)v10 setModalPresentationStyle:7];
    v25 = [(UIViewController *)v10 popoverPresentationController];
    v26 = [(UIViewController *)self view];
    [v25 setSourceView:v26];

    v27 = [(UIViewController *)v10 popoverPresentationController];
    v28 = [(UIViewController *)self view];
    v29 = [v28 window];
    v30 = [(UIViewController *)self view];
    [v29 convertRect:v30 toView:{x, y, width, height}];
    [v27 setSourceRect:?];

    v31 = [(UIViewController *)v10 popoverPresentationController];
    [v31 setPermittedArrowDirections:15];

    if (![(UIViewController *)self _isInPopoverPresentation])
    {
      [(UITextFormattingViewController *)self _stopSuppressingKeyboardForTextFormatting];
      [(UITextFormattingViewController *)self _textFormattingRequestsFirstResponderResignation];
    }

    [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:2 start:1];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __68__UITextFormattingViewController__presentColorPicker_selectedColor___block_invoke_3;
    v32[3] = &unk_1E70F3590;
    v32[4] = self;
    [(UIViewController *)self presentViewController:v10 animated:1 completion:v32];
    objc_storeStrong(&self->_colorPicker, v10);
  }

LABEL_11:
}

void __68__UITextFormattingViewController__presentColorPicker_selectedColor___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_UITextFormattingDeferredColorPickingDelegate);
  [(_UITextFormattingDeferredColorPickingDelegate *)v2 setEditResponder:*(a1 + 32)];
  [*(a1 + 40) setDelegate:v2];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__UITextFormattingViewController__presentColorPicker_selectedColor___block_invoke_2;
  v5[3] = &unk_1E70F5A28;
  objc_copyWeak(&v6, (a1 + 56));
  [v3 presentViewController:v4 animated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void __68__UITextFormattingViewController__presentColorPicker_selectedColor___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_opt_respondsToSelector();
    v2 = v4;
    if (v3)
    {
      [v4 _stopSuppressingKeyboardForTextFormatting:0];
      v2 = v4;
    }
  }
}

- (void)_presentFontPickerWithConfiguration:(id)a3 selectedFonts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITextFormattingViewController *)self configuration];
  v9 = [v8 fontPickerConfiguration];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  v13 = [[UIFontPickerViewController alloc] initWithConfiguration:v12];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke;
  v45[3] = &unk_1E712CCF8;
  v15 = v14;
  v46 = v15;
  [v7 enumerateObjectsUsingBlock:v45];
  [(UIFontPickerViewController *)v13 _setSelectedFontDescriptors:v15];
  v16 = [(UITextFormattingViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0 || (-[UITextFormattingViewController delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 textFormattingViewController:self shouldPresentFontPicker:v13], v18, v19))
  {
    [(UIFontPickerViewController *)v13 _setSelectedFontDescriptors:v15, v6];
    WeakRetained = objc_loadWeakRetained(&self->_preferredFontPickerPresentationViewController);
    if (WeakRetained)
    {
      v21 = WeakRetained;
      v22 = objc_loadWeakRetained(&self->_preferredFontPickerPresentationViewController);
      v23 = v22;
      if (v22 == self)
      {
      }

      else
      {
        v24 = objc_loadWeakRetained(&self->_internalDelegate);

        if (v24)
        {
          v25 = objc_loadWeakRetained(&self->_preferredFontPickerPresentationViewController);
          v26 = [(UITextFormattingViewController *)self _editResponder];
          self->_shouldSkipStoppingKeyboardSuppressionOnDidDisappear = 1;
          v27 = objc_loadWeakRetained(&self->_internalDelegate);
          objc_initWeak(&location, v27);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke_2;
          v38[3] = &unk_1E712CD20;
          v39 = v7;
          v28 = v26;
          v40 = v28;
          v41 = v13;
          v29 = v25;
          v42 = v29;
          objc_copyWeak(&v43, &location);
          [(UIViewController *)self dismissViewControllerAnimated:1 completion:v38];
          objc_destroyWeak(&v43);

          objc_destroyWeak(&location);
          v6 = v36;
          goto LABEL_15;
        }
      }
    }

    [(UIFontPickerViewController *)v13 setDelegate:self];
    v30 = [(UIViewController *)v13 sheetPresentationController];
    [v30 setPrefersEdgeAttachedInCompactHeight:1];

    v31 = [(UIViewController *)v13 sheetPresentationController];
    [v31 setWidthFollowsPreferredContentSizeWhenEdgeAttached:0];

    [(UITextFormattingViewController *)self _stopSuppressingKeyboardForTextFormatting];
    [(UITextFormattingViewController *)self _textFormattingRequestsFirstResponderResignation];
    [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:2 start:1];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke_4;
    v37[3] = &unk_1E70F3590;
    v37[4] = self;
    [(UIViewController *)self presentViewController:v13 animated:1 completion:v37];
    objc_storeStrong(&self->_fontPicker, v13);
    v32 = [v7 firstObject];
    if (v32)
    {
      v33 = [v7 firstObject];
      [v33 pointSize];
      self->_selectedFontSize = v34;
    }

    else
    {
      [off_1E70ECC18 defaultFontSize];
      self->_selectedFontSize = v35;
    }

    v6 = v36;
  }

LABEL_15:
}

void __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fontDescriptor];
  [v2 addObject:v3];
}

void __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(_UITextFormattingDeferredFontPickingDelegate);
  v3 = [*(a1 + 32) firstObject];
  if (v3)
  {
    v4 = [*(a1 + 32) firstObject];
    [v4 pointSize];
    [(_UITextFormattingDeferredFontPickingDelegate *)v2 setFontSize:?];
  }

  else
  {
    [off_1E70ECC18 defaultFontSize];
    [(_UITextFormattingDeferredFontPickingDelegate *)v2 setFontSize:?];
  }

  [(_UITextFormattingDeferredFontPickingDelegate *)v2 setEditResponder:*(a1 + 40)];
  [*(a1 + 48) setDelegate:v2];
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke_3;
  v7[3] = &unk_1E70F5A28;
  objc_copyWeak(&v8, (a1 + 64));
  [v5 presentViewController:v6 animated:1 completion:v7];
  objc_destroyWeak(&v8);
}

void __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_opt_respondsToSelector();
    v2 = v4;
    if (v3)
    {
      [v4 _stopSuppressingKeyboardForTextFormatting:0];
      v2 = v4;
    }
  }
}

- (void)_presentTypographySettingsForFont:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = get_TFTypographySettingsContentViewControllerClass_softClass;
  v26 = get_TFTypographySettingsContentViewControllerClass_softClass;
  if (!get_TFTypographySettingsContentViewControllerClass_softClass)
  {
    v21[5] = MEMORY[0x1E69E9820];
    v21[6] = 3221225472;
    v21[7] = __get_TFTypographySettingsContentViewControllerClass_block_invoke;
    v21[8] = &unk_1E70F2F20;
    v22 = &v23;
    TextFormattingUILibraryCore();
    v24[3] = objc_getClass("_TFTypographySettingsContentViewController");
    get_TFTypographySettingsContentViewControllerClass_softClass = *(v22[1] + 24);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  v7 = objc_alloc_init(v5);
  [v7 set_delegate:self];
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _hasPopoverPresentation])
  {
    [(UIViewController *)v8 setModalPresentationStyle:1];
  }

  else
  {
    [(UIViewController *)self preferredContentSize];
    v10 = v9;
    v11 = [(UITextFormattingViewControllerConfiguration *)self->_configuration _useLandscapeLayout];
    v12 = 0.0;
    if (v11)
    {
      v12 = 25.0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__UITextFormattingViewController__presentTypographySettingsForFont___block_invoke;
    v21[3] = &__block_descriptor_40_e65_d16__0____UISheetPresentationControllerDetentResolutionContext__8l;
    *&v21[4] = v10 + v12;
    v13 = [UISheetPresentationControllerDetent customDetentWithIdentifier:@"com.apple.UIKit.textFormattingFontPicker" resolver:v21];
    v27[0] = v13;
    v14 = +[UISheetPresentationControllerDetent largeDetent];
    v27[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v16 = [(UIViewController *)v8 sheetPresentationController];
    [v16 setDetents:v15];

    v17 = [(UIViewController *)v8 sheetPresentationController];
    [v17 setLargestUndimmedDetentIdentifier:@"com.apple.UIKit.textFormattingFontPicker"];

    v18 = [(UIViewController *)v8 sheetPresentationController];
    [v18 setPrefersEdgeAttachedInCompactHeight:1];

    v19 = [(UIViewController *)v8 sheetPresentationController];
    [v19 setWidthFollowsPreferredContentSizeWhenEdgeAttached:0];

    v20 = [(UIViewController *)v8 sheetPresentationController];
    [v20 setPrefersGrabberVisible:1];
  }

  [(UIViewController *)self presentViewController:v8 animated:1 completion:0];
  [v7 _setSelectedFont:v4];
}

- (void)_resetDetentsForSheetController:(id)a3 invalidate:(BOOL)a4
{
  v4 = a4;
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v7 = [v6 detents];
  v8 = [v7 count] == 0;

  if (!v8)
  {
    v9 = [v6 detents];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__UITextFormattingViewController__resetDetentsForSheetController_invalidate___block_invoke;
    v15[3] = &unk_1E712CD48;
    v15[4] = &v16;
    [v9 enumerateObjectsUsingBlock:v15];
  }

  if (*(v17 + 24) == 1)
  {
    [(UIViewController *)self preferredContentSize];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__UITextFormattingViewController__resetDetentsForSheetController_invalidate___block_invoke_2;
    v14[3] = &__block_descriptor_40_e65_d16__0____UISheetPresentationControllerDetentResolutionContext__8l;
    v14[4] = v10;
    v11 = [UISheetPresentationControllerDetent customDetentWithIdentifier:@"com.apple.UIKit.textFormatting" resolver:v14];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v6 setDetents:v12];

    if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _preferringDimmingVisible])
    {
      v13 = 0;
    }

    else
    {
      v13 = @"com.apple.UIKit.textFormatting";
    }

    [v6 setLargestUndimmedDetentIdentifier:v13];
    if (v4)
    {
      [v6 invalidateDetents];
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __77__UITextFormattingViewController__resetDetentsForSheetController_invalidate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 identifier];
  if (v6 != @"com.apple.UIKit.textFormatting")
  {
    v7 = v6;
    v8 = [v9 identifier];

    if (v8 != @"com.apple.UIKit.large")
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (BOOL)_useLandscapeLayout
{
  v3 = [(UIViewController *)self _window];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(UIViewController *)self view];
    [v9 frame];
    v6 = v10;
    v8 = v11;
  }

  return [(UITextFormattingViewController *)self _useLandscapeLayoutForSize:v6, v8];
}

- (BOOL)_useLandscapeLayoutForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UIViewController *)self _isInPopoverPresentation])
  {
    return 0;
  }

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = +[UIDevice currentDevice];
  [v8 orientation];

  v9 = height < width;
  if (width <= 480.0)
  {
    v9 = 0;
  }

  return !v7 && v9;
}

- (void)_updateInternalConfigurationProperties
{
  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setHasPopoverPresentation:[(UIViewController *)self _isInPopoverPresentation]];
  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setUseLandscapeLayout:[(UITextFormattingViewController *)self _useLandscapeLayout]];
  v3 = [(UITextFormattingViewController *)self configuration];
  v4 = [v3 _isTextAnimationsConfiguration];

  if (v4)
  {
    if ([(UIViewController *)self _isInPopoverPresentation])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(UIViewController *)self view];
      [v7 bounds];
      v5 = v8 <= 320.0;
    }

    v9 = +[UIDevice currentDevice];
    v10 = [v9 _deviceInfoForKey:@"main-screen-class"];
    v11 = [v10 integerValue];

    v6 = v11 == 28 || (v11 & 0xFFFFFFFE) == 6 || v5;
  }

  else
  {
    v6 = 0;
  }

  configuration = self->_configuration;

  [(UITextFormattingViewControllerConfiguration *)configuration set_useReducedMetrics:v6];
}

- (void)_updateChildControllersConfiguration
{
  [(_UITextFormattingViewHostingImpl *)self->_hostingImpl setRemoteConfiguration:self->_configuration];
  contentViewController = self->_contentViewController;
  configuration = self->_configuration;

  [(_TFTextFormattingContentViewController *)contentViewController _setConfiguration:configuration];
}

- (void)_sendUpdatesToEditResponder:(id)a3
{
  v12 = a3;
  v4 = [(UITextFormattingViewController *)self _textView];
  if (v12 && v4)
  {
    v5 = [v4 selectedTextRange];
    v6 = [v5 isEmpty];

    if (v6)
    {
      v7 = MakeConversionHandler(v12);
      v8 = [v4 typingAttributes];
      v9 = (v7)[2](v7, v8);
      [v4 setTypingAttributes:v9];

      if (objc_opt_respondsToSelector())
      {
        [v4 performSelector:sel__textFormattingOptionsNeedUpdate_ withObject:0];
      }
    }
  }

  else if (!v12)
  {
    goto LABEL_10;
  }

  v10 = [(UITextFormattingViewController *)self _editResponder];

  if (v10)
  {
    v11 = [(UITextFormattingViewController *)self _editResponder];
    SendUpdatesToEditResponder(v12, v11);
  }

LABEL_10:
}

- (void)_updateNavBarVisibility
{
  v34[1] = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self _isInPopoverPresentation]|| ([(UIViewController *)self parentViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (self->_navBar)
    {
      if (_UISolariumEnabled())
      {
        [(UIView *)self->_contentStackView setLayoutMargins:0.0, 0.0, 0.0, 0.0];
        [(UIStackView *)self->_contentStackView setLayoutMarginsRelativeArrangement:0];
      }

      [(UIView *)self->_navBar removeFromSuperview];
    }
  }

  else
  {
    navBar = self->_navBar;
    if (!navBar)
    {
      v5 = objc_opt_new();
      v6 = self->_navBar;
      self->_navBar = v5;

      v7 = objc_opt_new();
      [v7 configureWithTransparentBackground];
      [(UINavigationBar *)self->_navBar setStandardAppearance:v7];
      v8 = objc_opt_new();
      [v8 setLeftItemsSupplementBackButton:0];
      v9 = self->_navBar;
      v34[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      [(UINavigationBar *)v9 setItems:v10];

      v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 primaryAction:0];
      [(UIBarButtonItem *)v11 setAction:sel__textFormattingDidFinish];
      [(UIBarButtonItem *)v11 setTarget:self];
      [v8 setRightBarButtonItem:v11];
      if (_UISolariumEnabled())
      {
        v12 = objc_alloc(MEMORY[0x1E696AAB0]);
        v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"TEXT_FORMATTING_FORMAT" value:@"Format" table:@"Localizable"];
        v15 = [off_1E70ECC18 systemFontOfSize:21.0 weight:{*off_1E70ECD30, *off_1E70EC918}];
        v33 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v17 = [v12 initWithString:v14 attributes:v16];
        [v8 setAttributedTitle:v17];

        [v8 setStyle:1];
      }

      else
      {
        v18 = objc_opt_new();
        v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"TEXT_FORMATTING_FORMAT" value:@"Format" table:@"Localizable"];
        [v18 setText:v20];

        v21 = [off_1E70ECC18 systemFontOfSize:21.0 weight:*off_1E70ECD30];
        [v18 setFont:v21];

        v22 = [[UIBarButtonItem alloc] initWithCustomView:v18];
        [v22 setAccessibilityTraits:0x10000];
        [(UIBarButtonItem *)v22 setHidesSharedBackground:1];
        [v8 setLeftBarButtonItem:v22];
      }

      navBar = self->_navBar;
    }

    v23 = [(UIView *)navBar superview];

    if (!v23)
    {
      if (_UISolariumEnabled())
      {
        [(UIView *)self->_contentStackView setLayoutMargins:14.0, 0.0, 0.0, 0.0];
        [(UIStackView *)self->_contentStackView setLayoutMarginsRelativeArrangement:1];
      }

      [(UIStackView *)self->_contentStackView insertArrangedSubview:self->_navBar atIndex:0];
    }

    v24 = [(UIViewController *)self navigationItem];
    [v24 setTitle:0];
  }

  v25 = self->_navBar;
  v26 = [(UIViewController *)self navigationItem];
  v27 = v26;
  if (v25)
  {
    [v26 setTitle:0];

    v28 = [(UIViewController *)self navigationItem];
    [(UIBarButtonItem *)v28 setRightBarButtonItem:0];
  }

  else
  {
    v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"TEXT_FORMATTING_FORMAT" value:@"Format" table:@"Localizable"];
    [v27 setTitle:v30];

    v28 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 primaryAction:0];
    [(UIBarButtonItem *)v28 setAction:sel__textFormattingDidFinish];
    [(UIBarButtonItem *)v28 setTarget:self];
    v31 = [(UIViewController *)self navigationItem];
    [v31 setRightBarButtonItem:v28];
  }
}

- (BOOL)_useChildViewWidthForContentSize
{
  if ([(UIViewController *)self _isInPopoverPresentation]|| (v3 = [(UITextFormattingViewController *)self _useLandscapeLayout]))
  {
    v3 = [(UITextFormattingViewControllerConfiguration *)self->_configuration _isTextViewConfiguration];
    if (v3)
    {
      LOBYTE(v3) = ![(UITextFormattingViewControllerConfiguration *)self->_configuration _isTextAnimationsConfiguration];
    }
  }

  return v3;
}

- (CGSize)_computeContentSize
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    [(UIViewController *)remoteViewController preferredContentSize];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    [(_TFTextFormattingContentViewController *)contentViewController preferredContentSize];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  if ([(UITextFormattingViewController *)self _useChildViewWidthForContentSize])
  {
    if (v5 < v10)
    {
      v5 = v10;
    }
  }

  else
  {
    v13 = [(UIViewController *)self view];
    [v13 frame];
    v5 = v14;
  }

  navBar = self->_navBar;
  v16 = 0.0;
  if (navBar)
  {
    v17 = [(UIView *)navBar superview];

    if (v17)
    {
      v18 = self->_navBar;
      [(UIView *)v18 frame];
      [(UINavigationBar *)v18 sizeThatFits:v19, v20];
      v16 = v21;
      if (_UISolariumEnabled())
      {
        v16 = v16 + 14.0;
      }
    }
  }

  v22 = v7 + v12 + v16;
  v23 = v5;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)_updateContentSizeForAppearance:(BOOL)a3
{
  v3 = a3;
  v88 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TextFormattingUI", &qword_1ED49AEE0);
  if (*CategoryCachedImpl)
  {
    v72 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      remoteViewController = self->_remoteViewController;
      v74 = v72;
      [(UIViewController *)remoteViewController preferredContentSize];
      v76 = v75;
      [(UIViewController *)self->_remoteViewController preferredContentSize];
      v84 = 134218240;
      v85 = v76;
      v86 = 2048;
      v87 = v77;
      _os_log_impl(&dword_188A29000, v74, OS_LOG_TYPE_ERROR, "Remote child view content size is %f by %f", &v84, 0x16u);
    }
  }

  v6 = __UILogGetCategoryCachedImpl("TextFormattingUI", &qword_1ED49AEE8);
  if (*v6)
  {
    v78 = *(v6 + 8);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      contentViewController = self->_contentViewController;
      v80 = v78;
      [(_TFTextFormattingContentViewController *)contentViewController preferredContentSize];
      v82 = v81;
      [(_TFTextFormattingContentViewController *)self->_contentViewController preferredContentSize];
      v84 = 134218240;
      v85 = v82;
      v86 = 2048;
      v87 = v83;
      _os_log_impl(&dword_188A29000, v80, OS_LOG_TYPE_ERROR, "In-process child view content size is %f by %f", &v84, 0x16u);
    }
  }

  v7 = self->_remoteViewController;
  if (v7)
  {
    v8 = [(UIViewController *)v7 view];
    [v8 frame];
    v10 = v9;
    [(UIViewController *)self->_remoteViewController preferredContentSize];
    v12 = v11;

    if (v10 != v12)
    {
      v13 = [(UIViewController *)self->_remoteViewController view];
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [(UIViewController *)self->_remoteViewController preferredContentSize];
      v21 = v20;
      v22 = [(UIViewController *)self->_remoteViewController view];
      [v22 setFrame:{v15, v17, v19, v21}];

      v23 = [(UIStackView *)self->_contentStackView arrangedSubviews];
      v24 = [(UIViewController *)self->_remoteViewController view];
      v25 = [v23 indexOfObject:v24];

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [(UIViewController *)self->_remoteViewController view];
        [v26 removeFromSuperview];

        contentStackView = self->_contentStackView;
        v28 = [(UIViewController *)self->_remoteViewController view];
        [(UIStackView *)contentStackView insertArrangedSubview:v28 atIndex:v25];
      }
    }
  }

  v29 = self->_contentViewController;
  if (v29)
  {
    v30 = [(_TFTextFormattingContentViewController *)v29 view];
    [v30 frame];
    v32 = v31;
    [(_TFTextFormattingContentViewController *)self->_contentViewController preferredContentSize];
    v34 = v33;

    if (v32 != v34)
    {
      v35 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
      [v35 frame];
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [(_TFTextFormattingContentViewController *)self->_contentViewController preferredContentSize];
      v43 = v42;
      v44 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
      [v44 setFrame:{v37, v39, v41, v43}];

      v45 = [(UIStackView *)self->_contentStackView arrangedSubviews];
      v46 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
      v47 = [v45 indexOfObject:v46];

      if (v47 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v48 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
        [v48 removeFromSuperview];

        v49 = self->_contentStackView;
        v50 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
        [(UIStackView *)v49 insertArrangedSubview:v50 atIndex:v47];
      }
    }
  }

  [(UITextFormattingViewController *)self _computeContentSize];
  v52 = v51;
  v54 = v53;
  if (![(UITextFormattingViewController *)self _useChildViewWidthForContentSize])
  {
    [(UIViewController *)self preferredContentSize];
    if ((v59 != v54 || v58 != v52) && v3)
    {
      if ([(UIViewController *)self _isInPopoverPresentation])
      {
        v61 = [(UIViewController *)self popoverPresentationController];

        if (v61)
        {
          v62 = [(UIViewController *)self popoverPresentationController];
          v63 = [v62 arrowDirection];

          if (v63 == 8 || v63 == 4)
          {
            v64 = [(UIViewController *)self view];
            [v64 bounds];
            v66 = v65;
            v67 = [(UIViewController *)self view];
            [v67 safeAreaInsets];
            v69 = v66 - v68;
            v70 = [(UIViewController *)self view];
            [v70 safeAreaInsets];
            v52 = v69 - v71;
          }
        }
      }
    }
  }

  [(UIViewController *)self preferredContentSize];
  if (v56 != v52 || v55 != v54)
  {
    [(UIViewController *)self setPreferredContentSize:v52, v54];
    [(UITextFormattingViewController *)self _updateScrollViewContentSizeIfNeeded];
    v57 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];
    if (v57)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UITextFormattingViewController *)self _resetDetentsForSheetController:v57 invalidate:1];
      }
    }
  }
}

- (void)_updateScrollViewContentSizeIfNeeded
{
  [(UITextFormattingViewController *)self _computeContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(UITextFormattingViewController *)self _scrollView];
  if (v7)
  {
    v16 = v7;
    [v7 contentSize];
    if (v9 != v4 || v8 != v6)
    {
      [v16 setContentSize:{v4, v6}];
    }

    [(UIView *)self->_contentView frame];
    v13 = v12 == v4 && v11 == v6;
    v7 = v16;
    if (!v13)
    {
      [(UIView *)self->_contentView frame];
      v15 = v14;
      [(UIView *)self->_contentView frame];
      [(UIView *)self->_contentView setFrame:v15];
      v7 = v16;
    }
  }
}

- (id)_scrollView
{
  if (self->_containerView)
  {
    v3 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      containerView = self->_containerView;
    }

    else
    {
      containerView = 0;
    }

    v5 = containerView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_invokeEditResponderAction:(SEL)a3
{
  v5 = [(UITextFormattingViewController *)self _editResponder];
  if (v5)
  {
    v6 = v5;
    v7 = [(UITextFormattingViewController *)self _editResponder];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(UITextFormattingViewController *)self _editResponder];
      [v9 a3];
    }
  }
}

- (void)_invokeEditResponderAction:(SEL)a3 withArgument:(id)a4
{
  v11 = a4;
  v6 = [(UITextFormattingViewController *)self _editResponder];
  if (v6)
  {
    v7 = v6;
    v8 = [(UITextFormattingViewController *)self _editResponder];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(UITextFormattingViewController *)self _editResponder];
      [v10 a3];
    }
  }
}

- (void)_applyTextViewHighlightWithChangeValue:(id)a3
{
  v13 = a3;
  v4 = [(UITextFormattingViewController *)self _textView];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 selectedTextRange];
    v7 = _NSTextHighlightColorSchemeForTextFormattingChangeValue(v13);
    if ([v6 isEmpty])
    {
      v8 = objc_opt_new();
      v9 = v8;
      if (v7)
      {
        [v8 setObject:*off_1E70ECA88 forKey:*off_1E70ECA80];
        [v9 setObject:v7 forKey:*off_1E70ECA40];
      }

      else
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        [v9 setObject:v11 forKey:*off_1E70ECA80];

        v12 = [MEMORY[0x1E695DFB0] null];
        [v9 setObject:v12 forKey:*off_1E70ECA40];
      }

      [(UITextFormattingViewController *)self _sendUpdatesToEditResponder:v9];
    }

    else if (v7)
    {
      v10 = *off_1E70ECA88;
      v9 = [v5 selectedTextRange];
      [v5 _applyHighlightStyle:v10 colorScheme:v7 toTextRange:v9];
    }

    else
    {
      v9 = [v5 selectedTextRange];
      [v5 _removeHighlightsFromTextRange:v9];
    }
  }
}

- (void)_textFormattingDidChangeValue:(id)a3 textAttributes:(id)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = MakeConversionHandler(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = _Block_copy(v9);
  conversionHandler = self->__conversionHandler;
  self->__conversionHandler = v10;

  if (v8)
  {
  }

  v12 = [(UITextFormattingViewController *)self _editResponder];
  if (!v12)
  {
LABEL_15:
    v22 = [(UITextFormattingViewController *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v19 = [(UITextFormattingViewController *)self delegate];
      [v19 textFormattingViewController:self didChangeValue:v6];
      goto LABEL_40;
    }

    v24 = [(UITextFormattingViewController *)self configuration];
    v25 = [v24 _isTextAnimationsConfiguration];

    if (v25 && ([v6 _textAnimationAttributes], v26 = objc_claimAutoreleasedReturnValue(), v8 | v26))
    {
      v19 = v26;
      if (v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = v8;
      }

      v35 = self;
    }

    else
    {
      v19 = [(UITextFormattingViewController *)self _textView];
      v27 = [v6 changeType];
      v28 = [v27 isEqualToString:@"UITextFormattingViewControllerIncreaseFontSizeChange"];

      if (v28)
      {
        v29 = [(UITextFormattingViewController *)self _editResponder];

        if (!v29)
        {
          goto LABEL_40;
        }

        v30 = [(UITextFormattingViewController *)self _editResponder];
        [v30 increaseSize:self];
LABEL_39:

        goto LABEL_40;
      }

      v31 = [v6 changeType];
      v32 = [v31 isEqualToString:@"UITextFormattingViewControllerDecreaseFontSizeChange"];

      if (v32)
      {
        v33 = [(UITextFormattingViewController *)self _editResponder];

        if (!v33)
        {
          goto LABEL_40;
        }

        v30 = [(UITextFormattingViewController *)self _editResponder];
        [v30 decreaseSize:self];
        goto LABEL_39;
      }

      v36 = [v6 changeType];
      v37 = [v36 isEqualToString:@"UITextFormattingViewControllerFontSizeChange"];

      if (v37)
      {
        v38 = [(UITextFormattingViewController *)self _editResponder];
        if (!v38)
        {
          goto LABEL_40;
        }

        v39 = v38;
        v40 = [v6 numberValue];

        if (!v40)
        {
          goto LABEL_40;
        }

        v72 = @"_UITextFormattingSizeAttributeName";
        v41 = [v6 numberValue];
        v73[0] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];

        [(UITextFormattingViewController *)self _sendUpdatesToEditResponder:v42];
        goto LABEL_34;
      }

      v43 = [v6 changeType];
      v44 = [v43 isEqualToString:@"UITextFormattingViewControllerSetBoldChange"];

      if (v44 || ([v6 changeType], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "isEqualToString:", @"UITextFormattingViewControllerRemoveBoldChange"), v45, v46))
      {
        v47 = [(UITextFormattingViewController *)self _editResponder];

        if (!v47)
        {
          goto LABEL_40;
        }

        v30 = [(UITextFormattingViewController *)self _editResponder];
        [v30 toggleBoldface:self];
        goto LABEL_39;
      }

      v51 = [v6 changeType];
      v52 = [v51 isEqualToString:@"UITextFormattingViewControllerSetItalicChange"];

      if (v52 || ([v6 changeType], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqualToString:", @"UITextFormattingViewControllerRemoveItalicChange"), v53, v54))
      {
        v55 = [(UITextFormattingViewController *)self _editResponder];

        if (!v55)
        {
          goto LABEL_40;
        }

        v30 = [(UITextFormattingViewController *)self _editResponder];
        [v30 toggleItalics:self];
        goto LABEL_39;
      }

      v56 = [v6 changeType];
      v57 = [v56 isEqualToString:@"UITextFormattingViewControllerSetUnderlineChange"];

      if (v57 || ([v6 changeType], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isEqualToString:", @"UITextFormattingViewControllerRemoveUnderlineChange"), v58, v59))
      {
        v60 = [(UITextFormattingViewController *)self _editResponder];

        if (!v60)
        {
          goto LABEL_40;
        }

        v30 = [(UITextFormattingViewController *)self _editResponder];
        [v30 toggleUnderline:self];
        goto LABEL_39;
      }

      v61 = [v6 changeType];
      v62 = [v61 isEqualToString:@"UITextFormattingViewControllerTextAlignmentChange"];

      if (v62)
      {
        if ([v6 textAlignment])
        {
          if ([v6 textAlignment] == 1)
          {
            v63 = sel_alignCenter_;
          }

          else if ([v6 textAlignment] == 2)
          {
            v63 = sel_alignRight_;
          }

          else
          {
            if ([v6 textAlignment] != 3)
            {
              goto LABEL_40;
            }

            v63 = sel_alignJustified_;
          }
        }

        else
        {
          v63 = sel_alignLeft_;
        }

        [(UITextFormattingViewController *)self _invokeEditResponderAction:v63];
        goto LABEL_40;
      }

      v64 = [v6 changeType];
      v65 = [v64 isEqualToString:@"UITextFormattingViewControllerLineHeightPointSizeChange"];

      if (v65)
      {
        v42 = [v6 numberValue];
        [(UITextFormattingViewController *)self _invokeEditResponderAction:sel__changeLineHeightAction_newLineHeight_ withArgument:v42];
LABEL_34:

        goto LABEL_40;
      }

      if (v19)
      {
        v66 = [v6 changeType];
        v67 = [v66 isEqualToString:@"UITextFormattingViewControllerHighlightChange"];

        if (v67)
        {
          [(UITextFormattingViewController *)self _applyTextViewHighlightWithChangeValue:v6];
          goto LABEL_40;
        }

        v69 = [v19 textStorage];
        v70 = [v19 selectedRange];
        v68 = [(UITextFormattingViewController *)self _adjustAttributesInTextStorage:v69 atRange:v70 forChangeValue:v71, v6];
      }

      else
      {
        v68 = 0;
      }

      if (!v8 || v68)
      {
        goto LABEL_40;
      }

      v35 = self;
      v34 = v8;
    }

    [(UITextFormattingViewController *)v35 _sendUpdatesToEditResponder:v34];
    goto LABEL_40;
  }

  v13 = v12;
  v14 = [(UITextFormattingViewController *)self _editResponder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_15;
  }

  v15 = [(UITextFormattingViewController *)self _editResponder];
  v16 = [v15 performSelector:sel__shouldHandleTextFormattingChangeValue_ withObject:v6];

  if (v16)
  {
    goto LABEL_15;
  }

  if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _isTextAnimationsConfiguration])
  {
    v17 = [v6 changeType];

    if (v17 == @"UITextFormattingViewControllerCustomComponentSelectedChange")
    {
      v18 = [(UITextFormattingViewController *)self _textView];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 selectedTextRange];
        v21 = [v20 isEmpty];

        if (v21)
        {
          [(UITextFormattingViewController *)self _textFormattingDidFinish];
LABEL_40:

          goto LABEL_41;
        }
      }
    }
  }

  v48 = [(UITextFormattingViewController *)self _editResponder];
  v49 = objc_opt_respondsToSelector();

  if (v49)
  {
    v50 = [(UITextFormattingViewController *)self _editResponder];
    [v50 performSelector:sel__textFormattingOptionsNeedUpdate_ withObject:0];
  }

LABEL_41:
}

- (id)_textView
{
  v3 = [(UITextFormattingViewController *)self _editResponder];
  if (v3)
  {
    v4 = v3;
    v5 = [(UITextFormattingViewController *)self _editResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v3 = [(UITextFormattingViewController *)self _editResponder];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_reconfigureViewHierarchyForParentController:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIViewController *)self view];
  v6 = [v5 subviews];
  v7 = [v6 firstObject];
  v8 = v7;
  v9 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
  if (v4)
  {
    containerView = self->_containerView;

    if (v8 == containerView)
    {
      goto LABEL_25;
    }
  }

  else if (v7)
  {
    v11 = [(UIViewController *)self view];
    v12 = [v11 subviews];
    v13 = [v12 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v15 = [(UIViewController *)self view];
  v16 = [v15 subviews];

  v17 = [v16 countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v92;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v92 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v91 + 1) + 8 * i) removeFromSuperview];
      }

      v18 = [v16 countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v18);
  }

  backdropView = self->_backdropView;
  self->_backdropView = 0;

  v22 = 0x1E6997000uLL;
  v90 = v4;
  if (!v4)
  {
    if (_UISolariumEnabled())
    {
      v39 = [(UIViewController *)self view];
    }

    else
    {
      v41 = [[UIVisualEffectView alloc] initWithEffect:0];
      v88 = [UIBlurEffect effectWithStyle:9];
      [(UIVisualEffectView *)v41 setEffect:v88];
      v42 = [(UIViewController *)self view];
      [v42 addSubview:v41];

      [(UIView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
      v66 = MEMORY[0x1E69977A0];
      v82 = [(UIView *)v41 topAnchor];
      v85 = [(UIViewController *)self view];
      v79 = [v85 topAnchor];
      v76 = [v82 constraintEqualToAnchor:v79];
      v96[0] = v76;
      v70 = [(UIView *)v41 leadingAnchor];
      v73 = [(UIViewController *)self view];
      v68 = [v73 leadingAnchor];
      v64 = [v70 constraintEqualToAnchor:v68];
      v96[1] = v64;
      v62 = [(UIView *)v41 trailingAnchor];
      v43 = [(UIViewController *)self view];
      v44 = [v43 trailingAnchor];
      v45 = [v62 constraintEqualToAnchor:v44];
      v96[2] = v45;
      v46 = [(UIView *)v41 bottomAnchor];
      v47 = [(UIViewController *)self view];
      v48 = [v47 bottomAnchor];
      v49 = [v46 constraintEqualToAnchor:v48];
      v96[3] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
      [v66 activateConstraints:v50];

      v22 = 0x1E6997000uLL;
      v9 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;

      v39 = [(UIVisualEffectView *)v41 contentView];
    }

    v40 = +[UIColor clearColor];
    goto LABEL_23;
  }

  v23 = [(UITextFormattingViewController *)self configuration];
  v24 = [v23 _isTextAnimationsConfiguration];

  if (v24)
  {
    v25 = [_UIKBVisualEffectViewForTextFormatting alloc];
    v26 = [(UIViewController *)self view];
    [v26 bounds];
    v27 = [(UIKBInputBackdropView *)v25 initWithFrame:?];

    v28 = self->_backdropView;
    self->_backdropView = v27;
    v29 = v27;

    [(UITextFormattingViewController *)self _updateBackdropView];
    v30 = [(UIViewController *)self view];
    [v30 addSubview:v29];

    [(UIView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = MEMORY[0x1E69977A0];
    v84 = [(UIView *)v29 topAnchor];
    v87 = [(UIViewController *)self view];
    v81 = [v87 topAnchor];
    v78 = [v84 constraintEqualToAnchor:v81];
    v97[0] = v78;
    v72 = [(UIView *)v29 leadingAnchor];
    v75 = [(UIViewController *)self view];
    v69 = [v75 leadingAnchor];
    v65 = [v72 constraintEqualToAnchor:v69];
    v97[1] = v65;
    v63 = [(UIView *)v29 trailingAnchor];
    v31 = [(UIViewController *)self view];
    v32 = [v31 trailingAnchor];
    v33 = [v63 constraintEqualToAnchor:v32];
    v97[2] = v33;
    v34 = [(UIView *)v29 bottomAnchor];
    v35 = [(UIViewController *)self view];
    v36 = [v35 bottomAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v97[3] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:4];
    [v67 activateConstraints:v38];

    v9 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
    v22 = 0x1E6997000;

    v39 = [(UIViewController *)self view];
    v40 = +[UIColor clearColor];

LABEL_23:
    v51 = [(UIViewController *)self view];
    [v51 setBackgroundColor:v40];

    goto LABEL_24;
  }

  v39 = [(UIViewController *)self view];
  v40 = +[UIColor systemBackgroundColor];
  [v39 setBackgroundColor:v40];
LABEL_24:

  v52 = v9[685];
  [v39 addSubview:*(&self->super.super.super.isa + v52)];
  [*(&self->super.super.super.isa + v52) setTranslatesAutoresizingMaskIntoConstraints:0];
  v71 = *(v22 + 1952);
  v86 = [*(&self->super.super.super.isa + v52) topAnchor];
  v89 = [v39 safeAreaLayoutGuide];
  v83 = [v89 topAnchor];
  v80 = [v86 constraintEqualToAnchor:v83];
  v95[0] = v80;
  v77 = [*(&self->super.super.super.isa + v52) leadingAnchor];
  v74 = [v39 leadingAnchor];
  v53 = [v77 constraintEqualToAnchor:v74];
  v95[1] = v53;
  v54 = [*(&self->super.super.super.isa + v52) trailingAnchor];
  v55 = [v39 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v95[2] = v56;
  v57 = [*(&self->super.super.super.isa + v52) bottomAnchor];
  v58 = [v39 safeAreaLayoutGuide];
  v59 = [v58 bottomAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];
  v95[3] = v60;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
  [v71 activateConstraints:v61];

  v4 = v90;
LABEL_25:
}

- (void)_textViewFormattingWillBegin
{
  v3 = [(UITextFormattingViewController *)self _textView];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 tintColor];
    v5 = [(UIViewController *)self view];
    [v5 setTintColor:v4];

    v6 = [v8 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 textView:v8 willBeginFormattingWithViewController:self];
    }

    else
    {
      v7 = [v8 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 _textView:v8 willBeginFormatting:self];
      }
    }

    v3 = v8;
  }
}

- (void)_textViewFormattingDidBegin
{
  v3 = [(UITextFormattingViewController *)self _textView];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 textView:v6 didBeginFormattingWithViewController:self];
    }

    else
    {
      v5 = [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v5 _textView:v6 didBeginFormatting:self];
      }
    }

    v3 = v6;
  }
}

- (void)_textViewFormattingWillEnd
{
  v3 = [(UITextFormattingViewController *)self _textView];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 textView:v6 willEndFormattingWithViewController:self];
    }

    else
    {
      v5 = [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v5 _textView:v6 willEndFormatting:self];
      }
    }

    v3 = v6;
  }
}

- (void)_textViewFormattingDidEnd
{
  v3 = [(UITextFormattingViewController *)self _textView];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 textView:v6 didEndFormattingWithViewController:self];
    }

    else
    {
      v5 = [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v5 _textView:v6 didEndFormatting:self];
      }
    }

    v3 = v6;
  }
}

- (int64_t)_backdropViewStyle
{
  v3 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  v4 = [v3 _textFormattingViewController];

  if (v4 != self)
  {
    goto LABEL_8;
  }

  v5 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  v6 = [v5 _textFormattingResponder];

  if (!v6 || (objc_opt_respondsToSelector() & 1) == 0 || ![v6 _shouldReplaceKeyboardForTextFormattingKeyboardSessionIfApplicable])
  {

LABEL_8:
    v6 = [(UIViewController *)self view];
    v8 = [v6 _inheritedRenderConfig];
    goto LABEL_9;
  }

  v7 = [(UIViewController *)self traitCollection];
  if ([v7 userInterfaceStyle] == 2)
  {
    +[UIKBRenderConfig darkConfig];
  }

  else
  {
    +[UIKBRenderConfig defaultEmojiConfig];
  }
  v8 = ;

  [v8 setColorAdaptiveBackground:_UISolariumEnabled()];
LABEL_9:
  v9 = [v8 backdropStyle];

  return v9;
}

- (void)_updateBackdropView
{
  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(UIKBInputBackdropView *)backdropView transitionToStyle:[(UITextFormattingViewController *)self _backdropViewStyle]];
    if (_UISolariumEnabled())
    {
      v4 = self->_backdropView;
      [(UITextFormattingViewController *)self _preferredCornerRadiusForAnimationOptionsSheet];

      [(_UIKBVisualEffectViewForTextFormatting *)v4 _updateCornerRadiiIfNecessaryWithTopRadius:1 useDeviceCorners:?];
    }
  }
}

- (double)_preferredCornerRadiusForAnimationOptionsSheet
{
  if (!self->_backdropView || !_UISolariumEnabled())
  {
    return 0.0;
  }

  backdropView = self->_backdropView;

  [(UIKBInputBackdropView *)backdropView preferredCornerRadiusForState:2];
  return result;
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v10 = *off_1E70EC920;
    v11[0] = a4;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [[UITextFormattingViewControllerChangeValue alloc] initWithTextColor:v7];

    [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v9 textAttributes:v8];
  }
}

- (void)colorPickerViewControllerDidFinish:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *off_1E70EC920;
  v4 = a3;
  v5 = [v4 selectedColor];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v7 = [UITextFormattingViewControllerChangeValue alloc];
  v8 = [v4 selectedColor];

  v9 = [(UITextFormattingViewControllerChangeValue *)v7 initWithTextColor:v8];
  [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v9 textAttributes:v6];
  colorPicker = self->_colorPicker;
  self->_colorPicker = 0;

  [(UITextFormattingViewController *)self _textFormattingRequestsFirstResponderRestoration];
  [(UITextFormattingViewController *)self _startSuppressingKeyboardForTextFormatting];
  v11 = [(UITextFormattingViewController *)self delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v12 = [(UITextFormattingViewController *)self delegate];
    [v12 _didFinishColorPickingForTextFormattingViewController:self];
  }
}

- (void)_updateFormattingDescriptor:(id)a3
{
  if (a3)
  {
    hostingImpl = self->_hostingImpl;
    v5 = a3;
    [(_UITextFormattingViewHostingImpl *)hostingImpl setRemoteFormattingDescriptor:v5];
    [(_TFTextFormattingContentViewController *)self->_contentViewController _setFormattingDescriptor:v5];

    [(UITextFormattingViewController *)self _updateDisabledComponents];
  }
}

- (void)_updateDisabledComponents
{
  v3 = [(UITextFormattingViewController *)self _editResponder];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UITextFormattingViewController *)self _editResponder];
    v12 = [v5 performSelector:sel__disabledComponentsForTextFormattingOptions];

    v6 = v12;
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  if ([v6 count] || (-[UITextFormattingViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) == 0))
  {
    v11 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [(UITextFormattingViewController *)self delegate];
  v10 = [v9 _disabledComponentsForTextFormattingViewController:self];

  v11 = v10;
  if (v10)
  {
LABEL_9:
    v14 = v11;
    [(_TFTextFormattingContentViewController *)self->_contentViewController _setDisabledComponents:v11];
    v11 = v14;
  }

LABEL_10:
}

- (void)fontPickerViewControllerDidCancel:(id)a3
{
  fontPicker = self->_fontPicker;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__UITextFormattingViewController_fontPickerViewControllerDidCancel___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [(UIViewController *)fontPicker dismissViewControllerAnimated:1 completion:v6];
  v5 = self->_fontPicker;
  self->_fontPicker = 0;

  [(UITextFormattingViewController *)self _textFormattingRequestsFirstResponderRestoration];
  [(UITextFormattingViewController *)self _startSuppressingKeyboardForTextFormatting];
}

void __68__UITextFormattingViewController_fontPickerViewControllerDidCancel___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _modifyKeyboardTrackingIfNeededForType:2 start:0];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 _didFinishFontPickingForTextFormattingViewController:*(a1 + 32)];
  }
}

- (void)fontPickerViewControllerDidPickFont:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 selectedFontDescriptor];
  if (v4)
  {
    v5 = [off_1E70ECC18 fontWithDescriptor:v4 size:self->_selectedFontSize];
    v12 = *off_1E70EC918;
    v13[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [[UITextFormattingViewControllerChangeValue alloc] initWithFont:v5];
    [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v7 textAttributes:v6];
  }

  v8 = dispatch_time(0, 300000000);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__UITextFormattingViewController_fontPickerViewControllerDidPickFont___block_invoke;
  v9[3] = &unk_1E70F2F80;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  dispatch_after(v8, MEMORY[0x1E69E96A0], v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __70__UITextFormattingViewController_fontPickerViewControllerDidPickFont___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[135];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__UITextFormattingViewController_fontPickerViewControllerDidPickFont___block_invoke_2;
    v7[3] = &unk_1E70F35B8;
    v5 = *(a1 + 32);
    v7[4] = v3;
    v7[5] = v5;
    [v4 dismissViewControllerAnimated:1 completion:v7];
    v6 = v3[135];
    v3[135] = 0;

    [v3 _textFormattingRequestsFirstResponderRestoration];
    [v3 _startSuppressingKeyboardForTextFormatting];
  }
}

void __70__UITextFormattingViewController_fontPickerViewControllerDidPickFont___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _modifyKeyboardTrackingIfNeededForType:2 start:0];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 _didFinishFontPickingForTextFormattingViewController:*(a1 + 40)];
  }
}

- (void)_typographySettingsViewControllerDidUpdateFont:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = *off_1E70EC918;
    v9[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [[UITextFormattingViewControllerChangeValue alloc] initWithFont:v5];

    [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v7 textAttributes:v6];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v5 = [(UITextFormattingViewController *)self configuration:a3];
  if (([v5 _isTextAnimationsConfiguration] & 1) != 0 && (-[UIViewController view](self, "view"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [(UIViewController *)self view];
    v9 = [v8 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      return -1;
    }

    else
    {
      return -2;
    }
  }

  else
  {

    return -2;
  }
}

- (UITextFormattingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UITextFormattingViewControllerInternalDelegate)_internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

- (UIResponderStandardEditActions)_editResponder
{
  WeakRetained = objc_loadWeakRetained(&self->__editResponder);

  return WeakRetained;
}

@end