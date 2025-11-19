@interface TSTTableModel
+ (id)tableModelForTableUID:(const TSKUIDStruct *)a3 withCalcEngine:(id)a4;
+ (int64_t)dateGroupingTypeForMinMaxDatePair:(id)a3;
- (BOOL)auditColumnRowCellCountsReturningResult:(id *)a3 hasUndercounts:(BOOL *)a4;
- (BOOL)auditDatalistDuplicationReturningResult:(id *)a3;
- (BOOL)auditRowInfoCellCountsReturningResult:(id *)a3;
- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)a3 result:(id *)a4;
- (BOOL)cellExistsAtBaseCellCoord:(TSUModelCellCoord)a3;
- (BOOL)cellModifiedInCurrentRecalcCycle:(const TSUCellCoord *)a3;
- (BOOL)confirmRefCountsReturningResult:(id *)a3;
- (BOOL)hasCellID:(TSUCellCoord)a3;
- (BOOL)hasCommentAtBaseCellCoord:(TSUModelCellCoord)a3;
- (BOOL)hasFormulaAtBaseCellCoord:(TSUModelCellCoord)a3;
- (BOOL)hasNamesInHeaders;
- (BOOL)hasPastableFormulas;
- (BOOL)hasSpillRangesIntersectingCellRegion:(id)a3;
- (BOOL)hasUsefulPivotDataInSourceBodyTract:(id)a3;
- (BOOL)isRegisteredWithCalcEngine:(id)a3;
- (BOOL)p_auditTableHealthUpgradingFromVersion:(unint64_t)a3;
- (BOOL)p_auditTilesForRowOverlapAndExtensionPastTableBoundsWithVersion:(unint64_t)a3;
- (BOOL)spillArrayValue:(id)a3 primaryCell:(id)a4 withContext:(id)a5 hasWarnings:(BOOL)a6 didBeginOrEndWithTextCell:(BOOL *)a7 propagateCheckboxes:(BOOL)a8;
- (BOOL)verifySubOwnerUIDsUsed;
- (NSArray)columnWidths;
- (NSArray)rowHeights;
- (NSMapTable)commentHostingMap;
- (NSMapTable)commentStorageMap;
- (NSString)description;
- (NSUUID)nsTableUID;
- (TSCECellCoordSet)arrayFormulasSpillingIntoRegion:(SEL)a3;
- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle;
- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)a3 affectedRegion:(id)a4;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5;
- (TSDStroke)bodyColumnStroke;
- (TSDStroke)bodyRowStroke;
- (TSDStroke)bodyRowStrokeEvenIfNotVisible;
- (TSDStroke)categoryLevel1InteriorStroke;
- (TSDStroke)categoryLevel2InteriorStroke;
- (TSDStroke)categoryLevel3InteriorStroke;
- (TSDStroke)categoryLevel4InteriorStroke;
- (TSDStroke)categoryLevel5InteriorStroke;
- (TSDStroke)defaultHorizontalBorderStroke;
- (TSDStroke)defaultHorizontalBorderStrokeEvenIfNotVisible;
- (TSDStroke)defaultVerticalBorderStroke;
- (TSDStroke)footerRowBodyColumnStroke;
- (TSDStroke)footerRowBodyRowStroke;
- (TSDStroke)footerRowBorderStroke;
- (TSDStroke)footerRowSeparatorStroke;
- (TSDStroke)headerColumnBodyColumnStroke;
- (TSDStroke)headerColumnBodyRowStroke;
- (TSDStroke)headerColumnBorderStroke;
- (TSDStroke)headerColumnSeparatorStroke;
- (TSDStroke)headerRowBodyColumnStroke;
- (TSDStroke)headerRowBodyRowStroke;
- (TSDStroke)headerRowBorderStroke;
- (TSDStroke)headerRowSeparatorStroke;
- (TSKUIDStruct)UIDForIndex:(unsigned int)a3 isRows:(BOOL)a4;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3;
- (TSKUIDStruct)conditionalStyleFormulaOwnerUID;
- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4;
- (TSKUIDStruct)fromGroupByUID;
- (TSKUIDStruct)fromTableUID;
- (TSKUIDStruct)groupByUID;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3;
- (TSKUIDStruct)tableUID;
- (TSKUIDStruct)upgradeHiddenFormulaOwnerForColumnsUID;
- (TSKUIDStruct)upgradeHiddenFormulaOwnerForRowsUID;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)a3 isRows:(id)a4;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)a3 isRows:(_NSRange)a4;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3;
- (TSTCellWillChangeDistributor)cellWillChangeDistributor;
- (TSTOwnerUidMapper)identityOwnerUIDMapper;
- (TSTOwnerUidMapper)ownerUIDMapper;
- (TSTOwnerUidMapper)upgradeToSubOwnerUIDMapper;
- (TSTTableModel)initWithContext:(id)a3 fromSourceModel:(id)a4 region:(id)a5 tableInfo:(id)a6 waitForCalcEngine:(BOOL)a7 formulaCoordSpace:(int64_t)a8;
- (TSTTableModel)initWithContext:(id)a3 rowUids:(const void *)a4 columnUids:(const void *)a5 styles:(id)a6 stylePreset:(id)a7 tableInfo:(id)a8;
- (TSTTableModel)initWithContext:(id)a3 rows:(unsigned int)a4 columns:(unsigned int)a5 styles:(id)a6 stylePreset:(id)a7 tableInfo:(id)a8;
- (TSTTableModel)initWithContext:(id)a3 tableUID:(TSKUIDStruct)a4 columnRowUIDMap:(id)a5 styles:(id)a6 stylePreset:(id)a7 tableInfo:(id)a8;
- (TSTTableSortOrder)sortOrder;
- (TSTTableTranslator)identityTranslator;
- (TSUCellRect)cellRangeForUIDRange:(const void *)a3;
- (TSUModelCellCoord)baseCellCoordForCellContainingRichTextStorage:(id)a3;
- (TSUModelCellRect)actualHeaderColumnRange;
- (TSUModelCellRect)bodyColumnRange;
- (TSUModelCellRect)bodyRange;
- (TSUModelCellRect)bodyRowRange;
- (TSUModelCellRect)bottomCornerRange;
- (TSUModelCellRect)cellRangeForTableArea:(unint64_t)a3;
- (TSUModelCellRect)footerRowRange;
- (TSUModelCellRect)headerColumnRange;
- (TSUModelCellRect)headerRowRange;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUModelCellRect)range;
- (TSUModelCellRect)topCornerRange;
- (_NSRange)columnRangeForUIDs:(const void *)a3;
- (_NSRange)rowRangeForUIDs:(const void *)a3;
- (double)computeDefaultFontHeightForTableStyleArea:(unint64_t)a3;
- (double)heightOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4;
- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4;
- (id).cxx_construct;
- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4;
- (id)UIDSetForRange:(_NSRange)a3 isRows:(BOOL)a4;
- (id)cachedCommentHostingForAnnotationUUID:(id)a3;
- (id)cellAtBaseCellCoord:(TSUModelCellCoord)a3;
- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (id)cellStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4;
- (id)cellValueAtBaseCellCoord:(TSUModelCellCoord)a3;
- (id)cellValueFromCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4;
- (id)columnIndexesForUIDs:(const void *)a3;
- (id)columnNameForCellID:(TSUCellCoord)a3 restrictToBodyRange:(BOOL)a4;
- (id)columnUuids;
- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)a3;
- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)a3 forCommentStorage:(id)a4;
- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)a3 forCommentStorage:(id)a4 updateCommentMaps:(BOOL)a5;
- (id)createPivotOwner;
- (id)defaultCellStyleForBaseCellCoord:(TSUModelCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)defaultCellStyleForTableStyleArea:(unint64_t)a3;
- (id)defaultTextStyleForBaseCellCoord:(TSUModelCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)defaultTextStyleForTableStyleArea:(unint64_t)a3;
- (id)expectedSpillErrorForValue:(id)a3 withContext:(id)a4;
- (id)fillForRow:(TSUModelRowIndex)a3;
- (id)formatForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)a3 formatIsExplicitOut:(BOOL *)a4;
- (id)initAsPivotDataWithContext:(id)a3 tableInfo:(id)a4 sourceModel:(id)a5 sourceBody:(id)a6 sourceHeader:(id)a7;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)a3;
- (id)metadataForColumnIndex:(TSUModelColumnIndex)a3 hidingAction:(unsigned __int8)a4;
- (id)metadataForRowIndex:(TSUModelRowIndex)a3 hidingAction:(unsigned __int8)a4;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableColumnIndexesForUIDs:(const void *)a3;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5;
- (id)mutableIndexesForUIDs:(const void *)a3 isRows:(BOOL)a4;
- (id)mutableRowIndexesForUIDs:(const void *)a3;
- (id)newCell;
- (id)newCellWithLocale:(id)a3;
- (id)objectToArchiveInDependencyTracker;
- (id)p_displayNameForColumnAtIndex:(unsigned __int16)a3 documentLocalized:(BOOL)a4 derivation:(int64_t *)a5;
- (id)regionForValueOrCommentCellsInBaseCellRect:(TSUModelCellRect)a3;
- (id)rowIndexesForUIDs:(const void *)a3;
- (id)rowUuids;
- (id)sheetName;
- (id)stringAtBaseCellCoord:(TSUModelCellCoord)a3 optionalCell:(id)a4;
- (id)tableAreasForBaseCellRect:(TSUModelCellRect)a3;
- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (id)textStyleForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (id)textStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4;
- (id)unnamedTableString;
- (int)getCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4 suppressCellBorder:(BOOL)a5;
- (int)getDefaultCell:(id)a3 forBaseCellCoord:(TSUModelCellCoord)a4;
- (int)getDefaultCell:(id)a3 forTableStyleArea:(unint64_t)a4;
- (int)getValue:(id *)a3 atBaseCellCoord:(TSUModelCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5 skipPendingWrites:(BOOL)a6;
- (int)insertColumnsAtIndex:(TSUModelColumnIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6;
- (int)insertRowsAtIndex:(TSUModelRowIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6 unsetFilterHidingAction:(BOOL)a7;
- (int)insertRowsInBaseRange:(_NSRange)a3 uids:(const void *)a4 metadata:(id)a5 unsetFilterHidingAction:(BOOL)a6;
- (int)maxStrokeOrder;
- (int)p_shouldAllowApplyBaseCellMap:(id)a3;
- (int)p_shouldAllowSetCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4;
- (int)registerWithCalcEngine:(id)a3 ownerKind:(unsigned __int16)a4 linkOnly:(BOOL)a5;
- (int)removeCommentStorageAtBaseCellCoord:(TSUModelCellCoord)a3;
- (int)setCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4 ignoreFormula:(BOOL)a5 clearImportWarnings:(BOOL)a6 calcEngine:(id)a7;
- (int)setCellsWithBaseCellMap:(id)a3 ignoreFormulas:(BOOL)a4 skipDirtyingNonFormulaCells:(BOOL)a5;
- (int)setCommentStorage:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4;
- (int)tableWritingDirection;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)tableAreaForBaseCellCoord:(TSUModelCellCoord)a3;
- (unint64_t)tableAreaForColumn:(TSUModelColumnIndex)a3;
- (unint64_t)tableAreaForRow:(TSUModelRowIndex)a3;
- (unint64_t)tableSizeClass;
- (unint64_t)tableStyleAreaForBaseCellCoord:(TSUModelCellCoord)a3;
- (unint64_t)tableStyleAreaForRow:(TSUModelRowIndex)a3;
- (unsigned)cellValueTypeAtBaseCellCoord:(TSUModelCellCoord)a3;
- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)a3;
- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)a3[16];
- (unsigned)headerInfo_hidingActionForColumnAtIndex:(TSUModelColumnIndex)a3;
- (unsigned)headerInfo_hidingActionForRowAtIndex:(TSUModelRowIndex)a3;
- (unsigned)pivotDataCellValueTypeForColumn:(TSUModelColumnIndex)a3;
- (unsigned)rowIndexForRowUID:(TSKUIDStruct)a3;
- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)a3[16];
- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableModel *)self;
- (void)_removeAnnotationsFromDeleteRange:(TSUModelCellRect)a3;
- (void)accumulateCurrentCellsConcurrently:(id)a3;
- (void)addCellRefToClearError:(const TSCECellRef *)a3;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)addReferencedStylesToSet:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)assertListTilesAndRows;
- (void)clearCommentHostingMapForCommentStorage:(id)a3;
- (void)clearErrors;
- (void)clearPivotOwner;
- (void)clearSpillCellsForOriginID:(TSUCellCoord)a3 boundingResultRegion:(id *)a4;
- (void)clearSpillCellsInRange:(const TSUCellRect *)a3;
- (void)computeDefaultRowHeight;
- (void)copyPivotDetailDataFromSourceModel:(id)a3 inSourceRegion:(id)a4 columnMapping:(id)a5 rowMapping:(id)a6;
- (void)dealloc;
- (void)defaultStyleHandlesAtBaseCellCoord:(TSUModelCellCoord)a3 useSoftDefault:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7;
- (void)defaultStylesForTableStyleArea:(unint64_t)a3 outCellStyle:(id *)a4 outTextStyle:(id *)a5;
- (void)didApplyConcurrentCellMap:(id)a3;
- (void)documentLocaleDidChange;
- (void)getPendingCellCopy:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4 suppressCellBorder:(BOOL)a5;
- (void)getUUIDBytes:(unsigned __int8)a3[16] forColumnIndex:(unsigned __int16)a4;
- (void)getUUIDBytes:(unsigned __int8)a3[16] forRowIndex:(unsigned int)a4;
- (void)invalidateForCalcEngine:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)mapTableStylesToStylesheet:(id)a3 withMapper:(id)a4;
- (void)moveBaseColumnRange:(_NSRange)a3 toColumnIndex:(TSUModelColumnIndex)a4;
- (void)moveBaseRowRange:(_NSRange)a3 toRowIndex:(TSUModelRowIndex)a4;
- (void)p_clearDefaultStyles;
- (void)p_createCommentMapsIfNeeded;
- (void)p_iterateDataStoreCellsInRegion:(id)a3 searchFlags:(unint64_t)a4 usingBlock:(id)a5;
- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)a3 affectsCellBorders:(BOOL)a4 ignoreFormulas:(BOOL)a5 clearImportWarnings:(BOOL)a6 formulaReplacer:(id)a7 modificationBlock:(id)a8 furtherPassNeededBlock:(id)a9 furtherPassConcurrentBlock:(id)a10 preApplyBlock:(id)a11;
- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)a3 affectsCellBorders:(BOOL)a4 ignoreFormulas:(BOOL)a5 clearImportWarnings:(BOOL)a6 formulaReplacer:(id)a7 modificationBlock:(id)a8 preApplyBlock:(id)a9;
- (void)p_modifyCellsConcurrentlyInBaseRegion:(id)a3 searchFlags:(unint64_t)a4 affectsCellBorders:(BOOL)a5 ignoreFormulas:(BOOL)a6 clearImportWarnings:(BOOL)a7 formulaReplacer:(id)a8 modificationBlock:(id)a9 furtherPassNeededBlock:(id)a10 furtherPassConcurrentBlock:(id)a11 preApplyBlock:(id)a12;
- (void)p_rebuildTheTable;
- (void)p_upgradeDefaultCellStylesForStrokeSidecar;
- (void)p_upgradeMerges;
- (void)performReadForOneOffFormulaEvaluation:(id)a3 forCellCoord:(TSUCellCoord)a4;
- (void)postCommentNotificationForStorage:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 notificationKey:(id)a5;
- (void)prepareForPasteWithCalculationEngine:(id)a3 sourceOffset:(TSUColumnRowOffset)a4 bakeFormulas:(BOOL)a5;
- (void)prepareToApplyConcurrentCellMap:(id)a3;
- (void)registerAllFormulasWithCalculationEngine:(id)a3 wasCrossDocumentPaste:(BOOL)a4 infoIsCategorized:(BOOL)a5 wasUndo:(BOOL)a6;
- (void)registerWithCalcEngineForDocumentLoad:(id)a3 ownerKind:(unsigned __int16)a4;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4 bakeForBadRefs:(BOOL)a5;
- (void)removeAnnotationsFromColumnsAtBaseIndexes:(id)a3;
- (void)removeAnnotationsFromRowsAtBaseIndexes:(id)a3;
- (void)removeColumnsAtBaseIndexes:(id)a3;
- (void)removeColumnsAtIndex:(TSUModelColumnIndex)a3 count:(TSUModelColumnIndex)a4;
- (void)removeRowsAtBaseIndexes:(id)a3;
- (void)removeRowsAtIndex:(TSUModelRowIndex)a3 count:(TSUModelRowIndex)a4;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)resetDependenciesForCell:(TSUCellCoord)a3;
- (void)resetForPivotingWithRowUids:(const void *)a3 columnUids:(const void *)a4 numberOfHeaderRows:(TSUModelRowIndex)a5 numberOfHeaderColumns:(TSUModelColumnIndex)a6;
- (void)resetSortRuleReferenceTrackerForInsert;
- (void)resetSpillingRangesInRange:(const TSUCellRect *)a3;
- (void)saveToArchiver:(id)a3;
- (void)setBodyCellStyle:(id)a3;
- (void)setBodyTextStyle:(id)a3;
- (void)setCategoryLevel1CellStyle:(id)a3;
- (void)setCategoryLevel1TextStyle:(id)a3;
- (void)setCategoryLevel2CellStyle:(id)a3;
- (void)setCategoryLevel2TextStyle:(id)a3;
- (void)setCategoryLevel3CellStyle:(id)a3;
- (void)setCategoryLevel3TextStyle:(id)a3;
- (void)setCategoryLevel4CellStyle:(id)a3;
- (void)setCategoryLevel4TextStyle:(id)a3;
- (void)setCategoryLevel5CellStyle:(id)a3;
- (void)setCategoryLevel5TextStyle:(id)a3;
- (void)setCellsConcurrently:(id)a3 ignoreFormula:(BOOL)a4 clearImportWarnings:(BOOL)a5 formulaReplacer:(id)a6;
- (void)setColumnRowUIDMap:(id)a3;
- (void)setColumnWidths:(id)a3;
- (void)setFooterRowCellStyle:(id)a3;
- (void)setFooterRowTextStyle:(id)a3;
- (void)setFormulaOwnerUIDsWithMap:(id)a3 shouldStealReferences:(BOOL)a4;
- (void)setFromGroupByUID:(TSKUIDStruct)a3;
- (void)setFromTableUID:(TSKUIDStruct)a3;
- (void)setHeaderColumnCellStyle:(id)a3;
- (void)setHeaderColumnTextStyle:(id)a3;
- (void)setHeaderColumnsFrozen:(BOOL)a3;
- (void)setHeaderRowCellStyle:(id)a3;
- (void)setHeaderRowTextStyle:(id)a3;
- (void)setHeaderRowsFrozen:(BOOL)a3;
- (void)setHeight:(double)a3 ofRowAtIndex:(TSUModelRowIndex)a4;
- (void)setHidingState:(unsigned __int8)a3 atColumnIndex:(const TSUModelColumnIndex *)a4;
- (void)setHidingState:(unsigned __int8)a3 atRowIndex:(const TSUModelRowIndex *)a4;
- (void)setIsAPivotDataModel:(BOOL)a3;
- (void)setNumberOfFooterRows:(TSUModelRowIndex)a3;
- (void)setNumberOfHeaderColumns:(TSUModelColumnIndex)a3;
- (void)setNumberOfHeaderRows:(TSUModelRowIndex)a3;
- (void)setPivotBodySummaryColumnCellStyle:(id)a3;
- (void)setPivotBodySummaryRowCellStyle:(id)a3;
- (void)setPivotHeaderColumnSummaryCellStyle:(id)a3;
- (void)setPresetNeedsStrongOwnership:(BOOL)a3;
- (void)setRepeatingHeaderColumnsEnabled:(BOOL)a3;
- (void)setRepeatingHeaderRowsEnabled:(BOOL)a3;
- (void)setRowHeights:(id)a3;
- (void)setSortOrder:(id)a3;
- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5;
- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5;
- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5;
- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5;
- (void)setStrokeSidecar:(id)a3;
- (void)setStyleApplyClearsAll:(BOOL)a3;
- (void)setStyleNetwork:(id)a3;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)a3;
- (void)setTableInfo:(id)a3;
- (void)setTableName:(id)a3;
- (void)setTableNameBorderEnabled:(BOOL)a3;
- (void)setTableNameEnabled:(BOOL)a3;
- (void)setTableNameHeight:(double)a3;
- (void)setTableNameShapeStyle:(id)a3;
- (void)setTableNameStyle:(id)a3;
- (void)setTableStyle:(id)a3;
- (void)setTableStylePreset:(id)a3;
- (void)setTableUID:(TSKUIDStruct)a3;
- (void)setTextImportRecord:(id)a3;
- (void)setWasCut:(BOOL)a3;
- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUModelColumnIndex)a4;
- (void)setlabelLevel1CellStyle:(id)a3;
- (void)setlabelLevel1TextStyle:(id)a3;
- (void)setlabelLevel2CellStyle:(id)a3;
- (void)setlabelLevel2TextStyle:(id)a3;
- (void)setlabelLevel3CellStyle:(id)a3;
- (void)setlabelLevel3TextStyle:(id)a3;
- (void)setlabelLevel4CellStyle:(id)a3;
- (void)setlabelLevel4TextStyle:(id)a3;
- (void)setlabelLevel5CellStyle:(id)a3;
- (void)setlabelLevel5TextStyle:(id)a3;
- (void)swapRowAtIndex:(TSUModelRowIndex)a3 withRowAtIndex:(TSUModelRowIndex)a4;
- (void)unregisterFromCalcEngine:(id)a3;
- (void)updateCalcEngineForTableSize;
- (void)updateCalculationEngineForFormula:(id)a3 inBaseCellCoord:(TSUModelCellCoord)a4 usingCalcEngine:(id)a5;
- (void)updateMergesAndCellsAsPivotDataWithSourceModel:(id)a3;
- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)a3;
- (void)upgradeFormatsForCustomFormatListU2_0;
- (void)upgradeFromPreUFF;
- (void)upgradeHiddenStates;
- (void)validateTableStylesInSameStylesheetExpectingDocSS:(BOOL)a3;
- (void)willBeAddedCellCleanup:(BOOL)a3;
- (void)writeResultsForCalcEngine:(id)a3;
@end

@implementation TSTTableModel

- (void)setStrokeSidecar:(id)a3
{
  v9 = a3;
  if (self->_strokeSidecar != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_strokeSidecar, a3);
  }
}

- (void)documentLocaleDidChange
{
  categoryOwner = self->_categoryOwner;
  v9 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  objc_msgSend_updateWithDocumentRoot_(categoryOwner, v6, v9, v7, v8);
}

- (TSTTableTranslator)identityTranslator
{
  identityTranslator = self->_identityTranslator;
  if (!identityTranslator)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_identityTranslator)
    {
      v5 = [TSTTableTranslator alloc];
      v9 = objc_msgSend_initWithBaseTableModel_(v5, v6, v4, v7, v8);
      v10 = self->_identityTranslator;
      self->_identityTranslator = v9;
    }

    objc_sync_exit(v4);

    identityTranslator = self->_identityTranslator;
  }

  return identityTranslator;
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)a3
{
  v4 = a3;
  objc_msgSend_willModifyForUpgrade(self, v5, v6, v7, v8);
  v13 = objc_msgSend_tableStylePreset(self, v9, v10, v11, v12);

  if (!v13)
  {
    v18 = objc_msgSend_documentRoot(self, v14, v15, v16, v17);
    v23 = objc_msgSend_theme(v18, v19, v20, v21, v22);
    v27 = objc_msgSend_presetsOfKind_(v23, v24, *MEMORY[0x277D80BA8], v25, v26);

    if (!v27)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTableModel setStylesheetForUpgradeToSingleStylesheet:]", v29, v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 430, 0, "invalid nil value for '%{public}s'", "presets");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22109AB0C;
    v50[3] = &unk_27845DB98;
    v50[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(v27, v28, v50, v29, v30);
  }

  v42 = objc_msgSend_documentRoot(self, v14, v15, v16, v17);
  v47 = objc_msgSend_makeStyleMapper(v42, v43, v44, v45, v46);
  objc_msgSend_mapTableStylesToStylesheet_withMapper_(self, v48, v4, v47, v49);
}

- (void)p_clearDefaultStyles
{
  tableStyle = self->_tableStyle;
  self->_tableStyle = 0;

  bodyCellStyle = self->_bodyCellStyle;
  self->_bodyCellStyle = 0;

  headerRowCellStyle = self->_headerRowCellStyle;
  self->_headerRowCellStyle = 0;

  headerColumnCellStyle = self->_headerColumnCellStyle;
  self->_headerColumnCellStyle = 0;

  footerRowCellStyle = self->_footerRowCellStyle;
  self->_footerRowCellStyle = 0;

  categoryLevel1CellStyle = self->_categoryLevel1CellStyle;
  self->_categoryLevel1CellStyle = 0;

  categoryLevel2CellStyle = self->_categoryLevel2CellStyle;
  self->_categoryLevel2CellStyle = 0;

  categoryLevel3CellStyle = self->_categoryLevel3CellStyle;
  self->_categoryLevel3CellStyle = 0;

  categoryLevel4CellStyle = self->_categoryLevel4CellStyle;
  self->_categoryLevel4CellStyle = 0;

  categoryLevel5CellStyle = self->_categoryLevel5CellStyle;
  self->_categoryLevel5CellStyle = 0;

  labelLevel1CellStyle = self->_labelLevel1CellStyle;
  self->_labelLevel1CellStyle = 0;

  labelLevel2CellStyle = self->_labelLevel2CellStyle;
  self->_labelLevel2CellStyle = 0;

  labelLevel3CellStyle = self->_labelLevel3CellStyle;
  self->_labelLevel3CellStyle = 0;

  labelLevel4CellStyle = self->_labelLevel4CellStyle;
  self->_labelLevel4CellStyle = 0;

  labelLevel5CellStyle = self->_labelLevel5CellStyle;
  self->_labelLevel5CellStyle = 0;

  bodyTextStyle = self->_bodyTextStyle;
  self->_bodyTextStyle = 0;

  headerRowTextStyle = self->_headerRowTextStyle;
  self->_headerRowTextStyle = 0;

  headerColumnTextStyle = self->_headerColumnTextStyle;
  self->_headerColumnTextStyle = 0;

  footerRowTextStyle = self->_footerRowTextStyle;
  self->_footerRowTextStyle = 0;

  categoryLevel1TextStyle = self->_categoryLevel1TextStyle;
  self->_categoryLevel1TextStyle = 0;

  categoryLevel2TextStyle = self->_categoryLevel2TextStyle;
  self->_categoryLevel2TextStyle = 0;

  categoryLevel3TextStyle = self->_categoryLevel3TextStyle;
  self->_categoryLevel3TextStyle = 0;

  categoryLevel4TextStyle = self->_categoryLevel4TextStyle;
  self->_categoryLevel4TextStyle = 0;

  categoryLevel5TextStyle = self->_categoryLevel5TextStyle;
  self->_categoryLevel5TextStyle = 0;

  labelLevel1TextStyle = self->_labelLevel1TextStyle;
  self->_labelLevel1TextStyle = 0;

  labelLevel2TextStyle = self->_labelLevel2TextStyle;
  self->_labelLevel2TextStyle = 0;

  labelLevel3TextStyle = self->_labelLevel3TextStyle;
  self->_labelLevel3TextStyle = 0;

  labelLevel4TextStyle = self->_labelLevel4TextStyle;
  self->_labelLevel4TextStyle = 0;

  labelLevel5TextStyle = self->_labelLevel5TextStyle;
  self->_labelLevel5TextStyle = 0;

  tableNameStyle = self->_tableNameStyle;
  self->_tableNameStyle = 0;

  tableNameShapeStyle = self->_tableNameShapeStyle;
  self->_tableNameShapeStyle = 0;

  pivotBodySummaryRowCellStyle = self->_pivotBodySummaryRowCellStyle;
  self->_pivotBodySummaryRowCellStyle = 0;

  pivotBodySummaryColumnCellStyle = self->_pivotBodySummaryColumnCellStyle;
  self->_pivotBodySummaryColumnCellStyle = 0;

  pivotHeaderColumnSummaryCellStyle = self->_pivotHeaderColumnSummaryCellStyle;
  self->_pivotHeaderColumnSummaryCellStyle = 0;
}

- (void)setStyleNetwork:(id)a3
{
  v293 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  objc_msgSend_p_clearDefaultStyles(self, v8, v9, v10, v11);
  if (v293)
  {
    v16 = objc_msgSend_tableStyle(v293, v12, v13, v14, v15);
    objc_msgSend_setTableStyle_(self, v17, v16, v18, v19);

    v24 = objc_msgSend_bodyCellStyle(v293, v20, v21, v22, v23);
    objc_msgSend_setBodyCellStyle_(self, v25, v24, v26, v27);

    v32 = objc_msgSend_headerRowCellStyle(v293, v28, v29, v30, v31);
    objc_msgSend_setHeaderRowCellStyle_(self, v33, v32, v34, v35);

    v40 = objc_msgSend_headerColumnCellStyle(v293, v36, v37, v38, v39);
    objc_msgSend_setHeaderColumnCellStyle_(self, v41, v40, v42, v43);

    v48 = objc_msgSend_footerRowCellStyle(v293, v44, v45, v46, v47);
    objc_msgSend_setFooterRowCellStyle_(self, v49, v48, v50, v51);

    v56 = objc_msgSend_categoryLevel1CellStyle(v293, v52, v53, v54, v55);
    objc_msgSend_setCategoryLevel1CellStyle_(self, v57, v56, v58, v59);

    v64 = objc_msgSend_categoryLevel2CellStyle(v293, v60, v61, v62, v63);
    objc_msgSend_setCategoryLevel2CellStyle_(self, v65, v64, v66, v67);

    v72 = objc_msgSend_categoryLevel3CellStyle(v293, v68, v69, v70, v71);
    objc_msgSend_setCategoryLevel3CellStyle_(self, v73, v72, v74, v75);

    v80 = objc_msgSend_categoryLevel4CellStyle(v293, v76, v77, v78, v79);
    objc_msgSend_setCategoryLevel4CellStyle_(self, v81, v80, v82, v83);

    v88 = objc_msgSend_categoryLevel5CellStyle(v293, v84, v85, v86, v87);
    objc_msgSend_setCategoryLevel5CellStyle_(self, v89, v88, v90, v91);

    v96 = objc_msgSend_labelLevel1CellStyle(v293, v92, v93, v94, v95);
    objc_msgSend_setLabelLevel1CellStyle_(self, v97, v96, v98, v99);

    v104 = objc_msgSend_labelLevel2CellStyle(v293, v100, v101, v102, v103);
    objc_msgSend_setLabelLevel2CellStyle_(self, v105, v104, v106, v107);

    v112 = objc_msgSend_labelLevel3CellStyle(v293, v108, v109, v110, v111);
    objc_msgSend_setLabelLevel3CellStyle_(self, v113, v112, v114, v115);

    v120 = objc_msgSend_labelLevel4CellStyle(v293, v116, v117, v118, v119);
    objc_msgSend_setLabelLevel4CellStyle_(self, v121, v120, v122, v123);

    v128 = objc_msgSend_labelLevel5CellStyle(v293, v124, v125, v126, v127);
    objc_msgSend_setLabelLevel5CellStyle_(self, v129, v128, v130, v131);

    v136 = objc_msgSend_bodyTextStyle(v293, v132, v133, v134, v135);
    objc_msgSend_setBodyTextStyle_(self, v137, v136, v138, v139);

    v144 = objc_msgSend_headerRowTextStyle(v293, v140, v141, v142, v143);
    objc_msgSend_setHeaderRowTextStyle_(self, v145, v144, v146, v147);

    v152 = objc_msgSend_headerColumnTextStyle(v293, v148, v149, v150, v151);
    objc_msgSend_setHeaderColumnTextStyle_(self, v153, v152, v154, v155);

    v160 = objc_msgSend_footerRowTextStyle(v293, v156, v157, v158, v159);
    objc_msgSend_setFooterRowTextStyle_(self, v161, v160, v162, v163);

    v168 = objc_msgSend_categoryLevel1TextStyle(v293, v164, v165, v166, v167);
    objc_msgSend_setCategoryLevel1TextStyle_(self, v169, v168, v170, v171);

    v176 = objc_msgSend_categoryLevel2TextStyle(v293, v172, v173, v174, v175);
    objc_msgSend_setCategoryLevel2TextStyle_(self, v177, v176, v178, v179);

    v184 = objc_msgSend_categoryLevel3TextStyle(v293, v180, v181, v182, v183);
    objc_msgSend_setCategoryLevel3TextStyle_(self, v185, v184, v186, v187);

    v192 = objc_msgSend_categoryLevel4TextStyle(v293, v188, v189, v190, v191);
    objc_msgSend_setCategoryLevel4TextStyle_(self, v193, v192, v194, v195);

    v200 = objc_msgSend_categoryLevel5TextStyle(v293, v196, v197, v198, v199);
    objc_msgSend_setCategoryLevel5TextStyle_(self, v201, v200, v202, v203);

    v208 = objc_msgSend_labelLevel1TextStyle(v293, v204, v205, v206, v207);
    objc_msgSend_setLabelLevel1TextStyle_(self, v209, v208, v210, v211);

    v216 = objc_msgSend_labelLevel2TextStyle(v293, v212, v213, v214, v215);
    objc_msgSend_setLabelLevel2TextStyle_(self, v217, v216, v218, v219);

    v224 = objc_msgSend_labelLevel3TextStyle(v293, v220, v221, v222, v223);
    objc_msgSend_setLabelLevel3TextStyle_(self, v225, v224, v226, v227);

    v232 = objc_msgSend_labelLevel4TextStyle(v293, v228, v229, v230, v231);
    objc_msgSend_setLabelLevel4TextStyle_(self, v233, v232, v234, v235);

    v240 = objc_msgSend_labelLevel5TextStyle(v293, v236, v237, v238, v239);
    objc_msgSend_setLabelLevel5TextStyle_(self, v241, v240, v242, v243);

    v248 = objc_msgSend_tableNameStyle(v293, v244, v245, v246, v247);
    objc_msgSend_setTableNameStyle_(self, v249, v248, v250, v251);

    v256 = objc_msgSend_tableNameShapeStyle(v293, v252, v253, v254, v255);
    objc_msgSend_setTableNameShapeStyle_(self, v257, v256, v258, v259);

    v264 = objc_msgSend_pivotBodySummaryRowCellStyle(v293, v260, v261, v262, v263);
    objc_msgSend_setPivotBodySummaryRowCellStyle_(self, v265, v264, v266, v267);

    v272 = objc_msgSend_pivotBodySummaryColumnCellStyle(v293, v268, v269, v270, v271);
    objc_msgSend_setPivotBodySummaryColumnCellStyle_(self, v273, v272, v274, v275);

    v280 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v293, v276, v277, v278, v279);
    objc_msgSend_setPivotHeaderColumnSummaryCellStyle_(self, v281, v280, v282, v283);
  }

  v284 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v12, v13, v14, v15);
  v289 = objc_msgSend_designModeEnabled(v284, v285, v286, v287, v288);

  if ((v289 & 1) == 0)
  {
    objc_msgSend_validateTableStylesInSameStylesheetExpectingDocSS_(self, v290, 0, v291, v292);
  }
}

- (id)newCell
{
  v3 = [TSTCell alloc];
  v8 = objc_msgSend_objectLocale(self, v4, v5, v6, v7);
  v12 = objc_msgSend_initWithLocale_(v3, v9, v8, v10, v11);

  return v12;
}

- (id)newCellWithLocale:(id)a3
{
  v4 = [TSTCell alloc];

  return objc_msgSend_initWithLocale_(v4, v5, a3, v6, v7);
}

- (TSTTableModel)initWithContext:(id)a3 tableUID:(TSKUIDStruct)a4 columnRowUIDMap:(id)a5 styles:(id)a6 stylePreset:(id)a7 tableInfo:(id)a8
{
  upper = a4._upper;
  lower = a4._lower;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v40.receiver = self;
  v40.super_class = TSTTableModel;
  v23 = [(TSTTableModel *)&v40 initWithContext:v14];
  if (v23)
  {
    v24 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v19, v20, v21, v22);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22109B6E8;
    v30[3] = &unk_27845DBC0;
    v31 = v23;
    v38 = lower;
    v39 = upper;
    v32 = v15;
    v33 = v18;
    v34 = v14;
    v35 = v16;
    v36 = v17;
    v37 = v24;
    v25 = v24;
    objc_msgSend_performBlockIgnoringModifications_(v31, v26, v30, v27, v28);
  }

  return v23;
}

- (TSTTableModel)initWithContext:(id)a3 rowUids:(const void *)a4 columnUids:(const void *)a5 styles:(id)a6 stylePreset:(id)a7 tableInfo:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = TSKMakeUIDStructRandom();
  v20 = v19;
  v21 = [TSTColumnRowUIDMap alloc];
  v23 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v21, v22, v14, a5, a4);
  v25 = objc_msgSend_initWithContext_tableUID_columnRowUIDMap_styles_stylePreset_tableInfo_(self, v24, v14, v18, v20, v23, v15, v16, v17);

  return v25;
}

- (TSTTableModel)initWithContext:(id)a3 rows:(unsigned int)a4 columns:(unsigned int)a5 styles:(id)a6 stylePreset:(id)a7 tableInfo:(id)a8
{
  v11 = *&a5;
  v12 = *&a4;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = TSKMakeUIDStructRandom();
  v19 = v18;
  v20 = [TSTColumnRowUIDMap alloc];
  v25 = objc_msgSend_objectUUID(v16, v21, v22, v23, v24);
  v27 = objc_msgSend_initWithContext_tableUUID_numberOfRows_numberOfColumns_(v20, v26, v13, v25, v12, v11);
  v29 = objc_msgSend_initWithContext_tableUID_columnRowUIDMap_styles_stylePreset_tableInfo_(self, v28, v13, v17, v19, v27, v14, v15, v16);

  return v29;
}

- (TSTTableModel)initWithContext:(id)a3 fromSourceModel:(id)a4 region:(id)a5 tableInfo:(id)a6 waitForCalcEngine:(BOOL)a7 formulaCoordSpace:(int64_t)a8
{
  v8 = a7;
  v71 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v70 = v13;
  objc_opt_class();
  v16 = TSUCheckedDynamicCast();
  v21 = objc_msgSend_range(v16, v17, v18, v19, v20);
  v24 = objc_msgSend_regionByIntersectingRange_(v14, v22, v21, v22, v23);

  v87.origin = objc_msgSend_boundingCellRange(v24, v25, v26, v27, v28);
  v87.size = v29;
  v32 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v29, v16, v30, v31);
  if (objc_msgSend_isRectangle(v24, v33, v34, v35, v36) && (v41 = objc_msgSend_range(v16, v37, v38, v39, v40), v87.origin.row == v41))
  {
    v43 = ((*&v87.origin ^ v41) & 0x101FFFF00000000) == 0 && *&v87.size == v37;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v44 = objc_msgSend_calcEngine(v16, v37, v38, v39, v40);

  if (v44)
  {
    v45 = objc_msgSend_calcEngine(v16, v37, v38, v39, v40);
    objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v45, v46, v47, v48, v49, 0.2);
  }

LABEL_14:
  v50 = objc_msgSend_columnRowUIDMap(v16, v37, v38, v39, v40);
  v51 = TSUCellRect::rows(&v87);
  if (v50)
  {
    objc_msgSend_rowUIDsForRowRange_(v50, v52, v51, v52, v55);
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  v56 = objc_msgSend_columnRowUIDMap(v16, v52, v53, v54, v55);
  v57 = TSUCellRect::columns(&v87);
  if (v56)
  {
    objc_msgSend_columnUIDsForColumnRange_(v56, v58, v57, v58, v61);
  }

  else
  {
    __p = 0;
    v82 = 0;
    v83 = 0;
  }

  v62 = objc_msgSend_tableStylePreset(v16, v58, v59, v60, v61);
  v64 = objc_msgSend_initWithContext_rowUids_columnUids_styles_stylePreset_tableInfo_(self, v63, v71, &v84, &__p, v32, v62, v15);

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v64)
  {
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_22109C3F8;
    v72[3] = &unk_27845DD00;
    v73 = v64;
    v74 = v15;
    v75 = v16;
    v79 = v87;
    v80 = v43;
    v76 = v24;
    v77 = v71;
    v78 = a8;
    objc_msgSend_performBlockIgnoringModifications_(v73, v65, v72, v66, v67);
  }

  return v64;
}

- (id)initAsPivotDataWithContext:(id)a3 tableInfo:(id)a4 sourceModel:(id)a5 sourceBody:(id)a6 sourceHeader:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v177 = v12;
  v176 = v15;
  v20 = objc_msgSend_numberOfHeaderRows(v13, v16, v17, v18, v19);
  if (!v15)
  {
    Index = 0;
    v34 = v20;
    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v25 = objc_msgSend_rows(v15, v21, v22, v23, v24);
  Index = TSUIndexSet::firstIndex(v25);
  v31 = objc_msgSend_rows(v15, v27, v28, v29, v30);
  v32 = TSUIndexSet::lastIndex(v31);
  v33 = v32 - Index + 1;
  if (v33 < 5)
  {
    v34 = v32 - Index + 1;
  }

  else
  {
    v34 = 5;
  }

  if (v33 > 5)
  {
    Index = v32 - 4;
  }

  if (!v14)
  {
LABEL_10:
    v192.origin = objc_msgSend_bodyRowRange(v13, v21, v22, v23, v24);
    v192.size = v35;
    v36 = [TSCECellTractRef alloc];
    v194._lower = objc_msgSend_tableUID(v13, v37, v38, v39, v40);
    v194._upper = v41;
    TSCERangeRef::TSCERangeRef(&v195, &v192, &v194);
    v14 = objc_msgSend_initWithRangeRef_(v36, v42, &v195, v43, v44);
    if (!v14)
    {
      v174 = TSUCellRect::description(&v192);
      TSUSetCrashReporterInfo();

      v163 = MEMORY[0x277D81150];
      v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", v165, v166, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 1216, v174);
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v169, v170);
      v172 = TSUCellRect::description(&v192);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v163, v173, v167, v171, 1216, 1, "Problem making sourceBodyRef with range: %@", v172);

      TSUCrashBreakpoint();
      abort();
    }
  }

LABEL_11:
  v45 = objc_msgSend_copy(v14, v21, v22, v23, v24);
  v196.location = Index;
  v196.length = v34;
  TSUIndexRange::TSUIndexRange(&v195, v196);
  objc_msgSend_addRowRange_(v45, v46, &v195, v47, v48);
  v192.origin = objc_msgSend_footerRowRange(v13, v49, v50, v51, v52);
  v192.size = v53;
  v54 = TSUCellRect::rows(&v192);
  v56 = v55;
  v197.location = v54;
  v197.length = v56;
  TSUIndexRange::TSUIndexRange(&v195, v197);
  objc_msgSend_removeRowRange_(v45, v57, &v195, v58, v59);
  v183 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v60, v13, v61, v62);
  v67 = objc_msgSend_documentRoot(v11, v63, v64, v65, v66);
  v72 = objc_msgSend_calculationEngine(v67, v68, v69, v70, v71);
  v175 = v34;

  v184 = v72;
  if (v72)
  {
    if (objc_msgSend_isRecalculationStarted(v72, v73, v74, v75, v76) && (objc_msgSend_recalculationIsPaused(v72, v77, v78, v79, v80) & 1) == 0)
    {
      objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v72, v77, v78, v79, v80, 0.2);
    }
  }

  else
  {
    v81 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", v75, v76);
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v84, v85);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v87, v82, v86, 1232, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
  }

  v92 = objc_msgSend_columns(v45, v77, v78, v79, v80);
  v181 = TSUIndexSet::asNSIndexSet(v92);
  v97 = objc_msgSend_rows(v45, v93, v94, v95, v96);
  v180 = TSUIndexSet::asNSIndexSet(v97);
  v179 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v98, v181, v180, v99);
  v104 = objc_msgSend_columns(v14, v100, v101, v102, v103);
  v105 = TSUIndexSet::asNSIndexSet(v104);
  v110 = objc_msgSend_rows(v14, v106, v107, v108, v109);
  v111 = TSUIndexSet::asNSIndexSet(v110);
  v178 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v112, v105, v111, v113);

  v195.range._topLeft = objc_msgSend_tableUID(v12, v114, v115, v116, v117);
  v195.range._bottomRight = v118;
  v122 = sub_2212C4930(&v195, 0x64, v119, v120, v121);
  v124 = v123;
  v125 = [TSTColumnRowUIDMap alloc];
  v130 = objc_msgSend_columnRowUIDMap(v13, v126, v127, v128, v129);
  v135 = v130;
  if (v130)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v130, v131, v181, v133, v134);
  }

  else
  {
    memset(&v195, 0, 24);
  }

  v136 = objc_msgSend_columnRowUIDMap(v13, v131, v132, v133, v134);
  v140 = v136;
  if (v136)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v136, v137, v180, v138, v139);
  }

  else
  {
    v192.origin = 0;
    v192.size = 0;
    v193 = 0;
  }

  v141 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v125, v137, v11, &v195, &v192);
  if (v192.origin)
  {
    v192.size = v192.origin;
    operator delete(*&v192.origin);
  }

  if (v195.range._topLeft)
  {
    v195.range._bottomRight = v195.range._topLeft;
    operator delete(*&v195.range._topLeft);
  }

  v143 = objc_msgSend_initWithContext_tableUID_columnRowUIDMap_styles_stylePreset_tableInfo_(self, v142, v11, v122, v124, v141, v183, 0, 0);
  v147 = v143;
  if (v143)
  {
    *(v143 + 180) = 1;
    if (*(v143 + 272))
    {
      v148 = MEMORY[0x277D81150];
      v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", v145, v146);
      v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v151, v152);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v154, v149, v153, 1257, 0, "expected nil value for '%{public}s'", "_tableStylePreset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v155, v156, v157, v158);
    }

    v185[0] = MEMORY[0x277D85DD0];
    v185[1] = 3221225472;
    v185[2] = sub_22109E458;
    v185[3] = &unk_27845DD28;
    v186 = v147;
    v187 = v13;
    v191 = v175;
    v188 = v179;
    v189 = v178;
    v190 = v184;
    objc_msgSend_performBlockIgnoringModifications_(v186, v159, v185, v160, v161);
  }

  return v147;
}

- (void)dealloc
{
  objc_msgSend_dropAllTargets(self->_cellWillChangeDistributor, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSTTableModel;
  [(TSTTableModel *)&v6 dealloc];
}

- (void)p_upgradeDefaultCellStylesForStrokeSidecar
{
  v6 = objc_msgSend_bodyCellStyle(self, a2, v2, v3, v4);
  v7 = sub_22109E74C(v6, v6);

  v12 = objc_msgSend_headerColumnCellStyle(self, v8, v9, v10, v11);
  v13 = sub_22109E74C(v12, v12);

  v18 = objc_msgSend_headerRowCellStyle(self, v14, v15, v16, v17);
  v19 = sub_22109E74C(v18, v18);

  v24 = objc_msgSend_footerRowCellStyle(self, v20, v21, v22, v23);
  v25 = sub_22109E74C(v24, v24);

  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v26, &unk_2834A1640, v27, v28);
}

- (void)resetForPivotingWithRowUids:(const void *)a3 columnUids:(const void *)a4 numberOfHeaderRows:(TSUModelRowIndex)a5 numberOfHeaderColumns:(TSUModelColumnIndex)a6
{
  objc_msgSend_willModify(self, a2, a3, a4, *&a5._row);
  objc_msgSend_replaceRowsWithUids_(self->_columnRowUIDMap, v11, a3, v12, v13);
  objc_msgSend_replaceColumnsWithUids_(self->_columnRowUIDMap, v14, a4, v15, v16);
  self->_numberOfHeaderRows = a5;
  self->_numberOfHeaderColumns = a6;
  objc_msgSend_clearAllMergeRanges(self->_mergeOwner, v17, v18, v19, v20);
  objc_msgSend_updateCalcEngineForTableSize(self, v21, v22, v23, v24);
  v29 = objc_msgSend_calcEngine(self, v25, v26, v27, v28);
  v62 = objc_msgSend_tableUID(self, v30, v31, v32, v33);
  v63 = v34;
  objc_msgSend_removeAllFormulasFromOwner_(v29, v34, &v62, v35, v36);

  v41 = objc_msgSend_calcEngine(self, v37, v38, v39, v40);
  v46 = objc_msgSend_conditionalStyleFormulaOwner(self, v42, v43, v44, v45);
  v62 = objc_msgSend_ownerUID(v46, v47, v48, v49, v50);
  v63 = v51;
  objc_msgSend_removeAllFormulasFromOwner_(v41, v51, &v62, v52, v53);

  objc_msgSend_resetAlmostEverything(self->_dataStore, v54, v55, v56, v57);
  objc_msgSend_resetAllColumnRowSizes(self->_dataStore, v58, v59, v60, v61);
}

- (void)updateMergesAndCellsAsPivotDataWithSourceModel:(id)a3
{
  v21 = a3;
  v8 = objc_msgSend_range(v21, v4, v5, v6, v7);
  v11 = objc_msgSend_regionFromRange_(TSTCellRegion, v9, v8, v9, v10);
  v16 = objc_msgSend_bodyRowRange(v21, v12, v13, v14, v15);
  v19 = objc_msgSend_regionFromRange_(TSTCellRegion, v17, v16, v17, v18);
  objc_msgSend_p_updateMergesAndCellsAsPivotDataWithSourceModel_sourceRegion_sourceBodyRegion_(self, v20, v21, v11, v19);
}

- (BOOL)hasUsefulPivotDataInSourceBodyTract:(id)a3
{
  v4 = a3;
  v9 = v4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v4)
  {
    v10 = objc_msgSend_columns(v4, v5, v6, v7, v8);
    v11 = TSUIndexSet::asNSIndexSet(v10);
    v16 = objc_msgSend_rows(v9, v12, v13, v14, v15);
    v17 = TSUIndexSet::asNSIndexSet(v16);
    v20 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v18, v11, v17, v19);
  }

  else
  {
    v21 = objc_msgSend_bodyRowRange(self, v5, v6, v7, v8);
    v20 = objc_msgSend_regionFromRange_(TSTCellRegion, v22, v21, v22, v23);
  }

  v24 = [TSTCellIterator alloc];
  v29 = objc_msgSend_range(self, v25, v26, v27, v28);
  v31 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_baseClampingRange_(v24, v30, self, v20, 34, 0x2000000, v29, v30);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22109EBF4;
  v37[3] = &unk_27845DD70;
  v37[4] = &v38;
  objc_msgSend_iterateCellsUsingBlock_(v31, v32, v37, v33, v34);
  v35 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  return v35;
}

- (void)copyPivotDetailDataFromSourceModel:(id)a3 inSourceRegion:(id)a4 columnMapping:(id)a5 rowMapping:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = v13;
  v52 = v10;
  if (!v12)
  {
    v19 = 0;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v19 = objc_msgSend_isIdentityMapping(v12, v14, v15, v16, v17, v10) ^ 1;
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = objc_msgSend_isIdentityMapping(v18, v14, v15, v16, v17, v52) ^ 1;
LABEL_6:
  v21 = [TSTCellMap alloc];
  v26 = objc_msgSend_context(self, v22, v23, v24, v25);
  v29 = objc_msgSend_initWithContext_uidBased_(v21, v27, v26, 0, v28);

  v30 = [TSTConcurrentCellIterator alloc];
  v32 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_(v30, v31, v10, v11, 0, 66058240);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_22109EF40;
  v61[3] = &unk_27845DD98;
  v61[4] = self;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_22109EFBC;
  v56[3] = &unk_27845DDC0;
  v59 = v19;
  v33 = v12;
  v57 = v33;
  v60 = v20;
  v34 = v18;
  v58 = v34;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_22109F0E0;
  v54[3] = &unk_27845DDE8;
  v35 = v29;
  v55 = v35;
  objc_msgSend_enumerateModelConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v32, v36, v61, v56, v54);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_22109F200;
  v53[3] = &unk_27845DE10;
  v53[4] = self;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(v35, v37, v53, v38, v39);
  v44 = objc_msgSend_calcEngine(self, v40, v41, v42, v43);
  v49 = objc_msgSend_tableUID(self, v45, v46, v47, v48);
  objc_msgSend_markOwnerAsDirty_(v44, v50, v49, v50, v51);
}

+ (int64_t)dateGroupingTypeForMinMaxDatePair:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_first(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_second(v3, v9, v10, v11, v12);
  objc_msgSend_timeIntervalSinceDate_(v13, v14, v8, v15, v16);
  v22 = vcvtmd_s64_f64(v21 / 86400.0);
  if (v22 <= 365)
  {
    if (v22 <= 31)
    {
      if (v22 >= 28)
      {
        v24 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v17, v18, v19, v20);
        v27 = objc_msgSend_components_fromDate_(v24, v25, 28, v8, v26);

        v32 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v28, v29, v30, v31);
        v35 = objc_msgSend_components_fromDate_(v32, v33, 28, v13, v34);

        v40 = objc_msgSend_month(v27, v36, v37, v38, v39);
        if (v40 == objc_msgSend_month(v35, v41, v42, v43, v44) || (v49 = objc_msgSend_day(v27, v45, v46, v47, v48), v49 >= objc_msgSend_day(v35, v50, v51, v52, v53)))
        {
          v23 = 4;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 4;
      }
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (unsigned)pivotDataCellValueTypeForColumn:(TSUModelColumnIndex)a3
{
  begin = self->_pivotValueTypesByColumn.__begin_;
  if ((self->_pivotValueTypesByColumn.__end_ - begin) <= a3._column)
  {
    return 0;
  }

  else
  {
    return begin[a3._column];
  }
}

- (void)p_rebuildTheTable
{
  v3 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_context(self, v4, v5, v6, v7);
  if ((objc_msgSend_isReadCancelled(v8, v9, v10, v11, v12) & 1) == 0)
  {
    if (self->_numberOfHeaderRows._row >= 7)
    {
      self->_numberOfHeaderRows._row = 0;
    }

    if (self->_numberOfFooterRows._row >= 7)
    {
      self->_numberOfFooterRows._row = 0;
    }

    if (self->_numberOfHeaderColumns._column >= 7u)
    {
      self->_numberOfHeaderColumns._column = 0;
    }

    if (!objc_msgSend_numberOfRows(self->_columnRowUIDMap, v13, v14, v15, v16))
    {
      objc_msgSend_insertNewRowsInIndexRange_(self->_columnRowUIDMap, v17, 0, self->_numberOfHeaderRows._row + self->_numberOfFooterRows._row + 1, v20);
    }

    if (!objc_msgSend_numberOfColumns(self->_columnRowUIDMap, v17, v18, v19, v20))
    {
      objc_msgSend_insertNewColumnsInIndexRange_(self->_columnRowUIDMap, v21, 0, (self->_numberOfHeaderColumns._column + 1), v24);
    }

    objc_msgSend_updateCalcEngineForTableSize(self, v21, v22, v23, v24);
    v25 = objc_alloc_init(MEMORY[0x277D80888]);
    v26 = objc_alloc(MEMORY[0x277D80878]);
    v30 = objc_msgSend_initWithDelegate_(v26, v27, v25, v28, v29);
    v34 = objc_msgSend_cellMapWithContext_(TSTCellMap, v31, v30, v32, v33);
    v97.origin = objc_msgSend_range(self, v35, v36, v37, v38);
    v97.size = v39;
    v40 = TSUCellRect::bottomRight(&v97);
    v97.origin = 0;
    v97.size = &v97;
    v98 = 0x3032000000;
    v99 = sub_22109F7B4;
    v100 = sub_22109F7C4;
    v45 = objc_msgSend_newCell(self, v41, v42, v43, v44);
    dataStore = self->_dataStore;
    v101 = v45;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = sub_22109F7CC;
    v94[3] = &unk_27845DE38;
    v96 = &v97;
    v94[4] = self;
    v47 = v34;
    v95 = v47;
    objc_msgSend_enumerateCellStoragesRowByRowToMaxID_withBlock_(dataStore, v48, v40, v94, v49);
    objc_msgSend_clearDataListIDs(v47, v50, v51, v52, v53);
    if ((objc_msgSend_isReadCancelled(v8, v54, v55, v56, v57) & 1) == 0)
    {
      v62 = objc_msgSend_calcEngine(self, v58, v59, v60, v61);
      v92 = objc_msgSend_tableUID(self, v63, v64, v65, v66);
      v93 = v67;
      objc_msgSend_removeAllFormulasFromOwner_(v62, v67, &v92, v68, v69);

      v74 = objc_msgSend_calcEngine(self, v70, v71, v72, v73);
      v79 = objc_msgSend_conditionalStyleFormulaOwner(self, v75, v76, v77, v78);
      v92 = objc_msgSend_ownerUID(v79, v80, v81, v82, v83);
      v93 = v84;
      objc_msgSend_removeAllFormulasFromOwner_(v74, v84, &v92, v85, v86);

      objc_msgSend_resetAlmostEverything(self->_dataStore, v87, v88, v89, v90);
      objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self, v91, v47, 0, 0);
    }

    _Block_object_dispose(&v97, 8);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)p_auditTilesForRowOverlapAndExtensionPastTableBoundsWithVersion:(unint64_t)a3
{
  v18.origin = objc_msgSend_range(self, a2, a3, v3, v4);
  v18.size = v7;
  if (TSUCellRect::numColumns(&v18) && TSUCellRect::numRows(&v18))
  {
    v8 = TSUCellRect::bottomRight(&v18);
    dataStore = self->_dataStore;
    v17 = 0;
    v12 = objc_msgSend_auditTilesForRowOverlapAndExtensionPastTableBounds_result_(dataStore, v10, v8, &v17, v11);
    v13 = v17;
    objc_msgSend_logTableTileAuditStatus_withVersion_(self, v14, v12, a3, v15);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)p_auditTableHealthUpgradingFromVersion:(unint64_t)a3
{
  if (objc_msgSend_p_auditTilesForRowOverlapAndExtensionPastTableBoundsWithVersion_(self, a2, a3, v3, v4) && (v10 = self->_dataStore, v26 = 0, objc_msgSend_auditDatalistDuplicationReturningResult_(v10, v6, &v26, v8, v9)))
  {
    dataStore = self->_dataStore;
    v25 = 0;
    hasUndercounts = objc_msgSend_auditColumnRowCellCountsReturningResult_hasUndercounts_(dataStore, v6, &v25, 0, v9);
  }

  else
  {
    hasUndercounts = 0;
  }

  v13 = objc_msgSend_context(self, v6, v7, v8, v9);
  Cancelled = objc_msgSend_isReadCancelled(v13, v14, v15, v16, v17);

  if (!(Cancelled & 1 | ((hasUndercounts & 1) == 0)))
  {
    v22 = self->_dataStore;
    v24 = 0;
    return objc_msgSend_confirmRefCountsReturningResult_(v22, v19, &v24, v20, v21);
  }

  return hasUndercounts;
}

- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)a3
{
  v660 = objc_msgSend_context(self, a2, a3, v3, v4);
  if ((objc_msgSend_isReadCancelled(v660, v6, v7, v8, v9) & 1) == 0)
  {
    objc_msgSend_setUpgrading_(self->_dataStore, v10, 1, v11, v12);
    v658 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
    if (!v658 && (objc_msgSend_isAPivotDataModel(self, v17, v18, v19, v20) & 1) == 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 2060, 0, "A tableModel with no tableInfo is only allowed for a pivot data model.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    objc_msgSend_loadAllLazyReferences(self->_dataStore, v17, v18, v19, v20);
    v36 = objc_msgSend_documentRoot(self, v32, v33, v34, v35);
    v659 = objc_msgSend_calculationEngine(v36, v37, v38, v39, v40);

    objc_msgSend_upgradeDataStoreCellStorageIfNeededWithTableUID_conditionalStyleOwner_fileFormatVersion_(self->_dataStore, v41, &self->_tableUID, self->_conditionalStyleFormulaOwner, a3);
    if (a3 - 0x4000100000000 <= 0x100000001)
    {
      objc_msgSend_repairStyleDatalistStylesheetIfNecessary(self->_dataStore, v42, v43, v44, v45);
    }

    if (objc_msgSend_isReadCancelled(v660, v42, v43, v44, v45))
    {
      goto LABEL_129;
    }

    if (UnsafePointer() > a3)
    {
      if ((objc_msgSend_p_auditTableHealthUpgradingFromVersion_(self, v46, a3, v48, v49) & 1) == 0)
      {
        objc_msgSend_p_rebuildTheTable(self, v50, v51, v52, v53);
      }

      if ((objc_msgSend_shouldUseWideRows(self->_dataStore, v50, v51, v52, v53) & 1) == 0 && objc_msgSend_tableSizeClass(self, v46, v47, v48, v49) >= 2)
      {
        objc_msgSend_setShouldUseWideRows_(self->_dataStore, v46, 1, v48, v49);
      }
    }

    if (objc_msgSend_isReadCancelled(v660, v46, v47, v48, v49))
    {
      goto LABEL_129;
    }

    if (!self->_strokeSidecar)
    {
      objc_msgSend_willModifyForUpgrade(self, v54, v55, v56, v57);
      objc_msgSend_p_upgradeDefaultCellStylesForStrokeSidecar(self, v73, v74, v75, v76);
      if (v658)
      {
        if ((objc_msgSend_isCategorized(v658, v54, v55, v56, v57) & 1) == 0)
        {
          v77 = [TSTStrokeSidecar alloc];
          v81 = objc_msgSend_initForUpgradeWithTableModel_(v77, v78, self, v79, v80);
          strokeSidecar = self->_strokeSidecar;
          self->_strokeSidecar = v81;
        }
      }
    }

    v694 = 0;
    v695 = &v694;
    v696 = 0x2020000000;
    v697 = objc_msgSend_numberOfPopulatedCells(self, v54, v55, v56, v57);
    v62 = *MEMORY[0x277D80968];
    if (*MEMORY[0x277D80968] > a3)
    {
      objc_msgSend_willModifyForUpgrade(self, v58, v59, v60, v61);
      v67 = objc_msgSend_mergeOwner(self, v63, v64, v65, v66);
      v72 = v67;
      if (v67)
      {
        objc_msgSend_mergeRanges(v67, v68, v69, v70, v71);
      }

      else
      {
        memset(&__p, 0, 24);
      }

      v87 = objc_msgSend_hiddenStatesOwner(self, v83, v84, v85, v86);
      v92 = objc_msgSend_hiddenStates(v87, v88, v89, v90, v91);

      var0 = __p.var0;
      if (__p.var0 != __p.var1)
      {
        v97 = 0x277CCA000uLL;
        do
        {
          v99 = *var0;
          v98 = var0[1];
          if (v98 >> 33)
          {
            if (!v92)
            {
              v100 = MEMORY[0x277D81150];
              v101 = objc_msgSend_stringWithUTF8String_(*(v97 + 3240), v93, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v94, v95);
              v105 = objc_msgSend_stringWithUTF8String_(*(v97 + 3240), v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v103, v104);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v106, v101, v105, 2129, 0, "invalid nil value for '%{public}s'", "hiddenStates");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
              v97 = 0x277CCA000uLL;
            }

            v111 = objc_msgSend_indexesOfUserHiddenRowsInCellRange_(v92, v93, v99, v98, v95);
            v692[0] = MEMORY[0x277D85DD0];
            v692[1] = 3221225472;
            v692[2] = sub_2210A124C;
            v692[3] = &unk_27845DE60;
            v692[4] = self;
            v693 = v92;
            objc_msgSend_enumerateIndexesUsingBlock_(v111, v112, v692, v113, v114);
          }

          if ((v98 & 0xFFFFFFFE) != 0)
          {
            if (!v92)
            {
              v115 = MEMORY[0x277D81150];
              v116 = objc_msgSend_stringWithUTF8String_(*(v97 + 3240), v93, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v94, v95);
              v120 = objc_msgSend_stringWithUTF8String_(*(v97 + 3240), v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v118, v119);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v121, v116, v120, 2137, 0, "invalid nil value for '%{public}s'", "hiddenStates");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
              v97 = 0x277CCA000;
            }

            v126 = objc_msgSend_indexesOfUserHiddenColumnsInCellRange_(v92, v93, v99, v98, v95);
            v690[0] = MEMORY[0x277D85DD0];
            v690[1] = 3221225472;
            v690[2] = sub_2210A1294;
            v690[3] = &unk_27845DE60;
            v690[4] = self;
            v691 = v92;
            objc_msgSend_enumerateIndexesUsingBlock_(v126, v127, v690, v128, v129);
          }

          var0 += 2;
        }

        while (var0 != __p.var1);
      }

      if (__p.var0)
      {
        __p.var1 = __p.var0;
        operator delete(__p.var0);
      }
    }

    if (a3 < 0x2000100000004)
    {
      dataStore = self->_dataStore;
      __p.var0 = objc_msgSend_tableUID(self, v58, v59, v60, v61);
      __p.var1 = v131;
      objc_msgSend_upgradeConditionalStylesToLinkedRefWithTableUID_(dataStore, v131, &__p, v132, v133);
    }

    if (objc_msgSend_isReadCancelled(v660, v58, v59, v60, v61))
    {
LABEL_128:
      _Block_object_dispose(&v694, 8);
LABEL_129:

      goto LABEL_130;
    }

    if (*MEMORY[0x277D808D0] <= a3 || objc_msgSend_archivingCompatibilityVersion(self, v134, v135, v136, v137) <= 0xA000000000002)
    {
      objc_msgSend_purgePreBNCDatalists(self->_dataStore, v134, v135, v136, v137);
    }

    else
    {
      objc_msgSend_embiggenTableForUpgrade(self->_dataStore, v134, v135, v136, v137);
    }

    if (a3 < 0xC000200000008)
    {
      objc_msgSend_updateCommentsWhenAddingTable(self, v138, v139, v140, v141);
    }

    v680 = 0;
    v681 = &v680;
    v682 = 0x5812000000;
    v683 = sub_2210A12DC;
    v684 = sub_2210A12E8;
    v685 = &unk_22188E88F;
    v689[0] = 0;
    v689[1] = 0;
    v686 = 0;
    v687 = 0;
    v688 = v689;
    if (a3 >= 0xF000000000001)
    {
      goto LABEL_108;
    }

    objc_msgSend_willModifyForUpgrade(self, v138, v139, v140, v141);
    v146 = objc_msgSend_documentRoot(self, v142, v143, v144, v145);
    v151 = objc_msgSend_stylesheet(v146, v147, v148, v149, v150);

    v156 = objc_msgSend_range(self, v152, v153, v154, v155);
    v159 = objc_msgSend_regionFromRange_(TSTCellRegion, v157, v156, v157, v158);
    v160 = v159;
    if (!v159)
    {
LABEL_72:

      if (a3 <= 0x300020000000ALL)
      {
        if (!self->_categoryLevel1CellStyle || !self->_categoryLevel2CellStyle || !self->_categoryLevel3CellStyle || !self->_categoryLevel4CellStyle || !self->_categoryLevel5CellStyle || !self->_labelLevel1CellStyle || !self->_labelLevel2CellStyle || !self->_labelLevel3CellStyle || !self->_labelLevel4CellStyle || !self->_labelLevel5CellStyle || !self->_categoryLevel1TextStyle || !self->_categoryLevel2TextStyle || !self->_categoryLevel3TextStyle || !self->_categoryLevel4TextStyle || !self->_categoryLevel5TextStyle || !self->_labelLevel1TextStyle || !self->_labelLevel2TextStyle || !self->_labelLevel3TextStyle || !self->_labelLevel4TextStyle || !self->_labelLevel5TextStyle)
        {
          objc_msgSend_willModifyForUpgrade(self, v138, v139, v140, v141);
          v423 = objc_msgSend_tableStylePreset(self, v419, v420, v421, v422);
          v428 = objc_msgSend_styleNetwork(v423, v424, v425, v426, v427);

          if (!v428)
          {
            v428 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v429, self, v431, v432);
            objc_msgSend_generateCategoryStylesConnectedToStylesheet_(v428, v433, 1, v434, v435);
          }

          v436 = objc_msgSend_categoryLevel1CellStyle(v428, v429, v430, v431, v432);
          categoryLevel1CellStyle = self->_categoryLevel1CellStyle;
          self->_categoryLevel1CellStyle = v436;

          v442 = objc_msgSend_categoryLevel2CellStyle(v428, v438, v439, v440, v441);
          categoryLevel2CellStyle = self->_categoryLevel2CellStyle;
          self->_categoryLevel2CellStyle = v442;

          v448 = objc_msgSend_categoryLevel3CellStyle(v428, v444, v445, v446, v447);
          categoryLevel3CellStyle = self->_categoryLevel3CellStyle;
          self->_categoryLevel3CellStyle = v448;

          v454 = objc_msgSend_categoryLevel4CellStyle(v428, v450, v451, v452, v453);
          categoryLevel4CellStyle = self->_categoryLevel4CellStyle;
          self->_categoryLevel4CellStyle = v454;

          v460 = objc_msgSend_categoryLevel5CellStyle(v428, v456, v457, v458, v459);
          categoryLevel5CellStyle = self->_categoryLevel5CellStyle;
          self->_categoryLevel5CellStyle = v460;

          v466 = objc_msgSend_labelLevel1CellStyle(v428, v462, v463, v464, v465);
          labelLevel1CellStyle = self->_labelLevel1CellStyle;
          self->_labelLevel1CellStyle = v466;

          v472 = objc_msgSend_labelLevel2CellStyle(v428, v468, v469, v470, v471);
          labelLevel2CellStyle = self->_labelLevel2CellStyle;
          self->_labelLevel2CellStyle = v472;

          v478 = objc_msgSend_labelLevel3CellStyle(v428, v474, v475, v476, v477);
          labelLevel3CellStyle = self->_labelLevel3CellStyle;
          self->_labelLevel3CellStyle = v478;

          v484 = objc_msgSend_labelLevel4CellStyle(v428, v480, v481, v482, v483);
          labelLevel4CellStyle = self->_labelLevel4CellStyle;
          self->_labelLevel4CellStyle = v484;

          v490 = objc_msgSend_labelLevel5CellStyle(v428, v486, v487, v488, v489);
          labelLevel5CellStyle = self->_labelLevel5CellStyle;
          self->_labelLevel5CellStyle = v490;

          v496 = objc_msgSend_categoryLevel1TextStyle(v428, v492, v493, v494, v495);
          categoryLevel1TextStyle = self->_categoryLevel1TextStyle;
          self->_categoryLevel1TextStyle = v496;

          v502 = objc_msgSend_categoryLevel2TextStyle(v428, v498, v499, v500, v501);
          categoryLevel2TextStyle = self->_categoryLevel2TextStyle;
          self->_categoryLevel2TextStyle = v502;

          v508 = objc_msgSend_categoryLevel3TextStyle(v428, v504, v505, v506, v507);
          categoryLevel3TextStyle = self->_categoryLevel3TextStyle;
          self->_categoryLevel3TextStyle = v508;

          v514 = objc_msgSend_categoryLevel4TextStyle(v428, v510, v511, v512, v513);
          categoryLevel4TextStyle = self->_categoryLevel4TextStyle;
          self->_categoryLevel4TextStyle = v514;

          v520 = objc_msgSend_categoryLevel5TextStyle(v428, v516, v517, v518, v519);
          categoryLevel5TextStyle = self->_categoryLevel5TextStyle;
          self->_categoryLevel5TextStyle = v520;

          v526 = objc_msgSend_labelLevel1TextStyle(v428, v522, v523, v524, v525);
          labelLevel1TextStyle = self->_labelLevel1TextStyle;
          self->_labelLevel1TextStyle = v526;

          v532 = objc_msgSend_labelLevel2TextStyle(v428, v528, v529, v530, v531);
          labelLevel2TextStyle = self->_labelLevel2TextStyle;
          self->_labelLevel2TextStyle = v532;

          v538 = objc_msgSend_labelLevel3TextStyle(v428, v534, v535, v536, v537);
          labelLevel3TextStyle = self->_labelLevel3TextStyle;
          self->_labelLevel3TextStyle = v538;

          v544 = objc_msgSend_labelLevel4TextStyle(v428, v540, v541, v542, v543);
          labelLevel4TextStyle = self->_labelLevel4TextStyle;
          self->_labelLevel4TextStyle = v544;

          v550 = objc_msgSend_labelLevel5TextStyle(v428, v546, v547, v548, v549);
          labelLevel5TextStyle = self->_labelLevel5TextStyle;
          self->_labelLevel5TextStyle = v550;
        }

LABEL_105:
        v578 = objc_msgSend_groupBy(v658, v138, v139, v140, v141);
        objc_msgSend_upgradeForNewAggregateTypes_(v578, v579, v659, v580, v581);

        v586 = objc_msgSend_tableStylePreset(self, v582, v583, v584, v585);
        v591 = objc_msgSend_styleNetwork(v586, v587, v588, v589, v590);

        if (!v591)
        {
          v591 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v592, self, v594, v595);
          objc_msgSend_generatePivotStylesConnectedToStylesheet_(v591, v596, 1, v597, v598);
        }

        v599 = objc_msgSend_pivotBodySummaryRowCellStyle(v591, v592, v593, v594, v595);
        pivotBodySummaryRowCellStyle = self->_pivotBodySummaryRowCellStyle;
        self->_pivotBodySummaryRowCellStyle = v599;

        v605 = objc_msgSend_pivotBodySummaryColumnCellStyle(v591, v601, v602, v603, v604);
        pivotBodySummaryColumnCellStyle = self->_pivotBodySummaryColumnCellStyle;
        self->_pivotBodySummaryColumnCellStyle = v605;

        v611 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v591, v607, v608, v609, v610);
        pivotHeaderColumnSummaryCellStyle = self->_pivotHeaderColumnSummaryCellStyle;
        self->_pivotHeaderColumnSummaryCellStyle = v611;

        goto LABEL_108;
      }

      if (a3 <= 0x4000000000000)
      {
        v552 = objc_msgSend_documentRoot(self, v138, v139, v140, v141);
        v557 = objc_msgSend_stylesheet(v552, v553, v554, v555, v556);

        for (i = 5; i != 15; ++i)
        {
          v562 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v558, i, v559, v560);
          v567 = objc_msgSend_stylesheet(v562, v563, v564, v565, v566);

          if (!v567)
          {
            objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(v557, v568, v562, 0, 0, 0);
          }

          v571 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v568, i, v569, v570);
          v576 = objc_msgSend_stylesheet(v571, v572, v573, v574, v575);

          if (!v576)
          {
            objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(v557, v577, v571, 0, 0, 0);
          }
        }
      }

      if (a3 < 0xB000200000006)
      {
        goto LABEL_105;
      }

LABEL_108:
      if (v658)
      {
        v613 = objc_msgSend_isAPivotTable(v658, v138, v139, v140, v141) ^ 1;
        if (a3 <= 0xB000200000005)
        {
          LOBYTE(v613) = 1;
        }

        if ((v613 & 1) == 0)
        {
          if (a3 < 0xB000200000008)
          {
            v614 = objc_msgSend_pivotOwner(v658, v138, v139, v140, v141);
            objc_msgSend_upgradeSourceTractsForHostCellChange(v614, v615, v616, v617, v618);
LABEL_121:

            goto LABEL_123;
          }

          if (a3 <= 0xC0000FFFFFFFFLL)
          {
            v614 = objc_msgSend_pivotOwner(v658, v138, v139, v140, v141);
            objc_msgSend_upgradeSourceTractsForAbsoluteRefs(v614, v625, v626, v627, v628);
            goto LABEL_121;
          }

LABEL_122:
          if (a3 > 0xD0001FFFFFFFFLL)
          {
            if (a3 >= 0xE000400000001)
            {
              goto LABEL_125;
            }

            goto LABEL_124;
          }

LABEL_123:
          v629 = objc_msgSend_categoryOwner(self, v138, v139, v140, v141);
          objc_msgSend_rebuildAllAggFormulas(v629, v630, v631, v632, v633);

LABEL_124:
          objc_msgSend_markAllErrorsAsDirty(v659, v138, v139, v140, v141);
          v634 = v681;
          __p.var0 = objc_msgSend_tableUID(self, v635, v636, v637, v638);
          __p.var1 = v639;
          objc_msgSend_markCoordsDirty_inOwner_(v659, v639, (v634 + 6), &__p, v640);
LABEL_125:
          v641 = objc_msgSend_numberOfPopulatedCells(self, v138, v139, v140, v141);
          if (v641 != v695[3])
          {
            v645 = MEMORY[0x277D81150];
            v646 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v642, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v643, v644);
            v650 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v647, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v648, v649);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v645, v651, v646, v650, 2859, 0, "Expected to keep all the cells.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v652, v653, v654, v655);
          }

          objc_msgSend_setUpgrading_(self->_dataStore, v642, 0, v643, v644);
          _Block_object_dispose(&v680, 8);
          sub_22107C860(&v688, v689[0]);
          goto LABEL_128;
        }
      }

      if (a3 >= 0x4000200000002)
      {
        if (a3 >= 0xA000000000006)
        {
          goto LABEL_122;
        }
      }

      else
      {
        objc_msgSend_updateCalcEngineForTableSize(self, v138, v139, v140, v141);
        objc_msgSend_scheduleRepairingSpanningFormulasInOwner_(v659, v619, &self->_tableUID, v620, v621);
      }

      if (objc_msgSend_tableSizeClass(self, v138, v139, v140, v141) >= 2)
      {
        __p.var0 = objc_msgSend_tableUID(self, v138, v139, v140, v141);
        __p.var1 = v622;
        objc_msgSend_endTrackingNamesInTableForLegacyNRM_(v659, v622, &__p, v623, v624);
      }

      goto LABEL_123;
    }

    v656 = v151;
    v657 = v159;
    v161 = [TSCEFunctionsInUse alloc];
    v165 = objc_msgSend_initWithCalcEngine_(v161, v162, v659, v163, v164);
    v679[0] = 0;
    v679[1] = 0;
    v676 = 0;
    v677 = 0;
    v678 = v679;
    v674.coordinate = 0;
    v674._tableUID._lower = objc_msgSend_tableUID(self, v166, v167, v168, v169);
    v674._tableUID._upper = v170;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&__p, v659, &v674);
    v175 = 688128;
    if (v62 <= a3)
    {
      v175 = 0x20000;
    }

    if (a3 < 0x2000200000003)
    {
      v175 = 66041856;
    }

    v176 = 4341760;
    if (a3 >= 0x4000100000003)
    {
      v176 = 0x4000;
    }

    v177 = v175 | v176;
    if (a3 < 0xA000000000003)
    {
      v178 = objc_msgSend_headerNameMgr(v659, v171, v172, v173, v174);
      v674.coordinate = objc_msgSend_NRM_formulaOwnerUID(v178, v179, v180, v181, v182);
      v674._tableUID._lower = v183;
      objc_msgSend_removeAllFormulasFromOwner_(v659, v183, &v674, v184, v185);
      v177 |= 0x22000uLL;
    }

    if (a3 < 0x4000200000001)
    {
      v177 |= 0x8000uLL;
    }

    v186 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v171, v172, v173, v174);
    v191 = objc_msgSend_supportsControlCells(v186, v187, v188, v189, v190);

    objc_msgSend_registerOwners(v659, v192, v193, v194, v195);
    v666[0] = MEMORY[0x277D85DD0];
    v666[1] = 3221225472;
    v666[2] = sub_2210A12F4;
    v666[3] = &unk_27845DEB0;
    v671 = a3;
    v666[4] = self;
    v673 = v191;
    v667 = v151;
    v672 = 0xF000000000001;
    v196 = v165;
    v668 = v196;
    v670 = &v680;
    v669 = v659;
    v197 = MEMORY[0x223DA1C10](v666);
    v198 = [TSTConcurrentCellMap alloc];
    v200 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v198, v199, 0, 1, 0);
    v201 = [TSTConcurrentCellIterator alloc];
    v203 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_(v201, v202, self, v657, 2, v177 | 0x20000);
    v665[0] = MEMORY[0x277D85DD0];
    v665[1] = 3221225472;
    v665[2] = sub_2210A1C50;
    v665[3] = &unk_27845DED8;
    v665[4] = self;
    v662[0] = MEMORY[0x277D85DD0];
    v662[1] = 3221225472;
    v662[2] = sub_2210A1CD8;
    v662[3] = &unk_27845DF00;
    v204 = v200;
    v663 = v204;
    v664 = &v694;
    objc_msgSend_enumerateModelConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v203, v205, v665, v197, v662);
    if (objc_msgSend_hasCells(v204, v206, v207, v208, v209))
    {
      objc_msgSend_willApplyToTableModel_(v204, v210, self, v211, v212);
      objc_msgSend_prepareToApplyConcurrentCellMap_(self, v213, v204, v214, v215);
      objc_msgSend_accumulateCurrentCellsConcurrently_(self, v216, v204, v217, v218);
      objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v219, v204, 0, 0, 0);
      objc_msgSend_didApplyConcurrentCellMap_(self, v220, v204, v221, v222);
      objc_msgSend_validate(self, v223, v224, v225, v226);
    }

    if (a3 >= 0x2000100000007)
    {
      if (a3 > 0x20003FFFFFFFFLL)
      {
        if (a3 >= 0x4000100000005)
        {
          if (a3 > 0xA000100000004)
          {
            if (a3 >= 0xC000200000000)
            {
              if (a3 > 0xD000100000000)
              {
                if (a3 >= 0xE000400000001)
                {
                  goto LABEL_71;
                }

LABEL_67:
                objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 337, v228, v229);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v320, 339, v321, v322);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v323, 340, v324, v325);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v326, 338, v327, v328);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v329, 341, v330, v331);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v332, 342, v333, v334);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v335, 343, v336, v337);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v338, 344, v339, v340);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v341, 345, v342, v343);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v344, 346, v345, v346);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v347, 347, v348, v349);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v350, 348, v351, v352);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v353, 349, v354, v355);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v356, 350, v357, v358);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v359, 351, v360, v361);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v362, 352, v363, v364);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v365, 353, v366, v367);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v368, 354, v369, v370);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v371, 355, v372, v373);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v374, 356, v375, v376);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v377, 357, v378, v379);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v380, 358, v381, v382);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v383, 359, v384, v385);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v386, 360, v387, v388);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v389, 361, v390, v391);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v392, 362, v393, v394);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v395, 373, v396, v397);
                if (a3 > 0xE000100000000)
                {
                  if (a3 > 0xE000200000001)
                  {
LABEL_71:
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 179, v228, v229);
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v401, 180, v402, v403);
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v404, 181, v405, v406);
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v407, 182, v408, v409);
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v410, 183, v411, v412);
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v413, 184, v414, v415);
                    objc_msgSend_dirtyCellsUsingFunction_(v196, v416, 204, v417, v418);
                    sub_22107C860(&v678, v679[0]);

                    v151 = v656;
                    v160 = v657;
                    goto LABEL_72;
                  }
                }

                else
                {
                  objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 6, v228, v229);
                }

                objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 23, v228, v229);
                objc_msgSend_dirtyCellsUsingFunction_(v196, v398, 130, v399, v400);
                goto LABEL_71;
              }

LABEL_66:
              objc_msgSend_resetCellsUsingFunction_(v196, v227, 285, v228, v229);
              goto LABEL_67;
            }

LABEL_65:
            objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 328, v228, v229);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v296, 329, v297, v298);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v299, 330, v300, v301);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v302, 331, v303, v304);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v305, 332, v306, v307);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v308, 333, v309, v310);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v311, 334, v312, v313);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v314, 335, v315, v316);
            objc_msgSend_dirtyCellsUsingFunction_(v196, v317, 336, v318, v319);
            goto LABEL_66;
          }

LABEL_64:
          objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 323, v228, v229);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v242, 313, v243, v244);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v245, 306, v246, v247);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v248, 304, v249, v250);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v251, 305, v252, v253);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v254, 309, v255, v256);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v257, 310, v258, v259);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v260, 316, v261, v262);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v263, 311, v264, v265);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v266, 314, v267, v268);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v269, 315, v270, v271);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v272, 312, v273, v274);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v275, 317, v276, v277);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v278, 321, v279, v280);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v281, 324, v282, v283);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v284, 322, v285, v286);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v287, 320, v288, v289);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v290, 318, v291, v292);
          objc_msgSend_dirtyCellsUsingFunction_(v196, v293, 319, v294, v295);
          goto LABEL_65;
        }

LABEL_63:
        objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 81, v228, v229);
        objc_msgSend_dirtyCellsUsingFunction_(v196, v236, 59, v237, v238);
        objc_msgSend_dirtyCellsUsingFunction_(v196, v239, 165, v240, v241);
        goto LABEL_64;
      }
    }

    else
    {
      objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 126, v228, v229);
    }

    objc_msgSend_dirtyCellsUsingFunction_(v196, v227, 255, v228, v229);
    objc_msgSend_dirtyCellsUsingFunction_(v196, v230, 116, v231, v232);
    objc_msgSend_dirtyCellsUsingFunction_(v196, v233, 92, v234, v235);
    goto LABEL_63;
  }

LABEL_130:
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_msgSend_fileFormatVersion(v4, v5, v6, v7, v8) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v9, v10, v11, v12);
  }

  v13 = v4;
  google::protobuf::internal::AssignDescriptors();
  v17 = objc_msgSend_messageWithDescriptor_(v13, v14, off_2812E4498[84], v15, v16);

  self->_lastArchivedAppVersion = objc_msgSend_fileFormatVersion(v13, v18, v19, v20, v21);
  self->_archivingCompatibilityVersion = objc_msgSend_messageVersion(v13, v22, v23, v24, v25);
  v26 = [TSTTableDataStore alloc];
  if (*(v17 + 120))
  {
    v28 = objc_msgSend_initWithArchive_unarchiver_owner_(v26, v27, *(v17 + 120), v13, self);
  }

  else
  {
    v28 = objc_msgSend_initWithArchive_unarchiver_owner_(v26, v27, &TST::_DataStore_default_instance_, v13, self);
  }

  dataStore = self->_dataStore;
  self->_dataStore = v28;

  v470 = v17;
  v30 = *(v17 + 112);
  v517[0] = MEMORY[0x277D85DD0];
  v517[1] = 3221225472;
  v517[2] = sub_2210A41EC;
  v517[3] = &unk_27845DF28;
  v469 = self;
  v517[4] = self;
  v31 = v13;
  v32 = v517;
  v34 = objc_opt_class();
  v35 = MEMORY[0x277D80A18];
  if (v30)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v31, v33, v30, v34, 0, v32);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v31, v33, MEMORY[0x277D80A18], v34, 0, v32);
  }

  v36 = *(v470 + 136);
  v516[0] = MEMORY[0x277D85DD0];
  v516[1] = 3221225472;
  v516[2] = sub_2210A4200;
  v516[3] = &unk_27845DF50;
  v516[4] = v469;
  v37 = v31;
  v38 = v516;
  v40 = objc_opt_class();
  if (v36)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v36, v40, 0, v38);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v35, v40, 0, v38);
  }

  v41 = *(v470 + 144);
  v515[0] = MEMORY[0x277D85DD0];
  v515[1] = 3221225472;
  v515[2] = sub_2210A4214;
  v515[3] = &unk_27845DF50;
  v515[4] = v469;
  v42 = v37;
  v43 = v515;
  v45 = objc_opt_class();
  if (v41)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v41, v45, 0, v43);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v35, v45, 0, v43);
  }

  v46 = *(v470 + 152);
  v514[0] = MEMORY[0x277D85DD0];
  v514[1] = 3221225472;
  v514[2] = sub_2210A4228;
  v514[3] = &unk_27845DF50;
  v514[4] = v469;
  v47 = v42;
  v48 = v514;
  v50 = objc_opt_class();
  if (v46)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v49, v46, v50, 0, v48);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v49, v35, v50, 0, v48);
  }

  v51 = *(v470 + 160);
  v513[0] = MEMORY[0x277D85DD0];
  v513[1] = 3221225472;
  v513[2] = sub_2210A423C;
  v513[3] = &unk_27845DF50;
  v513[4] = v469;
  v52 = v47;
  v53 = v513;
  v55 = objc_opt_class();
  if (v51)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v52, v54, v51, v55, 0, v53);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v52, v54, v35, v55, 0, v53);
  }

  v56 = *(v470 + 16);
  if ((v56 & 0x20000000) != 0)
  {
    v57 = *(v470 + 312);
    v512[0] = MEMORY[0x277D85DD0];
    v512[1] = 3221225472;
    v512[2] = sub_2210A4250;
    v512[3] = &unk_27845DF50;
    v512[4] = v469;
    v58 = v52;
    v59 = v512;
    v60 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v58, v61, v57, v60, 0, v59);

    v56 = *(v470 + 16);
  }

  if ((v56 & 0x40000000) != 0)
  {
    v62 = *(v470 + 320);
    v511[0] = MEMORY[0x277D85DD0];
    v511[1] = 3221225472;
    v511[2] = sub_2210A4264;
    v511[3] = &unk_27845DF50;
    v511[4] = v469;
    v63 = v52;
    v64 = v511;
    v65 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v63, v66, v62, v65, 0, v64);

    v56 = *(v470 + 16);
  }

  if (v56 < 0)
  {
    v67 = *(v470 + 328);
    v510[0] = MEMORY[0x277D85DD0];
    v510[1] = 3221225472;
    v510[2] = sub_2210A4278;
    v510[3] = &unk_27845DF50;
    v510[4] = v469;
    v68 = v52;
    v69 = v510;
    v70 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v68, v71, v67, v70, 0, v69);
  }

  v72 = *(v470 + 20);
  if (v72)
  {
    v73 = *(v470 + 336);
    v509[0] = MEMORY[0x277D85DD0];
    v509[1] = 3221225472;
    v509[2] = sub_2210A428C;
    v509[3] = &unk_27845DF50;
    v509[4] = v469;
    v74 = v52;
    v75 = v509;
    v76 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v74, v77, v73, v76, 0, v75);

    v72 = *(v470 + 20);
  }

  if ((v72 & 2) != 0)
  {
    v78 = *(v470 + 344);
    v508[0] = MEMORY[0x277D85DD0];
    v508[1] = 3221225472;
    v508[2] = sub_2210A42A0;
    v508[3] = &unk_27845DF50;
    v508[4] = v469;
    v79 = v52;
    v80 = v508;
    v81 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v79, v82, v78, v81, 0, v80);

    v72 = *(v470 + 20);
  }

  if ((v72 & 0x100) != 0)
  {
    v83 = *(v470 + 400);
    v507[0] = MEMORY[0x277D85DD0];
    v507[1] = 3221225472;
    v507[2] = sub_2210A42B4;
    v507[3] = &unk_27845DF50;
    v507[4] = v469;
    v84 = v52;
    v85 = v507;
    v86 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v84, v87, v83, v86, 0, v85);

    v72 = *(v470 + 20);
  }

  if ((v72 & 0x200) != 0)
  {
    v88 = *(v470 + 408);
    v506[0] = MEMORY[0x277D85DD0];
    v506[1] = 3221225472;
    v506[2] = sub_2210A42C8;
    v506[3] = &unk_27845DF50;
    v506[4] = v469;
    v89 = v52;
    v90 = v506;
    v91 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v89, v92, v88, v91, 0, v90);

    v72 = *(v470 + 20);
  }

  if ((v72 & 0x400) != 0)
  {
    v93 = *(v470 + 416);
    v505[0] = MEMORY[0x277D85DD0];
    v505[1] = 3221225472;
    v505[2] = sub_2210A42DC;
    v505[3] = &unk_27845DF50;
    v505[4] = v469;
    v94 = v52;
    v95 = v505;
    v96 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v94, v97, v93, v96, 0, v95);

    v72 = *(v470 + 20);
  }

  if ((v72 & 0x800) != 0)
  {
    v98 = *(v470 + 424);
    v504[0] = MEMORY[0x277D85DD0];
    v504[1] = 3221225472;
    v504[2] = sub_2210A42F0;
    v504[3] = &unk_27845DF50;
    v504[4] = v469;
    v99 = v52;
    v100 = v504;
    v101 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v99, v102, v98, v101, 0, v100);

    v72 = *(v470 + 20);
  }

  if ((v72 & 0x1000) != 0)
  {
    v103 = *(v470 + 432);
    v503[0] = MEMORY[0x277D85DD0];
    v503[1] = 3221225472;
    v503[2] = sub_2210A4304;
    v503[3] = &unk_27845DF50;
    v503[4] = v469;
    v104 = v52;
    v105 = v503;
    v106 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v104, v107, v103, v106, 0, v105);
  }

  v108 = *(v470 + 176);
  v502[0] = MEMORY[0x277D85DD0];
  v502[1] = 3221225472;
  v502[2] = sub_2210A4318;
  v502[3] = &unk_27845DF78;
  v502[4] = v469;
  v109 = v52;
  v110 = v502;
  v112 = objc_opt_class();
  if (v108)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v109, v111, v108, v112, 0, v110);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v109, v111, v35, v112, 0, v110);
  }

  v113 = *(v470 + 184);
  v501[0] = MEMORY[0x277D85DD0];
  v501[1] = 3221225472;
  v501[2] = sub_2210A432C;
  v501[3] = &unk_27845DF78;
  v501[4] = v469;
  v114 = v109;
  v115 = v501;
  v117 = objc_opt_class();
  if (v113)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v114, v116, v113, v117, 0, v115);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v114, v116, v35, v117, 0, v115);
  }

  v118 = *(v470 + 192);
  v500[0] = MEMORY[0x277D85DD0];
  v500[1] = 3221225472;
  v500[2] = sub_2210A4340;
  v500[3] = &unk_27845DF78;
  v500[4] = v469;
  v119 = v114;
  v120 = v500;
  v122 = objc_opt_class();
  if (v118)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v119, v121, v118, v122, 0, v120);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v119, v121, v35, v122, 0, v120);
  }

  v123 = *(v470 + 200);
  v499[0] = MEMORY[0x277D85DD0];
  v499[1] = 3221225472;
  v499[2] = sub_2210A4354;
  v499[3] = &unk_27845DF78;
  v499[4] = v469;
  v124 = v119;
  v125 = v499;
  v127 = objc_opt_class();
  if (v123)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v124, v126, v123, v127, 0, v125);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v124, v126, v35, v127, 0, v125);
  }

  v131 = *(v470 + 20);
  v132 = v124;
  if ((v131 & 4) != 0)
  {
    v133 = *(v470 + 352);
    v498[0] = MEMORY[0x277D85DD0];
    v498[1] = 3221225472;
    v498[2] = sub_2210A4368;
    v498[3] = &unk_27845DF78;
    v498[4] = v469;
    v134 = v132;
    v135 = v498;
    v136 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v134, v137, v133, v136, 0, v135);

    v131 = *(v470 + 20);
  }

  if ((v131 & 8) != 0)
  {
    v138 = *(v470 + 360);
    v497[0] = MEMORY[0x277D85DD0];
    v497[1] = 3221225472;
    v497[2] = sub_2210A437C;
    v497[3] = &unk_27845DF78;
    v497[4] = v469;
    v139 = v132;
    v140 = v497;
    v141 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v139, v142, v138, v141, 0, v140);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x10) != 0)
  {
    v143 = *(v470 + 368);
    v496[0] = MEMORY[0x277D85DD0];
    v496[1] = 3221225472;
    v496[2] = sub_2210A4390;
    v496[3] = &unk_27845DF78;
    v496[4] = v469;
    v144 = v132;
    v145 = v496;
    v146 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v144, v147, v143, v146, 0, v145);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x20) != 0)
  {
    v148 = *(v470 + 376);
    v495[0] = MEMORY[0x277D85DD0];
    v495[1] = 3221225472;
    v495[2] = sub_2210A43A4;
    v495[3] = &unk_27845DF78;
    v495[4] = v469;
    v149 = v132;
    v150 = v495;
    v151 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v149, v152, v148, v151, 0, v150);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x40) != 0)
  {
    v153 = *(v470 + 384);
    v494[0] = MEMORY[0x277D85DD0];
    v494[1] = 3221225472;
    v494[2] = sub_2210A43B8;
    v494[3] = &unk_27845DF78;
    v494[4] = v469;
    v154 = v132;
    v155 = v494;
    v156 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v154, v157, v153, v156, 0, v155);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x2000) != 0)
  {
    v158 = *(v470 + 440);
    v493[0] = MEMORY[0x277D85DD0];
    v493[1] = 3221225472;
    v493[2] = sub_2210A43CC;
    v493[3] = &unk_27845DF78;
    v493[4] = v469;
    v159 = v132;
    v160 = v493;
    v161 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v159, v162, v158, v161, 0, v160);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x4000) != 0)
  {
    v163 = *(v470 + 448);
    v492[0] = MEMORY[0x277D85DD0];
    v492[1] = 3221225472;
    v492[2] = sub_2210A43E0;
    v492[3] = &unk_27845DF78;
    v492[4] = v469;
    v164 = v132;
    v165 = v492;
    v166 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v164, v167, v163, v166, 0, v165);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x8000) != 0)
  {
    v168 = *(v470 + 456);
    v491[0] = MEMORY[0x277D85DD0];
    v491[1] = 3221225472;
    v491[2] = sub_2210A43F4;
    v491[3] = &unk_27845DF78;
    v491[4] = v469;
    v169 = v132;
    v170 = v491;
    v171 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v169, v172, v168, v171, 0, v170);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x10000) != 0)
  {
    v173 = *(v470 + 464);
    v490[0] = MEMORY[0x277D85DD0];
    v490[1] = 3221225472;
    v490[2] = sub_2210A4408;
    v490[3] = &unk_27845DF78;
    v490[4] = v469;
    v174 = v132;
    v175 = v490;
    v176 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v174, v177, v173, v176, 0, v175);

    v131 = *(v470 + 20);
  }

  if ((v131 & 0x20000) != 0)
  {
    v178 = *(v470 + 472);
    v489[0] = MEMORY[0x277D85DD0];
    v489[1] = 3221225472;
    v489[2] = sub_2210A441C;
    v489[3] = &unk_27845DF78;
    v489[4] = v469;
    v179 = v132;
    v180 = v489;
    v181 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v179, v182, v178, v181, 0, v180);
  }

  v183 = *(v470 + 16);
  if ((v183 & 0x10000) != 0)
  {
    v184 = *(v470 + 208);
    v488[0] = MEMORY[0x277D85DD0];
    v488[1] = 3221225472;
    v488[2] = sub_2210A4430;
    v488[3] = &unk_27845DF78;
    v488[4] = v469;
    v185 = v132;
    v186 = v488;
    v187 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v185, v188, v184, v187, 0, v186);

    v183 = *(v470 + 16);
  }

  if ((v183 & 0x80000) != 0)
  {
    v189 = *(v470 + 232);
    v487[0] = MEMORY[0x277D85DD0];
    v487[1] = 3221225472;
    v487[2] = sub_2210A4444;
    v487[3] = &unk_27845DFA0;
    v487[4] = v469;
    v190 = v132;
    v191 = v487;
    v192 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v190, v193, v189, v192, 0, v191);
  }

  v194 = *(v470 + 20);
  if ((v194 & 0x800000) != 0)
  {
    v195 = *(v470 + 520);
    v486[0] = MEMORY[0x277D85DD0];
    v486[1] = 3221225472;
    v486[2] = sub_2210A4458;
    v486[3] = &unk_27845DF50;
    v486[4] = v469;
    v196 = v132;
    v197 = v486;
    v198 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v196, v199, v195, v198, 0, v197);

    v194 = *(v470 + 20);
  }

  if ((v194 & 0x1000000) != 0)
  {
    v200 = *(v470 + 528);
    v485[0] = MEMORY[0x277D85DD0];
    v485[1] = 3221225472;
    v485[2] = sub_2210A446C;
    v485[3] = &unk_27845DF50;
    v485[4] = v469;
    v201 = v132;
    v202 = v485;
    v203 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v201, v204, v200, v203, 0, v202);

    v194 = *(v470 + 20);
  }

  if ((v194 & 0x2000000) != 0)
  {
    v205 = *(v470 + 536);
    v484[0] = MEMORY[0x277D85DD0];
    v484[1] = 3221225472;
    v484[2] = sub_2210A4480;
    v484[3] = &unk_27845DF50;
    v484[4] = v469;
    v206 = v132;
    v207 = v484;
    v208 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v206, v209, v205, v208, 0, v207);
  }

  if ((*(v470 + 19) & 4) != 0)
  {
    v210 = *(v470 + 288);
    v483[0] = MEMORY[0x277D85DD0];
    v483[1] = 3221225472;
    v483[2] = sub_2210A4494;
    v483[3] = &unk_27845DFC8;
    v483[4] = v469;
    v211 = v132;
    v212 = v483;
    v213 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v211, v214, v210, v213, 0, v212);
  }

  else if (*(v470 + 25))
  {
    v469->_presetIDForUpgrade = *(v470 + 600);
  }

  v215 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v128, *(v470 + 80) & 0xFFFFFFFFFFFFFFFELL, v129, v130);
  v469->_tableUID._lower = TSKMakeUIDStructFromString();
  v469->_tableUID._upper = v216;

  if (!v469->_tableUID._lower && !v469->_tableUID._upper)
  {
    v469->_tableUID._lower = TSKMakeUIDStructRandom();
    v469->_tableUID._upper = v217;
  }

  if ((*(v470 + 16) & 4) != 0 && objc_msgSend_isFromCopy(v132, v217, v218, v219, v220))
  {
    v221 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v217, *(v470 + 96) & 0xFFFFFFFFFFFFFFFELL, v219, v220);
    v469->_fromTableUID._lower = TSKMakeUIDStructFromString();
    v469->_fromTableUID._upper = v222;
  }

  if ((*(v470 + 16) & 8) != 0 && objc_msgSend_isFromCopy(v132, v217, v218, v219, v220))
  {
    v223 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v217, *(v470 + 104) & 0xFFFFFFFFFFFFFFFELL, v219, v220);
    v469->_fromGroupByUID._lower = TSKMakeUIDStructFromString();
    v469->_fromGroupByUID._upper = v224;
  }

  if ((*(v470 + 25) & 2) != 0 && objc_msgSend_isFromCopy(v132, v217, v218, v219, v220) && (objc_msgSend_isCrossAppPaste(v132, v217, v225, v219, v220) & 1) == 0)
  {
    v469->_wasCut = *(v470 + 604);
  }

  if ((*(v470 + 24) & 0x40) != 0)
  {
    v226 = *(v470 + 598);
  }

  else
  {
    v226 = 0;
  }

  v469->_styleApplyClearsAll = v226;
  if ((*(v470 + 23) & 0x20) != 0)
  {
    v227 = *(v470 + 560);
  }

  else
  {
    v227 = 0;
  }

  v228 = *(v470 + 552);
  v469->_numberOfHeaderRows._row = v227;
  v229 = *(v470 + 20);
  if ((v229 & 0x40000000) != 0)
  {
    v230 = *(v470 + 564);
  }

  else
  {
    LOWORD(v230) = 0;
  }

  v469->_numberOfHeaderColumns._column = v230;
  if (v229 < 0)
  {
    v231 = *(v470 + 568);
  }

  else
  {
    v231 = 0;
  }

  v469->_numberOfFooterRows._row = v231;
  v232 = *(v470 + 24);
  if ((v232 & 0x1000) != 0)
  {
    v233 = *(v470 + 607);
  }

  else
  {
    v233 = 0;
  }

  v469->_headerRowsFrozen = v233;
  if ((v232 & 0x10) != 0)
  {
    v234 = *(v470 + 596);
  }

  else
  {
    v234 = 0;
  }

  v469->_headerColumnsFrozen = v234;
  v469->_defaultRowHeight = *(v470 + 576);
  v469->_defaultColumnWidth = *(v470 + 584);
  v469->_tableNameHeight = *(v470 + 608);
  v235 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v217, *(v470 + 88) & 0xFFFFFFFFFFFFFFFELL, v219, v220);
  tableName = v469->_tableName;
  v469->_tableName = v235;

  v237 = *(v470 + 24);
  if ((v237 & 0x400) != 0)
  {
    v238 = *(v470 + 605);
  }

  else
  {
    v238 = 0;
  }

  v469->_tableNameEnabled = v238;
  if ((v237 & 0x800) != 0)
  {
    v239 = *(v470 + 606);
  }

  else
  {
    v239 = 0;
  }

  v469->_tableNameBorderEnabled = v239;
  if ((v237 & 0x20) != 0)
  {
    v240 = *(v470 + 597);
  }

  else
  {
    v240 = 0;
  }

  v469->_repeatingHeaderRowsEnabled = v240;
  if ((v237 & 0x80) != 0)
  {
    v241 = *(v470 + 599);
  }

  else
  {
    v241 = 0;
  }

  v469->_repeatingHeaderColumnsEnabled = v241;
  v242 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  cellsToInvalidateAfterRecalc = v469->_cellsToInvalidateAfterRecalc;
  v469->_cellsToInvalidateAfterRecalc = v242;

  v244 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  cellsToInvalidateNonoverflowingAfterRecalc = v469->_cellsToInvalidateNonoverflowingAfterRecalc;
  v469->_cellsToInvalidateNonoverflowingAfterRecalc = v244;

  v246 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  spillCellsChangedToInvalidateAfterRecalc = v469->_spillCellsChangedToInvalidateAfterRecalc;
  v469->_spillCellsChangedToInvalidateAfterRecalc = v246;

  v248 = objc_alloc_init(TSTCellDictionary);
  cellsPendingWrite = v469->_cellsPendingWrite;
  v469->_cellsPendingWrite = v248;

  v250 = objc_alloc_init(TSTCellDictionary);
  spillingCellsPendingWrite = v469->_spillingCellsPendingWrite;
  v469->_spillingCellsPendingWrite = v250;

  if ((*(v470 + 20) & 0x80) != 0)
  {
    v261 = [TSTHiddenStatesOwner alloc];
    if (*(v470 + 392))
    {
      v260 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v261, v262, *(v470 + 392), v132, v469);
    }

    else
    {
      v260 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v261, v262, &TST::_HiddenStatesOwnerArchive_default_instance_, v132, v469);
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v469, v252, v253, v254, v255);
    v256 = [TSTHiddenStatesOwner alloc];
    v260 = objc_msgSend_initWithBaseTable_(v256, v257, v469, v258, v259);
  }

  hiddenStatesOwner = v469->_hiddenStatesOwner;
  v469->_hiddenStatesOwner = v260;

  if ((*(v470 + 18) & 2) != 0)
  {
    v279 = *(v470 + 216);
    v482[0] = MEMORY[0x277D85DD0];
    v482[1] = 3221225472;
    v482[2] = sub_2210A44A8;
    v482[3] = &unk_27845DFF0;
    v482[4] = v469;
    v273 = v132;
    v280 = v482;
    v281 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v273, v282, v279, v281, 0, v280);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v469, v264, v265, v266, v267);
    v268 = [TSTHiddenStateFormulaOwner alloc];
    v273 = objc_msgSend_context(v469, v269, v270, v271, v272);
    v277 = objc_msgSend_initWithContext_(v268, v274, v273, v275, v276);
    hiddenStateFormulaOwnerForColumns = v469->_hiddenStateFormulaOwnerForColumns;
    v469->_hiddenStateFormulaOwnerForColumns = v277;
  }

  if ((*(v470 + 18) & 4) != 0)
  {
    v298 = *(v470 + 224);
    v481[0] = MEMORY[0x277D85DD0];
    v481[1] = 3221225472;
    v481[2] = sub_2210A44BC;
    v481[3] = &unk_27845DFF0;
    v481[4] = v469;
    v292 = v132;
    v299 = v481;
    v300 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v292, v301, v298, v300, 0, v299);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v469, v283, v284, v285, v286);
    v287 = [TSTHiddenStateFormulaOwner alloc];
    v292 = objc_msgSend_context(v469, v288, v289, v290, v291);
    v296 = objc_msgSend_initWithContext_(v287, v293, v292, v294, v295);
    hiddenStateFormulaOwnerForRows = v469->_hiddenStateFormulaOwnerForRows;
    v469->_hiddenStateFormulaOwnerForRows = v296;
  }

  v306 = *(v470 + 16);
  if ((v306 & 0x100000) != 0)
  {
    v307 = *(v470 + 240);
    v480[0] = MEMORY[0x277D85DD0];
    v480[1] = 3221225472;
    v480[2] = sub_2210A44D0;
    v480[3] = &unk_27845E018;
    v480[4] = v469;
    v308 = v132;
    v309 = v480;
    v310 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v308, v311, v307, v310, 0, v309);

    v306 = *(v470 + 16);
  }

  if ((v306 & 0x200000) != 0 && (v479[0] = TSKUIDStruct::loadFromMessage(), v479[1] = v302, v479[0] | v302))
  {
    v312 = [TSTConditionalStyleFormulaOwner alloc];
    v315 = objc_msgSend_initWithTableModel_ownerUID_(v312, v313, v469, v479, v314);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v469, v302, v303, v304, v305);
    v316 = [TSTConditionalStyleFormulaOwner alloc];
    v315 = objc_msgSend_initWithTableModel_(v316, v317, v469, v318, v319);
  }

  conditionalStyleFormulaOwner = v469->_conditionalStyleFormulaOwner;
  v469->_conditionalStyleFormulaOwner = v315;

  if ((*(v470 + 19) & 2) != 0)
  {
    v330 = [TSTMergeOwner alloc];
    if (*(v470 + 280))
    {
      v329 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v330, v331, *(v470 + 280), v132, v469);
    }

    else
    {
      v329 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v330, v331, &TST::_MergeOwnerArchive_default_instance_, v132, v469);
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v469, v321, v322, v323, v324);
    v325 = [TSTMergeOwner alloc];
    v329 = objc_msgSend_initWithTableModel_(v325, v326, v469, v327, v328);
  }

  mergeOwner = v469->_mergeOwner;
  v469->_mergeOwner = v329;

  if ((*(v470 + 22) & 8) != 0 && (objc_msgSend_isCrossAppPaste(v132, v333, v334, v335, v336) & 1) == 0)
  {
    v342 = [TSTPencilAnnotationOwner alloc];
    if (*(v470 + 488))
    {
      v341 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v342, v343, *(v470 + 488), v132, v469);
    }

    else
    {
      v341 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v342, v343, &TST::_PencilAnnotationOwnerArchive_default_instance_, v132, v469);
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v469, v333, v334, v335, v336);
    v337 = [TSTPencilAnnotationOwner alloc];
    v341 = objc_msgSend_initWithTableModel_(v337, v338, v469, v339, v340);
  }

  pencilAnnotationOwner = v469->_pencilAnnotationOwner;
  v469->_pencilAnnotationOwner = v341;

  if ((*(v470 + 18) & 0x40) != 0)
  {
    v349 = [TSTTableSortOrder alloc];
    if (*(v470 + 256))
    {
      v348 = objc_msgSend_initFromArchive_(v349, v350, *(v470 + 256), v351, v352);
    }

    else
    {
      v348 = objc_msgSend_initFromArchive_(v349, v350, &TST::_TableSortOrderArchive_default_instance_, v351, v352);
    }
  }

  else
  {
    v345 = [TSTTableSortOrder alloc];
    v348 = objc_msgSend_initWithRules_type_(v345, v346, MEMORY[0x277CBEBF8], 0, v347);
  }

  sortOrder = v469->_sortOrder;
  v469->_sortOrder = v348;

  if ((*(v470 + 18) & 0x80) != 0)
  {
    v363 = [TSTSortRuleReferenceTracker alloc];
    if (*(v470 + 264))
    {
      v366 = objc_msgSend_initFromArchive_unarchiver_(v363, v364, *(v470 + 264), v132, v365);
    }

    else
    {
      v366 = objc_msgSend_initFromArchive_unarchiver_(v363, v364, &TST::_SortRuleReferenceTrackerArchive_default_instance_, v132, v365);
    }

    sortRuleReferenceTracker = v469->_sortRuleReferenceTracker;
    v469->_sortRuleReferenceTracker = v366;
  }

  else
  {
    v354 = [TSTSortRuleReferenceTracker alloc];
    sortRuleReferenceTracker = objc_msgSend_context(v469, v355, v356, v357, v358);
    v361 = objc_msgSend_initWithTableInfo_baseTableUID_context_(v354, v360, 0, &v469->_tableUID, sortRuleReferenceTracker);
    v362 = v469->_sortRuleReferenceTracker;
    v469->_sortRuleReferenceTracker = v361;
  }

  v371 = objc_msgSend_fileFormatVersion(v132, v367, v368, v369, v370);
  v376 = *(v470 + 20);
  if (v371 >= 0xB000200000006 && (v376 & 0x400000) != 0)
  {
    v377 = *(v470 + 512);
    v478[0] = MEMORY[0x277D85DD0];
    v478[1] = 3221225472;
    v478[2] = sub_2210A44E4;
    v478[3] = &unk_27845E040;
    v478[4] = v469;
    v378 = v132;
    v379 = v478;
    v380 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v378, v381, v377, v380, 0, v379);
  }

  else if ((v376 & 0x40000) != 0)
  {
    objc_msgSend_willModifyForUpgrade(v469, v372, v373, v374, v375);
    v382 = [TSTCategoryOwner alloc];
    if (*(v470 + 480))
    {
      v384 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v382, v383, *(v470 + 480), v132, v469);
    }

    else
    {
      v384 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v382, v383, &TST::_CategoryOwnerArchive_default_instance_, v132, v469);
    }

    categoryOwner = v469->_categoryOwner;
    v469->_categoryOwner = v384;
  }

  v386 = *(v470 + 20);
  if ((v386 & 0x200000) != 0)
  {
    v387 = *(v470 + 504);
    v477[0] = MEMORY[0x277D85DD0];
    v477[1] = 3221225472;
    v477[2] = sub_2210A44F8;
    v477[3] = &unk_27845E068;
    v477[4] = v469;
    v388 = v132;
    v389 = v477;
    v390 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v388, v391, v387, v390, 0, v389);

    v386 = *(v470 + 20);
  }

  if ((v386 & 0x100000) != 0)
  {
    v397 = [TSCEHauntedOwner alloc];
    if (*(v470 + 496))
    {
      v396 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v397, v398, *(v470 + 496), v132, &v469->_tableUID);
    }

    else
    {
      v396 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v397, v398, &TSCE::_HauntedOwnerArchive_default_instance_, v132, &v469->_tableUID);
    }
  }

  else
  {
    v392 = [TSCEHauntedOwner alloc];
    v396 = objc_msgSend_initWithBaseTableUID_(v392, v393, &v469->_tableUID, v394, v395);
  }

  hauntedOwner = v469->_hauntedOwner;
  v469->_hauntedOwner = v396;

  if ((*(v470 + 23) & 4) != 0)
  {
    v405 = [TSCESpillOwner alloc];
    if (*(v470 + 544))
    {
      v404 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v405, v406, *(v470 + 544), v132, &v469->_tableUID);
    }

    else
    {
      v404 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v405, v406, &TSCE::_SpillOwnerArchive_default_instance_, v132, &v469->_tableUID);
    }
  }

  else
  {
    v400 = [TSCESpillOwner alloc];
    v404 = objc_msgSend_initWithBaseTableUID_(v400, v401, &v469->_tableUID, v402, v403);
  }

  spillOwner = v469->_spillOwner;
  v469->_spillOwner = v404;

  v412 = *(v470 + 16);
  if ((v412 & 0x40) != 0)
  {
    v413 = *(v470 + 128);
    v476[0] = MEMORY[0x277D85DD0];
    v476[1] = 3221225472;
    v476[2] = sub_2210A450C;
    v476[3] = &unk_27845E090;
    v476[4] = v469;
    v414 = v132;
    v415 = v476;
    v416 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v414, v417, v413, v416, 0, v415);

    v412 = *(v470 + 16);
  }

  if ((v412 & 0x1000000) != 0)
  {
    v418 = *(v470 + 272);
    v475[0] = MEMORY[0x277D85DD0];
    v475[1] = 3221225472;
    v475[2] = sub_2210A456C;
    v475[3] = &unk_27845E0B8;
    v475[4] = v469;
    v419 = v132;
    v420 = v475;
    v421 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v419, v422, v418, v421, 0, v420);

    v412 = *(v470 + 16);
  }

  if ((v412 & 0x8000000) != 0)
  {
    v423 = *(v470 + 296);
    v474[0] = MEMORY[0x277D85DD0];
    v474[1] = 3221225472;
    v474[2] = sub_2210A4580;
    v474[3] = &unk_27845E0E0;
    v474[4] = v469;
    v424 = v132;
    v425 = v474;
    v426 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v424, v427, v423, v426, 0, v425);
  }

  if ((*(v470 + 26) & 2) != 0)
  {
    v469->_presetNeedsStrongOwnership = *(v470 + 628);
  }

  if ((*(v470 + 19) & 0x10) != 0)
  {
    v428 = [TSTStructuredTextImportRecord alloc];
    if (*(v470 + 304))
    {
      v432 = objc_msgSend_initFromArchive_(v428, v429, *(v470 + 304), v430, v431);
    }

    else
    {
      v432 = objc_msgSend_initFromArchive_(v428, v429, &TST::_StructuredTextImportRecord_default_instance_, v430, v431);
    }

    textImportRecord = v469->_textImportRecord;
    v469->_textImportRecord = v432;
  }

  v468 = v132;
  v434 = *(v470 + 32);
  if (v434)
  {
    v435 = *(v470 + 40);
    p_begin = &v469->_pivotValueTypesByColumn.__begin_;
    end = v469->_pivotValueTypesByColumn.__end_;
    v438 = 4 * v434;
    do
    {
      v439 = *v435;
      cap = v469->_pivotValueTypesByColumn.__cap_;
      if (end >= cap)
      {
        v441 = *p_begin;
        v442 = (end - *p_begin);
        v443 = (v442 + 1);
        if ((v442 + 1) < 0)
        {
          sub_22107C148();
        }

        v444 = cap - v441;
        if (2 * v444 > v443)
        {
          v443 = 2 * v444;
        }

        if (v444 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v445 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v445 = v443;
        }

        if (v445)
        {
          operator new();
        }

        v446 = end - *p_begin;
        *v442 = v439;
        end = v442 + 1;
        memcpy(0, v441, v446);
        *p_begin = 0;
        v469->_pivotValueTypesByColumn.__end_ = v442 + 1;
        v469->_pivotValueTypesByColumn.__cap_ = 0;
        if (v441)
        {
          operator delete(v441);
        }
      }

      else
      {
        *end++ = v439;
      }

      v469->_pivotValueTypesByColumn.__end_ = end;
      ++v435;
      v438 -= 4;
    }

    while (v438);
  }

  v447 = *(v470 + 64);
  if (v447 == *(v470 + 48))
  {
    v449 = v468;
    v448 = v469;
    if (v447 >= 1)
    {
      v450 = 0;
      v451 = 4 * v447;
      do
      {
        v452 = *(*(v470 + 72) + v450);
        v473 = *(*(v470 + 56) + v450);
        v479[0] = &v473;
        v450 += 4;
        sub_2210BBDBC(&v469->_pivotDateGroupingTypesByColumn, &v473)[5] = v452;
      }

      while (v451 != v450);
    }
  }

  else
  {
    v453 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v408, "[TSTTableModel loadFromUnarchiver:]", v410, v411);
    v449 = v468;
    v454 = v448 = v469;
    v458 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v455, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v456, v457);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v453, v459, v454, v458, 3282, 0, "Unequal date grouping columns and values. We can't make a map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v460, v461, v462, v463);
  }

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v449, v408, v409, v410, v411);
  v471[0] = MEMORY[0x277D85DD0];
  v471[1] = 3221225472;
  v471[2] = sub_2210A4594;
  v471[3] = &unk_27845E108;
  v471[4] = v448;
  v471[5] = v228;
  v472 = hasPreUFFVersion;
  objc_msgSend_addFinalizeHandler_(v449, v465, v471, v466, v467);
}

- (void)saveToArchiver:(id)a3
{
  v425 = *MEMORY[0x277D85DE8];
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_2210BC080, off_2812E4498[84], v6);

  dataStore = self->_dataStore;
  *(v7 + 16) |= 0x20u;
  v13 = *(v7 + 120);
  if (!v13)
  {
    v14 = *(v7 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v14);
    *(v7 + 120) = v13;
  }

  v15 = objc_msgSend_tsp_isInDocument(self, v8, v9, v10, v11);
  objc_msgSend_saveToArchive_archiver_isInTheDocument_(dataStore, v16, v13, v4, v15);
  tableStyle = self->_tableStyle;
  *(v7 + 16) |= 0x10u;
  v20 = *(v7 + 112);
  if (!v20)
  {
    v21 = *(v7 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA0390](v21);
    *(v7 + 112) = v20;
  }

  objc_msgSend_setStrongReference_message_(v4, v17, tableStyle, v20, v18);
  headerRowCellStyle = self->_headerRowCellStyle;
  *(v7 + 16) |= 0x100u;
  v25 = *(v7 + 144);
  if (!v25)
  {
    v26 = *(v7 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x223DA0390](v26);
    *(v7 + 144) = v25;
  }

  objc_msgSend_setStrongReference_message_(v4, v22, headerRowCellStyle, v25, v23);
  headerColumnCellStyle = self->_headerColumnCellStyle;
  *(v7 + 16) |= 0x200u;
  v30 = *(v7 + 152);
  if (!v30)
  {
    v31 = *(v7 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x223DA0390](v31);
    *(v7 + 152) = v30;
  }

  objc_msgSend_setStrongReference_message_(v4, v27, headerColumnCellStyle, v30, v28);
  footerRowCellStyle = self->_footerRowCellStyle;
  *(v7 + 16) |= 0x400u;
  v35 = *(v7 + 160);
  if (!v35)
  {
    v36 = *(v7 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA0390](v36);
    *(v7 + 160) = v35;
  }

  objc_msgSend_setStrongReference_message_(v4, v32, footerRowCellStyle, v35, v33);
  bodyCellStyle = self->_bodyCellStyle;
  *(v7 + 16) |= 0x80u;
  v40 = *(v7 + 136);
  if (!v40)
  {
    v41 = *(v7 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0390](v41);
    *(v7 + 136) = v40;
  }

  objc_msgSend_setStrongReference_message_(v4, v37, bodyCellStyle, v40, v38);
  headerRowTextStyle = self->_headerRowTextStyle;
  *(v7 + 16) |= 0x2000u;
  v45 = *(v7 + 184);
  if (!v45)
  {
    v46 = *(v7 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x223DA0390](v46);
    *(v7 + 184) = v45;
  }

  objc_msgSend_setStrongReference_message_(v4, v42, headerRowTextStyle, v45, v43);
  headerColumnTextStyle = self->_headerColumnTextStyle;
  *(v7 + 16) |= 0x4000u;
  v50 = *(v7 + 192);
  if (!v50)
  {
    v51 = *(v7 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x223DA0390](v51);
    *(v7 + 192) = v50;
  }

  objc_msgSend_setStrongReference_message_(v4, v47, headerColumnTextStyle, v50, v48);
  footerRowTextStyle = self->_footerRowTextStyle;
  *(v7 + 16) |= 0x8000u;
  v55 = *(v7 + 200);
  if (!v55)
  {
    v56 = *(v7 + 8);
    if (v56)
    {
      v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
    }

    v55 = MEMORY[0x223DA0390](v56);
    *(v7 + 200) = v55;
  }

  objc_msgSend_setStrongReference_message_(v4, v52, footerRowTextStyle, v55, v53);
  bodyTextStyle = self->_bodyTextStyle;
  *(v7 + 16) |= 0x1000u;
  v60 = *(v7 + 176);
  if (!v60)
  {
    v61 = *(v7 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x223DA0390](v61);
    *(v7 + 176) = v60;
  }

  objc_msgSend_setStrongReference_message_(v4, v57, bodyTextStyle, v60, v58);
  categoryLevel1CellStyle = self->_categoryLevel1CellStyle;
  if (categoryLevel1CellStyle)
  {
    *(v7 + 16) |= 0x20000000u;
    v65 = *(v7 + 312);
    if (!v65)
    {
      v66 = *(v7 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x223DA0390](v66);
      *(v7 + 312) = v65;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel1CellStyle, v65, v63);
  }

  categoryLevel2CellStyle = self->_categoryLevel2CellStyle;
  if (categoryLevel2CellStyle)
  {
    *(v7 + 16) |= 0x40000000u;
    v68 = *(v7 + 320);
    if (!v68)
    {
      v69 = *(v7 + 8);
      if (v69)
      {
        v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
      }

      v68 = MEMORY[0x223DA0390](v69);
      *(v7 + 320) = v68;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel2CellStyle, v68, v63);
  }

  categoryLevel3CellStyle = self->_categoryLevel3CellStyle;
  if (categoryLevel3CellStyle)
  {
    *(v7 + 16) |= 0x80000000;
    v71 = *(v7 + 328);
    if (!v71)
    {
      v72 = *(v7 + 8);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = MEMORY[0x223DA0390](v72);
      *(v7 + 328) = v71;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel3CellStyle, v71, v63);
  }

  categoryLevel4CellStyle = self->_categoryLevel4CellStyle;
  if (categoryLevel4CellStyle)
  {
    *(v7 + 20) |= 1u;
    v74 = *(v7 + 336);
    if (!v74)
    {
      v75 = *(v7 + 8);
      if (v75)
      {
        v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
      }

      v74 = MEMORY[0x223DA0390](v75);
      *(v7 + 336) = v74;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel4CellStyle, v74, v63);
  }

  categoryLevel5CellStyle = self->_categoryLevel5CellStyle;
  if (categoryLevel5CellStyle)
  {
    *(v7 + 20) |= 2u;
    v77 = *(v7 + 344);
    if (!v77)
    {
      v78 = *(v7 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x223DA0390](v78);
      *(v7 + 344) = v77;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel5CellStyle, v77, v63);
  }

  labelLevel1CellStyle = self->_labelLevel1CellStyle;
  if (labelLevel1CellStyle)
  {
    *(v7 + 20) |= 0x100u;
    v80 = *(v7 + 400);
    if (!v80)
    {
      v81 = *(v7 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x223DA0390](v81);
      *(v7 + 400) = v80;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel1CellStyle, v80, v63);
  }

  labelLevel2CellStyle = self->_labelLevel2CellStyle;
  if (labelLevel2CellStyle)
  {
    *(v7 + 20) |= 0x200u;
    v83 = *(v7 + 408);
    if (!v83)
    {
      v84 = *(v7 + 8);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x223DA0390](v84);
      *(v7 + 408) = v83;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel2CellStyle, v83, v63);
  }

  labelLevel3CellStyle = self->_labelLevel3CellStyle;
  if (labelLevel3CellStyle)
  {
    *(v7 + 20) |= 0x400u;
    v86 = *(v7 + 416);
    if (!v86)
    {
      v87 = *(v7 + 8);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = MEMORY[0x223DA0390](v87);
      *(v7 + 416) = v86;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel3CellStyle, v86, v63);
  }

  labelLevel4CellStyle = self->_labelLevel4CellStyle;
  if (labelLevel4CellStyle)
  {
    *(v7 + 20) |= 0x800u;
    v89 = *(v7 + 424);
    if (!v89)
    {
      v90 = *(v7 + 8);
      if (v90)
      {
        v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
      }

      v89 = MEMORY[0x223DA0390](v90);
      *(v7 + 424) = v89;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel4CellStyle, v89, v63);
  }

  labelLevel5CellStyle = self->_labelLevel5CellStyle;
  if (labelLevel5CellStyle)
  {
    *(v7 + 20) |= 0x1000u;
    v92 = *(v7 + 432);
    if (!v92)
    {
      v93 = *(v7 + 8);
      if (v93)
      {
        v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
      }

      v92 = MEMORY[0x223DA0390](v93);
      *(v7 + 432) = v92;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel5CellStyle, v92, v63);
  }

  categoryLevel1TextStyle = self->_categoryLevel1TextStyle;
  if (categoryLevel1TextStyle)
  {
    *(v7 + 20) |= 4u;
    v95 = *(v7 + 352);
    if (!v95)
    {
      v96 = *(v7 + 8);
      if (v96)
      {
        v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
      }

      v95 = MEMORY[0x223DA0390](v96);
      *(v7 + 352) = v95;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel1TextStyle, v95, v63);
  }

  categoryLevel2TextStyle = self->_categoryLevel2TextStyle;
  if (categoryLevel2TextStyle)
  {
    *(v7 + 20) |= 8u;
    v98 = *(v7 + 360);
    if (!v98)
    {
      v99 = *(v7 + 8);
      if (v99)
      {
        v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
      }

      v98 = MEMORY[0x223DA0390](v99);
      *(v7 + 360) = v98;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel2TextStyle, v98, v63);
  }

  categoryLevel3TextStyle = self->_categoryLevel3TextStyle;
  if (categoryLevel3TextStyle)
  {
    *(v7 + 20) |= 0x10u;
    v101 = *(v7 + 368);
    if (!v101)
    {
      v102 = *(v7 + 8);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x223DA0390](v102);
      *(v7 + 368) = v101;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel3TextStyle, v101, v63);
  }

  categoryLevel4TextStyle = self->_categoryLevel4TextStyle;
  if (categoryLevel4TextStyle)
  {
    *(v7 + 20) |= 0x20u;
    v104 = *(v7 + 376);
    if (!v104)
    {
      v105 = *(v7 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = MEMORY[0x223DA0390](v105);
      *(v7 + 376) = v104;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel4TextStyle, v104, v63);
  }

  categoryLevel5TextStyle = self->_categoryLevel5TextStyle;
  if (categoryLevel5TextStyle)
  {
    *(v7 + 20) |= 0x40u;
    v107 = *(v7 + 384);
    if (!v107)
    {
      v108 = *(v7 + 8);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = MEMORY[0x223DA0390](v108);
      *(v7 + 384) = v107;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, categoryLevel5TextStyle, v107, v63);
  }

  labelLevel1TextStyle = self->_labelLevel1TextStyle;
  if (labelLevel1TextStyle)
  {
    *(v7 + 20) |= 0x2000u;
    v110 = *(v7 + 440);
    if (!v110)
    {
      v111 = *(v7 + 8);
      if (v111)
      {
        v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
      }

      v110 = MEMORY[0x223DA0390](v111);
      *(v7 + 440) = v110;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel1TextStyle, v110, v63);
  }

  labelLevel2TextStyle = self->_labelLevel2TextStyle;
  if (labelLevel2TextStyle)
  {
    *(v7 + 20) |= 0x4000u;
    v113 = *(v7 + 448);
    if (!v113)
    {
      v114 = *(v7 + 8);
      if (v114)
      {
        v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
      }

      v113 = MEMORY[0x223DA0390](v114);
      *(v7 + 448) = v113;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel2TextStyle, v113, v63);
  }

  labelLevel3TextStyle = self->_labelLevel3TextStyle;
  if (labelLevel3TextStyle)
  {
    *(v7 + 20) |= 0x8000u;
    v116 = *(v7 + 456);
    if (!v116)
    {
      v117 = *(v7 + 8);
      if (v117)
      {
        v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
      }

      v116 = MEMORY[0x223DA0390](v117);
      *(v7 + 456) = v116;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel3TextStyle, v116, v63);
  }

  labelLevel4TextStyle = self->_labelLevel4TextStyle;
  if (labelLevel4TextStyle)
  {
    *(v7 + 20) |= 0x10000u;
    v119 = *(v7 + 464);
    if (!v119)
    {
      v120 = *(v7 + 8);
      if (v120)
      {
        v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
      }

      v119 = MEMORY[0x223DA0390](v120);
      *(v7 + 464) = v119;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel4TextStyle, v119, v63);
  }

  labelLevel5TextStyle = self->_labelLevel5TextStyle;
  if (labelLevel5TextStyle)
  {
    *(v7 + 20) |= 0x20000u;
    v122 = *(v7 + 472);
    if (!v122)
    {
      v123 = *(v7 + 8);
      if (v123)
      {
        v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
      }

      v122 = MEMORY[0x223DA0390](v123);
      *(v7 + 472) = v122;
    }

    objc_msgSend_setStrongReference_message_(v4, v62, labelLevel5TextStyle, v122, v63);
  }

  tableNameStyle = self->_tableNameStyle;
  *(v7 + 16) |= 0x10000u;
  v125 = *(v7 + 208);
  if (!v125)
  {
    v126 = *(v7 + 8);
    if (v126)
    {
      v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
    }

    v125 = MEMORY[0x223DA0390](v126);
    *(v7 + 208) = v125;
  }

  objc_msgSend_setStrongReference_message_(v4, v62, tableNameStyle, v125, v63);
  tableNameShapeStyle = self->_tableNameShapeStyle;
  *(v7 + 16) |= 0x80000u;
  v130 = *(v7 + 232);
  if (!v130)
  {
    v131 = *(v7 + 8);
    if (v131)
    {
      v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
    }

    v130 = MEMORY[0x223DA0390](v131);
    *(v7 + 232) = v130;
  }

  objc_msgSend_setStrongReference_message_(v4, v127, tableNameShapeStyle, v130, v128);
  pivotBodySummaryRowCellStyle = self->_pivotBodySummaryRowCellStyle;
  if (pivotBodySummaryRowCellStyle)
  {
    *(v7 + 20) |= 0x800000u;
    v137 = *(v7 + 520);
    if (!v137)
    {
      v138 = *(v7 + 8);
      if (v138)
      {
        v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
      }

      v137 = MEMORY[0x223DA0390](v138);
      *(v7 + 520) = v137;
    }

    objc_msgSend_setStrongReference_message_(v4, v132, pivotBodySummaryRowCellStyle, v137, v135);
  }

  pivotBodySummaryColumnCellStyle = self->_pivotBodySummaryColumnCellStyle;
  if (pivotBodySummaryColumnCellStyle)
  {
    *(v7 + 20) |= 0x1000000u;
    v140 = *(v7 + 528);
    if (!v140)
    {
      v141 = *(v7 + 8);
      if (v141)
      {
        v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
      }

      v140 = MEMORY[0x223DA0390](v141);
      *(v7 + 528) = v140;
    }

    objc_msgSend_setStrongReference_message_(v4, v132, pivotBodySummaryColumnCellStyle, v140, v135);
  }

  pivotHeaderColumnSummaryCellStyle = self->_pivotHeaderColumnSummaryCellStyle;
  if (pivotHeaderColumnSummaryCellStyle)
  {
    *(v7 + 20) |= 0x2000000u;
    v143 = *(v7 + 536);
    if (!v143)
    {
      v144 = *(v7 + 8);
      if (v144)
      {
        v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
      }

      v143 = MEMORY[0x223DA0390](v144);
      *(v7 + 536) = v143;
    }

    objc_msgSend_setStrongReference_message_(v4, v132, pivotHeaderColumnSummaryCellStyle, v143, v135);
  }

  styleApplyClearsAll = self->_styleApplyClearsAll;
  *(v7 + 24) |= 0x40u;
  *(v7 + 598) = styleApplyClearsAll;
  v146 = objc_msgSend_tableStylePreset(self, v132, v133, v134, v135);

  if (v146)
  {
    if (objc_msgSend_presetNeedsStrongOwnership(self, v147, v148, v149, v150))
    {
      *(v7 + 24) |= 0x20000u;
      *(v7 + 628) = 1;
      v157 = objc_msgSend_tableStylePreset(self, v151, v152, v153, v154);
      *(v7 + 16) |= 0x4000000u;
      v158 = *(v7 + 288);
      if (!v158)
      {
        v159 = *(v7 + 8);
        if (v159)
        {
          v159 = *(v159 & 0xFFFFFFFFFFFFFFFELL);
        }

        v158 = MEMORY[0x223DA0390](v159);
        *(v7 + 288) = v158;
      }

      objc_msgSend_setStrongReference_message_(v4, v155, v157, v158, v156);
    }

    else
    {
      v157 = objc_msgSend_tableStylePreset(self, v151, v152, v153, v154);
      *(v7 + 16) |= 0x4000000u;
      v162 = *(v7 + 288);
      if (!v162)
      {
        v163 = *(v7 + 8);
        if (v163)
        {
          v163 = *(v163 & 0xFFFFFFFFFFFFFFFELL);
        }

        v162 = MEMORY[0x223DA0390](v163);
        *(v7 + 288) = v162;
      }

      objc_msgSend_setWeakReference_message_(v4, v160, v157, v162, v161);
    }
  }

  v164 = TSKUIDStruct::description(&self->_tableUID);
  v169 = objc_msgSend_tsp_protobufString(v164, v165, v166, v167, v168);
  *(v7 + 16) |= 1u;
  sub_22108CCD0(&__p, v169);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v424 < 0)
  {
    operator delete(__p._lower);
  }

  if ((self->_fromTableUID._lower || self->_fromTableUID._upper) && objc_msgSend_isForCopy(v4, v170, v171, v172, v173))
  {
    v174 = TSKUIDStruct::description(&self->_fromTableUID);
    v179 = objc_msgSend_tsp_protobufString(v174, v175, v176, v177, v178);
    *(v7 + 16) |= 4u;
    sub_22108CCD0(&__p, v179);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v424 < 0)
    {
      operator delete(__p._lower);
    }
  }

  if ((self->_fromGroupByUID._lower || self->_fromGroupByUID._upper) && objc_msgSend_isForCopy(v4, v170, v171, v172, v173))
  {
    v180 = TSKUIDStruct::description(&self->_fromGroupByUID);
    v185 = objc_msgSend_tsp_protobufString(v180, v181, v182, v183, v184);
    *(v7 + 16) |= 8u;
    sub_22108CCD0(&__p, v185);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v424 < 0)
    {
      operator delete(__p._lower);
    }
  }

  v186 = objc_msgSend_numberOfRows(self, v170, v171, v172, v173);
  *(v7 + 20) |= 0x8000000u;
  *(v7 + 552) = v186;
  v191 = objc_msgSend_numberOfColumns(self, v187, v188, v189, v190);
  v196 = *(v7 + 20);
  v197 = v196 | 0x10000000;
  *(v7 + 20) = v196 | 0x10000000;
  *(v7 + 556) = v191;
  row = self->_numberOfHeaderRows._row;
  if (row)
  {
    v197 = v196 | 0x30000000;
    *(v7 + 20) = v196 | 0x30000000;
    *(v7 + 560) = row;
  }

  column = self->_numberOfHeaderColumns._column;
  if (self->_numberOfHeaderColumns._column)
  {
    v197 |= 0x40000000u;
    *(v7 + 20) = v197;
    *(v7 + 564) = column;
    headerColumnsFrozen = self->_headerColumnsFrozen;
    *(v7 + 24) |= 0x10u;
    *(v7 + 596) = headerColumnsFrozen;
  }

  v201 = self->_numberOfFooterRows._row;
  if (v201)
  {
    *(v7 + 20) = v197 | 0x80000000;
    *(v7 + 568) = v201;
  }

  v202 = *(v7 + 24);
  if (self->_headerRowsFrozen)
  {
    v202 |= 0x1000u;
    *(v7 + 24) = v202;
    *(v7 + 607) = 1;
  }

  if (self->_headerColumnsFrozen)
  {
    v202 |= 0x10u;
    *(v7 + 24) = v202;
    *(v7 + 596) = 1;
  }

  *(v7 + 576) = self->_defaultRowHeight;
  defaultColumnWidth = self->_defaultColumnWidth;
  *(v7 + 24) = v202 | 6;
  *(v7 + 584) = defaultColumnWidth;
  v204 = objc_msgSend_tsp_protobufString(self->_tableName, v192, v193, v194, v195);
  *(v7 + 16) |= 2u;
  sub_22108CCD0(&__p, v204);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v424 < 0)
  {
    operator delete(__p._lower);
  }

  tableNameHeight = self->_tableNameHeight;
  v209 = *(v7 + 24);
  v210 = v209 | 0x2000;
  *(v7 + 24) = v209 | 0x2000;
  *(v7 + 608) = tableNameHeight;
  if (self->_tableNameEnabled)
  {
    v210 = v209 | 0x2400;
    *(v7 + 24) = v209 | 0x2400;
    *(v7 + 605) = 1;
  }

  if (self->_tableNameBorderEnabled)
  {
    v210 |= 0x800u;
    *(v7 + 24) = v210;
    *(v7 + 606) = 1;
  }

  if (self->_repeatingHeaderRowsEnabled)
  {
    v210 |= 0x20u;
    *(v7 + 24) = v210;
    *(v7 + 597) = 1;
  }

  if (self->_repeatingHeaderColumnsEnabled)
  {
    *(v7 + 24) = v210 | 0x80;
    *(v7 + 599) = 1;
  }

  sortOrder = self->_sortOrder;
  if (sortOrder)
  {
    *(v7 + 16) |= 0x400000u;
    v212 = *(v7 + 256);
    if (!v212)
    {
      v213 = *(v7 + 8);
      if (v213)
      {
        v213 = *(v213 & 0xFFFFFFFFFFFFFFFELL);
      }

      v212 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive>(v213);
      *(v7 + 256) = v212;
    }

    objc_msgSend_encodeToArchive_(sortOrder, v205, v212, v206, v207);
  }

  sortRuleReferenceTracker = self->_sortRuleReferenceTracker;
  *(v7 + 16) |= 0x800000u;
  v215 = *(v7 + 264);
  if (!v215)
  {
    v216 = *(v7 + 8);
    if (v216)
    {
      v216 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
    }

    v215 = google::protobuf::Arena::CreateMaybeMessage<TST::SortRuleReferenceTrackerArchive>(v216);
    *(v7 + 264) = v215;
  }

  objc_msgSend_encodeToArchive_archiver_(sortRuleReferenceTracker, v205, v215, v4, v207);
  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    *(v7 + 16) |= 0x1000000u;
    v222 = *(v7 + 272);
    if (!v222)
    {
      v223 = *(v7 + 8);
      if (v223)
      {
        v223 = *(v223 & 0xFFFFFFFFFFFFFFFELL);
      }

      v222 = MEMORY[0x223DA0390](v223);
      *(v7 + 272) = v222;
    }

    objc_msgSend_setStrongReference_message_(v4, v217, columnRowUIDMap, v222, v220);
  }

  strokeSidecar = self->_strokeSidecar;
  if (strokeSidecar)
  {
    *(v7 + 16) |= 0x8000000u;
    v225 = *(v7 + 296);
    if (!v225)
    {
      v226 = *(v7 + 8);
      if (v226)
      {
        v226 = *(v226 & 0xFFFFFFFFFFFFFFFELL);
      }

      v225 = MEMORY[0x223DA0390](v226);
      *(v7 + 296) = v225;
    }

    objc_msgSend_setStrongReference_message_(v4, v217, strokeSidecar, v225, v220);
  }

  __p._lower = objc_msgSend_ownerUID(self->_conditionalStyleFormulaOwner, v217, v218, v219, v220);
  __p._upper = v227;
  *(v7 + 16) |= 0x200000u;
  v228 = *(v7 + 248);
  if (!v228)
  {
    v229 = *(v7 + 8);
    if (v229)
    {
      v229 = *(v229 & 0xFFFFFFFFFFFFFFFELL);
    }

    v228 = MEMORY[0x223DA0300](v229);
    *(v7 + 248) = v228;
  }

  TSKUIDStruct::saveToMessage(&__p, v228);
  mergeOwner = self->_mergeOwner;
  if (mergeOwner)
  {
    *(v7 + 16) |= 0x2000000u;
    v235 = *(v7 + 280);
    if (!v235)
    {
      v236 = *(v7 + 8);
      if (v236)
      {
        v236 = *(v236 & 0xFFFFFFFFFFFFFFFELL);
      }

      v235 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOwnerArchive>(v236);
      *(v7 + 280) = v235;
    }

    objc_msgSend_saveToArchive_archiver_(mergeOwner, v230, v235, v4, v233);
  }

  pencilAnnotationOwner = self->_pencilAnnotationOwner;
  if (pencilAnnotationOwner)
  {
    *(v7 + 20) |= 0x80000u;
    v238 = *(v7 + 488);
    if (!v238)
    {
      v239 = *(v7 + 8);
      if (v239)
      {
        v239 = *(v239 & 0xFFFFFFFFFFFFFFFELL);
      }

      v238 = google::protobuf::Arena::CreateMaybeMessage<TST::PencilAnnotationOwnerArchive>(v239);
      *(v7 + 488) = v238;
    }

    objc_msgSend_saveToArchive_archiver_(pencilAnnotationOwner, v230, v238, v4, v233);
  }

  textImportRecord = self->_textImportRecord;
  if (textImportRecord)
  {
    *(v7 + 16) |= 0x10000000u;
    v241 = *(v7 + 304);
    if (!v241)
    {
      v242 = *(v7 + 8);
      if (v242)
      {
        v242 = *(v242 & 0xFFFFFFFFFFFFFFFELL);
      }

      v241 = google::protobuf::Arena::CreateMaybeMessage<TST::StructuredTextImportRecord>(v242);
      *(v7 + 304) = v241;
    }

    objc_msgSend_encodeToArchive_(textImportRecord, v230, v241, v232, v233);
  }

  categoryOwner = self->_categoryOwner;
  if (categoryOwner)
  {
    *(v7 + 20) |= 0x400000u;
    v244 = *(v7 + 512);
    if (!v244)
    {
      v245 = *(v7 + 8);
      if (v245)
      {
        v245 = *(v245 & 0xFFFFFFFFFFFFFFFELL);
      }

      v244 = MEMORY[0x223DA0390](v245);
      *(v7 + 512) = v244;
    }

    objc_msgSend_setStrongReference_message_(v4, v230, categoryOwner, v244, v233);
    if (objc_msgSend_backwardCompatibleToPrePivot(self->_categoryOwner, v246, v247, v248, v249))
    {
      v252 = self->_categoryOwner;
      *(v7 + 20) |= 0x40000u;
      v253 = *(v7 + 480);
      if (!v253)
      {
        v254 = *(v7 + 8);
        if (v254)
        {
          v254 = *(v254 & 0xFFFFFFFFFFFFFFFELL);
        }

        v253 = google::protobuf::Arena::CreateMaybeMessage<TST::CategoryOwnerArchive>(v254);
        *(v7 + 480) = v253;
      }

      objc_msgSend_saveToArchive_archiver_(v252, v250, v253, v4, v251);
      objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v255, 81, v7, v256);
    }

    else
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v250, 0xB000200000006, @"TSTPivotTables", v251);
    }
  }

  pivotOwner = self->_pivotOwner;
  if (pivotOwner)
  {
    *(v7 + 20) |= 0x200000u;
    v258 = *(v7 + 504);
    if (!v258)
    {
      v259 = *(v7 + 8);
      if (v259)
      {
        v259 = *(v259 & 0xFFFFFFFFFFFFFFFELL);
      }

      v258 = MEMORY[0x223DA0390](v259);
      *(v7 + 504) = v258;
    }

    objc_msgSend_setStrongReference_message_(v4, v230, pivotOwner, v258, v233);
  }

  v260 = objc_msgSend_hiddenStatesOwner(self, v230, v231, v232, v233);
  v261 = v260 == 0;

  if (!v261)
  {
    v268 = objc_msgSend_hiddenStatesOwner(self, v262, v263, v264, v265);
    *(v7 + 20) |= 0x80u;
    v269 = *(v7 + 392);
    if (!v269)
    {
      v270 = *(v7 + 8);
      if (v270)
      {
        v270 = *(v270 & 0xFFFFFFFFFFFFFFFELL);
      }

      v269 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesOwnerArchive>(v270);
      *(v7 + 392) = v269;
    }

    objc_msgSend_saveToArchive_archiver_(v268, v266, v269, v4, v267);
  }

  v271 = objc_msgSend_hauntedOwner(self, v262, v263, v264, v265);
  v272 = v271 == 0;

  if (!v272)
  {
    v279 = objc_msgSend_hauntedOwner(self, v273, v274, v275, v276);
    *(v7 + 20) |= 0x100000u;
    v280 = *(v7 + 496);
    if (!v280)
    {
      v281 = *(v7 + 8);
      if (v281)
      {
        v281 = *(v281 & 0xFFFFFFFFFFFFFFFELL);
      }

      v280 = google::protobuf::Arena::CreateMaybeMessage<TSCE::HauntedOwnerArchive>(v281);
      *(v7 + 496) = v280;
    }

    objc_msgSend_saveToArchive_archiver_(v279, v277, v280, v4, v278);
  }

  v282 = objc_msgSend_spillOwner(self, v273, v274, v275, v276);
  v283 = v282 == 0;

  if (!v283)
  {
    v290 = objc_msgSend_spillOwner(self, v284, v285, v286, v287);
    *(v7 + 20) |= 0x4000000u;
    v291 = *(v7 + 544);
    if (!v291)
    {
      v292 = *(v7 + 8);
      if (v292)
      {
        v292 = *(v292 & 0xFFFFFFFFFFFFFFFELL);
      }

      v291 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpillOwnerArchive>(v292);
      *(v7 + 544) = v291;
    }

    objc_msgSend_saveToArchive_archiver_(v290, v288, v291, v4, v289);
  }

  hiddenStateFormulaOwnerForColumns = self->_hiddenStateFormulaOwnerForColumns;
  *(v7 + 16) |= 0x20000u;
  v294 = *(v7 + 216);
  if (!v294)
  {
    v295 = *(v7 + 8);
    if (v295)
    {
      v295 = *(v295 & 0xFFFFFFFFFFFFFFFELL);
    }

    v294 = MEMORY[0x223DA0390](v295);
    *(v7 + 216) = v294;
  }

  objc_msgSend_setStrongReference_message_(v4, v284, hiddenStateFormulaOwnerForColumns, v294, v287);
  hiddenStateFormulaOwnerForRows = self->_hiddenStateFormulaOwnerForRows;
  *(v7 + 16) |= 0x40000u;
  v299 = *(v7 + 224);
  if (!v299)
  {
    v300 = *(v7 + 8);
    if (v300)
    {
      v300 = *(v300 & 0xFFFFFFFFFFFFFFFELL);
    }

    v299 = MEMORY[0x223DA0390](v300);
    *(v7 + 224) = v299;
  }

  objc_msgSend_setStrongReference_message_(v4, v296, hiddenStateFormulaOwnerForRows, v299, v297);
  prePivotRowFilterSet = self->_prePivotRowFilterSet;
  if (prePivotRowFilterSet)
  {
    *(v7 + 16) |= 0x100000u;
    v306 = *(v7 + 240);
    if (!v306)
    {
      v307 = *(v7 + 8);
      if (v307)
      {
        v307 = *(v307 & 0xFFFFFFFFFFFFFFFELL);
      }

      v306 = MEMORY[0x223DA0390](v307);
      *(v7 + 240) = v306;
    }

    objc_msgSend_setStrongReference_message_(v4, v301, prePivotRowFilterSet, v306, v304);
  }

  else
  {
    v310 = objc_msgSend_hiddenStates(self->_hiddenStatesOwner, v301, v302, v303, v304);
    v315 = objc_msgSend_filterSetForRows(v310, v311, v312, v313, v314);

    if (v315 && objc_msgSend_ruleCount(v315, v316, v317, v318, v319))
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v320, 0xB000200000006, @"TSTPivotTables", v321);
    }
  }

  begin = self->_pivotValueTypesByColumn.__begin_;
  end = self->_pivotValueTypesByColumn.__end_;
  if (begin != end)
  {
    v324 = *(v7 + 32);
    do
    {
      v325 = *begin;
      if (v324 == *(v7 + 36))
      {
        sub_2210BBC64((v7 + 32), v324 + 1);
      }

      *(*(v7 + 40) + 4 * v324++) = v325;
      *(v7 + 32) = v324;
      ++begin;
    }

    while (begin != end);
  }

  begin_node = self->_pivotDateGroupingTypesByColumn.__tree_.__begin_node_;
  if (begin_node != &self->_pivotDateGroupingTypesByColumn.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v328 = begin_node[5].__left_;
      v329 = *(v7 + 48);
      if (v329 == *(v7 + 52))
      {
        v330 = v329 + 1;
        sub_2210BBC64((v7 + 48), v329 + 1);
        *(*(v7 + 56) + 4 * v329) = left;
      }

      else
      {
        *(*(v7 + 56) + 4 * v329) = left;
        v330 = v329 + 1;
      }

      *(v7 + 48) = v330;
      v331 = *(v7 + 64);
      if (v331 == *(v7 + 68))
      {
        v332 = v331 + 1;
        sub_2210BBC64((v7 + 64), v331 + 1);
        *(*(v7 + 72) + 4 * v331) = v328;
      }

      else
      {
        *(*(v7 + 72) + 4 * v331) = v328;
        v332 = v331 + 1;
      }

      *(v7 + 64) = v332;
      isa = begin_node[1].__left_;
      if (isa)
      {
        do
        {
          v334 = isa;
          isa = isa->super.super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v334 = begin_node[2].__left_;
          v335 = v334->super.super.isa == begin_node;
          begin_node = v334;
        }

        while (!v335);
      }

      begin_node = v334;
    }

    while (v334 != &self->_pivotDateGroupingTypesByColumn.__tree_.__end_node_);
  }

  __p._lower = 0x1500000004;
  LODWORD(__p._upper) = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(v4, v308, &__p, v7, v309);
  __p._lower = 0x1600000004;
  LODWORD(__p._upper) = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(v4, v336, &__p, v7, v337);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v338, 60, v7, v339);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v340, 61, v7, v341);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v342, 62, v7, v343);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v344, 63, v7, v345);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v346, 64, v7, v347);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v348, 65, v7, v349);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v350, 66, v7, v351);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v352, 67, v7, v353);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v354, 68, v7, v355);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v356, 69, v7, v357);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v358, 71, v7, v359);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v360, 72, v7, v361);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v362, 73, v7, v363);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v364, 74, v7, v365);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v366, 75, v7, v367);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v368, 76, v7, v369);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v370, 77, v7, v371);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v372, 78, v7, v373);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v374, 79, v7, v375);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v376, 80, v7, v377);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v378, 70, v7, v379);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v380, 82, v7, v381);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v382, 85, v7, v383);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v4, v384, 86, v7, v385);
  v390 = objc_msgSend_archivingCompatibilityVersion(self, v386, v387, v388, v389);
  if (objc_msgSend_tableSizeClass(self, v391, v392, v393, v394) >= 2 && v390 <= 0xA000000000002)
  {
    TSUSetCrashReporterInfo();
    v413 = MEMORY[0x277D81150];
    v417 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v414, "[TSTTableModel saveToArchiver:]", v415, v416, "[TSTTableModel saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 3654);
    v421 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v418, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v419, v420);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v413, v422, v417, v421, 3654, 1, "Bad table model feature version!");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_setMessageVersion_(v4, v395, v390, v396, v397);
  if (v390 == 0x300020000000ALL || v390 == 0x4000100000000)
  {
    goto LABEL_370;
  }

  if (v390 != 0xA000000000003)
  {
    if (*MEMORY[0x277D808F0] == v390)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, v390, @"TSTFutureProofCell", v400);
      goto LABEL_371;
    }

    if (v390 <= 0xD000000000000)
    {
      if (v390 == 0xB000200000006)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, 0xB000200000006, @"TSTPivotTables", v400);
        goto LABEL_371;
      }

      if (v390 == 0xC000000000007)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, 0xC000000000007, @"TSTPivotTables v2", v400);
        goto LABEL_371;
      }
    }

    else
    {
      switch(v390)
      {
        case 0xD000000000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, 0xD000000000001, @"TSTDropPreBNCData", v400);
          goto LABEL_371;
        case 0xD000000000002:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, 0xD000000000002, @"TSTPivotTables MoreAggregates", v400);
          goto LABEL_371;
        case 0xE000400000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, 0xE000400000001, @"TSTArrayFormulas", v400);
          goto LABEL_371;
      }
    }

    v401 = MEMORY[0x277D81150];
    v402 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v398, "NSString *TSTFeatureIdentifierForCompatibilityVersion(TSPVersion)", v399, v400);
    v406 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v403, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCompatibility.h", v404, v405);
    v407 = NSStringFromTSPVersion();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v401, v408, v402, v406, 99, 0, "Unimplemented version for TSTCompatibility: %@", v407);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v409, v410, v411, v412);
LABEL_370:
    objc_msgSend_requiresDocumentVersion_(v4, v398, v390, v399, v400);
    goto LABEL_371;
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v398, 0xA000000000003, @"TSTExpandedTables", v400);
LABEL_371:
}

- (void)updateCalcEngineForTableSize
{
  if (objc_msgSend_isRegisteredWithCalcEngine(self, a2, v2, v3, v4))
  {
    calcEngine = self->_calcEngine;
    if (calcEngine)
    {
      v32 = calcEngine;
    }

    else
    {
      v33 = objc_msgSend_documentRoot(self, v6, v7, v8, v9);
      v19 = objc_msgSend_calculationEngine(v33, v15, v16, v17, v18);

      v32 = v19;
    }

    v20 = objc_msgSend_range(self, v11, v12, v13, v14);
    v22 = j__TSUCellRectToTSCERangeCoordinate(v20, v21);
    v24 = v23;
    v28 = objc_msgSend_bodyRange(self, v23, v25, v26, v27);
    v30 = j__TSUCellRectToTSCERangeCoordinate(v28, v29);
    objc_msgSend_setTableRange_bodyRange_forTableUID_(v32, v31, v22, v24, v30, v31, &self->_tableUID);
  }
}

- (void)setPresetNeedsStrongOwnership:(BOOL)a3
{
  if (self->_presetNeedsStrongOwnership != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_presetNeedsStrongOwnership = a3;
  }
}

- (TSKUIDStruct)conditionalStyleFormulaOwnerUID
{
  v5 = objc_msgSend_conditionalStyleFormulaOwner(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_ownerUID(v5, v6, v7, v8, v9);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = v11;
  v15 = v13;
  result._upper = v15;
  result._lower = v14;
  return result;
}

- (void)setTableName:(id)a3
{
  v22 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_tableName, a3);
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_calcEngine(self, v13, v14, v15, v16);
    objc_msgSend_markIndirectCallsAsDirty(v17, v18, v19, v20, v21);
  }
}

- (void)setTableNameEnabled:(BOOL)a3
{
  if (self->_tableNameEnabled != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_tableNameEnabled = a3;
  }
}

- (void)setTableNameBorderEnabled:(BOOL)a3
{
  if (self->_tableNameBorderEnabled != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_tableNameBorderEnabled = a3;
  }
}

- (void)setTableNameHeight:(double)a3
{
  if (self->_tableNameHeight != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5);
    self->_tableNameHeight = a3;
  }
}

- (void)setRepeatingHeaderRowsEnabled:(BOOL)a3
{
  if (self->_repeatingHeaderRowsEnabled != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_repeatingHeaderRowsEnabled = a3;
  }
}

- (void)setRepeatingHeaderColumnsEnabled:(BOOL)a3
{
  if (self->_repeatingHeaderColumnsEnabled != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_repeatingHeaderColumnsEnabled = a3;
  }
}

- (void)setStyleApplyClearsAll:(BOOL)a3
{
  if (self->_styleApplyClearsAll != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_styleApplyClearsAll = a3;
  }
}

- (void)setHeaderRowsFrozen:(BOOL)a3
{
  if (self->_headerRowsFrozen != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_headerRowsFrozen = a3;
  }
}

- (void)setHeaderColumnsFrozen:(BOOL)a3
{
  if (self->_headerColumnsFrozen != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_headerColumnsFrozen = a3;
  }
}

- (void)setTableInfo:(id)a3
{
  v4 = a3;
  tableInfo = self->_tableInfo;
  v49 = v4;
  if (tableInfo != v4)
  {
    if (tableInfo)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel setTableInfo:]", v7, v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 3726, 0, "Unexpected replacement of backpointer tableInfo %p with %p.", self->_tableInfo, v49);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }

    if (!v49)
    {
      goto LABEL_13;
    }

    if (self->_isAPivotDataModel)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel setTableInfo:]", v7, v8);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 3729, 0, "Do not set a tableInfo pointer on a pivotDataModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    calcEngine = self->_calcEngine;
    if (calcEngine)
    {
      v33 = calcEngine;
      v36 = objc_msgSend_ownerKindForOwnerUID_(v33, v34, self->_tableUID._lower, self->_tableUID._upper, v35);
    }

    else
    {
      v33 = objc_msgSend_calcEngine(v49, v5, v6, v7, v8);
      if (!v33)
      {
LABEL_12:

LABEL_13:
        self->_tableInfo = v49;
        objc_msgSend_setTableInfo_(self->_sortRuleReferenceTracker, v5, v49, v7, v8);
        goto LABEL_14;
      }

      v36 = objc_msgSend_ownerKindForOwnerUID_(v33, v37, self->_tableUID._lower, self->_tableUID._upper, v38);
    }

    if (v36 == 100)
    {
      TSUSetCrashReporterInfo();
      v39 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel setTableInfo:]", v41, v42, "[TSTTableModel setTableInfo:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 3734, 100);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v48, v43, v47, 3734, 1, "Trying to set a non-nil tableInfo on tableModel of type %d, not allowed.", 100);

      TSUCrashBreakpoint();
      abort();
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)setIsAPivotDataModel:(BOOL)a3
{
  if (a3 && self->_tableInfo)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setIsAPivotDataModel:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 3745, 0, "A pivotDataModel cannot have a tableInfo pointer.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  self->_isAPivotDataModel = a3;
}

- (id)createPivotOwner
{
  pivotOwner = self->_pivotOwner;
  if (!pivotOwner)
  {
    objc_msgSend_willModify(self, a2, v2, v3, v4);
    v7 = [TSTPivotOwner alloc];
    v11 = objc_msgSend_initWithTableModel_(v7, v8, self, v9, v10);
    v12 = self->_pivotOwner;
    self->_pivotOwner = v11;

    pivotOwner = self->_pivotOwner;
  }

  return pivotOwner;
}

- (void)clearPivotOwner
{
  if (self->_pivotOwner)
  {
    objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
    pivotOwner = self->_pivotOwner;
    self->_pivotOwner = 0;
  }
}

- (void)setNumberOfHeaderRows:(TSUModelRowIndex)a3
{
  objc_msgSend_willModify(self, a2, *&a3._row, v3, v4);
  self->_numberOfHeaderRows = a3;
  objc_msgSend_resetMergeCache(self->_mergeOwner, v7, v8, v9, v10);

  objc_msgSend_updateCalcEngineForTableSize(self, v11, v12, v13, v14);
}

- (void)setNumberOfFooterRows:(TSUModelRowIndex)a3
{
  objc_msgSend_willModify(self, a2, *&a3._row, v3, v4);
  self->_numberOfFooterRows = a3;
  objc_msgSend_resetMergeCache(self->_mergeOwner, v7, v8, v9, v10);

  objc_msgSend_updateCalcEngineForTableSize(self, v11, v12, v13, v14);
}

- (void)setNumberOfHeaderColumns:(TSUModelColumnIndex)a3
{
  objc_msgSend_willModify(self, a2, *&a3._column, v3, v4);
  self->_numberOfHeaderColumns = a3;
  objc_msgSend_resetMergeCache(self->_mergeOwner, v7, v8, v9, v10);

  objc_msgSend_updateCalcEngineForTableSize(self, v11, v12, v13, v14);
}

- (void)setTableStylePreset:(id)a3
{
  v9 = a3;
  if (self->_tableStylePreset != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableStylePreset, a3);
  }
}

- (void)setTableStyle:(id)a3
{
  v9 = a3;
  if (self->_tableStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableStyle, a3);
  }
}

- (void)setBodyCellStyle:(id)a3
{
  v9 = a3;
  if (self->_bodyCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_bodyCellStyle, a3);
  }
}

- (void)setHeaderRowCellStyle:(id)a3
{
  v9 = a3;
  if (self->_headerRowCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_headerRowCellStyle, a3);
  }
}

- (void)setHeaderColumnCellStyle:(id)a3
{
  v9 = a3;
  if (self->_headerColumnCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_headerColumnCellStyle, a3);
  }
}

- (void)setFooterRowCellStyle:(id)a3
{
  v9 = a3;
  if (self->_footerRowCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_footerRowCellStyle, a3);
  }
}

- (void)setCategoryLevel1CellStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel1CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel1CellStyle, a3);
  }
}

- (void)setCategoryLevel2CellStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel2CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel2CellStyle, a3);
  }
}

- (void)setCategoryLevel3CellStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel3CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel3CellStyle, a3);
  }
}

- (void)setCategoryLevel4CellStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel4CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel4CellStyle, a3);
  }
}

- (void)setCategoryLevel5CellStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel5CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel5CellStyle, a3);
  }
}

- (void)setlabelLevel1CellStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel1CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel1CellStyle, a3);
  }
}

- (void)setlabelLevel2CellStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel2CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel2CellStyle, a3);
  }
}

- (void)setlabelLevel3CellStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel3CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel3CellStyle, a3);
  }
}

- (void)setlabelLevel4CellStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel4CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel4CellStyle, a3);
  }
}

- (void)setlabelLevel5CellStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel5CellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel5CellStyle, a3);
  }
}

- (void)setBodyTextStyle:(id)a3
{
  v9 = a3;
  if (self->_bodyTextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_bodyTextStyle, a3);
  }
}

- (void)setHeaderRowTextStyle:(id)a3
{
  v9 = a3;
  if (self->_headerRowTextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_headerRowTextStyle, a3);
  }
}

- (void)setHeaderColumnTextStyle:(id)a3
{
  v9 = a3;
  if (self->_headerColumnTextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_headerColumnTextStyle, a3);
  }
}

- (void)setFooterRowTextStyle:(id)a3
{
  v9 = a3;
  if (self->_footerRowTextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_footerRowTextStyle, a3);
  }
}

- (void)setCategoryLevel1TextStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel1TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel1TextStyle, a3);
  }
}

- (void)setCategoryLevel2TextStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel2TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel2TextStyle, a3);
  }
}

- (void)setCategoryLevel3TextStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel3TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel3TextStyle, a3);
  }
}

- (void)setCategoryLevel4TextStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel4TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel4TextStyle, a3);
  }
}

- (void)setCategoryLevel5TextStyle:(id)a3
{
  v9 = a3;
  if (self->_categoryLevel5TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryLevel5TextStyle, a3);
  }
}

- (void)setlabelLevel1TextStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel1TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel1TextStyle, a3);
  }
}

- (void)setlabelLevel2TextStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel2TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel2TextStyle, a3);
  }
}

- (void)setlabelLevel3TextStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel3TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel3TextStyle, a3);
  }
}

- (void)setlabelLevel4TextStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel4TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel4TextStyle, a3);
  }
}

- (void)setlabelLevel5TextStyle:(id)a3
{
  v9 = a3;
  if (self->_labelLevel5TextStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_labelLevel5TextStyle, a3);
  }
}

- (void)setTableNameStyle:(id)a3
{
  v9 = a3;
  if (self->_tableNameStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableNameStyle, a3);
  }
}

- (void)setTableNameShapeStyle:(id)a3
{
  v9 = a3;
  if (self->_tableNameShapeStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableNameShapeStyle, a3);
  }
}

- (void)setPivotBodySummaryRowCellStyle:(id)a3
{
  v9 = a3;
  if (self->_pivotBodySummaryRowCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_pivotBodySummaryRowCellStyle, a3);
  }
}

- (void)setPivotBodySummaryColumnCellStyle:(id)a3
{
  v9 = a3;
  if (self->_pivotBodySummaryColumnCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_pivotBodySummaryColumnCellStyle, a3);
  }
}

- (void)setPivotHeaderColumnSummaryCellStyle:(id)a3
{
  v9 = a3;
  if (self->_pivotHeaderColumnSummaryCellStyle != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_pivotHeaderColumnSummaryCellStyle, a3);
  }
}

- (void)setColumnRowUIDMap:(id)a3
{
  v9 = a3;
  if (self->_columnRowUIDMap != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_columnRowUIDMap, a3);
  }
}

- (void)setTextImportRecord:(id)a3
{
  v26 = a3;
  if (v26)
  {
    v9 = objc_msgSend_importSettings(v26, v5, v6, v7, v8);
    v14 = objc_msgSend_type(v9, v10, v11, v12, v13);

    if (!v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel setTextImportRecord:]", v7, v8);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 3831, 0, "Bad import record type!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }
  }

  if (self->_textImportRecord != v26)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_textImportRecord, a3);
  }
}

- (TSTOwnerUidMapper)ownerUIDMapper
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_summaryModel(v6, v7, v8, v9, v10);
  v71[0] = objc_msgSend_aggregateFormulaOwnerUID(v11, v12, v13, v14, v15);
  v71[1] = v16;

  v17 = [TSTOwnerUidMapper alloc];
  v22 = objc_msgSend_hiddenStates(v6, v18, v19, v20, v21);
  v70[0] = objc_msgSend_hiddenStateOwnerForRowsUID(v22, v23, v24, v25, v26);
  v70[1] = v27;
  v31 = objc_msgSend_hiddenStates(v6, v27, v28, v29, v30);
  v69[0] = objc_msgSend_hiddenStateOwnerForColumnsUID(v31, v32, v33, v34, v35);
  v69[1] = v36;
  v68[0] = objc_msgSend_ownerUID(self->_conditionalStyleFormulaOwner, v36, v37, v38, v39);
  v68[1] = v40;
  v67[0] = objc_msgSend_ownerUID(self->_sortRuleReferenceTracker, v40, v41, v42, v43);
  v67[1] = v44;
  v66[0] = objc_msgSend_ownerUID(self->_mergeOwner, v44, v45, v46, v47);
  v66[1] = v48;
  v65[0] = objc_msgSend_ownerUID(self->_pencilAnnotationOwner, v48, v49, v50, v51);
  v65[1] = v52;
  v56 = objc_msgSend_groupBy(v6, v52, v53, v54, v55);
  v64[0] = objc_msgSend_groupByUid(v56, v57, v58, v59, v60);
  v64[1] = v61;
  v62 = objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(v17, v61, &self->_fromTableUID, &self->_tableUID, v70, v69, v68, v67, v66, v65, v71, v64);

  return v62;
}

- (TSTOwnerUidMapper)upgradeToSubOwnerUIDMapper
{
  v5 = objc_msgSend_ownerUIDMapper(self, a2, v2, v3, v4);
  objc_msgSend_setToUpgradeMapping(v5, v6, v7, v8, v9);

  return v5;
}

- (BOOL)verifySubOwnerUIDsUsed
{
  v6 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  if (objc_msgSend_needsSubOwnerIDUpgrade(v6, v7, v8, v9, v10))
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v20 = objc_msgSend_ownerUID(self->_conditionalStyleFormulaOwner, v11, v12, v13, v14);
    v21 = v16;
    if (!(v20 | v16) || (v20 == sub_2212C4930(&self->_tableUID._lower, 3, v17, v18, v19) ? (v22 = v21 == v16) : (v22 = 0), v22))
    {
      v39 = 1;
    }

    else
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableModel verifySubOwnerUIDsUsed]", v18, v19);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v26, v27);
      v33 = objc_msgSend_tableName(self, v29, v30, v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v24, v28, 3869, 0, "Conditional styles ownerUid isn't subOwner uid for table:%@", v33);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      v39 = 0;
    }

    v44 = objc_msgSend_ownerUID(self->_sortRuleReferenceTracker, v16, v17, v18, v19);
    v45 = v40;
    if (v44 | v40)
    {
      if (v44 != sub_2212C4930(&self->_tableUID._lower, 6, v41, v42, v43) || v45 != v40)
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel verifySubOwnerUIDsUsed]", v42, v43);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v50, v51);
        v192._lower = objc_msgSend_tableUID(self, v53, v54, v55, v56);
        v192._upper = v57;
        v58 = TSKUIDStruct::description(&v192);
        v63 = objc_msgSend_tableName(self, v59, v60, v61, v62);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v64, v48, v52, 3877, 0, "TableModel %@: Sort Rule ownerUid isn't subOwner uid table:%@", v58, v63);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
        v39 = 0;
      }
    }

    v73 = objc_msgSend_ownerUID(self->_mergeOwner, v40, v41, v42, v43);
    v74 = v69;
    if (v73 | v69)
    {
      if (v73 != sub_2212C4930(&self->_tableUID._lower, 5, v70, v71, v72) || v74 != v69)
      {
        v76 = MEMORY[0x277D81150];
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "[TSTTableModel verifySubOwnerUIDsUsed]", v71, v72);
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v79, v80);
        v86 = objc_msgSend_tableName(self, v82, v83, v84, v85);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v87, v77, v81, 3884, 0, "Merge ownerUid isn't subOwner uid table:%@", v86);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
        v39 = 0;
      }
    }

    v96 = objc_msgSend_ownerUID(self->_pencilAnnotationOwner, v69, v70, v71, v72);
    v97 = v92;
    if (v96 | v92 && (v96 != sub_2212C4930(&self->_tableUID._lower, 0xA, v93, v94, v95) || v97 != v92))
    {
      v98 = MEMORY[0x277D81150];
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "[TSTTableModel verifySubOwnerUIDsUsed]", v94, v95);
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v101, v102);
      v108 = objc_msgSend_tableName(self, v104, v105, v106, v107);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v109, v99, v103, 3892, 0, "Pencil Annotation ownerUid isn't subOwner uid table:%@", v108);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
      v39 = 0;
    }

    pivotOwner = self->_pivotOwner;
    if (pivotOwner)
    {
      v116 = objc_msgSend_ownerUID(pivotOwner, v92, v93, v94, v95);
      v117 = v92;
      if (v116 | v92)
      {
        if (v116 != sub_2212C4930(&self->_tableUID._lower, 0x11, v115, v94, v95) || v117 != v92)
        {
          v118 = MEMORY[0x277D81150];
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "[TSTTableModel verifySubOwnerUIDsUsed]", v94, v95);
          v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v121, v122);
          v128 = objc_msgSend_tableName(self, v124, v125, v126, v127);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v129, v119, v123, 3901, 0, "Pivot ownerUid isn't subOwner uid table:%@", v128);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132, v133);
          v39 = 0;
        }
      }
    }

    LODWORD(v15) = v39 & objc_msgSend_verifySubOwnerUIDsUsed_(self->_categoryOwner, v92, &self->_tableUID, v94, v95);
    hiddenStateFormulaOwnerForRows = self->_hiddenStateFormulaOwnerForRows;
    if (hiddenStateFormulaOwnerForRows)
    {
      v139 = objc_msgSend_ownerUID(hiddenStateFormulaOwnerForRows, v134, v135, v136, v137);
      if (v139 | v134)
      {
        v140 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForRows, v134, v135, v136, v137);
        v142 = v141;
        if (v140 != sub_2212C4930(&self->_tableUID._lower, 4, v143, v144, v145) || v142 != v134)
        {
          v146 = MEMORY[0x277D81150];
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, "[TSTTableModel verifySubOwnerUIDsUsed]", v136, v137);
          v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v148, v149);
          v155 = objc_msgSend_tableName(self, v151, v152, v153, v154);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v156, v15, v150, 3912, 0, "TSTHiddenStateFORMULAOwner ownerUid isn't subOwner uid table:%@", v155);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v157, v158, v159, v160);
          LOBYTE(v15) = 0;
        }
      }
    }

    hiddenStateFormulaOwnerForColumns = self->_hiddenStateFormulaOwnerForColumns;
    if (hiddenStateFormulaOwnerForColumns)
    {
      v162 = objc_msgSend_ownerUID(hiddenStateFormulaOwnerForColumns, v134, v135, v136, v137);
      if (v162 | v163)
      {
        v167 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForColumns, v163, v164, v165, v166);
        v169 = v168;
        if (v167 != sub_2212C4930(&self->_tableUID._lower, 0xB, v170, v171, v172) || v169 != v173)
        {
          v176 = MEMORY[0x277D81150];
          v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "[TSTTableModel verifySubOwnerUIDsUsed]", v174, v175);
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v179, v180);
          v185 = objc_msgSend_tableName(self, v181, v182, v183, v184);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v186, v177, v15, 3919, 0, "TSTHiddenStateFORMULAOwner ownerUid isn't subOwner uid table:%@", v185);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v187, v188, v189, v190);
          LOBYTE(v15) = 0;
        }
      }
    }
  }

  return v15;
}

- (TSTOwnerUidMapper)identityOwnerUIDMapper
{
  v5 = objc_msgSend_ownerUIDMapper(self, a2, v2, v3, v4);
  objc_msgSend_setToIdentityMapping(v5, v6, v7, v8, v9);

  return v5;
}

- (int)tableWritingDirection
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_intValueForProperty_(v5, v6, 798, v7, v8);

  return v9;
}

- (id)metadataForRowIndex:(TSUModelRowIndex)a3 hidingAction:(unsigned __int8)a4
{
  v5 = *&a3._row;
  if (a3._row == 0x7FFFFFFF)
  {
    v6 = 0;
  }

  else
  {
    v7 = a4;
    v9 = objc_msgSend_rowUIDForRowIndex_(self->_columnRowUIDMap, a2, *&a3._row, a4, v4);
    v6 = objc_msgSend_metadataForRowIndex_hidingAction_uuid_(self->_dataStore, v10, v5, v7, v9, v10);
  }

  return v6;
}

- (id)metadataForColumnIndex:(TSUModelColumnIndex)a3 hidingAction:(unsigned __int8)a4
{
  if (a3._column == 0x7FFF)
  {
    v6 = 0;
  }

  else
  {
    v7 = a4;
    v9 = objc_msgSend_columnUIDForColumnIndex_(self->_columnRowUIDMap, a2, a3._column, a4, v4);
    v6 = objc_msgSend_metadataForColumnIndex_hidingAction_uuid_(self->_dataStore, v10, a3._column, v7, v9, v10);
  }

  return v6;
}

- (void)p_createCommentMapsIfNeeded
{
  commentStorageMap = self->_commentStorageMap;
  if (self->_commentHostingMap)
  {
    if (commentStorageMap)
    {
      return;
    }

    goto LABEL_5;
  }

  if (commentStorageMap)
  {
LABEL_5:
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel p_createCommentMapsIfNeeded]", v2, v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 3980, 0, "_commentStorageMap should be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  v17 = objc_alloc(MEMORY[0x277CCAB00]);
  v19 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v17, v18, 5, 0, 1);
  commentHostingMap = self->_commentHostingMap;
  self->_commentHostingMap = v19;

  v21 = objc_alloc(MEMORY[0x277CCAB00]);
  v23 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v21, v22, 0, 5, 1);
  v24 = self->_commentStorageMap;
  self->_commentStorageMap = v23;
}

- (NSMapTable)commentHostingMap
{
  objc_msgSend_p_createCommentMapsIfNeeded(self, a2, v2, v3, v4);
  commentHostingMap = self->_commentHostingMap;

  return commentHostingMap;
}

- (NSMapTable)commentStorageMap
{
  objc_msgSend_p_createCommentMapsIfNeeded(self, a2, v2, v3, v4);
  commentStorageMap = self->_commentStorageMap;

  return commentStorageMap;
}

- (unint64_t)tableSizeClass
{
  v6 = objc_msgSend_numberOfRows(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfColumns(self, v7, v8, v9, v10);
  v16 = v11;
  if (!HIWORD(v6) && v11 <= 0xFFu)
  {
    if (v11 != 255)
    {
      return 1;
    }

    v17 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    isCategorized = objc_msgSend_isCategorized(v17, v18, v19, v20, v21);

    if (!isCategorized)
    {
      return 1;
    }
  }

  if (v16 * v6 > 0x2625A0 || v6 > 0x3D090)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)archivingCompatibilityVersion
{
  result = self->_archivingCompatibilityVersion;
  if (result >= 0x300020000000ALL)
  {
    if (result > 0xA000000000002)
    {
      return result;
    }
  }

  else
  {
    self->_archivingCompatibilityVersion = 0x300020000000ALL;
  }

  if (objc_msgSend_tableSizeClass(self, a2, v2, v3, v4) >= 2)
  {
    self->_archivingCompatibilityVersion = 0xA000000000003;
  }

  v11 = objc_msgSend_archivingCompatibilityVersion(self->_dataStore, v7, v8, v9, v10);
  result = self->_archivingCompatibilityVersion;
  if (v11 > result)
  {
    self->_archivingCompatibilityVersion = v11;
    return v11;
  }

  return result;
}

- (TSTTableSortOrder)sortOrder
{
  sortOrder = self->_sortOrder;
  if (sortOrder)
  {
    v4 = sortOrder;
  }

  else
  {
    v4 = objc_msgSend_sortOrderWithRules_type_(TSTTableSortOrder, a2, MEMORY[0x277CBEBF8], 0, v2);
  }

  return v4;
}

- (void)setSortOrder:(id)a3
{
  v22 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  v12 = objc_msgSend_copy(v22, v8, v9, v10, v11);
  objc_storeStrong(&self->_sortOrder, v12);
  sortRuleReferenceTracker = self->_sortRuleReferenceTracker;
  v18 = objc_msgSend_rules(self->_sortOrder, v14, v15, v16, v17);
  objc_msgSend_updateForSortRules_(sortRuleReferenceTracker, v19, v18, v20, v21);
}

- (void)resetSortRuleReferenceTrackerForInsert
{
  sortRuleReferenceTracker = self->_sortRuleReferenceTracker;
  v9 = objc_msgSend_rules(self->_sortOrder, a2, v2, v3, v4);
  objc_msgSend_updateForSortRules_(sortRuleReferenceTracker, v6, v9, v7, v8);
}

- (TSTCellWillChangeDistributor)cellWillChangeDistributor
{
  cellWillChangeDistributor = self->_cellWillChangeDistributor;
  if (!cellWillChangeDistributor)
  {
    v4 = objc_opt_new();
    v5 = self->_cellWillChangeDistributor;
    self->_cellWillChangeDistributor = v4;

    cellWillChangeDistributor = self->_cellWillChangeDistributor;
  }

  return cellWillChangeDistributor;
}

- (void)setTableUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  objc_msgSend_willModify(self, a2, a3._lower, a3._upper, v3);
  p_tableUID = &self->_tableUID;
  self->_tableUID._lower = lower;
  self->_tableUID._upper = upper;
  v51 = objc_msgSend_hiddenStatesOwner(self, v8, v9, v10, v11);
  objc_msgSend_setBaseTableUID_(v51, v12, lower, upper, v13);

  v52 = objc_msgSend_categoryOwner(self, v14, v15, v16, v17);
  objc_msgSend_setBaseTableUID_(v52, v18, lower, upper, v19);

  v53 = objc_msgSend_hauntedOwner(self, v20, v21, v22, v23);
  objc_msgSend_setBaseTableUID_(v53, v24, lower, upper, v25);

  v54 = objc_msgSend_spillOwner(self, v26, v27, v28, v29);
  objc_msgSend_setBaseTableUID_(v54, v30, lower, upper, v31);

  v55 = objc_msgSend_sortRuleReferenceTracker(self, v32, v33, v34, v35);
  objc_msgSend_setBaseTableUID_(v55, v36, lower, upper, v37);

  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    v56 = objc_msgSend_summaryModel(tableInfo, v38, v39, v40, v41);
    v47 = objc_msgSend_aggregateFormulaOwner(v56, v43, v44, v45, v46);
    objc_msgSend_setTableUID_(v47, v48, p_tableUID, v49, v50);
  }
}

- (NSUUID)nsTableUID
{
  v8._lower = objc_msgSend_tableUID(self, a2, v2, v3, v4);
  v8._upper = v5;
  v6 = TSKUIDStruct::NSUUIDValue(&v8);

  return v6;
}

- (void)setFromTableUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  objc_msgSend_willModify(self, a2, a3._lower, a3._upper, v3);
  self->_fromTableUID._lower = lower;
  self->_fromTableUID._upper = upper;
}

- (void)setFromGroupByUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  objc_msgSend_willModify(self, a2, a3._lower, a3._upper, v3);
  self->_fromGroupByUID._lower = lower;
  self->_fromGroupByUID._upper = upper;
}

- (void)setWasCut:(BOOL)a3
{
  if (self->_wasCut != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_wasCut = a3;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = objc_msgSend_tableName(self, v5, v6, v7, v8);
  v30._lower = objc_msgSend_tableUID(self, v10, v11, v12, v13);
  v30._upper = v14;
  v18 = TSKUIDStruct::description(&v30);
  if (*&self->_fromTableUID == 0)
  {
    v28 = 0;
    v29 = &stru_2834BADA0;
    objc_msgSend_stringWithFormat_(v3, v15, @"<%@> %@ (%@%@)", v16, v17, v4, v9, v18, &stru_2834BADA0);
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    self = TSKUIDStruct::description(&self->_fromTableUID);
    v29 = objc_msgSend_stringWithFormat_(v19, v20, @" From: %@", v21, v22, self);
    v28 = 1;
    objc_msgSend_stringWithFormat_(v3, v23, @"<%@> %@ (%@%@)", v24, v25, v4, v9, v18, v29);
  }
  v26 = ;
  if (v28)
  {
  }

  return v26;
}

- (id)unnamedTableString
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v10 = objc_msgSend_documentLocale(v5, v6, v7, v8, v9);

  v14 = v10;
  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel unnamedTableString]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 4168, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    v14 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v26, v27, v28, v29);
  }

  v33 = objc_msgSend_localizedStringForKey_value_table_(v14, v11, @"Table %@", &stru_2834BADA0, @"TSTables");
  if (!v33)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTTableModel unnamedTableString]", v31, v32);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v35, v39, 4176, 0, "invalid nil value for '%{public}s'", "untitledTableNameFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v50 = objc_msgSend_locale(v14, v46, v47, v48, v49);
  objc_msgSend_setLocale_(v45, v51, v50, v52, v53);

  v60 = objc_msgSend_stringFromNumber_(v45, v54, &unk_28350EB60, v55, v56);
  if (v33)
  {
    v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v57, v33, v58, v59, v60);
  }

  else
  {
    v61 = &stru_2834BADA0;
  }

  return v61;
}

- (TSUModelCellRect)cellRangeForTableArea:(unint64_t)a3
{
  objc_msgSend_range(self, a2, a3, v3, v4);
  row = self->_numberOfHeaderRows._row;

  v9 = MEMORY[0x2821F9670](TSTTableInfo, sel_cellRangeForTableArea_givenTableSize_numberOfHeaderRows_numberOfFooterRows_numberOfHeaderColumns_, a3, v7, row);
  result.var0.size = v10;
  result.var0.origin = v9;
  return result;
}

- (unint64_t)tableAreaForBaseCellCoord:(TSUModelCellCoord)a3
{
  column = self->_numberOfHeaderColumns._column;
  row = self->_numberOfHeaderRows._row;
  objc_msgSend_numberOfRows(self, a2, *&a3, v3, v4);

  return (MEMORY[0x2821F9670])(TSTTableInfo, sel_tableAreaForCellID_inTableWithHeaderColumns_headerRows_footerRows_totalRows_, a3, column, row);
}

- (unint64_t)tableAreaForRow:(TSUModelRowIndex)a3
{
  if (a3._row == 0x7FFFFFFF)
  {
    return 0;
  }

  if (self->_numberOfHeaderRows._row > a3._row)
  {
    return 2;
  }

  if (objc_msgSend_numberOfRows(self, a2, *&a3._row, v3, v4) - self->_numberOfFooterRows._row > a3._row)
  {
    return 1;
  }

  return 4;
}

- (unint64_t)tableAreaForColumn:(TSUModelColumnIndex)a3
{
  if (a3._column == 0x7FFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderColumns(self, a2, *&a3._column, v3, v4) <= a3._column)
  {
    return 1;
  }

  return 3;
}

- (unint64_t)tableStyleAreaForBaseCellCoord:(TSUModelCellCoord)a3
{
  v31.origin = objc_msgSend_bodyRange(self, a2, *&a3, v3, v4);
  v31.size = v7;
  coord = a3._coord;
  if (TSUCellRect::contains(&v31, coord))
  {
    return 1;
  }

  v30.origin = objc_msgSend_headerRowRange(self, v9, v10, v11, v12);
  v30.size = v14;
  v15 = a3._coord;
  if (TSUCellRect::contains(&v30, v15))
  {
    return 2;
  }

  v29.origin = objc_msgSend_actualHeaderColumnRange(self, v16, v17, v18, v19);
  v29.size = v20;
  v21 = a3._coord;
  if (TSUCellRect::contains(&v29, v21))
  {
    return 3;
  }

  v28.origin = objc_msgSend_footerRowRange(self, v22, v23, v24, v25);
  v28.size = v26;
  v27 = a3._coord;
  if ((TSUCellRect::contains(&v28, v27) & 1) == 0)
  {
    if (TSUCellRect::contains(&v29))
    {
      return 3;
    }

    if (TSUCellRect::contains(&v30))
    {
      return 2;
    }

    if ((TSUCellRect::contains(&v28) & 1) == 0 && (!TSUCellRect::isValid(&v28) || TSUCellRect::lastRow(&v28) >= a3._coord.row))
    {
      return 1;
    }
  }

  return 4;
}

- (unint64_t)tableStyleAreaForRow:(TSUModelRowIndex)a3
{
  if (a3._row == 0x7FFFFFFF)
  {
    return 0;
  }

  if (self->_numberOfHeaderRows._row > a3._row)
  {
    return 2;
  }

  if (objc_msgSend_numberOfRows(self, a2, *&a3._row, v3, v4) - self->_numberOfFooterRows._row > a3._row)
  {
    return 1;
  }

  return 4;
}

- (id)tableAreasForBaseCellRect:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  v5 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v40.origin = objc_msgSend_bodyRange(self, v6, v7, v8, v9);
  v40.size = v10;
  if (TSUCellRect::intersects(&v40, &var0))
  {
    objc_msgSend_addIndex_(v5, v11, 1, v13, v14);
  }

  v40.origin = objc_msgSend_headerRowRange(self, v11, v12, v13, v14);
  v40.size = v15;
  if (TSUCellRect::intersects(&v40, &var0))
  {
    objc_msgSend_addIndex_(v5, v16, 2, v18, v19);
  }

  v40.origin = objc_msgSend_actualHeaderColumnRange(self, v16, v17, v18, v19);
  v40.size = v20;
  if (TSUCellRect::intersects(&v40, &var0))
  {
    objc_msgSend_addIndex_(v5, v21, 3, v23, v24);
  }

  v40.origin = objc_msgSend_footerRowRange(self, v21, v22, v23, v24);
  v40.size = v25;
  if (TSUCellRect::intersects(&v40, &var0))
  {
    objc_msgSend_addIndex_(v5, v26, 4, v28, v29);
  }

  v40.origin = objc_msgSend_topCornerRange(self, v26, v27, v28, v29);
  v40.size = v30;
  if (TSUCellRect::intersects(&v40, &var0))
  {
    objc_msgSend_addIndex_(v5, v31, 5, v33, v34);
  }

  v40.origin = objc_msgSend_bottomCornerRange(self, v31, v32, v33, v34);
  v40.size = v35;
  if (TSUCellRect::intersects(&v40, &var0))
  {
    objc_msgSend_addIndex_(v5, v36, 6, v37, v38);
  }

  return v5;
}

- (int)getDefaultCell:(id)a3 forTableStyleArea:(unint64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v7, a4, v8, v9);
  objc_msgSend_setCellStyle_(v6, v11, v10, v12, v13);

  v17 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v14, a4, v15, v16);
  objc_msgSend_setTextStyle_(v6, v18, v17, v19, v20);

  return 0;
}

- (int)getDefaultCell:(id)a3 forBaseCellCoord:(TSUModelCellCoord)a4
{
  v6 = a3;
  v21.origin = objc_msgSend_range(self, v7, v8, v9, v10);
  v21.size = v11;
  coord = a4._coord;
  if (TSUCellRect::contains(&v21, coord))
  {
    v16 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, v13, *&a4, v14, v15);
    DefaultCell_forTableStyleArea = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v17, v6, v16, v18);
  }

  else
  {
    DefaultCell_forTableStyleArea = 3;
  }

  return DefaultCell_forTableStyleArea;
}

- (BOOL)cellExistsAtBaseCellCoord:(TSUModelCellCoord)a3
{
  v14.origin = objc_msgSend_range(self, a2, *&a3, v3, v4);
  v14.size = v7;
  coord = a3._coord;
  v9 = TSUCellRect::contains(&v14, coord);
  if (v9)
  {
    LOBYTE(v9) = objc_msgSend_cellExistsAtCellID_(self->_dataStore, v10, *&a3, v11, v12);
  }

  return v9;
}

- (int)getCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4 suppressCellBorder:(BOOL)a5
{
  v8 = a3;
  objc_msgSend_clear(v8, v9, v10, v11, v12);
  v37.origin = objc_msgSend_range(self, v13, v14, v15, v16);
  v37.size = v17;
  coord = a4._coord;
  if (TSUCellRect::contains(&v37, coord))
  {
    Cell_atCellID = objc_msgSend_getCell_atCellID_(self->_dataStore, v19, v8, *&a4, v20);
    v25 = Cell_atCellID;
    if (a5)
    {
      if ((Cell_atCellID & 1) == 0)
      {
LABEL_10:
        v26 = 1000;
        goto LABEL_11;
      }
    }

    else
    {
      if ((Cell_atCellID & 1) == 0 && !objc_msgSend_mightHaveCellBorderAtCellID_(self->_strokeSidecar, v22, *&a4, v23, v24))
      {
        goto LABEL_10;
      }

      v27 = objc_msgSend_cellBorderAtCellID_(self, v22, *&a4, v23, v24);
      objc_msgSend_setCellBorder_(v8, v28, v27, v29, v30);
      v35 = objc_msgSend_hasContent(v27, v31, v32, v33, v34) | v25;

      if ((v35 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v26 = 0;
  }

  else
  {
    v26 = 3;
  }

LABEL_11:

  return v26;
}

- (id)cellAtBaseCellCoord:(TSUModelCellCoord)a3
{
  if (!objc_msgSend_cellExistsAtBaseCellCoord_(self, a2, *&a3, v3, v4))
  {
LABEL_4:
    v14 = objc_msgSend_cellBorderAtCellID_(self, v7, *&a3, v9, v10);
    if (objc_msgSend_hasContent(v14, v15, v16, v17, v18))
    {
      v23 = objc_msgSend_newCell(self, v19, v20, v21, v22);
      objc_msgSend_setCellBorder_(v23, v24, v14, v25, v26);
    }

    else
    {
      v23 = 0;
    }

    v11 = v23;
    goto LABEL_8;
  }

  v11 = objc_msgSend_newCell(self, v7, v8, v9, v10);
  if (objc_msgSend_getCell_atBaseCellCoord_(self, v12, v11, *&a3, v13))
  {

    goto LABEL_4;
  }

LABEL_8:

  return v11;
}

- (void)updateCalculationEngineForFormula:(id)a3 inBaseCellCoord:(TSUModelCellCoord)a4 usingCalcEngine:(id)a5
{
  v8 = a3;
  v9 = a5;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v19, 0, 1);
  v18 = a4;
  if (!v9)
  {
    v9 = objc_msgSend_calcEngine(self, v10, v11, v12, v13);
  }

  v17[0] = objc_msgSend_tableUID(self, v10, v11, v12, v13);
  v17[1] = v14;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v16, &v19);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(v9, v15, v8, &v18, v17, &v16);
}

- (BOOL)hasFormulaAtBaseCellCoord:(TSUModelCellCoord)a3
{
  if (a3._coord.row == 0x7FFFFFFF || (*&a3 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasFormulaAtCellID_(self->_dataStore, a2, *&a3, v3, v4);
  }
}

- (int)p_shouldAllowSetCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4
{
  v6 = a3;
  v50.origin = objc_msgSend_range(self, v7, v8, v9, v10);
  v50.size = v11;
  coord = a4._coord;
  if (TSUCellRect::contains(&v50, coord))
  {
    if (!v6 && (objc_msgSend_isEmptyForDataStore(0, v13, v14, v15, v16) & 1) != 0)
    {
      goto LABEL_17;
    }

    numberOfColumns = v50.size.numberOfColumns;
    numberOfRows = v50.size.numberOfRows;
    v19 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v13, v14, v15, v16);
    v24 = objc_msgSend_maxNumberOfPopulatedCells(v19, v20, v21, v22, v23);

    if (numberOfColumns * numberOfRows >= v24)
    {
      v31 = objc_msgSend_cellExistsAtBaseCellCoord_(self, v25, *&a4, v27, v28);
      v29 = v31;
      if (v6)
      {
        v32 = v31;
      }

      else
      {
        v32 = 1;
      }

      if ((v32 & 1) == 0)
      {
        if (objc_msgSend_numberOfPopulatedCells(self, v25, v26, v27, v28) >= v24)
        {
          goto LABEL_18;
        }

        v29 = 0;
      }
    }

    else
    {
      v29 = 1;
    }

    if (!objc_msgSend_hasFormula(v6, v25, v26, v27, v28) || !objc_msgSend_hasMaxNumFormulas(self->_calcEngine, v33, v34, v35, v36) || v29 && (v41 = objc_msgSend_newCell(self, v37, v38, v39, v40), objc_msgSend_getCell_atBaseCellCoord_(self, v42, v41, *&a4, v43), hasFormula = objc_msgSend_hasFormula(v41, v44, v45, v46, v47), v41, (hasFormula & 1) != 0))
    {
LABEL_17:
      v30 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v30 = 1001;
    goto LABEL_19;
  }

  v30 = 3;
LABEL_19:

  return v30;
}

- (int)setCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4 ignoreFormula:(BOOL)a5 clearImportWarnings:(BOOL)a6 calcEngine:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a7;
  shouldAllowSetCell_atBaseCellCoord = objc_msgSend_p_shouldAllowSetCell_atBaseCellCoord_(self, v14, v12, *&a4, v15);
  if (!shouldAllowSetCell_atBaseCellCoord)
  {
    v21 = objc_msgSend_cellWillChangeDistributor(self, v16, v17, v18, v19);
    objc_msgSend_willApplyCell_baseCellCoord_tableUID_(v21, v22, v12, *&a4, &self->_tableUID);

    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(self->_dataStore, v23, v12, *&a4, &self->_tableUID, v13, self->_conditionalStyleFormulaOwner, v9, a6);
    v29 = objc_msgSend_cellBorder(v12, v24, v25, v26, v27);
    if (v29)
    {
      objc_msgSend_setCellBorder_atCellID_(self->_strokeSidecar, v28, v29, *&a4, v31);
    }

    else if (!v12)
    {
      strokeSidecar = self->_strokeSidecar;
      v33 = objc_msgSend_cellBorder(TSTCellBorder, v28, 0, v30, v31);
      objc_msgSend_setCellBorder_atCellID_(strokeSidecar, v34, v33, *&a4, v35);
    }
  }

  return shouldAllowSetCell_atBaseCellCoord;
}

- (int)p_shouldAllowApplyBaseCellMap:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_count(v4, v5, v6, v7, v8);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = objc_msgSend_numberOfPopulatedCells(self->_dataStore, v10, v11, v12, v13);
  v18 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v14, v15, v16, v17);
  v23 = objc_msgSend_maxNumberOfPopulatedCells(v18, v19, v20, v21, v22);

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v40[3] + v9 >= v23 && (objc_msgSend_isUIDBased(v4, v24, v25, v26, v27) & 1) == 0)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2210AAE6C;
    v33[3] = &unk_27845E130;
    v33[4] = self;
    v33[5] = &v39;
    v34 = v23;
    v33[6] = &v35;
    v33[7] = v9;
    objc_msgSend_enumerateCellsWithIDsUsingBlock_(v4, v28, v33, v29, v30);
  }

  v31 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v31;
}

- (int)setCellsWithBaseCellMap:(id)a3 ignoreFormulas:(BOOL)a4 skipDirtyingNonFormulaCells:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (objc_msgSend_isUIDBased(v8, v9, v10, v11, v12))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableModel setCellsWithBaseCellMap:ignoreFormulas:skipDirtyingNonFormulaCells:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 4568, 0, "using a uid based cellmap where a coord based one is expected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  shouldAllowApplyBaseCellMap = objc_msgSend_p_shouldAllowApplyBaseCellMap_(self, v13, v8, v14, v15);
  if (!shouldAllowApplyBaseCellMap)
  {
    v32 = objc_msgSend_tableInfo(self, v27, v28, v29, v30);
    v37 = objc_msgSend_groupBy(v32, v33, v34, v35, v36);
    objc_msgSend_startOfGroupingChangesBatch(v37, v38, v39, v40, v41);

    v46 = objc_msgSend_cellWillChangeDistributor(self, v42, v43, v44, v45);
    objc_msgSend_willApplyBaseCellMap_tableUID_(v46, v47, v8, &self->_tableUID, v48);

    objc_msgSend_setBordersWithCellMap_(self->_strokeSidecar, v49, v8, v50, v51);
    v60 = objc_msgSend_calcEngine(self, v52, v53, v54, v55);
    if (v60)
    {
      v61 = objc_msgSend_calcEngine(self, v56, v57, v58, v59);
    }

    else
    {
      v62 = objc_msgSend_documentRoot(self, v56, v57, v58, v59);
      v61 = objc_msgSend_calculationEngine(v62, v63, v64, v65, v66);
    }

    dataStore = self->_dataStore;
    conditionalStyleFormulaOwner = self->_conditionalStyleFormulaOwner;
    v89 = objc_msgSend_tsp_isInDocument(self, v69, v70, v71, v72);
    objc_msgSend_setCellMap_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormulas_skipDirtyingNonFormulaCells_doRichTextDOLC_(dataStore, v73, v8, &self->_tableUID, v61, conditionalStyleFormulaOwner, v6, v5, v89);
    v78 = objc_msgSend_tableInfo(self, v74, v75, v76, v77);
    v83 = objc_msgSend_groupBy(v78, v79, v80, v81, v82);
    objc_msgSend_endOfGroupingChangesBatch(v83, v84, v85, v86, v87);
  }

  return shouldAllowApplyBaseCellMap;
}

- (id)formatForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)a3 formatIsExplicitOut:(BOOL *)a4
{
  v91.origin = objc_msgSend_range(self, a2, *&a3, a4, v4);
  v91.size = v8;
  coord = a3._coord;
  if (!TSUCellRect::contains(&v91, coord))
  {
    v19 = 0;
    goto LABEL_19;
  }

  v13 = objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v10, *&a3, v11, v12);
  v18 = v13;
  if (v13)
  {
    if (a4)
    {
      *a4 = objc_msgSend_currentFormatIsExplicitForCalcEngine(v13, v14, v15, v16, v17);
    }

    v19 = objc_msgSend_currentFormat(v18, v14, v15, v16, v17);
    if (objc_msgSend_formatType(v19, v20, v21, v22, v23) != 268)
    {
      goto LABEL_15;
    }

    v28 = objc_msgSend_asDurationFormat(v19, v24, v25, v26, v27);
    objc_msgSend_durationTimeIntervalValue(v18, v29, v30, v31, v32);
    v37 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v28, v33, v34, v35, v36);
  }

  else
  {
    v19 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self->_dataStore, v14, *&a3, a4, 0);
    v43 = objc_msgSend_asDurationFormat(v19, v39, v40, v41, v42);
    v48 = objc_msgSend_useAutomaticUnits(v43, v44, v45, v46, v47);

    if (!v48)
    {
      goto LABEL_15;
    }

    v52 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, v49, *&a3, v50, v51);
    v57 = v52;
    if (!v52)
    {
      goto LABEL_15;
    }

    sub_2210B8F38(v52, v53, v54, v55, v56);
    if (v57[1] != 7)
    {
      goto LABEL_15;
    }

    v28 = objc_msgSend_asDurationFormat(v19, v58, v59, v60, v61);
    sub_2210B8F38(v57, v62, v63, v64, v65);
    sub_2210B8F38(v57, v66, v67, v68, v69);
    if (v57[1] != 7)
    {
      v74 = MEMORY[0x277D81150];
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "double TSTCellStorageDurationValue(TSTCellStorage *)", v72, v73);
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v77, v78);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 334, 0, "Asked for duration value from non-duration cell.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
    }

    v85 = sub_2211450B8(v57, 2, v71, v72, v73);
    v37 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v28, v86, v87, v88, v89, v85);
  }

  v38 = v37;

  v19 = v38;
LABEL_15:
  if (a4 && !v19)
  {
    *a4 = 0;
  }

LABEL_19:

  return v19;
}

- (unsigned)cellValueTypeAtBaseCellCoord:(TSUModelCellCoord)a3
{
  v21.origin = objc_msgSend_range(self, a2, *&a3, v3, v4);
  v21.size = v7;
  coord = a3._coord;
  if (!TSUCellRect::contains(&v21, coord))
  {
    return 0;
  }

  v12 = objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v9, *&a3, v10, v11);
  v17 = v12;
  if (v12)
  {
    v18 = objc_msgSend_valueType(v12, v13, v14, v15, v16);
  }

  else
  {
    v18 = objc_msgSend_valueTypeAtCellID_(self->_dataStore, v13, *&a3, v15, v16);
  }

  v19 = v18;

  return v19;
}

- (id)textStyleForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v24.origin = objc_msgSend_range(self, a2, *&a3, a4, v4);
  v24.size = v8;
  coord = a3._coord;
  if (TSUCellRect::contains(&v24, coord))
  {
    v13 = objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v10, *&a3, v11, v12);
    v18 = v13;
    if (v13)
    {
      v22 = objc_msgSend_textStyle(v13, v14, v15, v16, v17);
      if (!v22)
      {
        v22 = objc_msgSend_defaultTextStyleForBaseCellCoord_(self, v19, *&a3, v20, v21);
        if (a4)
        {
          *a4 = 1;
        }
      }
    }

    else
    {
      v22 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(self, v14, *&a3, a4, v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)hasCommentAtBaseCellCoord:(TSUModelCellCoord)a3
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, a2, *&a3, v3, v4);
  if (v5)
  {
    LODWORD(v5) = (*(v5 + 10) >> 3) & 1;
  }

  return v5;
}

- (void)clearCommentHostingMapForCommentStorage:(id)a3
{
  v41 = a3;
  if (!v41)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableModel clearCommentHostingMapForCommentStorage:]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 4705, 0, "Tables Comment Storage should not be empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_commentHostingMap(self, v4, v5, v6, v7);
  objc_msgSend_removeObjectForKey_(v19, v20, v41, v21, v22);

  v27 = objc_msgSend_commentStorageMap(self, v23, v24, v25, v26);
  v32 = objc_msgSend_rootCommentStorage(v41, v28, v29, v30, v31);
  v37 = objc_msgSend_storageUUID(v32, v33, v34, v35, v36);
  objc_msgSend_removeObjectForKey_(v27, v38, v37, v39, v40);
}

- (id)cachedCommentHostingForAnnotationUUID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_commentStorageMap(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, v4, v11, v12);

  if (v13)
  {
    v18 = objc_msgSend_commentHostingMap(self, v14, v15, v16, v17);
    v22 = objc_msgSend_objectForKey_(v18, v19, v13, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)a3 forCommentStorage:(id)a4
{
  v4 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_updateCommentMaps_(self, a2, *&a3, a4, 1);

  return v4;
}

- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)a3 forCommentStorage:(id)a4 updateCommentMaps:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableModel commentHostingAtBaseCellCoord:forCommentStorage:updateCommentMaps:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 4723, 0, "Tables Comment Storage should not be empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_commentHostingMap(self, v8, v9, v10, v11);
  v28 = objc_msgSend_objectForKey_(v24, v25, v12, v26, v27);

  if (!v28)
  {
    v33 = [TSTCommentHosting alloc];
    v38 = objc_msgSend_tableInfo(self, v34, v35, v36, v37);
    v28 = objc_msgSend_initWithStorage_forTableInfo_baseCellCoord_(v33, v39, v12, v38, *&a3);

    if (v5)
    {
      v40 = objc_msgSend_commentHostingMap(self, v29, v30, v31, v32);
      objc_msgSend_setObject_forKey_(v40, v41, v28, v12, v42);

      v47 = objc_msgSend_commentStorageMap(self, v43, v44, v45, v46);
      v52 = objc_msgSend_rootCommentStorage(v12, v48, v49, v50, v51);
      v57 = objc_msgSend_storageUUID(v52, v53, v54, v55, v56);
      objc_msgSend_setObject_forKey_(v47, v58, v12, v57, v59);
    }
  }

  v60 = objc_msgSend_storage(v28, v29, v30, v31, v32);

  if (v60 != v12)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSTTableModel commentHostingAtBaseCellCoord:forCommentStorage:updateCommentMaps:]", v62, v63);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v67, v68);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v70, v65, v69, 4734, 0, "Comment storages should be equal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  return v28;
}

- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)a3
{
  v9 = objc_msgSend_commentStorageAtCellID_(self->_dataStore, a2, *&a3, v3, v4);
  if (v9)
  {
    v10 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_(self, v7, *&a3, v9, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)setCommentStorage:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4
{
  v6 = a3;
  v11 = objc_msgSend_newCell(self, v7, v8, v9, v10);
  objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v12, v11, *&a4, 1);
  v17 = objc_msgSend_commentStorage(v11, v13, v14, v15, v16);
  objc_msgSend_commentWillBeAddedToDocumentRoot(v6, v18, v19, v20, v21);
  if (v17 && v17 != v6)
  {
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self, v22, v17, *&a4, *MEMORY[0x277D805C8]);
  }

  objc_msgSend_setCommentStorage_(v11, v22, v6, v23, v24);
  v26 = objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self, v25, v11, *&a4, 1, 1);
  v28 = v26;
  if (v6 && !v26)
  {
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self, v27, v6, *&a4, *MEMORY[0x277D805B8]);
  }

  return v28;
}

- (int)removeCommentStorageAtBaseCellCoord:(TSUModelCellCoord)a3
{
  v7 = objc_msgSend_newCell(self, a2, *&a3, v3, v4);
  Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v8, v7, *&a3, 1);
  if (!Cell_atBaseCellCoord_suppressCellBorder)
  {
    v14 = objc_msgSend_commentStorage(v7, v9, v10, v11, v12);
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self, v15, v14, *&a3, *MEMORY[0x277D805C8]);
    objc_msgSend_setCommentStorage_(v7, v16, 0, v17, v18);
    Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self, v19, v7, *&a3, 1, 1);
  }

  return Cell_atBaseCellCoord_suppressCellBorder;
}

- (void)postCommentNotificationForStorage:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 notificationKey:(id)a5
{
  v47[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v12 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_(self, v10, *&a4, v8, v11);
  v45 = v12;
  v46 = v9;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v45, 1, v14);
  v47[0] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v47, &v46, 1);

  v22 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v18, v19, v20, v21);
  v27 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
  v32 = objc_msgSend_documentRoot(v27, v28, v29, v30, v31);
  objc_msgSend_postNotificationName_object_userInfo_(v22, v33, *MEMORY[0x277D805B0], v32, v17);

  if (objc_msgSend_isEqualToString_(v9, v34, *MEMORY[0x277D805C8], v35, v36))
  {
    v41 = objc_msgSend_storage(v12, v37, v38, v39, v40);
    objc_msgSend_clearCommentHostingMapForCommentStorage_(self, v42, v41, v43, v44);
  }
}

- (id)cellStyleOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4
{
  v8 = objc_msgSend_cellStyleOfRowAtIndex_(self->_dataStore, a2, *&a3._row, a4, v4);
  v13 = v8;
  if (v8)
  {
    *a4 = 0;
    v14 = v8;
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (self->_numberOfHeaderRows._row <= a3._row)
    {
      v21.origin = objc_msgSend_footerRowRange(self, v9, v10, v11, v12);
      v21.size = v16;
      v17 = TSUCellRect::rows(&v21);
      if (a3._row < v17 || a3._row - v17 >= v18)
      {
        v15 = 304;
      }

      else
      {
        v15 = 328;
      }
    }

    else
    {
      v15 = 312;
    }

    v14 = *(&self->super.super.isa + v15);
  }

  v19 = v14;

  return v19;
}

- (id)textStyleOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4
{
  v8 = objc_msgSend_textStyleOfRowAtIndex_(self->_dataStore, a2, *&a3._row, a4, v4);
  v13 = v8;
  if (v8)
  {
    *a4 = 0;
    v14 = v8;
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (self->_numberOfHeaderRows._row <= a3._row)
    {
      v21.origin = objc_msgSend_footerRowRange(self, v9, v10, v11, v12);
      v21.size = v16;
      v17 = TSUCellRect::rows(&v21);
      if (a3._row < v17 || a3._row - v17 >= v18)
      {
        v15 = 416;
      }

      else
      {
        v15 = 440;
      }
    }

    else
    {
      v15 = 424;
    }

    v14 = *(&self->super.super.isa + v15);
  }

  v19 = v14;

  return v19;
}

- (id)cellStyleOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4
{
  v8 = objc_msgSend_cellStyleOfColumnAtIndex_(self->_dataStore, a2, a3._column, a4, v4);
  v9 = v8;
  if (v8)
  {
    *a4 = 0;
    v10 = v8;
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (self->_numberOfHeaderColumns._column <= a3._column)
    {
      v11 = 304;
    }

    else
    {
      v11 = 320;
    }

    v10 = *(&self->super.super.isa + v11);
  }

  v12 = v10;

  return v12;
}

- (id)textStyleOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4
{
  v8 = objc_msgSend_textStyleOfColumnAtIndex_(self->_dataStore, a2, a3._column, a4, v4);
  v9 = v8;
  if (v8)
  {
    *a4 = 0;
    v10 = v8;
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (self->_numberOfHeaderColumns._column <= a3._column)
    {
      v11 = 416;
    }

    else
    {
      v11 = 432;
    }

    v10 = *(&self->super.super.isa + v11);
  }

  v12 = v10;

  return v12;
}

- (id)defaultCellStyleForBaseCellCoord:(TSUModelCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  if (a4)
  {
    v8 = objc_msgSend_cellStyleOfRowAtIndex_(self->_dataStore, a2, *&a3, a4, a5);
    if (v8)
    {
      if (!a5)
      {
        goto LABEL_12;
      }

      v12 = 1;
LABEL_8:
      *a5 = v12;
      goto LABEL_12;
    }

    v8 = objc_msgSend_cellStyleOfColumnAtIndex_(self->_dataStore, v9, a3._coord.column, v10, v11);
    if (v8)
    {
      if (!a5)
      {
        goto LABEL_12;
      }

      v12 = 2;
      goto LABEL_8;
    }
  }

  if (a5)
  {
    *a5 = 3;
  }

  v13 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, a2, *&a3, a4, a5);
  v8 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v14, v13, v15, v16);
LABEL_12:

  return v8;
}

- (id)defaultCellStyleForTableStyleArea:(unint64_t)a3
{
  if (a3 - 1 > 0x10)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.isa + *off_27845E7A0[a3 - 1]);
  }

  return v4;
}

- (id)cellStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v7 = 0;
  v5 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(self, a2, *&a3, 1, &v7);
  if (a4)
  {
    *a4 = v7 == 3;
  }

  return v5;
}

- (id)defaultTextStyleForBaseCellCoord:(TSUModelCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  if (a4)
  {
    v8 = objc_msgSend_textStyleOfRowAtIndex_(self->_dataStore, a2, *&a3, a4, a5);
    if (v8)
    {
      if (!a5)
      {
        goto LABEL_12;
      }

      v12 = 1;
LABEL_8:
      *a5 = v12;
      goto LABEL_12;
    }

    v8 = objc_msgSend_textStyleOfColumnAtIndex_(self->_dataStore, v9, a3._coord.column, v10, v11);
    if (v8)
    {
      if (!a5)
      {
        goto LABEL_12;
      }

      v12 = 2;
      goto LABEL_8;
    }
  }

  if (a5)
  {
    *a5 = 3;
  }

  v13 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, a2, *&a3, a4, a5);
  v8 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v14, v13, v15, v16);
LABEL_12:

  return v8;
}

- (id)defaultTextStyleForTableStyleArea:(unint64_t)a3
{
  if (a3 - 1 > 0x10)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.isa + *off_27845E828[a3 - 1]);
  }

  return v4;
}

- (id)textStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v7 = 0;
  v5 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(self, a2, *&a3, 1, &v7);
  if (a4)
  {
    *a4 = v7 == 3;
  }

  return v5;
}

- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v11 = objc_msgSend_cellStyleAtCellID_(self->_dataStore, a2, *&a3, a4, v4);
  if (v11)
  {
    if (a4)
    {
      v12 = objc_msgSend_defaultCellStyleForBaseCellCoord_(self, v8, *&a3, v9, v10);
      *a4 = objc_msgSend_isEqual_(v12, v13, v11, v14, v15);
    }
  }

  else
  {
    v11 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(self, v8, *&a3, a4, v10);
  }

  return v11;
}

- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v11 = objc_msgSend_textStyleAtCellID_(self->_dataStore, a2, *&a3, a4, v4);
  if (v11)
  {
    if (a4)
    {
      v12 = objc_msgSend_defaultTextStyleForBaseCellCoord_(self, v8, *&a3, v9, v10);
      *a4 = objc_msgSend_isEqual_(v12, v13, v11, v14, v15);
    }
  }

  else
  {
    v11 = objc_msgSend_textStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(self, v8, *&a3, a4, v10);
  }

  return v11;
}

- (void)defaultStyleHandlesAtBaseCellCoord:(TSUModelCellCoord)a3 useSoftDefault:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7
{
  v7 = a7;
  v8 = a6;
  if (!a4)
  {
    goto LABEL_12;
  }

  v12 = objc_msgSend_defaultStyleHandlesOfRowAtIndex_outCellStyleHandle_outTextStyleHandle_(self->_dataStore, a2, *&a3, a6, a7);
  if (v12)
  {
    v8 = 0;
  }

  if ((v12 & 2) != 0)
  {
    v7 = 0;
  }

  if (v8 | v7)
  {
    v14 = objc_msgSend_defaultStyleHandlesOfColumnAtIndex_outCellStyleHandle_outTextStyleHandle_(self->_dataStore, v13, a3._coord.column, v8, v7);
    if (v14)
    {
      v8 = 0;
    }

    if ((v14 & 2) != 0)
    {
      v7 = 0;
    }

    if (v8 | v7)
    {
LABEL_12:
      v18 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, a2, *&a3, a4, a5);
      if (v8)
      {
        *v8 = objc_msgSend_cellStyleHandleForKey_(a5, v15, v18, v16, v17);
      }

      if (v7)
      {
        *v7 = objc_msgSend_textStyleHandleForKey_(a5, v15, v18, v16, v17);
      }
    }
  }
}

- (void)defaultStylesForTableStyleArea:(unint64_t)a3 outCellStyle:(id *)a4 outTextStyle:(id *)a5
{
  switch(a3)
  {
    case 1uLL:
      if (!a4)
      {
        goto LABEL_32;
      }

      v7 = 304;
      goto LABEL_31;
    case 2uLL:
      if (a4)
      {
        *a4 = self->_headerRowCellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__headerRowTextStyle;
      break;
    case 3uLL:
      if (!a4)
      {
        goto LABEL_27;
      }

      v8 = 320;
      goto LABEL_26;
    case 4uLL:
      if (a4)
      {
        *a4 = self->_footerRowCellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__footerRowTextStyle;
      break;
    case 5uLL:
      if (a4)
      {
        *a4 = self->_categoryLevel1CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel1TextStyle;
      break;
    case 6uLL:
      if (a4)
      {
        *a4 = self->_categoryLevel2CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel2TextStyle;
      break;
    case 7uLL:
      if (a4)
      {
        *a4 = self->_categoryLevel3CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel3TextStyle;
      break;
    case 8uLL:
      if (a4)
      {
        *a4 = self->_categoryLevel4CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel4TextStyle;
      break;
    case 9uLL:
      if (a4)
      {
        *a4 = self->_categoryLevel5CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel5TextStyle;
      break;
    case 0xAuLL:
      if (a4)
      {
        *a4 = self->_labelLevel1CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel1TextStyle;
      break;
    case 0xBuLL:
      if (a4)
      {
        *a4 = self->_labelLevel2CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel2TextStyle;
      break;
    case 0xCuLL:
      if (a4)
      {
        *a4 = self->_labelLevel3CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel3TextStyle;
      break;
    case 0xDuLL:
      if (a4)
      {
        *a4 = self->_labelLevel4CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel4TextStyle;
      break;
    case 0xEuLL:
      if (a4)
      {
        *a4 = self->_labelLevel5CellStyle;
      }

      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel5TextStyle;
      break;
    case 0xFuLL:
      if (!a4)
      {
        goto LABEL_32;
      }

      v7 = 544;
      goto LABEL_31;
    case 0x10uLL:
      if (!a4)
      {
        goto LABEL_32;
      }

      v7 = 552;
LABEL_31:
      *a4 = *(&self->super.super.isa + v7);
LABEL_32:
      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__bodyTextStyle;
      break;
    case 0x11uLL:
      if (!a4)
      {
        goto LABEL_27;
      }

      v8 = 560;
LABEL_26:
      *a4 = *(&self->super.super.isa + v8);
LABEL_27:
      if (!a5)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__headerColumnTextStyle;
      break;
    default:
      return;
  }

  *a5 = *(&self->super.super.isa + *v9);
}

- (double)heightOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4
{
  v6 = *&a3._row;
  if (a3._row == 0x7FFFFFFF)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel heightOfRowAtIndex:isDefault:]", a4, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5223, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_heightOfRowAtIndex_(self->_dataStore, a2, v6, a4, v4);
  v24 = result;
  if (result >= 0.0 && result <= 0.0)
  {
    objc_msgSend_defaultRowHeight(self, v19, v20, v21, v22);
  }

  if (a4)
  {
    *a4 = v24 == 0.0;
  }

  return result;
}

- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4
{
  if (a3._column == 0x7FFF)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel widthOfColumnAtIndex:isDefault:]", a4, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5240, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_widthOfColumnAtIndex_(self->_dataStore, a2, a3._column, a4, v4);
  v24 = result;
  if (result >= 0.0 && result <= 0.0)
  {
    objc_msgSend_defaultColumnWidth(self, v19, v20, v21, v22);
  }

  if (a4)
  {
    *a4 = v24 == 0.0;
  }

  return result;
}

- (void)setHeight:(double)a3 ofRowAtIndex:(TSUModelRowIndex)a4
{
  v6 = *&a4._row;
  if (a4._row == 0x7FFFFFFF)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setHeight:ofRowAtIndex:]", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5257, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setHeight_ofRowAtIndex_(dataStore, a2, v6, v4, v5);
}

- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUModelColumnIndex)a4
{
  if (a4._column == 0x7FFF)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setWidth:ofColumnAtIndex:]", v4, v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5270, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setWidth_ofColumnAtIndex_(dataStore, a2, a4._column, v4, v5);
}

- (NSArray)rowHeights
{
  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_numberOfRows(self, a2, v2, v3, v4);
  v11 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9, v10);
  v23[0] = objc_msgSend_range(self, v12, v13, v14, v15);
  v23[1] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2210AD254;
  v20[3] = &unk_27845E158;
  v17 = v11;
  v21 = v17;
  v22 = self;
  sub_22109D0C8(v23, v20);
  v18 = v17;

  return v17;
}

- (NSArray)columnWidths
{
  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_numberOfColumns(self, a2, v2, v3, v4);
  v11 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9, v10);
  v23[0] = objc_msgSend_range(self, v12, v13, v14, v15);
  v23[1] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2210AD3C4;
  v20[3] = &unk_27845E180;
  v17 = v11;
  v21 = v17;
  v22 = self;
  sub_22109D1B8(v23, v20);
  v18 = v17;

  return v17;
}

- (void)setColumnWidths:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2210AD4BC;
  v5[3] = &unk_27845E1A8;
  v5[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, a2, v5, v3, v4);
}

- (void)setRowHeights:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2210AD5A4;
  v5[3] = &unk_27845E1A8;
  v5[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, a2, v5, v3, v4);
}

- (void)computeDefaultRowHeight
{
  objc_msgSend_computeDefaultFontHeightForTableStyleArea_(self, a2, 1, v2, v3);
  v6 = v5;
  objc_msgSend_defaultRowHeight(self, v7, v8, v9, v10);
  if (v6 > v15)
  {

    objc_msgSend_setDefaultRowHeight_(self, v11, v12, v13, v14, v6);
  }
}

- (double)computeDefaultFontHeightForTableStyleArea:(unint64_t)a3
{
  v7 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, a2, a3, v3, v4);
  v11 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v8, a3, v9, v10);
  v15 = objc_msgSend_valueForProperty_(v11, v12, 904, v13, v14);
  FontForStyle = TSWPFastCreateFontForStyle();
  TSWPFontGetLineHeight();
  v18 = v17;
  CFRelease(FontForStyle);
  objc_msgSend_topInset(v15, v19, v20, v21, v22);
  v24 = v23;
  objc_msgSend_bottomInset(v15, v25, v26, v27, v28);
  v30 = v18 + v24 + v29;

  return v30;
}

- (TSUModelCellRect)range
{
  v5 = objc_msgSend_p_tableSize(self, a2, v2, v3, v4);
  v6 = 0;
  result.var0.size = v5;
  result.var0.origin = v6;
  return result;
}

- (TSUModelCellRect)bodyRange
{
  v6 = objc_msgSend_p_tableSize(self, a2, v2, v3, v4);
  column = self->_numberOfHeaderColumns._column;
  row = self->_numberOfHeaderRows._row;
  v9 = (HIDWORD(v6) - (row + self->_numberOfFooterRows._row));
  v10 = (v6 - column);
  v11 = (row | (column << 32));
  v12 = (v10 | (v9 << 32));
  result.var0.size = v12;
  result.var0.origin = v11;
  return result;
}

- (TSUModelCellRect)bodyColumnRange
{
  v6 = objc_msgSend_p_tableSize(self, a2, v2, v3, v4);
  column = self->_numberOfHeaderColumns._column;
  v8 = v6 & 0xFFFFFFFF00000000;
  v9 = v6 - column;
  v10 = (column << 32);
  v11 = v8 & 0xFFFFFFFFFFFF0000 | v9;
  result.var0.size = v11;
  result.var0.origin = v10;
  return result;
}

- (TSUModelCellRect)bodyRowRange
{
  v6 = objc_msgSend_p_tableSize(self, a2, v2, v3, v4);
  v7 = v6 | ((HIDWORD(v6) - (self->_numberOfHeaderRows._row + self->_numberOfFooterRows._row)) << 32);
  row = self->_numberOfHeaderRows._row;
  result.var0.size = v7;
  result.var0.origin = row;
  return result;
}

- (TSUModelCellRect)headerRowRange
{
  if (self->_numberOfHeaderRows._row)
  {
    v6 = objc_msgSend_numberOfColumns(self, a2, v2, v3, v4);
    v7 = 0;
    v8 = v6 | (self->_numberOfHeaderRows._row << 32);
  }

  else
  {
    v8 = 0;
    v7 = 0x7FFF7FFFFFFFLL;
  }

  result.var0.size = v8;
  result.var0.origin = v7;
  return result;
}

- (TSUModelCellRect)headerColumnRange
{
  column = self->_numberOfHeaderColumns._column;
  if (self->_numberOfHeaderColumns._column)
  {
    v6 = objc_msgSend_numberOfRows(self, a2, v2, v3, v4);
    v7 = 0;
    v8 = (column | (v6 << 32));
  }

  else
  {
    v8 = 0;
    v7 = 0x7FFF7FFFFFFFLL;
  }

  result.var0.size = v8;
  result.var0.origin = v7;
  return result;
}

- (TSUModelCellRect)actualHeaderColumnRange
{
  if (self->_numberOfHeaderColumns._column)
  {
    row = self->_numberOfHeaderRows._row;
    column = self->_numberOfHeaderColumns._column;
    v7 = column | ((objc_msgSend_numberOfRows(self, a2, v2, v3, v4) - (self->_numberOfHeaderRows._row + self->_numberOfFooterRows._row)) << 32);
  }

  else
  {
    v7 = 0;
    row = 0x7FFF7FFFFFFFLL;
  }

  v8 = row;
  result.var0.size = v7;
  result.var0.origin = v8;
  return result;
}

- (TSUModelCellRect)footerRowRange
{
  if (self->_numberOfFooterRows._row)
  {
    LODWORD(v6) = self->_numberOfHeaderRows._row;
    v11 = objc_msgSend_numberOfRows(self, a2, v2, v3, v4) - self->_numberOfFooterRows._row;
    if (v6 <= v11)
    {
      v6 = v11;
    }

    else
    {
      v6 = v6;
    }

    v12 = objc_msgSend_numberOfColumns(self, v7, v8, v9, v10) | (self->_numberOfFooterRows._row << 32);
  }

  else
  {
    v12 = 0;
    v6 = 0x7FFF7FFFFFFFLL;
  }

  v13 = v6;
  result.var0.size = v12;
  result.var0.origin = v13;
  return result;
}

- (TSUModelCellRect)topCornerRange
{
  v3 = 0x7FFF7FFFFFFFLL;
  column = self->_numberOfHeaderColumns._column;
  if (self->_numberOfHeaderColumns._column && (row = self->_numberOfHeaderRows._row, row))
  {
    v3 = 0;
    v6 = (column | (row << 32));
  }

  else
  {
    v6 = 0;
  }

  result.var0.size = v6;
  result.var0.origin = v3;
  return result;
}

- (TSUModelCellRect)bottomCornerRange
{
  v6 = 0x7FFF7FFFFFFFLL;
  if (self->_numberOfHeaderColumns._column && self->_numberOfFooterRows._row)
  {
    v7 = objc_msgSend_numberOfRows(self, a2, v2, v3, v4);
    row = self->_numberOfFooterRows._row;
    v6 = (v7 - row);
    v9 = (self->_numberOfHeaderColumns._column | (row << 32));
  }

  else
  {
    v9 = 0;
  }

  result.var0.size = v9;
  result.var0.origin = v6;
  return result;
}

- (BOOL)hasNamesInHeaders
{
  v6 = objc_msgSend_bodyRange(self, a2, v2, v3, v4);
  v8 = v7;
  v12 = objc_msgSend_range(self, v7, v9, v10, v11);
  v15 = ((v12 ^ v6) & 0x101FFFF00000000) != 0 || v8 != v13;
  return v6 != v12 || v15;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)a3
{
  v5 = objc_msgSend_mergedRangeForBaseCellCoord_(self->_mergeOwner, a2, *&a3, v3, v4);
  result.var0.size = v6;
  result.var0.origin = v5;
  return result;
}

- (int)insertRowsInBaseRange:(_NSRange)a3 uids:(const void *)a4 metadata:(id)a5 unsetFilterHidingAction:(BOOL)a6
{
  v105 = a6;
  length = a3.length;
  location = a3.location;
  v10 = a5;
  v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v11, v12, v13, v14);
  v20 = objc_msgSend_maxNumberOfRows(v15, v16, v17, v18, v19);

  v25 = objc_msgSend_tableInfo(self, v21, v22, v23, v24);
  v30 = objc_msgSend_hiddenStates(v25, v26, v27, v28, v29);

  if (length <= v20 - objc_msgSend_numberOfRows(self, v31, v32, v33, v34))
  {
    objc_msgSend_willModify(self, v35, v36, v37, v38);
    objc_msgSend_insertRows_(self->_dataStore, v40, location, length, v41);
    objc_msgSend_insertRows_(self->_strokeSidecar, v42, location, length, v43);
    objc_msgSend_insertRowsWithUIDs_atIndex_(self->_columnRowUIDMap, v44, a4, location, v45);
    objc_msgSend_updateCalcEngineForTableSize(self, v46, v47, v48, v49);
    objc_msgSend_insertNewRowsInBaseRange_(v30, v50, location, length, v51);
    v102 = a4;
    v103 = location;
    v104 = length;
    if (length)
    {
      v55 = 0;
      v57 = location;
      v56 = length;
      do
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(v10, v52, v55, v53, v54);
        if (objc_msgSend_isValid(v58, v59, v60, v61, v62))
        {
          objc_msgSend_updateRowHeaderAtIndex_fromMetadata_(self->_dataStore, v63, v57, v58, v64);
          v71 = objc_msgSend_hidingAction(v58, v65, v66, v67, v68);
          if (v105)
          {
            objc_msgSend_showBaseRowAtIndex_forAction_(v30, v69, v57, 2, v70);
            v71 &= ~2u;
          }

          objc_msgSend_hideBaseRowAtIndex_forAction_(v30, v69, v57, v71, v70);
        }

        ++v55;
        ++v57;
        --v56;
      }

      while (v56);
    }

    objc_msgSend_rewriteMergesForInsertedRange_uids_isRows_(self->_mergeOwner, v52, v103, v104, v102, 1);
    if (objc_msgSend_tableSizeClass(self, v72, v73, v74, v75) >= 2)
    {
      objc_msgSend_setShouldUseWideRows_(self->_dataStore, v76, 1, v78, v79);
    }

    v80 = objc_msgSend_calcEngine(self, v76, v77, v78, v79);
    v106[0] = objc_msgSend_tableUID(self, v81, v82, v83, v84);
    v106[1] = v85;
    v89 = objc_msgSend_range(self, v85, v86, v87, v88);
    v91 = j__TSUCellRectToTSCERangeCoordinate(v89, v90);
    v93 = v92;
    v97 = objc_msgSend_headerColumnRange(self, v92, v94, v95, v96);
    v99 = j__TSUCellRectToTSCERangeCoordinate(v97, v98);
    objc_msgSend_dirtyCellsForInsertionOfRows_forTable_tableRange_headerRange_(v80, v100, v103, v104, v106, v91, v93, v99, v100);

    v39 = 0;
  }

  else
  {
    v39 = 3;
  }

  return v39;
}

- (int)insertColumnsAtIndex:(TSUModelColumnIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6
{
  v9 = a5;
  v14 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v10, v11, v12, v13);
  v19 = objc_msgSend_maxNumberOfColumns(v14, v15, v16, v17, v18);

  v24 = objc_msgSend_count(v9, v20, v21, v22, v23);
  v29 = objc_msgSend_tableInfo(self, v25, v26, v27, v28);
  v34 = objc_msgSend_numberOfColumns(v29, v30, v31, v32, v33);
  v39 = objc_msgSend_count(v9, v35, v36, v37, v38);

  if (v39 > (v19 - v34))
  {
    goto LABEL_8;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v52 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel insertColumnsAtIndex:uids:metadatas:tableArea:]", v42, v43);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v54, v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v46, v50, 5527, 0, "invalid table area for column insert");
    goto LABEL_7;
  }

  if (a6 == 3)
  {
    column = self->_numberOfHeaderColumns._column;
    if (5 - column < objc_msgSend_count(v9, v40, v41, v42, v43))
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel insertColumnsAtIndex:uids:metadatas:tableArea:]", v42, v43);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v48, v49);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 5532, 0, "not enough room in the header");
LABEL_7:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
LABEL_8:
      v61 = 3;
      goto LABEL_9;
    }
  }

  objc_msgSend_willModify(self, v40, v41, v42, v43);
  v67 = objc_msgSend_tableInfo(self, v63, v64, v65, v66);
  v72 = objc_msgSend_hiddenStates(v67, v68, v69, v70, v71);

  objc_msgSend_insertColumns_(self->_dataStore, v73, a3._column, v24, v74);
  objc_msgSend_insertColumns_(self->_strokeSidecar, v75, a3._column, v24, v76);
  objc_msgSend_insertColumnsWithUIDs_atIndex_(self->_columnRowUIDMap, v77, a4, a3._column, v78);
  objc_msgSend_updateCalcEngineForTableSize(self, v79, v80, v81, v82);
  objc_msgSend_insertNewColumnsInBaseRange_(v72, v83, a3._column, v24, v84);
  v138 = v24;
  if (v24)
  {
    v88 = 0;
    v89 = a3._column;
    do
    {
      v90 = objc_msgSend_objectAtIndexedSubscript_(v9, v85, v88, v86, v87);
      if (objc_msgSend_isValid(v90, v91, v92, v93, v94))
      {
        objc_msgSend_updateColumnHeaderAtIndex_fromMetadata_(self->_dataStore, v95, v89, v90, v96);
        v101 = objc_msgSend_hidingAction(v90, v97, v98, v99, v100);
        objc_msgSend_hideBaseColumnAtIndex_forAction_(v72, v102, v89, v101, v103);
      }

      ++v88;
      ++v89;
      --v24;
    }

    while (v24);
  }

  objc_msgSend_rewriteMergesForInsertedRange_uids_isRows_(self->_mergeOwner, v85, a3._column, v138, a4, 0);
  if (a6 == 3)
  {
    v108 = self->_numberOfHeaderColumns._column;
    v109 = objc_msgSend_count(v9, v104, v105, v106, v107);
    objc_msgSend_setNumberOfHeaderColumns_(self, v110, (v108 + v109), v111, v112);
  }

  if (objc_msgSend_tableSizeClass(self, v104, v105, v106, v107) >= 2)
  {
    objc_msgSend_setShouldUseWideRows_(self->_dataStore, v113, 1, v115, v116);
  }

  v117 = objc_msgSend_calcEngine(self, v113, v114, v115, v116);
  v140[0] = objc_msgSend_tableUID(self, v118, v119, v120, v121);
  v140[1] = v122;
  v126 = objc_msgSend_range(self, v122, v123, v124, v125);
  v128 = j__TSUCellRectToTSCERangeCoordinate(v126, v127);
  v130 = v129;
  v134 = objc_msgSend_headerRowRange(self, v129, v131, v132, v133);
  v136 = j__TSUCellRectToTSCERangeCoordinate(v134, v135);
  objc_msgSend_dirtyCellsForInsertionOfColumns_forTable_tableRange_headerRange_(v117, v137, a3._column, v138, v140, v128, v130, v136, v137);

  v61 = 0;
LABEL_9:

  return v61;
}

- (int)insertRowsAtIndex:(TSUModelRowIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6 unsetFilterHidingAction:(BOOL)a7
{
  v7 = a7;
  v9 = *&a3._row;
  v11 = a5;
  v16 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v12, v13, v14, v15);
  v21 = objc_msgSend_maxNumberOfRows(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_tableInfo(self, v22, v23, v24, v25);
  v146 = objc_msgSend_hiddenStates(v26, v27, v28, v29, v30);

  v35 = objc_msgSend_count(v11, v31, v32, v33, v34);
  if (v35 > v21 - objc_msgSend_numberOfRows(self, v36, v37, v38, v39))
  {
    goto LABEL_24;
  }

  if (a6 > 4 || ((1 << a6) & 0x16) == 0)
  {
    v102 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v42, v43);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v104, v105);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v106, v46, v50, 5593, 0, "invalid table area for row insert");
    goto LABEL_23;
  }

  if (a6 == 2)
  {
    row = self->_numberOfHeaderRows._row;
    if (objc_msgSend_count(v11, v40, v41, v42, v43) > (5 - row))
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v42, v43);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v48, v49);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 5598, 0, "not enough room in the header for insert");
LABEL_23:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
LABEL_24:
      v111 = 3;
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  if (a6 != 4)
  {
LABEL_10:
    v143 = 0;
    goto LABEL_11;
  }

  v52 = self->_numberOfFooterRows._row;
  if (objc_msgSend_count(v11, v40, v41, v42, v43) > (5 - v52))
  {
    v53 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableModel insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v42, v43);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v46, v50, 5603, 0, "not enough room in the footer for insert");
    goto LABEL_23;
  }

  v143 = 1;
LABEL_11:
  objc_msgSend_willModify(self, v40, v41, v42, v43);
  v144 = v9;
  objc_msgSend_insertRows_(self->_dataStore, v58, v9, v35, v59);
  objc_msgSend_insertRows_(self->_strokeSidecar, v60, v9, v35, v61);
  objc_msgSend_insertRowsWithUIDs_atIndex_(self->_columnRowUIDMap, v62, a4, v9, v63);
  objc_msgSend_updateCalcEngineForTableSize(self, v64, v65, v66, v67);
  objc_msgSend_insertNewRowsInBaseRange_(v146, v68, v9, v35, v69);
  if (objc_msgSend_tableSizeClass(self, v70, v71, v72, v73) >= 2)
  {
    objc_msgSend_setShouldUseWideRows_(self->_dataStore, v74, 1, v75, v76);
  }

  if (v35)
  {
    v77 = 0;
    v78 = v35;
    do
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(v11, v74, v77, v75, v76);
      if (objc_msgSend_isValid(v79, v80, v81, v82, v83))
      {
        objc_msgSend_updateRowHeaderAtIndex_fromMetadata_(self->_dataStore, v84, v9, v79, v85);
        v90 = objc_msgSend_hidingAction(v79, v86, v87, v88, v89);
        if (v7)
        {
          objc_msgSend_hideBaseRowAtIndex_forAction_(v146, v91, v9, v90 & 1, v92);
        }

        else
        {
          objc_msgSend_hideBaseRowAtIndex_forAction_(v146, v91, v9, v90, v92);
        }
      }

      ++v77;
      ++v9;
      --v78;
    }

    while (v78);
  }

  objc_msgSend_rewriteMergesForInsertedRange_uids_isRows_(self->_mergeOwner, v74, v144, v35, a4, 1);
  if (a6 == 2)
  {
    v97 = self->_numberOfHeaderRows._row;
    v98 = objc_msgSend_count(v11, v93, v94, v95, v96);
    objc_msgSend_setNumberOfHeaderRows_(self, v99, v97 + v98, v100, v101);
  }

  else if (v143)
  {
    v112 = self->_numberOfFooterRows._row;
    v113 = objc_msgSend_count(v11, v93, v94, v95, v96);
    objc_msgSend_setNumberOfFooterRows_(self, v114, v112 + v113, v115, v116);
  }

  else if (a6 == 1)
  {
    v117 = objc_msgSend_categoryOwner(self, v93, v94, v95, v96);
    objc_msgSend_didAddRows_(v117, v118, a4, v119, v120);
  }

  v121 = objc_msgSend_calcEngine(self, v93, v94, v95, v96);
  v147[0] = objc_msgSend_tableUID(self, v122, v123, v124, v125);
  v147[1] = v126;
  v130 = objc_msgSend_range(self, v126, v127, v128, v129);
  v132 = j__TSUCellRectToTSCERangeCoordinate(v130, v131);
  v134 = v133;
  v138 = objc_msgSend_headerColumnRange(self, v133, v135, v136, v137);
  v140 = j__TSUCellRectToTSCERangeCoordinate(v138, v139);
  objc_msgSend_dirtyCellsForInsertionOfRows_forTable_tableRange_headerRange_(v121, v141, v144, v35, v147, v132, v134, v140, v141);

  v111 = 0;
LABEL_30:

  return v111;
}

- (void)removeRowsAtIndex:(TSUModelRowIndex)a3 count:(TSUModelRowIndex)a4
{
  row = a3._row;
  v7 = a4._row;
  __p.origin = objc_msgSend_headerRowRange(self, a2, *&a3._row, *&a4._row, v4);
  __p.size = v8;
  v115.location = TSUCellRect::rows(&__p);
  v115.length = v9;
  v113.location = row;
  v113.length = v7;
  length = NSIntersectionRange(v113, v115).length;
  v11 = length;
  __p.origin = objc_msgSend_footerRowRange(self, length, v12, v13, v14);
  __p.size = v15;
  v116.location = TSUCellRect::rows(&__p);
  v116.length = v16;
  v114.location = row;
  v114.length = v7;
  v17 = NSIntersectionRange(v114, v116).length;
  v18 = v17;
  objc_msgSend_willModify(self, v17, v19, v20, v21);
  objc_msgSend_setNumberOfHeaderRows_(self, v22, self->_numberOfHeaderRows._row - v11, v23, v24);
  objc_msgSend_setNumberOfFooterRows_(self, v25, self->_numberOfFooterRows._row - v18, v26, v27);
  __p.origin = sub_2210AEA44(row, v7, v28, v29, v30);
  __p.size = v31;
  v112[0] = objc_msgSend_range(self, v31, v32, v33, v34);
  v112[1] = v35;
  v36 = sub_2210AFE68(&__p.origin, v112);
  v38 = v37;
  v39 = j__TSUCellRectToTSCERangeCoordinate(v36, v37);
  v41 = v40;
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v40, v42, v43, v44))
  {
    v49 = objc_msgSend_range(self, v45, v46, v47, v48);
    v51 = j__TSUCellRectToTSCERangeCoordinate(v49, v50);
    v53 = v52;
    v57 = objc_msgSend_calcEngine(self, v52, v54, v55, v56);
    __p.origin = objc_msgSend_tableUID(self, v58, v59, v60, v61);
    __p.size = v62;
    objc_msgSend_dirtyCellsForRemovalOfRows_fromTable_tableRange_(v57, v62, row, v7, &__p, v51, v53);

    v67 = objc_msgSend_calcEngine(self, v63, v64, v65, v66);
    v72 = objc_msgSend_tableUID(self, v68, v69, v70, v71);
    __p.origin = v39;
    __p.size = v41;
    v110 = v72;
    v111 = v73;
    objc_msgSend_removeFormulasFromRange_(v67, v73, &__p, v74, v75);

    objc_msgSend_removeFormulasInRange_(self->_conditionalStyleFormulaOwner, v76, v36, v38, v77);
  }

  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    objc_msgSend_rowUIDsForRowRange_(columnRowUIDMap, v45, row, v7, v48);
  }

  else
  {
    __p.origin = 0;
    __p.size = 0;
    v110 = 0;
  }

  objc_msgSend_rewriteMergesForRemovedRange_uids_isRows_(self->_mergeOwner, v45, row, v7, &__p, 1);
  v83 = objc_msgSend_tableInfo(self, v79, v80, v81, v82);
  v88 = objc_msgSend_hiddenStates(v83, v84, v85, v86, v87);
  objc_msgSend_deleteRowsFromBaseRange_rowUids_(v88, v89, row, v7, &__p);

  objc_msgSend_removeRows_(self->_dataStore, v90, row, v7, v91);
  objc_msgSend_removeRows_(self->_strokeSidecar, v92, row, v7, v93);
  v94 = self->_columnRowUIDMap;
  v97 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v95, row, v7, v96);
  objc_msgSend_removeRowsAtIndexes_(v94, v98, v97, v99, v100);

  objc_msgSend_updateCalcEngineForTableSize(self, v101, v102, v103, v104);
  objc_msgSend_resetMergeCache(self->_mergeOwner, v105, v106, v107, v108);
  if (__p.origin)
  {
    __p.size = __p.origin;
    operator delete(*&__p.origin);
  }
}

- (void)removeColumnsAtIndex:(TSUModelColumnIndex)a3 count:(TSUModelColumnIndex)a4
{
  __p.origin = objc_msgSend_headerColumnRange(self, a2, *&a3._column, *&a4._column, v4);
  __p.size = v8;
  v104.location = TSUCellRect::columns(&__p);
  v104.length = v9;
  v103.location = a3._column;
  v103.length = a4._column;
  length = NSIntersectionRange(v103, v104).length;
  v11 = length;
  objc_msgSend_willModify(self, length, v12, v13, v14);
  objc_msgSend_setNumberOfHeaderColumns_(self, v15, (self->_numberOfHeaderColumns._column - v11), v16, v17);
  __p.origin = sub_2210AEE74(a3._column, a4._column, v18, v19, v20);
  __p.size = v21;
  v102[0] = objc_msgSend_range(self, v21, v22, v23, v24);
  v102[1] = v25;
  v26 = sub_2210AFE68(&__p.origin, v102);
  v28 = v27;
  v29 = j__TSUCellRectToTSCERangeCoordinate(v26, v27);
  v31 = v30;
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v30, v32, v33, v34))
  {
    v39 = objc_msgSend_range(self, v35, v36, v37, v38);
    v41 = j__TSUCellRectToTSCERangeCoordinate(v39, v40);
    v43 = v42;
    v47 = objc_msgSend_calcEngine(self, v42, v44, v45, v46);
    __p.origin = objc_msgSend_tableUID(self, v48, v49, v50, v51);
    __p.size = v52;
    objc_msgSend_dirtyCellsForRemovalOfColumns_fromTable_tableRange_(v47, v52, a3._column, a4._column, &__p, v41, v43);

    v57 = objc_msgSend_calcEngine(self, v53, v54, v55, v56);
    v62 = objc_msgSend_tableUID(self, v58, v59, v60, v61);
    __p.origin = v29;
    __p.size = v31;
    v100 = v62;
    v101 = v63;
    objc_msgSend_removeFormulasFromRange_(v57, v63, &__p, v64, v65);

    objc_msgSend_removeFormulasInRange_(self->_conditionalStyleFormulaOwner, v66, v26, v28, v67);
  }

  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    objc_msgSend_columnUIDsForColumnRange_(columnRowUIDMap, v35, a3._column, a4._column, v38);
  }

  else
  {
    __p.origin = 0;
    __p.size = 0;
    v100 = 0;
  }

  objc_msgSend_rewriteMergesForRemovedRange_uids_isRows_(self->_mergeOwner, v35, a3._column, a4._column, &__p, 0);
  v73 = objc_msgSend_tableInfo(self, v69, v70, v71, v72);
  v78 = objc_msgSend_hiddenStates(v73, v74, v75, v76, v77);
  objc_msgSend_deleteColumnsFromBaseRange_columnUids_(v78, v79, a3._column, a4._column, &__p);

  objc_msgSend_removeColumns_(self->_dataStore, v80, a3._column, a4._column, v81);
  objc_msgSend_removeColumns_(self->_strokeSidecar, v82, a3._column, a4._column, v83);
  v84 = self->_columnRowUIDMap;
  v87 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v85, a3._column, a4._column, v86);
  objc_msgSend_removeColumnsAtIndexes_(v84, v88, v87, v89, v90);

  objc_msgSend_updateCalcEngineForTableSize(self, v91, v92, v93, v94);
  objc_msgSend_resetMergeCache(self->_mergeOwner, v95, v96, v97, v98);
  if (__p.origin)
  {
    __p.size = __p.origin;
    operator delete(*&__p.origin);
  }
}

- (void)removeRowsAtBaseIndexes:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2210AF05C;
  v4[3] = &unk_27845E1D0;
  v4[4] = self;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(a3, a2, 2, v4, v3);
}

- (void)removeColumnsAtBaseIndexes:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2210AF0E8;
  v4[3] = &unk_27845E1D0;
  v4[4] = self;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(a3, a2, 2, v4, v3);
}

- (void)removeAnnotationsFromRowsAtBaseIndexes:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2210AF174;
  v5[3] = &unk_27845E1D0;
  v5[4] = self;
  objc_msgSend_enumerateRangesUsingBlock_(a3, a2, v5, v3, v4);
}

- (void)removeAnnotationsFromColumnsAtBaseIndexes:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2210AF24C;
  v5[3] = &unk_27845E1D0;
  v5[4] = self;
  objc_msgSend_enumerateRangesUsingBlock_(a3, a2, v5, v3, v4);
}

- (void)moveBaseRowRange:(_NSRange)a3 toRowIndex:(TSUModelRowIndex)a4
{
  v4 = *&a4._row;
  length = a3.length;
  location = a3.location;
  objc_msgSend_willModify(self, a2, a3.location, a3.length, *&a4._row);
  objc_msgSend_moveRowIndexRange_toIndex_(self->_dataStore, v8, location, length, v4);
  objc_msgSend_moveRowIndexRange_toIndex_(self->_columnRowUIDMap, v9, location, length, v4);
  objc_msgSend_moveRowIndexRange_toIndex_(self->_strokeSidecar, v10, location, length, v4);
  v15 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
  v20 = objc_msgSend_hiddenStates(v15, v16, v17, v18, v19);
  objc_msgSend_moveBaseRowRange_toRowIndex_(v20, v21, location, length, v4);

  v26 = objc_msgSend_range(self, v22, v23, v24, v25);
  v28 = j__TSUCellRectToTSCERangeCoordinate(v26, v27);
  v30 = v29;
  v34 = objc_msgSend_headerColumnRange(self, v29, v31, v32, v33);
  v36 = j__TSUCellRectToTSCERangeCoordinate(v34, v35);
  v38 = v37;
  calcEngine = self->_calcEngine;
  v58 = objc_msgSend_tableUID(self, v37, v40, v41, v42);
  v59 = v43;
  objc_msgSend_dirtyCellsForRemovalOfRows_fromTable_tableRange_(calcEngine, v43, location, length, &v58, v28, v30);
  v44 = self->_calcEngine;
  v58 = objc_msgSend_tableUID(self, v45, v46, v47, v48);
  v59 = v49;
  objc_msgSend_dirtyCellsForInsertionOfRows_forTable_tableRange_headerRange_(v44, v49, v4, length, &v58, v28, v30, v36, v38);
  v54 = objc_msgSend_headerNameMgr(self->_calcEngine, v50, v51, v52, v53);
  objc_msgSend_updateTrackedHeaders_(v54, v55, &self->_tableUID, v56, v57);
}

- (void)moveBaseColumnRange:(_NSRange)a3 toColumnIndex:(TSUModelColumnIndex)a4
{
  length = a3.length;
  location = a3.location;
  objc_msgSend_willModify(self, a2, a3.location, a3.length, *&a4._column);
  objc_msgSend_moveColumnIndexRange_toIndex_(self->_dataStore, v8, location, length, a4._column);
  objc_msgSend_moveColumnIndexRange_toIndex_(self->_columnRowUIDMap, v9, location, length, a4._column);
  objc_msgSend_moveColumnIndexRange_toIndex_(self->_strokeSidecar, v10, location, length, a4._column);
  v15 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
  v20 = objc_msgSend_hiddenStates(v15, v16, v17, v18, v19);
  objc_msgSend_moveBaseColumnRange_toColumnIndex_(v20, v21, location, length, a4._column);

  v26 = objc_msgSend_range(self, v22, v23, v24, v25);
  v28 = j__TSUCellRectToTSCERangeCoordinate(v26, v27);
  v30 = v29;
  v34 = objc_msgSend_headerRowRange(self, v29, v31, v32, v33);
  v36 = j__TSUCellRectToTSCERangeCoordinate(v34, v35);
  v38 = v37;
  calcEngine = self->_calcEngine;
  v58 = objc_msgSend_tableUID(self, v37, v40, v41, v42);
  v59 = v43;
  objc_msgSend_dirtyCellsForRemovalOfColumns_fromTable_tableRange_(calcEngine, v43, location, length, &v58, v28, v30);
  v44 = self->_calcEngine;
  v58 = objc_msgSend_tableUID(self, v45, v46, v47, v48);
  v59 = v49;
  objc_msgSend_dirtyCellsForInsertionOfColumns_forTable_tableRange_headerRange_(v44, v49, a4._column, length, &v58, v28, v30, v36, v38);
  v54 = objc_msgSend_headerNameMgr(self->_calcEngine, v50, v51, v52, v53);
  objc_msgSend_updateTrackedHeaders_(v54, v55, &self->_tableUID, v56, v57);
}

- (void)swapRowAtIndex:(TSUModelRowIndex)a3 withRowAtIndex:(TSUModelRowIndex)a4
{
  v5 = *&a4._row;
  v6 = *&a3._row;
  objc_msgSend_willModify(self, a2, *&a3._row, *&a4._row, v4);
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_dataStore, v8, v6, v5, v9);
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_columnRowUIDMap, v10, v6, v5, v11);
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_strokeSidecar, v12, v6, v5, v13);
  v25 = objc_msgSend_tableInfo(self, v14, v15, v16, v17);
  v22 = objc_msgSend_hiddenStates(v25, v18, v19, v20, v21);
  objc_msgSend_swapBaseRowAtIndex_withRowAtIndex_(v22, v23, v6, v5, v24);
}

- (unsigned)headerInfo_hidingActionForRowAtIndex:(TSUModelRowIndex)a3
{
  if (a3._row <= 0xF423F)
  {
    return (MEMORY[0x2821F9670])(self->_dataStore, sel_hidingStateOfRowAtIndex_, *&a3._row);
  }

  else
  {
    return 0;
  }
}

- (unsigned)headerInfo_hidingActionForColumnAtIndex:(TSUModelColumnIndex)a3
{
  if (a3._column <= 0x3E7u)
  {
    return (MEMORY[0x2821F9670])(self->_dataStore, sel_hidingStateOfColumnAtIndex_, a3._column);
  }

  else
  {
    return 0;
  }
}

- (void)upgradeHiddenStates
{
  if (objc_msgSend_lastArchivedAppVersion(self, a2, v2, v3, v4) <= 0x3000200000009)
  {
    v10 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
    v15 = objc_msgSend_hiddenStates(v10, v11, v12, v13, v14);

    v32 = objc_msgSend_range(self, v16, v17, v18, v19);
    v33 = v20;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2210AF8E4;
    v30[3] = &unk_27845E158;
    v30[4] = self;
    v21 = v15;
    v31 = v21;
    sub_22109D0C8(&v32, v30);
    v32 = objc_msgSend_range(self, v22, v23, v24, v25);
    v33 = v26;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2210AF940;
    v28[3] = &unk_27845E180;
    v28[4] = self;
    v27 = v21;
    v29 = v27;
    sub_22109D1B8(&v32, v28);
  }
}

- (TSKUIDStruct)upgradeHiddenFormulaOwnerForColumnsUID
{
  v5 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForColumns, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)upgradeHiddenFormulaOwnerForRowsUID
{
  v5 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForRows, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (void)setHidingState:(unsigned __int8)a3 atRowIndex:(const TSUModelRowIndex *)a4
{
  v6 = a3;
  if (a4->_row >= 0xF4240)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setHidingState:atRowIndex:]", a4, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5890, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_willModify(self, a2, a3, a4, v4);
  dataStore = self->_dataStore;
  row = a4->_row;

  MEMORY[0x2821F9670](dataStore, sel_setHidingState_ofRowAtIndex_, v6, row, v19);
}

- (void)setHidingState:(unsigned __int8)a3 atColumnIndex:(const TSUModelColumnIndex *)a4
{
  v6 = a3;
  if (a4->_column >= 0x3E8u)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setHidingState:atColumnIndex:]", a4, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5897, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_willModify(self, a2, a3, a4, v4);
  dataStore = self->_dataStore;
  column = a4->_column;

  MEMORY[0x2821F9670](dataStore, sel_setHidingState_ofColumnAtIndex_, v6, column, v19);
}

- (id)stringAtBaseCellCoord:(TSUModelCellCoord)a3 optionalCell:(id)a4
{
  v6 = a4;
  v11 = v6;
  if (v6)
  {
    objc_msgSend_formattedValue(v6, v7, v8, v9, v10);
  }

  else
  {
    objc_msgSend_stringAtCellID_(self->_dataStore, v7, *&a3, v9, v10);
  }
  v12 = ;

  return v12;
}

- (id)regionForValueOrCommentCellsInBaseCellRect:(TSUModelCellRect)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = sub_2210AFE2C;
  v23 = sub_2210AFE50;
  v24 = &unk_22188E88F;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v18 = a3;
  v17[0] = objc_msgSend_range(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v17[1] = v5;
  v6 = sub_2210AFE68(&v18.var0.origin, v17);
  v9 = objc_msgSend_regionFromRange_(TSTCellRegion, v7, v6, v7, v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2210AFFEC;
  v16[3] = &unk_27845DD70;
  v16[4] = &v19;
  objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v10, v9, 4329472, v16);

  v14 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v11, (v20 + 6), v12, v13);
  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v14;
}

- (id)columnNameForCellID:(TSUCellCoord)a3 restrictToBodyRange:(BOOL)a4
{
  v4 = a4;
  v36 = a3;
  objc_opt_class();
  v10 = objc_msgSend_calcEngine(self, v6, v7, v8, v9);
  v15 = objc_msgSend_namer(v10, v11, v12, v13, v14);
  v16 = TSUDynamicCast();

  if (!v16)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableModel columnNameForCellID:restrictToBodyRange:]", v19, v20);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 5939, 0, "invalid nil value for '%{public}s'", "refNamer", v36);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_identityTranslator(self, v17, v18, v19, v20);
  v34 = objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(v16, v33, &v36, v4, v32, 0);

  return v34;
}

- (id)p_displayNameForColumnAtIndex:(unsigned __int16)a3 documentLocalized:(BOOL)a4 derivation:(int64_t *)a5
{
  v6 = a4;
  v7 = a3;
  v9 = objc_msgSend_columnNameForCellID_restrictToBodyRange_(self, a2, a3 << 32, 0, a5);
  if (v9)
  {
    v14 = 2;
    v15 = v9;
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v6)
    {
      v18 = objc_msgSend_documentRoot(self, v10, v11, v12, v13);
      v23 = objc_msgSend_documentLocale(v18, v19, v20, v21, v22);
      v25 = objc_msgSend_localizedStringForKey_value_table_(v23, v24, @"Column %@", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      v18 = sub_2214AAEA8(0, v10, v11, v12, v13);
      v25 = objc_msgSend_localizedStringForKey_value_table_(v18, v26, @"Column %@", &stru_2834BADA0, @"TSTables");
    }

    if (v7 == 0x7FFF)
    {
      v30 = 0;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, v25, v28, v29, 0);
    }

    else
    {
      v30 = TSUColumnLabel();
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, v25, v32, v33, v30);
    }
    v15 = ;

    v14 = 1;
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  *a5 = v14;
LABEL_4:
  v16 = objc_msgSend_displayNameForColumnName_(TSTTableInfo, v10, v15, v12, v13);

  return v16;
}

- (id)fillForRow:(TSUModelRowIndex)a3
{
  v11 = 0;
  v4 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(self, a2, a3._row, &v11, v3);
  v8 = v4;
  if (v11)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_valueForProperty_(v4, v5, 898, v6, v7);
  }

  return v9;
}

- (TSDStroke)defaultHorizontalBorderStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 796, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 771, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)defaultVerticalBorderStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 796, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 772, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)defaultHorizontalBorderStrokeEvenIfNotVisible
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 771, v7, v8);

  return v9;
}

- (TSDStroke)bodyColumnStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 788, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 774, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)bodyRowStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 789, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 773, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)bodyRowStrokeEvenIfNotVisible
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 773, v7, v8);

  return v9;
}

- (TSDStroke)headerColumnBorderStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 796, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 778, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)headerColumnBodyColumnStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 777, v7, v8);

  return v9;
}

- (TSDStroke)headerColumnBodyRowStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 793, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 776, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)headerColumnSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 775, v7, v8);

  return v9;
}

- (TSDStroke)headerRowBorderStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 796, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 782, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)headerRowBodyColumnStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 791, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 780, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)headerRowBodyRowStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 781, v7, v8);

  return v9;
}

- (TSDStroke)headerRowSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 779, v7, v8);

  return v9;
}

- (TSDStroke)footerRowBorderStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 796, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 786, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)footerRowBodyColumnStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 795, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 784, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)footerRowBodyRowStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 785, v7, v8);

  return v9;
}

- (TSDStroke)footerRowSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 783, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel1InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2, v3))
  {
    v8 = objc_msgSend_valueForProperty_(self->_tableStyle, v5, 823, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSDStroke)categoryLevel2InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2, v3))
  {
    v8 = objc_msgSend_valueForProperty_(self->_tableStyle, v5, 824, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSDStroke)categoryLevel3InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2, v3))
  {
    v8 = objc_msgSend_valueForProperty_(self->_tableStyle, v5, 825, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSDStroke)categoryLevel4InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2, v3))
  {
    v8 = objc_msgSend_valueForProperty_(self->_tableStyle, v5, 826, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSDStroke)categoryLevel5InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2, v3))
  {
    v8 = objc_msgSend_valueForProperty_(self->_tableStyle, v5, 827, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)maxStrokeOrder
{
  strokeSidecar = self->_strokeSidecar;
  if (strokeSidecar)
  {
    return objc_msgSend_maxOrder(strokeSidecar, a2, v2, v3, v4);
  }

  else
  {
    return 2;
  }
}

- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v15 = a3;
  strokeSidecar = self->_strokeSidecar;
  v13 = objc_msgSend_numberOfColumns(self, v9, v10, v11, v12);
  if (v13)
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(strokeSidecar, v14, v15, v6, v5, 0, v13);
  }

  else
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(strokeSidecar, v14, v15, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v15 = a3;
  strokeSidecar = self->_strokeSidecar;
  v13 = objc_msgSend_numberOfColumns(self, v9, v10, v11, v12);
  if (v13)
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(strokeSidecar, v14, v15, v6, v5, 0, v13);
  }

  else
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(strokeSidecar, v14, v15, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v15 = a3;
  strokeSidecar = self->_strokeSidecar;
  v13 = objc_msgSend_numberOfRows(self, v9, v10, v11, v12);
  if (v13)
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(strokeSidecar, v14, v15, v6, v5, 0, v13);
  }

  else
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(strokeSidecar, v14, v15, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v15 = a3;
  strokeSidecar = self->_strokeSidecar;
  v13 = objc_msgSend_numberOfRows(self, v9, v10, v11, v12);
  if (v13)
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(strokeSidecar, v14, v15, v6, v5, 0, v13);
  }

  else
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(strokeSidecar, v14, v15, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (id)cellValueFromCell:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4
{
  v6 = a3;
  v8 = objc_msgSend_tsceValueFromCell_atCellID_tableUID_(self->_dataStore, v7, v6, *&a4, &self->_tableUID);
  v13 = objc_msgSend_locale(v6, v9, v10, v11, v12);
  v16 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v14, v8, v13, v15);

  return v16;
}

- (id)cellValueAtBaseCellCoord:(TSUModelCellCoord)a3
{
  v7 = objc_msgSend_calcEngine(self, a2, *&a3, v3, v4);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_documentLocale(v7, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_objectLocale(self, v8, v9, v10, v11);
  }
  v13 = ;
  v20 = 0;
  objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(self, v14, &v20, *&a3, 0);
  v15 = v20;
  v18 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v16, v15, v13, v17);

  return v18;
}

- (int)getValue:(id *)a3 atBaseCellCoord:(TSUModelCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5 skipPendingWrites:(BOOL)a6
{
  v7 = a5;
  v95.origin = objc_msgSend_range(self, a2, a3, *&a4, a5);
  v95.size = v11;
  coord = a4._coord;
  if (!TSUCellRect::contains(&v95, coord))
  {
    return 3;
  }

  if (a3)
  {
    v95.origin = a4._coord;
    origin = a4;
    if (a6 || (objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v13, *&a4, *&a4, v14), v16 = objc_claimAutoreleasedReturnValue(), origin = v95.origin, !v16))
    {
      v26 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, v13, origin, origin, v14);
      if (!v26)
      {
        v16 = 0;
        v29 = 1000;
LABEL_23:

        return v29;
      }

      objc_msgSend_tsceValueForCellStorageRef_cellCoord_hostTableUID_outValue_(self->_dataStore, v30, v26, &v95, &self->_tableUID, a3);
      sub_2210B8F38(v26, v31, v32, v33, v34);
      v16 = 0;
      v35 = v26[1];
      v27 = v35 == 3;
      v26 = 0;
      if (v7 && v35 == 3)
      {
        v26 = objc_msgSend_textStyleAtCellID_(self->_dataStore, v22, *&v95.origin, v24, v25);
        v16 = 0;
        v27 = 1;
      }
    }

    else
    {
      *a3 = objc_msgSend_tsceValueFromCell_atCellID_tableUID_(self->_dataStore, v13, v16, *&v95.origin, &self->_tableUID);
      v21 = objc_msgSend_valueType(v16, v17, v18, v19, v20);
      v26 = 0;
      v27 = v21 == 3;
      if (v7 && v21 == 3)
      {
        v28 = objc_msgSend_textStyle(v16, v22, v23, v24, v25);
        v27 = 1;
        v26 = v28;
      }
    }

    v29 = 0;
    if (v7 && v27)
    {
      v36 = objc_msgSend_asRawString(*a3, v22, v23, v24, v25);
      if (objc_msgSend_length(v36, v37, v38, v39, v40))
      {
        if (v26)
        {
          if (objc_msgSend_isVariation(v26, v41, v42, v43, v44))
          {
            v48 = objc_msgSend_defaultTextStyleForBaseCellCoord_(self, v45, *&a4, v46, v47);
            isEqual = objc_msgSend_isEqual_(v26, v49, v48, v50, v51);

            if ((isEqual & 1) == 0)
            {
              v53 = [TSCEUnpersistedStorage alloc];
              v94 = objc_msgSend_context(v26, v54, v55, v56, v57);
              v58 = *a3;
              v93 = objc_msgSend_objectLocale(self, v59, v60, v61, v62);
              v92 = objc_msgSend_asStringWithLocale_(v58, v63, v93, v64, v65);
              v91 = objc_msgSend_stylesheet(v26, v66, v67, v68, v69);
              v90 = objc_msgSend_documentRoot(self, v70, v71, v72, v73);
              v78 = objc_msgSend_theme(v90, v74, v75, v76, v77);
              v83 = objc_msgSend_defaultListStyle(v78, v79, v80, v81, v82);
              v85 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v53, v84, v94, v92, 5, v91, v26, v83, 0, 0);

              *a3 = objc_msgSend_richTextValue_(TSCERichTextValue, v86, v85, v87, v88);
            }
          }
        }
      }

      v29 = 0;
    }

    goto LABEL_23;
  }

  return 1000;
}

- (void)setFormulaOwnerUIDsWithMap:(id)a3 shouldStealReferences:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableModel setFormulaOwnerUIDsWithMap:shouldStealReferences:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v14, v15);
    v260._lower = objc_msgSend_tableUID(self, v17, v18, v19, v20);
    v260._upper = v21;
    v22 = TSKUIDStruct::description(&v260);
    v27 = objc_msgSend_tableName(self, v23, v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v28, v12, v16, 6364, 0, "Really needed an ownerUIDMapper here - tableModel is %@ (%@)", v22, v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v260._lower = 0;
  v260._upper = 0;
  v33 = objc_msgSend_fromTableUID(self, v6, v7, v8, v9);
  if (v33 | v34)
  {
    v38 = objc_msgSend_fromTableUID(self, v34, v35, v36, v37);
  }

  else
  {
    v38 = objc_msgSend_tableUID(self, v34, v35, v36, v37);
  }

  v260._lower = v38;
  v260._upper = v39;
  *&v259 = objc_msgSend_nextTableUID(v10, v39, v40, v41, v42);
  *(&v259 + 1) = v43;
  v51 = objc_msgSend_calcEngine(self, v43, v44, v45, v46);
  if (v51)
  {
    v52 = objc_msgSend_calcEngine(self, v47, v48, v49, v50);
  }

  else
  {
    v53 = objc_msgSend_documentRoot(self, v47, v48, v49, v50);
    v52 = objc_msgSend_calculationEngine(v53, v54, v55, v56, v57);
  }

  v62 = objc_msgSend_hiddenStates(self->_hiddenStatesOwner, v58, v59, v60, v61);
  objc_msgSend_willModify(v52, v63, v64, v65, v66);
  v71 = objc_msgSend_headerNameMgr(v52, v67, v68, v69, v70);
  objc_msgSend_updateTableUIDFrom_toTableUID_(v71, v72, &v260, &v259, v73);

  objc_msgSend_setTableUID_(self, v74, v259, *(&v259 + 1), v75);
  v80 = objc_msgSend_sortRuleReferenceTracker(self, v76, v77, v78, v79);
  objc_msgSend_setBaseTableUID_(v80, v81, v259, *(&v259 + 1), v82);

  v87 = objc_msgSend_conditionalStyleFormulaOwner(self, v83, v84, v85, v86);
  ConditionalStyleOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(v10, v88, v89, v90, v91);
  objc_msgSend_setOwnerUID_(v87, v93, ConditionalStyleOwnerUID, v93, v94);

  v99 = objc_msgSend_mergeOwner(self, v95, v96, v97, v98);
  MergeOwnerUID = objc_msgSend_nextMergeOwnerUID(v10, v100, v101, v102, v103);
  objc_msgSend_setOwnerUID_(v99, v105, MergeOwnerUID, v105, v106);

  v111 = objc_msgSend_pencilAnnotationOwner(self, v107, v108, v109, v110);
  PencilAnnotationOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(v10, v112, v113, v114, v115);
  objc_msgSend_setOwnerUID_(v111, v117, PencilAnnotationOwnerUID, v117, v118);

  v123 = objc_msgSend_pivotOwner(self, v119, v120, v121, v122);
  objc_msgSend_resetBaseOwnerUID(v123, v124, v125, v126, v127);

  hiddenStateFormulaOwnerForRows = self->_hiddenStateFormulaOwnerForRows;
  v132 = sub_2212C4930(&v259, 4, v129, v130, v131);
  objc_msgSend_setOwnerUID_(hiddenStateFormulaOwnerForRows, v133, v132, v133, v134);
  hiddenStateFormulaOwnerForColumns = self->_hiddenStateFormulaOwnerForColumns;
  v139 = sub_2212C4930(&v259, 0xB, v136, v137, v138);
  objc_msgSend_setOwnerUID_(hiddenStateFormulaOwnerForColumns, v140, v139, v140, v141);
  objc_msgSend_setFormulaOwnerUIDsWithMap_(v62, v142, v10, v143, v144);
  v149 = objc_msgSend_ownerUIDMap(v10, v145, v146, v147, v148);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v62, v150, v149, self->_calcEngine, v151);
  if (objc_msgSend_isAPivotDataModel(self, v152, v153, v154, v155))
  {
    objc_msgSend_setFormulaOwnerUIDsWithMap_(self->_categoryOwner, v156, v10, v158, v159);
  }

  else
  {
    v164 = objc_msgSend_tableInfo(self, v156, v157, v158, v159);
    v169 = objc_msgSend_summaryModel(v164, v165, v166, v167, v168);
    v174 = objc_msgSend_aggregateFormulaOwner(v169, v170, v171, v172, v173);
    objc_msgSend_setTableUID_(v174, v175, &v259, v176, v177);

    v258[0] = objc_msgSend_nextCategoryAggregatesOwnerUID(v10, v178, v179, v180, v181);
    v258[1] = v182;
    v186 = objc_msgSend_summaryModel(v164, v182, v183, v184, v185);
    v191 = objc_msgSend_aggregateFormulaOwner(v186, v187, v188, v189, v190);
    objc_msgSend_setOwnerUID_(v191, v192, v258, v193, v194);

    CategoryAggregatesOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(v10, v195, v196, v197, v198);
    v201 = v200;
    v205 = objc_msgSend_summaryModel(v164, v200, v202, v203, v204);
    objc_msgSend_setAggregateFormulaOwnerUID_(v205, v206, CategoryAggregatesOwnerUID, v201, v207);

    v216 = objc_msgSend_groupBy(v164, v208, v209, v210, v211);
    if (v216)
    {
      GroupByUID = objc_msgSend_nextGroupByUID(v10, v212, v213, v214, v215);
      objc_msgSend_setGroupByUid_(v216, v218, GroupByUID, v218, v219);
      objc_msgSend_resetCategoriesGroupByForOwnerRemapping(v164, v220, v221, v222, v223);
      v228 = objc_msgSend_translator(v164, v224, v225, v226, v227);
      objc_msgSend_addReceiverToGroupBy_(v228, v229, v216, v230, v231);
    }
  }

  v232 = objc_msgSend_hauntedOwner(self, v160, v161, v162, v163);
  v236 = sub_2212C4930(&v259, 0x23, v233, v234, v235);
  objc_msgSend_setOwnerUID_(v232, v237, v236, v237, v238);

  v243 = objc_msgSend_spillOwner(self, v239, v240, v241, v242);
  v247 = sub_2212C4930(&v259, 0xC, v244, v245, v246);
  objc_msgSend_setOwnerUID_(v243, v248, v247, v248, v249);

  if (v4 && v260 != 0uLL && v260 != v259)
  {
    v254 = objc_msgSend_documentRoot(self, v250, v251, v252, v253);
    v255 = TSUProtocolCast();

    objc_msgSend_tableUID_changedToTableUID_(v255, v256, &v260, &v259, v257, &unk_283598FF8);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4 bakeForBadRefs:(BOOL)a5
{
  v8 = a4;
  if ((objc_msgSend_containsFormulas(self->_dataStore, v9, v10, v11, v12) & 1) != 0 || objc_msgSend_numberOfConditionalStyles(self->_dataStore, v13, v14, v15, v16))
  {
    v115[0] = 0;
    v115[1] = v115;
    v115[2] = 0x9812000000;
    v115[3] = sub_2210B26E8;
    v115[4] = nullsub_6;
    v115[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v110.coordinate = 0;
    v110._tableUID._lower = objc_msgSend_tableUID(self, v13, v14, v15, v16);
    v110._tableUID._upper = v17;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v116, v8, &v110);
    v110.coordinate = 0;
    v110._tableUID._lower = &v110;
    v110._tableUID._upper = 0x9812000000;
    v111 = sub_2210B26E8;
    v112 = nullsub_6;
    v113 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v108.coordinate = 0;
    v108._tableUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v18, v19, v20, v21);
    v108._tableUID._upper = v22;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v114, v8, &v108);
    v108.coordinate = 0;
    v108._tableUID._lower = &v108;
    v108._tableUID._upper = 0x2020000000;
    v109 = 0;
    v27 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v23, v24, v25, v26);
    dataStore = self->_dataStore;
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = sub_2210B2738;
    v103[3] = &unk_27845E1F8;
    v105 = &v108;
    v106 = v115;
    v107 = a3;
    v29 = v27;
    v104 = v29;
    objc_msgSend_replaceFormulasUsingBlock_(dataStore, v30, v103, v31, v32);
    v37 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v33, v34, v35, v36);
    v38 = self->_dataStore;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_2210B2828;
    v99[3] = &unk_27845E220;
    v101 = &v110;
    v102 = a3;
    v39 = v37;
    v100 = v39;
    objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v38, v40, v99, v41, v42);
    LODWORD(v38) = objc_msgSend_numberOfRows(self, v43, v44, v45, v46);
    v96 = 0;
    v97 = 0;
    v47 = v38;
    v98 = 0;
    sub_2210B28E0(&v96, v38);
    if (v38)
    {
      v52 = 0;
      v53 = 8 * v47;
      do
      {
        v54 = objc_alloc_init(TSTConcurrentMutableIndexSet);
        v55 = *(v96 + v52);
        *(v96 + v52) = v54;

        v52 += 8;
      }

      while (v53 != v52);
    }

    if (objc_msgSend_count(v39, v48, v49, v50, v51) || objc_msgSend_count(v29, v56, v57, v58, v59))
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3321888768;
      v87[2] = sub_2210B2968;
      v87[3] = &unk_2834A1668;
      v88 = v29;
      v90 = v115;
      v95 = a5;
      v93 = a3;
      memset(v94, 0, sizeof(v94));
      sub_2210BC1EC(v94, v96, v97, (v97 - v96) >> 3);
      v91 = &v108;
      v89 = v39;
      v92 = &v110;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_2210B2C5C;
      v86[3] = &unk_27845E248;
      v86[4] = &v108;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3321888768;
      v84[2] = sub_2210B2C6C;
      v84[3] = &unk_2834A1698;
      memset(v85, 0, sizeof(v85));
      sub_2210BC1EC(v85, v96, v97, (v97 - v96) >> 3);
      objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v60, 139264, 0, 0, 0, 0, v87, v86, v84, 0);
      v117 = v85;
      sub_22107C2C0(&v117);

      v117 = v94;
      sub_22107C2C0(&v117);
    }

    v117 = &v96;
    sub_22107C2C0(&v117);

    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v110, 8);
    _Block_object_dispose(v115, 8);
  }

  v61 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
  v66 = objc_msgSend_hiddenStates(v61, v62, v63, v64, v65);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v66, v67, a3, v8, v68);

  v73 = objc_msgSend_mergeOwner(self, v69, v70, v71, v72);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v73, v74, a3, v8, v75);

  v80 = objc_msgSend_pencilAnnotationOwner(self, v76, v77, v78, v79);
  objc_msgSend_remapTableUIDsInFormulasWithMap_(v80, v81, a3, v82, v83);
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  v6 = objc_msgSend_addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs(self->_dataStore, a2, v2, v3, v4);
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2210B2E78;
    v12[3] = &unk_27845E270;
    v13 = v6;
    objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v11, 0x4000, 0, 1, 0, 0, v12, 0);
  }
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)a3
{
  v5 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_dataStore, a2, a3, v3, v4);

  return v5;
}

- (void)registerAllFormulasWithCalculationEngine:(id)a3 wasCrossDocumentPaste:(BOOL)a4 infoIsCategorized:(BOOL)a5 wasUndo:(BOOL)a6
{
  v8 = a4;
  v10 = a3;
  v15 = objc_msgSend_tableUID(self, v11, v12, v13, v14);
  v17 = v16;
  objc_msgSend_updateCalcEngineForTableSize(self, v16, v18, v19, v20);
  objc_msgSend_beginBatchingGroupCellDirtying(v10, v21, v22, v23, v24);
  if ((objc_msgSend_containsFormulas(self->_dataStore, v25, v26, v27, v28) & 1) != 0 || objc_msgSend_numberOfConditionalStyles(self->_dataStore, v29, v30, v31, v32))
  {
    v138 = a5;
    v33 = objc_msgSend_currentTransaction(v10, v29, v30, v31, v32);
    v170 = objc_msgSend_tableUID(self, v34, v35, v36, v37);
    v171 = v38;
    isSkippingRepairBadRefsForOwnerUID = objc_msgSend_isSkippingRepairBadRefsForOwnerUID_(v33, v38, &v170, v39, v40);

    v170 = 0;
    v171 = &v170;
    v172 = 0x9812000000;
    v173 = sub_2210B26E8;
    v174 = nullsub_6;
    v175 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v165.coordinate = 0;
    v165._tableUID._lower = objc_msgSend_tableUID(self, v42, v43, v44, v45);
    v165._tableUID._upper = v46;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v176, v10, &v165);
    v165.coordinate = 0;
    v165._tableUID._lower = &v165;
    v165._tableUID._upper = 0x9812000000;
    v166 = sub_2210B26E8;
    v167 = nullsub_6;
    v168 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v156.coordinate = 0;
    v156._tableUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v47, v48, v49, v50);
    v156._tableUID._upper = v51;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v169, v10, &v156);
    if (objc_msgSend_duringRollback(v10, v52, v53, v54, v55))
    {
      TSCEFormulaRewriteContext::setUseOnlyActiveTract((v171 + 6), 1);
      TSCEFormulaRewriteContext::setUseOnlyActiveTract((v165._tableUID._lower + 48), 1);
    }

    v60 = v171;
    v61 = objc_msgSend_tableUIDHistory(v10, v56, v57, v58, v59);
    v60[7] = v61;

    lower = v165._tableUID._lower;
    v67 = objc_msgSend_tableUIDHistory(v10, v63, v64, v65, v66);
    *(lower + 56) = v67;

    v139 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v68, v69, v70, v71);
    if ((isSkippingRepairBadRefsForOwnerUID & 1) == 0)
    {
      dataStore = self->_dataStore;
      if (v8)
      {
        v77 = v164;
        v164[0] = MEMORY[0x277D85DD0];
        v164[1] = 3221225472;
        v164[2] = sub_2210B36BC;
        v164[3] = &unk_27845E298;
        v164[4] = v10;
        v164[5] = v15;
        v164[6] = v17;
        objc_msgSend_replaceFormulasUsingBlock_(dataStore, v78, v164, v79, v80);
      }

      else
      {
        v77 = v163;
        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = sub_2210B36F0;
        v163[3] = &unk_27845E2C0;
        v163[4] = v139;
        objc_msgSend_replaceFormulasUsingBlock_(dataStore, v81, v163, v82, v83);
      }
    }

    v84 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v72, v73, v74, v75);
    v85 = v84;
    v86 = self->_dataStore;
    if (v8)
    {
      v87 = v162;
      v162[0] = MEMORY[0x277D85DD0];
      v162[1] = 3221225472;
      v162[2] = sub_2210B3770;
      v162[3] = &unk_27845E2E8;
      v162[4] = v10;
      v162[5] = self;
      objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v86, v88, v162, v89, v90);
    }

    else
    {
      v87 = v161;
      v161[0] = MEMORY[0x277D85DD0];
      v161[1] = 3221225472;
      v161[2] = sub_2210B37F0;
      v161[3] = &unk_27845E310;
      v161[4] = v84;
      objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v86, v91, v161, v92, v93);
    }

    v156.coordinate = 0;
    v156._tableUID._lower = &v156;
    v156._tableUID._upper = 0x9812000000;
    v157 = sub_2210B26E8;
    v158 = nullsub_6;
    v159 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    memset(&v155, 0, sizeof(v155));
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v160, v10, &v155);
    v146[0] = MEMORY[0x277D85DD0];
    v146[1] = 3221225472;
    v146[2] = sub_2210B385C;
    v146[3] = &unk_27845E380;
    v153 = v138;
    v154 = a6;
    v146[4] = self;
    v94 = v10;
    v147 = v94;
    v150 = &v156;
    v95 = v139;
    v148 = v95;
    v151 = &v170;
    v152 = &v165;
    v96 = v85;
    v149 = v96;
    objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v97, 139264, 0, 1, 0, 0, v146, 0);
    v98 = [TSTCellIterator alloc];
    v103 = objc_msgSend_range(self, v99, v100, v101, v102);
    v106 = objc_msgSend_regionFromRange_(TSTCellRegion, v104, v103, v104, v105);
    v111 = objc_msgSend_range(self, v107, v108, v109, v110);
    v113 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_baseClampingRange_(v98, v112, self, v106, 34, 139264, v111, v112);

    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = sub_2210B3F2C;
    v144[3] = &unk_27845E3A8;
    v144[4] = self;
    v145 = v94;
    objc_msgSend_iterateCellsUsingBlock_(v113, v114, v144, v115, v116);

    _Block_object_dispose(&v156, 8);
    _Block_object_dispose(&v165, 8);
    _Block_object_dispose(&v170, 8);
  }

  v117 = objc_msgSend_mergeOwner(self, v29, v30, v31, v32);

  if (v117)
  {
    v122 = objc_msgSend_mergeOwner(self, v118, v119, v120, v121);
    v127 = objc_msgSend_ownerUID(v122, v123, v124, v125, v126);
    v129 = v128;

    v134 = objc_msgSend_mergeOwner(self, v130, v131, v132, v133);
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = sub_2210B4050;
    v140[3] = &unk_27845E3D0;
    v141 = v10;
    v142 = v127;
    v143 = v129;
    objc_msgSend_enumerateMergeFormulasUsingBlock_(v134, v135, v140, v136, v137);
  }

  objc_msgSend_endBatchingGroupCellDirtying(v10, v118, v119, v120, v121);
}

- (void)prepareForPasteWithCalculationEngine:(id)a3 sourceOffset:(TSUColumnRowOffset)a4 bakeFormulas:(BOOL)a5
{
  v8 = a3;
  if ((objc_msgSend_containsFormulas(self->_dataStore, v9, v10, v11, v12) & 1) != 0 || objc_msgSend_numberOfConditionalStyles(self->_dataStore, v13, v14, v15, v16))
  {
    v163.var0 = 0;
    v163.var1 = objc_msgSend_tableUID(self, v13, v14, v15, v16);
    v163.var2.var0.var0.coordinate = v17;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v164, v8, &v163);
    v154.coordinate = 0;
    v154._tableUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v18, v19, v20, v21);
    v154._tableUID._upper = v22;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v163, v8, &v154);
    v164.var1 = objc_msgSend_tableUIDHistory(v8, v23, v24, v25, v26);

    v163.var1 = objc_msgSend_tableUIDHistory(v8, v27, v28, v29, v30);

    v31 = a4;
    TSCEFormulaRewriteContext::setFromOffset(&v164, v31);
    v32 = a4;
    TSCEFormulaRewriteContext::setFromOffset(&v163, v32);
    v37 = objc_msgSend_tableInfo(self, v33, v34, v35, v36);
    v154.coordinate = objc_msgSend_range(self, v38, v39, v40, v41);
    v154._tableUID._lower = v42;
    v43 = TSUCellRect::columns(&v154);
    if (v37)
    {
      objc_msgSend_columnUIDsForColumnRange_(v37, v44, v43, v44, v45);
    }

    else
    {
      v161 = 0;
      v160 = 0;
      v162 = 0;
    }

    v50 = objc_msgSend_tableInfo(self, v46, v47, v48, v49);
    v154.coordinate = objc_msgSend_range(self, v51, v52, v53, v54);
    v154._tableUID._lower = v55;
    v56 = TSUCellRect::rows(&v154);
    if (v50)
    {
      objc_msgSend_rowUIDsForRowRange_(v50, v57, v56, v57, v58);
    }

    else
    {
      v158 = 0;
      v157 = 0;
      v159 = 0;
    }

    sub_2210BBBE8(&v154, &v160, &v157);
    memset(v153, 0, sizeof(v153));
    *__p = 0u;
    v63 = objc_msgSend_range(self, v59, v60, v61, v62);
    v65 = v64;
    v142.origin = v63;
    v142.size = v64;
    TSUCellRect::offsetBy(&v142);
    v70 = objc_msgSend_tableInfo(self, v66, v67, v68, v69);
    v142.origin = v63;
    v142.size = v65;
    v71 = TSUCellRect::columns(&v142);
    if (v70)
    {
      objc_msgSend_columnUIDsForColumnRange_(v70, v72, v71, v72, v73);
    }

    else
    {
      v149 = 0;
      v150 = 0;
      v151 = 0;
    }

    v78 = objc_msgSend_tableInfo(self, v74, v75, v76, v77);
    v142.origin = v63;
    v142.size = v65;
    v79 = TSUCellRect::rows(&v142);
    if (v78)
    {
      objc_msgSend_rowUIDsForRowRange_(v78, v80, v79, v80, v81);
    }

    else
    {
      v146 = 0;
      v147 = 0;
      v148 = 0;
    }

    sub_2210BBBE8(&v142, &v149, &v146);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v142;
    v153[0] = v143;
    v142.size = 0;
    v143 = 0;
    v142.origin = 0;
    origin = v153[1];
    if (v153[1])
    {
      v153[2] = v153[1];
      operator delete(v153[1]);
      origin = v142.origin;
    }

    *&v153[1] = v144;
    v153[3] = v145;
    v145 = 0;
    v144 = 0uLL;
    if (origin)
    {
      v142.size = origin;
      operator delete(origin);
    }

    v83 = [TSTFormulaRewriteSpec alloc];
    v142.origin = objc_msgSend_tableUID(self, v84, v85, v86, v87);
    v142.size = v88;
    v141[0] = objc_msgSend_tableUID(self, v88, v89, v90, v91);
    v141[1] = v92;
    v96 = objc_msgSend_tableInfo(self, v92, v93, v94, v95);
    v101 = objc_msgSend_translator(v96, v97, v98, v99, v100);
    v106 = objc_msgSend_coordinateMapper(v101, v102, v103, v104, v105);
    v140[0] = objc_msgSend_fromTableUID(self, v107, v108, v109, v110);
    v140[1] = v111;
    v112 = objc_msgSend_initForCategorizedTableChromeToBaseRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_srcCoordMapper_fromTableUID_(v83, v111, &v142, __p, v141, &v154, v106, 0, v140);

    v117 = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v113, v114, v115, v116);
    objc_msgSend_setConditionalStyleOwnerUID_(v112, v118, v117, v118, v119);
    v124 = objc_msgSend_tableInfo(self, v120, v121, v122, v123);
    v129 = objc_msgSend_formulaCoordSpace(v124, v125, v126, v127, v128);

    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3321888768;
    v133[2] = sub_2210B480C;
    v133[3] = &unk_2834A16F0;
    v139 = a5;
    v138[11] = a4;
    v135 = *&v164.var0;
    sub_2212C7250(v136);
    TSCEFormulaRewriteContextRecord::operator=(v136, &v164.var2);
    v136[11] = v129;
    v133[4] = self;
    v130 = v112;
    v134 = v130;
    v137 = *&v163.var0;
    sub_2212C7250(v138);
    TSCEFormulaRewriteContextRecord::operator=(v138, &v163.var2);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_2210B4D04;
    v132[3] = &unk_27845E3F8;
    v132[4] = self;
    objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v131, 139264, 0, 1, 0, 0, v133, v132);

    if (v146)
    {
      v147 = v146;
      operator delete(v146);
    }

    if (v149)
    {
      v150 = v149;
      operator delete(v149);
    }

    if (v153[1])
    {
      v153[2] = v153[1];
      operator delete(v153[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v155)
    {
      v156 = v155;
      operator delete(v155);
    }

    if (v154.coordinate)
    {
      v154._tableUID._lower = v154.coordinate;
      operator delete(*&v154.coordinate);
    }

    if (v157)
    {
      v158 = v157;
      operator delete(v157);
    }

    if (v160)
    {
      v161 = v160;
      operator delete(v160);
    }
  }
}

- (void)willBeAddedCellCleanup:(BOOL)a3
{
  if (a3)
  {
    hasImportWarnings = objc_msgSend_hasImportWarnings(self, a2, a3, v3, v4);
  }

  else
  {
    hasImportWarnings = 0;
  }

  v7 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, v3, v4);
  if (objc_msgSend_supportsControlCells(v7, v8, v9, v10, v11))
  {
    hasRatingFormats = 0;
LABEL_9:

    if ((hasImportWarnings & 1) == 0 && !hasRatingFormats)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!objc_msgSend_hasControls(self, v12, v13, v14, v15))
  {
    hasRatingFormats = objc_msgSend__hasRatingFormats(self, v17, v18, v19, v20);
    goto LABEL_9;
  }

  LOBYTE(hasRatingFormats) = 1;
LABEL_11:
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2210B4E8C;
  v23[3] = &unk_27845E418;
  if (hasImportWarnings)
  {
    v22 = 0x40000;
  }

  else
  {
    v22 = 0;
  }

  v24 = hasRatingFormats;
  v25 = hasImportWarnings;
  objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v21, v22, 0, 0, 0, 0, v23, 0);
}

- (BOOL)hasPastableFormulas
{
  v5 = self;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x9812000000;
  v38[3] = sub_2210B26E8;
  v38[4] = nullsub_6;
  v38[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
  v6 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  memset(&v37, 0, sizeof(v37));
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v39, v6, &v37);

  v11 = objc_msgSend_tableInfo(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_groupByUid(v11, v12, v13, v14, v15);
  v18 = v17;

  v23 = objc_msgSend_tableInfo(v5, v19, v20, v21, v22);
  v28 = objc_msgSend_fromGroupByUID(v23, v24, v25, v26, v27);
  v30 = v29;

  dataStore = v5->_dataStore;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2210B5128;
  v36[3] = &unk_27845E440;
  v36[6] = v16;
  v36[7] = v18;
  v36[8] = v28;
  v36[9] = v30;
  v36[4] = v38;
  v36[5] = &v40;
  objc_msgSend_replaceFormulasUsingBlock_(dataStore, v32, v36, v33, v34);
  LOBYTE(v5) = *(v41 + 24);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);
  return v5;
}

- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  cellsPendingWrite = self->_cellsPendingWrite;
  if (cellsPendingWrite)
  {
    objc_msgSend_allCellCoords(cellsPendingWrite, a3, v3, v4, v5);
    TSCECellCoordSet::operator=(retstr, &v10);
    sub_22107C860(&v10._rowsPerColumn, v10._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  result = self->_spillingCellsPendingWrite;
  if (result)
  {
    objc_msgSend_allCellCoords(result, a3, v3, v4, v5);
    TSCECellCoordSet::addCellCoords(retstr, &v10);
    sub_22107C860(&v10._rowsPerColumn, v10._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  return result;
}

- (BOOL)cellModifiedInCurrentRecalcCycle:(const TSUCellCoord *)a3
{
  cellsPendingWrite = self->_cellsPendingWrite;
  if (cellsPendingWrite)
  {
    LOBYTE(cellsPendingWrite) = (MEMORY[0x2821F9670])(cellsPendingWrite, sel_hasCellAtCellID_, *a3);
  }

  return cellsPendingWrite;
}

- (void)addCellRefToClearError:(const TSCECellRef *)a3
{
  os_unfair_lock_lock(&self->_clearErrorLock);
  TSCECellRefSet::addCellRef(&self->_clearErrorCells, a3);

  os_unfair_lock_unlock(&self->_clearErrorLock);
}

- (void)clearErrors
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  os_unfair_lock_lock(&self->_clearErrorLock);
  TSCECellRefSet::operator=(&v6, &self->_clearErrorCells);
  TSCECellRefSet::clear(&self->_clearErrorCells);
  os_unfair_lock_unlock(&self->_clearErrorLock);
  objc_msgSend_clearErrorAndWarningsForCells_(self->_calcEngine, v3, &v6, v4, v5);
  sub_22107C800(&v6, v7[0]);
}

- (void)mapTableStylesToStylesheet:(id)a3 withMapper:(id)a4
{
  v101 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v87 = a4;
  v10 = objc_msgSend_context(self, v6, v7, v8, v9);
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = sub_2210B587C;
  v97[3] = &unk_27845E468;
  v90 = v87;
  v98 = v90;
  v89 = v86;
  v99 = v89;
  v91 = self;
  v12 = objc_msgSend_networkWithContext_presetID_styleProvider_styleMorphingBlock_(TSTTableStyleNetwork, v11, v10, 0, self, v97);

  objc_msgSend_setStyleNetwork_(self, v13, v12, v14, v15);
  v20 = objc_msgSend_tableStylePreset(self, v16, v17, v18, v19);
  LOBYTE(v10) = v20 == 0;

  if ((v10 & 1) == 0)
  {
    v88 = objc_msgSend_tableStylePreset(self, v21, v22, v23, v24);
    objc_msgSend_setTableStylePreset_(self, v25, 0, v26, v27);
    objc_opt_class();
    v32 = objc_msgSend_styleNetwork(v88, v28, v29, v30, v31);
    v37 = objc_msgSend_tableStyle(v32, v33, v34, v35, v36);
    v41 = objc_msgSend_mappedStyleForStyle_(v90, v38, v37, v39, v40);
    v42 = TSUCheckedDynamicCast();

    v47 = objc_msgSend_documentRoot(self, v43, v44, v45, v46);
    v52 = objc_msgSend_theme(v47, v48, v49, v50, v51);
    v56 = objc_msgSend_presetsOfKind_(v52, v53, *MEMORY[0x277D80BA8], v54, v55);

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v56;
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v93, v100, 16);
    if (v62)
    {
      v63 = *v94;
      while (2)
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v94 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v93 + 1) + 8 * i);
          v66 = objc_msgSend_styleNetwork(v65, v58, v59, v60, v61);
          v71 = objc_msgSend_tableStyle(v66, v67, v68, v69, v70);
          v76 = objc_msgSend_objectUUID(v71, v72, v73, v74, v75);
          v81 = objc_msgSend_objectUUID(v42, v77, v78, v79, v80);
          isEqual = objc_msgSend_isEqual_(v76, v82, v81, v83, v84);

          if (isEqual)
          {
            objc_msgSend_setTableStylePreset_(v91, v58, v65, v60, v61);
            goto LABEL_12;
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v93, v100, 16);
        if (v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_mapTableStylesToStylesheet_withMapper_(self, v8, v6, v7, v9);
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v10, v11, v12, v13))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableModel adoptStylesheet:withMapper:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 7155, 0, "we expect the table to not be registered yet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  dataStore = self->_dataStore;
  v43[0] = objc_msgSend_tableUID(self, v14, v15, v16, v17);
  v43[1] = v30;
  v34 = objc_msgSend_conditionalStyleFormulaOwner(self, v30, v31, v32, v33);
  objc_msgSend_adoptStylesheet_withMapper_ownerUID_conditionalStyleOwner_(dataStore, v35, v6, v7, v43, v34);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2210B5BCC;
  v41[3] = &unk_27845E490;
  v36 = v7;
  v42 = v36;
  v37 = MEMORY[0x223DA1C10](v41);
  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v38, v37, v39, v40);
}

- (void)addReferencedStylesToSet:(id)a3
{
  v4 = a3;
  dataStore = self->_dataStore;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2210B5CB8;
  v10[3] = &unk_27845E4B8;
  v11 = v4;
  v6 = v4;
  objc_msgSend_replaceStylesUsingBlock_(dataStore, v7, v10, v8, v9);
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = a3;
  dataStore = self->_dataStore;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2210B5E44;
  v12[3] = &unk_27845E4E0;
  v6 = v4;
  v13 = v6;
  objc_msgSend_replaceStylesUsingBlock_(dataStore, v7, v12, v8, v9);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2210B5E7C;
  v11[3] = &unk_27845E270;
  v11[4] = self;
  objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v10, 2099200, 0, 1, 0, 0, v11, 0);
}

- (void)assertListTilesAndRows
{
  v9 = objc_msgSend_dataStore(self, a2, v2, v3, v4);
  objc_msgSend_assertListTilesAndRows(v9, v5, v6, v7, v8);
}

- (void)validateTableStylesInSameStylesheetExpectingDocSS:(BOOL)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableStyle(self, a2, a3, v3, v4);
  v12 = objc_msgSend_stylesheet(v7, v8, v9, v10, v11);

  v13 = &stru_2834BADA0;
  if (v5)
  {
    v13 = @" Document or Theme";
  }

  v18 = v13;
  if (!v5)
  {
    goto LABEL_9;
  }

  v19 = objc_msgSend_documentRoot(self, v14, v15, v16, v17);
  v24 = objc_msgSend_stylesheet(v19, v20, v21, v22, v23);

  if (!v24)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTTableModel validateTableStylesInSameStylesheetExpectingDocSS:]", v26, v27);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 7247, 0, "Expected non-nil document stylesheet for validation.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
LABEL_9:
    v24 = v12;
    goto LABEL_10;
  }

  if (objc_msgSend_isAncestorOf_(v12, v25, v24, v26, v27))
  {
    v31 = v12;

    v24 = v31;
    if (!v31)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v43 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v28, self, v29, v30);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2210B6284;
  v49[3] = &unk_27845E508;
  v44 = v24;
  v50 = v44;
  v45 = v18;
  v51 = v45;
  objc_msgSend_enumerateAllStylesWithBlock_(v43, v46, v49, v47, v48);
}

- (void)_removeAnnotationsFromDeleteRange:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v7 = objc_msgSend_pencilAnnotationOwner(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v10 = objc_msgSend_regionFromRange_(TSTCellRegion, v8, origin, size, v9);
  v26 = objc_msgSend_annotationsContainedByRegion_(v7, v11, v10, v12, v13);

  if (objc_msgSend_count(v26, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_pencilAnnotationOwner(self, v18, v19, v20, v21);
    objc_msgSend_removeAnnotations_(v22, v23, v26, v24, v25);
  }
}

- (void)upgradeFormatsForCustomFormatListU2_0
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
  dataStore = self->_dataStore;

  objc_msgSend_upgradeCellFormatsU2_0(dataStore, v6, v7, v8, v9);
}

- (void)upgradeFromPreUFF
{
  v6 = objc_msgSend_context(self, a2, v2, v3, v4);
  Cancelled = objc_msgSend_isReadCancelled(v6, v7, v8, v9, v10);

  if ((Cancelled & 1) == 0)
  {
    if (!self->_tableNameStyle)
    {
      objc_msgSend_willModifyForUpgrade(self, v12, v13, v14, v15);
      v20 = objc_msgSend_documentRoot(self, v16, v17, v18, v19);
      v25 = objc_msgSend_theme(v20, v21, v22, v23, v24);
      v28 = objc_msgSend_networkFromTheme_presetID_(TSTTableStyleNetwork, v26, v25, self->_presetIDForUpgrade, v27);
      v33 = objc_msgSend_tableNameStyle(v28, v29, v30, v31, v32);
      tableNameStyle = self->_tableNameStyle;
      self->_tableNameStyle = v33;
    }

    if (!self->_tableNameShapeStyle)
    {
      objc_msgSend_willModifyForUpgrade(self, v12, v13, v14, v15);
      v39 = objc_msgSend_documentRoot(self, v35, v36, v37, v38);
      v44 = objc_msgSend_theme(v39, v40, v41, v42, v43);
      v47 = objc_msgSend_networkFromTheme_presetID_(TSTTableStyleNetwork, v45, v44, self->_presetIDForUpgrade, v46);
      v52 = objc_msgSend_tableNameShapeStyle(v47, v48, v49, v50, v51);
      tableNameShapeStyle = self->_tableNameShapeStyle;
      self->_tableNameShapeStyle = v52;
    }

    if (self->_deprecatedProvider)
    {
      v54 = objc_alloc_init(MEMORY[0x277D80888]);
      v55 = objc_alloc(MEMORY[0x277D80878]);
      v59 = objc_msgSend_initWithDelegate_(v55, v56, v54, v57, v58);
      v60 = [TSTCellMap alloc];
      v109 = objc_msgSend_initWithContext_(v60, v61, v59, v62, v63);
      v68 = objc_msgSend_newCell(self, v64, v65, v66, v67);
      objc_msgSend_clear(v68, v69, v70, v71, v72);
      v75 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v73, 260, 0, v74);
      v80 = objc_msgSend_range(self, v76, v77, v78, v79);
      v83 = objc_msgSend_regionFromRange_(TSTCellRegion, v81, v80, v81, v82);
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = sub_2210B6D20;
      v110[3] = &unk_27845E580;
      v84 = v68;
      v111 = v84;
      v112 = self;
      v85 = v75;
      v113 = v85;
      v86 = v109;
      v114 = v86;
      objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v87, v83, 0x400000, v110);

      objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self, v88, v86, 0, 0);
      deprecatedProvider = self->_deprecatedProvider;
      self->_deprecatedProvider = 0;
    }

    else
    {
      v90 = objc_msgSend_documentRoot(self, v12, v13, v14, v15);
      v95 = objc_msgSend_stylesheet(v90, v91, v92, v93, v94);

      v99 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v96, self, v97, v98);
      v104 = objc_msgSend_range(self, v100, v101, v102, v103);
      v107 = objc_msgSend_regionFromRange_(TSTCellRegion, v105, v104, v105, v106);
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = sub_2210B6A4C;
      v115[3] = &unk_27845E558;
      v54 = v95;
      v116 = v54;
      v59 = v99;
      v117 = v59;
      v118 = self;
      objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v108, v107, 0x80000, v115);

      v86 = v116;
    }
  }
}

- (void)p_upgradeMerges
{
  dataStore = self->_dataStore;
  if (dataStore)
  {
    objc_msgSend_mergedRects(dataStore, a2, v2, v3, v4);
    v9 = v10;
    if (v10 != v11)
    {
      do
      {
        objc_msgSend_insertBaseMergeRangeRemovingOverlaps_(self->_mergeOwner, v7, *v9, v9[1], v8);
        v9 += 2;
      }

      while (v9 != v11);
      v9 = v10;
    }

    if (v9)
    {
      operator delete(v9);
    }
  }
}

- (TSUModelCellCoord)baseCellCoordForCellContainingRichTextStorage:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableModel baseCellCoordForCellContainingRichTextStorage:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 7706, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3812000000;
  v34 = sub_2210B7330;
  v35 = nullsub_8;
  v36 = &unk_22188E88F;
  v37 = 0x7FFF7FFFFFFFLL;
  v20 = objc_msgSend_range(self, v4, v5, v6, v7);
  v23 = objc_msgSend_regionFromRange_(TSTCellRegion, v21, v20, v21, v22);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2210B7340;
  v28[3] = &unk_27845E5A8;
  v24 = v8;
  v29 = v24;
  v30 = &v31;
  objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v25, v23, 0x80000, v28);

  v26 = v32[6];
  _Block_object_dispose(&v31, 8);

  return v26;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  LOWORD(a4) = objc_msgSend_numberOfColumns(self, v9, v10, v11, v12);
  if (a4 == objc_msgSend_numberOfColumns(v8, v13, v14, v15, v16) && (v21 = objc_msgSend_numberOfRows(self, v17, v18, v19, v20), v21 == objc_msgSend_numberOfRows(v8, v22, v23, v24, v25)))
  {
    v30 = objc_msgSend_tableNameEnabled(self, v26, v27, v28, v29);
    if (v30 != objc_msgSend_tableNameEnabled(v8, v31, v32, v33, v34))
    {
      TSDMixingTypeBestFromMixingTypes();
    }

    if (objc_msgSend_tableNameEnabled(self, v35, v36, v37, v38) && objc_msgSend_tableNameEnabled(v8, v41, v42, v43, v44))
    {
      v45 = objc_msgSend_tableName(self, v41, v42, v43, v44);
      v50 = objc_msgSend_tableName(v8, v46, v47, v48, v49);
      isEqualToString = objc_msgSend_isEqualToString_(v45, v51, v50, v52, v53);

      if ((isEqualToString & 1) == 0)
      {
        TSDMixingTypeBestFromMixingTypes();
      }

      v59 = objc_msgSend_tableNameBorderEnabled(self, v55, v56, v57, v58);
      if (v59 != objc_msgSend_tableNameBorderEnabled(v8, v60, v61, v62, v63))
      {
        TSDMixingTypeBestFromMixingTypes();
      }

      if (objc_msgSend_tableNameBorderEnabled(self, v64, v65, v66, v67) && objc_msgSend_tableNameBorderEnabled(v8, v68, v69, v70, v71))
      {
        v72 = objc_msgSend_tableNameBorderStroke(self, v68, v69, v70, v71);
        v77 = objc_msgSend_tableNameBorderStroke(v8, v73, v74, v75, v76);
        TSDMixingTypeWithObjects();
        TSDMixingTypeBestFromMixingTypes();
      }

      objc_msgSend_tableNameHeight(self, v68, v69, v70, v71);
      v79 = v78;
      objc_msgSend_tableNameHeight(v8, v80, v81, v82, v83);
      if (v79 != v88)
      {
        TSDMixingTypeBestFromMixingTypes();
      }

      v89 = objc_msgSend_tableNameStyle(self, v84, v85, v86, v87);
      v94 = objc_msgSend_tableNameStyle(v8, v90, v91, v92, v93);
      TSDMixingTypeWithObjects();
      TSDMixingTypeBestFromMixingTypes();

      v99 = objc_msgSend_tableNameShapeStyle(self, v95, v96, v97, v98);
      v104 = objc_msgSend_tableNameShapeStyle(v8, v100, v101, v102, v103);
      TSDMixingTypeWithObjects();
      TSDMixingTypeBestFromMixingTypes();
    }

    v105 = objc_msgSend_tableStyle(self, v41, v42, v43, v44);
    v110 = objc_msgSend_tableStyle(v8, v106, v107, v108, v109);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v115 = objc_msgSend_bodyCellStyle(self, v111, v112, v113, v114);
    v120 = objc_msgSend_bodyCellStyle(v8, v116, v117, v118, v119);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v125 = objc_msgSend_headerRowCellStyle(self, v121, v122, v123, v124);
    v130 = objc_msgSend_headerRowCellStyle(v8, v126, v127, v128, v129);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v135 = objc_msgSend_headerColumnCellStyle(self, v131, v132, v133, v134);
    v140 = objc_msgSend_headerColumnCellStyle(v8, v136, v137, v138, v139);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v145 = objc_msgSend_footerRowCellStyle(self, v141, v142, v143, v144);
    v150 = objc_msgSend_footerRowCellStyle(v8, v146, v147, v148, v149);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v155 = objc_msgSend_bodyTextStyle(self, v151, v152, v153, v154);
    v160 = objc_msgSend_bodyTextStyle(v8, v156, v157, v158, v159);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v165 = objc_msgSend_headerRowTextStyle(self, v161, v162, v163, v164);
    v170 = objc_msgSend_headerRowTextStyle(v8, v166, v167, v168, v169);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v175 = objc_msgSend_headerColumnTextStyle(self, v171, v172, v173, v174);
    v180 = objc_msgSend_headerColumnTextStyle(v8, v176, v177, v178, v179);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v185 = objc_msgSend_footerRowTextStyle(self, v181, v182, v183, v184);
    v190 = objc_msgSend_footerRowTextStyle(v8, v186, v187, v188, v189);
    TSDMixingTypeWithObjects();
    v39 = TSDMixingTypeBestFromMixingTypes();

    if (v39 >= 3)
    {
      v284 = v6;
      v285 = v7;
      v195 = [TSTCellIterator alloc];
      v200 = objc_msgSend_tableInfo(self, v196, v197, v198, v199);
      v205 = objc_msgSend_range(self, v201, v202, v203, v204);
      v208 = objc_msgSend_regionFromRange_(TSTCellRegion, v206, v205, v206, v207);
      v213 = objc_msgSend_range(self, v209, v210, v211, v212);
      v286 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v195, v214, v200, self, v208, 128, 536871936, v213, v214);

      v215 = [TSTCellIterator alloc];
      v220 = objc_msgSend_tableInfo(v8, v216, v217, v218, v219);
      v225 = objc_msgSend_range(v8, v221, v222, v223, v224);
      v228 = objc_msgSend_regionFromRange_(TSTCellRegion, v226, v225, v226, v227);
      v233 = objc_msgSend_range(v8, v229, v230, v231, v232);
      v235 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v215, v234, v220, v8, v228, 128, 536871936, v233, v234);

      v239 = 0;
      v240 = 0;
      while (1)
      {
        v288 = v239;
        NextCellData = objc_msgSend_getNextCellData_(v286, v236, &v288, v237, v238);
        v242 = v288;

        if (!NextCellData)
        {
          break;
        }

        v287 = v240;
        v244 = objc_msgSend_getNextCellData_(v235, v236, &v287, v237, v238);
        v245 = v287;

        if (v244)
        {
          v246 = objc_msgSend_cell(v242, v236, v243, v237, v238);
          v251 = objc_msgSend_cell(v245, v247, v248, v249, v250);
          if ((objc_msgSend_hasEqualContentToCell_(v246, v252, v251, v253, v254) & 1) == 0)
          {
            TSDMixingTypeBestFromMixingTypes();
          }

          v263 = objc_msgSend_cellStyle(v246, v255, v256, v257, v258);
          if (!v263)
          {
            v264 = objc_msgSend_cellID(v242, v259, v260, v261, v262);
            v263 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(self, v265, v264, 0, v266);
          }

          v271 = objc_msgSend_cellStyle(v251, v259, v260, v261, v262);
          if (!v271)
          {
            v272 = objc_msgSend_cellID(v245, v267, v268, v269, v270);
            v271 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(v8, v273, v272, 0, v274);
          }

          TSDMixingTypeWithObjects();
          v39 = TSDMixingTypeBestFromMixingTypes();

          v239 = v242;
          v240 = v245;
          if (v39 > 2)
          {
            continue;
          }
        }

        goto LABEL_32;
      }

      v245 = v240;
LABEL_32:
      objc_msgSend_terminate(v235, v236, v243, v237, v238);
      objc_msgSend_terminate(v286, v275, v276, v277, v278);

      v6 = v284;
      v7 = v285;
    }

    hasAlternatingRows = objc_msgSend_hasAlternatingRows(self, v191, v192, v193, v194);
    if (hasAlternatingRows != objc_msgSend_hasAlternatingRows(v8, v280, v281, v282, v283))
    {
      v39 = TSDMixingTypeBestFromMixingTypes();
    }
  }

  else
  {
    v39 = 1;
  }

  return v39;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v367 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
  v373 = v7;
  v366 = v6;
  v12 = [TSTTableModel alloc];
  v17 = objc_msgSend_context(self, v13, v14, v15, v16);
  v22 = objc_msgSend_range(self, v18, v19, v20, v21);
  v25 = objc_msgSend_regionFromRange_(TSTCellRegion, v23, v22, v23, v24);
  v372 = objc_msgSend_initWithContext_fromSourceModel_region_tableInfo_waitForCalcEngine_(v12, v26, v17, self, v25, v367, 0);

  objc_msgSend_tableNameEnabled(self, v27, v28, v29, v30);
  objc_msgSend_tableNameEnabled(v7, v31, v32, v33, v34);
  v35 = TSUMixBOOLs();
  objc_msgSend_setTableNameEnabled_(v372, v36, v35, v37, v38);
  if (a3 >= 0.5)
  {
    objc_msgSend_tableName(v7, v39, v40, v41, v42);
  }

  else
  {
    objc_msgSend_tableName(self, v39, v40, v41, v42);
  }
  v43 = ;
  objc_msgSend_setTableName_(v372, v44, v43, v45, v46);

  objc_msgSend_tableNameHeight(self, v47, v48, v49, v50);
  objc_msgSend_tableNameHeight(v7, v51, v52, v53, v54);
  TSUMixFloats();
  objc_msgSend_setTableNameHeight_(v372, v55, v56, v57, v58);
  objc_msgSend_tableNameBorderEnabled(self, v59, v60, v61, v62);
  objc_msgSend_tableNameBorderEnabled(v7, v63, v64, v65, v66);
  v67 = TSUMixBOOLs();
  objc_msgSend_setTableNameBorderEnabled_(v372, v68, v67, v69, v70);
  v75 = objc_msgSend_tableNameStyle(self, v71, v72, v73, v74);
  v80 = objc_msgSend_tableNameStyle(v7, v76, v77, v78, v79);
  v81 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setTableNameStyle_(v372, v82, v81, v83, v84);

  v89 = objc_msgSend_tableNameShapeStyle(self, v85, v86, v87, v88);
  v94 = objc_msgSend_tableNameShapeStyle(v7, v90, v91, v92, v93);
  v95 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setTableNameShapeStyle_(v372, v96, v95, v97, v98);

  v103 = objc_msgSend_tableStyle(self, v99, v100, v101, v102);
  v108 = objc_msgSend_tableStyle(v7, v104, v105, v106, v107);
  v109 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setTableStyle_(v372, v110, v109, v111, v112);

  v117 = objc_msgSend_bodyCellStyle(self, v113, v114, v115, v116);
  v122 = objc_msgSend_bodyCellStyle(v7, v118, v119, v120, v121);
  v123 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBodyCellStyle_(v372, v124, v123, v125, v126);

  v131 = objc_msgSend_headerRowCellStyle(self, v127, v128, v129, v130);
  v136 = objc_msgSend_headerRowCellStyle(v7, v132, v133, v134, v135);
  v137 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderRowCellStyle_(v372, v138, v137, v139, v140);

  v145 = objc_msgSend_headerColumnCellStyle(self, v141, v142, v143, v144);
  v150 = objc_msgSend_headerColumnCellStyle(v7, v146, v147, v148, v149);
  v151 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderColumnCellStyle_(v372, v152, v151, v153, v154);

  v159 = objc_msgSend_footerRowCellStyle(self, v155, v156, v157, v158);
  v164 = objc_msgSend_footerRowCellStyle(v7, v160, v161, v162, v163);
  v165 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setFooterRowCellStyle_(v372, v166, v165, v167, v168);

  v173 = objc_msgSend_bodyTextStyle(self, v169, v170, v171, v172);
  v178 = objc_msgSend_bodyTextStyle(v7, v174, v175, v176, v177);
  v179 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBodyTextStyle_(v372, v180, v179, v181, v182);

  v187 = objc_msgSend_headerRowTextStyle(self, v183, v184, v185, v186);
  v192 = objc_msgSend_headerRowTextStyle(v7, v188, v189, v190, v191);
  v193 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderRowTextStyle_(v372, v194, v193, v195, v196);

  v201 = objc_msgSend_headerColumnTextStyle(self, v197, v198, v199, v200);
  v206 = objc_msgSend_headerColumnTextStyle(v7, v202, v203, v204, v205);
  v207 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderColumnTextStyle_(v372, v208, v207, v209, v210);

  v215 = objc_msgSend_footerRowTextStyle(self, v211, v212, v213, v214);
  v220 = objc_msgSend_footerRowTextStyle(v7, v216, v217, v218, v219);
  v221 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setFooterRowTextStyle_(v372, v222, v221, v223, v224);

  v225 = [TSTCellIterator alloc];
  v230 = objc_msgSend_tableInfo(v372, v226, v227, v228, v229);
  v235 = objc_msgSend_range(v372, v231, v232, v233, v234);
  v238 = objc_msgSend_regionFromRange_(TSTCellRegion, v236, v235, v236, v237);
  v243 = objc_msgSend_range(v372, v239, v240, v241, v242);
  v371 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v225, v244, v230, v372, v238, 128, 536871936, v243, v244);

  v245 = [TSTCellIterator alloc];
  v250 = objc_msgSend_tableInfo(self, v246, v247, v248, v249);
  v255 = objc_msgSend_range(self, v251, v252, v253, v254);
  v258 = objc_msgSend_regionFromRange_(TSTCellRegion, v256, v255, v256, v257);
  v263 = objc_msgSend_range(self, v259, v260, v261, v262);
  v370 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v245, v264, v250, self, v258, 128, 536871936, v263, v264);

  v265 = [TSTCellIterator alloc];
  v270 = objc_msgSend_tableInfo(v7, v266, v267, v268, v269);
  v275 = objc_msgSend_range(v7, v271, v272, v273, v274);
  v278 = objc_msgSend_regionFromRange_(TSTCellRegion, v276, v275, v276, v277);
  v283 = objc_msgSend_range(v7, v279, v280, v281, v282);
  v369 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v265, v284, v270, v7, v278, 128, 536871936, v283, v284);

  v289 = objc_msgSend_context(self, v285, v286, v287, v288);
  v368 = self;
  v293 = objc_msgSend_cellMapWithContext_(TSTCellMap, v290, v289, v291, v292);

  v297 = 0;
  v298 = 0;
  for (i = 0; ; i = v301)
  {
    v376 = i;
    NextCellData = objc_msgSend_getNextCellData_(v371, v294, &v376, v295, v296);
    v301 = v376;

    if (!NextCellData)
    {
      v307 = v298;
      goto LABEL_15;
    }

    v375 = v298;
    v306 = objc_msgSend_getNextCellData_(v370, v302, &v375, v304, v305);
    v307 = v375;

    if (!v306)
    {
      goto LABEL_15;
    }

    v374 = v297;
    v308 = objc_msgSend_getNextCellData_(v369, v302, &v374, v304, v305);
    v309 = v374;

    if (!v308)
    {
      break;
    }

    v310 = objc_msgSend_cell(v307, v302, v303, v304, v305);
    v315 = objc_msgSend_cell(v309, v311, v312, v313, v314);
    v320 = objc_msgSend_copy(v310, v316, v317, v318, v319);
    v329 = objc_msgSend_cellStyle(v310, v321, v322, v323, v324);
    if (!v329)
    {
      v330 = objc_msgSend_cellID(v307, v325, v326, v327, v328);
      v329 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(v368, v331, v330, 0, v332);
    }

    v337 = objc_msgSend_cellStyle(v315, v325, v326, v327, v328);
    if (!v337)
    {
      v338 = objc_msgSend_cellID(v309, v333, v334, v335, v336);
      v337 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(v373, v339, v338, 0, v340);
    }

    v341 = TSDMixingMixedObjectWithFraction();
    objc_msgSend_setCellStyle_(v320, v342, v341, v343, v344);
    v349 = objc_msgSend_cellID(v301, v345, v346, v347, v348);
    objc_msgSend_addCell_andCellID_(v293, v350, v320, v349, v351);

    v297 = v309;
    v298 = v307;
  }

  v297 = v309;
LABEL_15:
  objc_msgSend_terminate(v369, v302, v303, v304, v305);
  objc_msgSend_terminate(v370, v352, v353, v354, v355);
  objc_msgSend_terminate(v371, v356, v357, v358, v359);
  if (objc_msgSend_count(v293, v360, v361, v362, v363))
  {
    objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(v372, v364, v293, 1, 0);
  }

  return v372;
}

- (void)p_iterateDataStoreCellsInRegion:(id)a3 searchFlags:(unint64_t)a4 usingBlock:(id)a5
{
  v19 = a3;
  v8 = a5;
  v9 = [TSTDataStoreIterator alloc];
  v11 = objc_msgSend_initWithModel_region_flags_searchMask_(v9, v10, self, v19, 0, a4);
  objc_msgSend_iterateCellsUsingBlock_(v11, v12, v8, v13, v14);
  objc_msgSend_terminate(v11, v15, v16, v17, v18);
}

- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)a3 result:(id *)a4
{
  v5 = a4;
  v7 = objc_msgSend_dataStore(self, a2, *&a3, a4, v4);
  LOBYTE(v5) = objc_msgSend_auditTilesForRowOverlapAndExtensionPastTableBounds_result_(v7, v8, *&a3, v5, v9);

  return v5;
}

- (BOOL)confirmRefCountsReturningResult:(id *)a3
{
  v5 = a3;
  v6 = objc_msgSend_dataStore(self, a2, a3, v3, v4);
  LOBYTE(v5) = objc_msgSend_confirmRefCountsReturningResult_(v6, v7, v5, v8, v9);

  return v5;
}

- (BOOL)auditDatalistDuplicationReturningResult:(id *)a3
{
  v5 = a3;
  v6 = objc_msgSend_dataStore(self, a2, a3, v3, v4);
  LOBYTE(v5) = objc_msgSend_auditDatalistDuplicationReturningResult_(v6, v7, v5, v8, v9);

  return v5;
}

- (BOOL)auditRowInfoCellCountsReturningResult:(id *)a3
{
  v5 = a3;
  v6 = objc_msgSend_dataStore(self, a2, a3, v3, v4);
  LOBYTE(v5) = objc_msgSend_auditRowInfoCellCountsReturningResult_(v6, v7, v5, v8, v9);

  return v5;
}

- (BOOL)auditColumnRowCellCountsReturningResult:(id *)a3 hasUndercounts:(BOOL *)a4
{
  v5 = a4;
  v7 = objc_msgSend_dataStore(self, a2, a3, a4, v4);
  LOBYTE(v5) = objc_msgSend_auditColumnRowCellCountsReturningResult_hasUndercounts_(v7, v8, a3, v5, v9);

  return v5;
}

- (void)accumulateCurrentCellsConcurrently:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_newCell(self, v5, v6, v7, v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2210B8C58;
  v16[3] = &unk_27845E5D0;
  v10 = v4;
  v17 = v10;
  v18 = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2210B8D24;
  v14[3] = &unk_27845E620;
  v14[4] = self;
  v15 = v9;
  v11 = v9;
  objc_msgSend_accumulateBordersConcurrentlyUsingBlock_accumulateCellsConcurrentlyUsingBlock_(v10, v12, v16, v14, v13);
}

- (void)setCellsConcurrently:(id)a3 ignoreFormula:(BOOL)a4 clearImportWarnings:(BOOL)a5 formulaReplacer:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2210B9338;
  v57[3] = &unk_27845E648;
  v57[4] = self;
  v58 = v8;
  objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v10, v12, 6, 1, v57);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_2210B94B0;
  v56[3] = &unk_27845E670;
  v56[4] = self;
  objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v10, v13, 2, 1, v56);
  objc_msgSend_updateDataListsConcurrentlyWithConcurrentCellMap_clearImportWarnings_(self->_dataStore, v14, v10, v7, v15);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2210B958C;
  v55[3] = &unk_27845E670;
  v55[4] = self;
  objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v10, v16, 7, 0, v55);
  if (objc_msgSend_tsp_isInDocument(self, v17, v18, v19, v20))
  {
    v25 = objc_msgSend_documentRoot(self, v21, v22, v23, v24);
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = sub_2210B9788;
    v53 = &unk_27845E670;
    v54 = v25;
    v26 = v25;
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v10, v27, 5, 0, &v50);
  }

  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    v33 = calcEngine;
    if (v11)
    {
LABEL_5:
      v38 = v11;
      goto LABEL_11;
    }
  }

  else
  {
    v39 = objc_msgSend_documentRoot(self, v21, v22, v23, v24);
    v33 = objc_msgSend_calculationEngine(v39, v40, v41, v42, v43);

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v44 = objc_msgSend_upgradingFormulasMinion(v33, v29, v30, v31, v32, v50, v51, v52, v53);
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v33;
  }

  v38 = v46;

LABEL_11:
  dataStore = self->_dataStore;
  v48 = objc_msgSend_conditionalStyleFormulaOwner(self, v34, v35, v36, v37, v50, v51, v52, v53);
  objc_msgSend_setCellsConcurrently_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(dataStore, v49, v10, &self->_tableUID, v38, v48, v8, v7);
}

- (void)prepareToApplyConcurrentCellMap:(id)a3
{
  v28 = a3;
  v8 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_groupBy(v8, v9, v10, v11, v12);
  objc_msgSend_startOfGroupingChangesBatch(v13, v14, v15, v16, v17);

  v22 = objc_msgSend_cellWillChangeDistributor(self, v18, v19, v20, v21);
  objc_msgSend_willApplyConcurrentCellMap_tableUID_(v22, v23, v28, &self->_tableUID, v24);

  objc_msgSend_prepareToApplyConcurrentCellMap_(self->_dataStore, v25, v28, v26, v27);
}

- (void)didApplyConcurrentCellMap:(id)a3
{
  v21 = a3;
  objc_msgSend_didApplyConcurrentCellMap_(self->_dataStore, v4, v21, v5, v6);
  v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_groupBy(v11, v12, v13, v14, v15);
  objc_msgSend_endOfGroupingChangesBatch(v16, v17, v18, v19, v20);
}

- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)a3 affectsCellBorders:(BOOL)a4 ignoreFormulas:(BOOL)a5 clearImportWarnings:(BOOL)a6 formulaReplacer:(id)a7 modificationBlock:(id)a8 preApplyBlock:(id)a9
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v26 = a7;
  v15 = a8;
  v16 = a9;
  v21 = objc_msgSend_range(self, v17, v18, v19, v20);
  v24 = objc_msgSend_regionFromRange_(TSTCellRegion, v22, v21, v22, v23);
  objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v25, v24, a3, v12, v11, v10, v26, v15, 0, 0, v16);
}

- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)a3 affectsCellBorders:(BOOL)a4 ignoreFormulas:(BOOL)a5 clearImportWarnings:(BOOL)a6 formulaReplacer:(id)a7 modificationBlock:(id)a8 furtherPassNeededBlock:(id)a9 furtherPassConcurrentBlock:(id)a10 preApplyBlock:(id)a11
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v30 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v25 = objc_msgSend_range(self, v21, v22, v23, v24);
  v28 = objc_msgSend_regionFromRange_(TSTCellRegion, v26, v25, v26, v27);
  objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v29, v28, a3, v14, v13, v12, v30, v17, v18, v19, v20);
}

- (void)p_modifyCellsConcurrentlyInBaseRegion:(id)a3 searchFlags:(unint64_t)a4 affectsCellBorders:(BOOL)a5 ignoreFormulas:(BOOL)a6 clearImportWarnings:(BOOL)a7 formulaReplacer:(id)a8 modificationBlock:(id)a9 furtherPassNeededBlock:(id)a10 furtherPassConcurrentBlock:(id)a11 preApplyBlock:(id)a12
{
  v13 = a7;
  v58 = a6;
  v14 = a5;
  v17 = a3;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v59 = a11;
  v21 = a12;
  objc_msgSend_loadAllLazyReferences(self->_dataStore, v22, v23, v24, v25, v19);
  v26 = [TSTConcurrentCellIterator alloc];
  v28 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_(v26, v27, self, v17, 2, a4);
  v29 = v13;
  v30 = [TSTConcurrentCellMap alloc];
  v32 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v30, v31, 0, 1, v14);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_2210BA06C;
  v66[3] = &unk_27845DED8;
  v66[4] = self;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_2210BA0F4;
  v64[3] = &unk_27845E698;
  v33 = v19;
  v65 = v33;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2210BA20C;
  v62[3] = &unk_27845E6E8;
  v34 = v59;
  v63 = v34;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_2210BA3B0;
  v60[3] = &unk_27845DDE8;
  v35 = v32;
  v61 = v35;
  objc_msgSend_enumerateModelConcurrentlyUsingChunkBeginBlock_concurrentBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_finalBlock_(v28, v36, v66, v64, v20, v62, v60);
  if (v21)
  {
    v21[2](v21);
  }

  if (objc_msgSend_hasCells(v35, v37, v38, v39, v40))
  {
    objc_msgSend_willApplyToTableModel_(v35, v41, self, v42, v43);
    objc_msgSend_prepareToApplyConcurrentCellMap_(self, v44, v35, v45, v46);
    objc_msgSend_accumulateCurrentCellsConcurrently_(self, v47, v35, v48, v49);
    objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v50, v35, v58, v29, v18);
    objc_msgSend_didApplyConcurrentCellMap_(self, v51, v35, v52, v53);
    objc_msgSend_validate(self, v54, v55, v56, v57);
  }
}

- (void)clearSpillCellsForOriginID:(TSUCellCoord)a3 boundingResultRegion:(id *)a4
{
  v12 = objc_msgSend_calcEngine(self, a2, *&a3, a4, v4);
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableModel clearSpillCellsForOriginID:boundingResultRegion:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 8231, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v40._lower = objc_msgSend_tableUID(self, v8, v9, v10, v11);
  v40._upper = v24;
  v38 = a3;
  v39 = v40;
  if (v12)
  {
    objc_msgSend_spillingCellsForFormulaAt_(v12, v24, &v38, v25, v26);
  }

  else
  {
    memset(&v37, 0, sizeof(v37));
  }

  if ((TSCECellRefSet::isEmpty(&v37) & 1) == 0)
  {
    TSCECellRefSet::coordsForOwnerUID(&v37, &v40, &v36);
    v27 = TSCECellCoordSet::boundingBox(&v36);
    v30 = objc_msgSend_regionFromRange_(TSTCellRegion, v28, *&v27, v28, v29);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3321888768;
    v33[2] = sub_2210BA7B8;
    v33[3] = &unk_2834A1720;
    v33[4] = &v40;
    TSCECellRefSet::TSCECellRefSet(&v34, &v37);
    v35 = a3;
    objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v31, v30, 0x20000, 0, 0, 0, 0, v33, 0, 0, 0);
    if (a4)
    {
      v32 = v30;
      *a4 = v30;
    }

    sub_22107C800(&v34, v34._coordsForOwnerUid.__tree_.__end_node_.__left_);
    sub_22107C860(&v36._rowsPerColumn, v36._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  sub_22107C800(&v37, v37._coordsForOwnerUid.__tree_.__end_node_.__left_);
}

- (void)clearSpillCellsInRange:(const TSUCellRect *)a3
{
  v6 = objc_msgSend_regionFromRange_(TSTCellRegion, a2, *&a3->origin, *&a3->size, v3);
  objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v5, v6, 0x20000, 0, 0, 0, 0, &unk_2834A1750, 0, 0, 0);
}

- (TSCECellCoordSet)arrayFormulasSpillingIntoRegion:(SEL)a3
{
  v19._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v19._rowsPerColumn.__tree_.__size_ = 0;
  v19._rectRepresentation.origin = 0;
  v19._rectRepresentation.size = 0;
  v19._rowsPerColumn.__tree_.__begin_node_ = &v19._rowsPerColumn.__tree_.__end_node_;
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTTableModel arrayFormulasSpillingIntoRegion:]", v4, v5);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 8308, 0, "arrayFormulasSpillingIntoRegion: is intended for use by commands, not for QuickLook.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  TSCECellCoordSet::TSCECellCoordSet(retstr, &v19);
  sub_22107C860(&v19._rowsPerColumn, v19._rowsPerColumn.__tree_.__end_node_.__left_);
  return result;
}

- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableModel *)self
{
  v6 = a4;
  v11 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
  v12 = v11;
  v13 = &v37;
  v37 = 0;
  v38 = &v37;
  v39 = 0x4812000000;
  v40 = sub_2210BADB8;
  v41 = sub_2210BADDC;
  v42 = &unk_22188E88F;
  memset(v43, 0, sizeof(v43));
  if (v11)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x4812000000;
    v32 = sub_2210BAE08;
    v33 = sub_2210BAE14;
    v34 = &unk_22188E88F;
    v36[0] = 0;
    v36[1] = 0;
    v35 = v36;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2210BAE20;
    v25[3] = &unk_27845E730;
    v14 = v11;
    v26 = v14;
    v27 = self;
    v28 = &v29;
    objc_msgSend_enumerateCellRangesUsingBlock_(v6, v15, v25, v16, v17);
    v18 = v30;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2210BAEB4;
    v21[3] = &unk_27845E758;
    v22 = v14;
    v23 = self;
    v24 = &v37;
    TSCECellRefSet::enumerateCellRefsUsingBlock(v18 + 6, v21);

    _Block_object_dispose(&v29, 8);
    sub_22107C800(&v35, v36[0]);
    v13 = v38;
    v19 = v38[6];
  }

  else
  {
    v19 = 0;
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_2210BC83C(retstr, v19, v13[7], 0xAAAAAAAAAAAAAAABLL * ((v13[7] - v19) >> 4));
  _Block_object_dispose(&v37, 8);
  v29 = v43;
  sub_2210BC30C(&v29);

  return result;
}

- (void)resetSpillingRangesInRange:(const TSUCellRect *)a3
{
  v7 = objc_msgSend_calcEngine(self, a2, a3, v3, v4);
  v17._lower = objc_msgSend_tableUID(self, v8, v9, v10, v11);
  v17._upper = v12;
  TSCERangeRef::TSCERangeRef(&v16, a3, &v17);
  objc_msgSend_resetSpillingFormulasInRange_(v7, v13, &v16, v14, v15);
}

- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)a3 affectedRegion:(id)a4
{
  v19._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v19._rowsPerColumn.__tree_.__size_ = 0;
  v19._rectRepresentation.origin = 0;
  v19._rectRepresentation.size = 0;
  v19._rowsPerColumn.__tree_.__begin_node_ = &v19._rowsPerColumn.__tree_.__end_node_;
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTTableModel clearArrayFormulasSpillingIntoRegion:affectedRegion:]", a5, v5);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 8378, 0, "clearArrayFormulasSpillingIntoRegion: is intended for use by commands, not for QuickLook.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  TSCECellCoordSet::TSCECellCoordSet(retstr, &v19);
  sub_22107C860(&v19._rowsPerColumn, v19._rowsPerColumn.__tree_.__end_node_.__left_);
  return result;
}

- (BOOL)hasSpillRangesIntersectingCellRegion:(id)a3
{
  v4 = a3;
  v13 = objc_msgSend_calcEngine(self, v5, v6, v7, v8);
  if (v13)
  {
    v14 = objc_msgSend_tableUID(self, v9, v10, v11, v12);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2210BB250;
    v21[3] = &unk_27845E780;
    v24 = v14;
    v25 = v15;
    v22 = v13;
    v23 = &v26;
    objc_msgSend_enumerateCellRangesUsingBlock_(v4, v16, v21, v17, v18);
    v19 = *(v27 + 24);

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID._lower;
  upper = p_tableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)fromTableUID
{
  p_fromTableUID = &self->_fromTableUID;
  lower = self->_fromTableUID._lower;
  upper = p_fromTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)fromGroupByUID
{
  p_fromGroupByUID = &self->_fromGroupByUID;
  lower = self->_fromGroupByUID._lower;
  upper = p_fromGroupByUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  *(self + 20) = 0;
  *(self + 19) = 0;
  *(self + 18) = self + 152;
  return self;
}

- (TSKUIDStruct)groupByUID
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBy(v5, v6, v7, v8, v9);

  if (v10)
  {
    v15 = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
    v17 = v16;
  }

  else
  {
    v17 = 0;
    v15 = 0;
  }

  v18 = v15;
  v19 = v17;
  result._upper = v19;
  result._lower = v18;
  return result;
}

+ (id)tableModelForTableUID:(const TSKUIDStruct *)a3 withCalcEngine:(id)a4
{
  v5 = objc_msgSend_resolverForTableUID_(a4, a2, a3->_lower, a3->_upper, v4);

  return v5;
}

- (id)sheetName
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v7 = TSUProtocolCast();

  v11 = objc_msgSend_resolverContainerNameForResolver_(v7, v8, self, v9, v10, &unk_283599058);

  return v11;
}

- (BOOL)hasCellID:(TSUCellCoord)a3
{
  v9.origin = objc_msgSend_range(self, a2, *&a3, v3, v4);
  v9.size = v6;
  v7 = a3;
  return TSUCellRect::contains(&v9, v7);
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v5 = objc_msgSend_range(self, a2, v2, v3, v4);

  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (void)resetDependenciesForCell:(TSUCellCoord)a3
{
  v13 = objc_msgSend_formulaSpecAtBaseCellCoord_(self, a2, *&a3, v3, v4);
  if (v13)
  {
    v11 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
    objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(self, v12, v13, *&a3, v11);
  }
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3
{
  v5 = *&a3;
  v6 = objc_msgSend_columnRowUIDMap(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_rowUIDForRowIndex_(v6, v7, v5, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (unsigned)rowIndexForRowUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3._lower, a3._upper, v3);
  LODWORD(upper) = objc_msgSend_rowIndexForRowUID_(v6, v7, lower, upper, v8);

  return upper;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3
{
  v16 = a4;
  v10 = objc_msgSend_columnRowUIDMap(self, v6, v7, v8, v9);
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

- (id)rowIndexesForUIDs:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_rowIndexesForUIDs_(v6, v7, a3, v8, v9);

  return v10;
}

- (id)mutableRowIndexesForUIDs:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_mutableRowIndexesForUIDs_(v6, v7, a3, v8, v9);

  return v10;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3
{
  length = a4.length;
  location = a4.location;
  v8 = objc_msgSend_columnRowUIDMap(self, a3, a4.location, a4.length, v4);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_rowUIDsForRowRange_(v8, v9, location, length, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_rowRangeForUIDs_(v6, v7, a3, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDs
{
  v13 = objc_msgSend_columnRowUIDMap(self, a3, v3, v4, v5);
  v11 = objc_msgSend_rowUIDs(v13, v7, v8, v9, v10);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_221086EBC(retstr, *v11, v11[1], (v11[1] - *v11) >> 4);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3
{
  v8 = objc_msgSend_columnRowUIDMap(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_orderedRowUidsFromUids_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3
{
  v5 = a3;
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, v5, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3._lower, a3._upper, v3);
  LOWORD(upper) = objc_msgSend_columnIndexForColumnUID_(v6, v7, lower, upper, v8);

  return upper;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3
{
  v16 = a4;
  v10 = objc_msgSend_columnRowUIDMap(self, v6, v7, v8, v9);
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

- (id)columnIndexesForUIDs:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_columnIndexesForUIDs_(v6, v7, a3, v8, v9);

  return v10;
}

- (id)mutableColumnIndexesForUIDs:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_mutableColumnIndexesForUIDs_(v6, v7, a3, v8, v9);

  return v10;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3
{
  length = a4.length;
  location = a4.location;
  v8 = objc_msgSend_columnRowUIDMap(self, a3, a4.location, a4.length, v4);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_columnUIDsForColumnRange_(v8, v9, location, length, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_columnRangeForUIDs_(v6, v7, a3, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDs
{
  v13 = objc_msgSend_columnRowUIDMap(self, a3, v3, v4, v5);
  v11 = objc_msgSend_columnUIDs(v13, v7, v8, v9, v10);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_221086EBC(retstr, *v11, v11[1], (v11[1] - *v11) >> 4);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3
{
  v8 = objc_msgSend_columnRowUIDMap(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_orderedColumnUidsFromUids_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)rowUuids
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, v2, v3, v4);
  v10 = objc_msgSend_rowUuids(v5, v6, v7, v8, v9);

  return v10;
}

- (id)columnUuids
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, v2, v3, v4);
  v10 = objc_msgSend_columnUuids(v5, v6, v7, v8, v9);

  return v10;
}

- (void)getUUIDBytes:(unsigned __int8)a3[16] forRowIndex:(unsigned int)a4
{
  v5 = *&a4;
  v9 = objc_msgSend_columnRowUIDMap(self, a2, a3, *&a4, v4);
  objc_msgSend_getUUIDBytes_forRowIndex_(v9, v7, a3, v5, v8);
}

- (void)getUUIDBytes:(unsigned __int8)a3[16] forColumnIndex:(unsigned __int16)a4
{
  v5 = a4;
  v9 = objc_msgSend_columnRowUIDMap(self, a2, a3, a4, v4);
  objc_msgSend_getUUIDBytes_forColumnIndex_(v9, v7, a3, v5, v8);
}

- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)a3[16]
{
  v5 = a3;
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  LODWORD(v5) = objc_msgSend_rowIndexForUUIDBytes_(v6, v7, v5, v8, v9);

  return v5;
}

- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)a3[16]
{
  v5 = a3;
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  LOWORD(v5) = objc_msgSend_columnIndexForUUIDBytes_(v6, v7, v5, v8, v9);

  return v5;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3
{
  v8 = objc_msgSend_columnRowUIDMap(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_prunedColumnUIDsFromColumnUIDs_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3
{
  v8 = objc_msgSend_columnRowUIDMap(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_prunedRowUIDsFromRowUIDs_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_columnRowUIDMap(self, v7, v8, v9, v10);
  v14 = objc_msgSend_UIDSetForIndexes_isRows_(v11, v12, v6, v4, v13);

  return v14;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_columnRowUIDMap(self, v7, v8, v9, v10);
  v14 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v11, v12, v6, v4, v13);

  return v14;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_columnRowUIDMap(self, v10, v11, v12, v13);
  v16 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v14, v15, v8, v6, v9);

  return v16;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_columnRowUIDMap(self, v7, v8, v9, v10);
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(v11, v12, v6, v4, v13);
  v16 = v15;

  v17 = isRows;
  v18 = v16;
  result._upper = v18;
  result._lower = v17;
  return result;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)a3
{
  v6 = objc_msgSend_columnRowUIDMap(self, a2, a3, v3, v4);
  v10 = objc_msgSend_cellRangeForUIDRange_(v6, v7, a3, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.size = v14;
  result.origin = v13;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3
{
  size = a4.size;
  origin = a4.origin;
  v8 = objc_msgSend_columnRowUIDMap(self, a3, *&a4.origin, *&a4.size, v4);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v8, v9, origin, size, v10);
  }

  else
  {
    *&retstr->_colIdList.__cap_ = 0u;
    *&retstr->_rowIdList.__end_ = 0u;
    *&retstr->_colIdList.__begin_ = 0u;
  }

  return result;
}

- (TSKUIDStruct)UIDForIndex:(unsigned int)a3 isRows:(BOOL)a4
{
  if (a4)
  {
    v5 = objc_msgSend_rowUIDForRowIndex_(self, a2, *&a3, a4, v4);
  }

  else
  {
    v5 = objc_msgSend_columnUIDForColumnIndex_(self, a2, a3, a4, v4);
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)a3 isRows:(id)a4
{
  v5 = a5;
  v7 = a4;
  v11 = v7;
  if (v5)
  {
    objc_msgSend_rowUIDsForRowIndexes_(self, v7, v7, v8, v9);
  }

  else
  {
    objc_msgSend_columnUIDsForColumnIndexes_(self, v7, v7, v8, v9);
  }

  return result;
}

- (id)mutableIndexesForUIDs:(const void *)a3 isRows:(BOOL)a4
{
  if (a4)
  {
    objc_msgSend_mutableRowIndexesForUIDs_(self, a2, a3, a4, v4);
  }

  else
  {
    objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, a3, a4, v4);
  }
  v5 = ;

  return v5;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)a3 isRows:(_NSRange)a4
{
  if (a5)
  {
    return objc_msgSend_rowUIDsForRowRange_(self, a3, a4.location, a4.length, a5);
  }

  else
  {
    return objc_msgSend_columnUIDsForColumnRange_(self, a3, a4.location, a4.length, a5);
  }
}

- (id)UIDSetForRange:(_NSRange)a3 isRows:(BOOL)a4
{
  v4 = a4;
  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, a3.location, a3.length, a4);
  v9 = objc_msgSend_UIDSetForIndexes_isRows_(self, v7, v6, v4, v8);

  return v9;
}

- (void)registerWithCalcEngineForDocumentLoad:(id)a3 ownerKind:(unsigned __int16)a4
{
  v8 = a3;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel(FormulaOwner) registerWithCalcEngineForDocumentLoad:ownerKind:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 105, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  objc_msgSend_setIsRegisteredWithCalcEngine_(self, v5, 1, v6, v7);
  objc_msgSend_setCalcEngine_(self, v20, v8, v21, v22);
  if (objc_msgSend_wasUnarchivedFromAProvidedTable(self, v23, v24, v25, v26))
  {
    while (1)
    {
      v31 = objc_msgSend_tableUID(self, v27, v28, v29, v30);
      if (!objc_msgSend_ownerIsRegistered_(v8, v32, v31, v32, v33))
      {
        break;
      }

      v37 = TSKMakeUIDStructRandom();
      objc_msgSend_setTableUID_(self, v38, v37, v38, v39);
    }

    objc_msgSend_setWasUnarchivedFromAProvidedTable_(self, v34, 0, v35, v36);
  }

  objc_msgSend_linkToCalcEngine_ownerKind_(self, v27, v8, 1, v30);
  v44 = objc_msgSend_tableUID(self, v40, v41, v42, v43);
  v47 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v8, v45, v44, v45, v46);
  objc_msgSend_setLocalOwnerID_(self, v48, v47, v49, v50);
  v66[0] = objc_msgSend_tableUID(self, v51, v52, v53, v54);
  v66[1] = v55;
  if (v8)
  {
    objc_msgSend_cellCoordinatesNeedingExcelImportForTable_(v8, v55, v66, v56, v57);
  }

  else
  {
    memset(&v67, 0, sizeof(v67));
  }

  if (!TSCECellCoordSet::isEmpty(&v67))
  {
    v62 = objc_msgSend_newCell(self, v58, v59, v60, v61);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_2215782D4;
    v64[3] = &unk_278461BA0;
    v64[4] = self;
    v65 = v62;
    v63 = v62;
    TSCECellCoordSet::enumerateCoordsUsingBlock(&v67, v64);
  }

  sub_22107C860(&v67._rowsPerColumn, v67._rowsPerColumn.__tree_.__end_node_.__left_);
}

- (BOOL)isRegisteredWithCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_tableUID(self, v5, v6, v7, v8);
  LOBYTE(self) = objc_msgSend_ownerIsRegistered_(v4, v10, v9, v10, v11);

  return self;
}

- (int)registerWithCalcEngine:(id)a3 ownerKind:(unsigned __int16)a4 linkOnly:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v13 = objc_msgSend_tableUID(self, v9, v10, v11, v12);
  if (!(v13 | v14))
  {
    v28 = 1;
    goto LABEL_18;
  }

  v18 = objc_msgSend_tableUID(self, v14, v15, v16, v17);
  if (v6 != 1)
  {
    *&v184 = objc_msgSend_tableUID(self, v19, v20, v21, v22);
    *(&v184 + 1) = v23;
    v18 = sub_2212C4A5C(&v184, v6);
  }

  v24 = v18;
  v25 = v19;
  v26 = objc_msgSend_tableUID(self, v19, v20, v21, v22);
  v28 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v8, v27, v26, v27, self, self, v24, v25, v6);
  objc_msgSend_setIsRegisteredWithCalcEngine_(self, v29, 1, v30, v31);
  v36 = objc_msgSend_tableUID(self, v32, v33, v34, v35);
  v39 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v8, v37, v36, v37, v38);
  objc_msgSend_setLocalOwnerID_(self, v40, v39, v41, v42);
  if (!v28)
  {
    objc_msgSend_setCalcEngine_(self, v43, v8, v44, v45);
    objc_msgSend_updateCalcEngineForTableSize(self, v46, v47, v48, v49);
    v184 = 0uLL;
    *&v184 = objc_msgSend_tableUID(self, v50, v51, v52, v53);
    *(&v184 + 1) = v54;
    v58 = objc_msgSend_hiddenStatesOwner(self, v54, v55, v56, v57);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v58, v59, v8, &v184, v60);

    v65 = objc_msgSend_hiddenStatesOwner(self, v61, v62, v63, v64);
    v70 = objc_msgSend_hiddenStates(v65, v66, v67, v68, v69);

    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v70, v71, v8, &v184, v72);
    objc_msgSend_setTableModel_(v70, v73, self, v74, v75);
    v80 = objc_msgSend_conditionalStyleFormulaOwner(self, v76, v77, v78, v79);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v80, v81, v8, &v184, v82);

    v87 = objc_msgSend_pencilAnnotationOwner(self, v83, v84, v85, v86);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v87, v88, v8, &v184, v89);

    v94 = objc_msgSend_mergeOwner(self, v90, v91, v92, v93);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v94, v95, v8, &v184, v96);

    v101 = objc_msgSend_sortRuleReferenceTracker(self, v97, v98, v99, v100);

    if (v101)
    {
      v106 = objc_msgSend_sortRuleReferenceTracker(self, v102, v103, v104, v105);
      v111 = objc_msgSend_ownerUID(v106, v107, v108, v109, v110);
      v113 = v112;
      if (v111 == sub_2212C4930(&v184, 6, v114, v115, v116))
      {
        v118 = v117;

        if (v113 == v118)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v119 = objc_msgSend_sortRuleReferenceTracker(self, v102, v103, v104, v105);
      objc_msgSend_unregisterFromCalcEngine(v119, v120, v121, v122, v123);

      v124 = v184;
      v129 = objc_msgSend_sortRuleReferenceTracker(self, v125, v126, v127, v128);
      objc_msgSend_setBaseTableUID_(v129, v130, v124, *(&v124 + 1), v131);
    }

LABEL_12:
    v132 = objc_msgSend_sortRuleReferenceTracker(self, v102, v103, v104, v105);
    objc_msgSend_registerWithCalcEngine_(v132, v133, v8, v134, v135);

    v140 = objc_msgSend_hauntedOwner(self, v136, v137, v138, v139);
    objc_msgSend_registerWithCalcEngine_(v140, v141, v8, v142, v143);

    v148 = objc_msgSend_spillOwner(self, v144, v145, v146, v147);
    objc_msgSend_registerWithCalcEngine_(v148, v149, v8, v150, v151);

    v156 = objc_msgSend_categoryOwner(self, v152, v153, v154, v155);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v156, v157, v8, &v184, v158);

    objc_msgSend_pivotOwner(self, v159, v160, v161, v162);
    if (v5)
      v163 = {;
      objc_msgSend_linkToCalcEngine_forTableModel_(v163, v164, v8, self, v165);
    }

    else
      v163 = {;
      objc_msgSend_registerWithCalcEngine_forTableModel_baseOwnerUID_(v163, v166, v8, self, &v184);
    }

    v171 = objc_msgSend_tablesByName(v8, v167, v168, v169, v170);
    objc_msgSend_addTable_(v171, v172, self, v173, v174);

    if (v6 == 1)
    {
      v179 = objc_msgSend_headerNameMgr(v8, v175, v176, v177, v178);
      objc_msgSend_beginTrackingNamesInTable_(v179, v180, &v184, v181, v182);
    }

    v28 = 0;
  }

LABEL_18:

  return v28;
}

- (void)unregisterFromCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_tableUID(self, v5, v6, v7, v8);
  objc_msgSend_unregisterOwner_(v4, v10, v9, v10, v11);
  v16 = objc_msgSend_hiddenStatesOwner(self, v12, v13, v14, v15);
  v21 = objc_msgSend_hiddenStates(v16, v17, v18, v19, v20);
  objc_msgSend_unregisterFromCalcEngine(v21, v22, v23, v24, v25);

  v30 = objc_msgSend_conditionalStyleFormulaOwner(self, v26, v27, v28, v29);
  objc_msgSend_unregisterFromCalcEngine(v30, v31, v32, v33, v34);

  v39 = objc_msgSend_mergeOwner(self, v35, v36, v37, v38);
  objc_msgSend_unregisterFromCalcEngine(v39, v40, v41, v42, v43);

  v48 = objc_msgSend_pencilAnnotationOwner(self, v44, v45, v46, v47);
  objc_msgSend_unregisterFromCalcEngine(v48, v49, v50, v51, v52);

  v57 = objc_msgSend_sortRuleReferenceTracker(self, v53, v54, v55, v56);
  objc_msgSend_unregisterFromCalcEngine(v57, v58, v59, v60, v61);

  v66 = objc_msgSend_categoryOwner(self, v62, v63, v64, v65);
  objc_msgSend_unregisterFromCalcEngine(v66, v67, v68, v69, v70);

  v75 = objc_msgSend_hiddenStatesOwner(self, v71, v72, v73, v74);
  objc_msgSend_unregisterFromCalcEngine(v75, v76, v77, v78, v79);

  v84 = objc_msgSend_hauntedOwner(self, v80, v81, v82, v83);
  objc_msgSend_unregisterFromCalcEngine(v84, v85, v86, v87, v88);

  v93 = objc_msgSend_spillOwner(self, v89, v90, v91, v92);
  objc_msgSend_unregisterFromCalcEngine(v93, v94, v95, v96, v97);

  v102 = objc_msgSend_pivotOwner(self, v98, v99, v100, v101);
  objc_msgSend_unregisterFromCalcEngine(v102, v103, v104, v105, v106);

  v111 = objc_msgSend_headerNameMgr(v4, v107, v108, v109, v110);
  v128[0] = objc_msgSend_tableUID(self, v112, v113, v114, v115);
  v128[1] = v116;
  objc_msgSend_endTrackingNamesInTable_(v111, v116, v128, v117, v118);

  objc_msgSend_setLocalOwnerID_(self, v119, 0xFFFFLL, v120, v121);
  objc_msgSend_setIsRegisteredWithCalcEngine_(self, v122, 0, v123, v124);
  objc_msgSend_setCalcEngine_(self, v125, 0, v126, v127);
}

- (void)performReadForOneOffFormulaEvaluation:(id)a3 forCellCoord:(TSUCellCoord)a4
{
  v6 = a3;
  v15 = objc_msgSend_formulaObject(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend_calcEngine(self, v11, v12, v13, v14);
    v78.var0 = objc_msgSend_tableUID(self, v17, v18, v19, v20);
    v78.var1 = v21;
    v22 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_(TSCEEvaluationContext, v21, v16, &v78, *&a4);
    if ((objc_msgSend_translationFlags(v15, v23, v24, v25, v26) & 0x20) != 0)
    {
      v77.coordinate = a4;
      v77._tableUID._lower = objc_msgSend_tableUID(self, v27, v28, v29, v30);
      v77._tableUID._upper = v31;
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v78, v16, &v77);
      v35 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v15, v32, &v78, v33, v34);

      v15 = v35;
    }

    v36 = objc_msgSend_evaluateWithContext_(v15, v27, v22, v29, v30);
    v41 = objc_msgSend_newCell(self, v37, v38, v39, v40);
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v42, v41, *&a4, 1);
    v47 = objc_msgSend_currentFormat(v41, v43, v44, v45, v46);
    objc_msgSend_setFormat_isExplicit_(v6, v48, v47, 1, v49);

    v54 = objc_msgSend_warnings(v36, v50, v51, v52, v53);
    v59 = objc_msgSend_count(v54, v55, v56, v57, v58);

    v64 = objc_msgSend_context(self, v60, v61, v62, v63);
    objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v6, v65, v36, v64, v59 != 0, 0, 0);
  }

  else
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel(FormulaOwner) performReadForOneOffFormulaEvaluation:forCellCoord:]", v13, v14);
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v72, v67, v71, 274, 0, "Evaluating non-formula cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
  }
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5
{
  v401 = a4;
  v11 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
  v16 = v11;
  if (!v11)
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel(FormulaOwner) evaluateFormulaAt:withCalcEngine:recalcOptions:]", v14, v15);
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 443, 0, "Table model has no calc engine. Aborting recalculation.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    v60 = 0;
    v59 = a5.var0 & 0x5F;
    goto LABEL_98;
  }

  if (v11 != v401)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel(FormulaOwner) evaluateFormulaAt:withCalcEngine:recalcOptions:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 445, 0, "Inconsistent calcEngines");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v399 = objc_msgSend_nilValue(TSCENilValue, v12, v13, v14, v15);
  v415 = 0;
  v32 = objc_msgSend_spillingCellsPendingWrite(self, v28, v29, v30, v31);
  v36 = objc_msgSend_cellAtCellID_(v32, v33, *&a3, v34, v35);

  if (!v36)
  {
    v41 = objc_msgSend_documentLocale(v16, v37, v38, v39, v40);
    v36 = objc_msgSend_newCellWithLocale_(self, v42, v41, v43, v44);

    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v45, v36, *&a3, 1);
  }

  v46 = objc_msgSend_cellFlags(v36, v37, v38, v39, v40);
  v414._lower = objc_msgSend_tableUID(self, v47, v48, v49, v50);
  v414._upper = v51;
  v412 = a3;
  v413 = v414;
  if (!objc_msgSend_shouldAbortRecalculation(v16, v51, v52, v53, v54))
  {
    if (!objc_msgSend_hasFormula(v36, v55, v56, v57, v58))
    {
      v112 = 0;
      v110 = 0;
      v113 = 0;
      LOBYTE(v114) = 0;
LABEL_82:
      v354 = v113;
      if (v113 || !(v112 | v110))
      {

        var0 = a5.var0;
        if ((v114 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v355 = objc_msgSend_tableInfo(self, v72, v73, v74, v75);
        v360 = objc_msgSend_translator(v355, v356, v357, v358, v359);
        v364 = objc_msgSend_viewCellCoordForBaseCellCoord_(v360, v361, *&a3, v362, v363);

        memset(v403, 0, 32);
        v369 = objc_msgSend_tableInfo(self, v365, v366, v367, v368);
        var0 = a5.var0;
        v374 = v369;
        if (v369)
        {
          objc_msgSend_cellUIDForCellID_(v369, v370, v364, v371, v372);
        }

        else
        {
          memset(v403, 0, 32);
        }

        if (v415 == 1)
        {
          objc_msgSend_cellsToInvalidateAfterRecalc(self, v375, v376, v377, v378);
        }

        else
        {
          objc_msgSend_cellsToInvalidateNonoverflowingAfterRecalc(self, v375, v376, v377, v378);
        }
        v379 = ;
        objc_msgSend_addCellUID_(v379, v380, v403, v381, v382);

        if (v112)
        {
          v387 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v383, v384, v385, v386);
          objc_msgSend_addCellUID_(v387, v388, v403, v389, v390);
        }

        if ((v114 & 1) == 0)
        {
LABEL_96:
          v59 = var0 & 0x5F;
          if (v354)
          {
            goto LABEL_8;
          }

          goto LABEL_97;
        }
      }

      v59 = var0 & 0x5F | 0x20;
      if (v354)
      {
        goto LABEL_8;
      }

LABEL_97:
      v60 = 0;
      goto LABEL_98;
    }

    v395 = objc_msgSend_columnRowUIDMap(self, v72, v73, v74, v75);
    v396 = objc_msgSend_formulaObject(v36, v76, v77, v78, v79);
    if (!v396)
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSTTableModel(FormulaOwner) evaluateFormulaAt:withCalcEngine:recalcOptions:]", v82, v83);
      v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v118, v119);
      v114 = TSKUIDStruct::description(&v414);
      v121 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v122, v116, v120, 487, 0, "Cell %@::%@ said hasFormula=YES, but had no formula in it", v114, v121);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
      v112 = 0;
      v110 = 0;
      v127 = 0;
      LOBYTE(v114) = 0;
LABEL_81:

      v113 = v127;
      goto LABEL_82;
    }

    v84 = objc_msgSend_tableInfo(self, v80, v81, v82, v83);
    v89 = objc_msgSend_groupBy(v84, v85, v86, v87, v88);
    objc_msgSend_enterCalcEngineMode(v89, v90, v91, v92, v93);

    v98 = objc_msgSend_translationFlags(v396, v94, v95, v96, v97);
    v398 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_(TSCEEvaluationContext, v99, v16, &v414, *&a3);
    objc_msgSend_setAllowAbort_(v398, v100, 1, v101, v102);
    objc_msgSend_setShouldPickupRemoteDataInterests_(v398, v103, 1, v104, v105);
    if ((v46 & 0x1000) != 0 || (v98 & 2) != 0)
    {
      v403[0] = 0;
      v128 = objc_msgSend_copy(v398, v106, v107, v108, v109);
      v411 = 0;
      v133 = objc_msgSend_formatType(v36, v129, v130, v131, v132);
      v135 = objc_msgSend_copyByRewritingForExcelImport_outFormulaReplacedForExcelCompatWarning_functionNameReplacedForExcelCompat_formulaFormatFromCell_(v396, v134, v128, v403, &v411, v133);
      v394 = v411;
      objc_msgSend_setFormulaObject_(v36, v136, v135, v137, v138);
      v139 = v135;
      if (v403[0] == 1)
      {
        v140 = [TSTFormula alloc];
        v145 = objc_msgSend_context(self, v141, v142, v143, v144);
        v147 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_suppressAutomaticNamedReferenceInvalidation_(v140, v146, v145, v16, *&a3, v396, &v414, 1);

        v393 = v147;
        v392 = objc_msgSend_formulaPlainText(v147, v148, v149, v150, v151);
        v154 = objc_msgSend_warningSetForFormulaReplacedForExcelCompat_originalFormula_(TSTImportWarningSet, v152, v394, v392, v153);
        if (objc_msgSend_hasImportWarningSet(v36, v155, v156, v157, v158))
        {
          v163 = objc_msgSend_importWarningSet(v36, v159, v160, v161, v162);
          v167 = v163;
          if (v163)
          {
            v168 = objc_msgSend_warningSetByAddingWarningsFromSet_(v163, v164, v154, v165, v166);

            v154 = v168;
          }
        }

        objc_msgSend_setImportWarningSet_(v36, v159, v154, v161, v162);
      }

      v111 = v139;
      v110 = 1;
    }

    else if ((v98 & 4) != 0)
    {
      v169 = objc_msgSend_copyByRemovingNumberToDateCoercion_(v396, v106, v398, v108, v109);
      objc_msgSend_setFormulaObject_(v36, v170, v169, v171, v172);

      v110 = 1;
      v111 = v169;
    }

    else
    {
      v110 = 0;
      v111 = v396;
    }

    v403[0] = 0;
    v397 = v111;
    v173 = objc_msgSend_evaluateWithContext_isInACycle_outErrorIsDueToCycle_(v111, v106, v398, a5.var0 & 1, v403);

    if (v403[0])
    {
      v177 = 16;
    }

    else
    {
      v177 = 0;
    }

    a5.var0 = v177 | a5.var0 & 0xEF;
    if (objc_msgSend_deepType_(v173, v174, v398, v175, v176) == 9)
    {
      v182 = objc_msgSend_errorWithContext_(v173, v178, v398, v180, v181);
      if (objc_msgSend_errorType(v182, v183, v184, v185, v186) == 7 && objc_msgSend_isSpillFormula(v397, v187, v188, v189, v190))
      {
        if (v395)
        {
          objc_msgSend_cellUIDForCellID_(v395, v187, *&a3, v189, v190);
        }

        else
        {
          memset(v410, 0, sizeof(v410));
        }

        v193 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v187, v188, v189, v190);
        objc_msgSend_addCellUID_(v193, v194, v410, v195, v196);
      }

      isAbortedError = objc_msgSend_isAbortedError(v182, v187, v188, v189, v190);
      isNotReadyError = objc_msgSend_isNotReadyError(v182, v197, v198, v199, v200);
    }

    else
    {
      isNotReadyError = 0;
      isAbortedError = 0;
    }

    v127 = isAbortedError;
    v399 = v173;
    if (objc_msgSend_isThunk(v173, v178, v179, v180, v181))
    {
      v204 = objc_msgSend_unwrapThunk_(v398, v201, v173, v202, v203);

      v399 = v204;
    }

    if (isAbortedError)
    {
      v112 = 0;
      LOBYTE(v114) = 1;
LABEL_80:

      goto LABEL_81;
    }

    if (isNotReadyError)
    {
      v205 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v201, @" %C ", v202, v203, 8230);
      v209 = objc_msgSend_stringValue_(TSCEStringValue, v206, v205, v207, v208);

      v399 = v209;
    }

    else
    {
      v210 = objc_msgSend_errorWithContext_(v399, v201, v398, v202, v203);
      v205 = v210;
      if (!v210 || (objc_msgSend_isSpillFunctionError(v210, v211, v212, v213, v214) & 1) == 0)
      {
        objc_msgSend_updateErrorAndWarnings_forCell_(v16, v211, v399, &v412, v214);
      }
    }

    v219 = objc_msgSend_tableInfo(self, v215, v216, v217, v218);
    if (objc_msgSend_isCategorized(v219, v220, v221, v222, v223))
    {
      v228 = objc_msgSend_inArrayMode(v398, v224, v225, v226, v227);

      if (!v228 || (v233 = objc_msgSend_nativeType(v399, v229, v230, v231, v232), v233 != 1) && v233 != 16)
      {
LABEL_57:
        if (objc_msgSend_inArrayMode(v398, v229, v230, v231, v232))
        {
          v259 = objc_msgSend_warnings(v399, v255, v256, v257, v258);
          v264 = objc_msgSend_count(v259, v260, v261, v262, v263) != 0;

          if (objc_msgSend_spillArrayValue_primaryCell_withContext_hasWarnings_didBeginOrEndWithTextCell_propagateCheckboxes_(self, v265, v399, v36, v398, v264, &v415, 0))
          {
LABEL_73:
            v114 = v398;
            v338 = objc_msgSend_nativeType(v399, v266, v267, v268, v269);
            v325 = 0;
            if (v338 == 1)
            {
              v324 = 0;
            }

            else
            {
              v324 = 0;
              if (v338 != 16)
              {
                v325 = 0;
                v324 = 8 * (objc_msgSend_deepType_(v399, v320, v398, v322, v323) == 9);
              }
            }

            goto LABEL_77;
          }
        }

        else
        {
          objc_msgSend_clearSpillSizeForCell_(v16, v255, &v412, v257, v258);
        }

        v270 = objc_msgSend_errorWithContext_(v399, v266, v398, v268, v269);
        v275 = v270;
        if (v270)
        {
          v276 = objc_msgSend_errorType(v270, v271, v272, v273, v274);
          if (v276 == 142)
          {
LABEL_71:

            v324 = 0;
            v325 = 1;
            v114 = v398;
LABEL_77:
            v339 = objc_msgSend_cellSpec(v36, v320, v321, v322, v323);
            v344 = objc_msgSend_asFormulaSpec(v339, v340, v341, v342, v343);
            updated = objc_msgSend_updateCalculatedPrecedents_forFormula_atCellRef_withState_(v401, v345, v114, v344, &v412, (v324 | a5.var0 & 0xF7));

            a5.var0 = updated;
            LODWORD(v114) = (updated >> 5) & 1;
            if (v325)
            {
              v110 = 0;
              v112 = 1;
            }

            else
            {
              v351 = objc_msgSend_cellsPendingWrite(self, v347, v348, v349, v350);
              objc_msgSend_setCell_atCellID_(v351, v352, v36, *&a3, v353);

              v112 = 0;
              v110 = 1;
            }

            goto LABEL_80;
          }

          if (v276 == 143)
          {
            v402.coordinate = 0x7FFF7FFFFFFFLL;
            if (objc_msgSend_hasFormula(v36, v271, v272, v273, v274))
            {
              v281 = objc_msgSend_formulaObject(v36, v277, v278, v279, v280);
              v402.coordinate = objc_msgSend_spillOrigin(v281, v282, v283, v284, v285);
            }

            objc_msgSend_clearValue(v36, v277, v278, v279, v280);
            objc_msgSend_setFormulaObject_(v36, v286, 0, v287, v288);
            v293 = objc_msgSend_spillingCellsPendingWrite(self, v289, v290, v291, v292);
            objc_msgSend_setCell_atCellID_(v293, v294, v36, *&a3, v295);

            objc_msgSend_addCellRefToClearError_(self, v296, &v412, v297, v298);
            memset(v403, 0, 32);
            if (v395)
            {
              objc_msgSend_cellUIDForCellID_(v395, v299, *&a3, v301, v302);
            }

            v303 = objc_msgSend_cellsToInvalidateAfterRecalc(self, v299, v300, v301, v302);
            objc_msgSend_addCellUID_(v303, v304, v403, v305, v306);

            v311 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v307, v308, v309, v310);
            objc_msgSend_addCellUID_(v311, v312, v403, v313, v314);

            if (v402.coordinate.row != 0x7FFFFFFF && (*&v402.coordinate & 0xFFFF00000000) != 0x7FFF00000000)
            {
              objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v315, &v414, &v402, v316);
              objc_msgSend_markCellRefAsDirty_(v16, v317, &v416, v318, v319);
            }

            goto LABEL_71;
          }
        }

        v326 = objc_msgSend_warnings(v399, v271, v272, v273, v274);
        v331 = objc_msgSend_count(v326, v327, v328, v329, v330);

        v336 = objc_msgSend_context(self, v332, v333, v334, v335);
        objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v36, v337, v399, v336, v331 != 0, &v415, 0);

        goto LABEL_73;
      }

      v409 = 0;
      v234 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v399, v229, v398, 0, 0xFFFFFFFFLL, 0, &v409);
      v219 = v409;
      if (v219 || !(objc_msgSend_dimensions(v234, v235, v236, v237, v238) >> 33))
      {
        v247 = v399;
      }

      else
      {
        v243 = objc_msgSend_verticalSpillInCategoriesError(TSCEError, v239, v240, v241, v242);
        v247 = objc_msgSend_errorValue_(TSCEErrorValue, v244, v243, v245, v246);

        objc_msgSend_setError_warnings_forCell_(v16, v248, v243, 0, &v412);
        objc_msgSend_spillBlockedByBeingVerticalPrecedentForTableUID_(TSCEHauntedOwner, v249, &v414, v250, v251);
        *v403 = 0;
        TSCERangeRef::TSCERangeRef(&v416, &v402);
        *&v403[8] = v416;
        v404 = 0;
        v408 = 0;
        v405 = 0;
        v406 = 0;
        v407 = 0;
        objc_msgSend_addCalculatedPrecedent_(v398, v252, v403, v253, v254);
      }

      v399 = v247;
    }

    goto LABEL_57;
  }

  v59 = a5.var0 & 0x5F | 0x20;
LABEL_8:
  v60 = 0x80;
LABEL_98:

  return (v60 | v59);
}

- (void)writeResultsForCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(self, v5, v6, v7, v8);
  v14 = objc_msgSend_cellsPendingWrite(self, v10, v11, v12, v13);
  v18 = objc_msgSend_concurrentCellMapForTable_(v14, v15, self, v16, v17);

  if (v18)
  {
    objc_msgSend_willModify(v4, v19, v20, v21, v22);
    objc_msgSend_setMayModifyValuesReferencedByFormulas_(v18, v23, 0, v24, v25);
    v30 = objc_msgSend_calcEngine(self, v26, v27, v28, v29);

    if (v30 != v4)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTTableModel(FormulaOwner) writeResultsForCalcEngine:]", v32, v33);
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v37, v38);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v35, v39, 912, 0, "expect calc engines to be the same");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }

    objc_msgSend_willApplyToTableModel_(v18, v31, self, v32, v33);
    objc_msgSend_prepareToApplyConcurrentCellMap_(self, v45, v18, v46, v47);
    objc_msgSend_accumulateCurrentCellsConcurrently_(self, v48, v18, v49, v50);
    objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v51, v18, 1, 0, 0);
    objc_msgSend_didApplyConcurrentCellMap_(self, v52, v18, v53, v54);
    v59 = objc_msgSend_cellsPendingWrite(self, v55, v56, v57, v58);
    objc_msgSend_removeAllCells(v59, v60, v61, v62, v63);
  }

  v64 = objc_msgSend_spillingCellsPendingWrite(self, v19, v20, v21, v22);
  v68 = objc_msgSend_concurrentCellMapForTable_(v64, v65, self, v66, v67);

  if (v68)
  {
    objc_msgSend_willModify(v4, v69, v70, v71, v72);
    objc_msgSend_setMayModifyValuesReferencedByFormulas_(v68, v73, 1, v74, v75);
    objc_msgSend_setSkipDirtyingRanges_(v68, v76, 1, v77, v78);
    objc_msgSend_willApplyToTableModel_(v68, v79, self, v80, v81);
    objc_msgSend_prepareToApplyConcurrentCellMap_(self, v82, v68, v83, v84);
    objc_msgSend_accumulateCurrentCellsConcurrently_(self, v85, v68, v86, v87);
    v92 = objc_msgSend_spillFormulasMinion(v4, v88, v89, v90, v91);
    objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v93, v68, 0, 0, v92);

    objc_msgSend_didApplyConcurrentCellMap_(self, v94, v68, v95, v96);
    v101 = objc_msgSend_spillingCellsPendingWrite(self, v97, v98, v99, v100);
    v106 = v101;
    if (v101)
    {
      objc_msgSend_allCellCoords(v101, v102, v103, v104, v105);
    }

    else
    {
      v155 = 0;
      v153 = 0u;
      v154 = 0u;
    }

    *&v159[0] = objc_msgSend_tableUID(self, v102, v103, v104, v105);
    *(&v159[0] + 1) = v107;
    objc_msgSend_wroteSpillingCells_forOwner_(v4, v107, &v153, v159, v108);
    sub_22107C860(&v154, *(&v154 + 1));

    v113 = objc_msgSend_spillingCellsPendingWrite(self, v109, v110, v111, v112);
    objc_msgSend_removeAllCells(v113, v114, v115, v116, v117);
  }

  objc_msgSend_clearErrors(self, v69, v70, v71, v72);
  if (v4)
  {
    objc_msgSend_corruptCellRefs(v4, v118, v119, v120, v121);
  }

  else
  {
    v160 = 0;
    memset(v159, 0, sizeof(v159));
  }

  if (!sub_2212E0280(v159))
  {
    *&v153 = 0;
    *(&v153 + 1) = &v153;
    *&v154 = 0x5812000000;
    *(&v154 + 1) = sub_22157A238;
    v155 = sub_22157A244;
    v156 = &unk_22188E88F;
    memset(v157, 0, sizeof(v157));
    v158 = 1065353216;
    v147 = MEMORY[0x277D85DD0];
    v148 = 3221225472;
    v149 = sub_22157A24C;
    v150 = &unk_278466FF0;
    v126 = v4;
    v151 = v126;
    v152 = &v153;
    sub_2212DFEC0(v159, &v147);
    objc_msgSend_resetCorruptCellRefs_(v126, v127, *(&v153 + 1) + 48, v128, v129, v147, v148, v149, v150);

    _Block_object_dispose(&v153, 8);
    sub_221122744(v157);
  }

  v130 = objc_msgSend_spillFormulasMinion(v4, v122, v123, v124, v125);
  objc_msgSend_flushAllChanges(v130, v131, v132, v133, v134);

  if (objc_msgSend_hasRunRecalculationALongTime(v4, v135, v136, v137, v138))
  {
    objc_msgSend_requestAutosaveForExpensiveCalculation(v9, v139, v140, v141, v142);
    objc_msgSend_clearRecalculationTimer(v4, v143, v144, v145, v146);
  }

  sub_221122744(v159);
}

- (void)invalidateForCalcEngine:(id)a3
{
  v6 = objc_msgSend_calcEngine(self, a2, a3, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
    v16 = objc_msgSend_groupBy(v11, v12, v13, v14, v15);
    objc_msgSend_exitCalcEngineMode(v16, v17, v18, v19, v20);

    MEMORY[0x2821F9670](self, sel_notifyTableOfNewResults, v21, v22, v23);
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableModel(FormulaOwner) invalidateForCalcEngine:]", v9, v10);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 991, 0, "Table model has no calc engine. Aborting recalculation.");

    v35 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v35, v31, v32, v33, v34);
  }
}

- (void)getPendingCellCopy:(id)a3 atBaseCellCoord:(TSUModelCellCoord)a4 suppressCellBorder:(BOOL)a5
{
  v24 = a3;
  v11 = objc_msgSend_spillingCellsPendingWrite(self, v7, v8, v9, v10);
  v15 = objc_msgSend_cellAtCellID_(v11, v12, *&a4, v13, v14);

  if (v15 || (objc_msgSend_cellsPendingWrite(self, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellAtCellID_(v20, v21, *&a4, v22, v23), v15 = objc_claimAutoreleasedReturnValue(), v20, v15))
  {
    objc_msgSend_copyToCell_(v15, v16, v24, v18, v19);
  }

  else
  {
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v16, v24, *&a4, 1);
  }
}

- (BOOL)spillArrayValue:(id)a3 primaryCell:(id)a4 withContext:(id)a5 hasWarnings:(BOOL)a6 didBeginOrEndWithTextCell:(BOOL *)a7 propagateCheckboxes:(BOOL)a8
{
  v370 = a8;
  v368 = a6;
  v11 = a3;
  v12 = a4;
  v384 = a5;
  LODWORD(v17) = objc_msgSend_inArrayMode(v384, v13, v14, v15, v16);
  if (objc_msgSend_isReferenceValue(v11, v18, v19, v20, v21))
  {
    v26 = objc_msgSend_asReferenceValue(v11, v22, v23, v24, v25);
    v29 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v26, v27, v384, 1, v28);

    v30 = v29;
  }

  else
  {
    v30 = v11;
  }

  v383 = v30;
  v31 = objc_msgSend_nativeType(v30, v22, v23, v24, v25);
  v36 = 1;
  if (v31 == 1)
  {
    v382 = 0;
  }

  else if (v31 == 9)
  {
    v37 = objc_msgSend_coercedErrorWithContext_(v383, v32, v384, v34, v35);
    v42 = v37;
    if (v37 && objc_msgSend_errorType(v37, v38, v39, v40, v41) == 7)
    {
      v382 = v42;
      v36 = 0;
    }

    else
    {
      v382 = 0;
    }

    LODWORD(v17) = 0;
  }

  else
  {
    v382 = 0;
    v36 = 1;
    if (v31 != 16)
    {
      LODWORD(v17) = 0;
    }
  }

  v43 = objc_msgSend_calcEngine(v384, v32, v33, v34, v35);
  v436 = *objc_msgSend_containingCell(v384, v44, v45, v46, v47);
  if (v384)
  {
    objc_msgSend_containingCellRef(v384, v48, v49, v50, v51);
  }

  else
  {
    v434 = 0uLL;
    v435 = 0;
  }

  v433._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v433._coordsForOwnerUid.__tree_.__size_ = 0;
  v433._coordsForOwnerUid.__tree_.__begin_node_ = &v433._coordsForOwnerUid.__tree_.__end_node_;
  if (!v36)
  {
    goto LABEL_22;
  }

  v52 = objc_msgSend_formulaObject(v12, v48, v49, v50, v51);
  isSpillFormula = objc_msgSend_isSpillFormula(v52, v53, v54, v55, v56);

  if (((isSpillFormula | v17) & 1) == 0 && !v382 && objc_msgSend_spillSizeForCell_(v43, v48, &v434, v50, v51) == 0x100000001)
  {
    goto LABEL_73;
  }

  if ((isSpillFormula & 1) == 0)
  {
    objc_msgSend_lockSpilling(self, v48, v49, v50, v51);
    if (v43)
    {
      objc_msgSend_spillingCellsForFormulaAt_(v43, v58, &v434, v59, v60);
    }

    else
    {
      memset(v408, 0, 24);
    }

    TSCECellRefSet::operator=(&v433, v408);
    sub_22107C800(v408, *&v408[8]);
    if ((v17 & 1) == 0)
    {
      objc_msgSend_clearSpillSizeForCell_(v43, v48, &v434, v50, v51);
    }

    v373 = 1;
  }

  else
  {
LABEL_22:
    v373 = 0;
  }

  v380 = v17;
  v376 = v12;
  v381 = objc_msgSend_locale(v384, v48, v49, v50, v51);
  v65 = objc_msgSend_containingTable(v384, v61, v62, v63, v64);
  if (*v65 != objc_msgSend_tableUID(self, v66, v67, v68, v69) || v65[1] != v70)
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v72, v73);
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v77, v78);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 1106, 0, "Self should be the containing table already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
  }

  v377 = objc_msgSend_columnRowUIDMap(self, v70, v71, v72, v73);
  v378 = objc_msgSend_spillingCellsPendingWrite(self, v85, v86, v87, v88);
  v375 = objc_msgSend_cellsToInvalidateAfterRecalc(self, v89, v90, v91, v92);
  v372 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v93, v94, v95, v96);
  if (!v380)
  {
    if (v382)
    {
      if (v384)
      {
        objc_msgSend_containingCellRef(v384, v97, v98, v99, v100);
      }

      else
      {
        memset(v408, 0, 24);
      }

      objc_msgSend_setError_warnings_forCell_(v43, v97, v382, 0, v408);
    }

    goto LABEL_68;
  }

  v432 = 0;
  v379 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v383, v97, v384, 0, 0xFFFFFFFFLL, 0, &v432);
  v365 = v432;
  if (v365)
  {
    v105 = MEMORY[0x277D81150];
    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v103, v104);
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v108, v109);
    v115 = objc_msgSend_errorTypeKey(v365, v111, v112, v113, v114);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v116, v106, v110, 1119, 0, "Need to deal with asGrid error: %@", v115);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119, v120);
  }

  v374 = objc_msgSend_warnings(v383, v101, v102, v103, v104);
  v125 = objc_msgSend_dimensions(v379, v121, v122, v123, v124);
  v430._coordsForOwnerUid.__tree_.__size_ = 0;
  v431 = v125;
  v430._coordsForOwnerUid.__tree_.__begin_node_ = &v430._coordsForOwnerUid.__tree_.__end_node_;
  v430._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v427 = 0u;
  v428 = 0u;
  v429 = 1065353216;
  v424 = 0u;
  v425 = 0u;
  v426 = 1065353216;
  v423 = 0;
  v126 = v384;
  v417[0] = v126;
  v417[1] = 0;
  v418 = 0;
  v419[0] = 0xFFFFFFFFLL;
  *(v419 + 7) = 0;
  v420 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v422 = 0;
  v421 = 0;
  row = v436.row;
  v416 = v436;
  height = v431.height;
  *&v415 = v436;
  v367 = v431.width | (v431.height << 32);
  *(&v415 + 1) = v367;
  v414 = v415;
  v371 = v126;
  if (height + row > objc_msgSend_numberOfRows(self, v129, v130, v131, v132) || (column = v436.column, width = v431.width, width + column > objc_msgSend_numberOfColumns(self, v133, v134, v135, v136)))
  {
    v139 = objc_msgSend_tableSizeBlockedSpillError_spillRange_(TSCEError, v133, v367, v415, *(&v415 + 1));
    objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v140, v65, v141, v142);
    *v408 = 0;
    TSCERangeRef::TSCERangeRef(&v404, &v437);
    *&v408[8] = v404._rectRepresentation;
    *&v408[24] = *&v404._rowsPerColumn.__tree_.__begin_node_;
    LOBYTE(v409) = 0;
    v413 = 0;
    v411 = 0;
    v410 = 0;
    LOWORD(v412) = 0;
    objc_msgSend_addCalculatedPrecedent_(v126, v143, v408, v144, v145);

    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v146, v65, v147, v148);
    *v408 = 0;
    TSCERangeRef::TSCERangeRef(&v404, &v437);
    *&v408[8] = v404._rectRepresentation;
    *&v408[24] = *&v404._rowsPerColumn.__tree_.__begin_node_;
    LOBYTE(v409) = 0;
    v413 = 0;
    v411 = 0;
    v410 = 0;
    LOWORD(v412) = 0;
    objc_msgSend_addCalculatedPrecedent_(v126, v149, v408, v150, v151);

    v155 = 0;
    goto LABEL_38;
  }

  v405 = 0;
  v406 = 0;
  v407 = 0;
  v404._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v404._rowsPerColumn.__tree_.__size_ = 0;
  v404._rectRepresentation.origin = 0;
  v404._rectRepresentation.size = 0;
  v404._rowsPerColumn.__tree_.__begin_node_ = &v404._rowsPerColumn.__tree_.__end_node_;
  for (i = objc_msgSend_setSpillSizeForCell_spillSize_overlappingSpills_(v43, v133, &v434, v367, &v405); (i & 1) == 0; i = objc_msgSend_setSpillSizeForCell_spillSize_overlappingSpills_(v43, v205, &v434, v367, &v405))
  {
    v207 = v405;
    v208 = v406;
    if (v405 != v406)
    {
      while (1)
      {
        *v408 = v207->origin;
        v209 = objc_msgSend_conflictWinnerForSpillRect1_spillOrigin2_inTable_(v43, v205, &v415, v408, v65);
        if (v209 == *v408 && ((*v408 ^ v209) & 0x101FFFF00000000) == 0)
        {
          break;
        }

        if (++v207 == v208)
        {
          v207 = v405;
          v208 = v406;
          goto LABEL_62;
        }
      }

      v414 = *v207;
      break;
    }

LABEL_62:
    if (v207 != v208)
    {
      do
      {
        v437.range._topLeft = v207->origin;
        TSCECellCoordSet::addCellCoord(&v404, &v437.range._topLeft);
        *v408 = v437.range._topLeft;
        *&v408[8] = *v65;
        objc_msgSend_clearSpillSizeForCell_(v43, v211, v408, v212, v213);
        ++v207;
      }

      while (v207 != v208);
      v207 = v405;
    }

    v406 = v207;
  }

  if (!TSCECellCoordSet::isEmpty(&v404))
  {
    objc_msgSend_markCoordsDirty_inOwner_(v43, v228, &v404, v65, v231);
  }

  v366 = i;
  if (v373)
  {
    v402 = v436;
    v403 = v367;
    v232 = objc_msgSend_mergeOwner(self, v228, v229, v230, v231);
    hasMergeRangesIntersectingBaseCellRect = objc_msgSend_hasMergeRangesIntersectingBaseCellRect_(v232, v233, &v402, v234, v235);

    if (hasMergeRangesIntersectingBaseCellRect)
    {
      v239 = objc_msgSend_mergeOwner(self, v228, v237, v238, v231);
      v242 = v239;
      if (v239)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRect_(v239, v240, v402, v403, v241);
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
      }

      if (*&__p.coordinate == __p._tableUID._lower)
      {
        objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v243, v367, v415, *(&v415 + 1), 0x7FFF7FFFFFFFLL, 0);
      }

      else
      {
        objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v243, v367, v415, *(&v415 + 1), **&__p.coordinate, *(*&__p.coordinate + 8));
      }
      v139 = ;
      objc_msgSend_spillBlockedByMergePrecedentForTableUID_(TSCEHauntedOwner, v244, v65, v245, v246);
      *v408 = 0;
      TSCERangeRef::TSCERangeRef(&v437, &v400);
      *&v408[8] = v437;
      LOBYTE(v409) = 0;
      v413 = 0;
      v411 = 0;
      v410 = 0;
      LOWORD(v412) = 0;
      objc_msgSend_addCalculatedPrecedent_(v126, v247, v408, v248, v249);

      objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v250, v65, v251, v252);
      *v408 = 0;
      TSCERangeRef::TSCERangeRef(&v437, &v400);
      *&v408[8] = v437;
      LOBYTE(v409) = 0;
      v413 = 0;
      v411 = 0;
      v410 = 0;
      LOWORD(v412) = 0;
      objc_msgSend_addCalculatedPrecedent_(v126, v253, v408, v254, v255);

      if (__p.coordinate)
      {
        __p._tableUID._lower = __p.coordinate;
        operator delete(*&__p.coordinate);
      }

      if (v139)
      {
        goto LABEL_126;
      }
    }
  }

  v364 = 0;
  while (1)
  {
    v256 = objc_msgSend_valueAtGridCoord_accessContext_(v379, v228, *&v423, v417, v231);
    v260 = objc_msgSend_resolveToSingleValueOrError_(v256, v257, v126, v258, v259);

    objc_msgSend_attachWarnings_(v260, v261, v374, v262, v263);
    if (v436.row == v416.row && ((*&v416 ^ *&v436) & 0x101FFFF00000000) == 0)
    {
      goto LABEL_113;
    }

    v264 = [TSTCell alloc];
    v268 = objc_msgSend_initWithLocale_(v264, v265, v381, v266, v267);
    objc_msgSend_getPendingCellCopy_atBaseCellCoord_suppressCellBorder_(self, v269, v268, *&v416, 1);
    if (objc_msgSend_hasValueOrError(v268, v270, v271, v272, v273) && !objc_msgSend_hasCellSpec(v268, v274, v275, v276, v277) || (objc_msgSend_hasControl(v268, v274, v275, v276, v277) & 1) != 0 || (v284 = 0x7FFF7FFFFFFFLL, objc_msgSend_hasFormula(v268, v274, v278, v279, v280)) && ((objc_msgSend_formulaObject(v268, v274, v281, v282, v283), v285 = objc_claimAutoreleasedReturnValue(), v284 = objc_msgSend_spillOrigin(v285, v286, v287, v288, v289), v285, v284 == 0x7FFFFFFF) || (v284 & 0xFFFF00000000) == 0x7FFF00000000) && (objc_msgSend_formulaObject(v268, v274, v290, v282, v283), v291 = objc_claimAutoreleasedReturnValue(), v296 = objc_msgSend_isSpillFormula(v291, v292, v293, v294, v295), v291, (v296 & 1) == 0))
    {
      objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v274, v367, v415, *(&v415 + 1), v416, 0x100000001);
      v139 = v126 = v371;
      objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v339, v65, v340, v341);
      *v408 = 0;
      TSCERangeRef::TSCERangeRef(&v437, &__p);
      *&v408[8] = v437;
      LOBYTE(v409) = 0;
      v413 = 0;
      v411 = 0;
      v410 = 0;
      LOWORD(v412) = 0;
      objc_msgSend_addCalculatedPrecedent_(v371, v342, v408, v343, v344);
      goto LABEL_124;
    }

    if (v366)
    {
      v437.range._topLeft = v416;
      *&v437.range._bottomRight.row = *v65;
      v126 = v371;
      v297 = v364;
      if (!v364)
      {
        v298 = [TSCEFormulaObject alloc];
        *v408 = v434;
        *&v408[16] = v435;
        *&__p.coordinate.row = v437.range;
        __p._tableUID._upper = v437._tableUID._lower;
        TSCEFormulaCreationMagic::cellRef(v408, 3, v299, &__p, v300, &v398);
        TSCEFormulaCreationMagic::__SPILL(&v398, v438, &v399);
        v304 = objc_msgSend_initWithCreator_(v298, v301, &v399, v302, v303);

        v297 = v304;
      }

      v364 = v297;
      objc_msgSend_setFormulaObject_(v268, v274, v297, v282, v283);
      v309 = objc_msgSend_context(self, v305, v306, v307, v308);
      objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v268, v310, v260, v309, v368, a7, v370);

      if (v284 != v436.row || ((*&v436 ^ v284) & 0x101FFFF00000000) != 0)
      {
        objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v311, v65, &v436, v313);
        objc_msgSend_markCellRefAsDirty_(v43, v314, v408, v315, v316);
      }

      v317 = objc_msgSend_errorWithContext_(v260, v311, v371, v312, v313);
      v326 = objc_msgSend_warnings(v260, v318, v319, v320, v321);
      if (v317)
      {
        *v408 = &v416;
        v327 = sub_22157C3EC(&v427, &v416);
        objc_storeStrong(v327 + 3, v317);
      }

      if (objc_msgSend_count(v326, v322, v323, v324, v325))
      {
        *v408 = &v416;
        v330 = sub_22157C668(&v424, &v416);
        objc_storeStrong(v330 + 3, v326);
      }

      objc_msgSend_setCell_atCellID_(v378, v328, v268, *&v416, v329);
      memset(v408, 0, 32);
      if (v377)
      {
        objc_msgSend_cellUIDForCellID_(v377, v331, *&v416, v332, v333);
      }

      objc_msgSend_addCellUID_(v375, v331, v408, v332, v333);
      TSCECellRefSet::removeCellRef(&v433, &v437);
      TSCECellRefSet::addCellRef(&v430, &v437);

      goto LABEL_112;
    }

    v334 = v416;
    v126 = v371;
    if (TSUCellRect::contains(&v414, v334))
    {
      break;
    }

LABEL_112:

LABEL_113:
    v336 = v423.row;
    v337 = TSCEGridDimensions::nextCoordRowMajorOrder(&v431, &v423);
    v423 = v337;
    if (v337 != 0x7FFFFFFF && HIDWORD(v337) != 0x7FFFFFFF)
    {
      if (HIDWORD(v337) == v336)
      {
        v338 = v416.column + 1;
      }

      else
      {
        ++v416.row;
        v338 = v436.column;
      }

      v416.column = v338;
    }

    v139 = 0;
    if (v423.column == 0x7FFFFFFF || v423.row == 0x7FFFFFFF)
    {
      goto LABEL_125;
    }
  }

  v139 = objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v335, v367, v415, *(&v415 + 1), v416, 0x100000001);
  objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v345, v65, v346, v347);
  *v408 = 0;
  TSCERangeRef::TSCERangeRef(&v437, &__p);
  *&v408[8] = v437;
  LOBYTE(v409) = 0;
  v413 = 0;
  v411 = 0;
  v410 = 0;
  LOWORD(v412) = 0;
  objc_msgSend_addCalculatedPrecedent_(v371, v348, v408, v349, v350);
LABEL_124:

LABEL_125:
LABEL_126:
  v155 = v366 ^ 1;
  sub_22107C860(&v404._rowsPerColumn, v404._rowsPerColumn.__tree_.__end_node_.__left_);
  if (v405)
  {
    v406 = v405;
    operator delete(v405);
  }

  if (!(v366 & 1 | (v139 != 0)))
  {
    v351 = MEMORY[0x277D81150];
    v352 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v153, v154);
    v356 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v353, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v354, v355);
    v357 = TSUCellRect::description(&v414);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v351, v358, v352, v356, 1353, 0, "Expected we would have found a spilling cell to conflict with, this one: %@", v357);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v359, v360, v361, v362);
    v139 = objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v363, v367, v415, *(&v415 + 1), v436, 0x100000001);
    v126 = v371;
  }

LABEL_38:
  if (v139)
  {
    v156 = objc_msgSend_errorValue_(TSCEErrorValue, v152, v139, v153, v154);
    objc_msgSend_setError_warnings_forCell_(v43, v157, v139, 0, &v434);
    objc_msgSend_applyFormulaResult_(v376, v158, v156, v159, v160);
    objc_msgSend_clearSpillSizeForCell_(v43, v161, &v434, v162, v163);
    v396[0] = MEMORY[0x277D85DD0];
    v396[1] = 3221225472;
    v396[2] = sub_22157BC20;
    v396[3] = &unk_27845FBD8;
    v397 = v378;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v430, v396);
  }

  else
  {
    v164 = objc_msgSend_valueAtGridCoord_accessContext_(v379, v152, 0, v417, v154);
    v156 = objc_msgSend_resolveToSingleValueOrError_(v164, v165, v126, v166, v167);

    objc_msgSend_attachWarnings_(v156, v168, v374, v169, v170);
    v175 = objc_msgSend_context(self, v171, v172, v173, v174);
    objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v376, v176, v156, v175, v368, a7, v370);

    objc_msgSend_updateErrorAndWarnings_forCell_(v43, v177, v156, &v434, v178);
    if (v155)
    {
      v182 = MEMORY[0x277D81150];
      v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v180, v181);
      v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v184, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v185, v186);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v182, v188, v183, v187, 1381, 0, "We should not be setting values and errors if we lost spill conflict vs another spill.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192);
    }

    v404._rectRepresentation.origin = 0;
    *&v404._rectRepresentation.size.numberOfColumns = *v65;
    for (j = v428; j; j = *j)
    {
      v194 = j[3];
      v404._rectRepresentation.origin = j[2];
      origin = v404._rectRepresentation.origin;
      v196 = v194;
      *v408 = origin;
      v197 = sub_221087F14(&v424, v408);
      v199 = v197;
      if (v197)
      {
        v200 = v197[3];
        sub_221087680(&v424, v199, v408);
        sub_221087E7C(v408);
      }

      else
      {
        v200 = 0;
      }

      objc_msgSend_setError_warnings_forCell_(v43, v198, v196, v200, &v404);
    }

    for (k = v425; k; k = *k)
    {
      v202 = k[3];
      v404._rectRepresentation.origin = k[2];
      v203 = v202;
      objc_msgSend_setError_warnings_forCell_(v43, v204, 0, v203, &v404);
    }
  }

  sub_221087B80(&v424);
  sub_221087B80(&v427);
  sub_22107C800(&v430, v430._coordsForOwnerUid.__tree_.__end_node_.__left_);

LABEL_68:
  *v408 = 0;
  *&v408[8] = v408;
  *&v408[16] = 0x4812000000;
  *&v408[24] = sub_22157BC2C;
  *&v408[32] = sub_22157BC38;
  v409 = &unk_22188E88F;
  v412 = 0;
  v411 = 0;
  v410 = &v411;
  v385[0] = MEMORY[0x277D85DD0];
  v385[1] = 3221225472;
  v385[2] = sub_22157BC44;
  v385[3] = &unk_278467018;
  v214 = v378;
  v386 = v214;
  v387 = self;
  v392 = v381;
  v395 = v436;
  v215 = v377;
  v388 = v215;
  v17 = v375;
  v389 = v17;
  v216 = v372;
  v393 = v43;
  v394 = v65;
  v390 = v216;
  v391 = v408;
  TSCECellRefSet::enumerateCellRefsUsingBlock(&v433, v385);
  if (v373)
  {
    objc_msgSend_unlockSpilling(self, v217, v218, v219, v220);
  }

  if ((TSCECellRefSet::isEmpty((*&v408[8] + 48)) & 1) == 0)
  {
    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v221, v65, v222, v223);
    objc_msgSend_markCellRefAsDirty_(v43, v224, v417, v225, v226);
  }

  _Block_object_dispose(v408, 8);
  sub_22107C800(&v410, v411);

  v12 = v376;
  LOBYTE(v17) = v380;
LABEL_73:
  sub_22107C800(&v433, v433._coordsForOwnerUid.__tree_.__end_node_.__left_);

  return v17;
}

- (id)expectedSpillErrorForValue:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isError(v6, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_asErrorValue(v6, v12, v13, v14, v15);
    v21 = objc_msgSend_error(v16, v17, v18, v19, v20);
  }

  else
  {
    v22 = objc_msgSend_nativeType(v6, v12, v13, v14, v15);
    if (v22 == 1 || v22 == 16)
    {
      v119 = 0;
      v24 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v6, v23, v7, 0, 0xFFFFFFFFLL, 0, &v119);
      v25 = v119;
      v30 = *objc_msgSend_containingCell(v7, v26, v27, v28, v29);
      v35 = objc_msgSend_dimensions(v24, v31, v32, v33, v34);
      v118 = v35;
      if (HIDWORD(v35) + v30 <= objc_msgSend_numberOfRows(self, v36, v37, v38, v39) && v118.width + WORD2(v30) <= objc_msgSend_numberOfColumns(self, v40, v41, v42, v43))
      {
        v112 = v35;
        v116 = v30;
        v117 = v35;
        v48 = objc_msgSend_mergeOwner(self, v40, v44, v45, v46);
        hasMergeRangesIntersectingBaseCellRect = objc_msgSend_hasMergeRangesIntersectingBaseCellRect_(v48, v49, &v116, v50, v51);

        if (hasMergeRangesIntersectingBaseCellRect)
        {
          v57 = objc_msgSend_mergeOwner(self, v53, v54, v55, v56);
          v60 = v57;
          if (v57)
          {
            objc_msgSend_mergeRangesIntersectingBaseCellRect_(v57, v58, v116, v117, v59);
          }

          else
          {
            __p = 0;
            v114 = 0;
            v115 = 0;
          }

          if (__p == v114)
          {
            objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v109, v112, v30, v112, 0x7FFF7FFFFFFFLL, 0);
          }

          else
          {
            objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v109, v112, v30, v112, *__p, *(__p + 1));
          }
          v21 = ;
          if (__p)
          {
            v114 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v110 = v24;
          v111 = v7;
          v61 = [TSTCell alloc];
          v66 = objc_msgSend_locale(v7, v62, v63, v64, v65);
          v70 = objc_msgSend_initWithLocale_(v61, v67, v66, v68, v69);

          __p = 0;
          v72 = WORD2(v30);
          v73 = v30;
          while (1)
          {
            v74 = v30 & 0xFFFF000000000000 | (v72 << 32);
            if (v73 != v30 || ((v74 ^ v30) & 0x101FFFF00000000) != 0)
            {
              objc_msgSend_getPendingCellCopy_atBaseCellCoord_suppressCellBorder_(self, v71, v70, v74 | v73, 1, v110, v111);
              if (objc_msgSend_hasValueOrError(v70, v75, v76, v77, v78))
              {
                if (!objc_msgSend_hasCellSpec(v70, v79, v80, v81, v82))
                {
                  break;
                }
              }

              if (objc_msgSend_hasControl(v70, v79, v80, v81, v82))
              {
                break;
              }

              if (objc_msgSend_hasFormula(v70, v79, v83, v84, v85))
              {
                v90 = objc_msgSend_formulaObject(v70, v86, v87, v88, v89);
                v95 = objc_msgSend_spillOrigin(v90, v91, v92, v93, v94);

                if (v95 == 0x7FFFFFFF || (v95 & 0xFFFF00000000) == 0x7FFF00000000)
                {
                  v100 = objc_msgSend_formulaObject(v70, v96, v97, v98, v99);
                  isSpillFormula = objc_msgSend_isSpillFormula(v100, v101, v102, v103, v104);

                  if ((isSpillFormula & 1) == 0)
                  {
                    break;
                  }
                }
              }
            }

            v106 = HIDWORD(__p);
            v107 = TSCEGridDimensions::nextCoordRowMajorOrder(&v118, &__p);
            v21 = 0;
            __p = v107;
            if (v107 == 0x7FFFFFFF)
            {
              goto LABEL_35;
            }

            v108 = HIDWORD(v107);
            if (HIDWORD(v107) == 0x7FFFFFFF)
            {
              goto LABEL_35;
            }

            if (v108 == v106)
            {
              ++v72;
            }

            else
            {
              v72 = WORD2(v30);
            }

            if (v108 != v106)
            {
              ++v73;
            }
          }

          v21 = objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v79, v112, v30, v112, v74 | v73, 0x100000001);
LABEL_35:

          v24 = v110;
          v7 = v111;
        }
      }

      else
      {
        v21 = objc_msgSend_tableSizeBlockedSpillError_spillRange_(TSCEError, v40, v35, v30, v35);
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)objectToArchiveInDependencyTracker
{
  v5 = self;
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v7 = v6;
  if (v6)
  {
    v5 = v6;
  }

  v8 = v5;

  return v5;
}

@end