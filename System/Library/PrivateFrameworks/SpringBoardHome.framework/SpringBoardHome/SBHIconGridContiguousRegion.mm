@interface SBHIconGridContiguousRegion
- (BOOL)containsGridCellIndex:(unint64_t)index;
- (BOOL)hasEmptyGridCells;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGridCellIndexInternal:(unint64_t)internal directions:(unint64_t)directions;
- (NSString)description;
- (SBHIconGridContiguousRegion)init;
- (SBHIconGridContiguousRegion)initWithGridCellIndexes:(id)indexes inGridRange:(SBHIconGridRange)range gridSize:(SBHIconGridSize)size;
- (SBHIconGridRange)gridRange;
- (id)contiguousRegionByAddingGridCellIndexes:(id)indexes;
- (id)contiguousRegionByRemovingGridCellIndexes:(id)indexes;
- (id)gridCellIndexesNotContainedInGridRange:(SBHIconGridRange)range;
- (id)layoutDescription;
- (id)subcontiguousRegionWithGridRange:(SBHIconGridRange)range;
- (unint64_t)count;
- (unint64_t)endGridCellIndex;
- (unint64_t)hash;
- (unint64_t)startGridCellIndex;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)block;
- (void)enumerateGridCellIndexesNotContainedInGridRange:(SBHIconGridRange)range usingBlock:(id)block;
- (void)enumerateGridCellIndexesUsingBlock:(id)block;
- (void)enumerateGridCellIndexesWithOptions:(unint64_t)options usingBlock:(id)block;
@end

@implementation SBHIconGridContiguousRegion

- (SBHIconGridContiguousRegion)initWithGridCellIndexes:(id)indexes inGridRange:(SBHIconGridRange)range gridSize:(SBHIconGridSize)size
{
  v6 = *&range.size.columns;
  cellIndex = range.cellIndex;
  indexesCopy = indexes;
  v14.receiver = self;
  v14.super_class = SBHIconGridContiguousRegion;
  v10 = [(SBHIconGridContiguousRegion *)&v14 init];
  if (v10)
  {
    v11 = [indexesCopy copy];
    gridCellIndexes = v10->_gridCellIndexes;
    v10->_gridCellIndexes = v11;

    v10->_gridRange.cellIndex = cellIndex;
    *&v10->_gridRange.size.columns = v6;
    v10->_gridSize = size;
  }

  return v10;
}

- (SBHIconGridContiguousRegion)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC90]);
  v4 = [(SBHIconGridContiguousRegion *)self initWithGridCellIndexes:v3 inGridRange:0x7FFFFFFFFFFFFFFFLL gridSize:0, 0];

  return v4;
}

- (BOOL)hasEmptyGridCells
{
  startGridCellIndex = [(SBHIconGridContiguousRegion *)self startGridCellIndex];
  endGridCellIndex = [(SBHIconGridContiguousRegion *)self endGridCellIndex];
  v5 = startGridCellIndex + 1;
  do
  {
    v6 = v5;
    if (v5 >= endGridCellIndex)
    {
      break;
    }

    v7 = [(SBHIconGridContiguousRegion *)self containsGridCellIndex:v5];
    v5 = v6 + 1;
  }

  while (v7);
  return v6 < endGridCellIndex;
}

- (BOOL)isGridCellIndexInternal:(unint64_t)internal directions:(unint64_t)directions
{
  v8 = 0;
  v9 = 0;
  gridSize = [(SBHIconGridContiguousRegion *)self gridSize];
  while (1)
  {
    v11 = qword_1BEE87CB8[v9];
    if ((directions >> v11))
    {
      break;
    }

LABEL_7:
    v8 = v9++ > 2;
    if (v9 == 4)
    {
      return 1;
    }
  }

  v16[0] = internal;
  v16[1] = 65537;
  v5 = v5 & 0xFFFFFFFF00000000 | gridSize;
  v12 = v11;
  for (i = v5; SBHIconGridRangeOffset(v16, v12, 1, i); i = v4)
  {
    if ([(SBHIconGridContiguousRegion *)self containsGridCellIndex:v16[0]])
    {
      goto LABEL_7;
    }

    v4 = v4 & 0xFFFFFFFF00000000 | gridSize;
    v12 = v11;
  }

  return v8;
}

uint64_t __71__SBHIconGridContiguousRegion_enumerateEmptyGridCellIndexesUsingBlock___block_invoke(uint64_t result, unint64_t a2)
{
  if (*(result + 48) <= a2)
  {
    v2 = result;
    if (*(result + 56) >= a2)
    {
      result = [*(result + 32) containsIndex:a2];
      if ((result & 1) == 0)
      {
        v3 = *(*(v2 + 40) + 16);

        return v3();
      }
    }
  }

  return result;
}

- (void)enumerateGridCellIndexesNotContainedInGridRange:(SBHIconGridRange)range usingBlock:(id)block
{
  v4 = *&range.size.columns;
  cellIndex = range.cellIndex;
  blockCopy = block;
  gridSize = [(SBHIconGridContiguousRegion *)self gridSize];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__SBHIconGridContiguousRegion_enumerateGridCellIndexesNotContainedInGridRange_usingBlock___block_invoke;
  v10[3] = &unk_1E808EB80;
  v12 = cellIndex;
  v13 = v4;
  v14 = gridSize;
  v11 = blockCopy;
  v9 = blockCopy;
  [(SBHIconGridContiguousRegion *)self enumerateGridCellIndexesUsingBlock:v10];
}

uint64_t __90__SBHIconGridContiguousRegion_enumerateGridCellIndexesNotContainedInGridRange_usingBlock___block_invoke(uint64_t a1, unint64_t a2)
{
  result = SBHIconGridRangeContainsCellIndex(*(a1 + 40), *(a1 + 48), a2, *(a1 + 56));
  if ((result & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (id)gridCellIndexesNotContainedInGridRange:(SBHIconGridRange)range
{
  v3 = *&range.size.columns;
  cellIndex = range.cellIndex;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SBHIconGridContiguousRegion_gridCellIndexesNotContainedInGridRange___block_invoke;
  v9[3] = &unk_1E808C408;
  v7 = v6;
  v10 = v7;
  [(SBHIconGridContiguousRegion *)self enumerateGridCellIndexesNotContainedInGridRange:cellIndex usingBlock:v3, v9];

  return v7;
}

- (id)subcontiguousRegionWithGridRange:(SBHIconGridRange)range
{
  v3 = *&range.size.columns;
  cellIndex = range.cellIndex;
  gridSize = [(SBHIconGridContiguousRegion *)self gridSize];
  gridRange = [(SBHIconGridContiguousRegion *)self gridRange];
  v9 = v8;
  v10 = gridSize;
  if (!SBHIconGridRangeContainsIconGridRange(cellIndex, v3, gridRange, v8, gridSize.columns))
  {
    cellIndex = SBHIconGridRangeIntersection(gridRange, v9, cellIndex, v3, gridSize.columns);
    v3 = v11;
  }

  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __64__SBHIconGridContiguousRegion_subcontiguousRegionWithGridRange___block_invoke;
  v20 = &unk_1E808EBA8;
  v22 = cellIndex;
  v23 = v3;
  v24 = gridSize;
  v21 = v12;
  v13 = v12;
  [(SBHIconGridContiguousRegion *)self enumerateGridCellIndexesUsingBlock:&v17];
  v14 = objc_alloc(objc_opt_class());
  v15 = [v14 initWithGridCellIndexes:v13 inGridRange:cellIndex gridSize:{v3, v10, v17, v18, v19, v20}];

  return v15;
}

uint64_t __64__SBHIconGridContiguousRegion_subcontiguousRegionWithGridRange___block_invoke(uint64_t a1, unint64_t a2)
{
  result = SBHIconGridRangeContainsCellIndex(*(a1 + 40), *(a1 + 48), a2, *(a1 + 56));
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addIndex:a2];
  }

  return result;
}

- (id)contiguousRegionByRemovingGridCellIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    [(SBHIconGridContiguousRegion *)self contiguousRegionByRemovingGridCellIndexes:indexesCopy, &v7];
    selfCopy = v7;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)contiguousRegionByAddingGridCellIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    [(SBHIconGridContiguousRegion *)self contiguousRegionByAddingGridCellIndexes:indexesCopy, &v7];
    selfCopy = v7;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)layoutDescription
{
  string = [MEMORY[0x1E696AD60] string];
  gridRange = [(SBHIconGridContiguousRegion *)self gridRange];
  v6 = v5;
  gridSize = [(SBHIconGridContiguousRegion *)self gridSize];
  if (v6 >= 0x10000)
  {
    v8 = 0;
    v9 = gridSize;
    do
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v9;
      v10 = SBHIconGridRangeMinCellIndexOnRow(gridRange, v6, v2, v8);
      if (v6)
      {
        v11 = v10;
        v12 = v6;
        do
        {
          if ([(SBHIconGridContiguousRegion *)self containsGridCellIndex:v11])
          {
            v13 = @"*\t";
          }

          else
          {
            v13 = @"-\t";
          }

          [string appendString:v13];
          ++v11;
          --v12;
        }

        while (v12);
      }

      [string appendString:@"\n"];
      ++v8;
    }

    while (v8 != WORD1(v6));
  }

  return string;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SBHIconGridContiguousRegion *)equalCopy isEqual:&v9];
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconGridContiguousRegion *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (SBHIconGridRange)gridRange
{
  v2 = *&self->_gridRange.size.columns;
  cellIndex = self->_gridRange.cellIndex;
  result.size = v2;
  result.cellIndex = cellIndex;
  return result;
}

- (unint64_t)count
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self count];
}

- (unint64_t)startGridCellIndex
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self firstIndex];
}

- (unint64_t)endGridCellIndex
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self lastIndex];
}

- (BOOL)containsGridCellIndex:(unint64_t)index
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self containsIndex:index];
}

- (void)enumerateGridCellIndexesUsingBlock:(id)block
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  [(SBHIconGridContiguousRegion *)self enumerateIndexesUsingBlock:block];
}

- (void)enumerateGridCellIndexesWithOptions:(unint64_t)options usingBlock:(id)block
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  [(SBHIconGridContiguousRegion *)self enumerateIndexesWithOptions:options usingBlock:block];
}

- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)block
{
  blockCopy = block;
  if (self)
  {
    gridCellIndexes = self->_gridCellIndexes;
  }

  else
  {
    gridCellIndexes = 0;
  }

  v8 = gridCellIndexes;
  [(SBHIconGridContiguousRegion *)self gridRange];
  gridSize = [OUTLINED_FUNCTION_0_11() gridSize];
  startGridCellIndex = [(SBHIconGridContiguousRegion *)self startGridCellIndex];
  endGridCellIndex = [(SBHIconGridContiguousRegion *)self endGridCellIndex];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__SBHIconGridContiguousRegion_enumerateEmptyGridCellIndexesUsingBlock___block_invoke;
  v14[3] = &unk_1E808EB58;
  v17 = startGridCellIndex;
  v18 = endGridCellIndex;
  v15 = v8;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = v8;
  SBHIconGridRangeEnumerateCellIndexes(v3, v4, gridSize, v14);
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self hash];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (self)
  {
    gridCellIndexes = self->_gridCellIndexes;
  }

  else
  {
    gridCellIndexes = 0;
  }

  v11 = formatterCopy;
  v6 = [formatterCopy appendObject:gridCellIndexes withName:@"gridCellIndexes"];
  gridRange = [(SBHIconGridContiguousRegion *)self gridRange];
  v9 = SBHStringForIconGridRange(gridRange, v8);
  v10 = [v11 appendObject:v9 withName:@"gridRange"];
}

- (void)contiguousRegionByRemovingGridCellIndexes:(uint64_t *)a3 .cold.1(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1 gridSize];
  if (a1)
  {
    v7 = a1[2];
  }

  else
  {
    v7 = 0;
  }

  v17 = [v7 mutableCopy];
  [v17 removeIndexes:a2];
  SBHIconGridRangeMakeWithCellIndexes(v17, v6);
  OUTLINED_FUNCTION_0_11();
  v8 = objc_alloc(objc_opt_class());
  *a3 = OUTLINED_FUNCTION_1_5(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
}

- (void)contiguousRegionByAddingGridCellIndexes:(uint64_t *)a3 .cold.1(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1 gridSize];
  if (a1)
  {
    v7 = a1[2];
  }

  else
  {
    v7 = 0;
  }

  v17 = [v7 mutableCopy];
  [v17 addIndexes:a2];
  SBHIconGridRangeMakeWithCellIndexes(v17, v6);
  OUTLINED_FUNCTION_0_11();
  v8 = objc_alloc(objc_opt_class());
  *a3 = OUTLINED_FUNCTION_1_5(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
}

- (uint64_t)isEqual:(_BYTE *)a3 .cold.1(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  if (a2)
  {
    v6 = a2[2];
  }

  else
  {
    v6 = 0;
  }

  v16 = v5;
  v7 = v6;
  v8 = BSEqualObjects();

  if (v8)
  {
    v9 = [a2 gridRange];
    v11 = v10;
    v12 = [v16 gridRange];
    v14 = SBHIconGridRangeEqualToIconGridRange(v9, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  *a3 = v14;

  return MEMORY[0x1EEE66BB8](v14, v16);
}

@end