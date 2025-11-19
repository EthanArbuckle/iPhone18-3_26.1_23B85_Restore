@interface PUOneUpViewControllerSpec
- (BOOL)shouldShowCropButton;
- (CGSize)assetExplorerReviewScreenProgressIndicatorSize;
- (CGSize)bufferingIndicatorSize;
- (CGSize)peopleRowSize;
- (CGSize)playButtonSize;
- (CGSize)progressIndicatorSize;
- (CGSize)renderIndicatorSize;
- (PUOneUpViewControllerSpec)initWithOptions:(unint64_t)a3;
- (PUOneUpViewControllerSpecChange)currentChange;
- (UIEdgeInsets)progressIndicatorContentInsets;
- (void)_setBackgroundColorOverride:(id)a3;
- (void)_setBufferingIndicatorSize:(CGSize)a3;
- (void)_setCanDisplayLoadingIndicators:(BOOL)a3;
- (void)_setHideBadgesWhenShowingAccessoryView:(BOOL)a3;
- (void)_setHideStatusBarWhenShowingAccessoryView:(BOOL)a3;
- (void)_setPeopleRowSize:(CGSize)a3;
- (void)_setPrefersSquareImageInDetails:(BOOL)a3;
- (void)_setProgressIndicatorContentInsets:(UIEdgeInsets)a3;
- (void)_setProgressIndicatorSize:(CGSize)a3;
- (void)_setRenderIndicatorSize:(CGSize)a3;
- (void)_setShouldAutoplayOnAppear:(BOOL)a3;
- (void)_setShouldCounterrotateReviewScreenBars:(BOOL)a3;
- (void)_setShouldDisplayAssetExplorerReviewScreenBadges:(BOOL)a3;
- (void)_setShouldDisplayBadges:(BOOL)a3;
- (void)_setShouldDisplayBufferingIndicators:(BOOL)a3;
- (void)_setShouldDisplayEmptyPlaceholder:(BOOL)a3;
- (void)_setShouldDisplayPeopleRow:(BOOL)a3;
- (void)_setShouldDisplayPlayButtons:(BOOL)a3;
- (void)_setShouldDisplayProgressIndicators:(BOOL)a3;
- (void)_setShouldLayoutReviewScreenControlBarVertically:(BOOL)a3;
- (void)_setShouldPinContentToTop:(BOOL)a3;
- (void)_setShouldPlaceButtonsInNavigationBar:(BOOL)a3;
- (void)_setShouldUseCompactCommentsTitle:(BOOL)a3;
- (void)_setShouldUseCompactTitleView:(BOOL)a3;
- (void)_setShouldUseContentGuideInsets:(BOOL)a3;
- (void)_setShouldUseUserTransformTiles:(BOOL)a3;
- (void)_setTileInitialContentMode:(int64_t)a3;
- (void)setChromeVisible:(BOOL)a3;
- (void)setContentLocked:(BOOL)a3;
- (void)setHideNavigationBarWhenShowingAccessoryView:(BOOL)a3;
- (void)setHideScrubberWhenShowingAccessoryView:(BOOL)a3;
- (void)setPresentedForPreview:(BOOL)a3;
- (void)setShouldDisplayPeopleRow:(BOOL)a3;
- (void)setShouldDisplaySyndicationAttribution:(BOOL)a3;
- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)a3;
- (void)setShowingPlayPauseButtonInBars:(BOOL)a3;
- (void)updateIfNeeded;
@end

@implementation PUOneUpViewControllerSpec

- (CGSize)renderIndicatorSize
{
  width = self->_renderIndicatorSize.width;
  height = self->_renderIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)bufferingIndicatorSize
{
  width = self->_bufferingIndicatorSize.width;
  height = self->_bufferingIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)progressIndicatorContentInsets
{
  top = self->_progressIndicatorContentInsets.top;
  left = self->_progressIndicatorContentInsets.left;
  bottom = self->_progressIndicatorContentInsets.bottom;
  right = self->_progressIndicatorContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)peopleRowSize
{
  width = self->_peopleRowSize.width;
  height = self->_peopleRowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)progressIndicatorSize
{
  width = self->_progressIndicatorSize.width;
  height = self->_progressIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_setHideBadgesWhenShowingAccessoryView:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideBadgesWhenShowingAccessoryView != v3)
  {
    self->_hideBadgesWhenShowingAccessoryView = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setHideBadgesWhenShowingAccessoryView:1];
  }
}

- (void)_setHideStatusBarWhenShowingAccessoryView:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideStatusBarWhenShowingAccessoryView != v3)
  {
    self->_hideStatusBarWhenShowingAccessoryView = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setHideStatusBarWhenShowingAccessoryView:1];
  }
}

- (void)_setPrefersSquareImageInDetails:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_prefersSquareImageInDetails != v3)
  {
    self->_prefersSquareImageInDetails = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setPrefersSquareImageInDetails:1];
  }
}

- (void)setHideScrubberWhenShowingAccessoryView:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideScrubberWhenShowingAccessoryView != v3)
  {
    self->_hideScrubberWhenShowingAccessoryView = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setHideScrubberWhenShowingAccessoryView:1];
  }
}

- (void)setHideNavigationBarWhenShowingAccessoryView:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideNavigationBarWhenShowingAccessoryView != v3)
  {
    self->_hideNavigationBarWhenShowingAccessoryView = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setHideNavigationBarWhenShowingAccessoryView:1];
  }
}

- (void)setShouldDisplaySyndicationAttribution:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplaySyndicationAttribution != v3)
  {
    self->_shouldDisplaySyndicationAttribution = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplaySyndicationAttribution:1];
  }
}

- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldPlaceScrubberInScrubberBar != v3)
  {
    self->_shouldPlaceScrubberInScrubberBar = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldPlaceScrubberInScrubberBarChanged:1];
  }
}

- (void)_setShouldLayoutReviewScreenControlBarVertically:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldLayoutReviewScreenControlBarVertically != v3)
  {
    self->_shouldLayoutReviewScreenControlBarVertically = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldLayoutReviewScreenControlBarVerticallyChanged:1];
  }
}

- (void)_setShouldPinContentToTop:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldPinContentToTop != v3)
  {
    self->_shouldPinContentToTop = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldPinContentToTopChanged:1];
  }
}

- (void)_setShouldCounterrotateReviewScreenBars:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldCounterrotateReviewScreenBars != v3)
  {
    self->_shouldCounterrotateReviewScreenBars = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldCounterrotateReviewScreenBarsChanged:1];
  }
}

- (void)_setTileInitialContentMode:(int64_t)a3
{
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_tileInitialContentMode != a3)
  {
    self->_tileInitialContentMode = a3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setTileInitialContentModeChanged:1];
  }
}

- (void)_setShouldUseCompactCommentsTitle:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseCompactCommentsTitle != v3)
  {
    self->_shouldUseCompactCommentsTitle = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldUseCompactCommentsTitleChanged:1];
  }
}

- (void)_setBufferingIndicatorSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_bufferingIndicatorSize.width || height != self->_bufferingIndicatorSize.height)
  {
    self->_bufferingIndicatorSize.width = width;
    self->_bufferingIndicatorSize.height = height;
    v7 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v7 _setBufferingIndicatorSizeChanged:1];
  }
}

- (void)_setRenderIndicatorSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_renderIndicatorSize.width || height != self->_renderIndicatorSize.height)
  {
    self->_renderIndicatorSize.width = width;
    self->_renderIndicatorSize.height = height;
    v7 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v7 _setRenderIndicatorSizeChanged:1];
  }
}

- (void)_setProgressIndicatorContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  v4.f64[0] = top;
  v4.f64[1] = left;
  v5.f64[0] = bottom;
  v5.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_progressIndicatorContentInsets.top), vceqq_f64(v5, *&self->_progressIndicatorContentInsets.bottom)))) & 1) == 0)
  {
    self->_progressIndicatorContentInsets.top = top;
    self->_progressIndicatorContentInsets.left = left;
    self->_progressIndicatorContentInsets.bottom = bottom;
    self->_progressIndicatorContentInsets.right = right;
    v10 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v10 _setProgressIndicatorContentInsetsChanged:1];
  }
}

- (void)_setPeopleRowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_peopleRowSize.width || height != self->_peopleRowSize.height)
  {
    self->_peopleRowSize.width = width;
    self->_peopleRowSize.height = height;
    v7 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v7 _setPeopleRowSizeChanged:1];
  }
}

- (void)_setProgressIndicatorSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_progressIndicatorSize.width || height != self->_progressIndicatorSize.height)
  {
    self->_progressIndicatorSize.width = width;
    self->_progressIndicatorSize.height = height;
    v7 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v7 _setProgressIndicatorSizeChanged:1];
  }
}

- (void)_setBackgroundColorOverride:(id)a3
{
  v8 = a3;
  v5 = [(PUViewControllerSpec *)self assertInsideChangesBlock];
  v6 = v8;
  if (self->_backgroundColorOverride != v8)
  {
    v5 = [(UIColor *)v8 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColorOverride, a3);
      v7 = [(PUOneUpViewControllerSpec *)self currentChange];
      [v7 _setBackgroundColorOverrideChanged:1];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_setShouldDisplayEmptyPlaceholder:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayEmptyPlaceholder != v3)
  {
    self->_shouldDisplayEmptyPlaceholder = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayEmptyPlaceholderChanged:1];
  }
}

- (void)_setCanDisplayLoadingIndicators:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_canDisplayLoadingIndicators != v3)
  {
    self->_canDisplayLoadingIndicators = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setCanDisplayLoadingIndicatorsChanged:1];
  }
}

- (void)_setShouldDisplayBufferingIndicators:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayBufferingIndicators != v3)
  {
    self->_shouldDisplayBufferingIndicators = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayBufferingIndicatorsChanged:1];
  }
}

- (void)_setShouldDisplayPeopleRow:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayPeopleRow != v3)
  {
    self->_shouldDisplayPeopleRow = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayPeopleRowChanged:1];
  }
}

- (void)_setShouldDisplayProgressIndicators:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayProgressIndicators != v3)
  {
    self->_shouldDisplayProgressIndicators = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayProgressIndicatorsChanged:1];
  }
}

- (void)_setShouldDisplayPlayButtons:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayPlayButtons != v3)
  {
    self->_shouldDisplayPlayButtons = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayPlayButtonsChanged:1];
  }
}

- (void)_setShouldDisplayAssetExplorerReviewScreenBadges:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayAssetExplorerReviewScreenBadges != v3)
  {
    self->_shouldDisplayAssetExplorerReviewScreenBadges = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayAssetExplorerReviewScreenBadgesChanged:1];
  }
}

- (void)_setShouldDisplayBadges:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayBadges != v3)
  {
    self->_shouldDisplayBadges = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayBadgesChanged:1];
  }
}

- (void)_setShouldAutoplayOnAppear:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldAutoplayOnAppear != v3)
  {
    self->_shouldAutoplayOnAppear = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldAutoplayOnAppearChanged:1];
  }
}

- (void)_setShouldUseUserTransformTiles:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseUserTransformTiles != v3)
  {
    self->_shouldUseUserTransformTiles = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldUseUserTransformTilesChanged:1];
  }
}

- (void)_setShouldUseContentGuideInsets:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseContentGuideInsets != v3)
  {
    self->_shouldUseContentGuideInsets = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldUseContentGuideInsetsChanged:1];
  }
}

- (void)_setShouldUseCompactTitleView:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseCompactTitleView != v3)
  {
    self->_shouldUseCompactTitleView = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldUseCompactTitleViewChanged:1];
  }
}

- (void)_setShouldPlaceButtonsInNavigationBar:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldPlaceButtonsInNavigationBar != v3)
  {
    self->_shouldPlaceButtonsInNavigationBar = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldPlaceButtonsInNavigationBarChanged:1];
  }
}

- (CGSize)playButtonSize
{
  +[PUPlayButtonTileViewController playButtonTileSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateIfNeeded
{
  v88.receiver = self;
  v88.super_class = PUOneUpViewControllerSpec;
  [(PUViewControllerSpec *)&v88 updateIfNeeded];
  if (![(PUViewControllerSpec *)self currentLayoutStyle])
  {
    return;
  }

  [(PUViewControllerSpec *)self layoutReferenceSize];
  v4 = v3;
  v6 = v5;
  v7 = [(PUViewControllerSpec *)self currentLayoutStyle];
  if (v4 <= v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ![(PUOneUpViewControllerSpec *)self isPresentedForPreview];
  }

  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = PURectWithAspectRatioFittingRect(0.75, *MEMORY[0x1E695EFF8], v10, v4, v6);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v89.origin.x = v9;
  v89.origin.y = v10;
  v89.size.width = v4;
  v89.size.height = v6;
  MaxY = CGRectGetMaxY(v89);
  v90.origin.x = v11;
  v90.origin.y = v13;
  v90.size.width = v15;
  v90.size.height = v17;
  v19 = round(MaxY - CGRectGetMaxY(v90));
  if (v19 < 84.0)
  {
    v19 = 84.0;
  }

  v83 = v19;
  if ((v7 - 1) >= 3)
  {
    v20 = 2;
    if (v7 != 4)
    {
      v20 = 0;
    }

    v79 = v20;
    v8 = 0;
    v80 = v7 == 4;
  }

  else
  {
    v79 = 1;
    v80 = v8;
  }

  v84 = v8;
  v81 = v7;
  if ([(PUOneUpViewControllerSpec *)self shouldDisplayReviewScreenBars])
  {
    v21 = PUReviewScreenSizeClassForReferenceSize(v4, v6);
    LODWORD(v85) = v21 != 7;
    HIDWORD(v85) = v21 == 7;
  }

  else
  {
    v85 = 0;
  }

  v22 = [(PUOneUpViewControllerSpec *)self isPresentedForPreview];
  v23 = [(PUOneUpViewControllerSpec *)self isChromeVisible];
  v24 = [(PUViewControllerSpec *)self isPresentedForSecondScreen];
  v25 = [(PUOneUpViewControllerSpec *)self _isAssetExplorerReviewScreen];
  v26 = [(PUOneUpViewControllerSpec *)self isShowingPlayPauseButtonInBars];
  v75 = [(PUOneUpViewControllerSpec *)self isContentLocked];
  v27 = !v22 && v23;
  v28 = +[PUOneUpSettings sharedInstance];
  v29 = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
  v86 = v28;
  if (v24)
  {
    v78 = 0;
    v74 = 0;
    v77 = !v25;
    v30 = 1;
  }

  else
  {
    v78 = [v28 allowUserTransform];
    v31 = v28;
    v32 = v29 | v27 ^ 1;
    if ((v32 | v25))
    {
      HIDWORD(v77) = 0;
    }

    else
    {
      HIDWORD(v77) = [v31 allowBadges];
    }

    if ((v32 | !v25))
    {
      LODWORD(v77) = !v25;
      v74 = 0;
      v30 = v22;
      v28 = v86;
    }

    else
    {
      options = self->_options;
      v28 = v86;
      v34 = [v86 allowBadges];
      LODWORD(v77) = 0;
      if ((options & 0x80000) != 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      v74 = v35;
      v30 = v22;
    }
  }

  v36 = !v22 && !v24;
  v37 = v29 | v30;
  v87 = v27;
  if ([v28 allowPlayButtonInBars])
  {
    v38 = v37 | v26 & v27;
  }

  else
  {
    v38 = v37;
  }

  v71 = [(PUOneUpViewControllerSpec *)self shouldDisplayPeopleRow];
  v39 = [(PUViewControllerSpec *)self traitCollection];
  [PUPeopleTileViewController tileSizeForTraitCollection:v39];
  v72 = v41;
  v73 = v40;

  [v28 minimumFullCommentTitleViewWidth];
  v43 = v42;
  if (!v22 || v75)
  {
    v44 = 0;
  }

  else
  {
    v44 = [(PUOneUpViewControllerSpec *)self _shouldDisableAutoPlayback]^ 1;
  }

  v76 = v81 == 4;
  if ([(PUOneUpViewControllerSpec *)self _shouldForceBlackBackground])
  {
    v45 = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    if (![(PUOneUpViewControllerSpec *)self shouldUseSpotlightStyling])
    {
      v46 = 0;
      goto LABEL_38;
    }

    v45 = [(PUOneUpViewControllerSpec *)self spotlightBackgroundColor];
  }

  v46 = v45;
LABEL_38:
  v47 = v81 != 4;
  v82 = v4 < v43;
  [PUProgressIndicatorTileViewController progressIndicatorTileSizeForSizeClass:v79];
  v49 = v48;
  v51 = v50;
  [PUProgressIndicatorTileViewController progressIndicatorIconInsetsForSizeClass:v79];
  v69 = v53;
  v70 = v52;
  v55 = v54;
  v57 = v56;
  +[PUBufferingIndicatorTileViewController bufferingIndicatorTileSize];
  v59 = v58;
  v61 = v60;
  [PURenderIndicatorTileViewController renderIndicatorTileSizeForSizeClass:v79];
  v63 = v62;
  v65 = v64;
  v66 = v22;
  v67 = 2;
  if (!v22)
  {
    v67 = 0;
  }

  if (v24)
  {
    v68 = 1;
  }

  else
  {
    v68 = v67;
  }

  [(PUOneUpViewControllerSpec *)self _setShouldAutoplayOnAppear:v44];
  [(PUOneUpViewControllerSpec *)self _setShouldPlaceButtonsInNavigationBar:v80];
  [(PUOneUpViewControllerSpec *)self _setShouldUseCompactTitleView:v84];
  [(PUOneUpViewControllerSpec *)self _setMaximumToolbarHeight:v83];
  [(PUOneUpViewControllerSpec *)self _setMaximumAccessoryToolbarHeight:44.0];
  [(PUOneUpViewControllerSpec *)self _setShouldUseContentGuideInsets:v87 & v36 & 1];
  [(PUOneUpViewControllerSpec *)self _setShouldUseUserTransformTiles:v78];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayBadges:HIDWORD(v77)];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayAssetExplorerReviewScreenBadges:v74];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayPlayButtons:(v38 ^ 1) & 1];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayProgressIndicators:v77];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayPeopleRow:v71];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayBufferingIndicators:1];
  [(PUOneUpViewControllerSpec *)self _setCanDisplayLoadingIndicators:!v24];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayEmptyPlaceholder:!v24];
  [(PUOneUpViewControllerSpec *)self _setBackgroundColorOverride:v46];
  [(PUOneUpViewControllerSpec *)self _setProgressIndicatorSize:v49, v51];
  [(PUOneUpViewControllerSpec *)self _setPeopleRowSize:v73, v72];
  [(PUOneUpViewControllerSpec *)self _setProgressIndicatorContentInsets:v70, v69, v55, v57];
  [(PUOneUpViewControllerSpec *)self _setBufferingIndicatorSize:v59, v61];
  [(PUOneUpViewControllerSpec *)self _setRenderIndicatorSize:v63, v65];
  [(PUOneUpViewControllerSpec *)self _setShouldUseCompactCommentsTitle:v82];
  [(PUOneUpViewControllerSpec *)self _setTileInitialContentMode:v68];
  [(PUOneUpViewControllerSpec *)self _setShouldCounterrotateReviewScreenBars:v85];
  [(PUOneUpViewControllerSpec *)self _setShouldPinContentToTop:v66];
  [(PUOneUpViewControllerSpec *)self _setShouldLayoutReviewScreenControlBarVertically:HIDWORD(v85)];
  [(PUOneUpViewControllerSpec *)self _setShouldPlaceScrubberInScrubberBar:HIDWORD(v85)];
  [(PUOneUpViewControllerSpec *)self setShouldDisplaySyndicationAttribution:v87 & 1];
  [(PUOneUpViewControllerSpec *)self setPrefersFloatingInfoPanel:v76];
  [(PUOneUpViewControllerSpec *)self setHideNavigationBarWhenShowingAccessoryView:v47];
  [(PUOneUpViewControllerSpec *)self setHideScrubberWhenShowingAccessoryView:v47];
  [(PUOneUpViewControllerSpec *)self setPrefersSquareImageInDetails:v47];
  [(PUOneUpViewControllerSpec *)self setHideStatusBarWhenShowingAccessoryView:v47];
  [(PUOneUpViewControllerSpec *)self setHideBadgesWhenShowingAccessoryView:v47];
}

- (void)setShouldDisplayPeopleRow:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayPeopleRow != v3)
  {
    self->_shouldDisplayPeopleRow = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setShouldDisplayPeopleRowChanged:1];
  }
}

- (void)setContentLocked:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isContentLocked != v3)
  {
    self->_isContentLocked = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setContentLockingChanged:1];
  }
}

- (void)setShowingPlayPauseButtonInBars:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isShowingPlayPauseButtonInBars != v3)
  {
    self->_isShowingPlayPauseButtonInBars = v3;
  }
}

- (void)setPresentedForPreview:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isPresentedForPreview != v3)
  {
    self->_isPresentedForPreview = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setPresentedForPreviewChanged:1];
  }
}

- (void)setChromeVisible:(BOOL)a3
{
  v3 = a3;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isChromeVisible != v3)
  {
    self->_isChromeVisible = v3;
    v5 = [(PUOneUpViewControllerSpec *)self currentChange];
    [v5 _setChromeVisibilityChanged:1];
  }
}

- (BOOL)shouldShowCropButton
{
  if ((PFIsCamera() & 1) != 0 || (v3 = PFIsiOSPhotosApp()) != 0)
  {
    if ([(PUOneUpViewControllerSpec *)self isPresentedForPreview])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PUViewControllerSpec *)self isPresentedForSecondScreen];
    }
  }

  return v3;
}

- (CGSize)assetExplorerReviewScreenProgressIndicatorSize
{
  +[PUAssetExplorerReviewScreenProgressIndicatorTileViewController progressIndicatorTileSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUOneUpViewControllerSpecChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUOneUpViewControllerSpec;
  v2 = [(PUViewControllerSpec *)&v4 currentChange];

  return v2;
}

- (PUOneUpViewControllerSpec)initWithOptions:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PUOneUpViewControllerSpec;
  v4 = [(PUViewControllerSpec *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = a3;
    v6 = v4;
  }

  return v5;
}

@end