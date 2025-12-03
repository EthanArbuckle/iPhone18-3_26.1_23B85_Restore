@interface PXSectionedLayoutEngine
- (BOOL)_computeSectionsIfNeeded;
- (BOOL)canComputeLayoutSnapshot;
- (CGSize)seedSize;
- (PXSectionedLayoutEngine)init;
- (PXSectionedLayoutEngine)initWithAxis:(int64_t)axis layoutGenerator:(id)generator dataSourceSnapshot:(id)snapshot insets:(UIEdgeInsets)insets;
- (PXSectionedLayoutEngine)initWithLayoutGenerator:(id)generator dataSourceSnapshot:(id)snapshot;
- (id)_computeSectionsFromSection:(id)section itemIndex:(int64_t)index kind:(int64_t)kind;
- (id)_newLayoutSection;
- (id)_newLayoutSnapshot;
- (id)computeLayoutSnapshot;
- (id)performChangesAndWait:(id)wait;
- (void)_computeSection:(id)section;
- (void)_prepareGeometryBufferForCount:(unint64_t)count;
- (void)_resetLayoutData;
- (void)_updateLayoutDataWithChangeDetails:(id)details;
- (void)dealloc;
- (void)performChanges:(id)changes;
- (void)setDataSourceSnapshot:(id)snapshot withChangeDetails:(id)details;
- (void)setDelegate:(id)delegate;
- (void)setSeedItem:(id)item;
- (void)setSeedSize:(CGSize)size;
- (void)updateLayoutDataWithChangeDetails:(id)details;
@end

@implementation PXSectionedLayoutEngine

- (CGSize)seedSize
{
  width = self->_seedSize.width;
  height = self->_seedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_prepareGeometryBufferForCount:(unint64_t)count
{
  if (self->_geometryBufferCount < count)
  {
    self->_geometryBuffer = malloc_type_realloc(self->_geometryBuffer, 152 * count, 0x100004050011849uLL);
    self->_geometryBufferCount = count;
  }
}

- (void)_computeSection:(id)section
{
  sectionCopy = section;
  if (!sectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:396 description:@"section is nil"];
  }

  dataSourceSnapshot = [(PXLayoutEngine *)self dataSourceSnapshot];
  index = [sectionCopy index];
  v8 = [dataSourceSnapshot numberOfItemsInSection:index];
  layoutGenerator = [(PXLayoutEngine *)self layoutGenerator];
  if (self->_delegateRespondsTo.willGenerateLayoutForSection)
  {
    delegate = [(PXLayoutEngine *)self delegate];
    [delegate layoutEngine:self willGenerateLayoutWithGenerator:layoutGenerator forSection:index];
  }

  [layoutGenerator setItemCount:v8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__PXSectionedLayoutEngine__computeSection___block_invoke;
  v20[3] = &unk_1E7BB7858;
  v21 = dataSourceSnapshot;
  v22 = index;
  v11 = dataSourceSnapshot;
  [layoutGenerator setItemLayoutInfoBlock:v20];
  geometryKinds = [layoutGenerator geometryKinds];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__PXSectionedLayoutEngine__computeSection___block_invoke_2;
  v16[3] = &unk_1E7BB7880;
  v17 = layoutGenerator;
  selfCopy = self;
  v19 = sectionCopy;
  v13 = sectionCopy;
  v14 = layoutGenerator;
  [geometryKinds enumerateIndexesUsingBlock:v16];
  [v14 size];
  [v13 setSize:?];
  [v13 setAccurate:1];
}

id __43__PXSectionedLayoutEngine__computeSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:*(a1 + 40)];
  v4 = [*(a1 + 32) inputForItem:v3];

  return v4;
}

void __43__PXSectionedLayoutEngine__computeSection___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[4] numberOfGeometriesWithKind:a2];
  if (v4)
  {
    v5 = v4;
    [a1[5] _prepareGeometryBufferForCount:v4];
    [a1[4] getGeometries:*(a1[5] + 11) inRange:0 withKind:{v5, a2}];
    v6 = [[PXLayoutGeometryArray alloc] initWithGeometries:*(a1[5] + 11) count:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a1[6] setGeometries:v6 withKind:a2];
}

- (id)_computeSectionsFromSection:(id)section itemIndex:(int64_t)index kind:(int64_t)kind
{
  sectionCopy = section;
  array = [MEMORY[0x1E695DF70] array];
  [(PXSectionedLayoutEngine *)self seedSize];
  v11 = v10;
  v13 = v12;
  dataSourceSnapshot = [(PXLayoutEngine *)self dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];
  index = [sectionCopy index];
  v16 = sectionCopy;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v17 = [v16 geometriesWithKind:kind];
  v18 = v17;
  if (v17)
  {
    [v17 geometryAtIndex:index];
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
  }

  [v16 frame];
  v21 = v19;
  v22 = v20;
  axis = self->_axis;
  v24 = 0.0;
  if (axis)
  {
    if (axis == 1)
    {
      v26 = &v56;
      v25 = v20;
    }

    else
    {
      v25 = 0.0;
      if (axis != 2)
      {
        goto LABEL_26;
      }

      v26 = &v55 + 1;
      v13 = v11;
      v25 = v19;
    }

    v24 = v13 * 0.5;
    if (index)
    {
      v27 = v25 + *v26 - v24;
      if (v25 > v27)
      {
        v52 = numberOfSections;
        v28 = index - 1;
        do
        {
          v29 = [(PXSectionedLayoutContent *)self->_layoutContent sectionAtIndex:v28, v52];
          if (([v29 isAccurate] & 1) == 0)
          {
            [(PXSectionedLayoutEngine *)self _computeSection:v29];
            [array insertObject:v29 atIndex:0];
          }

          [v29 frame];
          v32 = self->_axis;
          if (v32)
          {
            if (v32 != 1)
            {
              v31 = v25;
            }

            if (v32 == 2)
            {
              v25 = v30;
            }

            else
            {
              v25 = v31;
            }
          }

          else
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:334 description:@"axis == PXAxisUndefined"];
          }

          v34 = v28-- != 0;
        }

        while (v34 && v25 > v27);
        numberOfSections = v52;
      }
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:307 description:@"axis == PXAxisUndefined"];

    v25 = 0.0;
  }

LABEL_26:
  index2 = [v16 index];
  v37 = self->_axis;
  v38 = 0.0;
  if (v37)
  {
    if (v37 == 2)
    {
      v38 = v24 + v21 + *(&v55 + 1);
      [v16 frame];
      v25 = v21 + v40;
    }

    else if (v37 == 1)
    {
      v38 = v24 + v22 + *&v56;
      [v16 frame];
      v25 = v22 + v39;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:359 description:@"axis == PXAxisUndefined"];
  }

  v42 = numberOfSections - 1;
  if (index2 < numberOfSections - 1 && v25 < v38)
  {
    v43 = index2 + 1;
    do
    {
      v44 = [(PXSectionedLayoutContent *)self->_layoutContent sectionAtIndex:v43];
      if (([v44 isAccurate] & 1) == 0)
      {
        [(PXSectionedLayoutEngine *)self _computeSection:v44];
        [array addObject:v44];
      }

      [v44 frame];
      v49 = self->_axis;
      if (v49)
      {
        if (v49 == 2)
        {
          v25 = v45 + v47;
        }

        else if (v49 == 1)
        {
          v25 = v46 + v48;
        }
      }

      else
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:385 description:@"axis == PXAxisUndefined"];
      }

      if (v43 >= v42)
      {
        break;
      }

      ++v43;
    }

    while (v25 < v38);
  }

  return array;
}

- (BOOL)_computeSectionsIfNeeded
{
  v36 = *MEMORY[0x1E69E9840];
  dataSourceSnapshot = [(PXLayoutEngine *)self dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];
  if (numberOfSections < 1)
  {
    v29 = 0;
  }

  else
  {
    v6 = numberOfSections;
    v31 = a2;
    array = [MEMORY[0x1E695DF70] array];
    seedItem = [(PXLayoutEngine *)self seedItem];
    px_section = [seedItem px_section];
    px_item = [seedItem px_item];
    px_kind = [seedItem px_kind];
    sections = [(PXSectionedLayoutContent *)self->_layoutContent sections];
    v11 = [sections count];

    layoutGenerator = [(PXLayoutEngine *)self layoutGenerator];
    [layoutGenerator estimatedSize];
    if (v11 < v6)
    {
      v15 = v13;
      v16 = v14;
      do
      {
        _newLayoutSection = [(PXSectionedLayoutEngine *)self _newLayoutSection];
        [_newLayoutSection setIndex:v11];
        [_newLayoutSection setSize:{v15, v16}];
        [_newLayoutSection setAccurate:0];
        [(PXSectionedLayoutContent *)self->_layoutContent addSection:_newLayoutSection];

        ++v11;
      }

      while (v6 != v11);
    }

    sections2 = [(PXSectionedLayoutContent *)self->_layoutContent sections];
    v19 = [sections2 count];

    if (v19 <= px_section)
    {
      v20 = PFUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = dataSourceSnapshot;
        _os_log_impl(&dword_1B3F73000, v20, OS_LOG_TYPE_DEBUG, "dataSourceSnapshot %@", buf, 0xCu);
      }

      v21 = PFUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        numberOfSections2 = [dataSourceSnapshot numberOfSections];
        *buf = 134217984;
        v35 = numberOfSections2;
        _os_log_impl(&dword_1B3F73000, v21, OS_LOG_TYPE_DEBUG, "[dataSourceSnapshot numberOfSections] %ld", buf, 0xCu);
      }

      v23 = PFUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        layoutContent = self->_layoutContent;
        *buf = 138412290;
        v35 = layoutContent;
        _os_log_impl(&dword_1B3F73000, v23, OS_LOG_TYPE_DEBUG, "_layoutContent %@", buf, 0xCu);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v31 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:256 description:{@"Seed item specifies out of bounds section index: sections %ld > seedSectionIndex %ld", v19, px_section}];
    }

    v26 = [(PXSectionedLayoutContent *)self->_layoutContent sectionAtIndex:px_section];
    if (([v26 isAccurate] & 1) == 0)
    {
      [(PXSectionedLayoutEngine *)self _computeSection:v26];
      [array addObject:v26];
    }

    v27 = [(PXSectionedLayoutEngine *)self _computeSectionsFromSection:v26 itemIndex:px_item kind:px_kind];
    [array addObjectsFromArray:v27];
    v28 = [array count];
    v29 = v28 != 0;
    if (v28)
    {
      [(PXSectionedLayoutContent *)self->_layoutContent updateSections:array];
    }
  }

  return v29;
}

- (id)_newLayoutSnapshot
{
  [(PXSectionedLayoutContent *)self->_layoutContent contentSize];
  v4 = v3;
  v6 = v5;
  sections = [(PXSectionedLayoutContent *)self->_layoutContent sections];
  v8 = [[PXSectionedLayoutSnapshot alloc] initWithContentRect:sections forSections:0.0, 0.0, v4, v6];

  return v8;
}

- (id)_newLayoutSection
{
  layoutGenerator = [(PXLayoutEngine *)self layoutGenerator];
  [layoutGenerator estimatedSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(PXLayoutSection);
  [(PXLayoutSection *)v7 setFrame:0.0, 0.0, v4, v6];

  return v7;
}

- (void)_updateLayoutDataWithChangeDetails:(id)details
{
  detailsCopy = details;
  sectionChanges = [detailsCopy sectionChanges];
  removedIndexes = [sectionChanges removedIndexes];

  sectionChanges2 = [detailsCopy sectionChanges];
  insertedIndexes = [sectionChanges2 insertedIndexes];

  sectionsWithItemChanges = [detailsCopy sectionsWithItemChanges];
  v10 = [removedIndexes count];
  v11 = [insertedIndexes count];
  v12 = [sectionsWithItemChanges count];
  if (v10)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke;
    v21[3] = &unk_1E7BB83D8;
    v21[4] = self;
    [removedIndexes enumerateIndexesWithOptions:2 usingBlock:v21];
  }

  if (v11)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke_2;
    v20[3] = &unk_1E7BB83D8;
    v20[4] = self;
    [insertedIndexes enumerateIndexesUsingBlock:v20];
  }

  if (v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke_3;
    v19[3] = &unk_1E7BB83D8;
    v19[4] = self;
    [sectionsWithItemChanges enumerateIndexesUsingBlock:v19];
  }

  seedItem = [(PXLayoutEngine *)self seedItem];
  if (seedItem && self->_needsUpdateSeedItem && ([detailsCopy sectionChanges], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "indexAfterApplyingChangesToIndex:", objc_msgSend(seedItem, "px_section")), v14, v15 != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend(detailsCopy, "itemChangesInSection:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "indexAfterApplyingChangesToIndex:", objc_msgSend(seedItem, "px_item")), v16, v17 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v18 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:v15];
  }

  else
  {
    v18 = 0;
  }

  [(PXSectionedLayoutEngine *)self setSeedItem:v18];
}

void __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 72) sectionAtIndex:a2];
  [*(*(a1 + 32) + 72) removeSection:v3];
}

void __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _newLayoutSection];
  [*(*(a1 + 32) + 72) insertSection:v4 atIndex:a2];
}

void __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 72) sectionAtIndex:a2];
  [v2 setAccurate:0];
}

- (void)_resetLayoutData
{
  dataSourceSnapshot = [(PXLayoutEngine *)self dataSourceSnapshot];
  numberOfSections = [dataSourceSnapshot numberOfSections];
  layoutGenerator = [(PXLayoutEngine *)self layoutGenerator];
  [layoutGenerator estimatedSize];
  v6 = v5;
  v8 = v7;
  [(PXSectionedLayoutContent *)self->_layoutContent removeAllSections];
  if (numberOfSections)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      _newLayoutSection = [(PXSectionedLayoutEngine *)self _newLayoutSection];
      [_newLayoutSection setIndex:i];
      [_newLayoutSection setSize:{v6, v8}];
      [_newLayoutSection setAccurate:0];
      [(PXSectionedLayoutContent *)self->_layoutContent addSection:_newLayoutSection];
    }
  }

  [(PXLayoutEngine *)self invalidateLayoutSnapshot];
}

- (id)computeLayoutSnapshot
{
  dataSourceSnapshot = [(PXLayoutEngine *)self dataSourceSnapshot];
  if ([dataSourceSnapshot numberOfSections])
  {
    if (![(PXSectionedLayoutEngine *)self _computeSectionsIfNeeded])
    {
      identifier = [dataSourceSnapshot identifier];
      layoutSnapshot = [(PXLayoutEngine *)self layoutSnapshot];
      dataSourceSnapshot2 = [layoutSnapshot dataSourceSnapshot];
      identifier2 = [dataSourceSnapshot2 identifier];

      if (identifier == identifier2)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    _newLayoutSnapshot = [(PXSectionedLayoutEngine *)self _newLayoutSnapshot];
  }

  else
  {
    _newLayoutSnapshot = [(PXSectionedLayoutEngine *)self _emptyLayoutSnapshot];
  }

  v8 = _newLayoutSnapshot;
LABEL_8:

  return v8;
}

- (void)updateLayoutDataWithChangeDetails:(id)details
{
  detailsCopy = details;
  v9 = detailsCopy;
  if (detailsCopy)
  {
    sectionChanges = [detailsCopy sectionChanges];
    if ([sectionChanges hasIncrementalChanges])
    {
      sectionChanges2 = [v9 sectionChanges];
      hasMoves = [sectionChanges2 hasMoves];

      v5 = v9;
      if ((hasMoves & 1) == 0)
      {
        [(PXSectionedLayoutEngine *)self _updateLayoutDataWithChangeDetails:v9];
        [(PXLayoutEngine *)self invalidateLayoutSnapshot];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  [(PXSectionedLayoutEngine *)self _resetLayoutData];
LABEL_7:
}

- (BOOL)canComputeLayoutSnapshot
{
  v5.receiver = self;
  v5.super_class = PXSectionedLayoutEngine;
  canComputeLayoutSnapshot = [(PXLayoutEngine *)&v5 canComputeLayoutSnapshot];
  if (canComputeLayoutSnapshot)
  {
    LOBYTE(canComputeLayoutSnapshot) = *(MEMORY[0x1E695F060] + 8) != self->_seedSize.height || *MEMORY[0x1E695F060] != self->_seedSize.width;
  }

  return canComputeLayoutSnapshot;
}

- (void)setSeedItem:(id)item
{
  v4.receiver = self;
  v4.super_class = PXSectionedLayoutEngine;
  [(PXLayoutEngine *)&v4 setSeedItem:item];
  self->_needsUpdateSeedItem = 0;
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = PXSectionedLayoutEngine;
  delegateCopy = delegate;
  [(PXLayoutEngine *)&v6 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  self->_delegateRespondsTo.willGenerateLayoutForSection = v5 & 1;
}

- (void)setDataSourceSnapshot:(id)snapshot withChangeDetails:(id)details
{
  v4.receiver = self;
  v4.super_class = PXSectionedLayoutEngine;
  [(PXLayoutEngine *)&v4 setDataSourceSnapshot:snapshot withChangeDetails:details];
}

- (void)setSeedSize:(CGSize)size
{
  if (size.width != self->_seedSize.width || size.height != self->_seedSize.height)
  {
    self->_seedSize = size;
    [(PXLayoutEngine *)self invalidateLayoutSnapshot];
  }
}

- (id)performChangesAndWait:(id)wait
{
  waitCopy = wait;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PXSectionedLayoutEngine_performChangesAndWait___block_invoke;
  v9[3] = &unk_1E7BB7830;
  v9[4] = self;
  v10 = waitCopy;
  v8.receiver = self;
  v8.super_class = PXSectionedLayoutEngine;
  v5 = waitCopy;
  v6 = [(PXLayoutEngine *)&v8 performChangesAndWait:v9];

  return v6;
}

- (void)performChanges:(id)changes
{
  self->_needsUpdateSeedItem = 1;
  v3.receiver = self;
  v3.super_class = PXSectionedLayoutEngine;
  [(PXLayoutEngine *)&v3 performChanges:changes];
}

- (void)dealloc
{
  geometryBuffer = self->_geometryBuffer;
  if (geometryBuffer)
  {
    free(geometryBuffer);
  }

  v4.receiver = self;
  v4.super_class = PXSectionedLayoutEngine;
  [(PXSectionedLayoutEngine *)&v4 dealloc];
}

- (PXSectionedLayoutEngine)initWithAxis:(int64_t)axis layoutGenerator:(id)generator dataSourceSnapshot:(id)snapshot insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v16.receiver = self;
  v16.super_class = PXSectionedLayoutEngine;
  v11 = [(PXLayoutEngine *)&v16 initWithLayoutGenerator:generator dataSourceSnapshot:snapshot];
  v12 = v11;
  if (v11)
  {
    v11->_axis = axis;
    right = [[PXSectionedLayoutContent alloc] initWithAxis:axis insets:top, left, bottom, right];
    layoutContent = v12->_layoutContent;
    v12->_layoutContent = right;

    v12->_geometryBuffer = 0;
  }

  return v12;
}

- (PXSectionedLayoutEngine)initWithLayoutGenerator:(id)generator dataSourceSnapshot:(id)snapshot
{
  generatorCopy = generator;
  snapshotCopy = snapshot;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXSectionedLayoutEngine initWithLayoutGenerator:dataSourceSnapshot:]"}];

  abort();
}

- (PXSectionedLayoutEngine)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXSectionedLayoutEngine init]"}];

  abort();
}

@end