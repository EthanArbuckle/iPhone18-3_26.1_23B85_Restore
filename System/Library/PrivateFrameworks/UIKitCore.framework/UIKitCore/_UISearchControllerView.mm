@interface _UISearchControllerView
- (_UISearchControllerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_ensureCarPlayLimitedUIIsOnTop;
- (void)_ensureContainerIsOnTop;
- (void)_ensureInlineSearchAccessoryViewIsOnTop;
- (void)_ensurePortalViewIsOnTop;
- (void)_ensureSubviewOrdering;
- (void)_ensureViewOfClassIsOnTop:(Class)top;
- (void)_keyboardWillHideOrShow:(id)show;
- (void)_reevaluateInlineSearchFieldAccessoryHiddenState;
- (void)borrowSearchFieldFromControllerForInlinePresentation:(id)presentation;
- (void)bringSubviewToFront:(id)front;
- (void)didMoveToWindow;
- (void)returnBorrowedSearchTextField;
- (void)sendSubviewToBack:(id)back;
- (void)setInlineSearchFieldAccessoryIsOffscreenForPresentationAnimation:(BOOL)animation;
- (void)updateConstraints;
@end

@implementation _UISearchControllerView

- (_UISearchControllerView)initWithFrame:(CGRect)frame
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = _UISearchControllerView;
  v3 = [(UIView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3 && _UISolariumEnabled())
  {
    v4 = [_UIInlineSearchFieldAccessoryContainer alloc];
    [(UIView *)v3 bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    inlineSearchFieldAccessoryContainer = v3->_inlineSearchFieldAccessoryContainer;
    v3->_inlineSearchFieldAccessoryContainer = v5;

    [(UIView *)v3->_inlineSearchFieldAccessoryContainer setAutoresizingMask:18];
    [(UIView *)v3->_inlineSearchFieldAccessoryContainer setPreservesSuperviewLayoutMargins:1];
    [(UIView *)v3 addSubview:v3->_inlineSearchFieldAccessoryContainer];
    v7 = [_UISearchControllerInlineSearchFieldAccessoryView alloc];
    v8 = [(_UISearchControllerInlineSearchFieldAccessoryView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    inlineSearchFieldAccessoryView = v3->_inlineSearchFieldAccessoryView;
    v3->_inlineSearchFieldAccessoryView = v8;

    [(UIView *)v3->_inlineSearchFieldAccessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_inlineSearchFieldAccessoryView setHidden:1];
    [(UIView *)v3->_inlineSearchFieldAccessoryContainer addSubview:v3->_inlineSearchFieldAccessoryView];
    layoutMarginsGuide = [(UIView *)v3->_inlineSearchFieldAccessoryContainer layoutMarginsGuide];
    keyboardLayoutGuide = [(UIView *)v3->_inlineSearchFieldAccessoryContainer keyboardLayoutGuide];
    leadingAnchor = [(UIView *)v3->_inlineSearchFieldAccessoryView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    [v13 setIdentifier:@"_UISearchFieldAccessoryLeading"];
    trailingAnchor = [(UIView *)v3->_inlineSearchFieldAccessoryView trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    [v16 setIdentifier:@"_UISearchFieldAccessoryTrailing"];
    topAnchor = [keyboardLayoutGuide topAnchor];
    bottomAnchor = [(UIView *)v3->_inlineSearchFieldAccessoryView bottomAnchor];
    v19 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
    inlineSearchFieldOnscreenConstraint = v3->_inlineSearchFieldOnscreenConstraint;
    v3->_inlineSearchFieldOnscreenConstraint = v19;

    [(NSLayoutConstraint *)v3->_inlineSearchFieldOnscreenConstraint setIdentifier:@"_UISearchFieldAccessoryOnscreen"];
    topAnchor2 = [(UIView *)v3->_inlineSearchFieldAccessoryView topAnchor];
    bottomAnchor2 = [(UIView *)v3->_inlineSearchFieldAccessoryContainer bottomAnchor];
    v23 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
    inlineSearchFieldOffscreenConstraint = v3->_inlineSearchFieldOffscreenConstraint;
    v3->_inlineSearchFieldOffscreenConstraint = v23;

    [(NSLayoutConstraint *)v3->_inlineSearchFieldOffscreenConstraint setIdentifier:@"_UISearchFieldAccessoryOffscreen"];
    heightAnchor = [(UIView *)v3->_inlineSearchFieldAccessoryView heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:54.0];

    [v26 setIdentifier:@"_UISearchFieldAccessoryHeight"];
    v27 = MEMORY[0x1E69977A0];
    v32[0] = v13;
    v32[1] = v16;
    v32[2] = v3->_inlineSearchFieldOffscreenConstraint;
    v32[3] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v27 activateConstraints:v28];
  }

  return v3;
}

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = _UISearchControllerView;
  [(UIView *)&v7 updateConstraints];
  borrowedSearchTextField = [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView borrowedSearchTextField];

  if (borrowedSearchTextField)
  {
    v4 = self->super._viewDelegate;
    if ([(_UISearchControllerView *)self inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation])
    {
      [(NSLayoutConstraint *)self->_inlineSearchFieldOnscreenConstraint setActive:0];
      p_inlineSearchFieldOffscreenConstraint = &self->_inlineSearchFieldOffscreenConstraint;
    }

    else
    {
      [(NSLayoutConstraint *)self->_inlineSearchFieldOffscreenConstraint setActive:0];
      v6 = -6.0;
      if (self->_receivedKeyboardWillShow)
      {
        v6 = 6.0;
      }

      p_inlineSearchFieldOffscreenConstraint = &self->_inlineSearchFieldOnscreenConstraint;
      [(NSLayoutConstraint *)*p_inlineSearchFieldOffscreenConstraint setConstant:v6];
    }

    [(NSLayoutConstraint *)*p_inlineSearchFieldOffscreenConstraint setActive:1];
  }

  else
  {
    [(NSLayoutConstraint *)self->_inlineSearchFieldOnscreenConstraint setActive:0];
    [(NSLayoutConstraint *)self->_inlineSearchFieldOffscreenConstraint setActive:1];
  }
}

- (void)borrowSearchFieldFromControllerForInlinePresentation:(id)presentation
{
  v4 = MEMORY[0x1E696AD88];
  presentationCopy = presentation;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillHideOrShow_ name:@"UIKeyboardWillShowNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__keyboardWillHideOrShow_ name:@"UIKeyboardWillHideNotification" object:0];

  [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView setBorrowedSearchTextField:presentationCopy];

  [(_UISearchControllerView *)self _reevaluateInlineSearchFieldAccessoryHiddenState];
}

- (void)_keyboardWillHideOrShow:(id)show
{
  name = [show name];
  self->_receivedKeyboardWillShow = [name isEqualToString:@"UIKeyboardWillShowNotification"];

  borrowedSearchTextField = [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView borrowedSearchTextField];

  if (borrowedSearchTextField)
  {

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)returnBorrowedSearchTextField
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"UIKeyboardWillHideNotification" object:0];

  borrowedSearchTextField = [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView borrowedSearchTextField];

  if (borrowedSearchTextField)
  {
    [(UIView *)self setNeedsUpdateConstraints];
  }

  [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView setBorrowedSearchTextField:0];

  [(_UISearchControllerView *)self _reevaluateInlineSearchFieldAccessoryHiddenState];
}

- (void)setInlineSearchFieldAccessoryIsOffscreenForPresentationAnimation:(BOOL)animation
{
  animationCopy = animation;
  borrowedSearchTextField = [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView borrowedSearchTextField];
  if (!borrowedSearchTextField)
  {
    goto LABEL_4;
  }

  inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation = self->_inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation;

  if (inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation != animationCopy)
  {
    [(UIView *)self setNeedsUpdateConstraints];
LABEL_4:
    LOBYTE(inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation) = animationCopy;
  }

  self->_inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation = inlineSearchFieldAccessoryIsOffscreenForPresentationAnimation;
}

- (void)_reevaluateInlineSearchFieldAccessoryHiddenState
{
  borrowedSearchTextField = [(_UISearchControllerInlineSearchFieldAccessoryView *)self->_inlineSearchFieldAccessoryView borrowedSearchTextField];
  [(UIView *)self->_inlineSearchFieldAccessoryView setHidden:borrowedSearchTextField == 0];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _UISearchControllerView;
  v5 = [(UIView *)&v10 hitTest:event withEvent:test.x, test.y];
  if (v5 == self || (-[UIView __viewDelegate](&self->super.super.super.isa), v6 = objc_claimAutoreleasedReturnValue(), [v6 _resultsControllerViewContainer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)_ensureViewOfClassIsOnTop:(Class)top
{
  subviews = [(UIView *)self subviews];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___UISearchControllerView__ensureViewOfClassIsOnTop___block_invoke;
  v6[3] = &unk_1E71159F8;
  v6[4] = self;
  v6[5] = top;
  [subviews enumerateObjectsUsingBlock:v6];
}

- (void)_ensureContainerIsOnTop
{
  if (![(_UISearchControllerView *)self _ensureSystemInputViewAboveSearchBarContainerView])
  {
    v3 = objc_opt_class();

    [(_UISearchControllerView *)self _ensureViewOfClassIsOnTop:v3];
  }
}

- (void)_ensureCarPlayLimitedUIIsOnTop
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    v5 = objc_opt_class();

    [(_UISearchControllerView *)self _ensureViewOfClassIsOnTop:v5];
  }
}

- (void)_ensurePortalViewIsOnTop
{
  if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
  {
    v3 = objc_opt_class();

    [(_UISearchControllerView *)self _ensureViewOfClassIsOnTop:v3];
  }
}

- (void)_ensureInlineSearchAccessoryViewIsOnTop
{
  v3 = objc_opt_class();

  [(_UISearchControllerView *)self _ensureViewOfClassIsOnTop:v3];
}

- (void)_ensureSubviewOrdering
{
  [(_UISearchControllerView *)self _ensureContainerIsOnTop];
  [(_UISearchControllerView *)self _ensureCarPlayLimitedUIIsOnTop];
  [(_UISearchControllerView *)self _ensurePortalViewIsOnTop];

  [(_UISearchControllerView *)self _ensureInlineSearchAccessoryViewIsOnTop];
}

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  v6.receiver = self;
  v6.super_class = _UISearchControllerView;
  [(UIView *)&v6 _addSubview:subview positioned:positioned relativeTo:to];
  [(_UISearchControllerView *)self _ensureSubviewOrdering];
}

- (void)bringSubviewToFront:(id)front
{
  v4.receiver = self;
  v4.super_class = _UISearchControllerView;
  [(UIView *)&v4 bringSubviewToFront:front];
  [(_UISearchControllerView *)self _ensureSubviewOrdering];
}

- (void)sendSubviewToBack:(id)back
{
  v4.receiver = self;
  v4.super_class = _UISearchControllerView;
  [(UIView *)&v4 sendSubviewToBack:back];
  [(_UISearchControllerView *)self _ensureSubviewOrdering];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UISearchControllerView;
  [(UIView *)&v5 didMoveToWindow];
  inlineSearchFieldAccessoryView = self->_inlineSearchFieldAccessoryView;
  if (inlineSearchFieldAccessoryView && ![(UIView *)inlineSearchFieldAccessoryView isHidden])
  {
    [(UIView *)self->_inlineSearchFieldAccessoryView bounds];
    if (CGRectGetHeight(v6) == 0.0)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __42___UISearchControllerView_didMoveToWindow__block_invoke;
      v4[3] = &unk_1E70F3590;
      v4[4] = self;
      [UIView performWithoutAnimation:v4];
    }
  }
}

@end