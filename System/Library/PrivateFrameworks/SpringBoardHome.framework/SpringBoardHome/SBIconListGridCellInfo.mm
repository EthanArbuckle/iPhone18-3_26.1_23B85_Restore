@interface SBIconListGridCellInfo
- (BOOL)hasMultipleContiguousRegions;
- (BOOL)hasMultipleContiguousRegionsInGridRange:(SBHIconGridRange)a3;
- (BOOL)hasUsedGridCellsInGridRange:(SBHIconGridRange)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLayoutOutOfBounds;
- (BOOL)isOutOfBoundsAtIconIndex:(int64_t)a3;
- (NSIndexSet)indexesOfOutOfBoundsIcons;
- (NSSet)contiguousRegions;
- (NSString)description;
- (NSString)layoutDescription;
- (SBHIconGridRange)gridRangeForGridCellIndex:(int64_t)a3;
- (SBHIconGridRange)usedGridRange;
- (SBHIconGridSize)usedGridSize;
- (SBIconCoordinate)coordinateForGridCellIndex:(int64_t)a3;
- (SBIconListGridCellInfo)init;
- (SBIconListGridCellInfo)initWithGridSize:(SBHIconGridSize)a3;
- (SBIconListGridCellInfoChangeInfo)movementChangeInfoFromGridCellInfo:(id)a3;
- (id)contiguousRegionForGridCellIndex:(int64_t)a3;
- (id)contiguousRegionsForGridRange:(SBHIconGridRange)a3;
- (id)copyWithZone:(void *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)gridCellInfoByAddingEmptyColumns:(int64_t)a3;
- (id)gridCellInfoByAddingEmptyRows:(int64_t)a3;
- (id)iconIndexesForContiguousRegion:(id)a3;
- (id)iconIndexesInGridRange:(SBHIconGridRange)a3;
- (id)indexesOfOutOfBoundsIconInRange:(_NSRange)a3;
- (id)layoutChangeDescriptionFromGridCellInfo:(id)a3;
- (id)subgridCellInfoForGridRange:(SBHIconGridRange)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)countOfIconsOfSize:(SBHIconGridSize)a3;
- (int64_t)firstEmptyGridCellIndex;
- (int64_t)firstTrailingEmptyGridCellIndex;
- (int64_t)getIconIndexes:(int64_t *)a3 inGridRange:(SBHIconGridRange)a4;
- (int64_t)getUniqueIconIndexes:(int64_t *)a3 inGridRange:(SBHIconGridRange)a4;
- (int64_t)gridCellIndexForCoordinate:(SBIconCoordinate)a3;
- (int64_t)gridCellIndexForIconIndex:(int64_t)a3;
- (int64_t)gridCellIndexForRow:(int64_t)a3;
- (int64_t)hash;
- (int64_t)iconIndexForCoordinate:(SBIconCoordinate)a3;
- (int64_t)iconIndexForGridCellIndex:(int64_t)a3;
- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)a3 flipped:(BOOL)a4;
- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)a3 inGridCellIndexRange:(_NSRange)a4;
- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)a3 inGridRange:(SBHIconGridRange)a4 flipped:(BOOL)a5;
- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)a3 inGridCellIndexRange:(_NSRange)a4 passingTest:(id)a5;
- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)a3 inGridRange:(SBHIconGridRange)a4 passingTest:(id)a5;
- (int64_t)indexOfFirstUsedGridCellInGridRange:(SBHIconGridRange)a3;
- (int64_t)indexOfLastUsedGridCellInGridRange:(SBHIconGridRange)a3;
- (int64_t)indexOfOutOfBoundsIconInRange:(_NSRange)a3;
- (int64_t)lastUsedGridCellIndex;
- (int64_t)lastUsedRow;
- (int64_t)maxGridCellIndexForIconIndex:(int64_t)a3;
- (int64_t)numberOfEmptyGridCells;
- (int64_t)numberOfUsedColumns;
- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)a3;
- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)a3 rowRange:(_NSRange)a4;
- (int64_t)numberOfUsedGridCellsInGridRange:(SBHIconGridRange)a3;
- (int64_t)numberOfUsedGridCellsInRow:(int64_t)a3;
- (int64_t)numberOfUsedGridCellsInRow:(int64_t)a3 columnRange:(_NSRange)a4;
- (int64_t)numberOfUsedRows;
- (void)clearAllIconAndGridCellIndexes;
- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)a3;
- (void)enumerateEmptyGridCellRangesOfSize:(SBHIconGridSize)a3 inGridRange:(SBHIconGridRange)a4 flipped:(BOOL)a5 usingBlock:(id)a6;
- (void)enumerateOutOfBoundsIconIndexesInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateUniqueIconIndexesInGridRange:(SBHIconGridRange)a3 usingBlock:(id)a4;
- (void)markIconIndexAsOutOfBounds:(int64_t)a3;
- (void)moveLayoutInGridRange:(SBHIconGridRange)a3 toGridCellIndex:(int64_t)a4;
- (void)setIconIndex:(int64_t)a3 forGridCellIndex:(int64_t)a4;
- (void)setIconIndex:(int64_t)a3 inContiguousRegion:(id)a4;
- (void)setIconIndex:(int64_t)a3 inGridRange:(SBHIconGridRange)a4;
- (void)setIconIndexes:(int64_t *)a3 inGridRange:(SBHIconGridRange)a4;
- (void)setLayoutFromGridCellInfo:(id)a3;
- (void)setLayoutFromGridCellInfo:(id)a3 fromGridRange:(SBHIconGridRange)a4 toGridCellIndex:(int64_t)a5;
- (void)swapLayoutInGridRange:(SBHIconGridRange)a3 withLayoutAtGridCellIndex:(int64_t)a4;
@end

@implementation SBIconListGridCellInfo

- (SBIconListGridCellInfo)initWithGridSize:(SBHIconGridSize)a3
{
  v5 = OBJC_IVAR___SBIconListGridCellInfo_indexes;
  *(&self->super.isa + v5) = MEMORY[0x1BFB4E4F0](48, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v6 = self + OBJC_IVAR___SBIconListGridCellInfo_maxGridCellIndex;
  *v6 = 0;
  v6[8] = 1;
  v7 = self + OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex;
  *v7 = 0;
  v7[8] = 1;
  *(&self->super.isa + OBJC_IVAR___SBIconListGridCellInfo_outOfBoundsIconIndexes) = MEMORY[0x1E69E7CD0];
  *(&self->super.isa + OBJC_IVAR___SBIconListGridCellInfo_gridSize) = a3;
  v9.receiver = self;
  v9.super_class = SBIconListGridCellInfo;
  return [(SBIconListGridCellInfo *)&v9 init];
}

- (id)copyWithZone:(void *)a3
{
  swift_getObjectType();
  v4 = self;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  sub_1BEB3ACC8(v4);

  v6 = sub_1BEE476FC();
  return v6;
}

- (void)clearAllIconAndGridCellIndexes
{
  v2 = self;
  sub_1BEB3AB10();
}

- (SBIconListGridCellInfo)init
{
  if (qword_1EBDBFF20 != -1)
  {
    v5 = self;
    swift_once();
    self = v5;
  }

  v3 = dword_1EBDC7CD4;

  return [(SBIconListGridCellInfo *)self initWithGridSize:v3];
}

- (int64_t)gridCellIndexForIconIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEE28250(a3);

  return v5;
}

- (int64_t)iconIndexForGridCellIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEE2834C(a3);

  return v5;
}

- (void)setIconIndex:(int64_t)a3 forGridCellIndex:(int64_t)a4
{
  v9 = self;
  v6 = sub_1BEE467EC();
  v7 = v6 == a3;
  if (v6 == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  sub_1BEE28484(v8, v7, a4);
}

- (void)setIconIndex:(int64_t)a3 inGridRange:(SBHIconGridRange)a4
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v7 = self;
  sub_1BEE28740(a3, cellIndex, size);
}

- (void)setIconIndex:(int64_t)a3 inContiguousRegion:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BEE33424;
  *(v8 + 24) = v7;
  v12[4] = sub_1BEE33498;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1BEE289DC;
  v12[3] = &block_descriptor_61;
  v9 = _Block_copy(v12);
  v10 = self;
  v11 = a4;

  [v11 enumerateGridCellIndexesUsingBlock_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }
}

- (void)moveLayoutInGridRange:(SBHIconGridRange)a3 toGridCellIndex:(int64_t)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v8 = self;
  v7 = sub_1BEE28B80(cellIndex, size);
  sub_1BEE28E00(v7, a4, size);
}

- (void)swapLayoutInGridRange:(SBHIconGridRange)a3 withLayoutAtGridCellIndex:(int64_t)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v9 = self;
  v7 = sub_1BEE28B80(cellIndex, size);
  v8 = sub_1BEE28B80(a4, size);
  sub_1BEE28E00(v8, cellIndex, size);

  sub_1BEE28E00(v7, a4, size);
}

- (int64_t)numberOfUsedRows
{
  v2 = self;
  v3 = sub_1BEE29160();

  return v3;
}

- (int64_t)numberOfUsedColumns
{
  if (*(&self->gridSize.columns + OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex))
  {
    return 0;
  }

  v3 = *(&self->super.isa + OBJC_IVAR___SBIconListGridCellInfo_maxUsedColumnIndex);
  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

- (SBHIconGridSize)usedGridSize
{
  v2 = self;
  v3 = [(SBIconListGridCellInfo *)v2 numberOfUsedColumns];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  if (v3 >> 16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = [(SBIconListGridCellInfo *)v2 numberOfUsedRows];

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >> 16)
  {
LABEL_9:
    __break(1u);
    return v3;
  }

  LODWORD(v3) = v4 | (v5 << 16);
  return v3;
}

- (SBHIconGridRange)usedGridRange
{
  v2 = self;
  v3 = sub_1BEE292BC();
  v5 = v4;

  v6 = v5;
  v7 = v3;
  result.size = v6;
  result.cellIndex = v7;
  return result;
}

- (int64_t)getIconIndexes:(int64_t *)a3 inGridRange:(SBHIconGridRange)a4
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v7 = self;
  v8 = sub_1BEE294E8(a3, cellIndex, size);

  return v8;
}

- (int64_t)getUniqueIconIndexes:(int64_t *)a3 inGridRange:(SBHIconGridRange)a4
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v7 = self;
  v8 = sub_1BEE295D8(cellIndex, size);
  v9 = *(v8 + 2);
  if (v9)
  {
    if (v9 <= 5 || (a3 - v8 - 32) < 0x20)
    {
      v10 = 0;
      v11 = a3;
LABEL_5:
      v12 = v9 - v10;
      v13 = &v8[8 * v10 + 32];
      do
      {
        v14 = *v13;
        v13 += 8;
        *v11++ = v14;
        --v12;
      }

      while (v12);
      goto LABEL_7;
    }

    v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
    v11 = &a3[v9 & 0x7FFFFFFFFFFFFFFCLL];
    v16 = a3 + 2;
    v17 = (v8 + 48);
    v18 = v9 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v19 = *v17;
      *(v16 - 1) = *(v17 - 1);
      *v16 = v19;
      v16 += 4;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    if (v9 != v10)
    {
      goto LABEL_5;
    }
  }

LABEL_7:

  return v9;
}

- (void)enumerateUniqueIconIndexesInGridRange:(SBHIconGridRange)a3 usingBlock:(id)a4
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v7 = _Block_copy(a4);
  _Block_copy(v7);
  v8 = self;
  sub_1BEE32A90(cellIndex, size, v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (id)iconIndexesInGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v6 = sub_1BEE4695C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  sub_1BEE29A88(cellIndex, size);

  v11 = sub_1BEE468FC();
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (void)setIconIndexes:(int64_t *)a3 inGridRange:(SBHIconGridRange)a4
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v7 = self;
  sub_1BEE29DB0(a3, cellIndex, size);
}

- (SBIconCoordinate)coordinateForGridCellIndex:(int64_t)a3
{
  v4 = self;
  v5 = SBIconCoordinateMakeWithGridCellIndex(a3, [(SBIconListGridCellInfo *)v4 gridSize]);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.row = v9;
  result.column = v8;
  return result;
}

- (int64_t)gridCellIndexForCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v5 = self;
  GridCellIndex = SBIconCoordinateGetGridCellIndex(column, row, [(SBIconListGridCellInfo *)v5 gridSize]);

  return GridCellIndex;
}

- (int64_t)iconIndexForCoordinate:(SBIconCoordinate)a3
{
  row = a3.row;
  column = a3.column;
  v5 = self;
  v6 = [(SBIconListGridCellInfo *)v5 gridCellIndexForCoordinate:column, row];
  if (v6 == sub_1BEE467EC())
  {
    v7 = sub_1BEE467EC();
  }

  else
  {
    v7 = [(SBIconListGridCellInfo *)v5 iconIndexForGridCellIndex:v6];
  }

  v8 = v7;

  return v8;
}

- (int64_t)gridCellIndexForRow:(int64_t)a3
{
  v4 = [(SBIconListGridCellInfo *)self gridSize];
  result = a3 * v4;
  if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)numberOfUsedGridCellsInRow:(int64_t)a3
{
  v4 = self;
  v5 = [(SBIconListGridCellInfo *)v4 numberOfUsedGridCellsInRow:a3 columnRange:0, [(SBIconListGridCellInfo *)v4 numberOfUsedColumns]];

  return v5;
}

- (int64_t)numberOfUsedGridCellsInRow:(int64_t)a3 columnRange:(_NSRange)a4
{
  length = a4.length;
  v6 = self;
  v8 = sub_1BEE2A1C0(a3, v7, length);

  return v8;
}

- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)a3
{
  v4 = self;
  v5 = [(SBIconListGridCellInfo *)v4 numberOfUsedGridCellsInColumn:a3 rowRange:0, [(SBIconListGridCellInfo *)v4 gridSize]>> 16];

  return v5;
}

- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)a3 rowRange:(_NSRange)a4
{
  length = a4.length;
  v6 = self;
  v8 = sub_1BEE2A35C(a3, v7, length);

  return v8;
}

- (int64_t)numberOfUsedGridCellsInGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  v6 = sub_1BEE2A49C(cellIndex, size);

  return v6;
}

- (BOOL)hasUsedGridCellsInGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  LOBYTE(size) = sub_1BEE2A6F4(cellIndex, size);

  return size & 1;
}

- (int64_t)maxGridCellIndexForIconIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEE2A94C(a3);

  return v5;
}

- (SBHIconGridRange)gridRangeForGridCellIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEE2AAA0(a3);
  v7 = v6;

  v8 = v7;
  v9 = v5;
  result.size = v8;
  result.cellIndex = v9;
  return result;
}

- (BOOL)isLayoutOutOfBounds
{
  v2 = self;
  v3 = sub_1BEE2AEA8();

  return v3;
}

- (int64_t)indexOfOutOfBoundsIconInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  v6 = sub_1BEE2AF54(location, length);

  return v6;
}

- (id)indexesOfOutOfBoundsIconInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = sub_1BEE4695C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  result = sub_1BEE4694C();
  if ((length & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (length)
  {
    v12 = 0;
    while (!__OFADD__(location, v12))
    {
      result = [(SBIconListGridCellInfo *)v10 isOutOfBoundsAtIconIndex:location + v12];
      if (result)
      {
        result = sub_1BEE4691C();
      }

      if (length == ++v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_8:

  v13 = sub_1BEE468FC();
  (*(v7 + 8))(v9, v6);

  return v13;
}

- (NSIndexSet)indexesOfOutOfBoundsIcons
{
  v3 = sub_1BEE4695C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_1BEE2B28C();

  v8 = sub_1BEE468FC();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (BOOL)isOutOfBoundsAtIconIndex:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1BEE2B38C(a3);

  return a3 & 1;
}

- (void)enumerateOutOfBoundsIconIndexesInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v5 = a4;
  length = a3.length;
  location = a3.location;
  v9 = _Block_copy(a5);
  _Block_copy(v9);
  v10 = self;
  sub_1BEE32B58(location, length, v5, v10, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (int64_t)firstEmptyGridCellIndex
{
  v2 = qword_1EBDC6DB8;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = [(SBIconListGridCellInfo *)v3 indexOfFirstEmptyGridCellRangeOfSize:dword_1EBDC7CD0];

  return v4;
}

- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)a3 flipped:(BOOL)a4
{
  v4 = a4;
  v6 = self;
  v7 = [(SBIconListGridCellInfo *)v6 indexOfFirstEmptyGridCellRangeOfSize:*&a3 inGridRange:0 flipped:[(SBIconListGridCellInfo *)v6 gridSize], v4];

  return v7;
}

- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)a3 inGridRange:(SBHIconGridRange)a4 flipped:(BOOL)a5
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v9 = self;
  v10 = sub_1BEE2B6DC(*&a3, cellIndex, size, a5);

  return v10;
}

- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)a3 inGridCellIndexRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = self;
  [(SBIconListGridCellInfo *)v7 gridSize];
  Area = SBHIconGridSizeGetArea([(SBIconListGridCellInfo *)v7 gridSize]);
  v9 = sub_1BEE2C134(*&a3, 0, Area, v7, location, length);

  return v9;
}

- (void)enumerateEmptyGridCellRangesOfSize:(SBHIconGridSize)a3 inGridRange:(SBHIconGridRange)a4 flipped:(BOOL)a5 usingBlock:(id)a6
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v11 = _Block_copy(a6);
  v13[2] = v11;
  v12 = self;
  sub_1BEE2B9F4(*&a3, cellIndex, size, a5, sub_1BEE333E0, v13);
  _Block_release(v11);
}

- (int64_t)numberOfEmptyGridCells
{
  v2 = self;
  v3 = sub_1BEE2BDA8();

  return v3;
}

- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)a3 inGridRange:(SBHIconGridRange)a4 passingTest:(id)a5
{
  cellIndex = a4.cellIndex;
  v8 = _Block_copy(a5);
  v13[2] = v8;
  v9 = self;
  v11 = sub_1BEE2BF04(*&a3, cellIndex, v10, sub_1BEE334B8, v13);
  _Block_release(v8);

  return v11;
}

- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)a3 inGridCellIndexRange:(_NSRange)a4 passingTest:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = _Block_copy(a5);
  _Block_copy(v9);
  v10 = self;
  v11 = sub_1BEE32C6C(*&a3, location, length, v10);
  _Block_release(v9);
  _Block_release(v9);

  return v11;
}

- (int64_t)indexOfFirstUsedGridCellInGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  v6 = sub_1BEE2C4BC(cellIndex, size);

  return v6;
}

- (int64_t)indexOfLastUsedGridCellInGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  v6 = sub_1BEE2C784(cellIndex, size);

  return v6;
}

- (int64_t)lastUsedGridCellIndex
{
  v2 = self;
  v3 = sub_1BEE2CA7C();

  return v3;
}

- (int64_t)lastUsedRow
{
  v2 = self;
  v3 = sub_1BEE2CD08();

  return v3;
}

- (int64_t)firstTrailingEmptyGridCellIndex
{
  v2 = self;
  result = [(SBIconListGridCellInfo *)v2 lastUsedGridCellIndex];
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = result + 1;
  if (!__OFADD__(result, 1))
  {
    if (v4 < SBHIconGridSizeGetArea([(SBIconListGridCellInfo *)v2 gridSize]))
    {
LABEL_5:

      return v4;
    }

LABEL_4:
    v4 = sub_1BEE467EC();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1BEE32EE4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (int64_t)countOfIconsOfSize:(SBHIconGridSize)a3
{
  v3 = *&a3.columns;
  v4 = self;
  v5 = sub_1BEE2CE5C(v3);

  return v5;
}

- (id)gridCellInfoByAddingEmptyColumns:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEE2D054(a3);

  return v5;
}

- (id)gridCellInfoByAddingEmptyRows:(int64_t)a3
{
  swift_getObjectType();
  v5 = self;
  result = [(SBIconListGridCellInfo *)v5 gridSize];
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 >> 16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = (result >> 16) + a3;
  if ((v7 & 0x10000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  sub_1BEB3ACC8(v5);

  return v8;
}

- (void)setLayoutFromGridCellInfo:(id)a3 fromGridRange:(SBHIconGridRange)a4 toGridCellIndex:(int64_t)a5
{
  size = a4.size;
  cellIndex = a4.cellIndex;
  v9 = a3;
  v11 = self;
  v10 = sub_1BEE28B80(cellIndex, size);
  sub_1BEE28E00(v10, a5, size);
}

- (void)setLayoutFromGridCellInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BEE2D524(v4);
}

- (void)markIconIndexAsOutOfBounds:(int64_t)a3
{
  swift_beginAccess();
  v5 = self;
  sub_1BEDF66CC(&v6, a3);
  swift_endAccess();
}

- (id)contiguousRegionForGridCellIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BEE2D734(a3);

  return v5;
}

- (id)contiguousRegionsForGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  sub_1BEE2DCEC(cellIndex, size);

  sub_1BEB20D28(0, &unk_1EBDC79D0);
  sub_1BEE332CC();
  v6 = sub_1BEE4724C();

  return v6;
}

- (NSSet)contiguousRegions
{
  v2 = self;
  v3 = [(SBIconListGridCellInfo *)v2 contiguousRegionsForGridRange:0, [(SBIconListGridCellInfo *)v2 gridSize]];
  sub_1BEB20D28(0, &unk_1EBDC79D0);
  sub_1BEE332CC();
  sub_1BEE4726C();

  v4 = sub_1BEE4724C();

  return v4;
}

- (BOOL)hasMultipleContiguousRegionsInGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  LOBYTE(size) = sub_1BEE2E294(cellIndex, size);

  return size & 1;
}

- (BOOL)hasMultipleContiguousRegions
{
  v2 = self;
  v3 = [(SBIconListGridCellInfo *)v2 hasMultipleContiguousRegionsInGridRange:0, [(SBIconListGridCellInfo *)v2 gridSize]];

  return v3;
}

- (id)iconIndexesForContiguousRegion:(id)a3
{
  v5 = sub_1BEE4695C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  sub_1BEE2E538(v9, v8);

  v11 = sub_1BEE468FC();
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)subgridCellInfoForGridRange:(SBHIconGridRange)a3
{
  size = a3.size;
  cellIndex = a3.cellIndex;
  v5 = self;
  v6 = sub_1BEE2E8C4(cellIndex, size);

  return v6;
}

- (SBIconListGridCellInfoChangeInfo)movementChangeInfoFromGridCellInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEE2EBE0(v4);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)layoutChangeDescriptionFromGridCellInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BEE2EF90(v4);
  v7 = [v6 layoutDescription];
  if (!v7)
  {
    sub_1BEE4708C();
    v7 = sub_1BEE4705C();
  }

  return v7;
}

- (NSString)layoutDescription
{
  v2 = self;
  sub_1BEE2F2E0();

  v3 = sub_1BEE4705C();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BEE4741C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SBIconListGridCellInfo.isEqual(_:)(v8);

  sub_1BEE2FA1C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = SBIconListGridCellInfo.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  result = [(SBIconListGridCellInfo *)v2 descriptionWithMultilinePrefix:0];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescription
{
  v2 = self;
  result = [(SBIconListGridCellInfo *)v2 succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    v5 = [result build];

    if (v5)
    {
      sub_1BEE4708C();

      v6 = sub_1BEE4705C();
    }

    else
    {

      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescriptionBuilder
{
  v2 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];

  return v2;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    v4 = sub_1BEE4708C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1BEDF56F4(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BEE4705C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    sub_1BEE4708C();
  }

  v4 = self;
  v5 = sub_1BEE33024();

  return v5;
}

@end