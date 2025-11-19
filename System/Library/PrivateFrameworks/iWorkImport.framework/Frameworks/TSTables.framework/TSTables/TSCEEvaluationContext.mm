@interface TSCEEvaluationContext
+ (id)contextForCalcEngine:(id)a3 containingTable:(const TSKUIDStruct *)a4 containingCell:(TSUCellCoord)a5;
+ (id)contextForCalcEngine:(id)a3 containingTable:(const TSKUIDStruct *)a4 containingCell:(TSUCellCoord)a5 inArrayMode:(BOOL)a6;
+ (id)newDateConversionOfString:(id)a3 context:(id)a4;
- (BOOL)evaluationAborted;
- (BOOL)insideFunctor:(unint64_t)a3;
- (TSCECellRef)containingCellRef;
- (TSCEEvaluationContext)initWithCalcEngine:(id)a3 containingTable:(const TSKUIDStruct *)a4 containingCell:(TSUCellCoord)a5 inArrayMode:(BOOL)a6;
- (TSCERandGenerator)randGenerator;
- (TSKUIDStruct)containingRowUid;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)loadArgumentsForFunction:(id)a3 arguments:(void *)a4 numArgs:(unint64_t)a5;
- (id)newDateConversionOfString:(id)a3;
- (id)raiseErrorOrConvert:(id)a3;
- (id)unwrapThunk:(id)a3;
- (id)unwrapThunk:(id)a3 takeSideEffects:(BOOL)a4;
- (void)addCalculatedPrecedent:(const TSCEAnyRef *)a3;
- (void)addCalculatedPrecedentForCategoryRef:(id)a3;
- (void)addCalculatedPrecedents:(const void *)a3;
- (void)addDateConversionOfString:(id)a3 toDateValue:(id)a4;
- (void)addDynamicPrecedent:(id)a3;
- (void)addRemoteDataSpecifierInterestedIn:(id)a3;
- (void)clearAllWarnings;
- (void)copyWarningsFrom:(id)a3;
- (void)dealloc;
- (void)enteringFunctor:(unint64_t)a3;
- (void)exitingFunctor:(unint64_t)a3;
- (void)reportWarning:(id)a3;
- (void)runBlockUnlessAborted:(id)a3;
- (void)takeSideEffectsFrom:(id)a3;
@end

@implementation TSCEEvaluationContext

+ (id)contextForCalcEngine:(id)a3 containingTable:(const TSKUIDStruct *)a4 containingCell:(TSUCellCoord)a5
{
  v7 = a3;
  v8 = [TSCEEvaluationContext alloc];
  v10 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v8, v9, v7, a4, *&a5, 1);

  return v10;
}

+ (id)contextForCalcEngine:(id)a3 containingTable:(const TSKUIDStruct *)a4 containingCell:(TSUCellCoord)a5 inArrayMode:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = [TSCEEvaluationContext alloc];
  v12 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v10, v11, v9, a4, *&a5, v6);

  return v12;
}

- (TSCEEvaluationContext)initWithCalcEngine:(id)a3 containingTable:(const TSKUIDStruct *)a4 containingCell:(TSUCellCoord)a5 inArrayMode:(BOOL)a6
{
  v10 = a3;
  v30.receiver = self;
  v30.super_class = TSCEEvaluationContext;
  v11 = [(TSCEEvaluationContext *)&v30 init];
  v16 = v11;
  if (v11)
  {
    v11->_calcEngine = v10;
    v17 = objc_msgSend_documentLocale(v10, v12, v13, v14, v15);
    locale = v16->_locale;
    v16->_locale = v17;

    v16->_inArrayMode = a6;
    *&v16->_suppressCycleCheck = 0;
    *&v16->_wantsCalculatedPrecedents = 257;
    v16->_hasWarnings = 0;
    warnings = v16->_warnings;
    v16->_warnings = 0;

    v16->_containingTable = *a4;
    v16->_containingCell = a5;
    TSCESymbolTable::TSCESymbolTable(&v29, v16->_locale);
    TSCESymbolTable::operator=(&v16->_symbolTable, &v29);
    p_tableUuidRefs = &v29._tableUuidRefs;
    sub_2210C8268(&p_tableUuidRefs);
    sub_221087B80(&v29._rangeRefs);
    sub_2210C82EC(&v29._cellRefs);

    remoteDataKeysInterestedIn = v16->_remoteDataKeysInterestedIn;
    v16->_remoteDataKeysInterestedIn = 0;

    v16->_shouldPickupRemoteDataInterests = 0;
    v21 = objc_opt_new();
    valueBindingEnvironment = v16->_valueBindingEnvironment;
    v16->_valueBindingEnvironment = v21;

    if (v10)
    {
      objc_msgSend_emptyReferenceSet(v10, v23, v24, v25, v26);
    }

    else
    {
      TSCEReferenceSet::TSCEReferenceSet(&v29);
    }

    TSCEReferenceSet::operator=(&v16->_calculatedPrecedents, &v29);
    TSCEReferenceSet::~TSCEReferenceSet(&v29);
    recentConversions = v16->_recentConversions;
    v16->_randGenerator = 0;
    v16->_recentConversions = 0;

    *&v16->_hidingActionMask = 0;
  }

  return v16;
}

- (void)dealloc
{
  randGenerator = self->_randGenerator;
  if (randGenerator)
  {
    MEMORY[0x223DA1450](randGenerator, 0x1000C40B98A05D4);
  }

  v4.receiver = self;
  v4.super_class = TSCEEvaluationContext;
  [(TSCEEvaluationContext *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v4, v5, self->_calcEngine, &self->_containingTable, *&self->_containingCell, self->_inArrayMode);
  v7 = v6;
  if (v6)
  {
    if (v6 != self)
    {
      sub_22116CF34(&v6->_evaluationStack, self->_evaluationStack._evaluationStack.__begin_, self->_evaluationStack._evaluationStack.var0, self->_evaluationStack._evaluationStack.var0 - self->_evaluationStack._evaluationStack.__begin_);
    }

    v7->_evaluationStack._argumentCount = self->_evaluationStack._argumentCount;
    TSCEReferenceSet::operator=(&v7->_calculatedPrecedents, &self->_calculatedPrecedents);
    v7->_calcEngine = self->_calcEngine;
    objc_storeStrong(&v7->_locale, self->_locale);
    v7->_containingTable = self->_containingTable;
    v7->_containingCell = self->_containingCell;
    v7->_inArrayMode = self->_inArrayMode;
    v7->_suppressCycleCheck = self->_suppressCycleCheck;
    v7->_allowAbort = self->_allowAbort;
    v7->_pivotRefsReturnsValueGrid = self->_pivotRefsReturnsValueGrid;
    v7->_isForChartFormulas = self->_isForChartFormulas;
    v7->_wantsCalculatedPrecedents = self->_wantsCalculatedPrecedents;
    v7->_shouldReportWarnings = self->_shouldReportWarnings;
    v7->_hasWarnings = self->_hasWarnings;
    v12 = objc_msgSend_mutableCopy(self->_warnings, v8, v9, v10, v11);
    warnings = v7->_warnings;
    v7->_warnings = v12;

    objc_storeStrong(&v7->_recentConversions, self->_recentConversions);
    shouldPickupRemoteDataInterests = self->_shouldPickupRemoteDataInterests;
    v7->_shouldPickupRemoteDataInterests = shouldPickupRemoteDataInterests;
    if (shouldPickupRemoteDataInterests)
    {
      objc_storeStrong(&v7->_remoteDataKeysInterestedIn, self->_remoteDataKeysInterestedIn);
    }

    v7->_hidingActionMask = self->_hidingActionMask;
    v7->_intersectionRangeContext = self->_intersectionRangeContext;
    TSCESymbolTable::operator=(&v7->_symbolTable, &self->_symbolTable);
    v19 = objc_msgSend_copy(self->_valueBindingEnvironment, v15, v16, v17, v18);
    valueBindingEnvironment = v7->_valueBindingEnvironment;
    v7->_valueBindingEnvironment = v19;
  }

  return v7;
}

- (TSCECellRef)containingCellRef
{
  retstr->coordinate = self[4]._tableUID._lower;
  retstr->_tableUID = *&self[3]._tableUID._upper;
  return self;
}

- (void)clearAllWarnings
{
  objc_msgSend_clearLocalWarnings(self, a2, v2, v3, v4);
  warnings = self->_warnings;

  objc_msgSend_removeAllObjects(warnings, v6, v7, v8, v9);
}

- (void)reportWarning:(id)a3
{
  v11 = a3;
  if (v11)
  {
    if (!self->_warnings)
    {
      v7 = objc_opt_new();
      warnings = self->_warnings;
      self->_warnings = v7;
    }

    if (!self->_localWarnings)
    {
      v9 = objc_opt_new();
      localWarnings = self->_localWarnings;
      self->_localWarnings = v9;
    }

    if (self->_insideFunctorStack.__begin_ == self->_insideFunctorStack.__end_)
    {
      objc_msgSend_addObject_(self->_warnings, v4, v11, v5, v6);
    }

    objc_msgSend_addObject_(self->_localWarnings, v4, v11, v5, v6);
  }
}

- (void)copyWarningsFrom:(id)a3
{
  v14 = *(a3 + 9);
  if (objc_msgSend_count(v14, v4, v5, v6, v7))
  {
    warnings = self->_warnings;
    if (!warnings)
    {
      v12 = objc_opt_new();
      v13 = self->_warnings;
      self->_warnings = v12;

      warnings = self->_warnings;
    }

    objc_msgSend_unionSet_(warnings, v8, v14, v9, v10);
  }
}

- (TSKUIDStruct)containingRowUid
{
  lower = self->_containingRowUid._lower;
  if (!lower)
  {
    if (self->_containingRowUid._upper)
    {
      lower = 0;
    }

    else
    {
      v7 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);
      v12 = objc_msgSend_containingTable(self, v8, v9, v10, v11);
      v15 = objc_msgSend_resolverForTableUID_(v7, v13, *v12, v12[1], v14);

      v20 = v15;
      if (v15 || (objc_msgSend_calcEngine(self, v16, v17, v18, v19), v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_containingTable(self, v22, v23, v24, v25), objc_msgSend_ownerForOwnerUID_(v21, v27, *v26, v26[1], v28), v29 = objc_claimAutoreleasedReturnValue(), v21, objc_msgSend_linkedResolver(v29, v30, v31, v32, v33), v20 = objc_claimAutoreleasedReturnValue(), v29, v20))
      {
        v34 = objc_msgSend_containingCell(self, v16, v17, v18, v19);
        self->_containingRowUid._lower = objc_msgSend_rowUIDForRowIndex_(v20, v35, *v34, v36, v37);
        self->_containingRowUid._upper = v38;
      }

      lower = self->_containingRowUid._lower;
    }
  }

  upper = self->_containingRowUid._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)addDynamicPrecedent:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_nativeType(v4, v5, v6, v7, v8);
  if (v9 == 6)
  {
    v18 = objc_msgSend_asReferenceValue(v4, v10, v11, v12, v13);
    v17 = v18;
    if (v18)
    {
      objc_msgSend_anyRef(v18, v19, v20, v21, v22);
      objc_msgSend_addCalculatedPrecedent_(self, v23, v26, v24, v25);
    }

    goto LABEL_9;
  }

  if (v9 == 14)
  {
    v17 = objc_msgSend_asCategoryRef(v4, v10, v11, v12, v13);
    if (v17)
    {
      objc_msgSend_addCalculatedPrecedentForCategoryRef_(self, v14, v17, v15, v16);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v9 == 16)
  {
    objc_msgSend_asValueGridValue(v4, v10, v11, v12, v13);
  }

LABEL_10:
}

- (void)addCalculatedPrecedent:(const TSCEAnyRef *)a3
{
  if (TSCEAnyRef::isRangeValid(a3))
  {

    TSCEReferenceSet::insertAnyRef(&self->_calculatedPrecedents, a3, v5, v6, v7);
  }
}

- (void)addCalculatedPrecedentForCategoryRef:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_groupByUid(v4, v5, v6, v7, v8);
  if (v9 | v10)
  {
    TSCEReferenceSet::insertRef(&self->_calculatedPrecedents, v4);
    v15 = objc_msgSend_copy(v4, v11, v12, v13, v14);
    v54 = 0;
    v55 = 0;
    v20 = objc_msgSend_calcEngine(self, v16, v17, v18, v19);
    v25 = objc_msgSend_containingTable(self, v21, v22, v23, v24);
    v29 = objc_msgSend_tableResolverForTableUID_(v20, v26, v25, v27, v28);

    if (v29)
    {
      v34 = objc_msgSend_containingCell(self, v30, v31, v32, v33);
      v54 = objc_msgSend_rowUIDForRowIndex_(v29, v35, *v34, v36, v37);
      v55 = v38;
      v42 = objc_msgSend_absoluteGroupUid(v15, v38, v39, v40, v41);
      if (v42 | v43)
      {
        objc_msgSend_setRelativeGroupUid_(v15, v43, 0, 0, v46);
      }

      v47 = objc_msgSend_calcEngine(self, v43, v44, v45, v46);
      v50 = v47;
      if (v47)
      {
        objc_msgSend_unorderedCellRefsForCategoryRef_atRowUid_(v47, v48, v15, &v54, v49);
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v51 = v52;
      if (v52 != v53)
      {
        do
        {
          TSCEReferenceSet::insertRef(&self->_calculatedPrecedents, v51++);
        }

        while (v51 != v53);
        v51 = v52;
      }

      if (v51)
      {
        operator delete(v51);
      }
    }
  }
}

- (void)addCalculatedPrecedents:(const void *)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2212A7FA4;
  v3[3] = &unk_278460D78;
  v3[4] = self;
  TSCECellRefSet::enumerateOwnersUsingBlock(a3, v3);
}

- (void)takeSideEffectsFrom:(id)a3
{
  v4 = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2212A8278;
  v18[3] = &unk_278461F90;
  v18[4] = self;
  TSCEReferenceSet::forallRefs((v4 + 37), v18);
  objc_msgSend_copyWarningsFrom_(self, v5, v4, v6, v7);
  if (self->_shouldPickupRemoteDataInterests && *(v4 + 288) == 1)
  {
    v12 = objc_msgSend_remoteDataKeysInterestedIn(v4, v8, v9, v10, v11);

    if (v12)
    {
      remoteDataKeysInterestedIn = self->_remoteDataKeysInterestedIn;
      v17 = v4[35];
      if (remoteDataKeysInterestedIn)
      {
        if (remoteDataKeysInterestedIn != v17)
        {
          objc_msgSend_insertSpecifiersFromSet_(remoteDataKeysInterestedIn, v13, v17, v14, v15);
        }
      }

      else
      {
        objc_storeStrong(&self->_remoteDataKeysInterestedIn, v4[35]);
      }
    }
  }
}

- (id)unwrapThunk:(id)a3 takeSideEffects:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (objc_msgSend_isThunk(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_asThunkValue(v6, v11, v12, v13, v14);
    v20 = objc_msgSend_ast(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_copy(self, v21, v22, v23, v24);
    v30 = sub_221250CB8(v20, v25, 0);
    if (v4)
    {
      objc_msgSend_takeSideEffectsFrom_(self, v26, v25, v28, v29);
      v35 = objc_msgSend_warnings(v6, v31, v32, v33, v34);
      objc_msgSend_attachWarnings_(v30, v36, v35, v37, v38);
    }

    if (objc_msgSend_isThunk(v30, v26, v27, v28, v29))
    {
      v41 = objc_msgSend_unwrapThunk_takeSideEffects_(self, v39, v30, v4, v40);
    }

    else
    {
      v41 = v30;
    }

    v42 = v41;
  }

  else
  {
    v42 = v6;
  }

  return v42;
}

- (id)unwrapThunk:(id)a3
{
  v4 = objc_msgSend_unwrapThunk_takeSideEffects_(self, a2, a3, 1, v3);

  return v4;
}

- (void)addRemoteDataSpecifierInterestedIn:(id)a3
{
  v4 = a3;
  remoteDataKeysInterestedIn = self->_remoteDataKeysInterestedIn;
  v10 = v4;
  if (!remoteDataKeysInterestedIn)
  {
    v8 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    v9 = self->_remoteDataKeysInterestedIn;
    self->_remoteDataKeysInterestedIn = v8;

    remoteDataKeysInterestedIn = self->_remoteDataKeysInterestedIn;
    v4 = v10;
  }

  objc_msgSend_insertSpecifier_(remoteDataKeysInterestedIn, v4, v4, v5, v6);
}

- (void)enteringFunctor:(unint64_t)a3
{
  end = self->_insideFunctorStack.__end_;
  cap = self->_insideFunctorStack.__cap_;
  if (end >= cap)
  {
    begin = self->_insideFunctorStack.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_22107C148();
    }

    v12 = cap - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2210874C4(&self->_insideFunctorStack, v14);
    }

    v15 = end - begin;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = a3;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_insideFunctorStack.__begin_;
    self->_insideFunctorStack.__begin_ = v17;
    self->_insideFunctorStack.__end_ = v7;
    self->_insideFunctorStack.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = a3;
    v7 = end + 1;
  }

  self->_insideFunctorStack.__end_ = v7;
}

- (void)exitingFunctor:(unint64_t)a3
{
  begin = self->_insideFunctorStack.__begin_;
  end = self->_insideFunctorStack.__end_;
  if (begin == end)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEvaluationContext exitingFunctor:]", v3, v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 456, 0, "exitingFunctor, but _insideFunctorStack is empty.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    begin = self->_insideFunctorStack.__begin_;
    end = self->_insideFunctorStack.__end_;
  }

  if (begin != end)
  {
    v20 = *(end - 1);
    self->_insideFunctorStack.__end_ = end - 1;
    if (v20 != a3)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEvaluationContext exitingFunctor:]", v3, v4);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 462, 0, "Its non-sensical to be exitingFunctor when we are inside a different one");

      v32 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
    }
  }
}

- (BOOL)insideFunctor:(unint64_t)a3
{
  begin = self->_insideFunctorStack.__begin_;
  end = self->_insideFunctorStack.__end_;
  if (begin == end)
  {
    return 0;
  }

  v5 = begin + 1;
  do
  {
    v6 = *(v5 - 1);
    result = v6 == a3;
  }

  while (v6 != a3 && v5++ != end);
  return result;
}

- (TSCERandGenerator)randGenerator
{
  result = self->_randGenerator;
  if (!result)
  {
    v5 = objc_msgSend_resolverForTableUID_(self->_calcEngine, a2, self->_containingTable._lower, self->_containingTable._upper, v2);
    v15._lower = objc_msgSend_columnUIDForColumnIndex_(v5, v6, self->_containingCell.column, v7, v8);
    v15._upper = v9;
    v13 = objc_msgSend_rowUIDForRowIndex_(v5, v9, self->_containingCell.row, v10, v11);
    v14 = v12;
    operator new();
  }

  return result;
}

- (id)raiseErrorOrConvert:(id)a3
{
  v5 = objc_msgSend_errorValue_(TSCEErrorValue, a2, a3, v3, v4);

  return v5;
}

- (BOOL)evaluationAborted
{
  if (self->_allowAbort)
  {
    return objc_msgSend_shouldAbortRecalculation(self->_calcEngine, a2, v2, v3, v4);
  }

  else
  {
    return 0;
  }
}

- (void)runBlockUnlessAborted:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allowAbort)
  {
    v9 = dispatch_group_create();
    if (!v9)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEEvaluationContext runBlockUnlessAborted:]", v7, v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 518, 0, "failed to create dispatch group");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }

    v21 = dispatch_get_global_queue(0, 0);
    dispatch_group_async(v9, v21, v5);

    v22 = dispatch_time(0, 50000000);
    if (dispatch_group_wait(v9, v22))
    {
      do
      {
        if (objc_msgSend_evaluationAborted(self, v23, v24, v25, v26))
        {
          v31 = objc_msgSend_abortError(TSCEError, v27, v28, v29, v30);
          objc_msgSend_raiseException(v31, v32, v33, v34, v35);
        }

        v36 = dispatch_time(0, 50000000);
      }

      while (dispatch_group_wait(v9, v36));
    }
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

- (id)loadArgumentsForFunction:(id)a3 arguments:(void *)a4 numArgs:(unint64_t)a5
{
  if (objc_msgSend_evaluationAborted(self, a2, a3, a4, a5))
  {
    v13 = objc_msgSend_evaluationStack(self, v9, v10, v11, v12);
    TSCEEvaluationStack::setArgumentCount(v13, a5);
    v18 = objc_msgSend_evaluationStack(self, v14, v15, v16, v17);
    TSCEEvaluationStack::clearArgument(v18, v19, v20, v21, v22);
    v27 = objc_msgSend_abortError(TSCEError, v23, v24, v25, v26);
    goto LABEL_34;
  }

  v28 = *a4;
  for (i = *(a4 + 1); i != v28; i -= 8)
  {
    v30 = *(i - 8);
  }

  *(a4 + 1) = v28;
  v31 = objc_msgSend_evaluationStack(self, v9, v10, v11, v12);
  TSCEEvaluationStack::setArgumentCount(v31, a5);
  v36 = objc_msgSend_minArguments(a3, v32, v33, v34, v35);
  v41 = objc_msgSend_maxArguments(a3, v37, v38, v39, v40);
  if (v36 > a5 || v41 < a5)
  {
    v46 = objc_msgSend_functionName(a3, v42, v43, v44, v45);
    v27 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v47, v46, a5, v48);

    if (v27)
    {
      goto LABEL_33;
    }
  }

  if (!a5)
  {
LABEL_30:
    v27 = 0;
    goto LABEL_33;
  }

  v49 = 0;
  v115 = a5 - 1;
  while (1)
  {
    v50 = objc_msgSend_argumentSpecForIndex_numArgs_(a3, v42, v49, a5, v45, v115);
    v55 = v50;
    v116 = 0;
    if (v50 && objc_msgSend_accessorMode(v50, v51, v52, v53, v54) == 4)
    {
      v56 = objc_msgSend_evaluationStack(self, v51, v52, v53, v54);
      v61 = objc_msgSend_argumentType(v55, v57, v58, v59, v60);
      v62 = TSCEEvaluationStack::valueForArgumentAtIndexRepeatingMode(v56, v49, a3, self, v55, v61, a5);
      v49 = v115;
    }

    else
    {
      v63 = objc_msgSend_evaluationStack(self, v51, v52, v53, v54);
      v62 = TSCEEvaluationStack::rawArgumentAtIndex(v63, v49);
    }

    v64 = v116;
    v116 = v62;

    if (objc_msgSend_isFunctorValue(v116, v65, v66, v67, v68))
    {
      if ((objc_msgSend_acceptsFunctorAtIndex_numArgs_(a3, v69, v49, a5, v72) & 1) == 0)
      {
        break;
      }
    }

    if (objc_msgSend_rangeContext(v55, v69, v70, v71, v72) != 3)
    {
      v77 = objc_msgSend_rangeContext(v55, v73, v74, v75, v76);
      objc_msgSend_setRangeContextOverride_(v116, v78, v77, v79, v80);
    }

    if (objc_msgSend_unwrapThunk(v55, v73, v74, v75, v76) && objc_msgSend_isThunk(v116, v81, v82, v83, v84))
    {
      v85 = objc_msgSend_unwrapThunk_(self, v81, v116, v83, v84);
      v86 = v116;
      v116 = v85;
    }

    v87 = objc_msgSend_nativeType(v116, v81, v82, v83, v84);
    if (v87 == 1)
    {
      v92 = objc_msgSend_asGridValue(v116, v88, v89, v90, v91);
      v97 = objc_msgSend_dimensions(v92, v98, v99, v100, v101);
      goto LABEL_26;
    }

    if (v87 == 16)
    {
      v92 = objc_msgSend_valueGrid(v116, v88, v89, v90, v91);
      v97 = objc_msgSend_dimensions(v92, v93, v94, v95, v96);
LABEL_26:
      v102 = v97;
      v103 = HIDWORD(v97);

      goto LABEL_28;
    }

    v103 = 1;
    v102 = 1;
LABEL_28:
    v104 = objc_msgSend_functionName(a3, v88, v89, v90, v91);
    v27 = objc_msgSend_checkForTooLargeArrayNumColumns_numRows_functionName_(TSCEError, v105, v102, v103, v104);

    if (v27)
    {
      goto LABEL_32;
    }

    sub_221179A54(a4, &v116);

    if (++v49 >= a5)
    {
      goto LABEL_30;
    }
  }

  v106 = objc_msgSend_functionName(a3, v69, v70, v71, v72);
  v27 = objc_msgSend_cannotAcceptLambdaError_argIndex_(TSCEError, v107, v106, (v49 + 1), v108);

LABEL_32:
LABEL_33:
  v109 = objc_msgSend_evaluationStack(self, v42, v43, v44, v45);
  TSCEEvaluationStack::clearArgument(v109, v110, v111, v112, v113);
LABEL_34:

  return v27;
}

- (void)addDateConversionOfString:(id)a3 toDateValue:(id)a4
{
  v13 = a3;
  v10 = a4;
  if (v13)
  {
    if (self->_recentConversions)
    {
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = objc_opt_new();
      recentConversions = self->_recentConversions;
      self->_recentConversions = v11;

      if (!v10)
      {
LABEL_6:
        v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8, v9);
      }
    }

    objc_msgSend_setObject_forKey_(self->_recentConversions, v6, v10, v13, v9);
  }
}

- (id)newDateConversionOfString:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_objectForKey_(self->_recentConversions, v4, v7, v5, v6);
  if (!v12)
  {
    v15 = objc_msgSend_locale(self, v8, v9, v10, v11);
    v14 = TSUCreateDateFromString();

    objc_msgSend_addDateConversionOfString_toDateValue_(self, v16, v7, v14, v17);
    goto LABEL_8;
  }

  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);

  if (v12 == v13)
  {

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = v12;
LABEL_8:

  return v14;
}

+ (id)newDateConversionOfString:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_newDateConversionOfString_(v6, v7, v5, v8, v9);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSCEEvaluationContext newDateConversionOfString:context:]", v8, v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 680, 0, "Should not have reached this point with a NULL context - you are lucky you are getting any date at all.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    if (v5)
    {
      v27 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v23, v24, v25, v26);
      v11 = TSUCreateDateFromString();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id).cxx_construct
{
  TSCEEvaluationStack::TSCEEvaluationStack(&self->_evaluationStack);
  TSCESymbolTable::TSCESymbolTable(&self->_symbolTable);
  self->_insideFunctorStack.__begin_ = 0;
  self->_insideFunctorStack.__end_ = 0;
  self->_insideFunctorStack.__cap_ = 0;
  TSCEReferenceSet::TSCEReferenceSet(&self->_calculatedPrecedents);
  return self;
}

@end