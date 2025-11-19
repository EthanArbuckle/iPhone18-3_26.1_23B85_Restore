@interface TSCECategoryRefValue
+ (id)categoryRefValue:(id)a3;
+ (id)emptyCategoryRefValue;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCECategoryRefValue)init;
- (TSCECategoryRefValue)initWithCategoryRef:(id)a3;
- (TSCECategoryRefValue)initWithCategoryRef:(id)a3 format:(const TSCEFormat *)a4;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (char)deepType:(id)a3 outError:(id *)a4;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)referredToValue:(id)a3;
@end

@implementation TSCECategoryRefValue

+ (id)emptyCategoryRefValue
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)categoryRefValue:(id)a3
{
  v3 = a3;
  v4 = [TSCECategoryRefValue alloc];
  v8 = objc_msgSend_initWithCategoryRef_(v4, v5, v3, v6, v7);

  return v8;
}

- (TSCECategoryRefValue)init
{
  v8 = 0;
  v9 = 0;
  v10 = 1057;
  v11 = 1;
  v12 = -50266102;
  v13 = 253;
  v6.receiver = self;
  v6.super_class = TSCECategoryRefValue;
  v7 = 0;
  v2 = [(TSCEValue *)&v6 initWithTSCEFormat:&v7];
  v3 = v2;
  if (v2)
  {
    categoryRef = v2->_categoryRef;
    v2->_categoryRef = 0;
  }

  return v3;
}

- (TSCECategoryRefValue)initWithCategoryRef:(id)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1057;
  v9 = 1;
  v10 = -50266102;
  v11 = 253;
  return objc_msgSend_initWithCategoryRef_format_(self, a2, a3, &v5, v3);
}

- (TSCECategoryRefValue)initWithCategoryRef:(id)a3 format:(const TSCEFormat *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSCECategoryRefValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_categoryRef, a3);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCECategoryRefValue;
  v4 = [(TSCEValue *)&v12 copyWithZone:a3];
  v9 = objc_msgSend_copy(self->_categoryRef, v5, v6, v7, v8);
  v10 = v4[7];
  v4[7] = v9;

  return v4;
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 88, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 14)
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asDate:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 103, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 14)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCECategoryRefValue asDate:functionSpec:argumentIndex:outError:]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 112, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    v41 = 0;
  }

  else
  {
    v41 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v41;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 120, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 14)
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v28;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 136, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 14)
  {
    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v28;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 152, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v22, v23, v24, v25, v26) == 14)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCECategoryRefValue asBoolean:functionSpec:argumentIndex:outError:]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 161, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    v41 = 0;
  }

  else
  {
    v41 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v27, a3, a4, v7, a6);
  }

  return v41;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCECategoryRefValue asRichTextStorage:functionSpec:argumentIndex:outError:]", a5, *&a6);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 169, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = a5;
  v25 = objc_msgSend_referredToValue_(self, a3, a4, a5, *&a6);
  if (objc_msgSend_nativeType(v25, v26, v27, v28, v29) == 14)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSCECategoryRefValue asRichTextStorage:functionSpec:argumentIndex:outError:]", v31, v32);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 178, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    v45.receiver = self;
    v45.super_class = TSCECategoryRefValue;
    [(TSCERichTextStorage *)&v45 asRichTextStorage:a4 functionSpec:v24 argumentIndex:v8 outError:a7];
  }

  else if (v25)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v25, v30, a4, a5, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v8 = a6;
  v9 = *&a5;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", a4, *&a5);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 187, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_referredToValue_(self, a2, a3, a4, *&a5);
  if (objc_msgSend_nativeType(v24, v25, v26, v27, v28) == 14)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSCECategoryRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", v30, v31);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 196, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    v46.receiver = self;
    v46.super_class = TSCECategoryRefValue;
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
  v41 = 0;
  v42 = 0;
  v7 = objc_msgSend_relativeGroupUid(self->_categoryRef, a2, a3, v3, v4);
  if (v7 | v8)
  {
    v41 = objc_msgSend_containingRowUid(a3, v8, v9, v10, v11);
    v42 = v8;
  }

  v12 = objc_msgSend_calcEngine(a3, v8, v9, v10, v11);
  categoryRef = self->_categoryRef;
  v18 = objc_msgSend_hidingActionMask(a3, v14, v15, v16, v17);
  v37 = 0;
  if (v12)
  {
    objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_error_(v12, v19, categoryRef, &v41, v18, &v37);
    v23 = v37;

    if (v23)
    {
      v24 = objc_msgSend_errorValue_(TSCEErrorValue, v19, v23, v21, v22);

      goto LABEL_14;
    }

    v25 = v38;
    v26 = v39;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  v27 = (v26 - v25) >> 3;
  if (!v27)
  {
    v28 = objc_msgSend_nilValue(TSCENilValue, v19, v20, v21, v22);
    goto LABEL_12;
  }

  if (v27 == 1)
  {
    v28 = *v25;
LABEL_12:
    v24 = v28;
    goto LABEL_14;
  }

  v29 = [TSCEDenseGrid alloc];
  v32 = objc_msgSend_initWithValues_gridKind_(v29, v30, &v38, 1, v31);
  v24 = objc_msgSend_gridValue_(TSCEGridValue, v33, v32, v34, v35);

LABEL_14:
  v43 = &v38;
  sub_22107C2C0(&v43);

  return v24;
}

@end