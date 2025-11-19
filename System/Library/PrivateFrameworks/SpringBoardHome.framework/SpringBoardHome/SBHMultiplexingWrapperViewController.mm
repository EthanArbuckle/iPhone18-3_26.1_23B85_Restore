@interface SBHMultiplexingWrapperViewController
- (APUIAppPredictionViewController)appPredictionViewController;
- (BOOL)isGridAligned;
- (BOOL)wantsCaptureOnlyBackgroundView;
- (CGRect)visibleBounds;
- (NSArray)applicationShortcutItems;
- (SBHMultiplexingWrapperViewController)initWithIcon:(id)a3 location:(id)a4 multiplexingViewController:(id)a5 appPredictionViewController:(id)a6 canAlignWithGrid:(BOOL)a7;
- (SBHMultiplexingWrapperViewController)initWithIcon:(id)a3 location:(id)a4 multiplexingViewController:(id)a5 component:(unint64_t)a6;
- (SBHMultiplexingWrapperViewControllerDelegate)delegate;
- (SBIconApproximateLayoutPosition)approximateLayoutPosition;
- (SBLeafIconDataSource)visiblyActiveDataSource;
- (id)_backdropGroupName;
- (id)_widgetContextMenuController;
- (unint64_t)expectedAppPredictionViewControllerMode;
- (void)_configureBackgroundViewIfNecessary;
- (void)_setBackgroundViewWeighting:(double)a3;
- (void)_updateEdgeAntialiasing;
- (void)_updateMultiplexingViewControllerModeAnimated:(BOOL)a3;
- (void)_updateWidgetViewHitTesting;
- (void)addCustomImageViewControllerObserver:(id)a3;
- (void)didSelectApplicationShortcutItem:(id)a3;
- (void)loadView;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setBackgroundViewConfigurator:(id)a3;
- (void)setBackgroundViewProvider:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setForcesEdgeAntialiasing:(BOOL)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setImageViewAlignment:(unint64_t)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setOverlapping:(BOOL)a3;
- (void)setPauseReasons:(unint64_t)a3;
- (void)setShowingContextMenu:(BOOL)a3;
- (void)setShowsSquareCorners:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setWantsEditingDisplayStyle:(BOOL)a3 animated:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willShowContextMenuAtLocation:(CGPoint)a3;
@end

@implementation SBHMultiplexingWrapperViewController

- (SBHMultiplexingWrapperViewController)initWithIcon:(id)a3 location:(id)a4 multiplexingViewController:(id)a5 appPredictionViewController:(id)a6 canAlignWithGrid:(BOOL)a7
{
  v12 = a6;
  v13 = [(SBHMultiplexingWrapperViewController *)self initWithIcon:a3 location:a4 multiplexingViewController:a5 component:0];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_appPredictionViewController, v12);
    v14->_canAlignWithGrid = a7;
    v14->_backgroundViewWeighting = -1.0;
    v15 = [(SBHMultiplexingWrapperViewController *)v14 expectedAppPredictionViewControllerMode];
    if (v15 != [v12 mode])
    {
      [v12 setMode:v15];
    }
  }

  return v14;
}

- (SBHMultiplexingWrapperViewController)initWithIcon:(id)a3 location:(id)a4 multiplexingViewController:(id)a5 component:(unint64_t)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = SBHMultiplexingWrapperViewController;
  v14 = [(SBHMultiplexingWrapperViewController *)&v22 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_icon, a3);
    v16 = [v12 copy];
    location = v15->_location;
    v15->_location = v16;

    objc_storeStrong(&v15->_multiplexingViewController, a5);
    v15->_component = a6;
    [v13 addObserver:v15];
    v15->_imageViewAlignment = 0;
    v18 = objc_opt_self();
    v23[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = [(SBHMultiplexingWrapperViewController *)v15 registerForTraitChanges:v19 withAction:sel__updateEdgeAntialiasing];
  }

  return v15;
}

- (BOOL)isGridAligned
{
  if (self->_component)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);
  v2 = [WeakRetained mode] == 0;

  return v2;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SBHMultiplexingWrapperViewController;
  [(SBHMultiplexingWrapperViewController *)&v7 loadView];
  v3 = [(SBHMultiplexingWrapperViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  [v3 bounds];
  v5 = [v4 initWithFrame:?];
  containerView = self->_containerView;
  self->_containerView = v5;

  [(UIView *)self->_containerView setClipsToBounds:1];
  [v3 addSubview:self->_containerView];
  [(SBHMultiplexingWrapperViewController *)self _updateMultiplexingViewControllerModeAnimated:0];
  [(SBHMultiplexingWrapperViewController *)self bs_addChildViewController:self->_multiplexingViewController withSuperview:self->_containerView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHMultiplexingWrapperViewController;
  [(SBHMultiplexingWrapperViewController *)&v4 viewWillAppear:a3];
  [(SBHMultiplexingWrapperViewController *)self _updateMultiplexingViewControllerModeAnimated:0];
}

- (void)viewWillLayoutSubviews
{
  v38.receiver = self;
  v38.super_class = SBHMultiplexingWrapperViewController;
  [(SBHMultiplexingWrapperViewController *)&v38 viewWillLayoutSubviews];
  v3 = [(SBHMultiplexingWrapperViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);
  v13 = [WeakRetained mode];
  v14 = v13;
  v15 = 0.0;
  if (self->_component)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13 == 1;
  }

  if (!v16)
  {
    [WeakRetained parentLayoutInsets];
    v15 = v17 * 0.5;
  }

  v18 = -v15;
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  v40 = CGRectInset(v39, v18, v18);
  [(UIView *)self->_containerView setFrame:v40.origin.x, v40.origin.y, v40.size.width, v40.size.height];
  [(UIView *)self->_containerView bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  BSRectWithSize();
  v20 = v19;
  v22 = v21;
  v37 = v23;
  v25 = v24;
  UIRectGetCenter();
  v28 = v27;
  v29 = -((v11 - v25) * 0.5);
  if (self->_imageViewAlignment)
  {
    v29 = (v11 - v25) * 0.5;
  }

  v30 = v26 + v29;
  v31 = [(UIViewController *)self->_multiplexingViewController view];
  [v31 setBounds:{v20, v22, v37, v25}];

  v32 = [(UIViewController *)self->_multiplexingViewController view];
  [v32 setCenter:{v28, v30}];

  continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
  [(UIView *)self->_containerView _setContinuousCornerRadius:continuousCornerRadius];
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:continuousCornerRadius];
  [(UIView *)self->_containerView setClipsToBounds:BSFloatEqualToFloat() ^ 1];
  if (!self->_component)
  {
    v34 = [WeakRetained view];
    v35 = v34;
    if (v14 == 1)
    {
      [v34 sbh_createGlassGroup];
      v36 = 1.0;
    }

    else
    {
      [v34 sbh_removeGlass];
      v36 = 0.0;
    }

    [(SBHMultiplexingWrapperViewController *)self _setBackgroundViewWeighting:v36];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    v13 = [(SBHMultiplexingWrapperViewController *)self view];
    v15 = [v13 layer];

    [v15 setCornerRadius:v7];
    [v15 setCornerCurve:*MEMORY[0x1E69796E8]];
    v14 = [(SBHMultiplexingWrapperViewController *)self view];
    [v14 setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v5 = a4;
    self->_editing = a3;
    [(SBHMultiplexingWrapperViewController *)self _updateWidgetViewHitTesting];

    [(SBHMultiplexingWrapperViewController *)self _updateMultiplexingViewControllerModeAnimated:v5];
  }
}

- (void)setWantsEditingDisplayStyle:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_wantsEditingDisplayStyle != a3)
  {
    self->_wantsEditingDisplayStyle = a3;
    [(SBHMultiplexingWrapperViewController *)self _updateMultiplexingViewControllerModeAnimated:a4];
  }
}

- (void)setShowingContextMenu:(BOOL)a3
{
  if (self->_showingContextMenu != a3)
  {
    v4 = a3;
    self->_showingContextMenu = a3;
    [(SBHMultiplexingWrapperViewController *)self _updateMultiplexingViewControllerModeAnimated:1];
    v6 = [(SBHMultiplexingWrapperViewController *)self _widgetContextMenuController];
    [v6 setShowingContextMenu:v4];
  }
}

- (void)willShowContextMenuAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBHMultiplexingWrapperViewController *)self _widgetContextMenuController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SBHMultiplexingWrapperViewController *)self _widgetContextMenuController];
    [v8 willShowContextMenuAtLocation:{x, y}];
  }
}

- (void)setOverlapping:(BOOL)a3
{
  if (self->_overlapping != a3)
  {
    self->_overlapping = a3;
    v4 = [(SBHMultiplexingWrapperViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  if (self->_userInteractionEnabled != a3)
  {
    self->_userInteractionEnabled = a3;
    [(SBHMultiplexingWrapperViewController *)self _updateWidgetViewHitTesting];
  }
}

- (SBLeafIconDataSource)visiblyActiveDataSource
{
  icon = self->_icon;
  v3 = objc_opt_class();
  v4 = icon;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(SBIcon *)v6 activeDataSource];

  return v7;
}

- (void)setForcesEdgeAntialiasing:(BOOL)a3
{
  if (self->_forcesEdgeAntialiasing != a3)
  {
    self->_forcesEdgeAntialiasing = a3;
    [(SBHMultiplexingWrapperViewController *)self _updateEdgeAntialiasing];
  }
}

- (void)setBackgroundViewProvider:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backgroundViewProvider != v4)
  {
    v14 = v4;
    v6 = [v4 copy];
    backgroundViewProvider = self->_backgroundViewProvider;
    self->_backgroundViewProvider = v6;

    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [(UIView *)backgroundView removeFromSuperview];
      v9 = self->_backgroundView;
      self->_backgroundView = 0;
    }

    v4 = self->_backgroundViewProvider;
    v5 = v14;
    if (v4)
    {
      v10 = (*(v4 + 2))(v4, v14);
      v11 = self->_backgroundView;
      self->_backgroundView = v10;

      [(UIView *)self->_backgroundView setClipsToBounds:!self->_showsSquareCorners];
      [(UIView *)self->_containerView insertSubview:self->_backgroundView atIndex:0];
      v12 = [(SBHMultiplexingWrapperViewController *)self view];
      [v12 setNeedsLayout];

      v13 = [(SBHMultiplexingWrapperViewController *)self view];
      [v13 layoutIfNeeded];

      v4 = [(SBHMultiplexingWrapperViewController *)self _configureBackgroundViewIfNecessary];
      v5 = v14;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setBackgroundViewConfigurator:(id)a3
{
  if (self->_backgroundViewConfigurator != a3)
  {
    v4 = [a3 copy];
    backgroundViewConfigurator = self->_backgroundViewConfigurator;
    self->_backgroundViewConfigurator = v4;

    if (!self->_backgroundViewConfigurator)
    {
      v6 = _Block_copy(self->_backgroundViewProvider);
      [(SBHMultiplexingWrapperViewController *)self setBackgroundViewProvider:0];
      [(SBHMultiplexingWrapperViewController *)self setBackgroundViewProvider:v6];
    }

    [(SBHMultiplexingWrapperViewController *)self _configureBackgroundViewIfNecessary];
  }
}

- (BOOL)wantsCaptureOnlyBackgroundView
{
  if (!self->_backgroundViewProvider)
  {
    return 0;
  }

  if (self->_backgroundAnimationCount || [(SBHMultiplexingWrapperViewController *)self isGridAligned])
  {
    return 0;
  }

  backgroundView = self->_backgroundView;
  v5 = objc_opt_class();
  v6 = backgroundView;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 == 0;
}

- (void)setImageViewAlignment:(unint64_t)a3
{
  if (self->_imageViewAlignment != a3)
  {
    self->_imageViewAlignment = a3;
    v5 = [(SBHMultiplexingWrapperViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(SBHMultiplexingWrapperViewController *)self view];
    [v6 layoutIfNeeded];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    v5 = v8;
    if (!self->_component)
    {
      WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);
      v7 = [(SBHLegibilitySettings *)v8 _UILegibilitySettings];
      [WeakRetained setLegibilitySettings:v7];

      v5 = v8;
    }
  }
}

- (NSArray)applicationShortcutItems
{
  v2 = [(SBHMultiplexingWrapperViewController *)self _widgetContextMenuController];
  v3 = [v2 applicationShortcutItems];

  return v3;
}

- (void)didSelectApplicationShortcutItem:(id)a3
{
  v4 = a3;
  v5 = [(SBHMultiplexingWrapperViewController *)self _widgetContextMenuController];
  [v5 didSelectApplicationShortcutItem:v4];
}

- (id)_widgetContextMenuController
{
  if (self->_component)
  {
    WeakRetained = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);
  }

  v3 = WeakRetained;
  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setPauseReasons:(unint64_t)a3
{
  if (self->_pauseReasons != a3)
  {
    self->_pauseReasons = a3;
    if (!self->_component)
    {
      WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);
      [WeakRetained setOccluded:a3 != 0];
    }
  }
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  v3 = a3;
  backgroundView = self->_backgroundView;
  v5 = objc_opt_class();
  v6 = backgroundView;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(UIView *)v8 setAllowsGlassGrouping:v3];
}

- (CGRect)visibleBounds
{
  [(SBHMultiplexingWrapperViewController *)self iconImageInfo];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)setShowsSquareCorners:(BOOL)a3
{
  if (self->_showsSquareCorners != a3)
  {
    self->_showsSquareCorners = a3;
    [(UIView *)self->_backgroundView setClipsToBounds:!a3];
  }
}

- (void)addCustomImageViewControllerObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (id)_backdropGroupName
{
  multiplexingViewController = self->_multiplexingViewController;
  v3 = objc_opt_class();
  v4 = multiplexingViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [(UIViewController *)v6 identifier];

  v9 = [v7 initWithFormat:@"SBWidget-%@", v8];

  return v9;
}

- (void)_setBackgroundViewWeighting:(double)a3
{
  if (self->_backgroundViewWeighting == a3)
  {
    return;
  }

  backgroundView = self->_backgroundView;
  v6 = objc_opt_class();
  v7 = backgroundView;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;

  v9 = self->_backgroundView;
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v15)
  {
    [(UIView *)v15 setWeighting:a3];
LABEL_18:
    self->_backgroundViewWeighting = a3;
    goto LABEL_19;
  }

  if (v13)
  {
    [(UIView *)v13 updateGlassVisibility:BSFloatIsOne()];
    goto LABEL_18;
  }

  v14 = self->_backgroundView;
  if (v14)
  {
    [(UIView *)v14 setAlpha:a3];
    goto LABEL_18;
  }

LABEL_19:
}

- (unint64_t)expectedAppPredictionViewControllerMode
{
  v3 = [(SBHMultiplexingWrapperViewController *)self canAlignWithGrid];
  if (self->_editing)
  {
    return 1;
  }

  if (self->_wantsEditingDisplayStyle)
  {
    return 1;
  }

  if (self->_showingContextMenu)
  {
    return 1;
  }

  v4 = v3;
  return (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", self->_location) & 1) != 0 || [(NSString *)self->_location isEqualToString:@"SBIconLocationAddWidgetSheet"]|| !v4;
}

- (void)_updateMultiplexingViewControllerModeAnimated:(BOOL)a3
{
  v3 = a3;
  if (self->_component)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);
    v9 = [(SBHMultiplexingWrapperViewController *)self expectedAppPredictionViewControllerMode];
    v6 = v9 != [WeakRetained mode];
    v10 = WeakRetained;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__SBHMultiplexingWrapperViewController__updateMultiplexingViewControllerModeAnimated___block_invoke;
    aBlock[3] = &unk_1E8088CB8;
    v24 = v10;
    v25 = v9;
    v7 = v10;
    v5 = _Block_copy(aBlock);
  }

  v11 = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
  ++self->_backgroundAnimationCount;
  if (v6)
  {
    v12 = [(SBHMultiplexingWrapperViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 multiplexingWrapperViewControllerWillChangeGridAlignment:self];
    }
  }

  v13 = MEMORY[0x1E69DD250];
  if (v3)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__SBHMultiplexingWrapperViewController__updateMultiplexingViewControllerModeAnimated___block_invoke_2;
  v18[3] = &unk_1E808BF00;
  v22 = v6;
  v20 = self;
  v21 = v5;
  v19 = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__SBHMultiplexingWrapperViewController__updateMultiplexingViewControllerModeAnimated___block_invoke_3;
  v17[3] = &unk_1E808BF28;
  v17[4] = self;
  v15 = v7;
  v16 = v5;
  [v13 sb_animateWithSettings:v11 mode:v14 animations:v18 completion:v17];
}

void __86__SBHMultiplexingWrapperViewController__updateMultiplexingViewControllerModeAnimated___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    (*(*(a1 + 48) + 16))();
    v2 = [*(a1 + 32) view];
    [v2 setNeedsLayout];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(*(a1 + 40) + 992);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v8 customImageViewControllerWantsLabelHiddenDidChange:{*(a1 + 40), v14}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  v9 = [*(a1 + 32) parentViewController];
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = v9 == *(v10 + 1064);
  }

  else
  {
    v11 = 1;
  }

  if (v11 && *(v10 + 1112))
  {
    [*(v10 + 1104) setHidden:0];
    v10 = *(a1 + 40);
  }

  v12 = [v10 view];
  [v12 setNeedsLayout];

  v13 = [*(a1 + 40) view];
  [v13 layoutIfNeeded];
}

void __86__SBHMultiplexingWrapperViewController__updateMultiplexingViewControllerModeAnimated___block_invoke_3(uint64_t a1)
{
  if (!--*(*(a1 + 32) + 1112))
  {
    if (BSFloatIsZero())
    {
      [*(*(a1 + 32) + 1104) setHidden:1];
    }

    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 multiplexingWrapperViewControllerDidChangeGridAlignment:*(a1 + 32)];
    }
  }
}

- (void)_updateWidgetViewHitTesting
{
  v2 = self->_editing || !self->_userInteractionEnabled;
  v3 = [(UIViewController *)self->_multiplexingViewController view];
  [v3 bs_setHitTestingDisabled:v2];
}

- (void)_updateEdgeAntialiasing
{
  v3 = [(SBHMultiplexingWrapperViewController *)self view];
  v10 = [v3 layer];

  v4 = [(SBHMultiplexingWrapperViewController *)self traitCollection];
  [v4 displayScale];
  v6 = v5;

  [v10 setAllowsEdgeAntialiasing:self->_forcesEdgeAntialiasing];
  backgroundView = self->_backgroundView;
  v8 = objc_opt_class();
  v9 = backgroundView;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  if (!v8)
  {
    [v10 setShouldRasterize:self->_forcesEdgeAntialiasing];
    [v10 setRasterizationScale:v6];
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  v3 = [(SBHMultiplexingWrapperViewController *)self visiblyActiveDataSource];
  backgroundViewConfigurator = self->_backgroundViewConfigurator;
  if (backgroundViewConfigurator)
  {
    if (self->_backgroundView && v3 != 0)
    {
      backgroundViewConfigurator[2]();
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (SBIconApproximateLayoutPosition)approximateLayoutPosition
{
  p_approximateLayoutPosition = &self->_approximateLayoutPosition;
  horizontal = self->_approximateLayoutPosition.horizontal;
  vertical = p_approximateLayoutPosition->vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (SBHMultiplexingWrapperViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (APUIAppPredictionViewController)appPredictionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_appPredictionViewController);

  return WeakRetained;
}

@end