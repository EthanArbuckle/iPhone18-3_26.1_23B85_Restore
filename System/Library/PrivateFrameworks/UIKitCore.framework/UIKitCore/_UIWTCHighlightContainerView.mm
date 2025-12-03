@interface _UIWTCHighlightContainerView
- (_UIWTCHighlightContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation _UIWTCHighlightContainerView

- (_UIWTCHighlightContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIWTCHighlightContainerView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  tintColor = [(UIView *)self tintColor];
  v4 = [tintColor colorWithAlphaComponent:0.2];
  [(_UITextSelectionRangeView *)self->_highlightSubview setSelectionColor:v4];
}

- (void)tintColorDidChange
{
  tintColor = [(UIView *)self tintColor];
  v3 = [tintColor colorWithAlphaComponent:0.2];
  [(_UITextSelectionRangeView *)self->_highlightSubview setSelectionColor:v3];
}

@end