@interface PXFeedSectionContentLayout
- (BOOL)_handlePresentMenuActionForIndex:(int64_t)a3 atLocation:(CGPoint)a4 inView:(id)a5;
- (BOOL)_handlePrimaryActionForItemAtIndex:(int64_t)a3;
- (CGRect)decorationOverlayRectForSpriteIndex:(unsigned int)a3;
- (PXFeedSectionContentLayout)init;
- (PXFeedSectionContentLayout)initWithViewModel:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5;
- (PXSimpleIndexPath)sectionIndexPath;
- (double)alphaForSublayout:(id)a3 atIndex:(int64_t)a4;
- (id)_handleHoverForItemAtIndex:(int64_t)a3;
- (id)_handleTouchForItemAtIndex:(int64_t)a3;
- (id)axSpriteIndexes;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (id)objectReferenceForSpriteIndex:(unsigned int)a3;
- (int64_t)itemForSpriteIndex:(unsigned int)a3;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4;
- (void)_invalidateAutoplayControllerParameters;
- (void)_invalidateCompositionParameters;
- (void)_invalidateFeedSublayouts;
- (void)_invalidatePresentedRootLayoutOrientation;
- (void)_updateAutoplayControllerParameters;
- (void)_updateCompositionParameters;
- (void)_updateFeedSprites;
- (void)_updateFeedSublayouts;
- (void)_updatePresentedRootLayoutOrientation;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didUpdate;
- (void)didUpdateSublayouts;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3;
- (void)localHiddenSpriteIndexesDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDataSource:(id)a3 changeDetails:(id)a4;
- (void)setPresentedRootLayoutOrientation:(int64_t)a3;
- (void)update;
- (void)visibleRectDidChange;
- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)willUpdate;
@end

@implementation PXFeedSectionContentLayout

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[34].section;
  *&retstr->dataSourceIdentifier = *&self[33].subitem;
  *&retstr->item = v3;
  return self;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
  if (objc_opt_respondsToSelector())
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x4010000000;
    v11[3] = &unk_1A561E057;
    v12 = 0u;
    v13 = 0u;
    [(PXFeedSectionContentLayout *)self sectionIndexPath];
    v6 = [(PXFeedSectionContentLayout *)self sublayoutDataStore];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PXFeedSectionContentLayout_collectTapToRadarDiagnosticsIntoContainer___block_invoke;
    v7[3] = &unk_1E774AE98;
    v10 = v11;
    v8 = v5;
    v9 = v4;
    [v6 enumerateSublayoutsUsingBlock:v7];

    _Block_object_dispose(v11, 8);
  }
}

uint64_t __72__PXFeedSectionContentLayout_collectTapToRadarDiagnosticsIntoContainer___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  *(*(a1[6] + 8) + 48) = a2;
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  v5 = a1[4];
  v6 = *(v4 + 48);
  v8[0] = *(v4 + 32);
  v8[1] = v6;
  return [v5 collectTapToRadarDiagnosticsForItemLayout:a3 indexPath:v8 intoContainer:v3];
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 & 2) != 0)
  {
    v12 = 0;
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((a4 & 4) != 0)
  {
    v11 = 0;
    PXGAXGetSelectionFromAndToInfosForUserInfo();
  }

  v10.receiver = self;
  v10.super_class = PXFeedSectionContentLayout;
  [(PXGCompositeLayout *)&v10 axGroup:v8 didChange:a4 userInfo:v9];
}

- (unint64_t)axFocusabilityForSpriteAtIndex:(unsigned int)a3
{
  v4 = [(PXFeedSectionContentLayout *)self viewModel];
  v5 = [v4 spec];
  v6 = [v5 wantsFirstItemFullscreen];

  if (((a3 == 0) & v6) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4
{
  v5 = *&a3;
  v7 = [(PXFeedSectionContentLayout *)self viewModel];
  v8 = [v7 spec];
  v9 = [v8 numberOfColumns];

  if (v9)
  {
    v10 = v5 % v9;
    v11 = -1;
    if (a4 > 3)
    {
      switch(a4)
      {
        case 4uLL:
          if ((v10 + 1) < v9)
          {
            v11 = v5 + 1;
          }

          else
          {
            v11 = -1;
          }

          break;
        case 5uLL:
          v11 = v5 + 1;
          break;
        case 6uLL:
          v11 = v5 - 1;
          break;
      }
    }

    else
    {
      switch(a4)
      {
        case 1uLL:
          if (v9 > v5)
          {
            v11 = -1;
          }

          else
          {
            v11 = v5 - v9;
          }

          break;
        case 2uLL:
          v11 = v9 + v5;
          break;
        case 3uLL:
          if (v10)
          {
            v11 = v5 - 1;
          }

          else
          {
            v11 = -1;
          }

          break;
      }
    }

    if (v11 >= [(PXFeedSectionContentLayout *)self localNumberOfSprites])
    {
      return -1;
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return [(PXFeedSectionContentLayout *)self axSpriteIndexClosestToSpriteIndexDefaultImplementation:v5 inDirection:a4];
  }
}

- (id)axSpriteIndexes
{
  v2 = [(PXFeedSectionContentLayout *)self localNumberOfSprites];
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v2}];

  return v3;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ViewModelObservationContext_248659 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXFeedSectionContentLayout.m" lineNumber:500 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((v6 & 8) != 0)
  {
    [(PXFeedSectionContentLayout *)self _invalidateCompositionParameters];
    [(PXFeedSectionContentLayout *)self _invalidatePresentedRootLayoutOrientation];
    v9 = v11;
  }

  if (v6)
  {
    [(PXFeedSectionContentLayout *)self _invalidateAutoplayControllerParameters];
    v9 = v11;
  }
}

- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = PXFeedSectionContentLayout;
  v8 = a3;
  [(PXGCompositeLayout *)&v10 willRemoveSublayout:v8 atIndex:a4 flags:a5];
  v9 = [(PXFeedSectionContentLayout *)self autoplayController:v10.receiver];
  [v9 removeItemLayout:v8];
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v7 = [(PXFeedSectionContentLayout *)self viewModel];
  v8 = [(PXFeedSectionContentLayout *)self dataSource];
  v23 = 0u;
  v24 = 0u;
  [(PXFeedSectionContentLayout *)self sectionIndexPath];
  if (*off_1E7721F68)
  {
    v9 = *(&v23 + 1) == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXFeedSectionContentLayout.m" lineNumber:468 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath)"}];
  }

  *&v24 = a4;
  v11 = [(PXFeedSectionContentLayout *)self sublayoutDataStore];
  v12 = ([v11 geometries] + 136 * a4);
  v13 = *v12;
  v14 = v12[1];

  v15 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
  v22 = 0;
  v21[0] = v23;
  v21[1] = v24;
  v16 = [v15 createLayoutForFeedItemAtIndexPath:v21 inDataSource:v8 viewModel:v7 initialReferenceSize:&v22 thumbnailAsset:{v13, v14}];
  v17 = v22;

  if (v17)
  {
    v18 = [(PXFeedSectionContentLayout *)self autoplayController];
    [v18 addItemLayout:v16 withDisplayAsset:v17];
  }

  return v16;
}

- (void)_updateAutoplayControllerParameters
{
  v5 = [(PXFeedSectionContentLayout *)self viewModel];
  v3 = [v5 isActive];
  v4 = [(PXFeedSectionContentLayout *)self autoplayController];
  [v4 setIsContainerLayoutVisible:v3];
}

- (void)_invalidateAutoplayControllerParameters
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout _invalidateAutoplayControllerParameters]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedSectionContentLayout.m" lineNumber:451 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXFeedSectionContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateCompositionParameters
{
  v5 = [(PXFeedSectionContentLayout *)self viewModel];
  v3 = [v5 spec];
  v4 = [(PXGCompositeLayout *)self composition];
  [v4 setSpec:v3];
}

- (void)_invalidateCompositionParameters
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout _invalidateCompositionParameters]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedSectionContentLayout.m" lineNumber:443 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXFeedSectionContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateFeedSprites
{
  v3 = [(PXFeedSectionContentLayout *)self sublayoutDataStore];
  v4 = [v3 geometries];

  v5 = [(PXFeedSectionContentLayout *)self viewModel];
  v6 = [v5 spec];
  [v6 itemCornerRadius];
  *v7.i32 = *v7.i32;
  v9 = v7;

  v8 = [(PXFeedSectionContentLayout *)self localNumberOfSprites];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PXFeedSectionContentLayout__updateFeedSprites__block_invoke;
  v10[3] = &__block_descriptor_56_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
  v10[4] = v4;
  v11 = vdupq_lane_s32(v9, 0);
  [(PXFeedSectionContentLayout *)self modifySpritesInRange:v8 << 32 state:v10];
}

void __48__PXFeedSectionContentLayout__updateFeedSprites__block_invoke(uint64_t a1, unint64_t a2, float32x2_t *a3, _OWORD *a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v7 = a2;
    v9 = (a5 + 34);
    v10 = a3 + 2;
    v28 = *off_1E7722048;
    v29 = *(off_1E7722048 + 1);
    v26 = *(off_1E7722048 + 4);
    v27 = *(off_1E7722048 + 5);
    v24 = *(off_1E7722048 + 2);
    v25 = *(off_1E7722048 + 3);
    v22 = *(off_1E7722048 + 8);
    v23 = *(off_1E7722048 + 9);
    v20 = *(off_1E7722048 + 6);
    v21 = *(off_1E7722048 + 7);
    do
    {
      v11 = (*(a1 + 32) + 136 * v7);
      v12 = v11[6];
      v13 = v11[7];
      v14 = v11[4];
      v15 = v11[5];
      v31.origin.x = v12;
      v31.origin.y = v13;
      v31.size.width = v14;
      v31.size.height = v15;
      MidX = CGRectGetMidX(v31);
      v32.origin.x = v12;
      v32.origin.y = v13;
      v32.size.width = v14;
      v32.size.height = v15;
      MidY = CGRectGetMidY(v32);
      v33.origin.x = v12;
      v33.origin.y = v13;
      v33.size.width = v14;
      v33.size.height = v15;
      Width = CGRectGetWidth(v33);
      v34.origin.x = v12;
      v34.origin.y = v13;
      v34.size.width = v14;
      v34.size.height = v15;
      Height = CGRectGetHeight(v34);
      v19.f64[0] = Width;
      v19.f64[1] = Height;
      *&v10[-2] = MidX;
      *&v10[-1] = MidY;
      *v10 = 0xC000000000000000;
      v10[1] = vcvt_f32_f64(v19);
      *a4 = v28;
      a4[1] = v29;
      a4[4] = v26;
      a4[5] = v27;
      a4[2] = v24;
      a4[3] = v25;
      a4[8] = v22;
      a4[9] = v23;
      a4[6] = v20;
      a4[7] = v21;
      *(a4 + 36) = *(a1 + 40);
      ++v7;
      *(v9 - 33) = 0;
      *v9 = 4;
      v9 += 40;
      v10 += 4;
      a4 += 10;
      --v5;
    }

    while (v5);
  }
}

- (void)_updateFeedSublayouts
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = [(PXFeedSectionContentLayout *)self dataSource];
  v48 = 0u;
  v49 = 0u;
  [(PXFeedSectionContentLayout *)self sectionIndexPath];
  if ([v4 identifier])
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXFeedSectionContentLayout.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == dataSource.identifier"}];
  }

  v5 = *(&v48 + 1);
  v6 = self->_presentedDataSource;
  v7 = PLStoryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [(PXSectionedDataSource *)v6 identifier];
    v10 = [v4 identifier];
    lastChangeDetails = self->_lastChangeDetails;
    *buf = 134219266;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    v55 = *(&v48 + 1);
    LOWORD(v56[0]) = 2048;
    *(v56 + 2) = v9;
    WORD5(v56[0]) = 2048;
    *(v56 + 12) = v10;
    WORD2(v56[1]) = 2112;
    *(&v56[1] + 6) = lastChangeDetails;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[PXFeedSectionContentLayout] %p %@ section:%li ds:%lu->%lu lastChangeDetails: %@", buf, 0x3Eu);
  }

  v12 = [(PXSectionedDataSourceChangeDetails *)self->_lastChangeDetails fromDataSourceIdentifier];
  if (v12 == -[PXSectionedDataSource identifier](v6, "identifier") && (v13 = -[PXSectionedDataSourceChangeDetails toDataSourceIdentifier](self->_lastChangeDetails, "toDataSourceIdentifier"), v13 == [v4 identifier]))
  {
    v14 = [(PXSectionedDataSourceChangeDetails *)self->_lastChangeDetails itemChangesInSection:*(&v48 + 1)];
    v15 = PLStoryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "[PXFeedSectionContentLayout] %p sectionChangeDetails: %@", buf, 0x16u);
    }

    shouldReloadItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource = self->_itemLayoutFactoryRespondsTo.shouldReloadItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource;
    configureItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource = self->_itemLayoutFactoryRespondsTo.configureItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource;
    if (shouldReloadItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource || self->_itemLayoutFactoryRespondsTo.configureItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource)
    {
      v33 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v18 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4010000000;
      v55 = &unk_1A561E057;
      memset(v56, 0, sizeof(v56));
      *&v56[0] = [(PXSectionedDataSource *)v6 identifier];
      *(&v56[0] + 1) = v5;
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v32 = vnegq_f64(v19);
      v56[1] = v32;
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x4010000000;
      v45[3] = &unk_1A561E057;
      v46 = 0u;
      v47 = 0u;
      *&v46 = [v4 identifier];
      *(&v46 + 1) = v5;
      v47 = v32;
      v20 = [v14 changedIndexes];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __51__PXFeedSectionContentLayout__updateFeedSublayouts__block_invoke;
      v34[3] = &unk_1E774AE50;
      v14 = v14;
      v35 = v14;
      v36 = self;
      v41 = v45;
      v42 = buf;
      v43 = shouldReloadItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource;
      v21 = v18;
      v37 = v21;
      v38 = v6;
      v39 = v4;
      v22 = v33;
      v40 = v22;
      v44 = configureItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource;
      [v20 enumerateIndexesUsingBlock:v34];

      if ([v22 count])
      {
        v23 = PLStoryGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 134218242;
          v51 = self;
          v52 = 2112;
          v53 = v22;
          _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "[PXFeedSectionContentLayout] %p indexesToReload: %@", v50, 0x16u);
        }

        v24 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v22 insertedIndexes:v22 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
        v25 = [v14 changeDetailsByAddingChangeDetails:v24];

        v14 = v25;
      }

      _Block_object_dispose(v45, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v14 = 0;
  }

  v26 = [v4 numberOfItemsInSection:v5];
  v27 = PLStoryGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(PXFeedSectionContentLayout *)self numberOfSublayouts];
    *buf = 134218496;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v28;
    *&buf[22] = 2048;
    v55 = v26;
    _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEFAULT, "[PXFeedSectionContentLayout] %p numberOfSublayouts: %li->%li", buf, 0x20u);
  }

  [(PXFeedSectionContentLayout *)self applySublayoutChangeDetails:v14 countAfterChanges:v26 sublayoutProvider:self];
  [(PXFeedSectionContentLayout *)self applySpriteChangeDetails:v14 countAfterChanges:v26 initialState:0 modifyState:0];
  objc_storeStrong(&self->_presentedDataSource, v4);
  v29 = PLStoryGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    presentedDataSource = self->_presentedDataSource;
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = presentedDataSource;
    _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEFAULT, "[PXFeedSectionContentLayout] %p presentedDataSource: %@", buf, 0x16u);
  }
}

void __51__PXFeedSectionContentLayout__updateFeedSublayouts__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) indexAfterRevertingChangesFromIndex:a2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [*(a1 + 40) sublayoutAtIndex:v4 loadIfNeeded:0];
    if (v6)
    {
      *(*(*(a1 + 80) + 8) + 48) = a2;
      *(*(*(a1 + 88) + 8) + 48) = v5;
      if (*(a1 + 96) == 1 && (v7 = *(*(a1 + 88) + 8), v8 = *(a1 + 48), v9 = *(a1 + 56), v10 = *(*(a1 + 80) + 8), v11 = *(a1 + 64), v12 = *(v7 + 48), v23 = *(v7 + 32), v24 = v12, v13 = *(v10 + 48), v21 = *(v10 + 32), v22 = v13, [v8 shouldReloadItemLayout:v6 forChangedItemFromIndexPath:&v23 inDataSource:v9 toIndexPath:&v21 inDataSource:v11]))
      {
        [*(a1 + 72) addIndex:a2];
      }

      else if (*(a1 + 97) == 1)
      {
        v14 = *(*(a1 + 88) + 8);
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        v17 = *(*(a1 + 80) + 8);
        v18 = *(a1 + 64);
        v19 = *(v14 + 48);
        v23 = *(v14 + 32);
        v24 = v19;
        v20 = *(v17 + 48);
        v21 = *(v17 + 32);
        v22 = v20;
        [v15 configureItemLayout:v6 forChangedItemFromIndexPath:&v23 inDataSource:v16 toIndexPath:&v21 inDataSource:v18];
      }
    }
  }
}

- (void)_invalidateFeedSublayouts
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout _invalidateFeedSublayouts]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedSectionContentLayout.m" lineNumber:369 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXFeedSectionContentLayout *)self setNeedsUpdate];
  }
}

- (void)setPresentedRootLayoutOrientation:(int64_t)a3
{
  if (self->_presentedRootLayoutOrientation != a3)
  {
    self->_presentedRootLayoutOrientation = a3;
    [(PXFeedSectionContentLayout *)self _invalidateFeedSublayouts];
  }
}

- (void)_updatePresentedRootLayoutOrientation
{
  v4 = [(PXFeedSectionContentLayout *)self viewModel];
  v3 = [v4 spec];
  -[PXFeedSectionContentLayout setPresentedRootLayoutOrientation:](self, "setPresentedRootLayoutOrientation:", [v3 rootLayoutOrientation]);
}

- (void)_invalidatePresentedRootLayoutOrientation
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout _invalidatePresentedRootLayoutOrientation]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedSectionContentLayout.m" lineNumber:349 description:{@"invalidating %lu after it already has been updated", 8}];

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

    [(PXFeedSectionContentLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXFeedSectionContentLayout;
  [(PXGCompositeLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXFeedSectionContentLayout.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout update]"];
      [v8 handleFailureInFunction:v9 file:@"PXFeedSectionContentLayout.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 8;
    if ((needsUpdate & 8) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;
      [(PXFeedSectionContentLayout *)self _updatePresentedRootLayoutOrientation];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout update]"];
        [v10 handleFailureInFunction:v11 file:@"PXFeedSectionContentLayout.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v5)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFELL;
      [(PXFeedSectionContentLayout *)self _updateFeedSublayouts];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout update]"];
      [v12 handleFailureInFunction:v13 file:@"PXFeedSectionContentLayout.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v6 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXFeedSectionContentLayout *)self _updateCompositionParameters];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout update]"];
      [v14 handleFailureInFunction:v15 file:@"PXFeedSectionContentLayout.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v7 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXFeedSectionContentLayout *)self _updateAutoplayControllerParameters];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXFeedSectionContentLayout.m" lineNumber:338 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v18.receiver = self;
  v18.super_class = PXFeedSectionContentLayout;
  [(PXGCompositeLayout *)&v18 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXFeedSectionContentLayout;
  [(PXGCompositeLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedSectionContentLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXFeedSectionContentLayout.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_itemLayoutFactoryRespondsTo.itemPlacementControllerForItemReferenceItemLayout)
  {
    v6 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
    v7 = [(PXFeedSectionContentLayout *)self sublayoutDataStore];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__PXFeedSectionContentLayout_itemPlacementControllerForItemReference___block_invoke;
    v11[3] = &unk_1E774AE28;
    v12 = v6;
    v13 = v4;
    v14 = v5;
    v8 = v6;
    [v7 enumerateSublayoutsUsingBlock:v11];
  }

  v9 = [off_1E7721650 itemPlacementControllerForItemPlacementControllers:v5];

  return v9;
}

void __70__PXFeedSectionContentLayout_itemPlacementControllerForItemReference___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) itemPlacementControllerForItemReference:*(a1 + 40) itemLayout:a3];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 48) addObject:v4];
    v4 = v5;
  }
}

- (CGRect)decorationOverlayRectForSpriteIndex:(unsigned int)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  if (self->_itemLayoutFactoryRespondsTo.decorationOverlayAnchorSpriteIndexForItemLayout)
  {
    v8 = [(PXFeedSectionContentLayout *)self sublayoutAtIndex:a3 loadIfNeeded:0];
    if (v8)
    {
      v9 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
      v10 = [v9 decorationOverlayAnchorSpriteIndexForItemLayout:v8];

      [v8 geometryForSpriteAtIndex:v10];
      v11 = vmul_f32(0, 0x3F0000003F000000);
      [(PXFeedSectionContentLayout *)self convertRect:v8 fromLayout:0.0 - v11.f32[0], 0.0 - v11.f32[1], 0.0, 0.0];
      v3 = v12;
      v4 = v13;
      v5 = v14;
      v6 = v15;
    }
  }

  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setDataSource:(id)a3 changeDetails:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLStoryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [(PXSectionedDataSource *)self->_dataSource identifier];
    *buf = 134219010;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    *&buf[24] = v11;
    v20 = 2048;
    v21 = [(PXSectionedDataSource *)v7 identifier];
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[PXFeedSectionContentLayout] %p %@ ds:%lu->%lu changeDetails: %@", buf, 0x34u);
  }

  p_sectionIndexPath = &self->_sectionIndexPath;
  if (v8)
  {
    v13 = *&self->_sectionIndexPath.item;
    v18[0] = *&p_sectionIndexPath->dataSourceIdentifier;
    v18[1] = v13;
    [(PXSectionedDataSourceChangeDetails *)v8 indexPathAfterApplyingChangesToIndexPath:v18 hasIncrementalChanges:0 objectChanged:0];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v14 = *&buf[16];
  *&p_sectionIndexPath->dataSourceIdentifier = *buf;
  *&self->_sectionIndexPath.item = v14;
  dataSource = self->_dataSource;
  self->_dataSource = v7;
  v16 = v7;

  lastChangeDetails = self->_lastChangeDetails;
  self->_lastChangeDetails = v8;

  [(PXFeedSectionContentLayout *)self _invalidateFeedSublayouts];
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(PXFeedSectionContentLayout *)self dataSource];
    v10 = [v9 objectReferenceNearestToObjectReference:v8];
    v19 = 0u;
    *&v20 = 0;
    if (v10)
    {
      if (v9)
      {
        [v9 indexPathForObjectReference:v10];
      }
    }

    else
    {
      v19 = *off_1E7722228;
      v20 = *(off_1E7722228 + 1);
    }

    if (v19 != *off_1E7721F68 && ([(PXFeedSectionContentLayout *)self sectionIndexPath], v19 == v16) && (v11 = 0x7FFFFFFFFFFFFFFFLL, v17 == 0x7FFFFFFFFFFFFFFFLL))
    {
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v20;
        if (!v10)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"PXFeedSectionContentLayout.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"nearestObjectReference != nil"}];
        }

        v14 = v10;

        v8 = v14;
      }
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v8;
  *a5 = v8;

  return v11;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  if ([(PXFeedSectionContentLayout *)self localNumberOfSprites]<= a3)
  {
    v8.receiver = self;
    v8.super_class = PXFeedSectionContentLayout;
    v6 = [(PXFeedSectionContentLayout *)&v8 objectReferenceForSpriteIndex:v3];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    [(PXFeedSectionContentLayout *)self sectionIndexPath];
    *&v11 = v3;
    v5 = [(PXFeedSectionContentLayout *)self dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v6 = [v5 objectReferenceAtIndexPath:v9];
  }

  return v6;
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3
{
  v4 = a3;
  [(PXFeedSectionContentLayout *)self visibleRect];
  PXRectGetCenter();
}

- (BOOL)_handlePresentMenuActionForIndex:(int64_t)a3 atLocation:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    v12 = [(PXFeedSectionContentLayout *)self sublayoutAtIndex:a3 loadIfNeeded:0];
    [v10 presentMenuForItemLayout:v12 atLocation:v9 inView:{x, y}];
  }

  return v11 & 1;
}

- (id)_handleHoverForItemAtIndex:(int64_t)a3
{
  v4 = [(PXFeedSectionContentLayout *)self sublayoutAtIndex:a3 loadIfNeeded:0];
  if (v4 && self->_itemLayoutFactoryRespondsTo.setItemLayoutIsHovered)
  {
    v5 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
    [v5 setItemLayout:v4 isHovered:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PXFeedSectionContentLayout__handleHoverForItemAtIndex___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = v5;
    v11 = v4;
    v6 = v5;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_handleTouchForItemAtIndex:(int64_t)a3
{
  v4 = [(PXFeedSectionContentLayout *)self sublayoutAtIndex:a3 loadIfNeeded:0];
  if (v4 && self->_itemLayoutFactoryRespondsTo.setItemLayoutIsTouched)
  {
    v5 = [(PXFeedSectionContentLayout *)self itemLayoutFactory];
    [v5 setItemLayout:v4 isTouched:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PXFeedSectionContentLayout__handleTouchForItemAtIndex___block_invoke;
    v9[3] = &unk_1E774C620;
    v10 = v5;
    v11 = v4;
    v6 = v5;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_handlePrimaryActionForItemAtIndex:(int64_t)a3
{
  v11 = 0u;
  v12 = 0u;
  [(PXFeedSectionContentLayout *)self sectionIndexPath];
  *&v12 = a3;
  v5 = [(PXFeedSectionContentLayout *)self viewModel];
  v6 = [v5 actionPerformer];
  v7 = [(PXFeedSectionContentLayout *)self dataSource];
  v10[0] = v11;
  v10[1] = v12;
  v8 = [v6 handlePrimaryActionOnItemAtIndexPath:v10 inDataSource:v7];

  return v8;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  if ([(PXFeedSectionContentLayout *)self localNumberOfSprites]<= a3)
  {
    v5 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [[PXFeedHitTestResult alloc] initWithSpriteIndex:v3 layout:self];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke;
    v27[3] = &unk_1E774AD60;
    objc_copyWeak(&v28, &location);
    v29 = v3;
    v6 = [(PXFeedHitTestResult *)v5 primaryAction:v27];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke_2;
    v24[3] = &unk_1E774AD88;
    objc_copyWeak(&v25, &location);
    v26 = v3;
    v7 = [(PXFeedHitTestResult *)v5 touchAction:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke_3;
    v21[3] = &unk_1E774ADB0;
    objc_copyWeak(&v22, &location);
    v23 = v3;
    v8 = [(PXFeedHitTestResult *)v5 hoverAction:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke_4;
    v18[3] = &unk_1E774ADD8;
    objc_copyWeak(&v19, &location);
    v20 = v3;
    v9 = [(PXFeedHitTestResult *)v5 presentMenuAction:v18];
    v16 = 0u;
    v17 = 0u;
    [(PXFeedSectionContentLayout *)self sectionIndexPath];
    *&v17 = v3;
    v10 = [(PXFeedSectionContentLayout *)self dataSource];
    v14 = v16;
    v15 = v17;
    v11 = [v10 objectReferenceAtIndexPath:&v14];

    v12 = [(PXFeedHitTestResult *)v5 objectReference:v11];
    v14 = v16;
    v15 = v17;
    [(PXFeedHitTestResult *)v5 setDataSourceIndexPath:&v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _handlePrimaryActionForItemAtIndex:*(a1 + 40)];

  return v3;
}

id __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _handleTouchForItemAtIndex:*(a1 + 40)];

  return v3;
}

id __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _handleHoverForItemAtIndex:*(a1 + 40)];

  return v3;
}

uint64_t __58__PXFeedSectionContentLayout_hitTestResultForSpriteIndex___block_invoke_4(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _handlePresentMenuActionForIndex:*(a1 + 40) atLocation:v7 inView:{a3, a4}];

  return v9;
}

- (double)alphaForSublayout:(id)a3 atIndex:(int64_t)a4
{
  v6 = [(PXFeedSectionContentLayout *)self localHiddenSpriteIndexes];
  v7 = [v6 containsIndex:a4];

  v8 = 0.0;
  if ((v7 & 1) == 0)
  {
    v8 = 1.0;
    if (!a4)
    {
      v9 = [(PXFeedSectionContentLayout *)self viewModel];
      v10 = [v9 spec];
      v11 = [v10 wantsFirstItemFullscreen];

      if (v11)
      {
        [(PXFeedSectionContentLayout *)self visibleRect];
        v13 = v12;
        v14 = [(PXFeedSectionContentLayout *)self viewModel];
        v15 = [v14 spec];
        v16 = [v15 scrollBehavior];
        [v16 intrinsicContentOffset];
        v18 = v13 / v17;
        v8 = 1.0;
        v19 = 1.0 - v18;

        v20 = fmax(v19, 0.0);
        if (v20 <= 1.0)
        {
          return v20;
        }
      }
    }
  }

  return v8;
}

- (void)localHiddenSpriteIndexesDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedSectionContentLayout;
  [(PXFeedSectionContentLayout *)&v3 localHiddenSpriteIndexesDidChange];
  [(PXGCompositeLayout *)self invalidateSublayouts];
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXFeedSectionContentLayout;
  [(PXGCompositeLayout *)&v8 visibleRectDidChange];
  v3 = [(PXFeedSectionContentLayout *)self autoplayController];
  [v3 containerLayoutVisibleRectDidChange];

  v4 = [(PXFeedSectionContentLayout *)self viewModel];
  v5 = [v4 visibleRectChangeObserver];

  if (v5)
  {
    v6 = [(PXFeedSectionContentLayout *)self viewModel];
    v7 = [v6 visibleRectChangeObserver];
    [(PXFeedSectionContentLayout *)self visibleRect];
    v7[2](v7);
  }
}

- (void)didUpdateSublayouts
{
  v3.receiver = self;
  v3.super_class = PXFeedSectionContentLayout;
  [(PXGCompositeLayout *)&v3 didUpdateSublayouts];
  [(PXFeedSectionContentLayout *)self _updateFeedSprites];
}

- (int64_t)scrollableAxis
{
  v2 = [(PXGCompositeLayout *)self composition];
  v3 = [v2 scrollableAxis];

  return v3;
}

- (int64_t)itemForSpriteIndex:(unsigned int)a3
{
  if ([(PXFeedSectionContentLayout *)self localNumberOfSprites]<= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3;
  }
}

- (PXFeedSectionContentLayout)initWithViewModel:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5
{
  v9 = a3;
  v10 = a4;
  v24.receiver = self;
  v24.super_class = PXFeedSectionContentLayout;
  v11 = [(PXGCompositeLayout *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a3);
    [(PXFeedViewModel *)v12->_viewModel registerChangeObserver:v12 context:ViewModelObservationContext_248659];
    [(PXFeedViewModel *)v12->_viewModel registerAccessoryTapToRadarDiagnosticsProvider:v12];
    v13 = [(PXFeedViewModel *)v12->_viewModel itemLayoutFactory];
    objc_storeStrong(&v12->_itemLayoutFactory, v13);
    v12->_itemLayoutFactoryRespondsTo.setItemLayoutShouldAutoplayContentVideoTimeRange = objc_opt_respondsToSelector() & 1;
    v12->_itemLayoutFactoryRespondsTo.setItemLayoutIsTouched = objc_opt_respondsToSelector() & 1;
    v12->_itemLayoutFactoryRespondsTo.setItemLayoutIsHovered = objc_opt_respondsToSelector() & 1;
    v12->_itemLayoutFactoryRespondsTo.shouldReloadItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource = objc_opt_respondsToSelector() & 1;
    v12->_itemLayoutFactoryRespondsTo.configureItemLayoutForChangedItemFromIndexPathInDataSourceToIndexPathInDataSource = objc_opt_respondsToSelector() & 1;
    v12->_itemLayoutFactoryRespondsTo.decorationOverlayAnchorSpriteIndexForItemLayout = objc_opt_respondsToSelector() & 1;
    v12->_itemLayoutFactoryRespondsTo.itemPlacementControllerForItemReferenceItemLayout = objc_opt_respondsToSelector() & 1;
    objc_storeStrong(&v12->_dataSource, a4);
    v14 = *&a5->item;
    *&v12->_sectionIndexPath.dataSourceIdentifier = *&a5->dataSourceIdentifier;
    *&v12->_sectionIndexPath.item = v14;
    [(PXFeedSectionContentLayout *)v12 setContentSource:v12];
    v15 = objc_alloc_init(PXFeedSublayoutComposition);
    [(PXGCompositeLayout *)v12 setComposition:v15];

    if (v12->_itemLayoutFactoryRespondsTo.setItemLayoutShouldAutoplayContentVideoTimeRange)
    {
      v16 = [v9 spec];
      v17 = [v16 allowsAutoplayContent];

      if (v17)
      {
        v18 = [PXFeedAutoplayController alloc];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __76__PXFeedSectionContentLayout_initWithViewModel_dataSource_sectionIndexPath___block_invoke;
        v22[3] = &unk_1E774AD38;
        v23 = v13;
        v19 = [(PXFeedAutoplayController *)v18 initWithContainerLayout:v12 viewModel:v9 itemLayoutDesiredPlayStateSetter:v22];
        autoplayController = v12->_autoplayController;
        v12->_autoplayController = v19;
      }
    }

    [(PXFeedSectionContentLayout *)v12 _invalidateFeedSublayouts];
    [(PXFeedSectionContentLayout *)v12 _invalidateCompositionParameters];
    [(PXFeedSectionContentLayout *)v12 _invalidateAutoplayControllerParameters];
  }

  return v12;
}

uint64_t __76__PXFeedSectionContentLayout_initWithViewModel_dataSource_sectionIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = *(a1 + 32);
  v5 = a4[1];
  v7[0] = *a4;
  v7[1] = v5;
  v7[2] = a4[2];
  return [v4 setItemLayout:a2 shouldAutoplayContent:a3 videoTimeRange:v7];
}

- (PXFeedSectionContentLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedSectionContentLayout.m" lineNumber:67 description:{@"%s is not available as initializer", "-[PXFeedSectionContentLayout init]"}];

  abort();
}

@end