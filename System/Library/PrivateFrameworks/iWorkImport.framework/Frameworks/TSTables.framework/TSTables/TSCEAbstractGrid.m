@interface TSCEAbstractGrid
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (BOOL)canResolveToSingleError;
- (BOOL)containsError:(int)a3 evaluationContext:(id)a4 outError:(id *)a5;
- (TSCEAbstractGrid)init;
- (TSCEFormat)formatAtIndex:(SEL)a3 accessContext:(unint64_t)a4;
- (TSCEFormat)preferredFormatOptions:(SEL)a3;
- (TSCEGridDimensions)dimensions;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)asDate:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asReference:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6;
- (id)asValueGrid:(id)a3;
- (id)deepResolveInPlace:(id)a3;
- (id)error;
- (id)errorWithContext:(id)a3;
- (id)flattenedGrid:(TSCEGridAccessContext *)a3 format:(const TSCEFormat *)a4;
- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4;
- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6;
- (id)value;
- (id)valueAtGridCoord:(const TSCEGridCoord *)a3;
- (id)valueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4;
- (id)valueAtIndex:(unint64_t)a3;
- (id)valueAtIndex:(unint64_t)a3 accessContext:(TSCEGridAccessContext *)a4;
- (unint64_t)count;
@end

@implementation TSCEAbstractGrid

- (TSCEAbstractGrid)init
{
  v3.receiver = self;
  v3.super_class = TSCEAbstractGrid;
  return [(TSCEAbstractGrid *)&v3 init];
}

- (char)deepType:(id)a3 outError:(id *)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid deepType:outError:]", a4, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 38, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 9;
}

- (id)errorWithContext:(id)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid errorWithContext:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 43, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 0;
}

- (BOOL)canResolveToSingleError
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid canResolveToSingleError]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 48, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 1;
}

- (TSCEGridDimensions)dimensions
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid dimensions]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 53, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0x7FFFFFFF7FFFFFFFLL;
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtGridCoord:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 58, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);

  return objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
}

- (id)valueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtGridCoord:accessContext:]", a4, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 63, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);

  return objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
}

- (id)resolvedValueAtGridCoord:(const TSCEGridCoord *)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v6 = objc_msgSend_valueAtGridCoord_accessContext_(self, a2, a3, a4, v4);
  if (objc_msgSend_nativeType(v6, v7, v8, v9, v10) == 6)
  {
    v15 = objc_msgSend_referenceValue(v6, v11, v12, v13, v14);
    v18 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v15, v16, a4->var0, 0, v17);

    v6 = v18;
  }

  return v6;
}

- (id)valueAtIndex:(unint64_t)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtIndex:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 80, 0, "valueAtIndex: only works on TSCEDenseGrid atm, others require an AccessContext to interpret.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);

  return objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
}

- (id)valueAtIndex:(unint64_t)a3 accessContext:(TSCEGridAccessContext *)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid valueAtIndex:accessContext:]", a4, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 84, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);

  return objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
}

- (unint64_t)count
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid count]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 89, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (id)flattenedGrid:(TSCEGridAccessContext *)a3 format:(const TSCEFormat *)a4
{
  memset(v60, 0, sizeof(v60));
  v8 = objc_msgSend_count(self, a2, a3, a4, v4);
  var6 = a3->var6;
  a3->var6 = 1;
  sub_2210ED528(v60, v8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v61 = objc_msgSend_valueAtIndex_accessContext_(self, v9, i, a3, v10);
      if ((objc_msgSend_isNil(v61, v12, v13, v14, v15) & 1) == 0)
      {
        v20 = objc_msgSend_nativeType(v61, v16, v17, v18, v19);
        if (v20 == 6 || v20 == 1)
        {
          v22 = v61;
          v23 = a3->var0;
          v24 = a3->var1;
          var3 = a3->var3;
          v59 = 0;
          v27 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v26, v23, v24, var3, 1, &v59);
          v28 = v59;

          if (!v28)
          {
            v31 = objc_msgSend_flattenedGrid_format_(v27, v29, a3, a4, v30);
            v38 = objc_msgSend_count(v31, v32, v33, v34, v35);
            if (v38)
            {
              for (j = 0; j != v38; ++j)
              {
                v58 = objc_msgSend_valueAtIndex_accessContext_(v31, v36, j, a3, v37);
                if (!objc_msgSend_isNil(v58, v40, v41, v42, v43) || a3->var8)
                {
                  sub_221179A54(v60, &v58);
                }
              }
            }
          }
        }

        else
        {
          sub_221179A54(v60, &v61);
        }
      }
    }
  }

  a3->var6 = var6;
  v44 = [TSCEDenseGrid alloc];
  v49 = objc_msgSend_gridKind(self, v45, v46, v47, v48);
  v52 = objc_msgSend_initWithValues_gridKind_(v44, v50, v60, v49, v51);
  v55 = objc_msgSend_gridValue_format_(TSCEGridValue, v53, v52, a4, v54);

  v61 = v60;
  sub_22107C2C0(&v61);

  return v55;
}

- (TSCEFormat)formatAtIndex:(SEL)a3 accessContext:(unint64_t)a4
{
  v13 = objc_msgSend_valueAtIndex_accessContext_(self, a3, a4, a5, v5);
  v11 = a5->var0;
  if (v13)
  {
    objc_msgSend_formatWithContext_(v13, v8, v11, v9, v10);
  }

  else
  {
    *&retstr->_tskFormat = 0u;
    *&retstr->_durationFormat = 0u;
  }

  return result;
}

- (TSCEFormat)preferredFormatOptions:(SEL)a3
{
  result = objc_msgSend_count(self, a3, a4, v4, v5);
  retstr->_tskFormat = 0;
  retstr->_formatType = 0;
  retstr->_formatState = 0;
  *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
  *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
  *&retstr->_baseFormat.base = -50266102;
  retstr->_numberFormat.decimalPlaces = -3;
  *(&retstr->_numberFormat + 1) &= 0xE0u;
  retstr->_numberFormat.currencyCodeIndex = 0;
  if (result)
  {
    v12 = result;
    objc_msgSend_formatAtIndex_accessContext_(self, v10, 0, a4, v11);
    result = TSCEFormat::operator=(retstr, &v21);
    if (v12 != 1)
    {
      if (v12 >= 5)
      {
        v15 = 5;
      }

      else
      {
        v15 = v12;
      }

      for (i = 1; i != v15; ++i)
      {
        objc_msgSend_formatAtIndex_accessContext_(self, v13, i, a4, v14);
        TSCEFormat::formatByMergingWithFormat(retstr, &v21, v17, v18, v19, v20);
        result = TSCEFormat::operator=(retstr, v20);
      }
    }
  }

  return result;
}

- (BOOL)containsError:(int)a3 evaluationContext:(id)a4 outError:(id *)a5
{
  v6 = *&a3;
  v8 = a4;
  v13 = objc_msgSend_count(self, v9, v10, v11, v12);
  v16 = v8;
  v24[1] = 0;
  v25 = 0;
  v24[0] = v16;
  v26 = v6;
  v27[0] = 0;
  *(v27 + 3) = 0;
  v28 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v29 = 0;
  v30 = 0;
  if (v13)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = objc_msgSend_valueAtIndex_accessContext_(self, v14, v17, v24, v15);
      HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v19, v20, v6, v16, a5);

      if (HasError_context_outError)
      {
        break;
      }

      v18 = ++v17 < v13;
    }

    while (v13 != v17);
    v22 = v25;
  }

  else
  {
    v22 = 0;
    v18 = 0;
  }

  return v18;
}

- (id)error
{
  v9 = objc_msgSend_count(self, a2, v2, v3, v4);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_valueAtIndex_(self, v6, v10, v7, v8);
      if (objc_msgSend_isError(v11, v12, v13, v14, v15))
      {
        break;
      }

      if (v9 == ++v10)
      {
        v9 = 0;
        goto LABEL_10;
      }
    }

    v20 = objc_msgSend_asErrorValue(v11, v16, v17, v18, v19);
    v25 = v20;
    if (v20)
    {
      v9 = objc_msgSend_error(v20, v21, v22, v23, v24);
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_10:

  return v9;
}

- (id)subGridValueAtGridCoord:(const TSCEGridCoord *)a3 width:(int)a4 height:(int)a5 accessContext:(TSCEGridAccessContext *)a6
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid subGridValueAtGridCoord:width:height:accessContext:]", *&a4, *&a5, a6);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 200, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);

  return objc_msgSend_zero(TSCENumberValue, v17, v18, v19, v20);
}

- (id)value
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid value]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 206, 0, "TSCEAbstractGrid subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);

  return objc_msgSend_zero(TSCENumberValue, v15, v16, v17, v18);
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asNumber:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 211, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_value(self, v10, v11, v12, v13);
  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, v26, v14, a4, v7);

  v32 = objc_msgSend_zero(TSCENumberValue, v28, v29, v30, v31);

  return v32;
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asDate:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 217, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_value(self, v10, v11, v12, v13);
  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, v26, v14, a4, v7);

  return 0;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asBoolean:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 223, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_value(self, v10, v11, v12, v13);
  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, v26, v14, a4, v7);

  return 0;
}

- (id)asReference:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asReference:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 229, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_value(self, v10, v11, v12, v13);
  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, v26, v14, a4, v7);

  v32 = objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v28, v29, v30, v31);

  return v32;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asString:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 235, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_value(self, v10, v11, v12, v13);
  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, v26, v14, a4, v7);

  return 0;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  v14 = a3;
  if (!a6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEAbstractGrid asRawString:functionSpec:argIndex:outError:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 241, 0, "outError non-nil required to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_value(self, v10, v11, v12, v13);
  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, v26, v14, a4, v7);

  return 0;
}

- (id)asValueGrid:(id)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid asValueGrid:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 247, 0, "Each specific TSCEAbstractGrid type should handle this");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 0;
}

- (id)deepResolveInPlace:(id)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEAbstractGrid deepResolveInPlace:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAbstractGrid.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 252, 0, "Each specific TSCEAbstractGrid type should handle this");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return self;
}

@end