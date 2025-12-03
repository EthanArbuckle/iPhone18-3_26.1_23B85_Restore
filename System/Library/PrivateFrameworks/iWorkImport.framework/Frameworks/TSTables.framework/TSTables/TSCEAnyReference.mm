@interface TSCEAnyReference
- (BOOL)isEqual:(id)equal;
- (TSCEAnyRef)anyRef;
- (TSCEAnyReference)initWithCellRef:(const TSCECellRef *)ref;
- (TSCEAnyReference)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCERangeRef)rangeRef;
- (TSCEWrappedRangeRef)rangeReference;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)p_stringByUnescapingQuotedStringWithPossibleDollarPrefix:(id)prefix partial:(BOOL)partial;
- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine contextSheetName:(id)name preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete;
- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete;
- (id)referenceTextWithCalculationEngine:(id)engine contextSheetName:(id)name;
- (id)referenceTextWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d;
@end

@implementation TSCEAnyReference

- (TSCEAnyReference)initWithRangeRef:(const TSCERangeRef *)ref
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = TSCEAnyReference;
  v4 = [(TSCEAnyReference *)&v11 init];
  v5 = v4;
  if (v4)
  {
    tableUID = ref->_tableUID;
    *&v13[6] = ref->range;
    *&v13[22] = tableUID;
    memset(&v12[7], 0, 18);
    *(v4 + 4) = 1;
    v7 = *&v13[16];
    *(v4 + 10) = *v13;
    *(v4 + 26) = v7;
    *(v4 + 5) = *&v13[30];
    v4[48] = 0;
    v8 = *v12;
    *(v4 + 58) = *&v12[9];
    *(v4 + 49) = v8;
    v9 = *(v4 + 10);
    *(v4 + 10) = 0;
  }

  return v5;
}

- (TSCEAnyReference)initWithCellRef:(const TSCECellRef *)ref
{
  v12 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TSCEAnyReference;
  v4 = [(TSCEAnyReference *)&v8 init];
  if (v4)
  {
    TSCERangeRef::TSCERangeRef(&v9, ref);
    *&v11[6] = v9;
    v5 = *(&v9.range._bottomRight.row + 2);
    *(v4 + 10) = *v11;
    memset(&v10[7], 0, 18);
    *(v4 + 4) = 0;
    *(v4 + 26) = v5;
    *(v4 + 5) = *&v11[30];
    v4[48] = 0;
    *(v4 + 49) = *v10;
    *(v4 + 58) = *&v10[9];
    v6 = *(v4 + 10);
    *(v4 + 10) = 0;
  }

  return v4;
}

- (TSCEAnyRef)anyRef
{
  v4 = *&self->_ref._spanningRef.rangeRef.range._bottomRight.row;
  uuidValue = self->_ref._uuidValue;
  *&retstr->_spanningRef.rangeRef._tableUID._upper = *&self->_ref._spanningRef.rangeRef._tableUID._upper;
  retstr->_uuidValue = uuidValue;
  *&retstr->_couldBeIntersection = *&self->_ref._couldBeIntersection;
  *&retstr->_refType = *&self->_ref._refType;
  *&retstr->_spanningRef.rangeRef.range._bottomRight.row = v4;
  result = self->_ref._refSet;
  retstr->_refSet = result;
  return result;
}

- (TSCERangeRef)rangeRef
{
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (LOWORD(self->range._bottomRight.row) == 1)
  {
    range = self[1].range;
    retstr->range = self->_tableUID;
    retstr->_tableUID = range;
  }

  else if (!LOWORD(self->range._bottomRight.row))
  {
    v7 = v3;
    v8 = v4;
    v6.coordinate = self->_tableUID._lower;
    v6._tableUID = self[1].range;
    TSCERangeRef::TSCERangeRef(retstr, &v6);
  }

  return self;
}

- (TSCEWrappedRangeRef)rangeReference
{
  if (self->_ref._refType == 1)
  {
    v9 = TSCERangeRef::wrapped(&self->_ref._spanningRef.rangeRef);
    if (!v9)
    {
LABEL_4:
      v9 = objc_msgSend_invalidRangeRef(TSCEWrappedRangeRef, a2, v2, v3, v4);
    }
  }

  else
  {
    if (self->_ref._refType)
    {
      goto LABEL_4;
    }

    v12.coordinate = self->_ref._spanningRef.rangeRef.range._topLeft;
    v12._tableUID = self->_ref._spanningRef.rangeRef._tableUID;
    v5 = [TSCEWrappedRangeRef alloc];
    TSCERangeRef::TSCERangeRef(&v11, &v12);
    v9 = objc_msgSend_initWithRangeRef_(v5, v6, &v11, v7, v8);
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  return v9;
}

- (TSKUIDStruct)tableUID
{
  v5 = TSCEAnyRef::containedTableUID(&self->_ref, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (id)referenceTextWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  overrideText = self->_overrideText;
  if (overrideText)
  {
    v11 = overrideText;
    goto LABEL_10;
  }

  if (self->_ref._refType)
  {
    if (self->_ref._refType != 1)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEAnyReference referenceTextWithCalculationEngine:hostTableUID:]", v7, v8);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAnyReference.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 274, 0, "referenceTextWithCalculationEngine currently only supports cell and range references");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
      v39 = 0;
      v36 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      goto LABEL_9;
    }

    range = self->_ref._spanningRef.rangeRef.range;
    tableUID = self->_ref._spanningRef.rangeRef._tableUID;
  }

  else
  {
    v37.coordinate = self->_ref._spanningRef.rangeRef.range._topLeft;
    v37._tableUID = self->_ref._spanningRef.rangeRef._tableUID;
    TSCERangeRef::TSCERangeRef(&v38, &v37);
    range = v38.range;
    tableUID = v38._tableUID;
  }

  v36 = range;
  v39 = tableUID;
LABEL_9:
  v25 = objc_opt_new();
  objc_msgSend_setHostTableUID_(v25, v26, d->_lower, d->_upper, v27);
  v32 = objc_msgSend_namer(engineCopy, v28, v29, v30, v31);
  v38.range = v36;
  v38._tableUID = v39;
  v11 = objc_msgSend_nameForChromeRangeRef_namingContext_(v32, v33, &v38, v25, v34);

LABEL_10:

  return v11;
}

- (id)referenceTextWithCalculationEngine:(id)engine contextSheetName:(id)name
{
  engineCopy = engine;
  nameCopy = name;
  overrideText = self->_overrideText;
  if (overrideText)
  {
    v12 = overrideText;
    goto LABEL_10;
  }

  if (self->_ref._refType)
  {
    if (self->_ref._refType != 1)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEAnyReference referenceTextWithCalculationEngine:contextSheetName:]", v8, v9);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAnyReference.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 299, 0, "referenceTextWithCalculationEngine currently only supports cell and range references");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
      upper = 0;
      lower = 0;
      topLeft = 0x7FFF7FFFFFFFLL;
      bottomRight = 0x7FFF7FFFFFFFLL;
      goto LABEL_9;
    }

    topLeft = self->_ref._spanningRef.rangeRef.range._topLeft;
    bottomRight = self->_ref._spanningRef.rangeRef.range._bottomRight;
  }

  else
  {
    topLeft = self->_ref._spanningRef.rangeRef.range._topLeft;
    bottomRight = topLeft;
  }

  lower = self->_ref._spanningRef.rangeRef._tableUID._lower;
  upper = self->_ref._spanningRef.rangeRef._tableUID._upper;
LABEL_9:
  v28 = objc_opt_new();
  objc_msgSend_setContextSheetName_(v28, v29, nameCopy, v30, v31);
  v36 = objc_msgSend_namer(engineCopy, v32, v33, v34, v35);
  v40[0] = topLeft;
  v40[1] = bottomRight;
  v40[2] = lower;
  v40[3] = upper;
  v12 = objc_msgSend_nameForChromeRangeRef_namingContext_(v36, v37, v40, v28, v38);

LABEL_10:

  return v12;
}

- (id)p_stringByUnescapingQuotedStringWithPossibleDollarPrefix:(id)prefix partial:(BOOL)partial
{
  partialCopy = partial;
  prefixCopy = prefix;
  if (objc_msgSend_hasPrefix_(prefixCopy, v6, @"$", v7, v8))
  {
    v13 = objc_msgSend_length(@"$", v9, v10, v11, v12);
    v17 = objc_msgSend_substringFromIndex_(prefixCopy, v14, v13, v15, v16);
    v22 = v17;
    if (partialCopy)
    {
      objc_msgSend_tsce_stringByUnescapingPartialQuotedString(v17, v18, v19, v20, v21);
    }

    else
    {
      objc_msgSend_tsce_stringByUnescapingSingleQuotes(v17, v18, v19, v20, v21);
    }
    v24 = ;
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@%@", v26, v27, @"$", v24);
  }

  else
  {
    v23 = objc_msgSend_tsce_stringByUnescapingPartialQuotedString(prefixCopy, v9, v10, v11, v12);
  }

  return v23;
}

- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete
{
  completeCopy = complete;
  v94._flags = flags._flags;
  engineCopy = engine;
  stringCopy = string;
  overrideTextAsTyped = self->_overrideTextAsTyped;
  if (overrideTextAsTyped)
  {
    v16 = overrideTextAsTyped;
  }

  else
  {
    if (self->_wasConstructedViaNames)
    {
      v17 = objc_msgSend_p_stringByUnescapingQuotedStringWithPossibleDollarPrefix_partial_(self, v12, stringCopy, !completeCopy, v13);
      isEqualToString = objc_msgSend_isEqualToString_(stringCopy, v18, v17, v19, v20);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_11;
      }

      if (!objc_msgSend_length(stringCopy, v22, v23, v24, v25) || objc_msgSend_isEqualToString_(stringCopy, v26, @"$", v27, v28))
      {
        v29 = objc_opt_new();
        objc_msgSend_setHostTableUID_(v29, v30, d->_lower, d->_upper, v31);
        v36 = objc_msgSend_rangeReference(self, v32, v33, v34, v35);
        v41 = v36;
        if (v36)
        {
          objc_msgSend_rangeRef(v36, v37, v38, v39, v40);
        }

        else
        {
          memset(&v93, 0, sizeof(v93));
        }

        LOBYTE(v92) = 0;
        TSCERangeRef::setPreserveFlags(&v93, &v92);
        v46 = objc_msgSend_namer(engineCopy, v42, v43, v44, v45, *&v93.range._topLeft, *&v93.range._bottomRight, v93._tableUID._lower, v93._tableUID._upper);
        v49 = objc_msgSend_nameForChromeRangeRef_namingContext_(v46, v47, &v92, v29, v48);

        LOBYTE(v46) = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(v49, v50, v51, v52, v53);
        if (v46)
        {
LABEL_11:
          v54 = objc_opt_new();
          objc_msgSend_setHostTableUID_(v54, v55, d->_lower, d->_upper, v56);
          objc_msgSend_setQuoteComponents_(v54, v57, 1, v58, v59);
          objc_msgSend_setForceEscaping_(v54, v60, 1, v61, v62);
          v67 = objc_msgSend_rangeReference(self, v63, v64, v65, v66);
          v72 = v67;
          if (v67)
          {
            objc_msgSend_rangeRef(v67, v68, v69, v70, v71);
          }

          else
          {
            memset(&v93, 0, sizeof(v93));
          }

          TSCERangeRef::setPreserveFlags(&v93, &v94);
          v79 = objc_msgSend_namer(engineCopy, v75, v76, v77, v78, *&v93.range._topLeft, *&v93.range._bottomRight, v93._tableUID._lower, v93._tableUID._upper);
          v82 = objc_msgSend_nameForChromeRangeRef_namingContext_(v79, v80, &v92, v54, v81);
          v87 = objc_msgSend_tsce_referenceComponentsSeparatedByPathDelimiter(v82, v83, v84, v85, v86);
          v73 = objc_msgSend_lastObject(v87, v88, v89, v90, v91);

          goto LABEL_15;
        }
      }
    }

    v16 = objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(self, v12, engineCopy, d, v13);
  }

  v73 = v16;
LABEL_15:

  return v73;
}

- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine contextSheetName:(id)name preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete
{
  completeCopy = complete;
  v97._flags = flags._flags;
  engineCopy = engine;
  nameCopy = name;
  stringCopy = string;
  overrideTextAsTyped = self->_overrideTextAsTyped;
  if (overrideTextAsTyped)
  {
    v17 = overrideTextAsTyped;
  }

  else
  {
    if (self->_wasConstructedViaNames)
    {
      v18 = objc_msgSend_p_stringByUnescapingQuotedStringWithPossibleDollarPrefix_partial_(self, v13, stringCopy, !completeCopy, v14);
      isEqualToString = objc_msgSend_isEqualToString_(stringCopy, v19, v18, v20, v21);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_11;
      }

      if (!objc_msgSend_length(stringCopy, v23, v24, v25, v26) || objc_msgSend_isEqualToString_(stringCopy, v27, @"$", v28, v29))
      {
        v30 = objc_opt_new();
        objc_msgSend_setContextSheetName_(v30, v31, nameCopy, v32, v33);
        v38 = objc_msgSend_rangeReference(self, v34, v35, v36, v37);
        v43 = v38;
        if (v38)
        {
          objc_msgSend_rangeRef(v38, v39, v40, v41, v42);
        }

        else
        {
          memset(&v96, 0, sizeof(v96));
        }

        LOBYTE(v95) = 0;
        TSCERangeRef::setPreserveFlags(&v96, &v95);
        v48 = objc_msgSend_namer(engineCopy, v44, v45, v46, v47, *&v96.range._topLeft, *&v96.range._bottomRight, v96._tableUID._lower, v96._tableUID._upper);
        v51 = objc_msgSend_nameForChromeRangeRef_namingContext_(v48, v49, &v95, v30, v50);

        LOBYTE(v48) = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(v51, v52, v53, v54, v55);
        if (v48)
        {
LABEL_11:
          v56 = objc_opt_new();
          objc_msgSend_setContextSheetName_(v56, v57, nameCopy, v58, v59);
          objc_msgSend_setQuoteComponents_(v56, v60, 1, v61, v62);
          objc_msgSend_setForceEscaping_(v56, v63, 1, v64, v65);
          v70 = objc_msgSend_rangeReference(self, v66, v67, v68, v69);
          v75 = v70;
          if (v70)
          {
            objc_msgSend_rangeRef(v70, v71, v72, v73, v74);
          }

          else
          {
            memset(&v96, 0, sizeof(v96));
          }

          TSCERangeRef::setPreserveFlags(&v96, &v97);
          v82 = objc_msgSend_namer(engineCopy, v78, v79, v80, v81, *&v96.range._topLeft, *&v96.range._bottomRight, v96._tableUID._lower, v96._tableUID._upper);
          v85 = objc_msgSend_nameForChromeRangeRef_namingContext_(v82, v83, &v95, v56, v84);
          v90 = objc_msgSend_tsce_referenceComponentsSeparatedByPathDelimiter(v85, v86, v87, v88, v89);
          v76 = objc_msgSend_lastObject(v90, v91, v92, v93, v94);

          goto LABEL_15;
        }
      }
    }

    v17 = objc_msgSend_referenceTextWithCalculationEngine_contextSheetName_(self, v13, engineCopy, nameCopy, v14);
  }

  v76 = v17;
LABEL_15:

  return v76;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v13 = TSCEAnyRef::operator==(&self->_ref._refType, v5 + 1) && ((overrideText = self->_overrideText, v10 = v5[11], overrideText == v10) || v10 && objc_msgSend_isEqualToString_(overrideText, v6, v10, v7, v8)) && ((overrideTextAsTyped = self->_overrideTextAsTyped, v12 = v5[12], overrideTextAsTyped == v12) || v12 && objc_msgSend_isEqualToString_(overrideTextAsTyped, v6, v12, v7, v8)) && self->_preserveFlags._flags == *(v5 + 104) && self->_wasConstructedViaNames == *(v5 + 105);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 4) = 16;
  *(self + 1) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 48) = 0;
  *(self + 10) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 36) = 0;
  *(self + 104) = 0;
  return self;
}

@end