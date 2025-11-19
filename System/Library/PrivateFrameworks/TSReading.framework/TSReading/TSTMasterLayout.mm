@interface TSTMasterLayout
+ (CGSize)tableNameTextSize:(id)a3;
+ (double)effectiveTableNameHeightForModel:(id)a3;
+ (id)tableNameTextEngine:(id)a3;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)layoutCellIDForModelCellID:(id)a3;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)modelCellIDForLayoutCellID:(id)a3;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)modelCellIDForStrokesOfLayoutCellID:(id)a3;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)p_validateFittingInfoForEmptyCellsBetween:(id)a3 andCellID:(id)a4 inRange:(id)a5;
- (BOOL)cell:(id *)a3 forCellID:(id)a4;
- (BOOL)hintIsValid:(id)a3;
- (BOOL)isDynamicallyChangingContent;
- (BOOL)isDynamicallyChangingRowOrColumnCount;
- (BOOL)isDynamicallyHidingContentOfCellID:(id)a3;
- (BOOL)isDynamicallyHidingRowsCols;
- (BOOL)isDynamicallyHidingRowsCols:(int)a3 rowColIndex:(unsigned __int16)a4;
- (BOOL)isDynamicallyHidingRowsColsCellID:(id)a3;
- (BOOL)isDynamicallyHidingTextOfCellID:(id)a3;
- (BOOL)isDynamicallyResizing:(int)a3;
- (BOOL)isDynamicallyResizing:(int)a3 rowColIndex:(unsigned __int16)a4;
- (BOOL)isDynamicallyResizingCellID:(id)a3;
- (BOOL)isDynamicallyRevealingRowsCols;
- (BOOL)isDynamicallyRevealingRowsCols:(int)a3 rowColIndex:(unsigned __int16)a4;
- (BOOL)isGrouped;
- (BOOL)shouldRowUseBandedFill:(unsigned __int16)a3;
- (BOOL)updateDynamicChangeRowOrColumnCount:(int)a3 count:(int)a4 newlyAddedElementSize:(double)a5;
- (BOOL)useBandedFill;
- (CGSize)maximumPartitionSize;
- (CGSize)tableNameTextSize;
- (NSIndexSet)visibleColumnIndices;
- (NSIndexSet)visibleRowIndices;
- (NSString)description;
- (TSTLayout)dynamicLayout;
- (TSTMasterLayout)initWithInfo:(id)a3;
- (UIEdgeInsets)defaultPaddingForCellID:(id)a3;
- (UIEdgeInsets)edgeInsetsFromPadding:(id)a3;
- (UIEdgeInsets)paddingForCellID:(id)a3;
- (double)calculatedTableNameHeightIncludingDynamicResize:(BOOL)a3;
- (double)fontHeightOfParagraphStyle:(id)a3;
- (double)tableNameHeight;
- (id)accountingParagraphStylePropertyMapForCell:(id)a3 atCellID:(id)a4;
- (id)newLayoutHint;
- (id)newTextEngineForCell:(id)a3 atCellID:(id)a4;
- (id)regionForStrokeValidationFromChangeDescriptors:(id)a3;
- (id)tableNameTextEngine;
- (id)validateCellForDrawing:(id)a3 cell:(id)a4 contents:(id)a5 wrap:(BOOL)a6 verticalAlignment:(unsigned int)a7 padding:(id)a8 layoutCacheFlags:(int)a9 pageNumber:(unint64_t)a10 pageCount:(unint64_t)a11;
- (id)validateFittingInfoForChangeDescriptors:(id)a3 rowsNeedingFittingInfo:(id)a4;
- (unsigned)tableAreaForCellID:(id)a3;
- (void)addChangeDescriptor:(id)a3;
- (void)addChangeDescriptorWithType:(int)a3 andCellRange:(id)a4 andStrokeRange:(id)a5;
- (void)addDynamicLayoutBeginIfNecessary:(id)a3;
- (void)beginDynamicMode:(id)a3;
- (void)calculateRawTableSize:(CGSize *)a3 andStrokeDelta:(CGSize *)a4;
- (void)cancelDynamicModeChanges;
- (void)clearModelHeightWidthCacheForCellRange:(id)a3;
- (void)dealloc;
- (void)endDynamicMode;
- (void)measureTextForLayoutState:(id)a3;
- (void)p_cancelDynamicRowColCountChanges;
- (void)p_processChange:(id)a3 forChangeSource:(id)a4;
- (void)p_validateFittingInfoForCellID:(id)a3 inMergeRange:(id)a4;
- (void)p_validateFittingInfoForEmptyCellsOnSingleRowBetween:(id)a3 andEndCellID:(id)a4;
- (void)processLayoutTask:(id)a3;
- (void)queueCellForValidation:(id)a3 cell:(id)a4 mergeRange:(id)a5 wrap:(BOOL)a6 verticalAlignment:(unsigned int)a7 padding:(id)a8 prop:(BOOL)a9 layoutCacheFlags:(int)a10;
- (void)removeDynamicLayoutEndIfNecessary:(id)a3;
- (void)resetModelHeightWidthCache;
- (void)setChangeNotifier:(id)a3;
- (void)setMaxConcurrentTasks:(unsigned int)a3;
- (void)setProcessHiddenRowsForExport:(BOOL)a3;
- (void)syncProcessChanges:(id)a3 forChangeSource:(id)a4;
- (void)updateDynamicColumnSwapDelegate:(id)a3;
- (void)updateDynamicContentDelegate:(id)a3;
- (void)updateDynamicFontColor:(id)a3 andRange:(id)a4;
- (void)updateDynamicHidingRowsCols:(int)a3 hidingCellRange:(id)a4;
- (void)updateDynamicResize:(int)a3 resizingRange:(id)a4 resizeAdjustment:(double)a5;
- (void)updateDynamicRevealingRowsCols:(int)a3 revealingCellRange:(id)a4;
- (void)updateDynamicRowSwapDelegate:(id)a3;
- (void)updateDynamicSelectionRegion:(id)a3;
- (void)updateWHCForMergeRanges;
- (void)validate;
- (void)validateBandedFill;
- (void)validateChangeDescriptorQueue;
- (void)validateDefaultFontHeights;
- (void)validateFittingInfoForCell:(id)a3 cellID:(id)a4 mergeRange:(id)a5 setFitting:(BOOL)a6;
- (void)validateFittingInfoWithCellRange:(id)a3;
- (void)validateFittingWidthsForRegion:(id)a3;
- (void)validateLayoutHint:(id)a3;
- (void)validateMasterLayoutForChangeDescriptors:(id)a3;
- (void)validateStrokesForRegion:(id)a3 regionAlreadyValidated:(id)a4;
- (void)validateTableRowsBehavior;
- (void)waitForLayoutToComplete;
- (void)wasRemovedFromDocumentRoot;
- (void)willBeAddedToDocumentRoot:(id)a3;
@end

@implementation TSTMasterLayout

- (void)setChangeNotifier:(id)a3
{
  if (!self->mChangeNotifier)
  {
    self->mChangeNotifier = a3;
    v6 = a3;
    mTableInfo = self->mTableInfo;

    [a3 addObserver:self forChangeSource:mTableInfo];
  }
}

- (void)setProcessHiddenRowsForExport:(BOOL)a3
{
  self->mProcessHiddenRowsForExport = a3;
  v4 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] range];

  TSTMasterLayoutInvalidateStrokeRange(self, *&v4);
}

- (TSTMasterLayout)initWithInfo:(id)a3
{
  v14.receiver = self;
  v14.super_class = TSTMasterLayout;
  v4 = [(TSTMasterLayout *)&v14 init];
  v5 = v4;
  if (v4)
  {
    p_mDynamicHidingContent = &v4->mDynamicHidingContent;
    v4->mTableInfo = a3;
    v4->mCellIDToWPColumnCache = [(TSUConcurrentCache *)[TSTWPColumnCache alloc] initWithName:@"cell id to wp column $"];
    *(v5 + 40) = [(TSUConcurrentCache *)[TSTDupContentCache alloc] initWithName:@"dup $"];
    *(v5 + 48) = [(TSUConcurrentCache *)[TSTWPColumnCache alloc] initWithName:@"temp wp column $"];
    *(v5 + 56) = -[TSTWidthHeightCache initWithNumRows:andNumCols:]([TSTWidthHeightCache alloc], "initWithNumRows:andNumCols:", [objc_msgSend(a3 "tableModel")], objc_msgSend(objc_msgSend(a3, "tableModel"), "numberOfColumns"));
    *(v5 + 64) = [objc_alloc(MEMORY[0x277D6C360]) initWithIdentifier:@"TSTWHCacheQueue"];
    *(v5 + 88) = dispatch_group_create();
    *(v5 + 112) = 0xA0000000ALL;
    v7 = dispatch_semaphore_create(10);
    *(v5 + 96) = 0;
    *(v5 + 104) = v7;
    *(v5 + 280) = 0;
    *(v5 + 80) = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    v8 = +[TSTConfiguration sharedTableConfiguration];
    *(v5 + 192) = [v8 maxNumberOfRows];
    *(v5 + 176) = [v8 maxNumberOfColumns];
    *(v5 + 284) = 0;
    *&v9 = 0xFFFFFFLL;
    *(&v9 + 1) = 0xFFFFFFLL;
    *(v5 + 400) = v9;
    *&p_mDynamicHidingContent->origin.row = v9;
    *(v5 + 452) = 0xFFFFFFLL;
    *(v5 + 464) = 0;
    *(v5 + 474) = 0xFFFFFFLL;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0xFFFFFFLL;
    *(v5 + 536) = 0;
    *(v5 + 160) = 0xBFF0000000000000;
    *(v5 + 240) = objc_alloc_init(MEMORY[0x277CCAC60]);
    *(v5 + 208) = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v5 + 216) = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v5 + 224) = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v5 + 232) = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v5 + 248) = objc_alloc_init(MEMORY[0x277D6C368]);
    v10 = objc_alloc_init(TSTHiddenRowsColumnsCache);
    *(v5 + 72) = v10;
    [(TSTHiddenRowsColumnsCache *)v10 validate:v5];
    *(v5 + 256) = objc_alloc_init(MEMORY[0x277CCAAF8]);
    *(v5 + 264) = 0;
    *(v5 + 265) = [objc_msgSend(v5 "tableModel")];
    *(v5 + 272) = [objc_msgSend(v5 "tableModel")];
    *(v5 + 592) = objc_alloc_init(TSTMergeRangeSortedSet);
    *(v5 + 168) = [objc_msgSend(v5 "tableModel")];
    *(v5 + 184) = [objc_msgSend(v5 "tableModel")];
    *(v5 + 186) = [objc_msgSend(v5 "tableModel")];
    *(v5 + 336) = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    *(v5 + 600) = 0;
    *(v5 + 576) = 0xFFFFFF;
    TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(v5);
    v12 = (TableNumberOfColumns << 32) | (TSTMasterLayoutGetTableNumberOfRows(v5) << 48);
    [v5 addChangeDescriptorWithType:26 andCellRange:v12];
    [v5 addChangeDescriptorWithType:5 andCellRange:v12];
    *(v5 + 608) = *MEMORY[0x277CBF3A8];
  }

  return v5;
}

- (void)dealloc
{
  self->mCellIDToWPColumnCache = 0;

  self->mDupContentCache = 0;
  self->mTempWPColumnCache = 0;

  self->mWidthHeightCache = 0;
  self->mWHCacheQueue = 0;

  self->mHiddenRowsColumnsCache = 0;
  dispatch_release(self->mLayoutInFlight);
  dispatch_release(self->mLayoutSemaphore);

  self->mCurrentLayoutTask = 0;
  self->mChangeDescriptors = 0;
  self->mTableInfo = 0;

  TSTMasterLayoutInvalidateStrokeDefaults(self);
  self->mTopRowStrokes = 0;

  self->mBottomRowStrokes = 0;
  self->mLeftColumnStrokes = 0;

  self->mRightColumnStrokes = 0;
  self->mParaStyleToHeightCache = 0;

  self->mStrokesLock = 0;
  self->mLock = 0;

  self->mDynamicLayouts = 0;
  v3.receiver = self;
  v3.super_class = TSTMasterLayout;
  [(TSTMasterLayout *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] tableName];
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", 0, 0];
  v11 = [v9 stringWithFormat:@"(%@, %@)", v10, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", TableNumberOfColumns, TableNumberOfRows)];
  if (self->mInDynamicLayoutMode)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@:%p %@ range:%@ dynamic_mode:%@ >", v5, self, v6, v11, v12];
}

- (id)newLayoutHint
{
  v3 = objc_alloc_init(TSTLayoutHint);
  if (![(TSDDrawableInfo *)[(TSTMasterLayout *)self tableInfo] isInlineWithText])
  {
    TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
    [(TSTLayoutHint *)v3 setCellRange:(TableNumberOfColumns << 32) | (TSTMasterLayoutGetTableNumberOfRows(self) << 48)];
    [(TSTLayoutHint *)v3 setMaximumSize:INFINITY, INFINITY];
  }

  [(TSTMasterLayout *)self validateLayoutHint:v3];
  return v3;
}

- (BOOL)hintIsValid:(id)a3
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if ([(TSTMasterLayout *)self emptyFilteredTable])
  {
    mCachedNumberOfHeaderRows = 0;
  }

  else
  {
    mCachedNumberOfHeaderRows = self->mCachedNumberOfHeaderRows;
  }

  if ([(TSTMasterLayout *)self emptyFilteredTable])
  {
    mCachedNumberOfHeaderColumns = 0;
  }

  else
  {
    mCachedNumberOfHeaderColumns = self->mCachedNumberOfHeaderColumns;
  }

  if ([(TSTMasterLayout *)self emptyFilteredTable])
  {
    mCachedNumberOfFooterRows = 0;
  }

  else
  {
    mCachedNumberOfFooterRows = self->mCachedNumberOfFooterRows;
  }

  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  if ((TableNumberOfColumns - mCachedNumberOfHeaderColumns) >= 0xFFu)
  {
    v12 = -1;
  }

  else
  {
    v12 = TableNumberOfColumns - mCachedNumberOfHeaderColumns;
  }

  v13 = [a3 cellRange];
  v14 = 0;
  v15 = 16711680;
  v16 = 0xFFFFLL;
  if (mCachedNumberOfHeaderRows == 0xFFFF)
  {
    goto LABEL_35;
  }

  v17 = 0;
  if (mCachedNumberOfHeaderColumns == 255)
  {
    goto LABEL_36;
  }

  v14 = 0;
  v15 = 16711680;
  v16 = 0xFFFFLL;
  if (TableNumberOfColumns == mCachedNumberOfHeaderColumns)
  {
    goto LABEL_35;
  }

  v17 = 0;
  if (TableNumberOfRows == (mCachedNumberOfFooterRows + mCachedNumberOfHeaderRows))
  {
    goto LABEL_36;
  }

  v14 = 0;
  v15 = 16711680;
  v16 = 0xFFFFLL;
  if (v13 == 0xFFFF)
  {
    goto LABEL_35;
  }

  v17 = 0;
  if ((v13 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_36;
  }

  v14 = 0;
  v15 = 16711680;
  v16 = 0xFFFFLL;
  if (!HIWORD(v13))
  {
LABEL_35:
    v17 = 0;
    goto LABEL_36;
  }

  v17 = 0;
  if ((v13 & 0xFFFF00000000) != 0)
  {
    v16 = 0;
    v18 = BYTE2(v13);
    if (mCachedNumberOfHeaderColumns > BYTE2(v13))
    {
      v18 = mCachedNumberOfHeaderColumns;
    }

    if (mCachedNumberOfHeaderRows <= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = mCachedNumberOfHeaderRows;
    }

    if ((mCachedNumberOfHeaderColumns + v12 - 1) >= (BYTE4(v13) + BYTE2(v13) - 1))
    {
      v20 = (BYTE4(v13) + BYTE2(v13) - 1);
    }

    else
    {
      v20 = (mCachedNumberOfHeaderColumns + v12 - 1);
    }

    if ((TableNumberOfRows - mCachedNumberOfFooterRows - 1) >= (v13 + HIWORD(v13) - 1))
    {
      v21 = (v13 + HIWORD(v13) - 1);
    }

    else
    {
      v21 = (TableNumberOfRows - mCachedNumberOfFooterRows - 1);
    }

    v15 = 0;
    v14 = 0;
    v17 = 0;
    if (v19 <= v21 && v18 <= v20)
    {
      v17 = ((v21 - v19) << 48) + 0x1000000000000;
      v14 = (((v20 - v18) << 32) + 0x100000000) & 0xFFFF00000000;
      v15 = v18 << 16;
      v16 = v19;
    }
  }

LABEL_36:
  v22 = v15 | v16;
  v23 = v14 | v17;
  mHeaderRowsRepeat = self->mHeaderRowsRepeat;
  if ((mCachedNumberOfHeaderRows - 1) < [a3 cellRange] && mHeaderRowsRepeat)
  {
    v25 = 0;
    do
    {
      v6 = v6 + TSTMasterLayoutHeightOfRow(self, v25++, 0, 0, 1, 1);
    }

    while (mCachedNumberOfHeaderRows > v25);
  }

  v26 = v22 | v23;
  v27 = [a3 cellRange];
  v28 = [a3 cellRange];
  if ((v28 + HIWORD(v28) - 1) >= v27)
  {
    do
    {
      v6 = v6 + TSTMasterLayoutHeightOfRow(self, v27++, 0, 0, 1, 1);
      v29 = [a3 cellRange];
    }

    while (v27 <= (v29 + HIWORD(v29) - 1));
  }

  [a3 maximumSize];
  v32 = v6 > v30 && HIWORD(v26) == 1;
  if (![(TSDDrawableInfo *)[(TSTMasterLayout *)self tableInfo] isInlineWithText])
  {
    if ([(TSTMasterLayout *)self emptyFilteredTable])
    {
      v33 = 0;
    }

    else
    {
      v33 = self->mCachedNumberOfHeaderColumns;
    }

    if ((v33 - 1) < ([a3 cellRange] >> 16))
    {
      v34 = 0;
      do
      {
        v5 = v5 + TSTMasterLayoutWidthOfColumn(self, v34++, 0, 0, 1);
      }

      while (v34 < v33);
    }

    v35 = [a3 cellRange];
    v36 = [a3 cellRange];
    if (BYTE2(v35) <= (BYTE4(v36) + BYTE2(v36) - 1))
    {
      v37 = v35 >> 16;
      do
      {
        v5 = v5 + TSTMasterLayoutWidthOfColumn(self, v37, 0, 0, 1);
        LODWORD(v37) = v37 + 1;
        v38 = [a3 cellRange];
      }

      while (v37 <= (BYTE4(v38) + BYTE2(v38) - 1));
    }

    [a3 maximumSize];
    v41 = v5 > v39 && (v26 & 0xFFFF00000000) == 0x100000000;
    v32 |= v41;
  }

  [a3 maximumSize];
  if (v6 <= v42)
  {
    [a3 maximumSize];
    if (v5 <= v43)
    {
      v32 = 1;
    }
  }

  [a3 setIsValid:v32 & 1];

  return [a3 isValid];
}

- (void)validateLayoutHint:(id)a3
{
  v5 = [(TSTMasterLayout *)self tableInfo];
  objc_opt_class();
  [(TSTTableInfo *)v5 partitioner];
  v6 = TSUDynamicCast();
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  v9 = [a3 cellRange];
  if (!v6 || ([a3 maximumSize], v11 = v9, v12 == INFINITY) && (v11 = v9, v10 == INFINITY))
  {
    v13 = TSTMasterLayoutGetTableNumberOfColumns(self);
    v11 = (v13 << 32) | (TSTMasterLayoutGetTableNumberOfRows(self) << 48);
    [a3 setMaximumSize:{INFINITY, INFINITY}];
    [a3 setCacheHintID:0];
  }

  v14 = [(TSDDrawableInfo *)v5 isInlineWithText];
  v15 = (TableNumberOfColumns - 1);
  if (v15 <= (BYTE4(v9) + BYTE2(v9) - 1))
  {
    v16 = v11;
  }

  else
  {
    v16 = TableNumberOfColumns << 32;
  }

  if (!v14)
  {
    v16 = v11;
  }

  v17 = v11 == 0;
  if (v11)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  if (TableNumberOfRows == (v11 + HIWORD(v11)))
  {
    v17 = v18;
  }

  if ((v11 & 0xFF0000) == 0)
  {
    v17 |= 4u;
  }

  v19 = HIDWORD(v16);
  if (v15 == (BYTE4(v16) + BYTE2(v11) - 1))
  {
    v20 = v17 | 8;
  }

  else
  {
    v20 = v17;
  }

  if (v20 == 15)
  {
    *&self->mHeaderColumnsRepeat = 0;
    self->mHeaderColumnsFrozen = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] headerColumnsFrozen];
    v21 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] headerRowsFrozen];
  }

  else
  {
    self->mHeaderColumnsRepeat = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] repeatingHeaderColumnsEnabled];
    v22 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] repeatingHeaderRowsEnabled];
    v21 = 0;
    self->mHeaderRowsRepeat = v22;
    self->mHeaderColumnsFrozen = 0;
  }

  self->mHeaderRowsFrozen = v21;
  [a3 setPartitionPosition:v20];
  [a3 setCellRange:v11 & 0xFFFF0000FFFFFFFFLL | (v19 << 32)];

  [a3 setIsValid:1];
}

- (void)resetModelHeightWidthCache
{
  v2 = [(TSTMasterLayout *)self widthHeightCache];

  [(TSTWidthHeightCache *)v2 resetModelCache];
}

- (void)clearModelHeightWidthCacheForCellRange:(id)a3
{
  v4 = [(TSTMasterLayout *)self widthHeightCache];

  [(TSTWidthHeightCache *)v4 resetModelCacheRange:a3];
}

- (id)tableNameTextEngine
{
  v2 = [(TSTMasterLayout *)self tableModel];

  return [TSTMasterLayout tableNameTextEngine:v2];
}

- (CGSize)tableNameTextSize
{
  if (self->mTableNameEnabled)
  {
    [TSTMasterLayout tableNameTextSize:[(TSTMasterLayout *)self tableModel]];
  }

  else
  {
    v2 = *MEMORY[0x277CBF3A8];
    v3 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)tableNameTextEngine:(id)a3
{
  v4 = +[TSWPColumnStyle defaultStyleWithContext:](TSWPColumnStyle, "defaultStyleWithContext:", [a3 context]);
  [v4 setIntValue:objc_msgSend(objc_msgSend(a3 forProperty:{"tableNameShapeStyle"), "intValueForProperty:", 149), 149}];
  v5 = [objc_msgSend(a3 "tableNameShapeStyle")];
  if (!v5)
  {
    v5 = +[TSWPPadding padding];
  }

  [v4 setValue:v5 forProperty:146];
  v6 = -[TSWPText initWithParagraphStyle:columnStyle:]([TSWPText alloc], "initWithParagraphStyle:columnStyle:", [a3 tableNameStyle], v4);

  return v6;
}

+ (CGSize)tableNameTextSize:(id)a3
{
  v4 = [a3 tableName];
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (v4)
  {
    v7 = v4;
    if ([v4 length])
    {
      v8 = [TSTMasterLayout tableNameTextEngine:a3];
      [v8 measureText:v7];
      v5 = v9;
      v11 = v10;
      [objc_msgSend(v8 "paragraphStyle")];
      v13 = v11 + v12;
      v14 = [*(a3 + 30) valueForProperty:146];
      [v14 topInset];
      v16 = v15;
      [v14 bottomInset];
      v6 = v13 + v16 + v17;
    }
  }

  v18 = v5;
  v19 = v6;
  result.height = v19;
  result.width = v18;
  return result;
}

+ (double)effectiveTableNameHeightForModel:(id)a3
{
  [a3 tableNameHeight];
  v5 = v4;
  [TSTMasterLayout tableNameTextSize:a3];
  if (v5 >= v6)
  {
    result = v5;
  }

  else
  {
    result = v6;
  }

  if (v5 <= 0.0)
  {
    return v6;
  }

  return result;
}

- (double)tableNameHeight
{
  if (!self->mTableNameEnabled)
  {
    return 0.0;
  }

  [(TSTMasterLayout *)self calculatedTableNameHeight];
  return result;
}

- (double)calculatedTableNameHeightIncludingDynamicResize:(BOOL)a3
{
  v3 = a3;
  if (self->mCachedTableNameHeight < 0.0)
  {
    self->mCachedTableNameHeight = 0.0;
    [TSTMasterLayout effectiveTableNameHeightForModel:[(TSTMasterLayout *)self tableModel]];
    self->mCachedTableNameHeight = v5;
  }

  v6 = [(TSTMasterLayout *)self isDynamicallyResizingTableName];
  mCachedTableNameHeight = self->mCachedTableNameHeight;
  if (v6 && v3)
  {
    [(TSTMasterLayout *)self dynamicTableNameResize];
    return mCachedTableNameHeight + v8;
  }

  return mCachedTableNameHeight;
}

- (unsigned)tableAreaForCellID:(id)a3
{
  EntireFooterRowsCellRange = TSTMasterLayoutGetEntireFooterRowsCellRange(self);
  if (HIWORD(EntireFooterRowsCellRange) && (EntireFooterRowsCellRange & 0xFFFF00000000) != 0 && EntireFooterRowsCellRange <= a3.var0 && (EntireFooterRowsCellRange + HIWORD(EntireFooterRowsCellRange) - 1) >= a3.var0 && a3.var1 >= BYTE2(EntireFooterRowsCellRange) && a3.var1 <= (BYTE4(EntireFooterRowsCellRange) + BYTE2(EntireFooterRowsCellRange) - 1))
  {
    return 3;
  }

  EntireHeaderRowsCellRange = TSTMasterLayoutGetEntireHeaderRowsCellRange(self);
  if (HIWORD(EntireHeaderRowsCellRange) && (EntireHeaderRowsCellRange & 0xFFFF00000000) != 0 && EntireHeaderRowsCellRange <= a3.var0 && (EntireHeaderRowsCellRange + HIWORD(EntireHeaderRowsCellRange) - 1) >= a3.var0 && a3.var1 >= BYTE2(EntireHeaderRowsCellRange) && a3.var1 <= (BYTE4(EntireHeaderRowsCellRange) + BYTE2(EntireHeaderRowsCellRange) - 1))
  {
    return 1;
  }

  EntireHeaderColumnsCellRange = TSTMasterLayoutGetEntireHeaderColumnsCellRange(self);
  v8 = 0;
  if (HIWORD(EntireHeaderColumnsCellRange) && (EntireHeaderColumnsCellRange & 0xFFFF00000000) != 0)
  {
    if (EntireHeaderColumnsCellRange <= a3.var0 && (EntireHeaderColumnsCellRange + HIWORD(EntireHeaderColumnsCellRange) - 1) >= a3.var0 && a3.var1 >= BYTE2(EntireHeaderColumnsCellRange))
    {
      return 2 * (a3.var1 <= (BYTE4(EntireHeaderColumnsCellRange) + BYTE2(EntireHeaderColumnsCellRange) - 1));
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (id)regionForStrokeValidationFromChangeDescriptors:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v7 = [a3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v10 = 0;
    v18 = TableNumberOfColumns;
    goto LABEL_22;
  }

  v8 = v7;
  v22 = TableNumberOfRows;
  v9 = 0;
  v10 = 0;
  v11 = *v27;
  v21 = TableNumberOfColumns;
  v23 = ((TableNumberOfColumns << 16) + 16711680) & 0xFF0000 | (TableNumberOfRows - 1);
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v13 changeDescriptor];
      v15 = [v13 cellID];
      v16 = [v13 strokeRegion];
      v17 = v16;
      if (v14 > 0x28)
      {
        goto LABEL_11;
      }

      if (((1 << v14) & 0x10010004700) == 0)
      {
        if (((1 << v14) & 0x600006) == 0)
        {
          if (((1 << v14) & 0x8000C8) != 0)
          {
            v17 = [v16 regionByUnioningEveryRangeInRegionWithRange:v15 | 0x1000100000000];
          }

LABEL_11:
          if (v10)
          {
            goto LABEL_12;
          }

          goto LABEL_15;
        }

        v17 = [v16 regionByUnioningEveryRangeInRegionWithRange:v23 | 0x1000100000000];
      }

      v9 = 1;
      if (v10)
      {
LABEL_12:
        v10 = [v10 regionByAddingRegion:v17];
        continue;
      }

LABEL_15:
      v10 = v17;
    }

    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);
  if (v9)
  {
    TSTMasterLayoutInvalidateStrokeDefaults(self);
  }

  v18 = v21;
  TableNumberOfRows = v22;
LABEL_22:
  v19 = [v10 regionByIntersectingRange:(v18 << 32) | (TableNumberOfRows << 48)];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__TSTMasterLayout_regionForStrokeValidationFromChangeDescriptors___block_invoke;
  v25[3] = &unk_279D4A4E8;
  v25[4] = self;
  [v19 enumerateCellRangesUsingBlock:v25];
  return v19;
}

- (void)validateStrokesForRegion:(id)a3 regionAlreadyValidated:(id)a4
{
  v5 = [a3 regionBySubtractingRegion:a4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__TSTMasterLayout_validateStrokesForRegion_regionAlreadyValidated___block_invoke;
  v6[3] = &unk_279D4A4E8;
  v6[4] = self;
  [v5 enumerateCellRangesUsingBlock:v6];
}

void __67__TSTMasterLayout_validateStrokesForRegion_regionAlreadyValidated___block_invoke(uint64_t a1, unint64_t a2)
{
  v6 = [[TSTLayoutCellIterator alloc] initWithMasterLayout:*(a1 + 32) range:a2 flags:2];
  v7 = 0xFFFFLL;
  v8 = 0xFFFFLL;
LABEL_2:
  v9 = v7;
  v7 = v8;
LABEL_3:
  v8 = v7;
  while (1)
  {
    NextCell = TSTLayoutCellIteratorGetNextCell(v6, v13);
    v11 = *(a1 + 32);
    if (!NextCell)
    {
      break;
    }

    v2 = v2 & 0xFFFFFFFF00000000 | HIDWORD(v13[0]);
    v12 = [(TSTMasterLayout *)v11 modelCellIDForStrokesOfLayoutCellID:v2];
    if (v7 != v12)
    {
      v7 = v12;
      if (v9 == v12)
      {
        v7 = v9;
      }

      else if ([objc_msgSend(*(a1 + 32) "hiddenRowsColumnsCache")])
      {
        goto LABEL_3;
      }

      if (([objc_msgSend(*(a1 + 32) "hiddenRowsColumnsCache")] & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | HIDWORD(v13[0]);
        TSTMasterLayoutUpdateStrokesForCell(*(a1 + 32), v13[1], v3);
      }

      goto LABEL_2;
    }
  }

  TSTMasterLayoutSetStrokesValidForRange(v11, a2);
}

- (BOOL)useBandedFill
{
  if (![(TSTMasterLayout *)self isDynamicallySettingBandedFill])
  {
    return self->mUseBandedFill;
  }

  return [(TSTMasterLayout *)self dynamicBandedFill];
}

- (BOOL)shouldRowUseBandedFill:(unsigned __int16)a3
{
  v3 = a3;
  if (![(TSTMasterLayout *)self isDynamicallySettingBandedFill])
  {
    return ([(TSTMasterLayout *)self emptyFilteredTable]|| self->mCachedNumberOfHeaderRows <= v3) && ([(TSTHiddenRowsColumnsCache *)self->mHiddenRowsColumnsCache numberOfVisibleRowsFromHeader:v3]& 1) == 0;
  }

  return [(TSTMasterLayout *)self dynamicBandedFillSetting];
}

- (void)validateBandedFill
{
  if (!self->mBandedFillIsValid)
  {
    self->mBandedFillIsValid = 1;
    self->mUseBandedFill = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] useBandedFill];
    self->mBandedFillObject = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] bandedFillObject];
  }
}

- (void)validateTableRowsBehavior
{
  v3 = +[TSTConfiguration sharedTableConfiguration];
  if (self->mTableEnvironment == 1)
  {
    goto LABEL_2;
  }

  if (![v3 supportsAutoResizedTables])
  {
    v4 = 3;
    goto LABEL_7;
  }

  if (![(TSSStyle *)[(TSTTableModel *)[(TSTMasterLayout *)self tableModel] tableStyle] intValueForProperty:768])
  {
LABEL_2:
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

LABEL_7:
  self->mTableRowsBehavior = v4;
}

- (void)validateDefaultFontHeights
{
  if (!self->mTableDefaultFontHeightsAreValid)
  {
    v3 = [(TSTMasterLayout *)self tableModel];
    for (i = 0; i != 4; ++i)
    {
      v5 = objc_alloc_init(TSTCell);
      [(TSTTableModel *)v3 defaultCell:v5 forTableArea:i];
      v6 = objc_alloc_init(TSTCellStateForLayout);
      [(TSTCellStateForLayout *)v6 setModelCellID:0xFFFFFFLL];
      [(TSTCellStateForLayout *)v6 setCell:v5];
      [(TSTCellStateForLayout *)v6 setCellPropsRowHeight:0];
      [(TSTCellStateForLayout *)v6 setCellWraps:0];
      [(TSTCellStateForLayout *)v6 setPaddingInsets:0.0, 0.0, 0.0, 0.0];
      [(TSTCellStateForLayout *)v6 setMinSize:4294967300.0, 8.0];
      [(TSTCellStateForLayout *)v6 setMaxSize:4294967300.0, 4294967300.0];
      [(TSTCellStateForLayout *)v6 setForDrawing:0];
      [(TSTCellStateForLayout *)v6 setMergedRange:0xFFFFFFLL];
      [(TSTCellStateForLayout *)v6 setInDynamicLayout:0];
      [(TSTCellStateForLayout *)v6 setCellContents:@"Q"];
      [(TSTCellStateForLayout *)v6 setLayoutCacheFlags:0];
      [(TSTCellStateForLayout *)v6 setPageNumber:0];
      [(TSTCellStateForLayout *)v6 setPageCount:0];
      [(TSTMasterLayout *)self measureTextForLayoutState:v6];
      v7 = [(TSTCellStateForLayout *)v6 wpColumn];
      [(TSWPColumn *)v7 typographicBoundsForCell];
      [(TSWPColumn *)v7 frameBounds];
      v9 = v8;
      v10 = [-[TSTTableModel defaultCellStyleForTableArea:](v3 defaultCellStyleForTableArea:{i), "valueForProperty:", 904}];
      [v10 topInset];
      v12 = v11;
      [v10 leftInset];
      [v10 bottomInset];
      v14 = v13;
      [v10 rightInset];
      self->mTableDefaultFontHeightForArea[i] = v9 + v12 + v14;
    }

    self->mTableDefaultFontHeightsAreValid = 1;
  }
}

- (void)calculateRawTableSize:(CGSize *)a3 andStrokeDelta:(CGSize *)a4
{
  v6 = MEMORY[0x277CBF3A8];
  *a4 = *MEMORY[0x277CBF3A8];
  *a3 = *v6;
  v23 = [(TSTMasterLayout *)self dynamicRepResize];
  [(TSTMasterLayout *)self setDynamicRepResize:0];
  v7 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] range];
  v8 = v7;
  v9 = *&v7 >> 16;
  v10 = HIWORD(*&v7);
  width = v6->width;
  height = v6->height;
  if (HIWORD(*&v7) > v7.var0.var0)
  {
    var0 = v7.var0;
    do
    {
      height = height + TSTMasterLayoutHeightOfRow(self, var0.var0, 0, 0, 1, 1);
      ++*&var0;
    }

    while (v10 > var0.var0);
  }

  var1 = v8.var0.var1;
  if (v8.var1.var0 > v8.var0.var1)
  {
    v15 = v9;
    do
    {
      width = width + TSTMasterLayoutWidthOfColumn(self, v15++, 1, 0, 1);
    }

    while (v8.var1.var0 > v15);
  }

  v16 = TSTMasterLayoutStrokeHeightOfGridRow(self, v8.var0.var0, 0, 0xFFFFFFFF);
  v17 = height + (v16 + TSTMasterLayoutStrokeHeightOfGridRow(self, (v8.var0.var0 + v10 - 1) + 1, 0, 0xFFFFFFFF)) * 0.5;
  v18 = TSTMasterLayoutStrokeWidthOfGridColumn(self, v8.var0.var1, 0, 0xFFFFFFFF);
  v19 = TSTMasterLayoutStrokeWidthOfGridColumn(self, (LOBYTE(v8.var1.var0) + v8.var0.var1 - 1) + 1, 0, 0xFFFFFFFF);
  if (v10 <= v8.var0.var0)
  {
    v21 = a3->height;
    v20 = a4;
  }

  else
  {
    v20 = a4;
    do
    {
      v21 = TSTMasterLayoutHeightOfRow(self, v8.var0.var0, 0, 0, 0, 1) + a3->height;
      a3->height = v21;
      ++*&v8.var0;
    }

    while (v10 > v8.var0.var0);
  }

  v20->height = v17 - v21;
  if (v8.var1.var0 <= var1)
  {
    v22 = a3->width;
  }

  else
  {
    do
    {
      v22 = TSTMasterLayoutWidthOfColumn(self, v9, 0, 0, 1) + a3->width;
      a3->width = v22;
      LODWORD(v9) = v9 + 1;
    }

    while (v8.var1.var0 > v9);
  }

  v20->width = width + (v18 + v19) * 0.5 - v22;

  [(TSTMasterLayout *)self setDynamicRepResize:v23];
}

- (void)beginDynamicMode:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)[(TSTMasterLayout *)self dynamicLayouts] addObject:a3];
    -[TSTMasterLayout setDynamicSavedLayoutGeometry:](self, "setDynamicSavedLayoutGeometry:", [a3 geometry]);
  }

  self->mInDynamicLayoutMode = 1;
}

- (void)p_cancelDynamicRowColCountChanges
{
  mDynamicColumnAdjustment = self->mDynamicColumnAdjustment;
  if (mDynamicColumnAdjustment)
  {
    [(TSTMasterLayout *)self updateDynamicChangeRowOrColumnCount:1 count:-mDynamicColumnAdjustment newlyAddedElementSize:self->mDynamicAddOrRemoveColumnElementSize];
  }

  mDynamicRowAdjustment = self->mDynamicRowAdjustment;
  if (mDynamicRowAdjustment)
  {
    mDynamicAddOrRemoveRowElementSize = self->mDynamicAddOrRemoveRowElementSize;

    [(TSTMasterLayout *)self updateDynamicChangeRowOrColumnCount:0 count:-mDynamicRowAdjustment newlyAddedElementSize:mDynamicAddOrRemoveRowElementSize];
  }
}

- (void)cancelDynamicModeChanges
{
  p_mDynamicHidingContent = &self->mDynamicHidingContent;
  [(TSTMasterLayout *)self p_cancelDynamicRowColCountChanges];
  self->mDynamicColumnAdjustment = 0;
  self->mDynamicColumnTabSize = 0.0;
  self->mDynamicAddOrRemoveColumnElementSize = 0.0;
  self->mDynamicAddOrRemoveRowElementSize = 0.0;
  *&self->mDynamicBandedFill = 0;
  self->mDynamicFontColorCellRange = 0xFFFFFFLL;
  mDynamicHidingRowsCols = self->mDynamicHidingRowsCols;
  if (self->mDynamicHidingRowsCols.origin.row != 0xFFFF)
  {
    v7 = (*&mDynamicHidingRowsCols & 0xFF0000) == 16711680;
    v5 = *&mDynamicHidingRowsCols & 0xFFFF00000000;
    v6 = HIWORD(*&mDynamicHidingRowsCols);
    v7 = v7 || v6 == 0;
    if (!v7 && v5 != 0)
    {
      [(TSTMasterLayout *)self updateDynamicHidingRowsCols:self->mDynamicHidingRowsColsDirection hidingCellRange:0xFFFFFFLL];
      self->mDynamicHidingRowsCols = 0xFFFFFFLL;
    }
  }

  *&v9 = 0xFFFFFFLL;
  *(&v9 + 1) = 0xFFFFFFLL;
  *&p_mDynamicHidingContent->origin.row = v9;
  *&self->mDynamicRepResize = 0;
  self->mDynamicResizingColumns = 0;
  self->mDynamicResizingColumnAdjustment = 0.0;
  p_mDynamicHidingContent[4] = 0xFFFFFFLL;
  self->mDynamicResizingRows = 0;
  *&p_mDynamicHidingContent[6].size.numberOfRows = 0xFFFFFFLL;
  self->mDynamicResizingRowAdjustment = 0.0;
  self->mDynamicRevealingRowsCols = 0xFFFFFFLL;
  self->mDynamicRowAdjustment = 0;
  self->mDynamicRowTabSize = 0.0;
  self->mDynamicTableNameResize = 0.0;
}

- (void)endDynamicMode
{
  self->mDynamicColumnSwapDelegate = 0;

  self->mDynamicRowSwapDelegate = 0;
  self->mDynamicContentDelegate = 0;

  self->mDynamicFontColor = 0;
  self->mDynamicSelectionRegion = 0;

  self->mDynamicInfoGeometry = 0;
  [(TSTMasterLayout *)self cancelDynamicModeChanges];
  self->mCachedNumberOfHeaderColumns = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] numberOfHeaderColumns];
  self->mCachedNumberOfHeaderRows = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] numberOfHeaderRows];
  self->mCachedNumberOfFooterRows = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] numberOfFooterRows];
  self->mInDynamicLayoutMode = 0;
  [(NSMutableSet *)[(TSTMasterLayout *)self dynamicLayouts] removeAllObjects];
  [(TSTMasterLayout *)self setDynamicSavedLayoutGeometry:0];
  self->mDynamicTableNameResize = 0.0;
  self->mDynamicSuppressingConditionalStylesCellID = 0xFFFFFF;
}

- (void)addDynamicLayoutBeginIfNecessary:(id)a3
{
  if (self->mInDynamicLayoutMode)
  {
    v4 = [(TSTMasterLayout *)self dynamicLayouts];

    [(NSMutableSet *)v4 addObject:a3];
  }

  else
  {

    [(TSTMasterLayout *)self beginDynamicMode:?];
  }
}

- (void)removeDynamicLayoutEndIfNecessary:(id)a3
{
  if ([(NSMutableSet *)[(TSTMasterLayout *)self dynamicLayouts] count]< 2)
  {

    [(TSTMasterLayout *)self endDynamicMode];
  }

  else
  {
    v5 = [(TSTMasterLayout *)self dynamicLayouts];

    [(NSMutableSet *)v5 removeObject:a3];
  }
}

- (BOOL)cell:(id *)a3 forCellID:(id)a4
{
  mDynamicContentDelegate = self->mDynamicContentDelegate;
  if (mDynamicContentDelegate)
  {
    if (!-[TSTLayoutDynamicContentProtocol dynamicContentMustDrawOnMainThread](mDynamicContentDelegate, "dynamicContentMustDrawOnMainThread") || (LODWORD(mDynamicContentDelegate) = [MEMORY[0x277CCACC8] isMainThread], mDynamicContentDelegate))
    {
      if (([(TSTLayoutDynamicContentProtocol *)self->mDynamicContentDelegate cell:a3 forCellID:*&a4]& 1) == 0)
      {
        v8 = objc_alloc_init(TSTCell);
        if (TSTCellAtCellID([(TSTMasterLayout *)self tableModel], *&a4, v8))
        {
          v9 = 1;
        }

        else
        {
          v9 = v8 == 0;
        }

        if (v9 || !*(&v8->mPrivate + 1))
        {
          LOBYTE(mDynamicContentDelegate) = 0;
          return mDynamicContentDelegate;
        }

        *a3 = v8;
      }

      LOBYTE(mDynamicContentDelegate) = 1;
    }
  }

  return mDynamicContentDelegate;
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)modelCellIDForLayoutCellID:(id)a3
{
  v3 = *&a3.var0;
  v5 = *&a3.var0 >> 16;
  if ([(TSTMasterLayout *)self isDynamicallySwappingRows])
  {
    v6 = [(TSTLayoutDynamicRowSwapProtocol *)[(TSTMasterLayout *)self dynamicRowSwapDelegate] modelRowForLayoutRow:v3];
  }

  else
  {
    v6 = v3;
  }

  v7 = v3 >> 24;
  if ([(TSTMasterLayout *)self isDynamicallySwappingColumns])
  {
    LOBYTE(v5) = [(TSTLayoutDynamicColumnSwapProtocol *)[(TSTMasterLayout *)self dynamicColumnSwapDelegate] modelColForLayoutCol:v5];
  }

  if ([(TSTMasterLayout *)self isDynamicallyChangingRowCount])
  {
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
    if ([(TSTMasterLayout *)self emptyFilteredTable])
    {
      mCachedNumberOfFooterRows = 0;
    }

    else
    {
      mCachedNumberOfFooterRows = self->mCachedNumberOfFooterRows;
    }

    v10 = TableNumberOfRows - mCachedNumberOfFooterRows;
    mDynamicRowAdjustment = self->mDynamicRowAdjustment;
    if (v3 >= v10 - mDynamicRowAdjustment)
    {
      v12 = -1;
    }

    else
    {
      v12 = v6;
    }

    if (v3 >= v10 - mDynamicRowAdjustment)
    {
      v13 = -1;
    }

    else
    {
      v13 = v5;
    }

    if (v3 >= v10 - mDynamicRowAdjustment)
    {
      v14 = 0;
    }

    else
    {
      v14 = v3 >> 24;
    }

    v15 = v6 - mDynamicRowAdjustment;
    if (v3 >= v10)
    {
      v6 = v15;
    }

    else
    {
      v6 = v12;
    }

    if (v3 < v10)
    {
      LOBYTE(v5) = v13;
      LODWORD(v7) = v14;
    }
  }

  return ((v5 << 16) | (v7 << 24) | v6);
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)modelCellIDForStrokesOfLayoutCellID:(id)a3
{
  v5 = *&a3.var0 >> 16;
  if ([(TSTMasterLayout *)self isDynamicallySwappingRows])
  {
    var0 = [(TSTLayoutDynamicRowSwapProtocol *)[(TSTMasterLayout *)self dynamicRowSwapDelegate] modelRowForLayoutRow:a3.var0];
  }

  else
  {
    var0 = a3.var0;
  }

  if ([(TSTMasterLayout *)self isDynamicallySwappingColumns])
  {
    LOBYTE(v5) = [(TSTLayoutDynamicColumnSwapProtocol *)[(TSTMasterLayout *)self dynamicColumnSwapDelegate] modelColForLayoutCol:v5];
  }

  if ([(TSTMasterLayout *)self isDynamicallyChangingRowCount])
  {
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
    if ([(TSTMasterLayout *)self emptyFilteredTable])
    {
      mCachedNumberOfFooterRows = 0;
    }

    else
    {
      mCachedNumberOfFooterRows = self->mCachedNumberOfFooterRows;
    }

    v9 = TableNumberOfRows - mCachedNumberOfFooterRows;
    mDynamicRowAdjustment = self->mDynamicRowAdjustment;
    if (a3.var0 >= v9)
    {
      var0 -= mDynamicRowAdjustment;
    }

    else
    {
      v11 = v9 - mDynamicRowAdjustment;
      if (a3.var0 >= v11)
      {
        var0 = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] previousVisibleRow:(v11 - 1)];
      }
    }
  }

  if ([(TSTMasterLayout *)self isDynamicallyChangingColumnCount])
  {
    v12 = TSTMasterLayoutGetTableNumberOfColumns(self) - self->mDynamicColumnAdjustment;
    if (v12 <= a3.var1)
    {
      LOBYTE(v5) = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] previousVisibleColumn:(v12 - 1)];
    }
  }

  return (*&a3 & 0xFF000000 | (v5 << 16) | var0);
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)layoutCellIDForModelCellID:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(TSTMasterLayout *)self isDynamicallySwappingRows])
  {
    var0 = [(TSTLayoutDynamicRowSwapProtocol *)[(TSTMasterLayout *)self dynamicRowSwapDelegate] layoutRowForModelRow:a3.var0];
  }

  if ([(TSTMasterLayout *)self isDynamicallySwappingColumns])
  {
    v7 = [(TSTLayoutDynamicColumnSwapProtocol *)[(TSTMasterLayout *)self dynamicColumnSwapDelegate] layoutColForModelCol:var1];
  }

  else
  {
    v7 = var1;
  }

  if ([(TSTMasterLayout *)self isDynamicallyChangingRowCount])
  {
    v8 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] footerRowRange];
    if (HIWORD(*&v8))
    {
      if ((*&v8 & 0xFFFF00000000) != 0 && v8.var0.var0 <= a3.var0 && (v8.var0.var0 + v8.var1.var1 - 1) >= a3.var0 && v8.var0.var1 <= var1 && var1 <= (LOBYTE(v8.var1.var0) + v8.var0.var1 - 1))
      {
        var0 += LOWORD(self->mDynamicRowAdjustment);
      }
    }
  }

  return (*&a3 & 0xFF000000 | (v7 << 16) | var0);
}

- (BOOL)isDynamicallyResizing:(int)a3
{
  if (a3)
  {
    if (a3 != 1 || !self->mDynamicResizingColumns)
    {
      return 0;
    }

    mDynamicResizingColumnRange = self->mDynamicResizingColumnRange;
  }

  else
  {
    if (!self->mDynamicResizingRows)
    {
      return 0;
    }

    mDynamicResizingColumnRange = self->mDynamicResizingRowRange;
  }

  if (mDynamicResizingColumnRange.origin.row != 0xFFFF)
  {
    v6 = (*&mDynamicResizingColumnRange & 0xFF0000) == 16711680;
    v4 = *&mDynamicResizingColumnRange & 0xFFFF00000000;
    v5 = HIWORD(*&mDynamicResizingColumnRange);
    v6 = v6 || v5 == 0;
    if (!v6 && v4 != 0)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)isDynamicallyResizing:(int)a3 rowColIndex:(unsigned __int16)a4
{
  if (!a3)
  {
    if (self->mDynamicResizingRows)
    {
      mDynamicResizingRowRange = self->mDynamicResizingRowRange;
      v7 = !HIWORD(*&mDynamicResizingRowRange) || (*&mDynamicResizingRowRange & 0xFFFF00000000) == 0;
      v8 = v7 || mDynamicResizingRowRange.origin.column > a4;
      if (!v8 && a4 <= (LOBYTE(mDynamicResizingRowRange.size.numberOfColumns) + mDynamicResizingRowRange.origin.column - 1))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a3 != 1 || !self->mDynamicResizingColumns)
  {
    return 0;
  }

  mDynamicResizingColumnRange = self->mDynamicResizingColumnRange;
  v5 = !HIWORD(*&mDynamicResizingColumnRange) || (*&mDynamicResizingColumnRange & 0xFFFF00000000) == 0;
  return !v5 && a4 >= mDynamicResizingColumnRange.origin.row && a4 <= (mDynamicResizingColumnRange.origin.row + mDynamicResizingColumnRange.size.numberOfRows - 1);
}

- (BOOL)isDynamicallyResizingCellID:(id)a3
{
  if (!self->mDynamicResizingRows || self->mDynamicResizingRowAdjustment == 0.0 || ((mDynamicResizingRowRange = self->mDynamicResizingRowRange, HIWORD(*&mDynamicResizingRowRange)) ? (v4 = (*&mDynamicResizingRowRange & 0xFFFF00000000) == 0) : (v4 = 1), v4))
  {
    v9 = 0;
  }

  else
  {
    v9 = (mDynamicResizingRowRange.origin.row + mDynamicResizingRowRange.size.numberOfRows - 1) >= a3.var0;
    if (*&self->mDynamicResizingRowRange > a3.var0)
    {
      v9 = 0;
    }
  }

  if (self->mDynamicResizingColumns && self->mDynamicResizingColumnAdjustment != 0.0)
  {
    mDynamicResizingColumnRange = self->mDynamicResizingColumnRange;
    if (HIWORD(*&mDynamicResizingColumnRange))
    {
      v6 = (*&mDynamicResizingColumnRange & 0xFFFF00000000) == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 && mDynamicResizingColumnRange.origin.column <= a3.var1)
    {
      v9 |= a3.var1 <= (LOBYTE(mDynamicResizingColumnRange.size.numberOfColumns) + mDynamicResizingColumnRange.origin.column - 1);
    }
  }

  return v9 & 1;
}

- (NSIndexSet)visibleRowIndices
{
  v2 = [(TSTMasterLayout *)self hiddenRowsColumnsCache];

  return [(TSTHiddenRowsColumnsCache *)v2 visibleRowIndices];
}

- (NSIndexSet)visibleColumnIndices
{
  v2 = [(TSTMasterLayout *)self hiddenRowsColumnsCache];

  return [(TSTHiddenRowsColumnsCache *)v2 visibleColumnIndices];
}

- (TSTLayout)dynamicLayout
{
  v2 = [(TSTMasterLayout *)self dynamicLayouts];

  return [(NSMutableSet *)v2 anyObject];
}

- (BOOL)isDynamicallyHidingRowsCols
{
  mDynamicHidingRowsCols = self->mDynamicHidingRowsCols;
  if (self->mDynamicHidingRowsCols.origin.row == 0xFFFF)
  {
    return 0;
  }

  v3 = *&mDynamicHidingRowsCols & 0xFF0000;
  v5 = (*&mDynamicHidingRowsCols & 0xFFFF00000000) == 0;
  v4 = HIWORD(*&mDynamicHidingRowsCols);
  v5 = v5 || v4 == 0;
  v6 = !v5;
  return v3 != 16711680 && v6;
}

- (BOOL)isDynamicallyHidingRowsCols:(int)a3 rowColIndex:(unsigned __int16)a4
{
  mDynamicHidingRowsCols = self->mDynamicHidingRowsCols;
  if (self->mDynamicHidingRowsCols.origin.row == 0xFFFF)
  {
    return 0;
  }

  v5 = (*&mDynamicHidingRowsCols & 0xFF0000) == 0xFF0000 || HIWORD(*&mDynamicHidingRowsCols) == 0;
  v6 = v5 || (*&mDynamicHidingRowsCols & 0xFFFF00000000) == 0;
  if (v6 || self->mDynamicHidingRowsColsDirection != a3)
  {
    return 0;
  }

  if (a3 == 1)
  {
    return a4 >= mDynamicHidingRowsCols.origin.column && a4 <= (LOBYTE(mDynamicHidingRowsCols.size.numberOfColumns) + mDynamicHidingRowsCols.origin.column - 1);
  }

  return !a3 && a4 >= mDynamicHidingRowsCols.origin.row && a4 <= (mDynamicHidingRowsCols.origin.row + mDynamicHidingRowsCols.size.numberOfRows - 1);
}

- (BOOL)isDynamicallyHidingRowsColsCellID:(id)a3
{
  mDynamicHidingRowsCols = self->mDynamicHidingRowsCols;
  result = 0;
  if (self->mDynamicHidingRowsCols.origin.row != 0xFFFF)
  {
    v4 = (*&mDynamicHidingRowsCols & 0xFF0000) == 0xFF0000 || HIWORD(*&mDynamicHidingRowsCols) == 0;
    v5 = v4 || (*&mDynamicHidingRowsCols & 0xFFFF00000000) == 0;
    if (!v5 && *&self->mDynamicHidingRowsCols <= a3.var0 && (mDynamicHidingRowsCols.origin.row + mDynamicHidingRowsCols.size.numberOfRows - 1) >= a3.var0 && a3.var1 >= mDynamicHidingRowsCols.origin.column && a3.var1 <= (LOBYTE(mDynamicHidingRowsCols.size.numberOfColumns) + mDynamicHidingRowsCols.origin.column - 1))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isDynamicallyHidingContentOfCellID:(id)a3
{
  mDynamicHidingContent = self->mDynamicHidingContent;
  result = 0;
  if (self->mDynamicHidingContent.origin.row != 0xFFFF)
  {
    v4 = (*&mDynamicHidingContent & 0xFF0000) == 0xFF0000 || HIWORD(*&mDynamicHidingContent) == 0;
    v5 = v4 || (*&mDynamicHidingContent & 0xFFFF00000000) == 0;
    if (!v5 && *&self->mDynamicHidingContent <= a3.var0 && (mDynamicHidingContent.origin.row + mDynamicHidingContent.size.numberOfRows - 1) >= a3.var0 && a3.var1 >= mDynamicHidingContent.origin.column && a3.var1 <= (LOBYTE(mDynamicHidingContent.size.numberOfColumns) + mDynamicHidingContent.origin.column - 1))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isDynamicallyHidingTextOfCellID:(id)a3
{
  mDynamicHidingText = self->mDynamicHidingText;
  result = 0;
  if (self->mDynamicHidingText.origin.row != 0xFFFF)
  {
    v4 = (*&mDynamicHidingText & 0xFF0000) == 0xFF0000 || HIWORD(*&mDynamicHidingText) == 0;
    v5 = v4 || (*&mDynamicHidingText & 0xFFFF00000000) == 0;
    if (!v5 && *&self->mDynamicHidingText <= a3.var0 && (mDynamicHidingText.origin.row + mDynamicHidingText.size.numberOfRows - 1) >= a3.var0 && a3.var1 >= mDynamicHidingText.origin.column && a3.var1 <= (LOBYTE(mDynamicHidingText.size.numberOfColumns) + mDynamicHidingText.origin.column - 1))
    {
      return 1;
    }
  }

  return result;
}

- (void)updateDynamicResize:(int)a3 resizingRange:(id)a4 resizeAdjustment:(double)a5
{
  if (a3 == 1)
  {
    p_mDynamicResizingColumnAdjustment = &self->mDynamicResizingColumnAdjustment;
    mDynamicResizingColumnRange = self->mDynamicResizingColumnRange;
    v10 = 452;
    v11 = 450;
    if (self->mDynamicResizingColumnAdjustment == 0.0)
    {
      if (mDynamicResizingColumnRange.origin.row == 0xFFFFLL)
      {
        goto LABEL_27;
      }

      if ((*&mDynamicResizingColumnRange & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_27;
      }

      v10 = 452;
      v11 = 450;
      if (!HIWORD(*&mDynamicResizingColumnRange) || (*&mDynamicResizingColumnRange & 0xFFFF00000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 3448;
      if (mDynamicResizingColumnRange.origin.row == 0xFFFFLL || (*&mDynamicResizingColumnRange & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_26;
      }
    }

    v10 = 452;
    v11 = 450;
    v13 = 3448;
    if (HIWORD(*&mDynamicResizingColumnRange) && (*&mDynamicResizingColumnRange & 0xFFFF00000000) != 0)
    {
      v10 = 452;
      v11 = 450;
      if (self->mDynamicResizingColumns)
      {
        goto LABEL_27;
      }

      v13 = 3448;
    }

LABEL_26:
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMasterLayout updateDynamicResize:resizingRange:resizeAdjustment:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), v13, @"Dynamic resize invariants violated."}];
    goto LABEL_27;
  }

  p_mDynamicResizingColumnAdjustment = &self->mDynamicResizingRowAdjustment;
  mDynamicResizingRowRange = self->mDynamicResizingRowRange;
  v10 = 474;
  v11 = 472;
  if (self->mDynamicResizingRowAdjustment != 0.0)
  {
    v13 = 3457;
    if (mDynamicResizingRowRange.origin.row == 0xFFFFLL || (*&mDynamicResizingRowRange & 0xFF0000) == 0xFF0000)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (mDynamicResizingRowRange.origin.row != 0xFFFFLL && (*&mDynamicResizingRowRange & 0xFF0000) != 0xFF0000)
  {
    v10 = 474;
    v11 = 472;
    if (HIWORD(*&mDynamicResizingRowRange))
    {
      if ((*&mDynamicResizingRowRange & 0xFFFF00000000) != 0)
      {
LABEL_22:
        v10 = 474;
        v11 = 472;
        v13 = 3457;
        if (HIWORD(*&mDynamicResizingRowRange) && (*&mDynamicResizingRowRange & 0xFFFF00000000) != 0)
        {
          v10 = 474;
          v11 = 472;
          if (self->mDynamicResizingRows)
          {
            goto LABEL_27;
          }

          v13 = 3457;
        }

        goto LABEL_26;
      }
    }
  }

LABEL_27:
  *(&self->super.isa + v11) = 1;
  *(&self->super.isa + v10) = a4;
  *p_mDynamicResizingColumnAdjustment = a5;
}

- (BOOL)isDynamicallyRevealingRowsCols
{
  mDynamicRevealingRowsCols = self->mDynamicRevealingRowsCols;
  if (self->mDynamicRevealingRowsCols.origin.row == 0xFFFF)
  {
    return 0;
  }

  v3 = *&mDynamicRevealingRowsCols & 0xFF0000;
  v5 = (*&mDynamicRevealingRowsCols & 0xFFFF00000000) == 0;
  v4 = HIWORD(*&mDynamicRevealingRowsCols);
  v5 = v5 || v4 == 0;
  v6 = !v5;
  return v3 != 16711680 && v6;
}

- (BOOL)isDynamicallyRevealingRowsCols:(int)a3 rowColIndex:(unsigned __int16)a4
{
  mDynamicRevealingRowsCols = self->mDynamicRevealingRowsCols;
  if (self->mDynamicRevealingRowsCols.origin.row == 0xFFFF)
  {
    return 0;
  }

  v5 = (*&mDynamicRevealingRowsCols & 0xFF0000) == 0xFF0000 || HIWORD(*&mDynamicRevealingRowsCols) == 0;
  v6 = v5 || (*&mDynamicRevealingRowsCols & 0xFFFF00000000) == 0;
  if (v6 || self->mDynamicRevealingRowsColsDirection != a3)
  {
    return 0;
  }

  if (a3 == 1)
  {
    return a4 >= mDynamicRevealingRowsCols.origin.column && a4 <= (LOBYTE(mDynamicRevealingRowsCols.size.numberOfColumns) + mDynamicRevealingRowsCols.origin.column - 1);
  }

  return !a3 && a4 >= mDynamicRevealingRowsCols.origin.row && a4 <= (mDynamicRevealingRowsCols.origin.row + mDynamicRevealingRowsCols.size.numberOfRows - 1);
}

- (BOOL)isDynamicallyChangingRowOrColumnCount
{
  if ([(TSTMasterLayout *)self isDynamicallyChangingRowCount])
  {
    return 1;
  }

  return [(TSTMasterLayout *)self isDynamicallyChangingColumnCount];
}

- (void)updateDynamicSelectionRegion:(id)a3
{
  mDynamicSelectionRegion = self->mDynamicSelectionRegion;
  if (mDynamicSelectionRegion)
  {

    self->mDynamicSelectionRegion = 0;
  }

  if (a3)
  {
    v6 = a3;
    self->mDynamicSelectionRegion = a3;
  }
}

- (BOOL)updateDynamicChangeRowOrColumnCount:(int)a3 count:(int)a4 newlyAddedElementSize:(double)a5
{
  if (!a4)
  {
    return 1;
  }

  v6 = *&a4;
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  v11 = [(TSTMasterLayout *)self tableModel];
  if (!a3)
  {
    v15 = [(TSTTableModel *)v11 numberOfRows]+ v6 + self->mDynamicRowAdjustment;
    self->mDynamicResizingRows = 1;
    self->mDynamicAddOrRemoveRowElementSize = a5;
    if (v15 <= SLODWORD(self->mCachedMaxNumberOfRows))
    {
      v16 = [(TSTMasterLayout *)self emptyFilteredTable]? 0 : self->mCachedNumberOfHeaderRows;
      v23 = [(TSTMasterLayout *)self emptyFilteredTable]? 0 : self->mCachedNumberOfFooterRows;
      if (v15 > v23 + v16)
      {
        p_mDynamicRowAdjustment = &self->mDynamicRowAdjustment;
        TSTLayoutInvalidateLayoutSpaceTableOffsets([(TSTMasterLayout *)self dynamicLayout]);
        TSTLayoutInvalidateLayoutSpaceCoordinates([(TSTMasterLayout *)self dynamicLayout]);
        v24 = TableNumberOfColumns << 16;
        if ([(TSTMasterLayout *)self emptyFilteredTable])
        {
          mCachedNumberOfFooterRows = 0;
        }

        else
        {
          mCachedNumberOfFooterRows = self->mCachedNumberOfFooterRows;
        }

        v26 = v24 << 16;
        if (v6 < 1)
        {
          v27 = (TableNumberOfRows + v6 - mCachedNumberOfFooterRows);
          v19 = v27 | (-v6 << 48) | v26;
          v20 = v27 | ((mCachedNumberOfFooterRows - v6 + 1) << 48) | v26;
          v21 = self;
          v22 = 21;
        }

        else
        {
          v19 = (TableNumberOfRows - mCachedNumberOfFooterRows) | (v6 << 48) | v26;
          v20 = (TableNumberOfRows + ~mCachedNumberOfFooterRows) | ((v6 + mCachedNumberOfFooterRows + 1) << 48) | v26;
          v21 = self;
          v22 = 22;
        }

        goto LABEL_27;
      }
    }

    return 0;
  }

  v12 = [(TSTTableModel *)v11 numberOfColumns]+ v6 + self->mDynamicColumnAdjustment;
  self->mDynamicResizingColumns = 1;
  self->mDynamicAddOrRemoveColumnElementSize = a5;
  if (v12 > SLODWORD(self->mCachedMaxNumberOfColumns))
  {
    return 0;
  }

  v13 = [(TSTMasterLayout *)self emptyFilteredTable]? 0 : self->mCachedNumberOfHeaderColumns;
  if (v12 <= v13)
  {
    return 0;
  }

  p_mDynamicRowAdjustment = &self->mDynamicColumnAdjustment;
  v18 = TableNumberOfRows << 48;
  TSTLayoutInvalidateLayoutSpaceTableOffsets([(TSTMasterLayout *)self dynamicLayout]);
  TSTLayoutInvalidateLayoutSpaceCoordinates([(TSTMasterLayout *)self dynamicLayout]);
  if (v6 < 1)
  {
    v19 = v18 | (((TableNumberOfColumns + v6) - (v6 << 16)) << 16);
    v20 = (((TableNumberOfColumns + v6) << 16) + 16711680) & 0xFF0000 | ((1 - v6) << 32) | v18;
    v21 = self;
    v22 = 1;
  }

  else
  {
    v19 = v18 | ((TableNumberOfColumns | (v6 << 16)) << 16);
    v20 = ((v6 + 1) << 32) | ((TableNumberOfColumns - 1) << 16) | v18;
    v21 = self;
    v22 = 2;
  }

LABEL_27:
  [(TSTMasterLayout *)v21 addChangeDescriptorWithType:v22 andCellRange:v19 andStrokeRange:v20];
  *p_mDynamicRowAdjustment += v6;
  [(TSTLayout *)[(TSTMasterLayout *)self dynamicLayout] invalidateSize];
  [(TSTLayout *)[(TSTMasterLayout *)self dynamicLayout] validate];
  return 1;
}

- (void)updateDynamicHidingRowsCols:(int)a3 hidingCellRange:(id)a4
{
  mDynamicHidingRowsColsDirection = self->mDynamicHidingRowsColsDirection;
  mDynamicHidingRowsCols = self->mDynamicHidingRowsCols;
  if (mDynamicHidingRowsColsDirection != a3 || ((*&mDynamicHidingRowsCols ^ *&a4) & 0xFFFFFFFF00FFFFFFLL) != 0)
  {
    if (mDynamicHidingRowsCols.origin.row != 0xFFFF)
    {
      v10 = (*&mDynamicHidingRowsCols & 0xFF0000) == 0xFF0000 || mDynamicHidingRowsCols.size.numberOfRows == 0;
      if (!v10 && (*&mDynamicHidingRowsCols & 0xFFFF00000000) != 0)
      {
        if (mDynamicHidingRowsColsDirection == 1)
        {
          v12 = 5;
        }

        else
        {
          v12 = 26;
        }

        [(TSTMasterLayout *)self addChangeDescriptorWithType:v12 andCellRange:mDynamicHidingRowsCols andStrokeRange:*&self->mDynamicHidingRowsCols];
      }
    }

    if (a4.var0.var0 != 0xFFFF && (*&a4 & 0xFF0000) != 0xFF0000 && HIWORD(*&a4) && (*&a4 & 0xFFFF00000000) != 0)
    {
      if (a3 == 1)
      {
        v13 = 5;
      }

      else
      {
        v13 = 26;
      }

      [(TSTMasterLayout *)self addChangeDescriptorWithType:v13 andCellRange:a4 andStrokeRange:a4];
    }

    self->mDynamicHidingRowsCols = a4;
    self->mDynamicHidingRowsColsDirection = a3;
  }
}

- (void)updateDynamicRevealingRowsCols:(int)a3 revealingCellRange:(id)a4
{
  mDynamicRevealingRowsColsDirection = self->mDynamicRevealingRowsColsDirection;
  mDynamicRevealingRowsCols = self->mDynamicRevealingRowsCols;
  if (mDynamicRevealingRowsColsDirection != a3 || ((*&mDynamicRevealingRowsCols ^ *&a4) & 0xFFFFFFFF00FFFFFFLL) != 0)
  {
    if (mDynamicRevealingRowsCols.origin.row != 0xFFFF)
    {
      v10 = (*&mDynamicRevealingRowsCols & 0xFF0000) == 0xFF0000 || mDynamicRevealingRowsCols.size.numberOfRows == 0;
      if (!v10 && (*&mDynamicRevealingRowsCols & 0xFFFF00000000) != 0)
      {
        if (mDynamicRevealingRowsColsDirection == 1)
        {
          v12 = 5;
        }

        else
        {
          v12 = 26;
        }

        [(TSTMasterLayout *)self addChangeDescriptorWithType:v12 andCellRange:mDynamicRevealingRowsCols andStrokeRange:*&self->mDynamicRevealingRowsCols];
      }
    }

    if (a4.var0.var0 != 0xFFFF && (*&a4 & 0xFF0000) != 0xFF0000 && HIWORD(*&a4) && (*&a4 & 0xFFFF00000000) != 0)
    {
      if (a3 == 1)
      {
        v13 = 5;
      }

      else
      {
        v13 = 26;
      }

      [(TSTMasterLayout *)self addChangeDescriptorWithType:v13 andCellRange:a4 andStrokeRange:a4];
    }

    self->mDynamicRevealingRowsCols = a4;
    self->mDynamicRevealingRowsColsDirection = a3;
  }
}

- (void)updateDynamicContentDelegate:(id)a3
{
  mDynamicContentDelegate = self->mDynamicContentDelegate;
  if (mDynamicContentDelegate != a3)
  {
    if (mDynamicContentDelegate)
    {

      self->mDynamicContentDelegate = 0;
    }

    if (a3)
    {
      v6 = a3;
      self->mDynamicContentDelegate = a3;
    }
  }
}

- (void)updateDynamicFontColor:(id)a3 andRange:(id)a4
{
  mDynamicFontColor = self->mDynamicFontColor;
  if (mDynamicFontColor)
  {

    self->mDynamicFontColor = 0;
  }

  if (a3)
  {
    v8 = a3;
    self->mDynamicFontColor = a3;
  }

  self->mDynamicFontColorCellRange = a4;
}

- (void)updateDynamicRowSwapDelegate:(id)a3
{
  mDynamicRowSwapDelegate = self->mDynamicRowSwapDelegate;
  if (mDynamicRowSwapDelegate)
  {

    self->mDynamicRowSwapDelegate = 0;
  }

  if (a3)
  {
    v6 = a3;
    self->mDynamicRowSwapDelegate = a3;
  }
}

- (void)updateDynamicColumnSwapDelegate:(id)a3
{
  mDynamicColumnSwapDelegate = self->mDynamicColumnSwapDelegate;
  if (mDynamicColumnSwapDelegate)
  {

    self->mDynamicColumnSwapDelegate = 0;
  }

  if (a3)
  {
    v6 = a3;
    self->mDynamicColumnSwapDelegate = a3;
  }
}

- (BOOL)isDynamicallyChangingContent
{
  mDynamicContentDelegate = self->mDynamicContentDelegate;
  if (mDynamicContentDelegate)
  {
    if (!-[TSTLayoutDynamicContentProtocol dynamicContentMustDrawOnMainThread](mDynamicContentDelegate, "dynamicContentMustDrawOnMainThread") || (LODWORD(mDynamicContentDelegate) = [MEMORY[0x277CCACC8] isMainThread], mDynamicContentDelegate))
    {
      LOBYTE(mDynamicContentDelegate) = 1;
    }
  }

  return mDynamicContentDelegate;
}

- (BOOL)isGrouped
{
  [(TSDDrawableInfo *)[(TSTMasterLayout *)self tableInfo] parentInfo];
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (void)p_processChange:(id)a3 forChangeSource:(id)a4
{
  if ([a4 isEqual:{-[TSTMasterLayout tableInfo](self, "tableInfo")}])
  {
    objc_opt_class();
    [a3 details];
    v6 = TSUDynamicCast();
    if (!v6)
    {
      objc_opt_class();
      [a3 details];
      v7 = TSUDynamicCast();
      if (!v7)
      {
        return;
      }

      v8 = [v7 changedProperties];
      v9 = [v8 propertySetByIntersectingWithPropertySet:{+[TSWPParagraphStyle properties](TSWPParagraphStyle, "properties")}];
      v10 = [v8 propertySetByIntersectingWithPropertySet:{+[TSTCellStyle properties](TSTCellStyle, "properties")}];
      if (![v9 count] && !objc_msgSend(v10, "count"))
      {
        return;
      }

      v6 = [TSTChangeDescriptor changeDescriptorWithType:40 cellRange:[(TSTTableModel *)[(TSTMasterLayout *)self tableModel] range] strokeRange:[(TSTTableModel *)[(TSTMasterLayout *)self tableModel] range]];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    if ([v11 wpKind] == 5)
    {
      v12 = [(TSTEditingState *)[(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] editingState] editingCellID];
      v13 = [v11 hyperlinkCellID];
      if (v13 != 0xFFFF && (v13 & 0xFF0000) != 0xFF0000)
      {
        v12 = [v11 hyperlinkCellID];
      }

      v14 = *&v12 | 0x1000100000000;
      if (![(TSTMasterLayout *)self emptyFilteredTable])
      {
        v14 = TSTTableExpandCellRangeToCoverMergedCells([(TSTMasterLayout *)self tableModel], *&v12 | 0x1000100000000);
      }

      if (v14 != 0xFFFF && (v14 & 0xFF0000) != 0xFF0000 && HIWORD(v14) && (v14 & 0xFFFF00000000) != 0)
      {
        v6 = [TSTChangeDescriptor changeDescriptorWithType:33 cellRange:v14];
LABEL_19:

        [(TSTMasterLayout *)self addChangeDescriptor:v6];
      }
    }
  }
}

- (void)syncProcessChanges:(id)a3 forChangeSource:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 && [a3 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(a3);
          }

          [(TSTMasterLayout *)self p_processChange:*(*(&v11 + 1) + 8 * v10++) forChangeSource:a4];
        }

        while (v8 != v10);
        v8 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    if ([(TSTMasterLayout *)self tableInfo]== a4)
    {
      [(TSTLayout *)[(TSTTablePartitioner *)[(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] partitioner] scaledLayout] processChanges:a3];
    }
  }
}

- (void)addChangeDescriptorWithType:(int)a3 andCellRange:(id)a4 andStrokeRange:(id)a5
{
  v6 = [TSTChangeDescriptor changeDescriptorWithType:*&a3 cellRange:a4 strokeRange:a5];

  [(TSTMasterLayout *)self addChangeDescriptor:v6];
}

- (void)addChangeDescriptor:(id)a3
{
  if (a3)
  {
    mChangeDescriptors = self->mChangeDescriptors;
    objc_sync_enter(mChangeDescriptors);
    if ([a3 changeDescriptor] != 33 && objc_msgSend(a3, "changeDescriptor") != 29 || (objc_msgSend(-[NSMutableArray lastObject](-[TSTMasterLayout changeDescriptors](self, "changeDescriptors"), "lastObject"), "isEqual:", a3) & 1) == 0)
    {
      [(NSMutableArray *)[(TSTMasterLayout *)self changeDescriptors] addObject:a3];
    }

    objc_sync_exit(mChangeDescriptors);
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3
{
  v4 = [a3 changeNotifier];

  [(TSTMasterLayout *)self setChangeNotifier:v4];
}

- (void)wasRemovedFromDocumentRoot
{
  mChangeNotifier = self->mChangeNotifier;
  if (mChangeNotifier)
  {
    if (self->mTableInfo)
    {
      [(TSKChangeNotifier *)mChangeNotifier removeObserver:self forChangeSource:?];

      self->mChangeNotifier = 0;
    }
  }
}

- (void)validate
{
  [(NSLock *)self->mLock lock];
  self->mCachedNumberOfHeaderColumns = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] numberOfHeaderColumns];
  self->mCachedNumberOfHeaderRows = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] numberOfHeaderRows];
  self->mCachedNumberOfFooterRows = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] numberOfFooterRows];
  v3 = [(TSTTableModel *)[(TSTMasterLayout *)self tableModel] tableNameEnabled];
  if (self->mTableNameEnabled != v3)
  {
    self->mTableNameEnabled = v3;
  }

  TSTMasterLayoutStrokesArrayRangeUpdate(self);
  [(TSTMasterLayout *)self validateBandedFill];
  [(TSTMasterLayout *)self validateTableRowsBehavior];
  [(TSTMasterLayout *)self validateDynamicResizeInfo];
  [(TSTMasterLayout *)self validateChangeDescriptorQueue];
  mLock = self->mLock;

  [(NSLock *)mLock unlock];
}

- (void)validateMasterLayoutForChangeDescriptors:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        v7 |= [v11 changeDescriptor] == 31;
        v8 |= [v11 changeDescriptor] == 29;
      }

      v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
    if (v7)
    {
      [(TSTMasterLayout *)self invalidateTableNameHeight];
    }

    if (v8)
    {
      [(TSTMasterLayout *)self invalidateDefaultFontHeights];
    }
  }
}

- (void)validateChangeDescriptorQueue
{
  TSTMasterLayoutGetTableNumberOfRows(self);
  TSTMasterLayoutGetTableNumberOfColumns(self);
  mChangeDescriptors = self->mChangeDescriptors;
  objc_sync_enter(mChangeDescriptors);
  if ([(NSMutableArray *)self->mChangeDescriptors count])
  {
    v4 = [(NSMutableArray *)[(TSTMasterLayout *)self changeDescriptors] mutableCopy];
    [(NSMutableArray *)[(TSTMasterLayout *)self changeDescriptors] removeAllObjects];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(mChangeDescriptors);
  [(TSTMasterLayout *)self validateRowVisibility:v4];
  if (v4)
  {
    [(TSUConcurrentCache *)[(TSTMasterLayout *)self cellIDToWPColumnCache] removeAllObjects];
    [(TSUReadWriteQueue *)[(TSUConcurrentCache *)[(TSTMasterLayout *)self cellIDToWPColumnCache] readWriteQueue] waitOnInFlightWriters];
    self->mCurrentLayoutTask = [[TSTLayoutTask alloc] initWithMasterLayout:self];
    v5 = [(TSTWidthHeightCache *)[(TSTMasterLayout *)self widthHeightCache] validateChangeDescriptors:v4 tableModel:[(TSTMasterLayout *)self tableModel]];
    [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] validateChangeDescriptors:v4];
    [(TSTMasterLayout *)self validateMasterLayoutForChangeDescriptors:v4];
    [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] validate:self];
    [(TSTMasterLayout *)self validateDefaultFontHeights];
    [(TSTMasterLayout *)self validateStrokesForRegion:[(TSTMasterLayout *)self regionForStrokeValidationFromChangeDescriptors:v4] regionAlreadyValidated:[(TSTMasterLayout *)self validateFittingInfoForChangeDescriptors:v4 rowsNeedingFittingInfo:v5]];

    [(TSTMasterLayout *)self processLayoutTask:self->mCurrentLayoutTask];
    self->mCurrentLayoutTask = 0;
    [(TSTMasterLayout *)self waitForLayoutToComplete];
    [(TSTMasterLayout *)self updateWHCForMergeRanges];
    mParaStyleToHeightCache = self->mParaStyleToHeightCache;

    [(TSURetainedPointerKeyDictionary *)mParaStyleToHeightCache removeAllObjects];
  }
}

- (void)updateWHCForMergeRanges
{
  v6 = [(TSTMergeRangeSortedSet *)self->mMergeRanges begin];
  if (v6.var0.var0 != 0xFFFF && (*&v6 & 0xFF0000) != 0xFF0000)
  {
    do
    {
      if (!HIWORD(*&v6) || (*&v6 & 0xFFFF00000000) == 0)
      {
        break;
      }

      [(TSTMergeRangeSortedSet *)self->mMergeRanges getSize];
      v8 = v7;
      v9 = v6.var0.var0 + v6.var1.var1 - 1;
      var0 = v6.var0;
      if (v9 > v6.var0.var0)
      {
        do
        {
          v8 = v8 - TSTMasterLayoutHeightOfRow(self, var0.var0, 0, 0, 1, 1);
          ++*&var0;
        }

        while (var0.var0 < v9);
      }

      v11 = *&v6.var0 & 0xFF0000 | v9;
      [(TSTMergeRangeSortedSet *)self->mMergeRanges isCheckbox];
      [(TSTMergeRangeSortedSet *)self->mMergeRanges getPaddingInsets];
      if (v8 <= 8.0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | v11;
        v18 = [(TSTMasterLayout *)self tableAreaForCellID:v3];
        v15 = [(TSTMasterLayout *)self widthHeightCache];
        v16 = self->mTableDefaultFontHeightForArea[v18];
        v2 = v2 & 0xFFFFFFFF00000000 | v11;
        v17 = v2;
      }

      else
      {
        v14 = v13 + v8 + v12;
        v15 = [(TSTMasterLayout *)self widthHeightCache];
        v4 = v4 & 0xFFFFFFFF00000000 | v11;
        v16 = v14;
        v17 = v4;
      }

      [(TSTWidthHeightCache *)v15 setFitHeight:v17 forCellID:v16];
      v6 = [(TSTMergeRangeSortedSet *)self->mMergeRanges iter];
      if (v6.var0.var0 == 0xFFFF)
      {
        break;
      }
    }

    while ((*&v6 & 0xFF0000) != 0xFF0000);
  }

  mMergeRanges = self->mMergeRanges;

  [(TSTMergeRangeSortedSet *)mMergeRanges reset];
}

- (void)validateFittingInfoForCell:(id)a3 cellID:(id)a4 mergeRange:(id)a5 setFitting:(BOOL)a6
{
  var1 = a5.var1.var1;
  v11 = [(TSTMasterLayout *)self modelCellIDForLayoutCellID:*&a5.var0];
  v12 = a4;
  v13 = [(TSTMasterLayout *)self modelCellIDForLayoutCellID:*&a4];
  v14 = v13;
  if (v11.var0 == 0xFFFF || (*&v11.var0 & 0xFF0000) == 0xFF0000 || !var1 || (*&a5 & 0xFFFF00000000) == 0)
  {
    v56 = 0x100000000;
    v57 = 1;
  }

  else
  {
    if (((*&v13 ^ *&v11) & 0xFFFFFF) != 0)
    {
      return;
    }

    v56 = a5;
    v57 = var1;
    a4 = v11;
  }

  v58 = a4;
  v60 = v12;
  if (a3)
  {
    v15 = *(a3 + 9);
    v16 = *(a3 + 5);
    if (v16)
    {
      v17 = v13;
LABEL_13:
      v18 = *(a3 + 7);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = v13;
  v16 = TSTTableCellStyleForCellWithEmptyStyleAtCellID([(TSTMasterLayout *)self tableModel], *&v13, 0);
  if (a3)
  {
    goto LABEL_13;
  }

  v18 = 0;
LABEL_15:
  v65 = v17;
  v19 = TSTTableTextStyleForCellWithEmptyStyleAtCellID([(TSTMasterLayout *)self tableModel], v17, 0);
  v64 = 0;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (a5.var0.var0 != 0xFFFF && (*&a5 & 0xFF0000) != 0xFF0000)
  {
    v22 = (*&a5 & 0xFFFF00000000) != 0 && var1 != 0;
    v64 = v22;
  }

  v55 = v15;
  v54 = *&a5 & 0xFF0000;
  v62 = v19;
  if (v15 == 3 || v15 == 9)
  {
    if (!a3)
    {
      goto LABEL_31;
    }
  }

  else if (!*(a3 + 25) || *(a3 + 26) != 266)
  {
    v25 = 0;
    v63 = 0;
    v61 = 0;
    goto LABEL_42;
  }

  v23 = *(a3 + 2);
  if ((v23 & 0x10000) != 0)
  {
    v24 = HIWORD(v23) & 1;
    goto LABEL_36;
  }

LABEL_31:
  v24 = -[__CFString rangeOfCharacterFromSet:](TSTTableStringForCellAtCellID(-[TSTMasterLayout tableModel](self, "tableModel"), a3, v65), "rangeOfCharacterFromSet:", [MEMORY[0x277CCA900] newlineCharacterSet]) != 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
  v61 = v24;
  if (v16)
  {
    v63 = ([v16 intValueForProperty:896] & 0x7FFFFFFF) != 0;
  }

  else
  {
    v63 = 0;
  }

  if (self->mContainedTextEditor)
  {
    v25 = (([(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] editingCellID]^ *&v14) & 0xFFFFFF) == 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_42:
  v59 = var1;
  if (v20 && [v20 isVariation])
  {
    [v20 overrideCGFloatValueForProperty:17];
    v27 = v26;
    if (((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000001 && *&v26 != 0xFFF0000000000000 && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL)
    {
      v32 = 0;
    }

    else
    {
      [objc_msgSend(v20 "parent")];
      v32 = v27 != v31;
    }

    v34 = [v20 overrideValueForProperty:16] != 0;
    if ([v20 overridesProperty:85])
    {
      v33 = 1;
    }

    else
    {
      v33 = [v20 overridesProperty:33];
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
  }

  v35 = [v16 valueForProperty:904];
  [(TSTMasterLayout *)self edgeInsetsFromPadding:v35];
  v37 = v36;
  v39 = v38;
  [(TSTMasterLayout *)self defaultPaddingForCellID:v65];
  v40 = v37 + v39;
  v43 = v41 + v42;
  if ((v63 | v61 | v25))
  {
    v44 = 1;
  }

  else
  {
    v44 = (v55 == 9) | v33;
  }

  if (v32 || v34 || v20 != v62 || v40 != v43) && v64 && *&a5 >> 49 != 0 || (v44)
  {
    v49 = [v16 intValueForProperty:903];
    if (v64)
    {
      v50 = *&v56 & 0xFFFF00000000 | (v57 << 48) | *&v58;
    }

    else
    {
      v50 = 0xFFFFFFLL;
    }

    if (TSTCellFormatUsesAccountingStyle(a3))
    {
      v51 = 0;
    }

    else
    {
      v51 = 15;
    }

    HIDWORD(v53) = v51;
    LOBYTE(v53) = 1;
    [(TSTMasterLayout *)self queueCellForValidation:*&v56 & 0xFFFF00000000 | (v57 << 48) | *&v58 cell:a3 mergeRange:v50 wrap:v63 verticalAlignment:v49 padding:v35 prop:v53 layoutCacheFlags:?];
  }

  else
  {
    if (v32 || v34 || v20 != v62 || v40 != v43)
    {
      [(TSTMasterLayout *)self fontHeightOfParagraphStyle:v20];
      v46 = v39 + v37 + v45;
      mWidthHeightCache = self->mWidthHeightCache;
      if (v64)
      {
        v48 = (a5.var0.var0 + v59 - 1) | v54;
      }

      else
      {
        v48 = v60;
      }
    }

    else
    {
      if (v64)
      {
        v52 = (a5.var0.var0 + v59 - 1) | v54;
      }

      else
      {
        v52 = v60;
      }

      v46 = self->mTableDefaultFontHeightForArea[[(TSTMasterLayout *)self tableAreaForCellID:?]];
      mWidthHeightCache = self->mWidthHeightCache;
      v48 = v52;
    }

    [(TSTWidthHeightCache *)mWidthHeightCache setFitHeight:v48 forCellID:v46];
  }
}

- (void)validateFittingInfoWithCellRange:(id)a3
{
  v6 = self;
  v7 = [(TSTMasterLayout *)self tableRowsBehavior]== 3 || [(TSTMasterLayout *)v6 tableRowsBehavior]== 1;
  v29 = v7;
  v38 = v6;
  v31 = [[TSTLayoutCellIterator alloc] initWithMasterLayout:v6 range:a3];
  v33 = objc_alloc_init(TSTCell);
  v8 = objc_alloc_init(TSTCell);
  v9 = 0;
  LODWORD(v6) = 0;
  v11 = (*&a3 & 0xFFFF00000000) == 0 || HIWORD(*&a3) == 0;
  v34 = a3.var0.var0 + a3.var1.var1 - 1;
  v35 = v11;
  LODWORD(v12) = 255;
  LOWORD(v13) = -1;
  v36 = 0xFFFFFF;
  v14 = 0xFFFFFFLL;
LABEL_11:
  v26 = v8;
  v24 = v9;
  v32 = v9;
  v23 = 0xFFFFFFLL;
  LOWORD(v15) = v13;
  LODWORD(v16) = v12;
  do
  {
    if (v15 == 0xFFFF || v16 == 255)
    {
      TSTLayoutCellIteratorGetNextCell(v31, &v39);
      v15 = WORD2(v39);
      if (WORD2(v39) == 0xFFFFLL)
      {
        break;
      }

      v16 = BYTE6(v39);
      if (BYTE6(v39) == 255)
      {
        break;
      }

      v6 = HIBYTE(v39);
      TSTLayoutCellIteratorExpandCell(v31, &v39);
      v32 = v40 != 0;
      if (v40)
      {
        TSTCellCopy(v40, v33);
      }

      v14 = v41;
      v28 = v15 | (v16 << 16) | (v6 << 24) | v28 & 0xFFFFFFFF00000000;
      TSTMasterLayoutUpdateStrokesForCell(v38, v33, v15 | (v16 << 16) | (v6 << 24));
    }

    v18 = v15;
    if (v15 < a3.var0.var0)
    {
      v19 = 1;
    }

    else
    {
      v19 = v35;
    }

    LODWORD(v12) = 255;
    LODWORD(v13) = 0xFFFF;
    if ((v19 & 1) != 0 || v34 < v15)
    {
      LODWORD(v30) = 0;
    }

    else
    {
      LODWORD(v12) = 255;
      LODWORD(v13) = 0xFFFF;
      if (v16 + 1 < a3.var0.var1 || v16 >= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
      {
        LODWORD(v30) = 0;
      }

      else
      {
        TSTLayoutCellIteratorGetNextCell(v31, &v39);
        v13 = WORD2(v39);
        v12 = BYTE6(v39);
        v30 = HIBYTE(v39);
        if (WORD2(v39) != 0xFFFFLL && BYTE6(v39) != 255)
        {
          TSTLayoutCellIteratorExpandCell(v31, &v39);
          v24 = v40 != 0;
          if (v40)
          {
            TSTCellCopy(v40, v26);
          }

          v23 = v41;
          v25 = v13 | (v12 << 16) | (v30 << 24) | v25 & 0xFFFFFFFF00000000;
          TSTMasterLayoutUpdateStrokesForCell(v38, v26, v13 | (v12 << 16) | (v30 << 24));
        }
      }
    }

    v20 = [(TSTEditingState *)[(TSTTableInfo *)[(TSTMasterLayout *)v38 tableInfo] editingState] editingCellID];
    if (v20 != 0xFFFF && (v20 & 0xFF0000) != 0xFF0000 && !-[TSTMasterLayout dynamicContentDelegate](v38, "dynamicContentDelegate") && [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")] && -[TSDDrawableInfo isInlineWithText](-[TSTMasterLayout tableInfo](v38, "tableInfo"), "isInlineWithText") && (-[TSTEditingState editingCellID](-[TSTTableInfo editingState](-[TSTMasterLayout tableInfo](v38, "tableInfo"), "editingState"), "editingCellID") & 0xFFFFFF) == (v15 | (v16 << 16)))
    {
      TSTCellCopy([(TSTEditingState *)[(TSTTableInfo *)[(TSTMasterLayout *)v38 tableInfo] editingState] editingCell], v33);
    }

    v21 = (v6 << 24) | (v16 << 16);
    if (v14 != 0xFFFF && (v14 & 0xFF0000) != 0xFF0000 && HIWORD(v14) && (v14 & 0xFFFF00000000) != 0)
    {
      v27 = v27 & 0xFFFFFFFF00000000 | v21 | v15;
      [TSTMasterLayout p_validateFittingInfoForCellID:v38 inMergeRange:"p_validateFittingInfoForCellID:inMergeRange:"];
    }

    v6 = (v21 | v15);
    v16 = v4 & 0xFFFFFFFF00000000 | v36;
    v36 = [(TSTMasterLayout *)v38 p_validateFittingInfoForEmptyCellsBetween:v16 andCellID:v5 & 0xFFFFFFFF00000000 | v6 inRange:a3];
    v3 = v3 & 0xFFFFFFFF00000000 | v6;
    [(TSTMasterLayout *)v38 validateFittingInfoForCell:v33 cellID:v3 mergeRange:v14 setFitting:v29];
    if (v32)
    {
      v17 = TSTCellClear(v33);
    }

    if (v13 != 0xFFFF && v12 != 255)
    {
      v5 = v5 & 0xFFFFFFFF00000000 | v6;
      v4 = v16;
      v8 = v33;
      v33 = v26;
      v9 = v24;
      v14 = v23;
      LODWORD(v6) = v30;
      goto LABEL_11;
    }

    v22 = v35;
    if ((v15 + 1) < a3.var0.var0)
    {
      v22 = 1;
    }

    if (v22)
    {
      break;
    }

    v5 = v5 & 0xFFFFFFFF00000000 | v6;
    v4 = v16;
    LODWORD(v6) = 0;
    LODWORD(v16) = 255;
    LOWORD(v15) = -1;
    v14 = 0xFFFFFFLL;
  }

  while (v18 < v34);
  [(TSTMasterLayout *)v38 p_validateFittingInfoForEmptyCellsBetween:v36 andCellID:0xFFFFFFLL inRange:a3, v17];

  TSTMasterLayoutSetStrokesValidForRange(v38, *&a3);
}

- (void)p_validateFittingInfoForEmptyCellsOnSingleRowBetween:(id)a3 andEndCellID:(id)a4
{
  if (![(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] isRowHidden:a3.var0])
  {
    v7 = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] nextVisibleColumn:a3.var1];
    if (a4.var1 >= v7)
    {
      v8 = v7;
      v9 = *&a3 & 0xFF00FFFF | (v7 << 16);
      v10 = [(TSTMasterLayout *)self tableAreaForCellID:v9];
      [(TSTWidthHeightCache *)self->mWidthHeightCache setFitHeight:v9 forCellID:self->mTableDefaultFontHeightForArea[v10]];
      if ((a4.var0 | (a4.var1 << 16)) != (v9 & 0xFFFFFF))
      {
        v11 = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] previousVisibleColumn:a4.var1];
        if (v8 <= v11)
        {
          v12 = *&a4 & 0xFF000000 | (v11 << 16) | a4.var0;
          v13 = [(TSTMasterLayout *)self tableAreaForCellID:v12];
          if (v10 != v13)
          {
            v14 = self->mTableDefaultFontHeightForArea[v13];
            mWidthHeightCache = self->mWidthHeightCache;

            [(TSTWidthHeightCache *)mWidthHeightCache setFitHeight:v12 forCellID:v14];
          }
        }
      }
    }
  }
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)p_validateFittingInfoForEmptyCellsBetween:(id)a3 andCellID:(id)a4 inRange:(id)a5
{
  v5 = a5;
  var0 = a4.var0;
  if (a3.var0 == 0xFFFF || (*&a3.var0 & 0xFF0000) == 0xFF0000)
  {
    v8 = *&a5 >> 16;
    a3 = a5.var0;
    v9 = a5;
  }

  else if (a3.var1 >= (LOBYTE(a5.var1.var0) + a5.var0.var1 - 1))
  {
    if (a3.var0 >= (a5.var0.var0 + a5.var1.var1 - 1))
    {
      LODWORD(v11) = 0;
      LOBYTE(v10) = -1;
      var0 = -1;
      return ((v10 << 16) | (v11 << 24) | var0);
    }

    v8 = *&a5 >> 16;
    v9 = (*&a3 + 1);
  }

  else
  {
    LOBYTE(v8) = a3.var1 + 1;
    v9 = *&a3.var0;
  }

  v10 = *&a4.var0 >> 16;
  v11 = *&a4.var0 >> 24;
  if (a4.var0 == 0xFFFF || (*&a4 & 0xFF0000) == 0xFF0000)
  {
    LODWORD(v14) = 0;
    v13 = a5.var0.var0 + a5.var1.var1 - 1;
    v12 = (*&a5.var0 + (*&a5.var0.var1 & 0xFF0000u) + 16711680) >> 16;
  }

  else
  {
    if (a4.var1 <= a5.var0.var1)
    {
      if (a4.var0 <= a5.var0.var0)
      {
        return ((v10 << 16) | (v11 << 24) | var0);
      }

      LOBYTE(v12) = LOBYTE(a5.var1.var0) + a5.var0.var1 - 1;
      v13 = a4.var0 - 1;
    }

    else
    {
      LOBYTE(v12) = a4.var1 - 1;
      v13 = a4.var0;
    }

    v14 = *&a4.var0 >> 24;
  }

  v15 = v13;
  if (v13 > v9 || v13 == v9 && v12 >= v8)
  {
    v16 = *&a3 & 0xFF000000;
    v17 = *&a3 & 0xFF000000 | (v8 << 16) | v9;
    if (v15 == v9)
    {
      [(TSTMasterLayout *)self p_validateFittingInfoForEmptyCellsOnSingleRowBetween:v17 andEndCellID:(v12 << 16) | (v14 << 24) | v15];
    }

    else
    {
      v18 = (*&a5.var0 + (*&a5.var0.var1 & 0xFF0000) + 16711680) & 0xFF0000;
      [(TSTMasterLayout *)self p_validateFittingInfoForEmptyCellsOnSingleRowBetween:v17 andEndCellID:v18 | v9 | v16];
      [(TSTMasterLayout *)self p_validateFittingInfoForEmptyCellsOnSingleRowBetween:v5 & 0xFF0000 | v15 & 0xFFFFFF | (v14 << 24) andEndCellID:(v14 << 24) | (v12 << 16) | v15];
      if (v15 > (v9 + 1))
      {
        v19 = (v9 + 1);
        v20 = v5 & 0xFF0000;
        do
        {
          v9 = v20 | v9 & 0xFFFFFFFF00000000 | v19;
          v5 = v5 & 0xFFFFFFFF00000000 | v18 | v19;
          [(TSTMasterLayout *)self p_validateFittingInfoForEmptyCellsOnSingleRowBetween:v9 andEndCellID:v5];
          ++v19;
        }

        while (v15 != v19);
      }
    }
  }

  return ((v10 << 16) | (v11 << 24) | var0);
}

- (void)p_validateFittingInfoForCellID:(id)a3 inMergeRange:(id)a4
{
  var1 = a3.var1;
  if (a3.var1 == a4.var0.var1)
  {
    v7 = self->mTableDefaultFontHeightForArea[[(TSTMasterLayout *)self tableAreaForCellID:*&a4.var0 & 0xFF00FFFF | (a3.var1 << 16)]];
    mWidthHeightCache = self->mWidthHeightCache;

    [(TSTWidthHeightCache *)mWidthHeightCache setFitHeight:*&a3 & 0xFF00FFFF | (var1 << 16) forCellID:v7];
  }
}

- (id)validateFittingInfoForChangeDescriptors:(id)a3 rowsNeedingFittingInfo:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(TSTMasterLayout *)self tableModel];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__29;
  v38 = __Block_byref_object_dispose__29;
  v39 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 changeDescriptor];
        v11 = [v9 cellRegion];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke;
        v28[3] = &unk_279D4A928;
        v29 = v10;
        v28[4] = self;
        v28[5] = v5;
        v28[6] = &v34;
        [v11 enumerateCellRangesUsingBlock:v28];
        v12 = [v9 expandedRegion];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_2;
        v26[3] = &unk_279D4A950;
        v27 = v10;
        v26[4] = &v34;
        [v12 enumerateCellRangesUsingBlock:v26];
      }

      v6 = [a3 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v6);
  }

  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  v15 = [v35[5] regionByIntersectingRange:(TableNumberOfColumns << 32) | (TableNumberOfRows << 48)];
  v35[5] = v15;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_3;
  v25[3] = &unk_279D4A4C0;
  v25[4] = self;
  [v15 enumerateColumnRangesUsingBlock:v25];
  v16 = v35[5];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_4;
  v24[3] = &unk_279D4A4E8;
  v24[4] = self;
  [v16 enumerateCellRangesUsingBlock:v24];
  if (a4)
  {
    [a4 tsu_intersectionWithIndexSet:{-[TSTHiddenRowsColumnsCache visibleRowIndices](-[TSTMasterLayout hiddenRowsColumnsCache](self, "hiddenRowsColumnsCache"), "visibleRowIndices")}];
    if ([a4 firstIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [(TSTHiddenRowsColumnsCache *)[(TSTMasterLayout *)self hiddenRowsColumnsCache] nextVisibleColumn:0];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_5;
      v22[3] = &unk_279D4A978;
      v22[4] = self;
      v23 = v17;
      [a4 enumerateIndexesUsingBlock:v22];
    }
  }

  v18 = v35[5];
  _Block_object_dispose(&v34, 8);
  return v18;
}

id __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke(id result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 14);
  if (v4 > 18)
  {
    if (v4 <= 23)
    {
      if ((v4 - 19) >= 2)
      {
        if (v4 != 22)
        {
          if (v4 == 23)
          {
            return result;
          }

          goto LABEL_27;
        }

        goto LABEL_18;
      }

LABEL_22:
      v6 = [*(result + 5) numberOfColumns];
      if (v6 >= 0xFF)
      {
        v7 = 255;
      }

      else
      {
        v7 = v6;
      }

      a2 = v2 & 0xFFFF00000000FFFFLL | (v7 << 32);
      v5 = *(v3 + 5);
      goto LABEL_26;
    }

    if (v4 > 32)
    {
      if (v4 != 33)
      {
        if (v4 == 40)
        {
          [objc_msgSend(*(result + 4) "dupContentCache")];
          result = [objc_msgSend(*(v3 + 4) "cellIDToWPColumnCache")];
        }

        goto LABEL_27;
      }

      goto LABEL_22;
    }

    if (v4 != 24)
    {
      if (v4 != 29)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v4 > 5)
  {
    if ((v4 - 6) < 2)
    {
      return result;
    }

    if ((v4 - 13) >= 2)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  switch(v4)
  {
    case 2:
      goto LABEL_18;
    case 3:
      return result;
    case 4:
LABEL_18:
      v5 = *(result + 5);
LABEL_26:
      result = TSTTableExpandCellRangeToCoverMergedCells(v5, a2);
      v2 = result;
      break;
  }

LABEL_27:
  if (v2 != 0xFFFF)
  {
    v8 = (v2 & 0xFF0000) == 0xFF0000 || HIWORD(v2) == 0;
    if (!v8 && (v2 & 0xFFFF00000000) != 0)
    {
      v10 = *(*(*(v3 + 6) + 8) + 40);
      if (v10)
      {
        result = [v10 regionByAddingRange:v2];
      }

      else
      {
        result = [TSTCellRegion regionFromRange:v2];
      }

      *(*(*(v3 + 6) + 8) + 40) = result;
    }
  }

  return result;
}

_DWORD *__82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_2(_DWORD *result, unint64_t a2)
{
  v2 = result[10];
  v4 = v2 != 21 && v2 != 1 || ~a2 == 0;
  if (!v4 && (a2 & 0xFF0000) != 0xFF0000 && HIWORD(a2) && (a2 & 0xFFFF00000000) != 0)
  {
    v5 = result;
    v6 = *(*(*(result + 4) + 8) + 40);
    if (v6)
    {
      result = [v6 regionByAddingRange:a2];
    }

    else
    {
      result = [TSTCellRegion regionFromRange:a2];
    }

    *(*(*(v5 + 4) + 8) + 40) = result;
  }

  return result;
}

uint64_t __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_3(uint64_t a1, unsigned __int8 a2, char a3)
{
  v5 = [*(a1 + 32) widthHeightCache];

  return [v5 resetColWidthsStartingWith:a2 andEndingWith:(a2 + a3 - 1)];
}

uint64_t __82__TSTMasterLayout_validateFittingInfoForChangeDescriptors_rowsNeedingFittingInfo___block_invoke_5(uint64_t a1, unsigned __int16 a2)
{
  result = [*(*(a1 + 32) + 56) getFitHeightForRow:a2];
  if (v5 <= 0.0)
  {
    v6 = *(a1 + 32);
    v7 = a2 | (*(a1 + 40) << 16) | 0x1000100000000;

    return [v6 validateFittingInfoWithCellRange:v7];
  }

  return result;
}

- (void)validateFittingWidthsForRegion:(id)a3
{
  v5 = [(TSTMasterLayout *)self tableModel];
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
  if (!-[TSTMasterLayout inDynamicLayoutMode](self, "inDynamicLayoutMode") && TableNumberOfRows <= 0x200 && ([a3 isEmpty] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__TSTMasterLayout_validateFittingWidthsForRegion___block_invoke;
    v7[3] = &unk_279D4A9A0;
    v8 = TableNumberOfRows;
    v7[4] = self;
    v7[5] = v5;
    [a3 enumerateColumnsUsingBlock:v7];
  }
}

void __50__TSTMasterLayout_validateFittingWidthsForRegion___block_invoke(uint64_t a1, uint64_t a2)
{
  [objc_msgSend(*(a1 + 32) "widthHeightCache")];
  if (v6 <= 0.0)
  {
    v61 = 0;
    v7 = [[TSTLayoutCellIterator alloc] initWithMasterLayout:*(a1 + 32) range:(a2 << 16) | (*(a1 + 48) << 48) | 0x100000000];
    [objc_msgSend(*(a1 + 32) "widthHeightCache")];
    if (TSTLayoutCellIteratorGetNextCell(v7, &v62))
    {
      v8 = MEMORY[0x277CBF3A8];
      do
      {
        v9 = TSTLayoutCellIteratorValueTypeOfCell(&v62);
        if (v63)
        {
          if (!v9 || v63->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 267)
          {
            continue;
          }

          v10 = *(&v63->mPrivate + 1) << 8;
          v12 = v10 == 768 || v10 == 2304;
        }

        else
        {
          if (!v9)
          {
            continue;
          }

          v12 = 0;
        }

        v60 = 1;
        v59 = 0;
        v3 = v3 & 0xFFFFFFFF00000000 | HIDWORD(v62);
        TSTCellTextProperties(v63, *(a1 + 40), v3, &v61, 0, &v60, &v59);
        [*(a1 + 32) edgeInsetsFromPadding:v59];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = *(a1 + 32);
        if (v21[73])
        {
          v22 = [objc_msgSend(v21 "tableInfo")];
          if (((HIDWORD(v62) ^ v22) & 0xFFFFFF) == 0)
          {
            v61 = 1;
          }
        }

        v61 &= v12;
        if (!v63)
        {
          goto LABEL_27;
        }

        v23 = *(&v63->mPrivate + 1);
        if (v23 == 6)
        {
          if (v63->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 263)
          {
            v25 = 0;
            v26 = 1;
LABEL_29:
            v27 = *v8;
            if (TSTCellFormatUsesAccountingStyle(v63) && v25 && [(TSWPStorage *)v25 length])
            {
              v28 = [(TSWPStorage *)v25 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_287D36338];
              v57 = v57 & 0xFFFFFFFF00000000 | HIDWORD(v62);
              v29 = [*(a1 + 32) newTextEngineForCell:v63 atCellID:?];
              v30 = [TSTTextEngineDelegate alloc];
              v31 = [(TSTTextEngineDelegate *)v30 initWithPadding:v60 verticalAlignment:v14, v16, v18, v20];
              [v29 setDelegate:v31];
              v32 = [v29 layoutText:v28 kind:5 minSize:15 maxSize:8.0 anchor:8.0 flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
              [v29 setDelegate:0];

              [v32 range];
              if (v33)
              {
                [v32 typographicBoundsForCell];
                v27 = v34;
                [v32 frameBounds];
              }

              goto LABEL_59;
            }

            v35 = v64;
            if (v64 == 0xFFFF || (v64 & 0xFF0000) == 0xFF0000 || !HIWORD(v64) || (v64 & 0xFFFF00000000) == 0)
            {
              v35 = HIDWORD(v62) | 0x1000100000000;
            }

            v36 = TSTMasterLayoutContentWidthForCellRange(*(a1 + 32), v35, 0);
            v37 = [*(a1 + 32) cellIDToWPColumnCache];
            HIDWORD(v38) = HIDWORD(v62);
            LODWORD(v38) = HIDWORD(v62);
            v39 = [v37 objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v38 >> 16) & 0xFFFF00FF)}];
            if (v39)
            {
              v40 = v39;
              [v39 typographicBoundsForCell];
              v27 = v41;
              [v40 frameBounds];
              if (v27 == v36)
              {
LABEL_59:
                if (v26)
                {
                  v54 = 30.0;
                }

                else
                {
                  v54 = v27;
                }

                v55 = v16 + v20 + v54;
                v56 = [*(a1 + 32) widthHeightCache];
                v2 = v2 & 0xFFFFFFFF00000000 | HIDWORD(v62);
                [v56 setFitWidth:v2 forCellID:v55];
                continue;
              }

              v42 = [*(a1 + 32) cellIDToWPColumnCache];
              HIDWORD(v43) = HIDWORD(v62);
              LODWORD(v43) = HIDWORD(v62);
              [v42 removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v43 >> 16) & 0xFFFF00FF)}];
            }

            v44 = objc_alloc_init(TSTCellStateForLayout);
            v45 = v58 & 0xFFFFFFFF00000000 | HIDWORD(v62);
            [(TSTCellStateForLayout *)v44 setModelCellID:v45];
            [(TSTCellStateForLayout *)v44 setCell:v63];
            [(TSTCellStateForLayout *)v44 setCellPropsRowHeight:0];
            [(TSTCellStateForLayout *)v44 setCellWraps:v61];
            [(TSTCellStateForLayout *)v44 setPaddingInsets:v14, v16, v18, v20];
            [(TSTCellStateForLayout *)v44 setVerticalAlignment:v60];
            v46 = 8.0;
            if (!v61)
            {
              v46 = v36;
            }

            [(TSTCellStateForLayout *)v44 setMinSize:v46, 8.0];
            if (v61)
            {
              v47 = v36;
            }

            else
            {
              v47 = 4294967300.0;
            }

            [(TSTCellStateForLayout *)v44 setMaxSize:v47, 4294967300.0];
            [(TSTCellStateForLayout *)v44 setForDrawing:1];
            [(TSTCellStateForLayout *)v44 setMergedRange:v64];
            -[TSTCellStateForLayout setInDynamicLayout:](v44, "setInDynamicLayout:", [*(a1 + 32) inDynamicLayoutMode]);
            [(TSTCellStateForLayout *)v44 setCellContents:v25];
            objc_opt_class();
            v48 = TSUDynamicCast();
            if (v48)
            {
              if ([v48 hasAttachmentsThatChangeWithPageNumberOrPageCount])
              {
                v49 = 0;
              }

              else
              {
                v49 = 15;
              }
            }

            else
            {
              v49 = 15;
            }

            v58 = v45;
            [(TSTCellStateForLayout *)v44 setLayoutCacheFlags:v49];
            [*(a1 + 32) measureTextForLayoutState:v44];
            [(TSWPColumn *)[(TSTCellStateForLayout *)v44 wpColumn] range];
            if (v50)
            {
              v51 = [(TSTCellStateForLayout *)v44 wpColumn];
              [(TSWPColumn *)v51 typographicBoundsForCell];
              v27 = v52;
              [(TSWPColumn *)v51 frameBounds];
            }

            else
            {
              v27 = *v8;
            }

            v53 = [(TSTCellStateForLayout *)v44 keyVal];
            if ((v49 & 2) != 0 && v53)
            {
              [objc_msgSend(*(a1 + 32) "dupContentCache")];
            }

            goto LABEL_59;
          }

LABEL_27:
          v24 = NSStringFromNativeTSTCell(v63);
LABEL_28:
          v25 = v24;
          v26 = 0;
          goto LABEL_29;
        }

        if (v23 != 8)
        {
          if (v23 != 9)
          {
            goto LABEL_27;
          }

          v24 = [(TSTRichTextPayload *)v63->mPrivate.mRichTextPayload storage];
          goto LABEL_28;
        }
      }

      while (TSTLayoutCellIteratorGetNextCell(v7, &v62));
    }
  }
}

- (id)validateCellForDrawing:(id)a3 cell:(id)a4 contents:(id)a5 wrap:(BOOL)a6 verticalAlignment:(unsigned int)a7 padding:(id)a8 layoutCacheFlags:(int)a9 pageNumber:(unint64_t)a10 pageCount:(unint64_t)a11
{
  v12 = *&a7;
  v76 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [a5 length] == 0;
  }

  else
  {
    v17 = a5 == 0;
  }

  v18 = !v17;
  v19 = [(TSTMasterLayout *)self tableInfo];
  v20 = [(TSTTableInfo *)v19 tableModel];
  if (!v18)
  {
    return 0;
  }

  v21 = v20;
  v71 = v19;
  v72 = a4;
  v22 = a9;
  v75 = a3;
  v23 = TSTTableMergeRangeAtCellID(v20, *&a3);
  v24 = v23;
  v73 = a8;
  v74 = v23;
  if (v23 == 0xFFFF || (v23 & 0xFF0000) == 0xFF0000)
  {
    v42 = 0x1000100000000;
    LODWORD(v43) = [(TSTMasterLayout *)self layoutCellIDForModelCellID:*&a3];
    goto LABEL_36;
  }

  v25 = HIWORD(v23);
  if (HIWORD(v23) && (v23 & 0xFFFF00000000) != 0)
  {
    v26 = a3;
    v27 = v23;
    v69 = HIDWORD(v23);
    v70 = v26;
    if (((v23 ^ *&v26) & 0xFFFFFF) != 0)
    {
      v28 = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMasterLayout validateCellForDrawing:cell:contents:wrap:verticalAlignment:padding:layoutCacheFlags:pageNumber:pageCount:]"];
      [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 5372, @"Trying to draw merged cell other than origin."}];
    }

    v30 = v24;
    do
    {
      v77 = 0;
      v31 = TSTTableHeightOfRow(v21, v30++, &v77);
    }

    while (v27 + v25 > v30);
    v32 = [(TSTMasterLayout *)self layoutCellIDForModelCellID:v74, v31];
    TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(self);
    TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(self);
    v35 = 0;
    v36 = 16711680;
    var0 = 0xFFFFLL;
    a3 = v70;
    if (TableNumberOfColumns)
    {
      v38 = 0;
      if (!TableNumberOfRows)
      {
LABEL_34:
        v43 = v36 | var0 | v35 | v38;
        v42 = v43 & 0xFFFFFFFF00000000;
        goto LABEL_35;
      }

      v35 = 0;
      v36 = 16711680;
      var0 = 0xFFFFLL;
      if (v32.var0 != 0xFFFF && (*&v32 & 0xFF0000) != 0xFF0000)
      {
        v38 = 0;
        if (v69)
        {
          var0 = 0;
          if ((TableNumberOfColumns - 1) >= (v69 + v32.var1 - 1))
          {
            v39 = (v69 + v32.var1 - 1);
          }

          else
          {
            v39 = (TableNumberOfColumns - 1);
          }

          if ((TableNumberOfRows - 1) >= (v32.var0 + v25 - 1))
          {
            v40 = (v32.var0 + v25 - 1);
          }

          else
          {
            v40 = (TableNumberOfRows - 1);
          }

          if (v40 < v32.var0)
          {
            v36 = 0;
            v35 = 0;
            v38 = 0;
          }

          else
          {
            v36 = 0;
            v35 = 0;
            v38 = 0;
            if (v39 >= v32.var1)
            {
              var0 = v32.var0;
              v38 = ((v40 - *&v32) << 48) + 0x1000000000000;
              v35 = (((v39 - v32.var1) << 32) + 0x100000000) & 0xFFFF00000000;
              v36 = v32.var1 << 16;
            }
          }
        }

        goto LABEL_34;
      }
    }

    v38 = 0;
    goto LABEL_34;
  }

  v42 = 0x1000100000000;
  LODWORD(v43) = [(TSTMasterLayout *)self layoutCellIDForModelCellID:*&a3];
LABEL_35:
  v22 = a9;
LABEL_36:
  v44 = v43;
  v45 = TSTMasterLayoutContentWidthForCellRange(self, v42 | v43, 0);
  v46 = TSTMasterLayoutContentHeightForCellRange(self, v42 | v44, 0);
  if (v76)
  {
    v47 = 8.0;
  }

  else
  {
    v47 = v45;
  }

  if (v76)
  {
    v48 = v45;
  }

  else
  {
    v48 = 4294967300.0;
  }

  if (v12)
  {
    v49 = v46;
  }

  else
  {
    v49 = 4294967300.0;
  }

  if (v12)
  {
    v50 = v46;
  }

  else
  {
    v50 = 8.0;
  }

  if ((v22 & 4) == 0)
  {
    v41 = 0;
LABEL_53:
    v58 = 1;
    goto LABEL_54;
  }

  v51 = [(TSTMasterLayout *)self cellIDToWPColumnCache];
  HIDWORD(v53) = a3;
  LODWORD(v53) = a3;
  v52 = v53 >> 16;
  v54 = -[TSUConcurrentCache objectForKey:](v51, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v53 >> 16) & 0xFFFF00FF]);
  v41 = v54;
  if (!v54)
  {
    goto LABEL_53;
  }

  [v54 typographicBoundsForCell];
  v56 = v55;
  [v41 frameBounds];
  if (v56 != v45)
  {
    v57 = [(TSTMasterLayout *)self cellIDToWPColumnCache];
    -[TSUConcurrentCache removeObjectForKey:](v57, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v52 & 0xFFFF00FF]);
    goto LABEL_53;
  }

  v58 = 0;
  if (![(TSTMasterLayout *)self dynamicRepResize])
  {
    goto LABEL_65;
  }

LABEL_54:
  if (TSTTableNumberOfPopulatedCells(v21) > 0x19)
  {
    return v41;
  }

  if (v47 < 0.0)
  {
    v47 = 0.0;
  }

  if (v50 < 0.0)
  {
    v50 = 0.0;
  }

  if (v48 < 0.0)
  {
    v48 = 0.0;
  }

  if (v49 < 0.0)
  {
    v49 = 0.0;
    if ((v58 & 1) == 0)
    {
      return v41;
    }
  }

  else
  {
LABEL_65:
    if (!v58)
    {
      return v41;
    }
  }

  v59 = v24 & 0xFFFFFFFF00000000;
  v60 = [(TSTMasterLayout *)[(TSTTableInfo *)v71 masterLayout] layoutCellIDForModelCellID:v74];
  v61 = objc_alloc_init(TSTCellStateForLayout);
  [(TSTCellStateForLayout *)v61 setModelCellID:v75];
  [(TSTCellStateForLayout *)v61 setCell:v72];
  [(TSTCellStateForLayout *)v61 setCellPropsRowHeight:0];
  [(TSTCellStateForLayout *)v61 setCellWraps:v76];
  [(TSTMasterLayout *)self edgeInsetsFromPadding:v73];
  [(TSTCellStateForLayout *)v61 setPaddingInsets:?];
  [(TSTCellStateForLayout *)v61 setVerticalAlignment:v12];
  [(TSTCellStateForLayout *)v61 setMinSize:v47, v50];
  [(TSTCellStateForLayout *)v61 setMaxSize:v48, v49];
  [(TSTCellStateForLayout *)v61 setForDrawing:1];
  [(TSTCellStateForLayout *)v61 setMergedRange:v59 | *&v60];
  [(TSTCellStateForLayout *)v61 setInDynamicLayout:[(TSTMasterLayout *)self inDynamicLayoutMode]];
  [(TSTCellStateForLayout *)v61 setCellContents:a5];
  objc_opt_class();
  v62 = TSUDynamicCast();
  if (v62)
  {
    if ([v62 hasAttachmentsThatChangeWithPageNumberOrPageCount])
    {
      v22 = 0;
    }

    else
    {
      v22 = v22;
    }
  }

  [(TSTCellStateForLayout *)v61 setLayoutCacheFlags:v22];
  [(TSTCellStateForLayout *)v61 setPageNumber:a10];
  [(TSTCellStateForLayout *)v61 setPageCount:a11];
  [(TSTMasterLayout *)self measureTextForLayoutState:v61];
  v63 = [(TSTCellStateForLayout *)v61 keyVal];
  if ((v22 & 2) != 0 && v63)
  {
    [(TSUConcurrentCache *)[(TSTMasterLayout *)self dupContentCache] setObject:[(TSTCellStateForLayout *)v61 wpColumn] forKey:[(TSTCellStateForLayout *)v61 keyVal]];
  }

  if (([(TSTCellStateForLayout *)v61 layoutCacheFlags]& 1) != 0)
  {
    v64 = [(TSTMasterLayout *)self cellIDToWPColumnCache];
    v65 = [(TSTCellStateForLayout *)v61 wpColumn];
    HIDWORD(v66) = a3;
    LODWORD(v66) = a3;
    -[TSUConcurrentCache setObject:forKey:](v64, "setObject:forKey:", v65, [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v66 >> 16) & 0xFFFF00FF]);
  }

  v67 = v61;
  return [(TSTCellStateForLayout *)v61 wpColumn];
}

- (void)queueCellForValidation:(id)a3 cell:(id)a4 mergeRange:(id)a5 wrap:(BOOL)a6 verticalAlignment:(unsigned int)a7 padding:(id)a8 prop:(BOOL)a9 layoutCacheFlags:(int)a10
{
  v11 = a6;
  v15 = a10;
  v36 = objc_alloc_init(TSTCellStateForLayout);
  v16 = [(TSTMasterLayout *)self modelCellIDForLayoutCellID:*&a3.var0];
  [(TSTCellStateForLayout *)v36 setModelCellID:*&v16];
  [(TSTCellStateForLayout *)v36 setCell:a4];
  v17 = [-[TSTCellStateForLayout cellContents](v36 "cellContents")];
  v18 = [(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] tableModel];
  if (v17)
  {
    objc_opt_class();
    [(TSTCellStateForLayout *)v36 cellContents];
    v19 = TSUDynamicCast();
    if (v19)
    {
      if ([v19 hasAttachmentsThatChangeWithPageNumberOrPageCount])
      {
        v15 = 0;
      }

      else
      {
        v15 = a10;
      }
    }
  }

  else
  {
    v15 = 10;
  }

  v20 = TSTMasterLayoutContentWidthForCellRange(self, *&a3, 0);
  if (v11)
  {
    v21 = 8.0;
  }

  else
  {
    v21 = v20;
  }

  if (v11)
  {
    v22 = v20;
  }

  else
  {
    v22 = 4294967300.0;
  }

  if ([(TSTMasterLayout *)self dynamicRepResize])
  {
    v23 = TSTTableNumberOfPopulatedCells(v18);
    v24 = 0.0;
    if (v21 >= 0.0)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0.0;
    }

    if (v22 >= 0.0)
    {
      v24 = v22;
    }

    if (v23 <= 0x19)
    {
      v22 = v24;
      v21 = v25;
    }
  }

  v26 = [(TSTMasterLayout *)self cellIDToWPColumnCache];
  HIDWORD(v28) = v16;
  LODWORD(v28) = v16;
  v27 = v28 >> 16;
  v29 = -[TSUConcurrentCache objectForKey:](v26, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v28 >> 16) & 0xFFFF00FF]);
  if ((![(TSTMasterLayout *)self containedTextEditor]|| (([(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] editingCellID]^ *&a3.var0) & 0xFFFFFFLL) != 0) && v29)
  {
    [v29 typographicBoundsForCell];
    v31 = v30;
    [v29 frameBounds];
    if (v31 == v20)
    {
      goto LABEL_28;
    }

    v32 = [(TSTMasterLayout *)self cellIDToWPColumnCache];
    -[TSUConcurrentCache removeObjectForKey:](v32, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v27 & 0xFFFF00FF]);
  }

  [(TSTCellStateForLayout *)v36 setCellPropsRowHeight:a9];
  [(TSTCellStateForLayout *)v36 setCellWraps:v11];
  [(TSTMasterLayout *)self edgeInsetsFromPadding:a8];
  [(TSTCellStateForLayout *)v36 setPaddingInsets:?];
  [(TSTCellStateForLayout *)v36 setVerticalAlignment:a7];
  [(TSTCellStateForLayout *)v36 setMinSize:v21, 8.0];
  [(TSTCellStateForLayout *)v36 setMaxSize:v22, 4294967300.0];
  [(TSTCellStateForLayout *)v36 setMergedRange:a5];
  [(TSTCellStateForLayout *)v36 setLayoutCacheFlags:v15];
  [(NSMutableArray *)[(TSTLayoutTask *)self->mCurrentLayoutTask cellStatesToLayout] addObject:v36];
  v33 = [(NSMutableArray *)[(TSTLayoutTask *)self->mCurrentLayoutTask cellStatesToLayout] count];
  if (v33 >= [(TSTMasterLayout *)self numCellsPerTask])
  {
    [(TSTMasterLayout *)self processLayoutTask:self->mCurrentLayoutTask];

    self->mCurrentLayoutTask = 0;
    self->mCurrentLayoutTask = [[TSTLayoutTask alloc] initWithMasterLayout:self];
  }

LABEL_28:
}

- (void)measureTextForLayoutState:(id)a3
{
  v4 = a3;
  v5 = [a3 modelCellID];
  [a3 minSize];
  v7 = v6;
  v9 = v8;
  [a3 maxSize];
  v11 = v10;
  v13 = v12;
  v14 = [a3 cellWraps];
  objc_opt_class();
  [a3 cellContents];
  v15 = TSUDynamicCast();
  if (([a3 hasContent] & 1) == 0)
  {
    [a3 setLayoutCacheFlags:{objc_msgSend(a3, "layoutCacheFlags") & 0xFFFFFFFCLL}];
    v15 = @"Z";
  }

  v16 = -[TSTMasterLayout newTextEngineForCell:atCellID:](self, "newTextEngineForCell:atCellID:", [a3 cell], objc_msgSend(a3, "modelCellID"));
  if (([a3 layoutCacheFlags] & 8) != 0)
  {
    v17 = [a3 cell];
    if (!v17 || *(v17 + 9) << 8 != 2304)
    {
      v18 = [TSTLayoutContentCachedKey alloc];
      v19 = v14 ? v11 : v7;
      v20 = [v16 paragraphStyle];
      v21 = [a3 cell];
      v22 = v21 ? *(v21 + 9) : 0;
      [a3 paddingInsets];
      v27 = -[TSTLayoutContentCachedKey initWithString:width:height:paragraphStyle:cellWraps:valueType:paddingInsets:verticalAlignment:writingDirection:](v18, "initWithString:width:height:paragraphStyle:cellWraps:valueType:paddingInsets:verticalAlignment:writingDirection:", v15, v20, v14, v22, [a3 verticalAlignment], -[TSSStyle intValueForProperty:](-[TSTTableModel tableStyle](-[TSTMasterLayout tableModel](self, "tableModel"), "tableStyle"), "intValueForProperty:", 798), v19, v9, v23, v24, v25, v26);
      [a3 setKeyVal:v27];
      v28 = [(TSUConcurrentCache *)[(TSTMasterLayout *)self dupContentCache] objectForKey:v27];
      if (v28)
      {
        v29 = v28;

        goto LABEL_44;
      }
    }
  }

  v30 = [TSTTextEngineDelegate alloc];
  [a3 paddingInsets];
  v35 = -[TSTTextEngineDelegate initWithPadding:verticalAlignment:](v30, "initWithPadding:verticalAlignment:", [a3 verticalAlignment], v31, v32, v33, v34);
  [v16 setDelegate:v35];
  if ([(TSTMasterLayout *)self containedTextEditor]&& (([(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] editingCellID]^ v5) & 0xFFFFFF) == 0)
  {
    v39 = [(TSTEditingState *)[(TSTTableInfo *)[(TSTMasterLayout *)self tableInfo] editingState] editingStorage];
LABEL_25:
    v40 = v39;
    if (v39 && ![-[TSWPStorage string](v39 "string")])
    {
      v40 = 0;
      v15 = @"Z";
    }

    goto LABEL_28;
  }

  v36 = [a3 cell];
  if (v36 && *(v36 + 9) << 8 == 2304)
  {
    v37 = (*&self->mDynamicSuppressingConditionalStylesCellID ^ v5) & 0xFFFFFF;
    v38 = [a3 cell];
    if (v37)
    {
      v39 = TSTCellRichTextStorageForLayout(v38);
    }

    else
    {
      if (v38)
      {
        v38 = v38[9];
      }

      v39 = [v38 storage];
    }

    goto LABEL_25;
  }

  v40 = 0;
LABEL_28:
  if (v14)
  {
    v41 = 3;
  }

  else
  {
    v41 = 15;
  }

  if (v9 == v13 && v9 < 4294967300.0)
  {
    v43 = v41 & 0xFFFFFFFD;
  }

  else
  {
    v43 = v41;
  }

  if (v40)
  {
    v44 = [v16 layoutTextStorage:v40 minSize:objc_msgSend(a3 maxSize:"pageNumber") anchor:objc_msgSend(a3 pageNumber:"pageCount") pageCount:v43 flags:{v7, v9, v11, v13, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }

  else
  {
    v44 = [v16 layoutText:v15 kind:5 minSize:v43 maxSize:v7 anchor:v9 flags:{v11, v13, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }

  v29 = v44;
  [v16 setDelegate:0];

  if (!v29)
  {
    if ([a3 hasContent])
    {
      v45 = [MEMORY[0x277D6C290] currentHandler];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMasterLayout measureTextForLayoutState:]"];
      [v45 handleFailureInFunction:v46 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 5719, @"No layout found for cell in col %d, row %d\n", BYTE2(v5), v5}];
    }

    v29 = 0;
  }

LABEL_44:
  [a3 setWpColumn:v29];
}

- (void)processLayoutTask:(id)a3
{
  v5 = a3;
  dispatch_semaphore_wait(self->mLayoutSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  mLayoutInFlight = self->mLayoutInFlight;
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__TSTMasterLayout_processLayoutTask___block_invoke;
  v8[3] = &unk_279D47708;
  v8[4] = a3;
  v8[5] = self;
  dispatch_group_async(mLayoutInFlight, global_queue, v8);
}

uint64_t __37__TSTMasterLayout_processLayoutTask___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v3 = [*(a1 + 32) cellStatesToLayout];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__TSTMasterLayout_processLayoutTask___block_invoke_2;
  v5[3] = &unk_279D47AD0;
  v5[4] = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v5];
  [*(a1 + 32) flushToGlobalCaches];
  dispatch_semaphore_signal(*(*(a1 + 40) + 104));

  return [v2 drain];
}

uint64_t __37__TSTMasterLayout_processLayoutTask___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = *(a1 + 32);

  return [v3 measureTextForLayoutState:v2];
}

- (void)waitForLayoutToComplete
{
  dispatch_group_wait(self->mLayoutInFlight, 0xFFFFFFFFFFFFFFFFLL);
  [(TSUReadWriteQueue *)[(TSUConcurrentCache *)[(TSTMasterLayout *)self cellIDToWPColumnCache] readWriteQueue] waitOnInFlightWriters];
  v3 = [(TSTMasterLayout *)self whCacheQueue];

  [(TSUReadWriteQueue *)v3 waitOnInFlightWriters];
}

- (void)setMaxConcurrentTasks:(unsigned int)a3
{
  dispatch_release(self->mLayoutSemaphore);
  self->mMaxConcurrentTasks = a3;
  self->mLayoutSemaphore = dispatch_semaphore_create(a3);
}

- (id)newTextEngineForCell:(id)a3 atCellID:(id)a4
{
  if (!a3 || (v7 = *(a3 + 7)) == 0)
  {
    LOBYTE(v22) = 0;
    v7 = TSTTableTextStyleForCellWithEmptyStyleAtCellID([(TSTMasterLayout *)self tableModel], *&a4, &v22);
    if (!a3)
    {
      goto LABEL_18;
    }
  }

  if (*(a3 + 9) << 8 != 512 || *(a3 + 2) >= 0.0)
  {
    goto LABEL_12;
  }

  v8 = *(a3 + 26);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  LODWORD(v22) = -1;
  if ((v8 - 256) > 2)
  {
    if ((v8 & 0xFFFFFFFE) != 0x108)
    {
      goto LABEL_12;
    }

    TSTCellGetFormatOfType(a3, *(a3 + 34), &v22);
    if ((v22 & 0xFFFFFFFC) != 0x100)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(a3 + 120);
    v22 = *(a3 + 104);
    v23 = v9;
    v24 = *(a3 + 17);
  }

  if ((v23 & 0x1500) == 0x100)
  {
    v7 = [(TSSStyle *)[TSWPParagraphStyle alloc] initWithContext:[(TSPObject *)v7 context] name:@"temporaryParagraphStyleForTables" overridePropertyMap:[(TSSStyle *)v7 propertyMap] isVariation:0];
    -[TSSStyle setValue:forProperty:](v7, "setValue:forProperty:", [MEMORY[0x277D6C2A8] redColor], 18);
  }

LABEL_12:
  v10 = *(a3 + 9);
  v11 = v10 > 7;
  v12 = (1 << v10) & 0xA4;
  if (v11 || v12 == 0)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_20;
  }

  v14 = [(TSTMasterLayout *)self accountingParagraphStylePropertyMapForCell:a3 atCellID:*&a4];
  if (v14)
  {
    v15 = v14;
    v16 = 1;
    v7 = [(TSSStyle *)[TSWPParagraphStyle alloc] initWithContext:[(TSPObject *)v7 context] name:[(TSSStyle *)v7 name] overridePropertyMap:[(TSSStyle *)v7 propertyMap] isVariation:1];
    [(TSSStyle *)v7 setValuesForProperties:v15];
  }

  else
  {
    v16 = 1;
  }

LABEL_20:
  v17 = [TSWPColumnStyle defaultStyleWithContext:[(TSPObject *)v7 context]];
  v18 = [(TSSStyle *)v7 intValueForProperty:44];
  if (v18 == -1)
  {
    v18 = [(TSSStyle *)[(TSTTableModel *)[(TSTMasterLayout *)self tableModel] tableStyle] intValueForProperty:798]== 1;
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (a3 && *(a3 + 9) << 8 == 2304)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18 == 1;
    }

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v19 = 1;
LABEL_28:
  v20 = [[TSWPText alloc] initWithParagraphStyle:v7 columnStyle:v17 alignmentForNaturalAlignment:v19 naturalDirection:v18];
  if ([(TSTMasterLayout *)self isDynamicallyChangingFontColorOfCellID:*&a4])
  {
    [(TSWPText *)v20 setTextColorOverride:[(TSTMasterLayout *)self dynamicFontColor]];
  }

  return v20;
}

- (id)accountingParagraphStylePropertyMapForCell:(id)a3 atCellID:(id)a4
{
  if (!TSTCellFormatUsesAccountingStyle(a3))
  {
    return 0;
  }

  v6 = a4;
  v7 = TSTTableMergeRangeAtCellID([(TSTMasterLayout *)self tableModel], *&a4);
  v8 = v7;
  if (v7 == 0xFFFF || (v7 & 0xFF0000) == 0xFF0000 || !HIWORD(v7) || (v7 & 0xFFFF00000000) == 0)
  {
    v8 = *&a4 | 0x1000100000000;
  }

  else if (((v7 ^ *&a4) & 0xFFFFFF) != 0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMasterLayout accountingParagraphStylePropertyMapForCell:atCellID:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMasterLayout.mm"), 5894, @"Trying create a text engine for a merged cell other than origin."}];
  }

  v12 = TSTMasterLayoutContentWidthForCellRange(self, v8, 0);
  v13 = +[TSWPTab tab];
  [(TSTMasterLayout *)self paddingForCellID:v6];
  [v13 setPosition:v12 + -4.0 - v14];
  [v13 setAlignment:2];
  v15 = +[TSWPTabs tabs];
  [v15 insertTab:v13];
  v11 = +[TSSPropertyMap propertyMap];
  [v11 setIntValue:0 forProperty:86];
  [v11 setObject:v15 forProperty:84];
  return v11;
}

- (UIEdgeInsets)edgeInsetsFromPadding:(id)a3
{
  [a3 topInset];
  v5 = v4;
  [a3 leftInset];
  v7 = v6;
  [a3 bottomInset];
  v9 = v8;
  [a3 rightInset];
  v10 = fmax(v7, 2.0);
  v12 = fmax(v11, 2.0);
  v13 = v5;
  v14 = v9;
  result.right = v12;
  result.bottom = v14;
  result.left = v10;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)paddingForCellID:(id)a3
{
  if ((a3.var0 == 0xFFFF || (*&a3.var0 & 0xFF0000) == 0xFF0000 || (CellStyleAtCellID = TSTTableGetCellStyleAtCellID([(TSTMasterLayout *)self tableModel], *&a3, 0)) == 0) && (CellStyleAtCellID = TSTTableCellStyleForCellWithEmptyStyleAtCellID([(TSTMasterLayout *)self tableModel], *&a3, 0)) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [CellStyleAtCellID valueForProperty:904];
  }

  [(TSTMasterLayout *)self edgeInsetsFromPadding:v6];
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)defaultPaddingForCellID:(id)a3
{
  v4 = TSTTableCellStyleForCellWithEmptyStyleAtCellID([(TSTMasterLayout *)self tableModel], *&a3, 0);
  if (v4)
  {
    v5 = [v4 valueForProperty:904];
  }

  else
  {
    v5 = 0;
  }

  [(TSTMasterLayout *)self edgeInsetsFromPadding:v5];
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (double)fontHeightOfParagraphStyle:(id)a3
{
  v5 = a3;
  if (!a3)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = [(TSURetainedPointerKeyDictionary *)self->mParaStyleToHeightCache objectForKey:v5];
  if (v6)
  {

    [v6 tsu_CGFloatValue];
  }

  else
  {
    FontForStyle = TSWPFastCreateFontForStyle(0, a3, 0x64uLL);
    v9 = ceil(TSWPDefaultLineHeightForFont(FontForStyle));
    CFRelease(FontForStyle);
    -[TSURetainedPointerKeyDictionary setObject:forKey:](self->mParaStyleToHeightCache, "setObject:forKey:", [MEMORY[0x277CCABB0] tsu_numberWithCGFloat:v9], v5);
    return v9;
  }

  return result;
}

- (CGSize)maximumPartitionSize
{
  width = self->mMaximumPartitionSize.width;
  height = self->mMaximumPartitionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end