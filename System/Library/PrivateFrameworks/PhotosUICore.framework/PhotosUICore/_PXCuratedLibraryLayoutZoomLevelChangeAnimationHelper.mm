@interface _PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper
- (_PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper)initWithLayout:(id)a3;
- (double)animationDuration;
- (id)animation:(id)a3 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)a4 rootLayout:(id)a5 presentedGeometries:(id *)a6 styles:(id *)a7 infos:(id *)a8;
- (void)_adjustGeometries:(id *)a3 styles:(id *)a4 infos:(id *)a5 spriteIndexRange:(_PXGSpriteIndexRange)a6 appearing:(BOOL)a7;
- (void)animation:(id)a3 adjustPresentedGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 count:(unsigned int)a7;
- (void)animation:(id)a3 prepareWithRootLayout:(id)a4 viewportShift:(CGPoint)a5;
@end

@implementation _PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper

- (void)_adjustGeometries:(id *)a3 styles:(id *)a4 infos:(id *)a5 spriteIndexRange:(_PXGSpriteIndexRange)a6 appearing:(BOOL)a7
{
  v7 = a7;
  v59 = *MEMORY[0x1E69E9840];
  v10 = +[PXCuratedLibrarySettings sharedInstance];
  if (v7)
  {
    v11 = self->_toLayoutSnapshotGeometryDescriptor;
    v12 = self->_fromLayoutSnapshotGeometryDescriptor;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke;
    aBlock[3] = &unk_1E772D840;
    aBlock[4] = self;
    v38 = _Block_copy(aBlock);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_2;
    v56[3] = &unk_1E772D868;
    v56[4] = self;
    v39 = _Block_copy(v56);
    v37 = [(PXVisualPositionsChangeDetails *)self->_visualPositionsChangeDetails anchorIndexAfterChanges];
    *&v13 = COERCE_DOUBLE([(PXVisualPositionsChangeDetails *)self->_visualPositionsChangeDetails anchorIndexBeforeChanges]);
  }

  else
  {
    v11 = self->_fromLayoutSnapshotGeometryDescriptor;
    v12 = self->_toLayoutSnapshotGeometryDescriptor;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_3;
    v55[3] = &unk_1E772D840;
    v55[4] = self;
    v38 = _Block_copy(v55);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_4;
    v54[3] = &unk_1E772D868;
    v54[4] = self;
    v39 = _Block_copy(v54);
    v37 = [(PXVisualPositionsChangeDetails *)self->_visualPositionsChangeDetails anchorIndexBeforeChanges];
    *&v13 = COERCE_DOUBLE([(PXVisualPositionsChangeDetails *)self->_visualPositionsChangeDetails anchorIndexAfterChanges]);
  }

  v35 = *&v13;
  v14 = HIDWORD(*&a6);
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v11 dataSourceIdentifier];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v11 skimmingDataSourceIdentifier];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 dataSourceIdentifier];
  v42 = *(MEMORY[0x1E695EFD0] + 24);
  v43 = *(MEMORY[0x1E695EFD0] + 8);
  v51 = v43;
  v52 = v42;
  v41 = *(MEMORY[0x1E695EFD0] + 40);
  v53 = v41;
  v15 = v11;
  v40 = v11;
  if (self->_transitionType == 2)
  {
    if ([(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v11 zoomLevel]== 1)
    {
      [v10 nonAnchorYearsFadeSpeed];
      v36 = +[PXNonuniformTransform identityTransform];
    }

    else
    {
      *&v58.a = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v11 dataSourceIdentifier];
      *&v58.b = v37;
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      v44 = vnegq_f64(v16);
      *&v58.c = v44;
      v17 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v11 geometryDescriptorForSectionAtIndexPath:&v58];
      *&v58.a = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 dataSourceIdentifier];
      v58.b = v35;
      *&v58.c = v44;
      v18 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 geometryDescriptorForSectionAtIndexPath:&v58];
      v19 = 0;
      if (v17 && v18)
      {
        memset(&v45, 0, 24);
        [v17 visualPosition];
        (v39)[2](&v45);
        if (*&v45.b == 1)
        {
          [v10 transitionScaleForDayNotMatchingMonths];
          v20 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 zoomLevel];
          if (v20 <= [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v40 zoomLevel])
          {
            [v10 nonAnchorDaysFadeSpeed];
          }

          else
          {
            [v10 nonAnchorMonthsFadeSpeed];
          }

          [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 visibleRect];
          PXRectGetCenter();
        }

        [v10 nonAnchorMonthsFadeSpeed];
        [v10 defaultZoomLevelTransitionMaximumScaleAroundAnchor];
        v22 = v21;
        [v17 sectionRect];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v18 sectionRect];
        v19 = [PXNonuniformTransform horizontallyDominantTransformWithSourceRect:self->_coordinateSpace targetRect:v24 coordinateSpace:v26 minimumScale:v28 maximumScale:v30, v31, v32, v33, v34, 1.0 / v22, *&v22];
      }

      v36 = v19;

      v15 = v40;
    }
  }

  else
  {
    v36 = 0;
  }

  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v15 zoomLevel];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 zoomLevel];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v15 zoomLevel];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)v12 zoomLevel];
  if (v14)
  {
    v48 = v43;
    v49 = v42;
    v50 = v41;
    v47 = 0;
    v46 = 0;
    PXGSectionedSpriteTagDecompose();
  }
}

- (void)animation:(id)a3 prepareWithRootLayout:(id)a4 viewportShift:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v10 = a3;
  v11 = a4;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = objc_opt_class();
    v39 = NSStringFromClass(v40);
    v41 = [v11 px_descriptionForAssertionMessage];
    [v37 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:379 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"rootLayout", v39, v41}];
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [v37 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutAnimationHelper.m" lineNumber:379 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"rootLayout", v39}];
  }

LABEL_3:
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor setOffset:x, y];
  v12 = [[PXCuratedLibraryLayoutSnapshotGeometryDescriptor alloc] initWithLayout:v11];
  toLayoutSnapshotGeometryDescriptor = self->_toLayoutSnapshotGeometryDescriptor;
  self->_toLayoutSnapshotGeometryDescriptor = v12;

  v14 = [v11 viewModel];
  v15 = [v14 assetsDataSourceManager];

  v16 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor dataSourceIdentifier];
  v17 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_toLayoutSnapshotGeometryDescriptor dataSourceIdentifier];
  v18 = [v15 changeHistory];
  v19 = [v18 changeDetailsFromDataSourceIdentifier:v16 toDataSourceIdentifier:v17];
  changeDetails = self->_changeDetails;
  self->_changeDetails = v19;

  v21 = [v15 visualPositionsChangeDetailsFromDataSourceIdentifier:v16 toDataSourceIdentifier:v17];
  visualPositionsChangeDetails = self->_visualPositionsChangeDetails;
  self->_visualPositionsChangeDetails = v21;

  self->_transitionType = [v15 transitionTypeFromDataSourceIdentifier:v16 toDataSourceIdentifier:v17];
  v23 = [v11 spec];
  self->_shouldAlwaysFadeDecoration = [v23 userInterfaceIdiom] == 4;

  if (self->_visualPositionsChangeDetails)
  {
    v24 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor sections];
    v25 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_toLayoutSnapshotGeometryDescriptor sections];
    v26 = [(PXVisualPositionsChangeDetails *)self->_visualPositionsChangeDetails anchorIndexBeforeChanges];
    v44 = [(PXVisualPositionsChangeDetails *)self->_visualPositionsChangeDetails anchorIndexAfterChanges];
    v42 = v26;
    v43 = v10;
    if ([v24 count])
    {
      v27 = self->_visualPositionsChangeDetails;
      v28 = [v24 firstIndex];
      if (v27)
      {
        [(PXVisualPositionsChangeDetails *)v27 visualPositionAfterApplyingChangesToIndex:v28];
        v27 = v48;
      }

      v29 = self->_visualPositionsChangeDetails;
      v30 = [v24 lastIndex];
      if (v29)
      {
        [(PXVisualPositionsChangeDetails *)v29 visualPositionAfterApplyingChangesToIndex:v30];
        v31 = v47;
      }

      else
      {
        v31 = 0;
      }

      v26 = v42;
      [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_toLayoutSnapshotGeometryDescriptor extrapolateSectionsBetween:v27 and:v31 withAnchorSection:v44];
      v10 = v43;
    }

    if ([v25 count])
    {
      v32 = self->_visualPositionsChangeDetails;
      v33 = [v25 firstIndex];
      if (v32)
      {
        [(PXVisualPositionsChangeDetails *)v32 visualPositionAfterRevertingChangesFromIndex:v33];
        v32 = v46;
      }

      v34 = self->_visualPositionsChangeDetails;
      v35 = [v25 lastIndex];
      if (v34)
      {
        [(PXVisualPositionsChangeDetails *)v34 visualPositionAfterRevertingChangesFromIndex:v35];
        v36 = v45;
      }

      else
      {
        v36 = 0;
      }

      v26 = v42;
      [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor extrapolateSectionsBetween:v32 and:v36 withAnchorSection:v42];
      v10 = v43;
    }

    [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor compactifySectionsBeyondVisibleRectWithAnchorSection:v26];
    [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_toLayoutSnapshotGeometryDescriptor compactifySectionsBeyondVisibleRectWithAnchorSection:v44];
  }
}

- (void)animation:(id)a3 adjustPresentedGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 count:(unsigned int)a7
{
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor dataSourceIdentifier:a3];
  [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor visibleRect];
  if (a7)
  {
    PXGSectionedSpriteTagDecompose();
  }
}

- (id)animation:(id)a3 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)a4 rootLayout:(id)a5 presentedGeometries:(id *)a6 styles:(id *)a7 infos:(id *)a8
{
  v10 = MEMORY[0x1E696AD50];
  v11 = a4;
  v12 = objc_alloc_init(v10);
  v13 = [(PXCuratedLibraryLayoutSnapshotGeometryDescriptor *)self->_fromLayoutSnapshotGeometryDescriptor dataSourceIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __168___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper_animation_doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes_rootLayout_presentedGeometries_styles_infos___block_invoke;
  v16[3] = &unk_1E772D818;
  v18 = a8;
  v19 = v13;
  v14 = v12;
  v17 = v14;
  [v11 enumerateIndexesUsingBlock:v16];

  return v14;
}

- (double)animationDuration
{
  v2 = +[PXCuratedLibrarySettings sharedInstance];
  [v2 defaultZoomLevelTransitionAnimationDuration];
  v4 = v3;

  return v4;
}

- (_PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper)initWithLayout:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper;
  v5 = [(PXCuratedLibraryLayoutAnimationHelper *)&v13 initWithLayout:v4];
  if (v5)
  {
    v5->_userInterfaceDirection = [v4 userInterfaceDirection];
    v6 = [[PXCuratedLibraryLayoutSnapshotGeometryDescriptor alloc] initWithLayout:v4];
    fromLayoutSnapshotGeometryDescriptor = v5->_fromLayoutSnapshotGeometryDescriptor;
    v5->_fromLayoutSnapshotGeometryDescriptor = v6;

    v8 = objc_alloc_init(PXCuratedLibrarySectionGeometryDescriptor);
    nullSectionGeometryDescriptor = v5->_nullSectionGeometryDescriptor;
    v5->_nullSectionGeometryDescriptor = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    coordinateSpace = v5->_coordinateSpace;
    v5->_coordinateSpace = v10;
  }

  return v5;
}

@end