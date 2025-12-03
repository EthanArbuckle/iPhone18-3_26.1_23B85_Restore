@interface TSTLayoutEngine
+ (double)effectiveTableNameHeightForTable:(id)table;
+ (int)tableRowsBehaviorForTable:(id)table andEnvironment:(int)environment;
- (BOOL)adjustGridColumnForVisibility:(unsigned int *)visibility isLeft:(BOOL)left;
- (BOOL)adjustGridRowForVisibility:(unsigned int *)visibility isTop:(BOOL)top;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range;
- (BOOL)anyRowsUserHiddenInCellRange:(TSUCellRect)range;
- (BOOL)cell:(id *)cell forCellID:(TSUCellCoord)d;
- (BOOL)containsAnyContentInRange:(TSUCellRect)range;
- (BOOL)hasMergeRanges;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)range;
- (BOOL)hasStrokeSpillForLeftGridColumn:(unsigned int)column inRow:(unsigned int)row;
- (BOOL)hintIsValid:(id)valid;
- (BOOL)isCategoryLastSummaryRowCollapsed;
- (BOOL)isDynamicallyChangingContent;
- (BOOL)isDynamicallyChangingFontColorOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyChangingRowOrColumnCount;
- (BOOL)isDynamicallyHidingContentOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyHidingRowsCols;
- (BOOL)isDynamicallyHidingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index;
- (BOOL)isDynamicallyHidingRowsColsCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyHidingTextOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyRemovingText;
- (BOOL)isDynamicallyRemovingTextOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyResizingCellIDForColumnRowAdd:(TSUCellCoord)add;
- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add;
- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add rowColIndex:(unsigned int)index;
- (BOOL)isDynamicallyRevealingRowsCols;
- (BOOL)isDynamicallyRevealingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index;
- (BOOL)isEntireCellRangeHidden:(TSUCellRect)hidden;
- (BOOL)isGrouped;
- (BOOL)isLastVisibleBodyRowCategorySummaryOrLabelRow;
- (BOOL)p_containsGradientFillThatFillsContainerInCell:(id)cell cellContents:(id)contents;
- (BOOL)p_containsGradientThatFillsContainerInStyle:(id)style;
- (BOOL)shouldRowUseBandedFill:(unsigned int)fill;
- (BOOL)useBandedFill;
- (BOOL)validateLayoutHint:(id)hint;
- (CGRect)tableNameBounds;
- (CGSize)contentSizeForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap;
- (CGSize)tableNameTextSize;
- (CGSize)tableNameTextSizeForTableName:(id)name maxWidth:(double)width tableNameStyle:(id)style;
- (NSIndexSet)hiddenColumnIndices;
- (NSIndexSet)hiddenRowIndices;
- (NSIndexSet)visibleColumnIndices;
- (NSIndexSet)visibleRowIndices;
- (NSString)description;
- (TSKChangeNotifier)changeNotifier;
- (TSTLayout)dynamicLayout;
- (TSTLayoutEngine)initWithInfo:(id)info layoutEngineBundle:(id)bundle;
- (TSUCellCoord)layoutCellIDForModelCellID:(TSUCellCoord)d;
- (TSUCellCoord)modelCellIDForLayoutCellID:(TSUCellCoord)d;
- (TSUCellCoord)p_validateFittingInfoForEmptyCellsBetween:(TSUCellCoord)between andCellID:(TSUCellCoord)d inRange:(TSUCellRect)range widthHeightCollection:(id)collection;
- (TSUCellRect)categoryColumnsCellRange;
- (TSUCellRect)cellRange;
- (TSUCellRect)dynamicFontColorCellRange;
- (TSUCellRect)dynamicHidingContent;
- (TSUCellRect)dynamicHidingRowsCols;
- (TSUCellRect)dynamicHidingText;
- (TSUCellRect)dynamicRemovingText;
- (TSUCellRect)dynamicResizingColumnRange;
- (TSUCellRect)dynamicResizingRowRange;
- (TSUCellRect)dynamicRevealingRowsCols;
- (TSUCellRect)entireActualHeaderColumnsCellRange;
- (TSUCellRect)entireBodyCellRange;
- (TSUCellRect)entireBodyRowsCellRange;
- (TSUCellRect)entireFooterRowsCellRange;
- (TSUCellRect)entireHeaderColumnsCellRange;
- (TSUCellRect)entireHeaderRowsCellRange;
- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)cells;
- (TSUCellRect)expandCellRangeToVisibleNeighbors:(TSUCellRect)neighbors;
- (UIEdgeInsets)defaultPaddingForCellID:(TSUCellCoord)d;
- (UIEdgeInsets)edgeInsetsFromPadding:(id)padding;
- (UIEdgeInsets)paddingForCellID:(TSUCellCoord)d;
- (double)calculatedTableNameHeightIncludingDynamicResize:(BOOL)resize;
- (double)clampRowHeightAccountingForMaximumPartitionSize:(CGSize)size rowIndex:(unsigned int)index rowHeight:(double)height;
- (double)contentHeightForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap maximumPartitionSize:(CGSize)size;
- (double)fontHeightOfParagraphStyle:(id)style;
- (double)heightOfRow:(unsigned int)row skipDynamicSwap:(BOOL)swap withStrokeHeights:(BOOL)heights returnZeroIfHidden:(BOOL)hidden clampToPartitionSize:(BOOL)size maximumPartitionSize:(CGSize)partitionSize outIsFitting:(BOOL *)fitting;
- (double)heightOfRowIgnoringFitting:(unsigned int)fitting withStrokeHeights:(BOOL)heights;
- (double)p_contentWidthForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap validationBundle:(id)bundle;
- (double)strokeHeightOfGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn;
- (double)strokeWidthOfGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow;
- (double)tableNameHeight;
- (double)tableNameHeightForStorage:(id)storage withMaxWidth:(double)width;
- (double)unwrappedFittingWidthsForColumnInCellRegionWorker:(id)worker;
- (double)widthOfColumn:(unsigned __int16)column skipDynamicSwap:(BOOL)swap returnZeroIfHidden:(BOOL)hidden outIsFitting:(BOOL *)fitting;
- (id).cxx_construct;
- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (id)expandCellRegionToCoverMergedCells:(id)cells;
- (id)fittingWidthsMapForColumns:(id)columns includeStrokes:(BOOL)strokes;
- (id)fixedWidthProvider;
- (id)formattedDataParagraphStylePropertyMapForCell:(id)cell atCellID:(TSUCellCoord)d;
- (id)indexesForCategoryColumnsInRegion:(id)region;
- (id)indexesForLabelRowsInRegion:(id)region;
- (id)indexesForSummaryRowsInRegion:(id)region;
- (id)layoutCellRegionForModelCellRegion:(id)region;
- (id)mergeRangesProppingRowHeightsInRegion:(id)region;
- (id)mergedStrokesForGridColumn:(unsigned int)column;
- (id)mergedStrokesForGridRow:(unsigned int)row;
- (id)mergesIntersectingCellRegion:(id)region;
- (id)mergesIntersectingRange:(TSUCellRect)range;
- (id)modelCellRegionForLayoutCellRegion:(id)region;
- (id)newLayoutHint;
- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style;
- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style naturalAlignment:(int)alignment cellDirection:(int)direction;
- (id)p_resolvedTextStyleForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style outNaturalAlignment:(int *)alignment outCellDirection:(int *)direction;
- (id)p_strokesForGridColumn:(unsigned int)column isLeft:(BOOL)left takeStrokeWriteLock:(BOOL)lock;
- (id)p_strokesForGridRow:(unsigned int)row isTop:(BOOL)top takeStrokeWriteLock:(BOOL)lock;
- (id)p_strokesForValidationOfGridRow:(unsigned int)row isTop:(BOOL)top;
- (id)p_validationBundleForRegionToValidate:(id)validate;
- (id)tableNameTextEngine;
- (id)tableNameTextEngineWithTableNameStyle:(id)style;
- (id)unwrappedFittingWidthsForColumnsInCellRegion:(id)region;
- (id)validateCellForDrawing:(TSUCellCoord)drawing cell:(id)cell contents:(id)contents wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding layoutCacheFlags:(int)flags pageNumber:(unint64_t)self0 pageCount:(unint64_t)self1;
- (id)validateFittingInfoForValidationRegion:(id)region rowsNeedingFittingInfo:(id)info;
- (id)validateFittingRegionForChangeDescriptors:(id)descriptors;
- (unint64_t)tableAreaForCellID:(TSUCellCoord)d;
- (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)d;
- (unsigned)firstEmptyBodyRow;
- (unsigned)layoutRowForModelRow:(unsigned int)row;
- (unsigned)modelRowForLayoutRow:(unsigned int)row;
- (unsigned)numberOfColumns;
- (unsigned)numberOfFooterOrGrandTotalRows;
- (unsigned)numberOfFooterRows;
- (unsigned)numberOfGrandTotalColumns;
- (unsigned)numberOfHeaderColumns;
- (unsigned)numberOfHeaderRows;
- (unsigned)numberOfNonHiddenFooterRows;
- (unsigned)numberOfRows;
- (void)addChangeDescriptor:(id)descriptor;
- (void)addChangeDescriptorWithType:(int)type andCellRange:(TSUCellRect)range andStrokeRange:(TSUCellRect)strokeRange;
- (void)captureDynamicResizeInfo;
- (void)clearDynamicStrokesForCellRange:(TSUCellRect)range;
- (void)clearModelHeightWidthCacheForCellRange:(TSUCellRect)range;
- (void)clearRenderingCaches;
- (void)dealloc;
- (void)enqueueBootstrapChangeDescriptors;
- (void)enumerateMergedStrokesAndCapsForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateMergedStrokesAndCapsForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateMergedStrokesForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateMergedStrokesForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info;
- (void)invalidateStrokeDefaults;
- (void)invalidateStrokeSpills;
- (void)invalidateTableNameHeight;
- (void)iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block;
- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block;
- (void)measureWithLayoutState:(id)state;
- (void)modifySafelyUsingBlock:(id)block;
- (void)p_addFittingInfoForEmptyMergeRange:(TSUCellRect)range;
- (void)p_clearStrokesForMergesInCellRegion:(id)region;
- (void)p_invalidateClearedStrokesForCellRegion:(id)region;
- (void)p_invalidateForStyleProviderChangeWithBroadcast:(BOOL)broadcast;
- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridColumn:(unsigned int)column isLeft:(BOOL)left beginRow:(unsigned int)row endRow:(unsigned int)endRow;
- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridRow:(unsigned int)row isTop:(BOOL)top beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn;
- (void)p_validateCellIDToWPColumnCacheForChangeDescriptors:(id)descriptors;
- (void)p_validateFittingInfoForEmptyCellsOnSingleRowBetween:(TSUCellCoord)between andEndCellID:(TSUCellCoord)d widthHeightCollection:(id)collection;
- (void)p_validateFittingInfoWithCellRangeWorker:(TSUCellRect)worker widthHeightCollection:(id)collection containsMerges:(BOOL)merges validationBundle:(id)bundle;
- (void)p_validateStrokeWidthCachesForGridColumn:(unsigned int)column;
- (void)p_validateStrokeWidthCachesForGridRow:(unsigned int)row;
- (void)p_validateStrokeWidthCachesForRegion:(id)region invalidateStrokeDefaults:(BOOL)defaults;
- (void)p_validateStrokesForRegion:(id)region;
- (void)p_validationFittingCellRegionForColumnsDeleted:(id)deleted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForColumnsInserted:(id)inserted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForColumnsMovedFrom:(id)from toColumnIndex:(unsigned __int16)index cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForColumnsVisibility:(id)visibility cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRangeMergeUnmerge:(id)unmerge cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRowsDeleted:(id)deleted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRowsInserted:(id)inserted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRowsMovedFrom:(id)from toRowIndex:(unsigned int)index cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForStrokesChanged:(id)changed cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingForChangeDescriptorType:(int)type regionFromChangeDescriptor:(id)descriptor cellRegionGatherer:(id)gatherer;
- (void)popFromFixedColumnWidthStack;
- (void)popFromStyleProviderStack;
- (void)processLayoutTask:(id)task validationBundle:(id)bundle;
- (void)pushToFixedColumnWidthStack:(void *)stack;
- (void)pushToStyleProviderStack:(id)stack;
- (void)queueCellForValidation:(TSUCellRect)validation cell:(id)cell textStyleHandle:(id)handle modelMergeRange:(TSUCellRect)range wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding prop:(BOOL)self0 layoutCacheFlags:(int)self1 validationBundle:(id)self2 layoutTask:(id)self3;
- (void)readSafelyUsingBlock:(id)block;
- (void)resetModelHeightWidthCache;
- (void)setClearedStrokeForGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow;
- (void)setClearedStrokeForGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn;
- (void)setDynamicCellBorder:(id)border forCellID:(TSUCellCoord)d;
- (void)setMaxConcurrentTasks:(unsigned int)tasks;
- (void)setStrokeSpillForRightGridColumn:(unsigned int)column leftGridColumn:(unsigned int)gridColumn inRow:(unsigned int)row;
- (void)setStyleProvidingSource:(id)source;
- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right;
- (void)updateCellRange;
- (void)validate;
- (void)validateBandedFill;
- (void)validateChangeDescriptorQueue;
- (void)validateDefaultFontHeights;
- (void)validateDynamicResizeInfo;
- (void)validateFittingInfoForCell:(id)cell cellID:(TSUCellCoord)d mergeRange:(TSUCellRect)range setFitting:(BOOL)fitting layoutTask:(id)task widthHeightCollection:(id)collection validationBundle:(id)bundle styleDefaultsCache:(id)self0;
- (void)validateFittingInfoWithCellRange:(TSUCellRect)range validationBundle:(id)bundle;
- (void)validateLayoutEngineForChangeDescriptors:(id)descriptors;
- (void)validateRowVisibility:(id)visibility;
- (void)validateStrokesArrays:(id)arrays;
- (void)validateStrokesForChangeDescriptors:(id)descriptors;
- (void)validateTableNameEnabled;
- (void)validateTableNameHeight;
- (void)waitForLayoutToComplete:(id)complete;
@end

@implementation TSTLayoutEngine

- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  v10 = [TSTLayoutCellIterator alloc];
  v12 = objc_msgSend_initWithLayoutEngine_range_flags_searchFlags_(v10, v11, self, origin, size, flags, searchFlags);

  return v12;
}

- (void)iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block
{
  iteratorCopy = iterator;
  objc_msgSend_iterateCellsUsingBlock_(iteratorCopy, v5, block, v6, v7);
  objc_msgSend_terminate(iteratorCopy, v8, v9, v10, v11);
}

- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  if (objc_msgSend_isNeededWithLayoutEngine_andRange_(TSTLayoutCellIterator, v12, self, origin, size))
  {
    v20 = objc_msgSend_cellIteratorWithRange_flags_searchFlags_(self, v13, origin, size, flags, searchFlags);
    objc_msgSend_iterateCellsAndTerminateWithIterator_usingBlock_(self, v17, v20, blockCopy, v18);
  }

  else
  {
    v20 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
    objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v20, v19, origin, size, flags, searchFlags, blockCopy);
  }
}

- (void)setStyleProvidingSource:(id)source
{
  if (self->_styleProvidingSource != source)
  {
    objc_msgSend_p_invalidateForStyleProviderChangeWithBroadcast_(self, a2, 0, v3, v4);
    self->_styleProvidingSource = source;
  }
}

- (void)p_invalidateForStyleProviderChangeWithBroadcast:(BOOL)broadcast
{
  cellIDToWPColumnCache = self->_cellIDToWPColumnCache;
  self->_cellIDToWPColumnCache = 0;

  v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  v14 = objc_msgSend_partitioner(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_scaledLayout(v14, v15, v16, v17, v18);
  objc_msgSend_invalidateLayoutSpaceCoordinates(v19, v20, v21, v22, v23);

  v28 = objc_msgSend_tableInfo(self, v24, v25, v26, v27);
  v33 = objc_msgSend_partitioner(v28, v29, v30, v31, v32);
  objc_msgSend_resetScaleToFit(v33, v34, v35, v36, v37);

  objc_msgSend_invalidateDefaultFontHeights(self, v38, v39, v40, v41);
  objc_msgSend_resetModelHeightWidthCache(self, v42, v43, v44, v45);
  v50 = objc_msgSend_range(self->_tableInfo, v46, v47, v48, v49);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_2213A1260;
  v53[3] = &unk_278463CC0;
  v53[4] = self;
  v53[5] = v50;
  v53[6] = v51;
  v52 = MEMORY[0x223DA1C10](v53);
  v52[2](v52, 36);
  v52[2](v52, 22);
  v52[2](v52, 35);
  v52[2](v52, 49);
  v52[2](v52, 37);
}

- (id)fixedWidthProvider
{
  v6 = objc_msgSend_fixedColumnWidthStack(self, a2, v2, v3, v4);
  if (v6 && (v11 = v6, objc_msgSend_fixedColumnWidthStack(self, v7, v8, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_count(v12, v13, v14, v15, v16), v12, v11, v17))
  {
    v22 = objc_msgSend_fixedColumnWidthStack(self, v18, v19, v20, v21);
    v27 = objc_msgSend_fixedColumnWidthStack(self, v23, v24, v25, v26);
    v32 = objc_msgSend_count(v27, v28, v29, v30, v31);
    v36 = objc_msgSend_pointerAtIndex_(v22, v33, v32 - 1, v34, v35);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (void)pushToStyleProviderStack:(id)stack
{
  stackCopy = stack;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2213A1408;
  v9[3] = &unk_27845FEF0;
  v9[4] = self;
  v10 = stackCopy;
  v5 = stackCopy;
  objc_msgSend_modifySafelyUsingBlock_(self, v6, v9, v7, v8);
}

- (void)popFromStyleProviderStack
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213A1518;
  v4[3] = &unk_27845E3F8;
  v4[4] = self;
  objc_msgSend_modifySafelyUsingBlock_(self, a2, v4, v2, v3);
}

- (void)pushToFixedColumnWidthStack:(void *)stack
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213A1704;
  v5[3] = &unk_278461DA8;
  v5[4] = self;
  v5[5] = stack;
  objc_msgSend_modifySafelyUsingBlock_(self, a2, v5, v3, v4);
}

- (void)popFromFixedColumnWidthStack
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213A1820;
  v4[3] = &unk_27845E3F8;
  v4[4] = self;
  objc_msgSend_modifySafelyUsingBlock_(self, a2, v4, v2, v3);
}

- (TSTLayoutEngine)initWithInfo:(id)info layoutEngineBundle:(id)bundle
{
  infoCopy = info;
  bundleCopy = bundle;
  v184.receiver = self;
  v184.super_class = TSTLayoutEngine;
  v8 = [(TSTLayoutEngine *)&v184 init];
  v9 = v8;
  if (v8)
  {
    v8->_tableInfo = infoCopy;
    v10 = [TSTWPColumnCache alloc];
    v14 = objc_msgSend_initWithName_(v10, v11, @"cell id to wp column $", v12, v13);
    v15 = *(v9 + 640);
    *(v9 + 640) = v14;

    v16 = [TSTDupContentCache alloc];
    v20 = objc_msgSend_initWithName_(v16, v17, @"dup $", v18, v19);
    v21 = *(v9 + 648);
    *(v9 + 648) = v20;

    v22 = [TSTWPColumnCache alloc];
    v26 = objc_msgSend_initWithName_(v22, v23, @"temp wp column $", v24, v25);
    v27 = *(v9 + 656);
    *(v9 + 656) = v26;

    v32 = objc_msgSend_numberOfRows(infoCopy, v28, v29, v30, v31);
    v37 = objc_msgSend_numberOfColumns(infoCopy, v33, v34, v35, v36);
    v39 = objc_msgSend_widthHeightCacheFromBundle_withNumberOfRows_andNumberOfColumns_(TSTArchivedLayoutEngineBundle, v38, bundleCopy, v32, v37);
    v40 = *(v9 + 664);
    *(v9 + 664) = v39;

    *(v9 + 564) = 0x1000000010;
    v41 = dispatch_group_create();
    v42 = *(v9 + 128);
    *(v9 + 128) = v41;

    v43 = objc_alloc(MEMORY[0x277D81378]);
    v47 = objc_msgSend_initWithLimit_(v43, v44, *(v9 + 564), v45, v46);
    v48 = *(v9 + 864);
    *(v9 + 864) = v47;

    v49 = objc_alloc(MEMORY[0x277D81378]);
    v53 = objc_msgSend_initWithLimit_(v49, v50, *(v9 + 564), v51, v52);
    v54 = *(v9 + 872);
    *(v9 + 872) = v53;

    v55 = dispatch_queue_create("layout engine concurrent queue", MEMORY[0x277D85CD8]);
    v56 = *(v9 + 880);
    *(v9 + 880) = v55;

    *(v9 + 572) = 0;
    v61 = objc_msgSend_array(MEMORY[0x277CBEB18], v57, v58, v59, v60);
    v62 = *(v9 + 832);
    *(v9 + 832) = v61;

    v67 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v63, v64, v65, v66);
    *(v9 + 952) = objc_msgSend_maxNumberOfRows(v67, v68, v69, v70, v71);
    *(v9 + 944) = objc_msgSend_maxNumberOfColumns(v67, v72, v73, v74, v75);
    *(v9 + 576) = objc_msgSend_tableRowsBehaviorForTable_andEnvironment_(TSTLayoutEngine, v76, infoCopy, *(v9 + 572), v77);
    *(v9 + 1032) = xmmword_2217E0780;
    *(v9 + 1080) = xmmword_2217E0780;
    *(v9 + 1096) = xmmword_2217E0780;
    *(v9 + 1112) = xmmword_2217E0780;
    *(v9 + 1128) = xmmword_2217E0780;
    *(v9 + 1048) = xmmword_2217E0780;
    *(v9 + 760) = 0u;
    *(v9 + 1064) = xmmword_2217E0780;
    *(v9 + 1144) = xmmword_2217E0780;
    v78 = *(v9 + 792);
    *(v9 + 792) = 0;

    *(v9 + 928) = 0;
    *(v9 + 556) = 0;
    v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v80 = *(v9 + 936);
    *(v9 + 936) = v79;

    v81 = [TSTStrokeDefaultVendor alloc];
    v86 = objc_msgSend_tableInfo(v9, v82, v83, v84, v85);
    v91 = objc_msgSend_tableInfo(v9, v87, v88, v89, v90);
    v93 = objc_msgSend_initWithStrokeProvider_tableProvider_tableInfo_(v81, v92, v86, v9, v91);
    v94 = *(v9 + 632);
    *(v9 + 632) = v93;

    v95 = objc_alloc_init(TSTConcurrentMutableIndexSet);
    v96 = *(v9 + 888);
    *(v9 + 888) = v95;

    pthread_rwlock_init((v9 + 136), 0);
    v97 = objc_alloc_init(TSTStrokeWidthCache);
    v98 = *(v9 + 904);
    *(v9 + 904) = v97;

    v99 = objc_alloc_init(TSTStrokeWidthCache);
    v100 = *(v9 + 912);
    *(v9 + 912) = v99;

    v101 = objc_alloc_init(TSTTextStyleToFontHeightCache);
    v102 = *(v9 + 920);
    *(v9 + 920) = v101;

    v103 = objc_alloc_init(TSTHiddenRowsColumnsCache);
    v104 = *(v9 + 672);
    *(v9 + 672) = v103;

    v105 = [TSTFontInfoCache alloc];
    v109 = objc_msgSend_initWithName_(v105, v106, @"table fonts and metric cache", v107, v108);
    v110 = *(v9 + 856);
    *(v9 + 856) = v109;

    pthread_rwlock_init((v9 + 336), 0);
    v111 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v112 = *(v9 + 960);
    *(v9 + 960) = v111;

    *(v9 + 536) = 0;
    __dmb(0xBu);
    *(v9 + 557) = 0;
    v117 = objc_msgSend_tableInfo(v9, v113, v114, v115, v116);
    *(v9 + 540) = objc_msgSend_useBandedFill(v117, v118, v119, v120, v121);

    v126 = objc_msgSend_tableInfo(v9, v122, v123, v124, v125);
    v131 = objc_msgSend_bandedFillObject(v126, v127, v128, v129, v130);
    v132 = *(v9 + 680);
    *(v9 + 680) = v131;

    v136 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v133, 0, v134, v135);
    v137 = *(v9 + 1000);
    *(v9 + 1000) = v136;

    v183 = 0;
    sub_2213A1E8C((v9 + 104), 0x12uLL, &v183);
    v138 = objc_alloc_init(TSTMergeRangeSortedSet);
    v139 = *(v9 + 840);
    *(v9 + 840) = v138;

    objc_msgSend_updateCellRange(v9, v140, v141, v142, v143);
    v144 = objc_alloc(MEMORY[0x277CCA940]);
    v148 = objc_msgSend_initWithCapacity_(v144, v145, 1, v146, v147);
    v149 = *(v9 + 968);
    *(v9 + 968) = v148;

    *(v9 + 550) = 0;
    *(v9 + 808) = 0x7FFF7FFFFFFFLL;
    objc_msgSend_enqueueBootstrapChangeDescriptors(v9, v150, v151, v152, v153);
    v158 = objc_msgSend_cellRange(v9, v154, v155, v156, v157);
    v161 = objc_msgSend_regionFromRange_(TSTCellRegion, v159, v158, v159, v160);
    v166 = objc_msgSend_hiddenRowsColumnsCache(v9, v162, v163, v164, v165);
    objc_msgSend_validate_(v166, v167, v9, v168, v169);

    objc_msgSend_validateStrokesArrays_(v9, v170, 0, v171, v172);
    objc_msgSend_p_validateStrokesForRegion_(v9, v173, v161, v174, v175);
    objc_msgSend_verifyStrokes(v9, v176, v177, v178, v179);
    objc_msgSend_p_validateStrokeWidthCachesForRegion_invalidateStrokeDefaults_(v9, v180, v161, 1, v181);
  }

  return v9;
}

- (void)dealloc
{
  pthread_rwlock_wrlock(&self->_strokesRWLock);
  begin = self->_topRowStrokes.__begin_;
  for (i = self->_topRowStrokes.var0; i != begin; --i)
  {
    v5 = *(i - 1);
  }

  self->_topRowStrokes.var0 = begin;
  v6 = self->_bottomRowStrokes.__begin_;
  for (j = self->_bottomRowStrokes.var0; j != v6; --j)
  {
    v8 = *(j - 1);
  }

  self->_bottomRowStrokes.var0 = v6;
  v9 = self->_leftColumnStrokes.__begin_;
  for (k = self->_leftColumnStrokes.var0; k != v9; --k)
  {
    v11 = *(k - 1);
  }

  self->_leftColumnStrokes.var0 = v9;
  v12 = self->_rightColumnStrokes.__begin_;
  for (m = self->_rightColumnStrokes.var0; m != v12; --m)
  {
    v14 = *(m - 1);
  }

  self->_rightColumnStrokes.var0 = v12;
  pthread_rwlock_unlock(&self->_strokesRWLock);
  pthread_rwlock_destroy(&self->_strokesRWLock);
  pthread_rwlock_destroy(&self->_contentRWLock);
  v15.receiver = self;
  v15.super_class = TSTLayoutEngine;
  [(TSTLayoutEngine *)&v15 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  v15 = objc_msgSend_tableName(v10, v11, v12, v13, v14);
  if ((objc_msgSend_cellRange(self, v16, v17, v18, v19) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v23 = @"#REF!:#REF!";
  }

  else
  {
    v23 = @"#REF!:#REF!";
    if (v20 >> 32 && v20)
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = NSStringFromTSUCellCoord();
      v26 = NSStringFromTSUCellCoord();
      v23 = objc_msgSend_stringWithFormat_(v24, v27, @"%@:%@", v28, v29, v25, v26);
    }
  }

  if (self->_inDynamicLayoutMode)
  {
    objc_msgSend_stringWithFormat_(v3, v20, @"<%@:%p %@ range:%@ dynamic_mode:%@ >", v21, v22, v5, self, v15, v23, @"YES");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v20, @"<%@:%p %@ range:%@ dynamic_mode:%@ >", v21, v22, v5, self, v15, v23, @"NO");
  }
  v30 = ;

  return v30;
}

- (id)newLayoutHint
{
  v3 = objc_alloc_init(TSTLayoutHint);
  v8 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
  isInlineWithText = objc_msgSend_isInlineWithText(v8, v9, v10, v11, v12);

  if ((isInlineWithText & 1) == 0)
  {
    v18 = objc_msgSend_cellRange(self, v14, v15, v16, v17);
    objc_msgSend_setCellRange_(v3, v19, v18, v19, v20);
    objc_msgSend_setMaximumSize_(v3, v21, v22, v23, v24, INFINITY, INFINITY);
  }

  objc_msgSend_validateLayoutHint_(self, v14, v3, v16, v17);
  return v3;
}

- (BOOL)hintIsValid:(id)valid
{
  validCopy = valid;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = objc_msgSend_numberOfHeaderRows(self, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfHeaderColumns(self, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfFooterRows(self, v17, v18, v19, v20);
  v26 = objc_msgSend_numberOfColumns(self, v22, v23, v24, v25);
  v31 = objc_msgSend_numberOfRows(self, v27, v28, v29, v30);
  v36 = objc_msgSend_cellRange(validCopy, v32, v33, v34, v35);
  sub_221119E0C(v11 | (v16 << 32), (v26 - v16) | ((v31 - (v21 + v11)) << 32), v36, v37);
  v39 = v38;
  headerRowsRepeat = self->_headerRowsRepeat;
  v44 = objc_msgSend_cellRange(validCopy, v38, v41, v42, v43);
  v49 = (v44 & 0xFFFF00000000) != 0x7FFF00000000 && v44 == 0x7FFFFFFF;
  if (!v49 && v11 - 1 < v44 && headerRowsRepeat)
  {
    v50 = 0;
    do
    {
      objc_msgSend_maximumSize(validCopy, v45, v46, v47, v48);
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, v51, v50, 0, 1, 1, 1, 0);
      v6 = v6 + v52;
      v50 = (v50 + 1);
    }

    while (v11 != v50);
  }

  v53 = objc_msgSend_cellRange(validCopy, v45, v46, v47, v48);
  if ((v53 & 0xFFFF00000000) != 0x7FFF00000000 && v53 == 0x7FFFFFFF)
  {
    v59 = 0;
  }

  else
  {
    v59 = v53;
  }

  while (1)
  {
    v60 = objc_msgSend_cellRange(validCopy, v54, v55, v56, v57);
    v65 = !(v61 >> 32) || v60 == 0x7FFFFFFF;
    v66 = v65 ? 0x7FFFFFFF : v60 + HIDWORD(v61) - 1;
    if (v59 > v66)
    {
      break;
    }

    objc_msgSend_maximumSize(validCopy, v61, v62, v63, v64);
    objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, v67, v59, 0, 1, 1, 1, 0);
    v6 = v6 + v68;
    v59 = (v59 + 1);
  }

  objc_msgSend_maximumSize(validCopy, v61, v62, v63, v64);
  v75 = v6 > v73 && v39 >> 32 == 1;
  v76 = objc_msgSend_tableInfo(self, v69, v70, v71, v72);
  isInlineWithText = objc_msgSend_isInlineWithText(v76, v77, v78, v79, v80);

  if ((isInlineWithText & 1) == 0)
  {
    v86 = objc_msgSend_numberOfHeaderColumns(self, v82, v83, v84, v85);
    v91 = objc_msgSend_cellRange(validCopy, v87, v88, v89, v90);
    v96 = v91 != 0x7FFFFFFF && (v91 & 0xFFFF00000000) == 0x7FFF00000000;
    if (!v96 && WORD2(v91) > (v86 - 1))
    {
      v97 = 0;
      do
      {
        objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(self, v92, v97, 0, 1, 0);
        v5 = v5 + v98;
        ++v97;
      }

      while (v97 < v86);
    }

    v99 = objc_msgSend_cellRange(validCopy, v92, v93, v94, v95);
    if (v99 != 0x7FFFFFFF && (v99 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v105 = 0;
    }

    else
    {
      v105 = WORD2(v99);
    }

    while (1)
    {
      v106 = objc_msgSend_cellRange(validCopy, v100, v101, v102, v103);
      v110 = v107 + WORD2(v106) - 1;
      if (v107)
      {
        v111 = WORD2(v106) == 0x7FFF;
      }

      else
      {
        v111 = 1;
      }

      if (v111)
      {
        v110 = 0x7FFF;
      }

      if (v105 > v110)
      {
        break;
      }

      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(self, v107, v105, 0, 1, 0);
      v5 = v5 + v112;
      ++v105;
    }

    objc_msgSend_maximumSize(validCopy, v107, v105, v108, v109);
    v115 = v5 > v113 && v39 == 1;
    v75 |= v115;
  }

  objc_msgSend_maximumSize(validCopy, v82, v83, v84, v85);
  if (v6 <= v120)
  {
    objc_msgSend_maximumSize(validCopy, v116, v117, v118, v119);
    if (v5 <= v121)
    {
      v75 = 1;
    }
  }

  objc_msgSend_setIsValid_(validCopy, v116, v75 & 1, v118, v119);
  isValid = objc_msgSend_isValid(validCopy, v122, v123, v124, v125);

  return isValid;
}

- (BOOL)validateLayoutHint:(id)hint
{
  hintCopy = hint;
  v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  objc_opt_class();
  v14 = objc_msgSend_partitioner(v9, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  v20 = objc_msgSend_cellRange(self, v16, v17, v18, v19);
  v22 = v21;
  v30 = objc_msgSend_cellRange(hintCopy, v21, v23, v24, v25);
  v31 = v26;
  if (!v15)
  {
LABEL_4:
    v34 = objc_msgSend_cellRange(self, v26, v27, v28, v29);
    v35 = v36;
    objc_msgSend_setMaximumSize_(hintCopy, v36, v37, v38, v39, INFINITY, INFINITY);
    objc_msgSend_setCacheHintID_(hintCopy, v40, 0, v41, v42);
    goto LABEL_5;
  }

  objc_msgSend_maximumSize(hintCopy, v26, v27, v28, v29);
  if (v33 == INFINITY)
  {
    v34 = v30;
    v35 = v31;
    if (v32 != INFINITY)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v34 = v30;
  v35 = v31;
LABEL_5:
  if (objc_msgSend_isInlineWithText(v9, v26, v27, v28, v29))
  {
    v47 = v22 + WORD2(v20) - 1;
    if (v22)
    {
      v48 = WORD2(v20) == 0x7FFF;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      v47 = 0x7FFF;
    }

    v49 = v31 + WORD2(v30) - 1;
    if (v31)
    {
      v50 = WORD2(v30) == 0x7FFF;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      v49 = 0x7FFF;
    }

    if (v47 <= v49)
    {
      v51 = v35;
    }

    else
    {
      v51 = v35 & 0xFFFFFFFF00000000 | v22;
    }

    v34 = sub_221119E0C(v34, v51, v20, v22);
    v35 = v43;
  }

  if (v34 == 0x7FFFFFFF || (v34 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v35) || !v35)
  {
    objc_msgSend_setCellRange_(hintCopy, v43, 0x7FFF7FFFFFFFLL, 0, v46);
    objc_msgSend_setIsValid_(hintCopy, v61, 0, v62, v63);
  }

  else
  {
    if ((v20 & 0xFFFF00000000) != 0x7FFF00000000 && v20 == 0x7FFFFFFF)
    {
      v53 = 0;
    }

    else
    {
      v53 = v20;
    }

    if (v53 == v34)
    {
      v54 = objc_msgSend_numberOfHeaderRows(self, v43, v44, v45, v46);
      v58 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v55, v54, v56, v57);
      if (v58 < v34 || HIDWORD(v35) + v34 - 1 < v58)
      {
        v101 = (v34 & 0xFFFF00000000 | v58);
        v59 = TSUCellCoord::convertSpanningToInvalid(&v101);
        v34 = sub_221286760(v34, v35, v59);
        v35 = v43;
      }

      v60 = 1;
    }

    else
    {
      v60 = 0;
    }

    if (HIDWORD(v22))
    {
      v68 = v20 == 0x7FFFFFFF;
    }

    else
    {
      v68 = 1;
    }

    if (v68)
    {
      v69 = 0x7FFFFFFF;
    }

    else
    {
      v69 = v20 + HIDWORD(v22) - 1;
    }

    if (HIDWORD(v35))
    {
      v70 = v34 == 0x7FFFFFFF;
    }

    else
    {
      v70 = 1;
    }

    if (v70)
    {
      v71 = 0x7FFFFFFF;
    }

    else
    {
      v71 = v34 + HIDWORD(v35) - 1;
    }

    if (v69 == v71)
    {
      v60 |= 2u;
    }

    if (v20 != 0x7FFFFFFF && (v20 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v73 = 0;
    }

    else
    {
      v73 = WORD2(v20);
    }

    if (v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v75 = 0;
    }

    else
    {
      v75 = WORD2(v34);
    }

    if (v73 == v75)
    {
      v60 |= 4u;
    }

    v76 = v22 + WORD2(v20) - 1;
    if (v22)
    {
      v77 = WORD2(v20) == 0x7FFF;
    }

    else
    {
      v77 = 1;
    }

    if (v77)
    {
      v76 = 0x7FFF;
    }

    if (v35)
    {
      v78 = WORD2(v34) == 0x7FFF;
    }

    else
    {
      v78 = 1;
    }

    if (v78)
    {
      v79 = 0x7FFF;
    }

    else
    {
      v79 = v35 + WORD2(v34) - 1;
    }

    if (v76 == v79)
    {
      v80 = v60 | 8;
    }

    else
    {
      v80 = v60;
    }

    if (v80 == 15)
    {
      *&self->_headerColumnsRepeat = 0;
      self->_headerColumnsFrozen = objc_msgSend_headerColumnsFrozen(v9, v43, v44, v45, v46);
      v85 = objc_msgSend_headerRowsFrozen(v9, v81, v82, v83, v84);
    }

    else
    {
      self->_headerColumnsRepeat = objc_msgSend_repeatingHeaderColumnsEnabled(v9, v43, v44, v45, v46);
      v93 = objc_msgSend_repeatingHeaderRowsEnabled(v9, v89, v90, v91, v92);
      v85 = 0;
      self->_headerRowsRepeat = v93;
      self->_headerColumnsFrozen = 0;
    }

    self->_headerRowsFrozen = v85;
    objc_msgSend_setPartitionPosition_(hintCopy, v86, v80, v87, v88);
    objc_msgSend_setCellRange_(hintCopy, v94, v34, v35, v95);
    objc_msgSend_setIsValid_(hintCopy, v96, 1, v97, v98);
  }

  isValid = objc_msgSend_isValid(hintCopy, v64, v65, v66, v67);

  return isValid;
}

- (void)resetModelHeightWidthCache
{
  v9 = objc_msgSend_widthHeightCache(self, a2, v2, v3, v4);
  objc_msgSend_resetModelCache(v9, v5, v6, v7, v8);
}

- (void)clearModelHeightWidthCacheForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v8 = objc_msgSend_widthHeightCache(self, a2, *&range.origin, *&range.size, v3);
  objc_msgSend_resetModelCacheRange_(v8, v6, origin, size, v7);
}

- (id)tableNameTextEngineWithTableNameStyle:(id)style
{
  styleCopy = style;
  v124 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  v12 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v9, 0, v10, v11);
  v17 = objc_msgSend_tableNameShapeStyle(v124, v13, v14, v15, v16);
  v21 = objc_msgSend_intValueForProperty_(v17, v18, 149, v19, v20);

  objc_msgSend_setIntValue_forProperty_(v12, v22, v21, 149, v23);
  v28 = objc_msgSend_tableNameShapeStyle(v124, v24, v25, v26, v27);
  v32 = objc_msgSend_objectForProperty_(v28, v29, 146, v30, v31);

  if (!v32)
  {
    v32 = objc_msgSend_padding(MEMORY[0x277D80EB0], v33, v34, v35, v36);
  }

  objc_msgSend_setValue_forProperty_(v12, v33, v32, 146, v36);
  v40 = objc_msgSend_intValueForProperty_(styleCopy, v37, 44, v38, v39) == 1;
  v41 = objc_alloc(MEMORY[0x277D80F70]);
  v46 = objc_msgSend_stylesheet(styleCopy, v42, v43, v44, v45);
  v123 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v41, v47, v46, styleCopy, 0, v12, v40, v40);

  v52 = objc_msgSend_styleProvidingSource(self, v48, v49, v50, v51);

  if (v52)
  {
    objc_msgSend_topInset(v32, v53, v54, v55, v56);
    v58 = v57;
    objc_msgSend_leftInset(v32, v59, v60, v61, v62);
    v64 = v63;
    objc_msgSend_bottomInset(v32, v65, v66, v67, v68);
    v70 = v69;
    objc_msgSend_rightInset(v32, v71, v72, v73, v74);
    v76 = v75;
    objc_opt_class();
    v81 = objc_msgSend_tableInfo(self, v77, v78, v79, v80);
    v86 = objc_msgSend_context(v81, v82, v83, v84, v85);
    v91 = objc_msgSend_documentObject(v86, v87, v88, v89, v90);
    v92 = TSUCheckedDynamicCast();

    v93 = [TSTTextEngineDelegate alloc];
    v98 = objc_msgSend_typesettingLocale(v92, v94, v95, v96, v97);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v92, v99, v100, v101, v102);
    v108 = objc_msgSend_styleProvidingSource(self, v104, v105, v106, v107);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v93, v109, v21, v98, shouldHyphenate, v108, v58, v64, v70, v76);

    objc_msgSend_setTableNameTextEngineDelegate_(self, v111, shouldHyphenate_styleProvidingSource, v112, v113);
    v118 = objc_msgSend_tableNameTextEngineDelegate(self, v114, v115, v116, v117);
    objc_msgSend_setDelegate_(v123, v119, v118, v120, v121);
  }

  return v123;
}

- (id)tableNameTextEngine
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_tableNameStyle(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_tableNameTextEngineWithTableNameStyle_(self, v12, v11, v13, v14);

  return v15;
}

- (CGSize)tableNameTextSize
{
  if (self->_tableNameEnabled)
  {
    v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    v11 = objc_msgSend_tableName(v6, v7, v8, v9, v10);
    v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    v21 = objc_msgSend_tableNameStyle(v16, v17, v18, v19, v20);
    objc_msgSend_tableNameTextSizeForTableName_maxWidth_tableNameStyle_(self, v22, v11, v21, v23, 4294967300.0);
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v25 = *MEMORY[0x277CBF3A8];
    v27 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v28 = v25;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (CGSize)tableNameTextSizeForTableName:(id)name maxWidth:(double)width tableNameStyle:(id)style
{
  nameCopy = name;
  styleCopy = style;
  v18 = objc_msgSend_tableInfo(self, v10, v11, v12, v13);
  v19 = *MEMORY[0x277CBF3A8];
  v20 = *(MEMORY[0x277CBF3A8] + 8);
  if (nameCopy && objc_msgSend_length(nameCopy, v14, v15, v16, v17) && objc_msgSend_tableNameEnabled(v18, v21, v22, v23, v24))
  {
    v28 = objc_msgSend_tableNameTextEngineWithTableNameStyle_(self, v25, styleCopy, v26, v27);
    objc_msgSend_measureText_withMaxWidth_(v28, v29, nameCopy, v30, v31, width);
    v19 = v32;
    v34 = v33;
    v39 = objc_msgSend_paragraphStyle(v28, v35, v36, v37, v38);
    objc_msgSend_CGFloatValueForProperty_(v39, v40, 88, v41, v42);
    v44 = v43;

    objc_opt_class();
    v49 = objc_msgSend_tableNameShapeStyle(v18, v45, v46, v47, v48);
    v53 = objc_msgSend_valueForProperty_(v49, v50, 146, v51, v52);
    v54 = TSUCheckedDynamicCast();

    objc_msgSend_topInset(v54, v55, v56, v57, v58);
    v60 = v59;
    objc_msgSend_bottomInset(v54, v61, v62, v63, v64);
    v20 = v34 + v44 + v60 + v65;
  }

  v66 = v19;
  v67 = v20;
  result.height = v67;
  result.width = v66;
  return result;
}

+ (double)effectiveTableNameHeightForTable:(id)table
{
  tableCopy = table;
  objc_msgSend_tableNameHeight(tableCopy, v4, v5, v6, v7);
  v9 = v8;
  v14 = objc_msgSend_layoutEngine(tableCopy, v10, v11, v12, v13);
  objc_msgSend_tableNameTextSize(v14, v15, v16, v17, v18);
  v20 = v19;

  if (v9 >= v20)
  {
    v21 = v9;
  }

  else
  {
    v21 = v20;
  }

  if (v9 <= 0.0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  return v22;
}

- (double)tableNameHeight
{
  if (!self->_tableNameEnabled)
  {
    return 0.0;
  }

  (MEMORY[0x2821F9670])(self, sel_calculatedTableNameHeight);
  return result;
}

- (double)tableNameHeightForStorage:(id)storage withMaxWidth:(double)width
{
  storageCopy = storage;
  v11 = 0.0;
  if (!self->_tableNameEnabled)
  {
    goto LABEL_18;
  }

  v16 = objc_msgSend_tableNameHeightCache(self, v6, v7, v8, v9);
  if (!storageCopy)
  {
    v17 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    v25 = objc_msgSend_tableName(v17, v26, v27, v28, v29);
    goto LABEL_6;
  }

  v17 = objc_msgSend_string(storageCopy, v12, v13, v14, v15);
  if (!objc_msgSend_length(v17, v18, v19, v20, v21))
  {
    v25 = @" ";
LABEL_6:

    v17 = v25;
  }

  v30 = objc_msgSend_objectForKeyedSubscript_(v16, v22, v17, v23, v24);
  v35 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v31, v32, v33, v34, width);
  v39 = objc_msgSend_objectForKeyedSubscript_(v30, v36, v35, v37, v38);

  if (v39)
  {
    objc_msgSend_tsu_CGFloatValue(v39, v40, v41, v42, v43);
    v11 = v44;
  }

  else
  {
    if (storageCopy)
    {
      v47 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(storageCopy, v40, 0, 0, v43);
      v48 = v47;
    }

    else
    {
      v48 = objc_msgSend_tableInfo(self, v40, v41, v42, v43);
      v47 = objc_msgSend_tableNameStyle(v48, v49, v50, v51, v52);
    }

    objc_msgSend_tableNameTextSizeForTableName_maxWidth_tableNameStyle_(self, v45, v17, v47, v46, width);
    v11 = v53;
    if (!storageCopy)
    {
    }

    if (!v30)
    {
      v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v58 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v54, v55, v56, v57, v11);
    v63 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v59, v60, v61, v62, width);
    objc_msgSend_setObject_forKeyedSubscript_(v30, v64, v58, v63, v65);

    objc_msgSend_setObject_forKeyedSubscript_(v16, v66, v30, v17, v67);
  }

LABEL_18:
  return v11;
}

- (double)calculatedTableNameHeightIncludingDynamicResize:(BOOL)resize
{
  resizeCopy = resize;
  isDynamicallyResizingTableName = objc_msgSend_isDynamicallyResizingTableName(self, a2, resize, v3, v4);
  cachedTableNameHeight = self->_cachedTableNameHeight;
  if (isDynamicallyResizingTableName && resizeCopy)
  {
    objc_msgSend_dynamicTableNameResize(self, v8, v9, v10, v11);
    return cachedTableNameHeight + v13;
  }

  return cachedTableNameHeight;
}

- (void)invalidateTableNameHeight
{
  self->_tableNameHeightValid = 0;
  v9 = objc_msgSend_tableNameHeightCache(self, a2, v2, v3, v4);
  objc_msgSend_removeAllObjects(v9, v5, v6, v7, v8);
}

- (void)validateTableNameHeight
{
  if (!self->_tableNameHeightValid)
  {
    v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    objc_msgSend_effectiveTableNameHeightForTable_(TSTLayoutEngine, v7, v6, v8, v9);
    self->_cachedTableNameHeight = v10;

    self->_tableNameHeightValid = 1;
  }
}

- (void)validateTableNameEnabled
{
  v7 = objc_msgSend_tableNameEnabled(self->_tableInfo, a2, v2, v3, v4);

  objc_msgSend_setTableNameEnabled_(self, v6, v7, v8, v9);
}

- (void)updateCellRange
{
  v34 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  self->_cachedNumberOfColumns = objc_msgSend_numberOfColumns(v34, v6, v7, v8, v9);
  self->_cachedNumberOfRows = objc_msgSend_numberOfRows(v34, v10, v11, v12, v13);
  self->_cachedNumberOfHeaderColumns = objc_msgSend_numberOfHeaderColumns(v34, v14, v15, v16, v17);
  self->_cachedNumberOfHeaderRows = objc_msgSend_numberOfHeaderRows(v34, v18, v19, v20, v21);
  self->_cachedNumberOfGrandTotalColumns = objc_msgSend_numberOfGrandTotalColumns(v34, v22, v23, v24, v25);
  self->_cachedNumberOfFooterRows = objc_msgSend_numberOfFooterRows(v34, v26, v27, v28, v29);
  self->_cachedNumberOfFooterOrGrandTotalRows = objc_msgSend_numberOfFooterOrGrandTotalRows(v34, v30, v31, v32, v33);
}

- (TSUCellRect)cellRange
{
  v6 = objc_msgSend_numberOfColumns(self, a2, v2, v3, v4);
  v11 = v6 | (objc_msgSend_numberOfRows(self, v7, v8, v9, v10) << 32);
  v12 = 0;
  result.size = v11;
  result.origin = v12;
  return result;
}

- (unsigned)numberOfHeaderColumns
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfHeaderColumns;
  }
}

- (unsigned)numberOfHeaderRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfHeaderRows;
  }
}

- (unsigned)numberOfFooterRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfFooterRows;
  }
}

- (unsigned)numberOfFooterOrGrandTotalRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfFooterOrGrandTotalRows;
  }
}

- (unsigned)numberOfGrandTotalColumns
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfGrandTotalColumns;
  }
}

- (unsigned)numberOfNonHiddenFooterRows
{
  if (!objc_msgSend_numberOfFooterRows(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_entireFooterRowsCellRange(self, v6, v7, v8, v9);
  v12 = v11;
  v16 = objc_msgSend_hiddenRowsColumnsCache(self, v11, v13, v14, v15);
  v19 = objc_msgSend_numberOfVisibleRowsInCellRange_(v16, v17, v10, v12, v18);

  return v19;
}

- (TSUCellRect)categoryColumnsCellRange
{
  if (objc_msgSend_isCategorized(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_indexesForCategoryColumns(self, v6, v7, v8, v9);
    Index = objc_msgSend_firstIndex(v10, v11, v12, v13, v14);
    v20 = objc_msgSend_lastIndex(v10, v16, v17, v18, v19);
    v25 = objc_msgSend_firstIndex(v10, v21, v22, v23, v24);
    v30 = objc_msgSend_numberOfRows(self, v26, v27, v28, v29);
    v31 = Index << 32;
    v32 = (v20 - v25 + 1) | (v30 << 32);
  }

  else
  {
    v32 = 0;
    v31 = 0x7FFF7FFFFFFFLL;
  }

  v33 = v31;
  v34 = v32;
  result.size = v34;
  result.origin = v33;
  return result;
}

- (TSUCellRect)entireHeaderColumnsCellRange
{
  v6 = objc_msgSend_numberOfHeaderColumns(self, a2, v2, v3, v4);
  if (v6)
  {
    v11 = v6;
    v12 = objc_msgSend_cellRange(self, v7, v8, v9, v10);
    v14 = v13 & 0xFFFFFFFF00000000 | v11;
  }

  else
  {
    v14 = 0;
    v12 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v14;
  result.origin = v12;
  return result;
}

- (TSUCellRect)entireActualHeaderColumnsCellRange
{
  v6 = objc_msgSend_numberOfHeaderColumns(self, a2, v2, v3, v4);
  if (v6)
  {
    v11 = v6;
    v12 = objc_msgSend_numberOfHeaderRows(self, v7, v8, v9, v10);
    v17 = objc_msgSend_numberOfFooterRows(self, v13, v14, v15, v16);
    v22 = objc_msgSend_numberOfRows(self, v18, v19, v20, v21);
    v23 = v12;
    v24 = v11 | ((v22 - (v17 + v12)) << 32);
  }

  else
  {
    v24 = 0;
    v23 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v24;
  result.origin = v23;
  return result;
}

- (TSUCellRect)entireHeaderRowsCellRange
{
  v6 = objc_msgSend_numberOfHeaderRows(self, a2, v2, v3, v4);
  if (v6)
  {
    v11 = v6;
    v12 = objc_msgSend_cellRange(self, v7, v8, v9, v10);
    v14 = v13 | (v11 << 32);
  }

  else
  {
    v14 = 0;
    v12 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v14;
  result.origin = v12;
  return result;
}

- (TSUCellRect)entireFooterRowsCellRange
{
  v6 = objc_msgSend_numberOfFooterRows(self, a2, v2, v3, v4);
  if (v6)
  {
    v11 = v6;
    v12 = objc_msgSend_cellRange(self, v7, v8, v9, v10);
    v14 = v13 - v11;
    v16 = v15 | (v11 << 32);
    v17 = v12 & 0xFFFFFFFF00000000 | v14;
  }

  else
  {
    v16 = 0;
    v17 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v16;
  result.origin = v17;
  return result;
}

- (TSUCellRect)entireBodyRowsCellRange
{
  v6 = objc_msgSend_numberOfHeaderRows(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfFooterRows(self, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfColumns(self, v12, v13, v14, v15);
  v21 = v16 | ((objc_msgSend_numberOfRows(self, v17, v18, v19, v20) - (v11 + v6)) << 32);
  v22 = v6;
  result.size = v21;
  result.origin = v22;
  return result;
}

- (TSUCellRect)entireBodyCellRange
{
  v6 = objc_msgSend_numberOfHeaderRows(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfFooterRows(self, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfHeaderColumns(self, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfColumns(self, v17, v18, v19, v20);
  v26 = (v21 - v16) | ((objc_msgSend_numberOfRows(self, v22, v23, v24, v25) - (v11 + v6)) << 32);
  v27 = v6 | (v16 << 32);
  result.size = v26;
  result.origin = v27;
  return result;
}

- (unint64_t)tableAreaForCellID:(TSUCellCoord)d
{
  v7 = objc_msgSend_entireFooterRowsCellRange(self, a2, *&d, v3, v4);
  if (!(v8 >> 32) || !v8)
  {
    goto LABEL_25;
  }

  v12 = v7 & 0xFFFF00000000;
  if (v7 != 0x7FFFFFFFLL || v12 == 0x7FFF00000000)
  {
    v16 = v7 == 0x7FFFFFFF && v12 != 0x7FFF00000000;
    if (v7 > d.row && !v16)
    {
      goto LABEL_25;
    }

    v17 = v7 + HIDWORD(v8) - 1;
    if (v7 == 0x7FFFFFFF)
    {
      v17 = 0x7FFFFFFF;
    }

    if (v17 < d.row)
    {
      goto LABEL_25;
    }

    if (v7 != 0x7FFFFFFFLL && v12 == 0x7FFF00000000)
    {
      return 4;
    }
  }

  if (WORD2(v7) <= d.column)
  {
    v13 = WORD2(v7) == 0x7FFF || v8 == 0;
    v14 = v13 ? 0x7FFF : v8 + WORD2(v7) - 1;
    if (v14 >= d.column)
    {
      return 4;
    }
  }

LABEL_25:
  v18 = objc_msgSend_entireHeaderRowsCellRange(self, v8, v9, v10, v11);
  if (!(v19 >> 32) || !v19)
  {
    goto LABEL_49;
  }

  v23 = v18 & 0xFFFF00000000;
  if (v18 != 0x7FFFFFFFLL || v23 == 0x7FFF00000000)
  {
    v27 = v18 == 0x7FFFFFFF && v23 != 0x7FFF00000000;
    if (v18 > d.row && !v27)
    {
      goto LABEL_49;
    }

    v28 = v18 + HIDWORD(v19) - 1;
    if (v18 == 0x7FFFFFFF)
    {
      v28 = 0x7FFFFFFF;
    }

    if (v28 < d.row)
    {
      goto LABEL_49;
    }

    if (v18 != 0x7FFFFFFFLL && v23 == 0x7FFF00000000)
    {
      return 2;
    }
  }

  if (WORD2(v18) <= d.column)
  {
    v24 = WORD2(v18) == 0x7FFF || v19 == 0;
    v25 = v24 ? 0x7FFF : v19 + WORD2(v18) - 1;
    if (v25 >= d.column)
    {
      return 2;
    }
  }

LABEL_49:
  v29 = objc_msgSend_entireHeaderColumnsCellRange(self, v19, v20, v21, v22);
  v31 = 1;
  if (HIDWORD(v30) && v30)
  {
    v32 = v29 & 0xFFFF00000000;
    if (v29 != 0x7FFFFFFFLL || v32 == 0x7FFF00000000)
    {
      v36 = v29 == 0x7FFFFFFF && v32 != 0x7FFF00000000;
      if (v29 > d.row && !v36)
      {
        return 1;
      }

      v37 = v29 + HIDWORD(v30) - 1;
      if (v29 == 0x7FFFFFFF)
      {
        v37 = 0x7FFFFFFF;
      }

      if (v37 < d.row)
      {
        return 1;
      }

      if (v29 != 0x7FFFFFFFLL && v32 == 0x7FFF00000000)
      {
        return 3;
      }
    }

    if (WORD2(v29) <= d.column)
    {
      v33 = WORD2(v29) == 0x7FFF || v30 == 0;
      v34 = v33 ? 0x7FFF : v30 + WORD2(v29) - 1;
      if (v34 >= d.column)
      {
        return 3;
      }
    }

    return 1;
  }

  return v31;
}

- (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)d
{
  if (objc_msgSend_isAPivotTable(self, a2, *&d, v3, v4))
  {
    tableInfo = self->_tableInfo;

    return objc_msgSend_tableStyleAreaForCellID_(tableInfo, v7, *&d, v9, v10);
  }

  if (!objc_msgSend_isCategorized(self, v7, v8, v9, v10))
  {
    goto LABEL_13;
  }

  v17 = objc_msgSend_groupLevelAtSummaryRow_(self, v13, *&d, v15, v16);
  if (v17 == 255)
  {
    v21 = objc_msgSend_groupLevelAtLabelRow_(self, v13, *&d, v18, v16);
    if (v21 != 255)
    {
      v19 = v21;
      v20 = 1;
      goto LABEL_10;
    }

LABEL_13:
    if (objc_msgSend_numberOfHeaderRows(self, v13, v14, v15, v16) > d.row)
    {
      return 2;
    }

    v26 = objc_msgSend_numberOfRows(self, v22, v23, v24, v25);
    if (v26 - objc_msgSend_numberOfFooterRows(self, v27, v28, v29, v30) <= d.row)
    {
      return 4;
    }

    if (objc_msgSend_numberOfHeaderColumns(self, v31, v32, v33, v34) <= d.column)
    {
      return 1;
    }

    return 3;
  }

  v19 = v17;
  v20 = 0;
LABEL_10:

  return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v13, v19, v20, v16);
}

- (unsigned)numberOfRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    LODWORD(cachedNumberOfRows) = 1;
  }

  else
  {
    isDynamicallyChangingRowOrColumnCount = objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v6, v7, v8, v9);
    cachedNumberOfRows = self->_cachedNumberOfRows;
    if (isDynamicallyChangingRowOrColumnCount)
    {
      cachedNumberOfRows += self->_dynamicRowAdjustment;
      if (cachedNumberOfRows < 1 || (v16 = objc_msgSend_numberOfHeaderRows(self, v12, v13, v14, v15), cachedNumberOfRows < (v16 + objc_msgSend_numberOfFooterRows(self, v17, v18, v19, v20) + 1)))
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTLayoutEngine numberOfRows]", v14, v15);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 1213, 0, "Size invariants violated by dynamic add/remove");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
      }
    }
  }

  return cachedNumberOfRows;
}

- (unsigned)numberOfColumns
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3, v4))
  {
    LOWORD(cachedNumberOfColumns) = 1;
  }

  else
  {
    isDynamicallyChangingRowOrColumnCount = objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v6, v7, v8, v9);
    cachedNumberOfColumns = self->_cachedNumberOfColumns;
    if (isDynamicallyChangingRowOrColumnCount)
    {
      cachedNumberOfColumns += self->_dynamicColumnAdjustment;
      if (cachedNumberOfColumns < 1 || cachedNumberOfColumns < (objc_msgSend_numberOfHeaderColumns(self, v12, v13, v14, v15) + 1))
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTLayoutEngine numberOfColumns]", v14, v15);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v19, v20);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 1235, 0, "Size invariants violated by dynamic add/remove");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
      }
    }
  }

  return cachedNumberOfColumns;
}

- (BOOL)hasMergeRanges
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  hasMergeRanges = objc_msgSend_hasMergeRanges(v5, v6, v7, v8, v9);

  return hasMergeRanges;
}

- (id)mergeRangesProppingRowHeightsInRegion:(id)region
{
  regionCopy = region;
  if (objc_msgSend_hasMergeRanges(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_visibleColumnIndices(self, v9, v10, v11, v12);
    v17 = objc_msgSend_regionByIntersectingColumnIndices_(regionCopy, v14, v13, v15, v16);

    v22 = objc_msgSend_visibleRowIndices(self, v18, v19, v20, v21);
    v26 = objc_msgSend_regionByIntersectingRowIndices_(v17, v23, v22, v24, v25);

    v30 = objc_msgSend_mergesIntersectingCellRegion_(self, v27, v26, v28, v29);
    v34 = objc_msgSend_mergeListWrapperWithRangesPassingTest_(v30, v31, &unk_2834A6ED0, v32, v33);

    if (objc_msgSend_count(v34, v35, v36, v37, v38))
    {
      v43 = objc_msgSend_regionForList(v34, v39, v40, v41, v42);
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (id)mergesIntersectingRange:(TSUCellRect)range
{
  v5 = objc_msgSend_regionFromRange_(TSTCellRegion, a2, *&range.origin, *&range.size, v3);
  v9 = objc_msgSend_mergesIntersectingCellRegion_(self, v6, v5, v7, v8);

  return v9;
}

- (id)mergesIntersectingCellRegion:(id)region
{
  regionCopy = region;
  v13 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v9, v10, v11, v12) & 1) == 0)
  {
    if (objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v14, v15, v16, v17) && objc_msgSend_isDynamicallyChangingContent(self, v19, v20, v21, v22) && (objc_msgSend_dynamicContentDelegate(self, v19, v23, v21, v22), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_opt_respondsToSelector(), v24, (v25 & 1) != 0))
    {
      v27 = objc_msgSend_dynamicContentDelegate(self, v19, v26, v21, v22);
      v18 = objc_msgSend_mergesIntersectingCellRegion_(v27, v28, regionCopy, v29, v30);
    }

    else
    {
      v18 = objc_msgSend_mergesIntersectingCellRegion_(v13, v19, regionCopy, v21, v22);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)cells
{
  size = cells.size;
  origin = cells.origin;
  if ((objc_msgSend_emptyFilteredTable(self, a2, *&cells.origin, *&cells.size, v3) & 1) == 0)
  {
    v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
    origin = objc_msgSend_expandCellRangeToCoverMergedCells_(v11, v12, origin, size, v13);
    size = v14;
  }

  v15 = origin;
  v16 = size;
  result.size = v16;
  result.origin = v15;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)cells
{
  cellsCopy = cells;
  if (objc_msgSend_emptyFilteredTable(self, v5, v6, v7, v8))
  {
    v13 = cellsCopy;
  }

  else
  {
    v14 = objc_msgSend_tableInfo(self, v9, v10, v11, v12);
    v13 = objc_msgSend_expandCellRegionToCoverMergedCells_(v14, v15, cellsCopy, v16, v17);
  }

  return v13;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  if (objc_msgSend_emptyFilteredTable(self, a2, *&range.origin, *&range.size, v3))
  {
    return 0;
  }

  v12 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  hasRangeSpanningRowsForCellRange = objc_msgSend_hasRangeSpanningRowsForCellRange_(v12, v13, origin, size, v14);

  return hasRangeSpanningRowsForCellRange;
}

- (double)widthOfColumn:(unsigned __int16)column skipDynamicSwap:(BOOL)swap returnZeroIfHidden:(BOOL)hidden outIsFitting:(BOOL *)fitting
{
  hiddenCopy = hidden;
  columnCopy = column;
  v80 = 0;
  v10 = objc_msgSend_tableInfo(self, a2, column, swap, hidden);
  v15 = objc_msgSend_styleProvidingSource(self, v11, v12, v13, v14);

  if (v15)
  {
    v20 = objc_msgSend_fixedWidthProvider(self, v16, v17, v18, v19);
    v25 = objc_msgSend_numberOfColumns(self, v21, v22, v23, v24);
    objc_msgSend_fixedColumnWidth_(v20, v26, v27, v28, v29, v25);
    v31 = v30;

    goto LABEL_3;
  }

  v37 = objc_msgSend_emptyFilteredTable(self, v16, v17, v18, v19) ^ 1;
  if (columnCopy)
  {
    LOBYTE(v37) = 1;
  }

  if ((v37 & 1) == 0)
  {
    if (self->_cachedNumberOfColumns)
    {
      v38 = 0;
      v31 = 0.0;
      do
      {
        if ((objc_msgSend_hasHiddenColumnAtIndex_(v10, v33, v38, v35, v36) & 1) == 0)
        {
          objc_msgSend_widthOfColumnAtIndex_isDefault_(v10, v33, v38, 0, v36);
          v31 = v31 + v39;
        }

        ++v38;
      }

      while (self->_cachedNumberOfColumns > v38);
    }

    else
    {
      v31 = 0.0;
    }

    goto LABEL_3;
  }

  if (hiddenCopy)
  {
    v31 = 0.0;
    if (objc_msgSend_hasHiddenColumnAtIndex_(self, v33, columnCopy, v35, v36))
    {
      goto LABEL_3;
    }
  }

  if (!objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v33, v34, v35, v36) || !self->_dynamicResizingColumns || (objc_msgSend_numberOfColumns(self, v40, v41, v42, v43) - self->_dynamicColumnAdjustment) > columnCopy)
  {
    dynamicResizeInfo = self->_dynamicResizeInfo;
    if (dynamicResizeInfo)
    {
      if (self->_dynamicRepResize)
      {
LABEL_22:
        objc_msgSend_getColumnWidth_(dynamicResizeInfo, v40, columnCopy, v42, v43);
        dynamicAddOrRemoveColumnElementSize = v49;
        goto LABEL_30;
      }

      if (objc_msgSend_hasWidthForColumn_(dynamicResizeInfo, v40, columnCopy, v42, v43))
      {
        dynamicResizeInfo = self->_dynamicResizeInfo;
        goto LABEL_22;
      }
    }

    objc_msgSend_getModelWidthForColumn_(self->_widthHeightCache, v40, columnCopy, v42, v43);
    dynamicAddOrRemoveColumnElementSize = v53;
    if (v53 <= 0.0)
    {
      objc_msgSend_widthOfColumnAtIndex_isDefault_(v10, v51, columnCopy, &v80, v52);
      dynamicAddOrRemoveColumnElementSize = v54;
      objc_msgSend_setModelWidth_forColumn_(self->_widthHeightCache, v55, columnCopy, v56, v57);
    }

    if (fitting)
    {
      *fitting = 0;
    }

    if (!objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v51, 1, columnCopy, v52))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  dynamicAddOrRemoveColumnElementSize = self->_dynamicAddOrRemoveColumnElementSize;
  if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v40, 1, columnCopy, v43))
  {
LABEL_29:
    dynamicAddOrRemoveColumnElementSize = dynamicAddOrRemoveColumnElementSize + self->_dynamicResizingColumnAdjustment;
  }

LABEL_30:
  v62 = objc_msgSend_partitioner(v10, v45, v46, v47, v48);
  v63 = 1.0;
  if (v62)
  {
    v64 = objc_msgSend_partitioner(v10, v58, v59, v60, v61);
    IsValid = objc_msgSend_scaleIsValid(v64, v65, v66, v67, v68);

    if (IsValid)
    {
      v74 = objc_msgSend_partitioner(v10, v70, v71, v72, v73);
      objc_msgSend_scaleToFit(v74, v75, v76, v77, v78);
      v63 = v79;
    }
  }

  v31 = dynamicAddOrRemoveColumnElementSize * v63;
LABEL_3:

  return v31;
}

- (double)heightOfRow:(unsigned int)row skipDynamicSwap:(BOOL)swap withStrokeHeights:(BOOL)heights returnZeroIfHidden:(BOOL)hidden clampToPartitionSize:(BOOL)size maximumPartitionSize:(CGSize)partitionSize outIsFitting:(BOOL *)fitting
{
  height = partitionSize.height;
  width = partitionSize.width;
  sizeCopy = size;
  hiddenCopy = hidden;
  heightsCopy = heights;
  v15 = *&row;
  v17 = objc_msgSend_tableInfo(self, a2, *&row, swap, heights);
  objc_msgSend_defaultRowHeight(v17, v18, v19, v20, v21);
  v23 = v22;
  v31 = objc_msgSend_tableRowsBehavior(self, v24, v25, v26, v27);
  if (hiddenCopy)
  {
    v32 = 0.0;
    if (objc_msgSend_hasHiddenRowAtIndex_(self, v28, v15, v29, v30))
    {
      goto LABEL_60;
    }
  }

  v102 = 0.0;
  v103 = 0.0;
  objc_msgSend_strokeWidthForGridIndex_outWidth_outNextWidth_(self->_rowToStrokeHeightCache, v28, v15, &v103, &v102);
  v102 = v102 * 0.5;
  v103 = v103 * 0.5;
  v41 = objc_msgSend_emptyFilteredTable(self, v33, v34, v35, v36) ^ 1;
  if (v15)
  {
    LOBYTE(v41) = 1;
  }

  if ((v41 & 1) == 0)
  {
    if (fitting)
    {
      *fitting = 1;
    }

    v32 = self->_tableDefaultFontHeightForArea.__begin_[1] + v103 + v102;
    goto LABEL_60;
  }

  if (objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v37, v38, v39, v40))
  {
    if (self->_dynamicResizingRows)
    {
      v46 = objc_msgSend_numberOfRows(self, v42, v43, v44, v45);
      if (v46 - objc_msgSend_numberOfFooterRows(self, v47, v48, v49, v50) - self->_dynamicRowAdjustment <= v15)
      {
        v52 = objc_msgSend_numberOfRows(self, v42, v51, v44, v45);
        if (v52 - objc_msgSend_numberOfFooterRows(self, v53, v54, v55, v56) > v15)
        {
          dynamicAddOrRemoveRowElementSize = self->_dynamicAddOrRemoveRowElementSize;
          if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v42, 0, v15, v45))
          {
            dynamicAddOrRemoveRowElementSize = dynamicAddOrRemoveRowElementSize + self->_dynamicResizingRowAdjustment;
          }

          v61 = 0;
          v63 = dynamicAddOrRemoveRowElementSize == v23 && v31 != 2;
          goto LABEL_26;
        }
      }
    }
  }

  dynamicResizeInfo = self->_dynamicResizeInfo;
  if (!dynamicResizeInfo)
  {
    goto LABEL_27;
  }

  if (!self->_dynamicRepResize)
  {
    if (objc_msgSend_hasHeightForRow_(dynamicResizeInfo, v42, v15, v44, v45))
    {
      dynamicResizeInfo = self->_dynamicResizeInfo;
      goto LABEL_25;
    }

LABEL_27:
    v101 = 0;
    v99 = 0.0;
    v100 = 0.0;
    objc_msgSend_getFitHeight_andModelHeight_forRow_(self->_widthHeightCache, v42, &v99, &v100, v15);
    if (v100 == 0.0)
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v17, v67, v15, &v101, v69, v100);
      if ((v101 & (v31 == 3)) != 0)
      {
        v73 = -1.0;
      }

      v100 = v73;
      objc_msgSend_setModelHeight_forRow_(self->_widthHeightCache, v70, v15, v71, v72);
    }

    else if (v100 == -1.0)
    {
      v101 = 1;
    }

    dynamicAddOrRemoveRowElementSize = v100;
    if (v31 == 1)
    {
      v74 = v99;
      v75 = v100;
      if (v99 == 0.0)
      {
        objc_msgSend_computeDefaultFontHeightForTableStyleArea_(v17, v67, 1, v68, v69, v99, v100);
        v99 = v74;
        v75 = v100;
      }

      v63 = v75 == v23;
      v77 = v102;
      v76 = v103;
      if (v74 >= v75 - (v103 + v102))
      {
        v63 = 1;
        v78 = 1;
        dynamicAddOrRemoveRowElementSize = v74;
      }

      else
      {
        v78 = 0;
      }
    }

    else
    {
      if (v31 == 3)
      {
        if (v100 == -1.0)
        {
          v63 = 1;
          dynamicAddOrRemoveRowElementSize = v99;
          v61 = 1;
        }

        else
        {
          v63 = 0;
          v61 = 0;
        }

LABEL_49:
        if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v67, 0, v15, v69))
        {
          dynamicAddOrRemoveRowElementSize = dynamicAddOrRemoveRowElementSize + self->_dynamicResizingRowAdjustment;
        }

        v83 = objc_msgSend_partitioner(v17, v79, v80, v81, v82);
        IsValid = objc_msgSend_scaleIsValid(v83, v84, v85, v86, v87);

        v66 = 1.0;
        if (IsValid)
        {
          v90 = objc_msgSend_partitioner(v17, v58, v89, v59, v60);
          objc_msgSend_scaleToFit(v90, v91, v92, v93, v94);
          v66 = v95;
        }

        goto LABEL_53;
      }

      v74 = v99;
      if (v99 == 0.0)
      {
        objc_msgSend_computeDefaultFontHeightForTableStyleArea_(v17, v67, 1, v68, v69, v99);
        v99 = v74;
      }

      v63 = 0;
      v78 = 0;
      v77 = v102;
      v76 = v103;
      v75 = v100;
    }

    if (vabdd_f64(v74 + v76 + v77, v75) < 0.01)
    {
      v61 = 1;
    }

    else
    {
      v61 = v78;
    }

    goto LABEL_49;
  }

LABEL_25:
  objc_msgSend_getRowHeight_(dynamicResizeInfo, v42, v15, v44, v45);
  dynamicAddOrRemoveRowElementSize = v65;
  v61 = 0;
  v63 = 0;
LABEL_26:
  v66 = 1.0;
LABEL_53:
  v96 = dynamicAddOrRemoveRowElementSize + v103 + v102;
  if (!heightsCopy || !v63)
  {
    v96 = dynamicAddOrRemoveRowElementSize;
  }

  if (fitting)
  {
    *fitting = v61;
  }

  v32 = v66 * v96;
  if (sizeCopy && height > 0.0)
  {
    objc_msgSend_clampRowHeightAccountingForMaximumPartitionSize_rowIndex_rowHeight_(self, v58, v15, v59, v60, width, height, v32);
    v32 = v97;
  }

LABEL_60:

  return v32;
}

- (double)clampRowHeightAccountingForMaximumPartitionSize:(CGSize)size rowIndex:(unsigned int)index rowHeight:(double)height
{
  height = size.height;
  v9 = MEMORY[0x277CBF3A8];
  if (size.width != *MEMORY[0x277CBF3A8] || size.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v13 = objc_msgSend_numberOfHeaderRows(self, a2, *&index, v5, v6);
    if (self->_headerRowsRepeat && v13 - 1 < index)
    {
      v16 = v13;
      v17 = 0;
      do
      {
        objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, v14, v17, 0, 1, 1, 0, 0, *v9, v9[1]);
        height = height - v18;
        v17 = (v17 + 1);
      }

      while (v16 != v17);
    }

    if (height <= height)
    {
      heightCopy2 = height;
    }

    else
    {
      heightCopy2 = height;
    }

    if (heightCopy2 >= 0.0)
    {
      return heightCopy2;
    }

    else
    {
      return 0.0;
    }
  }

  return height;
}

- (double)heightOfRowIgnoringFitting:(unsigned int)fitting withStrokeHeights:(BOOL)heights
{
  heightsCopy = heights;
  v6 = *&fitting;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v8 = objc_msgSend_tableInfo(self, a2, *&fitting, heights, v4);
  v17 = objc_msgSend_tableRowsBehavior(self, v9, v10, v11, v12);
  v18 = 0.0;
  v19 = 0.0;
  if (heightsCopy)
  {
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, v13, v6, 0, 2147483646);
    v21 = v20;
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, v22, (v6 + 1), 0, 2147483646);
    v19 = v21 * 0.5;
    v18 = v23 * 0.5;
  }

  if (objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v13, v14, v15, v16) && self->_dynamicResizingRows && (v28 = objc_msgSend_numberOfRows(self, v24, v25, v26, v27), v28 - objc_msgSend_numberOfFooterRows(self, v29, v30, v31, v32) - self->_dynamicRowAdjustment <= v6))
  {
    v76[3] = self->_dynamicAddOrRemoveRowElementSize;
    v43 = 1.0;
  }

  else
  {
    v74 = 0;
    objc_msgSend_getModelHeightForRow_(self->_widthHeightCache, v24, v6, v26, v27);
    if (v37 == 0.0)
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v8, v33, v6, &v74, v36);
      if (v74 != 1 || (v42 = -1.0, v17 != 3))
      {
        v76[3] = v41;
        v42 = v41;
      }

      objc_msgSend_setModelHeight_forRow_(self->_widthHeightCache, v38, v6, v39, v40, v42);
    }

    else
    {
      v42 = -1.0;
      if (v37 == -1.0)
      {
        v74 = 1;
      }

      else
      {
        v76[3] = v37;
        v42 = v37;
      }
    }

    v46 = objc_msgSend_partitioner(v8, v33, v34, v35, v36);
    v43 = 1.0;
    if (v46)
    {
      v47 = objc_msgSend_partitioner(v8, v24, v44, v45, v27);
      IsValid = objc_msgSend_scaleIsValid(v47, v48, v49, v50, v51);

      if (IsValid)
      {
        v53 = objc_msgSend_partitioner(v8, v24, v44, v45, v27);
        objc_msgSend_scaleToFit(v53, v54, v55, v56, v57);
        v43 = v58;
      }
    }

    if (v42 == -1.0)
    {
      v59 = objc_msgSend_numberOfColumns(self, v24, v44, v45, v27);
      v72[0] = 0;
      v72[1] = v72;
      v72[2] = 0x3032000000;
      v72[3] = sub_2213A53FC;
      v72[4] = sub_2213A540C;
      v73 = 0;
      v76[3] = 0.0;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_2213A5414;
      v66[3] = &unk_278463D08;
      v66[4] = self;
      v67 = v8;
      v68 = &v75;
      v70 = v19;
      v71 = v18;
      v69 = v72;
      objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v60, v6, v59 | 0x100000000, 0, 6291456, v66);
      v61 = v76;
      v62 = v76[3];
      if (v62 == 0.0)
      {
        v62 = v18 + v19 + self->_tableDefaultFontHeightForArea.__begin_[1];
        v76[3] = v62;
      }

      if (v62 < 8.0)
      {
        v62 = 8.0;
      }

      v61[3] = v62;

      _Block_object_dispose(v72, 8);
    }
  }

  if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v24, 0, v6, v27))
  {
    v63 = self->_dynamicResizingRowAdjustment + v76[3];
    v76[3] = v63;
  }

  else
  {
    v63 = v76[3];
  }

  v64 = v43 * v63;

  _Block_object_dispose(&v75, 8);
  return v64;
}

- (void)invalidateStrokeDefaults
{
  objc_msgSend_invalidateBandedFill(self, a2, v2, v3, v4);
  strokesDefaultVendor = self->_strokesDefaultVendor;

  objc_msgSend_invalidate(strokesDefaultVendor, v6, v7, v8, v9);
}

- (void)invalidateStrokeSpills
{
  v3 = (self->_rightColumnStrokes.var0 - self->_rightColumnStrokes.__begin_) >> 3;
  pthread_rwlock_wrlock(&self->_strokesRWLock);
  spillStrokeColumns = self->_spillStrokeColumns;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2213A5978;
  v12[3] = &unk_278463D30;
  v13 = v3;
  v12[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(spillStrokeColumns, v5, v12, v6, v7);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  objc_msgSend_removeAllIndexes(self->_spillStrokeColumns, v8, v9, v10, v11);
}

- (void)validateStrokesArrays:(id)arrays
{
  arraysCopy = arrays;
  v5 = objc_autoreleasePoolPush();
  v152 = objc_msgSend_validateChangeDescriptors_(self->_strokesDefaultVendor, v6, arraysCopy, v7, v8);
  v13 = objc_msgSend_numberOfColumns(self, v9, v10, v11, v12);
  begin = self->_leftColumnStrokes.__begin_;
  var0 = self->_leftColumnStrokes.var0;
  LODWORD(v24) = objc_msgSend_numberOfRows(self, v16, v17, v18, v19);
  if ((v152 & 8) != 0)
  {
    LODWORD(v151) = objc_msgSend_numberOfHeaderRows(self, v20, v21, v22, v23);
  }

  else
  {
    v151 = (self->_topRowStrokes.var0 - self->_topRowStrokes.__begin_) >> 3;
  }

  v25 = (var0 - begin) >> 3;
  v26 = (v24 + 1);
  v27 = v13 + 1 < v25 || v13 >= v25;
  v28 = v27;
  v150 = v28;
  if (v27 || (v26 == v151 ? (v29 = (v152 & 0xA) == 0) : (v29 = 0), !v29))
  {
    pthread_rwlock_wrlock(&self->_strokesRWLock);
    if (v150)
    {
      sub_2213A60DC(&self->_leftColumnStrokes.__begin_, v13 + 1);
      sub_2213A60DC(&self->_rightColumnStrokes.__begin_, v13 + 1);
      objc_msgSend_setCount_(self->_columnToStrokeWidthCache, v33, v13 + 1, v34, v35);
    }

    if (v26 != v151)
    {
      if ((v152 & 8) != 0)
      {
        sub_2213A60DC(&self->_topRowStrokes.__begin_, v151);
        sub_2213A60DC(&self->_bottomRowStrokes.__begin_, v151);
      }

      sub_2213A60DC(&self->_topRowStrokes.__begin_, (v24 + 1));
      sub_2213A60DC(&self->_bottomRowStrokes.__begin_, (v24 + 1));
      objc_msgSend_setCount_(self->_rowToStrokeHeightCache, v36, (v24 + 1), v37, v38);
    }

    v148 = v13 + 1;
    v149 = v5;
    if (v13 + 1 < v25)
    {
      v39 = 1000;
      if (v13 == 1000)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v13 >= 0x3E8)
      {
        v40 = v39;
      }

      else
      {
        v40 = v13;
      }

      if (v13 >= 0x3E8)
      {
        v41 = v13 - 1000;
      }

      else
      {
        v41 = 1000 - v13;
      }

      if (v24 != -1)
      {
        v42 = 0;
        do
        {
          v43 = self->_topRowStrokes.__begin_[v42];
          v44 = self->_bottomRowStrokes.__begin_[v42];
          if ((objc_msgSend_isDefaultsOnly(v43, v45, v46, v47, v48) & 1) == 0)
          {
            objc_msgSend_lockForWrite(v43, v49, v50, v51, v52);
            objc_msgSend_invalidateCustomStrokes(v43, v53, v54, v55, v56);
            objc_msgSend_invalidateClearedStrokesInRange_(v43, v57, v40, v41, v58);
            objc_msgSend_invalidateDynamicStrokesInRange_(v43, v59, v40, v41, v60);
            objc_msgSend_unlock(v43, v61, v62, v63, v64);
          }

          if ((objc_msgSend_isDefaultsOnly(v44, v49, v50, v51, v52, v148) & 1) == 0)
          {
            objc_msgSend_lockForWrite(v44, v65, v66, v67, v68);
            objc_msgSend_invalidateCustomStrokes(v44, v69, v70, v71, v72);
            objc_msgSend_invalidateClearedStrokesInRange_(v44, v73, v40, v41, v74);
            objc_msgSend_invalidateDynamicStrokesInRange_(v44, v75, v40, v41, v76);
            objc_msgSend_unlock(v44, v77, v78, v79, v80);
          }

          ++v42;
        }

        while ((v24 + 1) != v42);
      }
    }

    if (v26 < v151)
    {
      v81 = 0;
      v82 = 1000000;
      v83 = 1000000 - v24;
      v84 = v24 - 1000000;
      v85 = v24 >= 0xF4240;
      if (v24 == 1000000)
      {
        v82 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v24 >= 0xF4240)
      {
        v24 = v82;
      }

      else
      {
        v24 = v24;
      }

      if (v85)
      {
        v86 = v84;
      }

      else
      {
        v86 = v83;
      }

      v87 = 8 * v13 + 8;
      do
      {
        v88 = self->_leftColumnStrokes.__begin_[v81 / 8];
        v89 = self->_rightColumnStrokes.__begin_[v81 / 8];
        if ((objc_msgSend_isDefaultsOnly(v88, v90, v91, v92, v93) & 1) == 0)
        {
          objc_msgSend_lockForWrite(v88, v94, v95, v96, v97);
          objc_msgSend_invalidateCustomStrokes(v88, v98, v99, v100, v101);
          objc_msgSend_invalidateClearedStrokesInRange_(v88, v102, v24, v86, v103);
          objc_msgSend_invalidateDynamicStrokesInRange_(v88, v104, v24, v86, v105);
          objc_msgSend_invalidateSpillStrokes(v88, v106, v107, v108, v109);
          objc_msgSend_unlock(v88, v110, v111, v112, v113);
        }

        if ((objc_msgSend_isDefaultsOnly(v89, v94, v95, v96, v97, v148) & 1) == 0)
        {
          objc_msgSend_lockForWrite(v89, v114, v115, v116, v117);
          objc_msgSend_invalidateCustomStrokes(v89, v118, v119, v120, v121);
          objc_msgSend_invalidateClearedStrokesInRange_(v89, v122, v24, v86, v123);
          objc_msgSend_invalidateDynamicStrokesInRange_(v89, v124, v24, v86, v125);
          objc_msgSend_invalidateSpillStrokes(v89, v126, v127, v128, v129);
          objc_msgSend_unlock(v89, v130, v131, v132, v133);
        }

        v81 += 8;
      }

      while (v87 != v81);
    }

    v5 = v149;
    if (v26 != v151 || (v152 & 6) != 0)
    {
      v134 = objc_msgSend_strokeLayerForStrokeType_(self->_strokesDefaultVendor, v30, 41, v31, v32, v148);
      strokesDefaultVendor = self->_strokesDefaultVendor;
      v161[0] = MEMORY[0x277D85DD0];
      v161[1] = 3221225472;
      v161[2] = sub_2213A6164;
      v161[3] = &unk_278463D58;
      v161[4] = self;
      v163 = (v152 & 4) != 0;
      v136 = v134;
      v162 = v136;
      objc_msgSend_enumerateLayerAndStackForGridRowRange_options_usingBlock_(strokesDefaultVendor, v137, 0, v26, 0, v161);
      v138 = self->_strokesDefaultVendor;
      v158[0] = MEMORY[0x277D85DD0];
      v158[1] = 3221225472;
      v158[2] = sub_2213A631C;
      v158[3] = &unk_278463D80;
      v158[4] = self;
      v160 = v26;
      v139 = v136;
      v159 = v139;
      objc_msgSend_enumerateLayerAndStackForGridRowRange_options_usingBlock_(v138, v140, 0, v26, 2, v158);
    }

    if ((v150 | ((v152 & 2) >> 1)) == 1)
    {
      v141 = objc_msgSend_strokeLayerForStrokeType_(self->_strokesDefaultVendor, v30, 5, v31, v32);
      v142 = self->_strokesDefaultVendor;
      v156[0] = MEMORY[0x277D85DD0];
      v156[1] = 3221225472;
      v156[2] = sub_2213A64E8;
      v156[3] = &unk_278463DA8;
      v156[4] = self;
      v143 = v141;
      v157 = v143;
      objc_msgSend_enumerateLayerAndStackForGridColumnRange_options_usingBlock_(v142, v144, 0, v148, 0, v156);
      v145 = self->_strokesDefaultVendor;
      v153[0] = MEMORY[0x277D85DD0];
      v153[1] = 3221225472;
      v153[2] = sub_2213A6694;
      v153[3] = &unk_278463D80;
      v153[4] = self;
      v155 = v148;
      v146 = v143;
      v154 = v146;
      objc_msgSend_enumerateLayerAndStackForGridColumnRange_options_usingBlock_(v145, v147, 0, v148, 2, v153);
    }

    pthread_rwlock_unlock(&self->_strokesRWLock);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridColumn:(unsigned int)column isLeft:(BOOL)left beginRow:(unsigned int)row endRow:(unsigned int)endRow
{
  leftCopy = left;
  v11 = *&column;
  v12 = *&order;
  strokeCopy = stroke;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v15 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v14, v11, leftCopy, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v17 = row - endRow;
  endRowCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endRow >= row)
  {
    v17 = 0;
  }

  else
  {
    endRowCopy = endRow;
  }

  if (row < endRow)
  {
    rowCopy = row;
  }

  else
  {
    rowCopy = endRowCopy;
  }

  if (row < endRow)
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, rowCopy, endRow - row);
  }

  else
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, rowCopy, v17);
  }

  objc_msgSend_unlock(v15, v20, v21, v22, v23);
}

- (void)setStrokeSpillForRightGridColumn:(unsigned int)column leftGridColumn:(unsigned int)gridColumn inRow:(unsigned int)row
{
  v6 = *&gridColumn;
  v7 = *&column;
  objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, a2, *&column, *&row, row + 1);
  v33 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], v9, v10, v11, v12);
  objc_msgSend_addIndex_(self->_spillStrokeColumns, v13, v7, v14, v15);
  if (v6 != v7)
  {
    objc_msgSend_addIndex_(self->_spillStrokeColumns, v16, v6, v17, v18);
  }

  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v20 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v19, v6, 1, 1);
  v22 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v21, v7, 0, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  objc_msgSend_insertSpillStroke_atRange_(v20, v23, v33, row, 1);
  objc_msgSend_unlock(v20, v24, v25, v26, v27);
  objc_msgSend_insertSpillStroke_atRange_(v22, v28, v33, row, 1);
  objc_msgSend_unlock(v22, v29, v30, v31, v32);
}

- (BOOL)hasStrokeSpillForLeftGridColumn:(unsigned int)column inRow:(unsigned int)row
{
  v5 = *&column;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v8 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v7, v5, 1, 0);
  v11 = v8;
  if (v8)
  {
    hasSpillStrokeInRange = objc_msgSend_hasSpillStrokeInRange_(v8, v9, row, 1, v10);
    objc_msgSend_unlock(v11, v13, v14, v15, v16);
  }

  else
  {
    hasSpillStrokeInRange = 0;
  }

  pthread_rwlock_unlock(&self->_strokesRWLock);

  return hasSpillStrokeInRange;
}

- (void)setClearedStrokeForGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow
{
  v7 = *&column;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v30 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v9, v7, 1, 1);
  v11 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v10, v7, 0, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v14 = row - endRow;
  endRowCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endRow >= row)
  {
    v14 = 0;
  }

  else
  {
    endRowCopy = endRow;
  }

  v16 = endRow - row;
  v17 = row >= endRow;
  if (row < endRow)
  {
    rowCopy = row;
  }

  else
  {
    rowCopy = endRowCopy;
  }

  if (v17)
  {
    v19 = v14;
    objc_msgSend_insertClearedStrokeAtRange_(v30, v12, rowCopy, v14, v13);
  }

  else
  {
    v19 = v16;
    objc_msgSend_insertClearedStrokeAtRange_(v30, v12, rowCopy, v16, v13);
  }

  objc_msgSend_unlock(v30, v20, v21, v22, v23);
  objc_msgSend_insertClearedStrokeAtRange_(v11, v24, rowCopy, v19, v25);
  objc_msgSend_unlock(v11, v26, v27, v28, v29);
}

- (void)setClearedStrokeForGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn
{
  v7 = *&row;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v30 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v9, v7, 1, 1);
  v11 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v10, v7, 0, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v14 = column - endColumn;
  endColumnCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endColumn >= column)
  {
    v14 = 0;
  }

  else
  {
    endColumnCopy = endColumn;
  }

  v16 = endColumn - column;
  v17 = column >= endColumn;
  if (column < endColumn)
  {
    columnCopy = column;
  }

  else
  {
    columnCopy = endColumnCopy;
  }

  if (v17)
  {
    v19 = v14;
    objc_msgSend_insertClearedStrokeAtRange_(v30, v12, columnCopy, v14, v13);
  }

  else
  {
    v19 = v16;
    objc_msgSend_insertClearedStrokeAtRange_(v30, v12, columnCopy, v16, v13);
  }

  objc_msgSend_unlock(v30, v20, v21, v22, v23);
  objc_msgSend_insertClearedStrokeAtRange_(v11, v24, columnCopy, v19, v25);
  objc_msgSend_unlock(v11, v26, v27, v28, v29);
}

- (BOOL)adjustGridColumnForVisibility:(unsigned int *)visibility isLeft:(BOOL)left
{
  leftCopy = left;
  v8 = *visibility;
  v9 = 80;
  if (left)
  {
    v9 = 56;
  }

  v10 = (&self->super.isa + v9);
  if (left)
  {
    if (v8 < (v10[1] - *v10) >> 3 && objc_msgSend_hasHiddenColumnAtIndex_(self, a2, *visibility, left, v4))
    {
      LODWORD(v8) = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self, v11, v8, v12, v13);
    }
  }

  else if (v8 && objc_msgSend_hasHiddenColumnAtIndex_(self, a2, (v8 - 1), left, v4))
  {
    LODWORD(v8) = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v14, (v8 - 1), v15, v16) + 1;
  }

  result = 0;
  v18 = !leftCopy;
  if (v8)
  {
    v18 = 0;
  }

  if (!v18)
  {
    v19 = (v10[1] - *v10) >> 3;
    if (v19 > v8)
    {
      if (leftCopy && v19 - 1 == v8)
      {
        return 0;
      }

      else
      {
        *visibility = v8;
        return 1;
      }
    }
  }

  return result;
}

- (id)p_strokesForGridColumn:(unsigned int)column isLeft:(BOOL)left takeStrokeWriteLock:(BOOL)lock
{
  lockCopy = lock;
  columnCopy = column;
  if (left)
  {
    v7 = 56;
  }

  else
  {
    v7 = 80;
  }

  if (objc_msgSend_adjustGridColumnForVisibility_isLeft_(self, a2, &columnCopy, left, lock))
  {
    v12 = (*(&self->super.isa + v7))[columnCopy];
    if (!lockCopy)
    {
LABEL_6:
      objc_msgSend_lockForRead(v12, v8, v9, v10, v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if (!lockCopy)
    {
      goto LABEL_6;
    }
  }

  if (objc_msgSend_isDefaultsOnly(v12, v8, v9, v10, v11))
  {
    v17 = objc_msgSend_replacementWithDefaults(v12, v13, v14, v15, v16);

    objc_storeStrong(*(&self->super.isa + v7) + columnCopy, v17);
    v12 = v17;
  }

  objc_msgSend_lockForWrite(v12, v13, v14, v15, v16);
LABEL_11:

  return v12;
}

- (id)mergedStrokesForGridColumn:(unsigned int)column
{
  v3 = *&column;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v6 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v5, v3, 1, 0);
  v8 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v7, v3, 0, 0);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v11 = objc_msgSend_mergeLeftStrokes_withRightStrokes_(TSTStrokeLayerMergedStack, v9, v6, v8, v10);
  objc_msgSend_unlock(v6, v12, v13, v14, v15);
  objc_msgSend_unlock(v8, v16, v17, v18, v19);

  return v11;
}

- (double)strokeWidthOfGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow
{
  v5 = row - endRow;
  endRowCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endRow >= row)
  {
    v5 = 0;
  }

  else
  {
    endRowCopy = endRow;
  }

  v7 = endRow - row;
  v8 = row >= endRow;
  if (row < endRow)
  {
    *&row = row;
  }

  else
  {
    *&row = endRowCopy;
  }

  if (v8)
  {
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, a2, *&column, *&row, v5);
  }

  else
  {
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, a2, *&column, *&row, v7);
  }

  return result;
}

- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridRow:(unsigned int)row isTop:(BOOL)top beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn
{
  topCopy = top;
  v11 = *&row;
  v12 = *&order;
  strokeCopy = stroke;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v15 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v14, v11, topCopy, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v17 = column - endColumn;
  endColumnCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endColumn >= column)
  {
    v17 = 0;
  }

  else
  {
    endColumnCopy = endColumn;
  }

  if (column < endColumn)
  {
    columnCopy = column;
  }

  else
  {
    columnCopy = endColumnCopy;
  }

  if (column < endColumn)
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, columnCopy, endColumn - column);
  }

  else
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, columnCopy, v17);
  }

  objc_msgSend_unlock(v15, v20, v21, v22, v23);
}

- (BOOL)adjustGridRowForVisibility:(unsigned int *)visibility isTop:(BOOL)top
{
  topCopy = top;
  v8 = *visibility;
  v9 = 32;
  if (top)
  {
    v9 = 8;
  }

  v10 = (&self->super.isa + v9);
  if (top)
  {
    if (v8 < (v10[1] - *v10) >> 3 && objc_msgSend_hasHiddenRowAtIndex_(self, a2, *visibility, top, v4))
    {
      LODWORD(v8) = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v11, v8, v12, v13);
    }
  }

  else if (v8 && objc_msgSend_hasHiddenRowAtIndex_(self, a2, (v8 - 1), top, v4))
  {
    LODWORD(v8) = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, v14, (v8 - 1), v15, v16) + 1;
  }

  result = 0;
  v18 = !topCopy;
  if (v8)
  {
    v18 = 0;
  }

  if (!v18)
  {
    v19 = (v10[1] - *v10) >> 3;
    if (v19 > v8)
    {
      if (topCopy && v19 - 1 == v8)
      {
        return 0;
      }

      else
      {
        *visibility = v8;
        return 1;
      }
    }
  }

  return result;
}

- (id)p_strokesForGridRow:(unsigned int)row isTop:(BOOL)top takeStrokeWriteLock:(BOOL)lock
{
  lockCopy = lock;
  rowCopy = row;
  if (top)
  {
    v7 = 8;
  }

  else
  {
    v7 = 32;
  }

  if (objc_msgSend_adjustGridRowForVisibility_isTop_(self, a2, &rowCopy, top, lock))
  {
    v12 = (*(&self->super.isa + v7))[rowCopy];
    if (!lockCopy)
    {
LABEL_6:
      objc_msgSend_lockForRead(v12, v8, v9, v10, v11);
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if (!lockCopy)
    {
      goto LABEL_6;
    }
  }

  if (objc_msgSend_isDefaultsOnly(v12, v8, v9, v10, v11))
  {
    v17 = objc_msgSend_replacementWithDefaults(v12, v13, v14, v15, v16);

    objc_storeStrong(*(&self->super.isa + v7) + rowCopy, v17);
    v12 = v17;
  }

  objc_msgSend_lockForWrite(v12, v13, v14, v15, v16);
LABEL_11:

  return v12;
}

- (id)p_strokesForValidationOfGridRow:(unsigned int)row isTop:(BOOL)top
{
  topCopy = top;
  rowCopy = row;
  if (objc_msgSend_adjustGridRowForVisibility_isTop_(self, a2, &rowCopy, top, v4))
  {
    v11 = 32;
    if (topCopy)
    {
      v11 = 8;
    }

    v12 = (*(&self->super.isa + v11))[rowCopy];
    objc_msgSend_lockForRead(v12, v7, v8, v9, v10);
  }

  else
  {
    v12 = 0;
    objc_msgSend_lockForRead(0, v7, v8, v9, v10);
  }

  return v12;
}

- (id)mergedStrokesForGridRow:(unsigned int)row
{
  v3 = *&row;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v6 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v5, v3, 1, 0);
  v8 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v7, v3, 0, 0);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v11 = objc_msgSend_mergeTopStrokes_withBottomStrokes_(TSTStrokeLayerMergedStack, v9, v6, v8, v10);
  objc_msgSend_unlock(v6, v12, v13, v14, v15);
  objc_msgSend_unlock(v8, v16, v17, v18, v19);

  return v11;
}

- (void)p_validateStrokeWidthCachesForGridRow:(unsigned int)row
{
  v4 = *&row;
  rowCopy = row;
  rowCopy2 = row;
  isTop = objc_msgSend_adjustGridRowForVisibility_isTop_(self, a2, &rowCopy2, 1, v3);
  v9 = objc_msgSend_adjustGridRowForVisibility_isTop_(self, v7, &rowCopy, 0, v8);
  if (isTop)
  {
    v11 = self->_topRowStrokes.__begin_[rowCopy2];
    if (!v9)
    {
LABEL_3:
      objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_rowToStrokeHeightCache, v10, v4, v11, 0);
      return;
    }
  }

  else
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_rowToStrokeHeightCache, v10, v4, v11, self->_bottomRowStrokes.__begin_[rowCopy]);
}

- (void)p_validateStrokeWidthCachesForGridColumn:(unsigned int)column
{
  v4 = *&column;
  columnCopy = column;
  columnCopy2 = column;
  isLeft = objc_msgSend_adjustGridColumnForVisibility_isLeft_(self, a2, &columnCopy2, 1, v3);
  v9 = objc_msgSend_adjustGridColumnForVisibility_isLeft_(self, v7, &columnCopy, 0, v8);
  if (isLeft)
  {
    v11 = self->_leftColumnStrokes.__begin_[columnCopy2];
    if (!v9)
    {
LABEL_3:
      objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_columnToStrokeWidthCache, v10, v4, v11, 0);
      return;
    }
  }

  else
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_columnToStrokeWidthCache, v10, v4, v11, self->_rightColumnStrokes.__begin_[columnCopy]);
}

- (double)strokeHeightOfGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn
{
  v5 = column - endColumn;
  endColumnCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endColumn >= column)
  {
    v5 = 0;
  }

  else
  {
    endColumnCopy = endColumn;
  }

  v7 = endColumn - column;
  v8 = column >= endColumn;
  if (column < endColumn)
  {
    *&column = column;
  }

  else
  {
    *&column = endColumnCopy;
  }

  if (v8)
  {
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, a2, *&row, *&column, v5);
  }

  else
  {
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, a2, *&row, *&column, v7);
  }

  return result;
}

- (void)setDynamicCellBorder:(id)border forCellID:(TSUCellCoord)d
{
  borderCopy = border;
  v10 = objc_msgSend_topStroke(borderCopy, v6, v7, v8, v9);

  if (v10)
  {
    v15 = objc_msgSend_topStroke(borderCopy, v11, v12, v13, v14);
    v20 = objc_msgSend_topStrokeOrder(borderCopy, v16, v17, v18, v19);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridRow_isTop_beginColumn_endColumn_(self, v21, v15, v20, *&d, 1, d.column, d.column + 1);
  }

  v22 = objc_msgSend_bottomStroke(borderCopy, v11, v12, v13, v14);

  if (v22)
  {
    v27 = objc_msgSend_bottomStroke(borderCopy, v23, v24, v25, v26);
    v32 = objc_msgSend_bottomStrokeOrder(borderCopy, v28, v29, v30, v31);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridRow_isTop_beginColumn_endColumn_(self, v33, v27, v32, d.row + 1, 0, d.column, d.column + 1);
  }

  v34 = objc_msgSend_leftStroke(borderCopy, v23, v24, v25, v26);

  if (v34)
  {
    v39 = objc_msgSend_leftStroke(borderCopy, v35, v36, v37, v38);
    v44 = objc_msgSend_leftStrokeOrder(borderCopy, v40, v41, v42, v43);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridColumn_isLeft_beginRow_endRow_(self, v45, v39, v44, d.column, 1, d, d.row + 1);
  }

  v46 = objc_msgSend_rightStroke(borderCopy, v35, v36, v37, v38);

  if (v46)
  {
    v51 = objc_msgSend_rightStroke(borderCopy, v47, v48, v49, v50);
    v56 = objc_msgSend_rightStrokeOrder(borderCopy, v52, v53, v54, v55);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridColumn_isLeft_beginRow_endRow_(self, v57, v51, v56, d.column + 1, 0, d, d.row + 1);
  }
}

- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right
{
  topCopy = top;
  column = d.column;
  if (top)
  {
    v71 = objc_msgSend_mergedStrokesForGridRow_(self, a2, *&d, top, left);
    objc_msgSend_invalidateSpillStrokes(v71, v14, v15, v16, v17);
    v21 = objc_msgSend_lookupStrokeAtIndex_(v71, v18, column, v19, v20);
    v26 = v21;
    if (v21)
    {
      v27 = v21;
      *topCopy = v26;
    }

    objc_msgSend_unlock(v71, v22, v23, v24, v25);

    topCopy = v71;
  }

  if (bottom)
  {
    v72 = objc_msgSend_mergedStrokesForGridRow_(self, a2, d.row + 1, top, left);

    objc_msgSend_invalidateSpillStrokes(v72, v28, v29, v30, v31);
    v35 = objc_msgSend_lookupStrokeAtIndex_(v72, v32, column, v33, v34);
    v40 = v35;
    if (v35)
    {
      v41 = v35;
      *bottom = v40;
    }

    objc_msgSend_unlock(v72, v36, v37, v38, v39);

    topCopy = v72;
  }

  if (left)
  {
    v73 = objc_msgSend_mergedStrokesForGridColumn_(self, a2, d.column, top, left);

    objc_msgSend_invalidateSpillStrokes(v73, v42, v43, v44, v45);
    v49 = objc_msgSend_lookupStrokeAtIndex_(v73, v46, d.row, v47, v48);
    v54 = v49;
    if (v49)
    {
      v55 = v49;
      *left = v54;
    }

    objc_msgSend_unlock(v73, v50, v51, v52, v53);

    topCopy = v73;
  }

  if (right)
  {
    v74 = objc_msgSend_mergedStrokesForGridColumn_(self, a2, d.column + 1, top, left);

    objc_msgSend_invalidateSpillStrokes(v74, v56, v57, v58, v59);
    v63 = objc_msgSend_lookupStrokeAtIndex_(v74, v60, d.row, v61, v62);
    v68 = v63;
    if (v63)
    {
      v69 = v63;
      *right = v68;
    }

    objc_msgSend_unlock(v74, v64, v65, v66, v67);

    v70 = v74;
  }

  else
  {
    v70 = topCopy;
  }
}

- (void)clearDynamicStrokesForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v7 = objc_msgSend_cellRange(self, a2, *&range.origin, *&range.size, v3);
  if ((*&origin & 0xFFFF00000000) != 0x7FFF00000000 && origin.row == 0x7FFFFFFF)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  v12 = v9 + v7;
  if (v7 == 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (origin.row == 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = size.numberOfRows + origin.row;
  }

  if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = origin.column;
  }

  if (v13 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  v17 = origin.column;
  if (origin.column != 0x7FFF)
  {
    v17 = origin.column + LOWORD(size.numberOfColumns);
  }

  if (WORD2(v7) == 0x7FFF)
  {
    v18 = 0x7FFF;
  }

  else
  {
    v18 = WORD2(v7) + v8;
  }

  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (row >= v16)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v16 < row)
    {
      v21 = v16;
    }

    v72 = v21;
    if (v16 >= row)
    {
      v20 = 0;
    }

    else
    {
      v20 = row - v16;
    }
  }

  else
  {
    v20 = v16 - row;
    v72 = row;
  }

  v22 = column;
  v71 = column;
  if (v19 <= column)
  {
    if (v19 >= column)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v19;
    }

    if (v19 >= column)
    {
      v23 = 0;
    }

    else
    {
      v23 = column - v19;
    }
  }

  else
  {
    v23 = v19 - column;
    v24 = column;
  }

  pthread_rwlock_wrlock(&self->_strokesRWLock);
  if (row <= v16)
  {
    v25 = row;
    do
    {
      if (v25 < v16)
      {
        v26 = self->_topRowStrokes.__begin_[v25];
        objc_msgSend_lockForWrite(v26, v27, v28, v29, v30);
        objc_msgSend_invalidateDynamicStrokesInRange_(v26, v31, v24, v23, v32);
        objc_msgSend_unlock(v26, v33, v34, v35, v36);
      }

      if (v25 > row)
      {
        v37 = self->_bottomRowStrokes.__begin_[v25];
        objc_msgSend_lockForWrite(v37, v38, v39, v40, v41);
        objc_msgSend_invalidateDynamicStrokesInRange_(v37, v42, v24, v23, v43);
        objc_msgSend_unlock(v37, v44, v45, v46, v47);
      }

      ++v25;
    }

    while (v25 <= v16);
  }

  if (v19 >= v71)
  {
    v48 = v22;
    do
    {
      if (v48 < v19)
      {
        v49 = self->_leftColumnStrokes.__begin_[v48];
        objc_msgSend_lockForWrite(v49, v50, v51, v52, v53);
        objc_msgSend_invalidateDynamicStrokesInRange_(v49, v54, v72, v20, v55);
        objc_msgSend_unlock(v49, v56, v57, v58, v59);
      }

      if (v48 > v22)
      {
        v60 = self->_rightColumnStrokes.__begin_[v48];
        objc_msgSend_lockForWrite(v60, v61, v62, v63, v64);
        objc_msgSend_invalidateDynamicStrokesInRange_(v60, v65, v72, v20, v66);
        objc_msgSend_unlock(v60, v67, v68, v69, v70);
      }

      ++v48;
    }

    while (v19 + 1 != v48);
  }

  pthread_rwlock_unlock(&self->_strokesRWLock);
}

- (void)enumerateMergedStrokesForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&column;
  blockCopy = block;
  v13 = objc_msgSend_mergedStrokesForGridColumn_(self, v10, v8, v11, v12);
  objc_msgSend_enumerateStrokesFrom_to_usingBlock_(v13, v14, v7, v6, blockCopy);
  objc_msgSend_unlock(v13, v15, v16, v17, v18);
}

- (void)enumerateMergedStrokesForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&row;
  blockCopy = block;
  v13 = objc_msgSend_mergedStrokesForGridRow_(self, v10, v8, v11, v12);
  objc_msgSend_enumerateStrokesFrom_to_usingBlock_(v13, v14, v7, v6, blockCopy);
  objc_msgSend_unlock(v13, v15, v16, v17, v18);
}

- (void)enumerateMergedStrokesAndCapsForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&column;
  blockCopy = block;
  v13 = objc_msgSend_mergedStrokesForGridColumn_(self, v10, v8, v11, v12);
  objc_msgSend_enumerateStrokesAndCapsFrom_to_usingBlock_(v13, v14, v7, v6, blockCopy);
  objc_msgSend_unlock(v13, v15, v16, v17, v18);
}

- (void)enumerateMergedStrokesAndCapsForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&row;
  blockCopy = block;
  v13 = objc_msgSend_mergedStrokesForGridRow_(self, v10, v8, v11, v12);
  objc_msgSend_enumerateStrokesAndCapsFrom_to_usingBlock_(v13, v14, v7, v6, blockCopy);
  objc_msgSend_unlock(v13, v15, v16, v17, v18);
}

- (void)p_invalidateClearedStrokesForCellRegion:(id)region
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213A7FD8;
  v5[3] = &unk_278461548;
  v5[4] = self;
  objc_msgSend_enumerateCellRangesUsingBlock_(region, a2, v5, v3, v4);
}

- (void)p_clearStrokesForMergesInCellRegion:(id)region
{
  regionCopy = region;
  v9 = objc_msgSend_cellRange(self, v5, v6, v7, v8);
  v11 = v10;
  v14 = objc_msgSend_mergesIntersectingCellRegion_(self, v10, regionCopy, v12, v13);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2213A82DC;
  v18[3] = &unk_278463DD0;
  v18[5] = v9;
  v18[6] = v11;
  v18[4] = self;
  objc_msgSend_enumerateRangesUsingBlock_(v14, v15, v18, v16, v17);
}

- (CGSize)contentSizeForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap
{
  swapCopy = swap;
  size = range.size;
  origin = range.origin;
  v8 = 0.0;
  v9 = 0.0;
  if (range.size.numberOfColumns)
  {
    objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, a2, *&range.origin, *&range.size, swap);
    v9 = v10;
  }

  if (HIDWORD(size))
  {
    objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, a2, origin, size, swapCopy, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    v8 = v11;
  }

  v12 = v9;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)p_contentWidthForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap validationBundle:(id)bundle
{
  swapCopy = swap;
  size = range.size;
  origin = range.origin;
  bundleCopy = bundle;
  v12 = bundleCopy;
  v41 = (*&origin & 0xFFFF00000000) == 0x7FFF00000000 && origin.row != 0x7FFFFFFF;
  if (v41)
  {
    v13 = 0;
  }

  else
  {
    v13 = *&origin.column;
  }

  column = origin.column;
  v14 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v15 = v14;
  v37 = __PAIR64__(v15, size.numberOfColumns + *&origin.column + 0xFFFF);
  if (v14)
  {
    v16 = 0x7FFF;
  }

  else
  {
    v16 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  v17 = 0.0;
  if (bundleCopy)
  {
    if (v13 <= v16)
    {
      v18 = MEMORY[0x277D85DD0];
      do
      {
        v42[0] = v18;
        v42[1] = 3221225472;
        v42[2] = sub_2213A86E4;
        v42[3] = &unk_278463DF8;
        v42[4] = self;
        v43 = v13;
        v44 = swapCopy;
        objc_msgSend_widthOfColumn_handleCacheMissUsingBlock_(v12, v10, v13, v42, v11, v37);
        v17 = v17 + v19;
        ++v13;
      }

      while (v13 <= v16);
    }
  }

  else
  {
    for (; v13 <= v16; ++v13)
    {
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(self, v10, v13, swapCopy, 1, 0, v37);
      v17 = v17 + v20;
    }
  }

  v21 = origin.row == 0x7FFFFFFF;
  if (v21 && (*&origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  if (!HIDWORD(*&size))
  {
    v21 = 1;
  }

  if (v21)
  {
    v23 = 0x80000000;
  }

  else
  {
    v23 = size.numberOfRows + origin.row;
  }

  if (v41)
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v10, 0, row, v23, v37);
  }

  else
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v10, column, row, v23, v37);
  }

  v29 = v28;
  v30 = objc_msgSend_numberOfColumns(self, v24, v25, v26, v27);
  if (v39)
  {
    v32 = 0x8000;
  }

  else
  {
    v32 = v38 + 1;
  }

  if (v32 >= v30)
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v31, v30, row, v23);
  }

  else
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v31, v32, row, v23);
  }

  v34 = v17 - v29 * 0.5 - v33 * 0.5;
  if (v34 >= 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  return v35;
}

- (double)contentHeightForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap maximumPartitionSize:(CGSize)size
{
  numberOfColumns = range.size.numberOfColumns;
  origin = range.origin;
  v8 = range.origin.row == 0x7FFFFFFF;
  v9 = *&range.origin & 0xFFFF00000000;
  if (v8 && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    row = 0;
  }

  else
  {
    row = range.origin.row;
  }

  if (!range.size.numberOfRows)
  {
    v8 = 1;
  }

  if (v8)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = range.origin.row + range.size.numberOfRows - 1;
  }

  v12 = 0.0;
  if (row <= v11)
  {
    swapCopy = swap;
    height = size.height;
    width = size.width;
    v16 = row;
    do
    {
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, a2, v16, swapCopy, 1, 1, 1, 0, width, height);
      v12 = v12 + size.width;
      v16 = (v16 + 1);
    }

    while (v16 <= v11);
  }

  v17 = HIDWORD(*&origin);
  v18 = origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000;
  column = origin.column;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = origin.column;
  }

  v21 = numberOfColumns + v17 - 1;
  if (numberOfColumns)
  {
    v22 = column == 0x7FFF;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0x8000;
  }

  else
  {
    v23 = v21 + 1;
  }

  if (v20 + 1 > v23)
  {
    v24 = (v20 + 1);
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, a2, row, v20, v24, size.width, size.height);
  }

  else
  {
    v24 = v23;
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, a2, row, v20, v23, size.width, size.height);
  }

  v30 = v29;
  v31 = objc_msgSend_numberOfRows(self, v25, v26, v27, v28);
  if (v11 + 1 < v31)
  {
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, v32, v11 + 1, v20, v24);
  }

  else
  {
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, v32, v31, v20, v24);
  }

  result = v12 - v30 * 0.5 - v33 * 0.5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)validateStrokesForChangeDescriptors:(id)descriptors
{
  v143 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v8 = objc_msgSend_cellRange(self, v4, v5, v6, v7);
  v132 = v9;
  v133 = v8;
  v137 = objc_msgSend_gatherer(TSTCellRegionGatherer, v9, v10, v11, v12);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = descriptorsCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v138, v142, 16);
  selfCopy = self;
  v19 = 0;
  v20 = 0;
  if (v18)
  {
    v21 = *v139;
    v135 = (v133 + HIDWORD(v132) - 1);
    v134 = (v133 + (v132 << 32) + 0xFFFF00000000) & 0xFFFF00000000;
    do
    {
      v22 = 0;
      do
      {
        if (*v139 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v138 + 1) + 8 * v22);
        v24 = objc_msgSend_changeDescriptor(v23, v14, v15, v16, v17);
        v29 = objc_msgSend_cellID(v23, v25, v26, v27, v28);
        v34 = objc_msgSend_strokeRegion(v23, v30, v31, v32, v33);
        v39 = v34;
        switch(v24)
        {
          case 0:
          case 2:
          case 6:
          case 7:
          case 16:
          case 30:
          case 33:
          case 36:
          case 37:
            v19 = 1;
            goto LABEL_13;
          case 3:
          case 4:
            v40 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v34, v35, v134 | v135, 0x100000001, v38);

            goto LABEL_11;
          case 5:
            v50 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v34, v35, v29, 0x100000001, v38);

            if ((objc_msgSend_firstCellID(v50, v51, v52, v53, v54) & 0xFFFF00000000) == 0)
            {
              goto LABEL_26;
            }

            CellID = objc_msgSend_firstCellID(v50, v55, v56, v57, v58);
            v63 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(selfCopy, v60, (WORD2(CellID) - 1), v61, v62);
            v68 = objc_msgSend_numberOfRows(selfCopy, v64, v65, v66, v67);
            v39 = objc_msgSend_regionByAddingRange_(v50, v69, v63 << 32, (v68 << 32) | 1, v70);

            v41 = objc_msgSend_cellCount(v39, v71, v72, v73, v74);
            break;
          case 8:
          case 9:
          case 10:
          case 17:
          case 31:
          case 49:
          case 50:
            v19 = 1;
            goto LABEL_12;
          case 13:
          case 14:
          case 47:
            v40 = objc_msgSend_regionFromRange_(TSTCellRegion, v35, v133, v132, v38);

LABEL_11:
            v19 = 1;
            v39 = v40;
LABEL_12:
            v20 = 1;
            goto LABEL_13;
          case 24:
          case 25:
            v45 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v34, v35, v134 | v135, 0x100000001, v38);

            v20 = 1;
            goto LABEL_19;
          case 26:
            v50 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v34, v35, v29, 0x100000001, v38);

            if (objc_msgSend_firstCellID(v50, v88, v89, v90, v91))
            {
              v92 = objc_msgSend_firstCellID(v50, v55, v56, v57, v58);
              v96 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(selfCopy, v93, (v92 - 1), v94, v95);
              v101 = objc_msgSend_numberOfColumns(selfCopy, v97, v98, v99, v100);
              v39 = objc_msgSend_regionByAddingRange_(v50, v102, v96, v101 | 0x100000000, v103);

              v41 = objc_msgSend_cellCount(v39, v104, v105, v106, v107);
            }

            else
            {
LABEL_26:
              v39 = v50;
              v41 = objc_msgSend_cellCount(v50, v55, v56, v57, v58);
            }

            break;
          case 28:
            if (objc_msgSend_isCategorized(selfCopy, v35, v36, v37, v38))
            {
              goto LABEL_13;
            }

            v75 = objc_msgSend_shuffleMapping(v23, v35, v36, v37, v38);
            v80 = objc_msgSend_sourceIndexes(v75, v76, v77, v78, v79);
            v84 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v81, v80, v82, v83);
            v45 = objc_msgSend_regionByAddingRegion_(v39, v85, v84, v86, v87);

LABEL_19:
            v39 = v45;
            v41 = objc_msgSend_cellCount(v45, v46, v47, v48, v49);
            break;
          default:
LABEL_13:
            v41 = objc_msgSend_cellCount(v39, v35, v36, v37, v38);
            break;
        }

        if (v41)
        {
          objc_msgSend_addRegion_(v137, v42, v39, v43, v44);
        }

        ++v22;
      }

      while (v18 != v22);
      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v138, v142, 16);
      v18 = v108;
    }

    while (v108);
  }

  v117 = objc_msgSend_gatheredCellRegion(v137, v109, v110, v111, v112);
  if (v20)
  {
    objc_msgSend_invalidateStrokeDefaults(selfCopy, v113, v114, v115, v116);
  }

  if (v19)
  {
    objc_msgSend_invalidateStrokeSpills(selfCopy, v113, v114, v115, v116);
  }

  objc_msgSend_validateStrokesArrays_(selfCopy, v113, obj, v115, v116);
  v120 = objc_msgSend_regionByIntersectingRange_(v117, v118, v133, v132, v119);

  objc_msgSend_p_validateStrokesForRegion_(selfCopy, v121, v120, v122, v123);
  objc_msgSend_verifyStrokes(selfCopy, v124, v125, v126, v127);
  objc_msgSend_p_validateStrokeWidthCachesForRegion_invalidateStrokeDefaults_(selfCopy, v128, v120, v20 & 1, v129);
}

- (void)p_validateStrokesForRegion:(id)region
{
  regionCopy = region;
  if (!objc_msgSend_cellCount(regionCopy, v5, v6, v7, v8))
  {
    goto LABEL_15;
  }

  v9 = MEMORY[0x277D86228];
  v14 = objc_msgSend_tableInfo(self, v10, v11, v12, v13);
  isDynamicallyChangingRowCount = objc_msgSend_isDynamicallyChangingRowCount(self, v15, v16, v17, v18, v14);
  v24 = isDynamicallyChangingRowCount;
  if (isDynamicallyChangingRowCount)
  {
    dynamicRowAdjustment = self->_dynamicRowAdjustment;
    if (dynamicRowAdjustment >= 1)
    {
      v26 = objc_msgSend_bodyRange(v14, v20, v21, v22, v23);
      v27 = dynamicRowAdjustment >> 31;
      if (v26 == 0x7FFFFFFF)
      {
        v28 = 0x7FFFFFFFLL;
      }

      else
      {
        v28 = (HIDWORD(v20) + v26);
      }

      v71 = v28;
      v72 = self->_dynamicRowAdjustment;
      v29 = 1;
      goto LABEL_10;
    }

    v27 = dynamicRowAdjustment >> 31;
    if (dynamicRowAdjustment < 0)
    {
      v68 = objc_msgSend_bodyRange(v14, v20, v21, v22, v23);
      v29 = 0;
      v69 = HIDWORD(v20) + v68;
      if (v68 == 0x7FFFFFFF)
      {
        v69 = 0x7FFFFFFF;
      }

      v70 = self->_dynamicRowAdjustment;
      v71 = (v70 + v69);
      v72 = -v70;
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  v29 = 0;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v72 = 0;
LABEL_10:
  v30 = objc_msgSend_hiddenColumnIndices(self, v20, v21, v22, v23);
  if (!objc_msgSend_count(v30, v31, v32, v33, v34))
  {

    v30 = 0;
  }

  v39 = objc_msgSend_hiddenRowIndices(self, v35, v36, v37, v38);
  if (!objc_msgSend_count(v39, v40, v41, v42, v43))
  {

    v39 = 0;
  }

  pthread_rwlock_wrlock(&self->_strokesRWLock);
  objc_msgSend_p_invalidateClearedStrokesForCellRegion_(self, v44, regionCopy, v45, v46);
  objc_msgSend_p_clearStrokesForMergesInCellRegion_(self, v47, regionCopy, v48, v49);
  v54 = objc_msgSend_boundingCellRange(regionCopy, v50, v51, v52, v53);
  v56 = HIDWORD(v55);
  v57 = v54;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_2213A9190;
  v77[3] = &unk_278463E20;
  v58 = v14;
  v78 = v58;
  v59 = v39;
  v85 = v29;
  v81 = v71;
  v82 = v72;
  v86 = v27;
  v79 = v59;
  selfCopy = self;
  v83 = v57;
  v84 = v56;
  objc_msgSend_enumerateColumnsUsingBlock_(regionCopy, v60, v77, v61, v62);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_2213A9650;
  v73[3] = &unk_278463E48;
  v76 = v24;
  v73[4] = self;
  v63 = v58;
  v74 = v63;
  v64 = v30;
  v75 = v64;
  objc_msgSend_enumerateRowsUsingBlock_(regionCopy, v65, v73, v66, v67);
  pthread_rwlock_unlock(&self->_strokesRWLock);

LABEL_15:
}

- (void)p_validateStrokeWidthCachesForRegion:(id)region invalidateStrokeDefaults:(BOOL)defaults
{
  regionCopy = region;
  v11 = regionCopy;
  if (defaults || objc_msgSend_cellCount(regionCopy, v7, v8, v9, v10))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213A9B34;
    v12[3] = &unk_27845FB10;
    v12[4] = self;
    v13 = v11;
    dispatch_apply(2uLL, 0, v12);
  }
}

- (BOOL)useBandedFill
{
  if (!objc_msgSend_isDynamicallySettingBandedFill(self, a2, v2, v3, v4))
  {
    return self->_useBandedFill;
  }

  return MEMORY[0x2821F9670](self, sel_dynamicBandedFill, v6, v7, v8);
}

- (BOOL)shouldRowUseBandedFill:(unsigned int)fill
{
  v5 = *&fill;
  if (!objc_msgSend_isDynamicallySettingBandedFill(self, a2, *&fill, v3, v4))
  {
    if (objc_msgSend_numberOfHeaderRows(self, v7, v8, v9, v10) <= v5)
    {
      if ((objc_msgSend_isCategorized(self, v11, v12, v13, v14) & 1) != 0 || objc_msgSend_isAPivotTable(self, v15, v16, v17, v18))
      {
        if ((objc_msgSend_isSummaryRow_(self, v15, v5, v17, v18) & 1) == 0)
        {
          v23 = objc_msgSend_indexesForLeadingRows(self, v19, v20, v21, v22);
          v27 = objc_msgSend_indexLessThanOrEqualToIndex_(v23, v24, v5, v25, v26);
          started = objc_msgSend_numberOfVisibleRowsFromStartRowIndex_toEndRowIndex_(self->_hiddenRowsColumnsCache, v28, v27, v5, v29);

          if ((started & 1) == 0)
          {
            return 1;
          }
        }
      }

      else if ((objc_msgSend_numberOfVisibleRowsFromHeader_(self->_hiddenRowsColumnsCache, v15, v5, v17, v18) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_dynamicBandedFillSetting, v8, v9, v10);
}

- (void)validateBandedFill
{
  if (!self->_bandedFillIsValid)
  {
    self->_bandedFillIsValid = 1;
    v16 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    self->_useBandedFill = objc_msgSend_useBandedFill(v16, v6, v7, v8, v9);
    v14 = objc_msgSend_bandedFillObject(v16, v10, v11, v12, v13);
    bandedFillObject = self->_bandedFillObject;
    self->_bandedFillObject = v14;
  }
}

+ (int)tableRowsBehaviorForTable:(id)table andEnvironment:(int)environment
{
  tableCopy = table;
  v10 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v6, v7, v8, v9);
  v15 = v10;
  if (environment == 1)
  {
    v16 = 2;
  }

  else if (objc_msgSend_supportsAutoResizedTables(v10, v11, v12, v13, v14))
  {
    v21 = objc_msgSend_tableStyle(tableCopy, v17, v18, v19, v20);
    v25 = objc_msgSend_intValueForProperty_(v21, v22, 768, v23, v24);

    if (v25)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 3;
  }

  return v16;
}

- (void)validateDefaultFontHeights
{
  if (!self->_tableDefaultFontHeightsAreValid)
  {
    v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = sub_2213AA288;
    v12 = &unk_27845DE60;
    v7 = v6;
    v13 = v7;
    selfCopy = self;
    v15 = 0;
    v8 = 1;
    do
    {
      (v11)(v10, v8, &v15);
      if (v15)
      {
        break;
      }
    }

    while (v8++ != 17);
    self->_tableDefaultFontHeightsAreValid = 1;
  }
}

- (BOOL)cell:(id *)cell forCellID:(TSUCellCoord)d
{
  dynamicContentDelegate = self->_dynamicContentDelegate;
  if (!dynamicContentDelegate || objc_msgSend_dynamicContentMustDrawOnMainThread(dynamicContentDelegate, a2, cell, *&d, v4) && !objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v9, v10, v11, v12))
  {
    return 0;
  }

  if (objc_msgSend_cell_forCellID_(self->_dynamicContentDelegate, v9, cell, *&d, v12))
  {
    return 1;
  }

  v18 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
  v23 = objc_msgSend_newCell(v18, v19, v20, v21, v22);
  if (objc_msgSend_getCell_atCellID_(v18, v24, v23, *&d, v25) || !objc_msgSend_valueType(v23, v26, v27, v28, v29))
  {
    v17 = 0;
  }

  else
  {
    v30 = v23;
    *cell = v23;
    v17 = 1;
  }

  return v17;
}

- (unsigned)modelRowForLayoutRow:(unsigned int)row
{
  rowCopy = row;
  if (objc_msgSend_isDynamicallyChangingRowCount(self, a2, *&row, v3, v4))
  {
    v11 = objc_msgSend_numberOfRows(self, v7, v8, v9, v10);
    v16 = v11 - objc_msgSend_numberOfFooterRows(self, v12, v13, v14, v15);
    dynamicRowAdjustment = self->_dynamicRowAdjustment;
    if (v16 - dynamicRowAdjustment <= rowCopy)
    {
      v18 = v16 - dynamicRowAdjustment - 1;
    }

    else
    {
      v18 = rowCopy;
    }

    v19 = rowCopy - dynamicRowAdjustment;
    if (v16 <= rowCopy)
    {
      return v19;
    }

    else
    {
      return v18;
    }
  }

  return rowCopy;
}

- (TSUCellCoord)modelCellIDForLayoutCellID:(TSUCellCoord)d
{
  column = d.column;
  v7 = objc_msgSend_modelRowForLayoutRow_(self, a2, *&d, v3, v4);
  return (v7 | (objc_msgSend_modelColumnForLayoutColumn_(self, v8, column, v9, v10) << 32));
}

- (id)modelCellRegionForLayoutCellRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v4, v5, v6, v7) & 1) == 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)layoutRowForModelRow:(unsigned int)row
{
  rowCopy = row;
  if (objc_msgSend_isDynamicallyChangingRowCount(self, a2, *&row, v3, v4))
  {
    v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
    v16 = objc_msgSend_footerRowRange(v11, v12, v13, v14, v15);
    v18 = v17;

    if (HIDWORD(v18))
    {
      if (v18)
      {
        v19 = v16 & 0xFFFF00000000;
        if (v16 == 0x7FFFFFFF && v19 != 0x7FFF00000000)
        {
          goto LABEL_6;
        }

        v20 = v16 != 0x7FFFFFFF || v19 == 0x7FFF00000000;
        v21 = !v20;
        if (v16 <= rowCopy || v21)
        {
          v22 = v16 + HIDWORD(v18) - 1;
          if (v16 == 0x7FFFFFFF)
          {
            v22 = 0x7FFFFFFF;
          }

          if (v22 >= rowCopy)
          {
LABEL_6:
            rowCopy += self->_dynamicRowAdjustment;
          }
        }
      }
    }
  }

  return rowCopy;
}

- (TSUCellCoord)layoutCellIDForModelCellID:(TSUCellCoord)d
{
  column = d.column;
  v7 = objc_msgSend_layoutRowForModelRow_(self, a2, *&d, v3, v4);
  return (v7 | (objc_msgSend_layoutColumnForModelColumn_(self, v8, column, v9, v10) << 32));
}

- (id)layoutCellRegionForModelCellRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v4, v5, v6, v7) & 1) == 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add
{
  if (add)
  {
    if (add != 1 || !self->_dynamicResizingColumns)
    {
      return 0;
    }

    origin = self->_dynamicResizingColumnRange.origin;
    if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return 0;
    }

    size = self->_dynamicResizingColumnRange.size;
    if (!HIDWORD(*&size) || !size.numberOfColumns)
    {
      return 0;
    }
  }

  else
  {
    if (!self->_dynamicResizingRows)
    {
      return 0;
    }

    v6 = self->_dynamicResizingRowRange.origin;
    if (v6.row == 0x7FFFFFFF || (*&v6 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return 0;
    }

    v8 = self->_dynamicResizingRowRange.size;
    if (!HIDWORD(*&v8) || v8.numberOfColumns == 0)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add rowColIndex:(unsigned int)index
{
  if (!add)
  {
    if (self->_dynamicResizingRows)
    {
      size = self->_dynamicResizingRowRange.size;
      if (HIDWORD(*&size) && size.numberOfColumns != 0)
      {
        origin = self->_dynamicResizingRowRange.origin;
        if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
        {
          return 1;
        }

        if (origin.column <= index)
        {
          v17 = origin.column == 0x7FFF || size.numberOfColumns == 0;
          v18 = v17 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
          if (v18 >= index)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  if (add != 1 || !self->_dynamicResizingColumns)
  {
    return 0;
  }

  v4 = self->_dynamicResizingColumnRange.size;
  numberOfColumns = v4.numberOfColumns;
  v6 = HIDWORD(*&v4);
  if (!v6 || numberOfColumns == 0)
  {
    return 0;
  }

  v8 = self->_dynamicResizingColumnRange.origin;
  v9 = *&v8 & 0xFFFF00000000;
  if (v8.row != 0x7FFFFFFF || v9 == 0x7FFF00000000)
  {
    v10 = v8.row != 0x7FFFFFFF || v9 == 0x7FFF00000000;
    v11 = !v10;
    if (v8.row > index && !v11)
    {
      return 0;
    }

    v12 = v8.row + v6 - 1;
    if (v8.row == 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    if (v12 < index)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)isDynamicallyResizingCellIDForColumnRowAdd:(TSUCellCoord)add
{
  if (!self->_dynamicResizingRows || self->_dynamicResizingRowAdjustment == 0.0)
  {
    goto LABEL_8;
  }

  size = self->_dynamicResizingRowRange.size;
  numberOfColumns = size.numberOfColumns;
  v5 = HIDWORD(*&size);
  if (!v5 || numberOfColumns == 0)
  {
    goto LABEL_8;
  }

  origin = self->_dynamicResizingRowRange.origin;
  v12 = *&origin & 0xFFFF00000000;
  if (origin.row == 0x7FFFFFFF && v12 != 0x7FFF00000000)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v16 = origin.row != 0x7FFFFFFF || v12 == 0x7FFF00000000;
  v17 = !v16;
  if (origin.row > add.row && !v17)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v18 = origin.row + v5 - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v7 = v18 >= add.row;
LABEL_9:
  if (self->_dynamicResizingColumns && self->_dynamicResizingColumnAdjustment != 0.0)
  {
    v8 = self->_dynamicResizingColumnRange.size;
    if (HIDWORD(*&v8) && v8.numberOfColumns != 0)
    {
      v10 = self->_dynamicResizingColumnRange.origin;
      if (v10.row == 0x7FFFFFFF || (*&v10 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        if (v10.column <= add.column)
        {
          if (v10.column == 0x7FFF || v8.numberOfColumns == 0)
          {
            v14 = 0x7FFF;
          }

          else
          {
            v14 = LOWORD(v8.numberOfColumns) + v10.column - 1;
          }

          v7 |= v14 >= add.column;
        }
      }

      else
      {
        v7 = 1;
      }
    }
  }

  return v7 & 1;
}

- (BOOL)isEntireCellRangeHidden:(TSUCellRect)hidden
{
  size = hidden.size;
  origin = hidden.origin;
  return !objc_msgSend_numberOfVisibleRowsInCellRange_(self->_hiddenRowsColumnsCache, a2, *&hidden.origin, *&hidden.size, v3) || objc_msgSend_numberOfVisibleColumnsInCellRange_(self->_hiddenRowsColumnsCache, v7, origin, size, v8) == 0;
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_anyHiddenRowsInCellRange_(self->_hiddenRowsColumnsCache, a2, *&range.origin, *&range.size, v3);
  }
}

- (BOOL)anyRowsUserHiddenInCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return (MEMORY[0x2821F9670])(self->_hiddenRowsColumnsCache, sel_anyRowsUserHiddenInCellRange_, *&range.origin, *&range.size);
  }
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_anyHiddenColumnsInCellRange_(self->_hiddenRowsColumnsCache, a2, *&range.origin, *&range.size, v3);
  }
}

- (NSIndexSet)visibleRowIndices
{
  v5 = objc_msgSend_hiddenRowsColumnsCache(self, a2, v2, v3, v4);
  v10 = objc_msgSend_visibleRowIndices(v5, v6, v7, v8, v9);

  return v10;
}

- (NSIndexSet)visibleColumnIndices
{
  v5 = objc_msgSend_hiddenRowsColumnsCache(self, a2, v2, v3, v4);
  v10 = objc_msgSend_visibleColumnIndices(v5, v6, v7, v8, v9);

  return v10;
}

- (NSIndexSet)hiddenRowIndices
{
  v6 = objc_msgSend_cellRange(self, a2, v2, v3, v4);
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v7, v6, v7 >> 32, v8);
  v14 = objc_msgSend_visibleRowIndices(self, v10, v11, v12, v13);
  objc_msgSend_removeIndexes_(v9, v15, v14, v16, v17);

  return v9;
}

- (NSIndexSet)hiddenColumnIndices
{
  v6 = objc_msgSend_cellRange(self, a2, v2, v3, v4);
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v7, WORD2(v6), v7, v8);
  v14 = objc_msgSend_visibleColumnIndices(self, v10, v11, v12, v13);
  objc_msgSend_removeIndexes_(v9, v15, v14, v16, v17);

  return v9;
}

- (TSUCellRect)expandCellRangeToVisibleNeighbors:(TSUCellRect)neighbors
{
  origin = neighbors.origin;
  if (neighbors.origin.row == 0x7FFFFFFF || (*&neighbors.origin & 0xFFFF00000000) == 0x7FFF00000000 || !neighbors.size.numberOfRows || !neighbors.size.numberOfColumns)
  {
    v39 = neighbors.origin;
    size = neighbors.size;
  }

  else
  {
    column = neighbors.origin.column;
    v7 = *&neighbors.origin & 0xFFFF000000000000;
    v8 = neighbors.origin.row + neighbors.size.numberOfRows - 1;
    v9 = ((*&neighbors.origin + 0xFFFF00000000) >> 32) + neighbors.size.numberOfColumns;
    if (neighbors.origin.row)
    {
      v10 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, a2, neighbors.origin.row - 1, *&neighbors.size, v3);
    }

    else
    {
      v10 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, a2, 0, *&neighbors.size, v3);
    }

    v14 = v10;
    if (origin.column)
    {
      v15 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v11, origin.column - 1, v12, v13);
    }

    else
    {
      v15 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v11, 0, v12, v13);
    }

    if (v14 == 0x7FFFFFFF)
    {
      row = origin.row;
    }

    else
    {
      row = v14;
    }

    if (v15 != 0x7FFF)
    {
      column = v15;
    }

    v21 = objc_msgSend_numberOfRows(self, v16, v17, v18, v19);
    v29 = objc_msgSend_numberOfColumns(self, v22, v23, v24, v25);
    if (v21 - 1 <= v8)
    {
      v30 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v26, v8, v27, v28);
    }

    else
    {
      v30 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v26, v8 + 1, v27, v28);
    }

    v34 = v30;
    if (v29 - 1 <= v9)
    {
      v35 = v9;
    }

    else
    {
      v35 = v9 + 1;
    }

    v36 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self, v31, v35, v32, v33);
    if (v34 == 0x7FFFFFFF)
    {
      v37 = v8;
    }

    else
    {
      v37 = v34;
    }

    if (v36 == 0x7FFF)
    {
      v38 = v9;
    }

    else
    {
      v38 = v36;
    }

    v39 = sub_221286760(v7 | (column << 32) | row, 0x100000001uLL, v37 | (v38 << 32));
  }

  result.size = size;
  result.origin = v39;
  return result;
}

- (unsigned)firstEmptyBodyRow
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v48 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_minPopulatedCellRange(v48, v6, v7, v8, v9);
  v12 = v11;
  v16 = objc_msgSend_bodyRowRange(v48, v11, v13, v14, v15);
  v18 = sub_221119E0C(v10, v12, v16, v17);
  v22 = v18;
  if (v19 >> 32)
  {
    v23 = v18 == 0x7FFFFFFF;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = 0x7FFFFFFFLL;
  }

  else
  {
    v24 = (v18 + HIDWORD(v19) - 1);
  }

  v25 = v10 & 0xFFFFFFFF00000000;
  v26 = v12 | 0x100000000;
  v27 = v24;
  while (1)
  {
    if ((objc_msgSend_hasHiddenRowAtIndex_(self, v19, v27, v20, v21) & 1) == 0)
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_2213AB6F0;
      v49[3] = &unk_27845DD70;
      v49[4] = &v50;
      objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v19, v25 | v27, v26, 0, 0x400000, v49);
      if (v51[3])
      {
        break;
      }
    }

    v27 = (v27 - 1);
    if (v27 > v24)
    {
      if ((v51[3] & 1) == 0)
      {
        if ((v22 & 0xFFFF00000000) != 0x7FFF00000000 && v22 == 0x7FFFFFFF)
        {
          v43 = 0;
        }

        else
        {
          v43 = v22;
        }

        v29 = v48;
        v40 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v19, v43, v20, v21);
        goto LABEL_26;
      }

      break;
    }
  }

  v29 = v48;
  if (v27 >= objc_msgSend_numberOfRows(self, v19, v28, v20, v21) - 1)
  {
    v40 = 0x7FFFFFFF;
  }

  else
  {
    v33 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v30, (v27 + 1), v31, v32);
    v38 = objc_msgSend_entireBodyRowsCellRange(self, v34, v35, v36, v37);
    v40 = 0x7FFFFFFF;
    if (HIDWORD(v39) && v39)
    {
      v41 = v38 & 0xFFFF00000000;
      if (v38 == 0x7FFFFFFF && v41 != 0x7FFF00000000)
      {
        goto LABEL_17;
      }

      v45 = v38 != 0x7FFFFFFF || v41 == 0x7FFF00000000;
      v46 = !v45;
      if (v33 >= v38 || v46)
      {
        v47 = v38 + HIDWORD(v39) - 1;
        if (v38 == 0x7FFFFFFF)
        {
          v47 = 0x7FFFFFFF;
        }

        if (v47 >= v33)
        {
LABEL_17:
          v40 = v33;
        }
      }
    }
  }

LABEL_26:

  _Block_object_dispose(&v50, 8);
  return v40;
}

- (BOOL)containsAnyContentInRange:(TSUCellRect)range
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213AB824;
  v5[3] = &unk_27845DD70;
  v5[4] = &v6;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, a2, *&range.origin, *&range.size, 0, 0x400000, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (TSTLayout)dynamicLayout
{
  v5 = objc_msgSend_dynamicLayoutParticipants(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectsPassingTest_(v5, v6, &unk_2834A6EF0, v7, v8);

  v14 = objc_msgSend_anyObject(v9, v10, v11, v12, v13);

  return v14;
}

- (BOOL)isDynamicallyHidingRowsCols
{
  origin = self->_dynamicHidingRowsCols.origin;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  size = self->_dynamicHidingRowsCols.size;
  if (HIDWORD(*&size))
  {
    v6 = size.numberOfColumns == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)isDynamicallyHidingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index
{
  origin = self->_dynamicHidingRowsCols.origin;
  size = self->_dynamicHidingRowsCols.size;
  v8 = origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0;
  if (v8 || self->_dynamicHidingRowsColsDirection != cols)
  {
    return 0;
  }

  if (cols == 1)
  {
    if (origin.column <= index)
    {
      LOWORD(origin.row) = LOWORD(size.numberOfColumns) + origin.column - 1;
      if (origin.column == 0x7FFF || size.numberOfColumns == 0)
      {
        LOWORD(origin.row) = 0x7FFF;
      }

      if (LOWORD(origin.row) >= index)
      {
        return 1;
      }
    }

    return 0;
  }

  if (cols || origin.row > index && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row == 0x7FFFFFFF ? 0x7FFFFFFF : origin.row + size.numberOfRows - 1;
  return v10 >= index;
}

- (BOOL)isDynamicallyHidingRowsColsCellID:(TSUCellCoord)d
{
  origin = self->_dynamicHidingRowsCols.origin;
  size = self->_dynamicHidingRowsCols.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyHidingContentOfCellID:(TSUCellCoord)d
{
  origin = self->_dynamicHidingContent.origin;
  size = self->_dynamicHidingContent.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyHidingTextOfCellID:(TSUCellCoord)d
{
  origin = self->_dynamicHidingText.origin;
  size = self->_dynamicHidingText.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyRemovingTextOfCellID:(TSUCellCoord)d
{
  origin = self->_dynamicRemovingText.origin;
  size = self->_dynamicRemovingText.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyRemovingText
{
  origin = self->_dynamicRemovingText.origin;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  size = self->_dynamicRemovingText.size;
  if (HIDWORD(*&size))
  {
    v6 = size.numberOfColumns == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)isDynamicallyRevealingRowsCols
{
  origin = self->_dynamicRevealingRowsCols.origin;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  size = self->_dynamicRevealingRowsCols.size;
  if (HIDWORD(*&size))
  {
    v6 = size.numberOfColumns == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)isDynamicallyRevealingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index
{
  origin = self->_dynamicRevealingRowsCols.origin;
  size = self->_dynamicRevealingRowsCols.size;
  v8 = origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0;
  if (v8 || self->_dynamicRevealingRowsColsDirection != cols)
  {
    return 0;
  }

  if (cols == 1)
  {
    if (origin.column <= index)
    {
      LOWORD(origin.row) = LOWORD(size.numberOfColumns) + origin.column - 1;
      if (origin.column == 0x7FFF || size.numberOfColumns == 0)
      {
        LOWORD(origin.row) = 0x7FFF;
      }

      if (LOWORD(origin.row) >= index)
      {
        return 1;
      }
    }

    return 0;
  }

  if (cols || origin.row > index && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row == 0x7FFFFFFF ? 0x7FFFFFFF : origin.row + size.numberOfRows - 1;
  return v10 >= index;
}

- (BOOL)isDynamicallyChangingRowOrColumnCount
{
  if (objc_msgSend_isDynamicallyChangingRowCount(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_isDynamicallyChangingColumnCount, v6, v7, v8);
}

- (BOOL)isDynamicallyChangingContent
{
  dynamicContentDelegate = self->_dynamicContentDelegate;
  if (dynamicContentDelegate)
  {
    if (!objc_msgSend_dynamicContentMustDrawOnMainThread(dynamicContentDelegate, a2, v2, v3, v4) || (LODWORD(dynamicContentDelegate) = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v6, v7, v8, v9), dynamicContentDelegate))
    {
      LOBYTE(dynamicContentDelegate) = 1;
    }
  }

  return dynamicContentDelegate;
}

- (BOOL)isDynamicallyChangingFontColorOfCellID:(TSUCellCoord)d
{
  if (!self->_dynamicFontColor)
  {
    return 0;
  }

  size = self->_dynamicFontColorCellRange.size;
  if (!HIDWORD(*&size) || size.numberOfColumns == 0)
  {
    return 0;
  }

  origin = self->_dynamicFontColorCellRange.origin;
  v6 = *&origin & 0xFFFF00000000;
  if (origin.row != 0x7FFFFFFFLL || v6 == 0x7FFF00000000)
  {
    v9 = origin.row == 0x7FFFFFFF && v6 != 0x7FFF00000000;
    if (origin.row > d.row && !v9)
    {
      return 0;
    }

    v10 = origin.row + size.numberOfRows - 1;
    if (origin.row == 0x7FFFFFFF)
    {
      v10 = 0x7FFFFFFF;
    }

    if (v10 < d.row)
    {
      return 0;
    }

    if (origin.row != 0x7FFFFFFFLL && v6 == 0x7FFF00000000)
    {
      return 1;
    }
  }

  if (origin.column > d.column)
  {
    return 0;
  }

  if (origin.column == 0x7FFF || size.numberOfColumns == 0)
  {
    v13 = 0x7FFF;
  }

  else
  {
    v13 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  return v13 >= d.column;
}

- (void)captureDynamicResizeInfo
{
  v3 = [TSTLayoutDynamicResizeInfoAccordion alloc];
  v7 = objc_msgSend_initWithLayoutEngine_(v3, v4, self, v5, v6);
  dynamicResizeInfo = self->_dynamicResizeInfo;
  self->_dynamicResizeInfo = v7;
}

- (void)validateDynamicResizeInfo
{
  dynamicResizeInfo = self->_dynamicResizeInfo;
  if (dynamicResizeInfo && (objc_msgSend_valid(dynamicResizeInfo, a2, v2, v3, v4) & 1) == 0)
  {
    v7 = self->_dynamicResizeInfo;
    self->_dynamicResizeInfo = 0;
  }
}

- (BOOL)isGrouped
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_parentInfo(v5, v6, v7, v8, v9);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addChangeDescriptorWithType:(int)type andCellRange:(TSUCellRect)range andStrokeRange:(TSUCellRect)strokeRange
{
  v9 = objc_msgSend_changeDescriptorWithType_cellRange_strokeRange_(TSTChangeDescriptor, a2, *&type, *&range.origin, *&range.size, *&strokeRange.origin, *&strokeRange.size);
  objc_msgSend_addChangeDescriptor_(self, v6, v9, v7, v8);
}

- (void)addChangeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v36 = descriptorCopy;
    v5 = self->_changeDescriptors;
    objc_sync_enter(v5);
    if ((objc_msgSend_processedByLayoutEngine(v36, v6, v7, v8, v9) & 1) == 0)
    {
      if (objc_msgSend_changeDescriptor(v36, v10, v11, v12, v13) == 37 || objc_msgSend_changeDescriptor(v36, v14, v15, v16, v17) == 33) && (objc_msgSend_changeDescriptors(self, v14, v15, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lastObject(v18, v19, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v23, v24, v36, v25, v26), v23, v18, (isEqual))
      {
        v28 = v36;
        v36 = 0;
      }

      else
      {
        objc_msgSend_setProcessedByLayoutEngine_(v36, v14, 1, v16, v17);
        v28 = objc_msgSend_changeDescriptors(self, v29, v30, v31, v32);
        objc_msgSend_addObject_(v28, v33, v36, v34, v35);
      }
    }

    objc_sync_exit(v5);
  }
}

- (void)validate
{
  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    if ((objc_msgSend_wasRemovedFromDocument(tableInfo, a2, v2, v3, v4) & 1) == 0)
    {
      v7 = MEMORY[0x277D86228];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_2213AC4C4;
      v11[3] = &unk_27845E3F8;
      v11[4] = self;
      objc_msgSend_modifySafelyUsingBlock_(self, v8, v11, v9, v10);
    }
  }
}

- (void)validateLayoutEngineForChangeDescriptors:(id)descriptors
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  descriptorsCopy = descriptors;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v5, &v25, v29, 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = objc_msgSend_changeDescriptor(v15, v6, v7, v8, v9, v25) == 35;
        if (objc_msgSend_changeDescriptor(v15, v17, v18, v19, v20) == 33 || objc_msgSend_changeDescriptor(v15, v6, v7, v8, v9) == 49)
        {
          v11 = 1;
        }

        v12 |= v16;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v6, &v25, v29, 16);
    }

    while (v10);

    if (v12)
    {
      objc_msgSend_invalidateTableNameHeight(self, v21, v22, v23, v24);
    }

    if (v11)
    {
      objc_msgSend_invalidateDefaultFontHeights(self, v21, v22, v23, v24);
    }
  }

  else
  {
  }
}

- (void)validateChangeDescriptorQueue
{
  objc_msgSend_numberOfRows(self, a2, v2, v3, v4);
  objc_msgSend_numberOfColumns(self, v8, v9, v10, v11);
  v12 = self->_changeDescriptors;
  objc_sync_enter(v12);
  if (objc_msgSend_count(self->_changeDescriptors, v13, v14, v15, v16))
  {
    v145 = objc_msgSend_mutableCopy(self->_changeDescriptors, v17, v18, v19, v20);
    objc_msgSend_removeAllObjects(self->_changeDescriptors, v21, v22, v23, v24);
  }

  else
  {
    v145 = 0;
  }

  objc_sync_exit(v12);

  objc_msgSend_validateRowVisibility_(self, v25, v145, v26, v27);
  if (objc_msgSend_count(v145, v28, v29, v30, v31) == 1 && objc_msgSend_isInDynamicLayoutMode(self, v32, v33, v34, v35))
  {
    v37 = objc_msgSend_tableInfo(self, v32, v36, v34, v35);
    if (objc_msgSend_tableSizeClass(v37, v38, v39, v40, v41) <= 1)
    {
    }

    else
    {
      v46 = objc_msgSend_firstObject(v145, v42, v43, v44, v45);
      v5 = objc_msgSend_changeDescriptor(v46, v47, v48, v49, v50);

      if (v5 == 6)
      {

LABEL_13:
        v72 = objc_msgSend_widthHeightCache(self, v32, v51, v34, v35);
        objc_msgSend_willModifyIfNeeded_(v72, v73, self->_tableInfo, v74, v75);
        v76 = v72;
        goto LABEL_23;
      }
    }
  }

  v51 = v145;
  if (!v145)
  {
    goto LABEL_13;
  }

  objc_msgSend_p_validateCellIDToWPColumnCacheForChangeDescriptors_(self, v32, v145, v34, v35);
  v60 = objc_msgSend_widthHeightCache(self, v52, v53, v54, v55);
  tableInfo = self->_tableInfo;
  emptyFilteredTable = self->_emptyFilteredTable;
  if (emptyFilteredTable)
  {
    v5 = objc_msgSend_tableInfo(self, v56, v57, v58, v59);
    v71 = objc_msgSend_numberOfRows(v5, v63, v64, v65, v66);
  }

  else
  {
    v71 = objc_msgSend_numberOfRows(self, v56, v57, v58, v59);
  }

  v77 = self->_emptyFilteredTable;
  if (v77)
  {
    v6 = objc_msgSend_tableInfo(self, v67, v68, v69, v70);
    v83 = objc_msgSend_numberOfColumns(v6, v78, v79, v80, v81);
  }

  else
  {
    v83 = objc_msgSend_numberOfColumns(self, v67, v68, v69, v70);
  }

  v84 = objc_msgSend_validateChangeDescriptors_tableInfo_numberOfRows_numberOfColumns_(v60, v82, v145, tableInfo, v71, v83);
  if (v77)
  {
  }

  if (emptyFilteredTable)
  {
  }

  v89 = objc_msgSend_hiddenRowsColumnsCache(self, v85, v86, v87, v88);
  objc_msgSend_validateChangeDescriptors_(v89, v90, v145, v91, v92);

  objc_msgSend_validateLayoutEngineForChangeDescriptors_(self, v93, v145, v94, v95);
  v100 = objc_msgSend_hiddenRowsColumnsCache(self, v96, v97, v98, v99);
  objc_msgSend_validate_(v100, v101, self, v102, v103);

  objc_msgSend_validateDefaultFontHeights(self, v104, v105, v106, v107);
  objc_msgSend_validateStrokesForChangeDescriptors_(self, v108, v145, v109, v110);
  v114 = objc_msgSend_validateFittingRegionForChangeDescriptors_(self, v111, v145, v112, v113);
  v119 = objc_msgSend_widthHeightCache(self, v115, v116, v117, v118);
  v121 = objc_msgSend_validateRowsNeedingFittingInfo_validationRegion_layoutEngine_(v119, v120, v84, v114, self);

  v126 = objc_msgSend_first(v121, v122, v123, v124, v125);

  v131 = objc_msgSend_second(v121, v127, v128, v129, v130);

  v134 = objc_msgSend_validateFittingInfoForValidationRegion_rowsNeedingFittingInfo_(self, v132, v131, v126, v133);
  objc_msgSend_waitForLayoutToComplete_(self, v135, v134, v136, v137);
  objc_msgSend_finalizeLayoutPassWithRowsNeedingFittingInfo_(self, v138, v126, v139, v140);
  objc_msgSend_removeAllObjects(self->_paraStyleToHeightCache, v141, v142, v143, v144);

  v76 = v145;
LABEL_23:
}

- (void)p_validateCellIDToWPColumnCacheForChangeDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3812000000;
  v54 = sub_2213ACDA8;
  v55 = nullsub_58;
  v56 = &unk_22188E88F;
  v57 = 0x7FFF7FFFFFFFLL;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2213ACDB8;
  v50[3] = &unk_278463E90;
  v50[4] = self;
  v50[5] = &v51;
  objc_msgSend_enumerateObjectsUsingBlock_(descriptorsCopy, v5, v50, v6, v7);
  v12 = v52[6];
  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v14 = objc_msgSend_cellIDToWPColumnCache(self, v8, v9, v10, v11);
    objc_msgSend_removeAllObjects(v14, v15, v16, v17, v18);
  }

  else
  {
    v49.origin = objc_msgSend_cellRange(self, v8, v9, v10, v11);
    v49.size = v19;
    v20 = TSUCellRect::columns(&v49);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", v22, v23);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 168, 0, "Invalid column range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
      objc_msgSend_regionFromRange_(TSTCellRegion, v35, 0x7FFF7FFFFFFFLL, 0, v36);
    }

    else if (v21)
    {
      objc_msgSend_regionFromRange_(TSTCellRegion, v21, *(v52 + 12) | (v20 << 32), v21 | 0x100000000, v23);
    }

    else
    {
      objc_msgSend_regionFromRange_(TSTCellRegion, 0, 0x7FFF7FFFFFFFLL, 0, v23);
    }
    v37 = ;
    v14 = objc_msgSend_expandCellRegionToCoverMergedCells_(self, v38, v37, v39, v40);

    v45 = objc_msgSend_cellIDToWPColumnCache(self, v41, v42, v43, v44);
    objc_msgSend_invalidateObjectsWithKeysInCellRegion_(v45, v46, v14, v47, v48);
  }

  _Block_object_dispose(&v51, 8);
}

- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info
{
  infoCopy = info;
  mergeRangesForLayoutPass = self->_mergeRangesForLayoutPass;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2213ACFD8;
  v12[3] = &unk_278463EB8;
  v12[4] = self;
  objc_msgSend_enumerateMergeRangesUsingBlock_(mergeRangesForLayoutPass, v6, v12, v7, v8);
  objc_msgSend_finalizeLayoutPassWithRowsNeedingFittingInfo_(self->_widthHeightCache, v9, infoCopy, v10, v11);
}

- (void)validateRowVisibility:(id)visibility
{
  v151 = *MEMORY[0x277D85DE8];
  visibilityCopy = visibility;
  v8 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_filterSet(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_numberOfRows(v8, v14, v15, v16, v17);
  v23 = objc_msgSend_numberOfColumns(v8, v19, v20, v21, v22);
  v28 = objc_msgSend_numberOfHiddenRows(v8, v24, v25, v26, v27);
  if (!v13 || ((v33 = v28, isEnabled = objc_msgSend_isEnabled(v13, v29, v30, v31, v32), v33 == v18) ? (v37 = isEnabled) : (v37 = 0), v37 != 1))
  {
    if (!self->_emptyFilteredTable)
    {
      goto LABEL_26;
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v88 = visibilityCopy;
    v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v146, v150, 16);
    if (v94)
    {
      v95 = *v147;
      while (2)
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v147 != v95)
          {
            objc_enumerationMutation(v88);
          }

          v97 = *(*(&v146 + 1) + 8 * i);
          if (objc_msgSend_changeDescriptor(v97, v90, v91, v92, v93) == 29 || objc_msgSend_changeDescriptor(v97, v98, v99, v100, v101) == 25)
          {
            dynamicContentDelegate = self->_dynamicContentDelegate;
            self->_dynamicContentDelegate = 0;

            self->_emptyFilteredTable = 0;
            v105 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v103, 0, v23, v104);
            v109 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v106, v105, v107, v108);
            v112 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v110, 0, v23, v111);
            v116 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v113, v112, v114, v115);
            v118 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v117, 7, v109, v116);

            objc_msgSend_addObject_(v88, v119, v118, v120, v121);
            v122 = v18;
            v125 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v123, 0, v18, v124);
            v129 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v126, v125, v127, v128);
            v132 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v130, 0, v122, v131);
            v136 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v133, v132, v134, v135);
            v138 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v137, 29, v129, v136);

            objc_msgSend_addObject_(v88, v139, v138, v140, v141);
            goto LABEL_24;
          }
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v146, v150, 16);
        if (v94)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  emptyFilteredTable = self->_emptyFilteredTable;
  if (!emptyFilteredTable)
  {
    self->_emptyFilteredTable = 1;
    v38 = v23;
    v39 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v35, 0, v23, v36);
    v43 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v40, v39, v41, v42);
    v46 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v44, 0, v38, v45);
    v50 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v47, v46, v48, v49);
    v52 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v51, 7, v43, v50);

    objc_msgSend_addObject_(visibilityCopy, v53, v52, v54, v55);
    v56 = v18;
    v59 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v57, 0, v18, v58);
    v63 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v60, v59, v61, v62);
    v66 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v64, 0, v56, v65);
    v70 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v67, v66, v68, v69);
    v72 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v71, 29, v63, v70);

    objc_msgSend_addObject_(visibilityCopy, v73, v72, v74, v75);
  }

  objc_opt_class();
  v76 = TSUDynamicCast();

  if (!v76)
  {
    v81 = self->_dynamicContentDelegate;
    self->_dynamicContentDelegate = 0;

    v82 = [TSTFilteredTableDynamicContentDelegate alloc];
    v86 = objc_msgSend_initWithTableInfo_(v82, v83, v8, v84, v85);
    v87 = self->_dynamicContentDelegate;
    self->_dynamicContentDelegate = v86;
  }

  if (!emptyFilteredTable)
  {
LABEL_24:
    v88 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v77, v78, v79, v80);
    objc_msgSend_postNotificationName_object_(v88, v142, @"TSTLayoutEngineDidChangeEmptyFilteredState", v8, v143);
    goto LABEL_25;
  }

LABEL_26:
}

- (void)validateFittingInfoForCell:(id)cell cellID:(TSUCellCoord)d mergeRange:(TSUCellRect)range setFitting:(BOOL)fitting layoutTask:(id)task widthHeightCollection:(id)collection validationBundle:(id)bundle styleDefaultsCache:(id)self0
{
  size = range.size;
  dCopy = d;
  numberOfRows = range.size.numberOfRows;
  if (range.size.numberOfRows)
  {
    v14 = range.size.numberOfColumns == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v124 = *&range.origin & 0xFFFF00000000;
  row = range.origin.row;
  if ((*&range.origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = 0;
  }

  if (range.origin.row == 0x7FFFFFFFLL)
  {
    v15 = 0;
  }

  v134 = v15;
  v141[0] = 0;
  origin = range.origin;
  v16 = objc_msgSend_modelCellIDForLayoutCellID_(self, a2, *&range.origin, *&d, *&range.origin);
  v20 = objc_msgSend_modelCellIDForLayoutCellID_(self, v17, dCopy, v18, v19);
  v25 = v20;
  v26 = 1;
  v133 = dCopy;
  if (v16 == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v27 = 1;
  if ((v16 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_19;
  }

  v26 = 1;
  if (!numberOfRows)
  {
LABEL_18:
    v27 = 1;
  }

  else
  {
    v27 = 1;
    if (size)
    {
      if (v16 != v20)
      {
        return;
      }

      dCopy = v16;
      v26 = numberOfRows;
      v27 = size;
      if (((v20 ^ v16) & 0xFFFF00000000) != 0)
      {
        return;
      }
    }
  }

LABEL_19:
  v127 = v27;
  v128 = v26;
  v129 = dCopy;
  v132 = objc_msgSend_valueType(cell, v21, v22, v23, v24);
  v32 = objc_msgSend_cellStyleHandle(cell, v28, v29, v30, v31);
  v37 = objc_msgSend_textStyleHandle(cell, v33, v34, v35, v36);
  v41 = v37;
  cacheCopy = cache;
  v43 = v37;
  if (!(v32 | v37))
  {
    tableInfo = self->_tableInfo;
    v139 = 0;
    v140 = 0;
    objc_msgSend_defaultStyleHandlesForCellID_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(tableInfo, v38, v25, 1, cache, &v140, &v139);
    v32 = v140;
    v45 = v139;
LABEL_21:
    v43 = v45;
LABEL_26:
    v48 = v45;
    goto LABEL_27;
  }

  if (!v32)
  {
    v47 = self->_tableInfo;
    v138 = 0;
    objc_msgSend_defaultStyleHandlesForCellID_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v47, v38, v25, 1, cache, &v138, 0);
    v45 = v138;
    v32 = v138;
    goto LABEL_26;
  }

  if (!v37)
  {
    v46 = self->_tableInfo;
    v137 = 0;
    objc_msgSend_defaultStyleHandlesForCellID_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v46, v38, v25, 1, cache, 0, &v137);
    v45 = v137;
    goto LABEL_21;
  }

LABEL_27:
  v135 = v43;
  if (v132 == 9 || v132 == 3)
  {
    v53 = objc_msgSend_cellFlags(cell, v38, v39, v40, cacheCopy);
    if ((v53 & 1) == 0)
    {
      if (v25 == v133 && ((v25 ^ v133) & 0x101FFFF00000000) == 0)
      {
        v54 = objc_msgSend_formattedValue(cell, v49, v50, v51, v52);
      }

      else
      {
        v54 = objc_msgSend_stringAtCellID_optionalCell_(self->_tableInfo, v49, v25, cell, v52);
      }

      v59 = v54;
      v60 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v55, v56, v57, v58);
      v64 = objc_msgSend_rangeOfCharacterFromSet_(v59, v61, v60, v62, v63);

      v53 = v64 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v141[0] = objc_msgSend_cellWraps(v32, v49, v50, v51, v52);
    v43 = v135;
    if (v135)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v53 = 0;
    if (v43)
    {
LABEL_35:
      if (objc_msgSend_isVariation(v43, v38, v39, v40, cacheCopy))
      {
        LOBYTE(v43) = objc_msgSend_nonDefaultFontSize(v135, v38, v39, v40, cacheCopy);
        v69 = objc_msgSend_nonDefaultFontName(v135, v65, v66, v67, v68);
      }

      else
      {
        v69 = 0;
        LOBYTE(v43) = 0;
      }

      goto LABEL_40;
    }
  }

  v69 = 0;
LABEL_40:
  v70 = objc_msgSend_padding(v32, v38, v39, v40, cacheCopy);
  if ((objc_msgSend_isCategorized(self, v71, v72, v73, v74) & 1) != 0 || objc_msgSend_isAPivotTable(self, v75, v76, v77, v78))
  {
    v81 = self->_tableInfo;
    v136 = v70;
    objc_msgSend_modifiedTextPropertiesForCategoryOrPivotCellAtCellID_wraps_padding_alignment_(v81, v75, v25, v141, &v136, 0);
    v82 = v136;

    v70 = v82;
  }

  objc_msgSend_edgeInsetsFromPadding_(self, v75, v70, v79, v80);
  v84 = v83;
  v86 = v85;
  isVariation = objc_msgSend_isVariation(v32, v87, v88, v89, v90);
  if (isVariation)
  {
    LOBYTE(isVariation) = objc_msgSend_overridesPadding(v32, v92, v93, v94, v95);
  }

  if (v53)
  {
    v96 = 1;
  }

  else
  {
    v96 = v141[0] | (v132 == 9);
  }

  if ((v43 | v69 | isVariation | (v41 != 0)) & v134 & (size >> 33 != 0)) != 0 || (v96)
  {
    v97 = v135;
    objc_msgSend_verticalAlignment(v32, v92, v93, v94, v95);
    objc_msgSend_currentFormatUsesAccountingStyle(cell, v113, v114, v115, v116);
    if (v134)
    {
      v118 = v129;
    }

    else
    {
      v118 = 0x7FFF7FFFFFFFLL;
    }

    if (v134)
    {
      v119 = v127 | (v128 << 32);
    }

    else
    {
      v119 = 0;
    }

    objc_msgSend_queueCellForValidation_cell_textStyleHandle_modelMergeRange_wrap_verticalAlignment_padding_prop_layoutCacheFlags_validationBundle_layoutTask_(self, v117, v129, v127 | (v128 << 32), cell, v135, v118, v119, v141[0], v70, 1, bundle, task);
  }

  else
  {
    v97 = v135;
    if (((v43 | v69) | isVariation) & 1 | (v41 != 0))
    {
      v98 = v133;
      if (v135)
      {
        v99 = objc_msgSend_textStyle(v135, v92, v93, v94, v95);
        objc_msgSend_fontHeightOfParagraphStyle_(self, v100, v99, v101, v102);
        v104 = v103;

        v108 = v86 + v84 + v104;
        if (v108 < 8.0)
        {
          v108 = 8.0;
        }

        if (v134)
        {
          v109 = (origin + numberOfRows - 1);
          if (row != 0x7FFFFFFF && v124 == 0x7FFF00000000)
          {
            v111 = 0;
          }

          else
          {
            v111 = v124;
          }

          if (numberOfRows)
          {
            v112 = row == 0x7FFFFFFF;
          }

          else
          {
            v112 = 1;
          }

          if (v112)
          {
            v109 = 0x7FFFFFFFLL;
          }

          v98 = v111 | v109;
        }

        objc_msgSend_addFittingHeight_forCellID_(collection, v105, v98, v106, v107, v108);
      }
    }

    else if (v134)
    {
      objc_msgSend_p_addFittingInfoForEmptyMergeRange_(self, v92, origin, size, v95);
    }

    else
    {
      v120 = objc_msgSend_tableStyleAreaForCellID_(self, v92, v133, v94, v95);
      objc_msgSend_addFittingHeight_forCellID_(collection, v121, v133, v122, v123, self->_tableDefaultFontHeightForArea.__begin_[v120]);
    }
  }
}

- (void)p_validateFittingInfoWithCellRangeWorker:(TSUCellRect)worker widthHeightCollection:(id)collection containsMerges:(BOOL)merges validationBundle:(id)bundle
{
  mergesCopy = merges;
  size = worker.size;
  origin = worker.origin;
  collectionCopy = collection;
  bundleCopy = bundle;
  v13 = MEMORY[0x277D86228];
  v22 = objc_msgSend_tableRowsBehavior(self, v14, v15, v16, v17, bundleCopy, collectionCopy) == 3 || objc_msgSend_tableRowsBehavior(self, v18, v19, v20, v21) == 1;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3812000000;
  v55 = sub_2213ACDA8;
  v56 = nullsub_58;
  v57 = &unk_22188E88F;
  v58 = 0x7FFF7FFFFFFFLL;
  v23 = [TSTLayoutTask alloc];
  v41 = objc_msgSend_initWithLayoutEngine_(v23, v24, self, v25, v26);
  v30 = objc_msgSend_cacheWithTableInfo_(TSTStyleDefaultsCache, v27, self->_tableInfo, v28, v29);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2213AE008;
  v42[3] = &unk_278463EE0;
  v50 = mergesCopy;
  if (mergesCopy)
  {
    v31 = 64;
  }

  else
  {
    v31 = 0;
  }

  v47 = &v52;
  v48 = origin;
  v42[4] = self;
  if (mergesCopy)
  {
    v32 = 0x20000000;
  }

  else
  {
    v32 = 66058240;
  }

  v49 = size;
  v33 = collectionCopy;
  v43 = v33;
  v51 = v22;
  v34 = v41;
  v44 = v34;
  v35 = bundleCopy;
  v45 = v35;
  v36 = v30;
  v46 = v36;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v37, origin, size, v31, v32, v42);
  objc_msgSend_processLayoutTask_validationBundle_(self, v38, v34, v35, v39);
  if (!mergesCopy)
  {
    objc_msgSend_p_validateFittingInfoForEmptyCellsBetween_andCellID_inRange_widthHeightCollection_(self, v40, v53[6], 0x7FFF7FFFFFFFLL, origin, size, v33);
  }

  _Block_object_dispose(&v52, 8);
}

- (void)validateFittingInfoWithCellRange:(TSUCellRect)range validationBundle:(id)bundle
{
  size = range.size;
  row = range.origin.row;
  rangeCopy = range;
  bundleCopy = bundle;
  v12 = objc_msgSend_limit(self->_layoutValidateQueue, v8, v9, v10, v11);
  v17 = HIDWORD(*&size);
  v18 = HIDWORD(*&size) * *&size;
  v19 = v18 / (3 * v12);
  if (v19 <= 0x200)
  {
    LODWORD(v19) = 512;
  }

  v20 = v18 / v19;
  if (v20 >= size.numberOfRows)
  {
    v21 = 1;
  }

  else
  {
    v21 = size.numberOfRows / (v20 + 1);
  }

  v22 = *&rangeCopy.origin.column;
  objc_msgSend_loadAllLazyReferences(self->_tableInfo, v13, v14, v15, v16);
  if (v17)
  {
    do
    {
      if (v21 >= v17)
      {
        v27 = v17;
      }

      else
      {
        v27 = v21;
      }

      v28 = objc_msgSend_generateWidthHeightCollection(bundleCopy, v23, v24, v25, v26);
      dispatch_group_enter(self->_layoutInFlight);
      layoutValidateQueue = self->_layoutValidateQueue;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_2213AE364;
      v34[3] = &unk_278463F30;
      v34[4] = self;
      v37 = row;
      v38 = v22;
      v39 = v27;
      v30 = v28;
      v35 = v30;
      v36 = bundleCopy;
      objc_msgSend_performAsync_(layoutValidateQueue, v31, v34, v32, v33);
      row += v27;
      LODWORD(v17) = v17 - v27;
    }

    while (v17);
  }
}

- (void)p_validateFittingInfoForEmptyCellsOnSingleRowBetween:(TSUCellCoord)between andEndCellID:(TSUCellCoord)d widthHeightCollection:(id)collection
{
  if (objc_msgSend_hasHiddenRowAtIndex_(self, a2, *&between, *&d, collection))
  {
    return;
  }

  v12 = HIDWORD(*&d);
  v13 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self, v9, between.column, v10, v11);
  if (v13 > d.column)
  {
    return;
  }

  v17 = v13;
  v18 = v13;
  v19 = *&between & 0xFFFF0000FFFFFFFFLL | (v13 << 32);
  v20 = objc_msgSend_tableStyleAreaForCellID_(self, v14, v19, v15, v16);
  v24 = v20;
  if (between.row == d.row && v17 << 32 == (*&d & 0xFFFF00000000))
  {
LABEL_10:
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = v24;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3812000000;
    v33[3] = sub_2213ACDA8;
    v33[4] = nullsub_58;
    v33[5] = &unk_22188E88F;
    row = between.row;
    v35 = v17;
    v36 = *&between._preserveRow;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    hiddenRowsColumnsCache = self->_hiddenRowsColumnsCache;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2213AE9D0;
    v31[3] = &unk_278463F58;
    v31[4] = v33;
    v31[5] = v32;
    v31[6] = v37;
    v31[7] = v20;
    v31[8] = self;
    v31[9] = collection;
    v31[10] = &self->_tableDefaultFontHeightForArea;
    objc_msgSend_enumerateVisibleColumnIndexesInRange_usingBlock_(hiddenRowsColumnsCache, v21, v18, v12 - v17 + 1, v31);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v37, 8);
    return;
  }

  v25 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v21, d.column, v22, v23);
  if (v17 <= v25)
  {
    LOWORD(v12) = v25;
    v20 = objc_msgSend_tableStyleAreaForCellID_(self, v26, *&d & 0xFFFF0000FFFFFFFFLL | (v25 << 32), v27, v28);
    goto LABEL_10;
  }

  v29 = self->_tableDefaultFontHeightForArea.__begin_[v24];

  objc_msgSend_addFittingHeight_forCellID_(collection, v26, v19, v27, v28, v29);
}

- (TSUCellCoord)p_validateFittingInfoForEmptyCellsBetween:(TSUCellCoord)between andCellID:(TSUCellCoord)d inRange:(TSUCellRect)range widthHeightCollection:(id)collection
{
  size = range.size;
  origin = range.origin;
  collectionCopy = collection;
  if (between.row == 0x7FFFFFFF || (*&between & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = HIDWORD(*&origin);
    row = origin.row;
    between = origin;
  }

  else
  {
    if (size.numberOfColumns)
    {
      v13 = origin.column == 0x7FFF;
    }

    else
    {
      v13 = 1;
    }

    v14 = (LOWORD(size.numberOfColumns) + origin.column - 1);
    if (v13)
    {
      v14 = 0x7FFF;
    }

    if (v14 <= between.column)
    {
      v23 = origin.row + size.numberOfRows - 1;
      if (HIDWORD(*&size))
      {
        v24 = origin.row == 0x7FFFFFFF;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v23 = 0x7FFFFFFF;
      }

      if (v23 <= between.row)
      {
        v18 = 0;
        LOWORD(v17) = 0x7FFF;
        d.row = 0x7FFFFFFF;
        goto LABEL_73;
      }

      if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
      {
        LOWORD(v15) = 0;
      }

      else
      {
        LOWORD(v15) = origin.column;
      }

      row = between.row + 1;
    }

    else
    {
      LOWORD(v15) = between.column + 1;
      row = between.row;
    }
  }

  v17 = HIDWORD(*&d);
  v18 = HIWORD(*&d);
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v44 = HIDWORD(*&d);
    v45 = HIWORD(*&d);
    v18 = 0;
    v22 = origin.row + size.numberOfRows - 1;
    LODWORD(v17) = ((*&origin + 0xFFFF00000000) >> 32) + size.numberOfColumns;
LABEL_50:
    if (v22 > row || v22 == row && v17 >= v15)
    {
      v29 = *&between & 0xFFFF000000000000;
      if (v22 == row)
      {
        objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v11, row | (v15 << 32) | v29, (v17 << 32) | (v18 << 48) | row, collectionCopy);
        LOWORD(v17) = v44;
        v18 = v45;
        goto LABEL_73;
      }

      v30 = *&origin & 0xFFFF00000000;
      if (size.numberOfColumns)
      {
        v31 = v30 == 0x7FFF00000000;
      }

      else
      {
        v31 = 1;
      }

      v32 = v29 | (v15 << 32);
      if (v31)
      {
        v33 = 0x7FFF00000000;
      }

      else
      {
        v33 = (*&origin + (*&size << 32) + 0xFFFF00000000) & 0xFFFF00000000;
      }

      objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v11, v32 | row, v33 | row | v29, collectionCopy, v44);
      if (origin.row != 0x7FFFFFFF && v30 == 0x7FFF00000000)
      {
        v36 = 0;
      }

      else
      {
        v36 = *&origin & 0xFFFF00000000;
      }

      objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v34, v22 | (v18 << 48) | v36, v22 | (v18 << 48) | (v17 << 32), collectionCopy);
      v38 = row + 1;
      v39 = v33 + v38;
      v40 = v36 + v38;
      v18 = v45;
      while (v39 < v22)
      {
        v41 = v39 + 1;
        v42 = v40 + 1;
        objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v37, v40, v39, collectionCopy);
        v40 = v42;
        v39 = v41;
      }
    }

    else
    {
      v18 = v45;
    }

    LOWORD(v17) = v44;
    goto LABEL_73;
  }

  v19 = *&origin & 0xFFFF00000000;
  if (origin.row != 0x7FFFFFFF && v19 == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = origin.column;
  }

  if (column < d.column)
  {
    v44 = HIDWORD(*&d);
    LOWORD(v17) = d.column - 1;
    v22 = d.row;
LABEL_49:
    v45 = HIWORD(*&d);
    goto LABEL_50;
  }

  if (v19 != 0x7FFF00000000 && origin.row == 0x7FFFFFFF)
  {
    v27 = 0;
  }

  else
  {
    v27 = origin.row;
  }

  if (v27 < d.row)
  {
    v44 = HIDWORD(*&d);
    if (size.numberOfColumns)
    {
      v28 = origin.column == 0x7FFF;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      LOWORD(v17) = 0x7FFF;
    }

    else
    {
      LOWORD(v17) = LOWORD(size.numberOfColumns) + origin.column - 1;
    }

    v22 = d.row - 1;
    goto LABEL_49;
  }

LABEL_73:

  return ((v17 << 32) | (v18 << 48) | d.row);
}

- (void)p_addFittingInfoForEmptyMergeRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v8 = self->_tableDefaultFontHeightForArea.__begin_[objc_msgSend_tableStyleAreaForCellID_(self, a2, *&range.origin, *&range.size, v3)];
  mergeRangesForLayoutPass = self->_mergeRangesForLayoutPass;
  v10 = *MEMORY[0x277D81428];
  v11 = *(MEMORY[0x277D81428] + 8);
  v12 = *(MEMORY[0x277D81428] + 16);
  v13 = *(MEMORY[0x277D81428] + 24);

  objc_msgSend_addRange_height_paddingInsets_isCheckbox_(mergeRangesForLayoutPass, v7, origin, size, 0, v8, v10, v11, v12, v13);
}

- (void)p_validationFittingCellRegionForColumnsDeleted:(id)deleted cellRegionGatherer:(id)gatherer
{
  gathererCopy = gatherer;
  v11 = objc_msgSend_intersectingColumnsIndexSet(deleted, v7, v8, v9, v10);
  v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14, v15);
  objc_msgSend_removeColumns_(gathererCopy, v17, v11, v18, v19);
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2213AF028;
  v48[3] = &unk_278463F80;
  v50 = v51;
  v48[4] = self;
  v20 = v16;
  v49 = v20;
  objc_msgSend_enumerateRangesUsingBlock_(v11, v21, v48, v22, v23);
  v27 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v24, v20, v25, v26);
  v32 = objc_msgSend_cellRange(self, v28, v29, v30, v31);
  v35 = objc_msgSend_regionFromRange_(TSTCellRegion, v33, v32, v33, v34);
  v39 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v36, v35, v37, v38);
  if (objc_msgSend_cellCount(v39, v40, v41, v42, v43))
  {
    v47 = objc_msgSend_region_addingRegion_(TSTCellRegion, v44, v27, v39, v46);

    v27 = v47;
  }

  objc_msgSend_addRegion_(gathererCopy, v44, v27, v45, v46);

  _Block_object_dispose(v51, 8);
}

- (void)p_validationFittingCellRegionForColumnsInserted:(id)inserted cellRegionGatherer:(id)gatherer
{
  insertedCopy = inserted;
  gathererCopy = gatherer;
  v11 = objc_msgSend_intersectingColumnsIndexSet(insertedCopy, v7, v8, v9, v10);
  objc_msgSend_addColumns_(gathererCopy, v12, v11, v13, v14);
  v19 = objc_msgSend_tableInfo(self, v15, v16, v17, v18);
  v23 = objc_msgSend_expandCellRegionToCoverMergedCells_(v19, v20, insertedCopy, v21, v22);

  v28 = objc_msgSend_cellRange(self, v24, v25, v26, v27);
  v31 = objc_msgSend_regionFromRange_(TSTCellRegion, v29, v28, v29, v30);
  v35 = objc_msgSend_regionBySubtractingRegion_(v31, v32, insertedCopy, v33, v34);

  v39 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v36, v35, v37, v38);
  if (objc_msgSend_cellCount(v39, v40, v41, v42, v43))
  {
    v47 = objc_msgSend_region_addingRegion_(TSTCellRegion, v44, v23, v39, v46);

    v23 = v47;
  }

  objc_msgSend_addRegion_(gathererCopy, v44, v23, v45, v46);
}

- (void)p_validationFittingCellRegionForColumnsVisibility:(id)visibility cellRegionGatherer:(id)gatherer
{
  gathererCopy = gatherer;
  v10 = objc_msgSend_intersectingColumnsIndexSet(visibility, v6, v7, v8, v9);
  v14 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v11, v10, v12, v13);
  objc_msgSend_addRegion_(gathererCopy, v15, v14, v16, v17);
  v22 = objc_msgSend_visibleColumnIndices(self, v18, v19, v20, v21);
  v27 = objc_msgSend_mutableCopy(v22, v23, v24, v25, v26);

  objc_msgSend_removeIndexes_(v27, v28, v10, v29, v30);
  v34 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v31, v27, v32, v33);
  v38 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v35, v34, v36, v37);
  if (objc_msgSend_cellCount(v38, v39, v40, v41, v42))
  {
    objc_msgSend_addRegion_(gathererCopy, v43, v38, v44, v45);
  }
}

- (void)p_validationFittingCellRegionForColumnsMovedFrom:(id)from toColumnIndex:(unsigned __int16)index cellRegionGatherer:(id)gatherer
{
  indexCopy = index;
  fromCopy = from;
  gathererCopy = gatherer;
  v16.origin = objc_msgSend_boundingCellRange(fromCopy, v9, v10, v11, v12);
  v16.size = v13;
  v14 = TSUCellRect::columns(&v16);
  objc_msgSend_moveColumnsFromRange_toIndex_(gathererCopy, v15, v14, v15, indexCopy);
}

- (void)p_validationFittingCellRegionForRowsDeleted:(id)deleted cellRegionGatherer:(id)gatherer
{
  gathererCopy = gatherer;
  v11 = objc_msgSend_intersectingRowsIndexSet(deleted, v7, v8, v9, v10);
  objc_msgSend_removeRows_(gathererCopy, v12, v11, v13, v14);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v15, v16, v17, v18);
  v49 = MEMORY[0x277D85DD0];
  v50 = 3221225472;
  v51 = sub_2213AF660;
  v52 = &unk_2784623E0;
  v54 = v55;
  v20 = v19;
  v53 = v20;
  objc_msgSend_enumerateRangesUsingBlock_(v11, v21, &v49, v22, v23);
  v27 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v24, v20, v25, v26, v49, v50, v51, v52);
  v32 = objc_msgSend_tableInfo(self, v28, v29, v30, v31);
  v36 = objc_msgSend_mergesIntersectingCellRegion_(v32, v33, v27, v34, v35);

  if (objc_msgSend_count(v36, v37, v38, v39, v40))
  {
    v45 = objc_msgSend_regionForList(v36, v41, v42, v43, v44);
    objc_msgSend_addRegion_(gathererCopy, v46, v45, v47, v48);
  }

  else
  {
    v45 = 0;
  }

  _Block_object_dispose(v55, 8);
}

- (void)p_validationFittingCellRegionForRowsInserted:(id)inserted cellRegionGatherer:(id)gatherer
{
  insertedCopy = inserted;
  gathererCopy = gatherer;
  v11 = objc_msgSend_intersectingRowsIndexSet(insertedCopy, v7, v8, v9, v10);
  objc_msgSend_addRows_(gathererCopy, v12, v11, v13, v14);
  v19 = objc_msgSend_tableInfo(self, v15, v16, v17, v18);
  v23 = objc_msgSend_expandCellRegionToCoverMergedCells_(v19, v20, insertedCopy, v21, v22);

  objc_msgSend_addRegion_(gathererCopy, v24, v23, v25, v26);
}

- (void)p_validationFittingCellRegionForRowsMovedFrom:(id)from toRowIndex:(unsigned int)index cellRegionGatherer:(id)gatherer
{
  v6 = *&index;
  fromCopy = from;
  gathererCopy = gatherer;
  v16.origin = objc_msgSend_boundingCellRange(fromCopy, v9, v10, v11, v12);
  v16.size = v13;
  v14 = TSUCellRect::rows(&v16);
  objc_msgSend_moveRowsFromRange_toIndex_(gathererCopy, v15, v14, v15, v6);
}

- (void)p_validationFittingCellRegionForRangeMergeUnmerge:(id)unmerge cellRegionGatherer:(id)gatherer
{
  unmergeCopy = unmerge;
  gathererCopy = gatherer;
  v12 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
  v16 = objc_msgSend_expandCellRegionToCoverMergedCells_(v12, v13, unmergeCopy, v14, v15);

  objc_msgSend_addRegion_(gathererCopy, v17, v16, v18, v19);
  v24 = objc_msgSend_intersectingRowsIndexSet(v16, v20, v21, v22, v23);
  v48.origin = objc_msgSend_cellRange(self, v25, v26, v27, v28);
  v48.size = v29;
  v30 = TSUCellRect::columns(&v48);
  v32 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v31, v24, v30, v31);

  v36 = objc_msgSend_regionBySubtractingRegion_(v32, v33, v16, v34, v35);

  v40 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v37, v36, v38, v39);
  if (objc_msgSend_cellCount(v40, v41, v42, v43, v44))
  {
    objc_msgSend_addRegion_(gathererCopy, v45, v40, v46, v47);
  }
}

- (void)p_validationFittingCellRegionForStrokesChanged:(id)changed cellRegionGatherer:(id)gatherer
{
  changedCopy = changed;
  gathererCopy = gatherer;
  v11 = objc_msgSend_regionFillingRowsFromRegion_(TSTCellRegion, v8, changedCopy, v9, v10);
  v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    objc_msgSend_mergeRangesIntersectingCellRegion_(v16, v17, v11, v18, v19);
  }

  else
  {
    __p = 0;
    v33 = 0;
    v34 = 0;
  }

  if (__p == v33)
  {
    v28 = changedCopy;
  }

  else
  {
    v24 = objc_msgSend_regionFromMergeList_(TSTCellRegion, v21, &__p, v22, v23);
    v28 = objc_msgSend_regionByAddingRegion_(changedCopy, v25, v24, v26, v27);
  }

  objc_msgSend_addRegion_(gathererCopy, v29, v28, v30, v31);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

- (void)p_validationFittingForChangeDescriptorType:(int)type regionFromChangeDescriptor:(id)descriptor cellRegionGatherer:(id)gatherer
{
  descriptorCopy = descriptor;
  gathererCopy = gatherer;
  if (type > 26)
  {
    if (type <= 0x31)
    {
      if (((1 << type) & 0xC6000000000) != 0)
      {
        goto LABEL_14;
      }

      if (type == 33)
      {
LABEL_19:
        v32 = objc_msgSend_intersectingRowsIndexSet(descriptorCopy, v8, v9, v10, v11);
        v36 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v33, v32, v34, v35);

        v22 = objc_msgSend_tableInfo(self, v37, v38, v39, v40);
        v31 = objc_msgSend_expandCellRegionToCoverMergedCells_(v22, v41, v36, v42, v43);
        descriptorCopy = v36;
        goto LABEL_20;
      }

      if (type == 49)
      {
        goto LABEL_11;
      }
    }

    if (type == 27)
    {
      v44 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
      v22 = objc_msgSend_mergesIntersectingCellRegion_(v44, v45, descriptorCopy, v46, v47);

      if (!objc_msgSend_count(v22, v48, v49, v50, v51))
      {
        v31 = 0;
        goto LABEL_20;
      }

      v30 = objc_msgSend_regionForList(v22, v52, v53, v54, v55);
      goto LABEL_15;
    }

    if (type == 30)
    {

      goto LABEL_24;
    }
  }

  else
  {
    if (type > 12)
    {
      if ((type - 13) >= 2)
      {
        if (type != 16)
        {
          if (type != 22)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        goto LABEL_14;
      }

LABEL_11:
      v13 = objc_msgSend_dupContentCache(self, v8, v9, v10, v11);
      objc_msgSend_removeAllObjects(v13, v14, v15, v16, v17);

      v22 = objc_msgSend_cellIDToWPColumnCache(self, v18, v19, v20, v21);
      objc_msgSend_removeAllObjects(v22, v23, v24, v25, v26);
LABEL_21:

      goto LABEL_22;
    }

    if (!type || type == 6)
    {
LABEL_14:
      v22 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
      v30 = objc_msgSend_expandCellRegionToCoverMergedCells_(v22, v27, descriptorCopy, v28, v29);
LABEL_15:
      v31 = v30;
LABEL_20:

      descriptorCopy = v31;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (descriptorCopy)
  {
    objc_msgSend_addRegion_(gathererCopy, v8, descriptorCopy, v10, v11);
    goto LABEL_25;
  }

LABEL_24:
  descriptorCopy = 0;
LABEL_25:
}

- (BOOL)p_containsGradientFillThatFillsContainerInCell:(id)cell cellContents:(id)contents
{
  cellCopy = cell;
  contentsCopy = contents;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_range(v8, v9, v10, v11, v12);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2213AFEDC;
    v24[3] = &unk_278463FD0;
    v24[5] = v13;
    v24[6] = &v25;
    v24[4] = self;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v13, v15, 0, v14, v15, v24);
  }

  else
  {
    v16 = objc_msgSend_textStyleHandle(cellCopy, v9, v10, v11, v12);
    v21 = objc_msgSend_containsGradientThatFillsContainer(v16, v17, v18, v19, v20);
    *(v26 + 24) = v21;
  }

  v22 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v22;
}

- (BOOL)p_containsGradientThatFillsContainerInStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTLayoutEngine p_containsGradientThatFillsContainerInStyle:]", v5, v6);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v10, v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 6108, 0, "style must be character or paragraph.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    }
  }

  if (objc_msgSend_intValueForProperty_(styleCopy, v4, 49, v5, v6))
  {
    objc_opt_class();
    v21 = objc_msgSend_objectForProperty_(styleCopy, v18, 48, v19, v20);
    v22 = TSUCheckedDynamicCast();
    v27 = objc_msgSend_fillType(v22, v23, v24, v25, v26) == 1;
  }

  else
  {
LABEL_7:
    v27 = 0;
  }

  return v27;
}

- (id)validateFittingRegionForChangeDescriptors:(id)descriptors
{
  v61 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v9 = objc_msgSend_gatherer(TSTCellRegionGatherer, v5, v6, v7, v8);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = descriptorsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v56, v60, 16);
  if (v16)
  {
    v17 = *v57;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        v20 = objc_msgSend_changeDescriptor(v19, v12, v13, v14, v15, v56);
        v21 = v20;
        if (v20 <= 16)
        {
          if (v20 <= 3)
          {
            if (v20 == 2)
            {
              continue;
            }

            if (v20 != 3)
            {
LABEL_29:
              v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
              objc_msgSend_p_validationFittingForChangeDescriptorType_regionFromChangeDescriptor_cellRegionGatherer_(self, v49, v21, v22, v9);
              goto LABEL_30;
            }

            v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
            objc_msgSend_p_validationFittingCellRegionForColumnsDeleted_cellRegionGatherer_(self, v29, v22, v9, v30);
          }

          else
          {
            switch(v20)
            {
              case 4:
                v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
                objc_msgSend_p_validationFittingCellRegionForColumnsInserted_cellRegionGatherer_(self, v43, v22, v9, v44);
                break;
              case 5:
                v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
                v35 = objc_msgSend_cellID(v19, v31, v32, v33, v34);
                objc_msgSend_p_validationFittingCellRegionForColumnsMovedFrom_toColumnIndex_cellRegionGatherer_(self, v36, v22, WORD2(v35), v9);
                break;
              case 7:
                v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
                objc_msgSend_p_validationFittingCellRegionForColumnsVisibility_cellRegionGatherer_(self, v25, v22, v9, v26);
                break;
              default:
                goto LABEL_29;
            }
          }
        }

        else if (v20 > 24)
        {
          switch(v20)
          {
            case 0x19:
              v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
              objc_msgSend_p_validationFittingCellRegionForRowsInserted_cellRegionGatherer_(self, v47, v22, v9, v48);
              break;
            case 0x1A:
              v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
              v41 = objc_msgSend_cellID(v19, v37, v38, v39, v40);
              objc_msgSend_p_validationFittingCellRegionForRowsMovedFrom_toRowIndex_cellRegionGatherer_(self, v42, v22, v41, v9);
              break;
            case 0x20:
              v22 = objc_msgSend_strokeRegion(v19, v12, v13, v14, v15);
              objc_msgSend_p_validationFittingCellRegionForStrokesChanged_cellRegionGatherer_(self, v27, v22, v9, v28);
              break;
            default:
              goto LABEL_29;
          }
        }

        else
        {
          switch(v20)
          {
            case 0x11:
              v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
              objc_msgSend_p_validationFittingCellRegionForRangeMergeUnmerge_cellRegionGatherer_(self, v45, v22, v9, v46);
              break;
            case 0x17:
              continue;
            case 0x18:
              v22 = objc_msgSend_cellRegion(v19, v12, v13, v14, v15);
              objc_msgSend_p_validationFittingCellRegionForRowsDeleted_cellRegionGatherer_(self, v23, v22, v9, v24);
              break;
            default:
              goto LABEL_29;
          }
        }

LABEL_30:
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v56, v60, 16);
    }

    while (v16);
  }

  v54 = objc_msgSend_gatheredCellRegion(v9, v50, v51, v52, v53);

  return v54;
}

- (id)validateFittingInfoForValidationRegion:(id)region rowsNeedingFittingInfo:(id)info
{
  regionCopy = region;
  infoCopy = info;
  v48.origin = objc_msgSend_cellRange(self, v8, v9, v10, v11);
  v48.size = v12;
  if (infoCopy)
  {
    v16 = objc_msgSend_hiddenRowsColumnsCache(self, v12, v13, v14, v15);
    v21 = objc_msgSend_visibleRowIndices(v16, v17, v18, v19, v20);
    objc_msgSend_tsu_intersectionWithIndexSet_(infoCopy, v22, v21, v23, v24);

    if (objc_msgSend_count(infoCopy, v25, v26, v27, v28))
    {
      v29 = TSUCellRect::columns(&v48);
      v31 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v30, infoCopy, v29, v30);
      v34 = objc_msgSend_region_addingRegion_(TSTCellRegion, v32, regionCopy, v31, v33);

      regionCopy = v34;
    }
  }

  v35 = objc_msgSend_p_validationBundleForRegionToValidate_(self, v12, regionCopy, v14, v15);
  v38 = objc_msgSend_regionByIntersectingRange_(regionCopy, v36, *&v48.origin, *&v48.size, v37);

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_2213B07CC;
  v46[3] = &unk_278462B70;
  v46[4] = self;
  v39 = v35;
  v47 = v39;
  objc_msgSend_enumerateCellRangesUsingBlock_(v38, v40, v46, v41, v42);
  v43 = v47;
  v44 = v39;

  return v44;
}

- (id)fittingWidthsMapForColumns:(id)columns includeStrokes:(BOOL)strokes
{
  strokesCopy = strokes;
  v88 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v71 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  v82.origin = objc_msgSend_cellRange(self, v10, v11, v12, v13);
  v82.size = v14;
  v15 = TSUCellRect::rows(&v82);
  v17 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v16, columnsCopy, v15, v16);
  v82.origin = 0;
  v82.size = &v82;
  v83 = 0x3032000000;
  v84 = sub_2213A53FC;
  v85 = sub_2213A540C;
  v86 = 0;
  v72 = v17;
  if ((objc_msgSend_isEmpty(v17, v18, v19, v20, v21) & 1) == 0)
  {
    v26 = MEMORY[0x277D86228];
    v27 = [TSTConcurrentCellIterator alloc];
    v32 = objc_msgSend_tableInfo(self, v28, v29, v30, v31);
    v34 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v27, v33, v32, v72, 64, 66058240);

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_2213B0C98;
    v79[3] = &unk_278464018;
    v80 = v71;
    selfCopy = self;
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = sub_2213B1644;
    v78[3] = &unk_278464040;
    v78[4] = self;
    v78[5] = &v82;
    objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v34, v35, &unk_2834A6F10, v79, v78);
  }

  if (strokesCopy)
  {
    v36 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v22, v23, v24, v25);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v37 = *(*&v82.size + 40);
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v74, v87, 16);
    if (v43)
    {
      v44 = *v75;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v75 != v44)
          {
            objc_enumerationMutation(v37);
          }

          v46 = *(*(&v74 + 1) + 8 * i);
          v47 = objc_msgSend_unsignedIntValue(v46, v39, v40, v41, v42);
          v51 = objc_msgSend_objectForKey_(*(*&v82.size + 40), v48, v46, v49, v50);
          objc_msgSend_tsu_CGFloatValue(v51, v52, v53, v54, v55);
          v57 = v56;

          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v58, v47, 0, 2147483646);
          v60 = v59;
          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v61, v47 + 1, 0, 2147483646);
          v67 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v63, v64, v65, v66, ceil(v57 + v60 * 0.5 + v62 * 0.5));
          objc_msgSend_setObject_forKey_(v36, v68, v67, v46, v69);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v74, v87, 16);
      }

      while (v43);
    }
  }

  else
  {
    v36 = *(*&v82.size + 40);
  }

  _Block_object_dispose(&v82, 8);

  return v36;
}

- (id)validateCellForDrawing:(TSUCellCoord)drawing cell:(id)cell contents:(id)contents wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding layoutCacheFlags:(int)flags pageNumber:(unint64_t)self0 pageCount:(unint64_t)self1
{
  wrapCopy = wrap;
  flagsCopy3 = flags;
  cellCopy = cell;
  contentsCopy = contents;
  paddingCopy = padding;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = objc_msgSend_length(contentsCopy, v18, v19, v20, v21) == 0;
  }

  else
  {
    v22 = contentsCopy == 0;
  }

  v23 = !v22;
  v24 = objc_msgSend_tableInfo(self, v18, v19, v20, v21);
  v28 = v24;
  if (!v23)
  {
    v42 = 0;
    goto LABEL_63;
  }

  alignmentCopy = alignment;
  v196 = wrapCopy;
  v29 = objc_msgSend_mergeRangeAtCellID_(v24, v25, *&drawing, v26, v27);
  v193 = v29;
  v194 = v30;
  countCopy = count;
  v197 = 0;
  v33 = 0x100000001;
  if (v29 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  drawingCopy3 = drawing;
  if ((v29 & 0xFFFF00000000) == 0x7FFF00000000)
  {
LABEL_17:
    v37 = objc_msgSend_layoutCellIDForModelCellID_(self, v30, drawingCopy3, v31, v32, count);
    goto LABEL_18;
  }

  v197 = 0;
  v35 = HIDWORD(v30);
  if (!HIDWORD(v30))
  {
LABEL_16:
    drawingCopy3 = drawing;
    goto LABEL_17;
  }

  drawingCopy3 = drawing;
  if (!v30)
  {
    goto LABEL_17;
  }

  v36 = v29;
  if (HIDWORD(v30) + v29 > v29)
  {
    do
    {
      v201 = 0;
      objc_msgSend_heightOfRowAtIndex_isDefault_(v28, v30, v36, &v201, v32, countCopy);
      v36 = (v36 + 1);
      LODWORD(v35) = v35 - 1;
    }

    while (v35);
  }

  v197 = 1;
  v33 = v194;
  v37 = objc_msgSend_layoutCellIDForModelCellID_(self, v30, v193, v31, v32, countCopy);
LABEL_18:
  v43 = v37;
  if (v197)
  {
    v44 = objc_msgSend_cellRange(self, v38, v39, v40, v41);
    v43 = sub_221119E0C(v44, v45, v43, v33);
    v33 = v38;
  }

  objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v38, v43, v33, 0);
  v47 = v46;
  v48 = MEMORY[0x277CBF3A8];
  objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, v49, v43, v33, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  v55 = v54;
  if (v196)
  {
    v56 = 8.0;
  }

  else
  {
    v56 = v47;
  }

  if (v196)
  {
    v57 = v47;
  }

  else
  {
    v57 = 4294967300.0;
  }

  if (alignment)
  {
    v58 = v54;
  }

  else
  {
    v58 = 0.0;
    v55 = 50000.0;
    if (objc_msgSend_p_containsGradientFillThatFillsContainerInCell_cellContents_(self, v50, cellCopy, contentsCopy, v53))
    {
      objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, v50, v43, v33, 0, *v48, v48[1]);
      v58 = v59;
    }
  }

  if ((flags & 4) != 0)
  {
    v61 = objc_msgSend_cellIDToWPColumnCache(self, v50, v51, v52, v53);
    v62 = drawing.row << 15;
    v66 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v63, v62 | drawing.column, v64, v65);
    v42 = objc_msgSend_objectForKey_(v61, v67, v66, v68, v69);

    if (v42)
    {
      if (sub_2213A5824(v42) == v47)
      {
        flagsCopy3 = flags;
        v60 = 0;
        goto LABEL_37;
      }

      v70 = objc_msgSend_cellIDToWPColumnCache(self, v50, v51, v52, v53);
      v74 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v71, v62 | drawing.column, v72, v73);
      objc_msgSend_removeObjectForKey_(v70, v75, v74, v76, v77);
    }

    v60 = 1;
    flagsCopy3 = flags;
  }

  else
  {
    v42 = 0;
    v60 = 1;
  }

  if (!objc_msgSend_dynamicRepResize(self, v50, v51, v52, v53))
  {
    goto LABEL_48;
  }

LABEL_37:
  if (objc_msgSend_numberOfPopulatedCells(v28, v78, v79, v80, v81) > 0x19)
  {
    goto LABEL_63;
  }

  if (v56 < 0.0)
  {
    v56 = 0.0;
  }

  if (v58 < 0.0)
  {
    v58 = 0.0;
  }

  if (v57 < 0.0)
  {
    v57 = 0.0;
  }

  if (v55 < 0.0)
  {
    v55 = 0.0;
    if ((v60 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_48:
    if (!v60)
    {
      goto LABEL_63;
    }
  }

  v82 = objc_alloc_init(TSTCellStateForLayout);
  objc_msgSend_setModelCellID_(v82, v83, *&drawing, v84, v85);
  objc_msgSend_setCell_(v82, v86, cellCopy, v87, v88);
  objc_msgSend_setCellPropsRowHeight_(v82, v89, 0, v90, v91);
  objc_msgSend_setNeedWPColumn_(v82, v92, 1, v93, v94);
  objc_msgSend_setCellWraps_(v82, v95, v196, v96, v97);
  objc_msgSend_edgeInsetsFromPadding_(self, v98, paddingCopy, v99, v100);
  objc_msgSend_setPaddingInsets_(v82, v101, v102, v103, v104);
  objc_msgSend_setVerticalAlignment_(v82, v105, alignmentCopy, v106, v107);
  objc_msgSend_setMinSize_(v82, v108, v109, v110, v111, v56, v58);
  objc_msgSend_setMaxSize_(v82, v112, v113, v114, v115, v57, v55);
  objc_msgSend_setForDrawing_(v82, v116, 1, v117, v118);
  v123 = objc_msgSend_isInDynamicLayoutMode(self, v119, v120, v121, v122);
  objc_msgSend_setInDynamicLayout_(v82, v124, v123, v125, v126);
  objc_msgSend_setCellContents_(v82, v127, contentsCopy, v128, v129);
  objc_opt_class();
  v130 = TSUDynamicCast();
  v135 = v130;
  if (!v130)
  {
    goto LABEL_53;
  }

  if (!objc_msgSend_hasAttachmentsThatChangeWithPageNumberOrPageCount(v130, v131, v132, v133, v134))
  {
    flagsCopy3 = flagsCopy3;
LABEL_53:
    objc_msgSend_setLayoutCacheFlags_(v82, v131, flagsCopy3, v133, v134);
    goto LABEL_54;
  }

  LOBYTE(flagsCopy3) = 0;
  objc_msgSend_setLayoutCacheFlags_(v82, v131, 0, v133, v134);
LABEL_54:
  objc_msgSend_setPageNumber_(v82, v136, number, v137, v138);
  objc_msgSend_setPageCount_(v82, v139, v192, v140, v141);
  if (v197)
  {
    v145 = objc_msgSend_layoutCellIDForModelCellID_(self, v142, v193, v143, v144);
    objc_msgSend_setLayoutMergeRange_(v82, v146, v145, v194, v147);
  }

  else
  {
    objc_msgSend_setLayoutMergeRange_(v82, v142, 0x7FFF7FFFFFFFLL, 0, v144);
  }

  objc_msgSend_measureWithLayoutState_(self, v148, v82, v149, v150);
  v155 = objc_msgSend_keyVal(v82, v151, v152, v153, v154);

  if ((flagsCopy3 & 2) != 0 && v155)
  {
    v160 = objc_msgSend_dupContentCache(self, v156, v157, v158, v159);
    v165 = objc_msgSend_wpColumn(v82, v161, v162, v163, v164);
    v170 = objc_msgSend_keyVal(v82, v166, v167, v168, v169);
    objc_msgSend_setObject_forKey_(v160, v171, v165, v170, v172);
  }

  if (objc_msgSend_layoutCacheFlags(v82, v156, v157, v158, v159))
  {
    v177 = objc_msgSend_cellIDToWPColumnCache(self, v173, v174, v175, v176);
    v182 = objc_msgSend_wpColumn(v82, v178, v179, v180, v181);
    v186 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v183, (drawing.row << 15) | drawing.column, v184, v185);
    objc_msgSend_setObject_forKey_(v177, v187, v182, v186, v188);
  }

  v189 = objc_msgSend_wpColumn(v82, v173, v174, v175, v176);

  v42 = v189;
LABEL_63:

  return v42;
}

- (void)queueCellForValidation:(TSUCellRect)validation cell:(id)cell textStyleHandle:(id)handle modelMergeRange:(TSUCellRect)range wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding prop:(BOOL)self0 layoutCacheFlags:(int)self1 validationBundle:(id)self2 layoutTask:(id)self3
{
  size = range.size;
  origin = range.origin;
  v16 = validation.size;
  v17 = validation.origin;
  cellCopy = cell;
  handleCopy = handle;
  paddingCopy = padding;
  bundleCopy = bundle;
  taskCopy = task;
  v19 = objc_alloc_init(TSTCellStateForLayout);
  v23 = objc_msgSend_layoutCellIDForModelCellID_(self, v20, v17, v21, v22);
  v27 = v23;
  v28 = *&origin & 0xFFFF00000000;
  if (HIDWORD(size) != 0 && size != 0)
  {
    v29 = v23;
  }

  else
  {
    v29 = origin;
  }

  v30 = v28 == 0x7FFF00000000;
  v31 = v28 != 0x7FFF00000000 && HIDWORD(size) != 0 && size != 0;
  if (v30)
  {
    v32 = origin;
  }

  else
  {
    v32 = v29;
  }

  v33 = origin.row != 0x7FFFFFFF && v31;
  if (origin.row == 0x7FFFFFFF)
  {
    objc_msgSend_setModelCellID_(v19, v24, v17, v25, v26, origin);
  }

  else
  {
    objc_msgSend_setModelCellID_(v19, v24, v17, v25, v26, v32);
  }

  objc_msgSend_setCell_(v19, v34, cellCopy, v35, v36);
  v41 = objc_msgSend_cellContents(v19, v37, v38, v39, v40);
  v46 = objc_msgSend_length(v41, v42, v43, v44, v45);

  v195 = objc_msgSend_tableInfo(self, v47, v48, v49, v50);
  if (v46)
  {
    objc_opt_class();
    v56 = objc_msgSend_cellContents(v19, v52, v53, v54, v55);
    v57 = TSUDynamicCast();
    flagsCopy = flags;

    if (v57)
    {
      v62 = objc_msgSend_hasAttachmentsThatChangeWithPageNumberOrPageCount(v57, v58, v59, v60, v61);
      flagsCopy2 = flags;
      if (v62)
      {
        flagsCopy2 = 0;
      }

      flagsCopy = flagsCopy2;
    }
  }

  else
  {
    flagsCopy = 10;
  }

  objc_msgSend_contentWidthForCellRange_validationBundle_(self, v51, v27, v16, bundleCopy);
  v65 = v64;
  v72 = 1.79769313e308;
  if (!(v33 | (objc_msgSend_valueType(cellCopy, v66, v67, v68, v69) != 9)) && !wrap)
  {
    v199[0] = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v195, v70, cellCopy, v17, 0, v199, 0, 0);
    v77 = v199[0];
    if (v199[0] == 4)
    {
      v78 = objc_msgSend_tableStyle(v195, v73, v74, v75, v76);
      v82 = objc_msgSend_intValueForProperty_(v78, v79, 798, v80, v81);

      v77 = v82 == 1;
      v199[0] = v77;
    }

    v83 = v16 & 0xFFFFFFFF00000000;
    if (v77 == 2)
    {
      v87 = objc_msgSend_numberOfColumns(self, v73, v74, v75, v76);
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v88, v17, v83 | v87, 0);
    }

    else if (v77 == 1)
    {
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v73, v17, (v16 + WORD2(v17)) | v83, 0);
    }

    else if (v77)
    {
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v73, v17, v16, 0);
    }

    else
    {
      v84 = (objc_msgSend_numberOfColumns(self, v73, v74, v75, v76) - WORD2(v17)) | v83;
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v85, v17, v84, 0);
    }

    v72 = v86;
  }

  v93 = 0.0;
  if (objc_msgSend_p_containsGradientFillThatFillsContainerInCell_cellContents_(self, v70, cellCopy, 0, v71))
  {
    objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, v89, v27, v16, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    v93 = v94;
  }

  if (wrap)
  {
    v95 = 8.0;
  }

  else
  {
    v95 = v65;
  }

  if (wrap)
  {
    v96 = v65;
  }

  else
  {
    v96 = 4294967300.0;
  }

  if (objc_msgSend_dynamicRepResize(self, v89, v90, v91, v92) && objc_msgSend_numberOfPopulatedCells(v195, v97, v98, v99, v100) <= 0x19)
  {
    if (v95 < 0.0)
    {
      v95 = 0.0;
    }

    if (v93 < 0.0)
    {
      v93 = 0.0;
    }

    if (v96 < 0.0)
    {
      v96 = 0.0;
    }
  }

  v101 = objc_msgSend_cellIDToWPColumnCache(self, v97, v98, v99, v100);
  v102 = v17 << 15;
  v103 = WORD2(v17);
  v107 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v104, v102 | WORD2(v17), v105, v106);
  v111 = objc_msgSend_objectForKey_(v101, v108, v107, v109, v110);

  if (v111)
  {
    if (sub_2213A5824(v111) == v65)
    {
      goto LABEL_56;
    }

    v119 = objc_msgSend_cellIDToWPColumnCache(self, v115, v116, v117, v118);
    v123 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v120, v102 | v103, v121, v122);
    objc_msgSend_removeObjectForKey_(v119, v124, v123, v125, v126);
  }

  objc_msgSend_setTextStyleHandle_(v19, v112, handleCopy, v113, v114);
  objc_msgSend_setCellPropsRowHeight_(v19, v127, prop, v128, v129);
  v134 = objc_msgSend_styleProvidingSource(self, v130, v131, v132, v133);
  objc_msgSend_setNeedWPColumn_(v19, v135, v134 != 0, v136, v137);

  objc_msgSend_setCellWraps_(v19, v138, wrap, v139, v140);
  objc_msgSend_edgeInsetsFromPadding_(self, v141, paddingCopy, v142, v143);
  objc_msgSend_setPaddingInsets_(v19, v144, v145, v146, v147);
  objc_msgSend_setVerticalAlignment_(v19, v148, alignment, v149, v150);
  objc_msgSend_setMinSize_(v19, v151, v152, v153, v154, v95, v93);
  objc_msgSend_setMaxSize_(v19, v155, v156, v157, v158, v96, 50000.0);
  objc_msgSend_setMaxWidthForChildren_(v19, v159, v160, v161, v162, v72);
  objc_msgSend_setLayoutMergeRange_(v19, v163, v191, size, v164);
  objc_msgSend_setLayoutCacheFlags_(v19, v165, flagsCopy, v166, v167);
  objc_msgSend_addCellState_(taskCopy, v168, v19, v169, v170);
  v175 = objc_msgSend_numberOfCellStates(taskCopy, v171, v172, v173, v174);
  if (v175 >= objc_msgSend_numCellsPerTask(self, v176, v177, v178, v179))
  {
    v184 = objc_msgSend_copy(taskCopy, v180, v181, v182, v183);
    objc_msgSend_clear(taskCopy, v185, v186, v187, v188);
    objc_msgSend_processLayoutTask_validationBundle_(self, v189, v184, bundleCopy, v190);
  }

LABEL_56:
}

- (void)measureWithLayoutState:(id)state
{
  stateCopy = state;
  v9 = objc_msgSend_cell(stateCopy, v5, v6, v7, v8);
  v345 = v9;
  v14 = objc_msgSend_modelCellID(stateCopy, v10, v11, v12, v13);
  objc_msgSend_minSize(stateCopy, v15, v16, v17, v18);
  v343 = v19;
  v21 = v20;
  objc_msgSend_maxSize(stateCopy, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;
  v34 = objc_msgSend_cellWraps(stateCopy, v30, v31, v32, v33);
  v39 = objc_msgSend_needWPColumn(stateCopy, v35, v36, v37, v38);
  v344 = objc_msgSend_tableInfo(self, v40, v41, v42, v43);
  objc_opt_class();
  v48 = objc_msgSend_cellContents(stateCopy, v44, v45, v46, v47);
  v347 = TSUDynamicCast();

  if ((objc_msgSend_hasContent(stateCopy, v49, v50, v51, v52) & 1) == 0)
  {

    v61 = objc_msgSend_layoutCacheFlags(stateCopy, v57, v58, v59, v60);
    v347 = @"Z";
    objc_msgSend_setLayoutCacheFlags_(stateCopy, v62, v61 & 0xFFFFFFFC, v63, v64);
  }

  *v350 = 0;
  v65 = objc_msgSend_textStyleHandle(stateCopy, v53, v54, v55, v56);
  v70 = objc_msgSend_textStyle(v65, v66, v67, v68, v69);

  v346 = objc_msgSend_p_resolvedTextStyleForCell_atCellID_textStyle_outNaturalAlignment_outCellDirection_(self, v71, v9, v14, v70, &v350[1], v350);

  if (objc_msgSend_valueType(v9, v72, v73, v74, v75) == 9)
  {
    dynamicSuppressingConditionalStylesCellID = self->_dynamicSuppressingConditionalStylesCellID;
    if (dynamicSuppressingConditionalStylesCellID.row != v14 || ((*&dynamicSuppressingConditionalStylesCellID ^ v14) & 0xFFFF00000000) != 0)
    {
      v81 = objc_msgSend_richTextStorageForLayout(v9, v76, v77, v78, v79);
    }

    else
    {
      v81 = objc_msgSend_richTextValue(v9, v76, v77, v78, v79);
    }

    v85 = v81;
    if (v81 && !objc_msgSend_length(v81, v76, v82, v83, v84))
    {

      v85 = 0;
      v347 = @"X";
    }
  }

  else
  {
    v85 = 0;
  }

  if (v34)
  {
    v86 = 3;
  }

  else
  {
    v86 = 15;
  }

  if (v21 == v29 && v21 < 50000.0)
  {
    v86 &= ~2u;
  }

  v342 = v86;
  if (v85)
  {
    v88 = 1;
  }

  else
  {
    v88 = v39;
  }

  if ((v88 & 1) == 0)
  {
    v89 = v346;
    v98 = objc_msgSend_styleProvidingSource(self, v90, v91, v92, v93);
    v99 = v89;
    if (v98)
    {
      v100 = objc_msgSend_styleProvidingSource(self, v94, v95, v96, v97);
      v101 = objc_opt_respondsToSelector();

      v99 = v89;
      if (v101)
      {
        v104 = objc_msgSend_styleProvidingSource(self, v94, v102, v103, v97);
        v109 = objc_msgSend_styleProviderForCells(v104, v105, v106, v107, v108);

        v99 = v89;
        if (v109)
        {
          v99 = objc_msgSend_cellTextStyleForStyle_(v109, v110, v89, v111, v112);
        }
      }
    }

    v113 = objc_msgSend_fontInfoForTextStyle_withString_(self->_fontInfoCache, v94, v99, v347, v97);
    if (v113)
    {

      if (!v347)
      {
        v118 = MEMORY[0x277D81150];
        v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "[TSTLayoutEngine measureWithLayoutState:]", v116, v117);
        v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v121, v122);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v124, v119, v123, 6910, 0, "invalid nil value for '%{public}s'", "stringContents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127, v128);
      }

      objc_msgSend_paddingInsets(stateCopy, v114, v115, v116, v117);
      v136 = 4294967300.0;
      if (v34)
      {
        v136 = v27;
      }

      v349[0] = v132;
      v349[1] = v133;
      v349[2] = v134;
      v349[3] = v135;
      objc_msgSend_columnLayoutWidthForBodyWidth_insets_(MEMORY[0x277D80F70], v129, v349, v130, v131, v136);
      v138 = v137;
      v348 = 0.0;
      shouldFastPathMeasureFitWidth = objc_msgSend_shouldFastPathMeasureFitWidth(stateCopy, v139, v140, v141, v142);
      v146 = shouldFastPathMeasureFitWidth;
      if (shouldFastPathMeasureFitWidth)
      {
        objc_msgSend_heightForString_width_outFitWidth_(v113, v144, v347, &v348, v145, v138);
      }

      else
      {
        objc_msgSend_heightForString_width_outFitWidth_(v113, v144, v347, 0, v145, v138);
      }

      if (v146)
      {
        objc_msgSend_paddingInsets(stateCopy, v147, v148, v149, v150);
        v152 = v151;
        objc_msgSend_paddingInsets(stateCopy, v153, v154, v155, v156);
        v348 = v152 + v157 + v348;
      }

      objc_msgSend_setSizeOfText_(stateCopy, v147, v148, v149, v150);
      v346 = v99;
      goto LABEL_54;
    }
  }

  v158 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_naturalAlignment_cellDirection_(self, v76, v345, v14, v346, v350[1], v350[0]);
  if ((objc_msgSend_layoutCacheFlags(stateCopy, v159, v160, v161, v162) & 0x10) != 0)
  {
    v167 = objc_msgSend_blackColor(MEMORY[0x277D81180], v163, v164, v165, v166);
    objc_msgSend_setTextColorOverride_(v158, v168, v167, v169, v170);
  }

  if ((objc_msgSend_layoutCacheFlags(stateCopy, v163, v164, v165, v166) & 8) == 0 || (objc_msgSend_cell(stateCopy, v171, v172, v173, v174), v175 = objc_claimAutoreleasedReturnValue(), v180 = objc_msgSend_valueType(v175, v176, v177, v178, v179), v175, v180 == 9) || ((v185 = [TSTLayoutContentCachedKey alloc], !v34) ? (v186 = v343) : (v186 = v27), objc_msgSend_paragraphStyle(v158, v181, v182, v183, v184), v341 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cell(stateCopy, v187, v188, v189, v190), v339 = v185, v340 = objc_claimAutoreleasedReturnValue(), v338 = objc_msgSend_valueType(v340, v191, v192, v193, v194), objc_msgSend_paddingInsets(stateCopy, v195, v196, v197, v198), v200 = v199, v202 = v201, v204 = v203, v206 = v205, v211 = objc_msgSend_verticalAlignment(stateCopy, v207, v208, v209, v210), objc_msgSend_tableStyle(v344, v212, v213, v214, v215), v216 = objc_claimAutoreleasedReturnValue(), v220 = objc_msgSend_intValueForProperty_(v216, v217, 798, v218, v219), v225 = objc_msgSend_naturalAlignment(v158, v221, v222, v223, v224), objc_msgSend_styleProvidingSource(self, v226, v227, v228, v229), v230 = objc_claimAutoreleasedReturnValue(), v232 = objc_msgSend_initWithString_width_height_paragraphStyle_cellWraps_valueType_paddingInsets_verticalAlignment_writingDirection_naturalAlignment_styleProvidingSource_(v339, v231, v347, v341, v34, v338, v211, v220, v186, v21, v200, v202, v204, v206, v225, v230), v230, v216, v340, v341, objc_msgSend_setKeyVal_(stateCopy, v233, v232, v234, v235), objc_msgSend_dupContentCache(self, v236, v237, v238, v239), v240 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v240, v241, v232, v242, v243), v113 = objc_claimAutoreleasedReturnValue(), v240, v232, !v113))
  {
    objc_opt_class();
    v251 = objc_msgSend_context(v344, v247, v248, v249, v250);
    v256 = objc_msgSend_documentObject(v251, v252, v253, v254, v255);
    v257 = TSUCheckedDynamicCast();

    v258 = [TSTTextEngineDelegate alloc];
    objc_msgSend_paddingInsets(stateCopy, v259, v260, v261, v262);
    v264 = v263;
    v266 = v265;
    v268 = v267;
    v270 = v269;
    v275 = objc_msgSend_verticalAlignment(stateCopy, v271, v272, v273, v274);
    v280 = objc_msgSend_typesettingLocale(v257, v276, v277, v278, v279);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v257, v281, v282, v283, v284);
    v290 = objc_msgSend_styleProvidingSource(self, v286, v287, v288, v289);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v258, v291, v275, v280, shouldHyphenate, v290, v264, v266, v268, v270);

    objc_msgSend_maxWidthForChildren(stateCopy, v293, v294, v295, v296);
    objc_msgSend_setMaxWidthForChildren_(shouldHyphenate_styleProvidingSource, v297, v298, v299, v300);
    objc_msgSend_setDelegate_(v158, v301, shouldHyphenate_styleProvidingSource, v302, v303);
    v308 = *MEMORY[0x277CBF348];
    v309 = *(MEMORY[0x277CBF348] + 8);
    if (v85)
    {
      v310 = objc_msgSend_pageNumber(stateCopy, v304, v305, v306, v307);
      v315 = objc_msgSend_pageCount(stateCopy, v311, v312, v313, v314);
      objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(v158, v316, v85, v310, v315, v342, v343, v21, v27, v29, v308, v309);
    }

    else
    {
      objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v158, v304, v347, 0, 5, v342, v343, v21, v27, v29, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    }
    v113 = ;
    objc_msgSend_setDelegate_(v158, v317, 0, v318, v319);
  }

  objc_msgSend_setWpColumn_(stateCopy, v244, v113, v245, v246);
  v320 = sub_2213A5824(v113);
  v322 = v321;
  objc_msgSend_paddingInsets(stateCopy, v323, v324, v325, v326);
  v328 = v327;
  objc_msgSend_paddingInsets(stateCopy, v329, v330, v331, v332);
  objc_msgSend_setSizeOfText_(stateCopy, v334, v335, v336, v337, v320 + v328 + v333, v322);

LABEL_54:
}

- (void)processLayoutTask:(id)task validationBundle:(id)bundle
{
  taskCopy = task;
  bundleCopy = bundle;
  if (objc_msgSend_numberOfCellStates(taskCopy, v8, v9, v10, v11))
  {
    objc_msgSend_loadAllLazyReferences(self->_tableInfo, v12, v13, v14, v15);
    dispatch_group_enter(self->_layoutInFlight);
    layoutMeasureQueue = self->_layoutMeasureQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2213B2EEC;
    v20[3] = &unk_278462620;
    v21 = taskCopy;
    selfCopy = self;
    v23 = bundleCopy;
    objc_msgSend_performAsync_(layoutMeasureQueue, v17, v20, v18, v19);
  }
}

- (void)waitForLayoutToComplete:(id)complete
{
  completeCopy = complete;
  dispatch_group_wait(self->_layoutInFlight, 0xFFFFFFFFFFFFFFFFLL);
  widthHeightCache = self->_widthHeightCache;
  v9 = objc_msgSend_widthHeightCollections(completeCopy, v5, v6, v7, v8);
  objc_msgSend_setFittingHeightsFromCollectionArray_(widthHeightCache, v10, v9, v11, v12);
}

- (void)setMaxConcurrentTasks:(unsigned int)tasks
{
  self->_maxConcurrentTasks = tasks;
  v4 = objc_alloc(MEMORY[0x277D81378]);
  v8 = objc_msgSend_initWithLimit_(v4, v5, self->_maxConcurrentTasks, v6, v7);
  layoutMeasureQueue = self->_layoutMeasureQueue;
  self->_layoutMeasureQueue = v8;

  v10 = objc_alloc(MEMORY[0x277D81378]);
  v14 = objc_msgSend_initWithLimit_(v10, v11, self->_maxConcurrentTasks, v12, v13);
  layoutValidateQueue = self->_layoutValidateQueue;
  self->_layoutValidateQueue = v14;
}

- (double)unwrappedFittingWidthsForColumnInCellRegionWorker:(id)worker
{
  workerCopy = worker;
  v9 = objc_msgSend_boundingTopLeftCellID(workerCopy, v5, v6, v7, v8);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v14 = objc_msgSend_tableInfo(self, v10, v11, v12, v13);
  v19 = objc_msgSend_boundingCellRange(workerCopy, v15, v16, v17, v18);
  v21 = v20;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2213B3280;
  v31[3] = &unk_278464090;
  v22 = v14;
  v32 = v22;
  selfCopy = self;
  v34 = &v35;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v23, v19, v21, 2, 0x400000, v31);
  v25 = v36[3];
  if (v25 > 8.0)
  {
    v26 = WORD2(v9);
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v24, v26, 0, 2147483646);
    v36[3] = v27 * 0.5 + v36[3];
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v28, (v26 + 1), 0, 2147483646);
    v25 = ceil(v29 * 0.5 + v36[3]);
    v36[3] = v25;
  }

  _Block_object_dispose(&v35, 8);
  return v25;
}

- (id)unwrappedFittingWidthsForColumnsInCellRegion:(id)region
{
  regionCopy = region;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4812000000;
  v45 = sub_2213B3A78;
  v46 = sub_2213B3A9C;
  v47 = &unk_22188E88F;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v9 = objc_msgSend_boundingBottomRightCellID(regionCopy, v5, v6, v7, v8);
  v41 = 0xBFF0000000000000;
  sub_2213A1E8C(&__p, WORD2(v9) + 1, &v41);
  v14 = (objc_msgSend_boundingBottomRightCellID(regionCopy, v10, v11, v12, v13) >> 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213B3AB4;
  block[3] = &unk_2784640B8;
  v15 = regionCopy;
  v38 = v15;
  selfCopy = self;
  v40 = &v42;
  dispatch_apply(v14 + 1, 0, block);
  v24 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v16, v17, v18, v19);
  v25 = v43;
  v26 = v43[6];
  if (v43[7] != v26)
  {
    v27 = 0;
    do
    {
      if (*(v26 + 8 * v27) > 0.0)
      {
        v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v20, v21, v22, v23);
        v32 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v29, v27, v30, v31);
        objc_msgSend_setObject_forKey_(v24, v33, v28, v32, v34);

        v25 = v43;
      }

      ++v27;
      v26 = v25[6];
    }

    while (v27 < (v25[7] - v26) >> 3);
  }

  v35 = objc_msgSend_copy(v24, v20, v21, v22, v23);

  _Block_object_dispose(&v42, 8);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  return v35;
}

- (id)p_validationBundleForRegionToValidate:(id)validate
{
  validateCopy = validate;
  v5 = [TSTLayoutValidationBundle alloc];
  v9 = objc_msgSend_initWithTableInfo_(v5, v6, self->_tableInfo, v7, v8);
  v14 = objc_msgSend_intersectingColumnsIndexSet(validateCopy, v10, v11, v12, v13);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2213B3C88;
  v22[3] = &unk_27845DE60;
  v22[4] = self;
  v15 = v9;
  v23 = v15;
  objc_msgSend_enumerateIndexesUsingBlock_(v14, v16, v22, v17, v18);
  v19 = v23;
  v20 = v15;

  return v15;
}

- (void)enqueueBootstrapChangeDescriptors
{
  v6 = objc_msgSend_cellRange(self, a2, v2, v3, v4);
  v8 = v7;
  objc_msgSend_addChangeDescriptorWithType_andCellRange_andStrokeRange_(self, v7, 23, v6, v7, v6, v7);

  objc_msgSend_addChangeDescriptorWithType_andCellRange_andStrokeRange_(self, v9, 2, v6, v8, v6, v8);
}

- (id)p_resolvedTextStyleForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style outNaturalAlignment:(int *)alignment outCellDirection:(int *)direction
{
  cellCopy = cell;
  styleCopy = style;
  v150 = objc_msgSend_tableInfo(self, v14, v15, v16, v17);
  if (!styleCopy)
  {
    styleCopy = objc_msgSend_textStyle(cellCopy, v18, v19, v20, v21);
    if (!styleCopy)
    {
      styleCopy = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(v150, v18, *&d, 1, 0);
    }
  }

  if (objc_msgSend_valueType(cellCopy, v18, v19, v20, v21) == 2 || objc_msgSend_valueType(cellCopy, v22, v23, v24, v25) == 10)
  {
    objc_msgSend_underlyingDoubleValue(cellCopy, v22, v23, v24, v25);
    if (v26 < 0.0)
    {
      v27 = objc_msgSend_currentFormatNegativeStyle(cellCopy, v22, v23, v24, v25);
      v32 = objc_msgSend_currentFormatUsesAccountingStyle(cellCopy, v28, v29, v30, v31);
      v33 = (v27 & 0xFD) == 1 ? v32 : 1;
      if ((v33 & 1) == 0)
      {
        v34 = objc_msgSend_copyPropertyMap(styleCopy, v22, v23, v24, v25);
        v39 = objc_msgSend_redColor(MEMORY[0x277D801F8], v35, v36, v37, v38);
        objc_msgSend_setObject_forProperty_(v34, v40, v39, 48, v41);

        v45 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v42, v34, v43, v44);

        styleCopy = v45;
      }
    }
  }

  v50 = objc_msgSend_hasConditionalStyle(cellCopy, v22, v23, v24, v25) ^ 1;
  if (!cellCopy)
  {
    LOBYTE(v50) = 1;
  }

  if ((v50 & 1) == 0 && objc_msgSend_conditionalStyleAppliedRule(cellCopy, v46, v47, v48, v49) != 15 && objc_msgSend_valueType(cellCopy, v46, v47, v48, v49) != 9)
  {
    v51 = objc_msgSend_conditionalStyle(cellCopy, v46, v47, v48, v49);
    v56 = objc_msgSend_conditionalStyleAppliedRule(cellCopy, v52, v53, v54, v55);
    v60 = objc_msgSend_ruleAtIndex_(v51, v57, v56, v58, v59);
    v65 = objc_msgSend_textStyle(v60, v61, v62, v63, v64);

    if (v65)
    {
      v149 = v51;
      v70 = objc_msgSend_copyPropertyMap(styleCopy, v66, v67, v68, v69);
      v75 = objc_msgSend_propertyMap(v65, v71, v72, v73, v74);
      objc_msgSend_addValuesFromPropertyMap_(v70, v76, v75, v77, v78);

      v82 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v79, v70, v80, v81);

      styleCopy = v82;
      v51 = v149;
    }
  }

  IsNumberOrTime = objc_msgSend_valueIsNumberOrTime(cellCopy, v46, v47, v48, v49);
  if (IsNumberOrTime)
  {
    v88 = objc_msgSend_formattedDataParagraphStylePropertyMapForCell_atCellID_(self, v83, cellCopy, *&d, v85);
    if (v88 || (objc_msgSend_valueType(cellCopy, v83, v87, v84, v85) == 5 || objc_msgSend_valueType(cellCopy, v83, v89, v84, v85) == 7) && (objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v83, v89, v84, v85), v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setIntValue_forProperty_(v88, v90, 0xFFFFFFFFLL, 44, v91), v88))
    {
      v92 = objc_msgSend_copyPropertyMap(styleCopy, v83, v87, v84, v85);
      objc_msgSend_addValuesFromPropertyMap_(v92, v93, v88, v94, v95);
      v99 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v96, v92, v97, v98);

      styleCopy = v99;
    }
  }

  if (alignment && direction)
  {
    v151 = 4;
    v104 = objc_msgSend_intValueForProperty_(styleCopy, v83, 44, v84, v85);
    if (v104 == -1)
    {
      v105 = objc_msgSend_tableStyle(v150, v100, v101, v102, v103);
      v109 = objc_msgSend_intValueForProperty_(v105, v106, 798, v107, v108);

      v104 = v109 == 1;
    }

    if ((objc_msgSend_isCategoryGroupValueCell_(self, v100, *&d, v102, v103) & 1) != 0 || objc_msgSend_isCategoryGroupValueLabelCell_(self, v110, *&d, v112, v113))
    {
      v114 = objc_msgSend_tableStyle(v150, v110, v111, v112, v113);
      v118 = objc_msgSend_intValueForProperty_(v114, v115, 798, v116, v117);

      v151 = v118 == 1;
      if (objc_msgSend_intValueForProperty_(styleCopy, v119, 86, v120, v121) != v151)
      {
        v126 = objc_msgSend_copyPropertyMap(styleCopy, v122, v123, v124, v125);
        objc_msgSend_setIntValue_forProperty_(v126, v127, v151, 86, v128);
        v132 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v129, v126, v130, v131);

        styleCopy = v132;
      }

      goto LABEL_38;
    }

    if (objc_msgSend_isCategoryLabelCell_(self, v110, *&d, v112, v113) || objc_msgSend_isPivotTrailingAligned_(self, v133, *&d, v134, v135))
    {
      v140 = v104 != 1;
    }

    else
    {
      if (objc_msgSend_isAPivotTable(self->_tableInfo, v136, v137, v138, v139) && (objc_msgSend_numberOfHeaderRows(self, v142, v143, v144, v145) > d.row || objc_msgSend_numberOfHeaderColumns(self, v142, v146, v147, v148) > d.column))
      {
        objc_msgSend_modifiedTextPropertiesForCategoryOrPivotCellAtCellID_wraps_padding_alignment_(self->_tableInfo, v142, *&d, 0, 0, &v151);
        goto LABEL_38;
      }

      if (IsNumberOrTime)
      {
        v140 = 1;
      }

      else
      {
        if (objc_msgSend_valueType(cellCopy, v142, v143, v144, v145) == 9)
        {
          goto LABEL_38;
        }

        v140 = v104 == 1;
      }
    }

    v151 = v140;
LABEL_38:
    *alignment = v151;
    *direction = v104;
  }

  return styleCopy;
}

- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style naturalAlignment:(int)alignment cellDirection:(int)direction
{
  v7 = *&direction;
  v8 = *&alignment;
  styleCopy = style;
  v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
  v21 = objc_msgSend_defaultColumnStyle(self, v17, v18, v19, v20);
  objc_opt_class();
  v26 = objc_msgSend_context(v16, v22, v23, v24, v25);
  v31 = objc_msgSend_documentObject(v26, v27, v28, v29, v30);
  v32 = TSUCheckedDynamicCast();

  v33 = objc_alloc(MEMORY[0x277D80F70]);
  v38 = objc_msgSend_stylesheet(v32, v34, v35, v36, v37);
  v40 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v33, v39, v38, styleCopy, 0, v21, v8, v7);

  if (objc_msgSend_isDynamicallyChangingFontColorOfCellID_(self, v41, *&d, v42, v43))
  {
    v48 = objc_msgSend_dynamicFontColor(self, v44, v45, v46, v47);
    objc_msgSend_setTextColorOverride_(v40, v49, v48, v50, v51);
  }

  return v40;
}

- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style
{
  cellCopy = cell;
  styleCopy = style;
  v15 = 0;
  v11 = objc_msgSend_p_resolvedTextStyleForCell_atCellID_textStyle_outNaturalAlignment_outCellDirection_(self, v10, cellCopy, *&d, styleCopy, &v15 + 4, &v15);

  v13 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_naturalAlignment_cellDirection_(self, v12, cellCopy, *&d, v11, HIDWORD(v15), v15);
  return v13;
}

- (id)formattedDataParagraphStylePropertyMapForCell:(id)cell atCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  v11 = objc_msgSend_formattedValue(cellCopy, v7, v8, v9, v10);
  objc_msgSend_formatType(cellCopy, v12, v13, v14, v15);
  v20 = objc_msgSend_locale(cellCopy, v16, v17, v18, v19);
  v21 = TSWPGetDefaultParagraphDirectionForFormattedText();

  if (objc_msgSend_currentFormatUsesAccountingStyle(cellCopy, v22, v23, v24, v25))
  {
    v30 = objc_msgSend_tableInfo(self, v26, v27, v28, v29);
    dCopy = objc_msgSend_mergeRangeAtCellID_(v30, v31, *&d, v32, v33);
    v36 = v35;

    if (dCopy == 0x7FFFFFFF || (dCopy & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v36) || !v36)
    {
      v36 = 0x100000001;
      dCopy = d;
    }

    objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v37, dCopy, v36, 0);
    v39 = v38;
    v44 = objc_msgSend_tab(MEMORY[0x277D80F58], v40, v41, v42, v43);
    v49 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v45, v46, v47, v48);
    objc_msgSend_paddingForCellID_(self, v50, *&d, v51, v52);
    v58 = v39 - v57;
    if (v39 - v57 > 4.0)
    {
      objc_msgSend_setPosition_(v44, v53, v54, v55, v56, v39 + -4.0 - v57);
      objc_msgSend_setAlignment_(v44, v59, 2, v60, v61);
      v66 = objc_msgSend_tabs(MEMORY[0x277D80F60], v62, v63, v64, v65);
      objc_msgSend_insertTab_(v66, v67, v44, v68, v69);
      objc_msgSend_setObject_forProperty_(v49, v70, v66, 84, v71);
    }

    objc_msgSend_setIntValue_forProperty_(v49, v53, 0, 86, v56, v58);
    objc_msgSend_setIntValue_forProperty_(v49, v72, 0, 44, v73);
  }

  else if (v21 == -1)
  {
    v49 = 0;
  }

  else
  {
    v49 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v26, v27, v28, v29);
    objc_msgSend_setIntValue_forProperty_(v49, v74, v21, 44, v75);
  }

  return v49;
}

- (UIEdgeInsets)edgeInsetsFromPadding:(id)padding
{
  paddingCopy = padding;
  objc_msgSend_topInset(paddingCopy, v4, v5, v6, v7);
  v9 = v8;
  objc_msgSend_leftInset(paddingCopy, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_bottomInset(paddingCopy, v16, v17, v18, v19);
  v21 = v20;
  objc_msgSend_rightInset(paddingCopy, v22, v23, v24, v25);
  if (v15 < 2.0)
  {
    v15 = 2.0;
  }

  if (v26 >= 2.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 2.0;
  }

  v28 = v9;
  v29 = v15;
  v30 = v21;
  v31 = v27;
  result.right = v31;
  result.bottom = v30;
  result.left = v29;
  result.top = v28;
  return result;
}

- (UIEdgeInsets)paddingForCellID:(TSUCellCoord)d
{
  if ((d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000 || (objc_msgSend_tableInfo(self, a2, *&d, v3, v4), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellStyleAtCellID_isDefault_(v7, v8, *&d, 0, v9), v10 = objc_claimAutoreleasedReturnValue(), v7, !v10)) && (objc_msgSend_tableInfo(self, a2, *&d, v3, v4), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(v11, v12, *&d, 1, 0), v10 = objc_claimAutoreleasedReturnValue(), v11, !v10))
  {
    v13 = 0;
    objc_msgSend_edgeInsetsFromPadding_(self, a2, 0, v3, v4);
  }

  else
  {
    v13 = objc_msgSend_valueForProperty_(v10, a2, 904, v3, v4);
    objc_msgSend_edgeInsetsFromPadding_(self, v14, v13, v15, v16);
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (UIEdgeInsets)defaultPaddingForCellID:(TSUCellCoord)d
{
  v7 = objc_msgSend_tableInfo(self, a2, *&d, v3, v4);
  v9 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(v7, v8, *&d, 1, 0);

  if (v9)
  {
    v13 = objc_msgSend_valueForProperty_(v9, v10, 904, v11, v12);
    objc_msgSend_edgeInsetsFromPadding_(self, v14, v13, v15, v16);
  }

  else
  {
    v13 = 0;
    objc_msgSend_edgeInsetsFromPadding_(self, v10, 0, v11, v12);
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (double)fontHeightOfParagraphStyle:(id)style
{
  objc_msgSend_heightForTextStyle_(self->_paraStyleToHeightCache, a2, style, v3, v4);
  v8 = v7;
  if (v7 <= 0.0)
  {
    objc_opt_class();
    v12 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v9, 0, v10, v11);
    v13 = TSUCheckedDynamicCast();

    objc_opt_class();
    v18 = objc_msgSend_tableInfo(self, v14, v15, v16, v17);
    v23 = objc_msgSend_context(v18, v19, v20, v21, v22);
    v28 = objc_msgSend_documentObject(v23, v24, v25, v26, v27);
    v29 = TSUCheckedDynamicCast();

    v30 = objc_alloc(MEMORY[0x277D80F70]);
    v35 = objc_msgSend_stylesheet(v29, v31, v32, v33, v34);
    v37 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v30, v36, v35, style, 0, v13, 0, 0);

    v38 = [TSTTextEngineDelegate alloc];
    v39 = *MEMORY[0x277D81428];
    v40 = *(MEMORY[0x277D81428] + 8);
    v41 = *(MEMORY[0x277D81428] + 16);
    v42 = *(MEMORY[0x277D81428] + 24);
    v47 = objc_msgSend_typesettingLocale(v29, v43, v44, v45, v46);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v29, v48, v49, v50, v51);
    v57 = objc_msgSend_styleProvidingSource(self, v53, v54, v55, v56);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v38, v58, 0, v47, shouldHyphenate, v57, v39, v40, v41, v42);

    objc_msgSend_setMaxWidthForChildren_(shouldHyphenate_styleProvidingSource, v60, v61, v62, v63, 1.79769313e308);
    objc_msgSend_setDelegate_(v37, v64, shouldHyphenate_styleProvidingSource, v65, v66);
    v68 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v37, v67, @"W", 0, 5, 15, 8.0, 0.0, 4294967300.0, 50000.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    v69 = sub_2213A5824(v68);
    v8 = v70;
    objc_msgSend_setDelegate_(v37, v71, 0, v72, v73, v69);
    objc_msgSend_setHeight_forTextStyle_(self->_paraStyleToHeightCache, v74, style, v75, v76, v8);
  }

  return v8;
}

- (void)clearRenderingCaches
{
  v18 = objc_msgSend_cellIDToWPColumnCache(self, a2, v2, v3, v4);
  objc_msgSend_removeAllObjects(v18, v6, v7, v8, v9);

  v19 = objc_msgSend_dupContentCache(self, v10, v11, v12, v13);
  objc_msgSend_removeAllObjects(v19, v14, v15, v16, v17);
}

- (id)indexesForSummaryRowsInRegion:(id)region
{
  v5 = objc_msgSend_indexesForSummaryRowsInRegion_(self->_tableInfo, a2, region, v3, v4);

  return v5;
}

- (id)indexesForLabelRowsInRegion:(id)region
{
  v5 = objc_msgSend_indexesForLabelRowsInRegion_(self->_tableInfo, a2, region, v3, v4);

  return v5;
}

- (id)indexesForCategoryColumnsInRegion:(id)region
{
  v5 = objc_msgSend_indexesForCategoryColumnsInRegion_(self->_tableInfo, a2, region, v3, v4);

  return v5;
}

- (BOOL)isCategoryLastSummaryRowCollapsed
{
  result = 0;
  if (objc_msgSend_isCategorized(self, a2, v2, v3, v4))
  {
    v20.origin = objc_msgSend_entireBodyRowsCellRange(self, v6, v7, v8, v9);
    v20.size = v10;
    v11 = TSUCellRect::lastRow(&v20);
    v15 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, v12, v11, v13, v14);
    if (objc_msgSend_isGroupingRowCollapsed_(self, v16, v15, v17, v18))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isLastVisibleBodyRowCategorySummaryOrLabelRow
{
  result = 0;
  if (objc_msgSend_isCategorized(self, a2, v2, v3, v4))
  {
    v20.origin = objc_msgSend_entireBodyRowsCellRange(self, v6, v7, v8, v9);
    v20.size = v10;
    v11 = TSUCellRect::lastRow(&v20);
    v15 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, v12, v11, v13, v14);
    if (objc_msgSend_isSummaryOrLabelRow_(self, v16, v15, v17, v18))
    {
      return 1;
    }
  }

  return result;
}

- (void)modifySafelyUsingBlock:(id)block
{
  blockCopy = block;
  pthread_rwlock_wrlock(&self->_contentRWLock);
  blockCopy[2]();
  pthread_rwlock_unlock(&self->_contentRWLock);
}

- (void)readSafelyUsingBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5, v6, v7);
  v9 = self->_contentReadingThreads;
  objc_sync_enter(v9);
  if (objc_msgSend_containsObject_(self->_contentReadingThreads, v10, v8, v11, v12))
  {
    objc_sync_exit(v9);

    blockCopy[2]();
  }

  else
  {
    objc_msgSend_addObject_(self->_contentReadingThreads, v13, v8, v14, v15);
    objc_sync_exit(v9);

    pthread_rwlock_rdlock(&self->_contentRWLock);
    blockCopy[2]();
    pthread_rwlock_unlock(&self->_contentRWLock);
    v16 = self->_contentReadingThreads;
    objc_sync_enter(v16);
    objc_msgSend_removeObject_(self->_contentReadingThreads, v17, v8, v18, v19);
    objc_sync_exit(v16);
  }
}

- (TSKChangeNotifier)changeNotifier
{
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);

  return WeakRetained;
}

- (TSUCellRect)dynamicFontColorCellRange
{
  size = self->_dynamicFontColorCellRange.size;
  origin = self->_dynamicFontColorCellRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicResizingColumnRange
{
  size = self->_dynamicResizingColumnRange.size;
  origin = self->_dynamicResizingColumnRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicResizingRowRange
{
  size = self->_dynamicResizingRowRange.size;
  origin = self->_dynamicResizingRowRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGRect)tableNameBounds
{
  x = self->_tableNameBounds.origin.x;
  y = self->_tableNameBounds.origin.y;
  width = self->_tableNameBounds.size.width;
  height = self->_tableNameBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSUCellRect)dynamicHidingContent
{
  size = self->_dynamicHidingContent.size;
  origin = self->_dynamicHidingContent.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicHidingRowsCols
{
  size = self->_dynamicHidingRowsCols.size;
  origin = self->_dynamicHidingRowsCols.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicHidingText
{
  size = self->_dynamicHidingText.size;
  origin = self->_dynamicHidingText.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicRemovingText
{
  size = self->_dynamicRemovingText.size;
  origin = self->_dynamicRemovingText.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicRevealingRowsCols
{
  size = self->_dynamicRevealingRowsCols.size;
  origin = self->_dynamicRevealingRowsCols.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end