@interface TSTGroupBy
+ (BOOL)validateNumberOfGroupsForGroupingColumnList:(id)list sourceTableModel:(id)model sourceBodyTract:(id)tract limit:(unint64_t)limit groupNodeCount:(unint64_t *)count;
+ (TSKUIDStruct)relativeAncestorGroupUid:(int)uid;
+ (TSKUIDStruct)tableUIDForCategoryRef:(id)ref withCalcEngine:(id)engine;
+ (id)groupByForCategoryRef:(id)ref withCalcEngine:(id)engine;
+ (id)groupByForUID:(TSKUIDStruct)d withCalcEngine:(id)engine;
+ (id)localizedFalseStringForBooleanGroupWithString:(id)string documentLocale:(id)locale;
+ (id)localizedNameForBlankGroupForDocumentLocale:(id)locale;
+ (id)localizedNameForErrorGroupForDocumentLocale:(id)locale;
+ (id)localizedTrueStringForBooleanGroupWithString:(id)string documentLocale:(id)locale;
+ (id)p_dateBySettingUnit:(unint64_t)unit value:(int64_t)value ofDate:(id)date inCalendar:(id)calendar;
+ (unsigned)aggregateTypeForAggregateLabel:(id)label locale:(id)locale;
+ (unsigned)groupingComboForGroupingType:(int64_t)type;
- (BOOL)changeCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d toBeInGroup:(id)group;
- (BOOL)createAggregatorsIfMissingAndAssert:(BOOL)assert;
- (BOOL)isBlankGroupUid:(const TSKUIDStruct *)uid;
- (BOOL)isCategorized;
- (BOOL)isErrorGroupUid:(const TSKUIDStruct *)uid;
- (BOOL)isGroupingColumn:(const TSKUIDStruct *)column;
- (BOOL)isPrePivotV2Compatible;
- (BOOL)isSpanningCategoryRef:(id)ref;
- (BOOL)isValidCategoryRef:(id)ref;
- (BOOL)p_setCell:(id)cell groupingCellPlan:(const void *)plan groupValue:(id)value toGroup:(id)group templateCell:(id)templateCell;
- (BOOL)usesPrePivotAggregateTypesOnly;
- (TSCECalculationEngine)calcEngine;
- (TSCECellRef)columnOrderChangedPrecedent;
- (TSCECellRef)hiddenStatesChangedPrecedent;
- (TSCECellRef)rowOrderChangedPrecedent;
- (TSCECellRef)rowOrderChangedPrecedentIgnoringRecalc;
- (TSCEFormulaReplacing)minion;
- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)ownerUID;
- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid;
- (TSKUIDStruct)rowUIDForLookupKey:(unsigned int)key;
- (TSKUIDStruct)topLevelGroupUid;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)bodyRowUidsForCategoryRef:(SEL)ref atRowUid:(id)uid ordered:(const TSKUIDStruct *)ordered;
- (TSTCategoryOwner)categoryOwner;
- (TSTGroupBy)initWithArchive:(const void *)archive forCategoryOwner:(id)owner unarchiver:(id)unarchiver;
- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner;
- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index;
- (TSTGroupBy)initWithGroupings:(id)groupings isEnabled:(BOOL)enabled categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index;
- (TSTGroupBySet)groupBySet;
- (TSTTableInfo)tableInfo;
- (TSTTableModel)tableModel;
- (TSUCellCoord)getNextAggFormulaCoord;
- (TSULocale)locale;
- (id).cxx_construct;
- (id)aggNodeForAggFormulaCoord:(const TSUCellCoord *)coord;
- (id)aggregateLabelForCategoryRef:(id)ref;
- (id)aggregateRefOnValue:(id)value forColumnUid:(const TSKUIDStruct *)uid forType:(unsigned __int8)type atLevel:(unsigned __int8)level;
- (id)aggregatesOnLevel:(unsigned __int8)level;
- (id)aggregatorForColumn:(TSKUIDStruct)column;
- (id)allGroupNodeUids;
- (id)anyAggregator;
- (id)categoryRefForAggregateRangeRef:(const TSCERangeRef *)ref;
- (id)cellDiffForCell:(id)cell applyingGroupCellValue:(id)value groupingType:(int64_t)type toBeInGroup:(id)group;
- (id)changeCellDiffMapToMoveRows:(const void *)rows toGroup:(id)group templateRowUID:(const TSKUIDStruct *)d;
- (id)changeForMovingBaseRows:(const void *)rows toDestGroup:(id)group;
- (id)changeForSettingGroupingColumnList:(id)list;
- (id)changeForUpdatingGroupValueOnNode:(const TSKUIDStruct *)node toValue:(id)value;
- (id)childGroupUidsForGroupUids:(id)uids;
- (id)columnAggregateListCopy;
- (id)columnAggregatesOnColumnUids:(const void *)uids;
- (id)columnNameForCategoryLevel:(unsigned __int8)level shortForm:(BOOL)form;
- (id)columnNameForCategoryRef:(id)ref;
- (id)convertCategoryRefToRelativeAncestorUid:(id)uid atRowUid:(const TSKUIDStruct *)rowUid inHostTable:(const TSKUIDStruct *)table;
- (id)createAggregatorOnColumn:(TSKUIDStruct)column;
- (id)defaultDateForGrouping;
- (id)distinctValuesAtLevel:(unsigned __int8)level;
- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level createIfMissing:(BOOL)missing;
- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension;
- (id)groupNodeForGroupUid:(TSKUIDStruct)uid;
- (id)groupNodeForGroupUuid:(id)uuid;
- (id)groupNodeForGroupValueHierarchyFromSplitter:(id)splitter startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags;
- (id)groupNodeForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level;
- (id)groupValueHierarchyRefOnValue:(id)value atLevel:(unsigned __int8)level;
- (id)groupValueHierarchyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context;
- (id)groupValueRefOnValue:(id)value atLevel:(unsigned __int8)level;
- (id)groupValueTupleForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level;
- (id)groupingColumnAtCategoryLevel:(unsigned __int8)level;
- (id)groupingColumnListCopy;
- (id)groupsAtLevel:(unsigned __int8)level;
- (id)indexesOfGroupUidsInUids:(const void *)uids;
- (id)labelForCategoryRef:(id)ref;
- (id)labelRowUIDSet;
- (id)labelRowUIDSetForCategoryLevel:(unsigned __int8)level labelRowVisibility:(unint64_t)visibility;
- (id)labelRowUidsForGroupUids:(id)uids;
- (id)linkedResolver;
- (id)p_cellDiffForFinishedCell:(id)cell;
- (id)p_columnNameForColumnUid:(const TSKUIDStruct *)uid;
- (id)prettyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context;
- (id)resolveCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid inHostTable:(const TSKUIDStruct *)table;
- (id)rowUIDSetForCategoryLevel:(unsigned __int8)level;
- (id)rowUidsForGroupUids:(id)uids;
- (id)rowsForGroupValue:(id)value atLevel:(unsigned __int8)level;
- (id)sortedValuesAtLevel:(unsigned __int8)level;
- (id)stringForCategoryRef:(id)ref hostTableUID:(const TSKUIDStruct *)d;
- (id)uidRectRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid;
- (id)valueForFormulaCoord:(const TSUCellCoord *)coord;
- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask outError:(id *)error;
- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid outError:(id *)error;
- (id)valueGridForCategoryRef:(id)ref outError:(id *)error;
- (id)viewCellTractRefForCategoryRef:(id)ref;
- (id)viewCellTractRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)countOfValuesForCategoryRef:(id)ref;
- (unint64_t)indexOfGroupingColumn:(id)column;
- (unint64_t)numberOfAggregatesAtLevel:(unsigned __int8)level;
- (unint64_t)numberOfGroupsAtLevel:(unsigned __int8)level;
- (unint64_t)numberOfGroupsUptoLevel:(unsigned __int8)level;
- (unordered_map<TSKUIDStruct,)changesPerColumnMapToBeInGroup:()std:()std:(std:(TSTPlanForGroupingCell>>> *__return_ptr)retstr :(TSTGroupBy *)self allocator<std:(SEL)std :(id)a4 pair<const)TSKUIDStruct :equal_to<TSKUIDStruct> :hash<TSKUIDStruct>;
- (unsigned)aggregateTypeForAggregateLabel:(id)label;
- (unsigned)aggregateTypeForCategoryRef:(id)ref;
- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (unsigned)anyAggregateTypeForColumnUID:(TSKUIDStruct)d;
- (unsigned)groupLevelForGroupUid:(TSKUIDStruct)uid;
- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid isBlank:(BOOL *)blank isError:(BOOL *)error;
- (unsigned)groupLevelForGroupingColumnUid:(TSKUIDStruct)uid;
- (vector<TSCECategoryLevel,)groupingColumnLevelsForColumn:(TSTGroupBy *)self;
- (vector<TSCECategoryRef)captureAnyCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning;
- (vector<TSCECategoryRef)captureCategoryLabelRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning forRows:(unsigned __int8)rows;
- (vector<TSCECategoryRef)captureCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning;
- (vector<TSCECategoryRef)captureCategoryRefsFromIterator:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning;
- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSTGroupBy *)self;
- (vector<TSCECategoryRef)expandSpanningCategoryRef:(TSTGroupBy *)self;
- (vector<TSCECategoryRef)p_promoteSpanningReferences:(TSTGroupBy *)self withCaptured:(SEL)captured atLevel:(vector<TSCECategoryRef *);
- (vector<TSCECategoryRef)promoteSpanningReferences:(TSTGroupBy *)self;
- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid ordered:(id)ordered;
- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid hidingActionMask:(id)mask outError:(const TSKUIDStruct *)error;
- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid outError:(id)error;
- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self outError:(SEL)error;
- (void)_addAggregates:(id)aggregates atLevel:(unsigned __int8)level;
- (void)_removeAggregates:(id)aggregates;
- (void)addAggregator:(id)aggregator;
- (void)beginDeferringRebuildFormulas;
- (void)checkForFormulaCoordUpgrade;
- (void)deferGroupByChangeNotifications;
- (void)didAddGroupNode:(id)node;
- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)group;
- (void)didRemoveGroup:(id)group;
- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group;
- (void)dropAggregator:(id)aggregator;
- (void)dropAllAggregators;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver backwardCompatOptions:(unint64_t)options;
- (void)endDeferringRebuildFormulas;
- (void)endOfGroupingChangesBatch;
- (void)enterCalcEngineMode;
- (void)enumerateAggregates:(id)aggregates;
- (void)enumerateAggregatesAtLevel:(unsigned __int8)level withBlock:(id)block;
- (void)enumerateGroupingColumnsForColumn:(TSKUIDStruct)column withBlock:(id)block;
- (void)enumerateRowsUidsAtLevel:(unsigned __int8)level withBlock:(id)block;
- (void)exitCalcEngineMode;
- (void)freeAggFormulaCoord:(const TSUCellCoord *)coord;
- (void)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValue:(id)value;
- (void)insertRowUids:(id)uids;
- (void)invalidateForCalcEngine:(id)engine;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)mapGroupUidsForChange:(id)change;
- (void)markAllAggregatesAsDirty;
- (void)markAllDependentsAsDirty;
- (void)markAllGroupNodesDirty;
- (void)p_setCell:(id)cell forDayGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forDayOfWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forMonthGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forMonthOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forQuarterOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forUniqueGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forYearQuarterGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forYearWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell groupingTypeCombo:(unsigned __int16)combo groupingCellValue:(id)value toBeInGroup:(id)group;
- (void)p_setupCustomFormatsWithLocale:(id)locale;
- (void)rebuildAllAggFormulas;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)removeRowUid:(const TSKUIDStruct *)uid;
- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValue:(id)value;
- (void)removeRowUids:(id)uids;
- (void)resetAllAggsFormula;
- (void)resetGroupBy;
- (void)resetGroupingColumnsFormula;
- (void)resetGroupings;
- (void)resetWithGroupings:(id)groupings categoryOwner:(id)owner hiddenStates:(id)states groupBySet:(id)set;
- (void)resumeGroupByChangeNotifications;
- (void)runChange:(id)change withAggregates:(id)aggregates;
- (void)saveToArchiver:(id)archiver;
- (void)sendDeferredNotifictions:(id)notifictions;
- (void)setAggNode:(id)node forFormulaCoord:(const TSUCellCoord *)coord;
- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (void)setAggregates:(id)aggregates;
- (void)setCategoryOwner:(id)owner;
- (void)setGroupingColumnList:(id)list;
- (void)setHiddenStates:(id)states;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setValue:(id)value forFormulaCoord:(const TSUCellCoord *)coord;
- (void)startOfGroupingChangesBatch;
- (void)teardown;
- (void)updateAggFormulaCoord:(TSUCellCoord)coord;
- (void)updateWithDocumentRoot:(id)root;
- (void)upgradeForNewAggregateTypes:(id)types;
- (void)usedAggFormulaCoord:(const TSUCellCoord *)coord;
- (void)willMakeGroupingChangesInRowUIDs:(id)ds;
- (void)willModify;
- (void)willRemoveGroup:(id)group;
- (void)willRemoveGroupNode:(id)node;
@end

@implementation TSTGroupBy

- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner
{
  groupingsCopy = groupings;
  ownerCopy = owner;
  v12 = ownerCopy;
  v23 = 0uLL;
  if (!ownerCopy)
  {
    v22 = 0;
    goto LABEL_5;
  }

  *&v23 = objc_msgSend_baseTableUID(ownerCopy, v8, v9, v10, v11);
  *(&v23 + 1) = v13;
  v22 = 0;
  if (!(v23 | v13))
  {
LABEL_5:
    v17 = TSKMakeUIDStructRandom();
    goto LABEL_6;
  }

  v17 = sub_2212C4930(&v23, 8, v14, v15, v16);
LABEL_6:
  v21 = v17;
  v22 = v18;
  v19 = objc_msgSend_initWithGroupings_categoryOwner_groupByUid_ownerIndex_(self, v18, groupingsCopy, v12, &v21, 8);

  return v19;
}

- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  groupingsCopy = groupings;
  ownerCopy = owner;
  v16 = objc_msgSend_count(groupingsCopy, v12, v13, v14, v15) != 0;
  isEnabled_categoryOwner_groupByUid_ownerIndex = objc_msgSend_initWithGroupings_isEnabled_categoryOwner_groupByUid_ownerIndex_(self, v17, groupingsCopy, v16, ownerCopy, uid, indexCopy);

  return isEnabled_categoryOwner_groupByUid_ownerIndex;
}

- (TSTGroupBy)initWithGroupings:(id)groupings isEnabled:(BOOL)enabled categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  groupingsCopy = groupings;
  ownerCopy = owner;
  v19 = objc_msgSend_context(ownerCopy, v15, v16, v17, v18);
  v39.receiver = self;
  v39.super_class = TSTGroupBy;
  v20 = [(TSTGroupBy *)&v39 initWithContext:v19];

  if (v20)
  {
    objc_storeStrong(&v20->_groupingColumns, groupings);
    objc_storeWeak(&v20->_categoryOwner, ownerCopy);
    v20->_groupByUid = *uid;
    v21 = [TSTGroupNode alloc];
    inited = objc_msgSend_initAsRootNodeForGroupBy_(v21, v22, v20, v23, v24);
    groupRoot = v20->_groupRoot;
    v20->_groupRoot = inited;

    v20->_isEnabled = enabled;
    v27 = objc_opt_new();
    groupByChangeDistributor = v20->_groupByChangeDistributor;
    v20->_groupByChangeDistributor = v27;

    v29 = v20->_groupRoot;
    v38[0] = objc_msgSend_groupUid(v29, v30, v31, v32, v33);
    v38[1] = v34;
    v40 = v38;
    v35 = sub_2210880A0(&v20->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v38);
    objc_storeStrong(v35 + 4, v29);
    v20->_nextAggFormulaCoord = 0;
    if (indexCopy)
    {
      v36 = indexCopy;
    }

    else
    {
      v36 = 8;
    }

    v20->_ownerIndex = v36;
    v20->_indirectAggTypeChangeFormulaCoord = 0x7FFF7FFFFFFFLL;
    v20->_groupingColumnsFormulaCoord = 0x7FFF7FFFFFFFLL;
    v20->_groupingColumnHeadersFormulaCoord = 0x7FFF7FFFFFFFLL;
    v20->_allAggsInGroupRootFormulaCoord = 0x7FFF7FFFFFFFLL;
    v20->_columnOrderChangedCoord = 0x7FFF7FFFFFFFLL;
    v20->_rowOrderChangedCoord = 0x7FFF7FFFFFFFLL;
    v20->_rowOrderChangedIgnoringRecalcCoord = 0x7FFF7FFFFFFFLL;
    v20->_hiddenStatesChangedCoord = 0x7FFF7FFFFFFFLL;
    v20->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v20;
}

- (void)willModify
{
  v8.receiver = self;
  v8.super_class = TSTGroupBy;
  [(TSTGroupBy *)&v8 willModify];
  if (self->_ownerIndex == 8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
    objc_msgSend_willModify(WeakRetained, v4, v5, v6, v7);
  }
}

- (void)resetWithGroupings:(id)groupings categoryOwner:(id)owner hiddenStates:(id)states groupBySet:(id)set
{
  groupingsCopy = groupings;
  ownerCopy = owner;
  statesCopy = states;
  setCopy = set;
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  if (WeakRetained == ownerCopy && self->_hiddenStates == statesCopy)
  {
  }

  objc_msgSend_willModify(self, v15, v16, v17, v18);
  objc_storeStrong(&self->_groupingColumns, groupings);
  objc_storeWeak(&self->_categoryOwner, ownerCopy);
  self->_isEnabled = 1;
  objc_msgSend_setHiddenStates_(self, v19, statesCopy, v20, v21);
  objc_msgSend_setGroupBySet_(self, v22, setCopy, v23, v24);
  objc_msgSend_resetGroupings(self, v25, v26, v27, v28);
  objc_msgSend_didChangeGroupByStructure(self, v29, v30, v31, v32);
}

- (TSKUIDStruct)groupByUid
{
  p_groupByUid = &self->_groupByUid;
  lower = self->_groupByUid.var0.var0._lower;
  upper = p_groupByUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)teardown
{
  objc_msgSend_dropAllTargets(self->_groupByChangeDistributor, a2, v2, v3, v4);
  groupByChangeDistributor = self->_groupByChangeDistributor;
  self->_groupByChangeDistributor = 0;

  objc_storeWeak(&self->_categoryOwner, 0);
}

- (void)setCategoryOwner:(id)owner
{
  objc_storeWeak(&self->_categoryOwner, owner);
  groupRoot = self->_groupRoot;

  objc_msgSend_setGroupBy_(groupRoot, v4, self, v5, v6);
}

+ (id)groupByForUID:(TSKUIDStruct)d withCalcEngine:(id)engine
{
  upper = d._upper;
  lower = d._lower;
  engineCopy = engine;
  v9 = engineCopy;
  if (lower | upper)
  {
    v10 = objc_msgSend_ownerForOwnerUID_(engineCopy, v7, lower, upper, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)groupByForCategoryRef:(id)ref withCalcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  if (!objc_msgSend_refersToPivotTable(refCopy, v8, v9, v10, v11))
  {
    v39 = objc_msgSend_groupByUid(refCopy, v12, v13, v14, v15);
    v33 = objc_msgSend_groupByForUID_withCalcEngine_(self, v40, v39, v40, engineCopy);
    goto LABEL_12;
  }

  v16 = objc_msgSend_pivotTableUid(refCopy, v12, v13, v14, v15);
  v18 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v17, v16, v17, engineCopy);
  v23 = objc_msgSend_pivotOwner(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_groupBySet(v23, v24, v25, v26, v27);

  v33 = 0;
  if (v18 && v28)
  {
    if (objc_msgSend_refersToPivotTableRows(refCopy, v29, v30, v31, v32))
    {
      v38 = objc_msgSend_groupByForRowGroups(v28, v34, v35, v36, v37);
    }

    else
    {
      if (!objc_msgSend_refersToPivotTableColumns(refCopy, v34, v35, v36, v37))
      {
        v33 = 0;
        goto LABEL_11;
      }

      v38 = objc_msgSend_groupByForColumnGroups(v28, v41, v42, v43, v44);
    }

    v33 = v38;
  }

LABEL_11:

LABEL_12:

  return v33;
}

+ (TSKUIDStruct)tableUIDForCategoryRef:(id)ref withCalcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  if (objc_msgSend_isValid(refCopy, v7, v8, v9, v10) && objc_msgSend_refersToPivotTable(refCopy, v11, v12, v13, v14))
  {
    v17 = objc_msgSend_pivotTableUid(refCopy, v11, v15, v16, v14);
    v19 = v18;
  }

  else
  {
    v20 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v11, refCopy, engineCopy, v14);
    v29 = objc_msgSend_tableInfo(v20, v21, v22, v23, v24);
    if (v29)
    {
      v30 = objc_msgSend_tableInfo(v20, v25, v26, v27, v28);
      v17 = objc_msgSend_tableUID(v30, v31, v32, v33, v34);
      v19 = v35;
    }

    else
    {
      v19 = 0;
      v17 = 0;
    }
  }

  v36 = v17;
  v37 = v19;
  result._upper = v37;
  result._lower = v36;
  return result;
}

+ (TSKUIDStruct)relativeAncestorGroupUid:(int)uid
{
  v5 = objc_msgSend_relativeAncestorGroupUid_(TSCECategoryRef, a2, *&uid, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid
{
  v7 = objc_msgSend_relativeLevelOfAncestorGroupUid_(TSTGroupBy, a2, uid, rowUid, v4);
  if (v7 >= 1 && (v12 = v7, v7 <= objc_msgSend_numberOfLevels(self, v8, v9, v10, v11) + 1))
  {
    lower = rowUid->_lower;
    upper = rowUid->_upper;
    v21 = objc_msgSend_numberOfLevels(self, v13, v14, v15, v16);
    v23 = objc_msgSend_groupNodeForRowUid_atLevel_(self, v22, lower, upper, (v21 - v12 + 1));
    v28 = v23;
    if (v23)
    {
      v18 = objc_msgSend_groupUid(v23, v24, v25, v26, v27);
      v17 = v29;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v30 = v18;
  v31 = v17;
  result._upper = v31;
  result._lower = v30;
  return result;
}

- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid
{
  lower = rowUid->_lower;
  upper = rowUid->_upper;
  v9 = objc_msgSend_numberOfLevels(self, a2, uid, rowUid, v4);
  v11 = objc_msgSend_groupNodeForRowUid_atLevel_(self, v10, lower, upper, v9);
  if (v11)
  {
    v16 = v11;
    v17 = 1;
    while (objc_msgSend_groupUid(v16, v12, v13, v14, v15) != uid->_lower || v18 != uid->_upper)
    {
      v23 = objc_msgSend_parentNode(v16, v18, v19, v20, v21);

      v17 = (v17 + 1);
      v16 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    v25 = objc_msgSend_relativeAncestorGroupUid_(TSTGroupBy, v18, v17, v20, v21);
    v24 = v26;
  }

  else
  {
LABEL_8:
    v24 = 0;
    v25 = 0;
  }

  v27 = v25;
  v28 = v24;
  result._upper = v28;
  result._lower = v27;
  return result;
}

- (id)resolveCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid inHostTable:(const TSKUIDStruct *)table
{
  refCopy = ref;
  v17 = objc_msgSend_copy(refCopy, v9, v10, v11, v12);
  if (*uid == 0 || (objc_msgSend_isBadRef(refCopy, v13, v14, v15, v16) & 1) != 0)
  {
    goto LABEL_17;
  }

  v22 = objc_msgSend_tableModel(self, v18, v19, v20, v21);
  if (objc_msgSend_tableUID(v22, v23, v24, v25, v26) != table->_lower)
  {

LABEL_10:
    if (*table != 0)
    {
      v72 = objc_msgSend_absoluteGroupUid(refCopy, v30, v31, v32, v33);
      v73 = v46;
      objc_msgSend_setAsAbsoluteWithGroupUid_(v17, v46, &v72, v47, v48);
    }

    goto LABEL_17;
  }

  v28 = v27;
  upper = table->_upper;

  if (v28 != upper)
  {
    goto LABEL_10;
  }

  v34 = objc_msgSend_relativeGroupUid(refCopy, v30, v31, v32, v33);
  if (v34 | v35)
  {
    v72 = objc_msgSend_relativeGroupUid(refCopy, v35, v36, v37, v38);
    v73 = v39;
    if (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v39, &v72, v40, v41))
    {
      v43 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v35, &v72, uid, v38);
      if (v43 | v42)
      {
        objc_msgSend_setAbsoluteGroupUid_(v17, v42, v43, v42, v45);
        goto LABEL_17;
      }

      v70 = objc_msgSend_absoluteGroupUid(refCopy, v42, v43, v44, v45);
      v71 = v49;
      objc_msgSend_setAsAbsoluteWithGroupUid_(v17, v49, &v70, v50, v51);
    }
  }

  v52 = objc_msgSend_absoluteGroupUid(refCopy, v35, v36, v37, v38);
  if (v52 | v53)
  {
    v70 = objc_msgSend_absoluteGroupUid(refCopy, v53, v54, v55, v56);
    v71 = v57;
    v72 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(self, v57, &v70, uid, v58);
    v73 = v59;
    if (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v59, &v72, v60, v61))
    {
      objc_msgSend_setAsRelativeWithGroupUid_(v17, v62, &v72, v64, v65);
    }

    else
    {
      v70 = objc_msgSend_absoluteGroupUid(refCopy, v62, v63, v64, v65);
      v71 = v66;
      objc_msgSend_setAsAbsoluteWithGroupUid_(v17, v66, &v70, v67, v68);
    }
  }

LABEL_17:

  return v17;
}

- (id)convertCategoryRefToRelativeAncestorUid:(id)uid atRowUid:(const TSKUIDStruct *)rowUid inHostTable:(const TSKUIDStruct *)table
{
  uidCopy = uid;
  v13 = objc_msgSend_copy(uidCopy, v9, v10, v11, v12);
  if ((objc_msgSend_preserveFlags(uidCopy, v14, v15, v16, v17) & 2) == 0 && *rowUid != 0)
  {
    v22 = objc_msgSend_tableModel(self, v18, v19, v20, v21);
    if (objc_msgSend_tableUID(v22, v23, v24, v25, v26) == table->_lower)
    {
      v28 = v27;
      upper = table->_upper;

      if (v28 == upper)
      {
        v40 = objc_msgSend_absoluteGroupUid(uidCopy, v30, v31, v32, v33);
        v41 = v34;
        if (v40 | v34)
        {
          v37 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(self, v34, &v40, rowUid, v35);
          if (v37 != v40 || v36 != v41)
          {
            objc_msgSend_setRelativeGroupUid_(v13, v36, v37, v36, v38, v40);
          }
        }
      }
    }

    else
    {
    }
  }

  return v13;
}

- (TSCEFormulaReplacing)minion
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v7 = objc_msgSend_minion(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSKUIDStruct)baseTableUID
{
  v5 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_tableUID(v5, v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSULocale)locale
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v7 = objc_msgSend_calcEngine(WeakRetained, v3, v4, v5, v6);
  v12 = objc_msgSend_documentLocale(v7, v8, v9, v10, v11);

  return v12;
}

- (void)setHiddenStates:(id)states
{
  statesCopy = states;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_hiddenStates, states);
  objc_msgSend_rebuildAllAggFormulas(self, v9, v10, v11, v12);
}

- (void)resetGroupBy
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  objc_msgSend_dropAllAggregators(self, v6, v7, v8, v9);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = MEMORY[0x277CBEBF8];

  v11 = [TSTGroupNode alloc];
  inited = objc_msgSend_initAsRootNodeForGroupBy_(v11, v12, self, v13, v14);
  groupRoot = self->_groupRoot;
  self->_groupRoot = inited;

  self->_isEnabled = 0;
  sub_221087B24(&self->_groupNodesByGroupUid);
  v17 = self->_groupRoot;
  v33[0] = objc_msgSend_groupUid(v17, v18, v19, v20, v21);
  v33[1] = v22;
  v33[3] = v33;
  v23 = sub_2210880A0(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v33);
  objc_storeStrong(v23 + 4, v17);
  columnAggregates = self->_columnAggregates;
  self->_columnAggregates = 0;

  objc_msgSend_resetGroupings(self, v25, v26, v27, v28);
  objc_msgSend_didChangeGroupByStructure(self, v29, v30, v31, v32);
}

- (void)setIsEnabled:(BOOL)enabled
{
  objc_msgSend_willModify(self, a2, enabled, v3, v4);
  self->_isEnabled = enabled;
  objc_msgSend_didChangeGroupByStructure(self, v7, v8, v9, v10);
  v15 = objc_msgSend_calcEngine(self, v11, v12, v13, v14);
  objc_msgSend_markIndirectCallsAsDirty(v15, v16, v17, v18, v19);

  isEnabled = self->_isEnabled;
  v25 = objc_msgSend_calcEngine(self, v21, v22, v23, v24);
  v36[0] = objc_msgSend_baseTableUID(self, v26, v27, v28, v29);
  v36[1] = v30;
  if (isEnabled)
  {
    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v30, v36, v31, v32);
  }

  else
  {
    objc_msgSend_spillBlockedByBeingVerticalPrecedentForTableUID_(TSCEHauntedOwner, v30, v36, v31, v32);
  }

  objc_msgSend_markCellRefAsDirty_(v25, v33, v37, v34, v35);
}

- (BOOL)isCategorized
{
  isEnabled = objc_msgSend_isEnabled(self, a2, v2, v3, v4);
  if (isEnabled)
  {
    LOBYTE(isEnabled) = objc_msgSend_numberOfLevels(self, v7, v8, v9, v10) != 0;
  }

  return isEnabled;
}

- (TSKUIDStruct)topLevelGroupUid
{
  v5 = objc_msgSend_groupUid(self->_groupRoot, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSCECellRef)columnOrderChangedPrecedent
{
  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row == 0x7FFFFFFF || (*&columnOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_columnOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a3, v3, v4, v5);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4, v5);
  retstr->coordinate = self->_columnOrderChangedCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v11;
  return result;
}

- (TSCECellRef)rowOrderChangedPrecedent
{
  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row == 0x7FFFFFFF || (*&rowOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a3, v3, v4, v5);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4, v5);
  retstr->coordinate = self->_rowOrderChangedCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v11;
  return result;
}

- (TSCECellRef)rowOrderChangedPrecedentIgnoringRecalc
{
  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row == 0x7FFFFFFF || (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedIgnoringRecalcCoord = objc_msgSend_getNextAggFormulaCoord(self, a3, v3, v4, v5);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4, v5);
  retstr->coordinate = self->_rowOrderChangedIgnoringRecalcCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v11;
  return result;
}

- (TSCECellRef)hiddenStatesChangedPrecedent
{
  hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
  if (hiddenStatesChangedCoord.row == 0x7FFFFFFF || (*&hiddenStatesChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    objc_msgSend_willModify(self, a3, v3, v4, v5);
    self->_hiddenStatesChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, v10, v11, v12, v13);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4, v5);
  retstr->coordinate = self->_hiddenStatesChangedCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v15;
  return result;
}

- (void)resetGroupingColumnsFormula
{
  v136 = *MEMORY[0x277D85DE8];
  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnsFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnsFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnHeadersFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  selfCopy = self;
  v10 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  v15 = objc_msgSend_calcEngine(v10, v11, v12, v13, v14);

  if (v15)
  {
    objc_msgSend_willModify(self, v16, v17, v18, v19);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v134, 0, 1);
    v116 = objc_msgSend_emptyReferenceSetWrapper(v15, v20, v21, v22, v23);
    v114 = objc_msgSend_emptyReferenceSetWrapper(v15, v24, v25, v26, v27);
    *&v133 = objc_msgSend_baseTableUID(self, v28, v29, v30, v31);
    *(&v133 + 1) = v32;
    v115 = objc_msgSend_tableModel(self, v32, v33, v34, v35);
    v40 = objc_msgSend_tableInfo(self, v36, v37, v38, v39);
    v45 = objc_msgSend_translator(v40, v41, v42, v43, v44);

    v50 = objc_msgSend_tableModel(self, v46, v47, v48, v49);
    v132.origin = objc_msgSend_headerRowRange(v50, v51, v52, v53, v54);
    v132.size = v55;

    v56 = TSUCellRect::numRows(&v132);
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v57 = self->_groupingColumns;
    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v128, v135, 16);
    if (v63)
    {
      v64 = (v56 - 1);
      v65 = *v129;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v129 != v65)
          {
            objc_enumerationMutation(v57);
          }

          v67 = *(*(&v128 + 1) + 8 * i);
          if (v45)
          {
            v68 = objc_msgSend_columnUid(*(*(&v128 + 1) + 8 * i), v59, v60, v61, v62);
            v71 = objc_msgSend_baseColumnIndexForColumnUID_(v45, v69, v68, v69, v70);
          }

          else
          {
            v72 = objc_msgSend_columnRowUIDMap(v115, v59, v60, v61, v62);
            v77 = objc_msgSend_columnUid(v67, v73, v74, v75, v76);
            v71 = objc_msgSend_columnIndexForColumnUID_(v72, v78, v77, v78, v79);
          }

          if (v71 != 0x7FFF)
          {
            v126 = v133;
            v124 = (v71 << 32) | 0x7FFFFFFF;
            v125 = v124;
            v127 = 0;
            objc_msgSend_insertSpanningRangeRef_(v116, v59, &v124, v61, v62);
            if (TSUCellRect::numRows(&v132))
            {
              v121 = v71 << 32;
              v122 = v121 | v64;
              v123 = v133;
              objc_msgSend_insertRangeRef_(v114, v59, &v121, v61, v62);
            }
          }
        }

        v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v128, v135, 16);
      }

      while (v63);
    }

    v134.var2 = 1;
    v124 = objc_msgSend_groupByUid(selfCopy, v80, v81, v82, v83);
    v125 = v84;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v120, &v134);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v15, v85, &selfCopy->_groupingColumnsFormulaCoord, &v124, v116, &v120);

    v124 = objc_msgSend_groupByUid(selfCopy, v86, v87, v88, v89);
    v125 = v90;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v119, &v134);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v15, v91, &selfCopy->_groupingColumnHeadersFormulaCoord, &v124, v114, &v119);

    objc_msgSend_hiddenStatesChangedPrecedent(selfCopy, v92, v93, v94, v95);
    v100 = objc_msgSend_emptyReferenceSetWrapper(v15, v96, v97, v98, v99);
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v101, &v133, v102, v103);
    objc_msgSend_insertCellRef_(v100, v104, &v121, v105, v106);
    v118 = v124;
    v121 = objc_msgSend_groupByUid(selfCopy, v107, v108, v109, v110);
    v122 = v111;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v117, &v134);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v15, v112, &v118, &v121, v100, &v117);
  }
}

- (void)resetAllAggsFormula
{
  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  if (indirectAggTypeChangeFormulaCoord.row == 0x7FFFFFFF || (*&indirectAggTypeChangeFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_indirectAggTypeChangeFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnsFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnsFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnHeadersFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row == 0x7FFFFFFF || (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_allAggsInGroupRootFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row == 0x7FFFFFFF || (*&columnOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_columnOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row == 0x7FFFFFFF || (*&rowOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row == 0x7FFFFFFF || (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedIgnoringRecalcCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
  if (hiddenStatesChangedCoord.row == 0x7FFFFFFF || (*&hiddenStatesChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_hiddenStatesChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3, v4);
  }

  v18 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  v27 = objc_msgSend_minion(v18, v19, v20, v21, v22);
  if (!v27)
  {
    v27 = objc_msgSend_calcEngine(v18, v23, v24, v25, v26);
  }

  v32 = objc_msgSend_calcEngine(v18, v23, v24, v25, v26);
  if (v27 && objc_msgSend_allowRegistrationOfAggFormulas(v18, v28, v29, v30, v31))
  {
    objc_msgSend_willModify(self, v33, v34, v35, v36);
    v106 = v32;
    v41 = objc_msgSend_emptyReferenceSetWrapper(v32, v37, v38, v39, v40);
    for (i = *(objc_msgSend_aggNodes(self->_groupRoot, v42, v43, v44, v45) + 16); i; i = *i)
    {
      v51 = objc_msgSend_formulaCoord(i[4], v46, v47, v48, v49);
      v56 = objc_msgSend_groupByUid(self, v52, v53, v54, v55);
      *&v114.var0 = v51;
      v114.var6._lower = v56;
      v114.var6._upper = v57;
      objc_msgSend_insertCellRef_(v41, v57, &v114, v58, v59);
    }

    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v114, 0, 1);
    v114.var2 = 1;
    v110 = objc_msgSend_groupByUid(self, v60, v61, v62, v63);
    v111 = v64;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v113, &v114);
    v32 = v106;
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v27, v65, &self->_allAggsInGroupRootFormulaCoord, &v110, v41, &v113);

    v70 = objc_msgSend_emptyReferenceSetWrapper(v106, v66, v67, v68, v69);
    v75 = objc_msgSend_groupByUid(self, v71, v72, v73, v74);
    v110 = self->_groupingColumnHeadersFormulaCoord;
    v111 = v75;
    v112 = v76;
    objc_msgSend_insertCellRef_(v70, v76, &v110, v77, v78);
    v110 = objc_msgSend_groupByUid(self, v79, v80, v81, v82);
    v111 = v83;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v109, &v114);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v27, v84, &self->_indirectAggTypeChangeFormulaCoord, &v110, v70, &v109);

    v89 = objc_msgSend_emptyReferenceSetWrapper(v106, v85, v86, v87, v88);
    v108[0] = objc_msgSend_baseTableUID(v18, v90, v91, v92, v93);
    v108[1] = v94;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v94, v108, v95, v96);
    objc_msgSend_insertCellRef_(v89, v97, &v110, v98, v99);
    v110 = objc_msgSend_groupByUid(self, v100, v101, v102, v103);
    v111 = v104;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v107, &v114);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v27, v105, &self->_hiddenStatesChangedCoord, &v110, v89, &v107);
  }
}

- (void)didCreateGroup:(id)group
{
  groupCopy = group;
  v36 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v9 = [TSTGroupByChangeDelayedNotification alloc];
    v12 = objc_msgSend_initWithNotifyType_group_(v9, v10, 3, v36, v11);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v13, v12, v14, v15);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7, v8))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy didCreateGroup:]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 873, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    if (v36)
    {
      v30 = [TSTGroupByChangeDelayedNotification alloc];
      v12 = objc_msgSend_initWithNotifyType_group_(v30, v31, 3, v36, v32);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v33, v12, v34, v35);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didCreateGroup_(self->_groupByChangeDistributor, v16, v36, v17, v18);
  }

LABEL_11:
}

- (void)didAddGroupNode:(id)node
{
  nodeCopy = node;
  v10 = nodeCopy;
  if (nodeCopy)
  {
    v16[0] = objc_msgSend_groupUid(nodeCopy, v6, v7, v8, v9);
    v16[1] = v11;
    v16[3] = v16;
    v12 = sub_2210880A0(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v16);
    objc_storeStrong(v12 + 4, node);
    objc_msgSend_didCreateGroup_(self, v13, v10, v14, v15);
  }
}

- (void)willRemoveGroup:(id)group
{
  groupCopy = group;
  v36 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v9 = [TSTGroupByChangeDelayedNotification alloc];
    v12 = objc_msgSend_initWithNotifyType_group_(v9, v10, 4, v36, v11);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v13, v12, v14, v15);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7, v8))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy willRemoveGroup:]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 900, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    if (v36)
    {
      v30 = [TSTGroupByChangeDelayedNotification alloc];
      v12 = objc_msgSend_initWithNotifyType_group_(v30, v31, 4, v36, v32);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v33, v12, v34, v35);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_willRemoveGroup_(self->_groupByChangeDistributor, v16, v36, v17, v18);
  }

LABEL_11:
}

- (void)didRemoveGroup:(id)group
{
  groupCopy = group;
  v36 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v9 = [TSTGroupByChangeDelayedNotification alloc];
    v12 = objc_msgSend_initWithNotifyType_group_(v9, v10, 5, v36, v11);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v13, v12, v14, v15);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7, v8))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy didRemoveGroup:]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 923, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    if (v36)
    {
      v30 = [TSTGroupByChangeDelayedNotification alloc];
      v12 = objc_msgSend_initWithNotifyType_group_(v30, v31, 5, v36, v32);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v33, v12, v34, v35);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didRemoveGroup_(self->_groupByChangeDistributor, v16, v36, v17, v18);
  }

LABEL_11:
}

- (void)willRemoveGroupNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    objc_msgSend_willRemoveGroup_(self, v4, nodeCopy, v5, v6);
    v16[0] = objc_msgSend_groupUid(nodeCopy, v8, v9, v10, v11);
    v16[1] = v12;
    v13 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v16);
    if (v13)
    {
      sub_221087680(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v13, v16);
      sub_221087224(v16);
    }

    objc_msgSend_didRemoveGroup_(self, v13, nodeCopy, v14, v15);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  v37 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v12 = [TSTGroupByChangeDelayedNotification alloc];
    v14 = objc_msgSend_initWithNotifyType_group_rowUid_(v12, v13, 6, v37, lower, upper);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v15, v14, v16, v17);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v8, v9, v10, v11))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTGroupBy didAddRowUID:toGroup:]", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 958, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    if (v37)
    {
      v32 = [TSTGroupByChangeDelayedNotification alloc];
      v14 = objc_msgSend_initWithNotifyType_group_rowUid_(v32, v33, 6, v37, lower, upper);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v34, v14, v35, v36);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didAddRowUID_toGroup_(self->_groupByChangeDistributor, v18, lower, upper, v37);
  }

LABEL_11:
}

- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  v37 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v12 = [TSTGroupByChangeDelayedNotification alloc];
    v14 = objc_msgSend_initWithNotifyType_group_rowUid_(v12, v13, 7, v37, lower, upper);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v15, v14, v16, v17);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v8, v9, v10, v11))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTGroupBy didRemoveRowUID:fromGroup:]", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 979, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    if (v37)
    {
      v32 = [TSTGroupByChangeDelayedNotification alloc];
      v14 = objc_msgSend_initWithNotifyType_group_rowUid_(v32, v33, 7, v37, lower, upper);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v34, v14, v35, v36);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didRemoveRowUID_fromGroup_(self->_groupByChangeDistributor, v18, lower, upper, v37);
  }

LABEL_11:
}

- (void)startOfGroupingChangesBatch
{
  objc_msgSend_beginDeferringRebuildFormulas(self, a2, v2, v3, v4);
  if (self->_calcEngineGroupByChangeNotifications)
  {
    v10 = [TSTGroupByChangeDelayedNotification alloc];
    v39 = objc_msgSend_initWithNotifyType_group_(v10, v11, 1, 0, v12);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v13, v39, v14, v15);
  }

  else
  {
    if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v6, v7, v8, v9))
    {
      if (!self->_deferredGroupByChangeNotifications)
      {
        v20 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy startOfGroupingChangesBatch]", v18, v19);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v22, v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v40, v24, 1000, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      }

      v30 = [TSTGroupByChangeDelayedNotification alloc];
      v41 = objc_msgSend_initWithNotifyType_group_(v30, v31, 1, 0, v32);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v33, v41, v34, v35);
    }

    else
    {
      objc_msgSend_startOfGroupingChangesBatch(self->_groupByChangeDistributor, v16, v17, v18, v19);
    }

    MEMORY[0x2821F9670](self, sel_deferGroupByChangeNotifications, v36, v37, v38);
  }
}

- (void)endOfGroupingChangesBatch
{
  objc_msgSend_endDeferringRebuildFormulas(self, a2, v2, v3, v4);
  if (self->_calcEngineGroupByChangeNotifications)
  {
    v10 = [TSTGroupByChangeDelayedNotification alloc];
    v41 = objc_msgSend_initWithNotifyType_group_(v10, v11, 2, 0, v12);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v13, v41, v14, v15);
LABEL_7:

    return;
  }

  objc_msgSend_resumeGroupByChangeNotifications(self, v6, v7, v8, v9);
  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v16, v17, v18, v19))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v24 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTGroupBy endOfGroupingChangesBatch]", v22, v23);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v42, v28, 1023, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    }

    v34 = [TSTGroupByChangeDelayedNotification alloc];
    v41 = objc_msgSend_initWithNotifyType_group_(v34, v35, 2, 0, v36);
    objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v37, v41, v38, v39);
    goto LABEL_7;
  }

  groupByChangeDistributor = self->_groupByChangeDistributor;

  objc_msgSend_endOfGroupingChangesBatch(groupByChangeDistributor, v20, v21, v22, v23);
}

- (void)didChangeGroupByStructure
{
  if (self->_calcEngineGroupByChangeNotifications)
  {
    v6 = [TSTGroupByChangeDelayedNotification alloc];
    v9 = objc_msgSend_initWithNotifyType_group_(v6, v7, 8, 0, v8);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v10, v9, v11, v12);
LABEL_7:

    goto LABEL_8;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, a2, v2, v3, v4))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBy didChangeGroupByStructure]", v15, v16);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1041, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    v28 = [TSTGroupByChangeDelayedNotification alloc];
    v9 = objc_msgSend_initWithNotifyType_group_(v28, v29, 8, 0, v30);
    objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v31, v9, v32, v33);
    goto LABEL_7;
  }

  objc_msgSend_didChangeGroupByStructure(self->_groupByChangeDistributor, v13, v14, v15, v16);
LABEL_8:

  objc_msgSend_markAllDependentsAsDirty(self, v34, v35, v36, v37);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 15))
  {
    v7 = *(archive + 15);
  }

  else
  {
    v7 = MEMORY[0x277D809E0];
  }

  TSP::UUIDData::UUIDData(&v89, v7);
  self->_groupByUid = v89;
  v8 = objc_opt_new();
  v9 = *(archive + 8);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = [TSTGroupingColumn alloc];
      v18 = objc_msgSend_initWithArchive_(v11, v12, *(*(archive + 5) + v10), v13, v14);
      if (v18)
      {
        objc_msgSend_addObject_(v8, v15, v18, v16, v17);
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  objc_storeStrong(&self->_groupingColumns, v8);
  self->_isEnabled = *(archive + 216);
  v19 = objc_opt_new();
  groupByChangeDistributor = self->_groupByChangeDistributor;
  self->_groupByChangeDistributor = v19;

  self->_nextAggFormulaCoord = 0;
  self->_ownerIndex = *(archive + 55);
  if (*(archive + 26) < 1)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v21, 2, v22, v23);
    v27 = *(archive + 14);
    if (v27 >= 1)
    {
      v28 = 8;
      do
      {
        v29 = [TSTAggregator alloc];
        v32 = objc_msgSend_initWithArchive_groupBy_(v29, v30, *(*(archive + 8) + v28), self, v31);
        objc_msgSend_addAggregator_(self, v33, v32, v34, v35);

        v28 += 8;
        --v27;
      }

      while (v27);
    }
  }

  else
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_22134F58C;
    v88[3] = &unk_27845D8D8;
    v88[4] = self;
    v24 = unarchiverCopy;
    v25 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v24, v26, archive + 96, v25, 0, v88);
  }

  if ((*(archive + 17) & 2) != 0)
  {
    sub_2210BCFE0(&self->_rowUidLookupList, *(archive + 24));
  }

  v36 = objc_opt_new();
  v37 = *(archive + 20);
  if (v37 >= 1)
  {
    v38 = 8;
    do
    {
      v39 = [TSTColumnAggregate alloc];
      v46 = objc_msgSend_initWithArchive_(v39, v40, *(*(archive + 11) + v38), v41, v42);
      if (v46)
      {
        objc_msgSend_addObject_(v36, v43, v46, v44, v45);
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  objc_storeStrong(&self->_columnAggregates, v36);
  if ((*(archive + 16) & 4) != 0)
  {
    self->_indirectAggTypeChangeFormulaCoord = sub_2212697C0(*(archive + 17));
    objc_msgSend_usedAggFormulaCoord_(self, v50, &self->_indirectAggTypeChangeFormulaCoord, v51, v52);
  }

  else
  {
    self->_indirectAggTypeChangeFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 8) != 0)
  {
    self->_groupingColumnsFormulaCoord = sub_2212697C0(*(archive + 18));
    objc_msgSend_usedAggFormulaCoord_(self, v53, &self->_groupingColumnsFormulaCoord, v54, v55);
  }

  else
  {
    self->_groupingColumnsFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x20) != 0)
  {
    self->_groupingColumnHeadersFormulaCoord = sub_2212697C0(*(archive + 20));
    objc_msgSend_usedAggFormulaCoord_(self, v56, &self->_groupingColumnHeadersFormulaCoord, v57, v58);
  }

  else
  {
    self->_groupingColumnHeadersFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x10) != 0)
  {
    self->_allAggsInGroupRootFormulaCoord = sub_2212697C0(*(archive + 19));
    objc_msgSend_usedAggFormulaCoord_(self, v59, &self->_allAggsInGroupRootFormulaCoord, v60, v61);
  }

  else
  {
    self->_allAggsInGroupRootFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x40) != 0)
  {
    self->_columnOrderChangedCoord = sub_2212697C0(*(archive + 21));
    objc_msgSend_usedAggFormulaCoord_(self, v62, &self->_columnOrderChangedCoord, v63, v64);
  }

  else
  {
    self->_columnOrderChangedCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x80) != 0)
  {
    self->_rowOrderChangedCoord = sub_2212697C0(*(archive + 22));
    objc_msgSend_usedAggFormulaCoord_(self, v65, &self->_rowOrderChangedCoord, v66, v67);
  }

  else
  {
    self->_rowOrderChangedCoord = 0x7FFF7FFFFFFFLL;
  }

  if (*(archive + 17))
  {
    self->_rowOrderChangedIgnoringRecalcCoord = sub_2212697C0(*(archive + 23));
    objc_msgSend_usedAggFormulaCoord_(self, v68, &self->_rowOrderChangedIgnoringRecalcCoord, v69, v70);
  }

  else
  {
    self->_rowOrderChangedIgnoringRecalcCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 17) & 4) != 0)
  {
    self->_hiddenStatesChangedCoord = sub_2212697C0(*(archive + 25));
    objc_msgSend_usedAggFormulaCoord_(self, v71, &self->_hiddenStatesChangedCoord, v72, v73);
  }

  else
  {
    self->_hiddenStatesChangedCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 17) & 8) != 0)
  {
    v82 = *(archive + 26);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_22134F6D4;
    v87[3] = &unk_278462F58;
    v87[4] = self;
    v83 = unarchiverCopy;
    v84 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v83, v85, v82, v84, 0, v87);
  }

  else
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v47, 2, v48, v49);
    v74 = [TSTGroupNode alloc];
    if (*(archive + 16))
    {
      v77 = objc_msgSend_initWithArchive_forGroupBy_(v74, v75, *(archive + 16), self, v76);
    }

    else
    {
      v77 = objc_msgSend_initWithArchive_forGroupBy_(v74, v75, &TST::_GroupByArchive_GroupNodeArchive_default_instance_, self, v76);
    }

    groupRoot = self->_groupRoot;
    self->_groupRoot = v77;
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_22134F6E8;
  v86[3] = &unk_27845E3F8;
  v86[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v79, v86, v80, v81);
}

- (TSTGroupBy)initWithArchive:(const void *)archive forCategoryOwner:(id)owner unarchiver:(id)unarchiver
{
  ownerCopy = owner;
  unarchiverCopy = unarchiver;
  v11 = objc_opt_new();
  v12 = *(archive + 8);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = [TSTGroupingColumn alloc];
      v21 = objc_msgSend_initWithArchive_(v14, v15, *(*(archive + 5) + v13), v16, v17);
      if (v21)
      {
        objc_msgSend_addObject_(v11, v18, v21, v19, v20);
      }

      if (*(archive + 17))
      {
        v22 = *(archive + 23);
        v34 = 0;
        v34 = sub_2212697C0(v22);
        objc_msgSend_usedAggFormulaCoord_(self, v23, &v34, v24, v25);
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if (*(archive + 15))
  {
    v26 = *(archive + 15);
  }

  else
  {
    v26 = MEMORY[0x277D809E0];
  }

  v34 = TSKUIDStruct::loadFromMessage(v26, v10);
  v35 = v27;
  if ((*(archive + 4) & 0x2000) != 0)
  {
    v28 = *(archive + 110);
  }

  else
  {
    v28 = 8;
  }

  isEnabled_categoryOwner_groupByUid_ownerIndex = objc_msgSend_initWithGroupings_isEnabled_categoryOwner_groupByUid_ownerIndex_(self, v27, v11, *(archive + 216), ownerCopy, &v34, v28);
  v32 = isEnabled_categoryOwner_groupByUid_ownerIndex;
  if (isEnabled_categoryOwner_groupByUid_ownerIndex)
  {
    objc_msgSend_loadFromArchive_unarchiver_(isEnabled_categoryOwner_groupByUid_ownerIndex, v30, archive, unarchiverCopy, v31, v34, v35);
  }

  return v32;
}

- (BOOL)isPrePivotV2Compatible
{
  if (objc_msgSend_rowCount(self->_groupRoot, a2, v2, v3, v4) > 0x7A11F)
  {
    return 0;
  }

  v11 = objc_msgSend_count(self->_aggregators, v6, v7, v8, v9);
  v15 = objc_msgSend_numberOfGroupsUptoLevel_(self, v12, 10, v13, v14);
  if (v11 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v11;
  }

  return (v16 * v15) < 0x186A1;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver backwardCompatOptions:(unint64_t)options
{
  v158 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  if ((options & 2) != 0)
  {
    if ((objc_msgSend_isPrePivotV2Compatible(self, v8, v9, v10, v11) & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTGroupBy encodeToArchive:archiver:backwardCompatOptions:]", v15, v16);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1272, 0, "Caller should already have tested we think we can fit in a single message.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    isPrePivotV2Compatible = 1;
  }

  else
  {
    isPrePivotV2Compatible = objc_msgSend_isPrePivotV2Compatible(self, v8, v9, v10, v11);
  }

  *(archive + 4) |= 1u;
  v28 = *(archive + 15);
  if (!v28)
  {
    v29 = *(archive + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = MEMORY[0x223DA0360](v29);
    *(archive + 15) = v28;
  }

  TSP::UUIDData::saveToMessage(&self->_groupByUid, v28);
  isEnabled = self->_isEnabled;
  v34 = *(archive + 4) | 0x1000;
  *(archive + 4) = v34;
  *(archive + 216) = isEnabled;
  ownerIndex = self->_ownerIndex;
  if (!self->_ownerIndex)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTGroupBy encodeToArchive:archiver:backwardCompatOptions:]", v31, v32);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 1277, 0, "Wasn't expecting this not set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    ownerIndex = self->_ownerIndex;
    v34 = *(archive + 4);
  }

  *(archive + 4) = v34 | 0x2000;
  *(archive + 55) = ownerIndex;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v142 = 88;
  v47 = self->_groupingColumns;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v151, v157, 16);
  if (v51)
  {
    v52 = *v152;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v152 != v52)
        {
          objc_enumerationMutation(v47);
        }

        v54 = *(*(&v151 + 1) + 8 * i);
        v55 = *(archive + 5);
        if (!v55)
        {
          goto LABEL_22;
        }

        v56 = *(archive + 8);
        v57 = *v55;
        if (v56 < *v55)
        {
          *(archive + 8) = v56 + 1;
          objc_msgSend_encodeToArchive_archiver_(v54, v49, *&v55[2 * v56 + 2], archiverCopy, v50, v142);
          continue;
        }

        if (v57 == *(archive + 9))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v55 = *(archive + 5);
          v57 = *v55;
        }

        *v55 = v57 + 1;
        v58 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(*(archive + 3));
        v59 = *(archive + 8);
        v60 = *(archive + 5) + 8 * v59;
        *(archive + 8) = v59 + 1;
        *(v60 + 8) = v58;
        objc_msgSend_encodeToArchive_archiver_(v54, v61, v58, archiverCopy, v62, v142);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v151, v157, 16);
    }

    while (v51);
  }

  groupRoot = self->_groupRoot;
  if (groupRoot)
  {
    if ((options & 2) == 0)
    {
      *(archive + 4) |= 0x800u;
      v66 = *(archive + 26);
      if (!v66)
      {
        v67 = *(archive + 1);
        if (v67)
        {
          v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
        }

        v66 = MEMORY[0x223DA0390](v67);
        *(archive + 26) = v66;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v63, groupRoot, v66, v64, v142);
      objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v68, 18, archive, v69);
    }

    if (isPrePivotV2Compatible)
    {
      v70 = self->_groupRoot;
      *(archive + 4) |= 2u;
      v71 = *(archive + 16);
      if (!v71)
      {
        v72 = *(archive + 1);
        if (v72)
        {
          v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
        }

        v71 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(v72);
        *(archive + 16) = v71;
      }

      objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(v70, v63, v71, options, archiverCopy, v142);
    }

    else
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v63, 0xC000000000007, @"TSTPivotTables_v2", v64);
    }
  }

  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  if (indirectAggTypeChangeFormulaCoord.row != 0x7FFFFFFF && (*&indirectAggTypeChangeFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 4u;
    v74 = *(archive + 17);
    if (!v74)
    {
      v75 = *(archive + 1);
      if (v75)
      {
        v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
      }

      v74 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v75);
      *(archive + 17) = v74;
    }

    sub_221269820(&self->_indirectAggTypeChangeFormulaCoord, v74);
  }

  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row != 0x7FFFFFFF && (*&groupingColumnsFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 8u;
    v77 = *(archive + 18);
    if (!v77)
    {
      v78 = *(archive + 1);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v78);
      *(archive + 18) = v77;
    }

    sub_221269820(&self->_groupingColumnsFormulaCoord, v77);
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row != 0x7FFFFFFF && (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x20u;
    v80 = *(archive + 20);
    if (!v80)
    {
      v81 = *(archive + 1);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v81);
      *(archive + 20) = v80;
    }

    sub_221269820(&self->_groupingColumnHeadersFormulaCoord, v80);
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row != 0x7FFFFFFF && (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x10u;
    v83 = *(archive + 19);
    if (!v83)
    {
      v84 = *(archive + 1);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v84);
      *(archive + 19) = v83;
    }

    sub_221269820(&self->_allAggsInGroupRootFormulaCoord, v83);
  }

  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row != 0x7FFFFFFF && (*&columnOrderChangedCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x40u;
    v86 = *(archive + 21);
    if (!v86)
    {
      v87 = *(archive + 1);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v87);
      *(archive + 21) = v86;
    }

    sub_221269820(&self->_columnOrderChangedCoord, v86);
  }

  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row != 0x7FFFFFFF && (*&rowOrderChangedCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x80u;
    v89 = *(archive + 22);
    if (!v89)
    {
      v90 = *(archive + 1);
      if (v90)
      {
        v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
      }

      v89 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v90);
      *(archive + 22) = v89;
    }

    sub_221269820(&self->_rowOrderChangedCoord, v89);
  }

  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row != 0x7FFFFFFF && (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x100u;
    v92 = *(archive + 23);
    if (!v92)
    {
      v93 = *(archive + 1);
      if (v93)
      {
        v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
      }

      v92 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v93);
      *(archive + 23) = v92;
    }

    sub_221269820(&self->_rowOrderChangedIgnoringRecalcCoord, v92);
  }

  hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
  if (hiddenStatesChangedCoord.row != 0x7FFFFFFF && (*&hiddenStatesChangedCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x400u;
    v95 = *(archive + 25);
    if (!v95)
    {
      v96 = *(archive + 1);
      if (v96)
      {
        v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
      }

      v95 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v96);
      *(archive + 25) = v95;
    }

    sub_221269820(&self->_hiddenStatesChangedCoord, v95);
  }

  if ((options & 2) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v97, self->_aggregators, archive + 96, v98);
    os_unfair_lock_unlock(&self->_lock);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v99, 17, archive, v100);
  }

  if (isPrePivotV2Compatible)
  {
    os_unfair_lock_lock(&self->_lock);
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v101 = self->_aggregators;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, &v147, v156, 16);
    if (!v106)
    {
      goto LABEL_113;
    }

    v107 = *v148;
    while (1)
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v148 != v107)
        {
          objc_enumerationMutation(v101);
        }

        v109 = *(*(&v147 + 1) + 8 * j);
        v110 = *(archive + 8);
        if (!v110)
        {
          goto LABEL_109;
        }

        v111 = *(archive + 14);
        v112 = *v110;
        if (v111 < *v110)
        {
          *(archive + 14) = v111 + 1;
          objc_msgSend_encodeToArchive_(v109, v103, *&v110[2 * v111 + 2], v104, v105, v142);
          continue;
        }

        if (v112 == *(archive + 15))
        {
LABEL_109:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
          v110 = *(archive + 8);
          v112 = *v110;
        }

        *v110 = v112 + 1;
        v113 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggregatorArchive>(*(archive + 6));
        v114 = *(archive + 14);
        v115 = *(archive + 8) + 8 * v114;
        *(archive + 14) = v114 + 1;
        *(v115 + 8) = v113;
        objc_msgSend_encodeToArchive_(v109, v116, v113, v117, v118, v142);
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v103, &v147, v156, 16);
      if (!v106)
      {
LABEL_113:

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_115;
      }
    }
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v63, 0xC000000000007, @"TSTPivotTables_v2", v64);
LABEL_115:
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v119 = self->_columnAggregates;
  v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v120, &v143, v155, 16);
  if (v123)
  {
    v124 = *v144;
    do
    {
      for (k = 0; k != v123; ++k)
      {
        if (*v144 != v124)
        {
          objc_enumerationMutation(v119);
        }

        v126 = *(*(&v143 + 1) + 8 * k);
        v127 = *(archive + 11);
        if (!v127)
        {
          goto LABEL_125;
        }

        v128 = *(archive + 20);
        v129 = *v127;
        if (v128 < *v127)
        {
          *(archive + 20) = v128 + 1;
          objc_msgSend_encodeToArchive_archiver_(v126, v121, *&v127[2 * v128 + 2], archiverCopy, v122, v142);
          continue;
        }

        if (v129 == *(archive + 21))
        {
LABEL_125:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
          v127 = *(archive + 11);
          v129 = *v127;
        }

        *v127 = v129 + 1;
        v130 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(*(archive + 9));
        v131 = *(archive + 20);
        v132 = *(archive + 11) + 8 * v131;
        *(archive + 20) = v131 + 1;
        *(v132 + 8) = v130;
        objc_msgSend_encodeToArchive_archiver_(v126, v133, v130, archiverCopy, v134, v142);
      }

      v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v121, &v143, v155, 16);
    }

    while (v123);
  }

  if (self->_isEnabled || objc_msgSend_count(*(&self->super.super.isa + v142), v135, v136, v137, v138))
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v135, 0x300020000000ALL, @"TSTCategorizedTables", v138, v142);
  }

  p_rowUidLookupList = &self->_rowUidLookupList;
  if (((p_rowUidLookupList->_uids.__end_ - p_rowUidLookupList->_uids.__begin_) & 0xFFFFFFFF0) != 0)
  {
    *(archive + 4) |= 0x200u;
    v140 = *(archive + 24);
    if (!v140)
    {
      v141 = *(archive + 1);
      if (v141)
      {
        v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
      }

      v140 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v141);
      *(archive + 24) = v140;
    }

    sub_2210BCF18(p_rowUidLookupList, v140);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[274], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221362684, off_2812E4498[274], v5);

  objc_msgSend_encodeToArchive_archiver_backwardCompatOptions_(self, v7, v6, archiverCopy, 1);
}

- (unint64_t)archivingCompatibilityVersion
{
  if (!self->_isEnabled)
  {
    objc_msgSend_count(self->_groupingColumns, a2, v2, v3, v4);
  }

  return 0x300020000000ALL;
}

- (void)updateWithDocumentRoot:(id)root
{
  rootCopy = root;
  if (!rootCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupBy updateWithDocumentRoot:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 1398, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_updateWithDocumentRoot_(self->_groupRoot, v4, rootCopy, v5, v6);
  v25 = objc_msgSend_documentLocale(rootCopy, v18, v19, v20, v21);
  for (i = self->_aggNodesByFormulaCoord.__table_.__first_node_.__next_; i; i = *i)
  {
    v27 = i[3];
    v32 = objc_msgSend_accumulator(v27, v28, v29, v30, v31);
    objc_msgSend_setLocale_(v32, v33, v25, v34, v35);
  }

  objc_msgSend_p_setupCustomFormatsWithLocale_(self, v22, v25, v23, v24);
}

- (void)checkForFormulaCoordUpgrade
{
  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row == 0x7FFFFFFF || (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  if (indirectAggTypeChangeFormulaCoord.row == 0x7FFFFFFF || (*&indirectAggTypeChangeFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnsFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  if ((*&columnOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  if ((*&rowOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row == 0x7FFFFFFF || (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  v25 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  v59 = objc_msgSend_calcEngine(v25, v26, v27, v28, v29);

  if (v59 && objc_msgSend_isEnabled(self, v30, v31, v32, v33))
  {
    v38 = objc_msgSend_groupByUid(self, v34, v35, v36, v37);
    v60 = self->_groupingColumnHeadersFormulaCoord;
    v61 = v38;
    v62 = v39;
    if (objc_msgSend_cellHasPrecedents_(v59, v39, &v60, v40, v41) && (v46 = objc_msgSend_groupByUid(self, v42, v43, v44, v45), v60 = self->_groupingColumnsFormulaCoord, v61 = v46, v62 = v47, objc_msgSend_cellHasPrecedents_(v59, v47, &v60, v48, v49)))
    {
      v54 = objc_msgSend_groupByUid(self, v50, v51, v52, v53);
      v60 = self->_allAggsInGroupRootFormulaCoord;
      v61 = v54;
      v62 = v55;
      HasPrecedents = objc_msgSend_cellHasPrecedents_(v59, v55, &v60, v56, v57);

      if (HasPrecedents)
      {
        return;
      }
    }

    else
    {
    }

LABEL_18:
    objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4, v59);
    objc_msgSend_resetAllAggsFormula(self, v14, v15, v16, v17);
    objc_msgSend_resetGroupingColumnsFormula(self, v18, v19, v20, v21);
    return;
  }
}

- (id)groupingColumnListCopy
{
  v3 = [TSTGroupingColumnList alloc];
  v7 = objc_msgSend_initWithGroupingColumns_(v3, v4, self->_groupingColumns, v5, v6);

  return v7;
}

- (id)columnAggregateListCopy
{
  v3 = [TSTColumnAggregateList alloc];
  v7 = objc_msgSend_initWithColumnAggregates_(v3, v4, self->_columnAggregates, v5, v6);

  return v7;
}

- (id)columnAggregatesOnColumnUids:(const void *)uids
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [TSCEUIDSet alloc];
  v9 = objc_msgSend_initWithUUIDVector_(v5, v6, uids, v7, v8);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = self->_columnAggregates;
  v12 = 0;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v34, v38, 16);
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        v21 = objc_msgSend_columnUid(v20, v13, v14, v15, v16, v34);
        if (objc_msgSend_containsUuid_(v9, v22, v21, v22, v23))
        {
          if (!v12)
          {
            v12 = objc_opt_new();
          }

          objc_msgSend_addObject_(v12, v13, v20, v15, v16);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v34, v38, 16);
    }

    while (v17);
  }

  if (objc_msgSend_count(v12, v24, v25, v26, v27))
  {
    v28 = [TSTColumnAggregateList alloc];
    v32 = objc_msgSend_initWithColumnAggregates_(v28, v29, v12, v30, v31);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)setGroupingColumnList:(id)list
{
  listCopy = list;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  v12 = objc_msgSend_groupingColumns(listCopy, v8, v9, v10, v11);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v12;

  objc_msgSend_resetGroupings(self, v14, v15, v16, v17);
  objc_msgSend_resetGroupingColumnsFormula(self, v18, v19, v20, v21);
  objc_msgSend_didChangeGroupByStructure(self, v22, v23, v24, v25);
}

- (id)changeForUpdatingGroupValueOnNode:(const TSKUIDStruct *)node toValue:(id)value
{
  valueCopy = value;
  v9 = objc_msgSend_groupNodeForGroupUid_(self, v7, node->_lower, node->_upper, v8);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_groupLevel(v9, v10, v11, v12, v13);
    v16 = [TSCEGroupByChange alloc];
    v29[0] = objc_msgSend_groupByUid(self, v17, v18, v19, v20);
    v29[1] = v21;
    v23 = objc_msgSend_initWithType_groupByUid_(v16, v21, 1, v29, v22);
    objc_msgSend_setPreviousLevel_(v23, v24, v15, v25, v26);
    objc_msgSend_addChangesTo_forReplacingValue_atLevel_(v14, v27, v23, valueCopy, v15);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)changeForMovingBaseRows:(const void *)rows toDestGroup:(id)group
{
  groupCopy = group;
  v7 = [TSCEGroupByChange alloc];
  v33[0] = objc_msgSend_groupByUid(self, v8, v9, v10, v11);
  v33[1] = v12;
  v14 = objc_msgSend_initWithType_groupByUid_(v7, v12, 1, v33, v13);
  v15 = [TSCEUIDSet alloc];
  v19 = objc_msgSend_initWithUUIDVector_(v15, v16, rows, v17, v18);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_221351024;
  v29[3] = &unk_278462F80;
  v20 = groupCopy;
  v30 = v20;
  v31 = v19;
  v21 = v14;
  v32 = v21;
  v22 = v19;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v23, v29, v24, v25);
  v26 = v32;
  v27 = v21;

  return v21;
}

- (id)changeForSettingGroupingColumnList:(id)list
{
  v378 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (!listCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupBy changeForSettingGroupingColumnList:]", v4, v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 1509, 0, "New grouping column list is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  v17 = self->_groupingColumns;
  v22 = objc_msgSend_groupingColumns(listCopy, v18, v19, v20, v21);
  __p = 0;
  __dst = 0;
  v376 = 0;
  __src = 0;
  v372 = 0;
  v373 = 0;
  v27 = objc_msgSend_count(v17, v23, v24, v25, v26);
  v35 = objc_msgSend_count(v22, v28, v29, v30, v31);
  v368 = v17;
  if (v27)
  {
    v36 = 0;
    v37 = 0;
    for (i = 0; i != v27; ++i)
    {
      v39 = objc_msgSend_objectAtIndex_(v17, v32, i, v33, v34);

      v36 = v39;
      v40 = 0;
      if (v35)
      {
        while (1)
        {
          v41 = objc_msgSend_objectAtIndex_(v22, v32, v40, v33, v34);

          v37 = v41;
          v46 = objc_msgSend_groupingColumnUid(v36, v42, v43, v44, v45);
          v48 = v47;
          if (v46 == objc_msgSend_groupingColumnUid(v37, v47, v49, v50, v51) && v48 == v32)
          {
            break;
          }

          if (v35 == ++v40)
          {
            goto LABEL_27;
          }
        }

        if (i == v40)
        {
          v40 = i;
        }

        else
        {
          v52 = i + 1;
          v53 = v372;
          if (v372 >= v373)
          {
            v55 = __src;
            v56 = v372 - __src;
            v57 = (v372 - __src) >> 1;
            if (v57 <= -2)
            {
              sub_22107C148();
            }

            if (v373 - __src <= v57 + 1)
            {
              v58 = v57 + 1;
            }

            else
            {
              v58 = v373 - __src;
            }

            v59 = 0x7FFFFFFFFFFFFFFFLL;
            if (v373 - __src < 0x7FFFFFFFFFFFFFFELL)
            {
              v59 = v58;
            }

            if (v59)
            {
              sub_22115DB94(&__src, v59);
            }

            v60 = (2 * v57);
            *v60 = v52;
            v60[1] = v40 + 1;
            v54 = (2 * v57 + 2);
            memcpy(0, v55, v56);
            v61 = __src;
            __src = 0;
            v372 = v54;
            v373 = 0;
            if (v61)
            {
              operator delete(v61);
            }

            v17 = v368;
          }

          else
          {
            *v372 = v52;
            v53[1] = v40 + 1;
            v54 = v53 + 2;
          }

          v372 = v54;
        }
      }

      if (v40 == v35)
      {
LABEL_27:
        v62 = i + 1;
        v63 = __dst;
        if (__dst >= v376)
        {
          v65 = __p;
          v66 = __dst - __p;
          v67 = (__dst - __p) >> 1;
          if (v67 <= -2)
          {
            sub_22107C148();
          }

          if (v376 - __p <= v67 + 1)
          {
            v68 = v67 + 1;
          }

          else
          {
            v68 = v376 - __p;
          }

          v69 = 0x7FFFFFFFFFFFFFFFLL;
          if (v376 - __p < 0x7FFFFFFFFFFFFFFELL)
          {
            v69 = v68;
          }

          if (v69)
          {
            sub_22115DB94(&__p, v69);
          }

          v70 = (__dst - __p) >> 1;
          v71 = (2 * v67);
          *v71 = v62;
          v71[1] = -1;
          v64 = (2 * v67 + 2);
          v72 = &v71[-2 * v70];
          memcpy(v72, v65, v66);
          v73 = __p;
          __p = v72;
          __dst = v64;
          v376 = 0;
          if (v73)
          {
            operator delete(v73);
          }

          v17 = v368;
        }

        else
        {
          *__dst = v62;
          v63[1] = -1;
          v64 = v63 + 2;
        }

        __dst = v64;
      }
    }
  }

  else
  {
    v37 = 0;
    v36 = 0;
  }

  sub_2213626F0(&__p, __dst, __src, v372, (v372 - __src) >> 1);
  if (v35)
  {
    for (j = 0; j != v35; ++j)
    {
      v79 = objc_msgSend_objectAtIndex_(v22, v74, j, v76, v77);

      v37 = v79;
      v80 = 0;
      if (v27)
      {
        while (1)
        {
          v81 = objc_msgSend_objectAtIndex_(v17, v74, v80, v76, v77);

          v36 = v81;
          v86 = objc_msgSend_groupingColumnUid(v81, v82, v83, v84, v85);
          v88 = v87;
          if (v86 == objc_msgSend_groupingColumnUid(v37, v87, v89, v90, v91) && v88 == v74)
          {
            break;
          }

          if (v27 == ++v80)
          {
            goto LABEL_52;
          }
        }
      }

      if (v80 == v27)
      {
LABEL_52:
        v92 = j + 1;
        v93 = __dst;
        if (__dst >= v376)
        {
          v95 = __p;
          v96 = __dst - __p;
          v97 = (__dst - __p) >> 1;
          if (v97 <= -2)
          {
            sub_22107C148();
          }

          if (v376 - __p <= v97 + 1)
          {
            v98 = v97 + 1;
          }

          else
          {
            v98 = v376 - __p;
          }

          v99 = 0x7FFFFFFFFFFFFFFFLL;
          if (v376 - __p < 0x7FFFFFFFFFFFFFFELL)
          {
            v99 = v98;
          }

          if (v99)
          {
            sub_22115DB94(&__p, v99);
          }

          v100 = (__dst - __p) >> 1;
          v101 = (2 * v97);
          *v101 = -1;
          v101[1] = v92;
          v94 = (2 * v97 + 2);
          v102 = &v101[-2 * v100];
          memcpy(v102, v95, v96);
          v103 = __p;
          __p = v102;
          __dst = v94;
          v376 = 0;
          if (v103)
          {
            operator delete(v103);
          }

          v17 = v368;
        }

        else
        {
          *__dst = -1;
          v93[1] = v92;
          v94 = v93 + 2;
        }

        __dst = v94;
      }
    }
  }

  v366 = objc_msgSend_groupingColumnListCopy(self, v74, v75, v76, v77);
  v108 = objc_msgSend_count(listCopy, v104, v105, v106, v107);
  if (v108 > objc_msgSend_count(self->_groupingColumns, v109, v110, v111, v112))
  {
    v117 = objc_msgSend_count(listCopy, v113, v114, v115, v116);
    if (v117 == objc_msgSend_count(self->_groupingColumns, v118, v119, v120, v121) + 1)
    {
      v129 = objc_msgSend_count(listCopy, v122, v123, v124, v125);
      if (v129)
      {
        v130 = 1;
        while (1)
        {
          if (v130 >= v129)
          {
            v131 = 0;
          }

          else
          {
            v131 = objc_msgSend_ruleAtGroupLevel_(v366, v126, v130, v127, v128);
          }

          v132 = objc_msgSend_ruleAtGroupLevel_(listCopy, v126, v130, v127, v128);
          v137 = v132;
          if (v130 == v129)
          {
            break;
          }

          v138 = objc_msgSend_groupingColumnUid(v132, v133, v134, v135, v136);
          v140 = v139;
          if (v138 != objc_msgSend_groupingColumnUid(v131, v139, v141, v142, v143) || v140 != v144)
          {
            break;
          }

          if (++v130 > v129)
          {
            goto LABEL_140;
          }
        }

        v208 = [TSCEGroupByChange alloc];
        v369 = objc_msgSend_groupByUid(self, v209, v210, v211, v212);
        v370 = v213;
        v129 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v208, v213, 4, &__p, &v369);
        objc_msgSend_setPreviousLevel_(v129, v214, v130, v215, v216);
        objc_msgSend_addRule_atGroupLevel_(v366, v217, v137, v130, v218);

        goto LABEL_127;
      }

LABEL_141:
      v326 = [TSCEGroupByChange alloc];
      v369 = objc_msgSend_groupByUid(self, v327, v328, v329, v330);
      v370 = v331;
      v332 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v326, v331, 2, &__p, &v369);

      v129 = v332;
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  v145 = objc_msgSend_count(listCopy, v113, v114, v115, v116);
  if (v145 >= objc_msgSend_count(self->_groupingColumns, v146, v147, v148, v149))
  {
    v183 = objc_msgSend_count(self->_groupingColumns, v150, v151, v152, v153);
    v184 = v183 + 1;
    if (v183)
    {
      for (k = 1; k <= v183; ++k)
      {
        v186 = objc_msgSend_ruleAtGroupLevel_(v366, v180, k, v181, v182);
        v190 = objc_msgSend_ruleAtGroupLevel_(listCopy, v187, k, v188, v189);
        v195 = objc_msgSend_groupingColumnUid(v190, v191, v192, v193, v194);
        v197 = v196;
        v203 = v195 == objc_msgSend_groupingColumnUid(v186, v196, v198, v199, v200) && v197 == v201;
        v377[k] = v203;
      }

      v184 = v183 + 1;
      if (v377[1] == 1)
      {
        v204 = 2;
        do
        {
          v205 = v204;
          if (v204 > v183)
          {
            break;
          }

          v206 = v377[v204++];
        }

        while ((v206 & 1) != 0);
        v207 = v205 - 1;
      }

      else
      {
        v207 = 0;
      }

      if (v377[v183] == 1)
      {
        v234 = v183 - 1;
        v184 = 1;
        while (v234)
        {
          v235 = v377[v234--];
          if ((v235 & 1) == 0)
          {
            v184 = v234 + 2;
            break;
          }
        }
      }
    }

    else
    {
      v207 = 0;
    }

    if (v184 - v207 < 3)
    {
      v275 = [TSCEGroupByChange alloc];
      v369 = objc_msgSend_groupByUid(self, v276, v277, v278, v279);
      v370 = v280;
      if (v184 - v207 == 2)
      {
        v129 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v275, v280, 2, &__p, &v369);
        v281 = v207 + 1;
        objc_msgSend_setPreviousLevel_(v129, v282, v281, v283, v284);
        v288 = objc_msgSend_ruleAtGroupLevel_(listCopy, v285, v281, v286, v287);
        objc_msgSend_replaceRuleAtGroupLevel_withRule_(v366, v289, v281, v288, v290);
      }

      else
      {
        v129 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v275, v280, 0, &__p, &v369);
      }

      goto LABEL_127;
    }

    v364 = v207 + 1;
    v236 = objc_msgSend_ruleAtGroupLevel_(listCopy, v180, (v207 + 1), v181, v182);
    v241 = objc_msgSend_groupingColumnUid(v236, v237, v238, v239, v240);
    v243 = v242;
    v363 = v184 - 1;
    v246 = objc_msgSend_ruleAtGroupLevel_(v366, v242, (v184 - 1), v244, v245);
    if (v241 == objc_msgSend_groupingColumnUid(v246, v247, v248, v249, v250))
    {
      v252 = v243 == v251;

      if (v252)
      {
        v256 = v364;
        if (v363 <= v364)
        {
          v257 = v364;
        }

        else
        {
          v257 = v363;
        }

        while (v257 != v256)
        {
          v258 = objc_msgSend_ruleAtGroupLevel_(listCopy, v253, (v256 + 1), v254, v255);
          v263 = objc_msgSend_groupingColumnUid(v258, v259, v260, v261, v262);
          v265 = v264;
          v268 = objc_msgSend_ruleAtGroupLevel_(v366, v264, v256, v266, v267);
          if (v263 != objc_msgSend_groupingColumnUid(v268, v269, v270, v271, v272))
          {
            goto LABEL_139;
          }

          v274 = v265 == v273;

          ++v256;
          if (!v274)
          {
            goto LABEL_140;
          }
        }

        v335 = [TSCEGroupByChange alloc];
        v369 = objc_msgSend_groupByUid(self, v336, v337, v338, v339);
        v370 = v340;
        v129 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v335, v340, 5, &__p, &v369);
        objc_msgSend_setPreviousLevel_(v129, v341, v363, v342, v343);
        objc_msgSend_setUpdatedLevel_(v129, v344, v364, v345, v346);
        objc_msgSend_moveRuleFromGroupLevel_toLevel_(v366, v347, v363, v364, v348);
        goto LABEL_127;
      }
    }

    else
    {
    }

    v258 = objc_msgSend_ruleAtGroupLevel_(listCopy, v253, (v184 - 1), v254, v255);
    v295 = objc_msgSend_groupingColumnUid(v258, v291, v292, v293, v294);
    v297 = v296;
    v268 = objc_msgSend_ruleAtGroupLevel_(v366, v296, v364, v298, v299);
    if (v295 != objc_msgSend_groupingColumnUid(v268, v300, v301, v302, v303))
    {
LABEL_139:

      goto LABEL_140;
    }

    v305 = v297 == v304;

    if (!v305)
    {
LABEL_140:
      v129 = 0;
      goto LABEL_141;
    }

    v309 = v364;
    if (v363 <= v364)
    {
      v310 = v364;
    }

    else
    {
      v310 = v363;
    }

    while (v310 != v309)
    {
      v258 = objc_msgSend_ruleAtGroupLevel_(listCopy, v306, v309, v307, v308);
      v315 = objc_msgSend_groupingColumnUid(v258, v311, v312, v313, v314);
      v317 = v316;
      v268 = objc_msgSend_ruleAtGroupLevel_(v366, v316, (v309 + 1), v318, v319);
      if (v315 != objc_msgSend_groupingColumnUid(v268, v320, v321, v322, v323))
      {
        goto LABEL_139;
      }

      v325 = v317 == v324;

      ++v309;
      if (!v325)
      {
        goto LABEL_140;
      }
    }

    v349 = [TSCEGroupByChange alloc];
    v369 = objc_msgSend_groupByUid(self, v350, v351, v352, v353);
    v370 = v354;
    v129 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v349, v354, 6, &__p, &v369);
    objc_msgSend_setPreviousLevel_(v129, v355, v364, v356, v357);
    objc_msgSend_setUpdatedLevel_(v129, v358, v363, v359, v360);
    objc_msgSend_moveRuleFromGroupLevel_toLevel_(v366, v361, v364, v363, v362);
  }

  else
  {
    v154 = objc_msgSend_count(listCopy, v150, v151, v152, v153);
    if (v154 + 1 != objc_msgSend_count(self->_groupingColumns, v155, v156, v157, v158))
    {
      goto LABEL_140;
    }

    v129 = objc_msgSend_count(self->_groupingColumns, v159, v160, v161, v162);
    if (!v129)
    {
      goto LABEL_141;
    }

    v166 = 1;
    while (1)
    {
      v171 = objc_msgSend_ruleAtGroupLevel_(v366, v163, v166, v164, v165);
      if (v166 >= v129)
      {
        v172 = 0;
      }

      else
      {
        v172 = objc_msgSend_ruleAtGroupLevel_(listCopy, v167, v166, v169, v170);
      }

      if (v166 == v129)
      {
        break;
      }

      v173 = objc_msgSend_groupingColumnUid(v172, v167, v168, v169, v170);
      v175 = v174;
      if (v173 != objc_msgSend_groupingColumnUid(v171, v174, v176, v177, v178) || v175 != v179)
      {
        break;
      }

      if (++v166 > v129)
      {
        goto LABEL_140;
      }
    }

    v222 = [TSCEGroupByChange alloc];
    v369 = objc_msgSend_groupByUid(self, v223, v224, v225, v226);
    v370 = v227;
    v129 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v222, v227, 3, &__p, &v369);
    objc_msgSend_setPreviousLevel_(v129, v228, v166, v229, v230);
    objc_msgSend_removeRuleAtGroupLevel_(v366, v231, v166, v232, v233);
  }

LABEL_127:
  if ((objc_msgSend_isGroupingColumnUidsEqual_(v366, v219, listCopy, v220, v221) & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_142:
  v333 = v129;

  if (__src)
  {
    v372 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return v333;
}

- (void)mapGroupUidsForChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v9 = objc_msgSend_groupByUid(self, v4, v5, v6, v7);
    v11 = v10;
    if (v9 != objc_msgSend_groupByUid(changeCopy, v10, v12, v13, v14) || v11 != v15)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBy mapGroupUidsForChange:]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1703, 0, "wrong groupByUid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v30 = objc_msgSend_groupByUid(self, v15, v16, v17, v18);
    v32 = v31;
    if (v30 == objc_msgSend_groupByUid(changeCopy, v31, v33, v34, v35) && v32 == v36)
    {
      v40 = objc_msgSend_changeType(changeCopy, v36, v37, v38, v39);
      if (v40 > 4)
      {
        if (v40 == 5)
        {
          v73 = objc_msgSend_updatedLevel(changeCopy, v41, v42, v43, v44);
          v50 = v77;
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = sub_2213524C4;
          v77[3] = &unk_27845FA48;
          v77[4] = changeCopy;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v74, v73, v77, v75);
        }

        else
        {
          if (v40 != 6)
          {
            goto LABEL_19;
          }

          v49 = objc_msgSend_previousLevel(changeCopy, v41, v42, v43, v44);
          v50 = v76;
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = sub_221352550;
          v76[3] = &unk_27845FA48;
          v76[4] = changeCopy;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v51, v49, v76, v52);
        }

        v69 = (v50 + 4);
      }

      else
      {
        if (v40 != 3)
        {
          if (v40 == 4)
          {
            objc_msgSend_previousLevel(changeCopy, v41, v42, v43, v44);
            objc_msgSend_numberOfLevels(self, v45, v46, v47, v48);
          }

          goto LABEL_19;
        }

        v53 = objc_msgSend_previousLevel(changeCopy, v41, v42, v43, v44);
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = sub_2213523F4;
        v80[3] = &unk_27845FA48;
        v54 = changeCopy;
        v81 = v54;
        objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v55, v53, v80, v56);
        LODWORD(v53) = objc_msgSend_previousLevel(v54, v57, v58, v59, v60);
        v69 = &v81;
        if (v53 < objc_msgSend_numberOfLevels(self, v61, v62, v63, v64))
        {
          v70 = objc_msgSend_previousLevel(v54, v65, v66, v67, v68);
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = sub_221352450;
          v78[3] = &unk_27845FA48;
          v79 = v54;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v71, v70, v78, v72);
        }
      }
    }
  }

LABEL_19:
}

- (id)aggregatesOnLevel:(unsigned __int8)level
{
  levelCopy = level;
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_columnAggregates;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_level(v15, v8, v9, v10, v11, v26) == levelCopy)
        {
          objc_msgSend_addObject_(v5, v8, v15, v10, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v26, v30, 16);
    }

    while (v12);
  }

  if (objc_msgSend_count(v5, v16, v17, v18, v19))
  {
    v20 = [TSTColumnAggregateList alloc];
    v24 = objc_msgSend_initWithColumnAggregates_(v20, v21, v5, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_addAggregates:(id)aggregates atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v49 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  v15 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTGroupBy _addAggregates:atLevel:]", v13, v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 1775, 0, "invalid nil value for '%{public}s'", "tableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = objc_msgSend_asArray(aggregatesCopy, v11, v12, v13, v14);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v44, v48, 16);
  if (v33)
  {
    v34 = *v45;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v27);
        }

        v36 = *(*(&v44 + 1) + 8 * i);
        v37 = objc_msgSend_aggregateType(v36, v29, v30, v31, v32);
        v42 = objc_msgSend_columnUid(v36, v38, v39, v40, v41);
        objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v15, v43, v37, v42, v43, levelCopy);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v44, v48, 16);
    }

    while (v33);
  }
}

- (void)_removeAggregates:(id)aggregates
{
  v48 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  if (aggregatesCopy)
  {
    v13 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
    if (!v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTGroupBy _removeAggregates:]", v11, v12);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 1785, 0, "invalid nil value for '%{public}s'", "tableInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v25 = objc_msgSend_asArray(aggregatesCopy, v9, v10, v11, v12);
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v43, v47, 16);
    if (v31)
    {
      v32 = *v44;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v25);
          }

          v34 = *(*(&v43 + 1) + 8 * i);
          v35 = objc_msgSend_columnUid(v34, v27, v28, v29, v30);
          v37 = v36;
          v41 = objc_msgSend_level(v34, v36, v38, v39, v40);
          objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v13, v42, 0, v35, v37, v41);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v43, v47, 16);
      }

      while (v31);
    }
  }
}

- (void)runChange:(id)change withAggregates:(id)aggregates
{
  changeCopy = change;
  aggregatesCopy = aggregates;
  if (objc_msgSend_changeType(changeCopy, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_groupByUid(changeCopy, v11, v12, v13, v14);
    v17 = v16;
    if (v15 != objc_msgSend_groupByUid(self, v16, v18, v19, v20) || v17 != v21)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTGroupBy runChange:withAggregates:]", v23, v24);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 1798, 0, "Uh, we were expecting this to be us");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    }

    v36 = objc_msgSend_columnAggregateListCopy(self, v21, v22, v23, v24);
    selfCopy = self;
    v38 = objc_opt_new();
    v43 = objc_msgSend_groupingColumnChanges(changeCopy, v39, v40, v41, v42);
    v48 = *v43;
    v49 = *(v43 + 8);
    while (v48 != v49)
    {
      v45 = *v48;
      if (v45 != 255)
      {
        if ((objc_msgSend_containsIndex_(v38, v44, v45, v46, v47) & 1) == 0)
        {
          objc_msgSend_addIndex_(v38, v44, *v48, v46, v47);
          v53 = objc_msgSend_aggregatesOnLevel_(v36, v50, *v48, v51, v52);
          objc_msgSend__removeAggregates_(selfCopy, v54, v53, v55, v56);
        }

        v45 = v48[1];
        if (v45 != 255 && (objc_msgSend_containsIndex_(v38, v44, v45, v46, v47) & 1) == 0)
        {
          objc_msgSend_addIndex_(v38, v44, v48[1], v46, v47);
          v60 = objc_msgSend_aggregatesOnLevel_(v36, v57, v48[1], v58, v59);
          objc_msgSend__removeAggregates_(selfCopy, v61, v60, v62, v63);
        }
      }

      v48 += 2;
    }

    v64 = objc_msgSend_groupingColumnChanges(changeCopy, v44, v45, v46, v47);
    v68 = *v64;
    v69 = *(v64 + 8);
    while (1)
    {
      if (v68 == v69)
      {

        break;
      }

      v70 = v68[1];
      if (v70 != 255)
      {
        if (*v68 == 255)
        {
          if (!aggregatesCopy)
          {
            goto LABEL_22;
          }

          v71 = objc_msgSend_aggregatesOnLevel_(aggregatesCopy, v65, v70, v66, v67);
          objc_msgSend__addAggregates_atLevel_(selfCopy, v74, v71, v68[1], v75);
        }

        else
        {
          v71 = objc_msgSend_aggregatesOnLevel_(v36, v65, *v68, v66, v67);
          objc_msgSend__addAggregates_atLevel_(selfCopy, v72, v71, v68[1], v73);
        }
      }

LABEL_22:
      v68 += 2;
    }
  }
}

- (unint64_t)numberOfGroupsAtLevel:(unsigned __int8)level
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221352F68;
  v6[3] = &unk_278462E18;
  v6[4] = &v7;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, a2, level, v6, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)numberOfGroupsUptoLevel:(unsigned __int8)level
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221353044;
  v5[3] = &unk_278462E18;
  v5[4] = &v6;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(self, a2, 0, level, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isGroupingColumn:(const TSKUIDStruct *)column
{
  objc_msgSend_groupingColumnLevelsForColumn_(self, a2, column, v3, v4);
  if (v6)
  {
    operator delete(v6);
  }

  return v6 != v7;
}

- (vector<TSCECategoryLevel,)groupingColumnLevelsForColumn:(TSTGroupBy *)self
{
  v28 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_groupingColumns;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v23, v27, 16);
  if (v11)
  {
    v12 = 0;
    v22 = *v24;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v22)
        {
          objc_enumerationMutation(obj);
        }

        if (objc_msgSend_columnUid(*(*(&v23 + 1) + 8 * i), v7, v8, v9, v10) == a4->_lower && v7 == a4->_upper)
        {
          var2 = retstr->var2;
          if (v12 >= var2)
          {
            v17 = v12;
            v18 = (v12 + 1);
            if ((v12 + 1) < 0)
            {
              retstr->var0 = 0;
              sub_22107C148();
            }

            if (2 * var2 > v18)
            {
              v18 = 2 * var2;
            }

            if (var2 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              operator new();
            }

            *v12++ = v13;
            memcpy(0, 0, v17);
            retstr->var1 = (v17 + 1);
            retstr->var2 = 0;
          }

          else
          {
            *v12++ = v13;
          }

          retstr->var1 = v12;
        }

        ++v13;
      }

      retstr->var0 = 0;
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v23, v27, 16);
    }

    while (v11);
  }

  return result;
}

- (void)enumerateGroupingColumnsForColumn:(TSKUIDStruct)column withBlock:(id)block
{
  columnCopy = column;
  blockCopy = block;
  if (blockCopy)
  {
    objc_msgSend_groupingColumnLevelsForColumn_(self, v5, &columnCopy, v6, v7);
    v12 = __p;
    v13 = v20;
    if (__p != v20)
    {
      v14 = __p + 1;
      do
      {
        v15 = objc_msgSend_groupingColumnAtCategoryLevel_(self, v9, *(v14 - 1), v10, v11);
        v18 = 0;
        blockCopy[2](blockCopy, v15, &v18);
        v16 = v18;

        if (v16)
        {
          break;
        }
      }

      while (v14++ != v13);
      v12 = __p;
    }

    if (v12)
    {
      v20 = v12;
      operator delete(v12);
    }
  }
}

- (unint64_t)indexOfGroupingColumn:(id)column
{
  v35 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_groupingColumns;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v30, v34, 16);
  if (v11)
  {
    v12 = 0;
    v13 = *v31;
LABEL_3:
    v14 = 0;
    v15 = v12;
    v12 += v11;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v16 = *(*(&v30 + 1) + 8 * v14);
      v17 = objc_msgSend_columnUid(v16, v7, v8, v9, v10, v30);
      v19 = v18;
      if (v17 == objc_msgSend_columnUid(columnCopy, v18, v20, v21, v22) && v19 == v7)
      {
        v24 = objc_msgSend_groupingType(v16, v7, v8, v9, v10);
        if (v24 == objc_msgSend_groupingType(columnCopy, v25, v26, v27, v28))
        {
          break;
        }
      }

      ++v15;
      if (v11 == ++v14)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v30, v34, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v15;
}

- (id)groupingColumnAtCategoryLevel:(unsigned __int8)level
{
  if (level)
  {
    levelCopy = level;
    if (objc_msgSend_count(self->_groupingColumns, a2, level, v3, v4) >= level)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(self->_groupingColumns, v8, (levelCopy - 1), v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allGroupNodeUids
{
  v3 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2213536B4;
  v9[3] = &unk_27845FA48;
  v4 = v3;
  v10 = v4;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v5, v9, v6, v7);

  return v4;
}

- (void)markAllAggregatesAsDirty
{
  v6 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  v11 = objc_msgSend_calcEngine(v6, v7, v8, v9, v10);

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_221353808;
  v20[3] = &unk_27845FA48;
  v12 = v11;
  v21 = v12;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v13, v20, v14, v15);
  objc_msgSend_markAllDependentsAsDirty(self, v16, v17, v18, v19);
}

- (void)markAllDependentsAsDirty
{
  v6 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  v11 = objc_msgSend_calcEngine(v6, v7, v8, v9, v10);

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22135393C;
  v35[3] = &unk_27845FA48;
  v12 = v11;
  v36 = v12;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v13, v35, v14, v15);
  v34[0] = objc_msgSend_groupByUid(self, v16, v17, v18, v19);
  v34[1] = v20;
  objc_msgSend_markAllExternalGroupByRefsDirty_(v12, v20, v34, v21, v22);
  v33[0] = objc_msgSend_baseTableUID(self, v23, v24, v25, v26);
  v33[1] = v27;
  objc_msgSend_groupByChangedPrecedentForTableUID_(TSCEHauntedOwner, v27, v33, v28, v29);
  objc_msgSend_markCellRefAsDirty_(v12, v30, v34, v31, v32);
}

- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  upper = d._upper;
  lower = d._lower;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_columnAggregates;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v13)
  {
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = objc_msgSend_columnUid(v16, v9, v10, v11, v12, v20) == lower && v9 == upper;
        if (v17 && objc_msgSend_level(v16, v9, v10, v11, v12) == levelCopy)
        {
          v18 = objc_msgSend_aggregateType(v16, v9, v10, v11, v12);
          goto LABEL_16;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_16:

  return v18;
}

- (unsigned)anyAggregateTypeForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_columnAggregates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      if (objc_msgSend_columnUid(v14, v7, v8, v9, v10, v18) == lower && v7 == upper)
      {
        v16 = objc_msgSend_aggregateType(v14, v7, v8, v9, v10);
        if (v16)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)usesPrePivotAggregateTypesOnly
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = self->_columnAggregates;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v26, v30, 16);
  v9 = 1;
  if (v8)
  {
    v10 = *v27;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v2);
      }

      v12 = objc_msgSend_aggregateType(*(*(&v26 + 1) + 8 * v11), v4, v5, v6, v7, v26);
      if (v12 > 0xC)
      {
        break;
      }

      if (((1 << v12) & 0x17BF) == 0)
      {
        if (v12 != 11)
        {
          break;
        }

        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupBy usesPrePivotAggregateTypesOnly]", v6, v7);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v16, v17);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1995, 0, "Should never see TSCEAggType_Indirect on a columnAggregate");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
      }

      if (v8 == ++v11)
      {
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v26, v30, 16);
        v8 = v24;
        if (!v24)
        {
          v9 = 1;
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (void)setAggregates:(id)aggregates
{
  v144 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  v13 = objc_msgSend_ownerIndex(self, v9, v10, v11, v12) != 8;
  memset(v139, 0, sizeof(v139));
  v140 = 1065353216;
  v120 = aggregatesCopy;
  objc_msgSend_asArray(aggregatesCopy, v14, v15, v16, v17);
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  obj = v136 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v135, v143, 16);
  if (v23)
  {
    v24 = *v136;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v136 != v24)
        {
          objc_enumerationMutation(obj);
        }

        *&v129[0] = objc_msgSend_columnUid(*(*(&v135 + 1) + 8 * i), v19, v20, v21, v22);
        *(&v129[0] + 1) = v26;
        sub_2211D6484(v139, v129);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v135, v143, 16);
    }

    while (v23);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v27 = self->_columnAggregates;
  v29 = 0;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v131, v142, 16);
  if (v34)
  {
    v35 = *v132;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v132 != v35)
        {
          objc_enumerationMutation(v27);
        }

        *&v129[0] = objc_msgSend_columnUid(*(*(&v131 + 1) + 8 * j), v30, v31, v32, v33);
        *(&v129[0] + 1) = v37;
        if (!sub_2210875C4(v139, v129))
        {
          v38 = objc_msgSend_aggregatorForColumn_(self, v30, *&v129[0], *(&v129[0] + 1), v33);
          objc_msgSend_dropAggregator_(self, v39, v38, v40, v41);

          v29 = 1;
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v131, v142, 16);
    }

    while (v34);
  }

  v46 = objc_msgSend_asArray(v120, v42, v43, v44, v45);
  columnAggregates = self->_columnAggregates;
  self->_columnAggregates = v46;

  memset(v129, 0, sizeof(v129));
  v130 = 1065353216;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v48 = self->_columnAggregates;
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v125, v141, 16);
  if (v54)
  {
    v55 = *v126;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v126 != v55)
        {
          objc_enumerationMutation(v48);
        }

        v57 = *(*(&v125 + 1) + 8 * k);
        indirectAggTypeChangeFormulaCoord = objc_msgSend_columnUid(v57, v50, v51, v52, v53);
        v123 = v58;
        if (!sub_2210875C4(v129, &indirectAggTypeChangeFormulaCoord))
        {
          v59 = objc_msgSend_aggregateType(v57, v50, v51, v52, v53);
          if (objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v60, v59, v61, v62))
          {
            sub_2210C2B00(v129, &indirectAggTypeChangeFormulaCoord);
            v65 = objc_msgSend_aggregatorForColumn_(self, v63, indirectAggTypeChangeFormulaCoord, v123, v64);
            v70 = v65;
            if (v65)
            {
              objc_msgSend_rebuildAggFormulas(v65, v66, v67, v68, v69);
              v29 = 1;
            }

            else
            {
              v71 = objc_msgSend_createAggregatorOnColumn_(self, v66, indirectAggTypeChangeFormulaCoord, v123, v69);
            }

            v13 = 0;
          }
        }
      }

      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v125, v141, 16);
    }

    while (v54);
  }

  if (v13)
  {
    objc_msgSend_willModify(self, v72, v73, v74, v75);
    v80 = objc_msgSend_mutableCopy(self->_columnAggregates, v76, v77, v78, v79);
    v81 = [TSTColumnAggregate alloc];
    inited = objc_msgSend_initAsEmptyAggregate(v81, v82, v83, v84, v85);
    objc_msgSend_addObject_(v80, v87, inited, v88, v89);
    objc_storeStrong(&self->_columnAggregates, v80);
    v94 = objc_msgSend_columnUid(inited, v90, v91, v92, v93);
    v97 = objc_msgSend_aggregatorForColumn_(self, v95, v94, v95, v96);
    v102 = v97;
    if (v97)
    {
      objc_msgSend_rebuildAggFormulas(v97, v98, v99, v100, v101);

LABEL_35:
      objc_msgSend_resetAllAggsFormula(self, v72, v73, v74, v75);
      goto LABEL_36;
    }

    v103 = objc_msgSend_columnUid(inited, v98, v99, v100, v101);
    v106 = objc_msgSend_createAggregatorOnColumn_(self, v104, v103, v104, v105);
  }

  if (v29)
  {
    goto LABEL_35;
  }

LABEL_36:
  v107 = objc_msgSend_calcEngine(self, v72, v73, v74, v75);
  v112 = objc_msgSend_groupByUid(self, v108, v109, v110, v111);
  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  v123 = v112;
  v124 = v113;
  objc_msgSend_markCellRefAsDirty_(v107, v113, &indirectAggTypeChangeFormulaCoord, v114, v115);

  objc_msgSend_didChangeGroupByStructure(self, v116, v117, v118, v119);
  sub_2210BDEC0(v129);

  sub_2210BDEC0(v139);
}

- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  v114 = *MEMORY[0x277D85DE8];
  if (type == 11)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy setAggregateType:forColumnUID:atGroupLevel:]", d._lower, d._upper, level);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 2099, 0, "aggType of (%d) is not a valid aggregate type for an entire column", 11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);

    objc_msgSend_willModify(self, v18, v19, v20, v21);
    return;
  }

  levelCopy = level;
  upper = d._upper;
  lower = d._lower;
  typeCopy = type;
  objc_msgSend_willModify(self, a2, type, d._lower, d._upper);
  if (typeCopy > 0x21)
  {
    return;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  selfCopy = self;
  v26 = self->_columnAggregates;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v109, v113, 16);
  if (v28)
  {
    v29 = 0;
    v30 = *v110;
LABEL_8:
    v31 = 0;
    while (1)
    {
      if (*v110 != v30)
      {
        objc_enumerationMutation(v26);
      }

      v32 = *(*(&v109 + 1) + 8 * v31);

      v29 = v32;
      v41 = objc_msgSend_columnUid(v32, v33, v34, v35, v36) == lower && v37 == upper;
      if (v41 && objc_msgSend_level(v32, v37, v38, v39, v40) == levelCopy)
      {
        break;
      }

      if (v28 == ++v31)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v37, &v109, v113, 16);
        if (v28)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    v51 = objc_msgSend_aggregateType(v32, v37, v42, v43, v44);
    objc_msgSend_setAggregateType_(v32, v52, typeCopy, v53, v54);

    if (typeCopy)
    {
      goto LABEL_29;
    }

    v59 = objc_msgSend_mutableCopy(selfCopy->_columnAggregates, v55, v56, v57, v58);
    objc_msgSend_removeObjectIdenticalTo_(v59, v60, v32, v61, v62);
    columnAggregates = selfCopy->_columnAggregates;
    selfCopy->_columnAggregates = v59;
    goto LABEL_28;
  }

LABEL_20:

  if (typeCopy)
  {
    v49 = selfCopy->_columnAggregates;
    if (v49)
    {
      v50 = objc_msgSend_mutableCopy(v49, v45, v46, v47, v48);
    }

    else
    {
      v50 = objc_opt_new();
    }

    v68 = v50;
    v69 = [TSTColumnAggregate alloc];
    columnAggregates = objc_msgSend_initForCategoriesWithColumnUid_aggregateType_level_(v69, v70, lower, upper, typeCopy, levelCopy);
    objc_msgSend_addObject_(v68, v71, columnAggregates, v72, v73);
    v74 = selfCopy->_columnAggregates;
    selfCopy->_columnAggregates = v68;

    v51 = 0;
    v29 = 0;
LABEL_28:

LABEL_29:
    v64 = objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v55, v51, v57, v58);
    goto LABEL_30;
  }

  v29 = 0;
  v64 = objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v45, 0, v47, v48);
LABEL_30:
  v75 = v64;
  v80 = objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v65, typeCopy, v66, v67);
  if (v75 != v80)
  {
    objc_msgSend_willModify(selfCopy, v76, v77, v78, v79);
    v83 = objc_msgSend_aggregatorForColumn_(selfCopy, v81, lower, upper, v82);
    v88 = v83;
    if (v83)
    {
      objc_msgSend_rebuildAggFormulas(v83, v84, v85, v86, v87);
      objc_msgSend_resetAllAggsFormula(selfCopy, v89, v90, v91, v92);
    }

    else if (v80)
    {
      v93 = objc_msgSend_createAggregatorOnColumn_(selfCopy, v84, lower, upper, v87);
    }
  }

  v94 = objc_msgSend_calcEngine(selfCopy, v76, v77, v78, v79);
  v99 = objc_msgSend_groupByUid(selfCopy, v95, v96, v97, v98);
  v108[0] = selfCopy->_indirectAggTypeChangeFormulaCoord;
  v108[1] = v99;
  v108[2] = v100;
  objc_msgSend_markCellRefAsDirty_(v94, v100, v108, v101, v102);

  objc_msgSend_didChangeGroupByStructure(selfCopy, v103, v104, v105, v106);
}

- (void)enumerateAggregates:(id)aggregates
{
  v33 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_columnAggregates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v27, v32, 16);
  if (v11)
  {
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      v15 = objc_msgSend_aggregateType(v14, v7, v8, v9, v10, v27);
      v20 = objc_msgSend_columnUid(v14, v16, v17, v18, v19);
      v22 = v21;
      v26 = objc_msgSend_level(v14, v21, v23, v24, v25);
      aggregatesCopy[2](aggregatesCopy, v15, v20, v22, v26, &v31);
      if (v31)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v27, v32, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateAggregatesAtLevel:(unsigned __int8)level withBlock:(id)block
{
  levelCopy = level;
  v35 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v33 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_columnAggregates;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v29, v34, 16);
  if (v12)
  {
    v13 = *v30;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v29 + 1) + 8 * v14);
      if (objc_msgSend_level(v15, v8, v9, v10, v11) == levelCopy)
      {
        v16 = objc_msgSend_aggregateType(v15, v8, v9, v10, v11);
        v21 = objc_msgSend_columnUid(v15, v17, v18, v19, v20);
        v23 = v22;
        v27 = objc_msgSend_level(v15, v22, v24, v25, v26);
        blockCopy[2](blockCopy, v16, v21, v23, v27, &v33);
        if (v33)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v29, v34, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (unint64_t)numberOfAggregatesAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_columnAggregates;
  v6 = 0;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_level(*(*(&v15 + 1) + 8 * v13), v7, v8, v9, v10, v15) == levelCopy)
        {
          ++v6;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v11);
  }

  return v6;
}

- (id)groupNodeForGroupUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = TSKMakeUIDStructFromNSUUID();
  v8 = objc_msgSend_groupNodeForGroupUid_(self, v6, v5, v6, v7);

  return v8;
}

- (id)groupNodeForGroupUid:(TSKUIDStruct)uid
{
  uidCopy = uid;
  v3 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, &uidCopy);
  if (v3)
  {
    v3 = v3[4];
  }

  return v3;
}

- (unsigned)groupLevelForGroupUid:(TSKUIDStruct)uid
{
  uidCopy = uid;
  v3 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, &uidCopy);
  if (v3)
  {
    return objc_msgSend_groupLevel(v3[4], v4, v5, v6, v7);
  }

  else
  {
    return -1;
  }
}

- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid isBlank:(BOOL *)blank isError:(BOOL *)error
{
  *error = 0;
  *blank = 0;
  v7 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, uid);
  if (!v7)
  {
    return -1;
  }

  v12 = v7;
  v13 = objc_msgSend_groupLevel(v7[4], v8, v9, v10, v11);
  *blank = objc_msgSend_isBlankNode(v12[4], v14, v15, v16, v17);
  *error = objc_msgSend_isErrorNode(v12[4], v18, v19, v20, v21);
  return v13;
}

- (unsigned)groupLevelForGroupingColumnUid:(TSKUIDStruct)uid
{
  upper = uid._upper;
  lower = uid._lower;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_groupingColumns;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = 0;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_msgSend_groupingColumnUid(*(*(&v18 + 1) + 8 * i), v7, v8, v9, v10, v18) == lower && v7 == upper)
        {
          v16 = v12 + 1;
          goto LABEL_14;
        }

        ++v12;
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = -1;
LABEL_14:

  return v16;
}

- (void)markAllGroupNodesDirty
{
  v6 = objc_msgSend_count(self->_groupingColumns, a2, v2, v3, v4) - 1;
  v11 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213550B8;
  v15[3] = &unk_27845FA48;
  v16 = v11;
  v12 = v11;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v13, v6, v15, v14);
}

- (id)groupsAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, level, v3, v4);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22135519C;
  v12[3] = &unk_27845FA48;
  v8 = v7;
  v13 = v8;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v9, levelCopy, v12, v10);

  return v8;
}

- (id)rowsForGroupValue:(id)value atLevel:(unsigned __int8)level
{
  v5 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 0);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
    v11 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9, v10);
    v16 = objc_msgSend_columnRowUIDMap(v11, v12, v13, v14, v15);
    objc_msgSend_rowUidsAsVector(v5, v17, v18, v19, v20);
    v24 = objc_msgSend_rowIndexesForUIDs_(v16, v21, __p, v22, v23);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)rowUidsForGroupUids:(id)uids
{
  uidsCopy = uids;
  v5 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2213553A4;
  v13[3] = &unk_27845D8B0;
  v13[4] = self;
  v6 = v5;
  v14 = v6;
  objc_msgSend_foreachUuid_(uidsCopy, v7, v13, v8, v9);
  v10 = v14;
  v11 = v6;

  return v6;
}

- (void)enumerateRowsUidsAtLevel:(unsigned __int8)level withBlock:(id)block
{
  levelCopy = level;
  blockCopy = block;
  v10 = blockCopy;
  if (levelCopy == 253)
  {
    objc_msgSend_enumerateRowUidsWithBlock_(self->_groupRoot, v7, blockCopy, v8, v9);
  }

  else
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22135558C;
    v13[3] = &unk_278462FA8;
    v15 = v16;
    v14 = blockCopy;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v11, levelCopy, v13, v12);

    _Block_object_dispose(v16, 8);
  }
}

- (id)childGroupUidsForGroupUids:(id)uids
{
  uidsCopy = uids;
  v5 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22135571C;
  v13[3] = &unk_27845D8B0;
  v13[4] = self;
  v6 = v5;
  v14 = v6;
  objc_msgSend_foreachUuid_(uidsCopy, v7, v13, v8, v9);
  v10 = v14;
  v11 = v6;

  return v6;
}

- (id)labelRowUidsForGroupUids:(id)uids
{
  uidsCopy = uids;
  v5 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221355894;
  v13[3] = &unk_27845D8B0;
  v13[4] = self;
  v6 = v5;
  v14 = v6;
  objc_msgSend_foreachUuid_(uidsCopy, v7, v13, v8, v9);
  v10 = v14;
  v11 = v6;

  return v6;
}

- (id)labelRowUIDSet
{
  v6 = objc_msgSend_categoryOwner(self, a2, v2, v3, v4);
  v11 = objc_msgSend_tableModel(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_tableInfo(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_summaryModel(v16, v17, v18, v19, v20);

  v47 = 0;
  v48[0] = &v47;
  v48[1] = 0x2020000000;
  v48[2] = 0;
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x2020000000;
  v46[2] = 0;
  v26 = objc_opt_new();
  if (v21)
  {
    for (i = 1; i <= objc_msgSend_numberOfLevels(self, v22, v23, v24, v25); ++i)
    {
      v31 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v21, v28, i, v29, v30);
      v32 = v46;
      if (v31)
      {
        v33 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v21, v22, i, v24, v25);
        v32 = v48;
        if (v33 != 2)
        {
          continue;
        }
      }

      *(*v32 + 24) |= 1 << i;
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_221355BE4;
    v44[3] = &unk_278462FD0;
    v44[4] = self;
    v44[5] = &v45;
    v44[6] = &v47;
    objc_msgSend_enumerateAggregates_(self, v28, v44, v29, v30);
    for (j = 1; j <= objc_msgSend_numberOfLevels(self, v34, v35, v36, v37); ++j)
    {
      if ((*(v48[0] + 24) & (1 << j)) != 0)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_221355C78;
        v42[3] = &unk_27845FA48;
        v43 = v26;
        objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v39, (j - 1), v42, v40);
      }
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v47, 8);

  return v26;
}

- (id)labelRowUIDSetForCategoryLevel:(unsigned __int8)level labelRowVisibility:(unint64_t)visibility
{
  levelCopy = level;
  v7 = objc_opt_new();
  if (objc_msgSend_numberOfLevels(self, v8, v9, v10, v11) >= levelCopy)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    if (visibility)
    {
      if (visibility == 2)
      {
        v25 = 1;
LABEL_6:
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_221355EB8;
        v18[3] = &unk_27845FA48;
        v19 = v7;
        objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v15, (levelCopy - 1), v18, v16);
      }
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_221355E94;
      v20[3] = &unk_278462FF8;
      v21 = levelCopy;
      v20[4] = &v22;
      objc_msgSend_enumerateAggregates_(self, v12, v20, v13, v14);
      if (v23[3])
      {
        goto LABEL_6;
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  return v7;
}

- (id)rowUIDSetForCategoryLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221356000;
  v10[3] = &unk_27845FA48;
  v6 = v5;
  v11 = v6;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v7, levelCopy, v10, v8);

  return v6;
}

- (id)indexesOfGroupUidsInUids:(const void *)uids
{
  v7 = objc_opt_new();
  v8 = *uids;
  v9 = *(uids + 1);
  if (*uids != v9)
  {
    v10 = 0;
    do
    {
      v14 = objc_msgSend_groupNodeForGroupUid_(self, v5, *v8, v8[1], v6);
      if (v14)
      {
        objc_msgSend_addIndex_(v7, v11, v10, v12, v13);
      }

      ++v10;

      v8 += 2;
    }

    while (v8 != v9);
  }

  return v7;
}

- (id)groupNodeForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level
{
  uidCopy = uid;
  groupRoot = self->_groupRoot;
  if (level)
  {
    v5 = objc_msgSend_groupNodeForRowUid_atLevel_(groupRoot, a2, &uidCopy, level, level);
  }

  else
  {
    v5 = groupRoot;
  }

  return v5;
}

- (id)groupValueTupleForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level
{
  uidCopy = uid;
  groupRoot = self->_groupRoot;
  if (level)
  {
    v5 = objc_msgSend_groupNodeForRowUid_atLevel_(groupRoot, a2, &uidCopy, level, level);
    v10 = objc_msgSend_groupValueTuple(v5, v6, v7, v8, v9, uidCopy._lower, uidCopy._upper);
  }

  else
  {
    v10 = objc_msgSend_groupValueTuple(groupRoot, a2, uid._lower, uid._upper, level, uidCopy._lower, uidCopy._upper);
  }

  return v10;
}

- (void)willMakeGroupingChangesInRowUIDs:(id)ds
{
  dsCopy = ds;
  v8 = objc_msgSend_tableModel(self, v4, v5, v6, v7);
  isAPivotDataModel = objc_msgSend_isAPivotDataModel(v8, v9, v10, v11, v12);

  if ((isAPivotDataModel & 1) == 0)
  {
    if (!dsCopy)
    {
      v18 = [TSCEUIDSet alloc];
      v23 = objc_msgSend_topLevelGroupUid(self, v19, v20, v21, v22);
      dsCopy = objc_msgSend_initWithUUID_(v18, v24, v23, v24, v25);
    }

    v26 = objc_msgSend_tableInfo(self, v14, v15, v16, v17);
    objc_msgSend_willMakeGroupingChangesInRowUIDs_(v26, v27, dsCopy, v28, v29);
  }
}

- (void)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValue:(id)value
{
  v5 = *&index;
  v43 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v13 = objc_msgSend_locale(self, v9, v10, v11, v12);
  v15 = objc_msgSend_insertRowUid_atRowIndex_forGroupValueTuple_atLevel_withLocale_createdGroupNodeCount_(self->_groupRoot, v14, uid, v5, valueCopy, 1, v13, 0);
  if (v15)
  {
    os_unfair_lock_lock(&self->_lock);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = self->_aggregators;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v42, 16);
    if (v21)
    {
      v22 = *v39;
      do
      {
        v23 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = objc_msgSend_aggNodeForGroupNode_(*(*(&v38 + 1) + 8 * v23++), v18, v15, v19, v20, v38);
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v38, v42, 16);
      }

      while (v21);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (objc_msgSend_isRebuildFormulasDeferred(self, v25, v26, v27, v28))
    {
      self->_needsRebuildOfAggFormulas = 1;
    }

    else
    {
      for (i = *(objc_msgSend_aggNodes(v15, v29, v30, v31, v32) + 16); i; i = *i)
      {
        v34 = i[4];
        objc_msgSend_rebuildFormulasForAggNode_(v15, v35, v34, v36, v37);
      }
    }
  }
}

- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValue:(id)value
{
  valueCopy = value;
  groupRoot = self->_groupRoot;
  v11 = objc_msgSend_locale(self, v7, v8, v9, v10);
  objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(groupRoot, v12, uid, valueCopy, 1, v11);
}

- (void)removeRowUid:(const TSKUIDStruct *)uid
{
  groupRoot = self->_groupRoot;
  v8 = objc_msgSend_locale(self, a2, uid, v3, v4);
  objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(groupRoot, v7, uid, 0, 1);
}

- (void)removeRowUids:(id)uids
{
  uidsCopy = uids;
  if (objc_msgSend_count(uidsCopy, v4, v5, v6, v7))
  {
    objc_msgSend_willMakeGroupingChangesInRowUIDs_(self, v8, uidsCopy, v9, v10);
    objc_msgSend_removeRowUids_(self->_groupRoot, v11, uidsCopy, v12, v13);
  }
}

- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  levelCopy = level;
  valueCopy = value;
  v13 = objc_msgSend_locale(self, v9, v10, v11, v12);
  v15 = objc_msgSend_findGroupNodeForValue_atLevel_locale_(self->_groupRoot, v14, valueCopy, levelCopy, v13);
  v17 = v15;
  if (missingCopy && !v15)
  {
    v34[0] = 0;
    v34[1] = 0;
    objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(self, v16, v34, 0x7FFFFFFFLL, valueCopy);
    v17 = objc_msgSend_findGroupNodeForValue_atLevel_locale_(self->_groupRoot, v18, valueCopy, levelCopy, v13);
    if (!v17)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTGroupBy findGroupNodeForValue:atLevel:createIfMissing:]", v20, v21);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 2518, 0, "Was expecting to have created a groupNode for this groupValue: %@", valueCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }
  }

  return v17;
}

- (id)distinctValuesAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v7 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, level, v3, v4);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22135694C;
  v12[3] = &unk_27845FA48;
  v8 = v7;
  v13 = v8;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v9, levelCopy, v12, v10);

  return v8;
}

- (id)sortedValuesAtLevel:(unsigned __int8)level
{
  v5 = objc_msgSend_distinctValuesAtLevel_(self, a2, level, v3, v4);
  v10 = objc_msgSend_allObjects(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_mutableCopy(v10, v11, v12, v13, v14);

  objc_msgSend_sortUsingSelector_(v15, v16, sel_compare_, v17, v18);

  return v15;
}

- (id)aggregateRefOnValue:(id)value forColumnUid:(const TSKUIDStruct *)uid forType:(unsigned __int8)type atLevel:(unsigned __int8)level
{
  levelCopy = level;
  typeCopy = type;
  v9 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 1);
  v11 = objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v9, v10, typeCopy, levelCopy, uid);

  return v11;
}

- (id)groupValueRefOnValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 1);
  v9 = objc_msgSend_groupValueRefAtLevel_(v5, v6, levelCopy, v7, v8);

  return v9;
}

- (id)groupValueHierarchyRefOnValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 1);
  v9 = objc_msgSend_groupValueHierarchyRefAtLevel_(v5, v6, levelCopy, v7, v8);

  return v9;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v7 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v7 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5, v6);
  v12 = objc_msgSend_tableInfo(v7, v8, v9, v10, v11);

  return v12;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v7 = objc_msgSend_calcEngine(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (void)beginDeferringRebuildFormulas
{
  rebuildFormulasDeferredLevel = self->_rebuildFormulasDeferredLevel;
  self->_rebuildFormulasDeferredLevel = rebuildFormulasDeferredLevel + 1;
  if (rebuildFormulasDeferredLevel == -1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy beginDeferringRebuildFormulas]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 2577, 0, "overflow in beginDeferringRebuildFormulas");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
  }
}

- (void)endDeferringRebuildFormulas
{
  rebuildFormulasDeferredLevel = self->_rebuildFormulasDeferredLevel;
  if (rebuildFormulasDeferredLevel)
  {
    v7 = rebuildFormulasDeferredLevel - 1;
    self->_rebuildFormulasDeferredLevel = v7;
    if (!v7 && self->_needsRebuildOfAggFormulas)
    {
      self->_needsRebuildOfAggFormulas = 0;
      objc_msgSend_rebuildAllAggFormulas(self, a2, v2, v3, v4);
      if (TSUIndexSet::count(&self->_aggFormulaCoordsToFreeDeferred))
      {
        TSUIndexSet::addIndexes(&self->_aggFormulaCoordsFreeList, &self->_aggFormulaCoordsToFreeDeferred);

        TSUIndexSet::removeAllIndexes(&self->_aggFormulaCoordsToFreeDeferred);
      }
    }
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy endDeferringRebuildFormulas]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 2593, 0, "endDeferringRebuildFormulas called without matching beginDeferringRebuildFormulas - avoided underflow");

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v15, v16, v17, v18);
  }
}

- (void)deferGroupByChangeNotifications
{
  if (!self->_deferredGroupByChangeNotifications)
  {
    v5 = objc_opt_new();
    deferredGroupByChangeNotifications = self->_deferredGroupByChangeNotifications;
    self->_deferredGroupByChangeNotifications = v5;
  }

  deferGroupByChangeNotificationsLevel = self->_deferGroupByChangeNotificationsLevel;
  self->_deferGroupByChangeNotificationsLevel = deferGroupByChangeNotificationsLevel + 1;
  if (deferGroupByChangeNotificationsLevel == -1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy deferGroupByChangeNotifications]", v2, v3);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 2607, 0, "overflow in deferGroupByChangeNotifications");

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v15, v16, v17, v18);
  }
}

- (void)sendDeferredNotifictions:(id)notifictions
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  notifictionsCopy = notifictions;
  v6 = 0;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(notifictionsCopy, v5, &v29, v33, 16);
  if (v11)
  {
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(notifictionsCopy);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v15 = objc_msgSend_groupNode(v14, v7, v8, v9, v10, 0, 0, v29);
        v16 = v15 == 0;

        if (!v16)
        {
          v21 = objc_msgSend_groupNode(v14, v17, v18, v19, v20);
          v27 = objc_msgSend_groupUid(v21, v22, v23, v24, v25);
          v28 = v26;
        }

        if (objc_msgSend_notifyType(v14, v17, v18, v19, v20) == 3 && !sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, &v27))
        {
          if (!v6)
          {
            v6 = objc_opt_new();
          }

          objc_msgSend_addUUID_(v6, v7, v27, v28, v10);
        }

        if (!v6 || (objc_msgSend_containsUuid_(v6, v7, v27, v28, v10) & 1) == 0)
        {
          objc_msgSend_sendToDistributor_(v14, v7, self->_groupByChangeDistributor, v9, v10);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(notifictionsCopy, v7, &v29, v33, 16);
    }

    while (v11);
  }
}

- (void)resumeGroupByChangeNotifications
{
  deferGroupByChangeNotificationsLevel = self->_deferGroupByChangeNotificationsLevel;
  if (deferGroupByChangeNotificationsLevel)
  {
    v6 = deferGroupByChangeNotificationsLevel - 1;
    self->_deferGroupByChangeNotificationsLevel = v6;
    if (!v6)
    {
      objc_msgSend_sendDeferredNotifictions_(self, a2, self->_deferredGroupByChangeNotifications, v2, v3);
      deferredGroupByChangeNotifications = self->_deferredGroupByChangeNotifications;

      objc_msgSend_removeAllObjects(deferredGroupByChangeNotifications, v19, v20, v21, v22);
    }
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy resumeGroupByChangeNotifications]", v2, v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 2644, 0, "resumeGroupByChangeNotifications called without matching deferGroupByChangeNotifications - avoided underflow");

    v18 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v18, v14, v15, v16, v17);
  }
}

- (void)enterCalcEngineMode
{
  if (!self->_calcEngineGroupByChangeNotifications)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->_calcEngineGroupByChangeNotifications)
    {
      v3 = objc_opt_new();
      calcEngineGroupByChangeNotifications = self->_calcEngineGroupByChangeNotifications;
      self->_calcEngineGroupByChangeNotifications = v3;

      obj->_inCalcEngineMode = 1;
    }

    objc_sync_exit(obj);
  }
}

- (void)exitCalcEngineMode
{
  if (self->_calcEngineGroupByChangeNotifications)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    calcEngineGroupByChangeNotifications = self->_calcEngineGroupByChangeNotifications;
    if (calcEngineGroupByChangeNotifications)
    {
      v4 = calcEngineGroupByChangeNotifications;
      v5 = self->_calcEngineGroupByChangeNotifications;
      self->_calcEngineGroupByChangeNotifications = 0;
    }

    objc_sync_exit(selfCopy);

    objc_msgSend_sendDeferredNotifictions_(selfCopy, v6, calcEngineGroupByChangeNotifications, v7, v8);
    selfCopy->_inCalcEngineMode = 0;
  }
}

- (void)upgradeForNewAggregateTypes:(id)types
{
  v18 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_aggregators;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_upgradeForNewAggregateTypes_(*(*(&v13 + 1) + 8 * v12++), v7, typesCopy, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)rebuildAllAggFormulas
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_aggregators;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v12)
  {
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_rebuildAggFormulas(*(*(&v19 + 1) + 8 * v14++), v8, v9, v10, v11, v19);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v19, v23, 16);
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_msgSend_resetAllAggsFormula(self, v15, v16, v17, v18);
}

- (void)resetGroupings
{
  v180 = *MEMORY[0x277D85DE8];
  v167 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
  if (!v167)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupBy resetGroupings]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 2706, 0, "Can't resetGroupings with no calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v24 = objc_msgSend_tableModel(WeakRetained, v20, v21, v22, v23);

  v178.origin = objc_msgSend_bodyRange(v24, v25, v26, v27, v28);
  v178.size = v29;
  __p = 0;
  v176 = 0;
  v177 = 0;
  v33 = objc_msgSend_tableInfo(v24, v29, v30, v31, v32);
  objc_msgSend_willModify(v33, v34, v35, v36, v37);

  objc_msgSend_willModify(v24, v38, v39, v40, v41);
  objc_msgSend_willModify(self, v42, v43, v44, v45);
  objc_msgSend_removeAllRowUids(self->_groupRoot, v46, v47, v48, v49);
  sub_2210BCED4(&self->_rowUidLookupList._uids.__begin_);
  v54 = objc_msgSend_columnRowUIDMap(v24, v50, v51, v52, v53);
  v59 = objc_msgSend_rowUIDs(v54, v55, v56, v57, v58);
  sub_2210BCD30(&self->_rowUidLookupList._uids.__begin_, v59);

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v60 = self->_groupingColumns;
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v171, v179, 16);
  if (v66)
  {
    v67 = *v172;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v172 != v67)
        {
          objc_enumerationMutation(v60);
        }

        v69 = objc_msgSend_columnUid(*(*(&v171 + 1) + 8 * i), v62, v63, v64, v65);
        v71 = v70;
        v75 = objc_msgSend_columnRowUIDMap(v24, v70, v72, v73, v74);
        LODWORD(v69) = objc_msgSend_columnIndexForColumnUID_(v75, v76, v69, v71, v77);

        LOWORD(indirectAggTypeChangeFormulaCoord) = v69;
        if (v69 != 0x7FFF)
        {
          sub_221266D14(&__p, &indirectAggTypeChangeFormulaCoord);
        }
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v62, &v171, v179, 16);
    }

    while (v66);
  }

  objc_msgSend_beginDeferringRebuildFormulas(self, v78, v79, v80, v81);
  if (v178.size.numberOfRows)
  {
    v163 = TSUCellRect::firstRow(&v178);
    v162 = TSUCellRect::lastRow(&v178);
    v165 = objc_msgSend_mergeOwner(v24, v86, v87, v88, v89);
    if (v163 <= v162)
    {
      v94 = 0;
      do
      {
        indirectAggTypeChangeFormulaCoord = 0;
        v169 = 0;
        v95 = objc_msgSend_columnRowUIDMap(v24, v90, v91, v92, v93);
        indirectAggTypeChangeFormulaCoord = objc_msgSend_rowUIDForRowIndex_(v95, v96, v163, v97, v98);
        v169 = v99;

        v164 = objc_opt_new();
        v104 = __p;
        v103 = v176;
        if (__p != v176)
        {
          v105 = 0;
          v106 = 0;
          do
          {
            v107 = objc_msgSend_mergeOriginForBaseCellCoord_(v165, v100, v163 | (v104[v106] << 32), v101, v102);
            v114 = objc_msgSend_cellValueAtBaseCellCoord_(v24, v108, v107, v109, v110);
            if (!v114)
            {
              if (!v94)
              {
                v115 = [TSCENilCellValue alloc];
                v120 = objc_msgSend_documentLocale(v167, v116, v117, v118, v119);
                v94 = objc_msgSend_initWithLocale_(v115, v121, v120, v122, v123);
              }

              v94 = v94;
              v114 = v94;
            }

            v124 = objc_msgSend_objectAtIndex_(self->_groupingColumns, v111, v106, v112, v113);
            v127 = objc_msgSend_groupValueForValue_calcEngine_(v124, v125, v114, v167, v126);

            if (v127)
            {
              objc_msgSend_addObject_(v164, v128, v127, v129, v130);
            }

            ++v106;
            ++v105;
          }

          while (&v104[v105] != v103);
        }

        v131 = [TSTGroupValueTuple alloc];
        v135 = objc_msgSend_initWithValueArray_(v131, v132, v164, v133, v134);
        v141 = objc_msgSend_numberOfLevels(v135, v136, v137, v138, v139);
        if (v141 == (v176 - __p) >> 1)
        {
          objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(self, v140, &indirectAggTypeChangeFormulaCoord, v163, v135);
        }

        ++v163;
      }

      while (v163 <= v162);
    }

    else
    {
      v94 = 0;
    }
  }

  objc_msgSend_clearEmptyNodes(self->_groupRoot, v82, v83, v84, v85);
  objc_msgSend_endDeferringRebuildFormulas(self, v142, v143, v144, v145);
  v150 = objc_msgSend_groupByUid(self, v146, v147, v148, v149);
  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  v169 = v150;
  v170 = v151;
  objc_msgSend_markCellRefAsDirty_(v167, v151, &indirectAggTypeChangeFormulaCoord, v152, v153);
  v158 = objc_msgSend_allGroupNodeUids(self, v154, v155, v156, v157);
  objc_msgSend_willMakeGroupingChangesInRowUIDs_(self, v159, v158, v160, v161);

  if (__p)
  {
    v176 = __p;
    operator delete(__p);
  }
}

- (void)insertRowUids:(id)uids
{
  v96 = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v74 = objc_msgSend_calcEngine(self, v4, v5, v6, v7);
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);

  v92 = 0;
  v93 = 0;
  v94 = 0;
  v76 = v13;
  objc_msgSend_willModify(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_tableInfo(v13, v18, v19, v20, v21);
  objc_msgSend_willModify(v22, v23, v24, v25, v26);

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  selfCopy = self;
  v27 = self->_groupingColumns;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v88, v95, 16);
  if (v33)
  {
    v34 = *v89;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v89 != v34)
        {
          objc_enumerationMutation(v27);
        }

        v36 = objc_msgSend_columnUid(*(*(&v88 + 1) + 8 * i), v29, v30, v31, v32, selfCopy, v74);
        v38 = v37;
        v42 = objc_msgSend_columnRowUIDMap(v76, v37, v39, v40, v41);
        LODWORD(v36) = objc_msgSend_columnIndexForColumnUID_(v42, v43, v36, v38, v44);

        LOWORD(v86[0]) = v36;
        if (v36 == 0x7FFF)
        {
          v48 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTGroupBy insertRowUids:]", v46, v47);
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v51, v52);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 2806, 0, "Column missing from table model when grouping");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
        }

        sub_221266D14(&v92, v86);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v88, v95, 16);
    }

    while (v33);
  }

  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = sub_22135824C;
  v86[4] = sub_22135825C;
  v87 = 0;
  v63 = objc_msgSend_mergeOwner(v76, v59, v60, v61, v62);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3321888768;
  v77[2] = sub_221358264;
  v77[3] = &unk_2834A6B20;
  v64 = v76;
  v78 = v64;
  __p = 0;
  v84 = 0;
  v85 = 0;
  sub_221362914(&__p, v92, v93, (v93 - v92) >> 1);
  v65 = v63;
  v79 = v65;
  v82 = v86;
  v66 = v74;
  v80 = v66;
  v81 = selfCopy;
  objc_msgSend_foreachUuid_(uidsCopy, v67, v77, v68, v69);
  objc_msgSend_willMakeGroupingChangesInRowUIDs_(selfCopy, v70, uidsCopy, v71, v72);

  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v86, 8);
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }
}

- (TSUCellCoord)getNextAggFormulaCoord
{
  if (TSUIndexSet::count(&self->_aggFormulaCoordsFreeList))
  {
    Index = TSUIndexSet::firstIndex(&self->_aggFormulaCoordsFreeList);
    TSUIndexSet::removeIndex(&self->_aggFormulaCoordsFreeList);

    return MEMORY[0x2821EC798](Index);
  }

  else
  {
    nextAggFormulaCoord = self->_nextAggFormulaCoord;
    TSUCellCoord::addOffset(&self->_nextAggFormulaCoord);
    if (self->_nextAggFormulaCoord.column >= 0x3E8u)
    {
      self->_nextAggFormulaCoord = (self->_nextAggFormulaCoord.row + 1);
    }

    objc_msgSend_willModify(self, v5, v6, v7, v8);
    return nextAggFormulaCoord;
  }
}

- (void)freeAggFormulaCoord:(const TSUCellCoord *)coord
{
  v3 = coord->row == 0x7FFFFFFF || (*coord & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3 && TSUCellCoord::encodeAsUInt(coord) <= 0x7FFFFFFFFFFFFFFELL)
  {
    isRebuildFormulasDeferred = objc_msgSend_isRebuildFormulasDeferred(self, v5, v6, v7, v8);
    v10 = &OBJC_IVAR___TSTGroupBy__aggFormulaCoordsFreeList;
    if (isRebuildFormulasDeferred)
    {
      v10 = &OBJC_IVAR___TSTGroupBy__aggFormulaCoordsToFreeDeferred;
    }

    v11 = (self + *v10);

    TSUIndexSet::addIndex(v11);
  }
}

- (void)usedAggFormulaCoord:(const TSUCellCoord *)coord
{
  v6 = *coord;
  TSUCellCoord::addOffset(&v6);
  row = self->_nextAggFormulaCoord.row;
  if (row < v6.row || row == v6.row && self->_nextAggFormulaCoord.column < v6.column)
  {
    self->_nextAggFormulaCoord = v6;
  }

  if (TSUIndexSet::count(&self->_aggFormulaCoordsFreeList))
  {
    if (TSUCellCoord::encodeAsUInt(coord) <= 0x7FFFFFFFFFFFFFFELL)
    {
      TSUIndexSet::removeIndex(&self->_aggFormulaCoordsFreeList);
    }
  }
}

- (void)updateAggFormulaCoord:(TSUCellCoord)coord
{
  coordCopy = coord;
  v6 = objc_msgSend_aggNodeForAggFormulaCoord_(self, a2, &coordCopy, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_groupNode(v6, v7, v8, v9, v10);
    objc_msgSend_rebuildFormulasForAggNode_(v12, v13, v11, v14, v15);

    goto LABEL_22;
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  v18 = coordCopy.row == groupingColumnHeadersFormulaCoord.row;
  v17 = (*&groupingColumnHeadersFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000;
  v18 = v18 && v17 == 0;
  if (v18 || ((groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord, v18 = coordCopy.row == groupingColumnsFormulaCoord.row, v20 = (*&groupingColumnsFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000, v18) ? (v21 = v20 == 0) : (v21 = 0), v21))
  {
LABEL_21:
    objc_msgSend_resetGroupingColumnsFormula(self, v7, v8, v9, v10);
    goto LABEL_22;
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  v18 = coordCopy.row == allAggsInGroupRootFormulaCoord.row;
  v23 = (*&allAggsInGroupRootFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000;
  v24 = v18 && v23 == 0;
  if (v24 || ((indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord, coordCopy.row == indirectAggTypeChangeFormulaCoord.row) ? (v26 = ((*&indirectAggTypeChangeFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000) == 0) : (v26 = 0), v26))
  {
    objc_msgSend_resetAllAggsFormula(self, v7, v8, v9, v10);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)setValue:(id)value forFormulaCoord:(const TSUCellCoord *)coord
{
  valueCopy = value;
  v9 = objc_msgSend_aggNodeForAggFormulaCoord_(self, v6, coord, v7, v8);
  os_unfair_lock_lock(&self->_aggValuesLock);
  if (v9)
  {
    objc_msgSend_setAccumulator_(v9, v10, valueCopy, v11, v12);
  }

  os_unfair_lock_unlock(&self->_aggValuesLock);
}

- (id)valueForFormulaCoord:(const TSUCellCoord *)coord
{
  v6 = objc_msgSend_aggNodeForAggFormulaCoord_(self, a2, coord, v3, v4);
  os_unfair_lock_lock(&self->_aggValuesLock);
  v11 = objc_msgSend_accumulator(v6, v7, v8, v9, v10);
  os_unfair_lock_unlock(&self->_aggValuesLock);

  return v11;
}

- (void)setAggNode:(id)node forFormulaCoord:(const TSUCellCoord *)coord
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v8 = sub_221362990(&self->_aggNodesByFormulaCoord.__table_.__bucket_list_.__ptr_, coord);
    objc_storeStrong(v8 + 3, node);
    objc_msgSend_usedAggFormulaCoord_(self, v9, coord, v10, v11);
  }

  else
  {
    sub_221087EC8(&self->_aggNodesByFormulaCoord.__table_.__bucket_list_.__ptr_, coord);
  }
}

- (id)aggNodeForAggFormulaCoord:(const TSUCellCoord *)coord
{
  v3 = sub_221087F14(&self->_aggNodesByFormulaCoord.__table_.__bucket_list_.__ptr_, coord);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (void)addAggregator:(id)aggregator
{
  v38 = *MEMORY[0x277D85DE8];
  aggregatorCopy = aggregator;
  if (aggregatorCopy)
  {
    v5 = 120;
    aggregators = self->_aggregators;
    if (!aggregators)
    {
      v7 = objc_opt_new();
      v8 = self->_aggregators;
      self->_aggregators = v7;

      aggregators = self->_aggregators;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = aggregators;
    v11 = 0;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v37, 16);
    if (v16)
    {
      v17 = *v34;
      v31 = 120;
      selfCopy = self;
      while (2)
      {
        v18 = 0;
        v19 = v11;
        v11 += v16;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(*(&v33 + 1) + 8 * v18);
          v21 = objc_msgSend_columnUid(aggregatorCopy, v12, v13, v14, v15, v31, selfCopy, v33);
          v23 = v22;
          v27 = objc_msgSend_columnUid(v20, v22, v24, v25, v26);
          if (v23 < v12 || (v23 == v12 ? (v28 = v21 >= v27) : (v28 = 1), !v28))
          {
            v11 = v19;
            v5 = v31;
            self = selfCopy;
            goto LABEL_19;
          }

          ++v19;
          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v33, v37, 16);
        v5 = v31;
        self = selfCopy;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    objc_msgSend_insertObject_atIndex_(*(&self->super.super.isa + v5), v29, aggregatorCopy, v11, v30);
  }
}

- (id)createAggregatorOnColumn:(TSKUIDStruct)column
{
  upper = column._upper;
  lower = column._lower;
  objc_msgSend_willModify(self, a2, column._lower, column._upper, v3);
  v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14, v15);

  v16 = [TSTAggregator alloc];
  v18 = objc_msgSend_initWithColumn_forGroupBy_(v16, v17, lower, upper, self);
  objc_msgSend_rebuildAggFormulas(v18, v19, v20, v21, v22);
  objc_msgSend_addAggregator_(self, v23, v18, v24, v25);
  objc_msgSend_resetAllAggsFormula(self, v26, v27, v28, v29);

  return v18;
}

- (id)anyAggregator
{
  v6 = objc_msgSend_count(self->_aggregators, a2, v2, v3, v4);
  if (v6)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_aggregators, v7, 0, v8, v9);
  }

  return v6;
}

- (void)dropAggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  if (aggregatorCopy)
  {
    v8 = objc_msgSend_calcEngine(self, v4, v5, v6, v7);
    objc_msgSend_clearAggFormulas_(aggregatorCopy, v9, v8, v10, v11);

    objc_msgSend_removeObjectIdenticalTo_(self->_aggregators, v12, aggregatorCopy, v13, v14);
  }
}

- (BOOL)createAggregatorsIfMissingAndAssert:(BOOL)assert
{
  assertCopy = assert;
  v86 = *MEMORY[0x277D85DE8];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v4 = self->_columnAggregates;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v81, v85, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v82;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v82 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v81 + 1) + 8 * i);
        v15 = objc_msgSend_columnUid(v14, v6, v7, v8, v9);
        v22 = objc_msgSend_aggregatorForColumn_(self, v16, v15, v16, v17);
        if (!v22)
        {
          if (assertCopy)
          {
            v23 = MEMORY[0x277D81150];
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTGroupBy createAggregatorsIfMissingAndAssert:]", v20, v21);
            v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v26, v27);
            v80._lower = objc_msgSend_columnUid(v14, v29, v30, v31, v32);
            v80._upper = v33;
            v34 = TSKUIDStruct::description(&v80);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v35, v24, v28, 3034, 0, "No TSTAggregator found for column %@", v34);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
          }

          objc_msgSend_willModify(self, v18, v19, v20, v21);
          v40 = [TSTAggregator alloc];
          v45 = objc_msgSend_columnUid(v14, v41, v42, v43, v44);
          v22 = objc_msgSend_initWithColumn_forGroupBy_(v40, v46, v45, v46, self);
          objc_msgSend_rebuildAggFormulas(v22, v47, v48, v49, v50);
          objc_msgSend_addAggregator_(self, v51, v22, v52, v53);
          if (v22)
          {
            v11 = 1;
          }

          else
          {
            v57 = MEMORY[0x277D81150];
            v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTGroupBy createAggregatorsIfMissingAndAssert:]", v55, v56);
            v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v60, v61);
            v80._lower = objc_msgSend_columnUid(v14, v63, v64, v65, v66);
            v80._upper = v67;
            v68 = TSKUIDStruct::description(&v80);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v69, v58, v62, 3043, 0, "Couldn't create an aggreator for column: %@", v68);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
            v11 = 1;
            v22 = 0;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v81, v85, 16);
    }

    while (v10);

    if (v11)
    {
      objc_msgSend_resetAllAggsFormula(self, v74, v75, v76, v77);
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)dropAllAggregators
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_copy(self->_aggregators, a2, v2, v3, v4);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v34, v38, 16);
  if (v12)
  {
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_dropAggregator_(self, v9, *(*(&v34 + 1) + 8 * i), v10, v11);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v34, v38, 16);
    }

    while (v12);
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row != 0x7FFFFFFF && (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v21 = objc_msgSend_categoryOwner(self, v15, v16, v17, v18);
    v26 = objc_msgSend_calcEngine(v21, v22, v23, v24, v25);

    v33[0] = objc_msgSend_groupByUid(self, v27, v28, v29, v30);
    v33[1] = v31;
    objc_msgSend_removeFormulaAt_inOwner_(v26, v31, &self->_allAggsInGroupRootFormulaCoord, v33, v32);
  }
}

- (id)aggregatorForColumn:(TSKUIDStruct)column
{
  upper = column._upper;
  lower = column._lower;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_aggregators;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_columnUid(v14, v7, v8, v9, v10, v18) == lower && v7 == upper)
        {
          v16 = v14;
          goto LABEL_14;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (TSKUIDStruct)ownerUID
{
  p_groupByUid = &self->_groupByUid;
  lower = self->_groupByUid.var0.var0._lower;
  upper = p_groupByUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)linkedResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v7 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  atCopy = at;
  v106[0] = at;
  engineCopy = engine;
  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  v15 = atCopy.row == rowOrderChangedCoord.row;
  v14 = (*&rowOrderChangedCoord ^ *&atCopy) & 0x101FFFF00000000;
  v15 = v15 && v14 == 0;
  if (!v15)
  {
    columnOrderChangedCoord = self->_columnOrderChangedCoord;
    v15 = atCopy.row == columnOrderChangedCoord.row;
    v17 = (*&columnOrderChangedCoord ^ *&atCopy) & 0x101FFFF00000000;
    if (!v15 || v17 != 0)
    {
      indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
      v15 = atCopy.row == indirectAggTypeChangeFormulaCoord.row;
      v20 = (*&indirectAggTypeChangeFormulaCoord ^ *&atCopy) & 0x101FFFF00000000;
      if (!v15 || v20 != 0)
      {
        groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
        v15 = atCopy.row == groupingColumnsFormulaCoord.row;
        v23 = (*&groupingColumnsFormulaCoord ^ *&atCopy) & 0x101FFFF00000000;
        if (!v15 || v23 != 0)
        {
          groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
          v15 = atCopy.row == groupingColumnHeadersFormulaCoord.row;
          v26 = (*&groupingColumnHeadersFormulaCoord ^ *&atCopy) & 0x101FFFF00000000;
          if (!v15 || v26 != 0)
          {
            allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
            if (atCopy.row != allAggsInGroupRootFormulaCoord.row || ((*&allAggsInGroupRootFormulaCoord ^ *&atCopy) & 0x101FFFF00000000) != 0)
            {
              hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
              if (atCopy.row == hiddenStatesChangedCoord.row)
              {
                v30 = *&hiddenStatesChangedCoord ^ *&atCopy;
                v31 = (v30 & 0x1FFFF00000000) == 0 && (v30 & 0x100000000000000) == 0;
              }

              else
              {
                v31 = 0;
              }

              if (atCopy.row != 0x7FFFFFFF && (*&atCopy & 0xFFFF00000000) != 0x7FFF00000000 && !v31)
              {
                v105[0] = v106[0];
                v105[1] = objc_msgSend_groupByUid(self, v8, v9, v10, v11);
                v105[2] = v32;
                v35 = objc_msgSend_valueForFormulaCoord_(self, v32, v106, v33, v34);
                v40 = v35;
                if (v35)
                {
                  objc_msgSend_clear(v35, v36, v37, v38, v39);
                }

                else
                {
                  v45 = [TSTAccumulator alloc];
                  v50 = objc_msgSend_documentLocale(engineCopy, v46, v47, v48, v49);
                  v40 = objc_msgSend_initWithLocale_(v45, v51, v50, v52, v53);
                }

                v58 = objc_msgSend_tableModel(self, v41, v42, v43, v44);
                if (engineCopy)
                {
                  objc_msgSend_precedentsOfCell_(engineCopy, v54, v105, v56, v57);
                }

                else
                {
                  memset(&v104, 0, sizeof(v104));
                }

                v59 = objc_msgSend_nilValue(TSCENilValue, v54, v55, v56, v57);
                v101[0] = 0;
                v101[1] = v101;
                v101[2] = 0x5812000000;
                v101[3] = sub_2213599B4;
                v101[4] = sub_2213599C0;
                v101[5] = &unk_22188E88F;
                v103[0] = 0;
                v103[1] = 0;
                v101[6] = 0;
                v101[7] = 0;
                v102 = v103;
                v93 = 0;
                v94 = &v93;
                v95 = 0x4012000000;
                v96 = sub_2213599CC;
                v97 = nullsub_54;
                v98 = &unk_22188E88F;
                v99 = 0;
                v100 = 0;
                if (objc_msgSend_isForPivotTable(self, v60, v61, v62, v63))
                {
                  v68 = objc_msgSend_groupBySet(self, v64, v65, v66, v67);
                  v73 = v68;
                  if (v68)
                  {
                    v74 = objc_msgSend_pivotDataTableUID(v68, v69, v70, v71, v72);
                    v75 = v94;
                    v94[6] = v74;
                    v75[7] = v76;
                  }
                }

                v86[0] = MEMORY[0x277D85DD0];
                v86[1] = 3221225472;
                v86[2] = sub_2213599DC;
                v86[3] = &unk_278463020;
                v86[4] = self;
                v77 = v40;
                v87 = v77;
                v78 = v58;
                v88 = v78;
                v91 = &v93;
                v92 = v101;
                v89 = engineCopy;
                v79 = v59;
                v90 = v79;
                TSCEReferenceSet::foreachCellRef(&v104, v86);
                objc_msgSend_setValue_forFormulaCoord_(self, v80, v77, v106, v81);

                _Block_object_dispose(&v93, 8);
                _Block_object_dispose(v101, 8);
                sub_22107C860(&v102, v103[0]);

                TSCEReferenceSet::~TSCEReferenceSet(&v104);
                atCopy = v106[0];
              }
            }
          }
        }
      }
    }
  }

  v82 = self->_groupingColumnHeadersFormulaCoord;
  v15 = atCopy.row == v82.row;
  v83 = (*&v82 ^ *&atCopy) & 0x101FFFF00000000;
  if (v15 && v83 == 0)
  {
    self->_groupingColumnHeadersChanged = 1;
  }

  return options;
}

- (void)invalidateForCalcEngine:(id)engine
{
  engineCopy = engine;
  if (self->_groupingColumnHeadersChanged && objc_msgSend_isEnabled(self, v4, v5, v6, v7))
  {
    self->_groupingColumnHeadersChanged = 0;
    v13 = objc_msgSend_groupByUid(self, v9, v10, v11, v12);
    v25[0] = self->_indirectAggTypeChangeFormulaCoord;
    v25[1] = v13;
    v25[2] = v14;
    if ((objc_msgSend_hasFormulaAt_(engineCopy, v14, v25, v15, v16) & 1) == 0)
    {
      objc_msgSend_resetAllAggsFormula(self, v17, v18, v19, v20);
    }

    v21 = objc_msgSend_allGroupNodeUids(self, v17, v18, v19, v20);
    objc_msgSend_willMakeGroupingChangesInRowUIDs_(self, v22, v21, v23, v24);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  v13[0] = objc_msgSend_groupByUid(self, v7, v8, v9, v10);
  v13[1] = v11;
  v12 = sub_221119F90(map, v13);
  if (v12)
  {
    self->_groupByUid = v12[2];
  }
}

- (BOOL)isValidCategoryRef:(id)ref
{
  refCopy = ref;
  if (objc_msgSend_isEnabled(self, v5, v6, v7, v8) && (v13 = objc_msgSend_groupByUid(self, v9, v10, v11, v12), v15 = v14, v13 == objc_msgSend_groupByUid(refCopy, v14, v16, v17, v18)) && v15 == v9 && (objc_msgSend_isBadRef(refCopy, v9, v10, v11, v12) & 1) == 0)
  {
    v21 = objc_msgSend_groupLevel(refCopy, v9, v10, v11, v12);
    if (v21 > objc_msgSend_numberOfLevels(self, v22, v23, v24, v25))
    {
      goto LABEL_8;
    }

    v30 = objc_msgSend_tableModel(self, v26, v27, v28, v29);
    isAPivotDataModel = objc_msgSend_isAPivotDataModel(v30, v31, v32, v33, v34);

    if (isAPivotDataModel)
    {
      v19 = 1;
      goto LABEL_6;
    }

    v40 = objc_msgSend_tableInfo(self, v36, v37, v38, v39);
    v45 = objc_msgSend_columnUid(refCopy, v41, v42, v43, v44);
    v48 = objc_msgSend_columnIndexForColumnUID_(v40, v46, v45, v46, v47);

    if (v48 == 0x7FFF)
    {
LABEL_8:
      v19 = 0;
    }

    else
    {
      v86 = objc_msgSend_relativeGroupUid(refCopy, v49, v50, v51, v52);
      v87 = v53;
      if (v86 | v53 && (v57 = objc_msgSend_relativeLevelOfAncestorGroupUid_(TSTGroupBy, v53, &v86, v55, v56)) != 0)
      {
        v19 = v57 <= (objc_msgSend_numberOfLevels(self, v53, v54, v55, v56, v86, v87) + 1);
      }

      else
      {
        v58 = objc_msgSend_absoluteGroupUid(refCopy, v53, v54, v55, v56, v86, v87);
        v61 = objc_msgSend_groupNodeForGroupUid_(self, v59, v58, v59, v60);
        v66 = v61;
        v19 = v61 != 0;
        if (v61)
        {
          if (objc_msgSend_groupLevel(v61, v62, v63, v64, v65))
          {
            v71 = objc_msgSend_parentNode(v66, v67, v68, v69, v70);

            if (!v71)
            {
              v75 = MEMORY[0x277D81150];
              v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSTGroupBy isValidCategoryRef:]", v73, v74);
              v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v78, v79);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v81, v76, v80, 3377, 0, "Only the root groupNode should have no parentNode pointer");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
            }
          }
        }
      }
    }
  }

  else
  {
    v19 = objc_msgSend_refersToPivotTable(refCopy, v9, v10, v11, v12);
  }

LABEL_6:

  return v19;
}

- (BOOL)isSpanningCategoryRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_absoluteGroupUid(refCopy, v5, v6, v7, v8);
  LODWORD(self) = objc_msgSend_groupLevelForGroupUid_(self, v10, v9, v10, v11);
  LOBYTE(self) = objc_msgSend_groupLevel(refCopy, v12, v13, v14, v15) > self;

  return self;
}

- (id)columnNameForCategoryRef:(id)ref
{
  refCopy = ref;
  v14[0] = objc_msgSend_columnUid(refCopy, v5, v6, v7, v8);
  v14[1] = v9;
  v12 = objc_msgSend_p_columnNameForColumnUid_(self, v9, v14, v10, v11);

  return v12;
}

- (id)columnNameForCategoryLevel:(unsigned __int8)level shortForm:(BOOL)form
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = (level - 1);
  if (v5 > 9 || (v6 = form, objc_msgSend_groupingColumns(self, a2, level, form, v4), v8 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend_count(v8, v9, v10, v11, v12), v8, v5 >= v13))
  {
    v30 = 0;
  }

  else
  {
    v18 = objc_msgSend_groupingColumns(self, v14, v15, v16, v17);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v5, v20, v21);

    v85[0] = objc_msgSend_columnUid(v22, v23, v24, v25, v26);
    v85[1] = v27;
    v30 = objc_msgSend_p_columnNameForColumnUid_(self, v27, v85, v28, v29);
    if (objc_msgSend_isForPivotTable(self, v31, v32, v33, v34))
    {
      v39 = objc_msgSend_groupingType(v22, v35, v36, v37, v38);
      if (objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v40, v39, v41, v42))
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v47 = objc_msgSend_groupingColumns(self, v43, v44, v45, v46);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v81, v86, 16);
        if (v53)
        {
          v54 = *v82;
          while (2)
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v82 != v54)
              {
                objc_enumerationMutation(v47);
              }

              v56 = *(*(&v81 + 1) + 8 * i);
              if (v56 != v22)
              {
                v57 = objc_msgSend_columnUid(v56, v49, v50, v51, v52);
                v59 = v58;
                if (v57 == objc_msgSend_columnUid(v22, v58, v60, v61, v62) && v59 == v49)
                {
                  v64 = objc_msgSend_locale(self, v49, v50, v51, v52);
                  v66 = objc_msgSend_localizedStringForKey_value_table_(v64, v65, @"%@ (%@)", &stru_2834BADA0, @"TSTables");

                  v71 = objc_msgSend_groupingType(v22, v67, v68, v69, v70);
                  if (v6)
                  {
                    objc_msgSend_shortStringForGroupingType_(TSTGroupingColumn, v72, v71, v73, v74);
                  }

                  else
                  {
                    objc_msgSend_stringForGroupingType_(TSTGroupingColumn, v72, v71, v73, v74);
                  }
                  v75 = ;
                  v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v76, v66, v77, v78, v30, v75);

                  v30 = v79;
                  goto LABEL_23;
                }
              }
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v81, v86, 16);
            if (v53)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:
      }
    }
  }

  return v30;
}

- (id)p_columnNameForColumnUid:(const TSKUIDStruct *)uid
{
  v7 = objc_msgSend_tableInfo(self, a2, uid, v3, v4);
  if (objc_msgSend_isForPivotTable(self, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_tableModel(self, v12, v13, v14, v15);
    v19 = objc_msgSend_columnIndexForColumnUID_(v16, v17, uid->_lower, uid->_upper, v18);

    v24 = objc_msgSend_tableModel(self, v20, v21, v22, v23);
    v28 = objc_msgSend_displayNameForColumnAtIndex_(v24, v25, v19, v26, v27);
  }

  else
  {
    if (v7)
    {
      v29 = objc_msgSend_columnRowUIDMap(v7, v12, v13, v14, v15);
      v32 = objc_msgSend_columnIndexForColumnUID_(v29, v30, uid->_lower, uid->_upper, v31);

      v37 = objc_msgSend_translator(v7, v33, v34, v35, v36);
      v41 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(v37, v38, v32, v39, v40);
    }

    else
    {
      v37 = objc_msgSend_tableModel(self, v12, v13, v14, v15);
      v41 = objc_msgSend_columnIndexForColumnUID_(v37, v42, uid->_lower, uid->_upper, v43);
    }

    v65 = v41;

    v24 = objc_msgSend_calcEngine(self, v44, v45, v46, v47);
    v52 = objc_msgSend_namer(v24, v48, v49, v50, v51);
    v57 = objc_msgSend_categoryOwner(self, v53, v54, v55, v56);
    v64[0] = objc_msgSend_baseTableUID(v57, v58, v59, v60, v61);
    v64[1] = v62;
    v28 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v52, v62, &v65, v64, 1);
  }

  return v28;
}

- (unsigned)aggregateTypeForCategoryRef:(id)ref
{
  refCopy = ref;
  v13 = objc_msgSend_type(refCopy, v5, v6, v7, v8);
  if ((v13 - 11) <= 1u)
  {
    v14 = objc_msgSend_columnUid(refCopy, v9, v10, v11, v12);
    v16 = v15;
    v20 = objc_msgSend_groupLevel(refCopy, v15, v17, v18, v19);
    v13 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v21, v14, v16, v20);
  }

  return v13;
}

- (id)aggregateLabelForCategoryRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_aggregateTypeForCategoryRef_(self, v5, refCopy, v6, v7);
  v13 = objc_msgSend_locale(self, v9, v10, v11, v12);
  v17 = objc_msgSend_localizedLabelForAggType_(v13, v14, v8, v15, v16);

  return v17;
}

+ (unsigned)aggregateTypeForAggregateLabel:(id)label locale:(id)locale
{
  labelCopy = label;
  localeCopy = locale;
  if (objc_msgSend_length(labelCopy, v7, v8, v9, v10))
  {
    v14 = 0;
    while (1)
    {
      v15 = objc_msgSend_localizedLabelForAggType_(localeCopy, v11, v14, v12, v13);
      v19 = objc_msgSend_caseInsensitiveCompare_(v15, v16, labelCopy, v17, v18);

      if (!v19)
      {
        break;
      }

      if (++v14 == 34)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v14) = -1;
  }

  return v14;
}

- (unsigned)aggregateTypeForAggregateLabel:(id)label
{
  labelCopy = label;
  v9 = objc_msgSend_locale(self, v5, v6, v7, v8);
  v12 = objc_msgSend_aggregateTypeForAggregateLabel_locale_(TSTGroupBy, v10, labelCopy, v9, v11);

  return v12;
}

- (id)labelForCategoryRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_aggregateLabelForCategoryRef_(self, v5, refCopy, v6, v7);
  v12 = objc_msgSend_columnNameForCategoryRef_(self, v9, refCopy, v10, v11);
  if (objc_msgSend_length(v12, v13, v14, v15, v16))
  {
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%@: %@", v18, v19, v12, v8);
  }

  else
  {
    v20 = v8;
  }

  v21 = v20;

  return v21;
}

- (id)groupValueHierarchyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  v69[0] = objc_msgSend_relativeGroupUid(refCopy, v10, v11, v12, v13);
  v69[1] = v14;
  v18 = objc_msgSend_absoluteGroupUid(refCopy, v14, v15, v16, v17);
  v20 = v19;
  if (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v19, v69, v21, v22))
  {
    v27 = objc_msgSend_calcEngine(self, v23, v24, v25, v26);
    v30 = objc_msgSend_resolverForTableUID_(v27, v28, cellRef->_tableUID._lower, cellRef->_tableUID._upper, v29);

    v68[0] = objc_msgSend_rowUIDForRowIndex_(v30, v31, cellRef->coordinate.row, v32, v33);
    v68[1] = v34;
    v36 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v34, v69, v68, v35);
    if (v36 | v37)
    {
      v18 = v36;
      v20 = v37;
    }

    v38 = @"<Relative Ancestor>";
  }

  else
  {
    v38 = &stru_2834BADA0;
  }

  v39 = objc_msgSend_groupNodeForGroupUid_(self, v23, v18, v20, v26);
  if (v39 || (v59 = objc_msgSend_absoluteGroupUid(refCopy, v40, v41, v42, v43), v59 | v60) && (v64 = objc_msgSend_absoluteGroupUid(refCopy, v60, v61, v62, v63), objc_msgSend_groupNodeForGroupUid_(self, v65, v64, v65, v66), (v39 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v44 = v39;
    for (i = objc_msgSend_groupLevel(v39, v40, v41, v42, v43); i > objc_msgSend_groupLevel(refCopy, v46, v47, v48, v49); i = objc_msgSend_groupLevel(v54, v55, v56, v57, v58))
    {
      v54 = objc_msgSend_parentNode(v44, v50, v51, v52, v53);

      v44 = v54;
    }

    v38 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_namingContext_(v44, v50, 0, contextCopy, v53);
  }

  return v38;
}

- (id)groupNodeForGroupValueHierarchyFromSplitter:(id)splitter startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags
{
  splitterCopy = splitter;
  v14 = objc_msgSend_componentAtIndex_(splitterCopy, v11, component, v12, v13);
  v19 = objc_msgSend_numComponents(splitterCopy, v15, v16, v17, v18);
  if (!v14 || (v24 = v19, objc_msgSend_numWords(v14, v20, v21, v22, v23) <= word) || v24 == component)
  {
    v26 = self->_groupRoot;
  }

  else
  {
    v26 = objc_msgSend_findGroupNodeForDisplayValuesFromSplitter_atLevel_startAtComponent_startAtWord_preserveFlags_(self->_groupRoot, v25, splitterCopy, (v24 - component), component, word, flags);
  }

  v27 = v26;

  return v27;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)bodyRowUidsForCategoryRef:(SEL)ref atRowUid:(id)uid ordered:(const TSKUIDStruct *)ordered
{
  v6 = a6;
  uidCopy = uid;
  v15 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
  v20 = objc_msgSend_categoryOrder(v15, v16, v17, v18, v19);
  v57 = objc_msgSend_relativeGroupUid(uidCopy, v21, v22, v23, v24);
  v58 = v25;
  if (*ordered == 0)
  {
    v29 = objc_msgSend_absoluteGroupUid(uidCopy, v25, v26, v27, v28);
  }

  else
  {
    v29 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v25, &v57, ordered, v28);
  }

  v57 = v29;
  v58 = v30;
  if (v29 | v30 && (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v30, &v57, v32, v33) & 1) == 0)
  {
    objc_msgSend_groupNodeForGroupUid_(self, v30, v57, v58, v33);
  }

  else
  {
    v57 = objc_msgSend_absoluteGroupUid(uidCopy, v30, v31, v32, v33);
    v58 = v34;
    objc_msgSend_groupNodeForGroupUid_(self, v34, v57, v34, v35);
  }
  v36 = ;
  v50 = 0;
  v51 = &v50;
  v52 = 0x4812000000;
  v53 = sub_22135AFA8;
  v54 = sub_22135AFCC;
  *__p = 0u;
  v56 = 0u;
  v41 = objc_msgSend_groupLevel(uidCopy, v37, v38, v39, v40);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_22135AFE4;
  v49[3] = &unk_278462E18;
  v49[4] = &v50;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v36, v42, v41, v49, v43);
  if (v6)
  {
    if (v20)
    {
      objc_msgSend_orderedRowUidsFromUids_(v20, v44, (v51 + 6), v45, v46);
    }

    else
    {
      retstr->__begin_ = 0;
      retstr->__end_ = 0;
      retstr->__cap_ = 0;
    }
  }

  else
  {
    v47 = v51;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    retstr->__begin_ = 0;
    sub_221086EBC(retstr, v47[6], v47[7], (v47[7] - v47[6]) >> 4);
  }

  _Block_object_dispose(&v50, 8);
  if (__p[1])
  {
    *&v56 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self outError:(SEL)error
{
  v6[0] = 0;
  v6[1] = 0;
  return objc_msgSend_valuesForCategoryRef_atRowUid_outError_(self, error, a4, v6, a5);
}

- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid outError:(id)error
{
  v7 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(self, uid, error, a5, 0, a6);
  v13 = v7;
  if (v7)
  {
    objc_msgSend_allValues(v7, v8, v9, v10, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid hidingActionMask:(id)mask outError:(const TSKUIDStruct *)error
{
  v8 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(self, uid, mask, error, a6, a7);
  v14 = v8;
  if (v8)
  {
    objc_msgSend_allValues(v8, v9, v10, v11, v12);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (id)valueGridForCategoryRef:(id)ref outError:(id *)error
{
  v6[0] = 0;
  v6[1] = 0;
  v4 = objc_msgSend_valueGridForCategoryRef_atRowUid_outError_(self, a2, ref, v6, error);

  return v4;
}

- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid outError:(id *)error
{
  v5 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(self, a2, ref, uid, 0, error);

  return v5;
}

- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask outError:(id *)error
{
  maskCopy = mask;
  v539 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  v507 = objc_opt_new();
  v534 = objc_msgSend_relativeGroupUid(refCopy, v8, v9, v10, v11);
  v535 = v12;
  if (*uid == 0)
  {
    v16 = objc_msgSend_absoluteGroupUid(refCopy, v12, v13, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v12, &v534, uid, v15);
  }

  v534 = v16;
  v535 = v17;
  if (!(v16 | v17) || objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v17, &v534, v19, v20))
  {
    v534 = objc_msgSend_absoluteGroupUid(refCopy, v17, v18, v19, v20);
    v535 = v17;
  }

  v512 = objc_msgSend_type(refCopy, v17, v18, v19, v20);
  if (v512 == 11)
  {
    v25 = objc_msgSend_columnUid(refCopy, v21, v22, v23, v24);
    v27 = v26;
    v31 = objc_msgSend_groupLevel(refCopy, v26, v28, v29, v30);
    v512 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v32, v25, v27, v31);
  }

  if (v512 == 240)
  {
    *error = objc_msgSend_missingRunningTotalInFieldError(TSCEError, v21, v22, v23, v24);
    v33 = v507;
    goto LABEL_16;
  }

  if (v512 != 12)
  {
    if (!v512)
    {
      v517._tskFormat = 0;
      objc_msgSend_setEmptyValueAtCoord_(v507, v21, &v517, v23, v24);
      v33 = v507;
LABEL_16:
      v66 = v33;
      goto LABEL_117;
    }

    v496 = objc_msgSend_tableModel(self, v21, v22, v23, v24);
    v71 = objc_msgSend_tableInfo(self, v67, v68, v69, v70);
    v511 = v71;
    v493 = objc_opt_new();
    v76 = objc_msgSend_groupLevel(refCopy, v72, v73, v74, v75);
    if (objc_msgSend_refersToPivotTable(refCopy, v77, v78, v79, v80))
    {
      v85 = objc_msgSend_pivotTableUid(refCopy, v81, v82, v83, v84);
      v87 = v86;
      v91 = objc_msgSend_calcEngine(self, v86, v88, v89, v90);
      v505 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v92, v85, v87, v91);

      v97 = objc_msgSend_pivotOwner(v505, v93, v94, v95, v96);
      v506 = objc_msgSend_groupBySet(v97, v98, v99, v100, v101);

      if (v76 == 253)
      {
        if (objc_msgSend_refersToPivotTableRows(refCopy, v81, v102, v83, v84))
        {
          LOBYTE(v76) = objc_msgSend_numberOfRowLevels(v505, v103, v104, v105, v106);
        }

        else
        {
          if (!objc_msgSend_refersToPivotTableColumns(refCopy, v103, v104, v105, v106))
          {
            LOBYTE(v76) = -3;
            goto LABEL_25;
          }

          LOBYTE(v76) = objc_msgSend_numberOfColumnLevels(v505, v81, v204, v205, v84);
        }
      }
    }

    else
    {
      v505 = 0;
      v506 = 0;
    }

    if (!v76)
    {
      objc_msgSend_addObject_(v493, v81, self->_groupRoot, v83, v84);
      goto LABEL_27;
    }

LABEL_25:
    v111 = objc_msgSend_groupNodeForGroupUid_(self, v81, v534, v535, v84);
    v532[0] = MEMORY[0x277D85DD0];
    v532[1] = 3221225472;
    v532[2] = sub_22135CFF4;
    v532[3] = &unk_27845FA48;
    v533 = v493;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v111, v112, v76, v532, v113);

    v71 = v511;
LABEL_27:
    if (v512 <= 0x21 && ((1 << v512) & 0x3FC194400) != 0)
    {
      memset(&v517, 0, 24);
      v528 = 0u;
      v529 = 0u;
      v530 = 0u;
      v531 = 0u;
      v114 = v493;
      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, &v528, v538, 16);
      if (v120)
      {
        v121 = *v529;
        do
        {
          for (i = 0; i != v120; ++i)
          {
            if (*v529 != v121)
            {
              objc_enumerationMutation(v114);
            }

            v123 = *(*(&v528 + 1) + 8 * i);
            if (v123)
            {
              objc_msgSend_rowUidsAsVector(v123, v116, v117, v118, v119);
              v124 = *__p;
            }

            else
            {
              v527 = 0;
              v124 = 0uLL;
              *__p = 0u;
            }

            sub_22133594C(&v517, *&v517._formatType, v124, *(&v124 + 1), (*(&v124 + 1) - v124) >> 4);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v116, &v528, v538, 16);
        }

        while (v120);
      }

      __p[0] = 0;
      __p[1] = 0;
      v527 = 0;
      v127 = *&v517._formatType - v517._tskFormat;
      v128 = v511;
      if (v511 && v127 >= 0x11)
      {
        v129 = objc_msgSend_categoryOrder(v511, v517._tskFormat, *&v517._formatType, v125, v126);
        v133 = v129;
        if (v129)
        {
          objc_msgSend_orderedRowUidsFromUids_(v129, v130, &v517, v131, v132);
        }

        else
        {
          v524 = 0uLL;
          v525 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v524;
        v527 = v525;
        v525 = 0;
        v524 = 0uLL;

        v128 = v511;
      }

      else
      {
        sub_2210BD068(__p, v517._tskFormat, *&v517._formatType, v127 >> 4);
        if (!v511)
        {
          v138 = objc_msgSend_columnRowUIDMap(v496, v134, v135, v136, v137);
          v143 = objc_msgSend_columnUid(refCopy, v139, v140, v141, v142);
          v146 = objc_msgSend_columnIndexForColumnUID_(v138, v144, v143, v144, v145);

          goto LABEL_52;
        }
      }

      v151 = objc_msgSend_columnUid(refCopy, v134, v135, v136, v137);
      v146 = objc_msgSend_columnIndexForColumnUID_(v128, v152, v151, v152, v153);
LABEL_52:
      v154 = __p[0];
      v155 = __p[1];
      if (__p[0] == __p[1])
      {
        v156 = 0;
      }

      else
      {
        v156 = 0;
        v157 = v146 << 32;
        do
        {
          if (v511)
          {
            v158 = objc_msgSend_rowIndexForRowUID_(v511, v147, *v154, v154[1], v150);
            v523 = v156;
            v159 = &v523;
            RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v511, v160, &v523, v157 | v158, 0);
          }

          else
          {
            v162 = objc_msgSend_columnRowUIDMap(v496, v147, v148, v149, v150);
            v158 = objc_msgSend_rowIndexForRowUID_(v162, v163, *v154, v154[1], v164);

            v522 = v156;
            v159 = &v522;
            RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v496, v165, &v522, v157 | v158, 0);
          }

          v166 = RichTextAttributesIfPlainText;
          v167 = *v159;

          if (v166)
          {
            v172 = objc_msgSend_nilValue(TSCENilValue, v168, v169, v170, v171);

            v156 = v172;
          }

          else
          {
            v156 = v167;
          }

          *&v524 = __PAIR64__(v158, v146);
          objc_msgSend_setValue_atCoord_(v507, v168, v156, &v524, v171);
          v154 += 2;
        }

        while (v154 != v155);
      }

      if (v512 == 10)
      {
        v173 = v507;
        goto LABEL_110;
      }

      v174 = objc_msgSend_calcEngine(self, v147, v148, v149, v150);
      v179 = v174;
      v180 = v512 < 0x22;
      if (v512 > 19)
      {
        v514 = v174;
        v193 = 0x2A803403AuLL >> v512;
        if ((v512 - 26) < 4)
        {
          *&v524 = objc_msgSend_tableUID(v496, v175, v176, v177, v178);
          *(&v524 + 1) = v250;
          v182 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v250, v514, &v524, 0, 0);
          v251 = sub_22135D000(v512);
          v187 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v252, v251, v253, v254);
          v259 = [TSCEDenseGrid alloc];
          if (v507)
          {
            objc_msgSend_allValues(v507, v255, v256, v257, v258);
          }

          else
          {
            v524 = 0uLL;
            v525 = 0;
          }

          v264 = objc_msgSend_initWithValues_(v259, v255, &v524, v257, v258);
          v536 = &v524;
          sub_22107C2C0(&v536);
          v268 = objc_msgSend_gridValue_(TSCEGridValue, v301, v264, v302, v303);
          v304 = sub_22121D6B8(v182, v187, v268, ((v512 - 28) & 0xFA) == 0, v180 & v193);
          v179 = v514;
          v270 = sub_22121E03C(v304, v182);

          v173 = objc_opt_new();
          *&v524 = 0;
          objc_msgSend_setValue_atCoord_(v173, v305, v270, &v524, v306);
        }

        else if ((v512 - 30) >= 4)
        {
          if (v512 != 20)
          {
            v173 = v507;
            v179 = v174;
            goto LABEL_109;
          }

          v179 = v174;
          *&v524 = objc_msgSend_tableUID(v496, v175, v176, v177, v178);
          *(&v524 + 1) = v285;
          v182 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v285, v514, &v524, 0, 0);
          v286 = sub_22135D000(20);
          v187 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v287, v286, v288, v289);
          v294 = [TSCEDenseGrid alloc];
          if (v507)
          {
            objc_msgSend_allValues(v507, v290, v291, v292, v293);
          }

          else
          {
            v524 = 0uLL;
            v525 = 0;
          }

          v264 = objc_msgSend_initWithValues_(v294, v290, &v524, v292, v293);
          v536 = &v524;
          sub_22107C2C0(&v536);
          v268 = objc_msgSend_gridValue_(TSCEGridValue, v318, v264, v319, v320);
          v321 = sub_22121DF48(v182, v187, v268);
          v270 = sub_22121E03C(v321, v182);

          v173 = objc_opt_new();
          *&v524 = 0;
          objc_msgSend_setValue_atCoord_(v173, v322, v270, &v524, v323);
        }

        else
        {
          *&v524 = objc_msgSend_tableUID(v496, v175, v176, v177, v178);
          *(&v524 + 1) = v194;
          v182 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v194, v514, &v524, 0, 0);
          v195 = sub_22135D000(v512);
          v187 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v196, v195, v197, v198);
          v203 = [TSCEDenseGrid alloc];
          if (v507)
          {
            objc_msgSend_allValues(v507, v199, v200, v201, v202);
          }

          else
          {
            v524 = 0uLL;
            v525 = 0;
          }

          v264 = objc_msgSend_initWithValues_(v203, v199, &v524, v201, v202);
          v536 = &v524;
          sub_22107C2C0(&v536);
          v268 = objc_msgSend_gridValue_(TSCEGridValue, v295, v264, v296, v297);
          v298 = sub_22121D6F8(v182, v187, v268, ((v512 - 28) & 0xFA) == 0, v180 & v193);
          v179 = v514;
          v270 = sub_22121E03C(v298, v182);

          v173 = objc_opt_new();
          *&v524 = 0;
          objc_msgSend_setValue_atCoord_(v173, v299, v270, &v524, v300);
        }
      }

      else
      {
        switch(v512)
        {
          case 0xE:
            *&v524 = objc_msgSend_tableUID(v496, v175, v176, v177, v178);
            *(&v524 + 1) = v206;
            v182 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v206, v179, &v524, 0, 0);
            v187 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v207, 31, v208, v209);
            v214 = [TSCEDenseGrid alloc];
            if (v507)
            {
              objc_msgSend_allValues(v507, v210, v211, v212, v213);
            }

            else
            {
              v524 = 0uLL;
              v525 = 0;
            }

            v264 = objc_msgSend_initWithValues_(v214, v210, &v524, v212, v213);
            v536 = &v524;
            sub_22107C2C0(&v536);
            v268 = objc_msgSend_gridValue_(TSCEGridValue, v265, v264, v266, v267);
            v269 = sub_22121D9AC(v182, v187, v268);
            v270 = sub_22121E03C(v269, v182);

            v173 = objc_opt_new();
            *&v524 = 0;
            objc_msgSend_setValue_atCoord_(v173, v271, v270, &v524, v272);
            break;
          case 0x10:
            *&v524 = objc_msgSend_tableUID(v496, v175, v176, v177, v178);
            *(&v524 + 1) = v215;
            v182 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v215, v179, &v524, 0, 0);
            v187 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v216, 31, v217, v218);
            v223 = [TSCEDenseGrid alloc];
            if (v507)
            {
              objc_msgSend_allValues(v507, v219, v220, v221, v222);
            }

            else
            {
              v524 = 0uLL;
              v525 = 0;
            }

            v264 = objc_msgSend_initWithValues_(v223, v219, &v524, v221, v222);
            v536 = &v524;
            sub_22107C2C0(&v536);
            v268 = objc_msgSend_gridValue_(TSCEGridValue, v279, v264, v280, v281);
            v282 = sub_22121DBB4(v182, v187, v268);
            v270 = sub_22121E03C(v282, v182);

            v173 = objc_opt_new();
            *&v524 = 0;
            objc_msgSend_setValue_atCoord_(v173, v283, v270, &v524, v284);
            break;
          case 0x13:
            *&v524 = objc_msgSend_tableUID(v496, v175, v176, v177, v178);
            *(&v524 + 1) = v181;
            v182 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v181, v179, &v524, 0, 0);
            v183 = sub_22135D000(19);
            v187 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v184, v183, v185, v186);
            v192 = [TSCEDenseGrid alloc];
            if (v507)
            {
              objc_msgSend_allValues(v507, v188, v189, v190, v191);
            }

            else
            {
              v524 = 0uLL;
              v525 = 0;
            }

            v264 = objc_msgSend_initWithValues_(v192, v188, &v524, v190, v191);
            v536 = &v524;
            sub_22107C2C0(&v536);
            v268 = objc_msgSend_gridValue_(TSCEGridValue, v273, v264, v274, v275);
            v276 = sub_22121DE90(v182, v187, v268);
            v270 = sub_22121E03C(v276, v182);

            v173 = objc_opt_new();
            *&v524 = 0;
            objc_msgSend_setValue_atCoord_(v173, v277, v270, &v524, v278);
            break;
          default:
            v173 = v507;
LABEL_109:

LABEL_110:
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v517._tskFormat)
            {
              *&v517._formatType = v517._tskFormat;
              operator delete(v517._tskFormat);
            }

            v108 = 0;
LABEL_115:

            v507 = v173;
            goto LABEL_116;
        }
      }

      goto LABEL_109;
    }

    obj = v493;
    v508 = objc_msgSend_aggrIndexLevel(refCopy, v224, v225, v226, v227);
    v504 = objc_msgSend_showAggregateName(refCopy, v228, v229, v230, v231);
    if (objc_msgSend_isForPivotTable(self, v232, v233, v234, v235))
    {
      if (!v505)
      {
        v503 = 0;
        v515 = 0;
        v500 = 0;
        v509 = 1;
LABEL_144:
        v520 = 0u;
        v521 = 0u;
        v518 = 0u;
        v519 = 0u;
        obja = obj;
        v346 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v341, &v518, v537, 16);
        if (!v346)
        {
          v108 = 0;
          goto LABEL_227;
        }

        v510 = 0;
        v108 = 0;
        v498 = *v519;
        while (1)
        {
          v347 = 0;
          v497 = v346;
          do
          {
            if (*v519 != v498)
            {
              objc_enumerationMutation(obja);
            }

            if (v509)
            {
              v348 = 0;
              v499 = v347;
              v349 = *(*(&v518 + 1) + 8 * v347);
              while (1)
              {
                v350 = v508 == 0xFFFF ? v348 : v508;
                if ((v512 - 7) < 2)
                {
                  break;
                }

                if (v512 == 9)
                {
                  if (v515)
                  {
                    objc_msgSend_groupValueCellValueForGroupBySet_aggIndex_appendAggregateName_(v349, v342, v506, v350, v504);
                  }

                  else
                  {
                    objc_msgSend_groupValueCellValue(v349, v342, v343, v344, v345);
                  }

                  goto LABEL_157;
                }

                v517._tskFormat = objc_msgSend_columnUid(refCopy, v342, v343, v344, v345);
                *&v517._formatType = v356;
                v359 = objc_msgSend_aggNodeForColumnUid_(v349, v356, &v517, v357, v358);
                v517._tskFormat = objc_msgSend_formulaCoord(v359, v360, v361, v362, v363);
                v367 = objc_msgSend_valueForFormulaCoord_(self, v364, &v517, v365, v366);
                v372 = v367;
                if (v367)
                {
                  v373 = objc_msgSend_valueForType_(v367, v368, v512, v370, v371);

                  if (!objc_msgSend_countRows(v372, v374, v375, v376, v377) && objc_msgSend_isAPivotTable(v511, v378, v379, v380, v381))
                  {
                    TSCEFormat::TSCEFormat(&v517, 260);
                    v385 = objc_msgSend_emptyCellValueWithFormat_(TSCEEmptyCellValue, v382, &v517, v383, v384);

                    v108 = v372;
                    v373 = v385;
                    goto LABEL_173;
                  }
                }

                else
                {
                  v373 = objc_msgSend_nilValue(TSCENilValue, v368, v369, v370, v371);
                }

                v108 = v372;
LABEL_173:

                v390 = objc_msgSend_summaryModel(v511, v386, v387, v388, v389);
                v395 = v390;
                if (!v390)
                {
                  goto LABEL_195;
                }

                v396 = objc_msgSend_columnRowUIDMap(v390, v391, v392, v393, v394);
                objc_msgSend_columnUid(refCopy, v397, v398, v399, v400);
                objc_msgSend_groupUid(v349, v401, v402, v403, v404);
                TSTMakeCellUID(&v517);
                v408 = objc_msgSend_cellIDForCellUID_(v396, v405, &v517, v406, v407);
                v413 = objc_msgSend_nativeType(v373, v409, v410, v411, v412);
                if (v413 > 4u)
                {
                  if (v413 == 5)
                  {
                    v419 = objc_msgSend_number(v373, v414, v415, v416, v417);
                    LOBYTE(v517._tskFormat) = 0;
                    if (objc_msgSend_hasUnits(v419, v420, v421, v422, v423) && !objc_msgSend_dimension(v419, v424, v425, v426, v427))
                    {
                      v418 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v395, v424, 4, v408, 0);
                    }

                    else
                    {
                      v428 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v395, v424, 1, v408, &v517);
                      v430 = v428;
                      if (LOBYTE(v517._tskFormat) == 1)
                      {
                        v418 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v395, v429, 2, v408, 0);

                        v435 = objc_msgSend_asCurrencyFormat(v418, v431, v432, v433, v434);
                        v440 = objc_msgSend_currencyCode(v435, v436, v437, v438, v439);

                        if (v440 || (objc_msgSend_asCustomFormatWrapper(v418, v441, v442, v443, v444), v445 = objc_claimAutoreleasedReturnValue(), objc_msgSend_doubleRepresentation(v419, v446, v447, v448, v449), objc_msgSend_currencyCodeForValue_(v445, v450, v451, v452, v453), v440 = objc_claimAutoreleasedReturnValue(), v445, v440))
                        {
                          v454 = objc_msgSend_rawDecimalValue(v419, v441, v442, v443, v444);
                          v458 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v455, v440, v456, v457);
                          v461 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v459, v454, v458, v460);

                          v373 = v461;
                        }
                      }

                      else
                      {
                        v418 = v428;
                      }
                    }

                    goto LABEL_192;
                  }

                  if (v413 == 7)
                  {
                    v413 = 5;
                    goto LABEL_182;
                  }
                }

                else
                {
                  if (v413 == 2)
                  {
                    v413 = 6;
LABEL_182:
                    v418 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v395, v414, v413, v408, 0);
LABEL_192:
                    if (v418)
                    {
                      TSCEFormat::TSCEFormat(&v516, v418, 1);
                      TSCEFormat::TSCEFormat(&v517, &v516);
                      objc_msgSend_setFormat_(v373, v462, &v517, v463, v464);
                    }

                    goto LABEL_194;
                  }

                  if (v413 == 3)
                  {
                    goto LABEL_182;
                  }
                }

LABEL_194:

LABEL_195:
                v108 = v373;
                LODWORD(v517._tskFormat) = 0;
                HIDWORD(v517._tskFormat) = v510 + v348;
                if (v515)
                {
                  if (objc_msgSend_refersToPivotTableRows(refCopy, v391, v392, v393, v394))
                  {
                    v469 = objc_msgSend_groupUid(v349, v465, v466, v467, v468);
                    v474 = objc_msgSend_rowIndexForRowUID_(v505, v470, v469, v470, v471);
                    if (v348)
                    {
                      if (objc_msgSend_activeFlatteningDimension(v506, v391, v472, v473, v394))
                      {
                        v475 = 0;
                      }

                      else
                      {
                        v475 = v348;
                      }

                      v474 += v475;
                    }

                    v476 = v503;
                    if (v503)
                    {
                      v477 = objc_msgSend_hidingActionForViewIndex_(v500, v391, v474, v473, v394);
                      v478 = 0;
                      goto LABEL_212;
                    }

                    v478 = 0;
                  }

                  else if (objc_msgSend_refersToPivotTableColumns(refCopy, v465, v466, v467, v468))
                  {
                    v481 = objc_msgSend_groupUid(v349, v391, v479, v480, v394);
                    v478 = objc_msgSend_columnIndexForColumnUID_(v505, v482, v481, v482, v483);
                    if (v348)
                    {
                      if (objc_msgSend_activeFlatteningDimension(v506, v391, v484, v485, v394) == 1)
                      {
                        v486 = v348;
                      }

                      else
                      {
                        v486 = 0;
                      }

                      v478 += v486;
                    }

                    v476 = v503;
                    if (v503)
                    {
                      v477 = objc_msgSend_hidingActionForViewIndex_(v500, v391, v478, v485, v394);
                      v474 = 0;
LABEL_212:
                      v476 = (v477 & maskCopy) != 0;
                    }

                    else
                    {
                      v474 = 0;
                    }
                  }

                  else
                  {
                    v474 = 0;
                    v478 = 0;
                    v476 = 0;
                  }

                  if (v474 != 0x7FFFFFFF && v478 != 0x7FFF)
                  {
                    LOWORD(v517._tskFormat) = v478;
                    HIDWORD(v517._tskFormat) = v474;
                  }

                  if (v476)
                  {
                    goto LABEL_221;
                  }
                }

                objc_msgSend_setValue_atCoord_(v507, v391, v373, &v517, v394);
LABEL_221:

                if (v509 == ++v348)
                {
                  v510 += v348;
                  v346 = v497;
                  v347 = v499;
                  goto LABEL_223;
                }
              }

              if (v515)
              {
                objc_msgSend_groupValueHierarchyForChart_groupBySet_aggIndex_appendAggregateName_(v349, v342, v512 == 7, v506, v350, v504);
              }

              else
              {
                objc_msgSend_groupValueHierarchyForChart_(v349, v342, v512 == 7, v344, v345);
              }

              v351 = LABEL_157:;
              v359 = v351;
              if (v351)
              {
                objc_msgSend_tsceValue(v351, v352, v353, v354, v355);
              }

              else
              {
                objc_msgSend_nilValue(TSCENilValue, v352, v353, v354, v355);
              }
              v373 = ;
              goto LABEL_173;
            }

LABEL_223:
            ++v347;
          }

          while (v347 != v346);
          v346 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v342, &v518, v537, 16);
          if (!v346)
          {
LABEL_227:

            v173 = v507;
            goto LABEL_115;
          }
        }
      }

      if (objc_msgSend_refersToPivotTableRows(refCopy, v236, v237, v238, v239))
      {
        v244 = objc_msgSend_pivotOrder(v505, v240, v241, v242, v243);
        v247 = objc_msgSend_sortedArrayFromArray_forDimension_(v244, v245, obj, 0, v246);

        if (v508 == 0xFFFF && !objc_msgSend_activeFlatteningDimension(v506, v236, v237, v238, v239))
        {
          v487 = objc_msgSend_aggregates(v506, v236, v237, v238, v239);
          v492 = objc_msgSend_count(v487, v488, v489, v490, v491);

          v248 = v492;
        }

        else
        {
          v248 = 1;
        }

        v509 = v248;
        if (v504)
        {
          v249 = objc_msgSend_activeFlatteningDimension(v506, v236, v237, v238, v239) == 0;
LABEL_132:
          v504 = v249;
          goto LABEL_134;
        }

        goto LABEL_133;
      }

      if (objc_msgSend_refersToPivotTableColumns(refCopy, v240, v241, v242, v243))
      {
        v308 = objc_msgSend_pivotOrder(v505, v236, v237, v238, v239);
        v247 = objc_msgSend_sortedArrayFromArray_forDimension_(v308, v309, obj, 1, v310);

        if (v508 == 0xFFFF && objc_msgSend_activeFlatteningDimension(v506, v236, v237, v238, v239) == 1)
        {
          v311 = objc_msgSend_aggregates(v506, v236, v237, v238, v239);
          v316 = objc_msgSend_count(v311, v312, v313, v314, v315);

          v317 = v316;
        }

        else
        {
          v317 = 1;
        }

        v509 = v317;
        if (v504)
        {
          v249 = objc_msgSend_activeFlatteningDimension(v506, v236, v237, v238, v239) != 0;
          goto LABEL_132;
        }

LABEL_133:
        v504 = 0;
        goto LABEL_134;
      }
    }

    else if (v71)
    {
      v260 = objc_msgSend_categoryOrder(v71, v236, v237, v238, v239);
      v247 = objc_msgSend_sortedArrayFromArray_(v260, v261, obj, v262, v263);

      v509 = 1;
LABEL_134:
      obj = v247;
      goto LABEL_135;
    }

    v509 = 1;
LABEL_135:
    v500 = 0;
    v503 = 0;
    v515 = v505 != 0;
    if (!maskCopy || !v505)
    {
      goto LABEL_144;
    }

    if (objc_msgSend_refersToPivotTableRows(refCopy, v236, v237, v238, v239))
    {
      v328 = objc_msgSend_hiddenStates(v505, v324, v325, v326, v327);
      v500 = objc_msgSend_rowHiddenStateExtent(v328, v329, v330, v331, v332);
    }

    else
    {
      if (!objc_msgSend_refersToPivotTableColumns(refCopy, v324, v325, v326, v327))
      {
        v500 = 0;
        goto LABEL_143;
      }

      v328 = objc_msgSend_hiddenStates(v505, v333, v334, v335, v336);
      v500 = objc_msgSend_columnHiddenStateExtent(v328, v337, v338, v339, v340);
    }

LABEL_143:
    v503 = 1;
    v515 = 1;
    goto LABEL_144;
  }

  v34 = objc_msgSend_columnUid(refCopy, v21, v22, v23, v24);
  v36 = v35;
  v40 = objc_msgSend_groupLevel(refCopy, v35, v37, v38, v39);
  v42 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v41, v34, v36, v40);
  v47 = objc_msgSend_locale(self, v43, v44, v45, v46);
  v496 = objc_msgSend_localizedLabelForAggType_(v47, v48, v42, v49, v50);

  v54 = objc_msgSend_columnNameForCategoryRef_(self, v51, refCopy, v52, v53);
  v511 = v54;
  if (objc_msgSend_length(v54, v55, v56, v57, v58))
  {
    v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, @"%@: %@", v60, v61, v54, v496);
  }

  else
  {
    v62 = v496;
  }

  v107 = v62;
  v108 = objc_msgSend_stringValue_(TSCEStringValue, v63, v62, v64, v65);
  v505 = v107;
  v517._tskFormat = 0;
  objc_msgSend_setValue_atCoord_(v507, v109, v108, &v517, v110);
LABEL_116:

  v66 = v507;
LABEL_117:

  return v66;
}

- (unint64_t)countOfValuesForCategoryRef:(id)ref
{
  v12 = 0;
  v4 = objc_msgSend_valueGridForCategoryRef_outError_(self, a2, ref, &v12, v3);
  v9 = v12;
  v10 = 0;
  if (!v9)
  {
    v10 = objc_msgSend_count(v4, v5, v6, v7, v8);
  }

  return v10;
}

- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid ordered:(id)ordered
{
  v6 = a6;
  v164 = *MEMORY[0x277D85DE8];
  __p = 0;
  v161 = 0;
  v162 = 0;
  orderedCopy = ordered;
  v158 = objc_msgSend_relativeGroupUid(orderedCopy, v8, v9, v10, v11);
  v159 = v12;
  if (*a5 == 0)
  {
    v16 = objc_msgSend_absoluteGroupUid(orderedCopy, v12, v13, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v12, &v158, a5, v15);
  }

  v158 = v16;
  v159 = v17;
  if (!(v16 | v17) || objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v17, &v158, v19, v20))
  {
    v158 = objc_msgSend_absoluteGroupUid(orderedCopy, v17, v18, v19, v20);
    v159 = v17;
  }

  v25 = objc_msgSend_type(orderedCopy, v17, v18, v19, v20);
  if (v25 == 11)
  {
    v26 = objc_msgSend_columnUid(orderedCopy, v21, v22, v23, v24);
    v28 = v27;
    v32 = objc_msgSend_groupLevel(orderedCopy, v27, v29, v30, v31);
    v25 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v33, v26, v28, v32);
  }

  if (v25 == 10)
  {
    v149 = objc_msgSend_tableInfo(self, v21, v22, v23, v24);
    v38 = objc_msgSend_tableUID(v149, v34, v35, v36, v37);
    v40 = v39;
    v44 = objc_msgSend_translator(v149, v39, v41, v42, v43);
    v49 = objc_msgSend_columnUid(orderedCopy, v45, v46, v47, v48);
    v52 = objc_msgSend_baseColumnIndexForColumnUID_(v44, v50, v49, v50, v51);

    objc_msgSend_bodyRowUidsForCategoryRef_atRowUid_ordered_(self, v53, orderedCopy, a5, v6);
    v58 = *(&v156 + 1);
    v59 = v156;
    if (v156 != *(&v156 + 1))
    {
      do
      {
        v60 = objc_msgSend_translator(v149, v54, v55, v56, v57);
        v63 = objc_msgSend_baseRowIndexForRowUID_(v60, v61, *v59, v59[1], v62);

        *&v154 = (v52 << 32) | v63;
        *(&v154 + 1) = v38;
        v155 = v40;
        sub_22120F2F4(&__p, &v154);
        v59 += 2;
      }

      while (v59 != v58);
      v59 = v156;
    }

    if (v59)
    {
      *(&v156 + 1) = v59;
      operator delete(v59);
    }
  }

  else
  {
    v149 = objc_msgSend_groupNodeForGroupUid_(self, v21, v158, v159, v24);
    *&v156 = objc_msgSend_columnUid(orderedCopy, v64, v65, v66, v67);
    *(&v156 + 1) = v68;
    v145 = objc_msgSend_aggNodeForColumnUid_(v149, v68, &v156, v69, v70);
    if (v145)
    {
      v75 = objc_msgSend_formulaCoord(v145, v71, v72, v73, v74);
      v80 = objc_msgSend_groupByUid(self, v76, v77, v78, v79);
      *&v156 = v75;
      *(&v156 + 1) = v80;
      v157 = v81;
      sub_22120F2F4(&__p, &v156);
    }

    if (v25 <= 0xC && ((1 << v25) & 0x1380) != 0)
    {
      v82 = objc_msgSend_tableInfo(self, v71, v72, v73, v74);
      v91 = objc_msgSend_numberOfHeaderRows(v82, v83, v84, v85, v86);
      if (v91)
      {
        v92 = objc_msgSend_tableUID(v82, v87, v88, v89, v90);
        v94 = v93;
        v98 = objc_msgSend_translator(v82, v93, v95, v96, v97);
        v103 = objc_msgSend_columnUid(orderedCopy, v99, v100, v101, v102);
        v106 = objc_msgSend_baseColumnIndexForColumnUID_(v98, v104, v103, v104, v105);

        v107 = v106 << 32;
        v108 = v91;
        v109 = v91;
        do
        {
          *&v156 = v107;
          *(&v156 + 1) = v92;
          v157 = v94;
          sub_22120F2F4(&__p, &v156);
          ++v107;
          --v109;
        }

        while (v109);
        objc_msgSend_groupingColumns(self, v110, v111, v112, v113);
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v114 = v151 = 0u;
        v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, &v150, v163, 16);
        if (v120)
        {
          v121 = *v151;
          do
          {
            for (i = 0; i != v120; ++i)
            {
              if (*v151 != v121)
              {
                objc_enumerationMutation(v114);
              }

              v123 = *(*(&v150 + 1) + 8 * i);
              v124 = objc_msgSend_translator(v82, v116, v117, v118, v119);
              v129 = objc_msgSend_columnUid(v123, v125, v126, v127, v128);
              LOWORD(v123) = objc_msgSend_baseColumnIndexForColumnUID_(v124, v130, v129, v130, v131);

              v132 = v123 << 32;
              v133 = v108;
              do
              {
                *&v156 = v132;
                *(&v156 + 1) = v92;
                v157 = v94;
                sub_22120F2F4(&__p, &v156);
                ++v132;
                --v133;
              }

              while (v133);
            }

            v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v116, &v150, v163, 16);
          }

          while (v120);
        }
      }
    }
  }

  if (objc_msgSend_type(orderedCopy, v134, v135, v136, v137) == 11 || objc_msgSend_type(orderedCopy, v138, v139, v140, v141) == 12)
  {
    v142 = objc_msgSend_groupByUid(self, v138, v139, v140, v141);
    *&v156 = self->_indirectAggTypeChangeFormulaCoord;
    *(&v156 + 1) = v142;
    v157 = v143;
    sub_22120F2F4(&__p, &v156);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_22120FC6C(retstr, __p, v161, 0xAAAAAAAAAAAAAAABLL * ((v161 - __p) >> 3));
  if (__p)
  {
    v161 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSTGroupBy *)self
{
  v6 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4812000000;
  v34 = sub_22135D830;
  v35 = sub_22135D854;
  v36 = &unk_22188E88F;
  memset(v37, 0, sizeof(v37));
  if (objc_msgSend_isSpanningCategoryRef_(self, v7, v6, v8, v9))
  {
    v14 = objc_msgSend_absoluteGroupUid(v6, v10, v11, v12, v13);
    v17 = objc_msgSend_groupNodeForGroupUid_(self, v15, v14, v15, v16);
    v22 = objc_msgSend_groupLevel(v6, v18, v19, v20, v21);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22135D880;
    v27[3] = &unk_278463048;
    v30 = v22;
    v28 = v6;
    v29 = &v31;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v17, v23, v22, v27, v24);
  }

  v25 = v32;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211FECD0(retstr, v25[6], v25[7], (v25[7] - v25[6]) >> 3);
  _Block_object_dispose(&v31, 8);
  v38 = v37;
  sub_22107C2C0(&v38);

  return result;
}

- (id)uidRectRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid
{
  refCopy = ref;
  v11 = objc_msgSend_type(refCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_groupLevel(refCopy, v12, v13, v14, v15);
  v206 = objc_msgSend_relativeGroupUid(refCopy, v17, v18, v19, v20);
  v207 = v21;
  if (*uid == 0)
  {
    v25 = objc_msgSend_absoluteGroupUid(refCopy, v21, v22, v23, v24);
  }

  else
  {
    v25 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v21, &v206, uid, v24);
  }

  v206 = v25;
  v207 = v26;
  if (!(v25 | v26) || objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v26, &v206, v28, v29))
  {
    v206 = objc_msgSend_absoluteGroupUid(refCopy, v26, v27, v28, v29);
    v207 = v26;
  }

  if (objc_msgSend_refersToPivotTable(refCopy, v26, v27, v28, v29))
  {
    v34 = objc_msgSend_pivotTableUid(refCopy, v30, v31, v32, v33);
    v36 = v35;
    v40 = objc_msgSend_calcEngine(self, v35, v37, v38, v39);
    v42 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v41, v34, v36, v40);

    if (v16 == 253)
    {
      if (objc_msgSend_refersToPivotTableRows(refCopy, v43, v44, v45, v46))
      {
        LOBYTE(v16) = objc_msgSend_numberOfRowLevels(v42, v47, v48, v49, v50);
      }

      else if (objc_msgSend_refersToPivotTableColumns(refCopy, v47, v48, v49, v50))
      {
        LOBYTE(v16) = objc_msgSend_numberOfColumnLevels(v42, v150, v151, v152, v153);
      }

      else
      {
        LOBYTE(v16) = -3;
      }
    }
  }

  else
  {
    v42 = 0;
  }

  v51 = objc_opt_new();
  v56 = v51;
  v205 = 0uLL;
  if (v11 <= 9)
  {
    if ((v11 - 7) >= 3)
    {
      goto LABEL_49;
    }

LABEL_19:
    v57 = objc_msgSend_groupNodeForGroupUid_(self, v52, v206, v207, v55);
    if (v42)
    {
      v73 = objc_msgSend_pivotOwner(v42, v69, v70, v71, v72);
      v62 = objc_msgSend_groupBySet(v73, v74, v75, v76, v77);

      v82 = objc_msgSend_aggrIndexLevel(refCopy, v78, v79, v80, v81);
      if (objc_msgSend_refersToPivotTableRows(refCopy, v83, v84, v85, v86))
      {
        if (v82 == 0xFFFF && !objc_msgSend_activeFlatteningDimension(v62, v87, v88, v89, v90))
        {
LABEL_30:
          v184 = objc_msgSend_aggregates(v62, v91, v92, v93, v94);
          v107 = objc_msgSend_count(v184, v103, v104, v105, v106);

LABEL_32:
          v197[0] = MEMORY[0x277D85DD0];
          v197[1] = 3221225472;
          v197[2] = sub_22135E40C;
          v197[3] = &unk_278463070;
          v199 = v107;
          v200 = v82;
          v198 = v56;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(v57, v108, v16, v197, v109);

          goto LABEL_34;
        }
      }

      else
      {
        v97 = objc_msgSend_refersToPivotTableColumns(refCopy, v87, v88, v89, v90);
        if (v82 == 0xFFFF)
        {
          v102 = v97;
        }

        else
        {
          v102 = 0;
        }

        if (v102 == 1 && objc_msgSend_activeFlatteningDimension(v62, v98, v99, v100, v101) == 1)
        {
          goto LABEL_30;
        }
      }

      v107 = 1;
      goto LABEL_32;
    }

    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = 3221225472;
    v201[2] = sub_22135E39C;
    v201[3] = &unk_27845FA48;
    v202 = v56;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v57, v95, v16, v201, v96);
    v62 = v202;
LABEL_34:

    goto LABEL_35;
  }

  switch(v11)
  {
    case 10:
      v57 = objc_msgSend_groupNodeForGroupUid_(self, v52, v206, v207, v55);
      v203[0] = MEMORY[0x277D85DD0];
      v203[1] = 3221225472;
      v203[2] = sub_22135E304;
      v203[3] = &unk_27845FA48;
      v204 = v56;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v57, v110, v16, v203, v111);
      v62 = v204;
      goto LABEL_34;
    case 11:
      goto LABEL_19;
    case 12:
      v57 = objc_msgSend_tableInfo(self, v52, v53, v54, v55);
      v62 = objc_msgSend_translator(v57, v58, v59, v60, v61);
      v66 = objc_msgSend_rowUIDForViewRowIndex_(v62, v63, 0, v64, v65);
      objc_msgSend_addUUID_(v56, v67, v66, v67, v68);
      goto LABEL_34;
  }

LABEL_49:
  objc_msgSend_addUUID_(v51, v52, v206, v207, v55);
LABEL_35:
  if (v42)
  {
    *__p = 0u;
    memset(v196, 0, sizeof(v196));
    v116 = objc_msgSend_refersToPivotTableRows(refCopy, v112, v113, v114, v115);
    v121 = MEMORY[0x277CCAA78];
    if (v116)
    {
      v188.origin = objc_msgSend_headerColumnRange(v42, v117, v118, v119, v120);
      v188.size = v122;
      v123 = TSUCellRect::columns(&v188);
      v126 = objc_msgSend_indexSetWithIndexesInRange_(v121, v124, v123, v124, v125);
      objc_msgSend_columnUIDsForColumnIndexes_(v42, v127, v126, v128, v129);
      if (v56)
      {
        objc_msgSend_uuidsAsVector(v56, v130, v131, v132, v133);
      }

      else
      {
        v185 = 0;
        v186 = 0;
        v187 = 0;
      }

      sub_2210BBBE8(&v188, &v192, &v185);
    }

    else
    {
      v188.origin = objc_msgSend_headerRowRange(v42, v117, v118, v119, v120);
      v188.size = v134;
      v135 = TSUCellRect::rows(&v188);
      v126 = objc_msgSend_indexSetWithIndexesInRange_(v121, v136, v135, v136, v137);
      objc_msgSend_rowUIDsForRowIndexes_(v42, v138, v126, v139, v140);
      if (v56)
      {
        objc_msgSend_uuidsAsVector(v56, v141, v142, v143, v144);
      }

      else
      {
        v185 = 0;
        v186 = 0;
        v187 = 0;
      }

      sub_2210BBBE8(&v188, &v185, &v192);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v188;
    v196[0] = v189;
    v188.size = 0;
    v189 = 0;
    v188.origin = 0;
    origin = v196[1];
    if (v196[1])
    {
      v196[2] = v196[1];
      operator delete(v196[1]);
      origin = v188.origin;
    }

    *&v196[1] = v190;
    v196[3] = v191;
    v191 = 0;
    v190 = 0uLL;
    if (origin)
    {
      v188.size = origin;
      operator delete(origin);
    }

    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    if (v192)
    {
      v193 = v192;
      operator delete(v192);
    }

    v155 = [TSTUIDRectRef alloc];
    v160 = objc_msgSend_calcEngine(self, v156, v157, v158, v159);
    v188.origin = objc_msgSend_tableUID(v42, v161, v162, v163, v164);
    v188.size = v165;
    v149 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v155, v165, v160, &v188, __p, 0);

    if (v196[1])
    {
      v196[2] = v196[1];
      operator delete(v196[1]);
    }

    v166 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
LABEL_70:
      operator delete(v166);
    }
  }

  else
  {
    if ((v11 - 7) > 2)
    {
      *&v205 = objc_msgSend_columnUid(refCopy, v112, v113, v114, v115);
      *(&v205 + 1) = v112;
    }

    else
    {
      strcpy(&v205, "category column");
    }

    if (!objc_msgSend_count(v56, v112, v113, v114, v115) || v205 == 0)
    {
      v149 = 0;
      goto LABEL_71;
    }

    sub_221362600(&v188, 1uLL);
    if (v56)
    {
      objc_msgSend_uuidsAsVector(v56, v145, v146, v147, v148);
    }

    else
    {
      v192 = 0;
      v193 = 0;
      v194 = 0;
    }

    sub_2210BBBE8(__p, &v188, &v192);
    if (v192)
    {
      v193 = v192;
      operator delete(v192);
    }

    v168 = [TSTUIDRectRef alloc];
    v173 = objc_msgSend_calcEngine(self, v169, v170, v171, v172);
    v178 = objc_msgSend_tableModel(self, v174, v175, v176, v177);
    v192 = objc_msgSend_tableUID(v178, v179, v180, v181, v182);
    v193 = v183;
    v149 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v168, v183, v173, &v192, __p, 0);

    if (v196[1])
    {
      v196[2] = v196[1];
      operator delete(v196[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v166 = v188.origin;
    if (v188.origin)
    {
      v188.size = v188.origin;
      goto LABEL_70;
    }
  }

LABEL_71:

  return v149;
}

- (vector<TSCECategoryRef)expandSpanningCategoryRef:(TSTGroupBy *)self
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v11 = objc_msgSend_absoluteGroupUid(v6, v7, v8, v9, v10);
  v13 = v12;
  v67 = objc_msgSend_tableInfo(self, v12, v14, v15, v16);
  v68 = objc_msgSend_categoryOrder(v67, v17, v18, v19, v20);
  v66 = objc_opt_new();
  v69 = objc_msgSend_groupNodeForGroupUid_(self, v21, v11, v13, v22);
  v27 = objc_msgSend_groupLevel(v6, v23, v24, v25, v26);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_22135E804;
  v78[3] = &unk_27845FA48;
  v28 = v66;
  v79 = v28;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v69, v29, v27, v78, v30);
  objc_msgSend_sortedArrayFromArray_(v68, v31, v28, v32, v33);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v34 = v75 = 0u;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v74, v80, 16);
  if (v36)
  {
    v37 = *v75;
    do
    {
      v38 = 0;
      do
      {
        if (*v75 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v74 + 1) + 8 * v38);
        v40 = [TSCECategoryRef alloc];
        v72[0] = objc_msgSend_groupByUid(v6, v41, v42, v43, v44);
        v72[1] = v45;
        v71[0] = objc_msgSend_groupUid(v39, v45, v46, v47, v48);
        v71[1] = v49;
        v70[0] = objc_msgSend_columnUid(v6, v49, v50, v51, v52);
        v70[1] = v53;
        v57 = objc_msgSend_type(v6, v53, v54, v55, v56);
        v62 = objc_msgSend_groupLevel(v6, v58, v59, v60, v61);
        v73 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v40, v63, v72, v71, v70, v57, v62);
        sub_22135D934(retstr, &v73);

        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v64, &v74, v80, 16);
    }

    while (v36);
  }

  return result;
}

- (vector<TSCECategoryRef)captureCategoryRefsFromIterator:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning
{
  v6 = a6;
  spanningCopy = spanning;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_22135824C;
  v39 = sub_22135825C;
  v40 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  v28 = 0;
  v29 = &v28;
  v30 = 0x4812000000;
  v31 = sub_22135D830;
  v32 = sub_22135D854;
  v33 = &unk_22188E88F;
  memset(v34, 0, sizeof(v34));
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = a5;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22135EA94;
  v22[3] = &unk_278463098;
  v22[4] = self;
  v22[5] = &v24;
  v23 = v6;
  v22[6] = &v35;
  v22[7] = &v28;
  objc_msgSend_iterateCellsUsingBlock_(spanningCopy, v15, v22, v16, v17);
  v18 = v29;
  if (v6)
  {
    memset(v21, 0, sizeof(v21));
    sub_2211FECD0(v21, v29[6], v29[7], (v29[7] - v29[6]) >> 3);
    objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v19, v21, v36[5], *(v25 + 24));
    v41 = v21;
    sub_22107C2C0(&v41);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    sub_2211FECD0(retstr, v18[6], v18[7], (v18[7] - v18[6]) >> 3);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  v24 = v34;
  sub_22107C2C0(&v24);
  _Block_object_dispose(&v35, 8);

  return result;
}

- (vector<TSCECategoryRef)promoteSpanningReferences:(TSTGroupBy *)self
{
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a3, a4, v4, v5);
  var0 = a4->var0;
  var1 = a4->var1;
  if (a4->var0 == var1)
  {
    v68 = -1;
  }

  else
  {
    v66 = a4;
    v68 = -1;
    v67 = a4->var1;
    do
    {
      v11 = *var0;
      v16 = v11;
      if (v68 == 0xFF)
      {
        v68 = objc_msgSend_groupLevel(v11, v12, v13, v14, v15);
      }

      v17 = objc_msgSend_absoluteGroupUid(v16, v12, v13, v14, v15);
      v19 = v18;
      v21 = objc_msgSend_groupNodeForGroupUid_(self, v18, v17, v18, v20);
      selfCopy = self;
      v27 = objc_msgSend_groupByUid(self, v23, v24, v25, v26);
      v29 = v28;
      if (v27 == objc_msgSend_groupByUid(v16, v28, v30, v31, v32) && v29 == v33)
      {
        if (v21)
        {
          v41 = objc_msgSend_parentNode(v21, v33, v34, v35, v36);
          if (v41)
          {
            do
            {
              v70._lower = objc_msgSend_groupUid(v41, v37, v38, v39, v40);
              v70._upper = v42;
              v43 = TSKUIDStruct::NSUUIDValue(&v70);
              v47 = objc_msgSend_objectForKeyedSubscript_(v8, v44, v43, v45, v46);

              if (v47)
              {
                v51 = objc_msgSend_objectForKeyedSubscript_(v8, v48, v43, v49, v50);
                objc_msgSend_addUUID_(v51, v52, v17, v19, v53);
              }

              else
              {
                v54 = [TSCEMutableUIDSet alloc];
                v51 = objc_msgSend_initWithUUID_(v54, v55, v17, v19, v56);
                objc_msgSend_setObject_forKeyedSubscript_(v8, v57, v51, v43, v58);
              }

              v63 = objc_msgSend_parentNode(v41, v59, v60, v61, v62);

              v41 = v63;
            }

            while (v63);
          }
        }
      }

      ++var0;
      self = selfCopy;
    }

    while (var0 != v67);
    var0 = v66->var0;
    var1 = v66->var1;
  }

  memset(v69, 0, sizeof(v69));
  sub_2211FECD0(v69, var0, var1, var1 - var0);
  objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v64, v69, v8, v68);
  v70._lower = v69;
  sub_22107C2C0(&v70);

  return result;
}

- (vector<TSCECategoryRef)p_promoteSpanningReferences:(TSTGroupBy *)self withCaptured:(SEL)captured atLevel:(vector<TSCECategoryRef *)
{
  v147 = a6;
  v143 = retstr;
  v170 = *MEMORY[0x277D85DE8];
  v148 = a5;
  v151 = objc_msgSend_set(MEMORY[0x277CBEB58], v7, v8, v9, v10);
  v150 = objc_msgSend_set(MEMORY[0x277CBEB58], v11, v12, v13, v14);
  v143->var0 = 0;
  v143->var1 = 0;
  v143->var2 = 0;
  var0 = a4->var0;
  var1 = a4->var1;
  if (a4->var0 != var1)
  {
    do
    {
      v16 = *var0;
      v168 = 0;
      v21 = objc_msgSend_groupByUid(v16, v17, v18, v19, v20);
      v23 = v22;
      if (v21 == objc_msgSend_groupByUid(self, v22, v24, v25, v26) && v23 == v27)
      {
        v32 = objc_msgSend_absoluteGroupUid(v16, v27, v28, v29, v30);
        v145 = objc_msgSend_groupNodeForGroupUid_(self, v33, v32, v33, v34);
        v146 = objc_msgSend_array(MEMORY[0x277CBEB18], v35, v36, v37, v38);
        v47 = objc_msgSend_parentNode(v145, v39, v40, v41, v42);
        if (v47)
        {
          while (1)
          {
            v159._lower = objc_msgSend_groupUid(v47, v43, v44, v45, v46, v143);
            v159._upper = v48;
            v49 = TSKUIDStruct::NSUUIDValue(&v159);
            if (objc_msgSend_containsObject_(v151, v50, v49, v51, v52))
            {
              break;
            }

            if ((objc_msgSend_containsObject_(v150, v53, v49, v54, v55) & 1) == 0)
            {
              objc_msgSend_addObject_(v146, v56, v49, v58, v59);
            }

            v60 = objc_msgSend_parentNode(v47, v56, v57, v58, v59);

            v47 = v60;
            if (!v60)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_29;
        }

LABEL_12:
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v61 = objc_msgSend_reverseObjectEnumerator(v146, v43, v44, v45, v46, v143);
        v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v164, v169, 16);
        if (v63)
        {
          v64 = *v165;
LABEL_14:
          v65 = 0;
          while (1)
          {
            if (*v165 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v66 = *(*(&v164 + 1) + 8 * v65);
            v162 = 0;
            v163 = 0;
            v162 = TSKMakeUIDStructFromNSUUID();
            v163 = v67;
            v71 = objc_msgSend_tableInfo(self, v67, v68, v69, v70);
            v76 = objc_msgSend_groupBy(v71, v72, v73, v74, v75);
            v79 = objc_msgSend_groupNodeForGroupUid_(v76, v77, v162, v163, v78);

            v159._lower = 0;
            v159._upper = &v159;
            v160 = 0x2020000000;
            v161 = 1;
            v155[0] = MEMORY[0x277D85DD0];
            v155[1] = 3221225472;
            v155[2] = sub_22135F6A8;
            v155[3] = &unk_2784630C0;
            v158 = &v159;
            v156 = v148;
            v157 = v66;
            objc_msgSend_enumerateGroupsAtLevel_withBlock_(v79, v80, v147, v155, v81);
            v85 = *(v159._upper + 24);
            if (v85 == 1)
            {
              objc_msgSend_addObject_(v151, v82, v66, v83, v84);
              v86 = [TSCECategoryRef alloc];
              v153 = objc_msgSend_groupByUid(v16, v87, v88, v89, v90);
              v154 = v91;
              v152[0] = objc_msgSend_columnUid(v16, v91, v92, v93, v94);
              v152[1] = v95;
              v99 = objc_msgSend_type(v16, v95, v96, v97, v98);
              v104 = objc_msgSend_groupLevel(v16, v100, v101, v102, v103);
              v106 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v86, v105, &v153, &v162, v152, v99, v104);
              v107 = v168;
              v168 = v106;
            }

            else
            {
              objc_msgSend_addObject_(v150, v82, v66, v83, v84);
            }

            _Block_object_dispose(&v159, 8);
            if (v85)
            {
              break;
            }

            if (v63 == ++v65)
            {
              v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v108, &v164, v169, 16);
              if (v63)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }
      }

      v109 = objc_msgSend_absoluteGroupUid(v168, v27, v28, v29, v30, v143);
      if (!(v109 | v110))
      {
        v114 = [TSCECategoryRef alloc];
        v159._lower = objc_msgSend_groupByUid(v16, v115, v116, v117, v118);
        v159._upper = v119;
        v162 = objc_msgSend_absoluteGroupUid(v16, v119, v120, v121, v122);
        v163 = v123;
        v153 = objc_msgSend_columnUid(v16, v123, v124, v125, v126);
        v154 = v127;
        v131 = objc_msgSend_type(v16, v127, v128, v129, v130);
        v136 = objc_msgSend_groupLevel(v16, v132, v133, v134, v135);
        v138 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v114, v137, &v159, &v162, &v153, v131, v136);
        v139 = v168;
        v168 = v138;
      }

      v140 = objc_msgSend_absoluteGroupUid(v168, v110, v111, v112, v113);
      if (v140 | v141)
      {
        sub_22135D934(v143, &v168);
      }

LABEL_29:

      ++var0;
    }

    while (var0 != var1);
  }

  return result;
}

- (vector<TSCECategoryRef)captureCategoryLabelRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning forRows:(unsigned __int8)rows
{
  v7 = a7;
  v8 = a6;
  rowsCopy = rows;
  spanningCopy = spanning;
  v85 = 0;
  v86 = &v85;
  v87 = 0x4812000000;
  v88 = sub_22135D830;
  v89 = sub_22135D854;
  v90 = &unk_22188E88F;
  memset(v91, 0, sizeof(v91));
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_22135824C;
  v83 = sub_22135825C;
  v84 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14, v15, v16);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = rowsCopy;
  v73 = 0;
  v74 = 0;
  if (rowsCopy != 253)
  {
    if (v7)
    {
      v21 = objc_msgSend_tableInfo(self, v17, v18, v19, v20);
      v26 = objc_msgSend_indexesForSummaryRows(v21, v22, v23, v24, v25);
      v30 = objc_msgSend_regionByIntersectingRowIndices_(spanningCopy, v27, v26, v28, v29);
      v35 = objc_msgSend_tableInfo(self, v31, v32, v33, v34);
      v40 = objc_msgSend_categoryColumnRange(v35, v36, v37, v38, v39);
      v43 = objc_msgSend_regionByIntersectingRange_(v30, v41, v40, v41, v42);

      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_22135FC48;
      v71[3] = &unk_2784630E8;
      v71[4] = self;
      v71[5] = &v75;
      v72 = v8;
      v71[6] = &v79;
      v71[7] = &v85;
      objc_msgSend_enumerateRowsUsingBlock_(v43, v44, v71, v45, v46);
      if (v8)
      {
        memset(v68, 0, sizeof(v68));
        sub_2211FECD0(v68, v86[6], v86[7], (v86[7] - v86[6]) >> 3);
        objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v47, v68, v80[5], *(v76 + 24));
      }

      else
      {
        v69.origin = 0;
        v69.size = 0;
        v70 = 0;
        sub_2211FECD0(&v69, v86[6], v86[7], (v86[7] - v86[6]) >> 3);
      }

      sub_2210BC2A8(&v73);
      v73 = v69;
      v74 = v70;
      v69.size = 0;
      v70 = 0;
      v69.origin = 0;
      v92[0] = &v69;
      sub_22107C2C0(v92);
      if (v8)
      {
        v92[0] = v68;
        sub_22107C2C0(v92);
      }
    }

    else
    {
      v48 = objc_msgSend_tableInfo(self, v17, v18, v19, v20);
      v43 = v48;
      if (v48)
      {
        v53 = MEMORY[0x277CCAA78];
        v69.origin = objc_msgSend_categoryColumnRange(v48, v49, v50, v51, v52);
        v69.size = v54;
        v55 = TSUCellRect::columns(&v69);
        v58 = objc_msgSend_indexSetWithIndexesInRange_(v53, v56, v55, v56, v57);
        v62 = objc_msgSend_regionBySubtractingColumnIndexes_(spanningCopy, v59, v58, v60, v61);

        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_22135FEE4;
        v67[3] = &unk_278463110;
        v67[4] = self;
        v67[5] = &v75;
        v67[6] = &v85;
        objc_msgSend_enumerateColumnsUsingBlock_(v62, v63, v67, v64, v65);
      }

      if (&v73 != (v86 + 6))
      {
        sub_22116CF34(&v73, v86[6], v86[7], (v86[7] - v86[6]) >> 3);
      }
    }
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_2211FECD0(retstr, *&v73.origin, *&v73.size, (*&v73.size - *&v73.origin) >> 3);
  v69.origin = &v73;
  sub_22107C2C0(&v69);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  v79 = v91;
  sub_22107C2C0(&v79);

  return result;
}

- (vector<TSCECategoryRef)captureAnyCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning
{
  v6 = a6;
  spanningCopy = spanning;
  v57 = 0;
  v58 = &v57;
  v59 = 0x4812000000;
  v60 = sub_22135D830;
  v61 = sub_22135D854;
  v62 = &unk_22188E88F;
  memset(v63, 0, sizeof(v63));
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_22135824C;
  v55 = sub_22135825C;
  v56 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = a5;
  v45 = 0uLL;
  v46 = 0;
  v19 = objc_msgSend_tableInfo(self, v15, v16, v17, v18);
  v24 = objc_msgSend_indexesForSummaryRows(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_regionByIntersectingRowIndices_(spanningCopy, v25, v24, v26, v27);

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_221360400;
  v38[3] = &unk_278463138;
  v29 = v19;
  v39 = v29;
  selfCopy = self;
  v44 = v6;
  v41 = &v47;
  v42 = &v51;
  v43 = &v57;
  objc_msgSend_enumerateCellIDsUsingBlock_(v28, v30, v38, v31, v32);
  if (v6)
  {
    memset(v35, 0, sizeof(v35));
    sub_2211FECD0(v35, v58[6], v58[7], (v58[7] - v58[6]) >> 3);
    objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v33, v35, v52[5], *(v48 + 24));
  }

  else
  {
    v36 = 0uLL;
    v37 = 0;
    sub_2211FECD0(&v36, v58[6], v58[7], (v58[7] - v58[6]) >> 3);
  }

  sub_2210BC2A8(&v45);
  v45 = v36;
  v46 = v37;
  v37 = 0;
  v36 = 0uLL;
  v64 = &v36;
  sub_22107C2C0(&v64);
  if (v6)
  {
    v64 = v35;
    sub_22107C2C0(&v64);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_2211FECD0(retstr, v45, *(&v45 + 1), (*(&v45 + 1) - v45) >> 3);

  *&v36 = &v45;
  sub_22107C2C0(&v36);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  v51 = v63;
  sub_22107C2C0(&v51);

  return result;
}

- (vector<TSCECategoryRef)captureCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning
{
  v6 = a6;
  v7 = a5;
  spanningCopy = spanning;
  v13 = objc_msgSend_tableInfo(self, v9, v10, v11, v12);
  v15 = objc_msgSend_cellIteratorWithRegion_flags_searchFlags_(v13, v14, spanningCopy, 16, 0x20000);

  objc_msgSend_captureCategoryRefsFromIterator_atLevel_asSpanning_(self, v16, v15, v7, v6);

  return result;
}

- (id)viewCellTractRefForCategoryRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8, 0, 0);
  if (objc_msgSend_refersToPivotTable(refCopy, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_pivotTableUid(refCopy, v14, v15, v16, v17);
    v20 = v19;
    v24 = objc_msgSend_calcEngine(self, v19, v21, v22, v23);
    v26 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v25, v18, v20, v24);

    v9 = v26;
  }

  v27 = objc_msgSend_uidRectRefForCategoryRef_atRowUid_(self, v14, refCopy, &v33, v17);
  v31 = objc_msgSend_cellTractRefForUIDRectRef_(v9, v28, v27, v29, v30);

  return v31;
}

- (id)viewCellTractRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid
{
  refCopy = ref;
  v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  v14 = objc_msgSend_uidRectRefForCategoryRef_atRowUid_(self, v12, refCopy, uid, v13);
  v18 = objc_msgSend_cellTractRefForUIDRectRef_(v11, v15, v14, v16, v17);

  return v18;
}

- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, filtered, order, dimension);

  return v5;
}

- (id)stringForCategoryRef:(id)ref hostTableUID:(const TSKUIDStruct *)d
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, ref, d, v4);

  return v5;
}

- (id)prettyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  v14 = objc_msgSend_calcEngine(self, v10, v11, v12, v13);

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBy prettyStringForCategoryRef:forHostCellRef:namingContext:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 4782, 0, "nil calculationEngine.  Can't generate string for categoryRefNode.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v197 = 0;
  v198 = 0;
  v30 = objc_msgSend_calcEngine(self, v15, v16, v17, v18);
  tableUID = cellRef->_tableUID;
  v34 = objc_msgSend_tableOrLinkedResolverForTableUID_(v30, v31, &tableUID, v32, v33);

  if (v34)
  {
    v39 = objc_msgSend_tableTranslator(v34, v35, v36, v37, v38);
    v197 = objc_msgSend_rowUIDForBaseRowIndex_(v39, v40, cellRef->coordinate.row, v41, v42);
    v198 = v43;
  }

  tableUID = cellRef->_tableUID;
  v44 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(self, v35, refCopy, &v197, &tableUID);
  if (!objc_msgSend_isCategorized(self, v45, v46, v47, v48) || !objc_msgSend_isValidCategoryRef_(self, v49, v44, v50, v51))
  {
    v68 = 0;
    goto LABEL_47;
  }

  lower = cellRef->_tableUID._lower;
  upper = cellRef->_tableUID._upper;
  if (*&cellRef->_tableUID == 0)
  {
    goto LABEL_10;
  }

  v58 = objc_msgSend_categoryOwner(self, v52, v53, v54, v55);
  if (lower != objc_msgSend_baseTableUID(v58, v59, v60, v61, v62))
  {

LABEL_13:
    v69 = objc_msgSend_calcEngine(self, v52, v65, v54, v55);
    v74 = objc_msgSend_categoryOwner(self, v70, v71, v72, v73);
    v79 = objc_msgSend_baseTableUID(v74, v75, v76, v77, v78);
    v82 = objc_msgSend_resolverForTableUID_(v69, v80, v79, v80, v81);

    if (v82 && (objc_msgSend_tableName(v82, v83, v84, v85, v86), (v194 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v91 = objc_msgSend_calcEngine(self, v87, v88, v89, v90);
      v94 = objc_msgSend_resolverForTableUID_(v91, v92, cellRef->_tableUID._lower, cellRef->_tableUID._upper, v93);

      v192 = v94;
      v99 = objc_msgSend_sheetName(v94, v95, v96, v97, v98);
      v66 = objc_msgSend_sheetName(v82, v100, v101, v102, v103);
      if (objc_msgSend_isEqualToString_(v66, v104, v99, v105, v106))
      {

        v66 = 0;
      }
    }

    else
    {
      v194 = 0;
      v66 = 0;
    }

    v67 = v194;
    goto LABEL_20;
  }

  v64 = v63;

  if (upper != v64)
  {
    goto LABEL_13;
  }

LABEL_10:
  v66 = 0;
  v67 = 0;
LABEL_20:
  v193 = objc_msgSend_aggregateLabelForCategoryRef_(self, v52, v44, v54, v55);
  v191 = v66;
  v195 = v67;
  v110 = objc_msgSend_columnNameForCategoryRef_(self, v107, v44, v108, v109);
  if (v110)
  {
    v115 = v110;
  }

  else
  {
    v115 = &stru_2834BADA0;
  }

  if (objc_msgSend_quoteComponents(contextCopy, v111, v112, v113, v114))
  {
    if (objc_msgSend_forFormulaPlainText(contextCopy, v116, v117, v118, v119))
    {
      v124 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v120, v121, v122, v123);
      v128 = objc_msgSend_rangeOfCharacterFromSet_(v115, v125, v124, v126, v127) != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v128 = 0;
    }

    v129 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(v115, v120, v128, v122, v123);

    v115 = v129;
  }

  if (objc_msgSend_preserveFlags(v44, v116, v117, v118, v119))
  {
    v133 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v130, @"$%@", v131, v132, v115);

    v115 = v133;
  }

  v134 = v115;
  v136 = objc_msgSend_groupValueHierarchyStringForCategoryRef_forHostCellRef_namingContext_(self, v135, v44, cellRef, contextCopy);
  if (objc_msgSend_length(v136, v137, v138, v139, v140))
  {
    if ((objc_msgSend_preserveFlags(v44, v141, v142, v143, v144) & 2) != 0)
    {
      v148 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v145, @"$%@", v146, v147, v136);

      v136 = v148;
    }

    v149 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v145, @"%@ %@", v146, v147, v134, v136);

    v150 = v149;
  }

  else
  {
    v150 = v134;
  }

  if (objc_msgSend_length(v193, v141, v142, v143, v144))
  {
    v155 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v151, @"%@ (%@)", v153, v154, v150, v193);

    v150 = v155;
  }

  if (objc_msgSend_length(v195, v151, v152, v153, v154))
  {
    v160 = objc_msgSend_quoteComponents(contextCopy, v156, v157, v158, v159);
    v165 = MEMORY[0x277CCACA8];
    if (v160)
    {
      v166 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapesIfNecessary(v195, v161, v162, v163, v164);
      v68 = objc_msgSend_stringWithFormat_(v165, v167, @"%@::%@", v168, v169, v166, v150);
    }

    else
    {
      v68 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v161, @"%@::%@", v163, v164, v195, v150);
    }

    if (objc_msgSend_length(v191, v170, v171, v172, v173))
    {
      v178 = objc_msgSend_quoteComponents(contextCopy, v174, v175, v176, v177);
      v183 = MEMORY[0x277CCACA8];
      if (v178)
      {
        v184 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapesIfNecessary(v191, v179, v180, v181, v182);
        v188 = objc_msgSend_stringWithFormat_(v183, v185, @"%@::%@", v186, v187, v184, v68);

        v68 = v188;
      }

      else
      {
        v189 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v179, @"%@::%@", v181, v182, v191, v68);

        v68 = v189;
      }
    }
  }

  else
  {
    v68 = v150;
  }

LABEL_47:

  return v68;
}

- (TSKUIDStruct)rowUIDForLookupKey:(unsigned int)key
{
  p_rowUidLookupList = &self->_rowUidLookupList;
  if (((self->_rowUidLookupList._uids.__end_ - self->_rowUidLookupList._uids.__begin_) & 0xFFFFFFFF0) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy rowUIDForLookupKey:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 4886, 0, "Warning, rowUidLookupList is empty, we're not going to find anything.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v18 = sub_2210BCEA0(p_rowUidLookupList, key);
  result._upper = v19;
  result._lower = v18;
  return result;
}

- (void)p_setupCustomFormatsWithLocale:(id)locale
{
  localeCopy = locale;
  v8 = objc_msgSend_customFormatData(MEMORY[0x277D81250], v4, v5, v6, v7);
  v12 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v9, localeCopy, v10, v11);
  objc_msgSend_setFormatString_(v8, v13, v12, v14, v15);

  v16 = objc_alloc(MEMORY[0x277D81198]);
  v18 = objc_msgSend_initWithName_formatType_data_(v16, v17, @"blank", 271, v8);
  v19 = objc_alloc(MEMORY[0x277D80650]);
  v21 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v19, v20, 271, 0, v18);
  customFormatForBlankGroup = self->_customFormatForBlankGroup;
  self->_customFormatForBlankGroup = v21;

  v27 = objc_msgSend_customFormatData(MEMORY[0x277D81250], v23, v24, v25, v26);
  v31 = objc_msgSend_localizedNameForErrorGroupForDocumentLocale_(TSTGroupBy, v28, localeCopy, v29, v30);
  objc_msgSend_setFormatString_(v27, v32, v31, v33, v34);

  v35 = objc_alloc(MEMORY[0x277D81198]);
  v37 = objc_msgSend_initWithName_formatType_data_(v35, v36, @"error", 271, v27);
  v38 = objc_alloc(MEMORY[0x277D80650]);
  v40 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v38, v39, 271, 0, v37);
  customFormatForErrorGroup = self->_customFormatForErrorGroup;
  self->_customFormatForErrorGroup = v40;
}

+ (id)localizedNameForBlankGroupForDocumentLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"(blank)", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)localizedNameForErrorGroupForDocumentLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"(error)", &stru_2834BADA0, @"TSTables");

  return v3;
}

- (BOOL)isBlankGroupUid:(const TSKUIDStruct *)uid
{
  v4 = objc_msgSend_groupNodeForGroupUid_(self, a2, uid->_lower, uid->_upper, v3);
  isBlankNode = objc_msgSend_isBlankNode(v4, v5, v6, v7, v8);

  return isBlankNode;
}

- (BOOL)isErrorGroupUid:(const TSKUIDStruct *)uid
{
  v4 = objc_msgSend_groupNodeForGroupUid_(self, a2, uid->_lower, uid->_upper, v3);
  isErrorNode = objc_msgSend_isErrorNode(v4, v5, v6, v7, v8);

  return isErrorNode;
}

+ (id)localizedTrueStringForBooleanGroupWithString:(id)string documentLocale:(id)locale
{
  stringCopy = string;
  v7 = objc_msgSend_localizedStringForKey_value_table_(locale, v6, @"Is “%@”", &stru_2834BADA0, @"TSTables");
  v11 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v8, v7, v9, v10, stringCopy);
  v16 = objc_msgSend_tswp_stringWithUnambiguousNeutralEnding(v11, v12, v13, v14, v15);

  return v16;
}

+ (id)localizedFalseStringForBooleanGroupWithString:(id)string documentLocale:(id)locale
{
  stringCopy = string;
  v7 = objc_msgSend_localizedStringForKey_value_table_(locale, v6, @"Not “%@”", &stru_2834BADA0, @"TSTables");
  v11 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v8, v7, v9, v10, stringCopy);
  v16 = objc_msgSend_tswp_stringWithUnambiguousNeutralEnding(v11, v12, v13, v14, v15);

  return v16;
}

- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref
{
  v6 = a4;
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  v11 = objc_msgSend_absoluteGroupUid(v6, v7, v8, v9, v10);
  v18 = objc_msgSend_groupNodeForGroupUid_(self, v12, v11, v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_type(v6, v14, v15, v16, v17);
    if (v19 == 11)
    {
      v24 = objc_msgSend_columnUid(v6, v20, v21, v22, v23);
      v26 = v25;
      v30 = objc_msgSend_groupLevel(v6, v25, v27, v28, v29);
      v19 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v31, v24, v26, v30);
    }

    if (v19)
    {
      v52.range._topLeft = objc_msgSend_columnUid(v6, v20, v21, v22, v23);
      v52.range._bottomRight = v32;
      v39 = objc_msgSend_aggNodeForColumnUid_(v18, v32, &v52, v33, v34);
      if (v39 && objc_msgSend_type(v6, v35, v36, v37, v38) == 11)
      {
        v51.coordinate = objc_msgSend_formulaCoord(v39, v40, v41, v42, v43);
        v51._tableUID._lower = objc_msgSend_ownerUID(self, v44, v45, v46, v47);
        v51._tableUID._upper = v48;
        TSCERangeRef::TSCERangeRef(&v52, &v51);
        tableUID = v52._tableUID;
        retstr->range = v52.range;
        retstr->_tableUID = tableUID;
      }
    }
  }

  return result;
}

- (id)categoryRefForAggregateRangeRef:(const TSCERangeRef *)ref
{
  if (TSCERangeRef::isValid(ref) && (ref->_tableUID._lower == objc_msgSend_ownerUID(self, v5, v6, v7, v8) ? (v12 = ref->_tableUID._upper == v9) : (v12 = 0), v12))
  {
    v49[0] = ref->range._topLeft;
    v14 = objc_msgSend_aggNodeForAggFormulaCoord_(self, v9, v49, v10, v11);
    v19 = objc_msgSend_groupNode(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_aggregator(v14, v20, v21, v22, v23);
    v25 = v24;
    v13 = 0;
    if (v19 && v24)
    {
      v26 = [TSCECategoryRef alloc];
      v49[0] = objc_msgSend_ownerUID(self, v27, v28, v29, v30);
      v49[1] = v31;
      v48[0] = objc_msgSend_groupUid(v19, v31, v32, v33, v34);
      v48[1] = v35;
      v39 = objc_msgSend_columnUid(v25, v35, v36, v37, v38);
      v44 = objc_msgSend_groupLevel(v19, v40, v41, v42, v43, v39, v40);
      v13 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v26, v45, v49, v48, &v47, 11, v44);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)validateNumberOfGroupsForGroupingColumnList:(id)list sourceTableModel:(id)model sourceBodyTract:(id)tract limit:(unint64_t)limit groupNodeCount:(unint64_t *)count
{
  v131 = *MEMORY[0x277D85DE8];
  listCopy = list;
  modelCopy = model;
  tractCopy = tract;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  context = objc_autoreleasePoolPush();
  v100 = objc_msgSend_groupingColumns(listCopy, v9, v10, v11, v12);
  if (!tractCopy)
  {
    v113.origin = objc_msgSend_bodyRowRange(modelCopy, v13, v14, v15, v16);
    v113.size = v17;
    v18 = [TSCECellTractRef alloc];
    origin = v113.origin;
    v125 = TSUCellRect::bottomRight(&v113);
    tractCopy = objc_msgSend_initWithTopLeft_bottomRight_(v18, v19, &origin, &v125, v20);
  }

  if (count || (v21 = objc_msgSend_rows(tractCopy, v13, v14, v15, v16), v22 = TSUIndexSet::count(v21), objc_msgSend_count(v100, v23, v24, v25, v26) * v22 + 1 > limit))
  {
    v94 = objc_msgSend_calcEngine(modelCopy, v13, v14, v15, v16);
    v95 = objc_msgSend_documentLocale(v94, v27, v28, v29, v30);
    origin = 0;
    v123 = 0;
    v124 = 0;
    v31 = [TSTGroupNode alloc];
    v36 = objc_msgSend_context(modelCopy, v32, v33, v34, v35);
    inited = objc_msgSend_initAsRootNodeForContext_(v31, v37, v36, v38, v39);

    ++v127[3];
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v40 = v100;
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v118, v130, 16);
    if (v46)
    {
      v47 = *v119;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v119 != v47)
          {
            objc_enumerationMutation(v40);
          }

          v49 = objc_msgSend_columnUid(*(*(&v118 + 1) + 8 * i), v42, v43, v44, v45);
          v51 = v50;
          v55 = objc_msgSend_columnRowUIDMap(modelCopy, v50, v52, v53, v54);
          LOWORD(v49) = objc_msgSend_columnIndexForColumnUID_(v55, v56, v49, v51, v57);

          LOWORD(v113.origin.row) = v49;
          v62 = objc_msgSend_columns(tractCopy, v58, v59, v60, v61);
          if ((TSUIndexSet::containsIndex(v62) & 1) == 0)
          {
            v66 = MEMORY[0x277D81150];
            v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "+[TSTGroupBy validateNumberOfGroupsForGroupingColumnList:sourceTableModel:sourceBodyTract:limit:groupNodeCount:]", v64, v65);
            v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v69, v70);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v72, v67, v71, 5142, 0, "Column missing from table model when validating");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
          }

          sub_221266D14(&origin, &v113);
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v118, v130, 16);
      }

      while (v46);
    }

    v113.origin = 0;
    v113.size = &v113;
    v114 = 0x3032000000;
    v115 = sub_22135824C;
    v116 = sub_22135825C;
    v117 = 0;
    v81 = objc_msgSend_mergeOwner(modelCopy, v77, v78, v79, v80);
    objc_msgSend_rows(tractCopy, v82, v83, v84, v85);
    v107 = 0;
    v108 = 0;
    __p = 0;
    sub_221362914(&__p, origin, v123, (v123 - origin) >> 1);
    v86 = v81;
    v104 = modelCopy;
    v87 = v95;
    v105 = v40;
    v88 = v94;
    v89 = inited;
    v109 = 0;
    v110 = 0;
    limitCopy = limit;
    countCopy = count;
    TSUIndexSet::enumerateIndexesUsingBlock();

    if (__p)
    {
      v107 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v113, 8);
    if (origin)
    {
      v123 = origin;
      operator delete(origin);
    }

    v90 = 1;
  }

  else
  {
    v90 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v90)
  {
    v91 = v127[3];
    if (count)
    {
      *count = v91;
    }

    v92 = v91 <= limit;
  }

  else
  {
    v92 = 1;
  }

  _Block_object_dispose(&v126, 8);

  return v92;
}

- (TSTCategoryOwner)categoryOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);

  return WeakRetained;
}

- (TSTGroupBySet)groupBySet
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBySet);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_groupByUid = 0uLL;
  TSUIndexSet::TSUIndexSet(&self->_aggFormulaCoordsFreeList);
  TSUIndexSet::TSUIndexSet(&self->_aggFormulaCoordsToFreeDeferred);
  self->_aggNodesByFormulaCoord.__table_.__bucket_list_ = 0u;
  *&self->_aggNodesByFormulaCoord.__table_.__first_node_.__next_ = 0u;
  self->_aggNodesByFormulaCoord.__table_.__max_load_factor_ = 1.0;
  self->_groupNodesByGroupUid.__table_.__bucket_list_ = 0u;
  *&self->_groupNodesByGroupUid.__table_.__first_node_.__next_ = 0u;
  self->_groupNodesByGroupUid.__table_.__max_load_factor_ = 1.0;
  self->_rowUidLookupList._uidHashToLookupKeyMap.__table_.__size_ = 0;
  *&self->_rowUidLookupList._uids.__cap_ = 0u;
  *&self->_rowUidLookupList._uidHashToLookupKeyMap.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  *&self->_rowUidLookupList._uids.__begin_ = 0u;
  self->_rowUidLookupList._uidHashToLookupKeyMap.__table_.__max_load_factor_ = 1.0;
  self->_rowUidLookupList._uidHashOverflowMap.__table_.__bucket_list_ = 0u;
  *&self->_rowUidLookupList._uidHashOverflowMap.__table_.__first_node_.__next_ = 0u;
  self->_rowUidLookupList._uidHashOverflowMap.__table_.__max_load_factor_ = 1.0;
  return self;
}

+ (unsigned)groupingComboForGroupingType:(int64_t)type
{
  if (type <= 3)
  {
    if (type > 0)
    {
      v5 = 2;
      if (type == 3)
      {
        v9 = 32;
      }

      else
      {
        v9 = 0;
      }

      if (type == 2)
      {
        v7 = 8;
      }

      else
      {
        v7 = v9;
      }

      v8 = type == 1;
      goto LABEL_18;
    }

    if (type != -1)
    {
      return type == 0;
    }

LABEL_27:
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTGroupBy(ChangeGroups) groupingComboForGroupingType:]", v3, v4);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy_ChangeGroups.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 169, 0, "This grouping type isn't supported in this release");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    return 1;
  }

  if (type > 6)
  {
    if (type == 7)
    {
      return 128;
    }

    if (type == 8)
    {
      return 256;
    }

    if (type != 10)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v5 = 64;
  if (type == 6)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (type == 5)
  {
    v7 = 16;
  }

  else
  {
    v7 = v6;
  }

  v8 = type == 4;
LABEL_18:
  if (v8)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

+ (id)p_dateBySettingUnit:(unint64_t)unit value:(int64_t)value ofDate:(id)date inCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v13 = objc_msgSend_component_fromDate_(calendarCopy, v11, unit, dateCopy, v12);
  if (unit != 0x2000 && v13 == value)
  {
    v16 = dateCopy;
    goto LABEL_51;
  }

  v17 = objc_msgSend_components_fromDate_(calendarCopy, v14, 2097916, dateCopy, v15);
  v22 = v17;
  if (unit > 15)
  {
    if (unit == 16)
    {
      objc_msgSend_setValue_forComponent_(v17, v18, value, 16, v21);
      goto LABEL_50;
    }

    if (unit != 512)
    {
      if (unit != 0x2000)
      {
        goto LABEL_50;
      }

      v23 = objc_msgSend_gregorianCalendar(TSCECalendar, v18, v19, v20, v21);
      v24 = dateCopy;
      v27 = objc_msgSend_weekNumberForDate_withType_(v23, v25, v24, 2, v26);
      v32 = 0;
      v136 = v24;
      while (1)
      {
        v33 = value - v27;
        if (value == v27)
        {
LABEL_49:

          goto LABEL_50;
        }

        v34 = (v33 / 4.3);
        if (v34)
        {
          v35 = objc_msgSend_month(v22, v28, v29, v30, v31);
          objc_msgSend_setMonth_(v22, v36, v35 + v34, v37, v38);
          if (objc_msgSend_month(v22, v39, v40, v41, v42) <= 0)
          {
            objc_msgSend_setMonth_(v22, v43, 1, v45, v46);
            v50 = -7;
LABEL_22:
            if (objc_msgSend_day(v22, v28, v29, v30, v31) + v50 < 1)
            {
              if (objc_msgSend_month(v22, v69, v70, v71, v72) < 2)
              {
                objc_msgSend_setDay_(v22, v81, 1, v83, v84);
              }

              else
              {
                v85 = objc_msgSend_month(v22, v81, v82, v83, v84);
                objc_msgSend_setMonth_(v22, v86, v85 - 1, v87, v88);
              }
            }

            else
            {
              v73 = objc_msgSend_day(v22, v69, v70, v71, v72) + v50;
              objc_msgSend_setDay_(v22, v74, v73, v75, v76);
            }

            goto LABEL_28;
          }

          if (objc_msgSend_month(v22, v43, v44, v45, v46) < 13)
          {
            goto LABEL_28;
          }

          objc_msgSend_setMonth_(v22, v47, 12, v48, v49);
          v50 = 7;
        }

        else
        {
          v50 = 7 * v33;
          if (v33 < 1)
          {
            goto LABEL_22;
          }
        }

        v51 = objc_msgSend_rangeOfUnit_inUnit_forDate_(calendarCopy, v28, 16, 8, v24);
        v60 = &v59[v51 - 1];
        if (objc_msgSend_day(v22, v59, v52, v53, v54) + v50 <= v60)
        {
          goto LABEL_24;
        }

        if (v50 >= 8)
        {
          v50 -= 7;
          while (v50 + objc_msgSend_day(v22, v55, v56, v57, v58) > v60)
          {
            v61 = v50 + 7;
            v50 -= 7;
            if (v61 <= 0xE)
            {
              goto LABEL_20;
            }
          }

LABEL_24:
          v77 = objc_msgSend_day(v22, v55, v56, v57, v58);
          objc_msgSend_setDay_(v22, v78, v77 + v50, v79, v80);
          goto LABEL_28;
        }

LABEL_20:
        v62 = objc_msgSend_month(v22, v55, v56, v57, v58);
        objc_msgSend_setMonth_(v22, v63, v62 + 1, v64, v65);
        objc_msgSend_setDay_(v22, v66, 1, v67, v68);
LABEL_28:
        v89 = objc_msgSend_dateFromComponents_(calendarCopy, v47, v22, v48, v49);

        v92 = objc_msgSend_components_fromDate_(calendarCopy, v90, 764, v89, v91);

        v27 = objc_msgSend_weekNumberForDate_withType_(v23, v93, v89, 2, v94);
        ++v32;
        v24 = v89;
        v22 = v92;
        if (v32 == 10)
        {
          v124 = MEMORY[0x277D81150];
          v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSTGroupBy(ChangeGroups) p_dateBySettingUnit:value:ofDate:inCalendar:]", v30, v31);
          v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy_ChangeGroups.mm", v127, v128);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v130, v125, v129, 295, 0, "Continued looping trying to set date %@ to week number %lu", v136, value);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133, v134);
          v24 = v89;
          v22 = v92;
          goto LABEL_49;
        }
      }
    }

    v107 = objc_msgSend_weekday(v17, v18, v19, v20, v21);
    if (v107 >= value)
    {
      v112 = v107 - value;
    }

    else
    {
      v112 = v107 - value + 7;
    }

    if (objc_msgSend_day(v22, v108, v109, v110, v111) <= v112)
    {
      v106 = objc_msgSend_day(v22, v113, v114, v115, v116) - v112 + 7;
    }

    else
    {
      v106 = objc_msgSend_day(v22, v113, v114, v115, v116) - v112;
    }

LABEL_35:
    objc_msgSend_setDay_(v22, v18, v106, v20, v21);
    goto LABEL_50;
  }

  if (unit == 4)
  {
    objc_msgSend_setValue_forComponent_(v17, v18, value, 4, v21);
    if (objc_msgSend_day(v22, v117, v118, v119, v120) == 29 && objc_msgSend_month(v22, v18, v121, v20, v21) == 2)
    {
      v123 = objc_msgSend_year(v22, v18, v122, v20, v21);
      if (__ROR8__(0x8F5C28F5C28F5C29 * v123 + 0x51EB851EB851EB0, 4) >= 0xA3D70A3D70A3D7uLL && (__ROR8__(0x8F5C28F5C28F5C29 * v123 + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL || (v123 & 3) != 0))
      {
        objc_msgSend_setDay_(v22, v18, 28, v20, v21);
      }
    }
  }

  else if (unit == 8)
  {
    objc_msgSend_setValue_forComponent_(v17, v18, value, 8, v21);
    if (objc_msgSend_day(v22, v95, v96, v97, v98) >= 29)
    {
      v99 = objc_msgSend_rangeOfUnit_inUnit_forDate_(calendarCopy, v18, 16, 8, dateCopy);
      v101 = v100;
      v105 = objc_msgSend_day(v22, v100, v102, v103, v104);
      v106 = &v101[v99 - 1];
      if (v105 > v106)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_50:
  v16 = objc_msgSend_dateFromComponents_(calendarCopy, v18, v22, v20, v21);

LABEL_51:

  return v16;
}

- (unordered_map<TSKUIDStruct,)changesPerColumnMapToBeInGroup:()std:()std:(std:(TSTPlanForGroupingCell>>> *__return_ptr)retstr :(TSTGroupBy *)self allocator<std:(SEL)std :(id)a4 pair<const)TSKUIDStruct :equal_to<TSKUIDStruct> :hash<TSKUIDStruct>
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_groupingColumns;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v36, v43, 16);
  if (v12)
  {
    v13 = *v37;
    v14 = 1;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v36 + 1) + 8 * v15);
      if (objc_msgSend_groupLevel(v6, v8, v9, v10, v11) < v14)
      {
        break;
      }

      v21 = objc_msgSend_groupingType(v16, v17, v18, v19, v20);
      v34 = objc_msgSend_groupingComboForGroupingType_(TSTGroupBy, v22, v21, v23, v24);
      v35 = v14;
      v33[0] = objc_msgSend_columnUid(v16, v25, v26, v27, v28);
      v33[1] = v29;
      v42 = v33;
      v30 = sub_2214AA998(retstr, v33);
      sub_2214A7A00((v30 + 4), &v34);
      ++v14;
      if (v12 == ++v15)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v36, v43, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  sub_2210BDEC0(v40);
  return result;
}

- (BOOL)changeCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d toBeInGroup:(id)group
{
  cellCopy = cell;
  groupCopy = group;
  objc_msgSend_changesPerColumnMapToBeInGroup_(self, v10, groupCopy, v11, v12);
  v17 = sub_2210875C4(v22, d);
  if (v17)
  {
    v18 = objc_msgSend_groupValueTuple(groupCopy, v13, v14, v15, v16);
    v20 = objc_msgSend_p_setCell_groupingCellPlan_groupValue_toGroup_templateCell_(self, v19, cellCopy, (v17 + 4), v18, groupCopy, 0);
  }

  else
  {
    v20 = 0;
  }

  sub_2214AA910(v22);

  return v20;
}

- (id)changeCellDiffMapToMoveRows:(const void *)rows toGroup:(id)group templateRowUID:(const TSKUIDStruct *)d
{
  groupCopy = group;
  selfCopy = self;
  v12 = objc_msgSend_categoryOwner(self, v8, v9, v10, v11);
  v17 = objc_msgSend_tableModel(v12, v13, v14, v15, v16);

  v18 = [TSTCellDiffMap alloc];
  v23 = objc_msgSend_context(v17, v19, v20, v21, v22);
  v87 = objc_msgSend_initWithContext_(v18, v24, v23, v25, v26);

  if (groupCopy)
  {
    v93 = objc_msgSend_mergeOwner(v17, v27, v28, v29, v30);
    memset(v98, 0, sizeof(v98));
    v99 = 1065353216;
    v88 = objc_msgSend_groupValueTuple(groupCopy, v31, v32, v33, v34);
    v92 = objc_msgSend_newCell(v17, v35, v36, v37, v38);
    if (*d == 0)
    {
      v90 = 0;
    }

    else
    {
      v90 = objc_msgSend_newCell(v17, v39, v40, v41, v42);
    }

    objc_msgSend_changesPerColumnMapToBeInGroup_(selfCopy, v39, groupCopy, v41, v42);
    v47 = *rows;
    v86 = *(rows + 1);
    if (*rows != v86)
    {
      do
      {
        for (i = v97; i; i = *i)
        {
          v50 = i[2];
          v49 = i[3];
          v51 = objc_msgSend_columnRowUIDMap(v17, v43, v44, v45, v46, v86);
          v54 = objc_msgSend_columnIndexForColumnUID_(v51, v52, v50, v49, v53);

          if (v54 != 0x7FFF)
          {
            v55 = objc_msgSend_columnRowUIDMap(v17, v43, v44, v45, v46);
            TSTMakeCellUID(v95);
            v59 = objc_msgSend_cellIDForCellUID_(v55, v56, v95, v57, v58);

            v94 = 0;
            v94 = objc_msgSend_mergeOriginForBaseCellCoord_(v93, v60, v59, v61, v62);
            if (!sub_221087F14(v98, &v94))
            {
              sub_2214AAC5C(v98, &v94);
              objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v17, v63, v92, v94, 1);
              if (WORD2(v94) != WORD2(v59))
              {
                v68 = objc_msgSend_columnRowUIDMap(v17, v64, v65, v66, v67);
                objc_msgSend_columnUIDForColumnIndex_(v68, v69, WORD2(v94), v70, v71);
              }

              if (*d != 0)
              {
                v72 = objc_msgSend_columnRowUIDMap(v17, v64, v65, v66, v67);
                TSTMakeCellUID(v95);
                v76 = objc_msgSend_cellIDForCellUID_(v72, v73, v95, v74, v75);

                v80 = objc_msgSend_mergeOriginForBaseCellCoord_(v93, v77, v76, v78, v79);
                objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v17, v81, v90, v80, 1);
              }

              if (objc_msgSend_p_setCell_groupingCellPlan_groupValue_toGroup_templateCell_(selfCopy, v64, v92, (i + 4), v88, groupCopy, v90))
              {
                v82 = objc_msgSend_p_cellDiffForFinishedCell_(selfCopy, v43, v92, v45, v46);
                TSTMakeCellUID(v95);
                objc_msgSend_addCellDiff_andCellUID_(v87, v83, v82, v95, v84);
              }
            }
          }
        }

        v47 += 16;
      }

      while (v47 != v86);
    }

    sub_2214AA910(v96);

    sub_2210BDEC0(v98);
  }

  return v87;
}

- (id)cellDiffForCell:(id)cell applyingGroupCellValue:(id)value groupingType:(int64_t)type toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (objc_msgSend_hasFormula(cellCopy, v13, v14, v15, v16))
  {
    objc_msgSend_setCellSpec_(cellCopy, v17, 0, v19, v20);
    v24 = 0;
  }

  else if (objc_msgSend_hasControl(cellCopy, v17, v18, v19, v20))
  {
    v26 = objc_msgSend_tableInfo(self, v21, v25, v22, v23);
    v31 = objc_msgSend_newCell(v26, v27, v28, v29, v30);

    objc_msgSend_shallowCopyToCell_(cellCopy, v32, v31, v33, v34);
    v24 = v31;
  }

  else
  {
    v24 = 0;
  }

  v35 = objc_msgSend_groupingComboForGroupingType_(TSTGroupBy, v21, type, v22, v23);
  objc_msgSend_p_setCell_groupingTypeCombo_groupingCellValue_toBeInGroup_(self, v36, cellCopy, v35, valueCopy, groupCopy);
  v41 = objc_msgSend_formatType(cellCopy, v37, v38, v39, v40);
  if (v41 == 263)
  {
    v46 = objc_msgSend_toggleControlSpec(TSTCellToggleControlSpec, v42, v43, v44, v45);
    objc_msgSend_setCellSpec_(cellCopy, v50, v46, v51, v52);
  }

  else
  {
    if (v41 != 267)
    {
      goto LABEL_11;
    }

    v46 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v42, 6, v44, v45);
    objc_msgSend_setCellSpec_(cellCopy, v47, v46, v48, v49);
  }

LABEL_11:
  if (!objc_msgSend_hasControl(cellCopy, v42, v43, v44, v45))
  {
LABEL_14:
    v69 = objc_msgSend_p_cellDiffForFinishedCell_(self, v53, cellCopy, v54, v55);
    goto LABEL_16;
  }

  v56 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v53, cellCopy, 0, v55);
  v61 = objc_msgSend_cellSpec(cellCopy, v57, v58, v59, v60);
  v65 = objc_msgSend_validateFormatAndValue_(v61, v62, v56, v63, v64);

  if (v65)
  {

    goto LABEL_14;
  }

  objc_msgSend_shallowCopyToCell_(v24, v66, cellCopy, v67, v68);

  v69 = 0;
LABEL_16:

  return v69;
}

- (id)p_cellDiffForFinishedCell:(id)cell
{
  cellCopy = cell;
  v8 = objc_msgSend_cellDiff(TSTCellDiff, v4, v5, v6, v7);
  v11 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v9, cellCopy, 0, v10);
  objc_msgSend_setObject_forProperty_(v8, v12, v11, 907, v13);
  v18 = objc_msgSend_cellSpecForDiff(cellCopy, v14, v15, v16, v17);
  objc_msgSend_setObject_forProperty_(v8, v19, v18, 913, v20);

  return v8;
}

- (void)p_setCell:(id)cell groupingTypeCombo:(unsigned __int16)combo groupingCellValue:(id)value toBeInGroup:(id)group
{
  comboCopy = combo;
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (comboCopy <= 15)
  {
    if (comboCopy > 3)
    {
      if (comboCopy == 4)
      {
        objc_msgSend_p_setCell_forYearQuarterGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
      }

      else if (comboCopy == 8)
      {
        objc_msgSend_p_setCell_forMonthGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
      }
    }

    else if (comboCopy == 1)
    {
      objc_msgSend_p_setCell_forUniqueGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }

    else if (comboCopy == 2)
    {
      objc_msgSend_p_setCell_forYearGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }
  }

  else if (comboCopy <= 63)
  {
    if (comboCopy == 16)
    {
      objc_msgSend_p_setCell_forYearWeekGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }

    else if (comboCopy == 32)
    {
      objc_msgSend_p_setCell_forDayOfWeekGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }
  }

  else
  {
    switch(comboCopy)
    {
      case 64:
        objc_msgSend_p_setCell_forDayGroupingTypeWithGroupColumnValue_toBeInGroup_(self, cellCopy, cellCopy, valueCopy, groupCopy);
        break;
      case 128:
        objc_msgSend_p_setCell_forMonthOfYearGroupingTypeWithGroupColumnValue_toBeInGroup_(self, cellCopy, cellCopy, valueCopy, groupCopy);
        break;
      case 256:
        objc_msgSend_p_setCell_forQuarterOfYearGroupingTypeWithGroupColumnValue_toBeInGroup_(self, cellCopy, cellCopy, valueCopy, groupCopy);
        break;
    }
  }
}

- (BOOL)p_setCell:(id)cell groupingCellPlan:(const void *)plan groupValue:(id)value toGroup:(id)group templateCell:(id)templateCell
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  templateCellCopy = templateCell;
  v72 = templateCellCopy;
  if (objc_msgSend_hasFormula(cellCopy, v15, v16, v17, v18))
  {
    v23 = 0;
    objc_msgSend_setCellSpec_(cellCopy, v19, 0, v21, v22);
  }

  else if (objc_msgSend_hasControl(cellCopy, v19, v20, v21, v22))
  {
    v28 = objc_msgSend_tableInfo(self, v24, v25, v26, v27);
    v23 = objc_msgSend_newCell(v28, v29, v30, v31, v32);

    objc_msgSend_shallowCopyToCell_(cellCopy, v33, v23, v34, v35);
  }

  else
  {
    v23 = 0;
  }

  if (objc_msgSend_isEmpty(cellCopy, v24, v25, v26, v27))
  {
    objc_msgSend_copyValueAndFormatToCell_(templateCellCopy, v36, cellCopy, v38, v39);
  }

  v40 = *plan;
  if (groupCopy)
  {
    v41 = objc_msgSend_groupLevel(groupCopy, v36, v37, v38, v39);
    if (!v40)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 10;
    if (!*plan)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v42 = v40 & -v40;
    if ((v40 & -v40) == 0)
    {
      break;
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_2214A9224;
    v74[3] = &unk_278465EC8;
    v79 = v40 & -v40;
    v80 = v41;
    v75 = valueCopy;
    selfCopy = self;
    v77 = cellCopy;
    v78 = groupCopy;
    sub_2214A7AE4(plan, v74);

    v43 = v42 == v40;
    v40 ^= v42;
  }

  while (!v43);
LABEL_15:
  v44 = objc_msgSend_formatType(cellCopy, v36, v37, v38, v39);
  if (v44 == 263)
  {
    v49 = objc_msgSend_toggleControlSpec(TSTCellToggleControlSpec, v45, v46, v47, v48);
    objc_msgSend_setCellSpec_(cellCopy, v53, v49, v54, v55);
  }

  else
  {
    if (v44 != 267)
    {
      goto LABEL_20;
    }

    v49 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v45, 6, v47, v48);
    objc_msgSend_setCellSpec_(cellCopy, v50, v49, v51, v52);
  }

LABEL_20:
  if (objc_msgSend_hasControl(cellCopy, v45, v46, v47, v48))
  {
    v58 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v56, cellCopy, 0, v57);
    v63 = objc_msgSend_cellSpec(cellCopy, v59, v60, v61, v62);
    v67 = objc_msgSend_validateFormatAndValue_(v63, v64, v58, v65, v66);

    if ((v67 & 1) == 0)
    {
      objc_msgSend_shallowCopyToCell_(v23, v68, cellCopy, v69, v70);
    }
  }

  else
  {
    v67 = 1;
  }

  return v67;
}

- (void)p_setCell:(id)cell forUniqueGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    v13 = objc_msgSend_tsceValue(valueCopy, v8, v9, v10, v11);
    if ((objc_msgSend_isNil(v13, v14, v15, v16, v17) & 1) == 0)
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v18, v13, v20, v21);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = objc_msgSend_nilValue(TSCENilValue, v8, v9, v10, v11);
  }

  objc_msgSend_clearValue(cellCopy, v18, v19, v20, v21);
LABEL_6:
}

- (id)defaultDateForGrouping
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setYear_(v2, v3, 2000, v4, v5);
  objc_msgSend_setMonth_(v2, v6, 1, v7, v8);
  objc_msgSend_setDay_(v2, v9, 1, v10, v11);
  v12 = objc_alloc(MEMORY[0x277CBEA80]);
  v16 = objc_msgSend_initWithCalendarIdentifier_(v12, v13, *MEMORY[0x277CBE5C0], v14, v15);
  v20 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v17, @"UTC", v18, v19);
  objc_msgSend_setTimeZone_(v16, v21, v20, v22, v23);

  v27 = objc_msgSend_dateFromComponents_(v16, v24, v2, v25, v26);

  return v27;
}

- (void)p_setCell:(id)cell forYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v40 = objc_msgSend_components_fromDate_(v24, v38, 28, v37, v39);
    v45 = objc_msgSend_year(v40, v41, v42, v43, v44);
    v47 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v46, 4, v45, v19, v24);
    objc_msgSend_setDateValue_(cellCopy, v48, v47, v49, v50);
  }

  else if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
  {
    objc_msgSend_clearValue(cellCopy, v51, v52, v53, v54);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v51, v14, v53, v54);
  }
}

- (void)p_setCell:(id)cell forMonthGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v40 = objc_msgSend_components_fromDate_(v24, v38, 28, v37, v39);
    v45 = objc_msgSend_month(v40, v41, v42, v43, v44);
    v50 = objc_msgSend_year(v40, v46, v47, v48, v49);
    if (v45 == 0x7FFFFFFFFFFFFFFFLL || (v54 = v50, v50 == 0x7FFFFFFFFFFFFFFFLL))
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v51, v14, v52, v53);
    }

    else
    {
      v55 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v51, 8, v45, v19, v24);
      v57 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v56, 4, v54, v55, v24);

      objc_msgSend_setDateValue_(cellCopy, v58, v57, v59, v60);
    }
  }

  else if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
  {
    objc_msgSend_clearValue(cellCopy, v61, v62, v63, v64);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v61, v14, v63, v64);
  }
}

- (void)p_setCell:(id)cell forDayOfWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v40 = objc_msgSend_components_fromDate_(v24, v38, 512, v37, v39);
    v46 = objc_msgSend_weekday(v40, v41, v42, v43, v44);
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v45, v14, 0x7FFFFFFFFFFFFFFFLL, v47);
    }

    else
    {
      v52 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v45, 512, v46, v19, v24);
      objc_msgSend_setDateValue_(cellCopy, v53, v52, v54, v55);
    }
  }

  else if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
  {
    objc_msgSend_clearValue(cellCopy, v48, v49, v50, v51);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v48, v14, v50, v51);
  }
}

- (void)p_setCell:(id)cell forDayGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v40 = objc_msgSend_components_fromDate_(v24, v38, 28, v37, v39);
    v45 = objc_msgSend_day(v40, v41, v42, v43, v44);
    v47 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v46, 16, v45, v19, v24);
    v52 = objc_msgSend_month(v40, v48, v49, v50, v51);
    v54 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v53, 8, v52, v47, v24);

    v59 = objc_msgSend_year(v40, v55, v56, v57, v58);
    v61 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v60, 4, v59, v54, v24);

    objc_msgSend_setDateValue_(cellCopy, v62, v61, v63, v64);
  }

  else if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
  {
    objc_msgSend_clearValue(cellCopy, v65, v66, v67, v68);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v65, v14, v67, v68);
  }
}

- (void)p_setCell:(id)cell forYearWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v40 = objc_msgSend_components_fromDate_(v24, v38, 28, v37, v39);
    v45 = objc_msgSend_year(v40, v41, v42, v43, v44);
    v47 = objc_msgSend_ordinalityOfUnit_inUnit_forDate_(v24, v46, 0x2000, 4, v37);
    v49 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v48, 4, v45, v19, v24);
    v51 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v50, 0x2000, v47, v49, v24);

    objc_msgSend_setDateValue_(cellCopy, v52, v51, v53, v54);
  }

  else if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
  {
    objc_msgSend_clearValue(cellCopy, v55, v56, v57, v58);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v55, v14, v57, v58);
  }
}

- (void)p_setCell:(id)cell forYearQuarterGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12, groupCopy);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12, groupCopy);
  }
  v13 = ;
  v18 = objc_msgSend_dateValue(cellCopy, v14, v15, v16, v17);
  v19 = objc_alloc(MEMORY[0x277CBEA80]);
  v23 = objc_msgSend_initWithCalendarIdentifier_(v19, v20, *MEMORY[0x277CBE5C0], v21, v22);
  v24 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v23, v25, v24, v26, v27);

  if (objc_msgSend_isDateValue(v13, v28, v29, v30, v31))
  {
    if (!v18)
    {
      v18 = objc_msgSend_defaultDateForGrouping(self, v32, v33, v34, v35);
    }

    v36 = objc_msgSend_date(v13, v32, v33, v34, v35);
    v39 = objc_msgSend_components_fromDate_(v23, v37, 28, v36, v38);
    v44 = objc_msgSend_year(v39, v40, v41, v42, v43);
    v46 = objc_msgSend_ordinalityOfUnit_inUnit_forDate_(v23, v45, 2048, 4, v36);
    v51 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v47, 4, v44, v18, v23);
    if (v46 - 1 <= 3)
    {
      v52 = objc_msgSend_components_fromDate_(v23, v48, 8, v18, v50);
      v57 = objc_msgSend_month(v52, v53, v54, v55, v56);
      do
      {
        v59 = (v57 + 2) / 3;
        ++v57;
      }

      while (v59 < v46);
      if (v59 > v46)
      {
        do
        {
          v60 = v57 / 3;
          --v57;
        }

        while (v60 > v46);
      }

      v61 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v58, 8, v57 - 1, v51, v23);

      v51 = v61;
    }

    objc_msgSend_setDateValue_(cellCopy, v48, v51, v49, v50);
  }

  else if (objc_msgSend_isNil(v13, v32, v33, v34, v35))
  {
    objc_msgSend_clearValue(cellCopy, v62, v63, v64, v65);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v62, v13, v64, v65);
  }
}

- (void)p_setCell:(id)cell forMonthOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v40 = objc_msgSend_components_fromDate_(v24, v38, 28, v37, v39);
    v46 = objc_msgSend_month(v40, v41, v42, v43, v44);
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v45, v14, 0x7FFFFFFFFFFFFFFFLL, v47);
    }

    else
    {
      v52 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v45, 8, v46, v19, v24);
      objc_msgSend_setDateValue_(cellCopy, v53, v52, v54, v55);
    }
  }

  else if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
  {
    objc_msgSend_clearValue(cellCopy, v48, v49, v50, v51);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v48, v14, v50, v51);
  }
}

- (void)p_setCell:(id)cell forQuarterOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  }
  v14 = ;
  v19 = objc_msgSend_dateValue(cellCopy, v15, v16, v17, v18);
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  v24 = objc_msgSend_initWithCalendarIdentifier_(v20, v21, *MEMORY[0x277CBE5C0], v22, v23);
  v25 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v24, v26, v25, v27, v28);

  if (objc_msgSend_isDateValue(v14, v29, v30, v31, v32))
  {
    if (!v19)
    {
      v19 = objc_msgSend_defaultDateForGrouping(self, v33, v34, v35, v36);
    }

    v37 = objc_msgSend_date(v14, v33, v34, v35, v36);
    v39 = objc_msgSend_ordinalityOfUnit_inUnit_forDate_(v24, v38, 2048, 4, v37);
    v43 = v19;
    v44 = v43;
    if (v39 - 1 <= 3)
    {
      v45 = objc_msgSend_components_fromDate_(v24, v40, 8, v43, v42);
      v50 = objc_msgSend_month(v45, v46, v47, v48, v49);
      do
      {
        v52 = (v50 + 2) / 3;
        ++v50;
      }

      while (v52 < v39);
      if (v52 > v39)
      {
        do
        {
          v53 = v50 / 3;
          --v50;
        }

        while (v53 > v39);
      }

      v44 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v51, 8, v50 - 1, v43, v24);
    }

    objc_msgSend_setDateValue_(cellCopy, v40, v44, v41, v42);
  }

  else
  {
    if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
    {
      objc_msgSend_clearValue(cellCopy, v54, v55, v56, v57);
    }

    else
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v54, v14, v56, v57);
    }

    v43 = v19;
  }
}

@end