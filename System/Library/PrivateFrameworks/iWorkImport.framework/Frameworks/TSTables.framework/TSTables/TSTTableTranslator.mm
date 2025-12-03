@interface TSTTableTranslator
- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d;
- (BOOL)checkMapsAndAssert:(BOOL)assert;
- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)d;
- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)d;
- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d;
- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)range;
- (BOOL)hasMergeRanges;
- (BOOL)hasMergeRangesIntersectingCellRegion:(id)region;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)range;
- (BOOL)isValidMergeRange:(TSUViewCellRect)range;
- (BOOL)mergeCellRange:(TSUViewCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)region;
- (BOOL)unmergeCellRange:(TSUViewCellRect)range;
- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:(TSTTableTranslator *)self;
- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSKUIDStruct)columnUIDForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSKUIDStruct)rowUIDForBaseRowIndex:(TSUModelRowIndex)index;
- (TSKUIDStruct)rowUIDForViewRowIndex:(TSUViewRowIndex)index;
- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)coord;
- (TSKUIDStructCoord)cellUIDforBaseCellCoord:(SEL)coord;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForBaseColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForViewColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForBaseRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForViewRowIndexes:(SEL)indexes;
- (TSTColumnRowUIDMap)summaryMap;
- (TSTColumnRowUIDMap)viewMap;
- (TSTTableTranslator)init;
- (TSTTableTranslator)initWithBaseTableModel:(id)model;
- (TSTTableTranslator)initWithTableInfo:(id)info;
- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)d;
- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord;
- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index;
- (TSUModelColumnIndex)baseColumnIndexForColumnUID:(TSKUIDStruct)d;
- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index;
- (TSUModelRowIndex)baseRowIndexForRowUID:(TSKUIDStruct)d;
- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)d;
- (TSUViewCellCoord)viewCellCoordForCellUID:(TSKUIDStructCoord *)d;
- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord;
- (TSUViewCellRect)actualHeaderColumnRange;
- (TSUViewCellRect)baseColumnRange;
- (TSUViewCellRect)bodyColumnRange;
- (TSUViewCellRect)bodyRange;
- (TSUViewCellRect)bodyRowRange;
- (TSUViewCellRect)bottomCornerRange;
- (TSUViewCellRect)categoryColumnRange;
- (TSUViewCellRect)cellRangeForTableArea:(unint64_t)area;
- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)cells;
- (TSUViewCellRect)footerRowRange;
- (TSUViewCellRect)headerColumnRange;
- (TSUViewCellRect)headerRowRange;
- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)d;
- (TSUViewCellRect)range;
- (TSUViewCellRect)topCornerRange;
- (TSUViewColumnIndex)numberOfColumns;
- (TSUViewColumnIndex)viewColumnIndexForColumnUID:(TSKUIDStruct)d;
- (TSUViewRowIndex)numberOfRows;
- (TSUViewRowIndex)viewRowIndexForRowUID:(TSKUIDStruct)d;
- (id)baseCellRegionForUIDRange:(const void *)range;
- (id)baseColumnIndexesForUIDs:(const void *)ds;
- (id)baseRowIndexesForUIDs:(const void *)ds;
- (id)baseTractRefForChromeTractRef:(id)ref;
- (id)baseTractRefForViewTractRef:(id)ref;
- (id)cachedCommentHostingForAnnotationUUID:(id)d;
- (id)cellRegionForTableStyleArea:(unint64_t)area;
- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)cellValueFromCell:(id)cell atCellID:(TSUViewCellCoord)d;
- (id)characterFillAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell;
- (id)chromeTractRefForBaseTractRef:(id)ref;
- (id)chromeTractRefForViewTractRef:(id)ref;
- (id)commentHostingAtCellID:(TSUViewCellCoord)d;
- (id)commentHostingAtCellID:(TSUViewCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps;
- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)d;
- (id)coordinateMapper;
- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)expandCellRegionToCoverMergedCells:(id)cells;
- (id)formulaAtCellID:(TSUViewCellCoord)d;
- (id)indexesForLeadingColumns;
- (id)indexesForLeadingRows;
- (id)mergeActionForRegion:(id)region;
- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only;
- (id)mergedGridIndicesForDimension:(int64_t)dimension;
- (id)metadataForColumnIndex:(TSUViewColumnIndex)index;
- (id)metadataForRowIndex:(TSUViewRowIndex)index;
- (id)mutableBaseColumnIndexesForUIDs:(const void *)ds;
- (id)mutableBaseRowIndexesForUIDs:(const void *)ds;
- (id)removeReturningInverseForRegion:(id)region;
- (id)shrinkReturningInverseForRegion:(id)region;
- (id)stringAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell;
- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)viewColumnIndexesForUIDs:(const void *)ds;
- (id)viewRowIndexesForUIDs:(const void *)ds;
- (id)viewTractRefForBaseTractRef:(id)ref;
- (id)viewTractRefForChromeTractRef:(id)ref;
- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border;
- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d suppressCellBorder:(BOOL)border;
- (int)getDefaultCell:(id)cell forCellID:(TSUViewCellCoord)d;
- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d;
- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text;
- (int)removeCommentStorageAtCellUID:(const TSKUIDStructCoord *)d;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer;
- (int)setCellStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d;
- (int)setCellStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d;
- (int)setCellsWithCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells;
- (int)setCommentStorage:(id)storage atCellUID:(const TSKUIDStructCoord *)d;
- (int)setTextStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d;
- (int)setTextStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d;
- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableAreaForColumn:(TSUViewColumnIndex)column;
- (unint64_t)tableAreaForDroppingRowAtIndex:(TSUViewRowIndex)index;
- (unint64_t)tableAreaForRow:(TSUViewRowIndex)row;
- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d;
- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d;
- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)d;
- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)column outAggregateIndex:(unint64_t *)index;
- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)row outAggregateIndex:(unint64_t *)index;
- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTTableTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTTableTranslator *)self;
- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block;
- (void)postCommentNotificationForStorage:(id)storage atViewCellCoord:(TSUViewCellCoord)coord notificationKey:(id)key;
- (void)resetViewMap;
@end

@implementation TSTTableTranslator

- (TSTTableTranslator)initWithTableInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = TSTTableTranslator;
  v5 = [(TSTTableTranslator *)&v13 init];
  v10 = v5;
  if (v5)
  {
    v5->_tableInfo = infoCopy;
    v11 = objc_msgSend_baseTableModel(infoCopy, v6, v7, v8, v9);
    v10->_baseTableModel = v11;
  }

  return v10;
}

- (TSTTableTranslator)initWithBaseTableModel:(id)model
{
  result = objc_msgSend_initWithTableInfo_(self, a2, 0, v3, v4);
  if (result)
  {
    result->_baseTableModel = model;
  }

  return result;
}

- (TSTTableTranslator)init
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTranslator init]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 83, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, v18, "Do not call method", "[TSTTableTranslator init]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)coordinateMapper
{
  coordMapper = self->_coordMapper;
  if (!coordMapper)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_coordMapper)
    {
      v5 = [TSCECoordMapper alloc];
      v16[0] = objc_msgSend_tableUID(selfCopy->_baseTableModel, v6, v7, v8, v9);
      v16[1] = v10;
      v13 = objc_msgSend_initWithTableUID_(v5, v10, v16, v11, v12);
      v14 = self->_coordMapper;
      self->_coordMapper = v13;
    }

    objc_sync_exit(selfCopy);

    coordMapper = self->_coordMapper;
  }

  return coordMapper;
}

- (TSTColumnRowUIDMap)summaryMap
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_summaryModel(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_columnRowUIDMap(v10, v11, v12, v13, v14);

  return v15;
}

- (TSTColumnRowUIDMap)viewMap
{
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    tableInfo = self->_baseTableModel;
  }

  v7 = objc_msgSend_columnRowUIDMap(tableInfo, a2, v2, v3, v4);

  return v7;
}

- (TSUViewRowIndex)numberOfRows
{
  v5 = objc_msgSend_viewMap(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfRows(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUViewColumnIndex)numberOfColumns
{
  v5 = objc_msgSend_viewMap(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfColumns(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUViewCellRect)range
{
  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    objc_msgSend_columnRowUIDMap(tableInfo, a2, v2, v3, v4);
  }

  else
  {
    objc_msgSend_columnRowUIDMap(self->_baseTableModel, a2, v2, v3, v4);
  }
  v7 = ;
  v12 = objc_msgSend_range(v7, v8, v9, v10, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._rect.size = v16;
  result._rect.origin = v15;
  return result;
}

- (TSUViewCellRect)bodyRange
{
  v22.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v22.size = v6;
  objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9);
  TSUCellRect::insetTop(&v22);
  objc_msgSend_numberOfHeaderColumns(self, v10, v11, v12, v13);
  TSUCellRect::insetLeft(&v22);
  objc_msgSend_numberOfFooterRows(self, v14, v15, v16, v17);
  TSUCellRect::insetBottom();
  isValid = TSUCellRect::isValid(&v22);
  v19 = isValid == 0;
  if (isValid)
  {
    origin = v22.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v19)
  {
    size = 0;
  }

  else
  {
    size = v22.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)bodyColumnRange
{
  v14.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v14.size = v6;
  objc_msgSend_numberOfHeaderColumns(self, v6, v7, v8, v9);
  TSUCellRect::insetLeft(&v14);
  isValid = TSUCellRect::isValid(&v14);
  v11 = isValid == 0;
  if (isValid)
  {
    origin = v14.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v11)
  {
    size = 0;
  }

  else
  {
    size = v14.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)bodyRowRange
{
  v18.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v18.size = v6;
  objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9);
  TSUCellRect::insetTop(&v18);
  objc_msgSend_numberOfFooterRows(self, v10, v11, v12, v13);
  TSUCellRect::insetBottom();
  isValid = TSUCellRect::isValid(&v18);
  v15 = isValid == 0;
  if (isValid)
  {
    origin = v18.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v15)
  {
    size = 0;
  }

  else
  {
    size = v18.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)headerRowRange
{
  v14.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v14.size.numberOfColumns = v6;
  v14.size.numberOfRows = objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9);
  isValid = TSUCellRect::isValid(&v14);
  v11 = isValid == 0;
  if (isValid)
  {
    origin = v14.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v11)
  {
    size = 0;
  }

  else
  {
    size = v14.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)headerColumnRange
{
  v14.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v14.size.numberOfRows = HIDWORD(v6);
  LOWORD(v14.size.numberOfColumns) = objc_msgSend_numberOfHeaderColumns(self, v6, v7, v8, v9);
  v14.size.numberOfColumns = LOWORD(v14.size.numberOfColumns);
  isValid = TSUCellRect::isValid(&v14);
  v11 = isValid == 0;
  if (isValid)
  {
    origin = v14.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v11)
  {
    size = 0;
  }

  else
  {
    size = v14.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)actualHeaderColumnRange
{
  v18.origin = objc_msgSend_headerColumnRange(self, a2, v2, v3, v4);
  v18.size = v6;
  objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9);
  TSUCellRect::insetTop(&v18);
  objc_msgSend_numberOfFooterRows(self, v10, v11, v12, v13);
  TSUCellRect::insetBottom();
  isValid = TSUCellRect::isValid(&v18);
  v15 = isValid == 0;
  if (isValid)
  {
    origin = v18.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v15)
  {
    size = 0;
  }

  else
  {
    size = v18.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)footerRowRange
{
  v18.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v18.size = v6;
  objc_msgSend_numberOfRows(self, v6, v7, v8, v9);
  objc_msgSend_numberOfFooterRows(self, v10, v11, v12, v13);
  TSUCellRect::insetTop(&v18);
  isValid = TSUCellRect::isValid(&v18);
  v15 = isValid == 0;
  if (isValid)
  {
    origin = v18.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v15)
  {
    size = 0;
  }

  else
  {
    size = v18.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)topCornerRange
{
  v18.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v18.size.numberOfRows = objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9);
  LOWORD(v18.size.numberOfColumns) = objc_msgSend_numberOfHeaderColumns(self, v10, v11, v12, v13);
  v18.size.numberOfColumns = LOWORD(v18.size.numberOfColumns);
  isValid = TSUCellRect::isValid(&v18);
  v15 = isValid == 0;
  if (isValid)
  {
    origin = v18.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v15)
  {
    size = 0;
  }

  else
  {
    size = v18.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)bottomCornerRange
{
  v14.origin = objc_msgSend_footerRowRange(self, a2, v2, v3, v4);
  v14.size.numberOfRows = HIDWORD(v6);
  LOWORD(v14.size.numberOfColumns) = objc_msgSend_numberOfHeaderColumns(self, v6, v7, v8, v9);
  v14.size.numberOfColumns = LOWORD(v14.size.numberOfColumns);
  isValid = TSUCellRect::isValid(&v14);
  v11 = isValid == 0;
  if (isValid)
  {
    origin = v14.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v11)
  {
    size = 0;
  }

  else
  {
    size = v14.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)categoryColumnRange
{
  v15 = xmmword_2217E0780;
  if (objc_msgSend_isCategorized(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_numberOfRows(self->_tableInfo, v6, v7, v8, v9);
    *&v15 = 0;
    *(&v15 + 1) = (v10 << 32) | 1;
  }

  isValid = TSUCellRect::isValid(&v15);
  v12 = isValid == 0;
  if (isValid)
  {
    v13 = v15;
  }

  else
  {
    v13 = 0x7FFF7FFFFFFFLL;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(&v15 + 1);
  }

  result._rect.size = v14;
  result._rect.origin = v13;
  return result;
}

- (TSUViewCellRect)baseColumnRange
{
  v14.origin = objc_msgSend_range(self, a2, v2, v3, v4);
  v14.size = v6;
  if (objc_msgSend_isCategorized(self, v6, v7, v8, v9))
  {
    TSUCellRect::insetLeft(&v14);
  }

  isValid = TSUCellRect::isValid(&v14);
  v11 = isValid == 0;
  if (isValid)
  {
    origin = v14.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v11)
  {
    size = 0;
  }

  else
  {
    size = v14.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d
{
  v7 = objc_msgSend_viewMap(self, a2, d, v3, v4);
  row = d->_row;
  v17[0] = d->_column;
  v17[1] = row;
  v12 = objc_msgSend_cellIDForCellUID_(v7, v9, v17, v10, v11);

  return objc_msgSend_tableStyleAreaForCellID_(self, v13, v12, v14, v15);
}

- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d
{
  v7 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3, v4);
  baseTableModel = self->_baseTableModel;

  return objc_msgSend_tableStyleAreaForBaseCellCoord_(baseTableModel, v6, v7, v8, v9);
}

- (id)cellRegionForTableStyleArea:(unint64_t)area
{
  if (area > 2)
  {
    if (area == 3)
    {
      v5 = objc_msgSend_actualHeaderColumnRange(self, a2, 3, v3, v4);
      goto LABEL_11;
    }

    if (area == 4)
    {
      v5 = objc_msgSend_footerRowRange(self, a2, 4, v3, v4);
      goto LABEL_11;
    }

LABEL_8:
    v8 = objc_msgSend_invalidRegion(TSTCellRegion, a2, area, v3, v4);
    goto LABEL_12;
  }

  if (area == 1)
  {
    v5 = objc_msgSend_bodyRange(self, a2, 1, v3, v4);
    goto LABEL_11;
  }

  if (area != 2)
  {
    goto LABEL_8;
  }

  v5 = objc_msgSend_headerRowRange(self, a2, 2, v3, v4);
LABEL_11:
  v8 = objc_msgSend_regionFromRange_(TSTCellRegion, v6, v5, v6, v7);
LABEL_12:

  return v8;
}

- (TSUViewCellRect)cellRangeForTableArea:(unint64_t)area
{
  v6 = 0;
  v7 = 0x7FFF7FFFFFFFLL;
  if (area > 3)
  {
    switch(area)
    {
      case 4uLL:
        v7 = objc_msgSend_footerRowRange(self, 0, 4, v3, v4);
        break;
      case 5uLL:
        v7 = objc_msgSend_topCornerRange(self, 0, 5, v3, v4);
        break;
      case 6uLL:
        v7 = objc_msgSend_bottomCornerRange(self, 0, 6, v3, v4);
        break;
    }
  }

  else
  {
    switch(area)
    {
      case 1uLL:
        v7 = objc_msgSend_bodyRange(self, 0, 1, v3, v4);
        break;
      case 2uLL:
        v7 = objc_msgSend_headerRowRange(self, 0, 2, v3, v4);
        break;
      case 3uLL:
        v7 = objc_msgSend_headerColumnRange(self, 0, 3, v3, v4);
        break;
    }
  }

  result._rect.size = v6;
  result._rect.origin = v7;
  return result;
}

- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator tableAreaForCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 416, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_tableAreaForBaseCellCoord_(baseTableModel, v7, *&d, v8, v9);
}

- (unint64_t)tableAreaForDroppingRowAtIndex:(TSUViewRowIndex)index
{
  if (index.var0 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderRows(self, a2, *&index.var0, v3, v4) > index.var0)
  {
    return 2;
  }

  if (objc_msgSend_numberOfFooterRows(self, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_numberOfRows(self, v12, v13, v14, v15);
    if (v16 - objc_msgSend_numberOfFooterRows(self, v17, v18, v19, v20) < index.var0)
    {
      return 4;
    }
  }

  return 1;
}

- (unint64_t)tableAreaForRow:(TSUViewRowIndex)row
{
  if (row.var0 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderRows(self, a2, *&row.var0, v3, v4) > row.var0)
  {
    return 2;
  }

  v12 = objc_msgSend_numberOfRows(self, v8, v9, v10, v11);
  if (v12 - objc_msgSend_numberOfFooterRows(self, v13, v14, v15, v16) > row.var0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)tableAreaForColumn:(TSUViewColumnIndex)column
{
  if (column.var0 == 0x7FFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderColumns(self, a2, *&column.var0, v3, v4) <= column.var0)
  {
    return 1;
  }

  return 3;
}

- (int)getDefaultCell:(id)cell forCellID:(TSUViewCellCoord)d
{
  cellCopy = cell;
  v10 = objc_msgSend_tableStyleAreaForCellID_(self, v7, *&d, v8, v9);
  LODWORD(self) = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v11, cellCopy, v10, v12);

  return self;
}

- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  v11 = objc_msgSend_viewMap(self, v7, v8, v9, v10);
  row = d->_row;
  v21[0] = d->_column;
  v21[1] = row;
  v16 = objc_msgSend_cellIDForCellUID_(v11, v13, v21, v14, v15);

  DefaultCell_forCellID = 2;
  if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    DefaultCell_forCellID = objc_msgSend_getDefaultCell_forCellID_(self, v17, cellCopy, v16, v18);
  }

  return DefaultCell_forCellID;
}

- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)d
{
  v7 = objc_msgSend_viewMap(self, a2, d, v3, v4);
  row = d->_row;
  v17[0] = d->_column;
  v17[1] = row;
  v12 = objc_msgSend_cellIDForCellUID_(v7, v9, v17, v10, v11);

  result = 0;
  if (v12 != 0x7FFFFFFF && (v12 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return objc_msgSend_cellValueTypeAtCellID_(self, v13, v12, v14, v15);
  }

  return result;
}

- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator cellValueTypeAtCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 495, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_cellValueTypeAtBaseCellCoord_(baseTableModel, v7, *&d, v8, v9);
}

- (int)setCellStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v11 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9, v10);
  LODWORD(d) = objc_msgSend_rowIndexForRowUID_(v11, v12, d->_lower, d->_upper, v13);

  LODWORD(self) = objc_msgSend_setCellStyle_ofRowAtIndex_(self->_baseTableModel, v14, styleCopy, d, v15);
  return self;
}

- (int)setTextStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v11 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9, v10);
  LODWORD(d) = objc_msgSend_rowIndexForRowUID_(v11, v12, d->_lower, d->_upper, v13);

  LODWORD(self) = objc_msgSend_setTextStyle_ofRowAtIndex_(self->_baseTableModel, v14, styleCopy, d, v15);
  return self;
}

- (int)setCellStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v11 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9, v10);
  LODWORD(d) = objc_msgSend_columnIndexForColumnUID_(v11, v12, d->_lower, d->_upper, v13);

  LODWORD(self) = objc_msgSend_setCellStyle_ofColumnAtIndex_(self->_baseTableModel, v14, styleCopy, d, v15);
  return self;
}

- (int)setTextStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v11 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9, v10);
  LODWORD(d) = objc_msgSend_columnIndexForColumnUID_(v11, v12, d->_lower, d->_upper, v13);

  LODWORD(self) = objc_msgSend_setTextStyle_ofColumnAtIndex_(self->_baseTableModel, v14, styleCopy, d, v15);
  return self;
}

- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  if (objc_msgSend_isCategorized(self, a2, *&d, default, source))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTranslator defaultCellStyleForCellID:useSoftDefault:outSource:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 537, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(baseTableModel, v9, *&d, defaultCopy, source);
}

- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  if (objc_msgSend_isCategorized(self, a2, *&d, default, source))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTranslator defaultTextStyleForCellID:useSoftDefault:outSource:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 547, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(baseTableModel, v9, *&d, defaultCopy, source);
}

- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  if (objc_msgSend_isCategorized(self, a2, *&d, default, v4))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableTranslator cellStyleAtCellID:isDefault:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 557, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_cellStyleAtModelCellCoord_isDefault_(baseTableModel, v8, *&d, default, v10);
}

- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  if (objc_msgSend_isCategorized(self, a2, *&d, default, v4))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableTranslator textStyleAtCellID:isDefault:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 563, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_textStyleAtModelCellCoord_isDefault_(baseTableModel, v8, *&d, default, v10);
}

- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  defaultCopy = default;
  if (objc_msgSend_isCategorized(self, a2, *&d, default, cache))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTranslator defaultStyleHandlesForCellID:useSoftDefault:styleDefaultsCache:outCellStyleHandle:outTextStyleHandle:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 568, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  baseTableModel = self->_baseTableModel;

  objc_msgSend_defaultStyleHandlesAtBaseCellCoord_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(baseTableModel, v13, *&d, defaultCopy, cache, handle, styleHandle);
}

- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  v8 = objc_msgSend_viewMap(self, a2, d, default, v4);
  row = d->_row;
  v18[0] = d->_column;
  v18[1] = row;
  v13 = objc_msgSend_cellIDForCellUID_(v8, v10, v18, v11, v12);

  if (v13 == 0x7FFFFFFF || (v13 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v16 = 0;
    if (default)
    {
      *default = 0;
    }
  }

  else
  {
    v16 = objc_msgSend_cellStyleAtCellID_isDefault_(self, v14, v13, default, v15);
  }

  return v16;
}

- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  v8 = objc_msgSend_viewMap(self, a2, d, default, v4);
  row = d->_row;
  v18[0] = d->_column;
  v18[1] = row;
  v13 = objc_msgSend_cellIDForCellUID_(v8, v10, v18, v11, v12);

  if (v13 == 0x7FFFFFFF || (v13 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v16 = 0;
    if (default)
    {
      *default = 0;
    }
  }

  else
  {
    v16 = objc_msgSend_textStyleAtCellID_isDefault_(self, v14, v13, default, v15);
  }

  return v16;
}

- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator conditionalStyleSetAtCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 603, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_conditionalStyleSetAtBaseCellCoord_(baseTableModel, v7, *&d, v8, v9);
}

- (id)metadataForRowIndex:(TSUViewRowIndex)index
{
  v5 = *&index.var0;
  v7 = objc_msgSend_hiddenStatesOwner(self->_baseTableModel, a2, *&index.var0, v3, v4);
  v12 = objc_msgSend_hiddenStates(v7, v8, v9, v10, v11);
  v16 = objc_msgSend_hidingActionForRowAtIndex_(v12, v13, v5, v14, v15);

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_metadataForRowIndex_hidingAction_(baseTableModel, v17, v5, v16, v18);
}

- (id)metadataForColumnIndex:(TSUViewColumnIndex)index
{
  v7 = objc_msgSend_hiddenStatesOwner(self->_baseTableModel, a2, *&index.var0, v3, v4);
  v12 = objc_msgSend_hiddenStates(v7, v8, v9, v10, v11);
  v16 = objc_msgSend_hidingActionForColumnAtIndex_(v12, v13, index.var0, v14, v15);

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_metadataForColumnIndex_hidingAction_(baseTableModel, v17, index.var0, v16, v18);
}

- (id)stringAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_isCategorized(self, v7, v8, v9, v10))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableTranslator stringAtCellID:optionalCell:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 623, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_stringAtBaseCellCoord_optionalCell_(self->_baseTableModel, v11, *&d, cellCopy, v13);

  return v25;
}

- (id)characterFillAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_textStyle(cellCopy, v7, v8, v9, v10);
  v19 = objc_msgSend_conditionalStyle(cellCopy, v12, v13, v14, v15);
  if (!v11)
  {
    v11 = objc_msgSend_textStyleAtCellID_isDefault_(self, v16, *&d, 0, v18);
  }

  v24 = objc_msgSend_valueForProperty_(v11, v16, 48, v17, v18);
  if (v19)
  {
    if (cellCopy)
    {
      v25 = objc_msgSend_conditionalStyleAppliedRule(cellCopy, v20, v21, v22, v23);
      objc_msgSend_ruleAtIndex_(v19, v26, v25, v27, v28);
    }

    else
    {
      objc_msgSend_ruleAtIndex_(v19, v20, 15, v22, v23);
    }
    v29 = ;
    v34 = objc_msgSend_textStyle(v29, v30, v31, v32, v33);
    v38 = v34;
    if (v34)
    {
      v39 = objc_msgSend_valueForProperty_(v34, v35, 48, v36, v37);

      v24 = v39;
    }
  }

  if (!v24)
  {
    v24 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v20, v21, v22, v23);
  }

  return v24;
}

- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border
{
  borderCopy = border;
  cellCopy = cell;
  if (objc_msgSend_isCategorized(self, v9, v10, v11, v12))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTranslator getCell:atCellID:suppressCellBorder:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 656, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_baseTableModel, v13, cellCopy, *&d, borderCopy);

  return Cell_atBaseCellCoord_suppressCellBorder;
}

- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d suppressCellBorder:(BOOL)border
{
  borderCopy = border;
  cellCopy = cell;
  if (objc_msgSend_canBeVendorStorageUid_(TSTSummaryCellVendor, v9, d, v10, v11))
  {
    v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    v21 = objc_msgSend_summaryModel(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_summaryCellVendor(v21, v22, v23, v24, v25);
    Cell_atCellUID = objc_msgSend_getCell_atCellUID_(v26, v27, cellCopy, d, v28);
  }

  else
  {
    v30 = objc_msgSend_viewMap(self, v12, v13, v14, v15);
    row = d->_row;
    v38[0] = d->_column;
    v38[1] = row;
    v35 = objc_msgSend_cellIDForCellUID_(v30, v32, v38, v33, v34);

    Cell_atCellUID = 3;
    if (v35 != 0x7FFFFFFF && (v35 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      Cell_atCellUID = objc_msgSend_getCell_atCellID_suppressCellBorder_(self, v36, cellCopy, v35, borderCopy);
    }
  }

  return Cell_atCellUID;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer
{
  warningsCopy = warnings;
  formulaCopy = formula;
  cellCopy = cell;
  replacerCopy = replacer;
  v18 = objc_msgSend_baseMap(self, v14, v15, v16, v17);
  row = d->_row;
  v37[0] = d->_column;
  v37[1] = row;
  v23 = objc_msgSend_cellIDForCellUID_(v18, v20, v37, v21, v22);

  if (v23 == 0x7FFFFFFF || (v23 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v29 = objc_msgSend_tableInfo(self, v24, v25, v26, v27);
    v34 = objc_msgSend_summaryModel(v29, v30, v31, v32, v33);
    v28 = objc_msgSend_setCell_atCellUID_formulaReplacer_(v34, v35, cellCopy, d, replacerCopy);
  }

  else
  {
    if (!replacerCopy)
    {
      replacerCopy = objc_msgSend_calcEngine(self->_baseTableModel, v24, v25, v26, v27);
    }

    v28 = objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_calcEngine_(self->_baseTableModel, v24, cellCopy, v23, formulaCopy, warningsCopy, replacerCopy);
  }

  return v28;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings
{
  warningsCopy = warnings;
  formulaCopy = formula;
  cellCopy = cell;
  v15 = objc_msgSend_calcEngine(self->_baseTableModel, v11, v12, v13, v14);
  LODWORD(warningsCopy) = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v16, cellCopy, d, formulaCopy, warningsCopy, v15);

  return warningsCopy;
}

- (int)setCellsWithCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells
{
  cellsCopy = cells;
  formulasCopy = formulas;
  mapCopy = map;
  v13 = objc_msgSend_baseMap(self, v9, v10, v11, v12);
  v17 = objc_msgSend_shallowCopyToCoordFormUsingMap_(mapCopy, v14, v13, v15, v16);

  LODWORD(cellsCopy) = objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self->_baseTableModel, v18, v17, formulasCopy, cellsCopy);
  return cellsCopy;
}

- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator hasFormulaAtCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 726, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return (MEMORY[0x2821F9670])(baseTableModel, sel_hasFormulaAtBaseCellCoord_, d, v8, v9);
}

- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d
{
  v7 = objc_msgSend_viewMap(self, a2, d, v3, v4);
  row = d->_row;
  v17[0] = d->_column;
  v17[1] = row;
  v12 = objc_msgSend_cellIDForCellUID_(v7, v9, v17, v10, v11);

  result = 0;
  if (v12 != 0x7FFFFFFF && (v12 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return objc_msgSend_hasFormulaAtCellID_(self, v13, v12, v14, v15);
  }

  return result;
}

- (id)formulaAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator formulaAtCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 742, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_formulaAtBaseCellCoord_(baseTableModel, v7, *&d, v8, v9);
}

- (int)setCommentStorage:(id)storage atCellUID:(const TSKUIDStructCoord *)d
{
  storageCopy = storage;
  v11 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9, v10);
  row = d->_row;
  v20[0] = d->_column;
  v20[1] = row;
  v16 = objc_msgSend_cellIDForCellUID_(v11, v13, v20, v14, v15);

  LODWORD(self) = objc_msgSend_setCommentStorage_atBaseCellCoord_(self->_baseTableModel, v17, storageCopy, v16, v18);
  return self;
}

- (int)removeCommentStorageAtCellUID:(const TSKUIDStructCoord *)d
{
  v7 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, a2, d, v3, v4);
  row = d->_row;
  v17[0] = d->_column;
  v17[1] = row;
  v12 = objc_msgSend_cellIDForCellUID_(v7, v9, v17, v10, v11);

  return objc_msgSend_removeCommentStorageAtBaseCellCoord_(self->_baseTableModel, v13, v12, v14, v15);
}

- (void)postCommentNotificationForStorage:(id)storage atViewCellCoord:(TSUViewCellCoord)coord notificationKey:(id)key
{
  storageCopy = storage;
  keyCopy = key;
  if (objc_msgSend_isCategorized(self, v9, v10, v11, v12))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTranslator postCommentNotificationForStorage:atViewCellCoord:notificationKey:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 834, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self->_baseTableModel, v13, storageCopy, *&coord, keyCopy);
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps
{
  mapsCopy = maps;
  storageCopy = storage;
  if (objc_msgSend_isCategorized(self, v9, v10, v11, v12))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTranslator commentHostingAtCellID:forCommentStorage:updateCommentMaps:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 840, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_updateCommentMaps_(self->_baseTableModel, v13, *&d, storageCopy, mapsCopy);

  return v27;
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator commentHostingAtCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 846, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_commentHostingAtBaseCellCoord_(baseTableModel, v7, *&d, v8, v9);
}

- (id)cachedCommentHostingForAnnotationUUID:(id)d
{
  v5 = objc_msgSend_cachedCommentHostingForAnnotationUUID_(self->_baseTableModel, a2, d, v3, v4);

  return v5;
}

- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text
{
  textCopy = text;
  v9 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, *&d, text);
  baseTableModel = self->_baseTableModel;

  return objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(baseTableModel, v8, value, v9, textCopy);
}

- (id)cellValueFromCell:(id)cell atCellID:(TSUViewCellCoord)d
{
  cellCopy = cell;
  v10 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v7, *&d, v8, v9);
  v13 = objc_msgSend_cellValueFromCell_atBaseCellCoord_(self->_baseTableModel, v11, cellCopy, v10, v12);

  return v13;
}

- (BOOL)mergeCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size, v3);
  LOBYTE(size.numberOfColumns) = objc_msgSend_insertBaseMergeRangeRemovingOverlaps_(v6, v7, origin, *&size, v8);

  return size.numberOfColumns;
}

- (BOOL)unmergeCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size, v3);
  objc_msgSend_removeBaseMergeRange_(v6, v7, origin, size, v8);

  return 1;
}

- (BOOL)hasMergeRanges
{
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, v2, v3, v4);
  hasMergeRanges = objc_msgSend_hasMergeRanges(v5, v6, v7, v8, v9);

  return hasMergeRanges;
}

- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator mergeRangeAtCellID:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 892, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_mergeOwner(self->_baseTableModel, v7, v8, v9, v10);
  v26 = objc_msgSend_mergedRangeForBaseCellCoord_(v22, v23, *&d, v24, v25);
  v28 = v27;

  v29 = v26;
  v30 = v28;
  result._rect.size = v30;
  result._rect.origin = v29;
  return result;
}

- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator mergeOriginForCellID:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 899, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_mergeOwner(self->_baseTableModel, v7, v8, v9, v10);
  v26 = objc_msgSend_mergeOriginForBaseCellCoord_(v22, v23, *&d, v24, v25);

  return v26;
}

- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size, v3);
  LOBYTE(size.numberOfColumns) = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRect_(v6, v7, origin, *&size, v8);

  return size.numberOfColumns;
}

- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)region
{
  regionCopy = region;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7, v8);
  v13 = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v9, v10, regionCopy, v11, v12);

  return v13;
}

- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size, v3);
  LOBYTE(size.numberOfColumns) = objc_msgSend_hasMergeRangeSpanningRowsForBaseCellRect_(v6, v7, origin, *&size, v8);

  return size.numberOfColumns;
}

- (BOOL)hasMergeRangesIntersectingCellRegion:(id)region
{
  regionCopy = region;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7, v8);
  hasMergeRangesIntersectingBaseCellRegion = objc_msgSend_hasMergeRangesIntersectingBaseCellRegion_(v9, v10, regionCopy, v11, v12);

  return hasMergeRangesIntersectingBaseCellRegion;
}

- (id)mergedGridIndicesForDimension:(int64_t)dimension
{
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, dimension, v3, v4);
  v10 = objc_msgSend_mergedGridIndicesForDimension_(v6, v7, dimension, v8, v9);

  return v10;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size, v3);
  LOBYTE(size.numberOfColumns) = objc_msgSend_hasRangeSpanningRowsForCellRange_(v6, v7, origin, *&size, v8);

  return size.numberOfColumns;
}

- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)cells
{
  size = cells._rect.size;
  origin = cells._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&cells._rect.origin, *&cells._rect.size, v3);
  v9 = objc_msgSend_expandBaseCellRectToCoverMergedCells_(v6, v7, origin, size, v8);
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._rect.size = v13;
  result._rect.origin = v12;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)cells
{
  cellsCopy = cells;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7, v8);
  v13 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v9, v10, cellsCopy, v11, v12);

  return v13;
}

- (id)shrinkReturningInverseForRegion:(id)region
{
  regionCopy = region;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7, v8);
  v13 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_(v9, v10, regionCopy, v11, v12);

  return v13;
}

- (id)removeReturningInverseForRegion:(id)region
{
  regionCopy = region;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7, v8);
  v13 = objc_msgSend_removeReturningInverseForBaseCellRegion_(v9, v10, regionCopy, v11, v12);

  return v13;
}

- (id)mergeActionForRegion:(id)region
{
  regionCopy = region;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7, v8);
  v13 = objc_msgSend_mergeActionForBaseCellRegion_(v9, v10, regionCopy, v11, v12);

  return v13;
}

- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only
{
  onlyCopy = only;
  regionCopy = region;
  v11 = objc_msgSend_mergeOwner(self->_baseTableModel, v7, v8, v9, v10);
  v14 = objc_msgSend_mergeActionForBaseCellRegion_nonOriginPartialsOnly_(v11, v12, regionCopy, onlyCopy, v13);

  return v14;
}

- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
  v8 = regionCopy;
  v13 = objc_msgSend_mergeOwner(self->_baseTableModel, v9, v10, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2214620DC;
  v17[3] = &unk_278465810;
  v14 = blockCopy;
  v18 = v14;
  objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(v13, v15, v8, v17, v16);
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTTableTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v7 = objc_msgSend_mergeOwner(self->_baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size, v4);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(v7, v8, origin, size, v9);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorFromModelCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTTableTranslator *)self
{
  v5 = a4;
  v10 = objc_msgSend_mergeOwner(self->_baseTableModel, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v10, v11, v5, v12, v13);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorFromModelCellRectVector();
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v7 = objc_msgSend_mergeOwner(self->_baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size, v4);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_mergeRangesAndCrumbsIntersectingBaseCellRect_(v7, v8, origin, size, v9);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorFromModelCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (BOOL)isValidMergeRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size, v3);
  LOBYTE(size.numberOfColumns) = objc_msgSend_isValidMergeRange_(v6, v7, origin, *&size, v8);

  return size.numberOfColumns;
}

- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index
{
  v7 = objc_msgSend_viewRowIndexForChromeRowIndex_(self, a2, index.var0, v3, v4);

  return objc_msgSend_baseRowIndexForViewRowIndex_(self, v6, v7, v8, v9);
}

- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index
{
  v7 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(self, a2, index.var0, v3, v4);

  return objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v6, v7, v8, v9);
}

- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)index
{
  v6 = objc_msgSend_baseMap(self, a2, *&index._column, v3, v4);
  v10 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, index._column, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStruct)rowUIDForBaseRowIndex:(TSUModelRowIndex)index
{
  v5 = *&index._row;
  v6 = objc_msgSend_baseMap(self, a2, *&index._row, v3, v4);
  v10 = objc_msgSend_rowUIDForRowIndex_(v6, v7, v5, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStruct)columnUIDForViewColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_viewMap(self, a2, *&index.var0, v3, v4);
  v10 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, index.var0, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStruct)rowUIDForViewRowIndex:(TSUViewRowIndex)index
{
  v5 = *&index.var0;
  v6 = objc_msgSend_viewMap(self, a2, *&index.var0, v3, v4);
  v10 = objc_msgSend_rowUIDForRowIndex_(v6, v7, v5, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSUModelColumnIndex)baseColumnIndexForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v6 = objc_msgSend_baseMap(self, a2, d._lower, d._upper, v3);
  LOWORD(upper) = objc_msgSend_columnIndexForColumnUID_(v6, v7, lower, upper, v8);

  return upper;
}

- (TSUModelRowIndex)baseRowIndexForRowUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v6 = objc_msgSend_baseMap(self, a2, d._lower, d._upper, v3);
  LODWORD(upper) = objc_msgSend_rowIndexForRowUID_(v6, v7, lower, upper, v8);

  return upper;
}

- (TSUViewColumnIndex)viewColumnIndexForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v6 = objc_msgSend_viewMap(self, a2, d._lower, d._upper, v3);
  LOWORD(upper) = objc_msgSend_columnIndexForColumnUID_(v6, v7, lower, upper, v8);

  return upper;
}

- (TSUViewRowIndex)viewRowIndexForRowUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v6 = objc_msgSend_viewMap(self, a2, d._lower, d._upper, v3);
  LODWORD(upper) = objc_msgSend_rowIndexForRowUID_(v6, v7, lower, upper, v8);

  return upper;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForBaseColumnIndexes:(SEL)indexes
{
  v16 = a4;
  v10 = objc_msgSend_baseMap(self, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v10, v11, v16, v12, v13);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForBaseRowIndexes:(SEL)indexes
{
  v16 = a4;
  v10 = objc_msgSend_baseMap(self, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v10, v11, v16, v12, v13);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForViewColumnIndexes:(SEL)indexes
{
  v16 = a4;
  v10 = objc_msgSend_viewMap(self, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v10, v11, v16, v12, v13);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForViewRowIndexes:(SEL)indexes
{
  v16 = a4;
  v10 = objc_msgSend_viewMap(self, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v10, v11, v16, v12, v13);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableBaseColumnIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_baseMap(self, a2, ds, v3, v4);
  v10 = objc_msgSend_mutableColumnIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (id)mutableBaseRowIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_baseMap(self, a2, ds, v3, v4);
  v10 = objc_msgSend_mutableRowIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (id)baseColumnIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_baseMap(self, a2, ds, v3, v4);
  v10 = objc_msgSend_columnIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (id)baseRowIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_baseMap(self, a2, ds, v3, v4);
  v10 = objc_msgSend_rowIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord
{
  v7 = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a2, *&coord, v3, v4);

  return objc_msgSend_baseCellCoordForViewCellCoord_(self, v6, v7, v8, v9);
}

- (id)viewColumnIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_viewMap(self, a2, ds, v3, v4);
  v10 = objc_msgSend_columnIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (id)viewRowIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_viewMap(self, a2, ds, v3, v4);
  v10 = objc_msgSend_rowIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3, v4);
  v10 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v6, v7, *&coord, v8, v9);

  return v10;
}

- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord
{
  v7 = objc_msgSend_viewCellCoordForBaseCellCoord_(self, a2, *&coord, v3, v4);

  return objc_msgSend_chromeCellCoordForViewCellCoord_(self, v6, v7, v8, v9);
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_chromeCellCoordForViewCellCoord_(self, a3, *a4, v4, v5);
  retstr->var0.coordinate = result;
  retstr->var0._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_viewCellCoordForBaseCellCoord_(self, a3, *a4, v4, v5);
  retstr->var0.coordinate = result;
  retstr->var0._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a3, *a4, v4, v5);
  retstr->var0.coordinate = result;
  retstr->var0._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_baseCellCoordForViewCellCoord_(self, a3, *a4, v4, v5);
  retstr->_ref.coordinate = result;
  retstr->_ref._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:(TSTTableTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->var0.range = 0u;
    retstr->var0._tableUID = 0u;
  }

  return result;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:(TSTTableTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_viewRangeRefForChromeRangeRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->var0.range = 0u;
    retstr->var0._tableUID = 0u;
  }

  return result;
}

- (id)chromeTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_chromeTractRefForViewTractRef_(v9, v10, refCopy, v11, v12);

  return v13;
}

- (id)viewTractRefForChromeTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_viewTractRefForChromeTractRef_(v9, v10, refCopy, v11, v12);

  return v13;
}

- (id)baseTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_baseTractRefForViewTractRef_(v9, v10, refCopy, v11, v12);

  return v13;
}

- (id)viewTractRefForBaseTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_viewTractRefForBaseTractRef_(v9, v10, refCopy, v11, v12);

  return v13;
}

- (id)chromeTractRefForBaseTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_chromeTractRefForBaseTractRef_(v9, v10, refCopy, v11, v12);

  return v13;
}

- (id)baseTractRefForChromeTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_baseTractRefForChromeTractRef_(v9, v10, refCopy, v11, v12);

  return v13;
}

- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_baseMap(self, a2, d, v3, v4);
  row = d->_row;
  v13[0] = d->_column;
  v13[1] = row;
  v11 = objc_msgSend_cellIDForCellUID_(v6, v8, v13, v9, v10);

  return v11;
}

- (TSKUIDStructCoord)cellUIDforBaseCellCoord:(SEL)coord
{
  v8 = objc_msgSend_baseMap(self, coord, *&a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_cellUIDForCellID_(v8, v9, *&a4, v10, v11);
  }

  else
  {
    retstr->_column = 0u;
    retstr->_row = 0u;
  }

  return result;
}

- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)coord
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], coord, "[TSTTableTranslator cellUIDForSummaryCellCoord:]", v4, v5);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1255, 0, "no summeries in normal table mode");

  result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  retstr->_column = 0u;
  retstr->_row = 0u;
  return result;
}

- (TSUViewCellCoord)viewCellCoordForCellUID:(TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_viewMap(self, a2, d, v3, v4);
  row = d->_row;
  v13[0] = d->_column;
  v13[1] = row;
  v11 = objc_msgSend_cellIDForCellUID_(v6, v8, v13, v9, v10);

  return v11;
}

- (id)baseCellRegionForUIDRange:(const void *)range
{
  v6 = objc_msgSend_baseMap(self, a2, range, v3, v4);
  v10 = objc_msgSend_cellRegionForUIDRange_(v6, v7, range, v8, v9);

  return v10;
}

- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3, v4);
  v10 = objc_msgSend_summaryCellCoordForViewCellCoord_(v6, v7, *&coord, v8, v9);

  return v10;
}

- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3, v4);
  v10._row = objc_msgSend_summaryRowIndexForViewRowIndex_(v6, v7, index.var0, v8, v9);

  return v10;
}

- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3, v4);
  v10._column = objc_msgSend_summaryColumnIndexForViewColumnIndex_(v6, v7, index.var0, v8, v9);

  return v10;
}

- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator cellExistsAtCellID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1311, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_cellExistsAtBaseCellCoord_(baseTableModel, v7, *&d, v8, v9);
}

- (id)indexesForLeadingRows
{
  v5 = MEMORY[0x277CCAA78];
  v13.origin = objc_msgSend_bodyRowRange(self->_tableInfo, a2, v2, v3, v4);
  v13.size = v6;
  v7 = TSUCellRect::firstRow(&v13);
  v11 = objc_msgSend_indexSetWithIndex_(v5, v8, v7, v9, v10);

  return v11;
}

- (id)indexesForLeadingColumns
{
  v5 = MEMORY[0x277CCAA78];
  v13.origin = objc_msgSend_bodyColumnRange(self->_tableInfo, a2, v2, v3, v4);
  v13.size = v6;
  v7 = TSUCellRect::firstColumn(&v13);
  v11 = objc_msgSend_indexSetWithIndex_(v5, v8, v7, v9, v10);

  return v11;
}

- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)row outAggregateIndex:(unint64_t *)index
{
  if (index)
  {
    *index = 0;
  }

  return objc_msgSend_groupLevelAtSummaryRow_(self, a2, row.var0, index, v4);
}

- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)column outAggregateIndex:(unint64_t *)index
{
  if (index)
  {
    *index = 0;
  }

  return objc_msgSend_groupLevelAtSummaryColumn_(self, a2, column.var0, index, v4);
}

- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)d
{
  v7 = objc_msgSend_viewMap(self, a2, *&d, v3, v4);
  v12 = objc_msgSend_baseMap(self, v8, v9, v10, v11);

  if (v7 != v12)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTranslator hasCommentAtCellID:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1472, 0, "requires identity mapping from view to model space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (objc_msgSend_isCategorized(self, v13, v14, v15, v16))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTableTranslator hasCommentAtCellID:]", v29, v30);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v34, v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 1475, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  baseTableModel = self->_baseTableModel;

  return (MEMORY[0x2821F9670])(baseTableModel, sel_hasCommentAtBaseCellCoord_, d, v29, v30);
}

- (BOOL)checkMapsAndAssert:(BOOL)assert
{
  v5 = objc_msgSend_baseMap(self, a2, assert, v3, v4);
  isEmpty = objc_msgSend_isEmpty(v5, v6, v7, v8, v9);

  return isEmpty ^ 1;
}

- (void)resetViewMap
{
  v6 = objc_msgSend_viewMap(self, a2, v2, v3, v4);
  v11 = objc_msgSend_baseMap(self, v7, v8, v9, v10);

  if (v6 != v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTranslator resetViewMap]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 1538, 0, "view and base must be the same while uncategorized.");

    v26 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v26, v22, v23, v24, v25);
  }
}

@end