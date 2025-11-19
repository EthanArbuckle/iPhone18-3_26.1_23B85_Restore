@interface _UIInterfaceActionCustomViewRepresentationView
- (BOOL)hasLayoutHeightConstraintsIdenticalToRepresentationView:(id)a3;
- (_UIInterfaceActionCustomViewRepresentationView)initWithAction:(id)a3;
- (id)description;
- (int64_t)focusItemDeferralMode;
- (void)_insertLoadedContentsIntoHierarchy;
- (void)setHighlighted:(BOOL)a3;
- (void)updateContentsInsertedIntoHierarchy;
@end

@implementation _UIInterfaceActionCustomViewRepresentationView

- (_UIInterfaceActionCustomViewRepresentationView)initWithAction:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIInterfaceActionCustomViewRepresentationView;
  v3 = [(UIInterfaceActionRepresentationView *)&v9 initWithAction:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIInterfaceActionRepresentationView *)v3 action];
    v6 = [v5 customContentView];
    actionContentView = v4->_actionContentView;
    v4->_actionContentView = v6;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIInterfaceActionCustomViewRepresentationView;
  v4 = [(UIInterfaceActionRepresentationView *)&v8 description];
  v5 = [(UIInterfaceActionRepresentationView *)self action];
  v6 = [v3 stringWithFormat:@"%@ action = %@", v4, v5];

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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UIInterfaceActionRepresentationView *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = _UIInterfaceActionCustomViewRepresentationView;
    [(UIInterfaceActionRepresentationView *)&v5 setHighlighted:v3];
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_actionContentView setHighlighted:v3];
    }
  }
}

- (BOOL)hasLayoutHeightConstraintsIdenticalToRepresentationView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(_UIInterfaceActionCustomViewRepresentationView *)self _actionContentView];
    v8 = [(_UIInterfaceActionCustomViewRepresentationView *)self _actionContentView];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v7 hasLayoutHeightConstraintsIdenticalToInterfaceActionCustomView:v8];
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
  v3 = [(UIView *)self->_actionContentView superview];

  if (v3 != self)
  {
    [(UIView *)self addSubview:self->_actionContentView];

    [(UIInterfaceActionRepresentationView *)self invalidateIntrinsicContentSize];
  }
}

@end