@interface _UISearchBarContainerView
- (_UISearchBarContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
- (void)_uncontainerSubview:(id)a3;
- (void)enforceSubviewAtBottomIfNecessary;
- (void)safeAreaInsetsDidChange;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UISearchBarContainerView

- (_UISearchBarContainerView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UISearchBarContainerView;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3 && _UISolariumEnabled())
  {
    [(UIView *)v3 _setSafeAreaCornerAdaptation:4];
  }

  return v3;
}

- (void)safeAreaInsetsDidChange
{
  if (self->_shouldSendContainerSafeAreaInsetsDidChange)
  {
    [(UIView *)self->_subview _containerSafeAreaInsetsDidChange:self];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UISearchBarContainerView;
  v5 = [(UIView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = _UISearchBarContainerView;
  [(UIView *)&v11 _addSubview:v8 positioned:a4 relativeTo:a5];
  v9 = objc_opt_respondsToSelector();
  self->_shouldSendContainerSafeAreaInsetsDidChange = v9 & 1;
  if (v9)
  {
    [(UIView *)v8 _containerSafeAreaInsetsDidChange:self];
  }

  self->_resizingMask = [(UIView *)v8 autoresizingMask];
  [(UIView *)v8 setAutoresizingMask:10];
  subview = self->_subview;
  self->_subview = v8;
}

- (void)_uncontainerSubview:(id)a3
{
  if (self->_subview == a3)
  {
    [a3 setAutoresizingMask:self->_resizingMask];
    subview = self->_subview;
    self->_subview = 0;
  }
}

- (void)enforceSubviewAtBottomIfNecessary
{
  [(UIView *)self->_subview frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self bounds];
  MaxY = CGRectGetMaxY(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v12 = CGRectGetMaxY(v17);
  if (MaxY != v12)
  {
    v13 = MaxY - v12;
    if (v13 != 0.0)
    {
      subview = self->_subview;

      [(UIView *)subview setFrame:v4, v6 + v13, v8, v10];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UISearchBarContainerView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UISearchBarContainerView *)self enforceSubviewAtBottomIfNecessary];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UISearchBarContainerView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UISearchBarContainerView *)self enforceSubviewAtBottomIfNecessary];
}

@end