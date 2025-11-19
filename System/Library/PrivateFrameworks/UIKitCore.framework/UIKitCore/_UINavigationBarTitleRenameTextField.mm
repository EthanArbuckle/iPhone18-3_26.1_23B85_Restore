@interface _UINavigationBarTitleRenameTextField
- (BOOL)canResignFirstResponder;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (_UINavigationBarTitleRenameTextField)initWithSession:(id)a3;
- (double)horizontalTextInset;
- (void)_becomeFirstResponder;
- (void)_resignFirstResponder;
- (void)_setupIconViewIfNecessary;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UINavigationBarTitleRenameTextField

- (_UINavigationBarTitleRenameTextField)initWithSession:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _UINavigationBarTitleRenameTextField;
  v6 = [(UIView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [v5 title];
    [(UITextField *)v7 setText:v8];

    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleShortEmphasizedBody"];
    [(UITextField *)v7 setFont:v9];

    [(UITextField *)v7 setBorderStyle:3];
    [(UITextField *)v7 setAdjustsFontForContentSizeCategory:1];
    v10 = +[UIColor clearColor];
    [(UITextField *)v7 _setBackgroundStrokeColor:v10];

    v11 = +[UIColor tertiarySystemFillColor];
    [(UITextField *)v7 _setBackgroundFillColor:v11];

    v12 = [(UITextField *)v7 _systemBackgroundView];
    [v12 setHasFlexibleCornerRadius:1];

    v13 = [(UITextField *)v7 _systemBackgroundView];
    [v13 setCornerRadius:8.0];

    [(UITextField *)v7 setClearButtonMode:3];
    [(_UINavigationBarTitleRenameTextField *)v7 setAutocapitalizationType:2];
    [(_UINavigationBarTitleRenameTextField *)v7 setReturnKeyType:9];
    [(UITextField *)v7 setClearingBehavior:3];
    [(_UINavigationBarTitleRenameTextField *)v7 _setupIconViewIfNecessary];
  }

  return v7;
}

- (void)_setupIconViewIfNecessary
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UINavigationBarTitleRenameTextField *)self session];
  v4 = [v3 iconMetadata];

  if (v4)
  {
    v5 = [[_UIDocumentPropertiesIconView alloc] initWithMetadata:v4];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIDocumentPropertiesIconView *)v5 setIconInsets:1.0, 6.0, 1.0, 1.0];
    [(UITextField *)self setLeftView:v5];
    [(UITextField *)self setLeftViewMode:3];
    v6 = [(UIView *)v5 heightAnchor];
    [(UIView *)self bounds];
    v7 = [v6 constraintEqualToConstant:CGRectGetHeight(v18)];

    iconHeightConstraint = self->_iconHeightConstraint;
    self->_iconHeightConstraint = v7;
    v9 = v7;

    v10 = MEMORY[0x1E69977A0];
    v11 = [(UIView *)v5 widthAnchor];
    [(_UIDocumentPropertiesIconView *)v5 iconInsets];
    v13 = v12 + 24.0;
    [(_UIDocumentPropertiesIconView *)v5 iconInsets];
    v15 = [v11 constraintEqualToConstant:v13 + v14];
    v17[0] = v15;
    v17[1] = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v10 activateConstraints:v16];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(NSLayoutConstraint *)self->_iconHeightConstraint setConstant:CGRectGetHeight(v4)];
}

- (void)_becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v8 _becomeFirstResponder];
  v3 = [(UITextField *)self text];
  v6 = 0;
  v7 = [v3 length];
  v4 = [(_UINavigationBarTitleRenameTextField *)self session];
  v5 = [v4 _willBeginRenamingWithText:v3 selectedRange:&v6];

  [(UITextField *)self setText:v5];
  [(UITextField *)self setSelectionRange:v6, v7];
}

- (BOOL)canResignFirstResponder
{
  v9.receiver = self;
  v9.super_class = _UINavigationBarTitleRenameTextField;
  if (![(UITextField *)&v9 canResignFirstResponder])
  {
    return 0;
  }

  v3 = [(_UINavigationBarTitleRenameTextField *)self session];
  v4 = [v3 attachedRenamer];
  if (v4)
  {
    v5 = [(_UINavigationBarTitleRenameTextField *)self session];
    v6 = [(UITextField *)self text];
    v7 = [v5 _textFieldShouldEndEditingWithText:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v5 _resignFirstResponder];
  v3 = [(_UINavigationBarTitleRenameTextField *)self session];
  v4 = [(UITextField *)self text];
  [v3 _textFieldDidEndEditingWithText:v4];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(_UINavigationBarTitleRenameTextField *)self passthroughInteraction];

    if (v5)
    {
      v6 = [(_UINavigationBarTitleRenameTextField *)self passthroughInteraction];
      [(UIView *)self removeInteraction:v6];

      [(_UINavigationBarTitleRenameTextField *)self setPassthroughInteraction:0];
    }
  }

  v7.receiver = self;
  v7.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v7 willMoveToWindow:v4];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v5 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = objc_alloc_init(_UIPassthroughScrollInteraction);
    [(_UIPassthroughScrollInteraction *)v4 setDelegate:self];
    [(UIView *)self addInteraction:v4];
    [(_UINavigationBarTitleRenameTextField *)self setPassthroughInteraction:v4];
  }
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(UIView *)self _viewControllerForAncestor];
  v10 = [v9 _existingPresentationControllerImmediate:0 effective:1];
  v11 = [v10 containerView];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = [(UIView *)self _window];
    v15 = [v14 rootViewController];
    v13 = [v15 view];
  }

  v16 = [(UIView *)self _window];
  [(UIView *)self convertPoint:v16 toView:x, y];
  v17 = [v16 hitTest:v8 withEvent:?];
  v18 = v17;
  if (v17 && [v17 isDescendantOfView:v13])
  {
    v19 = ![(UIView *)self pointInside:v8 withEvent:x, y];
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (double)horizontalTextInset
{
  [(UITextField *)self textRectForBounds:0.0, 0.0, 100.0, 32.0];

  return CGRectGetMinX(*&v2);
}

@end