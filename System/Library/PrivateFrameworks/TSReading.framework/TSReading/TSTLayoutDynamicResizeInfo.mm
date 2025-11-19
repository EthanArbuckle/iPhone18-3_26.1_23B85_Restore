@interface TSTLayoutDynamicResizeInfo
- (BOOL)hasHeightForRow:(unsigned __int16)a3;
- (BOOL)hasWidthForColumn:(unsigned __int8)a3;
- (CGSize)capturedTableSize;
- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)a3;
- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)a3;
- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)a3 columnRegion:(id)a4;
- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)a3 rowRegion:(id)a4;
- (double)getColumnInitialWidth:(unsigned __int8)a3;
- (double)getColumnWidth:(unsigned __int8)a3;
- (double)getColumnWidthResize:(unsigned __int8)a3;
- (double)getRowHeight:(unsigned __int16)a3;
- (double)getRowHeightResize:(unsigned __int16)a3;
- (double)getRowInitialHeight:(unsigned __int16)a3;
- (id)columnWidths;
- (id)rowHeights;
- (void)dealloc;
- (void)enumerateColumnWidthsUsingBlock:(id)a3;
- (void)enumerateRowHeightsUsingBlock:(id)a3;
- (void)p_captureRowColumnInformation:(id)a3 columnRegion:(id)a4 rowRegion:(id)a5;
@end

@implementation TSTLayoutDynamicResizeInfo

- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSTLayoutDynamicResizeInfo;
  v4 = [(TSTLayoutDynamicResizeInfo *)&v7 init];
  if (v4)
  {
    v4->mTableRowsBehavior = [a3 tableRowsBehavior];
    v5 = [TSTCellRegion regionFromRange:TSTMasterLayoutGetRange(a3)];
    [(TSTLayoutDynamicResizeInfo *)v4 p_captureRowColumnInformation:a3 columnRegion:v5 rowRegion:v5];
    v4->mValid = 1;
  }

  return v4;
}

- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)a3 columnRegion:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSTLayoutDynamicResizeInfo;
  v6 = [(TSTLayoutDynamicResizeInfo *)&v8 init];
  if (v6)
  {
    v6->mTableRowsBehavior = [a3 tableRowsBehavior];
    [(TSTLayoutDynamicResizeInfo *)v6 p_captureRowColumnInformation:a3 columnRegion:a4 rowRegion:0];
    v6->mValid = 1;
  }

  return v6;
}

- (TSTLayoutDynamicResizeInfo)initWithMasterLayout:(id)a3 rowRegion:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSTLayoutDynamicResizeInfo;
  v6 = [(TSTLayoutDynamicResizeInfo *)&v8 init];
  if (v6)
  {
    v6->mTableRowsBehavior = [a3 tableRowsBehavior];
    [(TSTLayoutDynamicResizeInfo *)v6 p_captureRowColumnInformation:a3 columnRegion:0 rowRegion:a4];
    v6->mValid = 1;
  }

  return v6;
}

- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)a3
{
  v15.receiver = self;
  v15.super_class = TSTLayoutDynamicResizeInfo;
  v4 = [(TSTLayoutDynamicResizeInfo *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->mValid = *(a3 + 8);
    v4->mTableRowsBehavior = *(a3 + 3);
    v4->mRowRegion = *(a3 + 2);
    v5->mStartRowIndex = *(a3 + 12);
    v6 = *(a3 + 13);
    v5->mNumberOfRows = v6;
    if (v6)
    {
      v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
      v5->mCapturedRowHeights = v7;
      memcpy(v7, *(a3 + 4), 8 * v5->mNumberOfRows);
      v8 = malloc_type_malloc(8 * v5->mNumberOfRows, 0x100004000313F17uLL);
      v5->mCurrentRowHeights = v8;
      memcpy(v8, *(a3 + 5), 8 * v5->mNumberOfRows);
      v9 = malloc_type_malloc(8 * v5->mNumberOfRows, 0x100004000313F17uLL);
      v5->mMinimumRowHeights = v9;
      memcpy(v9, *(a3 + 6), 8 * v5->mNumberOfRows);
    }

    else
    {
      v5->mCapturedRowHeights = 0;
      v5->mCurrentRowHeights = 0;
      v5->mMinimumRowHeights = 0;
    }

    v5->mCapturedRowHeightTotal = *(a3 + 7);
    v5->mColumnRegion = *(a3 + 8);
    v5->mStartColumnIndex = *(a3 + 72);
    v10 = *(a3 + 37);
    v5->mNumberOfColumns = v10;
    if (v10)
    {
      v11 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
      v5->mCapturedColumnWidths = v11;
      memcpy(v11, *(a3 + 10), 8 * v5->mNumberOfColumns);
      v12 = malloc_type_malloc(8 * v5->mNumberOfColumns, 0x100004000313F17uLL);
      v5->mCurrentColumnWidths = v12;
      memcpy(v12, *(a3 + 11), 8 * v5->mNumberOfColumns);
      v13 = malloc_type_malloc(8 * v5->mNumberOfColumns, 0x100004000313F17uLL);
      v5->mMinimumColumnWidths = v13;
      memcpy(v13, *(a3 + 12), 8 * v5->mNumberOfColumns);
    }

    else
    {
      v5->mCapturedColumnWidths = 0;
      v5->mCurrentColumnWidths = 0;
      v5->mMinimumColumnWidths = 0;
    }

    v5->mCapturedColumnWidthTotal = *(a3 + 13);
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

- (void)p_captureRowColumnInformation:(id)a3 columnRegion:(id)a4 rowRegion:(id)a5
{
  v9 = [a3 tableInfo];
  v10 = 1.0;
  if ([v9 partitioner])
  {
    v11 = 1.0;
    if ([objc_msgSend(v9 "partitioner")])
    {
      [objc_msgSend(v9 "partitioner")];
      v11 = v12;
      [objc_msgSend(v9 "partitioner")];
      v10 = v13;
    }
  }

  else
  {
    v11 = 1.0;
  }

  if (a5)
  {
    self->mRowRegion = a5;
    self->mStartRowIndex = [a5 boundingCellRange];
    self->mNumberOfRows = [a5 boundingCellRange] >> 48;
    self->mNumberOfResizableRows = [a5 numberOfIntersectingRows];
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
    v17 = [a3 isGrouped];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __83__TSTLayoutDynamicResizeInfo_p_captureRowColumnInformation_columnRegion_rowRegion___block_invoke;
    v25[3] = &unk_279D4A258;
    v25[9] = &v27;
    v25[10] = v14;
    v25[4] = self;
    v25[5] = a3;
    *&v25[11] = v10;
    v26 = v17;
    v25[12] = v16;
    v25[6] = &v35;
    v25[7] = &v39;
    v25[8] = &v31;
    [a5 enumerateRowsUsingBlock:v25];
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

  if (a4)
  {
    self->mColumnRegion = a4;
    self->mStartColumnIndex = [a4 boundingCellRange] >> 16;
    self->mNumberOfColumns = [a4 boundingCellRange] >> 32;
    self->mNumberOfResizableColumns = [a4 numberOfIntersectingColumns];
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
    v24[5] = a3;
    *&v24[11] = v11;
    v24[12] = v20;
    v24[6] = &v35;
    v24[7] = &v39;
    v24[8] = &v31;
    [a4 enumerateColumnsUsingBlock:v24];
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

- (BOOL)hasHeightForRow:(unsigned __int16)a3
{
  mStartRowIndex = self->mStartRowIndex;
  v4 = a3 >= mStartRowIndex;
  v5 = a3 - mStartRowIndex;
  return v4 && self->mNumberOfRows > v5 && self->mCapturedRowHeights[v5] > 0.0;
}

- (BOOL)hasWidthForColumn:(unsigned __int8)a3
{
  mStartColumnIndex = self->mStartColumnIndex;
  v4 = a3 >= mStartColumnIndex;
  v5 = a3 - mStartColumnIndex;
  return v4 && self->mNumberOfColumns > v5 && self->mCapturedColumnWidths[v5] > 0.0;
}

- (double)getRowInitialHeight:(unsigned __int16)a3
{
  mCapturedRowHeights = self->mCapturedRowHeights;
  result = 0.0;
  if (mCapturedRowHeights)
  {
    mStartRowIndex = self->mStartRowIndex;
    if (mStartRowIndex <= a3 && self->mNumberOfRows + mStartRowIndex > a3)
    {
      return mCapturedRowHeights[a3 - mStartRowIndex];
    }
  }

  return result;
}

- (double)getColumnInitialWidth:(unsigned __int8)a3
{
  mCapturedColumnWidths = self->mCapturedColumnWidths;
  result = 0.0;
  if (mCapturedColumnWidths)
  {
    mStartColumnIndex = self->mStartColumnIndex;
    if (mStartColumnIndex <= a3 && self->mNumberOfColumns + mStartColumnIndex > a3)
    {
      return mCapturedColumnWidths[a3 - mStartColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeight:(unsigned __int16)a3
{
  mCurrentRowHeights = self->mCurrentRowHeights;
  result = 0.0;
  if (mCurrentRowHeights)
  {
    mStartRowIndex = self->mStartRowIndex;
    if (mStartRowIndex <= a3 && self->mNumberOfRows + mStartRowIndex > a3)
    {
      return mCurrentRowHeights[a3 - mStartRowIndex];
    }
  }

  return result;
}

- (double)getColumnWidth:(unsigned __int8)a3
{
  mCurrentColumnWidths = self->mCurrentColumnWidths;
  result = 0.0;
  if (mCurrentColumnWidths)
  {
    mStartColumnIndex = self->mStartColumnIndex;
    if (mStartColumnIndex <= a3 && self->mNumberOfColumns + mStartColumnIndex > a3)
    {
      return mCurrentColumnWidths[a3 - mStartColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeightResize:(unsigned __int16)a3
{
  v3 = 0.0;
  if (self->mCurrentRowHeights)
  {
    v4 = a3;
    mStartRowIndex = self->mStartRowIndex;
    if (mStartRowIndex <= a3 && self->mNumberOfRows + mStartRowIndex > a3 && [(TSTLayoutDynamicResizeInfo *)self hasHeightForRow:a3])
    {
      return self->mCurrentRowHeights[v4 - self->mStartRowIndex] - self->mCapturedRowHeights[v4 - self->mStartRowIndex];
    }
  }

  return v3;
}

- (double)getColumnWidthResize:(unsigned __int8)a3
{
  v3 = 0.0;
  if (self->mCurrentColumnWidths)
  {
    v4 = a3;
    mStartColumnIndex = self->mStartColumnIndex;
    if (mStartColumnIndex <= a3 && self->mNumberOfColumns + mStartColumnIndex > a3 && [(TSTLayoutDynamicResizeInfo *)self hasWidthForColumn:a3])
    {
      return self->mCurrentColumnWidths[v4 - self->mStartColumnIndex] - self->mCapturedColumnWidths[v4 - self->mStartColumnIndex];
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

- (void)enumerateColumnWidthsUsingBlock:(id)a3
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
      (*(a3 + 2))(a3, mStartColumnIndex, &v6);
    }

    ++mStartColumnIndex;
  }

  while (!v6);
}

- (void)enumerateRowHeightsUsingBlock:(id)a3
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
      (*(a3 + 2))(a3, mStartRowIndex, &v6);
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