@interface PXCuratedLibraryLayout
- (CGPoint)_adjustInitialVisibleRect:(CGRect)rect inLayout:(id)layout forRecentSection:(int64_t)section;
- (CGPoint)anchor:(id)anchor visibleRectOriginForProposedVisibleRect:(CGRect)rect forLayout:(id)layout;
- (CGRect)fullyVisibleRect;
- (CGRect)presentedVisibleRect;
- (CGRect)sectionBoundariesForAssetCollectionReference:(id)reference;
- (PXBrowserVisibleContentSnapshot)visibleContentSnapshot;
- (PXCuratedLibraryLayout)initWithViewModel:(id)model;
- (PXSectionedObjectReference)dominantObjectReference;
- (UIEdgeInsets)padding;
- (double)_adjustedTargetVisibleTopByAligningNearestHeroForProposedTargetVisibleTop:(double)top;
- (double)adjustedTargetVisibleTopForProposedTargetVisibleTop:(double)top scrollingVelocity:(double)velocity decelerationRate:(int64_t *)rate;
- (double)bottomMargin;
- (double)estimatedHeaderHeight;
- (id)_createAnchorForTransitionToZoomLevel:(int64_t)level;
- (id)_currentFloatingHeaderSpec;
- (id)axLocalizedLabel;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)createAnchorForScrollingToInitialPosition;
- (id)createCuratedLibraryLayoutAnimationIfNeededWithContext:(int64_t)context userData:(id)data;
- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)lastVisibleAreaAnchor;
- (id)locationNamesFutureForContentInRect:(CGRect)rect;
- (id)presentedItemsGeometryForDataSource:(id)source;
- (id)topMostAssetCollectionInRect:(CGRect)rect ignoreChapterHeaders:(BOOL)headers;
- (id)topMostAssetCollectionReference;
- (id)viewModel:(id)model dominantAssetCollectionReferenceForZoomLevel:(int64_t)level;
- (int64_t)_statusBarVisibility;
- (int64_t)curatedLibraryLayoutAnimationContextForTransitionToZoomLevel:(int64_t)level;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (int64_t)viewModel:(id)model transitionTypeFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel;
- (void)_enumerateHeroSpritesInRect:(CGRect)rect usingBlock:(id)block;
- (void)_invalidateBlurredBackground;
- (void)_invalidateBlurredBackgroundOpacity;
- (void)_invalidateContentBackground;
- (void)_noteAnimation:(id)animation isRunning:(BOOL)running;
- (void)_updateAllPhotosOverlayInsets;
- (void)_updateBlurredBackground;
- (void)_updateBlurredBackgroundOpacity;
- (void)_updateContentBackground;
- (void)_updateFloatingHeaderAppearance;
- (void)_updateFloatingHeaderButtons;
- (void)_updateFloatingHeaderLayoutSpec;
- (void)_updateFloatingHeaderSelectionTitle;
- (void)_updateFloatingHeaderVisibility;
- (void)_updateLateralMargin;
- (void)_updateLibraryBodyLayoutLastVisibleDominantObjectReference;
- (void)_updateLibraryBodyLayoutLateralMargin;
- (void)_updateLocalSprites;
- (void)_updateSpecValue;
- (void)_updateStatusBarGradientAlphaValue;
- (void)_updateStatusBarGradientVisibility;
- (void)_updateStatusBarStyle;
- (void)_updateZoomLevel;
- (void)animationDidComplete:(id)complete;
- (void)clearLastVisibleAreaAnchoringInformation;
- (void)contentSizeDidChange;
- (void)dealloc;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)entityManagerDidChange;
- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateScrollablePagesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateSectionBoundariesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateVisibleAssetReferencesUsingBlock:(id)block;
- (void)enumerateVisibleAssetsSectionSublayoutsUsingBlock:(id)block;
- (void)invalidateFloatingHeaderButtons;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)safeAreaInsetsDidChange;
- (void)setLastHitSpriteReference:(id)reference;
- (void)setLastVisibleDominantObjectReference:(id)reference;
- (void)setLateralMargin:(double)margin;
- (void)setSpec:(id)spec;
- (void)sublayoutDidChangeLastBaseline:(id)baseline;
- (void)update;
- (void)viewEnvironmentWillChange:(id)change;
- (void)viewModel:(id)model didTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel;
- (void)viewModel:(id)model willTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXCuratedLibraryLayout

- (void)entityManagerDidChange
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryLayout;
  [(PXCuratedLibraryLayout *)&v3 entityManagerDidChange];
  [(PXCuratedLibraryLayout *)self _invalidateBlurredBackground];
}

- (void)_invalidateBlurredBackground
{
  if (self->_isPerformingUpdate)
  {

    [(PXCuratedLibraryLayout *)self _updateBlurredBackground];
    return;
  }

  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_10:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x400;
      return;
    }

LABEL_9:
    if ((self->_postUpdateFlags.updated & 0x400) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout _invalidateBlurredBackground]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryLayout.m" lineNumber:648 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_9;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1024;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibraryLayout *)self setNeedsUpdate];
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v8 displayScaleDidChange];
  if (!self->_isPerformingUpdate)
  {
    p_postUpdateFlags = &self->_postUpdateFlags;
    needsUpdate = self->_postUpdateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_postUpdateFlags->needsUpdate = needsUpdate | 0x2000;
        return;
      }

LABEL_6:
      if ((self->_postUpdateFlags.updated & 0x2000) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout displayScaleDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryLayout.m" lineNumber:938 description:{@"invalidating %lu after it already has been updated", 0x2000}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
    p_postUpdateFlags->needsUpdate = 0x2000;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibraryLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_invalidateContentBackground
{
  if (self->_isPerformingUpdate)
  {

    [(PXCuratedLibraryLayout *)self _updateContentBackground];
    return;
  }

  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_10:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x1000;
      return;
    }

LABEL_9:
    if ((self->_postUpdateFlags.updated & 0x1000) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout _invalidateContentBackground]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryLayout.m" lineNumber:725 description:{@"invalidating %lu after it already has been updated", 4096}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_9;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 4096;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibraryLayout *)self setNeedsUpdate];
  }
}

- (id)lastVisibleAreaAnchor
{
  preferredVisibleAreaAnchorsByZoomLevels = self->_preferredVisibleAreaAnchorsByZoomLevels;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryLayout presentedZoomLevel](self, "presentedZoomLevel")}];
  v5 = [(NSMutableDictionary *)preferredVisibleAreaAnchorsByZoomLevels objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    lastVisibleAreaAnchor = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PXCuratedLibraryLayout;
    lastVisibleAreaAnchor = [(PXCuratedLibraryLayout *)&v10 lastVisibleAreaAnchor];
  }

  v8 = lastVisibleAreaAnchor;

  return v8;
}

- (id)createAnchorForScrollingToInitialPosition
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  if ([viewModel zoomLevel] == 3)
  {
    assetsDataSourceManager = [viewModel assetsDataSourceManager];
    v5 = [assetsDataSourceManager dataSourceForZoomLevel:3];

    numberOfSections = [v5 numberOfSections];
    if (numberOfSections > 0)
    {
      v7 = (numberOfSections - 1);
      location = [v5 identifier];
      v20 = v7;
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v21 = vnegq_f64(v8);
      v9 = [v5 assetCollectionAtSectionIndexPath:&location];
      if ([v9 isRecent] && objc_msgSend(v5, "numberOfItemsInSection:", v7) >= 1)
      {
        location = [v5 identifier];
        v20 = v7;
        v21 = xmmword_1A5380D10;
        v10 = [v5 assetReferenceAtItemIndexPath:&location];
        objc_initWeak(&location, self);
        v11 = [(PXCuratedLibraryLayout *)self spriteReferenceForObjectReference:v10];
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __67__PXCuratedLibraryLayout_createAnchorForScrollingToInitialPosition__block_invoke;
        v17 = &unk_1E7730128;
        objc_copyWeak(v18, &location);
        v18[1] = v7;
        v12 = [(PXCuratedLibraryLayout *)self createAnchorForScrollingSpriteForSpriteReference:v11 toScrollPosition:4 padding:&v14 customOffset:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];

        objc_destroyWeak(v18);
        objc_destroyWeak(&location);

        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_9:
  v12 = [(PXCuratedLibraryLayout *)self createAnchorForScrollingToContentEdges:4 padding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3), v14, v15, v16, v17];
LABEL_10:

  return v12;
}

- (void)clearLastVisibleAreaAnchoringInformation
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryLayout;
  [(PXCuratedLibraryLayout *)&v5 clearLastVisibleAreaAnchoringInformation];
  [(NSMutableDictionary *)self->_lastVisibleAreaAnchorsByZoomLevels removeAllObjects];
  [(NSMutableDictionary *)self->_preferredVisibleAreaAnchorsByZoomLevels removeAllObjects];
  [(PXCuratedLibraryLayout *)self setLastVisibleDominantObjectReference:0];
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [libraryBodyLayout clearLastVisibleAreaAnchoringInformation];

  allPhotosLayout = [(PXCuratedLibraryLayout *)self allPhotosLayout];
  [allPhotosLayout clearLastVisibleAreaAnchoringInformation];
}

- (void)_updateLibraryBodyLayoutLastVisibleDominantObjectReference
{
  lastVisibleDominantObjectReference = [(PXCuratedLibraryLayout *)self lastVisibleDominantObjectReference];
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [libraryBodyLayout setLastVisibleDominantObjectReference:lastVisibleDominantObjectReference];
}

- (void)_updateFloatingHeaderAppearance
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  zoomLevel = [viewModel zoomLevel];
  zoomLevel2 = [viewModel zoomLevel];
  zoomLevel3 = [viewModel zoomLevel];
  if (zoomLevel2 != 2 && zoomLevel3 != 1)
  {
    if (zoomLevel != 4)
    {
LABEL_4:
      [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setTitleAlpha:1.0];
      floatingHeaderLayout = self->_floatingHeaderLayout;
LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }

LABEL_6:
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v13 = zoomablePhotosViewModel;
    if (zoomablePhotosViewModel)
    {
      [zoomablePhotosViewModel zoomState];
      v14 = v31;
    }

    else
    {
      v31 = 0.0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = 0.0;
      v25 = 0u;
      v26 = 0u;
    }

    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setTitleAlpha:v14, v25, v26, v27, v28, v29, v30, *&v31];

    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout titleAlpha];
    if (v16 >= 1.0)
    {
      zoomablePhotosViewModel2 = [viewModel zoomablePhotosViewModel];
      -[PXCuratedLibrarySectionHeaderLayout setWantsOverBackgroundAppearance:](self->_floatingHeaderLayout, "setWantsOverBackgroundAppearance:", [zoomablePhotosViewModel2 wantsOverBackgroundFloatingHeaderAppearance]);

      goto LABEL_16;
    }

    floatingHeaderLayout = self->_floatingHeaderLayout;
    goto LABEL_13;
  }

  viewModel2 = [(PXCuratedLibraryLayout *)self viewModel];
  specManager = [viewModel2 specManager];
  spec = [specManager spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  if (zoomLevel == 4)
  {
    goto LABEL_6;
  }

  if (userInterfaceIdiom != 2)
  {
    if (zoomLevel2 == 2)
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setTitleAlpha:0.0];
      [(PXCuratedLibraryLayout *)self visibleRect];
      v19 = v18;
      viewModel3 = [(PXCuratedLibraryLayout *)self viewModel];
      specManager2 = [viewModel3 specManager];
      spec2 = [specManager2 spec];
      layoutOrientation = [spec2 layoutOrientation];

      v15 = v19 < 1.0 || layoutOrientation == 2;
      floatingHeaderLayout = self->_floatingHeaderLayout;
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setTitleAlpha:0.0];
  floatingHeaderLayout = self->_floatingHeaderLayout;
  v15 = 1;
LABEL_14:
  [(PXCuratedLibrarySectionHeaderLayout *)floatingHeaderLayout setWantsOverBackgroundAppearance:v15];
LABEL_16:
}

- (void)invalidateFloatingHeaderButtons
{
  if (self->_isPerformingUpdate)
  {

    [(PXCuratedLibraryLayout *)self _updateFloatingHeaderButtons];
    return;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_10:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_9:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout invalidateFloatingHeaderButtons]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryLayout.m" lineNumber:769 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_9;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibraryLayout *)self setNeedsUpdate];
  }
}

- (void)visibleRectDidChange
{
  v10.receiver = self;
  v10.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v10 visibleRectDidChange];
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x2000;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x2000) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout visibleRectDidChange]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXCuratedLibraryLayout.m" lineNumber:953 description:{@"invalidating %lu after it already has been updated", 0x2000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x2000;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryLayout *)self setNeedsUpdate];
  }

LABEL_7:
  [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper visibleContentDidChange];
  [(PXCuratedLibraryLayout *)self _invalidateBlurredBackground];
  spec = [(PXCuratedLibraryLayout *)self spec];
  variant = [spec variant];

  if (variant)
  {
    [(PXCuratedLibraryLayout *)self _updateFloatingHeaderAppearance];
  }
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v8 safeAreaInsetsDidChange];
  if (!self->_isPerformingUpdate)
  {
    p_postUpdateFlags = &self->_postUpdateFlags;
    needsUpdate = self->_postUpdateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_postUpdateFlags->needsUpdate = needsUpdate | 0x2000;
        return;
      }

LABEL_6:
      if ((self->_postUpdateFlags.updated & 0x2000) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout safeAreaInsetsDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryLayout.m" lineNumber:946 description:{@"invalidating %lu after it already has been updated", 0x2000}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
    p_postUpdateFlags->needsUpdate = 0x2000;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibraryLayout *)self setNeedsUpdate];
    }
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXCuratedLibraryLayout.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXCuratedLibraryLayout.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (void)update
{
  self->_isPerformingUpdate = 1;
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  if (self->_updateFlags.needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler handleFailureInFunction:v29 file:@"PXCuratedLibraryLayout.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 0;
    if ([viewModel isExpanded] & 1) != 0 || (objc_msgSend(viewModel, "isExpandedAnimating"))
    {
      createAnchorForVisibleArea = [(PXCuratedLibraryLayout *)self createAnchorForVisibleArea];
    }

    else
    {
      createAnchorForVisibleArea = [(PXCuratedLibraryLayout *)self createAnchorForScrollingToContentEdges:4 padding:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    }

    v6 = createAnchorForVisibleArea;
    autoInvalidate = [createAnchorForVisibleArea autoInvalidate];

    zoomLevel = [viewModel zoomLevel];
    if ((p_updateFlags->needsUpdate & 0x11) != 0)
    {
      v9 = [(PXGLayout *)self createCuratedLibraryLayoutZoomLevelChangeAnimationFromZoomLevel:self->_presentedZoomLevel toZoomLevel:zoomLevel withContext:[(PXCuratedLibraryLayout *)self curatedLibraryLayoutAnimationContextForTransitionToZoomLevel:zoomLevel]];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler2 handleFailureInFunction:v31 file:@"PXCuratedLibraryLayout.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    needsUpdate = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 2uLL;
    if ((needsUpdate & 2) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
      [(PXCuratedLibraryLayout *)self _updateSpecValue];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler3 handleFailureInFunction:v33 file:@"PXCuratedLibraryLayout.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v11 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 8uLL;
    if ((v11 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFF7;
      [(PXCuratedLibraryLayout *)self _updateLocalSprites];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler4 handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v12 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 1uLL;
    if (v12)
    {
      p_updateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFFFELL;
      [(PXCuratedLibraryLayout *)self _updateZoomLevel];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler5 handleFailureInFunction:v37 file:@"PXCuratedLibraryLayout.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v13 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 0x40uLL;
    if ((v13 & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = v13 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXCuratedLibraryLayout *)self _updateAllPhotosOverlayInsets];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler6 handleFailureInFunction:v39 file:@"PXCuratedLibraryLayout.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v14 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 4uLL;
    if ((v14 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v14 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXCuratedLibraryLayout *)self _updateLateralMargin];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler7 handleFailureInFunction:v41 file:@"PXCuratedLibraryLayout.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v15 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 0x10uLL;
    if ((v15 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v15 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXCuratedLibraryLayout *)self _updateFloatingHeaderVisibility];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler8 handleFailureInFunction:v43 file:@"PXCuratedLibraryLayout.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v16 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 0x20uLL;
    if ((v16 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v16 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXCuratedLibraryLayout *)self _updateFloatingHeaderButtons];
      v16 = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (v16)
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler9 handleFailureInFunction:v45 file:@"PXCuratedLibraryLayout.m" lineNumber:251 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v62.receiver = self;
  v62.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v62 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  if (self->_postUpdateFlags.needsUpdate)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler10 handleFailureInFunction:v47 file:@"PXCuratedLibraryLayout.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 0;
    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = -1;
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler11 handleFailureInFunction:v49 file:@"PXCuratedLibraryLayout.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v18 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x400uLL;
    if ((v18 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v18 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXCuratedLibraryLayout *)self _updateBlurredBackground];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler12 handleFailureInFunction:v51 file:@"PXCuratedLibraryLayout.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v19 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x800uLL;
    if ((v19 & 0x800) != 0)
    {
      p_postUpdateFlags->needsUpdate = v19 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXCuratedLibraryLayout *)self _updateBlurredBackgroundOpacity];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler13 = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler13 handleFailureInFunction:v53 file:@"PXCuratedLibraryLayout.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v20 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x1000uLL;
    if ((v20 & 0x1000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v20 & 0xFFFFFFFFFFFFEFFFLL;
      [(PXCuratedLibraryLayout *)self _updateContentBackground];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler14 = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler14 handleFailureInFunction:v55 file:@"PXCuratedLibraryLayout.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v21 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x2000uLL;
    if ((v21 & 0x2000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v21 & 0xFFFFFFFFFFFFDFFFLL;
      [(PXCuratedLibraryLayout *)self _updateStatusBarGradientVisibility];
      [(PXCuratedLibraryLayout *)self _updateStatusBarStyle];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler15 = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler15 handleFailureInFunction:v57 file:@"PXCuratedLibraryLayout.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v22 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x4000uLL;
    if ((v22 & 0x4000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v22 & 0xFFFFFFFFFFFFBFFFLL;
      [(PXCuratedLibraryLayout *)self _updateStatusBarGradientAlphaValue];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler16 = [MEMORY[0x1E696AAA8] currentHandler];
      v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler16 handleFailureInFunction:v59 file:@"PXCuratedLibraryLayout.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v23 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x8000uLL;
    if ((v23 & 0x8000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v23 & 0xFFFFFFFFFFFF7FFFLL;
      [(PXCuratedLibraryLayout *)self _invalidateSummaryHelper];
      v23 = p_postUpdateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    self->_updateFlags.updated = 0;
    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v23)
    {
      currentHandler17 = [MEMORY[0x1E696AAA8] currentHandler];
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout update]"];
      [currentHandler17 handleFailureInFunction:v61 file:@"PXCuratedLibraryLayout.m" lineNumber:275 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }

  [(PXCuratedLibraryLayout *)self visibleRect];
  self->_presentedVisibleRect.origin.x = v24;
  self->_presentedVisibleRect.origin.y = v25;
  self->_presentedVisibleRect.size.width = v26;
  self->_presentedVisibleRect.size.height = v27;
  self->_isPerformingUpdate = 0;
  self->_isPerformingInitialUpdate = 0;
  if (([viewModel isResetting] & 1) != 0 || objc_msgSend(viewModel, "isNavigating"))
  {
    [viewModel performChanges:&__block_literal_global_30163];
  }
}

- (void)_updateSpecValue
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  [(PXCuratedLibraryLayout *)self setSpec:spec];
}

- (void)_updateFloatingHeaderLayoutSpec
{
  _currentFloatingHeaderSpec = [(PXCuratedLibraryLayout *)self _currentFloatingHeaderSpec];
  [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setSpec:_currentFloatingHeaderSpec];

  [(PXCuratedLibraryLayout *)self lateralMargin];
  floatingHeaderLayout = self->_floatingHeaderLayout;

  [(PXCuratedLibrarySectionHeaderLayout *)floatingHeaderLayout setLateralMargin:?];
}

- (id)_currentFloatingHeaderSpec
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
  hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];
  if (userInterfaceIdiom == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = hasSharedLibraryOrPreview;
  }

  spec2 = [(PXCuratedLibraryLayout *)self spec];
  zoomLevel = [viewModel zoomLevel];
  v12 = 0;
  if (zoomLevel > 2)
  {
    if (zoomLevel == 3)
    {
      daysTopHeaderSpec = [spec2 daysTopHeaderSpec];
    }

    else
    {
      if (zoomLevel != 4)
      {
        goto LABEL_17;
      }

      daysTopHeaderSpec = [spec2 allPhotosFloatingHeaderSpec];
    }

    goto LABEL_16;
  }

  if (zoomLevel == 1)
  {
    if (v9)
    {
      daysTopHeaderSpec = [spec2 yearsTopHeaderSpec];
      goto LABEL_16;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_17;
  }

  if (zoomLevel != 2)
  {
    goto LABEL_17;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  daysTopHeaderSpec = [spec2 monthsTopHeaderSpec];
LABEL_16:
  v12 = daysTopHeaderSpec;
LABEL_17:

  return v12;
}

- (void)_updateLocalSprites
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30072;
  v21 = __Block_byref_object_dispose__30073;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__30072;
  v15 = __Block_byref_object_dispose__30073;
  v16 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PXCuratedLibraryLayout__updateLocalSprites__block_invoke;
  aBlock[3] = &unk_1E772FF98;
  aBlock[4] = &v23;
  aBlock[5] = &v17;
  aBlock[6] = &v11;
  v3 = _Block_copy(aBlock);
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  contentBackgroundColor = [spec contentBackgroundColor];

  v3[2](v3, &self->_statusBarGradientSpriteIndex, self->_wantsStatusBarGradient);
  v3[2](v3, &self->_blurredBackgroundSpriteIndex, self->_wantsBlurredBackground);
  v3[2](v3, &self->_contentBackgroundSpriteIndex, contentBackgroundColor != 0);
  if ([v18[5] count] || objc_msgSend(v12[5], "count"))
  {
    v8 = [off_1E7721450 alloc];
    v9 = [v8 initWithIncrementalChangeDetailsRemovedIndexes:v12[5] insertedIndexes:v18[5] movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
    [(PXCuratedLibraryLayout *)self applySpriteChangeDetails:v9 countAfterChanges:*(v24 + 6) initialState:&__block_literal_global_260 modifyState:0];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
}

- (void)_updateFloatingHeaderButtons
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (self->_floatingHeaderLayout)
  {
    viewModel = [(PXCuratedLibraryLayout *)self viewModel];
    actionManager = [viewModel actionManager];
    v62 = viewModel;
    zoomLevel = [viewModel zoomLevel];
    v7 = zoomLevel;
    if (zoomLevel == 4)
    {
      v9 = 0;
      v8 = MEMORY[0x1A590D320]() ^ 1;
    }

    else if (zoomLevel == 3 && ([viewModel isSelecting] & 1) == 0)
    {
      spec = [(PXCuratedLibraryLayout *)self spec];
      allPhotosFloatingHeaderSpec = [spec allPhotosFloatingHeaderSpec];
      v12 = [PXCuratedLibraryOverlayButtonConfiguration configurationWithButtonType:1 spec:allPhotosFloatingHeaderSpec];

      v68[0] = v12;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];

      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setExternalTrailingButtonConfigurations:v9];
    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setShowsBackgroundGradient:v8];
    LODWORD(v13) = -1081291571;
    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setButtonsZIndex:v13];
    v14 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionCancelSelectMode"];
    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setCancelButtonActionPerformer:v14];

    v15 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionEnterSelectMode"];
    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setSelectButtonActionPerformer:v15];

    v16 = PXLocalizedStringFromTable(@"PXCuratedLibrarySelectButtonTitle", @"PhotosUICore");
    [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setSelectButtonTitle:v16];

    if (MEMORY[0x1A590D320]())
    {
      [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setShowSidebarButtonActionPerformer:0];
    }

    else
    {
      v17 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowSidebar"];
      [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setShowSidebarButtonActionPerformer:v17];
    }

    sharedInstance = [off_1E7721810 sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PXCuratedLibraryLayout__updateFloatingHeaderButtons__block_invoke;
    aBlock[3] = &unk_1E7730060;
    v19 = sharedInstance;
    v64 = v19;
    v61 = actionManager;
    v65 = v61;
    selfCopy = self;
    v20 = _Block_copy(aBlock);
    sharedLibraryStatusProvider = [v62 sharedLibraryStatusProvider];
    hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

    v59 = v9;
    v60 = v19;
    v58 = v20;
    if (hasSharedLibraryOrPreview)
    {
      v57 = (*(v20 + 2))(v20);
      libraryFilterState = [(PXCuratedLibraryLayout *)self libraryFilterState];
      isFiltering = [libraryFilterState isFiltering];

      if (v7 != 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v7 != 4)
      {
        v57 = 0;
        isFiltering = 0;
LABEL_21:
        v28 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = &stru_1F1741150;
        v33 = &stru_1F1741150;
        v34 = &stru_1F1741150;
LABEL_33:
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setEllipsisButtonActionPerformer:v57];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setEllipsisButtonHighlighted:isFiltering];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setShowFiltersActionPerformer:v31];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setFilterButtonCaption:v34];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setFilterButtonTitle:v33];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setFilterButtonHighlighted:v30];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setToggleAspectFitButtonActionPerformer:v29];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setToggleAspectFitButtonTitle:v32];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setToggleAspectFitButtonPossibleTitles:v28];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setToggleAspectFitCompactButtonSymbol:v53];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setZoomInButtonActionPerformer:v55];
        [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setZoomOutButtonActionPerformer:v54];
        [(PXCuratedLibraryLayout *)self _updateFloatingHeaderSelectionTitle];

        return;
      }

      v57 = (*(v20 + 2))(v20);
      isFiltering = 0;
    }

    if (![v19 enableFilterDropDownButton])
    {
      isFiltering2 = 0;
      v24 = 0;
      v26 = &stru_1F1741150;
      v51 = &stru_1F1741150;
      goto LABEL_23;
    }

    v24 = [v61 actionPerformerForActionType:@"PXCuratedLibraryActionShowFilters"];
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_19:
        currentContentFilterState = [v62 currentContentFilterState];
        v26 = PXLocalizedCaptionForFilterState(currentContentFilterState);
        v51 = PXLocalizedTitleForFilterState(currentContentFilterState);
        currentContentFilterState2 = [v62 currentContentFilterState];
        isFiltering2 = [currentContentFilterState2 isFiltering];

LABEL_23:
        v49 = v26;
        v52 = v24;
        if ([v19 enableAspectFitButton])
        {
          zoomablePhotosViewModel = [v62 zoomablePhotosViewModel];
          aspectFit = [zoomablePhotosViewModel aspectFit];
          v37 = PXLocalizedStringFromTable(@"PXLibraryAllPhotosToggleSquares", @"PhotosUICore");
          v38 = PXLocalizedStringFromTable(@"PXLibraryAllPhotosToggleFullFrames", @"PhotosUICore");
          v39 = v38;
          if (aspectFit)
          {
            v40 = v37;
          }

          else
          {
            v40 = v38;
          }

          v32 = v40;
          v41 = MEMORY[0x1E695DFD8];
          v67[0] = v39;
          v67[1] = v37;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
          v28 = [v41 setWithArray:v42];

          v43 = aspectFit ^ 1u;
          v29 = [v61 actionPerformerForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];

          v19 = v60;
        }

        else
        {
          v28 = 0;
          v43 = 0;
          v29 = 0;
          v32 = &stru_1F1741150;
        }

        v53 = v43;
        if ([v19 enableZoomInOutButton])
        {
          v55 = [v61 actionPerformerForActionType:@"PXCuratedLibraryActionAllPhotosZoomIn"];
          v54 = [v61 actionPerformerForActionType:@"PXCuratedLibraryActionAllPhotosZoomOut"];
        }

        else
        {
          v54 = 0;
          v55 = 0;
        }

        v33 = v51;
        v31 = v52;
        v34 = v49;
        v30 = isFiltering2;
        goto LABEL_33;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = objc_opt_class();
      v46 = NSStringFromClass(v47);
      px_descriptionForAssertionMessage = [v24 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:857 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[actionManager actionPerformerForActionType:PXCuratedLibraryActionShowFilters]", v46, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:857 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[actionManager actionPerformerForActionType:PXCuratedLibraryActionShowFilters]", v46}];
    }

    goto LABEL_19;
  }
}

void *__45__PXCuratedLibraryLayout__updateLocalSprites__block_invoke(void *result, unsigned int *a2, int a3)
{
  v4 = result;
  v5 = *a2;
  if (a3)
  {
    *a2 = (*(*(result[4] + 8) + 24))++;
    v6 = *a2;
  }

  else
  {
    v6 = -1;
    *a2 = -1;
  }

  if (v5 == -1)
  {
    if (v6 == -1)
    {
      return result;
    }

    v7 = *(*(result[5] + 8) + 40);
    if (!v7)
    {
      v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v12 = *(v4[5] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v7 = *(*(v4[5] + 8) + 40);
      v6 = *a2;
    }
  }

  else
  {
    if (v6 != -1)
    {
      return result;
    }

    v7 = *(*(result[6] + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v9 = *(v4[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(v4[6] + 8) + 40);
    }

    v6 = v5;
  }

  return [v7 addIndex:v6];
}

void __45__PXCuratedLibraryLayout__updateLocalSprites__block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2))
  {
    v3 = 0;
    v4 = *(off_1E7722048 + 6);
    v5 = *(off_1E7722048 + 7);
    v6 = *(off_1E7722048 + 8);
    v7 = *(off_1E7722048 + 9);
    v8 = *(off_1E7722048 + 2);
    v9 = *(off_1E7722048 + 3);
    v10 = *(off_1E7722048 + 4);
    v11 = *(off_1E7722048 + 5);
    v12 = *off_1E7722048;
    v13 = *(off_1E7722048 + 1);
    do
    {
      v14 = (*(a3 + 24) + v3);
      v14[6] = v4;
      v14[7] = v5;
      v14[8] = v6;
      v14[9] = v7;
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v10;
      v14[5] = v11;
      *v14 = v12;
      v14[1] = v13;
      v3 += 160;
    }

    while (160 * HIDWORD(a2) != v3);
  }
}

- (void)_updateZoomLevel
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  zoomLevel = [viewModel zoomLevel];
  if (([viewModel isResetting] & 1) == 0)
  {
    v4 = [(PXCuratedLibraryLayout *)self _createAnchorForTransitionToZoomLevel:zoomLevel];
    autoInvalidate = [v4 autoInvalidate];
  }

  if (zoomLevel == 4)
  {
    p_allPhotosBodyLayout = &self->_allPhotosBodyLayout;
    allPhotosBodyLayout = self->_allPhotosBodyLayout;
    if (allPhotosBodyLayout)
    {
      goto LABEL_9;
    }

    v8 = [off_1E7721998 alloc];
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v10 = [v8 initWithViewModel:zoomablePhotosViewModel];
    v11 = *p_allPhotosBodyLayout;
    *p_allPhotosBodyLayout = v10;

    [*p_allPhotosBodyLayout setBodyLayoutAXGroupRole:1];
    libraryBodyLayout = self->_libraryBodyLayout;
    self->_libraryBodyLayout = 0;
  }

  else
  {
    p_allPhotosBodyLayout = &self->_libraryBodyLayout;
    allPhotosBodyLayout = self->_libraryBodyLayout;
    if (allPhotosBodyLayout)
    {
      goto LABEL_9;
    }

    v13 = [[PXCuratedLibrarySectionedLayout alloc] initWithViewModel:viewModel spec:self->_spec];
    v14 = *p_allPhotosBodyLayout;
    *p_allPhotosBodyLayout = v13;

    [(PXCuratedLibraryLayout *)self _updateLibraryBodyLayoutLateralMargin];
    [(PXCuratedLibraryLayout *)self _updateLibraryBodyLayoutLastVisibleDominantObjectReference];
  }

  allPhotosBodyLayout = *p_allPhotosBodyLayout;
LABEL_9:
  [(PXGSplitLayout *)self setSecondSublayout:allPhotosBodyLayout];
  if (self->_presentedZoomLevel != zoomLevel)
  {
    v15 = [(PXCuratedLibraryLayout *)self createFenceWithType:2];
    [v15 setTimeout:0.1];
    [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
    if (self->_presentedZoomLevel == 4 && [viewModel zoomLevelTransitionPhase])
    {
      [(PXCuratedLibraryLayout *)self _invalidateBlurredBackgroundSnapshot];
    }
  }

  self->_presentedZoomLevel = zoomLevel;
}

- (void)_updateAllPhotosOverlayInsets
{
  [(PXGSplitLayout *)self firstSublayout];
  [objc_claimAutoreleasedReturnValue() lastBaseline];
  [(PXCuratedLibraryLayout *)self spec];
  [objc_claimAutoreleasedReturnValue() spacingBetweenHeaderLastBaselineAndAllPhotosTop];
  PXVisionScaledFloat();
}

- (void)_updateLateralMargin
{
  spec = [(PXCuratedLibraryLayout *)self spec];
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  if ([viewModel zoomLevel] == 3 && objc_msgSend(spec, "userInterfaceIdiom") == 4)
  {
    [spec contentGuideInsetsForScrollAxis:1];
    [viewModel daysMarginScale];
    PXFloatByLinearlyInterpolatingFloats();
  }

  [(PXCuratedLibraryLayout *)self setLateralMargin:0.0];
}

- (void)_updateFloatingHeaderVisibility
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  zoomLevel = [viewModel zoomLevel];
  v5 = zoomLevel;
  if ((zoomLevel - 1) < 2)
  {
    sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
    if ([sharedLibraryStatusProvider hasSharedLibraryOrPreview])
    {
      v6 = 1;
    }

    else
    {
      specManager = [viewModel specManager];
      spec = [specManager spec];
      v6 = [spec userInterfaceIdiom] == 2;
    }

    goto LABEL_10;
  }

  if ((zoomLevel - 3) < 2)
  {
    v6 = 1;
LABEL_10:
    v8 = viewModel;
    goto LABEL_11;
  }

  v8 = viewModel;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:414 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = 0;
LABEL_11:
  specManager2 = [v8 specManager];
  spec2 = [specManager2 spec];
  userInterfaceIdiom = [spec2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    if (v5 != 4)
    {
LABEL_13:
      enableNavigationHeader = 0;
      goto LABEL_16;
    }
  }

  else if (((MEMORY[0x1A590D320]() ^ 1) & v6) != 1)
  {
    goto LABEL_13;
  }

  configuration = [viewModel configuration];
  enableNavigationHeader = [configuration enableNavigationHeader];

LABEL_16:
  librarySummaryPresenter = [viewModel librarySummaryPresenter];
  v17 = librarySummaryPresenter;
  if (((enableNavigationHeader & 1) != 0 || librarySummaryPresenter) && !self->_summaryHelper)
  {
    v18 = objc_alloc_init(PXCuratedLibrarySummaryHelper);
    summaryHelper = self->_summaryHelper;
    self->_summaryHelper = v18;

    [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper setShouldUseAbbreviatedDates:1];
    [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper setDataSource:self];
  }

  floatingHeaderLayout = self->_floatingHeaderLayout;
  if (enableNavigationHeader)
  {
    if (!floatingHeaderLayout)
    {
      v21 = objc_alloc_init(PXCuratedLibrarySectionHeaderLayout);
      v22 = self->_floatingHeaderLayout;
      self->_floatingHeaderLayout = v21;

      [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout setSafeAreaBehavior:2];
      leadingButtonsLayoutGuide = [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout leadingButtonsLayoutGuide];
      [leadingButtonsLayoutGuide registerChangeObserver:self context:PXCuratedLibraryFloatingHeaderLeadingButtonsGuideObserverContext];

      [(PXCuratedLibraryLayout *)self _updateFloatingHeaderButtons];
      [(PXGSplitLayout *)self setFirstSublayout:self->_floatingHeaderLayout];
      floatingHeaderLayout = self->_floatingHeaderLayout;
    }

    axGroup = [(PXCuratedLibrarySectionHeaderLayout *)floatingHeaderLayout axGroup];
    [axGroup setAxRole:4 * (v5 == 4)];

    [(PXCuratedLibraryLayout *)self _updateFloatingHeaderAppearance];
  }

  else if (floatingHeaderLayout)
  {
    [(PXGSplitLayout *)self setFirstSublayout:0];
    leadingButtonsLayoutGuide2 = [(PXCuratedLibrarySectionHeaderLayout *)self->_floatingHeaderLayout leadingButtonsLayoutGuide];
    [leadingButtonsLayoutGuide2 unregisterChangeObserver:self context:PXCuratedLibraryFloatingHeaderLeadingButtonsGuideObserverContext];

    v26 = self->_floatingHeaderLayout;
    self->_floatingHeaderLayout = 0;
  }

  _currentFloatingHeaderSpec = [(PXCuratedLibraryLayout *)self _currentFloatingHeaderSpec];
  v28 = _currentFloatingHeaderSpec;
  if (self->_floatingHeaderLayout && (([_currentFloatingHeaderSpec wantsTitle] & 1) != 0 || (objc_msgSend(v28, "wantsSubtitle") & 1) != 0))
  {
    v29 = v17;
    if (!v17)
    {
      v29 = self->_floatingHeaderLayout;
    }

    goto LABEL_32;
  }

  v29 = v17;
  if (v17)
  {
LABEL_32:
    [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper setOutputPresenter:v29];
    [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper setDataSource:self];
    [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper visibleContentDidChange];
    goto LABEL_33;
  }

  [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper setOutputPresenter:?];
  [(PXCuratedLibrarySummaryHelper *)self->_summaryHelper setDataSource:0];
LABEL_33:
  [(PXCuratedLibraryLayout *)self _updateFloatingHeaderLayoutSpec];
}

- (PXBrowserVisibleContentSnapshot)visibleContentSnapshot
{
  v2 = [[PXCuratedLibraryVisibleContentSnapshot alloc] initWithLibraryLayout:self dateType:0];

  return v2;
}

- (UIEdgeInsets)padding
{
  if (!MEMORY[0x1A590D320](self, a2))
  {
    goto LABEL_6;
  }

  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  if ([spec userInterfaceIdiom] != 1)
  {

    goto LABEL_6;
  }

  viewModel2 = [(PXCuratedLibraryLayout *)self viewModel];
  zoomLevel = [viewModel2 zoomLevel];

  if (zoomLevel != 4)
  {
LABEL_6:
    v13.receiver = self;
    v13.super_class = PXCuratedLibraryLayout;
    [(PXGSplitLayout *)&v13 padding];
    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v14 padding];
  v12 = v11 + 10.0;
LABEL_7:
  result.right = v10;
  result.bottom = v12;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryLayout;
  [(PXCuratedLibraryLayout *)&v3 contentSizeDidChange];
  [(PXCuratedLibraryLayout *)self _invalidateContentBackground];
}

- (void)_updateContentBackground
{
  if (self->_contentBackgroundSpriteIndex != -1)
  {
    [(PXCuratedLibraryLayout *)self contentSize];
    PXEdgeInsetsMake();
  }
}

- (void)_updateBlurredBackground
{
  if (self->_blurredBackgroundSpriteIndex != -1)
  {
    viewModel = [(PXCuratedLibraryLayout *)self viewModel];
    spec = [(PXCuratedLibraryLayout *)self spec];
    v5 = +[PXCuratedLibrarySettings sharedInstance];
    [(PXCuratedLibraryLayout *)self visibleRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(PXCuratedLibraryLayout *)self displayScale];
    v15 = v14;
    zoomLevel = [viewModel zoomLevel];
    [spec blurredBackgroundOpacityForZoomLevel:zoomLevel];
    v18 = v17;
    [spec blurredBackgroundEdgeInsets];
    if (v18 != 0.0)
    {
      PXEdgeInsetsInsetRect();
    }

    v20 = *off_1E77221F8;
    v19 = *(off_1E77221F8 + 1);
    v34 = *(off_1E77221F8 + 3);
    v35 = *(off_1E77221F8 + 2);
    blurredBackgroundMediaVersion = self->_blurredBackgroundMediaVersion;
    v22 = self->_blurredBackgroundMediaVersion != 0;
    [(PXNumberAnimator *)self->_blurredBackgroundOpacityAnimator value];
    if (v18 <= 0.0)
    {
      if (v23 != v18)
      {
        blurredBackgroundOpacityAnimator = self->_blurredBackgroundOpacityAnimator;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __50__PXCuratedLibraryLayout__updateBlurredBackground__block_invoke_3;
        v38[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
        *&v38[4] = v18;
        [(PXNumberAnimator *)blurredBackgroundOpacityAnimator performChangesWithoutAnimation:v38];
      }
    }

    else if (v23 == 0.0)
    {
      v24 = self->_blurredBackgroundOpacityAnimator;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __50__PXCuratedLibraryLayout__updateBlurredBackground__block_invoke;
      v40[3] = &unk_1E772FFE8;
      v41 = spec;
      v42 = zoomLevel;
      [(PXNumberAnimator *)v24 performChangesWithoutAnimation:v40];
      v25 = self->_blurredBackgroundOpacityAnimator;
      [v5 blurredBackgroundFadeDuration];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __50__PXCuratedLibraryLayout__updateBlurredBackground__block_invoke_2;
      v39[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
      *&v39[4] = v18;
      [(PXNumberAnimator *)v25 performChangesWithDuration:3 curve:v39 changes:?];
    }

    entityManager = [(PXCuratedLibraryLayout *)self entityManager];
    entityManager2 = [(PXGExposureBlurEffect *)self->_blurredBackgroundEffect entityManager];

    if (entityManager2 != entityManager)
    {
      if (blurredBackgroundMediaVersion)
      {
        v29 = [off_1E77215E8 alloc];
        entityManager3 = [(PXCuratedLibraryLayout *)self entityManager];
        v31 = [v29 initWithEntityManager:entityManager3];
        blurredBackgroundEffect = self->_blurredBackgroundEffect;
        self->_blurredBackgroundEffect = v31;

        [(PXGExposureBlurEffect *)self->_blurredBackgroundEffect setExposure:0.0];
        [v5 blurredBackgroundRadius];
        [(PXGExposureBlurEffect *)self->_blurredBackgroundEffect setRadius:?];
      }
    }

    blurredBackgroundSpriteIndex = self->_blurredBackgroundSpriteIndex;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __50__PXCuratedLibraryLayout__updateBlurredBackground__block_invoke_4;
    v36[3] = &unk_1E7730010;
    v36[5] = v7;
    v36[6] = v9;
    v36[7] = v11;
    v36[8] = v13;
    v36[9] = v20;
    v36[10] = v19;
    v36[11] = v35;
    v36[12] = v34;
    v37 = v22;
    v36[13] = v15;
    v36[4] = self;
    [(PXCuratedLibraryLayout *)self modifySpritesInRange:blurredBackgroundSpriteIndex | 0x100000000 fullState:v36];
    [(PXCuratedLibraryLayout *)self _invalidateBlurredBackgroundOpacity];
  }
}

void __50__PXCuratedLibraryLayout__updateBlurredBackground__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[2];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v18.origin.x = v6;
  v18.origin.y = v7;
  v18.size.width = v8;
  v18.size.height = v9;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  MidY = CGRectGetMidY(v19);
  v20.origin.x = v6;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  Height = CGRectGetHeight(v21);
  v13.f64[0] = Width;
  v13.f64[1] = Height;
  *v5 = MidX;
  *&v5[1] = MidY;
  v5[2] = 0x402A000000000000;
  v5[3] = vcvt_f32_f64(v13);
  *(a3[3] + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 72)), *(a1 + 88));
  if (*(a1 + 112))
  {
    v14 = 9;
  }

  else
  {
    v14 = 0;
  }

  v15 = a3[4];
  v15->i8[1] = v14;
  v16 = *(a1 + 104);
  v15[1] = vmul_n_f32(v5[3], v16);
  *(a3[4] + 32) = *(*(a1 + 32) + 1160);
  PXGSectionedSpriteTagMake();
}

- (void)_invalidateBlurredBackgroundOpacity
{
  if (self->_isPerformingUpdate)
  {

    [(PXCuratedLibraryLayout *)self _updateBlurredBackgroundOpacity];
    return;
  }

  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_10:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x800;
      return;
    }

LABEL_9:
    if ((self->_postUpdateFlags.updated & 0x800) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout _invalidateBlurredBackgroundOpacity]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXCuratedLibraryLayout.m" lineNumber:707 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_9;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 2048;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibraryLayout *)self setNeedsUpdate];
  }
}

- (void)_updateBlurredBackgroundOpacity
{
  blurredBackgroundSpriteIndex = self->_blurredBackgroundSpriteIndex;
  if (blurredBackgroundSpriteIndex != -1)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__PXCuratedLibraryLayout__updateBlurredBackgroundOpacity__block_invoke;
    v5[3] = &unk_1E7730038;
    v5[4] = self;
    [(PXCuratedLibraryLayout *)self modifySpritesInRange:blurredBackgroundSpriteIndex | 0x100000000 fullState:v5];
  }
}

float __57__PXCuratedLibraryLayout__updateBlurredBackgroundOpacity__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(a1 + 32) + 1112) presentationValue];
  result = v4;
  **(a3 + 24) = result;
  return result;
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (void)_updateStatusBarGradientVisibility
{
  if (self->_wantsStatusBarGradient)
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v22 = v3;
    [(PXCuratedLibraryLayout *)self displayScale];
    v8 = v7;
    [(PXCuratedLibraryLayout *)self visibleRect];
    statusBarGradientHeight = self->_statusBarGradientHeight;
    statusBarGradientSpriteIndex = self->_statusBarGradientSpriteIndex;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__PXCuratedLibraryLayout__updateStatusBarGradientVisibility__block_invoke;
    v17[3] = &unk_1E772FFC0;
    v17[6] = v11;
    v17[7] = v12;
    *&v17[8] = statusBarGradientHeight;
    v17[4] = self;
    v17[5] = 0;
    v18 = v8;
    [(PXCuratedLibraryLayout *)self modifySpritesInRange:statusBarGradientSpriteIndex | 0x100000000 state:v17];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PXCuratedLibraryLayout__updateStatusBarGradientVisibility__block_invoke_2;
    aBlock[3] = &unk_1E7743F48;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    _statusBarVisibility = [(PXCuratedLibraryLayout *)self _statusBarVisibility];
    v15.n128_u64[0] = 0;
    if ((_statusBarVisibility & 2) == 0)
    {
      if ((_statusBarVisibility & 1) == 0)
      {
LABEL_6:

        return;
      }

      v15.n128_u64[0] = *&self->_statusBarGradientAlpha;
    }

    v13[2](v13, v15);
    goto LABEL_6;
  }
}

void __60__PXCuratedLibraryLayout__updateStatusBarGradientVisibility__block_invoke(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, float32x2_t *a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v18.origin.x = v9;
  v18.origin.y = v10;
  v18.size.width = v11;
  v18.size.height = v12;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v9;
  v19.origin.y = v10;
  v19.size.width = v11;
  v19.size.height = v12;
  MidY = CGRectGetMidY(v19);
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  Height = CGRectGetHeight(v21);
  v16.f64[0] = Width;
  v16.f64[1] = Height;
  *a3 = MidX;
  *&a3[1] = MidY;
  a3[2] = 0xBFF8000000000000;
  a3[3] = vcvt_f32_f64(v16);
  *(a4 + 68) = *(*(a1 + 32) + 1120);
  a5->i8[1] = 1;
  a5[1] = vmul_n_f32(a3[3], *(a1 + 72));
  PXGSectionedSpriteTagMake();
}

- (int64_t)_statusBarVisibility
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];

  layoutOrientation = [spec layoutOrientation];
  sizeClass = [spec sizeClass];
  [(PXCuratedLibraryLayout *)self safeAreaInsets];
  v10 = v9;
  [(PXCuratedLibraryLayout *)self visibleRect];
  v12 = v11;
  presentedZoomLevel = [(PXCuratedLibraryLayout *)self presentedZoomLevel];
  v16 = (layoutOrientation != 2 || sizeClass != 1) && (presentedZoomLevel - 1) < 2;
  if (v16 && v12 > -v10)
  {
    v17 = 5;
  }

  else
  {
    v17 = 6;
  }

  if (v16 && v12 > -v10 || !v16)
  {
    if (presentedZoomLevel == 4)
    {
      if ([zoomablePhotosViewModel wantsOverBackgroundFloatingHeaderAppearance])
      {
        if (zoomablePhotosViewModel)
        {
          [zoomablePhotosViewModel zoomState];
          if (v19 >= 1.0)
          {
            v17 |= 8uLL;
          }
        }
      }
    }
  }

  else if (v12 <= -v10)
  {
    v17 = 10;
  }

  else
  {
    v17 = 6;
  }

  return v17;
}

uint64_t __60__PXCuratedLibraryLayout__updateStatusBarGradientVisibility__block_invoke_2(uint64_t a1, double a2)
{
  result = [*(*(a1 + 32) + 1104) value];
  if (v5 != a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 1104);
    v8 = *(v6 + 1144);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__PXCuratedLibraryLayout__updateStatusBarGradientVisibility__block_invoke_3;
    v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v9[4] = a2;
    return [v7 performChangesWithDuration:4 curve:v9 changes:v8];
  }

  return result;
}

- (void)_updateStatusBarStyle
{
  v3 = ([(PXCuratedLibraryLayout *)self _statusBarVisibility]& 8) == 0;
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PXCuratedLibraryLayout__updateStatusBarStyle__block_invoke;
  v5[3] = &__block_descriptor_33_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v6 = v3;
  [viewModel performChanges:v5];
}

- (void)_updateStatusBarGradientAlphaValue
{
  if (self->_wantsStatusBarGradient)
  {
    statusBarGradientSpriteIndex = self->_statusBarGradientSpriteIndex;
    if (statusBarGradientSpriteIndex != -1)
    {
      v5[5] = v2;
      v5[6] = v3;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __60__PXCuratedLibraryLayout__updateStatusBarGradientAlphaValue__block_invoke;
      v5[3] = &unk_1E77369E0;
      v5[4] = self;
      [(PXCuratedLibraryLayout *)self modifySpritesInRange:statusBarGradientSpriteIndex | 0x100000000 state:v5];
    }
  }
}

float __60__PXCuratedLibraryLayout__updateStatusBarGradientAlphaValue__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  [*(*(a1 + 32) + 1104) presentationValue];
  result = v5;
  *a4 = result;
  return result;
}

void __32__PXCuratedLibraryLayout_update__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsResetting:0];
  [v2 setIsNavigating:0];
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXCuratedLibraryLayout.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXCuratedLibraryLayout.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (PXSectionedObjectReference)dominantObjectReference
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__96121;
  v9 = __Block_byref_object_dispose__96122;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PXCuratedLibraryLayout_PXCuratedLibraryEventTracker__dominantObjectReference__block_invoke;
  v4[3] = &unk_1E7737BA0;
  v4[4] = self;
  v4[5] = &v5;
  [(PXCuratedLibraryLayout *)self enumerateVisibleAnchoringSpriteIndexesUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __79__PXCuratedLibraryLayout_PXCuratedLibraryEventTracker__dominantObjectReference__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectReferenceForSpriteIndex:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (CGRect)presentedVisibleRect
{
  x = self->_presentedVisibleRect.origin.x;
  y = self->_presentedVisibleRect.origin.y;
  width = self->_presentedVisibleRect.size.width;
  height = self->_presentedVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)axLocalizedLabel
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel > 1)
  {
    switch(zoomLevel)
    {
      case 4:
        v6 = @"PXCuratedLibraryAllPhotosZoomLevelButtonTitle";
        goto LABEL_11;
      case 3:
        v6 = @"PXCuratedLibraryDaysZoomLevelButtonTitle";
        goto LABEL_11;
      case 2:
        v6 = @"PXCuratedLibraryMonthsZoomLevelButtonTitle";
LABEL_11:
        v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
        goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (zoomLevel)
  {
    if (zoomLevel == 1)
    {
      v6 = @"PXCuratedLibraryYearsZoomLevelButtonTitle";
      goto LABEL_11;
    }

LABEL_16:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:2021 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (int64_t)viewModel:(id)model transitionTypeFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel
{
  v8 = +[PXCuratedLibrarySettings sharedInstance];
  spec = [(PXCuratedLibraryLayout *)self spec];
  if ([v8 allowsModularLayoutForZoomLevel:level sizeClass:objc_msgSend(spec orientation:"sizeClass") layoutStyle:{objc_msgSend(spec, "layoutOrientation"), objc_msgSend(spec, "layoutStyle")}])
  {
    v10 = 2;
  }

  else if ([v8 allowsModularLayoutForZoomLevel:zoomLevel sizeClass:objc_msgSend(spec orientation:"sizeClass") layoutStyle:{objc_msgSend(spec, "layoutOrientation"), objc_msgSend(spec, "layoutStyle")}])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)viewModel:(id)model dominantAssetCollectionReferenceForZoomLevel:(int64_t)level
{
  modelCopy = model;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  v8 = [libraryBodyLayout viewModel:modelCopy dominantAssetCollectionReferenceForZoomLevel:level];

  return v8;
}

- (void)viewModel:(id)model didTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel
{
  v6 = [(PXCuratedLibraryLayout *)self dominantHeroPreferencesBeforeTransition:model];
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [libraryBodyLayout setDominantHeroPreferences:v6];

  [(PXCuratedLibraryLayout *)self setDominantHeroPreferencesBeforeTransition:0];
}

- (void)viewModel:(id)model willTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel
{
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  dominantHeroPreferences = [libraryBodyLayout dominantHeroPreferences];
  [(PXCuratedLibraryLayout *)self setDominantHeroPreferencesBeforeTransition:dominantHeroPreferences];

  if (level >= zoomLevel)
  {
    levelCopy = zoomLevel;
  }

  else
  {
    levelCopy = level;
  }

  if (level <= zoomLevel)
  {
    levelCopy2 = zoomLevel;
  }

  else
  {
    levelCopy2 = level;
  }

  if (levelCopy == 1 && levelCopy2 == 2)
  {
    spec = [(PXCuratedLibraryLayout *)self spec];
    v12 = +[PXCuratedLibrarySettings sharedInstance];
    v13 = [v12 allowsModularLayoutForZoomLevel:2 sizeClass:objc_msgSend(spec orientation:"sizeClass") layoutStyle:{objc_msgSend(spec, "layoutOrientation"), objc_msgSend(spec, "layoutStyle")}];

    if (v13)
    {
      [libraryBodyLayout setPrefersDominantHero:1 forZoomLevel:2];
    }
  }
}

- (CGPoint)anchor:(id)anchor visibleRectOriginForProposedVisibleRect:(CGRect)rect forLayout:(id)layout
{
  y = rect.origin.y;
  x = rect.origin.x;
  if (layout != self)
  {
    goto LABEL_11;
  }

  height = rect.size.height;
  width = rect.size.width;
  context = [anchor context];
  v11 = [context objectForKeyedSubscript:@"fromZoomLevel"];
  integerValue = [v11 integerValue];

  v13 = [context objectForKeyedSubscript:@"toZoomLevel"];
  integerValue2 = [v13 integerValue];

  if ((integerValue2 - 1) >= 2)
  {
    if (integerValue2 != 3 || integerValue != 4)
    {
      goto LABEL_8;
    }

    [(PXCuratedLibraryLayout *)self _adjustedTargetVisibleTopByAligningNearestHeroForProposedTargetVisibleTop:y];
  }

  else
  {
    v22 = 0;
    [(PXCuratedLibraryLayout *)self adjustedTargetVisibleTopForProposedTargetVisibleTop:&v22 scrollingVelocity:y decelerationRate:NAN];
  }

  y = v15;
LABEL_8:
  v16 = [context objectForKeyedSubscript:@"fromBottomPaddingAreaIsFullyVisible"];

  if (v16)
  {
    v17 = [context objectForKeyedSubscript:@"fromBottomPaddingAreaIsFullyVisible"];
    bOOLValue = [v17 BOOLValue];

    [(PXCuratedLibraryLayout *)self _adjustedTargetVisibleTopToAccomodateFromBottomPaddedAreaVisibility:bOOLValue proposedVisibleRect:x, y, width, height];
    y = v19;
  }

LABEL_11:
  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_contentBackgroundSpriteIndex == index)
  {
    viewModel = [(PXCuratedLibraryLayout *)self viewModel];
    specManager = [viewModel specManager];
    spec = [specManager spec];
    contentBackgroundColor = [spec contentBackgroundColor];
    v12 = contentBackgroundColor;
    if (contentBackgroundColor)
    {
      clearColor = contentBackgroundColor;
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    blueColor = clearColor;
  }

  else
  {
    if (self->_blurredBackgroundSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1905 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    blueColor = [MEMORY[0x1E69DC888] blueColor];
  }

  return blueColor;
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_statusBarGradientSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1883 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  spec = [(PXCuratedLibraryLayout *)self spec];
  statusBarGradientImageConfiguration = [spec statusBarGradientImageConfiguration];

  return statusBarGradientImageConfiguration;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v7 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
    [libraryBodyLayout setSpec:v7];

    [(PXCuratedLibraryLayout *)self _updateFloatingHeaderLayoutSpec];
    [(PXCuratedLibraryLayout *)self _updateFloatingHeaderButtons];
    specCopy = v7;
  }
}

- (void)_updateLibraryBodyLayoutLateralMargin
{
  [(PXCuratedLibraryLayout *)self lateralMargin];
  v4 = v3;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [libraryBodyLayout setLateralMargin:v4];
}

- (void)setLateralMargin:(double)margin
{
  if (self->_lateralMargin != margin)
  {
    self->_lateralMargin = margin;
    [(PXCuratedLibraryLayout *)self _updateLibraryBodyLayoutLateralMargin];

    [(PXCuratedLibraryLayout *)self _updateFloatingHeaderLayoutSpec];
  }
}

- (void)setLastVisibleDominantObjectReference:(id)reference
{
  objc_storeStrong(&self->_lastVisibleDominantObjectReference, reference);

  [(PXCuratedLibraryLayout *)self _updateLibraryBodyLayoutLastVisibleDominantObjectReference];
}

- (void)setLastHitSpriteReference:(id)reference
{
  objc_storeStrong(&self->_lastHitSpriteReference, reference);
  referenceCopy = reference;
  [(PXCuratedLibrarySectionedLayout *)self->_libraryBodyLayout setLastHitSpriteReference:referenceCopy];
}

- (CGRect)sectionBoundariesForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [libraryBodyLayout sectionBoundariesForAssetCollectionReference:referenceCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(PXCuratedLibraryLayout *)self convertRect:libraryBodyLayout fromDescendantLayout:v7, v9, v11, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)enumerateVisibleAssetReferencesUsingBlock:(id)block
{
  blockCopy = block;
  [(PXCuratedLibraryLayout *)self visibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__PXCuratedLibraryLayout_enumerateVisibleAssetReferencesUsingBlock___block_invoke;
  v14[3] = &unk_1E7730240;
  v14[4] = self;
  v15 = blockCopy;
  v13 = blockCopy;
  [(PXCuratedLibraryLayout *)self enumerateSpritesInRect:v14 usingBlock:v6, v8, v10, v12];
}

void __68__PXCuratedLibraryLayout_enumerateVisibleAssetReferencesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a7;
  if (*(a6 + 1) == 2)
  {
    v12 = v10;
    v11 = [*(a1 + 32) objectReferenceForSpriteIndex:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      PXRectWithCenterAndSize();
    }

    v10 = v12;
  }
}

- (void)enumerateVisibleAssetsSectionSublayoutsUsingBlock:(id)block
{
  blockCopy = block;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [libraryBodyLayout visibleRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PXCuratedLibraryLayout_enumerateVisibleAssetsSectionSublayoutsUsingBlock___block_invoke;
  v15[3] = &unk_1E7730218;
  v16 = blockCopy;
  v14 = blockCopy;
  [libraryBodyLayout enumerateAssetsSectionSublayoutsInRect:v15 usingBlock:{v7, v9, v11, v13}];
}

- (id)topMostAssetCollectionReference
{
  [(PXCuratedLibraryLayout *)self viewModel];
  objc_claimAutoreleasedReturnValue();
  [(PXCuratedLibraryLayout *)self visibleRect];
  [(PXCuratedLibraryLayout *)self safeAreaInsets];
  PXEdgeInsetsInsetRect();
}

- (id)topMostAssetCollectionInRect:(CGRect)rect ignoreChapterHeaders:(BOOL)headers
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__30072;
  v31 = __Block_byref_object_dispose__30073;
  v32 = 0;
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  if ([viewModel zoomLevel] == 4)
  {
    currentDataSource = [viewModel currentDataSource];
    firstAssetCollection = [currentDataSource firstAssetCollection];
  }

  else
  {
    v13 = +[PXCuratedLibrarySettings sharedInstance];
    [v13 minimumVisibleHeightForTopMostSection];
    v15 = v14;

    libraryBodyLayout = self->_libraryBodyLayout;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__PXCuratedLibraryLayout_topMostAssetCollectionInRect_ignoreChapterHeaders___block_invoke;
    v18[3] = &unk_1E77301F0;
    v21 = x;
    v22 = y;
    v23 = width;
    v24 = height;
    v25 = v15;
    v18[4] = self;
    v20 = &v27;
    headersCopy = headers;
    v19 = viewModel;
    [(PXCuratedLibrarySectionedLayout *)libraryBodyLayout enumerateAssetsSectionSublayoutsInRect:v18 usingBlock:x, y, width, height];

    firstAssetCollection = v28[5];
  }

  _Block_object_dispose(&v27, 8);

  return firstAssetCollection;
}

void __76__PXCuratedLibraryLayout_topMostAssetCollectionInRect_ignoreChapterHeaders___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, BOOL *a8)
{
  v23 = CGRectIntersection(*&a3, *(a1 + 56));
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  if (!CGRectIsEmpty(v23))
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (CGRectGetHeight(v24) >= *(a1 + 88))
    {
      v15 = [*(*(a1 + 32) + 1192) presentedDataSource];
      v21[0] = [v15 identifier];
      v21[1] = a2;
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      v22 = vnegq_f64(v16);
      v17 = [v15 assetCollectionAtSectionIndexPath:v21];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = *(a1 + 96) != 1 || !PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(*(*(*(a1 + 48) + 8) + 40), [*(a1 + 40) zoomLevel]);
      *a8 = v20;
    }
  }
}

- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  _currentBodyLayout = [(PXCuratedLibraryLayout *)self _currentBodyLayout];
  if (_currentBodyLayout)
  {
    [(PXCuratedLibraryLayout *)self convertRect:_currentBodyLayout toDescendantLayout:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  if (CGRectIsNull(v25))
  {
    v19 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v20, 0x16u);
    }
  }

  else
  {
    [_currentBodyLayout enumerateAssetsInRect:enumeratorCopy enumerator:{v12, v14, v16, v18}];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  _currentBodyLayout = [(PXCuratedLibraryLayout *)self _currentBodyLayout];
  if (_currentBodyLayout)
  {
    [(PXCuratedLibraryLayout *)self convertRect:_currentBodyLayout toDescendantLayout:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  if (CGRectIsNull(v25))
  {
    v19 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", &v20, 0x16u);
    }
  }

  else
  {
    [_currentBodyLayout enumerateAssetCollectionsInRect:enumeratorCopy enumerator:{v12, v14, v16, v18}];
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _currentBodyLayout = [(PXCuratedLibraryLayout *)self _currentBodyLayout];
  if (_currentBodyLayout)
  {
    [(PXCuratedLibraryLayout *)self convertRect:_currentBodyLayout toDescendantLayout:x, y, width, height];
    if (!CGRectIsNull(v12))
    {
      PXPointIsNull();
    }
  }

  v9 = [&__block_literal_global_338 copy];

  return v9;
}

- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _currentBodyLayout = [(PXCuratedLibraryLayout *)self _currentBodyLayout];
  if (_currentBodyLayout)
  {
    [(PXCuratedLibraryLayout *)self convertRect:_currentBodyLayout toDescendantLayout:x, y, width, height];
    if (!CGRectIsNull(v13))
    {
      PXPointIsNull();
    }
  }

  v10 = [&__block_literal_global_335 copy];

  return v10;
}

- (id)_createAnchorForTransitionToZoomLevel:(int64_t)level
{
  presentedZoomLevel = [(PXCuratedLibraryLayout *)self presentedZoomLevel];
  v7 = 0;
  if (presentedZoomLevel)
  {
    v8 = presentedZoomLevel;
    if (presentedZoomLevel != level)
    {
      if (presentedZoomLevel == 3)
      {
        libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
        dominantSectionLayout = [libraryBodyLayout dominantSectionLayout];
        assetCollectionReference = [dominantSectionLayout assetCollectionReference];
      }

      else
      {
        assetCollectionReference = 0;
      }

      lastVisibleAreaAnchorsByZoomLevels = self->_lastVisibleAreaAnchorsByZoomLevels;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:level];
      v14 = [(NSMutableDictionary *)lastVisibleAreaAnchorsByZoomLevels objectForKeyedSubscript:v13];

      if ([v14 canBeReused])
      {
        v7 = [(PXCuratedLibraryLayout *)self createAnchorWithAnchor:v14];
LABEL_26:
        [(PXCuratedLibraryLayout *)self setLastPresentedDayAssetCollectionReference:assetCollectionReference];

        goto LABEL_27;
      }

      v57 = a2;
      createAnchorForVisibleArea = [(PXCuratedLibraryLayout *)self createAnchorForVisibleArea];
      autoInvalidate = [createAnchorForVisibleArea autoInvalidate];
      v17 = self->_lastVisibleAreaAnchorsByZoomLevels;
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      [(NSMutableDictionary *)v17 setObject:autoInvalidate forKeyedSubscript:v18];

      lastVisibleDominantObjectReference = [(PXCuratedLibraryLayout *)self lastVisibleDominantObjectReference];
      v20 = "anager";
      v58 = v14;
      v59 = assetCollectionReference;
      if (!lastVisibleDominantObjectReference)
      {
        if (v8 == 4)
        {
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __64__PXCuratedLibraryLayout__createAnchorForTransitionToZoomLevel___block_invoke;
          v67[3] = &unk_1E7730178;
          v67[4] = self;
          [(PXCuratedLibraryLayout *)self enumerateVisibleAnchoringSpriteIndexesUsingBlock:v67];
          lastVisibleDominantObjectReference2 = [(PXCuratedLibraryLayout *)self lastVisibleDominantObjectReference];
          v55 = lastVisibleDominantObjectReference2;
          goto LABEL_17;
        }

        libraryBodyLayout2 = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
        dominantSectionLayout2 = [libraryBodyLayout2 dominantSectionLayout];

        lastVisibleDominantObjectReference = [dominantSectionLayout2 assetCollectionReference];
        if ([dominantSectionLayout2 presentedSkimming])
        {
          viewModel = [(PXCuratedLibraryLayout *)self viewModel];
          assetsDataSourceManager = [viewModel assetsDataSourceManager];
          v56 = [assetsDataSourceManager dataSourceForZoomLevel:v8];

          viewModel2 = [(PXCuratedLibraryLayout *)self viewModel];
          assetsDataSourceManager2 = [viewModel2 assetsDataSourceManager];
          v28 = [assetsDataSourceManager2 dataSourceForZoomLevel:level];

          v29 = [v56 assetCollectionReferenceNearestToObjectReference:lastVisibleDominantObjectReference];

          [(PXCuratedLibraryLayout *)self setLastVisibleDominantObjectReference:v29];
          lastVisibleDominantObjectReference = [v28 assetCollectionReferenceNearestToObjectReference:v29];

          v20 = "MacSyncedAssetsNotificationListManager" + 32;
        }

        else
        {
          [(PXCuratedLibraryLayout *)self setLastVisibleDominantObjectReference:lastVisibleDominantObjectReference];
        }
      }

      v30 = lastVisibleDominantObjectReference;
      v31 = v30;
      if (v8 != 4)
      {
        viewModel3 = [(PXCuratedLibraryLayout *)self viewModel];
        assetsDataSourceManager3 = [viewModel3 assetsDataSourceManager];
        v46 = [assetsDataSourceManager3 dataSourceForZoomLevel:v8];

        v42 = [v46 assetCollectionReferenceNearestToObjectReference:v31];

        v41 = 0x1E696A000uLL;
        if (v42)
        {
LABEL_20:
          v66 = 0;
          v43 = [(PXCuratedLibraryLayout *)self spriteIndexForObjectReference:v42 options:1 updatedObjectReference:&v66];
LABEL_23:
          v14 = v58;
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = *(v20 + 63);
          v60[2] = __64__PXCuratedLibraryLayout__createAnchorForTransitionToZoomLevel___block_invoke_2;
          v60[3] = &unk_1E77301C8;
          v60[4] = self;
          v65 = v43;
          v47 = v31;
          v61 = v47;
          levelCopy = level;
          v63 = v57;
          v64 = v8;
          v7 = [(PXCuratedLibraryLayout *)self createAnchorWithConstraints:v60];
          v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v49 = [*(v41 + 3480) numberWithInteger:v8];
          [v48 setObject:v49 forKeyedSubscript:@"fromZoomLevel"];

          v50 = [*(v41 + 3480) numberWithInteger:level];
          [v48 setObject:v50 forKeyedSubscript:@"toZoomLevel"];

          [(PXCuratedLibraryLayout *)self padding];
          if (v51 > 0.0)
          {
            [(PXCuratedLibraryLayout *)self visibleRect];
            [(PXCuratedLibraryLayout *)self safeAreaInsets];
            PXEdgeInsetsInsetRect();
          }

          [v7 setDelegate:self];
          [v7 setContext:v48];
          preferredVisibleAreaAnchorsByZoomLevels = self->_preferredVisibleAreaAnchorsByZoomLevels;
          v53 = [*(v41 + 3480) numberWithInteger:level];
          [(NSMutableDictionary *)preferredVisibleAreaAnchorsByZoomLevels setObject:v7 forKeyedSubscript:v53];

          assetCollectionReference = v59;
          goto LABEL_26;
        }

LABEL_22:
        v43 = -1;
        goto LABEL_23;
      }

      v55 = v30;
      lastVisibleDominantObjectReference2 = v30;
LABEL_17:
      viewModel4 = [(PXCuratedLibraryLayout *)self viewModel];
      assetsDataSourceManager4 = [viewModel4 assetsDataSourceManager];
      v34 = [assetsDataSourceManager4 dataSourceForZoomLevel:level];

      v35 = lastVisibleDominantObjectReference2;
      v36 = [v34 assetCollectionReferenceNearestToObjectReference:lastVisibleDominantObjectReference2];
      assetCollection = [v36 assetCollection];
      lastPresentedDayAssetCollectionReference = [(PXCuratedLibraryLayout *)self lastPresentedDayAssetCollectionReference];
      assetCollection2 = [lastPresentedDayAssetCollectionReference assetCollection];
      v40 = [assetCollection isEqual:assetCollection2];

      if ((v40 & 1) == 0)
      {
        v55 = v36;
      }

      v41 = 0x1E696A000;
      v20 = "MacSyncedAssetsNotificationListManager" + 32;
      v42 = v35;
      v31 = v55;
      if (v42)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

LABEL_27:

  return v7;
}

void __64__PXCuratedLibraryLayout__createAnchorForTransitionToZoomLevel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectReferenceForSpriteIndex:a2];
  if (v6)
  {
    v7 = v6;
    [*(a1 + 32) setLastVisibleDominantObjectReference:v6];
    v6 = v7;
    *a4 = 1;
  }
}

void __64__PXCuratedLibraryLayout__createAnchorForTransitionToZoomLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXCuratedLibraryLayout__createAnchorForTransitionToZoomLevel___block_invoke_3;
  v8[3] = &unk_1E77301A0;
  v14 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v11 = v3;
  v7 = v3;
  [v4 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v8];
}

void __64__PXCuratedLibraryLayout__createAnchorForTransitionToZoomLevel___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = [*(a1 + 40) objectReferenceForSpriteIndex:a2];
  }

  v5 = v4;
  v6 = [*(a1 + 40) spriteReferenceForSpriteIndex:a2 objectReference:v4];
  v7 = *off_1E7721FA8;
  v8 = *(off_1E7721FA8 + 2);
  v9 = *(a1 + 56);
  if ((v9 - 1) < 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [*(a1 + 40) viewModel];
      v13 = [v12 assetsDataSourceManager];
      v14 = [v13 dataSourceForZoomLevel:*(a1 + 56)];

      v15 = [v14 objectReferenceNearestToObjectReference:v5];
      if (v14)
      {
        [v14 indexPathForObjectReference:v15];
      }

      if (*off_1E7721F68)
      {
        v17 = 1;
        v16 = [v14 numberOfSections] == 1;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (*(a1 + 72) == 3 && *(a1 + 56) == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = v5;
        v48 = [v15 assetCollection];
        v46 = v23;
        v24 = [v23 keyAssetReference];
        v25 = [v24 asset];
        v47 = [v25 creationDate];

        v26 = [v48 startDate];
        v27 = [v48 endDate];
        v45 = [v47 px_isBetweenDate:v26 andDate:v27];

        if (v45)
        {
          v10 = 0;
        }

        else
        {
          v41 = [v48 startDate];
          [v47 timeIntervalSinceDate:v41];
          v43 = v42;

          if (v43 < 0.0)
          {
            v10 = 1;
          }

          else
          {
            v10 = -1;
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v10 = 0;
    }

    v28 = [*(a1 + 40) libraryBodyLayout];
    v29 = [v28 spec];
    [v29 defaultInterlayoutSpacingForZoomLevel:*(a1 + 56)];
    v31 = v30 + v30;

    if (v17)
    {
      v21 = v7;
    }

    else
    {
      v21 = v7 + v31;
    }

    if (v16)
    {
      v20 = v8;
    }

    else
    {
      v20 = v8 + v31;
    }

    if (*(a1 + 72) == 1 && *(a1 + 56) == 2)
    {
      v32 = [*(a1 + 40) spec];
      if ([v32 allowsPaginatedScrollingInYearsAndMonths])
      {
        v33 = +[PXCuratedLibrarySettings sharedInstance];
        v34 = [v33 allowsModularLayoutForZoomLevel:*(a1 + 56) sizeClass:objc_msgSend(v32 orientation:"sizeClass") layoutStyle:{objc_msgSend(v32, "layoutOrientation"), objc_msgSend(v32, "layoutStyle")}];

        if (v34)
        {
          [*(a1 + 40) visibleRect];
          v20 = CGRectGetHeight(v49) / 3.0;
          v21 = v20;
        }
      }
    }

    v11 = 1;
  }

  else
  {
    if (v9 != 3)
    {
      if (!v9)
      {
        v44 = [MEMORY[0x1E696AAA8] currentHandler];
        [v44 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PXCuratedLibraryLayout.m" lineNumber:1557 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v10 = 0;
      v11 = 1;
      goto LABEL_14;
    }

    v18 = [*(a1 + 40) spec];
    v19 = [v18 isTopSafeAreaFullyCovered];

    if (v19)
    {
      v10 = 0;
      v11 = 3;
LABEL_14:
      v20 = v8;
      v21 = v7;
      goto LABEL_40;
    }

    [*(a1 + 40) safeAreaInsets];
    v10 = 0;
    v21 = -v22;
    v11 = 3;
    v20 = v8;
  }

LABEL_40:
  [*(a1 + 48) keepVisiblePortionOfSpriteWithReference:v6 referencingOptions:v11 padding:1 visuallyStableForAttribute:{v7, *(off_1E7721FA8 + 1), v8, *(off_1E7721FA8 + 3)}];
  if (v10)
  {
    [*(a1 + 40) safeAreaInsets];
    v36 = v35;
    [*(a1 + 40) visibleRect];
    v37 = CGRectGetHeight(v50) * 0.5 - v36;
    v38 = *(a1 + 48);
    if (v10 < 0)
    {
      [v38 keepEdge:3 ofSpriteWithReference:v6 referencingOptions:v11 lessThanOrEqualToVisibleEdge:1 offset:v37];
      goto LABEL_46;
    }

    v39 = v6;
    v40 = v11;
  }

  else
  {
    [*(a1 + 48) keepEdge:3 ofSpriteWithReference:v6 referencingOptions:v11 lessThanOrEqualToVisibleEdge:3 offset:-v20];
    v38 = *(a1 + 48);
    v39 = v6;
    v40 = v11;
    v37 = v21;
  }

  [v38 keepEdge:1 ofSpriteWithReference:v39 referencingOptions:v40 greaterThanOrEqualToVisibleEdge:1 offset:v37];
LABEL_46:
}

- (id)createCuratedLibraryLayoutAnimationIfNeededWithContext:(int64_t)context userData:(id)data
{
  dataCopy = data;
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  if ([viewModel isResetting] & 1) != 0 || (objc_msgSend(viewModel, "isAppearing"))
  {
    goto LABEL_8;
  }

  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  if (zoomablePhotosViewModel)
  {
    v9 = zoomablePhotosViewModel;
    [zoomablePhotosViewModel zoomState];

    if (BYTE8(v15))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  if ([off_1E7721408 px_accessibilityIsReduceMotionEnabled])
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = [PXCuratedLibraryLayoutAnimationHelper createAnimationIfNeededForLayout:self context:context userData:dataCopy];
  [(PXCuratedLibraryLayout *)self _noteAnimation:v10 isRunning:1];
LABEL_9:

  return v10;
}

- (int64_t)curatedLibraryLayoutAnimationContextForTransitionToZoomLevel:(int64_t)level
{
  presentedZoomLevel = self->_presentedZoomLevel;
  v4 = presentedZoomLevel == 4 || level == 4;
  v5 = 4;
  if (v4)
  {
    v5 = 5;
  }

  if (presentedZoomLevel)
  {
    v6 = presentedZoomLevel == level;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (void)animationDidComplete:(id)complete
{
  completeCopy = complete;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PXCuratedLibraryLayout_animationDidComplete___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = completeCopy;
  v5 = completeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_noteAnimation:(id)animation isRunning:(BOOL)running
{
  runningCopy = running;
  animationCopy = animation;
  if ((PXCuratedLibraryAnimationGetContext(animationCopy) & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    viewModel = [(PXCuratedLibraryLayout *)self viewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PXCuratedLibraryLayout__noteAnimation_isRunning___block_invoke;
    v13[3] = &__block_descriptor_33_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v14 = runningCopy;
    [viewModel performChanges:v13];

    v8 = +[PXCuratedLibraryAnimationTracker sharedTracker];
    v9 = v8;
    if (runningCopy)
    {
      [v8 zoomLevelTransitionPreparationDidBegin:animationCopy];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PXCuratedLibraryLayout__noteAnimation_isRunning___block_invoke_2;
      block[3] = &unk_1E774C620;
      v11 = v9;
      v12 = animationCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [v8 zoomLevelTransitionDidEnd:animationCopy];
    }
  }
}

uint64_t __51__PXCuratedLibraryLayout__noteAnimation_isRunning___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return [a2 setZoomLevelTransitionPhase:v2];
}

- (void)enumerateScrollablePagesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [(PXCuratedLibraryLayout *)self convertPoint:libraryBodyLayout fromLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXCuratedLibraryLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke;
  v11[3] = &unk_1E7730100;
  v12 = blockCopy;
  v13 = v8;
  v14 = v9;
  v10 = blockCopy;
  [libraryBodyLayout enumerateScrollablePagesWithOptions:options usingBlock:v11];
}

uint64_t __73__PXCuratedLibraryLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v11 = *(a1 + 32);
  v15 = CGRectOffset(*&a5, *(a1 + 40), *(a1 + 48));
  v12 = *(v11 + 16);

  return v12(v11, a2, a3, a4, v15.origin, *&v15.origin.y, v15.size, *&v15.size.height);
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryLayout;
  v3 = [(PXCuratedLibraryLayout *)&v12 hitTestResultForSpriteIndex:*&index];
  identifier = [v3 identifier];
  if ([identifier isEqualToString:*off_1E7722020])
  {
    userData = [v3 userData];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 = [off_1E7721520 alloc];
    identifier = [v3 spriteReference];
    layout = [v3 layout];
    userData2 = [v3 userData];
    v10 = [v7 initWithControl:1 spriteReference:identifier layout:layout assetReference:userData2];

    v3 = v10;
  }

LABEL_5:

  return v3;
}

- (id)presentedItemsGeometryForDataSource:(id)source
{
  sourceCopy = source;
  if ([(PXCuratedLibraryLayout *)self presentedZoomLevel]== 4)
  {
    allPhotosLayout = [(PXCuratedLibraryLayout *)self allPhotosLayout];
    v6 = [allPhotosLayout presentedItemsGeometryForDataSource:sourceCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGPoint)_adjustInitialVisibleRect:(CGRect)rect inLayout:(id)layout forRecentSection:(int64_t)section
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  v12 = MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  v15 = [libraryBodyLayout sublayoutAtIndex:section loadIfNeeded:0];
  [v15 convertRect:layoutCopy fromLayout:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29.origin.x = v17;
    v29.origin.y = v19;
    v29.size.width = v21;
    v29.size.height = v23;
    if (!CGRectIsNull(v29))
    {
      v24 = v15;
      [(PXCuratedLibraryLayout *)self safeAreaInsets];
      sub_1A524D1D4();
    }
  }

  v25 = *v12;

  v26 = v25;
  v27 = v13;
  result.y = v27;
  result.x = v26;
  return result;
}

void __78__PXCuratedLibraryLayout__adjustInitialVisibleRect_inLayout_forRecentSection___block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  CGRectGetMaxY(*&a3);
  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a2 = 1;
}

double __67__PXCuratedLibraryLayout_createAnchorForScrollingToInitialPosition__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _adjustInitialVisibleRect:v11 inLayout:*(a1 + 40) forRecentSection:{a3, a4, a5, a6}];
  v14 = v13;

  return v14;
}

- (CGRect)fullyVisibleRect
{
  [(PXCuratedLibraryLayout *)self visibleRect];
  [(PXCuratedLibraryLayout *)self safeAreaInsets];
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  styleGuide = [viewModel styleGuide];

  if (([styleGuide secondaryToolbarPlacement] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [styleGuide secondaryToolbarPadding];
    [styleGuide secondaryToolbarSize];
  }

  PXEdgeInsetsInsetRect();
}

- (double)bottomMargin
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel == 2)
  {
    spec = [(PXCuratedLibraryLayout *)self spec];
    monthsLayoutMetrics = [spec monthsLayoutMetrics];
    goto LABEL_5;
  }

  v5 = 0.0;
  if (zoomLevel == 1)
  {
    spec = [(PXCuratedLibraryLayout *)self spec];
    monthsLayoutMetrics = [spec yearsLayoutMetrics];
LABEL_5:
    v8 = monthsLayoutMetrics;
    [monthsLayoutMetrics padding];
    v5 = v9;
  }

  return v5;
}

- (double)estimatedHeaderHeight
{
  _currentFloatingHeaderSpec = [(PXCuratedLibraryLayout *)self _currentFloatingHeaderSpec];
  [_currentFloatingHeaderSpec maximumTitleSubtitleHeight];
  v4 = v3;

  return v4;
}

- (void)enumerateSectionBoundariesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [(PXCuratedLibraryLayout *)self convertPoint:libraryBodyLayout fromLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PXCuratedLibraryLayout_enumerateSectionBoundariesWithOptions_usingBlock___block_invoke;
  v11[3] = &unk_1E7730100;
  v12 = blockCopy;
  v13 = v8;
  v14 = v9;
  v10 = blockCopy;
  [libraryBodyLayout enumerateSectionBoundariesWithOptions:options usingBlock:v11];
}

uint64_t __75__PXCuratedLibraryLayout_enumerateSectionBoundariesWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v11 = *(a1 + 32);
  v15 = CGRectOffset(*&a5, *(a1 + 40), *(a1 + 48));
  v12 = *(v11 + 16);

  return v12(v11, a2, a3, a4, v15.origin, *&v15.origin.y, v15.size, *&v15.size.height);
}

- (void)_enumerateHeroSpritesInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  libraryBodyLayout = [(PXCuratedLibraryLayout *)self libraryBodyLayout];
  [(PXCuratedLibraryLayout *)self convertRect:libraryBodyLayout toDescendantLayout:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PXCuratedLibraryLayout__enumerateHeroSpritesInRect_usingBlock___block_invoke;
  v21[3] = &unk_1E77300D8;
  v22 = libraryBodyLayout;
  v23 = blockCopy;
  v21[4] = self;
  v19 = libraryBodyLayout;
  v20 = blockCopy;
  [v19 enumerateHeroSpritesInRect:v21 usingBlock:{v12, v14, v16, v18}];
}

uint64_t __65__PXCuratedLibraryLayout__enumerateHeroSpritesInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 48);
  v14 = [*(a1 + 32) convertSpriteIndex:a2 fromDescendantLayout:*(a1 + 40)];
  [*(a1 + 32) convertRect:*(a1 + 40) fromDescendantLayout:{a4, a5, a6, a7}];
  v15 = *(v13 + 16);

  return v15(v13, v14, a3);
}

- (double)adjustedTargetVisibleTopForProposedTargetVisibleTop:(double)top scrollingVelocity:(double)velocity decelerationRate:(int64_t *)rate
{
  v8 = +[PXCuratedLibrarySettings sharedInstance];
  [(PXCuratedLibraryLayout *)self visibleRect];
  [(PXCuratedLibraryLayout *)self fullyVisibleRect];
  [v8 scrollSnapMinimumSpeed];
  if (fabs(velocity) >= v9)
  {
    spec = [(PXCuratedLibraryLayout *)self spec];
    if ([spec userInterfaceIdiom] == 4)
    {
    }

    else
    {

      presentedZoomLevel = [(PXCuratedLibraryLayout *)self presentedZoomLevel];
      if ((presentedZoomLevel - 1) < 2)
      {
        [(PXCuratedLibraryLayout *)self safeAreaInsets];
        viewModel = [(PXCuratedLibraryLayout *)self viewModel];
        styleGuide = [viewModel styleGuide];

        if ([styleGuide secondaryToolbarPlacement] == 4)
        {
          [styleGuide secondaryToolbarContentInsets];
          [styleGuide secondaryToolbarSize];
        }

        spec2 = [(PXCuratedLibraryLayout *)self spec];
        if ([spec2 sizeClass] == 1)
        {
          [spec2 layoutOrientation];
        }

        PXEdgeInsetsInsetRect();
      }

      if (presentedZoomLevel == 3)
      {
        v15 = [off_1E7721898 alloc];
        PXEdgeInsetsBetweenRects();
      }
    }
  }

  [(PXCuratedLibraryLayout *)self padding];
  if (v16 > 0.0)
  {
    if (velocity >= 0.0)
    {
      [(PXCuratedLibraryLayout *)self lastScrollDirection];
    }

    if (velocity <= 0.0)
    {
      [(PXCuratedLibraryLayout *)self lastScrollDirection];
    }

    [(PXCuratedLibraryLayout *)self visibleRect];
    [(PXCuratedLibraryLayout *)self safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  return top;
}

- (double)_adjustedTargetVisibleTopByAligningNearestHeroForProposedTargetVisibleTop:(double)top
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = -1;
  [(PXCuratedLibraryLayout *)self safeAreaInsets];
  [(PXCuratedLibraryLayout *)self visibleRect];
  PXEdgeInsetsInsetRect();
}

uint64_t __100__PXCuratedLibraryLayout__adjustedTargetVisibleTopByAligningNearestHeroForProposedTargetVisibleTop___block_invoke_2(uint64_t result, int a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  *objectReference = reference;
  sublayoutDataStore = [(PXCuratedLibraryLayout *)self sublayoutDataStore];
  _currentBodyLayout = [(PXCuratedLibraryLayout *)self _currentBodyLayout];
  v11 = [sublayoutDataStore indexOfSublayout:_currentBodyLayout];

  return v11;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCuratedLibraryViewModelObserverContext_184264 == context)
  {
    if ((changeCopy & 4) == 0)
    {
      goto LABEL_33;
    }

    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_32:
        p_updateFlags->needsUpdate = needsUpdate | 0x55;
        goto LABEL_33;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 85;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibraryLayout *)self setNeedsUpdate];
      }

LABEL_33:
      if ((changeCopy & 0x2004) != 0)
      {
        [(PXCuratedLibraryLayout *)self _invalidateBlurredBackground];
      }

      if ((changeCopy & 4) == 0)
      {
LABEL_43:
        if ((changeCopy & 0x80) == 0)
        {
LABEL_50:
          if ((changeCopy & 0x2010001) != 0)
          {
            [(PXCuratedLibraryLayout *)self invalidateFloatingHeaderButtons];
          }

          if ((changeCopy & 0x8000000) != 0)
          {
            [(PXCuratedLibraryLayout *)self _updateFloatingHeaderSelectionTitle];
          }

          if ((changeCopy & 0x4000010) == 0)
          {
            goto LABEL_119;
          }

          p_postUpdateFlags = &self->_postUpdateFlags;
          v10 = self->_postUpdateFlags.needsUpdate;
          if (v10)
          {
            if (!self->_postUpdateFlags.isPerformingUpdate)
            {
              goto LABEL_60;
            }
          }

          else if (!self->_postUpdateFlags.isPerformingUpdate)
          {
LABEL_104:
            v36 = p_postUpdateFlags->willPerformUpdate;
            v37 = 0x8000;
            goto LABEL_105;
          }

          if ((self->_postUpdateFlags.updated & 0x8000) == 0)
          {
            goto LABEL_60;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
          [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1003 description:{@"invalidating %lu after it already has been updated", 0x8000}];
          goto LABEL_147;
        }

        v20 = &self->_updateFlags;
        v21 = self->_updateFlags.needsUpdate;
        if (v21)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
LABEL_49:
            v20->needsUpdate = v21 | 4;
            goto LABEL_50;
          }
        }

        else if (!self->_updateFlags.isPerformingUpdate)
        {
          v31 = self->_updateFlags.willPerformUpdate;
          v20->needsUpdate = 4;
          if (!v31)
          {
            [(PXCuratedLibraryLayout *)self setNeedsUpdate];
          }

          goto LABEL_50;
        }

        if ((self->_updateFlags.updated & 4) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
          [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:993 description:{@"invalidating %lu after it already has been updated", 4}];
          goto LABEL_147;
        }

        goto LABEL_49;
      }

      v18 = &self->_postUpdateFlags;
      v19 = self->_postUpdateFlags.needsUpdate;
      if (v19)
      {
        if (!self->_postUpdateFlags.isPerformingUpdate)
        {
LABEL_41:
          v18->needsUpdate = v19 | 0x6000;
LABEL_42:
          [(PXCuratedLibraryLayout *)self _invalidateContentBackground];
          goto LABEL_43;
        }
      }

      else if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        v30 = self->_postUpdateFlags.willPerformUpdate;
        v18->needsUpdate = 24576;
        if (!v30)
        {
          [(PXCuratedLibraryLayout *)self setNeedsUpdate];
        }

        goto LABEL_42;
      }

      if ((self->_postUpdateFlags.updated & 0x6000) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
        [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:989 description:{@"invalidating %lu after it already has been updated", 24576}];
        goto LABEL_147;
      }

      goto LABEL_41;
    }

    if ((self->_updateFlags.updated & 0x55) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
      [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:983 description:{@"invalidating %lu after it already has been updated", 85}];
      goto LABEL_147;
    }

    goto LABEL_32;
  }

  if (PXZoomablePhotosViewModelObserverContext == context)
  {
    if ((changeCopy & 0x1001) == 0)
    {
      goto LABEL_73;
    }

    v13 = &self->_postUpdateFlags;
    v14 = self->_postUpdateFlags.needsUpdate;
    if (v14)
    {
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
LABEL_71:
        v13->needsUpdate = v14 | 0x6000;
LABEL_72:
        [(PXCuratedLibraryLayout *)self _updateFloatingHeaderAppearance];
LABEL_73:
        if ((changeCopy & 0x40000002) == 0)
        {
LABEL_80:
          if ((changeCopy & 2) == 0)
          {
            goto LABEL_119;
          }

          v15 = [(PXGLayout *)self createCuratedLibraryLayoutAnimationIfNeededWithContext:1];
          [v15 setDuration:0.3];
          createAnchorForVisibleArea = [(PXCuratedLibraryLayout *)self createAnchorForVisibleArea];
          autoInvalidate = [createAnchorForVisibleArea autoInvalidate];

          goto LABEL_118;
        }

        v24 = &self->_updateFlags;
        v25 = self->_updateFlags.needsUpdate;
        if (v25)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
LABEL_79:
            v24->needsUpdate = v25 | 0x20;
            goto LABEL_80;
          }
        }

        else if (!self->_updateFlags.isPerformingUpdate)
        {
          v33 = self->_updateFlags.willPerformUpdate;
          v24->needsUpdate = 32;
          if (!v33)
          {
            [(PXCuratedLibraryLayout *)self setNeedsUpdate];
          }

          goto LABEL_80;
        }

        if ((self->_updateFlags.updated & 0x20) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
          [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1011 description:{@"invalidating %lu after it already has been updated", 32}];
          goto LABEL_147;
        }

        goto LABEL_79;
      }
    }

    else if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v32 = self->_postUpdateFlags.willPerformUpdate;
      v13->needsUpdate = 24576;
      if (!v32)
      {
        [(PXCuratedLibraryLayout *)self setNeedsUpdate];
      }

      goto LABEL_72;
    }

    if ((self->_postUpdateFlags.updated & 0x6000) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
      [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1007 description:{@"invalidating %lu after it already has been updated", 24576}];
      goto LABEL_147;
    }

    goto LABEL_71;
  }

  if (PXCuratedLibrarySpecManagerObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_119;
    }

    if (self->_isPerformingUpdate)
    {
      [(PXCuratedLibraryLayout *)self _updateSpecValue];
      [(PXCuratedLibraryLayout *)self _updateLateralMargin];
      goto LABEL_119;
    }

    p_postUpdateFlags = &self->_updateFlags;
    v28 = self->_updateFlags.needsUpdate;
    if (v28)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_100;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      v36 = self->_updateFlags.willPerformUpdate;
      v37 = 6;
      goto LABEL_105;
    }

    if ((self->_updateFlags.updated & 6) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
      [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1025 description:{@"invalidating %lu after it already has been updated", 6}];
      goto LABEL_147;
    }

LABEL_100:
    v22 = v28 | 6;
    goto LABEL_61;
  }

  if (PXCuratedLibraryLayoutStatusBarNumberAnimatorObserverContext == context)
  {
    if ((changeCopy & 6) == 0)
    {
      goto LABEL_119;
    }

    v15 = observableCopy;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_26;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v44 = NSStringFromClass(v45);
      px_descriptionForAssertionMessage = [v15 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1031 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v44, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1031 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v44}];
    }

LABEL_26:
    if ([v15 isBeingMutated])
    {
      goto LABEL_118;
    }

    v16 = &self->_postUpdateFlags;
    v17 = self->_postUpdateFlags.needsUpdate;
    if (v17)
    {
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
LABEL_109:
        v38 = v17 | 0x4000;
LABEL_117:
        v16->needsUpdate = v38;
        goto LABEL_118;
      }
    }

    else if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v40 = self->_postUpdateFlags.willPerformUpdate;
      v41 = 0x4000;
      goto LABEL_127;
    }

    if ((self->_postUpdateFlags.updated & 0x4000) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
      [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1033 description:{@"invalidating %lu after it already has been updated", 0x4000}];
      goto LABEL_147;
    }

    goto LABEL_109;
  }

  if (PXCuratedLibraryLayoutBlurredBackgroundNumberAnimatorObserverContext == context)
  {
    if ((changeCopy & 6) == 0)
    {
      goto LABEL_119;
    }

    v15 = observableCopy;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_65;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = objc_opt_class();
      v49 = NSStringFromClass(v50);
      px_descriptionForAssertionMessage2 = [v15 px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1039 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v49, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1039 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v49}];
    }

LABEL_65:
    if (([v15 isBeingMutated] & 1) == 0)
    {
      v16 = &self->_postUpdateFlags;
      v23 = self->_postUpdateFlags.needsUpdate;
      if (v23)
      {
        if (!self->_postUpdateFlags.isPerformingUpdate)
        {
LABEL_116:
          v38 = v23 | 0x800;
          goto LABEL_117;
        }

LABEL_115:
        if ((self->_postUpdateFlags.updated & 0x800) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
          [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1041 description:{@"invalidating %lu after it already has been updated", 2048}];
          goto LABEL_147;
        }

        goto LABEL_116;
      }

      if (self->_postUpdateFlags.isPerformingUpdate)
      {
        goto LABEL_115;
      }

      v40 = self->_postUpdateFlags.willPerformUpdate;
      v41 = 2048;
LABEL_127:
      v16->needsUpdate = v41;
      if (!v40)
      {
        [(PXCuratedLibraryLayout *)self setNeedsUpdate];
      }
    }

LABEL_118:

    goto LABEL_119;
  }

  if (PXCuratedLibraryFloatingHeaderLeadingButtonsGuideObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_119;
    }

    if (self->_isPerformingUpdate)
    {
      [(PXCuratedLibraryLayout *)self _updateAllPhotosOverlayInsets];
      goto LABEL_119;
    }

    p_postUpdateFlags = &self->_updateFlags;
    v39 = self->_updateFlags.needsUpdate;
    if (v39)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_125;
      }

      goto LABEL_124;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
LABEL_124:
      if ((self->_updateFlags.updated & 0x40) == 0)
      {
LABEL_125:
        v22 = v39 | 0x40;
        goto LABEL_61;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
      [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1050 description:{@"invalidating %lu after it already has been updated", 64}];
LABEL_147:

      abort();
    }

    v36 = self->_updateFlags.willPerformUpdate;
    v37 = 64;
LABEL_105:
    p_postUpdateFlags->needsUpdate = v37;
    if (!v36)
    {
      [(PXCuratedLibraryLayout *)self setNeedsUpdate];
    }

    goto LABEL_119;
  }

  if (PXLibraryFilterStateObservationContext_30101 != context)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayout.m" lineNumber:1061 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    [(PXCuratedLibraryLayout *)self invalidateFloatingHeaderButtons];
    p_postUpdateFlags = &self->_postUpdateFlags;
    v10 = self->_postUpdateFlags.needsUpdate;
    if (v10)
    {
      if (self->_postUpdateFlags.isPerformingUpdate)
      {
LABEL_102:
        if ((self->_postUpdateFlags.updated & 0x8000) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout observable:didChange:context:]"];
          [currentHandler handleFailureInFunction:v35 file:@"PXCuratedLibraryLayout.m" lineNumber:1057 description:{@"invalidating %lu after it already has been updated", 0x8000}];
          goto LABEL_147;
        }
      }

LABEL_60:
      v22 = v10 | 0x8000;
LABEL_61:
      p_postUpdateFlags->needsUpdate = v22;
      goto LABEL_119;
    }

    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

LABEL_119:
}

- (void)viewEnvironmentWillChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryLayout;
  changeCopy = change;
  [(PXCuratedLibraryLayout *)&v8 viewEnvironmentWillChange:changeCopy];
  v5 = [(PXCuratedLibraryLayout *)self viewEnvironment:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXCuratedLibraryLayout *)self _invalidateContentBackgroundMediaVersion];
  }
}

- (void)_updateFloatingHeaderSelectionTitle
{
  viewModel = [(PXCuratedLibraryLayout *)self viewModel];
  selectedAssetsTypedCount = [viewModel selectedAssetsTypedCount];
  v6 = v5;

  spec = [(PXCuratedLibraryLayout *)self spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  if (userInterfaceIdiom == 4 && selectedAssetsTypedCount >= 2)
  {
    PXLocalizedAssetCountForUsage(selectedAssetsTypedCount, v6, 0, 1);
  }

  v9 = MEMORY[0x1A590D320]();
  v10 = &OBJC_IVAR___PXCuratedLibraryLayout__floatingHeaderLayout;
  if (v9)
  {
    v10 = &OBJC_IVAR___PXCuratedLibraryLayout__summaryHelper;
  }

  [*(&self->super.super.super.isa + *v10) setSelectionTitle:0];
}

id __54__PXCuratedLibraryLayout__updateFloatingHeaderButtons__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) enableNewActionMenu])
  {
    v2 = [*(a1 + 40) ellipsisButtonActionPerformerWithAssetCollectionReferenceProvider:*(a1 + 48)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __50__PXCuratedLibraryLayout__updateContentBackground__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v6;
  v22.origin.y = v7;
  v22.size.width = v8;
  v22.size.height = v9;
  MidY = CGRectGetMidY(v22);
  v23.origin.x = v6;
  v23.origin.y = v7;
  v23.size.width = v8;
  v23.size.height = v9;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v6;
  v24.origin.y = v7;
  v24.size.width = v8;
  v24.size.height = v9;
  Height = CGRectGetHeight(v24);
  v13.f64[0] = Width;
  v13.f64[1] = Height;
  *v5 = MidX;
  *&v5[1] = MidY;
  v5[2] = 0x4073600000000000;
  v5[3] = vcvt_f32_f64(v13);
  *&Height = *(a1 + 72);
  v14 = *(a3 + 32);
  **(a3 + 24) = LODWORD(Height);
  *(v14 + 1) = 5;
  __asm { FMOV            V0.2S, #1.0 }

  *(v14 + 8) = _D0;
  *(*(a3 + 32) + 32) = *(*(a1 + 32) + 1180);
  PXGSectionedSpriteTagMake();
}

void __50__PXCuratedLibraryLayout__updateBlurredBackground__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 blurredBackgroundInitialOpacityForZoomLevel:v3];
  [v4 setValue:?];
}

- (void)sublayoutDidChangeLastBaseline:(id)baseline
{
  baselineCopy = baseline;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryLayout;
  [(PXGSplitLayout *)&v13 sublayoutDidChangeLastBaseline:baselineCopy];
  firstSublayout = [(PXGSplitLayout *)self firstSublayout];
  v6 = firstSublayout;
  if (firstSublayout != baselineCopy)
  {

    goto LABEL_12;
  }

  presentedZoomLevel = [(PXCuratedLibraryLayout *)self presentedZoomLevel];

  if (presentedZoomLevel != 4)
  {
    goto LABEL_12;
  }

  if (self->_isPerformingUpdate)
  {
    [(PXCuratedLibraryLayout *)self _updateAllPhotosOverlayInsets];
    goto LABEL_12;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_11:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      goto LABEL_12;
    }

LABEL_10:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout sublayoutDidChangeLastBaseline:]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXCuratedLibraryLayout.m" lineNumber:403 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_11;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_10;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryLayout *)self setNeedsUpdate];
  }

LABEL_12:
}

- (void)dealloc
{
  [(PXGDiagnosticsSpriteProbe *)self->_spriteProbe setActive:0];
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryLayout;
  [(PXCuratedLibraryLayout *)&v3 dealloc];
}

- (PXCuratedLibraryLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v39.receiver = self;
  v39.super_class = PXCuratedLibraryLayout;
  v6 = [(PXCuratedLibraryLayout *)&v39 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPerformingInitialUpdate = 1;
    specManager = [modelCopy specManager];
    spec = [specManager spec];
    spec = v7->_spec;
    v7->_spec = spec;

    specManager2 = [modelCopy specManager];
    [specManager2 registerChangeObserver:v7 context:PXCuratedLibrarySpecManagerObserverContext];

    [(PXCuratedLibraryLayout *)v7 setContentSource:v7];
    [(PXGSplitLayout *)v7 setMode:2];
    [(PXGSplitLayout *)v7 setShouldExcludeTopAndBottomPaddingFromReferenceSize:1];
    axGroup = [(PXCuratedLibraryLayout *)v7 axGroup];
    [axGroup setAxRole:3];

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lastVisibleAreaAnchorsByZoomLevels = v7->_lastVisibleAreaAnchorsByZoomLevels;
    v7->_lastVisibleAreaAnchorsByZoomLevels = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    preferredVisibleAreaAnchorsByZoomLevels = v7->_preferredVisibleAreaAnchorsByZoomLevels;
    v7->_preferredVisibleAreaAnchorsByZoomLevels = v15;

    objc_storeStrong(&v7->_viewModel, model);
    viewModel = v7->_viewModel;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __44__PXCuratedLibraryLayout_initWithViewModel___block_invoke;
    v37 = &unk_1E7748B68;
    v18 = v7;
    v38 = v18;
    [(PXCuratedLibraryViewModel *)viewModel performChanges:&v34];
    [(PXCuratedLibraryViewModel *)v7->_viewModel registerChangeObserver:v18 context:PXCuratedLibraryViewModelObserverContext_184264];
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v7->_viewModel zoomablePhotosViewModel];
    [zoomablePhotosViewModel registerChangeObserver:v18 context:PXZoomablePhotosViewModelObserverContext];

    v20 = +[PXCuratedLibrarySettings sharedInstance];
    v18->_wantsBlurredBackground = [(PXCuratedLibraryLayoutSpec *)v7->_spec wantsBlurredBackground];
    v18->_blurredBackgroundSpriteIndex = -1;
    v18->_contentBackgroundSpriteIndex = -1;
    v18->_wantsStatusBarGradient = [(PXCuratedLibraryLayoutSpec *)v7->_spec wantsStatusBarGradient];
    v18->_statusBarGradientSpriteIndex = -1;
    v21 = [[off_1E77217D0 alloc] initWithValue:0.0];
    statusBarGradientAnimator = v18->_statusBarGradientAnimator;
    v18->_statusBarGradientAnimator = v21;

    [(PXNumberAnimator *)v18->_statusBarGradientAnimator registerChangeObserver:v18 context:PXCuratedLibraryLayoutStatusBarNumberAnimatorObserverContext];
    [(PXNumberAnimator *)v18->_statusBarGradientAnimator setLabel:@"statusBarGradientAnimator"];
    v23 = [[off_1E77217D0 alloc] initWithValue:0.0];
    blurredBackgroundOpacityAnimator = v18->_blurredBackgroundOpacityAnimator;
    v18->_blurredBackgroundOpacityAnimator = v23;

    [(PXNumberAnimator *)v18->_blurredBackgroundOpacityAnimator registerChangeObserver:v18 context:PXCuratedLibraryLayoutBlurredBackgroundNumberAnimatorObserverContext];
    [(PXNumberAnimator *)v18->_blurredBackgroundOpacityAnimator setLabel:@"blurredBackgroundAnimator"];
    LODWORD(v25) = 1.0;
    v18->_statusBarGradientResizableCapInsetsIndex = [(PXCuratedLibraryLayout *)v18 addResizableCapInsets:0.0, 0.0, v25, 0.0];
    [v20 statusBarGradientHeight];
    v18->_statusBarGradientHeight = v26;
    [v20 statusBarGradientAlpha];
    v18->_statusBarGradientAlpha = v27;
    [v20 statusBarGradientAndStyleFadeDuration];
    v18->_statusBarGradientAndStyleFadeDuration = v28;
    if (v18->_updateFlags.isPerformingUpdate && (v18->_updateFlags.updated & 0x5F) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout initWithViewModel:]"];
      [currentHandler handleFailureInFunction:v33 file:@"PXCuratedLibraryLayout.m" lineNumber:171 description:{@"invalidating %lu after it already has been updated", 95, v34, v35, v36, v37}];
    }

    else
    {
      v18->_updateFlags.needsUpdate |= 0x5FuLL;
      if (!v18->_postUpdateFlags.isPerformingUpdate || (v18->_postUpdateFlags.updated & 0xE000) == 0)
      {
        v18->_postUpdateFlags.needsUpdate |= 0xE000uLL;
        libraryFilterState = [modelCopy libraryFilterState];
        libraryFilterState = v18->_libraryFilterState;
        v18->_libraryFilterState = libraryFilterState;

        [(PXLibraryFilterState *)v18->_libraryFilterState registerChangeObserver:v18 context:PXLibraryFilterStateObservationContext_30101];
        goto LABEL_7;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryLayout initWithViewModel:]"];
      [currentHandler handleFailureInFunction:v33 file:@"PXCuratedLibraryLayout.m" lineNumber:172 description:{@"invalidating %lu after it already has been updated", 57344, v34, v35, v36, v37}];
    }

    abort();
  }

LABEL_7:

  return v7;
}

@end