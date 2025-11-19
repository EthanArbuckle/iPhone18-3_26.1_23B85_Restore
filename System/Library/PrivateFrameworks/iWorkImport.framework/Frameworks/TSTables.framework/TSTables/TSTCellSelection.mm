@interface TSTCellSelection
+ (id)selectionWithTableInfo:(id)a3 cellID:(TSUCellCoord)a4;
+ (id)selectionWithTableInfo:(id)a3 cellRegion:(id)a4;
+ (id)selectionWithTableInfo:(id)a3 cellUID:(const TSKUIDStructCoord *)a4;
+ (id)selectionWithTableInfo:(id)a3 columnIndices:(id)a4;
+ (id)selectionWithTableInfo:(id)a3 rowIndices:(id)a4;
- (BOOL)areCellsInTheSameRegionInTable:(id)a3;
- (BOOL)canEditWithCellSubselectionInTable:(id)a3;
- (BOOL)canEditWithControlCellSubselectionInTable:(id)a3;
- (BOOL)canEditWithStockCellSubselectionInTable:(id)a3;
- (BOOL)containsBodyColumns;
- (BOOL)containsBodyRows;
- (BOOL)containsCell:(TSUCellCoord)a3;
- (BOOL)containsCellsInCategoryColumn;
- (BOOL)containsCellsInCategoryColumnsOrRows;
- (BOOL)containsCellsInCategoryGroupingColumn;
- (BOOL)containsCellsInLabelRow;
- (BOOL)containsCellsInSummaryOrLabelRows;
- (BOOL)containsCellsInSummaryRow;
- (BOOL)containsFooterRows;
- (BOOL)containsGroupValueCells;
- (BOOL)containsHeaderColumns;
- (BOOL)containsHeaderRows;
- (BOOL)containsOnlyCellsInCategoryColumn;
- (BOOL)containsOnlyCellsInSummaryAndLabelRows;
- (BOOL)containsOnlyCellsInSummaryRow;
- (BOOL)containsOnlyGroupValueCells;
- (BOOL)containsOnlySpecialCategoryCells;
- (BOOL)containsOnlySpecialCategoryOrPivotCells;
- (BOOL)containsOnlySpecialPivotCells;
- (BOOL)containsSelection:(id)a3;
- (BOOL)containsSingleCellOrMergeInTable:(id)a3;
- (BOOL)getAggregateType:(unsigned __int8 *)a3;
- (BOOL)intersectsPartialMergeRangeInTable:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSelection:(id)a3;
- (BOOL)isValid;
- (BOOL)selectsSingleControlCellWithInteractionUIInTable:(id)a3;
- (NSString)cellSelectionNameForContextAndActionMenus;
- (NSString)description;
- (TSKUIDStructCoord)anchorCellUID;
- (TSKUIDStructCoord)cursorCellUID;
- (TSTCellRegion)baseRegion;
- (TSTCellRegion)cellRegion;
- (TSTCellSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTCellSelection)initWithRdar39989167Archive:(const void *)a3 unarchiver:(id)a4;
- (TSTCellSelection)initWithTableInfo:(id)a3 andCellRange:(TSUCellRect)a4;
- (TSTCellSelection)initWithTableInfo:(id)a3 andPreviousSelection:(id)a4 offsetBy:(TSUColumnRowOffset)a5;
- (TSTCellSelection)initWithTableInfo:(id)a3 cellRange:(TSUCellRect)a4 type:(int64_t)a5 anchorCellID:(TSUCellCoord)a6 cursorCellID:(TSUCellCoord)a7;
- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4;
- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6;
- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6 baseRegion:(id)a7 selectionType:(int64_t)a8 searchReferenceRange:(_NSRange)a9 beginImplicitEditing:(BOOL)a10;
- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6 selectionType:(int64_t)a7;
- (TSTCellSelection)initWithTableInfo:(id)a3 cellUIDRegion:(id)a4 anchorCellUID:(TSKUIDStructCoord *)a5 cursorCellUID:(TSKUIDStructCoord *)a6 baseCellUIDRegion:(id)a7 selectionType:(int64_t)a8 searchReferenceRange:(_NSRange)a9 beginImplicitEditing:(BOOL)a10;
- (TSTCellSelection)initWithTableInfo:(id)a3 columnIndices:(id)a4;
- (TSTCellSelection)initWithTableInfo:(id)a3 rowIndices:(id)a4;
- (TSTCellSelection)initWithTableInfo:(id)a3 rowOrColumn:(int64_t)a4 index:(unsigned int)a5 count:(unsigned int)a6;
- (TSTCellSelection)initWithTableInfo:(id)a3 selectionType:(int64_t)a4;
- (TSTCellSelection)initWithTableInfo:(id)a3 startingColumnIndex:(unsigned __int16)a4 numberOfColumns:(unsigned int)a5;
- (TSTCellSelection)initWithTableInfo:(id)a3 startingRowIndex:(unsigned int)a4 numberOfRows:(unsigned int)a5;
- (TSTTableInfo)tableInfo;
- (TSUCellCoord)anchorCellID;
- (TSUCellCoord)cursorCellID;
- (TSUCellCoord)logicalCellIDInTable:(id)a3;
- (_NSRange)firstRange;
- (_NSRange)searchReferenceRange;
- (id)briefDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForUpgradeWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6 baseRegion:(id)a7 selectionType:(int64_t)a8;
- (id)p_selectionRemovingHiddenColumnsInTableInfo:(id)a3;
- (id)p_selectionRemovingHiddenRowsInTableInfo:(id)a3;
- (id)selectionAdjustedForGeometryInTableInfo:(id)a3;
- (id)selectionAdjustedForVisibilityInTableInfo:(id)a3;
- (id)selectionAdjustedForVisibilityInTableInfo:(id)a3 alwaysCheckColumns:(BOOL)a4;
- (id)selectionByAddingCellRange:(TSUCellRect)a3 inTable:(id)a4 withAnchor:(TSUCellCoord)a5 cursor:(TSUCellCoord)a6 selectionType:(int64_t)a7;
- (id)selectionByExtendingWithCellRange:(TSUCellRect)a3 inTable:(id)a4 selectionType:(int64_t)a5 cursorCell:(TSUCellCoord)a6;
- (id)selectionByRemovingCellRange:(TSUCellRect)a3 inTable:(id)a4 withAnchor:(TSUCellCoord)a5 cursor:(TSUCellCoord)a6 selectionType:(int64_t)a7;
- (id)selectionExpandedToCoverCollapsedRows;
- (id)selectionToBeginImplicitEditingInTableInfo:(id)a3;
- (unint64_t)cellCount;
- (unint64_t)sizeClass;
- (void)insert:(int64_t)a3 atIndex:(unsigned int)a4 count:(unsigned int)a5;
- (void)p_cacheBaseRegion:(id)a3;
- (void)p_cacheCellRegion:(id)a3;
- (void)remove:(int64_t)a3 atIndex:(unsigned int)a4 count:(unsigned int)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setAnchorCellUID:(TSKUIDStructCoord *)a3;
- (void)setCellRange:(TSUCellRect)a3;
- (void)setCursorCellUID:(TSKUIDStructCoord *)a3;
@end

@implementation TSTCellSelection

- (TSTCellSelection)initWithTableInfo:(id)a3 cellUIDRegion:(id)a4 anchorCellUID:(TSKUIDStructCoord *)a5 cursorCellUID:(TSKUIDStructCoord *)a6 baseCellUIDRegion:(id)a7 selectionType:(int64_t)a8 searchReferenceRange:(_NSRange)a9 beginImplicitEditing:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v26.receiver = self;
  v26.super_class = TSTCellSelection;
  v19 = [(TSTCellSelection *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_tableInfo, v16);
    objc_storeStrong(&v20->_cellUIDRegion, a4);
    row = a5->_row;
    v20->_anchorCellUID._column = a5->_column;
    v20->_anchorCellUID._row = row;
    v22 = a6->_row;
    v20->_cursorCellUID._column = a6->_column;
    v20->_cursorCellUID._row = v22;
    objc_storeStrong(&v20->_baseCellUIDRegion, a7);
    v20->_selectionType = a8;
    v20->_searchReferenceRange = a9;
    v20->_beginImplicitEditing = a10;
    cachedCellRegion = v20->_cachedCellRegion;
    v20->_cachedCellRegion = 0;

    v20->_cachedCellRegionVersionCounter = 0x7FFFFFFFFFFFFFFFLL;
    cachedBaseRegion = v20->_cachedBaseRegion;
    v20->_cachedBaseRegion = 0;

    v20->_cachedBaseRegionVersionCounter = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v20;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6 baseRegion:(id)a7 selectionType:(int64_t)a8 searchReferenceRange:(_NSRange)a9 beginImplicitEditing:(BOOL)a10
{
  v16 = a3;
  v17 = a7;
  v24 = objc_msgSend_cellUIDRegionFromCellRegion_(v16, v18, a4, v19, v20);
  memset(v34, 0, sizeof(v34));
  if (v16)
  {
    objc_msgSend_cellUIDForCellID_(v16, v21, *&a5, v22, v23);
    v32 = 0u;
    v33 = 0u;
    objc_msgSend_cellUIDForCellID_(v16, v25, *&a6, v26, v27);
  }

  else
  {
    v32 = 0uLL;
    v33 = 0uLL;
  }

  v28 = objc_msgSend_cellUIDRegionFromCellRegion_(v16, v21, v17, v22, v23);
  v30 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(self, v29, v16, v24, v34, &v32, v28, a8, a9.location, a9.length, a10);

  return v30;
}

- (id)initForUpgradeWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6 baseRegion:(id)a7 selectionType:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v20 = objc_msgSend_baseTableModel(v13, v16, v17, v18, v19);
  v23 = objc_msgSend_cellUIDRegionFromRegion_inTableModel_(TSTCellUIDRegion, v21, v14, v20, v22);

  v66 = 0u;
  v67 = 0u;
  v28 = objc_msgSend_baseTableModel(v13, v24, v25, v26, v27);
  v33 = objc_msgSend_columnRowUIDMap(v28, v29, v30, v31, v32);
  v37 = v33;
  if (v33)
  {
    objc_msgSend_cellUIDForCellID_(v33, v34, *&a5, v35, v36);
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v64 = 0u;
  v65 = 0u;
  v42 = objc_msgSend_baseTableModel(v13, v38, v39, v40, v41);
  v47 = objc_msgSend_columnRowUIDMap(v42, v43, v44, v45, v46);
  v51 = v47;
  if (v47)
  {
    objc_msgSend_cellUIDForCellID_(v47, v48, *&a6, v49, v50);
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v56 = objc_msgSend_baseTableModel(v13, v52, v53, v54, v55);
  v59 = objc_msgSend_cellUIDRegionFromRegion_inTableModel_(TSTCellUIDRegion, v57, v15, v56, v58);

  v61 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(self, v60, v13, v23, &v66, &v64, v59, a8, 0, 0, 0);
  return v61;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6 selectionType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, 0, 0, v15);
  v18 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v17, v12, v13, *&a5, a6, v16, a7);

  return v18;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4 anchorCellID:(TSUCellCoord)a5 cursorCellID:(TSUCellCoord)a6
{
  v10 = a3;
  v11 = a4;
  v14 = objc_msgSend_regionFromRange_(TSTCellRegion, v12, 0, 0, v13);
  v16 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_(self, v15, v10, v11, *&a5, a6, v14);

  return v16;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 cellRange:(TSUCellRect)a4 type:(int64_t)a5 anchorCellID:(TSUCellCoord)a6 cursorCellID:(TSUCellCoord)a7
{
  size = a4.size;
  origin = a4.origin;
  v13 = a3;
  v16 = v13;
  if (v13 && (a5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    origin = objc_msgSend_expandCellRangeToCoverMergedCells_(v13, v14, origin, size, v15);
    size = v14;
  }

  v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, origin, size, v15);
  v20 = objc_msgSend_regionFromRange_(TSTCellRegion, v18, 0, 0, v19);
  v22 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v21, v16, v17, *&a6, a7, v20, a5);

  return v22;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 selectionType:(int64_t)a4
{
  v10 = a3;
  if (a4 == 3)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellSelection initWithTableInfo:selectionType:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 236, 0, "expected inequality between %{public}s and %{public}s", "selectionType", "kNoSelection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_range(v10, v6, v7, v8, v9);
  v24 = v23;
  v26 = objc_msgSend_regionFromRange_(TSTCellRegion, v23, v22, v23, v25);
  v28 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_selectionType_(self, v27, v10, v26, v22, (v22 + (v24 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v22 + HIDWORD(v24) - 1), 3);

  return v28;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 andCellRange:(TSUCellRect)a4
{
  size = a4.size;
  origin = a4.origin;
  v12 = a4;
  v7 = a3;
  v8 = TSUCellRect::bottomRight(&v12);
  v10 = objc_msgSend_initWithTableInfo_cellRange_type_anchorCellID_cursorCellID_(self, v9, v7, origin, size, 0, origin, v8, *&v12.origin, *&v12.size);

  return v10;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 startingRowIndex:(unsigned int)a4 numberOfRows:(unsigned int)a5
{
  v8 = a3;
  v13 = objc_msgSend_numberOfColumns(v8, v9, v10, v11, v12);
  LODWORD(v19) = objc_msgSend_numberOfRows(v8, v14, v15, v16, v17) - a4;
  if (v19 >= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v19;
  }

  v20 = objc_msgSend_initWithTableInfo_cellRange_type_anchorCellID_cursorCellID_(self, v18, v8, a4, v13 | (v19 << 32), 1, a4, (a4 + v19 - 1) | ((v13 << 32) - 1) & 0xFFFF00000000);

  return v20;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 startingColumnIndex:(unsigned __int16)a4 numberOfColumns:(unsigned int)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v13 = objc_msgSend_numberOfColumns(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_numberOfRows(v8, v14, v15, v16, v17);
  if (v5 >= v13 - v6)
  {
    v20 = (v13 - v6);
  }

  else
  {
    v20 = v5;
  }

  v21 = objc_msgSend_initWithTableInfo_cellRange_type_anchorCellID_cursorCellID_(self, v19, v8, v6 << 32, v20 | (v18 << 32), 2, v6 << 32, (v18 - 1) | ((v6 << 32) + (v20 << 32) + 0xFFFF00000000) & 0xFFFF00000000);

  return v21;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 rowOrColumn:(int64_t)a4 index:(unsigned int)a5 count:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v13 = a3;
  if (a4 == 2)
  {
    v14 = objc_msgSend_initWithTableInfo_startingColumnIndex_numberOfColumns_(self, v10, v13, v7, v6);
  }

  else
  {
    if (a4 != 1)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCellSelection initWithTableInfo:rowOrColumn:index:count:]", v11, v12);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 301, 0, "Invalid selection type used with rowOrColumn initializer.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
      v15 = 0;
      goto LABEL_7;
    }

    v14 = objc_msgSend_initWithTableInfo_startingRowIndex_numberOfRows_(self, v10, v13, v7, v6);
  }

  self = v14;
  v15 = self;
LABEL_7:

  return v15;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 andPreviousSelection:(id)a4 offsetBy:(TSUColumnRowOffset)a5
{
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_cellRegion(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_regionOffsetBy_(v14, v15, *&a5, v16, v17);
  v23 = objc_msgSend_anchorCellID(v9, v19, v20, v21, v22);
  v28 = 0x7FFF7FFFFFFFLL;
  v29 = a5.var0 + WORD2(v23) > 0x3E7 || (*&a5 >> 32) + v23 > 0xF423F;
  v30 = 0x7FFF7FFFFFFFLL;
  if (!v29)
  {
    v30 = TSUOffsetColumnRowCoordinate();
  }

  v31 = objc_msgSend_cursorCellID(v9, v24, v25, v26, v27);
  if (a5.var0 + WORD2(v31) <= 0x3E7 && (*&a5 >> 32) + v31 <= 0xF423F)
  {
    v28 = TSUOffsetColumnRowCoordinate();
  }

  v36 = objc_msgSend_baseRegion(v9, v32, v33, v34, v35);
  v40 = objc_msgSend_regionOffsetBy_(v36, v37, *&a5, v38, v39);
  v45 = objc_msgSend_selectionType(v9, v41, v42, v43, v44);
  v47 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v46, v8, v18, v30, v28, v40, v45);

  return v47;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 cellRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_suitableAnchor(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_suitableCursor(v7, v13, v14, v15, v16);
  v20 = objc_msgSend_regionFromRange_(TSTCellRegion, v18, 0, 0, v19);
  v22 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v21, v6, v7, v12, v17, v20, 0);

  return v22;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 rowIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_range(v6, v8, v9, v10, v11);
  v14 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v13, v7, WORD2(v12), v13);
  v19 = objc_msgSend_suitableAnchor(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_numberOfColumns(v6, v20, v21, v22, v23);
  if (WORD2(v19) >= (v24 - 1))
  {
    v29 = v24 - 1;
  }

  else
  {
    v29 = WORD2(v19);
  }

  v30 = objc_msgSend_suitableCursor(v14, v25, v26, v27, v28);
  v35 = objc_msgSend_numberOfColumns(v6, v31, v32, v33, v34);
  v37 = HIDWORD(v30);
  if (WORD2(v30) >= (v35 - 1))
  {
    LOWORD(v37) = v35 - 1;
  }

  v38 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_selectionType_(self, v36, v6, v14, v19 & 0xFFFF0000FFFFFFFFLL | (v29 << 32), v30 & 0xFFFF0000FFFFFFFFLL | (v37 << 32), 1);

  return v38;
}

- (TSTCellSelection)initWithTableInfo:(id)a3 columnIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_range(v6, v8, v9, v10, v11);
  v14 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v13, v7, v12, v13 >> 32);
  v19 = objc_msgSend_suitableAnchor(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_numberOfColumns(v6, v20, v21, v22, v23);
  if (WORD2(v19) >= (v24 - 1))
  {
    v29 = v24 - 1;
  }

  else
  {
    v29 = WORD2(v19);
  }

  v30 = objc_msgSend_suitableCursor(v14, v25, v26, v27, v28);
  v35 = objc_msgSend_numberOfColumns(v6, v31, v32, v33, v34);
  v37 = HIDWORD(v30);
  if (WORD2(v30) >= (v35 - 1))
  {
    LOWORD(v37) = v35 - 1;
  }

  v38 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_selectionType_(self, v36, v6, v14, v19 & 0xFFFF0000FFFFFFFFLL | (v29 << 32), v30 & 0xFFFF0000FFFFFFFFLL | (v37 << 32), 2);

  return v38;
}

+ (id)selectionWithTableInfo:(id)a3 cellID:(TSUCellCoord)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v10 = objc_msgSend_initWithTableInfo_andCellID_(v7, v8, v6, *&a4, v9);

  return v10;
}

+ (id)selectionWithTableInfo:(id)a3 cellUID:(const TSKUIDStructCoord *)a4
{
  v5 = a3;
  row = a4->_row;
  v16[0] = a4->_column;
  v16[1] = row;
  v10 = objc_msgSend_cellIDForCellUID_(v5, v7, v16, v8, v9);
  v11 = objc_opt_class();
  v14 = objc_msgSend_selectionWithTableInfo_cellID_(v11, v12, v5, v10, v13);

  return v14;
}

+ (id)selectionWithTableInfo:(id)a3 cellRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v11 = objc_msgSend_initWithTableInfo_cellRegion_(v8, v9, v6, v7, v10);

  return v11;
}

+ (id)selectionWithTableInfo:(id)a3 rowIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v11 = objc_msgSend_initWithTableInfo_rowIndices_(v8, v9, v6, v7, v10);

  return v11;
}

+ (id)selectionWithTableInfo:(id)a3 columnIndices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v11 = objc_msgSend_initWithTableInfo_columnIndices_(v8, v9, v6, v7, v10);

  return v11;
}

- (BOOL)isValid
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  CellID = objc_msgSend_firstCellID(v5, v6, v7, v8, v9);
  v12 = CellID != 0x7FFFFFFF && (CellID & 0xFFFF00000000) != 0x7FFF00000000;

  return v12;
}

- (void)p_cacheCellRegion:(id)a3
{
  objc_storeStrong(&self->_cachedCellRegion, a3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = objc_msgSend_columnRowUIDMap(WeakRetained, v4, v5, v6, v7);
  self->_cachedCellRegionVersionCounter = objc_msgSend_versionCounter(v8, v9, v10, v11, v12);
}

- (TSTCellRegion)cellRegion
{
  if (self->_cellUIDRegion)
  {
    if (!self->_cachedCellRegion || (cachedCellRegionVersionCounter = self->_cachedCellRegionVersionCounter, v7 = objc_loadWeakRetained(&self->_tableInfo), objc_msgSend_columnRowUIDMap(v7, v8, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_versionCounter(v12, v13, v14, v15, v16), v12, v7, cachedCellRegionVersionCounter != v17))
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
      v22 = objc_msgSend_cellRegionFromCellUIDRegion_(WeakRetained, v19, self->_cellUIDRegion, v20, v21);

      objc_msgSend_p_cacheCellRegion_(self, v23, v22, v24, v25);
    }

    v26 = self->_cachedCellRegion;
  }

  else
  {
    v26 = objc_msgSend_invalidRegion(TSTCellRegion, a2, v2, v3, v4);
  }

  return v26;
}

- (TSUCellCoord)anchorCellID
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  row = self->_anchorCellUID._row;
  v10[0] = self->_anchorCellUID._column;
  v10[1] = row;
  v8 = objc_msgSend_cellIDForCellUID_(WeakRetained, v5, v10, v6, v7);

  return v8;
}

- (void)p_cacheBaseRegion:(id)a3
{
  objc_storeStrong(&self->_cachedBaseRegion, a3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = objc_msgSend_columnRowUIDMap(WeakRetained, v4, v5, v6, v7);
  self->_cachedBaseRegionVersionCounter = objc_msgSend_versionCounter(v8, v9, v10, v11, v12);
}

- (TSTCellRegion)baseRegion
{
  if (self->_baseCellUIDRegion)
  {
    if (!self->_cachedBaseRegion || (cachedBaseRegionVersionCounter = self->_cachedBaseRegionVersionCounter, v7 = objc_loadWeakRetained(&self->_tableInfo), objc_msgSend_columnRowUIDMap(v7, v8, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_versionCounter(v12, v13, v14, v15, v16), v12, v7, cachedBaseRegionVersionCounter != v17))
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
      v22 = objc_msgSend_cellRegionFromCellUIDRegion_(WeakRetained, v19, self->_baseCellUIDRegion, v20, v21);

      objc_msgSend_p_cacheBaseRegion_(self, v23, v22, v24, v25);
    }

    v26 = self->_cachedBaseRegion;
  }

  else
  {
    v26 = objc_msgSend_invalidRegion(TSTCellRegion, a2, v2, v3, v4);
  }

  return v26;
}

- (TSUCellCoord)cursorCellID
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  row = self->_cursorCellUID._row;
  v10[0] = self->_cursorCellUID._column;
  v10[1] = row;
  v8 = objc_msgSend_cellIDForCellUID_(WeakRetained, v5, v10, v6, v7);

  return v8;
}

- (unint64_t)cellCount
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  v10 = objc_msgSend_cellCount(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUCellCoord)logicalCellIDInTable:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cellRegion(self, v5, v6, v7, v8);
  if ((objc_msgSend_isRectangle(v9, v10, v11, v12, v13) & 1) == 0)
  {

    goto LABEL_5;
  }

  v17 = objc_msgSend_containsSingleCellOrMergeInTable_(self, v14, v4, v15, v16);

  if ((v17 & 1) == 0)
  {
LABEL_5:
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTCellSelection logicalCellIDInTable:]", v20, v21);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 436, 0, "Cannot provide a logical cell ID for a selection that is not rectangular or does not represent a single cell or merge");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    v31 = 0x7FFF7FFFFFFFLL;
    goto LABEL_6;
  }

  v22 = objc_msgSend_cellRegion(self, v18, v19, v20, v21);
  CellID = objc_msgSend_firstCellID(v22, v23, v24, v25, v26);
  v31 = objc_msgSend_mergeOriginForCellID_(v4, v28, CellID, v29, v30);

LABEL_6:
  return v31;
}

- (unint64_t)sizeClass
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  v10 = objc_msgSend_sizeClass(v5, v6, v7, v8, v9);

  return v10;
}

- (TSTCellSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v12 = sub_22108EBB4(*(a3 + 34), v7, v8, v9, v10);
  v13 = *(a3 + 4);
  if ((v13 & 0x10) != 0)
  {
    v16 = [TSTCellUIDRegion alloc];
    if (*(a3 + 13))
    {
      v20 = objc_msgSend_initFromMessage_(v16, v17, *(a3 + 13), v18, v19);
    }

    else
    {
      v20 = objc_msgSend_initFromMessage_(v16, v17, &TST::_CellUIDRegionArchive_default_instance_, v18, v19);
    }

    v14 = v20;
    v13 = *(a3 + 4);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 0x20) == 0)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_12;
    }
  }

  v21 = [TSTCellUIDRegion alloc];
  if (*(a3 + 14))
  {
    v25 = objc_msgSend_initFromMessage_(v21, v22, *(a3 + 14), v23, v24);
  }

  else
  {
    v25 = objc_msgSend_initFromMessage_(v21, v22, &TST::_CellUIDRegionArchive_default_instance_, v23, v24);
  }

  v15 = v25;
  v13 = *(a3 + 4);
LABEL_12:
  if ((v13 & 0x40) != 0)
  {
    v26 = *(a3 + 15);
    v46 = 0u;
    v47 = 0u;
    sub_2211A8FE8(v26, v11, &v46);
    v51[0] = v46;
    v51[1] = v47;
    v13 = *(a3 + 4);
  }

  if ((v13 & 0x80) != 0)
  {
    v27 = *(a3 + 16);
    v46 = 0u;
    v47 = 0u;
    sub_2211A8FE8(v27, v11, &v46);
    v50[0] = v46;
    v50[1] = v47;
    v13 = *(a3 + 4);
  }

  *&v46 = 0;
  *(&v46 + 1) = &v46;
  *&v47 = 0x3032000000;
  *(&v47 + 1) = sub_22108ECBC;
  v48 = sub_22108ECCC;
  v49 = 0;
  if ((v13 & 8) != 0)
  {
    v28 = *(a3 + 12);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22108ECD4;
    v45[3] = &unk_27845DAB0;
    v45[4] = &v46;
    v29 = v6;
    v30 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v29, v31, v28, v30, 0, v45);
  }

  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_22108ECE4;
  v42 = &unk_27845DAD8;
  v32 = self;
  v43 = v32;
  v44 = &v46;
  objc_msgSend_addFinalizeHandler_(v6, v33, &v39, v34, v35);
  v37 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(v32, v36, 0, v14, v51, v50, v15, v12, 0, 0, 0, v39, v40, v41, v42);

  _Block_object_dispose(&v46, 8);
  return v37;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v9 = a4;
  v10 = self->_selectionType - 1;
  if (v10 > 2)
  {
    v11 = 6;
  }

  else
  {
    v11 = dword_2217E01A8[v10];
  }

  v12 = *(a3 + 4);
  *(a3 + 4) = v12 | 0x100;
  *(a3 + 34) = v11;
  cellUIDRegion = self->_cellUIDRegion;
  *(a3 + 4) = v12 | 0x110;
  v14 = *(a3 + 13);
  if (!v14)
  {
    v15 = *(a3 + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v15);
    *(a3 + 13) = v14;
  }

  objc_msgSend_saveToMessage_(cellUIDRegion, v6, v14, v7, v8);
  baseCellUIDRegion = self->_baseCellUIDRegion;
  *(a3 + 4) |= 0x20u;
  v20 = *(a3 + 14);
  if (!v20)
  {
    v21 = *(a3 + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v21);
    *(a3 + 14) = v20;
  }

  objc_msgSend_saveToMessage_(baseCellUIDRegion, v16, v20, v17, v18);
  *(a3 + 4) |= 0x40u;
  v22 = *(a3 + 15);
  if (!v22)
  {
    v23 = *(a3 + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0330](v23);
    *(a3 + 15) = v22;
  }

  TSKUIDStructCoord::saveToMessage(&self->_anchorCellUID, v22);
  *(a3 + 4) |= 0x80u;
  v24 = *(a3 + 16);
  if (!v24)
  {
    v25 = *(a3 + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x223DA0330](v25);
    *(a3 + 16) = v24;
  }

  TSKUIDStructCoord::saveToMessage(&self->_cursorCellUID, v24);
  v30 = objc_msgSend_tableInfo(self, v26, v27, v28, v29);

  if (v30)
  {
    v37 = objc_msgSend_tableInfo(self, v31, v32, v33, v34);
    *(a3 + 4) |= 8u;
    v38 = *(a3 + 12);
    if (!v38)
    {
      v39 = *(a3 + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x223DA0390](v39);
      *(a3 + 12) = v38;
    }

    objc_msgSend_setWeakReference_message_(v9, v35, v37, v38, v36);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v31, 10, a3, v34);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v40, 11, a3, v41);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v42, 12, a3, v43);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v44, 13, a3, v45);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v46, 9, a3, v47);
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = a3;
  v52 = objc_msgSend_cellRegion(self, v48, v49, v50, v51);
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = sub_22108F110;
  v79[3] = &unk_27845DB00;
  v79[4] = v80;
  objc_msgSend_enumerateCellRangesUsingBlock_(v52, v53, v79, v54, v55);

  v60 = objc_msgSend_baseRegion(self, v56, v57, v58, v59);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_22108F1E0;
  v78[3] = &unk_27845DB00;
  v78[4] = v80;
  objc_msgSend_enumerateCellRangesUsingBlock_(v60, v61, v78, v62, v63);

  v68 = objc_msgSend_anchorCellID(self, v64, v65, v66, v67);
  *(a3 + 4) |= 2u;
  v69 = *(a3 + 10);
  if (!v69)
  {
    v70 = *(a3 + 1);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v70);
    *(a3 + 10) = v69;
  }

  sub_221123904(v68, v69);
  v75 = objc_msgSend_cursorCellID(self, v71, v72, v73, v74);
  *(a3 + 4) |= 4u;
  v76 = *(a3 + 11);
  if (!v76)
  {
    v77 = *(a3 + 1);
    if (v77)
    {
      v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
    }

    v76 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v77);
    *(a3 + 11) = v76;
  }

  sub_221123904(v75, v76);
  _Block_object_dispose(v80, 8);
}

- (TSTCellSelection)initWithRdar39989167Archive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v12 = sub_22108EBB4(*(a3 + 16), v7, v8, v9, v10);
  v13 = *(a3 + 4);
  if ((v13 & 2) != 0)
  {
    v16 = [TSTCellUIDRegion alloc];
    if (*(a3 + 4))
    {
      v20 = objc_msgSend_initFromMessage_(v16, v17, *(a3 + 4), v18, v19);
    }

    else
    {
      v20 = objc_msgSend_initFromMessage_(v16, v17, &TST::_CellUIDRegionArchive_default_instance_, v18, v19);
    }

    v14 = v20;
    v13 = *(a3 + 4);
    if ((v13 & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 4) == 0)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_12;
    }
  }

  v21 = [TSTCellUIDRegion alloc];
  if (*(a3 + 5))
  {
    v25 = objc_msgSend_initFromMessage_(v21, v22, *(a3 + 5), v23, v24);
  }

  else
  {
    v25 = objc_msgSend_initFromMessage_(v21, v22, &TST::_CellUIDRegionArchive_default_instance_, v23, v24);
  }

  v15 = v25;
  v13 = *(a3 + 4);
LABEL_12:
  if ((v13 & 8) != 0)
  {
    v26 = *(a3 + 6);
    v46 = 0u;
    v47 = 0u;
    sub_2211A8FE8(v26, v11, &v46);
    v51[0] = v46;
    v51[1] = v47;
    v13 = *(a3 + 4);
  }

  if ((v13 & 0x10) != 0)
  {
    v27 = *(a3 + 7);
    v46 = 0u;
    v47 = 0u;
    sub_2211A8FE8(v27, v11, &v46);
    v50[0] = v46;
    v50[1] = v47;
    v13 = *(a3 + 4);
  }

  *&v46 = 0;
  *(&v46 + 1) = &v46;
  *&v47 = 0x3032000000;
  *(&v47 + 1) = sub_22108ECBC;
  v48 = sub_22108ECCC;
  v49 = 0;
  if (v13)
  {
    v28 = *(a3 + 3);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22108F5A8;
    v45[3] = &unk_27845DAB0;
    v45[4] = &v46;
    v29 = v6;
    v30 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v29, v31, v28, v30, 0, v45);
  }

  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_22108F5B8;
  v42 = &unk_27845DAD8;
  v32 = self;
  v43 = v32;
  v44 = &v46;
  objc_msgSend_addFinalizeHandler_(v6, v33, &v39, v34, v35);
  v37 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(v32, v36, 0, v14, v51, v50, v15, v12, 0, 0, 0, v39, v40, v41, v42);

  _Block_object_dispose(&v46, 8);
  return v37;
}

- (id)selectionByExtendingWithCellRange:(TSUCellRect)a3 inTable:(id)a4 selectionType:(int64_t)a5 cursorCell:(TSUCellCoord)a6
{
  size = a3.size;
  origin = a3.origin;
  v15 = a4;
  if (origin == 0x7FFFFFFF || (origin & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(size) || !size)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellSelection selectionByExtendingWithCellRange:inTable:selectionType:cursorCell:]", v13, v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 588, 0, "Can't extend a selection with an invalid cell range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_cellRegion(self, v11, v12, v13, v14);
  v32 = objc_msgSend_anchorCellID(self, v28, v29, v30, v31);
  v36 = objc_msgSend_containsCellID_(v27, v33, v32, v34, v35);

  objc_msgSend_baseRegion(self, v37, v38, v39, v40);
  if (v36)
    v41 = {;
    objc_msgSend_regionByAddingRange_(v41, v42, origin, size, v43);
  }

  else
    v41 = {;
    objc_msgSend_regionBySubtractingRange_(v41, v44, origin, size, v45);
  }
  v46 = ;

  v47 = [TSTCellSelection alloc];
  v52 = objc_msgSend_anchorCellID(self, v48, v49, v50, v51);
  v57 = objc_msgSend_baseRegion(self, v53, v54, v55, v56);
  v59 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v47, v58, v15, v46, v52, a6, v57, a5);

  return v59;
}

- (id)selectionByAddingCellRange:(TSUCellRect)a3 inTable:(id)a4 withAnchor:(TSUCellCoord)a5 cursor:(TSUCellCoord)a6 selectionType:(int64_t)a7
{
  size = a3.size;
  origin = a3.origin;
  v16 = a4;
  if (origin == 0x7FFFFFFF || (origin & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(size) || !size)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellSelection selectionByAddingCellRange:inTable:withAnchor:cursor:selectionType:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 610, 0, "Can't extend a selection with an invalid cell range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_cellRegion(self, v12, v13, v14, v15);
  v31 = objc_msgSend_regionByAddingRange_(v28, v29, origin, size, v30);

  v32 = [TSTCellSelection alloc];
  v37 = objc_msgSend_cellRegion(self, v33, v34, v35, v36);
  v39 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v32, v38, v16, v31, *&a5, a6, v37, a7);

  return v39;
}

- (id)selectionByRemovingCellRange:(TSUCellRect)a3 inTable:(id)a4 withAnchor:(TSUCellCoord)a5 cursor:(TSUCellCoord)a6 selectionType:(int64_t)a7
{
  size = a3.size;
  origin = a3.origin;
  v16 = a4;
  if (origin == 0x7FFFFFFF || (origin & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(size) || !size)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellSelection selectionByRemovingCellRange:inTable:withAnchor:cursor:selectionType:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 623, 0, "Can't remove an invalid cell range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_cellRegion(self, v12, v13, v14, v15);
  v31 = objc_msgSend_regionBySubtractingRange_(v28, v29, origin, size, v30);

  v32 = [TSTCellSelection alloc];
  v37 = objc_msgSend_cellRegion(self, v33, v34, v35, v36);
  v39 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v32, v38, v16, v31, *&a5, a6, v37, a7);

  return v39;
}

- (id)selectionAdjustedForVisibilityInTableInfo:(id)a3
{
  v4 = objc_msgSend_selectionAdjustedForVisibilityInTableInfo_alwaysCheckColumns_(self, a2, a3, 0, v3);

  return v4;
}

- (id)selectionAdjustedForVisibilityInTableInfo:(id)a3 alwaysCheckColumns:(BOOL)a4
{
  v6 = a3;
  if (objc_msgSend_cellCount(self, v7, v8, v9, v10))
  {
    if (objc_msgSend_isValidForInteraction(v6, v11, v12, v13, v14))
    {
      v15 = self;
      if (objc_msgSend_selectionType(v15, v16, v17, v18, v19) == 2)
      {
        v24 = objc_msgSend_cellRegion(v15, v20, v21, v22, v23);
        v29 = objc_msgSend_intersectingColumnsIndexSet(v24, v25, v26, v27, v28);
        v32 = objc_msgSend_selectionWithTableInfo_columnIndices_(TSTCellSelection, v30, v6, v29, v31);

        v33 = v32;
      }

      else
      {
        objc_msgSend_p_selectionRemovingHiddenRowsInTableInfo_(v15, v20, v6, v22, v23);
        v33 = v24 = v15;
      }

      if (a4 || objc_msgSend_isAPivotTable(v6, v34, v35, v36, v37))
      {
        if (objc_msgSend_selectionType(v33, v34, v35, v36, v37) == 1)
        {
          v42 = objc_msgSend_cellRegion(v33, v38, v39, v40, v41);
          v47 = objc_msgSend_intersectingRowsIndexSet(v42, v43, v44, v45, v46);
          v50 = objc_msgSend_selectionWithTableInfo_rowIndices_(TSTCellSelection, v48, v6, v47, v49);

          v33 = v50;
        }

        else
        {
          objc_msgSend_p_selectionRemovingHiddenColumnsInTableInfo_(v33, v38, v6, v40, v41);
          v33 = v42 = v33;
        }
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = self;
  }

  return v33;
}

- (id)p_selectionRemovingHiddenRowsInTableInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v10 = objc_msgSend_cellRegion(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_intersectingRowsIndexSet(v10, v11, v12, v13, v14);
  v19 = objc_msgSend_indexesOfVisibleRowsInRowRange_(v4, v16, v15, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);
  if (v24 != objc_msgSend_count(v15, v25, v26, v27, v28))
  {
    v32 = objc_msgSend_regionByTrimmingAroundRowIndices_(v10, v29, v19, v30, v31);
    if (objc_msgSend_cellCount(v32, v33, v34, v35, v36))
    {
      v41 = objc_msgSend_cellCount(v32, v37, v38, v39, v40);
      if (v41 == objc_msgSend_cellCount(v10, v42, v43, v44, v45))
      {
        goto LABEL_23;
      }

      if (!objc_msgSend_selectionType(v5, v46, v47, v48, v49))
      {
        v61 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v50, v4, v32, v53);
LABEL_22:

        v5 = v61;
        goto LABEL_23;
      }

      if (objc_msgSend_selectionType(v5, v50, v51, v52, v53) != 1)
      {
LABEL_23:

        goto LABEL_24;
      }

      v58 = objc_msgSend_intersectingRowsIndexSet(v32, v54, v55, v56, v57);
      v61 = objc_msgSend_selectionWithTableInfo_rowIndices_(TSTCellSelection, v59, v4, v58, v60);
    }

    else
    {
      v126 = objc_msgSend_indexesForSummaryRows(v4, v37, v38, v39, v40);
      CellID = objc_msgSend_firstCellID(v10, v62, v63, v64, v65);
      v127 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v4, v67, CellID, v68, v69);
      if (objc_msgSend_count(v126, v70, v71, v72, v73))
      {
        v78 = objc_msgSend_firstCellID(v10, v74, v75, v76, v77);
        v82 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v4, v79, v78, v80, v81);
        v86 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v126, v83, v15, v84, v85);
        v90 = objc_msgSend_containsIndex_(v126, v87, v127, v88, v89);
        v125 = v82;
        v94 = (v82 != 0x7FFFFFFF) & (v86 ^ v90) & (v86 ^ objc_msgSend_containsIndex_(v126, v91, v82, v92, v93) ^ 1);
        v95 = v82;
        if (v82 != 0x7FFFFFFF && (v94 & 1) == 0)
        {
          v96 = objc_msgSend_indexesForGrandTotalRows(v4, v74, v75, v76, v77);
          v100 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v96, v97, v15, v98, v99);
          v104 = objc_msgSend_containsIndex_(v96, v101, v127, v102, v103);
          v94 = (v100 ^ objc_msgSend_containsIndex_(v96, v105, v125, v106, v107) ^ 1) & (v100 ^ v104);
        }

        v112 = v127;
        if (v127 == 0x7FFFFFFF)
        {
          v113 = 1;
        }

        else
        {
          v113 = v94;
        }

        if (v113)
        {
          v112 = v95;
        }

        v127 = v112;
      }

      else if (v127 == 0x7FFFFFFF)
      {
        v108 = objc_msgSend_firstCellID(v10, v74, v75, v76, v77);
        v127 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v4, v109, v108, v110, v111);
      }

      v114 = objc_msgSend_intersectingColumnsIndexSet(v10, v74, v75, v76, v77);
      v118 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v115, v127, v116, v117);
      v121 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v119, v114, v118, v120);

      v61 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v122, v4, v121, v123);
      v32 = v121;
      v58 = v126;
    }

    v5 = v58;
    goto LABEL_22;
  }

LABEL_24:

  return v5;
}

- (id)p_selectionRemovingHiddenColumnsInTableInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v10 = objc_msgSend_cellRegion(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_boundingCellRange(v10, v11, v12, v13, v14);
  v149 = objc_msgSend_indexesOfVisibleColumnsInCellRange_(v4, v16, v15, v16, v17);

  v22 = objc_msgSend_cellRegion(v5, v18, v19, v20, v21);
  v26 = objc_msgSend_regionByTrimmingAroundColumnIndices_(v22, v23, v149, v24, v25);

  if (objc_msgSend_cellCount(v26, v27, v28, v29, v30))
  {
    v35 = objc_msgSend_cellCount(v26, v31, v32, v33, v34);
    v40 = objc_msgSend_cellRegion(v5, v36, v37, v38, v39);
    v45 = objc_msgSend_cellCount(v40, v41, v42, v43, v44);

    if (v35 == v45)
    {
      goto LABEL_18;
    }

    if (!objc_msgSend_selectionType(v5, v46, v47, v48, v49))
    {
      v61 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v50, v4, v26, v53);
      goto LABEL_17;
    }

    if (objc_msgSend_selectionType(v5, v50, v51, v52, v53) != 2)
    {
      goto LABEL_18;
    }

    v58 = objc_msgSend_intersectingColumnsIndexSet(v26, v54, v55, v56, v57);
    v61 = objc_msgSend_selectionWithTableInfo_columnIndices_(TSTCellSelection, v59, v4, v58, v60);
  }

  else
  {
    v148 = objc_msgSend_indexesForSummaryColumns(v4, v31, v32, v33, v34);
    v66 = objc_msgSend_anchorCellID(v5, v62, v63, v64, v65);
    v70 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v4, v67, WORD2(v66), v68, v69);
    if (objc_msgSend_count(v148, v71, v72, v73, v74))
    {
      v79 = objc_msgSend_anchorCellID(v5, v75, v76, v77, v78);
      v147 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v4, v80, WORD2(v79), v81, v82);
      v87 = objc_msgSend_cellRegion(v5, v83, v84, v85, v86);
      v92 = objc_msgSend_intersectingColumnsIndexSet(v87, v88, v89, v90, v91);
      v96 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v148, v93, v92, v94, v95);

      LOBYTE(v92) = objc_msgSend_containsIndex_(v148, v97, v70, v98, v99);
      v104 = (((v147 == 0x7FFF) | v96 ^ objc_msgSend_containsIndex_(v148, v100, v147, v101, v102)) ^ 1) & (v96 ^ v92);
      if (v147 != 0x7FFF && (v104 & 1) == 0)
      {
        v105 = objc_msgSend_indexesForGrandTotalColumns(v4, v75, v103, v77, v78);
        v110 = objc_msgSend_cellRegion(v5, v106, v107, v108, v109);
        v115 = objc_msgSend_intersectingColumnsIndexSet(v110, v111, v112, v113, v114);
        v119 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v105, v116, v115, v117, v118);

        LOBYTE(v110) = objc_msgSend_containsIndex_(v105, v120, v70, v121, v122);
        v104 = (v119 ^ objc_msgSend_containsIndex_(v105, v123, v147, v124, v125) ^ 1) & (v119 ^ v110);
      }

      if (v104 & 1 | (v70 == 0x7FFF))
      {
        LOWORD(v70) = v147;
      }
    }

    else if (v70 == 0x7FFF)
    {
      v126 = objc_msgSend_anchorCellID(v5, v75, v76, v77, v78);
      LOWORD(v70) = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v4, v127, WORD2(v126), v128, v129);
    }

    v130 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v75, v70, v77, v78);
    v135 = objc_msgSend_cellRegion(v5, v131, v132, v133, v134);
    v140 = objc_msgSend_intersectingRowsIndexSet(v135, v136, v137, v138, v139);
    v143 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v141, v130, v140, v142);

    v61 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v144, v4, v143, v145);
    v26 = v143;
    v58 = v148;
  }

  v5 = v58;
LABEL_17:

  v5 = v61;
LABEL_18:

  return v5;
}

- (id)selectionAdjustedForGeometryInTableInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v10 = v5;
  selectionType = v5->_selectionType;
  if (selectionType == 2)
  {
    v38 = objc_msgSend_cellRegion(v5, v6, v7, v8, v9);
    objc_msgSend_boundingCellRange(v38, v39, v40, v41, v42);
    v44 = v43;
    objc_msgSend_range(v4, v43, v45, v46, v47);
    v49 = v48 ^ v44;

    if (!HIDWORD(v49))
    {
      goto LABEL_8;
    }

    v50 = objc_opt_class();
    v29 = objc_msgSend_cellRegion(v10, v51, v52, v53, v54);
    v34 = objc_msgSend_intersectingColumnsIndexSet(v29, v55, v56, v57, v58);
    v37 = objc_msgSend_selectionWithTableInfo_columnIndices_(v50, v59, v4, v34, v60);
    goto LABEL_7;
  }

  if (selectionType == 1)
  {
    v12 = objc_msgSend_cellRegion(v5, v6, v7, v8, v9);
    objc_msgSend_boundingCellRange(v12, v13, v14, v15, v16);
    v18 = v17;
    objc_msgSend_range(v4, v17, v19, v20, v21);
    v23 = v22;

    if (v18 != v23)
    {
      v24 = objc_opt_class();
      v29 = objc_msgSend_cellRegion(v10, v25, v26, v27, v28);
      v34 = objc_msgSend_intersectingRowsIndexSet(v29, v30, v31, v32, v33);
      v37 = objc_msgSend_selectionWithTableInfo_rowIndices_(v24, v35, v4, v34, v36);
LABEL_7:
      v61 = v37;

      v10 = v61;
    }
  }

LABEL_8:

  return v10;
}

- (void)setCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v7 = objc_msgSend_cellRegion(self, a2, *&a3.origin, *&a3.size, v3);
  v10 = objc_msgSend_equalsCellRange_(v7, v8, origin, size, v9);

  if ((v10 & 1) == 0)
  {
    v13 = objc_msgSend_regionFromRange_(TSTCellRegion, v11, origin, size, v12);
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    v18 = objc_msgSend_cellUIDRegionFromCellRegion_(WeakRetained, v15, v13, v16, v17);
    cellUIDRegion = self->_cellUIDRegion;
    self->_cellUIDRegion = v18;

    v20 = objc_loadWeakRetained(&self->_tableInfo);
    v24 = v20;
    if (v20)
    {
      objc_msgSend_cellUIDForCellID_(v20, v21, origin, v22, v23);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    self->_anchorCellUID._column = v33;
    self->_anchorCellUID._row = v34;

    v25 = objc_loadWeakRetained(&self->_tableInfo);
    v29 = v25;
    if (v25)
    {
      objc_msgSend_cellUIDForCellID_(v25, v26, (origin + (size << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (origin + HIDWORD(size) - 1), v27, v28);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    self->_cursorCellUID._column = v33;
    self->_cursorCellUID._row = v34;

    objc_msgSend_p_cacheCellRegion_(self, v30, v13, v31, v32);
  }
}

- (id)selectionToBeginImplicitEditingInTableInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_cellRegion(self, v6, v7, v8, v9);
  v15 = objc_msgSend_anchorCellID(self, v11, v12, v13, v14);
  v20 = objc_msgSend_cursorCellID(self, v16, v17, v18, v19);
  v25 = objc_msgSend_baseRegion(self, v21, v22, v23, v24);
  v29 = 1;
  v27 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_searchReferenceRange_beginImplicitEditing_(v5, v26, v4, v10, v15, v20, v25, self->_selectionType, self->_searchReferenceRange.location, self->_searchReferenceRange.length, v29);

  return v27;
}

- (id)selectionExpandedToCoverCollapsedRows
{
  if (self->_selectionType == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    isCategorized = objc_msgSend_isCategorized(WeakRetained, v4, v5, v6, v7);

    if (isCategorized)
    {
      v13 = objc_msgSend_cellRegion(self, v9, v10, v11, v12);
      v18 = objc_msgSend_intersectingRowsIndexSet(v13, v14, v15, v16, v17);

      Index = objc_msgSend_lastIndex(v18, v19, v20, v21, v22);
      v24 = objc_loadWeakRetained(&self->_tableInfo);
      isGroupingRowCollapsed = objc_msgSend_isGroupingRowCollapsed_(v24, v25, Index, v26, v27);

      if (isGroupingRowCollapsed)
      {
        v29 = objc_loadWeakRetained(&self->_tableInfo);
        v33 = objc_msgSend_rowRangeUnderSummaryOrLabelRow_(v29, v30, Index, v31, v32);
        v35 = v34;

        v40 = objc_msgSend_mutableCopy(v18, v36, v37, v38, v39);
        v43 = v40;
        if (Index <= (v33 + v35))
        {
          v44 = v33 + v35;
        }

        else
        {
          v44 = Index;
        }

        if (Index >= (v33 + v35))
        {
          objc_msgSend_addIndexesInRange_(v40, v41, v33 + v35, v44 - (v33 + v35), v42);
        }

        else
        {
          objc_msgSend_addIndexesInRange_(v40, v41, Index, v44 - Index, v42);
        }

        v45 = objc_alloc(objc_opt_class());
        v46 = objc_loadWeakRetained(&self->_tableInfo);
        v49 = objc_msgSend_initWithTableInfo_rowIndices_(v45, v47, v46, v43, v48);

        goto LABEL_13;
      }
    }
  }

  v49 = self;
LABEL_13:

  return v49;
}

- (void)insert:(int64_t)a3 atIndex:(unsigned int)a4 count:(unsigned int)a5
{
  v30 = objc_msgSend_cellRegion(self, a2, a3, *&a4, *&a5);
  v13 = objc_msgSend_boundingCellRange(v30, v9, v10, v11, v12);
  v15 = v14;

  if (a3)
  {
    selectionType = self->_selectionType;
    if (selectionType)
    {
      if (selectionType == 1)
      {
        v15 = v15 & 0xFFFFFFFF00000000 | (v15 + a5);
        goto LABEL_25;
      }

      if (selectionType != 2 || v15 < 2 || WORD2(v13) > a4)
      {
        goto LABEL_25;
      }
    }

    else if (v15 < 2 || WORD2(v13) > a4)
    {
      goto LABEL_25;
    }

    if (a5 + a4 <= WORD2(v13) + v15)
    {
      v15 = v15 & 0xFFFFFFFF00000000 | (v15 + a5);
    }
  }

  else
  {
    v17 = self->_selectionType;
    if (v17)
    {
      if (v17 == 2)
      {
        v15 = v15 | ((HIDWORD(v15) + a5) << 32);
        goto LABEL_25;
      }

      if (v17 != 1 || v15 >> 33 == 0 || v13 > a4)
      {
        goto LABEL_25;
      }
    }

    else if (!(v15 >> 33) || v13 > a4)
    {
      goto LABEL_25;
    }

    if (a5 + a4 <= HIDWORD(v15) + v13)
    {
      v15 = v15 | ((HIDWORD(v15) + a5) << 32);
    }
  }

LABEL_25:
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v22 = objc_msgSend_regionFromRange_(TSTCellRegion, v20, v13, v15, v21);
  v26 = objc_msgSend_cellUIDRegionFromCellRegion_(WeakRetained, v23, v22, v24, v25);
  cellUIDRegion = self->_cellUIDRegion;
  self->_cellUIDRegion = v26;
}

- (void)remove:(int64_t)a3 atIndex:(unsigned int)a4 count:(unsigned int)a5
{
  v50 = objc_msgSend_cellRegion(self, a2, a3, *&a4, *&a5);
  v13 = objc_msgSend_boundingCellRange(v50, v9, v10, v11, v12);
  v15 = v14;
  v16 = HIDWORD(v13);
  v17 = v13 & 0xFFFF000000000000;
  v18 = HIDWORD(v14);

  v19 = WORD2(v13);
  if (!a3)
  {
    v19 = v13;
  }

  if ((self->_selectionType - 3) >= 0xFFFFFFFFFFFFFFFELL && v19 <= a4)
  {
    v21 = a3 ? v15 : v18;
    if (a5 + a4 <= v19 + v21)
    {
      v41 = v21 - a5;
      if (v41)
      {
        if (a3)
        {
          v15 = v41;
          v18 = v18;
        }

        else
        {
          v18 = v41;
        }

        goto LABEL_68;
      }

      if (v19)
      {
        if (a3)
        {
          LOWORD(v16) = WORD2(v13) - 1;
LABEL_65:
          v15 = 1;
          goto LABEL_68;
        }

        LODWORD(v13) = v13 - 1;
      }

      else if (a3)
      {
        goto LABEL_65;
      }

      v18 = 1;
      goto LABEL_68;
    }
  }

  if (v19 <= a4)
  {
    if (a3)
    {
      v34 = v15;
    }

    else
    {
      v34 = v18;
    }

    v35 = v19 + v34;
    v36 = a5 + a4;
    v37 = a4 - v35 + v34;
    if (a3)
    {
      v38 = v37;
    }

    else
    {
      v38 = v15;
    }

    if (a3)
    {
      v37 = v18;
    }

    v39 = v36 >= v35;
    if (v36 >= v35)
    {
      v40 = v38;
    }

    else
    {
      v40 = v15;
    }

    if (!v39)
    {
      v37 = v18;
    }

    if (a4 > v35)
    {
      v18 = v18;
    }

    else
    {
      v15 = v40;
      v18 = v37;
    }
  }

  else
  {
    v22 = a5 + a4;
    if (a3)
    {
      v23 = v15;
    }

    else
    {
      v23 = v18;
    }

    v24 = v19 + v23;
    v25 = v22 - v19;
    v26 = v23 - (v22 - v19);
    v27 = WORD2(v13) - (v22 - v19);
    if (a3)
    {
      v28 = v26;
    }

    else
    {
      v28 = v15;
    }

    if (a3)
    {
      v26 = v18;
      v25 = 0;
    }

    else
    {
      v27 = WORD2(v13);
    }

    v29 = v13 - v25;
    v30 = v22 >= v19;
    if (v22 >= v19)
    {
      v31 = v28;
    }

    else
    {
      v31 = v15;
    }

    if (!v30)
    {
      v26 = v18;
      v29 = v13;
      v27 = WORD2(v13);
    }

    if (a3)
    {
      v32 = 0;
    }

    else
    {
      v32 = v15;
    }

    if (a3)
    {
      v33 = v18;
    }

    else
    {
      v33 = 0;
    }

    if (v22 > v24)
    {
      v15 = v32;
    }

    else
    {
      v15 = v31;
    }

    if (v22 > v24)
    {
      v18 = v33;
    }

    else
    {
      v18 = v26;
    }

    if (v22 <= v24)
    {
      LODWORD(v13) = v29;
      LOWORD(v16) = v27;
    }
  }

LABEL_68:
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v44 = objc_msgSend_regionFromRange_(TSTCellRegion, v42, v17 | v13 | (v16 << 32), v15 | (v18 << 32), v43);
  v48 = objc_msgSend_cellUIDRegionFromCellRegion_(WeakRetained, v45, v44, v46, v47);
  cellUIDRegion = self->_cellUIDRegion;
  self->_cellUIDRegion = v48;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v11 = objc_msgSend_cellRegion(self, v7, v8, v9, v10);
  v15 = objc_msgSend_copyWithZone_(v11, v12, a3, v13, v14);
  v20 = objc_msgSend_anchorCellID(self, v16, v17, v18, v19);
  v25 = objc_msgSend_cursorCellID(self, v21, v22, v23, v24);
  v30 = objc_msgSend_baseRegion(self, v26, v27, v28, v29);
  v34 = objc_msgSend_copyWithZone_(v30, v31, a3, v32, v33);
  beginImplicitEditing = self->_beginImplicitEditing;
  v36 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_searchReferenceRange_beginImplicitEditing_(v5, v35, WeakRetained, v15, v20, v25, v34, self->_selectionType, self->_searchReferenceRange.location, self->_searchReferenceRange.length, beginImplicitEditing);

  return v36;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8))
  {
    isEqualToSelection = objc_msgSend_isEqualToSelection_(self, v9, v4, v10, v11);
  }

  else
  {
    isEqualToSelection = 0;
  }

  return isEqualToSelection;
}

- (BOOL)isEqualToSelection:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v27 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  if (objc_msgSend_selectionType(v5, v6, v7, v8, v9) != self->_selectionType)
  {
    goto LABEL_18;
  }

  objc_msgSend_anchorCellUID(v10, v11, v12, v13, v14);
  if (v74 != self->_anchorCellUID._row._lower)
  {
    goto LABEL_18;
  }

  if (v75 != self->_anchorCellUID._row._upper)
  {
    goto LABEL_18;
  }

  if (v72 != self->_anchorCellUID._column._lower)
  {
    goto LABEL_18;
  }

  if (v73 != self->_anchorCellUID._column._upper)
  {
    goto LABEL_18;
  }

  objc_msgSend_cursorCellUID(v10, v15, v16, v17, v18);
  if (v74 != self->_cursorCellUID._row._lower || v75 != self->_cursorCellUID._row._upper || v72 != self->_cursorCellUID._column._lower || v73 != self->_cursorCellUID._column._upper)
  {
    goto LABEL_18;
  }

  v27 = 0;
  if (objc_msgSend_searchReferenceRange(v10, v19, v20, v21, v22) != self->_searchReferenceRange.location || v23 != self->_searchReferenceRange.length)
  {
    goto LABEL_19;
  }

  beginImplicitEditing = self->_beginImplicitEditing;
  if (beginImplicitEditing == objc_msgSend_beginImplicitEditing(v10, v23, v24, v25, v26) && (objc_msgSend_cellUIDRegion(v10, v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_cellCount(v33, v34, v35, v36, v37), v43 = objc_msgSend_cellCount(self->_cellUIDRegion, v39, v40, v41, v42), v33, v38 == v43) && (objc_msgSend_cellRegion(v10, v44, v45, v46, v47), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellRegion(self, v49, v50, v51, v52), v53 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend_equalsCellRegion_(v48, v54, v53, v55, v56), v53, v48, (v57 & 1) != 0))
  {
    v62 = objc_msgSend_baseRegion(v10, v58, v59, v60, v61);
    v67 = objc_msgSend_baseRegion(self, v63, v64, v65, v66);
    v27 = objc_msgSend_equalsCellRegion_(v62, v68, v67, v69, v70);
  }

  else
  {
LABEL_18:
    v27 = 0;
  }

LABEL_19:

LABEL_21:
  return v27;
}

- (BOOL)areCellsInTheSameRegionInTable:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cellRegion(self, v5, v6, v7, v8);
  v14 = objc_msgSend_boundingCellRange(v9, v10, v11, v12, v13);
  v16 = v15;

  v20 = objc_msgSend_tableAreaForCellID_(v4, v17, v14, v18, v19);
  v24 = objc_msgSend_tableAreaForCellID_(v4, v21, (v14 + (v16 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v14 + HIDWORD(v16) - 1), v22, v23);
  v25 = v20 == 5 && v24 == 2 || v20 == 6 && v24 == 4 || v20 == v24;

  return v25;
}

- (BOOL)containsSelection:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8))
  {
    v9 = v4;
    v14 = objc_msgSend_cellRegion(self, v10, v11, v12, v13);
    v19 = objc_msgSend_cellRegion(v9, v15, v16, v17, v18);
    v23 = objc_msgSend_containsCellRegion_(v14, v20, v19, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)containsCell:(TSUCellCoord)a3
{
  v5 = a3;
  v6 = objc_msgSend_cellRegion(self, a2, *&a3, v3, v4);
  LOBYTE(v5.row) = objc_msgSend_containsCellID_(v6, v7, *&v5, v8, v9);

  return v5.row;
}

- (BOOL)containsSingleCellOrMergeInTable:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cellRegion(self, v5, v6, v7, v8);
  if (objc_msgSend_isRectangle(v9, v10, v11, v12, v13) && (v18 = objc_msgSend_boundingCellRange(v9, v14, v15, v16, v17), objc_msgSend_isSingleCellOrMergeRange_(v4, v19, v18, v19, v20)))
  {
    v25 = objc_msgSend_boundingCellRange(v9, v21, v22, v23, v24);
    v29 = objc_msgSend_hasMergeFragmentAtCellID_(v4, v26, v25, v27, v28) ^ 1;
  }

  else
  {
    LOBYTE(v29) = 0;
  }

  return v29;
}

- (BOOL)selectsSingleControlCellWithInteractionUIInTable:(id)a3
{
  v4 = a3;
  if (objc_msgSend_canEditWithControlCellSubselectionInTable_(self, v5, v4, v6, v7))
  {
    v12 = objc_msgSend_cellRegion(self, v8, v9, v10, v11);
    CellID = objc_msgSend_firstCellID(v12, v13, v14, v15, v16);
    v21 = objc_msgSend_cellAtCellID_(v4, v18, CellID, v19, v20);

    if (v21 && objc_msgSend_hasControl(v21, v22, v23, v24, v25))
    {
      v30 = objc_msgSend_interactionType(v21, v26, v27, v28, v29);
      if (v30 >= 8)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0xB0u >> v30;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

- (BOOL)containsHeaderColumns
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_headerColumnRange(WeakRetained, v8, v9, v10, v11);
  v15 = objc_msgSend_intersectsCellRange_(v6, v13, v12, v13, v14);

  return v15;
}

- (BOOL)containsHeaderRows
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_headerRowRange(WeakRetained, v8, v9, v10, v11);
  v15 = objc_msgSend_intersectsCellRange_(v6, v13, v12, v13, v14);

  return v15;
}

- (BOOL)containsBodyRows
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_bodyRowRange(WeakRetained, v8, v9, v10, v11);
  v15 = objc_msgSend_intersectsCellRange_(v6, v13, v12, v13, v14);

  return v15;
}

- (BOOL)containsBodyColumns
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_bodyColumnRange(WeakRetained, v8, v9, v10, v11);
  v15 = objc_msgSend_intersectsCellRange_(v6, v13, v12, v13, v14);

  return v15;
}

- (BOOL)containsFooterRows
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v12 = objc_msgSend_footerRowRange(WeakRetained, v8, v9, v10, v11);
  v15 = objc_msgSend_intersectsCellRange_(v6, v13, v12, v13, v14);

  return v15;
}

- (BOOL)containsCellsInCategoryColumn
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_cellRegion(self, v7, v8, v9, v10);
  v15 = objc_msgSend_indexesForCategoryColumnsInRegion_(v6, v12, v11, v13, v14);

  LOBYTE(v6) = objc_msgSend_count(v15, v16, v17, v18, v19) != 0;
  return v6;
}

- (BOOL)containsCellsInSummaryRow
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_cellRegion(self, v7, v8, v9, v10);
  v15 = objc_msgSend_indexesForSummaryRowsInRegion_(v6, v12, v11, v13, v14);

  LOBYTE(v6) = objc_msgSend_count(v15, v16, v17, v18, v19) != 0;
  return v6;
}

- (BOOL)containsCellsInLabelRow
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_cellRegion(self, v7, v8, v9, v10);
  v15 = objc_msgSend_indexesForLabelRowsInRegion_(v6, v12, v11, v13, v14);

  LOBYTE(v6) = objc_msgSend_count(v15, v16, v17, v18, v19) != 0;
  return v6;
}

- (BOOL)containsCellsInSummaryOrLabelRows
{
  if (objc_msgSend_containsCellsInSummaryRow(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_containsCellsInLabelRow, v6, v7, v8);
}

- (BOOL)containsCellsInCategoryColumnsOrRows
{
  if (objc_msgSend_containsCellsInCategoryColumn(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_containsCellsInSummaryOrLabelRows, v6, v7, v8);
}

- (BOOL)containsCellsInCategoryGroupingColumn
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_cellRegion(self, v7, v8, v9, v10);
  v15 = objc_msgSend_indexesForGroupingColumnsInRegion_(v6, v12, v11, v13, v14);

  LOBYTE(v6) = objc_msgSend_count(v15, v16, v17, v18, v19) != 0;
  return v6;
}

- (BOOL)containsGroupValueCells
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  if (objc_msgSend_isCategorized(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_cellRegion(self, v11, v12, v13, v14);
    v19 = objc_msgSend_indexesForSummaryRowsInRegion_(v6, v16, v15, v17, v18);
    v23 = objc_msgSend_indexesForCategoryColumnsInRegion_(v6, v20, v15, v21, v22);
    v26 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v24, v23, v19, v25);
    v30 = objc_msgSend_intersectsCellRegion_(v15, v27, v26, v28, v29);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)containsOnlyCellsInCategoryColumn
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  if (objc_msgSend_isEmpty(v6, v7, v8, v9, v10))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
    v20 = objc_msgSend_indexesForCategoryColumnsInRegion_(v16, v17, v6, v18, v19);

    v25 = objc_msgSend_count(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_intersectingColumnsIndexSet(v6, v26, v27, v28, v29);
    v15 = v25 == objc_msgSend_count(v30, v31, v32, v33, v34);
  }

  return v15;
}

- (BOOL)containsOnlyCellsInSummaryRow
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  if (objc_msgSend_isEmpty(v6, v7, v8, v9, v10))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
    v20 = objc_msgSend_indexesForSummaryRowsInRegion_(v16, v17, v6, v18, v19);

    v25 = objc_msgSend_count(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_intersectingRowsIndexSet(v6, v26, v27, v28, v29);
    v15 = v25 == objc_msgSend_count(v30, v31, v32, v33, v34);
  }

  return v15;
}

- (BOOL)containsOnlyCellsInSummaryAndLabelRows
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  if (objc_msgSend_isEmpty(v6, v7, v8, v9, v10))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
    v20 = objc_msgSend_indexesForSummaryAndLabelRowsInRegion_(v16, v17, v6, v18, v19);

    v25 = objc_msgSend_count(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_intersectingRowsIndexSet(v6, v26, v27, v28, v29);
    v15 = v25 == objc_msgSend_count(v30, v31, v32, v33, v34);
  }

  return v15;
}

- (BOOL)containsOnlySpecialCategoryOrPivotCells
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  if (objc_msgSend_isEmpty(v6, v7, v8, v9, v10))
  {
    v15 = 0;
  }

  else if (objc_msgSend_containsOnlySpecialCategoryCells(self, v11, v12, v13, v14))
  {
    v15 = 1;
  }

  else
  {
    v15 = objc_msgSend_containsOnlySpecialPivotCells(self, v16, v17, v18, v19);
  }

  return v15;
}

- (BOOL)containsOnlySpecialCategoryCells
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  if (objc_msgSend_isEmpty(v6, v7, v8, v9, v10))
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  isCategorized = objc_msgSend_isCategorized(WeakRetained, v12, v13, v14, v15);

  if (!isCategorized)
  {
    goto LABEL_9;
  }

  if (objc_msgSend_numberOfIntersectingColumns(v6, v17, v18, v19, v20) != 1 || (v21 = objc_loadWeakRetained(&self->_tableInfo), v26 = objc_msgSend_categoryColumnIndex(v21, v22, v23, v24, v25), v30 = objc_msgSend_intersectsColumn_(v6, v27, v26, v28, v29), v21, (v30 & 1) == 0))
  {
    v32 = MEMORY[0x277CCAA78];
    v33 = objc_loadWeakRetained(&self->_tableInfo);
    v38 = objc_msgSend_categoryColumnIndex(v33, v34, v35, v36, v37);
    v42 = objc_msgSend_indexSetWithIndex_(v32, v39, v38, v40, v41);
    v46 = objc_msgSend_regionBySubtractingColumnIndexes_(v6, v43, v42, v44, v45);

    v51 = objc_msgSend_intersectingRowsIndexSet(v46, v47, v48, v49, v50);
    v52 = objc_loadWeakRetained(&self->_tableInfo);
    v57 = objc_msgSend_indexesForSummaryAndLabelRows(v52, v53, v54, v55, v56);
    v61 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v51, v58, v57, v59, v60);

    v66 = objc_msgSend_count(v61, v62, v63, v64, v65);
    v71 = objc_msgSend_count(v51, v67, v68, v69, v70);

    if (v66 == v71)
    {
      v31 = 1;
      v6 = v46;
      goto LABEL_10;
    }

    v6 = v46;
LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  v31 = 1;
LABEL_10:

  return v31;
}

- (BOOL)containsOnlySpecialPivotCells
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  if ((objc_msgSend_isEmpty(v6, v7, v8, v9, v10) & 1) != 0 || (v11 = objc_loadWeakRetained(&self->_tableInfo), isAPivotTable = objc_msgSend_isAPivotTable(v11, v12, v13, v14, v15), v11, !isAPivotTable))
  {
    v79 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    v22 = objc_msgSend_layoutEngine(WeakRetained, v18, v19, v20, v21);

    v27 = objc_msgSend_intersectingRowsIndexSet(v6, v23, v24, v25, v26);
    v32 = objc_msgSend_visibleRowIndices(v22, v28, v29, v30, v31);
    v36 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v27, v33, v32, v34, v35);

    v41 = objc_msgSend_intersectingColumnsIndexSet(v6, v37, v38, v39, v40);
    v46 = objc_msgSend_visibleColumnIndices(v22, v42, v43, v44, v45);
    v50 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v41, v47, v46, v48, v49);

    v51 = objc_loadWeakRetained(&self->_tableInfo);
    v56 = objc_msgSend_indexesForNonSummaryBodyRows(v51, v52, v53, v54, v55);
    v60 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v36, v57, v56, v58, v59);

    v61 = objc_loadWeakRetained(&self->_tableInfo);
    v66 = objc_msgSend_indexesForNonSummaryBodyColumns(v61, v62, v63, v64, v65);
    v70 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v50, v67, v66, v68, v69);

    v79 = !objc_msgSend_count(v60, v71, v72, v73, v74) || !objc_msgSend_count(v70, v75, v76, v77, v78);
  }

  return v79;
}

- (BOOL)containsOnlyGroupValueCells
{
  result = 0;
  if (objc_msgSend_containsOnlyCellsInSummaryRow(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_cellRegion(self, v6, v7, v8, v9);
    v15 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
    v19 = objc_msgSend_indexesForCategoryColumnsInRegion_(v15, v16, v10, v17, v18);

    v24 = objc_msgSend_count(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_intersectingColumnsIndexSet(v10, v25, v26, v27, v28);
    v34 = objc_msgSend_count(v29, v30, v31, v32, v33);

    if (v24 == v34)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)canEditWithCellSubselectionInTable:(id)a3
{
  v7 = a3;
  if (self->_selectionType)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_containsSingleCellOrMergeInTable_(self, v4, v7, v5, v6);
  }

  return v8;
}

- (BOOL)canEditWithControlCellSubselectionInTable:(id)a3
{
  v4 = a3;
  if (objc_msgSend_canEditWithCellSubselectionInTable_(self, v5, v4, v6, v7))
  {
    v12 = objc_msgSend_cellRegion(self, v8, v9, v10, v11);
    v17 = objc_msgSend_boundingTopLeftCellID(v12, v13, v14, v15, v16);

    v21 = objc_msgSend_mergeRangeAtCellID_(v4, v18, v17, v19, v20);
    if (v22)
    {
      v26 = v22 >> 32 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      v27 = v17;
    }

    else
    {
      v27 = v21;
    }

    if ((v21 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v28 = v17;
    }

    else
    {
      v28 = v27;
    }

    if (v21 == 0x7FFFFFFF)
    {
      v29 = v17;
    }

    else
    {
      v29 = v28;
    }

    v30 = objc_msgSend_newCell(v4, v22, v23, v24, v25);
    v44 = !objc_msgSend_getCell_atCellID_(v4, v31, v30, v29, v32) && (objc_msgSend_hasControl(v30, v33, v34, v35, v36) & 1) != 0 || (objc_msgSend_isCategoryColumn_(v4, v33, WORD2(v29), v35, v36) & 1) == 0 && objc_msgSend_isCategorized(v4, v37, v38, v39, v40) && (objc_msgSend_isSummaryRow_(v4, v41, v29, v42, v43) & 1) != 0;
  }

  else
  {
    v44 = 0;
  }

  return v44;
}

- (BOOL)canEditWithStockCellSubselectionInTable:(id)a3
{
  v4 = a3;
  if (objc_msgSend_canEditWithCellSubselectionInTable_(self, v5, v4, v6, v7))
  {
    v12 = objc_msgSend_cellRegion(self, v8, v9, v10, v11);
    v17 = objc_msgSend_boundingTopLeftCellID(v12, v13, v14, v15, v16);

    objc_msgSend_mergeRangeAtCellID_(v4, v18, v17, v19, v20);
  }

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = NSStringFromClass(v4);
  selectionType = self->_selectionType;
  if (selectionType > 3)
  {
    v11 = @"<unknown>";
  }

  else
  {
    v11 = off_27845DB20[selectionType];
  }

  v12 = objc_msgSend_cellRegion(self, v5, v6, v7, v8);
  v17 = objc_msgSend_description(v12, v13, v14, v15, v16);
  v22 = objc_msgSend_baseRegion(self, v18, v19, v20, v21);
  v27 = objc_msgSend_description(v22, v23, v24, v25, v26);
  objc_msgSend_anchorCellID(self, v28, v29, v30, v31);
  v32 = NSStringFromTSUCellCoord();
  objc_msgSend_cursorCellID(self, v33, v34, v35, v36);
  v37 = NSStringFromTSUCellCoord();
  v41 = objc_msgSend_stringWithFormat_(v3, v38, @"<%@: %p type: %@ region: %@ base region: %@ anchor: %@ cursor: %@>", v39, v40, v9, self, v11, v17, v27, v32, v37);

  return v41;
}

- (id)briefDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = NSStringFromClass(v4);
  selectionType = self->_selectionType;
  if (selectionType > 3)
  {
    v11 = @"<unknown>";
  }

  else
  {
    v11 = off_27845DB20[selectionType];
  }

  objc_msgSend_anchorCellID(self, v5, v6, v7, v8);
  v12 = NSStringFromTSUCellCoord();
  objc_msgSend_cursorCellID(self, v13, v14, v15, v16);
  v17 = NSStringFromTSUCellCoord();
  v21 = objc_msgSend_stringWithFormat_(v3, v18, @"<%@: %p type: %@ anchor: %@ cursor: %@>", v19, v20, v9, self, v11, v12, v17);

  return v21;
}

- (BOOL)intersectsPartialMergeRangeInTable:(id)a3
{
  v8 = a3;
  if ((self->_selectionType - 1) <= 1 && (objc_msgSend_cellRegion(self, v4, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_boundingCellRange(v9, v10, v11, v12, v13), v16 = v15, v9, v8))
  {
    objc_msgSend_mergeRangesIntersectingRange_(v8, v17, v14, v16, v18);
    v23 = v37;
    if (v37 == v38)
    {
      v35 = 0;
      if (!v37)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    do
    {
      v24 = objc_msgSend_cellRegion(self, v19, v20, v21, v22);
      if (objc_msgSend_intersectsCellRange_(v24, v25, *v23, v23[1], v26))
      {
        v31 = objc_msgSend_cellRegion(self, v27, v28, v29, v30);
        v34 = objc_msgSend_containsCellRange_(v31, v32, *v23, v23[1], v33);

        if ((v34 & 1) == 0)
        {
          v35 = 1;
          goto LABEL_13;
        }
      }

      else
      {
      }

      v23 += 2;
    }

    while (v23 != v38);
    v35 = 0;
LABEL_13:
    v23 = v37;
    if (v37)
    {
LABEL_14:
      operator delete(v23);
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_15:

  return v35;
}

- (BOOL)getAggregateType:(unsigned __int8 *)a3
{
  if (objc_msgSend_cellCount(self, a2, a3, v3, v4) != 1 || !objc_msgSend_containsOnlyCellsInSummaryRow(self, v7, v8, v9, v10) || (objc_msgSend_containsCellsInCategoryColumn(self, v11, v12, v13, v14) & 1) != 0)
  {
    return 0;
  }

  column = self->_anchorCellUID._column;
  row = self->_anchorCellUID._row;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v21 = objc_msgSend_groupLevelForGroupUid_(WeakRetained, v18, &row, v19, v20);

  v15 = a3 != 0;
  if (a3)
  {
    v22 = objc_loadWeakRetained(&self->_tableInfo);
    *a3 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v22, v23, column._lower, column._upper, v21);
  }

  return v15;
}

- (NSString)cellSelectionNameForContextAndActionMenus
{
  v6 = objc_msgSend_cellRegion(self, a2, v2, v3, v4);
  v86.origin = objc_msgSend_boundingCellRange(v6, v7, v8, v9, v10);
  v86.size = v11;

  v16 = objc_msgSend_selectionType(self, v12, v13, v14, v15);
  if (v16 == 1)
  {
    TSUCellRect::setSpansAllColumns(&v86);
  }

  else if (v16 == 2)
  {
    TSUCellRect::setSpansAllRows(&v86);
  }

  v17 = TSUCellRectToTSCERangeCoordinate(*&v86.origin, *&v86.size);
  v19 = v18;
  v23 = objc_msgSend_tableInfo(self, v18, v20, v21, v22);
  v85[0] = v17;
  v85[1] = v19;
  v85[2] = objc_msgSend_tableUID(v23, v24, v25, v26, v27);
  v85[3] = v28;

  v33 = objc_msgSend_tableInfo(self, v29, v30, v31, v32);
  v38 = objc_msgSend_translator(v33, v34, v35, v36, v37);
  v42 = v38;
  if (v38)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v38, v39, v85, v40, v41);
  }

  else
  {
    memset(v84, 0, sizeof(v84));
  }

  v43 = objc_opt_new();
  v48 = objc_msgSend_tableInfo(self, v44, v45, v46, v47);
  v53 = objc_msgSend_tableUID(v48, v49, v50, v51, v52);
  objc_msgSend_setHostTableUID_(v43, v54, v53, v54, v55);

  objc_msgSend_setSuppressIdenticalEndReference_(v43, v56, 0, v57, v58);
  objc_msgSend_setUseSymbolicNames_(v43, v59, 0, v60, v61);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v43, v62, 0, v63, v64);
  v69 = objc_msgSend_tableInfo(self, v65, v66, v67, v68);
  v74 = objc_msgSend_calcEngine(v69, v70, v71, v72, v73);
  v79 = objc_msgSend_namer(v74, v75, v76, v77, v78);
  v82 = objc_msgSend_nameForChromeRangeRef_namingContext_(v79, v80, v84, v43, v81);

  return v82;
}

- (_NSRange)firstRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)searchReferenceRange
{
  p_searchReferenceRange = &self->_searchReferenceRange;
  location = self->_searchReferenceRange.location;
  length = p_searchReferenceRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

- (TSKUIDStructCoord)anchorCellUID
{
  row = self[3]._row;
  retstr->_column = self[3]._column;
  retstr->_row = row;
  return self;
}

- (void)setAnchorCellUID:(TSKUIDStructCoord *)a3
{
  row = a3->_row;
  self->_anchorCellUID._column = a3->_column;
  self->_anchorCellUID._row = row;
}

- (TSKUIDStructCoord)cursorCellUID
{
  row = self[4]._row;
  retstr->_column = self[4]._column;
  retstr->_row = row;
  return self;
}

- (void)setCursorCellUID:(TSKUIDStructCoord *)a3
{
  row = a3->_row;
  self->_cursorCellUID._column = a3->_column;
  self->_cursorCellUID._row = row;
}

@end