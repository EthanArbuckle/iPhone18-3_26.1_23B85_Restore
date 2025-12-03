@interface TSCEDependencyTracker
- ($85CD2974BE96D4886BB301820D1C36C2)spillSizeForCell:(const TSCECellRef *)cell;
- (BOOL)cellHasDeepPrecedentInRange:(const TSCECellRef *)range cellRange:(const TSCERangeRef *)cellRange;
- (BOOL)cellHasPrecedents:(const TSCECellRef *)precedents;
- (BOOL)cellHasThisCellPrecedent:(const TSCECellRef *)precedent precedent:(const TSCECellRef *)a4;
- (BOOL)cellIsClean:(const TSCECellRef *)clean;
- (BOOL)cellIsInACycle:(const TSCECellRef *)cycle;
- (BOOL)cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs;
- (BOOL)containsAnyTable;
- (BOOL)dgl_canDeleteOwnerDependencies:(unsigned __int16)dependencies;
- (BOOL)dgl_cellHasDeepPrecedentInRange:(const TSCEInternalCellReference *)range cellRange:(const TSCEInternalRangeReference *)cellRange;
- (BOOL)dgl_cellIsClean:(const TSCECellToEvaluate *)clean;
- (BOOL)dgl_cellIsInACycle:(const TSCEInternalCellReference *)cycle;
- (BOOL)dgl_cellIsReadyForEvaluation:(const TSCECellToEvaluate *)evaluation;
- (BOOL)dgl_cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs;
- (BOOL)dgl_hasDirtyCellsIgnoringNRM:(BOOL)m;
- (BOOL)dgl_hasFormulaAt:(const TSCEInternalCellReference *)at;
- (BOOL)dgl_intCellIsClean:(const TSCEInternalCellReference *)clean;
- (BOOL)dgl_ownerIDIsRegistered:(unsigned __int16)registered;
- (BOOL)dgl_rangeRefIsDirty:(const TSCERangeRef *)dirty;
- (BOOL)endBatchingGroupCellDirtying;
- (BOOL)hasCalculatedPrecedents:(const TSCECellRef *)precedents;
- (BOOL)hasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal;
- (BOOL)hasCellRecordsToPrune;
- (BOOL)hasDateTimeVolatileFunctions;
- (BOOL)hasDirtyCellsIgnoringNRM:(BOOL)m;
- (BOOL)hasEmbiggenedCoords;
- (BOOL)hasFormulaAt:(const TSCECellRef *)at;
- (BOOL)hasFormulaCellsUsingNowTodayRandom;
- (BOOL)hasHorizontalSpills:(const TSKUIDStruct *)spills;
- (BOOL)hasRemoteDataFunctions;
- (BOOL)hasSpillingCellsIntersectingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d;
- (BOOL)hasSpillingErrorsForTable:(const TSKUIDStruct *)table;
- (BOOL)hasSpillsOverlappingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d outSpillRects:(void *)rects;
- (BOOL)hasVerticalSpills:(const TSKUIDStruct *)spills;
- (BOOL)intCellContainsAFormula:(const TSCEInternalCellReference *)formula;
- (BOOL)intCellIsClean:(const TSCEInternalCellReference *)clean;
- (BOOL)isBatchingGroupCellDirtying;
- (BOOL)markIntCellRefDirtyIfCellContainsAFormula:(const TSCEInternalCellReference *)formula;
- (BOOL)ownerIDIsRegistered:(unsigned __int16)registered;
- (BOOL)ownerUIDIsRegistered:(const TSKUIDStruct *)registered;
- (BOOL)rangeRefIsDirtyOrCurrentlyBeingEvaluated:(const TSCERangeRef *)evaluated;
- (BOOL)setSpillSize:(id)size forCell:(const TSCECellRef *)cell withOverlaps:(void *)overlaps;
- (BOOL)verifyAllOwnersAreKnown;
- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table;
- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner;
- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport:(SEL)import;
- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table;
- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner;
- (TSCECellCoordSet)spillOriginsInRange:(SEL)range;
- (TSCECellCoordSet)verticalSpillCells:(SEL)cells;
- (TSCECellRecord)dgl_findCellRecord:(const TSCECellRef *)record willModifyOnTile:(BOOL)tile;
- (TSCECellRecord)dgl_findCellRecordInternal:(const TSCEInternalCellReference *)internal willModifyOnTile:(BOOL)tile;
- (TSCECellRef)cellRefForInternalCellReference:(SEL)reference;
- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell inOwner:(TSUCellCoord)owner outAtRootCell:(const TSKUIDStruct *)rootCell;
- (TSCECellRefSet)formulaCellsAffectedByRewrite:(SEL)rewrite postMove:(id)move;
- (TSCEDependencyTracker)initWithCalcEngine:(id)engine;
- (TSCEDependencyTracker)initWithCalcEngine:(id)engine archive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCEInternalCellRefSet)allCellRefsInOwner:(SEL)owner;
- (TSCEInternalCellRefSet)allDirtyCellRefs;
- (TSCEInternalCellRefSet)cellDependentsOfCell:(SEL)cell;
- (TSCEInternalCellRefSet)cellsInOwnerDependentOnBoth:(SEL)both precedent1:(const TSKUIDStruct *)precedent1 precedent2:(const TSCECellRef *)precedent2;
- (TSCEInternalCellRefSet)corruptCellRefs;
- (TSCEInternalCellReference)currentCellBeingModified;
- (TSCEInternalCellReference)internalCellReferenceForCellRef:(const TSCECellRef *)ref;
- (TSCEInternalRangeReference)internalRangeReferenceForRangeRef:(SEL)ref;
- (TSCERangeRef)rangeRefForInternalRangeReference:(SEL)reference;
- (TSCEReferenceSet)dgl_precedentsOfCell:(SEL)cell;
- (TSCEReferenceSet)precedentsOfCell:(SEL)cell;
- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d;
- (id).cxx_construct;
- (id)dgl_cellDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_cellDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_errorsForOwnerID:(unsigned __int16)d;
- (id)dgl_errorsForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_ownerDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_ownerDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_ownerForOwnerID:(unsigned __int16)d;
- (id)dgl_rangeDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_rangeDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_spanningColumnDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_spanningColumnDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_spanningRowDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_spanningRowDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_wholeOwnerDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_wholeOwnerDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)errorForCell:(const TSCECellRef *)cell;
- (id)evaluationInfoForCell:(TSCECellToEvaluate *)cell outHasDynamicPrecedents:(BOOL *)precedents outIsInCycle:(BOOL *)cycle;
- (id)ownerForOwnerID:(unsigned __int16)d;
- (id)ownerForOwnerUID:(const TSKUIDStruct *)d;
- (id)rangeDependenciesForOwnerID:(unsigned __int16)d;
- (id)spanningColumnDependenciesForOwnerID:(unsigned __int16)d;
- (id)spanningRowDependenciesForOwnerID:(unsigned __int16)d;
- (id)warningsForCell:(const TSCECellRef *)cell;
- (int)dgl_registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int)dgl_registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int)registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int)registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int64_t)countNumberOfFormulaCells;
- (int64_t)dgl_numDirtyCells;
- (int64_t)errorTypeForCell:(const TSCECellRef *)cell;
- (int64_t)numDirtyCells;
- (unint64_t)cellDependMemoryUseEstimate;
- (unint64_t)dgl_computedNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents;
- (unint64_t)dgl_popNextLeavesIfAvailable:(void *)available numLeaves:(unint64_t)leaves leafQueue:(id)queue;
- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents;
- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record;
- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner;
- (unint64_t)numCellRecordsInOwnerUID:(const TSKUIDStruct *)d;
- (unint64_t)numDirtyCellsInOwnerID:(unsigned __int16)d;
- (unint64_t)numFormulaCellsInOwnerUID:(const TSKUIDStruct *)d;
- (unordered_set<unsigned)ownerIDsWithRecordsToPrune;
- (unsigned)dgl_ownerKindForOwnerID:(unsigned __int16)d;
- (unsigned)dgl_removePrecedentsFromOwnerInPhases:(unsigned __int16)phases startPhase:(unsigned int)phase startTime:(id)time timeout:(double)timeout;
- (unsigned)internalFormulaOwnerIDForFormulaOwnerUID:(const TSKUIDStruct *)d createIfMissing:(BOOL)missing;
- (unsigned)ownerKindForOwnerID:(unsigned __int16)d;
- (vector<TSCECellToEvaluate,)popNextLeaves:(TSCEDependencyTracker *)self;
- (vector<TSUCellCoord,)cellsReferencingRange:(TSCEDependencyTracker *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning;
- (vector<TSUCellCoord,)dgl_cellsWithRecordsInRange:(TSCEDependencyTracker *)self formulaCellsOnly:(SEL)only;
- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCEDependencyTracker *)self inOwnerUID:(SEL)d;
- (void)addSubOwnerAliasesForUpgrade:(id)upgrade;
- (void)assertDirtyPrecedentsCountConsistency;
- (void)assertForInconsistentDependGraph:(unsigned __int16)graph assertMessage:(id)message;
- (void)beginBatchingGroupCellDirtying;
- (void)beginSuppressingWillModifyCalls;
- (void)cellRefsReferringToGroupBy:(const TSKUIDStruct *)by outCellRefs:(void *)refs;
- (void)clearCellsCurrentlyBeingEvaluated;
- (void)clearErrorAndWarningsForCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner;
- (void)clearErrorAndWarningsForCells:(const void *)cells;
- (void)clearOwnerIDHavingRecordsToPrune:(unsigned __int16)prune;
- (void)clearSpillSizeForCell:(const TSCECellRef *)cell;
- (void)clearSpillSizesInRange:(const TSCERangeRef *)range;
- (void)dealloc;
- (void)detectAndRepairConsistencyViolations;
- (void)detectAndRepairDirtyCellsAreOnLeafQueue;
- (void)dgl_cellRefsForCycleCellsReferringToCell:(const TSCEInternalCellReference *)cell outCellRefs:(void *)refs;
- (void)dgl_clearCycleFlagsOnCellAndDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record;
- (void)dgl_deleteOwnerDependenciesIfPossible:(unsigned __int16)possible;
- (void)dgl_dirtyAllCellsInOwnerID:(unsigned __int16)d;
- (void)dgl_dirtyCellsInToDirtyQueue;
- (void)dgl_dirtyDateVolatileFunctions;
- (void)dgl_dirtyRandomVolatileFunctions;
- (void)dgl_dirtyTimeVolatileFunctions;
- (void)dgl_findAndRecordCyclesInDirtyCells;
- (void)dgl_formulaCellRefsReferringToOwnerUIDs:(const void *)ds outFormulaCells:(void *)cells;
- (void)dgl_formulaCellsAffectedByGeometryChangeToTable:(const TSKUIDStruct *)table outFormulaCells:(void *)cells;
- (void)dgl_formulaCellsReferencingUuidsInSpec:(id)spec outFormulaCells:(void *)cells;
- (void)dgl_loadCacheForCell:(TSCECellToEvaluate *)cell;
- (void)dgl_markCellDirty:(const TSCEInternalCellReference *)dirty;
- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty;
- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record;
- (void)dgl_markCellsDirtyTraversingDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record;
- (void)dgl_markDependentsDirty:(const TSCEInternalCellReference *)dirty;
- (void)dgl_markRandomVolatileFunctionsAsDirty;
- (void)dgl_pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation pushOnFront:(BOOL)front;
- (void)dgl_removeCellRefFromAllUuidMaps:(const TSCEInternalCellReference *)maps;
- (void)dgl_removeFormulaForOwnerID:(unsigned __int16)d cellCoord:(TSUCellCoord)coord;
- (void)dgl_replaceCellWithFormulaForOwner:(unsigned __int16)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)dgl_setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwnerID:(unsigned __int16)d;
- (void)dgl_unregisterOwner:(const TSKUIDStruct *)owner ownerID:(unsigned __int16)d;
- (void)dgl_updateGraphWithCleanReference:(TSCECellToEvaluate *)reference skipCycleCheck:(BOOL)check;
- (void)dgl_updateGraphWithCleanReference:(const TSCEInternalCellReference *)reference cellRecord:(TSCECellRecord *)record;
- (void)dirtyAllCellsInAllOwners;
- (void)dirtyAllCellsInOwnerID:(unsigned __int16)d;
- (void)dirtyAllCellsInOwnerUID:(const TSKUIDStruct *)d;
- (void)dirtyAllFunctions;
- (void)dirtyCellsWithErrors;
- (void)dirtyCellsWithSpillErrorsInTable:(const TSKUIDStruct *)table;
- (void)dirtyDateTimeVolatileFunctions;
- (void)dirtyDateVolatileFunctions;
- (void)dirtyForSpanningRowBug;
- (void)dirtyGeometryVolatileFunctions:(const TSKUIDStruct *)functions;
- (void)dirtyIndirectCalls;
- (void)dirtyRandomVolatileFunctions;
- (void)dirtyRemoteDataVolatileFunctions;
- (void)dirtyRemoteDataVolatileFunctionsForKeys:(id)keys;
- (void)dirtyTimeVolatileFunctions;
- (void)doneEvaluatingCell:(const TSCEInternalCellReference *)cell;
- (void)encodeToArchive:(void *)archive save31FormatAlso:(BOOL)also embiggenedFormatOnly:(BOOL)only archiver:(id)archiver;
- (void)endSuppressingWillModifyCalls;
- (void)enumerateFormulaOwnersUsingBlock:(id)block;
- (void)evaluationCompletedForCells:(void *)cells resultState:(TSCERecalculationState)state;
- (void)findAndRecordCyclesInDirtyCells;
- (void)flushInProgressDirtying;
- (void)formulaCellsForDeletedOwner:(id)owner outFormulaCells:(void *)cells;
- (void)formulaCellsForGroupNodeChanges:(id)changes outFormulaCells:(void *)cells;
- (void)formulaCellsForGroupNodeUIDReassignment:(id)reassignment outFormulaCells:(void *)cells;
- (void)formulaCellsForInsertRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForInsertedOwner:(id)owner outFormulaCells:(void *)cells;
- (void)formulaCellsForMergeCells:(id)cells outFormulaCells:(void *)formulaCells;
- (void)formulaCellsForMergeOriginMove:(id)move outFormulaCells:(void *)cells;
- (void)formulaCellsForMoveRegion:(id)region outFormulaCells:(void *)cells;
- (void)formulaCellsForMoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForPivotRuleChange:(id)change outFormulaCells:(void *)cells;
- (void)formulaCellsForRemoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForSortRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForTableTranspose:(id)transpose outFormulaCells:(void *)cells;
- (void)formulaCellsForTableUIDReassignment:(id)reassignment outFormulaCells:(void *)cells;
- (void)headerStateOfTableChanged:(const TSKUIDStruct *)changed changedRows:(BOOL)rows;
- (void)incrementalMarkCellRefDirty:(id)dirty;
- (void)loadCacheForCell:(TSCECellToEvaluate *)cell;
- (void)markEverythingClean;
- (void)markIntRangeRefAsDirty:(const TSCEInternalRangeReference *)dirty;
- (void)markOnlyDependentsDirty:(TSCEInternalCellReference)dirty;
- (void)markOwnerIDHavingRecordsToPrune:(unsigned __int16)prune;
- (void)markRandomVolatileFunctionsAsDirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)noteCorruptCellRef:(const TSCEInternalCellReference *)ref;
- (void)processPruningOfCellRecords:(double)records;
- (void)processUnregisteringOwners:(double)owners;
- (void)pushCellsForImmediateEvaluation:(const void *)evaluation pushOnFront:(BOOL)front;
- (void)pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation cellRecord:(TSCECellRecord *)record pushOnFront:(BOOL)front;
- (void)registerFormulaOwners;
- (void)removeAllPrecedentsFromOwner:(const TSKUIDStruct *)owner;
- (void)removeFormulaForOwner:(const TSKUIDStruct *)owner cellCoord:(TSUCellCoord)coord;
- (void)removeFormulasAt:(const void *)at;
- (void)removeFormulasFromRange:(TSCERangeRef *)range;
- (void)replaceCellWithFormulaForOwner:(const TSKUIDStruct *)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceRemoteDataKeysInterestedInForCell:(TSCECellRef *)cell specifierSet:(id)set;
- (void)resetAllExternalFormulasReferringToOwnerUIDs:(const void *)ds upgradeMinion:(id)minion;
- (void)resetCorruptCellRefs:(const void *)refs;
- (void)scheduleMarkCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)scheduleMarkIntCellRefAsDirty:(TSCEInternalCellReference)dirty;
- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner upgradeMinion:(id)minion;
- (void)setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner;
- (void)setHasCalculatedPrecedents:(const TSCECellRef *)precedents setting:(BOOL)setting;
- (void)setHasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal setting:(BOOL)setting;
- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableID:(unsigned __int16)d;
- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableUID:(const TSKUIDStruct *)d;
- (void)unregisterOwner:(const TSKUIDStruct *)owner;
- (void)updateNumberOfDirtyPrecedents:(const void *)precedents;
- (void)upgradeOneOwnerUID:(const TSKUIDStruct *)d updatedOwnerUID:(const TSKUIDStruct *)iD baseOwnerUID:(const TSKUIDStruct *)uID ownerKind:(unsigned __int16)kind;
- (void)upgradeToSubOwnerUIDForOwners:(id)owners;
- (void)willClose;
- (void)willModify;
- (void)wroteSpillingCells:(const void *)cells forTable:(const TSKUIDStruct *)table;
@end

@implementation TSCEDependencyTracker

- (TSCEDependencyTracker)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v19.receiver = self;
  v19.super_class = TSCEDependencyTracker;
  v5 = [(TSCEDependencyTracker *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v5->_calcEngine = engineCopy;
    v5->_registeredOwnerIdCache = -1;
    atomic_store(0, &v5->_numberOfFormulas);
    v5->_batchingGroupCellDirtyingLevel = 0;
    v5->_suppressWillModifyCallsLevel = 0;
    v5->_dependencyGraphLock._os_unfair_lock_opaque = 0;
    v5->_evaluationInProgressLock._os_unfair_lock_opaque = 0;
    v5->_corruptedCellRefsMutex._os_unfair_lock_opaque = 0;
    v5->_ownerIDsWithRecordsToPruneLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v7 = objc_opt_new();
    leafQueue = v6->_leafQueue;
    v6->_leafQueue = v7;

    v9 = objc_opt_new();
    cycleCalculationLeafQueue = v6->_cycleCalculationLeafQueue;
    v6->_cycleCalculationLeafQueue = v9;

    v6->_currentCellBeingModified.coordinate = 0x7FFF7FFFFFFFLL;
    *&v6->_currentCellBeingModified.tableID = 0xFFFF;
    v11 = [TSCEReferenceSetWrapper alloc];
    inited = objc_msgSend_initAsEmptyReferenceSet(v11, v12, v13, v14, v15);
    noPrecedents = v6->_noPrecedents;
    v6->_noPrecedents = inited;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_batchingGroupCellDirtyingLevel)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDependencyTracker dealloc]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 188, 0, "dirty cell batching must not be left on when a command finishes!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  sub_2211A89A4(&self->_formulaOwnerDependencies);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v19 = 0;
  noPrecedents = self->_noPrecedents;
  self->_noPrecedents = 0;

  sub_2212E22F0(&p_dependencyGraphLock);
  v17.receiver = self;
  v17.super_class = TSCEDependencyTracker;
  [(TSCEDependencyTracker *)&v17 dealloc];
}

- (unint64_t)cellDependMemoryUseEstimate
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v18) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_cellDependencies(next[3], v4, v5, v6, v7, lock, v18);
      v15 = v10;
      if (v10)
      {
        v9 += objc_msgSend_memoryUseEstimate(v10, v11, v12, v13, v14);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v18) = 0;
  sub_2212E22F0(&lock);
  return v9;
}

- (int)dgl_registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  dCopy = d;
  dCopy2 = d;
  ownerCopy = owner;
  v50 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v9, dCopy, v10, v11);
  v51 = v12;
  if (dCopy != 0xFFFF)
  {
    if (sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy2))
    {
      v53 = &dCopy2;
      v13 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy2)[3];
      if (objc_msgSend_isRegisteredWithCalcEngine(v13, v14, v15, v16, v17, v50, v51))
      {
        v22 = objc_msgSend_formulaOwner(v13, v18, v19, v20, v21);

        if (v22)
        {
          if (__C != -1)
          {
            sub_2216F7744();
          }

          v23 = 1002;
          goto LABEL_17;
        }
      }

      objc_msgSend_setOwnerIndex_(v13, v18, indexCopy, v20, v21);
      objc_msgSend_setFormulaOwner_(v13, v24, ownerCopy, v25, v26);
      if (objc_msgSend_evaluationMode(ownerCopy, v27, v28, v29, v30) == 1)
      {
        objc_msgSend_addMultiEvalOwnerID_(self->_leafQueue, v31, dCopy2, v32, v33);
      }

      objc_msgSend_setIsRegisteredWithCalcEngine_(v13, v31, 1, v32, v33);
      if (__C == -1)
      {
        v23 = 0;
LABEL_17:

        goto LABEL_18;
      }

      sub_2216F776C();
    }

    else
    {
      v34 = [TSCEFormulaOwnerDependencies alloc];
      v39 = objc_msgSend_context(self->_calcEngine, v35, v36, v37, v38, v50, v51);
      v13 = objc_msgSend_initWithContext_dependencyTracker_ownerID_ownerUID_owner_ownerIndex_(v34, v40, v39, self, dCopy2, &v50, ownerCopy, indexCopy);

      v53 = &dCopy2;
      v41 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy2);
      objc_storeStrong(v41 + 3, v13);
      if (objc_msgSend_evaluationMode(ownerCopy, v42, v43, v44, v45) == 1)
      {
        objc_msgSend_addMultiEvalOwnerID_(self->_leafQueue, v46, dCopy2, v47, v48);
      }

      objc_msgSend_setIsRegisteredWithCalcEngine_(v13, v46, ownerCopy != 0, v47, v48);
      if (__C == -1)
      {
        v23 = 0;
        goto LABEL_17;
      }

      sub_2216F7794();
    }

    v23 = 0;
    goto LABEL_17;
  }

  v23 = 1;
LABEL_18:

  return v23;
}

- (int)dgl_registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  ownerCopy = owner;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v9, d, 1, v10);
  LODWORD(indexCopy) = objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self, v12, IfMissing, ownerCopy, indexCopy);

  return indexCopy;
}

- (int)registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  dCopy = d;
  ownerCopy = owner;
  if (ownerCopy)
  {
    v9 = ownerCopy;
    v13 = TSUProtocolCast();
    if (!v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker registerOwnerID:owner:ownerIndex:]", v11, v12, &unk_283517618);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v17, v18);
      v20 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v15, v19, 281, 0, "registerOwner() doesn't accept class: %@ (not id<TSCEFormulaOwning>)", v20);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    }
  }

  else
  {
    v13 = 0;
  }

  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v27 = objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self, v26, dCopy, v13, indexCopy);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v30 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);

  return v27;
}

- (int)registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  ownerCopy = owner;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v9, d, 1, v10);
  LODWORD(indexCopy) = objc_msgSend_registerOwnerID_owner_ownerIndex_(self, v12, IfMissing, ownerCopy, indexCopy);

  return indexCopy;
}

- (BOOL)dgl_ownerIDIsRegistered:(unsigned __int16)registered
{
  if (registered == 0xFFFF)
  {
    return 0;
  }

  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, registered, v3, v4);
  if (!objc_msgSend_isRegisteredWithCalcEngine(v5, v6, v7, v8, v9))
  {
    return 0;
  }

  v14 = objc_msgSend_formulaOwner(v5, v10, v11, v12, v13);
  v15 = v14 != 0;

  return v15;
}

- (BOOL)ownerIDIsRegistered:(unsigned __int16)registered
{
  if (registered == 0xFFFF)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    registeredCopy = registered;
    LOBYTE(v5) = 1;
    if (self->_registeredOwnerIdCache != registered)
    {
      p_dependencyGraphLock = &self->_dependencyGraphLock;
      os_unfair_lock_lock(&self->_dependencyGraphLock);
      LOBYTE(v11) = 1;
      v5 = objc_msgSend_dgl_ownerIDIsRegistered_(self, v6, registeredCopy, v7, v8, p_dependencyGraphLock, v11);
      os_unfair_lock_unlock(&self->_dependencyGraphLock);
      LOBYTE(v11) = 0;
      if (v5)
      {
        self->_registeredOwnerIdCache = registeredCopy;
      }

      sub_2212E22F0(&p_dependencyGraphLock);
    }
  }

  return v5;
}

- (BOOL)ownerUIDIsRegistered:(const TSKUIDStruct *)registered
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, registered, 0, v3);

  return objc_msgSend_ownerIDIsRegistered_(self, v5, IfMissing, v7, v8);
}

- (id)dgl_ownerForOwnerID:(unsigned __int16)d
{
  if (d == 0xFFFF)
  {
    v11 = 0;
  }

  else
  {
    v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
    v11 = objc_msgSend_formulaOwner(v6, v7, v8, v9, v10);
  }

  return v11;
}

- (void)dgl_loadCacheForCell:(TSCECellToEvaluate *)cell
{
  if (cell->var2)
  {
    v5 = cell->var1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    tableID = cell->var0.tableID;
    if (tableID != 0xFFFF)
    {
      v8 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, tableID, v3, v4);
      cell->var1 = v8;
      v13 = objc_msgSend_cellDependencies(v8, v9, v10, v11, v12);
      if (v13)
      {
        v16 = v13;
        cell->var2 = objc_msgSend_findCellRecord_willModifyOnTile_(v13, v14, cell, 0, v15);
        v13 = v16;
      }
    }
  }
}

- (void)loadCacheForCell:(TSCECellToEvaluate *)cell
{
  if (cell->var2)
  {
    v3 = cell->var1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v10 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v11) = 1;
    objc_msgSend_dgl_loadCacheForCell_(self, v7, cell, v8, v9, v10, v11);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v11) = 0;
    sub_2212E22F0(&v10);
  }
}

- (id)evaluationInfoForCell:(TSCECellToEvaluate *)cell outHasDynamicPrecedents:(BOOL *)precedents outIsInCycle:(BOOL *)cycle
{
  var2 = cell->var2;
  if (var2 || (objc_msgSend_loadCacheForCell_(self, a2, cell, precedents, cycle), var2 = cell->var2, *precedents = 0, *cycle = 0, var2))
  {
    var6 = var2->var6;
    *precedents = (var6 & 8) != 0;
    *cycle = (var6 & 2) != 0;
  }

  v10 = objc_msgSend_formulaOwner(cell->var1, a2, cell, precedents, cycle);

  return v10;
}

- (void)evaluationCompletedForCells:(void *)cells resultState:(TSCERecalculationState)state
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  v38 = 0;
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  v8 = *(cells + 1);
  v9 = *(cells + 2);
  if (v8 != v9)
  {
    do
    {
      sub_2212DFDD0(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v8);
      v8 += 32;
    }

    while (v8 != v9);
    p_dependencyGraphLock = lock;
  }

  var0 = state.var0;
  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  os_unfair_lock_lock(p_dependencyGraphLock);
  v38 = 1;
  v13 = *(cells + 1);
  v14 = *(cells + 2);
  v15 = v13 == v14;
  if ((var0 & 0x80) != 0)
  {
    while (!v15)
    {
      objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v11, v13, 0, v12);
      v13 += 32;
      v15 = v13 == v14;
    }
  }

  else
  {
    for (; v13 != v14; v13 += 32)
    {
      nullsub_75(v13);
      v35 = *v13;
      v36 = *(v13 + 8);
      objc_msgSend_dgl_loadCacheForCell_(self, v16, v13, v17, v18);
      v21 = *(v13 + 24);
      if (!v21 || *(v21 + 16) <= 1uLL)
      {
        objc_msgSend_dgl_updateGraphWithCleanReference_skipCycleCheck_(self, v19, v13, 1, v20);
        if (v21)
        {
          *(v21 + 38) = *(v21 + 38) & 0xFFF7 | (8 * (var0 > 0x3F));
        }

        if ((var0 & 0x20) != 0)
        {
          end = self->_modifiedCellsToDirtyQueue.__end_;
          cap = self->_modifiedCellsToDirtyQueue.__cap_;
          if (end >= cap)
          {
            begin = self->_modifiedCellsToDirtyQueue.__begin_;
            v26 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 2);
            v27 = v26 + 1;
            if (v26 + 1 > 0x1555555555555555)
            {
              sub_22107C148();
            }

            v28 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 2);
            if (2 * v28 > v27)
            {
              v27 = 2 * v28;
            }

            if (v28 >= 0xAAAAAAAAAAAAAAALL)
            {
              v29 = 0x1555555555555555;
            }

            else
            {
              v29 = v27;
            }

            if (v29)
            {
              sub_221122A3C(&self->_modifiedCellsToDirtyQueue, v29);
            }

            v30 = 12 * v26;
            *v30 = v35;
            *(v30 + 8) = v36;
            v24 = (12 * v26 + 12);
            v31 = self->_modifiedCellsToDirtyQueue.__begin_;
            v32 = (self->_modifiedCellsToDirtyQueue.__end_ - v31);
            v33 = (12 * v26 - v32);
            memcpy((v30 - v32), v31, v32);
            v34 = self->_modifiedCellsToDirtyQueue.__begin_;
            self->_modifiedCellsToDirtyQueue.__begin_ = v33;
            self->_modifiedCellsToDirtyQueue.__end_ = v24;
            self->_modifiedCellsToDirtyQueue.__cap_ = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            end->coordinate = v35;
            *&end->tableID = v36;
            v24 = end + 1;
          }

          self->_modifiedCellsToDirtyQueue.__end_ = v24;
        }
      }
    }
  }

  os_unfair_lock_unlock(lock);
  v38 = 0;
  sub_2212E22F0(&lock);
}

- (id)ownerForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  v9 = objc_msgSend_dgl_ownerForOwnerID_(self, v6, dCopy, v7, v8, v11, v12);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&v11);

  return v9;
}

- (id)ownerForOwnerUID:(const TSKUIDStruct *)d
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, d, 0, v3);

  return MEMORY[0x2821F9670](self, sel_ownerForOwnerID_, IfMissing, v6, v7);
}

- (BOOL)dgl_canDeleteOwnerDependencies:(unsigned __int16)dependencies
{
  if (self->_duringSubOwnerUIDUpgrade)
  {
    return 1;
  }

  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, dependencies, v3, v4);
  if (!v5)
  {
    return 1;
  }

  v10 = v5;
  v15 = objc_msgSend_formulaOwner(v5, v6, v7, v8, v9);
  if (v15 || (objc_msgSend_isRegisteredWithCalcEngine(v10, v11, v12, v13, v14) & 1) != 0)
  {
    isEmpty = 0;
  }

  else
  {
    v22 = objc_msgSend_cellDependencies(v10, v16, v17, v18, v19);
    if (objc_msgSend_numCellRecords(v22, v23, v24, v25, v26))
    {
      isEmpty = 0;
    }

    else
    {
      v31 = objc_msgSend_rangeDependencies(v10, v27, v28, v29, v30);
      if (objc_msgSend_isEmpty(v31, v32, v33, v34, v35))
      {
        v40 = objc_msgSend_spanningRowDependencies(v10, v36, v37, v38, v39);
        if (objc_msgSend_isEmpty(v40, v41, v42, v43, v44))
        {
          v49 = objc_msgSend_spanningColumnDependencies(v10, v45, v46, v47, v48);
          if (objc_msgSend_isEmpty(v49, v50, v51, v52, v53))
          {
            v58 = objc_msgSend_volatileDependencies(v10, v54, v55, v56, v57);
            isEmpty = objc_msgSend_isEmpty(v58, v59, v60, v61, v62);
          }

          else
          {
            isEmpty = 0;
          }
        }

        else
        {
          isEmpty = 0;
        }
      }

      else
      {
        isEmpty = 0;
      }
    }
  }

  return isEmpty;
}

- (void)dgl_deleteOwnerDependenciesIfPossible:(unsigned __int16)possible
{
  possibleCopy = possible;
  possibleCopy2 = possible;
  if (objc_msgSend_dgl_canDeleteOwnerDependencies_(self, a2, possible, v3, v4))
  {
    objc_msgSend_removeMultiEvalOwnerID_(self->_leafQueue, v7, possibleCopy, v8, v9);
    sub_221377038(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &possibleCopy2);
    sub_221260148(&self->_formulaOwnerIDMap, possibleCopy2);
    if (__C != -1)
    {
      sub_2216F77BC();
    }
  }
}

- (void)dgl_dirtyAllCellsInOwnerID:(unsigned __int16)d
{
  dCopy = d;
  if (d != 0xFFFF)
  {
    v4 = sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy);
    if (v4)
    {
      v9 = v4[3];
      v10 = objc_msgSend_cellDependencies(v9, v5, v6, v7, v8);

      if (v10)
      {
        v15 = objc_msgSend_cellDependencies(v9, v11, v12, v13, v14);
        objc_msgSend_dirtyAllCells(v15, v16, v17, v18, v19);
      }

      v20 = objc_msgSend_rangeDependencies(v9, v11, v12, v13, v14);

      if (v20)
      {
        v25 = objc_msgSend_rangeDependencies(v9, v21, v22, v23, v24);
        objc_msgSend_dirtyAllReferencingFormulas(v25, v26, v27, v28, v29);
      }

      v30 = objc_msgSend_spanningRowDependencies(v9, v21, v22, v23, v24);

      if (v30)
      {
        v35 = objc_msgSend_spanningRowDependencies(v9, v31, v32, v33, v34);
        objc_msgSend_dirtyAllReferencingFormulas(v35, v36, v37, v38, v39);
      }

      v40 = objc_msgSend_spanningColumnDependencies(v9, v31, v32, v33, v34);

      if (v40)
      {
        v45 = objc_msgSend_spanningColumnDependencies(v9, v41, v42, v43, v44);
        objc_msgSend_dirtyAllReferencingFormulas(v45, v46, v47, v48, v49);
      }

      if (objc_msgSend_ownerIndex(v9, v41, v42, v43, v44) == 1)
      {
        v63 = objc_msgSend_formulaOwnerUid(v9, v50, v51, v52, v53);
        v64 = v54;
        objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v54, &v63, v55, v56);
        v63 = objc_msgSend_internalCellReferenceForCellRef_(self, v57, v65, v58, v59);
        LODWORD(v64) = v60;
        objc_msgSend_dgl_markCellRefAsDirty_(self, v60, &v63, v61, v62);
      }
    }
  }
}

- (void)dirtyAllCellsInOwnerID:(unsigned __int16)d
{
  if (d != 0xFFFF)
  {
    dCopy = d;
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v9 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v10) = 1;
    objc_msgSend_dgl_dirtyAllCellsInOwnerID_(self, v6, dCopy, v7, v8, v9, v10);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v10) = 0;
    sub_2212E22F0(&v9);
  }
}

- (void)dirtyAllCellsInOwnerUID:(const TSKUIDStruct *)d
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, d, 1, v3);

  MEMORY[0x2821F9670](self, sel_dirtyAllCellsInOwnerID_, IfMissing, v6, v7);
}

- (TSCEInternalCellRefSet)allCellRefsInOwner:(SEL)owner
{
  v26 = a4;
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  if (a4 != 0xFFFF)
  {
    selfCopy = self;
    lock = &self->_coordsForOwnerId.__table_.__bucket_list_.__deleter_;
    os_unfair_lock_lock(&self->_coordsForOwnerId.__table_.__bucket_list_.__deleter_);
    v25 = 1;
    if (sub_2210C3024(&selfCopy[6]._coordsForOwnerId.__table_.__size_, &v26))
    {
      *&v22[0] = &v26;
      v6 = sub_221376DD0(&selfCopy[6]._coordsForOwnerId.__table_.__size_, &v26)[3];
      v11 = objc_msgSend_cellDependencies(v6, v7, v8, v9, v10, &v26);

      if (v11)
      {
        v16 = objc_msgSend_cellDependencies(v6, v12, v13, v14, v15);
        v21 = v16;
        if (v16)
        {
          objc_msgSend_allCellRefs(v16, v17, v18, v19, v20);
        }

        else
        {
          v23 = 0;
          memset(v22, 0, sizeof(v22));
        }

        sub_2212DFCA0(retstr, v22);
        sub_221122744(v22);
      }
    }

    os_unfair_lock_unlock(lock);
    v25 = 0;
    return sub_2212E22F0(&lock);
  }

  return self;
}

- (TSCEInternalCellRefSet)allDirtyCellRefs
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v24 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v25 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v11 = objc_msgSend_cellDependencies(next[3], v6, v7, v8, v9);
      v16 = v11;
      if (v11)
      {
        objc_msgSend_dirtyCells(v11, v12, v13, v14, v15);
        v21 = objc_msgSend_internalOwnerID(v16, v17, v18, v19, v20);
        sub_2212DFD38(retstr, v21, &v23);
        sub_22107C860(&v23._rowsPerColumn, v23._rowsPerColumn.__tree_.__end_node_.__left_);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v24;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v25 = 0;
  return sub_2212E22F0(&v24);
}

- (void)dirtyAllCellsInAllOwners
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  for (i = &self->_formulaOwnerDependencies.__table_.__first_node_; ; objc_msgSend_dirtyAllCellsInOwnerId_(v6, v7, LOWORD(i[2].__next_), v8, v9, lock, v12))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(lock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&lock);
}

- (void)assertForInconsistentDependGraph:(unsigned __int16)graph assertMessage:(id)message
{
  graphCopy = graph;
  v22 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, graph, message, v4);
  shouldCleanGraphForConsistencyViolation = objc_msgSend_shouldCleanGraphForConsistencyViolation(v22, v7, v8, v9, v10);
  if (((shouldCleanGraphForConsistencyViolation | objc_msgSend_shouldPerformDetectAndRepairConsistencyViolations(v22, v12, v13, v14, v15)) & 1) == 0 && (objc_msgSend_ownerIdIsUnregistering_(self, v16, graphCopy, v17, v18) & 1) == 0)
  {
    objc_msgSend_setShouldPerformDetectAndRepairConsistencyViolations_(v22, v19, 1, v20, v21);
  }
}

- (void)detectAndRepairConsistencyViolations
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  if ((objc_msgSend_shouldCleanGraphForConsistencyViolation(v6, v7, v8, v9, v10) & 1) == 0)
  {
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v28) = 1;
    next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
    if (next)
    {
      while (1)
      {
        v16 = next[3];
        v17 = objc_msgSend_cellDependencies(v16, v11, v12, v13, v14, lock, v28);

        if (v17)
        {
          v18 = objc_msgSend_cellDependencies(v16, v11, v12, v13, v14);
          v22 = objc_msgSend_dirtyPrecedentCountsAreConsistent_(v18, v19, 0, v20, v21);

          if ((v22 & 1) == 0)
          {
            break;
          }
        }

        next = *next;
        if (!next)
        {
          goto LABEL_8;
        }
      }

      objc_msgSend_setShouldCleanGraphForConsistencyViolation_(v6, v11, 1, v13, v14);
      objc_msgSend_resetNumberOfFormulas(self, v23, v24, v25, v26);
    }

LABEL_8:
    os_unfair_lock_unlock(lock);
    LOBYTE(v28) = 0;
    sub_2212E22F0(&lock);
  }
}

- (void)unregisterOwner:(const TSKUIDStruct *)owner
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, owner, 0, v3);
  self->_registeredOwnerIdCache = -1;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 1;
  objc_msgSend_dgl_unregisterOwner_ownerID_(self, v7, owner, IfMissing, v8, &self->_dependencyGraphLock, v10);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 0;
  sub_2212E22F0(&v9);
}

- (void)dgl_unregisterOwner:(const TSKUIDStruct *)owner ownerID:(unsigned __int16)d
{
  dCopy = d;
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, d, v4);
  v12 = v7;
  if (v7 && objc_msgSend_isRegisteredWithCalcEngine(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_tableResolverForTableID_(self->_calcEngine, v13, dCopy, v14, v15);
    v21 = v16;
    v68 = 0uLL;
    if (v16)
    {
      v68.i64[0] = objc_msgSend_tableRangeCoordinate(v16, v17, v18, v19, v20);
      v68.i64[1] = v22;
      v67[0] = objc_msgSend_bodyRangeCoordinate(v21, v22, v23, v24, v25);
    }

    else
    {
      v26 = 0x7FFF7FFFFFFFLL;
      v68 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v67[0] = 0x7FFF7FFFFFFFLL;
    }

    v67[1] = v26;
    v27 = objc_msgSend_spanningRowDependencies(v12, v26, v18, v19, v20);

    if (v27)
    {
      v32 = objc_msgSend_spanningRowDependencies(v12, v28, v29, v30, v31);
      objc_msgSend_setTableRangesForTable_bodyRange_(v32, v33, &v68, v67, v34);
    }

    v35 = objc_msgSend_spanningColumnDependencies(v12, v28, v29, v30, v31);

    if (v35)
    {
      v40 = objc_msgSend_spanningColumnDependencies(v12, v36, v37, v38, v39);
      objc_msgSend_setTableRangesForTable_bodyRange_(v40, v41, &v68, v67, v42);
    }

    v43 = objc_msgSend_referencesToDirty(self->_calcEngine, v36, v37, v38, v39);
    v48 = objc_msgSend_formulaOwnerId(v12, v44, v45, v46, v47);
    objc_msgSend_dirtyAllCellsInOwnerId_(v43, v49, v48, v50, v51);

    v56 = objc_msgSend_formulaOwnerUid(v12, v52, v53, v54, v55);
    v58 = sub_22125FECC(&self->_formulaOwnerIDMap._lock, v56, v57);
    self->_hasOwnerIdsToUnregister = 1;
    begin = self->_ownerIdsToUnregister.__begin_;
    LOWORD(v66) = v58;
    HIDWORD(v66) = 0;
    sub_221364720(&self->_ownerIdsToUnregister.__begin_, begin, &v66);
    objc_msgSend_setFormulaOwner_(v12, v60, 0, v61, v62);
    objc_msgSend_setIsRegisteredWithCalcEngine_(v12, v63, 0, v64, v65);
  }
}

- (void)willClose
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 1;
  for (i = &self->_formulaOwnerDependencies.__table_.__first_node_; ; objc_msgSend_willClose(i[3].__next_, v3, v4, v5, v6, lock, v10))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  sub_2211A89A4(&self->_formulaOwnerDependencies);
  os_unfair_lock_unlock(lock);
  LOBYTE(v10) = 0;
  noPrecedents = self->_noPrecedents;
  self->_noPrecedents = 0;

  self->_calcEngine = 0;
  sub_2212E22F0(&lock);
}

- (unsigned)dgl_ownerKindForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  v6 = objc_msgSend_dgl_ownerIDIsRegistered_(self, a2, d, v3, v4);
  if (v6)
  {
    v14 = &dCopy;
    v7 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy);
    LOWORD(v6) = objc_msgSend_ownerIndex(v7[3], v8, v9, v10, v11);
  }

  return v6;
}

- (unsigned)ownerKindForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  LOWORD(dCopy) = objc_msgSend_dgl_ownerKindForOwnerID_(self, v6, dCopy, v7, v8, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);
  return dCopy;
}

- (void)enumerateFormulaOwnersUsingBlock:(id)block
{
  blockCopy = block;
  v24 = 0;
  v21 = 0u;
  v22 = 0u;
  max_load_factor = 1.0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v19 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  if (&v21 != &self->_formulaOwnerDependencies)
  {
    max_load_factor = self->_formulaOwnerDependencies.__table_.__max_load_factor_;
    sub_2213771D4(&v21, self->_formulaOwnerDependencies.__table_.__first_node_.__next_, 0);
    p_dependencyGraphLock = v19;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v20 = 0;
  for (i = v22; i; i = *i)
  {
    v11 = i[3];
    v12 = objc_msgSend_formulaOwnerUid(v11, v6, v7, v8, v9);
    v17 = objc_msgSend_formulaOwner(v11, v13, v14, v15, v16, v12, v13);
    blockCopy[2](blockCopy, &v18, v17, &v24);

    if (v24)
    {
      break;
    }
  }

  sub_2212E22F0(&v19);
  sub_221087B80(&v21);
}

- (void)dgl_removeCellRefFromAllUuidMaps:(const TSCEInternalCellReference *)maps
{
  v7 = objc_msgSend_uuidReferenceMap(self->_calcEngine, a2, maps, v3, v4);
  objc_msgSend_removeCellRef_(v7, v8, maps, v9, v10);

  v15 = objc_msgSend_groupNodeReferenceMap(self->_calcEngine, v11, v12, v13, v14);
  objc_msgSend_removeCellRef_(v15, v16, maps, v17, v18);

  v22 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v19, maps->tableID, v20, v21);
  if (v22)
  {
    v27 = objc_msgSend_uuidReferences(v22, v23, v24, v25, v26);

    if (v27)
    {

      MEMORY[0x2821F9670](v27, sel_removeCellCoord_, maps, v28, v29);
    }
  }
}

- (void)dgl_removeFormulaForOwnerID:(unsigned __int16)d cellCoord:(TSUCellCoord)coord
{
  dCopy = d;
  coordCopy = coord;
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, *&coord, v4);
  v12 = objc_msgSend_cellDependencies(v7, v8, v9, v10, v11);
  v15 = v12;
  if (v12)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v12, v13, &coordCopy, 1, v14);
    if (CellRecord_willModifyOnTile && (*(CellRecord_willModifyOnTile + 38) & 4) != 0)
    {
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v70, 0, 1);
      v21 = coordCopy;
      noPrecedents = self->_noPrecedents;
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v69, &v70);
      objc_msgSend_dgl_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(self, v23, dCopy, v21, noPrecedents, &v69);

      atomic_fetch_add(&self->_numberOfFormulas, 0xFFFFFFFFFFFFFFFFLL);
      v28 = objc_msgSend_findCellRecord_willModifyOnTile_(v15, v24, &coordCopy, 1, v25);
      if (v28)
      {
        objc_msgSend_setContainsFormula_containsFormula_(v15, v26, v28, 0, v27);
        if ((sub_2215C5AB8(v28) & 1) == 0 && !sub_2215C5AF0(v28))
        {
          objc_msgSend_markCellRecordForPruning_(v15, v29, &coordCopy, v30, v31);
        }
      }
    }

    v32 = objc_msgSend_errors(v7, v17, v18, v19, v20);
    v37 = v32;
    if (v32)
    {
      objc_msgSend_clearErrorAndWarningsForCell_(v32, v33, &coordCopy, v35, v36);
    }

    v38 = objc_msgSend_spillSizes(v7, v33, v34, v35, v36);
    v42 = v38;
    if (v38)
    {
      objc_msgSend_clearSpillSizeForCell_(v38, v39, &coordCopy, v40, v41);
    }

    v67 = *&coordCopy & 0xFFFFFFFFFFFFLL;
    v68 = dCopy;
    objc_msgSend_dgl_removeCellRefFromAllUuidMaps_(self, v39, &v67, v40, v41);
    v47 = objc_msgSend_referencesToDirty(self->_calcEngine, v43, v44, v45, v46);
    objc_msgSend_dirtyInternalCellRef_(v47, v48, &v67, v49, v50);

    if (objc_msgSend_ownerIndex(v7, v51, v52, v53, v54) == 1)
    {
      calcEngine = self->_calcEngine;
      v66[0] = objc_msgSend_formulaOwnerUid(v7, v55, v56, v57, v58);
      v66[1] = v60;
      objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v60, v66, v61, v62);
      objc_msgSend_markCellRefAsDirty_(calcEngine, v63, &v70, v64, v65);
    }
  }
}

- (void)removeFormulaForOwner:(const TSKUIDStruct *)owner cellCoord:(TSUCellCoord)coord
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, owner, 1, v4);
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  objc_msgSend_dgl_removeFormulaForOwnerID_cellCoord_(self, v8, IfMissing, *&coord, v9, &self->_dependencyGraphLock, v11);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);
}

- (void)removeFormulasFromRange:(TSCERangeRef *)range
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  objc_msgSend_dgl_cellsWithRecordsInRange_formulaCellsOnly_(self, v5, range, 1, v6);
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v7, &range->_tableUID, 1, v8);
  v12 = __p;
  if (__p != v15)
  {
    v13 = IfMissing;
    do
    {
      objc_msgSend_dgl_removeFormulaForOwnerID_cellCoord_(self, v10, v13, *v12++, v11);
    }

    while (v12 != v15);
  }

  os_unfair_lock_unlock(lock);
  v17 = 0;
  if (__p)
  {
    operator delete(__p);
  }

  sub_2212E22F0(&lock);
}

- (void)removeFormulasAt:(const void *)at
{
  if ((TSCECellRefSet::isEmpty(at) & 1) == 0)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v14 = 1;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2050000000;
    v12[3] = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_22136526C;
    v10[4] = sub_22136527C;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_22136526C;
    v8[4] = sub_22136527C;
    v9 = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = sub_22136526C;
    v6[4] = sub_22136527C;
    v7 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_221365284;
    v5[3] = &unk_278463190;
    v5[4] = self;
    v5[5] = v12;
    v5[6] = v10;
    v5[7] = v8;
    v5[8] = v6;
    TSCECellRefSet::enumerateOwnersUsingBlock(at, v5);
    _Block_object_dispose(v6, 8);

    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v10, 8);

    _Block_object_dispose(v12, 8);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    v14 = 0;
    sub_2212E22F0(&p_dependencyGraphLock);
  }
}

- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCEDependencyTracker *)self inOwnerUID:(SEL)d
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_221365718;
  v26 = sub_22136573C;
  v27 = &unk_22188E88F;
  v29 = 0;
  v30 = 0;
  __p = 0;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, d, a5, 1, v5);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v20 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v21 = 1;
  v14 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v11, IfMissing, v12, v13);
  v16 = v14;
  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_221365754;
    v19[3] = &unk_27845F2B8;
    v19[4] = &v22;
    objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(v14, v15, a4, 1, 0, v19);
    p_dependencyGraphLock = v20;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v21 = 0;
  v17 = v23;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211230D4(retstr, v17[6], v17[7], (v17[7] - v17[6]) >> 3);

  sub_2212E22F0(&v20);
  _Block_object_dispose(&v22, 8);
  result = __p;
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner upgradeMinion:(id)minion
{
  minionCopy = minion;
  if (minionCopy)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v21 = 1;
    v10 = objc_msgSend_dgl_spanningRowDependenciesForOwnerUID_(self, v7, owner, v8, v9);
    v17 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerUID_(self, v11, owner, v12, v13);
    if (v10)
    {
      objc_msgSend_allFormulaCells_(v10, v14, &v22, v15, v16);
    }

    if (v17)
    {
      objc_msgSend_allFormulaCells_(v17, v14, &v22, v15, v16);
    }

    os_unfair_lock_unlock(lock);
    v21 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2213659B0;
    v18[3] = &unk_27845FBD8;
    v19 = minionCopy;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v22, v18);

    sub_2212E22F0(&lock);
    sub_22107C800(&v22, v23[0]);
  }
}

- (void)resetAllExternalFormulasReferringToOwnerUIDs:(const void *)ds upgradeMinion:(id)minion
{
  minionCopy = minion;
  if (minionCopy)
  {
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v10, ds, &v27, v11);
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    v26 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_221365B84;
    v23[3] = &unk_27845FBD8;
    v24 = minionCopy;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v27, v23);

    sub_2212E22F0(&p_dependencyGraphLock);
    sub_22107C800(&v27, v28[0]);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEDependencyTracker resetAllExternalFormulasReferringToOwnerUIDs:upgradeMinion:]", v7, v8);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1006, 0, "Need upgradeMinion for resetAllExternalFormulasReferringToOwnerUIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }
}

- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x5812000000;
  v21 = sub_221365D30;
  v22 = sub_221365D3C;
  v23 = &unk_22188E88F;
  v27[0] = 0;
  v27[1] = 0;
  v24 = 0;
  v25 = 0;
  v26 = v27;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v16 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  v11 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v8, a4, v9, v10);
  v13 = v11;
  if (v11)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221365D48;
    v15[3] = &unk_27845F368;
    v15[4] = &v18;
    objc_msgSend_applyBlockToRecords_doWillModify_block_(v11, v12, 1, 0, v15);
    p_dependencyGraphLock = v16;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v19 + 6));

  sub_2212E22F0(&v16);
  _Block_object_dispose(&v18, 8);
  sub_22107C860(&v26, v27[0]);
  return result;
}

- (void)dgl_setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwnerID:(unsigned __int16)d
{
  dCopy = d;
  cellCopy = cell;
  errorCopy = error;
  warningsCopy = warnings;
  v14 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v11, dCopy, v12, v13);
  v23 = objc_msgSend_errors(v14, v15, v16, v17, v18);
  if (v23)
  {
    if (!errorCopy || (objc_msgSend_isAbortedError(errorCopy, v19, v20, v21, v22) & 1) != 0)
    {
      goto LABEL_10;
    }

    v25 = objc_msgSend_errorType(errorCopy, v19, v24, v21, v22);
    if (objc_msgSend_isErrorReferenceError(errorCopy, v26, v27, v28, v29) || objc_msgSend_isUnsupportedFunctionError(errorCopy, v19, v30, v21, v22))
    {
      objc_msgSend_rangeRef(errorCopy, v19, v30, v21, v22);
      v31 = v41;
      objc_msgSend_rangeRef(errorCopy, v32, v33, v34, v35);
      v43 = v31;
      v44 = v40;
      v41 = objc_msgSend_internalCellReferenceForCellRef_(self, v36, &v43, v37, v38);
      v42 = v39;
      objc_msgSend_replaceErrorForCell_error_errDueToCellRef_(v23, v39, &cellCopy, errorCopy, &v41);
      if (!v25)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!v25)
      {
LABEL_10:
        objc_msgSend_clearErrorAndWarningsForCell_(v23, v19, &cellCopy, v21, v22);
        goto LABEL_11;
      }

      v41 = 0x7FFF7FFFFFFFLL;
      v42 = 0xFFFF;
      objc_msgSend_replaceErrorForCell_error_errDueToCellRef_(v23, v19, &cellCopy, errorCopy, &v41);
    }

LABEL_11:
    objc_msgSend_setWarnings_forCell_(v23, v19, warningsCopy, &cellCopy, v22);
  }
}

- (void)setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner
{
  errorCopy = error;
  warningsCopy = warnings;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v12, owner, 1, v13);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  objc_msgSend_dgl_setError_andWarnings_forCell_inOwnerID_(self, v15, errorCopy, warningsCopy, *&cell, IfMissing);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v22 = 0;
  calcEngine = self->_calcEngine;
  cellCopy = cell;
  v20 = *owner;
  objc_msgSend_replaceSpillError_ifCachedforSpillingOriginCellRef_(calcEngine, v17, errorCopy, &cellCopy, v18);
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (int64_t)errorTypeForCell:(const TSCECellRef *)cell
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  tableUID = cell->_tableUID;
  v8 = objc_msgSend_dgl_errorsForOwnerUID_(self, v5, &tableUID, v6, v7);
  v12 = v8;
  if (v8 && (tableUID._lower = cell->coordinate, (v13 = objc_msgSend_errorCellForCell_(v8, v9, &tableUID, v10, v11)) != 0) && (v18 = *v13) != 0)
  {
    v19 = objc_msgSend_errorType(v18, v14, v15, v16, v17);
  }

  else
  {
    v19 = 0;
  }

  os_unfair_lock_unlock(lock);
  v23 = 0;

  sub_2212E22F0(&lock);
  return v19;
}

- (id)errorForCell:(const TSCECellRef *)cell
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  tableUID = cell->_tableUID;
  v8 = objc_msgSend_dgl_errorsForOwnerUID_(self, v5, &tableUID, v6, v7);
  v12 = v8;
  if (v8 && (tableUID._lower = cell->coordinate, (v13 = objc_msgSend_errorCellForCell_(v8, v9, &tableUID, v10, v11)) != 0))
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(lock);
  v18 = 0;

  sub_2212E22F0(&lock);

  return v14;
}

- (void)clearErrorAndWarningsForCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, owner, 1, v4);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  objc_msgSend_dgl_setError_andWarnings_forCell_inOwnerID_(self, v9, 0, 0, *&cell, IfMissing);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v16 = 0;
  calcEngine = self->_calcEngine;
  cellCopy = cell;
  v14 = *owner;
  objc_msgSend_replaceSpillError_ifCachedforSpillingOriginCellRef_(calcEngine, v11, 0, &cellCopy, v12);
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)clearErrorAndWarningsForCells:(const void *)cells
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v12 = 1;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = -1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x4012000000;
  v8[3] = sub_2213664A0;
  v8[4] = nullsub_55;
  v8[5] = &unk_22188E88F;
  v8[6] = 0;
  v8[7] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2213664B0;
  v7[3] = &unk_2784631B8;
  v7[5] = v8;
  v7[6] = v9;
  v7[4] = self;
  TSCECellRefSet::enumerateCellRefsUsingBlock(cells, v7);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221366548;
  v6[3] = &unk_27845FBD8;
  v6[4] = self;
  TSCECellRefSet::enumerateCellRefsUsingBlock(cells, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  sub_2212E22F0(&v11);
}

- (id)warningsForCell:(const TSCECellRef *)cell
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  tableUID = cell->_tableUID;
  v8 = objc_msgSend_dgl_errorsForOwnerUID_(self, v5, &tableUID, v6, v7);
  v12 = v8;
  if (v8 && (tableUID._lower = cell->coordinate, (v13 = objc_msgSend_errorCellForCell_(v8, v9, &tableUID, v10, v11)) != 0))
  {
    v14 = *(v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(lock);
  v18 = 0;

  sub_2212E22F0(&lock);

  return v14;
}

- (BOOL)setSpillSize:(id)size forCell:(const TSCECellRef *)cell withOverlaps:(void *)overlaps
{
  v40.origin = cell->coordinate;
  v40.size = size;
  if (TSUCellRect::isSingleCell(&v40))
  {
    objc_msgSend_clearSpillSizeForCell_(self, v9, cell, v10, v11);
    return 1;
  }

  else
  {
    v37[0] = cell->_tableUID;
    v13 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, v9, v37, v10, v11);
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v39 = 1;
    v17 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v14, v13, v15, v16);
    v22 = objc_msgSend_spillSizes(v17, v18, v19, v20, v21);
    v25 = v22;
    if (v22 && (objc_msgSend_hasSpillsOverlappingRange_outSpillRects_(v22, v23, &v40, overlaps, v24) & 1) == 0)
    {
      *&v37[0] = cell->coordinate;
      objc_msgSend_replaceSpillSizeForCell_spillSize_(v25, v26, v37, *&size, v27);
      os_unfair_lock_unlock(lock);
      v39 = 0;
      calcEngine = self->_calcEngine;
      tableUID = cell->_tableUID;
      coordinate = cell->coordinate;
      objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v29, &tableUID, &coordinate, v30);
      objc_msgSend_markCellRefAsDirty_(calcEngine, v31, v37, v32, v33);
      v12 = 1;
    }

    else
    {
      os_unfair_lock_unlock(lock);
      v12 = 0;
      v39 = 0;
    }

    sub_2212E22F0(&lock);
  }

  return v12;
}

- (BOOL)hasSpillsOverlappingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d outSpillRects:(void *)rects
{
  v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, d, rects);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v12 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, v8, v10, v11);
  v17 = objc_msgSend_spillSizes(v12, v13, v14, v15, v16);
  v20 = v17;
  if (v17)
  {
    hasSpillsOverlappingRange_outSpillRects = objc_msgSend_hasSpillsOverlappingRange_outSpillRects_(v17, v18, range, rects, v19, lock);
  }

  else
  {
    hasSpillsOverlappingRange_outSpillRects = 0;
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;

  sub_2212E22F0(&lock);
  return hasSpillsOverlappingRange_outSpillRects;
}

- (BOOL)hasSpillingCellsIntersectingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, d, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v7, v9, v10);
  v16 = objc_msgSend_spillSizes(v11, v12, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    hasSpillingCellsIntersectingRange = objc_msgSend_hasSpillingCellsIntersectingRange_(v16, v17, range, v18, v19, lock);
  }

  else
  {
    hasSpillingCellsIntersectingRange = 0;
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;

  sub_2212E22F0(&lock);
  return hasSpillingCellsIntersectingRange;
}

- (void)clearSpillSizeForCell:(const TSCECellRef *)cell
{
  *lock = cell->_tableUID;
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, lock, v3, v4);
  lock[0] = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(lock[1]) = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v7, v9, v10);
  v16 = objc_msgSend_spillSizes(v11, v12, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    coordinate = cell->coordinate;
    objc_msgSend_clearSpillSizeForCell_(v16, v17, &coordinate, v18, v19);
  }

  os_unfair_lock_unlock(lock[0]);
  LOBYTE(lock[1]) = 0;

  sub_2212E22F0(lock);
}

- (void)clearSpillSizesInRange:(const TSCERangeRef *)range
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, &range->_tableUID, v3, v4);
  TSCERangeCoordinate::asCellRect(&range->range);
  v25[0] = v8;
  v25[1] = v9;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v10, v7, v11, v12);
  v18 = objc_msgSend_spillSizes(v13, v14, v15, v16, v17);
  v22 = v18;
  if (v18)
  {
    objc_msgSend_clearSpillSizesInRange_(v18, v19, v25, v20, v21, lock);
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;

  sub_2212E22F0(&lock);
}

- (TSCECellCoordSet)spillOriginsInRange:(SEL)range
{
  v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, range, &a4->_tableUID, v4, v5);
  TSCERangeCoordinate::asCellRect(&a4->range);
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  v29[0] = v10;
  v29[1] = v11;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v28 = 1;
  v15 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v12, v9, v13, v14);
  v20 = objc_msgSend_spillSizes(v15, v16, v17, v18, v19);
  v24 = v20;
  if (v20)
  {
    objc_msgSend_cellCoordsWithSpillsInRange_(v20, v21, v29, v22, v23);
    TSCECellCoordSet::addCellCoords(retstr, &v26);
    sub_22107C860(&v26._rowsPerColumn, v26._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  os_unfair_lock_unlock(lock);
  v28 = 0;

  return sub_2212E22F0(&lock);
}

- ($85CD2974BE96D4886BB301820D1C36C2)spillSizeForCell:(const TSCECellRef *)cell
{
  *lock = cell->_tableUID;
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, lock, v3, v4);
  lock[0] = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(lock[1]) = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v7, v9, v10);
  v16 = objc_msgSend_spillSizes(v11, v12, v13, v14, v15);
  v20 = v16;
  if (v16)
  {
    coordinate = cell->coordinate;
    v21 = objc_msgSend_spillSizeForCell_(v16, v17, &coordinate, v18, v19);
  }

  else
  {
    v21 = 0x100000001;
  }

  os_unfair_lock_unlock(lock[0]);
  LOBYTE(lock[1]) = 0;

  sub_2212E22F0(lock);
  return v21;
}

- (BOOL)hasVerticalSpills:(const TSKUIDStruct *)spills
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, spills, v3, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8, v9);
  v15 = objc_msgSend_spillSizes(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    hasVerticalSpills = objc_msgSend_hasVerticalSpills(v15, v16, v17, v18, v19, lock);
  }

  else
  {
    hasVerticalSpills = 0;
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;

  sub_2212E22F0(&lock);
  return hasVerticalSpills;
}

- (TSCECellCoordSet)verticalSpillCells:(SEL)cells
{
  v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, cells, a4, v4, v5);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v27 = 1;
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  v12 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, v8, v10, v11);
  v17 = objc_msgSend_spillSizes(v12, v13, v14, v15, v16);
  v22 = v17;
  if (v17)
  {
    objc_msgSend_verticalSpillCells(v17, v18, v19, v20, v21);
    TSCECellCoordSet::operator=(retstr, v24);
    sub_22107C860(v25, v25[1]);
  }

  os_unfair_lock_unlock(lock);
  v27 = 0;

  return sub_2212E22F0(&lock);
}

- (BOOL)hasHorizontalSpills:(const TSKUIDStruct *)spills
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, spills, v3, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8, v9);
  v15 = objc_msgSend_spillSizes(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    hasHorizontalSpills = objc_msgSend_hasHorizontalSpills(v15, v16, v17, v18, v19, lock);
  }

  else
  {
    hasHorizontalSpills = 0;
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;

  sub_2212E22F0(&lock);
  return hasHorizontalSpills;
}

- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table
{
  v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, error, a5, a5, v5);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v22 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  v14 = objc_msgSend_dgl_errorsForOwnerID_(self, v11, v9, v12, v13);
  v18 = v14;
  if (v14)
  {
    objc_msgSend_cellCoordsWithError_(v14, v15, table, v16, v17);
    TSCECellCoordSet::operator=(retstr, v20);
    sub_22107C860(v21, v21[1]);
    p_dependencyGraphLock = v22;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v23 = 0;

  return sub_2212E22F0(&v22);
}

- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell inOwner:(TSUCellCoord)owner outAtRootCell:(const TSKUIDStruct *)rootCell
{
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  v41.coordinate = owner;
  v41._tableUID = *rootCell;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v40 = 1;
  v38._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v38._coordsForOwnerUid.__tree_.__size_ = 0;
  v38._coordsForOwnerUid.__tree_.__begin_node_ = &v38._coordsForOwnerUid.__tree_.__end_node_;
  v9 = 10002;
  while (1)
  {
    if (TSCECellRefSet::containsCellRef(&v38, &v41))
    {
      v24 = 0;
      *retstr = v41;
      goto LABEL_15;
    }

    TSCECellRefSet::addCellRef(&v38, &v41);
    tableUID = v41._tableUID;
    v13 = objc_msgSend_dgl_errorsForOwnerUID_(self, v10, &tableUID, v11, v12);
    v17 = v13;
    if (!v13)
    {
      v24 = 0;
      goto LABEL_14;
    }

    v18 = objc_msgSend_errorCellForCell_(v13, v14, &v41, v15, v16);
    v23 = v18;
    v24 = v18 != 0;
    if (!v18)
    {
      goto LABEL_14;
    }

    v25 = *v18;
    if (*v23)
    {
      v26 = objc_msgSend_errorType(v25, v19, v20, v21, v22);
      v30 = objc_msgSend_errorFlavorForErrorType_(TSCEError, v27, v26, v28, v29);
    }

    else
    {
      v30 = objc_msgSend_errorFlavorForErrorType_(TSCEError, v19, 0, v21, v22);
    }

    if (v30 != 2)
    {
      break;
    }

    v34 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v31, *(v23 + 12), v32, v33);
    v41.coordinate = v23[2];
    v41._tableUID._lower = v34;
    v41._tableUID._upper = v35;

    if (!--v9)
    {
      v24 = 0;
      goto LABEL_15;
    }
  }

  v24 = 1;
LABEL_14:
  *retstr = v41;

LABEL_15:
  if (a6)
  {
    *a6 = v24;
  }

  os_unfair_lock_unlock(lock);
  v40 = 0;
  sub_22107C800(&v38, v38._coordsForOwnerUid.__tree_.__end_node_.__left_);
  return sub_2212E22F0(&lock);
}

- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, owner, v3, v4);
  if (v6 == 0xFFFF)
  {
    return 0;
  }

  v7 = v6;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v25 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v7, v9, v10);
  v16 = objc_msgSend_errors(v11, v12, v13, v14, v15);
  v21 = v16;
  if (v16)
  {
    v22 = objc_msgSend_countOfErrors(v16, v17, v18, v19, v20, lock);
  }

  else
  {
    v22 = 0;
  }

  os_unfair_lock_unlock(lock);
  v25 = 0;

  sub_2212E22F0(&lock);
  return v22;
}

- (unsigned)dgl_removePrecedentsFromOwnerInPhases:(unsigned __int16)phases startPhase:(unsigned int)phase startTime:(id)time timeout:(double)timeout
{
  phasesCopy = phases;
  phasesCopy2 = phases;
  timeCopy = time;
  __p = 0;
  v111 = 0;
  v112 = 0;
  if (phasesCopy == 0xFFFF)
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v10, phasesCopy, v11, v12);
  v16 = v14;
  if (!v14)
  {
    sub_221266D14(&__p, &phasesCopy2);
    goto LABEL_8;
  }

  if (phase <= 1)
  {
    v17 = objc_msgSend_uuidReferences(v14, v10, v15, v11, v12);
    objc_msgSend_clear(v17, v18, v19, v20, v21);

    v26 = objc_msgSend_rangeDependencies(v16, v22, v23, v24, v25);
    objc_msgSend_deleteAllReferencesFromThisTable(v26, v27, v28, v29, v30);

    if (timeCopy)
    {
      objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v15, v11, v12);
      if (-v31 > timeout)
      {
        phaseCopy = 2;
        goto LABEL_29;
      }
    }

LABEL_33:
    v45 = objc_msgSend_spanningRowDependencies(v16, v10, v15, v11, v12);
    objc_msgSend_removeAllPrecedents(v45, v46, v47, v48, v49);

    if (timeCopy && (objc_msgSend_timeIntervalSinceNow(timeCopy, v50, v51, v52, v53), -v54 > timeout) || (objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v50, v51, v52, v53) & 1) != 0)
    {
      phaseCopy = 3;
      goto LABEL_29;
    }

LABEL_38:
    v55 = objc_msgSend_spanningColumnDependencies(v16, v10, v15, v11, v12);
    objc_msgSend_removeAllPrecedents(v55, v56, v57, v58, v59);

    if (timeCopy && (objc_msgSend_timeIntervalSinceNow(timeCopy, v60, v61, v62, v63), -v64 > timeout) || (objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v60, v61, v62, v63) & 1) != 0)
    {
      phaseCopy = 4;
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  if (phase == 2)
  {
    goto LABEL_33;
  }

  if (phase <= 3)
  {
    goto LABEL_38;
  }

  phaseCopy = phase;
  if (phase != 4)
  {
LABEL_58:
    if (phase > 5)
    {
      if (phase != 6)
      {
        if (phaseCopy != 100)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v76 = objc_msgSend_volatileDependencies(v16, v10, v15, v11, v12);
      objc_msgSend_removeAllPrecedents(v76, v77, v78, v79, v80);

      v85 = objc_msgSend_wholeOwnerDependencies(v16, v81, v82, v83, v84);
      objc_msgSend_removeAllPrecedents(v85, v86, v87, v88, v89);

      if (timeCopy && (objc_msgSend_timeIntervalSinceNow(timeCopy, v90, v91, v92, v93), -v94 > timeout) || (objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v90, v91, v92, v93) & 1) != 0)
      {
        phaseCopy = 6;
        goto LABEL_29;
      }
    }

    v95 = objc_msgSend_uuidReferenceMap(self->_calcEngine, v10, v15, v11, v12);
    objc_msgSend_removeAllCellRefsInOwner_(v95, v96, phasesCopy2, v97, v98);

    v103 = objc_msgSend_groupNodeReferenceMap(self->_calcEngine, v99, v100, v101, v102);
    objc_msgSend_removeAllCellRefsInOwner_(v103, v104, phasesCopy2, v105, v106);

LABEL_8:
    for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
    {
      v108[0] = i[8];
      if (objc_msgSend_dgl_canDeleteOwnerDependencies_(self, v10, v108[0], v11, v12))
      {
        sub_221266D14(&__p, v108);
        if ((v111 - __p) > 0x18E)
        {
          break;
        }
      }
    }

    sub_221260060(&self->_formulaOwnerIDMap, v108);
    for (j = v109; j; j = *j)
    {
      v107 = *(j + 8);
      if (objc_msgSend_dgl_canDeleteOwnerDependencies_(self, v34, v107, v35, v36))
      {
        sub_221266D14(&__p, &v107);
        if ((v111 - __p) > 0x190)
        {
          break;
        }
      }
    }

    v38 = __p;
    v39 = v111;
    if (__p != v111)
    {
      for (k = 1; ; ++k)
      {
        objc_msgSend_dgl_deleteOwnerDependenciesIfPossible_(self, v34, *v38, v35, v36);
        if (!timeCopy || (k & 0xF) != 0)
        {
          if (++v38 == v39)
          {
            break;
          }
        }

        else
        {
          objc_msgSend_timeIntervalSinceNow(timeCopy, v34, v41, v35, v36);
          ++v38;
          if (-v42 > timeout || v38 == v39)
          {
            break;
          }
        }
      }
    }

    sub_2210BDEC0(v108);
    phaseCopy = 100;
    goto LABEL_29;
  }

LABEL_43:
  v65 = objc_msgSend_cellDependencies(v16, v10, v15, v11, v12);
  v70 = objc_msgSend_numCellRecords(v65, v66, v67, v68, v69) != 0;

  do
  {
    if ((v70 & 1) == 0)
    {
      phaseCopy = 5;
      goto LABEL_52;
    }

    v71 = objc_msgSend_cellDependencies(v16, v10, v15, v11, v12);
    v70 = objc_msgSend_removeSomePrecedents_markDependentsDirty_(v71, v72, 1000, 0, v73);

    if (timeCopy)
    {
      objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v15, v11, v12);
      if (-v74 > timeout)
      {
        if (v70)
        {
          phaseCopy = 4;
        }

        else
        {
          phaseCopy = 5;
        }

        goto LABEL_57;
      }
    }
  }

  while (!objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v10, v15, v11, v12));
  if (v70)
  {
    phaseCopy = 4;
  }

  else
  {
    phaseCopy = 5;
  }

LABEL_52:
  if (!timeCopy)
  {
    goto LABEL_58;
  }

LABEL_57:
  objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v15, v11, v12);
  if (-v75 <= timeout)
  {
    goto LABEL_58;
  }

LABEL_29:
  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  return phaseCopy;
}

- (void)processUnregisteringOwners:(double)owners
{
  if (self->_hasOwnerIdsToUnregister)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v21 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v22) = 1;
    if (self->_ownerIdsToUnregister.__end_ == self->_ownerIdsToUnregister.__begin_)
    {
      self->_hasOwnerIdsToUnregister = 0;
    }

    else
    {
      v10 = objc_opt_new();
      if (self->_hasOwnerIdsToUnregister)
      {
        end = self->_ownerIdsToUnregister.__end_;
        do
        {
          v12 = *(end - 4);
          v13 = objc_msgSend_referencesToDirty(self->_calcEngine, v6, v7, v8, v9, v21, v22);
          hasDirtyingToPerformForOwnerId = objc_msgSend_hasDirtyingToPerformForOwnerId_(v13, v14, v12, v15, v16);

          if (hasDirtyingToPerformForOwnerId)
          {
            break;
          }

          v19 = objc_msgSend_dgl_removePrecedentsFromOwnerInPhases_startPhase_startTime_timeout_(self, v18, v12, *(end - 1), v10, owners);
          if (v19 != 100)
          {
            *(end - 1) = v19;
            break;
          }

          begin = self->_ownerIdsToUnregister.__begin_;
          end = (self->_ownerIdsToUnregister.__end_ - 8);
          self->_ownerIdsToUnregister.__end_ = end;
          self->_hasOwnerIdsToUnregister = begin != end;
        }

        while (begin != end);
      }

      p_dependencyGraphLock = v21;
    }

    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v22) = 0;
    sub_2212E22F0(&v21);
  }
}

- (void)removeAllPrecedentsFromOwner:(const TSKUIDStruct *)owner
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, owner, v3, v4);
  v95 = v6;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v94 = 1;
  if (objc_msgSend_dgl_ownerIDIsRegistered_(self, v7, v6, v8, v9))
  {
    v96 = &v95;
    v10 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v95)[3];
    objc_msgSend_dgl_dirtyAllCellsInOwnerID_(self, v11, v95, v12, v13, lock);
    v18 = objc_msgSend_rangeDependencies(v10, v14, v15, v16, v17);
    objc_msgSend_deleteAllReferencesFromThisTable(v18, v19, v20, v21, v22);

    v27 = objc_msgSend_spanningRowDependencies(v10, v23, v24, v25, v26);
    objc_msgSend_removeAllPrecedents(v27, v28, v29, v30, v31);

    v36 = objc_msgSend_spanningColumnDependencies(v10, v32, v33, v34, v35);
    objc_msgSend_removeAllPrecedents(v36, v37, v38, v39, v40);

    v45 = objc_msgSend_cellDependencies(v10, v41, v42, v43, v44);
    objc_msgSend_removeAllPrecedents(v45, v46, v47, v48, v49);

    v54 = objc_msgSend_volatileDependencies(v10, v50, v51, v52, v53);
    objc_msgSend_removeAllPrecedents(v54, v55, v56, v57, v58);

    v63 = objc_msgSend_wholeOwnerDependencies(v10, v59, v60, v61, v62);
    objc_msgSend_removeAllPrecedents(v63, v64, v65, v66, v67);

    v72 = objc_msgSend_uuidReferenceMap(self->_calcEngine, v68, v69, v70, v71);
    objc_msgSend_removeAllCellRefsInOwner_(v72, v73, v95, v74, v75);

    v80 = objc_msgSend_groupNodeReferenceMap(self->_calcEngine, v76, v77, v78, v79);
    objc_msgSend_removeAllCellRefsInOwner_(v80, v81, v95, v82, v83);

    v88 = objc_msgSend_uuidReferences(v10, v84, v85, v86, v87);
    objc_msgSend_clear(v88, v89, v90, v91, v92);
  }

  os_unfair_lock_unlock(lock);
  v94 = 0;
  sub_2212E22F0(&lock);
}

- (BOOL)dgl_hasFormulaAt:(const TSCEInternalCellReference *)at
{
  CellRecordInternal_willModifyOnTile = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, a2, at, 0, v3);
  if (CellRecordInternal_willModifyOnTile)
  {
    LODWORD(CellRecordInternal_willModifyOnTile) = (*(CellRecordInternal_willModifyOnTile + 38) >> 2) & 1;
  }

  return CellRecordInternal_willModifyOnTile;
}

- (void)dgl_replaceCellWithFormulaForOwner:(unsigned __int16)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  *v132 = owner;
  v142[0] = coord;
  precedentsCopy = precedents;
  optionsCopy = options;
  if (options->var2)
  {
    v136.coordinate = (*&coord & 0xFFFFFFFFFFFFLL);
    LODWORD(v136._tableUID._lower) = *v132;
    objc_msgSend_dgl_precedentsOfCell_(self, v9, &v136, v11, v12);
    v18 = objc_msgSend_referenceSet(precedentsCopy, v14, v15, v16, v17);
    if (TSCEReferenceSet::isEqualToDepTrackerPrecedents(v18, &v141, v19, v20, v21))
    {
      if (!TSCEReferenceSet::isEmpty(&v141, v22, v23, v24, v25))
      {
        TSCEReferenceSet::~TSCEReferenceSet(&v141);
        goto LABEL_43;
      }

      hasFormulaAt = objc_msgSend_dgl_hasFormulaAt_(self, v26, &v136, v27, v28);
      TSCEReferenceSet::~TSCEReferenceSet(&v141);
      if (hasFormulaAt)
      {
        goto LABEL_43;
      }
    }

    else
    {
      TSCEReferenceSet::~TSCEReferenceSet(&v141);
    }
  }

  if (precedentsCopy)
  {
    v30 = objc_msgSend_isEmpty(precedentsCopy, v9, v10, v11, v12) ^ 1;
  }

  else
  {
    v30 = 0;
  }

  if ((v142[0] & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEDependencyTracker dgl_replaceCellWithFormulaForOwner:formulaCoord:precedents:replaceOptions:]", v11, v12);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v34, v35);
    v37 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v32, v36, 1830, 0, "Attempting to call dgl_replaceCellWithFormula with an invalid coord: %@", v37);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  else
  {
    v43 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, *v132, v11, v12);
    v48 = v43;
    if (v43)
    {
      if (!optionsCopy->var3)
      {
        v49 = objc_msgSend_spillSizes(v43, v44, v45, v46, v47);
        v53 = v49;
        if (v49)
        {
          objc_msgSend_clearSpillSizeForCell_(v49, v50, v142, v51, v52);
        }
      }

      v135[0] = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v44, *v132, v46, v47);
      v135[1] = v54;
      objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v54, v135, v55, v56);
      if (v30)
      {
        v61 = objc_msgSend_referenceSet(precedentsCopy, v57, v58, v59, v60);
        v62 = TSCEReferenceSet::containsRef(v61, &v136);
      }

      else
      {
        v62 = 0;
      }

      v133 = v142[0] & 0xFFFFFFFFFFFFLL;
      LODWORD(v134) = *v132;
      objc_msgSend_dgl_precedentsOfCell_(self, v57, &v133, v59, v60);
      if (TSCEReferenceSet::containsRef(&v141, &v136))
      {
        v140 = 0;
        v139 = 0;
        v66 = TSCEReferenceSet::firstCellRefForOwner(&v141, *v132, v63, v64, v65);
        v139 = v66;
        v140 = v67;
        if (v67 != 0xFFFF && (v66 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
        {
          if (!v62 || (v71 = objc_msgSend_referenceSet(precedentsCopy, v67, v68, v69, v70), CellRefForOwner = TSCEReferenceSet::firstCellRefForOwner(v71, *v132, v72, v73, v74), CellRefForOwner != v139) || ((v139 ^ CellRefForOwner) & 0x101FFFF00000000) != 0 || v140 != v67)
          {
            v76 = objc_msgSend_referencesToDirty(self->_calcEngine, v67, v68, v69, v70);
            objc_msgSend_dirtyInternalCellRef_(v76, v77, &v139, v78, v79);
          }
        }
      }

      TSCEReferenceSet::~TSCEReferenceSet(&v141);
      v139 = v142[0] & 0xFFFFFFFFFFFFLL;
      v140 = *v132;
      objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, v80, &v139, 1, v81);
      v86 = objc_msgSend_rangeDependencies(v48, v82, v83, v84, v85);

      if (v86)
      {
        v91 = objc_msgSend_rangeDependencies(v48, v87, v88, v89, v90);
        objc_msgSend_deleteRangeReferencesForFromCell_(v91, v92, v142, v93, v94);
      }

      v95 = objc_msgSend_spanningRowDependencies(v48, v87, v88, v89, v90);

      if (v95)
      {
        v100 = objc_msgSend_spanningRowDependencies(v48, v96, v97, v98, v99);
        objc_msgSend_deleteReferencesFromCell_(v100, v101, v142, v102, v103);
      }

      v104 = objc_msgSend_spanningColumnDependencies(v48, v96, v97, v98, v99);

      if (v104)
      {
        v109 = objc_msgSend_spanningColumnDependencies(v48, v105, v106, v107, v108);
        objc_msgSend_deleteReferencesFromCell_(v109, v110, v142, v111, v112);
      }

      v113 = objc_msgSend_volatileDependencies(v48, v105, v106, v107, v108);

      if (v113)
      {
        v118 = objc_msgSend_volatileDependencies(v48, v114, v115, v116, v117);
        objc_msgSend_deleteVolatileReferencesFromCell_(v118, v119, v142[0], v120, v121);
      }

      v122 = objc_msgSend_wholeOwnerDependencies(v48, v114, v115, v116, v117);

      if (v122)
      {
        v127 = objc_msgSend_wholeOwnerDependencies(v48, v123, v124, v125, v126);
        objc_msgSend_deleteOwnerReferencesFromCell_(v127, v128, v142[0], v129, v130);
      }

      v137 = v142[0] & 0xFFFFFFFFFFFFLL;
      v138 = *v132;
      if (!optionsCopy->var3)
      {
        objc_msgSend_dgl_removeCellRefFromAllUuidMaps_(self, v123, &v137, v125, v126);
      }

      operator new();
    }
  }

LABEL_43:
}

- (void)replaceCellWithFormulaForOwner:(const TSKUIDStruct *)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  coordCopy = coord;
  precedentsCopy = precedents;
  v13 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, v10, owner, v11, v12);
  if (!TSUCellCoord::verifyCoordIsSane(&coordCopy) || ((*&coordCopy & 0xFFFF00000000) == 0x7FFF00000000 ? (v17 = coordCopy.row == 0x7FFFFFFFLL) : (v17 = 1), !v17 || coordCopy.row == 0x7FFFFFFFLL && (*&coordCopy & 0xFFFF00000000) != 0x7FFF00000000))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEDependencyTracker replaceCellWithFormulaForOwner:formulaCoord:precedents:replaceOptions:]", v15, v16);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 2331, 0, "Not expecting insane, or spanning coordinates here: (%lu,%lu)", coordCopy.column, coordCopy.row);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (!options->var1 || (lock.coordinate = (*&coordCopy & 0xFFFFFFFFFFFFLL), LODWORD(lock._tableUID._lower) = v13, (objc_msgSend_markIntCellRefDirtyIfCellContainsAFormula_(self, v14, &lock, v15, v16) & 1) == 0))
  {
    if (!options->var2)
    {
      objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v14, owner, v15, v16);
      v33 = objc_msgSend_referenceSet(precedentsCopy, v29, v30, v31, v32);
      if (TSCEReferenceSet::containsRef(v33, &lock))
      {
        options->var2 = 1;
      }
    }

    lock.coordinate = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(lock._tableUID._lower) = 1;
    v34 = coordCopy;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v36, options);
    objc_msgSend_dgl_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(self, v35, v13, v34, precedentsCopy, &v36);

    os_unfair_lock_unlock(*&lock.coordinate);
    LOBYTE(lock._tableUID._lower) = 0;
    sub_2212E22F0(&lock);
  }
}

- (void)replaceRemoteDataKeysInterestedInForCell:(TSCECellRef *)cell specifierSet:(id)set
{
  setCopy = set;
  lock = &self->_dependencyGraphLock;
  v38 = 0;
  tableUID = cell->_tableUID;
  v10 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, v7, &tableUID, v8, v9);
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v38 = 1;
  if (objc_msgSend_dgl_ownerIDIsRegistered_(self, v11, v10, v12, v13))
  {
    v17 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v14, v10, v15, v16);
    v22 = objc_msgSend_volatileDependencies(v17, v18, v19, v20, v21);
    objc_msgSend_replaceRemoteDataKeyInterestedInForReference_specifierSet_(v22, v23, cell, setCopy, v24);
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEDependencyTracker replaceRemoteDataKeysInterestedInForCell:specifierSet:]", v15, v16);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 2371, 0, "Attempted to replace remote data key interest in a cell whose owner isn't registered.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  os_unfair_lock_unlock(lock);
  v38 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForDeletedOwner:(id)owner outFormulaCells:(void *)cells
{
  ownerCopy = owner;
  v53[0] = objc_msgSend_tableUID(ownerCopy, v7, v8, v9, v10);
  v53[1] = v11;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v52 = 1;
  v15 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v12, v53, v13, v14);
  v20 = v15;
  if (v15)
  {
    v21 = objc_msgSend_cellDependencies(v15, v16, v17, v18, v19, lock);

    if (v21)
    {
      v26 = objc_msgSend_cellDependencies(v20, v22, v23, v24, v25);
      objc_msgSend_formulaCellsReferencingThisOwner_(v26, v27, cells, v28, v29);
    }

    v30 = objc_msgSend_rangeDependencies(v20, v22, v23, v24, v25);

    if (v30)
    {
      v35 = objc_msgSend_rangeDependencies(v20, v31, v32, v33, v34);
      objc_msgSend_allFormulaCells_(v35, v36, cells, v37, v38);
    }

    v39 = objc_msgSend_spanningColumnDependencies(v20, v31, v32, v33, v34);

    if (v39)
    {
      v44 = objc_msgSend_spanningColumnDependencies(v20, v40, v41, v42, v43);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v44, v45, 0, 999, cells);
    }

    v46 = objc_msgSend_spanningRowDependencies(v20, v40, v41, v42, v43);

    if (v46)
    {
      v49 = objc_msgSend_spanningRowDependencies(v20, v16, v47, v48, v19);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v49, v50, 0, 999999, cells);
    }
  }

  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v16, ownerCopy, cells, v19, lock);
  os_unfair_lock_unlock(lock);
  v52 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForInsertedOwner:(id)owner outFormulaCells:(void *)cells
{
  ownerCopy = owner;
  if (objc_msgSend_rewriteType(ownerCopy, v7, v8, v9, v10))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForInsertedOwner:outFormulaCells:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2407, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v28) = 1;
  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v25, ownerCopy, cells, v26, &self->_dependencyGraphLock, v28);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v28) = 0;
  sub_2212E22F0(&v27);
}

- (void)dgl_formulaCellsAffectedByGeometryChangeToTable:(const TSKUIDStruct *)table outFormulaCells:(void *)cells
{
  objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, a2, table, cells, v4);
  v24 = v26;
  v10 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v7, &v24, v8, v9);
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_cellDependencies(v10, v11, v12, v13, v14);

    if (v16)
    {
      v21 = objc_msgSend_cellDependencies(v15, v17, v18, v19, v20);
      *&v24 = v25;
      *(&v24 + 1) = v25;
      objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(v21, v22, &v24, cells, v23);
    }
  }
}

- (void)formulaCellsForTableTranspose:(id)transpose outFormulaCells:(void *)cells
{
  transposeCopy = transpose;
  if (objc_msgSend_rewriteType(transposeCopy, v7, v8, v9, v10) != 11)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForTableTranspose:outFormulaCells:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2431, 0, "wrong rewrite type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v83 = 1;
  v80 = objc_msgSend_tableUID(transposeCopy, v25, v26, v27, v28);
  v81 = v29;
  v32 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v29, &v80, v30, v31);
  v37 = v32;
  if (v32)
  {
    v38 = objc_msgSend_cellDependencies(v32, v33, v34, v35, v36);

    if (v38)
    {
      v43 = objc_msgSend_cellDependencies(v37, v39, v40, v41, v42);
      objc_msgSend_formulaCellsInThisOwner_(v43, v44, cells, v45, v46);

      v51 = objc_msgSend_cellDependencies(v37, v47, v48, v49, v50);
      objc_msgSend_formulaCellsReferencingThisOwner_(v51, v52, cells, v53, v54);
    }

    v55 = objc_msgSend_rangeDependencies(v37, v39, v40, v41, v42);

    if (v55)
    {
      v60 = objc_msgSend_rangeDependencies(v37, v56, v57, v58, v59);
      objc_msgSend_allFormulaCells_(v60, v61, cells, v62, v63);
    }

    v64 = objc_msgSend_spanningColumnDependencies(v37, v56, v57, v58, v59);

    if (v64)
    {
      v69 = objc_msgSend_spanningColumnDependencies(v37, v65, v66, v67, v68);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v69, v70, 0, 999, cells);
    }

    v71 = objc_msgSend_spanningRowDependencies(v37, v65, v66, v67, v68);

    if (v71)
    {
      v76 = objc_msgSend_spanningRowDependencies(v37, v72, v73, v74, v75);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v76, v77, 0, 999999, cells);
    }

    v80 = objc_msgSend_formulaOwnerUid(v37, v72, v73, v74, v75);
    v81 = v78;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v78, &v80, cells, v79);
  }

  os_unfair_lock_unlock(lock);
  v83 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForRemoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  *&v99 = objc_msgSend_tableUID(rowsCopy, v12, v13, v14, v15);
  *(&v99 + 1) = v16;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v98 = 1;
  v20 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v17, &v99, v18, v19);
  v25 = v20;
  if (v20)
  {
    v26 = objc_msgSend_cellDependencies(v20, v21, v22, v23, v24);
    objc_msgSend_formulaCellsReferencingCellsAffectedByRemoveRows_outFormulaCells_(v26, v27, rowsCopy, cells, v28);

    v33 = objc_msgSend_cellDependencies(v25, v29, v30, v31, v32);
    v88 = objc_msgSend_affectedRange(rowsCopy, v34, v35, v36, v37);
    v89 = v38;
    objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v33, v38, &v88, rowsCopy, cells);

    v43 = objc_msgSend_rangeDependencies(v25, v39, v40, v41, v42);
    objc_msgSend_formulaCellsReferencingRangesAffectedByRewriteSpec_outFormulaCells_(v43, v44, rowsCopy, cells, v45);

    if (objc_msgSend_isRows(v11, v46, v47, v48, v49))
    {
      v54 = objc_msgSend_spanningRowDependencies(v25, v50, v51, v52, v53);
      objc_msgSend_formulaCellsReferencingRangesAffectedByRemoveRows_outFormulaCells_(v54, v55, rowsCopy, cells, v56);

      objc_msgSend_spanningColumnDependencies(v25, v57, v58, v59, v60);
    }

    else
    {
      v65 = objc_msgSend_spanningColumnDependencies(v25, v50, v51, v52, v53);
      objc_msgSend_formulaCellsReferencingRangesAffectedByRemoveRows_outFormulaCells_(v65, v66, rowsCopy, cells, v67);

      objc_msgSend_spanningRowDependencies(v25, v68, v69, v70, v71);
    }
    v61 = ;
    objc_msgSend_allFormulaCells_(v61, v62, cells, v63, v64);

    v88 = objc_msgSend_formulaOwnerUid(v25, v72, v73, v74, v75);
    v89 = v76;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v76, &v88, cells, v77);
    objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v78, rowsCopy, cells, v79);
    if (objc_msgSend_forSpillFormulasOnly(rowsCopy, v80, v81, v82, v83))
    {
      if ((TSCECellRefSet::isEmpty(cells) & 1) == 0)
      {
        v88 = 0;
        v89 = &v88;
        v90 = 0x4812000000;
        v91 = sub_22136A3D8;
        v92 = sub_22136A3FC;
        v93 = &unk_22188E88F;
        v95 = 0;
        v96 = 0;
        __p = 0;
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = sub_22136A414;
        v86[3] = &unk_2784632F0;
        v87 = v99;
        v86[4] = &v88;
        TSCECellRefSet::enumerateOwnersUsingBlock(cells, v86);
        v84 = v89[6];
        v85 = v89[7];
        while (v84 != v85)
        {
          TSCECellRefSet::removeAllCellRefsForOwner(cells, v84++);
        }

        _Block_object_dispose(&v88, 8);
        if (__p)
        {
          v95 = __p;
          operator delete(__p);
        }
      }
    }
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v98 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForInsertRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  v114[0] = objc_msgSend_tableUID(rowsCopy, v12, v13, v14, v15);
  v114[1] = v16;
  v18 = objc_msgSend_resolverForTableUID_(self->_calcEngine, v16, v114[0], v16, v17);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v113 = 1;
  v22 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v19, v114, v20, v21);
  v27 = v22;
  if (v22)
  {
    v28 = objc_msgSend_cellDependencies(v22, v23, v24, v25, v26);
    objc_msgSend_formulaCellsReferencingCellsAffectedByInsertRows_outFormulaCells_(v28, v29, rowsCopy, cells, v30);

    v35 = objc_msgSend_cellDependencies(v27, v31, v32, v33, v34);
    v110 = objc_msgSend_affectedRange(rowsCopy, v36, v37, v38, v39);
    v111 = v40;
    objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v35, v40, &v110, rowsCopy, cells);

    v45 = objc_msgSend_rangeDependencies(v27, v41, v42, v43, v44);
    objc_msgSend_formulaCellsReferencingRangesAffectedByRewriteSpec_outFormulaCells_(v45, v46, rowsCopy, cells, v47);

    v52 = objc_msgSend_insertAtUid(v11, v48, v49, v50, v51);
    if (v52 | v53 && v18)
    {
      if (objc_msgSend_isRows(v11, v53, v54, v55, v56))
      {
        v61 = objc_msgSend_insertAtUid(v11, v57, v58, v59, v60);
        v64 = objc_msgSend_rowIndexForRowUID_(v18, v62, v61, v62, v63);
        v71 = objc_msgSend_rangeDependencies(v27, v65, v66, v67, v68);
        v110 = v64 | 0x7FFF00000000;
        v111 = v110;
      }

      else
      {
        v72 = objc_msgSend_insertAtUid(v11, v57, v58, v59, v60);
        v75 = objc_msgSend_columnIndexForColumnUID_(v18, v73, v72, v73, v74);
        v71 = objc_msgSend_rangeDependencies(v27, v76, v77, v78, v79);
        v110 = (v75 << 32) | 0x7FFFFFFF;
        v111 = v110;
      }

      objc_msgSend_formulaCellsReferencingRange_outFormulaCells_(v71, v69, &v110, cells, v70);
    }

    if (objc_msgSend_isRows(v11, v53, v54, v55, v56))
    {
      v84 = objc_msgSend_spanningRowDependencies(v27, v80, v81, v82, v83);
      objc_msgSend_formulaCellsReferencingRangesAffectedByInsertRows_outFormulaCells_(v84, v85, rowsCopy, cells, v86);

      objc_msgSend_spanningColumnDependencies(v27, v87, v88, v89, v90);
    }

    else
    {
      v95 = objc_msgSend_spanningColumnDependencies(v27, v80, v81, v82, v83);
      objc_msgSend_formulaCellsReferencingRangesAffectedByInsertRows_outFormulaCells_(v95, v96, rowsCopy, cells, v97);

      objc_msgSend_spanningRowDependencies(v27, v98, v99, v100, v101);
    }
    v91 = ;
    objc_msgSend_allFormulaCells_(v91, v92, cells, v93, v94);

    v110 = objc_msgSend_formulaOwnerUid(v27, v102, v103, v104, v105);
    v111 = v106;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v106, &v110, cells, v107);
    objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v108, rowsCopy, cells, v109);
  }

  os_unfair_lock_unlock(lock);
  v113 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForMoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  v87[0] = objc_msgSend_tableUID(rowsCopy, v12, v13, v14, v15);
  v87[1] = v16;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v86 = 1;
  v20 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v17, v87, v18, v19);
  v25 = v20;
  if (v20)
  {
    v26 = objc_msgSend_cellDependencies(v20, v21, v22, v23, v24);
    objc_msgSend_formulaCellsReferencingCellsAffectedByMoveRows_outFormulaCells_(v26, v27, rowsCopy, cells, v28);

    v33 = objc_msgSend_cellDependencies(v25, v29, v30, v31, v32);
    v83 = objc_msgSend_affectedRange(rowsCopy, v34, v35, v36, v37);
    v84 = v38;
    objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v33, v38, &v83, rowsCopy, cells);

    v43 = objc_msgSend_rangeDependencies(v25, v39, v40, v41, v42);
    objc_msgSend_formulaCellsReferencingRangesAffectedByRewriteSpec_outFormulaCells_(v43, v44, rowsCopy, cells, v45);

    if (objc_msgSend_isRows(v11, v46, v47, v48, v49))
    {
      objc_msgSend_spanningRowDependencies(v25, v50, v51, v52, v53);
    }

    else
    {
      objc_msgSend_spanningColumnDependencies(v25, v50, v51, v52, v53);
    }
    v54 = ;
    objc_msgSend_formulaCellsReferencingRangesAffectedByMoveRows_outFormulaCells_(v54, v55, rowsCopy, cells, v56);

    v83 = objc_msgSend_formulaOwnerUid(v25, v57, v58, v59, v60);
    v84 = v61;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v61, &v83, cells, v62);
    if (objc_msgSend_isRows(v11, v63, v64, v65, v66))
    {
      v71 = objc_msgSend_rowOrColumnIndices(v11, v67, v68, v69, v70);
      v72 = v82;
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = sub_22136AA6C;
      v82[3] = &unk_278463318;
      v82[5] = v25;
      v82[4] = rowsCopy;
      v82[6] = cells;
      objc_msgSend_enumerateRangesUsingBlock_(v71, v73, v82, v74, v75);
    }

    else
    {
      v71 = objc_msgSend_rowOrColumnIndices(v11, v67, v68, v69, v70);
      v72 = v81;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_22136AAE0;
      v81[3] = &unk_278463318;
      v81[5] = v25;
      v81[4] = rowsCopy;
      v81[6] = cells;
      objc_msgSend_enumerateRangesUsingBlock_(v71, v76, v81, v77, v78);
    }

    objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v79, rowsCopy, cells, v80);
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v86 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForSortRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v11 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9, v10);
  v100[0] = objc_msgSend_affectedOwnerUID(rowsCopy, v12, v13, v14, v15);
  v100[1] = v16;
  v19 = objc_msgSend_tableResolverForTableUID_(self->_calcEngine, v16, v100, v17, v18);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v99 = 1;
  v23 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v20, v100, v21, v22);
  if (v23)
  {
    v32 = objc_msgSend_cellDependencies(v23, v24, v25, v26, v27);
    if (v32)
    {
      if (objc_msgSend_isRows(v11, v28, v29, v30, v31))
      {
        v37 = objc_msgSend_rowOrColumnIndices(v11, v33, v34, v35, v36);
        v38 = v97;
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = sub_22136B000;
        v97[3] = &unk_278463340;
        v97[4] = v32;
        v97[5] = rowsCopy;
        v97[6] = cells;
        objc_msgSend_enumerateRangesUsingBlock_(v37, v39, v97, v40, v41);
      }

      else
      {
        v37 = objc_msgSend_rowOrColumnIndices(v11, v33, v34, v35, v36);
        v38 = v96;
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = sub_22136B048;
        v96[3] = &unk_278463340;
        v96[4] = v32;
        v96[5] = rowsCopy;
        v96[6] = cells;
        objc_msgSend_enumerateRangesUsingBlock_(v37, v42, v96, v43, v44);
      }
    }

    if (v19)
    {
      v95[0] = objc_msgSend_conditionalStyleFormulaOwnerUID(v19, v28, v29, v30, v31);
      v95[1] = v45;
      v52 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v45, v95, v46, v47);
      if (v52)
      {
        if (objc_msgSend_isRows(v11, v48, v49, v50, v51))
        {
          v57 = objc_msgSend_rowOrColumnIndices(v11, v53, v54, v55, v56);
          v58 = v94;
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = sub_22136B09C;
          v94[3] = &unk_278463340;
          v94[4] = v52;
          v94[5] = rowsCopy;
          v94[6] = cells;
          objc_msgSend_enumerateRangesUsingBlock_(v57, v59, v94, v60, v61);
        }

        else
        {
          v57 = objc_msgSend_rowOrColumnIndices(v11, v53, v54, v55, v56);
          v58 = v93;
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = sub_22136B0E4;
          v93[3] = &unk_278463340;
          v93[4] = v52;
          v93[5] = rowsCopy;
          v93[6] = cells;
          objc_msgSend_enumerateRangesUsingBlock_(v57, v62, v93, v63, v64);
        }
      }

      v92[0] = objc_msgSend_mergeOwnerUID(v19, v48, v49, v50, v51);
      v92[1] = v65;
      v68 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v65, v92, v66, v67);
      v73 = v68;
      if (v68)
      {
        v74 = objc_msgSend_cellDependencies(v68, v69, v70, v71, v72);

        if (v74)
        {
          v79 = objc_msgSend_cellDependencies(v73, v75, v76, v77, v78);
          objc_msgSend_formulaCellsInThisOwner_(v79, v80, cells, v81, v82);
        }

        v83 = objc_msgSend_rangeDependencies(v73, v75, v76, v77, v78);

        if (v83)
        {
          v88 = objc_msgSend_rangeDependencies(v73, v84, v85, v86, v87);
          objc_msgSend_allFormulaCells_(v88, v89, cells, v90, v91);
        }
      }
    }
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v99 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForMoveRegion:(id)region outFormulaCells:(void *)cells
{
  regionCopy = region;
  v11 = objc_msgSend_regionMovedInfo(regionCopy, v7, v8, v9, v10);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v262 = 1;
  __p = objc_msgSend_srcTableUID(v11, v12, v13, v14, v15);
  v248 = v16;
  v19 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v16, &__p, v17, v18);
  __p = objc_msgSend_dstTableUID(v11, v20, v21, v22, v23);
  v248 = v24;
  v27 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v24, &__p, v25, v26);
  if (!v19)
  {
    goto LABEL_17;
  }

  v32 = v27;
  if (!v27)
  {
    goto LABEL_17;
  }

  v243 = v11;
  v245 = objc_msgSend_cellDependencies(v19, v28, v29, v30, v31);
  v242 = objc_msgSend_rangeDependencies(v19, v33, v34, v35, v36);
  v41 = objc_msgSend_srcColumnUids(v11, v37, v38, v39, v40);
  v46 = objc_msgSend_indexes(v41, v42, v43, v44, v45);
  v51 = objc_msgSend_srcRowUids(v11, v47, v48, v49, v50);
  v56 = objc_msgSend_indexes(v51, v52, v53, v54, v55);
  v258[0] = MEMORY[0x277D85DD0];
  v258[1] = 3221225472;
  v258[2] = sub_22136BA1C;
  v258[3] = &unk_278463368;
  cellsCopy = cells;
  v57 = v243;
  v259 = v57;
  objc_msgSend_applyBlockToRecordsAtIndexes_rowIndexes_cellRestrictions_doWillModify_block_(v245, v58, v46, v56, 1, 0, v258);

  v257 = 0uLL;
  *&v257 = objc_msgSend_srcCondStyleOwnerUID(v57, v59, v60, v61, v62);
  *(&v257 + 1) = v63;
  v240 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v63, &v257, v64, v65);
  if (v240)
  {
    v70 = objc_msgSend_srcColumnUids(v57, v66, v67, v68, v69);
    v75 = objc_msgSend_indexes(v70, v71, v72, v73, v74);
    v80 = objc_msgSend_srcRowUids(v57, v76, v77, v78, v79);
    v85 = objc_msgSend_indexes(v80, v81, v82, v83, v84);
    v255[0] = MEMORY[0x277D85DD0];
    v255[1] = 3221225472;
    v255[2] = sub_22136BA68;
    v255[3] = &unk_278463388;
    v255[4] = cells;
    v256 = v257;
    objc_msgSend_applyBlockToRecordsAtIndexes_rowIndexes_cellRestrictions_doWillModify_block_(v240, v86, v75, v85, 1, 0, v255);
  }

  v87 = objc_msgSend_srcColumnUids(v57, v66, v67, v68, v69);
  v244 = objc_msgSend_indexes(v87, v88, v89, v90, v91);

  v96 = objc_msgSend_srcRowUids(v57, v92, v93, v94, v95);
  v101 = objc_msgSend_indexes(v96, v97, v98, v99, v100);

  v241 = v101;
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v245, v102, v244, v101, cells);
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v242, v103, v244, v101, cells);
  if (objc_msgSend_spanningRows(v57, v104, v105, v106, v107))
  {
    v239 = regionCopy;
    v112 = objc_msgSend_spanningRowDependencies(v19, v108, v109, v110, v111);
    v117 = objc_msgSend_srcRowUids(v57, v113, v114, v115, v116);
    v122 = objc_msgSend_indexes(v117, v118, v119, v120, v121);
    v253[0] = MEMORY[0x277D85DD0];
    v253[1] = 3221225472;
    v253[2] = sub_22136BAAC;
    v253[3] = &unk_2784633B0;
    v123 = v112;
    v254[0] = v123;
    v254[1] = cells;
    objc_msgSend_enumerateRangesUsingBlock_(v122, v124, v253, v125, v126);
    v127 = v254;
  }

  else
  {
    if (!objc_msgSend_spanningColumns(v57, v108, v109, v110, v111))
    {
      goto LABEL_10;
    }

    v239 = regionCopy;
    v132 = objc_msgSend_spanningColumnDependencies(v19, v128, v129, v130, v131);
    v117 = objc_msgSend_srcColumnUids(v57, v133, v134, v135, v136);
    v122 = objc_msgSend_indexes(v117, v137, v138, v139, v140);
    v251[0] = MEMORY[0x277D85DD0];
    v251[1] = 3221225472;
    v251[2] = sub_22136BAC4;
    v251[3] = &unk_2784633B0;
    v123 = v132;
    v252[0] = v123;
    v252[1] = cells;
    objc_msgSend_enumerateRangesUsingBlock_(v122, v141, v251, v142, v143);
    v127 = v252;
  }

  regionCopy = v239;
LABEL_10:
  __p = objc_msgSend_formulaOwnerUid(v19, v128, v129, v130, v131);
  v248 = v144;
  objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v144, &__p, cells, v145);
  v150 = objc_msgSend_cellDependencies(v32, v146, v147, v148, v149);
  v155 = objc_msgSend_rangeDependencies(v32, v151, v152, v153, v154);
  v160 = objc_msgSend_dstColumnUids(v57, v156, v157, v158, v159);
  v165 = objc_msgSend_indexes(v160, v161, v162, v163, v164);
  v170 = objc_msgSend_dstRowUids(v57, v166, v167, v168, v169);
  v175 = objc_msgSend_indexes(v170, v171, v172, v173, v174);
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v150, v176, v165, v175, cells);

  v181 = objc_msgSend_dstColumnUids(v57, v177, v178, v179, v180);
  v186 = objc_msgSend_indexes(v181, v182, v183, v184, v185);
  v191 = objc_msgSend_dstRowUids(v57, v187, v188, v189, v190);
  v196 = objc_msgSend_indexes(v191, v192, v193, v194, v195);
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v155, v197, v186, v196, cells);

  calcEngine = self->_calcEngine;
  v203 = objc_msgSend_srcRegion(v57, v199, v200, v201, v202);
  v204 = v240;
  __p = objc_msgSend_tableUID(v203, v205, v206, v207, v208);
  v248 = v209;
  v212 = objc_msgSend_tableResolverForTableUID_(calcEngine, v209, &__p, v210, v211);

  v11 = v243;
  if (v212 && objc_msgSend_isCategorized(v212, v213, v214, v215, v216))
  {
    v250[0] = objc_msgSend_groupByUUID(v212, v217, v218, v219, v220);
    v250[1] = v221;
    v225 = objc_msgSend_srcRowUids(v57, v221, v222, v223, v224);
    v230 = objc_msgSend_uids(v225, v226, v227, v228, v229);
    v232 = objc_msgSend_dgl_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v231, v230, v250, cells);

    v11 = v243;
    if (v232)
    {
      __p = 0;
      v248 = 0;
      v249 = 0;
      *&v246 = objc_msgSend_groupByRootUid(TSCECategoryRef, v233, v234, v235, v236);
      *(&v246 + 1) = v237;
      sub_221083454(&__p, &v246);
      objc_msgSend_dgl_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v238, &__p, v250, cells);
      if (__p)
      {
        v248 = __p;
        operator delete(__p);
      }
    }

    v204 = v240;
  }

LABEL_17:
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v262 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForMergeCells:(id)cells outFormulaCells:(void *)formulaCells
{
  cellsCopy = cells;
  if (objc_msgSend_rewriteType(cellsCopy, v6, v7, v8, v9) != 7 && objc_msgSend_rewriteType(cellsCopy, v10, v11, v12, v13) != 8 && objc_msgSend_rewriteType(cellsCopy, v10, v11, v12, v13) != 17)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForMergeCells:outFormulaCells:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2841, 0, "wrong rewrite type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = cellsCopy;
  v26 = objc_msgSend_mergeInfo(cellsCopy, v10, v11, v12, v13);
  v31 = objc_msgSend_mergeRegion(v26, v27, v28, v29, v30);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v177 = 1;
  v162 = v31;
  v168.coordinate = objc_msgSend_affectedOwnerUID(cellsCopy, v32, v33, v34, v35);
  v168._tableUID._lower = v36;
  v39 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v36, &v168, v37, v38);
  v44 = v39;
  if (v39)
  {
    v161 = v26;
    v164 = objc_msgSend_cellDependencies(v39, v40, v41, v42, v43);
    v163 = objc_msgSend_rangeDependencies(v44, v45, v46, v47, v48);
    v166 = objc_msgSend_spanningColumnDependencies(v44, v49, v50, v51, v52);
    v165 = objc_msgSend_spanningRowDependencies(v44, v53, v54, v55, v56);
    v61 = objc_msgSend_columnUids(v31, v57, v58, v59, v60);
    v66 = objc_msgSend_indexes(v61, v62, v63, v64, v65);
    v71 = objc_msgSend_rowUids(v31, v67, v68, v69, v70);
    v76 = objc_msgSend_indexes(v71, v72, v73, v74, v75);
    objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v164, v77, v66, v76, formulaCells);

    v82 = objc_msgSend_columnUids(v31, v78, v79, v80, v81);
    v87 = objc_msgSend_indexes(v82, v83, v84, v85, v86);
    v92 = objc_msgSend_rowUids(v31, v88, v89, v90, v91);
    v97 = objc_msgSend_indexes(v92, v93, v94, v95, v96);
    objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v163, v98, v87, v97, formulaCells);

    if (v166)
    {
      v103 = objc_msgSend_columnUids(v31, v99, v100, v101, v102);
      v108 = objc_msgSend_indexes(v103, v104, v105, v106, v107);
      v173[0] = MEMORY[0x277D85DD0];
      v173[1] = 3221225472;
      v173[2] = sub_22136C120;
      v173[3] = &unk_2784633B0;
      v174 = v166;
      formulaCellsCopy = formulaCells;
      objc_msgSend_enumerateRangesUsingBlock_(v108, v109, v173, v110, v111);
    }

    if (v165)
    {
      v112 = objc_msgSend_rowUids(v31, v99, v100, v101, v102);
      v117 = objc_msgSend_indexes(v112, v113, v114, v115, v116);
      v170[0] = MEMORY[0x277D85DD0];
      v170[1] = 3221225472;
      v170[2] = sub_22136C138;
      v170[3] = &unk_2784633B0;
      v171 = v165;
      formulaCellsCopy2 = formulaCells;
      objc_msgSend_enumerateRangesUsingBlock_(v117, v118, v170, v119, v120);
    }

    v168.coordinate = objc_msgSend_formulaOwnerUid(v44, v99, v100, v101, v102);
    v168._tableUID._lower = v121;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v121, &v168, formulaCells, v122);
    v127 = objc_msgSend_mergeSource(v26, v123, v124, v125, v126);
    v132 = *v127;
    if (v127->row != 0x7FFFFFFF && (v132 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v168.coordinate = *v127;
      v168._tableUID._lower = v132;
      objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v164, v128, &v168, cellsCopy, formulaCells);
      v169[0] = objc_msgSend_affectedConditionalStyleOwnerUID(cellsCopy, v133, v134, v135, v136);
      v169[1] = v137;
      v140 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v137, v169, v138, v139);
      v142 = v140;
      if (v140)
      {
        objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v140, v141, &v168, cellsCopy, formulaCells);
      }
    }

    if (objc_msgSend_rewriteType(cellsCopy, v128, v129, v130, v131) != 17 && (TSCECellRefSet::isEmpty(formulaCells) & 1) == 0)
    {
      v147 = objc_msgSend_mergingRange(v31, v143, v144, v145, v146);
      v149 = v148;
      v153 = objc_msgSend_affectedOwnerUID(cellsCopy, v148, v150, v151, v152);
      if (WORD2(v147) <= WORD2(v149))
      {
        v155 = v153;
        v156 = v154;
        v157 = HIDWORD(v147);
        do
        {
          if (v147 <= v149)
          {
            v158 = v157 << 32;
            if ((v132 & 0x1FFFF00000000) == v158)
            {
              v159 = HIBYTE(v132) & 1;
            }

            else
            {
              v159 = 1;
            }

            v160 = v147;
            do
            {
              if ((v132 != v160) | v159 & 1)
              {
                v168.coordinate = (v158 | v160);
                v168._tableUID._lower = v155;
                v168._tableUID._upper = v156;
                TSCECellRefSet::removeCellRef(formulaCells, &v168);
              }

              ++v160;
            }

            while (v160 <= v149);
          }

          LOWORD(v157) = v157 + 1;
        }

        while (v157 <= WORD2(v149));
      }
    }

    v25 = cellsCopy;
    v26 = v161;
    v31 = v162;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v177 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForMergeOriginMove:(id)move outFormulaCells:(void *)cells
{
  moveCopy = move;
  if (objc_msgSend_rewriteType(moveCopy, v7, v8, v9, v10) != 9)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForMergeOriginMove:outFormulaCells:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 2915, 0, "wrong rewrite type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_mergeOriginMovedInfo(moveCopy, v11, v12, v13, v14);
  v64[0] = objc_msgSend_affectedOwnerUID(moveCopy, v27, v28, v29, v30);
  v64[1] = v31;
  v63[0] = objc_msgSend_conditionalStyleOwnerUID(moveCopy, v31, v32, v33, v34);
  v63[1] = v35;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v61 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v62 = 1;
  v44 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v37, v64, v38, v39);
  if (v44)
  {
    for (i = *(objc_msgSend_mergeOriginsMap(v26, v40, v41, v42, v43) + 16); i; i = *i)
    {
      v49 = i[3];
      v59 = i[2];
      v60 = v59;
      objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(v44, v45, &v59, cells, v47, v49, v49);
      objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v44, v50, &v58, moveCopy, cells);
    }

    v55 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v45, v63, v46, v47);
    if (v55)
    {
      for (j = *(objc_msgSend_mergeOriginsMap(v26, v51, v52, v53, v54) + 16); j; j = *j)
      {
        v59 = j[3];
        v60 = v59;
        objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v55, v56, &v59, moveCopy, cells);
      }
    }

    p_dependencyGraphLock = v61;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v62 = 0;

  sub_2212E22F0(&v61);
}

- (void)formulaCellsForTableUIDReassignment:(id)reassignment outFormulaCells:(void *)cells
{
  reassignmentCopy = reassignment;
  if (objc_msgSend_rewriteType(reassignmentCopy, v7, v8, v9, v10) != 10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForTableUIDReassignment:outFormulaCells:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2953, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v28) = 1;
  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v25, reassignmentCopy, cells, v26, &self->_dependencyGraphLock, v28);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v28) = 0;
  sub_2212E22F0(&v27);
}

- (void)formulaCellsForGroupNodeChanges:(id)changes outFormulaCells:(void *)cells
{
  changesCopy = changes;
  if (objc_msgSend_rewriteType(changesCopy, v7, v8, v9, v10) != 16)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForGroupNodeChanges:outFormulaCells:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 2967, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_groupByChange(changesCopy, v11, v12, v13, v14);
  v31 = v26;
  if (v26)
  {
    v34[0] = objc_msgSend_groupByUid(v26, v27, v28, v29, v30);
    v34[1] = v32;
    objc_msgSend_cellRefsReferringToGroupBy_outCellRefs_(self, v32, v34, cells, v33);
  }
}

- (void)formulaCellsForPivotRuleChange:(id)change outFormulaCells:(void *)cells
{
  changeCopy = change;
  if (objc_msgSend_rewriteType(changeCopy, v7, v8, v9, v10) != 18)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForPivotRuleChange:outFormulaCells:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 2978, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v28) = 1;
  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v25, changeCopy, cells, v26, &self->_dependencyGraphLock, v28);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v28) = 0;
  sub_2212E22F0(&v27);
}

- (void)formulaCellsForGroupNodeUIDReassignment:(id)reassignment outFormulaCells:(void *)cells
{
  reassignmentCopy = reassignment;
  if (objc_msgSend_rewriteType(reassignmentCopy, v7, v8, v9, v10) != 13)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEDependencyTracker formulaCellsForGroupNodeUIDReassignment:outFormulaCells:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 2991, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_groupNodeUIDInfo(reassignmentCopy, v11, v12, v13, v14);
  v31 = v26;
  if (v26)
  {
    objc_msgSend_originalGroupNodeUIDs(v26, v27, v28, v29, v30);
    v36 = objc_msgSend_groupByUid(v31, v32, v33, v34, v35);
    objc_msgSend_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v37, __p, v36, cells);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

- (void)dgl_formulaCellRefsReferringToOwnerUIDs:(const void *)ds outFormulaCells:(void *)cells
{
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = objc_msgSend_uuidReferences(i[3], a2, ds, cells, v4);
    objc_msgSend_getCellRefs_referringToOwners_(v8, v9, cells, ds, v10);
  }
}

- (BOOL)dgl_cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v9 = 0;
    do
    {
      v10 = next[3];
      v11 = objc_msgSend_ownerIndex(v10, a2, nodes, d, refs);
      if (v11 != 8 && (v11 - 1306) <= 0xFFFFFBB2)
      {
        v12 = objc_msgSend_uuidReferences(v10, a2, nodes, d, refs);
        v9 |= objc_msgSend_getCellRefs_referringToOwnerUID_referringToUuids_(v12, v13, refs, d, nodes);
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (BOOL)cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v12 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v13) = 1;
  LOBYTE(refs) = objc_msgSend_dgl_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v10, nodes, d, refs, v12, v13);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v13) = 0;
  sub_2212E22F0(&v12);
  return refs;
}

- (void)cellRefsReferringToGroupBy:(const TSKUIDStruct *)by outCellRefs:(void *)refs
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v18 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v19) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v13 = next[3];
      v14 = objc_msgSend_ownerIndex(v13, v8, v9, v10, v11, v18, v19);
      if (v14 != 8 && (v14 - 1306) <= 0xFBB2u)
      {
        v15 = objc_msgSend_uuidReferences(v13, v8, v9, v10, v11);
        objc_msgSend_getAllCellRefs_referringToOwnerUID_(v15, v16, refs, by, v17);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v18;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v19) = 0;
  sub_2212E22F0(&v18);
}

- (void)dgl_formulaCellsReferencingUuidsInSpec:(id)spec outFormulaCells:(void *)cells
{
  specCopy = spec;
  v11 = objc_msgSend_rewriteType(specCopy, v7, v8, v9, v10);
  if (v11 < 2)
  {
    __p = 0;
    v92 = 0;
    v93 = 0;
    *&v89 = objc_msgSend_tableUID(specCopy, v12, v13, v14, v15);
    *(&v89 + 1) = v19;
    sub_221083454(&__p, &v89);
    v24 = objc_msgSend_fromTableUID(specCopy, v20, v21, v22, v23);
    if (v24 | v25)
    {
      *&v89 = objc_msgSend_fromTableUID(specCopy, v25, v26, v27, v28);
      *(&v89 + 1) = v29;
      sub_221083454(&__p, &v89);
      v34 = objc_msgSend_tableUIDHistory(self->_calcEngine, v30, v31, v32, v33);
      v39 = v34;
      if (v34)
      {
        v40 = objc_msgSend_tableUIDMap(v34, v35, v36, v37, v38);
        *&v89 = objc_msgSend_fromTableUID(specCopy, v41, v42, v43, v44);
        *(&v89 + 1) = v45;
        v46 = sub_221119F90(v40, &v89);
        if (v46)
        {
          sub_221083454(&__p, v46 + 2);
        }
      }
    }

    v47 = objc_msgSend_conditionalStyleOwnerUID(specCopy, v25, v26, v27, v28);
    if (v47 | v48)
    {
      *&v89 = objc_msgSend_conditionalStyleOwnerUID(specCopy, v48, v49, v50, v51);
      *(&v89 + 1) = v52;
      sub_221083454(&__p, &v89);
    }

    v53 = objc_msgSend_groupByUID(specCopy, v48, v49, v50, v51);
    if (v53 | v54)
    {
      *&v89 = objc_msgSend_groupByUID(specCopy, v54, v55, v56, v57);
      *(&v89 + 1) = v58;
      sub_221083454(&__p, &v89);
    }

    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v54, &__p, cells, v57);
  }

  else if (v11 == 10)
  {
    v59 = objc_msgSend_tableUIDInfo(specCopy, v12, v13, v14, v15);
    v64 = v59;
    if (v59)
    {
      objc_msgSend_originalTableUIDs(v59, v60, v61, v62, v63);
    }

    else
    {
      __p = 0;
      v92 = 0;
      v93 = 0;
    }

    v76 = objc_msgSend_tableUIDHistory(self->_calcEngine, v72, v73, v74, v75);
    v81 = v76;
    if (v76)
    {
      v82 = objc_msgSend_tableUIDMap(v76, v77, v78, v79, v80);
      v89 = 0uLL;
      v90 = 0;
      v83 = __p;
      v84 = v92;
      if (__p != v92)
      {
        v85 = v82;
        do
        {
          v86 = sub_221119F90(v85, v83);
          if (v86)
          {
            sub_221083454(&v89, v86 + 2);
          }

          v83 += 2;
        }

        while (v83 != v84);
        v88 = *(&v89 + 1);
        v87 = v89;
        if (v89 != *(&v89 + 1))
        {
          do
          {
            sub_221083454(&__p, v87++);
          }

          while (v87 != v88);
          v87 = v89;
        }

        if (v87)
        {
          *(&v89 + 1) = v87;
          operator delete(v87);
        }
      }
    }

    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v77, &__p, cells, v80, v89);
  }

  else if (v11 == 18)
  {
    __p = 0;
    v92 = 0;
    v93 = 0;
    *&v89 = objc_msgSend_tableUID(specCopy, v12, v13, v14, v15);
    *(&v89 + 1) = v16;
    sub_221083454(&__p, &v89);
    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v17, &__p, cells, v18);
  }

  else
  {
    if (specCopy)
    {
      objc_msgSend_expandedRowColumnUuids(specCopy, v12, v13, v14, v15);
    }

    else
    {
      __p = 0;
      v92 = 0;
      v93 = 0;
    }

    for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
    {
      v66 = objc_msgSend_uuidReferences(i[3], v12, v13, v14, v15);
      *&v89 = objc_msgSend_tableUID(specCopy, v67, v68, v69, v70);
      *(&v89 + 1) = v71;
      objc_msgSend_getCellRefs_referringToOwnerUID_referringToUuids_(v66, v71, cells, &v89, &__p);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }
}

- (TSCECellRefSet)formulaCellsAffectedByRewrite:(SEL)rewrite postMove:(id)move
{
  v5 = a5;
  moveCopy = move;
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = &retstr->_coordsForOwnerUid.__tree_.__end_node_;
  v32 = moveCopy;
  v13 = objc_msgSend_rewriteType(moveCopy, v9, v10, v11, v12);
  if (objc_msgSend_rewriteTypeUsesAmendRewriteSpec_(TSCEDependencyTracker, v14, v13, v15, v16) <= v5)
  {
    switch(v13)
    {
      case 0:
        objc_msgSend_formulaCellsForInsertedOwner_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 1:
        objc_msgSend_formulaCellsForDeletedOwner_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 2:
        objc_msgSend_formulaCellsForRemoveRows_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 3:
        objc_msgSend_formulaCellsForInsertRows_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 4:
      case 12:
        objc_msgSend_formulaCellsForMoveRows_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 5:
        objc_msgSend_formulaCellsForSortRows_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 6:
        objc_msgSend_formulaCellsForMoveRegion_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 7:
      case 8:
      case 17:
        objc_msgSend_formulaCellsForMergeCells_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 9:
        objc_msgSend_formulaCellsForMergeOriginMove_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 10:
        objc_msgSend_formulaCellsForTableUIDReassignment_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 11:
        objc_msgSend_formulaCellsForTableTranspose_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 13:
        objc_msgSend_formulaCellsForGroupNodeUIDReassignment_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 14:
      case 15:
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCEDependencyTracker formulaCellsAffectedByRewrite:postMove:]", v18, v19);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 3199, 0, "Not implemented yet for this type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
        break;
      case 16:
        objc_msgSend_formulaCellsForGroupNodeChanges_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      case 18:
        objc_msgSend_formulaCellsForPivotRuleChange_outFormulaCells_(self, v17, v32, retstr, v19);
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

- (id)dgl_cellDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  if (*d == 0)
  {
    v11 = 0;
  }

  else
  {
    v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);
    v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v8, v7, v9, v10);
  }

  return v11;
}

- (id)dgl_cellDependenciesForOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_cellDependencies(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)dgl_rangeDependenciesForOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_rangeDependencies(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)dgl_rangeDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);

  return objc_msgSend_dgl_rangeDependenciesForOwnerID_(self, v6, v7, v8, v9);
}

- (id)rangeDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  v9 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(self, v6, dCopy, v7, v8, v11, v12);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&v11);

  return v9;
}

- (id)dgl_spanningRowDependenciesForOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_spanningRowDependencies(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)dgl_spanningRowDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);

  return objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v6, v7, v8, v9);
}

- (id)spanningRowDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  v9 = objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v6, dCopy, v7, v8, v11, v12);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&v11);

  return v9;
}

- (id)dgl_spanningColumnDependenciesForOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_spanningColumnDependencies(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)dgl_spanningColumnDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);

  return objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v6, v7, v8, v9);
}

- (id)spanningColumnDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  v9 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v6, dCopy, v7, v8, v11, v12);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&v11);

  return v9;
}

- (id)dgl_wholeOwnerDependenciesForOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_wholeOwnerDependencies(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)dgl_wholeOwnerDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);

  return objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self, v6, v7, v8, v9);
}

- (id)dgl_errorsForOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = objc_msgSend_errors(v5, v6, v7, v8, v9);
  }

  return v5;
}

- (id)dgl_errorsForOwnerUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);

  return objc_msgSend_dgl_errorsForOwnerID_(self, v6, v7, v8, v9);
}

- (unsigned)internalFormulaOwnerIDForFormulaOwnerUID:(const TSKUIDStruct *)d createIfMissing:(BOOL)missing
{
  if (*d == 0)
  {
    return -1;
  }

  p_formulaOwnerIDMap = &self->_formulaOwnerIDMap;
  if (missing)
  {
    return sub_2212601C0(p_formulaOwnerIDMap, &d->_lower);
  }

  else
  {
    return sub_22125FA08(p_formulaOwnerIDMap, d->_lower, d->_upper);
  }
}

- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d
{
  if (d == 0xFFFF)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_22125FFE0(&self->_formulaOwnerIDMap, d);
  }

  result._upper = v4;
  result._lower = v3;
  return result;
}

- (TSCECellRecord)dgl_findCellRecord:(const TSCECellRef *)record willModifyOnTile:(BOOL)tile
{
  tileCopy = tile;
  tableUID = record->_tableUID;
  v7 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, a2, &tableUID, tile, v4);
  v10 = v7;
  if (v7)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v7, v8, record, tileCopy, v9);
  }

  else
  {
    CellRecord_willModifyOnTile = 0;
  }

  return CellRecord_willModifyOnTile;
}

- (TSCECellRecord)dgl_findCellRecordInternal:(const TSCEInternalCellReference *)internal willModifyOnTile:(BOOL)tile
{
  tileCopy = tile;
  v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, internal->tableID, tile, v4);
  v10 = v7;
  if (v7)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v7, v8, internal, tileCopy, v9);
  }

  else
  {
    CellRecord_willModifyOnTile = 0;
  }

  return CellRecord_willModifyOnTile;
}

- (void)dgl_clearCycleFlagsOnCellAndDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record
{
  dependentsCopy = dependents;
  v36 = 0;
  v37 = &v36;
  v38 = 0x5812000000;
  v39 = sub_22136DB60;
  v40 = sub_22136DB6C;
  v41 = &unk_22188E88F;
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v28 = 0;
  v29 = &v28;
  v30 = 0x5812000000;
  v31 = sub_22136DB74;
  v32 = sub_22136DB80;
  v33 = &unk_22188E88F;
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  v26 = 0x7FFF7FFFFFFFLL;
  v27 = 0xFFFF;
  v4 = objc_opt_new();
  v25[0] = &v26;
  v5 = sub_2213773B0(v29 + 6, &v26);
  v6 = v5[4];
  v5[4] = v4;

  v25[0] = &v26;
  v7 = sub_2213773B0(v29 + 6, &v26);
  objc_msgSend_addCellRef_(v7[4], v8, &dependentsCopy, v9, v10);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2050000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2050000000;
  v24[3] = 0;
  v11 = v29;
  if (v29[9])
  {
    v12 = 1;
    do
    {
      v45 = &v26;
      v13 = sub_2213773B0(v11 + 6, &v26)[4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_22136DB88;
      v21[3] = &unk_2784633D8;
      v21[5] = v25;
      v21[6] = v24;
      v21[4] = self;
      v23 = v12 & 1;
      v21[10] = v26;
      v22 = v27;
      v21[7] = &v28;
      v21[8] = &v36;
      v21[9] = record;
      objc_msgSend_enumerateCellRefsUsingBlock_(v13, v14, v21, v15, v16);
      sub_221377650(v29 + 6, &v26);
      v17 = v29[8];
      if (v17)
      {
        v26 = *(v17 + 16);
        v27 = *(v17 + 24);
      }

      v12 = 0;
      v11 = v29;
    }

    while (v29[9]);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22136DE2C;
  v20[3] = &unk_27845F540;
  v20[4] = self;
  sub_2212DFEC0((v37 + 6), v20);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v28, 8);
  sub_221087AA4(v34);
  _Block_object_dispose(&v36, 8);
  sub_221122744(v42);
}

- (void)dgl_markCellsDirtyTraversingDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record
{
  dependentsCopy = dependents;
  v27 = 0;
  v28 = &v27;
  v29 = 0x5812000000;
  v30 = sub_22136DB74;
  v31 = sub_22136DB80;
  v32 = &unk_22188E88F;
  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  v25 = 0x7FFF7FFFFFFFLL;
  v26 = 0xFFFF;
  v24[0] = &v25;
  if (!sub_2213773B0(v33, &v25)[4])
  {
    v5 = objc_opt_new();
    v24[0] = &v25;
    v6 = sub_2213773B0(v28 + 6, &v25);
    v7 = v6[4];
    v6[4] = v5;
  }

  v24[0] = &v25;
  v8 = sub_2213773B0(v28 + 6, &v25);
  objc_msgSend_addCellRef_(v8[4], v9, &dependentsCopy, v10, v11);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2050000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2050000000;
  v23[3] = 0;
  v12 = v28;
  if (v28[9])
  {
    v13 = 1;
    do
    {
      v36 = &v25;
      v14 = sub_2213773B0(v12 + 6, &v25)[4];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_22136E14C;
      v20[3] = &unk_278463400;
      v20[4] = self;
      v20[5] = v24;
      v22 = v13 & 1;
      v20[7] = &v27;
      v20[8] = record;
      v20[9] = v25;
      v21 = v26;
      v20[6] = v23;
      objc_msgSend_enumerateCellRefsUsingBlock_(v14, v15, v20, v16, v17);
      sub_221377650(v28 + 6, &v25);
      v18 = v28[8];
      if (v18)
      {
        v25 = *(v18 + 16);
        v26 = *(v18 + 24);
      }

      v13 = 0;
      v12 = v28;
    }

    while (v28[9]);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v27, 8);
  sub_221087AA4(v33);
}

- (void)noteCorruptCellRef:(const TSCEInternalCellReference *)ref
{
  if (ref->tableID != -1 && (*&ref->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    os_unfair_lock_lock(&self->_corruptedCellRefsMutex);
    sub_2212E0198(&self->_corruptedCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, ref);
    sub_2212DFCE8(&self->_corruptedCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, ref);

    os_unfair_lock_unlock(&self->_corruptedCellRefsMutex);
  }
}

- (TSCEInternalCellRefSet)corruptCellRefs
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  os_unfair_lock_lock(&self->_corruptedCellRefsMutex);
  sub_2212DFCA0(retstr, &self->_corruptedCellRefs);

  os_unfair_lock_unlock(&self->_corruptedCellRefsMutex);
  return result;
}

- (void)resetCorruptCellRefs:(const void *)refs
{
  if (!sub_2212E0280(refs))
  {
    os_unfair_lock_lock(&self->_corruptedCellRefsMutex);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22136E5D8;
    v5[3] = &unk_27845F540;
    v5[4] = self;
    sub_2212DFEC0(refs, v5);
    os_unfair_lock_unlock(&self->_corruptedCellRefsMutex);
  }
}

- (void)pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation cellRecord:(TSCECellRecord *)record pushOnFront:(BOOL)front
{
  if (record && (record->var6 & 0x100) == 0 && objc_msgSend_addLeaf_withOptions_(self->_leafQueue, a2, evaluation, front, front) && (objc_msgSend_recalculationIsPaused(self->_calcEngine, v6, v7, v8, v9) & 1) == 0)
  {
    objc_initWeak(&location, self->_calcEngine);
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22136E6C8;
    v11[3] = &unk_278463428;
    objc_copyWeak(&v12, &location);
    dispatch_async(v10, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)dgl_pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation pushOnFront:(BOOL)front
{
  frontCopy = front;
  CellRecordInternal_willModifyOnTile = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, a2, evaluation, 0, v4);
  if (CellRecordInternal_willModifyOnTile && *(CellRecordInternal_willModifyOnTile + 16) <= 1uLL)
  {

    objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(self, v9, evaluation, CellRecordInternal_willModifyOnTile, frontCopy);
  }
}

- (void)pushCellsForImmediateEvaluation:(const void *)evaluation pushOnFront:(BOOL)front
{
  frontCopy = front;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v12 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v13) = 1;
  v10 = *evaluation;
  v11 = *(evaluation + 1);
  if (v10 != v11)
  {
    do
    {
      objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v8, v10, frontCopy, v9, v12, v13);
      v10 += 32;
    }

    while (v10 != v11);
    p_dependencyGraphLock = v12;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v13) = 0;
  sub_2212E22F0(&v12);
}

- (void)dgl_markCellDirty:(const TSCEInternalCellReference *)dirty
{
  objc_msgSend_dgl_markDependentsDirty_(self, a2, dirty, v3, v4);

  objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v7, dirty, 0, v8);
}

- (void)dgl_markDependentsDirty:(const TSCEInternalCellReference *)dirty
{
  if (objc_msgSend_dgl_intCellIsClean_(self, a2, dirty, v3, v4))
  {
    coordinate = dirty->coordinate;
    v10 = *&dirty->tableID;
    CellRecordInternal_willModifyOnTile = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, v7, dirty, 1, v8);

    objc_msgSend_dgl_markCellsDirtyTraversingDependents_startCellRecord_(self, v11, coordinate, v10, CellRecordInternal_willModifyOnTile);
  }
}

- (void)markOnlyDependentsDirty:(TSCEInternalCellReference)dirty
{
  dirtyCopy = dirty;
  objc_msgSend_flushInProgressDirtying(self, a2, *&dirty.coordinate, *&dirty.tableID, v3);
  v19 = 0;
  lock = &self->_dependencyGraphLock;
  coordinate = dirtyCopy.coordinate;
  LODWORD(v17) = *&dirtyCopy.tableID;
  v18 = 0;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v21 = 1;
  objc_msgSend_dgl_loadCacheForCell_(self, v5, &coordinate, v6, v7);
  if (objc_msgSend_dgl_cellIsClean_(self, v8, &coordinate, v9, v10))
  {
    objc_msgSend_dgl_markDependentsDirty_(self, v11, &dirtyCopy, v12, v13, coordinate, v17, v18, v19, lock);
    objc_msgSend_dgl_updateGraphWithCleanReference_skipCycleCheck_(self, v14, &coordinate, 0, v15);
  }

  os_unfair_lock_unlock(lock);
  v21 = 0;
  sub_2212E22F0(&lock);
}

- (void)wroteSpillingCells:(const void *)cells forTable:(const TSKUIDStruct *)table
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, table, table, v4);
  if (v7 != 0xFFFF)
  {
    v12 = v7;
    objc_msgSend_flushInProgressDirtying(self, v8, v9, v10, v11);
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v16 = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22136EAB0;
    v13[3] = &unk_278462C88;
    v14 = v12;
    v13[4] = self;
    TSCECellCoordSet::enumerateCoordsUsingBlock(cells, v13);
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    v16 = 0;
    sub_2212E22F0(&p_dependencyGraphLock);
  }
}

- (void)incrementalMarkCellRefDirty:(id)dirty
{
  dirtyCopy = dirty;
  v9 = objc_msgSend_startCellRef(dirtyCopy, v5, v6, v7, v8) & 0x101FFFFFFFFFFFFLL;
  if (v10 != -1 && v9 != 0x7FFF7FFFFFFFLL)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v82 = 1;
    if (objc_msgSend_isDoneDirtying(dirtyCopy, v12, v13, v14, v15))
    {
      started = objc_msgSend_startCellRef(dirtyCopy, v16, v17, v18, v19);
      LODWORD(p_started) = v20;
      if (objc_msgSend_dgl_intCellIsClean_(self, v20, &started, v21, v22))
      {
        objc_msgSend_startDirtyingCellRef(dirtyCopy, v23, v24, v25, v26);
      }

      else
      {
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v23, &started, 0, v26);
        objc_msgSend_stopDirtyingCellRef(dirtyCopy, v27, v28, v29, v30);
      }
    }

    if ((objc_msgSend_isDoneDirtying(dirtyCopy, v16, v17, v18, v19) & 1) == 0)
    {
      v39 = objc_msgSend_dependentsToDirtyByFromRef(dirtyCopy, v31, v32, v33, v34);
      v79 = 0x7FFF7FFFFFFFLL;
      v80 = 0xFFFF;
      v40 = v39[2];
      v41 = (!v40 || (v79 = *(v40 + 16), v80 = *(v40 + 24), (v79 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)) && v80 == -1;
      v42 = objc_msgSend_startTime(dirtyCopy, v35, v36, v37, v38);
      objc_msgSend_timeout(dirtyCopy, v43, v44, v45, v46);
      v52 = v51;
      started = 0;
      p_started = &started;
      v77 = 0x2050000000;
      v78 = 0;
      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x2050000000;
      v74[3] = 0;
      if (v39[3])
      {
        while (1)
        {
          v69 = &v79;
          v53 = sub_2213773B0(v39, &v79)[4];
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = sub_22136EE90;
          v71[3] = &unk_278463450;
          v71[4] = self;
          v71[5] = &started;
          v73 = v41;
          v71[8] = v79;
          v72 = v80;
          v71[6] = v74;
          v71[7] = v39;
          objc_msgSend_enumerateCellRefsUsingBlock_(v53, v54, v71, v55, v56);
          sub_221377650(v39, &v79);
          v61 = v39[2];
          if (v61)
          {
            v79 = *(v61 + 16);
            v80 = *(v61 + 24);
          }

          if (v42)
          {
            objc_msgSend_timeIntervalSinceNow(v42, v57, v58, v59, v60);
            if (v52 < -v62)
            {
              break;
            }
          }

          v41 = 0;
          if (!v39[3])
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v69 = objc_msgSend_startCellRef(dirtyCopy, v47, v48, v49, v50);
        v70 = v63;
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v63, &v69, 0, v64);
        objc_msgSend_stopDirtyingCellRef(dirtyCopy, v65, v66, v67, v68);
      }

      _Block_object_dispose(v74, 8);
      _Block_object_dispose(&started, 8);
    }

    os_unfair_lock_unlock(p_dependencyGraphLock);
    v82 = 0;
    sub_2212E22F0(&p_dependencyGraphLock);
  }
}

- (void)scheduleMarkCellRefAsDirty:(const TSCECellRef *)dirty
{
  v7 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, dirty, v3, v4);

  objc_msgSend_scheduleMarkIntCellRefAsDirty_(self, v6, v7, v6, v8);
}

- (void)scheduleMarkIntCellRefAsDirty:(TSCEInternalCellReference)dirty
{
  coordinate = dirty.coordinate;
  LODWORD(v10) = *&dirty.tableID;
  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    v5 = objc_msgSend_referencesToDirty(calcEngine, a2, *&dirty.coordinate, *&dirty.tableID, v3, coordinate, v10);
    objc_msgSend_dirtyInternalCellRef_(v5, v6, &coordinate, v7, v8);
  }
}

- (void)flushInProgressDirtying
{
  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    v10 = objc_msgSend_referencesToDirty(calcEngine, a2, v2, v3, v4);
    objc_msgSend_flushCellDirtier(v10, v6, v7, v8, v9);
  }
}

- (void)markIntRangeRefAsDirty:(const TSCEInternalRangeReference *)dirty
{
  var1 = dirty->var1;
  var0 = dirty->var0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v46 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v47 = 1;
  v9 = *&var0._topLeft & 0xFFFF00000000;
  v10 = *&var0._bottomRight & 0xFFFF00000000;
  if (var0._topLeft.row != 0x7FFFFFFFLL || v9 == 0x7FFF00000000 || v10 == 0x7FFF00000000)
  {
    if (var0._topLeft.row != 0x7FFFFFFFLL && v9 == 0x7FFF00000000 && v10 == 0x7FFF00000000 && var0._bottomRight.row != 0x7FFFFFFFLL)
    {
      var0._topLeft.column = 0;
      var0._bottomRight.column = 999;
    }
  }

  else if (var0._bottomRight.row == 0x7FFFFFFF)
  {
    var0._topLeft.row = 0;
    var0._bottomRight.row = 999999;
  }

  if (var0._topLeft.row != 0x7FFFFFFF && (*&var0._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && var0._bottomRight.row != 0x7FFFFFFF && (*&var0._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && var0._topLeft.column <= var0._bottomRight.column && var0._topLeft.row <= var0._bottomRight.row)
  {
    v16 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v6, var1, v7, v8);
    v21 = objc_msgSend_cellDependencies(v16, v17, v18, v19, v20);
    v26 = v21;
    if (v21)
    {
      objc_msgSend_cellsWithRecordsInRange_formulaCellsOnly_(v21, v22, &var0, 0, v25);
      v27 = v43;
      if (v43 != v44)
      {
        v28 = v43;
        do
        {
          objc_msgSend_scheduleMarkIntCellRefAsDirty_(self, v22, *v28++ & 0xFFFFFFFFFFFFLL, var1, v25);
        }

        while (v28 != v44);
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = objc_msgSend_rangeDependencies(v16, v22, v23, v24, v25);
    v34 = v29;
    if (v29)
    {
      objc_msgSend_dirtyAllFormulasReferencingRange_(v29, v30, *&var0._topLeft, *&var0._bottomRight, v33);
    }

    v35 = objc_msgSend_spanningRowDependencies(v16, v30, v31, v32, v33);
    v42 = objc_msgSend_spanningColumnDependencies(v16, v36, v37, v38, v39);
    if (v35)
    {
      objc_msgSend_dirtyAllFormulasReferencingRange_(v35, v40, *&var0._topLeft, *&var0._bottomRight, v41);
    }

    if (v42)
    {
      objc_msgSend_dirtyAllFormulasReferencingRange_(v42, v40, *&var0._topLeft, *&var0._bottomRight, v41);
    }

    if (v27)
    {
      operator delete(v27);
    }

    p_dependencyGraphLock = v46;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v47 = 0;
  sub_2212E22F0(&v46);
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  objc_msgSend_internalRangeReferenceForRangeRef_(self, a2, dirty, v3, v4);
  objc_msgSend_markIntRangeRefAsDirty_(self, v6, v9, v7, v8);
}

- (void)willModify
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v17 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  sub_22136F718(&__p, self->_formulaOwnerDependencies.__table_.__size_);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v5 = v20;
    do
    {
      if (v5 >= v21)
      {
        v6 = (v5 - __p) >> 3;
        if ((v6 + 1) >> 61)
        {
          sub_22107C148();
        }

        v7 = (v21 - __p) >> 2;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v21 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v8 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        if (v8)
        {
          sub_22107C1F0(&__p, v8);
        }

        *(8 * v6) = next[3];
        v5 = (8 * v6 + 8);
        v9 = (8 * v6 - (v20 - __p));
        memcpy(v9, __p, v20 - __p);
        v10 = __p;
        __p = v9;
        v20 = v5;
        v21 = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        *v5 = next[3];
        v5 += 8;
      }

      v20 = v5;
      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v17;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v18 = 0;
  v15 = __p;
  v16 = v20;
  while (v15 != v16)
  {
    objc_msgSend_willModify(*v15++, v11, v12, v13, v14);
  }

  objc_msgSend_superWillModify(self->_calcEngine, v11, v12, v13, v14);
  sub_2212E22F0(&v17);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

- (void)beginSuppressingWillModifyCalls
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v4 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  ++self->_suppressWillModifyCallsLevel;
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v5 = 0;
  sub_2212E22F0(&v4);
}

- (void)endSuppressingWillModifyCalls
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v19) = 1;
  suppressWillModifyCallsLevel = self->_suppressWillModifyCallsLevel;
  if (suppressWillModifyCallsLevel || (v7 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEDependencyTracker endSuppressingWillModifyCalls]", v4, v5, lock, v19), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v10, v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 4040, 0, "not suppressing willModify calls, so cannot end suppressing them"), v12, v8, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17), (suppressWillModifyCallsLevel = self->_suppressWillModifyCallsLevel) != 0))
  {
    self->_suppressWillModifyCallsLevel = suppressWillModifyCallsLevel - 1;
  }

  os_unfair_lock_unlock(lock);
  LOBYTE(v19) = 0;
  sub_2212E22F0(&lock);
}

- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record
{
  dependenciesCopy = dependencies;
  if (dependenciesCopy && (!record || !record->var2))
  {
    objc_msgSend_dgl_markCellsDirtyTraversingDependents_startCellRecord_(self, v8, *&dirty->coordinate, *&dirty->tableID, record);
    if (record && (record->var6 & 4) != 0)
    {
      if (record->var2 <= 1)
      {
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v9, dirty, 0, v10);
      }
    }

    else
    {
      objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(self, v9, dirty, record, v10);
    }
  }
}

- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty
{
  v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, dirty->tableID, v3, v4);
  if (v11)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v11, v7, dirty, 1, v8);
    objc_msgSend_dgl_markCellRefAsDirty_cellDependencies_cellRecord_(self, v10, dirty, v11, CellRecord_willModifyOnTile);
  }
}

- (BOOL)hasDateTimeVolatileFunctions
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v26 = 1;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = i[3];
    if (objc_msgSend_ownerIndex(v8, v3, v4, v5, v6) == 35)
    {
      v9 = objc_msgSend_cellDependencies(v8, v3, v4, v5, v6);
      v13 = v9;
      if (v9)
      {
        v14 = *(i + 8);
        v23 = 0x100000000;
        v24 = v14;
        if (objc_msgSend_hasDependentsOfCell_(v9, v10, &v23, v11, v12) & 1) != 0 || (v18 = *(i + 8), v21 = 0x200000000, v22 = v18, (objc_msgSend_hasDependentsOfCell_(v13, v15, &v21, v16, v17)))
        {

          v19 = 1;
          goto LABEL_10;
        }
      }
    }
  }

  v19 = 0;
LABEL_10:
  os_unfair_lock_unlock(lock);
  v26 = 0;
  sub_2212E22F0(&lock);
  return v19;
}

- (BOOL)hasRemoteDataFunctions
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v17) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v8 = objc_msgSend_volatileDependencies(next[3], v3, v4, v5, v6, lock, v17);
      v13 = v8;
      if (v8)
      {
        if (objc_msgSend_hasRemoteDataCells(v8, v9, v10, v11, v12))
        {
          break;
        }
      }

      next = *next;
      if (!next)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  os_unfair_lock_unlock(lock);
  LOBYTE(v17) = 0;
  sub_2212E22F0(&lock);
  return v14;
}

- (void)dgl_dirtyTimeVolatileFunctions
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v12 = v6;
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v7, v8, v9, v10) == 35)
      {
        v13 = *(next + 8);
        v14 = 0x100000000;
        v15 = v13;
        objc_msgSend_dirtyInternalCellRef_(v12, v7, &v14, v9, v10);
      }

      next = *next;
    }

    while (next);
  }
}

- (void)dirtyTimeVolatileFunctions
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v8 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  objc_msgSend_dgl_dirtyTimeVolatileFunctions(self, v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v9) = 0;
  sub_2212E22F0(&v8);
}

- (void)dgl_dirtyDateVolatileFunctions
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v12 = v6;
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v7, v8, v9, v10) == 35)
      {
        v13 = *(next + 8);
        v14 = 0x200000000;
        v15 = v13;
        objc_msgSend_dirtyInternalCellRef_(v12, v7, &v14, v9, v10);
      }

      next = *next;
    }

    while (next);
  }
}

- (void)dirtyDateVolatileFunctions
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v8 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  objc_msgSend_dgl_dirtyDateVolatileFunctions(self, v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v9) = 0;
  sub_2212E22F0(&v8);
}

- (void)dirtyDateTimeVolatileFunctions
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  objc_msgSend_dgl_dirtyDateVolatileFunctions(self, v3, v4, v5, v6);
  objc_msgSend_dgl_dirtyTimeVolatileFunctions(self, v7, v8, v9, v10);
  os_unfair_lock_unlock(lock);
  v12 = 0;
  sub_2212E22F0(&lock);
}

- (void)beginBatchingGroupCellDirtying
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v4 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  ++self->_batchingGroupCellDirtyingLevel;
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v5 = 0;
  sub_2212E22F0(&v4);
}

- (BOOL)endBatchingGroupCellDirtying
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 1;
  batchingGroupCellDirtyingLevel = self->_batchingGroupCellDirtyingLevel;
  if (!batchingGroupCellDirtyingLevel)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEDependencyTracker endBatchingGroupCellDirtying]", v5, v6, lock, v23);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 4189, 0, "cannot end group cell dirtying batching if it is not already on.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    batchingGroupCellDirtyingLevel = self->_batchingGroupCellDirtyingLevel;
    if (!batchingGroupCellDirtyingLevel)
    {
      goto LABEL_7;
    }
  }

  v19 = batchingGroupCellDirtyingLevel - 1;
  self->_batchingGroupCellDirtyingLevel = v19;
  if (!v19)
  {
    if (self->_dirtyRandomVolatileFunctionsAtEndOfDirtyBatching)
    {
      objc_msgSend_dgl_markRandomVolatileFunctionsAsDirty(self, v3, v4, v5, v6);
      v20 = 0;
      self->_dirtyRandomVolatileFunctionsAtEndOfDirtyBatching = 0;
      goto LABEL_8;
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v20 = 1;
LABEL_8:
  os_unfair_lock_unlock(lock);
  LOBYTE(v23) = 0;
  sub_2212E22F0(&lock);
  return v20;
}

- (BOOL)isBatchingGroupCellDirtying
{
  selfCopy = self;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v5 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(selfCopy) = selfCopy->_batchingGroupCellDirtyingLevel != 0;
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v6 = 0;
  sub_2212E22F0(&v5);
  return selfCopy;
}

- (void)dgl_markRandomVolatileFunctionsAsDirty
{
  if (self->_batchingGroupCellDirtyingLevel)
  {
    self->_dirtyRandomVolatileFunctionsAtEndOfDirtyBatching = 1;
  }

  else
  {
    objc_msgSend_dgl_dirtyRandomVolatileFunctions(self, a2, v2, v3, v4);
  }
}

- (void)markRandomVolatileFunctionsAsDirty
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v8 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  objc_msgSend_dgl_markRandomVolatileFunctionsAsDirty(self, v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v9) = 0;
  sub_2212E22F0(&v8);
}

- (void)dgl_dirtyRandomVolatileFunctions
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v12 = v6;
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v7, v8, v9, v10) == 35)
      {
        v13 = *(next + 8);
        v14 = 0x300000000;
        v15 = v13;
        objc_msgSend_dirtyInternalCellRef_(v12, v7, &v14, v9, v10);
      }

      next = *next;
    }

    while (next);
  }
}

- (void)dirtyRandomVolatileFunctions
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v8 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  objc_msgSend_dgl_dirtyRandomVolatileFunctions(self, v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v9) = 0;
  sub_2212E22F0(&v8);
}

- (void)dirtyAllFunctions
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v31 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v32 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v13 = next[3];
      v14 = objc_msgSend_ownerIndex(v13, v8, v9, v10, v11);
      v15 = v14 > 0x11 || ((1 << v14) & 0x204A0) == 0;
      if (v15 && v14 != 200)
      {
        v16 = objc_msgSend_cellDependencies(v13, v8, v9, v10, v11);
        v21 = v16;
        if (v16)
        {
          objc_msgSend_allCoordsContainingFormulas(v16, v17, v18, v19, v20);
          v26 = objc_msgSend_formulaOwnerId(v13, v22, v23, v24, v25);
          objc_msgSend_dirtyCoords_inOwnerId_(v6, v27, v29, v26, v28);
          sub_22107C860(v30, v30[1]);
        }
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v31;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v32 = 0;
  sub_2212E22F0(&v31);
}

- (void)dirtyForSpanningRowBug
{
  memset(v38, 0, sizeof(v38));
  v39 = 1065353216;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v37 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      LOWORD(v40) = next[8];
      if (v40 != 0xFFFF && sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v40))
      {
        v35._coordsForOwnerUid.__tree_.__begin_node_ = &v40;
        v5 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v40);
        v10 = objc_msgSend_spanningRowDependencies(v5[3], v6, v7, v8, v9);
        objc_msgSend_collectReferencesForFormulasReferencingIndices_endIndex_outFormulaCells_(v10, v11, 0, 1000, v38);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = lock;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v37 = 0;
  sub_2212E0430(v38, self, &v35);
  v16 = objc_msgSend_upgradingFormulasMinion(self->_calcEngine, v12, v13, v14, v15);
  calcEngine = v16;
  if (!v16)
  {
    calcEngine = self->_calcEngine;
  }

  v18 = calcEngine;

  v19 = self->_calcEngine;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22137064C;
  v32[3] = &unk_278460D28;
  v20 = v19;
  v33 = v20;
  v21 = v18;
  v34 = v21;
  TSCECellRefSet::enumerateOwnersUsingBlock(&v35, v32);
  os_unfair_lock_lock(lock);
  v37 = 1;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v31 = i[8];
    if (v31 != 0xFFFF && sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v31))
    {
      v40 = &v31;
      v23 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v31);
      v28 = objc_msgSend_spanningRowDependencies(v23[3], v24, v25, v26, v27);
      objc_msgSend_dirtyAllFormulasReferencingRange_(v28, v29, 255, 999999, v30);
    }
  }

  os_unfair_lock_unlock(lock);
  v37 = 0;

  sub_22107C800(&v35, v35._coordsForOwnerUid.__tree_.__end_node_.__left_);
  sub_2212E22F0(&lock);
  sub_221122744(v38);
}

- (void)dirtyCellsWithErrors
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v27 = &self->_dependencyGraphLock;
  v28 = 0;
  v7 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  os_unfair_lock_lock(p_dependencyGraphLock);
  v28 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v13 = next[3];
      v14 = objc_msgSend_errors(v13, v8, v9, v10, v11);

      if (v14)
      {
        v15 = objc_msgSend_errors(v13, v8, v9, v10, v11);
        v20 = v15;
        if (v15)
        {
          objc_msgSend_cellCoordsWithAnyErrors(v15, v16, v17, v18, v19);
        }

        else
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
        }

        v21 = objc_msgSend_formulaOwnerId(v13, v16, v17, v18, v19, v24, v25);
        objc_msgSend_dirtyCoords_inOwnerId_(v7, v22, &v24, v21, v23);
        sub_22107C860(&v25, *(&v25 + 1));
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v27;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v28 = 0;

  sub_2212E22F0(&v27);
}

- (void)dirtyCellsWithSpillErrorsInTable:(const TSKUIDStruct *)table
{
  v7 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, table, v3, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v32 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v8, table, v9, v10);
  v16 = objc_msgSend_errors(v11, v12, v13, v14, v15);
  v21 = v16;
  if (v16)
  {
    objc_msgSend_cellCoordsWithSpillingErrors(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_formulaOwnerId(v11, v22, v23, v24, v25);
    objc_msgSend_dirtyCoords_inOwnerId_(v7, v27, v29, v26, v28);
    sub_22107C860(v30, v30[1]);
  }

  os_unfair_lock_unlock(lock);
  v32 = 0;

  sub_2212E22F0(&lock);
}

- (BOOL)hasSpillingErrorsForTable:(const TSKUIDStruct *)table
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  v8 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v5, table, v6, v7);
  v13 = objc_msgSend_errors(v8, v9, v10, v11, v12);
  v18 = v13;
  if (v13)
  {
    objc_msgSend_cellCoordsWithSpillingErrors(v13, v14, v15, v16, v17);
    v19 = !TSCECellCoordSet::isEmpty(&v21);
    sub_22107C860(&v21._rowsPerColumn, v21._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  os_unfair_lock_unlock(lock);
  v23 = 0;

  sub_2212E22F0(&lock);
  return v19;
}

- (void)dirtyGeometryVolatileFunctions:(const TSKUIDStruct *)functions
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, functions, v3, v4);
  v11 = objc_msgSend_referencesToDirty(self->_calcEngine, v7, v8, v9, v10);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v33 = 1;
  v15 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v12, v6, v13, v14);
  if (objc_msgSend_ownerIndex(v15, v16, v17, v18, v19) == 1)
  {
    v30[0] = objc_msgSend_formulaOwnerUid(v15, v20, v21, v22, v23);
    v30[1] = v24;
    objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v24, v30, v25, v26);
    objc_msgSend_dirtyCellRef_(v11, v27, v31, v28, v29);
  }

  os_unfair_lock_unlock(lock);
  v33 = 0;
  sub_2212E22F0(&lock);
}

- (void)dirtyRemoteDataVolatileFunctions
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v28 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v29) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v13 = next[3];
      v14 = objc_msgSend_volatileDependencies(v13, v8, v9, v10, v11, v28, v29);

      if (v14)
      {
        v15 = objc_msgSend_volatileDependencies(v13, v8, v9, v10, v11);
        v20 = objc_msgSend_volatileRemoteDataCoordinates(v15, v16, v17, v18, v19);
        v25 = objc_msgSend_formulaOwnerId(v13, v21, v22, v23, v24);
        objc_msgSend_dirtyCoords_inOwnerId_(v6, v26, v20, v25, v27);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v28;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v29) = 0;
  sub_2212E22F0(&v28);
}

- (void)dirtyRemoteDataVolatileFunctionsForKeys:(id)keys
{
  keysCopy = keys;
  objc_msgSend_flushInProgressDirtying(self, v5, v6, v7, v8);
  v13 = objc_msgSend_referencesToDirty(self->_calcEngine, v9, v10, v11, v12);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v30) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v19 = 0;
    do
    {
      v20 = next[3];
      v21 = objc_msgSend_volatileDependencies(v20, v14, v15, v16, v17, lock, v30);

      if (v21)
      {
        v22 = objc_msgSend_volatileDependencies(v20, v14, v15, v16, v17);
        v19 |= objc_msgSend_dirtyRemoteDataVolatileCellsForKeys_refsToDirty_(v22, v23, keysCopy, v13, v24);
      }

      next = *next;
    }

    while (next);
    os_unfair_lock_unlock(lock);
    LOBYTE(v30) = 0;
    if (v19)
    {
      objc_msgSend_startRecalcTaskIfNecessary(self->_calcEngine, v25, v26, v27, v28);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    LOBYTE(v30) = 0;
  }

  sub_2212E22F0(&lock);
}

- (void)dirtyIndirectCalls
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3, v4);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v16 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v8, v9, v10, v11) == 35)
      {
        v13 = *(next + 8);
        v14 = 0x600000000;
        v15 = v13;
        objc_msgSend_dirtyInternalCellRef_(v6, v8, &v14, v10, v11);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v16;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;
  sub_2212E22F0(&v16);
}

- (void)headerStateOfTableChanged:(const TSKUIDStruct *)changed changedRows:(BOOL)rows
{
  rowsCopy = rows;
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, changed, rows, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v7, v9, v10);
  if (rowsCopy)
  {
    objc_msgSend_spanningColumnDependencies(v11, v12, v13, v14, v15, lock);
  }

  else
  {
    objc_msgSend_spanningRowDependencies(v11, v12, v13, v14, v15, lock);
  }
  v16 = ;
  v21 = v16;
  if (v16)
  {
    objc_msgSend_updateReferringFormulasForHeaderStateChange(v16, v17, v18, v19, v20);
  }

  os_unfair_lock_unlock(lock);
  v23 = 0;

  sub_2212E22F0(&lock);
}

- (unint64_t)dgl_computedNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents
{
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, precedents->tableID, v3, v4);
  if (!v6)
  {
    return 0;
  }

  v11 = v6;
  v12 = objc_msgSend_cellDependencies(v6, v7, v8, v9, v10);
  isCellInACycle = objc_msgSend_isCellInACycle_(v12, v13, precedents, v14, v15);
  v20 = objc_msgSend_computedNumberOfDirtyPrecedents_(v12, v17, precedents, v18, v19);
  v25 = objc_msgSend_rangeDependencies(v11, v21, v22, v23, v24);
  v28 = objc_msgSend_computedNumberOfDirtyPrecedents_cellIsInACycle_(v25, v26, *&precedents->coordinate, isCellInACycle, v27);
  v33 = objc_msgSend_spanningColumnDependencies(v11, v29, v30, v31, v32);
  v36 = objc_msgSend_computedNumberOfDirtyPrecedents_cellIsInACycle_(v33, v34, *&precedents->coordinate, isCellInACycle, v35);

  v41 = objc_msgSend_spanningRowDependencies(v11, v37, v38, v39, v40);
  v44 = v28 + v20 + v36 + objc_msgSend_computedNumberOfDirtyPrecedents_cellIsInACycle_(v41, v42, *&precedents->coordinate, isCellInACycle, v43);

  return v44;
}

- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record
{
  dependenciesCopy = dependencies;
  v12 = objc_msgSend_dgl_computedNumberOfDirtyPrecedents_(self, v9, precedents, v10, v11);
  v16 = v12;
  if (!dependenciesCopy || !record)
  {
    goto LABEL_14;
  }

  var2 = record->var2;
  if (v12)
  {
    if (!var2)
    {
      objc_msgSend_dgl_markDependentsDirty_(self, v13, precedents, v14, v15);
    }

    record->var6 &= ~0x100u;
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(dependenciesCopy, v13, record, v16 + 1, v15);
    goto LABEL_12;
  }

  var6 = record->var6;
  if (var2 >= 2)
  {
    record->var6 = var6 & 0xFEFF;
LABEL_11:
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(dependenciesCopy, v13, record, 1, v15);
    goto LABEL_12;
  }

  if ((record->var6 & 0x100) != 0)
  {
    record->var6 = var6 & 0xFEFF;
    if (var2)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (record->var2 == 1)
  {
    objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v13, precedents, 0, v15);
  }

LABEL_14:

  return v16;
}

- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents
{
  v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, precedents->tableID, v3, v4);
  v10 = v7;
  if (v7)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v7, v8, precedents, 1, v9);
    updated = objc_msgSend_dgl_updateNumberOfDirtyPrecedents_cellDependencies_cellRecord_(self, v12, precedents, v10, CellRecord_willModifyOnTile);
  }

  else
  {
    updated = objc_msgSend_dgl_updateNumberOfDirtyPrecedents_cellDependencies_cellRecord_(self, v8, precedents, 0, 0);
  }

  v14 = updated;

  return v14;
}

- (void)updateNumberOfDirtyPrecedents:(const void *)precedents
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v8 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213712F4;
  v6[3] = &unk_27845F540;
  v6[4] = self;
  sub_2212DFEC0(precedents, v6);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v8 = 0;
  sub_2212E22F0(&v7);
}

- (void)dgl_cellRefsForCycleCellsReferringToCell:(const TSCEInternalCellReference *)cell outCellRefs:(void *)refs
{
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, cell->tableID, refs, v4);
  v30 = objc_msgSend_cellDependencies(v7, v8, v9, v10, v11);
  if (v30)
  {
    objc_msgSend_cellRefsForCycleCellsReferringToCell_outCellRefs_(v30, v12, cell, refs, v15);
  }

  v16 = objc_msgSend_rangeDependencies(v7, v12, v13, v14, v15);
  v21 = v16;
  if (v16)
  {
    objc_msgSend_cellRefsForCycleCellsReferringToCell_outCellRefs_(v16, v17, cell, refs, v20);
  }

  v22 = objc_msgSend_spanningColumnDependencies(v7, v17, v18, v19, v20);
  objc_msgSend_cellRefsForFormulasReferringToIndex_outCellRefs_cycleCellsOnly_(v22, v23, cell->coordinate.column, refs, 1);
  v28 = objc_msgSend_spanningRowDependencies(v7, v24, v25, v26, v27);
  objc_msgSend_cellRefsForFormulasReferringToIndex_outCellRefs_cycleCellsOnly_(v28, v29, cell->coordinate.row, refs, 1);
}

- (unint64_t)dgl_popNextLeavesIfAvailable:(void *)available numLeaves:(unint64_t)leaves leafQueue:(id)queue
{
  queueCopy = queue;
  v13 = 0;
  while (v13 < leaves)
  {
    if (objc_msgSend_isSingleEvalQueueEmpty(queueCopy, v8, v9, v10, v11))
    {
      break;
    }

    v54 = 0;
    v53 = 0;
    v53 = objc_msgSend_popLeaf(queueCopy, v14, v15, v16, v17);
    v54 = v8;
    if (v8 != 0xFFFF)
    {
      v18 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v8, v10, v11);
      v23 = objc_msgSend_cellDependencies(v18, v19, v20, v21, v22);
      v27 = v23;
      if (v23)
      {
        CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v23, v24, &v53, 0, v26);
      }

      else
      {
        CellRecord_willModifyOnTile = 0;
      }

      *&v51 = v53;
      DWORD2(v51) = v54;
      *&v52 = v18;
      *(&v52 + 1) = CellRecord_willModifyOnTile;
      if (objc_msgSend_dgl_cellIsReadyForEvaluation_(self, v24, &v51, v25, v26))
      {
        os_unfair_lock_lock(&self->_evaluationInProgressLock);
        if ((sub_2212E0198(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v53) & 1) == 0)
        {
          v32 = *(available + 1);
          v33 = *(available + 2);
          if (v32 >= v33)
          {
            v41 = (v32 - *available) >> 5;
            v42 = v41 + 1;
            if ((v41 + 1) >> 59)
            {
              sub_22107C148();
            }

            v43 = v33 - *available;
            if (v43 >> 4 > v42)
            {
              v42 = v43 >> 4;
            }

            if (v43 >= 0x7FFFFFFFFFFFFFE0)
            {
              v44 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v42;
            }

            if (v44)
            {
              sub_22123E9D0(available, v44);
            }

            v45 = (32 * v41);
            v46 = v52;
            *v45 = v51;
            v45[1] = v46;
            v35 = 32 * v41 + 32;
            v47 = *(available + 1) - *available;
            v48 = 32 * v41 - v47;
            memcpy(v45 - v47, *available, v47);
            v49 = *available;
            *available = v48;
            *(available + 1) = v35;
            *(available + 2) = 0;
            if (v49)
            {
              operator delete(v49);
            }
          }

          else
          {
            v34 = v52;
            *v32 = v51;
            v32[1] = v34;
            v35 = (v32 + 2);
          }

          *(available + 1) = v35;
          sub_2212DFCE8(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v53);
          ++v13;
        }

        os_unfair_lock_unlock(&self->_evaluationInProgressLock);
      }

      else
      {
        v36 = objc_msgSend_dgl_ownerIDIsRegistered_(self, v29, v54, v30, v31);
        if (v18)
        {
          v40 = v36;
        }

        else
        {
          v40 = 1;
        }

        if ((v40 & 1) == 0 && (objc_msgSend_dgl_cellIsClean_(self, v37, &v51, v38, v39) & 1) == 0)
        {
          objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(self, v37, &v53, CellRecord_willModifyOnTile, v39);
        }

        objc_msgSend_doneEvaluatingCell_(self, v37, &v53, v38, v39);
      }
    }
  }

  return v13;
}

- (void)dgl_dirtyCellsInToDirtyQueue
{
  begin = self->_modifiedCellsToDirtyQueue.__begin_;
  end = self->_modifiedCellsToDirtyQueue.__end_;
  if (begin != end)
  {
    do
    {
      objc_msgSend_dgl_markCellRefAsDirty_(self, a2, begin++, v2, v3);
    }

    while (begin != end);
    begin = self->_modifiedCellsToDirtyQueue.__begin_;
  }

  self->_modifiedCellsToDirtyQueue.__end_ = begin;
}

- (vector<TSCECellToEvaluate,)popNextLeaves:(TSCEDependencyTracker *)self
{
  v5 = &v63;
  v63 = 0;
  v64 = &v63;
  v65 = 0x4812000000;
  v66 = sub_221371A94;
  v67 = sub_221371AB8;
  v68 = &unk_22188E88F;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  if (!a4)
  {
    v49 = 0;
    goto LABEL_25;
  }

  v6 = a4;
  sub_221371AD0(&v69, a4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v62 = 1;
  if (!objc_msgSend_hasMultiEvalLeaves(self->_leafQueue, v8, v9, v10, v11))
  {
    goto LABEL_18;
  }

  leafQueue = self->_leafQueue;
  if (!leafQueue)
  {
    goto LABEL_18;
  }

  objc_msgSend_multiEvalOwnerIDs(leafQueue, v12, v13, v14, v15);
  v19 = __p;
  v20 = v60;
  if (__p == v60)
  {
    goto LABEL_15;
  }

  v21 = __p + 2;
  do
  {
    v22 = *(v21 - 1);
    v23 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v12, v22, v17, v18);
    v31 = objc_msgSend_cellDependencies(v23, v24, v25, v26, v27);
    v32 = self->_leafQueue;
    if (v32)
    {
      objc_msgSend_cellCoordsForMultiEvalOwnerID_(v32, v28, v22, v29, v30);
      if (!v31)
      {
        goto LABEL_11;
      }

LABEL_10:
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_221371B70;
      v51[3] = &unk_278463478;
      v33 = v31;
      v55 = v22;
      v52 = v33;
      v53 = &v63;
      v54 = v23;
      TSCECellCoordSet::enumerateCoordsUsingBlock(&v56, v51);

      goto LABEL_11;
    }

    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    if (v31)
    {
      goto LABEL_10;
    }

LABEL_11:
    objc_msgSend_clearMultiEvalOwnerID_(self->_leafQueue, v28, v22, v29, v30);
    sub_22107C860(&v57, *(&v57 + 1));

    if (!--v6)
    {
      break;
    }

    v34 = v21 == v20;
    v21 += 2;
  }

  while (!v34);
  v19 = __p;
LABEL_15:
  if (v19)
  {
    v60 = v19;
    operator delete(v19);
  }

  if (v6)
  {
LABEL_18:
    v6 -= objc_msgSend_dgl_popNextLeavesIfAvailable_numLeaves_leafQueue_(self, v12, (v64 + 6), v6, self->_cycleCalculationLeafQueue);
  }

  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  v35 = sub_2212E0280(&self->_evaluationInProgressCells);
  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  if (v64[6] == v64[7] && v35)
  {
    objc_msgSend_dgl_dirtyCellsInToDirtyQueue(self, v36, v37, v38, v39);
    objc_msgSend_dgl_popNextLeavesIfAvailable_numLeaves_leafQueue_(self, v40, (v64 + 6), v6, self->_leafQueue);
    if (v64[6] == v64[7])
    {
      if (objc_msgSend_dgl_hasDirtyCellsIgnoringNRM_(self, v41, 0, v42, v43))
      {
        objc_msgSend_dgl_findAndRecordCyclesInDirtyCells(self, v44, v45, v46, v47);
        objc_msgSend_dgl_popNextLeavesIfAvailable_numLeaves_leafQueue_(self, v48, (v64 + 6), v6, self->_cycleCalculationLeafQueue);
      }
    }
  }

  os_unfair_lock_unlock(lock);
  v62 = 0;
  sub_2212E22F0(&lock);
  v5 = v64;
  v49 = v64[6];
LABEL_25:
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_22137769C(retstr, v49, v5[7], (v5[7] - v49) >> 5);
  _Block_object_dispose(&v63, 8);
  result = v69;
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  return result;
}

- (void)findAndRecordCyclesInDirtyCells
{
  if (objc_msgSend_hasDirtyCellsIgnoringNRM_(self, a2, 0, v2, v3))
  {
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v10) = 1;
    objc_msgSend_dgl_findAndRecordCyclesInDirtyCells(self, v5, v6, v7, v8, &self->_dependencyGraphLock, v10);
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    LOBYTE(v10) = 0;
    sub_2212E22F0(&v9);
  }
}

- (void)dgl_findAndRecordCyclesInDirtyCells
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  LODWORD(v13) = 1065353216;
  *__p = 0u;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = 1065353216;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = objc_msgSend_cellDependencies(i[3], a2, v2, v3, v4, v10, v11, v12, v13);
    objc_msgSend_findAndRecordCyclesInDirtyCells_outCellsInCycles_(v7, v8, &v10, self->_cycleCalculationLeafQueue, v9);
  }

  sub_2210BDEC0(v15 + 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_2210BDEC0(&v10 + 8);
}

- (void)doneEvaluatingCell:(const TSCEInternalCellReference *)cell
{
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  sub_2212DFDD0(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, cell);

  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
}

- (BOOL)rangeRefIsDirtyOrCurrentlyBeingEvaluated:(const TSCERangeRef *)evaluated
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v16 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  IsDirty = objc_msgSend_dgl_rangeRefIsDirty_(self, v6, evaluated, v7, v8);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;
  if (IsDirty)
  {
    v10 = 1;
  }

  else
  {
    os_unfair_lock_lock(&self->_evaluationInProgressLock);
    if (sub_2212E0280(&self->_evaluationInProgressCells))
    {
      v10 = 0;
    }

    else
    {
      objc_msgSend_internalRangeReferenceForRangeRef_(self, v11, evaluated, v12, v13);
      v10 = sub_2212E01E8(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v15);
    }

    os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  }

  sub_2212E22F0(&v16);
  return v10;
}

- (void)markOwnerIDHavingRecordsToPrune:(unsigned __int16)prune
{
  pruneCopy = prune;
  if (prune != 0xFFFF)
  {
    os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
    sub_22123E79C(&self->_ownerIDsWithRecordsToPrune.__table_.__bucket_list_.__ptr_, &pruneCopy);
    os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  }
}

- (void)clearOwnerIDHavingRecordsToPrune:(unsigned __int16)prune
{
  pruneCopy = prune;
  if (prune != 0xFFFF)
  {
    os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
    sub_221142C34(&self->_ownerIDsWithRecordsToPrune.__table_.__bucket_list_.__ptr_, &pruneCopy);
    os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  }
}

- (BOOL)hasCellRecordsToPrune
{
  os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
  v3 = self->_ownerIDsWithRecordsToPrune.__table_.__size_ != 0;
  os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  return v3;
}

- (unordered_set<unsigned)ownerIDsWithRecordsToPrune
{
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
  if (&self->_ownerIDsWithRecordsToPrune != retstr)
  {
    retstr->__table_.__max_load_factor_ = self->_ownerIDsWithRecordsToPrune.__table_.__max_load_factor_;
    sub_221260A8C(retstr, self->_ownerIDsWithRecordsToPrune.__table_.__first_node_.__next_, 0);
  }

  os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  return result;
}

- (void)processPruningOfCellRecords:(double)records
{
  if (objc_msgSend_hasCellRecordsToPrune(self, a2, v3, v4, v5))
  {
    lock = &self->_dependencyGraphLock;
    v8 = objc_opt_new();
    objc_msgSend_ownerIDsWithRecordsToPrune(self, v9, v10, v11, v12);
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v28 = 1;
    for (i = v26; i; i = *i)
    {
      v17 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v13, *(i + 8), v14, v15);
      v22 = v17;
      if (v17)
      {
        objc_msgSend_pruneEmptyCellRecords_timeout_(v17, v18, v8, v20, v21, records);
      }

      objc_msgSend_timeIntervalSinceNow(v8, v18, v19, v20, v21);
      v24 = -v23;

      if (v24 > records)
      {
        break;
      }
    }

    os_unfair_lock_unlock(lock);
    v28 = 0;
    sub_2210BDEC0(v25);

    sub_2212E22F0(&lock);
  }
}

- (void)dgl_updateGraphWithCleanReference:(TSCECellToEvaluate *)reference skipCycleCheck:(BOOL)check
{
  objc_msgSend_dgl_loadCacheForCell_(self, a2, reference, check, v4);
  var1 = reference->var1;
  var2 = reference->var2;
  if (var2)
  {
    var6 = var2->var6;
    if (var2->var2 >= 2 && (var6 & 2) == 0)
    {
      return;
    }

    v30 = objc_msgSend_cellDependencies(reference->var1, v6, v7, v8, v9);
    if (v30)
    {
      nullsub_75(reference);
      objc_msgSend_markCellCleanAndPushNextLeaves_(v30, v14, reference, v15, v16);
    }

    v17 = (var6 >> 1) & 1;
  }

  else
  {
    v17 = 0;
  }

  v31 = objc_msgSend_rangeDependencies(var1, v6, v7, v8, v9);
  if (v31)
  {
    objc_msgSend_decrementReferringDirtyCountAndPushNextLeaves_referencingCellIsInACycle_(v31, v18, reference, v17, v21);
  }

  v22 = objc_msgSend_spanningColumnDependencies(var1, v18, v19, v20, v21);
  v29 = objc_msgSend_spanningRowDependencies(var1, v23, v24, v25, v26);
  if (v22)
  {
    objc_msgSend_decrementReferringDirtyCountAndPushNextLeaves_referencingCellIsInACycle_(v22, v27, reference, v17, v28);
  }

  if (v29)
  {
    objc_msgSend_decrementReferringDirtyCountAndPushNextLeaves_referencingCellIsInACycle_(v29, v27, reference, v17, v28);
  }
}

- (void)dgl_updateGraphWithCleanReference:(const TSCEInternalCellReference *)reference cellRecord:(TSCECellRecord *)record
{
  v8 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, reference->tableID, record, v4);
  v11 = *reference;
  v12 = v8;
  recordCopy = record;
  objc_msgSend_dgl_updateGraphWithCleanReference_skipCycleCheck_(self, v9, &v11, 0, v10);
}

- (BOOL)dgl_cellIsClean:(const TSCECellToEvaluate *)clean
{
  v6 = objc_msgSend_cellDependencies(clean->var1, a2, clean, v3, v4);
  v10 = v6;
  if (v6)
  {
    IsClean = objc_msgSend_cellIsClean_(v6, v7, clean, v8, v9);
  }

  else
  {
    IsClean = 1;
  }

  return IsClean;
}

- (BOOL)dgl_intCellIsClean:(const TSCEInternalCellReference *)clean
{
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, clean->tableID, v3, v4);
  v10 = v6;
  if (v6)
  {
    IsClean = objc_msgSend_cellIsClean_(v6, v7, clean, v8, v9);
  }

  else
  {
    IsClean = 1;
  }

  return IsClean;
}

- (BOOL)intCellIsClean:(const TSCEInternalCellReference *)clean
{
  if (clean->tableID == -1)
  {
    return 1;
  }

  IsClean = 1;
  if ((*&clean->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v11 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v12) = 1;
    IsClean = objc_msgSend_dgl_intCellIsClean_(self, v7, clean, v8, v9, v11, v12);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v12) = 0;
    sub_2212E22F0(&v11);
  }

  return IsClean;
}

- (BOOL)cellIsClean:(const TSCECellRef *)clean
{
  v10 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, clean, v3, v4);
  v11 = v6;
  return objc_msgSend_intCellIsClean_(self, v6, &v10, v7, v8);
}

- (BOOL)dgl_rangeRefIsDirty:(const TSCERangeRef *)dirty
{
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, a2, &dirty->_tableUID, v3, v4);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_countRecordsInRange_cellRestrictions_(v6, v7, dirty, 2, v8) != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)dgl_cellIsReadyForEvaluation:(const TSCECellToEvaluate *)evaluation
{
  v6 = objc_msgSend_dgl_ownerIDIsRegistered_(self, a2, evaluation->var0.tableID, v3, v4);
  if (v6)
  {
    var2 = evaluation->var2;
    if (var2)
    {
      LOBYTE(v6) = var2->var2 == 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)numDirtyCellsInOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v6, dCopy, v7, v8);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_numDirtyCells(v9, v10, v11, v12, v13);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v18 = 0;

  sub_2212E22F0(&lock);
  return v15;
}

- (BOOL)hasFormulaAt:(const TSCECellRef *)at
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  CellRecord_willModifyOnTile = objc_msgSend_dgl_findCellRecord_willModifyOnTile_(self, v6, at, 0, v7, v11, v12);
  if (CellRecord_willModifyOnTile)
  {
    v9 = (*(CellRecord_willModifyOnTile + 38) >> 2) & 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&v11);
  return v9;
}

- (BOOL)dgl_hasDirtyCellsIgnoringNRM:(BOOL)m
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  mCopy = m;
  while (1)
  {
    if (!mCopy || objc_msgSend_ownerIndex(next[3], a2, m, v3, v4) != 7)
    {
      v7 = objc_msgSend_cellDependencies(next[3], a2, m, v3, v4);
      hasDirtyCells = objc_msgSend_hasDirtyCells(v7, v8, v9, v10, v11);

      if (hasDirtyCells)
      {
        break;
      }
    }

    next = *next;
    if (!next)
    {
      return 0;
    }
  }

  return 1;
}

- (int64_t)dgl_numDirtyCells
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = objc_msgSend_cellDependencies(next[3], a2, v2, v3, v4);
    v12 = objc_msgSend_numDirtyCells(v7, v8, v9, v10, v11);

    v6 += v12;
    next = *next;
  }

  while (next);
  return v6;
}

- (BOOL)hasDirtyCellsIgnoringNRM:(BOOL)m
{
  mCopy = m;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  LOBYTE(mCopy) = objc_msgSend_dgl_hasDirtyCellsIgnoringNRM_(self, v6, mCopy, v7, v8, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);
  return mCopy;
}

- (int64_t)numDirtyCells
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  v8 = objc_msgSend_dgl_numDirtyCells(self, v4, v5, v6, v7, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);
  return v8;
}

- (BOOL)hasEmbiggenedCoords
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v17) = 1;
  p_first_node = &self->_formulaOwnerDependencies.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v8 = objc_msgSend_ownerIndex(p_first_node[3].__next_, v3, v4, v5, v6, lock, v17);
    if (v8 == 17 || v8 == 100)
    {
      break;
    }

    v13 = objc_msgSend_embiggenedCellCoord(p_first_node[3].__next_, v9, v10, v11, v12);
    v14 = v13 != 0x7FFFFFFF && v13 > 0xFFFE;
  }

  while (!v14 && (WORD2(v13) == 0x7FFF || WORD2(v13) < 0xFFu));
  os_unfair_lock_unlock(lock);
  LOBYTE(v17) = 0;
  sub_2212E22F0(&lock);
  return p_first_node != 0;
}

- (unint64_t)numFormulaCellsInOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v8, v6, v9, v10);
  v16 = v11;
  if (v11)
  {
    v17 = objc_msgSend_numFormulaCells(v11, v12, v13, v14, v15);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v17 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v20 = 0;

  sub_2212E22F0(&lock);
  return v17;
}

- (unint64_t)numCellRecordsInOwnerUID:(const TSKUIDStruct *)d
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  v9 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v6, d, v7, v8);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_numCellRecords(v9, v10, v11, v12, v13);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v18 = 0;

  sub_2212E22F0(&lock);
  return v15;
}

- (int64_t)countNumberOfFormulaCells
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = objc_msgSend_cellDependencies(next[3], a2, v2, v3, v4);
    v12 = objc_msgSend_numFormulaCells(v7, v8, v9, v10, v11);

    v6 += v12;
    next = *next;
  }

  while (next);
  return v6;
}

- (BOOL)containsAnyTable
{
  p_first_node = &self->_formulaOwnerDependencies.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
  }

  while (p_first_node && objc_msgSend_ownerIndex(p_first_node[3].__next_, a2, v2, v3, v4) != 1);
  return p_first_node != 0;
}

- (vector<TSUCellCoord,)dgl_cellsWithRecordsInRange:(TSCEDependencyTracker *)self formulaCellsOnly:(SEL)only
{
  v6 = a5;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, only, &a4->_tableUID, a5, v5);
  v14 = objc_msgSend_cellDependencies(v9, v10, v11, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_cellsWithRecordsInRange_formulaCellsOnly_(v14, v15, a4, v6, v16);
    *&retstr->__begin_ = v19;
    retstr->__cap_ = v20;
  }

  return result;
}

- (BOOL)hasFormulaCellsUsingNowTodayRandom
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v32 = 1;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v8 = i[3];
    if (objc_msgSend_ownerIndex(v8, v3, v4, v5, v6) == 35)
    {
      v9 = objc_msgSend_cellDependencies(v8, v3, v4, v5, v6);
      v13 = v9;
      if (v9)
      {
        v14 = *(i + 8);
        v29 = 0x100000000;
        v30 = v14;
        if (objc_msgSend_hasDependentsOfCell_(v9, v10, &v29, v11, v12) & 1) != 0 || (v18 = *(i + 8), v27 = 0x200000000, v28 = v18, (objc_msgSend_hasDependentsOfCell_(v13, v15, &v27, v16, v17)) || (v22 = *(i + 8), v25 = 0x300000000, v26 = v22, (objc_msgSend_hasDependentsOfCell_(v13, v19, &v25, v20, v21)))
        {

          v23 = 1;
          goto LABEL_11;
        }
      }
    }
  }

  v23 = 0;
LABEL_11:
  os_unfair_lock_unlock(lock);
  v32 = 0;
  sub_2212E22F0(&lock);
  return v23;
}

- (vector<TSUCellCoord,)cellsReferencingRange:(TSCEDependencyTracker *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning
{
  v7 = a5;
  v54 = 0;
  v55 = &v54;
  v56 = 0x4812000000;
  v57 = sub_221365718;
  v58 = sub_22136573C;
  v59 = &unk_22188E88F;
  v61 = 0;
  v62 = 0;
  __p = 0;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v53 = 1;
  v14 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v11, &spanning->_tableUID, v12, v13);
  v19 = v14;
  if (v14)
  {
    v20 = objc_msgSend_cellDependencies(v14, v15, v16, v17, v18);
    v25 = v20;
    if (v20)
    {
      objc_msgSend_cellsReferencingRange_fromOwnerID_outFormulaCoords_(v20, v21, spanning, v7, (v55 + 6));
    }

    v26 = objc_msgSend_rangeDependencies(v19, v21, v22, v23, v24);
    v31 = v26;
    if (v26)
    {
      objc_msgSend_formulaCoordsReferencingRange_inOwnerID_outFormulaCells_(v26, v27, *&spanning->range._topLeft, *&spanning->range._bottomRight, v7, v55 + 6);
    }

    if (!a6)
    {
      row = spanning->range._topLeft.row;
      column = spanning->range._topLeft.column;
      v33 = spanning->range._bottomRight.row;
      v34 = spanning->range._bottomRight.column;
      v51._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v51._coordsForOwnerUid.__tree_.__size_ = 0;
      v51._coordsForOwnerUid.__tree_.__begin_node_ = &v51._coordsForOwnerUid.__tree_.__end_node_;
      v47 = objc_msgSend_spanningRowDependencies(v19, v27, v28, v29, v30);
      v42 = objc_msgSend_spanningColumnDependencies(v19, v35, v36, v37, v38);
      if (v47)
      {
        objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v47, v39, row, v33, &v51);
      }

      if (v42)
      {
        objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v42, v39, column, v34, &v51);
      }

      v49._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v39, v7, v40, v41);
      v49._upper = v43;
      TSCECellRefSet::subsetForOwnerUID(&v51, &v49, v50);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_22137316C;
      v48[3] = &unk_2784634A0;
      v48[4] = &v54;
      TSCECellRefSet::enumerateCellRefsUsingBlock(v50, v48);
      sub_22107C800(v50, v50[1]);

      sub_22107C800(&v51, v51._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }

  os_unfair_lock_unlock(lock);
  v53 = 0;
  v44 = v55;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211230D4(retstr, v44[6], v44[7], (v44[7] - v44[6]) >> 3);
  sub_2212E22F0(&lock);
  _Block_object_dispose(&v54, 8);
  result = __p;
  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }

  return result;
}

- (BOOL)dgl_cellIsInACycle:(const TSCEInternalCellReference *)cycle
{
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, cycle->tableID, v3, v4);
  v10 = v6;
  if (v6)
  {
    isCellInACycle = objc_msgSend_isCellInACycle_(v6, v7, cycle, v8, v9);
  }

  else
  {
    isCellInACycle = 0;
  }

  return isCellInACycle;
}

- (BOOL)cellIsInACycle:(const TSCECellRef *)cycle
{
  v3 = *&cycle->coordinate == 0x7FFFFFFF || (*&cycle->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (v3 || *&cycle->_tableUID == 0)
  {
    return 0;
  }

  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  v14 = objc_msgSend_internalCellReferenceForCellRef_(self, v6, cycle, v7, v8);
  v15 = v9;
  v12 = objc_msgSend_dgl_cellIsInACycle_(self, v9, &v14, v10, v11);
  os_unfair_lock_unlock(lock);
  v17 = 0;
  sub_2212E22F0(&lock);
  return v12;
}

- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  if (*a4 != 0)
  {
    selfCopy = self;
    v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, owner, a4, v4, v5);
    v9 = selfCopy + 2;
    v21 = selfCopy + 2;
    os_unfair_lock_lock(selfCopy + 2);
    v22 = 1;
    v13 = objc_msgSend_dgl_cellDependenciesForOwnerID_(selfCopy, v10, v8, v11, v12);
    v18 = v13;
    if (v13)
    {
      objc_msgSend_cellsInACycle(v13, v14, v15, v16, v17);
      TSCECellCoordSet::operator=(retstr, v19);
      sub_22107C860(v20, v20[1]);
      v9 = v21;
    }

    os_unfair_lock_unlock(v9);
    v22 = 0;

    return sub_2212E22F0(&v21);
  }

  return self;
}

- (BOOL)markIntCellRefDirtyIfCellContainsAFormula:(const TSCEInternalCellReference *)formula
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v5, formula->tableID, v6, v7);
  v12 = v8;
  if (v8 && objc_msgSend_containsFormula_(v8, v9, formula, v10, v11, lock))
  {
    objc_msgSend_scheduleMarkIntCellRefAsDirty_(self, v13, *&formula->coordinate, *&formula->tableID, v14);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  os_unfair_lock_unlock(lock);
  v18 = 0;

  sub_2212E22F0(&lock);
  return v15;
}

- (BOOL)intCellContainsAFormula:(const TSCEInternalCellReference *)formula
{
  if (formula->tableID == -1 || (*&formula->coordinate & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  v10 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v7, formula->tableID, v8, v9);
  v14 = v10;
  if (v10)
  {
    v4 = objc_msgSend_containsFormula_(v10, v11, formula, v12, v13);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;

  sub_2212E22F0(&lock);
  return v4;
}

- (BOOL)hasCalculatedPrecedents:(const TSCECellRef *)precedents
{
  v10 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedents, v3, v4);
  v11 = v6;
  return objc_msgSend_hasCalculatedPrecedentsInternal_(self, v6, &v10, v7, v8);
}

- (BOOL)hasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal
{
  tableID = internal->tableID;
  if (tableID == 0xFFFF || (*&internal->coordinate & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, tableID, v3, v4);
    v11 = v8;
    if (v8 && (CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v8, v9, internal, 0, v10)) != 0)
    {
      v7 = (*(CellRecord_willModifyOnTile + 38) >> 3) & 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)setHasCalculatedPrecedents:(const TSCECellRef *)precedents setting:(BOOL)setting
{
  settingCopy = setting;
  v9 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedents, setting, v4);
  v10 = v7;
  objc_msgSend_setHasCalculatedPrecedentsInternal_setting_(self, v7, &v9, settingCopy, v8);
}

- (void)setHasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal setting:(BOOL)setting
{
  settingCopy = setting;
  v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, internal->tableID, setting, v4);
  v9 = v7;
  if (v7)
  {
    v12 = v7;
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v7, v7, internal, 1, v8);
    v9 = v12;
    if (CellRecord_willModifyOnTile)
    {
      if (settingCopy)
      {
        v11 = 8;
      }

      else
      {
        v11 = 0;
      }

      *(CellRecord_willModifyOnTile + 38) = *(CellRecord_willModifyOnTile + 38) & 0xFFF7 | v11;
    }
  }
}

- (void)clearCellsCurrentlyBeingEvaluated
{
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  sub_2212E0194(&self->_evaluationInProgressCells);

  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
}

- (BOOL)cellHasPrecedents:(const TSCECellRef *)precedents
{
  v7 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedents, v3, v4);
  v9 = v8;
  v72 = v7;
  v73 = v8;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v71 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v10, v9, v11, v12);
  v18 = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

  v19 = objc_msgSend_cellDependencies(v13, v14, v15, v16, v17, lock);

  if (!v19 || (objc_msgSend_cellDependencies(v18, v20, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend_hasPrecedentsAtCoord_(v24, v25, &v72, v26, v27), v24, (v28 & 1) == 0))
  {
    v29 = objc_msgSend_rangeDependencies(v18, v20, v21, v22, v23);

    if (!v29 || (objc_msgSend_rangeDependencies(v18, v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_hasPrecedentsAtCoord_(v34, v35, precedents, v36, v37), v34, (v38 & 1) == 0))
    {
      v39 = objc_msgSend_spanningRowDependencies(v18, v30, v31, v32, v33);

      if (!v39 || (objc_msgSend_spanningRowDependencies(v18, v40, v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend_hasPrecedentsAtCoord_(v44, v45, precedents, v46, v47), v44, (v48 & 1) == 0))
      {
        v49 = objc_msgSend_spanningColumnDependencies(v18, v40, v41, v42, v43);

        if (!v49 || (objc_msgSend_spanningColumnDependencies(v18, v50, v51, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), hasPrecedentsAtCoord = objc_msgSend_hasPrecedentsAtCoord_(v54, v55, precedents, v56, v57), v54, (hasPrecedentsAtCoord & 1) == 0))
        {
          v60 = objc_msgSend_volatileDependencies(v18, v50, v51, v52, v53);

          if (v60)
          {
            v65 = objc_msgSend_volatileDependencies(v18, v61, v62, v63, v64);
            hasRemoteDataPrecedentsAtCoord = objc_msgSend_hasRemoteDataPrecedentsAtCoord_(v65, v66, precedents, v67, v68);

            goto LABEL_14;
          }

LABEL_13:
          hasRemoteDataPrecedentsAtCoord = 0;
          goto LABEL_14;
        }
      }
    }
  }

  hasRemoteDataPrecedentsAtCoord = 1;
LABEL_14:
  os_unfair_lock_unlock(lock);
  v71 = 0;
  sub_2212E22F0(&lock);
  return hasRemoteDataPrecedentsAtCoord;
}

- (TSCEReferenceSet)dgl_precedentsOfCell:(SEL)cell
{
  TSCEReferenceSet::TSCEReferenceSet(retstr, self);
  result = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, a4->tableID, v8, v9);
  v15 = result;
  if (result)
  {
    v16 = objc_msgSend_cellDependencies(result, v11, v12, v13, v14);

    if (v16)
    {
      v21 = objc_msgSend_cellDependencies(v15, v17, v18, v19, v20);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v21, v22, a4, retstr, v23);
    }

    v24 = objc_msgSend_rangeDependencies(v15, v17, v18, v19, v20);

    if (v24)
    {
      v29 = objc_msgSend_rangeDependencies(v15, v25, v26, v27, v28);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v29, v30, a4, retstr, v31);
    }

    v32 = objc_msgSend_spanningRowDependencies(v15, v25, v26, v27, v28);

    if (v32)
    {
      v37 = objc_msgSend_spanningRowDependencies(v15, v33, v34, v35, v36);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v37, v38, a4, retstr, v39);
    }

    v40 = objc_msgSend_spanningColumnDependencies(v15, v33, v34, v35, v36);

    if (v40)
    {
      v45 = objc_msgSend_spanningColumnDependencies(v15, v41, v42, v43, v44);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v45, v46, a4, retstr, v47);
    }

    v48 = objc_msgSend_volatileDependencies(v15, v41, v42, v43, v44);

    if (v48)
    {
      v53 = objc_msgSend_volatileDependencies(v15, v49, v50, v51, v52);
      objc_msgSend_addRemoteDataPrecedentsAtCoord_toReferenceSet_(v53, v54, a4, retstr, v55);
    }

    v56 = objc_msgSend_wholeOwnerDependencies(v15, v49, v50, v51, v52);

    if (v56)
    {
      v63 = objc_msgSend_wholeOwnerDependencies(v15, v57, v58, v59, v60);
      objc_msgSend_addPrecedentsOfCoord_toReferenceSet_(v63, v61, a4, retstr, v62);
    }
  }

  return result;
}

- (TSCEReferenceSet)precedentsOfCell:(SEL)cell
{
  TSCEReferenceSet::TSCEReferenceSet(retstr, self);
  v18 = objc_msgSend_internalCellReferenceForCellRef_(self, v7, a4, v8, v9);
  v19 = v10;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  objc_msgSend_dgl_precedentsOfCell_(self, v11, &v18, v12, v13);
  TSCEReferenceSet::operator=(retstr, &v15);
  TSCEReferenceSet::~TSCEReferenceSet(&v15);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;
  return sub_2212E22F0(&p_dependencyGraphLock);
}

- (BOOL)cellHasThisCellPrecedent:(const TSCECellRef *)precedent precedent:(const TSCECellRef *)a4
{
  v7 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedent, a4, v4);
  v9 = v8;
  v35 = v7;
  v36 = v8;
  v33 = objc_msgSend_internalCellReferenceForCellRef_(self, v8, a4, v10, v11);
  v34 = v12;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v32 = 1;
  v16 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v13, v9, v14, v15);
  v21 = v16;
  if (v16)
  {
    v22 = objc_msgSend_cellDependencies(v16, v17, v18, v19, v20, lock);

    if (v22)
    {
      v27 = objc_msgSend_cellDependencies(v21, v23, v24, v25, v26);
      LOBYTE(v21) = objc_msgSend_cellHasThisCellPrecedent_precedentRef_(v27, v28, &v35, &v33, v29);
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  os_unfair_lock_unlock(lock);
  v32 = 0;
  sub_2212E22F0(&lock);
  return v21;
}

- (BOOL)dgl_cellHasDeepPrecedentInRange:(const TSCEInternalCellReference *)range cellRange:(const TSCEInternalRangeReference *)cellRange
{
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, range->tableID, cellRange, v4);
  if (!v7)
  {
    return 0;
  }

  v12 = v7;
  v13 = objc_msgSend_cellDependencies(v7, v8, v9, v10, v11);

  if (!v13 || (objc_msgSend_cellDependencies(v12, v14, v15, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v18, v19, range, cellRange, v20), v18, (v21 & 1) == 0))
  {
    v22 = objc_msgSend_rangeDependencies(v12, v14, v15, v16, v17);
    HasDeepPrecedentInRange_cellRange = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v22, v23, range, cellRange, v24);

    if ((HasDeepPrecedentInRange_cellRange & 1) == 0)
    {
      v30 = objc_msgSend_spanningColumnDependencies(v12, v26, v27, v28, v29);

      if (!v30 || (objc_msgSend_spanningColumnDependencies(v12, v31, v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v35, v36, range, cellRange, v37), v35, (v38 & 1) == 0))
      {
        v40 = objc_msgSend_spanningRowDependencies(v12, v31, v32, v33, v34);

        if (v40)
        {
          v45 = objc_msgSend_spanningRowDependencies(v12, v41, v42, v43, v44);
          v39 = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v45, v46, range, cellRange, v47);

          return v39;
        }

        return 0;
      }
    }
  }

  return 1;
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSCECellRef *)range cellRange:(const TSCERangeRef *)cellRange
{
  selfCopy = self;
  v18 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, range, cellRange, v4);
  v19 = v7;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  objc_msgSend_internalRangeReferenceForRangeRef_(selfCopy, v7, cellRange, v8, v9);
  p_dependencyGraphLock = &selfCopy->_dependencyGraphLock;
  v14 = &selfCopy->_dependencyGraphLock;
  os_unfair_lock_lock(&selfCopy->_dependencyGraphLock);
  LOBYTE(selfCopy) = objc_msgSend_dgl_cellHasDeepPrecedentInRange_cellRange_(selfCopy, v11, &v18, v16, v12);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v15 = 0;
  sub_2212E22F0(&v14);
  return selfCopy;
}

- (TSCEInternalCellRefSet)cellDependentsOfCell:(SEL)cell
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v27 = 1;
  tableUID = a4->_tableUID;
  v10 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v7, &tableUID, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_cellDependencies(v10, v11, v12, v13, v14);

    if (v16)
    {
      v21 = objc_msgSend_cellDependencies(v15, v17, v18, v19, v20);
      objc_msgSend_addDependentsAtCoord_toCellReferenceSet_(v21, v22, a4, retstr, v23);
    }
  }

  os_unfair_lock_unlock(lock);
  v27 = 0;
  return sub_2212E22F0(&lock);
}

- (TSCEInternalCellRefSet)cellsInOwnerDependentOnBoth:(SEL)both precedent1:(const TSKUIDStruct *)precedent1 precedent2:(const TSCECellRef *)precedent2
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v45 = 1;
  v14 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v11, precedent1, v12, v13);
  v19 = v14;
  if (v14)
  {
    v20 = objc_msgSend_cellDependencies(v14, v15, v16, v17, v18);

    if (v20)
    {
      v42 = objc_msgSend_internalCellReferenceForCellRef_(self, v21, precedent2, v22, v23);
      v43 = v24;
      v39._rowsPerColumn.__tree_.__size_ = 0;
      v40 = objc_msgSend_internalCellReferenceForCellRef_(self, v24, a6, v25, v26);
      v41 = v27;
      v39._rectRepresentation.origin = 0;
      v39._rectRepresentation.size = 0;
      v39._rowsPerColumn.__tree_.__begin_node_ = &v39._rowsPerColumn.__tree_.__end_node_;
      v39._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v31 = objc_msgSend_cellDependencies(v19, v27, v28, v29, v30);
      objc_msgSend_addCellsDependentOnBoth_precedent2_toCellCoordSet_(v31, v32, &v42, &v40, &v39);

      v37 = objc_msgSend_formulaOwnerId(v19, v33, v34, v35, v36);
      sub_2212DFD38(retstr, v37, &v39);
      sub_22107C860(&v39._rowsPerColumn, v39._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v45 = 0;
  return sub_2212E22F0(&p_dependencyGraphLock);
}

- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport:(SEL)import
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, import, a4, v4, v5);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v26 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v27 = 1;
  if (objc_msgSend_dgl_ownerIDIsRegistered_(self, v10, v8, v11, v12))
  {
    v16 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v13, v8, v14, v15);
    v21 = v16;
    if (v16)
    {
      objc_msgSend_cellCoordinatesNeedingExcelImport(v16, v17, v18, v19, v20);
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    TSCECellCoordSet::operator=(retstr, &v23);
    sub_22107C860(&v24, *(&v24 + 1));

    p_dependencyGraphLock = v26;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v27 = 0;
  return sub_2212E22F0(&v26);
}

- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableID:(unsigned __int16)d
{
  if (d != 0xFFFF)
  {
    dCopy = d;
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v12 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v9, dCopy, v10, v11);
    objc_msgSend_setTableRangesForTable_bodyRange_(v12, v13, table, range, v14);
    v18 = objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v15, dCopy, v16, v17);
    objc_msgSend_setTableRangesForTable_bodyRange_(v18, v19, table, range, v20);
    os_unfair_lock_unlock(lock);
    v22 = 0;

    sub_2212E22F0(&lock);
  }
}

- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableUID:(const TSKUIDStruct *)d
{
  v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, range, d);

  objc_msgSend_setTableAndBodyRangesForTable_bodyRange_tableID_(self, v8, table, range, v9);
}

- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, table, v3, v4);
  v7 = 1;
  if (v6 != 0xFFFF)
  {
    v8 = v6;
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v27 = 1;
    v12 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v9, v8, v10, v11);
    v17 = v12;
    if (v12)
    {
      valid = objc_msgSend_assertValidTableRanges(v12, v13, v14, v15, v16, lock);
    }

    else
    {
      valid = 1;
    }

    v19 = objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v13, v8, v15, v16, lock);
    v24 = v19;
    v7 = (v19 == 0) & valid;
    if (v19 && ((valid ^ 1) & 1) == 0)
    {
      v7 = objc_msgSend_assertValidTableRanges(v19, v20, v21, v22, v23);
    }

    os_unfair_lock_unlock(lock);
    v27 = 0;

    sub_2212E22F0(&lock);
  }

  return v7;
}

- (id)dgl_ownerDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  if (d == 0xFFFF)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy);
    if (v3)
    {
      v3 = v3[3];
    }
  }

  return v3;
}

- (id)dgl_ownerDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3, v4);

  return objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v6, v7, v8, v9);
}

- (void)detectAndRepairDirtyCellsAreOnLeafQueue
{
  v30 = 0;
  v31 = &v30;
  v32 = 0xB812000000;
  v33 = sub_2213749E0;
  v34 = sub_2213749EC;
  v35 = "0,0";
  TSCEReferenceSet::TSCEReferenceSet(&v36, self);
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2213749F4;
  v29[3] = &unk_2784634C8;
  v29[4] = &v30;
  sub_2212DFEC0(&self->_evaluationInProgressCells, v29);
  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v28 = 1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_221374A04;
  v26[3] = &unk_2784634C8;
  v26[4] = &v30;
  sub_2212DFEC0(&self->_evaluationInProgressCells, v26);
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  objc_msgSend_addAllLeavesToSet_(self->_leafQueue, v3, v24, v4, v5);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_221374A14;
  v23[3] = &unk_2784634C8;
  v23[4] = &v30;
  sub_2212DFEC0(v24, v23);
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v11 = i[3];
    v12 = objc_msgSend_cellDependencies(v11, v6, v7, v8, v9);

    if (v12)
    {
      v13 = objc_msgSend_cellDependencies(v11, v6, v7, v8, v9);
      hasDirtyCells = objc_msgSend_hasDirtyCells(v13, v14, v15, v16, v17);

      if (hasDirtyCells)
      {
        v19 = objc_msgSend_cellDependencies(v11, v6, v7, v8, v9);
        objc_msgSend_detectAndRepairDirtyCellsAreOnLeafQueue_(v19, v20, (v31 + 6), v21, v22);
      }
    }
  }

  os_unfair_lock_unlock(lock);
  v28 = 0;
  sub_221122744(v24);
  sub_2212E22F0(&lock);
  _Block_object_dispose(&v30, 8);
  TSCEReferenceSet::~TSCEReferenceSet(&v36);
}

- (void)assertDirtyPrecedentsCountConsistency
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v8 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  objc_msgSend_dgl_assertDirtyPrecedentsCountConsistency(self, v4, v5, v6, v7, v8, v9);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v9) = 0;
  sub_2212E22F0(&v8);
}

- (BOOL)verifyAllOwnersAreKnown
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v4 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v5 = 0;
  sub_2212E22F0(&v4);
  return 1;
}

- (void)markEverythingClean
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v16 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v17) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v9 = next[3];
      v10 = objc_msgSend_cellDependencies(v9, v4, v5, v6, v7, v16, v17);

      if (v10)
      {
        v11 = objc_msgSend_cellDependencies(v9, v4, v5, v6, v7);
        objc_msgSend_markEverythingClean(v11, v12, v13, v14, v15);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v16;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v17) = 0;
  sub_2212E22F0(&v16);
}

- (TSCEInternalCellReference)internalCellReferenceForCellRef:(const TSCECellRef *)ref
{
  tableUID = ref->_tableUID;
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, &tableUID, v3, v4);
  v7 = *&ref->coordinate & 0xFFFFFFFFFFFFLL;
  result.coordinate = v7;
  result.tableID = v6;
  result.reserved = HIWORD(v6);
  return result;
}

- (TSCECellRef)cellRefForInternalCellReference:(SEL)reference
{
  result = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, reference, a4->tableID, v4, v5);
  retstr->coordinate = a4->coordinate;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v9;
  return result;
}

- (TSCEInternalRangeReference)internalRangeReferenceForRangeRef:(SEL)ref
{
  result = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, ref, &a4->_tableUID, v4, v5);
  *&retstr->var1 = 0;
  retstr->var0 = a4->range;
  retstr->var1 = result;
  return result;
}

- (TSCERangeRef)rangeRefForInternalRangeReference:(SEL)reference
{
  result = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, reference, a4->var1, v4, v5);
  retstr->range = a4->var0;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v9;
  return result;
}

- (void)encodeToArchive:(void *)archive save31FormatAlso:(BOOL)also embiggenedFormatOnly:(BOOL)only archiver:(id)archiver
{
  onlyCopy = only;
  alsoCopy = also;
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v11 = *(archive + 15);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive>(v12);
    *(archive + 15) = v11;
  }

  sub_22125F390(&self->_formulaOwnerIDMap, v11);
  v17 = atomic_load(&self->_numberOfFormulas);
  *(archive + 4) |= 2u;
  *(archive + 16) = v17;
  if (alsoCopy && ~onlyCopy && (objc_msgSend_containsAnyTable(self, v13, v14, v15, v16) & 1) == 0)
  {
    for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
    {
      v156 = i[3];
      v157 = objc_msgSend_spanningColumnDependencies(v156, v13, v18, v15, v16);

      if (v157)
      {
        v162 = objc_msgSend_spanningColumnDependencies(v156, v158, v159, v160, v161);
        v167 = objc_msgSend_tooLargeFor3_1FileFormat(v162, v163, v164, v165, v166) ^ 1;
      }

      else
      {
        v167 = 1;
      }

      v168 = objc_msgSend_spanningRowDependencies(v156, v158, v159, v160, v161);

      if (v168)
      {
        if (!v167)
        {
          goto LABEL_7;
        }

        v169 = objc_msgSend_spanningRowDependencies(v156, v13, v18, v15, v16);
        v174 = objc_msgSend_tooLargeFor3_1FileFormat(v169, v170, v171, v172, v173);

        if (v174)
        {
          goto LABEL_7;
        }
      }

      else if (!v167)
      {
        goto LABEL_7;
      }
    }

    v19 = 1;
  }

  else
  {
LABEL_7:
    v19 = 0;
  }

  for (j = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; j; j = *j)
  {
    v21 = j[3];
    if (v21)
    {
      objc_msgSend_setSaveAsEmbiggenedFormat_(j[3], v13, onlyCopy, v15, v16);
      v24 = *(archive + 14);
      if (!v24)
      {
        goto LABEL_15;
      }

      v25 = *(archive + 26);
      v26 = *v24;
      if (v25 >= *v24)
      {
        if (v26 == *(archive + 27))
        {
LABEL_15:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 96));
          v24 = *(archive + 14);
          v26 = *v24;
        }

        *v24 = v26 + 1;
        v27 = MEMORY[0x223DA0390](*(archive + 12));
        v28 = *(archive + 26);
        v29 = *(archive + 14) + 8 * v28;
        *(archive + 26) = v28 + 1;
        *(v29 + 8) = v27;
        objc_msgSend_setStrongReference_message_(archiverCopy, v30, v21, v27, v31);
        continue;
      }

      *(archive + 26) = v25 + 1;
      objc_msgSend_setStrongReference_message_(archiverCopy, v22, v21, *&v24[2 * v25 + 2], v23);
    }
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v13, 6, archive, v16);
  if (v19)
  {
    next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
    if (next)
    {
      while (1)
      {
        v36 = next[3];
        v37 = *(next + 8);
        v176._lower = 0;
        v176._upper = 0;
        v176._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v32, v37, v33, v34, v175);
        v176._upper = v38;
        v39 = *(archive + 5);
        if (!v39)
        {
          goto LABEL_25;
        }

        v40 = *(archive + 8);
        v41 = *v39;
        if (v40 >= *v39)
        {
          break;
        }

        *(archive + 8) = v40 + 1;
        v42 = *&v39[2 * v40 + 2];
LABEL_27:
        *(v42 + 16) |= 1u;
        v45 = *(v42 + 24);
        if (!v45)
        {
          v46 = *(v42 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = MEMORY[0x223DA0300](v46);
          *(v42 + 24) = v45;
        }

        TSKUIDStruct::saveToMessage(&v176, v45);
        v51 = objc_msgSend_cellDependencies(v36, v47, v48, v49, v50);

        if (v51)
        {
          *(v42 + 16) |= 2u;
          v56 = *(v42 + 32);
          if (!v56)
          {
            v57 = *(v42 + 8);
            if (v57)
            {
              v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
            }

            v56 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesArchive>(v57);
            *(v42 + 32) = v56;
          }

          v58 = objc_msgSend_cellDependencies(v36, v52, v53, v54, v55);
          objc_msgSend_encodeToArchive_(v58, v59, v56, v60, v61);
        }

        v62 = objc_msgSend_rangeDependencies(v36, v52, v53, v54, v55);

        if (v62)
        {
          *(v42 + 16) |= 4u;
          v67 = *(v42 + 40);
          if (!v67)
          {
            v68 = *(v42 + 8);
            if (v68)
            {
              v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
            }

            v67 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v68);
            *(v42 + 40) = v67;
          }

          v69 = objc_msgSend_rangeDependencies(v36, v63, v64, v65, v66);
          objc_msgSend_encodeToArchive_(v69, v70, v67, v71, v72);
        }

        v73 = objc_msgSend_spanningColumnDependencies(v36, v63, v64, v65, v66);

        if (v73)
        {
          *(v42 + 16) |= 0x10u;
          v78 = *(v42 + 56);
          if (!v78)
          {
            v79 = *(v42 + 8);
            if (v79)
            {
              v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
            }

            v78 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v79);
            *(v42 + 56) = v78;
          }

          v80 = objc_msgSend_spanningColumnDependencies(v36, v74, v75, v76, v77);
          objc_msgSend_encodeToArchive_(v80, v81, v78, v82, v83);
        }

        v84 = objc_msgSend_spanningRowDependencies(v36, v74, v75, v76, v77);

        if (v84)
        {
          *(v42 + 16) |= 0x20u;
          v89 = *(v42 + 64);
          if (!v89)
          {
            v90 = *(v42 + 8);
            if (v90)
            {
              v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
            }

            v89 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v90);
            *(v42 + 64) = v89;
          }

          v91 = objc_msgSend_spanningRowDependencies(v36, v85, v86, v87, v88);
          objc_msgSend_encodeToArchive_(v91, v92, v89, v93, v94);
        }

        v95 = objc_msgSend_volatileDependencies(v36, v85, v86, v87, v88);

        if (v95)
        {
          *(v42 + 16) |= 8u;
          v100 = *(v42 + 48);
          if (!v100)
          {
            v101 = *(v42 + 8);
            if (v101)
            {
              v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
            }

            v100 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesArchive>(v101);
            *(v42 + 48) = v100;
          }

          v102 = objc_msgSend_volatileDependencies(v36, v96, v97, v98, v99);
          objc_msgSend_encodeToArchive_(v102, v103, v100, v104, v105);
        }

        v106 = objc_msgSend_wholeOwnerDependencies(v36, v96, v97, v98, v99);

        if (v106)
        {
          *(v42 + 16) |= 0x80u;
          v111 = *(v42 + 80);
          if (!v111)
          {
            v112 = *(v42 + 8);
            if (v112)
            {
              v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
            }

            v111 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesArchive>(v112);
            *(v42 + 80) = v111;
          }

          v113 = objc_msgSend_wholeOwnerDependencies(v36, v107, v108, v109, v110);
          objc_msgSend_encodeToArchive_(v113, v114, v111, v115, v116);
        }

        v117 = objc_msgSend_errors(v36, v107, v108, v109, v110);

        if (v117)
        {
          *(v42 + 16) |= 0x100u;
          v122 = *(v42 + 88);
          if (!v122)
          {
            v123 = *(v42 + 8);
            if (v123)
            {
              v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
            }

            v122 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v123);
            *(v42 + 88) = v122;
          }

          v124 = objc_msgSend_errors(v36, v118, v119, v120, v121);
          objc_msgSend_encodeToArchive_(v124, v125, v122, v126, v127);
        }

        v128 = objc_msgSend_formulaOwner(v36, v118, v119, v120, v121);
        v175 = &unk_2835174A8;
        v129 = TSUProtocolCast();

        if (v129 && objc_msgSend_ownerIndex(v36, v130, v131, v132, v133, &unk_2835174A8) != 100)
        {
          v141 = objc_msgSend_objectToArchiveInDependencyTracker(v129, v134, v135, v136, v137);
          if (v141)
          {
            *(v42 + 16) |= 0x40u;
            v142 = *(v42 + 72);
            if (!v142)
            {
              v143 = *(v42 + 8);
              if (v143)
              {
                v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
              }

              v142 = MEMORY[0x223DA0390](v143);
              *(v42 + 72) = v142;
            }

            objc_msgSend_setWeakReference_message_(archiverCopy, v138, v141, v142, v140);
          }

          else
          {
            v144 = MEMORY[0x277D81150];
            v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "[TSCEDependencyTracker encodeToArchive:save31FormatAlso:embiggenedFormatOnly:archiver:]", v139, v140);
            v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v147, v148);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v150, v145, v149, 6216, 0, "failed to get an object to archive for a formula owner that needs registration. Registration failure at unarchive time is likely.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152, v153, v154);
          }
        }

        next = *next;
        if (!next)
        {
          goto LABEL_84;
        }
      }

      if (v41 == *(archive + 9))
      {
LABEL_25:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
        v39 = *(archive + 5);
        v41 = *v39;
      }

      *v39 = v41 + 1;
      v42 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaOwnerInfoArchive>(*(archive + 3));
      v43 = *(archive + 8);
      v44 = *(archive + 5) + 8 * v43;
      *(archive + 8) = v43 + 1;
      *(v44 + 8) = v42;
      goto LABEL_27;
    }
  }

LABEL_84:
}

- (TSCEDependencyTracker)initWithCalcEngine:(id)engine archive:(const void *)archive unarchiver:(id)unarchiver
{
  engineCopy = engine;
  unarchiverCopy = unarchiver;
  v13 = objc_msgSend_initWithCalcEngine_(self, v10, engineCopy, v11, v12);
  v18 = v13;
  if (v13)
  {
    v19 = *(archive + 8);
    if (*(archive + 16))
    {
      sub_22125F640(v13 + 24, *(archive + 15));
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(engineCopy, v14, v15, v16, v17);
      if (v19 >= 1)
      {
        v20 = 8;
        v21 = v19;
        do
        {
          v22 = TSKUIDStruct::loadFromMessage();
          sub_22125FA70(&v18->_formulaOwnerIDMap, v22, v23);
          v20 += 8;
          --v21;
        }

        while (v21);
      }
    }

    v24 = *(archive + 26);
    if (v24)
    {
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = sub_221375AB0;
      v109[3] = &unk_27845D8D8;
      v110 = v18;
      v25 = unarchiverCopy;
      v26 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v25, v27, archive + 96, v26, 0, v109);
    }

    else
    {
      p_dependencyGraphLock = &v18->_dependencyGraphLock;
      v107 = &v18->_dependencyGraphLock;
      os_unfair_lock_lock(&v18->_dependencyGraphLock);
      v108 = 1;
      if (v19 >= 1)
      {
        v95 = engineCopy;
        v29 = v19;
        v30 = 8;
        v94 = v19;
        do
        {
          v31 = *(*(archive + 5) + v30);
          v105 = 0;
          v106 = 0;
          v105 = TSKUIDStruct::loadFromMessage();
          v106 = v32;
          if (v105 | v32)
          {
            v104 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v18, v32, &v105, v33, v34);
            if (sub_2210C3024(&v18->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v104))
            {
              v111 = &v104;
              v39 = sub_221376DD0(&v18->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v104)[3];
            }

            else
            {
              v40 = [TSCEFormulaOwnerDependencies alloc];
              v45 = objc_msgSend_context(v18->_calcEngine, v41, v42, v43, v44);
              v39 = objc_msgSend_initWithContext_dependencyTracker_ownerID_ownerUID_owner_ownerIndex_(v40, v46, v45, v18, v104, &v105, 0, 0);

              v111 = &v104;
              v47 = sub_221376DD0(&v18->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v104);
              objc_storeStrong(v47 + 3, v39);
            }

            v48 = *(v31 + 16);
            if ((v48 & 2) != 0)
            {
              v49 = objc_msgSend_cellDependencies(v39, v35, v36, v37, v38);
              v53 = v49;
              if (*(v31 + 32))
              {
                objc_msgSend_readFromArchive_(v49, v50, *(v31 + 32), v51, v52);
              }

              else
              {
                objc_msgSend_readFromArchive_(v49, v50, &TSCE::_CellDependenciesArchive_default_instance_, v51, v52);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 4) != 0)
            {
              v54 = objc_msgSend_rangeDependencies(v39, v35, v36, v37, v38);
              v58 = v54;
              if (*(v31 + 40))
              {
                objc_msgSend_readFromArchive_(v54, v55, *(v31 + 40), v56, v57);
              }

              else
              {
                objc_msgSend_readFromArchive_(v54, v55, &TSCE::_RangeDependenciesArchive_default_instance_, v56, v57);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 0x10) != 0)
            {
              v59 = objc_msgSend_spanningColumnDependencies(v39, v35, v36, v37, v38);
              v63 = v59;
              if (*(v31 + 56))
              {
                objc_msgSend_readFromArchive_(v59, v60, *(v31 + 56), v61, v62);
              }

              else
              {
                objc_msgSend_readFromArchive_(v59, v60, &TSCE::_SpanningDependenciesArchive_default_instance_, v61, v62);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 0x20) != 0)
            {
              v64 = objc_msgSend_spanningRowDependencies(v39, v35, v36, v37, v38);
              v68 = v64;
              if (*(v31 + 64))
              {
                objc_msgSend_readFromArchive_(v64, v65, *(v31 + 64), v66, v67);
              }

              else
              {
                objc_msgSend_readFromArchive_(v64, v65, &TSCE::_SpanningDependenciesArchive_default_instance_, v66, v67);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 8) != 0)
            {
              v69 = objc_msgSend_volatileDependencies(v39, v35, v36, v37, v38);
              v73 = v69;
              if (*(v31 + 48))
              {
                objc_msgSend_readFromArchive_(v69, v70, *(v31 + 48), v71, v72);
              }

              else
              {
                objc_msgSend_readFromArchive_(v69, v70, &TSCE::_VolatileDependenciesArchive_default_instance_, v71, v72);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 0x80) != 0)
            {
              v74 = objc_msgSend_wholeOwnerDependencies(v39, v35, v36, v37, v38);
              v78 = v74;
              if (*(v31 + 80))
              {
                objc_msgSend_readFromArchive_(v74, v75, *(v31 + 80), v76, v77);
              }

              else
              {
                objc_msgSend_readFromArchive_(v74, v75, &TSCE::_WholeOwnerDependenciesArchive_default_instance_, v76, v77);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 0x100) != 0)
            {
              v111 = &v104;
              v79 = sub_221376DD0(&v18->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v104);
              v84 = objc_msgSend_errors(v79[3], v80, v81, v82, v83);
              v88 = v84;
              if (*(v31 + 88))
              {
                objc_msgSend_readFromArchive_(v84, v85, *(v31 + 88), v86, v87);
              }

              else
              {
                objc_msgSend_readFromArchive_(v84, v85, &TSCE::_CellErrorsArchive_default_instance_, v86, v87);
              }

              v48 = *(v31 + 16);
            }

            if ((v48 & 0x40) != 0)
            {
              v89 = *(v31 + 72);
              v102[0] = MEMORY[0x277D85DD0];
              v102[1] = 3221225472;
              v102[2] = sub_221375E58;
              v102[3] = &unk_2784634F0;
              v103 = v39;
              sub_221375DAC(unarchiverCopy, v89, &unk_2835174A8, v102);
            }
          }

          v30 += 8;
          --v29;
        }

        while (v29);
        p_dependencyGraphLock = v107;
        LODWORD(v19) = v94;
        engineCopy = v95;
        v24 = 0;
      }

      os_unfair_lock_unlock(p_dependencyGraphLock);
      v108 = 0;
      sub_2212E22F0(&v107);
    }

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = sub_221375E64;
    v96[3] = &unk_278463518;
    v99 = v24;
    v97 = v18;
    v98 = unarchiverCopy;
    v100 = v19;
    v101 = 1;
    objc_msgSend_addFinalizeHandler_(v98, v90, v96, v91, v92);
  }

  return v18;
}

- (void)registerFormulaOwners
{
  v76 = *MEMORY[0x277D85DE8];
  v58 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = self->_formulaOwnersToRegister;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v70, v75, 16);
  if (v7)
  {
    v8 = *v71;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v70 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = objc_msgSend_objectToArchiveInDependencyTracker(v10, v11, v12, v13, v14);
        }

        else
        {
          v15 = v10;
        }

        v16 = v15;
        v57 = &unk_2835174A8;
        v17 = TSUProtocolCast();
        v22 = v17;
        if (v17)
        {
          if (objc_msgSend_registerLast(v17, v18, v19, v20, v21, &unk_2835174A8))
          {
            objc_msgSend_addObject_(v58, v23, v22, v25, v26);
          }

          else
          {
            calcEngine = self->_calcEngine;
            v28 = objc_msgSend_ownerKind(v22, v23, v24, v25, v26);
            objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v22, v29, calcEngine, v28, v30);
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v70, v75, 16);
    }

    while (v7);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v32 = v58;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v66, v74, 16);
  if (v38)
  {
    v39 = *v67;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v67 != v39)
        {
          objc_enumerationMutation(v32);
        }

        v41 = *(*(&v66 + 1) + 8 * j);
        v42 = self->_calcEngine;
        v43 = objc_msgSend_ownerKind(v41, v34, v35, v36, v37, v57);
        objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v41, v44, v42, v43, v45);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v66, v74, 16);
    }

    while (v38);
  }

  sub_221260060(&self->_formulaOwnerIDMap, v64);
  for (k = v65; k; k = *k)
  {
    v47 = *(k + 8);
    self->_hasOwnerIdsToUnregister = 1;
    LOWORD(lock) = v47;
    HIDWORD(lock) = 0;
    sub_221376524(&self->_ownerIdsToUnregister, &lock);
  }

  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v63 = 1;
  for (m = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; m; m = *m)
  {
    v53 = m[3];
    if ((objc_msgSend_isRegisteredWithCalcEngine(v53, v48, v49, v50, v51, v57) & 1) == 0)
    {
      v54 = objc_msgSend_ownerIndex(v53, v48, v49, v50, v51);
      if (v54 != 7 && v54 != 200)
      {
        v55 = *(m + 8);
        if (!sub_2212600E4(&self->_formulaOwnerIDMap, v55))
        {
          sub_22125FF5C(&self->_formulaOwnerIDMap, v55);
          self->_hasOwnerIdsToUnregister = 1;
          LOWORD(v61) = v55;
          HIDWORD(v61) = 0;
          sub_221376524(&self->_ownerIdsToUnregister, &v61);
        }
      }
    }
  }

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_2213765F8;
  v60[3] = &unk_278463540;
  v60[4] = self;
  sub_2212601E0(&self->_formulaOwnerIDMap._lock, v60);
  os_unfair_lock_unlock(lock);
  v63 = 0;
  formulaOwnersToRegister = self->_formulaOwnersToRegister;
  self->_formulaOwnersToRegister = 0;

  sub_2212E22F0(&lock);
  sub_2210BDEC0(v64);
}

- (void)addSubOwnerAliasesForUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v79 = objc_msgSend_hiddenStateForRowsOwnerUID(upgradeCopy, v5, v6, v7, v8);
  v80 = v9;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(upgradeCopy, v9, v10, v11, v12);
  v78 = v13;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_hiddenStateForColumnsOwnerUID(upgradeCopy, v14, v15, v16, v17);
  v80 = v18;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(upgradeCopy, v18, v19, v20, v21);
  v78 = v22;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_conditionalStyleOwnerUID(upgradeCopy, v23, v24, v25, v26);
  v80 = v27;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(upgradeCopy, v27, v28, v29, v30);
  v78 = v31;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_sortRuleReferenceTrackerOwnerUID(upgradeCopy, v32, v33, v34, v35);
  v80 = v36;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(upgradeCopy, v36, v37, v38, v39);
  v78 = v40;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_mergeOwnerUID(upgradeCopy, v41, v42, v43, v44);
  v80 = v45;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextMergeOwnerUID(upgradeCopy, v45, v46, v47, v48);
  v78 = v49;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_pencilAnnotationOwnerUID(upgradeCopy, v50, v51, v52, v53);
  v80 = v54;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(upgradeCopy, v54, v55, v56, v57);
  v78 = v58;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_categoryAggregatesOwnerUID(upgradeCopy, v59, v60, v61, v62);
  v80 = v63;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(upgradeCopy, v63, v64, v65, v66);
  v78 = v67;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
  v79 = objc_msgSend_groupByUID(upgradeCopy, v68, v69, v70, v71);
  v80 = v72;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextGroupByUID(upgradeCopy, v72, v73, v74, v75);
  v78 = v76;
  sub_221260314(&self->_formulaOwnerIDMap, &v79, &HiddenStateForRowsOwnerUID);
}

- (void)upgradeOneOwnerUID:(const TSKUIDStruct *)d updatedOwnerUID:(const TSKUIDStruct *)iD baseOwnerUID:(const TSKUIDStruct *)uID ownerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  if (*d != *iD)
  {
    IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, d, 0, uID);
    v15 = IfMissing;
    if (IfMissing != 0xFFFF)
    {
      sub_221260398(&self->_formulaOwnerIDMap, IfMissing, iD);
      v11 = sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v15);
      if (v11)
      {
        v12 = v11[3];
        v14 = v12;
        if (v12)
        {
          objc_msgSend_resetOwnerUIDForUpgrade_forBaseOwner_ownerKind_(v12, v13, iD, uID, kindCopy);
        }
      }
    }
  }
}

- (void)upgradeToSubOwnerUIDForOwners:(id)owners
{
  ownersCopy = owners;
  v9 = objc_msgSend_tableUID(ownersCopy, v5, v6, v7, v8);
  v11 = v10;
  if (v9 != objc_msgSend_nextTableUID(ownersCopy, v10, v12, v13, v14) || v11 != v15)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEDependencyTracker upgradeToSubOwnerUIDForOwners:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 6530, 0, "Not expecting tableUID to be changing");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v106[0] = objc_msgSend_nextTableUID(ownersCopy, v15, v16, v17, v18);
  v106[1] = v30;
  v104 = objc_msgSend_hiddenStateForRowsOwnerUID(ownersCopy, v30, v31, v32, v33);
  v105 = v34;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(ownersCopy, v34, v35, v36, v37);
  v103 = v38;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v38, &v104, &HiddenStateForRowsOwnerUID, v106, 4);
  v104 = objc_msgSend_hiddenStateForColumnsOwnerUID(ownersCopy, v39, v40, v41, v42);
  v105 = v43;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(ownersCopy, v43, v44, v45, v46);
  v103 = v47;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v47, &v104, &HiddenStateForRowsOwnerUID, v106, 11);
  v104 = objc_msgSend_conditionalStyleOwnerUID(ownersCopy, v48, v49, v50, v51);
  v105 = v52;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(ownersCopy, v52, v53, v54, v55);
  v103 = v56;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v56, &v104, &HiddenStateForRowsOwnerUID, v106, 3);
  v104 = objc_msgSend_sortRuleReferenceTrackerOwnerUID(ownersCopy, v57, v58, v59, v60);
  v105 = v61;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(ownersCopy, v61, v62, v63, v64);
  v103 = v65;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v65, &v104, &HiddenStateForRowsOwnerUID, v106, 6);
  v104 = objc_msgSend_mergeOwnerUID(ownersCopy, v66, v67, v68, v69);
  v105 = v70;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextMergeOwnerUID(ownersCopy, v70, v71, v72, v73);
  v103 = v74;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v74, &v104, &HiddenStateForRowsOwnerUID, v106, 5);
  v104 = objc_msgSend_pencilAnnotationOwnerUID(ownersCopy, v75, v76, v77, v78);
  v105 = v79;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(ownersCopy, v79, v80, v81, v82);
  v103 = v83;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v83, &v104, &HiddenStateForRowsOwnerUID, v106, 10);
  v104 = objc_msgSend_categoryAggregatesOwnerUID(ownersCopy, v84, v85, v86, v87);
  v105 = v88;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(ownersCopy, v88, v89, v90, v91);
  v103 = v92;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v92, &v104, &HiddenStateForRowsOwnerUID, v106, 9);
  v104 = objc_msgSend_groupByUID(ownersCopy, v93, v94, v95, v96);
  v105 = v97;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextGroupByUID(ownersCopy, v97, v98, v99, v100);
  v103 = v101;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v101, &v104, &HiddenStateForRowsOwnerUID, v106, 8);
}

- (TSCEInternalCellReference)currentCellBeingModified
{
  v2 = *&self->_currentCellBeingModified.tableID;
  coordinate = self->_currentCellBeingModified.coordinate;
  result.coordinate = coordinate;
  result.tableID = v2;
  result.reserved = HIWORD(v2);
  return result;
}

- (id).cxx_construct
{
  sub_22125F320(&self->_formulaOwnerIDMap);
  self->_formulaOwnerDependencies.__table_.__bucket_list_ = 0u;
  *&self->_formulaOwnerDependencies.__table_.__first_node_.__next_ = 0u;
  self->_formulaOwnerDependencies.__table_.__max_load_factor_ = 1.0;
  self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_evaluationInProgressCells._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_modifiedCellsToDirtyQueue.__end_ = 0;
  self->_modifiedCellsToDirtyQueue.__cap_ = 0;
  self->_modifiedCellsToDirtyQueue.__begin_ = 0;
  self->_corruptedCellRefs._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_corruptedCellRefs._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_corruptedCellRefs._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_ownerIdsToUnregister.__end_ = 0;
  self->_ownerIdsToUnregister.__cap_ = 0;
  self->_ownerIdsToUnregister.__begin_ = 0;
  self->_ownerIDsWithRecordsToPrune.__table_.__bucket_list_ = 0u;
  *&self->_ownerIDsWithRecordsToPrune.__table_.__first_node_.__next_ = 0u;
  self->_ownerIDsWithRecordsToPrune.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end