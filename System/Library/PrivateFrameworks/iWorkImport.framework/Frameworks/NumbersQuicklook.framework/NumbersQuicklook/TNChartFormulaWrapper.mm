@interface TNChartFormulaWrapper
+ (id)chartFormulaForCategoryRef:(id)ref;
+ (id)chartFormulaForCellReference:(TSCECellRef *)reference;
+ (id)chartFormulaForCellRegion:(id)region inTable:(id)table;
+ (id)chartFormulaForRangeReference:(TSCERangeRef *)reference;
+ (id)chartFormulaForString:(id)string;
+ (id)chartFormulaForTractAsRangeReferences:(id)references;
+ (id)chartFormulaForTractReference:(id)reference;
+ (id)chartFormulaForViewTractRef:(id)ref;
+ (id)chartFormulaWithFormulaObject:(id)object;
+ (id)emptyChartFormula;
+ (id)emptyFormula;
+ (id)newEvaluationContextWith:(id)with inChart:(const TSKUIDStruct *)chart forSummaryChart:(BOOL)summaryChart;
- (BOOL)formulaIsEqualTo:(id)to;
- (BOOL)isAllStaticValuesWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner;
- (BOOL)isEqual:(id)equal;
- (TNChartFormulaWrapper)initWithFormulaObject:(id)object;
- (TSCERangeRef)rangeCircumscribingPrecedentsWithCalcEngine:(SEL)engine inOwner:(id)owner;
- (id).cxx_construct;
- (id)argumentCollectionWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart;
- (id)argumentCollectionWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart storeBadRef:(BOOL)ref;
- (id)description;
- (id)formulaByBakingValuesWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner;
- (id)formulaByProcessingArgumentsWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner usingBlock:(id)block;
- (id)formulaByRewriting:(BOOL)rewriting withCalcEngine:(id)engine andHostUID:(const TSKUIDStruct *)d;
- (id)formulaByTrimmingCategoryLabels:(unint64_t)labels plotByRow:(BOOL)row calcEngine:(id)engine inChart:(TSKUIDStruct *)chart;
- (id)gridLabelValueAtIndex:(unint64_t)index withEvaluationContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data;
- (id)outputGrid:(id)grid shouldSkipHiddenData:(BOOL)data;
- (id)outputGridVectorForSeries:(unint64_t)series withContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data;
- (id)outputValue:(id)value shouldSkipHiddenData:(BOOL)data;
- (id)outputValue:(id)value shouldSkipHiddenData:(BOOL)data requiresChromeCoords:(BOOL)coords;
- (id)plotwiseLabelValuesWithEvaluationContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data;
- (id)stringValueForFormulaWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner;
- (unint64_t)numberOfGridValuesWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data;
- (unint64_t)numberOfTotalPlotwiseLabelValuesWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data;
- (unint64_t)numberOfValuesWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart shouldSkipHiddenData:(BOOL)data;
- (vector<std::pair<TSCEValue)outputVectorValuesWithChromeCoords:(std:(TSUCellCoord>>> *__return_ptr)retstr :(TNChartFormulaWrapper *)self allocator<std:(SEL)std :(id)a4 pair<TSCEValue *) shouldSkipHiddenData:(BOOL)data;
- (void)clearCacheForCalculationEngine:(id)engine;
- (void)enumerateOutputGridForSeries:(unint64_t)series withContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data withBlock:(id)block;
@end

@implementation TNChartFormulaWrapper

- (TNChartFormulaWrapper)initWithFormulaObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = TNChartFormulaWrapper;
  v5 = [(TNChartFormulaWrapper *)&v15 init];
  v8 = v5;
  if (v5)
  {
    if (objectCopy)
    {
      v9 = objc_msgSend_copy(objectCopy, v6, v7);
      formulaObject = v8->_formulaObject;
      v8->_formulaObject = v9;

      v8->_cachedNumberOfValues = -1;
      cachedOutputValueVector = v8->_cachedOutputValueVector;
      v8->_cachedOutputValueVector = 0;

      v8->_cachedLabelsByRow = 1;
      v8->_cachedSkipHiddenData = 0;
      cachedPlotwiseLabels = v8->_cachedPlotwiseLabels;
      v8->_cachedPlotwiseLabels = 0;

      v8->_cachedChromeCoordsRealized = 0;
      cachedValueGrid = v8->_cachedValueGrid;
      v8->_cachedValueGrid = 0;
    }

    else
    {
      cachedValueGrid = v5;
      v8 = 0;
    }
  }

  return v8;
}

+ (id)chartFormulaWithFormulaObject:(id)object
{
  objectCopy = object;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithFormulaObject_(v5, v6, objectCopy);

  return v7;
}

+ (id)emptyFormula
{
  v2 = __C();
  v3 = objc_alloc(MEMORY[0x277D80C60]);
  v5 = objc_msgSend_initWithNodeArray_(v3, v4, v2);
  v7 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v6, v5);
  TSCEASTNodeArray::freeNodeArray();

  return v7;
}

+ (id)emptyChartFormula
{
  v2 = __C();
  TSCEASTTagOnlyElement::appendTagOnlyElement();
  TSCEASTFunctionElement::appendFunctionElement(v2, 0xAF, 1, 0, v3);
  v4 = objc_alloc(MEMORY[0x277D80C60]);
  v6 = objc_msgSend_initWithNodeArray_(v4, v5, v2);
  v8 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v7, v6);
  TSCEASTNodeArray::freeNodeArray();

  return v8;
}

+ (id)chartFormulaForString:(id)string
{
  stringCopy = string;
  v4 = __C();
  TSCEASTStringElement::appendStringElement(v4, stringCopy, v5);
  TSCEASTFunctionElement::appendFunctionElement(v4, 0xAF, 1, 0, v6);
  v7 = objc_alloc(MEMORY[0x277D80C60]);
  v9 = objc_msgSend_initWithNodeArray_(v7, v8, v4);
  TSCEASTNodeArray::freeNodeArray();
  v11 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v10, v9);

  return v11;
}

+ (id)chartFormulaForRangeReference:(TSCERangeRef *)reference
{
  if (reference->range._topLeft.column == reference->range._bottomRight.column && reference->range._topLeft.row == reference->range._bottomRight.row)
  {
    v12.var0 = reference->range._topLeft;
    v12.var1 = reference->_tableUID;
    v4 = objc_msgSend_chartFormulaForCellReference_(self, a2, &v12);
  }

  else
  {
    v5 = __C();
    memset(&v12, 0, sizeof(v12));
    TSCEASTNodeArray::appendRangeReference(v5, reference, 0, &v12);
    TSCEASTFunctionElement::appendFunctionElement(v5, 0xAF, 1, 0, v6);
    v7 = objc_alloc(MEMORY[0x277D80C60]);
    v9 = objc_msgSend_initWithNodeArray_(v7, v8, v5);
    v4 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v10, v9);
    TSCEASTNodeArray::freeNodeArray();
  }

  return v4;
}

+ (id)chartFormulaForCellReference:(TSCECellRef *)reference
{
  v4 = __C();
  memset(&v12, 0, sizeof(v12));
  TSCEASTNodeArray::appendReference(v4, reference, 0, &v12);
  TSCEASTFunctionElement::appendFunctionElement(v4, 0xAF, 1, 0, v5);
  v6 = objc_alloc(MEMORY[0x277D80C60]);
  v8 = objc_msgSend_initWithNodeArray_(v6, v7, v4);
  v10 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v9, v8);
  TSCEASTNodeArray::freeNodeArray();

  return v10;
}

+ (id)chartFormulaForCategoryRef:(id)ref
{
  refCopy = ref;
  v4 = objc_alloc(MEMORY[0x277D80C60]);
  TSCEFormulaCreationMagic::categoryRef(&v11, refCopy, v5);
  TSCEFormulaCreationMagic::function_1arg();
  v7 = objc_msgSend_initWithCreator_(v4, v6, &v12);

  v9 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v8, v7);

  return v9;
}

+ (id)chartFormulaForViewTractRef:(id)ref
{
  refCopy = ref;
  v4 = objc_alloc(MEMORY[0x277D80C60]);
  TSCEFormulaCreationMagic::viewTractRef(&v11, refCopy, v5);
  TSCEFormulaCreationMagic::function_1arg();
  v7 = objc_msgSend_initWithCreator_(v4, v6, &v12);

  v9 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v8, v7);

  return v9;
}

+ (id)chartFormulaForTractAsRangeReferences:(id)references
{
  referencesCopy = references;
  v7 = referencesCopy;
  if (referencesCopy && (objc_msgSend_isValid(referencesCopy, v5, v6) & 1) != 0)
  {
    if (objc_msgSend_isRectangularRange(v7, v8, v9))
    {
      objc_msgSend_boundingRangeRef(v7, v10, v11);
      v13 = objc_msgSend_chartFormulaForRangeReference_(self, v12, &v27);
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v15 = __C();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275F10008;
      v23[3] = &unk_27A6A2B70;
      v25 = &v27;
      v26 = v15;
      v24 = v7;
      objc_msgSend_foreachCellRect_(v24, v16, v23);
      v18 = *(v28 + 6);
      if (v18)
      {
        TSCEASTFunctionElement::appendFunctionElement(v15, 0xAF, v18, 0, v17);
        v19 = objc_alloc(MEMORY[0x277D80C60]);
        v21 = objc_msgSend_initWithNodeArray_(v19, v20, v15);
        v13 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v22, v21);
      }

      else
      {
        v13 = 0;
      }

      TSCEASTNodeArray::freeNodeArray();

      _Block_object_dispose(&v27, 8);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)chartFormulaForTractReference:(id)reference
{
  referenceCopy = reference;
  v4 = __C();
  TSCEFormulaCreationMagic::absColonTractRef(&v13, referenceCopy, &unk_275F5EE50, v5);
  TSCEFormulaCreator::operator()();
  TSCEASTFunctionElement::appendFunctionElement(v4, 0xAF, 1, 0, v6);
  v7 = objc_alloc(MEMORY[0x277D80C60]);
  v9 = objc_msgSend_initWithNodeArray_(v7, v8, v4);
  v11 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v10, v9);
  TSCEASTNodeArray::freeNodeArray();

  return v11;
}

+ (id)chartFormulaForCellRegion:(id)region inTable:(id)table
{
  regionCopy = region;
  tableCopy = table;
  v10 = tableCopy;
  v11 = 0;
  if (regionCopy && tableCopy)
  {
    if (objc_msgSend_cellCount(regionCopy, v8, v9))
    {
      if (objc_msgSend_isRectangle(regionCopy, v12, v13))
      {
        objc_msgSend_boundingCellRange(regionCopy, v14, v15);
        v32 = __C();
        v33 = v17;
        v34 = objc_msgSend_tableUID(v10, v17, v16);
        v35 = v18;
        v11 = objc_msgSend_chartFormulaForRangeReference_(self, v18, &v32);
      }

      else
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        LODWORD(v35) = 0;
        v19 = __C();
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = sub_275F10438;
        v28[3] = &unk_27A6A2B98;
        v30 = &v32;
        v31 = v19;
        v29 = v10;
        objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v20, v28);
        v22 = *(v33 + 6);
        if (v22)
        {
          TSCEASTFunctionElement::appendFunctionElement(v19, 0xAF, v22, 0, v21);
          v23 = objc_alloc(MEMORY[0x277D80C60]);
          v25 = objc_msgSend_initWithNodeArray_(v23, v24, v19);
          v11 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v26, v25);
        }

        else
        {
          v11 = 0;
        }

        TSCEASTNodeArray::freeNodeArray();

        _Block_object_dispose(&v32, 8);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)newEvaluationContextWith:(id)with inChart:(const TSKUIDStruct *)chart forSummaryChart:(BOOL)summaryChart
{
  summaryChartCopy = summaryChart;
  v6 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_(MEMORY[0x277D80C58], a2, with, chart, 0);
  v8 = v6;
  if (summaryChartCopy)
  {
    objc_msgSend_setPivotRefsReturnsValueGrid_(v6, v7, 1);
    objc_msgSend_setIsForChartFormulas_(v8, v9, 1);
    objc_msgSend_setWantsCalculatedPrecedents_(v8, v10, 0);
  }

  objc_msgSend_setInArrayMode_(v8, v7, 1);
  return v8;
}

- (BOOL)formulaIsEqualTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v7 = objc_msgSend_formulaObject(self, v4, v5);
    v10 = objc_msgSend_formulaObject(toCopy, v8, v9);
    v12 = v10;
    if (v7 == v10)
    {
      isEqualToFormula = 1;
    }

    else if ((v7 || !v10) && (!v7 || v10))
    {
      isEqualToFormula = objc_msgSend_isEqualToFormula_(v7, v11, v10);
    }

    else
    {
      isEqualToFormula = 0;
    }
  }

  else
  {
    isEqualToFormula = 0;
  }

  return isEqualToFormula;
}

- (void)clearCacheForCalculationEngine:(id)engine
{
  cachedOutputValueVector = self->_cachedOutputValueVector;
  self->_cachedOutputValueVector = 0;

  self->_cachedNumberOfValues = -1;
  self->_cachedChromeCoords.__end_ = self->_cachedChromeCoords.__begin_;
  cachedPlotwiseLabels = self->_cachedPlotwiseLabels;
  self->_cachedPlotwiseLabels = 0;

  self->_cachedLabelsByRow = 1;
  self->_cachedSkipHiddenData = 0;
  self->_cachedChromeCoordsRealized = 0;
  cachedValueGrid = self->_cachedValueGrid;
  self->_cachedValueGrid = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqualToFormula = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      if (!v6)
      {
        goto LABEL_20;
      }

      v7 = objc_opt_class();
      if (objc_msgSend_isMemberOfClass_(v6, v8, v7))
      {
        v11 = v6[1];
        formulaObject = self->_formulaObject;
        if (v11 != formulaObject)
        {
          if (v11)
          {
            v13 = formulaObject == 0;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            goto LABEL_20;
          }

          if (v11)
          {
            if (formulaObject)
            {
LABEL_19:
              v22 = objc_msgSend_formulaObject(v6, v9, v10);
              isEqualToFormula = objc_msgSend_isEqualToFormula_(formulaObject, v23, v22);

              goto LABEL_21;
            }
          }

          else if (formulaObject)
          {
            goto LABEL_20;
          }

          v15 = MEMORY[0x277D81150];
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNChartFormulaWrapper isEqual:]");
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 342, 0, "invalid nil value for '%{public}s'", "_formulaObject");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
          formulaObject = self->_formulaObject;
          if (formulaObject)
          {
            goto LABEL_19;
          }

LABEL_20:
          isEqualToFormula = 0;
          goto LABEL_21;
        }

        isEqualToFormula = 1;
      }

      else
      {
        isEqualToFormula = objc_msgSend_isEqual_(v6, v9, self);
      }

LABEL_21:

      goto LABEL_22;
    }

    isEqualToFormula = 0;
  }

LABEL_22:

  return isEqualToFormula;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v13.receiver = self;
  v13.super_class = TNChartFormulaWrapper;
  v4 = [(TNChartFormulaWrapper *)&v13 description];
  v6 = objc_msgSend_stringWithString_(v3, v5, v4);

  formulaObject = self->_formulaObject;
  if (formulaObject)
  {
    memset(v12, 0, sizeof(v12));
    v9 = objc_msgSend_hostedDescriptionAtCell_(formulaObject, v7, v12);
    objc_msgSend_appendFormat_(v6, v10, @" AST: %@;", v9);
  }

  return v6;
}

- (id)outputValue:(id)value shouldSkipHiddenData:(BOOL)data
{
  v4 = objc_msgSend_outputValue_shouldSkipHiddenData_requiresChromeCoords_(self, a2, value, data, 0);

  return v4;
}

- (id)outputValue:(id)value shouldSkipHiddenData:(BOOL)data requiresChromeCoords:(BOOL)coords
{
  LODWORD(lower) = coords;
  dataCopy = data;
  v209 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  cachedOutputValueVector = self->_cachedOutputValueVector;
  if (cachedOutputValueVector && self->_cachedSkipHiddenData == dataCopy && (!lower || self->_cachedChromeCoordsRealized))
  {
    v10 = cachedOutputValueVector;
    goto LABEL_90;
  }

  selfCopy = self;
  if (!self->_formulaObject)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNChartFormulaWrapper outputValue:shouldSkipHiddenData:requiresChromeCoords:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 381, 0, "invalid nil value for '%{public}s'", "_formulaObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    if (!self->_formulaObject)
    {
      v10 = 0;
      goto LABEL_90;
    }
  }

  v18 = objc_msgSend_formulaObject(self, v7, v8);
  v21 = objc_msgSend_containingTable(valueCopy, v19, v20);
  v24 = objc_msgSend_calcEngine(valueCopy, v22, v23);
  v26 = objc_msgSend_evalArgumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v25, v18, v21, v24);

  v204 = 0;
  v205 = 0;
  v206 = 0;
  v201 = 0;
  __dst = 0;
  v203 = 0;
  v187 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v27, 175);
  v199 = 0u;
  v200 = 0u;
  v198 = 0u;
  v197 = 0u;
  obj = v26;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v197, v208, 16);
  if (!v29)
  {
    goto LABEL_75;
  }

  v30 = *v198;
  do
  {
    v31 = 0;
    do
    {
      if (*v198 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v197 + 1) + 8 * v31);
      v33 = __C();
      if (objc_msgSend_isCellReference(v32, v34, v35))
      {
        if (v32)
        {
          objc_msgSend_cellReference(v32, v36, v37);
        }

        else
        {
          memset(&__p, 0, 24);
        }

        v190 = 0;
        v191.var0 = 0;
        TSCEASTNodeArray::appendReference(v33, &__p, 0, &v190);
        goto LABEL_36;
      }

      if (objc_msgSend_isRangeReference(v32, v36, v37))
      {
        if (v32)
        {
          objc_msgSend_rangeReference(v32, v38, v39);
          if (lower)
          {
            goto LABEL_19;
          }

LABEL_28:
          v51 = MEMORY[0x277D80D40];
          var0 = v191.var0;
          lower = v191.var1._lower;
          v53 = objc_msgSend_calcEngine(valueCopy, v38, v39);
          v55 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v51, v54, var0, lower, v53);
          LOBYTE(lower) = objc_msgSend_isCategorized(v55, v56, v57);
        }

        else
        {
          v190 = 0;
          *&v191.var0.row = 0u;
          if ((lower & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_19:
          LOBYTE(lower) = 1;
        }

        __p.range = v190;
        __p._tableUID = *&v191.var0.row;
        memset(&v207, 0, sizeof(v207));
        TSCEASTNodeArray::appendRangeReference(v33, &__p, 0, &v207);
        goto LABEL_36;
      }

      if (objc_msgSend_isTractReference(v32, v38, v39))
      {
        v42 = objc_msgSend_tractReference(v32, v40, v41);
        v45 = v42;
        if (lower)
        {
          LOBYTE(lower) = 1;
        }

        else
        {
          lower = MEMORY[0x277D80D40];
          v58 = objc_msgSend_tableUID(v42, v43, v44);
          v60 = v59;
          v62 = objc_msgSend_calcEngine(valueCopy, v59, v61);
          v64 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(lower, v63, v58, v60, v62);
          LOBYTE(lower) = objc_msgSend_isCategorized(v64, v65, v66);
        }

        v67 = sub_275F11A20(v33, v45) == 0;
LABEL_32:

        if (v67)
        {
          goto LABEL_57;
        }

        goto LABEL_36;
      }

      if (!objc_msgSend_isCategoryReference(v32, v40, v41))
      {
        if (objc_msgSend_isViewTractReference(v32, v47, v48))
        {
          v71 = objc_msgSend_viewTractReference(v32, v69, v70);
          TSCEASTViewTractRefElement::appendViewTractRefElement(v33, v71, v72);

          goto LABEL_36;
        }

        if (!objc_msgSend_isStaticValue(v32, v69, v70))
        {
          v103 = MEMORY[0x277D81150];
          v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TNChartFormulaWrapper outputValue:shouldSkipHiddenData:requiresChromeCoords:]");
          v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v107, v104, v106, 446, 0, "Unexpected chart formula argument type.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
          goto LABEL_57;
        }

        v97 = objc_msgSend_staticValue(v32, v95, v96);
        v45 = v97;
        if (v97)
        {
          v101 = objc_msgSend_deepType_(v97, v98, valueCopy);
          if (v101 > 4)
          {
            if (v101 == 5)
            {
              v122 = objc_msgSend_number(v45, v99, v100);
              v190._topLeft = objc_msgSend_decimalRepresentation(v122, v123, v124);
              v190._bottomRight = v125;
              TSCEASTNumberElement::appendNumberElement();

              goto LABEL_73;
            }

            if (v101 == 7)
            {
              v110 = objc_msgSend_locale(valueCopy, v99, v100);
              v112 = objc_msgSend_asStringWithLocale_(v45, v111, v110);
              TSCEASTStringElement::appendStringElement(v33, v112, v113);

              goto LABEL_73;
            }
          }

          else
          {
            if (v101 == 2)
            {
              v121 = objc_msgSend_BOOLean(v45, v99, v100);
              TSCEASTBooleanElement::appendBooleanElement(v33, v121);
              goto LABEL_73;
            }

            if (v101 == 3)
            {
              v102 = objc_msgSend_date(v45, v99, v100);
              TSCEASTDateElement::appendDateElement(v33, v102, 0, 0);

LABEL_73:
              v67 = 0;
              goto LABEL_32;
            }
          }

          v114 = MEMORY[0x277D81150];
          v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "[TNChartFormulaWrapper outputValue:shouldSkipHiddenData:requiresChromeCoords:]");
          v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v118, v115, v117, 441, 0, "Unsupported static value type in chart formula.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120);
        }

        v67 = 1;
        goto LABEL_32;
      }

      v49 = objc_msgSend_categoryReference(v32, v47, v48);
      TSCEASTCategoryRefElement::appendCategoryRefElement(v33, v49, v50);

LABEL_36:
      TSCEASTFunctionElement::appendFunctionElement(v33, 0xAF, 1, 0, v46);
      v73 = objc_alloc(MEMORY[0x277D80C60]);
      v75 = objc_msgSend_initWithNodeArray_(v73, v74, v33);
      TSCEASTNodeArray::freeNodeArray();
      v77 = objc_msgSend_evaluateWithContextGridResult_(v75, v76, valueCopy);
      v195 = 0;
      v79 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v77, v78, valueCopy, v187, 0, 0, &v195);
      v82 = v195;
      if (!v82)
      {
        memset(&__p, 0, 24);
        if (lower)
        {
          v83 = sub_275F11AF0(v79, valueCopy, dataCopy, &__p);

          v79 = v83;
        }

        else
        {
          if (dataCopy)
          {
            v84 = sub_275F125F4(v79, valueCopy);

            topLeft = __p.range._topLeft;
            v79 = v84;
            v88 = objc_msgSend_count(v84, v86, v87);
          }

          else
          {
            topLeft = 0;
            v88 = objc_msgSend_count(v79, v80, v81);
          }

          sub_275F127F4(&__p, topLeft, v88, &qword_275F5EE58);
        }

        v89 = v79;
        v79 = v89;
        v90 = v205;
        if (v205 >= v206)
        {
          v92 = (v205 - v204) >> 3;
          if ((v92 + 1) >> 61)
          {
            sub_275F07904();
          }

          v93 = (v206 - v204) >> 2;
          if (v93 <= v92 + 1)
          {
            v93 = v92 + 1;
          }

          if (v206 - v204 >= 0x7FFFFFFFFFFFFFF8)
          {
            v94 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v94 = v93;
          }

          v191.var1._upper = &v204;
          if (v94)
          {
            sub_275F0791C(&v204, v94);
          }

          v190._topLeft = 0;
          v190._bottomRight = (8 * v92);
          v191.var1._lower = 0;
          **&v190._bottomRight = v89;
          v191.var0 = (8 * v92 + 8);
          sub_275F07854(&v204, &v190);
          v91 = v205;
          sub_275F07964(&v190);
        }

        else
        {
          *v205 = v89;
          v91 = v90 + 8;
        }

        v205 = v91;
        sub_275F161A4(&v201, __dst, *&__p.range._topLeft, *&__p.range._bottomRight, (*&__p.range._bottomRight - *&__p.range._topLeft) >> 3);
        if (__p.range._topLeft)
        {
          __p.range._bottomRight = __p.range._topLeft;
          operator delete(*&__p.range._topLeft);
        }
      }

LABEL_57:
      ++v31;
    }

    while (v29 != v31);
    v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v197, v208, 16);
    v29 = v126;
  }

  while (v126);
LABEL_75:

  if (v204 != v205)
  {
    v129 = objc_alloc(MEMORY[0x277D80C50]);
    v190._topLeft.row = (v205 - v204) >> 3;
    *&v190._topLeft.column = 1;
    isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v129, v130, &v204, 1, 0, &v190);
    v133 = objc_msgSend_gridValue_(MEMORY[0x277D80C80], v132, isFlattened_dimensions);
    v190._topLeft = valueCopy;
    v190._bottomRight = v187;
    v191.var0 = 0;
    v191.var1._lower = 0x10000000000;
    *(&v191.var1._lower + 7) = 256;
    v192 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v193 = 0;
    v194 = 0;
    v134 = [TNChartVectorWrapper alloc];
    __p.range._topLeft = 0;
    __p.range._bottomRight.row = 0;
    LOBYTE(__p.range._bottomRight.column) = 0;
    LOWORD(__p._tableUID._lower) = __p._tableUID._lower & 0xC080 | 0x421;
    BYTE2(__p._tableUID._lower) = BYTE2(__p._tableUID._lower) & 0xF8 | 1;
    HIDWORD(__p._tableUID._lower) = -50266102;
    LOBYTE(__p._tableUID._upper) = -3;
    BYTE1(__p._tableUID._upper) &= 0xE0u;
    WORD1(__p._tableUID._upper) = 0;
    v136 = objc_msgSend_flattenedGrid_format_(v133, v135, &v190, &__p);
    v138 = objc_msgSend_initWithVector_(v134, v137, v136);

    goto LABEL_77;
  }

  if (objc_msgSend_count(obj, v127, v128))
  {
    v140 = MEMORY[0x277D81150];
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, "[TNChartFormulaWrapper outputValue:shouldSkipHiddenData:requiresChromeCoords:]");
    v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v144, v141, v143, 499, 0, "We were not able to generate a value vector for this formula %{public}@", selfCopy);

    v138 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146);
    goto LABEL_80;
  }

  isFlattened_dimensions = objc_msgSend_evaluateWithContextGridResult_(selfCopy->_formulaObject, v139, valueCopy);
  v189 = 0;
  v166 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(isFlattened_dimensions, v165, valueCopy, v187, 0, 0, &v189);
  v133 = v189;
  if (v133)
  {
    v167 = [TNChartVectorWrapper alloc];
    v170 = objc_msgSend_emptyGrid(MEMORY[0x277D80C80], v168, v169);
    v138 = objc_msgSend_initWithVector_(v167, v171, v170);
    goto LABEL_98;
  }

  v172 = [TNChartVectorWrapper alloc];
  v138 = objc_msgSend_initWithVector_(v172, v173, v166);
  v176 = objc_msgSend_vector(v138, v174, v175);
  v177 = v176 == 0;

  if (!v177)
  {
    v180 = __dst;
    v170 = objc_msgSend_vector(v138, v178, v179);
    v183 = objc_msgSend_count(v170, v181, v182);
    sub_275F127F4(&v201, v180, v183, &qword_275F5EE58);
LABEL_98:
  }

LABEL_77:
LABEL_80:
  objc_storeStrong(&selfCopy->_cachedOutputValueVector, v138);
  v10 = selfCopy->_cachedOutputValueVector;
  if (&selfCopy->_cachedChromeCoords != &v201)
  {
    sub_275F163D0(&selfCopy->_cachedChromeCoords.__begin_, v201, __dst, (__dst - v201) >> 3);
  }

  selfCopy->_cachedSkipHiddenData = dataCopy;
  selfCopy->_cachedChromeCoordsRealized = lower & 1;
  v151 = objc_msgSend_vector(selfCopy->_cachedOutputValueVector, v147, v148);
  if (v151)
  {
    v152 = objc_msgSend_vector(selfCopy->_cachedOutputValueVector, v149, v150);
    v155 = objc_msgSend_count(v152, v153, v154);
  }

  else
  {
    v155 = 0;
  }

  if (v155 != selfCopy->_cachedChromeCoords.__end_ - selfCopy->_cachedChromeCoords.__begin_)
  {
    v157 = MEMORY[0x277D81150];
    v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "[TNChartFormulaWrapper outputValue:shouldSkipHiddenData:requiresChromeCoords:]");
    v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v161, v158, v160, 509, 0, "Chart formula evaluation # cache values vs # of chrome coordinates don't match: %lu vs %lu", v155, selfCopy->_cachedChromeCoords.__end_ - selfCopy->_cachedChromeCoords.__begin_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163);
  }

  if (v201)
  {
    __dst = v201;
    operator delete(v201);
  }

  v190._topLeft = &v204;
  sub_275F077D4(&v190);

LABEL_90:

  return v10;
}

- (id)outputGrid:(id)grid shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  gridCopy = grid;
  cachedValueGrid = self->_cachedValueGrid;
  if (cachedValueGrid && self->_cachedSkipHiddenData == dataCopy)
  {
    v9 = cachedValueGrid;
  }

  else
  {
    formulaObject = self->_formulaObject;
    if (formulaObject || (v11 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNChartFormulaWrapper outputGrid:shouldSkipHiddenData:]"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 523, 0, "invalid nil value for '%{public}s'", "_formulaObject"), v14, v12, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17), (formulaObject = self->_formulaObject) != 0))
    {
      if (dataCopy)
      {
        objc_msgSend_setHidingActionMask_(gridCopy, v6, 19);
        formulaObject = self->_formulaObject;
      }

      v18 = objc_msgSend_evaluateWithContextGridResult_(formulaObject, v6, gridCopy);
      if (objc_msgSend_isValueGridValue(v18, v19, v20))
      {
        v9 = objc_msgSend_valueGrid(v18, v21, v22);
        objc_storeStrong(&self->_cachedValueGrid, v9);
        self->_cachedSkipHiddenData = dataCopy;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)gridLabelValueAtIndex:(unint64_t)index withEvaluationContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  rowCopy = row;
  contextCopy = context;
  v11 = objc_msgSend_outputGrid_shouldSkipHiddenData_(self, v10, contextCopy, dataCopy);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_275F12E18;
  v30 = sub_275F12E28;
  v31 = objc_msgSend_string(MEMORY[0x277CCAB68], v12, v13);
  if (v11)
  {
    if (rowCopy)
    {
      objc_msgSend_populatedRows(v11, v14, v15);
      v16 = TSUIndexSet::nthIndex(v25);
      TSUIndexSet::~TSUIndexSet(v25);
      v17 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_275F12E30;
      v24[3] = &unk_27A6A2BC0;
      v24[4] = contextCopy;
      v24[5] = &v26;
      objc_msgSend_enumerateValuesForRow_usingBlock_(v11, v18, v16, v24);
    }

    else
    {
      objc_msgSend_populatedColumns(v11, v14, v15);
      v19 = TSUIndexSet::nthIndex(v25);
      TSUIndexSet::~TSUIndexSet(v25);
      v17 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275F12F14;
      v23[3] = &unk_27A6A2BC0;
      v23[4] = contextCopy;
      v23[5] = &v26;
      objc_msgSend_enumerateValuesForColumn_usingBlock_(v11, v20, v19, v23);
    }
  }

  v21 = objc_msgSend_copy(v27[5], v14, v15);
  _Block_object_dispose(&v26, 8);

  return v21;
}

- (id)outputGridVectorForSeries:(unint64_t)series withContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data
{
  rowCopy = row;
  v8 = objc_msgSend_outputGrid_shouldSkipHiddenData_(self, a2, context, data);
  v10 = v8;
  if (v8 && (objc_msgSend_populatedSliceByIndex_byRow_(v8, v9, series, rowCopy), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = objc_alloc(MEMORY[0x277D80C50]);
    v14 = objc_msgSend_initWithValueGrid_(v12, v13, v11);
    v15 = [TNChartVectorWrapper alloc];
    v17 = objc_msgSend_gridValue_(MEMORY[0x277D80C80], v16, v14);
    v19 = objc_msgSend_initWithVector_(v15, v18, v17);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)enumerateOutputGridForSeries:(unint64_t)series withContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data withBlock:(id)block
{
  dataCopy = data;
  rowCopy = row;
  blockCopy = block;
  v13 = objc_msgSend_outputGrid_shouldSkipHiddenData_(self, v12, context, dataCopy);
  v16 = v13;
  if (v13)
  {
    if (rowCopy)
    {
      objc_msgSend_populatedRows(v13, v14, v15);
      v17 = TSUIndexSet::nthIndex(v24);
      TSUIndexSet::~TSUIndexSet(v24);
      v18 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275F132E8;
      v23[3] = &unk_27A6A2BE8;
      v23[4] = blockCopy;
      objc_msgSend_enumerateValuesForRow_usingBlock_(v16, v19, v17, v23);
    }

    else
    {
      objc_msgSend_populatedColumns(v13, v14, v15);
      v20 = TSUIndexSet::nthIndex(v24);
      TSUIndexSet::~TSUIndexSet(v24);
      v18 = v22;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_275F13300;
      v22[3] = &unk_27A6A2BE8;
      v22[4] = blockCopy;
      objc_msgSend_enumerateValuesForColumn_usingBlock_(v16, v21, v20, v22);
    }
  }
}

- (unint64_t)numberOfGridValuesWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  rowCopy = row;
  v9 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, a2, engine, chart, 1);
  v11 = objc_msgSend_outputGrid_shouldSkipHiddenData_(self, v10, v9, dataCopy);
  v14 = v11;
  if (v11)
  {
    if (rowCopy)
    {
      v15 = objc_msgSend_numberOfPopulatedRows(v11, v12, v13);
    }

    else
    {
      v15 = objc_msgSend_numberOfPopulatedColumns(v11, v12, v13);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v16;
}

- (vector<std::pair<TSCEValue)outputVectorValuesWithChromeCoords:(std:(TSUCellCoord>>> *__return_ptr)retstr :(TNChartFormulaWrapper *)self allocator<std:(SEL)std :(id)a4 pair<TSCEValue *) shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  v8 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v10 = objc_msgSend_outputValue_shouldSkipHiddenData_requiresChromeCoords_(self, v9, v8, dataCopy, 1);
  v13 = objc_msgSend_vector(v10, v11, v12);

  if (v13)
  {
    if (self->_cachedSkipHiddenData != dataCopy)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TNChartFormulaWrapper outputVectorValuesWithChromeCoords:shouldSkipHiddenData:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 632, 0, "wrong hidden state for cached formula evaluation!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v76 = 0;
    v77 = 0;
    __p = 0;
    sub_275F1657C(&__p, self->_cachedChromeCoords.__begin_, self->_cachedChromeCoords.__end_, self->_cachedChromeCoords.__end_ - self->_cachedChromeCoords.__begin_);
    v23 = __p;
    v22 = v76;
    if (objc_msgSend_count(v13, v24, v25) == (v22 - v23) >> 3)
    {
      v28 = objc_msgSend_count(v13, v26, v27);
      v30 = __p;
      v29 = v76;
      if (objc_msgSend_count(v13, v31, v32) != (v29 - v30) >> 3)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TNChartFormulaWrapper outputVectorValuesWithChromeCoords:shouldSkipHiddenData:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 642, 0, "Expected the same # of values and coordinates!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      }

      v41 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v33, 175);
      v69[0] = v8;
      v69[1] = v41;
      v70 = 0;
      v71[0] = 0x10000000000;
      *(v71 + 7) = 0;
      v72 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v73 = 0;
      v74 = 0;
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          v44 = objc_msgSend_valueAtIndexNoThrow_index_(v13, v42, v69, i);
          if (i >= (v76 - __p) >> 3)
          {
            v45 = 0x7FFF7FFFFFFFLL;
          }

          else
          {
            v45 = *(__p + i);
          }

          v46 = v44;
          v68[0] = v46;
          v68[1] = v45;
          sub_275F13840(retstr, v68);
        }

        v47 = v70;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TNChartFormulaWrapper outputVectorValuesWithChromeCoords:shouldSkipHiddenData:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 637, 0, "chart formula wrapper didn't produce chrome coordinates matching output vector!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
    }

    var0 = retstr->var0;
    var1 = retstr->var1;
    if (objc_msgSend_count(v13, v55, v56) != (var1 - var0) >> 4)
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TNChartFormulaWrapper outputVectorValuesWithChromeCoords:shouldSkipHiddenData:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 658, 0, "valueVector and retVal cannot have different counts");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
    }

    if (__p)
    {
      v76 = __p;
      operator delete(__p);
    }
  }

  return result;
}

- (id)plotwiseLabelValuesWithEvaluationContext:(id)context byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  rowCopy = row;
  contextCopy = context;
  cachedPlotwiseLabels = self->_cachedPlotwiseLabels;
  if (cachedPlotwiseLabels)
  {
    if (self->_cachedLabelsByRow == rowCopy && self->_cachedSkipHiddenData == dataCopy)
    {
      v11 = cachedPlotwiseLabels;
      goto LABEL_35;
    }

    self->_cachedPlotwiseLabels = 0;
  }

  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9);
  objc_msgSend_outputVectorValuesWithChromeCoords_shouldSkipHiddenData_(self, v12, contextCopy, dataCopy);
  v13 = v38;
  if (v38 == v39)
  {
    goto LABEL_34;
  }

  selfCopy = self;
  v36 = v11;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (rowCopy)
  {
    v17 = *(v38 + 8);
  }

  else
  {
    v17 = *(v38 + 12);
  }

  if (rowCopy)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = 0x7FFF;
  }

  do
  {
    v21 = v13 + v14;
    v19 = *(v13 + v14);
    v20 = *(v21 + 12);
    LODWORD(v21) = *(v21 + 8);
    v22 = v19;
    v25 = v22;
    if (rowCopy)
    {
      v21 = v21;
    }

    else
    {
      v21 = v20;
    }

    v28 = &stru_2884F65E0;
    if ((objc_msgSend_isNil(v22, v23, v24) & 1) == 0)
    {
      v28 = objc_msgSend_coercedStringWithContext_(v25, v26, contextCopy);
      if (!v28)
      {
        goto LABEL_30;
      }
    }

    if (v21 == v18 || v17 != v21)
    {
      if (v16)
      {
        objc_msgSend_addObject_(v36, v26, v16);
      }

      v17 = v21;
LABEL_26:
      v16 = objc_msgSend_string(MEMORY[0x277CCAB68], v26, v27);
      goto LABEL_27;
    }

    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_27:
    v30 = objc_msgSend_length(v16, v26, v27);
    v32 = @" ";
    if (!v30)
    {
      v32 = &stru_2884F65E0;
    }

    objc_msgSend_appendFormat_(v16, v31, @"%@%@", v32, v28);
LABEL_30:
    ++v15;

    v13 = v38;
    v14 += 16;
  }

  while (v15 < (v39 - v38) >> 4);
  v11 = v36;
  if (v16)
  {
    objc_msgSend_addObject_(v36, v33, v16);
  }

  self = selfCopy;
LABEL_34:
  objc_storeStrong(&self->_cachedPlotwiseLabels, v11);
  self->_cachedLabelsByRow = rowCopy;
  v40 = &v38;
  sub_275F164FC(&v40);
LABEL_35:

  return v11;
}

- (unint64_t)numberOfValuesWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  engineCopy = engine;
  cachedNumberOfValues = self->_cachedNumberOfValues;
  if (cachedNumberOfValues == -1)
  {
    v11 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, v8, engineCopy, chart, 0);
    v13 = objc_msgSend_outputValue_shouldSkipHiddenData_(self, v12, v11, dataCopy);
    v16 = objc_msgSend_vector(v13, v14, v15);

    if (!v16 || (v19 = objc_msgSend_count(v16, v17, v18), cachedNumberOfValues = v19, v19 < 0))
    {
      cachedNumberOfValues = 0;
    }

    else
    {
      self->_cachedNumberOfValues = v19;
    }
  }

  return cachedNumberOfValues;
}

- (unint64_t)numberOfTotalPlotwiseLabelValuesWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart byRow:(BOOL)row shouldSkipHiddenData:(BOOL)data
{
  dataCopy = data;
  rowCopy = row;
  v9 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, a2, engine, chart, 0);
  v11 = objc_msgSend_plotwiseLabelValuesWithEvaluationContext_byRow_shouldSkipHiddenData_(self, v10, v9, rowCopy, dataCopy);
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_count(v11, v12, v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)argumentCollectionWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart
{
  engineCopy = engine;
  if (!engineCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNChartFormulaWrapper argumentCollectionWithCalcEngine:inChart:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 745, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v6, self->_formulaObject, chart, engineCopy);

  return v15;
}

- (id)argumentCollectionWithCalcEngine:(id)engine inChart:(const TSKUIDStruct *)chart storeBadRef:(BOOL)ref
{
  refCopy = ref;
  engineCopy = engine;
  if (!engineCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNChartFormulaWrapper argumentCollectionWithCalcEngine:inChart:storeBadRef:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 753, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_storeBadRef_(TNChartFormulaArgumentCollection, v8, self->_formulaObject, chart, engineCopy, refCopy);

  return v17;
}

- (id)stringValueForFormulaWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner
{
  engineCopy = engine;
  v7 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v6, 175);
  v41 = v7;
  v39 = objc_msgSend_formulaObject(self, v8, v9);
  v11 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, v10, engineCopy, owner, 0);
  objc_msgSend_evaluateWithContextGridResult_(v39, v12, v11);
  v38 = v48 = 0;
  v14 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v38, v13, v11, v7, 0, 0, &v48);
  v37 = v48;
  if (v37)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_count(v14, v15, v16);
  }

  v19 = v11;
  v42[0] = v19;
  v42[1] = v7;
  v43 = 0;
  v44[0] = 0x10000000000;
  *(v44 + 7) = 0;
  v45 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v46 = 0;
  v47 = 0;
  if (v17 == 1)
  {
    v20 = objc_msgSend_valueAtIndexNoThrow_index_(v14, v18, v42, 0);
    if (objc_msgSend_isNil(v20, v21, v22))
    {
      v24 = &stru_2884F65E0;
    }

    else
    {
      v33 = objc_msgSend_coercedStringWithContext_(v20, v23, v19);
      v24 = objc_msgSend_copy(v33, v34, v35);
    }
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v27 = objc_msgSend_valueAtIndexNoThrow_index_(v14, v25, v42, i);
        isNil = objc_msgSend_isNil(v27, v28, v29);
        v32 = &stru_2884F65E0;
        if ((isNil & 1) == 0)
        {
          v7 = objc_msgSend_coercedStringWithContext_(v27, v30, v19);
          v32 = v7;
        }

        objc_msgSend_appendString_(v20, v30, v32);
        if ((isNil & 1) == 0)
        {
        }
      }
    }

    v24 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v25, v20);
  }

  return v24;
}

- (TSCERangeRef)rangeCircumscribingPrecedentsWithCalcEngine:(SEL)engine inOwner:(id)owner
{
  v56 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v10 = objc_msgSend_formulaObject(self, v8, v9);
  v12 = objc_msgSend_argumentCollectionFromFormula_inOwner_usingCalcEngine_(TNChartFormulaArgumentCollection, v11, v10, a5, ownerCopy);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v12;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v51, v55, 16);
  v45 = retstr;
  v17 = 0x7FFF7FFFFFFFLL;
  v18 = 0;
  v19 = 0;
  if (v16)
  {
    v20 = 0;
    v21 = *v52;
    v47 = vdupq_n_s64(0x7FFF00000000uLL);
    v22 = 0x7FFF7FFFFFFFLL;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v52 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v51 + 1) + 8 * v23);
      if ((objc_msgSend_isCellReference(v24, v14, v15, v45) & 1) == 0 && !objc_msgSend_isRangeReference(v24, v14, v15))
      {
        goto LABEL_72;
      }

      if (v20)
      {
        if (v24)
        {
          objc_msgSend_rangeReference(v24, v14, v15);
          v25 = *(&v50 + 1);
          v26 = v50;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v49 = 0u;
          v50 = 0u;
        }

        if (v18 != v26 || v19 != v25)
        {
          *v45 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v45[1].i64[0] = 0;
          v45[1].i64[1] = 0;

          v43 = ownerCopy;
          goto LABEL_78;
        }

        v27 = HIDWORD(v49.i64[0]);
        v28 = HIDWORD(v49.i64[1]);
        v29 = v22 & 0xFFFF00000000;
        v30 = v17 & 0xFFFF00000000;
        if (v22 != 0x7FFFFFFFLL && v29 == 0x7FFF00000000 && v30 == 0x7FFF00000000)
        {
          if (v17 == 0x7FFFFFFF)
          {
            goto LABEL_64;
          }

          v31.i64[0] = 0xFFFFFFFFLL;
          v31.i64[1] = 0xFFFFFFFFLL;
          v32.i64[0] = 0xFFFF00000000;
          v32.i64[1] = 0xFFFF00000000;
          v33 = vmovn_s64(vceqq_s64(vandq_s8(v49, v32), v47));
          v34 = vuzp1_s16(v33, v33);
          v34.i32[1] = vuzp1_s16(v34, vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v49, v31), vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1];
          if ((vminv_u16(v34) & 1) == 0)
          {
            goto LABEL_64;
          }

          if (v22 >= v49.i32[0])
          {
            v35 = v49.u32[0];
          }

          else
          {
            v35 = v22;
          }

          v22 = v35 | 0x7FFF00000000;
          if (v17 <= v49.i32[2])
          {
            v36 = v49.u32[2];
          }

          else
          {
            v36 = v17;
          }

          v17 = v36 | 0x7FFF00000000;
        }

        else
        {
          if (v22 != 0x7FFFFFFFLL || v29 == 0x7FFF00000000 || v30 == 0x7FFF00000000)
          {
            if (v22 != 0x7FFFFFFFLL && v29 != 0x7FFF00000000 && v17 != 0x7FFFFFFF && v30 != 0x7FFF00000000 && WORD2(v22) <= WORD2(v17) && v22 <= v17)
            {
              if (v49.i32[0] != 0x7FFFFFFF && (v49.i64[0] & 0xFFFF00000000) != 0x7FFF00000000 && v49.i32[2] != 0x7FFFFFFF && (v49.i64[1] & 0xFFFF00000000) != 0x7FFF00000000 && v49.u16[2] <= v49.u16[6] && v49.i32[0] <= v49.i32[2])
              {
                if (WORD2(v22) < v49.u16[2])
                {
                  v27 = HIDWORD(v22);
                }

                if (v22 >= v49.i32[0])
                {
                  v22 = v49.u32[0];
                }

                else
                {
                  v22 = v22;
                }

                v22 = v22 & 0xFFFF0000FFFFFFFFLL | (v27 << 32);
                if (WORD2(v17) >= v49.u16[6])
                {
                  v28 = HIDWORD(v17);
                }

                if (v17 <= v49.i32[2])
                {
                  v17 = v49.u32[2];
                }

                else
                {
                  v17 = v17;
                }

                v17 = v17 & 0xFFFF0000FFFFFFFFLL | (v28 << 32);
              }

              goto LABEL_71;
            }

LABEL_64:
            if (v49.i32[0] == 0x7FFFFFFF || (v49.i64[0] & 0xFFFF00000000) == 0x7FFF00000000 || v49.i32[2] == 0x7FFFFFFF || (v49.i64[1] & 0xFFFF00000000) == 0x7FFF00000000 || v49.u16[2] > v49.u16[6] || (v17 = v49.u64[1], v22 = v49.i64[0], v49.i32[0] > v49.i32[2]))
            {
              v22 = 0x7FFF7FFFFFFFLL;
              v17 = 0x7FFF7FFFFFFFLL;
            }

            goto LABEL_71;
          }

          if (v17 != 0x7FFFFFFF)
          {
            goto LABEL_64;
          }

          v37.i64[0] = 0xFFFFFFFFLL;
          v37.i64[1] = 0xFFFFFFFFLL;
          v38.i64[0] = 0xFFFF00000000;
          v38.i64[1] = 0xFFFF00000000;
          v39 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v49, v38), v47)));
          v40 = vuzp1_s16(v39, v39);
          v40.i32[1] = vuzp1_s16(v40, vmovn_s64(vceqq_s64(vandq_s8(v49, v37), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
          if ((vminv_u16(v40) & 1) == 0)
          {
            goto LABEL_64;
          }

          if (WORD2(v22) >= v49.u16[2])
          {
            v41 = HIDWORD(v49.i64[0]);
          }

          else
          {
            v41 = HIDWORD(v22);
          }

          v22 = (v41 << 32) | 0x7FFFFFFF;
          if (WORD2(v17) >= v49.u16[6])
          {
            v42 = HIDWORD(v17);
          }

          else
          {
            v42 = HIDWORD(v49.i64[1]);
          }

          v17 = (v42 << 32) | 0x7FFFFFFF;
        }
      }

      else if (v24)
      {
        objc_msgSend_rangeReference(v24, v14, v15);
        v17 = v49.u64[1];
        v22 = v49.i64[0];
        v19 = *(&v50 + 1);
        v18 = v50;
      }

      else
      {
        v19 = 0;
        v18 = 0;
        v17 = 0;
        v22 = 0;
      }

LABEL_71:
      v20 = 1;
LABEL_72:
      if (v16 == ++v23)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v51, v55, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_77;
      }
    }
  }

  v22 = 0x7FFF7FFFFFFFLL;
LABEL_77:

  v43 = ownerCopy;
  v45->i64[0] = v22;
  v45->i64[1] = v17;
  v45[1].i64[0] = v18;
  v45[1].i64[1] = v19;
LABEL_78:

  return result;
}

- (BOOL)isAllStaticValuesWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner
{
  v18 = *MEMORY[0x277D85DE8];
  objc_msgSend_argumentCollectionWithCalcEngine_inChart_(self, a2, engine, owner);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_msgSend_isStaticValue(*(*(&v13 + 1) + 8 * i), v6, v7, v13) & 1) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (id)formulaByProcessingArgumentsWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner usingBlock:(id)block
{
  v73 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  blockCopy = block;
  selfCopy = self;
  v64 = blockCopy;
  v60 = selfCopy;
  v61 = engineCopy;
  if (!blockCopy)
  {
    goto LABEL_42;
  }

  objc_msgSend_argumentCollectionWithCalcEngine_inChart_(selfCopy, v11, engineCopy, owner);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v59 = v67 = 0u;
  v14 = objc_msgSend_elementEnumerator(v59, v12, v13);
  obj = v14;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v66, v72, 16);
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v63 = *v67;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v67 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v66 + 1) + 8 * i);
      v22 = (v64)[2](v64, v21);
      v25 = v22;
      v26 = v22 != v21;
      if (v22)
      {
        v27 = objc_msgSend_type(v22, v23, v24);
        if (v27 <= 1)
        {
          if (!v19)
          {
            v19 = __C();
          }

          objc_msgSend_rangeReference(v25, v28, v29);
          v71 = v65;
          memset(&v70, 0, sizeof(v70));
          TSCEASTNodeArray::appendRangeReference(v19, &v71, 0, &v70);
LABEL_12:
          ++v17;
          goto LABEL_27;
        }

        switch(v27)
        {
          case 4uLL:
            if (!v19)
            {
              v19 = __C();
            }

            v34 = objc_msgSend_staticValue(v25, v28, v29);
            v31 = sub_275F14E00(v19, v34, v61);

            goto LABEL_25;
          case 3uLL:
            if (!v19)
            {
              v19 = __C();
            }

            v32 = objc_msgSend_categoryReference(v25, v28, v29);
            TSCEASTCategoryRefElement::appendCategoryRefElement(v19, v32, v33);

            goto LABEL_12;
          case 2uLL:
            if (!v19)
            {
              v19 = __C();
            }

            v30 = objc_msgSend_tractReference(v25, v28, v29);
            v31 = sub_275F11A20(v19, v30);

LABEL_25:
            v17 += v31;
            goto LABEL_27;
        }

        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TNChartFormulaWrapper formulaByProcessingArgumentsWithCalcEngine:inOwner:usingBlock:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 870, 0, "Unknown argument type for chart formula.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
      }

LABEL_27:

      v18 |= v26;
    }

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v66, v72, 16);
  }

  while (v16);

  if ((v18 & (v19 != 0)) != 1 || v17 == 0)
  {
    if (v18)
    {
      v14 = v60;
      v60 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    if (HIDWORD(v17))
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TNChartFormulaWrapper formulaByProcessingArgumentsWithCalcEngine:inOwner:usingBlock:]");
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 881, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
      v17 = 0xFFFFFFFFLL;
    }

    TSCEASTFunctionElement::appendFunctionElement(v19, 0xAF, v17, 0, v44);
    v46 = objc_alloc(MEMORY[0x277D80C60]);
    v48 = objc_msgSend_initWithNodeArray_(v46, v47, v19);
    v50 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v49, v48);

    v60 = v50;
    v14 = v48;
LABEL_40:
  }

  TSCEASTNodeArray::freeNodeArray();

LABEL_42:

  return v60;
}

- (id)formulaByRewriting:(BOOL)rewriting withCalcEngine:(id)engine andHostUID:(const TSKUIDStruct *)d
{
  rewritingCopy = rewriting;
  v17 = 0;
  v18 = *d;
  MEMORY[0x277C90920](v19, engine, &v17);
  v9 = objc_msgSend_formulaObject(self, v7, v8);
  v11 = v9;
  if (rewritingCopy)
  {
    v12 = objc_msgSend_copyByRewritingReferencesToUidForm_(v9, v10, v19);
  }

  else
  {
    v12 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v9, v10, v19);
  }

  v13 = v12;

  v15 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v14, v13);

  return v15;
}

- (id)formulaByBakingValuesWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner
{
  engineCopy = engine;
  v8 = objc_msgSend_functionSpecForFunctionIndex_(MEMORY[0x277D80C78], v7, 175);
  v42 = objc_msgSend_formulaObject(self, v9, v10);
  v12 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, v11, engineCopy, owner, 0);
  objc_msgSend_evaluateWithContextGridResult_(v42, v13, v12);
  v41 = v49 = 0;
  v15 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v41, v14, v12, v8, 0, 0, &v49);
  v40 = v49;
  if (v40)
  {
    v18 = 0;
  }

  else
  {
    v18 = objc_msgSend_count(v15, v16, v17);
  }

  v19 = v12;
  v43[0] = v19;
  v43[1] = v8;
  v44 = 0;
  v45[0] = 0x10000000000;
  *(v45 + 7) = 0;
  v46 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v47 = 0;
  v48 = 0;
  v22 = __C();
  if (v18)
  {
    v39 = v8;
    v23 = 0;
    for (i = 0; i != v18; ++i)
    {
      v25 = objc_msgSend_valueAtIndexNoThrow_index_(v15, v20, v43, i, v39, v40);
      v23 += sub_275F152D8(v22, v25, engineCopy);
    }

    v8 = v39;
    if (HIDWORD(v23))
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TNChartFormulaWrapper formulaByBakingValuesWithCalcEngine:inOwner:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaWrapper.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 927, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      v23 = 0xFFFFFFFFLL;
      v8 = v39;
    }
  }

  else
  {
    v23 = 0;
  }

  TSCEASTFunctionElement::appendFunctionElement(v22, 0xAF, v23, 0, v21);
  v33 = objc_alloc(MEMORY[0x277D80C60]);
  v35 = objc_msgSend_initWithNodeArray_(v33, v34, v22);
  v37 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v36, v35);
  TSCEASTNodeArray::freeNodeArray();

  return v37;
}

- (id)formulaByTrimmingCategoryLabels:(unint64_t)labels plotByRow:(BOOL)row calcEngine:(id)engine inChart:(TSKUIDStruct *)chart
{
  rowCopy = row;
  engineCopy = engine;
  shouldSkipHiddenData = objc_msgSend_numberOfTotalPlotwiseLabelValuesWithCalcEngine_inChart_byRow_shouldSkipHiddenData_(self, v11, engineCopy, chart, !rowCopy, 0);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275F154A4;
  v17[3] = &unk_27A6A2C10;
  v19 = v22;
  v20 = shouldSkipHiddenData - labels;
  v13 = engineCopy;
  v18 = v13;
  v21 = rowCopy;
  v15 = objc_msgSend_formulaByProcessingArgumentsWithCalcEngine_inOwner_usingBlock_(self, v14, v13, chart, v17);

  _Block_object_dispose(v22, 8);

  return v15;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end