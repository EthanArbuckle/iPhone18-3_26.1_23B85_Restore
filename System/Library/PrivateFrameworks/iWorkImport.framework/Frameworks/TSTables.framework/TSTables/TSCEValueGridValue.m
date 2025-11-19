@interface TSCEValueGridValue
+ (id)valueGridValue:(id)a3;
+ (id)valueGridValue:(id)a3 format:(const TSCEFormat *)a4;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCEValueGridValue)initWithValueGrid:(id)a3 format:(const TSCEFormat *)a4;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asReference:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)gridValue;
- (void)apparentGridForRangeContext:(unsigned __int8)a3 tableUID:(TSKUIDStruct)a4 context:(id)a5 spansAllColumns:(BOOL)a6 spansAllRows:(BOOL)a7;
@end

@implementation TSCEValueGridValue

+ (id)valueGridValue:(id)a3
{
  v3 = a3;
  v4 = [TSCEValueGridValue alloc];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1057;
  v13 = 1;
  v14 = -50266102;
  v15 = 253;
  v7 = objc_msgSend_initWithValueGrid_format_(v4, v5, v3, &v9, v6);

  return v7;
}

+ (id)valueGridValue:(id)a3 format:(const TSCEFormat *)a4
{
  v5 = a3;
  v6 = [TSCEValueGridValue alloc];
  v9 = objc_msgSend_initWithValueGrid_format_(v6, v7, v5, a4, v8);

  return v9;
}

- (TSCEValueGridValue)initWithValueGrid:(id)a3 format:(const TSCEFormat *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCEValueGridValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valueGrid, a3);
    v9->_implicitIntersectionOffTable = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TSCEValueGridValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 7, self->_valueGrid);
  v4[8] = self->_implicitIntersectionCoord;
  *(v4 + 72) = self->_implicitIntersectionOffTable;
  return v4;
}

- (char)deepType:(id)a3 outError:(id *)a4
{
  v5 = a3;
  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    if (!objc_msgSend_count(self->_valueGrid, a2, a3, a4, v4) || (objc_msgSend_firstValue(self->_valueGrid, v8, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend_deepType_(v12, v13, v5, v14, v15), v12, v5 != 9))
    {
      LOBYTE(v5) = 16;
    }
  }

  else if (self->_implicitIntersectionOffTable)
  {
    if (a4)
    {
      *a4 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, v4);
    }

    LOBYTE(v5) = 9;
  }

  else
  {
    v17 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, v4);
    LOBYTE(v5) = objc_msgSend_deepType_(v17, v18, v5, v19, v20);
  }

  return v5;
}

- (id)gridValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue gridValue]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 96, 0, "Calling -gridValue direct accessor on TSCEValueGridValue type - stop doing that");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);

  return objc_msgSend_emptyGrid(TSCEGridValue, v15, v16, v17, v18);
}

- (id)asReference:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asReference:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 108, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    if (objc_msgSend_area(self->_valueGrid, a2, a3, a4, *&a5) != 1)
    {
      v30 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v23, self, a3, a4, v7);
      goto LABEL_13;
    }

    v27 = objc_msgSend_firstValue(self->_valueGrid, v23, v24, v25, v26);
    v29 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v27, v28, a3, a4, v7, a6);
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      v30 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, *&a5);
LABEL_13:
      *a6 = v30;
      v35 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v31, v32, v33, v34);
      goto LABEL_16;
    }

    v27 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, *&a5);
    v29 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v27, v36, a3, a4, v7, a6);
  }

  v35 = v29;

LABEL_16:

  return v35;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 140, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v32.receiver = self;
    v32.super_class = TSCEValueGridValue;
    v23 = [(TSCEValue *)&v32 asNumber:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
LABEL_11:
    v28 = v23;
    goto LABEL_13;
  }

  if (self->_implicitIntersectionOffTable)
  {
    *a6 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, *&a5);
    v23 = objc_msgSend_zero(TSCENumberValue, v24, v25, v26, v27);
    goto LABEL_11;
  }

  v29 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, *&a5);
  v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v30, a3, a4, v7, a6);

LABEL_13:

  return v28;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asDate:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 163, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v27.receiver = self;
    v27.super_class = TSCEValueGridValue;
    v23 = [(TSCEValue *)&v27 asDate:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
  }

  else if (self->_implicitIntersectionOffTable)
  {
    objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, *&a5);
    *a6 = v23 = 0;
  }

  else
  {
    v24 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, *&a5);
    v23 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v24, v25, a3, a4, v7, a6);
  }

  return v23;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 186, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v27.receiver = self;
    v27.super_class = TSCEValueGridValue;
    v23 = [(TSCEValue *)&v27 asString:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *a6 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, *&a5);
    }

    v24 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, *&a5);
    v23 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v24, v25, a3, a4, v7, a6);
  }

  return v23;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 208, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v27.receiver = self;
    v27.super_class = TSCEValueGridValue;
    v23 = [(TSCEValue *)&v27 asRawString:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *a6 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, *&a5);
    }

    v24 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, *&a5);
    v23 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v24, v25, a3, a4, v7, a6);
  }

  return v23;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEValueGridValue asRichTextStorage:functionSpec:argumentIndex:outError:]", a5, *&a6);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 230, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v29.receiver = self;
    v29.super_class = TSCEValueGridValue;
    return [(TSCERichTextStorage *)&v29 asRichTextStorage:a4 functionSpec:a5 argumentIndex:v8 outError:a7];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *a7 = objc_msgSend_invalidReferenceError(TSCEError, a3, a4, a5, *&a6);
    }

    v26 = objc_msgSend_valueAtCoord_(self->_valueGrid, a3, &implicitIntersectionCoord, a5, *&a6);
    v28 = v26;
    if (v26)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v26, v27, a4, a5, v8, a7);
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      *&retstr->var2 = 0;
    }
  }

  return result;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 252, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  implicitIntersectionCoord = self->_implicitIntersectionCoord;
  if (implicitIntersectionCoord.column == 0x7FFFFFFF || (*&implicitIntersectionCoord & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
  {
    v27.receiver = self;
    v27.super_class = TSCEValueGridValue;
    return [(TSCEValue *)&v27 asBoolean:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
  }

  else
  {
    if (self->_implicitIntersectionOffTable)
    {
      *a6 = objc_msgSend_invalidReferenceError(TSCEError, a2, a3, a4, *&a5);
    }

    v24 = objc_msgSend_valueAtCoord_(self->_valueGrid, a2, &implicitIntersectionCoord, a4, *&a5);
    v23 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v24, v25, a3, a4, v7, a6);
  }

  return v23;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v7 = a6;
  if (!a7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", a4, *&a5);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGridValue.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 275, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = self->_valueGrid;
  v28 = objc_msgSend_topLeftCoord(v23, v24, v25, v26, v27);
  if (objc_msgSend_isForChartFormulas(a3, v29, v30, v31, v32))
  {
    if (v28)
    {
      v37 = objc_msgSend_copy(v23, v33, v34, v35, v36);

      v23 = v37;
      objc_msgSend_compressToZeroBased(v37, v38, v39, v40, v41);
    }
  }

  else
  {
    v42 = objc_msgSend_copy(v23, v33, v34, v35, v36);

    v47 = objc_msgSend_compressToPopulatedRowsAndColumns(v42, v43, v44, v45, v46);

    v23 = v47;
    if (v28)
    {
      objc_msgSend_compressToZeroBased(v47, v48, v49, v50, v51);
    }
  }

  v65[0] = a3;
  v65[1] = a4;
  v66 = 0;
  v67 = a5;
  v68[0] = 0;
  *(v68 + 3) = 0;
  v69 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v70 = 0;
  v71 = 0;
  v52 = [TSCEDenseGrid alloc];
  v56 = objc_msgSend_initWithValueGrid_(v52, v53, v23, v54, v55);
  v60 = v56;
  if (v7)
  {
    if (v56)
    {
      objc_msgSend_preferredFormatOptions_(v56, v57, v65, v58, v59);
    }

    else
    {
      memset(v64, 0, sizeof(v64));
    }

    v61 = objc_msgSend_gridValue_format_(TSCEGridValue, v57, v60, v64, v59);
  }

  else
  {
    v61 = objc_msgSend_gridValue_(TSCEGridValue, v57, v56, v58, v59);
  }

  v62 = v61;

  return v62;
}

- (void)apparentGridForRangeContext:(unsigned __int8)a3 tableUID:(TSKUIDStruct)a4 context:(id)a5 spansAllColumns:(BOOL)a6 spansAllRows:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a3;
  v11 = objc_msgSend_calcEngine(a5, a2, a3, a4._lower, a4._upper, a4._lower, a4._upper);
  v15 = objc_msgSend_tableResolverForTableUID_(v11, v12, &v18, v13, v14);

  if (v15)
  {
    v17 = objc_msgSend_apparentGridForRangeContext_rangeContext_spansAllColumns_spansAllRows_(v15, v16, self->_valueGrid, v9, v8, v7);
    if (v17 != self->_valueGrid)
    {
      objc_storeStrong(&self->_valueGrid, v17);
    }
  }
}

@end