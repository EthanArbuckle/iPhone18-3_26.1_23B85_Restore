TSCEASTBinaryElement *TSTExpressionTreeCreator::binaryInfixOperatorNode(TSTExpressionTreeCreator *this, TSCEASTBinaryElement *a2)
{
  v4 = TSCEASTElement::tag(a2, this);
  v9 = sub_2213F63D8(v4, v5, v6, v7, v8);
  v10 = [TSTOperatorNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v10, v11, *(this + 25), v9, 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 2);

  return a2;
}

uint64_t sub_2213F63D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 44)
  {
    switch(a1)
    {
      case 1:
      case 14:
        v6 = MEMORY[0x277D81530];
        return *v6;
      case 2:
      case 13:
        v6 = MEMORY[0x277D815B0];
        return *v6;
      case 3:
        v6 = MEMORY[0x277D81580];
        return *v6;
      case 4:
        v6 = MEMORY[0x277D81548];
        return *v6;
      case 5:
        v6 = MEMORY[0x277D81598];
        return *v6;
      case 6:
        v6 = MEMORY[0x277D81540];
        return *v6;
      case 7:
        v6 = MEMORY[0x277D81558];
        return *v6;
      case 8:
        v6 = MEMORY[0x277D81560];
        return *v6;
      case 9:
        v6 = MEMORY[0x277D81570];
        return *v6;
      case 10:
        v6 = MEMORY[0x277D81578];
        return *v6;
      case 11:
        v6 = MEMORY[0x277D81550];
        return *v6;
      case 12:
        v6 = MEMORY[0x277D81588];
        return *v6;
      case 15:
        v6 = MEMORY[0x277D81590];
        return *v6;
      case 28:
        goto LABEL_9;
      default:
        goto LABEL_23;
    }
  }

  switch(a1)
  {
    case '-':
LABEL_9:
      v6 = MEMORY[0x277D81538];
      return *v6;
    case 'E':
      v6 = MEMORY[0x277D81568];
      return *v6;
    case 'F':
      v6 = MEMORY[0x277D815A8];
      return *v6;
  }

LABEL_23:
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "unichar operatorCharForTag(TSCEASTNodeTag)", a4, a5);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v11, v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 378, 0, "Unknown operator tag: %d", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  return 0;
}

TSCEASTUnaryElement *TSTExpressionTreeCreator::unaryOperatorNode(TSTExpressionTreeCreator *this, TSCEASTUnaryElement *a2, int a3)
{
  v6 = TSCEASTElement::tag(a2, this);
  v11 = sub_2213F63D8(v6, v7, v8, v9, v10);
  if (a3)
  {
    v12 = [TSTPostfixOperatorNode alloc];
  }

  else
  {
    v12 = [TSTPrefixOperatorNode alloc];
  }

  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v12, v13, *(this + 25), v11, 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 1);

  return a2;
}

TSCEASTFunctionElement *TSTExpressionTreeCreator::functionNode(TSTExpressionTreeCreator *this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(a2, this, a3, a4, a5);
  v8 = (*(*a2 + 48))(a2, this);
  v12 = TSCEASTFunctionElement::whitespace(a2, this, v9, v10, v11);
  v13 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v13, v14, *(this + 25), v7, 0, 0, 0);
  objc_msgSend_setWhitespaceAfterFunctionName_(Index_lastIndex, v16, v12, v17, v18);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v8);

  return a2;
}

TSCEASTUnknownFunctionElement *TSTExpressionTreeCreator::unknownFunctionNode(TSTExpressionTreeCreator *this, TSCEASTUnknownFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTUnknownFunctionElement::unknownFunctionName(a2, this, a3, a4, a5);
  v8 = (*(*a2 + 48))(a2, this);
  v9 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v9, v10, *(this + 25), 0, 0, 0, 0);
  objc_msgSend_setInvalidFunctionName_(Index_lastIndex, v12, v7, v13, v14);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v8);

  return a2;
}

TSCEASTColonElement *TSTExpressionTreeCreator::colonNode(TSTExpressionTreeCreator *this, TSCEASTColonElement *a2)
{
  v4 = [TSTOperatorNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v4, v5, *(this + 25), *MEMORY[0x277D81538], 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 2);

  return a2;
}

TSCEASTColonTractElement *TSTExpressionTreeCreator::colonTractNode(TSTExpressionTreeCreator *this, TSCEASTColonTractElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TSCEASTColonTractElement::relativeTractRef(a2, this, a3, a4, a5);
  v93 = v98 = 0;
  v96.i64[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v9 = objc_msgSend_absoluteCellTractRefForHostCell_offTable_(v93, v7, &v96, &v98, v8);
  if ((objc_msgSend_hasTableUID(v9, v10, v11, v12, v13) & 1) == 0)
  {
    v18 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    objc_msgSend_setTableUID_(v9, v19, v18->var0.var0._tableUID._lower, v18->var0.var0._tableUID._upper, v20);
  }

  v21 = objc_msgSend_tableUID(v9, v14, v15, v16, v17);
  v23 = v22;
  v24 = sub_221089E8C(this);
  v26 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v25, v21, v23, v24);

  v92 = v26;
  v31 = objc_msgSend_translator(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_coordinateMapper(v31, v32, v33, v34, v35);

  v40 = objc_msgSend_viewTractRefForBaseTractRef_(v36, v37, v9, v38, v39);
  v41 = [TSTUIDRectRef alloc];
  v42 = sub_221089E8C(this);
  v45 = objc_msgSend_initWithCalcEngine_viewTractRef_(v41, v43, v42, v40, v44);

  v50 = objc_msgSend_preserveFlags(v9, v46, v47, v48, v49);
  objc_msgSend_setBasePreserveFlags_(v45, v51, v50, v52, v53);
  if ((v98 & 1) == 0 && objc_msgSend_isValid(v45, v54, v55, v56, v57) && ((objc_msgSend_spansAllColumns(v9, v58, v59, v60, v61) & 1) != 0 || (v66 = objc_msgSend_numColumns(v9, v62, v63, v64, v65), objc_msgSend_numberOfColumns(v45, v67, v68, v69, v70) == v66)) && ((objc_msgSend_spansAllRows(v9, v62, v63, v64, v65) & 1) != 0 || (v75 = objc_msgSend_numRows(v9, v71, v72, v73, v74), objc_msgSend_numberOfRows(v45, v76, v77, v78, v79) == v75)))
  {
    v80 = [TSTReferenceNode alloc];
    v81 = *(this + 25);
    v82 = sub_221089E8C(this);
    v83 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v96 = *&v83->var0.var0.coordinate.row;
    v97._lower = v83->var0.var0._tableUID._upper;
    v85 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v80, v84, v81, v82, v45, &v96, 0, *(this + 208));
  }

  else
  {
    v86 = [TSTReferenceNode alloc];
    v81 = *(this + 25);
    v82 = sub_221089E8C(this);
    tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
    v96 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v97 = tableUID;
    v88 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v94 = *&v88->var0.var0.coordinate.row;
    upper = v88->var0.var0._tableUID._upper;
    v85 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v86, v89, v81, v82, &v96, 0, &v94, 0, *(this + 208));
  }

  v90 = v85;

  if (v90)
  {
    TSTExpressionTreeCreator::addExpression(this, v90, 0);
  }

  return a2;
}

TSCEASTNumberElement *TSTExpressionTreeCreator::numberNode(id *this, TSCEASTNumberElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = TSCEASTNumberElement::value(a2, this, a3, a4, a5);
  v20 = v7;
  v8 = [TSTNumberNode alloc];
  v9 = this[25];
  v10 = sub_221089E8C(this);
  v15 = objc_msgSend_documentLocale(v10, v11, v12, v13, v14, v19, v20);
  Index_lastIndex = objc_msgSend_initWithContext_number_locale_firstIndex_lastIndex_(v8, v16, v9, &v19, v15, 0, 0);

  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);
  return a2;
}

TSCEASTBooleanElement *TSTExpressionTreeCreator::BOOLeanNode(TSTExpressionTreeCreator *this, TSCEASTBooleanElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTBooleanElement::value(a2, this, a3, a4, a5);
  v8 = [TSTBooleanNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v8, v9, *(this + 25), v7, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  return a2;
}

TSCEASTStringElement *TSTExpressionTreeCreator::stringNode(TSTExpressionTreeCreator *this, TSCEASTStringElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTStringElement::string(a2, this, a3, a4, a5);
  v8 = [TSTStringNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_stringValue_firstIndex_lastIndex_(v8, v9, *(this + 25), v7, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  return a2;
}

TSCEASTDateElement *TSTExpressionTreeCreator::dateNode(TSTExpressionTreeCreator *this, TSCEASTDateElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTDateElement::value(a2, this, a3, a4, a5);
  v11 = TSCEASTDateElement::dateTimeFormat(a2, this, v8, v9, v10);
  v12 = [TSTDateNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(v12, v13, *(this + 25), v7, 0, 0);
  if (objc_msgSend_length(v11, v15, v16, v17, v18))
  {
    objc_msgSend_setDateFormat_(Index_lastIndex, v19, v11, v20, v21);
  }

  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  return a2;
}

TSCEASTDurationElement *TSTExpressionTreeCreator::durationNode(id *this, TSCEASTDurationElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTDurationElement::durationFormat(a2, this, a3, a4, a5);
  *&v18 = v7;
  *(&v18 + 2) = BYTE2(v7);
  v8 = [TSTDurationNode alloc];
  v9 = this[25];
  v13 = TSCEASTDurationElement::unitNum(a2, this, v10, v11, v12);
  v14 = TSCEDurationFormat::asTSKDurationFormat(&v18);
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(v8, v15, v9, v14, 0, 0, v13);

  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);
  return a2;
}

TSCEASTTagOnlyElement *TSTExpressionTreeCreator::emptyArgumentNode(TSTExpressionTreeCreator *this, TSCEASTTagOnlyElement *a2)
{
  v4 = [TSTEmptyExpressionNode alloc];
  v8 = objc_msgSend_initWithContext_(v4, v5, *(this + 25), v6, v7);
  TSTExpressionTreeCreator::addExpression(this, v8, 0);

  return a2;
}

TSCEASTTokenElement *TSTExpressionTreeCreator::tokenNode(TSTExpressionTreeCreator *this, TSCEASTTokenElement *a2)
{
  v4 = [TSTArgumentPlaceholderNode alloc];
  v8 = objc_msgSend_initWithContext_(v4, v5, *(this + 25), v6, v7);
  TSTExpressionTreeCreator::addExpression(this, v8, 0);

  return a2;
}

TSCEASTArrayElement *TSTExpressionTreeCreator::arrayNode(TSTExpressionTreeCreator *this, TSCEASTArrayElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTArrayElement::numColumns(a2, this, a3, a4, a5);
  v11 = TSCEASTArrayElement::numRows(a2, this, v8, v9, v10);
  v12 = [TSTArrayNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(v12, v13, *(this + 25), 0, v7, v11, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v11 * v7);

  return a2;
}

TSCEASTListElement *TSTExpressionTreeCreator::listNode(TSTExpressionTreeCreator *this, TSCEASTListElement *a2)
{
  v4 = (*(*a2 + 48))(a2, this);
  v5 = [TSTListNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_children_firstIndex_lastIndex_(v5, v6, *(this + 25), 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v4);

  return a2;
}

TSCEASTRelativeCoordRefElement *TSTExpressionTreeCreator::anyReferenceNode(TSCEFormulaRewriteContext **this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, this);
  v8 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, this, v5, v6, v7);
  v9 = (v8 << 16) >> 48;
  v10 = TSCEFormulaRewriteContext::containingCell(this[1]);
  if (v4)
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v11, v12, v13);
    upper = v16;
  }

  else
  {
    lower = v10->var0.var0._tableUID._lower;
    upper = v10->var0.var0._tableUID._upper;
  }

  tableUID = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0._tableUID;
  if ((v4 & 0xC) == 8)
  {
    v20._lower = lower;
    v20._upper = upper;
    TSTExpressionTreeCreator::processColumnReferenceNode(this, tableUID, v20, v9, (v4 >> 4) & 1);
  }

  else
  {
    v18._lower = lower;
    v18._upper = upper;
    if ((v4 & 0xC) == 4)
    {
      TSTExpressionTreeCreator::processRowReferenceNode(this, tableUID, v18, v8, (v4 >> 5) & 1);
    }

    else
    {
      TSTExpressionTreeCreator::processCellReferenceNode(this, tableUID, v18, v8, v9, (v4 >> 5) & 1, (v4 & 0x10) != 0);
    }
  }

  return a2;
}

void TSTExpressionTreeCreator::processRowReferenceNode(TSTExpressionTreeCreator *this, TSKUIDStruct a2, TSKUIDStruct a3, uint64_t a4, int a5)
{
  v5 = a5;
  upper = a3._upper;
  lower = a3._lower;
  v9 = a2._upper;
  v10 = a2._lower;
  if (a5)
  {
    v12 = 10;
  }

  else
  {
    v12 = 0;
  }

  v13 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  if ((v5 & 1) == 0)
  {
    v17 = 0x7FFFFFFF;
    if (a4 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }

    coordinate = v13->var0.var0.coordinate;
    if (a4 < 1)
    {
      if (a4 && coordinate.row < -a4)
      {
        goto LABEL_17;
      }
    }

    else if ((999999 - a4) < coordinate.row)
    {
      goto LABEL_17;
    }

    if (coordinate.row == 0x7FFFFFFF)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v15, v16);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v22, v23);
      v25 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v20, v24, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v25);
    }

    else
    {
      v17 = coordinate.row + a4;
      if ((coordinate.row + a4) < 0x7FFFFFFF)
      {
        goto LABEL_18;
      }

      v42 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v15, v16);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v30, v20, v24, 191, 0, "overflow in row, input row: %d with host row: %lu", a4, coordinate.row);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
LABEL_17:
    v17 = 0x7FFFFFFF;
    goto LABEL_18;
  }

  v17 = a4;
LABEL_18:
  v35 = v17 | 0x7FFF00000000;
  v36 = [TSTReferenceNode alloc];
  v37 = *(this + 25);
  v38 = sub_221089E8C(this);
  v44[0] = v35;
  v44[1] = v35;
  v44[2] = lower;
  v44[3] = upper;
  v43[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v43[1] = v10;
  v43[2] = v9;
  LOBYTE(v41) = *(this + 208);
  v40 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v36, v39, v37, v38, v44, v12, v43, 0, v41);

  TSTExpressionTreeCreator::addExpression(this, v40, 0);
}

void TSTExpressionTreeCreator::processColumnReferenceNode(TSTExpressionTreeCreator *this, TSKUIDStruct a2, TSKUIDStruct a3, int a4, unsigned int a5)
{
  upper = a3._upper;
  lower = a3._lower;
  v9 = a2._upper;
  v10 = a2._lower;
  if (a5)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v36 = v12;
  v13 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  if (a5)
  {
    v17 = a4;
    goto LABEL_14;
  }

  v17 = 0x7FFF;
  if (a4 == 0x7FFF)
  {
    goto LABEL_14;
  }

  coordinate = v13->var0.var0.coordinate;
  if (a4 < 1)
  {
    if (a4 < 0 && -a4 > coordinate.column)
    {
      goto LABEL_14;
    }
  }

  else if (999 - a4 < coordinate.column)
  {
    goto LABEL_14;
  }

  v17 = coordinate.column + a4;
  if ((coordinate.column + a4) >= 0x7FFFu)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v15, v16);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

LABEL_14:
  v30 = (v17 << 32) | 0x7FFFFFFF;
  v31 = [TSTReferenceNode alloc];
  v32 = *(this + 25);
  v33 = sub_221089E8C(this);
  v38[0] = v30;
  v38[1] = v30;
  v38[2] = lower;
  v38[3] = upper;
  v37[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v37[1] = v10;
  v37[2] = v9;
  v35 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v31, v34, v32, v33, v38, v36 | a5, v37, 0, *(this + 208));

  TSTExpressionTreeCreator::addExpression(this, v35, 0);
}

void TSTExpressionTreeCreator::processCellReferenceNode(TSTExpressionTreeCreator *this, TSKUIDStruct a2, TSKUIDStruct a3, uint64_t a4, uint64_t a5, int a6, BOOL a7)
{
  upper = a3._upper;
  lower = a3._lower;
  v12 = a2._upper;
  v13 = a2._lower;
  sub_2210898C4(a5, a2._lower, a2._upper, a3._lower, a3._upper);
  sub_2210899C8(a4, v15, v16, v17, v18);
  sub_2210898C4(a5, v19, v20, v21, v22);
  sub_2210899C8(a4, v23, v24, v25, v26);
  v27 = 0x100000000000000;
  if (a7)
  {
    v28 = 4;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v29 = a6 == 0;
  v30 = 0x1000000000000;
  if (!a6)
  {
    v30 = 0;
  }

  v31 = v30 | v27 | (a5 << 32);
  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = 10;
  }

  v49._flags = v32 | a7 | v28;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v36 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, (v31 | a4), &v49, v34, v35);
  v37 = v36;
  v38 = v36 & 0xFFFF00000000;
  v39 = v36 != 0x7FFFFFFFLL || v38 == 0x7FFF00000000;
  if (!v39 || (v38 == 0x7FFF00000000 ? (v40 = v36 == 0x7FFFFFFFLL) : (v40 = 1), !v40))
  {
    v37 = 0x7FFF7FFFFFFFLL;
  }

  v41 = [TSTReferenceNode alloc];
  v42 = *(this + 25);
  v43 = sub_221089E8C(this);
  v48[0] = v37;
  v48[1] = v37;
  v48[2] = lower;
  v48[3] = upper;
  flags = v49._flags;
  v47[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
  v47[1] = v13;
  v47[2] = v12;
  v46 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v41, v45, v42, v43, v48, flags, v47, 0, *(this + 208));

  TSTExpressionTreeCreator::addExpression(this, v46, 0);
}

TSCEASTRelativeCoordRefElement *TSTExpressionTreeCreator::referenceErrorNode(TSTExpressionTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = [TSTReferenceNode alloc];
  v5 = *(this + 25);
  v6 = sub_221089E8C(this);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
  v15[0] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v15[1] = tableUID;
  v8 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  v13 = *&v8->var0.var0.coordinate.row;
  upper = v8->var0.var0._tableUID._upper;
  v12 = *(this + 208);
  v10 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v4, v9, v5, v6, v15, 0, &v13, 0, v12);

  TSTExpressionTreeCreator::addExpression(this, v10, 0);
  return a2;
}

TSCEASTRelativeCoordRefElement *TSTExpressionTreeCreator::referenceErrorWithUidsNode(TSTExpressionTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = (*(*a2 + 96))(a2, this);
  v43[0] = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v5, v6, v7);
  v43[1] = v8;
  v12 = objc_msgSend_includedUidsTract(v4, v8, v9, v10, v11);
  v17 = v12;
  memset(v42, 0, sizeof(v42));
  *__p = 0u;
  if (v12)
  {
    v18 = objc_msgSend_columnUids(v12, v13, v14, v15, v16);
    v23 = objc_msgSend_rowUids(v17, v19, v20, v21, v22);
    sub_2210BBBE8(v37, v18, v23);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v37;
    v42[0] = upper;
    v37[1] = 0;
    upper = 0;
    v37[0] = 0;
    v24 = v42[1];
    if (v42[1])
    {
      v42[2] = v42[1];
      operator delete(v42[1]);
      v24 = v37[0];
    }

    *&v42[1] = v39;
    v42[3] = v40;
    v40 = 0;
    v39 = 0uLL;
    if (v24)
    {
      v37[1] = v24;
      operator delete(v24);
    }
  }

  v25 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, this);
  v26 = [TSTUIDRectRef alloc];
  v27 = sub_221089E8C(this);
  v29 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v26, v28, v27, v43, __p, v25);

  v30 = [TSTReferenceNode alloc];
  v31 = *(this + 25);
  v32 = sub_221089E8C(this);
  v33 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  *v37 = *&v33->var0.var0.coordinate.row;
  upper = v33->var0.var0._tableUID._upper;
  v35 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v30, v34, v31, v32, v29, v37, 0, *(this + 208));

  TSTExpressionTreeCreator::addExpression(this, v35, 0);
  if (v42[1])
  {
    v42[2] = v42[1];
    operator delete(v42[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a2;
}

void sub_2213F7E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_22109DBB8(va);
  _Unwind_Resume(a1);
}

TSCEASTWhitespaceElement *TSTExpressionTreeCreator::appendWhitespaceNode(TSTExpressionTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4, a5);
  TSTExpressionTreeCreator::addWhitespaceAfter(this, v7);

  return a2;
}

TSCEASTWhitespaceElement *TSTExpressionTreeCreator::prependWhitespaceNode(TSTExpressionTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4, a5);
  TSTExpressionTreeCreator::addWhitespaceBefore(this, v7);

  return a2;
}

TSCEASTLetBindElement *TSTExpressionTreeCreator::letBindNode(TSTExpressionTreeCreator *this, TSCEASTLetBindElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTLetBindElement::identifier(a2, this, a3, a4, a5);
  Symbol = TSCEASTLetBindElement::symbol(a2, this, v8, v9, v10);
  isContinuation = TSCEASTLetBindElement::isContinuation(a2, this, v12, v13, v14);
  TSCEASTLetBindElement::letWhitespace(a2, this, v16, v17, v18, v56);
  TSCESymbolTable::beginScope(*(this + 18));
  if (v7)
  {
    v23 = TSCESymbolTable::trimIdentifierString(v7, v19, v20, v21, v22);

    v24 = *(this + 18);
    if (Symbol)
    {
      TSCESymbolTable::setSymbol(v24, Symbol, v23);
    }

    else
    {
      Symbol = TSCESymbolTable::createSymbol(v24, v23);
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = [TSTIdentifierNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v25, v26, *(this + 25), v23, 0, 0);
  objc_msgSend_setSymbol_(Index_lastIndex, v28, Symbol, v29, v30);
  v31 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v56, 0);
  objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v32, v31, v33, v34);

  v35 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v56, 1uLL);
  objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v36, v35, v37, v38);

  if (isContinuation)
  {
    v39 = [TSTContinuedLetNode alloc];
    v41 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v39, v40, *(this + 25), 363, 0, 0, 0);
  }

  else
  {
    v42 = [TSTFunctionNode alloc];
    v41 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v42, v43, *(this + 25), 363, 0, 0, 0);
    v48 = objc_msgSend_whitespaceBefore(Index_lastIndex, v44, v45, v46, v47);
    objc_msgSend_setWhitespaceAfterLeftParen_(v41, v49, v48, v50, v51);

    objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v52, 0, v53, v54);
  }

  TSTExpressionTreeCreator::addExpression(this, v41, 3);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);

  v57 = v56;
  sub_22107C2C0(&v57);

  return a2;
}

void sub_2213F8190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_22107C2C0(&a12);

  _Unwind_Resume(a1);
}

TSCEASTLambdaElement *TSTExpressionTreeCreator::lambdaNode(TSTExpressionTreeCreator *this, TSCEASTLambdaElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = *MEMORY[0x277D85DE8];
  v74 = TSCEASTLambdaElement::identifiers(a2, this, a3, a4, a5);
  TSCEASTLambdaElement::whitespaceBefore(a2, this, v6, v7, v8, v84);
  TSCEASTLambdaElement::whitespaceAfter(a2, this, v9, v10, v11, v83);
  v16 = objc_msgSend_count(v74, v12, v13, v14, v15);
  v17 = [TSTFunctionNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v17, v18, *(this + 25), 364, 0, 0, 0);
  TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, v16 + 1);
  TSCESymbolTable::beginScope(*(this + 18));
  Symbol = TSCEASTLambdaElement::firstSymbol(a2, this, v19, v20, v21);
  v77 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v23, 364, v24, v25);
  v26 = sub_221089E8C(this);
  v76 = objc_msgSend_documentLocale(v26, v27, v28, v29, v30);

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v74;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v79, v86, 16);
  if (v36)
  {
    v37 = 0;
    v38 = *v80;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v80 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = TSCESymbolTable::trimIdentifierString(*(*(&v79 + 1) + 8 * i), v32, v33, v34, v35);
        if (!objc_msgSend_length(v40, v41, v42, v43, v44, Index_lastIndex))
        {
          v49 = objc_msgSend_count(obj, v45, v46, v47, v48);
          v52 = objc_msgSend_argumentSpecForIndex_numArgs_(v77, v50, v37, v49 + 1, v51);
          v56 = objc_msgSend_localizedArgumentNameForLocale_(v52, v53, v76, v54, v55);

          v40 = v56;
        }

        TSCESymbolTable::setSymbol(*(this + 18), Symbol, v40);
        v57 = [TSTIdentifierNode alloc];
        v58 = *(this + 25);
        v60 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v57, v59, v58, v40, 0, 0);

        objc_msgSend_setSymbol_(v60, v61, Symbol, v62, v63);
        v64 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v84, v37);
        objc_msgSend_setWhitespaceBefore_(v60, v65, v64, v66, v67);

        v68 = TSCEASTCompactWhitespace::whitespaceStringForIndex(v83, v37);
        objc_msgSend_setWhitespaceAfter_(v60, v69, v68, v70, v71);

        TSTExpressionTreeCreator::addExpression(this, v60, 0);
        ++v37;
        Symbol = (Symbol + 1);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v79, v86, 16);
    }

    while (v36);
  }

  v85 = v83;
  sub_22107C2C0(&v85);
  v83[0] = v84;
  sub_22107C2C0(v83);

  return a2;
}

void sub_2213F8534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void ***a30)
{
  a30 = &a24;
  sub_22107C2C0(&a30);
  a24 = &a27;
  sub_22107C2C0(&a24);

  _Unwind_Resume(a1);
}

TSCEASTVariableElement *TSTExpressionTreeCreator::variableNode(TSTExpressionTreeCreator *this, TSCEASTVariableElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTVariableElement::symbol(a2, this, a3, a4, a5);
  v8 = TSCESymbolTable::identifierForSymbol(*(this + 18), v7);
  if (objc_msgSend_length(v8, v9, v10, v11, v12))
  {
    v13 = [TSTVariableNode alloc];
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v13, v14, *(this + 25), v8, v7, 0, 0);
    TSTExpressionTreeCreator::addExpression(this, Index_lastIndex, 0);
  }

  else
  {
    (*(*this + 240))(this, 0);
  }

  return a2;
}

TSCEASTViewTractRefElement *TSTExpressionTreeCreator::viewTractRefNode(TSTExpressionTreeCreator *this, TSCEASTViewTractRefElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTViewTractRefElement::tableUID(a2, this, a3, a4, a5);
  v87 = v7;
  v88 = v8;
  if (v7 | v8)
  {
    lower = v7;
    upper = v8;
  }

  else
  {
    v14 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    lower = v14->var0.var0._tableUID._lower;
    upper = v14->var0.var0._tableUID._upper;
    v87 = lower;
    v88 = upper;
  }

  TSCEASTViewTractRefElement::uidReference(a2, this, v9, v10, v11, &v86);
  v19 = objc_msgSend_activeUidTract(v86, v15, v16, v17, v18);
  v24 = v19;
  if (v19)
  {
    v25 = objc_msgSend_columnUids(v19, v20, v21, v22, v23);
    v30 = objc_msgSend_rowUids(v24, v26, v27, v28, v29);
    v31 = sub_221089E8C(this);
    v33 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v32, lower, upper, v31);

    if (!v33)
    {
      (*(*this + 240))(this, 0);
LABEL_31:

      goto LABEL_32;
    }

    v37 = TSCEASTViewTractRefElement::viewTractRef(a2, this, v34, v35, v36);
    memset(v85, 0, sizeof(v85));
    *__p = 0u;
    if (objc_msgSend_isFixedAtZeroRef(v37, v38, v39, v40, v41))
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v74[0] = objc_msgSend_columnUIDForColumnIndex_(v33, v42, 0, v43, v44);
      v74[1] = v45;
      sub_221083454(&v81, v74);
      v74[0] = objc_msgSend_rowUIDForRowIndex_(v33, v46, 0, v47, v48);
      v74[1] = v49;
      sub_221083454(&v78, v74);
      sub_2210BBBE8(v74, &v81, &v78);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v74;
      v85[0] = v75;
      v74[1] = 0;
      v75 = 0;
      v74[0] = 0;
      v50 = v85[1];
      if (v85[1])
      {
        v85[2] = v85[1];
        operator delete(v85[1]);
        v50 = v74[0];
      }

      *&v85[1] = v76;
      v85[3] = v77;
      v77 = 0;
      v76 = 0uLL;
      if (v50)
      {
        v74[1] = v50;
        operator delete(v50);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      v51 = v81;
      if (!v81)
      {
        goto LABEL_26;
      }

      v82 = v81;
    }

    else
    {
      sub_2210BBBE8(v74, v25, v30);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v74;
      v85[0] = v75;
      v74[1] = 0;
      v75 = 0;
      v74[0] = 0;
      v51 = v85[1];
      if (v85[1])
      {
        v85[2] = v85[1];
        operator delete(v85[1]);
        v51 = v74[0];
      }

      *&v85[1] = v76;
      v85[3] = v77;
      v77 = 0;
      v76 = 0uLL;
      if (!v51)
      {
        goto LABEL_26;
      }

      v74[1] = v51;
    }

    operator delete(v51);
LABEL_26:
    v63 = [TSTUIDRectRef alloc];
    v64 = sub_221089E8C(this);
    v66 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v63, v65, v64, &v87, __p, 15);

    v67 = [TSTReferenceNode alloc];
    v68 = *(this + 25);
    v69 = sub_221089E8C(this);
    v70 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    *v74 = *&v70->var0.var0.coordinate.row;
    v75 = v70->var0.var0._tableUID._upper;
    v72 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v67, v71, v68, v69, v66, v74, 0, *(this + 208));

    TSTExpressionTreeCreator::addExpression(this, v72, 0);
    if (v85[1])
    {
      v85[2] = v85[1];
      operator delete(v85[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_31;
  }

  v52 = MEMORY[0x277D81150];
  v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "virtual TSCEASTElement *TSTExpressionTreeCreator::viewTractRefNode(TSCEASTViewTractRefElement *)", v22, v23);
  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionTreeCreator.mm", v55, v56);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 794, 0, "viewTractRef is expected to have an active tract");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
LABEL_32:

  return a2;
}

void sub_2213F8B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_22109DBB8(&a21);

  _Unwind_Resume(a1);
}

TSCEASTCategoryRefElement *TSTExpressionTreeCreator::categoryRefNode(TSTExpressionTreeCreator *this, TSCEASTCategoryRefElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTCategoryRefElement::categoryRef(a2, this, a3, a4, a5);
  if ((objc_msgSend_preserveFlags(v7, v8, v9, v10, v11) & 2) == 0)
  {
    v16 = objc_msgSend_groupByUid(v7, v12, v13, v14, v15);
    v18 = v17;
    v19 = sub_221089E8C(this);
    v21 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v20, v16, v18, v19);

    if (v21)
    {
      v26 = objc_msgSend_tableInfo(v21, v22, v23, v24, v25);
      v31 = objc_msgSend_tableUID(v26, v27, v28, v29, v30);
      v33 = v32;
      v34 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      if (v31 == v34->var0.var0._tableUID._lower)
      {
        upper = v34->var0.var0._tableUID._upper;

        if (v33 == upper)
        {
          v36 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
          lower = v36->var0.var0._tableUID._lower;
          v38 = v36->var0.var0._tableUID._upper;
          v39 = sub_221089E8C(this);
          v41 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v40, lower, v38, v39);

          v46 = objc_msgSend_translator(v41, v42, v43, v44, v45);
          v47 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
          *&v61 = objc_msgSend_rowUIDForBaseRowIndex_(v46, v48, v47->var0.var0.coordinate.row, v49, v50);
          *(&v61 + 1) = v51;

          tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
          v53 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v21, v52, v7, &v61, &tableUID);

          v7 = v53;
        }
      }

      else
      {
      }
    }
  }

  v54 = [TSTReferenceNode alloc];
  v55 = *(this + 25);
  v56 = sub_221089E8C(this);
  v57 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  v61 = *&v57->var0.var0.coordinate.row;
  v62 = v57->var0.var0._tableUID._upper;
  v59 = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v54, v58, v55, v56, v7, &v61, 0);

  TSTExpressionTreeCreator::addExpression(this, v59, 0);
  return a2;
}

TSTExpressionNode *TSTExpressionTreeCreator::combineSpillRangeOpIntoRefNode(TSTExpressionTreeCreator *this, TSTExpressionNode *a2)
{
  v160 = *MEMORY[0x277D85DE8];
  v149 = a2;
  v6 = objc_msgSend_tokenType(v149, v2, v3, v4, v5);
  v10 = MEMORY[0x277D815A8];
  if (!v6)
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    if (objc_msgSend_operatorChar(v11, v12, v13, v14, v15) == *v10)
    {
      v20 = objc_msgSend_children(v11, v16, v17, v18, v19);
      v24 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0, v22, v23);
      isReferenceNode = objc_msgSend_isReferenceNode(v24, v25, v26, v27, v28);

      if (isReferenceNode)
      {
        objc_opt_class();
        v34 = objc_msgSend_children(v11, v30, v31, v32, v33);
        v38 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, 0, v36, v37);
        v39 = TSUDynamicCast();

        v44 = objc_msgSend_baseTractRef(v39, v40, v41, v42, v43);
        if (objc_msgSend_isSingleCell(v44, v45, v46, v47, v48))
        {
          v53 = objc_msgSend_spillRangeSuffix(v39, v49, v50, v51, v52);

          if ((v53 & 1) == 0)
          {
            objc_msgSend_setSpillRangeSuffix_(v39, v54, 1, v55, v56);

            goto LABEL_43;
          }
        }

        else
        {
        }
      }
    }
  }

  v61 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v7, v149, v8, v9);
  v153 = *v10;
LABEL_11:
  if (objc_msgSend_count(v61, v57, v58, v59, v60))
  {
    v151 = objc_msgSend_lastObject(v61, v62, v63, v64, v65);
    objc_msgSend_removeLastObject(v61, v66, v67, v68, v69);
    v150 = objc_msgSend_children(v151, v70, v71, v72, v73);
    if (!objc_msgSend_count(v150, v74, v75, v76, v77))
    {
      goto LABEL_41;
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v150;
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v155, v159, 16);
    if (!v83)
    {

      goto LABEL_39;
    }

    v152 = 0;
    v84 = 0;
    v85 = *v156;
    while (1)
    {
      v86 = 0;
      do
      {
        if (*v156 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v87 = *(*(&v155 + 1) + 8 * v86);
        if (objc_msgSend_tokenType(v87, v79, v80, v81, v82))
        {
          v91 = 0;
          objc_msgSend_addObject_(v61, v88, v87, v89, v90);
          goto LABEL_26;
        }

        objc_opt_class();
        v92 = TSUDynamicCast();
        if (objc_msgSend_operatorChar(v92, v93, v94, v95, v96) != v153 || (objc_msgSend_children(v92, v97, v98, v99, v100), v101 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v101, v102, 0, v103, v104), v105 = objc_claimAutoreleasedReturnValue(), v110 = objc_msgSend_isReferenceNode(v105, v106, v107, v108, v109), v105, v101, !v110))
        {
          objc_msgSend_addObject_(v61, v97, v87, v99, v100);

          v91 = 0;
          goto LABEL_26;
        }

        objc_opt_class();
        v115 = objc_msgSend_children(v92, v111, v112, v113, v114);
        v119 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, 0, v117, v118);
        v120 = TSUDynamicCast();

        v125 = objc_msgSend_baseTractRef(v120, v121, v122, v123, v124);
        if (!objc_msgSend_isSingleCell(v125, v126, v127, v128, v129))
        {

LABEL_29:
          v91 = 0;
          goto LABEL_30;
        }

        v134 = objc_msgSend_spillRangeSuffix(v120, v130, v131, v132, v133);

        if (v134)
        {
          goto LABEL_29;
        }

        objc_msgSend_setSpillRangeSuffix_(v120, v135, 1, v136, v137);
        v91 = v120;
LABEL_30:

        if (v91 && v91 != v87)
        {
          v142 = v152;
          if (!v152)
          {
            v142 = objc_msgSend_mutableCopy(obj, v138, v139, v140, v141);
          }

          v152 = v142;
          objc_msgSend_setObject_atIndexedSubscript_(v142, v138, v91, v84, v141);
        }

LABEL_26:

        ++v84;
        ++v86;
      }

      while (v83 != v86);
      v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v155, v159, 16);
      v83 = v143;
      if (!v143)
      {

        if (v152)
        {
          objc_msgSend_setChildren_(v151, v144, v152, v145, v146);
          v147 = v152;
          goto LABEL_40;
        }

LABEL_39:
        v147 = 0;
LABEL_40:

LABEL_41:
        goto LABEL_11;
      }
    }
  }

  v39 = v149;

LABEL_43:

  return v39;
}

uint64_t sub_2213F9488(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, TSCESymbolTable *a4, void *a5, char a6)
{
  v11 = a5;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, a4);
  *a1 = &unk_2834A7C30;
  v12 = v11;
  *(a1 + 200) = v12;
  *(a1 + 208) = a6;
  *(a1 + 216) = 0;
  *(a1 + 224) = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15, v16);
  *(a1 + 232) = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19, v20);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 96) = 1;

  return a1;
}

void sub_2213F9558(_Unwind_Exception *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(v1);

  _Unwind_Resume(a1);
}

void sub_2213F97DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2213F9890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2213F9C80(uint64_t a1)
{
  *a1 = &unk_2834A7E10;
  sub_2210BDEC0(a1 + 48);
  v3 = (a1 + 24);
  sub_2213FB81C(&v3);
  return a1;
}

void sub_2213F9E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2210BDEC0(v12 + 32);
  sub_2210BDEC0(va);
  v14 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_2213F9E8C(_OWORD *a1, _OWORD *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (a1 != a2)
  {
    v6 = a1;
    while ((v5[2](v5, v6) & 1) == 0)
    {
      if (++v6 == a2)
      {
        v6 = a2;
        break;
      }
    }

    if (v6 != a2)
    {
      for (i = v6 + 1; i != a2; ++i)
      {
        if ((v5[2](v5, i) & 1) == 0)
        {
          *v6++ = *i;
        }
      }
    }
  }

  return v6;
}

void sub_2213FA280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v23 = *v20;
  if (*v20)
  {
    *(v20 + 8) = v23;
    operator delete(v23);
  }

  sub_2213F9C80(&a17);

  _Unwind_Resume(a1);
}

void sub_2213FA620(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v28 = WeakRetained;
  if (v4 == 1)
  {
    v9 = objc_msgSend_rowUIDForRowIndex_(WeakRetained, v6, a2, v7, v8);
  }

  else
  {
    v9 = objc_msgSend_columnUIDForColumnIndex_(WeakRetained, v6, a2, v7, v8);
  }

  v11 = v9;
  v12 = v10;

  v17 = objc_msgSend_groupBy(*(a1 + 32), v13, v14, v15, v16);
  v29 = objc_msgSend_groupNodeForGroupUid_(v17, v18, v11, v12, v19);

  if (objc_msgSend_groupLevel(v29, v20, v21, v22, v23) < *(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_groupLevel(v29, v24, v25, v26, v27);
  }
}

void sub_2213FA9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  sub_2210BDEC0(&a23);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213FB4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2213FB64C(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  sub_22149C4FC(a1, v7);
  *a1 = &unk_2834A7DC8;
  *(a1 + 96) = v7;
  *(a1 + 104) = a3;
  *(a1 + 105) = a4;
  return a1;
}

uint64_t sub_2213FB6CC(uint64_t a1)
{
  *a1 = &unk_2834A7E10;
  sub_2210BDEC0(a1 + 48);
  v3 = (a1 + 24);
  sub_2213FB81C(&v3);
  return MEMORY[0x223DA1450](a1, 0x10A1C409560A3FCLL);
}

void *sub_2213FB748(void *a1)
{
  *a1 = &unk_2834A7E10;
  v2 = (a1 + 3);
  sub_2210BDEC0((a1 + 6));
  v4 = v2;
  sub_2213FB81C(&v4);
  return a1;
}

uint64_t sub_2213FB7A8(void *a1)
{
  *a1 = &unk_2834A7E10;
  v2 = (a1 + 3);
  sub_2210BDEC0((a1 + 6));
  v4 = v2;
  sub_2213FB81C(&v4);
  return MEMORY[0x223DA1450](a1, 0x10A1C403FF451B7);
}

void sub_2213FB81C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 96;
      v7 = v4 - 96;
      v8 = v4 - 96;
      do
      {
        v9 = *v8;
        v8 -= 96;
        (*v9)(v7);
        v6 -= 96;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2213FB8DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2210C2B00(a1, i + 2);
  }

  return a1;
}

void sub_2213FBDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSTCompletionToken;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2213FC284(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2213FC37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2213FC7C4(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3 == v7)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v7, v5, v6);
  }

  return isEqual;
}

void *sub_2213FD474(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = (v4 - *result) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      sub_22107C148();
    }

    v11 = v5 - *result;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      sub_2213FFF74(result, v12);
    }

    v13 = 32 * v9;
    v16[0] = 0;
    v16[1] = 32 * v9;
    v16[3] = 0;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v15 = *(a2 + 1);
    *(v13 + 24) = *(a2 + 6);
    *(v13 + 8) = v15;
    v16[2] = 32 * v9 + 32;
    sub_2213FFFBC(result, v16);
    v8 = v3[1];
    result = sub_221400084(v16);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    v7 = *(a2 + 1);
    *(v4 + 24) = *(a2 + 6);
    *(v4 + 8) = v7;
    v8 = v4 + 32;
  }

  v3[1] = v8;
  return result;
}

void sub_2213FD57C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213FD8F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = ((v6 - *a1) >> 5) + 1;
    if (v12 >> 59)
    {
      sub_22107C148();
    }

    v13 = a2 - v11;
    v14 = v7 - v11;
    v15 = v14 >> 4;
    if (v14 >> 4 <= v12)
    {
      v15 = ((v6 - *a1) >> 5) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 5;
    v21[4] = a1;
    if (v16)
    {
      sub_2213FFF74(a1, v16);
    }

    v21[0] = 0;
    v21[1] = (32 * v17);
    v21[2] = (32 * v17);
    v21[3] = 0;
    sub_22140018C(v21, a3);
    v4 = sub_221400310(a1, v21, v4);
    sub_221400084(v21);
  }

  else if (a2 == v6)
  {
    v18 = *a3;
    *a3 = 0;
    *v6 = v18;
    v19 = *(a3 + 8);
    *(v6 + 24) = *(a3 + 24);
    *(v6 + 8) = v19;
    a1[1] = v6 + 32;
  }

  else
  {
    sub_2214000D8(a1, a2, v6, a2 + 32);
    v8 = *a3;
    *a3 = 0;
    v9 = *v4;
    *v4 = v8;

    v10 = *(a3 + 8);
    *(v4 + 24) = *(a3 + 24);
    *(v4 + 8) = v10;
  }

  return v4;
}

void sub_2213FDA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2213FE164(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v12 = *a1;
    v13 = ((v7 - *a1) >> 5) + 1;
    if (v13 >> 59)
    {
      sub_22107C148();
    }

    v14 = a2 - v12;
    v15 = v6 - v12;
    v16 = v15 >> 4;
    if (v15 >> 4 <= v13)
    {
      v16 = ((v7 - *a1) >> 5) + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v18 = v14 >> 5;
    v21[4] = a1;
    if (v17)
    {
      sub_2213FFF74(a1, v17);
    }

    v21[0] = 0;
    v21[1] = (32 * v18);
    v21[2] = (32 * v18);
    v21[3] = 0;
    sub_221400444(v21, a3);
    v4 = sub_221400310(a1, v21, v4);
    sub_221400084(v21);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    v19 = *(a3 + 24);
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 24) = v19;
    a1[1] = v7 + 32;
  }

  else
  {
    sub_2214000D8(a1, a2, a1[1], a2 + 32);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    objc_storeStrong(v4, *(a3 + v9));
    v11 = *(v10 + 8);
    *(v4 + 24) = *(v10 + 24);
    *(v4 + 8) = v11;
  }

  return v4;
}

void sub_2213FE2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

void sub_2213FEA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213FEA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *a6 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_2213FEE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  a12 = &a16;
  sub_221400634(&a12);
  _Unwind_Resume(a1);
}

__n128 sub_2213FF890(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

id sub_2213FF8E0(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = (v5 - *a1) >> 5;
    if ((v9 + 1) >> 59)
    {
      sub_22107C148();
    }

    v10 = v4 - *a1;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v15[4] = a1;
    if (v12)
    {
      sub_2213FFF74(a1, v12);
    }

    v13 = 32 * v9;
    v15[0] = 0;
    v15[1] = v13;
    v15[3] = 0;
    *v13 = *a2;
    v14 = *(a2 + 8);
    *(v13 + 24) = *(a2 + 24);
    *(v13 + 8) = v14;
    v15[2] = v13 + 32;
    sub_2213FFFBC(a1, v15);
    v8 = a1[1];
    result = sub_221400084(v15);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = *(a2 + 24);
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 24) = v7;
    v8 = v5 + 32;
  }

  a1[1] = v8;
  return result;
}

void sub_2213FF9E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221400084(va);
  _Unwind_Resume(a1);
}

void sub_2213FF9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

void sub_2213FFC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  sub_2213FFC6C(v4, *(a1 + 32), a2, a3, *(a1 + 48));
  sub_2213FD474((v3 + 48), v4);
}

uint64_t sub_2213FFC6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = a2;
  objc_opt_class();
  *a1 = TSUDynamicCast();
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;

  return a1;
}

void sub_2213FFCEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_2213FFE64(a1);
    if (!(a4 >> 59))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2213FFEC8(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 5)
  {
    sub_2213FFF04(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 32);
        v18 -= 32;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = a2 + v11;
    sub_2213FFF04(&v20, a2, a2 + v11, v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        *v14 = *v12;
        v15 = *(v12 + 24);
        *(v14 + 8) = *(v12 + 8);
        *(v14 + 24) = v15;
        v12 += 32;
        v14 += 32;
        v13 += 32;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void sub_2213FFE64(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 4);
        v3 -= 32;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2213FFEC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2213FFF74(a1, a2);
  }

  sub_22107C148();
}

uint64_t sub_2213FFF04(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      v7 = *(v5 + 8);
      *(location + 6) = *(v5 + 24);
      *(location + 1) = v7;
      v5 += 32;
      location += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2213FFF74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_2213FFFBC(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 6);
      *(v8 + 8) = v10;
      v7 += 4;
      v8 += 32;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 4;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_221400084(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_2214000D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = (a2 + v4 - a4);
  v6 = v4;
  while (v5 < a3)
  {
    v7 = *v5;
    *v5 = 0;
    *v6 = v7;
    result = *(v5 + 1);
    *(v6 + 24) = *(v5 + 6);
    *(v6 + 8) = result;
    v5 += 4;
    v6 += 32;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v9 = v4 - 32;
    v10 = (a2 + v4 - 32 - a4);
    v11 = a4 - v4;
    do
    {
      v12 = *v10;
      *v10 = 0;
      v13 = *v9;
      *v9 = v12;

      result = *(v10 + 1);
      *(v9 + 24) = *(v10 + 6);
      *(v9 + 8) = result;
      v10 -= 4;
      v9 -= 32;
      v11 += 32;
    }

    while (v11);
  }

  return result;
}

__n128 sub_22140018C(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v4 - *a1) >> 4;
      }

      v13 = a1[4];
      v16 = a1[4];
      sub_2213FFF74(v13, v12);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = &v6[-4 * (((v7 >> 5) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        v10 = *v5;
        *v5 = v9;

        v11 = *(v6 + 1);
        *(v5 + 6) = *(v6 + 6);
        *(v5 + 1) = v11;
        v6 += 4;
        v5 += 4;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[4 * v8];
    a1[2] = v5;
  }

  v14 = *a2;
  *a2 = 0;
  *v5 = v14;
  result = *(a2 + 1);
  *(v5 + 6) = *(a2 + 6);
  *(v5 + 1) = result;
  a1[2] += 4;
  return result;
}

uint64_t sub_221400310(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      v10 = *v9;
      *v9 = 0;
      *v8 = v10;
      v11 = *(v9 + 1);
      *(v8 + 24) = *(v9 + 6);
      *(v8 + 8) = v11;
      v9 += 4;
      v8 += 32;
    }

    while (v9 != v7);
    v12 = a3;
    do
    {
      v13 = *v12;
      v12 += 4;
    }

    while (v12 != v7);
  }

  v14 = *a1;
  v15 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v16 = (v15 + v14 - a3);
  if (v14 != a3)
  {
    v17 = v14;
    v18 = (v15 + v14 - a3);
    do
    {
      v19 = *v17;
      *v17 = 0;
      *v18 = v19;
      v20 = *(v17 + 1);
      *(v18 + 6) = *(v17 + 6);
      *(v18 + 8) = v20;
      v17 += 4;
      v18 += 32;
    }

    while (v17 != a3);
    do
    {
      v21 = *v14;
      v14 += 4;
    }

    while (v14 != a3);
  }

  a2[1] = v16;
  v22 = *a1;
  *a1 = v16;
  *(a1 + 8) = v22;
  a2[1] = v22;
  v23 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v23;
  v24 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v24;
  *a2 = a2[1];
  return v6;
}

__n128 sub_221400444(uint64_t **a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v4 - *a1) >> 4;
      }

      v13 = a1[4];
      v16 = a1[4];
      sub_2213FFF74(v13, v12);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = &v6[-4 * (((v7 >> 5) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        v10 = *v5;
        *v5 = v9;

        v11 = *(v6 + 1);
        *(v5 + 6) = *(v6 + 6);
        *(v5 + 1) = v11;
        v6 += 4;
        v5 += 4;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[4 * v8];
    a1[2] = v5;
  }

  *v5 = *a2;
  v14 = *(a2 + 24);
  result = *(a2 + 8);
  *(v5 + 1) = result;
  *(v5 + 6) = v14;
  a1[2] += 4;
  return result;
}

void sub_221400634(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double sub_2214006B4(uint64_t *a1, unint64_t a2, uint64_t (**a3)(id *, uint64_t), uint64_t a4, char a5, __n128 a6)
{
  v8 = a2;
  v9 = a1;
  v73 = a2;
  v74 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v11 = (v8 - v9) >> 5;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return a6.n128_f64[0];
    }

    if (v11 == 2)
    {
      v58 = *a3;
      v73 = v8 - 4;
      if ((v58)(v8 - 4))
      {
        v60 = &v74;
        v61 = &v73;
        goto LABEL_99;
      }

      return a6.n128_f64[0];
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        sub_221400F1C(v9, v8, a3);
      }

      else
      {
        sub_221401064(v9, v8, a3);
      }

      return a6.n128_f64[0];
    }

    if (i == 1)
    {
      if (v9 != v8)
      {
        sub_2214018F4(v9, v8, v8, a3, a6);
      }

      return a6.n128_f64[0];
    }

    v12 = v11 >> 1;
    v13 = &v9[4 * (v11 >> 1)];
    v14 = (v8 - 4);
    if (v11 < 0x81)
    {
      v78 = v9;
      v79.n128_u64[0] = &v9[4 * (v11 >> 1)];
      v77 = v14;
      v19 = (*a3)(v9, v13);
      v20 = (*a3)(v14, v9);
      if (v19)
      {
        if (v20)
        {
          v22 = &v79;
          goto LABEL_37;
        }

        v35 = sub_221400D50(&v79, &v78);
        if ((*a3)(v77, v78, v35))
        {
          v22 = &v78;
LABEL_37:
          v26 = &v77;
LABEL_38:
          v21 = sub_221400D50(v22, v26);
        }
      }

      else if (v20)
      {
        v25 = sub_221400D50(&v78, &v77);
        if ((*a3)(v78, v79.n128_u64[0], v25))
        {
          v22 = &v79;
          v26 = &v78;
          goto LABEL_38;
        }
      }

      v9 = v74;
      if (a5)
      {
        goto LABEL_67;
      }

      goto LABEL_40;
    }

    v78 = &v9[4 * (v11 >> 1)];
    v79.n128_u64[0] = v9;
    v77 = v14;
    v15 = (*a3)(v13, v9);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v18 = &v79;
      }

      else
      {
        v27 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v27))
        {
          goto LABEL_29;
        }

        v18 = &v78;
      }

      v24 = &v77;
      goto LABEL_28;
    }

    if (v16)
    {
      v23 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v23))
      {
        v18 = &v79;
        v24 = &v78;
LABEL_28:
        v17 = sub_221400D50(v18, v24);
      }
    }

LABEL_29:
    v9 = v74;
    v28 = &v74[4 * v12];
    v78 = v28 - 4;
    v79.n128_u64[0] = (v74 + 4);
    v77 = (v73 - 8);
    v29 = (*a3)(v28 - 4, v17);
    v30 = (*a3)(v73 - 8, (v28 - 4));
    if (v29)
    {
      if (v30)
      {
        v32 = &v79;
      }

      else
      {
        v36 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v36))
        {
          goto LABEL_46;
        }

        v32 = &v78;
      }

      v34 = &v77;
      goto LABEL_45;
    }

    if (v30)
    {
      v33 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v33))
      {
        v32 = &v79;
        v34 = &v78;
LABEL_45:
        v31 = sub_221400D50(v32, v34);
      }
    }

LABEL_46:
    v78 = v28 + 4;
    v79.n128_u64[0] = (v74 + 8);
    v77 = (v73 - 12);
    v37 = (*a3)(v28 + 4, v31);
    v38 = (*a3)(v73 - 12, (v28 + 4));
    if (v37)
    {
      if (v38)
      {
        v40 = &v79;
      }

      else
      {
        v43 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v43))
        {
          goto LABEL_56;
        }

        v40 = &v78;
      }

      v42 = &v77;
      goto LABEL_55;
    }

    if (v38)
    {
      v41 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v41))
      {
        v40 = &v79;
        v42 = &v78;
LABEL_55:
        v39 = sub_221400D50(v40, v42);
      }
    }

LABEL_56:
    v78 = &v74[4 * v12];
    v79.n128_u64[0] = (v28 - 4);
    v77 = v28 + 4;
    v44 = (*a3)(v28, v28 - 4, v39);
    v45 = (*a3)(v28 + 4, v28);
    if (v44)
    {
      if (v45)
      {
        v46 = &v79;
      }

      else
      {
        v49 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v49))
        {
          goto LABEL_66;
        }

        v46 = &v78;
      }

      v48 = &v77;
      goto LABEL_65;
    }

    if (v45)
    {
      v47 = sub_221400D50(&v78, &v77);
      if ((*a3)(v78, v79.n128_u64[0], v47))
      {
        v46 = &v79;
        v48 = &v78;
LABEL_65:
        sub_221400D50(v46, v48);
      }
    }

LABEL_66:
    v50 = *v74;
    *v74 = 0;
    v79 = *(v9 + 1);
    v80 = *(v9 + 6);
    v51 = *v28;
    *v28 = 0;
    v52 = *v9;
    *v9 = v51;

    v53 = *(v28 + 1);
    *(v9 + 6) = *(v28 + 6);
    *(v9 + 1) = v53;
    v54 = *v28;
    *v28 = v50;

    v21 = v79;
    *(v28 + 1) = v79;
    *(v28 + 6) = v80;
    if (a5)
    {
LABEL_67:
      v8 = v73;
      goto LABEL_68;
    }

LABEL_40:
    v8 = v73;
    if (((*a3)(v9 - 4, v9, v21) & 1) == 0)
    {
      v9 = sub_221401188(v9, v73, a3);
      goto LABEL_76;
    }

LABEL_68:
    v55 = sub_221401360(v9, v8, a3);
    if ((v56 & 1) == 0)
    {
      goto LABEL_75;
    }

    v57 = sub_221401530(v9, v55, a3);
    if (!sub_221401530(v55 + 4, v8, a3))
    {
      if (v57)
      {
        v74 = v55 + 4;
        v9 = v55 + 4;
        continue;
      }

LABEL_75:
      sub_2214006B4(v9, v55, a3, -i, a5 & 1);
      v9 = v55 + 4;
LABEL_76:
      a5 = 0;
      v74 = v9;
      a4 = -i;
      goto LABEL_2;
    }

    if (v57)
    {
      return a6.n128_f64[0];
    }

    v73 = v55;
    v8 = v55;
  }

  if (v11 == 3)
  {
    v67 = v9 + 4;
    v73 = v8 - 4;
    v78 = v9 + 4;
    v79.n128_u64[0] = v9;
    v77 = (v8 - 4);
    v68 = (*a3)(v9 + 4, v9);
    v69 = (*a3)(v8 - 4, v67);
    if (v68)
    {
      if (v69)
      {
        v60 = &v79;
      }

      else
      {
        v71 = sub_221400D50(&v79, &v78);
        if (!(*a3)(v77, v78, v71))
        {
          return a6.n128_f64[0];
        }

        v60 = &v78;
      }

      v61 = &v77;
    }

    else
    {
      if (!v69)
      {
        return a6.n128_f64[0];
      }

      v70 = sub_221400D50(&v78, &v77);
      v66 = (*a3)(v78, v79.n128_u64[0], v70);
LABEL_93:
      if (!v66)
      {
        return a6.n128_f64[0];
      }

      v60 = &v79;
      v61 = &v78;
    }

LABEL_99:
    a6.n128_u64[0] = sub_221400D50(v60, v61).n128_u64[0];
    return a6.n128_f64[0];
  }

  if (v11 == 4)
  {
    v73 = v8 - 4;
    a6.n128_f64[0] = sub_221400DDC(v9, v9 + 4, v9 + 8, (v8 - 4), a3);
    return a6.n128_f64[0];
  }

  if (v11 != 5)
  {
    goto LABEL_10;
  }

  v73 = v8 - 4;
  v78 = v9 + 4;
  v79.n128_u64[0] = v9;
  v76 = v9 + 12;
  v77 = v9 + 8;
  v75 = v8 - 4;
  v62 = sub_221400DDC(v9, v9 + 4, v9 + 8, (v9 + 12), a3);
  if ((*a3)(v8 - 4, v9 + 12, v62))
  {
    v63 = sub_221400D50(&v76, &v75);
    if ((*a3)(v76, v9 + 8, v63))
    {
      v64 = sub_221400D50(&v77, &v76);
      if ((*a3)(v77, v9 + 4, v64))
      {
        v65 = sub_221400D50(&v78, &v77);
        v66 = (*a3)(v78, v9, v65);
        goto LABEL_93;
      }
    }
  }

  return a6.n128_f64[0];
}

__n128 sub_221400D50(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v2 = 0;
  v10 = *(v2 + 1);
  v11 = *(v2 + 6);
  v5 = *v3;
  *v3 = 0;
  v6 = *v2;
  *v2 = v5;

  v7 = *(v3 + 8);
  *(v2 + 6) = *(v3 + 24);
  *(v2 + 1) = v7;
  v8 = *v3;
  *v3 = v4;

  result = v10;
  *(v3 + 8) = v10;
  *(v3 + 24) = v11;
  return result;
}

double sub_221400DDC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v22 = a2;
  v23 = a1;
  v20 = a4;
  v21 = a3;
  v25 = a2;
  v26 = a1;
  v24 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v13 = &v26;
LABEL_9:
      v15 = &v24;
      goto LABEL_10;
    }

    v16 = sub_221400D50(&v26, &v25);
    if ((*a5)(v24, v25, v16))
    {
      v13 = &v25;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = sub_221400D50(&v25, &v24);
    if ((*a5)(v25, v26, v14))
    {
      v13 = &v26;
      v15 = &v25;
LABEL_10:
      v12 = sub_221400D50(v13, v15);
    }
  }

  if ((*a5)(a4, a3, v12))
  {
    v18 = sub_221400D50(&v21, &v20);
    if ((*a5)(v21, a2, v18))
    {
      v19 = sub_221400D50(&v22, &v21);
      if ((*a5)(v22, a1, v19))
      {
        *&result = sub_221400D50(&v23, &v22).n128_u64[0];
      }
    }
  }

  return result;
}

void sub_221400F1C(void **a1, void **a2, uint64_t (**a3)(id *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          v10 = *v9;
          *v9 = 0;
          v18 = v10;
          v19 = *(v8 + 5);
          v20 = *(v8 + 14);
          v11 = v7;
          while (1)
          {
            v12 = a1 + v11;
            v13 = *(a1 + v11);
            *v12 = 0;
            v14 = *(a1 + v11 + 32);
            *(v12 + 4) = v13;

            *(v12 + 40) = *(v12 + 8);
            *(v12 + 14) = *(v12 + 6);
            if (!v11)
            {
              break;
            }

            v11 -= 32;
            if (((*a3)(&v18, (v12 - 32)) & 1) == 0)
            {
              v15 = (a1 + v11 + 32);
              goto LABEL_10;
            }
          }

          v15 = a1;
LABEL_10:
          v16 = v18;
          v18 = 0;
          v17 = *v15;
          *v15 = v16;

          *(v12 + 8) = v19;
          *(v12 + 6) = v20;
        }

        v5 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }
}

void sub_221401064(void **a1, void **a2, uint64_t (**a3)(id *, void **))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = a1 - 4;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          v9 = *v8;
          *v8 = 0;
          v16 = v9;
          v17 = *(v4 + 5);
          v18 = *(v4 + 14);
          v10 = v7;
          do
          {
            v11 = v10[4];
            v10[4] = 0;
            v12 = v10[8];
            v10[8] = v11;

            *(v10 + 9) = *(v10 + 5);
            *(v10 + 22) = *(v10 + 14);
            v13 = (*a3)(&v16, v10);
            v10 -= 4;
          }

          while ((v13 & 1) != 0);
          v14 = v16;
          v16 = 0;
          v15 = v10[8];
          v10[8] = v14;

          *(v10 + 9) = v17;
          *(v10 + 22) = v18;
        }

        v5 = v8 + 4;
        v7 += 4;
        v4 = v8;
      }

      while (v8 + 4 != a2);
    }
  }
}

uint64_t *sub_221401188(uint64_t a1, unint64_t a2, unsigned int (**a3)(id *, __n128))
{
  v22 = a2;
  v23 = a1;
  v5 = *a1;
  *a1 = 0;
  v19 = v5;
  v20 = *(a1 + 8);
  v21 = *(a1 + 24);
  if ((*a3)(&v19, a2 - 32))
  {
    v6 = a1;
    do
    {
      v6 += 4;
      v23 = v6;
    }

    while (((*a3)(&v19, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 32);
    do
    {
      v6 = v7;
      v23 = v7;
      if (v7 >= v22)
      {
        break;
      }

      v8 = (*a3)(&v19, v7);
      v7 = v6 + 4;
    }

    while (!v8);
  }

  v9 = v22;
  if (v6 < v22)
  {
    do
    {
      v9 -= 32;
      v22 = v9;
    }

    while (((*a3)(&v19, v9) & 1) != 0);
    v6 = v23;
  }

  if (v6 < v9)
  {
    do
    {
      v10 = sub_221400D50(&v23, &v22);
      do
      {
        v23 += 4;
      }

      while (!(*a3)(&v19, v10));
      do
      {
        v22 -= 32;
      }

      while (((*a3)(&v19) & 1) != 0);
      v6 = v23;
    }

    while (v23 < v22);
  }

  if (v6 - 4 != a1)
  {
    v11 = *(v6 - 4);
    *(v6 - 4) = 0;
    v12 = *a1;
    *a1 = v11;

    v13 = *(v6 - 3);
    *(a1 + 24) = *(v6 - 2);
    *(a1 + 8) = v13;
  }

  v14 = v19;
  v19 = 0;
  v15 = *(v6 - 4);
  *(v6 - 4) = v14;

  v16 = v20;
  *(v6 - 2) = v21;
  *(v6 - 3) = v16;
  v17 = v23;

  return v17;
}

uint64_t *sub_221401360(uint64_t a1, unint64_t a2, uint64_t (**a3)(void))
{
  v5 = 0;
  v24 = a2;
  v6 = *a1;
  *a1 = 0;
  v21 = v6;
  v22 = *(a1 + 8);
  v23 = *(a1 + 24);
  do
  {
    v25 = (a1 + v5 + 32);
    v5 += 32;
  }

  while (((*a3)() & 1) != 0);
  v7 = v24;
  if (v5 == 32)
  {
    v10 = (a1 + 32);
    do
    {
      if (v10 >= v7)
      {
        break;
      }

      v11 = *a3;
      v7 -= 32;
      v24 = v7;
    }

    while (((v11)(v7, &v21) & 1) == 0);
  }

  else
  {
    v8 = v24 - 32;
    do
    {
      v24 = v8;
      v9 = (*a3)(v8, &v21);
      v8 -= 32;
    }

    while (!v9);
    v10 = v25;
  }

  v12 = v10;
  if (v10 < v24)
  {
    do
    {
      v13 = sub_221400D50(&v25, &v24);
      do
      {
        v25 += 4;
      }

      while (((*a3)(v13) & 1) != 0);
      do
      {
        v24 -= 32;
      }

      while (!(*a3)());
      v12 = v25;
    }

    while (v25 < v24);
  }

  if (v12 - 4 != a1)
  {
    v14 = *(v12 - 4);
    *(v12 - 4) = 0;
    v15 = *a1;
    *a1 = v14;

    v16 = *(v12 - 3);
    *(a1 + 24) = *(v12 - 2);
    *(a1 + 8) = v16;
  }

  v17 = v21;
  v21 = 0;
  v18 = *(v12 - 4);
  *(v12 - 4) = v17;

  v19 = v22;
  *(v12 - 2) = v23;
  *(v12 - 3) = v19;

  return v12 - 4;
}

uint64_t sub_221401530(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v44 = a2;
  v45 = a1;
  v6 = (a2 - a1) >> 5;
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v44 = a2 - 4;
      if ((v7)())
      {
        v8 = &v45;
        v9 = &v44;
LABEL_30:
        sub_221400D50(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v20 = a1 + 8;
    v41 = a1;
    v49 = a1 + 4;
    v48 = a1 + 8;
    v21 = (*a3)(a1 + 4, a1);
    v22 = (*a3)(a1 + 8, a1 + 4);
    if (v21)
    {
      if (v22)
      {
        v24 = &v41;
      }

      else
      {
        v29 = sub_221400D50(&v41, &v49);
        if (!(*a3)(v48, v49, v29))
        {
          goto LABEL_35;
        }

        v24 = &v49;
      }

      v27 = &v48;
    }

    else
    {
      if (!v22 || (v26 = sub_221400D50(&v49, &v48), !(*a3)(v49, v41, v26)))
      {
LABEL_35:
        v30 = a1 + 12;
        if (v30 != a2)
        {
          v31 = 0;
          while (1)
          {
            if ((*a3)(v30, v20, v23))
            {
              v32 = *v30;
              *v30 = 0;
              v41 = v32;
              v42 = *(v30 + 1);
              v43 = *(v30 + 6);
              do
              {
                v33 = v20;
                v34 = *v20;
                *v20 = 0;
                v35 = v20[4];
                v20[4] = v34;

                *(v20 + 5) = *(v20 + 1);
                *(v20 + 14) = *(v20 + 6);
                if (v20 == v45)
                {
                  break;
                }

                v20 -= 4;
              }

              while (((*a3)(&v41, v33 - 4) & 1) != 0);
              v36 = v41;
              v41 = 0;
              v37 = *v33;
              *v33 = v36;

              v38 = v42;
              *(v33 + 6) = v43;
              *(v33 + 1) = v38;
              if (++v31 == 8)
              {
                v39 = v30 + 4 == v44;

                return v39;
              }
            }

            v20 = v30;
            v30 += 4;
            if (v30 == v44)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v24 = &v41;
      v27 = &v49;
    }

    v23 = sub_221400D50(v24, v27);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      sub_221400DDC(a1, a1 + 4, a1 + 8, (a2 - 4), a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v41 = a1;
    v49 = a1 + 4;
    v10 = a2 - 4;
    v47 = a1 + 12;
    v48 = a1 + 8;
    v46 = a2 - 4;
    v11 = sub_221400DDC(a1, a1 + 4, a1 + 8, (a1 + 12), a3);
    if (!(*a3)(v10, a1 + 12, v11))
    {
      return 1;
    }

    v12 = sub_221400D50(&v47, &v46);
    if (!(*a3)(v47, a1 + 8, v12))
    {
      return 1;
    }

    v13 = sub_221400D50(&v48, &v47);
    if (!(*a3)(v48, a1 + 4, v13))
    {
      return 1;
    }

    v14 = sub_221400D50(&v49, &v48);
    v15 = (*a3)(v49, a1, v14);
    goto LABEL_22;
  }

  v16 = a1 + 4;
  v17 = a2 - 4;
  v41 = a1;
  v49 = a1 + 4;
  v48 = a2 - 4;
  v18 = (*a3)(a1 + 4, a1);
  v19 = (*a3)(v17, v16);
  if (v18)
  {
    if (v19)
    {
      v8 = &v41;
    }

    else
    {
      v28 = sub_221400D50(&v41, &v49);
      if (!(*a3)(v48, v49, v28))
      {
        return 1;
      }

      v8 = &v49;
    }

    v9 = &v48;
    goto LABEL_30;
  }

  if (v19)
  {
    v25 = sub_221400D50(&v49, &v48);
    v15 = (*a3)(v49, v41, v25);
LABEL_22:
    if (v15)
    {
      v8 = &v41;
      v9 = &v49;
      goto LABEL_30;
    }
  }

  return 1;
}

uint64_t *sub_2214018F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int (**a4)(uint64_t *, uint64_t), __n128 a5)
{
  v26 = a1;
  if (a1 != a2)
  {
    v8 = a1;
    v9 = (a2 - a1) >> 5;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[4 * v10];
      do
      {
        a5 = sub_221401AE0(v8, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v25 = a2;
    v13 = a2;
    if (a2 != a3)
    {
      do
      {
        if ((*a4)(v13, v26, a5))
        {
          sub_221400D50(&v25, &v26);
          a5 = sub_221401AE0(v26, a4, v9, v26);
        }

        v13 = v25 + 4;
        v25 = v13;
      }

      while (v13 != a3);
      v8 = v26;
      v9 = (a2 - v26) >> 5;
    }

    if (v9 >= 2)
    {
      v14 = a2 - 4;
      do
      {
        if (v9 >= 2)
        {
          v15 = *v8;
          *v8 = 0;
          v27 = *(v8 + 1);
          v28 = *(v8 + 6);
          v16 = sub_221401C84(v8, a4, v9);
          v17 = v16;
          if (v14 == v16)
          {
            v22 = *v16;
            *v16 = v15;

            *(v17 + 1) = v27;
            *(v17 + 6) = v28;
          }

          else
          {
            v18 = *v14;
            *v14 = 0;
            v19 = *v16;
            *v16 = v18;

            v20 = *(v14 + 1);
            *(v17 + 6) = *(v14 + 6);
            *(v17 + 1) = v20;
            v21 = *v14;
            *v14 = v15;

            *(v14 + 1) = v27;
            *(v14 + 6) = v28;
            sub_221401D4C(v8, (v17 + 4), a4, ((v17 + 4) - v8) >> 5);
          }
        }

        v14 -= 4;
      }

      while (v9-- > 2);
      return v25;
    }

    return v13;
  }

  return a3;
}

__n128 sub_221401AE0(uint64_t a1, unsigned int (**a2)(uint64_t *, uint64_t), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = (a1 + 32 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 4)))
      {
        v12 += 4;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v15 = *v5;
        *v5 = 0;
        v24 = v15;
        v25 = *(v5 + 1);
        v26 = *(v5 + 6);
        do
        {
          v16 = v12;
          v17 = *v12;
          *v12 = 0;
          v18 = *v5;
          *v5 = v17;

          v19 = *(v12 + 1);
          *(v5 + 6) = *(v12 + 6);
          *(v5 + 1) = v19;
          if (v7 < v11)
          {
            break;
          }

          v20 = (2 * v11) | 1;
          v12 = (a1 + 32 * v20);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v20;
          }

          else if ((*a2)((a1 + 32 * v20), (v12 + 4)))
          {
            v12 += 4;
          }

          else
          {
            v11 = v20;
          }

          v5 = v16;
        }

        while (!(*a2)(v12, &v24));
        v21 = v24;
        v24 = 0;
        v22 = *v16;
        *v16 = v21;

        v23 = v25;
        *(v16 + 6) = v26;
        *(v16 + 1) = v23;
      }
    }
  }

  return result;
}

uint64_t *sub_221401C84(uint64_t *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[4 * v6];
    v9 = v8 + 4;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 8;
      if ((*a2)((v8 + 4), (v8 + 8)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *v9 = 0;
    v14 = *a1;
    *a1 = v13;

    v15 = *(v9 + 1);
    *(a1 + 6) = *(v9 + 6);
    *(a1 + 1) = v15;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void sub_221401D4C(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t *, id *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 32 * (v4 >> 1));
    v10 = (a2 - 32);
    if ((*a3)(v9, (a2 - 32)))
    {
      v11 = *(a2 - 32);
      *(a2 - 32) = 0;
      v18 = v11;
      v19 = *(a2 - 24);
      v20 = *(a2 - 8);
      do
      {
        v12 = v9;
        v13 = *v9;
        *v9 = 0;
        v14 = *v10;
        *v10 = v13;

        v15 = *(v9 + 1);
        *(v10 + 6) = *(v9 + 6);
        *(v10 + 1) = v15;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 32 * v8);
        v10 = v12;
      }

      while (((*a3)(v9, &v18) & 1) != 0);
      v16 = v18;
      v18 = 0;
      v17 = *v12;
      *v12 = v16;

      *(v12 + 1) = v19;
      *(v12 + 6) = v20;
    }
  }
}

uint64_t sub_2214021C4(uint64_t a1, uint64_t a2)
{
  if (TSUDecimal::operator<())
  {
    return 0xFFFFFFFFLL;
  }

  if (!TSUDecimal::operator<=())
  {
    return 1;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = v5 >= v6;
  v8 = v5 > v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_221402228(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2)
  {
    sub_221402280(a1, a2);
  }

  return a1;
}

void sub_221402264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_221402280(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_22140318C(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_221402320(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_22107C148();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_22140318C(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
  ++*(a1 + 32);
}

void sub_221402404(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  __p[10] = *MEMORY[0x277D85DE8];
  v7 = a1[4];
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCETaggedDecimal TSCETaggedDecimalList::findPivot()", a3, a4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 69, 0, "We shouldn't be finding the pivot of a 0 length array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v7 = a1[4];
  }

  if (v7 == 1)
  {
    v19 = (*a1 + 32 * a1[3]);
    v20 = v19[1];
    *a5 = *v19;
    a5[1] = v20;
  }

  else
  {
    sub_221402228(__p, v7 / 5 + 1);
    v21 = 0;
    v22 = 0;
    for (i = 0; ; i += 5)
    {
      v24 = a1[4];
      if (i + 5 >= v24)
      {
        break;
      }

      v25 = v21;
      for (j = 1; j != 5; ++j)
      {
        v27 = i + j;
        if (i + j > i)
        {
          v28 = v25;
          do
          {
            v29 = *a1 + 32 * a1[3] + v28;
            if (sub_2214021C4(v29, v29 + 32) < 1)
            {
              break;
            }

            --v27;
            v30 = (*a1 + 32 * a1[3] + v28);
            v31 = *v30;
            v32 = *(v30 + 2);
            *v30 = v30[2];
            *(v30 + 2) = *(v30 + 6);
            v30[2] = v31;
            *(v30 + 6) = v32;
            v28 -= 32;
          }

          while (v27 > i);
        }

        v25 += 32;
      }

      v22 -= 5;
      v21 += 160;
      sub_221402320(__p, (*a1 + 32 * a1[3] + 32 * i + 64));
    }

    v33 = v24 - i;
    if (v24 != i)
    {
      if (v33 >= 2)
      {
        v34 = v24 + v22;
        v35 = 1;
        do
        {
          v36 = v35 + i;
          if (v35 + i > i)
          {
            v37 = v21;
            do
            {
              v38 = *a1 + 32 * a1[3] + v37;
              if (sub_2214021C4(v38, v38 + 32) < 1)
              {
                break;
              }

              --v36;
              v39 = (*a1 + 32 * a1[3] + v37);
              v40 = *v39;
              v41 = *(v39 + 2);
              *v39 = v39[2];
              *(v39 + 2) = *(v39 + 6);
              v39[2] = v40;
              *(v39 + 6) = v41;
              v37 -= 32;
            }

            while (v36 > i);
          }

          ++v35;
          v21 += 32;
        }

        while (v35 != v34);
      }

      sub_221402320(__p, (*a1 + 32 * a1[3] + ((16 * v33 - 16) & 0xFFFFFFFFFFFFFFE0)));
    }

    sub_221402404(__p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

__n128 sub_221402720(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[4];
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "size_t TSCETaggedDecimalList::partitionTaggedDecimals(const TSCETaggedDecimal &)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 116, 0, "_size == 0?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v7 = a1[4];
  }

  if (v7 == 1)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = 0;
    v22 = -1;
    do
    {
      v23 = sub_2214021C4(*a1 + 32 * a1[3] + 32 * v21, a2);
      if (v23)
      {
        if (v23 == -1)
        {
          ++v22;
          v24 = *a1 + 32 * a1[3];
          v25 = v24 + 32 * v22;
          v26 = v24 + 32 * v21;
          v27 = *v26;
          v28 = *(v26 + 16);
          *v26 = *v25;
          *(v26 + 16) = *(v25 + 16);
          *v25 = v27;
          *(v25 + 16) = v28;
        }
      }

      else
      {
        v29 = *a1 + 32 * a1[3];
        v30 = v29 + 32 * v21;
        v31 = v29 + 32 * a1[4];
        v32 = *(v31 - 32);
        v33 = *(v31 - 16);
        *(v31 - 32) = *v30;
        *(v31 - 16) = *(v30 + 16);
        *v30 = v32;
        *(v30 + 16) = v33;
        --v21;
      }

      ++v21;
      v20 = a1[4] - 1;
    }

    while (v21 < v20);
    v19 = v22 + 1;
  }

  v34 = *a1 + 32 * a1[3];
  v35 = (v34 + 32 * v19);
  v36 = (v34 + 32 * v20);
  result = *v36;
  v38 = v36[1].n128_u64[0];
  *v36 = *v35;
  v36[1].n128_u64[0] = v35[1].n128_u64[0];
  *v35 = result;
  v35[1].n128_u64[0] = v38;
  return result;
}

void sub_221402934(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a1[3];
  v9 = a1[4];
  a1[3] = v8 + a2;
  a1[4] = a3;
  TSUDecimal::operator=();
  *&v31 = 0;
  if (a1[4] == 1)
  {
    v13 = *a1 + 32 * a1[3];
    v14 = *(v13 + 16);
    v30 = *v13;
    *&v31 = v14;
LABEL_9:
    a1[3] = v8;
    a1[4] = v9;
    v21 = v30;
    v22 = v31;
    goto LABEL_10;
  }

  sub_221402404(a1, v10, v11, v12, v29);
  v19 = sub_221402720(a1, v29, v15, v16, v17);
  if (v18 != a4)
  {
    v23 = v18;
    if (v18 > a4)
    {
      v26 = a1;
      v24 = 0;
      v25 = a4;
    }

    else
    {
      v24 = v18 + 1;
      v23 = a1[4] + ~v18;
      v25 = ~v18 + a4;
      v26 = a1;
    }

    sub_221402934(&v27, v26, v24, v23, v25, v19);
    v30 = v27;
    *&v31 = v28;
    goto LABEL_9;
  }

  v20 = (*a1 + 32 * a1[3] + 32 * a4);
  v21 = *v20;
  v22 = v20[1];
LABEL_10:
  *a5 = v21;
  a5[1] = v22;
}

void sub_221403030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_2210BDEC0(&a31);

  _Unwind_Resume(a1);
}

void sub_22140318C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2214031D4(void *a1, TSUDecimal *this)
{
  v3 = TSUDecimal::hash(this);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    do
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (TSUDecimal::operator==())
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v4)
          {
            v11 %= *&v4;
          }
        }

        else
        {
          v11 &= *&v4 - 1;
        }

        if (v11 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void *sub_2214032D4(void *a1, TSUDecimal *this)
{
  v3 = TSUDecimal::hash(this);
  v4 = v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v5)
    {
      v8 = v3 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if ((TSUDecimal::operator==() & 1) == 0)
  {
    goto LABEL_17;
  }

  return v10;
}

void *sub_221403524(void *a1, TSUDecimal *this)
{
  v3 = TSUDecimal::hash(this);
  v4 = v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v5)
    {
      v8 = v3 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if ((TSUDecimal::operator==() & 1) == 0)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_221403DE8(void *a1, uint64_t a2)
{
  v3 = a1;
  *(v3 + 2) = a2;
  v16 = v3;
  WeakRetained = objc_loadWeakRetained(v3 + 8);
  v9 = objc_msgSend_layoutEngine(WeakRetained, v5, v6, v7, v8);
  v16[4] = objc_msgSend_p_stageCountForProvider_withAnimationKind_(TSTAnimation, v10, v9, a2, v11);

  *(v16 + 13) = 0;
  v12 = v16 + 52;
  *(v16 + 49) = 0;
  v13 = v16 + 49;
  v16[5] = 0;
  *(v16 + 48) = v16[4] < 2;
  v16[3] = 0;
  v16[2] = 0;
  *(v16 + 14) = 0x10000;
  v14 = v16 + 50;
  v15 = v16 + 51;
  switch(a2)
  {
    case 2:
      goto LABEL_17;
    case 3:
      *v13 = 1;
      goto LABEL_12;
    case 4:
      v13 = v16 + 50;
      goto LABEL_17;
    case 5:
      *v14 = 1;
      goto LABEL_12;
    case 6:
      v13 = v16 + 51;
      goto LABEL_17;
    case 7:
      *v15 = 1;
      goto LABEL_12;
    case 8:
      *v13 = 1;
      goto LABEL_16;
    case 9:
      *v13 = 1;
      *v12 = 1;
      goto LABEL_12;
    case 10:
      *v14 = 1;
      goto LABEL_16;
    case 11:
      *v14 = 1;
      goto LABEL_7;
    case 12:
      *v15 = 1;
LABEL_16:
      v13 = v16 + 52;
      goto LABEL_17;
    case 13:
      *v15 = 1;
LABEL_7:
      *v12 = 1;
LABEL_12:
      v13 = v16 + 55;
      goto LABEL_17;
    case 14:
      v13 = v16 + 53;
LABEL_17:
      *v13 = 1;
      break;
    default:
      break;
  }
}

void sub_2214052CC(void *a1, void *a2, uint64_t a3)
{
  v74 = a1;
  v5 = a2;
  v77 = objc_msgSend_numberOfColumns(v5, v6, v7, v8, v9);
  v16 = objc_msgSend_numberOfRows(v5, v10, v11, v12, v13);
  if (!v77)
  {
    v71 = 0;
    v29 = 0x7FFF;
    v73 = 0x7FFFFFFF;
    goto LABEL_30;
  }

  v17 = 0;
  v71 = 0;
  v18 = 0;
  v19 = 0x7FFFLL;
  v73 = 0x7FFFFFFF;
  do
  {
    if (!v16)
    {
      v28 = v18;
      v18 = v19;
      goto LABEL_27;
    }

    v75 = v19;
    v20 = 0;
    v21 = v18 << 32;
    while (1)
    {
      v22 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v14, v21 | v20, 0x100000001, v15);
      v23 = v22 & 0xFFFF00000000;
      v24 = v22 == 0x7FFFFFFF || v23 == 0x7FFF00000000;
      v25 = v24 || HIDWORD(v14) == 0;
      if (v25 || v14 == 0)
      {
        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v14, v21, (v16 << 32) | 1, v15);
      }

      else
      {
        if (v20 != v22 || v23 != v21)
        {
          goto LABEL_20;
        }

        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v14, v22, v14, v15);
      }

      if ((isEntireCellRangeHidden & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (++v20 >= v16)
      {
        v28 = v18;
        v18 = v75;
        goto LABEL_27;
      }
    }

    if (v17 != a3)
    {
      ++v17;
      v20 = 999999;
      goto LABEL_20;
    }

    v73 = 0;
    v28 = 999;
    v17 = a3;
    v71 = (v16 << 32) | 1;
LABEL_27:
    v29 = v18;
    v19 = v18;
    v18 = (v28 + 1);
  }

  while (v77 > (v28 + 1));
LABEL_30:
  v30 = 0x7FFF7FFFFFFFLL;
  if (v16)
  {
    v31 = 0;
    v32 = v29;
    v33 = 0;
    v34 = v29;
    v35 = v29 << 32;
    v36 = HIDWORD(v71) == 0;
    if (!v71)
    {
      v36 = 1;
    }

    v78 = v36;
    v37 = v73 + HIDWORD(v71) - 1;
    if (v73 == 0x7FFFFFFF)
    {
      v37 = 0x7FFFFFFF;
    }

    v69 = v37;
    v70 = v32;
    v38 = v34 == 0x7FFF;
    v39 = v34 != 0x7FFF && v73 == 0x7FFFFFFF;
    v76 = v39;
    v40 = v38 && v73 != 0x7FFFFFFF;
    v68 = v40;
    if (v38 || v71 == 0)
    {
      v42 = 0x7FFF;
    }

    else
    {
      v42 = v71 + v32 - 1;
    }

    v43 = v16;
    v72 = v42;
    v44 = 0x7FFF7FFFFFFFLL;
    while (1)
    {
      v45 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v14, v35, 0x100000001, v15);
      v46 = v14;
      if (v45 == 0x7FFFFFFF || (v45 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v14) == 0 || v14 == 0)
      {
        v50 = v44 & 0xFFFF00000000;
        if (v31)
        {
          v51 = HIDWORD(v31) == 0;
        }

        else
        {
          v51 = 1;
        }

        if (v51)
        {
          v52 = v30;
        }

        else
        {
          v52 = v35;
        }

        if (v51)
        {
          v53 = v33;
        }

        else
        {
          v53 = 0x100000001;
        }

        if (v51)
        {
          v54 = v35;
        }

        else
        {
          v54 = v44;
        }

        if (v51)
        {
          v55 = 0x100000001;
        }

        else
        {
          v55 = v31;
        }

        v56 = v50 == 0x7FFF00000000;
        if (v50 == 0x7FFF00000000)
        {
          v57 = v30;
        }

        else
        {
          v57 = v52;
        }

        if (v56)
        {
          v58 = v33;
        }

        else
        {
          v58 = v53;
        }

        if (v56)
        {
          v59 = v35;
        }

        else
        {
          v59 = v54;
        }

        if (v56)
        {
          v60 = 0x100000001;
        }

        else
        {
          v60 = v55;
        }

        v61 = v44 == 0x7FFFFFFF;
        if (v44 == 0x7FFFFFFF)
        {
          v44 = v35;
        }

        else
        {
          v30 = v57;
          v33 = v58;
          v44 = v59;
        }

        if (v61)
        {
          v31 = 0x100000001;
        }

        else
        {
          v31 = v60;
        }

        goto LABEL_92;
      }

      v62 = sub_2211C1FC4(v44, v31, v30, v33);
      objc_msgSend_addCellRange_(v74, v63, v62, v63, v64);
      if (v78)
      {
        v33 = 0;
        v31 = 0;
        v30 = 0x7FFF7FFFFFFFLL;
        v44 = 0x7FFF7FFFFFFFLL;
      }

      else
      {
        if (v76)
        {
          goto LABEL_97;
        }

        v33 = 0;
        if (v73 > v45)
        {
LABEL_104:
          v30 = 0x7FFF7FFFFFFFLL;
          v44 = 0x7FFF7FFFFFFFLL;
          v31 = 0;
          goto LABEL_92;
        }

        v30 = 0x7FFF7FFFFFFFLL;
        v44 = 0x7FFF7FFFFFFFLL;
        v31 = 0;
        if (v69 >= v45)
        {
          if (!v68)
          {
LABEL_97:
            v33 = 0;
            if (v70 > WORD2(v45))
            {
              goto LABEL_104;
            }

            v30 = 0x7FFF7FFFFFFFLL;
            v44 = 0x7FFF7FFFFFFFLL;
            v31 = 0;
            if (v72 < WORD2(v45))
            {
              goto LABEL_92;
            }
          }

          objc_msgSend_addCellRange_(v74, v14, v45, v46, v15);
          v33 = 0;
          v31 = 0;
        }
      }

LABEL_92:
      ++v35;
      if (!--v43)
      {
        goto LABEL_106;
      }
    }
  }

  v33 = 0;
  v31 = 0;
  v44 = 0x7FFF7FFFFFFFLL;
LABEL_106:
  v65 = sub_2211C1FC4(v44, v31, v30, v33);
  objc_msgSend_addCellRange_(v74, v66, v65, v66, v67);
}

void sub_221405714(void *a1, void *a2, uint64_t a3)
{
  v54 = a1;
  v5 = a2;
  v10 = objc_msgSend_numberOfColumns(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_numberOfRows(v5, v11, v12, v13, v14);
  if (!v15)
  {
    v53 = 0x7FFFFFFF;
    goto LABEL_32;
  }

  v18 = 0;
  v19 = 0;
  v53 = 0x7FFFFFFF;
  v55 = v15;
  do
  {
    if (!v10)
    {
      v26 = v19;
      goto LABEL_29;
    }

    v20 = 0;
    while (1)
    {
      v21 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v16, v19 | (v20 << 32), 0x100000001, v17);
      v22 = v21 == 0x7FFFFFFF || (v21 & 0xFFFF00000000) == 0x7FFF00000000;
      v23 = v22 || HIDWORD(v16) == 0;
      if (v23 || v16 == 0)
      {
        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v16, v19, v10 | 0x100000000, v17);
      }

      else
      {
        if (v19 != 0x7FFFFFFF && v19 != v21 || (v10 - 1) < WORD2(v21))
        {
          goto LABEL_20;
        }

        isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v5, v16, v21, v16, v17);
      }

      if ((isEntireCellRangeHidden & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (v10 <= ++v20)
      {
        v26 = v19;
        goto LABEL_28;
      }
    }

    if (v18 != a3)
    {
      ++v18;
      v20 = 999;
      goto LABEL_20;
    }

    v18 = a3;
    v26 = 999999;
    v53 = v19;
LABEL_28:
    v15 = v55;
LABEL_29:
    v19 = v26 + 1;
  }

  while (v26 + 1 < v15);
LABEL_32:
  v27 = 0x7FFF7FFFFFFFLL;
  if (v10)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v10 << 32;
    v32 = 0x7FFF7FFFFFFFLL;
    v56 = v31;
    do
    {
      v33 = objc_msgSend_expandCellRangeToCoverMergedCells_(v5, v16, v53 + v28, 0x100000001, v17);
      if (v33 == 0x7FFFFFFF || (v33 & 0xFFFF00000000) == 0x7FFF00000000 || (v34 = v16, !HIDWORD(v16)) || !v16)
      {
        v38 = v32 & 0xFFFF00000000;
        if (v29)
        {
          v39 = HIDWORD(v29) == 0;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          v40 = v27;
        }

        else
        {
          v40 = v53 + v28;
        }

        if (v39)
        {
          v41 = v30;
        }

        else
        {
          v41 = 0x100000001;
        }

        if (v39)
        {
          v42 = v53 + v28;
        }

        else
        {
          v42 = v32;
        }

        if (v39)
        {
          v43 = 0x100000001;
        }

        else
        {
          v43 = v29;
        }

        v44 = v38 == 0x7FFF00000000;
        if (v38 == 0x7FFF00000000)
        {
          v45 = v27;
        }

        else
        {
          v45 = v40;
        }

        if (v44)
        {
          v46 = v30;
        }

        else
        {
          v46 = v41;
        }

        if (v44)
        {
          v47 = v53 + v28;
        }

        else
        {
          v47 = v42;
        }

        if (v44)
        {
          v48 = 0x100000001;
        }

        else
        {
          v48 = v43;
        }

        v49 = v32 == 0x7FFFFFFF;
        if (v32 == 0x7FFFFFFF)
        {
          v32 = v53 + v28;
        }

        else
        {
          v27 = v45;
          v30 = v46;
          v32 = v47;
        }

        if (v49)
        {
          v29 = 0x100000001;
        }

        else
        {
          v29 = v48;
        }
      }

      else
      {
        v35 = sub_2211C1FC4(v32, v29, v27, v30);
        objc_msgSend_addCellRange_(v54, v36, v35, v36, v37);
        v30 = 0;
        v27 = 0x7FFF7FFFFFFFLL;
        v32 = 0x7FFF7FFFFFFFLL;
        v29 = 0;
        if (v53 == v33 && v28 == (v33 & 0xFFFF00000000))
        {
          objc_msgSend_addCellRange_(v54, v16, v33, v34, v17);
          v30 = 0;
          v29 = 0;
        }
      }

      v28 += 0x100000000;
    }

    while (v56 != v28);
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v32 = 0x7FFF7FFFFFFFLL;
  }

  v50 = sub_2211C1FC4(v32, v29, v27, v30);
  objc_msgSend_addCellRange_(v54, v51, v50, v51, v52);
}

void sub_221405A60(void *a1, void *a2, uint64_t a3)
{
  v26 = a1;
  v4 = a2;
  v28 = objc_msgSend_numberOfColumns(v4, v5, v6, v7, v8);
  v13 = objc_msgSend_numberOfRows(v4, v9, v10, v11, v12);
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v27 = v13;
    while (!v28)
    {
LABEL_26:
      if (++v16 == v27)
      {
        goto LABEL_29;
      }
    }

    v18 = 0;
    while (1)
    {
      v19 = objc_msgSend_expandCellRangeToCoverMergedCells_(v4, v14, v16 + v18, 0x100000001, v15, v26);
      v20 = v19;
      v21 = v14;
      v22 = v19 & 0xFFFF00000000;
      if (v19 == 0x7FFFFFFFLL || v22 == 0x7FFF00000000 || HIDWORD(v14) == 0 || v14 == 0)
      {
        if (objc_msgSend_isEntireCellRangeHidden_(v4, v14, v16 + v18, 0x100000001, v15))
        {
          goto LABEL_20;
        }

        v20 = v16 + v18;
        v21 = 0x100000001;
      }

      else if (v16 != v19 || v18 != v22 || (objc_msgSend_isEntireCellRangeHidden_(v4, v14, v19, v14, v15) & 1) != 0)
      {
        goto LABEL_20;
      }

      if (v17 == a3)
      {
        objc_msgSend_addCellRange_(v26, v14, v20, v21, v15);
        break;
      }

      ++v17;
LABEL_20:
      v18 += 0x100000000;
      if (v28 << 32 == v18)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_29:
}

void sub_221406570(uint64_t a1, void *a2)
{
  v15 = a2;
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v3, v4, v5, v6);
  objc_msgSend_addObserver_selector_name_object_(v7, v8, *(a1 + 32), sel_p_didReceiveMemoryWarning_, *MEMORY[0x277D76670], v15);

  v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10, v11, v12);
  objc_msgSend_addObserver_selector_name_object_(v13, v14, *(a1 + 32), sel_p_didEnterBackground_, *MEMORY[0x277D76660], v15);
}

void sub_221406698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTFontInfoCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_221406908(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double *sub_221406B40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_hash(*a2, a2, a3, a4, a5) ^ *(a2 + 8);
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_19;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v10;
    if (v10 >= *&v11)
    {
      v14 = v10 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v17 = *(v16 + 1);
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_19;
    }

LABEL_18:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  if (v16[3] != *(a2 + 8) || (objc_msgSend_isEqualToString_(*(v16 + 2), v7, *a2, v8, v9) & 1) == 0)
  {
    goto LABEL_18;
  }

  return v16;
}

void *sub_221406DB0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_221406FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void sub_22140700C(os_unfair_lock_s *a1, unint64_t *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4812000000;
  v20 = sub_2214071F4;
  v21 = sub_221407200;
  v22 = &unk_22188E88F;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  os_unfair_lock_lock(a1);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22140720C;
  v12[3] = &unk_278464A20;
  v9 = v7;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  v15 = &v17;
  v16 = a2;
  sub_221278F68(&a1[4], a2, v12);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22140727C;
  v11[3] = &unk_278464A40;
  v11[4] = a1;
  sub_221278D98(v18 + 6, v11);
  os_unfair_lock_unlock(a1);

  _Block_object_dispose(&v17, 8);
  sub_2212796F0(&v23, v24[0]);
}

void sub_2214071B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose(&a22, 8);
  sub_2212796F0(v31 + 48, a29);

  _Unwind_Resume(a1);
}

void *sub_22140720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((objc_msgSend_containsUuid_(*(a1 + 32), a2, *a2, *(a2 + 8), a5) & 1) != 0 || (result = objc_msgSend_containsUuid_(*(a1 + 40), v7, *(a2 + 16), *(a2 + 24), v8), result))
  {
    v10 = *(a1 + 56);
    v11 = *(*(a1 + 48) + 8) + 48;

    return sub_221278A44(v11, a2, v10);
  }

  return result;
}

void sub_221407288(void *a1)
{
  if (!a1[3])
  {
    v3 = objc_opt_new();
    v4 = a1[3];
    a1[3] = v3;

    v5 = objc_opt_new();
    v6 = a1[4];
    a1[4] = v5;

    v7 = objc_opt_new();
    v8 = a1[5];
    a1[5] = v7;

    v9 = objc_opt_new();
    v10 = a1[6];
    a1[6] = v9;
  }
}

uint64_t sub_221407314(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = (a1 + 24);
    v6 = *(a1 + 24);
    if (v6)
    {
      goto LABEL_6;
    }

    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSTHeaderPerTable::addHeaderUid(const TSKUIDStruct &, BOOL)", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 197, 0, "invalid nil value for '%{public}s'", "_headerRowUids");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  else
  {
    v7 = (a1 + 32);
  }

  v6 = *v7;
LABEL_6:
  v19 = *a2;
  v20 = *(a2 + 8);

  return objc_msgSend_addUUID_(v6, a2, v19, v20, a5);
}

void sub_221407410(void *a1, uint64_t *a2, _OWORD *a3)
{
  if (a1)
  {
    sub_2214074F4((a1 + 3), a2);
    v5 = a1[7];
    v6 = a1[8];
    if (v5 >= v6)
    {
      v9 = a1[6];
      v10 = (v5 - v9) >> 5;
      v11 = v10 + 1;
      if ((v10 + 1) >> 59)
      {
        sub_22107C148();
      }

      v12 = v6 - v9;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_221087FE8((a1 + 6), v13);
      }

      v14 = (32 * v10);
      v15 = a3[1];
      *v14 = *a3;
      v14[1] = v15;
      v8 = 32 * v10 + 32;
      v16 = a1[6];
      v17 = a1[7] - v16;
      v18 = v14 - v17;
      memcpy(v14 - v17, v16, v17);
      v19 = a1[6];
      a1[6] = v18;
      a1[7] = v8;
      a1[8] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v7 = a3[1];
      *v5 = *a3;
      v5[1] = v7;
      v8 = (v5 + 2);
    }

    a1[7] = v8;
  }
}

uint64_t sub_2214074F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2214112B8(a1, a2);
  }

  else
  {
    sub_221411264(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_221408AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, void *a28)
{
  a18 = &a24;
  sub_22107C2C0(&a18);
  sub_22107C800(&a27, a28);
  _Block_object_dispose((v30 - 136), 8);
  sub_22107C800(v29 + 48, *(v30 - 80));

  _Unwind_Resume(a1);
}

uint64_t sub_221408BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221408BD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1[7] + 8) + 40);
  if (!v7)
  {
    v11 = *(a2 + 8);
LABEL_9:
    v41 = v11;
    v13 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, &v41, a1[4], a5);
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_10;
  }

  v8 = objc_msgSend_tableUID(v7, a2, a3, a4, a5);
  v11 = *(a2 + 8);
  if (v8 != v11 || a2 != *(&v11 + 1))
  {
    goto LABEL_9;
  }

LABEL_10:
  v16 = *(*(a1[7] + 8) + 40);
  if (v16)
  {
    v17 = *a2;
    v18 = WORD2(*a2);
    if (v18 < objc_msgSend_numberOfHeaderColumns(v16, a2, v9, v10, a5) || objc_msgSend_numberOfHeaderRows(*(*(a1[7] + 8) + 40), v19, v20, v21, v22) > v17)
    {
      v23 = objc_msgSend_cellValueAtBaseCellCoord_(*(*(a1[7] + 8) + 40), v19, v17, v21, v22);
      v28 = objc_msgSend_displayString(v23, v24, v25, v26, v27);
      v33 = objc_msgSend_namePrefixIndex(*(a1[5] + 8), v29, v30, v31, v32);
      v37 = objc_msgSend_foldName_(v33, v34, v28, v35, v36);

      if (objc_msgSend_isEqualToString_(v37, v38, a1[6], v39, v40))
      {
        TSCECellRefSet::addCellRef((*(a1[8] + 8) + 48), a2);
      }
    }
  }
}

void sub_22140913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, char a30, void *a31)
{
  a20 = &a27;
  sub_22107C2C0(&a20);
  sub_22107C800(&a30, a31);
  _Block_object_dispose((v32 - 160), 8);
  sub_22107C800(v31 + 48, *(v32 - 104));

  _Unwind_Resume(a1);
}

void sub_221409220(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1[7] + 8) + 40);
  if (!v7)
  {
    v11 = *(a2 + 8);
LABEL_9:
    v41 = v11;
    v13 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, &v41, a1[4], a5);
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_10;
  }

  v8 = objc_msgSend_tableUID(v7, a2, a3, a4, a5);
  v11 = *(a2 + 8);
  if (v8 != v11 || a2 != *(&v11 + 1))
  {
    goto LABEL_9;
  }

LABEL_10:
  v16 = *(*(a1[7] + 8) + 40);
  if (v16)
  {
    v17 = *a2;
    v18 = WORD2(*a2);
    if (v18 < objc_msgSend_numberOfHeaderColumns(v16, a2, v9, v10, a5) || objc_msgSend_numberOfHeaderRows(*(*(a1[7] + 8) + 40), v19, v20, v21, v22) > v17)
    {
      v23 = objc_msgSend_cellValueAtBaseCellCoord_(*(*(a1[7] + 8) + 40), v19, v17, v21, v22);
      v28 = objc_msgSend_displayString(v23, v24, v25, v26, v27);
      v33 = objc_msgSend_namePrefixIndex(*(a1[5] + 8), v29, v30, v31, v32);
      v37 = objc_msgSend_foldName_(v33, v34, v28, v35, v36);

      if (objc_msgSend_hasPrefix_(v37, v38, a1[6], v39, v40))
      {
        TSCECellRefSet::addCellRef((*(a1[8] + 8) + 48), a2);
      }
    }
  }
}

void sub_2214097E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSTHeaderNameMgr;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22140A024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  sub_22107C800(va, v5);
  sub_2210C82EC(va1);
  _Unwind_Resume(a1);
}

void sub_22140A280(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22140ABD4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t sub_22140ABEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_removeUUID_(*(*(a1 + 40) + 24), a2, a2, a3, a5);
  result = objc_msgSend_addUUID_(*(*(a1 + 40) + 40), v8, a2, a3, v9);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

uint64_t sub_22140AC54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_removeUUID_(*(*(a1 + 40) + 32), a2, a2, a3, a5);
  result = objc_msgSend_addUUID_(*(*(a1 + 40) + 48), v8, a2, a3, v9);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void sub_22140AEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, void *a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_22107C800(&a18, a19);
  _Unwind_Resume(a1);
}

void sub_22140B19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  sub_22107C800(&a12, a13);

  _Unwind_Resume(a1);
}

void sub_22140B3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_221412F60(va);
  sub_22107C860(v15 + 16, *(v16 - 112));
  _Unwind_Resume(a1);
}

void sub_22140B3EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_fragmentEntryForNameFragmentPrecedent_(*(a1 + 32), a2, a2, a4, a5);
  if (v6)
  {
    v7 = v6;
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    os_unfair_lock_lock(v6);
    sub_221279658(&v7[4]._os_unfair_lock_opaque, v9, v8);

    os_unfair_lock_unlock(v7);
  }
}

void sub_22140B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_22107C860(v15 + 16, a12);
  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void sub_22140B740(uint64_t a1, unsigned int *a2)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 80));
  v92 = *(sub_221412D0C((*(a1 + 32) + 472), a2) + 3);
  v90 = &v92;
  v4 = sub_221412AD0((*(a1 + 32) + 432), &v92)[4];
  pthread_rwlock_unlock((*(a1 + 32) + 80));
  if (!v4)
  {
    return;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 >= *v6)
  {
    if (v8 != *(v5 + 36))
    {
LABEL_8:
      *v6 = v8 + 1;
      v9 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrArchive_PerTableArchive>(*(v5 + 24));
      v10 = *(v5 + 32);
      v11 = *(v5 + 40) + 8 * v10;
      *(v5 + 32) = v10 + 1;
      *(v11 + 8) = v9;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
    goto LABEL_8;
  }

  *(v5 + 32) = v7 + 1;
  v9 = *&v6[2 * v7 + 2];
LABEL_9:
  *(v9 + 16) |= 1u;
  v12 = *(v9 + 120);
  if (!v12)
  {
    v13 = *(v9 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0360](v13);
    *(v9 + 120) = v12;
  }

  TSKUIDStruct::saveToMessage(v4, v12);
  *(v9 + 16) |= 2u;
  v14 = *(v9 + 128);
  if (!v14)
  {
    v15 = *(v9 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v15);
    *(v9 + 128) = v14;
  }

  sub_221269820((v4 + 16), v14);
  if (*(v4 + 56) == 1)
  {
    *(v9 + 16) |= 4u;
    *(v9 + 136) = 1;
  }

  v20 = objc_msgSend_copy(*(v4 + 32), v16, v17, v18, v19);
  v25 = v20;
  if (v20)
  {
    objc_msgSend_uuidsAsVector(v20, v21, v22, v23, v24);
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  v30 = objc_msgSend_copy(*(v4 + 24), v26, v27, v28, v29);
  v35 = v30;
  if (v30)
  {
    objc_msgSend_uuidsAsVector(v30, v31, v32, v33, v34);
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  v40 = objc_msgSend_copy(*(v4 + 48), v36, v37, v38, v39);
  v45 = v40;
  if (v40)
  {
    objc_msgSend_uuidsAsVector(v40, v41, v42, v43, v44);
  }

  else
  {
    __p = 0;
    v87 = 0;
  }

  v50 = objc_msgSend_copy(*(v4 + 40), v46, v47, v48, v49);
  v55 = v50;
  if (v50)
  {
    objc_msgSend_uuidsAsVector(v50, v51, v52, v53, v54);
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  for (i = v90; i != v91; ++i)
  {
    v57 = *(v9 + 64);
    if (!v57)
    {
      goto LABEL_38;
    }

    v58 = *(v9 + 56);
    v59 = *v57;
    if (v58 < *v57)
    {
      *(v9 + 56) = v58 + 1;
      v60 = *&v57[2 * v58 + 2];
      goto LABEL_40;
    }

    if (v59 == *(v9 + 60))
    {
LABEL_38:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 48));
      v57 = *(v9 + 64);
      v59 = *v57;
    }

    *v57 = v59 + 1;
    v60 = MEMORY[0x223DA0360](*(v9 + 48));
    v61 = *(v9 + 56);
    v62 = *(v9 + 64) + 8 * v61;
    *(v9 + 56) = v61 + 1;
    *(v62 + 8) = v60;
LABEL_40:
    TSKUIDStruct::saveToMessage(i, v60);
  }

  for (j = v88; j != v89; ++j)
  {
    v64 = *(v9 + 40);
    if (!v64)
    {
      goto LABEL_48;
    }

    v65 = *(v9 + 32);
    v66 = *v64;
    if (v65 < *v64)
    {
      *(v9 + 32) = v65 + 1;
      v67 = *&v64[2 * v65 + 2];
      goto LABEL_50;
    }

    if (v66 == *(v9 + 36))
    {
LABEL_48:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 24));
      v64 = *(v9 + 40);
      v66 = *v64;
    }

    *v64 = v66 + 1;
    v67 = MEMORY[0x223DA0360](*(v9 + 24));
    v68 = *(v9 + 32);
    v69 = *(v9 + 40) + 8 * v68;
    *(v9 + 32) = v68 + 1;
    *(v69 + 8) = v67;
LABEL_50:
    TSKUIDStruct::saveToMessage(j, v67);
  }

  for (k = __p; k != v87; ++k)
  {
    v71 = *(v9 + 112);
    if (!v71)
    {
      goto LABEL_58;
    }

    v72 = *(v9 + 104);
    v73 = *v71;
    if (v72 < *v71)
    {
      *(v9 + 104) = v72 + 1;
      v74 = *&v71[2 * v72 + 2];
      goto LABEL_60;
    }

    if (v73 == *(v9 + 108))
    {
LABEL_58:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 96));
      v71 = *(v9 + 112);
      v73 = *v71;
    }

    *v71 = v73 + 1;
    v74 = MEMORY[0x223DA0360](*(v9 + 96));
    v75 = *(v9 + 104);
    v76 = *(v9 + 112) + 8 * v75;
    *(v9 + 104) = v75 + 1;
    *(v76 + 8) = v74;
LABEL_60:
    TSKUIDStruct::saveToMessage(k, v74);
  }

  v77 = v84;
  if (v84 == v85)
  {
    goto LABEL_71;
  }

  while (2)
  {
    v78 = *(v9 + 88);
    if (!v78)
    {
      goto LABEL_67;
    }

    v79 = *(v9 + 80);
    v80 = *v78;
    if (v79 < *v78)
    {
      *(v9 + 80) = v79 + 1;
      v81 = *&v78[2 * v79 + 2];
      goto LABEL_69;
    }

    if (v80 == *(v9 + 84))
    {
LABEL_67:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 72));
      v78 = *(v9 + 88);
      v80 = *v78;
    }

    *v78 = v80 + 1;
    v81 = MEMORY[0x223DA0360](*(v9 + 72));
    v82 = *(v9 + 80);
    v83 = *(v9 + 88) + 8 * v82;
    *(v9 + 80) = v82 + 1;
    *(v83 + 8) = v81;
LABEL_69:
    TSKUIDStruct::saveToMessage(v77++, v81);
    if (v77 != v85)
    {
      continue;
    }

    break;
  }

  v77 = v84;
LABEL_71:
  if (v77)
  {
    operator delete(v77);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v88)
  {
    operator delete(v88);
  }

  if (v90)
  {
    operator delete(v90);
  }
}

void sub_22140BC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_22140C0FC(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v21, v26, 16);
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v25 = *(*(&v21 + 1) + 8 * v10);
        objc_msgSend_unpackAfterUnarchive_(v25, v5, *(a1 + 32), v6, v7, v21);
        sub_22140C294((*(a1 + 32) + 328), &v25);
        if (objc_msgSend_count(v25, v11, v12, v13, v14) >> 4 >= 0xC35)
        {
          v16 = *(*(a1 + 32) + 568);
          v17 = objc_msgSend_firstFragment(v25, v5, v15, v6, v7);
          objc_msgSend_addObject_(v16, v18, v17, v19, v20);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v21, v26, 16);
    }

    while (v8);
  }
}

id sub_22140C294(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22140C374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22140C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22140C4B0(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  sub_221278D98((a1 + 16), v3);

  os_unfair_lock_unlock(a1);
}

TSCECellCoordSet *sub_22140C514(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v8[2] = *a3;
  v5 = *(a1 + 32);
  v9 = v8;
  v6 = sub_221412FE4((v5 + 392), v8);
  result = TSCECellCoordSet::addCellCoord((v6 + 8), (a1 + 48));
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void **sub_22140CC6C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v18[4] = a1;
    if (v15)
    {
      sub_22107C1F0(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (8 * v16);
    v18[2] = (8 * v16);
    v18[3] = 0;
    sub_221122E8C(v18, a3);
    v4 = sub_221122FD0(a1, v18, v4);
    sub_22107C26C(v18);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    *(a1 + 8) = v7 + 1;
  }

  else
  {
    sub_221122E10(a1, a2, *(a1 + 8), (a2 + 8));
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    objc_storeStrong(v4, a3[v9]);
  }

  return v4;
}

void sub_22140CD9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22140D198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23)
{
  sub_22107C800(&a22, a23);

  _Unwind_Resume(a1);
}

void sub_22140D3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

void sub_22140D764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  sub_22107C860(&a22, a23);
  _Block_object_dispose(&a25, 8);
  sub_22107C860(&a33, a34);
  sub_22107C860(&a38, a39);
  sub_22107C860(v39 - 136, *(v39 - 128));
  _Unwind_Resume(a1);
}

void sub_22140D820(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_fragmentEntryForNameFragmentPrecedent_(*(a1 + 32), a2, a2, a4, a5);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    os_unfair_lock_lock(v6);
    sub_221278BF8(&v7[4], v8, v9);
    os_unfair_lock_unlock(v7);
    v10 = *(*(a1 + 40) + 8);
    v15 = *&v7[1]._os_unfair_lock_opaque;
    TSCECellCoordSet::addCellCoord((v10 + 48), &v15);
    os_unfair_lock_lock(v7);
    v11 = sub_221278C84(&v7[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v7);
    if (!v11)
    {
      objc_msgSend_removeName_(*(*(a1 + 32) + 512), v12, *&v7[10]._os_unfair_lock_opaque, v13, v14);
    }
  }
}

void sub_22140DA60(_Unwind_Exception *a1)
{
  sub_22107C800(v2, *(v2 + 8));

  _Unwind_Resume(a1);
}

void sub_22140DF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20)
{
  v25 = v22;

  _Block_object_dispose((v24 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22140DF94(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 4) != *(a1 + 64) && !objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(*(a1 + 32), a2, *(a1 + 40), *a2, 1))
  {
    v11 = objc_msgSend_formattedValue(*(a1 + 40), v5, v6, v7, v8);
    if (!objc_msgSend_compare_options_(v11, v9, *(a1 + 48), 1, v10))
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

void sub_22140E4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_22107C800(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_22140E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Block_object_dispose(&a18, 8);
  sub_22107C800(v26 + 48, a25);

  _Unwind_Resume(a1);
}

void sub_22140E7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Block_object_dispose(&a18, 8);
  sub_22107C800(v26 + 48, a25);

  _Unwind_Resume(a1);
}

void sub_22140F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *a41)
{
  _Block_object_dispose(&STACK[0x200], 8);

  _Block_object_dispose(&STACK[0x300], 8);
  sub_22107C860(&STACK[0x340], STACK[0x348]);

  sub_2212796F0(&STACK[0x2B0], STACK[0x2B8]);
  sub_22107C800(v46 - 152, *(v46 - 144));
  _Unwind_Resume(a1);
}

void sub_22140F93C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_221411E04((*(a1 + 32) + 352), a2)[3];
  v7 = objc_msgSend_tileForEntry_(*(a1 + 32), v4, v3, v5, v6);
  objc_msgSend_addChangedTile_(*(a1 + 32), v8, v7, v9, v10);
  os_unfair_lock_lock(v3);
  sub_221278C80((v3 + 16), (a1 + 40));
  os_unfair_lock_unlock(v3);
}

void *sub_22140F9E8(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *a3;
  result = sub_22141356C((*(a1 + 32) + 392), v7);
  if (result)
  {
    v6 = result;
    TSCECellCoordSet::addCellCoords((*(*(a1 + 40) + 8) + 48), (result + 8));
    return sub_221413678((*(a1 + 32) + 392), v6);
  }

  return result;
}

void sub_22140FA6C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_221411E04((*(a1 + 32) + 352), a2)[3];
  v7 = objc_msgSend_tileForEntry_(*(a1 + 32), v4, v3, v5, v6);
  objc_msgSend_addChangedTile_(*(a1 + 32), v8, v7, v9, v10);
  sub_22140700C(v3, (a1 + 56), *(a1 + 40), *(a1 + 48));
}

void *sub_22140FB0C(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *a3;
  result = sub_22141356C((*(a1 + 32) + 392), v7);
  if (result)
  {
    v6 = result;
    TSCECellCoordSet::addCellCoords((*(*(a1 + 40) + 8) + 48), (result + 8));
    return sub_221413678((*(a1 + 32) + 392), v6);
  }

  return result;
}

uint64_t sub_22140FB90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 169, 0, "Invalid row range");
    v27 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  else
  {
    v32 = a3 | (a1 << 32);
    if (!a4)
    {
      v32 = 0x7FFF7FFFFFFFLL;
    }

    if (!a2)
    {
      v32 = 0x7FFF7FFFFFFFLL;
    }

    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    else
    {
      return v32;
    }
  }

  return v27;
}

uint64_t sub_22140FD48(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v12 = objc_msgSend_cellID(v5, v8, v9, v10, v11);
  if (objc_msgSend_containsIndex_(v7, v13, v12, v14, v15))
  {
    v20 = a1[5];
    v21 = objc_msgSend_cellID(v5, v16, v17, v18, v19);
    objc_msgSend_columnUIDForViewColumnIndex_(v20, v22, WORD2(v21), v23, v24);
    v25 = a1[5];
    v30 = objc_msgSend_cellID(v5, v26, v27, v28, v29);
    objc_msgSend_rowUIDForViewRowIndex_(v25, v31, v30, v32, v33);
    v38 = objc_msgSend_cell(v5, v34, v35, v36, v37);
    v43 = objc_msgSend_formattedValue(v38, v39, v40, v41, v42);

    v55 = 0uLL;
    v56 = 0;
    if (objc_msgSend_length(v43, v44, v45, v46, v47))
    {
      v50 = a1[6];
      if (v50)
      {
        objc_msgSend_wordFragmentsFromString_savePreserveFlags_(v50, v48, v43, 1, v49);
      }

      else
      {
        v53 = 0uLL;
        v54 = 0;
      }

      sub_2210BC2A8(&v55);
      v55 = v53;
      v51 = v54;
      v54 = 0;
      v53 = 0uLL;
      v56 = v51;
      v57 = &v53;
      sub_22107C2C0(&v57);
    }

    TSKMakeUIDStructCoord();
    sub_221407410(v6, &v55, &v53);
    *&v53 = &v55;
    sub_22107C2C0(&v53);
  }

  return 0;
}

void sub_22140FECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_22140FF1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_updateWithIndexingChunks_(*(a1 + 32), a2, a2, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 & 1;
  return result;
}

uint64_t sub_22140FF68(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v12 = objc_msgSend_cellID(v5, v8, v9, v10, v11);
  if (objc_msgSend_containsIndex_(v7, v13, WORD2(v12), v14, v15))
  {
    v20 = a1[5];
    v21 = objc_msgSend_cellID(v5, v16, v17, v18, v19);
    objc_msgSend_columnUIDForViewColumnIndex_(v20, v22, WORD2(v21), v23, v24);
    v25 = a1[5];
    v30 = objc_msgSend_cellID(v5, v26, v27, v28, v29);
    objc_msgSend_rowUIDForViewRowIndex_(v25, v31, v30, v32, v33);
    v38 = objc_msgSend_cell(v5, v34, v35, v36, v37);
    v43 = objc_msgSend_formattedValue(v38, v39, v40, v41, v42);

    v55 = 0uLL;
    v56 = 0;
    if (objc_msgSend_length(v43, v44, v45, v46, v47))
    {
      v50 = a1[6];
      if (v50)
      {
        objc_msgSend_wordFragmentsFromString_savePreserveFlags_(v50, v48, v43, 1, v49);
      }

      else
      {
        v53 = 0uLL;
        v54 = 0;
      }

      sub_2210BC2A8(&v55);
      v55 = v53;
      v51 = v54;
      v54 = 0;
      v53 = 0uLL;
      v56 = v51;
      v57 = &v53;
      sub_22107C2C0(&v57);
    }

    TSKMakeUIDStructCoord();
    sub_221407410(v6, &v55, &v53);
    *&v53 = &v55;
    sub_22107C2C0(&v53);
  }

  return 0;
}

void sub_2214100EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_22141013C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_updateWithIndexingChunks_(*(a1 + 32), a2, a2, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 & 1;
  return result;
}

void sub_22141043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v29 - 104) = &a19;
  sub_22107C2C0((v29 - 104));
  _Block_object_dispose(&a22, 8);
  sub_221413710(&a28);
  sub_221413710(v29 - 160);

  _Unwind_Resume(a1);
}

void sub_2214104DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_fragmentEntryForString_(*(a1 + 32), v4, v3, v5, v6);
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 40) + 8);
    v12 = *(v7 + 40);
    v14 = &v12;
    v11 = sub_22141379C((v10 + 48), &v12, &unk_2217E1BE8, &v14, &v13);
    os_unfair_lock_lock(v8);
    sub_221278B40((v11 + 3), (v8 + 16), v9);
    os_unfair_lock_unlock(v8);
  }
}

void sub_221410838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  sub_22107C860(v30 + 16, a20);
  _Block_object_dispose(&a22, 8);
  sub_2212796F0(v29 + 48, a29);
  _Unwind_Resume(a1);
}

void sub_221410874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_fragmentEntryForNameFragmentPrecedent_(*(a1 + 32), a2, a2, a4, a5);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 8);
    os_unfair_lock_lock(v6);
    sub_221278B40(v9 + 48, &v7[4]._os_unfair_lock_opaque, v8);

    os_unfair_lock_unlock(v7);
  }
}

uint64_t sub_2214110E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *a1 = 0;
  *(a1 + 4) = *a2;
  sub_221278A40(a1 + 16, a4);
  *(a1 + 40) = objc_msgSend_copy(v7, v8, v9, v10, v11);

  return a1;
}

void sub_22141114C(_Unwind_Exception *a1)
{
  sub_2212796F0(v2 + 16, *(v2 + 24));

  _Unwind_Resume(a1);
}

uint64_t sub_221411170(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  *a1 = 0;
  v6 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 4) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = objc_msgSend_copy(v5, v7, v8, v9, v10);

  return a1;
}

void sub_2214111D4(_Unwind_Exception *a1)
{
  sub_2212796F0(v2, *v3);

  _Unwind_Resume(a1);
}

uint64_t sub_2214111F0(uint64_t a1, _OWORD *a2, void *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *a3;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  sub_221407288(a1);
  return a1;
}

uint64_t sub_221411264(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_2214113E8(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_2214112B8(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_221411468(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_2214113E8(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_2214114C0(&v14);
  return v8;
}

void sub_2214113D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2214114C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2214113E8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_221411468(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

void **sub_2214114C0(void **a1)
{
  sub_2214114F4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2214114F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_22107C2C0(&v5);
  }
}

void sub_221411548(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_22107C2C0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_2214115BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2214115BC(a1, *a2);
    sub_2214115BC(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_221411618(uint64_t a1, void **a2)
{
  v2 = *sub_2214116D0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2214116D0(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_22141176C(a1, *a3, *(v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_22141176C(a1, *(v8 + 32), *a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_22141176C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v8 = a3;
  if (v8)
  {
    if (v4)
    {
      v9 = objc_msgSend_compare_(v4, v5, v8, v6, v7) == -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_22141185C(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_22141176C(a1, *(v3 + 32), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_22141176C(a1, *a2, *(v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_2214118EC(uint64_t **a1, void **a2)
{
  v3 = sub_22141185C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_221411934(a1, v3);
  return 1;
}

uint64_t *sub_221411934(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t **sub_221411970(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v13[2], a2, *a2, a4, a5) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_221411C00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C800(a2 + 24, *(a2 + 32));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_221411C68(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (objc_msgSend_isEqualToString_(i[2], a2, *a2, a4, a5))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_221411D78(uint64_t a1)
{
  sub_221411DB4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221411DB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C800(v2 + 24, *(v2 + 4));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221411E04(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

uint64_t **sub_221412054(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (objc_msgSend_isEqualToString_(i[2], a2, *a2, a4, a5))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_221412164(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v13[2], a2, *a2, a4, a5) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_2214123E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

void sub_2214123FC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        objc_storeStrong((v8 + 16), v4[2]);
        *(v8 + 24) = v4[3];
        v10 = *v8;
        sub_2214124FC(a1, v8, v11, v12, v13);
        v4 = *v4;
        if (v10)
        {
          v14 = v4 == a3;
        }

        else
        {
          v14 = 1;
        }

        v8 = v10;
      }

      while (!v14);
    }

    sub_2210C8328(a1, v10);
  }

  if (v4 != a3)
  {
    sub_221412990();
  }
}

void sub_2214124D0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2210C8328(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_2214124FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (a2 + 16);
  v7 = *(a2 + 16);
  if (v7)
  {
    v9 = objc_msgSend_hash(v7, a2, a3, a4, a5);
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 8) = v9;
  v10 = sub_22141256C(a1, v9, v8, a4, a5);
  sub_2210BD408(a1, a2, v10);
  return a2;
}

void *sub_22141256C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 8);
  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v8 || (v10 * v8) < v9)
  {
    v11 = 1;
    if (v8 >= 3)
    {
      v11 = (v8 & (v8 - 1)) != 0;
    }

    v12 = v11 | (2 * v8);
    v13 = vcvtps_u32_f32(v9 / v10);
    if (v12 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    sub_2214126DC(a1, v14);
    v8 = *(a1 + 8);
  }

  v15 = vcnt_s8(v8);
  v15.i16[0] = vaddlv_u8(v15);
  v16 = v15.u32[0];
  if (v15.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v8 <= a2)
    {
      v17 = a2 % v8;
    }
  }

  else
  {
    v17 = (v8 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (v18)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = 0;
      do
      {
        v21 = v19[1];
        if (v16 > 1)
        {
          v22 = v19[1];
          if (v21 >= v8)
          {
            v22 = v21 % v8;
          }
        }

        else
        {
          v22 = v21 & (v8 - 1);
        }

        if (v22 != v17)
        {
          break;
        }

        v23 = v21 == a2 ? objc_msgSend_isEqualToString_(v19[2], a2, *a3, a4, a5) : 0;
        if ((v20 & (v23 != (v20 & 1))) != 0)
        {
          break;
        }

        v20 |= v23 != (v20 & 1);
        v18 = *v18;
        v19 = *v18;
      }

      while (*v18);
    }
  }

  return v18;
}

void sub_2214126DC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2214127CC(a1, prime);
    }
  }
}

void sub_2214127CC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2214129E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

void sub_221412A74(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2210C8328(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_221412AD0(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void *sub_221412D0C(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

uint64_t sub_221412F60(uint64_t a1)
{
  sub_221412F9C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221412F9C(uint64_t a1, char **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C860((v2 + 10), v2[11]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221412FE4(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2 ^ a2[2] ^ a2[3];
  v3 = v2 ^ a2[4] ^ a2[5];
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v2 ^ a2[4] ^ a2[5];
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!sub_221413280(v10 + 2, a2))
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_2214132EC(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860((a2 + 10), a2[11]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2214133B8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        v8[4] = a2[4];
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2214134D4();
  }
}

void sub_2214134A0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_22141356C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = a2[1] ^ *a2 ^ a2[2] ^ a2[3] ^ a2[4] ^ a2[5];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = a2[1] ^ *a2 ^ a2[2] ^ a2[3] ^ a2[4] ^ a2[5];
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v10 == v4)
      {
        if (sub_221413280(v9 + 2, a2))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t sub_221413678(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_22107C860((v3 + 10), v3[11]);
    }

    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_2214136D8(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_221413710(uint64_t a1)
{
  sub_22141374C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22141374C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2212796F0(v2 + 24, *(v2 + 4));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_22141379C(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v7 = objc_msgSend_hash(*a2, a2, a3, a4, a5);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v13[2], a2, *a2, a4, a5) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_221413A2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_2212796F0(a2 + 24, *(a2 + 32));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_221413B18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_221414CB8(uint64_t a1, const char *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return objc_msgSend_addCellDiff_andCellUID_(v5, a2, a2, v8, a5);
}

uint64_t sub_221415044(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 32) + 96);
  if (*(a1 + 56))
  {
    a3 = 0;
  }

  v7 = objc_msgSend_objectAtIndex_(v6, a2, a3, a4, a5);
  v12 = objc_msgSend_copy(v7, v8, v9, v10, v11);

  v16 = (*(*(a1 + 48) + 16))();
  if (v16)
  {
    objc_msgSend_addObject_(*(a1 + 40), v13, v12, v14, v15);
  }

  return v16;
}

uint64_t sub_221415104(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 40) + 96), a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v7, v6, v8, v9);

  return 1;
}

void sub_22141562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v14;

  sub_2210BDEC0(v15 + 48);
  sub_2210BDEC0(v16 + 32);
  sub_2210BDEC0(v17 - 120);

  _Unwind_Resume(a1);
}

BOOL sub_2214156C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_221119F90((a1 + 32), v4) == 0;
}

void sub_2214156F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_221119F90(a1 + 6, (a2 + 16)))
  {
    v9 = a1[4];
    v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1[5] + 96), v6, a3, v7, v8);
    v11 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v11;
    objc_msgSend_addCellDiff_andCellUID_(v9, v12, v10, v14, v13);
  }
}

BOOL sub_22141579C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_221119F90((a1 + 32), v4) == 0;
}

void sub_2214157D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_221119F90(a1 + 6, a2))
  {
    v9 = a1[4];
    v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1[5] + 96), v6, a3, v7, v8);
    v11 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v11;
    objc_msgSend_addCellDiff_andCellUID_(v9, v12, v10, v14, v13);
  }
}

void sub_22141597C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v9 != v10)
  {
    while (*v9 != *(a3 + 16) || v9[1] != *(a3 + 24))
    {
      v9 += 2;
      if (v9 == v10)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9 == v10)
  {
LABEL_7:
    v11 = *(a1 + 32);
    v12 = *(a3 + 16);
    v13[0] = *a3;
    v13[1] = v12;
    objc_msgSend_addCellDiff_andCellUID_(v11, v5, v7, v13, v6);
  }
}

void sub_221415B44(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v9 != v10)
  {
    while (*v9 != *a3 || v9[1] != *(a3 + 8))
    {
      v9 += 2;
      if (v9 == v10)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9 == v10)
  {
LABEL_7:
    v11 = *(a1 + 32);
    v12 = *(a3 + 16);
    v13[0] = *a3;
    v13[1] = v12;
    objc_msgSend_addCellDiff_andCellUID_(v11, v5, v7, v13, v6);
  }
}

void sub_221415DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  v23 = v21;

  _Unwind_Resume(a1);
}

uint64_t sub_221415E38(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return (*(v4 + 16))(v4, v5, v8, a3, a4);
}

void sub_221415E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 40);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 96), a2, a3, a4, a5);
  v10 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v10;
  (*(v8 + 16))(v8, v9, v11, a3, a4);
}

uint64_t sub_2214168E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(a1 + 32) + 89) = objc_msgSend_p_scanCellDiffArrayForCellBorderChanges_(*(a1 + 32), a2, *(*(a1 + 32) + 96), a4, a5);
  result = objc_msgSend_p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty_(*(a1 + 32), v6, *(*(a1 + 32) + 96), v7, v8);
  *(*(a1 + 32) + 90) = result;
  return result;
}

char *sub_221416F0C(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_22107C148();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_2210874C4(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void sub_221417278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214179B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  sub_2210BDEC0(&a9);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_2210BDEC0(&a17);

  _Unwind_Resume(a1);
}

void sub_221417C28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221417E5C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        *(v8 + 2) = *(a2 + 2);
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_221417F78();
  }
}

void sub_221417F44(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_221418008(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_22112C810(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_2214180A4(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A7E98;
  *(v3 + 136) = 0;
  *(v3 + 96) = 1;
}

uint64_t sub_2214180E4(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  *(a1 + 136) = TSCEASTElement::tagHasUidTractList(v4);
  return a2;
}

void sub_22141815C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_2214190AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void *TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(void *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (objc_msgSend_count(v3, v4, v5, v6, v7))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v3;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v36, v45, 16);
    if (v14)
    {
      v15 = *v37;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          if (objc_msgSend_length(v17, v10, v11, v12, v13, v36))
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          v21 = a1[1];
          v20 = a1[2];
          if (v21 >= v20)
          {
            v23 = (v21 - *a1) >> 3;
            if ((v23 + 1) >> 61)
            {
              sub_22107C148();
            }

            v24 = v20 - *a1;
            v25 = v24 >> 2;
            if (v24 >> 2 <= (v23 + 1))
            {
              v25 = v23 + 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            v44 = a1;
            if (v26)
            {
              sub_22107C1F0(a1, v26);
            }

            v40 = 0;
            v41 = (8 * v23);
            v43 = 0;
            *v41 = v19;
            v42 = 8 * v23 + 8;
            sub_22107C098(a1, &v40);
            v22 = a1[1];
            sub_22107C26C(&v40);
          }

          else
          {
            *v21 = v19;
            v22 = v21 + 1;
            a1[1] = v22;
          }

          a1[1] = v22;
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v36, v45, 16);
      }

      while (v14);
    }

    v28 = *a1;
    for (j = a1[1]; v28 != j; j = a1[1])
    {
      v29 = *(j - 8);
      if (objc_msgSend_length(v29, v30, v31, v32, v33))
      {

        break;
      }

      v34 = a1[1];

      a1[1] = v34 - 8;
      v28 = *a1;
    }
  }

  return a1;
}

void sub_22141A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(TSCEASTCompactWhitespace *this, NSString *a2, NSString *a3, NSString *a4, NSString *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v37 = v12;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v17 = objc_msgSend_length(v9, v13, v14, v15, v16);
  v22 = objc_msgSend_length(v10, v18, v19, v20, v21);
  v27 = objc_msgSend_length(v11, v23, v24, v25, v26);
  v32 = objc_msgSend_length(v12, v28, v29, v30, v31);
  v33 = v32;
  if (v17 || v22 || v27 || v32)
  {
    if (v17)
    {
      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    location = v34;
    sub_2210C4258(this, &location);
    if (v22 || v27 || v33)
    {
      v35 = v22 ? v10 : 0;
      objc_storeStrong(&location, v35);
      sub_2210C4258(this, &location);
      if (v27 | v33)
      {
        if (v27)
        {
          v36 = v11;
        }

        else
        {
          v36 = 0;
        }

        objc_storeStrong(&location, v36);
        sub_2210C4258(this, &location);
        if (v33)
        {
          sub_2210C4258(this, &v37);
        }
      }
    }

    v12 = v37;
  }
}

void sub_22141AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void **a10)
{
  sub_22107C2C0(&a10);

  _Unwind_Resume(a1);
}

uint64_t TSCEASTCompactWhitespace::operator==(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(v3 + v5);
      v10 = *(*a2 + v5);
      if (v6 != v10 && (objc_msgSend_isEqualToString_(v6, v7, v10, v8, v9) & 1) == 0)
      {
        break;
      }

      v5 += 8;
      if (v3 + v5 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

id TSCEASTCompactWhitespace::whitespaceStringForIndex(TSCEASTCompactWhitespace *this, unint64_t a2)
{
  if (a2 >= (*(this + 1) - *this) >> 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*this + 8 * a2);
  }

  return v3;
}

void TSCEASTCompactWhitespace::setStringAtIndex(TSCEASTCompactWhitespace *this, NSString *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *this;
  if (a3 + 1 > ((*(this + 1) - *this) >> 3))
  {
    v8 = 0;
    sub_22141AC9C(this, a3 + 1, &v8);

    v6 = *this;
  }

  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;
}

void sub_22141AC9C(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_22141AE90(a1, v6, a3);
  }
}

id TSCEASTCompactWhitespace::encodeIntoCombinedString(id **this)
{
  if (this[1] == *this)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_new();
    v3 = *this;
    v4 = this[1];
    if (*this != v4)
    {
      do
      {
        v8 = *v3;
        if (v8)
        {
          objc_msgSend_appendString_(v2, v5, v8, v6, v7);
        }

        objc_msgSend_appendString_(v2, v5, @"/", v6, v7);

        ++v3;
      }

      while (v3 != v4);
    }
  }

  return v2;
}

void TSCEASTCompactWhitespace::whitespaceFromCombinedString(TSCEASTCompactWhitespace *this@<X0>, void *a2@<X8>)
{
  v12 = this;
  if (objc_msgSend_length(v12, v4, v5, v6, v7))
  {
    v11 = objc_msgSend_componentsSeparatedByString_(v12, v8, @"/", v9, v10);
    TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(a2, v11);
  }

  else
  {
    TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(a2, 0);
  }
}

void *sub_22141AE90(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    *(v5 + 8) = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v6 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    sub_22107C098(v5, v17);
    return sub_22107C26C(v17);
  }

  return result;
}

void sub_22141AFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22141B784(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (objc_msgSend_isSingleQuote_(v6, v7, v4, v8, v9))
  {
    isSingleQuote = objc_msgSend_isSingleQuote_(v6, v10, v5, v11, v12);
  }

  else
  {
    isSingleQuote = 0;
  }

  return isSingleQuote;
}

BOOL sub_22141B810(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (objc_msgSend_length(v2, v3, v4, v5, v6) == 1)
  {
    v10 = objc_msgSend_characterAtIndex_(v2, v7, 0, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = v10 == 36 || v10 == 65284;

  return v12;
}

BOOL sub_22141B890(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (objc_msgSend_length(v2, v3, v4, v5, v6) == 1)
  {
    v10 = objc_msgSend_characterAtIndex_(v2, v7, 0, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = v10 == 58 || v10 == 65306;

  return v12;
}

void sub_22141BA2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], a2, a3, a4, a5);
  v10 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);

  objc_msgSend_addCharactersInRange_(v10, v11, 58, 1, v12);
  objc_msgSend_addCharactersInRange_(v10, v13, 65306, 1, v14);
  objc_msgSend_addCharactersInRange_(v10, v15, 36, 1, v16);
  objc_msgSend_addCharactersInRange_(v10, v17, 65284, 1, v18);
  objc_msgSend_addCharactersInRange_(v10, v19, 39, 1, v20);
  objc_msgSend_addCharactersInRange_(v10, v21, 65287, 1, v22);
  objc_msgSend_addCharactersInRange_(v10, v23, 8216, 1, v24);
  objc_msgSend_addCharactersInRange_(v10, v25, 8217, 1, v26);
  objc_msgSend_addCharactersInRange_(v10, v27, 40, 1, v28);
  objc_msgSend_addCharactersInRange_(v10, v29, 41, 1, v30);
  objc_msgSend_addCharactersInRange_(v10, v31, 65288, 1, v32);
  objc_msgSend_addCharactersInRange_(v10, v33, 65289, 1, v34);
  v35 = qword_27CFB5568;
  qword_27CFB5568 = v10;
}

void sub_22141C85C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  *(v18 - 136) = a4;
  sub_22107C2C0((v18 - 136));

  _Unwind_Resume(a1);
}

__n128 sub_22141C9A0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_22141C9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_2210C4258((*(*(a1 + 32) + 8) + 48), &v3);
}

void sub_22141CE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22141CE90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend__stringForInternalCellRef_(TSCEUUidReferenceMap, a2, a2, a4, a5);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v9 = @"%@";
  }

  else
  {
    v9 = @", %@";
  }

  v10 = v6;
  objc_msgSend_appendFormat_(*(a1 + 32), v6, v9, v7, v8, v6);
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_22141D160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_22141D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_221122744(va);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_22141D66C(void *a1, uint64_t a2)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v3 = a1[6];
  v4 = v9;
  if (*(v3 + 144))
  {
    v4 = sub_2212602C8(v3, v9);
  }

  LOWORD(v9) = v4;
  v5 = a1[4];
  v10 = &v8;
  v6 = sub_22141DEC4((v5 + 48), &v8);
  sub_2210C2B00(v6 + 4, a1 + 7);
  return sub_2212DFCE8((*(a1[5] + 8) + 48), &v8);
}

void *sub_22141D8A0(void *a1, uint64_t *a2)
{
  v3 = sub_22141DEC4((a1[4] + 48), a2);
  sub_2211F2EF4(v3 + 4, a1 + 5);
  return sub_2210C2B00(v3 + 4, a1 + 7);
}

int *sub_22141DAF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:

  return sub_2215C38E0(a2, v7);
}

void *sub_22141DC04(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_22141DE64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22141DE78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22141DE78(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_221122744(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_22141DEC4(void *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v3 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  v9 = *a2;
  while (1)
  {
    v10 = v8[1];
    if (v10 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }
    }

    else
    {
      v10 &= *&v4 - 1;
    }

    if (v10 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  v11 = v8[2];
  v13 = v9 == v11;
  v12 = (v11 ^ v9) & 0x101FFFF00000000;
  v13 = v13 && v12 == 0;
  if (!v13 || v2 != *(v8 + 12))
  {
    goto LABEL_23;
  }

  return v8;
}