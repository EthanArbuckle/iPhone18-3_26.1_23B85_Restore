@interface TSCERelativeTractRef
- (BOOL)isEqual:(id)a3;
- (BOOL)isRectangularRange;
- (BOOL)isSingleCellOrSpanningRange;
- (BOOL)verifySpanningSettings;
- (TSCERelativeCellCoordinate)relativeBottomRight;
- (TSCERelativeCellCoordinate)relativeTopLeft;
- (TSCERelativeRangeCoordinate)relativeBoundingRangeWithContainingCell:(const TSUCellCoord *)a3;
- (TSCERelativeTractRef)init;
- (TSCERelativeTractRef)initWithAbsoluteTractRef:(id)a3 hostCell:(const TSUCellCoord *)a4;
- (TSCERelativeTractRef)initWithRangeRef:(const TSCERangeRef *)a3 hostCell:(const TSUCellCoord *)a4;
- (TSCERelativeTractRef)initWithTableUID:(const TSKUIDStruct *)a3 preserveFlags:(const TSUPreserveFlags *)a4;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)absoluteCellTractRefForHostCell:(const TSUCellCoord *)a3 offTable:(BOOL *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addRelativeColumn:(signed __int16)a3;
- (void)addRelativeColumnRange:(const TSUIndexRange *)a3;
- (void)addRelativeRow:(int)a3;
- (void)addRelativeRowRange:(const TSUIndexRange *)a3;
- (void)adjustRelativeIndexesBy:(const TSUColumnRowOffset *)a3;
- (void)normalizeSpanningSettings;
- (void)preserveFlagsFixingInversionsForTract:(id)a3 absFromRelColumns:(const TSUIndexSet *)a4 absFromRelRows:(const TSUIndexSet *)a5;
- (void)removeRelativeColumnRange:(const TSUIndexRange *)a3;
- (void)removeRelativeRowRange:(const TSUIndexRange *)a3;
- (void)setSpansAllColumns:(BOOL)a3;
- (void)setSpansAllRows:(BOOL)a3;
@end

@implementation TSCERelativeTractRef

- (TSCERelativeTractRef)init
{
  v10.receiver = self;
  v10.super_class = TSCERelativeTractRef;
  v2 = [(TSCERelativeTractRef *)&v10 init];
  if (v2)
  {
    TSUIndexSet::TSUIndexSet(&v9);
    v3 = [TSCECellTractRef alloc];
    v8[0] = 0;
    v8[1] = 0;
    v5 = objc_msgSend_initWithColumns_rows_tableUID_(v3, v4, &v9, &v9, v8);
    absTractRef = v2->_absTractRef;
    v2->_absTractRef = v5;

    TSUIndexSet::~TSUIndexSet(&v9);
  }

  return v2;
}

- (TSCERelativeTractRef)initWithTableUID:(const TSKUIDStruct *)a3 preserveFlags:(const TSUPreserveFlags *)a4
{
  v16.receiver = self;
  v16.super_class = TSCERelativeTractRef;
  v6 = [(TSCERelativeTractRef *)&v16 init];
  if (v6)
  {
    TSUIndexSet::TSUIndexSet(&v15);
    v7 = [TSCECellTractRef alloc];
    v9 = objc_msgSend_initWithColumns_rows_tableUID_(v7, v8, &v15, &v15, a3);
    absTractRef = v6->_absTractRef;
    v6->_absTractRef = v9;

    objc_msgSend_setPreserveFlags_(v6->_absTractRef, v11, a4->_flags, v12, v13);
    TSUIndexSet::~TSUIndexSet(&v15);
  }

  return v6;
}

- (TSCERelativeTractRef)initWithAbsoluteTractRef:(id)a3 hostCell:(const TSUCellCoord *)a4
{
  v6 = a3;
  TSUIndexSet::TSUIndexSet(&v123);
  TSUIndexSet::TSUIndexSet(&v122);
  TSUIndexSet::TSUIndexSet(&v121);
  TSUIndexSet::TSUIndexSet(&v120);
  if (!objc_msgSend_isValid(v6, v7, v8, v9, v10))
  {
    goto LABEL_6;
  }

  if ((objc_msgSend_spansAllColumns(v6, v11, v12, v13, v14) & 1) != 0 || (objc_msgSend_preserveFlags(v6, v15, v16, v17, v18) & 1) != 0 && (objc_msgSend_preserveFlags(v6, v15, v16, v17, v18) & 4) != 0)
  {
    goto LABEL_3;
  }

  if (objc_msgSend_preserveFlags(v6, v15, v16, v17, v18))
  {
    v76 = objc_msgSend_columns(v6, v64, v65, v66, v67);
    if (TSUIndexSet::count(v76))
    {
      v77 = objc_msgSend_columns(v6, v19, v20, v21, v22);
      TSUIndexSet::firstIndex(v77);
      TSUIndexSet::addIndex(&v123);
      objc_msgSend_columns(v6, v78, v79, v80, v81);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v121) >= 2)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    if ((objc_msgSend_preserveFlags(v6, v64, v65, v66, v67) & 4) == 0)
    {
LABEL_3:
      objc_msgSend_columns(v6, v15, v16, v17, v18);
      TSUIndexSet::operator=();
      goto LABEL_4;
    }

    v92 = objc_msgSend_columns(v6, v15, v16, v17, v18);
    if (TSUIndexSet::count(v92))
    {
      v93 = objc_msgSend_columns(v6, v19, v20, v21, v22);
      TSUIndexSet::lastIndex(v93);
      TSUIndexSet::addIndex(&v123);
      objc_msgSend_columns(v6, v94, v95, v96, v97);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v121) >= 2)
      {
LABEL_27:
        TSUIndexSet::removeIndex(&v121);
      }
    }
  }

LABEL_4:
  if ((objc_msgSend_spansAllRows(v6, v19, v20, v21, v22) & 1) != 0 || (objc_msgSend_preserveFlags(v6, v23, v24, v25, v26) & 2) != 0 && (objc_msgSend_preserveFlags(v6, v23, v24, v25, v26) & 8) != 0)
  {
    goto LABEL_5;
  }

  if ((objc_msgSend_preserveFlags(v6, v23, v24, v25, v26) & 2) != 0)
  {
    v82 = objc_msgSend_rows(v6, v68, v69, v70, v71);
    if (TSUIndexSet::count(v82))
    {
      v87 = objc_msgSend_rows(v6, v83, v84, v85, v86);
      TSUIndexSet::firstIndex(v87);
      TSUIndexSet::addIndex(&v122);
      objc_msgSend_rows(v6, v88, v89, v90, v91);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v120) >= 2)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if ((objc_msgSend_preserveFlags(v6, v68, v69, v70, v71) & 8) == 0)
    {
LABEL_5:
      objc_msgSend_rows(v6, v23, v24, v25, v26);
      TSUIndexSet::operator=();
      goto LABEL_6;
    }

    v98 = objc_msgSend_rows(v6, v23, v24, v25, v26);
    if (TSUIndexSet::count(v98))
    {
      v103 = objc_msgSend_rows(v6, v99, v100, v101, v102);
      TSUIndexSet::lastIndex(v103);
      TSUIndexSet::addIndex(&v122);
      objc_msgSend_rows(v6, v104, v105, v106, v107);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v120) >= 2)
      {
LABEL_30:
        TSUIndexSet::removeIndex(&v120);
      }
    }
  }

LABEL_6:
  v119.receiver = self;
  v119.super_class = TSCERelativeTractRef;
  v31 = [(TSCERelativeTractRef *)&v119 init];
  if (v31 && objc_msgSend_isValid(v6, v27, v28, v29, v30))
  {
    v32 = [TSCECellTractRef alloc];
    v112 = objc_msgSend_tableUID(v6, v33, v34, v35, v36);
    v113 = v37;
    v38 = objc_msgSend_initWithColumns_rows_tableUID_(v32, v37, &v123, &v122, &v112);
    absTractRef = v31->_absTractRef;
    v31->_absTractRef = v38;

    v44 = objc_msgSend_preserveFlags(v6, v40, v41, v42, v43);
    objc_msgSend_setPreserveFlags_(v31->_absTractRef, v45, v44, v46, v47);
    v112 = 0;
    v113 = &v112;
    v114 = 0x5012000000;
    v115 = sub_22121A2E4;
    v116 = sub_22121A308;
    v117 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v118);
    v110[0] = 0;
    v110[1] = v110;
    v110[2] = 0x5012000000;
    v110[3] = sub_22121A2E4;
    v110[4] = sub_22121A308;
    v110[5] = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v111);
    v109 = MEMORY[0x277D85DD0];
    TSUIndexSet::enumerateRangesUsingBlock();
    v108 = MEMORY[0x277D85DD0];
    TSUIndexSet::enumerateRangesUsingBlock();
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v52 = objc_msgSend_preserveRectangular(v6, v48, v49, v50, v51, v108, 3221225472, sub_22121A354, &unk_2784618D0, v110, a4, v109, 3221225472, sub_22121A310, &unk_2784618D0, &v112, a4);
    objc_msgSend_setPreserveRectangular_(v31, v53, v52, v54, v55);
    if (objc_msgSend_spansAllColumns(v6, v56, v57, v58, v59))
    {
      objc_msgSend_setSpansAllColumns_(v31, v60, 1, v62, v63);
    }

    else if (objc_msgSend_spansAllRows(v6, v60, v61, v62, v63))
    {
      objc_msgSend_setSpansAllRows_(v31, v72, 1, v73, v74);
    }

    _Block_object_dispose(v110, 8);
    TSUIndexSet::~TSUIndexSet(&v111);
    _Block_object_dispose(&v112, 8);
    TSUIndexSet::~TSUIndexSet(&v118);
  }

  else
  {

    v31 = 0;
  }

  TSUIndexSet::~TSUIndexSet(&v120);
  TSUIndexSet::~TSUIndexSet(&v121);
  TSUIndexSet::~TSUIndexSet(&v122);
  TSUIndexSet::~TSUIndexSet(&v123);

  return v31;
}

- (TSCERelativeTractRef)initWithRangeRef:(const TSCERangeRef *)a3 hostCell:(const TSUCellCoord *)a4
{
  v7 = [TSCECellTractRef alloc];
  v11 = objc_msgSend_initWithRangeRef_(v7, v8, a3, v9, v10);
  v14 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(self, v12, v11, a4, v13);

  return v14;
}

- (void)setSpansAllColumns:(BOOL)a3
{
  v5 = a3;
  objc_msgSend_setSpansAllColumns_(self->_absTractRef, a2, a3, v3, v4);
  if (v5)
  {

    TSUIndexSet::removeAllIndexes(&self->_relativeColumns);
  }
}

- (void)setSpansAllRows:(BOOL)a3
{
  v5 = a3;
  objc_msgSend_setSpansAllRows_(self->_absTractRef, a2, a3, v3, v4);
  if (v5)
  {

    TSUIndexSet::removeAllIndexes(&self->_relativeRows);
  }
}

- (TSKUIDStruct)tableUID
{
  v5 = objc_msgSend_tableUID(self->_absTractRef, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCERelativeTractRef alloc];
  v24[0] = objc_msgSend_tableUID(self, v5, v6, v7, v8);
  v24[1] = v9;
  v23 = objc_msgSend_preserveFlags(self, v9, v10, v11, v12);
  v15 = objc_msgSend_initWithTableUID_preserveFlags_(v4, v13, v24, &v23, v14);
  v20 = objc_msgSend_copy(self->_absTractRef, v16, v17, v18, v19);
  v21 = v15[1];
  v15[1] = v20;

  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  return v15;
}

- (void)addRelativeColumn:(signed __int16)a3
{
  if (a3 == 0x7FFF)
  {

    objc_msgSend_setSpansAllColumns_(self, a2, 1, v3, v4);
  }

  else if (objc_msgSend_spansAllColumns(self, a2, a3, v3, v4))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCERelativeTractRef addRelativeColumn:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 266, 0, "Cannot mix spanning and non-spanning column");

    v20 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
  }

  else
  {

    TSUIndexSet::addIndex(&self->_relativeColumns);
  }
}

- (void)addRelativeRow:(int)a3
{
  if (a3 == 0x7FFFFFFF)
  {

    objc_msgSend_setSpansAllRows_(self, a2, 1, v3, v4);
  }

  else if (objc_msgSend_spansAllRows(self, a2, *&a3, v3, v4))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCERelativeTractRef addRelativeRow:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 276, 0, "Cannot mix spanning and non-spanning row");

    v20 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
  }

  else
  {

    TSUIndexSet::addIndex(&self->_relativeRows);
  }
}

- (void)addRelativeColumnRange:(const TSUIndexRange *)a3
{
  begin = a3->_begin;
  if (a3->_begin <= 0x7FFFFFFF && a3->_end == begin)
  {
    if (begin == 0x7FFF)
    {
      objc_msgSend_setSpansAllColumns_(self, 0x7FFF, 1, v3, v4);
    }

    else
    {
      TSUIndexSet::addIndex(&self->_relativeColumns);
    }
  }

  else
  {
    TSUIndexSet::addIndexesInRange(&self->_relativeColumns, a3);
  }
}

- (void)addRelativeRowRange:(const TSUIndexRange *)a3
{
  begin = a3->_begin;
  if (a3->_begin <= 0x7FFFFFFF && a3->_end == begin)
  {
    if (begin == 0x7FFFFFFF)
    {
      objc_msgSend_setSpansAllRows_(self, 0x7FFFFFFF, 1, v3, v4);
    }

    else
    {
      TSUIndexSet::addIndex(&self->_relativeRows);
    }
  }

  else
  {
    TSUIndexSet::addIndexesInRange(&self->_relativeRows, a3);
  }
}

- (void)removeRelativeColumnRange:(const TSUIndexRange *)a3
{
  TSUIndexSet::removeIndexesInRange(&self->_relativeColumns, a3);

  objc_msgSend_normalizeSpanningSettings(self, v4, v5, v6, v7);
}

- (void)removeRelativeRowRange:(const TSUIndexRange *)a3
{
  TSUIndexSet::removeIndexesInRange(&self->_relativeRows, a3);

  objc_msgSend_normalizeSpanningSettings(self, v4, v5, v6, v7);
}

- (BOOL)isRectangularRange
{
  isRectangularRange = objc_msgSend_isRectangularRange(self->_absTractRef, a2, v2, v3, v4);
  if (isRectangularRange)
  {
    if ((objc_msgSend_spansAllColumns(self, v7, v8, v9, v10) & 1) != 0 || ((*&self->_relativeColumns & 2) != 0 || (*&self->_relativeColumns & 1) != 0 || *(self->_relativeColumns._multipleRanges + 1) <= 1uLL) && ((v19 = objc_msgSend_columns(self->_absTractRef, v11, v12, v13, v14), (*v19 & 2) != 0) || (*v19 & 1) != 0 || *(*(v19 + 24) + 8) <= 1uLL) && (!TSUIndexSet::count(&self->_relativeColumns) || (v20 = objc_msgSend_columns(self->_absTractRef, v11, v12, v13, v14), !TSUIndexSet::count(v20))))
    {
      if (objc_msgSend_spansAllRows(self, v11, v12, v13, v14))
      {
LABEL_4:
        LOBYTE(isRectangularRange) = 1;
        return isRectangularRange;
      }

      if ((*&self->_relativeRows & 2) != 0 || (*&self->_relativeRows & 1) != 0 || *(self->_relativeRows._multipleRanges + 1) <= 1uLL)
      {
        v21 = objc_msgSend_rows(self->_absTractRef, v15, v16, v17, v18);
        if ((*v21 & 2) != 0 || (*v21 & 1) != 0 || *(*(v21 + 24) + 8) <= 1uLL)
        {
          if (TSUIndexSet::count(&self->_relativeRows))
          {
            v26 = objc_msgSend_rows(self->_absTractRef, v22, v23, v24, v25);
            LOBYTE(isRectangularRange) = TSUIndexSet::count(v26) == 0;
            return isRectangularRange;
          }

          goto LABEL_4;
        }
      }
    }

    LOBYTE(isRectangularRange) = 0;
  }

  return isRectangularRange;
}

- (BOOL)isSingleCellOrSpanningRange
{
  if (objc_msgSend_spansAllRows(self, a2, v2, v3, v4) || ((v10 = objc_msgSend_spansAllColumns(self, v6, v7, v8, v9), v15 = objc_msgSend_numRows(self->_absTractRef, v11, v12, v13, v14), v16 = TSUIndexSet::count(&self->_relativeRows) + v15, v16 == 1) ? (result = v10) : (result = 0), (v10 & 1) == 0 && v16 == 1))
  {
    v18 = objc_msgSend_numColumns(self->_absTractRef, v6, v7, v8, v9);
    return TSUIndexSet::count(&self->_relativeColumns) + v18 == 1;
  }

  return result;
}

- (void)normalizeSpanningSettings
{
  if ((objc_msgSend_spansAllColumns(self, a2, v2, v3, v4) & 1) == 0 && !TSUIndexSet::count(&self->_relativeColumns))
  {
    v10 = objc_msgSend_columns(self->_absTractRef, v6, v7, v8, v9);
    v11 = TSUIndexSet::count(v10);
    if (!v11 || v11 == 1 && (v12 = objc_msgSend_columns(self->_absTractRef, v6, v7, v8, v9), TSUIndexSet::firstIndex(v12) == 0x7FFF))
    {
      objc_msgSend_setSpansAllColumns_(self, v6, 1, v8, v9);
    }
  }

  if ((objc_msgSend_spansAllRows(self, v6, v7, v8, v9) & 1) == 0 && !TSUIndexSet::count(&self->_relativeRows))
  {
    v17 = objc_msgSend_rows(self->_absTractRef, v13, v14, v15, v16);
    v18 = TSUIndexSet::count(v17);
    if (!v18 || v18 == 1 && (v23 = objc_msgSend_rows(self->_absTractRef, v19, v20, v21, v22), TSUIndexSet::firstIndex(v23) == 0x7FFFFFFF))
    {

      objc_msgSend_setSpansAllRows_(self, v19, 1, v21, v22);
    }
  }
}

- (BOOL)verifySpanningSettings
{
  if (objc_msgSend_spansAllColumns(self, a2, v2, v3, v4) & 1) != 0 || (objc_msgSend_spansAllRows(self, v6, v7, v8, v9))
  {
    v10 = 1;
  }

  else
  {
    v26 = objc_msgSend_relativeColumns(self, v6, v7, v8, v9);
    v31 = TSUIndexSet::containsIndex(v26);
    if (v31)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCERelativeTractRef verifySpanningSettings]", v29, v30);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 452, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    }

    v43 = objc_msgSend_relativeRows(self, v27, v28, v29, v30);
    if (TSUIndexSet::containsIndex(v43))
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSCERelativeTractRef verifySpanningSettings]", v46, v47);
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v51, v52);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 457, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
      v10 = 0;
    }

    else
    {
      v10 = v31 ^ 1;
    }

    v101 = objc_msgSend_columns(self, v44, v45, v46, v47);
    if (TSUIndexSet::containsIndex(v101))
    {
      v106 = MEMORY[0x277D81150];
      v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "[TSCERelativeTractRef verifySpanningSettings]", v104, v105);
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v109, v110);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v112, v107, v111, 462, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115, v116);
      v10 = 0;
    }

    v117 = objc_msgSend_rows(self, v102, v103, v104, v105);
    if (TSUIndexSet::containsIndex(v117))
    {
      v118 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCERelativeTractRef verifySpanningSettings]", v8, v9);
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v121, v122);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v124, v119, v123, 467, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127, v128);
      v10 = 0;
    }
  }

  if ((objc_msgSend_spansAllColumns(self, v6, v7, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_preserveFlags(self, v11, v12, v13, v14))
    {
      v59 = objc_msgSend_columns(self->_absTractRef, v15, v16, v17, v18);
      if (TSUIndexSet::count(v59))
      {
        goto LABEL_15;
      }

      v60 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERelativeTractRef verifySpanningSettings]", v13, v14);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v62, v63);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v20, v24, 476, 0, "No absolute column found, but not marked as spanning");
    }

    else
    {
      if (TSUIndexSet::count(&self->_relativeColumns))
      {
        goto LABEL_15;
      }

      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERelativeTractRef verifySpanningSettings]", v13, v14);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 481, 0, "No relative column found, but not marked as spanning");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
    v10 = 0;
  }

LABEL_15:
  if ((objc_msgSend_spansAllRows(self, v11, v12, v13, v14) & 1) == 0)
  {
    if ((objc_msgSend_preserveFlags(self, v69, v70, v71, v72) & 2) != 0)
    {
      v87 = objc_msgSend_rows(self->_absTractRef, v73, v74, v75, v76);
      if (!TSUIndexSet::count(v87))
      {
        v91 = MEMORY[0x277D81150];
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "[TSCERelativeTractRef verifySpanningSettings]", v89, v90);
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v93, v94);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v95, v81, v85, 490, 0, "No absolute row found, but not marked as spanning");
        goto LABEL_21;
      }
    }

    else if (!TSUIndexSet::count(&self->_relativeRows))
    {
      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSCERelativeTractRef verifySpanningSettings]", v78, v79);
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v83, v84);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v86, v81, v85, 495, 0, "No relative row found, but not marked as spanning");
LABEL_21:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99);
      return 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_relativeColumns(self, a2, v2, v3, v4);
  v7 = TSUIndexSet::hash(v6);
  v12 = objc_msgSend_relativeRows(self, v8, v9, v10, v11);
  v13 = TSUIndexSet::hash(v12);
  v15.receiver = self;
  v15.super_class = TSCERelativeTractRef;
  return [(TSCERelativeTractRef *)&v15 hash]+ 3 * v7 + v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (objc_msgSend_isEqual_(self->_absTractRef, v6, v5[1], v7, v8) && (objc_msgSend_relativeColumns(self, v9, v10, v11, v12), objc_msgSend_relativeColumns(v5, v13, v14, v15, v16), TSUIndexSet::operator==()))
    {
      objc_msgSend_relativeRows(self, v17, v18, v19, v20);
      objc_msgSend_relativeRows(v5, v21, v22, v23, v24);
      v25 = TSUIndexSet::operator==();
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (TSCERelativeCellCoordinate)relativeTopLeft
{
  if ((objc_msgSend_spansAllColumns(self, a2, v2, v3, v4) & 1) == 0)
  {
    if (objc_msgSend_preserveFlags(self, v6, v7, v8, v9))
    {
      v18 = objc_msgSend_columns(self->_absTractRef, v10, v11, v12, v13);
      if (TSUIndexSet::count(v18))
      {
        v23 = objc_msgSend_columns(self->_absTractRef, v19, v20, v21, v22);
        Index = TSUIndexSet::firstIndex(v23);
        goto LABEL_11;
      }

      v31 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCERelativeTractRef relativeTopLeft]", v21, v22);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v25, v29, 533, 0, "No absolute column found, but not marked as spanning");
    }

    else
    {
      if (TSUIndexSet::count(&self->_relativeColumns))
      {
        Index = TSUIndexSet::firstIndex(&self->_relativeColumns);
        goto LABEL_11;
      }

      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCERelativeTractRef relativeTopLeft]", v15, v16);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 539, 0, "No relative column found, but not marked as spanning");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  Index = 0x7FFF;
LABEL_11:
  if (objc_msgSend_spansAllRows(self, v6, v7, v8, v9))
  {
LABEL_20:
    v51 = 0x7FFFFFFFLL;
    goto LABEL_21;
  }

  if ((objc_msgSend_preserveFlags(self, v40, v41, v42, v43) & 2) != 0)
  {
    v52 = objc_msgSend_rows(self->_absTractRef, v44, v45, v46, v47);
    if (TSUIndexSet::count(v52))
    {
      v57 = objc_msgSend_rows(self->_absTractRef, v53, v54, v55, v56);
      v51 = TSUIndexSet::firstIndex(v57);
      goto LABEL_21;
    }

    v65 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSCERelativeTractRef relativeTopLeft]", v55, v56);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v67, v68);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v59, v63, 549, 0, "No absolute row found, but not marked as spanning");
    goto LABEL_19;
  }

  if (!TSUIndexSet::count(&self->_relativeRows))
  {
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSCERelativeTractRef relativeTopLeft]", v49, v50);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v61, v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 555, 0, "No relative row found, but not marked as spanning");
LABEL_19:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    goto LABEL_20;
  }

  v51 = TSUIndexSet::firstIndex(&self->_relativeRows);
LABEL_21:
  v74 = objc_msgSend_preserveFlags(self, v40, v41, v42, v43) & 1;
  v79 = objc_msgSend_preserveFlags(self, v75, v76, v77, v78);
  sub_2210898C4(Index, v80, v81, v82, v83);
  sub_2210899C8(v51, v84, v85, v86, v87);
  sub_2210898C4(Index, v88, v89, v90, v91);
  sub_2210899C8(v51, v92, v93, v94, v95);
  return (((v79 & 2) << 47) | (v74 << 56) | (Index << 32) | v51);
}

- (TSCERelativeCellCoordinate)relativeBottomRight
{
  if (objc_msgSend_spansAllColumns(self, a2, v2, v3, v4))
  {
    goto LABEL_2;
  }

  if ((objc_msgSend_preserveFlags(self, v6, v7, v8, v9) & 4) == 0)
  {
    if (TSUIndexSet::count(&self->_relativeColumns))
    {
      Index = TSUIndexSet::lastIndex(&self->_relativeColumns);
      goto LABEL_3;
    }

    v67 = objc_msgSend_columns(self->_absTractRef, v43, v44, v45, v46);
    if (TSUIndexSet::count(v67))
    {
      v72 = MEMORY[0x277D81150];
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "[TSCERelativeTractRef relativeBottomRight]", v70, v71);
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v75, v76);
      v82 = objc_msgSend_columns(self->_absTractRef, v78, v79, v80, v81);
      v83 = TSUIndexSet::count(v82);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v84, v73, v77, 579, 0, "Non-spanning ref has %d absolute columns", v83);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
    }

    v89 = objc_msgSend_columns(self->_absTractRef, v68, v69, v70, v71);
    if (TSUIndexSet::count(v89))
    {
      goto LABEL_2;
    }

    v90 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCERelativeTractRef relativeBottomRight]", v8, v9);
    v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v93, v94);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v96, v91, v95, 580, 0, "No absolute columns found, but not marked as spanning");
LABEL_24:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119, v120);
LABEL_2:
    Index = 0x7FFF;
    goto LABEL_3;
  }

  v55 = objc_msgSend_columns(self->_absTractRef, v39, v40, v41, v42);
  if (!TSUIndexSet::count(v55))
  {
    if (TSUIndexSet::count(&self->_relativeColumns))
    {
      v100 = MEMORY[0x277D81150];
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSCERelativeTractRef relativeBottomRight]", v98, v99);
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v103, v104);
      v106 = TSUIndexSet::count(&self->_relativeColumns);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v101, v105, 572, 0, "Non-spanning ref has %d relative columns", v106);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110, v111);
    }

    if (TSUIndexSet::count(&self->_relativeColumns))
    {
      goto LABEL_2;
    }

    v112 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCERelativeTractRef relativeBottomRight]", v8, v9);
    v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v114, v115);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v116, v91, v95, 573, 0, "No relative columns found, but not marked as spanning");
    goto LABEL_24;
  }

  v60 = objc_msgSend_columns(self->_absTractRef, v56, v57, v58, v59);
  Index = TSUIndexSet::lastIndex(v60);
LABEL_3:
  if (objc_msgSend_spansAllRows(self, v6, v7, v8, v9))
  {
    goto LABEL_4;
  }

  if ((objc_msgSend_preserveFlags(self, v11, v12, v13, v14) & 8) != 0)
  {
    v61 = objc_msgSend_rows(self->_absTractRef, v47, v48, v49, v50);
    if (TSUIndexSet::count(v61))
    {
      v66 = objc_msgSend_rows(self->_absTractRef, v62, v63, v64, v65);
      v15 = TSUIndexSet::lastIndex(v66);
      goto LABEL_5;
    }

    if (TSUIndexSet::count(&self->_relativeRows))
    {
      v154 = MEMORY[0x277D81150];
      v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "[TSCERelativeTractRef relativeBottomRight]", v152, v153);
      v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v157, v158);
      v160 = TSUIndexSet::count(&self->_relativeRows);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v161, v155, v159, 590, 0, "Non-spanning ref has %d relative rows", v160);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164, v165);
    }

    if (TSUIndexSet::count(&self->_relativeRows))
    {
      goto LABEL_4;
    }

    v166 = MEMORY[0x277D81150];
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERelativeTractRef relativeBottomRight]", v13, v14);
    v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v168, v169);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v170, v145, v149, 591, 0, "No relative rows found, but not marked as spanning");
    goto LABEL_33;
  }

  if (TSUIndexSet::count(&self->_relativeRows))
  {
    v15 = TSUIndexSet::lastIndex(&self->_relativeRows);
    goto LABEL_5;
  }

  v121 = objc_msgSend_rows(self->_absTractRef, v51, v52, v53, v54);
  if (TSUIndexSet::count(v121))
  {
    v126 = MEMORY[0x277D81150];
    v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "[TSCERelativeTractRef relativeBottomRight]", v124, v125);
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v129, v130);
    v136 = objc_msgSend_rows(self->_absTractRef, v132, v133, v134, v135);
    v137 = TSUIndexSet::count(v136);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v138, v127, v131, 597, 0, "Non-spanning ref has %d absolute rows", v137);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v139, v140, v141, v142);
  }

  v143 = objc_msgSend_rows(self->_absTractRef, v122, v123, v124, v125);
  if (!TSUIndexSet::count(v143))
  {
    v144 = MEMORY[0x277D81150];
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERelativeTractRef relativeBottomRight]", v13, v14);
    v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v147, v148);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v150, v145, v149, 598, 0, "No absolute rows found, but not marked as spanning");
LABEL_33:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172, v173, v174);
  }

LABEL_4:
  v15 = 0x7FFFFFFFLL;
LABEL_5:
  v16 = objc_msgSend_preserveFlags(self, v11, v12, v13, v14);
  v21 = objc_msgSend_preserveFlags(self, v17, v18, v19, v20);
  sub_2210898C4(Index, v22, v23, v24, v25);
  sub_2210899C8(v15, v26, v27, v28, v29);
  sub_2210898C4(Index, v30, v31, v32, v33);
  sub_2210899C8(v15, v34, v35, v36, v37);
  return (((v16 & 4) << 54) | ((((v21 & 8) >> 3) & 1) << 48) | (Index << 32) | v15);
}

- (TSCERelativeRangeCoordinate)relativeBoundingRangeWithContainingCell:(const TSUCellCoord *)a3
{
  RelativeCellCoordinateFromAbsoluteCoordinates = objc_msgSend_relativeTopLeft(self, a2, a3, v3, v4);
  v12 = objc_msgSend_relativeBottomRight(self, v8, v9, v10, v11);
  v17 = objc_msgSend_preserveFlags(self, v13, v14, v15, v16);
  if (v17)
  {
    v20 = v17;
    v21 = *a3;
    v37._flags = v20 & 3;
    v22 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v21, RelativeCellCoordinateFromAbsoluteCoordinates, &v37, v18, v19);
    v23 = *a3;
    v36._flags = (v20 >> 2) & 3;
    v26 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v23, v12, &v36, v24, v25);
    v35 = 0;
    v27 = &v35;
    v28 = v22;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*a3, v28, v27, v29);
    v30 = &v35;
    v31 = v26;
    v12 = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*a3, v31, v30, v32);
  }

  v33 = RelativeCellCoordinateFromAbsoluteCoordinates;
  v34 = v12;
  result.var1 = v34;
  result.var0 = v33;
  return result;
}

- (void)preserveFlagsFixingInversionsForTract:(id)a3 absFromRelColumns:(const TSUIndexSet *)a4 absFromRelRows:(const TSUIndexSet *)a5
{
  v41 = a3;
  v16 = objc_msgSend_preserveFlags(self->_absTractRef, v8, v9, v10, v11);
  if (((v16 ^ (v16 >> 2)) & 3) != 0)
  {
    v17 = objc_msgSend_topLeft(v41, v12, v13, v14, v15);
    v23 = objc_msgSend_bottomRight(v41, v18, v19, v20, v21);
    if ((v16 & 1) == (v16 & 4) >> 2 || objc_msgSend_spansAllColumns(self, v12, v22, v14, v15))
    {
      v24 = v16 & 5;
LABEL_5:
      if (((v16 >> 1) & 1) == (v16 & 8) >> 3 || objc_msgSend_spansAllRows(self, v12, v22, v14, v15))
      {
        LOBYTE(v16) = v16 & 0xA | v24;
        goto LABEL_8;
      }

      absTractRef = self->_absTractRef;
      if (v23 == v17)
      {
        v30 = objc_msgSend_rows(absTractRef, v12, v25, v14, v15);
        if (TSUIndexSet::containsIndex(v30) != (v16 & 2) >> 1)
        {
LABEL_27:
          objc_msgSend_setMixedRowStartedWithPreserve_(v41, v35, 0, v37, v38);
          LOBYTE(v16) = v24 | 8;
          goto LABEL_8;
        }
      }

      else
      {
        v33 = objc_msgSend_rows(absTractRef, v12, v25, v14, v15);
        v34 = TSUIndexSet::containsIndex(v33);
        if ((v34 & 1) == 0)
        {
          v40 = objc_msgSend_rows(self->_absTractRef, v35, v36, v37, v38);
          if (TSUIndexSet::containsIndex(v40) & 1) != 0 || (TSUIndexSet::containsIndex(a5))
          {
            goto LABEL_27;
          }
        }
      }

      objc_msgSend_setMixedRowStartedWithPreserve_(v41, v35, 1, v37, v38);
      LOBYTE(v16) = v24 | 2;
      goto LABEL_8;
    }

    if (WORD2(v23) == WORD2(v17))
    {
      if ((v16 ^ TSUIndexSet::containsIndex(a4)))
      {
LABEL_24:
        objc_msgSend_setMixedColumnStartedWithPreserve_(v41, v26, 0, v27, v28);
        v24 = 4;
        goto LABEL_5;
      }
    }

    else
    {
      v31 = objc_msgSend_columns(self->_absTractRef, v12, v22, v14, v15);
      if ((TSUIndexSet::containsIndex(v31) & 1) == 0)
      {
        v39 = objc_msgSend_columns(self->_absTractRef, v26, v32, v27, v28);
        if (TSUIndexSet::containsIndex(v39) & 1) != 0 || (TSUIndexSet::containsIndex(a4))
        {
          goto LABEL_24;
        }
      }
    }

    v24 = 1;
    objc_msgSend_setMixedColumnStartedWithPreserve_(v41, v26, 1, v27, v28);
    goto LABEL_5;
  }

LABEL_8:
  objc_msgSend_setPreserveFlags_(v41, v12, v16, v14, v15);
}

- (id)absoluteCellTractRefForHostCell:(const TSUCellCoord *)a3 offTable:(BOOL *)a4
{
  v78 = 0;
  v79 = &v78;
  v80 = 0x5012000000;
  v81 = sub_22121A2E4;
  v82 = sub_22121A308;
  v83 = &unk_22188E88F;
  objc_msgSend_columns(self->_absTractRef, a2, a3, a4, v4);
  *&v84 |= 3u;
  *&v8.f64[0] = 0x8000000080000000;
  *&v8.f64[1] = 0x8000000080000000;
  v51 = vnegq_f64(v8);
  v84._singleRange = v51;
  v84._multipleRanges = 0;
  TSUIndexSet::operator=();
  v71 = 0;
  v72 = &v71;
  v73 = 0x5012000000;
  v74 = sub_22121A2E4;
  v75 = sub_22121A308;
  v76 = &unk_22188E88F;
  objc_msgSend_rows(self->_absTractRef, v9, v10, v11, v12);
  *&v77 |= 3u;
  v77._singleRange = v51;
  v77._multipleRanges = 0;
  TSUIndexSet::operator=();
  v64 = 0;
  v65 = &v64;
  v66 = 0x5012000000;
  v67 = sub_22121A2E4;
  v68 = sub_22121A308;
  v69 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v70);
  v57 = 0;
  v58 = &v57;
  v59 = 0x5012000000;
  v60 = sub_22121A2E4;
  v61 = sub_22121A308;
  v62 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v63);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  if (a3->row != 0x7FFFFFFF && (*a3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if ((objc_msgSend_spansAllColumns(self, v13, v14, v15, v16) & 1) == 0 && TSUIndexSet::count(&self->_relativeColumns))
    {
      v52[10] = MEMORY[0x277D85DD0];
      v52[11] = 3221225472;
      v52[12] = sub_22121C2B4;
      v52[13] = &unk_2784618F8;
      v52[14] = &v53;
      v52[15] = &v78;
      v52[16] = &v64;
      v52[17] = a3;
      TSUIndexSet::enumerateRangesUsingBlock();
    }

    if ((objc_msgSend_spansAllRows(self, v17, v18, v19, v20, v51) & 1) == 0 && TSUIndexSet::count(&self->_relativeRows))
    {
      v52[2] = MEMORY[0x277D85DD0];
      v52[3] = 3221225472;
      v52[4] = sub_22121C370;
      v52[5] = &unk_2784618F8;
      v52[6] = &v53;
      v52[7] = &v71;
      v52[8] = &v57;
      v52[9] = a3;
      TSUIndexSet::enumerateRangesUsingBlock();
    }
  }

  v21 = [TSCECellTractRef alloc];
  v22 = v79;
  v23 = v72;
  v52[0] = objc_msgSend_tableUID(self, v24, v25, v26, v27);
  v52[1] = v28;
  v29 = objc_msgSend_initWithColumns_rows_tableUID_(v21, v28, (v22 + 6), (v23 + 6), v52);
  objc_msgSend_preserveFlagsFixingInversionsForTract_absFromRelColumns_absFromRelRows_(self, v30, v29, (v65 + 6), (v58 + 6));
  v35 = objc_msgSend_preserveRectangular(self, v31, v32, v33, v34);
  objc_msgSend_setPreserveRectangular_(v29, v36, v35, v37, v38);
  if (objc_msgSend_spansAllColumns(self, v39, v40, v41, v42))
  {
    objc_msgSend_setSpansAllColumns_(v29, v43, 1, v45, v46);
  }

  else if (objc_msgSend_spansAllRows(self, v43, v44, v45, v46))
  {
    objc_msgSend_setSpansAllRows_(v29, v47, 1, v48, v49);
  }

  if (a4)
  {
    *a4 = *(v54 + 24);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  TSUIndexSet::~TSUIndexSet(&v63);
  _Block_object_dispose(&v64, 8);
  TSUIndexSet::~TSUIndexSet(&v70);
  _Block_object_dispose(&v71, 8);
  TSUIndexSet::~TSUIndexSet(&v77);
  _Block_object_dispose(&v78, 8);
  TSUIndexSet::~TSUIndexSet(&v84);

  return v29;
}

- (void)adjustRelativeIndexesBy:(const TSUColumnRowOffset *)a3
{
  if (a3->var0 && (objc_msgSend_spansAllColumns(self, a2, a3, v3, v4) & 1) == 0)
  {
    TSUIndexSet::shiftAllIndexesBy(&self->_relativeColumns);
  }

  if (a3->var1 && (objc_msgSend_spansAllRows(self, a2, a3, v3, v4) & 1) == 0)
  {

    TSUIndexSet::shiftAllIndexesBy(&self->_relativeRows);
  }
}

- (id).cxx_construct
{
  TSUIndexSet::TSUIndexSet(&self->_relativeColumns);
  TSUIndexSet::TSUIndexSet(&self->_relativeRows);
  return self;
}

@end