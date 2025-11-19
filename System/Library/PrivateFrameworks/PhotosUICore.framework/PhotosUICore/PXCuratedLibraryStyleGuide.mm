@interface PXCuratedLibraryStyleGuide
- (CGSize)secondaryToolbarSize;
- (PXCuratedLibraryStyleGuide)init;
- (PXCuratedLibraryStyleGuide)initWithExtendedTraitCollection:(id)a3 secondaryToolbarStyle:(unint64_t)a4;
- (UIEdgeInsets)secondaryToolbarContentInsets;
- (UIEdgeInsets)secondaryToolbarPadding;
- (id)zoomLevelControlTextColorOverLegibilityGradient:(BOOL)a3;
- (void)_update;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setButtonStyle:(int64_t)a3;
- (void)setLateralMargin:(double)a3;
- (void)setSecondaryToolbarPlacement:(int64_t)a3;
- (void)setSecondaryToolbarSize:(CGSize)a3;
- (void)setToggleAspectFitButtonPlacement:(int64_t)a3;
- (void)setZoomButtonsButtonPlacement:(int64_t)a3;
@end

@implementation PXCuratedLibraryStyleGuide

- (void)_update
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = [off_1E7721810 sharedInstance];
  v5 = [(PXCuratedLibraryStyleGuide *)self extendedTraitCollection];
  v6 = [v5 layoutSizeClass];
  v7 = [v5 userInterfaceIdiom];
  if ([v4 enableAspectFitButton])
  {
    v8 = v7 == 4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v6 >= 2)
  {
    [v5 layoutOrientation];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 enableZoomInOutButton] ^ 1;
  if (v7 == 4)
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

  if ((v11 & 1) == 0 && v6 >= 2)
  {
    if ([v5 layoutOrientation] == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  v13 = +[PXCuratedLibrarySettings sharedInstance];
  v14 = [v13 enableTabBarAccessoryControls];

  if (v7 == 4)
  {
    v15 = 0;
    goto LABEL_35;
  }

  if (v6 == 2)
  {
    if ([v3 alwaysShowSecondaryToolbarAtBottom])
    {
      goto LABEL_32;
    }

    if (v7 == 2)
    {
      v15 = 2;
      goto LABEL_35;
    }

    if ([(PXCuratedLibraryStyleGuide *)self secondaryToolbarStyle]== 1)
    {
      goto LABEL_32;
    }

    if (v14)
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
    if ([v5 layoutOrientation] == 2 || -[PXCuratedLibraryStyleGuide secondaryToolbarStyle](self, "secondaryToolbarStyle") == 1)
    {
LABEL_32:
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }
  }

LABEL_35:
  v16 = [[off_1E7721560 alloc] initWithExtendedTraitCollection:v5];
  [v16 contentGuideInsetsForScrollAxis:1];
  v39 = v17;
  v19 = v18;
  v20 = [v5 curatedLibraryLayoutStyle];
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
  if (v20 == 1)
  {
    v28 = [v5 layoutSizeClass];
    [v5 safeAreaInsets];
    [PXPhotosChromeSpec secondaryToolbarPaddingForSizeClass:v28 safeAreaInsets:?];
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

  v37 = [v5 userInterfaceIdiom];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __37__PXCuratedLibraryStyleGuide__update__block_invoke;
  v40[3] = &unk_1E772EC20;
  v42 = (v39 + v19) * 0.5;
  v43 = v15;
  v44 = v24;
  v45 = v23;
  v40[4] = self;
  v41 = v5;
  v46 = v10;
  v47 = v12;
  v53 = v37 == 5;
  v48 = v30;
  v49 = v32;
  v50 = v34;
  v51 = v36;
  v52 = v27;
  v38 = v5;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXExtendedTraitCollectionObservationContext_16244 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryStyleGuide.m" lineNumber:264 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x14A) != 0)
  {
    v11 = v9;
    [(PXCuratedLibraryStyleGuide *)self _invalidate];
    v9 = v11;
  }
}

- (void)setZoomButtonsButtonPlacement:(int64_t)a3
{
  if (self->_zoomButtonsButtonPlacement != a3)
  {
    self->_zoomButtonsButtonPlacement = a3;
    [(PXCuratedLibraryStyleGuide *)self signalChange:64];
  }
}

- (void)setToggleAspectFitButtonPlacement:(int64_t)a3
{
  if (self->_toggleAspectFitButtonPlacement != a3)
  {
    self->_toggleAspectFitButtonPlacement = a3;
    [(PXCuratedLibraryStyleGuide *)self signalChange:32];
  }
}

- (void)setSecondaryToolbarSize:(CGSize)a3
{
  if (a3.width != self->_secondaryToolbarSize.width || a3.height != self->_secondaryToolbarSize.height)
  {
    self->_secondaryToolbarSize = a3;
    [(PXCuratedLibraryStyleGuide *)self signalChange:8];
  }
}

- (void)setSecondaryToolbarPlacement:(int64_t)a3
{
  if (self->_secondaryToolbarPlacement != a3)
  {
    self->_secondaryToolbarPlacement = a3;
    [(PXCuratedLibraryStyleGuide *)self signalChange:4];
  }
}

- (void)setButtonStyle:(int64_t)a3
{
  if (self->_buttonStyle != a3)
  {
    self->_buttonStyle = a3;
    [(PXCuratedLibraryStyleGuide *)self signalChange:2];
  }
}

- (void)setLateralMargin:(double)a3
{
  if (self->_lateralMargin != a3)
  {
    self->_lateralMargin = a3;
    [(PXCuratedLibraryStyleGuide *)self signalChange:1];
  }
}

- (id)zoomLevelControlTextColorOverLegibilityGradient:(BOOL)a3
{
  if (a3)
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

- (PXCuratedLibraryStyleGuide)initWithExtendedTraitCollection:(id)a3 secondaryToolbarStyle:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryStyleGuide;
  v8 = [(PXCuratedLibraryStyleGuide *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extendedTraitCollection, a3);
    v9->_secondaryToolbarStyle = a4;
    [(PXExtendedTraitCollection *)v9->_extendedTraitCollection registerChangeObserver:v9 context:PXExtendedTraitCollectionObservationContext_16244];
    [(PXCuratedLibraryStyleGuide *)v9 _update];
  }

  return v9;
}

- (PXCuratedLibraryStyleGuide)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryStyleGuide.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXCuratedLibraryStyleGuide init]"}];

  abort();
}

@end