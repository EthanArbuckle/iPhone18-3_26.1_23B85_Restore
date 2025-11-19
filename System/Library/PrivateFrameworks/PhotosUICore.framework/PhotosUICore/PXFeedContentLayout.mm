@interface PXFeedContentLayout
- (PXFeedContentLayout)init;
- (PXFeedContentLayout)initWithViewModel:(id)a3;
- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)a3 inDirection:(PXSimpleIndexPath *)a4;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (int64_t)anchoredSublayoutIndex;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_invalidateCompositionParameters;
- (void)_invalidateFeedSectionSublayouts;
- (void)_invalidateFeedSelectionSnapshot;
- (void)_updateCompositionParameters;
- (void)_updateFeedSectionSublayouts;
- (void)_updateFeedSelectionSnapshot;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)safeAreaInsetsDidChange;
- (void)update;
@end

@implementation PXFeedContentLayout

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v10 = a3;
  if (ViewModelObservationContext_215315 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXFeedContentLayout.m" lineNumber:232 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 2) != 0)
  {
    [(PXFeedContentLayout *)self _invalidateFeedSectionSublayouts];
    if ((v6 & 4) == 0)
    {
LABEL_4:
      if ((v6 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

  [(PXFeedContentLayout *)self _invalidateFeedSelectionSnapshot];
  if ((v6 & 8) != 0)
  {
LABEL_5:
    [(PXFeedContentLayout *)self _invalidateCompositionParameters];
  }

LABEL_6:
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v6 = [(PXFeedContentLayout *)self viewModel];
  v7 = [v6 dataSource];
  v8 = [v7 identifier];
  v9 = [PXFeedSectionContentLayout alloc];
  v14[0] = v8;
  v14[1] = a4;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v15 = vnegq_f64(v10);
  v11 = [(PXFeedSectionContentLayout *)v9 initWithViewModel:v6 dataSource:v7 sectionIndexPath:v14];
  v12 = [[off_1E77215B0 alloc] initWithDecoratedLayout:v11];
  [v12 setActiveDecorations:&unk_1F19118C0];
  [v12 setContentSource:self->_decorationSource];
  [v12 setDecorationSource:self->_decorationSource];
  [(PXFeedItemDecorationSource *)self->_decorationSource setDecoratedLayout:v11];

  return v12;
}

- (int64_t)anchoredSublayoutIndex
{
  if ([(PXFeedContentLayout *)self numberOfSublayouts]== 1)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PXFeedContentLayout;
  return [(PXFeedContentLayout *)&v4 anchoredSublayoutIndex];
}

- (void)_updateCompositionParameters
{
  v12 = [(PXGCompositeLayout *)self composition];
  v3 = [(PXFeedContentLayout *)self viewModel];
  v4 = [v3 wantsEmbeddedScrollView];

  if (v4)
  {
    [(PXFeedContentLayout *)self safeAreaInsets];
  }

  else
  {
    v5 = *off_1E7721FA8;
    v6 = *(off_1E7721FA8 + 1);
    v7 = *(off_1E7721FA8 + 2);
    v8 = *(off_1E7721FA8 + 3);
  }

  [v12 setPadding:{v5, v6, v7, v8}];
  v9 = [(PXFeedContentLayout *)self viewModel];
  v10 = [v9 spec];
  v11 = [v10 scrollBehavior];
  [v12 setAxis:{objc_msgSend(v11, "axis")}];
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
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout _invalidateCompositionParameters]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedContentLayout.m" lineNumber:169 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXFeedContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateFeedSelectionSnapshot
{
  v4 = [(PXFeedContentLayout *)self viewModel];
  v3 = [v4 selectionSnapshot];
  [(PXFeedItemDecorationSource *)self->_decorationSource setSelectionSnapshot:v3];
}

- (void)_invalidateFeedSelectionSnapshot
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout _invalidateFeedSelectionSnapshot]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedContentLayout.m" lineNumber:160 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXFeedContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateFeedSectionSublayouts
{
  v3 = [(PXFeedContentLayout *)self presentedDataSource];
  v4 = [(PXFeedContentLayout *)self viewModel];
  v5 = [v4 dataSource];
  v6 = [v4 dataSourceChangeHistory];
  v7 = [v6 coalescedChangeDetailsFromDataSourceIdentifier:objc_msgSend(v3 toDataSourceIdentifier:{"identifier"), objc_msgSend(v5, "identifier")}];

  v8 = [v7 sectionChanges];
  -[PXFeedContentLayout applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:](self, "applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:", v8, [v5 numberOfSections], self);
  v9 = [v7 sectionsWithItemChanges];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PXFeedContentLayout__updateFeedSectionSublayouts__block_invoke;
  v12[3] = &unk_1E774C1B0;
  v12[4] = self;
  v13 = v5;
  v14 = v7;
  v10 = v7;
  v11 = v5;
  [v9 enumerateIndexesUsingBlock:v12];

  [(PXFeedItemDecorationSource *)self->_decorationSource setDataSource:v11 section:0];
  [(PXFeedContentLayout *)self setPresentedDataSource:v11];
}

void __51__PXFeedContentLayout__updateFeedSectionSublayouts__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sublayoutAtIndex:a2 loadIfNeeded:0];
  v3 = [v4 decoratedLayout];
  [v3 setDataSource:*(a1 + 40) changeDetails:*(a1 + 48)];
}

- (void)_invalidateFeedSectionSublayouts
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout _invalidateFeedSectionSublayouts]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedContentLayout.m" lineNumber:139 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXFeedContentLayout *)self setNeedsUpdate];
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
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXFeedContentLayout.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXFeedContentLayout *)self _updateFeedSectionSublayouts];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
        [v9 handleFailureInFunction:v10 file:@"PXFeedContentLayout.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXFeedContentLayout *)self _updateFeedSelectionSnapshot];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
      [v11 handleFailureInFunction:v12 file:@"PXFeedContentLayout.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXFeedContentLayout *)self _updateCompositionParameters];
      v6 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v6)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXFeedContentLayout.m" lineNumber:134 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v15.receiver = self;
  v15.super_class = PXFeedContentLayout;
  [(PXGCompositeLayout *)&v15 update];
}

- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)a3 inDirection:(PXSimpleIndexPath *)a4
{
  v10 = [(PXFeedContentLayout *)self viewModel];
  v11 = [v10 dataSource];
  v12 = *&a4->item;
  v24[0] = *&a4->dataSourceIdentifier;
  v24[1] = v12;
  v13 = [v11 objectReferenceAtIndexPath:v24];

  if (!v13)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a3 object:self file:@"PXFeedContentLayout.m" lineNumber:106 description:@"Cannot be nil"];
  }

  v23 = 0;
  v14 = [(PXFeedContentLayout *)self sublayoutAtIndex:[(PXFeedContentLayout *)self sublayoutIndexForObjectReference:v13 options:0 updatedObjectReference:&v23] loadIfNeeded:0];
  if (!v14)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a3 object:self file:@"PXFeedContentLayout.m" lineNumber:110 description:@"Cannot be nil"];
  }

  v15 = [v14 decoratedLayout];
  if (!v15)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a3 object:self file:@"PXFeedContentLayout.m" lineNumber:112 description:@"Cannot be nil"];
  }

  v16 = [v15 axSpriteIndexClosestToSpriteIndex:LODWORD(a4->item) inDirection:a5];
  if (v16 == -1)
  {
    v17 = *off_1E7722228;
    v18 = *(off_1E7722228 + 1);
  }

  else
  {
    a4->item = v16;
    v17 = *&a4->dataSourceIdentifier;
    v18 = *&a4->item;
  }

  *&retstr->dataSourceIdentifier = v17;
  *&retstr->item = v18;

  return result;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedContentLayout;
  [(PXFeedContentLayout *)&v3 safeAreaInsetsDidChange];
  [(PXFeedContentLayout *)self _invalidateCompositionParameters];
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PXFeedContentLayout *)self sublayoutDataStore];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __63__PXFeedContentLayout_itemPlacementControllerForItemReference___block_invoke;
  v15 = &unk_1E7746048;
  v16 = self;
  v17 = v5;
  v18 = v6;
  v19 = a2;
  v8 = v6;
  v9 = v5;
  [v7 enumerateSublayoutsUsingBlock:&v12];

  v10 = [off_1E7721650 itemPlacementControllerForItemPlacementControllers:{v8, v12, v13, v14, v15, v16}];

  return v10;
}

void __63__PXFeedContentLayout_itemPlacementControllerForItemReference___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 decoratedLayout];
  v6 = [v4 itemPlacementControllerForItemReference:*(a1 + 40)];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
    v5 = v6;
  }
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(PXFeedContentLayout *)self viewModel];
    v9 = [v8 dataSource];

    v10 = [v9 objectReferenceForObjectReference:v7];
    if (!v10)
    {
      goto LABEL_7;
    }

    if (v9)
    {
      [v9 indexPathForObjectReference:v10];
    }

    if (*off_1E7721F68)
    {
      v11 = 0;
      v12 = v10;

      v7 = v12;
    }

    else
    {
LABEL_7:
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v7;
  *a5 = v7;

  return v11;
}

- (int64_t)scrollableAxis
{
  v2 = [(PXGCompositeLayout *)self composition];
  v3 = [v2 axis];

  return v3;
}

- (PXFeedContentLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXFeedContentLayout;
  v6 = [(PXGCompositeLayout *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(PXFeedViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_215315];
    v8 = objc_alloc_init(PXFeedItemDecorationSource);
    decorationSource = v7->_decorationSource;
    v7->_decorationSource = v8;

    v10 = objc_alloc_init(off_1E77216E0);
    [(PXGCompositeLayout *)v7 setComposition:v10];

    [(PXFeedContentLayout *)v7 _invalidateFeedSectionSublayouts];
    [(PXFeedContentLayout *)v7 _invalidateFeedSelectionSnapshot];
    [(PXFeedContentLayout *)v7 _invalidateCompositionParameters];
  }

  return v7;
}

- (PXFeedContentLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedContentLayout.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXFeedContentLayout init]"}];

  abort();
}

@end