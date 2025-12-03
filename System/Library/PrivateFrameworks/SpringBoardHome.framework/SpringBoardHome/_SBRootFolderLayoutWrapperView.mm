@interface _SBRootFolderLayoutWrapperView
- (CGSize)extendedSize;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_updateLayout;
- (void)layoutSubviews;
- (void)setExtendedSize:(CGSize)size;
- (void)setHeaderOffset:(double)offset;
- (void)setStatusBarHeightAdjustment:(double)adjustment;
- (void)setWrappedView:(id)view;
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

- (void)setHeaderOffset:(double)offset
{
  if (self->_headerOffset != offset)
  {
    self->_headerOffset = offset;
    [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
  }
}

- (void)setExtendedSize:(CGSize)size
{
  if (self->_extendedSize.width != size.width || self->_extendedSize.height != size.height)
  {
    self->_extendedSize = size;
    [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
  }
}

- (void)setStatusBarHeightAdjustment:(double)adjustment
{
  if (self->_statusBarHeightAdjustment != adjustment)
  {
    self->_statusBarHeightAdjustment = adjustment;
    [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
  }
}

- (void)setWrappedView:(id)view
{
  viewCopy = view;
  wrappedView = self->_wrappedView;
  if (wrappedView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)wrappedView removeFromSuperview];
    objc_storeStrong(&self->_wrappedView, view);
    [(_SBRootFolderLayoutWrapperView *)self addSubview:self->_wrappedView];
    wrappedView = [(_SBRootFolderLayoutWrapperView *)self _updateLayout];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](wrappedView, viewCopy);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBRootFolderLayoutWrapperView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBRootFolderLayoutWrapperView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBRootFolderLayoutWrapperView *)self succinctDescriptionBuilder];
  [(_SBRootFolderLayoutWrapperView *)self frame];
  v5 = [succinctDescriptionBuilder appendRect:@"frame" withName:?];
  v6 = [succinctDescriptionBuilder appendFloat:@"statusBarHeightAdjustment" withName:self->_statusBarHeightAdjustment];
  v7 = [succinctDescriptionBuilder appendFloat:@"headerOffset" withName:self->_headerOffset];
  v8 = [succinctDescriptionBuilder appendSize:@"extendedSize" withName:{self->_extendedSize.width, self->_extendedSize.height}];
  v9 = [succinctDescriptionBuilder appendObject:self->_wrappedView withName:@"wrappedView"];

  return succinctDescriptionBuilder;
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