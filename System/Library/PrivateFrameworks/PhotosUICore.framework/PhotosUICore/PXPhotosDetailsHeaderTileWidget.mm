@interface PXPhotosDetailsHeaderTileWidget
+ (double)preferredHeaderContentHeightForWidth:(double)width screen:(id)screen;
- (BOOL)_isPointWithinCurrentLayoutBounds:(CGPoint)bounds;
- (BOOL)_showPlaceholder;
- (BOOL)_startMovie;
- (BOOL)containsPoint:(CGPoint)point forCoordinateSpace:(id)space;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasContentForCurrentInput;
- (CGRect)_contentRectInCoordinateSpace:(id)space withIdentifier:(PXTileIdentifier *)identifier;
- (CGRect)photosDetailsHeaderTileLayout:(id)layout contentsRectForAspectRatio:(double)ratio;
- (CGSize)_contentSize;
- (CGSize)_playButtonSize;
- (PXPhotosDetailsHeaderTileWidget)init;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (double)preferredContentHeightForWidth:(double)width;
- (id)_contentRegionOfInterestForTileWithIdentifier:(PXTileIdentifier *)identifier;
- (id)_scrollViewController;
- (id)_subtitle;
- (id)_title;
- (id)_titleFontName;
- (id)extendedTraitCollection;
- (id)keyAsset;
- (id)regionOfInterestForContext:(id)context;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change;
- (id)viewToBeFocused;
- (int64_t)contentLayoutStyle;
- (void)_filterOutVideosFromAssetCollection:(id)collection filteredAssetCollection:(id *)assetCollection assets:(id *)assets;
- (void)_handleTapGesture:(id)gesture;
- (void)_headerSpecDidChange;
- (void)_loadBasicContent;
- (void)_setHasLoadedContentData:(BOOL)data;
- (void)_setHeaderSpec:(id)spec;
- (void)_setKeyAssetsFetchResult:(id)result;
- (void)_setLoadCoordinationToken:(id)token;
- (void)_setPhotosDataSource:(id)source;
- (void)_tileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)_updateAssetCollectionIfNeeded;
- (void)_updateBasicContent;
- (void)_updateCuratedAssetCollectionIfNeeded;
- (void)_updateKeyAssetCropRect;
- (void)_updateKeyAssetsIfNeeded;
- (void)_updateLayoutStyle;
- (void)_updatePreview;
- (void)_updateTitleTile;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)loadContentData;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)playMovieWithCompletionHandler:(id)handler;
- (void)setCanLoadContentData:(BOOL)data;
- (void)setContentSize:(CGSize)size;
- (void)setContext:(id)context;
@end

@implementation PXPhotosDetailsHeaderTileWidget

- (CGSize)_contentSize
{
  width = self->__contentSize.width;
  height = self->__contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (void)playMovieWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [(PXPhotosDetailsHeaderTileWidget *)self _startMovie]);
}

- (BOOL)containsPoint:(CGPoint)point forCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
  v9 = currentLayout;
  if (currentLayout)
  {
    [currentLayout contentTileIdentifier];
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  [(PXPhotosDetailsHeaderTileWidget *)self _contentRectInCoordinateSpace:spaceCopy withIdentifier:v12];
  v14.x = x;
  v14.y = y;
  v10 = CGRectContainsPoint(v15, v14);

  return v10;
}

- (void)_setHasLoadedContentData:(BOOL)data
{
  if (self->_hasLoadedContentData != data)
  {
    self->_hasLoadedContentData = data;
    widgetDelegate = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
    [widgetDelegate widgetHasLoadedContentDataDidChange:self];
  }
}

- (id)regionOfInterestForContext:(id)context
{
  contextCopy = context;
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];

  if (context == contextCopy)
  {
    currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
    v8 = currentLayout;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    if (currentLayout && ([currentLayout contentTileIdentifier], v12))
    {
      v10[2] = v14;
      v10[3] = v15;
      v10[4] = v16;
      v11 = v17;
      v10[0] = v12;
      v10[1] = v13;
      v6 = [(PXPhotosDetailsHeaderTileWidget *)self _contentRegionOfInterestForTileWithIdentifier:v10];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)photosDetailsHeaderTileLayout:(id)layout contentsRectForAspectRatio:(double)ratio
{
  x = self->_keyAssetCropRect.origin.x;
  y = self->_keyAssetCropRect.origin.y;
  width = self->_keyAssetCropRect.size.width;
  height = self->_keyAssetCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  changeCopy = change;
  sectionedDataSourceChangeDetails = [changeCopy sectionedDataSourceChangeDetails];
  sectionChanges = [sectionedDataSourceChangeDetails sectionChanges];
  changedIndexes = [sectionChanges changedIndexes];
  v8 = [changedIndexes count];

  sectionsWithKeyAssetChanges = [changeCopy sectionsWithKeyAssetChanges];
  v10 = [sectionsWithKeyAssetChanges containsIndex:0];

  if ((v10 & 1) != 0 || ![changeCopy hasIncrementalChanges])
  {
    v12 = 1;
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_6:
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  contentChangedIndexPaths = [changeCopy contentChangedIndexPaths];
  if ([contentChangedIndexPaths count])
  {
    v12 = 1;
  }

  else
  {
    insertedIndexPaths = [changeCopy insertedIndexPaths];
    if ([insertedIndexPaths count])
    {
      v12 = 1;
    }

    else
    {
      deletedIndexPaths = [changeCopy deletedIndexPaths];
      v12 = [deletedIndexPaths count] != 0;
    }
  }

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_18:
  _photosDataSource = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
  firstAssetCollection = [_photosDataSource firstAssetCollection];
  titleFontName = [firstAssetCollection titleFontName];
  _titleFontName = [(PXPhotosDetailsHeaderTileWidget *)self _titleFontName];
  if (([titleFontName isEqualToString:_titleFontName] & 1) == 0)
  {
    [(PXPhotosDetailsHeaderTileWidget *)self _invalidateAssetCollection];
  }

  if (v10)
  {
LABEL_7:
    [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
  }

LABEL_8:
  if (v12)
  {
    [(PXPhotosDetailsHeaderTileWidget *)self _invalidateAssetCollection];
    [(PXPhotosDetailsHeaderTileWidget *)self _invalidateCuratedAssetCollection];
  }

  [(PXPhotosDetailsHeaderTileWidget *)self _updateBasicContent];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotosDetailsHeaderSpecManagerObservationContext == context)
  {
    if (changeCopy)
    {
      spec = [(PXFeatureSpecManager *)self->_specManager spec];
      [(PXPhotosDetailsHeaderTileWidget *)self _setHeaderSpec:spec];
    }
  }

  else
  {
    if (PXPhotosDetailsContextObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsHeaderTileWidget.m" lineNumber:822 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (changeCopy)
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateAssetCollection];
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateCuratedAssetCollection];
    }

    if ((changeCopy & 0x70) != 0)
    {
      targetLayout = [(PXTilingController *)self->_tilingController targetLayout];
      v11 = objc_alloc_init(PXTilingLayoutInvalidationContext);
      if (targetLayout)
      {
        [targetLayout tileIdentifierForTileKind:2];
      }

      else
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
      }

      [(PXTilingLayoutInvalidationContext *)v11 invalidateTileWithIdentifier:v16];
      [targetLayout invalidateLayoutWithContext:v11];
      _titleTile = [(PXPhotosDetailsHeaderTileWidget *)self _titleTile];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__PXPhotosDetailsHeaderTileWidget_observable_didChange_context___block_invoke;
      v15[3] = &unk_1E774C648;
      v15[4] = self;
      [_titleTile performBatchUpdates:v15];

      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateAssetCollection];
    }

    if ((changeCopy & 0xC) != 0)
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _updateBasicContent];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(PXPhotosDetailsHeaderTileWidget *)self isUserInteractionEnabled]&& (self->_tapGestureRecognizer == beginCopy || self->_pressGestureRecognizer == beginCopy))
  {
    _scrollViewController = [(PXPhotosDetailsHeaderTileWidget *)self _scrollViewController];
    contentCoordinateSpace = [_scrollViewController contentCoordinateSpace];
    [(PXUITapGestureRecognizer *)beginCopy px_locationInCoordinateSpace:contentCoordinateSpace];
    v9 = v8;
    v11 = v10;

    v5 = [(PXPhotosDetailsHeaderTileWidget *)self _isPointWithinCurrentLayoutBounds:v9, v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isPointWithinCurrentLayoutBounds:(CGPoint)bounds
{
  y = bounds.y;
  x = bounds.x;
  contentTilingController = [(PXPhotosDetailsHeaderTileWidget *)self contentTilingController];
  currentLayout = [contentTilingController currentLayout];

  if (currentLayout)
  {
    v8 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    contentTilingController2 = [(PXPhotosDetailsHeaderTileWidget *)self contentTilingController];
    [v8 convertPoint:objc_msgSend(contentTilingController2 fromCoordinateSpaceIdentifier:"contentCoordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(currentLayout, "coordinateSpaceIdentifier"), x, y}];

    [currentLayout contentBounds];
    [currentLayout contentInset];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change
{
  v4 = objc_alloc_init(PXPhotosDetailsHeaderTileTransitionAnimationCoordinator);

  return v4;
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  v4 = objc_alloc_init(PXTileIdentifierIdentityConverter);

  return v4;
}

- (CGSize)_playButtonSize
{
  extendedTraitCollection = [(PXPhotosDetailsHeaderTileWidget *)self extendedTraitCollection];
  userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    spec = objc_opt_new();
    [spec setStyle:5];
    _playButtonLocalizedTitle = [(PXPhotosDetailsHeaderTileWidget *)self _playButtonLocalizedTitle];
    [spec setLocalizedTitle:_playButtonLocalizedTitle];

    [MEMORY[0x1E69DD250] px_videoOverlayButtonSizeWithConfiguration:spec];
  }

  else
  {
    spec = [(PXFeatureSpecManager *)self->_specManager spec];
    [spec playButtonSize];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)_titleFontName
{
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];
  titleFontName = [context titleFontName];

  return titleFontName;
}

- (id)_subtitle
{
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];
  localizedSubtitle = [context localizedSubtitle];

  return localizedSubtitle;
}

- (id)_title
{
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];
  localizedTitle = [context localizedTitle];

  return localizedTitle;
}

- (void)_tileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  v7 = *&identifier->index[5];
  v31 = *&identifier->index[3];
  v32 = v7;
  v33 = *&identifier->index[7];
  *&v34 = identifier->index[9];
  v8 = *&identifier->index[1];
  v29 = *&identifier->length;
  v30 = v8;
  v9 = [layoutCopy tileKindForTileIdentifier:&v29];
  v10 = [(PXReusableObjectPool *)self->_tilePool checkOutReusableObjectWithReuseIdentifier:v9];
  [(NSMutableSet *)self->_tilesInUse addObject:v10];
  switch(v9)
  {
    case 3:
      v13 = v10;
      [(PXPhotosDetailsHeaderTileWidget *)self _playButtonSize];
      v15 = v14;
      v17 = v16;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = *&identifier->index[5];
      v27[2] = *&identifier->index[3];
      v27[3] = v18;
      v27[4] = *&identifier->index[7];
      v28 = identifier->index[9];
      v19 = *&identifier->index[1];
      v27[0] = *&identifier->length;
      v27[1] = v19;
      [layoutCopy getGeometry:&v29 group:0 userData:0 forTileWithIdentifier:v27];
      [layoutCopy previewRect];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __61__PXPhotosDetailsHeaderTileWidget__tileForIdentifier_layout___block_invoke;
      v25[3] = &unk_1E7732258;
      v25[4] = self;
      v25[5] = v15;
      v25[6] = v17;
      v21.f64[1] = v20;
      v26 = vsubq_f64(v31, v21);
      [v13 performChanges:v25];
      v22 = [(PXWidgetSpec *)self->_spec userInterfaceIdiom]== 5;
      view = [v13 view];
      [view setUserInteractionEnabled:v22];

      [v13 setDelegate:self];
      break;
    case 2:
      [(PXPhotosDetailsHeaderTileWidget *)self _setTitleTile:v10];
      [(PXPhotosDetailsHeaderTileWidget *)self _updateTitleTile];
      break;
    case 1:
      primaryAssetImageRequester = self->_primaryAssetImageRequester;
      v12 = v10;
      [v12 setImageRequester:primaryAssetImageRequester];
      [(PXPhotosDetailsHeaderTileWidget *)self setPreviewTile:v12];

      break;
  }

  return v10;
}

void __61__PXPhotosDetailsHeaderTileWidget__tileForIdentifier_layout___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 80);
  v5 = a2;
  [v5 setImageRequester:v3];
  [v5 setPlayButtonSize:{*(a1 + 40), *(a1 + 48)}];
  [v5 setPlayButtonStyle:0];
  v4 = [*(a1 + 32) _playButtonLocalizedTitle];
  [v5 setPlayButtonTitle:v4];

  [v5 setImageViewportLocation:{*(a1 + 56), *(a1 + 64)}];
  [v5 setAllowsBackdropStatisticsSuppression:0];
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  tilePool = self->_tilePool;
  tileCopy = tile;
  [(PXReusableObjectPool *)tilePool checkInReusableObject:tileCopy];
  [(NSMutableSet *)self->_tilesInUse removeObject:tileCopy];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  v5 = *&identifier->index[5];
  v11[2] = *&identifier->index[3];
  v11[3] = v5;
  v11[4] = *&identifier->index[7];
  v12 = identifier->index[9];
  v6 = *&identifier->index[1];
  v11[0] = *&identifier->length;
  v11[1] = v6;
  v7 = [(PXPhotosDetailsHeaderTileWidget *)self _tileForIdentifier:v11 layout:layout];
  scrollController = [(PXTilingController *)self->_tilingController scrollController];
  view = [v7 view];
  [scrollController addSubview:view];

  return v7;
}

- (id)_contentRegionOfInterestForTileWithIdentifier:(PXTileIdentifier *)identifier
{
  currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
  v6 = *(off_1E7722248 + 9);
  v56 = *(off_1E7722248 + 8);
  v57 = v6;
  v7 = *(off_1E7722248 + 11);
  v58 = *(off_1E7722248 + 10);
  v59 = v7;
  v8 = *(off_1E7722248 + 5);
  v52 = *(off_1E7722248 + 4);
  v53 = v8;
  v9 = *(off_1E7722248 + 7);
  v54 = *(off_1E7722248 + 6);
  v55 = v9;
  v10 = *(off_1E7722248 + 1);
  v48 = *off_1E7722248;
  v49 = v10;
  v11 = *(off_1E7722248 + 3);
  v50 = *(off_1E7722248 + 2);
  v51 = v11;
  v12 = *&identifier->index[5];
  v38 = *&identifier->index[3];
  v39 = v12;
  v40 = *&identifier->index[7];
  *&v41 = identifier->index[9];
  v13 = *&identifier->index[1];
  v36 = *&identifier->length;
  v37 = v13;
  v14 = 0;
  if ([currentLayout getGeometry:&v48 group:0 userData:0 forTileWithIdentifier:&v36])
  {
    v15 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    contentCoordinateSpaceIdentifier = [(PXTilingController *)self->_tilingController contentCoordinateSpaceIdentifier];
    if (v15)
    {
      v35[8] = v56;
      v35[9] = v57;
      v35[10] = v58;
      v35[11] = v59;
      v35[4] = v52;
      v35[5] = v53;
      v35[6] = v54;
      v35[7] = v55;
      v35[0] = v48;
      v35[1] = v49;
      v35[2] = v50;
      v35[3] = v51;
      [v15 convertTileGeometry:v35 toCoordinateSpaceIdentifier:contentCoordinateSpaceIdentifier];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
    }

    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;

    v17 = [off_1E7721860 alloc];
    _scrollViewController = [(PXPhotosDetailsHeaderTileWidget *)self _scrollViewController];
    contentCoordinateSpace = [_scrollViewController contentCoordinateSpace];
    v14 = [v17 initWithRect:contentCoordinateSpace inCoordinateSpace:{*&v48, *(&v48 + 1), *&v49, *(&v49 + 1)}];

    tilingController = self->_tilingController;
    v21 = *&identifier->index[5];
    v38 = *&identifier->index[3];
    v39 = v21;
    v40 = *&identifier->index[7];
    *&v41 = identifier->index[9];
    v22 = *&identifier->index[1];
    v36 = *&identifier->length;
    v37 = v22;
    v23 = [(PXTilingController *)tilingController imageTileWithIdentifier:&v36];
    imageRequester = [v23 imageRequester];

    v34 = 0;
    if (currentLayout)
    {
      [currentLayout tileIdentifierForTileKind:1];
    }

    else
    {
      *&v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
    }

    [currentLayout getGeometry:0 group:0 userData:&v34 forTileWithIdentifier:&v36];
    v25 = v34;
    viewSpec = [v25 viewSpec];
    [v14 setImageRequester:imageRequester];
    [v14 setImageContentsRect:{*(&v57 + 1), v58, *&v59}];
    [v14 setImageViewSpec:viewSpec];
    v27 = self->_tilingController;
    if (currentLayout)
    {
      [currentLayout tileIdentifierForTileKind:2];
    }

    else
    {
      *&v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
    }

    v28 = [(PXTilingController *)v27 titleSubtitleTileWithIdentifier:&v36];
    v29 = v28;
    if (v28)
    {
      title = [v28 title];
      [v14 setTitle:title];

      subtitle = [v29 subtitle];
      [v14 setSubtitle:subtitle];

      labelSpec = [v29 labelSpec];
      [v14 setTextViewSpec:labelSpec];
    }

    [v14 setPlaceholderViewFactory:&__block_literal_global_247];
  }

  return v14;
}

PXPhotosDetailsHeaderPlaceholderView *__81__PXPhotosDetailsHeaderTileWidget__contentRegionOfInterestForTileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXPhotosDetailsHeaderPlaceholderView alloc] initWithRegionOfInterest:v2];

  return v3;
}

- (CGRect)_contentRectInCoordinateSpace:(id)space withIdentifier:(PXTileIdentifier *)identifier
{
  spaceCopy = space;
  v7 = *&identifier->index[5];
  v23[2] = *&identifier->index[3];
  v23[3] = v7;
  v23[4] = *&identifier->index[7];
  v24 = identifier->index[9];
  v8 = *&identifier->index[1];
  v23[0] = *&identifier->length;
  v23[1] = v8;
  v9 = [(PXPhotosDetailsHeaderTileWidget *)self _contentRegionOfInterestForTileWithIdentifier:v23];
  v10 = v9;
  if (v9)
  {
    [v9 rectInCoordinateSpace:spaceCopy];
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

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (BOOL)_startMovie
{
  v23[2] = *MEMORY[0x1E69E9840];
  [(PXPhotosDetailsHeaderTileWidget *)self loadContentData];
  _photosDataSource = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
  firstAssetCollection = [_photosDataSource firstAssetCollection];

  if (firstAssetCollection)
  {
    moviePresenter = [(PXPhotosDetailsHeaderTileWidget *)self moviePresenter];

    if (!moviePresenter)
    {
      widgetDelegate = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
      v7 = [widgetDelegate widgetViewControllerHostingWidget:self];

      v8 = [PXMoviePresenter moviePresenterWithPresentingViewController:v7];
      [(PXPhotosDetailsHeaderTileWidget *)self setMoviePresenter:v8];
    }

    context = [(PXPhotosDetailsHeaderTileWidget *)self context];
    people = [context people];
    fetchedObjects = [people fetchedObjects];

    moviePresenter2 = [(PXPhotosDetailsHeaderTileWidget *)self moviePresenter];
    _keyAssetsFetchResult = [(PXPhotosDetailsHeaderTileWidget *)self _keyAssetsFetchResult];
    v14 = [moviePresenter2 presentMovieViewControllerForAssetCollection:firstAssetCollection keyAssetFetchResult:_keyAssetsFetchResult referencePersons:fetchedObjects preferredTransitionType:1];

    if (v14)
    {
      v15 = MEMORY[0x1E6991F28];
      v16 = *MEMORY[0x1E6991E08];
      v23[0] = firstAssetCollection;
      v17 = *MEMORY[0x1E6991E20];
      v22[0] = v16;
      v22[1] = v17;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v23[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v15 sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionMoviePlayed" withPayload:v20];
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)_handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
  v7 = currentLayout;
  if (currentLayout)
  {
    [currentLayout contentTileIdentifier];
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  [(PXPhotosDetailsHeaderTileWidget *)self _contentRectInCoordinateSpace:view withIdentifier:v20];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [gestureCopy locationInView:view];
  v17 = v16;
  v19 = v18;

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v22.x = v17;
  v22.y = v19;
  if (CGRectContainsPoint(v23, v22))
  {
    [(PXPhotosDetailsHeaderTileWidget *)self _startMovie];
  }
}

- (id)_scrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);
  v4 = [WeakRetained widgetScrollViewControllerHostingWidget:self];

  return v4;
}

- (id)extendedTraitCollection
{
  widgetDelegate = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
  v4 = [widgetDelegate widgetViewControllerHostingWidget:self];

  px_extendedTraitCollection = [v4 px_extendedTraitCollection];

  return px_extendedTraitCollection;
}

- (int64_t)contentLayoutStyle
{
  _headerSpec = [(PXPhotosDetailsHeaderTileWidget *)self _headerSpec];
  v3 = [_headerSpec shouldInsetAllPhotoDetailsContent] ^ 1;

  return v3;
}

- (PXTilingController)contentTilingController
{
  [(PXPhotosDetailsHeaderTileWidget *)self _loadBasicContent];
  tilingController = self->_tilingController;

  return tilingController;
}

- (BOOL)hasContentForCurrentInput
{
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];
  photosDataSource = [context photosDataSource];

  if ([photosDataSource containsMultipleAssets])
  {
    showAlways = 1;
  }

  else
  {
    v5 = +[PXPhotosDetailsHeaderTileSettings sharedInstance];
    showAlways = [v5 showAlways];
  }

  return showAlways;
}

- (double)preferredContentHeightForWidth:(double)width
{
  _scrollViewController = [(PXPhotosDetailsHeaderTileWidget *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  v7 = objc_opt_class();
  window = [scrollView window];
  screen = [window screen];
  [v7 preferredHeaderContentHeightForWidth:screen screen:width];

  [(PXPhotosDetailsHeaderTileWidget *)self spec];
  [objc_claimAutoreleasedReturnValue() contentGuideInsets];
  [(PXPhotosDetailsHeaderTileWidget *)self _headerSpec];
  [objc_claimAutoreleasedReturnValue() contentInsetEdges];
  sub_1A524D1D4();
}

- (void)_headerSpecDidChange
{
  _headerSpec = [(PXPhotosDetailsHeaderTileWidget *)self _headerSpec];
  targetLayout = [(PXTilingController *)self->_tilingController targetLayout];
  [targetLayout setSpec:_headerSpec];
}

- (void)_setHeaderSpec:(id)spec
{
  specCopy = spec;
  if (self->__headerSpec != specCopy)
  {
    v7 = specCopy;
    objc_storeStrong(&self->__headerSpec, spec);
    [(PXPhotosDetailsHeaderTileWidget *)self _headerSpecDidChange];
    widgetDelegate = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
    [widgetDelegate widgetInvalidateContentLayoutStyle:self];

    specCopy = v7;
  }
}

- (id)viewToBeFocused
{
  previewTile = [(PXPhotosDetailsHeaderTileWidget *)self previewTile];
  view = [previewTile view];

  return view;
}

- (void)_updateTitleTile
{
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];
  shouldShowHeaderTitle = [context shouldShowHeaderTitle];

  if (shouldShowHeaderTitle)
  {
    _titleTile = [(PXPhotosDetailsHeaderTileWidget *)self _titleTile];
    _title = [(PXPhotosDetailsHeaderTileWidget *)self _title];
    _subtitle = [(PXPhotosDetailsHeaderTileWidget *)self _subtitle];
    if (![_title length])
    {

      _title = _subtitle;
      _subtitle = 0;
    }

    [_titleTile setTitle:_title];
    [_titleTile setSubtitle:_subtitle];
  }
}

- (void)_updatePreview
{
  if ([(PXPhotosDetailsHeaderTileWidget *)self canLoadContentData])
  {
    primaryAssetImageRequester = self->_primaryAssetImageRequester;
    previewTile = [(PXPhotosDetailsHeaderTileWidget *)self previewTile];
    [previewTile setImageRequester:primaryAssetImageRequester];
  }
}

- (void)_filterOutVideosFromAssetCollection:(id)collection filteredAssetCollection:(id *)assetCollection assets:(id *)assets
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) = %d", 0];
  [librarySpecificFetchOptions setInternalPredicate:v9];
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];

  v11 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v10 title:&stru_1F1741150];
  v12 = v11;
  if (assetCollection)
  {
    v13 = v11;
    *assetCollection = v12;
  }

  if (assets)
  {
    v14 = v10;
    *assets = v10;
  }
}

- (id)keyAsset
{
  _keyAssetsFetchResult = [(PXPhotosDetailsHeaderTileWidget *)self _keyAssetsFetchResult];
  firstObject = [_keyAssetsFetchResult firstObject];

  return firstObject;
}

- (void)setCanLoadContentData:(BOOL)data
{
  if (self->_canLoadContentData != data)
  {
    self->_canLoadContentData = data;
    [(PXPhotosDetailsHeaderTileWidget *)self _updatePreview];
  }
}

- (void)loadContentData
{
  context = [(PXPhotosDetailsHeaderTileWidget *)self context];
  if ([context viewSourceOrigin] != 6 || (objc_msgSend(context, "people"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 >= 2))
  {
    _photosDataSource = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
    [_photosDataSource startBackgroundFetchIfNeeded];
  }

  [(PXPhotosDetailsHeaderTileWidget *)self setCanLoadContentData:1];
}

- (void)_updateBasicContent
{
  if ([(PXPhotosDetailsHeaderTileWidget *)self _isBasicContentLoaded])
  {
    if ([(PXPhotosDetailsHeaderTileWidget *)self _needsUpdate])
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _updateKeyAssetsIfNeeded];
      [(PXPhotosDetailsHeaderTileWidget *)self _updateAssetCollectionIfNeeded];
      [(PXPhotosDetailsHeaderTileWidget *)self _updateCuratedAssetCollectionIfNeeded];
      if ([(PXPhotosDetailsHeaderTileWidget *)self _needsUpdate])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsHeaderTileWidget.m" lineNumber:404 description:@"update still needed after update pass"];
      }
    }
  }
}

- (BOOL)_showPlaceholder
{
  keyAsset = [(PXPhotosDetailsHeaderTileWidget *)self keyAsset];
  v3 = keyAsset == 0;

  return v3;
}

- (void)_updateCuratedAssetCollectionIfNeeded
{
  if (self->_needsUpdateFlags.curatedAssetCollection)
  {
    self->_needsUpdateFlags.curatedAssetCollection = 0;
    _photosDataSource = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
    if ([_photosDataSource numberOfSections] < 1)
    {
      v8 = _photosDataSource;
    }

    else
    {
      _photosDataSource2 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
      v4 = [_photosDataSource2 curatedAssetsInSection:0];

      if (!v4)
      {
        return;
      }

      v5 = MEMORY[0x1E6978650];
      _title = [(PXPhotosDetailsHeaderTileWidget *)self _title];
      v7 = [v5 transientAssetCollectionWithAssetFetchResult:v4 title:_title];

      [(PXPhotosDetailsHeaderTileWidget *)self _setCuratedAssetCollection:v7];
      [(PXPhotosDetailsHeaderTileWidget *)self _updatePreview];

      v8 = v4;
    }
  }
}

- (void)_updateAssetCollectionIfNeeded
{
  if (self->_needsUpdateFlags.assetCollection)
  {
    v17 = v2;
    v18 = v3;
    self->_needsUpdateFlags.assetCollection = 0;
    _photosDataSource = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
    firstAssetCollection = [_photosDataSource firstAssetCollection];
    if (firstAssetCollection)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = [_photosDataSource uncuratedAssetsInSection:0];
        if ([v7 count])
        {
          v8 = MEMORY[0x1E6978650];
          _title = [(PXPhotosDetailsHeaderTileWidget *)self _title];
          _subtitle = [(PXPhotosDetailsHeaderTileWidget *)self _subtitle];
          _titleFontName = [(PXPhotosDetailsHeaderTileWidget *)self _titleFontName];
          v12 = [v8 transientAssetCollectionWithAssetFetchResult:v7 title:_title subtitle:_subtitle titleFontName:_titleFontName];

          firstAssetCollection = _title;
        }

        else
        {
          v12 = 0;
        }

        firstAssetCollection = v12;
      }
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _setAssetCollection:firstAssetCollection];
    currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
    v14 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    v16 = 0;
    memset(&v15[1], 0, 64);
    v15[0] = xmmword_1A52F8E10;
    [(PXTilingLayoutInvalidationContext *)v14 invalidateTileWithIdentifier:v15];
    [currentLayout invalidateLayoutWithContext:v14];
  }
}

- (void)_updateKeyAssetCropRect
{
  [(PXPhotosDetailsHeaderTileWidget *)self keyAsset];
  if (objc_claimAutoreleasedReturnValue())
  {
    [(PXPhotosDetailsHeaderTileWidget *)self _contentSize];
    PXSizeIsEmpty();
  }

  v3 = *(off_1E77221F8 + 1);
  self->_keyAssetCropRect.origin = *off_1E77221F8;
  self->_keyAssetCropRect.size = v3;
}

- (void)_updateKeyAssetsIfNeeded
{
  if (self->_needsUpdateFlags.keyAssets)
  {
    v16 = v2;
    v17 = v3;
    self->_needsUpdateFlags.keyAssets = 0;
    context = [(PXPhotosDetailsHeaderTileWidget *)self context];
    keyAssetsFetchResult = [context keyAssetsFetchResult];

    if (!keyAssetsFetchResult || ![keyAssetsFetchResult count])
    {
      _photosDataSource = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
      if ([_photosDataSource numberOfSections] >= 1)
      {
        v8 = [_photosDataSource keyAssetsInSection:0];

        if ([v8 count])
        {
          keyAssetsFetchResult = v8;
        }

        else
        {
          keyAssetsFetchResult = [_photosDataSource assetsInSection:0];
        }
      }
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _setKeyAssetsFetchResult:keyAssetsFetchResult];
    keyAsset = [(PXPhotosDetailsHeaderTileWidget *)self keyAsset];
    if (keyAsset)
    {
      asset = [(PXImageRequester *)self->_primaryAssetImageRequester asset];

      if (asset != keyAsset)
      {
        primaryAssetImageRequester = self->_primaryAssetImageRequester;
        if (primaryAssetImageRequester)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __59__PXPhotosDetailsHeaderTileWidget__updateKeyAssetsIfNeeded__block_invoke;
          v14[3] = &unk_1E7735000;
          v15 = keyAsset;
          [(PXImageRequester *)primaryAssetImageRequester performChanges:v14];
          v12 = v15;
        }

        else
        {
          v13 = [[PXImageRequester alloc] initWithMediaProvider:self->_mediaProvider asset:keyAsset];
          v12 = self->_primaryAssetImageRequester;
          self->_primaryAssetImageRequester = v13;
        }
      }
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _updatePreview];
    [(PXPhotosDetailsHeaderTileWidget *)self _updateLayoutStyle];
  }
}

- (void)_updateLayoutStyle
{
  targetLayout = [(PXTilingController *)self->_tilingController targetLayout];
  [targetLayout setStyle:{-[PXPhotosDetailsHeaderTileWidget _showPlaceholder](self, "_showPlaceholder") ^ 1}];
}

- (void)_setLoadCoordinationToken:(id)token
{
  tokenCopy = token;
  loadCoordinationToken = self->__loadCoordinationToken;
  p_loadCoordinationToken = &self->__loadCoordinationToken;
  v6 = loadCoordinationToken;
  if (loadCoordinationToken != tokenCopy)
  {
    v9 = tokenCopy;
    [(PXPhotosDetailsLoadCoordinationToken *)v6 complete];
    objc_storeStrong(p_loadCoordinationToken, token);
    tokenCopy = v9;
  }
}

- (void)_setPhotosDataSource:(id)source
{
  sourceCopy = source;
  v4 = [(PXPhotosDataSource *)self->__photosDataSource isEqual:sourceCopy];
  v5 = sourceCopy;
  if ((v4 & 1) == 0)
  {
    if (sourceCopy)
    {
      v6 = -[PXPhotosDataSource initWithPhotosDataSource:options:]([PXPhotosDataSource alloc], "initWithPhotosDataSource:options:", sourceCopy, [sourceCopy options] | 0x30);
    }

    else
    {
      v6 = 0;
    }

    [(PXPhotosDataSource *)self->__photosDataSource unregisterChangeObserver:self];
    firstAssetCollection = [(PXPhotosDataSource *)v6 firstAssetCollection];
    if (firstAssetCollection)
    {
      [(PXPhotosDataSource *)v6 setWantsCuration:1 forAssetCollection:firstAssetCollection];
    }

    photosDataSource = self->__photosDataSource;
    self->__photosDataSource = v6;
    v9 = v6;

    [(PXPhotosDataSource *)self->__photosDataSource registerChangeObserver:self];
    v5 = sourceCopy;
  }
}

- (void)_setKeyAssetsFetchResult:(id)result
{
  resultCopy = result;
  if (self->__keyAssetsFetchResult != resultCopy)
  {
    objc_storeStrong(&self->__keyAssetsFetchResult, result);
    if ([(PHFetchResult *)resultCopy count])
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _setLoadCoordinationToken:0];
      [(PXPhotosDetailsHeaderTileWidget *)self _setHasLoadedContentData:1];
      [(PXPhotosDetailsHeaderTileWidget *)self _updateKeyAssetCropRect];
    }
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  if (context != contextCopy)
  {
    v10 = contextCopy;
    [(PXPhotosDetailsContext *)context unregisterChangeObserver:self context:PXPhotosDetailsContextObservationContext];
    objc_storeStrong(&self->_context, context);
    [(PXPhotosDetailsContext *)self->_context registerChangeObserver:self context:PXPhotosDetailsContextObservationContext];
    v7 = [PXPhotosDetailsLoadCoordinator loadCoordinatorForContext:v10];
    tokenForCuratedFetch = [v7 tokenForCuratedFetch];

    [(PXPhotosDetailsHeaderTileWidget *)self _setLoadCoordinationToken:tokenForCuratedFetch];
    [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
    photosDataSource = [(PXPhotosDetailsContext *)v10 photosDataSource];
    [(PXPhotosDetailsHeaderTileWidget *)self _setPhotosDataSource:photosDataSource];

    [(PXPhotosDetailsHeaderTileWidget *)self _updateBasicContent];
    contextCopy = v10;
  }
}

- (void)setContentSize:(CGSize)size
{
  [(PXPhotosDetailsHeaderTileWidget *)self _setContentSize:size.width, size.height];

  [(PXPhotosDetailsHeaderTileWidget *)self _updateKeyAssetCropRect];
}

- (void)_loadBasicContent
{
  if (![(PXPhotosDetailsHeaderTileWidget *)self _isBasicContentLoaded])
  {
    [(PXPhotosDetailsHeaderTileWidget *)self _setBasicContentLoaded:1];
    extendedTraitCollection = [(PXPhotosDetailsHeaderTileWidget *)self extendedTraitCollection];
    v3 = [(PXFeatureSpecManager *)[PXPhotosDetailsHeaderSpecManager alloc] initWithExtendedTraitCollection:extendedTraitCollection];
    specManager = self->_specManager;
    self->_specManager = v3;

    [(PXPhotosDetailsHeaderSpecManager *)self->_specManager registerChangeObserver:self context:PXPhotosDetailsHeaderSpecManagerObservationContext];
    v5 = objc_alloc_init(PXPhotoKitUIMediaProvider);
    mediaProvider = self->_mediaProvider;
    self->_mediaProvider = v5;

    spec = [(PXFeatureSpecManager *)self->_specManager spec];
    [(PXPhotosDetailsHeaderTileWidget *)self _setHeaderSpec:spec];

    v8 = [PXPhotosDetailsHeaderTileLayout alloc];
    spec2 = [(PXFeatureSpecManager *)self->_specManager spec];
    v10 = [(PXPhotosDetailsHeaderTileLayout *)v8 initWithSpec:spec2];

    [(PXPhotosDetailsHeaderTileLayout *)v10 setDelegate:self];
    v11 = [[PXTilingController alloc] initWithLayout:v10];
    tilingController = self->_tilingController;
    self->_tilingController = v11;

    [(PXTilingController *)self->_tilingController setTileSource:self];
    v13 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = self->_tileAnimator;
    self->_tileAnimator = v13;

    [(PXTilingController *)self->_tilingController setTileAnimator:self->_tileAnimator];
    [(PXTilingController *)self->_tilingController setTransitionDelegate:self];
    v15 = objc_alloc_init(off_1E7721868);
    tilePool = self->_tilePool;
    self->_tilePool = v15;

    [(PXReusableObjectPool *)self->_tilePool setDelegate:self];
    [(PXReusableObjectPool *)self->_tilePool registerReusableObjectForReuseIdentifier:0 creationHandler:&__block_literal_global_52590];
    [(PXReusableObjectPool *)self->_tilePool registerReusableObjectForReuseIdentifier:1 creationHandler:&__block_literal_global_199_52591];
    [(PXReusableObjectPool *)self->_tilePool registerReusableObjectForReuseIdentifier:2 creationHandler:&__block_literal_global_202];
    [(PXReusableObjectPool *)self->_tilePool registerReusableObjectForReuseIdentifier:3 creationHandler:&__block_literal_global_205];
    v17 = [MEMORY[0x1E695DFA8] set];
    tilesInUse = self->_tilesInUse;
    self->_tilesInUse = v17;

    WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);
    v20 = [WeakRetained widgetViewHostingGestureRecognizers:self];

    v21 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel__handleTapGesture_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v21;

    [(PXUITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    [v20 addGestureRecognizer:self->_tapGestureRecognizer];
    if ([extendedTraitCollection userInterfaceIdiom] == 3)
    {
      [(PXUITapGestureRecognizer *)self->_tapGestureRecognizer setAllowedPressTypes:&unk_1F1910078];
    }

    else
    {
      v23 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel__handleTapGesture_];
      pressGestureRecognizer = self->_pressGestureRecognizer;
      self->_pressGestureRecognizer = v23;

      [(PXUITapGestureRecognizer *)self->_pressGestureRecognizer setAllowedPressTypes:&unk_1F1910090];
      [(PXUITapGestureRecognizer *)self->_pressGestureRecognizer setDelegate:self];
      [v20 addGestureRecognizer:self->_pressGestureRecognizer];
    }

    *&self->_needsUpdateFlags.keyAssets = 257;
    self->_needsUpdateFlags.curatedAssetCollection = 1;
    [(PXPhotosDetailsHeaderTileWidget *)self _updateBasicContent];
  }
}

PXUIPlayButtonTile *__52__PXPhotosDetailsHeaderTileWidget__loadBasicContent__block_invoke_4()
{
  v0 = objc_alloc_init(PXUIPlayButtonTile);

  return v0;
}

PXTitleSubtitleUILabelTile *__52__PXPhotosDetailsHeaderTileWidget__loadBasicContent__block_invoke_3()
{
  v0 = objc_alloc_init(PXTitleSubtitleUILabelTile);

  return v0;
}

PXPhotosDetailsHeaderPreviewTile *__52__PXPhotosDetailsHeaderTileWidget__loadBasicContent__block_invoke_2()
{
  v0 = objc_alloc_init(PXPhotosDetailsHeaderPreviewTile);
  [(PXUIImageTile *)v0 setDrawsFocusRing:1];

  return v0;
}

PXPlaceholderView *__52__PXPhotosDetailsHeaderTileWidget__loadBasicContent__block_invoke()
{
  v0 = [PXPlaceholderView alloc];
  v1 = [(PXPlaceholderView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v1;
}

- (PXPhotosDetailsHeaderTileWidget)init
{
  v8.receiver = self;
  v8.super_class = PXPhotosDetailsHeaderTileWidget;
  v2 = [(PXPhotosDetailsHeaderTileWidget *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.photosUICore.photosDetailsHeaderTileWidget.internalWork-queue", v4);
    internalWorkQueue = v2->_internalWorkQueue;
    v2->_internalWorkQueue = v5;
  }

  return v2;
}

+ (double)preferredHeaderContentHeightForWidth:(double)width screen:(id)screen
{
  screenCopy = screen;
  v6 = +[PXPhotosDetailsHeaderTileSettings sharedInstance];
  [v6 aspectRatio];
  v8 = v7;
  if (screenCopy)
  {
    [screenCopy bounds];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen bounds];
    v10 = v14;
    v12 = v15;
  }

  if (v10 >= v12)
  {
    v10 = v12;
  }

  v16 = width / v8;
  [v6 maximumHeightRelativeToScreenHeight];
  v18 = v17 * v10;
  [v6 maximumAbsoluteHeight];
  if (v18 < v19)
  {
    v19 = v18;
  }

  if (v16 >= v19)
  {
    v16 = v19;
  }

  return v16;
}

@end