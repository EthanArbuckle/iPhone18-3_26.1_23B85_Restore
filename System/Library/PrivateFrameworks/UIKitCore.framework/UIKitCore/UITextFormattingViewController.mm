@interface UITextFormattingViewController
- (BOOL)_adjustAttributesInTextStorage:(id)storage atRange:(_NSRange)range forChangeValue:(id)value;
- (BOOL)_useChildViewWidthForContentSize;
- (BOOL)_useLandscapeLayout;
- (BOOL)_useLandscapeLayoutForSize:(CGSize)size;
- (CGSize)_computeContentSize;
- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)size screenSize:(CGSize)screenSize;
- (UIResponderStandardEditActions)_editResponder;
- (UITextFormattingViewController)init;
- (UITextFormattingViewController)initWithCoder:(id)coder;
- (UITextFormattingViewController)initWithConfiguration:(id)configuration;
- (UITextFormattingViewControllerDelegate)delegate;
- (UITextFormattingViewControllerFormattingDescriptor)formattingDescriptor;
- (_UITextFormattingViewControllerInternalDelegate)_internalDelegate;
- (double)_preferredCornerRadiusForAnimationOptionsSheet;
- (id)_scrollView;
- (id)_textView;
- (int64_t)_backdropViewStyle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)_applyTextViewHighlightWithChangeValue:(id)value;
- (void)_cleanupForEditResponder;
- (void)_commonInit;
- (void)_invokeEditResponderAction:(SEL)action;
- (void)_invokeEditResponderAction:(SEL)action withArgument:(id)argument;
- (void)_modifyKeyboardTrackingIfNeededForKeyboardSuppression;
- (void)_modifyKeyboardTrackingIfNeededForType:(unint64_t)type fromFrame:(CGRect)frame toFrame:(CGRect)toFrame start:(BOOL)start;
- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color;
- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts;
- (void)_presentTypographySettingsForFont:(id)font;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)_reconfigureViewHierarchyForParentController:(id)controller;
- (void)_resetDetentsForSheetController:(id)controller invalidate:(BOOL)invalidate;
- (void)_resumeKeyboardSuppressionIfNeeded;
- (void)_sendUpdatesToEditResponder:(id)responder;
- (void)_setChildViewController:(id)controller;
- (void)_setEditResponder:(id)responder;
- (void)_setupForEditResponder;
- (void)_startSuppressingKeyboardForTextFormatting;
- (void)_stopSuppressingKeyboardForTextFormatting;
- (void)_textFormattingDidChangeValue:(id)value textAttributes:(id)attributes;
- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data;
- (void)_textFormattingDidFinish;
- (void)_textFormattingRequestsFirstResponderResignation;
- (void)_textFormattingRequestsFirstResponderRestoration;
- (void)_textViewFormattingDidBegin;
- (void)_textViewFormattingDidEnd;
- (void)_textViewFormattingWillBegin;
- (void)_textViewFormattingWillEnd;
- (void)_typographySettingsViewControllerDidUpdateFont:(id)font;
- (void)_updateBackdropView;
- (void)_updateChildControllersConfiguration;
- (void)_updateContentSizeForAppearance:(BOOL)appearance;
- (void)_updateDisabledComponents;
- (void)_updateFormattingDescriptor:(id)descriptor;
- (void)_updateInternalConfigurationProperties;
- (void)_updateNavBarVisibility;
- (void)_updateScrollViewContentSizeIfNeeded;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)encodeWithCoder:(id)coder;
- (void)fontPickerViewControllerDidCancel:(id)cancel;
- (void)fontPickerViewControllerDidPickFont:(id)font;
- (void)loadView;
- (void)modifyKeyboardTrackingIfNeededForType:(unint64_t)type start:(BOOL)start force:(BOOL)force immediate:(BOOL)immediate;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setConfiguration:(id)configuration;
- (void)setFormattingDescriptor:(id)descriptor;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation UITextFormattingViewController

- (void)_modifyKeyboardTrackingIfNeededForKeyboardSuppression
{
  selfCopy = self;
  sub_188F7A85C();
}

- (void)modifyKeyboardTrackingIfNeededForType:(unint64_t)type start:(BOOL)start force:(BOOL)force immediate:(BOOL)immediate
{
  selfCopy = self;
  sub_188F7A9FC(type, start, force, immediate);
}

- (void)_modifyKeyboardTrackingIfNeededForType:(unint64_t)type fromFrame:(CGRect)frame toFrame:(CGRect)toFrame start:(BOOL)start
{
  height = toFrame.size.height;
  width = toFrame.size.width;
  y = toFrame.origin.y;
  x = toFrame.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  selfCopy = self;
  sub_188F7AEA4(type, start, v14, v13, v12, v11, x, y, width, height);
}

- (void)_setupForEditResponder
{
  selfCopy = self;
  sub_188F7B2B8();
}

- (void)_cleanupForEditResponder
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];
}

- (void)_resumeKeyboardSuppressionIfNeeded
{
  selfCopy = self;
  sub_188F7B610();
}

- (BOOL)_adjustAttributesInTextStorage:(id)storage atRange:(_NSRange)range forChangeValue:(id)value
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  valueCopy = value;
  selfCopy = self;
  sub_188FE6F7C(storageCopy, location, length, valueCopy);
  LOBYTE(length) = v12;

  return length & 1;
}

- (UITextFormattingViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UITextFormattingViewController *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UITextFormattingViewControllerConfiguration"];
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

- (UITextFormattingViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = UITextFormattingViewController;
  v5 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy copy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configuration = [(UITextFormattingViewController *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"UITextFormattingViewControllerConfiguration"];
}

- (void)dealloc
{
  [(UITextFormattingViewController *)self _cleanupForEditResponder];
  v3.receiver = self;
  v3.super_class = UITextFormattingViewController;
  [(UIViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewWillAppear:appear];
  [(UITextFormattingViewController *)self _textViewFormattingWillBegin];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewIsAppearing:appearing];
  [(UITextFormattingViewController *)self _updateNavBarVisibility];
  [(UITextFormattingViewController *)self _updateInternalConfigurationProperties];
  [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
  [(UITextFormattingViewController *)self _updateContentSizeForAppearance:1];
  [(UITextFormattingViewController *)self _updateDisabledComponents];
  [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:2 start:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = UITextFormattingViewController;
  [(UIViewController *)&v8 viewDidAppear:appear];
  [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:2 start:0];
  [(UITextFormattingViewController *)self _textViewFormattingDidBegin];
  configuration = [(UITextFormattingViewController *)self configuration];
  if ([configuration _isTextAnimationsConfiguration])
  {
    v5 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
    _textFormattingViewController = [v5 _textFormattingViewController];

    if (_textFormattingViewController != self)
    {
      return;
    }

    v7 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
    configuration = [v7 _textFormattingResponder];

    if (configuration && ([configuration isFirstResponder] & 1) == 0)
    {
      if ([configuration canBecomeFirstResponder])
      {
        [configuration becomeFirstResponder];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewWillDisappear:disappear];
  if ([(UIViewController *)self isBeingDismissed])
  {
    [(UITextFormattingViewController *)self _modifyKeyboardTrackingIfNeededForType:3 start:1];
  }

  [(UITextFormattingViewController *)self _textViewFormattingWillEnd];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = UITextFormattingViewController;
  [(UIViewController *)&v9 viewDidDisappear:disappear];
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
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(UIView *)self->_containerView topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[0] = v42;
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v49[1] = v8;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v49[2] = v11;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_containerView bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v49[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v36 activateConstraints:v15];
  }

  [(UIView *)self->_contentView addSubview:self->_contentStackView];
  [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  axis = [(UIStackView *)self->_contentStackView axis];
  v33 = MEMORY[0x1E69977A0];
  topAnchor3 = [(UIView *)self->_contentStackView topAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_contentView safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v48[0] = v41;
  leadingAnchor3 = [(UIView *)self->_contentStackView leadingAnchor];
  safeAreaLayoutGuide2 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v48[1] = v32;
  trailingAnchor3 = [(UIView *)self->_contentStackView trailingAnchor];
  safeAreaLayoutGuide3 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v48[2] = v18;
  bottomAnchor3 = [(UIView *)self->_contentStackView bottomAnchor];
  safeAreaLayoutGuide4 = [(UIView *)self->_contentView safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide4 bottomAnchor];
  v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v48[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  [v33 activateConstraints:v23];

  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    view = [(_TFTextFormattingContentViewController *)contentViewController view];
    [view removeFromSuperview];

    [(_TFTextFormattingContentViewController *)self->_contentViewController removeFromParentViewController];
    [(_TFTextFormattingContentViewController *)self->_contentViewController willMoveToParentViewController:self];
    view2 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
    LODWORD(v27) = 1148846080;
    [view2 setContentCompressionResistancePriority:axis == UILayoutConstraintAxisVertical forAxis:v27];
    [(UIViewController *)self addChildViewController:self->_contentViewController];
    [(UIStackView *)self->_contentStackView addArrangedSubview:view2];
    [(_TFTextFormattingContentViewController *)self->_contentViewController didMoveToParentViewController:self];
  }

  if (![(UITextFormattingViewControllerConfiguration *)self->_configuration _allowContentToScroll])
  {
    v28 = objc_opt_new();
    LODWORD(v29) = 1132068864;
    [v28 setContentHuggingPriority:axis == UILayoutConstraintAxisVertical forAxis:v29];
    [(UIStackView *)self->_contentStackView addArrangedSubview:v28];
  }

  parentViewController = [(UIViewController *)self parentViewController];
  [(UITextFormattingViewController *)self _reconfigureViewHierarchyForParentController:parentViewController];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 viewWillLayoutSubviews];
  [(UITextFormattingViewController *)self _updateScrollViewContentSizeIfNeeded];
  _useLandscapeLayout = [(UITextFormattingViewController *)self _useLandscapeLayout];
  if (_useLandscapeLayout != [(UITextFormattingViewControllerConfiguration *)self->_configuration _useLandscapeLayout])
  {
    [(UITextFormattingViewController *)self _updateInternalConfigurationProperties];
    [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = UITextFormattingViewController;
  controllerCopy = controller;
  [(UIViewController *)&v5 willMoveToParentViewController:controllerCopy];
  [(UITextFormattingViewController *)self _reconfigureViewHierarchyForParentController:controllerCopy, v5.receiver, v5.super_class];

  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setHasParentViewController:controllerCopy != 0];
  [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = UITextFormattingViewController;
  controllerCopy = controller;
  [(UIViewController *)&v5 didMoveToParentViewController:controllerCopy];
  [(UITextFormattingViewController *)self _reconfigureViewHierarchyForParentController:controllerCopy, v5.receiver, v5.super_class];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = UITextFormattingViewController;
  [(UIViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(UITextFormattingViewController *)self _updateContentSizeForAppearance:0];
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = presentationControllerCopy;
    [v5 setPrefersEdgeAttachedInCompactHeight:1];
    [v5 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    [(UITextFormattingViewController *)self _resetDetentsForSheetController:v5 invalidate:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v35.receiver = self;
  v35.super_class = UITextFormattingViewController;
  [(UIViewController *)&v35 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
    [coordinatorCopy animateAlongsideTransition:v33 completion:0];
  }

  [(UITextFormattingViewController *)self _updateInternalConfigurationProperties];
  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setUseLandscapeLayout:[(UITextFormattingViewController *)self _useLandscapeLayoutForSize:width, height]];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x4010000000;
  v30[3] = "";
  v31 = 0u;
  v32 = 0u;
  view = [(UIViewController *)self view];
  view2 = [(UIViewController *)self view];
  [view2 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view3 = [(UIViewController *)self view];
  window = [view3 window];
  [view convertRect:window toView:{v12, v14, v16, v18}];
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
  [coordinatorCopy animateAlongsideTransition:v26 completion:v25];
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

- (CGSize)_formSheetSizeForWindowWithSize:(CGSize)size screenSize:(CGSize)screenSize
{
  height = screenSize.height;
  width = screenSize.width;
  v6 = size.height;
  v7 = size.width;
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

- (void)setConfiguration:(id)configuration
{
  v4 = [configuration copy];
  configuration = self->_configuration;
  self->_configuration = v4;

  [(UITextFormattingViewController *)self _updateChildControllersConfiguration];
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  remoteViewController = self->_remoteViewController;
  if (remoteViewController != controllerCopy)
  {
    v9 = controllerCopy;
    view = [(UIViewController *)remoteViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_remoteViewController removeFromParentViewController];
    objc_storeStrong(&self->_remoteViewController, controller);
    controllerCopy = v9;
    if (self->_remoteViewController)
    {
      [(UIViewController *)v9 willMoveToParentViewController:self];
      view2 = [(UIViewController *)v9 view];
      [(UIViewController *)self addChildViewController:v9];
      [(UIStackView *)self->_contentStackView addArrangedSubview:view2];
      [(UIViewController *)v9 didMoveToParentViewController:self];
      [(UITextFormattingViewController *)self _computeContentSize];
      [(UIViewController *)self setPreferredContentSize:?];

      controllerCopy = v9;
    }
  }
}

- (UITextFormattingViewControllerFormattingDescriptor)formattingDescriptor
{
  v2 = [(UITextFormattingViewControllerFormattingDescriptor *)self->_formattingDescriptor copy];

  return v2;
}

- (void)setFormattingDescriptor:(id)descriptor
{
  conversionHandler = self->__conversionHandler;
  self->__conversionHandler = 0;
  descriptorCopy = descriptor;

  v6 = [descriptorCopy copy];
  formattingDescriptor = self->_formattingDescriptor;
  self->_formattingDescriptor = v6;

  v8 = self->_formattingDescriptor;

  [(UITextFormattingViewController *)self _updateFormattingDescriptor:v8];
}

- (void)_setEditResponder:(id)responder
{
  responderCopy = responder;
  [(UITextFormattingViewController *)self _cleanupForEditResponder];
  objc_storeWeak(&self->__editResponder, responderCopy);

  [(UITextFormattingViewController *)self _setupForEditResponder];
}

- (void)_textFormattingDidChangeValue:(id)value textAttributesData:(id)data
{
  valueCopy = value;
  dataCopy = data;
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
  if (dataCopy)
  {
    v20 = 0;
    v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:dataCopy error:&v20];
    v17 = v20;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  [(UITextFormattingViewController *)self _textFormattingDidChangeValue:valueCopy textAttributes:v16];
}

- (void)_textFormattingDidFinish
{
  delegate = [(UITextFormattingViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UITextFormattingViewController *)self delegate];
    [delegate2 textFormattingDidFinish:self];
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

- (void)_presentColorPicker:(CGRect)picker selectedColor:(id)color
{
  height = picker.size.height;
  width = picker.size.width;
  y = picker.origin.y;
  x = picker.origin.x;
  colorCopy = color;
  v10 = objc_alloc_init(UIColorPickerViewController);
  [(UIColorPickerViewController *)v10 setSelectedColor:colorCopy];
  [(UIColorPickerViewController *)v10 setSupportsAlpha:0];
  [(UIColorPickerViewController *)v10 _setSupportsEyedropper:0];
  [(UIColorPickerViewController *)v10 _setShowsGridOnly:1];
  delegate = [(UITextFormattingViewController *)self delegate];
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
          _editResponder = [(UITextFormattingViewController *)self _editResponder];
          self->_shouldSkipStoppingKeyboardSuppressionOnDidDisappear = 1;
          v22 = objc_loadWeakRetained(&self->_internalDelegate);
          objc_initWeak(&location, v22);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __68__UITextFormattingViewController__presentColorPicker_selectedColor___block_invoke;
          v33[3] = &unk_1E711B1F8;
          v23 = _editResponder;
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
    popoverPresentationController = [(UIViewController *)v10 popoverPresentationController];
    view = [(UIViewController *)self view];
    [popoverPresentationController setSourceView:view];

    popoverPresentationController2 = [(UIViewController *)v10 popoverPresentationController];
    view2 = [(UIViewController *)self view];
    window = [view2 window];
    view3 = [(UIViewController *)self view];
    [window convertRect:view3 toView:{x, y, width, height}];
    [popoverPresentationController2 setSourceRect:?];

    popoverPresentationController3 = [(UIViewController *)v10 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:15];

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

- (void)_presentFontPickerWithConfiguration:(id)configuration selectedFonts:(id)fonts
{
  configurationCopy = configuration;
  fontsCopy = fonts;
  configuration = [(UITextFormattingViewController *)self configuration];
  fontPickerConfiguration = [configuration fontPickerConfiguration];
  v10 = fontPickerConfiguration;
  if (fontPickerConfiguration)
  {
    v11 = fontPickerConfiguration;
  }

  else
  {
    v11 = configurationCopy;
  }

  v12 = v11;

  v13 = [[UIFontPickerViewController alloc] initWithConfiguration:v12];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fontsCopy, "count")}];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke;
  v45[3] = &unk_1E712CCF8;
  v15 = v14;
  v46 = v15;
  [fontsCopy enumerateObjectsUsingBlock:v45];
  [(UIFontPickerViewController *)v13 _setSelectedFontDescriptors:v15];
  delegate = [(UITextFormattingViewController *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0 || (-[UITextFormattingViewController delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 textFormattingViewController:self shouldPresentFontPicker:v13], v18, v19))
  {
    [(UIFontPickerViewController *)v13 _setSelectedFontDescriptors:v15, configurationCopy];
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
          _editResponder = [(UITextFormattingViewController *)self _editResponder];
          self->_shouldSkipStoppingKeyboardSuppressionOnDidDisappear = 1;
          v27 = objc_loadWeakRetained(&self->_internalDelegate);
          objc_initWeak(&location, v27);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __84__UITextFormattingViewController__presentFontPickerWithConfiguration_selectedFonts___block_invoke_2;
          v38[3] = &unk_1E712CD20;
          v39 = fontsCopy;
          v28 = _editResponder;
          v40 = v28;
          v41 = v13;
          v29 = v25;
          v42 = v29;
          objc_copyWeak(&v43, &location);
          [(UIViewController *)self dismissViewControllerAnimated:1 completion:v38];
          objc_destroyWeak(&v43);

          objc_destroyWeak(&location);
          configurationCopy = v36;
          goto LABEL_15;
        }
      }
    }

    [(UIFontPickerViewController *)v13 setDelegate:self];
    sheetPresentationController = [(UIViewController *)v13 sheetPresentationController];
    [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:1];

    sheetPresentationController2 = [(UIViewController *)v13 sheetPresentationController];
    [sheetPresentationController2 setWidthFollowsPreferredContentSizeWhenEdgeAttached:0];

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
    firstObject = [fontsCopy firstObject];
    if (firstObject)
    {
      firstObject2 = [fontsCopy firstObject];
      [firstObject2 pointSize];
      self->_selectedFontSize = v34;
    }

    else
    {
      [off_1E70ECC18 defaultFontSize];
      self->_selectedFontSize = v35;
    }

    configurationCopy = v36;
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

- (void)_presentTypographySettingsForFont:(id)font
{
  v27[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
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
    _useLandscapeLayout = [(UITextFormattingViewControllerConfiguration *)self->_configuration _useLandscapeLayout];
    v12 = 0.0;
    if (_useLandscapeLayout)
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
    sheetPresentationController = [(UIViewController *)v8 sheetPresentationController];
    [sheetPresentationController setDetents:v15];

    sheetPresentationController2 = [(UIViewController *)v8 sheetPresentationController];
    [sheetPresentationController2 setLargestUndimmedDetentIdentifier:@"com.apple.UIKit.textFormattingFontPicker"];

    sheetPresentationController3 = [(UIViewController *)v8 sheetPresentationController];
    [sheetPresentationController3 setPrefersEdgeAttachedInCompactHeight:1];

    sheetPresentationController4 = [(UIViewController *)v8 sheetPresentationController];
    [sheetPresentationController4 setWidthFollowsPreferredContentSizeWhenEdgeAttached:0];

    sheetPresentationController5 = [(UIViewController *)v8 sheetPresentationController];
    [sheetPresentationController5 setPrefersGrabberVisible:1];
  }

  [(UIViewController *)self presentViewController:v8 animated:1 completion:0];
  [v7 _setSelectedFont:fontCopy];
}

- (void)_resetDetentsForSheetController:(id)controller invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v20[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  detents = [controllerCopy detents];
  v8 = [detents count] == 0;

  if (!v8)
  {
    detents2 = [controllerCopy detents];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__UITextFormattingViewController__resetDetentsForSheetController_invalidate___block_invoke;
    v15[3] = &unk_1E712CD48;
    v15[4] = &v16;
    [detents2 enumerateObjectsUsingBlock:v15];
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
    [controllerCopy setDetents:v12];

    if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _preferringDimmingVisible])
    {
      v13 = 0;
    }

    else
    {
      v13 = @"com.apple.UIKit.textFormatting";
    }

    [controllerCopy setLargestUndimmedDetentIdentifier:v13];
    if (invalidateCopy)
    {
      [controllerCopy invalidateDetents];
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
  _window = [(UIViewController *)self _window];
  v4 = _window;
  if (_window)
  {
    [_window frame];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    view = [(UIViewController *)self view];
    [view frame];
    v6 = v10;
    v8 = v11;
  }

  return [(UITextFormattingViewController *)self _useLandscapeLayoutForSize:v6, v8];
}

- (BOOL)_useLandscapeLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(UIViewController *)self _isInPopoverPresentation])
  {
    return 0;
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  v8 = +[UIDevice currentDevice];
  [v8 orientation];

  v9 = height < width;
  if (width <= 480.0)
  {
    v9 = 0;
  }

  return !userInterfaceIdiom && v9;
}

- (void)_updateInternalConfigurationProperties
{
  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setHasPopoverPresentation:[(UIViewController *)self _isInPopoverPresentation]];
  [(UITextFormattingViewControllerConfiguration *)self->_configuration _setUseLandscapeLayout:[(UITextFormattingViewController *)self _useLandscapeLayout]];
  configuration = [(UITextFormattingViewController *)self configuration];
  _isTextAnimationsConfiguration = [configuration _isTextAnimationsConfiguration];

  if (_isTextAnimationsConfiguration)
  {
    if ([(UIViewController *)self _isInPopoverPresentation])
    {
      v5 = 0;
    }

    else
    {
      view = [(UIViewController *)self view];
      [view bounds];
      v5 = v8 <= 320.0;
    }

    v9 = +[UIDevice currentDevice];
    v10 = [v9 _deviceInfoForKey:@"main-screen-class"];
    integerValue = [v10 integerValue];

    v6 = integerValue == 28 || (integerValue & 0xFFFFFFFE) == 6 || v5;
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

- (void)_sendUpdatesToEditResponder:(id)responder
{
  responderCopy = responder;
  _textView = [(UITextFormattingViewController *)self _textView];
  if (responderCopy && _textView)
  {
    selectedTextRange = [_textView selectedTextRange];
    isEmpty = [selectedTextRange isEmpty];

    if (isEmpty)
    {
      v7 = MakeConversionHandler(responderCopy);
      typingAttributes = [_textView typingAttributes];
      v9 = (v7)[2](v7, typingAttributes);
      [_textView setTypingAttributes:v9];

      if (objc_opt_respondsToSelector())
      {
        [_textView performSelector:sel__textFormattingOptionsNeedUpdate_ withObject:0];
      }
    }
  }

  else if (!responderCopy)
  {
    goto LABEL_10;
  }

  _editResponder = [(UITextFormattingViewController *)self _editResponder];

  if (_editResponder)
  {
    _editResponder2 = [(UITextFormattingViewController *)self _editResponder];
    SendUpdatesToEditResponder(responderCopy, _editResponder2);
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

    superview = [(UIView *)navBar superview];

    if (!superview)
    {
      if (_UISolariumEnabled())
      {
        [(UIView *)self->_contentStackView setLayoutMargins:14.0, 0.0, 0.0, 0.0];
        [(UIStackView *)self->_contentStackView setLayoutMarginsRelativeArrangement:1];
      }

      [(UIStackView *)self->_contentStackView insertArrangedSubview:self->_navBar atIndex:0];
    }

    navigationItem = [(UIViewController *)self navigationItem];
    [navigationItem setTitle:0];
  }

  v25 = self->_navBar;
  navigationItem2 = [(UIViewController *)self navigationItem];
  v27 = navigationItem2;
  if (v25)
  {
    [navigationItem2 setTitle:0];

    navigationItem3 = [(UIViewController *)self navigationItem];
    [(UIBarButtonItem *)navigationItem3 setRightBarButtonItem:0];
  }

  else
  {
    v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"TEXT_FORMATTING_FORMAT" value:@"Format" table:@"Localizable"];
    [v27 setTitle:v30];

    navigationItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 primaryAction:0];
    [(UIBarButtonItem *)navigationItem3 setAction:sel__textFormattingDidFinish];
    [(UIBarButtonItem *)navigationItem3 setTarget:self];
    navigationItem4 = [(UIViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:navigationItem3];
  }
}

- (BOOL)_useChildViewWidthForContentSize
{
  if ([(UIViewController *)self _isInPopoverPresentation]|| (_isTextViewConfiguration = [(UITextFormattingViewController *)self _useLandscapeLayout]))
  {
    _isTextViewConfiguration = [(UITextFormattingViewControllerConfiguration *)self->_configuration _isTextViewConfiguration];
    if (_isTextViewConfiguration)
    {
      LOBYTE(_isTextViewConfiguration) = ![(UITextFormattingViewControllerConfiguration *)self->_configuration _isTextAnimationsConfiguration];
    }
  }

  return _isTextViewConfiguration;
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
    view = [(UIViewController *)self view];
    [view frame];
    v5 = v14;
  }

  navBar = self->_navBar;
  v16 = 0.0;
  if (navBar)
  {
    superview = [(UIView *)navBar superview];

    if (superview)
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

- (void)_updateContentSizeForAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
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
    view = [(UIViewController *)v7 view];
    [view frame];
    v10 = v9;
    [(UIViewController *)self->_remoteViewController preferredContentSize];
    v12 = v11;

    if (v10 != v12)
    {
      view2 = [(UIViewController *)self->_remoteViewController view];
      [view2 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [(UIViewController *)self->_remoteViewController preferredContentSize];
      v21 = v20;
      view3 = [(UIViewController *)self->_remoteViewController view];
      [view3 setFrame:{v15, v17, v19, v21}];

      arrangedSubviews = [(UIStackView *)self->_contentStackView arrangedSubviews];
      view4 = [(UIViewController *)self->_remoteViewController view];
      v25 = [arrangedSubviews indexOfObject:view4];

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        view5 = [(UIViewController *)self->_remoteViewController view];
        [view5 removeFromSuperview];

        contentStackView = self->_contentStackView;
        view6 = [(UIViewController *)self->_remoteViewController view];
        [(UIStackView *)contentStackView insertArrangedSubview:view6 atIndex:v25];
      }
    }
  }

  v29 = self->_contentViewController;
  if (v29)
  {
    view7 = [(_TFTextFormattingContentViewController *)v29 view];
    [view7 frame];
    v32 = v31;
    [(_TFTextFormattingContentViewController *)self->_contentViewController preferredContentSize];
    v34 = v33;

    if (v32 != v34)
    {
      view8 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
      [view8 frame];
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [(_TFTextFormattingContentViewController *)self->_contentViewController preferredContentSize];
      v43 = v42;
      view9 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
      [view9 setFrame:{v37, v39, v41, v43}];

      arrangedSubviews2 = [(UIStackView *)self->_contentStackView arrangedSubviews];
      view10 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
      v47 = [arrangedSubviews2 indexOfObject:view10];

      if (v47 != 0x7FFFFFFFFFFFFFFFLL)
      {
        view11 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
        [view11 removeFromSuperview];

        v49 = self->_contentStackView;
        view12 = [(_TFTextFormattingContentViewController *)self->_contentViewController view];
        [(UIStackView *)v49 insertArrangedSubview:view12 atIndex:v47];
      }
    }
  }

  [(UITextFormattingViewController *)self _computeContentSize];
  v52 = v51;
  v54 = v53;
  if (![(UITextFormattingViewController *)self _useChildViewWidthForContentSize])
  {
    [(UIViewController *)self preferredContentSize];
    if ((v59 != v54 || v58 != v52) && appearanceCopy)
    {
      if ([(UIViewController *)self _isInPopoverPresentation])
      {
        popoverPresentationController = [(UIViewController *)self popoverPresentationController];

        if (popoverPresentationController)
        {
          popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
          arrowDirection = [popoverPresentationController2 arrowDirection];

          if (arrowDirection == 8 || arrowDirection == 4)
          {
            view13 = [(UIViewController *)self view];
            [view13 bounds];
            v66 = v65;
            view14 = [(UIViewController *)self view];
            [view14 safeAreaInsets];
            v69 = v66 - v68;
            view15 = [(UIViewController *)self view];
            [view15 safeAreaInsets];
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
  _scrollView = [(UITextFormattingViewController *)self _scrollView];
  if (_scrollView)
  {
    v16 = _scrollView;
    [_scrollView contentSize];
    if (v9 != v4 || v8 != v6)
    {
      [v16 setContentSize:{v4, v6}];
    }

    [(UIView *)self->_contentView frame];
    v13 = v12 == v4 && v11 == v6;
    _scrollView = v16;
    if (!v13)
    {
      [(UIView *)self->_contentView frame];
      v15 = v14;
      [(UIView *)self->_contentView frame];
      [(UIView *)self->_contentView setFrame:v15];
      _scrollView = v16;
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

- (void)_invokeEditResponderAction:(SEL)action
{
  _editResponder = [(UITextFormattingViewController *)self _editResponder];
  if (_editResponder)
  {
    v6 = _editResponder;
    _editResponder2 = [(UITextFormattingViewController *)self _editResponder];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
      [_editResponder3 action];
    }
  }
}

- (void)_invokeEditResponderAction:(SEL)action withArgument:(id)argument
{
  argumentCopy = argument;
  _editResponder = [(UITextFormattingViewController *)self _editResponder];
  if (_editResponder)
  {
    v7 = _editResponder;
    _editResponder2 = [(UITextFormattingViewController *)self _editResponder];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
      [_editResponder3 action];
    }
  }
}

- (void)_applyTextViewHighlightWithChangeValue:(id)value
{
  valueCopy = value;
  _textView = [(UITextFormattingViewController *)self _textView];
  v5 = _textView;
  if (_textView)
  {
    selectedTextRange = [_textView selectedTextRange];
    v7 = _NSTextHighlightColorSchemeForTextFormattingChangeValue(valueCopy);
    if ([selectedTextRange isEmpty])
    {
      v8 = objc_opt_new();
      selectedTextRange2 = v8;
      if (v7)
      {
        [v8 setObject:*off_1E70ECA88 forKey:*off_1E70ECA80];
        [selectedTextRange2 setObject:v7 forKey:*off_1E70ECA40];
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
        [selectedTextRange2 setObject:null forKey:*off_1E70ECA80];

        null2 = [MEMORY[0x1E695DFB0] null];
        [selectedTextRange2 setObject:null2 forKey:*off_1E70ECA40];
      }

      [(UITextFormattingViewController *)self _sendUpdatesToEditResponder:selectedTextRange2];
    }

    else if (v7)
    {
      v10 = *off_1E70ECA88;
      selectedTextRange2 = [v5 selectedTextRange];
      [v5 _applyHighlightStyle:v10 colorScheme:v7 toTextRange:selectedTextRange2];
    }

    else
    {
      selectedTextRange2 = [v5 selectedTextRange];
      [v5 _removeHighlightsFromTextRange:selectedTextRange2];
    }
  }
}

- (void)_textFormattingDidChangeValue:(id)value textAttributes:(id)attributes
{
  v73[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (attributesCopy)
  {
    v9 = MakeConversionHandler(attributesCopy);
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

  _editResponder = [(UITextFormattingViewController *)self _editResponder];
  if (!_editResponder)
  {
LABEL_15:
    delegate = [(UITextFormattingViewController *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate2 = [(UITextFormattingViewController *)self delegate];
      [delegate2 textFormattingViewController:self didChangeValue:valueCopy];
      goto LABEL_40;
    }

    configuration = [(UITextFormattingViewController *)self configuration];
    _isTextAnimationsConfiguration = [configuration _isTextAnimationsConfiguration];

    if (_isTextAnimationsConfiguration && ([valueCopy _textAnimationAttributes], v26 = objc_claimAutoreleasedReturnValue(), v8 | v26))
    {
      delegate2 = v26;
      if (v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = v8;
      }

      selfCopy2 = self;
    }

    else
    {
      delegate2 = [(UITextFormattingViewController *)self _textView];
      changeType = [valueCopy changeType];
      v28 = [changeType isEqualToString:@"UITextFormattingViewControllerIncreaseFontSizeChange"];

      if (v28)
      {
        _editResponder2 = [(UITextFormattingViewController *)self _editResponder];

        if (!_editResponder2)
        {
          goto LABEL_40;
        }

        _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
        [_editResponder3 increaseSize:self];
LABEL_39:

        goto LABEL_40;
      }

      changeType2 = [valueCopy changeType];
      v32 = [changeType2 isEqualToString:@"UITextFormattingViewControllerDecreaseFontSizeChange"];

      if (v32)
      {
        _editResponder4 = [(UITextFormattingViewController *)self _editResponder];

        if (!_editResponder4)
        {
          goto LABEL_40;
        }

        _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
        [_editResponder3 decreaseSize:self];
        goto LABEL_39;
      }

      changeType3 = [valueCopy changeType];
      v37 = [changeType3 isEqualToString:@"UITextFormattingViewControllerFontSizeChange"];

      if (v37)
      {
        _editResponder5 = [(UITextFormattingViewController *)self _editResponder];
        if (!_editResponder5)
        {
          goto LABEL_40;
        }

        v39 = _editResponder5;
        numberValue = [valueCopy numberValue];

        if (!numberValue)
        {
          goto LABEL_40;
        }

        v72 = @"_UITextFormattingSizeAttributeName";
        numberValue2 = [valueCopy numberValue];
        v73[0] = numberValue2;
        numberValue3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];

        [(UITextFormattingViewController *)self _sendUpdatesToEditResponder:numberValue3];
        goto LABEL_34;
      }

      changeType4 = [valueCopy changeType];
      v44 = [changeType4 isEqualToString:@"UITextFormattingViewControllerSetBoldChange"];

      if (v44 || ([valueCopy changeType], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "isEqualToString:", @"UITextFormattingViewControllerRemoveBoldChange"), v45, v46))
      {
        _editResponder6 = [(UITextFormattingViewController *)self _editResponder];

        if (!_editResponder6)
        {
          goto LABEL_40;
        }

        _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
        [_editResponder3 toggleBoldface:self];
        goto LABEL_39;
      }

      changeType5 = [valueCopy changeType];
      v52 = [changeType5 isEqualToString:@"UITextFormattingViewControllerSetItalicChange"];

      if (v52 || ([valueCopy changeType], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqualToString:", @"UITextFormattingViewControllerRemoveItalicChange"), v53, v54))
      {
        _editResponder7 = [(UITextFormattingViewController *)self _editResponder];

        if (!_editResponder7)
        {
          goto LABEL_40;
        }

        _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
        [_editResponder3 toggleItalics:self];
        goto LABEL_39;
      }

      changeType6 = [valueCopy changeType];
      v57 = [changeType6 isEqualToString:@"UITextFormattingViewControllerSetUnderlineChange"];

      if (v57 || ([valueCopy changeType], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isEqualToString:", @"UITextFormattingViewControllerRemoveUnderlineChange"), v58, v59))
      {
        _editResponder8 = [(UITextFormattingViewController *)self _editResponder];

        if (!_editResponder8)
        {
          goto LABEL_40;
        }

        _editResponder3 = [(UITextFormattingViewController *)self _editResponder];
        [_editResponder3 toggleUnderline:self];
        goto LABEL_39;
      }

      changeType7 = [valueCopy changeType];
      v62 = [changeType7 isEqualToString:@"UITextFormattingViewControllerTextAlignmentChange"];

      if (v62)
      {
        if ([valueCopy textAlignment])
        {
          if ([valueCopy textAlignment] == 1)
          {
            v63 = sel_alignCenter_;
          }

          else if ([valueCopy textAlignment] == 2)
          {
            v63 = sel_alignRight_;
          }

          else
          {
            if ([valueCopy textAlignment] != 3)
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

      changeType8 = [valueCopy changeType];
      v65 = [changeType8 isEqualToString:@"UITextFormattingViewControllerLineHeightPointSizeChange"];

      if (v65)
      {
        numberValue3 = [valueCopy numberValue];
        [(UITextFormattingViewController *)self _invokeEditResponderAction:sel__changeLineHeightAction_newLineHeight_ withArgument:numberValue3];
LABEL_34:

        goto LABEL_40;
      }

      if (delegate2)
      {
        changeType9 = [valueCopy changeType];
        v67 = [changeType9 isEqualToString:@"UITextFormattingViewControllerHighlightChange"];

        if (v67)
        {
          [(UITextFormattingViewController *)self _applyTextViewHighlightWithChangeValue:valueCopy];
          goto LABEL_40;
        }

        textStorage = [delegate2 textStorage];
        selectedRange = [delegate2 selectedRange];
        valueCopy = [(UITextFormattingViewController *)self _adjustAttributesInTextStorage:textStorage atRange:selectedRange forChangeValue:v71, valueCopy];
      }

      else
      {
        valueCopy = 0;
      }

      if (!v8 || valueCopy)
      {
        goto LABEL_40;
      }

      selfCopy2 = self;
      v34 = v8;
    }

    [(UITextFormattingViewController *)selfCopy2 _sendUpdatesToEditResponder:v34];
    goto LABEL_40;
  }

  v13 = _editResponder;
  _editResponder9 = [(UITextFormattingViewController *)self _editResponder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_15;
  }

  _editResponder10 = [(UITextFormattingViewController *)self _editResponder];
  v16 = [_editResponder10 performSelector:sel__shouldHandleTextFormattingChangeValue_ withObject:valueCopy];

  if (v16)
  {
    goto LABEL_15;
  }

  if ([(UITextFormattingViewControllerConfiguration *)self->_configuration _isTextAnimationsConfiguration])
  {
    changeType10 = [valueCopy changeType];

    if (changeType10 == @"UITextFormattingViewControllerCustomComponentSelectedChange")
    {
      _textView = [(UITextFormattingViewController *)self _textView];
      delegate2 = _textView;
      if (_textView)
      {
        selectedTextRange = [_textView selectedTextRange];
        isEmpty = [selectedTextRange isEmpty];

        if (isEmpty)
        {
          [(UITextFormattingViewController *)self _textFormattingDidFinish];
LABEL_40:

          goto LABEL_41;
        }
      }
    }
  }

  _editResponder11 = [(UITextFormattingViewController *)self _editResponder];
  v49 = objc_opt_respondsToSelector();

  if (v49)
  {
    _editResponder12 = [(UITextFormattingViewController *)self _editResponder];
    [_editResponder12 performSelector:sel__textFormattingOptionsNeedUpdate_ withObject:0];
  }

LABEL_41:
}

- (id)_textView
{
  _editResponder = [(UITextFormattingViewController *)self _editResponder];
  if (_editResponder)
  {
    v4 = _editResponder;
    _editResponder2 = [(UITextFormattingViewController *)self _editResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      _editResponder = [(UITextFormattingViewController *)self _editResponder];
    }

    else
    {
      _editResponder = 0;
    }
  }

  return _editResponder;
}

- (void)_reconfigureViewHierarchyForParentController:(id)controller
{
  v99 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  view = [(UIViewController *)self view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];
  v8 = firstObject;
  v9 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
  if (controllerCopy)
  {
    containerView = self->_containerView;

    if (v8 == containerView)
    {
      goto LABEL_25;
    }
  }

  else if (firstObject)
  {
    view2 = [(UIViewController *)self view];
    subviews2 = [view2 subviews];
    firstObject2 = [subviews2 firstObject];
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
  view3 = [(UIViewController *)self view];
  subviews3 = [view3 subviews];

  v17 = [subviews3 countByEnumeratingWithState:&v91 objects:v98 count:16];
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
          objc_enumerationMutation(subviews3);
        }

        [*(*(&v91 + 1) + 8 * i) removeFromSuperview];
      }

      v18 = [subviews3 countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v18);
  }

  backdropView = self->_backdropView;
  self->_backdropView = 0;

  v22 = 0x1E6997000uLL;
  v90 = controllerCopy;
  if (!controllerCopy)
  {
    if (_UISolariumEnabled())
    {
      view4 = [(UIViewController *)self view];
    }

    else
    {
      v41 = [[UIVisualEffectView alloc] initWithEffect:0];
      v88 = [UIBlurEffect effectWithStyle:9];
      [(UIVisualEffectView *)v41 setEffect:v88];
      view5 = [(UIViewController *)self view];
      [view5 addSubview:v41];

      [(UIView *)v41 setTranslatesAutoresizingMaskIntoConstraints:0];
      v66 = MEMORY[0x1E69977A0];
      topAnchor = [(UIView *)v41 topAnchor];
      view6 = [(UIViewController *)self view];
      topAnchor2 = [view6 topAnchor];
      v76 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v96[0] = v76;
      leadingAnchor = [(UIView *)v41 leadingAnchor];
      view7 = [(UIViewController *)self view];
      leadingAnchor2 = [view7 leadingAnchor];
      v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v96[1] = v64;
      trailingAnchor = [(UIView *)v41 trailingAnchor];
      view8 = [(UIViewController *)self view];
      trailingAnchor2 = [view8 trailingAnchor];
      v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v96[2] = v45;
      bottomAnchor = [(UIView *)v41 bottomAnchor];
      view9 = [(UIViewController *)self view];
      bottomAnchor2 = [view9 bottomAnchor];
      v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v96[3] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
      [v66 activateConstraints:v50];

      v22 = 0x1E6997000uLL;
      v9 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;

      view4 = [(UIVisualEffectView *)v41 contentView];
    }

    v40 = +[UIColor clearColor];
    goto LABEL_23;
  }

  configuration = [(UITextFormattingViewController *)self configuration];
  _isTextAnimationsConfiguration = [configuration _isTextAnimationsConfiguration];

  if (_isTextAnimationsConfiguration)
  {
    v25 = [_UIKBVisualEffectViewForTextFormatting alloc];
    view10 = [(UIViewController *)self view];
    [view10 bounds];
    v27 = [(UIKBInputBackdropView *)v25 initWithFrame:?];

    v28 = self->_backdropView;
    self->_backdropView = v27;
    v29 = v27;

    [(UITextFormattingViewController *)self _updateBackdropView];
    view11 = [(UIViewController *)self view];
    [view11 addSubview:v29];

    [(UIView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = MEMORY[0x1E69977A0];
    topAnchor3 = [(UIView *)v29 topAnchor];
    view12 = [(UIViewController *)self view];
    topAnchor4 = [view12 topAnchor];
    v78 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v97[0] = v78;
    leadingAnchor3 = [(UIView *)v29 leadingAnchor];
    view13 = [(UIViewController *)self view];
    leadingAnchor4 = [view13 leadingAnchor];
    v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v97[1] = v65;
    trailingAnchor3 = [(UIView *)v29 trailingAnchor];
    view14 = [(UIViewController *)self view];
    trailingAnchor4 = [view14 trailingAnchor];
    v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v97[2] = v33;
    bottomAnchor3 = [(UIView *)v29 bottomAnchor];
    view15 = [(UIViewController *)self view];
    bottomAnchor4 = [view15 bottomAnchor];
    v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v97[3] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:4];
    [v67 activateConstraints:v38];

    v9 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
    v22 = 0x1E6997000;

    view4 = [(UIViewController *)self view];
    v40 = +[UIColor clearColor];

LABEL_23:
    view16 = [(UIViewController *)self view];
    [view16 setBackgroundColor:v40];

    goto LABEL_24;
  }

  view4 = [(UIViewController *)self view];
  v40 = +[UIColor systemBackgroundColor];
  [view4 setBackgroundColor:v40];
LABEL_24:

  v52 = v9[685];
  [view4 addSubview:*(&self->super.super.super.isa + v52)];
  [*(&self->super.super.super.isa + v52) setTranslatesAutoresizingMaskIntoConstraints:0];
  v71 = *(v22 + 1952);
  topAnchor5 = [*(&self->super.super.super.isa + v52) topAnchor];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide topAnchor];
  v80 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v95[0] = v80;
  leadingAnchor5 = [*(&self->super.super.super.isa + v52) leadingAnchor];
  leadingAnchor6 = [view4 leadingAnchor];
  v53 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v95[1] = v53;
  trailingAnchor5 = [*(&self->super.super.super.isa + v52) trailingAnchor];
  trailingAnchor6 = [view4 trailingAnchor];
  v56 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v95[2] = v56;
  bottomAnchor5 = [*(&self->super.super.super.isa + v52) bottomAnchor];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide2 bottomAnchor];
  v60 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v95[3] = v60;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
  [v71 activateConstraints:v61];

  controllerCopy = v90;
LABEL_25:
}

- (void)_textViewFormattingWillBegin
{
  _textView = [(UITextFormattingViewController *)self _textView];
  if (_textView)
  {
    v8 = _textView;
    tintColor = [_textView tintColor];
    view = [(UIViewController *)self view];
    [view setTintColor:tintColor];

    delegate = [v8 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate textView:v8 willBeginFormattingWithViewController:self];
    }

    else
    {
      delegate2 = [v8 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate2 _textView:v8 willBeginFormatting:self];
      }
    }

    _textView = v8;
  }
}

- (void)_textViewFormattingDidBegin
{
  _textView = [(UITextFormattingViewController *)self _textView];
  if (_textView)
  {
    v6 = _textView;
    delegate = [_textView delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate textView:v6 didBeginFormattingWithViewController:self];
    }

    else
    {
      delegate2 = [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate2 _textView:v6 didBeginFormatting:self];
      }
    }

    _textView = v6;
  }
}

- (void)_textViewFormattingWillEnd
{
  _textView = [(UITextFormattingViewController *)self _textView];
  if (_textView)
  {
    v6 = _textView;
    delegate = [_textView delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate textView:v6 willEndFormattingWithViewController:self];
    }

    else
    {
      delegate2 = [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate2 _textView:v6 willEndFormatting:self];
      }
    }

    _textView = v6;
  }
}

- (void)_textViewFormattingDidEnd
{
  _textView = [(UITextFormattingViewController *)self _textView];
  if (_textView)
  {
    v6 = _textView;
    delegate = [_textView delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate textView:v6 didEndFormattingWithViewController:self];
    }

    else
    {
      delegate2 = [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate2 _textView:v6 didEndFormatting:self];
      }
    }

    _textView = v6;
  }
}

- (int64_t)_backdropViewStyle
{
  v3 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  _textFormattingViewController = [v3 _textFormattingViewController];

  if (_textFormattingViewController != self)
  {
    goto LABEL_8;
  }

  v5 = +[(UISubstituteKeyboardSession *)UITextFormattingKeyboardSession];
  _textFormattingResponder = [v5 _textFormattingResponder];

  if (!_textFormattingResponder || (objc_opt_respondsToSelector() & 1) == 0 || ![_textFormattingResponder _shouldReplaceKeyboardForTextFormattingKeyboardSessionIfApplicable])
  {

LABEL_8:
    _textFormattingResponder = [(UIViewController *)self view];
    _inheritedRenderConfig = [_textFormattingResponder _inheritedRenderConfig];
    goto LABEL_9;
  }

  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    +[UIKBRenderConfig darkConfig];
  }

  else
  {
    +[UIKBRenderConfig defaultEmojiConfig];
  }
  _inheritedRenderConfig = ;

  [_inheritedRenderConfig setColorAdaptiveBackground:_UISolariumEnabled()];
LABEL_9:
  backdropStyle = [_inheritedRenderConfig backdropStyle];

  return backdropStyle;
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

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!continuously)
  {
    v10 = *off_1E70EC920;
    v11[0] = color;
    v6 = MEMORY[0x1E695DF20];
    colorCopy = color;
    v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [[UITextFormattingViewControllerChangeValue alloc] initWithTextColor:colorCopy];

    [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v9 textAttributes:v8];
  }
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = *off_1E70EC920;
  finishCopy = finish;
  selectedColor = [finishCopy selectedColor];
  v14[0] = selectedColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v7 = [UITextFormattingViewControllerChangeValue alloc];
  selectedColor2 = [finishCopy selectedColor];

  v9 = [(UITextFormattingViewControllerChangeValue *)v7 initWithTextColor:selectedColor2];
  [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v9 textAttributes:v6];
  colorPicker = self->_colorPicker;
  self->_colorPicker = 0;

  [(UITextFormattingViewController *)self _textFormattingRequestsFirstResponderRestoration];
  [(UITextFormattingViewController *)self _startSuppressingKeyboardForTextFormatting];
  delegate = [(UITextFormattingViewController *)self delegate];
  LOBYTE(selectedColor2) = objc_opt_respondsToSelector();

  if (selectedColor2)
  {
    delegate2 = [(UITextFormattingViewController *)self delegate];
    [delegate2 _didFinishColorPickingForTextFormattingViewController:self];
  }
}

- (void)_updateFormattingDescriptor:(id)descriptor
{
  if (descriptor)
  {
    hostingImpl = self->_hostingImpl;
    descriptorCopy = descriptor;
    [(_UITextFormattingViewHostingImpl *)hostingImpl setRemoteFormattingDescriptor:descriptorCopy];
    [(_TFTextFormattingContentViewController *)self->_contentViewController _setFormattingDescriptor:descriptorCopy];

    [(UITextFormattingViewController *)self _updateDisabledComponents];
  }
}

- (void)_updateDisabledComponents
{
  _editResponder = [(UITextFormattingViewController *)self _editResponder];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _editResponder2 = [(UITextFormattingViewController *)self _editResponder];
    v12 = [_editResponder2 performSelector:sel__disabledComponentsForTextFormattingOptions];

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

  delegate = [(UITextFormattingViewController *)self delegate];
  v10 = [delegate _disabledComponentsForTextFormattingViewController:self];

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

- (void)fontPickerViewControllerDidCancel:(id)cancel
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

- (void)fontPickerViewControllerDidPickFont:(id)font
{
  v13[1] = *MEMORY[0x1E69E9840];
  selectedFontDescriptor = [font selectedFontDescriptor];
  if (selectedFontDescriptor)
  {
    v5 = [off_1E70ECC18 fontWithDescriptor:selectedFontDescriptor size:self->_selectedFontSize];
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

- (void)_typographySettingsViewControllerDidUpdateFont:(id)font
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (font)
  {
    v8 = *off_1E70EC918;
    v9[0] = font;
    v4 = MEMORY[0x1E695DF20];
    fontCopy = font;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [[UITextFormattingViewControllerChangeValue alloc] initWithFont:fontCopy];

    [(UITextFormattingViewController *)self _textFormattingDidChangeValue:v7 textAttributes:v6];
  }
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  v5 = [(UITextFormattingViewController *)self configuration:controller];
  if (([v5 _isTextAnimationsConfiguration] & 1) != 0 && (-[UIViewController view](self, "view"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    view = [(UIViewController *)self view];
    traitCollection = [view traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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