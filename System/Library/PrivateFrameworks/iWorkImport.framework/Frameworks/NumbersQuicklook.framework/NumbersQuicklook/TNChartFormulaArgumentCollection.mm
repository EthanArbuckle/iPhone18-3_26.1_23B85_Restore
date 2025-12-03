@interface TNChartFormulaArgumentCollection
+ (id)argumentCollectionFromFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine;
+ (id)argumentCollectionFromFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine storeBadRef:(BOOL)ref;
+ (id)evalArgumentCollectionFromFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine;
- (TNChartFormulaArgumentCollection)initWithArray:(id)array;
- (TNChartFormulaArgumentCollection)initWithFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine storeBadRef:(BOOL)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementAtIndex:(unint64_t)index;
- (id)elementEnumerator;
- (id)firstElement;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)reverseElementEnumerator;
- (id)wrappedChartFormulaWithID:(TSUCellCoord)d andLocale:(id)locale;
- (unint64_t)components;
@end

@implementation TNChartFormulaArgumentCollection

- (TNChartFormulaArgumentCollection)initWithArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNChartFormulaArgumentCollection initWithArray:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 38, 0, "invalid nil value for '%{public}s'", "array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v19.receiver = self;
  v19.super_class = TNChartFormulaArgumentCollection;
  v13 = [(TNChartFormulaArgumentCollection *)&v19 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CBEA60]);
    v16 = objc_msgSend_initWithArray_(v14, v15, arrayCopy);
    array = v13->_array;
    v13->_array = v16;
  }

  return v13;
}

- (TNChartFormulaArgumentCollection)initWithFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine storeBadRef:(BOOL)ref
{
  refCopy = ref;
  formulaCopy = formula;
  engineCopy = engine;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (formulaCopy)
  {
    v15 = objc_msgSend_const_astNodeArray(formulaCopy, v12, v13);
    v27 = 0;
    v28 = *owner;
    MEMORY[0x277C90920](v30, engineCopy, &v27);
    sub_275F1B13C(&v27, v15, v30);
    TSCEASTStreamIterator::rewrite(&v27);
    v20 = sub_275F1B140(&v27, v16, v17);
    v21 = 0;
    while (1)
    {
      v22 = objc_msgSend_nextObject(v20, v18, v19);

      if (!v22)
      {
        break;
      }

      if (objc_msgSend_isBadRef(v22, v23, v24))
      {
        v21 = v22;
        if (!refCopy)
        {
          continue;
        }
      }

      v21 = v22;
      objc_msgSend_addObject_(v14, v18, v22);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v27);
  }

  v25 = objc_msgSend_initWithArray_(self, v12, v14);

  return v25;
}

+ (id)argumentCollectionFromFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine
{
  formulaCopy = formula;
  engineCopy = engine;
  v9 = [TNChartFormulaArgumentCollection alloc];
  v11 = objc_msgSend_initWithFormula_inOwner_usingCalcEngine_storeBadRef_(v9, v10, formulaCopy, owner, engineCopy, 0);

  return v11;
}

+ (id)argumentCollectionFromFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine storeBadRef:(BOOL)ref
{
  refCopy = ref;
  formulaCopy = formula;
  engineCopy = engine;
  v11 = [TNChartFormulaArgumentCollection alloc];
  v13 = objc_msgSend_initWithFormula_inOwner_usingCalcEngine_storeBadRef_(v11, v12, formulaCopy, owner, engineCopy, refCopy);

  return v13;
}

+ (id)evalArgumentCollectionFromFormula:(id)formula inOwner:(const TSKUIDStruct *)owner usingCalcEngine:(id)engine
{
  formulaCopy = formula;
  engineCopy = engine;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (formulaCopy)
  {
    v25 = 0;
    v26 = *owner;
    MEMORY[0x277C90920](v28, engineCopy, &v25);
    v11 = objc_msgSend_newEvaluationContextWith_inChart_forSummaryChart_(TNChartFormulaWrapper, v10, engineCopy, owner, 0);
    sub_275F1BDA8();
    TSCEASTRewriter::rewrite(&v25);
    v16 = sub_275F1C2B0(&v25, v12, v13);
    v17 = 0;
    while (1)
    {
      v18 = objc_msgSend_nextObject(v16, v14, v15);

      if (!v18)
      {
        break;
      }

      v17 = v18;
      if ((objc_msgSend_isBadRef(v18, v19, v20) & 1) == 0)
      {
        v17 = v18;
        objc_msgSend_addObject_(v9, v14, v18);
      }
    }

    TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(&v25);
  }

  v21 = [TNChartFormulaArgumentCollection alloc];
  v23 = objc_msgSend_initWithArray_(v21, v22, v9);

  return v23;
}

- (id)wrappedChartFormulaWithID:(TSUCellCoord)d andLocale:(id)locale
{
  v76 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v5 = __C();
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  selfCopy = self;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v7, &v71, v75, 16);
  if (!v10)
  {
    v66 = 0;
LABEL_45:

    goto LABEL_47;
  }

  v11 = 0;
  v12 = *v72;
  do
  {
    v13 = 0;
    do
    {
      if (*v72 != v12)
      {
        objc_enumerationMutation(selfCopy);
      }

      v14 = *(*(&v71 + 1) + 8 * v13);
      if (objc_msgSend_isCellReference(v14, v8, v9))
      {
        if (v14)
        {
          objc_msgSend_cellReference(v14, v15, v16);
        }

        else
        {
          memset(&v69, 0, 24);
        }

        memset(&v70, 0, sizeof(v70));
        TSCEASTNodeArray::appendReference(v5, &v69, 0, &v70);
        goto LABEL_21;
      }

      if (objc_msgSend_isRangeReference(v14, v15, v16))
      {
        if (v14)
        {
          objc_msgSend_rangeReference(v14, v17, v18);
        }

        else
        {
          memset(&v69, 0, sizeof(v69));
        }

        memset(&v70, 0, sizeof(v70));
        TSCEASTNodeArray::appendRangeReference(v5, &v69, 0, &v70);
        goto LABEL_21;
      }

      if (objc_msgSend_isTractReference(v14, v17, v18))
      {
        v21 = objc_msgSend_tractReference(v14, v19, v20);
        v22 = sub_275F11A20(v5, v21);

LABEL_14:
        v11 = (v11 + v22);
        goto LABEL_22;
      }

      if (objc_msgSend_isCategoryReference(v14, v19, v20))
      {
        v25 = objc_msgSend_categoryReference(v14, v23, v24);
        TSCEASTCategoryRefElement::appendCategoryRefElement(v5, v25, v26);

LABEL_21:
        v11 = (v11 + 1);
        goto LABEL_22;
      }

      if (objc_msgSend_isViewTractReference(v14, v23, v24))
      {
        v29 = objc_msgSend_viewTractReference(v14, v27, v28);
        v22 = sub_275F11AD4(v5, v29, v30);

        goto LABEL_14;
      }

      if (!objc_msgSend_isStaticValue(v14, v27, v28))
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TNChartFormulaArgumentCollection wrappedChartFormulaWithID:andLocale:]");
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentCollection.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 166, 0, "Unexpected chart formula argument type.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
        goto LABEL_22;
      }

      v33 = objc_msgSend_staticValue(v14, v31, v32);
      v35 = v33;
      if (v33)
      {
        v38 = objc_msgSend_deepType_(v33, v34, 0);
        if (v38 > 4)
        {
          if (v38 == 5)
          {
            v57 = objc_msgSend_number(v35, v36, v37);
            v69.range._topLeft = objc_msgSend_decimalRepresentation(v57, v58, v59);
            v69.range._bottomRight = v60;
            TSCEASTNumberElement::appendNumberElement();

            goto LABEL_39;
          }

          if (v38 == 7)
          {
            v47 = objc_msgSend_asStringWithLocale_(v35, v36, localeCopy);
            TSCEASTStringElement::appendStringElement(v5, v47, v48);

            goto LABEL_39;
          }
        }

        else
        {
          if (v38 == 2)
          {
            v56 = objc_msgSend_BOOLean(v35, v36, v37);
            TSCEASTBooleanElement::appendBooleanElement(v5, v56);
            goto LABEL_39;
          }

          if (v38 == 3)
          {
            v39 = objc_msgSend_date(v35, v36, v37);
            TSCEASTDateElement::appendDateElement(v5, v39, 0, 0);

LABEL_39:
            v11 = (v11 + 1);
            goto LABEL_40;
          }
        }

        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TNChartFormulaArgumentCollection wrappedChartFormulaWithID:andLocale:]");
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentCollection.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 161, 0, "Unsupported static value type in chart formula.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
      }

LABEL_40:

LABEL_22:
      ++v13;
    }

    while (v10 != v13);
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v8, &v71, v75, 16);
    v10 = v61;
  }

  while (v61);

  if (v11)
  {
    TSCEASTFunctionElement::appendFunctionElement(v5, 0xAF, v11, 0, v62);
    v63 = objc_alloc(MEMORY[0x277D80C60]);
    selfCopy = objc_msgSend_initWithNodeArray_(v63, v64, v5);
    TSCEASTNodeArray::freeNodeArray();
    v66 = objc_msgSend_chartFormulaWithFormulaObject_(TNChartFormulaWrapper, v65, selfCopy);
    goto LABEL_45;
  }

  v66 = 0;
LABEL_47:

  return v66;
}

- (unint64_t)components
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = 0;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v3, &v13, v17, 16);
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_msgSend_isCategoryReference(v10, v5, v6, v13))
        {
          isStaticValue = 8;
        }

        else if (objc_msgSend_isTractReference(v10, v5, v6))
        {
          isStaticValue = 4;
        }

        else if (objc_msgSend_isGeometricReference(v10, v5, v6))
        {
          isStaticValue = 2;
        }

        else
        {
          isStaticValue = objc_msgSend_isStaticValue(v10, v5, v6);
        }

        v4 |= isStaticValue;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v5, &v13, v17, 16);
    }

    while (v7);
  }

  return v4;
}

- (id)elementAtIndex:(unint64_t)index
{
  objc_opt_class();
  v6 = objc_msgSend_objectAtIndex_(self->_array, v5, index);
  v7 = TSUDynamicCast();

  if (!v7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNChartFormulaArgumentCollection elementAtIndex:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 203, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  return v7;
}

- (id)elementEnumerator
{
  v3 = [TNChartFormulaArgumentEnumerator alloc];
  v6 = objc_msgSend_objectEnumerator(self->_array, v4, v5);
  v8 = objc_msgSend_initWithEnumerator_(v3, v7, v6);

  return v8;
}

- (id)reverseElementEnumerator
{
  v3 = [TNChartFormulaArgumentEnumerator alloc];
  v6 = objc_msgSend_reverseObjectEnumerator(self->_array, v4, v5);
  v8 = objc_msgSend_initWithEnumerator_(v3, v7, v6);

  return v8;
}

- (id)firstElement
{
  v4 = objc_msgSend_count(self->_array, a2, v2);
  if (v4)
  {
    v4 = objc_msgSend_objectAtIndex_(self->_array, v5, 0);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  array = self->_array;

  return objc_msgSend_initWithArray_(v7, v8, array);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TNMutableChartFormulaArgumentCollection, a2, zone);
  array = self->_array;

  return objc_msgSend_initWithArray_(v4, v5, array);
}

@end