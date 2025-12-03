@interface TSCEEvalRef
+ (id)mergeLeftRef:(id)ref rightRef:(id)rightRef outError:(int *)error;
- (TSCECalculationEngine)calcEngine;
- (TSCEEvalRef)init;
- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver topLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags;
- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver tractRefCore:(const TSCECellTractRefCore *)core;
- (TSCEFormat)format:(SEL)format;
- (TSCERangeCoordinate)bodyRangeOfTable;
- (TSCERangeCoordinate)rangeCoord;
- (TSCERangeCoordinate)tableRangeOfTable;
- (TSCERangeRef)rangeRef;
- (TSKUIDStruct)getResolverUID;
- (TSKUIDStruct)tableUID;
- (id)canonicalCellReferenceForReference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intersectionWithHostCellRef:(const TSCECellRef *)ref rangeContext:(unsigned __int8)context evaluationContext:(id)evaluationContext;
- (id)makeCellReferenceForOffset:(const TSCEGridCoord *)offset apparentTractRef:(const TSCECellTractRefCore *)ref;
- (id)makeCellReferenceInSameTable:(const TSUCellCoord *)table;
- (id)scalarValueFromCoord:(const TSUCellCoord *)coord readOptions:(unsigned __int16)options;
- (id)valueForEvalContext:(id)context readOptions:(unsigned __int16)options;
- (unsigned)getHidingActionForRows:(BOOL)rows;
- (void)resetResolver:(id)resolver;
@end

@implementation TSCEEvalRef

- (TSCEEvalRef)init
{
  v6.receiver = self;
  v6.super_class = TSCEEvalRef;
  v2 = [(TSCEEvalRef *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_tableResolver = 0;
    cachedValue = v2->_cachedValue;
    v2->_cachedValue = 0;

    v3->_rangeContextOverride = 3;
  }

  return v3;
}

- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver topLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags
{
  v21.receiver = self;
  v21.super_class = TSCEEvalRef;
  v10 = [(TSCEEvalRef *)&v21 init];
  v15 = v10;
  if (v10)
  {
    v10->_tableResolver = resolver;
    v19._lower = TSCETableResolverWrapper::tableUID(resolver, v11, v12, v13, v14);
    v19._upper = v16;
    TSCECellTractRefCore::TSCECellTractRefCore(&v20, left, right, &v19);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v17 = *(&v20._tableUID._upper + 5);
    v15->_tractRef._tableUID = v20._tableUID;
    *(&v15->_tractRef._tableUID._upper + 5) = v17;
    TSUIndexSet::~TSUIndexSet(&v20._rows);
    TSUIndexSet::~TSUIndexSet(&v20._columns);
    v15->_tractRef._preserveFlags = flags->_flags;
    v15->_rangeContextOverride = 3;
  }

  return v15;
}

- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver tractRefCore:(const TSCECellTractRefCore *)core
{
  v15.receiver = self;
  v15.super_class = TSCEEvalRef;
  v6 = [(TSCEEvalRef *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_tableResolver = resolver;
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v12 = *(&core->_tableUID._upper + 5);
    v7->_tractRef._tableUID = core->_tableUID;
    *(&v7->_tractRef._tableUID._upper + 5) = v12;
    v7->_rangeContextOverride = 3;
    if (!v7->_tractRef._tableUID._lower && resolver && !v7->_tractRef._tableUID._upper)
    {
      v7->_tractRef._tableUID._lower = TSCETableResolverWrapper::tableUID(resolver, v8, v9, v10, v11);
      v7->_tractRef._tableUID._upper = v13;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEEvalRef alloc];
  v7 = objc_msgSend_initWithTableResolver_tractRefCore_(v4, v5, self->_tableResolver, &self->_tractRef, v6);
  *(v7 + 104) = self->_rangeContextOverride;
  objc_storeStrong((v7 + 112), self->_cachedValue);
  *(v7 + 120) = self->_cachedValueWasFetchedWithRichTextAttributes;
  return v7;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tractRef._tableUID._upper;
  lower = self->_tractRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCECalculationEngine)calcEngine
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    tableResolver = TSCETableResolverWrapper::calcEngine(tableResolver, a2, v2, v3, v4);
    v5 = vars8;
  }

  return tableResolver;
}

- (void)resetResolver:(id)resolver
{
  resolverCopy = resolver;
  v13[0] = objc_msgSend_getResolverUID(self, v5, v6, v7, v8);
  v13[1] = v9;
  if (resolverCopy)
  {
    v12 = objc_msgSend_tableResolverWrapperForTableUID_(resolverCopy, v9, v13, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  self->_tableResolver = v12;
}

- (TSCERangeCoordinate)rangeCoord
{
  v3 = TSCECellTractRefCore::topLeft(&self->_tractRef);
  v4 = TSCECellTractRefCore::bottomRight(&self->_tractRef);
  v5 = v3;
  result._bottomRight = v4;
  result._topLeft = v5;
  return result;
}

- (TSCERangeRef)rangeRef
{
  v8 = objc_msgSend_rangeCoord(self, a3, v3, v4, v5);
  v10 = v9;
  result = objc_msgSend_tableUID(self, v9, v11, v12, v13);
  retstr->range._topLeft = v8;
  retstr->range._bottomRight = v10;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v15;
  return result;
}

- (TSCERangeCoordinate)bodyRangeOfTable
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    v6 = TSCETableResolverWrapper::bodyRangeCoordinate(tableResolver, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0x7FFF7FFFFFFFLL;
    v7 = 0x7FFF7FFFFFFFLL;
  }

  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (TSCERangeCoordinate)tableRangeOfTable
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    v6 = TSCETableResolverWrapper::tableRangeCoordinate(tableResolver, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0x7FFF7FFFFFFFLL;
    v7 = 0x7FFF7FFFFFFFLL;
  }

  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (id)makeCellReferenceForOffset:(const TSCEGridCoord *)offset apparentTractRef:(const TSCECellTractRefCore *)ref
{
  v16 = TSCECellTractRefCore::coordAtColumnOffset(ref, offset->column, offset->row, ref, v4);
  v7 = [TSCEEvalRef alloc];
  tableResolver = self->_tableResolver;
  flags = ref->_preserveFlags._flags;
  v10 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v7, v9, tableResolver, &v16, &v16, &flags);
  objc_msgSend_setRangeContextOverride_(v10, v11, self->_rangeContextOverride, v12, v13);

  return v10;
}

- (id)makeCellReferenceInSameTable:(const TSUCellCoord *)table
{
  if (table->_preserveRow)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | table->_preserveColumn;
  v7 = [TSCEEvalRef alloc];
  tableResolver = self->_tableResolver;
  v12 = 5 * v6;
  v10 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v7, v9, tableResolver, table, table, &v12);

  return v10;
}

- (id)intersectionWithHostCellRef:(const TSCECellRef *)ref rangeContext:(unsigned __int8)context evaluationContext:(id)evaluationContext
{
  contextCopy = context;
  evaluationContextCopy = evaluationContext;
  coordinate = ref->coordinate;
  if (contextCopy != 1)
  {
    tableResolver = self->_tableResolver;
    if (tableResolver && ((lower = ref->_tableUID._lower, upper = ref->_tableUID._upper, lower == TSCETableResolverWrapper::tableUID(tableResolver, v8, v9, v10, v11)) ? (v16 = upper == v8) : (v16 = 0), v16))
    {
      v21 = self->_tableResolver;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = objc_msgSend_calcEngine(self, v8, v9, v10, v11);
      *&v69._columns = ref->_tableUID;
      v21 = objc_msgSend_tableResolverWrapperForTableUID_(v17, v18, &v69, v19, v20);

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (self->_tableResolver)
    {
      if (*(objc_msgSend_tractRef(self, v8, v9, v10, v11) + 80) == 1 || *(objc_msgSend_tractRef(self, v22, v23, v24, v25) + 80) == 2)
      {
        *&v66 = TSCETableResolverWrapper::tableUID(self->_tableResolver, v22, v23, v24, v25);
        v66._singleRange._begin = v26;
        objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v26, &v66, v27, v28);
        *&v69._columns = 0;
        TSCERangeRef::TSCERangeRef(&v68, &v67);
        v69._columns._singleRange = v68._columns;
        *&v69._columns._multipleRanges = *&v68._columns._singleRange._end;
        LOBYTE(v69._rows._singleRange._begin) = 0;
        v69._tableUID._upper = 0;
        memset(&v69._rows._singleRange._end, 0, 18);
        objc_msgSend_addCalculatedPrecedent_(evaluationContextCopy, v29, &v69, v30, v31);
      }

      if ((TSCETableResolverWrapper::isHeaderCell(v21, &coordinate, v23, v24, v25) & 1) != 0 || TSCETableResolverWrapper::isFooterCell(v21, &coordinate, v33, v34, v35))
      {
        v36 = TSCETableResolverWrapper::bodyRangeCoordinate(self->_tableResolver, v32, v33, v34, v35);
        v38 = v37;
        if ((*(objc_msgSend_tractRef(self, v37, v39, v40, v41) + 80) != 1 || WORD2(v38) != WORD2(v36)) && (*(objc_msgSend_tractRef(self, v42, v43, v44, v45) + 80) != 2 || v38 != v36))
        {
          contextCopy = 1;
        }
      }
    }
  }

LABEL_21:
  sub_2210F0C3C(&v69);
  v50 = self->_tableResolver;
  if (v50)
  {
    v51 = objc_msgSend_tractRef(self, v46, v47, v48, v49);
    TSCETableResolverWrapper::apparentTractRefForTractRef(v50, v51, contextCopy, v52, &v68);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v69._tableUID = v68._tableUID;
    *(&v69._tableUID._upper + 5) = *(&v68._tableUID._upper + 5);
    TSUIndexSet::~TSUIndexSet(&v68._rows);
    TSUIndexSet::~TSUIndexSet(&v68._columns);
  }

  if (!sub_2210EE8F8(&v69._columns))
  {
    v56 = 0;
    goto LABEL_36;
  }

  if (TSCECellTractRefCore::isSingleCell(&v69))
  {
    v53 = [TSCEEvalRef alloc];
    v56 = objc_msgSend_initWithTableResolver_tractRefCore_(v53, v54, self->_tableResolver, &v69, v55);
    goto LABEL_36;
  }

  *&v67 = -1;
  *&v57.f64[0] = 0x8000000080000000;
  *&v57.f64[1] = 0x8000000080000000;
  v64 = vnegq_f64(v57);
  v67._singleRange = v64;
  v67._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&v66 = -1;
  v66._singleRange = v64;
  v66._multipleRanges = 0;
  TSUIndexSet::operator=();
  spanType = v69._spanType;
  if (v69._spanType == 1 || TSUIndexSet::containsIndex(&v67))
  {
    v65._begin = coordinate.column;
    v65._end = coordinate.column;
    TSUIndexSet::TSUIndexSet(&v68._columns, &v65);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v68._columns);
    v59 = 1;
  }

  else
  {
    v59 = 0;
  }

  if (spanType == 2 || TSUIndexSet::containsIndex(&v66))
  {
    v65._begin = coordinate.row;
    v65._end = coordinate.row;
    TSUIndexSet::TSUIndexSet(&v68._columns, &v65);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v68._columns);
  }

  else if (!v59)
  {
    v56 = 0;
    goto LABEL_35;
  }

  TSCECellTractRefCore::TSCECellTractRefCore(&v68, &v67, &v66, &v69._tableUID);
  *&v68._preserveFlags._flags = *&v69._preserveFlags._flags;
  v60 = [TSCEEvalRef alloc];
  v56 = objc_msgSend_initWithTableResolver_tractRefCore_(v60, v61, self->_tableResolver, &v68, v62);
  TSUIndexSet::~TSUIndexSet(&v68._rows);
  TSUIndexSet::~TSUIndexSet(&v68._columns);
LABEL_35:
  TSUIndexSet::~TSUIndexSet(&v66);
  TSUIndexSet::~TSUIndexSet(&v67);
LABEL_36:
  TSUIndexSet::~TSUIndexSet(&v69._rows);
  TSUIndexSet::~TSUIndexSet(&v69._columns);

  return v56;
}

- (TSCEFormat)format:(SEL)format
{
  v6 = a4;
  result = self->_tableResolver;
  if (result)
  {
    TSCETableResolverWrapper::formatFromCell(result, self, &v6, retstr);
  }

  else
  {
    retstr->_tskFormat = 0;
    retstr->_formatType = 0;
    retstr->_formatState = 0;
    *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
    *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
    *&retstr->_baseFormat.base = -50266102;
    retstr->_numberFormat.decimalPlaces = -3;
    *(&retstr->_numberFormat + 1) &= 0xE0u;
    retstr->_numberFormat.currencyCodeIndex = 0;
  }

  return result;
}

- (TSKUIDStruct)getResolverUID
{
  upper = self->_tractRef._tableUID._upper;
  lower = self->_tractRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (unsigned)getHidingActionForRows:(BOOL)rows
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    LOBYTE(tableResolver) = TSCETableResolverWrapper::getHidingActionForRow(tableResolver, self, rows, v3, v4);
  }

  return tableResolver;
}

- (id)canonicalCellReferenceForReference
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    tableResolver = TSCETableResolverWrapper::canonicalCellReferenceForReference(tableResolver, self, v2, v3, v4);
    v5 = vars8;
  }

  return tableResolver;
}

- (id)valueForEvalContext:(id)context readOptions:(unsigned __int16)options
{
  optionsCopy = options;
  contextCopy = context;
  if (!contextCopy)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEEvalRef valueForEvalContext:readOptions:]", v8, v9);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvalRef.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 294, 0, "invalid nil value for '%{public}s'", "evaluationContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    goto LABEL_7;
  }

  p_var0 = &self->_tableResolver->var0;
  if (p_var0)
  {
    goto LABEL_9;
  }

  v12 = objc_msgSend_tableUID(self, v6, v7, v8, v9);
  if (!(v12 | v13))
  {
    p_var0 = objc_msgSend_containingTableResolverWrapper(contextCopy, v13, v14, v15, v16);
    if (p_var0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v36 = objc_msgSend_nilValue(TSCENilValue, v6, v7, v8, v9);
    goto LABEL_11;
  }

  v17 = objc_msgSend_calcEngine(contextCopy, v13, v14, v15, v16);
  v45[0] = objc_msgSend_tableUID(self, v18, v19, v20, v21);
  v45[1] = v22;
  p_var0 = objc_msgSend_tableResolverWrapperForTableUID_(v17, v22, v45, v23, v24);

  if (!p_var0)
  {
    goto LABEL_7;
  }

LABEL_9:
  objc_msgSend_containingCellRef(contextCopy, v6, v7, v8, v9);
  v44 = 0;
  v37 = TSCETableResolverWrapper::readValueForReference(p_var0, self, v45, &v44, optionsCopy);
  v36 = v44;
  if (!v36)
  {
    v36 = objc_msgSend_nilValue(TSCENilValue, v38, v39, v40, v41);
  }

LABEL_11:
  v42 = v36;

  return v42;
}

- (id)scalarValueFromCoord:(const TSUCellCoord *)coord readOptions:(unsigned __int16)options
{
  p_var0 = &self->_tableResolver->var0;
  if (p_var0)
  {
    v7 = *coord;
    var18[1] = 0;
    var18[2] = 0;
    v14 = 0;
    var18[0] = v7;
    v8 = TSCETableResolverWrapper::readValueForReference(p_var0, self, var18, &v14, options);
    p_var0 = v14;
    if (!p_var0)
    {
      p_var0 = objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
    }

    v4 = var18[4];
  }

  return p_var0;
}

+ (id)mergeLeftRef:(id)ref rightRef:(id)rightRef outError:(int *)error
{
  refCopy = ref;
  rightRefCopy = rightRef;
  if ((objc_msgSend_topLeft(refCopy, v9, v10, v11, v12) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (objc_msgSend_bottomRight(refCopy, v13, v14, v15, v16) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (objc_msgSend_topLeft(rightRefCopy, v13, v14, v15, v16) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (objc_msgSend_bottomRight(rightRefCopy, v13, v14, v15, v16) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v84 = objc_msgSend_tableUID(refCopy, v13, v14, v15, v16);
    v86 = v85;
    v90 = objc_msgSend_tableUID(rightRefCopy, v85, v87, v88, v89);
    v17 = 0;
    v18 = 1;
    if (v84 == v90 && v86 == v13)
    {
      v91 = objc_msgSend_topLeft(refCopy, v13, v14, v15, v16);
      v96 = objc_msgSend_topLeft(rightRefCopy, v92, v93, v94, v95);
      v17 = 0;
      v18 = 1;
      if ((v91 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v96 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
      {
        v98 = (v91 & 0xFFFF00000000) == 0x7FFF00000000 && v91 != 0x7FFFFFFFLL;
        v100 = (v96 & 0xFFFF00000000) == 0x7FFF00000000 && v96 != 0x7FFFFFFFLL;
        v18 = 1;
        if (v98 == v100)
        {
          v102 = v91 == 0x7FFFFFFFLL && (v91 & 0xFFFF00000000) != 0x7FFF00000000;
          v104 = v96 != 0x7FFFFFFFLL || (v96 & 0xFFFF00000000) == 0x7FFF00000000;
          v17 = v102 ^ v104;
          v18 = (v17 & 1) == 0;
        }

        else
        {
          v17 = 0;
        }
      }
    }
  }

  if (error)
  {
    *error = v18;
  }

  if (v17)
  {
    v19 = *(objc_msgSend_tractRef(refCopy, v13, v14, v15, v16) + 81);
    v24 = *(objc_msgSend_tractRef(rightRefCopy, v20, v21, v22, v23) + 81);
    v29 = objc_msgSend_topLeft(refCopy, v25, v26, v27, v28);
    v34 = objc_msgSend_bottomRight(refCopy, v30, v31, v32, v33);
    v39 = objc_msgSend_topLeft(refCopy, v35, v36, v37, v38);
    v44 = objc_msgSend_bottomRight(refCopy, v40, v41, v42, v43);
    v53 = HIDWORD(v29);
    if ((objc_msgSend_topLeft(rightRefCopy, v45, v46, v47, v48) >> 32) >= WORD2(v29))
    {
      v54 = v19 & 3;
    }

    else
    {
      v53 = objc_msgSend_topLeft(rightRefCopy, v49, v50, v51, v52) >> 32;
      v54 = v19 & 2 | v24 & 1;
    }

    if (objc_msgSend_topLeft(rightRefCopy, v49, v50, v51, v52) < v39)
    {
      v39 = objc_msgSend_topLeft(rightRefCopy, v56, v57, v58, v59);
      v54 = v24 & 2 | v54 & 1;
    }

    v64 = HIDWORD(v34);
    if ((objc_msgSend_bottomRight(rightRefCopy, v56, v57, v58, v59) >> 32) >= v64)
    {
      v64 = objc_msgSend_bottomRight(rightRefCopy, v60, v61, v62, v63) >> 32;
      v65 = (v19 >> 2) & 2 | (v24 >> 2) & 1;
    }

    else
    {
      v65 = (v19 >> 2) & 3;
    }

    if (objc_msgSend_bottomRight(rightRefCopy, v60, v61, v62, v63) >= v44)
    {
      v44 = objc_msgSend_bottomRight(rightRefCopy, v66, v67, v68, v69);
      v65 = v65 & 1 | (2 * ((v24 >> 3) & 1));
    }

    v108._topLeft = (((v54 & 1) << 56) | ((v54 >> 1) << 48) | v39 | (v53 << 32));
    v108._bottomRight = (((v65 & 1) << 56) | ((v65 >> 1) << 48) | v44 | (v64 << 32));
    v107._flags = v54 | (4 * v65);
    TSCERangeCoordinate::fixInversions(&v108, &v107);
    v74 = objc_msgSend_tableResolver(refCopy, v70, v71, v72, v73);
    v105._lower = objc_msgSend_tableUID(refCopy, v75, v76, v77, v78);
    v105._upper = v79;
    TSCECellTractRefCore::TSCECellTractRefCore(&v106, &v108._topLeft, &v108._bottomRight, &v105);
    v106._preserveFlags = v107;
    v80 = [TSCEEvalRef alloc];
    v55 = objc_msgSend_initWithTableResolver_tractRefCore_(v80, v81, v74, &v106, v82);
    TSUIndexSet::~TSUIndexSet(&v106._rows);
    TSUIndexSet::~TSUIndexSet(&v106._columns);
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

@end