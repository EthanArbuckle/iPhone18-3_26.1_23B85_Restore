@interface TSTTableInfo
+ (BOOL)validateNewName:(id)a3 forTable:(id)a4;
+ (TSUCellRect)cellRangeForTableArea:(unint64_t)a3 givenTableSize:(id)a4 numberOfHeaderRows:(unsigned int)a5 numberOfFooterRows:(unsigned int)a6 numberOfHeaderColumns:(unsigned int)a7;
+ (id)displayNameForColumnName:(id)a3;
+ (id)geometryForPrototypeIndex:(int64_t)a3 withCanvasPoint:(CGPoint)a4;
+ (id)localizedDescriptionForProtoIndex:(unint64_t)a3;
+ (id)pivotDetailTableNameFromSourcePivotTableInfo:(id)a3 pivotSourceCell:(TSUCellCoord)a4;
+ (id)pivotTableNameForSourceTable:(id)a3;
+ (id)tableInfoForTableUID:(TSKUIDStruct)a3 withCalcEngine:(id)a4;
+ (id)tablePrototypeWithIndex:(int64_t)a3 context:(id)a4 geometry:(id)a5 stylePreset:(id)a6;
+ (id)tablePrototypeWithIndex:(int64_t)a3 context:(id)a4 geometry:(id)a5 stylePreset:(id)a6 forTableInsertOnly:(BOOL)a7;
+ (unint64_t)tableAreaForCellID:(TSUCellCoord)a3 inTableWithHeaderColumns:(unsigned int)a4 headerRows:(unsigned int)a5 footerRows:(unsigned int)a6 totalRows:(unsigned int)a7;
+ (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)a3 inTableWithHeaderColumns:(unsigned int)a4 headerRows:(unsigned int)a5 footerRows:(unsigned int)a6 totalRows:(unsigned int)a7;
+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)a3;
+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)a3;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5 reservedCount:(unint64_t)a6;
+ (void)ensureAllTablesAreRegisteredInDocumentRoot:(id)a3;
+ (void)performRewritesForInsertedTableInfos:(id)a3;
+ (void)upgradeTablesIfNeeded:(unint64_t)a3 forDocumentRoot:(id)a4;
- (BOOL)canTranspose;
- (BOOL)checkStateForArchiving:(BOOL)a3;
- (BOOL)containsProperty:(int)a3;
- (BOOL)findChartableRangesFromTableRange:(TSCERangeCoordinate)a3 getBodyRange:(TSCERangeCoordinate *)a4 headerColumnRange:(TSCERangeCoordinate *)a5 headerRowRange:(TSCERangeCoordinate *)a6;
- (BOOL)groupingTypesAreUniqueForColumn:(unsigned __int16)a3;
- (BOOL)hasActiveFilters;
- (BOOL)hasCellID:(TSUCellCoord)a3;
- (BOOL)hasFilterRulesAffectingInsertRows;
- (BOOL)hasFilterRulesInBaseColumns:(id)a3;
- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)a3;
- (BOOL)hasGroupingArrowInCellRegion:(id)a3;
- (BOOL)hasHeaderColumnForAggregateNames;
- (BOOL)hasHeaderRowForAggregateNames;
- (BOOL)hasMergeFragmentAtCellID:(TSUCellCoord)a3;
- (BOOL)hasMergeRanges;
- (BOOL)hasMigratableStylesInCells;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)a3;
- (BOOL)hasSpillingErrors;
- (BOOL)hasSummaryRowsInRegion:(id)a3;
- (BOOL)hasUntitledTableNameFormat;
- (BOOL)hasUsefulPivotSourceCellsInBodyRange:(TSUCellRect)a3;
- (BOOL)hideColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4;
- (BOOL)hideRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4;
- (BOOL)isCategoryAnyKindOfCell:(TSUCellCoord)a3;
- (BOOL)isCategoryColumn:(unsigned __int16)a3;
- (BOOL)isCategoryColumnUneditableCell:(TSUCellCoord)a3;
- (BOOL)isCategoryGroupValueCell:(TSUCellCoord)a3;
- (BOOL)isCategoryGroupValueLabelCell:(TSUCellCoord)a3;
- (BOOL)isCategoryGroupingColumn:(unsigned __int16)a3;
- (BOOL)isCategoryLabelCell:(TSUCellCoord)a3;
- (BOOL)isCellRangeHidden:(TSUCellRect)a3;
- (BOOL)isEmptyPivot;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3 objectComparisonBlock:(id)a4;
- (BOOL)isGroupCollapsedAndVisible:(TSKUIDStruct)a3 dimension:(int64_t)a4;
- (BOOL)isGroupOrParentsCollapsed:(TSKUIDStruct)a3 dimension:(int64_t)a4;
- (BOOL)isGroupingColumnCollapsed:(unsigned __int16)a3;
- (BOOL)isGroupingColumnCollapsedAndVisible:(unsigned __int16)a3;
- (BOOL)isGroupingRowCollapsed:(unsigned int)a3;
- (BOOL)isGroupingRowCollapsedAndVisible:(unsigned int)a3;
- (BOOL)isLabelRow:(unsigned int)a3;
- (BOOL)isNewlyImported;
- (BOOL)isPivotAnyKindOfCell:(TSUCellCoord)a3;
- (BOOL)isPivotGrandTotalColumn:(unsigned __int16)a3;
- (BOOL)isPivotGrandTotalRow:(unsigned int)a3;
- (BOOL)isPivotLeadingColumn:(unsigned __int16)a3;
- (BOOL)isPivotLeadingRow:(unsigned int)a3;
- (BOOL)isPivotTrailingAligned:(TSUCellCoord)a3;
- (BOOL)isPivotUnwrapped:(TSUCellCoord)a3;
- (BOOL)isRegisteredWithCalcEngine:(id)a3;
- (BOOL)isReimportable;
- (BOOL)isSafeToConvertToImageForImagePaste;
- (BOOL)isSingleCellOrMergeRange:(TSUCellRect)a3;
- (BOOL)isSummaryCell:(TSUCellCoord)a3;
- (BOOL)isSummaryColumn:(unsigned __int16)a3;
- (BOOL)isSummaryOrLabelRow:(unsigned int)a3;
- (BOOL)isSummaryRow:(unsigned int)a3;
- (BOOL)isValidForInteraction;
- (BOOL)needsFilterFormulaRewriteForImport;
- (BOOL)pivotSourceIsRangeBased;
- (BOOL)pivotTableCanBeRefreshed;
- (BOOL)registerLast;
- (BOOL)shouldDisplaySummaryLabelRowAtGroupLevel:(unsigned __int8)a3;
- (BOOL)shouldUseWideRows;
- (BOOL)showColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4;
- (BOOL)showRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4;
- (BOOL)supportsRichTextUndoAtCellID:(TSUCellCoord)a3;
- (BOOL)useBandedFill;
- (BOOL)verifySubOwnerUIDsUsed;
- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4;
- (NSSet)referencedStyles;
- (NSString)description;
- (NSString)pivotSourceRangeName;
- (NSString)pivotSourceTableName;
- (NSUUID)nsFilteringTableUID;
- (NSUUID)nsTableUID;
- (NSUUID)pivotSourceNSTableUID;
- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)a3 affectedRegion:(id)a4;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)a3 toColumn:(unsigned __int16)a4;
- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)a3 toRow:(unsigned int)a4;
- (TSDFill)bodyFill;
- (TSDFill)footerRowsFill;
- (TSDFill)headerColumnsFill;
- (TSDFill)headerRowsFill;
- (TSDStroke)bodyColumnStroke;
- (TSDStroke)bodyPivotDeEmphasisHorizontalStroke;
- (TSDStroke)bodyPivotEmphasisVerticalStroke;
- (TSDStroke)bodyPivotGroupHorizontalStroke;
- (TSDStroke)bodyPivotGroupVerticalStroke;
- (TSDStroke)bodyRowStroke;
- (TSDStroke)bodyRowStrokeEvenIfNotVisible;
- (TSDStroke)categoryLevel1BottomStroke;
- (TSDStroke)categoryLevel1InteriorStroke;
- (TSDStroke)categoryLevel1LabelSeparatorStroke;
- (TSDStroke)categoryLevel1TopStroke;
- (TSDStroke)categoryLevel2BottomStroke;
- (TSDStroke)categoryLevel2InteriorStroke;
- (TSDStroke)categoryLevel2LabelSeparatorStroke;
- (TSDStroke)categoryLevel2TopStroke;
- (TSDStroke)categoryLevel3BottomStroke;
- (TSDStroke)categoryLevel3InteriorStroke;
- (TSDStroke)categoryLevel3LabelSeparatorStroke;
- (TSDStroke)categoryLevel3TopStroke;
- (TSDStroke)categoryLevel4BottomStroke;
- (TSDStroke)categoryLevel4InteriorStroke;
- (TSDStroke)categoryLevel4LabelSeparatorStroke;
- (TSDStroke)categoryLevel4TopStroke;
- (TSDStroke)categoryLevel5BottomStroke;
- (TSDStroke)categoryLevel5InteriorStroke;
- (TSDStroke)categoryLevel5LabelSeparatorStroke;
- (TSDStroke)categoryLevel5TopStroke;
- (TSDStroke)defaultHorizontalBorderStroke;
- (TSDStroke)defaultHorizontalBorderStrokeEvenIfNotVisible;
- (TSDStroke)defaultVerticalBorderStroke;
- (TSDStroke)footerRowBodyColumnStroke;
- (TSDStroke)footerRowBodyRowStroke;
- (TSDStroke)footerRowBorderStroke;
- (TSDStroke)footerRowPivotGroupVerticalStroke;
- (TSDStroke)footerRowSeparatorStroke;
- (TSDStroke)headerColumnBodyColumnStroke;
- (TSDStroke)headerColumnBodyRowStroke;
- (TSDStroke)headerColumnBorderStroke;
- (TSDStroke)headerColumnPivotGroupDeEmphasisStroke;
- (TSDStroke)headerColumnPivotGroupHorizontalStroke;
- (TSDStroke)headerColumnPivotSeparatorStroke;
- (TSDStroke)headerColumnSeparatorStroke;
- (TSDStroke)headerRowBodyColumnStroke;
- (TSDStroke)headerRowBodyRowStroke;
- (TSDStroke)headerRowBorderStroke;
- (TSDStroke)headerRowPivotGroupDeEmphasisStroke;
- (TSDStroke)headerRowPivotGroupVerticalStroke;
- (TSDStroke)headerRowPivotTitleStroke;
- (TSDStroke)headerRowSeparatorStroke;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3;
- (TSKUIDStruct)conditionalStyleFormulaOwnerUID;
- (TSKUIDStruct)filteringTableUID;
- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)fromGroupByUID;
- (TSKUIDStruct)fromTableUID;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)hiddenStatesUid;
- (TSKUIDStruct)pivotSourceTableUID;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructCoord)cellUIDForCellID:(SEL)a3;
- (TSKUIDStructCoord)cellUIDForCellID:(SEL)a3 useCategoriesWildcards:(TSUCellCoord)a4;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3;
- (TSKUIDStructTract)tableTranslatorBaseMapForPasteboard;
- (TSKUIDStructTract)tableTranslatorViewMapForPasteboard;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3;
- (TSTPivotOwner)pivotOwner;
- (TSTTableFilterSet)filterSet;
- (TSTTableInfo)initWithContext:(id)a3 fromSourceInfo:(id)a4 cellRegion:(id)a5 waitForCalcEngine:(BOOL)a6 flattenCategories:(int64_t)a7 isSnapshot:(BOOL)a8;
- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4;
- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 rows:(unsigned int)a5 columns:(unsigned int)a6;
- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 rows:(unsigned int)a5 columns:(unsigned int)a6 stylePreset:(id)a7 styles:(id)a8;
- (TSTTableInfo)initWithContext:(id)a3 otherTableInfo:(id)a4;
- (TSTTableInfo)pivotSourceTableInfo;
- (TSTTableModel)filteringTableModel;
- (TSTTableTranslator)filteringTableTranslator;
- (TSUCellCoord)cellIDAboveCellID:(TSUCellCoord)a3;
- (TSUCellCoord)cellIDBelowCellID:(TSUCellCoord)a3;
- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)a3;
- (TSUCellCoord)cellIDLeftOfCellID:(TSUCellCoord)a3;
- (TSUCellCoord)cellIDRightOfCellID:(TSUCellCoord)a3;
- (TSUCellRect)actualHeaderColumnRange;
- (TSUCellRect)baseColumnRange;
- (TSUCellRect)bodyColumnRange;
- (TSUCellRect)bodyRange;
- (TSUCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)a3;
- (TSUCellRect)bodyRowRange;
- (TSUCellRect)bottomCornerRange;
- (TSUCellRect)categoryColumnRange;
- (TSUCellRect)cellRangeForTableArea:(unint64_t)a3;
- (TSUCellRect)cellRangeForUIDRange:(const void *)a3;
- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)a3;
- (TSUCellRect)filteringBaseColumnRange;
- (TSUCellRect)filteringBodyRange;
- (TSUCellRect)filteringBodyRowRange;
- (TSUCellRect)filteringRange;
- (TSUCellRect)footerRowRange;
- (TSUCellRect)headerColumnRange;
- (TSUCellRect)headerRowRange;
- (TSUCellRect)mergeRangeAtCellID:(TSUCellCoord)a3;
- (TSUCellRect)minPopulatedCellRange;
- (TSUCellRect)range;
- (TSUCellRect)topCornerRange;
- (TSUChromeColumnIndex)numberOfChromeColumns;
- (TSUChromeColumnIndex)numberOfChromeHeaderColumns;
- (TSUChromeRowIndex)numberOfChromeFooterRows;
- (TSUChromeRowIndex)numberOfChromeHeaderRows;
- (TSUChromeRowIndex)numberOfChromeRows;
- (TSUModelColumnIndex)numberOfBaseColumns;
- (TSUModelColumnIndex)numberOfBaseHeaderColumns;
- (TSUModelRowIndex)numberOfBaseBodyRows;
- (TSUModelRowIndex)numberOfBaseFooterRows;
- (TSUModelRowIndex)numberOfBaseHeaderRows;
- (TSUModelRowIndex)numberOfBaseRows;
- (_NSRange)columnRangeForUIDs:(const void *)a3;
- (_NSRange)rowRangeForUIDs:(const void *)a3;
- (_NSRange)rowRangeUnderSummaryOrLabelRow:(unsigned int)a3;
- (float)floatValueForProperty:(int)a3;
- (id).cxx_construct;
- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4;
- (id)_initWithContext:(id)a3 flatteningFromComplexInfo:(id)a4 cellRegion:(id)a5 waitForCalcEngine:(BOOL)a6 flatteningOptions:(int64_t)a7 isSnapshot:(BOOL)a8;
- (id)_initWithContext:(id)a3 fromSourceInfo:(id)a4 cellRegion:(id)a5 tableModel:(id)a6 waitForCalcEngine:(BOOL)a7 formulaCoordSpace:(int64_t)a8;
- (id)additionalObjectsToCopy;
- (id)allAnnotations;
- (id)allBodyValuesAsPregArgDataListForColumnIndex:(TSUViewColumnIndex)a3;
- (id)allColumnUIDsAtGroupLevel:(unsigned __int8)a3 withFilter:(id)a4;
- (id)allRowUIDsAtGroupLevel:(unsigned __int8)a3 withFilter:(id)a4;
- (id)annotationWithUUID:(id)a3;
- (id)applyCellDiff:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 migrationMap:(id)a5 inverseCellDiff:(id)a6 defaultCellStyle:(id)a7 defaultTextStyle:(id)a8;
- (id)applyCellDiffMap:(id)a3 migrationHelper:(id)a4 updateProperties:(id)a5;
- (id)applyCollapseExpandState:(id)a3 outUndoState:(id *)a4;
- (id)bandedFillObject;
- (id)categoryRefReferringToCellRef:(const void *)a3;
- (id)cellAfterApplyDiff:(id)a3 toCell:(id)a4 atCellUID:(const TSKUIDStructCoord *)a5 migrationMap:(id)a6 inverseCellDiff:(id)a7 concurrentStylesheet:(id)a8 defaultCellStyle:(id)a9 defaultTextStyle:(id)a10;
- (id)cellAtCellID:(TSUCellCoord)a3;
- (id)cellBorderAtCellID:(TSUCellCoord)a3;
- (id)cellIteratorWithFlags:(unint64_t)a3 searchFlags:(unint64_t)a4;
- (id)cellIteratorWithRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5;
- (id)cellIteratorWithRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5;
- (id)cellIteratorWithRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 clampingRange:(TSUCellRect)a6;
- (id)cellMapForRegion:(id)a3 uidBased:(BOOL)a4 suppressMergeContent:(BOOL)a5 useCategoriesWildcards:(BOOL)a6;
- (id)cellRangeName:(TSCERangeCoordinate)a3 usedSymbolicName:(BOOL *)a4;
- (id)cellRegionFromCellUIDList:(id)a3;
- (id)cellRegionFromCellUIDList:(id)a3 includeLabelsWithSummaries:(BOOL)a4 didAddLabels:(BOOL *)a5;
- (id)cellRegionFromCellUIDLookupList:(id)a3;
- (id)cellRegionFromCellUIDLookupList:(id)a3 includeLabelsWithSummaries:(BOOL)a4 didAddLabels:(BOOL *)a5;
- (id)cellRegionFromCellUIDRegion:(id)a3;
- (id)cellRegionWithConditionalStyleMatchingCell:(TSUCellCoord)a3;
- (id)cellStyleAtCellID:(TSUCellCoord)a3 isDefault:(BOOL *)a4;
- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfColumnAtIndex:(unsigned __int16)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfRowAtIndex:(unsigned int)a3 isDefault:(BOOL *)a4;
- (id)cellTractRefForUIDRectRef:(id)a3;
- (id)cellUIDListFromCellRegion:(id)a3;
- (id)cellUIDListFromCellRegion:(id)a3 useCategoriesWildcards:(BOOL)a4;
- (id)cellUIDRegionFromCellRegion:(id)a3;
- (id)cellValueFromCell:(id)a3 atCellID:(TSUCellCoord)a4;
- (id)cellValueViewStringAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4;
- (id)changeDescriptorsForReorganizingFromRowUids:(const void *)a3 toRowUids:(const void *)a4;
- (id)characterFillAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4;
- (id)childEnumerator;
- (id)childEnumeratorForUserFlags:(unint64_t)a3;
- (id)chromeLabelForCellID:(TSUCellCoord)a3;
- (id)chromeLabelForColumn:(unsigned __int16)a3;
- (id)chromeLabelForRow:(unsigned int)a3;
- (id)collapseSummaryGroupUIDs:(id)a3;
- (id)columnDisplayNameForCategoryLevel:(unsigned __int8)a3;
- (id)columnNameForCellID:(TSUCellCoord)a3 restrictToBodyRange:(BOOL)a4;
- (id)columnNameForColumnIndex:(unsigned __int16)a3;
- (id)columnNameForColumnIndex:(unsigned __int16)a3 withFallbackFormat:(id)a4;
- (id)commentHostingAtCellID:(TSUCellCoord)a3 forCommentStorage:(id)a4;
- (id)commentHostingAtCellID:(TSUCellCoord)a3 forCommentStorage:(id)a4 updateCommentMaps:(BOOL)a5;
- (id)compatibilityCheckerForData:(id)a3 associatedHint:(id)a4;
- (id)componentRootObject;
- (id)concurrentCellMapForRegion:(id)a3 suppressMergeContent:(BOOL)a4 gatherCellBorders:(BOOL)a5;
- (id)conditionalStyleSetAtCellID:(TSUCellCoord)a3;
- (id)createDetailTableForPivotTableCell:(TSUCellCoord)a3;
- (id)defaultCellStyleForCellID:(TSUCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)defaultCellStyleForTableStyleArea:(unint64_t)a3;
- (id)defaultTextStyleForCellID:(TSUCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)defaultTextStyleForTableStyleArea:(unint64_t)a3;
- (id)displayableDescriptiveName;
- (id)duplicateFilterSet;
- (id)duplicateFilterSetInUidForm;
- (id)expandCellRegionToCoverMergedCells:(id)a3;
- (id)expandSummaryGroupUIDs:(id)a3;
- (id)fillForColumn:(unsigned __int16)a3;
- (id)fillForRow:(unsigned int)a3;
- (id)filteringColumnNameForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (id)filteringColumnNameForColumnIndex:(unsigned __int16)a3;
- (id)filteringDisplayColumnNameForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (id)formulaAtCellID:(TSUCellCoord)a3;
- (id)geometryForRTLTableWithGeometry:(id)a3;
- (id)indexesForBodyAndFooterRows;
- (id)indexesForBodyRowsInGroupWithRowAtIndex:(unsigned int)a3;
- (id)indexesForCategoryColumns;
- (id)indexesForCategoryColumnsInRegion:(id)a3;
- (id)indexesForColumnsContainedByGroupUIDs:(id)a3;
- (id)indexesForGroupingColumns;
- (id)indexesForGroupingColumnsInRegion:(id)a3;
- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)a3 inRegion:(id)a4;
- (id)indexesForLabelRowsInRegion:(id)a3;
- (id)indexesForLabelRowsUpToGroupLevel:(unsigned __int8)a3 omitGroupsWithUids:(const void *)a4;
- (id)indexesForLeadingColumnsInRegion:(id)a3;
- (id)indexesForLeadingRowsInRegion:(id)a3;
- (id)indexesForNonSummaryBodyColumns;
- (id)indexesForNonSummaryBodyRows;
- (id)indexesForRowsContainedByGroupUIDs:(id)a3;
- (id)indexesForSummaryAndLabelRowsInRegion:(id)a3;
- (id)indexesForSummaryColumnsFromGroupLevel:(unsigned __int8)a3 toGroupLevel:(unsigned __int8)a4;
- (id)indexesForSummaryColumnsInRegion:(id)a3;
- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3 inRegion:(id)a4;
- (id)indexesForSummaryRowsFromGroupLevel:(unsigned __int8)a3 toGroupLevel:(unsigned __int8)a4;
- (id)indexesForSummaryRowsInRegion:(id)a3;
- (id)indexesForSummaryRowsUpToGroupLevel:(unsigned __int8)a3 omitGroupsWithUids:(const void *)a4;
- (id)indexesOfVisibleColumnsInCellRegion:(id)a3;
- (id)indexesOfVisibleColumnsInColumnRange:(id)a3;
- (id)indexesOfVisibleRowsInCellRegion:(id)a3;
- (id)indexesOfVisibleRowsInRowRange:(id)a3;
- (id)initAsDetailTableWithContext:(id)a3 sourcePivotTableInfo:(id)a4 pivotSourceCell:(TSUCellCoord)a5;
- (id)initForTestingWithContext:(id)a3 rows:(unsigned int)a4 columns:(unsigned int)a5;
- (id)initPivotTableWithContext:(id)a3 sourceTableInfo:(id)a4 sourceBodyRange:(TSUCellRect)a5 sourceHeaderRowRange:(_NSRange)a6 optionalDataModel:(id)a7;
- (id)labelValueViewStringAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4;
- (id)mappingForSortingColumns:(id)a3 withRules:(id)a4;
- (id)mappingForSortingRows:(id)a3 withRules:(id)a4;
- (id)mappingFromRowUids:(const void *)a3 toRowUids:(const void *)a4;
- (id)mergeActionForRegion:(id)a3;
- (id)mergeActionForRegion:(id)a3 nonOriginPartialsOnly:(BOOL)a4;
- (id)mergesIntersectingCellRegion:(id)a3;
- (id)mergesIntersectingRange:(TSUCellRect)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4;
- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5;
- (id)noRuleConditionalStyleSet;
- (id)objectForProperty:(int)a3;
- (id)p_cellRegionFromWildcardCellUIDs:()vector<TSKUIDStructCoord includeLabelsWithSummaries:(std:(BOOL)a4 :(BOOL *)a5 allocator<TSKUIDStructCoord>> *)a3 didAddLabels:;
- (id)p_fillResourceWithFilename:(id)a3;
- (id)p_layoutEngineCreateIfNeeded:(BOOL)a3;
- (id)p_mappingForSortingRowsOrColumns:(id)a3 withRules:(id)a4 dimension:(int64_t)a5;
- (id)peerCellRegionForCellRegion:(id)a3;
- (id)performActionReturningInverse:(id)a3 formulaReplacer:(id)a4;
- (id)pivotDataLocalizedColumnNameAtDataColumnIndex:(TSUModelColumnIndex)a3;
- (id)pivotHeaderColumnDisplayNameAtIndex:(unsigned __int16)a3;
- (id)pivotHeaderRowDisplayNameAtIndex:(unsigned int)a3;
- (id)pivotLeadingColumnDisplayNameAtIndex:(unsigned __int16)a3;
- (id)pivotLeadingRowDisplayNameAtIndex:(unsigned int)a3;
- (id)processRowsWithPendingGroupingChangesAndReturnAffectedCellRegion;
- (id)regionSubtractingCategoryColumnsAndRows:(id)a3;
- (id)removeReturningInverseForRegion:(id)a3;
- (id)replicateForReinsertion;
- (id)rowNameForCellID:(TSUCellCoord)a3 restrictToBodyRange:(BOOL)a4;
- (id)shrinkReturningInverseForRegion:(id)a3;
- (id)sortTagsForSortingColumns:(id)a3 byRows:(const void *)a4;
- (id)sortTagsForSortingRows:(id)a3 byColumns:(const void *)a4;
- (id)stringAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4;
- (id)strokeExporterReturningDefaultStrokes:(BOOL)a3;
- (id)strokeLayerForBottomOfRow:(unsigned int)a3;
- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)a3;
- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)a3;
- (id)strokeLayerForTopOfRow:(unsigned int)a3;
- (id)tableAreasForCellRange:(TSUCellRect)a3;
- (id)textStyleAtCellID:(TSUCellCoord)a3 isDefault:(BOOL *)a4;
- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4;
- (id)textStyleForCellWithEmptyStyleAtCellUID:(TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfColumnAtIndex:(unsigned __int16)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfRowAtIndex:(unsigned int)a3 isDefault:(BOOL *)a4;
- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4;
- (id)typeName;
- (int)getCell:(id)a3 atCellID:(TSUCellCoord)a4;
- (int)getCell:(id)a3 atCellID:(TSUCellCoord)a4 holdingReadLockWithAccessController:(id)a5;
- (int)getCell:(id)a3 atCellID:(TSUCellCoord)a4 suppressCellBorder:(BOOL)a5;
- (int)getCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4;
- (int)getCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 suppressCellBorder:(BOOL)a5;
- (int)getDefaultCell:(id)a3 forCellID:(TSUCellCoord)a4;
- (int)getValue:(id *)a3 atCellID:(TSUCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5;
- (int)maxStrokeOrder;
- (int)p_fillPropertyForStyle:(id)a3;
- (int)parseNumberFromTableName:(id)a3;
- (int)registerWithCalcEngine:(id)a3;
- (int)setCell:(id)a3 atCellCoord:(TSUCellCoord)a4;
- (int)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 ignoreFormula:(BOOL)a5 clearImportWarnings:(BOOL)a6;
- (int)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 ignoreFormula:(BOOL)a5 clearImportWarnings:(BOOL)a6 formulaReplacer:(id)a7;
- (int)setCellStyle:(id)a3 ofColumnAtUID:(const TSKUIDStruct *)a4;
- (int)setCellStyle:(id)a3 ofRowAtUID:(const TSKUIDStruct *)a4;
- (int)setCellsWithCellMap:(id)a3 ignoreFormulas:(BOOL)a4 skipDirtyingNonFormulaCells:(BOOL)a5;
- (int)setTextStyle:(id)a3 ofColumnAtUID:(const TSKUIDStruct *)a4;
- (int)setTextStyle:(id)a3 ofRowAtUID:(const TSKUIDStruct *)a4;
- (int)writingDirectionForCellwithTableDefault:(id)a3;
- (int64_t)contentWritingDirection;
- (int64_t)groupingArrowStateAtCellID:(TSUCellCoord)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)groupingColumnLevelCountForColumn:(unsigned __int16)a3;
- (unint64_t)pivotDataModelSizeClass;
- (unint64_t)pivotSizeClass;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)a3;
- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)a3 atGroupLevel:(unsigned __int8)a4;
- (unsigned)categoryColumnIndex;
- (unsigned)cellValueTypeAtCellID:(TSUCellCoord)a3;
- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)a3;
- (unsigned)columnIndexForGroupingColumn:(id)a3;
- (unsigned)groupLevelAtRow:(unsigned int)a3;
- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)a3;
- (unsigned)numberOfGroupLevelsShowingLabelsUnderGroupAtIndex:(unsigned int)a3;
- (unsigned)numberOfUserVisibleBodyRows;
- (unsigned)numberOfVisibleBaseBodyRows;
- (unsigned)numberOfVisibleBodyColumns;
- (unsigned)numberOfVisibleBodyRows;
- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableInfo *)self;
- (vector<TSUCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableInfo *)self;
- (vector<TSUCellRect,)mergeRangesIntersectingCellRegion:(TSTTableInfo *)self;
- (vector<TSUCellRect,)mergeRangesIntersectingRange:(TSTTableInfo *)self;
- (void)_correctAndCheckStateSuppressingAssertions:(BOOL)a3;
- (void)_setCellBordersFlatteningFromComplexInfo:(id)a3 sourceRegion:(id)a4;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)applyGroupingColumns:(id)a3;
- (void)applyPivotWithColumns:(id)a3 rows:(id)a4 aggregates:(id)a5 flatteningDimension:(int64_t)a6 optionsMap:(id)a7 pivotRowColumnRuleChangeUid:(TSKUIDStruct)a8 pivotAggregateRuleChangeUid:(TSKUIDStruct)a9;
- (void)applyWritingDirection:(int)a3 toCell:(id)a4 cellID:(TSUCellCoord)a5;
- (void)bakeFormulas;
- (void)chooseUniqueNameInContainer:(id)a3 forPaste:(BOOL)a4 needsNewName:(BOOL)a5 avoidNames:(id)a6;
- (void)clearPartitioner;
- (void)commitPivotChanges;
- (void)convertFormulasToUidForm:(id)a3 atCellID:(TSUCellCoord)a4 preserveHostCell:(BOOL)a5;
- (void)dealloc;
- (void)didReplaceTextsInStoragesWithPlaceHolderString;
- (void)dirtyFilterState;
- (void)enableFilterSet:(BOOL)a3;
- (void)enumerateCellStringsForRows:(unsigned int)a3 rowCount:(unsigned int)a4 usingBlock:(id)a5;
- (void)enumerateCellStringsUsingBlock:(id)a3;
- (void)enumerateMergesIntersectingCellRegion:(id)a3 usingBlock:(id)a4;
- (void)filterSetUpdated;
- (void)flattenGroupValuesIfNeededForCell:(id)a3 viewCellCoord:(TSUViewCellCoord)a4 summaryAndLabelRows:(id)a5 categoryColumns:(id)a6;
- (void)getTextPropertiesWithCell:(id)a3 cellID:(TSUCellCoord)a4 wraps:(BOOL *)a5 alignment:(int *)a6 verticalAlignment:(int *)a7 padding:(id *)a8;
- (void)importDeferredRemoveGroupingRowsAtIndexes:(id)a3;
- (void)insertColumnsAtIndex:(unsigned __int16)a3 count:(unsigned int)a4 addBefore:(BOOL)a5;
- (void)insertRowsAtIndex:(unsigned int)a3 count:(unsigned int)a4 addBefore:(BOOL)a5;
- (void)iterateCellsInRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 usingBlock:(id)a6;
- (void)iterateCellsInRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 clampingRange:(TSUCellRect)a6 usingBlock:(id)a7;
- (void)iterateCellsInRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 usingBlock:(id)a6;
- (void)iterateCellsWithFlags:(unint64_t)a3 searchFlags:(unint64_t)a4 usingBlock:(id)a5;
- (void)loadAllLazyReferences;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)markPrecedentsDirtyForSpillContentChange;
- (void)markPrecedentsDirtyForSpillMergeChange;
- (void)markSpillingErrorsAsDirty;
- (void)modifiedTextPropertiesForCategoryOrPivotCellAtCellID:(TSUCellCoord)a3 wraps:(BOOL *)a4 padding:(id *)a5 alignment:(int *)a6;
- (void)notifyTableOfNewResults;
- (void)p_bakeMixedCellStrokesIntoTable:(id)a3 outgoingTable:(id)a4 incomingTable:(id)a5 fraction:(double)a6;
- (void)p_initializeDefaultHeight:(double)a3 andWidth:(double)a4;
- (void)p_iterateCellsAndTerminateWithIterator:(id)a3 usingBlock:(id)a4;
- (void)p_performCommentStorageDOLC:(id)a3;
- (void)p_setFillOnCell:(id)a3 positive:(BOOL)a4;
- (void)p_setFilterSet:(id)a3;
- (void)p_setFormula:(id)a3 atCellID:(TSUCellCoord)a4;
- (void)p_setFormulaWithSymbolString:(id)a3 atCellID:(TSUCellCoord)a4;
- (void)p_setupTableModelforNewForm;
- (void)p_setupTableModelforStockSwatch;
- (void)p_updateStorageParentInfoForModels;
- (void)performReadForOneOffFormulaEvaluation:(id)a3 forCellCoord:(TSUCellCoord)a4;
- (void)prepareForPasteWithSourceOffset:(TSUColumnRowOffset)a3 bakeFormulas:(BOOL)a4;
- (void)rearrangeWithMapping:(id)a3;
- (void)reassignPasteboardCustomFormatKeys;
- (void)registerAllFormulasWithCalculationEngine:(id)a3 wasCrossDocumentPaste:(BOOL)a4 wasUndo:(BOOL)a5;
- (void)registerWithCalcEngineForDocumentLoad:(id)a3 ownerKind:(unsigned __int16)a4;
- (void)releaseLayoutEngine;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4 bakeForBadRefs:(BOOL)a5;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)resetArrayFormulasSpillingIntoRegion:(id)a3;
- (void)resetCategoriesGroupByForOwnerRemapping;
- (void)resetPivotOrder;
- (void)resetSpillingRangesInUIDRanges:(const void *)a3;
- (void)resetViewMap;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)scaleInfoGeometry:(CGSize)a3;
- (void)setAggregateType:(unsigned __int8)a3 forColumnUID:(TSKUIDStruct)a4 atGroupLevel:(unsigned __int8)a5;
- (void)setCategoryOrder:(id)a3;
- (void)setColumnRowUIDMap:(id)a3;
- (void)setContentWritingDirection:(int64_t)a3;
- (void)setDrawableIsBeingCopied:(BOOL)a3;
- (void)setFilterSet:(id)a3;
- (void)setFilterSetType:(int)a3;
- (void)setFormulaOwnerUIDsWithMap:(id)a3 shouldStealReferences:(BOOL)a4;
- (void)setHasReference:(BOOL)a3;
- (void)setInsertionCenterPosition:(CGPoint)a3;
- (void)setIsCategoryEnabled:(BOOL)a3;
- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)a3;
- (void)setPrimitiveGeometry:(id)a3;
- (void)setShouldUseWideRows:(BOOL)a3;
- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5;
- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6;
- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5;
- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6;
- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5;
- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6;
- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5;
- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6;
- (void)setStyleNetwork:(id)a3;
- (void)setSummaryModel:(id)a3;
- (void)setTableStyle:(id)a3;
- (void)setTableTranslatorBaseMapForPasteboard:(TSKUIDStructTract *)a3;
- (void)setTableTranslatorViewMapForPasteboard:(TSKUIDStructTract *)a3;
- (void)setupTableModelForPrototypeIndex:(int64_t)a3 forTableInsertOnly:(BOOL)a4;
- (void)shiftGeometryToIncludeTableNameHeight;
- (void)unregisterFromCalcEngine:(id)a3;
- (void)updateCalcEngineForTableSize;
- (void)updatePivotDataModel:(id)a3 pivotDataRefreshUID:(TSKUIDStruct)a4 pivotDataRefreshTimestamp:(double)a5 uidBodyTract:(TSKUIDStructTract *)a6;
- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)a3;
- (void)willClose;
@end

@implementation TSTTableInfo

+ (id)pivotTableNameForSourceTable:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_documentRoot(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_documentLocale(v8, v9, v10, v11, v12);

  v15 = sub_22113105C(v13, v14);
  v16 = MEMORY[0x277CCACA8];
  v21 = objc_msgSend_tableName(v3, v17, v18, v19, v20);
  v25 = objc_msgSend_stringWithFormat_(v16, v22, v15, v23, v24, v21);

  return v25;
}

- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 rows:(unsigned int)a5 columns:(unsigned int)a6 stylePreset:(id)a7 styles:(id)a8
{
  v10 = *&a6;
  v11 = *&a5;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v135.receiver = self;
  v135.super_class = TSTTableInfo;
  v18 = [(TSTTableInfo *)&v135 initWithContext:v14 geometry:v15];
  v23 = v18;
  if (v18)
  {
    v24 = objc_alloc(objc_msgSend_tableModelClass(v18, v19, v20, v21, v22));
    v26 = objc_msgSend_initWithContext_rows_columns_styles_stylePreset_tableInfo_(v24, v25, v14, v11, v10, v17, v16, v23);
    v27 = *(v23 + 200);
    *(v23 + 200) = v26;

    v28 = *(v23 + 240);
    *(v23 + 240) = 0;

    v33 = objc_msgSend_columnRowUIDMap(*(v23 + 200), v29, v30, v31, v32);
    v34 = *(v23 + 296);
    *(v23 + 296) = v33;

    v35 = [TSTSummaryModel alloc];
    v39 = objc_msgSend_initWithTableInfo_(v35, v36, v23, v37, v38);
    v40 = *(v23 + 248);
    *(v23 + 248) = v39;

    v41 = [TSTCategoryOrder alloc];
    v45 = objc_msgSend_initWithTableInfo_(v41, v42, v23, v43, v44);
    v46 = *(v23 + 304);
    *(v23 + 304) = v45;

    v51 = objc_msgSend_baseTableModel(v23, v47, v48, v49, v50);
    v56 = objc_msgSend_categoryOwner(v51, v52, v53, v54, v55);

    v60 = objc_msgSend_groupByForOwnerIndex_(v56, v57, 8, v58, v59);
    v61 = *(v23 + 256);
    *(v23 + 256) = v60;

    if (!*(v23 + 256))
    {
      v62 = [TSTGroupBy alloc];
      v65 = objc_msgSend_initWithGroupings_categoryOwner_(v62, v63, MEMORY[0x277CBEBF8], v56, v64);
      v66 = *(v23 + 256);
      *(v23 + 256) = v65;

      objc_msgSend_linkGroupBy_(v56, v67, *(v23 + 256), v68, v69);
    }

    v70 = objc_alloc_init(TSCEMutableUIDSet);
    v71 = *(v23 + 264);
    *(v23 + 264) = v70;

    v72 = [TSTHiddenStates alloc];
    v77 = objc_msgSend_hiddenStatesOwner(*(v23 + 200), v73, v74, v75, v76);
    v81 = objc_msgSend_initWithHiddenStatesOwner_(v72, v78, v77, v79, v80);
    v82 = *(v23 + 328);
    *(v23 + 328) = v81;

    v83 = [TSTTableTranslator alloc];
    v87 = objc_msgSend_initWithTableInfo_(v83, v84, v23, v85, v86);
    v88 = *(v23 + 336);
    *(v23 + 336) = v87;

    v93 = objc_msgSend_translator(v23, v89, v90, v91, v92);
    objc_msgSend_addReceiverToGroupBy_(v93, v94, *(v23 + 256), v95, v96);

    objc_msgSend_p_updateStorageParentInfoForModels(v23, v97, v98, v99, v100);
    v105 = objc_msgSend_summaryModel(v23, v101, v102, v103, v104);
    objc_msgSend_setupReceiver(v105, v106, v107, v108, v109);

    objc_msgSend_setTableModel_(*(v23 + 328), v110, *(v23 + 200), v111, v112);
    v113 = [TSTTablePartitioner alloc];
    v117 = objc_msgSend_initWithInfo_(v113, v114, v23, v115, v116);
    v118 = *(v23 + 232);
    *(v23 + 232) = v117;

    objc_msgSend_size(v15, v119, v120, v121, v122);
    v124 = v123;
    objc_msgSend_size(v15, v125, v126, v127, v128);
    objc_msgSend_p_initializeDefaultHeight_andWidth_(v23, v129, v130, v131, v132, v124, v133);
  }

  return v23;
}

- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 rows:(unsigned int)a5 columns:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  v16 = objc_msgSend_documentRoot(v10, v12, v13, v14, v15);
  v21 = objc_msgSend_theme(v16, v17, v18, v19, v20);
  v24 = objc_msgSend_presetOfKind_index_(v21, v22, *MEMORY[0x277D80BA8], 0, v23);
  v25 = TSUDynamicCast();

  if (!v25)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTTableInfo initWithContext:geometry:rows:columns:]", v27, v28);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 453, 0, "invalid nil value for '%{public}s'", "stylePreset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  v40 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v26, v10, v11, v7, v6, v25, 0);

  return v40;
}

- (id)initForTestingWithContext:(id)a3 rows:(unsigned int)a4 columns:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x277D802E8]);
  v14 = objc_msgSend_initWithPosition_size_(v9, v10, v11, v12, v13, 0.0, 0.0, 100.0, 200.0);
  v79.receiver = self;
  v79.super_class = TSTTableInfo;
  v16 = [(TSTTableInfo *)&v79 initWithContext:v8 geometry:v14];
  if (v16)
  {
    v17 = objc_msgSend_networkWithContext_presetID_colors_alternate_(TSTTableStyleNetwork, v15, v8, 0, 0, 2);
    v22 = objc_alloc(objc_msgSend_tableModelClass(v16, v18, v19, v20, v21));
    v24 = objc_msgSend_initWithContext_rows_columns_styles_stylePreset_tableInfo_(v22, v23, v8, v6, v5, v17, 0, v16);
    v25 = *(v16 + 25);
    *(v16 + 25) = v24;

    v26 = *(v16 + 30);
    *(v16 + 30) = 0;

    v27 = [TSTSummaryModel alloc];
    v31 = objc_msgSend_initWithTableInfo_(v27, v28, v16, v29, v30);
    v32 = *(v16 + 31);
    *(v16 + 31) = v31;

    v33 = [TSTCategoryOrder alloc];
    v37 = objc_msgSend_initWithTableInfo_(v33, v34, v16, v35, v36);
    v38 = *(v16 + 38);
    *(v16 + 38) = v37;

    v43 = objc_msgSend_baseTableModel(v16, v39, v40, v41, v42);
    v48 = objc_msgSend_categoryOwner(v43, v44, v45, v46, v47);

    v52 = objc_msgSend_groupByForOwnerIndex_(v48, v49, 8, v50, v51);
    v53 = *(v16 + 32);
    *(v16 + 32) = v52;

    if (!*(v16 + 32))
    {
      v54 = [TSTGroupBy alloc];
      v57 = objc_msgSend_initWithGroupings_categoryOwner_(v54, v55, MEMORY[0x277CBEBF8], v48, v56);
      v58 = *(v16 + 32);
      *(v16 + 32) = v57;

      objc_msgSend_linkGroupBy_(v48, v59, *(v16 + 32), v60, v61);
    }

    v62 = [TSTTableTranslator alloc];
    v66 = objc_msgSend_initWithTableInfo_(v62, v63, v16, v64, v65);
    v67 = *(v16 + 42);
    *(v16 + 42) = v66;

    v68 = [TSTTablePartitioner alloc];
    v72 = objc_msgSend_initWithInfo_(v68, v69, v16, v70, v71);
    v73 = *(v16 + 29);
    *(v16 + 29) = v72;

    objc_msgSend_p_updateStorageParentInfoForModels(v16, v74, v75, v76, v77);
  }

  return v16;
}

- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo initWithContext:geometry:]", a4, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 499, 0, "call - (instancetype) initWithContext: (TSPObjectContext *) context geometry: (TSDInfoGeometry *) geometry styles:(TSTTableStyleNetwork *)styles please");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (TSTTableInfo)initWithContext:(id)a3 otherTableInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_geometry(v7, v8, v9, v10, v11);
  v25.receiver = self;
  v25.super_class = TSTTableInfo;
  v13 = [(TSTTableInfo *)&v25 initWithContext:v6 geometry:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_tableModel, v7[25]);
    v14 = [TSTTablePartitioner alloc];
    v18 = objc_msgSend_initWithInfo_(v14, v15, v13, v16, v17);
    partitioner = v13->_partitioner;
    v13->_partitioner = v18;

    layoutEngine = v13->_layoutEngine;
    v13->_layoutEngine = 0;

    objc_msgSend_setStorageParentToInfo_(v13->_tableModel, v21, v13, v22, v23);
  }

  return v13;
}

- (id)initPivotTableWithContext:(id)a3 sourceTableInfo:(id)a4 sourceBodyRange:(TSUCellRect)a5 sourceHeaderRowRange:(_NSRange)a6 optionalDataModel:(id)a7
{
  length = a6.length;
  location = a6.location;
  v216 = a5;
  v209 = a3;
  v11 = a4;
  v212 = a7;
  if (TSUCellRect::isValid(&v216))
  {
    v16 = [TSCECellTractRef alloc];
    *&__p = objc_msgSend_tableUID(v11, v17, v18, v19, v20);
    __p._singleRange._begin = v21;
    TSCERangeRef::TSCERangeRef(&v215, &v216, &__p);
    v25 = objc_msgSend_initWithRangeRef_(v16, v22, &v215, v23, v24);
    v30 = objc_msgSend_translator(v11, v26, v27, v28, v29);
    v211 = objc_msgSend_baseTractRefForViewTractRef_(v30, v31, v25, v32, v33);
  }

  else
  {
    v211 = 0;
  }

  if (location == *MEMORY[0x277D81490] && length == *(MEMORY[0x277D81490] + 8))
  {
    v210 = 0;
  }

  else
  {
    v217.location = location;
    v217.length = length;
    TSUIndexRange::TSUIndexRange(&__p, v217);
    TSUIndexSet::TSUIndexSet(&v215, &__p);
    v213 = vdupq_n_s64(0x7FFFuLL);
    TSUIndexSet::TSUIndexSet(&__p, &v213);
    v35 = [TSCECellTractRef alloc];
    v213._begin = objc_msgSend_tableUID(v11, v36, v37, v38, v39);
    v213._end = v40;
    v41 = objc_msgSend_initWithColumns_rows_tableUID_(v35, v40, &__p, &v215, &v213);
    v46 = objc_msgSend_translator(v11, v42, v43, v44, v45);
    v210 = objc_msgSend_baseTractRefForViewTractRef_(v46, v47, v41, v48, v49);

    TSUIndexSet::~TSUIndexSet(&__p);
    TSUIndexSet::~TSUIndexSet(&v215);
  }

  if (v212)
  {
    v50 = objc_msgSend_tableStylePreset(v212, v12, v13, v14, v15);
    v55 = objc_msgSend_styleNetwork(v50, v51, v52, v53, v54);
  }

  else
  {
    v56 = v11;
    v50 = objc_msgSend_tableStylePreset(v56, v57, v58, v59, v60);
    v64 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v61, v56, v62, v63);
    v55 = objc_msgSend_networkForPivotTables(v64, v65, v66, v67, v68);
  }

  v69 = objc_alloc(MEMORY[0x277D802E8]);
  v208 = objc_msgSend_initWithPosition_size_(v69, v70, v71, v72, v73, 0.0, 0.0, 250.0, 120.0);
  v75 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v74, v209, v208, 10, 6, v50, v55);
  v79 = v75;
  if (v75)
  {
    *(v75 + 220) = 1;
    v80 = objc_msgSend_pivotTableNameForSourceTable_(TSTTableInfo, v76, v11, v77, v78);
    objc_msgSend_setTableName_(v79, v81, v80, v82, v83);

    objc_msgSend_setDefaultColumnWidth_(v79, v84, v85, v86, v87, 80.0);
    v92 = objc_msgSend_exteriorTextWrap(v11, v88, v89, v90, v91);
    objc_msgSend_setExteriorTextWrap_(v79, v93, v92, v94, v95);

    v100 = objc_msgSend_summaryModel(v79, v96, v97, v98, v99);
    objc_msgSend_setCategoryColumnWidth_(v100, v101, v102, v103, v104, 80.0);

    v105 = [TSTPivotTranslator alloc];
    v109 = objc_msgSend_initWithTableInfo_(v105, v106, v79, v107, v108);
    v110 = *(v79 + 336);
    *(v79 + 336) = v109;

    v111 = [TSTColumnRowUIDMap alloc];
    v116 = objc_msgSend_context(v79, v112, v113, v114, v115);
    memset(&v215, 0, 24);
    memset(&__p, 0, 24);
    v118 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v111, v117, v116, &v215, &__p);
    v119 = *(v79 + 296);
    *(v79 + 296) = v118;

    if (*&__p)
    {
      __p._singleRange._begin = __p;
      operator delete(*&__p);
    }

    if (*&v215)
    {
      v215._singleRange._begin = v215;
      operator delete(*&v215);
    }

    v124 = [TSTTableModel alloc];
    v125 = v212;
    if (!v212)
    {
      v125 = objc_msgSend_baseTableModel(v11, v120, v121, v122, v123);
    }

    inited = objc_msgSend_initAsPivotDataWithContext_tableInfo_sourceModel_sourceBody_sourceHeader_(v124, v120, v209, v79, v125, v211, v210);
    v127 = *(v79 + 312);
    *(v79 + 312) = inited;

    if (!v212)
    {
    }

    objc_msgSend_setStyleNetwork_(*(v79 + 312), v128, v55, v129, v130);
    v131 = [TSTPivotRowColumnOrder alloc];
    v135 = objc_msgSend_initWithTableInfo_(v131, v132, v79, v133, v134);
    v136 = *(v79 + 320);
    *(v79 + 320) = v135;

    v141 = objc_msgSend_baseTableModel(v79, v137, v138, v139, v140);
    v146 = objc_msgSend_createPivotOwner(v141, v142, v143, v144, v145);

    v151 = objc_msgSend_tableUID(v11, v147, v148, v149, v150);
    objc_msgSend_setPivotSourceTableUID_(v146, v152, v151, v152, v153);
    v158 = objc_msgSend_tableName(v11, v154, v155, v156, v157);
    objc_msgSend_setPivotSourceTableName_(v146, v159, v158, v160, v161);

    v162 = TSKMakeUIDStructRandom();
    objc_msgSend_setPivotDataRefreshUID_(v146, v163, v162, v163, v164);
    v165 = objc_opt_new();
    objc_msgSend_timeIntervalSinceReferenceDate(v165, v166, v167, v168, v169);
    objc_msgSend_setPivotDataRefreshTimestamp_(v146, v170, v171, v172, v173);

    if (v211)
    {
      objc_msgSend_setPreserveFlags_(v211, v174, 15, v175, v176);
      objc_msgSend_setPivotSourceBodyTract_(v146, v177, v211, v178, v179);
    }

    if (v210)
    {
      objc_msgSend_setPreserveFlags_(v210, v174, 15, v175, v176);
      objc_msgSend_setPivotSourceHeaderTract_(v146, v180, v210, v181, v182);
    }

    v183 = objc_alloc_init(TSTGroupingColumnList);
    v184 = objc_alloc_init(TSTGroupingColumnList);
    v185 = [TSTColumnAggregateList alloc];
    v189 = objc_msgSend_initWithColumnAggregates_(v185, v186, MEMORY[0x277CBEBF8], v187, v188);
    v190 = TSKMakeUIDStructRandom();
    v192 = v191;
    v193 = TSKMakeUIDStructRandom();
    objc_msgSend_applyPivotWithColumns_rows_aggregates_flatteningDimension_optionsMap_pivotRowColumnRuleChangeUid_pivotAggregateRuleChangeUid_(v79, v194, v183, v184, v189, 1, 0, v190, v192, v193, v194);

    objc_msgSend_resetCellsForNewPivotRules(v79, v195, v196, v197, v198);
    objc_msgSend_commitPivotChanges(v79, v199, v200, v201, v202);
    objc_msgSend_p_updateStorageParentInfoForModels(v79, v203, v204, v205, v206);
  }

  return v79;
}

- (BOOL)hasUsefulPivotSourceCellsInBodyRange:(TSUCellRect)a3
{
  v35 = a3;
  if (TSUCellRect::isValid(&v35))
  {
    v7 = [TSCECellTractRef alloc];
    v33._lower = objc_msgSend_tableUID(self, v8, v9, v10, v11);
    v33._upper = v12;
    TSCERangeRef::TSCERangeRef(&v34, &v35, &v33);
    v16 = objc_msgSend_initWithRangeRef_(v7, v13, &v34, v14, v15);
    v21 = objc_msgSend_translator(self, v17, v18, v19, v20);
    v25 = objc_msgSend_baseTractRefForViewTractRef_(v21, v22, v16, v23, v24);

    v26 = v25;
    hasUsefulPivotDataInSourceBodyTract = objc_msgSend_hasUsefulPivotDataInSourceBodyTract_(self->_tableModel, v27, v25, v28, v29);
  }

  else
  {
    v26 = 0;
    hasUsefulPivotDataInSourceBodyTract = objc_msgSend_hasUsefulPivotDataInSourceBodyTract_(self->_tableModel, v4, 0, v5, v6);
  }

  v31 = hasUsefulPivotDataInSourceBodyTract;

  return v31;
}

- (id)initAsDetailTableWithContext:(id)a3 sourcePivotTableInfo:(id)a4 pivotSourceCell:(TSUCellCoord)a5
{
  v163 = a3;
  v8 = a4;
  if ((objc_msgSend_isAPivotTable(v8, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableInfo initAsDetailTableWithContext:sourcePivotTableInfo:pivotSourceCell:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 648, 0, "Expect only pivotTable to be passed in.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_tableStylePreset(v8, v13, v14, v15, v16);
  v33 = objc_msgSend_styleNetwork(v28, v29, v30, v31, v32);
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v8;
  }

  v36 = v35;

  v160 = v36;
  v162 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v37, v36, v38, v39);
  v40 = objc_alloc(MEMORY[0x277D802E8]);
  v161 = objc_msgSend_initWithPosition_size_(v40, v41, v42, v43, v44, 0.0, 0.0, 250.0, 120.0);
  v49 = objc_msgSend_pivotDataModel(v8, v45, v46, v47, v48);
  v169.length = objc_msgSend_numberOfColumns(v49, v50, v51, v52, v53);
  v169.location = 0;
  TSUIndexRange::TSUIndexRange(&v167, v169);
  TSUIndexSet::TSUIndexSet(&v168, &v167);
  TSUIndexSet::TSUIndexSet(&v167);
  if (a5.row != 0x7FFFFFFF && (*&a5 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v165 = 0;
    v166 = 0u;
    if (v8)
    {
      objc_msgSend_cellUIDForCellID_(v8, v54, *&a5, v56, v57);
    }

    v58 = objc_msgSend_pivotOwner(v8, v54, v55, v56, v57);
    v63 = objc_msgSend_groupBySet(v58, v59, v60, v61, v62);
    v68 = v63;
    if (v63)
    {
      objc_msgSend_pivotDataModelRowIndexesNeededForCell_(v63, v64, &v165, v66, v67);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v164);
    }

    v69 = objc_msgSend_hiddenStates(v68, v64, v65, v66, v67);
    v74 = v69;
    if (v69)
    {
      v75 = objc_msgSend_hiddenRowIndexes(v69, v70, v71, v72, v73);
      MEMORY[0x223D9F7A0](&v164, v75);
      TSUIndexSet::removeIndexes(&v167, &v164);
      TSUIndexSet::~TSUIndexSet(&v164);
    }
  }

  v165._begin = objc_msgSend_headerRowRange(v49, v54, v55, v56, v57);
  v165._end = v76;
  v77 = TSUCellRect::rows(&v165);
  v79 = v78;
  v165._begin = objc_msgSend_footerRowRange(v49, v78, v80, v81, v82);
  v165._end = v83;
  v84 = TSUCellRect::rows(&v165);
  v86 = v85;
  if (v79)
  {
    v170.location = v77;
    v170.length = v79;
    TSUIndexRange::TSUIndexRange(&v165, v170);
    TSUIndexSet::addIndexesInRange(&v167, &v165);
  }

  if (v86)
  {
    v171.location = v84;
    v171.length = v86;
    TSUIndexRange::TSUIndexRange(&v165, v171);
    TSUIndexSet::addIndexesInRange(&v167, &v165);
  }

  v87 = TSUIndexSet::count(&v168);
  v88 = TSUIndexSet::count(&v167);
  if (v87 <= 1)
  {
    v90 = 1;
  }

  else
  {
    v90 = v87;
  }

  if (v88 <= 1)
  {
    v91 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v89, v163, v161, 1, v90, v28, v162);
  }

  else
  {
    v91 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v89, v163, v161, v88, v90, v28, v162);
  }

  v96 = v91;
  if (v91)
  {
    v97 = objc_msgSend_numberOfHeaderColumns(v49, v92, v93, v94, v95);
    objc_msgSend_setNumberOfHeaderColumns_(v96, v98, v97, v99, v100);
    v105 = objc_msgSend_numberOfHeaderRows(v49, v101, v102, v103, v104);
    objc_msgSend_setNumberOfHeaderRows_(v96, v106, v105, v107, v108);
    v113 = objc_msgSend_numberOfFooterRows(v49, v109, v110, v111, v112);
    objc_msgSend_setNumberOfFooterRows_(v96, v114, v113, v115, v116);
    objc_msgSend_setDefaultColumnWidth_(v96, v117, v118, v119, v120, 80.0);
    v125 = objc_msgSend_exteriorTextWrap(v8, v121, v122, v123, v124);
    objc_msgSend_setExteriorTextWrap_(v96, v126, v125, v127, v128);

    v133 = objc_msgSend_contentWritingDirection(v8, v129, v130, v131, v132);
    objc_msgSend_setContentWritingDirection_(v96, v134, v133, v135, v136);
    v137 = TSUIndexSet::asNSIndexSet(&v168);
    v138 = TSUIndexSet::asNSIndexSet(&v167);
    v139 = objc_opt_new();
    v140 = [TSCEColumnRowIndexMapper alloc];
    inited = objc_msgSend_initAsCompressionMapForIndexes_(v140, v141, v138, v142, v143);
    v147 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v145, v137, v138, v146);
    v150 = objc_msgSend_pivotDetailTableNameFromSourcePivotTableInfo_pivotSourceCell_(TSTTableInfo, v148, v8, *&a5, v149);
    objc_msgSend_setTableName_(v96, v151, v150, v152, v153);

    objc_msgSend_copyPivotDetailDataFromSourceModel_inSourceRegion_columnMapping_rowMapping_(v96[25], v154, v49, v147, v139, inited);
    objc_msgSend_p_updateStorageParentInfoForModels(v96, v155, v156, v157, v158);
  }

  TSUIndexSet::~TSUIndexSet(&v167);
  TSUIndexSet::~TSUIndexSet(&v168);

  return v96;
}

- (TSTTableInfo)initWithContext:(id)a3 fromSourceInfo:(id)a4 cellRegion:(id)a5 waitForCalcEngine:(BOOL)a6 flattenCategories:(int64_t)a7 isSnapshot:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v21 = objc_msgSend_range(v15, v17, v18, v19, v20);
  v24 = objc_msgSend_regionByIntersectingRange_(v16, v22, v21, v22, v23);

  if (v8)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_isCategorized(v15, v25, v26, v27, v28))
  {
    if (a7)
    {
LABEL_4:
      v29 = objc_msgSend_boundingCellRange(v24, v25, v26, v27, v28);
      objc_msgSend_boundingCellRange(v24, v30, v31, v32, v33);
      v36 = v34 + WORD2(v29);
      if (v36 >= 0x3E8)
      {
        v36 = 1000;
      }

      v37 = HIDWORD(v34) + v29;
      if ((HIDWORD(v34) + v29) >= 0xF4240)
      {
        v37 = 1000000;
      }

      v38 = objc_msgSend_regionByIntersectingRange_(v24, v34, v29, (v36 - WORD2(v29)) | ((v37 - v29) << 32), v35);
      v40 = objc_msgSend__initWithContext_flatteningFromComplexInfo_cellRegion_waitForCalcEngine_flatteningOptions_isSnapshot_(self, v39, v14, v15, v38, v10, a7, v8);

      goto LABEL_17;
    }
  }

  else
  {
    isAPivotTable = objc_msgSend_isAPivotTable(v15, v25, v26, v27, v28);
    if (a7)
    {
      v42 = isAPivotTable;
    }

    else
    {
      v42 = 0;
    }

    if (v42)
    {
      goto LABEL_4;
    }
  }

  if ((objc_msgSend_isCategorized(v15, v25, v26, v27, v28) & 1) != 0 || objc_msgSend_isAPivotTable(v15, v43, v44, v45, v46))
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTTableInfo initWithContext:fromSourceInfo:cellRegion:waitForCalcEngine:flattenCategories:isSnapshot:]", v45, v46);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 878, 0, "Copying a categorized table without flattening. If you know how you got here, please write a bug.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  v40 = objc_msgSend__initWithContext_fromSourceInfo_cellRegion_tableModel_waitForCalcEngine_formulaCoordSpace_(self, v43, v14, v15, v24, 0, v10, a7);
LABEL_17:

  return v40;
}

- (id)_initWithContext:(id)a3 flatteningFromComplexInfo:(id)a4 cellRegion:(id)a5 waitForCalcEngine:(BOOL)a6 flatteningOptions:(int64_t)a7 isSnapshot:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v21 = objc_msgSend_geometry(v15, v17, v18, v19, v20);
  v122.receiver = self;
  v122.super_class = TSTTableInfo;
  v22 = [(TSTTableInfo *)&v122 initWithContext:v14 geometry:v21];

  if (v22)
  {
    v27 = objc_msgSend_exteriorTextWrap(v15, v23, v24, v25, v26);
    v106 = v14;
    objc_msgSend_setExteriorTextWrap_(v22, v28, v27, v29, v30);

    if (!a8)
    {
      v35 = objc_msgSend_expandCellRegionToCoverMergedCells_(v15, v31, v16, v33, v34);

      v16 = v35;
    }

    v105 = objc_msgSend_baseTableModel(v15, v31, v32, v33, v34);
    v40 = objc_msgSend_boundingCellRange(v16, v36, v37, v38, v39);
    v42 = v41;
    v102 = a8;
    v101 = v41;
    v52 = objc_msgSend_isRectangle(v16, v41, v43, v44, v45) && (v50 = objc_msgSend_range(v15, v46, v47, v48, v49), v40 == v50) && ((v50 ^ v40) & 0x101FFFF00000000) == 0 && v42 == v51;
    v22->_formulaCoordSpace = a7;
    v103 = v16;
    v57 = objc_msgSend_boundingCellRange(v103, v53, v54, v55, v56);
    v59 = v58;
    v60 = a6;
    v104 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v58, v105, v61, v62);
    v63 = [TSTTableModel alloc];
    v68 = objc_msgSend_tableStylePreset(v105, v64, v65, v66, v67);
    v70 = objc_msgSend_initWithContext_rows_columns_styles_stylePreset_tableInfo_(v63, v69, v106, HIDWORD(v59), v59, v104, v68, v22);

    objc_msgSend_setStorageParentToInfo_(v70, v71, v22, v72, v73, v70);
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = sub_2210F5F10;
    v107[3] = &unk_27845ECD8;
    v74 = v105;
    v108 = v74;
    v75 = v70;
    v109 = v75;
    v119 = v60;
    v110 = v15;
    v115 = v57;
    v116 = v59;
    v120 = v52;
    v111 = v103;
    v76 = v22;
    v112 = v76;
    v77 = v111;
    v113 = v77;
    v121 = v102;
    v114 = v106;
    v117 = v40;
    v118 = v101;
    objc_msgSend_performBlockIgnoringModifications_(v76, v78, v107, v79, v80);
    if ((objc_msgSend_isCategorized(v76, v81, v82, v83, v84) & 1) != 0 || objc_msgSend_isAPivotTable(v76, v85, v86, v87, v88))
    {
      v89 = MEMORY[0x277D81150];
      v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSTTableInfo _initWithContext:flatteningFromComplexInfo:cellRegion:waitForCalcEngine:flatteningOptions:isSnapshot:]", v87, v88);
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v92, v93);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v95, v90, v94, 1427, 0, "not expecting categorized or pivot table");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99);
    }

    v16 = v77;
    v14 = v106;
  }

  return v22;
}

- (id)_initWithContext:(id)a3 fromSourceInfo:(id)a4 cellRegion:(id)a5 tableModel:(id)a6 waitForCalcEngine:(BOOL)a7 formulaCoordSpace:(int64_t)a8
{
  v9 = a7;
  v248 = *MEMORY[0x277D85DE8];
  v230 = a3;
  v14 = a4;
  v15 = a5;
  v229 = a6;
  v20 = objc_msgSend_geometry(v14, v16, v17, v18, v19);
  v246.receiver = self;
  v246.super_class = TSTTableInfo;
  v21 = [(TSTTableInfo *)&v246 initWithContext:v230 geometry:v20];

  if (v21)
  {
    v26 = objc_msgSend_exteriorTextWrap(v14, v22, v23, v24, v25);
    objc_msgSend_setExteriorTextWrap_(v21, v27, v26, v28, v29);

    v231 = objc_msgSend_expandCellRegionToCoverMergedCells_(v14, v30, v15, v31, v32);

    v21->_formulaCoordSpace = a8;
    v41 = objc_alloc(objc_msgSend_tableModelClass(v21, v33, v34, v35, v36));
    v42 = v229;
    if (!v229)
    {
      v42 = objc_msgSend_baseTableModel(v14, v37, v38, v39, v40);
    }

    v43 = objc_msgSend_initWithContext_fromSourceModel_region_tableInfo_waitForCalcEngine_formulaCoordSpace_(v41, v37, v230, v42, v231, v21, v9, v21->_formulaCoordSpace);
    tableModel = v21->_tableModel;
    v21->_tableModel = v43;

    if (!v229)
    {
    }

    v227 = objc_msgSend_baseTableModel(v14, v45, v46, v47, v48);
    v53 = objc_msgSend_boundingCellRange(v231, v49, v50, v51, v52);
    v55 = v54;
    v226 = objc_msgSend_isRectangle(v231, v54, v56, v57, v58) && (v63 = objc_msgSend_range(v227, v59, v60, v61, v62), v53 == v63) && ((v63 ^ v53) & 0x101FFFF00000000) == 0 && v55 == v59;
    v64 = objc_msgSend_hiddenStatesOwner(v21->_tableModel, v59, v60, v61, v62);
    objc_msgSend_setTableModel_(v64, v65, v21->_tableModel, v66, v67);

    v68 = [TSTHiddenStates alloc];
    v73 = objc_msgSend_hiddenStatesOwner(v21->_tableModel, v69, v70, v71, v72);
    v77 = objc_msgSend_initWithHiddenStatesOwner_(v68, v74, v73, v75, v76);
    hiddenStates = v21->_hiddenStates;
    v21->_hiddenStates = v77;

    objc_msgSend_setTableModel_(v21->_hiddenStates, v79, v21->_tableModel, v80, v81);
    v82 = [TSTTablePartitioner alloc];
    v86 = objc_msgSend_initWithInfo_(v82, v83, v21, v84, v85);
    partitioner = v21->_partitioner;
    v21->_partitioner = v86;

    layoutEngine = v21->_layoutEngine;
    v21->_layoutEngine = 0;

    v245[0] = 0;
    v245[1] = v245;
    v245[2] = 0x2020000000;
    v245[3] = 0;
    v244[0] = 0;
    v244[1] = v244;
    v244[2] = 0x2020000000;
    v244[3] = 0;
    v242 = objc_msgSend_range(v21->_tableModel, v89, v90, v91, v92);
    v243 = v93;
    v239[0] = MEMORY[0x277D85DD0];
    v239[1] = 3221225472;
    v239[2] = sub_2210F938C;
    v239[3] = &unk_27845EC88;
    v241 = v245;
    v94 = v21;
    v240 = v94;
    sub_22109D0C8(&v242, v239);
    v242 = objc_msgSend_range(v21->_tableModel, v95, v96, v97, v98);
    v243 = v99;
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 3221225472;
    v236[2] = sub_2210F93DC;
    v236[3] = &unk_27845ECB0;
    v238 = v244;
    v100 = v94;
    v237 = v100;
    sub_22109D1B8(&v242, v236);
    v101 = objc_alloc(MEMORY[0x277D802E8]);
    v106 = objc_msgSend_geometry(v14, v102, v103, v104, v105);
    objc_msgSend_position(v106, v107, v108, v109, v110);
    v228 = objc_msgSend_initWithPosition_size_(v101, v111, v112, v113, v114);

    objc_msgSend_setPrimitiveGeometry_(v100, v115, v228, v116, v117);
    v122 = objc_msgSend_columnRowUIDMap(v21->_tableModel, v118, v119, v120, v121);
    columnRowUIDMap = v100->_columnRowUIDMap;
    v100->_columnRowUIDMap = v122;

    v124 = [TSTSummaryModel alloc];
    v128 = objc_msgSend_initWithTableInfo_(v124, v125, v100, v126, v127);
    summaryModel = v100->_summaryModel;
    v100->_summaryModel = v128;

    v130 = [TSTCategoryOrder alloc];
    v134 = objc_msgSend_initWithTableInfo_(v130, v131, v100, v132, v133);
    categoryOrder = v100->_categoryOrder;
    v100->_categoryOrder = v134;

    v140 = objc_msgSend_baseTableModel(v100, v136, v137, v138, v139);
    v145 = objc_msgSend_categoryOwner(v140, v141, v142, v143, v144);

    v149 = objc_msgSend_groupByForOwnerIndex_(v145, v146, 8, v147, v148);
    groupBy = v100->_groupBy;
    v100->_groupBy = v149;

    if (!v100->_groupBy)
    {
      v151 = [TSTGroupBy alloc];
      v154 = objc_msgSend_initWithGroupings_categoryOwner_(v151, v152, MEMORY[0x277CBEBF8], v145, v153);
      v155 = v100->_groupBy;
      v100->_groupBy = v154;

      objc_msgSend_linkGroupBy_(v145, v156, v100->_groupBy, v157, v158);
    }

    v159 = [TSTTableTranslator alloc];
    v163 = objc_msgSend_initWithTableInfo_(v159, v160, v100, v161, v162);
    translator = v100->_translator;
    v100->_translator = v163;

    v169 = objc_msgSend_hiddenStates(v14, v165, v166, v167, v168);
    objc_msgSend_copyFromHiddenStates_forRange_withContext_isWholeTableCopy_(v21->_hiddenStates, v170, v169, v53, v55, v230, v226);
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v175 = objc_msgSend_allRichTextStorages(v100, v171, v172, v173, v174);
    v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v176, &v232, v247, 16);
    if (v180)
    {
      v181 = *v233;
      do
      {
        v182 = 0;
        do
        {
          if (*v233 != v181)
          {
            objc_enumerationMutation(v175);
          }

          objc_msgSend_setParentInfo_(*(*(&v232 + 1) + 8 * v182++), v177, v100, v178, v179);
        }

        while (v180 != v182);
        v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v177, &v232, v247, 16);
      }

      while (v180);
    }

    objc_msgSend_p_updateStorageParentInfoForModels(v100, v183, v184, v185, v186);
    v191 = objc_msgSend_translator(v100, v187, v188, v189, v190);
    objc_msgSend_addReceiverToGroupBy_(v191, v192, v100->_groupBy, v193, v194);

    v199 = objc_msgSend_summaryModel(v100, v195, v196, v197, v198);
    objc_msgSend_setupReceiver(v199, v200, v201, v202, v203);

    objc_msgSend__correctAndCheckStateSuppressingAssertions_(v100, v204, 0, v205, v206);
    if (objc_msgSend_isCategorized(v100, v207, v208, v209, v210))
    {
      v214 = MEMORY[0x277D81150];
      v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, "[TSTTableInfo _initWithContext:fromSourceInfo:cellRegion:tableModel:waitForCalcEngine:formulaCoordSpace:]", v212, v213);
      v219 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v216, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v217, v218);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v214, v220, v215, v219, 1517, 0, "not expecting a categorized table");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v221, v222, v223, v224);
    }

    _Block_object_dispose(v244, 8);
    _Block_object_dispose(v245, 8);
  }

  else
  {
    v231 = v15;
  }

  return v21;
}

- (void)releaseLayoutEngine
{
  layoutEngine = self->_layoutEngine;
  if (layoutEngine)
  {
    objc_msgSend_setTableInfo_(layoutEngine, a2, 0, v2, v3);
    v6 = self->_layoutEngine;
    self->_layoutEngine = 0;
  }
}

- (void)willClose
{
  objc_msgSend_setDocumentIsClosing_(self, a2, 1, v2, v3);
  objc_msgSend_clearPartitioner(self, v5, v6, v7, v8);

  objc_msgSend_releaseLayoutEngine(self, v9, v10, v11, v12);
}

- (void)dealloc
{
  objc_msgSend_teardown(self->_translator, a2, v2, v3, v4);
  v10 = objc_msgSend_categoryOwner(self->_tableModel, v6, v7, v8, v9);
  objc_msgSend_teardown(v10, v11, v12, v13, v14);

  objc_msgSend_releaseLayoutEngine(self, v15, v16, v17, v18);
  v19.receiver = self;
  v19.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v19 dealloc];
}

- (id)replicateForReinsertion
{
  v3 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_context(self, v4, v5, v6, v7);
  v13 = objc_msgSend_range(self, v9, v10, v11, v12);
  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, v13, v14, v15);
  isSnapshot = objc_msgSend_initWithContext_fromSourceInfo_cellRegion_waitForCalcEngine_flattenCategories_isSnapshot_(v3, v17, v8, self, v16, 0, 0, 0);

  if (isSnapshot)
  {
    v23 = objc_msgSend_exteriorTextWrap(self, v19, v20, v21, v22);
    v28 = objc_msgSend_copy(v23, v24, v25, v26, v27);
    v29 = *MEMORY[0x277D80428];
    v30 = *&isSnapshot[v29];
    *&isSnapshot[v29] = v28;

    isSnapshot[*MEMORY[0x277D80438]] = *(&self->super.super.super.isa + *MEMORY[0x277D80438]);
    isSnapshot[*MEMORY[0x277D80400]] = *(&self->super.super.super.isa + *MEMORY[0x277D80400]);
    v31 = *MEMORY[0x277D80430];
    v36 = objc_msgSend_copy(*(&self->super.super.super.isa + v31), v32, v33, v34, v35);
    v37 = *&isSnapshot[v31];
    *&isSnapshot[v31] = v36;

    v38 = *MEMORY[0x277D803F8];
    v43 = objc_msgSend_copy(*(&self->super.super.super.isa + v38), v39, v40, v41, v42);
    v44 = *&isSnapshot[v38];
    *&isSnapshot[v38] = v43;

    v45 = *MEMORY[0x277D80420];
    v50 = objc_msgSend_copy(*(&self->super.super.super.isa + v45), v46, v47, v48, v49);
    v51 = *&isSnapshot[v45];
    *&isSnapshot[v45] = v50;

    objc_msgSend_setParent_(*&isSnapshot[v45], v52, isSnapshot, v53, v54);
    v55 = *MEMORY[0x277D80440];
    v60 = objc_msgSend_copy(*(&self->super.super.super.isa + v55), v56, v57, v58, v59);
    v61 = *&isSnapshot[v55];
    *&isSnapshot[v55] = v60;

    v62 = *MEMORY[0x277D80408];
    v67 = objc_msgSend_replicateForReinsertion(*(&self->super.super.super.isa + v62), v63, v64, v65, v66);
    v68 = *&isSnapshot[v62];
    *&isSnapshot[v62] = v67;

    objc_msgSend_setParentInfo_(*&isSnapshot[v62], v69, isSnapshot, v70, v71);
    isSnapshot[*MEMORY[0x277D80410]] = *(&self->super.super.super.isa + *MEMORY[0x277D80410]);
    v72 = *MEMORY[0x277D80448];
    v77 = objc_msgSend_replicateForReinsertion(*(&self->super.super.super.isa + v72), v73, v74, v75, v76);
    v78 = *&isSnapshot[v72];
    *&isSnapshot[v72] = v77;

    objc_msgSend_setParentInfo_(*&isSnapshot[v72], v79, isSnapshot, v80, v81);
    isSnapshot[*MEMORY[0x277D80450]] = *(&self->super.super.super.isa + *MEMORY[0x277D80450]);
    v82 = *MEMORY[0x277D80418];
    v83 = *(&self->super.super.super.isa + v82);
    v88 = objc_msgSend_context(self, v84, v85, v86, v87);
    v92 = objc_msgSend_copyWithContext_(v83, v89, v88, v90, v91);
    v93 = *&isSnapshot[v82];
    *&isSnapshot[v82] = v92;

    v94 = *MEMORY[0x277D80458];
    v95 = *(&self->super.super.super.isa + v94);
    v100 = objc_msgSend_context(self, v96, v97, v98, v99);
    v104 = objc_msgSend_copyWithContext_(v95, v101, v100, v102, v103);
    v105 = *&isSnapshot[v94];
    *&isSnapshot[v94] = v104;
  }

  return isSnapshot;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = objc_msgSend_objectUUID(self, v5, v6, v7, v8);
  v26._lower = objc_msgSend_tableUID(self, v10, v11, v12, v13);
  v26._upper = v14;
  v15 = TSKUIDStruct::description(&v26);
  v20 = objc_msgSend_tableName(self, v16, v17, v18, v19);
  v24 = objc_msgSend_stringWithFormat_(v3, v21, @"%@ %p: %@ (tableUID: %@ tableName: %@)", v22, v23, v4, self, v9, v15, v20);

  return v24;
}

- (void)setupTableModelForPrototypeIndex:(int64_t)a3 forTableInsertOnly:(BOOL)a4
{
  v5 = a4;
  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 3)
        {
          objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, a4, v4);
          objc_msgSend_setNumberOfHeaderColumns_(self, v8, 1, v9, v10);
          objc_msgSend_setNumberOfFooterRows_(self, v11, 1, v12, v13);
        }

        goto LABEL_15;
      }

LABEL_10:
      objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, a4, v4);
      goto LABEL_15;
    }

    objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, a4, v4);
LABEL_14:
    objc_msgSend_setNumberOfHeaderColumns_(self, v21, 1, v22, v23);
    goto LABEL_15;
  }

  switch(a3)
  {
    case 4:
      goto LABEL_10;
    case 5:
      objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, a4, v4);
      if (v5)
      {
        objc_msgSend_setNumberOfHeaderColumns_(self, v21, 2, v22, v23);
        break;
      }

      goto LABEL_14;
    case 6:
      objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, a4, v4);
      objc_msgSend_setNumberOfHeaderColumns_(self, v14, 1, v15, v16);
      objc_msgSend_p_setupTableModelforNewForm(self, v17, v18, v19, v20);
      break;
  }

LABEL_15:
  v24 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, a4, v4);
  if (objc_msgSend_headersFrozenByDefault(v24, v25, v26, v27, v28))
  {
    objc_msgSend_setHeaderRowsFrozen_(self, v29, 1, v30, v31);
    objc_msgSend_setHeaderColumnsFrozen_(self, v32, 1, v33, v34);
  }

  objc_msgSend_setRepeatingHeaderRowsEnabled_(self, v29, 1, v30, v31);
  objc_msgSend_setRepeatingHeaderColumnsEnabled_(self, v35, 1, v36, v37);
  if (a3 == 5)
  {
    if (v5)
    {
      objc_msgSend_p_setupTableModelforStockPrototype(self, v38, v39, v40, v41);
    }

    else
    {
      objc_msgSend_p_setupTableModelforStockSwatch(self, v38, v39, v40, v41);
    }
  }

  else if (a3 == 4)
  {
    v42 = objc_msgSend_numberOfRows(self, v38, v39, v40, v41);
    v47 = objc_msgSend_newCell(self, v43, v44, v45, v46);
    v52 = objc_msgSend_checkboxFormat(MEMORY[0x277D80680], v48, v49, v50, v51);
    objc_msgSend_setCurrentFormat_isExplicit_(v47, v53, v52, 1, v54);

    v59 = objc_msgSend_toggleControlSpec(TSTCellToggleControlSpec, v55, v56, v57, v58);
    objc_msgSend_setCellSpec_(v47, v60, v59, v61, v62);

    objc_msgSend_setBoolValue_(v47, v63, 0, v64, v65);
    objc_msgSend_setWidth_ofColumnAtIndex_(self, v66, 1, v67, v68, 147.0);
    objc_msgSend_setWidth_ofColumnAtIndex_(self, v69, 0, v70, v71, 49.0);
    if (v42 >= 2)
    {
      v75 = v42;
      for (i = 1; i != v75; ++i)
      {
        objc_msgSend_cellUIDForCellID_(self, v72, i, v73, v74, 0, 0, 0, 0);
        v81 = objc_msgSend_translator(self, v77, v78, v79, v80);
        objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v81, v82, v47, &v83, 0, 0);
      }
    }
  }
}

+ (id)localizedDescriptionForProtoIndex:(unint64_t)a3
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v6 = sub_2214AAEA8(a1, a2, 3, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v11, @"Headers and footers table", &stru_2834BADA0, @"TSTables");
        goto LABEL_15;
      case 4uLL:
        v6 = sub_2214AAEA8(a1, a2, 4, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v25, @"Checklist table", &stru_2834BADA0, @"TSTables");
        goto LABEL_15;
      case 5uLL:
        v6 = sub_2214AAEA8(a1, a2, 5, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v9, @"Stocks table", &stru_2834BADA0, @"TSTables");
        goto LABEL_15;
    }

LABEL_12:
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTTableInfo localizedDescriptionForProtoIndex:]", v3, v4);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1706, 0, "No description for table proto index: %lu", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v23 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
    v6 = sub_2214AAEA8(a1, a2, 0, v3, v4);
    v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v10, @"Headers table", &stru_2834BADA0, @"TSTables");
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v6 = sub_2214AAEA8(a1, a2, 1, v3, v4);
    v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v24, @"Basic table", &stru_2834BADA0, @"TSTables");
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    goto LABEL_12;
  }

  v6 = sub_2214AAEA8(a1, a2, 2, v3, v4);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Plain table", &stru_2834BADA0, @"TSTables");
LABEL_15:
  v23 = v8;

LABEL_16:

  return v23;
}

+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)a3
{
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, v3, v4);
  v11 = v6;
  if (a3 == 6)
  {
    v12 = 4;
  }

  else if (objc_msgSend_createLargeDefaultTables(v6, v7, v8, v9, v10))
  {
    v12 = 10;
  }

  else
  {
    v12 = 5;
  }

  return v12;
}

+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)a3
{
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, v3, v4);
  if (objc_msgSend_createLargeDefaultTables(v6, v7, v8, v9, v10))
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  if (a3 == 6)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  if (a3 == 5)
  {
    v13 = 6;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

+ (id)geometryForPrototypeIndex:(int64_t)a3 withCanvasPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10 = objc_msgSend_numberOfRowsForProtoIndex_(a1, a2, a3, v4, v5);
  v14 = objc_msgSend_numberOfColumnsForProtoIndex_(a1, v11, a3, v12, v13) * 98.0;
  v15 = objc_alloc(MEMORY[0x277D802E8]);
  v20 = objc_msgSend_initWithPosition_size_(v15, v16, v17, v18, v19, x - v14 * 0.5, y - v10 * 22.0 * 0.5, v14, v10 * 22.0);

  return v20;
}

+ (id)tablePrototypeWithIndex:(int64_t)a3 context:(id)a4 geometry:(id)a5 stylePreset:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_class();
  v14 = objc_msgSend_tablePrototypeWithIndex_context_geometry_stylePreset_forTableInsertOnly_(v12, v13, a3, v9, v10, v11, 0);

  return v14;
}

+ (id)tablePrototypeWithIndex:(int64_t)a3 context:(id)a4 geometry:(id)a5 stylePreset:(id)a6 forTableInsertOnly:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18 = objc_msgSend_numberOfRowsForProtoIndex_(a1, v15, a3, v16, v17);
  v22 = objc_msgSend_numberOfColumnsForProtoIndex_(a1, v19, a3, v20, v21);
  v23 = objc_alloc(objc_opt_class());
  v28 = objc_msgSend_styleNetwork(v14, v24, v25, v26, v27);
  v30 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(v23, v29, v12, v13, v18, v22, v14, v28);

  objc_msgSend_setupTableModelForPrototypeIndex_forTableInsertOnly_(v30, v31, a3, v7, v32);

  return v30;
}

+ (id)tableInfoForTableUID:(TSKUIDStruct)a3 withCalcEngine:(id)a4
{
  v11 = a3;
  v4 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, &v11, a4, a4);
  v9 = objc_msgSend_tableInfo(v4, v5, v6, v7, v8);

  return v9;
}

- (void)p_setupTableModelforNewForm
{
  objc_msgSend_rowUIDForRowIndex_(self, a2, 0, v2, v3);
  v9 = objc_msgSend_columnUIDs(self, v5, v6, v7, v8);
  v81 = 0;
  v82 = 0;
  __p = 0;
  sub_221086EBC(&__p, *v9, v9[1], (v9[1] - *v9) >> 4);
  v14 = objc_msgSend_newCell(self, v10, v11, v12, v13);
  v19 = objc_msgSend_documentRoot(self, v15, v16, v17, v18);
  v24 = objc_msgSend_documentLocale(v19, v20, v21, v22, v23);

  objc_msgSend_columnUIDForColumnIndex_(self, v25, 0, v26, v27);
  objc_msgSend_clear(v14, v28, v29, v30, v31);
  v33 = objc_msgSend_localizedStringForKey_value_table_(v24, v32, @"Field 1", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v14, v34, v33, v35, v36);

  v41 = objc_msgSend_translator(self, v37, v38, v39, v40);
  TSTMakeCellUID(v79);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v41, v42, v14, v79, 0, 0);

  objc_msgSend_columnUIDForColumnIndex_(self, v43, 1, v44, v45);
  objc_msgSend_clear(v14, v46, v47, v48, v49);
  v51 = objc_msgSend_localizedStringForKey_value_table_(v24, v50, @"Field 2", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v14, v52, v51, v53, v54);

  v59 = objc_msgSend_translator(self, v55, v56, v57, v58);
  TSTMakeCellUID(v79);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v59, v60, v14, v79, 0, 0);

  objc_msgSend_columnUIDForColumnIndex_(self, v61, 2, v62, v63);
  objc_msgSend_clear(v14, v64, v65, v66, v67);
  v69 = objc_msgSend_localizedStringForKey_value_table_(v24, v68, @"Field 3", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v14, v70, v69, v71, v72);

  v77 = objc_msgSend_translator(self, v73, v74, v75, v76);
  TSTMakeCellUID(v79);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v77, v78, v14, v79, 0, 0);

  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }
}

- (void)p_setupTableModelforStockSwatch
{
  objc_msgSend_columnUIDForColumnIndex_(self, a2, 1, v2, v3);
  objc_msgSend_columnUIDForColumnIndex_(self, v5, 2, v6, v7);
  objc_msgSend_columnUIDForColumnIndex_(self, v8, 3, v9, v10);
  v15 = objc_msgSend_newCell(self, v11, v12, v13, v14);
  v20 = objc_msgSend_newCell(self, v16, v17, v18, v19);
  objc_msgSend_p_setFillOnCell_positive_(self, v21, v15, 1, v22);
  objc_msgSend_p_setFillOnCell_positive_(self, v23, v20, 0, v24);
  v29 = objc_msgSend_rowUIDs(self, v25, v26, v27, v28);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  sub_221086EBC(&v69, *v29, v29[1], (v29[1] - *v29) >> 4);
  v33 = v69;
  v32 = v70;
  if (v69 != v70)
  {
    do
    {
      v34 = objc_msgSend_rowIndexForRowUID_(self, v30, *v33, v33[1], v31);
      if (v34 >= objc_msgSend_numberOfHeaderRows(self, v35, v36, v37, v38))
      {
        objc_msgSend_translator(self, v30, v39, v40, v31);
        if (v34)
          v55 = {;
          TSTMakeCellUID(v68);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v55, v56, v15, v68, 0, 0);

          v61 = objc_msgSend_translator(self, v57, v58, v59, v60);
          TSTMakeCellUID(v68);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v61, v62, v20, v68, 0, 0);

          v53 = objc_msgSend_translator(self, v63, v64, v65, v66);
          TSTMakeCellUID(v68);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v53, v67, v15, v68, 0, 0);
        }

        else
          v41 = {;
          TSTMakeCellUID(v68);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v41, v42, v20, v68, 0, 0);

          v47 = objc_msgSend_translator(self, v43, v44, v45, v46);
          TSTMakeCellUID(v68);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v47, v48, v15, v68, 0, 0);

          v53 = objc_msgSend_translator(self, v49, v50, v51, v52);
          TSTMakeCellUID(v68);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v53, v54, v20, v68, 0, 0);
        }
      }

      v33 += 2;
    }

    while (v33 != v32);
    v33 = v69;
  }

  if (v33)
  {
    v70 = v33;
    operator delete(v33);
  }
}

- (void)p_setFormulaWithSymbolString:(id)a3 atCellID:(TSUCellCoord)a4
{
  v6 = a3;
  v7 = sub_2212199B4(26);
  TSCEFormulaCreationMagic::STOCK(v6, v7, &v16);
  v8 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v15, &v16);
  v12 = objc_msgSend_initWithCreator_(v8, v9, &v15, v10, v11);

  objc_msgSend_p_setFormula_atCellID_(self, v13, v12, *&a4, v14);
}

- (void)p_setFormula:(id)a3 atCellID:(TSUCellCoord)a4
{
  v6 = a3;
  v11 = objc_msgSend_newCell(self, v7, v8, v9, v10);
  if (objc_msgSend_getCell_atCellID_(self, v12, v11, *&a4, v13))
  {
    objc_msgSend_clear(v11, v14, v15, v16, v17);
  }

  if ((objc_msgSend_hasFormula(v11, v14, v15, v16, v17) & 1) == 0)
  {
    objc_msgSend_clearValue(v11, v18, v19, v20, v21);
  }

  objc_msgSend_setFormulaSyntaxError_(v11, v18, 0, v20, v21);
  objc_msgSend_setFormulaObject_(v11, v22, v6, v23, v24);
  objc_msgSend_cellUIDForCellID_(self, v25, *&a4, v26, v27, 0, 0, 0, 0);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(self, v28, v11, &v29, 0, 0);
}

- (void)p_setFillOnCell:(id)a3 positive:(BOOL)a4
{
  v4 = a4;
  v29 = a3;
  if (v4)
  {
    objc_msgSend_p_positiveImageFill(self, v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_p_negativeImageFill(self, v6, v7, v8, v9);
  }
  v10 = ;
  v15 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v11, v12, v13, v14);
  objc_msgSend_setObject_forProperty_(v15, v16, v10, 898, v17);
  v18 = [TSTCellStyle alloc];
  v23 = objc_msgSend_context(self, v19, v20, v21, v22);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v18, v24, v23, 0, v15, 0);
  objc_msgSend_setCellStyle_(v29, v26, isVariation, v27, v28);
}

- (id)p_fillResourceWithFilename:(id)a3
{
  v8 = a3;
  if (qword_27CFB51B0 != -1)
  {
    sub_2216F6508();
  }

  v9 = objc_msgSend_context(self, v4, v5, v6, v7);
  if (v9)
  {
    os_unfair_lock_lock(&dword_27CFB51A8);
    v16 = objc_msgSend_objectForKey_(qword_27CFB51A0, v10, v9, v11, v12);
    if (!v16)
    {
      v17 = objc_alloc(MEMORY[0x277CBEB38]);
      v16 = objc_msgSend_initWithCapacity_(v17, v18, 2, v19, v20);
      objc_msgSend_setObject_forKey_(qword_27CFB51A0, v21, v16, v9, v22);
    }

    v27 = objc_msgSend_objectForKeyedSubscript_(v16, v13, v8, v14, v15);
    if (!v27)
    {
      v28 = sub_2214AAEA8(0, v23, v24, v25, v26);
      v33 = objc_msgSend_resourceURL(v28, v29, v30, v31, v32);
      v37 = objc_msgSend_URLByAppendingPathComponent_(v33, v34, v8, v35, v36);

      v40 = objc_msgSend_dataFromURL_context_(MEMORY[0x277D80828], v38, v37, v9, v39);
      v41 = objc_alloc(MEMORY[0x277D802C0]);
      v27 = objc_msgSend_initWithImageData_technique_tintColor_size_(v41, v42, v40, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
      objc_msgSend_setObject_forKeyedSubscript_(v16, v43, v27, v8, v44);
    }

    os_unfair_lock_unlock(&dword_27CFB51A8);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)additionalObjectsToCopy
{
  v8 = objc_msgSend_tableStylePreset(self, a2, v2, v3, v4);
  if (v8)
  {
    v9 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v5, v8, v6, v7);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)componentRootObject
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v10 = objc_msgSend_calculationEngine(v5, v6, v7, v8, v9);

  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableInfo componentRootObject]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2101, 0, "Component root object is nil!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return v10;
}

- (void)shiftGeometryToIncludeTableNameHeight
{
  v48 = objc_msgSend_geometry(self, a2, v2, v3, v4);
  if (objc_msgSend_tableNameEnabled(self, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_layoutEngine(self, v10, v11, v12, v13);
    objc_msgSend_tableNameTextSize(v14, v15, v16, v17, v18);
    v20 = v19;

    v21 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_position(v48, v22, v23, v24, v25);
    v27 = v26;
    objc_msgSend_position(v48, v28, v29, v30, v31);
    v33 = v32;
    objc_msgSend_size(v48, v34, v35, v36, v37);
    v44 = objc_msgSend_initWithPosition_size_(v21, v38, v39, v40, v41, v27, v33 - v20, v42, v43);
    objc_msgSend_setPrimitiveGeometry_(self, v45, v44, v46, v47);
  }
}

- (BOOL)isSafeToConvertToImageForImagePaste
{
  v6 = objc_msgSend_range(self, a2, v2, v3, v4);
  if (objc_msgSend_isSingleCellOrMergeRange_(self, v7, v6, v7, v8))
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_isSafeToConvertToImage, v9, v10, v11);
}

- (void)clearPartitioner
{
  partitioner = self->_partitioner;
  self->_partitioner = 0;
}

- (id)p_layoutEngineCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  layoutEngine = v4->_layoutEngine;
  if (layoutEngine)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v7 = [TSTLayoutEngine alloc];
    v12 = objc_msgSend_archivedLayoutEngineBundle(v4, v8, v9, v10, v11);
    v15 = objc_msgSend_initWithInfo_layoutEngineBundle_(v7, v13, v4, v12, v14);
    v16 = v4->_layoutEngine;
    v4->_layoutEngine = v15;

    v21 = objc_msgSend_documentRoot(v4, v17, v18, v19, v20);
    v26 = objc_msgSend_changeNotifier(v21, v22, v23, v24, v25);
    objc_msgSend_setChangeNotifier_(v4->_layoutEngine, v27, v26, v28, v29);

    layoutEngine = v4->_layoutEngine;
  }

  v30 = layoutEngine;
  objc_sync_exit(v4);

  return v30;
}

- (BOOL)supportsRichTextUndoAtCellID:(TSUCellCoord)a3
{
  if (objc_msgSend_hasActiveFilters(self, a2, *&a3, v3, v4))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isCategoryGroupValueCell_(self, v7, *&a3, v8, v9) ^ 1;
  }
}

- (BOOL)isReimportable
{
  v6 = objc_msgSend_textImportRecord(self, a2, v2, v3, v4);
  if (objc_msgSend_isReimportable(v6, v7, v8, v9, v10) && (objc_msgSend_isLocked(self, v11, v12, v13, v14) & 1) == 0)
  {
    v20 = objc_msgSend_context(self, v15, v16, v17, v18);
    v19 = objc_msgSend_isInReadOnlyMode(v20, v21, v22, v23, v24) ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)isNewlyImported
{
  v5 = objc_msgSend_textImportRecord(self, a2, v2, v3, v4);
  v10 = objc_msgSend_importDate(v5, v6, v7, v8, v9);

  objc_msgSend_timeIntervalSinceNow(v10, v11, v12, v13, v14);
  LOBYTE(v5) = v15 > -300.0;

  return v5;
}

- (void)p_updateStorageParentInfoForModels
{
  v23 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  objc_msgSend_setStorageParentToInfo_(v23, v6, self, v7, v8);

  v24 = objc_msgSend_summaryModel(self, v9, v10, v11, v12);
  objc_msgSend_setStorageParentToInfo_(v24, v13, self, v14, v15);

  v25 = objc_msgSend_pivotDataModel(self, v16, v17, v18, v19);
  objc_msgSend_setStorageParentToInfo_(v25, v20, self, v21, v22);
}

- (TSKUIDStruct)tableUID
{
  v5 = objc_msgSend_tableUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)fromTableUID
{
  v5 = objc_msgSend_fromTableUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)fromGroupByUID
{
  v5 = objc_msgSend_fromGroupByUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (NSUUID)nsTableUID
{
  v8._lower = objc_msgSend_tableUID(self, a2, v2, v3, v4);
  v8._upper = v5;
  v6 = TSKUIDStruct::NSUUIDValue(&v8);

  return v6;
}

- (NSUUID)nsFilteringTableUID
{
  v8._lower = objc_msgSend_filteringTableUID(self, a2, v2, v3, v4);
  v8._upper = v5;
  v6 = TSKUIDStruct::NSUUIDValue(&v8);

  return v6;
}

- (TSKUIDStruct)pivotSourceTableUID
{
  if (self->_pivotDataModel)
  {
    v5 = objc_msgSend_pivotOwner(self, a2, v2, v3, v4);
    v10 = objc_msgSend_pivotSourceTableUID(v5, v6, v7, v8, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (NSUUID)pivotSourceNSTableUID
{
  v8._lower = objc_msgSend_pivotSourceTableUID(self, a2, v2, v3, v4);
  v8._upper = v5;
  v6 = TSKUIDStruct::NSUUIDValue(&v8);

  return v6;
}

- (NSString)pivotSourceTableName
{
  if (self->_pivotDataModel)
  {
    v5 = objc_msgSend_pivotOwner(self, a2, v2, v3, v4);
    v10 = objc_msgSend_pivotSourceTableName(v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TSTTableInfo)pivotSourceTableInfo
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_pivotSourceTableUID(self, v6, v7, v8, v9);
    v15 = objc_msgSend_calcEngine(self, v11, v12, v13, v14, v10, v11);
    v18 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v16, &v25, v15, v17);

    v23 = objc_msgSend_tableInfo(v18, v19, v20, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)pivotTableCanBeRefreshed
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_pivotSourceTableInfo(self, v6, v7, v8, v9);

    if (v10)
    {
      v15 = objc_msgSend_pivotOwner(self, v11, v12, v13, v14);
      v20 = objc_msgSend_pivotSourceBodyTract(v15, v16, v17, v18, v19);

      if (v20)
      {
        LOBYTE(v10) = objc_msgSend_isValid(v20, v21, v22, v23, v24);
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)pivotSourceIsRangeBased
{
  if (!self->_pivotDataModel)
  {
    return 0;
  }

  v5 = objc_msgSend_pivotOwner(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pivotSourceBodyTract(v5, v6, v7, v8, v9);
  v11 = v10 != 0;

  return v11;
}

- (NSString)pivotSourceRangeName
{
  v5 = objc_msgSend_pivotOwner(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pivotSourceRangeName(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)pivotDetailTableNameFromSourcePivotTableInfo:(id)a3 pivotSourceCell:(TSUCellCoord)a4
{
  v5 = a3;
  v10 = objc_msgSend_objectLocale(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_pivotOwner(v5, v11, v12, v13, v14);
  v20 = objc_msgSend_groupBySet(v15, v16, v17, v18, v19);

  v28 = objc_msgSend_tableName(v5, v21, v22, v23, v24);
  if (v5)
  {
    objc_msgSend_cellUIDForCellID_(v5, v25, *&a4, v26, v27);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  v29 = objc_msgSend_descriptionForPivotBodyCellForUidCoord_(v20, v25, v38, v26, v27);
  v30 = MEMORY[0x277CCACA8];
  v32 = sub_2211310B0(v10, v31);
  v36 = objc_msgSend_stringWithFormat_(v30, v33, v32, v34, v35, v28, v29, &stru_2834BADA0);

  return v36;
}

- (TSKUIDStruct)filteringTableUID
{
  if (self->_pivotDataModel)
  {
    self = self->_pivotDataModel;
  }

  v5 = objc_msgSend_tableUID(self, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v5 = objc_msgSend_tableRangeCoordinate(self->_tableModel, a2, v2, v3, v4);
  result._bottomRight = v6;
  result._topLeft = v5;
  return result;
}

- (BOOL)shouldUseWideRows
{
  if (objc_msgSend_shouldUseWideRows(self->_tableModel, a2, v2, v3, v4))
  {
    return 1;
  }

  summaryModel = self->_summaryModel;

  return objc_msgSend_shouldUseWideRows(summaryModel, v6, v7, v8, v9);
}

- (void)setShouldUseWideRows:(BOOL)a3
{
  v5 = a3;
  objc_msgSend_setShouldUseWideRows_(self->_tableModel, a2, a3, v3, v4);
  summaryModel = self->_summaryModel;

  objc_msgSend_setShouldUseWideRows_(summaryModel, v7, v5, v8, v9);
}

- (TSKUIDStruct)conditionalStyleFormulaOwnerUID
{
  v5 = objc_msgSend_conditionalStyleFormulaOwnerUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (BOOL)isRegisteredWithCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_baseTableModel(self, v5, v6, v7, v8);
  isRegisteredWithCalcEngine = objc_msgSend_isRegisteredWithCalcEngine_(v9, v10, v4, v11, v12);

  return isRegisteredWithCalcEngine;
}

- (int)registerWithCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_baseTableModel(self, v5, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12, v13);

  objc_msgSend_willModify(v4, v14, v15, v16, v17);
  if (!objc_msgSend_isAPivotTable(self, v18, v19, v20, v21) || (objc_msgSend_pivotDataModel(self, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_registerWithCalcEngine_ownerKind_(v26, v27, v4, 100, v28), v26, !v29))
  {
    v30 = objc_msgSend_baseTableModel(self, v22, v23, v24, v25);
    v29 = objc_msgSend_registerWithCalcEngine_ownerKind_(v30, v31, v4, 1, v32);

    if (!v29)
    {
      v37 = objc_msgSend_summaryModel(self, v33, v34, v35, v36);

      if (v37)
      {
        v42 = objc_msgSend_summaryModel(self, v38, v39, v40, v41);
        v47 = objc_msgSend_aggregateFormulaOwner(v42, v43, v44, v45, v46);
        v55[0] = objc_msgSend_tableUID(self, v48, v49, v50, v51);
        v55[1] = v52;
        v29 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v47, v52, v4, v55, v53);
      }

      else
      {
        v29 = 0;
      }
    }
  }

  return v29;
}

- (void)registerWithCalcEngineForDocumentLoad:(id)a3 ownerKind:(unsigned __int16)a4
{
  v5 = a3;
  v10 = objc_msgSend_baseTableModel(self, v6, v7, v8, v9);
  objc_msgSend_setTableInfo_(v10, v11, self, v12, v13);

  if (objc_msgSend_isAPivotTable(self, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_pivotDataModel(self, v18, v19, v20, v21);
    objc_msgSend_setIsAPivotDataModel_(v22, v23, 1, v24, v25);

    v30 = objc_msgSend_pivotDataModel(self, v26, v27, v28, v29);
    objc_msgSend_linkToCalcEngine_ownerKind_(v30, v31, v5, 100, v32);
  }

  v33 = objc_msgSend_baseTableModel(self, v18, v19, v20, v21);
  objc_msgSend_linkToCalcEngine_ownerKind_(v33, v34, v5, 1, v35);

  v40 = objc_msgSend_summaryModel(self, v36, v37, v38, v39);

  if (v40)
  {
    v45 = objc_msgSend_summaryModel(self, v41, v42, v43, v44);
    v50 = objc_msgSend_aggregateFormulaOwner(v45, v46, v47, v48, v49);
    v89[0] = objc_msgSend_tableUID(self, v51, v52, v53, v54);
    v89[1] = v55;
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v50, v55, v5, v89, v56);
  }

  if (self->_needsFilterSetUpdated)
  {
    objc_msgSend_filterSetUpdated(self, v41, v42, v43, v44);
  }

  if (self->_resetGroupingsOnUpgrade)
  {
    v57 = objc_msgSend_groupBy(self, v41, v42, v43, v44);
    v62 = objc_msgSend_groupingColumnListCopy(v57, v58, v59, v60, v61);
    objc_msgSend_applyGroupingColumns_(self, v63, v62, v64, v65);

    objc_msgSend_setIsCategoryEnabled_(self, v66, 1, v67, v68);
    v73 = objc_msgSend_summaryModel(self, v69, v70, v71, v72);
    objc_msgSend_setNeedsFormulaReset_(v73, v74, 1, v75, v76);

    v81 = objc_msgSend_summaryModel(self, v77, v78, v79, v80);
    objc_msgSend_resetForCategoriesWithForce_(v81, v82, 1, v83, v84);

    objc_msgSend_resetViewMap(self, v85, v86, v87, v88);
    self->_resetGroupingsOnUpgrade = 0;
  }
}

- (void)unregisterFromCalcEngine:(id)a3
{
  v56 = a3;
  v8 = objc_msgSend_baseTableModel(self, v4, v5, v6, v7);
  objc_msgSend_willModify(v8, v9, v10, v11, v12);

  objc_msgSend_willModify(v56, v13, v14, v15, v16);
  v21 = objc_msgSend_baseTableModel(self, v17, v18, v19, v20);
  objc_msgSend_unregisterFromCalcEngine_(v21, v22, v56, v23, v24);

  v29 = objc_msgSend_summaryModel(self, v25, v26, v27, v28);
  objc_msgSend_willModify(v29, v30, v31, v32, v33);

  v38 = objc_msgSend_summaryModel(self, v34, v35, v36, v37);
  v43 = objc_msgSend_aggregateFormulaOwner(v38, v39, v40, v41, v42);
  objc_msgSend_unregisterFromCalcEngine(v43, v44, v45, v46, v47);

  v52 = objc_msgSend_pivotDataModel(self, v48, v49, v50, v51);
  objc_msgSend_unregisterFromCalcEngine_(v52, v53, v56, v54, v55);
}

- (void)performReadForOneOffFormulaEvaluation:(id)a3 forCellCoord:(TSUCellCoord)a4
{
  v29 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo performReadForOneOffFormulaEvaluation:forCellCoord:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 2660, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    translator = self->_translator;
  }

  v21 = objc_msgSend_baseCellCoordForViewCellCoord_(translator, v6, *&a4, v7, v8);
  v26 = objc_msgSend_baseTableModel(self, v22, v23, v24, v25);
  objc_msgSend_performReadForOneOffFormulaEvaluation_forCellCoord_(v26, v27, v29, v21, v28);
}

- (BOOL)registerLast
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_registerLast(v5, v6, v7, v8, v9);

  return v10;
}

- (TSKUIDStruct)formulaOwnerUID
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_tableUID(v5, v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (void)notifyTableOfNewResults
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo notifyTableOfNewResults]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 2683, 0, "There are no callers of this, but its needed to conform to TSCECalculationEngineRegistration protocol");

  v15 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v15, v11, v12, v13, v14);
}

- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)a3 affectedRegion:(id)a4
{
  v12 = a4;
  if (v12)
  {
    v13 = objc_msgSend_translator(self, v8, v9, v10, v11);
    v17 = objc_msgSend_baseCellRegionForViewCellRegion_(v13, v14, v12, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_msgSend_baseTableModel(self, v8, v9, v10, v11);
  v21 = v18;
  if (a5)
  {
    v22 = &v40;
  }

  else
  {
    v22 = 0;
  }

  if (a5)
  {
    v40 = 0;
  }

  if (!v18)
  {
    v23 = 0;
    retstr->_rowsPerColumn.__tree_.__size_ = 0;
    retstr->_rectRepresentation = 0u;
    *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
    goto LABEL_15;
  }

  objc_msgSend_clearArrayFormulasSpillingIntoRegion_affectedRegion_(v18, v19, v17, v22, v20);
  if (!a5)
  {
    v23 = 0;
    goto LABEL_15;
  }

  v23 = v40;

  if (v23)
  {
    v21 = objc_msgSend_translator(self, v24, v25, v26, v27);
    *a5 = objc_msgSend_viewCellRegionForBaseCellRegion_(v21, v28, v23, v29, v30);
LABEL_15:
  }

  v31 = objc_msgSend_calcEngine(self, v24, v25, v26, v27);
  v39[0] = objc_msgSend_tableUID(self, v32, v33, v34, v35);
  v39[1] = v36;
  objc_msgSend_markCoordsDirty_inOwner_(v31, v36, retstr, v39, v37);

  return result;
}

- (void)resetArrayFormulasSpillingIntoRegion:(id)a3
{
  objc_msgSend_spillingRangesInRegion_(self, a2, a3, v3, v4);
  objc_msgSend_resetSpillingRangesInUIDRanges_(self, v6, v9, v7, v8);
  v10 = v9;
  sub_2210BC30C(&v10);
}

- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableInfo *)self
{
  v8 = objc_msgSend_baseCellRegionForViewCellRegion_(self->_translator, a3, a4, v4, v5);
  tableModel = self->_tableModel;
  v13 = v8;
  if (tableModel)
  {
    objc_msgSend_spillingRangesInRegion_(tableModel, v8, v8, v9, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (void)resetSpillingRangesInUIDRanges:(const void *)a3
{
  v5 = *a3;
  v6 = *(a3 + 1);
  if (*a3 != v6)
  {
    do
    {
      v8 = objc_msgSend_baseCellRegionForUIDRange_(self->_translator, a2, v5, v3, v4);
      v14.origin = objc_msgSend_boundingCellRange(v8, v9, v10, v11, v12);
      v14.size = v13;

      if (TSUCellRect::isValid(&v14))
      {
        objc_msgSend_resetSpillingRangesInRange_(self->_tableModel, a2, &v14, v3, v4);
      }

      v5 += 48;
    }

    while (v5 != v6);
  }
}

- (void)markPrecedentsDirtyForSpillContentChange
{
  v10 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  if (v10)
  {
    v17[0] = objc_msgSend_tableUID(self, v6, v7, v8, v9);
    v17[1] = v11;
    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v11, v17, v12, v13);
    objc_msgSend_markCellRefAsDirty_(v10, v14, v18, v15, v16);
  }

  objc_msgSend_markSpillingErrorsAsDirty(self, v6, v7, v8, v9);
}

- (void)markPrecedentsDirtyForSpillMergeChange
{
  v10 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  if (v10)
  {
    v17[0] = objc_msgSend_tableUID(self, v6, v7, v8, v9);
    v17[1] = v11;
    objc_msgSend_spillBlockedByMergePrecedentForTableUID_(TSCEHauntedOwner, v11, v17, v12, v13);
    objc_msgSend_markCellRefAsDirty_(v10, v14, v18, v15, v16);
  }

  objc_msgSend_markSpillingErrorsAsDirty(self, v6, v7, v8, v9);
}

- (void)markSpillingErrorsAsDirty
{
  v13 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  if (v13)
  {
    v10 = objc_msgSend_tableUID(self, v6, v7, v8, v9);
    objc_msgSend_markSpillingErrorsAsDirtyForTable_(v13, v11, v10, v11, v12);
  }
}

- (BOOL)hasSpillingErrors
{
  v5 = self;
  v6 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  v11 = objc_msgSend_tableUID(v5, v7, v8, v9, v10);
  LOBYTE(v5) = objc_msgSend_hasSpillingErrorsForTable_(v6, v12, v11, v12, v13);

  return v5;
}

- (TSUCellRect)filteringRange
{
  v5 = objc_msgSend_filteringTableTranslator(self, a2, v2, v3, v4);
  v10 = objc_msgSend_range(v5, v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.size = v14;
  result.origin = v13;
  return result;
}

- (TSUCellRect)filteringBodyRange
{
  v5 = objc_msgSend_filteringTableTranslator(self, a2, v2, v3, v4);
  v10 = objc_msgSend_bodyRange(v5, v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.size = v14;
  result.origin = v13;
  return result;
}

- (TSUCellRect)filteringBodyRowRange
{
  v5 = objc_msgSend_filteringTableTranslator(self, a2, v2, v3, v4);
  v10 = objc_msgSend_bodyRowRange(v5, v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.size = v14;
  result.origin = v13;
  return result;
}

- (TSUCellRect)filteringBaseColumnRange
{
  if (self->_pivotDataModel)
  {
    v5 = objc_msgSend_range(self->_pivotDataModel, a2, v2, v3, v4);
  }

  else
  {
    v5 = (MEMORY[0x2821F9670])(self, sel_baseColumnRange);
  }

  result.size = v6;
  result.origin = v5;
  return result;
}

- (id)filteringColumnNameForColumnIndex:(unsigned __int16)a3
{
  v5 = a3;
  if (self->_pivotDataModel)
  {
    v7 = objc_msgSend_calcEngine(self, a2, a3, v3, v4);
    v12 = objc_msgSend_namer(v7, v8, v9, v10, v11);

    if (!v12)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableInfo filteringColumnNameForColumnIndex:]", v16, v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 2785, 0, "invalid nil value for '%{public}s'", "refNamer");

      v13 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    v29 = sub_2214AAEA8(v13, v14, v15, v16, v17);
    v31 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, @"Column %@", &stru_2834BADA0, @"TSTables");
    v36 = objc_msgSend_identityTranslator(self->_pivotDataModel, v32, v33, v34, v35);
    v38 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_translator_(v12, v37, v5, v31, v36);
  }

  else
  {
    v38 = objc_msgSend_columnNameForColumnIndex_(self, a2, a3, v3, v4);
  }

  return v38;
}

- (id)filteringColumnNameForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  if (self->_pivotDataModel)
  {
    objc_msgSend_filteringColumnNameForColumnIndex_(self, a2, a3._column, v3, v4);
  }

  else
  {
    v8 = objc_msgSend_translator(self, a2, *&a3._column, v3, v4);
    v12 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v8, v9, a3._column, v10, v11);

    objc_msgSend_columnNameForColumnIndex_(self, v13, v12, v14, v15);
  }
  v7 = ;

  return v7;
}

- (id)filteringDisplayColumnNameForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  pivotDataModel = self->_pivotDataModel;
  if (pivotDataModel)
  {
    objc_msgSend_displayNameForColumnAtIndex_(pivotDataModel, a2, a3._column, v3, v4);
  }

  else
  {
    v8 = objc_msgSend_translator(self, a2, *&a3._column, v3, v4);
    v12 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v8, v9, a3._column, v10, v11);

    objc_msgSend_displayNameForColumnAtIndex_(self, v13, v12, v14, v15);
  }
  v16 = ;

  return v16;
}

- (TSTTableFilterSet)filterSet
{
  if (self->_pivotDataModel)
  {
    v6 = objc_msgSend_pivotOwner(self, a2, v2, v3, v4);
    v10 = objc_msgSend_filterSetForPivotDataTable_(v6, v7, self->_pivotDataModel, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_filterSetForRows(self->_hiddenStates, a2, v2, v3, v4);
  }

  return v10;
}

- (void)setFilterSet:(id)a3
{
  v23 = a3;
  if (objc_msgSend_containsFilterRulesInUIDForm(v23, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_context(self, v8, v9, v10, v11);
    v15 = objc_msgSend_copyByRewritingFilterRulesToGeometricFormWithContext_withTableInfo_(v23, v13, v12, self, v14);
  }

  else
  {
    v12 = objc_msgSend_context(self, v8, v9, v10, v11);
    v15 = objc_msgSend_copyWithContext_(v23, v16, v12, v17, v18);
  }

  v19 = v15;

  objc_msgSend_p_setFilterSet_(self, v20, v19, v21, v22);
}

- (void)p_setFilterSet:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsFilterRulesInUIDForm(v4, v5, v6, v7, v8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableInfo p_setFilterSet:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 2833, 0, "Must convert filters to geometric before setting");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (self->_pivotDataModel)
  {
    v24 = objc_msgSend_baseTableModel(self, v9, v10, v11, v12);
    objc_msgSend_willModify(v24, v25, v26, v27, v28);

    v33 = objc_msgSend_pivotOwner(self, v29, v30, v31, v32);
    objc_msgSend_setFilterSet_forPivotDataTable_(v33, v34, v4, self->_pivotDataModel, v35);

    if (objc_msgSend_filterCount(v4, v36, v37, v38, v39) && objc_msgSend_isEnabled(v4, v40, v41, v42, v43))
    {
      v44 = [TSTTableFilterSet alloc];
      v49 = objc_msgSend_context(self, v45, v46, v47, v48);
      v52 = objc_msgSend_initWithNotBlankRowGroupsWithContext_withPivotTable_(v44, v50, v49, self, v51);

      objc_msgSend_setFilterSetForRows_(self->_hiddenStates, v53, v52, v54, v55);
      v56 = [TSTTableFilterSet alloc];
      v61 = objc_msgSend_context(self, v57, v58, v59, v60);
      v64 = objc_msgSend_initWithNotBlankColumnGroupsWithContext_withPivotTable_(v56, v62, v61, self, v63);

      objc_msgSend_setFilterSetForColumns_(self->_hiddenStates, v65, v64, v66, v67);
    }

    else
    {
      objc_msgSend_enableFilterSet_(self->_hiddenStates, v40, 0, v42, v43);
      objc_msgSend_clearAllFiltered(self->_hiddenStates, v72, v73, v74, v75);
    }

    v76 = objc_msgSend_calcEngine(self, v68, v69, v70, v71);
    v95[0] = objc_msgSend_tableUID(self, v77, v78, v79, v80);
    v95[1] = v81;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v81, v95, v82, v83);
    objc_msgSend_intendToChangePrecedent_(v76, v84, v96, v85, v86);

    objc_msgSend_filterSetUpdated(self, v87, v88, v89, v90);
  }

  else
  {
    objc_msgSend_setFilterSetForRows_(self->_hiddenStates, v9, v4, v11, v12);
    objc_msgSend_filterSetUpdated(self, v91, v92, v93, v94);
  }
}

- (id)textureDeliveryStylesLocalized:(BOOL)a3 animationFilter:(id)a4
{
  v5 = objc_msgSend_textureDeliveryStylesLocalized_(TSTAnimation, a2, a3, a4, v4);

  return v5;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v13 = objc_msgSend_baseTableModel(self, v9, v10, v11, v12);
  v18 = objc_msgSend_baseTableModel(v8, v14, v15, v16, v17);
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  v23 = objc_msgSend_geometry(self, v19, v20, v21, v22);
  v28 = objc_msgSend_geometry(v8, v24, v25, v26, v27);
  TSDMixingTypeWithObjects();
  v29 = TSDMixingTypeBestFromMixingTypes();

  return v29;
}

- (void)p_bakeMixedCellStrokesIntoTable:(id)a3 outgoingTable:(id)a4 incomingTable:(id)a5 fraction:(double)a6
{
  v168 = a3;
  v9 = a4;
  v166 = a5;
  v167 = v9;
  v172 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v9, v10, 2, 0x20000000, v11);
  v171 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v166, v12, 2, 0x20000000, v13);
  v169 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v168, v14, 2, 0x20000000, v15);
  v20 = objc_msgSend_context(self, v16, v17, v18, v19);
  v170 = objc_msgSend_cellMapWithContext_(TSTCellMap, v21, v20, v22, v23);

  v27 = 0;
  v28 = 0;
  for (i = 0; ; i = v31)
  {
    v175 = i;
    NextCellData = objc_msgSend_getNextCellData_(v172, v24, &v175, v25, v26);
    v31 = v175;

    if (!NextCellData)
    {
      v39 = v27;
      v37 = v28;
      goto LABEL_8;
    }

    v174 = v28;
    v36 = objc_msgSend_getNextCellData_(v171, v32, &v174, v34, v35);
    v37 = v174;

    if (!v36)
    {
      break;
    }

    v173 = v27;
    v38 = objc_msgSend_getNextCellData_(v169, v32, &v173, v34, v35);
    v39 = v173;

    if (!v38)
    {
      goto LABEL_8;
    }

    v40 = objc_msgSend_cell(v39, v32, v33, v34, v35);
    v45 = objc_msgSend_cellFlags(v40, v41, v42, v43, v44);
    objc_msgSend_setCellFlags_(v40, v46, v45 & 0xF70F, v47, v48);
    v53 = objc_msgSend_cell(v31, v49, v50, v51, v52);
    v58 = objc_msgSend_cellBorder(v53, v54, v55, v56, v57);

    v63 = objc_msgSend_cell(v37, v59, v60, v61, v62);
    v68 = objc_msgSend_cellBorder(v63, v64, v65, v66, v67);

    v73 = objc_msgSend_cellBorder(v40, v69, v70, v71, v72);
    v78 = objc_msgSend_topStroke(v58, v74, v75, v76, v77);
    v83 = objc_msgSend_topStroke(v68, v79, v80, v81, v82);
    v84 = TSDMixingMixedObjectWithFraction();
    v89 = objc_msgSend_topStrokeOrder(v73, v85, v86, v87, v88);
    objc_msgSend_setTopStroke_order_(v73, v90, v84, v89, v91);

    v96 = objc_msgSend_leftStroke(v58, v92, v93, v94, v95);
    v101 = objc_msgSend_leftStroke(v68, v97, v98, v99, v100);
    v102 = TSDMixingMixedObjectWithFraction();
    v107 = objc_msgSend_leftStrokeOrder(v73, v103, v104, v105, v106);
    objc_msgSend_setLeftStroke_order_(v73, v108, v102, v107, v109);

    v114 = objc_msgSend_bottomStroke(v58, v110, v111, v112, v113);
    v119 = objc_msgSend_bottomStroke(v68, v115, v116, v117, v118);
    v120 = TSDMixingMixedObjectWithFraction();
    v125 = objc_msgSend_bottomStrokeOrder(v73, v121, v122, v123, v124);
    objc_msgSend_setBottomStroke_order_(v73, v126, v120, v125, v127);

    v132 = objc_msgSend_rightStroke(v58, v128, v129, v130, v131);
    v137 = objc_msgSend_rightStroke(v68, v133, v134, v135, v136);
    v138 = TSDMixingMixedObjectWithFraction();
    v143 = objc_msgSend_rightStrokeOrder(v73, v139, v140, v141, v142);
    objc_msgSend_setRightStroke_order_(v73, v144, v138, v143, v145);

    v150 = objc_msgSend_cellID(v39, v146, v147, v148, v149);
    objc_msgSend_addCell_andCellID_(v170, v151, v40, v150, v152);

    v27 = v39;
    v28 = v37;
  }

  v39 = v27;
LABEL_8:
  objc_msgSend_terminate(v169, v32, v33, v34, v35);
  objc_msgSend_terminate(v171, v153, v154, v155, v156);
  objc_msgSend_terminate(v172, v157, v158, v159, v160);
  if (objc_msgSend_count(v170, v161, v162, v163, v164))
  {
    objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(v168, v165, v170, 1, 0);
  }
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v12 = objc_msgSend_baseTableModel(self, v8, v9, v10, v11);
  v17 = objc_msgSend_baseTableModel(v7, v13, v14, v15, v16);
  v18 = TSDMixingMixedObjectWithFraction();

  v19 = objc_alloc(objc_opt_class());
  v24 = objc_msgSend_context(self, v20, v21, v22, v23);
  v29 = objc_msgSend_range(self, v25, v26, v27, v28);
  v32 = objc_msgSend_regionFromRange_(TSTCellRegion, v30, v29, v30, v31);
  v34 = objc_msgSend__initWithContext_fromSourceInfo_cellRegion_tableModel_waitForCalcEngine_formulaCoordSpace_(v19, v33, v24, self, v32, v18, 0, 0);

  objc_msgSend_p_bakeMixedCellStrokesIntoTable_outgoingTable_incomingTable_fraction_(self, v35, v34, self, v7, a3);

  return v34;
}

- (void)setPrimitiveGeometry:(id)a3
{
  v4 = a3;
  objc_msgSend_angle(v4, v5, v6, v7, v8);
  if (v13 != 0.0)
  {
    v14 = objc_msgSend_mutableCopy(v4, v9, v10, v11, v12);
    objc_msgSend_setAngle_(v14, v15, v16, v17, v18, 0.0);

    v4 = v14;
  }

  v28.receiver = self;
  v28.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v28 setGeometry:v4];
  v23 = objc_msgSend_partitioner(self, v19, v20, v21, v22);
  objc_msgSend_resetScaleToFit(v23, v24, v25, v26, v27);
}

- (void)setContentWritingDirection:(int64_t)a3
{
  v25 = objc_msgSend_tableStyle(self, a2, a3, v3, v4);
  v9 = objc_msgSend_intValueForProperty_(v25, v6, 798, v7, v8);
  if (v9 != NStoTSWPWritingDirection())
  {
    v10 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v11 = NStoTSWPWritingDirection();
    objc_msgSend_setIntValue_forProperty_(v10, v12, v11, 798, v13);
    v18 = objc_msgSend_stylesheet(v25, v14, v15, v16, v17);
    v21 = objc_msgSend_variationOfStyle_propertyMap_(v18, v19, v25, v10, v20);

    objc_msgSend_setTableStyle_(self, v22, v21, v23, v24);
  }
}

- (int64_t)contentWritingDirection
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_intValueForProperty_(v5, v6, 798, v7, v8);

  v10 = v9 == 1;
  if (v9 == -1)
  {
    v10 = 0;
  }

  if (v9 == 0x80000000)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

- (void)scaleInfoGeometry:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((*MEMORY[0x277CBF3A8] != a3.width || *(MEMORY[0x277CBF3A8] + 8) != a3.height) && (a3.width != 1.0 || a3.height != 1.0))
  {
    v62 = objc_msgSend_geometry(self, a2, v3, v4, v5);
    objc_msgSend_size(v62, v11, v12, v13, v14);
    v16 = v15;
    objc_msgSend_size(v62, v17, v18, v19, v20);
    v22 = v21;
    v23 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_position(v62, v24, v25, v26, v27);
    v29 = v28;
    v31 = v30;
    v36 = objc_msgSend_widthValid(v62, v32, v33, v34, v35);
    v41 = objc_msgSend_heightValid(v62, v37, v38, v39, v40);
    v46 = objc_msgSend_horizontalFlip(v62, v42, v43, v44, v45);
    v51 = objc_msgSend_verticalFlip(v62, v47, v48, v49, v50);
    objc_msgSend_angle(v62, v52, v53, v54, v55);
    valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v23, v56, v36, v41, v46, v51, v29, v31, width * v16, height * v22, v57);
    objc_msgSend_setPrimitiveGeometry_(self, v59, valid, v60, v61);
  }
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v20.receiver = self;
  v20.super_class = TSTTableInfo;
  v4 = [(TSTTableInfo *)&v20 childEnumerator];
  v9 = objc_msgSend_allRichTextStorages(self, v5, v6, v7, v8);
  v14 = objc_msgSend_objectEnumerator(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v15, v4, v16, v17, v14, 0);

  return v18;
}

- (id)childEnumeratorForUserFlags:(unint64_t)a3
{
  if ((a3 & 5) != 0)
  {
    v7.receiver = self;
    v7.super_class = TSTTableInfo;
    v5 = [(TSTTableInfo *)&v7 childEnumerator];
  }

  else
  {
    v5 = objc_msgSend_childEnumerator(self, a2, a3, v3, v4);
  }

  return v5;
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5 reservedCount:(unint64_t)a6
{
  v59 = a3;
  v9 = a4;
  v61 = objc_msgSend_documentStylesheet(v9, v10, v11, v12, v13);
  v60 = objc_msgSend_context(v9, v14, v15, v16, v17);
  v18 = objc_alloc(MEMORY[0x277CBEB18]);
  v19 = 6 - a6;
  v23 = objc_msgSend_initWithCapacity_(v18, v20, 6 - a6, v21, v22);
  if (objc_msgSend_isEqual_(v59, v24, *MEMORY[0x277D80BA8], v25, v26))
  {
    if (a6 != 6)
    {
      v31 = 0;
      do
      {
        v32 = objc_msgSend_colors(v9, v27, v28, v29, v30);
        v34 = objc_msgSend_createStylesInStylesheet_presetID_colors_alternate_(TSTTableStyleNetwork, v33, v61, v31, v32, a5);

        v35 = [TSTTableStylePreset alloc];
        v39 = objc_msgSend_initWithStyleNetwork_(v35, v36, v34, v37, v38);
        v44 = objc_msgSend_context(v39, v40, v41, v42, v43);

        if (v44 != v60)
        {
          v48 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "+[TSTTableInfo bootstrapPresetsOfKind:inTheme:alternate:reservedCount:]", v46, v47);
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v51, v52);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 3631, 0, "expected equality between %{public}s and %{public}s", "p.context", "context");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
        }

        objc_msgSend_addObject_(v23, v45, v39, v46, v47);

        ++v31;
      }

      while (v19 != v31);
    }

    objc_msgSend_setPresets_ofKind_(v9, v27, v23, v59, v30);
  }
}

- (NSSet)referencedStyles
{
  v5 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, a2, self, v2, v3);
  v10 = objc_msgSend_set(MEMORY[0x277D81258], v6, v7, v8, v9);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2210FEDEC;
  v40[3] = &unk_27845ED00;
  v11 = v10;
  v41 = v11;
  objc_msgSend_enumerateAllStylesWithBlock_(v5, v12, v40, v13, v14);
  objc_msgSend_addReferencedStylesToSet_(self->_tableModel, v15, v11, v16, v17);
  objc_msgSend_addReferencedStylesToSet_(self->_summaryModel, v18, v11, v19, v20);
  if (objc_msgSend_isAPivotTable(self, v21, v22, v23, v24))
  {
    objc_msgSend_addReferencedStylesToSet_(self->_pivotDataModel, v25, v11, v26, v27);
  }

  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_2210FEDF8;
  v38 = &unk_27845E490;
  v28 = v11;
  v39 = v28;
  v29 = MEMORY[0x223DA1C10](&v35);
  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v30, v29, v31, v32, v35, v36, v37, v38);
  v33 = v28;

  return v28;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v5, self, v6, v7);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v13 = objc_msgSend_context(self, v9, v10, v11, v12);
  v18 = objc_msgSend_presetID(v8, v14, v15, v16, v17);
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_2210FF04C;
  v38 = &unk_27845ED28;
  v19 = v4;
  v39 = v19;
  v40 = &v41;
  v21 = objc_msgSend_networkWithContext_presetID_styleProvider_styleMorphingBlock_(TSTTableStyleNetwork, v20, v13, v18, v8, &v35);

  if (*(v42 + 24) == 1)
  {
    objc_msgSend_setStyleNetwork_(self, v22, v21, v23, v24, v35, v36, v37, v38);
  }

  objc_msgSend_replaceReferencedStylesUsingBlock_(self->_tableModel, v22, v19, v23, v24, v35, v36, v37, v38);
  objc_msgSend_replaceReferencedStylesUsingBlock_(self->_summaryModel, v25, v19, v26, v27);
  if (objc_msgSend_isAPivotTable(self, v28, v29, v30, v31))
  {
    objc_msgSend_replaceReferencedStylesUsingBlock_(self->_pivotDataModel, v32, v19, v33, v34);
  }

  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v32, v19, v33, v34);

  _Block_object_dispose(&v41, 8);
}

- (void)setInsertionCenterPosition:(CGPoint)a3
{
  v39 = objc_msgSend_geometry(self, a2, v3, v4, v5);
  objc_msgSend_size(v39, v7, v8, v9, v10);
  TSURectWithCenterAndSize();
  MaxX = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v23 = objc_msgSend_geometry(self, v19, v20, v21, v22);
  v40 = objc_msgSend_mutableCopy(v23, v24, v25, v26, v27);

  if (objc_msgSend_tableWritingDirection(self, v28, v29, v30, v31) == 1)
  {
    v42.origin.x = MaxX;
    v42.origin.y = v14;
    v42.size.width = v16;
    v42.size.height = v18;
    MaxX = CGRectGetMaxX(v42);
  }

  objc_msgSend_setPosition_(v40, v32, v33, v34, v35, MaxX, v14);
  objc_msgSend_setGeometry_(self, v36, v40, v37, v38);
}

- (id)geometryForRTLTableWithGeometry:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_tableWritingDirection(self, v5, v6, v7, v8);
  v14 = v4;
  if (v9 == 1)
  {
    objc_msgSend_position(v4, v10, v11, v12, v13);
    v16 = v15;
    objc_msgSend_size(v4, v17, v18, v19, v20);
    v22 = v21;
    objc_msgSend_position(v4, v23, v24, v25, v26);
    v28 = v27;
    v29 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_size(v4, v30, v31, v32, v33);
    v14 = objc_msgSend_initWithPosition_size_(v29, v34, v35, v36, v37, v16 + v22, v28, v38, v39);
  }

  return v14;
}

- (id)typeName
{
  v5 = sub_2214AAEA8(self, a2, v2, v3, v4);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Table", &stru_2834BADA0, @"TSTables");

  return v7;
}

- (void)setHasReference:(BOOL)a3
{
  if (self->_hasReference != a3)
  {
    self->_hasReference = a3;
  }
}

- (void)p_initializeDefaultHeight:(double)a3 andWidth:(double)a4
{
  v64 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, v4, v5, v6);
  v14 = objc_msgSend_numberOfRows(self, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfColumns(self, v15, v16, v17, v18);
  objc_msgSend_computeDefaultFontHeightForTableStyleArea_(self, v20, 1, v21, v22);
  v28 = v27;
  if (a3 / v14 >= v27)
  {
    v29 = a3 / v14;
  }

  else
  {
    v29 = v27;
  }

  objc_msgSend_setDefaultRowHeight_(self, v23, v24, v25, v26, v27);
  v34 = a4 / v19;
  if (v34 < 8.0)
  {
    v34 = 8.0;
  }

  objc_msgSend_setDefaultColumnWidth_(self, v30, v31, v32, v33, v34);
  v39 = objc_msgSend_supportsAutoResizedTables(v64, v35, v36, v37, v38);
  if (v29 > v28)
  {
    v43 = v39;
  }

  else
  {
    v43 = 0;
  }

  if (v43 == 1 && v14 != 0)
  {
    v45 = 0;
    do
    {
      objc_msgSend_setHeight_ofRowAtIndex_(self, v40, v45, v41, v42, v29);
      v45 = (v45 + 1);
    }

    while (v14 != v45);
  }

  if (v29 * v14 != a3)
  {
    v46 = objc_alloc(MEMORY[0x277D802E8]);
    v51 = objc_msgSend_geometry(self, v47, v48, v49, v50);
    objc_msgSend_position(v51, v52, v53, v54, v55);
    v60 = objc_msgSend_initWithPosition_size_(v46, v56, v57, v58, v59);

    objc_msgSend_setPrimitiveGeometry_(self, v61, v60, v62, v63);
  }
}

- (void)didReplaceTextsInStoragesWithPlaceHolderString
{
  v18 = objc_msgSend_dupContentCache(self->_layoutEngine, a2, v2, v3, v4);
  objc_msgSend_removeAllObjects(v18, v6, v7, v8, v9);

  v19 = objc_msgSend_cellIDToWPColumnCache(self->_layoutEngine, v10, v11, v12, v13);
  objc_msgSend_removeAllObjects(v19, v14, v15, v16, v17);
}

- (void)prepareForPasteWithSourceOffset:(TSUColumnRowOffset)a3 bakeFormulas:(BOOL)a4
{
  v5 = a4;
  v8 = objc_msgSend_documentRoot(self, a2, *&a3, a4, v4);
  v14 = objc_msgSend_calculationEngine(v8, v9, v10, v11, v12);

  objc_msgSend_prepareForPasteWithCalculationEngine_sourceOffset_bakeFormulas_(self->_tableModel, v13, v14, *&a3, v5);
}

+ (BOOL)validateNewName:(id)a3 forTable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10);
  if (objc_msgSend_conformsToProtocol_(v11, v12, &unk_283599058, v13, v14))
  {
    v72 = &unk_283599058;
    v19 = TSUProtocolCast();
    if (!v19)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSTTableInfo validateNewName:forTable:]", v17, v18, &unk_283599058);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 4274, 0, "Unable to get sheetNameProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    v31 = objc_msgSend_baseTableModel(v6, v15, v16, v17, v18, v72);
    v35 = objc_msgSend_resolverContainerNameForResolver_(v19, v32, v31, v33, v34);

    v38 = objc_msgSend_resolverContainerForName_caseSensitive_(v19, v36, v35, 1, v37);
    v42 = objc_msgSend_resolverMatchingName_(v38, v39, v5, v40, v41);
    v47 = v42;
    if (v42 && (v48 = objc_msgSend_resolverUID(v42, v43, v44, v45, v46), v50 = v49, v48 == objc_msgSend_tableUID(v6, v49, v51, v52, v53)) && v50 == v43)
    {
      v55 = objc_msgSend_tableName(v6, v43, v54, v45, v46);
      v59 = objc_msgSend_caseInsensitiveCompare_(v55, v56, v5, v57, v58);

      v64 = objc_msgSend_tableName(v6, v60, v61, v62, v63);
      v68 = objc_msgSend_compare_(v64, v65, v5, v66, v67);

      if (v59)
      {
        v69 = 1;
      }

      else
      {
        v69 = v68 == 0;
      }

      LOBYTE(v70) = !v69;
    }

    else
    {
      v70 = objc_msgSend_resolverNameIsUsed_(v38, v43, v5, v45, v46) ^ 1;
    }
  }

  else
  {
    LOBYTE(v70) = 1;
  }

  return v70;
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)a3 objectComparisonBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self != v6)
  {
    objc_opt_class();
    v12 = TSUDynamicCast();
    if (v12)
    {
      v13 = objc_msgSend_geometry(self, v8, v9, v10, v11);
      objc_msgSend_position(v13, v14, v15, v16, v17);
      v19 = v18;
      v21 = v20;
      v26 = objc_msgSend_geometry(v12, v22, v23, v24, v25);
      objc_msgSend_position(v26, v27, v28, v29, v30);
      v32 = v31;
      v34 = v33;

      if (v19 == v32 && v21 == v34)
      {
        v40 = objc_msgSend_range(self, v35, v36, v37, v38);
        v42 = v41;
        v46 = objc_msgSend_range(v12, v41, v43, v44, v45);
        if (v40 == v46)
        {
          v51 = 0;
          if (((v46 ^ v40) & 0x101FFFF00000000) != 0 || v42 != v47)
          {
            goto LABEL_42;
          }

          v52 = objc_msgSend_bodyRange(self, v47, v48, v49, v50);
          v54 = v53;
          v58 = objc_msgSend_bodyRange(v12, v53, v55, v56, v57);
          if (v52 == v58)
          {
            v51 = 0;
            if (((v58 ^ v52) & 0x101FFFF00000000) != 0 || v54 != v59)
            {
              goto LABEL_42;
            }

            v63 = objc_msgSend_bodyColumnRange(self, v59, v60, v61, v62);
            v65 = v64;
            v69 = objc_msgSend_bodyColumnRange(v12, v64, v66, v67, v68);
            if (v63 == v69)
            {
              v51 = 0;
              if (((v69 ^ v63) & 0x101FFFF00000000) != 0 || v65 != v70)
              {
                goto LABEL_42;
              }

              v74 = objc_msgSend_bodyRowRange(self, v70, v71, v72, v73);
              v76 = v75;
              v80 = objc_msgSend_bodyRowRange(v12, v75, v77, v78, v79);
              if (v74 == v80)
              {
                v51 = 0;
                if (((v80 ^ v74) & 0x101FFFF00000000) != 0 || v76 != v81)
                {
                  goto LABEL_42;
                }

                v85 = objc_msgSend_headerRowRange(self, v81, v82, v83, v84);
                v87 = v86;
                v91 = objc_msgSend_headerRowRange(v12, v86, v88, v89, v90);
                if (v85 == v91)
                {
                  v51 = 0;
                  if (((v91 ^ v85) & 0x101FFFF00000000) != 0 || v87 != v92)
                  {
                    goto LABEL_42;
                  }

                  v96 = objc_msgSend_footerRowRange(self, v92, v93, v94, v95);
                  v98 = v97;
                  v102 = objc_msgSend_footerRowRange(v12, v97, v99, v100, v101);
                  if (v96 == v102)
                  {
                    v51 = 0;
                    if (((v102 ^ v96) & 0x101FFFF00000000) != 0 || v98 != v103)
                    {
                      goto LABEL_42;
                    }

                    v107 = objc_msgSend_headerColumnRange(self, v103, v104, v105, v106);
                    v109 = v108;
                    v113 = objc_msgSend_headerColumnRange(v12, v108, v110, v111, v112);
                    if (v107 == v113)
                    {
                      v51 = 0;
                      if (((v113 ^ v107) & 0x101FFFF00000000) != 0 || v109 != v114)
                      {
                        goto LABEL_42;
                      }

                      v118 = objc_msgSend_rowHeights(self, v114, v115, v116, v117);
                      v123 = objc_msgSend_rowHeights(v12, v119, v120, v121, v122);
                      if (sub_221100234(v123, v118, v123))
                      {
                        v128 = objc_msgSend_columnWidths(self, v124, v125, v126, v127);
                        v133 = objc_msgSend_columnWidths(v12, v129, v130, v131, v132);
                        v134 = sub_221100234(v133, v128, v133);

                        if (v134)
                        {
                          v138 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v135, self, v136, v137);
                          v142 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v139, v12, v140, v141);
                          if (objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_objectComparisonBlock_(v138, v143, v142, v7, v144))
                          {
                            v149 = objc_msgSend_tableName(self, v145, v146, v147, v148);
                            v154 = objc_msgSend_tableName(v12, v150, v151, v152, v153);
                            if (objc_msgSend_isEqualToString_(v149, v155, v154, v156, v157) && (v162 = objc_msgSend_tableNameEnabled(self, v158, v159, v160, v161), v162 == objc_msgSend_tableNameEnabled(v12, v163, v164, v165, v166)) && (objc_msgSend_tableNameHeight(self, v167, v168, v169, v170), v172 = v171, objc_msgSend_tableNameHeight(v12, v173, v174, v175, v176), v172 == v181) && (v182 = objc_msgSend_tableNameBorderEnabled(self, v177, v178, v179, v180), v182 == objc_msgSend_tableNameBorderEnabled(v12, v183, v184, v185, v186)))
                            {
                              v327 = objc_msgSend_tableNameBorderStroke(self, v187, v188, v189, v190);
                              v196 = objc_msgSend_tableNameBorderStroke(v12, v192, v193, v194, v195);
                              isEqual = objc_msgSend_isEqual_(v327, v197, v196, v198, v199);

                              if (isEqual)
                              {
                                hasTableBorder = objc_msgSend_hasTableBorder(self, v200, v201, v202, v203);
                                if (hasTableBorder == objc_msgSend_hasTableBorder(v12, v205, v206, v207, v208))
                                {
                                  hasAlternatingRows = objc_msgSend_hasAlternatingRows(self, v209, v210, v211, v212);
                                  if (hasAlternatingRows == objc_msgSend_hasAlternatingRows(v12, v214, v215, v216, v217))
                                  {
                                    v222 = objc_msgSend_numberOfHiddenRows(self, v218, v219, v220, v221);
                                    if (v222 == objc_msgSend_numberOfHiddenRows(v12, v223, v224, v225, v226))
                                    {
                                      v231 = objc_msgSend_numberOfUserHiddenRows(self, v227, v228, v229, v230);
                                      if (v231 == objc_msgSend_numberOfUserHiddenRows(v12, v232, v233, v234, v235))
                                      {
                                        v240 = objc_msgSend_numberOfHiddenColumns(self, v236, v237, v238, v239);
                                        if (v240 == objc_msgSend_numberOfHiddenColumns(v12, v241, v242, v243, v244))
                                        {
                                          v249 = objc_msgSend_numberOfUserHiddenColumns(self, v245, v246, v247, v248);
                                          if (v249 == objc_msgSend_numberOfUserHiddenColumns(v12, v250, v251, v252, v253))
                                          {
                                            v321 = objc_msgSend_cellIteratorWithFlags_searchFlags_(self, v254, 2, 0x20000000, v255);
                                            v320 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v12, v256, 2, 0x20000000, v257);
                                            v261 = 0;
                                            v262 = 0;
                                            v319 = (v7 + 2);
                                            while (1)
                                            {
                                              v330 = v261;
                                              NextCellData = objc_msgSend_getNextCellData_(v321, v258, &v330, v259, v260, v319);
                                              v328 = v330;

                                              if (!NextCellData)
                                              {
                                                v51 = 1;

                                                goto LABEL_82;
                                              }

                                              v329 = v262;
                                              v267 = objc_msgSend_getNextCellData_(v320, v264, &v329, v265, v266);
                                              v326 = v329;

                                              if (!v267)
                                              {
                                                v51 = 1;
                                                goto LABEL_81;
                                              }

                                              v272 = objc_msgSend_cellID(v328, v268, v269, v270, v271);
                                              v277 = objc_msgSend_cellID(v326, v273, v274, v275, v276);
                                              if (v272 != v277)
                                              {
                                                break;
                                              }

                                              if (((v277 ^ v272) & 0xFFFF00000000) != 0)
                                              {
                                                break;
                                              }

                                              v282 = objc_msgSend_mergeRange(v328, v278, v279, v280, v281);
                                              v284 = v283;
                                              v288 = objc_msgSend_mergeRange(v326, v283, v285, v286, v287);
                                              if (v282 != v288 || ((v288 ^ v282) & 0x101FFFF00000000) != 0 || v284 != v289)
                                              {
                                                break;
                                              }

                                              v324 = objc_msgSend_cell(v328, v289, v290, v291, v292);
                                              v323 = objc_msgSend_cell(v326, v293, v294, v295, v296);
                                              if ((objc_msgSend_hasEqualContentToCell_usingRichTextObjectComparisonBlock_(v324, v297, v323, v7, v298) & 1) == 0)
                                              {
                                                goto LABEL_79;
                                              }

                                              v303 = objc_msgSend_cellStyle(v324, v299, v300, v301, v302);
                                              v322 = objc_msgSend_cellStyle(v323, v304, v305, v306, v307);
                                              v312 = objc_msgSend_textStyle(v324, v308, v309, v310, v311);
                                              v317 = objc_msgSend_textStyle(v323, v313, v314, v315, v316);
                                              v318 = v317;
                                              if (!v303 && v322)
                                              {
                                                v303 = 0;
LABEL_78:

LABEL_79:
                                                break;
                                              }

                                              if (v303 && !v322)
                                              {
                                                v322 = 0;
                                                goto LABEL_78;
                                              }

                                              if (!v312 && v317)
                                              {
                                                v312 = 0;
                                                goto LABEL_78;
                                              }

                                              if (v312 && !v317 || v303 && (v7[2](v7, v303, v322) & 1) == 0 || v312 && !v7[2](v7, v312, v318))
                                              {
                                                goto LABEL_78;
                                              }

                                              v262 = v326;
                                              v261 = v328;
                                            }

                                            v51 = 0;
LABEL_81:

LABEL_82:
                                            goto LABEL_38;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            else
                            {
                            }
                          }

                          v51 = 0;
LABEL_38:

LABEL_42:
                          goto LABEL_43;
                        }
                      }

                      else
                      {
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v51 = 0;
    goto LABEL_42;
  }

  v51 = 1;
LABEL_43:

  return v51;
}

+ (void)performRewritesForInsertedTableInfos:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = a3;
  v5 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v36, v40, 16);
  if (v10)
  {
    v11 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        if (!v5)
        {
          v5 = objc_msgSend_calcEngine(*(*(&v36 + 1) + 8 * v12), v6, v7, v8, v9);
        }

        v14 = [TSTFormulaRewriteSpec alloc];
        v35[0] = objc_msgSend_tableUID(v13, v15, v16, v17, v18);
        v35[1] = v19;
        v34[0] = objc_msgSend_fromTableUID(v13, v19, v20, v21, v22);
        v34[1] = v23;
        v25 = objc_msgSend_initWithOwnerInsertion_fromOwnerUID_(v14, v23, v35, v34, v24);
        v30 = objc_msgSend_baseTableModel(v13, v26, v27, v28, v29);
        objc_msgSend_willModifyTable_uidResolver_calcEngine_(v25, v31, v30, v30, v5);
        objc_msgSend_didModifyTable_calcEngine_(v25, v32, v30, v5, v33);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v36, v40, 16);
    }

    while (v10);
  }
}

+ (void)ensureAllTablesAreRegisteredInDocumentRoot:(id)a3
{
  v191 = *MEMORY[0x277D85DE8];
  v174 = a3;
  v7 = objc_msgSend_calculationEngine(v174, v3, v4, v5, v6);
  v177 = objc_msgSend_allOwnersRegistered(v7, v8, v9, v10, v11);
  if ((objc_msgSend_shouldForceRegisterAllTables(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v24 = objc_msgSend_loadFromFileVersion(v7, v16, v17, v18, v19) >= *MEMORY[0x277D80968] ? v177 : 0;
    if (v24)
    {
      goto LABEL_52;
    }
  }

  v175 = objc_opt_new();
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = objc_msgSend_modelEnumeratorForObjectsConformingToProtocol_(v174, v25, &unk_2835174A8, v26, v27);
  v29 = 0;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v185, v190, 16);
  if (!v34)
  {
    goto LABEL_40;
  }

  v178 = *v186;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v186 != v178)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v185 + 1) + 8 * i);
      if (objc_msgSend_registerLast(v36, v30, v31, v32, v33))
      {
        objc_msgSend_addObject_(v175, v37, v36, v38, v39);
        continue;
      }

      objc_opt_class();
      v44 = TSUDynamicCast();
      if (!v44)
      {
        v100 = objc_msgSend_formulaOwnerUID(v36, v40, v41, v42, v43);
        if ((objc_msgSend_ownerIsRegistered_(v7, v101, v100, v101, v102) & 1) == 0)
        {
          v107 = objc_msgSend_ownerKind(v36, v103, v104, v105, v106);
          objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v36, v108, v7, v107, v109);
        }

        goto LABEL_37;
      }

      if ((v177 & 1) == 0)
      {
        objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v36, v40, v7, 1, v43);
      }

      v184._lower = 0;
      v184._upper = 0;
      v184._lower = objc_msgSend_tableUID(v44, v40, v41, v42, v43);
      v184._upper = v45;
      v50 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v45, v184._lower, v45, v7);
      if (v50 != v44)
      {
        if ((v29 & 1) == 0)
        {
          objc_msgSend_willModify(v7, v46, v47, v48, v49);
        }

        v51 = objc_msgSend_tableName(v44, v46, v47, v48, v49);
        v56 = objc_msgSend_ownerUIDMapper(v44, v52, v53, v54, v55);
        objc_msgSend_setFormulaOwnerUIDsWithMap_shouldStealReferences_(v44, v57, v56, 0, v58);
        v63 = objc_msgSend_ownerUIDMap(v56, v59, v60, v61, v62);
        objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_bakeForBadRefs_(v44, v64, v63, v7, 1);
        if (objc_msgSend_conformsToProtocol_(v174, v65, &unk_283599058, v66, v67))
        {
          v172 = &unk_283599058;
          v72 = TSUProtocolCast();
          if (v72 && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_isPendingTableNameUniquification(v72, v73, v74, v75, v76, &unk_283599058) & 1) == 0))
          {
            v77 = objc_msgSend_baseTableModel(v44, v73, v74, v75, v76, v172);
            v81 = objc_msgSend_resolverContainerNameForResolver_(v72, v78, v77, v79, v80);

            v86 = objc_msgSend_resolverContainerForName_caseSensitive_(v174, v82, v81, 1, v83);
            if (v86)
            {
              objc_msgSend_chooseUniqueNameInContainer_forPaste_(v44, v84, v86, 1, v85);
            }
          }
        }

        v183._lower = 0;
        v183._upper = 0;
        v183._lower = objc_msgSend_tableUID(v44, v68, v69, v70, v71, v172);
        v183._upper = v87;
        v91 = objc_msgSend_tableName(v44, v87, v88, v89, v90);
        v92 = TSKUIDStruct::description(&v184);
        v93 = TSKUIDStruct::description(&v183);
        NSLog(&cfstr_TableinfoPWith.isa, v44, v51, v92, v91, v93);

        if (!objc_msgSend_registerWithCalcEngine_(v44, v94, v7, v95, v96))
        {
          objc_msgSend_setCalcEngine_(v44, v97, v7, v98, v99);

          v29 = 1;
LABEL_34:
          objc_msgSend_resetSortRuleReferenceTrackerForInsert(v44, v46, v47, v48, v49);
          v114 = objc_msgSend_tableUID(v44, v110, v111, v112, v113);
          objc_msgSend_markOwnerAsDirty_(v7, v115, v114, v115, v116);
          objc_msgSend_registerAllFormulasWithCalculationEngine_(v44, v117, v7, v118, v119);
          v124 = objc_msgSend_headerNameMgr(v7, v120, v121, v122, v123);
          objc_msgSend_beginTrackingNamesInTable_(v124, v125, &v184, v126, v127);

          v132 = objc_msgSend_baseTableModel(v44, v128, v129, v130, v131);
          hasNamesInHeaders = objc_msgSend_hasNamesInHeaders(v132, v133, v134, v135, v136);

          if (hasNamesInHeaders)
          {
            v183._lower = objc_msgSend_tableUID(v44, v138, v139, v140, v141);
            v183._upper = v142;
            objc_msgSend_beginTrackingNamesInTableForLegacyNRM_(v7, v142, &v183, v143, v144);
          }

          goto LABEL_36;
        }

        v29 = 1;
      }

      if ((v177 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_36:

LABEL_37:
    }

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v185, v190, 16);
  }

  while (v34);
LABEL_40:

  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v145 = v175;
  v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v146, &v179, v189, 16);
  if (v151)
  {
    v152 = *v180;
    do
    {
      for (j = 0; j != v151; ++j)
      {
        if (*v180 != v152)
        {
          objc_enumerationMutation(v145);
        }

        v154 = *(*(&v179 + 1) + 8 * j);
        v155 = objc_msgSend_formulaOwnerUID(v154, v147, v148, v149, v150);
        if ((objc_msgSend_ownerIsRegistered_(v7, v156, v155, v156, v157) & 1) == 0)
        {
          v158 = objc_msgSend_ownerKind(v154, v147, v148, v149, v150);
          objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v154, v159, v7, v158, v160);
        }
      }

      v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v145, v147, &v179, v189, 16);
    }

    while (v151);
  }

  if (v29)
  {
    objc_msgSend_scheduleDetectAndRepairConsistencyViolations(v7, v161, v162, v163, v164);
  }

LABEL_52:
  if ((objc_msgSend_needsSubOwnerIDUpgrade(v7, v20, v21, v22, v23) & 1) != 0 || objc_msgSend_loadFromFileVersion(v7, v165, v166, v167, v168) <= 0xB000200000005)
  {
    objc_msgSend_upgradeSubOwnerUidForMapperOnCalcEngine_(a1, v165, v7, v167, v168);
    objc_msgSend_setNeedsSubOwnerIDUpgrade_(v7, v169, 0, v170, v171);
  }
}

- (id)commentHostingAtCellID:(TSUCellCoord)a3 forCommentStorage:(id)a4
{
  v4 = objc_msgSend_commentHostingAtCellID_forCommentStorage_updateCommentMaps_(self, a2, *&a3, a4, 1);

  return v4;
}

- (id)commentHostingAtCellID:(TSUCellCoord)a3 forCommentStorage:(id)a4 updateCommentMaps:(BOOL)a5
{
  v5 = objc_msgSend_commentHostingAtCellID_forCommentStorage_updateCommentMaps_(self->_translator, a2, *&a3, a4, a5);

  return v5;
}

- (id)allAnnotations
{
  v7 = objc_msgSend_numberOfComments(self, a2, v2, v3, v4);
  if (v7)
  {
    v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v7, v8, v9);
    v11 = [TSTConcurrentCellIterator alloc];
    v13 = objc_msgSend_initWithTableInfo_flags_searchFlags_(v11, v12, self, 0, 4096);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_221100EA0;
    v19[3] = &unk_27845ED50;
    v19[4] = self;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221101018;
    v17[3] = &unk_27845EDE8;
    v17[4] = self;
    v14 = v10;
    v18 = v14;
    objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v13, v15, v19, &unk_2834A1D60, v17);
  }

  else
  {
    v14 = 0;
  }

  objc_msgSend_setCachedAllAnnotations_(self, v6, 1, v8, v9);

  return v14;
}

- (id)annotationWithUUID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v13 = objc_msgSend_initWithUUIDString_(v5, v6, v4, v7, v8);
  if (v13)
  {
    if ((objc_msgSend_cachedAllAnnotations(self, v9, v10, v11, v12) & 1) == 0)
    {
      v18 = objc_msgSend_allAnnotations(self, v14, v15, v16, v17);
    }

    v19 = objc_msgSend_cachedCommentHostingForAnnotationUUID_(self->_translator, v14, v13, v16, v17);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableInfo annotationWithUUID:]", v11, v12);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 4721, 0, "Given UUID is not a valid UUID: %@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v19 = 0;
  }

  return v19;
}

- (void)setStyleNetwork:(id)a3
{
  v10 = a3;
  objc_msgSend_setStyleNetwork_(self->_tableModel, v4, v10, v5, v6);
  if (self->_isAPivotTable)
  {
    objc_msgSend_setStyleNetwork_(self->_pivotDataModel, v7, v10, v8, v9);
  }
}

- (void)setTableStyle:(id)a3
{
  v10 = a3;
  objc_msgSend_setTableStyle_(self->_tableModel, v4, v10, v5, v6);
  if (self->_isAPivotTable)
  {
    objc_msgSend_setTableStyle_(self->_pivotDataModel, v7, v10, v8, v9);
  }
}

- (void)loadAllLazyReferences
{
  objc_msgSend_loadAllLazyReferences(self->_tableModel, a2, v2, v3, v4);
  objc_msgSend_loadAllLazyReferences(self->_summaryModel, v6, v7, v8, v9);
  if (self->_isAPivotTable)
  {
    pivotDataModel = self->_pivotDataModel;

    objc_msgSend_loadAllLazyReferences(pivotDataModel, v10, v11, v12, v13);
  }
}

+ (void)upgradeTablesIfNeeded:(unint64_t)a3 forDocumentRoot:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v10 = objc_msgSend_calculationEngine(v5, v6, v7, v8, v9);
  objc_msgSend_beginUpgradingFormulasMode(v10, v11, v12, v13, v14);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = objc_opt_class();
  v19 = objc_msgSend_modelEnumeratorForObjectsOfClass_(v5, v16, v15, v17, v18, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v38, 16);
  if (v21)
  {
    v22 = *v35;
    do
    {
      v23 = 0;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(v24, v26, a3, v27, v28);
        objc_autoreleasePoolPop(v25);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v29, &v34, v38, 16);
    }

    while (v21);
  }

  objc_msgSend_scheduleDetectAndRepairConsistencyViolations(v10, v30, v31, v32, v33);
}

- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)a3
{
  if (objc_msgSend_isAPivotTable(self, a2, a3, v3, v4))
  {
    objc_msgSend_setUpgradeShouldSuppressFormulaWarnings_(self->_tableModel, v7, 1, v8, v9);
  }

  objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(self->_tableModel, v7, a3, v8, v9);
  objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(self->_summaryModel, v10, a3, v11, v12);
  if (objc_msgSend_isAPivotTable(self, v13, v14, v15, v16))
  {
    objc_msgSend_setUpgradeShouldSuppressFormulaWarnings_(self->_pivotDataModel, v17, 1, v19, v20);
    objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(self->_pivotDataModel, v21, a3, v22, v23);
  }

  if (*MEMORY[0x277D808D0] > a3)
  {
    self->_needsFilterSetUpdated = 1;
  }

  if (objc_msgSend_isCategorized(self, v17, v18, v19, v20))
  {
    if (a3 > 0xC000000000005 || *MEMORY[0x277D808F0] > a3)
    {
      p_resetGroupingsOnUpgrade = &self->_resetGroupingsOnUpgrade;
      if (a3 > 0xF000000000001)
      {
        if (!*p_resetGroupingsOnUpgrade)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
      p_resetGroupingsOnUpgrade = &self->_resetGroupingsOnUpgrade;
    }

    *p_resetGroupingsOnUpgrade = 1;
LABEL_13:
    if (objc_msgSend_isRegisteredWithCalcEngine(self, v24, v25, v26, v27))
    {
      v30 = objc_msgSend_groupBy(self, v24, v29, v26, v27);
      v35 = objc_msgSend_groupingColumnListCopy(v30, v31, v32, v33, v34);
      objc_msgSend_applyGroupingColumns_(self, v36, v35, v37, v38);

      objc_msgSend_setIsCategoryEnabled_(self, v39, 1, v40, v41);
      v46 = objc_msgSend_summaryModel(self, v42, v43, v44, v45);
      objc_msgSend_setNeedsFormulaReset_(v46, v47, 1, v48, v49);

      v54 = objc_msgSend_summaryModel(self, v50, v51, v52, v53);
      objc_msgSend_resetForCategoriesWithForce_(v54, v55, 1, v56, v57);

      objc_msgSend_resetViewMap(self, v58, v59, v60, v61);
      self->_resetGroupingsOnUpgrade = 0;
    }
  }

LABEL_16:

  objc_msgSend__correctAndCheckStateSuppressingAssertions_(self, v24, 1, v26, v27);
}

- (void)setDrawableIsBeingCopied:(BOOL)a3
{
  v6 = objc_msgSend_calcEngine(self, a2, a3, v3, v4);

  if (v6)
  {
    v15 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
    objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v15, v11, v12, v13, v14, 0.2);
  }
}

- (void)bakeFormulas
{
  v5 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, a2, 0, v2, v3);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2211019F4;
  v18 = &unk_27845E3A8;
  v19 = self;
  v6 = v5;
  v20 = v6;
  objc_msgSend_iterateCellsWithFlags_searchFlags_usingBlock_(self, v7, 2, 0x20000, &v15);
  v12 = objc_msgSend_calcEngine(self, v8, v9, v10, v11, v15, v16, v17, v18, v19);
  v13 = v12 == 0;

  objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self, v14, v6, v13, 0);
}

- (int)writingDirectionForCellwithTableDefault:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4 || (v10 = objc_msgSend_writingDirection(v4, v5, v6, v7, v8), v10 == -1))
  {
    v10 = objc_msgSend_tableWritingDirection(self, v5, v6, v7, v8) == 1;
  }

  return v10;
}

- (void)applyWritingDirection:(int)a3 toCell:(id)a4 cellID:(TSUCellCoord)a5
{
  v6 = *&a3;
  v58 = a4;
  if (objc_msgSend_writingDirectionForCellwithTableDefault_(self, v8, v58, v9, v10) != v6)
  {
    if (objc_msgSend_valueType(v58, v11, v12, v13, v14) == 9)
    {
      v19 = objc_msgSend_richTextValue(v58, v15, v16, v17, v18);
      v24 = objc_msgSend_context(self, v20, v21, v22, v23);
      v28 = objc_msgSend_copyWithContext_(v19, v25, v24, v26, v27);

      v33 = objc_msgSend_range(v28, v29, v30, v31, v32);
      objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v28, v34, v6, v33, v34, 0);
      objc_msgSend_setRichTextValue_(v58, v35, v28, v36, v37);
    }

    else
    {
      v38 = objc_msgSend_textStyleAtCellID_isDefault_(self, v15, *&a5, 0, v18);
      v42 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v39, 44, v40, v41, v6, 0);
      v47 = objc_msgSend_documentRoot(self, v43, v44, v45, v46);
      v52 = objc_msgSend_stylesheet(v47, v48, v49, v50, v51);
      v28 = objc_msgSend_variationOfStyle_propertyMap_(v52, v53, v38, v42, v54);

      objc_msgSend_setTextStyle_(v58, v55, v28, v56, v57);
    }
  }
}

- (void)modifiedTextPropertiesForCategoryOrPivotCellAtCellID:(TSUCellCoord)a3 wraps:(BOOL *)a4 padding:(id *)a5 alignment:(int *)a6
{
  v11 = objc_msgSend_tableWritingDirection(self, a2, *&a3, a4, a5);
  v12 = v11 != 0;
  if (!objc_msgSend_isCategorized(self, v13, v14, v15, v16))
  {
    if (!objc_msgSend_isAPivotTable(self, v17, v18, v19, v20))
    {
      return;
    }

    if (objc_msgSend_hasGroupingArrowAtCellID_(self, v35, *&a3, v36, v37))
    {
      v42 = 1;
      if (!a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v115.origin = objc_msgSend_headerColumnRange(self, v38, v39, v40, v41);
      v115.size = v69;
      v70 = a3;
      if ((TSUCellRect::contains(&v115, v70) & 1) == 0)
      {
        goto LABEL_35;
      }

      v114 = objc_msgSend_pivotOwner(self, v38, v71, v40, v41);
      v75 = objc_msgSend_pivotOptionsForRowGroupsAtLevel_(v114, v72, (LOBYTE(a3.column) + 1), v73, v74);
      if (objc_msgSend_repeatLabels(v75, v76, v77, v78, v79))
      {
        v84 = objc_msgSend_indexesForNonSummaryBodyRows(self, v80, v81, v82, v83);
        v42 = objc_msgSend_containsIndex_(v84, v85, a3.row, v86, v87);
      }

      else
      {
        v42 = 0;
      }

      if (!a5)
      {
        goto LABEL_35;
      }
    }

    if (v42)
    {
      v88 = sub_221446548(1);
      v89 = *a5;
      v90 = MEMORY[0x277D80EB0];
      objc_msgSend_topInset(v89, v91, v92, v93, v94);
      v100 = v99;
      v101 = v88;
      if (v11)
      {
        objc_msgSend_leftInset(v89, v95, v96, v97, v98);
        v101 = v102;
      }

      objc_msgSend_bottomInset(v89, v95, v96, v97, v98);
      v108 = v107;
      if (!v11)
      {
        objc_msgSend_rightInset(v89, v103, v104, v105, v106);
        v88 = v109;
      }

      v110 = objc_msgSend_paddingWithTopInset_leftInset_bottomInset_rightInset_(v90, v103, v104, v105, v106, v100, v101, v108, v88);

      v111 = v110;
      *a5 = v110;
    }

LABEL_35:
    if (a6)
    {
      if (objc_msgSend_isPivotTrailingAligned_(self, v38, *&a3, v40, v41))
      {
        v12 = v11 == 0;
LABEL_40:
        *a6 = v12;
        goto LABEL_41;
      }

      if (objc_msgSend_numberOfHeaderRows(self, v38, v112, v40, v41) > a3.row || objc_msgSend_numberOfHeaderColumns(self, v38, v113, v40, v41) > a3.column)
      {
        goto LABEL_40;
      }
    }

LABEL_41:
    if (!a4 || !objc_msgSend_isPivotUnwrapped_(self, v38, *&a3, v40, v41))
    {
      return;
    }

LABEL_43:
    *a4 = 0;
    return;
  }

  isCategoryGroupValueCell = objc_msgSend_isCategoryGroupValueCell_(self, v17, *&a3, v19, v20);
  isCategoryGroupValueLabelCell = objc_msgSend_isCategoryGroupValueLabelCell_(self, v22, *&a3, v23, v24);
  isSummaryOrLabelRow = objc_msgSend_isSummaryOrLabelRow_(self, v26, *&a3, v27, v28);
  if (isCategoryGroupValueCell)
  {
    if (!a5)
    {
      goto LABEL_19;
    }

    v33 = objc_msgSend_groupLevelAtRow_(self, v29, *&a3, v30, v31);
    v34 = sub_221446548(v33);
  }

  else
  {
    if (a5)
    {
      v43 = isCategoryGroupValueLabelCell;
    }

    else
    {
      v43 = 0;
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_19;
    }

    v44 = objc_msgSend_groupLevelAtRow_(self, v29, *&a3, v30, v31);
    v34 = sub_221446548(v44) - 7.0 - 7.0;
  }

  v45 = *a5;
  v46 = MEMORY[0x277D80EB0];
  objc_msgSend_topInset(v45, v47, v48, v49, v50);
  v56 = v55;
  v57 = v34;
  if (v11)
  {
    objc_msgSend_leftInset(v45, v51, v52, v53, v54);
    v57 = v58;
  }

  objc_msgSend_bottomInset(v45, v51, v52, v53, v54);
  v64 = v63;
  if (!v11)
  {
    objc_msgSend_rightInset(v45, v59, v60, v61, v62);
    v34 = v65;
  }

  v66 = objc_msgSend_paddingWithTopInset_leftInset_bottomInset_rightInset_(v46, v59, v60, v61, v62, v56, v57, v64, v34);

  v67 = v66;
  *a5 = v66;

LABEL_19:
  if (a4)
  {
    v68 = isSummaryOrLabelRow;
  }

  else
  {
    v68 = 0;
  }

  if (v68)
  {
    goto LABEL_43;
  }
}

- (void)getTextPropertiesWithCell:(id)a3 cellID:(TSUCellCoord)a4 wraps:(BOOL *)a5 alignment:(int *)a6 verticalAlignment:(int *)a7 padding:(id *)a8
{
  v47 = a3;
  isCategorized = objc_msgSend_isCategorized(self, v13, v14, v15, v16);
  isAPivotTable = objc_msgSend_isAPivotTable(self, v17, v18, v19, v20);
  if (a6)
  {
    v25 = objc_msgSend_effectiveTextStyle(v47, v21, v22, v23, v24);
    if (!v25)
    {
      v25 = objc_msgSend_defaultTextStyleForCellID_(self, v21, *&a4, v23, v24);
    }
  }

  else
  {
    v25 = 0;
  }

  if (a5 || a7 || a8)
  {
    v26 = objc_msgSend_cellStyle(v47, v21, v22, v23, v24);
    if (v26 || (objc_msgSend_cellStyleAtCellID_isDefault_(self, v21, *&a4, 0, v24), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (a7)
      {
        *a7 = 1;
        v27 = objc_msgSend_intValueForProperty_(v26, v21, 903, v23, v24);
        if (v27 != 0x80000000)
        {
          *a7 = v27;
        }
      }

      if (a5)
      {
        *a5 = 0;
        v28 = objc_msgSend_valueType(v47, v21, v22, v23, v24);
        if (v28 == 9 || v28 == 3)
        {
          v29 = objc_msgSend_intValueForProperty_(v26, v21, 896, v23, v24);
          if (v29 != 0x80000000)
          {
            *a5 = v29 != 0;
          }
        }
      }

      if (a8)
      {
        objc_opt_class();
        v33 = objc_msgSend_valueForProperty_(v26, v30, 904, v31, v32);
        v34 = TSUCheckedDynamicCast();

        if (v34)
        {
          v35 = v34;
          *a8 = v34;
        }

        if (!a6)
        {
          goto LABEL_45;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
    v26 = 0;
  }

  v34 = 0;
  if (!a6)
  {
    goto LABEL_45;
  }

LABEL_25:
  if (!v25)
  {
    goto LABEL_45;
  }

  v36 = objc_msgSend_tableWritingDirection(self, v21, v22, v23, v24) == 1;
  *a6 = v36;
  v40 = objc_msgSend_intValueForProperty_(v25, v37, 86, v38, v39);
  if (v40 == 0x80000000)
  {
    goto LABEL_45;
  }

  v41 = objc_msgSend_intValueForProperty_(v25, v21, 44, v23, v24);
  if (v41 == -1)
  {
    v41 = objc_msgSend_tableWritingDirection(self, v21, v22, v23, v24);
  }

  *a6 = v40;
  if (isCategorized && ((objc_msgSend_isCategoryGroupValueCell_(self, v21, *&a4, v23, v24) & 1) != 0 || objc_msgSend_isCategoryGroupValueLabelCell_(self, v21, *&a4, v23, v24)))
  {
    *a6 = v36;
    goto LABEL_45;
  }

  if (v40 != 4)
  {
    if (v40 == 3 && a5)
    {
      *a5 = 1;
    }

    goto LABEL_45;
  }

  if (isCategorized && objc_msgSend_isSummaryOrLabelRow_(self, v21, *&a4, v23, v24))
  {
    v42 = v41 != 1;
LABEL_44:
    *a6 = v42;
    goto LABEL_45;
  }

  if (v41 == 1)
  {
    v42 = 1;
    goto LABEL_44;
  }

  if (!v41)
  {
    *a6 = 0;
  }

LABEL_45:
  if (objc_msgSend_currentFormatUsesAccountingStyle(v47, v21, v22, v23, v24))
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }
  }

  if ((isCategorized | isAPivotTable))
  {
    objc_msgSend_modifiedTextPropertiesForCategoryOrPivotCellAtCellID_wraps_padding_alignment_(self, v43, *&a4, a5, a8, a6);
  }
}

- (id)duplicateFilterSet
{
  v6 = objc_msgSend_filterSet(self, a2, v2, v3, v4);
  v11 = objc_msgSend_context(self, v7, v8, v9, v10);
  v15 = objc_msgSend_copyWithContext_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)duplicateFilterSetInUidForm
{
  v6 = objc_msgSend_hiddenStates(self, a2, v2, v3, v4);
  v10 = objc_msgSend_duplicateFilterSetInUidFormWithTable_(v6, v7, self, v8, v9);

  return v10;
}

- (BOOL)needsFilterFormulaRewriteForImport
{
  v5 = objc_msgSend_filterSet(self, a2, v2, v3, v4);
  v10 = objc_msgSend_needsFormulaRewriteForImport(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)a3
{
  v5 = a3;
  v9 = objc_msgSend_filterSet(self, a2, a3, v3, v4);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v9, v6, v5, v7, v8);
}

- (void)enableFilterSet:(BOOL)a3
{
  v5 = a3;
  if (self->_pivotDataModel)
  {
    v7 = objc_msgSend_pivotOwner(self, a2, a3, v3, v4);
    v11 = objc_msgSend_hiddenStatesForPivotDataTable_(v7, v8, self->_pivotDataModel, v9, v10);
    objc_msgSend_enableFilterSet_(v11, v12, v5, v13, v14);
  }

  hiddenStates = self->_hiddenStates;

  objc_msgSend_enableFilterSet_(hiddenStates, a2, v5, v3, v4);
}

- (void)setFilterSetType:(int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_filterSet(self, a2, *&a3, v3, v4);
  v12 = objc_msgSend_context(self, v8, v9, v10, v11);
  v22 = objc_msgSend_copyWithContext_(v7, v13, v12, v14, v15);

  objc_msgSend_setFilterSetType_(v22, v16, v5, v17, v18);
  objc_msgSend_p_setFilterSet_(self, v19, v22, v20, v21);
}

- (BOOL)hasActiveFilters
{
  v10 = objc_msgSend_filterSet(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_filterSet(self, v6, v7, v8, v9);
    if (objc_msgSend_isEnabled(v11, v12, v13, v14, v15))
    {
      v20 = objc_msgSend_filterSet(self, v16, v17, v18, v19);
      v25 = objc_msgSend_ruleCount(v20, v21, v22, v23, v24) != 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)filterSetUpdated
{
  if (self->_isAPivotTable)
  {
    v14 = objc_msgSend_pivotOwner(self, a2, v2, v3, v4);
    objc_msgSend_filterSetUpdated(v14, v6, v7, v8, v9);
  }

  v15 = objc_msgSend_hiddenStates(self, a2, v2, v3, v4);
  objc_msgSend_filterSetUpdated(v15, v10, v11, v12, v13);
}

- (void)dirtyFilterState
{
  v9 = objc_msgSend_hiddenStates(self, a2, v2, v3, v4);
  objc_msgSend_dirtyFilterState(v9, v5, v6, v7, v8);
}

- (BOOL)hasFilterRulesInBaseColumns:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_hiddenStates(self, v5, v6, v7, v8);
  LOBYTE(self) = objc_msgSend_hasFilterRulesWithTable_inBaseColumns_(v9, v10, self, v4, v11);

  return self;
}

- (BOOL)hasFilterRulesAffectingInsertRows
{
  if (!objc_msgSend_hasActiveFilters(self, a2, v2, v3, v4))
  {
    return 0;
  }

  if (!objc_msgSend_numberOfVisibleBaseBodyRows(self, v6, v7, v8, v9))
  {
    return 1;
  }

  v14 = objc_msgSend_filterSet(self, v10, v11, v12, v13);
  v19 = objc_msgSend_preventsRowInsertion(v14, v15, v16, v17, v18);

  return v19;
}

- (id)allBodyValuesAsPregArgDataListForColumnIndex:(TSUViewColumnIndex)a3
{
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v26.origin = objc_msgSend_bodyRange(self, v7, v8, v9, v10);
  v26.size = v11;
  v12 = TSUCellRect::firstRow(&v26);
  v13 = TSUCellRect::numRows(&v26);
  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, v12 | (a3.var0 << 32), (v13 << 32) | 1, v15);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_221102B70;
  v23[3] = &unk_27845E3A8;
  v17 = v6;
  v24 = v17;
  v18 = v5;
  v25 = v18;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(self, v19, v16, 10, 0x400000, v23);
  v20 = v25;
  v21 = v18;

  return v21;
}

- (BOOL)canTranspose
{
  if (objc_msgSend_hasCategoryRules(self, a2, v2, v3, v4) & 1) != 0 || (objc_msgSend_isAPivotTable(self, v6, v7, v8, v9))
  {
    return 0;
  }

  v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v10, v11, v12, v13);
  objc_msgSend_range(self, v16, v17, v18, v19);
  v21 = v20;
  v25 = objc_msgSend_numberOfRows(self, v20, v22, v23, v24);
  v30 = objc_msgSend_maxNumberOfColumns(v15, v26, v27, v28, v29);
  v14 = ((HIDWORD(v21) * v21) & 0xFFFFFFFE) != 0 && v25 <= v30;

  return v14;
}

- (BOOL)useBandedFill
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_intValueForProperty_(v5, v6, 769, v7, v8) != 0;

  return v9;
}

- (id)bandedFillObject
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 770, v7, v8);

  return v9;
}

- (int)parseNumberFromTableName:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6, v7, v8);
  v13 = objc_msgSend_rangeOfCharacterFromSet_(v4, v10, v9, v11, v12);

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = -1;
  }

  else
  {
    v19 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v14, v15, v16, v17);
    v22 = objc_msgSend_rangeOfCharacterFromSet_options_(v4, v20, v19, 4, v21);

    v25 = objc_msgSend_substringWithRange_(v4, v23, v13, v22 - v13 + 1, v24);
    v41 = 0.0;
    v40 = 0;
    v26 = MEMORY[0x277D81290];
    v31 = objc_msgSend_documentRoot(self, v27, v28, v29, v30);
    v36 = objc_msgSend_documentLocale(v31, v32, v33, v34, v35);
    LODWORD(v26) = objc_msgSend_numberValueFromString_locale_outDoubleValue_outValueType_(v26, v37, v25, v36, &v41, &v40);
    v38 = v40 == 0;

    if ((v26 & v38) != 0)
    {
      v18 = v41;
    }

    else
    {
      v18 = -1;
    }
  }

  return v18;
}

- (BOOL)hasUntitledTableNameFormat
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v11 = objc_msgSend_documentLocale(v6, v7, v8, v9, v10);

  v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"Table", &stru_2834BADA0, @"TSTables");
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"^%@\\s\\d+(-\\d+)?$", v15, v16, v13);
  v43 = 0;
  v19 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v18, v17, 16, &v43);
  v20 = v43;
  v25 = objc_msgSend_tableName(self, v21, v22, v23, v24);
  v30 = objc_msgSend_tableName(self, v26, v27, v28, v29);
  v35 = objc_msgSend_length(v30, v31, v32, v33, v34);
  v37 = objc_msgSend_matchesInString_options_range_(v19, v36, v25, 0, 0, v35);

  LOBYTE(v30) = objc_msgSend_count(v37, v38, v39, v40, v41) != 0;
  return v30;
}

- (void)chooseUniqueNameInContainer:(id)a3 forPaste:(BOOL)a4 needsNewName:(BOOL)a5 avoidNames:(id)a6
{
  v8 = a4;
  v103 = a3;
  v99 = a6;
  v14 = objc_msgSend_tableName(self, v10, v11, v12, v13);
  v98 = objc_msgSend_remappedTableNames(v103, v15, v16, v17, v18);
  v22 = objc_msgSend_parseNumberFromTableName_(self, v19, v14, v20, v21);
  if (v22 == -1 || v8)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  objc_opt_class();
  v29 = objc_msgSend_tableName(self, v25, v26, v27, v28);
  v33 = objc_msgSend_resolverMatchingName_(v103, v30, v29, v31, v32);
  v102 = TSUCheckedDynamicCast();

  if (objc_msgSend_length(v14, v34, v35, v36, v37))
  {
    v42 = a5;
  }

  else
  {
    v42 = 1;
  }

  v43 = objc_msgSend_documentRoot(self, v38, v39, v40, v41);
  v48 = objc_msgSend_documentLocale(v43, v44, v45, v46, v47);

  v100 = v48;
  v101 = objc_msgSend_localizedStringForKey_value_table_(v48, v49, @"Table %@", &stru_2834BADA0, @"TSTables");
  v54 = 0;
  v55 = (v24 + 1);
  v56 = v14;
  if (v42)
  {
    goto LABEL_19;
  }

  while (1)
  {
    IsUsed = objc_msgSend_resolverNameIsUsed_(v103, v50, v56, v52, v53);
    v58 = v102 ? IsUsed : 0;
    if ((v58 & 1) == 0 && (objc_msgSend_containsObject_(v99, v50, v56, v52, v53) & 1) == 0 && !objc_msgSend_containsObject_(v98, v50, v56, v52, v53))
    {
      break;
    }

LABEL_19:
    if (!v54)
    {
      v54 = objc_msgSend_checkoutNumberFormatter(v100, v50, v51, v52, v53);
    }

    v59 = objc_alloc(MEMORY[0x277CCABB0]);
    v63 = objc_msgSend_initWithUnsignedInt_(v59, v60, v55, v61, v62);
    StringWithNumber = objc_msgSend_createStringWithNumber_(v54, v64, v63, v65, v66);
    if (v8)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v67, @"%@-%@", v68, v69, v14, StringWithNumber);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v67, v101, v68, v69, StringWithNumber);
    }
    v71 = ;
    if (objc_msgSend_isEqualToString_(v71, v72, v56, v73, v74) && (objc_msgSend_isEqualToString_(v71, v75, v14, v76, v77) & 1) == 0)
    {
      if (objc_msgSend_resolverNameIsUsed_(v103, v78, v71, v79, v80))
      {
        v97 = MEMORY[0x277D81150];
        v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSTTableInfo chooseUniqueNameInContainer:forPaste:needsNewName:avoidNames:]", v82, v83);
        v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v86, v87);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v89, v84, v88, 5395, 0, "Fresh table name is the same as the old one - aborting infinite loop.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
      }

      break;
    }

    v55 = (v55 + 1);
    v56 = v71;
  }

  objc_msgSend_returnNumberFormatter_(v100, v50, v54, v52, v53);
  objc_msgSend_setTableName_(self, v94, v56, v95, v96);
}

+ (TSUCellRect)cellRangeForTableArea:(unint64_t)a3 givenTableSize:(id)a4 numberOfHeaderRows:(unsigned int)a5 numberOfFooterRows:(unsigned int)a6 numberOfHeaderColumns:(unsigned int)a7
{
  v7 = 0x7FFF7FFFFFFFLL;
  if (a3 > 3)
  {
    v8 = (a4.var1 - a6) | (a7 << 32);
    v9 = ((a4.var0 - a7) | (*&a6 << 32));
    if (a4.var1 < a6)
    {
      v8 = 0x7FFF7FFFFFFFLL;
      v9 = 0;
    }

    if (a4.var0 < a7)
    {
      v8 = 0x7FFF7FFFFFFFLL;
      v9 = 0;
    }

    if (a4.var1 >= a6)
    {
      v14 = a4.var1 - a6;
    }

    else
    {
      v14 = 0x7FFF7FFFFFFFLL;
    }

    if (a4.var1 >= a6)
    {
      v15 = a7 | (*&a5 << 32);
    }

    else
    {
      v15 = 0;
    }

    if (a3 == 6)
    {
      v7 = v14;
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (a3 == 5)
    {
      v7 = 0;
      v12 = a7 | (*&a5 << 32);
    }

    v13 = a3 == 4;
    goto LABEL_31;
  }

  if (a3 != 1)
  {
    v8 = a7 << 32;
    v9 = ((a4.var0 - a7) | (*&a5 << 32));
    if (a4.var0 < a7)
    {
      v8 = 0x7FFF7FFFFFFFLL;
      v9 = 0;
    }

    if (a4.var1 >= a6 + a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = 0x7FFF7FFFFFFFLL;
    }

    if (a4.var1 >= a6 + a5)
    {
      v11 = a7 | ((a4.var1 - (a6 + a5)) << 32);
    }

    else
    {
      v11 = 0;
    }

    if (a3 == 3)
    {
      v7 = v10;
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a3 == 2;
LABEL_31:
    if (v13)
    {
      v16 = v8;
    }

    else
    {
      v16 = v7;
    }

    if (v13)
    {
      v17 = v9;
    }

    else
    {
      v17 = v12;
    }

    goto LABEL_49;
  }

  if (a4.var1 >= a6 + a5)
  {
    v18 = a5 | (a7 << 32);
  }

  else
  {
    v18 = 0x7FFF7FFFFFFFLL;
  }

  if (a4.var1 >= a6 + a5)
  {
    v19 = (a4.var0 - a7) | ((a4.var1 - (a6 + a5)) << 32);
  }

  else
  {
    v19 = 0;
  }

  if (a4.var0 >= a7)
  {
    v16 = v18;
  }

  else
  {
    v16 = 0x7FFF7FFFFFFFLL;
  }

  if (a4.var0 >= a7)
  {
    v17 = v19;
  }

  else
  {
    v17 = 0;
  }

LABEL_49:
  result.size = v17;
  result.origin = v16;
  return result;
}

- (TSUCellRect)cellRangeForTableArea:(unint64_t)a3
{
  v3 = (MEMORY[0x2821F9670])(self->_translator, sel_cellRangeForTableArea_, a3);
  result.size = v4;
  result.origin = v3;
  return result;
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)a3
{
  translator = self->_translator;
  row = a3->_row;
  v8[0] = a3->_column;
  v8[1] = row;
  return objc_msgSend_tableStyleAreaForCellUID_(translator, a2, v8, v3, v4);
}

- (void)updateCalcEngineForTableSize
{
  objc_msgSend_updateCalcEngineForTableSize(self->_tableModel, a2, v2, v3, v4);
  pivotDataModel = self->_pivotDataModel;

  objc_msgSend_updateCalcEngineForTableSize(pivotDataModel, v6, v7, v8, v9);
}

+ (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)a3 inTableWithHeaderColumns:(unsigned int)a4 headerRows:(unsigned int)a5 footerRows:(unsigned int)a6 totalRows:(unsigned int)a7
{
  if (a3.row < a5)
  {
    return 2;
  }

  if (a6 && a7 - a6 <= a3.row)
  {
    return 4;
  }

  if (a4 <= a3.column)
  {
    return 1;
  }

  return 3;
}

+ (unint64_t)tableAreaForCellID:(TSUCellCoord)a3 inTableWithHeaderColumns:(unsigned int)a4 headerRows:(unsigned int)a5 footerRows:(unsigned int)a6 totalRows:(unsigned int)a7
{
  v7 = 2;
  v8 = a7 - a6 > a3.row || a6 == 0;
  v9 = 4;
  if (v8)
  {
    v9 = 1;
  }

  if (a3.row >= a5)
  {
    v7 = v9;
  }

  v10 = 6;
  if (a7 - a6 > a3.row)
  {
    v10 = 3;
  }

  if (a3.row < a5)
  {
    v10 = 5;
  }

  if (a4 > a3.column)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

- (id)tableAreasForCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&a3.origin, *&a3.size, v3);
  v12 = objc_msgSend_bodyRange(self, v8, v9, v10, v11);
  v14 = sub_221119E0C(origin, size, v12, v13);
  if ((v14 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v15 >> 32 != 0 && v15 != 0)
  {
    if (v14 != *MEMORY[0x277D813C8] || (((*MEMORY[0x277D813C8] ^ v14) & 0x101FFFF00000000) == 0 ? (v62 = v15 == *(MEMORY[0x277D813C8] + 8)) : (v62 = 0), !v62))
    {
      objc_msgSend_addIndex_(v7, v15, 1, v17, v18);
    }
  }

  v21 = objc_msgSend_headerRowRange(self, v15, v16, v17, v18);
  v23 = sub_221119E0C(origin, size, v21, v22);
  if ((v23 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v24 >> 32 && v24)
  {
    if (v23 != *MEMORY[0x277D813C8] || (((*MEMORY[0x277D813C8] ^ v23) & 0x101FFFF00000000) == 0 ? (v28 = v24 == *(MEMORY[0x277D813C8] + 8)) : (v28 = 0), !v28))
    {
      objc_msgSend_addIndex_(v7, v24, 2, v26, v27);
    }
  }

  v29 = objc_msgSend_actualHeaderColumnRange(self, v24, v25, v26, v27);
  v31 = sub_221119E0C(origin, size, v29, v30);
  if ((v31 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v32 >> 32 && v32 && (v31 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v31) & 0x101FFFF00000000) != 0 || v32 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v7, v32, 3, v34, v35);
  }

  v36 = objc_msgSend_footerRowRange(self, v32, v33, v34, v35);
  v38 = sub_221119E0C(origin, size, v36, v37);
  if ((v38 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v39 >> 32 && v39 && (v38 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v38) & 0x101FFFF00000000) != 0 || v39 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v7, v39, 4, v41, v42);
  }

  v43 = objc_msgSend_topCornerRange(self, v39, v40, v41, v42);
  v45 = sub_221119E0C(origin, size, v43, v44);
  if ((v45 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v46 >> 32 && v46 && (v45 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v45) & 0x101FFFF00000000) != 0 || v46 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v7, v46, 5, v48, v49);
  }

  v50 = objc_msgSend_bottomCornerRange(self, v46, v47, v48, v49);
  v52 = sub_221119E0C(origin, size, v50, v51);
  if ((v52 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v53 >> 32 && v53 && (v52 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v52) & 0x101FFFF00000000) != 0 || v53 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v7, v53, 6, v54, v55);
  }

  v56 = objc_alloc(MEMORY[0x277CCAA78]);
  v60 = objc_msgSend_initWithIndexSet_(v56, v57, v7, v58, v59);

  return v60;
}

- (int)getDefaultCell:(id)a3 forCellID:(TSUCellCoord)a4
{
  v9 = a3;
  if (a4.row == 0x7FFFFFFF || (*&a4 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo getDefaultCell:forCellID:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 5605, 0, "trying to get a default cell for an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  DefaultCell_forCellID = objc_msgSend_getDefaultCell_forCellID_(self->_translator, v6, v9, *&a4, v8);

  return DefaultCell_forCellID;
}

- (int)getCell:(id)a3 atCellID:(TSUCellCoord)a4 suppressCellBorder:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableInfo getCell:atCellID:suppressCellBorder:]", v9, v10);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 5616, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    translator = self->_translator;
  }

  Cell_atCellID_suppressCellBorder = objc_msgSend_getCell_atCellID_suppressCellBorder_(translator, v8, v11, *&a4, v5);

  return Cell_atCellID_suppressCellBorder;
}

- (int)getCell:(id)a3 atCellID:(TSUCellCoord)a4
{
  v9 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo getCell:atCellID:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 5621, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  Cell_atCellID = objc_msgSend_getCell_atCellID_(translator, v6, v9, *&a4, v8);

  return Cell_atCellID;
}

- (id)cellAtCellID:(TSUCellCoord)a3
{
  if (objc_msgSend_cellExistsAtCellID_(self, a2, *&a3, v3, v4))
  {
    v11 = objc_msgSend_newCell(self, v7, v8, v9, v10);
    if (!objc_msgSend_getCell_atCellID_(self, v12, v11, *&a3, v13))
    {
      goto LABEL_9;
    }
  }

  v14 = objc_msgSend_cellBorderAtCellID_(self, v7, *&a3, v9, v10);
  v19 = v14;
  if (v14 && objc_msgSend_hasContent(v14, v15, v16, v17, v18))
  {
    v24 = objc_msgSend_newCell(self, v20, v21, v22, v23);
    objc_msgSend_setCellBorder_(v24, v25, v19, v26, v27);
  }

  else
  {
    v24 = 0;
  }

  v11 = v24;
LABEL_9:

  return v11;
}

- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo hasFormulaAtCellUID:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5648, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_hasFormulaAtCellUID_, a3, v3, v4);
}

- (void)convertFormulasToUidForm:(id)a3 atCellID:(TSUCellCoord)a4 preserveHostCell:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ((objc_msgSend_hasFormula(v8, v9, v10, v11, v12) & 1) != 0 || objc_msgSend_hasConditionalStyle(v8, v13, v14, v15, v16))
  {
    v17 = objc_msgSend_translator(self, v13, v14, v15, v16);
    v21 = objc_msgSend_baseCellCoordForViewCellCoord_(v17, v18, *&a4, v19, v20);

    if (objc_msgSend_hasConditionalStyle(v8, v22, v23, v24, v25))
    {
      v30 = objc_msgSend_conditionalStyle(v8, v26, v27, v28, v29);
      v32 = objc_msgSend_copyToUidFormForTableInfo_inCellCoordinate_preserveHostCell_(v30, v31, self, v21, v5);
      objc_msgSend_setConditionalStyle_(v8, v33, v32, v34, v35);
    }

    if (objc_msgSend_hasFormula(v8, v26, v27, v28, v29))
    {
      v44 = objc_msgSend_formulaObject(v8, v36, v37, v38, v39);
      if (v44)
      {
        v45 = objc_msgSend_calcEngine(self, v40, v41, v42, v43);
        v64.coordinate = v21;
        v64._tableUID._lower = objc_msgSend_tableUID(self, v46, v47, v48, v49);
        v64._tableUID._upper = v50;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v65, v45, &v64);

        TSCEFormulaRewriteContext::setPreserveHostCell(&v65, v5);
        v64.coordinate = objc_msgSend_tableUID(self, v51, v52, v53, v54);
        v64._tableUID._lower = v55;
        *&v56 = TSCEFormulaRewriteContext::setResolverTableUID(&v65, &v64).n128_u64[0];
        v60 = objc_msgSend_copyByRewritingReferencesToUidForm_(v44, v57, &v65, v58, v59, v56);
        objc_msgSend_setFormulaObject_(v8, v61, v60, v62, v63);
      }
    }
  }
}

- (id)formulaAtCellID:(TSUCellCoord)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo formulaAtCellID:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5681, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_formulaAtCellID_(translator, a2, *&a3, v3, v4);
}

- (int)setCell:(id)a3 atCellCoord:(TSUCellCoord)a4
{
  v6 = a3;
  objc_msgSend_cellUIDForCellID_(self, v7, *&a4, v8, v9);
  LODWORD(self) = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(self, v10, v6, &v12, 0, 0);

  return self;
}

- (int)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 ignoreFormula:(BOOL)a5 clearImportWarnings:(BOOL)a6 formulaReplacer:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v16 = a7;
  translator = self->_translator;
  if (!translator)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableInfo setCell:atCellUID:ignoreFormula:clearImportWarnings:formulaReplacer:]", v14, v15);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 5694, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    translator = self->_translator;
  }

  v29 = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_formulaReplacer_(translator, v13, v12, a4, v9, v8, v16);

  return v29;
}

- (int)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 ignoreFormula:(BOOL)a5 clearImportWarnings:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v13 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableInfo setCell:atCellUID:ignoreFormula:clearImportWarnings:]", v11, v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 5706, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    translator = self->_translator;
  }

  v26 = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(translator, v10, v13, a4, v7, v6);

  return v26;
}

- (int)setCellsWithCellMap:(id)a3 ignoreFormulas:(BOOL)a4 skipDirtyingNonFormulaCells:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v12 = a3;
  if (!self->_translator)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableInfo setCellsWithCellMap:ignoreFormulas:skipDirtyingNonFormulaCells:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 5714, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if ((objc_msgSend_isUIDBased(v12, v8, v9, v10, v11) & 1) == 0)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableInfo setCellsWithCellMap:ignoreFormulas:skipDirtyingNonFormulaCells:]", v25, v26);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 5715, 0, "coord based cellmaps no longer ok");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self->_translator, v24, v12, v6, v5);

  return v38;
}

- (BOOL)isValidForInteraction
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  if (objc_msgSend_emptyFilteredTable(v6, v7, v8, v9, v10))
  {

    return 0;
  }

  v15 = objc_msgSend_numberOfHiddenRows(self, v11, v12, v13, v14);
  v20 = objc_msgSend_numberOfRows(self, v16, v17, v18, v19);

  if (v15 == v20)
  {
    return 0;
  }

  return objc_msgSend_isEmptyPivot(self, v21, v22, v23, v24) ^ 1;
}

- (void)flattenGroupValuesIfNeededForCell:(id)a3 viewCellCoord:(TSUViewCellCoord)a4 summaryAndLabelRows:(id)a5 categoryColumns:(id)a6
{
  v83 = a3;
  v10 = a5;
  v11 = a6;
  if (objc_msgSend_isCategorized(self, v12, v13, v14, v15) & 1) != 0 || (objc_msgSend_isAPivotTable(self, v16, v17, v18, v19))
  {
    if (objc_msgSend_isCategorized(self, v16, v17, v18, v19) && objc_msgSend_containsIndex_(v10, v20, a4._coord.row, v22, v23) && objc_msgSend_containsIndex_(v11, v20, a4._coord.column, v22, v23))
    {
      v24 = objc_msgSend_groupBy(self, v20, v21, v22, v23);
      v28 = objc_msgSend_rowUIDForRowIndex_(self, v25, *&a4, v26, v27);
      v31 = objc_msgSend_groupNodeForGroupUid_(v24, v29, v28, v29, v30);

      if (v31)
      {
        v36 = objc_msgSend_groupCellValue(v31, v32, v33, v34, v35);
        v41 = objc_msgSend_valueType(v36, v37, v38, v39, v40);
        if (v41 <= 0xA && ((1 << v41) & 0x605) != 0)
        {
          v46 = objc_msgSend_formattedValue(v83, v42, v43, v44, v45);
          objc_msgSend_setStringValue_(v83, v47, v46, v48, v49);

          v54 = objc_msgSend_textFormat(MEMORY[0x277D80680], v50, v51, v52, v53);
          objc_msgSend_setCurrentFormat_isExplicit_(v83, v55, v54, 0, v56);
        }
      }

      goto LABEL_14;
    }

    if (objc_msgSend_isAPivotTable(self, v20, v21, v22, v23) && (objc_msgSend_cellFlags(v83, v57, v58, v59, v60) & 4) != 0)
    {
      v31 = objc_msgSend_formattedValue(v83, v61, v62, v63, v64);
      objc_msgSend_setStringValue_(v83, v65, v31, v66, v67);
      v72 = objc_msgSend_textFormat(MEMORY[0x277D80680], v68, v69, v70, v71);
      objc_msgSend_setCurrentFormat_isExplicit_(v83, v73, v72, 0, v74);

      v79 = objc_msgSend_cellFlags(v83, v75, v76, v77, v78);
      objc_msgSend_setCellFlags_(v83, v80, v79 & 0xFFFFFFFB, v81, v82);
LABEL_14:
    }
  }
}

- (id)cellMapForRegion:(id)a3 uidBased:(BOOL)a4 suppressMergeContent:(BOOL)a5 useCategoriesWildcards:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  if (v10)
  {
    v15 = v10;
    if (objc_msgSend_cellCount(v10, v11, v12, v13, v14))
    {
      v16 = [TSTCellMap alloc];
      v21 = objc_msgSend_context(self, v17, v18, v19, v20);
      v24 = objc_msgSend_initWithContext_uidBased_(v16, v22, v21, v8, v23);

      if ((objc_msgSend_isCategorized(self, v25, v26, v27, v28) & v6) == 1 && v8)
      {
        v31 = objc_msgSend_prunedCellRegionAgainstTable_behavior_(v15, v29, self, 1, v30);
        v35 = objc_msgSend_regionBySubtractingRegion_(v15, v32, v31, v33, v34);
        v36 = v31;

        v41 = objc_msgSend_newCell(self, v37, v38, v39, v40);
        v44 = objc_msgSend_cellUIDListFromCellRegion_useCategoriesWildcards_(self, v42, v35, 1, v43);
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = sub_221104FA4;
        v101[3] = &unk_27845EE10;
        v45 = v41;
        v102 = v45;
        v103 = self;
        v104 = v24;
        objc_msgSend_enumerateCellUIDsUsingBlock_(v44, v46, v101, v47, v48);

        v15 = v36;
      }

      v49 = [TSTConcurrentCellIterator alloc];
      v51 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v49, v50, self, v15, 194, 536871936);
      isCategorized = objc_msgSend_isCategorized(self, v52, v53, v54, v55);
      v61 = isCategorized;
      if (isCategorized)
      {
        v62 = objc_msgSend_indexesForSummaryAndLabelRows(self, v57, v58, v59, v60);
        v67 = objc_msgSend_indexesForCategoryColumns(self, v63, v64, v65, v66);
      }

      else
      {
        v67 = 0;
        v62 = 0;
      }

      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = sub_221104FF8;
      v99[3] = &unk_27845EE30;
      v100 = v8;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = sub_221105040;
      v91[3] = &unk_27845EE58;
      v96 = a5;
      v69 = v15;
      v92 = v69;
      v93 = self;
      v97 = v8;
      v98 = v61;
      v70 = v62;
      v94 = v70;
      v71 = v67;
      v95 = v71;
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = sub_2211052AC;
      v89[3] = &unk_27845DDE8;
      v68 = v24;
      v90 = v68;
      objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v51, v72, v99, v91, v89);
      v76 = objc_msgSend_mergeActionForRegion_(self, v73, v69, v74, v75);
      objc_msgSend_addMergeAction_(v68, v77, v76, v78, v79);

      if (!objc_msgSend_count(v68, v80, v81, v82, v83) && (objc_msgSend_containsMergeChanges(v68, v84, v85, v86, v87) & 1) == 0)
      {

        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
      v69 = v15;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  return v68;
}

- (id)concurrentCellMapForRegion:(id)a3 suppressMergeContent:(BOOL)a4 gatherCellBorders:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v13 = v8;
  if (v8 && objc_msgSend_cellCount(v8, v9, v10, v11, v12))
  {
    if (objc_msgSend_isCategorized(self, v14, v15, v16, v17))
    {
      v22 = 0;
      v23 = 66;
    }

    else
    {
      isAPivotTable = objc_msgSend_isAPivotTable(self, v18, v19, v20, v21);
      v26 = 194;
      if (!v5)
      {
        v26 = 66;
      }

      if (isAPivotTable)
      {
        v23 = 66;
      }

      else
      {
        v23 = v26;
      }

      v22 = v5 & ~isAPivotTable;
    }

    v27 = [TSTConcurrentCellMap alloc];
    v32 = objc_msgSend_context(self, v28, v29, v30, v31);
    v34 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v27, v33, v32, 0, v22);

    v35 = [TSTConcurrentCellIterator alloc];
    v37 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v35, v36, self, v13, v23, 536871936);
    isCategorized = objc_msgSend_isCategorized(self, v38, v39, v40, v41);
    v47 = isCategorized;
    if (isCategorized)
    {
      v48 = objc_msgSend_indexesForSummaryAndLabelRows(self, v43, v44, v45, v46);
      v53 = objc_msgSend_indexesForCategoryColumns(self, v49, v50, v51, v52);
    }

    else
    {
      v53 = 0;
      v48 = 0;
    }

    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_2211056DC;
    v67[3] = &unk_27845EE80;
    v67[4] = self;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_22110576C;
    v60[3] = &unk_27845EEA8;
    v65 = a4;
    v61 = v13;
    v62 = self;
    v66 = v47;
    v54 = v48;
    v63 = v54;
    v64 = v53;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_221105938;
    v58[3] = &unk_27845DDE8;
    v24 = v34;
    v59 = v24;
    v55 = v53;
    objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v37, v56, v67, v60, v58);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (int)getCell:(id)a3 atCellID:(TSUCellCoord)a4 holdingReadLockWithAccessController:(id)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221105A44;
  v14[3] = &unk_27845EED0;
  v14[4] = self;
  v15 = v8;
  v16 = &v18;
  v17 = a4;
  v9 = v8;
  objc_msgSend_performRead_(a5, v10, v14, v11, v12);
  LODWORD(a5) = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  return a5;
}

- (unsigned)cellValueTypeAtCellID:(TSUCellCoord)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellValueTypeAtCellID:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5932, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_cellValueTypeAtCellID_(translator, a2, *&a3, v3, v4);
}

- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellValueTypeAtCellUID:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5937, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_cellValueTypeAtCellUID_, a3, v3, v4);
}

- (int)setCellStyle:(id)a3 ofRowAtUID:(const TSKUIDStruct *)a4
{
  v9 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setCellStyle:ofRowAtUID:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 5944, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_setCellStyle_ofRowAtUID_(translator, v6, v9, a4, v8);

  return v22;
}

- (int)setTextStyle:(id)a3 ofRowAtUID:(const TSKUIDStruct *)a4
{
  v9 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setTextStyle:ofRowAtUID:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 5949, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_setTextStyle_ofRowAtUID_(translator, v6, v9, a4, v8);

  return v22;
}

- (id)cellStyleOfRowAtIndex:(unsigned int)a3 isDefault:(BOOL *)a4
{
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleOfRowAtIndex:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 5954, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return objc_msgSend_cellStyleOfRowAtIndex_isDefault_(translator, a2, a3, a4, v4);
}

- (id)textStyleOfRowAtIndex:(unsigned int)a3 isDefault:(BOOL *)a4
{
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleOfRowAtIndex:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 5959, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return objc_msgSend_textStyleOfRowAtIndex_isDefault_(translator, a2, a3, a4, v4);
}

- (int)setCellStyle:(id)a3 ofColumnAtUID:(const TSKUIDStruct *)a4
{
  v9 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setCellStyle:ofColumnAtUID:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 5964, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_setCellStyle_ofColumnAtUID_(translator, v6, v9, a4, v8);

  return v22;
}

- (int)setTextStyle:(id)a3 ofColumnAtUID:(const TSKUIDStruct *)a4
{
  v9 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setTextStyle:ofColumnAtUID:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 5969, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_setTextStyle_ofColumnAtUID_(translator, v6, v9, a4, v8);

  return v22;
}

- (id)cellStyleOfColumnAtIndex:(unsigned __int16)a3 isDefault:(BOOL *)a4
{
  v6 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleOfColumnAtIndex:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 5974, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(translator, a2, v6, a4, v4);
}

- (id)textStyleOfColumnAtIndex:(unsigned __int16)a3 isDefault:(BOOL *)a4
{
  v6 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleOfColumnAtIndex:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 5979, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return objc_msgSend_textStyleOfColumnAtIndex_isDefault_(translator, a2, v6, a4, v4);
}

- (id)defaultCellStyleForCellID:(TSUCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  v6 = a4;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultCellStyleForCellID:useSoftDefault:outSource:]", a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 5988, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    translator = self->_translator;
  }

  return objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(translator, a2, *&a3, v6, a5);
}

- (id)defaultCellStyleForTableStyleArea:(unint64_t)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultCellStyleForTableStyleArea:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 5993, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_defaultCellStyleForTableStyleArea_(translator, a2, a3, v3, v4);
}

- (id)defaultTextStyleForCellID:(TSUCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  v6 = a4;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultTextStyleForCellID:useSoftDefault:outSource:]", a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 6002, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    translator = self->_translator;
  }

  return objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(translator, a2, *&a3, v6, a5);
}

- (id)defaultTextStyleForTableStyleArea:(unint64_t)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultTextStyleForTableStyleArea:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 6007, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_defaultTextStyleForTableStyleArea_(translator, a2, a3, v3, v4);
}

- (id)cellStyleAtCellID:(TSUCellCoord)a3 isDefault:(BOOL *)a4
{
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleAtCellID:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 6012, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return objc_msgSend_cellStyleAtCellID_isDefault_(translator, a2, *&a3, a4, v4);
}

- (id)textStyleAtCellID:(TSUCellCoord)a3 isDefault:(BOOL *)a4
{
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleAtCellID:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 6017, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return objc_msgSend_textStyleAtCellID_isDefault_(translator, a2, *&a3, a4, v4);
}

- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4
{
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleAtCellUID:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 6022, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_cellStyleAtCellUID_isDefault_, a3, a4, v4);
}

- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4
{
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleAtCellUID:isDefault:]", a4, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 6027, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_textStyleAtCellUID_isDefault_, a3, a4, v4);
}

- (id)conditionalStyleSetAtCellID:(TSUCellCoord)a3
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo conditionalStyleSetAtCellID:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 6037, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_conditionalStyleSetAtCellID_(translator, a2, *&a3, v3, v4);
}

- (id)noRuleConditionalStyleSet
{
  noRuleConditionalStyleSet = self->_noRuleConditionalStyleSet;
  if (!noRuleConditionalStyleSet)
  {
    v4 = [TSTConditionalStyleSet alloc];
    v9 = objc_msgSend_context(self, v5, v6, v7, v8);
    v14 = objc_msgSend_array(MEMORY[0x277CBEA60], v10, v11, v12, v13);
    v17 = objc_msgSend_initWithContext_rules_(v4, v15, v9, v14, v16);
    v18 = self->_noRuleConditionalStyleSet;
    self->_noRuleConditionalStyleSet = v17;

    noRuleConditionalStyleSet = self->_noRuleConditionalStyleSet;
  }

  return noRuleConditionalStyleSet;
}

- (BOOL)hasMigratableStylesInCells
{
  v6 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  if (objc_msgSend_hasMigratableStylesInCells(v6, v7, v8, v9, v10))
  {
    hasMigratableStylesInCells = 1;
  }

  else if (objc_msgSend_isAPivotTable(self, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_summaryModel(self, v16, v17, v18, v19);
    hasMigratableStylesInCells = objc_msgSend_hasMigratableStylesInCells(v20, v21, v22, v23, v24);
  }

  else
  {
    hasMigratableStylesInCells = 0;
  }

  return hasMigratableStylesInCells;
}

- (id)columnNameForCellID:(TSUCellCoord)a3 restrictToBodyRange:(BOOL)a4
{
  v5 = a4;
  v29 = a3;
  v7 = objc_msgSend_calcEngine(self, a2, *&a3, a4, v4);
  v12 = objc_msgSend_namer(v7, v8, v9, v10, v11);

  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableInfo columnNameForCellID:restrictToBodyRange:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 6057, 0, "invalid nil value for '%{public}s'", "refNamer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(v12, v13, &v29, v5, self->_translator, 0);

  return v27;
}

- (id)rowNameForCellID:(TSUCellCoord)a3 restrictToBodyRange:(BOOL)a4
{
  v5 = a4;
  v29 = a3;
  v7 = objc_msgSend_calcEngine(self, a2, *&a3, a4, v4);
  v12 = objc_msgSend_namer(v7, v8, v9, v10, v11);

  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableInfo rowNameForCellID:restrictToBodyRange:]", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 6064, 0, "invalid nil value for '%{public}s'", "refNamer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_rowNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(v12, v13, &v29, v5, self->_translator, 0);

  return v27;
}

- (id)columnNameForColumnIndex:(unsigned __int16)a3
{
  v5 = a3;
  v7 = sub_2214AAEA8(self, a2, a3, v3, v4);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Column %@", &stru_2834BADA0, @"TSTables");
  v12 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_(self, v10, v5, v9, v11);

  return v12;
}

- (id)columnNameForColumnIndex:(unsigned __int16)a3 withFallbackFormat:(id)a4
{
  v4 = a3;
  v6 = a4;
  v11 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
  v16 = objc_msgSend_namer(v11, v12, v13, v14, v15);

  if (!v16)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableInfo columnNameForColumnIndex:withFallbackFormat:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 6075, 0, "invalid nil value for '%{public}s'", "refNamer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_translator_(v16, v17, v4, v6, self->_translator);

  return v31;
}

+ (id)displayNameForColumnName:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v4, v5, v6, v7);
  v12 = objc_msgSend_componentsSeparatedByCharactersInSet_(v3, v9, v8, v10, v11);
  v16 = objc_msgSend_componentsJoinedByString_(v12, v13, @" ", v14, v15);

  return v16;
}

- (id)pivotDataLocalizedColumnNameAtDataColumnIndex:(TSUModelColumnIndex)a3
{
  if (self->_isAPivotTable)
  {
    v5 = objc_msgSend_documentLocalizedDisplayNameForColumnAtIndex_(self->_pivotDataModel, a2, a3._column, v3, v4);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo pivotDataLocalizedColumnNameAtDataColumnIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 6088, 0, "Only ask about the pivotDataModel on a pivot table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    v5 = &stru_2834BADA0;
  }

  return v5;
}

- (id)pivotHeaderColumnDisplayNameAtIndex:(unsigned __int16)a3
{
  v5 = a3;
  v7 = objc_msgSend_pivotOwner(self, a2, a3, v3, v4);
  v11 = objc_msgSend_baseColumnIndexForGroupingAtColumnIndex_(v7, v8, v5, v9, v10);

  if (v11 == 0x7FFF)
  {
    objc_msgSend_columnNameForColumnIndex_(self, v12, v5, v13, v14);
  }

  else
  {
    objc_msgSend_pivotDataLocalizedColumnNameAtDataColumnIndex_(self, v12, v11, v13, v14);
  }
  v15 = ;

  return v15;
}

- (id)pivotLeadingColumnDisplayNameAtIndex:(unsigned __int16)a3
{
  v5 = a3;
  v6 = objc_msgSend_pivotOwner(self, a2, a3, v3, v4);
  v10 = objc_msgSend_lowestCategoryLevelAsLeadingColumnGroupName_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)pivotHeaderRowDisplayNameAtIndex:(unsigned int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_pivotOwner(self, a2, *&a3, v3, v4);
  v11 = objc_msgSend_baseColumnIndexForGroupingAtRowIndex_(v7, v8, v5, v9, v10);

  return objc_msgSend_pivotDataLocalizedColumnNameAtDataColumnIndex_(self, v12, v11, v13, v14);
}

- (id)pivotLeadingRowDisplayNameAtIndex:(unsigned int)a3
{
  v5 = *&a3;
  v6 = objc_msgSend_pivotOwner(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_lowestCategoryLevelAsLeadingRowGroupName_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)cellRangeName:(TSCERangeCoordinate)a3 usedSymbolicName:(BOOL *)a4
{
  v40 = a3;
  v41 = objc_msgSend_tableUID(self, a2, *&a3._topLeft, *&a3._bottomRight, a4);
  v42 = v6;
  v10 = objc_msgSend_translator(self, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v10, v11, &v40, v12, v13);
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  if (TSCERangeRef::isValid(&v39))
  {
    v17 = objc_opt_new();
    objc_msgSend_setSuppressIdenticalEndReference_(v17, v18, 1, v19, v20);
    v25 = objc_msgSend_calcEngine(self, v21, v22, v23, v24);
    v30 = objc_msgSend_namer(v25, v26, v27, v28, v29);
    v33 = objc_msgSend_cellRangeNameFromChromeRangeRef_namingContext_(v30, v31, &v39, v17, v32);

    if (a4)
    {
      *a4 = objc_msgSend_usedSymbolicName(v17, v34, v35, v36, v37);
    }
  }

  else
  {
    v33 = objc_msgSend_translatedCellRangeName_usedSymbolicName_(self->_translator, v15, &v40, a4, v16);
  }

  return v33;
}

- (id)chromeLabelForColumn:(unsigned __int16)a3
{
  if (objc_msgSend_chromeColumnIndexForViewColumnIndex_(self->_translator, a2, a3, v3, v4) == 0x7FFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = TSUColumnLabel();
  }

  return v5;
}

- (id)chromeLabelForRow:(unsigned int)a3
{
  if (objc_msgSend_chromeRowIndexForViewRowIndex_(self->_translator, a2, a3, v3, v4) == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = TSURowLabel();
  }

  return v5;
}

- (id)chromeLabelForCellID:(TSUCellCoord)a3
{
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_chromeLabelForColumn_(self, a2, a3.column, v3, v4);
  v12 = objc_msgSend_chromeLabelForRow_(self, v9, *&a3, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v7, v13, @"%@%@", v14, v15, v8, v12);

  return v16;
}

- (TSUCellCoord)cellIDLeftOfCellID:(TSUCellCoord)a3
{
  v7 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&a3, v3, v4);
  if (v8)
  {
    v11 = v8 >> 32 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    column = a3.column;
  }

  else
  {
    column = WORD2(v7);
  }

  if ((v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = a3.column;
  }

  else
  {
    v13 = column;
  }

  if (v7 == 0x7FFFFFFF)
  {
    v13 = a3.column;
  }

  v14 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(self, v8, v13, v9, v10);
  row = a3.row;
  if (v14 == 0x7FFF)
  {
    v16 = 0;
  }

  else
  {
    v16 = *&a3 & 0xFFFF000000000000;
  }

  v17 = v16 | (v14 << 32);
  if (v14 == 0x7FFF)
  {
    row = 0x7FFFFFFFLL;
  }

  return (v17 | row);
}

- (TSUCellCoord)cellIDRightOfCellID:(TSUCellCoord)a3
{
  column = a3.column;
  v8 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&a3, v3, v4);
  v12 = v9 + WORD2(v8) - 1;
  if (v9)
  {
    v13 = WORD2(v8) == 0x7FFF;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v12 = 0x7FFF;
  }

  if (v9)
  {
    v14 = v12;
  }

  else
  {
    v14 = column;
  }

  if (!(v9 >> 32))
  {
    v14 = column;
  }

  if ((v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = column;
  }

  else
  {
    v15 = v14;
  }

  if (v8 == 0x7FFFFFFF)
  {
    v15 = column;
  }

  v16 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(self, v9, v15, v10, v11);
  row = a3.row;
  if (v16 == 0x7FFF)
  {
    v18 = 0;
  }

  else
  {
    v18 = *&a3 & 0xFFFF000000000000;
  }

  v19 = v18 | (v16 << 32);
  if (v16 == 0x7FFF)
  {
    row = 0x7FFFFFFFLL;
  }

  return (v19 | row);
}

- (TSUCellCoord)cellIDAboveCellID:(TSUCellCoord)a3
{
  v7 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&a3, v3, v4);
  if (v7 == 0x7FFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  if (v8)
  {
    row = v11;
  }

  else
  {
    row = a3.row;
  }

  if (!(v8 >> 32))
  {
    row = a3.row;
  }

  if ((v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = a3.row;
  }

  else
  {
    v13 = row;
  }

  if (v7 == 0x7FFFFFFF)
  {
    v14 = a3.row;
  }

  else
  {
    v14 = v13;
  }

  v15 = *&a3 & 0xFFFFFFFF00000000;
  v16 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(self, v8, v14, v9, v10);
  if (v16 == 0x7FFFFFFF)
  {
    v17 = 0x7FFF00000000;
  }

  else
  {
    v17 = v15;
  }

  return (v17 | v16);
}

- (TSUCellCoord)cellIDBelowCellID:(TSUCellCoord)a3
{
  v7 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&a3, v3, v4);
  v11 = v7 + HIDWORD(v8) - 1;
  if (v7 == 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v8)
  {
    row = v11;
  }

  else
  {
    row = a3.row;
  }

  if (!(v8 >> 32))
  {
    row = a3.row;
  }

  if ((v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = a3.row;
  }

  else
  {
    v13 = row;
  }

  if (v7 == 0x7FFFFFFF)
  {
    v14 = a3.row;
  }

  else
  {
    v14 = v13;
  }

  v15 = *&a3 & 0xFFFFFFFF00000000;
  v16 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(self, v8, v14, v9, v10);
  if (v16 == 0x7FFFFFFF)
  {
    v17 = 0x7FFF00000000;
  }

  else
  {
    v17 = v15;
  }

  return (v17 | v16);
}

- (TSUCellRect)range
{
  v5 = objc_msgSend_range(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)bodyRange
{
  v5 = objc_msgSend_bodyRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)a3
{
  v3 = (MEMORY[0x2821F9670])(self->_translator, sel_bodyRangeForLowestLevelGroupEnclosingCellAtCellID_, a3);
  result.size = v4;
  result.origin = v3;
  return result;
}

- (TSUCellRect)bodyColumnRange
{
  v5 = objc_msgSend_bodyColumnRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)bodyRowRange
{
  v5 = objc_msgSend_bodyRowRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)headerRowRange
{
  v5 = objc_msgSend_headerRowRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)headerColumnRange
{
  v5 = objc_msgSend_headerColumnRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)actualHeaderColumnRange
{
  v5 = objc_msgSend_actualHeaderColumnRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)footerRowRange
{
  v5 = objc_msgSend_footerRowRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)topCornerRange
{
  v5 = objc_msgSend_topCornerRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)bottomCornerRange
{
  v5 = objc_msgSend_bottomCornerRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)categoryColumnRange
{
  v5 = objc_msgSend_categoryColumnRange(self->_translator, a2, v2, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSUCellRect)baseColumnRange
{
  v2 = (MEMORY[0x2821F9670])(self->_translator, sel_baseColumnRange);
  result.size = v3;
  result.origin = v2;
  return result;
}

- (void)insertRowsAtIndex:(unsigned int)a3 count:(unsigned int)a4 addBefore:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a4;
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, a4, *&a4, a5);
  {
    v15 = objc_alloc_init(TSTColumnRowMetadata);
    objc_msgSend_addObject_(i, v16, v15, v17, v18);
  }

  if (objc_msgSend_numberOfHeaderRows(self, v10, v11, v12, v13) <= a3)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v19, v20, v21, v22) == a3)
    {
      if (v5)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v28 = objc_msgSend_numberOfRows(self, v24, v25, v26, v27);
      if (v28 - objc_msgSend_numberOfFooterRows(self, v29, v30, v31, v32) <= a3)
      {
        v37 = objc_msgSend_numberOfRows(self, v33, v34, v35, v36);
        if (v37 - objc_msgSend_numberOfFooterRows(self, v38, v39, v40, v41) == a3 && v5)
        {
          v23 = 1;
        }

        else
        {
          v23 = 4;
        }
      }

      else
      {
        v23 = 1;
      }
    }
  }

  else
  {
    v23 = 2;
  }

  sub_2211A9184(v9, __p);
  objc_msgSend_insertRowsAtIndex_uids_metadatas_tableArea_(self, v42, !v5 + a3, __p, i, v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)insertColumnsAtIndex:(unsigned __int16)a3 count:(unsigned int)a4 addBefore:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = a4;
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, a4, *&a4, a5);
  {
    v15 = objc_alloc_init(TSTColumnRowMetadata);
    objc_msgSend_addObject_(i, v16, v15, v17, v18);
  }

  if (objc_msgSend_numberOfHeaderColumns(self, v10, v11, v12, v13) <= v7)
  {
    if (((objc_msgSend_numberOfHeaderRows(self, v19, v20, v21, v22) == v7) & v5) != 0)
    {
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 3;
  }

  sub_2211A9184(v9, __p);
  objc_msgSend_insertColumnsAtIndex_uids_metadatas_tableArea_(self, v24, ((v5 ^ 1) + v7), __p, i, v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)importDeferredRemoveGroupingRowsAtIndexes:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    objc_msgSend_rowUIDsForRowIndexes_(self, v9, v4, v10, v11);
    v15 = __p;
    if (v40 != __p)
    {
      rowUIDsForImportedGroupingRows = self->_rowUIDsForImportedGroupingRows;
      if (rowUIDsForImportedGroupingRows)
      {
        objc_msgSend_addUuidsFromVector_(rowUIDsForImportedGroupingRows, v12, &__p, v13, v14);
      }

      else
      {
        v21 = [TSCEMutableUIDSet alloc];
        v25 = objc_msgSend_initWithUUIDVector_(v21, v22, &__p, v23, v24);
        v26 = self->_rowUIDsForImportedGroupingRows;
        self->_rowUIDsForImportedGroupingRows = v25;
      }

      v27 = objc_msgSend_hiddenStates(self, v17, v18, v19, v20);
      v32 = objc_msgSend_rowHiddenStateExtent(v27, v28, v29, v30, v31);

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_221108374;
      v37[3] = &unk_27845E958;
      v38 = v32;
      v33 = v32;
      objc_msgSend_enumerateIndexesUsingBlock_(v4, v34, v37, v35, v36);

      v15 = __p;
    }

    if (v15)
    {
      v40 = v15;
      operator delete(v15);
    }
  }
}

- (BOOL)hideRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4
{
  v5 = a4;
  v6 = *&a3;
  objc_msgSend_willModify(self->_tableModel, a2, *&a3, a4, v4);
  hiddenStates = self->_hiddenStates;

  return objc_msgSend_hideRowAtIndex_forAction_(hiddenStates, v8, v6, v5, v9);
}

- (BOOL)hideColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  objc_msgSend_willModify(self->_tableModel, a2, a3, a4, v4);
  hiddenStates = self->_hiddenStates;

  return objc_msgSend_hideColumnAtIndex_forAction_(hiddenStates, v8, v6, v5, v9);
}

- (BOOL)showRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4
{
  v5 = a4;
  v6 = *&a3;
  objc_msgSend_willModify(self->_tableModel, a2, *&a3, a4, v4);
  hiddenStates = self->_hiddenStates;

  return MEMORY[0x2821F9670](hiddenStates, sel_showRowAtIndex_forAction_, v6, v5, v8);
}

- (BOOL)showColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  objc_msgSend_willModify(self->_tableModel, a2, a3, a4, v4);
  hiddenStates = self->_hiddenStates;

  return MEMORY[0x2821F9670](hiddenStates, sel_showColumnAtIndex_forAction_, v6, v5, v8);
}

- (id)indexesOfVisibleColumnsInCellRegion:(id)a3
{
  v5 = objc_msgSend_indexesOfVisibleColumnsInCellRegion_(self->_hiddenStates, a2, a3, v3, v4);

  return v5;
}

- (id)indexesOfVisibleColumnsInColumnRange:(id)a3
{
  v5 = objc_msgSend_indexesOfVisibleColumnsInColumnRange_(self->_hiddenStates, a2, a3, v3, v4);

  return v5;
}

- (id)indexesOfVisibleRowsInCellRegion:(id)a3
{
  v5 = objc_msgSend_indexesOfVisibleRowsInCellRegion_(self->_hiddenStates, a2, a3, v3, v4);

  return v5;
}

- (id)indexesOfVisibleRowsInRowRange:(id)a3
{
  v5 = objc_msgSend_indexesOfVisibleRowsInRowRange_(self->_hiddenStates, a2, a3, v3, v4);

  return v5;
}

- (BOOL)isCellRangeHidden:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  return objc_msgSend_numberOfHiddenRowsInCellRange_(self, a2, *&a3.origin, *&a3.size, v3) == a3.size.numberOfRows || objc_msgSend_numberOfHiddenColumnsInCellRange_(self, v7, origin, size, v8) == size;
}

- (unsigned)numberOfVisibleBodyRows
{
  v10 = objc_msgSend_numberOfHiddenRows(self, a2, v2, v3, v4);
  if (v10)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9))
    {
      v15 = objc_msgSend_headerRowRange(self, v11, v12, v13, v14);
      v10 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v16, v15, v16, v17);
    }

    if (objc_msgSend_numberOfFooterRows(self, v11, v12, v13, v14))
    {
      v18 = objc_msgSend_footerRowRange(self, v6, v7, v8, v9);
      v10 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v19, v18, v19, v20);
    }
  }

  objc_msgSend_bodyRowRange(self, v6, v7, v8, v9);
  return v21 - v10;
}

- (unsigned)numberOfUserVisibleBodyRows
{
  v10 = objc_msgSend_numberOfUserHiddenRows(self, a2, v2, v3, v4);
  if (v10)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9))
    {
      v15 = objc_msgSend_headerRowRange(self, v11, v12, v13, v14);
      v10 -= objc_msgSend_numberOfUserHiddenRowsInCellRange_(self, v16, v15, v16, v17);
    }

    if (objc_msgSend_numberOfFooterRows(self, v11, v12, v13, v14))
    {
      v18 = objc_msgSend_footerRowRange(self, v6, v7, v8, v9);
      v10 -= objc_msgSend_numberOfUserHiddenRowsInCellRange_(self, v19, v18, v19, v20);
    }
  }

  objc_msgSend_bodyRowRange(self, v6, v7, v8, v9);
  return v21 - v10;
}

- (unsigned)numberOfVisibleBaseBodyRows
{
  v10 = objc_msgSend_numberOfHiddenRows(self, a2, v2, v3, v4);
  if (v10)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v6, v7, v8, v9))
    {
      v15 = objc_msgSend_headerRowRange(self, v11, v12, v13, v14);
      v10 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v16, v15, v16, v17);
    }

    if (objc_msgSend_numberOfFooterRows(self, v11, v12, v13, v14))
    {
      v18 = objc_msgSend_footerRowRange(self, v6, v7, v8, v9);
      v10 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v19, v18, v19, v20);
    }
  }

  return objc_msgSend_numberOfBaseBodyRows(self, v6, v7, v8, v9) - v10;
}

- (unsigned)numberOfVisibleBodyColumns
{
  v10 = objc_msgSend_numberOfHiddenColumns(self, a2, v2, v3, v4);
  if (v10 && objc_msgSend_numberOfHeaderColumns(self, v6, v7, v8, v9))
  {
    v11 = objc_msgSend_headerColumnRange(self, v6, v7, v8, v9);
    v10 -= objc_msgSend_numberOfHiddenColumnsInCellRange_(self, v12, v11, v12, v13);
  }

  objc_msgSend_bodyColumnRange(self, v6, v7, v8, v9);
  return v14 - v10;
}

- (id)stringAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4
{
  v9 = a4;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo stringAtCellID:optionalCell:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 6755, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_stringAtCellID_optionalCell_(translator, v6, *&a3, v9, v8);

  return v22;
}

- (id)characterFillAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4
{
  v9 = a4;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo characterFillAtCellID:optionalCell:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 6760, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_characterFillAtCellID_optionalCell_(translator, v6, *&a3, v9, v8);

  return v22;
}

- (id)cellValueViewStringAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    hasValueOrError = objc_msgSend_hasValueOrError(v6, v7, v8, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_cellAtCellID_(self, v7, *&a3, v9, v10);
    if (!v11)
    {
      v45 = 0;
      goto LABEL_33;
    }

    hasValueOrError = objc_msgSend_hasValueOrError(v11, v17, v18, v19, v20);
  }

  if (!hasValueOrError || !objc_msgSend_isAPivotTable(self, v13, v14, v15, v16) || (objc_msgSend_isEmptyPivot(self, v13, v14, v15, v16) & 1) != 0)
  {
LABEL_29:
    if ((objc_msgSend_cellFlags(v11, v13, v14, v15, v16) & 4) != 0)
    {
      objc_msgSend_formattedValue(v11, v66, v67, v68, v69);
    }

    else
    {
      objc_msgSend_stringForUnderlyingValue(v11, v66, v67, v68, v69);
    }
    v45 = ;
    goto LABEL_33;
  }

  v21 = objc_msgSend_pivotOwner(self, v13, v14, v15, v16);
  v26 = objc_msgSend_groupBySet(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_numberOfHeaderRows(self, v27, v28, v29, v30);
  v36 = objc_msgSend_numberOfHeaderColumns(self, v32, v33, v34, v35);
  v72 = 0u;
  v73 = 0u;
  objc_msgSend_cellUIDForCellID_(self, v37, *&a3, v38, v39);
  v44 = a3.column < v36 && v72 == *"aggre names col" && *(&v72 + 1) == *"mes col";
  v46 = v31 > a3.row && v73 == *"aggre names row" && *(&v73 + 1) == *"mes row";
  v47 = objc_msgSend_objectLocale(self, v40, v41, v42, v43);
  v51 = v47;
  v53 = v31 <= a3.row || a3.column >= v36;
  if (v46 || v44 || !v53)
  {

    goto LABEL_29;
  }

  if (v31 > a3.row)
  {
    v71 = objc_msgSend_descriptionForPivotGroupCellForColumnUid_upToLevel_(v26, v48, &v72, (LOBYTE(a3.row) + 1), v50);
LABEL_38:
    v45 = v71;
    goto LABEL_39;
  }

  if (a3.column < v36)
  {
    v71 = objc_msgSend_descriptionForPivotGroupCellForRowUid_upToLevel_(v26, v48, &v73, (LOBYTE(a3.column) + 1), v50);
    goto LABEL_38;
  }

  v54 = objc_msgSend_descriptionForPivotBodyCellForUidCoord_(v26, v48, &v72, v49, v50);
  v55 = MEMORY[0x277CCACA8];
  v57 = sub_2211310B0(v51, v56);
  v62 = objc_msgSend_formattedValue(v11, v58, v59, v60, v61);
  v45 = objc_msgSend_stringWithFormat_(v55, v63, v57, v64, v65, v62, v54, &stru_2834BADA0);

LABEL_39:
LABEL_33:

  return v45;
}

- (id)labelValueViewStringAtCellID:(TSUCellCoord)a3 optionalCell:(id)a4
{
  v6 = a4;
  if (!objc_msgSend_isAPivotTable(self, v7, v8, v9, v10) || (objc_msgSend_isEmptyPivot(self, v11, v12, v13, v14) & 1) != 0 || !v6 && (objc_msgSend_cellAtCellID_(self, v15, *&a3, v17, v18), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v19 = 0;
    goto LABEL_44;
  }

  v20 = objc_msgSend_objectLocale(self, v15, v16, v17, v18);
  v25 = objc_msgSend_numberOfHeaderRows(self, v21, v22, v23, v24);
  v30 = objc_msgSend_numberOfHeaderColumns(self, v26, v27, v28, v29);
  isSummaryRow = objc_msgSend_isSummaryRow_(self, v31, *&a3, v32, v33);
  isSummaryColumn = objc_msgSend_isSummaryColumn_(self, v35, a3.column, v36, v37);
  v42 = objc_msgSend_cellUIDForCellID_(self, v39, *&a3, v40, v41);
  v47 = a3.column < v30 && !*"aggre names col" && *"mes col" == 0;
  v48 = v25 > a3.row && !*"aggre names row" && *"mes row" == 0;
  if (v48 || v47)
  {
    if (v48 && v47)
    {
      goto LABEL_25;
    }

    if (a3.column >= v30)
    {
      v47 = 0;
    }

    if (v47 && v25 <= a3.row || (v25 > a3.row ? (v49 = v48) : (v49 = 0), (v50 = @"Field", v49) && a3.column >= v30))
    {
LABEL_25:
      v50 = @"Value Field";
    }

    goto LABEL_26;
  }

  if (a3.column >= v30 && v25 <= a3.row)
  {
    if (((isSummaryRow | isSummaryColumn) & 1) == 0 || (objc_msgSend_translator(self, v43, v44, v45, v46), v52 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(v52, v53, a3.column, 0, v54), v52, objc_msgSend_translator(self, v56, v57, v58, v59), v60 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(v60, v61, a3.row, 0, v62), v60, v55) && v63)
    {
      v51 = sub_2211094CC(v42, v20);
    }

    else
    {
      v51 = sub_221109484(v42, v20);
    }

    goto LABEL_43;
  }

  if (a3.column < v30 && v25 <= a3.row)
  {
    if ((isSummaryRow & 1) == 0)
    {
      v51 = sub_2211093F4(v42, v20);
      goto LABEL_43;
    }

LABEL_40:
    v51 = sub_2211093AC(v42, v20);
    goto LABEL_43;
  }

  v50 = @"Field";
  if (v25 > a3.row && a3.column >= v30)
  {
    if (!isSummaryColumn)
    {
      v51 = sub_22110943C(v42, v20);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_26:
  v51 = objc_msgSend_localizedStringForKey_value_table_(v20, v43, v50, &stru_2834BADA0, @"TSTables");
LABEL_43:
  v19 = v51;

LABEL_44:

  return v19;
}

- (TSUCellRect)mergeRangeAtCellID:(TSUCellCoord)a3
{
  v5 = objc_msgSend_mergeRangeAtCellID_(self->_translator, a2, *&a3, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (BOOL)isSingleCellOrMergeRange:(TSUCellRect)a3
{
  origin = a3.origin;
  v6 = a3.origin.row != 0x7FFFFFFF && (*&a3.origin & 0xFFFF00000000) != 0x7FFF00000000;
  v7 = v6 && *&a3.size == 0x100000001;
  result = 1;
  if (!v7)
  {
    if (!v6)
    {
      return 0;
    }

    size = a3.size;
    if (!a3.size.numberOfRows)
    {
      return 0;
    }

    if (!a3.size.numberOfColumns)
    {
      return 0;
    }

    v9 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&a3.origin, *&a3.size, v3);
    if (origin.row != v9 || ((v9 ^ *&origin) & 0x101FFFF00000000) != 0 || size != v10)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)hasMergeFragmentAtCellID:(TSUCellCoord)a3
{
  v6 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&a3, v3, v4);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = ((v6 ^ *&a3) & 0xFFFF00000000) != 0 || v6 != a3.row;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!HIDWORD(v7))
  {
    v10 = 0;
  }

  return (v6 & 0xFFFF00000000) != 0x7FFF00000000 && v10;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)a3
{
  if (a3.origin.row == 0x7FFFFFFF || (*&a3.origin & 0xFFFF00000000) == 0x7FFF00000000 || !a3.size.numberOfRows || !a3.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasRangeSpanningRowsForCellRange_(self->_translator, a2, *&a3.origin, *&a3.size, v3);
  }
}

- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)a3
{
  v4 = objc_msgSend_expandCellRangeToCoverMergedCells_(self->_translator, a2, *&a3.origin, *&a3.size, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)a3
{
  v5 = objc_msgSend_expandCellRegionToCoverMergedCells_(self->_translator, a2, a3, v3, v4);

  return v5;
}

- (BOOL)hasMergeRanges
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_mergeOwner(v5, v6, v7, v8, v9);
  hasMergeRanges = objc_msgSend_hasMergeRanges(v10, v11, v12, v13, v14);

  return hasMergeRanges;
}

- (id)shrinkReturningInverseForRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mergeOwner(self->_tableModel, v5, v6, v7, v8);
  isEmpty = objc_msgSend_isEmpty(v9, v10, v11, v12, v13);

  if (isEmpty)
  {
    v18 = 0;
  }

  else
  {
    v18 = objc_msgSend_shrinkReturningInverseForRegion_(self->_translator, v15, v4, v16, v17);
  }

  return v18;
}

- (id)removeReturningInverseForRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mergeOwner(self->_tableModel, v5, v6, v7, v8);
  isEmpty = objc_msgSend_isEmpty(v9, v10, v11, v12, v13);

  if (isEmpty)
  {
    v18 = 0;
  }

  else
  {
    v18 = objc_msgSend_removeReturningInverseForRegion_(self->_translator, v15, v4, v16, v17);
  }

  return v18;
}

- (id)performActionReturningInverse:(id)a3 formulaReplacer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_baseTableModel(self, v8, v9, v10, v11);
  v17 = objc_msgSend_mergeOwner(v12, v13, v14, v15, v16);
  v20 = objc_msgSend_performActionReturningInverse_formulaReplacer_(v17, v18, v6, v7, v19);

  return v20;
}

- (id)mergeActionForRegion:(id)a3
{
  v5 = objc_msgSend_mergeActionForRegion_(self->_translator, a2, a3, v3, v4);

  return v5;
}

- (id)mergeActionForRegion:(id)a3 nonOriginPartialsOnly:(BOOL)a4
{
  v5 = objc_msgSend_mergeActionForRegion_nonOriginPartialsOnly_(self->_translator, a2, a3, a4, v4);

  return v5;
}

- (void)enumerateMergesIntersectingCellRegion:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  translator = self->_translator;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221109B18;
  v11[3] = &unk_27845EEF8;
  v12 = v6;
  v8 = v6;
  objc_msgSend_enumerateMergesIntersectingCellRegion_usingBlock_(translator, v9, a3, v11, v10);
}

- (vector<TSUCellRect,)mergeRangesIntersectingRange:(TSTTableInfo *)self
{
  translator = self->_translator;
  if (translator)
  {
    objc_msgSend_mergeRangesIntersectingRange_(translator, a3, *&a4.origin, *&a4.size, v4);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorToCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUCellRect,)mergeRangesIntersectingCellRegion:(TSTTableInfo *)self
{
  v8 = a4;
  translator = self->_translator;
  if (translator)
  {
    objc_msgSend_mergeRangesIntersectingCellRegion_(translator, v5, v8, v6, v7);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorToCellRectVector();
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableInfo *)self
{
  translator = self->_translator;
  if (translator)
  {
    objc_msgSend_mergeRangesAndCrumbsIntersectingRange_(translator, a3, *&a4.origin, *&a4.size, v4);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorToCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (id)mergesIntersectingRange:(TSUCellRect)a3
{
  objc_msgSend_mergeRangesIntersectingRange_(self, a2, *&a3.origin, *&a3.size, v3);
  v4 = [TSTMergeListWrapper alloc];
  v8 = objc_msgSend_initWithMergeList_(v4, v5, __p, v6, v7);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v8;
}

- (id)mergesIntersectingCellRegion:(id)a3
{
  objc_msgSend_mergeRangesIntersectingCellRegion_(self, a2, a3, v3, v4);
  v5 = [TSTMergeListWrapper alloc];
  v9 = objc_msgSend_initWithMergeList_(v5, v6, __p, v7, v8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v9;
}

- (TSDFill)bodyFill
{
  v5 = objc_msgSend_bodyCellStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 898, v7, v8);

  return v9;
}

- (TSDFill)headerColumnsFill
{
  v5 = objc_msgSend_headerColumnCellStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 898, v7, v8);

  return v9;
}

- (TSDFill)headerRowsFill
{
  v5 = objc_msgSend_headerRowCellStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 898, v7, v8);

  return v9;
}

- (TSDFill)footerRowsFill
{
  v5 = objc_msgSend_footerRowCellStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 898, v7, v8);

  return v9;
}

- (id)fillForRow:(unsigned int)a3
{
  v11 = 0;
  v4 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(self, a2, *&a3, &v11, v3);
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

- (id)fillForColumn:(unsigned __int16)a3
{
  v11 = 0;
  v4 = objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(self, a2, a3, &v11, v3);
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

- (TSDStroke)categoryLevel1TopStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 808, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel2TopStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 809, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel3TopStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 810, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel4TopStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 811, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel5TopStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 812, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel1LabelSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 818, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel2LabelSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 819, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel3LabelSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 820, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel4LabelSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 821, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel5LabelSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 822, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel1BottomStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 813, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel2BottomStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 814, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel3BottomStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 815, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel4BottomStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 816, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel5BottomStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 817, v7, v8);

  return v9;
}

- (TSDStroke)categoryLevel1InteriorStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 791, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 823, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)categoryLevel2InteriorStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 791, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 824, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)categoryLevel3InteriorStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 791, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 825, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)categoryLevel4InteriorStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 791, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 826, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)categoryLevel5InteriorStroke
{
  v6 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  if (objc_msgSend_intValueForProperty_(v6, v7, 791, v8, v9))
  {
    v14 = objc_msgSend_tableStyle(self, v10, v11, v12, v13);
    v18 = objc_msgSend_valueForProperty_(v14, v15, 827, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSDStroke)bodyPivotGroupHorizontalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 828, v7, v8);

  return v9;
}

- (TSDStroke)bodyPivotGroupVerticalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 829, v7, v8);

  return v9;
}

- (TSDStroke)bodyPivotDeEmphasisHorizontalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 830, v7, v8);

  return v9;
}

- (TSDStroke)bodyPivotEmphasisVerticalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 831, v7, v8);

  return v9;
}

- (TSDStroke)headerColumnPivotGroupHorizontalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 832, v7, v8);

  return v9;
}

- (TSDStroke)headerColumnPivotGroupDeEmphasisStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 833, v7, v8);

  return v9;
}

- (TSDStroke)headerRowPivotGroupVerticalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 835, v7, v8);

  return v9;
}

- (TSDStroke)headerRowPivotGroupDeEmphasisStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 836, v7, v8);

  return v9;
}

- (TSDStroke)headerColumnPivotSeparatorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 834, v7, v8);

  return v9;
}

- (TSDStroke)headerRowPivotTitleStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 837, v7, v8);

  return v9;
}

- (TSDStroke)footerRowPivotGroupVerticalStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3, v4);
  v9 = objc_msgSend_valueForProperty_(v5, v6, 838, v7, v8);

  return v9;
}

- (id)strokeExporterReturningDefaultStrokes:(BOOL)a3
{
  v3 = a3;
  v5 = [TSTStrokeExporter alloc];
  if (v3)
  {
    v7 = objc_msgSend_initWithDefaultStrokeProvider_customStrokeProvider_tableInfo_(v5, v6, self, self, self);
  }

  else
  {
    v7 = objc_msgSend_initWithDefaultStrokeProvider_customStrokeProvider_tableInfo_(v5, v6, 0, self, self);
  }

  return v7;
}

- (int)maxStrokeOrder
{
  v10 = objc_msgSend_strokeSidecar(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_strokeSidecar(self, v6, v7, v8, v9);
    v16 = objc_msgSend_maxOrder(v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = 2;
  }

  return v16;
}

- (id)cellBorderAtCellID:(TSUCellCoord)a3
{
  v11 = objc_msgSend_strokeSidecar(self, a2, *&a3, v3, v4);
  if (v11)
  {
    v12 = objc_msgSend_strokeSidecar(self, v7, v8, v9, v10);
    v16 = objc_msgSend_cellBorderAtCellID_(v12, v13, *&a3, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_cellBorder(TSTCellBorder, v7, v8, v9, v10);
  }

  return v16;
}

- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v19 = a3;
  v12 = objc_msgSend_strokeSidecar(self, v8, v9, v10, v11);
  v17 = objc_msgSend_numberOfColumns(self, v13, v14, v15, v16);
  if (v17)
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(v12, v18, v19, v6, v5, 0, v17);
  }

  else
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(v12, v18, v19, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v19 = a3;
  v12 = objc_msgSend_strokeSidecar(self, v8, v9, v10, v11);
  v17 = objc_msgSend_numberOfColumns(self, v13, v14, v15, v16);
  if (v17)
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(v12, v18, v19, v6, v5, 0, v17);
  }

  else
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(v12, v18, v19, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v19 = a3;
  v12 = objc_msgSend_strokeSidecar(self, v8, v9, v10, v11);
  v17 = objc_msgSend_numberOfRows(self, v13, v14, v15, v16);
  if (v17)
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(v12, v18, v19, v6, v5, 0, v17);
  }

  else
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(v12, v18, v19, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v19 = a3;
  v12 = objc_msgSend_strokeSidecar(self, v8, v9, v10, v11);
  v17 = objc_msgSend_numberOfRows(self, v13, v14, v15, v16);
  if (v17)
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(v12, v18, v19, v6, v5, 0, v17);
  }

  else
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(v12, v18, v19, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)a3 forTopOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = *&a4;
  v17 = a3;
  v15 = objc_msgSend_strokeSidecar(self, v11, v12, v13, v14);
  objc_msgSend_setStroke_forTopOfRow_order_columnRange_(v15, v16, v17, v9, v8, origin, length);
}

- (void)setStroke:(id)a3 forBottomOfRow:(unsigned int)a4 order:(int)a5 columnRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = *&a4;
  v17 = a3;
  v15 = objc_msgSend_strokeSidecar(self, v11, v12, v13, v14);
  objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(v15, v16, v17, v9, v8, origin, length);
}

- (void)setStroke:(id)a3 forLeftOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = a4;
  v17 = a3;
  v15 = objc_msgSend_strokeSidecar(self, v11, v12, v13, v14);
  objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(v15, v16, v17, v9, v8, origin, length);
}

- (void)setStroke:(id)a3 forRightOfColumn:(unsigned __int16)a4 order:(int)a5 rowRange:(TSTSimpleRange)a6
{
  length = a6.length;
  origin = a6.origin;
  v8 = *&a5;
  v9 = a4;
  v17 = a3;
  v15 = objc_msgSend_strokeSidecar(self, v11, v12, v13, v14);
  objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(v15, v16, v17, v9, v8, origin, length);
}

- (void)_setCellBordersFlatteningFromComplexInfo:(id)a3 sourceRegion:(id)a4
{
  v72[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_boundingTopLeftCellID(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_boundingTopLeftCellID(v7, v13, v14, v15, v16) >> 32;
  v21 = objc_msgSend_strokeExporterReturningDefaultStrokes_(v6, v18, 1, v19, v20);
  v22 = [TSTStrokeDefaultVendor alloc];
  v24 = objc_msgSend_initWithStrokeProvider_tableProvider_tableInfo_(v22, v23, self, self, self);
  v29 = objc_msgSend_range(self, v25, v26, v27, v28);
  v31 = objc_msgSend_changeDescriptorWithType_cellRange_(TSTChangeDescriptor, v30, 31, v29, v30);
  v72[0] = v31;
  v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v72, 1, v33);
  objc_msgSend_validateChangeDescriptors_(v24, v35, v34, v36, v37);

  v71.origin = objc_msgSend_range(self, v38, v39, v40, v41);
  v71.size = v42;
  LODWORD(v31) = TSUCellRect::numRows(&v71);
  v71.origin = objc_msgSend_range(self, v43, v44, v45, v46);
  v71.size = v47;
  v48 = TSUCellRect::numColumns(&v71);
  v49 = v31;
  v50 = v17;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22110C05C;
  block[3] = &unk_27845EF20;
  v51 = v48;
  v67 = v12;
  v68 = v49;
  v52 = v21;
  v64 = v52;
  v53 = v24;
  v65 = v53;
  v66 = self;
  v69 = v50;
  v70 = v51;
  dispatch_apply(2uLL, 0, block);
  v58 = objc_msgSend_strokeSidecar(self, v54, v55, v56, v57);
  objc_msgSend_flattenStrokeOrder(v58, v59, v60, v61, v62);
}

- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)a3
{
  v5 = a3;
  v6 = objc_msgSend_strokeSidecar(self, a2, a3, v3, v4);
  v10 = objc_msgSend_strokeLayerForLeftSideOfColumn_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)a3
{
  v5 = a3;
  v6 = objc_msgSend_strokeSidecar(self, a2, a3, v3, v4);
  v10 = objc_msgSend_strokeLayerForRightSideOfColumn_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)strokeLayerForTopOfRow:(unsigned int)a3
{
  v5 = *&a3;
  v6 = objc_msgSend_strokeSidecar(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_strokeLayerForTopOfRow_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)strokeLayerForBottomOfRow:(unsigned int)a3
{
  v5 = *&a3;
  v6 = objc_msgSend_strokeSidecar(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_strokeLayerForBottomOfRow_(v6, v7, v5, v8, v9);

  return v10;
}

- (int)getValue:(id *)a3 atCellID:(TSUCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5
{
  v5 = a5;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo getValue:atCellID:fetchRichTextAttributesIfPlainText:]", *&a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 7451, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    translator = self->_translator;
  }

  return objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(translator, a2, a3, *&a4, v5);
}

- (id)cellValueFromCell:(id)a3 atCellID:(TSUCellCoord)a4
{
  v9 = a3;
  translator = self->_translator;
  if (!translator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo cellValueFromCell:atCellID:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 7456, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    translator = self->_translator;
  }

  v22 = objc_msgSend_cellValueFromCell_atCellID_(translator, v6, v9, *&a4, v8);

  return v22;
}

- (BOOL)hasCellID:(TSUCellCoord)a3
{
  v9.origin = objc_msgSend_range(self, a2, *&a3, v3, v4);
  v9.size = v6;
  v7 = a3;
  return TSUCellRect::contains(&v9, v7);
}

- (id)cellRegionWithConditionalStyleMatchingCell:(TSUCellCoord)a3
{
  v6 = objc_msgSend_cellAtCellID_(self, a2, *&a3, v3, v4);
  if (objc_msgSend_hasConditionalStyle(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_conditionalStyle(v6, v11, v12, v13, v14);
    v16 = v15;
    if (v15)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x4812000000;
      v29 = sub_22110C938;
      v30 = sub_22110C95C;
      v31 = &unk_22188E88F;
      v33 = 0;
      v34 = 0;
      __p = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22110C974;
      v23[3] = &unk_27845E5A8;
      v24 = v15;
      v25 = &v26;
      objc_msgSend_iterateCellsWithFlags_searchFlags_usingBlock_(self, v17, 66, 0x2000, v23);
      v21 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v18, (v27 + 6), v19, v20);

      _Block_object_dispose(&v26, 8);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4 bakeForBadRefs:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v16 = v8;
  if (self->_isAPivotTable)
  {
    objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_bakeForBadRefs_(self->_pivotDataModel, v8, a3, v8, v5);
    v13 = objc_msgSend_pivotOwner(self, v9, v10, v11, v12);
    objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v13, v14, a3, v16, v15);

    v8 = v16;
  }

  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_bakeForBadRefs_(self->_tableModel, v8, a3, v8, v5);
}

- (void)setFormulaOwnerUIDsWithMap:(id)a3 shouldStealReferences:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  v15 = v6;
  if (self->_isAPivotTable)
  {
    pivotDataModel = self->_pivotDataModel;
    v12 = objc_msgSend_pivotDataTableMapper(v6, v6, v7, v8, v9);
    objc_msgSend_setFormulaOwnerUIDsWithMap_shouldStealReferences_(pivotDataModel, v13, v12, v4, v14);

    v10 = v15;
  }

  objc_msgSend_setFormulaOwnerUIDsWithMap_shouldStealReferences_(self->_tableModel, v10, v10, v4, v9);
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(self->_tableModel, a2, v2, v3, v4);
  objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(self->_summaryModel, v6, v7, v8, v9);
  if (self->_isAPivotTable)
  {
    pivotDataModel = self->_pivotDataModel;

    objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(pivotDataModel, v10, v11, v12, v13);
  }
}

- (void)reassignPasteboardCustomFormatKeys
{
  v13 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_tableModel, a2, 0, v2, v3);
  v8 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_summaryModel, v5, v13, v6, v7);
  if (self->_isAPivotTable)
  {
    v12 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_pivotDataModel, v9, v13, v10, v11);
  }
}

- (void)registerAllFormulasWithCalculationEngine:(id)a3 wasCrossDocumentPaste:(BOOL)a4 wasUndo:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v17 = a3;
  tableModel = self->_tableModel;
  isCategorized = objc_msgSend_isCategorized(self, v9, v10, v11, v12);
  objc_msgSend_registerAllFormulasWithCalculationEngine_wasCrossDocumentPaste_infoIsCategorized_wasUndo_(tableModel, v14, v17, v6, isCategorized, v5);
  objc_msgSend_registerAllFormulasWithCalculationEngine_wasCrossDocumentPaste_(self->_summaryModel, v15, v17, v6, v16);
}

- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)a3 toRow:(unsigned int)a4
{
  v6 = *&a5;
  v7 = *&a4;
  v9 = objc_msgSend_hiddenStates(self, a3, *&a4, *&a5, v5);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_referenceToHiddenStateFromRow_toRow_(v9, v10, v7, v6, v11);
  }

  else
  {
    retstr->range = 0u;
    retstr->_tableUID = 0u;
  }

  return result;
}

- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)a3 toColumn:(unsigned __int16)a4
{
  v6 = a5;
  v7 = a4;
  v9 = objc_msgSend_hiddenStates(self, a3, a4, a5, v5);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_referenceToHiddenStateFromColumn_toColumn_(v9, v10, v7, v6, v11);
  }

  else
  {
    retstr->range = 0u;
    retstr->_tableUID = 0u;
  }

  return result;
}

- (id)applyCollapseExpandState:(id)a3 outUndoState:(id *)a4
{
  v6 = a3;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  v13 = objc_msgSend_applyCollapseExpandState_outUndoState_(self->_hiddenStates, v11, v6, a4, v12);
  v18 = objc_msgSend_pivotOwner(self, v14, v15, v16, v17);
  objc_msgSend_collapseExpandChanged_forState_(v18, v19, v13, v6, v20);

  return v13;
}

- (TSUCellRect)minPopulatedCellRange
{
  v6 = objc_msgSend_numberOfHeaderColumns(self, a2, v2, v3, v4) + 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x4012000000;
  v40 = sub_22110D388;
  v41 = nullsub_11;
  v42 = &unk_22188E88F;
  v43 = 0;
  v44 = v6 | ((objc_msgSend_numberOfHeaderRows(self, v7, v8, v9, v10) + 1) << 32);
  LODWORD(v6) = objc_msgSend_numberOfColumns(self, v11, v12, v13, v14);
  v19 = objc_msgSend_numberOfRows(self, v15, v16, v17, v18);
  v24 = objc_msgSend_numberOfRows(self, v20, v21, v22, v23);
  v29 = objc_msgSend_numberOfFooterRows(self, v25, v26, v27, v28);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22110D398;
  v35[3] = &unk_27845EF70;
  v36 = v24 + ~v29;
  v35[4] = &v37;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v30, 0, v6 | (v19 << 32), 66, 4198400, v35);
  v31 = v38[6];
  v32 = v38[7];
  _Block_object_dispose(&v37, 8);
  v33 = v31;
  v34 = v32;
  result.size = v34;
  result.origin = v33;
  return result;
}

- (BOOL)findChartableRangesFromTableRange:(TSCERangeCoordinate)a3 getBodyRange:(TSCERangeCoordinate *)a4 headerColumnRange:(TSCERangeCoordinate *)a5 headerRowRange:(TSCERangeCoordinate *)a6
{
  bottomRight = a3._bottomRight;
  topLeft = a3._topLeft;
  column = a3._bottomRight.column;
  row = a3._topLeft.row;
  v11 = *&a3._topLeft & 0xFFFF00000000;
  if (a3._topLeft.row == 0x7FFFFFFFLL || v11 == 0x7FFF00000000)
  {
    v13 = *&a3._bottomRight & 0xFFFF00000000;
  }

  else
  {
    v12 = a3._bottomRight.row;
    v13 = *&a3._bottomRight & 0xFFFF00000000;
    if (a3._bottomRight.row != 0x7FFFFFFFLL && v13 != 0x7FFF00000000)
    {
      v14 = a3._bottomRight.column;
      if (a3._bottomRight.column >= a3._topLeft.column && a3._topLeft.row <= a3._bottomRight.row)
      {
        goto LABEL_20;
      }
    }
  }

  if (a3._topLeft.row != 0x7FFFFFFFLL && v11 == 0x7FFF00000000 && v13 == 0x7FFF00000000)
  {
    result = 0;
    v12 = a3._bottomRight.row;
    if (a3._bottomRight.row == 0x7FFFFFFFLL || a3._topLeft.row > a3._bottomRight.row)
    {
      return result;
    }

    v14 = a3._bottomRight.column;
  }

  else
  {
    result = 0;
    if (a3._topLeft.row != 0x7FFFFFFFLL)
    {
      return result;
    }

    if (v11 == 0x7FFF00000000)
    {
      return result;
    }

    if (v13 == 0x7FFF00000000)
    {
      return result;
    }

    result = 0;
    v12 = 0x7FFFFFFFLL;
    if (a3._bottomRight.row != 0x7FFFFFFF)
    {
      return result;
    }

    v14 = a3._bottomRight.column;
    if (a3._topLeft.column > a3._bottomRight.column)
    {
      return result;
    }
  }

LABEL_20:
  LOWORD(v161) = a3._topLeft.column;
  v169 = *&a3._topLeft & 0xFFFF00000000;
  v160 = objc_msgSend_numberOfRows(self, x1_0, *&a3._topLeft, *&a3._bottomRight, a4);
  v162 = objc_msgSend_numberOfColumns(self, v16, v17, v18, v19);
  v24 = objc_msgSend_numberOfHeaderRows(self, v20, v21, v22, v23);
  v29 = objc_msgSend_numberOfHeaderColumns(self, v25, v26, v27, v28);
  v164 = objc_msgSend_numberOfCategoryColumns(self, v30, v31, v32, v33);
  v159 = objc_msgSend_numberOfBaseHeaderColumns(self, v34, v35, v36, v37);
  if (v29)
  {
    v42 = v14 >= v29;
  }

  else
  {
    v42 = 1;
  }

  v43 = v42;
  v168 = v24;
  if (v24)
  {
    v44 = v24 > bottomRight.row;
  }

  else
  {
    v44 = 0;
  }

  v45 = !v44;
  v170 = self;
  v50 = objc_msgSend_categoryColumnIndex(self, v38, v39, v40, v41) != 0x7FFF && objc_msgSend_categoryColumnIndex(self, v46, v47, v48, v49) == column;
  if (topLeft == bottomRight.row)
  {
    isLabelRow = objc_msgSend_isLabelRow_(v170, v46, topLeft, v48, v49);
    v55 = objc_msgSend_isSummaryRow_(v170, v52, topLeft, v53, v54) ^ 1;
  }

  else
  {
    isLabelRow = 0;
    v55 = 1;
  }

  if (v50 || ((v43 | v45) & 1) == 0 || isLabelRow & 1 | (((v43 | v55) & 1) == 0))
  {
    return 0;
  }

  if ((v43 & 1) == 0)
  {
    v70 = v12 & 0xFFFF0000FFFFFFFFLL | ((v162 - 1) << 32);
    v71 = (v24 - 1) | ((v162 - 1) << 32);
    if (!v24)
    {
      v71 = 0x7FFF7FFFFFFFLL;
    }

    v163 = v71;
    v158 = 0x7FFF7FFFFFFFLL;
    if (v24)
    {
      v72 = v29 << 32;
    }

    else
    {
      v72 = 0x7FFF7FFFFFFFLL;
    }

    v169 = v72;
    v73 = row | (v164 << 32);
    LODWORD(v74) = topLeft;
    LOWORD(v75) = v29;
    v76 = v12 | ((v29 - 1) << 32);
    v77 = a6;
    v57 = v170;
    v78 = objc_msgSend_footerRowRange(v170, v46, v47, v48, v49);
    goto LABEL_142;
  }

  v56 = *&bottomRight & 0xFFFF00000000;
  v57 = v170;
  if ((v45 & 1) == 0)
  {
    v158 = 0x7FFF7FFFFFFFLL;
    v80 = (v160 - 1);
    v70 = v56 | v80;
    v163 = (v56 | (v168 - 1));
    v77 = a6;
    if (v29)
    {
      v73 = v168;
      v76 = v80 | ((v29 - 1) << 32);
      LODWORD(v74) = v168;
    }

    else
    {
      LODWORD(v74) = v168;
      v76 = 0x7FFF7FFFFFFFLL;
      v73 = 0x7FFF7FFFFFFFLL;
    }

    goto LABEL_140;
  }

  v58 = objc_msgSend_numberOfColumns(v170, v46, v47, v48, v49) - 1;
  LODWORD(v66) = objc_msgSend_numberOfRows(v170, v59, v60, v61, v62) - 1;
  v67 = v169;
  if (row != 0x7FFFFFFF && v169 == 0x7FFF00000000 && v56 == 0x7FFF00000000)
  {
    v68 = 0;
    v69 = v12 != 0x7FFFFFFF;
  }

  else
  {
    v69 = 0;
    v68 = v169 != 0x7FFF00000000 && v56 != 0x7FFF00000000 && row == 0x7FFFFFFF && v12 == 0x7FFFFFFF;
  }

  v84 = v168;
  if (v168 != 0x7FFFFFFF && v29 == 0x7FFF && v58 == 0x7FFF)
  {
    v85 = 0;
    v86 = v66 != 0x7FFFFFFF;
  }

  else
  {
    v86 = 0;
    v85 = v29 != 0x7FFF && v58 != 0x7FFF && v168 == 0x7FFFFFFF && v66 == 0x7FFFFFFF;
  }

  if (v69)
  {
    v67 = 0;
    v56 = 0x3E700000000;
  }

  else if (v68)
  {
    LODWORD(topLeft) = 0;
    bottomRight.row = 999999;
  }

  LODWORD(v90) = v168;
  if (v86)
  {
    v91 = 0;
    v92 = 0x3E700000000;
  }

  else
  {
    v91 = v29 << 32;
    v92 = v58 << 32;
    if (v85)
    {
      LODWORD(v90) = 0;
      LODWORD(v66) = 999999;
    }

    v84 = v90;
  }

  v93 = 0x7FFFFFFFLL;
  v70 = 0x7FFF7FFFFFFFLL;
  v94 = 0x7FFF00000000;
  if (topLeft <= v66 && v90 <= bottomRight.row)
  {
    v95 = HIDWORD(v67);
    v93 = 0x7FFFFFFFLL;
    if (HIDWORD(v67) <= HIDWORD(v92))
    {
      v63 = HIDWORD(v56);
      v64 = HIDWORD(v91);
      if (HIDWORD(v91) <= HIDWORD(v56))
      {
        v65 = topLeft;
        v93 = 0x7FFFFFFFLL;
        if (topLeft != 0x7FFFFFFFLL && v67 != 0x7FFF00000000)
        {
          v65 = bottomRight.row;
          v93 = 0x7FFFFFFFLL;
          if (bottomRight.row != 0x7FFFFFFFLL && v56 != 0x7FFF00000000)
          {
            v93 = 0x7FFFFFFFLL;
            if (v63 >= v95 && topLeft <= bottomRight.row)
            {
              v93 = 0x7FFFFFFFLL;
              if (v84 != 0x7FFFFFFF && v91 != 0x7FFF00000000)
              {
                v93 = 0x7FFFFFFFLL;
                if (v66 != 0x7FFFFFFFLL && v92 != 0x7FFF00000000)
                {
                  v96 = HIDWORD(v92);
                  v93 = 0x7FFFFFFFLL;
                  if (v64 <= HIDWORD(v92) && v90 <= v66)
                  {
                    if (v95 <= v64)
                    {
                      v97 = HIDWORD(v91);
                    }

                    else
                    {
                      v97 = HIDWORD(v67);
                    }

                    if (topLeft <= v90)
                    {
                      v90 = v90;
                    }

                    else
                    {
                      v90 = topLeft;
                    }

                    if (v63 < v96)
                    {
                      v96 = HIDWORD(v56);
                    }

                    if (bottomRight.row >= v66)
                    {
                      v66 = v66;
                    }

                    else
                    {
                      v66 = bottomRight.row;
                    }

                    v98 = v96 << 32;
                    v99 = !v69 || !v86;
                    if (v69 && v86)
                    {
                      v100 = 0x7FFF00000000;
                    }

                    else
                    {
                      v100 = v98;
                    }

                    if (v99)
                    {
                      v94 = v97 << 32;
                    }

                    else
                    {
                      v94 = 0x7FFF00000000;
                    }

                    if (v68 && v85)
                    {
                      v66 = 0x7FFFFFFFLL;
                    }

                    v70 = v100 | v66;
                    if (v68 && v85)
                    {
                      v93 = 0x7FFFFFFFLL;
                    }

                    else
                    {
                      v93 = v90;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  result = 0;
  v101 = v94 & 0xFFFF00000000;
  if ((v94 & 0xFFFF00000000) != 0x7FFF00000000 && v93 != 0x7FFFFFFF)
  {
    result = 0;
    if (v70 != 0x7FFFFFFFLL)
    {
      v102 = v70 & 0xFFFF00000000;
      if ((v70 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        result = 0;
        if (HIDWORD(v94) <= HIDWORD(v70))
        {
          v74 = v93 | v94;
          if ((v93 | v94) <= v70)
          {
            v161 = HIDWORD(v94);
            if (v168)
            {
              v103 = objc_msgSend_headerRowRange(v170, v63, v64, v65, v67);
              v104 = __C(v103, v180);
              v105 = v104;
              v107 = v106;
              v108 = sub_22110E12C(v104, v106);
              v109 = 0x7FFF7FFFFFFFLL;
              v169 = 0x7FFF7FFFFFFFLL;
              if (v108)
              {
                v169 = v105 | v101;
                v109 = v107 | v102;
              }
            }

            else
            {
              v109 = 0x7FFF7FFFFFFFLL;
              v169 = 0x7FFF7FFFFFFFLL;
              if (v74)
              {
                v129 = (v74 - 1);
                v130 = v129 | v102;
                v177.origin = 0;
                v177.size = &v177;
                v178 = 0x2020000000;
                v179 = 1;
                v173 = 0;
                v174 = &v173;
                v175 = 0x2020000000;
                v176 = 0;
                v131 = v129 | v101;
                TSUCellRectFromTSCERangeCoordinate();
                v172[0] = MEMORY[0x277D85DD0];
                v172[1] = 3221225472;
                v172[2] = sub_22110E180;
                v172[3] = &unk_27845EF98;
                v172[4] = &v177;
                v172[5] = &v173;
                objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v170, v133, v132, v133, 0, 0x20000000, v172);
                v134 = 0x7FFF7FFFFFFFLL;
                v169 = 0x7FFF7FFFFFFFLL;
                if (*(*&v177.size + 24) == 1)
                {
                  if (*(v174 + 24))
                  {
                    v134 = v130;
                  }

                  else
                  {
                    v134 = 0x7FFF7FFFFFFFLL;
                  }

                  if (*(v174 + 24))
                  {
                    v135 = v131;
                  }

                  else
                  {
                    v135 = 0x7FFF7FFFFFFFLL;
                  }

                  v169 = v135;
                }

                v136 = v134;
                _Block_object_dispose(&v173, 8);
                _Block_object_dispose(&v177, 8);
                v109 = v136;
                v57 = v170;
              }
            }

            v163 = v109;
            v158 = 0x7FFF7FFFFFFFLL;
            if (objc_msgSend_isCategorized(v57, v63, v64, v65, v67) && (objc_msgSend_indexesForSummaryRows(v57, v46, v47, v48, v49), v137 = objc_claimAutoreleasedReturnValue(), v140 = objc_msgSend_intersectsIndexesInRange_(v137, v138, v93, (v70 - v93 + 1), v139), v137, v140))
            {
              v141 = objc_msgSend_headerColumnRange(v57, v46, v47, v48, v49);
              v142 = __C(v141, v181);
              v144 = v143;
              if (sub_22110E12C(v142, v143))
              {
                v73 = v142 & 0xFFFF00000000 | v93;
                v76 = v144 & 0xFFFF00000000 | v70;
              }

              else
              {
                v76 = 0x7FFF7FFFFFFFLL;
                v73 = 0x7FFF7FFFFFFFLL;
              }
            }

            else
            {
              if (!v159)
              {
                v77 = a6;
                if (!HIDWORD(v74))
                {
                  LOWORD(v75) = 0;
                  v76 = 0x7FFF7FFFFFFFLL;
                  v73 = 0x7FFF7FFFFFFFLL;
                  goto LABEL_141;
                }

                v153 = (v94 + 0xFFFF00000000) & 0xFFFF00000000;
                v177.origin = 0;
                v177.size = &v177;
                v154 = v153 | v70;
                v178 = 0x2020000000;
                v179 = 1;
                v173 = 0;
                v174 = &v173;
                v175 = 0x2020000000;
                v176 = 0;
                v155 = v93 | v153;
                TSUCellRectFromTSCERangeCoordinate();
                v171[0] = MEMORY[0x277D85DD0];
                v171[1] = 3221225472;
                v171[2] = sub_22110E234;
                v171[3] = &unk_27845EF98;
                v171[4] = &v177;
                v171[5] = &v173;
                objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v170, v157, v156, v157, 0, 0x20000000, v171);
                v76 = 0x7FFF7FFFFFFFLL;
                v73 = 0x7FFF7FFFFFFFLL;
                if (*(*&v177.size + 24) == 1)
                {
                  if (*(v174 + 24))
                  {
                    v76 = v154;
                  }

                  else
                  {
                    v76 = 0x7FFF7FFFFFFFLL;
                  }

                  if (*(v174 + 24))
                  {
                    v73 = v155;
                  }

                  else
                  {
                    v73 = 0x7FFF7FFFFFFFLL;
                  }
                }

                _Block_object_dispose(&v173, 8);
                _Block_object_dispose(&v177, 8);
                v57 = v170;
LABEL_140:
                LOWORD(v75) = v161;
LABEL_141:
                v78 = objc_msgSend_footerRowRange(v57, v46, v47, v48, v49);
LABEL_142:
                v110 = j__TSUCellRectToTSCERangeCoordinate(v78, v79);
                if (WORD2(v110) > v75 || v74 > v111 || v74 < v110 || WORD2(v111) < v75 || WORD2(v110) > HIDWORD(v70) || v70 > v111 || v70 < v110 || WORD2(v111) < HIDWORD(v70))
                {
                  v115 = objc_msgSend_bodyRange(v57, v111, v112, v113, v114);
                  v117 = j__TSUCellRectToTSCERangeCoordinate(v115, v116);
                  if (v74 == 0x7FFFFFFF)
                  {
                    v124 = 0x7FFF7FFFFFFFLL;
                    v120 = a4;
                    v119 = a5;
                  }

                  else
                  {
                    v120 = a4;
                    v119 = a5;
                    if (v75 == 0x7FFF || v70 == 0x7FFFFFFF || (v70 & 0xFFFF00000000) == 0x7FFF00000000 || v75 > HIDWORD(v70) || v74 > v70)
                    {
                      v124 = 0x7FFF7FFFFFFFLL;
                    }

                    else
                    {
                      v121 = v117;
                      v122 = v118;
                      v123 = sub_22110E12C(v117, v118);
                      v120 = a4;
                      v119 = a5;
                      v124 = 0x7FFF7FFFFFFFLL;
                      if (v123)
                      {
                        LOWORD(v125) = v75;
                        if (v75 < WORD2(v121))
                        {
                          v125 = HIDWORD(v121);
                        }

                        if (v74 <= v121)
                        {
                          v126 = v121;
                        }

                        else
                        {
                          v126 = v74;
                        }

                        v158 = v126 & 0xFFFF0000FFFFFFFFLL | (v125 << 32);
                        if (HIDWORD(v70) >= WORD2(v122))
                        {
                          v127 = HIDWORD(v122);
                        }

                        else
                        {
                          v127 = HIDWORD(v70);
                        }

                        if (v70 >= v122)
                        {
                          v128 = v122;
                        }

                        else
                        {
                          v128 = v70;
                        }

                        v124 = v128 & 0xFFFF0000FFFFFFFFLL | (v127 << 32);
                      }
                    }
                  }

                  LODWORD(v74) = v158;
                  v75 = HIDWORD(v158);
                  v70 = v124;
                }

                else
                {
                  v120 = a4;
                  v119 = a5;
                }

                if (v120)
                {
                  v120->_topLeft = (v74 | (v75 << 32));
                  v120->_bottomRight = v70;
                }

                if (v119)
                {
                  v119->_topLeft = v73;
                  v119->_bottomRight = v76;
                }

                if (v77)
                {
                  v77->_topLeft = v169;
                  v77->_bottomRight = v163;
                }

                return 1;
              }

              v177.origin = objc_msgSend_headerColumnRange(v57, v46, v47, v48, v49);
              v177.size = v145;
              TSUCellRect::insetLeft(&v177);
              origin = v177.origin;
              size = v177.size;
              v148 = __C(origin, size);
              v150 = v149;
              v151 = sub_22110E12C(v148, v149);
              v152 = v148 & 0xFFFF00000000 | v93;
              if (v151)
              {
                v76 = v150 & 0xFFFF00000000 | v70;
              }

              else
              {
                v76 = 0x7FFF7FFFFFFFLL;
              }

              if (v151)
              {
                v73 = v152;
              }

              else
              {
                v73 = 0x7FFF7FFFFFFFLL;
              }
            }

            v77 = a6;
            goto LABEL_140;
          }
        }
      }
    }
  }

  return result;
}

- (TSKUIDStructCoord)cellUIDForCellID:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_cellUIDForCellID_(result, a3, *&a4, v4, v5);
  }

  retstr->_column = 0u;
  retstr->_row = 0u;
  return result;
}

- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)a3
{
  columnRowUIDMap = self->_columnRowUIDMap;
  row = a3->_row;
  v8[0] = a3->_column;
  v8[1] = row;
  return objc_msgSend_cellIDForCellUID_(columnRowUIDMap, a2, v8, v3, v4);
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)a3
{
  v5 = objc_msgSend_rowUIDForRowIndex_(self->_columnRowUIDMap, a2, *&a3, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)a3
{
  v6 = a4;
  columnRowUIDMap = self->_columnRowUIDMap;
  v11 = v6;
  if (columnRowUIDMap)
  {
    objc_msgSend_rowUIDsForRowIndexes_(columnRowUIDMap, v6, v6, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_rowUIDsForRowRange_(result, a3, a4.location, a4.length, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_orderedRowUidsFromUids_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_columnUIDForColumnIndex_(self->_columnRowUIDMap, a2, a3, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)a3
{
  v6 = a4;
  columnRowUIDMap = self->_columnRowUIDMap;
  v11 = v6;
  if (columnRowUIDMap)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(columnRowUIDMap, v6, v6, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_columnUIDsForColumnRange_(result, a3, a4.location, a4.length, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_orderedColumnUidsFromUids_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, a3, a4, v4, v5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (id)UIDSetForIndexes:(id)a3 isRows:(BOOL)a4
{
  v5 = objc_msgSend_UIDSetForIndexes_isRows_(self->_columnRowUIDMap, a2, a3, a4, v4);

  return v5;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self->_columnRowUIDMap, a2, a3, a4, v4);

  return v5;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)a3 isRows:(BOOL)a4
{
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(self->_columnRowUIDMap, a2, a3, a4, v4);
  result._upper = v6;
  result._lower = isRows;
  return result;
}

- (id)mutableIndexesForUIDSet:(id)a3 isRows:(BOOL)a4 notFoundUIDs:(id)a5
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self->_columnRowUIDMap, a2, a3, a4, a5);

  return v5;
}

- (_NSRange)rowRangeForUIDs:(const void *)a3
{
  v5 = objc_msgSend_rowRangeForUIDs_(self->_columnRowUIDMap, a2, a3, v3, v4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)a3
{
  v5 = objc_msgSend_columnRangeForUIDs_(self->_columnRowUIDMap, a2, a3, v3, v4);
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)cellUIDListFromCellRegion:(id)a3
{
  v4 = objc_msgSend_cellUIDListFromCellRegion_useCategoriesWildcards_(self, a2, a3, 0, v3);

  return v4;
}

- (id)cellUIDListFromCellRegion:(id)a3 useCategoriesWildcards:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TSTCellUIDList);
  v12 = objc_msgSend_range(self, v8, v9, v10, v11);
  v15 = objc_msgSend_regionByIntersectingRange_(v6, v13, v12, v13, v14);

  if (objc_msgSend_cellCount(v15, v16, v17, v18, v19))
  {
    v178 = v7;
    v180 = objc_msgSend_uncompressedCellUIDs(v7, v20, v21, v22, v23);
    isCategorized = objc_msgSend_isCategorized(self, v24, v25, v26, v27);
    if (objc_msgSend_isAPivotTable(self, v29, v30, v31, v32) & 1 | ((isCategorized & 1) == 0) || !v4)
    {
      v80 = 0;
      v179 = 0;
      v51 = 0;
      v60 = 0;
    }

    else
    {
      v37 = objc_msgSend_intersectingRowsIndexSet(v15, v33, v34, v35, v36);
      v42 = objc_msgSend_intersectingColumnsIndexSet(v15, v38, v39, v40, v41);
      v47 = objc_msgSend_indexesForSummaryRows(self->_translator, v43, v44, v45, v46);
      v51 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v37, v48, v47, v49, v50);

      v56 = objc_msgSend_indexesForLabelRows(self->_translator, v52, v53, v54, v55);
      v60 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v37, v57, v56, v58, v59);

      v179 = v42;
      if (objc_msgSend_count(v51, v61, v62, v63, v64) || objc_msgSend_count(v60, v65, v66, v67, v68))
      {
        v69 = objc_msgSend_count(v37, v65, v66, v67, v68);
        v74 = objc_msgSend_count(v51, v70, v71, v72, v73);
        v79 = objc_msgSend_count(v60, v75, v76, v77, v78) + v74;

        if (v69 == v79)
        {
LABEL_17:
          if (objc_msgSend_count(v51, v33, v34, v35, v36))
          {
            v114 = objc_msgSend_regionByIntersectingRowIndices_(v15, v110, v51, v112, v113);
            if (objc_msgSend_cellCount(v114, v115, v116, v117, v118))
            {
              v123 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v119, v120, v121, v122);
              objc_msgSend_setCount_(v123, v124, 6, v125, v126);
              v176 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v127, v128, v129, v130);
              v135 = objc_msgSend_numberOfRowLevels(self, v131, v132, v133, v134);
              v191[0] = MEMORY[0x277D85DD0];
              v191[1] = 3221225472;
              v191[2] = sub_22110EF28;
              v191[3] = &unk_27845EFC0;
              v191[4] = self;
              v192 = v51;
              v136 = v176;
              v193 = v136;
              v194 = v114;
              v137 = v123;
              v195 = v137;
              v196 = v179;
              v197 = v135;
              objc_msgSend_enumerateIndexesUsingBlock_(v192, v138, v191, v139, v140);
              v189[0] = MEMORY[0x277D85DD0];
              v189[1] = 3221225472;
              v189[2] = sub_22110F1B8;
              v189[3] = &unk_27845EFE8;
              v189[4] = self;
              v190 = v180;
              objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v137, v141, v189, v142, v143);
            }
          }

          if (objc_msgSend_count(v60, v110, v111, v112, v113))
          {
            v177 = objc_msgSend_regionByIntersectingRowIndices_(v15, v144, v60, v145, v146);
            v151 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v147, v148, v149, v150);
            objc_msgSend_setCount_(v151, v152, 6, v153, v154);
            v175 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v155, v156, v157, v158);
            v163 = objc_msgSend_numberOfRowLevels(self, v159, v160, v161, v162);
            v183[0] = MEMORY[0x277D85DD0];
            v183[1] = 3221225472;
            v183[2] = sub_22110F2A4;
            v183[3] = &unk_27845F010;
            v183[4] = self;
            v164 = v60;
            v184 = v164;
            v165 = v175;
            v185 = v165;
            v166 = v177;
            v186 = v166;
            v167 = v151;
            v187 = v167;
            v188 = v163;
            objc_msgSend_enumerateIndexesUsingBlock_(v164, v168, v183, v169, v170);
            v181[0] = MEMORY[0x277D85DD0];
            v181[1] = 3221225472;
            v181[2] = sub_22110F50C;
            v181[3] = &unk_27845EFE8;
            v181[4] = self;
            v182 = v180;
            objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v167, v171, v181, v172, v173);

            v60 = v164;
          }

LABEL_23:

          v7 = v178;
          goto LABEL_24;
        }

        v80 = 1;
      }

      else
      {

        v80 = 0;
      }
    }

    v81 = objc_msgSend_boundingCellRange(v15, v33, v34, v35, v36);
    v83 = v82;
    if (objc_msgSend_count(v60, v82, v84, v85, v86) || objc_msgSend_count(v51, v87, v88, v89, v90))
    {
      v91 = objc_msgSend_regionBySubtractingRowIndexes_(v15, v87, v60, v89, v90);
      v95 = objc_msgSend_regionBySubtractingRowIndexes_(v91, v92, v51, v93, v94);

      v98 = v95;
    }

    else
    {
      v98 = v15;
    }

    objc_msgSend_columnUIDsForColumnRange_(self, v96, WORD2(v81), v83, v97);
    objc_msgSend_rowUIDsForRowRange_(self, v99, v81, v83 >> 32, v100);
    v104 = objc_msgSend_regionOffsetBy_(v98, v101, -WORD2(v81) - (v81 << 32), v102, v103);

    v109 = objc_msgSend_UIDLookupList(v180, v105, v106, v107, v108);
    sub_22137AC20(v109, v104, v199, v198);
    if (v198[0])
    {
      v198[1] = v198[0];
      operator delete(v198[0]);
    }

    if (v199[0])
    {
      v199[1] = v199[0];
      operator delete(v199[0]);
    }

    if (!v80)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_24:

  return v7;
}

- (id)cellRegionFromCellUIDList:(id)a3
{
  v4 = a3;
  if (objc_msgSend_compressedSize(v4, v5, v6, v7, v8))
  {
    v19 = 0;
    v13 = objc_msgSend_cellRegionFromCellUIDList_includeLabelsWithSummaries_didAddLabels_(self, v9, v4, 0, &v19);
  }

  else if (v4)
  {
    v14 = objc_msgSend_uncompressedCellUIDs(v4, v9, v10, v11, v12);
    v13 = objc_msgSend_cellRegionFromCellUIDLookupList_(self, v15, v14, v16, v17);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)cellRegionFromCellUIDList:(id)a3 includeLabelsWithSummaries:(BOOL)a4 didAddLabels:(BOOL *)a5
{
  v6 = a4;
  v8 = a3;
  if (!objc_msgSend_compressedSize(v8, v9, v10, v11, v12))
  {
    v23 = objc_msgSend_uncompressedCellUIDs(v8, v13, v14, v15, v16);
    v25 = objc_msgSend_cellRegionFromCellUIDLookupList_includeLabelsWithSummaries_didAddLabels_(self, v24, v23, v6, a5);

    goto LABEL_55;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (objc_msgSend_writeCellIDsInCellUIDList_toVector_prunedCellUIDs_(self, v13, v8, &v48, &v45))
  {
    v20 = *v48;
    v21 = *(v49 - 1);
    v22 = HIDWORD(v21);
    if ((*v48 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      objc_msgSend_regionFromRange_(TSTCellRegion, v17, v21 & 0xFFFF000000000000 | *(v49 - 1) | (WORD2(v21) << 32), 0x100000001, v19);
      v26 = LABEL_44:;
      goto LABEL_45;
    }

    v27 = HIDWORD(v20);
    if ((v21 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
LABEL_8:
      objc_msgSend_regionFromRange_(TSTCellRegion, v17, v20 & 0xFFFF0000FFFFFFFFLL | (WORD2(v20) << 32), 0x100000001, v19);
      goto LABEL_44;
    }

    v28 = v20 & 0xFFFF00000000;
    if (v20 != 0x7FFFFFFFLL || v28 == 0x7FFF00000000)
    {
      v31 = v20 == 0x7FFFFFFF && v28 != 0x7FFF00000000;
      if (v20 <= v21)
      {
        v31 = 1;
      }

      if (v20 < v21 || !v31)
      {
        goto LABEL_31;
      }

      if (v20 != 0x7FFFFFFFLL && v28 == 0x7FFF00000000)
      {
        goto LABEL_8;
      }
    }

    if (WORD2(v20) <= WORD2(v21))
    {
      v32 = v28 == 0x7FFF00000000 ? 0x7FFF : HIDWORD(*v48);
      if (v32 >= WORD2(v21))
      {
        goto LABEL_8;
      }
    }

LABEL_31:
    if (WORD2(v20) >= WORD2(v21))
    {
      v33 = HIDWORD(v21);
    }

    else
    {
      v33 = HIDWORD(v20);
    }

    if (WORD2(v20) == 0x7FFF)
    {
      LOWORD(v27) = 0x7FFF;
    }

    if (WORD2(v21) <= v27)
    {
      LOWORD(v22) = v27;
    }

    if (v20 >= v21)
    {
      v34 = *(v49 - 1);
    }

    else
    {
      v34 = *v48;
    }

    if (v20 <= v21)
    {
      LODWORD(v20) = *(v49 - 1);
    }

    objc_msgSend_regionFromRange_(TSTCellRegion, v17, v34 | (v33 << 32), ((v22 - v33 + 1) | ((v20 - v34) << 32)) + 0x100000000, v19);
    goto LABEL_44;
  }

  v26 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v17, &v48, v18, v19);
LABEL_45:
  v35 = v26;
  if (a5)
  {
    *a5 = 0;
  }

  if (v46 == v45)
  {
    v25 = v26;
  }

  else
  {
    __p = 0;
    v43 = 0;
    v44 = 0;
    sub_22111A04C(&__p, v45, v46, (v46 - v45) >> 5);
    v37 = objc_msgSend_p_cellRegionFromWildcardCellUIDs_includeLabelsWithSummaries_didAddLabels_(self, v36, &__p, v6, a5);
    v25 = objc_msgSend_regionByAddingRegion_(v35, v38, v37, v39, v40);

    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

LABEL_55:

  return v25;
}

- (id)cellRegionFromCellUIDLookupList:(id)a3
{
  v3 = objc_msgSend_cellRegionFromCellUIDLookupList_includeLabelsWithSummaries_didAddLabels_(self, a2, a3, 0, 0);

  return v3;
}

- (id)cellRegionFromCellUIDLookupList:(id)a3 includeLabelsWithSummaries:(BOOL)a4 didAddLabels:(BOOL *)a5
{
  v6 = a4;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  objc_msgSend_convertCellUIDLookupList_toCellRangeVector_prunedSummaryCellUIDs_(self, a2, a3, &v26, &v23);
  v11 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v8, &v26, v9, v10);
  v12 = v11;
  if (a5)
  {
    *a5 = 0;
  }

  if (v24 == v23)
  {
    v18 = v11;
  }

  else
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
    sub_22111A04C(&__p, v23, v24, (v24 - v23) >> 5);
    v14 = objc_msgSend_p_cellRegionFromWildcardCellUIDs_includeLabelsWithSummaries_didAddLabels_(self, v13, &__p, v6, a5);
    v18 = objc_msgSend_regionByAddingRegion_(v12, v15, v14, v16, v17);

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  return v18;
}

- (id)p_cellRegionFromWildcardCellUIDs:()vector<TSKUIDStructCoord includeLabelsWithSummaries:(std:(BOOL)a4 :(BOOL *)a5 allocator<TSKUIDStructCoord>> *)a3 didAddLabels:
{
  v6 = a4;
  v9 = objc_opt_new();
  if (objc_msgSend_isCategorized(self, v10, v11, v12, v13))
  {
    begin = a3->__begin_;
    end = a3->__end_;
    if (a3->__begin_ != end)
    {
      v52 = a5;
      while (1)
      {
        v18 = objc_msgSend_columnIndexForColumnUID_(self, v14, begin->_column._lower, begin->_column._upper, v15);
        row = begin->_row;
        column = begin->_column;
        v54 = row;
        if (sub_2211A9038(&column))
        {
          break;
        }

        v41 = begin->_row;
        column = begin->_column;
        v54 = v41;
        if (sub_2211A910C(&column))
        {
          v42 = begin->_row;
          column = begin->_column;
          v54 = v42;
          v43 = sub_2211A8FF4(&column);
          v26 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self, v44, v43, v45, v46);
          v37 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v47, v26, v18, 1);
          v40 = objc_msgSend_region_addingRegion_(TSTCellRegion, v48, v9, v37, v49);
LABEL_12:
          v50 = v40;

          v9 = v50;
        }

        if (++begin == end)
        {
          goto LABEL_14;
        }
      }

      v20 = begin->_row;
      column = begin->_column;
      v54 = v20;
      v21 = sub_2211A8FF4(&column);
      v26 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v22, v21, v23, v24);
      if (v6)
      {
        v27 = begin->_row;
        column = begin->_column;
        v54 = v27;
        v28 = sub_2211A8FF4(&column);
        v35 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self, v29, v28, v30, v31);
        if (v52)
        {
          *v52 = 1;
        }

        v36 = objc_msgSend_tsu_indexSetByAddingIndexes_(v26, v32, v35, v33, v34);

        v26 = v36;
      }

      v37 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v25, v26, v18, 1);
      v40 = objc_msgSend_region_addingRegion_(TSTCellRegion, v38, v9, v37, v39);
      goto LABEL_12;
    }
  }

LABEL_14:

  return v9;
}

- (id)cellUIDRegionFromCellRegion:(id)a3
{
  v4 = objc_msgSend_cellUIDRegionFromRegion_inTable_(TSTCellUIDRegion, a2, a3, self, v3);

  return v4;
}

- (id)cellRegionFromCellUIDRegion:(id)a3
{
  v5 = objc_msgSend_cellRegionFromTable_(a3, a2, self, v3, v4);

  return v5;
}

- (TSKUIDStructCoord)cellUIDForCellID:(SEL)a3 useCategoriesWildcards:(TSUCellCoord)a4
{
  if (a5 && objc_msgSend_isCategorized(self, a3, *&a4, a5, v5))
  {
    v9 = objc_msgSend_groupLevelAtSummaryRow_(self->_translator, a3, a4.row, a5, v5);
    if (v9 != 255)
    {
      v13 = v9;
      objc_msgSend_columnUIDForColumnIndex_(self, v10, a4.column, v11, v12);
      v14 = retstr;
      v15 = v13;
      v16 = 0;
LABEL_7:

      return sub_2211A8F64(v15, v16, v14);
    }

    v17 = objc_msgSend_groupLevelAtLabelRow_(self, v10, *&a4, v11, v12);
    if (v17 != 255)
    {
      v18 = v17;
      objc_msgSend_columnUIDForColumnIndex_(self, a3, a4.column, a5, v5);
      v14 = retstr;
      v15 = v18;
      v16 = 1;
      goto LABEL_7;
    }
  }

  return objc_msgSend_cellUIDForCellID_(self, a3, *&a4, a5, v5);
}

- (void)setCategoryOrder:(id)a3
{
  v9 = a3;
  if (self->_categoryOrder != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_categoryOrder, a3);
  }
}

- (void)setSummaryModel:(id)a3
{
  v9 = a3;
  if (self->_summaryModel != v9)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_summaryModel, a3);
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

- (TSUCellRect)cellRangeForUIDRange:(const void *)a3
{
  v5 = objc_msgSend_cellRangeForUIDRange_(self->_columnRowUIDMap, a2, a3, v3, v4);
  result.size = v6;
  result.origin = v5;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)a3
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_cellUIDRangeForCellRange_(result, a3, *&a4.origin, *&a4.size, v4);
  }

  *&retstr->_colIdList.__cap_ = 0u;
  *&retstr->_rowIdList.__end_ = 0u;
  *&retstr->_colIdList.__begin_ = 0u;
  return result;
}

- (id)cellTractRefForUIDRectRef:(id)a3
{
  v5 = objc_msgSend_cellTractRefForUIDRectRef_(self->_columnRowUIDMap, a2, a3, v3, v4);

  return v5;
}

- (int)getCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4
{
  v6 = a3;
  v11 = objc_msgSend_translator(self, v7, v8, v9, v10);
  LODWORD(a4) = objc_msgSend_getCell_atCellUID_(v11, v12, v6, a4, v13);

  return a4;
}

- (int)getCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 suppressCellBorder:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v13 = objc_msgSend_translator(self, v9, v10, v11, v12);
  LODWORD(v5) = objc_msgSend_getCell_atCellUID_suppressCellBorder_(v13, v14, v8, a4, v5);

  return v5;
}

- (id)textStyleForCellWithEmptyStyleAtCellUID:(TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4
{
  row = a3->_row;
  column = a3->_column;
  v28 = row;
  if (sub_2211A9038(&column))
  {
    v8 = a3->_row;
    column = a3->_column;
    v28 = v8;
    v9 = sub_2211A8FF4(&column);
    if (a4)
    {
      *a4 = 1;
    }

    objc_msgSend_defaultTextStyleForTableStyleArea_(self, v10, v9 + 4, v11, v12);
    v22 = LABEL_9:;
    goto LABEL_11;
  }

  v13 = a3->_row;
  column = a3->_column;
  v28 = v13;
  if (sub_2211A910C(&column))
  {
    v17 = a3->_row;
    column = a3->_column;
    v28 = v17;
    v18 = sub_2211A8FF4(&column);
    if (a4)
    {
      *a4 = 1;
    }

    objc_msgSend_defaultTextStyleForTableStyleArea_(self, v19, v18 + 9, v20, v21);
    goto LABEL_9;
  }

  v23 = a3->_row;
  column = a3->_column;
  v28 = v23;
  v24 = objc_msgSend_cellIDForCellUID_(self, v14, &column, v15, v16);
  v22 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(self, v25, v24, 1, 0);
LABEL_11:

  return v22;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v18 adoptStylesheet:v6 withMapper:v7];
  objc_msgSend_adoptStylesheet_withMapper_(self->_tableModel, v8, v6, v7, v9);
  objc_msgSend_adoptStylesheet_withMapper_(self->_summaryModel, v10, v6, v7, v11);
  if (objc_msgSend_isAPivotTable(self, v12, v13, v14, v15))
  {
    objc_msgSend_adoptStylesheet_withMapper_(self->_pivotDataModel, v16, v6, v7, v17);
  }
}

- (TSTTableModel)filteringTableModel
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    objc_msgSend_pivotDataModel(self, v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_baseTableModel(self, v6, v7, v8, v9);
  }
  v10 = ;

  return v10;
}

- (TSTTableTranslator)filteringTableTranslator
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_filteringTableModel(self, v6, v7, v8, v9);
    v15 = objc_msgSend_identityTranslator(v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_translator(self, v6, v7, v8, v9);
  }

  return v15;
}

- (unint64_t)pivotSizeClass
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_numberOfRows(self, v6, v7, v8, v9);
  v15 = objc_msgSend_numberOfColumns(self, v11, v12, v13, v14);
  if (!HIWORD(v10) && v15 < 0x100)
  {
    return 1;
  }

  if (v15 * v10 > 0x2625A0 || v10 > 0x3D090)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)pivotDataModelSizeClass
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_pivotDataModel(self, v6, v7, v8, v9);
  v15 = objc_msgSend_tableSizeClass(v10, v11, v12, v13, v14);

  return v15;
}

- (BOOL)checkStateForArchiving:(BOOL)a3
{
  if (objc_msgSend_isAPivotTable(self, a2, a3, v3, v4))
  {
    v11 = 1;
    return v11 & 1;
  }

  if (objc_msgSend_numberOfLevels(self->_groupBy, v7, v8, v9, v10))
  {
    isEnabled = objc_msgSend_isEnabled(self->_groupBy, v12, v13, v14, v15);
    v21 = objc_msgSend_groupBy(self, v17, v18, v19, v20);
    v26 = v21;
    if (isEnabled)
    {
      if (v21)
      {
        v27 = objc_msgSend_groupBy(self, v22, v23, v24, v25);
        if (objc_msgSend_isEnabled(v27, v28, v29, v30, v31))
        {
          v36 = objc_msgSend_groupBy(self, v32, v33, v34, v35);
          v41 = objc_msgSend_numberOfLevels(v36, v37, v38, v39, v40);

          if (v41)
          {
            v42 = 1;
LABEL_33:
            v147 = objc_msgSend_categoryOrder(self, v22, v23, v24, v25);

            if (v147 && (objc_msgSend_categoryOrder(self, v148, v149, v150, v151), v152 = objc_claimAutoreleasedReturnValue(), hasValidInfo = objc_msgSend_hasValidInfo(v152, v153, v154, v155, v156), v152, (hasValidInfo & 1) != 0))
            {
              v158 = objc_msgSend_categoryOrder(self, v148, v149, v150, v151);
              hasValidUidMap = objc_msgSend_hasValidUidMap(v158, v159, v160, v161, v162);

              v164 = v42 & hasValidUidMap;
            }

            else
            {
              v164 = 0;
            }

            v165 = objc_msgSend_summaryModel(self, v148, v149, v150, v151);

            if (v165 && (objc_msgSend_summaryModel(self, v166, v167, v168, v169), v170 = objc_claimAutoreleasedReturnValue(), v175 = objc_msgSend_numberOfRows(v170, v171, v172, v173, v174), v170, v175))
            {
              v176 = objc_msgSend_groupBy(self, v166, v167, v168, v169);
              v181 = objc_msgSend_groupByChangeDistributor(v176, v177, v178, v179, v180);
              v186 = objc_msgSend_summaryModel(self, v182, v183, v184, v185);
              hasReceiver = objc_msgSend_hasReceiver_(v181, v187, v186, v188, v189);

              v191 = hasReceiver & v164;
              if (a3)
              {
LABEL_43:
                v211 = objc_msgSend_baseTableModel(self, v166, v167, v168, v169);
                v216 = objc_msgSend_strokeSidecar(v211, v212, v213, v214, v215);

                v221 = objc_msgSend_columnRowUIDMap(self, v217, v218, v219, v220);
                v226 = objc_msgSend_baseTableModel(self, v222, v223, v224, v225);
                v231 = objc_msgSend_columnRowUIDMap(v226, v227, v228, v229, v230);

                v237 = v221 != v231 && v216 == 0;
                v238 = objc_msgSend_translator(self, v232, v233, v234, v235);
                v239 = objc_opt_class();
                if (objc_msgSend_isMemberOfClass_(v238, v240, v239, v241, v242))
                {
                  v247 = objc_msgSend_groupBy(self, v243, v244, v245, v246);
                  v252 = objc_msgSend_groupByChangeDistributor(v247, v248, v249, v250, v251);
                  v256 = objc_msgSend_hasReceiver_(v252, v253, self->_translator, v254, v255);

                  if (v256)
                  {
                    v260 = v237 & v191;
LABEL_54:
                    v261 = objc_msgSend_checkMapsAndAssert_(self->_translator, v257, 1, v258, v259);
                    v343 = 0;
                    v344 = &v343;
                    v345 = 0x2020000000;
                    v346 = 1;
                    v266 = objc_msgSend_groupBy(self, v262, v263, v264, v265);
                    v342[0] = MEMORY[0x277D85DD0];
                    v342[1] = 3221225472;
                    v342[2] = sub_221110F50;
                    v342[3] = &unk_27845F038;
                    v342[4] = self;
                    v342[5] = &v343;
                    objc_msgSend_enumerateAggregates_(v266, v267, v342, v268, v269);
                    v11 = v261 & v260;

                    if ((v261 & v260) != 0)
                    {
                      v11 = *(v344 + 24);
                    }

                    _Block_object_dispose(&v343, 8);
                    return v11 & 1;
                  }
                }

                else
                {
                }

                v260 = 0;
                goto LABEL_54;
              }
            }

            else
            {
              v191 = 0;
              if (a3)
              {
                goto LABEL_43;
              }
            }

            v192 = objc_msgSend_baseTableModel(self, v166, v167, v168, v169);
            v197 = objc_msgSend_mergeOwner(v192, v193, v194, v195, v196);
            v202 = objc_msgSend_baseTableModel(self, v198, v199, v200, v201);
            v207 = objc_msgSend_bodyRowRange(v202, v203, v204, v205, v206);
            hasMergeRangeSpanningRowsForBaseCellRect = objc_msgSend_hasMergeRangeSpanningRowsForBaseCellRect_(v197, v208, v207, v208, v209);

            v191 &= hasMergeRangeSpanningRowsForBaseCellRect ^ 1;
            goto LABEL_43;
          }
        }

        else
        {
        }
      }

      v42 = 0;
      goto LABEL_33;
    }

    if (v21)
    {
      v58 = objc_msgSend_groupBy(self, v22, v23, v24, v25);
      if (objc_msgSend_isEnabled(v58, v59, v60, v61, v62))
      {
      }

      else
      {
        v270 = objc_msgSend_groupBy(self, v63, v64, v65, v66);
        v275 = objc_msgSend_numberOfLevels(v270, v271, v272, v273, v274);

        if (v275)
        {
          v276 = 1;
          goto LABEL_60;
        }
      }
    }

    v276 = 0;
LABEL_60:
    v277 = objc_msgSend_categoryOrder(self, v22, v23, v24, v25);

    if (v277 && (objc_msgSend_categoryOrder(self, v278, v279, v280, v281), v282 = objc_claimAutoreleasedReturnValue(), v287 = objc_msgSend_hasValidInfo(v282, v283, v284, v285, v286), v282, (v287 & 1) != 0))
    {
      v288 = objc_msgSend_categoryOrder(self, v278, v279, v280, v281);
      v293 = objc_msgSend_hasValidUidMap(v288, v289, v290, v291, v292);

      v294 = v276 & (v293 ^ 1);
    }

    else
    {
      v294 = 0;
    }

    v295 = objc_msgSend_summaryModel(self, v278, v279, v280, v281);

    v300 = objc_msgSend_baseTableModel(self, v296, v297, v298, v299);
    v305 = objc_msgSend_strokeSidecar(v300, v301, v302, v303, v304);

    v310 = objc_msgSend_columnRowUIDMap(self, v306, v307, v308, v309);
    v315 = objc_msgSend_baseTableModel(self, v311, v312, v313, v314);
    v320 = objc_msgSend_columnRowUIDMap(v315, v316, v317, v318, v319);

    v325 = objc_msgSend_translator(self, v321, v322, v323, v324);
    v326 = objc_opt_class();
    isMemberOfClass = objc_msgSend_isMemberOfClass_(v325, v327, v326, v328, v329);

    v334 = objc_msgSend_checkMapsAndAssert_(self->_translator, v331, 1, v332, v333) & isMemberOfClass;
    if (v310 != v320)
    {
      LOBYTE(v334) = 0;
    }

    if (!v305)
    {
      LOBYTE(v334) = 0;
    }

    if (!v295)
    {
      LOBYTE(v334) = 0;
    }

    v11 = v334 & v294;
    return v11 & 1;
  }

  v47 = objc_msgSend_groupBy(self, v12, v13, v14, v15);
  if (v47)
  {
    v48 = objc_msgSend_groupBy(self, v43, v44, v45, v46);
    if (objc_msgSend_isEnabled(v48, v49, v50, v51, v52))
    {
      v57 = 0;
    }

    else
    {
      v67 = objc_msgSend_groupBy(self, v53, v54, v55, v56);
      v57 = objc_msgSend_numberOfLevels(v67, v68, v69, v70, v71) == 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v76 = objc_msgSend_categoryOrder(self, v72, v73, v74, v75);

  if (v76 && (objc_msgSend_categoryOrder(self, v77, v78, v79, v80), v81 = objc_claimAutoreleasedReturnValue(), v86 = objc_msgSend_hasValidInfo(v81, v82, v83, v84, v85), v81, (v86 & 1) != 0))
  {
    v87 = objc_msgSend_categoryOrder(self, v77, v78, v79, v80);
    v92 = objc_msgSend_hasValidUidMap(v87, v88, v89, v90, v91);

    v93 = (v92 ^ 1) & v57;
  }

  else
  {
    v93 = 0;
  }

  v94 = objc_msgSend_summaryModel(self, v77, v78, v79, v80);

  if (!v94 || (objc_msgSend_summaryModel(self, v95, v96, v97, v98), v99 = objc_claimAutoreleasedReturnValue(), v104 = objc_msgSend_numberOfRows(v99, v100, v101, v102, v103), v99, v104) || (objc_msgSend_summaryModel(self, v95, v96, v97, v98), v105 = objc_claimAutoreleasedReturnValue(), v110 = objc_msgSend_numberOfColumns(v105, v106, v107, v108, v109), v105, v110))
  {
    v111 = 0;
  }

  else
  {
    v336 = objc_msgSend_summaryModel(self, v95, v96, v97, v98);
    v341 = objc_msgSend_numberOfPopulatedCells(v336, v337, v338, v339, v340) == 0;

    v111 = v341 & v93;
  }

  v112 = objc_msgSend_baseTableModel(self, v95, v96, v97, v98);
  v117 = objc_msgSend_strokeSidecar(v112, v113, v114, v115, v116);

  v122 = objc_msgSend_columnRowUIDMap(self, v118, v119, v120, v121);
  v127 = objc_msgSend_baseTableModel(self, v123, v124, v125, v126);
  v132 = objc_msgSend_columnRowUIDMap(v127, v128, v129, v130, v131);

  v137 = objc_msgSend_translator(self, v133, v134, v135, v136);
  v138 = objc_opt_class();
  v142 = objc_msgSend_isMemberOfClass_(v137, v139, v138, v140, v141);

  v146 = objc_msgSend_checkMapsAndAssert_(self->_translator, v143, 1, v144, v145) & v142;
  if (v122 != v132)
  {
    LOBYTE(v146) = 0;
  }

  if (!v117)
  {
    LOBYTE(v146) = 0;
  }

  v11 = v146 & v111;
  return v11 & 1;
}

- (void)_correctAndCheckStateSuppressingAssertions:(BOOL)a3
{
  if (objc_msgSend_numberOfLevels(self->_groupBy, a2, a3, v3, v4) && (objc_msgSend_isEnabled(self->_groupBy, v7, v8, v9, v10) & 1) != 0)
  {
    v11 = objc_msgSend_baseTableModel(self, v7, v8, v9, v10);
    v16 = objc_msgSend_strokeSidecar(v11, v12, v13, v14, v15);

    if (v16)
    {
      if (!a3)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v19, v20);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 8545, 0, "TableChecker: correcting strokeSidecar");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
      }

      v32 = objc_msgSend_baseTableModel(self, v17, v18, v19, v20);
      objc_msgSend_setStrokeSidecar_(v32, v33, 0, v34, v35);
    }

    v36 = objc_msgSend_summaryModel(self, v17, v18, v19, v20);

    if (!v36)
    {
      v41 = [TSTSummaryModel alloc];
      v45 = objc_msgSend_initWithTableInfo_(v41, v42, self, v43, v44);
      objc_msgSend_setSummaryModel_(self, v46, v45, v47, v48);
    }

    v49 = objc_msgSend_summaryModel(self, v37, v38, v39, v40);
    if (objc_msgSend_numberOfRows(v49, v50, v51, v52, v53))
    {
      v58 = objc_msgSend_groupBy(self, v54, v55, v56, v57);
      v63 = objc_msgSend_groupByChangeDistributor(v58, v59, v60, v61, v62);
      v68 = objc_msgSend_summaryModel(self, v64, v65, v66, v67);
      hasReceiver = objc_msgSend_hasReceiver_(v63, v69, v68, v70, v71);

      if (hasReceiver)
      {
        p_translator = &self->_translator;
        if (objc_msgSend_checkMapsAndAssert_(self->_translator, v73, 0, v75, v76))
        {
          goto LABEL_35;
        }

LABEL_31:
        if (!a3)
        {
          v159 = MEMORY[0x277D81150];
          v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v80, v81);
          v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v162, v163);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v165, v160, v164, 8562, 0, "TableChecker: correcting maps");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v166, v167, v168, v169);
        }

        self->_resetGroupingsOnUpgrade = 1;
LABEL_34:
        v170 = objc_msgSend_summaryModel(self, v78, v79, v80, v81);
        objc_msgSend_resetForCategories(v170, v171, v172, v173, v174);

        objc_msgSend_resetViewMap(*p_translator, v175, v176, v177, v178);
        goto LABEL_35;
      }
    }

    else
    {
    }

    if (!a3)
    {
      v140 = MEMORY[0x277D81150];
      v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v75, v76);
      v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v143, v144);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v146, v141, v145, 8556, 0, "TableChecker: correcting summaryModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149, v150);
    }

    v151 = objc_msgSend_summaryModel(self, v73, v74, v75, v76);
    objc_msgSend_setupReceiver(v151, v152, v153, v154, v155);

    p_translator = &self->_translator;
    if (objc_msgSend_checkMapsAndAssert_(self->_translator, v156, 0, v157, v158))
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v82 = objc_msgSend_categoryOrder(self, v7, v8, v9, v10);

  if (!v82)
  {
    if (!a3)
    {
      v118 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v85, v86);
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v121, v122);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v124, v119, v123, 8530, 0, "TableChecker: correcting nil categoryOrder in normal/disabled state");
LABEL_25:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132, v133);
    }

LABEL_26:
    v134 = [TSTCategoryOrder alloc];
    v138 = objc_msgSend_initWithTableInfo_(v134, v135, self, v136, v137);
    categoryOrder = self->_categoryOrder;
    self->_categoryOrder = v138;

    goto LABEL_35;
  }

  v87 = objc_msgSend_categoryOrder(self, v83, v84, v85, v86);
  hasValidInfo = objc_msgSend_hasValidInfo(v87, v88, v89, v90, v91);

  if ((hasValidInfo & 1) == 0)
  {
    if (!a3)
    {
      v125 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v95, v96);
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v127, v128);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v129, v119, v123, 8533, 0, "TableChecker: correcting missing backpointer in normal/disabled state");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v97 = objc_msgSend_categoryOrder(self, v93, v94, v95, v96);
  hasValidUidMap = objc_msgSend_hasValidUidMap(v97, v98, v99, v100, v101);

  if (hasValidUidMap)
  {
    if (!a3)
    {
      v103 = MEMORY[0x277D81150];
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v80, v81);
      v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v106, v107);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v109, v104, v108, 8536, 0, "TableChecker: correcting uid map in normal/disabled state");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
    }

    v114 = objc_msgSend_categoryOrder(self, v78, v79, v80, v81);
    __p = 0;
    v180 = 0;
    v181 = 0;
    objc_msgSend_setRowOrder_(v114, v115, &__p, v116, v117);
    if (__p)
    {
      v180 = __p;
      operator delete(__p);
    }
  }

LABEL_35:
  objc_msgSend_checkState(self, v78, v79, v80, v81);
}

- (void)resetCategoriesGroupByForOwnerRemapping
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  v10 = objc_msgSend_baseTableModel(self, v6, v7, v8, v9);
  v63 = objc_msgSend_categoryOwner(v10, v11, v12, v13, v14);

  v19 = objc_msgSend_groupByChangeDistributor(self->_groupBy, v15, v16, v17, v18);
  objc_msgSend_removeReceiver_(v19, v20, self->_translator, v21, v22);

  v26 = objc_msgSend_groupByForOwnerIndex_(v63, v23, 8, v24, v25);
  v31 = objc_msgSend_hiddenStates(self, v27, v28, v29, v30);
  objc_msgSend_willChangeGroupByTo_(v31, v32, v26, v33, v34);

  v39 = objc_msgSend_calcEngine(self, v35, v36, v37, v38);
  v44 = objc_msgSend_duringSubOwnerUIDUpgrade(v39, v40, v41, v42, v43);

  groupBy = self->_groupBy;
  if (v44)
  {
    if (v26 != groupBy)
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTTableInfo resetCategoriesGroupByForOwnerRemapping]", v46, v47);
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v52, v53);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 8594, 0, "Not expecting our pointer to change during subOwnerUIDUpgrade, if so, categoryOwner will need to update its structures");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    }

    objc_storeStrong(&self->_groupBy, v26);
  }

  else
  {
    objc_msgSend_unregisterGroupBy_(v63, v45, groupBy, v46, v47);
    objc_storeStrong(&self->_groupBy, v26);
    objc_msgSend_linkGroupBy_(v63, v60, v26, v61, v62);
  }
}

- (void)applyGroupingColumns:(id)a3
{
  v4 = a3;
  if (objc_msgSend_numberOfLevels(self->_groupBy, v5, v6, v7, v8))
  {
    v17 = objc_msgSend_count(v4, v9, v10, v11, v12);
    groupBy = self->_groupBy;
    if (v17)
    {
      v19 = objc_msgSend_groupByChangeDistributor(groupBy, v13, v14, v15, v16);
      objc_msgSend_removeReceiver_(v19, v20, self->_translator, v21, v22);

      v27 = objc_msgSend_groupByChangeDistributor(self->_groupBy, v23, v24, v25, v26);
      v32 = objc_msgSend_summaryModel(self, v28, v29, v30, v31);
      objc_msgSend_removeReceiver_(v27, v33, v32, v34, v35);

      objc_msgSend_setGroupingColumnList_(self->_groupBy, v36, v4, v37, v38);
      v43 = objc_msgSend_translator(self, v39, v40, v41, v42);
      objc_msgSend_addReceiverToGroupBy_(v43, v44, self->_groupBy, v45, v46);
    }

    else
    {
      v120 = objc_msgSend_groupByChangeDistributor(groupBy, v13, v14, v15, v16);
      objc_msgSend_removeReceiver_(v120, v121, self->_translator, v122, v123);

      objc_msgSend_resetGroupBy(self->_groupBy, v124, v125, v126, v127);
      v128 = [TSTTableTranslator alloc];
      v132 = objc_msgSend_initWithTableInfo_(v128, v129, self, v130, v131);
      translator = self->_translator;
      self->_translator = v132;
    }

    v51 = objc_msgSend_summaryModel(self, v47, v48, v49, v50);
    objc_msgSend_resetForCategories(v51, v52, v53, v54, v55);

    objc_msgSend_resetViewMap(self, v134, v135, v136, v137);
  }

  else if (objc_msgSend_count(v4, v9, v10, v11, v12))
  {
    objc_msgSend_setGroupingColumnList_(self->_groupBy, v56, v4, v57, v58);
    v63 = objc_msgSend_hiddenStates(self, v59, v60, v61, v62);
    objc_msgSend_willChangeGroupByTo_(v63, v64, self->_groupBy, v65, v66);

    v71 = objc_msgSend_summaryModel(self, v67, v68, v69, v70);
    objc_msgSend_resetForCategories(v71, v72, v73, v74, v75);

    objc_msgSend_resetViewMap(self, v76, v77, v78, v79);
    v84 = objc_msgSend_summaryModel(self, v80, v81, v82, v83);
    v89 = objc_msgSend_aggregateFormulaOwner(v84, v85, v86, v87, v88);
    v94 = objc_msgSend_calcEngine(self, v90, v91, v92, v93);
    isRegisteredWithCalcEngine = objc_msgSend_isRegisteredWithCalcEngine_(v89, v95, v94, v96, v97);

    if ((isRegisteredWithCalcEngine & 1) == 0)
    {
      v103 = objc_msgSend_summaryModel(self, v99, v100, v101, v102);
      v108 = objc_msgSend_aggregateFormulaOwner(v103, v104, v105, v106, v107);
      v113 = objc_msgSend_calcEngine(self, v109, v110, v111, v112);
      v138[0] = objc_msgSend_tableUID(self, v114, v115, v116, v117);
      v138[1] = v118;
      objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v108, v118, v113, v138, v119);
    }
  }
}

- (void)setIsCategoryEnabled:(BOOL)a3
{
  v5 = a3;
  groupBy = self->_groupBy;
  if (!groupBy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo setIsCategoryEnabled:]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 8655, 0, "Cannot enable/disable categories without a groupBy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    groupBy = self->_groupBy;
  }

  if (objc_msgSend_isEnabled(groupBy, a2, a3, v3, v4) != v5)
  {
    objc_msgSend_willModify(self, v19, v20, v21, v22);
    objc_msgSend_setIsEnabled_(self->_groupBy, v23, v5, v24, v25);
    if (v5)
    {
      v30 = objc_msgSend_summaryModel(self, v26, v27, v28, v29);
      objc_msgSend_resetForCategories(v30, v31, v32, v33, v34);

      v35 = [TSTColumnRowUIDMap alloc];
      v40 = objc_msgSend_context(self, v36, v37, v38, v39);
      v141[0] = 0;
      v141[1] = 0;
      *&v142 = 0;
      __p = 0;
      v145 = 0;
      v146 = 0;
      v42 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v35, v41, v40, v141, &__p);
      columnRowUIDMap = self->_columnRowUIDMap;
      self->_columnRowUIDMap = v42;

      if (__p)
      {
        v145 = __p;
        operator delete(__p);
      }

      if (v141[0])
      {
        v141[1] = v141[0];
        operator delete(v141[0]);
      }

      v44 = [TSTCategoryTranslator alloc];
      v48 = objc_msgSend_initWithTableInfo_(v44, v45, self, v46, v47);
      objc_msgSend_setTranslator_(self, v49, v48, v50, v51);

      objc_msgSend_resetViewMap(self, v52, v53, v54, v55);
      v60 = objc_msgSend_groupingColumns(self->_groupBy, v56, v57, v58, v59);
      v65 = objc_msgSend_count(v60, v61, v62, v63, v64);

      if (v65)
      {
        v70 = objc_msgSend_baseTableModel(self, v66, v67, v68, v69);
        objc_msgSend_setStrokeSidecar_(v70, v71, 0, v72, v73);
LABEL_13:

        v122 = objc_msgSend_calcEngine(self, v118, v119, v120, v121);
        __p = objc_msgSend_tableUID(self, v123, v124, v125, v126);
        v145 = v127;
        if (v122)
        {
          objc_msgSend_verticalSpillingCellsInTable_(v122, v127, &__p, v128, v129);
        }

        else
        {
          v143 = 0;
          *v141 = 0u;
          v142 = 0u;
        }

        v134 = objc_msgSend_calcEngine(self, v130, v131, v132, v133);
        __p = objc_msgSend_tableUID(self, v135, v136, v137, v138);
        v145 = v139;
        objc_msgSend_markCoordsDirty_inOwner_(v134, v139, v141, &__p, v140);

        sub_22107C860(&v142, *(&v142 + 1));
        return;
      }
    }

    else
    {
      v74 = objc_msgSend_groupByChangeDistributor(self->_groupBy, v26, v27, v28, v29);
      v79 = objc_msgSend_translator(self, v75, v76, v77, v78);
      objc_msgSend_removeReceiver_(v74, v80, v79, v81, v82);

      v87 = objc_msgSend_columnRowUIDMap(self->_tableModel, v83, v84, v85, v86);
      v88 = self->_columnRowUIDMap;
      self->_columnRowUIDMap = v87;

      v89 = [TSTTableTranslator alloc];
      v93 = objc_msgSend_initWithTableInfo_(v89, v90, self, v91, v92);
      objc_msgSend_setTranslator_(self, v94, v93, v95, v96);

      objc_msgSend_resetViewMap(self, v97, v98, v99, v100);
    }

    v101 = [TSTStrokeSidecar alloc];
    v70 = objc_msgSend_baseTableModel(self, v102, v103, v104, v105);
    v109 = objc_msgSend_initWithTableModel_(v101, v106, v70, v107, v108);
    v114 = objc_msgSend_baseTableModel(self, v110, v111, v112, v113);
    objc_msgSend_setStrokeSidecar_(v114, v115, v109, v116, v117);

    goto LABEL_13;
  }
}

- (BOOL)isEmptyPivot
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_pivotOwner(self, v6, v7, v8, v9);

  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableInfo isEmptyPivot]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 8697, 0, "invalid nil value for '%{public}s'", "self.pivotOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_pivotOwner(self, v11, v12, v13, v14);
  isEmptyPivot = objc_msgSend_isEmptyPivot(v26, v27, v28, v29, v30);

  return (isEmptyPivot & 1) != 0;
}

- (TSTPivotOwner)pivotOwner
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pivotOwner(v5, v6, v7, v8, v9);

  return v10;
}

- (void)updatePivotDataModel:(id)a3 pivotDataRefreshUID:(TSKUIDStruct)a4 pivotDataRefreshTimestamp:(double)a5 uidBodyTract:(TSKUIDStructTract *)a6
{
  v9 = a3;
  v14 = objc_msgSend_pivotOwner(self, v10, v11, v12, v13);
  pivotDataModel = self->_pivotDataModel;
  v20 = objc_msgSend_columnRowUIDMap(v9, v16, v17, v18, v19);
  v25 = objc_msgSend_rowUIDs(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_columnRowUIDMap(v9, v26, v27, v28, v29);
  v35 = objc_msgSend_columnUIDs(v30, v31, v32, v33, v34);
  v40 = objc_msgSend_numberOfHeaderRows(v9, v36, v37, v38, v39);
  objc_msgSend_resetForPivotingWithRowUids_columnUids_numberOfHeaderRows_numberOfHeaderColumns_(pivotDataModel, v41, v25, v35, v40, 0);

  objc_msgSend_updateMergesAndCellsAsPivotDataWithSourceModel_(self->_pivotDataModel, v42, v9, v43, v44);
  objc_msgSend_setPivotDataRefreshUID_(v14, v45, a4._lower, a4._upper, v46);
  objc_msgSend_setPivotDataRefreshTimestamp_(v14, v47, v48, v49, v50, a5);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_221086EBC(&v55, a6->_colIdList.__begin_, a6->_colIdList.__end_, a6->_colIdList.__end_ - a6->_colIdList.__begin_);
  __p = 0;
  v59 = 0;
  v60 = 0;
  sub_221086EBC(&__p, a6->_rowIdList.__begin_, a6->_rowIdList.__end_, a6->_rowIdList.__end_ - a6->_rowIdList.__begin_);
  objc_msgSend_setPivotSourceBodyUidTract_(v14, v51, &v55, v52, v53);
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }
}

- (void)applyPivotWithColumns:(id)a3 rows:(id)a4 aggregates:(id)a5 flatteningDimension:(int64_t)a6 optionsMap:(id)a7 pivotRowColumnRuleChangeUid:(TSKUIDStruct)a8 pivotAggregateRuleChangeUid:(TSKUIDStruct)a9
{
  v31 = a3;
  v13 = a4;
  v14 = a5;
  v19 = a7;
  if (!self->_isAPivotTable)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableInfo applyPivotWithColumns:rows:aggregates:flatteningDimension:optionsMap:pivotRowColumnRuleChangeUid:pivotAggregateRuleChangeUid:]", v17, v18);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 8749, 0, "Cannot apply pivot rules to a non-pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  objc_msgSend_resetViewMap(self, v15, v16, v17, v18);
}

- (void)resetPivotOrder
{
  objc_msgSend_setOrderUsingViewOrderForDimension_(self->_pivotOrder, a2, 1, v2, v3);
  pivotOrder = self->_pivotOrder;

  objc_msgSend_setOrderUsingViewOrderForDimension_(pivotOrder, v5, 0, v6, v7);
}

- (void)commitPivotChanges
{
  v6 = objc_msgSend_hiddenStates(self, a2, v2, v3, v4);
  v11 = objc_msgSend_rowHiddenStateExtent(v6, v7, v8, v9, v10);
  objc_msgSend_didChangeGroupByStructure(v11, v12, v13, v14, v15);

  objc_msgSend_updateCalcEngineForTableSize(self, v16, v17, v18, v19);
}

- (id)createDetailTableForPivotTableCell:(TSUCellCoord)a3
{
  inited = 0;
  if (a3.row != 0x7FFFFFFF && (*&a3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (objc_msgSend_isAPivotTable(self, a2, *&a3, v3, v4))
    {
      v8 = [TSTTableInfo alloc];
      v13 = objc_msgSend_context(self, v9, v10, v11, v12);
      inited = objc_msgSend_initAsDetailTableWithContext_sourcePivotTableInfo_pivotSourceCell_(v8, v14, v13, self, *&a3);
    }

    else
    {
      inited = 0;
    }
  }

  return inited;
}

- (BOOL)isSummaryRow:(unsigned int)a3
{
  v5 = *&a3;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&a3, v3, v4);
  if (isGroupedForRows)
  {
    translator = self->_translator;

    LOBYTE(isGroupedForRows) = objc_msgSend_isSummaryRow_(translator, v8, v5, v9, v10);
  }

  return isGroupedForRows;
}

- (BOOL)isLabelRow:(unsigned int)a3
{
  v5 = *&a3;
  isCategorized = objc_msgSend_isCategorized(self, a2, *&a3, v3, v4);
  if (isCategorized)
  {
    translator = self->_translator;

    LOBYTE(isCategorized) = objc_msgSend_isLabelRow_(translator, v8, v5, v9, v10);
  }

  return isCategorized;
}

- (BOOL)isSummaryOrLabelRow:(unsigned int)a3
{
  v5 = *&a3;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&a3, v3, v4);
  if (isGroupedForRows)
  {
    translator = self->_translator;

    LOBYTE(isGroupedForRows) = objc_msgSend_isSummaryOrLabelRow_(translator, v8, v5, v9, v10);
  }

  return isGroupedForRows;
}

- (unsigned)groupLevelAtRow:(unsigned int)a3
{
  if (objc_msgSend_isGroupedForRows(self, a2, *&a3, v3, v4))
  {
    v10 = objc_msgSend_groupLevelAtSummaryRow_(self->_translator, v7, a3, v8, v9);
    if (v10 == 255)
    {
      translator = self->_translator;

      LOBYTE(v10) = objc_msgSend_groupLevelAtLabelRow_(translator, v11, a3, v12, v13);
    }
  }

  else
  {
    LOBYTE(v10) = -1;
  }

  return v10;
}

- (TSUModelColumnIndex)numberOfBaseColumns
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10._column = objc_msgSend_numberOfColumns(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUModelRowIndex)numberOfBaseRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10._row = objc_msgSend_numberOfRows(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUModelColumnIndex)numberOfBaseHeaderColumns
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10._column = objc_msgSend_numberOfHeaderColumns(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUModelRowIndex)numberOfBaseHeaderRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10._row = objc_msgSend_numberOfHeaderRows(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUModelRowIndex)numberOfBaseFooterRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10._row = objc_msgSend_numberOfFooterRows(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUModelRowIndex)numberOfBaseBodyRows
{
  v6 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfRows(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_baseTableModel(self, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfHeaderRows(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_baseTableModel(self, v22, v23, v24, v25);
  v31._row = v11 - (v21 + objc_msgSend_numberOfFooterRows(v26, v27, v28, v29, v30));

  return v31;
}

- (TSUChromeColumnIndex)numberOfChromeColumns
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfColumns(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUChromeRowIndex)numberOfChromeRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfRows(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUChromeColumnIndex)numberOfChromeHeaderColumns
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfHeaderColumns(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUChromeRowIndex)numberOfChromeHeaderRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfHeaderRows(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUChromeRowIndex)numberOfChromeFooterRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_numberOfFooterRows(v5, v6, v7, v8, v9);

  return v10;
}

- (unsigned)numberOfGroupLevelsShowingLabelsUnderGroupAtIndex:(unsigned int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_groupLevelAtRow_(self, a2, *&a3, v3, v4);
  if (objc_msgSend_numberOfCategoryLevels(self, v8, v9, v10, v11) < v7)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    isLabelRow = objc_msgSend_isLabelRow_(self, v12, v5, v13, v14);
    v15 += isLabelRow;
    v5 = (v5 + 1);
    v7 = v7 - isLabelRow + 1;
  }

  while (v7 <= objc_msgSend_numberOfCategoryLevels(self, v17, v18, v19, v20));
  return v15;
}

- (unsigned)categoryColumnIndex
{
  if (objc_msgSend_isCategorized(self, a2, v2, v3, v4))
  {
    return 0;
  }

  else
  {
    return 0x7FFF;
  }
}

- (BOOL)isCategoryColumn:(unsigned __int16)a3
{
  v5 = a3;
  result = objc_msgSend_isCategorized(self, a2, a3, v3, v4);
  if (v5)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSummaryColumn:(unsigned __int16)a3
{
  v5 = a3;
  isAPivotTable = objc_msgSend_isAPivotTable(self, a2, a3, v3, v4);
  if (isAPivotTable)
  {
    translator = self->_translator;

    LOBYTE(isAPivotTable) = objc_msgSend_isSummaryColumn_(translator, v8, v5, v9, v10);
  }

  return isAPivotTable;
}

- (BOOL)isSummaryCell:(TSUCellCoord)a3
{
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&a3, v3, v4);
  if (isGroupedForRows)
  {
    isGroupedForRows = objc_msgSend_isSummaryRow_(self, v8, *&a3, v9, v10);
    if (isGroupedForRows)
    {
      LOBYTE(isGroupedForRows) = objc_msgSend_isCategoryColumn_(self, v11, a3.column, v12, v13) ^ 1;
    }
  }

  return isGroupedForRows;
}

- (BOOL)isCategoryLabelCell:(TSUCellCoord)a3
{
  isCategorized = objc_msgSend_isCategorized(self, a2, *&a3, v3, v4);
  if (isCategorized)
  {
    isCategorized = objc_msgSend_isLabelRow_(self, v8, *&a3, v9, v10);
    if (isCategorized)
    {
      LOBYTE(isCategorized) = objc_msgSend_isCategoryColumn_(self, v11, a3.column, v12, v13) ^ 1;
    }
  }

  return isCategorized;
}

- (BOOL)isCategoryColumnUneditableCell:(TSUCellCoord)a3
{
  isCategorized = objc_msgSend_isCategorized(self, a2, *&a3, v3, v4);
  if (isCategorized)
  {
    isCategorized = objc_msgSend_isCategoryColumn_(self, v8, a3.column, v9, v10);
    if (isCategorized)
    {
      LOBYTE(isCategorized) = objc_msgSend_isSummaryRow_(self, v11, *&a3, v12, v13) ^ 1;
    }
  }

  return isCategorized;
}

- (BOOL)isCategoryGroupValueCell:(TSUCellCoord)a3
{
  if (!objc_msgSend_isCategorized(self, a2, *&a3, v3, v4) || !objc_msgSend_isCategoryColumn_(self, v7, a3.column, v8, v9))
  {
    return 0;
  }

  return objc_msgSend_isSummaryRow_(self, v10, *&a3, v11, v12);
}

- (BOOL)isCategoryGroupValueLabelCell:(TSUCellCoord)a3
{
  if (!objc_msgSend_isCategorized(self, a2, *&a3, v3, v4) || !objc_msgSend_isCategoryColumn_(self, v7, a3.column, v8, v9))
  {
    return 0;
  }

  return objc_msgSend_isLabelRow_(self, v10, *&a3, v11, v12);
}

- (BOOL)isCategoryGroupingColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (!objc_msgSend_isCategorized(self, a2, a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_groupBy(self, v7, v8, v9, v10);
  v20[0] = objc_msgSend_columnUIDForColumnIndex_(self, v12, v5, v13, v14);
  v20[1] = v15;
  isGroupingColumn = objc_msgSend_isGroupingColumn_(v11, v15, v20, v16, v17);

  return isGroupingColumn;
}

- (BOOL)isCategoryAnyKindOfCell:(TSUCellCoord)a3
{
  isCategorized = objc_msgSend_isCategorized(self, a2, *&a3, v3, v4);
  if (isCategorized)
  {
    if (objc_msgSend_isCategoryColumn_(self, v8, a3.column, v9, v10))
    {
      LOBYTE(isCategorized) = 1;
    }

    else
    {

      LOBYTE(isCategorized) = objc_msgSend_isSummaryOrLabelRow_(self, v11, *&a3, v12, v13);
    }
  }

  return isCategorized;
}

- (BOOL)isPivotAnyKindOfCell:(TSUCellCoord)a3
{
  isAPivotTable = objc_msgSend_isAPivotTable(self, a2, *&a3, v3, v4);
  if (isAPivotTable)
  {
    if (objc_msgSend_isSummaryColumn_(self, v8, a3.column, v9, v10))
    {
      LOBYTE(isAPivotTable) = 1;
    }

    else
    {

      LOBYTE(isAPivotTable) = objc_msgSend_isSummaryRow_(self, v11, *&a3, v12, v13);
    }
  }

  return isAPivotTable;
}

- (BOOL)isPivotTrailingAligned:(TSUCellCoord)a3
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_pivotOwner(self, v7, v8, v9, v10);
  v15 = objc_msgSend_requiresTrailingAlignment_(v11, v12, *&a3, v13, v14);

  return v15;
}

- (BOOL)isPivotUnwrapped:(TSUCellCoord)a3
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_pivotOwner(self, v7, v8, v9, v10);
  v15 = objc_msgSend_requiresUnwrapping_(v11, v12, *&a3, v13, v14);

  return v15;
}

- (BOOL)isPivotGrandTotalRow:(unsigned int)a3
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_indexesForGrandTotalRows(self, v7, v8, v9, v10);
  v15 = objc_msgSend_containsIndex_(v11, v12, a3, v13, v14);

  return v15;
}

- (BOOL)isPivotGrandTotalColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (!objc_msgSend_isAPivotTable(self, a2, a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_indexesForGrandTotalColumns(self, v7, v8, v9, v10);
  v15 = objc_msgSend_containsIndex_(v11, v12, v5, v13, v14);

  return v15;
}

- (BOOL)isPivotLeadingRow:(unsigned int)a3
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_indexesForLeadingRows(self, v7, v8, v9, v10);
  v15 = objc_msgSend_containsIndex_(v11, v12, a3, v13, v14);

  return v15;
}

- (BOOL)isPivotLeadingColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (!objc_msgSend_isAPivotTable(self, a2, a3, v3, v4))
  {
    return 0;
  }

  v11 = objc_msgSend_indexesForLeadingColumns(self, v7, v8, v9, v10);
  v15 = objc_msgSend_containsIndex_(v11, v12, v5, v13, v14);

  return v15;
}

- (BOOL)hasHeaderColumnForAggregateNames
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_pivotOwner(self, v6, v7, v8, v9);
  hasHeaderColumnForAggregateNames = objc_msgSend_hasHeaderColumnForAggregateNames(v10, v11, v12, v13, v14);

  return hasHeaderColumnForAggregateNames;
}

- (BOOL)hasHeaderRowForAggregateNames
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_pivotOwner(self, v6, v7, v8, v9);
  hasHeaderRowForAggregateNames = objc_msgSend_hasHeaderRowForAggregateNames(v10, v11, v12, v13, v14);

  return hasHeaderRowForAggregateNames;
}

- (unsigned)columnIndexForGroupingColumn:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_columnUid(v4, v5, v6, v7, v8);
  LOWORD(self) = objc_msgSend_columnIndexForColumnUID_(self, v10, v9, v10, v11);

  return self;
}

- (id)allRowUIDsAtGroupLevel:(unsigned __int8)a3 withFilter:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ((objc_msgSend_isCategorized(self, v7, v8, v9, v10) & 1) != 0 || objc_msgSend_isAPivotTable(self, v11, v12, v13, v14))
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_2210F7420;
    v34 = sub_2210F7430;
    v35 = 0;
    if (v4 == 255)
    {
      v24 = 0;
    }

    else
    {
      v15 = objc_alloc_init(TSCEMutableUIDSet);
      v16 = v31[5];
      v31[5] = v15;

      v21 = objc_msgSend_groupByForRows(self->_translator, v17, v18, v19, v20);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_2211133E8;
      v27[3] = &unk_27845F060;
      v28 = v6;
      v29 = &v30;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v21, v22, v4, v27, v23);

      v24 = v31[5];
    }

    v25 = v24;
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)allColumnUIDsAtGroupLevel:(unsigned __int8)a3 withFilter:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (objc_msgSend_isAPivotTable(self, v7, v8, v9, v10))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_2210F7420;
    v30 = sub_2210F7430;
    v31 = 0;
    if (v4 == 255)
    {
      v20 = 0;
    }

    else
    {
      v11 = objc_alloc_init(TSCEMutableUIDSet);
      v12 = v27[5];
      v27[5] = v11;

      v17 = objc_msgSend_groupByForColumns(self->_translator, v13, v14, v15, v16);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_221113650;
      v23[3] = &unk_27845F060;
      v24 = v6;
      v25 = &v26;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v17, v18, v4, v23, v19);

      v20 = v27[5];
    }

    v21 = v20;
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)indexesForRowsContainedByGroupUIDs:(id)a3
{
  v5 = objc_msgSend_indexesForRowsContainedByGroupUIDs_(self->_translator, a2, a3, v3, v4);

  return v5;
}

- (id)indexesForColumnsContainedByGroupUIDs:(id)a3
{
  v5 = objc_msgSend_indexesForColumnsContainedByGroupUIDs_(self->_translator, a2, a3, v3, v4);

  return v5;
}

- (id)collapseSummaryGroupUIDs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_hiddenStates(self, v5, v6, v7, v8);
  v13 = objc_msgSend_collapseSummaryRowGroupUIDs_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)expandSummaryGroupUIDs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_hiddenStates(self, v5, v6, v7, v8);
  v13 = objc_msgSend_expandSummaryRowGroupUIDs_(v9, v10, v4, v11, v12);

  return v13;
}

- (BOOL)isGroupingRowCollapsed:(unsigned int)a3
{
  v5 = *&a3;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&a3, v3, v4);
  if (isGroupedForRows)
  {
    v12 = objc_msgSend_rowUIDForRowIndex_(self, v8, v5, v9, v10);

    LOBYTE(isGroupedForRows) = objc_msgSend_isGroupOrParentsCollapsed_dimension_(self, v11, v12, v11, 0);
  }

  return isGroupedForRows;
}

- (BOOL)isGroupingRowCollapsedAndVisible:(unsigned int)a3
{
  v5 = *&a3;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&a3, v3, v4);
  if (isGroupedForRows)
  {
    v12 = objc_msgSend_rowUIDForRowIndex_(self, v8, v5, v9, v10);

    LOBYTE(isGroupedForRows) = objc_msgSend_isGroupCollapsedAndVisible_dimension_(self, v11, v12, v11, 0);
  }

  return isGroupedForRows;
}

- (BOOL)isGroupingColumnCollapsed:(unsigned __int16)a3
{
  v5 = a3;
  isGroupedForColumns = objc_msgSend_isGroupedForColumns(self, a2, a3, v3, v4);
  if (isGroupedForColumns)
  {
    v12 = objc_msgSend_columnUIDForColumnIndex_(self, v8, v5, v9, v10);

    LOBYTE(isGroupedForColumns) = objc_msgSend_isGroupOrParentsCollapsed_dimension_(self, v11, v12, v11, 1);
  }

  return isGroupedForColumns;
}

- (BOOL)isGroupingColumnCollapsedAndVisible:(unsigned __int16)a3
{
  v5 = a3;
  isGroupedForColumns = objc_msgSend_isGroupedForColumns(self, a2, a3, v3, v4);
  if (isGroupedForColumns)
  {
    v12 = objc_msgSend_columnUIDForColumnIndex_(self, v8, v5, v9, v10);

    LOBYTE(isGroupedForColumns) = objc_msgSend_isGroupCollapsedAndVisible_dimension_(self, v11, v12, v11, 1);
  }

  return isGroupedForColumns;
}

- (id)indexesForSummaryRowsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingRowsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForSummaryRows(self->_translator, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (BOOL)hasSummaryRowsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingRowsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForSummaryRows(self->_translator, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3 inRegion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (objc_msgSend_isGroupedForRows(self, v7, v8, v9, v10) && objc_msgSend_maxRowLevel(self, v11, v12, v13, v14) >= v4)
  {
    v16 = objc_msgSend_intersectingRowsIndexSet(v6, v11, v12, v13, v14);
    v20 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self->_translator, v17, v4, v18, v19);
    v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v16, v21, v20, v22, v23);
  }

  else
  {
    v15 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v11, v12, v13, v14);
  }

  return v15;
}

- (id)indexesForSummaryRowsUpToGroupLevel:(unsigned __int8)a3 omitGroupsWithUids:(const void *)a4
{
  LODWORD(v6) = a3;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, v4);
  if (objc_msgSend_isGroupedForRows(self, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_maxRowLevel(self, v13, v14, v15, v16);
    v22 = objc_msgSend_groupByForRows(self->_translator, v18, v19, v20, v21);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_221113D70;
    v25[3] = &unk_27845F088;
    if (v17 >= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = v17;
    }

    v27 = a4;
    v25[4] = self;
    v26 = v8;
    objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v22, v23, 1, v6, v25);
  }

  return v8;
}

- (id)indexesForSummaryRowsFromGroupLevel:(unsigned __int8)a3 toGroupLevel:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, v4);
  if (objc_msgSend_isGroupedForRows(self, v9, v10, v11, v12) && objc_msgSend_maxRowLevel(self, v13, v14, v15, v16) >= v6)
  {
    v21 = objc_msgSend_maxRowLevel(self, v17, v18, v19, v20);
    v25 = v21 >= v5 ? v5 : v21;
    if (v25 >= v6)
    {
      do
      {
        v26 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v22, v6, v23, v24);
        objc_msgSend_addIndexes_(v8, v27, v26, v28, v29);

        ++v6;
      }

      while (v25 >= v6);
    }
  }

  return v8;
}

- (id)indexesForSummaryColumnsFromGroupLevel:(unsigned __int8)a3 toGroupLevel:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, v4);
  if (objc_msgSend_isGroupedForColumns(self, v9, v10, v11, v12) && objc_msgSend_maxColumnLevel(self, v13, v14, v15, v16) >= v6)
  {
    v21 = objc_msgSend_maxColumnLevel(self, v17, v18, v19, v20);
    v25 = v21 >= v5 ? v5 : v21;
    if (v25 >= v6)
    {
      do
      {
        v26 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self, v22, v6, v23, v24);
        objc_msgSend_addIndexes_(v8, v27, v26, v28, v29);

        ++v6;
      }

      while (v25 >= v6);
    }
  }

  return v8;
}

- (id)indexesForSummaryColumnsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingColumnsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForSummaryColumns(self, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForLabelRowsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingRowsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForLabelRows(self->_translator, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)a3 inRegion:(id)a4
{
  v5 = a3;
  v7 = objc_msgSend_intersectingRowsIndexSet(a4, a2, a3, a4, v4);
  v11 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self->_translator, v8, v5, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v7, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForLabelRowsUpToGroupLevel:(unsigned __int8)a3 omitGroupsWithUids:(const void *)a4
{
  v6 = a3;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, a3, a4, v4);
  v13 = objc_msgSend_groupByForRows(self->_translator, v9, v10, v11, v12);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_221114310;
  v19[3] = &unk_27845F088;
  v21 = a4;
  v19[4] = self;
  v14 = v8;
  v20 = v14;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v13, v15, 1, v6, v19);

  v16 = v20;
  v17 = v14;

  return v14;
}

- (id)indexesForSummaryAndLabelRowsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingRowsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForSummaryAndLabelRows(self, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForLeadingRowsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingRowsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForLeadingRows(self->_translator, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForLeadingColumnsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingColumnsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForLeadingColumns(self->_translator, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForNonSummaryBodyRows
{
  v6 = MEMORY[0x277CCAB58];
  v21.origin = objc_msgSend_bodyRowRange(self, a2, v2, v3, v4);
  v21.size = v7;
  v8 = TSUCellRect::rows(&v21);
  v11 = objc_msgSend_indexSetWithIndexesInRange_(v6, v9, v8, v9, v10);
  v16 = objc_msgSend_indexesForSummaryAndLabelRows(self, v12, v13, v14, v15);
  objc_msgSend_removeIndexes_(v11, v17, v16, v18, v19);

  return v11;
}

- (id)indexesForBodyAndFooterRows
{
  v6 = MEMORY[0x277CCAB58];
  v29.origin = objc_msgSend_bodyRowRange(self, a2, v2, v3, v4);
  v29.size = v7;
  v8 = TSUCellRect::rows(&v29);
  v10 = v9;
  v28.origin = objc_msgSend_footerRowRange(self, v9, v11, v12, v13);
  v28.size = v14;
  v32.location = TSUCellRect::rows(&v28);
  v32.length = v15;
  v31.location = v8;
  v31.length = v10;
  v16 = NSUnionRange(v31, v32);
  v18 = objc_msgSend_indexSetWithIndexesInRange_(v6, v16.length, v16.location, v16.length, v17);
  v23 = objc_msgSend_indexesForSummaryAndLabelRows(self, v19, v20, v21, v22);
  objc_msgSend_removeIndexes_(v18, v24, v23, v25, v26);

  return v18;
}

- (id)indexesForNonSummaryBodyColumns
{
  v6 = MEMORY[0x277CCAB58];
  v29.origin = objc_msgSend_bodyColumnRange(self, a2, v2, v3, v4);
  v29.size = v7;
  v8 = TSUCellRect::columns(&v29);
  v11 = objc_msgSend_indexSetWithIndexesInRange_(v6, v9, v8, v9, v10);
  v16 = objc_msgSend_indexesForCategoryColumns(self, v12, v13, v14, v15);
  objc_msgSend_removeIndexes_(v11, v17, v16, v18, v19);

  v24 = objc_msgSend_indexesForSummaryColumns(self, v20, v21, v22, v23);
  objc_msgSend_removeIndexes_(v11, v25, v24, v26, v27);

  return v11;
}

- (id)indexesForCategoryColumns
{
  v5 = MEMORY[0x277CCAA78];
  v7 = objc_msgSend_categoryColumnIndex(self, a2, v2, v3, v4);

  return objc_msgSend_indexSetWithIndex_(v5, v6, v7, v8, v9);
}

- (id)indexesForCategoryColumnsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingColumnsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForCategoryColumns(self, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)indexesForGroupingColumns
{
  v37 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCategorized(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8, v9);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = objc_msgSend_groupingColumns(self->_groupBy, v11, v12, v13, v14, 0);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v32, v36, 16);
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v15);
          }

          v24 = objc_msgSend_columnUid(*(*(&v32 + 1) + 8 * i), v17, v18, v19, v20);
          v27 = objc_msgSend_columnIndexForColumnUID_(self, v25, v24, v25, v26);
          objc_msgSend_addIndex_(v10, v28, v27, v29, v30);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v32, v36, 16);
      }

      while (v21);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)indexesForGroupingColumnsInRegion:(id)a3
{
  v6 = objc_msgSend_intersectingColumnsIndexSet(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_indexesForGroupingColumns(self, v7, v8, v9, v10);
  v15 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13, v14);

  return v15;
}

- (_NSRange)rowRangeUnderSummaryOrLabelRow:(unsigned int)a3
{
  Index = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  isLabelRow = objc_msgSend_isLabelRow_(self, a2, *&a3, v3, v4);
  if (objc_msgSend_isSummaryRow_(self, v10, isLabelRow + a3, v11, v12))
  {
    v16 = objc_msgSend_rowUIDForRowIndex_(self, v13, isLabelRow + a3, v14, v15);
    v18 = v17;
    v22 = objc_msgSend_groupBy(self, v17, v19, v20, v21);
    v25 = objc_msgSend_groupNodeForGroupUid_(v22, v23, v16, v18, v24);

    if (v25)
    {
      objc_msgSend_unfilteredRowUidsAsVector(v25, v26, v27, v28, v29);
    }

    else
    {
      __p = 0;
      v46 = 0;
      v47 = 0;
    }

    v34 = objc_msgSend_rowIndexesForUIDs_(self, v26, &__p, v28, v29);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    if (objc_msgSend_count(v34, v30, v31, v32, v33))
    {
      Index = objc_msgSend_firstIndex(v34, v35, v36, v37, v38);
      v8 = objc_msgSend_lastIndex(v34, v39, v40, v41, v42) - Index + 1;
    }
  }

  v43 = Index;
  v44 = v8;
  result.length = v44;
  result.location = v43;
  return result;
}

- (id)indexesForBodyRowsInGroupWithRowAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAA78]);
  if ((objc_msgSend_isSummaryOrLabelRow_(self, v6, v3, v7, v8) & 1) == 0)
  {
    v12 = objc_msgSend_rowUIDForRowIndex_(self, v9, v3, v10, v11);
    v14 = v13;
    v18 = objc_msgSend_groupBy(self, v13, v15, v16, v17);
    v23 = objc_msgSend_groupBy(self, v19, v20, v21, v22);
    v28 = objc_msgSend_numberOfLevels(v23, v24, v25, v26, v27);
    v30 = objc_msgSend_groupNodeForRowUid_atLevel_(v18, v29, v12, v14, v28);

    if (v30)
    {
      objc_msgSend_unfilteredRowUidsAsVector(v30, v31, v32, v33, v34);
    }

    else
    {
      __p = 0;
      v38 = 0;
      v39 = 0;
    }

    v35 = objc_msgSend_rowIndexesForUIDs_(self, v31, &__p, v33, v34);

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    v5 = v35;
  }

  return v5;
}

- (id)regionSubtractingCategoryColumnsAndRows:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isCategorized(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_indexesForCategoryColumns(self, v9, v10, v11, v12);
    v17 = objc_msgSend_regionBySubtractingColumnIndexes_(v4, v14, v13, v15, v16);

    v22 = objc_msgSend_indexesForSummaryAndLabelRows(self, v18, v19, v20, v21);
    v4 = objc_msgSend_regionBySubtractingRowIndexes_(v17, v23, v22, v24, v25);
  }

  return v4;
}

- (id)columnDisplayNameForCategoryLevel:(unsigned __int8)a3
{
  v5 = a3;
  if (objc_msgSend_isCategorized(self, a2, a3, v3, v4) && (objc_msgSend_groupBy(self, v7, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_groupingColumnAtCategoryLevel_(v11, v12, v5, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v11, v15))
  {
    v20 = objc_msgSend_columnUid(v15, v16, v17, v18, v19);
    v23 = objc_msgSend_columnIndexForColumnUID_(self, v21, v20, v21, v22);
    v27 = objc_msgSend_columnNameForColumnIndex_(self, v24, v23, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (unint64_t)groupingColumnLevelCountForColumn:(unsigned __int16)a3
{
  v15[0] = objc_msgSend_columnUIDForColumnIndex_(self, a2, a3, v3, v4);
  v15[1] = v6;
  groupBy = self->_groupBy;
  if (groupBy)
  {
    objc_msgSend_groupingColumnLevelsForColumn_(groupBy, v6, v15, v7, v8);
    v10 = v13;
    v11 = v14;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return v11 - v10;
}

- (BOOL)groupingTypesAreUniqueForColumn:(unsigned __int16)a3
{
  v5 = a3;
  if (objc_msgSend_isCategorized(self, a2, a3, v3, v4) && (v22 = objc_msgSend_columnUIDForColumnIndex_(self, v7, v5, v8, v9), v23 = v10, (objc_msgSend_isGroupingColumn_(self->_groupBy, v10, &v22, v11, v12) & 1) != 0))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    groupBy = self->_groupBy;
    v21 = 1;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2211151B0;
    v17[3] = &unk_27845F0B0;
    v17[4] = &v18;
    objc_msgSend_enumerateGroupingColumnsForColumn_withBlock_(groupBy, v13, v22, v23, v17);
    v15 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (int64_t)groupingArrowStateAtCellID:(TSUCellCoord)a3
{
  if (!objc_msgSend_isCategorized(self, a2, *&a3, v3, v4) || !objc_msgSend_isCategoryGroupValueCell_(self, v7, *&a3, v9, v10))
  {
    if (objc_msgSend_isAPivotTable(self, v7, v8, v9, v10))
    {
      v102.origin = objc_msgSend_headerColumnRange(self, v12, v13, v14, v15);
      v102.size = v16;
      column = a3.column;
      v18 = *&a3 & 0xFFFF000000000000 | (a3.column << 32);
      v19 = (v18 | a3.row);
      if (TSUCellRect::contains(&v102, v19))
      {
        if (a3.column < objc_msgSend_maxRowLevel(self, v20, v21, v22, v23))
        {
          v24 = objc_msgSend_rowUIDForRowIndex_(self, v20, *&a3, v22, v23);
          v26 = v25;
          v30 = objc_msgSend_groupByForRows(self, v25, v27, v28, v29);
          for (i = objc_msgSend_groupNodeForGroupUid_(v30, v31, v24, v26, v32);
          {
            v34 = v30;
            v30 = i;

            if (objc_msgSend_groupLevel(v30, v35, v36, v37, v38) <= (LOBYTE(a3.column) + 1))
            {
              break;
            }

            objc_msgSend_parentNode(v30, v39, v40, v41, v42);
          }

          if (a3.column == ((LOBYTE(a3.column) + 1) - 1))
          {
            v43 = objc_msgSend_hiddenStates(self, v39, v40, v41, v42);
            v101.origin = objc_msgSend_groupUid(v30, v44, v45, v46, v47);
            v101.size = v48;
            isRowGroupUIDCollapsed = objc_msgSend_isRowGroupUIDCollapsed_(v43, v48, &v101, v49, v50);

            if (isRowGroupUIDCollapsed)
            {

              return 2;
            }
          }

          v52 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(self, v39, (LOBYTE(a3.column) + 1), v41, v42);
          v56 = objc_msgSend_containsIndex_(v52, v53, a3.row, v54, v55);

          if (v56)
          {
            return 1;
          }
        }
      }

      v101.origin = objc_msgSend_headerRowRange(self, v20, v21, v22, v23);
      v101.size = v57;
      v58 = (v18 | a3.row);
      if (TSUCellRect::contains(&v101, v58))
      {
        if (a3.row < objc_msgSend_maxColumnLevel(self, v59, v60, v61, v62))
        {
          v66 = objc_msgSend_columnUIDForColumnIndex_(self, v63, a3.column, v64, v65);
          v68 = v67;
          v72 = objc_msgSend_groupByForColumns(self, v67, v69, v70, v71);
          v75 = objc_msgSend_groupNodeForGroupUid_(v72, v73, v66, v68, v74);
          v76 = LOBYTE(a3.row) + 1;
          while (1)
          {
            v77 = v72;
            v72 = v75;

            if (objc_msgSend_groupLevel(v72, v78, v79, v80, v81) <= v76)
            {
              break;
            }

            v75 = objc_msgSend_parentNode(v72, v82, v83, v84, v85);
          }

          if ((LOBYTE(a3.row) + 1) - 1 == a3.row)
          {
            v86 = objc_msgSend_hiddenStates(self, v82, v83, v84, v85);
            v100[0] = objc_msgSend_groupUid(v72, v87, v88, v89, v90);
            v100[1] = v91;
            isColumnGroupUIDCollapsed = objc_msgSend_isColumnGroupUIDCollapsed_(v86, v91, v100, v92, v93);

            if (isColumnGroupUIDCollapsed)
            {

              return 2;
            }
          }

          v95 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(self, v82, v76, v84, v85);
          v99 = objc_msgSend_containsIndex_(v95, v96, column, v97, v98);

          if (v99)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  if (objc_msgSend_isGroupingRowCollapsed_(self, v7, *&a3, v9, v10))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hasGroupingArrowInCellRegion:(id)a3
{
  v4 = a3;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  if (objc_msgSend_isCategorized(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_indexesForCategoryColumns(self, v9, v10, v11, v12);
    v17 = objc_msgSend_regionByIntersectingColumnIndices_(v4, v14, v13, v15, v16);

    v22 = objc_msgSend_indexesForSummaryRows(self, v18, v19, v20, v21);
    v4 = objc_msgSend_regionByIntersectingRowIndices_(v17, v23, v22, v24, v25);

    v29 = objc_msgSend_indexesOfVisibleRowsInCellRegion_(self, v26, v4, v27, v28);
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_2211159D4;
    v114[3] = &unk_27845F0D8;
    v114[4] = self;
    v114[5] = &v115;
    objc_msgSend_enumerateIndexesUsingBlock_(v29, v30, v114, v31, v32);
LABEL_3:

    goto LABEL_10;
  }

  if (objc_msgSend_isAPivotTable(self, v9, v10, v11, v12))
  {
    v37 = objc_msgSend_headerColumnRange(self, v33, v34, v35, v36);
    v39 = v38;
    v43 = objc_msgSend_headerRowRange(self, v38, v40, v41, v42);
    v45 = v44;
    if (objc_msgSend_intersectsCellRange_(v4, v44, v37, v39, v46))
    {
      v49 = objc_msgSend_regionByIntersectingRange_(v4, v47, v37, v39, v48);
      v53 = objc_msgSend_indexesOfVisibleRowsInCellRegion_(self, v50, v49, v51, v52);
      v57 = objc_msgSend_regionByIntersectingRowIndices_(v49, v54, v53, v55, v56);

      v62 = objc_msgSend_indexesForLeadingRows(self, v58, v59, v60, v61);
      v67 = objc_msgSend_indexesForSummaryRows(self, v63, v64, v65, v66);
      v71 = objc_msgSend_tsu_indexSetByAddingIndexes_(v62, v68, v67, v69, v70);

      v75 = objc_msgSend_regionByIntersectingRowIndices_(v57, v72, v71, v73, v74);

      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = sub_221115A34;
      v113[3] = &unk_27845EF48;
      v113[4] = self;
      v113[5] = &v115;
      objc_msgSend_enumerateCellIDsUsingBlock_(v75, v76, v113, v77, v78);
    }

    if ((v116[3] & 1) == 0 && objc_msgSend_intersectsCellRange_(v4, v47, v43, v45, v48))
    {
      v81 = objc_msgSend_regionByIntersectingRange_(v4, v79, v43, v45, v80);
      v85 = objc_msgSend_indexesOfVisibleColumnsInCellRegion_(self, v82, v81, v83, v84);
      v89 = objc_msgSend_regionByIntersectingColumnIndices_(v81, v86, v85, v87, v88);

      v94 = objc_msgSend_indexesForLeadingColumns(self, v90, v91, v92, v93);
      v99 = objc_msgSend_indexesForSummaryColumns(self, v95, v96, v97, v98);
      v103 = objc_msgSend_tsu_indexSetByAddingIndexes_(v94, v100, v99, v101, v102);

      v29 = objc_msgSend_regionByIntersectingColumnIndices_(v89, v104, v103, v105, v106);

      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = sub_221115A7C;
      v112[3] = &unk_27845EF48;
      v112[4] = self;
      v112[5] = &v115;
      objc_msgSend_enumerateCellIDsUsingBlock_(v29, v107, v112, v108, v109);

      goto LABEL_3;
    }
  }

LABEL_10:
  v110 = *(v116 + 24);
  _Block_object_dispose(&v115, 8);

  return v110;
}

- (id)peerCellRegionForCellRegion:(id)a3
{
  v5 = objc_msgSend_peerCellRegionForCellRegion_(self->_translator, a2, a3, v3, v4);

  return v5;
}

- (TSKUIDStruct)groupByUid
{
  *&v11 = objc_msgSend_baseTableUID(self, a2, v2, v3, v4);
  *(&v11 + 1) = v5;
  v9 = sub_2212C4930(&v11, 8, v6, v7, v8);
  result._upper = v10;
  result._lower = v9;
  return result;
}

- (BOOL)isGroupOrParentsCollapsed:(TSKUIDStruct)a3 dimension:(int64_t)a4
{
  v4 = a4;
  v5 = objc_msgSend_hiddenStates(self, a2, a3._lower, a3._upper, a4, a3._lower, a3._upper);
  LOBYTE(v4) = objc_msgSend_isGroupOrParentsCollapsed_dimension_(v5, v6, &v9, v4, v7);

  return v4;
}

- (BOOL)isGroupCollapsedAndVisible:(TSKUIDStruct)a3 dimension:(int64_t)a4
{
  v4 = a4;
  v5 = objc_msgSend_hiddenStates(self, a2, a3._lower, a3._upper, a4, a3._lower, a3._upper);
  LOBYTE(v4) = objc_msgSend_isGroupCollapsedAndVisible_dimension_(v5, v6, &v9, v4, v7);

  return v4;
}

- (id)categoryRefReferringToCellRef:(const void *)a3
{
  if (objc_msgSend_isCategorized(self, a2, a3, v3, v4) && (v10 = *a3, objc_msgSend_isSummaryRow_(self, v7, v10, v8, v9)))
  {
    v31[0] = objc_msgSend_columnUIDForColumnIndex_(self, v11, WORD2(v10), v12, v13);
    v31[1] = v14;
    v30[0] = objc_msgSend_rowUIDForRowIndex_(self, v14, v10, v15, v16);
    v30[1] = v17;
    v20 = objc_msgSend_groupLevelForGroupUid_(self, v17, v30, v18, v19);
    v21 = [TSCECategoryRef alloc];
    v29[0] = objc_msgSend_groupByUid(self, v22, v23, v24, v25);
    v29[1] = v26;
    v27 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v21, v26, v29, v30, v31, 11, v20);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)a3
{
  v5 = a3;
  v6 = objc_msgSend_groupByForRows(self->_translator, a2, a3, v3, v4);
  LOBYTE(v5) = objc_msgSend_groupLevelForGroupUid_(v6, v7, v5->_lower, v5->_upper, v8);

  return v5;
}

- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)a3 atGroupLevel:(unsigned __int8)a4
{
  v4 = a4;
  upper = a3._upper;
  lower = a3._lower;
  v7 = objc_msgSend_groupBy(self, a2, a3._lower, a3._upper, a4);
  LOBYTE(v4) = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v7, v8, lower, upper, v4);

  return v4;
}

- (void)setAggregateType:(unsigned __int8)a3 forColumnUID:(TSKUIDStruct)a4 atGroupLevel:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a3;
  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(self->_groupBy, a2, a3, a4._lower, a4._upper, a4._lower, a4._upper);
  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(self->_summaryModel, v8, v6, &v9, v5);
}

- (BOOL)shouldDisplaySummaryLabelRowAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_summaryModel(self, a2, a3, v3, v4);
  v11 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v7, v8, v5, v9, v10);

  if (v11)
  {
    return v11 == 2;
  }

  v16 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self, v12, v5, v13, v14);
  v21 = v16;
  if (v16)
  {
    v15 = objc_msgSend_count(v16, v17, v18, v19, v20) != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)processRowsWithPendingGroupingChangesAndReturnAffectedCellRegion
{
  if (objc_msgSend_count(self->_rowUIDsWithPendingGroupingChanges, a2, v2, v3, v4))
  {
    v6 = self->_rowUIDsWithPendingGroupingChanges;
    v7 = objc_alloc_init(TSCEMutableUIDSet);
    rowUIDsWithPendingGroupingChanges = self->_rowUIDsWithPendingGroupingChanges;
    self->_rowUIDsWithPendingGroupingChanges = v7;

    v11 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self, v9, v6, 1, v10);
    objc_msgSend_didMakeGroupingChangesInRowUIDs_(self->_translator, v12, v6, v13, v14);
    v17 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self, v15, v6, 1, v16);
    objc_msgSend_addIndexes_(v17, v18, v11, v19, v20);
    v24 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v21, v17, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)resetViewMap
{
  objc_msgSend_resetViewMap(self->_translator, a2, v2, v3, v4);

  objc_msgSend_updateCalcEngineForTableSize(self, v6, v7, v8, v9);
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
    v16 = objc_msgSend_hiddenStates(self, v11, v12, v13, v14);
    v21 = objc_msgSend_hiddenStateOwnerForRowsUID(v16, v17, v18, v19, v20);
    v23 = v22;
    v149._lower = v21;
    v149._upper = v22;

    if (!(v21 | v23) || (*&v148 = objc_msgSend_tableUID(self, v24, v25, v26, v27), *(&v148 + 1) = v28, v32 = sub_2212C4930(&v148, 4, v29, v30, v31), v149._lower == v32) && v149._upper == v24)
    {
      v15 = 1;
    }

    else
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableInfo verifySubOwnerUIDsUsed]", v26, v27);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v36, v37);
      v39 = TSKUIDStruct::description(&v149);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v34, v38, 9690, 0, "Row hidden state ownerUid isn't subOwner uid: %@", v39);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
      v15 = 0;
    }

    v45 = objc_msgSend_hiddenStates(self, v24, v25, v26, v27);
    v50 = objc_msgSend_hiddenStateOwnerForColumnsUID(v45, v46, v47, v48, v49);
    v52 = v51;

    if (v50 | v52)
    {
      *&v148 = objc_msgSend_tableUID(self, v53, v54, v55, v56);
      *(&v148 + 1) = v57;
      if (v50 != sub_2212C4930(&v148, 0xB, v58, v59, v60) || v52 != v53)
      {
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSTTableInfo verifySubOwnerUIDsUsed]", v55, v56);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v64, v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 9697, 0, "Column hidden state ownerUid isn't subOwner uid");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
        v15 = 0;
      }
    }

    v72 = objc_msgSend_summaryModel(self, v53, v54, v55, v56);
    v77 = objc_msgSend_aggregateFormulaOwnerUID(v72, v73, v74, v75, v76);
    v79 = v78;

    if (v77 | v79)
    {
      *&v148 = objc_msgSend_tableUID(self, v80, v81, v82, v83);
      *(&v148 + 1) = v84;
      if (v77 != sub_2212C4930(&v148, 9, v85, v86, v87) || v79 != v80)
      {
        v88 = MEMORY[0x277D81150];
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSTTableInfo verifySubOwnerUIDsUsed]", v82, v83);
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v91, v92);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v94, v89, v93, 9704, 0, "Category Aggregate ownerUid isn't subOwner uid");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97, v98);
        v15 = 0;
      }
    }

    v103 = objc_msgSend_groupByUid(self, v80, v81, v82, v83);
    v104 = v99;
    if (v103 | v99)
    {
      *&v148 = objc_msgSend_tableUID(self, v99, v100, v101, v102);
      *(&v148 + 1) = v105;
      if (v103 != sub_2212C4930(&v148, 8, v106, v107, v108) || v104 != v99)
      {
        v109 = MEMORY[0x277D81150];
        v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "[TSTTableInfo verifySubOwnerUIDsUsed]", v101, v102);
        v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v112, v113);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v115, v110, v114, 9712, 0, "GroupBy uid isn't subOwner uid");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118, v119);
        v15 = 0;
      }
    }

    if (self->_isAPivotTable)
    {
      v120 = objc_msgSend_pivotDataModel(self, v99, v100, v101, v102);
      v125 = objc_msgSend_tableUID(v120, v121, v122, v123, v124);
      v127 = v126;

      if (v125 | v127)
      {
        *&v148 = objc_msgSend_tableUID(self, v128, v129, v130, v131);
        *(&v148 + 1) = v132;
        if (v125 != sub_2212C4930(&v148, 0x64, v133, v134, v135) || v127 != v128)
        {
          v136 = MEMORY[0x277D81150];
          v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "[TSTTableInfo verifySubOwnerUIDsUsed]", v130, v131);
          v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v139, v140);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v142, v137, v141, 9721, 0, "PivotDataModel uid isn't subOwner uid");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v143, v144, v145, v146);
          v15 = 0;
        }
      }

      v15 &= objc_msgSend_verifySubOwnerUIDsUsed(self->_pivotDataModel, v128, v129, v130, v131);
    }
  }

  return v15;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v58.receiver = self;
  v58.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v58 loadFromArchive:v7 unarchiver:v6];
  v8 = *(a3 + 4);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_221116AC4;
  v57[3] = &unk_27845F100;
  v57[4] = self;
  v9 = v6;
  v11 = objc_opt_class();
  if (v8)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, v8, v11, 0, v57);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, MEMORY[0x277D80A18], v11, 0, v57);
  }

  v15 = *(a3 + 4);
  if ((v15 & 0x4000) != 0)
  {
    self->_isAPivotTable = *(a3 + 128);
  }

  if ((v15 & 8) != 0)
  {
    v16 = *(a3 + 6);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_221116AD8;
    v56[3] = &unk_27845F128;
    v56[4] = self;
    v17 = v9;
    v18 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v56);

    v15 = *(a3 + 4);
  }

  if ((v15 & 0x20) != 0)
  {
    v20 = *(a3 + 8);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_221116AE4;
    v55[3] = &unk_27845E0B8;
    v55[4] = self;
    v21 = v9;
    v22 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v21, v23, v20, v22, 0, v55);

    v15 = *(a3 + 4);
  }

  if ((v15 & 0x10) != 0)
  {
    v24 = *(a3 + 7);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_221116AF8;
    v54[3] = &unk_27845F150;
    v54[4] = self;
    v25 = v9;
    v26 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v27, v24, v26, 0, v54);

    v15 = *(a3 + 4);
  }

  self->_formulaCoordSpace = *(a3 + 31) & (v15 << 18 >> 31);
  if ((v15 & 0x100) != 0)
  {
    v28 = [TSCECoordMapper alloc];
    if (*(a3 + 11))
    {
      v32 = objc_msgSend_initFromArchive_(v28, v29, *(a3 + 11), v30, v31);
    }

    else
    {
      v32 = objc_msgSend_initFromArchive_(v28, v29, &TSCE::_CoordMapperArchive_default_instance_, v30, v31);
    }

    fromTableCoordMapperForPasteboard = self->_fromTableCoordMapperForPasteboard;
    self->_fromTableCoordMapperForPasteboard = v32;
  }

  if (self->_isAPivotTable)
  {
    v34 = *(a3 + 4);
    if ((v34 & 0x400) != 0)
    {
      v35 = *(a3 + 13);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_221116B04;
      v53[3] = &unk_27845F100;
      v53[4] = self;
      v36 = v9;
      v37 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v36, v38, v35, v37, 0, v53);

      v34 = *(a3 + 4);
    }

    if ((v34 & 0x800) != 0)
    {
      v39 = *(a3 + 14);
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_221116BCC;
      v52[3] = &unk_27845F178;
      v52[4] = self;
      v40 = v9;
      v41 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v40, v42, v39, v41, 0, v52);
    }
  }

  objc_msgSend_setLayoutEngine_(self, v12, 0, v13, v14);
  if ((*(a3 + 17) & 2) != 0)
  {
    v46 = [TSTArchivedLayoutEngineBundle alloc];
    if (*(a3 + 12))
    {
      v49 = objc_msgSend_initWithArchive_unarchiver_(v46, v47, *(a3 + 12), v9, v48);
    }

    else
    {
      v49 = objc_msgSend_initWithArchive_unarchiver_(v46, v47, &TST::_LayoutEngineArchive_default_instance_, v9, v48);
    }

    archivedLayoutEngineBundle = self->_archivedLayoutEngineBundle;
    self->_archivedLayoutEngineBundle = v49;
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_221116C50;
  v51[3] = &unk_27845E3F8;
  v51[4] = self;
  objc_msgSend_addFinalizeHandler_(v9, v43, v51, v44, v45);
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
  v17 = objc_msgSend_messageWithDescriptor_(v13, v14, off_2812E4498[54], v15, v16);

  objc_msgSend_loadFromArchive_unarchiver_(self, v18, v17, v13, v19);
  if (objc_msgSend_preUFFVersion(v13, v20, v21, v22, v23) <= 0x2CBEA17F7)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2211176E4;
    v37[3] = &unk_27845E3F8;
    v37[4] = self;
    objc_msgSend_addFinalizeHandler_(v13, v24, v37, v26, v27);
  }

  if (objc_msgSend_sourceType(v13, v24, v25, v26, v27) == 2)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_221117768;
    v36[3] = &unk_27845E3F8;
    v36[4] = self;
    objc_msgSend_addFinalizeHandler_(v13, v28, v36, v30, v31);
  }

  if (objc_msgSend_fileFormatVersion(v13, v28, v29, v30, v31) < *MEMORY[0x277D80990])
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_221117770;
    v35[3] = &unk_27845E3F8;
    v35[4] = self;
    objc_msgSend_addFinalizeHandler_(v13, v32, v35, v33, v34);
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  objc_msgSend_checkStateForArchiving_(self, v7, 1, v8, v9);
  v199[0] = MEMORY[0x277D85DD0];
  v199[1] = 3221225472;
  v199[2] = sub_221118284;
  v199[3] = &unk_27845F1A0;
  v202 = a3;
  v10 = v6;
  v200 = v10;
  v201 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v10, v11, 1, a3, v199);
  v18 = objc_msgSend_baseTableModel(self, v12, v13, v14, v15);
  *(a3 + 4) |= 2u;
  v19 = *(a3 + 4);
  if (!v19)
  {
    v20 = *(a3 + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0390](v20);
    *(a3 + 4) = v19;
  }

  objc_msgSend_setStrongReference_message_(v10, v16, v18, v19, v17);

  v25 = objc_msgSend_summaryModel(self, v21, v22, v23, v24);

  if (v25)
  {
    v32 = objc_msgSend_summaryModel(self, v26, v27, v28, v29);
    *(a3 + 4) |= 8u;
    v33 = *(a3 + 6);
    if (!v33)
    {
      v34 = *(a3 + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x223DA0390](v34);
      *(a3 + 6) = v33;
    }

    objc_msgSend_setStrongReference_message_(v10, v30, v32, v33, v31);
  }

  v35 = objc_msgSend_columnRowUIDMap(self, v26, v27, v28, v29);
  v40 = objc_msgSend_baseTableModel(self, v36, v37, v38, v39);
  v45 = objc_msgSend_columnRowUIDMap(v40, v41, v42, v43, v44);

  if (v35 != v45)
  {
    v52 = objc_msgSend_columnRowUIDMap(self, v46, v47, v48, v49);
    *(a3 + 4) |= 0x20u;
    v53 = *(a3 + 8);
    if (!v53)
    {
      v54 = *(a3 + 1);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x223DA0390](v54);
      *(a3 + 8) = v53;
    }

    objc_msgSend_setStrongReference_message_(v10, v50, v52, v53, v51);
  }

  v55 = objc_msgSend_categoryOrder(self, v46, v47, v48, v49);

  if (v55)
  {
    v62 = objc_msgSend_categoryOrder(self, v56, v57, v58, v59);
    *(a3 + 4) |= 0x10u;
    v63 = *(a3 + 7);
    if (!v63)
    {
      v64 = *(a3 + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = MEMORY[0x223DA0390](v64);
      *(a3 + 7) = v63;
    }

    objc_msgSend_setStrongReference_message_(v10, v60, v62, v63, v61);
  }

  if (self->_layoutEngine)
  {
    v65 = [TSTArchivedLayoutEngineBundle alloc];
    v69 = objc_msgSend_initWithLayoutEngine_(v65, v66, self->_layoutEngine, v67, v68);
    archivedLayoutEngineBundle = self->_archivedLayoutEngineBundle;
    self->_archivedLayoutEngineBundle = v69;

    *(a3 + 4) |= 0x200u;
    v73 = *(a3 + 12);
    if (!v73)
    {
      v74 = *(a3 + 1);
      if (v74)
      {
        v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
      }

      v73 = google::protobuf::Arena::CreateMaybeMessage<TST::LayoutEngineArchive>(v74);
      *(a3 + 12) = v73;
    }

    objc_msgSend_saveToArchive_archiver_(self->_archivedLayoutEngineBundle, v71, v73, v10, v72);
  }

  v198._lower = objc_msgSend_groupByUid(self, v56, v57, v58, v59);
  v198._upper = v75;
  *(a3 + 4) |= 0x40u;
  v76 = *(a3 + 9);
  if (!v76)
  {
    v77 = *(a3 + 1);
    if (v77)
    {
      v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
    }

    v76 = MEMORY[0x223DA0360](v77);
    *(a3 + 9) = v76;
  }

  TSKUIDStruct::saveToMessage(&v198, v76);
  formulaCoordSpace = self->_formulaCoordSpace;
  if (formulaCoordSpace >= 0x100000000)
  {
    v176 = MEMORY[0x277D81150];
    v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTTableInfo saveToArchive:archiver:]", v80, v81);
    v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v179, v180);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v182, v177, v181, 10109, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v183, v184, v185, v186);
    LODWORD(formulaCoordSpace) = -1;
  }

  else if (formulaCoordSpace < 0)
  {
    v187 = MEMORY[0x277D81150];
    v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTTableInfo saveToArchive:archiver:]", v80, v81);
    v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v190, v191);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v187, v193, v188, v192, 10109, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v194, v195, v196, v197);
    LODWORD(formulaCoordSpace) = 0;
  }

  *(a3 + 4) |= 0x2000u;
  *(a3 + 31) = formulaCoordSpace;
  v198._lower = 0;
  v198._upper = 0;
  v83 = objc_msgSend_hiddenStates(self, v78, v79, v80, v81);
  v88 = objc_msgSend_rowHiddenStateExtent(v83, v84, v85, v86, v87);
  v198._lower = objc_msgSend_hiddenStateExtentUid(v88, v89, v90, v91, v92);
  v198._upper = v93;

  *(a3 + 4) |= 0x80u;
  v94 = *(a3 + 10);
  if (!v94)
  {
    v95 = *(a3 + 1);
    if (v95)
    {
      v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
    }

    v94 = MEMORY[0x223DA0360](v95);
    *(a3 + 10) = v94;
  }

  TSKUIDStruct::saveToMessage(&v198, v94);
  if (self->_fromTableCoordMapperForPasteboard && objc_msgSend_isForCopy(v10, v96, v97, v98, v99))
  {
    fromTableCoordMapperForPasteboard = self->_fromTableCoordMapperForPasteboard;
    *(a3 + 4) |= 0x100u;
    v101 = *(a3 + 11);
    if (!v101)
    {
      v102 = *(a3 + 1);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive>(v102);
      *(a3 + 11) = v101;
    }

    objc_msgSend_encodeToArchive_(fromTableCoordMapperForPasteboard, v96, v101, v98, v99);
  }

  if (objc_msgSend_isAPivotTable(self, v96, v97, v98, v99))
  {
    isAPivotTable = objc_msgSend_isAPivotTable(self, v103, v104, v105, v106);
    v111 = *(a3 + 4) | 0x4000;
    *(a3 + 4) = v111;
    *(a3 + 128) = isAPivotTable;
    pivotDataModel = self->_pivotDataModel;
    if (!pivotDataModel)
    {
      v113 = MEMORY[0x277D81150];
      v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "[TSTTableInfo saveToArchive:archiver:]", v109, v110);
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v116, v117);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v113, v119, v114, v118, 10123, 0, "invalid nil value for '%{public}s'", "_pivotDataModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
      pivotDataModel = self->_pivotDataModel;
      v111 = *(a3 + 4);
    }

    *(a3 + 4) = v111 | 0x400;
    v124 = *(a3 + 13);
    if (!v124)
    {
      v125 = *(a3 + 1);
      if (v125)
      {
        v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
      }

      v124 = MEMORY[0x223DA0390](v125);
      *(a3 + 13) = v124;
    }

    objc_msgSend_setStrongReference_message_(v10, v108, pivotDataModel, v124, v110);
    pivotOrder = self->_pivotOrder;
    if (!pivotOrder)
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "[TSTTableInfo saveToArchive:archiver:]", v127, v128);
      v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v133, v134);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v136, v131, v135, 10126, 0, "invalid nil value for '%{public}s'", "_pivotOrder");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139, v140);
      pivotOrder = self->_pivotOrder;
    }

    *(a3 + 4) |= 0x800u;
    v141 = *(a3 + 14);
    if (!v141)
    {
      v142 = *(a3 + 1);
      if (v142)
      {
        v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
      }

      v141 = MEMORY[0x223DA0390](v142);
      *(a3 + 14) = v141;
    }

    objc_msgSend_setStrongReference_message_(v10, v126, pivotOrder, v141, v128);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v10, v103, 4, a3, v106);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v10, v143, 6, a3, v144);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v10, v145, 5, a3, v146);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v10, v147, 7, a3, v148);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v10, v149, 8, a3, v150);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v10, v151, 10, a3, v152);
  v157 = objc_msgSend_archivingCompatibilityVersion(self, v153, v154, v155, v156);
  v160 = v157;
  v161 = 0;
  if (v157 == 0x300020000000ALL || v157 == 0x4000100000000)
  {
LABEL_67:
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, v157, v161, v159);
    goto LABEL_68;
  }

  if (v157 != 0xA000000000003)
  {
    if (*MEMORY[0x277D808F0] != v157)
    {
      if (v157 <= 0xD000000000000)
      {
        if (v157 == 0xB000200000006)
        {
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, 0xB000200000006, @"TSTPivotTables", v159);
          goto LABEL_68;
        }

        if (v157 == 0xC000000000007)
        {
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, 0xC000000000007, @"TSTPivotTables v2", v159);
          goto LABEL_68;
        }
      }

      else
      {
        switch(v157)
        {
          case 0xD000000000001:
            objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, 0xD000000000001, @"TSTDropPreBNCData", v159);
            goto LABEL_68;
          case 0xD000000000002:
            objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, 0xD000000000002, @"TSTPivotTables MoreAggregates", v159);
            goto LABEL_68;
          case 0xE000400000001:
            objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, 0xE000400000001, @"TSTArrayFormulas", v159);
            goto LABEL_68;
        }
      }

      v162 = MEMORY[0x277D81150];
      v163 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "NSString *TSTFeatureIdentifierForCompatibilityVersion(TSPVersion)", 0, v159);
      v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v164, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCompatibility.h", v165, v166);
      v168 = NSStringFromTSPVersion();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v162, v169, v163, v167, 99, 0, "Unimplemented version for TSTCompatibility: %@", v168);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171, v172, v173);
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v174, v160, 0, v175);
      goto LABEL_68;
    }

    v161 = @"TSTFutureProofCell";
    goto LABEL_67;
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(v10, v158, 0xA000000000003, @"TSTExpandedTables", v159);
LABEL_68:
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_22111A104, off_2812E4498[54], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (unint64_t)archivingCompatibilityVersion
{
  v6 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v11 = objc_msgSend_archivingCompatibilityVersion(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_groupBy(self, v12, v13, v14, v15);
  v21 = objc_msgSend_archivingCompatibilityVersion(v16, v17, v18, v19, v20);

  if (v11 <= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = v11;
  }

  isAPivotTable = objc_msgSend_isAPivotTable(self, v22, v23, v24, v25);
  v28 = 0x300020000000ALL;
  if (isAPivotTable)
  {
    v28 = 0xB000200000006;
  }

  if (v28 <= v26)
  {
    return v26;
  }

  else
  {
    return v28;
  }
}

- (id)displayableDescriptiveName
{
  v6 = objc_msgSend_userDescription(self, a2, v2, v3, v4);
  v11 = v6;
  if ((!v6 || !objc_msgSend_length(v6, v7, v8, v9, v10)) && (objc_msgSend_tableName(self, v7, v8, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v11, (v11 = v12) == 0) || !objc_msgSend_length(v11, v7, v8, v9, v10))
  {
    v20.receiver = self;
    v20.super_class = TSTTableInfo;
    v17 = [(TSTTableInfo *)&v20 displayableDescriptiveName];

    v11 = v17;
  }

  v18 = objc_msgSend_copy(v11, v13, v14, v15, v16);

  return v18;
}

- (TSKUIDStruct)hiddenStatesUid
{
  p_hiddenStatesUid = &self->_hiddenStatesUid;
  lower = self->_hiddenStatesUid._lower;
  upper = p_hiddenStatesUid->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStructTract)tableTranslatorBaseMapForPasteboard
{
  p_tableTranslatorBaseMapForPasteboard = &self->_tableTranslatorBaseMapForPasteboard;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  retstr->_colIdList.__begin_ = 0;
  sub_221086EBC(retstr, self->_tableTranslatorBaseMapForPasteboard._colIdList.__begin_, self->_tableTranslatorBaseMapForPasteboard._colIdList.__end_, self->_tableTranslatorBaseMapForPasteboard._colIdList.__end_ - self->_tableTranslatorBaseMapForPasteboard._colIdList.__begin_);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, p_tableTranslatorBaseMapForPasteboard->_rowIdList.__begin_, p_tableTranslatorBaseMapForPasteboard->_rowIdList.__end_, p_tableTranslatorBaseMapForPasteboard->_rowIdList.__end_ - p_tableTranslatorBaseMapForPasteboard->_rowIdList.__begin_);
}

- (void)setTableTranslatorBaseMapForPasteboard:(TSKUIDStructTract *)a3
{
  p_tableTranslatorBaseMapForPasteboard = &self->_tableTranslatorBaseMapForPasteboard;
  if (&self->_tableTranslatorBaseMapForPasteboard != a3)
  {
    sub_2210BD068(&self->_tableTranslatorBaseMapForPasteboard._colIdList.__begin_, a3->_colIdList.__begin_, a3->_colIdList.__end_, a3->_colIdList.__end_ - a3->_colIdList.__begin_);
    begin = a3->_rowIdList.__begin_;
    end = a3->_rowIdList.__end_;

    sub_2210BD068(&p_tableTranslatorBaseMapForPasteboard->_rowIdList.__begin_, begin, end, (end - begin) >> 4);
  }
}

- (TSKUIDStructTract)tableTranslatorViewMapForPasteboard
{
  p_tableTranslatorViewMapForPasteboard = &self->_tableTranslatorViewMapForPasteboard;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  retstr->_colIdList.__begin_ = 0;
  sub_221086EBC(retstr, self->_tableTranslatorViewMapForPasteboard._colIdList.__begin_, self->_tableTranslatorViewMapForPasteboard._colIdList.__end_, self->_tableTranslatorViewMapForPasteboard._colIdList.__end_ - self->_tableTranslatorViewMapForPasteboard._colIdList.__begin_);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, p_tableTranslatorViewMapForPasteboard->_rowIdList.__begin_, p_tableTranslatorViewMapForPasteboard->_rowIdList.__end_, p_tableTranslatorViewMapForPasteboard->_rowIdList.__end_ - p_tableTranslatorViewMapForPasteboard->_rowIdList.__begin_);
}

- (void)setTableTranslatorViewMapForPasteboard:(TSKUIDStructTract *)a3
{
  p_tableTranslatorViewMapForPasteboard = &self->_tableTranslatorViewMapForPasteboard;
  if (&self->_tableTranslatorViewMapForPasteboard != a3)
  {
    sub_2210BD068(&self->_tableTranslatorViewMapForPasteboard._colIdList.__begin_, a3->_colIdList.__begin_, a3->_colIdList.__end_, a3->_colIdList.__end_ - a3->_colIdList.__begin_);
    begin = a3->_rowIdList.__begin_;
    end = a3->_rowIdList.__end_;

    sub_2210BD068(&p_tableTranslatorViewMapForPasteboard->_rowIdList.__begin_, begin, end, (end - begin) >> 4);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 27) = 0u;
  return self;
}

- (BOOL)containsProperty:(int)a3
{
  if (a3 == 807)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSTTableInfo;
  return [(TSTTableInfo *)&v6 containsProperty:?];
}

- (id)objectForProperty:(int)a3
{
  if (a3 == 512)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_2210F7420;
    v23 = sub_2210F7430;
    v24 = 0;
    v7 = self->_layoutEngine;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_221118DD8;
    v18[3] = &unk_27845F1C8;
    v18[4] = &v19;
    objc_msgSend_performBlockWithTemporaryLayout_(self, v8, v18, v9, v10);
    if (!v7 && self->_layoutEngine)
    {
      objc_msgSend_releaseLayoutEngine(self, v11, v12, v13, v14);
    }

    v15 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    if (a3 == 807)
    {
      v6 = objc_msgSend_tableStylePreset(self, a2, *&a3, v3, v4);
    }

    else
    {
      v17.receiver = self;
      v17.super_class = TSTTableInfo;
      v6 = [(TSTTableInfo *)&v17 objectForProperty:?];
    }

    v15 = v6;
  }

  return v15;
}

- (float)floatValueForProperty:(int)a3
{
  v4.receiver = self;
  v4.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v4 floatValueForProperty:*&a3];
  return result;
}

- (id)applyCellDiffMap:(id)a3 migrationHelper:(id)a4 updateProperties:(id)a5
{
  v5 = objc_msgSend_context(self, a2, a3, a4, a5);
  v9 = objc_msgSend_cellDiffMapWithContext_(TSTCellDiffMap, v6, v5, v7, v8);

  return v9;
}

- (id)applyCellDiff:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 migrationMap:(id)a5 inverseCellDiff:(id)a6 defaultCellStyle:(id)a7 defaultTextStyle:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22 = a8;
  if (!v16)
  {
    v16 = objc_msgSend_cellDiff(TSTCellDiff, v18, v19, v20, v21);
  }

  v23 = objc_msgSend_cellAfterApplyDiff_toCell_atCellUID_migrationMap_inverseCellDiff_concurrentStylesheet_defaultCellStyle_defaultTextStyle_(self, v18, v14, 0, a4, v15, v16, 0, v17, v22);
  if ((objc_msgSend_isEmpty(v16, v24, v25, v26, v27) & 1) == 0)
  {
    objc_msgSend_p_performCommentStorageDOLC_(self, v28, v23, v29, v30);
    if (objc_msgSend_doesSetProperty_(v14, v31, 907, v32, v33) && (objc_msgSend_BOOLValueForSetProperty_(v14, v34, 914, v35, v36) & 1) == 0)
    {
      v38 = objc_msgSend_documentRoot(self, v34, v37, v35, v36);
      v43 = objc_msgSend_customFormatList(v38, v39, v40, v41, v42);

      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = sub_221119364;
      v92[3] = &unk_27845F1F0;
      v92[4] = self;
      v93 = v43;
      v94 = v23;
      v44 = v43;
      objc_msgSend_processCustomFormatsWithBlock_(v94, v45, v92, v46, v47);
    }

    if (objc_msgSend_doesSetProperty_(v14, v34, 907, v35, v36) & 1) != 0 || (objc_msgSend_doesSetProperty_(v14, v48, 913, v49, v50) & 1) != 0 || (objc_msgSend_doesSetProperty_(v14, v48, 906, v49, v50) & 1) != 0 || (objc_msgSend_containsParagraphStyleProperties(v14, v48, v51, v49, v50))
    {
      doesSetProperty = 1;
    }

    else
    {
      doesSetProperty = objc_msgSend_doesSetProperty_(v14, v48, 909, v49, v50);
    }

    if (objc_msgSend_canBeVendorStorageUid_(TSTSummaryCellVendor, v48, a4, v49, v50))
    {
      v57 = objc_msgSend_summaryModel(self, v53, v54, v55, v56);
      v60 = objc_msgSend_setCell_atCellUID_(v57, v58, v23, a4, v59);

      if (v60)
      {
        v64 = MEMORY[0x277D81150];
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSTTableInfo(CellMap) applyCellDiff:atCellUID:migrationMap:inverseCellDiff:defaultCellStyle:defaultTextStyle:]", v62, v63);
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v67, v68);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v70, v65, v69, 11095, 0, "expected equality between %{public}s and %{public}s", "TSU_SUCCESS", "rc");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
      }
    }

    else
    {
      v75 = objc_msgSend_doesSetProperty_(v16, v53, 908, v55, v56);
      if (objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(self, v76, v23, a4, doesSetProperty ^ 1u, v75 ^ 1u))
      {
        v80 = MEMORY[0x277D81150];
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSTTableInfo(CellMap) applyCellDiff:atCellUID:migrationMap:inverseCellDiff:defaultCellStyle:defaultTextStyle:]", v78, v79);
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v83, v84);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v86, v81, v85, 11092, 0, "expected equality between %{public}s and %{public}s", "TSU_SUCCESS", "rc");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
      }
    }
  }

  return v16;
}

- (id)cellAfterApplyDiff:(id)a3 toCell:(id)a4 atCellUID:(const TSKUIDStructCoord *)a5 migrationMap:(id)a6 inverseCellDiff:(id)a7 concurrentStylesheet:(id)a8 defaultCellStyle:(id)a9 defaultTextStyle:(id)a10
{
  v15 = a3;
  v272 = a4;
  v271 = a7;
  v270 = a8;
  v269 = a9;
  v268 = a10;
  doesSetProperty = objc_msgSend_doesSetProperty_(v15, v16, 913, v17, v18);
  v23 = objc_msgSend_doesSetProperty_(v15, v20, 912, v21, v22);
  v28 = objc_msgSend_baseTableModel(self, v24, v25, v26, v27);
  v33 = objc_msgSend_columnRowUIDMap(v28, v29, v30, v31, v32);
  row = a5->_row;
  *&v275.var0 = a5->_column;
  *&v275.var2.var0.var0.coordinate.row = row;
  v38 = objc_msgSend_cellIDForCellUID_(v33, v35, &v275, v36, v37);

  v39 = a5->_row;
  *&v275.var0 = a5->_column;
  *&v275.var2.var0.var0.coordinate.row = v39;
  v47 = objc_msgSend_cellIDForCellUID_(self, v40, &v275, v41, v42);
  if (v272)
  {
    v48 = v272;
  }

  else
  {
    v48 = objc_msgSend_newCell(self, v43, v44, v45, v46);
  }

  v53 = v48;
  if ((objc_msgSend_isAPivotTable(self, v49, v50, v51, v52) & 1) == 0 && (v38 == 0x7FFFFFFF || (v38 & 0xFFFF00000000) == 0x7FFF00000000))
  {
    if (!objc_msgSend_canBeVendorStorageUid_(TSTSummaryCellVendor, v54, a5, v55, v56))
    {
      v138 = 0;
      goto LABEL_58;
    }

    if (!v272)
    {
      v181 = objc_msgSend_summaryModel(self, v177, v178, v179, v180);
      v186 = objc_msgSend_summaryCellVendor(v181, v182, v183, v184, v185);
      objc_msgSend_getCell_atCellUID_(v186, v187, v53, a5, v188);
    }

    v189 = a5->_row;
    *&v275.var0 = a5->_column;
    *&v275.var2.var0.var0.coordinate.row = v189;
    v190 = objc_msgSend_tableStyleAreaForCellUID_(self, v177, &v275, v179, v180);
    v64 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v191, v190, v192, v193);
    v63 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v194, v190, v195, v196);
  }

  else
  {
    if (!v272)
    {
      objc_msgSend_getCell_atCellID_suppressCellBorder_(self, v54, v53, v47, v23 ^ 1u);
    }

    v57 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(self, v54, v47, 1, 0);
    v63 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(self, v58, v47, 1, 0);
    v64 = v57;
  }

  v65 = objc_msgSend_cellStyle(v53, v59, v60, v61, v62);
  if (v65)
  {
  }

  else if ((objc_msgSend_doesSetProperty_(v15, v66, 905, v67, v68) & 1) != 0 || objc_msgSend_containsCellStyleProperties(v15, v69, v73, v71, v72))
  {
    v74 = v269;
    if (!v269)
    {
      v74 = v64;
    }

    v269 = v74;
    objc_msgSend_setCellStyle_(v53, v69, v74, v71, v72);
  }

  v75 = objc_msgSend_textStyle(v53, v69, v70, v71, v72);
  if (v75)
  {
  }

  else if ((objc_msgSend_doesSetProperty_(v15, v76, 906, v77, v78) & 1) != 0 || objc_msgSend_containsParagraphStyleProperties(v15, v79, v83, v81, v82))
  {
    v84 = v268;
    if (!v268)
    {
      v84 = v63;
    }

    objc_msgSend_setTextStyle_(v53, v79, v84, v81, v82, v84);
  }

  if (doesSetProperty && objc_msgSend_hasFormula(v53, v79, v80, v81, v82))
  {
    v85 = objc_msgSend_formulaObject(v53, v79, v80, v81, v82);
    v90 = objc_msgSend_translator(self, v86, v87, v88, v89);
    v94 = objc_msgSend_baseCellCoordForViewCellCoord_(v90, v91, v47, v92, v93);

    v99 = objc_msgSend_calcEngine(self, v95, v96, v97, v98);
    v274.coordinate = v94;
    v274._tableUID._lower = objc_msgSend_tableUID(self, v100, v101, v102, v103);
    v274._tableUID._upper = v104;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v275, v99, &v274);

    v108 = objc_msgSend_copyByRewritingReferencesToUidForm_(v85, v105, &v275, v106, v107);
    if (objc_msgSend_containsUidReferences(v108, v109, v110, v111, v112))
    {
      objc_msgSend_setFormulaObject_(v53, v113, v108, v114, v115);
    }
  }

  if (objc_msgSend_hasConditionalStyle(v53, v79, v80, v81, v82) && objc_msgSend_doesSetProperty_(v15, v116, 909, v117, v118))
  {
    v122 = objc_msgSend_translator(self, v116, v119, v120, v121);
    v126 = objc_msgSend_baseCellCoordForViewCellCoord_(v122, v123, v47, v124, v125);

    v131 = objc_msgSend_conditionalStyle(v53, v127, v128, v129, v130);
    v134 = objc_msgSend_copyToUidFormForTableInfo_inCellCoordinate_(v131, v132, self, v126, v133);

    objc_msgSend_setConditionalStyle_(v53, v135, v134, v136, v137);
  }

  v138 = objc_msgSend_cellByApplyingCellDiff_toTable_andUpdateInverse_optionalConcurrentStylesheet_(v53, v116, v15, self, v271, v270);
  if (objc_msgSend_hasRichText(v138, v139, v140, v141, v142))
  {
    v147 = objc_msgSend_richTextValue(v138, v143, v144, v145, v146);
    objc_msgSend_setParentInfo_(v147, v148, self, v149, v150);
  }

  if (objc_msgSend_hasFormula(v138, v143, v144, v145, v146))
  {
    v155 = objc_msgSend_formulaObject(v138, v151, v152, v153, v154);
    isSpillFormula = objc_msgSend_isSpillFormula(v155, v156, v157, v158, v159);

    if (isSpillFormula)
    {
      v161 = objc_msgSend_translator(self, v151, v152, v153, v154);
      v165 = objc_msgSend_baseCellCoordForViewCellCoord_(v161, v162, v47, v163, v164);

      v170 = objc_msgSend_calcEngine(self, v166, v167, v168, v169);
      v274.coordinate = v165;
      v274._tableUID._lower = 0x100000001;
      v273[0] = objc_msgSend_tableUID(self, v171, v172, v173, v174);
      v273[1] = v175;
      if (v170)
      {
        objc_msgSend_spillOriginsSpillingIntoRange_inOwner_(v170, v175, &v274, v273, v176);
      }

      else
      {
        memset(&v275, 0, 24);
      }

      v201 = objc_msgSend_calcEngine(self, v197, v198, v199, v200);
      objc_msgSend_markCellRefSetAsDirty_(v201, v202, &v275, v203, v204);

      sub_22107C800(&v275, v275.var1);
    }
  }

  if ((objc_msgSend_hasFormula(v138, v151, v152, v153, v154) & doesSetProperty) == 1)
  {
    v209 = objc_msgSend_calcEngine(self, v205, v206, v207, v208);
    v214 = objc_msgSend_tableUIDHistory(v209, v210, v211, v212, v213);

    if (v214 && *(objc_msgSend_tableUIDMap(v214, v215, v216, v217, v218) + 24))
    {
      v227 = objc_msgSend_formulaObject(v138, v219, v220, v221, v222);
      if (v227)
      {
        v228 = objc_msgSend_translator(self, v223, v224, v225, v226);
        v232 = objc_msgSend_baseCellCoordForViewCellCoord_(v228, v229, v47, v230, v231);

        v237 = objc_msgSend_calcEngine(self, v233, v234, v235, v236);
        v242 = objc_msgSend_tableUID(self, v238, v239, v240, v241);
        v274.coordinate = v232;
        v274._tableUID._lower = v242;
        v274._tableUID._upper = v243;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v275, v237, &v274);

        v248 = objc_msgSend_tableUIDMap(v214, v244, v245, v246, v247);
        v250 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v227, v249, v248, &v275, 0);
        objc_msgSend_setFormulaObject_(v138, v251, v250, v252, v253);
      }
    }
  }

  if ((objc_msgSend_isEmpty(v271, v205, v206, v207, v208) & 1) == 0)
  {
    v258 = objc_msgSend_cellStyle(v138, v254, v255, v256, v257);

    if (v258 == v64)
    {
      objc_msgSend_setCellStyle_(v138, v259, 0, v261, v262);
    }

    v263 = objc_msgSend_textStyle(v138, v259, v260, v261, v262);

    if (v263 == v63)
    {
      objc_msgSend_setTextStyle_(v138, v264, 0, v265, v266);
    }
  }

LABEL_58:

  return v138;
}

- (void)p_performCommentStorageDOLC:(id)a3
{
  v9 = objc_msgSend_commentStorage(a3, a2, a3, v3, v4);
  if (v9)
  {
    objc_msgSend_commentWillBeAddedToDocumentRoot(v9, v5, v6, v7, v8);
  }
}

- (int)p_fillPropertyForStyle:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = 898;
  }

  else
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v5 = 48;
    }

    else
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if (v7)
      {
        v5 = 516;
      }

      else
      {
        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v5 = 770;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();
  objc_msgSend_maximumSize(v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v15 = TSDTopmostInfoFromInfo();
  v20 = objc_msgSend_parentInfo(v15, v16, v17, v18, v19);
  v21 = TSUProtocolCast();

  if (v21)
  {
    objc_msgSend_highestScaleFactorForRenderingDrawableInfo_(v21, v22, self, v23, v24, &unk_283510BD8);
    if (v25 > 1.0)
    {
      TSUMultiplySizeScalar();
      v12 = v26;
      v14 = v27;
    }
  }

  v28 = v12;
  v29 = v14;
  result.height = v29;
  result.width = v28;
  return result;
}

- (id)compatibilityCheckerForData:(id)a3 associatedHint:(id)a4
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D802A8]);
  v9 = objc_msgSend_initWithImageData_(v5, v6, v4, v7, v8);

  return v9;
}

- (void)enumerateCellStringsUsingBlock:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_numberOfRows(self, v4, v5, v6, v7);
  objc_msgSend_enumerateCellStringsForRows_rowCount_usingBlock_(self, v9, 0, v8, v10);
}

- (void)enumerateCellStringsForRows:(unsigned int)a3 rowCount:(unsigned int)a4 usingBlock:(id)a5
{
  LODWORD(v6) = a3;
  v8 = a5;
  v63 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11, v12);
  v17 = objc_msgSend_numberOfRows(self, v13, v14, v15, v16);
  v60 = objc_msgSend_numberOfColumns(self, v18, v19, v20, v21);
  LODWORD(v25) = a4 + v6;
  if (a4 + v6 >= v17)
  {
    v25 = v17;
  }

  else
  {
    v25 = v25;
  }

  v59 = v25;
  if (v25 > v6)
  {
    v62 = (v25 - 1);
    v6 = v6;
    while (1)
    {
      isSummaryOrLabelRow = objc_msgSend_isSummaryOrLabelRow_(self, v22, v6, v23, v24);
      if (v60)
      {
        break;
      }

LABEL_23:
      if (++v6 == v59)
      {
        goto LABEL_24;
      }
    }

    v27 = isSummaryOrLabelRow;
    v28 = 0;
    v29 = v6;
    while ((v27 & 1) != 0 || objc_msgSend_isCategoryColumn_(self, v22, v28, v23, v24))
    {
      if (objc_msgSend_isSummaryCell_(self, v22, v29, v23, v24))
      {
        v34 = objc_msgSend_newCell(self, v30, v31, v32, v33);
        if (!objc_msgSend_getCell_atCellID_(self, v35, v34, v29, v36))
        {
          v41 = objc_msgSend_formattedValue(v34, v37, v38, v39, v40);
          goto LABEL_20;
        }

LABEL_15:
        v42 = 0;
        goto LABEL_21;
      }

      v42 = objc_msgSend_stringAtCellID_optionalCell_(self, v30, v29, 0, v33);
LABEL_22:
      v8[2](v8, v42, v63, v60 - 1 == v28, v6 == v62);

      ++v28;
      v29 += 0x100000000;
      if (v60 == v28)
      {
        goto LABEL_23;
      }
    }

    v65 = 0;
    RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(self, v22, &v65, v29, 0);
    v44 = v65;
    v34 = v44;
    if (RichTextAttributesIfPlainText)
    {
      goto LABEL_15;
    }

    if (v44)
    {
      objc_msgSend_format(v44, v45, v46, v47, v48);
      if (v64 == 267)
      {
        v61 = objc_msgSend_number(v34, v45, v49, v47, v48);
        v54 = objc_msgSend_rawDecimalValue(v61, v50, v51, v52, v53);
        v58 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v55, v54, v56, v57);

        v34 = v58;
      }
    }

    v41 = objc_msgSend_coercedStringWithLocale_(v34, v45, v63, v47, v48);
LABEL_20:
    v42 = v41;
LABEL_21:

    goto LABEL_22;
  }

LABEL_24:
}

- (id)cellIteratorWithFlags:(unint64_t)a3 searchFlags:(unint64_t)a4
{
  v7 = [TSTCellIterator alloc];
  v9 = objc_msgSend_initWithTableInfo_flags_searchFlags_(v7, v8, self, a3, a4);

  return v9;
}

- (id)cellIteratorWithRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5
{
  size = a3.size;
  origin = a3.origin;
  v10 = [TSTCellIterator alloc];
  v12 = objc_msgSend_initWithTableInfo_range_flags_searchFlags_(v10, v11, self, origin, size, a4, a5);

  return v12;
}

- (id)cellIteratorWithRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5
{
  v8 = a3;
  v9 = [TSTCellIterator alloc];
  v11 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v9, v10, self, v8, a4, a5);

  return v11;
}

- (id)cellIteratorWithRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 clampingRange:(TSUCellRect)a6
{
  size = a6.size;
  origin = a6.origin;
  v11 = a3;
  v12 = [TSTCellIterator alloc];
  v14 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_clampingRange_(v12, v13, self, v11, a4, a5, origin, size);

  return v14;
}

- (void)p_iterateCellsAndTerminateWithIterator:(id)a3 usingBlock:(id)a4
{
  v12 = a3;
  objc_msgSend_iterateCellsUsingBlock_(v12, v5, a4, v6, v7);
  objc_msgSend_terminate(v12, v8, v9, v10, v11);
}

- (void)iterateCellsWithFlags:(unint64_t)a3 searchFlags:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v13 = objc_msgSend_cellIteratorWithFlags_searchFlags_(self, v9, a3, a4, v10);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v11, v13, v8, v12);
}

- (void)iterateCellsInRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 usingBlock:(id)a6
{
  size = a3.size;
  origin = a3.origin;
  v11 = a6;
  v15 = objc_msgSend_cellIteratorWithRange_flags_searchFlags_(self, v12, origin, size, a4, a5);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v13, v15, v11, v14);
}

- (void)iterateCellsInRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 usingBlock:(id)a6
{
  v10 = a6;
  v14 = objc_msgSend_cellIteratorWithRegion_flags_searchFlags_(self, v11, a3, a4, a5);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v12, v14, v10, v13);
}

- (void)iterateCellsInRegion:(id)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 clampingRange:(TSUCellRect)a6 usingBlock:(id)a7
{
  size = a6.size;
  origin = a6.origin;
  v13 = a7;
  v17 = objc_msgSend_cellIteratorWithRegion_flags_searchFlags_clampingRange_(self, v14, a3, a4, a5, origin, size);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v15, v17, v13, v16);
}

- (id)p_mappingForSortingRowsOrColumns:(id)a3 withRules:(id)a4 dimension:(int64_t)a5
{
  v208 = *MEMORY[0x277D85DE8];
  v177 = a3;
  v178 = a4;
  if (!v178 || !objc_msgSend_count(v178, v7, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableInfo(Reorganize) p_mappingForSortingRowsOrColumns:withRules:dimension:]", v9, v10);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 51, 0, "Can't sort by an empty rule list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    started = 0;
    goto LABEL_55;
  }

  if (a5)
  {
    v12 = (objc_msgSend_bodyColumnRange(self, v7, v11, v9, v10) >> 32);
    objc_msgSend_tsu_indexSetByIntersectingWithRange_(v177, v13, v12, v13, v14);
  }

  else
  {
    v27 = objc_msgSend_bodyRowRange(self, v7, v11, v9, v10);
    objc_msgSend_tsu_indexSetByIntersectingWithRange_(v177, v28, v27, v28 >> 32, v29);
  }
  v176 = ;
  if (objc_msgSend_count(v176, v30, v31, v32, v33) < 2)
  {
    started = 0;
    goto LABEL_54;
  }

  v179 = objc_msgSend_count(v176, v34, v35, v36, v37);
  __src = 0;
  v205 = 0;
  v206 = 0;
  v184 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v38, v39, v40, v41);
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v42 = v178;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v200, v207, 16);
  if (!v44)
  {
    goto LABEL_39;
  }

  v45 = *v201;
  v180 = v42;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v201 != v45)
      {
        objc_enumerationMutation(v42);
      }

      v47 = *(*(&v200 + 1) + 8 * i);
      objc_opt_class();
      v48 = TSUDynamicCast();
      v53 = v48;
      if (v48)
      {
        v57 = objc_msgSend_viewIndex(v48, v49, v50, v51, v52);
        if (a5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (a5)
        {
          v58 = objc_msgSend_translator(self, v49, v50, v51, v52);
          v63 = objc_msgSend_baseIndex(v47, v59, v60, v61, v62);
          v57 = objc_msgSend_viewRowIndexForBaseRowIndex_(v58, v64, v63, v65, v66);

LABEL_19:
          if (v57 == 0x7FFFFFFF)
          {
            goto LABEL_37;
          }

          goto LABEL_23;
        }

        v67 = objc_msgSend_translator(self, v49, v50, v51, v52);
        v72 = objc_msgSend_baseIndex(v47, v68, v69, v70, v71);
        v76 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v67, v73, v72, v74, v75);

        v57 = v76;
      }

      if (v57 == 0x7FFF)
      {
        goto LABEL_37;
      }

LABEL_23:
      if ((objc_msgSend_containsIndex_(v184, v54, v57, v55, v56) & 1) == 0)
      {
        objc_msgSend_addIndex_(v184, v77, v57, v78, v79);
        v80 = v205;
        if (v205 >= v206)
        {
          v82 = __src;
          v83 = v205 - __src;
          v84 = (v205 - __src) >> 2;
          v85 = v84 + 1;
          if ((v84 + 1) >> 62)
          {
            sub_22107C148();
          }

          v86 = v206 - __src;
          if ((v206 - __src) >> 1 > v85)
          {
            v85 = v86 >> 1;
          }

          v87 = v86 >= 0x7FFFFFFFFFFFFFFCLL;
          v88 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v87)
          {
            v88 = v85;
          }

          if (v88)
          {
            sub_2210C836C(&__src, v88);
          }

          *(4 * v84) = v57;
          v81 = 4 * v84 + 4;
          memcpy(0, v82, v83);
          v89 = __src;
          __src = 0;
          v205 = v81;
          v206 = 0;
          if (v89)
          {
            operator delete(v89);
          }

          v42 = v180;
        }

        else
        {
          *v205 = v57;
          v81 = (v80 + 4);
        }

        v205 = v81;
      }

LABEL_37:
    }

    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v90, &v200, v207, 16);
  }

  while (v44);
LABEL_39:

  v95 = objc_msgSend_translator(self, v91, v92, v93, v94);
  v175 = objc_msgSend_objectLocale(v95, v96, v97, v98, v99);

  if (a5)
  {
    objc_msgSend_sortTagsForSortingColumns_byRows_(self, v100, v176, &__src, v101);
  }

  else
  {
    objc_msgSend_sortTagsForSortingRows_byColumns_(self, v100, v176, &__src, v101);
  }
  v181 = ;
  if (objc_msgSend_count(v181, v102, v103, v104, v105) == v179)
  {
    v196[0] = MEMORY[0x277D85DD0];
    v196[1] = 3221225472;
    v196[2] = sub_2214ACAF8;
    v196[3] = &unk_278465EF0;
    v197 = v184;
    v198 = v42;
    v199 = v175;
    v183 = objc_msgSend_sortedArrayUsingComparator_(v181, v109, v196, v110, v111);
    Index = objc_msgSend_firstIndex(v176, v112, v113, v114, v115);
    v121 = objc_msgSend_lastIndex(v176, v117, v118, v119, v120);
    v187 = 0;
    v188 = &v187;
    v189 = 0x4812000000;
    v190 = sub_2214ACC20;
    v191 = sub_2214ACC44;
    v192 = &unk_22188E88F;
    v194 = 0;
    v195 = 0;
    __p = 0;
    v185[0] = MEMORY[0x277D85DD0];
    v185[1] = 3221225472;
    v185[2] = sub_2214ACC5C;
    v185[3] = &unk_278465F18;
    v186 = Index;
    v185[4] = &v187;
    objc_msgSend_enumerateIndexesUsingBlock_(v176, v122, v185, v123, v124);
    v125 = objc_alloc(MEMORY[0x277D806D0]);
    started = objc_msgSend_initWithStartIndex_endIndex_(v125, v126, Index, v121, v127);
    v132 = objc_msgSend_mapping(started, v128, v129, v130, v131);
    if (v179)
    {
      v136 = v132;
      for (j = 0; j != v179; ++j)
      {
        v138 = objc_msgSend_objectAtIndexedSubscript_(v183, v133, j, v134, v135);
        v146 = objc_msgSend_columnOrRowIndex(v138, v139, v140, v141, v142);
        if (v179 <= v146)
        {
          v147 = MEMORY[0x277D81150];
          v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "[TSTTableInfo(Reorganize) p_mappingForSortingRowsOrColumns:withRules:dimension:]", v144, v145);
          v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v150, v151);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v153, v148, v152, 148, 0, "Index out of range!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v155, v156, v157);
        }

        *(*v136 + 4 * *(v188[6] + 4 * v146)) = *(v188[6] + 4 * j);
      }
    }

    _Block_object_dispose(&v187, 8);
    if (__p)
    {
      v194 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v158 = MEMORY[0x277D81150];
    v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "[TSTTableInfo(Reorganize) p_mappingForSortingRowsOrColumns:withRules:dimension:]", v107, v108);
    v163 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v161, v162);
    v168 = objc_msgSend_count(v181, v164, v165, v166, v167);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v169, v159, v163, 92, 0, "Expected sort tag count:%lu to match itemCount:%lu.", v168, v179, v175);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171, v172, v173);
    started = 0;
  }

  if (__src)
  {
    v205 = __src;
    operator delete(__src);
  }

LABEL_54:

LABEL_55:

  return started;
}

- (id)mappingForSortingColumns:(id)a3 withRules:(id)a4
{
  v4 = objc_msgSend_p_mappingForSortingRowsOrColumns_withRules_dimension_(self, a2, a3, a4, 1);

  return v4;
}

- (id)mappingForSortingRows:(id)a3 withRules:(id)a4
{
  v4 = objc_msgSend_p_mappingForSortingRowsOrColumns_withRules_dimension_(self, a2, a3, a4, 0);

  return v4;
}

- (id)sortTagsForSortingColumns:(id)a3 byRows:(const void *)a4
{
  v6 = a3;
  v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v11 = objc_opt_new();
  v45 = 0;
  v46 = &v45;
  v47 = 0x5812000000;
  v48 = sub_2214AD0D0;
  v49 = sub_2214AD0DC;
  v50 = &unk_22188E88F;
  memset(v51, 0, sizeof(v51));
  v52 = 1065353216;
  v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14, v15);
  v20 = *a4;
  v21 = *(a4 + 1);
  if (*a4 != v21)
  {
    v22 = 0;
    do
    {
      objc_msgSend_addIndex_(v19, v16, *v20, v17, v18, v33);
      v43[0] = v20;
      *(sub_2214AE9F4(v46 + 6, v20++) + 5) = v22++;
    }

    while (v20 != v21);
  }

  v23 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v16, v6, v19, v18, v33);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = -1;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2214AD0E4;
  v37[3] = &unk_278465F40;
  v24 = v11;
  v38 = v24;
  v39 = self;
  v40 = v43;
  v41 = &v45;
  v42 = a4;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(self, v25, v23, 67, 0x20000000, v37);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2214AD42C;
  v35[3] = &unk_278465F68;
  v26 = v34;
  v36 = v26;
  objc_msgSend_foreach_(v24, v27, v35, v28, v29);
  v30 = v36;
  v31 = v26;

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);
  sub_2210BDEC0(v51);

  return v31;
}

- (id)sortTagsForSortingRows:(id)a3 byColumns:(const void *)a4
{
  v6 = a3;
  v50 = v6;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v65 = 0;
  v66 = &v65;
  v67 = 0x5812000000;
  v68 = sub_2214AD0D0;
  v69 = sub_2214AD0DC;
  v70 = &unk_22188E88F;
  memset(v71, 0, sizeof(v71));
  v72 = 1065353216;
  v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14, v15);
  v20 = *a4;
  v21 = *(a4 + 1);
  if (*a4 != v21)
  {
    v22 = 0;
    do
    {
      objc_msgSend_addIndex_(v19, v16, *v20, v17, v18);
      v63[0] = v20;
      *(sub_2214AE9F4(v66 + 6, v20++) + 5) = v22++;
    }

    while (v20 != v21);
  }

  v23 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v16, v19, v6, v18);
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = -1;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = 0x7FFFFFFF;
  if (objc_msgSend_isCategorized(self, v24, v25, v26, v27))
  {
    v32 = objc_msgSend_categoryColumnIndex(self, v28, v29, v30, v31);
    v36 = objc_msgSend_containsIndex_(v19, v33, v32, v34, v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_msgSend_columnRowUIDMap(self, v28, v29, v30, v31);
  v42 = objc_msgSend_groupBy(self, v38, v39, v40, v41);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2214AD7AC;
  v51[3] = &unk_278465F90;
  v56 = v61;
  v57 = v63;
  v59 = a4;
  v43 = v11;
  v52 = v43;
  v53 = self;
  v60 = v36;
  v44 = v37;
  v54 = v44;
  v55 = v42;
  v58 = &v65;
  v45 = v42;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(self, v46, v23, 67, 0x20000000, v51);
  v47 = v55;
  v48 = v43;

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(&v65, 8);
  sub_2210BDEC0(v71);

  return v48;
}

- (void)rearrangeWithMapping:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mapping(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_mappingSize(v4, v10, v11, v12, v13);
  started = objc_msgSend_startIndex(v4, v15, v16, v17, v18);
  v103 = 0;
  v104 = 0;
  v105 = 0;
  sub_2214AEE5C(&v103, *v9, v9[1], (v9[1] - *v9) >> 2);
  v24 = objc_msgSend_range(self, v20, v21, v22, v23);
  v26 = v25;
  v30 = objc_msgSend_tableUID(self, v25, v27, v28, v29);
  v78 = v31;
  v79 = v30;
  v77 = v4;
  v35 = objc_msgSend_calcEngine(self, v31, v32, v33, v34);
  v95 = 0;
  v96 = &v95;
  v97 = 0x4812000000;
  v98 = sub_2214ADF9C;
  v99 = sub_2214ADFA8;
  v100 = &unk_22188E88F;
  v102[0] = 0;
  v102[1] = 0;
  v101 = v102;
  v40 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v36, v37, v38, v39);
  objc_msgSend_beginBatchingGroupCellDirtying(v35, v41, v42, v43, v44);
  v93[0] = MEMORY[0x277D85DD0];
  v75 = v26;
  v93[1] = 3221225472;
  v93[2] = sub_2214ADFB4;
  v93[3] = &unk_278465FB8;
  v94 = started;
  v45 = v26 | (v14 << 32);
  v93[6] = v79;
  v93[7] = v78;
  v76 = v9;
  v93[4] = &v95;
  v93[5] = v9;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v46, v24 & 0xFFFF00000000 | started, v45, 34, 0x20000, v93);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      while (1)
      {
        v50 = v103;
        v51 = v103[i];
        if (i == v51)
        {
          break;
        }

        v103[i] = v103[v51];
        v50[v51] = v51;
        v52 = v51 + started;
        objc_msgSend_swapRowAtIndex_withRowAtIndex_(self, v47, started + i, v52, v48);
        objc_msgSend_addIndex_(v40, v53, started + i, v54, v55);
        objc_msgSend_addIndex_(v40, v56, v52, v57, v58);
      }
    }
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2214AE048;
  v86[3] = &unk_278465FE0;
  v92 = started;
  v90 = v79;
  v91 = v78;
  v88 = &v95;
  v89 = v76;
  v59 = v35;
  v87 = v59;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v60, v24 & 0xFFFF00000000 | started, v45, 258, 0x20000, v86);
  v61 = j__TSUCellRectToTSCERangeCoordinate(v24, v75);
  v63 = v62;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_2214AE130;
  v80[3] = &unk_278466008;
  v64 = v59;
  v81 = v64;
  v82 = v79;
  v83 = v78;
  v84 = v61;
  v85 = v63;
  objc_msgSend_enumerateRangesUsingBlock_(v40, v65, v80, v66, v67);
  objc_msgSend_removeFormulasAt_(v64, v68, (v96 + 6), v69, v70);
  objc_msgSend_endBatchingGroupCellDirtying(v64, v71, v72, v73, v74);

  _Block_object_dispose(&v95, 8);
  sub_22107C800(&v101, v102[0]);

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

- (id)mappingFromRowUids:(const void *)a3 toRowUids:(const void *)a4
{
  v7 = objc_msgSend_rowIndexesForUIDs_(self, a2, a3, a4, v4);
  Index = objc_msgSend_firstIndex(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_lastIndex(v7, v13, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277D806D0]);
  started = objc_msgSend_initWithStartIndex_endIndex_(v18, v19, Index, v17, v20);
  v74 = v7;
  v75 = objc_msgSend_mapping(started, v21, v22, v23, v24);
  v29 = objc_msgSend_mappingSize(started, v25, v26, v27, v28);
  if (v29)
  {
    v32 = 0;
    v33 = vdupq_n_s64(v29 - 1);
    v34 = xmmword_2217E0F70;
    v35 = xmmword_2217E0F60;
    v36 = (*v75 + 8);
    v37 = vdupq_n_s64(4uLL);
    do
    {
      v38 = vmovn_s64(vcgeq_u64(v33, v35));
      if (vuzp1_s16(v38, *v33.i8).u8[0])
      {
        *(v36 - 2) = v32;
      }

      if (vuzp1_s16(v38, *&v33).i8[2])
      {
        *(v36 - 1) = v32 + 1;
      }

      if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34))).i32[1])
      {
        *v36 = v32 + 2;
        v36[1] = v32 + 3;
      }

      v32 += 4;
      v34 = vaddq_s64(v34, v37);
      v35 = vaddq_s64(v35, v37);
      v36 += 4;
    }

    while (((v29 + 3) & 0x1FFFFFFFCLL) != v32);
  }

  v39 = *a4;
  if (*a4 != *(a4 + 1))
  {
    v40 = *a3;
    do
    {
      v41 = objc_msgSend_rowIndexForRowUID_(self, v30, *v40, v40[1], v31);
      v45 = objc_msgSend_rowIndexForRowUID_(self, v42, *v39, v39[1], v43);
      v46 = v41 - Index;
      if (v41 < Index || v41 > v17)
      {
        v48 = MEMORY[0x277D81150];
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTTableInfo(Reorganize) mappingFromRowUids:toRowUids:]", v44, v31);
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v51, v52);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 374, 0, "From index out of range!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
      }

      v59 = v45 - Index;
      if (v45 < Index || v45 > v17)
      {
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTTableInfo(Reorganize) mappingFromRowUids:toRowUids:]", v44, v31);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v64, v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 375, 0, "From index out of range!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
      }

      *(*v75 + 4 * v46) = v59;
      v40 += 2;
      v39 += 2;
    }

    while (v39 != *(a4 + 1));
  }

  return started;
}

- (id)changeDescriptorsForReorganizingFromRowUids:(const void *)a3 toRowUids:(const void *)a4
{
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, v4);
  v9 = [TSCEMutableUIDSet alloc];
  v13 = objc_msgSend_initWithUUIDVector_(v9, v10, a4, v11, v12);
  v92 = 0;
  v93 = &v92;
  v94 = 0x4812000000;
  v95 = sub_2214AE95C;
  v96 = sub_2214AE980;
  *v97 = 0u;
  v98 = 0u;
  sub_221086EBC(&v97[1], *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  v22 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v14, v15, v16, v17);
  v23 = *a3;
  v24 = *(a3 + 1) - *a3;
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      if ((objc_msgSend_removeUUID_(v13, v18, *(v23 + v25), *(v23 + v25 + 8), v21) & 1) == 0)
      {
        objc_msgSend_addIndex_(v22, v18, v26, v20, v21);
      }

      ++v26;
      v23 = *a3;
      v24 = *(a3 + 1) - *a3;
      v25 += 16;
    }

    while (v26 < v24 >> 4);
  }

  v27 = v24 >> 4;
  v36 = (v24 >> 4) - objc_msgSend_count(v22, v18, v19, v20, v21);
  if (objc_msgSend_count(v22, v28, v29, v30, v31))
  {
    v37 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v32, v22, v34, v35);
    v39 = objc_msgSend_changeDescriptorWithType_cellRegion_beforeCount_afterCount_(TSTChangeDescriptor, v38, 24, v37, v27, v36);

    objc_msgSend_addObject_(v8, v40, v39, v41, v42);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_2214AE998;
    v91[3] = &unk_278462AA8;
    v91[4] = &v92;
    objc_msgSend_enumerateRangesWithOptions_usingBlock_(v22, v43, 2, v91, v44);
  }

  if (objc_msgSend_count(v13, v32, v33, v34, v35))
  {
    v53 = objc_msgSend_count(v13, v45, v46, v47, v48);
    if (v13)
    {
      objc_msgSend_uuidsAsVector(v13, v49, v50, v51, v52);
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v54, (v93[7] - v93[6]) >> 4, (v90 - __p) >> 4, v55);
    }

    else
    {
      __p = 0;
      v90 = 0;
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v49, (v93[7] - v93[6]) >> 4, 0, v52);
    }
    v56 = ;
    v60 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v57, v56, v58, v59);
    v62 = objc_msgSend_changeDescriptorWithType_cellRegion_beforeCount_afterCount_(TSTChangeDescriptor, v61, 25, v60, v36, v53 + v36);

    objc_msgSend_addObject_(v8, v63, v62, v64, v65);
    sub_22133594C((v93 + 6), v93[7], __p, v90, (v90 - __p) >> 4);

    if (__p)
    {
      operator delete(__p);
    }
  }

  v66 = objc_msgSend_mappingFromRowUids_toRowUids_(self, v45, a4, (v93 + 6), v48);
  if ((objc_msgSend_isIdentityMapping(v66, v67, v68, v69, v70) & 1) == 0)
  {
    v74 = objc_msgSend_changeDescriptorWithType_shuffleMapping_(TSTChangeDescriptor, v71, 28, v66, v73);
    objc_msgSend_addObject_(v8, v75, v74, v76, v77);
  }

  if (*(a4 + 1) != *a4)
  {
    v78 = objc_msgSend_mutableRowIndexesForUIDs_(self, v71, a4, v72, v73);
    v82 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v79, v78, v80, v81);

    v84 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v83, 29, v82, v82);
    objc_msgSend_addObject_(v8, v85, v84, v86, v87);
  }

  _Block_object_dispose(&v92, 8);
  if (v97[1])
  {
    *&v98 = v97[1];
    operator delete(v97[1]);
  }

  return v8;
}

@end