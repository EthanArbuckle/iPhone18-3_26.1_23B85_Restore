@interface SBFolderContainerView
- (SBFolderContainerView)initWithFolderView:(id)view;
- (void)layoutSubviews;
- (void)setChildFolderContainerView:(id)view;
@end

@implementation SBFolderContainerView

- (SBFolderContainerView)initWithFolderView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v9.receiver = self;
  v9.super_class = SBFolderContainerView;
  v6 = [(SBFolderContainerView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_folderView, view);
    [(SBFolderContainerView *)v7 addSubview:viewCopy];
  }

  return v7;
}

- (void)setChildFolderContainerView:(id)view
{
  viewCopy = view;
  childFolderContainerView = self->_childFolderContainerView;
  if (childFolderContainerView != viewCopy)
  {
    v7 = viewCopy;
    if (childFolderContainerView)
    {
      [(SBFolderContainerView *)childFolderContainerView removeFromSuperview];
    }

    objc_storeStrong(&self->_childFolderContainerView, view);
    if (v7)
    {
      [(SBFolderContainerView *)self addSubview:v7];
    }

    childFolderContainerView = [(SBFolderContainerView *)self layoutIfNeeded];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](childFolderContainerView, viewCopy);
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
    folderView = [(SBFolderContainerView *)self->_childFolderContainerView folderView];
    [(SBFolderContainerView *)self _frameForFolderView:folderView];
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