@interface SBHWidgetWrapperViewController
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)shadowTransform;
- (CGSize)contentSize;
- (SBHWidgetWrapperViewController)initWithGalleryItem:(id)a3 titleAndSubtitleVisible:(BOOL)a4 listLayoutProvider:(id)a5 iconViewProvider:(id)a6;
- (SBHWidgetWrapperViewControllerDelegate)delegate;
- (SBIconViewProviding)iconViewProvider;
- (id)_widgetBackgroundViewConfigurator;
- (id)_widgetBackgroundViewProvider;
- (id)_widgetDragHandler;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (int64_t)selectedSizeClass;
- (int64_t)wrapperViewBackgroundType;
- (void)_configureCustomImageViewController:(id)a3 iconView:(id)a4;
- (void)_configureIconView:(id)a3 forIcon:(id)a4;
- (void)_removeIconViewKeepObserving:(BOOL)a3;
- (void)_updateWidgetHostViewController;
- (void)_userInterfaceStyleDidChange;
- (void)dealloc;
- (void)iconTapped:(id)a3;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)iconViewDidEndDrag:(id)a3;
- (void)iconViewWillBeginDrag:(id)a3;
- (void)loadView;
- (void)setBackgroundType:(int64_t)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setDragging:(BOOL)a3;
- (void)setForcesEdgeAntialiasing:(BOOL)a3;
- (void)setGalleryItem:(id)a3;
- (void)setIndexOfSelectedSizeClass:(unint64_t)a3;
- (void)setSelectedSizeClass:(int64_t)a3;
- (void)setShadowTransform:(CGAffineTransform *)a3;
- (void)setUpWidgetStyleManagerForIconView:(id)a3;
- (void)widgetStyleManager:(id)a3 needsToAddBackgroundView:(id)a4;
- (void)widgetStyleManager:(id)a3 needsToAddFilter:(id)a4;
- (void)widgetStyleManager:(id)a3 needsToRemoveBackgroundView:(id)a4;
- (void)widgetStyleManager:(id)a3 needsToRemoveFilter:(id)a4;
@end

@implementation SBHWidgetWrapperViewController

- (SBHWidgetWrapperViewController)initWithGalleryItem:(id)a3 titleAndSubtitleVisible:(BOOL)a4 listLayoutProvider:(id)a5 iconViewProvider:(id)a6
{
  v36[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = SBHWidgetWrapperViewController;
  v14 = [(SBHWidgetWrapperViewController *)&v34 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_galleryItem, a3);
    v15->_titleAndSubtitleVisible = a4;
    objc_storeStrong(&v15->_listLayoutProvider, a5);
    objc_storeWeak(&v15->_iconViewProvider, v13);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = [v11 sbh_supportedSizeClasses];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v31 = __114__SBHWidgetWrapperViewController_initWithGalleryItem_titleAndSubtitleVisible_listLayoutProvider_iconViewProvider___block_invoke;
    v32 = &unk_1E8089950;
    v18 = v16;
    v33 = v18;
    v19 = v30;
    if (v17)
    {
      v29 = v12;
      v20 = 0;
      v35 = 0;
      v21 = vcnt_s8(v17);
      v21.i16[0] = vaddlv_u8(v21);
      v22 = v21.i32[0];
      do
      {
        if (((1 << v20) & *&v17) != 0)
        {
          (v31)(v19);
          if (v35)
          {
            break;
          }

          --v22;
        }

        if (v20 > 0x3E)
        {
          break;
        }

        ++v20;
      }

      while (v22 > 0);
      v12 = v29;
    }

    supportedSizeClasses = v15->_supportedSizeClasses;
    v15->_supportedSizeClasses = v18;
    v24 = v18;

    v15->_indexOfSelectedSizeClass = 0;
    v15->_usesAmbientScaleFactorForRemovableBackgroundItems = 0;
    v25 = objc_opt_self();
    v36[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v27 = [(SBHWidgetWrapperViewController *)v15 registerForTraitChanges:v26 withAction:sel__userInterfaceStyleDidChange];
  }

  return v15;
}

void __114__SBHWidgetWrapperViewController_initWithGalleryItem_titleAndSubtitleVisible_listLayoutProvider_iconViewProvider___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 0xB && ((1 << a3) & 0xC5E) != 0)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 addObject:v5];
  }
}

- (void)loadView
{
  v5 = [[SBHWidgetWrapperView alloc] initWithTitleAndSubtitleVisible:self->_titleAndSubtitleVisible];
  v3 = [(SBHAddWidgetSheetGalleryItem *)self->_galleryItem sbh_appName];
  [(SBHWidgetWrapperView *)v5 setTitle:v3];

  v4 = [(SBHAddWidgetSheetGalleryItem *)self->_galleryItem sbh_widgetName];
  [(SBHWidgetWrapperView *)v5 setSubtitle:v4];

  [(SBHWidgetWrapperView *)v5 setBackgroundType:[(SBHWidgetWrapperViewController *)self wrapperViewBackgroundType]];
  [(SBHWidgetWrapperViewController *)self setView:v5];
  [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
}

- (void)dealloc
{
  [(SBHWidgetWrapperViewController *)self _removeIconViewKeepObserving:0];
  v3.receiver = self;
  v3.super_class = SBHWidgetWrapperViewController;
  [(SBHWidgetWrapperViewController *)&v3 dealloc];
}

- (int64_t)selectedSizeClass
{
  v2 = [(NSArray *)self->_supportedSizeClasses objectAtIndex:self->_indexOfSelectedSizeClass];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setSelectedSizeClass:(int64_t)a3
{
  if ([(SBHWidgetWrapperViewController *)self selectedSizeClass]!= a3)
  {
    supportedSizeClasses = self->_supportedSizeClasses;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [(NSArray *)supportedSizeClasses indexOfObject:v6];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = SBLogWidgets();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SBHWidgetWrapperViewController *)a3 setSelectedSizeClass:v8];
      }

      v7 = 0;
    }

    [(SBHWidgetWrapperViewController *)self setIndexOfSelectedSizeClass:v7];
  }
}

- (void)setIndexOfSelectedSizeClass:(unint64_t)a3
{
  if (self->_indexOfSelectedSizeClass != a3)
  {
    self->_indexOfSelectedSizeClass = a3;
    [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
    v5 = [(SBHWidgetWrapperViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 wrapperViewControllerSelectedSizeClassChanged:self];
    }
  }
}

- (void)setGalleryItem:(id)a3
{
  v5 = a3;
  if (([(SBHAddWidgetSheetGalleryItem *)self->_galleryItem isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_galleryItem, a3);
    [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
  }
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    [(SBIconView *)self->_iconView setContentVisibility:?];
  }
}

- (void)setDragging:(BOOL)a3
{
  if (self->_dragging != a3)
  {
    self->_dragging = a3;
    [(SBHWidgetWrapperViewController *)self _updateWidgetHostViewController];
  }
}

- (void)setForcesEdgeAntialiasing:(BOOL)a3
{
  if (self->_forcesEdgeAntialiasing != a3)
  {
    self->_forcesEdgeAntialiasing = a3;
    v4 = [(SBIconView *)self->_iconView customIconImageViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(SBIconView *)self->_iconView customIconImageViewController];
      [v6 setForcesEdgeAntialiasing:self->_forcesEdgeAntialiasing];
    }
  }
}

- (void)setBackgroundType:(int64_t)a3
{
  if (self->_backgroundType != a3)
  {
    self->_backgroundType = a3;
    if ([(SBHWidgetWrapperViewController *)self isViewLoaded])
    {
      v4 = [(SBHWidgetWrapperViewController *)self wrapperView];
      [v4 setBackgroundType:{-[SBHWidgetWrapperViewController wrapperViewBackgroundType](self, "wrapperViewBackgroundType")}];
    }
  }
}

- (void)_removeIconViewKeepObserving:(BOOL)a3
{
  v5 = [(SBHWidgetWrapperViewController *)self wrapperView];
  iconView = self->_iconView;
  if (iconView)
  {
    v10 = v5;
    if (!a3)
    {
      [(SBIconView *)iconView removeObserver:self];
      v5 = v10;
    }

    [v5 setContentView:0];
    v7 = self->_iconView;
    self->_iconView = 0;

    defaultBackgroundViewProvider = self->_defaultBackgroundViewProvider;
    self->_defaultBackgroundViewProvider = 0;

    defaultBackgroundViewConfigurator = self->_defaultBackgroundViewConfigurator;
    self->_defaultBackgroundViewConfigurator = 0;

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](iconView, v5);
}

- (id)effectiveIconImageAppearance
{
  v2 = [(SBHWidgetWrapperViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v2];

  return v3;
}

- (id)effectiveIconImageStyleConfiguration
{
  v2 = [(SBHWidgetWrapperViewController *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:v2];

  return v3;
}

- (void)_updateWidgetHostViewController
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "No SBIcon for descriptor: %{public}@", &v3, 0xCu);
}

- (void)_configureIconView:(id)a3 forIcon:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [SBHMappedIconListLayoutProvider alloc];
  v8 = [(SBHWidgetWrapperViewController *)self listLayoutProvider];
  v9 = [(SBHMappedIconListLayoutProvider *)v7 initWithTargetListLayoutProvider:v8];

  [(SBHMappedIconListLayoutProvider *)v9 mapIconLocation:@"SBIconLocationAddWidgetSheet" toIconLocation:@"SBIconLocationRoot"];
  [v24 setLocation:@"SBIconLocationAddWidgetSheet"];
  [v24 setListLayoutProvider:v9];
  v10 = [v6 gridSizeClass];
  v11 = v10;
  if (v10 != @"SBHIconGridSizeClassDefault" && ([(__CFString *)v10 isEqualToString:?]& 1) == 0)
  {
    v12 = [(SBHWidgetWrapperViewController *)self listLayoutProvider];
    v13 = [v12 layoutForIconLocation:@"SBIconLocationRoot"];

    [v24 setIconImageInfo:{SBHIconListLayoutIconImageInfoForGridSizeClass(v13, v11)}];
  }

  [v24 addObserver:self];
  v14 = [(SBHWidgetWrapperViewController *)self iconViewProvider];
  [v14 configureIconView:v24 forIcon:v6];

  [v24 setOverrideActionDelegate:self];
  [v24 setCustomIconImageViewHitTestingDisabled:1];
  [v24 setStartsDragMoreQuickly:1];
  [v24 setIcon:v6];
  [v24 iconViewSize];
  BSRectWithSize();
  [v24 setBounds:?];
  defaultBackgroundViewProvider = self->_defaultBackgroundViewProvider;
  self->_defaultBackgroundViewProvider = 0;

  v16 = [v24 customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    v17 = [v16 backgroundViewProvider];
    v18 = [v17 copy];
    v19 = self->_defaultBackgroundViewProvider;
    self->_defaultBackgroundViewProvider = v18;
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [(SBHWidgetWrapperViewController *)self _widgetBackgroundViewProvider];
    [v16 setBackgroundViewProvider:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [v16 backgroundViewConfigurator];
    v22 = [v21 copy];
    defaultBackgroundViewConfigurator = self->_defaultBackgroundViewConfigurator;
    self->_defaultBackgroundViewConfigurator = v22;
  }
}

- (id)_widgetBackgroundViewConfigurator
{
  objc_initWeak(&location, self);
  v3 = _Block_copy(self->_defaultBackgroundViewConfigurator);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__SBHWidgetWrapperViewController__widgetBackgroundViewConfigurator__block_invoke;
  aBlock[3] = &unk_1E8089978;
  objc_copyWeak(&v10, &location);
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __67__SBHWidgetWrapperViewController__widgetBackgroundViewConfigurator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v16 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v16;
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

  v9 = v8;

  v10 = [v9 underlyingBackgroundView];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = [WeakRetained delegate];
    [v12 configureBackgroundView:v10 matchingMaterialBeneathWrapperViewController:WeakRetained];
  }

  if (*(a1 + 32))
  {
    v13 = [v9 widgetBackgroundView];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v16;
    }

    v15 = v14;

    (*(*(a1 + 32) + 16))();
  }
}

- (id)_widgetBackgroundViewProvider
{
  v3 = _Block_copy(self->_defaultBackgroundViewProvider);
  if (v3)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SBHWidgetWrapperViewController__widgetBackgroundViewProvider__block_invoke;
    aBlock[3] = &unk_1E80899A0;
    v8 = v3;
    objc_copyWeak(&v9, &location);
    v4 = _Block_copy(aBlock);
    objc_destroyWeak(&v9);

    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  v5 = _Block_copy(v4);

  return v5;
}

SBHWidgetWrapperBackgroundView *__63__SBHWidgetWrapperViewController__widgetBackgroundViewProvider__block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = objc_opt_class();
  v4 = v2;
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

  if (v6)
  {
    [v6 setBlurEnabled:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained delegate];
    v9 = [v8 backgroundViewMatchingMaterialBeneathWrapperViewController:WeakRetained];

    v10 = [[SBHWidgetWrapperBackgroundView alloc] initWithUnderlyingBackgroundView:v9 widgetBackgroundView:v6];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (id)_widgetDragHandler
{
  v2 = [(SBHWidgetWrapperViewController *)self delegate];
  v3 = [v2 widgetDragHandler];

  return v3;
}

- (void)_configureCustomImageViewController:(id)a3 iconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 setForcesEdgeAntialiasing:self->_forcesEdgeAntialiasing];
  }

  v8 = objc_opt_class();
  v29 = v6;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v29;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setHighlightsAtAnySize:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setAlwaysShowsAsStack:1];
    v11 = [(SBHWidgetWrapperViewController *)self wrapperView];
    [v11 setExtraSpacingBetweenWidgetAndTitle:5.0];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v7 icon];
    if ([v12 isWidgetIcon])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 activeDataSource];
    v15 = [v29 backdropGroupNameForActiveDataSource:v14];

    v16 = [(SBHWidgetWrapperViewController *)self wrapperView];
    [v16 setBackdropGroupName:v15];

    v17 = [(SBHWidgetWrapperViewController *)self wrapperView];
    [v17 setWantsStackBackdropCaptureGroup:{objc_msgSend(v29, "sbh_isWidgetStackViewController")}];
  }

  if (self->_usesAmbientScaleFactorForRemovableBackgroundItems)
  {
    [v7 setIconContentScalingEnabled:1];
    v18 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = 1.0;
    if (isKindOfClass)
    {
      v21 = [v29 contentViewController];
      v22 = objc_opt_self();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = [v21 metrics];
        [v24 scaleFactor];
        v20 = v25;
      }
    }

    v26 = [(SBHWidgetWrapperViewController *)self galleryItem];
    v27 = [v26 sbh_supportsRemovableBackgroundOrAccessoryFamilies];

    v28 = 1.05;
    if (!v27)
    {
      v28 = 1.0;
    }

    [v7 setIconContentScale:1.0 / (v20 * v28)];
  }

  [(SBHWidgetWrapperViewController *)self setUpWidgetStyleManagerForIconView:v7];
}

- (void)setUpWidgetStyleManagerForIconView:(id)a3
{
  v15 = a3;
  v4 = [v15 customIconImageViewController];
  if (v4)
  {
    v5 = [v15 icon];
    if ([v5 isWidgetIcon])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 activeDataSource];
    v9 = [v5 gridSizeClass];

    [v15 iconImageInfo];
    v14 = [[SBHWidgetStyleManager alloc] initWithWidgetViewController:v4 widgetDataSource:v8 gridSizeClass:v9 iconImageInfo:self delegate:v10, v11, v12, v13];
    [(SBHWidgetWrapperViewController *)self setWidgetStyleManager:v14];
  }
}

- (int64_t)wrapperViewBackgroundType
{
  v3 = [(SBHWidgetWrapperViewController *)self backgroundType];
  if (v3 == 2)
  {
    return [(SBHAddWidgetSheetGalleryItem *)self->_galleryItem sbh_supportsRemovableBackgroundOrAccessoryFamilies];
  }

  else
  {
    return v3 == 1;
  }
}

- (void)_userInterfaceStyleDidChange
{
  v2 = [(SBIconView *)self->_iconView customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 evaluateBackground];
  }
}

- (void)iconTapped:(id)a3
{
  v4 = [(SBHWidgetWrapperViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconTapped:self];
  }
}

- (void)iconViewWillBeginDrag:(id)a3
{
  v4 = a3;
  [(SBHWidgetWrapperViewController *)self setDragging:1];
  v6 = [(SBHWidgetWrapperViewController *)self _widgetDragHandler];
  v5 = [v4 icon];

  [v6 didBeginDraggingWidgetIcon:v5];
}

- (void)iconViewDidEndDrag:(id)a3
{
  v6 = a3;
  [(SBHWidgetWrapperViewController *)self setDragging:0];
  if (self->_iconView != v6)
  {
    [(SBIconView *)v6 removeObserver:self];
  }

  v4 = [(SBHWidgetWrapperViewController *)self _widgetDragHandler];
  v5 = [(SBIconView *)v6 icon];
  [v4 didEndDraggingWidgetIcon:v5];
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 customIconImageViewController];
  if (v6)
  {
    [(SBHWidgetWrapperViewController *)self bs_removeChildViewController:v6];
  }

  if (v7)
  {
    [(SBHWidgetWrapperViewController *)self bs_addChildViewController:v7];
    [(SBHWidgetWrapperViewController *)self _configureCustomImageViewController:v7 iconView:v8];
  }
}

- (void)widgetStyleManager:(id)a3 needsToAddBackgroundView:(id)a4
{
  v5 = a4;
  v6 = [(SBHWidgetWrapperViewController *)self wrapperView];
  [v6 setBackgroundView:v5];
}

- (void)widgetStyleManager:(id)a3 needsToRemoveBackgroundView:(id)a4
{
  [a4 sbh_removeGlass];
  v5 = [(SBHWidgetWrapperViewController *)self wrapperView];
  [v5 setBackgroundView:0];
}

- (void)widgetStyleManager:(id)a3 needsToAddFilter:(id)a4
{
  v5 = a4;
  v6 = [(SBHWidgetWrapperViewController *)self iconView];
  v7 = [v6 layer];

  [v7 sbh_addFilter:v5];
}

- (void)widgetStyleManager:(id)a3 needsToRemoveFilter:(id)a4
{
  v5 = a4;
  v6 = [(SBHWidgetWrapperViewController *)self iconView];
  v8 = [v6 layer];

  v7 = [v5 name];

  [v8 sbh_removeFilterWithName:v7];
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[23].d;
  *&retstr->a = *&self[23].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[23].ty;
  return self;
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_contentTransform.a = *&a3->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)shadowTransform
{
  v3 = *&self[24].d;
  *&retstr->a = *&self[24].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[24].ty;
  return self;
}

- (void)setShadowTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_shadowTransform.a = *&a3->a;
  *&self->_shadowTransform.c = v4;
  *&self->_shadowTransform.tx = v3;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBHWidgetWrapperViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelectedSizeClass:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromWidgetFamily();
  v6 = *(a2 + 1016);
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "size class %{public}@ is not in the supported size classes for descriptor %{public}@", &v7, 0x16u);
}

@end