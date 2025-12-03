@interface PXCuratedLibraryStyleGuide
- (CGSize)secondaryToolbarSize;
- (PXCuratedLibraryStyleGuide)init;
- (PXCuratedLibraryStyleGuide)initWithExtendedTraitCollection:(id)collection secondaryToolbarStyle:(unint64_t)style;
- (UIEdgeInsets)secondaryToolbarContentInsets;
- (UIEdgeInsets)secondaryToolbarPadding;
- (id)zoomLevelControlTextColorOverLegibilityGradient:(BOOL)gradient;
- (void)_update;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setButtonStyle:(int64_t)style;
- (void)setLateralMargin:(double)margin;
- (void)setSecondaryToolbarPlacement:(int64_t)placement;
- (void)setSecondaryToolbarSize:(CGSize)size;
- (void)setToggleAspectFitButtonPlacement:(int64_t)placement;
- (void)setZoomButtonsButtonPlacement:(int64_t)placement;
@end

@implementation PXCuratedLibraryStyleGuide

- (void)_update
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  sharedInstance = [off_1E7721810 sharedInstance];
  extendedTraitCollection = [(PXCuratedLibraryStyleGuide *)self extendedTraitCollection];
  layoutSizeClass = [extendedTraitCollection layoutSizeClass];
  userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];
  if ([sharedInstance enableAspectFitButton])
  {
    v8 = userInterfaceIdiom == 4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && layoutSizeClass >= 2)
  {
    [extendedTraitCollection layoutOrientation];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [sharedInstance enableZoomInOutButton] ^ 1;
  if (userInterfaceIdiom == 4)
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  if ((v11 & 1) == 0 && layoutSizeClass >= 2)
  {
    if ([extendedTraitCollection layoutOrientation] == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  v13 = +[PXCuratedLibrarySettings sharedInstance];
  enableTabBarAccessoryControls = [v13 enableTabBarAccessoryControls];

  if (userInterfaceIdiom == 4)
  {
    v15 = 0;
    goto LABEL_35;
  }

  if (layoutSizeClass == 2)
  {
    if ([v3 alwaysShowSecondaryToolbarAtBottom])
    {
      goto LABEL_32;
    }

    if (userInterfaceIdiom == 2)
    {
      v15 = 2;
      goto LABEL_35;
    }

    if ([(PXCuratedLibraryStyleGuide *)self secondaryToolbarStyle]== 1)
    {
      goto LABEL_32;
    }

    if (enableTabBarAccessoryControls)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4;
    }
  }

  else
  {
    if ([extendedTraitCollection layoutOrientation] == 2 || -[PXCuratedLibraryStyleGuide secondaryToolbarStyle](self, "secondaryToolbarStyle") == 1)
    {
LABEL_32:
      if (enableTabBarAccessoryControls)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_35;
    }

    if (enableTabBarAccessoryControls)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }
  }

LABEL_35:
  v16 = [[off_1E7721560 alloc] initWithExtendedTraitCollection:extendedTraitCollection];
  [v16 contentGuideInsetsForScrollAxis:1];
  v39 = v17;
  v19 = v18;
  curatedLibraryLayoutStyle = [extendedTraitCollection curatedLibraryLayoutStyle];
  +[PXPhotosChromeSpec secondaryToolbarSize];
  v23 = v22;
  if ((v15 - 2) >= 2)
  {
    v24 = 0;
    if (v15 == 4)
    {
      v24 = 0x4075400000000000;
    }
  }

  else
  {
    v24 = v21;
    if ([(PXCuratedLibraryStyleGuide *)self secondaryToolbarStyle]!= 1)
    {
      [v3 bottomCenterSecondaryToolbarWidth];
      v24 = v25;
    }
  }

  +[PXPhotosChromeSpec maximumAccessoryViewPadding];
  v27 = v26;
  if (curatedLibraryLayoutStyle == 1)
  {
    layoutSizeClass2 = [extendedTraitCollection layoutSizeClass];
    [extendedTraitCollection safeAreaInsets];
    [PXPhotosChromeSpec secondaryToolbarPaddingForSizeClass:layoutSizeClass2 safeAreaInsets:?];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {
    v32 = 16.0;
    v30 = 8.0;
    v23 = 0x4044000000000000;
    v34 = 8.0;
    v36 = 16.0;
  }

  userInterfaceIdiom2 = [extendedTraitCollection userInterfaceIdiom];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __37__PXCuratedLibraryStyleGuide__update__block_invoke;
  v40[3] = &unk_1E772EC20;
  v42 = (v39 + v19) * 0.5;
  v43 = v15;
  v44 = v24;
  v45 = v23;
  v40[4] = self;
  v41 = extendedTraitCollection;
  v46 = v10;
  v47 = v12;
  v53 = userInterfaceIdiom2 == 5;
  v48 = v30;
  v49 = v32;
  v50 = v34;
  v51 = v36;
  v52 = v27;
  v38 = extendedTraitCollection;
  [(PXCuratedLibraryStyleGuide *)self performChanges:v40];
}

uint64_t __37__PXCuratedLibraryStyleGuide__update__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLateralMargin:*(a1 + 48)];
  [*(a1 + 32) setSecondaryToolbarPlacement:*(a1 + 56)];
  [*(a1 + 32) setSecondaryToolbarSize:{*(a1 + 64), *(a1 + 72)}];
  if (*(a1 + 56) == 4)
  {
    [*(a1 + 40) safeAreaInsets];
    [*(a1 + 32) secondaryToolbarSize];
    PXEdgeInsetsMake();
  }

  [*(a1 + 32) setSecondaryToolbarContentInsets:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  [*(a1 + 32) setToggleAspectFitButtonPlacement:*(a1 + 80)];
  [*(a1 + 32) setZoomButtonsButtonPlacement:*(a1 + 88)];
  [*(a1 + 32) setSecondaryToolbarRenderedExternally:*(a1 + 136)];
  [*(a1 + 32) setSecondaryToolbarPadding:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  v2 = *(a1 + 128);
  v3 = *(a1 + 32);

  return [v3 setMaximumAccessoryViewPadding:v2];
}

- (CGSize)secondaryToolbarSize
{
  width = self->_secondaryToolbarSize.width;
  height = self->_secondaryToolbarSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)secondaryToolbarPadding
{
  top = self->_secondaryToolbarPadding.top;
  left = self->_secondaryToolbarPadding.left;
  bottom = self->_secondaryToolbarPadding.bottom;
  right = self->_secondaryToolbarPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)secondaryToolbarContentInsets
{
  top = self->_secondaryToolbarContentInsets.top;
  left = self->_secondaryToolbarContentInsets.left;
  bottom = self->_secondaryToolbarContentInsets.bottom;
  right = self->_secondaryToolbarContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXExtendedTraitCollectionObservationContext_16244 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryStyleGuide.m" lineNumber:264 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x14A) != 0)
  {
    v11 = observableCopy;
    [(PXCuratedLibraryStyleGuide *)self _invalidate];
    observableCopy = v11;
  }
}

- (void)setZoomButtonsButtonPlacement:(int64_t)placement
{
  if (self->_zoomButtonsButtonPlacement != placement)
  {
    self->_zoomButtonsButtonPlacement = placement;
    [(PXCuratedLibraryStyleGuide *)self signalChange:64];
  }
}

- (void)setToggleAspectFitButtonPlacement:(int64_t)placement
{
  if (self->_toggleAspectFitButtonPlacement != placement)
  {
    self->_toggleAspectFitButtonPlacement = placement;
    [(PXCuratedLibraryStyleGuide *)self signalChange:32];
  }
}

- (void)setSecondaryToolbarSize:(CGSize)size
{
  if (size.width != self->_secondaryToolbarSize.width || size.height != self->_secondaryToolbarSize.height)
  {
    self->_secondaryToolbarSize = size;
    [(PXCuratedLibraryStyleGuide *)self signalChange:8];
  }
}

- (void)setSecondaryToolbarPlacement:(int64_t)placement
{
  if (self->_secondaryToolbarPlacement != placement)
  {
    self->_secondaryToolbarPlacement = placement;
    [(PXCuratedLibraryStyleGuide *)self signalChange:4];
  }
}

- (void)setButtonStyle:(int64_t)style
{
  if (self->_buttonStyle != style)
  {
    self->_buttonStyle = style;
    [(PXCuratedLibraryStyleGuide *)self signalChange:2];
  }
}

- (void)setLateralMargin:(double)margin
{
  if (self->_lateralMargin != margin)
  {
    self->_lateralMargin = margin;
    [(PXCuratedLibraryStyleGuide *)self signalChange:1];
  }
}

- (id)zoomLevelControlTextColorOverLegibilityGradient:(BOOL)gradient
{
  if (gradient)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v3 = ;

  return v3;
}

- (PXCuratedLibraryStyleGuide)initWithExtendedTraitCollection:(id)collection secondaryToolbarStyle:(unint64_t)style
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryStyleGuide;
  v8 = [(PXCuratedLibraryStyleGuide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extendedTraitCollection, collection);
    v9->_secondaryToolbarStyle = style;
    [(PXExtendedTraitCollection *)v9->_extendedTraitCollection registerChangeObserver:v9 context:PXExtendedTraitCollectionObservationContext_16244];
    [(PXCuratedLibraryStyleGuide *)v9 _update];
  }

  return v9;
}

- (PXCuratedLibraryStyleGuide)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryStyleGuide.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXCuratedLibraryStyleGuide init]"}];

  abort();
}

@end