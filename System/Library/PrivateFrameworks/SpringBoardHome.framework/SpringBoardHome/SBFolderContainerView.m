@interface SBFolderContainerView
- (SBFolderContainerView)initWithFolderView:(id)a3;
- (void)layoutSubviews;
- (void)setChildFolderContainerView:(id)a3;
@end

@implementation SBFolderContainerView

- (SBFolderContainerView)initWithFolderView:(id)a3
{
  v5 = a3;
  [v5 bounds];
  v9.receiver = self;
  v9.super_class = SBFolderContainerView;
  v6 = [(SBFolderContainerView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_folderView, a3);
    [(SBFolderContainerView *)v7 addSubview:v5];
  }

  return v7;
}

- (void)setChildFolderContainerView:(id)a3
{
  v5 = a3;
  childFolderContainerView = self->_childFolderContainerView;
  if (childFolderContainerView != v5)
  {
    v7 = v5;
    if (childFolderContainerView)
    {
      [(SBFolderContainerView *)childFolderContainerView removeFromSuperview];
    }

    objc_storeStrong(&self->_childFolderContainerView, a3);
    if (v7)
    {
      [(SBFolderContainerView *)self addSubview:v7];
    }

    childFolderContainerView = [(SBFolderContainerView *)self layoutIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](childFolderContainerView, v5);
}

- (void)layoutSubviews
{
  folderView = self->_folderView;
  if (folderView)
  {
    [(SBFolderContainerView *)self _frameForFolderView:self->_folderView];
    [(SBFolderView *)folderView setFrame:?];
  }

  childFolderContainerView = self->_childFolderContainerView;
  if (childFolderContainerView)
  {
    v5 = [(SBFolderContainerView *)self->_childFolderContainerView folderView];
    [(SBFolderContainerView *)self _frameForFolderView:v5];
    [(SBFolderContainerView *)childFolderContainerView setFrame:?];
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView transform];
    if (CGAffineTransformIsIdentity(&v8))
    {
      v7 = self->_backgroundView;
      [(SBFolderContainerView *)self bounds];
      [(UIView *)v7 setFrame:?];
    }
  }
}

@end