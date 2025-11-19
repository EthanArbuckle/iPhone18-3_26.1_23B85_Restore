@interface _UIGhostView
+ (id)ghostViewForView:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIGhostView)initWithView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
@end

@implementation _UIGhostView

+ (id)ghostViewForView:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithView:v4];

  return v5;
}

- (_UIGhostView)initWithView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UIGhostView;
  v6 = [(UIView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
    v8 = [[_UIPortalView alloc] initWithSourceView:v5];
    portalView = v7->_portalView;
    v7->_portalView = v8;

    [(_UIPortalView *)v7->_portalView setHidesSourceView:1];
    [(UIView *)v7 addSubview:v7->_portalView];
  }

  return v7;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIGhostView;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];
  [(UIView *)self->_view setHidden:v3 == 0];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = _UIGhostView;
  [(UIView *)&v4 didMoveToSuperview];
  v3 = [(UIView *)self superview];
  [(UIView *)self->_view setHidden:v3 == 0];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UIGhostView;
  v8 = [(UIView *)&v13 hitTest:v7 withEvent:x, y];
  v9 = v8;
  if (v8 == self->_portalView)
  {
    v10 = [(UIView *)self->_view hitTest:v7 withEvent:x, y];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v11;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_view intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_view sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_view setHidden:?];
  v5.receiver = self;
  v5.super_class = _UIGhostView;
  [(UIView *)&v5 setHidden:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIGhostView;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_view setBounds:?];
  [(UIView *)self bounds];
  [(_UIPortalView *)self->_portalView setFrame:?];
  [(UIView *)self->_portalView bounds];
  if (!CGRectIsEmpty(v4))
  {
    [(UIView *)self->_portalView center];
    [(UIView *)self convertPoint:0 toView:?];
    [(UIView *)self->_view setCenter:?];
  }
}

@end