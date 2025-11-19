@interface _UIWTCHighlightContainerView
- (_UIWTCHighlightContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation _UIWTCHighlightContainerView

- (_UIWTCHighlightContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIWTCHighlightContainerView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [_UITextSelectionRangeView alloc];
    [(UIView *)v3 bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    highlightSubview = v3->_highlightSubview;
    v3->_highlightSubview = v5;

    [(UIView *)v3->_highlightSubview setAutoresizingMask:18];
    [(UIView *)v3 addSubview:v3->_highlightSubview];
  }

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIWTCHighlightContainerView;
  [(UIView *)&v5 layoutSubviews];
  v3 = [(UIView *)self tintColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  [(_UITextSelectionRangeView *)self->_highlightSubview setSelectionColor:v4];
}

- (void)tintColorDidChange
{
  v4 = [(UIView *)self tintColor];
  v3 = [v4 colorWithAlphaComponent:0.2];
  [(_UITextSelectionRangeView *)self->_highlightSubview setSelectionColor:v3];
}

@end