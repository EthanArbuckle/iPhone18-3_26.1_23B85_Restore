@interface PXStoryStyleSwitchingFullsizeLayout
- (BOOL)_handleSwitchStyle:(id)style inGroup:(id)group;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXGAXResponder)axNextResponder;
- (PXStoryFullsizeLayout)dominantFullsizePlayerLayout;
- (PXStoryStyleSwitchingFullsizeLayout)init;
- (PXStoryStyleSwitchingFullsizeLayout)initWithModel:(id)model;
- (_NSRange)displayedStyleRange;
- (id)_axAssetsVisible;
- (id)_axSongArtistName;
- (id)_axSongTitle;
- (id)_axStyleTitle;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)axContentInfoAtSpriteIndex:(unsigned int)index;
- (id)axSpriteIndexes;
- (id)axVisibleSpriteIndexes;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (unint64_t)_axSwitcherFractionDenominator;
- (unint64_t)_axSwitcherFractionNumerator;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction;
- (void)_configureTimelineLayout:(id)layout maskLayout:(id)maskLayout forIndex:(int64_t)index;
- (void)_handlePageControl:(id)control;
- (void)_handleRestartButton:(id)button;
- (void)_invalidateAXSpriteIndexes;
- (void)_invalidateContent;
- (void)_invalidateDisplayedStyleRange;
- (void)_invalidateDisplayedStyles;
- (void)_invalidatePageControl;
- (void)_invalidateRestartButton;
- (void)_invalidateTitleString;
- (void)_updateAXSpriteIndexes;
- (void)_updateContent;
- (void)_updateDisplayedStyleRange;
- (void)_updateDisplayedStyles;
- (void)_updatePageControl;
- (void)_updateRestartButton;
- (void)_updateTitleString;
- (void)alphaDidChange;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)didUpdate;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setDataSource:(id)source;
- (void)setDisplayedStyleInfos:(id)infos;
- (void)setDisplayedStyleRange:(_NSRange)range;
- (void)setPageControlConfiguration:(id)configuration;
- (void)setRelativeZPositionAboveLegibilityGradients:(double)gradients;
- (void)setRestartButtonConfiguration:(id)configuration;
- (void)setStyleSwitcherTitleString:(id)string;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryStyleSwitchingFullsizeLayout

- (_NSRange)displayedStyleRange
{
  p_displayedStyleRange = &self->_displayedStyleRange;
  location = self->_displayedStyleRange.location;
  length = p_displayedStyleRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->axNextResponder);

  return WeakRetained;
}

- (id)_axAssetsVisible
{
  dominantFullsizePlayerLayout = [(PXStoryStyleSwitchingFullsizeLayout *)self dominantFullsizePlayerLayout];
  displayedTimeline = [dominantFullsizePlayerLayout displayedTimeline];
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  currentSegmentIdentifier = [model currentSegmentIdentifier];

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  if (displayedTimeline)
  {
    [displayedTimeline timeRangeForSegmentWithIdentifier:currentSegmentIdentifier];
  }

  [dominantFullsizePlayerLayout displayedTimelineRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  array = [MEMORY[0x1E695DF70] array];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __55__PXStoryStyleSwitchingFullsizeLayout__axAssetsVisible__block_invoke;
  v27 = &unk_1E77423E0;
  v28 = displayedTimeline;
  selfCopy = self;
  v30 = array;
  v31 = a2;
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v17 = array;
  v18 = displayedTimeline;
  [v18 enumerateClipsInTimeRange:&v21 rect:&v24 usingBlock:{v9, v11, v13, v15}];
  v19 = [v17 copy];

  return v19;
}

void __55__PXStoryStyleSwitchingFullsizeLayout__axAssetsVisible__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 >= 1)
  {
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v26 = v5;
    v27 = v11;
    v28 = v12;
    v14 = a2;
    do
    {
      v16 = [*(a1 + 32) clipWithIdentifier:{*a5, v21, v22, v23, v24, v25, v26, v27, v28}];
      v17 = [v16 resource];
      v18 = [v17 px_storyResourceKind];

      if (v18 == 1)
      {
        v19 = [v16 resource];
        v20 = [v19 px_storyResourceDisplayAsset];

        [*(a1 + 48) addObject:v20];
      }

      a5 += 96;

      --v14;
    }

    while (v14);
  }
}

- (id)_axSongTitle
{
  dataSource = [(PXStoryStyleSwitchingFullsizeLayout *)self dataSource];
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];
  v6 = [dataSource styleInfoAtIndex:{objc_msgSend(styleManager, "focusedStyleIndex")}];

  songResource = [v6 songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
  title = [px_storyResourceSongAsset title];

  return title;
}

- (id)_axSongArtistName
{
  dataSource = [(PXStoryStyleSwitchingFullsizeLayout *)self dataSource];
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];
  v6 = [dataSource styleInfoAtIndex:{objc_msgSend(styleManager, "focusedStyleIndex")}];

  songResource = [v6 songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
  artistName = [px_storyResourceSongAsset artistName];

  return artistName;
}

- (id)_axStyleTitle
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  colorGradingRepository = [model colorGradingRepository];

  dataSource = [(PXStoryStyleSwitchingFullsizeLayout *)self dataSource];
  model2 = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model2 styleManager];
  v8 = [dataSource styleInfoAtIndex:{objc_msgSend(styleManager, "focusedStyleIndex")}];

  v9 = [colorGradingRepository localizedTitleForColorGradeKind:{objc_msgSend(v8, "customColorGradeKind")}];

  return v9;
}

- (unint64_t)_axSwitcherFractionDenominator
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];

  selectionDataSource = [styleManager selectionDataSource];
  numberOfStyles = [selectionDataSource numberOfStyles];

  return numberOfStyles;
}

- (unint64_t)_axSwitcherFractionNumerator
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];

  focusedStyleIndex = [styleManager focusedStyleIndex];
  return focusedStyleIndex + 1;
}

- (BOOL)_handleSwitchStyle:(id)style inGroup:(id)group
{
  [style axFrame];
  v6 = v5;
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];

  focusedStyleIndex = [styleManager focusedStyleIndex];
  if (v6 <= 0.0)
  {
    v10 = focusedStyleIndex;
  }

  else
  {
    v10 = focusedStyleIndex + 1;
  }

  if (v6 < 0.0)
  {
    v11 = focusedStyleIndex - 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 < 0 || ([styleManager selectionDataSource], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "numberOfStyles"), v12, v11 >= v13))
  {
    PXAssertGetLog();
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__PXStoryStyleSwitchingFullsizeLayout__handleSwitchStyle_inGroup___block_invoke;
  v15[3] = &__block_descriptor_40_e38_v16__0___PXStoryMutableStyleManager__8l;
  v15[4] = v11;
  [styleManager performChanges:v15 origin:6];

  return 1;
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  PXGAXGetElementForUserInfo();
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXStoryStyleSwitchingFullsizeLayout *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  groupCopy = group;
  axNextResponder = [(PXStoryStyleSwitchingFullsizeLayout *)self axNextResponder];
  v6 = [axNextResponder axContainingScrollViewForAXGroup:groupCopy];

  return v6;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(PXStoryStyleSwitchingFullsizeLayout *)self _isFakeAXSpriteIndex:index])
  {
    [(PXStoryStyleSwitchingFullsizeLayout *)self referenceSize];
    PXRectWithOriginAndSize();
  }

  v7.receiver = self;
  v7.super_class = PXStoryStyleSwitchingFullsizeLayout;
  v5 = [(PXStoryStyleSwitchingFullsizeLayout *)&v7 axContentInfoAtSpriteIndex:v3];

  return v5;
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction
{
  if (direction - 4 < 2)
  {
    axSpriteIndexes = [(PXStoryStyleSwitchingFullsizeLayout *)self axSpriteIndexes];
    v6 = [axSpriteIndexes indexGreaterThanIndex:index];
  }

  else
  {
    if (direction != 6 && direction != 3)
    {
      return -1;
    }

    axSpriteIndexes = [(PXStoryStyleSwitchingFullsizeLayout *)self axSpriteIndexes];
    v6 = [axSpriteIndexes indexLessThanIndex:index];
  }

  v7 = v6;

  return v7;
}

- (id)axVisibleSpriteIndexes
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  [model styleSwitcherVisibilityFraction];
  v5 = v4;

  if (v5 <= 0.5)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  else
  {
    axSpriteIndexes = [(PXStoryStyleSwitchingFullsizeLayout *)self axSpriteIndexes];
    v7 = [axSpriteIndexes mutableCopy];

    [v7 removeIndex:1000];
    [v7 removeIndex:1002];
    [v7 removeIndex:1001];
    v8 = [v7 copy];
  }

  return v8;
}

- (id)axSpriteIndexes
{
  v2 = [(NSMutableIndexSet *)self->_axSpriteIndexes copy];

  return v2;
}

- (void)setRestartButtonConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_restartButtonConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    v7 = [(PXStoryChromeButtonConfiguration *)configurationCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_restartButtonConfiguration, configuration);
      [(PXStoryStyleSwitchingFullsizeLayout *)self setRestartButtonVersion:[(PXStoryStyleSwitchingFullsizeLayout *)self restartButtonVersion]+ 1];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
      v6 = v8;
    }
  }
}

- (void)setPageControlConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self->_pageControlConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    v6 = [(PXGPageControlConfiguration *)configurationCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXGPageControlConfiguration *)v9 copy];
      pageControlConfiguration = self->_pageControlConfiguration;
      self->_pageControlConfiguration = v7;

      [(PXStoryStyleSwitchingFullsizeLayout *)self setPageControlVersion:[(PXStoryStyleSwitchingFullsizeLayout *)self pageControlVersion]+ 1];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
      v5 = v9;
    }
  }
}

- (void)setStyleSwitcherTitleString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_styleSwitcherTitleString != stringCopy)
  {
    v9 = stringCopy;
    v6 = [(NSAttributedString *)stringCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSAttributedString *)v9 copy];
      styleSwitcherTitleString = self->_styleSwitcherTitleString;
      self->_styleSwitcherTitleString = v7;

      [(PXStoryStyleSwitchingFullsizeLayout *)self setStyleSwitcherTitleVersion:[(PXStoryStyleSwitchingFullsizeLayout *)self styleSwitcherTitleVersion]+ 1];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
      v5 = v9;
    }
  }
}

- (void)_configureTimelineLayout:(id)layout maskLayout:(id)maskLayout forIndex:(int64_t)index
{
  layoutCopy = layout;
  maskLayoutCopy = maskLayout;
  [(PXStoryStyleSwitchingFullsizeLayout *)self alpha];
  v32 = v9;
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  layoutSpec = [model layoutSpec];
  styleSwitcherLayoutDirection = [layoutSpec styleSwitcherLayoutDirection];
  [model styleSwitcherVisibilityFraction];
  v14 = v13;
  if (v13 > 0.0)
  {
    [(PXStoryStyleSwitchingFullsizeLayout *)self referenceSize];
    [layoutSpec styleSwitcherViewportSpacing];
    styleManager = [model styleManager];
    [styleManager selectionFocus];

    [(PXStoryStyleSwitchingFullsizeLayout *)self displayedStyleRange];
    PXRectWithOriginAndSize();
  }

  v16 = *(off_1E7721FA8 + 1);
  v17 = *(off_1E7721FA8 + 3);
  v18 = *off_1E7721FA8;
  v19 = *(off_1E7721FA8 + 2);
  [layoutCopy setAlpha:v32];
  [layoutCopy setTextAlpha:1.0 - v14];
  if (styleSwitcherLayoutDirection == 2)
  {
    PXEdgeInsetsByFlippingHorizontally();
  }

  [layoutCopy setClippingInsets:{v18, v16, v19, v17}];
  [(PXStoryStyleSwitchingFullsizeLayout *)self referenceDepth];
  [layoutCopy setReferenceDepth:?];
  [layoutCopy referenceDepth];
  v21 = v20;
  [(PXStoryStyleSwitchingFullsizeLayout *)self referenceDepth];
  v23 = v21 / v22;
  [(PXStoryStyleSwitchingFullsizeLayout *)self relativeZPositionAboveLegibilityGradients];
  [layoutCopy setRelativeZPositionAboveLegibilityGradients:v24 / v23];
  if (maskLayoutCopy)
  {
    [maskLayoutCopy setInsets:{v18, v16, v19, v17}];
    [maskLayoutCopy setAlpha:v32];
    [maskLayoutCopy setMaskScale:v14];
    [maskLayoutCopy setLeftMaskWidth:0.0];
    [maskLayoutCopy setRightMaskWidth:0.0];
    backgroundColor = [layoutSpec backgroundColor];
    v26 = +[PXStorySettings sharedInstance];
    wantsHighContrastColors = [v26 wantsHighContrastColors];

    if (wantsHighContrastColors)
    {
      *v28.i64 = ([(PXStoryStyleSwitchingFullsizeLayout *)self displayedStyleRange]+ index) * 0.2;
      *v29.i64 = *v28.i64 - trunc(*v28.i64);
      v30.f64[0] = NAN;
      v30.f64[1] = NAN;
      v31 = [MEMORY[0x1E69DC888] colorWithHue:*vbslq_s8(vnegq_f64(v30) saturation:v29 brightness:v28).i64 alpha:{1.0, 1.0, 1.0}];

      backgroundColor = v31;
    }

    [maskLayoutCopy setMaskColor:backgroundColor];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_117831 == context)
  {
    if ((change & 0x2000) != 0)
    {
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateTitleString];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidatePageControl];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateRestartButton];
      if ((change & 0x2000000000000) == 0)
      {
LABEL_9:
        if ((change & 0x10000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((change & 0x2000000000000) == 0)
    {
      goto LABEL_9;
    }

    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateDisplayedStyleRange];
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
    if ((change & 0x10000) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateAXSpriteIndexes];
    goto LABEL_11;
  }

  if (StyleManagerObservationContext_117832 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:570 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 0x100) != 0)
  {
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateDisplayedStyleRange];
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidatePageControl];
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateAXSpriteIndexes];
  }

  if ((change & 0x20) != 0)
  {
    model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
    styleManager = [model styleManager];
    selectionDataSource = [styleManager selectionDataSource];
    [(PXStoryStyleSwitchingFullsizeLayout *)self setDataSource:selectionDataSource];
  }

LABEL_11:
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  layoutSpec = [model layoutSpec];
  v8 = [(PXStoryStyleSwitchingFullsizeLayout *)self displayedStyleRange]+ index;
  dataSource = [(PXStoryStyleSwitchingFullsizeLayout *)self dataSource];
  indexOfCurrentStyle = [dataSource indexOfCurrentStyle];

  if (v8 == indexOfCurrentStyle)
  {
    v11 = 0;
  }

  else
  {
    displayedStyleInfos = [(PXStoryStyleSwitchingFullsizeLayout *)self displayedStyleInfos];
    v11 = [displayedStyleInfos objectAtIndexedSubscript:index];
  }

  v13 = [[PXStoryFullsizeLayout alloc] initWithModel:model overrideStyleInfo:v11];
  model2 = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  extendedTraitCollection = [model2 extendedTraitCollection];
  userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(PXStoryStyleSwitchingFullsizeLayout *)self _configureTimelineLayout:v13 maskLayout:0 forIndex:index];
    v17 = v13;
  }

  else
  {
    v18 = [off_1E77216A0 alloc];
    backgroundColor = [layoutSpec backgroundColor];
    v20 = [v18 initWithCornerRadius:1 continuousCorners:backgroundColor maskColor:16.0];

    [(PXStoryStyleSwitchingFullsizeLayout *)self _configureTimelineLayout:v13 maskLayout:v20 forIndex:index];
    v17 = objc_alloc_init(off_1E77216C8);
    [(PXStoryFullsizeLayout *)v17 setFirstSublayout:v20];
    [(PXStoryFullsizeLayout *)v17 setSecondSublayout:v13];
    [(PXStoryFullsizeLayout *)v17 setMode:4];
  }

  return v17;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_pageControlSpriteIndex == index)
  {
    pageControlConfiguration = [(PXStoryStyleSwitchingFullsizeLayout *)self pageControlConfiguration];
  }

  else
  {
    if (self->_restartButtonSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:499 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    pageControlConfiguration = [(PXStoryStyleSwitchingFullsizeLayout *)self restartButtonConfiguration];
  }

  v9 = pageControlConfiguration;

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_pageControlSpriteIndex != index && self->_restartButtonSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:490 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = objc_opt_class();

  return v8;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_styleSwitcherTitleSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:479 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  styleSwitcherTitleString = [(PXStoryStyleSwitchingFullsizeLayout *)self styleSwitcherTitleString];

  return styleSwitcherTitleString;
}

- (void)_handleRestartButton:(id)button
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  [model performChanges:&__block_literal_global_117844];
}

- (void)_handlePageControl:(id)control
{
  controlCopy = control;
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];
  currentPage = [controlCopy currentPage];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PXStoryStyleSwitchingFullsizeLayout__handlePageControl___block_invoke;
  v8[3] = &__block_descriptor_40_e38_v16__0___PXStoryMutableStyleManager__8l;
  v8[4] = currentPage;
  [styleManager performChanges:v8 origin:6];
}

- (void)_updateAXSpriteIndexes
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  v4 = [model viewMode] == 4;

  model2 = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model2 styleManager];

  focusedStyleIndex = [styleManager focusedStyleIndex];
  selectionDataSource = [styleManager selectionDataSource];
  v9 = [selectionDataSource numberOfStyles] - 1;

  v10 = focusedStyleIndex != v9 && v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PXStoryStyleSwitchingFullsizeLayout__updateAXSpriteIndexes__block_invoke;
  aBlock[3] = &unk_1E7748278;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v11[2](v11, v4, 1001);
  v11[2](v11, v10, 1002);
  if (focusedStyleIndex)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  v11[2](v11, v12, 1000);
}

uint64_t __61__PXStoryStyleSwitchingFullsizeLayout__updateAXSpriteIndexes__block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 1040);
  if (a2)
  {
    return [v2 addIndex:?];
  }

  else
  {
    return [v2 removeIndex:?];
  }
}

- (void)_invalidateAXSpriteIndexes
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidateAXSpriteIndexes]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:412 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  v4 = *MEMORY[0x1E69E9840];
  sublayoutDataStore = [(PXStoryStyleSwitchingFullsizeLayout *)self sublayoutDataStore];
  [sublayoutDataStore count];

  [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  [objc_claimAutoreleasedReturnValue() styleSwitcherVisibilityFraction];
  [(PXStoryStyleSwitchingFullsizeLayout *)self referenceSize];
  PXRectWithOriginAndSize();
}

uint64_t __53__PXStoryStyleSwitchingFullsizeLayout__updateContent__block_invoke(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 40) >= 1)
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = *(a1 + 64);
      *v3 = *(a1 + 48);
      v3[1] = v4;
      v3 += 2;
      ++v2;
    }

    while (*(a1 + 40) > v2);
  }

  return [*(a1 + 32) setFrames:a2 forSublayoutsInRange:{*(a1 + 80), *(a1 + 88)}];
}

void __53__PXStoryStyleSwitchingFullsizeLayout__updateContent__block_invoke_256(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v5 = [*(a1 + 32) model];
  v6 = [v5 extendedTraitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    [*(a1 + 32) _configureTimelineLayout:v29 maskLayout:0 forIndex:a2];
    goto LABEL_8;
  }

  v8 = v29;
  v9 = [v8 secondSublayout];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
    v23 = objc_opt_class();
    v15 = NSStringFromClass(v23);
    v24 = [v9 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:v21 object:v22 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:365 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"splitLayout.secondSublayout", v15, v24}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 handleFailureInMethod:v12 object:v13 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:365 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"splitLayout.secondSublayout", v15}];
  }

LABEL_5:
  v10 = [v8 firstSublayout];
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v16 handleFailureInMethod:v17 object:v18 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:366 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"splitLayout.firstSublayout", v20}];
LABEL_16:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = objc_opt_class();
    v20 = NSStringFromClass(v27);
    v28 = [v10 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:v25 object:v26 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:366 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"splitLayout.firstSublayout", v20, v28}];

    goto LABEL_16;
  }

LABEL_7:
  [*(a1 + 32) _configureTimelineLayout:v9 maskLayout:v10 forIndex:a2];

LABEL_8:
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:331 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateDisplayedStyles
{
  v10[1] = *MEMORY[0x1E69E9840];
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];
  selectionDataSource = [styleManager selectionDataSource];

  if ([selectionDataSource numberOfStyles] < 1)
  {
    v9 = +[_PXStoryFallbackStyleDescriptor defaultFallbackStyleDescriptor];
    v10[0] = v9;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    displayedStyleRange = [(PXStoryStyleSwitchingFullsizeLayout *)self displayedStyleRange];
    v8 = [selectionDataSource infosForStylesInRange:{displayedStyleRange, v7}];
  }

  [(PXStoryStyleSwitchingFullsizeLayout *)self setDisplayedStyleInfos:v8];
}

- (void)_invalidateDisplayedStyles
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidateDisplayedStyles]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:314 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateDisplayedStyleRange
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];
  selectionDataSource = [styleManager selectionDataSource];

  [model styleSwitcherVisibilityFraction];
  if (v5 <= 0.0)
  {
    if ([selectionDataSource indexOfCurrentStyle] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(selectionDataSource, "numberOfStyles") <= 0)
    {
      [selectionDataSource indexOfCurrentStyle];
    }
  }

  else
  {
    [selectionDataSource numberOfStyles];
    styleManager2 = [model styleManager];
    [styleManager2 focusedStyleIndex];
  }

  [(PXStoryStyleSwitchingFullsizeLayout *)self setDisplayedStyleRange:?];
}

- (void)_invalidateDisplayedStyleRange
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidateDisplayedStyleRange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:289 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateRestartButton
{
  v7 = objc_alloc_init(PXStoryChromeButtonConfiguration);
  [(PXStoryChromeButtonConfiguration *)v7 setBackgroundStyle:0];
  [(PXStoryChromeButtonConfiguration *)v7 setTarget:self];
  [(PXStoryChromeButtonConfiguration *)v7 setAction:sel__handleRestartButton_];
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  layoutSpec = [model layoutSpec];
  styleSwitcherChromeButtonSpec = [layoutSpec styleSwitcherChromeButtonSpec];
  [(PXStoryChromeButtonConfiguration *)v7 setSpec:styleSwitcherChromeButtonSpec];

  [(PXStoryChromeButtonConfiguration *)v7 setSystemImageName:@"arrow.counterclockwise"];
  v6 = PXLocalizedStringFromTable(@"InteractiveMemoryButtonAccessibilityLabelRestart", @"PhotosUICore");
  [(PXStoryChromeButtonConfiguration *)v7 setAxLabel:v6];

  [(PXStoryStyleSwitchingFullsizeLayout *)self setRestartButtonConfiguration:v7];
}

- (void)_invalidateRestartButton
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidateRestartButton]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:274 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updatePageControl
{
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  styleManager = [model styleManager];
  v4 = objc_alloc_init(off_1E7721668);
  [v4 setCurrentPage:{objc_msgSend(styleManager, "focusedStyleIndex")}];
  selectionDataSource = [styleManager selectionDataSource];
  [v4 setNumberOfPages:{objc_msgSend(selectionDataSource, "numberOfStyles")}];

  [v4 setHidesForSinglePage:1];
  [v4 setTarget:self];
  [v4 setAction:sel__handlePageControl_];
  [(PXStoryStyleSwitchingFullsizeLayout *)self setPageControlConfiguration:v4];
}

- (void)_invalidatePageControl
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidatePageControl]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:258 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTitleString
{
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = PXLocalizedStringFromTable(@"InteractiveMemoryStyleSwitcherTitle", @"PhotosUICore");
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  layoutSpec = [model layoutSpec];
  styleSwitcherTitleAttributes = [layoutSpec styleSwitcherTitleAttributes];
  v7 = [v3 initWithString:v8 attributes:styleSwitcherTitleAttributes];
  [(PXStoryStyleSwitchingFullsizeLayout *)self setStyleSwitcherTitleString:v7];
}

- (void)_invalidateTitleString
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout _invalidateTitleString]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:249 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleSwitchingFullsizeLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryStyleSwitchingFullsizeLayout;
  [(PXGCompositeLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 2;
    if ((needsUpdate & 2) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updateDisplayedStyleRange];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
        [currentHandler2 handleFailureInFunction:v14 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v5 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updateDisplayedStyles];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler3 handleFailureInFunction:v16 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v6 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updateTitleString];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler4 handleFailureInFunction:v18 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v7 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updatePageControl];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler5 handleFailureInFunction:v20 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v8 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updateRestartButton];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler6 handleFailureInFunction:v22 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v9)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler7 handleFailureInFunction:v24 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v10 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x40uLL;
    if ((v10 & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXStoryStyleSwitchingFullsizeLayout *)self _updateAXSpriteIndexes];
      v10 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v10)
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout update]"];
      [currentHandler8 handleFailureInFunction:v26 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:239 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v27.receiver = self;
  v27.super_class = PXStoryStyleSwitchingFullsizeLayout;
  [(PXGCompositeLayout *)&v27 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryStyleSwitchingFullsizeLayout;
  [(PXGCompositeLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleSwitchingFullsizeLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleSwitchingFullsizeLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
  [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateAXSpriteIndexes];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleSwitchingFullsizeLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
  [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateAXSpriteIndexes];
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleSwitchingFullsizeLayout;
  [(PXStoryStyleSwitchingFullsizeLayout *)&v3 alphaDidChange];
  [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
}

- (void)setRelativeZPositionAboveLegibilityGradients:(double)gradients
{
  if (self->_relativeZPositionAboveLegibilityGradients != gradients)
  {
    self->_relativeZPositionAboveLegibilityGradients = gradients;
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];
  }
}

- (void)setDisplayedStyleInfos:(id)infos
{
  infosCopy = infos;
  v5 = infosCopy;
  if (self->_displayedStyleInfos != infosCopy)
  {
    v11 = infosCopy;
    v6 = [(NSArray *)infosCopy isEqual:?];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      if ([(NSArray *)self->_displayedStyleInfos count]== 1 && [(NSArray *)v11 count]== 1)
      {
        changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
      }

      else
      {
        changeDetailsWithNoChanges = [off_1E7721450 changeDetailsFromArray:self->_displayedStyleInfos toArray:v11 changedObjects:MEMORY[0x1E695E0F0]];
      }

      v8 = changeDetailsWithNoChanges;
      v9 = [(NSArray *)v11 copy];
      displayedStyleInfos = self->_displayedStyleInfos;
      self->_displayedStyleInfos = v9;

      [(PXStoryStyleSwitchingFullsizeLayout *)self applySublayoutChangeDetails:v8 countAfterChanges:[(NSArray *)v11 count] sublayoutProvider:self];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidatePageControl];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateContent];

      v5 = v11;
    }
  }
}

- (void)setDisplayedStyleRange:(_NSRange)range
{
  if (range.location != self->_displayedStyleRange.location || range.length != self->_displayedStyleRange.length)
  {
    self->_displayedStyleRange = range;
    [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateDisplayedStyles];
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_dataSource != sourceCopy)
  {
    v8 = sourceCopy;
    v7 = [(PXStoryStyleSelectionDataSource *)sourceCopy isEqual:?];
    v6 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_dataSource, source);
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateDisplayedStyleRange];
      [(PXStoryStyleSwitchingFullsizeLayout *)self _invalidateDisplayedStyles];
      v6 = v8;
    }
  }
}

- (PXStoryFullsizeLayout)dominantFullsizePlayerLayout
{
  v21 = *MEMORY[0x1E69E9840];
  model = [(PXStoryStyleSwitchingFullsizeLayout *)self model];
  sublayoutDataStore = [(PXStoryStyleSwitchingFullsizeLayout *)self sublayoutDataStore];
  [model styleSwitcherVisibilityFraction];
  if (v6 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    styleManager = [model styleManager];
    focusedStyleIndex = [styleManager focusedStyleIndex];
    v9 = focusedStyleIndex - [(PXStoryStyleSwitchingFullsizeLayout *)self displayedStyleRange];
  }

  if (v9 < [sublayoutDataStore count])
  {
    v10 = [sublayoutDataStore sublayoutAtIndex:v9];
    secondSublayout = [v10 secondSublayout];
    if (secondSublayout)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:

        goto LABEL_11;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = objc_opt_class();
      v16 = NSStringFromClass(v17);
      px_descriptionForAssertionMessage = [secondSublayout px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:129 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"splitLayout.secondSublayout", v16, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:129 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"splitLayout.secondSublayout", v16}];
    }

    goto LABEL_7;
  }

  v12 = PLStoryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v20 = v9;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Unable to return the dominant fullsize player layout, because there is no sublayout at index %ld", buf, 0xCu);
  }

  secondSublayout = 0;
LABEL_11:

  return secondSublayout;
}

- (PXStoryStyleSwitchingFullsizeLayout)initWithModel:(id)model
{
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = PXStoryStyleSwitchingFullsizeLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v17 init];
  if (v6)
  {
    v7 = [[off_1E7721500 alloc] initWithElementSize:32];
    fullsizeFrameRectsStore = v6->_fullsizeFrameRectsStore;
    v6->_fullsizeFrameRectsStore = v7;

    objc_storeStrong(&v6->_model, model);
    [(PXStoryModel *)v6->_model registerChangeObserver:v6 context:ModelObservationContext_117831];
    styleManager = [(PXStoryModel *)v6->_model styleManager];
    [styleManager registerChangeObserver:v6 context:StyleManagerObservationContext_117832];
    selectionDataSource = [styleManager selectionDataSource];
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 setDataSource:selectionDataSource];

    [(PXGCompositeLayout *)v6 setSublayoutFaultingDelegate:v6];
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 _invalidateDisplayedStyles];
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 setContentSource:v6];
    spriteCount = v6->_spriteCount;
    v6->_spriteCount = spriteCount + 1;
    v6->_styleSwitcherTitleSpriteIndex = spriteCount;
    v12 = v6->_spriteCount;
    v6->_spriteCount = v12 + 1;
    v6->_pageControlSpriteIndex = v12;
    v13 = v6->_spriteCount;
    v6->_spriteCount = v13 + 1;
    v6->_restartButtonSpriteIndex = v13;
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 applySpriteChangeDetails:0 countAfterChanges:v6->_spriteCount initialState:0 modifyState:0];
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 _invalidateTitleString];
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 _invalidatePageControl];
    [(PXStoryStyleSwitchingFullsizeLayout *)v6 _invalidateRestartButton];
    v14 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v6->_spriteCount}];
    axSpriteIndexes = v6->_axSpriteIndexes;
    v6->_axSpriteIndexes = v14;
  }

  return v6;
}

- (PXStoryStyleSwitchingFullsizeLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSwitchingFullsizeLayout.m" lineNumber:87 description:{@"%s is not available as initializer", "-[PXStoryStyleSwitchingFullsizeLayout init]"}];

  abort();
}

@end