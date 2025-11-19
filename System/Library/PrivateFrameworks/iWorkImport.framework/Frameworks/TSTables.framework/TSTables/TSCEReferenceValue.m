@interface TSCEReferenceValue
+ (id)emptyReferenceValue;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (BOOL)asStrictBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (BOOL)isRange;
- (TSCEAnyRef)anyRef;
- (TSCEFormat)format;
- (TSCEFormat)formatWithContext:(SEL)a3;
- (TSCERangeCoordinate)range;
- (TSCERangeRef)rangeRef;
- (TSCEReferenceValue)init;
- (TSCEReferenceValue)initWithContext:(id)a3 rangeRef:(const TSCERangeRef *)a4 preserveFlags:(const TSUPreserveFlags *)a5 cacheValue:(id)a6 wasFetchedWithRichTextAttributes:(BOOL)a7;
- (TSCEReferenceValue)initWithContext:(id)a3 tableUID:(const TSKUIDStruct *)a4 rangeCoord:(const TSCERangeCoordinate *)a5 preserveFlags:(const TSUPreserveFlags *)a6 isOutputOfAFunction:(BOOL)a7;
- (TSCEReferenceValue)initWithContext:(id)a3 tableUID:(const TSKUIDStruct *)a4 relativeCellCoord:(const TSCERelativeCellCoordinate *)a5 preserveFlags:(const TSUPreserveFlags *)a6;
- (TSCEReferenceValue)initWithContext:(id)a3 tableUID:(const TSKUIDStruct *)a4 relativeRangeCoord:(const TSCERelativeRangeCoordinate *)a5 preserveFlags:(const TSUPreserveFlags *)a6;
- (TSCEReferenceValue)initWithEvalRef:(id)a3 hostCell:(const TSUCellCoord *)a4 preserveFlags:(const TSUPreserveFlags *)a5 permitsAccessInsideMergeRegions:(BOOL)a6 isOutputOfAFunction:(BOOL)a7;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSKUIDStruct)tableUID;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asReference:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)canonicalKeyStringForLocale:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)errorWithContext:(id)a3;
- (id)intersectionWithHostCellRef:(TSCECellRef *)a3 rangeContext:(unsigned __int8)a4 evaluationContext:(id)a5;
- (id)referredToValue:(id)a3 fetchRichTextAttributesIfPlainText:(BOOL)a4;
@end

@implementation TSCEReferenceValue

+ (id)emptyReferenceValue
{
  v2 = objc_opt_new();

  return v2;
}

- (TSCEReferenceValue)init
{
  v6.receiver = self;
  v6.super_class = TSCEReferenceValue;
  v2 = [(TSCEValue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    evalRef = v2->_evalRef;
    v2->_evalRef = 0;

    v3->_isOutputOfAFunction = 0;
    v3->_permitsAccessInsideMergeRegions = 0;
  }

  return v3;
}

- (TSCEReferenceValue)initWithContext:(id)a3 tableUID:(const TSKUIDStruct *)a4 rangeCoord:(const TSCERangeCoordinate *)a5 preserveFlags:(const TSUPreserveFlags *)a6 isOutputOfAFunction:(BOOL)a7
{
  v43.receiver = self;
  v43.super_class = TSCEReferenceValue;
  v12 = [(TSCEValue *)&v43 init];
  v13 = v12;
  if (v12)
  {
    evalRef = v12->_evalRef;
    v12->_evalRef = 0;

    v13->_hostCell = *objc_msgSend_containingCell(a3, v15, v16, v17, v18);
    v13->_preserveFlags = a6->_flags;
    v13->_isOutputOfAFunction = a7;
    v13->_permitsAccessInsideMergeRegions = 0;
    if (*a4 == 0)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEReferenceValue initWithContext:tableUID:rangeCoord:preserveFlags:isOutputOfAFunction:]", v21, v22);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 70, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    }

    v34 = objc_msgSend_calcEngine(a3, v19, v20, v21, v22);
    v38 = objc_msgSend_tableResolverForTableUID_(v34, v35, a4, v36, v37);

    if (v38)
    {
      v40 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v38, v39, a5, &a5->_bottomRight, a6);
      v41 = v13->_evalRef;
      v13->_evalRef = v40;
    }
  }

  return v13;
}

- (TSCEReferenceValue)initWithContext:(id)a3 rangeRef:(const TSCERangeRef *)a4 preserveFlags:(const TSUPreserveFlags *)a5 cacheValue:(id)a6 wasFetchedWithRichTextAttributes:(BOOL)a7
{
  v47 = a7;
  v48 = a6;
  v50.receiver = self;
  v50.super_class = TSCEReferenceValue;
  v11 = [(TSCEValue *)&v50 init];
  v12 = v11;
  if (v11)
  {
    evalRef = v11->_evalRef;
    v11->_evalRef = 0;

    v12->_hostCell = *objc_msgSend_containingCell(a3, v14, v15, v16, v17);
    v12->_preserveFlags = a5->_flags;
    v12->_isOutputOfAFunction = 0;
    v12->_permitsAccessInsideMergeRegions = 0;
    if (*&a4->_tableUID == 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEReferenceValue initWithContext:rangeRef:preserveFlags:cacheValue:wasFetchedWithRichTextAttributes:]", v20, v21);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 116, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v33 = objc_msgSend_calcEngine(a3, v18, v19, v20, v21);
    v37 = objc_msgSend_tableResolverForTableUID_(v33, v34, &a4->_tableUID, v35, v36);

    if (v37)
    {
      range = a4->range;
      v41 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v37, v38, &range, &range._bottomRight, a5);
      v42 = v12->_evalRef;
      v12->_evalRef = v41;
    }

    objc_msgSend_setCachedValue_(v12->_evalRef, v38, v48, v39, v40);
    objc_msgSend_setCachedValueWasFetchedWithRichTextAttributes_(v12->_evalRef, v43, v47, v44, v45);
  }

  return v12;
}

- (TSCEReferenceValue)initWithContext:(id)a3 tableUID:(const TSKUIDStruct *)a4 relativeRangeCoord:(const TSCERelativeRangeCoordinate *)a5 preserveFlags:(const TSUPreserveFlags *)a6
{
  v60.receiver = self;
  v60.super_class = TSCEReferenceValue;
  v10 = [(TSCEValue *)&v60 init];
  v11 = v10;
  if (v10)
  {
    evalRef = v10->_evalRef;
    v10->_evalRef = 0;

    v11->_hostCell = *objc_msgSend_containingCell(a3, v13, v14, v15, v16);
    v11->_preserveFlags = a6->_flags;
    v11->_isOutputOfAFunction = 0;
    v11->_permitsAccessInsideMergeRegions = 0;
    if (*a4 == 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCEReferenceValue initWithContext:tableUID:relativeRangeCoord:preserveFlags:]", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 144, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v32 = objc_msgSend_calcEngine(a3, v17, v18, v19, v20);
    v36 = objc_msgSend_tableResolverForTableUID_(v32, v33, a4, v34, v35);

    if (v36)
    {
      v41 = *objc_msgSend_containingCell(a3, v37, v38, v39, v40);
      var0 = a5->var0;
      v58[0]._flags = a6->_flags & 3;
      v59 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v41, var0, v58, v43, v44);
      v49 = *objc_msgSend_containingCell(a3, v45, v46, v47, v48);
      var1 = a5->var1;
      v57._flags = (a6->_flags >> 2) & 3;
      *&v58[0]._flags = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v49, var1, &v57, v51, v52);
      v54 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v36, v53, &v59, v58, a6);
      v55 = v11->_evalRef;
      v11->_evalRef = v54;
    }
  }

  return v11;
}

- (TSCEReferenceValue)initWithContext:(id)a3 tableUID:(const TSKUIDStruct *)a4 relativeCellCoord:(const TSCERelativeCellCoordinate *)a5 preserveFlags:(const TSUPreserveFlags *)a6
{
  v51.receiver = self;
  v51.super_class = TSCEReferenceValue;
  v10 = [(TSCEValue *)&v51 init];
  v11 = v10;
  if (v10)
  {
    evalRef = v10->_evalRef;
    v10->_evalRef = 0;

    v11->_hostCell = *objc_msgSend_containingCell(a3, v13, v14, v15, v16);
    v11->_preserveFlags = a6->_flags;
    v11->_isOutputOfAFunction = 0;
    v11->_permitsAccessInsideMergeRegions = 0;
    if (*a4 == 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCEReferenceValue initWithContext:tableUID:relativeCellCoord:preserveFlags:]", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 171, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v32 = objc_msgSend_calcEngine(a3, v17, v18, v19, v20);
    v36 = objc_msgSend_tableResolverForTableUID_(v32, v33, a4, v34, v35);

    if (v36)
    {
      v41 = *a5;
      flags = a6->_flags;
      v43 = *objc_msgSend_containingCell(a3, v37, v38, v39, v40);
      v50 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v43, (((flags & 1) << 56) | (((flags >> 1) & 1) << 48) | *&v41 & 0xFFFFFFFFFFFFLL), a6, v44, v45);
      v47 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v36, v46, &v50, &v50, a6);
      v48 = v11->_evalRef;
      v11->_evalRef = v47;
    }
  }

  return v11;
}

- (TSCEReferenceValue)initWithEvalRef:(id)a3 hostCell:(const TSUCellCoord *)a4 preserveFlags:(const TSUPreserveFlags *)a5 permitsAccessInsideMergeRegions:(BOOL)a6 isOutputOfAFunction:(BOOL)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = TSCEReferenceValue;
  v14 = [(TSCEValue *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_evalRef, a3);
    v15->_hostCell = *a4;
    v15->_preserveFlags = a5->_flags;
    v15->_isOutputOfAFunction = a7;
    v15->_permitsAccessInsideMergeRegions = a6;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TSCEReferenceValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 7, self->_evalRef);
  v4[8] = self->_hostCell;
  *(v4 + 72) = self->_preserveFlags._flags;
  *(v4 + 73) = self->_isOutputOfAFunction;
  *(v4 + 74) = self->_permitsAccessInsideMergeRegions;
  return v4;
}

- (char)deepType:(id)a3 outError:(id *)a4
{
  if (!a3)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue deepType:outError:]", a4, v4);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 243, 0, "TSCEReferenceType requires an EvaluationContext to perform deepType()");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    v11 = 0;
LABEL_6:
    v10 = 9;
    goto LABEL_7;
  }

  v7 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, v4);
  v25 = 0;
  v10 = objc_msgSend_deepType_outError_(v7, v8, a3, &v25, v9);
  v11 = v25;

  if (v11)
  {
    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

- (id)referredToValue:(id)a3 fetchRichTextAttributesIfPlainText:(BOOL)a4
{
  v5 = a4;
  hasCachedValue = objc_msgSend_hasCachedValue(self->_evalRef, a2, a3, a4, v4);
  v13 = objc_msgSend_cachedValueWasFetchedWithRichTextAttributes(self->_evalRef, v9, v10, v11, v12);
  if (!hasCachedValue || !(!v5 | v13))
  {
    evalRef = self->_evalRef;
    if (!evalRef)
    {
      goto LABEL_25;
    }

    v19 = objc_msgSend_cachedValue(evalRef, v14, v15, v16, v17);
    v24 = v19;
    if (!hasCachedValue)
    {
      goto LABEL_10;
    }

    if (objc_msgSend_nativeType(v19, v20, v21, v22, v23) == 7)
    {
      if (v24)
      {
        objc_msgSend_rawRichTextStorage(v24, v20, v21, v22, v23);
      }

      else
      {
        v45 = 0;
        v46 = 0uLL;
      }

      v25 = sub_221077388(&v45);

      if ((v25 & 1) == 0)
      {
LABEL_10:
        permitsAccessInsideMergeRegions = self->_permitsAccessInsideMergeRegions;
        v27 = objc_msgSend_inArrayMode(a3, v20, v21, v22, v23);
        if (v5)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30 | permitsAccessInsideMergeRegions;
        if (v27)
        {
          objc_msgSend_valueForEvalContext_readOptions_(self->_evalRef, v28, a3, v31 | 4, v29);
        }

        else
        {
          objc_msgSend_valueForEvalContext_readOptions_(self->_evalRef, v28, a3, v31, v29);
        }
        v32 = ;
        objc_msgSend_setCachedValue_(self->_evalRef, v33, v32, v34, v35);

        objc_msgSend_setCachedValueWasFetchedWithRichTextAttributes_(self->_evalRef, v36, v5, v37, v38);
      }
    }

    if (self->_isOutputOfAFunction)
    {
      v39 = self->_evalRef;
      if (v39)
      {
        objc_msgSend_rangeRef(v39, v20, v21, v22, v23);
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      LOWORD(v45) = 1;
      v46 = v43;
      v47 = v44;
      v48 = 0;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      objc_msgSend_addCalculatedPrecedent_(a3, v20, &v45, v22, v23, v43, v44);
    }
  }

  v40 = self->_evalRef;
  if (v40)
  {
    v41 = objc_msgSend_cachedValue(v40, v14, v15, v16, v17);
    goto LABEL_28;
  }

LABEL_25:
  if (qword_27CFB5640 != -1)
  {
    sub_2216F7ECC();
  }

  v41 = qword_27CFB5638;
LABEL_28:

  return v41;
}

- (id)intersectionWithHostCellRef:(TSCECellRef *)a3 rangeContext:(unsigned __int8)a4 evaluationContext:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = self->_evalRef;
  if (v9)
  {
    v11 = v9;
    v12 = objc_msgSend_intersectionWithHostCellRef_rangeContext_evaluationContext_(v9, v10, a3, v5, v8);

    if (v12)
    {
      v17 = [TSCEReferenceValue alloc];
      v32[0] = a3->coordinate;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v17, v18, v12, v32, &self->_preserveFlags, self->_permitsAccessInsideMergeRegions, self->_isOutputOfAFunction);
    }

    else
    {
      v32[0] = objc_msgSend_rangeCoord(0, v13, v14, v15, v16);
      v32[1] = v24;
      v32[2] = objc_msgSend_tableUID(0, v24, v21, v22, v23);
      v32[3] = v25;
      v12 = objc_msgSend_invalidRangeUsageErrorForReference_(TSCEError, v25, v32, v26, v27);
      isOutputOfAFunction = objc_msgSend_errorValue_(TSCEErrorValue, v28, v12, v29, v30);
    }

    v20 = isOutputOfAFunction;
  }

  else
  {
    v20 = self;
  }

  return v20;
}

- (TSKUIDStruct)tableUID
{
  ResolverUID = objc_msgSend_getResolverUID(self->_evalRef, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = ResolverUID;
  return result;
}

- (TSCERangeCoordinate)range
{
  v5 = objc_msgSend_rangeCoord(self->_evalRef, a2, v2, v3, v4);
  result._bottomRight = v6;
  result._topLeft = v5;
  return result;
}

- (TSCERangeRef)rangeRef
{
  v8 = objc_msgSend_range(self, a3, v3, v4, v5);
  v10 = v9;
  v14 = objc_msgSend_tableUID(self, v9, v11, v12, v13);
  retstr->range._topLeft = v8;
  retstr->range._bottomRight = v10;
  retstr->_tableUID._lower = v14;
  retstr->_tableUID._upper = v15;
  v20._flags = objc_msgSend_preserveFlags(self, v15, v16, v17, v18);
  return TSCERangeRef::setPreserveFlags(retstr, &v20);
}

- (TSCEAnyRef)anyRef
{
  if (objc_msgSend_isRange(self, a3, v3, v4, v5))
  {
    result = objc_msgSend_rangeRef(self, v8, v9, v10, v11);
    retstr->_refType = 1;
  }

  else
  {
    v18.coordinate = objc_msgSend_range(self, v8, v9, v10, v11);
    v18._tableUID._lower = objc_msgSend_tableUID(self, v13, v14, v15, v16);
    v18._tableUID._upper = v17;
    retstr->_refType = 0;
    TSCERangeRef::TSCERangeRef(&retstr->_spanningRef.rangeRef, &v18);
  }

  retstr->_uuidValue._lower = 0;
  retstr->_uuidValue._upper = 0;
  *&retstr->_couldBeIntersection = 0;
  retstr->_spanningRef.rangeContext = 0;
  retstr->_refSet = 0;
  return result;
}

- (BOOL)isRange
{
  v5 = objc_msgSend_range(self, a2, v2, v3, v4);
  v7 = v5 & 0xFFFF00000000;
  v8 = v6 & 0xFFFF00000000;
  if (v5 == 0x7FFFFFFFLL && v7 != 0x7FFF00000000 && v8 != 0x7FFF00000000)
  {
    return 1;
  }

  v12 = v6 == 0x7FFFFFFF || v8 != 0x7FFF00000000 || v7 != 0x7FFF00000000 || v5 == 0x7FFFFFFFLL;
  v9 = 1;
  if (v12)
  {
    v13 = ((v6 ^ v5) >> 56) & 1;
    if (((v6 ^ v5) & 0x1FFFF00000000) != 0)
    {
      LOBYTE(v13) = 1;
    }

    return v5 != v6 || v13;
  }

  return v9;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v22._lower = objc_msgSend_tableUID(self, a2, v2, v3, v4);
  v22._upper = v7;
  v8 = TSKUIDStruct::description(&v22);
  v21._topLeft = objc_msgSend_range(self, v9, v10, v11, v12);
  v21._bottomRight = v13;
  v14 = TSCERangeCoordinate::description(&v21);
  v18 = v14;
  if (self->_isOutputOfAFunction)
  {
    objc_msgSend_stringWithFormat_(v6, v15, @"%@::%@%@", v16, v17, v8, v14, @" (_isOutputOfAFunction)");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v6, v15, @"%@::%@%@", v16, v17, v8, v14, &stru_2834BADA0);
  }
  v19 = ;

  return v19;
}

- (id)canonicalKeyStringForLocale:(id)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue canonicalKeyStringForLocale:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 373, 0, "TSCEReferenceValue type does NOT support canonicalKeyString() - needs to be evaluated down to POD type first.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return @"<ref>";
}

- (TSCEFormat)format
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEReferenceValue format]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 378, 0, "TSCEReferenceValue type does NOT support format() - needs to be evaluated down to POD type first.");

  result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  retstr->_tskFormat = 0;
  retstr->_formatType = 0;
  retstr->_formatState = 0;
  *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
  *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
  *&retstr->_baseFormat.base = -50266102;
  retstr->_numberFormat.decimalPlaces = -3;
  *(&retstr->_numberFormat + 1) &= 0xE0u;
  retstr->_numberFormat.currencyCodeIndex = 0;
  return result;
}

- (TSCEFormat)formatWithContext:(SEL)a3
{
  v7 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a3, a4, 0, v4);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_formatWithContext_(v7, v8, a4, v9, v10);
  }

  else
  {
    *&retstr->_tskFormat = 0u;
    *&retstr->_durationFormat = 0u;
  }

  return result;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 390, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, *&a5);
  if (objc_msgSend_isNil(v22, v23, v24, v25, v26))
  {
    objc_msgSend_unitlessZero(TSCENumberValue, v27, v28, v29, v30);
  }

  else
  {
    objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }
  v31 = ;

  return v31;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asDate:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 404, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, *&a5);
  v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, v7, a6);

  return v24;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 414, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, *&a5);
  v24 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, v7, a6);

  return v24;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 424, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, *&a5);
  v24 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, v7, a6);

  return v24;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEReferenceValue asRichTextStorage:functionSpec:argumentIndex:outError:]", a5, *&a6);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v26, v17, 434, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a3, a4, 1, *&a6);
  v27 = v23;
  if (v23)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v23, v24, a4, a5, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 444, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, *&a5);
  if (objc_msgSend_isNil(v22, v23, v24, v25, v26))
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v28;
}

- (BOOL)asStrictBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asStrictBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 458, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, *&a5);
  if (objc_msgSend_isNil(v22, v23, v24, v25, v26))
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_asStrictBoolean_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v28;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v8 = a6;
  v9 = *&a5;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", a4, *&a5);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 473, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_argumentSpecForIndex_(a4, a2, v9, a4, *&a5);
  if (v24)
  {
    v29 = objc_msgSend_rangeContext(v24, v25, v26, v27, v28);
  }

  else
  {
    v29 = 0;
  }

  if (objc_msgSend_hasCachedValue(self->_evalRef, v25, v26, v27, v28) && objc_msgSend_cachedValueWasFetchedWithRichTextAttributes(self->_evalRef, v30, v31, v32, v33))
  {
    v38 = objc_msgSend_cachedValue(self->_evalRef, v34, v35, v36, v37);
    if (objc_msgSend_nativeType(v38, v39, v40, v41, v42) == 16)
    {
      if (v29 == 1)
      {
        v47 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v38, v43, a3, a4, v9, v8, a7);
      }

      else
      {
        v87 = objc_msgSend_asValueGridValue(v38, v43, v44, v45, v46);
        v69 = objc_msgSend_tableUID(self, v65, v66, v67, v68);
        v85 = v70;
        v86 = v69;
        v74 = objc_msgSend_topLeft(self->_evalRef, v70, v71, v72, v73);
        v79 = objc_msgSend_topLeft(self->_evalRef, v75, v76, v77, v78);
        v82 = (v74 & 0xFFFF00000000) == 0x7FFF00000000 && v74 != 0x7FFFFFFF;
        if (v79 != 0x7FFFFFFF || (v79 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          objc_msgSend_apparentGridForRangeContext_tableUID_context_spansAllColumns_spansAllRows_(v87, v80, v29, v86, v85, a3, v82, 0);
        }

        else
        {
          objc_msgSend_apparentGridForRangeContext_tableUID_context_spansAllColumns_spansAllRows_(v87, v80, v29, v86, v85, a3, v82, 1);
        }

        v47 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v87, v84, a3, a4, v9, v8, a7);
      }

      goto LABEL_19;
    }
  }

  v89[0] = a3;
  v89[1] = a4;
  v90 = 0;
  v91 = v9;
  v92[0] = 0;
  *(v92 + 3) = 0;
  v93 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v94 = 0;
  v95 = 0;
  v48 = [TSCEReferenceBackedGrid alloc];
  inited = objc_msgSend_initWitRefValue_rangeContext_(v48, v49, self, v29, v50);
  v56 = objc_msgSend_permitsAccessInsideMergeRegions(self, v52, v53, v54, v55);
  objc_msgSend_setPermitsAccessInsideMergeRegions_(inited, v57, v56, v58, v59);
  if (v8)
  {
    if (inited)
    {
      objc_msgSend_preferredFormatOptions_(inited, v60, v89, v61, v62);
    }

    else
    {
      memset(v88, 0, sizeof(v88));
    }

    v63 = objc_msgSend_gridValue_format_(TSCEGridValue, v60, inited, v88, v62);
  }

  else
  {
    v63 = objc_msgSend_gridValue_(TSCEGridValue, v60, inited, v61, v62);
  }

  v47 = v63;

LABEL_19:

  return v47;
}

- (id)asReference:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asReference:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 515, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return self;
}

- (id)errorWithContext:(id)a3
{
  v5 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, a3, 0, v3);
  v9 = objc_msgSend_errorWithContext_(v5, v6, a3, v7, v8);

  return v9;
}

@end