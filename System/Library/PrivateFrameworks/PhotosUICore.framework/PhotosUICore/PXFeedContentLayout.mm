@interface PXFeedContentLayout
- (PXFeedContentLayout)init;
- (PXFeedContentLayout)initWithViewModel:(id)model;
- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)path inDirection:(PXSimpleIndexPath *)direction;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (int64_t)anchoredSublayoutIndex;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)_invalidateCompositionParameters;
- (void)_invalidateFeedSectionSublayouts;
- (void)_invalidateFeedSelectionSnapshot;
- (void)_updateCompositionParameters;
- (void)_updateFeedSectionSublayouts;
- (void)_updateFeedSelectionSnapshot;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)safeAreaInsetsDidChange;
- (void)update;
@end

@implementation PXFeedContentLayout

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ViewModelObservationContext_215315 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedContentLayout.m" lineNumber:232 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    [(PXFeedContentLayout *)self _invalidateFeedSectionSublayouts];
    if ((changeCopy & 4) == 0)
    {
LABEL_4:
      if ((changeCopy & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((changeCopy & 4) == 0)
  {
    goto LABEL_4;
  }

  [(PXFeedContentLayout *)self _invalidateFeedSelectionSnapshot];
  if ((changeCopy & 8) != 0)
  {
LABEL_5:
    [(PXFeedContentLayout *)self _invalidateCompositionParameters];
  }

LABEL_6:
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  viewModel = [(PXFeedContentLayout *)self viewModel];
  dataSource = [viewModel dataSource];
  identifier = [dataSource identifier];
  v9 = [PXFeedSectionContentLayout alloc];
  v14[0] = identifier;
  v14[1] = index;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v15 = vnegq_f64(v10);
  v11 = [(PXFeedSectionContentLayout *)v9 initWithViewModel:viewModel dataSource:dataSource sectionIndexPath:v14];
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
  composition = [(PXGCompositeLayout *)self composition];
  viewModel = [(PXFeedContentLayout *)self viewModel];
  wantsEmbeddedScrollView = [viewModel wantsEmbeddedScrollView];

  if (wantsEmbeddedScrollView)
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

  [composition setPadding:{v5, v6, v7, v8}];
  viewModel2 = [(PXFeedContentLayout *)self viewModel];
  spec = [viewModel2 spec];
  scrollBehavior = [spec scrollBehavior];
  [composition setAxis:{objc_msgSend(scrollBehavior, "axis")}];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout _invalidateCompositionParameters]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXFeedContentLayout.m" lineNumber:169 description:{@"invalidating %lu after it already has been updated", 4}];

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
  viewModel = [(PXFeedContentLayout *)self viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];
  [(PXFeedItemDecorationSource *)self->_decorationSource setSelectionSnapshot:selectionSnapshot];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout _invalidateFeedSelectionSnapshot]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXFeedContentLayout.m" lineNumber:160 description:{@"invalidating %lu after it already has been updated", 2}];

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
  presentedDataSource = [(PXFeedContentLayout *)self presentedDataSource];
  viewModel = [(PXFeedContentLayout *)self viewModel];
  dataSource = [viewModel dataSource];
  dataSourceChangeHistory = [viewModel dataSourceChangeHistory];
  v7 = [dataSourceChangeHistory coalescedChangeDetailsFromDataSourceIdentifier:objc_msgSend(presentedDataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource, "identifier")}];

  sectionChanges = [v7 sectionChanges];
  -[PXFeedContentLayout applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:](self, "applySublayoutChangeDetails:countAfterChanges:sublayoutProvider:", sectionChanges, [dataSource numberOfSections], self);
  sectionsWithItemChanges = [v7 sectionsWithItemChanges];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PXFeedContentLayout__updateFeedSectionSublayouts__block_invoke;
  v12[3] = &unk_1E774C1B0;
  v12[4] = self;
  v13 = dataSource;
  v14 = v7;
  v10 = v7;
  v11 = dataSource;
  [sectionsWithItemChanges enumerateIndexesUsingBlock:v12];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout _invalidateFeedSectionSublayouts]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXFeedContentLayout.m" lineNumber:139 description:{@"invalidating %lu after it already has been updated", 1}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXFeedContentLayout.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
        [currentHandler2 handleFailureInFunction:v10 file:@"PXFeedContentLayout.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
      [currentHandler3 handleFailureInFunction:v12 file:@"PXFeedContentLayout.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedContentLayout update]"];
      [currentHandler4 handleFailureInFunction:v14 file:@"PXFeedContentLayout.m" lineNumber:134 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v15.receiver = self;
  v15.super_class = PXFeedContentLayout;
  [(PXGCompositeLayout *)&v15 update];
}

- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)path inDirection:(PXSimpleIndexPath *)direction
{
  viewModel = [(PXFeedContentLayout *)self viewModel];
  dataSource = [viewModel dataSource];
  v12 = *&direction->item;
  v24[0] = *&direction->dataSourceIdentifier;
  v24[1] = v12;
  v13 = [dataSource objectReferenceAtIndexPath:v24];

  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:path object:self file:@"PXFeedContentLayout.m" lineNumber:106 description:@"Cannot be nil"];
  }

  v23 = 0;
  v14 = [(PXFeedContentLayout *)self sublayoutAtIndex:[(PXFeedContentLayout *)self sublayoutIndexForObjectReference:v13 options:0 updatedObjectReference:&v23] loadIfNeeded:0];
  if (!v14)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:path object:self file:@"PXFeedContentLayout.m" lineNumber:110 description:@"Cannot be nil"];
  }

  decoratedLayout = [v14 decoratedLayout];
  if (!decoratedLayout)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:path object:self file:@"PXFeedContentLayout.m" lineNumber:112 description:@"Cannot be nil"];
  }

  v16 = [decoratedLayout axSpriteIndexClosestToSpriteIndex:LODWORD(direction->item) inDirection:a5];
  if (v16 == -1)
  {
    v17 = *off_1E7722228;
    v18 = *(off_1E7722228 + 1);
  }

  else
  {
    direction->item = v16;
    v17 = *&direction->dataSourceIdentifier;
    v18 = *&direction->item;
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

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sublayoutDataStore = [(PXFeedContentLayout *)self sublayoutDataStore];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __63__PXFeedContentLayout_itemPlacementControllerForItemReference___block_invoke;
  v15 = &unk_1E7746048;
  selfCopy = self;
  v17 = referenceCopy;
  v18 = v6;
  v19 = a2;
  v8 = v6;
  v9 = referenceCopy;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:&v12];

  v10 = [off_1E7721650 itemPlacementControllerForItemPlacementControllers:{v8, v12, v13, v14, v15, selfCopy}];

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

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewModel = [(PXFeedContentLayout *)self viewModel];
    dataSource = [viewModel dataSource];

    v10 = [dataSource objectReferenceForObjectReference:referenceCopy];
    if (!v10)
    {
      goto LABEL_7;
    }

    if (dataSource)
    {
      [dataSource indexPathForObjectReference:v10];
    }

    if (*off_1E7721F68)
    {
      v11 = 0;
      v12 = v10;

      referenceCopy = v12;
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

  v13 = referenceCopy;
  *objectReference = referenceCopy;

  return v11;
}

- (int64_t)scrollableAxis
{
  composition = [(PXGCompositeLayout *)self composition];
  axis = [composition axis];

  return axis;
}

- (PXFeedContentLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXFeedContentLayout;
  v6 = [(PXGCompositeLayout *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedContentLayout.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXFeedContentLayout init]"}];

  abort();
}

@end