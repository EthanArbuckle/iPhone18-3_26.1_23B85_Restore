@interface _PUIDPointerPortalSourceView
- (_PUIDPointerPortalSourceView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _PUIDPointerPortalSourceView

- (_PUIDPointerPortalSourceView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _PUIDPointerPortalSourceView;
  v3 = [(_PUIDPointerPortalSourceView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_UIPortalView alloc];
    [(_PUIDPointerPortalSourceView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    contentPortalView = v3->_contentPortalView;
    v3->_contentPortalView = v5;

    [(_UIPortalView *)v3->_contentPortalView setMatchesAlpha:0];
    [(_UIPortalView *)v3->_contentPortalView setHidesSourceView:0];
    [(_UIPortalView *)v3->_contentPortalView setMatchesTransform:0];
    [(_UIPortalView *)v3->_contentPortalView setMatchesPosition:1];
    [(_UIPortalView *)v3->_contentPortalView setAlpha:0.0];
    [(_PUIDPointerPortalSourceView *)v3 addSubview:v3->_contentPortalView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _PUIDPointerPortalSourceView;
  [(_PUIDPointerPortalSourceView *)&v4 layoutSubviews];
  contentPortalView = self->_contentPortalView;
  [(_PUIDPointerPortalSourceView *)self bounds];
  [(_UIPortalView *)contentPortalView setFrame:?];
}

@end