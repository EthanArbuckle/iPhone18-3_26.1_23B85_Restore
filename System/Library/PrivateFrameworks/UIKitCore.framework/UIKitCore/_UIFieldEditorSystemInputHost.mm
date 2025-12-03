@interface _UIFieldEditorSystemInputHost
- (BOOL)_isTV;
- (void)_updateFieldEditorBackgroundViewLayoutForcingDefault:(BOOL)default;
- (void)addFieldEditor:(id)editor;
- (void)addPlaceholderLabel:(id)label;
- (void)dealloc;
- (void)removeFieldEditor;
@end

@implementation _UIFieldEditorSystemInputHost

- (void)dealloc
{
  [(UISystemInputViewController *)self->_systemInputViewController resetContainingResponder];
  v3.receiver = self;
  v3.super_class = _UIFieldEditorSystemInputHost;
  [(_UIFieldEditorSystemInputHost *)&v3 dealloc];
}

- (void)addFieldEditor:(id)editor
{
  v21[2] = *MEMORY[0x1E69E9840];
  editorCopy = editor;
  hostingView = [(_UIFieldEditorHost *)self hostingView];
  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIBlurEffect effectWithStyle:](UIBlurEffect, "effectWithStyle:", [hostingView _blurEffectStyleForAppearance]);
  v7 = [UIVibrancyEffect effectForBlurEffect:?];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v7];
  [(UIView *)v8 setUserInteractionEnabled:0];
  [(UIVisualEffectView *)v8 _setCornerRadius:6.0];
  [v6 addSubview:v8];
  objc_storeStrong(&self->_containerView, v6);
  objc_storeStrong(&self->_backgroundEffectView, v8);
  v9 = [MEMORY[0x1E69977A0] constraintWithItem:v6 attribute:8 relatedBy:0 constant:0.0];
  [v6 setHeightConstraint:v9];

  v10 = [MEMORY[0x1E69977A0] constraintWithItem:v6 attribute:7 relatedBy:0 constant:0.0];
  [v6 setWidthConstraint:v10];

  v11 = MEMORY[0x1E69977A0];
  heightConstraint = [v6 heightConstraint];
  v21[0] = heightConstraint;
  widthConstraint = [v6 widthConstraint];
  v21[1] = widthConstraint;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v11 activateConstraints:v14];

  contentView = [(UIVisualEffectView *)v8 contentView];
  [contentView setClipsToBounds:0];

  v20.receiver = self;
  v20.super_class = _UIFieldEditorSystemInputHost;
  [(_UIFieldEditorHost *)&v20 addFieldEditor:editorCopy];

  v16 = [UISystemInputViewController systemInputViewControllerForResponder:hostingView editorView:v6];
  systemInputViewController = self->_systemInputViewController;
  self->_systemInputViewController = v16;

  [(_UIFieldEditorSystemInputHost *)self _updateFieldEditorBackgroundViewLayoutForcingDefault:1];
  if (self->_systemInputViewController)
  {
    v18 = [UIViewController _viewControllerForFullScreenPresentationFromView:hostingView];
    [v18 presentViewController:self->_systemInputViewController animated:-[UISystemInputViewController isAutomaticResponderTransition](self->_systemInputViewController completion:{"isAutomaticResponderTransition") ^ 1, 0}];
  }
}

- (void)removeFieldEditor
{
  systemInputViewController = self->_systemInputViewController;
  if (systemInputViewController)
  {
    [(UIViewController *)systemInputViewController dismissViewControllerAnimated:[(UISystemInputViewController *)self->_systemInputViewController isAutomaticResponderTransition]^ 1 completion:0];
    [(UISystemInputViewController *)self->_systemInputViewController prepareForRelease];
    v4 = self->_systemInputViewController;
    self->_systemInputViewController = 0;
  }

  v7.receiver = self;
  v7.super_class = _UIFieldEditorSystemInputHost;
  [(_UIFieldEditorHost *)&v7 removeFieldEditor];
  containerView = self->_containerView;
  self->_containerView = 0;

  backgroundEffectView = self->_backgroundEffectView;
  self->_backgroundEffectView = 0;
}

- (void)addPlaceholderLabel:(id)label
{
  labelCopy = label;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  containerView = self->_containerView;
  if (has_internal_diagnostics)
  {
    if (containerView)
    {
      goto LABEL_3;
    }

    v32 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "Should have a _backgroundView when adding the placeholder label.", buf, 2u);
    }
  }

  else
  {
    if (containerView)
    {
      goto LABEL_3;
    }

    v33 = *(__UILogGetCategoryCachedImpl("Assert", &addPlaceholderLabel____s_category) + 8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Should have a _backgroundView when adding the placeholder label.", buf, 2u);
    }
  }

  if (!self->_containerView)
  {
    v34.receiver = self;
    v34.super_class = _UIFieldEditorSystemInputHost;
    [(_UIFieldEditorHost *)&v34 addPlaceholderLabel:labelCopy];
    goto LABEL_7;
  }

LABEL_3:
  hostingView = [(_UIFieldEditorHost *)self hostingView];
  [(UIView *)self->_containerView bounds];
  [hostingView placeholderRectForBounds:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIView *)self->_containerView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [hostingView contentScaleFactor];
  v25 = UIRectCenteredYInRectScale(v9, v11, v13, v15, v17, v19, v21, v23, v24);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if ([(_UIFieldEditorSystemInputHost *)self _isTV])
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __53___UIFieldEditorSystemInputHost_addPlaceholderLabel___block_invoke;
    v35[3] = &unk_1E70F3B20;
    v36 = labelCopy;
    v37 = v25;
    v38 = v27;
    v39 = v29;
    v40 = v31;
    [UIView performWithoutAnimation:v35];
  }

  else
  {
    [labelCopy setFrame:{v25, v27, v29, v31}];
  }

  [(UIView *)self->_containerView addSubview:labelCopy];

LABEL_7:
}

- (void)_updateFieldEditorBackgroundViewLayoutForcingDefault:(BOOL)default
{
  if (self->_systemInputViewController)
  {
    defaultCopy = default;
    hostingView = [(_UIFieldEditorHost *)self hostingView];
    v6 = hostingView;
    if (defaultCopy)
    {
      hostedFieldEditor = [(_UIFieldEditorHost *)self hostedFieldEditor];
      v8 = 600.0;
    }

    else
    {
      if (![hostingView _fieldEditorAttached] || !objc_msgSend(v6, "_hasContent") || !-[UISystemInputViewController supportsTouchInput](self->_systemInputViewController, "supportsTouchInput"))
      {
LABEL_15:

        return;
      }

      hostedFieldEditor = [(_UIFieldEditorHost *)self hostedFieldEditor];
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      v24 = v23;
      [mainScreen overscanCompensationInsets];
      v8 = v24 - (v25 + v26);
      attributedText = [hostedFieldEditor attributedText];
      [attributedText size];
      v29 = v28 + 20.0;
      if (v29 <= v8)
      {
        v8 = v29;
        if (v29 < 600.0)
        {
          v8 = 600.0;
        }
      }
    }

    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIView *)self->_backgroundEffectView setFrame:*MEMORY[0x1E695EFF8], v10, v8, 70.0];
    widthConstraint = [(_UIFieldEditorSystemInputHostView *)self->_containerView widthConstraint];
    [widthConstraint setConstant:v8];

    heightConstraint = [(_UIFieldEditorSystemInputHostView *)self->_containerView heightConstraint];
    [heightConstraint setConstant:70.0];

    v13 = v8 + -20.0;
    attributedText2 = [hostedFieldEditor attributedText];
    [attributedText2 size];
    v16 = v15;

    selectedTextRange = [v6 selectedTextRange];
    start = [selectedTextRange start];
    v19 = [v6 baseWritingDirectionForPosition:start inDirection:0];

    if (v19 != 1 && v16 > v13)
    {
      [hostedFieldEditor contentSize];
      v9 = v20 - v13;
      v10 = 0.0;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __86___UIFieldEditorSystemInputHost__updateFieldEditorBackgroundViewLayoutForcingDefault___block_invoke;
    v30[3] = &unk_1E70F3DC8;
    v31 = hostedFieldEditor;
    v32 = xmmword_18A67B6F0;
    v33 = v13;
    v34 = 0x4051800000000000;
    v35 = v9;
    v36 = v10;
    v21 = hostedFieldEditor;
    [UIView performWithoutAnimation:v30];

    goto LABEL_15;
  }
}

- (BOOL)_isTV
{
  hostingView = [(_UIFieldEditorHost *)self hostingView];
  traitCollection = [hostingView traitCollection];

  if (traitCollection)
  {
    v4 = [traitCollection userInterfaceIdiom] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end