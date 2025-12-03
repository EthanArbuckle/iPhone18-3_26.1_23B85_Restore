@interface TSTLayoutDynamicResizeInfo
- (BOOL)hasHeightForRow:(unsigned __int16)row;
- (BOOL)hasWidthForColumn:(unsigned __int8)column;
- (CGSize)capturedTableSize;
- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)info;
- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)layout;
- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)layout columnRegion:(id)region;
- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)layout rowRegion:(id)region;
- (double)getColumnInitialWidth:(unsigned __int8)width;
- (double)getColumnWidth:(unsigned __int8)width;
- (double)getColumnWidthResize:(unsigned __int8)resize;
- (double)getRowHeight:(unsigned __int16)height;
- (double)getRowHeightResize:(unsigned __int16)resize;
- (double)getRowInitialHeight:(unsigned __int16)height;
- (id)columnWidths;
- (id)rowHeights;
- (void)dealloc;
- (void)enumerateColumnWidthsUsingBlock:(id)block;
- (void)enumerateRowHeightsUsingBlock:(id)block;
- (void)p_captureRowColumnInformation:(id)information columnRegion:(id)region rowRegion:(id)rowRegion;
@end

@implementation TSTLayoutDynamicResizeInfo

- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = TSTLayoutDynamicResizeInfo;
  v4 = [(TSTLayoutDynamicResizeInfo *)&v7 init];
  if (v4)
  {
    v4->mTableRowsBehavior = [layout tableRowsBehavior];
    v5 = [TSTCellRegion regionFromRange:TSTMasterLayoutGetRange(layout)];
    [(TSTLayoutDynamicResizeInfo *)v4 p_captureRowColumnInformation:layout columnRegion:v5 rowRegion:v5];
    v4->mValid = 1;
  }

  return v4;
}

- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)layout columnRegion:(id)region
{
  v8.receiver = self;
  v8.super_class = TSTLayoutDynamicResizeInfo;
  v6 = [(TSTLayoutDynamicResizeInfo *)&v8 init];
  if (v6)
  {
    v6->mTableRowsBehavior = [layout tableRowsBehavior];
    [(TSTLayoutDynamicResizeInfo *)v6 p_captureRowColumnInformation:layout columnRegion:region rowRegion:0];
    v6->mValid = 1;
  }

  return v6;
}

- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)layout rowRegion:(id)region
{
  v8.receiver = self;
  v8.super_class = TSTLayoutDynamicResizeInfo;
  v6 = [(TSTLayoutDynamicResizeInfo *)&v8 init];
  if (v6)
  {
    v6->mTableRowsBehavior = [layout tableRowsBehavior];
    [(TSTLayoutDynamicResizeInfo *)v6 p_captureRowColumnInformation:layout columnRegion:0 rowRegion:region];
    v6->mValid = 1;
  }

  return v6;
}

- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)info
{
  v15.receiver = self;
  v15.super_class = TSTLayoutDynamicResizeInfo;
  v4 = [(TSTLayoutDynamicResizeInfo *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->mValid = *(info + 8);
    v4->mTableRowsBehavior = *(info + 3);
    v4->mRowRegion = *(info + 2);
    v5->mStartRowIndex = *(info + 12);
    v6 = *(info + 13);
    v5->mNumberOfRows = v6;
    if (v6)
    {
      v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
      v5->mCapturedRowHeights = v7;
      memcpy(v7, *(info + 4), 8 * v5->mNumberOfRows);
      v8 = malloc_type_malloc(8 * v5->mNumberOfRows, 0x100004000313F17uLL);
      v5->mCurrentRowHeights = v8;
      memcpy(v8, *(info + 5), 8 * v5->mNumberOfRows);
      v9 = malloc_type_malloc(8 * v5->mNumberOfRows, 0x100004000313F17uLL);
      v5->mMinimumRowHeights = v9;
      memcpy(v9, *(info + 6), 8 * v5->mNumberOfRows);
    }

    else
    {
      v5->mCapturedRowHeights = 0;
      v5->mCurrentRowHeights = 0;
      v5->mMinimumRowHeights = 0;
    }

    v5->mCapturedRowHeightTotal = *(info + 7);
    v5->mColumnRegion = *(info + 8);
    v5->mStartColumnIndex = *(info + 72);
    v10 = *(info + 37);
    v5->mNumberOfColumns = v10;
    if (v10)
    {
      v11 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
      v5->mCapturedColumnWidths = v11;
      memcpy(v11, *(info + 10), 8 * v5->mNumberOfColumns);
      v12 = malloc_type_malloc(8 * v5->mNumberOfColumns, 0x100004000313F17uLL);
      v5->mCurrentColumnWidths = v12;
      memcpy(v12, *(info + 11), 8 * v5->mNumberOfColumns);
      v13 = malloc_type_malloc(8 * v5->mNumberOfColumns, 0x100004000313F17uLL);
      v5->mMinimumColumnWidths = v13;
      memcpy(v13, *(info + 12), 8 * v5->mNumberOfColumns);
    }

    else
    {
      v5->mCapturedColumnWidths = 0;
      v5->mCurrentColumnWidths = 0;
      v5->mMinimumColumnWidths = 0;
    }

    v5->mCapturedColumnWidthTotal = *(info + 13);
  }

  return v5;
}

- (void)dealloc
{
  mCapturedRowHeights = self->mCapturedRowHeights;
  if (mCapturedRowHeights)
  {
    free(mCapturedRowHeights);
    self->mCapturedRowHeights = 0;
  }

  mCurrentRowHeights = self->mCurrentRowHeights;
  if (mCurrentRowHeights)
  {
    free(mCurrentRowHeights);
    self->mCurrentRowHeights = 0;
  }

  mMinimumRowHeights = self->mMinimumRowHeights;
  if (mMinimumRowHeights)
  {
    free(mMinimumRowHeights);
    self->mMinimumRowHeights = 0;
  }

  self->mCapturedRowHeightTotal = 0.0;
  self->mNumberOfRows = 0;

  mCapturedColumnWidths = self->mCapturedColumnWidths;
  if (mCapturedColumnWidths)
  {
    free(mCapturedColumnWidths);
    self->mCapturedColumnWidths = 0;
  }

  mCurrentColumnWidths = self->mCurrentColumnWidths;
  if (mCurrentColumnWidths)
  {
    free(mCurrentColumnWidths);
    self->mCurrentColumnWidths = 0;
  }

  mMinimumColumnWidths = self->mMinimumColumnWidths;
  if (mMinimumColumnWidths)
  {
    free(mMinimumColumnWidths);
    self->mMinimumColumnWidths = 0;
  }

  self->mCapturedColumnWidthTotal = 0.0;
  self->mNumberOfColumns = 0;
  v9.receiver = self;
  v9.super_class = TSTLayoutDynamicResizeInfo;
  [(TSTLayoutDynamicResizeInfo *)&v9 dealloc];
}

- (void)p_captureRowColumnInformation:(id)information columnRegion:(id)region rowRegion:(id)rowRegion
{
  tableInfo = [information tableInfo];
  v10 = 1.0;
  if ([tableInfo partitioner])
  {
    v11 = 1.0;
    if ([objc_msgSend(tableInfo "partitioner")])
    {
      [objc_msgSend(tableInfo "partitioner")];
      v11 = v12;
      [objc_msgSend(tableInfo "partitioner")];
      v10 = v13;
    }
  }

  else
  {
    v11 = 1.0;
  }

  if (rowRegion)
  {
    self->mRowRegion = rowRegion;
    self->mStartRowIndex = [rowRegion boundingCellRange];
    self->mNumberOfRows = [rowRegion boundingCellRange] >> 48;
    self->mNumberOfResizableRows = [rowRegion numberOfIntersectingRows];
    v14 = malloc_type_malloc(8 * self->mNumberOfRows, 0x100004000313F17uLL);
    v15 = malloc_type_calloc(self->mNumberOfRows, 8uLL, 0x100004000313F17uLL);
    v16 = malloc_type_calloc(self->mNumberOfRows, 8uLL, 0x100004000313F17uLL);
    if (self->mNumberOfRows)
    {
      memset_pattern16(v14, &unk_26CA67980, 8 * self->mNumberOfRows);
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0xBFF0000000000000;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0xBFF0000000000000;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    isGrouped = [information isGrouped];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __83__TSTLayoutDynamicResizeInfo_p_captureRowColumnInformation_columnRegion_rowRegion___block_invoke;
    v25[3] = &unk_279D4A258;
    v25[9] = &v27;
    v25[10] = v14;
    v25[4] = self;
    v25[5] = information;
    *&v25[11] = v10;
    v26 = isGrouped;
    v25[12] = v16;
    v25[6] = &v35;
    v25[7] = &v39;
    v25[8] = &v31;
    [rowRegion enumerateRowsUsingBlock:v25];
    self->mCapturedRowHeights = v14;
    memcpy(v15, v14, 8 * self->mNumberOfRows);
    self->mCurrentRowHeights = v15;
    self->mMinimumRowHeights = v16;
    *&self->mCapturedRowHeightTotal = v28[3];
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  if (region)
  {
    self->mColumnRegion = region;
    self->mStartColumnIndex = [region boundingCellRange] >> 16;
    self->mNumberOfColumns = [region boundingCellRange] >> 32;
    self->mNumberOfResizableColumns = [region numberOfIntersectingColumns];
    v18 = malloc_type_malloc(8 * self->mNumberOfColumns, 0x100004000313F17uLL);
    v19 = malloc_type_calloc(self->mNumberOfColumns, 8uLL, 0x100004000313F17uLL);
    v20 = malloc_type_calloc(self->mNumberOfColumns, 8uLL, 0x100004000313F17uLL);
    v21 = v20;
    mNumberOfColumns = self->mNumberOfColumns;
    if (self->mNumberOfColumns)
    {
      v23 = 0;
      do
      {
        v18[v23++] = -1.0;
      }

      while (mNumberOfColumns > v23);
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    LOBYTE(v42) = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0xBFF0000000000000;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0xBFF0000000000000;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__TSTLayoutDynamicResizeInfo_p_captureRowColumnInformation_columnRegion_rowRegion___block_invoke_2;
    v24[3] = &unk_279D4A280;
    v24[9] = &v27;
    v24[10] = v18;
    v24[4] = self;
    v24[5] = information;
    *&v24[11] = v11;
    v24[12] = v20;
    v24[6] = &v35;
    v24[7] = &v39;
    v24[8] = &v31;
    [region enumerateColumnsUsingBlock:v24];
    self->mCapturedColumnWidths = v18;
    memcpy(v19, v18, 8 * self->mNumberOfColumns);
    self->mCurrentColumnWidths = v19;
    self->mMinimumColumnWidths = v21;
    *&self->mCapturedColumnWidthTotal = v28[3];
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }
}

double __83__TSTLayoutDynamicResizeInfo_p_captureRowColumnInformation_columnRegion_rowRegion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2 - *(*(a1 + 32) + 24);
  v5 = TSTMasterLayoutHeightOfRow(*(a1 + 40), a2, 0, 0, 1, 1);
  v6 = *(a1 + 80);
  *(v6 + 8 * v4) = v5;
  if (v5 == 0.0)
  {
    *(*(a1 + 96) + 8 * v4) = 0;
    --*(*(a1 + 32) + 28);
  }

  else
  {
    *(v6 + 8 * v4) = v5 / *(a1 + 88);
    v7 = [*(a1 + 40) tableRowsBehavior];
    v8 = 8.0;
    if (v7 == 1 && (*(a1 + 104) & 1) == 0)
    {
      TSTMasterLayoutFittingHeightOfRow(*(a1 + 40), a2);
    }

    v9 = *(a1 + 96);
    *(v9 + 8 * v4) = v8;
    *(v9 + 8 * v4) = v8 / *(a1 + 88);
    if (*(*(*(a1 + 48) + 8) + 24) < 0.0 || a2 - 1 != *(*(*(a1 + 56) + 8) + 24))
    {
      *(*(*(a1 + 48) + 8) + 24) = TSTMasterLayoutStrokeHeightOfGridRow(*(a1 + 40), a2, 0, 0xFFFFFFFF);
      *(*(*(a1 + 56) + 8) + 24) = a2;
    }

    *(*(*(a1 + 64) + 8) + 24) = TSTMasterLayoutStrokeHeightOfGridRow(*(a1 + 40), a2 + 1, 0, 0xFFFFFFFF);
    *(*(a1 + 96) + 8 * v4) = *(*(a1 + 96) + 8 * v4) + (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24)) * 0.5;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
    v6 = *(a1 + 80);
  }

  v10 = *(v6 + 8 * v4);
  v11 = *(*(a1 + 72) + 8);
  result = v10 + *(v11 + 24);
  *(v11 + 24) = result;
  return result;
}

double __83__TSTLayoutDynamicResizeInfo_p_captureRowColumnInformation_columnRegion_rowRegion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 - *(*(a1 + 32) + 72);
  v5 = TSTMasterLayoutWidthOfColumn(*(a1 + 40), a2, 1, 0, 1);
  v6 = *(a1 + 80);
  *(v6 + 8 * v4) = v5;
  if (v5 == 0.0)
  {
    *(*(a1 + 96) + 8 * v4) = 0;
    --*(*(a1 + 32) + 76);
  }

  else
  {
    *(v6 + 8 * v4) = v5 / *(a1 + 88);
    v7 = *(a1 + 96);
    *(v7 + 8 * v4) = 0x4020000000000000;
    *(v7 + 8 * v4) = 8.0 / *(a1 + 88);
    if (*(*(*(a1 + 48) + 8) + 24) < 0.0 || v2 - 1 != *(*(*(a1 + 56) + 8) + 24))
    {
      *(*(*(a1 + 48) + 8) + 24) = TSTMasterLayoutStrokeWidthOfGridColumn(*(a1 + 40), v2, 0, 0xFFFFFFFF);
      *(*(*(a1 + 56) + 8) + 24) = v2;
    }

    *(*(*(a1 + 64) + 8) + 24) = TSTMasterLayoutStrokeWidthOfGridColumn(*(a1 + 40), v2 + 1, 0, 0xFFFFFFFF);
    *(*(a1 + 96) + 8 * v4) = *(*(a1 + 96) + 8 * v4) + (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24)) * 0.5;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
    v6 = *(a1 + 80);
  }

  v8 = *(v6 + 8 * v4);
  v9 = *(*(a1 + 72) + 8);
  result = v8 + *(v9 + 24);
  *(v9 + 24) = result;
  return result;
}

- (BOOL)hasHeightForRow:(unsigned __int16)row
{
  mStartRowIndex = self->mStartRowIndex;
  v4 = row >= mStartRowIndex;
  v5 = row - mStartRowIndex;
  return v4 && self->mNumberOfRows > v5 && self->mCapturedRowHeights[v5] > 0.0;
}

- (BOOL)hasWidthForColumn:(unsigned __int8)column
{
  mStartColumnIndex = self->mStartColumnIndex;
  v4 = column >= mStartColumnIndex;
  v5 = column - mStartColumnIndex;
  return v4 && self->mNumberOfColumns > v5 && self->mCapturedColumnWidths[v5] > 0.0;
}

- (double)getRowInitialHeight:(unsigned __int16)height
{
  mCapturedRowHeights = self->mCapturedRowHeights;
  result = 0.0;
  if (mCapturedRowHeights)
  {
    mStartRowIndex = self->mStartRowIndex;
    if (mStartRowIndex <= height && self->mNumberOfRows + mStartRowIndex > height)
    {
      return mCapturedRowHeights[height - mStartRowIndex];
    }
  }

  return result;
}

- (double)getColumnInitialWidth:(unsigned __int8)width
{
  mCapturedColumnWidths = self->mCapturedColumnWidths;
  result = 0.0;
  if (mCapturedColumnWidths)
  {
    mStartColumnIndex = self->mStartColumnIndex;
    if (mStartColumnIndex <= width && self->mNumberOfColumns + mStartColumnIndex > width)
    {
      return mCapturedColumnWidths[width - mStartColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeight:(unsigned __int16)height
{
  mCurrentRowHeights = self->mCurrentRowHeights;
  result = 0.0;
  if (mCurrentRowHeights)
  {
    mStartRowIndex = self->mStartRowIndex;
    if (mStartRowIndex <= height && self->mNumberOfRows + mStartRowIndex > height)
    {
      return mCurrentRowHeights[height - mStartRowIndex];
    }
  }

  return result;
}

- (double)getColumnWidth:(unsigned __int8)width
{
  mCurrentColumnWidths = self->mCurrentColumnWidths;
  result = 0.0;
  if (mCurrentColumnWidths)
  {
    mStartColumnIndex = self->mStartColumnIndex;
    if (mStartColumnIndex <= width && self->mNumberOfColumns + mStartColumnIndex > width)
    {
      return mCurrentColumnWidths[width - mStartColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeightResize:(unsigned __int16)resize
{
  v3 = 0.0;
  if (self->mCurrentRowHeights)
  {
    resizeCopy = resize;
    mStartRowIndex = self->mStartRowIndex;
    if (mStartRowIndex <= resize && self->mNumberOfRows + mStartRowIndex > resize && [(TSTLayoutDynamicResizeInfo *)self hasHeightForRow:resize])
    {
      return self->mCurrentRowHeights[resizeCopy - self->mStartRowIndex] - self->mCapturedRowHeights[resizeCopy - self->mStartRowIndex];
    }
  }

  return v3;
}

- (double)getColumnWidthResize:(unsigned __int8)resize
{
  v3 = 0.0;
  if (self->mCurrentColumnWidths)
  {
    resizeCopy = resize;
    mStartColumnIndex = self->mStartColumnIndex;
    if (mStartColumnIndex <= resize && self->mNumberOfColumns + mStartColumnIndex > resize && [(TSTLayoutDynamicResizeInfo *)self hasWidthForColumn:resize])
    {
      return self->mCurrentColumnWidths[resizeCopy - self->mStartColumnIndex] - self->mCapturedColumnWidths[resizeCopy - self->mStartColumnIndex];
    }
  }

  return v3;
}

- (CGSize)capturedTableSize
{
  mCapturedColumnWidthTotal = self->mCapturedColumnWidthTotal;
  mCapturedRowHeightTotal = self->mCapturedRowHeightTotal;
  result.height = mCapturedRowHeightTotal;
  result.width = mCapturedColumnWidthTotal;
  return result;
}

- (void)enumerateColumnWidthsUsingBlock:(id)block
{
  v6 = 0;
  mStartColumnIndex = self->mStartColumnIndex;
  do
  {
    if (self->mNumberOfColumns + self->mStartColumnIndex <= mStartColumnIndex)
    {
      break;
    }

    if ([(TSTLayoutDynamicResizeInfo *)self hasWidthForColumn:mStartColumnIndex])
    {
      [(TSTLayoutDynamicResizeInfo *)self getColumnWidth:mStartColumnIndex];
      (*(block + 2))(block, mStartColumnIndex, &v6);
    }

    ++mStartColumnIndex;
  }

  while (!v6);
}

- (void)enumerateRowHeightsUsingBlock:(id)block
{
  v6 = 0;
  mStartRowIndex = self->mStartRowIndex;
  do
  {
    if (self->mNumberOfRows + self->mStartRowIndex <= mStartRowIndex)
    {
      break;
    }

    if ([(TSTLayoutDynamicResizeInfo *)self hasHeightForRow:mStartRowIndex])
    {
      [(TSTLayoutDynamicResizeInfo *)self getRowHeight:mStartRowIndex];
      (*(block + 2))(block, mStartRowIndex, &v6);
    }

    ++mStartRowIndex;
  }

  while (!v6);
}

- (id)rowHeights
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__TSTLayoutDynamicResizeInfo_rowHeights__block_invoke;
  v5[3] = &unk_279D4A2A8;
  v5[4] = &v6;
  [(TSTLayoutDynamicResizeInfo *)self enumerateRowHeightsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__TSTLayoutDynamicResizeInfo_rowHeights__block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];

  return [v1 addObject:v2];
}

- (id)columnWidths
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TSTLayoutDynamicResizeInfo_columnWidths__block_invoke;
  v5[3] = &unk_279D4A2D0;
  v5[4] = &v6;
  [(TSTLayoutDynamicResizeInfo *)self enumerateColumnWidthsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__TSTLayoutDynamicResizeInfo_columnWidths__block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];

  return [v1 addObject:v2];
}

@end