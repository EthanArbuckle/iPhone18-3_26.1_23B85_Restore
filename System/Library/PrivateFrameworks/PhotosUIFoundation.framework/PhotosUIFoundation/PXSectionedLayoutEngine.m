@interface PXSectionedLayoutEngine
- (BOOL)_computeSectionsIfNeeded;
- (BOOL)canComputeLayoutSnapshot;
- (CGSize)seedSize;
- (PXSectionedLayoutEngine)init;
- (PXSectionedLayoutEngine)initWithAxis:(int64_t)a3 layoutGenerator:(id)a4 dataSourceSnapshot:(id)a5 insets:(UIEdgeInsets)a6;
- (PXSectionedLayoutEngine)initWithLayoutGenerator:(id)a3 dataSourceSnapshot:(id)a4;
- (id)_computeSectionsFromSection:(id)a3 itemIndex:(int64_t)a4 kind:(int64_t)a5;
- (id)_newLayoutSection;
- (id)_newLayoutSnapshot;
- (id)computeLayoutSnapshot;
- (id)performChangesAndWait:(id)a3;
- (void)_computeSection:(id)a3;
- (void)_prepareGeometryBufferForCount:(unint64_t)a3;
- (void)_resetLayoutData;
- (void)_updateLayoutDataWithChangeDetails:(id)a3;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)setDataSourceSnapshot:(id)a3 withChangeDetails:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setSeedItem:(id)a3;
- (void)setSeedSize:(CGSize)a3;
- (void)updateLayoutDataWithChangeDetails:(id)a3;
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

- (void)_prepareGeometryBufferForCount:(unint64_t)a3
{
  if (self->_geometryBufferCount < a3)
  {
    self->_geometryBuffer = malloc_type_realloc(self->_geometryBuffer, 152 * a3, 0x100004050011849uLL);
    self->_geometryBufferCount = a3;
  }
}

- (void)_computeSection:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:396 description:@"section is nil"];
  }

  v6 = [(PXLayoutEngine *)self dataSourceSnapshot];
  v7 = [v5 index];
  v8 = [v6 numberOfItemsInSection:v7];
  v9 = [(PXLayoutEngine *)self layoutGenerator];
  if (self->_delegateRespondsTo.willGenerateLayoutForSection)
  {
    v10 = [(PXLayoutEngine *)self delegate];
    [v10 layoutEngine:self willGenerateLayoutWithGenerator:v9 forSection:v7];
  }

  [v9 setItemCount:v8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__PXSectionedLayoutEngine__computeSection___block_invoke;
  v20[3] = &unk_1E7BB7858;
  v21 = v6;
  v22 = v7;
  v11 = v6;
  [v9 setItemLayoutInfoBlock:v20];
  v12 = [v9 geometryKinds];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__PXSectionedLayoutEngine__computeSection___block_invoke_2;
  v16[3] = &unk_1E7BB7880;
  v17 = v9;
  v18 = self;
  v19 = v5;
  v13 = v5;
  v14 = v9;
  [v12 enumerateIndexesUsingBlock:v16];
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

- (id)_computeSectionsFromSection:(id)a3 itemIndex:(int64_t)a4 kind:(int64_t)a5
{
  v8 = a3;
  v9 = [MEMORY[0x1E695DF70] array];
  [(PXSectionedLayoutEngine *)self seedSize];
  v11 = v10;
  v13 = v12;
  v53 = [(PXLayoutEngine *)self dataSourceSnapshot];
  v14 = [v53 numberOfSections];
  v15 = [v8 index];
  v16 = v8;
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
  v17 = [v16 geometriesWithKind:a5];
  v18 = v17;
  if (v17)
  {
    [v17 geometryAtIndex:a4];
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
    if (v15)
    {
      v27 = v25 + *v26 - v24;
      if (v25 > v27)
      {
        v52 = v14;
        v28 = v15 - 1;
        do
        {
          v29 = [(PXSectionedLayoutContent *)self->_layoutContent sectionAtIndex:v28, v52];
          if (([v29 isAccurate] & 1) == 0)
          {
            [(PXSectionedLayoutEngine *)self _computeSection:v29];
            [v9 insertObject:v29 atIndex:0];
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
            v33 = [MEMORY[0x1E696AAA8] currentHandler];
            [v33 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:334 description:@"axis == PXAxisUndefined"];
          }

          v34 = v28-- != 0;
        }

        while (v34 && v25 > v27);
        v14 = v52;
      }
    }
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:307 description:@"axis == PXAxisUndefined"];

    v25 = 0.0;
  }

LABEL_26:
  v36 = [v16 index];
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
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:359 description:@"axis == PXAxisUndefined"];
  }

  v42 = v14 - 1;
  if (v36 < v14 - 1 && v25 < v38)
  {
    v43 = v36 + 1;
    do
    {
      v44 = [(PXSectionedLayoutContent *)self->_layoutContent sectionAtIndex:v43];
      if (([v44 isAccurate] & 1) == 0)
      {
        [(PXSectionedLayoutEngine *)self _computeSection:v44];
        [v9 addObject:v44];
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
        v50 = [MEMORY[0x1E696AAA8] currentHandler];
        [v50 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:385 description:@"axis == PXAxisUndefined"];
      }

      if (v43 >= v42)
      {
        break;
      }

      ++v43;
    }

    while (v25 < v38);
  }

  return v9;
}

- (BOOL)_computeSectionsIfNeeded
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(PXLayoutEngine *)self dataSourceSnapshot];
  v5 = [v4 numberOfSections];
  if (v5 < 1)
  {
    v29 = 0;
  }

  else
  {
    v6 = v5;
    v31 = a2;
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(PXLayoutEngine *)self seedItem];
    v9 = [v8 px_section];
    v33 = [v8 px_item];
    v32 = [v8 px_kind];
    v10 = [(PXSectionedLayoutContent *)self->_layoutContent sections];
    v11 = [v10 count];

    v12 = [(PXLayoutEngine *)self layoutGenerator];
    [v12 estimatedSize];
    if (v11 < v6)
    {
      v15 = v13;
      v16 = v14;
      do
      {
        v17 = [(PXSectionedLayoutEngine *)self _newLayoutSection];
        [v17 setIndex:v11];
        [v17 setSize:{v15, v16}];
        [v17 setAccurate:0];
        [(PXSectionedLayoutContent *)self->_layoutContent addSection:v17];

        ++v11;
      }

      while (v6 != v11);
    }

    v18 = [(PXSectionedLayoutContent *)self->_layoutContent sections];
    v19 = [v18 count];

    if (v19 <= v9)
    {
      v20 = PFUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v4;
        _os_log_impl(&dword_1B3F73000, v20, OS_LOG_TYPE_DEBUG, "dataSourceSnapshot %@", buf, 0xCu);
      }

      v21 = PFUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v4 numberOfSections];
        *buf = 134217984;
        v35 = v22;
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

      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:v31 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:256 description:{@"Seed item specifies out of bounds section index: sections %ld > seedSectionIndex %ld", v19, v9}];
    }

    v26 = [(PXSectionedLayoutContent *)self->_layoutContent sectionAtIndex:v9];
    if (([v26 isAccurate] & 1) == 0)
    {
      [(PXSectionedLayoutEngine *)self _computeSection:v26];
      [v7 addObject:v26];
    }

    v27 = [(PXSectionedLayoutEngine *)self _computeSectionsFromSection:v26 itemIndex:v33 kind:v32];
    [v7 addObjectsFromArray:v27];
    v28 = [v7 count];
    v29 = v28 != 0;
    if (v28)
    {
      [(PXSectionedLayoutContent *)self->_layoutContent updateSections:v7];
    }
  }

  return v29;
}

- (id)_newLayoutSnapshot
{
  [(PXSectionedLayoutContent *)self->_layoutContent contentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(PXSectionedLayoutContent *)self->_layoutContent sections];
  v8 = [[PXSectionedLayoutSnapshot alloc] initWithContentRect:v7 forSections:0.0, 0.0, v4, v6];

  return v8;
}

- (id)_newLayoutSection
{
  v2 = [(PXLayoutEngine *)self layoutGenerator];
  [v2 estimatedSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(PXLayoutSection);
  [(PXLayoutSection *)v7 setFrame:0.0, 0.0, v4, v6];

  return v7;
}

- (void)_updateLayoutDataWithChangeDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionChanges];
  v6 = [v5 removedIndexes];

  v7 = [v4 sectionChanges];
  v8 = [v7 insertedIndexes];

  v9 = [v4 sectionsWithItemChanges];
  v10 = [v6 count];
  v11 = [v8 count];
  v12 = [v9 count];
  if (v10)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke;
    v21[3] = &unk_1E7BB83D8;
    v21[4] = self;
    [v6 enumerateIndexesWithOptions:2 usingBlock:v21];
  }

  if (v11)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke_2;
    v20[3] = &unk_1E7BB83D8;
    v20[4] = self;
    [v8 enumerateIndexesUsingBlock:v20];
  }

  if (v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__PXSectionedLayoutEngine__updateLayoutDataWithChangeDetails___block_invoke_3;
    v19[3] = &unk_1E7BB83D8;
    v19[4] = self;
    [v9 enumerateIndexesUsingBlock:v19];
  }

  v13 = [(PXLayoutEngine *)self seedItem];
  if (v13 && self->_needsUpdateSeedItem && ([v4 sectionChanges], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "indexAfterApplyingChangesToIndex:", objc_msgSend(v13, "px_section")), v14, v15 != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend(v4, "itemChangesInSection:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "indexAfterApplyingChangesToIndex:", objc_msgSend(v13, "px_item")), v16, v17 != 0x7FFFFFFFFFFFFFFFLL))
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
  v11 = [(PXLayoutEngine *)self dataSourceSnapshot];
  v3 = [v11 numberOfSections];
  v4 = [(PXLayoutEngine *)self layoutGenerator];
  [v4 estimatedSize];
  v6 = v5;
  v8 = v7;
  [(PXSectionedLayoutContent *)self->_layoutContent removeAllSections];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v10 = [(PXSectionedLayoutEngine *)self _newLayoutSection];
      [v10 setIndex:i];
      [v10 setSize:{v6, v8}];
      [v10 setAccurate:0];
      [(PXSectionedLayoutContent *)self->_layoutContent addSection:v10];
    }
  }

  [(PXLayoutEngine *)self invalidateLayoutSnapshot];
}

- (id)computeLayoutSnapshot
{
  v3 = [(PXLayoutEngine *)self dataSourceSnapshot];
  if ([v3 numberOfSections])
  {
    if (![(PXSectionedLayoutEngine *)self _computeSectionsIfNeeded])
    {
      v4 = [v3 identifier];
      v5 = [(PXLayoutEngine *)self layoutSnapshot];
      v6 = [v5 dataSourceSnapshot];
      v7 = [v6 identifier];

      if (v4 == v7)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v9 = [(PXSectionedLayoutEngine *)self _newLayoutSnapshot];
  }

  else
  {
    v9 = [(PXSectionedLayoutEngine *)self _emptyLayoutSnapshot];
  }

  v8 = v9;
LABEL_8:

  return v8;
}

- (void)updateLayoutDataWithChangeDetails:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v6 = [v4 sectionChanges];
    if ([v6 hasIncrementalChanges])
    {
      v7 = [v9 sectionChanges];
      v8 = [v7 hasMoves];

      v5 = v9;
      if ((v8 & 1) == 0)
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
  v3 = [(PXLayoutEngine *)&v5 canComputeLayoutSnapshot];
  if (v3)
  {
    LOBYTE(v3) = *(MEMORY[0x1E695F060] + 8) != self->_seedSize.height || *MEMORY[0x1E695F060] != self->_seedSize.width;
  }

  return v3;
}

- (void)setSeedItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXSectionedLayoutEngine;
  [(PXLayoutEngine *)&v4 setSeedItem:a3];
  self->_needsUpdateSeedItem = 0;
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXSectionedLayoutEngine;
  v4 = a3;
  [(PXLayoutEngine *)&v6 setDelegate:v4];
  v5 = objc_opt_respondsToSelector();

  self->_delegateRespondsTo.willGenerateLayoutForSection = v5 & 1;
}

- (void)setDataSourceSnapshot:(id)a3 withChangeDetails:(id)a4
{
  v4.receiver = self;
  v4.super_class = PXSectionedLayoutEngine;
  [(PXLayoutEngine *)&v4 setDataSourceSnapshot:a3 withChangeDetails:a4];
}

- (void)setSeedSize:(CGSize)a3
{
  if (a3.width != self->_seedSize.width || a3.height != self->_seedSize.height)
  {
    self->_seedSize = a3;
    [(PXLayoutEngine *)self invalidateLayoutSnapshot];
  }
}

- (id)performChangesAndWait:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PXSectionedLayoutEngine_performChangesAndWait___block_invoke;
  v9[3] = &unk_1E7BB7830;
  v9[4] = self;
  v10 = v4;
  v8.receiver = self;
  v8.super_class = PXSectionedLayoutEngine;
  v5 = v4;
  v6 = [(PXLayoutEngine *)&v8 performChangesAndWait:v9];

  return v6;
}

- (void)performChanges:(id)a3
{
  self->_needsUpdateSeedItem = 1;
  v3.receiver = self;
  v3.super_class = PXSectionedLayoutEngine;
  [(PXLayoutEngine *)&v3 performChanges:a3];
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

- (PXSectionedLayoutEngine)initWithAxis:(int64_t)a3 layoutGenerator:(id)a4 dataSourceSnapshot:(id)a5 insets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v16.receiver = self;
  v16.super_class = PXSectionedLayoutEngine;
  v11 = [(PXLayoutEngine *)&v16 initWithLayoutGenerator:a4 dataSourceSnapshot:a5];
  v12 = v11;
  if (v11)
  {
    v11->_axis = a3;
    v13 = [[PXSectionedLayoutContent alloc] initWithAxis:a3 insets:top, left, bottom, right];
    layoutContent = v12->_layoutContent;
    v12->_layoutContent = v13;

    v12->_geometryBuffer = 0;
  }

  return v12;
}

- (PXSectionedLayoutEngine)initWithLayoutGenerator:(id)a3 dataSourceSnapshot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXSectionedLayoutEngine initWithLayoutGenerator:dataSourceSnapshot:]"}];

  abort();
}

- (PXSectionedLayoutEngine)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutEngine.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXSectionedLayoutEngine init]"}];

  abort();
}

@end