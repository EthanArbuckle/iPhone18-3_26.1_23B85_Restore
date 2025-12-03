@interface SKUICollectionView
- (CGRect)bounds;
- (SKUICollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionViewLayout;
- (void)_updateIndexBarControlFrame;
- (void)_updateShowsScrollIndicators;
- (void)layoutSubviews;
- (void)setCollectionViewLayout:(id)layout animated:(BOOL)animated;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setIndexBarControl:(id)control;
- (void)setRefreshControl:(id)control;
- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
@end

@implementation SKUICollectionView

- (SKUICollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICollectionView initWithFrame:collectionViewLayout:];
  }

  v13.receiver = self;
  v13.super_class = SKUICollectionView;
  height = [(SKUICollectionView *)&v13 initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_externalShowsHorizontalScrollIndicator = [(SKUICollectionView *)height showsHorizontalScrollIndicator];
    v11->_externalShowsVerticalScrollIndicator = [(SKUICollectionView *)v11 showsVerticalScrollIndicator];
    [(SKUICollectionView *)v11 setPrefetchingEnabled:0];
    [(SKUICollectionView *)v11 _setContentInsetAdjustmentBehavior:101];
  }

  return v11;
}

- (id)collectionViewLayout
{
  pendingCollectionViewLayout = self->_pendingCollectionViewLayout;
  if (pendingCollectionViewLayout)
  {
    collectionViewLayout = pendingCollectionViewLayout;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUICollectionView;
    collectionViewLayout = [(SKUICollectionView *)&v5 collectionViewLayout];
  }

  return collectionViewLayout;
}

- (void)setCollectionViewLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_pendingCollectionViewLayout, layout);
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SKUICollectionView;
  [(SKUICollectionView *)&v9 setCollectionViewLayout:layoutCopy animated:animatedCopy];
  pendingCollectionViewLayout = self->_pendingCollectionViewLayout;
  self->_pendingCollectionViewLayout = 0;
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SKUICollectionView;
  delegateCopy = delegate;
  [(SKUICollectionView *)&v6 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  self->_delegateWantsWillLayoutSubviews = v5 & 1;
}

- (CGRect)bounds
{
  v7.receiver = self;
  v7.super_class = SKUICollectionView;
  [(SKUICollectionView *)&v7 bounds];
  if (self->_overrideBoundsWidth > 0.00000011920929)
  {
    overrideBoundsWidth = self->_overrideBoundsWidth;
  }

  result.size.height = v6;
  result.size.width = overrideBoundsWidth;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)layoutSubviews
{
  if (self->_delegateWantsWillLayoutSubviews)
  {
    delegate = [(SKUICollectionView *)self delegate];
    [delegate skuiCollectionViewWillLayoutSubviews:self];
  }

  if (self->_refreshControl)
  {
    [(SKUICollectionView *)self sendSubviewToBack:?];
  }

  v4.receiver = self;
  v4.super_class = SKUICollectionView;
  [(SKUICollectionView *)&v4 layoutSubviews];
  [(SKUICollectionView *)self _updateIndexBarControlFrame];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SKUICollectionView;
  [(SKUICollectionView *)&v5 setContentOffset:animated animated:offset.x, offset.y];
  [(SKUICollectionView *)self _updateIndexBarControlFrame];
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator
{
  if (self->_externalShowsHorizontalScrollIndicator != indicator)
  {
    self->_externalShowsHorizontalScrollIndicator = indicator;
    [(SKUICollectionView *)self _updateShowsScrollIndicators];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  if (self->_externalShowsVerticalScrollIndicator != indicator)
  {
    self->_externalShowsVerticalScrollIndicator = indicator;
    [(SKUICollectionView *)self _updateShowsScrollIndicators];
  }
}

- (void)setIndexBarControl:(id)control
{
  controlCopy = control;
  indexBarControl = self->_indexBarControl;
  v7 = controlCopy;
  if (indexBarControl != controlCopy)
  {
    if ([(SKUIIndexBarControl *)indexBarControl isDescendantOfView:self])
    {
      [(SKUIIndexBarControl *)self->_indexBarControl removeFromSuperview];
    }

    objc_storeStrong(&self->_indexBarControl, control);
    [(SKUICollectionView *)self _updateShowsScrollIndicators];
    [(SKUICollectionView *)self setNeedsLayout];
    indexBarControl = self->_indexBarControl;
  }

  if (indexBarControl && ([(SKUIIndexBarControl *)indexBarControl isDescendantOfView:self]& 1) == 0)
  {
    [(SKUICollectionView *)self addSubview:self->_indexBarControl];
    [(SKUICollectionView *)self setNeedsLayout];
  }
}

- (void)setRefreshControl:(id)control
{
  controlCopy = control;
  refreshControl = self->_refreshControl;
  if (refreshControl != controlCopy)
  {
    v7 = controlCopy;
    if (refreshControl)
    {
      [(UIRefreshControl *)refreshControl removeFromSuperview];
    }

    objc_storeStrong(&self->_refreshControl, control);
    refreshControl = [(SKUICollectionView *)self _addContentSubview:self->_refreshControl atBack:1];
    controlCopy = v7;
  }

  MEMORY[0x2821F96F8](refreshControl, controlCopy);
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.receiver = self;
  v3.super_class = SKUICollectionView;
  [(SKUICollectionView *)&v3 setContentInset:inset.top, inset.left, inset.bottom, inset.right];
}

- (void)_updateIndexBarControlFrame
{
  [(SKUICollectionView *)self bounds];
  v4 = v3;
  rect_24 = v5;
  v37 = v3;
  v6 = v5;
  v8 = v7;
  rect_8 = v9;
  rect_16 = v7;
  v10 = v9;
  [(SKUICollectionView *)self contentInset];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  [(SKUIIndexBarControl *)self->_indexBarControl frame];
  v20 = v19;
  rect = v19;
  v22 = v21;
  v39.origin.x = v12;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v18;
  v23 = CGRectGetWidth(v39) * 0.25;
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  Height = CGRectGetHeight(v40);
  [(SKUIIndexBarControl *)self->_indexBarControl sizeThatFits:v23, Height];
  v26 = v25;
  v41.size.height = v27;
  v41.origin.x = v20;
  v41.origin.y = v22;
  v41.size.width = v26;
  v28 = CGRectGetHeight(v41);
  if (v28 >= Height)
  {
    Height = v28;
  }

  v42.origin.x = v12;
  v42.origin.y = v14;
  v42.size.width = v16;
  v42.size.height = v18;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = rect;
  v43.origin.y = v22;
  v43.size.width = v26;
  v43.size.height = Height;
  v30 = MaxX - CGRectGetWidth(v43);
  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  MinY = CGRectGetMinY(v44);
  indexBarControl = self->_indexBarControl;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v30, MinY, v26, Height, v37, rect_24, rect_16, rect_8);

  [(SKUIIndexBarControl *)indexBarControl setFrame:?];
}

- (void)_updateShowsScrollIndicators
{
  if (self->_indexBarControl)
  {
    v7.receiver = self;
    v7.super_class = SKUICollectionView;
    [(SKUICollectionView *)&v7 setShowsHorizontalScrollIndicator:0];
    v6.receiver = self;
    v6.super_class = SKUICollectionView;
    [(SKUICollectionView *)&v6 setShowsVerticalScrollIndicator:0, v4.receiver, v4.super_class];
  }

  else
  {
    externalShowsHorizontalScrollIndicator = self->_externalShowsHorizontalScrollIndicator;
    v5.receiver = self;
    v5.super_class = SKUICollectionView;
    [(SKUICollectionView *)&v5 setShowsHorizontalScrollIndicator:externalShowsHorizontalScrollIndicator];
    [(SKUICollectionView *)&v4 setShowsVerticalScrollIndicator:self->_externalShowsVerticalScrollIndicator, self, SKUICollectionView];
  }
}

- (void)initWithFrame:collectionViewLayout:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICollectionView initWithFrame:collectionViewLayout:]";
}

@end