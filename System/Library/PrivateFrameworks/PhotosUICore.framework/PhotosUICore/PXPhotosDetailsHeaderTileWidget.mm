@interface PXPhotosDetailsHeaderTileWidget
+ (double)preferredHeaderContentHeightForWidth:(double)a3 screen:(id)a4;
- (BOOL)_isPointWithinCurrentLayoutBounds:(CGPoint)a3;
- (BOOL)_showPlaceholder;
- (BOOL)_startMovie;
- (BOOL)containsPoint:(CGPoint)a3 forCoordinateSpace:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasContentForCurrentInput;
- (CGRect)_contentRectInCoordinateSpace:(id)a3 withIdentifier:(PXTileIdentifier *)a4;
- (CGRect)photosDetailsHeaderTileLayout:(id)a3 contentsRectForAspectRatio:(double)a4;
- (CGSize)_contentSize;
- (CGSize)_playButtonSize;
- (PXPhotosDetailsHeaderTileWidget)init;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (double)preferredContentHeightForWidth:(double)a3;
- (id)_contentRegionOfInterestForTileWithIdentifier:(PXTileIdentifier *)a3;
- (id)_scrollViewController;
- (id)_subtitle;
- (id)_title;
- (id)_titleFontName;
- (id)extendedTraitCollection;
- (id)keyAsset;
- (id)regionOfInterestForContext:(id)a3;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (id)viewToBeFocused;
- (int64_t)contentLayoutStyle;
- (void)_filterOutVideosFromAssetCollection:(id)a3 filteredAssetCollection:(id *)a4 assets:(id *)a5;
- (void)_handleTapGesture:(id)a3;
- (void)_headerSpecDidChange;
- (void)_loadBasicContent;
- (void)_setHasLoadedContentData:(BOOL)a3;
- (void)_setHeaderSpec:(id)a3;
- (void)_setKeyAssetsFetchResult:(id)a3;
- (void)_setLoadCoordinationToken:(id)a3;
- (void)_setPhotosDataSource:(id)a3;
- (void)_tileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)_updateAssetCollectionIfNeeded;
- (void)_updateBasicContent;
- (void)_updateCuratedAssetCollectionIfNeeded;
- (void)_updateKeyAssetCropRect;
- (void)_updateKeyAssetsIfNeeded;
- (void)_updateLayoutStyle;
- (void)_updatePreview;
- (void)_updateTitleTile;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)loadContentData;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)playMovieWithCompletionHandler:(id)a3;
- (void)setCanLoadContentData:(BOOL)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContext:(id)a3;
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

- (void)playMovieWithCompletionHandler:(id)a3
{
  v4 = a3;
  v4[2](v4, [(PXPhotosDetailsHeaderTileWidget *)self _startMovie]);
}

- (BOOL)containsPoint:(CGPoint)a3 forCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXTilingController *)self->_tilingController currentLayout];
  v9 = v8;
  if (v8)
  {
    [v8 contentTileIdentifier];
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  [(PXPhotosDetailsHeaderTileWidget *)self _contentRectInCoordinateSpace:v7 withIdentifier:v12];
  v14.x = x;
  v14.y = y;
  v10 = CGRectContainsPoint(v15, v14);

  return v10;
}

- (void)_setHasLoadedContentData:(BOOL)a3
{
  if (self->_hasLoadedContentData != a3)
  {
    self->_hasLoadedContentData = a3;
    v5 = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
    [v5 widgetHasLoadedContentDataDidChange:self];
  }
}

- (id)regionOfInterestForContext:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsHeaderTileWidget *)self context];

  if (v5 == v4)
  {
    v7 = [(PXTilingController *)self->_tilingController currentLayout];
    v8 = v7;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    if (v7 && ([v7 contentTileIdentifier], v12))
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

- (CGRect)photosDetailsHeaderTileLayout:(id)a3 contentsRectForAspectRatio:(double)a4
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

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v19 = a4;
  v5 = [v19 sectionedDataSourceChangeDetails];
  v6 = [v5 sectionChanges];
  v7 = [v6 changedIndexes];
  v8 = [v7 count];

  v9 = [v19 sectionsWithKeyAssetChanges];
  v10 = [v9 containsIndex:0];

  if ((v10 & 1) != 0 || ![v19 hasIncrementalChanges])
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

  v11 = [v19 contentChangedIndexPaths];
  if ([v11 count])
  {
    v12 = 1;
  }

  else
  {
    v13 = [v19 insertedIndexPaths];
    if ([v13 count])
    {
      v12 = 1;
    }

    else
    {
      v14 = [v19 deletedIndexPaths];
      v12 = [v14 count] != 0;
    }
  }

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_18:
  v15 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
  v16 = [v15 firstAssetCollection];
  v17 = [v16 titleFontName];
  v18 = [(PXPhotosDetailsHeaderTileWidget *)self _titleFontName];
  if (([v17 isEqualToString:v18] & 1) == 0)
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXPhotosDetailsHeaderSpecManagerObservationContext == a5)
  {
    if (v6)
    {
      v12 = [(PXFeatureSpecManager *)self->_specManager spec];
      [(PXPhotosDetailsHeaderTileWidget *)self _setHeaderSpec:v12];
    }
  }

  else
  {
    if (PXPhotosDetailsContextObservationContext != a5)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsHeaderTileWidget.m" lineNumber:822 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (v6)
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateAssetCollection];
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateCuratedAssetCollection];
    }

    if ((v6 & 0x70) != 0)
    {
      v10 = [(PXTilingController *)self->_tilingController targetLayout];
      v11 = objc_alloc_init(PXTilingLayoutInvalidationContext);
      if (v10)
      {
        [v10 tileIdentifierForTileKind:2];
      }

      else
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
      }

      [(PXTilingLayoutInvalidationContext *)v11 invalidateTileWithIdentifier:v16];
      [v10 invalidateLayoutWithContext:v11];
      v13 = [(PXPhotosDetailsHeaderTileWidget *)self _titleTile];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__PXPhotosDetailsHeaderTileWidget_observable_didChange_context___block_invoke;
      v15[3] = &unk_1E774C648;
      v15[4] = self;
      [v13 performBatchUpdates:v15];

      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateAssetCollection];
    }

    if ((v6 & 0xC) != 0)
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _updateBasicContent];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(PXPhotosDetailsHeaderTileWidget *)self isUserInteractionEnabled]&& (self->_tapGestureRecognizer == v4 || self->_pressGestureRecognizer == v4))
  {
    v6 = [(PXPhotosDetailsHeaderTileWidget *)self _scrollViewController];
    v7 = [v6 contentCoordinateSpace];
    [(PXUITapGestureRecognizer *)v4 px_locationInCoordinateSpace:v7];
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

- (BOOL)_isPointWithinCurrentLayoutBounds:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXPhotosDetailsHeaderTileWidget *)self contentTilingController];
  v7 = [v6 currentLayout];

  if (v7)
  {
    v8 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    v9 = [(PXPhotosDetailsHeaderTileWidget *)self contentTilingController];
    [v8 convertPoint:objc_msgSend(v9 fromCoordinateSpaceIdentifier:"contentCoordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(v7, "coordinateSpaceIdentifier"), x, y}];

    [v7 contentBounds];
    [v7 contentInset];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v4 = objc_alloc_init(PXPhotosDetailsHeaderTileTransitionAnimationCoordinator);

  return v4;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v4 = objc_alloc_init(PXTileIdentifierIdentityConverter);

  return v4;
}

- (CGSize)_playButtonSize
{
  v3 = [(PXPhotosDetailsHeaderTileWidget *)self extendedTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = objc_opt_new();
    [v5 setStyle:5];
    v6 = [(PXPhotosDetailsHeaderTileWidget *)self _playButtonLocalizedTitle];
    [v5 setLocalizedTitle:v6];

    [MEMORY[0x1E69DD250] px_videoOverlayButtonSizeWithConfiguration:v5];
  }

  else
  {
    v5 = [(PXFeatureSpecManager *)self->_specManager spec];
    [v5 playButtonSize];
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
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self context];
  v3 = [v2 titleFontName];

  return v3;
}

- (id)_subtitle
{
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self context];
  v3 = [v2 localizedSubtitle];

  return v3;
}

- (id)_title
{
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self context];
  v3 = [v2 localizedTitle];

  return v3;
}

- (void)_tileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v6 = a4;
  v7 = *&a3->index[5];
  v31 = *&a3->index[3];
  v32 = v7;
  v33 = *&a3->index[7];
  *&v34 = a3->index[9];
  v8 = *&a3->index[1];
  v29 = *&a3->length;
  v30 = v8;
  v9 = [v6 tileKindForTileIdentifier:&v29];
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
      v18 = *&a3->index[5];
      v27[2] = *&a3->index[3];
      v27[3] = v18;
      v27[4] = *&a3->index[7];
      v28 = a3->index[9];
      v19 = *&a3->index[1];
      v27[0] = *&a3->length;
      v27[1] = v19;
      [v6 getGeometry:&v29 group:0 userData:0 forTileWithIdentifier:v27];
      [v6 previewRect];
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
      v23 = [v13 view];
      [v23 setUserInteractionEnabled:v22];

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

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  tilePool = self->_tilePool;
  v6 = a3;
  [(PXReusableObjectPool *)tilePool checkInReusableObject:v6];
  [(NSMutableSet *)self->_tilesInUse removeObject:v6];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v5 = *&a3->index[5];
  v11[2] = *&a3->index[3];
  v11[3] = v5;
  v11[4] = *&a3->index[7];
  v12 = a3->index[9];
  v6 = *&a3->index[1];
  v11[0] = *&a3->length;
  v11[1] = v6;
  v7 = [(PXPhotosDetailsHeaderTileWidget *)self _tileForIdentifier:v11 layout:a4];
  v8 = [(PXTilingController *)self->_tilingController scrollController];
  v9 = [v7 view];
  [v8 addSubview:v9];

  return v7;
}

- (id)_contentRegionOfInterestForTileWithIdentifier:(PXTileIdentifier *)a3
{
  v5 = [(PXTilingController *)self->_tilingController currentLayout];
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
  v12 = *&a3->index[5];
  v38 = *&a3->index[3];
  v39 = v12;
  v40 = *&a3->index[7];
  *&v41 = a3->index[9];
  v13 = *&a3->index[1];
  v36 = *&a3->length;
  v37 = v13;
  v14 = 0;
  if ([v5 getGeometry:&v48 group:0 userData:0 forTileWithIdentifier:&v36])
  {
    v15 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    v16 = [(PXTilingController *)self->_tilingController contentCoordinateSpaceIdentifier];
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
      [v15 convertTileGeometry:v35 toCoordinateSpaceIdentifier:v16];
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
    v18 = [(PXPhotosDetailsHeaderTileWidget *)self _scrollViewController];
    v19 = [v18 contentCoordinateSpace];
    v14 = [v17 initWithRect:v19 inCoordinateSpace:{*&v48, *(&v48 + 1), *&v49, *(&v49 + 1)}];

    tilingController = self->_tilingController;
    v21 = *&a3->index[5];
    v38 = *&a3->index[3];
    v39 = v21;
    v40 = *&a3->index[7];
    *&v41 = a3->index[9];
    v22 = *&a3->index[1];
    v36 = *&a3->length;
    v37 = v22;
    v23 = [(PXTilingController *)tilingController imageTileWithIdentifier:&v36];
    v24 = [v23 imageRequester];

    v34 = 0;
    if (v5)
    {
      [v5 tileIdentifierForTileKind:1];
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

    [v5 getGeometry:0 group:0 userData:&v34 forTileWithIdentifier:&v36];
    v25 = v34;
    v26 = [v25 viewSpec];
    [v14 setImageRequester:v24];
    [v14 setImageContentsRect:{*(&v57 + 1), v58, *&v59}];
    [v14 setImageViewSpec:v26];
    v27 = self->_tilingController;
    if (v5)
    {
      [v5 tileIdentifierForTileKind:2];
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
      v30 = [v28 title];
      [v14 setTitle:v30];

      v31 = [v29 subtitle];
      [v14 setSubtitle:v31];

      v32 = [v29 labelSpec];
      [v14 setTextViewSpec:v32];
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

- (CGRect)_contentRectInCoordinateSpace:(id)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v6 = a3;
  v7 = *&a4->index[5];
  v23[2] = *&a4->index[3];
  v23[3] = v7;
  v23[4] = *&a4->index[7];
  v24 = a4->index[9];
  v8 = *&a4->index[1];
  v23[0] = *&a4->length;
  v23[1] = v8;
  v9 = [(PXPhotosDetailsHeaderTileWidget *)self _contentRegionOfInterestForTileWithIdentifier:v23];
  v10 = v9;
  if (v9)
  {
    [v9 rectInCoordinateSpace:v6];
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
  v3 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
  v4 = [v3 firstAssetCollection];

  if (v4)
  {
    v5 = [(PXPhotosDetailsHeaderTileWidget *)self moviePresenter];

    if (!v5)
    {
      v6 = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
      v7 = [v6 widgetViewControllerHostingWidget:self];

      v8 = [PXMoviePresenter moviePresenterWithPresentingViewController:v7];
      [(PXPhotosDetailsHeaderTileWidget *)self setMoviePresenter:v8];
    }

    v9 = [(PXPhotosDetailsHeaderTileWidget *)self context];
    v10 = [v9 people];
    v11 = [v10 fetchedObjects];

    v12 = [(PXPhotosDetailsHeaderTileWidget *)self moviePresenter];
    v13 = [(PXPhotosDetailsHeaderTileWidget *)self _keyAssetsFetchResult];
    v14 = [v12 presentMovieViewControllerForAssetCollection:v4 keyAssetFetchResult:v13 referencePersons:v11 preferredTransitionType:1];

    if (v14)
    {
      v15 = MEMORY[0x1E6991F28];
      v16 = *MEMORY[0x1E6991E08];
      v23[0] = v4;
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

- (void)_handleTapGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(PXTilingController *)self->_tilingController currentLayout];
  v7 = v6;
  if (v6)
  {
    [v6 contentTileIdentifier];
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  [(PXPhotosDetailsHeaderTileWidget *)self _contentRectInCoordinateSpace:v5 withIdentifier:v20];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v4 locationInView:v5];
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
  v3 = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
  v4 = [v3 widgetViewControllerHostingWidget:self];

  v5 = [v4 px_extendedTraitCollection];

  return v5;
}

- (int64_t)contentLayoutStyle
{
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self _headerSpec];
  v3 = [v2 shouldInsetAllPhotoDetailsContent] ^ 1;

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
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self context];
  v3 = [v2 photosDataSource];

  if ([v3 containsMultipleAssets])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[PXPhotosDetailsHeaderTileSettings sharedInstance];
    v4 = [v5 showAlways];
  }

  return v4;
}

- (double)preferredContentHeightForWidth:(double)a3
{
  v5 = [(PXPhotosDetailsHeaderTileWidget *)self _scrollViewController];
  v6 = [v5 scrollView];

  v7 = objc_opt_class();
  v8 = [v6 window];
  v9 = [v8 screen];
  [v7 preferredHeaderContentHeightForWidth:v9 screen:a3];

  [(PXPhotosDetailsHeaderTileWidget *)self spec];
  [objc_claimAutoreleasedReturnValue() contentGuideInsets];
  [(PXPhotosDetailsHeaderTileWidget *)self _headerSpec];
  [objc_claimAutoreleasedReturnValue() contentInsetEdges];
  sub_1A524D1D4();
}

- (void)_headerSpecDidChange
{
  v4 = [(PXPhotosDetailsHeaderTileWidget *)self _headerSpec];
  v3 = [(PXTilingController *)self->_tilingController targetLayout];
  [v3 setSpec:v4];
}

- (void)_setHeaderSpec:(id)a3
{
  v5 = a3;
  if (self->__headerSpec != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->__headerSpec, a3);
    [(PXPhotosDetailsHeaderTileWidget *)self _headerSpecDidChange];
    v6 = [(PXPhotosDetailsHeaderTileWidget *)self widgetDelegate];
    [v6 widgetInvalidateContentLayoutStyle:self];

    v5 = v7;
  }
}

- (id)viewToBeFocused
{
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self previewTile];
  v3 = [v2 view];

  return v3;
}

- (void)_updateTitleTile
{
  v3 = [(PXPhotosDetailsHeaderTileWidget *)self context];
  v4 = [v3 shouldShowHeaderTitle];

  if (v4)
  {
    v7 = [(PXPhotosDetailsHeaderTileWidget *)self _titleTile];
    v5 = [(PXPhotosDetailsHeaderTileWidget *)self _title];
    v6 = [(PXPhotosDetailsHeaderTileWidget *)self _subtitle];
    if (![v5 length])
    {

      v5 = v6;
      v6 = 0;
    }

    [v7 setTitle:v5];
    [v7 setSubtitle:v6];
  }
}

- (void)_updatePreview
{
  if ([(PXPhotosDetailsHeaderTileWidget *)self canLoadContentData])
  {
    primaryAssetImageRequester = self->_primaryAssetImageRequester;
    v4 = [(PXPhotosDetailsHeaderTileWidget *)self previewTile];
    [v4 setImageRequester:primaryAssetImageRequester];
  }
}

- (void)_filterOutVideosFromAssetCollection:(id)a3 filteredAssetCollection:(id *)a4 assets:(id *)a5
{
  v7 = a3;
  v8 = [v7 photoLibrary];
  v15 = [v8 librarySpecificFetchOptions];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) = %d", 0];
  [v15 setInternalPredicate:v9];
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v15];

  v11 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v10 title:&stru_1F1741150];
  v12 = v11;
  if (a4)
  {
    v13 = v11;
    *a4 = v12;
  }

  if (a5)
  {
    v14 = v10;
    *a5 = v10;
  }
}

- (id)keyAsset
{
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self _keyAssetsFetchResult];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setCanLoadContentData:(BOOL)a3
{
  if (self->_canLoadContentData != a3)
  {
    self->_canLoadContentData = a3;
    [(PXPhotosDetailsHeaderTileWidget *)self _updatePreview];
  }
}

- (void)loadContentData
{
  v6 = [(PXPhotosDetailsHeaderTileWidget *)self context];
  if ([v6 viewSourceOrigin] != 6 || (objc_msgSend(v6, "people"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 >= 2))
  {
    v5 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
    [v5 startBackgroundFetchIfNeeded];
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
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsHeaderTileWidget.m" lineNumber:404 description:@"update still needed after update pass"];
      }
    }
  }
}

- (BOOL)_showPlaceholder
{
  v2 = [(PXPhotosDetailsHeaderTileWidget *)self keyAsset];
  v3 = v2 == 0;

  return v3;
}

- (void)_updateCuratedAssetCollectionIfNeeded
{
  if (self->_needsUpdateFlags.curatedAssetCollection)
  {
    self->_needsUpdateFlags.curatedAssetCollection = 0;
    v9 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
    if ([v9 numberOfSections] < 1)
    {
      v8 = v9;
    }

    else
    {
      v3 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
      v4 = [v3 curatedAssetsInSection:0];

      if (!v4)
      {
        return;
      }

      v5 = MEMORY[0x1E6978650];
      v6 = [(PXPhotosDetailsHeaderTileWidget *)self _title];
      v7 = [v5 transientAssetCollectionWithAssetFetchResult:v4 title:v6];

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
    v5 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
    v6 = [v5 firstAssetCollection];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = [v5 uncuratedAssetsInSection:0];
        if ([v7 count])
        {
          v8 = MEMORY[0x1E6978650];
          v9 = [(PXPhotosDetailsHeaderTileWidget *)self _title];
          v10 = [(PXPhotosDetailsHeaderTileWidget *)self _subtitle];
          v11 = [(PXPhotosDetailsHeaderTileWidget *)self _titleFontName];
          v12 = [v8 transientAssetCollectionWithAssetFetchResult:v7 title:v9 subtitle:v10 titleFontName:v11];

          v6 = v9;
        }

        else
        {
          v12 = 0;
        }

        v6 = v12;
      }
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _setAssetCollection:v6];
    v13 = [(PXTilingController *)self->_tilingController currentLayout];
    v14 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    v16 = 0;
    memset(&v15[1], 0, 64);
    v15[0] = xmmword_1A52F8E10;
    [(PXTilingLayoutInvalidationContext *)v14 invalidateTileWithIdentifier:v15];
    [v13 invalidateLayoutWithContext:v14];
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
    v5 = [(PXPhotosDetailsHeaderTileWidget *)self context];
    v6 = [v5 keyAssetsFetchResult];

    if (!v6 || ![v6 count])
    {
      v7 = [(PXPhotosDetailsHeaderTileWidget *)self _photosDataSource];
      if ([v7 numberOfSections] >= 1)
      {
        v8 = [v7 keyAssetsInSection:0];

        if ([v8 count])
        {
          v6 = v8;
        }

        else
        {
          v6 = [v7 assetsInSection:0];
        }
      }
    }

    [(PXPhotosDetailsHeaderTileWidget *)self _setKeyAssetsFetchResult:v6];
    v9 = [(PXPhotosDetailsHeaderTileWidget *)self keyAsset];
    if (v9)
    {
      v10 = [(PXImageRequester *)self->_primaryAssetImageRequester asset];

      if (v10 != v9)
      {
        primaryAssetImageRequester = self->_primaryAssetImageRequester;
        if (primaryAssetImageRequester)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __59__PXPhotosDetailsHeaderTileWidget__updateKeyAssetsIfNeeded__block_invoke;
          v14[3] = &unk_1E7735000;
          v15 = v9;
          [(PXImageRequester *)primaryAssetImageRequester performChanges:v14];
          v12 = v15;
        }

        else
        {
          v13 = [[PXImageRequester alloc] initWithMediaProvider:self->_mediaProvider asset:v9];
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
  v3 = [(PXTilingController *)self->_tilingController targetLayout];
  [v3 setStyle:{-[PXPhotosDetailsHeaderTileWidget _showPlaceholder](self, "_showPlaceholder") ^ 1}];
}

- (void)_setLoadCoordinationToken:(id)a3
{
  v5 = a3;
  loadCoordinationToken = self->__loadCoordinationToken;
  p_loadCoordinationToken = &self->__loadCoordinationToken;
  v6 = loadCoordinationToken;
  if (loadCoordinationToken != v5)
  {
    v9 = v5;
    [(PXPhotosDetailsLoadCoordinationToken *)v6 complete];
    objc_storeStrong(p_loadCoordinationToken, a3);
    v5 = v9;
  }
}

- (void)_setPhotosDataSource:(id)a3
{
  v10 = a3;
  v4 = [(PXPhotosDataSource *)self->__photosDataSource isEqual:v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    if (v10)
    {
      v6 = -[PXPhotosDataSource initWithPhotosDataSource:options:]([PXPhotosDataSource alloc], "initWithPhotosDataSource:options:", v10, [v10 options] | 0x30);
    }

    else
    {
      v6 = 0;
    }

    [(PXPhotosDataSource *)self->__photosDataSource unregisterChangeObserver:self];
    v7 = [(PXPhotosDataSource *)v6 firstAssetCollection];
    if (v7)
    {
      [(PXPhotosDataSource *)v6 setWantsCuration:1 forAssetCollection:v7];
    }

    photosDataSource = self->__photosDataSource;
    self->__photosDataSource = v6;
    v9 = v6;

    [(PXPhotosDataSource *)self->__photosDataSource registerChangeObserver:self];
    v5 = v10;
  }
}

- (void)_setKeyAssetsFetchResult:(id)a3
{
  v5 = a3;
  if (self->__keyAssetsFetchResult != v5)
  {
    objc_storeStrong(&self->__keyAssetsFetchResult, a3);
    if ([(PHFetchResult *)v5 count])
    {
      [(PXPhotosDetailsHeaderTileWidget *)self _setLoadCoordinationToken:0];
      [(PXPhotosDetailsHeaderTileWidget *)self _setHasLoadedContentData:1];
      [(PXPhotosDetailsHeaderTileWidget *)self _updateKeyAssetCropRect];
    }
  }
}

- (void)setContext:(id)a3
{
  v5 = a3;
  context = self->_context;
  if (context != v5)
  {
    v10 = v5;
    [(PXPhotosDetailsContext *)context unregisterChangeObserver:self context:PXPhotosDetailsContextObservationContext];
    objc_storeStrong(&self->_context, a3);
    [(PXPhotosDetailsContext *)self->_context registerChangeObserver:self context:PXPhotosDetailsContextObservationContext];
    v7 = [PXPhotosDetailsLoadCoordinator loadCoordinatorForContext:v10];
    v8 = [v7 tokenForCuratedFetch];

    [(PXPhotosDetailsHeaderTileWidget *)self _setLoadCoordinationToken:v8];
    [(PXPhotosDetailsHeaderTileWidget *)self _invalidateKeyAssets];
    v9 = [(PXPhotosDetailsContext *)v10 photosDataSource];
    [(PXPhotosDetailsHeaderTileWidget *)self _setPhotosDataSource:v9];

    [(PXPhotosDetailsHeaderTileWidget *)self _updateBasicContent];
    v5 = v10;
  }
}

- (void)setContentSize:(CGSize)a3
{
  [(PXPhotosDetailsHeaderTileWidget *)self _setContentSize:a3.width, a3.height];

  [(PXPhotosDetailsHeaderTileWidget *)self _updateKeyAssetCropRect];
}

- (void)_loadBasicContent
{
  if (![(PXPhotosDetailsHeaderTileWidget *)self _isBasicContentLoaded])
  {
    [(PXPhotosDetailsHeaderTileWidget *)self _setBasicContentLoaded:1];
    v25 = [(PXPhotosDetailsHeaderTileWidget *)self extendedTraitCollection];
    v3 = [(PXFeatureSpecManager *)[PXPhotosDetailsHeaderSpecManager alloc] initWithExtendedTraitCollection:v25];
    specManager = self->_specManager;
    self->_specManager = v3;

    [(PXPhotosDetailsHeaderSpecManager *)self->_specManager registerChangeObserver:self context:PXPhotosDetailsHeaderSpecManagerObservationContext];
    v5 = objc_alloc_init(PXPhotoKitUIMediaProvider);
    mediaProvider = self->_mediaProvider;
    self->_mediaProvider = v5;

    v7 = [(PXFeatureSpecManager *)self->_specManager spec];
    [(PXPhotosDetailsHeaderTileWidget *)self _setHeaderSpec:v7];

    v8 = [PXPhotosDetailsHeaderTileLayout alloc];
    v9 = [(PXFeatureSpecManager *)self->_specManager spec];
    v10 = [(PXPhotosDetailsHeaderTileLayout *)v8 initWithSpec:v9];

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
    if ([v25 userInterfaceIdiom] == 3)
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

+ (double)preferredHeaderContentHeightForWidth:(double)a3 screen:(id)a4
{
  v5 = a4;
  v6 = +[PXPhotosDetailsHeaderTileSettings sharedInstance];
  [v6 aspectRatio];
  v8 = v7;
  if (v5)
  {
    [v5 bounds];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v13 bounds];
    v10 = v14;
    v12 = v15;
  }

  if (v10 >= v12)
  {
    v10 = v12;
  }

  v16 = a3 / v8;
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