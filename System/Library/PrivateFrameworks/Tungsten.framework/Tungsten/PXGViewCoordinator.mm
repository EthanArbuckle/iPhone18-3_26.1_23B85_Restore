@interface PXGViewCoordinator
- (PXGViewCoordinator)init;
- (PXGViewCoordinator)initWithContentLayout:(id)layout containerView:(id)view belowSubview:(id)subview containerViewController:(id)controller configuration:(id)configuration;
- (UIEdgeInsets)insets;
- (UIView)belowSubview;
- (UIView)containerView;
- (void)_addTungstenViewToContainerView;
- (void)prepareForTransitionInContainerView:(id)view withContentFrame:(CGRect)frame;
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
  containerView = [(PXGViewCoordinator *)self containerView];
  tungstenView = [(PXGViewCoordinator *)self tungstenView];
  belowSubview = [(PXGViewCoordinator *)self belowSubview];
  if (belowSubview)
  {
    [containerView insertSubview:tungstenView belowSubview:belowSubview];
  }

  else
  {
    [containerView addSubview:tungstenView];
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
    transitionLayout = [(PXGViewCoordinator *)self transitionLayout];
    [transitionLayout setContentFrameOverride:{v3, v4, v5, v6}];

    tungstenView = [(PXGViewCoordinator *)self tungstenView];
    containerView = [(PXGViewCoordinator *)self containerView];
    [containerView bounds];
    [(PXGViewCoordinator *)self insets];
    PXEdgeInsetsInsetRect();
    [tungstenView setFrame:?];
    [(PXGViewCoordinator *)self _addTungstenViewToContainerView];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    keyEnumerator = [(NSMapTable *)self->_backgroundColorByViewBeforeTransition keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          v16 = [(NSMapTable *)self->_backgroundColorByViewBeforeTransition objectForKey:v15];
          [v15 setBackgroundColor:v16];
        }

        v12 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [(NSMapTable *)self->_backgroundColorByViewBeforeTransition removeAllObjects];
    [tungstenView forceUpdate];
    [(PXGViewCoordinator *)self setIsPreparedForTransition:0];
  }
}

- (void)prepareForTransitionInContainerView:(id)view withContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  tungstenView = [(PXGViewCoordinator *)self tungstenView];
  transitionLayout = [(PXGViewCoordinator *)self transitionLayout];

  if (transitionLayout)
  {
    [viewCopy bounds];
    [tungstenView setFrame:?];
    transitionLayout2 = [(PXGViewCoordinator *)self transitionLayout];
    [transitionLayout2 setContentFrameOverride:{x, y, width, height}];
  }

  [(NSMapTable *)self->_backgroundColorByViewBeforeTransition removeAllObjects];
  if ([(PXGViewCoordinator *)self shouldMoveTungstenViewDuringTransition])
  {
    backgroundColorByViewBeforeTransition = self->_backgroundColorByViewBeforeTransition;
    backgroundColor = [tungstenView backgroundColor];
    [(NSMapTable *)backgroundColorByViewBeforeTransition setObject:backgroundColor forKey:tungstenView];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [tungstenView setBackgroundColor:clearColor];

    [viewCopy addSubview:tungstenView];
  }

  [tungstenView forceUpdate];
  [(PXGViewCoordinator *)self setIsPreparedForTransition:1];
}

- (PXGViewCoordinator)initWithContentLayout:(id)layout containerView:(id)view belowSubview:(id)subview containerViewController:(id)controller configuration:(id)configuration
{
  v42[2] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  viewCopy = view;
  subviewCopy = subview;
  controllerCopy = controller;
  configurationCopy = configuration;
  v41.receiver = self;
  v41.super_class = PXGViewCoordinator;
  v18 = [(PXGViewCoordinator *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contentLayout, layout);
    objc_storeWeak(&v19->_containerView, viewCopy);
    objc_storeWeak(&v19->_belowSubview, subviewCopy);
    v19->_shouldMoveTungstenViewDuringTransition = 1;
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    backgroundColorByViewBeforeTransition = v19->_backgroundColorByViewBeforeTransition;
    v19->_backgroundColorByViewBeforeTransition = weakToStrongObjectsMapTable;

    if (configurationCopy)
    {
      configurationCopy[2](configurationCopy, v19);
    }

    if (controllerCopy)
    {
      v22 = _tungstenViewCoordinatorsByContainerViewController;
      if (!_tungstenViewCoordinatorsByContainerViewController)
      {
        weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
        v24 = _tungstenViewCoordinatorsByContainerViewController;
        _tungstenViewCoordinatorsByContainerViewController = weakToWeakObjectsMapTable;

        v22 = _tungstenViewCoordinatorsByContainerViewController;
      }

      [v22 setObject:v19 forKey:controllerCopy];
    }

    v25 = layoutCopy;
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
    objc_storeWeak(&v19->_containerView, viewCopy);
    v31 = [PXGView alloc];
    [viewCopy bounds];
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
    mediaProvider = [(PXGViewCoordinator *)v19 mediaProvider];
    [(PXGView *)v34 registerAllTextureProvidersWithMediaProvider:mediaProvider];

    [(PXGViewCoordinator *)v19 _addTungstenViewToContainerView];
    scrollViewController = [(PXGView *)v19->_tungstenView scrollViewController];
    [scrollViewController setShowsHorizontalScrollIndicator:{-[PXGViewCoordinator showsHorizontalScrollIndicator](v19, "showsHorizontalScrollIndicator")}];
    [scrollViewController setShowsVerticalScrollIndicator:{-[PXGViewCoordinator showsVerticalScrollIndicator](v19, "showsVerticalScrollIndicator")}];
    [scrollViewController setContentInsetAdjustmentBehavior:{-[PXGViewCoordinator contentInsetAdjustmentBehavior](v19, "contentInsetAdjustmentBehavior")}];
  }

  return v19;
}

- (PXGViewCoordinator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewCoordinator.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXGViewCoordinator init]"}];

  abort();
}

@end