@interface _UIInterfaceActionCustomViewRepresentationView
- (BOOL)hasLayoutHeightConstraintsIdenticalToRepresentationView:(id)view;
- (_UIInterfaceActionCustomViewRepresentationView)initWithAction:(id)action;
- (id)description;
- (int64_t)focusItemDeferralMode;
- (void)_insertLoadedContentsIntoHierarchy;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateContentsInsertedIntoHierarchy;
@end

@implementation _UIInterfaceActionCustomViewRepresentationView

- (_UIInterfaceActionCustomViewRepresentationView)initWithAction:(id)action
{
  v9.receiver = self;
  v9.super_class = _UIInterfaceActionCustomViewRepresentationView;
  v3 = [(UIInterfaceActionRepresentationView *)&v9 initWithAction:action];
  v4 = v3;
  if (v3)
  {
    action = [(UIInterfaceActionRepresentationView *)v3 action];
    customContentView = [action customContentView];
    actionContentView = v4->_actionContentView;
    v4->_actionContentView = customContentView;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIInterfaceActionCustomViewRepresentationView;
  v4 = [(UIInterfaceActionRepresentationView *)&v8 description];
  action = [(UIInterfaceActionRepresentationView *)self action];
  v6 = [v3 stringWithFormat:@"%@ action = %@", v4, action];

  return v6;
}

- (int64_t)focusItemDeferralMode
{
  if (self->_actionContentView)
  {
    actionContentView = self->_actionContentView;

    return [(UIView *)actionContentView focusItemDeferralMode];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = _UIInterfaceActionCustomViewRepresentationView;
    return [(UIView *)&v6 focusItemDeferralMode];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(UIInterfaceActionRepresentationView *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = _UIInterfaceActionCustomViewRepresentationView;
    [(UIInterfaceActionRepresentationView *)&v5 setHighlighted:highlightedCopy];
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_actionContentView setHighlighted:highlightedCopy];
    }
  }
}

- (BOOL)hasLayoutHeightConstraintsIdenticalToRepresentationView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    _actionContentView = [(_UIInterfaceActionCustomViewRepresentationView *)self _actionContentView];
    _actionContentView2 = [(_UIInterfaceActionCustomViewRepresentationView *)self _actionContentView];
    if (objc_opt_respondsToSelector())
    {
      v6 = [_actionContentView hasLayoutHeightConstraintsIdenticalToInterfaceActionCustomView:_actionContentView2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateContentsInsertedIntoHierarchy
{
  if ([(UIInterfaceActionRepresentationView *)self _contentsInsertedIntoViewHierarchy])
  {

    [(_UIInterfaceActionCustomViewRepresentationView *)self _insertLoadedContentsIntoHierarchy];
  }

  else
  {

    [(_UIInterfaceActionCustomViewRepresentationView *)self _removeLoadedContentsFromViewHierarcy];
  }
}

- (void)_insertLoadedContentsIntoHierarchy
{
  superview = [(UIView *)self->_actionContentView superview];

  if (superview != self)
  {
    [(UIView *)self addSubview:self->_actionContentView];

    [(UIInterfaceActionRepresentationView *)self invalidateIntrinsicContentSize];
  }
}

@end