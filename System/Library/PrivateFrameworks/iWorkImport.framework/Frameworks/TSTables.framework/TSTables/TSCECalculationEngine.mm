@interface TSCECalculationEngine
+ (void)resumeEvaluationIfNotTerminated;
- (BOOL)allCellsAreClean;
- (BOOL)allCellsAreCleanInOwner:(TSKUIDStruct)owner;
- (BOOL)allCellsAreCleanNonBlocking;
- (BOOL)duringSubOwnerUIDUpgrade;
- (BOOL)hasBackgroundTasks;
- (BOOL)hasDisallowedHeaderIndexingForTableUID:(const TSKUIDStruct *)d;
- (BOOL)hasMaxNumFormulas;
- (BOOL)hasVerticalSpillingCellsInTable:(const TSKUIDStruct *)table inRows:(id)rows;
- (BOOL)isArrayFormulaCell:(const TSCECellRef *)cell;
- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table;
- (BOOL)recalcHoldingReadLock;
- (BOOL)referenceIsValid:(const TSCERangeRef *)valid;
- (BOOL)referenceIsValidIncludingSheet:(const TSCERangeRef *)sheet;
- (BOOL)referenceWasGuaranteedCleanAtRecalcCycleStart:(const TSCEAnyRef *)start;
- (BOOL)stopEvaluatingNewLeaves;
- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table;
- (TSCECalculationEngine)initWithContext:(id)context;
- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner;
- (TSCECellCoordSet)cellCoordinatesNeedingExcelImportForTable:(SEL)table;
- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table;
- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner;
- (TSCECellCoordSet)spillOriginsInRange:(SEL)range;
- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table;
- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table inRows:(const TSKUIDStruct *)rows;
- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell atRootCell:(const TSCECellRef *)rootCell;
- (TSCECellRefSet)cellDependentsOfCell:(SEL)cell;
- (TSCECellRefSet)spillOriginsSpillingIntoRange:(SEL)range inOwner:(const TSUCellRect *)owner;
- (TSCECellRefSet)spillingCellsForFormulaAt:(SEL)at;
- (TSCECellRefSet)spillingCellsInRange:(SEL)range inOwner:(const TSUCellRect *)owner;
- (TSCECellRefSet)spillingCellsViaDependenciesInRange:(SEL)range inOwner:(const TSUCellRect *)owner;
- (TSCEInternalCellRefSet)corruptCellRefs;
- (TSCEInternalCellRefSet)internalSpillingCellsForFormulaAt:(SEL)at;
- (TSCENamedReferenceManager)namedReferenceManager;
- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref;
- (TSCERecalculationState)updateCalculatedPrecedents:(id)precedents forFormula:(id)formula atCellRef:(const TSCECellRef *)ref withState:(TSCERecalculationState)state;
- (TSCEReferenceSet)precedentsOfCell:(SEL)cell;
- (TSCETableResolverWrapper)p_tableOrLinkedResolverWrapperForTableUID:(const TSKUIDStruct *)d;
- (TSCETableResolverWrapper)p_tableResolverWrapperForRefResolver:(id)resolver;
- (TSCETableResolverWrapper)tableResolverWrapperForTableID:(unsigned __int16)d;
- (TSKAccessController)accessController;
- (TSKChangeNotifier)changeNotifier;
- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d;
- (TSKUIDStruct)mapOwnerUID:(const TSKUIDStruct *)d;
- (TSKUIDStruct)ownerUIDForLegacyGlobalID:(id)d registeringIfNeeded:(BOOL)needed;
- (TSKUIDStruct)popNextTableToBeginTrackingNames;
- (TSKUIDStruct)popNextTableToEndTrackingNames;
- (TSKUIDStruct)uuidForTableUID:(TSKUIDStruct)d andIndex:(unsigned int)index direction:(BOOL)direction;
- (TSTHeaderNameMgr)headerNameMgr;
- (TSTMultiTableRemapper)currentTableIdRemapper;
- (TSTRefNamer)namer;
- (TSTRefParser)refParser;
- (TSUCellCoord)conflictWinnerForSpillRect1:(const TSUCellRect *)rect1 spillOrigin2:(const TSUCellCoord *)origin2 inTable:(const TSKUIDStruct *)table;
- (TSUCellRect)cachedSpillRangeForSpillingOriginCellRef:(const TSCECellRef *)ref outError:(id *)error;
- (TSUCellRect)spillingRangeForFormulaAt:(const TSCECellRef *)at;
- (id).cxx_construct;
- (id)currentTimeZoneCalendar;
- (id)documentLocale;
- (id)documentRoot;
- (id)emptyReferenceSetWrapper;
- (id)evaluateSynchedWithCalcEngineWithFormula:(id)formula evalContext:(id)context;
- (id)extendTableUIDHistoryWithRewrite:(id)rewrite;
- (id)legacyGlobalIDStringToOwnerUIDMap;
- (id)newTableResolverForResolver:(id)resolver;
- (id)openTransaction;
- (id)ownerForOwnerUID:(TSKUIDStruct)d;
- (id)ownerForUUIDBytes:(unsigned __int8)bytes[16];
- (id)resolverContainerMatchingName:(id)name;
- (id)resolverContainerMatchingName:(id)name inDocumentRoot:(id)root;
- (id)resolverForCellRef:(id)ref;
- (id)resolverForTableID:(unsigned __int16)d;
- (id)resolverForTableUID:(TSKUIDStruct)d;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolverMatchingName:(id)name inDocumentRoot:(id)root contextResolver:(id)resolver;
- (id)resolverMatchingNameWithContextContainer:(id)container contextContainerName:(id)name;
- (id)resolverMatchingNameWithContextContainer:(id)container inDocumentRoot:(id)root contextContainerName:(id)name;
- (id)rewriteSpecStack;
- (id)tableOrLinkedResolverForTableUID:(const TSKUIDStruct *)d;
- (id)tableResolverForRefResolver:(id)resolver;
- (id)tableResolverForTableID:(unsigned __int16)d;
- (id)tableResolverForTableUID:(const TSKUIDStruct *)d;
- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask error:(id *)error;
- (int)forwardRegisterOwnerWithOwnerUID:(TSKUIDStruct)d legacyGlobalID:(id)iD;
- (int)preferredDispatchQueueWidth;
- (int)registerOwnerWithOwnerUID:(TSKUIDStruct)d owner:(id)owner referenceResolver:(id)resolver baseOwnerUID:(TSKUIDStruct)iD ownerKind:(unsigned __int16)kind;
- (int)threadState;
- (unint64_t)dirtyCellCountInOwner:(const TSKUIDStruct *)owner;
- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner;
- (unsigned)aggregateTypeForCategoryRef:(id)ref;
- (unsigned)columnWidthInBodyOfTable:(id)table;
- (unsigned)ownerKindForOwnerUID:(TSKUIDStruct)d;
- (unsigned)rowHeightInBodyOfTable:(id)table;
- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSCECalculationEngine *)self;
- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid;
- (vector<TSCECellRef,)unorderedCellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid;
- (vector<TSCEValue)valuesForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid hidingActionMask:(id)mask error:(const TSKUIDStruct *)error;
- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCECalculationEngine *)self inOwner:(SEL)owner;
- (vector<TSUCellCoord,)formulaCoordsReferringToRange:(TSCECalculationEngine *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning;
- (void)addAllFormulasCleanObserver:(id)observer;
- (void)addCalculationStateObserver:(id)observer;
- (void)assertAt:(id)at nonCalcEngineException:(id)exception evaluatingFormula:(id)formula;
- (void)assertNonCalcEngineException:(id)exception exception:(id)a4 evaluatingFormula:(id)formula;
- (void)beginBatchingGroupCellDirtying;
- (void)beginSuppressingWillModifyCalls;
- (void)beginTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m;
- (void)beginUpgradingFormulasMode;
- (void)blockUntilRecalcIsCompleteWithTimeout:(double)timeout;
- (void)clearDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d;
- (void)clearErrorAndWarningsForCell:(const TSCECellRef *)cell;
- (void)clearErrorAndWarningsForCells:(const void *)cells;
- (void)clearPreviousLocaleIdentifier;
- (void)clearSpillSizeForCell:(const TSCECellRef *)cell;
- (void)clearSpillSizesInRange:(const TSCERangeRef *)range;
- (void)closeTransaction:(id)transaction;
- (void)commonInit;
- (void)dealloc;
- (void)dirtyCellsForColumnRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange;
- (void)dirtyCellsForInsertionOfColumns:(_NSRange)columns forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange;
- (void)dirtyCellsForInsertionOfRows:(_NSRange)rows forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange;
- (void)dirtyCellsForMergingRange:(TSCERangeCoordinate)range forTable:(const TSKUIDStruct *)table headerRowRange:(TSCERangeCoordinate)rowRange headerColumnRange:(TSCERangeCoordinate)columnRange;
- (void)dirtyCellsForRemovalOfColumns:(_NSRange)columns fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range;
- (void)dirtyCellsForRemovalOfRows:(_NSRange)rows fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range;
- (void)dirtyCellsForRowRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange;
- (void)dirtyCellsForUpgrade;
- (void)dispatchOnePhase:(void *)phase;
- (void)documentDidLoad;
- (void)documentLocaleDidChange;
- (void)endBatchingGroupCellDirtying;
- (void)endTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m;
- (void)endUpgradingFormulasMode;
- (void)headerStateOfTableChanged:(TSKUIDStruct)changed;
- (void)headerStateOfTableChanged:(TSKUIDStruct)changed changedRows:(BOOL)rows;
- (void)initializeDispatchObjects;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadInProgressLeaves:(int)leaves;
- (void)markAllExternalGroupByRefsDirty:(const TSKUIDStruct *)dirty;
- (void)markAllFunctionsAsDirty;
- (void)markAllVolatileFunctionsAsDirty;
- (void)markCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)markCellRefSetAsDirty:(const void *)dirty;
- (void)markCellRefsAsDirty:(id)dirty;
- (void)markCoordsDirty:(const void *)dirty inInternalOwner:(unsigned __int16)owner;
- (void)markCoordsDirty:(const void *)dirty inOwner:(const TSKUIDStruct *)owner;
- (void)markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime;
- (void)markOnlyDependentsDirty:(const TSCECellRef *)dirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)markRemoteDataVolatileFunctionsAsDirty;
- (void)notifyObserversOfRecalcProgress;
- (void)pauseRecalculation;
- (void)pauseRecalculationForBlock:(id)block;
- (void)pauseRecalculationSometimeSoon;
- (void)performBackgroundTasksWithWriteLock;
- (void)popRewriteSpec:(id)spec;
- (void)pushRewriteSpec:(id)spec;
- (void)recalcHoldingWriteLock;
- (void)recalcPhaseHoldingReadLock:(void *)lock;
- (void)recalculateWithTimeout:(double)timeout;
- (void)registerOwners;
- (void)removeAllFormulasCleanObserver:(id)observer;
- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)owner;
- (void)removeCalculationStateObserver:(id)observer;
- (void)removeFormulasAt:(const void *)at;
- (void)removeFormulasFromRange:(const TSCERangeRef *)range;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceRemoteDataKeysInterestedIn:(id)in forCell:(const TSCECellRef *)cell;
- (void)replaceSpillError:(id)error ifCachedforSpillingOriginCellRef:(const TSCECellRef *)ref;
- (void)resetFormulaAt:(const TSCECellRef *)at;
- (void)resetNRM;
- (void)resetSpillingFormulasInRange:(const TSCERangeRef *)range;
- (void)resumeRecalculation;
- (void)resumeRecalculationForBlock:(id)block;
- (void)rollbackTableUIDHistoryWithRewriteInfo:(id)info;
- (void)saveToArchiver:(id)archiver;
- (void)scheduleDetectAndRepairConsistencyViolations;
- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner;
- (void)setCurrentDate:(id)date;
- (void)setCurrentDate:(id)date timeZone:(id)zone markVolatilesDirty:(BOOL)dirty;
- (void)setCurrentTableIdRemapper:(id)remapper;
- (void)setCurrentTimeZone:(id)zone;
- (void)setDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d;
- (void)setError:(id)error warnings:(id)warnings forCell:(const TSCECellRef *)cell;
- (void)setOwnerUIDForLegacyGlobalID:(id)d ownerUID:(const TSKUIDStruct *)iD;
- (void)setRewritingMinion:(id)minion;
- (void)setTableRange:(TSCERangeCoordinate)range bodyRange:(TSCERangeCoordinate)bodyRange forTableUID:(const TSKUIDStruct *)d;
- (void)startRecalcTaskIfNecessary;
- (void)startRecalculation;
- (void)startRecalculationTask;
- (void)superWillModify;
- (void)unregisterOwner:(TSKUIDStruct)owner;
- (void)updateEmbiggenedTableCache;
- (void)updateErrorAndWarnings:(id)warnings forCell:(const TSCECellRef *)cell;
- (void)willClose;
- (void)willModify;
@end

@implementation TSCECalculationEngine

- (id)legacyGlobalIDStringToOwnerUIDMap
{
  legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  if (!legacyGlobalIDStringToOwnerUIDMap)
  {
    v4 = objc_opt_new();
    v5 = self->_legacyGlobalIDStringToOwnerUIDMap;
    self->_legacyGlobalIDStringToOwnerUIDMap = v4;

    legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  }

  return legacyGlobalIDStringToOwnerUIDMap;
}

- (void)setCurrentDate:(id)date
{
  dateCopy = date;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  currentDate = self->_currentDate;
  self->_currentDate = dateCopy;
}

- (void)setCurrentDate:(id)date timeZone:(id)zone markVolatilesDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  dateCopy = date;
  zoneCopy = zone;
  v14 = objc_msgSend_currentDate(self, v10, v11, v12, v13);
  v19 = objc_msgSend_currentTimeZone(self, v15, v16, v17, v18);
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v24 = objc_msgSend_currentTimeZoneCalendar(self, v20, v21, v22, v23);
  v28 = v24;
  if (v14 && dirtyCopy)
  {
    objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v24, v25, v14, &v53, &v52, &v51, &v50, &v49, &v48);
  }

  objc_msgSend_setCurrentDate_(self, v25, dateCopy, v26, v27);
  objc_msgSend_setCurrentTimeZone_(self, v29, zoneCopy, v30, v31);
  if (dirtyCopy)
  {
    v46 = v52;
    v47 = v53;
    v44 = v50;
    v45 = v51;
    v42 = v48;
    v43 = v49;
    objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v28, v32, dateCopy, &v47, &v46, &v45, &v44, &v43, &v42);
    if (v45 == v51 && v46 == v52 && v47 == v53 && (objc_msgSend_currentTimeZone(self, v33, v34, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), isEqualToTimeZone = objc_msgSend_isEqualToTimeZone_(v19, v38, v37, v39, v40), v37, (isEqualToTimeZone & 1) != 0))
    {
      if (v44 != v50 || v43 != v49 || v42 != v48)
      {
        objc_msgSend_markTimeVolatileFunctionsAsDirty(self, v33, v34, v35, v36);
      }
    }

    else
    {
      objc_msgSend_markDateTimeVolatileFunctionsAsDirty(self, v33, v34, v35, v36);
    }
  }
}

- (void)setCurrentTimeZone:(id)zone
{
  zoneCopy = zone;
  if (self->_currentTimeZone != zoneCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_currentTimeZone, zone);
    currentTimeZoneCalendar = self->_currentTimeZoneCalendar;
    self->_currentTimeZoneCalendar = 0;
  }
}

- (id)currentTimeZoneCalendar
{
  currentTimeZoneCalendar = self->_currentTimeZoneCalendar;
  if (!currentTimeZoneCalendar)
  {
    if (self->_currentTimeZone)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!self->_currentTimeZoneCalendar)
      {
        v5 = [TSCECalendar alloc];
        v8 = objc_msgSend_initWithCalendarIdentifier_timeZone_(v5, v6, *MEMORY[0x277CBE5C0], self->_currentTimeZone, v7);
        v9 = self->_currentTimeZoneCalendar;
        self->_currentTimeZoneCalendar = v8;
      }

      objc_sync_exit(selfCopy);

      currentTimeZoneCalendar = self->_currentTimeZoneCalendar;
    }

    else
    {
      currentTimeZoneCalendar = 0;
    }
  }

  return currentTimeZoneCalendar;
}

- (void)initializeDispatchObjects
{
  self->_recalculationThreadState = 2;
  self->_recalculationThreadStateMutex._os_unfair_lock_opaque = 0;
  self->_inProgressLeavesMutex._os_unfair_lock_opaque = 0;
  self->_legacyNrmListsMutex._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  v3 = MEMORY[0x277D85CD8];
  attr = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_UTILITY, -1);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, -3);
  v5 = dispatch_queue_create("com.apple.Numbers.TSCE.RecalcLowPriority", attr);
  recalcLowPriorityQueue = self->_recalcLowPriorityQueue;
  self->_recalcLowPriorityQueue = v5;

  v7 = dispatch_queue_create("com.apple.Numbers.TSCE.RecalcHighPriority", v4);
  recalcHighPriorityQueue = self->_recalcHighPriorityQueue;
  self->_recalcHighPriorityQueue = v7;

  if (!self->_recalcLowPriorityQueue)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECalculationEngine initializeDispatchObjects]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 470, 0, "invalid nil value for '%{public}s'", "_recalcLowPriorityQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (!self->_recalcHighPriorityQueue)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECalculationEngine initializeDispatchObjects]", v10, v11);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 471, 0, "invalid nil value for '%{public}s'", "_recalcHighPriorityQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = dispatch_group_create();
  recalcDispatchGroup = self->_recalcDispatchGroup;
  self->_recalcDispatchGroup = v34;

  if (!self->_recalcDispatchGroup)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSCECalculationEngine initializeDispatchObjects]", v37, v38);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v42, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 474, 0, "invalid nil value for '%{public}s'", "_recalcDispatchGroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v50 = dispatch_group_create();
  recalcLoopGroup = self->_recalcLoopGroup;
  self->_recalcLoopGroup = v50;

  if (!self->_recalcLoopGroup)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSCECalculationEngine initializeDispatchObjects]", v53, v54);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v58, v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v61, v56, v60, 477, 0, "invalid nil value for '%{public}s'", "_recalcLoopGroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }
}

- (int)threadState
{
  os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
  recalculationThreadState = self->_recalculationThreadState;
  os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
  return recalculationThreadState;
}

+ (void)resumeEvaluationIfNotTerminated
{
  if ((byte_27CFB52E1 & 1) == 0)
  {
    byte_27CFB52E0 = 0;
  }
}

- (id)openTransaction
{
  if (self->_currentTransaction)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine openTransaction]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 524, 0, "There is already an open transaction on this calc-engine: %@", self->_currentTransaction);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
    if (self->_currentTransaction)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCECalculationEngine openTransaction]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 527, 0, "expected nil value for '%{public}s'", "_currentTransaction");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }
  }

  v30 = [TSCETransaction alloc];
  v34 = objc_msgSend_initWithCalcEngine_(v30, v31, self, v32, v33);
  currentTransaction = self->_currentTransaction;
  self->_currentTransaction = v34;

  v36 = self->_currentTransaction;

  return v36;
}

- (void)closeTransaction:(id)transaction
{
  transactionCopy = transaction;
  v8 = transactionCopy;
  if (transactionCopy)
  {
    currentTransaction = self->_currentTransaction;
    if (currentTransaction != transactionCopy)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCECalculationEngine closeTransaction:]", v6, v7);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 535, 0, "Invalid transaction object passed in: %@", v8);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
      currentTransaction = self->_currentTransaction;
    }

    self->_currentTransaction = 0;

    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_221231978;
    v31[4] = sub_221231988;
    v32 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_221231978;
    v29[4] = sub_221231988;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_221231978;
    v27[4] = sub_221231988;
    v28 = 0;
    v25 = objc_msgSend_cellRefsToCheck(v8, v21, v22, v23, v24);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_221231990;
    v26[3] = &unk_278461B78;
    v26[4] = self;
    v26[5] = v31;
    v26[6] = v29;
    v26[7] = v27;
    TSCEReferenceSet::foreachCellRef(v25, v26);
    _Block_object_dispose(v27, 8);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);
  }
}

- (void)clearPreviousLocaleIdentifier
{
  previousLocaleIdentifier = self->_previousLocaleIdentifier;
  self->_previousLocaleIdentifier = 0;

  self->_shouldPreventArchivingOfLocaleIdentifier = 1;
}

- (TSTMultiTableRemapper)currentTableIdRemapper
{
  duringRollback = self->_duringRollback;
  currentTableIdRemapper = self->_currentTableIdRemapper;
  if (duringRollback)
  {
    if (currentTableIdRemapper)
    {
      rollbackTableIdRemapper = self->_rollbackTableIdRemapper;
      if (!rollbackTableIdRemapper)
      {
        v9 = objc_msgSend_makeInverse(currentTableIdRemapper, a2, v2, v3, v4);
        v10 = self->_rollbackTableIdRemapper;
        self->_rollbackTableIdRemapper = v9;

        rollbackTableIdRemapper = self->_rollbackTableIdRemapper;
      }
    }

    else
    {
      rollbackTableIdRemapper = 0;
    }
  }

  else
  {
    rollbackTableIdRemapper = currentTableIdRemapper;
  }

  return rollbackTableIdRemapper;
}

- (void)setCurrentTableIdRemapper:(id)remapper
{
  objc_storeStrong(&self->_currentTableIdRemapper, remapper);
  remapperCopy = remapper;
  rollbackTableIdRemapper = self->_rollbackTableIdRemapper;
  self->_rollbackTableIdRemapper = 0;
}

- (void)commonInit
{
  v17.receiver = self;
  v17.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v17 commonInit];
  self->_upgradeOptions = 0;
  v3 = os_log_create("com.apple.iWork.CalculationEngine", "Performance");
  signpostLog = self->_signpostLog;
  self->_signpostLog = v3;

  self->_loadFromFileVersion = UnsafePointer();
  v5 = [TSCETablesByName alloc];
  v9 = objc_msgSend_initWithCalcEngine_(v5, v6, self, v7, v8);
  tablesByName = self->_tablesByName;
  self->_tablesByName = v9;

  v11 = [TSCEDependencyTracker alloc];
  v15 = objc_msgSend_initWithCalcEngine_(v11, v12, self, v13, v14);
  dependencyTracker = self->_dependencyTracker;
  self->_dependencyTracker = v15;

  operator new();
}

- (TSCECalculationEngine)initWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TSCECalculationEngine;
  v5 = [(TSCECalculationEngine *)&v12 initWithContext:contextCopy];
  v10 = v5;
  if (v5)
  {
    objc_msgSend_p_addApplicationNotification(v5, v6, v7, v8, v9);
  }

  return v10;
}

- (void)dealloc
{
  self->_calculationWillShutDown = 1;
  objc_msgSend_p_removeApplicationNotification(self, a2, v2, v3, v4);
  if (!objc_msgSend_threadState(self, v6, v7, v8, v9))
  {
    objc_msgSend_pauseRecalculation(self, v10, v11, v12, v13);
  }

  self->_calculationWillShutDown = 1;
  dispatch_sync(self->_recalcLowPriorityQueue, &unk_2834A3608);
  v18 = objc_msgSend_referencesToDirty(self, v14, v15, v16, v17);
  objc_msgSend_willClose(v18, v19, v20, v21, v22);

  begin = self->_phaseStates.__begin_;
  end = self->_phaseStates.__end_;
  if (begin != end)
  {
    do
    {
      v29 = *begin;
      if (*begin)
      {
        sub_2210BDEC0(v29 + 32);
        v30 = *(v29 + 1);
        if (v30)
        {
          *(v29 + 2) = v30;
          operator delete(v30);
        }

        MEMORY[0x223DA1450](v29, 0x10A0C409DE78C2BLL);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_phaseStates.__begin_;
  }

  self->_phaseStates.__end_ = begin;
  objc_msgSend_willClose(self->_headerNameMgr, v23, v24, v25, v26);
  headerNameMgr = self->_headerNameMgr;
  self->_headerNameMgr = 0;

  objc_msgSend_willClose(self->_namedReferenceManager, v32, v33, v34, v35);
  namedReferenceManager = self->_namedReferenceManager;
  self->_namedReferenceManager = 0;

  inProgressLeaves = self->_inProgressLeaves;
  if (inProgressLeaves)
  {
    sub_22123E714((inProgressLeaves + 1));

    MEMORY[0x223DA1450](inProgressLeaves, 0x10A0C40C346037DLL);
  }

  dependencyTracker = self->_dependencyTracker;
  self->_dependencyTracker = 0;

  sub_221575E6C(&self->_refResolverMap);
  pendingChangesForAsyncNotification = self->_pendingChangesForAsyncNotification;
  self->_pendingChangesForAsyncNotification = 0;

  legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  self->_legacyGlobalIDStringToOwnerUIDMap = 0;

  v41.receiver = self;
  v41.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v41 dealloc];
}

- (void)registerOwners
{
  if (!self->_ownersRegistered)
  {
    objc_msgSend_registerFormulaOwners(self->_dependencyTracker, a2, v2, v3, v4);
    self->_ownersRegistered = 1;
  }
}

- (void)documentDidLoad
{
  if (!self->_documentDidLoadCompleted)
  {
    objc_msgSend_registerOwners(self, a2, v2, v3, v4);
    upgradeOptions = self->_upgradeOptions;
    if ((upgradeOptions & 2) != 0)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      sub_221575F38(&self->_refResolverMap, self->_dependencyTracker, &__p);
      v11 = __p;
      v12 = v23;
      if (__p != v23)
      {
        do
        {
          v13 = objc_msgSend_tableResolverForTableUID_(self, v6, v11, v8, v9);
          if (objc_msgSend_isPivotTable(v13, v14, v15, v16, v17))
          {
            sub_221083454(&v24, v11);
          }

          ++v11;
        }

        while (v11 != v12);
        if (v24 != v25)
        {
          objc_msgSend_resetAllExternalFormulasReferringToOwnerUIDs_upgradeMinion_(self->_dependencyTracker, v6, &v24, self->_upgradingFormulasMinion, v9);
        }
      }

      self->_upgradeOptions &= ~2u;
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      upgradeOptions = self->_upgradeOptions;
    }

    if (upgradeOptions)
    {
      objc_msgSend_willModify(self, v6, v7, v8, v9);
      objc_msgSend_dirtyAllCellsInAllOwners(self->_dependencyTracker, v18, v19, v20, v21);
      self->_upgradeOptions &= ~1u;
    }

    objc_msgSend_endUpgradingFormulasMode(self, v6, v7, v8, v9);
    self->_documentDidLoadCompleted = 1;
  }
}

- (void)recalculateWithTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {
    v35 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    v35 = objc_msgSend_initWithTimeIntervalSinceNow_(v8, v9, v10, v11, v12, timeout);
  }

  for (i = objc_msgSend_referencesToDirty(self, a2, v3, v4, v5);
  {
    if (v35)
    {
      objc_msgSend_timeIntervalSinceNow(v35, v13, v14, v15, v16);
      if (v18 <= 0.0)
      {
        break;
      }
    }

    if (objc_msgSend_allCellsAreClean(self, v13, v14, v15, v16))
    {
      break;
    }

    objc_msgSend_recalcHoldingReadLock(self, v19, v20, v21, v22);
    objc_msgSend_recalcHoldingWriteLock(self, v23, v24, v25, v26);
    objc_msgSend_invalidateAfterRecalc(self, v27, v28, v29, v30);
  }
}

- (void)dirtyCellsForUpgrade
{
  loadFromFileVersion = self->_loadFromFileVersion;
  if (loadFromFileVersion < *MEMORY[0x277D80968])
  {
    objc_msgSend_pauseRecalculation(self, a2, v2, v3, v4);
    objc_msgSend_dirtyForSpanningRowBug(self->_dependencyTracker, v7, v8, v9, v10);
    objc_msgSend_resumeRecalculation(self, v11, v12, v13, v14);
    loadFromFileVersion = self->_loadFromFileVersion;
  }

  if (loadFromFileVersion < *MEMORY[0x277D80998])
  {

    MEMORY[0x2821F9670](self, sel_resetNRM, v2, v3, v4);
  }
}

- (void)beginUpgradingFormulasMode
{
  v3 = [TSCEUpgradingTablesMinion alloc];
  v10 = objc_msgSend_initWithCalcEngine_(v3, v4, self, v5, v6);
  objc_msgSend_setUpgradingFormulasMinion_(self, v7, v10, v8, v9);
}

- (void)endUpgradingFormulasMode
{
  upgradingFormulasMinion = self->_upgradingFormulasMinion;
  if (upgradingFormulasMinion)
  {
    self->_upgradingFormulasMinion = 0;
    v7 = upgradingFormulasMinion;

    objc_msgSend_flushAllChanges(v7, v3, v4, v5, v6);
  }
}

- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker && *owner != 0)
  {
    upgradingFormulasMinion = self->_upgradingFormulasMinion;
    if (upgradingFormulasMinion)
    {
      (MEMORY[0x2821F9670])(dependencyTracker, sel_scheduleRepairingSpanningFormulasInOwner_upgradeMinion_, owner, upgradingFormulasMinion);
    }
  }
}

- (void)setTableRange:(TSCERangeCoordinate)range bodyRange:(TSCERangeCoordinate)bodyRange forTableUID:(const TSKUIDStruct *)d
{
  rangeCopy = range;
  bodyRangeCopy = bodyRange;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_setTableAndBodyRangesForTable_bodyRange_tableUID_(dependencyTracker, a2, &rangeCopy, &bodyRangeCopy, d);
  }
}

- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    LOBYTE(dependencyTracker) = (MEMORY[0x2821F9670])(dependencyTracker, sel_verifyTableAndBodyRangesForTable_, table);
  }

  return dependencyTracker;
}

- (int)forwardRegisterOwnerWithOwnerUID:(TSKUIDStruct)d legacyGlobalID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    v10 = objc_msgSend_legacyGlobalIDStringToOwnerUIDMap(self, v5, v6, v7, v8, dCopy._lower, dCopy._upper);
    v11 = TSKUIDStruct::NSUUIDValue(&dCopy);
    objc_msgSend_setValue_forKey_(v10, v12, v11, iDCopy, v13);
  }

  v14 = objc_msgSend_registerOwnerUID_owner_ownerIndex_(self->_dependencyTracker, v5, &dCopy, 0, 0);

  return v14;
}

- (int)registerOwnerWithOwnerUID:(TSKUIDStruct)d owner:(id)owner referenceResolver:(id)resolver baseOwnerUID:(TSKUIDStruct)iD ownerKind:(unsigned __int16)kind
{
  dCopy = d;
  ownerCopy = owner;
  resolverCopy = resolver;
  v15 = objc_msgSend_registerOwnerUID_owner_ownerIndex_(self->_dependencyTracker, v11, &dCopy, ownerCopy, kind);
  if (v15)
  {
    v16 = resolverCopy;
  }

  else
  {
    v17 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v12, &dCopy, v13, v14);
    if (resolverCopy)
    {
      v22 = v17;
      v23 = TSUCheckedProtocolCast();
      if (v23)
      {
        v16 = v23;

        resolverCopy = objc_msgSend_newTableResolverForResolver_(self, v27, v16, v28, v29, &unk_283517958);
        if (resolverCopy)
        {
          sub_221576264(&self->_refResolverMap, resolverCopy, v22);
          sub_221576500(&self->_refResolverMap._refResolverMutex);
        }
      }

      else
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCECalculationEngine registerOwnerWithOwnerUID:owner:referenceResolver:baseOwnerUID:ownerKind:]", v25, v26, &unk_283517958);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v33, v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 891, 0, "Resolver doesn't conform to the TSCEReferenceResolving protocol.");

        v16 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      }
    }

    else
    {
      v16 = 0;
    }

    if (objc_msgSend_evaluationMode(ownerCopy, v18, v19, v20, v21) == 1 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCECalculationEngine registerOwnerWithOwnerUID:owner:referenceResolver:baseOwnerUID:ownerKind:]", v42, v43);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v47, v48);
      v50 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v45, v49, 909, 0, "%@ doesn't implement: -multiEvaluateFormulasAt:withCalcEngine:recalcOptions:", v50);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
    }
  }

  return v15;
}

- (unsigned)ownerKindForOwnerUID:(TSKUIDStruct)d
{
  dCopy = d;
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, &dCopy, d._upper, v3);
  return objc_msgSend_ownerKindForOwnerID_(self->_dependencyTracker, v6, v5, v7, v8);
}

- (void)unregisterOwner:(TSKUIDStruct)owner
{
  ownerCopy = owner;
  if (owner._lower | owner._upper)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accessController);
    v9 = objc_msgSend_hasWrite(WeakRetained, v5, v6, v7, v8, ownerCopy._lower, ownerCopy._upper);

    v17 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v10, &ownerCopy, v11, v12);
    if (v9)
    {
      objc_msgSend_beginSuppressingWillModifyCalls(self, v13, v14, v15, v16);
      objc_msgSend_unregisterOwner_(self->_dependencyTracker, v18, &ownerCopy, v19, v20);
      objc_msgSend_endSuppressingWillModifyCalls(self, v21, v22, v23, v24);
      sub_221576348(&self->_refResolverMap._refResolverMutex, v17, &ownerCopy);
    }

    else
    {
      objc_msgSend_pauseRecalculation(self, v13, v14, v15, v16);
      objc_msgSend_beginSuppressingWillModifyCalls(self, v25, v26, v27, v28);
      objc_msgSend_unregisterOwner_(self->_dependencyTracker, v29, &ownerCopy, v30, v31);
      objc_msgSend_endSuppressingWillModifyCalls(self, v32, v33, v34, v35);
      sub_221576348(&self->_refResolverMap._refResolverMutex, v17, &ownerCopy);
      objc_msgSend_resumeRecalculation(self, v36, v37, v38, v39);
    }
  }
}

- (id)ownerForOwnerUID:(TSKUIDStruct)d
{
  dCopy = d;
  v4 = objc_msgSend_ownerForOwnerUID_(self->_dependencyTracker, a2, &dCopy, d._upper, v3);

  return v4;
}

- (id)ownerForUUIDBytes:(unsigned __int8)bytes[16]
{
  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_ownerForOwnerUID_(self, v4, v5, v4, v6);
}

- (BOOL)duringSubOwnerUIDUpgrade
{
  v5 = objc_msgSend_dependencyTracker(self, a2, v2, v3, v4);
  v10 = objc_msgSend_duringSubOwnerUIDUpgrade(v5, v6, v7, v8, v9);

  return v10;
}

- (id)resolverForCellRef:(id)ref
{
  refCopy = ref;
  v9 = refCopy;
  if (refCopy)
  {
    v10 = objc_msgSend_tableUID(refCopy, v5, v6, v7, v8);
    v13 = objc_msgSend_resolverForTableUID_(self, v11, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)resolverForTableID:(unsigned __int16)d
{
  if (d == 0xFFFF)
  {
    v10 = 0;
  }

  else
  {
    v7 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, d, v3, v4);
    v10 = objc_msgSend_resolverForTableUID_(self, v8, v7, v8, v9);
  }

  return v10;
}

- (id)resolverForTableUID:(TSKUIDStruct)d
{
  dCopy = d;
  if (self->_calculationWillShutDown)
  {
    v4 = 0;
  }

  else
  {
    v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, &dCopy, d._upper, v3);
    v4 = sub_2215761B8(&self->_refResolverMap._refResolverMutex, v6);
  }

  return v4;
}

- (TSCETableResolverWrapper)p_tableResolverWrapperForRefResolver:(id)resolver
{
  resolverCopy = resolver;
  v9 = resolverCopy;
  if (resolverCopy)
  {
    v15[0] = objc_msgSend_resolverUID(resolverCopy, v5, v6, v7, v8);
    v15[1] = v10;
    v13 = objc_msgSend_tableResolverWrapperForTableUID_(self, v10, v15, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TSCETableResolverWrapper)p_tableOrLinkedResolverWrapperForTableUID:(const TSKUIDStruct *)d
{
  v9 = objc_msgSend_tableResolverWrapperForTableUID_(self, a2, d, v3, v4);
  if (!v9)
  {
    if (self->_calculationWillShutDown)
    {
      return 0;
    }

    else
    {
      v10 = objc_msgSend_ownerForOwnerUID_(self, v7, d->_lower, d->_upper, v8);
      v15 = v10;
      if (v10)
      {
        v16 = objc_msgSend_linkedResolver(v10, v11, v12, v13, v14);
        v9 = objc_msgSend_p_tableResolverWrapperForRefResolver_(self, v17, v16, v18, v19);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (TSCETableResolverWrapper)tableResolverWrapperForTableID:(unsigned __int16)d
{
  if (d == 0xFFFF || self->_calculationWillShutDown)
  {
    return 0;
  }

  else
  {
    return sub_2215760A0(&self->_refResolverMap._refResolverMutex, d);
  }
}

- (id)tableResolverForTableUID:(const TSKUIDStruct *)d
{
  v5 = objc_msgSend_tableResolverWrapperForTableUID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = *v5;
  }

  return v5;
}

- (id)tableResolverForTableID:(unsigned __int16)d
{
  v5 = objc_msgSend_tableResolverWrapperForTableID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = *v5;
  }

  return v5;
}

- (id)tableOrLinkedResolverForTableUID:(const TSKUIDStruct *)d
{
  v5 = objc_msgSend_p_tableOrLinkedResolverWrapperForTableUID_(self, a2, d, v3, v4);
  if (v5)
  {
    v5 = *v5;
  }

  return v5;
}

- (id)tableResolverForRefResolver:(id)resolver
{
  v5 = objc_msgSend_p_tableResolverWrapperForRefResolver_(self, a2, resolver, v3, v4);
  if (v5)
  {
    v5 = *v5;
  }

  return v5;
}

- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d
{
  v5 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, d, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (id)resolverContainerMatchingName:(id)name
{
  nameCopy = name;
  v9 = objc_msgSend_documentRoot(self, v5, v6, v7, v8);
  v12 = objc_msgSend_resolverContainerMatchingName_inDocumentRoot_(self, v10, nameCopy, v9, v11);

  return v12;
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  nameCopy = name;
  resolverCopy = resolver;
  v12 = objc_msgSend_documentRoot(self, v8, v9, v10, v11);
  v14 = objc_msgSend_resolverMatchingName_inDocumentRoot_contextResolver_(self, v13, nameCopy, v12, resolverCopy);

  return v14;
}

- (id)resolverMatchingNameWithContextContainer:(id)container contextContainerName:(id)name
{
  containerCopy = container;
  nameCopy = name;
  v12 = objc_msgSend_documentRoot(self, v8, v9, v10, v11);
  v14 = objc_msgSend_resolverMatchingNameWithContextContainer_inDocumentRoot_contextContainerName_(self, v13, containerCopy, v12, nameCopy);

  return v14;
}

- (TSKUIDStruct)ownerUIDForLegacyGlobalID:(id)d registeringIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  if (objc_msgSend_hasPrefix_(dCopy, v7, @"SFTGlobalID_", v8, v9))
  {
    v14 = objc_msgSend_length(@"SFTGlobalID_", v10, v11, v12, v13);
    if (objc_msgSend_length(dCopy, v15, v16, v17, v18) > v14)
    {
      v19 = objc_msgSend_substringFromIndex_(dCopy, v10, v14, v12, v13);

      dCopy = v19;
    }
  }

  v20 = objc_msgSend_legacyGlobalIDStringToOwnerUIDMap(self, v10, v11, v12, v13);
  v24 = objc_msgSend_objectForKey_(v20, v21, dCopy, v22, v23);

  if (v24)
  {
    v25 = TSKMakeUIDStructFromNSUUID();
    v27 = v26;
  }

  else if (neededCopy)
  {
    v28 = TSKMakeUIDStructRandom();
    objc_msgSend_forwardRegisterOwnerWithOwnerUID_legacyGlobalID_(self, v29, v28, v29, dCopy);
    v33 = objc_msgSend_objectForKey_(self->_legacyGlobalIDStringToOwnerUIDMap, v30, dCopy, v31, v32);
    v25 = TSKMakeUIDStructFromNSUUID();
    v27 = v34;
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  v35 = v25;
  v36 = v27;
  result._upper = v36;
  result._lower = v35;
  return result;
}

- (void)setOwnerUIDForLegacyGlobalID:(id)d ownerUID:(const TSKUIDStruct *)iD
{
  dCopy = d;
  legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  v7 = TSKUIDStruct::NSUUIDValue(iD);
  objc_msgSend_setValue_forKey_(legacyGlobalIDStringToOwnerUIDMap, v8, v7, dCopy, v9);
}

- (TSKUIDStruct)uuidForTableUID:(TSKUIDStruct)d andIndex:(unsigned int)index direction:(BOOL)direction
{
  directionCopy = direction;
  v6 = *&index;
  v7 = objc_msgSend_resolverForTableUID_(self, a2, d._lower, d._upper, *&index);
  v11 = v7;
  if (v7)
  {
    if (directionCopy)
    {
      if (v6 != 0x7FFFFFFF)
      {
        v12 = objc_msgSend_rowUIDForRowIndex_(v7, v8, v6, v9, v10);
LABEL_8:
        v15 = v12;
        v14 = v13;
        goto LABEL_9;
      }
    }

    else if (v6 != 0x7FFF)
    {
      v12 = objc_msgSend_columnUIDForColumnIndex_(v7, v8, v6, v9, v10);
      goto LABEL_8;
    }
  }

  v14 = 0;
  v15 = 0;
LABEL_9:

  v16 = v15;
  v17 = v14;
  result._upper = v17;
  result._lower = v16;
  return result;
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  formulaCopy = formula;
  v11 = objc_autoreleasePoolPush();
  v12 = *coord;
  v53 = *owner;
  v16 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v13, owner, v14, v15);
  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCECalculationEngine replaceFormula:atCellCoord:inOwner:replaceOptions:]", v19, v20);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v25, v26);
    v28 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v23, v27, 1181, 0, "Can only place formulas at valid, non-spanning cell coords, not: %@", v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  else
  {
    v51 = v12 & 0xFFFFFFFFFFFFLL;
    v52 = v16;
    if (!options->var1 || (objc_msgSend_markIntCellRefDirtyIfCellContainsAFormula_(self->_dependencyTracker, v17, &v51, v19, v20) & 1) == 0)
    {
      v34 = objc_msgSend_emptyReferenceSetWrapper(self, v17, v18, v19, v20);
      v43 = objc_msgSend_formulaObject(formulaCopy, v35, v36, v37, v38);
      if (v43 && v34)
      {
        v44 = objc_msgSend_referenceSet(v34, v39, v40, v41, v42);
        v49 = v12;
        v50 = v53;
        objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v43, v45, v44, self, &v49, 0, 1);
        dependencyTracker = self->_dependencyTracker;
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v48, options);
        objc_msgSend_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(dependencyTracker, v47, owner, v12, v34, &v48);
      }

      self->_hasKnownEmbiggenedTable = objc_msgSend_hasEmbiggenedCoords(self->_dependencyTracker, v39, v40, v41, v42);
    }
  }

  objc_autoreleasePoolPop(v11);
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner
{
  formulaCopy = formula;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v11, 0, 1);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v10, &v11);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(self, v9, formulaCopy, coord, owner, &v10);
}

- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  precedentsCopy = precedents;
  dependencyTracker = self->_dependencyTracker;
  v12 = *at;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v14, options);
  objc_msgSend_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(dependencyTracker, v13, owner, v12, precedentsCopy, &v14);
}

- (void)resetFormulaAt:(const TSCECellRef *)at
{
  if (*&at->coordinate != 0x7FFFFFFF && (*&at->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    upper = at->_tableUID._upper;
    if (*&at->_tableUID != 0)
    {
      v13[0] = at->_tableUID._lower;
      v13[1] = upper;
      v9 = objc_msgSend_tableResolverForTableUID_(self, a2, v13, v3, v4);
      v12 = v9;
      if (v9)
      {
        v13[0] = at->coordinate;
        objc_msgSend_resetDependenciesForCell_calcEngine_(v9, v10, v13, self, v11);
      }
    }
  }
}

- (void)updateEmbiggenedTableCache
{
  if (objc_msgSend_isBatchingGroupCellDirtying(self, a2, v2, v3, v4))
  {
    v10 = 1;
  }

  else
  {
    hasEmbiggenedCoords = objc_msgSend_hasEmbiggenedCoords(self->_dependencyTracker, v6, v7, v8, v9);
    v10 = 0;
    self->_hasKnownEmbiggenedTable = hasEmbiggenedCoords;
  }

  self->_needsEmbiggenedCoordsCheck = v10;
}

- (BOOL)referenceWasGuaranteedCleanAtRecalcCycleStart:(const TSCEAnyRef *)start
{
  startCopy = start;
  v23[0] = TSCEAnyRef::containedTableUID(start, a2, start, v3, v4);
  v23[1] = v6;
  v9 = objc_msgSend_tableResolverWrapperForTableUID_(self, v6, v23, v7, v8);
  TSCERangeRef::rangeRefForAnyRef(startCopy, v9, v10, v11, &v22);
  isValid = TSCERangeRef::isValid(&v22);
  LOBYTE(startCopy) = 1;
  if (v9 && isValid)
  {
    if (objc_msgSend_rangeRefIsDirtyOrCurrentlyBeingEvaluated_(self->_dependencyTracker, v13, &v22, v14, v15))
    {
      LOBYTE(startCopy) = 0;
    }

    else if (TSCERangeRef::isSingleCell(&v22))
    {
      v21._rectRepresentation.origin = v22.range._topLeft;
      LODWORD(startCopy) = TSCETableResolverWrapper::cellModifiedInCurrentRecalcCycle(v9, &v21._rectRepresentation.origin, v17, v18, v19) ^ 1;
    }

    else
    {
      TSCETableResolverWrapper::cellsModifiedInCurrentRecalcCycle(v9, v17, v18, v19, &v21);
      LODWORD(startCopy) = TSCECellCoordSet::intersectsRange(&v21, &v22.range) ^ 1;
      sub_22107C860(&v21._rowsPerColumn, v21._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  return startCopy;
}

- (TSCERecalculationState)updateCalculatedPrecedents:(id)precedents forFormula:(id)formula atCellRef:(const TSCECellRef *)ref withState:(TSCERecalculationState)state
{
  precedentsCopy = precedents;
  formulaCopy = formula;
  if (objc_msgSend_shouldPickupRemoteDataInterests(precedentsCopy, v12, v13, v14, v15))
  {
    if ((objc_msgSend_evaluationAborted(precedentsCopy, v16, v17, v18, v19) & 1) == 0)
    {
      v20 = objc_msgSend_remoteDataKeysInterestedIn(precedentsCopy, v16, v17, v18, v19);

      if (v20)
      {
        v25 = objc_msgSend_remoteDataKeysInterestedIn(precedentsCopy, v16, v17, v18, v19);
        if (precedentsCopy)
        {
          objc_msgSend_containingCellRef(precedentsCopy, v21, v22, v23, v24);
        }

        else
        {
          memset(&v95, 0, 24);
        }

        objc_msgSend_replaceRemoteDataKeysInterestedIn_forCell_(self, v21, v25, &v95, v24);
      }
    }
  }

  v26 = objc_msgSend_calculatedPrecedentsExist(precedentsCopy, v16, v17, v18, v19);
  v30 = v26;
  if (v26)
  {
    v31 = 64;
  }

  else
  {
    v31 = 0;
  }

  v32.var0 = v31 | state.var0 & 0xBF;
  if ((v26 | ((state.var0 & 2) >> 1)) == 1)
  {
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = (state.var0 & 0x20) != 0;
    objc_msgSend_precedentsOfCell_(self, v27, ref, v28, v29);
    v37 = objc_msgSend_calculatedPrecedents(precedentsCopy, v33, v34, v35, v36);
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    if ((state.var0 & 2) != 0)
    {
      v38 = 0;
    }

    else
    {
      v38 = v30;
    }

    v94 = v38;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3321888768;
    v88[2] = sub_22123416C;
    v88[3] = &unk_2834A3668;
    var0 = v32.var0;
    TSCEReferenceSet::TSCEReferenceSet(&v89, &v95);
    v88[4] = self;
    v88[5] = &v91;
    v88[6] = &v96;
    TSCEReferenceSet::forallRefs(v37, v88);
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    TSCEReferenceSet::TSCEReferenceSet(&v83, v37);
    v43 = objc_msgSend_formulaObject(formulaCopy, v39, v40, v41, v42);
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v43, v44, &v83, self, ref, 0, 0);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3321888768;
    v81[2] = sub_221234420;
    v81[3] = &unk_2834A36A0;
    TSCEReferenceSet::TSCEReferenceSet(&v82, &v83);
    v81[4] = &v84;
    TSCEReferenceSet::forallRefs(&v95, v81);
    if ((v92[3] & 1) == 0 && *(v85 + 24) != 1)
    {
      goto LABEL_35;
    }

    if (state.var0 & 8) == 0 || (state.var0 & 0x11) == 0x11 || objc_msgSend_inArrayMode(precedentsCopy, v45, v46, v47, v48) && (v85[3])
    {
      goto LABEL_23;
    }

    v49 = [TSCEReferenceSetWrapper alloc];
    v53 = objc_msgSend_initWithReferenceSet_(v49, v50, &v83, v51, v52);
    v58 = objc_msgSend_referenceSet(v53, v54, v55, v56, v57);
    TSCEReferenceSet::insertRefs(v58, &v95);
    *(v85 + 24) = 0;
    if (*(v92 + 24) != 1)
    {
LABEL_34:

LABEL_35:
      if (*(v97 + 24))
      {
        v75 = 32;
      }

      else
      {
        v75 = 0;
      }

      v32.var0 = v75 | v32.var0 & 0xDF;
      TSCEReferenceSet::~TSCEReferenceSet(&v82);

      TSCEReferenceSet::~TSCEReferenceSet(&v83);
      _Block_object_dispose(&v84, 8);
      TSCEReferenceSet::~TSCEReferenceSet(&v89);
      _Block_object_dispose(&v91, 8);
      TSCEReferenceSet::~TSCEReferenceSet(&v95);
      _Block_object_dispose(&v96, 8);
      goto LABEL_39;
    }

    if (!v53)
    {
LABEL_23:
      v63 = [TSCEReferenceSetWrapper alloc];
      v53 = objc_msgSend_initWithReferenceSet_(v63, v64, &v83, v65, v66);
    }

    v67 = objc_msgSend_remoteDataKeysInterestedIn(precedentsCopy, v59, v60, v61, v62);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v80, v67, 1);

    v80.var3 = 1;
    v80.var5 = 1;
    if (state.var0)
    {
      if ((state.var0 & 0x10) != 0)
      {
        v73 = 1;
      }

      else
      {
        v72 = objc_msgSend_referenceSet(v53, v68, v69, v70, v71);
        v73 = TSCEReferenceSet::contains(v72, &v95) ^ 1;
      }

      v80.var0 = v73;
    }

    coordinate = ref->coordinate;
    tableUID = ref->_tableUID;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v77, &v80);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(self, v74, &coordinate, &tableUID, v53, &v77);

    if ((state.var0 & 1) != 0 && ((v92[3] & 1) != 0 || *(v85 + 24) == 1))
    {
      *(v97 + 24) = (*(v97 + 24) | v80.var0) & 1;
    }

    goto LABEL_34;
  }

LABEL_39:

  return v32;
}

- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_accessController);
  v10 = objc_msgSend_hasWrite(WeakRetained, v6, v7, v8, v9);

  if (v10)
  {
    objc_msgSend_beginSuppressingWillModifyCalls(self, v11, v12, v13, v14);
    objc_msgSend_removeAllPrecedentsFromOwner_(self->_dependencyTracker, v15, owner, v16, v17);

    objc_msgSend_endSuppressingWillModifyCalls(self, v18, v19, v20, v21);
  }

  else
  {
    objc_msgSend_pauseRecalculation(self, v11, v12, v13, v14);
    objc_msgSend_beginSuppressingWillModifyCalls(self, v22, v23, v24, v25);
    objc_msgSend_removeAllPrecedentsFromOwner_(self->_dependencyTracker, v26, owner, v27, v28);
    objc_msgSend_endSuppressingWillModifyCalls(self, v29, v30, v31, v32);

    objc_msgSend_resumeRecalculation(self, v33, v34, v35, v36);
  }
}

- (void)removeFormulasFromRange:(const TSCERangeRef *)range
{
  objc_msgSend_beginSuppressingWillModifyCalls(self, a2, range, v3, v4);
  dependencyTracker = self->_dependencyTracker;
  tableUID = range->_tableUID;
  v16[0] = range->range;
  v16[1] = tableUID;
  objc_msgSend_removeFormulasFromRange_(dependencyTracker, v9, v16, v10, v11);
  objc_msgSend_endSuppressingWillModifyCalls(self, v12, v13, v14, v15);
}

- (void)removeFormulasAt:(const void *)at
{
  if ((TSCECellRefSet::isEmpty(at) & 1) == 0)
  {
    objc_msgSend_beginSuppressingWillModifyCalls(self, v5, v6, v7, v8);
    objc_msgSend_removeFormulasAt_(self->_dependencyTracker, v9, at, v10, v11);

    objc_msgSend_endSuppressingWillModifyCalls(self, v12, v13, v14, v15);
  }
}

- (void)setError:(id)error warnings:(id)warnings forCell:(const TSCECellRef *)cell
{
  errorCopy = error;
  warningsCopy = warnings;
  coordinate = cell->coordinate;
  if (*&cell->coordinate != 0x7FFFFFFF && (*&cell->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    upper = cell->_tableUID._upper;
    if (*&cell->_tableUID != 0)
    {
      dependencyTracker = self->_dependencyTracker;
      v15[0] = cell->_tableUID._lower;
      v15[1] = upper;
      objc_msgSend_setError_andWarnings_forCell_inOwner_(dependencyTracker, v9, errorCopy, warningsCopy, coordinate, v15);
    }
  }
}

- (void)updateErrorAndWarnings:(id)warnings forCell:(const TSCECellRef *)cell
{
  warningsCopy = warnings;
  if (objc_msgSend_isError(warningsCopy, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_asErrorValue(warningsCopy, v10, v11, v12, v13);
    v19 = v14;
    if (v14)
    {
      v20 = objc_msgSend_error(v14, v15, v16, v17, v18);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_msgSend_warnings(warningsCopy, v10, v11, v12, v13);
  v26 = objc_msgSend_count(v21, v22, v23, v24, v25);
  if (v20 || v26)
  {
    objc_msgSend_setError_warnings_forCell_(self, v27, v20, v21, cell);
  }

  else
  {
    objc_msgSend_clearErrorAndWarningsForCell_(self, v27, cell, v28, v29);
  }
}

- (void)clearErrorAndWarningsForCell:(const TSCECellRef *)cell
{
  coordinate = cell->coordinate;
  if (coordinate != 0x7FFFFFFF && (coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    lower = cell->_tableUID._lower;
    upper = cell->_tableUID._upper;
    if (lower | upper)
    {
      v12[2] = v4;
      v12[3] = v5;
      dependencyTracker = self->_dependencyTracker;
      v12[0] = lower;
      v12[1] = upper;
      objc_msgSend_clearErrorAndWarningsForCell_inOwner_(dependencyTracker, a2, coordinate, v12, v3);
    }
  }
}

- (void)clearErrorAndWarningsForCells:(const void *)cells
{
  if ((TSCECellRefSet::isEmpty(cells) & 1) == 0)
  {
    dependencyTracker = self->_dependencyTracker;

    objc_msgSend_clearErrorAndWarningsForCells_(dependencyTracker, v5, cells, v6, v7);
  }
}

- (void)clearSpillSizeForCell:(const TSCECellRef *)cell
{
  v9 = objc_msgSend_dependencyTracker(self, a2, cell, v3, v4);
  objc_msgSend_clearSpillSizeForCell_(v9, v6, cell, v7, v8);
}

- (void)clearSpillSizesInRange:(const TSCERangeRef *)range
{
  v9 = objc_msgSend_dependencyTracker(self, a2, range, v3, v4);
  objc_msgSend_clearSpillSizesInRange_(v9, v6, range, v7, v8);
}

- (TSCECellCoordSet)spillOriginsInRange:(SEL)range
{
  v8 = objc_msgSend_dependencyTracker(self, range, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_spillOriginsInRange_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->_rowsPerColumn.__tree_.__size_ = 0;
    retstr->_rectRepresentation = 0u;
    *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  }

  return result;
}

- (void)resetSpillingFormulasInRange:(const TSCERangeRef *)range
{
  if (TSCERangeRef::isValid(range))
  {
    tableUID = range->_tableUID;
    objc_msgSend_clearSpillSizesInRange_(self->_dependencyTracker, v5, range, v6, v7);
    v11 = objc_msgSend_tableResolverForTableUID_(self, v8, &tableUID, v9, v10);
    TSCERangeCoordinate::asCellRect(&range->range);
    if (v11)
    {
      v12 = v11;
      TSUCellRect::enumerateCoordinatesUsingBlock();
    }
  }
}

- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell atRootCell:(const TSCECellRef *)rootCell
{
  coordinate = rootCell->coordinate;
  if (coordinate == 0x7FFFFFFF || (coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_6;
  }

  if (rootCell->_tableUID._lower)
  {
    upper = rootCell->_tableUID._upper;
    goto LABEL_10;
  }

  upper = rootCell->_tableUID._upper;
  if (!upper)
  {
LABEL_6:
    *retstr = *rootCell;
    return self;
  }

LABEL_10:
  self = self[3]._tableUID._lower;
  v9[0] = rootCell->_tableUID._lower;
  v9[1] = upper;
  if (self)
  {
    return objc_msgSend_rootCauseForErrorInCell_inOwner_outAtRootCell_(self, cell, coordinate, v9, a5);
  }

  retstr->coordinate = 0;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  return self;
}

- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner
{
  if (*owner == 0)
  {
    return 0;
  }

  else
  {
    return (MEMORY[0x2821F9670])(self->_dependencyTracker, sel_errorCountForOwner_, owner);
  }
}

- (vector<TSUCellCoord,)formulaCoordsReferringToRange:(TSCECalculationEngine *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning
{
  v6 = a6;
  v10 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, owner, a5, a5, a6);
  result = self->_dependencyTracker;
  if (result)
  {

    return MEMORY[0x2821F9670](result, sel_cellsReferencingRange_fromOwner_skipSpanning_, spanning, v10, v6);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCECalculationEngine *)self inOwner:(SEL)owner
{
  result = self->_dependencyTracker;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_formulaCoordsInRange_inOwnerUID_, a4, a5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_allFormulaCoordsInOwner_(result, owner, a4, v4, v5);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (unint64_t)dirtyCellCountInOwner:(const TSKUIDStruct *)owner
{
  dependencyTracker = self->_dependencyTracker;
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(dependencyTracker, a2, owner, v3, v4);

  return objc_msgSend_numDirtyCellsInOwnerID_(dependencyTracker, v6, v7, v8, v9);
}

- (BOOL)allCellsAreClean
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    if (objc_msgSend_hasDirtyCellsIgnoringNRM_(dependencyTracker, a2, 1, v2, v3))
    {
      v10 = 0;
      self->_hadDirtyCellsRecently = 1;
    }

    else
    {
      v11 = objc_msgSend_referencesToDirty(self, v6, v7, v8, v9);
      self->_hadDirtyCellsRecently = objc_msgSend_isEmptyForDirtying(v11, v12, v13, v14, v15) ^ 1;

      return !self->_hadDirtyCellsRecently;
    }
  }

  else
  {
    return 1;
  }

  return v10;
}

- (BOOL)allCellsAreCleanNonBlocking
{
  if (self->_dependencyTracker)
  {
    v6 = objc_msgSend_referencesToDirty(self, a2, v2, v3, v4);
    isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v6, v7, v8, v9, v10);

    return isEmptyForDirtying && !self->_hadDirtyCellsRecently;
  }

  else
  {
    return 1;
  }
}

- (BOOL)allCellsAreCleanInOwner:(TSKUIDStruct)owner
{
  ownerCopy = owner;
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, &ownerCopy, owner._upper, v3);
  return (objc_msgSend_hasDirtyingToPerformForOwnerId_(self->_refsToDirty, v6, v5, v7, v8) & 1) == 0 && objc_msgSend_numDirtyCellsInOwnerID_(self->_dependencyTracker, v9, v5, v10, v11) == 0;
}

- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_cellsInACycleInOwner_(result, owner, a4, v4, v5);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (void)setRewritingMinion:(id)minion
{
  minionCopy = minion;
  if (minionCopy && self->_rewritingMinion)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCECalculationEngine setRewritingMinion:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1973, 0, "Warning: Overwriting a pre-existing rewritingMinion with a new one");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  rewritingMinion = self->_rewritingMinion;
  self->_rewritingMinion = minionCopy;
}

- (id)extendTableUIDHistoryWithRewrite:(id)rewrite
{
  rewriteCopy = rewrite;
  v9 = rewriteCopy;
  if (rewriteCopy && objc_msgSend_rewriteType(rewriteCopy, v5, v6, v7, v8) == 10)
  {
    objc_msgSend_willModify(self, v10, v11, v12, v13);
    tableUIDHistory = self->_tableUIDHistory;
    if (!tableUIDHistory)
    {
      v35 = 0u;
      v36 = 0u;
      LODWORD(v37) = 1065353216;
      v19 = [TSCERewriteTableUIDInfo alloc];
      v23 = objc_msgSend_initWithTableUIDMap_(v19, v20, &v35, v21, v22);
      v24 = self->_tableUIDHistory;
      self->_tableUIDHistory = v23;

      sub_2210BDEC0(&v35);
      tableUIDHistory = self->_tableUIDHistory;
    }

    v25 = objc_msgSend_tableUIDInfo(v9, v14, v15, v16, v17, v35, v36, v37);
    v30 = objc_msgSend_tableUIDMap(v25, v26, v27, v28, v29);
    v33 = objc_msgSend_extendMappingWithTableUIDs_calcEngine_(tableUIDHistory, v31, v30, self, v32);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)rollbackTableUIDHistoryWithRewriteInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7);
    objc_msgSend_rollbackMappings_(self->_tableUIDHistory, v8, infoCopy, v9, v10);
  }
}

- (void)markCellRefAsDirty:(const TSCECellRef *)dirty
{
  v9 = objc_msgSend_referencesToDirty(self, a2, dirty, v3, v4);
  objc_msgSend_dirtyCellRef_(v9, v6, dirty, v7, v8);
}

- (void)markCellRefsAsDirty:(id)dirty
{
  dirtyCopy = dirty;
  v8 = objc_msgSend_referencesToDirty(self, v4, v5, v6, v7);
  objc_msgSend_dirtyCellRefsInReferenceSet_(v8, v9, dirtyCopy, v10, v11);
}

- (void)markCellRefSetAsDirty:(const void *)dirty
{
  if ((TSCECellRefSet::isEmpty(dirty) & 1) == 0)
  {
    v12 = objc_msgSend_referencesToDirty(self, v5, v6, v7, v8);
    objc_msgSend_dirtyCellRefs_(v12, v9, dirty, v10, v11);
  }
}

- (void)markCoordsDirty:(const void *)dirty inInternalOwner:(unsigned __int16)owner
{
  ownerCopy = owner;
  if (!TSCECellCoordSet::isEmpty(dirty))
  {
    v13 = objc_msgSend_referencesToDirty(self, v7, v8, v9, v10);
    objc_msgSend_dirtyCoords_inOwnerId_(v13, v11, dirty, ownerCopy, v12);
  }
}

- (void)markCoordsDirty:(const void *)dirty inOwner:(const TSKUIDStruct *)owner
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, owner, owner, v4);
  if (v7 != 0xFFFF)
  {

    MEMORY[0x2821F9670](self, sel_markCoordsDirty_inInternalOwner_, dirty, v7, v8);
  }
}

- (void)headerStateOfTableChanged:(TSKUIDStruct)changed changedRows:(BOOL)rows
{
  changedCopy = changed;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self->_dependencyTracker, a2, &changedCopy, rows, rows);
  if (objc_msgSend_isBatchingGroupCellDirtying(self, v5, v6, v7, v8))
  {
    sub_2210C2B00(&self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_.__ptr_, &changedCopy);
  }

  else
  {
    v13 = objc_msgSend_headerNameMgr(self, v9, v10, v11, v12);
    objc_msgSend_updateTrackedHeaders_(v13, v14, &changedCopy, v15, v16);

    v21 = objc_msgSend_namedReferenceManager(self, v17, v18, v19, v20);
    objc_msgSend_updateTrackedHeaders_(v21, v22, &changedCopy, v23, v24);
  }
}

- (void)headerStateOfTableChanged:(TSKUIDStruct)changed
{
  changedCopy = changed;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self->_dependencyTracker, a2, &changedCopy, 1, v3);
  objc_msgSend_headerStateOfTableChanged_changedRows_(self->_dependencyTracker, v5, &changedCopy, 0, v6);
  if (objc_msgSend_isBatchingGroupCellDirtying(self, v7, v8, v9, v10))
  {
    sub_2210C2B00(&self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_.__ptr_, &changedCopy);
  }

  else
  {
    v15 = objc_msgSend_headerNameMgr(self, v11, v12, v13, v14);
    objc_msgSend_updateTrackedHeaders_(v15, v16, &changedCopy, v17, v18);

    v23 = objc_msgSend_namedReferenceManager(self, v19, v20, v21, v22);
    objc_msgSend_updateTrackedHeaders_(v23, v24, &changedCopy, v25, v26);
  }
}

- (void)dirtyCellsForColumnRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange
{
  bottomRight = tableRange._bottomRight;
  topLeft = tableRange._topLeft;
  length = range.length;
  location = range.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0);
  v14.range._topLeft = (*&topLeft & 0xFFFF0000FFFFFFFFLL | (location << 32));
  v14.range._bottomRight = (*&bottomRight & 0xFFFF0000FFFFFFFFLL | (((((location + length) << 32) + 0xFFFF00000000) >> 32) << 32));
  v14._tableUID = *table;
  if (TSCERangeRef::isValid(&v14))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v11, &v14, v12, v13);
  }
}

- (void)dirtyCellsForRowRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange
{
  bottomRight = tableRange._bottomRight;
  topLeft = tableRange._topLeft;
  length = range.length;
  location = range.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1);
  v14.range._topLeft = (*&topLeft & 0xFFFFFFFF00000000 | location);
  v14.range._bottomRight = (*&bottomRight & 0xFFFFFFFF00000000 | (length + location - 1));
  v14._tableUID = *table;
  if (TSCERangeRef::isValid(&v14))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v11, &v14, v12, v13);
  }
}

- (void)dirtyCellsForRemovalOfColumns:(_NSRange)columns fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  location = columns.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0);
  v13.range._topLeft = (*&topLeft & 0xFFFF0000FFFFFFFFLL | (location << 32));
  v13.range._bottomRight = bottomRight;
  v13._tableUID = *table;
  if (TSCERangeRef::isValid(&v13))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v10, &v13, v11, v12);
  }
}

- (void)dirtyCellsForRemovalOfRows:(_NSRange)rows fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  location = rows.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1);
  v13.range._topLeft = (*&topLeft & 0xFFFFFFFF00000000 | location);
  v13.range._bottomRight = bottomRight;
  v13._tableUID = *table;
  if (TSCERangeRef::isValid(&v13))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v10, &v13, v11, v12);
  }
}

- (void)dirtyCellsForInsertionOfColumns:(_NSRange)columns forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange
{
  location = columns.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0, *&range._topLeft, *&range._bottomRight);
  v12.range._topLeft = (*&headerRange._topLeft & 0xFFFF0000FFFFFFFFLL | (location << 32));
  v12.range._bottomRight = headerRange._bottomRight;
  v12._tableUID = *table;
  if (TSCERangeRef::isValid(&v12))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v9, &v12, v10, v11);
  }
}

- (void)dirtyCellsForInsertionOfRows:(_NSRange)rows forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange
{
  location = rows.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1, *&range._topLeft, *&range._bottomRight);
  v12.range._topLeft.row = location;
  *&v12.range._topLeft.column = *&headerRange._topLeft.column;
  v12.range._bottomRight = headerRange._bottomRight;
  v12._tableUID = *table;
  if (TSCERangeRef::isValid(&v12))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v9, &v12, v10, v11);
  }
}

- (void)dirtyCellsForMergingRange:(TSCERangeCoordinate)range forTable:(const TSKUIDStruct *)table headerRowRange:(TSCERangeCoordinate)rowRange headerColumnRange:(TSCERangeCoordinate)columnRange
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  if (range._topLeft.row <= rowRange._bottomRight.row && rowRange._topLeft.row <= range._bottomRight.row && range._topLeft.column <= rowRange._bottomRight.column && rowRange._topLeft.column <= range._bottomRight.column && range._topLeft.row != 0x7FFFFFFF && (*&range._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && range._bottomRight.row != 0x7FFFFFFF && (*&range._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && range._topLeft.column <= range._bottomRight.column && range._topLeft.row <= range._bottomRight.row && rowRange._topLeft.row != 0x7FFFFFFF && (*&rowRange._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && rowRange._bottomRight.row != 0x7FFFFFFF && (*&rowRange._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && rowRange._topLeft.column <= rowRange._bottomRight.column && rowRange._topLeft.row <= rowRange._bottomRight.row)
  {
    objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1);
  }

  v10 = topLeft.row > columnRange._bottomRight.row || columnRange._topLeft.row > bottomRight.row;
  if (!v10 && topLeft.column <= columnRange._bottomRight.column && columnRange._topLeft.column <= bottomRight.column && topLeft.row != 0x7FFFFFFF && (*&topLeft & 0xFFFF00000000) != 0x7FFF00000000 && bottomRight.row != 0x7FFFFFFF && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && topLeft.column <= bottomRight.column && topLeft.row <= bottomRight.row && columnRange._topLeft.row != 0x7FFFFFFF && (*&columnRange._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && columnRange._bottomRight.row != 0x7FFFFFFF && (*&columnRange._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && columnRange._topLeft.column <= columnRange._bottomRight.column && columnRange._topLeft.row <= columnRange._bottomRight.row)
  {
    objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0);
  }

  v14.range._topLeft = topLeft;
  v14.range._bottomRight = bottomRight;
  v14._tableUID = *table;
  if (TSCERangeRef::isValid(&v14))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v11, &v14, v12, v13);
  }
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_internalRangeReferenceForRangeRef_(dependencyTracker, a2, dirty, v3, v4);
  }

  v7 = objc_msgSend_referencesToDirty(self, a2, dirty, v3, v4);
  objc_msgSend_dirtyInternalRangeRef_(v7, v8, v11, v9, v10);
}

- (void)markAllExternalGroupByRefsDirty:(const TSKUIDStruct *)dirty
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  objc_msgSend_cellRefsReferringToGroupBy_outCellRefs_(self->_dependencyTracker, a2, dirty, &v13, v3);
  v9 = objc_msgSend_referencesToDirty(self, v5, v6, v7, v8);
  objc_msgSend_dirtyCellRefs_(v9, v10, &v13, v11, v12);

  sub_22107C800(&v13, v14[0]);
}

- (void)markAllFunctionsAsDirty
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  dependencyTracker = self->_dependencyTracker;

  MEMORY[0x2821F9670](dependencyTracker, sel_dirtyAllFunctions, v6, v7, v8);
}

- (void)markOnlyDependentsDirty:(const TSCECellRef *)dirty
{
  v9 = objc_msgSend_referencesToDirty(self, a2, dirty, v3, v4);
  objc_msgSend_dirtyOnlyDependentsOfCellRef_(v9, v6, dirty, v7, v8);
}

- (void)scheduleDetectAndRepairConsistencyViolations
{
  v8 = objc_msgSend_referencesToDirty(self, a2, v2, v3, v4);
  objc_msgSend_setShouldPerformDetectAndRepairConsistencyViolations_(v8, v5, 1, v6, v7);
}

- (void)markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime
{
  objc_msgSend_pauseRecalculation(self, a2, v2, v3, v4);
  v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7, v8, v9);
  v15 = objc_msgSend_defaultTimeZone(MEMORY[0x277CBEBB0], v11, v12, v13, v14);
  objc_msgSend_setCurrentDate_timeZone_markVolatilesDirty_(self, v16, v10, v15, 1);

  objc_msgSend_resumeRecalculation(self, v17, v18, v19, v20);
}

- (id)rewriteSpecStack
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCECalculationEngine rewriteSpecStack]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 2237, 0, "Need to add locking to run this on multiple threads");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  rewriteSpecStack = self->_rewriteSpecStack;

  return rewriteSpecStack;
}

- (void)pushRewriteSpec:(id)spec
{
  specCopy = spec;
  if (specCopy)
  {
    rewriteSpecStack = self->_rewriteSpecStack;
    if (!rewriteSpecStack)
    {
      v8 = objc_opt_new();
      v9 = self->_rewriteSpecStack;
      self->_rewriteSpecStack = v8;

      rewriteSpecStack = self->_rewriteSpecStack;
    }

    objc_msgSend_addObject_(rewriteSpecStack, v4, specCopy, v5, v6);
  }
}

- (void)popRewriteSpec:(id)spec
{
  specCopy = spec;
  if (specCopy)
  {
    v8 = objc_msgSend_lastObject(self->_rewriteSpecStack, v4, v5, v6, v7);

    if (v8 != specCopy)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECalculationEngine popRewriteSpec:]", v11, v12);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 2267, 0, "Popping wrong rewriteSpec off rewriteSpecStack");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    }

    if (!objc_msgSend_count(self->_rewriteSpecStack, v9, v10, v11, v12))
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCECalculationEngine popRewriteSpec:]", v26, v27);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 2268, 0, "Have no rewriteSpecs to pop");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    if (objc_msgSend_count(self->_rewriteSpecStack, v24, v25, v26, v27))
    {
      objc_msgSend_removeLastObject(self->_rewriteSpecStack, v39, v40, v41, v42);
      if (objc_msgSend_count(self->_rewriteSpecStack, v43, v44, v45, v46))
      {
        v51 = objc_msgSend_lastObject(self->_rewriteSpecStack, v47, v48, v49, v50);
        objc_msgSend_addNestedRewrite_(v51, v52, specCopy, v53, v54);
      }
    }
  }
}

- (void)markRemoteDataVolatileFunctionsAsDirty
{
  objc_msgSend_pauseRecalculation(self, a2, v2, v3, v4);
  objc_msgSend_dirtyRemoteDataVolatileFunctions(self->_dependencyTracker, v6, v7, v8, v9);

  objc_msgSend_resumeRecalculation(self, v10, v11, v12, v13);
}

- (void)markAllVolatileFunctionsAsDirty
{
  objc_msgSend_markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime(self, a2, v2, v3, v4);
  objc_msgSend_markRandomVolatileFunctionsAsDirty(self, v6, v7, v8, v9);
  objc_msgSend_markLocaleVolatileFunctionsAsDirty(self, v10, v11, v12, v13);

  MEMORY[0x2821F9670](self, sel_markRemoteDataVolatileFunctionsAsDirty, v14, v15, v16);
}

- (void)blockUntilRecalcIsCompleteWithTimeout:(double)timeout
{
  if (timeout == 0.0)
  {
    v8 = objc_msgSend_referencesToDirty(self, a2, v3, v4, v5);
    isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v8, v9, v10, v11, v12);

    if ((isEmptyForDirtying & 1) == 0)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_221236AD4;
      v36[3] = &unk_27845E3F8;
      v36[4] = self;
      objc_msgSend_pauseRecalculationForBlock_(self, v14, v36, v16, v17);
    }

    objc_msgSend_p_blockUntilRecalcIsCompleteWithTimeout_(self, v14, v15, v16, v17, timeout);
    while (1)
    {
      v22 = objc_msgSend_referencesToDirty(self, v18, v19, v20, v21);
      v27 = objc_msgSend_isEmptyForDirtying(v22, v23, v24, v25, v26);

      if (v27)
      {
        break;
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_221236B34;
      v35[3] = &unk_27845E3F8;
      v35[4] = self;
      objc_msgSend_pauseRecalculationForBlock_(self, v28, v35, v29, v30);
      objc_msgSend_p_blockUntilRecalcIsCompleteWithTimeout_(self, v31, v32, v33, v34, timeout);
    }
  }

  else
  {

    objc_msgSend_p_blockUntilRecalcIsCompleteWithTimeout_(self, a2, v3, v4, v5);
  }
}

- (void)beginSuppressingWillModifyCalls
{
  if ((objc_msgSend_isSuppressingWillModifyCalls(self->_dependencyTracker, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9);
  }

  dependencyTracker = self->_dependencyTracker;

  objc_msgSend_beginSuppressingWillModifyCalls(dependencyTracker, v6, v7, v8, v9);
}

- (void)pauseRecalculation
{
  calculationPauseCount = self->_calculationPauseCount;
  self->_calculationPauseCount = calculationPauseCount + 1;
  if (!calculationPauseCount)
  {
    if (objc_msgSend_threadState(self, a2, v2, v3, v4))
    {
      if (!self->_shouldCancelRecalculation)
      {
        return;
      }
    }

    else
    {
      self->_shouldCancelRecalculation = 1;
    }

    objc_msgSend_p_blockUntilRecalcTaskExitedWithTimeout_(self, v7, v8, v9, v10, 0.0);
    self->_shouldCancelRecalculation = 0;
  }
}

- (void)pauseRecalculationSometimeSoon
{
  calculationPauseCount = self->_calculationPauseCount;
  self->_calculationPauseCount = calculationPauseCount + 1;
  if (!calculationPauseCount)
  {
    os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
    self->_shouldCancelRecalculation = 1;

    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
  }
}

- (void)resumeRecalculation
{
  WeakRetained = objc_loadWeakRetained(&self->_accessController);
  if (objc_msgSend_hasWrite(WeakRetained, v4, v5, v6, v7))
  {
  }

  else
  {
    IsPaused = objc_msgSend_recalculationIsPaused(self, v8, v9, v10, v11);

    if ((IsPaused & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_221576500(&self->_refResolverMap._refResolverMutex);
LABEL_5:
  calculationPauseCount = self->_calculationPauseCount;
  v18 = __OFSUB__(calculationPauseCount--, 1);
  self->_calculationPauseCount = calculationPauseCount;
  if ((calculationPauseCount < 0) ^ v18 | (calculationPauseCount == 0))
  {
    if (self->_calculationWillShutDown)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCECalculationEngine resumeRecalculation]", v15, v16);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 2545, 0, "Can't resume calculation on a closing document!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    self->_shouldCancelRecalculation = 0;
    if (objc_msgSend_threadState(self, v13, v14, v15, v16) != 2)
    {

      objc_msgSend_startRecalcTaskIfNecessary(self, v30, v31, v32, v33);
    }
  }
}

- (void)pauseRecalculationForBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_pauseRecalculation(self, v4, v5, v6, v7);
  blockCopy[2]();
  objc_msgSend_resumeRecalculation(self, v8, v9, v10, v11);
}

- (void)resumeRecalculationForBlock:(id)block
{
  blockCopy = block;
  if (self->_calculationPauseCount < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      objc_msgSend_resumeRecalculation(self, v4, v5, v6, v7);
      ++v8;
    }

    while (self->_calculationPauseCount > 0);
  }

  blockCopy[2]();
  for (; v8; --v8)
  {
    objc_msgSend_pauseRecalculationSometimeSoon(self, v9, v10, v11, v12);
  }
}

- (void)startRecalculation
{
  if (!self->_calculationWillShutDown && (objc_msgSend_isRecalculationStarted(self, a2, v2, v3, v4) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
    self->_recalculationThreadState = 1;
    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
    objc_msgSend_resumeRecalculation(self, v6, v7, v8, v9);
    if ((objc_msgSend_recalculationIsPaused(self, v10, v11, v12, v13) & 1) == 0 && !self->_calculationWillShutDown && !self->_shouldCancelRecalculation)
    {
      selfCopy = self;
      recalcLowPriorityQueue = selfCopy->_recalcLowPriorityQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2212370D0;
      block[3] = &unk_27845E3F8;
      v18 = selfCopy;
      v16 = selfCopy;
      dispatch_async(recalcLowPriorityQueue, block);
    }
  }
}

- (void)startRecalculationTask
{
  if (self->_recalculationThreadState != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine startRecalculationTask]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 2650, 0, "cannot start recalculation thread because it is in the wrong state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  selfCopy = self;
  recalcLoopGroup = selfCopy->_recalcLoopGroup;
  recalcHighPriorityQueue = selfCopy->_recalcHighPriorityQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_221237274;
  v20[3] = &unk_27845FEF0;
  v21 = selfCopy;
  v22 = selfCopy;
  v19 = selfCopy;
  dispatch_group_async(recalcLoopGroup, recalcHighPriorityQueue, v20);
}

- (void)startRecalcTaskIfNecessary
{
  if (self->_calculationWillShutDown || !self->_dependencyTracker || (objc_msgSend_recalculationIsPaused(self, a2, v2, v3, v4) & 1) != 0 || self->_shouldCancelRecalculation)
  {
    return;
  }

  if ((objc_msgSend_hasDirtyCells(self->_dependencyTracker, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = objc_msgSend_referencesToDirty(self, v10, v11, v12, v13);
    if (objc_msgSend_isEmptyForDirtying(v14, v15, v16, v17, v18))
    {
      hasBackgroundTasks = objc_msgSend_hasBackgroundTasks(self, v19, v20, v21, v22);

      if (!hasBackgroundTasks)
      {
        if (self->_lastHasDirtyFormulas)
        {
          self->_hadDirtyCellsRecently = 1;

          objc_msgSend_notifyObserversOfRecalcProgress(self, v24, v25, v26, v27);
        }

        return;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
  if (self->_recalculationThreadState == 1 && (objc_msgSend_recalculationIsPaused(self, v28, v29, v30, v31) & 1) == 0)
  {
    objc_msgSend_startRecalculationTask(self, v32, v33, v34, v35);
    self->_recalculationThreadState = 0;
    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);

    sub_221576500(&self->_refResolverMap._refResolverMutex);
  }

  else
  {

    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
  }
}

- (void)willClose
{
  self->_calculationWillShutDown = 1;
  objc_msgSend_pauseRecalculation(self, a2, v2, v3, v4);
  objc_msgSend_flushInProgressDirtying(self->_dependencyTracker, v6, v7, v8, v9);
  v14 = objc_msgSend_referencesToDirty(self, v10, v11, v12, v13);
  objc_msgSend_willClose(v14, v15, v16, v17, v18);

  objc_msgSend_willClose(self->_headerNameMgr, v19, v20, v21, v22);
  headerNameMgr = self->_headerNameMgr;
  self->_headerNameMgr = 0;

  objc_msgSend_willClose(self->_namedReferenceManager, v24, v25, v26, v27);
  namedReferenceManager = self->_namedReferenceManager;
  self->_namedReferenceManager = 0;

  objc_msgSend_willClose(self->_tablesByName, v29, v30, v31, v32);
  tablesByName = self->_tablesByName;
  self->_tablesByName = 0;

  sub_221575E6C(&self->_refResolverMap);
  dependencyTracker = self->_dependencyTracker;

  objc_msgSend_willClose(dependencyTracker, v34, v35, v36, v37);
}

- (void)willModify
{
  if (!self->_isUnarchiving)
  {
    objc_msgSend_willModify(self->_dependencyTracker, a2, v2, v3, v4);
  }

  v6.receiver = self;
  v6.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v6 willModify];
}

- (void)superWillModify
{
  v2.receiver = self;
  v2.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v2 willModify];
}

- (id)evaluateSynchedWithCalcEngineWithFormula:(id)formula evalContext:(id)context
{
  formulaCopy = formula;
  contextCopy = context;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_221231978;
  v34 = sub_221231988;
  v35 = 0;
  if (formulaCopy)
  {
    atomic_fetch_add(&dword_27CFB52E4, 1u);
    recalcDispatchGroup = self->_recalcDispatchGroup;
    recalcHighPriorityQueue = self->_recalcHighPriorityQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221237D50;
    block[3] = &unk_278461A90;
    v29 = &v30;
    v27 = formulaCopy;
    v28 = contextCopy;
    dispatch_group_async(recalcDispatchGroup, recalcHighPriorityQueue, block);
    dispatch_group_wait(self->_recalcDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCECalculationEngine evaluateSynchedWithCalcEngineWithFormula:evalContext:]", v8, v9);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 2848, 0, "invalid nil value for '%{public}s'", "formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v24;
}

- (void)beginBatchingGroupCellDirtying
{
  if ((objc_msgSend_isSuppressingWillModifyCalls(self->_dependencyTracker, a2, v2, v3, v4) & 1) == 0)
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9);
  }

  dependencyTracker = self->_dependencyTracker;

  objc_msgSend_beginBatchingGroupCellDirtying(dependencyTracker, v6, v7, v8, v9);
}

- (void)endBatchingGroupCellDirtying
{
  if ((objc_msgSend_endBatchingGroupCellDirtying(self->_dependencyTracker, a2, v2, v3, v4) & 1) == 0)
  {
    if (self->_deferredUpdateTrackedHeaders.__table_.__size_)
    {
      v10 = objc_msgSend_headerNameMgr(self, v6, v7, v8, v9);
      v18 = objc_msgSend_namedReferenceManager(self, v11, v12, v13, v14);
      for (i = &self->_deferredUpdateTrackedHeaders.__table_.__first_node_; ; objc_msgSend_updateTrackedHeaders_(v18, v20, &i[2], v21, v22))
      {
        i = i->__next_;
        if (!i)
        {
          break;
        }

        objc_msgSend_updateTrackedHeaders_(v10, v15, &i[2], v16, v17);
      }

      sub_2210BE918(&self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_.__ptr_);
    }

    if (self->_needsEmbiggenedCoordsCheck)
    {

      objc_msgSend_updateEmbiggenedTableCache(self, v6, v7, v8, v9);
    }
  }
}

- (void)assertAt:(id)at nonCalcEngineException:(id)exception evaluatingFormula:(id)formula
{
  atCopy = at;
  exceptionCopy = exception;
  formulaCopy = formula;
  if (formulaCopy)
  {
    v14 = [TSCEFunctionsInUse alloc];
    v18 = objc_msgSend_initWithCalcEngine_(v14, v15, self, v16, v17);
    v61 = 0;
    __p = 0;
    v59 = TSKMakeUIDStructRandom();
    v60 = v19;
    objc_msgSend_addFunctionUsesInFormula_atCellRef_outContainsVolatileFunction_(v18, v19, formulaCopy, &__p, &v61);
    v27 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v20, @"Functions used:", v21, v22);
    if (v18)
    {
      objc_msgSend_functionsUsed(v18, v23, v24, v25, v26);
      v31 = __p;
      v32 = v59;
      if (__p != v59)
      {
        do
        {
          objc_msgSend_appendFormat_(v27, v28, @" %d", v29, v30, *v31++);
        }

        while (v31 != v32);
      }
    }

    else
    {
      __p = 0;
      v59 = 0;
      v60 = 0;
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }

    v40 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCECalculationEngine assertAt:nonCalcEngineException:evaluatingFormula:]", v42, v43);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v46, v47);
    if (exceptionCopy)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v44, v49, 2953, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@ with formula: %{public}@", atCopy, exceptionCopy, v27);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v44, v49, 2955, 0, "Non-calcEngine type exception passed up to %{public}@ for formula %{public}@.", atCopy, v27);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECalculationEngine assertAt:nonCalcEngineException:evaluatingFormula:]", v11, v12);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v36, v37);
    if (exceptionCopy)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v39, 2959, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@", atCopy, exceptionCopy);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v39, 2961, 0, "Non-calcEngine type exception passed up to %{public}@.", atCopy);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }
}

- (TSCEInternalCellRefSet)corruptCellRefs
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_corruptCellRefs(result, a3, v3, v4, v5);
  }

  *&retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 0;
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  return result;
}

- (void)replaceRemoteDataKeysInterestedIn:(id)in forCell:(const TSCECellRef *)cell
{
  inCopy = in;
  if (!objc_msgSend_count(inCopy, v7, v8, v9, v10))
  {

    inCopy = 0;
  }

  dependencyTracker = self->_dependencyTracker;
  v14 = *&cell->coordinate.row;
  upper = cell->_tableUID._upper;
  objc_msgSend_replaceRemoteDataKeysInterestedInForCell_specifierSet_(dependencyTracker, v11, &v14, inCopy, v12);
}

- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table
{
  v6 = objc_msgSend_tableResolverForTableUID_(self, a2, &table->_tableUID, v3, v4);
  v10 = v6;
  if (v6)
  {
    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v6, v7, table, v8, v9);
  }

  else
  {
    IsWithinTable = 0;
  }

  return IsWithinTable;
}

- (BOOL)referenceIsValid:(const TSCERangeRef *)valid
{
  v6 = objc_msgSend_tableResolverForTableUID_(self, a2, &valid->_tableUID, v3, v4);
  v11 = v6;
  if (v6)
  {
    if (objc_msgSend_isPivotTable(v6, v7, v8, v9, v10))
    {
      IsWithinTableInView = objc_msgSend_rangeIsWithinTableInView_(v11, v12, valid, v13, v14);
    }

    else
    {
      IsWithinTableInView = objc_msgSend_rangeIsWithinTable_(v11, v12, valid, v13, v14);
    }

    v16 = IsWithinTableInView;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)referenceIsValidIncludingSheet:(const TSCERangeRef *)sheet
{
  v10 = objc_msgSend_tableResolverForTableUID_(self, a2, &sheet->_tableUID, v3, v4);
  if (v10 && objc_msgSend_referenceIsValid_(self, v7, sheet, v8, v9))
  {
    v15 = objc_msgSend_sheetName(v10, v11, v12, v13, v14);
    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unsigned)rowHeightInBodyOfTable:(id)table
{
  tableCopy = table;
  v19[0] = objc_msgSend_tableUID(tableCopy, v5, v6, v7, v8);
  v19[1] = v9;
  v12 = objc_msgSend_tableResolverForTableUID_(self, v9, v19, v10, v11);
  v16 = v12;
  if (v12)
  {
    v17 = objc_msgSend_rowHeightInBodyOfTable_(v12, v13, tableCopy, v14, v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unsigned)columnWidthInBodyOfTable:(id)table
{
  tableCopy = table;
  v19[0] = objc_msgSend_tableUID(tableCopy, v5, v6, v7, v8);
  v19[1] = v9;
  v12 = objc_msgSend_tableResolverForTableUID_(self, v9, v19, v10, v11);
  v16 = v12;
  if (v12)
  {
    v17 = objc_msgSend_columnWidthInBodyOfTable_(v12, v13, tableCopy, v14, v15);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (TSTRefNamer)namer
{
  namer = self->_namer;
  if (!namer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_namer)
    {
      v5 = [TSTRefNamer alloc];
      v9 = objc_msgSend_initWithCalcEngine_(v5, v6, selfCopy, v7, v8);
      v10 = self->_namer;
      self->_namer = v9;
    }

    objc_sync_exit(selfCopy);

    namer = self->_namer;
  }

  return namer;
}

- (TSTRefParser)refParser
{
  refParser = self->_refParser;
  if (!refParser)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_refParser)
    {
      v5 = [TSTRefParser alloc];
      v9 = objc_msgSend_initWithCalcEngine_(v5, v6, selfCopy, v7, v8);
      v10 = self->_refParser;
      self->_refParser = v9;
    }

    objc_sync_exit(selfCopy);

    refParser = self->_refParser;
  }

  return refParser;
}

- (TSTHeaderNameMgr)headerNameMgr
{
  headerNameMgr = self->_headerNameMgr;
  if (!headerNameMgr)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine headerNameMgr]", v2, v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 3096, 0, "invalid nil value for '%{public}s'", "_headerNameMgr");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    headerNameMgr = self->_headerNameMgr;
  }

  return headerNameMgr;
}

- (TSCENamedReferenceManager)namedReferenceManager
{
  namedReferenceManager = self->_namedReferenceManager;
  if (!namedReferenceManager)
  {
    v4 = [TSCENamedReferenceManager alloc];
    v9 = objc_msgSend_context(self, v5, v6, v7, v8);
    v12 = objc_msgSend_initWithContext_calculationEngine_(v4, v10, v9, self, v11);
    v13 = self->_namedReferenceManager;
    self->_namedReferenceManager = v12;

    namedReferenceManager = self->_namedReferenceManager;
  }

  return namedReferenceManager;
}

- (void)beginTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m
{
  if (*m != 0 && (objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self, a2, m, v3, v4) & 1) == 0)
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    sub_221083454(&self->_beginTrackingNamesForLegacyNRMQueue, m);

    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  }
}

- (void)endTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m
{
  if (*m != 0 && (objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self, a2, m, v3, v4) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    if (!sub_2210875C4(&self->_tablesWithNoLegacyNRMIndexes.__table_.__bucket_list_.__ptr_, m))
    {
      os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
      objc_msgSend_willModify(self, v7, v8, v9, v10);
      os_unfair_lock_lock(&self->_legacyNrmListsMutex);
      sub_221083454(&self->_endTrackingNamesForLegacyNRMQueue, m);
      sub_2210C2B00(&self->_tablesWithNoLegacyNRMIndexes.__table_.__bucket_list_.__ptr_, m);
    }

    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  }
}

- (TSKUIDStruct)popNextTableToBeginTrackingNames
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  p_beginTrackingNamesForLegacyNRMQueue = &self->_beginTrackingNamesForLegacyNRMQueue;
  if (self->_beginTrackingNamesForLegacyNRMQueue.__begin_ == self->_beginTrackingNamesForLegacyNRMQueue.__end_)
  {
    upper = 0;
    lower = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
    objc_msgSend_willModify(self, v4, v5, v6, v7);
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    begin = p_beginTrackingNamesForLegacyNRMQueue->__begin_;
    end = self->_beginTrackingNamesForLegacyNRMQueue.__end_;
    lower = p_beginTrackingNamesForLegacyNRMQueue->__begin_->_lower;
    upper = p_beginTrackingNamesForLegacyNRMQueue->__begin_->_upper;
    v12 = p_beginTrackingNamesForLegacyNRMQueue->__begin_ + 1;
    v13 = end - v12;
    if (end != v12)
    {
      memmove(p_beginTrackingNamesForLegacyNRMQueue->__begin_, v12, end - v12);
    }

    self->_beginTrackingNamesForLegacyNRMQueue.__end_ = (begin + v13);
  }

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  v14 = lower;
  v15 = upper;
  result._upper = v15;
  result._lower = v14;
  return result;
}

- (TSKUIDStruct)popNextTableToEndTrackingNames
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  p_endTrackingNamesForLegacyNRMQueue = &self->_endTrackingNamesForLegacyNRMQueue;
  if (self->_endTrackingNamesForLegacyNRMQueue.__begin_ == self->_endTrackingNamesForLegacyNRMQueue.__end_)
  {
    upper = 0;
    lower = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
    objc_msgSend_willModify(self, v4, v5, v6, v7);
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    begin = p_endTrackingNamesForLegacyNRMQueue->__begin_;
    end = self->_endTrackingNamesForLegacyNRMQueue.__end_;
    lower = p_endTrackingNamesForLegacyNRMQueue->__begin_->_lower;
    upper = p_endTrackingNamesForLegacyNRMQueue->__begin_->_upper;
    v12 = p_endTrackingNamesForLegacyNRMQueue->__begin_ + 1;
    v13 = end - v12;
    if (end != v12)
    {
      memmove(p_endTrackingNamesForLegacyNRMQueue->__begin_, v12, end - v12);
    }

    self->_endTrackingNamesForLegacyNRMQueue.__end_ = (begin + v13);
  }

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  v14 = lower;
  v15 = upper;
  result._upper = v15;
  result._lower = v14;
  return result;
}

- (void)setDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  sub_2210C2B00(&self->_disallowedHeaderIndexingTables.__table_.__bucket_list_.__ptr_, d);

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
}

- (void)clearDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  sub_2211F2EF4(&self->_disallowedHeaderIndexingTables.__table_.__bucket_list_.__ptr_, d);

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
}

- (BOOL)hasDisallowedHeaderIndexingForTableUID:(const TSKUIDStruct *)d
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  LOBYTE(d) = sub_2210875C4(&self->_disallowedHeaderIndexingTables.__table_.__bucket_list_.__ptr_, d) != 0;
  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  return d;
}

- (void)resetNRM
{
  objc_msgSend_allRefResolverOwnerUIDs(self, a2, v2, v3, v4);
  v13 = objc_msgSend_namedReferenceManager(self, v6, v7, v8, v9);
  for (i = __p; i != v28; i += 16)
  {
    objc_msgSend_endTrackingNamesInTable_(v13, v10, i, v11, v12);
    v18 = objc_msgSend_tableResolverForTableUID_(self, v15, i, v16, v17);
    v23 = v18;
    if (v18)
    {
      if (objc_msgSend_resolverIsATable(v18, v19, v20, v21, v22))
      {
        objc_msgSend_beginTrackingNamesInTable_(v13, v24, i, v25, v26);
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }
}

- (TSCEReferenceSet)precedentsOfCell:(SEL)cell
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_precedentsOfCell_(result, cell, a4, v4, v5);
  }

  retstr->_wholeOwnerRefs = 0;
  *&retstr->_tableUuidRefs = 0u;
  *&retstr->_spanningRefs = 0u;
  *&retstr->_rangeRefs.__tree_.__end_node_.__left_ = 0u;
  *&retstr->_datalessRefs = 0u;
  *&retstr->_cellRefs.__table_.__first_node_.__next_ = 0u;
  *&retstr->_cellRefs.__table_.__max_load_factor_ = 0u;
  *&retstr->_vptr$TSCEReferenceSet = 0u;
  retstr->_cellRefs.__table_.__bucket_list_ = 0u;
  return result;
}

- (TSCECellRefSet)cellDependentsOfCell:(SEL)cell
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_cellDependentsOfCell_(dependencyTracker, cell, a4, v4, v5);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  sub_2212E0848(v10, self, retstr);
  return sub_221122744(v10);
}

- (BOOL)isArrayFormulaCell:(const TSCECellRef *)cell
{
  if (objc_msgSend_ownerKindForOwnerUID_(self, a2, cell->_tableUID._lower, cell->_tableUID._upper, v3) != 1)
  {
    return 0;
  }

  tableUID = cell->_tableUID;
  objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v6, &tableUID, v7, v8);
  if (objc_msgSend_cellHasThisCellPrecedent_precedent_(self->_dependencyTracker, v9, cell, v19, v10))
  {
    return 0;
  }

  tableUID._lower = objc_msgSend_internalCellReferenceForCellRef_(self->_dependencyTracker, v11, cell, v12, v13);
  LODWORD(tableUID._upper) = v15;
  return objc_msgSend_intCellContainsAFormula_(self->_dependencyTracker, v15, &tableUID, v16, v17);
}

- (TSCEInternalCellRefSet)internalSpillingCellsForFormulaAt:(SEL)at
{
  tableUID = a4->_tableUID;
  objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, at, &tableUID, v4, v5);
  result = self->_dependencyTracker;
  tableUID = a4->_tableUID;
  if (result)
  {
    return objc_msgSend_cellsInOwnerDependentOnBoth_precedent1_precedent2_(result, v9, &tableUID, a4, v12);
  }

  *&retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 0;
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  return result;
}

- (TSCECellRefSet)spillingCellsForFormulaAt:(SEL)at
{
  objc_msgSend_internalSpillingCellsForFormulaAt_(self, at, a4, v4, v5);
  sub_2212E0848(v9, self, retstr);
  return sub_221122744(v9);
}

- (TSUCellRect)spillingRangeForFormulaAt:(const TSCECellRef *)at
{
  v6 = objc_msgSend_spillSizeForCell_(self->_dependencyTracker, a2, at, v3, v4);
  coordinate = at->coordinate;
  result.size = v6;
  result.origin = coordinate;
  return result;
}

- (TSCECellRefSet)spillingCellsInRange:(SEL)range inOwner:(const TSUCellRect *)owner
{
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = &retstr->_coordsForOwnerUid.__tree_.__end_node_;
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (objc_msgSend_hasSpillsOverlappingRange_inTableUID_outSpillRects_(self, range, owner, a5, &__p))
  {
    v11._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    v11._rowsPerColumn.__tree_.__size_ = 0;
    v11._rectRepresentation.origin = 0;
    v11._rectRepresentation.size = 0;
    v11._rowsPerColumn.__tree_.__begin_node_ = &v11._rowsPerColumn.__tree_.__end_node_;
    v8 = __p;
    v9 = v13;
    while (v8 != v9)
    {
      TSCECellCoordSet::addCellCoords(&v11, v8);
      TSCECellCoordSet::removeCellCoord(&v11, &v8->origin);
      ++v8;
    }

    TSCECellCoordSet::intersectWith(&v11, owner);
    TSCECellRefSet::addCellRefs(retstr, a5, &v11);
    sub_22107C860(&v11._rowsPerColumn, v11._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  result = __p;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return result;
}

- (TSCECellRefSet)spillingCellsViaDependenciesInRange:(SEL)range inOwner:(const TSUCellRect *)owner
{
  objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, range, a5, a5, v5);
  objc_msgSend_cellDependentsOfCell_(self, v10, v14, v11, v12);
  TSCECellRefSet::intersectWith(retstr, owner, a5);
  return result;
}

- (TSCECellRefSet)spillOriginsSpillingIntoRange:(SEL)range inOwner:(const TSUCellRect *)owner
{
  objc_msgSend_spillingCellsInRange_inOwner_(self, range, owner, a5, v5);
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_2212393D4;
  v15 = sub_2212393E0;
  v16 = &unk_22188E88F;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2212393EC;
  v10[3] = &unk_278461C40;
  v10[5] = &v11;
  v10[6] = a5;
  v10[4] = self;
  TSCECellRefSet::enumerateCellRefsUsingBlock(v19, v10);
  TSCECellRefSet::TSCECellRefSet(retstr, v12 + 2);
  _Block_object_dispose(&v11, 8);
  sub_22107C800(&v17, v18[0]);
  sub_22107C800(v19, v19[1]);
  return result;
}

- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_verticalSpillCells_(result, table, a4, v4, v5);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table inRows:(const TSKUIDStruct *)rows
{
  v11 = a5;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_verticalSpillCells_(dependencyTracker, v8, rows, v9, v10);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x5812000000;
  v22 = sub_2212396D4;
  v23 = sub_2212396E0;
  v24 = &unk_22188E88F;
  v28[0] = 0;
  v28[1] = 0;
  v25 = 0;
  v26 = 0;
  v27 = v28;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2212396EC;
  v15[3] = &unk_278461C68;
  rowsCopy = rows;
  v15[4] = self;
  v13 = v11;
  v16 = v13;
  v17 = &v19;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v29, v15);
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v20 + 6));

  _Block_object_dispose(&v19, 8);
  sub_22107C860(&v27, v28[0]);
  sub_22107C860(&v30, *(&v30 + 1));

  return result;
}

- (BOOL)hasVerticalSpillingCellsInTable:(const TSKUIDStruct *)table inRows:(id)rows
{
  rowsCopy = rows;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_verticalSpillCells_(dependencyTracker, v6, table, v7, v8);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2212398F0;
  v14[3] = &unk_278461C90;
  tableCopy = table;
  v14[4] = self;
  v11 = rowsCopy;
  v15 = v11;
  v16 = &v18;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v22, v14);
  v12 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  sub_22107C860(&v23, *(&v23 + 1));

  return v12;
}

- (TSUCellCoord)conflictWinnerForSpillRect1:(const TSUCellRect *)rect1 spillOrigin2:(const TSUCellCoord *)origin2 inTable:(const TSKUIDStruct *)table
{
  origin = rect1->origin;
  v37 = rect1->origin;
  v6 = *origin2;
  if (origin2->row != 0x7FFFFFFF && (*origin2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return *origin2;
    }

    else if (origin.row != v6.row || ((*&v6 ^ *&origin) & 0x101FFFF00000000) != 0)
    {
      v35 = *origin2;
      v36 = *table;
      if (TSUCellRect::contains(rect1, v6))
      {
        return *origin2;
      }

      else
      {
        v34.origin = objc_msgSend_spillingRangeForFormulaAt_(self, v13, &v35, v14, v15);
        v34.size = v16;
        v17 = origin;
        if ((TSUCellRect::contains(&v34, v17) & 1) == 0)
        {
          if (origin2->row > origin.row || (v19 = origin2, origin2->row == origin.row) && (v19 = origin2, origin2->column > origin.column))
          {
            v19 = &v37;
          }

          v20 = *v19;
          if (v19->row == origin.row && ((*&origin ^ *&v20) & 0x101FFFF00000000) == 0)
          {
            v31 = TSCERangeCoordinate::rangeCoordFromCellRect(&v34, v18);
            v32 = v25;
            v33 = *table;
            dependencyTracker = self->_dependencyTracker;
            v29 = origin;
            v30 = *table;
            if (objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(dependencyTracker, v25, &v29, &v31, v27))
            {
              return *origin2;
            }

            else
            {
              return v20;
            }
          }

          else
          {
            v28 = *rect1;
            v31 = TSCERangeCoordinate::rangeCoordFromCellRect(&v28, v18);
            v32 = v21;
            v33 = *table;
            v22 = self->_dependencyTracker;
            v29 = *origin2;
            v30 = *table;
            if (!objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v22, v21, &v29, &v31, v23))
            {
              return v20;
            }
          }
        }
      }
    }
  }

  return origin;
}

- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table
{
  result = self->_dependencyTracker;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_cellCoordsWithError_inTable_, table, a5);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (id)emptyReferenceSetWrapper
{
  v3 = [TSCEReferenceSetWrapper alloc];
  v7 = objc_msgSend_initWithDependencyTracker_(v3, v4, self->_dependencyTracker, v5, v6);

  return v7;
}

- (void)addCalculationStateObserver:(id)observer
{
  observerCopy = observer;
  calculationStateObservers = self->_calculationStateObservers;
  v13 = observerCopy;
  if (!calculationStateObservers)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_calculationStateObservers;
    self->_calculationStateObservers = v8;

    calculationStateObservers = self->_calculationStateObservers;
    observerCopy = v13;
  }

  objc_msgSend_addObject_(calculationStateObservers, observerCopy, observerCopy, v5, v6);
  if (self->_lastHasDirtyFormulas)
  {
    objc_msgSend_recalcInProgressUpdate_(v13, v10, 1, v11, v12);
  }
}

- (void)removeCalculationStateObserver:(id)observer
{
  observerCopy = observer;
  objc_msgSend_removeObject_(self->_calculationStateObservers, v4, observerCopy, v5, v6);
  if (!objc_msgSend_count(self->_calculationStateObservers, v7, v8, v9, v10))
  {
    calculationStateObservers = self->_calculationStateObservers;
    self->_calculationStateObservers = 0;
  }
}

- (void)addAllFormulasCleanObserver:(id)observer
{
  observerCopy = observer;
  allFormulasCleanObservers = self->_allFormulasCleanObservers;
  v10 = observerCopy;
  if (!allFormulasCleanObservers)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_allFormulasCleanObservers;
    self->_allFormulasCleanObservers = v8;

    allFormulasCleanObservers = self->_allFormulasCleanObservers;
    observerCopy = v10;
  }

  objc_msgSend_addObject_(allFormulasCleanObservers, observerCopy, observerCopy, v5, v6);
}

- (void)removeAllFormulasCleanObserver:(id)observer
{
  observerCopy = observer;
  objc_msgSend_removeObject_(self->_allFormulasCleanObservers, v4, observerCopy, v5, v6);
  if (!objc_msgSend_count(self->_allFormulasCleanObservers, v7, v8, v9, v10))
  {
    allFormulasCleanObservers = self->_allFormulasCleanObservers;
    self->_allFormulasCleanObservers = 0;
  }
}

- (void)notifyObserversOfRecalcProgress
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if ((objc_msgSend_hasDirtyCellsIgnoringNRM_(self->_dependencyTracker, a2, 1, v2, v3) & 1) == 0)
  {
    v10 = objc_msgSend_referencesToDirty(self, v6, v7, v8, v9);
    v5 = objc_msgSend_isEmptyForDirtying(v10, v11, v12, v13, v14) ^ 1;
  }

  self->_hadDirtyCellsRecently = v5;
  if (objc_msgSend_count(self->_calculationStateObservers, v6, v7, v8, v9))
  {
    lastUpdateTime = self->_lastUpdateTime;
    if (lastUpdateTime)
    {
      if (self->_lastHasDirtyFormulas == v5 || ((objc_msgSend_timeIntervalSinceNow(lastUpdateTime, v15, v16, v17, v18), v20 > -1.0) ? (v21 = v5) : (v21 = 0), (v21 & 1) != 0))
      {
        if (v5)
        {
LABEL_11:
          LOBYTE(v5) = 1;
          goto LABEL_22;
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v24 = self->_calculationStateObservers;
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v46, v51, 16);
        if (v29)
        {
          v30 = *v47;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v24);
              }

              objc_msgSend_recalcInProgressUpdate_(*(*(&v46 + 1) + 8 * i), v26, v5, v27, v28);
            }

            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v46, v51, 16);
          }

          while (v29);
        }

        self->_lastHasDirtyFormulas = v5;
        if (v5)
        {
          goto LABEL_11;
        }
      }

      v32 = self->_lastUpdateTime;
      self->_lastUpdateTime = 0;

      LOBYTE(v5) = 0;
    }

    else
    {
      v22 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16, v17, v18);
      v23 = self->_lastUpdateTime;
      self->_lastUpdateTime = v22;

      self->_lastHasDirtyFormulas = 0;
    }
  }

LABEL_22:
  if (!((objc_msgSend_count(self->_allFormulasCleanObservers, v15, v16, v17, v18) == 0) | v5 & 1))
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = self->_allFormulasCleanObservers;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v42, v50, 16);
    if (v39)
    {
      v40 = *v43;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v43 != v40)
          {
            objc_enumerationMutation(v33);
          }

          objc_msgSend_allFormulaCellsAreClean(*(*(&v42 + 1) + 8 * j), v35, v36, v37, v38, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v42, v50, 16);
      }

      while (v39);
    }
  }
}

- (BOOL)hasMaxNumFormulas
{
  if (objc_msgSend_numberOfFormulas(self->_dependencyTracker, a2, v2, v3, v4) != -1)
  {
    return 0;
  }

  dependencyTracker = self->_dependencyTracker;
  v12 = objc_msgSend_headerNameMgr(self, v6, v7, v8, v9);
  v35 = objc_msgSend_NRM_formulaOwnerUID(v12, v13, v14, v15, v16);
  v36 = v17;
  v20 = objc_msgSend_numFormulaCellsInOwnerUID_(dependencyTracker, v17, &v35, v18, v19);

  v21 = self->_dependencyTracker;
  v26 = objc_msgSend_headerNameMgr(self, v22, v23, v24, v25);
  v35 = objc_msgSend_formulaOwnerUID(v26, v27, v28, v29, v30);
  v36 = v31;
  v34 = objc_msgSend_numFormulaCellsInOwnerUID_(v21, v31, &v35, v32, v33);

  return v20 + v34 == 0;
}

- (id)documentRoot
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);

  return objc_msgSend_documentObject(v5, v6, v7, v8, v9);
}

- (id)documentLocale
{
  documentLocale = self->_documentLocale;
  if (!documentLocale)
  {
    v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
    v12 = objc_msgSend_documentLocale(v7, v8, v9, v10, v11);
    v13 = self->_documentLocale;
    self->_documentLocale = v12;

    documentLocale = self->_documentLocale;
  }

  return documentLocale;
}

- (void)documentLocaleDidChange
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22123A354;
  block[3] = &unk_27845E3F8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (TSCECellCoordSet)cellCoordinatesNeedingExcelImportForTable:(SEL)table
{
  result = self->_dependencyTracker;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_cellCoordinatesNeedingExcelImport_, a4);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22123EA18, off_2812E2AC8[178], v6);

  XLImportDateMode = self->_XLImportDateMode;
  if (XLImportDateMode == 1)
  {
    v13 = 2;
  }

  else
  {
    if (XLImportDateMode != 2)
    {
      goto LABEL_6;
    }

    v13 = 3;
  }

  *(v7 + 16) |= 0x4000u;
  *(v7 + 180) = v13;
LABEL_6:
  hasKnownEmbiggenedTable = self->_hasKnownEmbiggenedTable;
  v17 = objc_msgSend_containsAnyTable(self->_dependencyTracker, v8, v9, v10, v11);
  if ((hasKnownEmbiggenedTable | v17))
  {
    if (hasKnownEmbiggenedTable)
    {
      v18 = @"TSTExpandedTables";
    }

    else
    {
      v18 = @"TSCEReduceCalcEngineMsgSize";
    }

    if (hasKnownEmbiggenedTable)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v15, 0xA000000000003, v18, v16);
    }

    else
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v15, 0x300020000000ALL, v18, v16);
    }
  }

  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = sub_22123AC64;
  v104[3] = &unk_278461CB8;
  v19 = (v17 | hasKnownEmbiggenedTable) ^ 1;
  v104[4] = self;
  v106 = v7;
  v107 = v19 & 1;
  v108 = hasKnownEmbiggenedTable;
  v20 = archiverCopy;
  v105 = v20;
  objc_msgSend_pushScopeForField_message_usingBlock_(v20, v21, 2, v7, v104);
  if (!self->_shouldPreventArchivingOfLocaleIdentifier)
  {
    v26 = objc_msgSend_documentLocale(self, v22, v23, v24, v25);
    v31 = objc_msgSend_localeIdentifier(v26, v27, v28, v29, v30);

    if (v31)
    {
      v36 = objc_msgSend_tsp_protobufString(v31, v32, v33, v34, v35);
      *(v7 + 16) |= 4u;
      sub_22108CCD0(__p, v36);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v110 < 0)
      {
        operator delete(__p[0]);
      }

      v41 = objc_msgSend_referencesToDirty(self, v37, v38, v39, v40);
      isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v41, v42, v43, v44, v45);

      if (isEmptyForDirtying)
      {
        v51 = objc_msgSend_tsp_protobufString(v31, v47, v48, v49, v50);
        *(v7 + 16) |= 1u;
        sub_22108CCD0(__p, v51);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v110 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  documentRandomSeed = self->_documentRandomSeed;
  *(v7 + 16) |= 0x800u;
  *(v7 + 160) = documentRandomSeed;
  v53 = objc_msgSend_currentDate(self, v22, v23, v24, v25);
  objc_msgSend_timeIntervalSinceReferenceDate(v53, v54, v55, v56, v57);
  *(v7 + 16) |= 0x1000u;
  *(v7 + 168) = v58;

  v63 = objc_msgSend_currentTimeZone(self, v59, v60, v61, v62);
  v68 = objc_msgSend_name(v63, v64, v65, v66, v67);

  if (v68)
  {
    v73 = objc_msgSend_tsp_protobufString(v68, v69, v70, v71, v72);
    *(v7 + 16) |= 2u;
    sub_22108CCD0(__p, v73);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v110 < 0)
    {
      operator delete(__p[0]);
    }
  }

  namedReferenceManager = self->_namedReferenceManager;
  if (namedReferenceManager)
  {
    *(v7 + 16) |= 0x10u;
    v75 = *(v7 + 104);
    if (!v75)
    {
      v76 = *(v7 + 8);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = MEMORY[0x223DA0390](v76);
      *(v7 + 104) = v75;
    }

    objc_msgSend_setStrongReference_message_(v20, v69, namedReferenceManager, v75, v72);
  }

  headerNameMgr = self->_headerNameMgr;
  if (headerNameMgr)
  {
    *(v7 + 16) |= 0x200u;
    v78 = *(v7 + 144);
    if (!v78)
    {
      v79 = *(v7 + 8);
      if (v79)
      {
        v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
      }

      v78 = MEMORY[0x223DA0390](v79);
      *(v7 + 144) = v78;
    }

    objc_msgSend_setStrongReference_message_(v20, v69, headerNameMgr, v78, v72);
  }

  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  sub_22123ACF4(&self->_beginTrackingNamesForLegacyNRMQueue.__begin_, (v7 + 24));
  sub_22123ACF4(&self->_endTrackingNamesForLegacyNRMQueue.__begin_, (v7 + 48));
  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  refsToDirty = self->_refsToDirty;
  *(v7 + 16) |= 0x400u;
  v83 = *(v7 + 152);
  if (!v83)
  {
    v84 = *(v7 + 8);
    if (v84)
    {
      v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
    }

    v83 = MEMORY[0x223DA0390](v84);
    *(v7 + 152) = v83;
  }

  objc_msgSend_setStrongReference_message_(v20, v80, refsToDirty, v83, v81);
  if (objc_msgSend_hasArchivableState(self->_remoteDataStore, v85, v86, v87, v88))
  {
    remoteDataStore = self->_remoteDataStore;
    *(v7 + 16) |= 0x80u;
    v93 = *(v7 + 128);
    if (!v93)
    {
      v94 = *(v7 + 8);
      if (v94)
      {
        v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
      }

      v93 = MEMORY[0x223DA0390](v94);
      *(v7 + 128) = v93;
    }

    objc_msgSend_setStrongReference_message_(v20, v89, remoteDataStore, v93, v91);
  }

  if (!hasKnownEmbiggenedTable)
  {
    uuidReferenceMap = self->_uuidReferenceMap;
    if (uuidReferenceMap)
    {
      *(v7 + 16) |= 0x20u;
      v96 = *(v7 + 112);
      if (!v96)
      {
        v97 = *(v7 + 8);
        if (v97)
        {
          v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
        }

        v96 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive>(v97);
        *(v7 + 112) = v96;
      }

      objc_msgSend_encodeToArchive_alsoSave31Format_archiver_(uuidReferenceMap, v89, v96, v19 & 1, v20);
    }

    groupNodeReferenceMap = self->_groupNodeReferenceMap;
    if (groupNodeReferenceMap)
    {
      *(v7 + 16) |= 0x100u;
      v99 = *(v7 + 136);
      if (!v99)
      {
        v100 = *(v7 + 8);
        if (v100)
        {
          v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
        }

        v99 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive>(v100);
        *(v7 + 136) = v99;
      }

      objc_msgSend_encodeToArchive_(groupNodeReferenceMap, v89, v99, v90, v91);
    }
  }

  tableUIDHistory = self->_tableUIDHistory;
  if (tableUIDHistory)
  {
    *(v7 + 16) |= 0x40u;
    v102 = *(v7 + 120);
    if (!v102)
    {
      v103 = *(v7 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive>(v103);
      *(v7 + 120) = v102;
    }

    objc_msgSend_saveToMessage_(tableUIDHistory, v89, v102, v90, v91);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  self->_isUnarchiving = 1;
  v5 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812E2AC8[178], v7, v8);

  self->_calculationPauseCount = 0;
  if (objc_msgSend_fileFormatVersion(v5, v10, v11, v12, v13) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v14, v15, v16, v17);
  }

  v18 = [TSCETablesByName alloc];
  v22 = objc_msgSend_initWithCalcEngine_(v18, v19, self, v20, v21);
  tablesByName = self->_tablesByName;
  self->_tablesByName = v22;

  self->_XLImportDateMode = 0;
  v28 = *(v9 + 16);
  if ((v28 & 0x2000) != 0)
  {
    if (*(v9 + 176))
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    goto LABEL_11;
  }

  if ((v28 & 0x4000) != 0)
  {
    v29 = *(v9 + 180);
    if (v29 == 2)
    {
      v30 = 1;
      goto LABEL_11;
    }

    if (v29 != 3)
    {
      goto LABEL_12;
    }
  }

  v30 = 2;
LABEL_11:
  self->_XLImportDateMode = v30;
LABEL_12:
  self->_loadFromFileVersion = objc_msgSend_fileFormatVersion(v5, v24, v25, v26, v27);
  objc_msgSend_initializeDispatchObjects(self, v31, v32, v33, v34);
  v35 = [TSCEBulkCellChangeMinion alloc];
  v39 = objc_msgSend_initWithCalcEngine_(v35, v36, self, v37, v38);
  spillFormulasMinion = self->_spillFormulasMinion;
  self->_spillFormulasMinion = v39;

  objc_msgSend_pauseRecalculation(self, v41, v42, v43, v44);
  v45 = [TSCEDependencyTracker alloc];
  if (*(v9 + 96))
  {
    v47 = objc_msgSend_initWithCalcEngine_archive_unarchiver_(v45, v46, self, *(v9 + 96), v5);
  }

  else
  {
    v47 = objc_msgSend_initWithCalcEngine_archive_unarchiver_(v45, v46, self, &TSCE::_DependencyTrackerArchive_default_instance_, v5);
  }

  dependencyTracker = self->_dependencyTracker;
  self->_dependencyTracker = v47;

  inProgressLeaves = self->_inProgressLeaves;
  if (inProgressLeaves)
  {
    sub_22123E714((inProgressLeaves + 1));

    MEMORY[0x223DA1450](inProgressLeaves, 0x10A0C40C346037DLL);
  }

  operator new();
}

- (id)newTableResolverForResolver:(id)resolver
{
  resolverCopy = resolver;
  v4 = [TSTTableResolver alloc];
  v8 = objc_msgSend_initWithTableModel_(v4, v5, resolverCopy, v6, v7);

  return v8;
}

- (id)resolverContainerMatchingName:(id)name inDocumentRoot:(id)root
{
  nameCopy = name;
  v5 = TSUProtocolCast();
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_resolverContainerForName_caseSensitive_(v5, v6, nameCopy, 0, v7, &unk_283599058);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)resolverMatchingName:(id)name inDocumentRoot:(id)root contextResolver:(id)resolver
{
  nameCopy = name;
  resolverCopy = resolver;
  v8 = TSUProtocolCast();
  v11 = objc_msgSend_resolverMatchingName_contextResolver_(v8, v9, nameCopy, resolverCopy, v10, &unk_283599058);

  return v11;
}

- (id)resolverMatchingNameWithContextContainer:(id)container inDocumentRoot:(id)root contextContainerName:(id)name
{
  containerCopy = container;
  nameCopy = name;
  v8 = TSUProtocolCast();
  v11 = objc_msgSend_resolverMatchingName_contextContainerName_(v8, v9, containerCopy, nameCopy, v10, &unk_283599058);

  return v11;
}

- (TSKUIDStruct)mapOwnerUID:(const TSKUIDStruct *)d
{
  lower = d->_lower;
  upper = d->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (unsigned)aggregateTypeForCategoryRef:(id)ref
{
  refCopy = ref;
  v13 = objc_msgSend_type(refCopy, v5, v6, v7, v8);
  if (v13 == 11)
  {
    v14 = objc_msgSend_groupByUid(refCopy, v9, v10, v11, v12);
    v16 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v15, v14, v15, self);
    LOBYTE(v13) = objc_msgSend_aggregateTypeForCategoryRef_(v16, v17, refCopy, v18, v19);
  }

  return v13;
}

- (vector<TSCEValue)valuesForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid hidingActionMask:(id)mask error:(const TSKUIDStruct *)error
{
  v8 = a6;
  maskCopy = mask;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  v15 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v13, maskCopy, self, v14);
  v20 = v15;
  if (v15 && objc_msgSend_isValidCategoryRef_(v15, v16, maskCopy, v18, v19))
  {
    v35 = 0;
    objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_outError_(v20, v16, maskCopy, error, v8, &v35);
    v21 = v35;
    sub_2210BC2A8(&retstr->__begin_);
    *&retstr->__begin_ = v36;
    retstr->var1 = v37;
    v37 = 0;
    v36 = 0uLL;
    v38 = &v36;
    sub_22107C2C0(&v38);
    if (a7 && v21)
    {
      v26 = v21;
      *a7 = v21;
    }

    else if (a7)
    {
      var0 = retstr->var0;
      if ((var0 - retstr->__begin_) == 8)
      {
        v28 = objc_msgSend_asErrorValue(*(var0 - 1), v22, v23, v24, v25);
        v33 = v28;
        if (v28)
        {
          *a7 = objc_msgSend_error(v28, v29, v30, v31, v32);
        }
      }
    }
  }

  else if (a7)
  {
    *a7 = objc_msgSend_invalidReferenceError(TSCEError, v16, v17, v18, v19);
  }

  return result;
}

- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask error:(id *)error
{
  maskCopy = mask;
  refCopy = ref;
  v13 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v11, refCopy, self, v12);
  v18 = v13;
  if (!v13 || !objc_msgSend_isValidCategoryRef_(v13, v14, refCopy, v16, v17))
  {
    if (error)
    {
      *error = objc_msgSend_invalidReferenceError(TSCEError, v14, v15, v16, v17);
    }

    goto LABEL_14;
  }

  v43 = 0;
  v19 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(v18, v14, refCopy, uid, maskCopy, &v43);
  v20 = v43;
  v25 = v20;
  if (error && v20)
  {
    v26 = v20;
    *error = v25;
  }

  else
  {
    v27 = objc_msgSend_count(v19, v21, v22, v23, v24);
    if (error && v27 == 1)
    {
      v32 = objc_msgSend_firstValue(v19, v28, v29, v30, v31);
      v37 = objc_msgSend_asErrorValue(v32, v33, v34, v35, v36);

      if (v37)
      {
        *error = objc_msgSend_error(v37, v38, v39, v40, v41);
      }
    }
  }

  if (!v19)
  {
LABEL_14:
    v19 = objc_opt_new();
  }

  return v19;
}

- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid
{
  v8 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v11 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v9, v8, self, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_cellRefsForCategoryRef_atRowUid_(v11, v12, v8, a5, v13);
    *&retstr->__begin_ = v16;
    retstr->__cap_ = v17;
  }

  return result;
}

- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSCECalculationEngine *)self
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v9 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v7, v6, self, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_categoryRefsForSpanningCategoryRef_(v9, v10, v6, v11, v12);
    sub_2210BC2A8(&retstr->var0);
    *&retstr->var0 = v15;
    retstr->var2 = v16;
    v16 = 0;
    v15 = 0uLL;
    v17 = &v15;
    sub_22107C2C0(&v17);
  }

  return result;
}

- (vector<TSCECellRef,)unorderedCellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid
{
  v8 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v11 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v9, v8, self, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_unorderedCellRefsForCategoryRef_atRowUid_(v11, v12, v8, a5, v13);
    *&retstr->__begin_ = v16;
    retstr->__cap_ = v17;
  }

  return result;
}

- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref
{
  v6 = a4;
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  v9 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v7, v6, self, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_aggregateRangeRefForCategoryRef_(v9, v10, v6, v11, v12);
    retstr->range = v15;
    retstr->_tableUID = v16;
  }

  return result;
}

- (int)preferredDispatchQueueWidth
{
  v5 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, v2, v3, v4);
  v10 = (objc_msgSend_processorCount(v5, v6, v7, v8, v9) * 1.5);

  v11 = atomic_load(&dword_27CFB52E4);
  v12 = v10 - v11;
  if (v12 <= 1)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

- (void)assertNonCalcEngineException:(id)exception exception:(id)a4 evaluatingFormula:(id)formula
{
  exceptionCopy = exception;
  v9 = a4;
  formulaCopy = formula;
  if (formulaCopy)
  {
    v14 = [TSCEFunctionsInUse alloc];
    v18 = objc_msgSend_initWithCalcEngine_(v14, v15, self, v16, v17);
    v61 = 0;
    __p = 0;
    v59 = TSKMakeUIDStructRandom();
    v60 = v19;
    objc_msgSend_addFunctionUsesInFormula_atCellRef_outContainsVolatileFunction_(v18, v19, formulaCopy, &__p, &v61);
    v27 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v20, @"Functions used:", v21, v22);
    if (v18)
    {
      objc_msgSend_functionsUsed(v18, v23, v24, v25, v26);
      v31 = __p;
      v32 = v59;
      if (__p != v59)
      {
        do
        {
          objc_msgSend_appendFormat_(v27, v28, @" %d", v29, v30, *v31++);
        }

        while (v31 != v32);
      }
    }

    else
    {
      __p = 0;
      v59 = 0;
      v60 = 0;
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }

    v40 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCECalculationEngine assertNonCalcEngineException:exception:evaluatingFormula:]", v42, v43);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v46, v47);
    if (v9)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v44, v49, 4270, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@ with formula: %{public}@", exceptionCopy, v9, v27);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v44, v49, 4272, 0, "Non-calcEngine type exception passed up to %{public}@ for formula %{public}@.", exceptionCopy, v27);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECalculationEngine assertNonCalcEngineException:exception:evaluatingFormula:]", v11, v12);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v36, v37);
    if (v9)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v39, 4276, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@", exceptionCopy, v9);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v39, 4278, 0, "Non-calcEngine type exception passed up to %{public}@.", exceptionCopy);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }
}

- (void)dispatchOnePhase:(void *)phase
{
  if (!phase)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine dispatchOnePhase:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 4284, 0, "invalid nil value for '%{public}s'", "phase");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  *(phase + 82) = 1;
  atomic_fetch_add(&dword_27CFB52E4, 1u);
  recalcDispatchGroup = self->_recalcDispatchGroup;
  if (self->_blockingUntilRecalcIsComplete)
  {
    v19 = &OBJC_IVAR___TSCECalculationEngine__recalcHighPriorityQueue;
  }

  else
  {
    v19 = &OBJC_IVAR___TSCECalculationEngine__recalcLowPriorityQueue;
  }

  v20 = *(&self->super.super.isa + *v19);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22123CAD4;
  block[3] = &unk_278461DA8;
  block[4] = self;
  block[5] = phase;
  dispatch_group_async(recalcDispatchGroup, v20, block);
}

- (void)recalcPhaseHoldingReadLock:(void *)lock
{
  while (1)
  {
    v7 = *lock;
    if (v7 == 0xFFFF)
    {
      break;
    }

    v8 = **(lock + 1);
    v9 = *(lock + 81);
    if (*(lock + 80))
    {
      v10 = 66;
    }

    else
    {
      v10 = 0;
    }

    if ((objc_msgSend_ownerIdIsUnregistering_(self->_dependencyTracker, a2, v7, v3, v4) & 1) == 0)
    {
      v15 = v10 | v9;
      v16 = *(lock + 9);
      if (v16)
      {
        if (objc_msgSend_evaluationMode(v16, v11, v12, v13, v14) == 1)
        {
          v41._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
          v41._rowsPerColumn.__tree_.__size_ = 0;
          v41._rectRepresentation.origin = 0;
          v41._rectRepresentation.size = 0;
          v41._rowsPerColumn.__tree_.__begin_node_ = &v41._rowsPerColumn.__tree_.__end_node_;
          v18 = *(lock + 1);
          v17 = *(lock + 2);
          while (v18 != v17)
          {
            TSCECellCoordSet::addCellCoord(&v41, v18);
            v18 += 4;
          }

          v21 = objc_msgSend_multiEvaluateFormulasAt_withCalcEngine_recalcOptions_(*(lock + 9), v11, &v41, self, v15);
          sub_22107C860(&v41._rowsPerColumn, v41._rowsPerColumn.__tree_.__end_node_.__left_);
LABEL_15:
          objc_msgSend_evaluationCompletedForCells_resultState_(self->_dependencyTracker, v19, lock, v21, v20);
          if ((v21 & 0x80) != 0)
          {
            return;
          }

          goto LABEL_16;
        }

        v16 = *(lock + 9);
      }

      v21 = objc_msgSend_evaluateFormulaAt_withCalcEngine_recalcOptions_(v16, v11, v8, self, v15);
      goto LABEL_15;
    }

    objc_msgSend_evaluationCompletedForCells_resultState_(self->_dependencyTracker, v11, lock, 0, v14);
LABEL_16:
    sub_22123E79C(lock + 4, lock);
    *lock = -1;
    *(lock + 2) = *(lock + 1);
    if ((objc_msgSend_stopEvaluatingNewLeaves(self, v22, v23, v24, v25) & 1) == 0)
    {
      v41._rectRepresentation.origin = 0x7FFF7FFFFFFFLL;
      v41._rectRepresentation.size.numberOfColumns = 0xFFFF;
      v41._rowsPerColumn.__tree_.__begin_node_ = 0;
      v41._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      os_unfair_lock_lock(&self->_inProgressLeavesMutex);
      if (!sub_221426BFC(self->_inProgressLeaves))
      {
        v30 = sub_221426D74(self->_inProgressLeaves, v26, v27, v28, v29);
        v31 = *(v30 + 16);
        v41._rectRepresentation = *v30;
        *&v41._rowsPerColumn.__tree_.__begin_node_ = v31;
        sub_221426E50(self->_inProgressLeaves);
      }

      os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
      numberOfColumns = v41._rectRepresentation.size.numberOfColumns;
      if (LOWORD(v41._rectRepresentation.size.numberOfColumns) != 0xFFFF)
      {
        sub_2212308B8(lock, &v41, self->_dependencyTracker);
        v37 = *(lock + 9);
        if (v37)
        {
          if (objc_msgSend_evaluationMode(v37, v32, v33, v34, v35) == 1)
          {
            os_unfair_lock_lock(&self->_inProgressLeavesMutex);
            sub_221426FCC(self->_inProgressLeaves, numberOfColumns, &v39);
            v38 = *(lock + 1);
            if (v38)
            {
              *(lock + 2) = v38;
              operator delete(v38);
              *(lock + 1) = 0;
              *(lock + 2) = 0;
              *(lock + 3) = 0;
            }

            *(lock + 8) = v39;
            *(lock + 3) = v40;
            os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
            sub_221230A4C(lock + 8, &v41);
          }
        }
      }

      if ((objc_msgSend_stopEvaluatingNewLeaves(self, v32, v33, v34, v35) & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

- (BOOL)recalcHoldingReadLock
{
  ++self->_recalcCyclesSinceOpen;
  v3 = objc_opt_new();
  v8 = objc_msgSend_referencesToDirty(self, v4, v5, v6, v7);
  isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v8, v9, v10, v11, v12);

  v18 = 0.5;
  if (isEmptyForDirtying)
  {
LABEL_2:
    dispatch_group_wait(self->_recalcDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
    self->_stopEvaluating = 0;
    objc_msgSend_clearSpillingOriginCache(self, v19, v20, v21, v22);
    v27 = objc_msgSend_preferredDispatchQueueWidth(self, v23, v24, v25, v26);
    v146 = 10 * v27;
    objc_msgSend_loadInProgressLeaves_(self, v28, 10 * v27, v29, v30);
    v35 = sub_221426C20(self->_inProgressLeaves);
    if (v35)
    {
      self->_hadDirtyCellsRecently = 1;
      v36 = objc_msgSend_documentLocale(self, v31, v32, v33, v34);
      v41 = objc_msgSend_dateParserLibrary(v36, v37, v38, v39, v40);
      objc_msgSend_prepareDateParserInBackground(v41, v42, v43, v44, v45);
    }

    else if ((objc_msgSend_recalculationIsPaused(self, v31, v32, v33, v34) & 1) != 0 || !objc_msgSend_hasDirtyCells(self->_dependencyTracker, v46, v47, v48, v49))
    {
      v35 = 0;
    }

    else
    {
      objc_msgSend_findAndRecordCyclesInDirtyCells(self->_dependencyTracker, v46, v47, v48, v49);
      objc_msgSend_loadInProgressLeaves_(self, v66, v146, v67, v68);
      v35 = sub_221426C20(self->_inProgressLeaves);
      if (!v35)
      {
        objc_msgSend_scheduleDetectAndRepairConsistencyViolations(self, v46, v47, v48, v49);
        objc_msgSend_detectAndRepairDirtyCellsAreOnLeafQueue(self, v69, v70, v71, v72);
        objc_msgSend_loadInProgressLeaves_(self, v73, v146, v74, v75);
        v35 = sub_221426C20(self->_inProgressLeaves);
      }
    }

    v147 = objc_msgSend_date(MEMORY[0x277CBEAA8], v46, v47, v48, v49);

    v76 = v27;
    v148 = v27;
    while (v35)
    {
      os_unfair_lock_lock(&self->_inProgressLeavesMutex);
      sub_22111B7CC(&self->_phaseStates.__begin_, v76);
      if (v27)
      {
        v81 = 0;
        v82 = v148;
        do
        {
          begin = self->_phaseStates.__begin_;
          v84 = self->_phaseStates.__end_ - begin;
          if (v84 <= v81 || (v85 = begin[v81], *(v85 + 82) == 1) && (v84 <= v82 || (v85 = begin[v82], ++v82, *(v85 + 82) == 1)))
          {
            operator new();
          }

          v86 = sub_221426D74(self->_inProgressLeaves, v77, v78, v79, v80);
          sub_2212308B8(v85, v86, self->_dependencyTracker);
          v91 = *(v85 + 72);
          if (v91 && objc_msgSend_evaluationMode(v91, v87, v88, v89, v90) == 1)
          {
            sub_221426FCC(self->_inProgressLeaves, *(v86 + 8), __p);
            v95 = *(v85 + 8);
            if (v95)
            {
              *(v85 + 16) = v95;
              operator delete(v95);
              *(v85 + 8) = 0;
              *(v85 + 16) = 0;
              *(v85 + 24) = 0;
            }

            *(v85 + 8) = *__p;
            *(v85 + 24) = v150;
          }

          else
          {
            *(v85 + 16) = *(v85 + 8);
            sub_221230A4C(v85 + 8, v86);
            sub_221426E50(self->_inProgressLeaves);
          }

          objc_msgSend_dispatchOnePhase_(self, v92, v85, v93, v94);
          v96 = sub_221426BFC(self->_inProgressLeaves);
          v97 = ++v81 >= v76 || v96;
        }

        while (v97 != 1);
      }

      os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
      recalcDispatchGroup = self->_recalcDispatchGroup;
      v99 = dispatch_time(0, 1000000000);
      v27 = v148;
      if (dispatch_group_wait(recalcDispatchGroup, v99))
      {
        break;
      }

      objc_msgSend_timeIntervalSinceNow(v147, v100, v101, v102, v103);
      if (v18 <= -v107)
      {
        break;
      }

      objc_msgSend_loadInProgressLeaves_(self, v104, v146, v105, v106);
      v35 = sub_221426C20(self->_inProgressLeaves);
    }

    self->_stopEvaluating = 1;
    dispatch_group_wait(self->_recalcDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock(&self->_inProgressLeavesMutex);
    v108 = self->_phaseStates.__begin_;
    for (i = self->_phaseStates.__end_; v108 != i; ++v108)
    {
      v110 = *v108;
      if (**v108 != -1)
      {
        v111 = *(v110 + 2);
        for (j = *(v110 + 1); j != v111; j += 32)
        {
          sub_221426EA4(self->_inProgressLeaves, j);
        }
      }

      for (k = *(v110 + 6); k; k = *k)
      {
        sub_22123E79C(&self->_modifiedOwnersInThisRecalcCycle.__table_.__bucket_list_.__ptr_, k + 8);
      }

      *(v110 + 9) = 0;
      *v110 = -1;
      sub_2210BE918(v110 + 4);
      *(v110 + 2) = *(v110 + 1);
      *(v110 + 82) = 0;
    }

    self->_stopEvaluating = 0;
    if (!sub_221426BFC(self->_inProgressLeaves))
    {
      dependencyTracker = self->_dependencyTracker;
      sub_221426F40(self->_inProgressLeaves, __p);
      objc_msgSend_pushCellsForImmediateEvaluation_pushOnFront_(dependencyTracker, v119, __p, 1, v120);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    objc_msgSend_clearCellsCurrentlyBeingEvaluated(self->_dependencyTracker, v114, v115, v116, v117);
    sub_2210BE918(&self->_inProgressOwnerIDs.__table_.__bucket_list_.__ptr_);
    os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
    objc_msgSend_timeIntervalSinceNow(v147, v121, v122, v123, v124);
    self->_recalcTime = self->_recalcTime - v129;
    if (self->_blockingUntilRecalcIsComplete)
    {
      v130 = objc_msgSend_referencesToDirty(self, v125, v126, v127, v128);
      v135 = objc_msgSend_isEmptyForDirtying(v130, v131, v132, v133, v134);

      v65 = 1;
      if (v135)
      {
LABEL_54:
        v3 = v147;
        goto LABEL_55;
      }

      self->_hadDirtyCellsRecently = 1;
      v140 = objc_msgSend_referencesToDirty(self, v136, v137, v138, v139);
      objc_msgSend_flushAllDirtyReferences(v140, v141, v142, v143, v144);
    }

    v65 = 1;
    goto LABEL_54;
  }

  self->_hadDirtyCellsRecently = 1;
  blockingUntilRecalcIsComplete = self->_blockingUntilRecalcIsComplete;
  v51 = objc_msgSend_referencesToDirty(self, v14, v15, v16, v17);
  v56 = v51;
  if (blockingUntilRecalcIsComplete)
  {
    v57 = objc_msgSend_flushDirtyReferencesForSeconds_(v51, v52, v53, v54, v55, 0.0);
  }

  else
  {
    v57 = objc_msgSend_flushDirtyReferencesForSeconds_(v51, v52, v53, v54, v55, 0.5);
  }

  v58 = v57;

  if (v58)
  {
    if (self->_blockingUntilRecalcIsComplete)
    {
      goto LABEL_2;
    }

    objc_msgSend_timeIntervalSinceNow(v3, v59, v60, v61, v62);
    v64 = v63;
    if (v63 > -0.5 && (objc_msgSend_recalculationIsPaused(self, v59, v60, v61, v62) & 1) == 0)
    {
      v18 = v64 + 0.5;
      goto LABEL_2;
    }
  }

  objc_msgSend_notifyObserversOfRecalcProgress(self, v59, v60, v61, v62);
  v65 = 0;
LABEL_55:

  return v65;
}

- (void)recalcHoldingWriteLock
{
  writeMutualExclusionQueue = self->_writeMutualExclusionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22123D884;
  block[3] = &unk_27845E3F8;
  block[4] = self;
  dispatch_sync(writeMutualExclusionQueue, block);
  objc_msgSend_performBackgroundTasksWithWriteLock(self, v4, v5, v6, v7);
  objc_msgSend_notifyObserversOfRecalcProgress(self, v8, v9, v10, v11);
}

- (BOOL)stopEvaluatingNewLeaves
{
  if (self->_stopEvaluating || self->_shouldCancelRecalculation)
  {
    return 1;
  }

  else
  {
    return (MEMORY[0x2821F9670])(TSCECalculationEngine, sel_isPotentiallyTerminating);
  }
}

- (void)loadInProgressLeaves:(int)leaves
{
  if ((objc_msgSend_stopEvaluatingNewLeaves(self, a2, *&leaves, v3, v4) & 1) == 0)
  {
    dependencyTracker = self->_dependencyTracker;
    if (dependencyTracker)
    {
      objc_msgSend_popNextLeaves_(dependencyTracker, v7, leaves, v8, v9);
      v11 = v59;
      v12 = v60;
      if (v60 != v59)
      {
        v50 = 80;
        __p = 0;
        v57 = 0;
        v58 = 0;
        do
        {
          v13 = v57;
          if (v57 >= v58)
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v57 - __p) >> 2);
            v17 = v16 + 1;
            if (v16 + 1 > 0x1555555555555555)
            {
              sub_22107C148();
            }

            if (0x5555555555555556 * ((v58 - __p) >> 2) > v17)
            {
              v17 = 0x5555555555555556 * ((v58 - __p) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v58 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v18 = 0x1555555555555555;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              sub_221122A3C(&__p, v18);
            }

            v19 = 4 * ((v57 - __p) >> 2);
            v20 = *v11;
            *(v19 + 8) = v11[2];
            *v19 = v20;
            v15 = 12 * v16 + 12;
            memcpy((12 * v16 - (v57 - __p)), __p, v57 - __p);
            v21 = __p;
            __p = (12 * v16 - (v57 - __p));
            v57 = v15;
            v58 = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            v14 = *v11;
            v57[2] = v11[2];
            *v13 = v14;
            v15 = v13 + 12;
          }

          v57 = v15;
          sub_221426EA4(self->_inProgressLeaves, v11);
          v11 += 8;
        }

        while (v11 != v12);
        v26 = objc_msgSend_referencesToDirty(self, v22, v23, v24, v25);
        objc_msgSend_addInProgressCalcCellRefs_(v26, v27, &__p, v28, v29);

        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    sub_221426C4C(self->_inProgressLeaves, &__p);
    v30 = __p;
    v31 = v57;
    if (__p != v57)
    {
      do
      {
        v55 = *v30;
        if (!sub_2210C3024(&self->_inProgressOwnerIDs.__table_.__bucket_list_.__ptr_, &v55))
        {
          sub_22123E79C(&self->_inProgressOwnerIDs.__table_.__bucket_list_.__ptr_, &v55);
          v35 = objc_msgSend_ownerKindForOwnerID_(self->_dependencyTracker, v32, v55, v33, v34);
          if (v35 == 1 || v35 == 100)
          {
            v39 = objc_msgSend_tableResolverWrapperForTableID_(self, v36, v55, v37, v38, v50);
            v44 = v39;
            if (v39)
            {
              v53 = 0;
              v54 = 0;
              v53 = TSCETableResolverWrapper::tableRangeCoordinate(v39, v40, v41, v42, v43);
              v54 = v45;
              v51 = 0;
              v52 = 0;
              v51 = TSCETableResolverWrapper::bodyRangeCoordinate(v44, v45, v46, v47, v48);
              v52 = v49;
              objc_msgSend_setTableAndBodyRangesForTable_bodyRange_tableID_(self->_dependencyTracker, v49, &v53, &v51, v55);
            }
          }
        }

        ++v30;
      }

      while (v30 != v31);
      v30 = __p;
    }

    if (v30)
    {
      v57 = v30;
      operator delete(v30);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }
  }
}

- (BOOL)hasBackgroundTasks
{
  if (objc_msgSend_hasOwnerIdsToUnregister(self->_dependencyTracker, a2, v2, v3, v4) & 1) != 0 || (objc_msgSend_hasCellRecordsToPrune(self->_dependencyTracker, v6, v7, v8, v9))
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  v10 = self->_beginTrackingNamesForLegacyNRMQueue.__end_ != self->_beginTrackingNamesForLegacyNRMQueue.__begin_ || self->_endTrackingNamesForLegacyNRMQueue.__end_ != self->_endTrackingNamesForLegacyNRMQueue.__begin_;
  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  return v10;
}

- (void)performBackgroundTasksWithWriteLock
{
  if (!self->_blockingUntilRecalcIsComplete)
  {
    TableToEndTrackingNames = objc_msgSend_popNextTableToEndTrackingNames(self, a2, v2, v3, v4);
    v53 = v6;
    if (TableToEndTrackingNames | v6)
    {
      v10 = objc_msgSend_namedReferenceManager(self, v6, v7, v8, v9);
      objc_msgSend_endTrackingNamesInTable_(v10, v11, &TableToEndTrackingNames, v12, v13);

      TableToEndTrackingNames = objc_msgSend_popNextTableToEndTrackingNames(self, v14, v15, v16, v17);
      v53 = a2;
      if (!(TableToEndTrackingNames | a2))
      {
        goto LABEL_12;
      }

      v18 = objc_msgSend_namedReferenceManager(self, a2, v2, v3, v4);
      objc_msgSend_endTrackingNamesInTable_(v18, v19, &TableToEndTrackingNames, v20, v21);
    }

    else
    {
      TableToBeginTrackingNames = objc_msgSend_popNextTableToBeginTrackingNames(self, v6, v7, v8, v9);
      v51 = v22;
      if (!(TableToBeginTrackingNames | v22))
      {
        hasOwnerIdsToUnregister = objc_msgSend_hasOwnerIdsToUnregister(self->_dependencyTracker, v22, v23, v24, v25, TableToBeginTrackingNames, v51, TableToEndTrackingNames, v53);
        dependencyTracker = self->_dependencyTracker;
        if (hasOwnerIdsToUnregister)
        {
          objc_msgSend_processUnregisteringOwners_(dependencyTracker, v29, v30, v31, v32, 0.3);
        }

        else if (objc_msgSend_hasCellRecordsToPrune(dependencyTracker, v29, v30, v31, v32))
        {
          objc_msgSend_processPruningOfCellRecords_(self->_dependencyTracker, a2, v2, v3, v4, 0.3);
        }

LABEL_12:
        if (!self->_blockingUntilRecalcIsComplete)
        {
          return;
        }

        goto LABEL_13;
      }

      v18 = objc_msgSend_namedReferenceManager(self, v22, v23, v24, v25, TableToBeginTrackingNames, v51, TableToEndTrackingNames, v53);
      objc_msgSend_beginTrackingNamesInTable_(v18, v26, &TableToBeginTrackingNames, v27, v28);
    }

    goto LABEL_12;
  }

LABEL_13:
  v35 = objc_msgSend_referencesToDirty(self, a2, v2, v3, v4);
  isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v35, v36, v37, v38, v39);

  if ((isEmptyForDirtying & 1) == 0)
  {
    self->_hadDirtyCellsRecently = 1;
    v45 = objc_msgSend_referencesToDirty(self, v41, v42, v43, v44);
    objc_msgSend_flushAllDirtyReferences(v45, v46, v47, v48, v49);
  }
}

- (TSUCellRect)cachedSpillRangeForSpillingOriginCellRef:(const TSCECellRef *)ref outError:(id *)error
{
  v4 = (MEMORY[0x2821F9670])(self->_spillingOriginCache, sel_spillRangeForSpillingOriginCellRef_outError_, ref, error);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (void)replaceSpillError:(id)error ifCachedforSpillingOriginCellRef:(const TSCECellRef *)ref
{
  errorCopy = error;
  v11 = objc_msgSend_isCircularReferenceError(errorCopy, v6, v7, v8, v9) ^ 1;
  if (!errorCopy)
  {
    v11 = 0;
  }

  if ((v11 & 1) == 0)
  {
    objc_msgSend_replaceSpillError_forSpillingOriginCellRef_(self->_spillingOriginCache, errorCopy, errorCopy, ref, v10);
  }
}

- (TSKAccessController)accessController
{
  WeakRetained = objc_loadWeakRetained(&self->_accessController);

  return WeakRetained;
}

- (TSKChangeNotifier)changeNotifier
{
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_modifiedOwnersInThisRecalcCycle.__table_.__bucket_list_ = 0u;
  *&self->_modifiedOwnersInThisRecalcCycle.__table_.__first_node_.__next_ = 0u;
  self->_modifiedOwnersInThisRecalcCycle.__table_.__max_load_factor_ = 1.0;
  self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_ = 0u;
  *&self->_deferredUpdateTrackedHeaders.__table_.__first_node_.__next_ = 0u;
  self->_deferredUpdateTrackedHeaders.__table_.__max_load_factor_ = 1.0;
  self->_phaseStates.__end_ = 0;
  self->_phaseStates.__cap_ = 0;
  self->_phaseStates.__begin_ = 0;
  self->_inProgressOwnerIDs.__table_.__bucket_list_ = 0u;
  *&self->_inProgressOwnerIDs.__table_.__first_node_.__next_ = 0u;
  self->_inProgressOwnerIDs.__table_.__max_load_factor_ = 1.0;
  sub_221575E04(&self->_refResolverMap, a2);
  self->_beginTrackingNamesForLegacyNRMQueue.__end_ = 0;
  self->_beginTrackingNamesForLegacyNRMQueue.__cap_ = 0;
  self->_beginTrackingNamesForLegacyNRMQueue.__begin_ = 0;
  self->_endTrackingNamesForLegacyNRMQueue.__end_ = 0;
  self->_endTrackingNamesForLegacyNRMQueue.__cap_ = 0;
  self->_endTrackingNamesForLegacyNRMQueue.__begin_ = 0;
  self->_tablesWithNoLegacyNRMIndexes.__table_.__bucket_list_ = 0u;
  *&self->_tablesWithNoLegacyNRMIndexes.__table_.__first_node_.__next_ = 0u;
  self->_tablesWithNoLegacyNRMIndexes.__table_.__max_load_factor_ = 1.0;
  self->_disallowedHeaderIndexingTables.__table_.__bucket_list_ = 0u;
  *&self->_disallowedHeaderIndexingTables.__table_.__first_node_.__next_ = 0u;
  self->_disallowedHeaderIndexingTables.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end