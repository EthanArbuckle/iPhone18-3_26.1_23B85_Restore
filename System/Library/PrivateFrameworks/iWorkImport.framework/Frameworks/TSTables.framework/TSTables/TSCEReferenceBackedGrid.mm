@interface TSCEReferenceBackedGrid
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (TSCEFormat)formatAtIndex:(SEL)a3 accessContext:(unint64_t)a4;
- (TSKUIDStruct)tableUID;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)apparentReference:(id)a3;
- (id)asDate:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asReference:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asValueGrid:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepResolveInPlace:(id)a3;
- (id)initWitRefValue:(id)a3 rangeContext:(unsigned __int8)a4;
- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6;
- (id)valueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4;
- (id)valueAtIndex:(unint64_t)a3 accessContext:(TSCEGridAccessContext *)a4;
- (unint64_t)count;
- (unsigned)height;
- (unsigned)width;
@end

@implementation TSCEReferenceBackedGrid

- (id)initWitRefValue:(id)a3 rangeContext:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v39.receiver = self;
  v39.super_class = TSCEReferenceBackedGrid;
  v11 = [(TSCEAbstractGrid *)&v39 init];
  if (v11)
  {
    v12 = objc_msgSend_evalRef(v6, v7, v8, v9, v10);
    v17 = objc_msgSend_tableResolver(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_copy(v12, v18, v19, v20, v21);
    v23 = *(v11 + 1);
    *(v11 + 1) = v22;

    v11[104] = objc_msgSend_isOutputOfAFunction(v6, v24, v25, v26, v27);
    if (v17)
    {
      v32 = objc_msgSend_tractRef(v12, v28, v29, v30, v31);
      TSCETableResolverWrapper::apparentTractRefForTractRef(v17, v32, v4, v33, &v36);
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      v34 = *v38;
      *(v11 + 93) = *&v38[13];
      *(v11 + 5) = v34;
      TSUIndexSet::~TSUIndexSet(&v37);
      TSUIndexSet::~TSUIndexSet(&v36);
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TSCEReferenceBackedGrid);
  v9 = objc_msgSend_copy(self->_evalRef, v5, v6, v7, v8);
  evalRef = v4->_evalRef;
  v4->_evalRef = v9;

  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  tableUID = self->_apparentTractRef._tableUID;
  *(&v4->_apparentTractRef._tableUID._upper + 5) = *(&self->_apparentTractRef._tableUID._upper + 5);
  v4->_apparentTractRef._tableUID = tableUID;
  v4->_permitsAccessInsideMergeRegions = self->_permitsAccessInsideMergeRegions;
  return v4;
}

- (id)apparentReference:(id)a3
{
  v4 = a3;
  *&v25 = -1;
  *&v5.f64[0] = 0x8000000080000000;
  *&v5.f64[1] = 0x8000000080000000;
  v25._singleRange = vnegq_f64(v5);
  v25._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&v26 |= 3u;
  v26._singleRange = v25._singleRange;
  v26._multipleRanges = 0;
  TSUIndexSet::operator=();
  *v27 = self->_apparentTractRef._tableUID;
  *&v27[13] = *(&self->_apparentTractRef._tableUID._upper + 5);
  v6 = [TSCEEvalRef alloc];
  v11 = objc_msgSend_tableResolver(self->_evalRef, v7, v8, v9, v10);
  v14 = objc_msgSend_initWithTableResolver_tractRefCore_(v6, v12, v11, &v25, v13);
  v15 = [TSCEReferenceValue alloc];
  v20 = objc_msgSend_containingCell(v4, v16, v17, v18, v19);
  v24 = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v15, v21, v14, v20, &v24, self->_permitsAccessInsideMergeRegions, 0);

  TSUIndexSet::~TSUIndexSet(&v26);
  TSUIndexSet::~TSUIndexSet(&v25);

  return isOutputOfAFunction;
}

- (char)deepType:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (objc_msgSend_count(self, v7, v8, v9, v10) == 1)
  {
    v11 = v6;
    v19[0] = v11;
    v19[1] = 0;
    v20 = 0;
    v21[0] = 0xFFFFFFFFLL;
    *(v21 + 7) = 0;
    v22 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v23 = 0;
    v24 = 0;
    v14 = objc_msgSend_valueAtIndex_accessContext_(self, v12, 0, v19, v13);
    v17 = objc_msgSend_deepType_outError_(v14, v15, v11, a4, v16);
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)asValueGrid:(id)a3
{
  v24 = a3;
  v4 = objc_opt_new();
  v27 = 0;
  v28 = objc_msgSend_dimensions(self, v5, v6, v7, v8);
  v13 = 0;
  v26 = *objc_msgSend_containingCell(v24, v9, v10, v11, v12);
  do
  {
    v16 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, v14, &v27, &self->_apparentTractRef, v15);

    if (v16)
    {
      v17 = [TSCEReferenceValue alloc];
      v25 = 0;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v17, v18, v16, &v26, &v25, 1, self->_isOutputOfAFunction);
      objc_msgSend_setValue_atCoord_(v4, v20, isOutputOfAFunction, &v27, v21);
    }

    v22 = TSCEGridDimensions::nextCoordRowMajorOrder(&v28, &v27);
    v27 = v22;
    if (v22 == 0x7FFFFFFF)
    {
      break;
    }

    v13 = v16;
  }

  while ((v22 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);

  return v4;
}

- (id)deepResolveInPlace:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v10 = 0;
  v36 = 0;
  v37 = objc_msgSend_dimensions(self, v6, v7, v8, v9);
  do
  {
    v13 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, v11, &v36, &self->_apparentTractRef, v12);

    if (v13)
    {
      v14 = [TSCEReferenceValue alloc];
      v19 = objc_msgSend_containingCell(v4, v15, v16, v17, v18);
      v35 = 0;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v14, v20, v13, v19, &v35, 1, 0);
      v24 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(isOutputOfAFunction, v22, v4, 1, v23);
      objc_msgSend_setValue_atCoord_(v5, v25, v24, &v36, v26);
    }

    v27 = TSCEGridDimensions::nextCoordRowMajorOrder(&v37, &v36);
    v36 = v27;
    if (v27 == 0x7FFFFFFF)
    {
      break;
    }

    v10 = v13;
  }

  while ((v27 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
  objc_msgSend_deepResolveInPlace_(v5, v11, v4, v28, v12);
  v29 = [TSCEDenseGrid alloc];
  v33 = objc_msgSend_initWithValueGrid_(v29, v30, v5, v31, v32);

  return v33;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = v10;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, v15, a4, v7, a6);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asNumber:v10 functionSpec:a4 argIndex:v7 outError:a6];
  }

  return v20;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = v10;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v18, v19, v15, a4, v7, a6);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asDate:v10 functionSpec:a4 argIndex:v7 outError:a6];
  }

  return v20;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = v10;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v18, v19, v15, a4, v7, a6);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asBoolean:v10 functionSpec:a4 argIndex:v7 outError:a6];
  }

  return v20;
}

- (id)asReference:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v11 = a3;
  if (!a6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEReferenceBackedGrid asReference:functionSpec:argIndex:outError:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceBackedGrid.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 187, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = [TSCEReferenceValue alloc];
  evalRef = self->_evalRef;
  v28 = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v23, v25, evalRef, &unk_221803998, &v28, self->_permitsAccessInsideMergeRegions, 0);

  return isOutputOfAFunction;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = v10;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v18, v19, v15, a4, v7, a6);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asString:v10 functionSpec:a4 argIndex:v7 outError:a6];
  }

  return v20;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = v10;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v18, v19, v15, a4, v7, a6);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asRawString:v10 functionSpec:a4 argIndex:v7 outError:a6];
  }

  return v20;
}

- (unsigned)width
{
  if (!sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    return 1;
  }

  return TSCECellTractRefCore::numColumns(&self->_apparentTractRef);
}

- (unsigned)height
{
  if (!sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    return 1;
  }

  return TSCECellTractRefCore::numRows(&self->_apparentTractRef);
}

- (TSKUIDStruct)tableUID
{
  ResolverUID = objc_msgSend_getResolverUID(self->_evalRef, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = ResolverUID;
  return result;
}

- (unint64_t)count
{
  if (!sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    return 1;
  }

  v7 = objc_msgSend_width(self, v3, v4, v5, v6);
  return objc_msgSend_height(self, v8, v9, v10, v11) * v7;
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v7 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, a2, a3, &self->_apparentTractRef, v4);
  v11 = v7;
  if (a4->var7)
  {
    a4->var9 = objc_msgSend_getHidingActionForRows_(v7, v8, 0, v9, v10);
    a4->var10 = objc_msgSend_getHidingActionForRows_(v11, v12, 1, v13, v14);
  }

  v15 = [TSCEReferenceValue alloc];
  LOBYTE(v38._topLeft.row) = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v15, v16, v11, &unk_221803998, &v38, 1, self->_isOutputOfAFunction);
  evalRef = self->_evalRef;
  if (evalRef)
  {
    objc_msgSend_rangeRef(evalRef, v17, v18, v19, v20);
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v23 = v39;
  a4->var11.range = v38;
  a4->var11._tableUID = v23;
  v24 = TSCEGridAccessContext::argSpec(a4, v17, v18, v19, v20);
  if (v24)
  {
    v29 = objc_msgSend_argumentAccessor(v24, v25, v26, v27, v28);
    v37 = isOutputOfAFunction;
    v30 = (*(*v29 + 16))(v29, &v37, a4, 0);
    v31 = v37;

    if (v30)
    {
      v35 = objc_msgSend_errorValue_(TSCEErrorValue, v32, v30, v33, v34);

      goto LABEL_11;
    }

    isOutputOfAFunction = v31;
  }

  v31 = isOutputOfAFunction;
  v35 = v31;
LABEL_11:

  return v35;
}

- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v7 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, a2, a3, &self->_apparentTractRef, v4);
  v12 = v7;
  if (a4->var7)
  {
    a4->var9 = objc_msgSend_getHidingActionForRows_(v7, v8, 0, v10, v11);
    a4->var10 = objc_msgSend_getHidingActionForRows_(v12, v13, 1, v14, v15);
  }

  evalRef = self->_evalRef;
  if (evalRef)
  {
    objc_msgSend_rangeRef(evalRef, v8, v9, v10, v11);
  }

  else
  {
    memset(v41, 0, 32);
  }

  v17 = *&v41[16];
  a4->var11.range = *v41;
  a4->var11._tableUID = v17;
  if (v12)
  {
    var0 = a4->var0;
    if (objc_msgSend_inArrayMode(a4->var0, v8, v9, v10, v11))
    {
      objc_msgSend_valueForEvalContext_readOptions_(v12, v19, var0, 5, v20);
    }

    else
    {
      objc_msgSend_valueForEvalContext_readOptions_(v12, v19, var0, 1, v20);
    }
    v21 = ;
    if (self->_isOutputOfAFunction)
    {
      objc_msgSend_rangeRef(v12, v8, v9, v10, v11);
      *v41 = 1;
      *&v41[8] = v39;
      *&v41[24] = v40;
      v42 = 0;
      v46 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      objc_msgSend_addCalculatedPrecedent_(var0, v22, v41, v23, v24);
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = TSCEGridAccessContext::argSpec(a4, v8, v9, v10, v11);
  if (v25)
  {
    v30 = objc_msgSend_argumentAccessor(v25, v26, v27, v28, v29);
    v38 = v21;
    v31 = (*(*v30 + 16))(v30, &v38, a4, 0);
    v32 = v38;

    if (v31)
    {
      v36 = objc_msgSend_errorValue_(TSCEErrorValue, v33, v31, v34, v35);

      goto LABEL_18;
    }

    v21 = v32;
  }

  v32 = v21;
  v36 = v32;
LABEL_18:

  return v36;
}

- (id)valueAtIndex:(unint64_t)a3 accessContext:(TSCEGridAccessContext *)a4
{
  if (sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    v11 = objc_msgSend_width(self, v7, v8, v9, v10);
    v20[0] = a3 % v11;
    v20[1] = a3 / v11;
    v14 = objc_msgSend_valueAtGridCoord_accessContext_(self, v12, v20, a4, v13);
  }

  else
  {
    v15 = objc_msgSend_invalidReferenceError(TSCEError, v7, v8, v9, v10);
    v14 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v15, v17, v18);
  }

  return v14;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6
{
  v7 = *&a5;
  v11 = objc_msgSend_rangeCoord(self->_evalRef, a2, a3, *&a4, *&a5);
  v16 = v11;
  v17 = v11 & 0xFFFF00000000;
  v18 = v12 & 0xFFFF00000000;
  if (v11 != 0x7FFFFFFFLL || v17 == 0x7FFF00000000 || v18 == 0x7FFF00000000)
  {
    if (v11 != 0x7FFFFFFFLL && v17 == 0x7FFF00000000 && v18 == 0x7FFF00000000)
    {
      v23 = v12 != 0x7FFFFFFF && a3->column == 0;
      if (v23 && objc_msgSend_width(self, v12, v13, v14, v15) == a4)
      {
        v24 = (a3->row + v16);
        v25 = v24 | 0x7FFF00000000;
        v26 = (v7 + v24 - 1) | 0x7FFF00000000;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v27 = v12 == 0x7FFFFFFF && a3->row == 0;
    if (v27 && objc_msgSend_height(self, v12, v13, v14, v15) == v7)
    {
      v26 = ((a4 + LOWORD(a3->column) + WORD2(v16) - 1) << 32) | 0x7FFFFFFF;
      v25 = ((WORD2(v16) + LOWORD(a3->column)) << 32) | 0x7FFFFFFF;
      goto LABEL_38;
    }
  }

  if (TSUIndexSet::count(&self->_apparentTractRef._columns))
  {
    v28 = TSUIndexSet::firstIndex(&self->_apparentTractRef._columns) << 32;
  }

  else
  {
    v28 = 0x7FFF00000000;
  }

  if (TSUIndexSet::count(&self->_apparentTractRef._rows))
  {
    Index = TSUIndexSet::firstIndex(&self->_apparentTractRef._rows);
  }

  else
  {
    Index = 0x7FFFFFFFLL;
  }

  v55 = (Index | v28);
  v56 = (a4 | (v7 << 32));
  TSUCellRect::offsetBy();
  v30 = v55;
  v31 = v56;
  v25 = __C(v30, v31);
  v26 = v32;
LABEL_38:
  v33 = [TSCEReferenceValue alloc];
  v34 = a6->var0;
  v55 = v25;
  v56 = v26;
  v57 = objc_msgSend_tableUID(self, v35, v36, v37, v38);
  v58 = v39;
  v54 = 0;
  v40 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v33, v39, v34, &v55, &v54);

  v45 = TSCEGridAccessContext::argSpec(a6, v41, v42, v43, v44);
  if (v45 && ((v50 = objc_msgSend_argumentType(v45, v46, v47, v48, v49), v50 == 1) || v50 == 6 || v50 == 255) || a4 != 1 || v7 != 1)
  {
    v51 = v40;
  }

  else
  {
    v51 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v40, v46, a6->var0, 1, v49);
  }

  v52 = v51;

  return v52;
}

- (TSCEFormat)formatAtIndex:(SEL)a3 accessContext:(unint64_t)a4
{
  v6 = a4;
  result = objc_msgSend_tableResolver(self->_evalRef, a3, a4, a5, v5);
  if (result)
  {
    v14 = result;
    v15 = objc_msgSend_width(self, v10, v11, v12, v13);
    v22 = 0;
    v21 = TSCECellTractRefCore::coordAtColumnOffset(&self->_apparentTractRef, (v6 % v15), v6 / v15, v16, v17);
    v20 = TSCETableResolverWrapper::formatAtBaseCellCoord(v14, &v21, &v22, v18, v19);
    return TSCEFormat::TSCEFormat(retstr, v20, v22);
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

@end