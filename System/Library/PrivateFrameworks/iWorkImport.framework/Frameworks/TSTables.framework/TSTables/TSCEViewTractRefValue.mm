@interface TSCEViewTractRefValue
+ (id)viewTractRefValue:(id)a3;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCEViewTractRefValue)init;
- (TSCEViewTractRefValue)initWithViewTractRef:(id)a3;
- (TSCEViewTractRefValue)initWithViewTractRef:(id)a3 format:(const TSCEFormat *)a4;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)referredToValue:(id)a3;
@end

@implementation TSCEViewTractRefValue

+ (id)viewTractRefValue:(id)a3
{
  v3 = a3;
  v4 = [TSCEViewTractRefValue alloc];
  v8 = objc_msgSend_initWithViewTractRef_(v4, v5, v3, v6, v7);

  return v8;
}

- (TSCEViewTractRefValue)init
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithViewTractRef_format_(self, a2, 0, &v4, v2);
}

- (TSCEViewTractRefValue)initWithViewTractRef:(id)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1057;
  v9 = 1;
  v10 = -50266102;
  v11 = 253;
  return objc_msgSend_initWithViewTractRef_format_(self, a2, a3, &v5, v3);
}

- (TSCEViewTractRefValue)initWithViewTractRef:(id)a3 format:(const TSCEFormat *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCEViewTractRefValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewTractRef, a3);
  }

  return v9;
}

- (char)deepType:(id)a3 outError:(id *)a4
{
  v7 = objc_msgSend_referredToValue_(self, a2, a3, a4, v4);
  v14 = 0;
  v10 = objc_msgSend_deepType_outError_(v7, v8, a3, &v14, v9);
  v11 = v14;

  if (v11)
  {
    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    v10 = 9;
  }

  return v10;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 75, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 17)
  {
    objc_msgSend_zero(TSCENumberValue, v27, v28, v29, v30);
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asDate:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 90, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 17)
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v28;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 105, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 17)
  {
    v31.receiver = self;
    v31.super_class = TSCEViewTractRefValue;
    v28 = [(TSCEValue *)&v31 asString:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
  }

  else
  {
    v28 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  v29 = v28;

  return v29;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 121, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 17)
  {
    v31.receiver = self;
    v31.super_class = TSCEViewTractRefValue;
    v28 = [(TSCEValue *)&v31 asRawString:a3 functionSpec:a4 argumentIndex:v7 outError:a6];
  }

  else
  {
    v28 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  v29 = v28;

  return v29;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEViewTractRefValue asRichTextStorage:functionSpec:argumentIndex:outError:]", a5, *&a6);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 137, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_referredToValue_(self, a3, a4, a5, *&a6);
  if (objc_msgSend_nativeType(v24, v25, v26, v27, v28) == 17)
  {
    v31.receiver = self;
    v31.super_class = TSCEViewTractRefValue;
    [(TSCERichTextStorage *)&v31 asRichTextStorage:a4 functionSpec:a5 argumentIndex:v8 outError:a7];
  }

  else if (v24)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v24, v29, a4, a5, v8, a7);
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 153, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 17)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCEViewTractRefValue asBoolean:functionSpec:argumentIndex:outError:]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 162, 0, "Error: couldn't resolve TSCEViewTractRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    v41 = 0;
  }

  else
  {
    v41 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v41;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v8 = a6;
  v9 = *&a5;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", a4, *&a5);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 171, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v24, v25, v26, v27, v28) == 17)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSCEViewTractRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", v30, v31);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 180, 0, "Error: couldn't resolve TSCEViewTractRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    v46.receiver = self;
    v46.super_class = TSCEViewTractRefValue;
    v43 = [(TSCEValue *)&v46 asGrid:a3 functionSpec:a4 argumentIndex:v9 applyPreferredFormat:v8 outError:a7];
  }

  else
  {
    v43 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v24, v29, a3, a4, v9, v8, a7);
  }

  v44 = v43;

  return v44;
}

- (id)referredToValue:(id)a3
{
  v38 = objc_msgSend_tableUID(self->_viewTractRef, a2, a3, v3, v4);
  v39 = v7;
  v11 = objc_msgSend_calcEngine(a3, v7, v8, v9, v10);
  v15 = objc_msgSend_tableResolverForTableUID_(v11, v12, &v38, v13, v14);

  if (v15)
  {
    viewTractRef = self->_viewTractRef;
    v21 = objc_msgSend_hidingActionMask(a3, v16, v17, v18, v19);
    v37 = 0;
    v26 = objc_msgSend_isForChartFormulas(a3, v22, v23, v24, v25);
    v28 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(v15, v27, viewTractRef, v21, &v37, 0, v26 ^ 1u);
    v29 = v37;
    if (v29)
    {
      v34 = v29;
      objc_msgSend_errorValue_(TSCEErrorValue, v30, v29, v32, v33);
      v35 = LABEL_6:;

LABEL_7:
      goto LABEL_11;
    }

    if (v28)
    {
      v35 = objc_msgSend_valueGridValue_(TSCEValueGridValue, v30, v28, v32, v33);
      v34 = v28;
      goto LABEL_7;
    }
  }

  else
  {
    v34 = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v16, v38, v39, v19);
    if (v34)
    {
      v28 = 0;
      objc_msgSend_errorValue_(TSCEErrorValue, v30, v34, v32, v33);
      goto LABEL_6;
    }
  }

  v35 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32, v33);
LABEL_11:

  return v35;
}

@end