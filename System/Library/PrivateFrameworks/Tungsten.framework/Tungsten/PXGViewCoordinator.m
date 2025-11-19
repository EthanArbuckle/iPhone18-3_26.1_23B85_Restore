@interface PXGViewCoordinator
- (PXGViewCoordinator)init;
- (PXGViewCoordinator)initWithContentLayout:(id)a3 containerView:(id)a4 belowSubview:(id)a5 containerViewController:(id)a6 configuration:(id)a7;
- (UIEdgeInsets)insets;
- (UIView)belowSubview;
- (UIView)containerView;
- (void)_addTungstenViewToContainerView;
- (void)prepareForTransitionInContainerView:(id)a3 withContentFrame:(CGRect)a4;
- (void)restoreAfterTransition;
@end

@implementation PXGViewCoordinator

- (UIView)belowSubview
{
  WeakRetained = objc_loadWeakRetained(&self->_belowSubview);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_addTungstenViewToContainerView
{
  v5 = [(PXGViewCoordinator *)self containerView];
  v3 = [(PXGViewCoordinator *)self tungstenView];
  v4 = [(PXGViewCoordinator *)self belowSubview];
  if (v4)
  {
    [v5 insertSubview:v3 belowSubview:v4];
  }

  else
  {
    [v5 addSubview:v3];
  }
}

- (void)restoreAfterTransition
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(PXGViewCoordinator *)self isPreparedForTransition])
  {
    v3 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 8);
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
    v7 = [(PXGViewCoordinator *)self transitionLayout];
    [v7 setContentFrameOverride:{v3, v4, v5, v6}];

    v8 = [(PXGViewCoordinator *)self tungstenView];
    v9 = [(PXGViewCoordinator *)self containerView];
    [v9 bounds];
    [(PXGViewCoordinator *)self insets];
    PXEdgeInsetsInsetRect();
    [v8 setFrame:?];
    [(PXGViewCoordinator *)self _addTungstenViewToContainerView];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [(NSMapTable *)self->_backgroundColorByViewBeforeTransition keyEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          v16 = [(NSMapTable *)self->_backgroundColorByViewBeforeTransition objectForKey:v15];
          [v15 setBackgroundColor:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [(NSMapTable *)self->_backgroundColorByViewBeforeTransition removeAllObjects];
    [v8 forceUpdate];
    [(PXGViewCoordinator *)self setIsPreparedForTransition:0];
  }
}

- (void)prepareForTransitionInContainerView:(id)a3 withContentFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v9 = [(PXGViewCoordinator *)self tungstenView];
  v10 = [(PXGViewCoordinator *)self transitionLayout];

  if (v10)
  {
    [v15 bounds];
    [v9 setFrame:?];
    v11 = [(PXGViewCoordinator *)self transitionLayout];
    [v11 setContentFrameOverride:{x, y, width, height}];
  }

  [(NSMapTable *)self->_backgroundColorByViewBeforeTransition removeAllObjects];
  if ([(PXGViewCoordinator *)self shouldMoveTungstenViewDuringTransition])
  {
    backgroundColorByViewBeforeTransition = self->_backgroundColorByViewBeforeTransition;
    v13 = [v9 backgroundColor];
    [(NSMapTable *)backgroundColorByViewBeforeTransition setObject:v13 forKey:v9];

    v14 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v14];

    [v15 addSubview:v9];
  }

  [v9 forceUpdate];
  [(PXGViewCoordinator *)self setIsPreparedForTransition:1];
}

- (PXGViewCoordinator)initWithContentLayout:(id)a3 containerView:(id)a4 belowSubview:(id)a5 containerViewController:(id)a6 configuration:(id)a7
{
  v42[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v41.receiver = self;
  v41.super_class = PXGViewCoordinator;
  v18 = [(PXGViewCoordinator *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contentLayout, a3);
    objc_storeWeak(&v19->_containerView, v14);
    objc_storeWeak(&v19->_belowSubview, v15);
    v19->_shouldMoveTungstenViewDuringTransition = 1;
    v20 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    backgroundColorByViewBeforeTransition = v19->_backgroundColorByViewBeforeTransition;
    v19->_backgroundColorByViewBeforeTransition = v20;

    if (v17)
    {
      v17[2](v17, v19);
    }

    if (v16)
    {
      v22 = _tungstenViewCoordinatorsByContainerViewController;
      if (!_tungstenViewCoordinatorsByContainerViewController)
      {
        v23 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
        v24 = _tungstenViewCoordinatorsByContainerViewController;
        _tungstenViewCoordinatorsByContainerViewController = v23;

        v22 = _tungstenViewCoordinatorsByContainerViewController;
      }

      [v22 setObject:v19 forKey:v16];
    }

    v25 = v13;
    if ([(PXGViewCoordinator *)v19 shouldEmbedContentLayout])
    {
      v26 = [[PXGTransitioningLayout alloc] initWithContentLayout:v25];
      transitionLayout = v19->_transitionLayout;
      v19->_transitionLayout = v26;

      v28 = v19->_transitionLayout;
      v25 = v28;
    }

    v42[0] = &unk_282C7F628;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[PXGViewCoordinator presentationType](v19, "presentationType")}];
    v42[1] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];

    LOBYTE(v29) = [(PXGViewCoordinator *)v19 metalViewInScrollViewAllowed];
    objc_storeWeak(&v19->_containerView, v14);
    v31 = [PXGView alloc];
    [v14 bounds];
    [(PXGViewCoordinator *)v19 insets];
    PXEdgeInsetsInsetRect();
    v38[0] = 0;
    v38[1] = v29;
    memset(v40, 0, sizeof(v40));
    v39 = 0;
    v32 = [(PXGView *)v31 initWithFrame:v30 allowedPresentationTypes:v38 displayConfiguration:?];
    tungstenView = v19->_tungstenView;
    v19->_tungstenView = v32;

    [(PXGView *)v19->_tungstenView setRootLayout:v25];
    [(PXGView *)v19->_tungstenView setAutoresizingMask:18];
    v34 = v19->_tungstenView;
    v35 = [(PXGViewCoordinator *)v19 mediaProvider];
    [(PXGView *)v34 registerAllTextureProvidersWithMediaProvider:v35];

    [(PXGViewCoordinator *)v19 _addTungstenViewToContainerView];
    v36 = [(PXGView *)v19->_tungstenView scrollViewController];
    [v36 setShowsHorizontalScrollIndicator:{-[PXGViewCoordinator showsHorizontalScrollIndicator](v19, "showsHorizontalScrollIndicator")}];
    [v36 setShowsVerticalScrollIndicator:{-[PXGViewCoordinator showsVerticalScrollIndicator](v19, "showsVerticalScrollIndicator")}];
    [v36 setContentInsetAdjustmentBehavior:{-[PXGViewCoordinator contentInsetAdjustmentBehavior](v19, "contentInsetAdjustmentBehavior")}];
  }

  return v19;
}

- (PXGViewCoordinator)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGViewCoordinator.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXGViewCoordinator init]"}];

  abort();
}

@end