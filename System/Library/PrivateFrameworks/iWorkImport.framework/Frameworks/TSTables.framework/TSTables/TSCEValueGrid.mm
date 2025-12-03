@interface TSCEValueGrid
- (BOOL)hasValueAtColumn:(unsigned int)column row:(unsigned int)row;
- (BOOL)hasValueAtCoord:(const TSCEGridCoord *)coord;
- (BOOL)isEqual:(id)equal;
- (TSCEGridCoord)topLeftCoord;
- (TSCEGridDimensions)dimensions;
- (TSCEValueGrid)init;
- (TSCEValueGrid)initWithColumnRange:(_NSRange)range rowRange:(_NSRange)rowRange;
- (TSCEValueGrid)initWithMatrix:(id)matrix;
- (TSCEValueGrid)initWithValueVector:(const void *)vector;
- (TSCEValueGrid)initWithValueVector:(const void *)vector dimensions:(const TSCEGridDimensions *)dimensions;
- (TSUIndexSet)populatedColumns;
- (TSUIndexSet)populatedRows;
- (id).cxx_construct;
- (id)allWarnings;
- (id)asMatrixWithAccessContext:(TSCEGridAccessContext *)context outError:(id *)error;
- (id)compressToPopulatedRowsAndColumns;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstValue;
- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format;
- (id)intersectionWithCellRect:(TSUCellRect)rect;
- (id)intersectionWithEvalContext:(id)context rangeContext:(unsigned __int8)rangeContext;
- (id)populatedSliceByIndex:(unint64_t)index byRow:(BOOL)row;
- (id)subGridAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height;
- (id)valueAt1DIndex:(unint64_t)index;
- (id)valueAtColumn:(unsigned int)column row:(unsigned int)row;
- (id)valueAtCoord:(const TSCEGridCoord *)coord;
- (unint64_t)area;
- (unsigned)numberOfColumns;
- (unsigned)numberOfPopulatedColumns;
- (unsigned)numberOfPopulatedRows;
- (unsigned)numberOfRows;
- (vector<TSCEValue)allValues;
- (void)clearPopulatedCache;
- (void)clearValueAtColumn:(unsigned int)column row:(unsigned int)row;
- (void)clearValueAtCoord:(const TSCEGridCoord *)coord;
- (void)compressToZeroBased;
- (void)dealloc;
- (void)deepResolveInPlace:(id)place;
- (void)enumerateValuesForColumn:(unsigned int)column usingBlock:(id)block;
- (void)enumerateValuesForRow:(unsigned int)row usingBlock:(id)block;
- (void)enumerateValuesUsingBlock:(id)block;
- (void)padUnsetWithValue:(id)value forDimensions:(const TSCEGridDimensions *)dimensions;
- (void)rearrangeColumnsWithMapping:(id)mapping;
- (void)rearrangeRowsWithMapping:(id)mapping;
- (void)setEmptyValueAtCoord:(const TSCEGridCoord *)coord;
- (void)setValue:(id)value atCoord:(const TSCEGridCoord *)coord;
- (void)swapColumnAtIndex:(unsigned int)index withColumnAtIndex:(unsigned int)atIndex;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)swapValueAtCoord:(const TSCEGridCoord *)coord withCoord:(const TSCEGridCoord *)withCoord;
@end

@implementation TSCEValueGrid

- (TSCEValueGrid)init
{
  v10.receiver = self;
  v10.super_class = TSCEValueGrid;
  v2 = [(TSCEValueGrid *)&v10 init];
  if (v2)
  {
    v3 = [TSCEValueGridIndexer alloc];
    v9 = 0x8000000080000000;
    v6 = objc_msgSend_initWithTopLeft_dimensions_(v3, v4, &v9, 0, v5);
    indexer = v2->_indexer;
    v2->_indexer = v6;
  }

  return v2;
}

- (TSCEValueGrid)initWithMatrix:(id)matrix
{
  matrixCopy = matrix;
  v37.receiver = self;
  v37.super_class = TSCEValueGrid;
  v5 = [(TSCEValueGrid *)&v37 init];
  if (v5)
  {
    v6 = [TSCEValueGridIndexer alloc];
    v34[0] = 0;
    v11 = objc_msgSend_dimensions(matrixCopy, v7, v8, v9, v10);
    v14 = objc_msgSend_initWithTopLeft_dimensions_(v6, v12, v34, v11, v13);
    indexer = v5->_indexer;
    v5->_indexer = v14;

    v20 = objc_msgSend_dimensions(matrixCopy, v16, v17, v18, v19);
    v36 = 0;
    sub_22130B75C(&v5->_valueForIndex.__begin_, (HIDWORD(v20) * v20), &v36);

    v24 = v5->_indexer;
    if (v24)
    {
      v24 = v24->_dimensions;
    }

    if (HIDWORD(v24) * v24)
    {
      v35 = 0;
      do
      {
        v34[0] = objc_msgSend_valueAtCoord_(matrixCopy, v21, &v35, v22, v23);
        v34[1] = v25;
        v28 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v25, v34, v26, v27);
        objc_msgSend_setValue_atCoord_(v5, v29, v28, &v35, v30);
        v31 = v5->_indexer;
        if (v31)
        {
          v31 = *(*&v31 + 16);
        }

        v33 = v31;
        v35 = TSCEGridDimensions::nextCoordRowMajorOrder(&v33, &v35);
      }

      while (v35.column != 0x7FFFFFFF && v35.row != 0x7FFFFFFF);
    }
  }

  return v5;
}

- (TSCEValueGrid)initWithColumnRange:(_NSRange)range rowRange:(_NSRange)rowRange
{
  length = rowRange.length;
  location = rowRange.location;
  v6 = range.length;
  v7 = range.location;
  v31.receiver = self;
  v31.super_class = TSCEValueGrid;
  v11 = [(TSCEValueGrid *)&v31 init];
  if (v11)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValueGrid initWithColumnRange:rowRange:]", v9, v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 164, 0, "Can't set an extent with invalid ranges");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v30[0] = v7;
    v30[1] = location;
    v23 = [TSCEValueGridIndexer alloc];
    v26 = objc_msgSend_initWithTopLeft_dimensions_(v23, v24, v30, v6 | (length << 32), v25);
    indexer = v11->_indexer;
    v11->_indexer = v26;

    v29 = 0;
    sub_22130B75C(&v11->_valueForIndex.__begin_, length * v6, &v29);
  }

  return v11;
}

- (TSCEValueGrid)initWithValueVector:(const void *)vector
{
  v5[0] = (*(vector + 1) - *vector) >> 3;
  v5[1] = 1;
  return objc_msgSend_initWithValueVector_dimensions_(self, a2, vector, v5, v3);
}

- (TSCEValueGrid)initWithValueVector:(const void *)vector dimensions:(const TSCEGridDimensions *)dimensions
{
  v7 = objc_msgSend_init(self, a2, vector, dimensions, v4);
  v8 = v7;
  if (v7)
  {
    if (dimensions->height * dimensions->width < ((*(vector + 1) - *vector) >> 3))
    {
      TSUSetCrashReporterInfo();
      v23 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCEValueGrid initWithValueVector:dimensions:]", v25, v26, "[TSCEValueGrid initWithValueVector:dimensions:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", 181);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v29, v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v32, v27, v31, 181, 1, "Too many values for the provided dimensions!");

      TSUCrashBreakpoint();
      abort();
    }

    v9 = *(v7 + 48);
    if (v9)
    {
      *(v9 + 8) = 0;
      v10 = *(v7 + 48);
      if (v10)
      {
        v10[2] = *dimensions;
      }
    }

    v11 = dimensions->height * dimensions->width;
    v34 = 0;
    sub_22130B75C((v7 + 56), v11, &v34);

    v16 = *vector;
    v15 = *(vector + 1);
    height = dimensions->height;
    if (height * dimensions->width == (v15 - *vector) >> 3)
    {
      v33.column = dimensions->width - 1;
      v33.row = height - 1;
      sub_2216AEB78(v8, &v33, v12, v13, v14);
      v18 = v8;
      sub_2216AF054(v18, vector, dimensions);
    }

    else
    {
      v33 = 0;
      while (v16 != v15)
      {
        v20 = *v16;
        objc_msgSend_setValue_atCoord_(v8, v21, v20, &v33, v22);
        v33 = TSCEGridDimensions::nextCoordRowMajorOrder(dimensions, &v33);

        ++v16;
      }
    }
  }

  return v8;
}

- (void)clearPopulatedCache
{
  populatedColumns = self->_populatedColumns;
  if (populatedColumns)
  {
    TSUIndexSet::~TSUIndexSet(populatedColumns);
    MEMORY[0x223DA1450]();
  }

  self->_populatedColumns = 0;
  populatedRows = self->_populatedRows;
  if (populatedRows)
  {
    TSUIndexSet::~TSUIndexSet(populatedRows);
    MEMORY[0x223DA1450]();
  }

  self->_populatedRows = 0;
}

- (void)dealloc
{
  objc_msgSend_clearPopulatedCache(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCEValueGrid;
  [(TSCEValueGrid *)&v6 dealloc];
}

- (unsigned)numberOfPopulatedColumns
{
  objc_msgSend_populatedColumns(self, a2, v2, v3, v4);
  v5 = TSUIndexSet::count(&v7);
  TSUIndexSet::~TSUIndexSet(&v7);
  return v5;
}

- (unsigned)numberOfPopulatedRows
{
  objc_msgSend_populatedRows(self, a2, v2, v3, v4);
  v5 = TSUIndexSet::count(&v7);
  TSUIndexSet::~TSUIndexSet(&v7);
  return v5;
}

- (TSUIndexSet)populatedColumns
{
  if (!self->_populatedColumns)
  {
    operator new();
  }

  *retstr |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  retstr->_singleRange = vnegq_f64(v3);
  retstr->_multipleRanges = 0;

  return TSUIndexSet::operator=();
}

- (TSUIndexSet)populatedRows
{
  if (!self->_populatedRows)
  {
    operator new();
  }

  *retstr |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  retstr->_singleRange = vnegq_f64(v3);
  retstr->_multipleRanges = 0;

  return TSUIndexSet::operator=();
}

- (BOOL)hasValueAtColumn:(unsigned int)column row:(unsigned int)row
{
  v6[0] = column;
  v6[1] = row;
  return objc_msgSend_hasValueAtCoord_(self, a2, v6, *&row, v4);
}

- (void)clearValueAtColumn:(unsigned int)column row:(unsigned int)row
{
  v5[0] = column;
  v5[1] = row;
  objc_msgSend_clearValueAtCoord_(self, a2, v5, *&row, v4);
}

- (BOOL)hasValueAtCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  if (column == 0x7FFFFFFF)
  {
    row = coord->row;
    p_coords = &self->_coords;
    column = 0;
    v6 = 999999;
    v7 = row;
    return sub_2215C3704(p_coords, column, row, v6, v7, 0) != 0;
  }

  v8 = coord->row;
  p_coords = &self->_coords;
  if (v8 == 0x7FFFFFFF)
  {
    LODWORD(row) = 0;
    v6 = column;
    v7 = 999999;
    return sub_2215C3704(p_coords, column, row, v6, v7, 0) != 0;
  }

  return sub_2215C3528(p_coords, column, v8);
}

- (void)clearValueAtCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  row = coord->row;
  v9 = column == 0x7FFFFFFF || row == 0x7FFFFFFF;
  if (!v9 || (v10 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], column, "[TSCEValueGrid clearValueAtCoord:]", v3, v4), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v13, v14), v15 = objc_claimAutoreleasedReturnValue(), sub_2211786FC(coord, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v11, v15, 286, 0, "Can't clear value with a spanning coordinate: %@", v20), v20, v15, v11, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25), column = coord->column, column != 0x7FFFFFFF) && (row = coord->row, row != 0x7FFFFFFF))
  {
    sub_2215C3280(&self->_coords, column, row);
    indexer = self->_indexer;
    if (indexer)
    {
      v27 = vsub_s32(*coord, indexer->_topLeft);
      indexer = (v27.i32[0] + v27.i32[1] * indexer->_dimensions.width);
    }

    begin = self->_valueForIndex.__begin_;
    v29 = begin[indexer];
    begin[indexer] = 0;

    objc_msgSend_clearPopulatedCache(self, v30, v31, v32, v33);
  }
}

- (id)valueAtColumn:(unsigned int)column row:(unsigned int)row
{
  v7[0] = column;
  v7[1] = row;
  v5 = objc_msgSend_valueAtCoord_(self, a2, v7, *&row, v4);

  return v5;
}

- (id)valueAtCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  row = coord->row;
  if (column == 0x7FFFFFFF || row == 0x7FFFFFFF)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], column, "[TSCEValueGrid valueAtCoord:]", v3, v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v13, v14);
    v20 = sub_2211786FC(coord, v16, v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v11, v15, 303, 0, "Can't read value with a spanning coordinate: %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    LODWORD(column) = coord->column;
    row = coord->row;
  }

  if (sub_2215C3528(&self->_coords._tiles.__begin_, column, row))
  {
    sub_22170B04C(self, coord, &v33, v28, v29, v30);
    v31 = v33;
  }

  else
  {
    v31 = objc_msgSend_nilValue(TSCENilValue, v26, v27, v28, v29);
  }

  return v31;
}

- (id)valueAt1DIndex:(unint64_t)index
{
  v7 = objc_msgSend_area(self, a2, index, v3, v4);
  if (!v7)
  {
    v29 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValueGrid valueAt1DIndex:]", v9, v10);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v18, v22, 330, 0, "Can't use valueAt1DIndex: with no dimensions set");
    goto LABEL_6;
  }

  v11 = v7;
  if (v7 <= index)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValueGrid valueAt1DIndex:]", v9, v10);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 320, 0, "Index %lu exceeds area: %lu", index, v11);
LABEL_6:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v12 = 0;
    goto LABEL_7;
  }

  v12 = self->_valueForIndex.__begin_[index];
  if (!v12)
  {
    v12 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v13, v14, v15, v16);
  }

LABEL_7:

  return v12;
}

- (id)firstValue
{
  if (sub_2215C25E8(&self->_coords) || (v9 = 0, (sub_2215C3590(&self->_coords, &v9 + 1, &v9) & 1) == 0))
  {
    v7 = objc_msgSend_nilValue(TSCENilValue, v3, v4, v5, v6);
  }

  else
  {
    v7 = objc_msgSend_valueAtColumn_row_(self, v3, HIDWORD(v9), v9, v6);
  }

  return v7;
}

- (id)intersectionWithEvalContext:(id)context rangeContext:(unsigned __int8)rangeContext
{
  v6 = objc_msgSend_containingCell(context, a2, context, rangeContext, v4);
  v7 = *v6;
  v8 = *(v6 + 2);
  v13 = objc_msgSend_dimensions(self, v9, v10, v11, v12);
  if (v13 == 1 && v7 < HIDWORD(v13))
  {
    objc_msgSend_valueAtColumn_row_(self, v14, 0, v7, v17);
    v18 = LABEL_4:;
    goto LABEL_9;
  }

  if (HIDWORD(v13) == 1 && v13 > v8)
  {
    objc_msgSend_valueAtColumn_row_(self, v14, v8, 0, v17);
    goto LABEL_4;
  }

  v18 = objc_msgSend_firstValue(self, v14, v15, v16, v17);
LABEL_9:

  return v18;
}

- (vector<TSCEValue)allValues
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_2216AFD08;
  v13 = sub_2216AFD2C;
  v14 = &unk_22188E88F;
  memset(v15, 0, sizeof(v15));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2216AFD58;
  v8[3] = &unk_2784688F8;
  v8[4] = &v9;
  objc_msgSend_enumerateValuesUsingBlock_(self, a3, v8, v3, v4);
  v6 = v10;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  sub_2213F5020(retstr, v6[6], v6[7], (v6[7] - v6[6]) >> 3);
  _Block_object_dispose(&v9, 8);
  v16 = v15;
  sub_22107C2C0(&v16);
  return result;
}

- (id)allWarnings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2216AFEC0;
  v11 = sub_2216AFED0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2216AFED8;
  v6[3] = &unk_2784688F8;
  v6[4] = &v7;
  objc_msgSend_enumerateValuesUsingBlock_(self, a2, v6, v2, v3);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setValue:(id)value atCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  row = coord->row;
  p_row = &coord->row;
  v8 = row;
  if (column == 0x7FFFFFFF || v8 == 0x7FFFFFFF)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid setValue:atCoord:]", p_row, v4);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v14, v15);
    v21 = sub_2211786FC(coord, v17, v18, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v12, v16, 547, 0, "Can't set a value at a spanning coordinate: %@", v21);

    v27 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v27, v23, v24, v25, v26);
  }

  else
  {
    sub_22170B094(self, coord, value, p_row);
  }
}

- (void)padUnsetWithValue:(id)value forDimensions:(const TSCEGridDimensions *)dimensions
{
  valueCopy = value;
  height = dimensions->height;
  if (height * dimensions->width)
  {
    v8 = dimensions->width - 1;
    v9 = height - 1;
    v20 = v8 | (v9 << 32);
    if ((sub_22170AC80(self->_indexer, &v20) & 1) == 0)
    {
      sub_2216AEB78(self, &v20, v11, v12, v13);
      v8 = dimensions->width - 1;
      v9 = dimensions->height - 1;
      v20 = v8 | (v9 << 32);
    }

    v14 = 0;
    do
    {
      v15 = v8;
      do
      {
        v18 = v15;
        v19 = v14;
        if (objc_msgSend_hasValueAtCoord_(self, v10, &v18, v12, v13))
        {
          break;
        }

        objc_msgSend_setValue_atCoord_(self, v10, valueCopy, &v18, v13);
        --v15;
      }

      while (v15 != -1);
      ++v14;
    }

    while (v14 <= v9);
    v16 = 0;
    do
    {
      v17 = v9;
      do
      {
        v18 = v16;
        v19 = v17;
        if (objc_msgSend_hasValueAtCoord_(self, v10, &v18, v12, v13))
        {
          break;
        }

        objc_msgSend_setValue_atCoord_(self, v10, valueCopy, &v18, v13);
        --v17;
      }

      while (v17 != -1);
      ++v16;
    }

    while (v16 <= v8);
  }
}

- (void)setEmptyValueAtCoord:(const TSCEGridCoord *)coord
{
  if (coord->column == 0x7FFFFFFF || (p_row = &coord->row, coord->row == 0x7FFFFFFF))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid setEmptyValueAtCoord:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v10, v11);
    v17 = sub_2211786FC(coord, v13, v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v18, v8, v12, 616, 0, "Can't set a value at a spanning coordinate: %@", v17);

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v19, v20, v21, v22);
  }

  else
  {
    sub_22170B17C(self, coord, p_row, v3, v4);
  }
}

- (BOOL)isEqual:(id)equal
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid isEqual:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 626, 0, "-isEqual: not implemented for TSCEValueGrid");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_numberOfColumns(self, a2, zone, v3, v4) || objc_msgSend_numberOfRows(self, v6, v7, v8, v9))
  {
    v10 = objc_msgSend_topLeftCoord(self, v6, v7, v8, v9);
    v11 = v10;
    v12 = HIDWORD(v10);
    v13 = [TSCEValueGrid alloc];
    v18 = objc_msgSend_numberOfColumns(self, v14, v15, v16, v17);
    v23 = objc_msgSend_numberOfRows(self, v19, v20, v21, v22);
    v25 = objc_msgSend_initWithColumnRange_rowRange_(v13, v24, v11, v18, v12, v23);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2216B0514;
    v31[3] = &unk_278468920;
    v26 = v25;
    v32 = v26;
    objc_msgSend_enumerateValuesUsingBlock_(self, v27, v31, v28, v29);

    return v26;
  }

  else
  {

    return objc_opt_new();
  }
}

- (id)subGridAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height
{
  v85.width = width;
  v85.height = height;
  v9 = [TSCEValueGrid alloc];
  v11 = objc_msgSend_initWithColumnRange_rowRange_(v9, v10, 0, width, 0, height);
  v81 = v11;
  coordCopy = coord;
  LODWORD(coord) = coord->row;
  v16 = objc_msgSend_topLeftCoord(self, v12, v13, v14, v15) >> 32;
  v25 = 0x277D81000uLL;
  if (coord + height > ((objc_msgSend_dimensions(self, v17, v18, v19, v20) >> 32) + v16))
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSCEValueGrid subGridAtGridCoord:width:height:]", v23, v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 652, 0, "can't access beyond the end of a vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  column = coordCopy->column;
  v38 = objc_msgSend_topLeftCoord(self, v21, v22, v23, v24);
  if (column + width > objc_msgSend_dimensions(self, v39, v40, v41, v42) + v38)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSCEValueGrid subGridAtGridCoord:width:height:]", v44, v45);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v49, v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 653, 0, "can't access beyond the end of a vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  v57 = width + coordCopy->column - 1;
  v58 = height + coordCopy->row - 1;
  v59 = *coordCopy;
  v83 = 0;
  v84 = v59;
  do
  {
    v60 = objc_msgSend_valueAtCoord_(self, v43, &v84, v44, v45);
    objc_msgSend_setValue_atCoord_(v11, v61, v60, &v83, v62);
    v63 = TSCEGridDimensions::nextCoordRowMajorOrder(&v85, &v83);
    v83 = v63;
    if (v63 != 0x7FFFFFFF && (v63 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000)
    {
      if (v84.column >= v57)
      {
        if (v84.row >= v58)
        {
          v67 = *(v25 + 336);
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSCEValueGrid subGridAtGridCoord:width:height:]", v65, v66);
          v69 = v25;
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v71, v72);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v68, v73, 675, 0, "Exceeded rowLimit: %d", v58);

          v25 = v69;
          v75 = *(v69 + 336);
          v11 = v81;
          objc_msgSend_logBacktraceThrottled(v75, v76, v77, v78, v79);
        }

        else
        {
          v84.column = coordCopy->column;
          ++v84.row;
        }
      }

      else
      {
        ++v84.column;
      }
    }
  }

  while (v83.column != 0x7FFFFFFF && v83.row != 0x7FFFFFFF);

  return v11;
}

- (id)populatedSliceByIndex:(unint64_t)index byRow:(BOOL)row
{
  if (row)
  {
    objc_msgSend_populatedRows(self, a2, index, row, v4);
    TSUIndexSet::nthIndex(&v32);
    TSUIndexSet::~TSUIndexSet(&v32);
    objc_msgSend_populatedColumns(self, v6, v7, v8, v9);
    v10 = TSUIndexSet::count(&v32);
    TSUIndexSet::~TSUIndexSet(&v32);
    v11 = [TSCEValueGrid alloc];
    v13 = objc_msgSend_initWithColumnRange_rowRange_(v11, v12, 0, v10, 0, 1);
    *&v32 = 0;
    v32._singleRange._begin = &v32;
    v32._singleRange._end = 0x3812000000;
    v32._multipleRanges = sub_2216B0BEC;
    v33 = nullsub_87;
    v34 = &unk_22188E88F;
    v35 = 0;
    objc_msgSend_populatedColumns(self, v14, v15, v16, v17);
  }

  else
  {
    objc_msgSend_populatedColumns(self, a2, index, row, v4);
    TSUIndexSet::nthIndex(&v32);
    TSUIndexSet::~TSUIndexSet(&v32);
    objc_msgSend_populatedRows(self, v19, v20, v21, v22);
    v23 = TSUIndexSet::count(&v32);
    TSUIndexSet::~TSUIndexSet(&v32);
    v24 = [TSCEValueGrid alloc];
    v13 = objc_msgSend_initWithColumnRange_rowRange_(v24, v25, 0, 1, 0, v23);
    *&v32 = 0;
    v32._singleRange._begin = &v32;
    v32._singleRange._end = 0x3812000000;
    v32._multipleRanges = sub_2216B0BEC;
    v33 = nullsub_87;
    v34 = &unk_22188E88F;
    v35 = 0;
    objc_msgSend_populatedRows(self, v26, v27, v28, v29);
  }

  v18 = v13;
  TSUIndexSet::enumerateIndexesUsingBlock();
  TSUIndexSet::~TSUIndexSet(&v31);

  _Block_object_dispose(&v32, 8);

  return v18;
}

- (id)intersectionWithCellRect:(TSUCellRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  v8 = objc_msgSend_topLeftCoord(selfCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_topLeftCoord(selfCopy, v9, v10, v11, v12);
  v18 = objc_msgSend_dimensions(selfCopy, v14, v15, v16, v17);
  v23 = objc_msgSend_dimensions(selfCopy, v19, v20, v21, v22);
  *(&v24 + 1) = v8;
  *&v24 = v13;
  v44.origin = ((v24 >> 32) & 0xFFFFFFFFFFFFLL);
  v44.size = (v23 & 0xFFFFFFFF00000000 | v18);
  if (TSUCellRect::intersects(&rectCopy, &v44))
  {
    if ((TSUCellRect::contains(&rectCopy, &v44) & 1) == 0)
    {
      v43 = objc_msgSend_topLeftCoord(selfCopy, v25, v26, v27, v28);
      v29 = TSUCellRect::firstColumn(&rectCopy);
      if (v29 > TSUCellRect::firstColumn(&v44))
      {
        v30 = TSUCellRect::firstColumn(&rectCopy);
        v18 = v18 - v30 + TSUCellRect::firstColumn(&v44);
        LODWORD(v43) = TSUCellRect::firstColumn(&rectCopy);
      }

      v31 = TSUCellRect::lastColumn(&v44);
      if (v31 > TSUCellRect::lastColumn(&rectCopy))
      {
        v32 = TSUCellRect::lastColumn(&v44);
        v18 = v18 - v32 + TSUCellRect::lastColumn(&rectCopy);
      }

      v33 = TSUCellRect::firstRow(&rectCopy);
      v34 = HIDWORD(v23);
      if (v33 > TSUCellRect::firstRow(&v44))
      {
        v35 = TSUCellRect::firstRow(&rectCopy);
        v34 = v34 - v35 + TSUCellRect::firstRow(&v44);
        HIDWORD(v43) = TSUCellRect::firstRow(&rectCopy);
      }

      v36 = TSUCellRect::lastRow(&v44);
      if (v36 > TSUCellRect::lastRow(&rectCopy))
      {
        v38 = TSUCellRect::lastRow(&v44);
        v34 = v34 - v38 + TSUCellRect::lastRow(&rectCopy);
      }

      v39 = objc_msgSend_subGridAtGridCoord_width_height_(selfCopy, v37, &v43, v18, v34);

      selfCopy = v39;
    }

    v40 = selfCopy;
    selfCopy = v40;
  }

  else
  {
    v40 = objc_opt_new();
  }

  v41 = v40;

  return v41;
}

- (id)compressToPopulatedRowsAndColumns
{
  objc_msgSend_populatedRows(self, a2, v2, v3, v4);
  objc_msgSend_populatedColumns(self, v6, v7, v8, v9);
  v14 = objc_msgSend_numberOfRows(self, v10, v11, v12, v13);
  if (TSUIndexSet::count(&v51) == v14 && (v19 = objc_msgSend_numberOfColumns(self, v15, v16, v17, v18), TSUIndexSet::count(&v50) == v19))
  {
    objc_msgSend_compressToZeroBased(self, v20, v21, v22, v23);
    selfCopy = self;
  }

  else
  {
    v25 = [TSCEValueGrid alloc];
    v26 = TSUIndexSet::count(&v50);
    v27 = TSUIndexSet::count(&v51);
    v29 = objc_msgSend_initWithColumnRange_rowRange_(v25, v28, 0, v26, 0, v27);
    selfCopy = v29;
    indexer = self->_indexer;
    if (indexer)
    {
      indexer = indexer->_topLeft;
    }

    v49 = indexer;
    v47 = 0;
    v48 = 0;
    v46 = objc_msgSend_dimensions(v29, v30, v31, v32, v33);
    v35 = 0;
    do
    {
      v45 = v35;
      sub_2211786BC(&v45, &v49);
      if (TSUIndexSet::containsIndex(&v51) && TSUIndexSet::containsIndex(&v50))
      {
        v39 = objc_msgSend_valueAtCoord_(self, v36, &v45, v37, v38);
        objc_msgSend_setValue_atCoord_(selfCopy, v40, v39, &v48, v41);
        v48 = TSCEGridDimensions::nextCoordRowMajorOrder(&v46, &v48);
      }

      v42 = self->_indexer;
      if (v42)
      {
        v42 = v42->_dimensions;
      }

      v44 = v42;
      v35 = TSCEGridDimensions::nextCoordRowMajorOrder(&v44, &v47);
      v47 = v35;
    }

    while (v35 != 0x7FFFFFFF && (v35 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v48.column != 0x7FFFFFFF && v48.row != 0x7FFFFFFF);
  }

  TSUIndexSet::~TSUIndexSet(&v50);
  TSUIndexSet::~TSUIndexSet(&v51);

  return selfCopy;
}

- (void)enumerateValuesUsingBlock:(id)block
{
  blockCopy = block;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  sub_2215C2BFC(v10, &self->_coords);
  do
  {
    if (!sub_2215C2C08(v10, &v13, &v12))
    {
      break;
    }

    v9[0] = v13;
    v9[1] = v12;
    v8 = objc_msgSend_valueAtCoord_(self, v5, v9, v6, v7);
    blockCopy[2](blockCopy, v9, v8, &v11);
  }

  while ((v11 & 1) == 0);
}

- (void)enumerateValuesForRow:(unsigned int)row usingBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  indexer = self->_indexer;
  if (indexer)
  {
    topLeft = indexer->_topLeft;
    if (topLeft.row <= row && indexer->_dimensions.height + topLeft.row > row)
    {
      do
      {
        v12 = self->_indexer;
        if (v12)
        {
          LODWORD(v12) = v12->_dimensions.width + v12->_topLeft.column;
        }

        if (topLeft.column >= v12)
        {
          break;
        }

        v14[0] = topLeft.column;
        v14[1] = row;
        if (objc_msgSend_hasValueAtCoord_(self, v6, v14, v7, v8))
        {
          v13 = objc_msgSend_valueAtCoord_(self, v6, v14, v7, v8);
          blockCopy[2](blockCopy, v14, v13, &v15);
        }

        ++topLeft.column;
      }

      while ((v15 & 1) == 0);
    }
  }
}

- (void)enumerateValuesForColumn:(unsigned int)column usingBlock:(id)block
{
  blockCopy = block;
  indexer = self->_indexer;
  if (indexer)
  {
    topLeft = indexer->_topLeft;
    if (topLeft.column <= column && indexer->_dimensions.width + topLeft.column > column)
    {
      v16 = 0;
      v12 = HIDWORD(*&topLeft);
      do
      {
        v13 = self->_indexer;
        if (v13)
        {
          LODWORD(v13) = v13->_dimensions.height + v13->_topLeft.row;
        }

        if (v12 >= v13)
        {
          break;
        }

        v15[0] = column;
        v15[1] = v12;
        if (objc_msgSend_hasValueAtCoord_(self, v6, v15, v7, v8))
        {
          v14 = objc_msgSend_valueAtCoord_(self, v6, v15, v7, v8);
          blockCopy[2](blockCopy, v15, v14, &v16);
        }

        LODWORD(v12) = v12 + 1;
      }

      while ((v16 & 1) == 0);
    }
  }
}

- (void)swapValueAtCoord:(const TSCEGridCoord *)coord withCoord:(const TSCEGridCoord *)withCoord
{
  if (*coord == *withCoord)
  {
    return;
  }

  hasValueAtCoord = objc_msgSend_hasValueAtCoord_(self, a2, coord, withCoord, v4);
  v12 = objc_msgSend_hasValueAtCoord_(self, v9, withCoord, v10, v11);
  v16 = v12;
  if (v12)
  {
    v23 = objc_msgSend_valueAtCoord_(self, v13, withCoord, v14, v15);
    if ((hasValueAtCoord & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v20 = objc_msgSend_valueAtCoord_(self, v13, coord, v14, v15);
    objc_msgSend_setValue_atCoord_(self, v21, v20, withCoord, v22);

    if (v16)
    {
      goto LABEL_5;
    }

LABEL_8:
    objc_msgSend_clearValueAtCoord_(self, v17, coord, v18, v19);
    goto LABEL_9;
  }

  v23 = 0;
  if (hasValueAtCoord)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_msgSend_clearValueAtCoord_(self, v13, withCoord, v14, v15);
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_setValue_atCoord_(self, v17, v23, coord, v19);
LABEL_9:
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  if (index != atIndex)
  {
    v13 = v5;
    v14 = v6;
    v12[1] = index;
    v11[1] = atIndex;
    indexer = self->_indexer;
    if (indexer)
    {
      v9 = indexer->_dimensions.width - 1;
    }

    else
    {
      v9 = -1;
    }

    v10 = 0;
    do
    {
      v12[0] = v10;
      v11[0] = v10;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v12, v11, v4);
      ++v10;
    }

    while (v10 <= v9);
  }
}

- (void)swapColumnAtIndex:(unsigned int)index withColumnAtIndex:(unsigned int)atIndex
{
  if (index != atIndex)
  {
    v13 = v5;
    v14 = v6;
    v12[0] = index;
    v11[0] = atIndex;
    indexer = self->_indexer;
    if (indexer)
    {
      v9 = indexer->_dimensions.height - 1;
    }

    else
    {
      v9 = -1;
    }

    v10 = 0;
    do
    {
      v12[1] = v10;
      v11[1] = v10;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v12, v11, v4);
      ++v10;
    }

    while (v10 <= v9);
  }
}

- (void)rearrangeRowsWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v9 = objc_msgSend_mapping(mappingCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_mappingSize(mappingCopy, v10, v11, v12, v13);
  __p = 0;
  v27 = 0;
  v28 = 0;
  sub_2214AEE5C(&__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  started = objc_msgSend_startIndex(mappingCopy, v15, v16, v17, v18);
  if (v14)
  {
    v22 = started;
    for (i = 0; i != v14; ++i)
    {
      while (1)
      {
        v24 = __p;
        v25 = *(__p + i);
        if (i == v25)
        {
          break;
        }

        *(__p + i) = *(__p + v25);
        v24[v25] = v25;
        objc_msgSend_swapRowAtIndex_withRowAtIndex_(self, v20, (v22 + i), (v25 + v22), v21);
      }
    }

    goto LABEL_8;
  }

  v24 = __p;
  if (__p)
  {
LABEL_8:
    v27 = v24;
    operator delete(v24);
  }
}

- (void)rearrangeColumnsWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v9 = objc_msgSend_mapping(mappingCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_mappingSize(mappingCopy, v10, v11, v12, v13);
  __p = 0;
  v27 = 0;
  v28 = 0;
  sub_2214AEE5C(&__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  started = objc_msgSend_startIndex(mappingCopy, v15, v16, v17, v18);
  if (v14)
  {
    v22 = started;
    for (i = 0; i != v14; ++i)
    {
      while (1)
      {
        v24 = __p;
        v25 = *(__p + i);
        if (i == v25)
        {
          break;
        }

        *(__p + i) = *(__p + v25);
        v24[v25] = v25;
        objc_msgSend_swapColumnAtIndex_withColumnAtIndex_(self, v20, (v22 + i), (v25 + v22), v21);
      }
    }

    goto LABEL_8;
  }

  v24 = __p;
  if (__p)
  {
LABEL_8:
    v27 = v24;
    operator delete(v24);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format
{
  v7 = objc_opt_new();
  var6 = grid->var6;
  grid->var6 = 1;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3812000000;
  v24[3] = sub_2216B0BEC;
  v24[4] = nullsub_87;
  v24[5] = &unk_22188E88F;
  v24[6] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_2216AFEC0;
  v22[4] = sub_2216AFED0;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2216B1B7C;
  v16[3] = &unk_278468998;
  v18 = v22;
  gridCopy = grid;
  formatCopy = format;
  v9 = v7;
  v17 = v9;
  v19 = v24;
  objc_msgSend_enumerateValuesUsingBlock_(self, v10, v16, v11, v12);
  grid->var6 = var6;
  v13 = v17;
  v14 = v9;

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  return v14;
}

- (void)deepResolveInPlace:(id)place
{
  placeCopy = place;
  v41 = 0;
  v42 = objc_msgSend_dimensions(self, v5, v6, v7, v8);
  do
  {
    v12 = objc_msgSend_valueAtCoord_(self, v9, &v41, v10, v11);
    v17 = objc_msgSend_nativeType(v12, v13, v14, v15, v16);
    if (v17 <= 0x11)
    {
      if (((1 << v17) & 0x12042) != 0)
      {
        v21 = objc_msgSend_deepResolveInPlace_(v12, v18, placeCopy, v19, v20);

        v12 = v21;
        objc_msgSend_setValue_atCoord_(self, v22, v21, &v41, v23);
      }

      else if (((1 << v17) & 0x24000) != 0)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEValueGrid(AbstractGrid) deepResolveInPlace:]", v19, v20);
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v27, v28);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1067, 0, "Does this happen - a grid of unresolved categoryRefs / pivot references - I don't think its possible");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
        v38 = objc_msgSend_deepResolveInPlace_(v12, v35, placeCopy, v36, v37);

        v12 = v38;
        objc_msgSend_setValue_atCoord_(self, v39, v38, &v41, v40);
      }
    }

    v41 = TSCEGridDimensions::nextCoordRowMajorOrder(&v42, &v41);
  }

  while (v41 != 0x7FFFFFFF && HIDWORD(v41) != 0x7FFFFFFF);
}

- (TSCEGridCoord)topLeftCoord
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_topLeft;
  }

  else
  {
    return 0;
  }
}

- (TSCEGridDimensions)dimensions
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_dimensions;
  }

  else
  {
    return 0;
  }
}

- (unsigned)numberOfColumns
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_dimensions.width;
  }

  else
  {
    return sub_2216B20DC();
  }
}

- (unsigned)numberOfRows
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_dimensions.height;
  }

  else
  {
    return sub_2216B20DC();
  }
}

- (unint64_t)area
{
  indexer = self->_indexer;
  if (indexer)
  {
    indexer = indexer->_dimensions;
  }

  return (HIDWORD(indexer) * indexer);
}

- (void)compressToZeroBased
{
  indexer = self->_indexer;
  if (indexer)
  {
    topLeft = indexer->_topLeft;
    v8 = topLeft.column == 0x7FFFFFFF || (*&topLeft & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000;
    if (!v8 && topLeft != 0)
    {
      v11 = objc_msgSend_topLeftCoord(self, a2, v2, v3, v4);
      sub_2215C2834(&self->_coords, v11, HIDWORD(v11));
      v16 = self->_indexer;
      if (v16)
      {
        v16->_topLeft = 0;
      }

      objc_msgSend_clearPopulatedCache(self, v12, v13, v14, v15);
    }
  }
}

- (id)asMatrixWithAccessContext:(TSCEGridAccessContext *)context outError:(id *)error
{
  v7 = [TSCEDecimalMatrix alloc];
  indexer = self->_indexer;
  if (indexer)
  {
    indexer = indexer->_dimensions;
  }

  v54[0] = indexer;
  v12 = objc_msgSend_initWithDimensions_(v7, v8, v54, v9, v10);
  v56 = 0;
  v16 = context->var0;
  if (v56.column == 0x7FFFFFFF || v56.row == 0x7FFFFFFF)
  {
LABEL_25:
    v48 = v12;
    goto LABEL_29;
  }

  var1 = context->var1;
  var3 = context->var3;
  while (1)
  {
    v20 = objc_msgSend_valueAtCoord_(self, v13, &v56, v14, v15);
    if (objc_msgSend_isError(v20, v21, v22, v23, v24))
    {
      v36 = objc_msgSend_asErrorValue(v20, v25, v26, v27, v28);
      *error = objc_msgSend_error(v36, v49, v50, v51, v52);
      goto LABEL_28;
    }

    if ((objc_msgSend_valueIsEmptyWithContext_(v20, v25, v16, v27, v28) & 1) == 0)
    {
      break;
    }

LABEL_18:
    v46 = self->_indexer;
    if (v46)
    {
      v46 = v46->_dimensions;
    }

    v54[0] = v46;
    v56 = TSCEGridDimensions::nextCoordRowMajorOrder(v54, &v56);

    if (v56.column == 0x7FFFFFFF || v56.row == 0x7FFFFFFF)
    {
      goto LABEL_25;
    }
  }

  v55 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v29, v16, var1, var3, &v55);
  v31 = v55;
  v36 = v31;
  if (!v31)
  {
LABEL_17:
    v54[0] = objc_msgSend_decimalRepresentation(v30, v32, v33, v34, v35);
    v54[1] = v44;
    objc_msgSend_setValue_atCoord_(v12, v44, v54, &v56, v45);

    goto LABEL_18;
  }

  v37 = objc_msgSend_errorType(v31, v32, v33, v34, v35);
  v42 = v37 == 8 || v37 == 11;
  if (!v42 && v37 != 169)
  {
    v43 = v36;
    *error = v36;
    goto LABEL_17;
  }

  *error = objc_msgSend_matrixMustBeNumbersError(TSCEError, v38, v39, v40, v41);

LABEL_28:
  v48 = 0;
LABEL_29:

  return v48;
}

@end