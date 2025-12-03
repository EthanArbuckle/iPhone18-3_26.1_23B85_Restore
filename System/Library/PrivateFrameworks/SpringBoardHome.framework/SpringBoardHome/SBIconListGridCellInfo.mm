@interface SBIconListGridCellInfo
- (BOOL)hasMultipleContiguousRegions;
- (BOOL)hasMultipleContiguousRegionsInGridRange:(SBHIconGridRange)range;
- (BOOL)hasUsedGridCellsInGridRange:(SBHIconGridRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLayoutOutOfBounds;
- (BOOL)isOutOfBoundsAtIconIndex:(int64_t)index;
- (NSIndexSet)indexesOfOutOfBoundsIcons;
- (NSSet)contiguousRegions;
- (NSString)description;
- (NSString)layoutDescription;
- (SBHIconGridRange)gridRangeForGridCellIndex:(int64_t)index;
- (SBHIconGridRange)usedGridRange;
- (SBHIconGridSize)usedGridSize;
- (SBIconCoordinate)coordinateForGridCellIndex:(int64_t)index;
- (SBIconListGridCellInfo)init;
- (SBIconListGridCellInfo)initWithGridSize:(SBHIconGridSize)size;
- (SBIconListGridCellInfoChangeInfo)movementChangeInfoFromGridCellInfo:(id)info;
- (id)contiguousRegionForGridCellIndex:(int64_t)index;
- (id)contiguousRegionsForGridRange:(SBHIconGridRange)range;
- (id)copyWithZone:(void *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)gridCellInfoByAddingEmptyColumns:(int64_t)columns;
- (id)gridCellInfoByAddingEmptyRows:(int64_t)rows;
- (id)iconIndexesForContiguousRegion:(id)region;
- (id)iconIndexesInGridRange:(SBHIconGridRange)range;
- (id)indexesOfOutOfBoundsIconInRange:(_NSRange)range;
- (id)layoutChangeDescriptionFromGridCellInfo:(id)info;
- (id)subgridCellInfoForGridRange:(SBHIconGridRange)range;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)countOfIconsOfSize:(SBHIconGridSize)size;
- (int64_t)firstEmptyGridCellIndex;
- (int64_t)firstTrailingEmptyGridCellIndex;
- (int64_t)getIconIndexes:(int64_t *)indexes inGridRange:(SBHIconGridRange)range;
- (int64_t)getUniqueIconIndexes:(int64_t *)indexes inGridRange:(SBHIconGridRange)range;
- (int64_t)gridCellIndexForCoordinate:(SBIconCoordinate)coordinate;
- (int64_t)gridCellIndexForIconIndex:(int64_t)index;
- (int64_t)gridCellIndexForRow:(int64_t)row;
- (int64_t)hash;
- (int64_t)iconIndexForCoordinate:(SBIconCoordinate)coordinate;
- (int64_t)iconIndexForGridCellIndex:(int64_t)index;
- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)size flipped:(BOOL)flipped;
- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)size inGridCellIndexRange:(_NSRange)range;
- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)size inGridRange:(SBHIconGridRange)range flipped:(BOOL)flipped;
- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)size inGridCellIndexRange:(_NSRange)range passingTest:(id)test;
- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)size inGridRange:(SBHIconGridRange)range passingTest:(id)test;
- (int64_t)indexOfFirstUsedGridCellInGridRange:(SBHIconGridRange)range;
- (int64_t)indexOfLastUsedGridCellInGridRange:(SBHIconGridRange)range;
- (int64_t)indexOfOutOfBoundsIconInRange:(_NSRange)range;
- (int64_t)lastUsedGridCellIndex;
- (int64_t)lastUsedRow;
- (int64_t)maxGridCellIndexForIconIndex:(int64_t)index;
- (int64_t)numberOfEmptyGridCells;
- (int64_t)numberOfUsedColumns;
- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)column;
- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)column rowRange:(_NSRange)range;
- (int64_t)numberOfUsedGridCellsInGridRange:(SBHIconGridRange)range;
- (int64_t)numberOfUsedGridCellsInRow:(int64_t)row;
- (int64_t)numberOfUsedGridCellsInRow:(int64_t)row columnRange:(_NSRange)range;
- (int64_t)numberOfUsedRows;
- (void)clearAllIconAndGridCellIndexes;
- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)block;
- (void)enumerateEmptyGridCellRangesOfSize:(SBHIconGridSize)size inGridRange:(SBHIconGridRange)range flipped:(BOOL)flipped usingBlock:(id)block;
- (void)enumerateOutOfBoundsIconIndexesInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateUniqueIconIndexesInGridRange:(SBHIconGridRange)range usingBlock:(id)block;
- (void)markIconIndexAsOutOfBounds:(int64_t)bounds;
- (void)moveLayoutInGridRange:(SBHIconGridRange)range toGridCellIndex:(int64_t)index;
- (void)setIconIndex:(int64_t)index forGridCellIndex:(int64_t)cellIndex;
- (void)setIconIndex:(int64_t)index inContiguousRegion:(id)region;
- (void)setIconIndex:(int64_t)index inGridRange:(SBHIconGridRange)range;
- (void)setIconIndexes:(int64_t *)indexes inGridRange:(SBHIconGridRange)range;
- (void)setLayoutFromGridCellInfo:(id)info;
- (void)setLayoutFromGridCellInfo:(id)info fromGridRange:(SBHIconGridRange)range toGridCellIndex:(int64_t)index;
- (void)swapLayoutInGridRange:(SBHIconGridRange)range withLayoutAtGridCellIndex:(int64_t)index;
@end

@implementation SBIconListGridCellInfo

- (SBIconListGridCellInfo)initWithGridSize:(SBHIconGridSize)size
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
  *(&self->super.isa + OBJC_IVAR___SBIconListGridCellInfo_gridSize) = size;
  v9.receiver = self;
  v9.super_class = SBIconListGridCellInfo;
  return [(SBIconListGridCellInfo *)&v9 init];
}

- (id)copyWithZone:(void *)zone
{
  swift_getObjectType();
  selfCopy = self;
  initWithGridSize_ = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  sub_1BEB3ACC8(selfCopy);

  v6 = sub_1BEE476FC();
  return v6;
}

- (void)clearAllIconAndGridCellIndexes
{
  selfCopy = self;
  sub_1BEB3AB10();
}

- (SBIconListGridCellInfo)init
{
  if (qword_1EBDBFF20 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = dword_1EBDC7CD4;

  return [(SBIconListGridCellInfo *)self initWithGridSize:v3];
}

- (int64_t)gridCellIndexForIconIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEE28250(index);

  return v5;
}

- (int64_t)iconIndexForGridCellIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEE2834C(index);

  return v5;
}

- (void)setIconIndex:(int64_t)index forGridCellIndex:(int64_t)cellIndex
{
  selfCopy = self;
  v6 = sub_1BEE467EC();
  v7 = v6 == index;
  if (v6 == index)
  {
    indexCopy = 0;
  }

  else
  {
    indexCopy = index;
  }

  sub_1BEE28484(indexCopy, v7, cellIndex);
}

- (void)setIconIndex:(int64_t)index inGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  sub_1BEE28740(index, cellIndex, size);
}

- (void)setIconIndex:(int64_t)index inContiguousRegion:(id)region
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = index;
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
  selfCopy = self;
  regionCopy = region;

  [regionCopy enumerateGridCellIndexesUsingBlock_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }
}

- (void)moveLayoutInGridRange:(SBHIconGridRange)range toGridCellIndex:(int64_t)index
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v7 = sub_1BEE28B80(cellIndex, size);
  sub_1BEE28E00(v7, index, size);
}

- (void)swapLayoutInGridRange:(SBHIconGridRange)range withLayoutAtGridCellIndex:(int64_t)index
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v7 = sub_1BEE28B80(cellIndex, size);
  v8 = sub_1BEE28B80(index, size);
  sub_1BEE28E00(v8, cellIndex, size);

  sub_1BEE28E00(v7, index, size);
}

- (int64_t)numberOfUsedRows
{
  selfCopy = self;
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
  selfCopy = self;
  numberOfUsedColumns = [(SBIconListGridCellInfo *)selfCopy numberOfUsedColumns];
  if ((numberOfUsedColumns & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = numberOfUsedColumns;
  if (numberOfUsedColumns >> 16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  numberOfUsedRows = [(SBIconListGridCellInfo *)selfCopy numberOfUsedRows];

  if ((numberOfUsedRows & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (numberOfUsedRows >> 16)
  {
LABEL_9:
    __break(1u);
    return numberOfUsedColumns;
  }

  LODWORD(numberOfUsedColumns) = v4 | (numberOfUsedRows << 16);
  return numberOfUsedColumns;
}

- (SBHIconGridRange)usedGridRange
{
  selfCopy = self;
  v3 = sub_1BEE292BC();
  v5 = v4;

  v6 = v5;
  v7 = v3;
  result.size = v6;
  result.cellIndex = v7;
  return result;
}

- (int64_t)getIconIndexes:(int64_t *)indexes inGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v8 = sub_1BEE294E8(indexes, cellIndex, size);

  return v8;
}

- (int64_t)getUniqueIconIndexes:(int64_t *)indexes inGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v8 = sub_1BEE295D8(cellIndex, size);
  v9 = *(v8 + 2);
  if (v9)
  {
    if (v9 <= 5 || (indexes - v8 - 32) < 0x20)
    {
      v10 = 0;
      indexesCopy = indexes;
LABEL_5:
      v12 = v9 - v10;
      v13 = &v8[8 * v10 + 32];
      do
      {
        v14 = *v13;
        v13 += 8;
        *indexesCopy++ = v14;
        --v12;
      }

      while (v12);
      goto LABEL_7;
    }

    v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
    indexesCopy = &indexes[v9 & 0x7FFFFFFFFFFFFFFCLL];
    v16 = indexes + 2;
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

- (void)enumerateUniqueIconIndexesInGridRange:(SBHIconGridRange)range usingBlock:(id)block
{
  size = range.size;
  cellIndex = range.cellIndex;
  v7 = _Block_copy(block);
  _Block_copy(v7);
  selfCopy = self;
  sub_1BEE32A90(cellIndex, size, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (id)iconIndexesInGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  v6 = sub_1BEE4695C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1BEE29A88(cellIndex, size);

  v11 = sub_1BEE468FC();
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (void)setIconIndexes:(int64_t *)indexes inGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  sub_1BEE29DB0(indexes, cellIndex, size);
}

- (SBIconCoordinate)coordinateForGridCellIndex:(int64_t)index
{
  selfCopy = self;
  v5 = SBIconCoordinateMakeWithGridCellIndex(index, [(SBIconListGridCellInfo *)selfCopy gridSize]);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.row = v9;
  result.column = v8;
  return result;
}

- (int64_t)gridCellIndexForCoordinate:(SBIconCoordinate)coordinate
{
  row = coordinate.row;
  column = coordinate.column;
  selfCopy = self;
  GridCellIndex = SBIconCoordinateGetGridCellIndex(column, row, [(SBIconListGridCellInfo *)selfCopy gridSize]);

  return GridCellIndex;
}

- (int64_t)iconIndexForCoordinate:(SBIconCoordinate)coordinate
{
  row = coordinate.row;
  column = coordinate.column;
  selfCopy = self;
  v6 = [(SBIconListGridCellInfo *)selfCopy gridCellIndexForCoordinate:column, row];
  if (v6 == sub_1BEE467EC())
  {
    v7 = sub_1BEE467EC();
  }

  else
  {
    v7 = [(SBIconListGridCellInfo *)selfCopy iconIndexForGridCellIndex:v6];
  }

  v8 = v7;

  return v8;
}

- (int64_t)gridCellIndexForRow:(int64_t)row
{
  gridSize = [(SBIconListGridCellInfo *)self gridSize];
  result = row * gridSize;
  if ((row * gridSize) >> 64 != (row * gridSize) >> 63)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)numberOfUsedGridCellsInRow:(int64_t)row
{
  selfCopy = self;
  v5 = [(SBIconListGridCellInfo *)selfCopy numberOfUsedGridCellsInRow:row columnRange:0, [(SBIconListGridCellInfo *)selfCopy numberOfUsedColumns]];

  return v5;
}

- (int64_t)numberOfUsedGridCellsInRow:(int64_t)row columnRange:(_NSRange)range
{
  length = range.length;
  selfCopy = self;
  v8 = sub_1BEE2A1C0(row, v7, length);

  return v8;
}

- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)column
{
  selfCopy = self;
  v5 = [(SBIconListGridCellInfo *)selfCopy numberOfUsedGridCellsInColumn:column rowRange:0, [(SBIconListGridCellInfo *)selfCopy gridSize]>> 16];

  return v5;
}

- (int64_t)numberOfUsedGridCellsInColumn:(int64_t)column rowRange:(_NSRange)range
{
  length = range.length;
  selfCopy = self;
  v8 = sub_1BEE2A35C(column, v7, length);

  return v8;
}

- (int64_t)numberOfUsedGridCellsInGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v6 = sub_1BEE2A49C(cellIndex, size);

  return v6;
}

- (BOOL)hasUsedGridCellsInGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  LOBYTE(size) = sub_1BEE2A6F4(cellIndex, size);

  return size & 1;
}

- (int64_t)maxGridCellIndexForIconIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEE2A94C(index);

  return v5;
}

- (SBHIconGridRange)gridRangeForGridCellIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEE2AAA0(index);
  v7 = v6;

  v8 = v7;
  v9 = v5;
  result.size = v8;
  result.cellIndex = v9;
  return result;
}

- (BOOL)isLayoutOutOfBounds
{
  selfCopy = self;
  v3 = sub_1BEE2AEA8();

  return v3;
}

- (int64_t)indexOfOutOfBoundsIconInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v6 = sub_1BEE2AF54(location, length);

  return v6;
}

- (id)indexesOfOutOfBoundsIconInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = sub_1BEE4695C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
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
      result = [(SBIconListGridCellInfo *)selfCopy isOutOfBoundsAtIconIndex:location + v12];
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
  selfCopy = self;
  sub_1BEE2B28C();

  v8 = sub_1BEE468FC();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (BOOL)isOutOfBoundsAtIconIndex:(int64_t)index
{
  selfCopy = self;
  LOBYTE(index) = sub_1BEE2B38C(index);

  return index & 1;
}

- (void)enumerateOutOfBoundsIconIndexesInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  length = range.length;
  location = range.location;
  v9 = _Block_copy(block);
  _Block_copy(v9);
  selfCopy = self;
  sub_1BEE32B58(location, length, optionsCopy, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (int64_t)firstEmptyGridCellIndex
{
  v2 = qword_1EBDC6DB8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = [(SBIconListGridCellInfo *)selfCopy indexOfFirstEmptyGridCellRangeOfSize:dword_1EBDC7CD0];

  return v4;
}

- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)size flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  selfCopy = self;
  flippedCopy = [(SBIconListGridCellInfo *)selfCopy indexOfFirstEmptyGridCellRangeOfSize:*&size inGridRange:0 flipped:[(SBIconListGridCellInfo *)selfCopy gridSize], flippedCopy];

  return flippedCopy;
}

- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)size inGridRange:(SBHIconGridRange)range flipped:(BOOL)flipped
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v10 = sub_1BEE2B6DC(*&size, cellIndex, size, flipped);

  return v10;
}

- (int64_t)indexOfFirstEmptyGridCellRangeOfSize:(SBHIconGridSize)size inGridCellIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  [(SBIconListGridCellInfo *)selfCopy gridSize];
  Area = SBHIconGridSizeGetArea([(SBIconListGridCellInfo *)selfCopy gridSize]);
  v9 = sub_1BEE2C134(*&size, 0, Area, selfCopy, location, length);

  return v9;
}

- (void)enumerateEmptyGridCellRangesOfSize:(SBHIconGridSize)size inGridRange:(SBHIconGridRange)range flipped:(BOOL)flipped usingBlock:(id)block
{
  size = range.size;
  cellIndex = range.cellIndex;
  v11 = _Block_copy(block);
  v13[2] = v11;
  selfCopy = self;
  sub_1BEE2B9F4(*&size, cellIndex, size, flipped, sub_1BEE333E0, v13);
  _Block_release(v11);
}

- (int64_t)numberOfEmptyGridCells
{
  selfCopy = self;
  v3 = sub_1BEE2BDA8();

  return v3;
}

- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)size inGridRange:(SBHIconGridRange)range passingTest:(id)test
{
  cellIndex = range.cellIndex;
  v8 = _Block_copy(test);
  v13[2] = v8;
  selfCopy = self;
  v11 = sub_1BEE2BF04(*&size, cellIndex, v10, sub_1BEE334B8, v13);
  _Block_release(v8);

  return v11;
}

- (int64_t)indexOfFirstGridCellRangeOfSize:(SBHIconGridSize)size inGridCellIndexRange:(_NSRange)range passingTest:(id)test
{
  length = range.length;
  location = range.location;
  v9 = _Block_copy(test);
  _Block_copy(v9);
  selfCopy = self;
  v11 = sub_1BEE32C6C(*&size, location, length, selfCopy);
  _Block_release(v9);
  _Block_release(v9);

  return v11;
}

- (int64_t)indexOfFirstUsedGridCellInGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v6 = sub_1BEE2C4BC(cellIndex, size);

  return v6;
}

- (int64_t)indexOfLastUsedGridCellInGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v6 = sub_1BEE2C784(cellIndex, size);

  return v6;
}

- (int64_t)lastUsedGridCellIndex
{
  selfCopy = self;
  v3 = sub_1BEE2CA7C();

  return v3;
}

- (int64_t)lastUsedRow
{
  selfCopy = self;
  v3 = sub_1BEE2CD08();

  return v3;
}

- (int64_t)firstTrailingEmptyGridCellIndex
{
  selfCopy = self;
  result = [(SBIconListGridCellInfo *)selfCopy lastUsedGridCellIndex];
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = result + 1;
  if (!__OFADD__(result, 1))
  {
    if (v4 < SBHIconGridSizeGetArea([(SBIconListGridCellInfo *)selfCopy gridSize]))
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

- (void)enumerateEmptyGridCellIndexesUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1BEE32EE4(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (int64_t)countOfIconsOfSize:(SBHIconGridSize)size
{
  v3 = *&size.columns;
  selfCopy = self;
  v5 = sub_1BEE2CE5C(v3);

  return v5;
}

- (id)gridCellInfoByAddingEmptyColumns:(int64_t)columns
{
  selfCopy = self;
  v5 = sub_1BEE2D054(columns);

  return v5;
}

- (id)gridCellInfoByAddingEmptyRows:(int64_t)rows
{
  swift_getObjectType();
  selfCopy = self;
  result = [(SBIconListGridCellInfo *)selfCopy gridSize];
  if (rows < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (rows >> 16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = (result >> 16) + rows;
  if ((v7 & 0x10000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  initWithGridSize_ = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGridSize_];
  sub_1BEB3ACC8(selfCopy);

  return initWithGridSize_;
}

- (void)setLayoutFromGridCellInfo:(id)info fromGridRange:(SBHIconGridRange)range toGridCellIndex:(int64_t)index
{
  size = range.size;
  cellIndex = range.cellIndex;
  infoCopy = info;
  selfCopy = self;
  v10 = sub_1BEE28B80(cellIndex, size);
  sub_1BEE28E00(v10, index, size);
}

- (void)setLayoutFromGridCellInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_1BEE2D524(infoCopy);
}

- (void)markIconIndexAsOutOfBounds:(int64_t)bounds
{
  swift_beginAccess();
  selfCopy = self;
  sub_1BEDF66CC(&v6, bounds);
  swift_endAccess();
}

- (id)contiguousRegionForGridCellIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1BEE2D734(index);

  return v5;
}

- (id)contiguousRegionsForGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  sub_1BEE2DCEC(cellIndex, size);

  sub_1BEB20D28(0, &unk_1EBDC79D0);
  sub_1BEE332CC();
  v6 = sub_1BEE4724C();

  return v6;
}

- (NSSet)contiguousRegions
{
  selfCopy = self;
  v3 = [(SBIconListGridCellInfo *)selfCopy contiguousRegionsForGridRange:0, [(SBIconListGridCellInfo *)selfCopy gridSize]];
  sub_1BEB20D28(0, &unk_1EBDC79D0);
  sub_1BEE332CC();
  sub_1BEE4726C();

  v4 = sub_1BEE4724C();

  return v4;
}

- (BOOL)hasMultipleContiguousRegionsInGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  LOBYTE(size) = sub_1BEE2E294(cellIndex, size);

  return size & 1;
}

- (BOOL)hasMultipleContiguousRegions
{
  selfCopy = self;
  v3 = [(SBIconListGridCellInfo *)selfCopy hasMultipleContiguousRegionsInGridRange:0, [(SBIconListGridCellInfo *)selfCopy gridSize]];

  return v3;
}

- (id)iconIndexesForContiguousRegion:(id)region
{
  v5 = sub_1BEE4695C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  regionCopy = region;
  selfCopy = self;
  sub_1BEE2E538(regionCopy, v8);

  v11 = sub_1BEE468FC();
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)subgridCellInfoForGridRange:(SBHIconGridRange)range
{
  size = range.size;
  cellIndex = range.cellIndex;
  selfCopy = self;
  v6 = sub_1BEE2E8C4(cellIndex, size);

  return v6;
}

- (SBIconListGridCellInfoChangeInfo)movementChangeInfoFromGridCellInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v6 = sub_1BEE2EBE0(infoCopy);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)layoutChangeDescriptionFromGridCellInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v6 = sub_1BEE2EF90(infoCopy);
  layoutDescription = [v6 layoutDescription];
  if (!layoutDescription)
  {
    sub_1BEE4708C();
    layoutDescription = sub_1BEE4705C();
  }

  return layoutDescription;
}

- (NSString)layoutDescription
{
  selfCopy = self;
  sub_1BEE2F2E0();

  v3 = sub_1BEE4705C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BEE4741C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SBIconListGridCellInfo.isEqual(_:)(v8);

  sub_1BEE2FA1C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SBIconListGridCellInfo.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  result = [(SBIconListGridCellInfo *)selfCopy descriptionWithMultilinePrefix:0];
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
  selfCopy = self;
  result = [(SBIconListGridCellInfo *)selfCopy succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    build = [result build];

    if (build)
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
  initWithObject_ = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];

  return initWithObject_;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    v4 = sub_1BEE4708C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    sub_1BEE4708C();
  }

  selfCopy = self;
  v5 = sub_1BEE33024();

  return v5;
}

@end