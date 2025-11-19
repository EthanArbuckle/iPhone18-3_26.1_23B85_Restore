@interface _PBFBSUICAPackageView
- (BOOL)_derivedIsVisible;
- (BOOL)updatePackageView:(id)a3 contentSize:(CGSize)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_PBFBSUICAPackageView)init;
- (void)_layoutPackageView;
- (void)_updateAnimation;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setVisible:(BOOL)a3;
@end

@implementation _PBFBSUICAPackageView

- (_PBFBSUICAPackageView)init
{
  v5.receiver = self;
  v5.super_class = _PBFBSUICAPackageView;
  v2 = [(_PBFBSUICAPackageView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 408) = *MEMORY[0x277CBF3A8];
    [v2 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    [(_PBFBSUICAPackageView *)self _updateAnimation];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _PBFBSUICAPackageView;
  [(_PBFBSUICAPackageView *)&v3 layoutSubviews];
  [(_PBFBSUICAPackageView *)self _layoutPackageView];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _PBFBSUICAPackageView;
  [(_PBFBSUICAPackageView *)&v3 didMoveToWindow];
  [(_PBFBSUICAPackageView *)self _updateAnimation];
}

- (BOOL)updatePackageView:(id)a3 contentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  [(BSUICAPackageView *)self->_packageView removeFromSuperview];
  packageView = self->_packageView;
  self->_packageView = 0;

  self->_contentSize.width = width;
  self->_contentSize.height = height;
  if (v8)
  {
    objc_storeStrong(&self->_packageView, a3);
    [(_PBFBSUICAPackageView *)self _updateAnimation];
    [(_PBFBSUICAPackageView *)self setNeedsLayout];
    [(_PBFBSUICAPackageView *)self invalidateIntrinsicContentSize];
  }

  return v8 != 0;
}

- (BOOL)_derivedIsVisible
{
  v3 = [(_PBFBSUICAPackageView *)self window];

  if (v3)
  {
    packageView = self->_packageView;
    if (packageView)
    {
      LOBYTE(packageView) = self->_visible;
    }
  }

  else
  {
    LOBYTE(packageView) = 0;
  }

  return packageView & 1;
}

- (void)_updateAnimation
{
  v3 = [(_PBFBSUICAPackageView *)self _derivedIsVisible];
  packageView = self->_packageView;
  if (v3)
  {
    [(_PBFBSUICAPackageView *)self addSubview:packageView];

    [(_PBFBSUICAPackageView *)self _layoutPackageView];
  }

  else
  {
    v5 = self->_packageView;

    [(BSUICAPackageView *)v5 removeFromSuperview];
  }
}

- (void)_layoutPackageView
{
  [(BSUICAPackageView *)self->_packageView frame];
  if (v4 != self->_contentSize.width || v3 != self->_contentSize.height)
  {
    packageView = self->_packageView;
    BSRectWithSize();
    [(BSUICAPackageView *)packageView setFrame:?];
  }

  v7 = self->_packageView;
  [(_PBFBSUICAPackageView *)self center];

  [(BSUICAPackageView *)v7 setCenter:?];
}

@end