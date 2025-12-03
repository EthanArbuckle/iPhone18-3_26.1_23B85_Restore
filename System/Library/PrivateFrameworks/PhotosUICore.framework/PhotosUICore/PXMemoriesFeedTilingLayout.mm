@interface PXMemoriesFeedTilingLayout
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGRect)_contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio;
- (CGRect)contentBounds;
- (PXMemoriesFeedDataSource)dataSource;
- (PXMemoriesFeedTilingLayout)initWithSpec:(id)spec layoutSnapshot:(id)snapshot;
- (PXMemoriesFeedTilingLayoutDelegate)delegate;
- (PXSimpleIndexPath)highlightedMemoryIndexPath;
- (PXSimpleIndexPath)indexPathForMemoryAtPoint:(SEL)point;
- (PXSimpleIndexPath)indexPathForTileIdentifier:(SEL)identifier;
- (PXTileIdentifier)tileIdentifierAtIndexPath:(SEL)path withTileKind:(PXSimpleIndexPath *)kind;
- (id)_titleFontNameForMemoryAtIndexPath:(PXSimpleIndexPath *)path;
- (id)_viewSpecForTileWithIdentifier:(PXTileIdentifier *)identifier boundingSize:(CGSize)size;
- (id)indexPathsForMemoriesInRect:(CGRect)rect;
- (int64_t)_itemKindForTileKind:(int64_t)kind;
- (unint64_t)_zPositionForTileWithIdentifier:(PXTileIdentifier *)identifier;
- (void)_addTileWithKind:(int64_t)kind entryIndex:(unint64_t)index memoryIndex:(unint64_t)memoryIndex usingBlock:(id)block;
- (void)_invalidateSelectionTilesWithTag:(id)tag;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setHighlightedMemoryIndexPath:(PXSimpleIndexPath *)path;
- (void)setLayoutSnapshot:(id)snapshot;
- (void)setReferenceSize:(CGSize)size;
- (void)setSelectedMemoryIndexPaths:(id)paths;
@end

@implementation PXMemoriesFeedTilingLayout

- (PXMemoriesFeedTilingLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXSimpleIndexPath)highlightedMemoryIndexPath
{
  v3 = *&self[5].subitem;
  *&retstr->dataSourceIdentifier = *&self[5].section;
  *&retstr->item = v3;
  return self;
}

- (void)_invalidateSelectionTilesWithTag:(id)tag
{
  tagCopy = tag;
  v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v5 setTag:tagCopy];

  selectedMemoryIndexPaths = self->_selectedMemoryIndexPaths;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PXMemoriesFeedTilingLayout__invalidateSelectionTilesWithTag___block_invoke;
  v8[3] = &unk_1E7746140;
  v9 = v5;
  v7 = v5;
  [(PXIndexPathSet *)selectedMemoryIndexPaths enumerateAllIndexPathsUsingBlock:v8];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v7];
}

uint64_t __63__PXMemoriesFeedTilingLayout__invalidateSelectionTilesWithTag___block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  v4 = a2[1];
  v6[0] = xmmword_1A5380E50;
  v6[1] = v3;
  v6[2] = v4;
  memset(&v6[3], 0, 32);
  v7 = 0;
  return [v2 invalidateTileWithIdentifier:v6];
}

- (CGRect)_contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio
{
  if (self->_delegateRespondsTo.contentsRectForItemAtIndexPathForAspectRatio)
  {
    delegate = [(PXMemoriesFeedTilingLayout *)self delegate];
    v8 = *&path->item;
    v21[0] = *&path->dataSourceIdentifier;
    v21[1] = v8;
    [delegate memoriesFeedTilingLayout:self contentsRectForItemAtIndexPath:v21 forAspectRatio:ratio];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *off_1E77221F8;
    v12 = *(off_1E77221F8 + 1);
    v14 = *(off_1E77221F8 + 2);
    v16 = *(off_1E77221F8 + 3);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (int64_t)_itemKindForTileKind:(int64_t)kind
{
  if (kind < 5)
  {
    return qword_1A5381898[kind];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedTilingLayout.m" lineNumber:431 description:{@"Asked for item kind for unknown tile kind: %ld", kind}];

  return 0;
}

- (unint64_t)_zPositionForTileWithIdentifier:(PXTileIdentifier *)identifier
{
  v5 = *&identifier->index[5];
  v15 = *&identifier->index[3];
  v16 = v5;
  v17 = *&identifier->index[7];
  v18 = identifier->index[9];
  v6 = *&identifier->index[1];
  v13 = *&identifier->length;
  v14 = v6;
  v7 = [(PXMemoriesFeedTilingLayout *)self tileKindForTileIdentifier:&v13];
  v8 = *&identifier->index[5];
  v15 = *&identifier->index[3];
  v16 = v8;
  v17 = *&identifier->index[7];
  v18 = identifier->index[9];
  v9 = *&identifier->index[1];
  v13 = *&identifier->length;
  v14 = v9;
  [(PXMemoriesFeedTilingLayout *)self indexPathForTileIdentifier:&v13];
  v10 = 0;
  if (0 == *&self->_highlightedMemoryIndexPath.dataSourceIdentifier && !self->_highlightedMemoryIndexPath.item)
  {
    v10 = self->_highlightedMemoryIndexPath.subitem == 0;
  }

  if (v7 > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A5381870[v7];
  }

  if (v10)
  {
    return v11 | 0x64;
  }

  else
  {
    return v11;
  }
}

- (id)_titleFontNameForMemoryAtIndexPath:(PXSimpleIndexPath *)path
{
  if (self->_delegateRespondsTo.titleFontNameForItemAtIndexPath)
  {
    delegate = [(PXMemoriesFeedTilingLayout *)self delegate];
    v6 = *&path->item;
    v9[0] = *&path->dataSourceIdentifier;
    v9[1] = v6;
    v7 = [delegate memoriesFeedTilingLayout:self titleFontNameForItemAtIndexPath:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_viewSpecForTileWithIdentifier:(PXTileIdentifier *)identifier boundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = *&identifier->index[5];
  v34 = *&identifier->index[3];
  v35 = v8;
  v36 = *&identifier->index[7];
  v37 = identifier->index[9];
  v9 = *&identifier->index[1];
  v32 = *&identifier->length;
  v33 = v9;
  v10 = [(PXMemoriesFeedTilingLayout *)self tileKindForTileIdentifier:&v32];
  v11 = *&identifier->index[5];
  v34 = *&identifier->index[3];
  v35 = v11;
  v36 = *&identifier->index[7];
  v37 = identifier->index[9];
  v12 = *&identifier->index[1];
  v32 = *&identifier->length;
  v33 = v12;
  [(PXMemoriesFeedTilingLayout *)self indexPathForTileIdentifier:&v32];
  v13 = *&identifier->index[5];
  v34 = *&identifier->index[3];
  v35 = v13;
  v36 = *&identifier->index[7];
  v37 = identifier->index[9];
  v14 = *&identifier->index[1];
  v32 = *&identifier->length;
  v33 = v14;
  [(PXMemoriesFeedTilingLayout *)self indexPathForTileIdentifier:&v32];
  dataSourceIdentifier = self->_highlightedMemoryIndexPath.dataSourceIdentifier;
  section = self->_highlightedMemoryIndexPath.section;
  item = self->_highlightedMemoryIndexPath.item;
  subitem = self->_highlightedMemoryIndexPath.subitem;
  selectedMemoryIndexPaths = self->_selectedMemoryIndexPaths;
  v32 = 0u;
  v33 = 0u;
  v20 = [(PXIndexPathSet *)selectedMemoryIndexPaths containsIndexPath:&v32];
  if (dataSourceIdentifier)
  {
    v21 = 0;
  }

  else
  {
    v21 = section == 0;
  }

  v23 = v21 && item == 0 && subitem == 0;
  v24 = v23;
  v25 = 2;
  if (v23)
  {
    v25 = 3;
  }

  if (v20)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  [(PXMemoriesFeedTilingLayout *)self contentBounds];
  v27 = CGRectGetWidth(v39);
  v28 = 0;
  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v28 = 2005;
      }
    }

    else
    {
      v28 = 2002;
    }
  }

  else
  {
    switch(v10)
    {
      case 4:
        v28 = 2001;
        break;
      case 3:
        v32 = 0u;
        v33 = 0u;
        [(PXMemoriesFeedTilingLayout *)self _titleFontNameForMemoryAtIndexPath:&v32];
        objc_claimAutoreleasedReturnValue();
        PXViewSpecOptionsWithTitleFontName();
      case 2:
        v32 = 0u;
        v33 = 0u;
        [(PXMemoriesFeedTilingLayout *)self _titleFontNameForMemoryAtIndexPath:&v32];
        objc_claimAutoreleasedReturnValue();
        PXViewSpecOptionsWithTitleFontName();
    }
  }

  spec = [(PXMemoriesFeedTilingLayout *)self spec];
  *&v32 = v28;
  *(&v32 + 1) = v26;
  *&v33 = width;
  *(&v33 + 1) = height;
  v30 = [spec viewSpecWithDescriptor:&v32];

  return v30;
}

- (void)_addTileWithKind:(int64_t)kind entryIndex:(unint64_t)index memoryIndex:(unint64_t)memoryIndex usingBlock:(id)block
{
  blockCopy = block;
  if ((kind - 1) < 4)
  {
    goto LABEL_4;
  }

  if (!kind)
  {
    memoryIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_4:
    dataSource = [(PXMemoriesFeedTilingLayout *)self dataSource];
    identifier = [dataSource identifier];

    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_5;
  }

  v13 = 0;
  memoryIndex = 0;
  index = 0;
  identifier = 0;
LABEL_5:
  v14 = *(off_1E7722248 + 9);
  v48 = *(off_1E7722248 + 8);
  v49 = v14;
  v15 = *(off_1E7722248 + 11);
  v50 = *(off_1E7722248 + 10);
  v51 = v15;
  v16 = *(off_1E7722248 + 5);
  v44 = *(off_1E7722248 + 4);
  v45 = v16;
  v17 = *(off_1E7722248 + 7);
  v46 = *(off_1E7722248 + 6);
  v47 = v17;
  v18 = *(off_1E7722248 + 1);
  v40 = *off_1E7722248;
  v41 = v18;
  v19 = *(off_1E7722248 + 3);
  v42 = *(off_1E7722248 + 2);
  v43 = v19;
  v38 = 0;
  v39 = 0;
  *&v21 = 5;
  *(&v21 + 1) = kind;
  *&v22 = identifier;
  *(&v22 + 1) = index;
  *&v23 = memoryIndex;
  *(&v23 + 1) = v13;
  v24 = 0u;
  v25 = 0u;
  *&v26 = 0;
  if ([(PXMemoriesFeedTilingLayout *)self getGeometry:&v40 group:&v39 userData:&v38 forTileWithIdentifier:&v21])
  {
    v37 = 0;
    v20 = blockCopy[2];
    v33[0] = 5;
    v33[1] = kind;
    v33[2] = identifier;
    v33[3] = index;
    v33[4] = memoryIndex;
    v33[5] = v13;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v29 = v48;
    v30 = v49;
    v31 = v50;
    v32 = v51;
    v25 = v44;
    v26 = v45;
    v27 = v46;
    v28 = v47;
    v21 = v40;
    v22 = v41;
    v23 = v42;
    v24 = v43;
    v20(blockCopy, v33, &v21, v39, v38, &v37);
  }
}

- (void)setLayoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_layoutSnapshot != snapshotCopy)
  {
    v6 = snapshotCopy;
    objc_storeStrong(&self->_layoutSnapshot, snapshot);
    [(PXTilingLayout *)self invalidateLayout];
    snapshotCopy = v6;
  }
}

- (void)setSelectedMemoryIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (self->_selectedMemoryIndexPaths != pathsCopy)
  {
    v6 = pathsCopy;
    [(PXMemoriesFeedTilingLayout *)self _invalidateSelectionTilesWithTag:@"Memory Tile Deselecting"];
    objc_storeStrong(&self->_selectedMemoryIndexPaths, paths);
    [(PXMemoriesFeedTilingLayout *)self _invalidateSelectionTilesWithTag:@"Memory Tile Selecting"];
    pathsCopy = v6;
  }
}

- (void)setHighlightedMemoryIndexPath:(PXSimpleIndexPath *)path
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&path->dataSourceIdentifier, *&self->_highlightedMemoryIndexPath.dataSourceIdentifier), vceqq_s64(*&path->item, *&self->_highlightedMemoryIndexPath.item)))) & 1) == 0)
  {
    v5 = *&path->item;
    *&self->_highlightedMemoryIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&self->_highlightedMemoryIndexPath.item = v5;
    v6 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v6 setTag:@"Memory Tile Highlighting"];
    dataSourceIdentifier = path->dataSourceIdentifier;
    section = path->section;
    item = path->item;
    subitem = path->subitem;
    v11 = xmmword_1A5354C20;
    v12 = dataSourceIdentifier;
    v13 = section;
    v14 = item;
    v15 = subitem;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    [(PXTilingLayoutInvalidationContext *)v6 invalidateTileWithIdentifier:&v11];
    v11 = xmmword_1A5380E60;
    v12 = dataSourceIdentifier;
    v13 = section;
    v14 = item;
    v15 = subitem;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    [(PXTilingLayoutInvalidationContext *)v6 invalidateTileWithIdentifier:&v11];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (PXTileIdentifier)tileIdentifierAtIndexPath:(SEL)path withTileKind:(PXSimpleIndexPath *)kind
{
  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  retstr->length = 5;
  retstr->index[0] = a5;
  v5 = *&kind->item;
  *&retstr->index[1] = *&kind->dataSourceIdentifier;
  *&retstr->index[3] = v5;
  return self;
}

- (PXSimpleIndexPath)indexPathForTileIdentifier:(SEL)identifier
{
  v8 = a4->index[1];
  dataSource = [(PXMemoriesFeedTilingLayout *)self dataSource];
  identifier = [dataSource identifier];

  if (v8 != identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:identifier object:self file:@"PXMemoriesFeedTilingLayout.m" lineNumber:233 description:@"Feed layout asked for index path for tile identifier from wrong datasource"];
  }

  v12 = *&a4->index[3];
  *&retstr->dataSourceIdentifier = *&a4->index[1];
  *&retstr->item = v12;
  return result;
}

- (id)indexPathsForMemoriesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__48003;
  v16 = __Block_byref_object_dispose__48004;
  indexPathSet = [off_1E77217C8 indexPathSet];
  layoutSnapshot = [(PXMemoriesFeedTilingLayout *)self layoutSnapshot];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PXMemoriesFeedTilingLayout_indexPathsForMemoriesInRect___block_invoke;
  v11[3] = &unk_1E7731DB0;
  v11[4] = self;
  v11[5] = &v12;
  [layoutSnapshot enumerateGeometriesForItemsInRect:v11 usingBlock:{x, y, width, height}];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __58__PXMemoriesFeedTilingLayout_indexPathsForMemoriesInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 px_kind])
  {
    v4 = [*(a1 + 32) dataSource];
    v5 = [v4 identifier];
    v6 = [v3 px_section];
    v7 = [v3 px_item];

    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v9[3] = 0x7FFFFFFFFFFFFFFFLL;
    [v8 addIndexPath:v9];
  }
}

- (PXSimpleIndexPath)indexPathForMemoryAtPoint:(SEL)point
{
  y = a4.y;
  x = a4.x;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_1A561E057;
  v8 = *(off_1E7722228 + 1);
  v19 = *off_1E7722228;
  v20 = v8;
  layoutSnapshot = [(PXMemoriesFeedTilingLayout *)self layoutSnapshot];
  v10 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__PXMemoriesFeedTilingLayout_indexPathForMemoryAtPoint___block_invoke;
  v14[3] = &unk_1E7731DB0;
  v14[4] = self;
  v14[5] = &v15;
  [layoutSnapshot enumerateGeometriesForItemsInRect:v14 usingBlock:{x, y, v10, v11}];

  v12 = *(v16 + 3);
  *&retstr->dataSourceIdentifier = *(v16 + 2);
  *&retstr->item = v12;
  _Block_object_dispose(&v15, 8);
  return result;
}

void __56__PXMemoriesFeedTilingLayout_indexPathForMemoryAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if (![v11 px_kind])
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [v6 identifier];
    v8 = [v11 px_section];
    v9 = [v11 px_item];
    v10 = *(*(a1 + 40) + 8);
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = v9;
    v10[7] = 0x7FFFFFFFFFFFFFFFLL;

    *a4 = 1;
  }
}

- (PXMemoriesFeedDataSource)dataSource
{
  layoutSnapshot = [(PXMemoriesFeedTilingLayout *)self layoutSnapshot];
  dataSourceSnapshot = [layoutSnapshot dataSourceSnapshot];

  return dataSourceSnapshot;
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  v26 = 0u;
  v27 = 0u;
  v8 = *&identifier->index[5];
  v18 = *&identifier->index[3];
  v19 = v8;
  v20 = *&identifier->index[7];
  *&v21 = identifier->index[9];
  v9 = *&identifier->index[1];
  v16 = *&identifier->length;
  v17 = v9;
  [(PXMemoriesFeedTilingLayout *)self indexPathForTileIdentifier:&v16, group];
  v10 = *&identifier->index[5];
  v18 = *&identifier->index[3];
  v19 = v10;
  v20 = *&identifier->index[7];
  *&v21 = identifier->index[9];
  v11 = *&identifier->index[1];
  v16 = *&identifier->length;
  v17 = v11;
  [(PXMemoriesFeedTilingLayout *)self _itemKindForTileKind:[(PXMemoriesFeedTilingLayout *)self tileKindForTileIdentifier:&v16]];
  if (v26 == *off_1E7721F68)
  {
LABEL_11:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v16 = v26;
    v17 = v27;
    PXSimpleIndexPathDescription();
  }

  v12 = v27;
  if (*(&v26 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }
  }

  else if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    goto LABEL_8;
  }

  if (*(&v27 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = [MEMORY[0x1E696AC88] px_indexPathForItem:v12 inSection:? withKind:?];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  layoutSnapshot = self->_layoutSnapshot;
  if (layoutSnapshot)
  {
    [(PXSectionedLayoutSnapshot *)layoutSnapshot geometryForItem:v13];
  }

  PXRectWithCenterAndSize();
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  layoutSnapshot = [(PXMemoriesFeedTilingLayout *)self layoutSnapshot];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PXMemoriesFeedTilingLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke;
  v13[3] = &unk_1E7731D88;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [layoutSnapshot enumerateGeometriesForItemsInRect:v13 usingBlock:{x, y, width, height}];
}

void __74__PXMemoriesFeedTilingLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 px_section];
  v5 = [v3 px_item];
  v6 = [v3 px_kind];

  if (v6 == 2)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);

    [v11 _addTileWithKind:0 entryIndex:v4 memoryIndex:0 usingBlock:v12];
  }

  else if (!v6)
  {
    [*(a1 + 32) _addTileWithKind:1 entryIndex:v4 memoryIndex:v5 usingBlock:*(a1 + 40)];
    [*(a1 + 32) _addTileWithKind:2 entryIndex:v4 memoryIndex:v5 usingBlock:*(a1 + 40)];
    if ([*(*(a1 + 32) + 128) idiom] == 4)
    {
      v7 = [*(a1 + 32) dataSource];
      v8 = [v7 identifier];

      v20 = 0u;
      v21 = 0u;
      v9 = *(a1 + 32);
      v13 = xmmword_1A5380E50;
      *&v14 = v8;
      *(&v14 + 1) = v4;
      v15 = v5;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      [v9 indexPathForTileIdentifier:&v13];
      v10 = *(*(a1 + 32) + 136);
      v13 = v20;
      v14 = v21;
      if ([v10 containsIndexPath:&v13])
      {
        [*(a1 + 32) _addTileWithKind:4 entryIndex:v4 memoryIndex:v5 usingBlock:*(a1 + 40)];
      }
    }
  }
}

- (void)setReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PXTilingLayout *)self referenceSize];
  v7 = v6;
  v9 = v8;
  v11.receiver = self;
  v11.super_class = PXMemoriesFeedTilingLayout;
  [(PXTilingLayout *)&v11 setReferenceSize:width, height];
  if (width != v7 || height != v9)
  {
    [(PXTilingLayout *)self invalidateLayout];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->contentsRectForItemAtIndexPathForAspectRatio = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->titleFontNameForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  }
}

- (CGRect)contentBounds
{
  layoutSnapshot = [(PXMemoriesFeedTilingLayout *)self layoutSnapshot];
  [layoutSnapshot contentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PXMemoriesFeedTilingLayout)initWithSpec:(id)spec layoutSnapshot:(id)snapshot
{
  specCopy = spec;
  snapshotCopy = snapshot;
  v16.receiver = self;
  v16.super_class = PXMemoriesFeedTilingLayout;
  v9 = [(PXTilingLayout *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spec, spec);
    v11 = *(off_1E7722228 + 1);
    *&v10->_highlightedMemoryIndexPath.dataSourceIdentifier = *off_1E7722228;
    *&v10->_highlightedMemoryIndexPath.item = v11;
    selectedMemoryIndexPaths = v10->_selectedMemoryIndexPaths;
    v10->_selectedMemoryIndexPaths = 0;

    objc_storeStrong(&v10->_layoutSnapshot, snapshot);
    v13 = objc_alloc_init(PXCollectionTileLayoutTemplate);
    tileLayoutTemplate = v10->__tileLayoutTemplate;
    v10->__tileLayoutTemplate = v13;
  }

  return v10;
}

@end