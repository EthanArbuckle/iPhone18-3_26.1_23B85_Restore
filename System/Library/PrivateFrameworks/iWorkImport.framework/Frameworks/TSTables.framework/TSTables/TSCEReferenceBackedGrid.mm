@interface TSCEReferenceBackedGrid
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (TSCEFormat)formatAtIndex:(SEL)index accessContext:(unint64_t)context;
- (TSKUIDStruct)tableUID;
- (char)deepType:(id)type outError:(id *)error;
- (id)apparentReference:(id)reference;
- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error;
- (id)asValueGrid:(id)grid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepResolveInPlace:(id)place;
- (id)initWitRefValue:(id)value rangeContext:(unsigned __int8)context;
- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context;
- (unint64_t)count;
- (unsigned)height;
- (unsigned)width;
@end

@implementation TSCEReferenceBackedGrid

- (id)initWitRefValue:(id)value rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  valueCopy = value;
  v39.receiver = self;
  v39.super_class = TSCEReferenceBackedGrid;
  v11 = [(TSCEAbstractGrid *)&v39 init];
  if (v11)
  {
    v12 = objc_msgSend_evalRef(valueCopy, v7, v8, v9, v10);
    v17 = objc_msgSend_tableResolver(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_copy(v12, v18, v19, v20, v21);
    v23 = *(v11 + 1);
    *(v11 + 1) = v22;

    v11[104] = objc_msgSend_isOutputOfAFunction(valueCopy, v24, v25, v26, v27);
    if (v17)
    {
      v32 = objc_msgSend_tractRef(v12, v28, v29, v30, v31);
      TSCETableResolverWrapper::apparentTractRefForTractRef(v17, v32, contextCopy, v33, &v36);
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

- (id)copyWithZone:(_NSZone *)zone
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

- (id)apparentReference:(id)reference
{
  referenceCopy = reference;
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
  v20 = objc_msgSend_containingCell(referenceCopy, v16, v17, v18, v19);
  v24 = 0;
  isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v15, v21, v14, v20, &v24, self->_permitsAccessInsideMergeRegions, 0);

  TSUIndexSet::~TSUIndexSet(&v26);
  TSUIndexSet::~TSUIndexSet(&v25);

  return isOutputOfAFunction;
}

- (char)deepType:(id)type outError:(id *)error
{
  typeCopy = type;
  if (objc_msgSend_count(self, v7, v8, v9, v10) == 1)
  {
    v11 = typeCopy;
    v19[0] = v11;
    v19[1] = 0;
    v20 = 0;
    v21[0] = 0xFFFFFFFFLL;
    *(v21 + 7) = 0;
    v22 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v23 = 0;
    v24 = 0;
    v14 = objc_msgSend_valueAtIndex_accessContext_(self, v12, 0, v19, v13);
    v17 = objc_msgSend_deepType_outError_(v14, v15, v11, error, v16);
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)asValueGrid:(id)grid
{
  gridCopy = grid;
  v4 = objc_opt_new();
  v27 = 0;
  v28 = objc_msgSend_dimensions(self, v5, v6, v7, v8);
  v13 = 0;
  v26 = *objc_msgSend_containingCell(gridCopy, v9, v10, v11, v12);
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

- (id)deepResolveInPlace:(id)place
{
  placeCopy = place;
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
      v19 = objc_msgSend_containingCell(placeCopy, v15, v16, v17, v18);
      v35 = 0;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v14, v20, v13, v19, &v35, 1, 0);
      v24 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(isOutputOfAFunction, v22, placeCopy, 1, v23);
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
  objc_msgSend_deepResolveInPlace_(v5, v11, placeCopy, v28, v12);
  v29 = [TSCEDenseGrid alloc];
  v33 = objc_msgSend_initWithValueGrid_(v29, v30, v5, v31, v32);

  return v33;
}

- (id)asNumber:(id)number functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  numberCopy = number;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = numberCopy;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, v15, spec, v7, error);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asNumber:numberCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v20;
}

- (id)asDate:(id)date functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  dateCopy = date;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = dateCopy;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v18, v19, v15, spec, v7, error);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asDate:dateCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v20;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  booleanCopy = boolean;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = booleanCopy;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v18, v19, v15, spec, v7, error);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asBoolean:booleanCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v20;
}

- (id)asReference:(id)reference functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  referenceCopy = reference;
  if (!error)
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

- (id)asString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = stringCopy;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v18, v19, v15, spec, v7, error);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asString:stringCopy functionSpec:spec argIndex:v7 outError:error];
  }

  return v20;
}

- (id)asRawString:(id)string functionSpec:(id)spec argIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  stringCopy = string;
  if (objc_msgSend_count(self, v11, v12, v13, v14) == 1)
  {
    v15 = stringCopy;
    v23[0] = v15;
    v23[1] = 0;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *(v25 + 7) = 0;
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v27 = 0;
    v28 = 0;
    v18 = objc_msgSend_valueAtIndex_accessContext_(self, v16, 0, v23, v17);
    v20 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v18, v19, v15, spec, v7, error);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSCEReferenceBackedGrid;
    v20 = [(TSCEAbstractGrid *)&v22 asRawString:stringCopy functionSpec:spec argIndex:v7 outError:error];
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

- (id)valueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v7 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, a2, coord, &self->_apparentTractRef, v4);
  v11 = v7;
  if (context->var7)
  {
    context->var9 = objc_msgSend_getHidingActionForRows_(v7, v8, 0, v9, v10);
    context->var10 = objc_msgSend_getHidingActionForRows_(v11, v12, 1, v13, v14);
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
  context->var11.range = v38;
  context->var11._tableUID = v23;
  v24 = TSCEGridAccessContext::argSpec(context, v17, v18, v19, v20);
  if (v24)
  {
    v29 = objc_msgSend_argumentAccessor(v24, v25, v26, v27, v28);
    v37 = isOutputOfAFunction;
    v30 = (*(*v29 + 16))(v29, &v37, context, 0);
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

- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)coord accessContext:(TSCEGridAccessContext *)context
{
  v7 = objc_msgSend_makeCellReferenceForOffset_apparentTractRef_(self->_evalRef, a2, coord, &self->_apparentTractRef, v4);
  v12 = v7;
  if (context->var7)
  {
    context->var9 = objc_msgSend_getHidingActionForRows_(v7, v8, 0, v10, v11);
    context->var10 = objc_msgSend_getHidingActionForRows_(v12, v13, 1, v14, v15);
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
  context->var11.range = *v41;
  context->var11._tableUID = v17;
  if (v12)
  {
    var0 = context->var0;
    if (objc_msgSend_inArrayMode(context->var0, v8, v9, v10, v11))
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

  v25 = TSCEGridAccessContext::argSpec(context, v8, v9, v10, v11);
  if (v25)
  {
    v30 = objc_msgSend_argumentAccessor(v25, v26, v27, v28, v29);
    v38 = v21;
    v31 = (*(*v30 + 16))(v30, &v38, context, 0);
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

- (id)valueAtIndex:(unint64_t)index accessContext:(TSCEGridAccessContext *)context
{
  if (sub_2210EE8F8(&self->_apparentTractRef._columns))
  {
    v11 = objc_msgSend_width(self, v7, v8, v9, v10);
    v20[0] = index % v11;
    v20[1] = index / v11;
    v14 = objc_msgSend_valueAtGridCoord_accessContext_(self, v12, v20, context, v13);
  }

  else
  {
    v15 = objc_msgSend_invalidReferenceError(TSCEError, v7, v8, v9, v10);
    v14 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v15, v17, v18);
  }

  return v14;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context
{
  v7 = *&height;
  v11 = objc_msgSend_rangeCoord(self->_evalRef, a2, coord, *&width, *&height);
  v16 = v11;
  v17 = v11 & 0xFFFF00000000;
  v18 = v12 & 0xFFFF00000000;
  if (v11 != 0x7FFFFFFFLL || v17 == 0x7FFF00000000 || v18 == 0x7FFF00000000)
  {
    if (v11 != 0x7FFFFFFFLL && v17 == 0x7FFF00000000 && v18 == 0x7FFF00000000)
    {
      v23 = v12 != 0x7FFFFFFF && coord->column == 0;
      if (v23 && objc_msgSend_width(self, v12, v13, v14, v15) == width)
      {
        v24 = (coord->row + v16);
        v25 = v24 | 0x7FFF00000000;
        v26 = (v7 + v24 - 1) | 0x7FFF00000000;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v27 = v12 == 0x7FFFFFFF && coord->row == 0;
    if (v27 && objc_msgSend_height(self, v12, v13, v14, v15) == v7)
    {
      v26 = ((width + LOWORD(coord->column) + WORD2(v16) - 1) << 32) | 0x7FFFFFFF;
      v25 = ((WORD2(v16) + LOWORD(coord->column)) << 32) | 0x7FFFFFFF;
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
  v56 = (width | (v7 << 32));
  TSUCellRect::offsetBy();
  v30 = v55;
  v31 = v56;
  v25 = __C(v30, v31);
  v26 = v32;
LABEL_38:
  v33 = [TSCEReferenceValue alloc];
  v34 = context->var0;
  v55 = v25;
  v56 = v26;
  v57 = objc_msgSend_tableUID(self, v35, v36, v37, v38);
  v58 = v39;
  v54 = 0;
  v40 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v33, v39, v34, &v55, &v54);

  v45 = TSCEGridAccessContext::argSpec(context, v41, v42, v43, v44);
  if (v45 && ((v50 = objc_msgSend_argumentType(v45, v46, v47, v48, v49), v50 == 1) || v50 == 6 || v50 == 255) || width != 1 || v7 != 1)
  {
    v51 = v40;
  }

  else
  {
    v51 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v40, v46, context->var0, 1, v49);
  }

  v52 = v51;

  return v52;
}

- (TSCEFormat)formatAtIndex:(SEL)index accessContext:(unint64_t)context
{
  contextCopy = context;
  result = objc_msgSend_tableResolver(self->_evalRef, index, context, a5, v5);
  if (result)
  {
    v14 = result;
    v15 = objc_msgSend_width(self, v10, v11, v12, v13);
    v22 = 0;
    v21 = TSCECellTractRefCore::coordAtColumnOffset(&self->_apparentTractRef, (contextCopy % v15), contextCopy / v15, v16, v17);
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