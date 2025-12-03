@interface _UISearchBarContainerView
- (_UISearchBarContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
- (void)_uncontainerSubview:(id)subview;
- (void)enforceSubviewAtBottomIfNecessary;
- (void)safeAreaInsetsDidChange;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UISearchBarContainerView

- (_UISearchBarContainerView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UISearchBarContainerView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _UISearchBarContainerView;
  v5 = [(UIView *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  subviewCopy = subview;
  v11.receiver = self;
  v11.super_class = _UISearchBarContainerView;
  [(UIView *)&v11 _addSubview:subviewCopy positioned:positioned relativeTo:to];
  v9 = objc_opt_respondsToSelector();
  self->_shouldSendContainerSafeAreaInsetsDidChange = v9 & 1;
  if (v9)
  {
    [(UIView *)subviewCopy _containerSafeAreaInsetsDidChange:self];
  }

  self->_resizingMask = [(UIView *)subviewCopy autoresizingMask];
  [(UIView *)subviewCopy setAutoresizingMask:10];
  subview = self->_subview;
  self->_subview = subviewCopy;
}

- (void)_uncontainerSubview:(id)subview
{
  if (self->_subview == subview)
  {
    [subview setAutoresizingMask:self->_resizingMask];
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UISearchBarContainerView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UISearchBarContainerView *)self enforceSubviewAtBottomIfNecessary];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UISearchBarContainerView;
  [(UIView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_UISearchBarContainerView *)self enforceSubviewAtBottomIfNecessary];
}

@end