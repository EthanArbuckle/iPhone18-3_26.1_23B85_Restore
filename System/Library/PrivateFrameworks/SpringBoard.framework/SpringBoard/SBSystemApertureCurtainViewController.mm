@interface SBSystemApertureCurtainViewController
- (SBSystemApertureCurtainViewController)init;
- (SBSystemApertureCurtainViewController)initWithCoder:(id)coder;
- (SBSystemApertureCurtainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBSystemApertureCurtainViewHosterDelegate)delegate;
- (id)portalViewForIndicatorSourceView:(id)view;
- (void)_commonInit;
- (void)_layoutIndicatorPortalViewForIndicatorSourceView:(id)view;
- (void)addPortalForIndicatorSourceView:(id)view;
- (void)addPortalForSystemApertureViewController:(id)controller;
- (void)removePortalForIndicatorSourceView:(id)view;
- (void)removePortalForSystemApertureViewController:(id)controller;
- (void)setCurtainView:(id)view;
- (void)setIndicatorPortalViewFramesChanged;
- (void)setIndicatorPortalViewsHidesSourceViewChanged;
- (void)setSystemAperturePortalViewsHidesSourceViewChanged;
- (void)viewDidLayoutSubviews;
@end

@implementation SBSystemApertureCurtainViewController

- (void)viewDidLayoutSubviews
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBSystemApertureCurtainViewController;
  [(SBSystemApertureCurtainViewController *)&v14 viewDidLayoutSubviews];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  keyEnumerator = [(NSMapTable *)self->_indicatorSourceViewsToPortalViews keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [(SBSystemApertureCurtainViewController *)self _layoutIndicatorPortalViewForIndicatorSourceView:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  systemApertureViewControllerPortalView = self->_systemApertureViewControllerPortalView;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained frameForSystemAperturePortalView];
  [(_UIPortalView *)systemApertureViewControllerPortalView setFrame:?];
}

- (SBSystemApertureCurtainViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SBSystemApertureCurtainViewController;
  v3 = [(SBSystemApertureCurtainViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SBSystemApertureCurtainViewController *)v3 _commonInit];
  }

  return v4;
}

- (SBSystemApertureCurtainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SBSystemApertureCurtainViewController;
  v4 = [(SBSystemApertureCurtainViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SBSystemApertureCurtainViewController *)v4 _commonInit];
  }

  return v5;
}

- (SBSystemApertureCurtainViewController)init
{
  v5.receiver = self;
  v5.super_class = SBSystemApertureCurtainViewController;
  v2 = [(SBSystemApertureCurtainViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBSystemApertureCurtainViewController *)v2 _commonInit];
  }

  return v3;
}

- (void)setCurtainView:(id)view
{
  viewCopy = view;
  curtainView = self->_curtainView;
  if (curtainView != viewCopy)
  {
    v11 = viewCopy;
    superview = [(UIView *)curtainView superview];
    view = [(SBSystemApertureCurtainViewController *)self view];
    v9 = [superview isEqual:view];

    if (v9)
    {
      [(UIView *)self->_curtainView removeFromSuperview];
    }

    view2 = [(SBSystemApertureCurtainViewController *)self view];
    [view2 insertSubview:v11 atIndex:0];

    objc_storeStrong(&self->_curtainView, view);
    viewCopy = v11;
  }
}

- (void)addPortalForSystemApertureViewController:(id)controller
{
  if (!self->_systemApertureViewControllerPortalView)
  {
    v4 = MEMORY[0x277D76180];
    controllerCopy = controller;
    v6 = [v4 alloc];
    view = [controllerCopy view];

    v8 = [v6 initWithSourceView:view];
    systemApertureViewControllerPortalView = self->_systemApertureViewControllerPortalView;
    self->_systemApertureViewControllerPortalView = v8;

    [(_UIPortalView *)self->_systemApertureViewControllerPortalView setMatchesAlpha:1];
    [(_UIPortalView *)self->_systemApertureViewControllerPortalView setMatchesTransform:1];
    v10 = self->_systemApertureViewControllerPortalView;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    -[_UIPortalView setHidesSourceView:](v10, "setHidesSourceView:", [WeakRetained systemAperturePortalViewHidesSourceView]);

    [(_UIPortalView *)self->_systemApertureViewControllerPortalView setMatchesPosition:0];
    curtainView = self->_curtainView;
    view2 = [(SBSystemApertureCurtainViewController *)self view];
    v14 = self->_systemApertureViewControllerPortalView;
    v15 = view2;
    if (curtainView)
    {
      [view2 insertSubview:v14 aboveSubview:self->_curtainView];
    }

    else
    {
      [view2 insertSubview:v14 atIndex:0];
    }
  }
}

- (void)removePortalForSystemApertureViewController:(id)controller
{
  systemApertureViewControllerPortalView = self->_systemApertureViewControllerPortalView;
  controllerCopy = controller;
  sourceView = [(_UIPortalView *)systemApertureViewControllerPortalView sourceView];
  view = [controllerCopy view];

  if (sourceView == view)
  {
    [(_UIPortalView *)self->_systemApertureViewControllerPortalView setSourceView:0];
    [(_UIPortalView *)self->_systemApertureViewControllerPortalView removeFromSuperview];
    v8 = self->_systemApertureViewControllerPortalView;
    self->_systemApertureViewControllerPortalView = 0;
  }
}

- (void)addPortalForIndicatorSourceView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v5 = [(SBSystemApertureCurtainViewController *)self portalViewForIndicatorSourceView:viewCopy];

    if (!v5)
    {
      v14 = objc_alloc_init(MEMORY[0x277D76180]);
      [v14 setAccessibilityIdentifier:{@"jindo-curtain-view:client-identifier:com.apple.springboard, element-identifier:SBRecordingIndicatorSystemApertureElement"}];
      [v14 setSourceView:viewCopy];
      view = [(SBSystemApertureCurtainViewController *)self view];
      [view addSubview:v14];

      [v14 setMatchesAlpha:1];
      [v14 setMatchesTransform:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [v14 setHidesSourceView:{objc_msgSend(WeakRetained, "indicatorPortalViewHidesSourceView")}];
      [v14 setMatchesPosition:{objc_msgSend(WeakRetained, "indicatorPortalViewMatchesPosition")}];
      [(NSMapTable *)self->_indicatorSourceViewsToPortalViews setObject:v14 forKey:viewCopy];
      [(SBSystemApertureCurtainViewController *)self setIndicatorPortalViewFrameChangedForIndicatorSourceView:viewCopy];

      goto LABEL_9;
    }

    v6 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSystemApertureCurtainViewController addPortalForIndicatorSourceView:viewCopy];
    }
  }

  else
  {
    v6 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemApertureCurtainViewController *)v6 addPortalForIndicatorSourceView:v7, v8, v9, v10, v11, v12, v13];
    }
  }

LABEL_9:
}

- (id)portalViewForIndicatorSourceView:(id)view
{
  if (view)
  {
    v3 = [(NSMapTable *)self->_indicatorSourceViewsToPortalViews objectForKey:?];
  }

  else
  {
    v4 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemApertureCurtainViewController *)v4 portalViewForIndicatorSourceView:v5, v6, v7, v8, v9, v10, v11];
    }

    v3 = 0;
  }

  return v3;
}

- (void)removePortalForIndicatorSourceView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v5 = [(NSMapTable *)self->_indicatorSourceViewsToPortalViews objectForKey:viewCopy];
    if (v5)
    {
      [(NSMapTable *)self->_indicatorSourceViewsToPortalViews removeObjectForKey:viewCopy];
      [v5 removeFromSuperview];
    }

    else
    {
      v13 = SBLogSystemAperturePreferencesStackIndicator();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SBSystemApertureCurtainViewController addPortalForIndicatorSourceView:viewCopy];
      }
    }
  }

  else
  {
    v5 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemApertureCurtainViewController *)v5 removePortalForIndicatorSourceView:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

- (void)setIndicatorPortalViewFramesChanged
{
  view = [(SBSystemApertureCurtainViewController *)self view];
  [view setNeedsLayout];
  [view layoutIfNeeded];
}

- (void)setIndicatorPortalViewsHidesSourceViewChanged
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_indicatorSourceViewsToPortalViews objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8++) setHidesSourceView:{objc_msgSend(WeakRetained, "indicatorPortalViewHidesSourceView")}];
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setSystemAperturePortalViewsHidesSourceViewChanged
{
  systemApertureViewControllerPortalView = self->_systemApertureViewControllerPortalView;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  -[_UIPortalView setHidesSourceView:](systemApertureViewControllerPortalView, "setHidesSourceView:", [WeakRetained systemAperturePortalViewHidesSourceView]);
}

- (void)_commonInit
{
  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  indicatorSourceViewsToPortalViews = self->_indicatorSourceViewsToPortalViews;
  self->_indicatorSourceViewsToPortalViews = weakToStrongObjectsMapTable;
}

- (void)_layoutIndicatorPortalViewForIndicatorSourceView:(id)view
{
  viewCopy = view;
  v16 = [(SBSystemApertureCurtainViewController *)self portalViewForIndicatorSourceView:viewCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained frameForIndicatorPortalViewWithSourceView:viewCopy];

  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  indicatorSourceViewFrameReferenceCoordinateSpace = [WeakRetained indicatorSourceViewFrameReferenceCoordinateSpace];
  view = [(SBSystemApertureCurtainViewController *)self view];
  [indicatorSourceViewFrameReferenceCoordinateSpace convertPoint:view toCoordinateSpace:{v7, v9}];
  v13 = v12;
  v15 = v14;

  BSRectWithSize();
  [v16 setBounds:?];
  [v16 setCenter:{v13, v15}];
}

- (SBSystemApertureCurtainViewHosterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addPortalForIndicatorSourceView:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "There is no portal registered for source view: %{public}@", v4, v5, v6, v7, 2u);
}

@end