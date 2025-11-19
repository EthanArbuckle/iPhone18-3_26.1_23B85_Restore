@interface _SBRootFolderLayoutWrapperView
- (CGSize)extendedSize;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_updateLayout;
- (void)layoutSubviews;
- (void)setExtendedSize:(CGSize)a3;
- (void)setHeaderOffset:(double)a3;
- (void)setStatusBarHeightAdjustment:(double)a3;
- (void)setWrappedView:(id)a3;
@end

@implementation _SBRootFolderLayoutWrapperView

- (void)_updateLayout
{
  [(_SBRootFolderLayoutWrapperView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9 + self->_extendedSize.height;
  UIRectGetCenter();
  v12 = v11;
  statusBarHeightAdjustment = self->_statusBarHeightAdjustment;
  v14 = v10 - statusBarHeightAdjustment;
  v16 = v15 + statusBarHeightAdjustment - self->_headerOffset;
  [(UIView *)self->_wrappedView setBounds:v4, v6, v8, v14];
  wrappedView = self->_wrappedView;

  [(UIView *)wrappedView setCenter:v12, v16];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SBRootFolderLayoutWrapperView;
  [(_SBRootFolderLayoutWrapperView *)&v3 layoutSubviews];
  [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
}

- (void)setHeaderOffset:(double)a3
{
  if (self->_headerOffset != a3)
  {
    self->_headerOffset = a3;
    [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
  }
}

- (void)setExtendedSize:(CGSize)a3
{
  if (self->_extendedSize.width != a3.width || self->_extendedSize.height != a3.height)
  {
    self->_extendedSize = a3;
    [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
  }
}

- (void)setStatusBarHeightAdjustment:(double)a3
{
  if (self->_statusBarHeightAdjustment != a3)
  {
    self->_statusBarHeightAdjustment = a3;
    [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
  }
}

- (void)setWrappedView:(id)a3
{
  v5 = a3;
  wrappedView = self->_wrappedView;
  if (wrappedView != v5)
  {
    v7 = v5;
    [(UIView *)wrappedView removeFromSuperview];
    objc_storeStrong(&self->_wrappedView, a3);
    [(_SBRootFolderLayoutWrapperView *)self addSubview:self->_wrappedView];
    wrappedView = [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](wrappedView, v5);
}

- (id)succinctDescription
{
  v2 = [(_SBRootFolderLayoutWrapperView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBRootFolderLayoutWrapperView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBRootFolderLayoutWrapperView *)self succinctDescriptionBuilder];
  [(_SBRootFolderLayoutWrapperView *)self frame];
  v5 = [v4 appendRect:@"frame" withName:?];
  v6 = [v4 appendFloat:@"statusBarHeightAdjustment" withName:self->_statusBarHeightAdjustment];
  v7 = [v4 appendFloat:@"headerOffset" withName:self->_headerOffset];
  v8 = [v4 appendSize:@"extendedSize" withName:{self->_extendedSize.width, self->_extendedSize.height}];
  v9 = [v4 appendObject:self->_wrappedView withName:@"wrappedView"];

  return v4;
}

- (CGSize)extendedSize
{
  width = self->_extendedSize.width;
  height = self->_extendedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end