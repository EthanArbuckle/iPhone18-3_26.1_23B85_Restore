@interface SBHIconGridContiguousRegion
- (BOOL)containsGridCellIndex:(unint64_t)a3;
- (BOOL)hasEmptyGridCells;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGridCellIndexInternal:(unint64_t)a3 directions:(unint64_t)a4;
- (NSString)description;
- (SBHIconGridContiguousRegion)init;
- (SBHIconGridContiguousRegion)initWithGridCellIndexes:(id)a3 inGridRange:(SBHIconGridRange)a4 gridSize:(SBHIconGridSize)a5;
- (SBHIconGridRange)gridRange;
- (id)contiguousRegionByAddingGridCellIndexes:(id)a3;
- (id)contiguousRegionByRemovingGridCellIndexes:(id)a3;
- (id)gridCellIndexesNotContainedInGridRange:(SBHIconGridRange)a3;
- (id)layoutDescription;
- (id)subcontiguousRegionWithGridRange:(SBHIconGridRange)a3;
- (unint64_t)count;
- (unint64_t)endGridCellIndex;
- (unint64_t)hash;
- (unint64_t)startGridCellIndex;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)a3;
- (void)enumerateGridCellIndexesNotContainedInGridRange:(SBHIconGridRange)a3 usingBlock:(id)a4;
- (void)enumerateGridCellIndexesUsingBlock:(id)a3;
- (void)enumerateGridCellIndexesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation SBHIconGridContiguousRegion

- (SBHIconGridContiguousRegion)initWithGridCellIndexes:(id)a3 inGridRange:(SBHIconGridRange)a4 gridSize:(SBHIconGridSize)a5
{
  v6 = *&a4.size.columns;
  cellIndex = a4.cellIndex;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = SBHIconGridContiguousRegion;
  v10 = [(SBHIconGridContiguousRegion *)&v14 init];
  if (v10)
  {
    v11 = [v9 copy];
    gridCellIndexes = v10->_gridCellIndexes;
    v10->_gridCellIndexes = v11;

    v10->_gridRange.cellIndex = cellIndex;
    *&v10->_gridRange.size.columns = v6;
    v10->_gridSize = a5;
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
  v3 = [(SBHIconGridContiguousRegion *)self startGridCellIndex];
  v4 = [(SBHIconGridContiguousRegion *)self endGridCellIndex];
  v5 = v3 + 1;
  do
  {
    v6 = v5;
    if (v5 >= v4)
    {
      break;
    }

    v7 = [(SBHIconGridContiguousRegion *)self containsGridCellIndex:v5];
    v5 = v6 + 1;
  }

  while (v7);
  return v6 < v4;
}

- (BOOL)isGridCellIndexInternal:(unint64_t)a3 directions:(unint64_t)a4
{
  v8 = 0;
  v9 = 0;
  v10 = [(SBHIconGridContiguousRegion *)self gridSize];
  while (1)
  {
    v11 = qword_1BEE87CB8[v9];
    if ((a4 >> v11))
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

  v16[0] = a3;
  v16[1] = 65537;
  v5 = v5 & 0xFFFFFFFF00000000 | v10;
  v12 = v11;
  for (i = v5; SBHIconGridRangeOffset(v16, v12, 1, i); i = v4)
  {
    if ([(SBHIconGridContiguousRegion *)self containsGridCellIndex:v16[0]])
    {
      goto LABEL_7;
    }

    v4 = v4 & 0xFFFFFFFF00000000 | v10;
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

- (void)enumerateGridCellIndexesNotContainedInGridRange:(SBHIconGridRange)a3 usingBlock:(id)a4
{
  v4 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v7 = a4;
  v8 = [(SBHIconGridContiguousRegion *)self gridSize];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__SBHIconGridContiguousRegion_enumerateGridCellIndexesNotContainedInGridRange_usingBlock___block_invoke;
  v10[3] = &unk_1E808EB80;
  v12 = cellIndex;
  v13 = v4;
  v14 = v8;
  v11 = v7;
  v9 = v7;
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

- (id)gridCellIndexesNotContainedInGridRange:(SBHIconGridRange)a3
{
  v3 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
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

- (id)subcontiguousRegionWithGridRange:(SBHIconGridRange)a3
{
  v3 = *&a3.size.columns;
  cellIndex = a3.cellIndex;
  v6 = [(SBHIconGridContiguousRegion *)self gridSize];
  v7 = [(SBHIconGridContiguousRegion *)self gridRange];
  v9 = v8;
  v10 = v6;
  if (!SBHIconGridRangeContainsIconGridRange(cellIndex, v3, v7, v8, v6.columns))
  {
    cellIndex = SBHIconGridRangeIntersection(v7, v9, cellIndex, v3, v6.columns);
    v3 = v11;
  }

  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __64__SBHIconGridContiguousRegion_subcontiguousRegionWithGridRange___block_invoke;
  v20 = &unk_1E808EBA8;
  v22 = cellIndex;
  v23 = v3;
  v24 = v6;
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

- (id)contiguousRegionByRemovingGridCellIndexes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(SBHIconGridContiguousRegion *)self contiguousRegionByRemovingGridCellIndexes:v4, &v7];
    v5 = v7;
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)contiguousRegionByAddingGridCellIndexes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(SBHIconGridContiguousRegion *)self contiguousRegionByAddingGridCellIndexes:v4, &v7];
    v5 = v7;
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)layoutDescription
{
  v4 = [MEMORY[0x1E696AD60] string];
  v15 = [(SBHIconGridContiguousRegion *)self gridRange];
  v6 = v5;
  v7 = [(SBHIconGridContiguousRegion *)self gridSize];
  if (v6 >= 0x10000)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      v2 = v2 & 0xFFFFFFFF00000000 | v9;
      v10 = SBHIconGridRangeMinCellIndexOnRow(v15, v6, v2, v8);
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

          [v4 appendString:v13];
          ++v11;
          --v12;
        }

        while (v12);
      }

      [v4 appendString:@"\n"];
      ++v8;
    }

    while (v8 != WORD1(v6));
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SBHIconGridContiguousRegion *)v4 isEqual:&v9];
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

- (BOOL)containsGridCellIndex:(unint64_t)a3
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self containsIndex:a3];
}

- (void)enumerateGridCellIndexesUsingBlock:(id)a3
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  [(SBHIconGridContiguousRegion *)self enumerateIndexesUsingBlock:a3];
}

- (void)enumerateGridCellIndexesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  [(SBHIconGridContiguousRegion *)self enumerateIndexesWithOptions:a3 usingBlock:a4];
}

- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)a3
{
  v6 = a3;
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
  v9 = [OUTLINED_FUNCTION_0_11() gridSize];
  v10 = [(SBHIconGridContiguousRegion *)self startGridCellIndex];
  v11 = [(SBHIconGridContiguousRegion *)self endGridCellIndex];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__SBHIconGridContiguousRegion_enumerateEmptyGridCellIndexesUsingBlock___block_invoke;
  v14[3] = &unk_1E808EB58;
  v17 = v10;
  v18 = v11;
  v15 = v8;
  v16 = v6;
  v12 = v6;
  v13 = v8;
  SBHIconGridRangeEnumerateCellIndexes(v3, v4, v9, v14);
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_gridCellIndexes;
  }

  return [(SBHIconGridContiguousRegion *)self hash];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  if (self)
  {
    gridCellIndexes = self->_gridCellIndexes;
  }

  else
  {
    gridCellIndexes = 0;
  }

  v11 = v4;
  v6 = [v4 appendObject:gridCellIndexes withName:@"gridCellIndexes"];
  v7 = [(SBHIconGridContiguousRegion *)self gridRange];
  v9 = SBHStringForIconGridRange(v7, v8);
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