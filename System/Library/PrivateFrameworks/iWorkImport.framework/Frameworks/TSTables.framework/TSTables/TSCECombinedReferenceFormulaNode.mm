@interface TSCECombinedReferenceFormulaNode
- (BOOL)isCategoryRef;
- (BOOL)isCategorySummaryRef;
- (BOOL)isRangeExpression;
- (BOOL)isSingleColumnSpanningReference;
- (BOOL)isSingleRowSpanningReference;
- (TSCECombinedReferenceFormulaNode)initWithCategoryRef:(id)a3 hostCellRef:(const TSCECellRef *)a4;
- (TSCECombinedReferenceFormulaNode)initWithReferenceStart:(id)a3 referenceEnd:(id)a4 calcEngine:(id)a5;
- (TSCECombinedReferenceFormulaNode)initWithUidRectRef:(id)a3 hostCellRef:(const TSCECellRef *)a4;
- (TSCERangeCoordinate)baseBoundingBox;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)convertCategoryRefToRelativeForHostCell:(const TSCECellRef *)a3 calcEngine:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 forCoord:(TSUCellCoord)a4 preserveFlags:(unsigned __int8)a5 hostCellRef:(const TSCECellRef *)a6 calcEngine:(id)a7;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
- (void)setHostCellRef:(TSCECellRef *)a3;
@end

@implementation TSCECombinedReferenceFormulaNode

- (TSCECombinedReferenceFormulaNode)initWithUidRectRef:(id)a3 hostCellRef:(const TSCECellRef *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = TSCECombinedReferenceFormulaNode;
  v8 = [(TSCEFormulaNode *)&v13 initWithNodeType:16];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uidRectRef, a3);
    categoryRef = v9->_categoryRef;
    v9->_categoryRef = 0;

    upper = a4->_tableUID._upper;
    *&v9->_hostCellRef.coordinate.row = *&a4->coordinate.row;
    v9->_hostCellRef._tableUID._upper = upper;
  }

  return v9;
}

- (TSCECombinedReferenceFormulaNode)initWithCategoryRef:(id)a3 hostCellRef:(const TSCECellRef *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = TSCECombinedReferenceFormulaNode;
  v8 = [(TSCEFormulaNode *)&v13 initWithNodeType:16];
  v9 = v8;
  if (v8)
  {
    uidRectRef = v8->_uidRectRef;
    v8->_uidRectRef = 0;

    objc_storeStrong(&v9->_categoryRef, a3);
    upper = a4->_tableUID._upper;
    *&v9->_hostCellRef.coordinate.row = *&a4->coordinate.row;
    v9->_hostCellRef._tableUID._upper = upper;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19.receiver = self;
  v19.super_class = TSCECombinedReferenceFormulaNode;
  v4 = [(TSCECombinedReferenceFormulaNode *)&v19 copy];
  v9 = objc_msgSend_copy(self->_uidRectRef, v5, v6, v7, v8);
  v10 = v4[6];
  v4[6] = v9;

  v15 = objc_msgSend_copy(self->_categoryRef, v11, v12, v13, v14);
  v16 = v4[7];
  v4[7] = v15;

  upper = self->_hostCellRef._tableUID._upper;
  *(v4 + 4) = *&self->_hostCellRef.coordinate.row;
  v4[10] = upper;
  return v4;
}

- (TSKUIDStruct)tableUID
{
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    uidRectRef = objc_msgSend_tableUID(uidRectRef, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  result._upper = v6;
  result._lower = uidRectRef;
  return result;
}

- (TSCERangeCoordinate)baseBoundingBox
{
  v6 = objc_msgSend_baseTopLeftCoord(self, a2, v2, v3, v4);
  v11 = objc_msgSend_baseBottomRightCoord(self, v7, v8, v9, v10);
  v12 = v6;
  result._bottomRight = v11;
  result._topLeft = v12;
  return result;
}

- (BOOL)isSingleColumnSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3, v4) & 1) != 0 || !objc_msgSend_spansAllRows(self, v6, v7, v8, v9))
  {
    return 0;
  }

  v14 = objc_msgSend_uidRectRef(self, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfColumns(v14, v15, v16, v17, v18) == 1;

  return v19;
}

- (BOOL)isSingleRowSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3, v4) & 1) != 0 || !objc_msgSend_spansAllColumns(self, v6, v7, v8, v9))
  {
    return 0;
  }

  v14 = objc_msgSend_uidRectRef(self, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfRows(v14, v15, v16, v17, v18) == 1;

  return v19;
}

- (BOOL)isCategoryRef
{
  categoryRef = self->_categoryRef;
  if (categoryRef)
  {
    LOBYTE(categoryRef) = objc_msgSend_isValid(categoryRef, a2, v2, v3, v4);
  }

  return categoryRef;
}

- (BOOL)isCategorySummaryRef
{
  if (!objc_msgSend_isCategoryRef(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_categoryRef(self, v6, v7, v8, v9);
  v15 = objc_msgSend_type(v10, v11, v12, v13, v14) == 11;

  return v15;
}

- (BOOL)isRangeExpression
{
  v6 = objc_msgSend_area(self->_uidRectRef, a2, v2, v3, v4);
  v11 = objc_msgSend_viewPreserveFlags(self, v7, v8, v9, v10);
  v12 = (v11 ^ (v11 >> 2)) & 3;
  v13 = v12 != 0;
  if ((objc_msgSend_isSingleColumnSpanningReference(self, v14, v15, v16, v17) & 1) == 0)
  {
    isSingleRowSpanningReference = objc_msgSend_isSingleRowSpanningReference(self, v18, v19, v20, v21);
    if (v6 == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = isSingleRowSpanningReference;
    }

    if (v23)
    {
      return v12 != 0;
    }

    else
    {
      return v6 > 1;
    }
  }

  return v13;
}

- (TSCECombinedReferenceFormulaNode)initWithReferenceStart:(id)a3 referenceEnd:(id)a4 calcEngine:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14 = a5;
  if (!v8)
  {
    v15 = 0;
    bottomRight = 0;
    v92 = 0;
    v93 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v97 = 0;
    v98 = 0;
    goto LABEL_6;
  }

  objc_msgSend_hostCellRef(v8, v10, v11, v12, v13);
  bottomRight = v92._bottomRight;
  v15 = v93;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_msgSend_hostCellRef(v9, v10, v11, v12, v13, *&v92._topLeft);
  v17 = v97._bottomRight;
LABEL_6:
  if (bottomRight != v17 || v15 != v98)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECombinedReferenceFormulaNode initWithReferenceStart:referenceEnd:calcEngine:]", v12, v13, *&v92._topLeft);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 1169, 0, "Creating a range reference with two references with different ownerUIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_uidRectRef(v8, v10, v11, v12, v13, *&v92._topLeft);
  v34 = objc_msgSend_viewTopLeftCoord(v29, v30, v31, v32, v33);

  v39 = objc_msgSend_uidRectRef(v9, v35, v36, v37, v38);
  v44 = objc_msgSend_viewBottomRightCoord(v39, v40, v41, v42, v43);

  v96._topLeft = v34;
  v96._bottomRight = v44;
  LOBYTE(v34) = objc_msgSend_viewPreserveFlags(v8, v45, v46, v47, v48);
  v95._flags = objc_msgSend_viewPreserveFlags(v9, v49, v50, v51, v52) & 0xFC | v34 & 3;
  TSCERangeCoordinate::fixInversions(&v96, &v95);
  flags = v95._flags;
  v58 = objc_msgSend_tableUID(v8, v54, v55, v56, v57);
  v60 = v59;
  if ((objc_msgSend_isRangeExpression(v8, v59, v61, v62, v63) & 1) == 0 && (objc_msgSend_isRangeExpression(v9, v64, v65, v66, v67) & 1) == 0)
  {
    if (v8)
    {
      objc_msgSend_hostCellRef(v8, v68, v69, v70, v71);
      v82 = v92._bottomRight;
      v81 = v93;
      if (v9)
      {
LABEL_18:
        objc_msgSend_hostCellRef(v9, v68, v69, v70, v71, v92, v93);
        v84 = v97._bottomRight;
        v83 = v98;
LABEL_21:
        if (v82 == v84 && v81 == v83)
        {
          v85 = objc_msgSend_tableUID(v8, v68, v69, v70, v71);
          v87 = v86;
          if (v85 == objc_msgSend_tableUID(v9, v86, v88, v89, v90) && v87 == v91 && TSCERangeCoordinate::isValidOrSpanning(&v96))
          {
            goto LABEL_12;
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
      v81 = 0;
      v82 = 0;
      v92 = 0;
      v93 = 0;
      if (v9)
      {
        goto LABEL_18;
      }
    }

    v83 = 0;
    v84 = 0;
    v97 = 0;
    v98 = 0;
    goto LABEL_21;
  }

LABEL_11:
  v96 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_12:
  v97 = v96;
  v72 = [TSTUIDRectRef alloc];
  v92 = v97;
  v93 = v58;
  v94 = v60;
  v78 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v72, v73, v14, &v92, flags);
  if (v8)
  {
    objc_msgSend_hostCellRef(v8, v74, v75, v76, v77);
  }

  else
  {
    v92 = 0;
    v93 = 0;
  }

  v79 = objc_msgSend_initWithUidRectRef_hostCellRef_(self, v74, v78, &v92, v77);

  return v79;
}

- (id)convertCategoryRefToRelativeForHostCell:(const TSCECellRef *)a3 calcEngine:(id)a4
{
  v6 = a4;
  v7 = self->_categoryRef;
  if ((objc_msgSend_preserveFlags(self->_categoryRef, v8, v9, v10, v11) & 2) == 0)
  {
    v16 = objc_msgSend_groupByUid(self->_categoryRef, v12, v13, v14, v15);
    v18 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v17, v16, v17, v6);
    v23 = v18;
    if (v18)
    {
      v24 = objc_msgSend_tableInfo(v18, v19, v20, v21, v22);
      if (objc_msgSend_tableUID(v24, v25, v26, v27, v28) == a3->_tableUID._lower)
      {
        v30 = v29;
        upper = a3->_tableUID._upper;

        if (v30 == upper)
        {
          v36 = objc_msgSend_tableInfo(v23, v32, v33, v34, v35);
          v41 = objc_msgSend_translator(v36, v37, v38, v39, v40);
          v51[0] = objc_msgSend_rowUIDForBaseRowIndex_(v41, v42, a3->coordinate.row, v43, v44);
          v51[1] = v45;

          categoryRef = self->_categoryRef;
          tableUID = a3->_tableUID;
          v48 = objc_msgSend_convertCategoryRefToRelativeAncestorUid_atRowUid_inHostTable_(v23, v47, categoryRef, v51, &tableUID);

          v7 = v48;
        }
      }

      else
      {
      }
    }
  }

  return v7;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 forCoord:(TSUCellCoord)a4 preserveFlags:(unsigned __int8)a5 hostCellRef:(const TSCECellRef *)a6 calcEngine:(id)a7
{
  HIBYTE(v52.var2) = a5;
  lower = a6->_tableUID._lower;
  upper = a6->_tableUID._upper;
  if (lower == objc_msgSend_tableUID(self, a2, a3, *&a4, a5))
  {
    v52.var0 = 0;
    v52.var1 = 0;
    if (upper == v13)
    {
      v52.var0 = 0;
      v52.var1 = 0;
      v17 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v52.var0 = 0;
    v52.var1 = 0;
  }

  v17 = 0;
  v52.var0 = objc_msgSend_tableUID(self, v13, v14, v15, v16);
  v52.var1 = v13;
LABEL_6:
  v18 = *&a4 & 0xFFFF00000000;
  if (a4.row != 0x7FFFFFFF)
  {
    if (v18 != 0x7FFF00000000)
    {
      v45 = (&v52.var2 + 7);
      v46 = a4;
      v50._lower = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&a6->coordinate, v46, v45, v15);
      goto LABEL_23;
    }

    row = a6->coordinate.row;
    if ((v52.var2 & 0x200000000000000) != 0)
    {
      row = 0;
    }

    v31 = a4.row - row;
    sub_2210899C8(v31, v13, v14, v15, v16);
    sub_2210899C8(v31, v32, v33, v34, v35);
    v37 = ((HIBYTE(v52.var2) & 2) << 47) | ((HIBYTE(v52.var2) & 1) << 56) | v31 | 0x7FFF00000000;
LABEL_21:
    v50._lower = v37;
LABEL_23:
    TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(a3, &v52, &v50, (&v52.var2 + 7), 0, v36);
    return;
  }

  if (v18 != 0x7FFF00000000)
  {
    column = a6->coordinate.column;
    if ((v52.var2 & 0x100000000000000) != 0)
    {
      column = 0;
    }

    v39 = a4.column - column;
    if (a4.column == 0x7FFF)
    {
      v40 = a4.column;
    }

    else
    {
      v40 = v39;
    }

    sub_2210898C4(v40, v13, v14, v15, v16);
    sub_2210898C4(v40, v41, v42, v43, v44);
    v37 = ((HIBYTE(v52.var2) & 2) << 47) & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(v52.var2) & 1) << 56) | (v40 << 32) | 0x7FFFFFFF;
    goto LABEL_21;
  }

  if (objc_msgSend_isValid(self->_uidRectRef, v13, v14, v15, v16))
  {
    v24 = objc_msgSend_includeUidTractList(self->_uidRectRef, v19, v20, v21, v22);
    v51._flags = 0;
    TSCEASTRefFlags::setPreserveFlags(&v51, &v52.var2 + 7);
    if (v17)
    {
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(a3, v51._flags, v24, v27, v28, v29);
    }

    else
    {
      v50._lower = objc_msgSend_tableUID(self, v25, v26, v27, v28);
      v50._upper = v47;
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(a3, &v50, v51._flags, v24, v48, v49);
    }
  }

  else
  {

    TSCEASTRelativeCoordRefElement::appendReferenceError(a3, v19, v20, v21, v22, v23);
  }
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  v9 = a6;
  if (!objc_msgSend_isCategoryRef(self, v10, v11, v12, v13))
  {
    v25 = objc_msgSend_tableUID(self, v14, v15, v16, v17);
    v27 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v26, v25, v26, v9);
    if (objc_msgSend_isAPivotTable(v27, v28, v29, v30, v31))
    {
      v36 = objc_msgSend_uidRectRef(self, v32, v33, v34, v35);
      v41 = objc_msgSend_viewTractRef(v36, v37, v38, v39, v40);

      if (objc_msgSend_isValid(v41, v42, v43, v44, v45))
      {
        *&v153[0]._flags = 0;
        v51 = objc_msgSend_uidRectRef(self, v46, v47, v48, v49);
        v55 = objc_msgSend_uidTractListWithPurpose_(v51, v52, 4, v53, v54);

        v151[0]._flags = objc_msgSend_preserveFlags(v55, v56, v57, v58, v59);
        TSCEASTRefFlags::setPreserveFlags(&v153[1], v151);
        v153[0]._flags = (4 * objc_msgSend_preserveFlags(v55, v60, v61, v62, v63)) & 0x10;
        v153[0]._flags = v153[0]._flags & 0xDF | (32 * ((objc_msgSend_preserveFlags(v55, v64, v65, v66, v67) & 8) != 0));
        v72 = objc_msgSend_uidRectRef(self, v68, v69, v70, v71);
        v77 = objc_msgSend_area(v72, v73, v74, v75, v76);

        if (v77 != 1 || (objc_msgSend_bottomRight(v41, v78, v79, v80, v81) & 0x101FFFFFFFFFFFFLL) != 0 || (objc_msgSend_spansAllRows(v41, v78, v79, v80, v81) & 1) != 0 || (objc_msgSend_spansAllColumns(v41, v78, v79, v80, v81) & 1) != 0)
        {
          *&v151[0]._flags = objc_msgSend_tableUID(self, v78, v79, v80, v81);
          v152 = v82;
          TSCEASTViewTractRefElement::appendViewTractRefElement(a3, v151, &v153[1], v153, v55, 255, 255, 0xFFFF);
        }

        else
        {
          v138 = [TSCEViewTractRef alloc];
          *&v151[0]._flags = objc_msgSend_tableUID(self, v139, v140, v141, v142);
          v152 = v143;
          v146 = objc_msgSend_initWithTableUID_(v138, v143, v151, v144, v145);
          objc_msgSend_setPreserveFlags_(v146, v147, 15, v148, v149);
          TSCEASTViewTractRefElement::appendViewTractRefElement(a3, v146, v150);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v83 = objc_msgSend_uidRectRef(self, v32, v33, v34, v35);
      v41 = objc_msgSend_baseTractRef(v83, v84, v85, v86, v87);

      v92 = objc_msgSend_basePreserveFlags(self, v88, v89, v90, v91);
      if (objc_msgSend_isSingleCellOrSpanningRange(v41, v93, v94, v95, v96) && (v92 & 3) == v92 >> 2)
      {
        v101 = objc_msgSend_topLeft(v41, v97, v98, v99, v100);
        objc_msgSend_appendToNodeArray_forCoord_preserveFlags_hostCellRef_calcEngine_(self, v102, a3, v101, v92 & 3, a4, v9);
LABEL_23:

        goto LABEL_24;
      }

      if (v41 && objc_msgSend_isValid(v41, v97, v98, v99, v100))
      {
        v103 = [TSCERelativeTractRef alloc];
        *&v151[0]._flags = a4->coordinate;
        v106 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v103, v104, v41, v151, v105);
        if (objc_msgSend_tableUID(v106, v107, v108, v109, v110) == a4->_tableUID._lower && v111 == a4->_tableUID._upper)
        {
          objc_msgSend_setTableUID_(v106, v111, 0, 0, v113);
        }

        TSCEASTColonTractElement::appendColonTractElement(a3, v106, 0, v112);

        goto LABEL_23;
      }

      v114 = objc_msgSend_uidRectRef(self, v97, v98, v99, v100);
      isValid = objc_msgSend_isValid(v114, v115, v116, v117, v118);

      if (isValid)
      {
        v151[0]._flags = 0;
        v153[1]._flags = v92;
        TSCEASTRefFlags::setPreserveFlags(v151, &v153[1]);
        v124 = objc_msgSend_uidRectRef(self, v120, v121, v122, v123);
        v55 = objc_msgSend_includeUidTractList(v124, v125, v126, v127, v128);

        TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(a3, v151[0]._flags, v55, v129, v130, v131);
LABEL_21:

        goto LABEL_23;
      }
    }

    TSCEASTRelativeCoordRefElement::appendReferenceError(a3, v46, v47, v48, v49, v50);
    goto LABEL_23;
  }

  v18 = objc_msgSend_convertCategoryRefToRelativeForHostCell_calcEngine_(self, v14, a4, v9, v17);
  categoryRef = self->_categoryRef;
  self->_categoryRef = v18;

  TSCEASTCategoryRefElement::appendCategoryRefElement(a3, self->_categoryRef, v20);
LABEL_24:
  v132 = objc_msgSend_whitespaceBefore(self, v21, v22, v23, v24);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v132);

  v137 = objc_msgSend_whitespaceAfter(self, v133, v134, v135, v136);
  TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v137);
}

- (void)setHostCellRef:(TSCECellRef *)a3
{
  upper = a3->_tableUID._upper;
  *&self->_hostCellRef.coordinate.row = *&a3->coordinate.row;
  self->_hostCellRef._tableUID._upper = upper;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end