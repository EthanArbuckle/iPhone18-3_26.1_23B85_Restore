@interface _UINavigationBarTitleRenameTextField
- (BOOL)canResignFirstResponder;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (_UINavigationBarTitleRenameTextField)initWithSession:(id)session;
- (double)horizontalTextInset;
- (void)_becomeFirstResponder;
- (void)_resignFirstResponder;
- (void)_setupIconViewIfNecessary;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UINavigationBarTitleRenameTextField

- (_UINavigationBarTitleRenameTextField)initWithSession:(id)session
{
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = _UINavigationBarTitleRenameTextField;
  v6 = [(UIView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    title = [sessionCopy title];
    [(UITextField *)v7 setText:title];

    v9 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleShortEmphasizedBody"];
    [(UITextField *)v7 setFont:v9];

    [(UITextField *)v7 setBorderStyle:3];
    [(UITextField *)v7 setAdjustsFontForContentSizeCategory:1];
    v10 = +[UIColor clearColor];
    [(UITextField *)v7 _setBackgroundStrokeColor:v10];

    v11 = +[UIColor tertiarySystemFillColor];
    [(UITextField *)v7 _setBackgroundFillColor:v11];

    _systemBackgroundView = [(UITextField *)v7 _systemBackgroundView];
    [_systemBackgroundView setHasFlexibleCornerRadius:1];

    _systemBackgroundView2 = [(UITextField *)v7 _systemBackgroundView];
    [_systemBackgroundView2 setCornerRadius:8.0];

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
  session = [(_UINavigationBarTitleRenameTextField *)self session];
  iconMetadata = [session iconMetadata];

  if (iconMetadata)
  {
    v5 = [[_UIDocumentPropertiesIconView alloc] initWithMetadata:iconMetadata];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIDocumentPropertiesIconView *)v5 setIconInsets:1.0, 6.0, 1.0, 1.0];
    [(UITextField *)self setLeftView:v5];
    [(UITextField *)self setLeftViewMode:3];
    heightAnchor = [(UIView *)v5 heightAnchor];
    [(UIView *)self bounds];
    v7 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v18)];

    iconHeightConstraint = self->_iconHeightConstraint;
    self->_iconHeightConstraint = v7;
    v9 = v7;

    v10 = MEMORY[0x1E69977A0];
    widthAnchor = [(UIView *)v5 widthAnchor];
    [(_UIDocumentPropertiesIconView *)v5 iconInsets];
    v13 = v12 + 24.0;
    [(_UIDocumentPropertiesIconView *)v5 iconInsets];
    v15 = [widthAnchor constraintEqualToConstant:v13 + v14];
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
  text = [(UITextField *)self text];
  v6 = 0;
  v7 = [text length];
  session = [(_UINavigationBarTitleRenameTextField *)self session];
  v5 = [session _willBeginRenamingWithText:text selectedRange:&v6];

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

  session = [(_UINavigationBarTitleRenameTextField *)self session];
  attachedRenamer = [session attachedRenamer];
  if (attachedRenamer)
  {
    session2 = [(_UINavigationBarTitleRenameTextField *)self session];
    text = [(UITextField *)self text];
    v7 = [session2 _textFieldShouldEndEditingWithText:text];
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
  session = [(_UINavigationBarTitleRenameTextField *)self session];
  text = [(UITextField *)self text];
  [session _textFieldDidEndEditingWithText:text];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    passthroughInteraction = [(_UINavigationBarTitleRenameTextField *)self passthroughInteraction];

    if (passthroughInteraction)
    {
      passthroughInteraction2 = [(_UINavigationBarTitleRenameTextField *)self passthroughInteraction];
      [(UIView *)self removeInteraction:passthroughInteraction2];

      [(_UINavigationBarTitleRenameTextField *)self setPassthroughInteraction:0];
    }
  }

  v7.receiver = self;
  v7.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v7 willMoveToWindow:windowCopy];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleRenameTextField;
  [(UITextField *)&v5 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    v4 = objc_alloc_init(_UIPassthroughScrollInteraction);
    [(_UIPassthroughScrollInteraction *)v4 setDelegate:self];
    [(UIView *)self addInteraction:v4];
    [(_UINavigationBarTitleRenameTextField *)self setPassthroughInteraction:v4];
  }
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
  v10 = [_viewControllerForAncestor _existingPresentationControllerImmediate:0 effective:1];
  containerView = [v10 containerView];
  v12 = containerView;
  if (containerView)
  {
    view = containerView;
  }

  else
  {
    _window = [(UIView *)self _window];
    rootViewController = [_window rootViewController];
    view = [rootViewController view];
  }

  _window2 = [(UIView *)self _window];
  [(UIView *)self convertPoint:_window2 toView:x, y];
  v17 = [_window2 hitTest:eventCopy withEvent:?];
  v18 = v17;
  if (v17 && [v17 isDescendantOfView:view])
  {
    v19 = ![(UIView *)self pointInside:eventCopy withEvent:x, y];
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