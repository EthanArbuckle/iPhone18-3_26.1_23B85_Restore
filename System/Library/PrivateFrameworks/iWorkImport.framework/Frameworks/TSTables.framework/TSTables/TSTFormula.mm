@interface TSTFormula
+ (BOOL)storageExceedsMaxFormulaLength:(id)a3;
+ (id)doubleQuoteCharacters;
+ (id)formulaForCell:(id)a3 atCellID:(TSUViewCellCoord)a4 inTable:(id)a5;
+ (id)leadingSingleQuoteEscapeCharacters;
+ (id)leftParenCharacters;
+ (id)p_charactersToTemporarilyChopOffEndToFixSyntaxError;
+ (id)rightParenCharacters;
+ (id)singleQuoteCharacters;
+ (int)formulaQuoteContextAtCharIndex:(unint64_t)a3 inStorage:(id)a4;
+ (int)quoteContextAtCharIndex:(unint64_t)a3 previousContext:(int)a4 inStorage:(id)a5;
+ (unint64_t)parenCountAtCharIndex:(unint64_t)a3 inStorage:(id)a4;
+ (unint64_t)parenCountAtCharIndex:(unint64_t)a3 unmatchedParenCount:(unint64_t)a4 quoteContext:(int)a5 inStorage:(id)a6;
- (BOOL)hasBareArgumentPlaceholders;
- (TSCECalculationEngine)calculationEngine;
- (TSCEFormulaObject)formula;
- (TSTFormula)initWithCalculationEngine:(id)a3 expressionTree:(id)a4 baseHostCell:(TSUModelCellCoord)a5 hostTable:(id)a6;
- (TSTFormula)initWithCalculationEngine:(id)a3 viewHostCell:(TSUViewCellCoord)a4 hostTable:(id)a5;
- (TSTFormula)initWithContext:(id)a3 calculationEngine:(id)a4 baseHostCell:(TSUModelCellCoord)a5 formula:(id)a6 ownerUID:(const TSKUIDStruct *)a7 suppressAutomaticNamedReferenceInvalidation:(BOOL)a8;
- (TSTFormula)initWithContext:(id)a3 calculationEngine:(id)a4 viewHostCell:(TSUViewCellCoord)a5 formula:(id)a6 ownerUID:(const TSKUIDStruct *)a7 suppressAutomaticNamedReferenceInvalidation:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nodesToCheckForBareArgumentPlaceholders;
- (id)p_fixFormula:(id)a3;
- (id)p_formulaAsTextReturningTokenValues:(BOOL)a3;
- (void)addTSTCanvasReferencesToSet:(id)a3 inRangeContext:(unsigned __int8)a4 withColorHelper:(id)a5 preferringNodesFromStorage:(id)a6 showingSpillRanges:(BOOL)a7 calcEngine:(id)a8 allVisitedNodes:(id)a9;
- (void)dealloc;
- (void)fixPreserveFlagsForCategoryRefInNode:(id)a3;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)insertFormulaTextNonRecursive:(id)a3 printingOptions:(unsigned int)a4;
- (void)reparseWithStorage:(id)a3 adjustExpressionTree:(id)a4;
- (void)reset;
@end

@implementation TSTFormula

+ (id)formulaForCell:(id)a3 atCellID:(TSUViewCellCoord)a4 inTable:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (objc_msgSend_hasFormula(v7, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_context(v8, v13, v14, v15, v16);
    v22 = objc_msgSend_calcEngine(v8, v18, v19, v20, v21);
    v27 = objc_msgSend_formulaObject(v7, v23, v24, v25, v26);
    v28 = [TSTFormula alloc];
    v36[0] = objc_msgSend_tableUID(v8, v29, v30, v31, v32);
    v36[1] = v33;
    v34 = objc_msgSend_initWithContext_calculationEngine_viewHostCell_formula_ownerUID_(v28, v33, v17, v22, *&a4, v27, v36);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (BOOL)storageExceedsMaxFormulaLength:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_length(v3, v4, v5, v6, v7) > 0x2000;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TSTFormula)initWithCalculationEngine:(id)a3 expressionTree:(id)a4 baseHostCell:(TSUModelCellCoord)a5 hostTable:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = TSTFormula;
  v13 = [(TSTFormula *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_expressionTree, a4);
    objc_storeWeak(&v14->_calculationEngine, v10);
    objc_storeWeak(&v14->_hostInfo, v12);
    v14->_hostCell = a5;
    v14->_fixupFormulas = 1;
    v14->_empty = v11 == 0;
  }

  return v14;
}

- (TSTFormula)initWithContext:(id)a3 calculationEngine:(id)a4 viewHostCell:(TSUViewCellCoord)a5 formula:(id)a6 ownerUID:(const TSKUIDStruct *)a7 suppressAutomaticNamedReferenceInvalidation:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v18 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v17, a7->_lower, a7->_upper, v15);
  v23 = objc_msgSend_translator(v18, v19, v20, v21, v22);
  v27 = objc_msgSend_baseCellCoordForViewCellCoord_(v23, v24, *&a5, v25, v26);

  v29 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_suppressAutomaticNamedReferenceInvalidation_(self, v28, v14, v15, v27, v16, a7, v8);
  return v29;
}

- (TSTFormula)initWithContext:(id)a3 calculationEngine:(id)a4 baseHostCell:(TSUModelCellCoord)a5 formula:(id)a6 ownerUID:(const TSKUIDStruct *)a7 suppressAutomaticNamedReferenceInvalidation:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v31.coordinate = a5._coord;
  v31._tableUID = *a7;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v32, v15, &v31);
  if ((objc_msgSend_translationFlags(v16, v17, v18, v19, v20) & 0x40) != 0)
  {
    v29 = objc_msgSend_copyByConvertingColonToColonTract_(v16, v21, &v32, v22, v23);
    v25 = TSTExpressionTreeCreator::expressionTreeFromFormula(v29, &v32, v14, v8);

    if (v25)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = 0;
    goto LABEL_6;
  }

  v25 = TSTExpressionTreeCreator::expressionTreeFromFormula(v16, &v32, v14, v8);
  if (!v25)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v24, a7->_lower, a7->_upper, v15);
  self = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(self, v27, v15, v25, *&a5, v26);

  v28 = self;
LABEL_6:

  return v28;
}

- (TSTFormula)initWithCalculationEngine:(id)a3 viewHostCell:(TSUViewCellCoord)a4 hostTable:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = objc_msgSend_translator(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_baseCellCoordForViewCellCoord_(v14, v15, *&a4, v16, v17);

  v20 = objc_msgSend_initWithCalculationEngine_baseHostCell_hostTable_(self, v19, v8, v18, v9);
  return v20;
}

- (void)dealloc
{
  objc_msgSend_clearAllChildren(self->_expressionTree, a2, v2, v3, v4);
  expressionTree = self->_expressionTree;
  self->_expressionTree = 0;

  v7.receiver = self;
  v7.super_class = TSTFormula;
  [(TSTFormula *)&v7 dealloc];
}

- (void)reset
{
  objc_msgSend_clearAllChildren(self->_expressionTree, a2, v2, v3, v4);
  objc_msgSend_setExpressionTree_(self, v6, 0, v7, v8);
  objc_msgSend_setInitialWhitespace_(self, v9, 0, v10, v11);
  objc_msgSend_setIsSyntaxError_(self, v12, 0, v13, v14);

  objc_msgSend_setEmpty_(self, v15, 0, v16, v17);
}

- (TSCEFormulaObject)formula
{
  v6 = objc_msgSend_geometricFormula(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_hostInfo);
  v12 = objc_msgSend_calculationEngine(self, v8, v9, v10, v11);
  v23.coordinate = self->_hostCell;
  v23._tableUID._lower = objc_msgSend_tableUID(WeakRetained, v13, v14, v15, v16);
  v23._tableUID._upper = v17;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v24, v12, &v23);

  TSCEFormulaRewriteContext::setPreserveHostCell(&v24, 1);
  v21 = objc_msgSend_copyByRewritingReferencesToUidForm_(v6, v18, &v24, v19, v20);

  return v21;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v10 = a3;
  if (v4)
  {
    initialWhitespace = self->_initialWhitespace;
    if (initialWhitespace)
    {
      objc_msgSend_takeText_(v10, v6, initialWhitespace, v7, v8);
    }
  }

  objc_msgSend_insertFormulaText_printingOptions_(self->_expressionTree, v6, v10, v4, v8);
}

- (void)insertFormulaTextNonRecursive:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = *&a4;
  v10 = a3;
  if (v4)
  {
    initialWhitespace = self->_initialWhitespace;
    if (initialWhitespace)
    {
      objc_msgSend_takeText_(v10, v6, initialWhitespace, v7, v8);
    }
  }

  objc_msgSend_insertFormulaTextNonRecursive_printingOptions_(self->_expressionTree, v6, v10, v4, v8);
}

- (BOOL)hasBareArgumentPlaceholders
{
  v5 = objc_msgSend_nodesToCheckForBareArgumentPlaceholders(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_initWithArray_(v10, v11, v5, v12, v13);
    v18 = objc_msgSend_objectAtIndex_(v14, v15, 0, v16, v17);
    objc_msgSend_removeObjectAtIndex_(v14, v19, 0, v20, v21);
    do
    {
      v26 = objc_msgSend_tokenType(v18, v22, v23, v24, v25);
      v31 = v26 == 3;
      if (v26 == 3)
      {
        break;
      }

      if (objc_msgSend_tokenType(v18, v27, v28, v29, v30) != 1)
      {
        v36 = objc_msgSend_children(v18, v32, v33, v34, v35);
        v41 = objc_msgSend_count(v36, v37, v38, v39, v40);

        if (v41)
        {
          v42 = objc_msgSend_children(v18, v32, v33, v34, v35);
          objc_msgSend_addObjectsFromArray_(v14, v43, v42, v44, v45);
        }
      }

      if (!objc_msgSend_count(v14, v32, v33, v34, v35))
      {
        break;
      }

      v49 = objc_msgSend_objectAtIndex_(v14, v46, 0, v47, v48);

      objc_msgSend_removeObjectAtIndex_(v14, v50, 0, v51, v52);
      v18 = v49;
    }

    while (v49);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)nodesToCheckForBareArgumentPlaceholders
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_expressionTree)
  {
    v5[0] = self->_expressionTree;
    v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 1, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)fixPreserveFlagsForCategoryRefInNode:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isCategoryRef(v4, v5, v6, v7, v8))
  {
    hostCell = self->_hostCell;
    if (hostCell._coord.row != 0x7FFFFFFF && (*&hostCell & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v15 = objc_msgSend_categoryRef(v4, v9, v10, v11, v12);
      v20 = objc_msgSend_absoluteGroupUid(v15, v16, v17, v18, v19);
      v22 = v21;
      v26 = objc_msgSend_relativeGroupUid(v15, v21, v23, v24, v25);
      if (!(v20 | v22))
      {
        goto LABEL_18;
      }

      if (v26)
      {
        goto LABEL_18;
      }

      if (v27)
      {
        goto LABEL_18;
      }

      WeakRetained = objc_loadWeakRetained(&self->_hostInfo);

      if (!WeakRetained)
      {
        goto LABEL_18;
      }

      v29 = objc_loadWeakRetained(&self->_hostInfo);
      v34 = objc_msgSend_groupBy(v29, v30, v31, v32, v33);

      v39 = objc_msgSend_groupByUid(v34, v35, v36, v37, v38);
      v41 = v40;
      if (v39 == objc_msgSend_groupByUid(v15, v40, v42, v43, v44) && v41 == v45)
      {
        v46 = objc_loadWeakRetained(&self->_hostInfo);
        v51 = objc_msgSend_translator(v46, v47, v48, v49, v50);
        v87 = objc_msgSend_rowUIDForBaseRowIndex_(v51, v52, self->_hostCell._coord.row, v53, v54);
        v88 = v55;

        v56 = objc_loadWeakRetained(&self->_hostInfo);
        v86[0] = objc_msgSend_tableUID(v56, v57, v58, v59, v60);
        v86[1] = v61;
        v62 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v34, v61, v15, &v87, v86);
        objc_msgSend_setCategoryRef_(v4, v63, v62, v64, v65);
      }

      else
      {
        v56 = objc_loadWeakRetained(&self->_hostInfo);
        v70 = objc_msgSend_tableUID(v56, v66, v67, v68, v69);
        if (v70 | v71)
        {
          v75 = objc_msgSend_refersToPivotTable(v15, v71, v72, v73, v74);

          if ((v75 & 1) == 0)
          {
            v87 = objc_msgSend_absoluteGroupUid(v15, v76, v77, v78, v79);
            v88 = v80;
            objc_msgSend_setAsAbsoluteWithGroupUid_(v15, v80, &v87, v81, v82);
            objc_msgSend_setCategoryRef_(v4, v83, v15, v84, v85);
          }

          goto LABEL_17;
        }
      }

LABEL_17:
LABEL_18:
    }
  }
}

- (void)reparseWithStorage:(id)a3 adjustExpressionTree:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  if (objc_msgSend_storageExceedsMaxFormulaLength_(v8, v9, v6, v10, v11))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTFormula reparseWithStorage:adjustExpressionTree:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 321, 0, "Formula storage exceeds maximum length.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  syntaxError = self->_syntaxError;
  self->_syntaxError = 0;

  self->_isSyntaxError = 0;
  *&self->_formulaWasFixable = 0;
  if (!v6)
  {
    self->_empty = 1;
    goto LABEL_10;
  }

  v31 = objc_msgSend_length(v6, v27, v28, v29, v30);
  self->_empty = v31 == 0;
  if (!v31)
  {
LABEL_10:
    expressionTree = self->_expressionTree;
    self->_expressionTree = 0;

    initialWhitespace = self->_initialWhitespace;
    self->_initialWhitespace = 0;

    goto LABEL_22;
  }

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  TSTParser::TSTParser(v50, WeakRetained, v6, 0);

  v33 = objc_loadWeakRetained(&self->_hostInfo);
  v34 = TSTParser::parse(v50, v33, &self->_hostCell);

  if (!v34)
  {
    objc_storeStrong(&self->_syntaxError, obj);
    self->_isSyntaxError = 1;
    if (self->_fixupFormulas)
    {
      v34 = objc_msgSend_p_fixFormula_(self, v42, v6, v43, v44);
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v34 = 0;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

LABEL_7:
    v39 = v7[2](v7, v34);

    if (!v39)
    {
      self->_isSyntaxError = 1;
      *&self->_formulaWasFixable = 0;
    }

    goto LABEL_16;
  }

  v35 = self->_syntaxError;
  self->_syntaxError = 0;

  objc_msgSend_setInitialWhitespace_(self, v36, v52, v37, v38);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_15:
  v39 = v34;
LABEL_16:
  if (!self->_isSyntaxError || self->_formulaWasFixable)
  {
    objc_storeStrong(&self->_expressionTree, v39);
    v45 = self->_syntaxError;
    self->_syntaxError = 0;
  }

  objc_opt_class();
  v49 = TSUDynamicCast();
  if (v49)
  {
    objc_msgSend_fixPreserveFlagsForCategoryRefInNode_(self, v46, v49, v47, v48);
  }

  TSTParser::~TSTParser(v50);
LABEL_22:
}

+ (id)singleQuoteCharacters
{
  if (qword_27CFB52F0 != -1)
  {
    sub_2216F74AC();
  }

  v3 = qword_27CFB52E8;

  return v3;
}

+ (id)leadingSingleQuoteEscapeCharacters
{
  if (qword_27CFB5300 != -1)
  {
    sub_2216F74C0();
  }

  v3 = qword_27CFB52F8;

  return v3;
}

+ (id)doubleQuoteCharacters
{
  if (qword_27CFB5310 != -1)
  {
    sub_2216F74D4();
  }

  v3 = qword_27CFB5308;

  return v3;
}

+ (id)leftParenCharacters
{
  if (qword_27CFB5320 != -1)
  {
    sub_2216F74E8();
  }

  v3 = qword_27CFB5318;

  return v3;
}

+ (id)rightParenCharacters
{
  if (qword_27CFB5330 != -1)
  {
    sub_2216F74FC();
  }

  v3 = qword_27CFB5328;

  return v3;
}

+ (int)quoteContextAtCharIndex:(unint64_t)a3 previousContext:(int)a4 inStorage:(id)a5
{
  v7 = a5;
  v8 = objc_opt_class();
  v13 = objc_msgSend_singleQuoteCharacters(v8, v9, v10, v11, v12);
  v14 = objc_opt_class();
  v19 = objc_msgSend_doubleQuoteCharacters(v14, v15, v16, v17, v18);
  v23 = objc_msgSend_characterAtIndex_(v7, v20, a3, v21, v22);
  if (objc_msgSend_characterIsMember_(v13, v24, v23, v25, v26))
  {
    if (a4 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = a4;
    }

    if (a4 == 1)
    {
      a4 = 0;
    }

    else
    {
      a4 = v30;
    }
  }

  else if (objc_msgSend_characterIsMember_(v19, v27, v23, v28, v29))
  {
    if (a4 == 2)
    {
      a4 = 0;
    }

    else if (!a4)
    {
      a4 = 2;
    }
  }

  return a4;
}

+ (int)formulaQuoteContextAtCharIndex:(unint64_t)a3 inStorage:(id)a4
{
  v5 = a4;
  v13 = objc_msgSend_range(v5, v6, v7, v8, v9);
  v14 = v10;
  v15 = &v10[v13];
  if (v13 > a3 || v15 < a3)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[TSTFormula formulaQuoteContextAtCharIndex:inStorage:]", v11, v12);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v19, v20);
    v33.location = v13;
    v33.length = v14;
    v22 = NSStringFromRange(v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v17, v21, 472, 0, "charIndex %lu not within storage range %@", a3, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (v15 >= a3)
  {
    v28 = a3;
  }

  else
  {
    v28 = v15;
  }

  if (v13 >= v28)
  {
    LODWORD(v29) = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      v30 = objc_opt_class();
      v29 = objc_msgSend_quoteContextAtCharIndex_previousContext_inStorage_(v30, v31, v13++, v29, v5);
    }

    while (v28 != v13);
  }

  return v29;
}

+ (unint64_t)parenCountAtCharIndex:(unint64_t)a3 inStorage:(id)a4
{
  v5 = a4;
  v6 = 0;
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = objc_opt_class();
      v7 = objc_msgSend_quoteContextAtCharIndex_previousContext_inStorage_(v9, v10, v8, v7, v5);
      v6 = objc_msgSend_parenCountAtCharIndex_unmatchedParenCount_quoteContext_inStorage_(TSTFormula, v11, v8++, v6, v7, v5);
    }

    while (a3 != v8);
  }

  return v6;
}

+ (unint64_t)parenCountAtCharIndex:(unint64_t)a3 unmatchedParenCount:(unint64_t)a4 quoteContext:(int)a5 inStorage:(id)a6
{
  v9 = a6;
  v10 = objc_opt_class();
  v15 = objc_msgSend_leftParenCharacters(v10, v11, v12, v13, v14);
  v16 = objc_opt_class();
  v21 = objc_msgSend_rightParenCharacters(v16, v17, v18, v19, v20);
  v25 = objc_msgSend_characterAtIndex_(v9, v22, a3, v23, v24);
  if (objc_msgSend_characterIsMember_(v15, v26, v25, v27, v28))
  {
    if (!a5)
    {
      ++a4;
    }
  }

  else if (objc_msgSend_characterIsMember_(v21, v29, v25, v30, v31))
  {
    if (a4)
    {
      v32 = a5 == 0;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    a4 -= v33;
  }

  else if (v25 == 65532)
  {
    objc_opt_class();
    v37 = objc_msgSend_attachmentAtCharIndex_(v9, v34, a3, v35, v36);
    v38 = TSUDynamicCast();

    if (v38)
    {
      v43 = objc_msgSend_expressionNode(v38, v39, v40, v41, v42);
      v48 = objc_msgSend_tokenType(v43, v44, v45, v46, v47);

      if (v48 == 1)
      {
        ++a4;
      }

      else
      {
        if (a4)
        {
          v49 = v48 == 2;
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        a4 -= v50;
      }
    }
  }

  return a4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = objc_msgSend_expressionTree(self, a2, a3, v3, v4);
  v12 = objc_msgSend_expressionTree(self, v8, v9, v10, v11);
  v17 = objc_msgSend_context(v12, v13, v14, v15, v16);
  v18 = objc_alloc_init(MEMORY[0x277D812B8]);
  v20 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v7, v19, v17, 1, v18);

  v21 = objc_opt_class();
  v25 = objc_msgSend_allocWithZone_(v21, v22, a3, v23, v24);
  v30 = objc_msgSend_calculationEngine(self, v26, v27, v28, v29);
  hostCell = self->_hostCell;
  WeakRetained = objc_loadWeakRetained(&self->_hostInfo);
  v34 = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(v25, v33, v30, v20, hostCell, WeakRetained);

  return v34;
}

+ (id)p_charactersToTemporarilyChopOffEndToFixSyntaxError
{
  if (qword_27CFB5340 != -1)
  {
    sub_2216F7510();
  }

  v3 = qword_27CFB5338;

  return v3;
}

- (id)p_fixFormula:(id)a3
{
  v269 = a3;
  v8 = objc_msgSend_range(v269, v4, v5, v6, v7);
  v10 = v9;
  v267 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v263 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14);
  v15 = objc_opt_class();
  v268 = objc_msgSend_singleQuoteCharacters(v15, v16, v17, v18, v19);
  v20 = objc_opt_class();
  v266 = objc_msgSend_doubleQuoteCharacters(v20, v21, v22, v23, v24);
  v25 = objc_opt_class();
  v265 = objc_msgSend_leftParenCharacters(v25, v26, v27, v28, v29);
  v30 = objc_opt_class();
  v264 = objc_msgSend_rightParenCharacters(v30, v31, v32, v33, v34);
  v276 = 0;
  v277 = &v276;
  v278 = 0x2020000000;
  v279 = 0;
  v43 = objc_msgSend_range(v269, v35, v36, v37, v38);
  v262 = self;
  v44 = v8 + v10;
  if (v43 < v8 + v10)
  {
    v45 = 0;
    v46 = 0;
    while (1)
    {
      if (*(v277 + 24) == 1)
      {
        goto LABEL_43;
      }

      v47 = objc_msgSend_characterAtIndex_(v269, v39, v43, v41, v42);
      if (objc_msgSend_characterIsMember_(v268, v48, v47, v49, v50))
      {
        v51 = v45 == 1;
        if (v45 <= 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = v45;
        }
      }

      else
      {
        if (!objc_msgSend_characterIsMember_(v266, v39, v47, v41, v42))
        {
          if (objc_msgSend_characterIsMember_(v265, v39, v47, v41, v42))
          {
            if (!v45)
            {
              ++v46;
            }
          }

          else if (objc_msgSend_characterIsMember_(v264, v39, v47, v41, v42))
          {
            if (!v45)
            {
              v45 = 0;
              if (v46)
              {
                --v46;
              }

              else
              {
                *(v277 + 24) = 1;
              }
            }
          }

          else if (v47 == 65532)
          {
            if (v45)
            {
              objc_msgSend_addIndex_(v263, v39, v43, v41, v42);
            }

            else
            {
              objc_opt_class();
              v56 = objc_msgSend_attachmentAtCharIndex_(v269, v53, v43, v54, v55);
              v57 = TSUDynamicCast();

              if (v57)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v62 = objc_msgSend_expressionNode(v57, v58, v59, v60, v61);
                  v67 = objc_msgSend_tokenType(v62, v63, v64, v65, v66);

                  if (v67 == 1)
                  {
                    v72 = objc_msgSend_expressionNode(v57, v68, v69, v70, v71);
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if ((isKindOfClass & 1) == 0)
                    {
                      v78 = MEMORY[0x277D81150];
                      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSTFormula p_fixFormula:]", v76, v77);
                      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v81, v82);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 610, 0, "expected a function node with a function start token");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
                    }

                    v89 = objc_msgSend_expressionNode(v57, v74, v75, v76, v77);
                    v92 = objc_msgSend_tokenContextWithExpressionNode_parenNestingLevel_(TSTFormulaTokenContext, v90, v89, v46, v91);
                    objc_msgSend_tsu_push_(v267, v93, v92, v94, v95);

                    v46 = 0;
                  }

                  else if (v67 == 2)
                  {
                    if (v46 || !objc_msgSend_count(v267, v68, v69, v70, v71))
                    {
                      *(v277 + 24) = 1;
                    }

                    else
                    {
                      v100 = objc_msgSend_tsu_pop(v267, v96, v97, v98, v99);
                      v46 = objc_msgSend_parenNestingLevel(v100, v101, v102, v103, v104);
                    }
                  }
                }
              }

              v45 = 0;
            }
          }

          goto LABEL_16;
        }

        if (v45)
        {
          v52 = v45;
        }

        else
        {
          v52 = 2;
        }

        v51 = v45 == 2;
      }

      if (v51)
      {
        v45 = 0;
      }

      else
      {
        v45 = v52;
      }

LABEL_16:
      if (v44 == ++v43)
      {
        goto LABEL_43;
      }
    }
  }

  v46 = 0;
  v45 = 0;
LABEL_43:
  if (v277[3])
  {
    v105 = 0;
  }

  else
  {
    v106 = objc_msgSend_context(v269, v39, v40, v41, v42);
    v111 = objc_msgSend_stylesheet(v269, v107, v108, v109, v110);
    v114 = objc_msgSend_i_copyIntoContext_stylesheet_(v269, v112, v106, v111, v113);

    v119 = objc_msgSend_string(v114, v115, v116, v117, v118);
    hasFormulaEqualsPrefix = objc_msgSend_tst_hasFormulaEqualsPrefix(v119, v120, v121, v122, v123);

    if (hasFormulaEqualsPrefix)
    {
      objc_msgSend_deleteRange_undoTransaction_(v114, v125, 0, 1, 0);
      if (!objc_msgSend_length(v114, v126, v127, v128, v129))
      {
        *(v277 + 24) = 1;
      }
    }

    v273[0] = MEMORY[0x277D85DD0];
    v273[1] = 3221225472;
    v273[2] = sub_22124EA24;
    v273[3] = &unk_27845F0D8;
    v130 = v114;
    v274 = v130;
    v275 = &v276;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v263, v131, 2, v273, v132);
    if ((v277[3] & 1) == 0 && v45)
    {
      v137 = objc_msgSend_range(v130, v133, v134, v135, v136);
      if (v45 == 1)
      {
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v130, v138, &v138[v137], 0, @"'", 0);
      }

      else
      {
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v130, v138, &v138[v137], 0, @"", 0);
      }
    }

    if ((v277[3] & 1) == 0)
    {
      objc_msgSend_range(v130, v133, v134, v135, v136);
      if (!v142)
      {
        v143 = MEMORY[0x277D81150];
        v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSTFormula p_fixFormula:]", v140, v141);
        v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v146, v147);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v143, v149, v144, v148, 678, 0, "expected non-empty storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v150, v151, v152, v153);
      }

      v154 = objc_opt_class();
      v159 = objc_msgSend_p_charactersToTemporarilyChopOffEndToFixSyntaxError(v154, v155, v156, v157, v158);
      v164 = objc_msgSend_range(v130, v160, v161, v162, v163);
      v168 = objc_msgSend_characterAtIndex_(v130, v165, &v165[v164 - 1], v166, v167);
      v172 = 1;
      while (objc_msgSend_characterIsMember_(v159, v169, v168, v170, v171))
      {
        v177 = objc_msgSend_range(v130, v173, v174, v175, v176);
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v130, v178, &v178[v177 - 1], 1, &stru_2834BADA0, 0);
        v183 = objc_msgSend_range(v130, v179, v180, v181, v182);
        if (!v184)
        {
          v172 = 0;
          *(v277 + 24) = 1;
          break;
        }

        v168 = objc_msgSend_characterAtIndex_(v130, v184, &v184[v183 - 1], v185, v186);
        v172 = 0;
      }

      while ((v277[3] & 1) == 0)
      {
        if (v46)
        {
          v191 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_2834BADA0, v187, v46, @""), 0);
          v196 = objc_msgSend_range(v130, v192, v193, v194, v195);
          objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v130, v197, &v197[v196], 0, v191, 0);
        }

        else if (!objc_msgSend_count(v267, v187, v188, v189, v190))
        {
          if (v277[3])
          {
            break;
          }

          WeakRetained = objc_loadWeakRetained(&v262->_calculationEngine);
          TSTParser::TSTParser(v271, WeakRetained, v130, 0);

          v255 = objc_loadWeakRetained(&v262->_hostInfo);
          v105 = TSTParser::parse(v271, v255, &v262->_hostCell);

          if (v105)
          {
            v262->_formulaWasFixable = 1;
            v262->_formulaFixupsShouldStick = v172 & 1;
            objc_msgSend_setInitialWhitespace_(v262, v256, v272, v257, v258);
            v270[0] = MEMORY[0x277D85DD0];
            v270[1] = 3221225472;
            v270[2] = sub_22124EB24;
            v270[3] = &unk_278461EB8;
            v270[4] = v44;
            objc_msgSend_enumerateExpressionNodesUsingBlock_(v105, v259, v270, v260, v261);
          }

          TSTParser::~TSTParser(v271);
          goto LABEL_55;
        }

        if (objc_msgSend_count(v267, v198, v199, v200, v201))
        {
          v202 = objc_msgSend_tsu_pop(v267, v187, v188, v189, v190);
          objc_opt_class();
          v207 = objc_msgSend_expressionNode(v202, v203, v204, v205, v206);
          v208 = TSUDynamicCast();

          if (!v208)
          {
            v213 = MEMORY[0x277D81150];
            v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, "[TSTFormula p_fixFormula:]", v211, v212);
            v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v215, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v216, v217);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v213, v219, v214, v218, 704, 0, "expected a function node on the stack");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
          }

          v46 = objc_msgSend_parenNestingLevel(v202, v209, v210, v211, v212);
          v228 = objc_msgSend_range(v130, v224, v225, v226, v227);
          v230 = v229;
          v231 = [TSTFunctionEndNode alloc];
          v236 = objc_msgSend_context(v130, v232, v233, v234, v235);
          Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v231, v237, v236, v208, v228 + v230, v228 + v230);

          v239 = [TSTWPTokenAttachment alloc];
          v244 = objc_msgSend_context(v130, v240, v241, v242, v243);
          v247 = objc_msgSend_initWithContext_expressionNode_(v239, v245, v244, Index_lastIndex, v246);

          v252 = objc_msgSend_range(v130, v248, v249, v250, v251);
          objc_msgSend_insertAttachmentOrFootnote_range_dolcContext_undoTransaction_changeSession_(v130, v253, v247, &v253[v252], 0, 0, 0, 0);
        }

        else
        {
          v46 = 0;
        }
      }
    }

    v105 = 0;
LABEL_55:
  }

  _Block_object_dispose(&v276, 8);

  return v105;
}

- (id)p_formulaAsTextReturningTokenValues:(BOOL)a3
{
  v5 = a3;
  v7 = objc_msgSend_context(self->_expressionTree, a2, a3, v3, v4);
  v8 = objc_alloc(MEMORY[0x277D80AE0]);
  v12 = objc_msgSend_initWithContext_(v8, v9, v7, v10, v11);
  v13 = objc_alloc(MEMORY[0x277D80F28]);
  v15 = objc_msgSend_initWithContext_string_stylesheet_kind_(v13, v14, v7, &stru_2834BADA0, v12, 3);
  objc_msgSend_insertFormulaText_printingOptions_(self, v16, v15, 1, v17);
  if (v5)
  {
    objc_msgSend_stringWithFormulaDetokenizedText(v15, v18, v19, v20, v21);
  }

  else
  {
    objc_msgSend_stringWithFormulaPlainText(v15, v18, v19, v20, v21);
  }
  v22 = ;

  return v22;
}

- (void)addTSTCanvasReferencesToSet:(id)a3 inRangeContext:(unsigned __int8)a4 withColorHelper:(id)a5 preferringNodesFromStorage:(id)a6 showingSpillRanges:(BOOL)a7 calcEngine:(id)a8 allVisitedNodes:(id)a9
{
  v10 = a7;
  v13 = a4;
  v25 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v23 = objc_msgSend_expressionTree(self, v19, v20, v21, v22);
  objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v23, v24, v25, v13, v15, v16, v10, 1, v17, v18);
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

@end