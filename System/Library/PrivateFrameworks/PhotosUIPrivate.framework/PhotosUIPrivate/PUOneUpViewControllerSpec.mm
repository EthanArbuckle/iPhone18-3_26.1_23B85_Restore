@interface PUOneUpViewControllerSpec
- (BOOL)shouldShowCropButton;
- (CGSize)assetExplorerReviewScreenProgressIndicatorSize;
- (CGSize)bufferingIndicatorSize;
- (CGSize)peopleRowSize;
- (CGSize)playButtonSize;
- (CGSize)progressIndicatorSize;
- (CGSize)renderIndicatorSize;
- (PUOneUpViewControllerSpec)initWithOptions:(unint64_t)options;
- (PUOneUpViewControllerSpecChange)currentChange;
- (UIEdgeInsets)progressIndicatorContentInsets;
- (void)_setBackgroundColorOverride:(id)override;
- (void)_setBufferingIndicatorSize:(CGSize)size;
- (void)_setCanDisplayLoadingIndicators:(BOOL)indicators;
- (void)_setHideBadgesWhenShowingAccessoryView:(BOOL)view;
- (void)_setHideStatusBarWhenShowingAccessoryView:(BOOL)view;
- (void)_setPeopleRowSize:(CGSize)size;
- (void)_setPrefersSquareImageInDetails:(BOOL)details;
- (void)_setProgressIndicatorContentInsets:(UIEdgeInsets)insets;
- (void)_setProgressIndicatorSize:(CGSize)size;
- (void)_setRenderIndicatorSize:(CGSize)size;
- (void)_setShouldAutoplayOnAppear:(BOOL)appear;
- (void)_setShouldCounterrotateReviewScreenBars:(BOOL)bars;
- (void)_setShouldDisplayAssetExplorerReviewScreenBadges:(BOOL)badges;
- (void)_setShouldDisplayBadges:(BOOL)badges;
- (void)_setShouldDisplayBufferingIndicators:(BOOL)indicators;
- (void)_setShouldDisplayEmptyPlaceholder:(BOOL)placeholder;
- (void)_setShouldDisplayPeopleRow:(BOOL)row;
- (void)_setShouldDisplayPlayButtons:(BOOL)buttons;
- (void)_setShouldDisplayProgressIndicators:(BOOL)indicators;
- (void)_setShouldLayoutReviewScreenControlBarVertically:(BOOL)vertically;
- (void)_setShouldPinContentToTop:(BOOL)top;
- (void)_setShouldPlaceButtonsInNavigationBar:(BOOL)bar;
- (void)_setShouldUseCompactCommentsTitle:(BOOL)title;
- (void)_setShouldUseCompactTitleView:(BOOL)view;
- (void)_setShouldUseContentGuideInsets:(BOOL)insets;
- (void)_setShouldUseUserTransformTiles:(BOOL)tiles;
- (void)_setTileInitialContentMode:(int64_t)mode;
- (void)setChromeVisible:(BOOL)visible;
- (void)setContentLocked:(BOOL)locked;
- (void)setHideNavigationBarWhenShowingAccessoryView:(BOOL)view;
- (void)setHideScrubberWhenShowingAccessoryView:(BOOL)view;
- (void)setPresentedForPreview:(BOOL)preview;
- (void)setShouldDisplayPeopleRow:(BOOL)row;
- (void)setShouldDisplaySyndicationAttribution:(BOOL)attribution;
- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)bar;
- (void)setShowingPlayPauseButtonInBars:(BOOL)bars;
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

- (void)_setHideBadgesWhenShowingAccessoryView:(BOOL)view
{
  viewCopy = view;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideBadgesWhenShowingAccessoryView != viewCopy)
  {
    self->_hideBadgesWhenShowingAccessoryView = viewCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setHideBadgesWhenShowingAccessoryView:1];
  }
}

- (void)_setHideStatusBarWhenShowingAccessoryView:(BOOL)view
{
  viewCopy = view;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideStatusBarWhenShowingAccessoryView != viewCopy)
  {
    self->_hideStatusBarWhenShowingAccessoryView = viewCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setHideStatusBarWhenShowingAccessoryView:1];
  }
}

- (void)_setPrefersSquareImageInDetails:(BOOL)details
{
  detailsCopy = details;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_prefersSquareImageInDetails != detailsCopy)
  {
    self->_prefersSquareImageInDetails = detailsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setPrefersSquareImageInDetails:1];
  }
}

- (void)setHideScrubberWhenShowingAccessoryView:(BOOL)view
{
  viewCopy = view;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideScrubberWhenShowingAccessoryView != viewCopy)
  {
    self->_hideScrubberWhenShowingAccessoryView = viewCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setHideScrubberWhenShowingAccessoryView:1];
  }
}

- (void)setHideNavigationBarWhenShowingAccessoryView:(BOOL)view
{
  viewCopy = view;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_hideNavigationBarWhenShowingAccessoryView != viewCopy)
  {
    self->_hideNavigationBarWhenShowingAccessoryView = viewCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setHideNavigationBarWhenShowingAccessoryView:1];
  }
}

- (void)setShouldDisplaySyndicationAttribution:(BOOL)attribution
{
  attributionCopy = attribution;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplaySyndicationAttribution != attributionCopy)
  {
    self->_shouldDisplaySyndicationAttribution = attributionCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplaySyndicationAttribution:1];
  }
}

- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)bar
{
  barCopy = bar;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldPlaceScrubberInScrubberBar != barCopy)
  {
    self->_shouldPlaceScrubberInScrubberBar = barCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldPlaceScrubberInScrubberBarChanged:1];
  }
}

- (void)_setShouldLayoutReviewScreenControlBarVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldLayoutReviewScreenControlBarVertically != verticallyCopy)
  {
    self->_shouldLayoutReviewScreenControlBarVertically = verticallyCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldLayoutReviewScreenControlBarVerticallyChanged:1];
  }
}

- (void)_setShouldPinContentToTop:(BOOL)top
{
  topCopy = top;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldPinContentToTop != topCopy)
  {
    self->_shouldPinContentToTop = topCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldPinContentToTopChanged:1];
  }
}

- (void)_setShouldCounterrotateReviewScreenBars:(BOOL)bars
{
  barsCopy = bars;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldCounterrotateReviewScreenBars != barsCopy)
  {
    self->_shouldCounterrotateReviewScreenBars = barsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldCounterrotateReviewScreenBarsChanged:1];
  }
}

- (void)_setTileInitialContentMode:(int64_t)mode
{
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_tileInitialContentMode != mode)
  {
    self->_tileInitialContentMode = mode;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setTileInitialContentModeChanged:1];
  }
}

- (void)_setShouldUseCompactCommentsTitle:(BOOL)title
{
  titleCopy = title;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseCompactCommentsTitle != titleCopy)
  {
    self->_shouldUseCompactCommentsTitle = titleCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldUseCompactCommentsTitleChanged:1];
  }
}

- (void)_setBufferingIndicatorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_bufferingIndicatorSize.width || height != self->_bufferingIndicatorSize.height)
  {
    self->_bufferingIndicatorSize.width = width;
    self->_bufferingIndicatorSize.height = height;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setBufferingIndicatorSizeChanged:1];
  }
}

- (void)_setRenderIndicatorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_renderIndicatorSize.width || height != self->_renderIndicatorSize.height)
  {
    self->_renderIndicatorSize.width = width;
    self->_renderIndicatorSize.height = height;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setRenderIndicatorSizeChanged:1];
  }
}

- (void)_setProgressIndicatorContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  bottom = insets.bottom;
  top = insets.top;
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
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setProgressIndicatorContentInsetsChanged:1];
  }
}

- (void)_setPeopleRowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_peopleRowSize.width || height != self->_peopleRowSize.height)
  {
    self->_peopleRowSize.width = width;
    self->_peopleRowSize.height = height;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setPeopleRowSizeChanged:1];
  }
}

- (void)_setProgressIndicatorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (width != self->_progressIndicatorSize.width || height != self->_progressIndicatorSize.height)
  {
    self->_progressIndicatorSize.width = width;
    self->_progressIndicatorSize.height = height;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setProgressIndicatorSizeChanged:1];
  }
}

- (void)_setBackgroundColorOverride:(id)override
{
  overrideCopy = override;
  assertInsideChangesBlock = [(PUViewControllerSpec *)self assertInsideChangesBlock];
  v6 = overrideCopy;
  if (self->_backgroundColorOverride != overrideCopy)
  {
    assertInsideChangesBlock = [(UIColor *)overrideCopy isEqual:?];
    v6 = overrideCopy;
    if ((assertInsideChangesBlock & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColorOverride, override);
      currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
      [currentChange _setBackgroundColorOverrideChanged:1];

      v6 = overrideCopy;
    }
  }

  MEMORY[0x1EEE66BB8](assertInsideChangesBlock, v6);
}

- (void)_setShouldDisplayEmptyPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayEmptyPlaceholder != placeholderCopy)
  {
    self->_shouldDisplayEmptyPlaceholder = placeholderCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayEmptyPlaceholderChanged:1];
  }
}

- (void)_setCanDisplayLoadingIndicators:(BOOL)indicators
{
  indicatorsCopy = indicators;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_canDisplayLoadingIndicators != indicatorsCopy)
  {
    self->_canDisplayLoadingIndicators = indicatorsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setCanDisplayLoadingIndicatorsChanged:1];
  }
}

- (void)_setShouldDisplayBufferingIndicators:(BOOL)indicators
{
  indicatorsCopy = indicators;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayBufferingIndicators != indicatorsCopy)
  {
    self->_shouldDisplayBufferingIndicators = indicatorsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayBufferingIndicatorsChanged:1];
  }
}

- (void)_setShouldDisplayPeopleRow:(BOOL)row
{
  rowCopy = row;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayPeopleRow != rowCopy)
  {
    self->_shouldDisplayPeopleRow = rowCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayPeopleRowChanged:1];
  }
}

- (void)_setShouldDisplayProgressIndicators:(BOOL)indicators
{
  indicatorsCopy = indicators;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayProgressIndicators != indicatorsCopy)
  {
    self->_shouldDisplayProgressIndicators = indicatorsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayProgressIndicatorsChanged:1];
  }
}

- (void)_setShouldDisplayPlayButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayPlayButtons != buttonsCopy)
  {
    self->_shouldDisplayPlayButtons = buttonsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayPlayButtonsChanged:1];
  }
}

- (void)_setShouldDisplayAssetExplorerReviewScreenBadges:(BOOL)badges
{
  badgesCopy = badges;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayAssetExplorerReviewScreenBadges != badgesCopy)
  {
    self->_shouldDisplayAssetExplorerReviewScreenBadges = badgesCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayAssetExplorerReviewScreenBadgesChanged:1];
  }
}

- (void)_setShouldDisplayBadges:(BOOL)badges
{
  badgesCopy = badges;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayBadges != badgesCopy)
  {
    self->_shouldDisplayBadges = badgesCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayBadgesChanged:1];
  }
}

- (void)_setShouldAutoplayOnAppear:(BOOL)appear
{
  appearCopy = appear;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldAutoplayOnAppear != appearCopy)
  {
    self->_shouldAutoplayOnAppear = appearCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldAutoplayOnAppearChanged:1];
  }
}

- (void)_setShouldUseUserTransformTiles:(BOOL)tiles
{
  tilesCopy = tiles;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseUserTransformTiles != tilesCopy)
  {
    self->_shouldUseUserTransformTiles = tilesCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldUseUserTransformTilesChanged:1];
  }
}

- (void)_setShouldUseContentGuideInsets:(BOOL)insets
{
  insetsCopy = insets;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseContentGuideInsets != insetsCopy)
  {
    self->_shouldUseContentGuideInsets = insetsCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldUseContentGuideInsetsChanged:1];
  }
}

- (void)_setShouldUseCompactTitleView:(BOOL)view
{
  viewCopy = view;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldUseCompactTitleView != viewCopy)
  {
    self->_shouldUseCompactTitleView = viewCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldUseCompactTitleViewChanged:1];
  }
}

- (void)_setShouldPlaceButtonsInNavigationBar:(BOOL)bar
{
  barCopy = bar;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldPlaceButtonsInNavigationBar != barCopy)
  {
    self->_shouldPlaceButtonsInNavigationBar = barCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldPlaceButtonsInNavigationBarChanged:1];
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
  currentLayoutStyle = [(PUViewControllerSpec *)self currentLayoutStyle];
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
  if ((currentLayoutStyle - 1) >= 3)
  {
    v20 = 2;
    if (currentLayoutStyle != 4)
    {
      v20 = 0;
    }

    v79 = v20;
    v8 = 0;
    v80 = currentLayoutStyle == 4;
  }

  else
  {
    v79 = 1;
    v80 = v8;
  }

  v84 = v8;
  v81 = currentLayoutStyle;
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

  isPresentedForPreview = [(PUOneUpViewControllerSpec *)self isPresentedForPreview];
  isChromeVisible = [(PUOneUpViewControllerSpec *)self isChromeVisible];
  isPresentedForSecondScreen = [(PUViewControllerSpec *)self isPresentedForSecondScreen];
  _isAssetExplorerReviewScreen = [(PUOneUpViewControllerSpec *)self _isAssetExplorerReviewScreen];
  isShowingPlayPauseButtonInBars = [(PUOneUpViewControllerSpec *)self isShowingPlayPauseButtonInBars];
  isContentLocked = [(PUOneUpViewControllerSpec *)self isContentLocked];
  v27 = !isPresentedForPreview && isChromeVisible;
  v28 = +[PUOneUpSettings sharedInstance];
  isOneUpRefreshEnabled = [MEMORY[0x1E69C3640] isOneUpRefreshEnabled];
  v86 = v28;
  if (isPresentedForSecondScreen)
  {
    allowUserTransform = 0;
    v74 = 0;
    v77 = !_isAssetExplorerReviewScreen;
    v30 = 1;
  }

  else
  {
    allowUserTransform = [v28 allowUserTransform];
    v31 = v28;
    v32 = isOneUpRefreshEnabled | v27 ^ 1;
    if ((v32 | _isAssetExplorerReviewScreen))
    {
      HIDWORD(v77) = 0;
    }

    else
    {
      HIDWORD(v77) = [v31 allowBadges];
    }

    if ((v32 | !_isAssetExplorerReviewScreen))
    {
      LODWORD(v77) = !_isAssetExplorerReviewScreen;
      v74 = 0;
      v30 = isPresentedForPreview;
      v28 = v86;
    }

    else
    {
      options = self->_options;
      v28 = v86;
      allowBadges = [v86 allowBadges];
      LODWORD(v77) = 0;
      if ((options & 0x80000) != 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = allowBadges;
      }

      v74 = v35;
      v30 = isPresentedForPreview;
    }
  }

  v36 = !isPresentedForPreview && !isPresentedForSecondScreen;
  v37 = isOneUpRefreshEnabled | v30;
  v87 = v27;
  if ([v28 allowPlayButtonInBars])
  {
    v38 = v37 | isShowingPlayPauseButtonInBars & v27;
  }

  else
  {
    v38 = v37;
  }

  shouldDisplayPeopleRow = [(PUOneUpViewControllerSpec *)self shouldDisplayPeopleRow];
  traitCollection = [(PUViewControllerSpec *)self traitCollection];
  [PUPeopleTileViewController tileSizeForTraitCollection:traitCollection];
  v72 = v41;
  v73 = v40;

  [v28 minimumFullCommentTitleViewWidth];
  v43 = v42;
  if (!isPresentedForPreview || isContentLocked)
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
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    if (![(PUOneUpViewControllerSpec *)self shouldUseSpotlightStyling])
    {
      v46 = 0;
      goto LABEL_38;
    }

    blackColor = [(PUOneUpViewControllerSpec *)self spotlightBackgroundColor];
  }

  v46 = blackColor;
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
  v66 = isPresentedForPreview;
  v67 = 2;
  if (!isPresentedForPreview)
  {
    v67 = 0;
  }

  if (isPresentedForSecondScreen)
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
  [(PUOneUpViewControllerSpec *)self _setShouldUseUserTransformTiles:allowUserTransform];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayBadges:HIDWORD(v77)];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayAssetExplorerReviewScreenBadges:v74];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayPlayButtons:(v38 ^ 1) & 1];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayProgressIndicators:v77];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayPeopleRow:shouldDisplayPeopleRow];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayBufferingIndicators:1];
  [(PUOneUpViewControllerSpec *)self _setCanDisplayLoadingIndicators:!isPresentedForSecondScreen];
  [(PUOneUpViewControllerSpec *)self _setShouldDisplayEmptyPlaceholder:!isPresentedForSecondScreen];
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

- (void)setShouldDisplayPeopleRow:(BOOL)row
{
  rowCopy = row;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_shouldDisplayPeopleRow != rowCopy)
  {
    self->_shouldDisplayPeopleRow = rowCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setShouldDisplayPeopleRowChanged:1];
  }
}

- (void)setContentLocked:(BOOL)locked
{
  lockedCopy = locked;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isContentLocked != lockedCopy)
  {
    self->_isContentLocked = lockedCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setContentLockingChanged:1];
  }
}

- (void)setShowingPlayPauseButtonInBars:(BOOL)bars
{
  barsCopy = bars;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isShowingPlayPauseButtonInBars != barsCopy)
  {
    self->_isShowingPlayPauseButtonInBars = barsCopy;
  }
}

- (void)setPresentedForPreview:(BOOL)preview
{
  previewCopy = preview;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isPresentedForPreview != previewCopy)
  {
    self->_isPresentedForPreview = previewCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setPresentedForPreviewChanged:1];
  }
}

- (void)setChromeVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(PUViewControllerSpec *)self assertInsideChangesBlock];
  if (self->_isChromeVisible != visibleCopy)
  {
    self->_isChromeVisible = visibleCopy;
    currentChange = [(PUOneUpViewControllerSpec *)self currentChange];
    [currentChange _setChromeVisibilityChanged:1];
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
  currentChange = [(PUViewControllerSpec *)&v4 currentChange];

  return currentChange;
}

- (PUOneUpViewControllerSpec)initWithOptions:(unint64_t)options
{
  v8.receiver = self;
  v8.super_class = PUOneUpViewControllerSpec;
  v4 = [(PUViewControllerSpec *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = v4;
  }

  return v5;
}

@end