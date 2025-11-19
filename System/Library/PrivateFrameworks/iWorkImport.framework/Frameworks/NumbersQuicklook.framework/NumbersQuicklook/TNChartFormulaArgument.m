@interface TNChartFormulaArgument
- (BOOL)isVisible:(id)a3;
- (TNChartFormulaArgument)initWithBadRef;
- (TNChartFormulaArgument)initWithCategoryReference:(id)a3;
- (TNChartFormulaArgument)initWithCellReference:(TSCECellRef *)a3;
- (TNChartFormulaArgument)initWithRangeReference:(TSCERangeRef *)a3;
- (TNChartFormulaArgument)initWithStaticValue:(id)a3;
- (TNChartFormulaArgument)initWithTractReference:(id)a3;
- (TNChartFormulaArgument)initWithViewTractReference:(id)a3;
- (TSCECategoryRef)categoryReference;
- (TSCECellRef)cellReference;
- (TSCERangeRef)rangeReference;
- (TSCEValue)staticValue;
- (TSCEViewTractRef)viewTractReference;
- (TSKUIDStruct)tableUID:(id)a3;
- (id)description;
- (unint64_t)numberOfValuesWithCalcEngine:(id)a3 plotByRow:(BOOL)a4;
- (void)dealloc;
@end

@implementation TNChartFormulaArgument

- (TNChartFormulaArgument)initWithCellReference:(TSCECellRef *)a3
{
  v9.receiver = self;
  v9.super_class = TNChartFormulaArgument;
  v4 = [(TNChartFormulaArgument *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 0;
    v6 = malloc_type_malloc(0x18uLL, 0x1000040504FFAC1uLL);
    v5->_data = v6;
    v7 = *&a3->var0.row;
    *(v6 + 2) = a3->var1._upper;
    *v6 = v7;
  }

  return v5;
}

- (TNChartFormulaArgument)initWithRangeReference:(TSCERangeRef *)a3
{
  v9.receiver = self;
  v9.super_class = TNChartFormulaArgument;
  v4 = [(TNChartFormulaArgument *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 1;
    v6 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    v5->_data = v6;
    tableUID = a3->_tableUID;
    *v6 = a3->range;
    v6[1] = tableUID;
  }

  return v5;
}

- (TNChartFormulaArgument)initWithTractReference:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TNChartFormulaArgument;
  v5 = [(TNChartFormulaArgument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 2;
    v5->_data = v4;
  }

  return v6;
}

- (TNChartFormulaArgument)initWithCategoryReference:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TNChartFormulaArgument;
  v5 = [(TNChartFormulaArgument *)&v10 init];
  v8 = v5;
  if (v5)
  {
    v5->_type = 3;
    v5->_data = objc_msgSend_copy(v4, v6, v7);
  }

  return v8;
}

- (TNChartFormulaArgument)initWithViewTractReference:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TNChartFormulaArgument;
  v5 = [(TNChartFormulaArgument *)&v10 init];
  v8 = v5;
  if (v5)
  {
    v5->_type = 6;
    v5->_data = objc_msgSend_copy(v4, v6, v7);
  }

  return v8;
}

- (TNChartFormulaArgument)initWithStaticValue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TNChartFormulaArgument;
  v5 = [(TNChartFormulaArgument *)&v10 init];
  v8 = v5;
  if (v5)
  {
    v5->_type = 4;
    v5->_data = objc_msgSend_copy(v4, v6, v7);
  }

  return v8;
}

- (TNChartFormulaArgument)initWithBadRef
{
  v3.receiver = self;
  v3.super_class = TNChartFormulaArgument;
  result = [(TNChartFormulaArgument *)&v3 init];
  if (result)
  {
    result->_type = 5;
  }

  return result;
}

- (void)dealloc
{
  type = self->_type;
  if (type <= 6)
  {
    if (((1 << type) & 0x5C) != 0)
    {
    }

    else if (((1 << type) & 3) != 0)
    {
      free(self->_data);
    }
  }

  self->_data = 0;
  v4.receiver = self;
  v4.super_class = TNChartFormulaArgument;
  [(TNChartFormulaArgument *)&v4 dealloc];
}

- (TSCECellRef)cellReference
{
  retstr->var1._lower = 0;
  retstr->var1._upper = 0;
  retstr->var0 = 0x7FFF7FFFFFFFLL;
  if (self->var1._lower)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TNChartFormulaArgument cellReference]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgument.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 208, 0, "I'm handing out an invalid cell reference.  Just thought you should know.");

    v10 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v10, v8, v9);
  }

  else
  {
    *retstr = *self->var1._upper;
  }

  return self;
}

- (TSCERangeRef)rangeReference
{
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  bottomRight = self->range._bottomRight;
  if (bottomRight == 1)
  {
    lower = self->_tableUID._lower;
    v9 = *(lower + 16);
    retstr->range = *lower;
    retstr->_tableUID = v9;
  }

  else if (bottomRight)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TNChartFormulaArgument rangeReference]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgument.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 222, 0, "I'm handing out an invalid range reference.  Just thought you should know.");

    v17 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }

  else
  {
    self = objc_msgSend_cellReference(self, a3, v3);
    v6 = v19;
    v7 = v18;
    retstr->range._topLeft = v18;
    *&retstr->range._bottomRight.row = v7;
    retstr->_tableUID._upper = v6;
  }

  return self;
}

- (TSCECategoryRef)categoryReference
{
  if (self->_type == 3)
  {
    v2 = self->_data;
  }

  else
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNChartFormulaArgument categoryReference]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgument.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 237, 0, "I'm handing out an invalid category reference.  Just thought you should know.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
    v2 = 0;
  }

  return v2;
}

- (TSCEViewTractRef)viewTractReference
{
  if (self->_type == 6)
  {
    v3 = self->_data;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TSCEValue)staticValue
{
  if (self->_type == 4)
  {
    v3 = self->_data;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TSKUIDStruct)tableUID:(id)a3
{
  v4 = a3;
  v7 = v4;
  v8 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      v10 = 0;
      if (type == 1)
      {
        objc_msgSend_rangeReference(self, v5, v6);
        v8 = v30;
        v10 = v31;
      }
    }

    else
    {
      objc_msgSend_cellReference(self, v5, v6);
      v8 = v29;
      v10 = v30;
    }
  }

  else
  {
    if (type == 2)
    {
      v11 = objc_msgSend_tractReference(self, v5, v6);
      v14 = objc_msgSend_tableUID(v11, v16, v17);
      goto LABEL_13;
    }

    if (type == 3)
    {
      if (!v4)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNChartFormulaArgument tableUID:]");
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgument.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 279, 0, "Can't have nil calculation engine for TNChartFormulaArgumentTypeCategoryReference");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
      }

      v25 = MEMORY[0x277D80D18];
      v11 = objc_msgSend_categoryReference(self, v5, v6);
      v14 = objc_msgSend_tableUIDForCategoryRef_withCalcEngine_(v25, v26, v11, v7);
      goto LABEL_13;
    }

    v10 = 0;
    if (type == 6)
    {
      v11 = objc_msgSend_viewTractReference(self, v5, v6);
      v14 = objc_msgSend_tableUID(v11, v12, v13);
LABEL_13:
      v8 = v14;
      v10 = v15;
    }
  }

  v27 = v8;
  v28 = v10;
  result._upper = v28;
  result._lower = v27;
  return result;
}

- (BOOL)isVisible:(id)a3
{
  v6 = a3;
  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      v9 = objc_msgSend_categoryReference(self, v4, v5);
      v20 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v25, v9, v6);
      isValidCategoryRef = objc_msgSend_isValidCategoryRef_(v20, v26, v9);
      goto LABEL_19;
    }

    hasCellID = type == 4;
  }

  else
  {
    if (type < 2)
    {
      objc_msgSend_rangeReference(self, v4, v5);
      v9 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(MEMORY[0x277D80D40], v8, v34, *(&v34 + 1), v6);
      if (objc_msgSend_hasCellID_(v9, v10, v33))
      {
        hasCellID = objc_msgSend_hasCellID_(v9, v11, *(&v33 + 1));
      }

      else
      {
        hasCellID = 0;
      }

      goto LABEL_21;
    }

    if (type == 2)
    {
      v9 = objc_msgSend_tractReference(self, v4, v5);
      v13 = MEMORY[0x277D80D40];
      v16 = objc_msgSend_tableUID(v9, v14, v15);
      v20 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v13, v17, v16, v17, v6);
      if (v9)
      {
        objc_msgSend_boundingRangeRef(v9, v18, v19);
        v22 = objc_msgSend_hasCellID_(v20, v21, v33);
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v22 = objc_msgSend_hasCellID_(v20, v18, 0);
      }

      if (!v22)
      {
        hasCellID = 0;
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      if (v9)
      {
        objc_msgSend_boundingRangeRef(v9, v23, v24);
        isValidCategoryRef = objc_msgSend_hasCellID_(v20, v28, v31, v30, v31, v32, v33, v34);
      }

      else
      {
        isValidCategoryRef = objc_msgSend_hasCellID_(v20, v23, 0, 0, 0, 0, v33, v34);
      }

LABEL_19:
      hasCellID = isValidCategoryRef;
      goto LABEL_20;
    }

    hasCellID = 0;
  }

LABEL_22:

  return hasCellID;
}

- (unint64_t)numberOfValuesWithCalcEngine:(id)a3 plotByRow:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!objc_msgSend_isGeometricReference(self, v7, v8))
  {
    if (objc_msgSend_isTractReference(self, v9, v10))
    {
      v20 = objc_msgSend_tractReference(self, v18, v19);
      v14 = v20;
      if (v4)
      {
        if (objc_msgSend_spansAllColumns(v20, v21, v22))
        {
          v84.range._topLeft = objc_msgSend_tableUID(v14, v23, v24);
          v84.range._bottomRight = v25;
          v28 = objc_msgSend_tableResolverForTableUID_(v6, v25, &v84);
          if (v28)
          {
            if (v14)
            {
              objc_msgSend_cppCellTractRef(v14, v26, v27);
            }

            else
            {
              v83 = 0;
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v78 = 0u;
            }

            objc_msgSend_apparentTractRefForTractRef_rangeContext_(v28, v26, &v78, 0);
            v75 = TSCECellTractRefCore::numColumns(&v84);
LABEL_47:
            v34 = v75;
            TSUIndexSet::~TSUIndexSet(&v85);
            TSUIndexSet::~TSUIndexSet(&v84);
            TSUIndexSet::~TSUIndexSet(&v80);
            TSUIndexSet::~TSUIndexSet(&v78);
            goto LABEL_48;
          }

          v61 = MEMORY[0x277D81150];
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TNChartFormulaArgument numberOfValuesWithCalcEngine:plotByRow:]");
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgument.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 342, 0, "invalid nil value for '%{public}s'", "resolver");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
          goto LABEL_40;
        }

        v57 = objc_msgSend_numColumns(v14, v23, v24);
      }

      else
      {
        if (objc_msgSend_spansAllRows(v20, v21, v22))
        {
          v84.range._topLeft = objc_msgSend_tableUID(v14, v40, v41);
          v84.range._bottomRight = v42;
          v28 = objc_msgSend_tableResolverForTableUID_(v6, v42, &v84);
          if (v28)
          {
            if (v14)
            {
              objc_msgSend_cppCellTractRef(v14, v43, v44);
            }

            else
            {
              v83 = 0;
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v78 = 0u;
            }

            objc_msgSend_apparentTractRefForTractRef_rangeContext_(v28, v43, &v78, 0);
            v75 = TSCECellTractRefCore::numRows(&v84);
            goto LABEL_47;
          }

          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TNChartFormulaArgument numberOfValuesWithCalcEngine:plotByRow:]");
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgument.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 352, 0, "invalid nil value for '%{public}s'", "resolver");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
          goto LABEL_40;
        }

        v57 = objc_msgSend_numRows(v14, v40, v41);
      }

      v34 = v57;
      goto LABEL_49;
    }

    if (objc_msgSend_isCategoryReference(self, v18, v19))
    {
      v14 = objc_msgSend_categoryReference(self, v35, v36);
      if (v4)
      {
        v34 = 1;
        goto LABEL_49;
      }

      v28 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(MEMORY[0x277D80D18], v37, v14, v6);
      v34 = objc_msgSend_countOfValuesForCategoryRef_(v28, v58, v14);
LABEL_48:

      goto LABEL_49;
    }

    if (!objc_msgSend_isViewTractReference(self, v35, v36))
    {
      if (objc_msgSend_isStaticValue(self, v45, v46))
      {
        v34 = 1;
      }

      else
      {
        objc_msgSend_isBadRef(self, v59, v60);
        v34 = 0;
      }

      goto LABEL_50;
    }

    v14 = objc_msgSend_viewTractReference(self, v45, v46);
    v84.range._topLeft = objc_msgSend_tableUID(v14, v47, v48);
    v84.range._bottomRight = v49;
    v50 = objc_msgSend_tableResolverForTableUID_(v6, v49, &v84);
    v28 = v50;
    if (v50)
    {
      v77 = 0;
      v52 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_(v50, v51, v14, 0, &v77);
      v55 = v77;
      if (v4)
      {
        v56 = objc_msgSend_numberOfColumns(v52, v53, v54);
      }

      else
      {
        v56 = objc_msgSend_numberOfRows(v52, v53, v54);
      }

      v34 = v56;

      goto LABEL_48;
    }

LABEL_40:
    v34 = 0;
    goto LABEL_48;
  }

  objc_msgSend_rangeReference(self, v9, v10);
  if (v4)
  {
    if (TSCERangeRef::isSpanningAllColumns(&v84))
    {
      v12 = objc_msgSend_tableResolverForTableUID_(v6, v11, &v84._tableUID);
      v14 = v12;
      if (v12)
      {
        v15 = objc_msgSend_apparentRangeForRange_rangeContext_(v12, v13, &v84, 0);
        v17 = v16 - WORD2(v15);
LABEL_15:
        v34 = (v17 + 1);
LABEL_49:

        goto LABEL_50;
      }

      goto LABEL_30;
    }

    column = v84.range._bottomRight.column;
    row = v84.range._topLeft.column;
  }

  else
  {
    if (TSCERangeRef::isSpanningAllRows(&v84))
    {
      v30 = objc_msgSend_tableResolverForTableUID_(v6, v29, &v84._tableUID);
      v14 = v30;
      if (v30)
      {
        v32 = objc_msgSend_apparentRangeForRange_rangeContext_(v30, v31, &v84, 0);
        v17 = v33 - v32;
        goto LABEL_15;
      }

LABEL_30:
      v34 = 0;
      goto LABEL_49;
    }

    column = v84.range._bottomRight.row;
    row = v84.range._topLeft.row;
  }

  v34 = column - row + 1;
LABEL_50:

  return v34;
}

- (id)description
{
  type = self->_type;
  v5 = @"(null)";
  if (type <= 2)
  {
    if (type)
    {
      if (type != 1)
      {
        if (type != 2)
        {
          goto LABEL_18;
        }

        v6 = objc_msgSend_tractReference(self, a2, v2);
        v7 = MEMORY[0x277CCACA8];
        v10 = objc_msgSend_description(v6, v8, v9);
        v5 = objc_msgSend_stringWithFormat_(v7, v11, @"{ tractRef: %p ", v10);

        goto LABEL_17;
      }

      objc_msgSend_rangeReference(self, a2, v2);
      v19 = MEMORY[0x277CCACA8];
      v6 = TSKUIDStruct::description(&v31._upper);
      v14 = objc_msgSend_stringWithFormat_(v19, v20, @"{ owner: %p topLeft(c,r): %d, %d bottomRight(c,r): %d, %d } ", v6, v30, v29, WORD2(v31._lower), LODWORD(v31._lower));
    }

    else
    {
      objc_msgSend_cellReference(self, a2, v2);
      v15 = MEMORY[0x277CCACA8];
      v32 = v31;
      v6 = TSKUIDStruct::description(&v32);
      v14 = objc_msgSend_stringWithFormat_(v15, v16, @"{ owner: %p col: %d row: %d } ", v6, v30, v29);
    }
  }

  else if (type > 4)
  {
    if (type == 5)
    {
      v5 = @"TNChartFormulaArgumentTypeBadRef";
      goto LABEL_18;
    }

    if (type != 6)
    {
      goto LABEL_18;
    }

    v12 = MEMORY[0x277CCACA8];
    v6 = objc_msgSend_viewTractReference(self, a2, v2);
    v14 = objc_msgSend_stringWithFormat_(v12, v13, @"{ viewTractRef: %p}", v6);
  }

  else
  {
    if (type != 3)
    {
      v5 = @"TNChartFormulaArgumentTypeStaticValue";
      goto LABEL_18;
    }

    v6 = objc_msgSend_categoryReference(self, a2, v2);
    v14 = objc_msgSend_description(v6, v17, v18);
  }

  v5 = v14;
LABEL_17:

LABEL_18:
  v21 = MEMORY[0x277CCACA8];
  v28.receiver = self;
  v28.super_class = TNChartFormulaArgument;
  v22 = [(TNChartFormulaArgument *)&v28 description];
  v24 = v22;
  v25 = self->_type;
  if (v25 > 6)
  {
    objc_msgSend_stringWithFormat_(v21, v23, @"%@ - {\n\ttype = %@\n\tvalue = %@\n};", v22, 0, v5);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v21, v23, @"%@ - {\n\ttype = %@\n\tvalue = %@\n};", v22, off_27A6A2D40[v25], v5);
  }
  v26 = ;

  return v26;
}

@end