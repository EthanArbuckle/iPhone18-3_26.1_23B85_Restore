@interface TSCEValue
+ (BOOL)valuesAreEqualLeft:(id)a3 right:(id)a4 context:(id)a5 outError:(id *)a6;
+ (int64_t)compareValuesForLookupLeft:(id)a3 right:(id)a4 context:(id)a5 outError:(id *)a6;
+ (int64_t)compareValuesLeft:(id)a3 right:(id)a4 context:(id)a5 outError:(id *)a6;
+ (int64_t)compareValuesWithContextLeft:(id)a3 right:(id)a4 context:(id)a5 functionSpec:(id)a6 outError:(id *)a7;
- (BOOL)BOOLean;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (BOOL)asBoolean:(id)a3 outError:(id *)a4;
- (BOOL)isNativelyEqual:(id)a3;
- (BOOL)isTokenOrEmptyArg;
- (BOOL)valueHasError:(int)a3 context:(id)a4 outError:(id *)a5;
- (BOOL)valueIsEmptyWithContext:(id)a3;
- (TSCERichTextStorage)asRawRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6;
- (TSCERichTextStorage)rawRichTextStorage;
- (TSCEValue)init;
- (TSCEValue)initWithTSCEFormat:(const TSCEFormat *)a3;
- (TSCEValue)initWithTSKFormat:(id)a3;
- (TSKFormat)tskFormat;
- (char)nativeType;
- (double)coercedDouble;
- (id).cxx_construct;
- (id)asCategoryRef;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asDate:(id)a3 outError:(id *)a4;
- (id)asFunctorValue:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7;
- (id)asGridValue;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asNumber:(id)a3 outError:(id *)a4;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asReference:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 outError:(id *)a4;
- (id)asStringWithLocale:(id)a3;
- (id)canonicalKeyStringForLocale:(id)a3;
- (id)coercedDate;
- (id)coercedErrorWithContext:(id)a3;
- (id)coercedStringWithContext:(id)a3;
- (id)coercedStringWithLocale:(id)a3;
- (id)convertArrayToText:(id)a3 maximumStringLength:(unint64_t)a4 formatMode:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)date;
- (id)deepResolveInPlace:(id)a3;
- (id)description;
- (id)evaluateThunk:(id)a3;
- (id)maxValue:(id)a3 locale:(id)a4;
- (id)minValue:(id)a3 locale:(id)a4;
- (id)number;
- (id)referenceValue;
- (id)reorganizeValueForSorting:(id)a3;
- (id)resolveToSingleValueOrError:(id)a3;
- (unint64_t)hash;
- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)a3;
- (void)attachWarning:(id)a3;
- (void)attachWarnings:(id)a3;
- (void)setTskFormat:(id)a3;
@end

@implementation TSCEValue

- (TSCEValue)init
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1057;
  v9 = 1;
  v10 = -50266102;
  v11 = 253;
  return objc_msgSend_initWithTSCEFormat_(self, a2, &v5, v2, v3);
}

- (TSCEValue)initWithTSKFormat:(id)a3
{
  v8 = a3;
  if (v8)
  {
    TSCEFormat::TSCEFormat(&v15, v8, 0);
    v12 = objc_msgSend_initWithTSCEFormat_(self, v9, &v15, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_init(self, v4, v5, v6, v7);
  }

  v13 = v12;

  return v13;
}

- (TSCEValue)initWithTSCEFormat:(const TSCEFormat *)a3
{
  TSCEFormat::operator=(&self->_format, a3);
  warnings = self->_warnings;
  self->_warnings = 0;

  self->_rangeContextOverride = 3;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithTSCEFormat_(v4, v5, &self->_format, v6, v7);
  v13 = objc_msgSend_mutableCopy(self->_warnings, v9, v10, v11, v12);
  v14 = *(v8 + 40);
  *(v8 + 40) = v13;

  *(v8 + 48) = self->_rangeContextOverride;
  return v8;
}

- (TSKFormat)tskFormat
{
  objc_msgSend_format(self, a2, v2, v3, v4);
  v9 = TSCEFormat::tskFormat(&v11, v5, v6, v7, v8);

  return v9;
}

- (void)setTskFormat:(id)a3
{
  v4 = a3;
  TSCEFormat::TSCEFormat(&v8, v4, 0);
  TSCEFormat::TSCEFormat(&v9, &v8);
  objc_msgSend_setFormat_(self, v5, &v9, v6, v7);
}

- (char)nativeType
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue nativeType]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 93, 0, "Subclasses must override nativeType");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 121, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, a3, a4, v7);

  return objc_msgSend_zero(TSCENumberValue, v22, v23, v24, v25);
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asDate:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 131, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, a3, a4, v7);
  return 0;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 140, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, a3, a4, v7);
  return 0;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 149, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, a3, a4, v7);
  return 0;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v8 = *&a6;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEValue asRichTextStorage:functionSpec:argumentIndex:outError:]", a5, *&a6);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v24, v17, 158, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v25 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, a3, a4, a5, v8, a7);
  sub_221077074(retstr);

  return result;
}

- (TSCERichTextStorage)asRawRichTextStorage:(SEL)a3 functionSpec:(id)a4 argumentIndex:(id)a5 outError:(int)a6
{
  v9 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(self, a3, a4, a5, *&a6, a7);
  sub_221077074(retstr);

  return result;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 178, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, a3, a4, v7);
  return 0;
}

- (id)asGrid:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 applyPreferredFormat:(BOOL)a6 outError:(id *)a7
{
  v27 = self;
  if (!a7)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", a4, *&a5, a6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 196, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  memset(v26, 0, sizeof(v26));
  sub_221179A54(v26, &v27);
  v18 = [TSCEDenseGrid alloc];
  v21 = objc_msgSend_initWithValues_gridKind_(v18, v19, v26, 1, v20);
  v24 = objc_msgSend_gridValue_format_(TSCEGridValue, v22, v21, &v27->_format, v23);

  v28 = v26;
  sub_22107C2C0(&v28);

  return v24;
}

- (id)asReference:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asReference:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 210, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, a3, a4, v7);

  return objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v22, v23, v24, v25);
}

- (id)asFunctorValue:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asFunctorValue:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 223, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = objc_msgSend_functionName(a4, a2, a3, a4, *&a5);
  *a6 = objc_msgSend_requiresLambdaArgumentError_argIndex_(TSCEError, v21, v20, (a5 + 1), v22);

  TSCEFunctor::TSCEFunctor(&v28);
  v26 = objc_msgSend_functorValue_(TSCEFunctorValue, v23, &v28, v24, v25);

  return v26;
}

- (id)description
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue description]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 233, 0, "subclasses should override TSCEValue -description");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (id)canonicalKeyStringForLocale:(id)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue canonicalKeyStringForLocale:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v8, v9);
  v11 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 246, 0, "type %@ does NOT support -canonicalKeyString", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (unint64_t)hash
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue hash]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 256, 0, "subclasses must override TSCEValue::hash()");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (void)attachWarning:(id)a3
{
  v10 = a3;
  if (v10)
  {
    warnings = self->_warnings;
    if (!warnings)
    {
      v8 = objc_opt_new();
      v9 = self->_warnings;
      self->_warnings = v8;

      warnings = self->_warnings;
    }

    objc_msgSend_addObject_(warnings, v4, v10, v5, v6);
  }
}

- (void)attachWarnings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && self->_warnings != v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend_attachWarning_(self, v8, *(*(&v14 + 1) + 8 * v13++), v9, v10, v14);
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v14, v18, 16);
      }

      while (v11);
    }
  }
}

- (BOOL)isTokenOrEmptyArg
{
  if (objc_msgSend_isToken(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return objc_msgSend_isEmptyArg(self, v6, v7, v8, v9);
}

- (id)deepResolveInPlace:(id)a3
{
  v4 = self;
  v13 = objc_msgSend_nativeType(v4, v5, v6, v7, v8);
  if (v13 > 0xD)
  {
    if (v13 > 16)
    {
      if (v13 != 17 && v13 != 19)
      {
        goto LABEL_13;
      }
    }

    else if (v13 != 14)
    {
      if (v13 == 16)
      {
        v14 = objc_msgSend_valueGrid(v4, v9, v10, v11, v12);
        objc_msgSend_deepResolveInPlace_(v14, v15, a3, v16, v17);
      }

      goto LABEL_13;
    }

    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEValue deepResolveInPlace:]", v11, v12);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 332, 0, "Needs deepResolveInPlace, but not implemented.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
LABEL_13:
    v34 = v4;
    v4 = v34;
LABEL_14:
    v22 = v34;
    goto LABEL_15;
  }

  if (v13 == 1)
  {
    v34 = objc_msgSend_deepResolveInPlace_(v4, v9, a3, v11, v12);
    goto LABEL_14;
  }

  if (v13 != 6)
  {
    if (v13 == 13)
    {
      v18 = objc_msgSend_unwrapThunk_(a3, v9, v4, v11, v12);

      v22 = objc_msgSend_deepResolveInPlace_(v18, v19, a3, v20, v21);
      v4 = v18;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v36 = v4;
  v4 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v36, v37, a3, 1, v38);

  v22 = objc_msgSend_deepResolveInPlace_(v4, v39, a3, v40, v41);

LABEL_15:

  return v22;
}

- (id)resolveToSingleValueOrError:(id)a3
{
  v4 = self;
  v13 = objc_msgSend_nativeType(v4, v5, v6, v7, v8);
  if (v13 > 0xD)
  {
    switch(v13)
    {
      case 0xEu:
        goto LABEL_9;
      case 0x10u:
        v83 = objc_msgSend_valueGrid(v4, v9, v10, v11, v12);
        v88 = objc_msgSend_dimensions(v83, v84, v85, v86, v87);
        if (HIDWORD(v88) * v88 != 1)
        {
          v109 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v89, v90, v91, v92);
          v113 = objc_msgSend_errorValue_(TSCEErrorValue, v110, v109, v111, v112);
LABEL_30:
          v57 = v113;

          goto LABEL_31;
        }

        v93 = objc_msgSend_firstValue(v83, v89, v90, v91, v92);
        v97 = objc_msgSend_resolveToSingleValueOrError_(v93, v94, a3, v95, v96);

        v4 = v97;
        v23 = objc_msgSend_nativeType(v97, v98, v99, v100, v101);
        goto LABEL_24;
      case 0x11u:
LABEL_9:
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEValue resolveToSingleValueOrError:]", v11, v12);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v29, v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 402, 0, "Needs resolveToSingleValueOrError, but not implemented.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
        break;
    }

LABEL_23:
    v23 = objc_msgSend_nativeType(v4, v9, v10, v11, v12);
    goto LABEL_24;
  }

  if (v13 != 1)
  {
    if (v13 == 6)
    {
      v57 = a3;
      v133._decimal.w[0] = v57;
      v133._decimal.w[1] = 0;
      v134 = 0;
      v135[0] = 0xFFFFFFFFLL;
      *(v135 + 7) = 0;
      v136 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v137 = 0;
      v138 = 0;
      v132 = 0;
      v59 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v4, v58, v57, 0, 0, 0, &v132);
      v60 = v132;
      v65 = objc_msgSend_dimensions(v59, v61, v62, v63, v64);
      v70 = (HIDWORD(v65) * v65);
      if (v70 == 1)
      {
        v71 = objc_msgSend_valueAtIndex_accessContext_(v59, v66, 0, &v133, v69);
        if (objc_msgSend_isReferenceValue(v71, v72, v73, v74, v75))
        {
          v80 = objc_msgSend_asReferenceValue(v71, v76, v77, v78, v79);
          v57 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v80, v81, v57, 0, v82);

          v4 = v57;
        }

        else
        {
          v80 = v4;
          v4 = v71;
        }
      }

      else
      {
        v71 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v66, v67, v68, v69);
        v57 = objc_msgSend_errorValue_(TSCEErrorValue, v106, v71, v107, v108);
      }

      if (v70 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v13 == 13)
    {
      v14 = objc_msgSend_unwrapThunk_(a3, v9, v4, v11, v12);
      v18 = objc_msgSend_resolveToSingleValueOrError_(v14, v15, a3, v16, v17);

      v4 = v18;
      v23 = objc_msgSend_nativeType(v18, v19, v20, v21, v22);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v4 = v4;
  if (objc_msgSend_count(v4, v37, v38, v39, v40) != 1)
  {
    v102 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v41, v42, v43, v44);
    v57 = objc_msgSend_errorValue_(TSCEErrorValue, v103, v102, v104, v105);

    goto LABEL_33;
  }

  v45 = a3;
  v133._decimal.w[0] = v45;
  v133._decimal.w[1] = 0;
  v134 = 0;
  v135[0] = 0xFFFFFFFFLL;
  *(v135 + 7) = 0;
  v136 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v137 = 0;
  v138 = 0;
  v48 = objc_msgSend_valueAtGridCoord_accessContext_(v4, v46, 0, &v133, v47);
  v52 = objc_msgSend_resolveToSingleValueOrError_(v48, v49, v45, v50, v51);

  v4 = v52;
  v23 = objc_msgSend_nativeType(v52, v53, v54, v55, v56);
LABEL_24:
  if (v23 == 5)
  {
    v131 = 0;
    v114 = objc_msgSend_asNumber_outError_(v4, v24, a3, &v131, v25);
    v83 = v131;
    v133._decimal.w[0] = objc_msgSend_decimalRepresentation(v114, v115, v116, v117, v118);
    v133._decimal.w[1] = v119;

    if (v83)
    {
      v57 = objc_msgSend_errorValue_(TSCEErrorValue, v120, v83, v121, v122);
LABEL_31:

      goto LABEL_33;
    }

    if ((TSUDecimal::isNaN(&v133) & 1) != 0 || TSUDecimal::isInf(&v133))
    {
      v109 = objc_msgSend_numberError(TSCEError, v123, v124, v125, v126);
      v113 = objc_msgSend_errorValue_(TSCEErrorValue, v127, v109, v128, v129);
      goto LABEL_30;
    }
  }

  v4 = v4;
  v57 = v4;
LABEL_33:

  return v57;
}

- (id)asNumber:(id)a3 outError:(id *)a4
{
  v15 = 0;
  v5 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(self, a2, a3, 0, 0xFFFFFFFFLL, &v15);
  v6 = v15;
  v11 = v6;
  if (v6)
  {
    if (a4)
    {
      v12 = v6;
      *a4 = v11;
    }

    v13 = objc_msgSend_zero(TSCENumberValue, v7, v8, v9, v10);

    v5 = v13;
  }

  return v5;
}

- (id)asDate:(id)a3 outError:(id *)a4
{
  v10 = 0;
  v5 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(self, a2, a3, 0, 0xFFFFFFFFLL, &v10);
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      v8 = v6;
      *a4 = v7;
    }

    v5 = 0;
  }

  return v5;
}

- (id)asString:(id)a3 outError:(id *)a4
{
  v10 = 0;
  v5 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, a2, a3, 0, 0xFFFFFFFFLL, &v10);
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      v8 = v6;
      *a4 = v7;
    }

    v5 = 0;
  }

  return v5;
}

- (id)asString:(id)a3
{
  v6 = 0;
  v4 = objc_msgSend_asString_outError_(self, a2, a3, &v6, v3);

  return v4;
}

- (BOOL)asBoolean:(id)a3 outError:(id *)a4
{
  v8 = 0;
  v5 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(self, a2, a3, 0, 0xFFFFFFFFLL, &v8);
  v6 = v8;
  if (v6)
  {
    if (a4)
    {
      v6 = v6;
      v5 = 0;
      *a4 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)number
{
  v7 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);

  return objc_msgSend_asNumberWithLocale_(self, v6, v7, v8, v9);
}

- (id)date
{
  v7 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);

  return objc_msgSend_asDateWithLocale_(self, v6, v7, v8, v9);
}

- (id)asStringWithLocale:(id)a3
{
  v5 = objc_msgSend_nativeType(self, a2, a3, v3, v4);
  if (v5 == 10 || v5 == 0)
  {
    return &stru_2834BADA0;
  }

  else
  {
    return 0;
  }
}

- (TSCERichTextStorage)rawRichTextStorage
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  *(&retstr->var1 + 7) = 0;
  return self;
}

- (BOOL)BOOLean
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);
  LOBYTE(self) = objc_msgSend_asBooleanWithLocale_(self, v7, v6, v8, v9);

  return self;
}

- (id)asGridValue
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asGridValue]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v8, v9);
  v15 = objc_msgSend_nativeType(self, v11, v12, v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v16, v6, v10, 547, 0, "This TSCEValue was not of type GridValue, its type %d", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)asCategoryRef
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asCategoryRef]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v8, v9);
  v15 = objc_msgSend_nativeType(self, v11, v12, v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v16, v6, v10, 552, 0, "This TSCEValue was not of type CategoryRef, its type %d", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)referenceValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue referenceValue]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 593, 0, "Using referenceValue() on the wrong type - not a native reference, upgrade to asReferenceValue()");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);

  return objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v15, v16, v17, v18);
}

- (double)coercedDouble
{
  v18 = 0;
  v4 = objc_msgSend_deepType_outError_(self, a2, 0, &v18, v2);
  v9 = v18;
  v10 = 0.0;
  if (v4 == 5)
  {
    v11 = objc_msgSend_number(self, v5, v6, v7, v8);
    objc_msgSend_rawDoubleValue(v11, v12, v13, v14, v15);
    v10 = v16;
  }

  return v10;
}

- (id)coercedDate
{
  v12 = 0;
  v4 = objc_msgSend_deepType_outError_(self, a2, 0, &v12, v2);
  v9 = v12;
  if (v4 == 3)
  {
    v10 = objc_msgSend_date(self, v5, v6, v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)coercedStringWithContext:(id)a3
{
  if (a3)
  {
    v27 = 0;
    v7 = objc_msgSend_deepType_outError_(self, a2, a3, &v27, v4);
    v8 = v27;
    v11 = v8;
    if (v7 == 9)
    {
      v12 = &stru_2834BADA0;
    }

    else
    {
      v26 = v8;
      v12 = objc_msgSend_asString_outError_(self, v9, a3, &v26, v10);
      v24 = v26;

      if (v24)
      {

        v12 = &stru_2834BADA0;
        v11 = v24;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue coercedStringWithContext:]", v3, v4);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 698, 0, "A context is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    v12 = &stru_2834BADA0;
  }

  return v12;
}

- (id)coercedStringWithLocale:(id)a3
{
  v13 = 0;
  v6 = objc_msgSend_deepType_outError_(self, a2, 0, &v13, v3);
  v10 = v13;
  if (v6 == 9)
  {
    v11 = &stru_2834BADA0;
  }

  else
  {
    v11 = objc_msgSend_asStringWithLocale_(self, v7, a3, v8, v9);
  }

  return v11;
}

- (id)coercedErrorWithContext:(id)a3
{
  v13 = 0;
  v6 = objc_msgSend_deepType_outError_(self, a2, a3, &v13, v3);
  v10 = v13;
  if (v6 == 9)
  {
    v11 = objc_msgSend_errorWithContext_(self, v7, a3, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)evaluateThunk:(id)a3
{
  v6 = objc_msgSend_nilValue(TSCENilValue, a2, a3, v3, v4);
  v7 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValue evaluateThunk:]", v9, v10);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v11, v15, 733, 0, "evaluateThunk: called on non-thunk");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  v25 = objc_msgSend_warnings(self, v21, v22, v23, v24);
  objc_msgSend_attachWarnings_(v6, v26, v25, v27, v28);

  return v6;
}

- (BOOL)isNativelyEqual:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_nativeType(self, v5, v6, v7, v8);
  if (v9 != objc_msgSend_nativeType(v4, v10, v11, v12, v13))
  {
    goto LABEL_16;
  }

  v22 = objc_msgSend_nativeType(self, v14, v15, v16, v17);
  LOBYTE(v23) = 1;
  if (v22 > 4)
  {
    if (v22 == 5)
    {
      v24 = objc_msgSend_asNumberValue(self, v18, v19, v20, v21);
      v29 = objc_msgSend_asNumberValue(v4, v60, v61, v62, v63);
      hasUnits = objc_msgSend_hasUnits(v24, v64, v65, v66, v67);
      if (hasUnits == objc_msgSend_hasUnits(v29, v69, v70, v71, v72) && (!objc_msgSend_hasUnits(v24, v73, v74, v75, v76) || (v131 = objc_msgSend_unit(v24, v127, v128, v129, v130), v131 == objc_msgSend_unit(v29, v132, v133, v134, v135))))
      {
        objc_msgSend_decimalRepresentation(v24, v127, v128, v129, v130);
        objc_msgSend_decimalRepresentation(v29, v136, v137, v138, v139);
        LOBYTE(v23) = TSUDecimal::operator==();
      }

      else
      {
        LOBYTE(v23) = 0;
      }

      goto LABEL_19;
    }

    if (v22 == 7)
    {
      isRichTextValue = objc_msgSend_isRichTextValue(self, v18, v19, v20, v21);
      if (((isRichTextValue | objc_msgSend_isRichTextValue(v4, v92, v93, v94, v95)) & 1) == 0)
      {
        v24 = objc_msgSend_asStringValue(self, v96, v97, v98, v99);
        v29 = objc_msgSend_asStringValue(v4, v111, v112, v113, v114);
        v34 = objc_msgSend_asString(v24, v115, v116, v117, v118);
        v39 = objc_msgSend_asString(v29, v119, v120, v121, v122);
        isEqualToString = objc_msgSend_isEqualToString_(v34, v123, v39, v124, v125);
        goto LABEL_18;
      }

      v100 = MEMORY[0x277D81150];
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "[TSCEValue isNativelyEqual:]", v98, v99);
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v103, v104);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v106, v101, v105, 767, 0, "isNativelyEqual() not implemented for type: TSCERichTextValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
      goto LABEL_16;
    }

    if (v22 != 10)
    {
      goto LABEL_10;
    }
  }

  else if (v22)
  {
    if (v22 == 2)
    {
      v24 = objc_msgSend_asBooleanValue(self, v18, v19, v20, v21);
      v77 = objc_opt_self();
      v29 = objc_msgSend_asBooleanValue(v77, v78, v79, v80, v81);

      v86 = objc_msgSend_asBool(v24, v82, v83, v84, v85);
      v23 = v86 ^ objc_msgSend_asBool(v29, v87, v88, v89, v90) ^ 1;
LABEL_19:

      goto LABEL_20;
    }

    if (v22 == 3)
    {
      v24 = objc_msgSend_asDateValue(self, v18, v19, v20, v21);
      v29 = objc_msgSend_asDateValue(v4, v25, v26, v27, v28);
      v34 = objc_msgSend_asDate(v24, v30, v31, v32, v33);
      v39 = objc_msgSend_asDate(v29, v35, v36, v37, v38);
      isEqualToString = objc_msgSend_isEqualToDate_(v34, v40, v39, v41, v42);
LABEL_18:
      LOBYTE(v23) = isEqualToString;

      goto LABEL_19;
    }

LABEL_10:
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEValue isNativelyEqual:]", v20, v21);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v47, v48);
    v54 = objc_msgSend_nativeType(self, v50, v51, v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v55, v45, v49, 791, 0, "isNativelyEqual() not implemented for type: %d", v54);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
LABEL_16:
    LOBYTE(v23) = 0;
  }

LABEL_20:

  return v23;
}

- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)a3
{
  v11 = objc_msgSend_nativeType(self, a2, a3, v3, v4);
  if (v11 <= 6)
  {
    if (v11 <= 2)
    {
      if (!v11)
      {
        TSUDecimal::operator=();
        TSCEASTNumberElement::appendNumberElement(a3, &v75, v37, v38, v39);
        return;
      }

      if (v11 == 2)
      {
        v74 = objc_msgSend_asBooleanValue(self, v7, v8, v9, v10);
        if (v74)
        {
          v16 = objc_msgSend_asBool(v74, v12, v13, v14, v15);
          TSCEASTBooleanElement::appendBooleanElement(a3, v16, v17, v18, v19);
        }

        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if (v11 != 3)
    {
      if (v11 == 5)
      {
        v20 = objc_msgSend_asNumberValue(self, v7, v8, v9, v10);
        v25 = v20;
        if (v20)
        {
          v75.var0 = objc_msgSend_decimalRepresentation(v20, v21, v22, v23, v24);
          v75.var1 = v26;
          TSCEASTNumberElement::appendNumberElement(a3, &v75, v27, v28, v29);
        }

        return;
      }

LABEL_29:
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEValue appendASTForConstantToNodeArray:]", v9, v10);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v59, v60);
      v66 = objc_msgSend_nativeType(self, v62, v63, v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v67, v57, v61, 856, 0, "appendASTForConstantToNodeArray not supported for valueType: %d", v66);

      v72 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v72, v68, v69, v70, v71);
      return;
    }

    v74 = objc_msgSend_asDateValue(self, v7, v8, v9, v10);
    objc_msgSend_appendASTForConstantToNodeArray_(v74, v48, a3, v49, v50);
LABEL_35:
    v30 = v74;
    goto LABEL_36;
  }

  if (v11 > 13)
  {
    if (v11 == 14)
    {
      v30 = objc_msgSend_asCategoryRefValue(self, v7, v8, v9, v10);
      if (!v30)
      {
        goto LABEL_36;
      }

      v74 = v30;
      v35 = objc_msgSend_categoryRef(v30, v51, v52, v53, v54);
      TSCEASTCategoryRefElement::appendCategoryRefElement(a3, v35, v55);
    }

    else
    {
      if (v11 != 17)
      {
        goto LABEL_29;
      }

      v30 = objc_msgSend_asViewTractRefValue(self, v7, v8, v9, v10);
      if (!v30)
      {
        goto LABEL_36;
      }

      v74 = v30;
      v35 = objc_msgSend_viewTractRef(v30, v31, v32, v33, v34);
      TSCEASTViewTractRefElement::appendViewTractRefElement(a3, v35, v36);
    }

LABEL_34:

    goto LABEL_35;
  }

  if (v11 == 7)
  {
    if (objc_msgSend_isRichTextValue(self, v7, v8, v9, v10))
    {
      v30 = objc_msgSend_asRichTextValue(self, v40, v41, v42, v43);
      if (v30)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v30 = objc_msgSend_asStringValue(self, v40, v41, v42, v43);
      if (v30)
      {
LABEL_33:
        v74 = v30;
        v35 = objc_msgSend_asString(v30, v44, v45, v46, v47);
        TSCEASTStringElement::appendStringElement(a3, v35, v73);
        goto LABEL_34;
      }
    }

LABEL_36:

    return;
  }

  if (v11 != 10)
  {
    goto LABEL_29;
  }

  TSCEASTTagOnlyElement::appendTagOnlyElement(a3, 23, v8, v9, v10);
}

- (id)reorganizeValueForSorting:(id)a3
{
  v5 = objc_alloc_init(TSTCellReorganizeValue);
  v10 = objc_msgSend_locale(a3, v6, v7, v8, v9);
  v19 = objc_msgSend_nativeType(self, v11, v12, v13, v14);
  if (v19 > 6)
  {
    if (v19 > 13)
    {
      switch(v19)
      {
        case 14:
          v36 = objc_msgSend_asCategoryRefValue(self, v15, v16, v17, v18);
          v39 = objc_msgSend_referredToValue_(v36, v81, a3, v82, v83);
          v43 = objc_msgSend_reorganizeValueForSorting_(v39, v84, a3, v85, v86);
          goto LABEL_27;
        case 16:
          v88 = objc_msgSend_asValueGridValue(self, v15, v16, v17, v18);
          v128 = objc_msgSend_valueGrid(v88, v124, v125, v126, v127);
          v133 = objc_msgSend_area(v128, v129, v130, v131, v132);

          if (v133 == 1)
          {
            v138 = objc_msgSend_valueGrid(v88, v134, v135, v136, v137);
            v143 = objc_msgSend_firstValue(v138, v139, v140, v141, v142);

            v103 = objc_msgSend_reorganizeValueForSorting_(v143, v144, a3, v145, v146);

            goto LABEL_35;
          }

          v198 = MEMORY[0x277D81150];
          v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, "[TSCEValue reorganizeValueForSorting:]", v136, v137);
          v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v201, v202);
          v208 = objc_msgSend_nativeType(self, v204, v205, v206, v207);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v198, v209, v199, v203, 933, 0, "Unexpected valueType in reorganizeValueForSorting: %d", v208);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v210, v211, v212, v213);
LABEL_49:

          goto LABEL_44;
        case 17:
          v36 = objc_msgSend_asViewTractRefValue(self, v15, v16, v17, v18);
          v39 = objc_msgSend_referredToValue_(v36, v44, a3, v45, v46);
          v43 = objc_msgSend_reorganizeValueForSorting_(v39, v47, a3, v48, v49);
          goto LABEL_27;
      }
    }

    else
    {
      switch(v19)
      {
        case 7:
          if (objc_msgSend_isRichTextValue(self, v15, v16, v17, v18))
          {
            objc_msgSend_setValueType_(v5, v50, 9, v51, v52);
          }

          else
          {
            objc_msgSend_setValueType_(v5, v50, 3, v51, v52);
          }

          objc_msgSend_setRank_(v5, v53, 2, v54, v55);
          v27 = objc_msgSend_asStringWithLocale_(self, v56, v10, v57, v58);
          objc_msgSend_setString_(v5, v59, v27, v60, v61);
          goto LABEL_43;
        case 9:
          objc_msgSend_setValueType_(v5, v15, 8, v17, v18);
          goto LABEL_44;
        case 10:
LABEL_37:
          objc_msgSend_setValueType_(v5, v15, 0, v17, v18);
          objc_msgSend_setRank_(v5, v163, 0, v164, v165);
          goto LABEL_44;
      }
    }

LABEL_36:
    v147 = MEMORY[0x277D81150];
    v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEValue reorganizeValueForSorting:]", v17, v18);
    v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v150, v151);
    v157 = objc_msgSend_nativeType(self, v153, v154, v155, v156);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v158, v148, v152, 953, 0, "Unexpected valueType in reorganizeValueForSorting: %d", v157);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v159, v160, v161, v162);
    goto LABEL_37;
  }

  if (v19 <= 2)
  {
    if (v19)
    {
      if (v19 != 1)
      {
        objc_msgSend_setValueType_(v5, v15, 6, v17, v18);
        objc_msgSend_setRank_(v5, v20, 1, v21, v22);
        v27 = objc_msgSend_asBooleanValue(self, v23, v24, v25, v26);
        if (objc_msgSend_asBool(v27, v28, v29, v30, v31))
        {
          objc_msgSend_setDoubleValue_(v5, v32, v33, v34, v35, 1.0);
        }

        else
        {
          objc_msgSend_setDoubleValue_(v5, v32, v33, v34, v35, 0.0);
        }

        goto LABEL_43;
      }

      v88 = objc_msgSend_asGridValue(self, v15, v16, v17, v18);
      if (objc_msgSend_count(v88, v89, v90, v91, v92) == 1)
      {
        v96 = a3;
        v214._decimal.w[0] = v96;
        v214._decimal.w[1] = 0;
        v215 = 0;
        v216[0] = 0xFFFFFFFFLL;
        *(v216 + 7) = 0;
        v217 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v218 = 0;
        v219 = 0;
        v99 = objc_msgSend_valueAtIndex_accessContext_(v88, v97, 0, &v214, v98);
        v103 = objc_msgSend_reorganizeValueForSorting_(v99, v100, v96, v101, v102);

LABEL_35:
        goto LABEL_45;
      }

      v166 = MEMORY[0x277D81150];
      v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "[TSCEValue reorganizeValueForSorting:]", v94, v95);
      v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v169, v170);
      v176 = objc_msgSend_nativeType(self, v172, v173, v174, v175);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v177, v167, v171, 946, 0, "Unexpected valueType in reorganizeValueForSorting: %d", v176);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180, v181);
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v19 == 3)
  {
    v27 = objc_msgSend_asDateValue(self, v15, v16, v17, v18);
    objc_msgSend_setValueType_(v5, v62, 5, v63, v64);
    objc_msgSend_setRank_(v5, v65, 3, v66, v67);
    v72 = objc_msgSend_asDate(v27, v68, v69, v70, v71);
    objc_msgSend_timeIntervalSinceReferenceDate(v72, v73, v74, v75, v76);
    objc_msgSend_setDoubleValue_(v5, v77, v78, v79, v80);

LABEL_43:
    goto LABEL_44;
  }

  if (v19 == 5)
  {
    v27 = objc_msgSend_asNumberValue(self, v15, v16, v17, v18);
    if (objc_msgSend_isDuration(v27, v104, v105, v106, v107))
    {
      objc_msgSend_setValueType_(v5, v108, 7, v110, v111);
      objc_msgSend_setRank_(v5, v112, 4, v113, v114);
      v214._decimal.w[0] = objc_msgSend_decimalRepresentation(v27, v115, v116, v117, v118);
      v214._decimal.w[1] = v119;
      TSUDecimal::doubleValue(&v214);
      objc_msgSend_setDoubleValue_(v5, v120, v121, v122, v123);
    }

    else
    {
      if (objc_msgSend_hasUnits(v27, v108, v109, v110, v111))
      {
        objc_msgSend_setValueType_(v5, v182, 10, v183, v184);
      }

      else
      {
        objc_msgSend_setValueType_(v5, v182, 2, v183, v184);
      }

      objc_msgSend_setRank_(v5, v185, 5, v186, v187);
      v214._decimal.w[0] = objc_msgSend_decimalRepresentation(v27, v188, v189, v190, v191);
      v214._decimal.w[1] = v192;
      TSUDecimal::doubleValue(&v214);
      objc_msgSend_setDoubleValue_(v5, v193, v194, v195, v196);
    }

    goto LABEL_43;
  }

  if (v19 != 6)
  {
    goto LABEL_36;
  }

  v36 = objc_msgSend_asReferenceValue(self, v15, v16, v17, v18);
  v39 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v36, v37, a3, 0, v38);
  v43 = objc_msgSend_reorganizeValueForSorting_(v39, v40, a3, v41, v42);
LABEL_27:
  v87 = v43;

  v5 = v87;
LABEL_44:
  v5 = v5;
  v103 = v5;
LABEL_45:

  return v103;
}

- (id)minValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v11 = objc_msgSend_nativeType(self, v7, v8, v9, v10);
  v20 = objc_msgSend_nativeType(v6, v12, v13, v14, v15);
  if (v11 == 5)
  {
    v21 = objc_msgSend_number(self, v16, v17, v18, v19);
    isDuration = objc_msgSend_isDuration(v21, v22, v23, v24, v25);

    if (isDuration)
    {
      v11 = 99;
    }

    else
    {
      v11 = 5;
    }
  }

  if (v20 == 5)
  {
    v27 = objc_msgSend_number(v6, v16, v17, v18, v19);
    v32 = objc_msgSend_isDuration(v27, v28, v29, v30, v31);

    if (v32)
    {
      v20 = 99;
    }

    else
    {
      v20 = 5;
    }
  }

  if (v11 != v20)
  {
    if (v11 <= 4u)
    {
      if (v11 == 2)
      {
        if ((v20 > 7 || ((1 << v20) & 0xA8) == 0) && v20 != 99)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v11 != 3 || v20 == 99)
      {
        goto LABEL_40;
      }

      v48 = v20;
    }

    else
    {
      if (v11 == 99)
      {
        if (v20 != 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v11 != 7)
      {
        if (v11 == 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v20 == 3)
      {
        goto LABEL_40;
      }

      v48 = v20;
      if (v20 == 99)
      {
        goto LABEL_40;
      }
    }

    if (v48 != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v37 = objc_msgSend_nativeType(self, v16, v17, v18, v19);
  if (v37 > 4)
  {
    switch(v37)
    {
      case 0x63u:
        goto LABEL_14;
      case 7u:
        v59 = objc_msgSend_asRawString(self, v33, v34, v35, v36);
        v64 = objc_msgSend_asRawString(v6, v60, v61, v62, v63);
        if (objc_msgSend_localizedCaseInsensitiveCompare_toString_(a4, v65, v59, v64, v66) == 1)
        {
          v67 = v6;
        }

        else
        {
          v67 = self;
        }

        v57 = v67;

        goto LABEL_48;
      case 5u:
LABEL_14:
        v38 = objc_msgSend_number(self, v33, v34, v35, v36);
        v43 = objc_msgSend_number(v6, v39, v40, v41, v42);
        v47 = objc_msgSend_min_(v38, v44, v43, v45, v46);
LABEL_30:
        v57 = v47;

        goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (v37 != 2)
  {
    if (v37 == 3)
    {
      v38 = objc_msgSend_date(self, v33, v34, v35, v36);
      v43 = objc_msgSend_date(v6, v49, v50, v51, v52);
      if (objc_msgSend_compare_(v38, v53, v43, v54, v55) == 1)
      {
        v56 = v6;
      }

      else
      {
        v56 = self;
      }

      v47 = v56;
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  if ((objc_msgSend_BOOLean(self, v33, v34, v35, v36) & 1) == 0)
  {
LABEL_46:
    v58 = self;
    goto LABEL_47;
  }

LABEL_40:
  v58 = v6;
LABEL_47:
  v57 = v58;
LABEL_48:

  return v57;
}

- (id)maxValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v11 = objc_msgSend_nativeType(self, v7, v8, v9, v10);
  v20 = objc_msgSend_nativeType(v6, v12, v13, v14, v15);
  if (v11 == 5)
  {
    v21 = objc_msgSend_number(self, v16, v17, v18, v19);
    isDuration = objc_msgSend_isDuration(v21, v22, v23, v24, v25);

    if (isDuration)
    {
      v11 = 99;
    }

    else
    {
      v11 = 5;
    }
  }

  if (v20 == 5)
  {
    v27 = objc_msgSend_number(v6, v16, v17, v18, v19);
    v32 = objc_msgSend_isDuration(v27, v28, v29, v30, v31);

    if (v32)
    {
      v20 = 99;
    }

    else
    {
      v20 = 5;
    }
  }

  if (v11 != v20)
  {
    if (v11 <= 4u)
    {
      if (v11 == 2)
      {
        if ((v20 > 7 || ((1 << v20) & 0xA8) == 0) && v20 != 99)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v11 != 3 || v20 == 99)
      {
        goto LABEL_40;
      }

      v48 = v20;
    }

    else
    {
      if (v11 == 99)
      {
        if (v20 != 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v11 != 7)
      {
        if (v11 == 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v20 == 3)
      {
        goto LABEL_40;
      }

      v48 = v20;
      if (v20 == 99)
      {
        goto LABEL_40;
      }
    }

    if (v48 != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v37 = objc_msgSend_nativeType(self, v16, v17, v18, v19);
  if (v37 > 4)
  {
    switch(v37)
    {
      case 0x63u:
        goto LABEL_14;
      case 7u:
        v59 = objc_msgSend_asRawString(self, v33, v34, v35, v36);
        v64 = objc_msgSend_asRawString(v6, v60, v61, v62, v63);
        if (objc_msgSend_localizedCaseInsensitiveCompare_toString_(a4, v65, v59, v64, v66) == -1)
        {
          v67 = v6;
        }

        else
        {
          v67 = self;
        }

        v57 = v67;

        goto LABEL_48;
      case 5u:
LABEL_14:
        v38 = objc_msgSend_number(self, v33, v34, v35, v36);
        v43 = objc_msgSend_number(v6, v39, v40, v41, v42);
        v47 = objc_msgSend_max_(v38, v44, v43, v45, v46);
LABEL_30:
        v57 = v47;

        goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (v37 != 2)
  {
    if (v37 == 3)
    {
      v38 = objc_msgSend_date(self, v33, v34, v35, v36);
      v43 = objc_msgSend_date(v6, v49, v50, v51, v52);
      if (objc_msgSend_compare_(v38, v53, v43, v54, v55) == -1)
      {
        v56 = v6;
      }

      else
      {
        v56 = self;
      }

      v47 = v56;
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  if (objc_msgSend_BOOLean(self, v33, v34, v35, v36))
  {
LABEL_46:
    v58 = self;
    goto LABEL_47;
  }

LABEL_40:
  v58 = v6;
LABEL_47:
  v57 = v58;
LABEL_48:

  return v57;
}

- (BOOL)valueHasError:(int)a3 context:(id)a4 outError:(id *)a5
{
  v7 = *&a3;
  v8 = self;
  v13 = 0;
  v14 = 0;
  v19 = objc_msgSend_nativeType(v8, v9, v10, v11, v12);
  if (v19 > 8)
  {
    if (v19 <= 14)
    {
      if (v19 == 9)
      {
        v14 = 0;
LABEL_38:
        v13 = 1;
        goto LABEL_43;
      }

      if (v19 != 14)
      {
        goto LABEL_43;
      }

      v35 = objc_msgSend_asCategoryRefValue(v8, v15, v16, v17, v18);
      v39 = objc_msgSend_referredToValue_(v35, v36, a4, v37, v38);
      HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v39, v40, v7, a4, a5);
      goto LABEL_41;
    }

    if ((v19 - 15) < 2)
    {
      v47 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEValue valueHasError:context:outError:]", v17, v18);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v27, v31, 1254, 0, "actual values shouldn't have TSCENoCoerceScalarArgumentType");
    }

    else
    {
      if (v19 == 17)
      {
        v35 = objc_msgSend_asViewTractRefValue(v8, v15, v16, v17, v18);
        v39 = objc_msgSend_referredToValue_(v35, v70, a4, v71, v72);
        HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v39, v73, v7, a4, a5);
        goto LABEL_41;
      }

      if (v19 != 255)
      {
        goto LABEL_43;
      }

      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEValue valueHasError:context:outError:]", v17, v18);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v29, v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 1228, 0, "actual values shouldn't have TSCEAnyArgumentType");
    }

LABEL_27:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
    goto LABEL_28;
  }

  if (v19 > 3)
  {
    if (v19 <= 5)
    {
      if (v19 != 4)
      {
        v78 = 0;
        v20 = objc_msgSend_asNumber_outError_(v8, v15, a4, &v78, v18);
        v14 = v78;
        v79._decimal.w[0] = objc_msgSend_decimalRepresentation(v20, v21, v22, v23, v24);
        v79._decimal.w[1] = v25;

        if (!v14 && (TSUDecimal::isNaN(&v79) & 1) == 0 && !TSUDecimal::isInf(&v79))
        {
          v13 = 0;
          goto LABEL_43;
        }

        v13 = 1;
        if (!v14)
        {
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      v52 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEValue valueHasError:context:outError:]", v17, v18);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v54, v55);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v27, v31, 1240, 0, "actual values shouldn't have TSCEDurationArgumentType");
      goto LABEL_27;
    }

    if (v19 != 6)
    {
      if (v19 == 7)
      {
        v42 = objc_msgSend_locale(a4, v15, v16, v17, v18);
        v46 = objc_msgSend_asStringWithLocale_(v8, v43, v42, v44, v45);

LABEL_28:
        v14 = 0;
        v13 = 0;
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v61 = objc_msgSend_asReferenceValue(v8, v15, v16, v17, v18);
    v35 = v61;
    if (!v61 || (objc_msgSend_isNil(v61, v62, v63, v64, v65) & 1) != 0)
    {
      v13 = 1;
LABEL_42:

      v14 = 0;
      goto LABEL_43;
    }

    v39 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v35, v66, a4, 0, v67);
    HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v39, v74, v7, a4, a5);
LABEL_41:
    v13 = HasError_context_outError;

    goto LABEL_42;
  }

  switch(v19)
  {
    case 1:
      v35 = objc_msgSend_gridValue(v8, v15, v16, v17, v18);
      v13 = objc_msgSend_containsError_argumentIndex_outError_(v35, v68, a4, v7, a5);
      goto LABEL_42;
    case 2:
      v77 = 0;
      objc_msgSend_asBoolean_outError_(v8, v15, a4, &v77, v18);
      v34 = v77;
      break;
    case 3:
      v76 = 0;
      v33 = objc_msgSend_asDate_outError_(v8, v15, a4, &v76, v18);
      v34 = v76;
      break;
    default:
      goto LABEL_43;
  }

  v14 = v34;
  v13 = v14 != 0;
  if (v14)
  {
LABEL_35:
    if (a5)
    {
      v69 = v14;
      *a5 = v14;
    }

    goto LABEL_38;
  }

LABEL_43:

  return v13;
}

- (BOOL)valueIsEmptyWithContext:(id)a3
{
  if (objc_msgSend_isNil(self, a2, a3, v3, v4))
  {
    return 1;
  }

  v13 = objc_msgSend_nativeType(self, v7, v8, v9, v10);
  v11 = 1;
  if (v13 && v13 != 10)
  {
    if (v13 == 6)
    {
      v18 = objc_msgSend_asReferenceValue(self, v14, v15, v16, v17);
      v21 = v18;
      if (v18)
      {
        v25 = 0;
        v22 = objc_msgSend_deepType_outError_(v18, v19, a3, &v25, v20);
        v23 = v25;

        if (v22)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23 == 0;
        }

        v11 = v24;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

- (id)convertArrayToText:(id)a3 maximumStringLength:(unint64_t)a4 formatMode:(int64_t)a5
{
  if (!a3 || (objc_msgSend_calcEngine(a3, a2, a3, a4, a5), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = objc_msgSend_stringValue_(TSCEStringValue, a2, &stru_2834BADA0, a4, a5);
    goto LABEL_60;
  }

  v156[0] = 0;
  v147 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(self, a2, a3, 0, 0, 0, v156);
  v10 = v156[0];
  if (v10)
  {
    v11 = self;
    goto LABEL_59;
  }

  v12 = objc_opt_new();
  v17 = v12;
  if (a5 == 10 || a5 == 1)
  {
    objc_msgSend_appendString_(v12, v13, @"{", v15, v16);
  }

  v154 = 0;
  v155 = objc_msgSend_dimensions(v147, v13, v14, v15, v16);
  v148[0] = a3;
  v148[1] = 0;
  v149 = 0;
  v150[0] = 0xFFFFFFFFLL;
  *(v150 + 7) = 0;
  v151 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v152 = 0;
  v153 = 0;
  v144 = v148[0];
  v22 = objc_msgSend_locale(v148[0], v18, v19, v20, v21);
  v143 = objc_msgSend_arrayColumnSeparator(v22, v23, v24, v25, v26);
  v27 = MEMORY[0x277CCACA8];
  v35 = objc_msgSend_arrayColumnSeparator(v22, v28, v29, v30, v31);
  if (a5 == 1)
  {
    v146 = objc_msgSend_stringWithFormat_(v27, v32, @"%@", v33, v34, v35);

    v36 = MEMORY[0x277CCACA8];
    v41 = objc_msgSend_arrayRowSeparator(v22, v37, v38, v39, v40);
    objc_msgSend_stringWithFormat_(v36, v42, @"%@", v43, v44, v41);
  }

  else
  {
    v146 = objc_msgSend_stringWithFormat_(v27, v32, @"%@ ", v33, v34, v35);

    v45 = MEMORY[0x277CCACA8];
    v41 = objc_msgSend_arrayRowSeparator(v22, v46, v47, v48, v49);
    objc_msgSend_stringWithFormat_(v45, v50, @"%@ ", v51, v52, v41);
  }
  v145 = ;

  if (v155.height * v155.width == 1)
  {
    v55 = objc_msgSend_valueAtGridCoord_accessContext_(v147, v53, *&v154, v148, v54);
    if (objc_msgSend_isReferenceValue(v55, v56, v57, v58, v59))
    {
      v64 = objc_msgSend_asReferenceValue(v55, v60, v61, v62, v63);
      v67 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v64, v65, v144, 0, v66);

      v55 = v67;
    }

    if (objc_msgSend_isError(v55, v60, v61, v62, v63))
    {
      if (a5 == 10)
      {
        v72 = @"<error>";
        v73 = objc_msgSend_length(@"<error>", v68, v69, v70, v71);
      }

      else
      {
        v72 = 0;
        v73 = objc_msgSend_length(0, v68, v69, v70, v71);
      }
    }

    else
    {
      v72 = objc_msgSend_asStringWithLocale_(v55, v68, v22, v70, v71);
      v73 = objc_msgSend_length(v72, v77, v78, v79, v80);
    }

    if (!v73)
    {
      v139 = objc_msgSend_nonEmptyStringRequiredErrorForFunctionName_(TSCEError, v74, @"ARRAYTOTEXT", v75, v76);
      v11 = objc_msgSend_errorValue_(TSCEErrorValue, v140, v139, v141, v142);

      goto LABEL_58;
    }
  }

  if (a5 == 10)
  {
    v81 = @"<error>";
  }

  else
  {
    v81 = 0;
  }

  while (1)
  {
    v82 = objc_msgSend_valueAtGridCoord_accessContext_(v147, v53, *&v154, v148, v54);
    if (objc_msgSend_isReferenceValue(v82, v83, v84, v85, v86))
    {
      v91 = objc_msgSend_asReferenceValue(v82, v87, v88, v89, v90);
      v94 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v91, v92, v144, 0, v93);

      v82 = v94;
    }

    v99 = v81;
    if ((objc_msgSend_isError(v82, v87, v88, v89, v90) & 1) == 0)
    {
      v99 = objc_msgSend_asStringWithLocale_(v82, v95, v22, v97, v98);
    }

    if (objc_msgSend_length(v99, v95, v96, v97, v98))
    {
      if (a5 != 1)
      {
        goto LABEL_37;
      }

      v104 = objc_msgSend_nativeType(v82, v100, v101, v102, v103);
      if (v104 == 2)
      {
        goto LABEL_37;
      }

      if (v104 == 5)
      {
        v106 = objc_msgSend_asNumberValue(v82, v100, v105, v102, v103);
        if (objc_msgSend_isDuration(v106, v107, v108, v109, v110) & 1) != 0 || (objc_msgSend_hasUnits(v106, v111, v112, v113, v114))
        {
        }

        else
        {
          v131 = objc_msgSend_containsString_(v99, v115, v143, v116, v117);

          if (!v131)
          {
            goto LABEL_37;
          }
        }
      }

      v118 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(v99, v100, v105, v102, v103);
      v122 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v119, @"%@", v120, v121, v118);

      v99 = v122;
LABEL_37:
      objc_msgSend_appendString_(v17, v100, v99, v102, v103);
    }

    row = v154.row;
    v124 = TSCEGridDimensions::nextCoordRowMajorOrder(&v155, &v154);
    v154 = v124;
    if (v124 != 0x7FFFFFFF && HIDWORD(v124) != 0x7FFFFFFF)
    {
      if (HIDWORD(v124) == row || a5 == 0)
      {
        objc_msgSend_appendString_(v17, v125, v146, v127, v128);
      }

      else
      {
        objc_msgSend_appendString_(v17, v125, v145, v127, v128);
      }
    }

    if (a4 != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_length(v17, v125, v126, v127, v128) > a4)
    {
      break;
    }

    if (v154.column == 0x7FFFFFFF || v154.row == 0x7FFFFFFF)
    {
      goto LABEL_54;
    }
  }

  v132 = sub_2212F6DF8();
  v134 = objc_msgSend_localizedStringForKey_value_table_(v132, v133, @"…", &stru_2834BADA0, @"TSCalculationEngine");
  objc_msgSend_appendString_(v17, v135, v134, v136, v137);

LABEL_54:
  if (a5 == 10 || a5 == 1)
  {
    objc_msgSend_appendString_(v17, v53, @"}", v130, v54);
  }

  v11 = objc_msgSend_stringValue_(TSCEStringValue, v53, v17, v130, v54);
  v10 = 0;
LABEL_58:

LABEL_59:
LABEL_60:

  return v11;
}

+ (int64_t)compareValuesWithContextLeft:(id)a3 right:(id)a4 context:(id)a5 functionSpec:(id)a6 outError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v16 = objc_msgSend_deepType_outError_(v11, v14, a5, a7, v15);
  v19 = objc_msgSend_deepType_outError_(v12, v17, a5, a7, v18);
  if ((!objc_msgSend_valueIsEmptyWithContext_(v11, v20, a5, v21, v22) || (objc_msgSend_valueIsEmptyWithContext_(v12, v23, a5, v25, v26) & 1) == 0) && !*a7)
  {
    v32 = objc_msgSend_locale(a5, v23, v24, v25, v26);
    if (v16 == 9)
    {
      v33 = objc_msgSend_errorWithContext_(v11, v28, a5, v30, v31);
LABEL_9:
      v27 = 0;
      *a7 = v33;
LABEL_10:

      goto LABEL_11;
    }

    if (v19 == 9)
    {
      v33 = objc_msgSend_errorWithContext_(v12, v28, a5, v30, v31);
      goto LABEL_9;
    }

    if (v16 == 2 && v19 == 2)
    {
      v35 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v11, v28, a5, v13, 0, a7);
      v37 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v12, v36, a5, v13, 1, a7);
      if (*a7)
      {
LABEL_15:
        v27 = 0;
        goto LABEL_10;
      }

      if ((v35 ^ 1 | v37))
      {
        v27 = (((v35 ^ 1) & v37) << 63) >> 63;
        goto LABEL_10;
      }

LABEL_92:
      v27 = 1;
      goto LABEL_10;
    }

    if (v16 == 3 && v19 == 3)
    {
      v38 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v28, a5, v13, 0, a7);
      v43 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v39, a5, v13, 1, a7);
      if (*a7)
      {
LABEL_19:
        v27 = 0;
LABEL_39:

        goto LABEL_10;
      }

      v67 = objc_msgSend_compare_(v38, v40, v43, v41, v42);
LABEL_38:
      v27 = v67;
      goto LABEL_39;
    }

    if (v19 == 3)
    {
      v27 = -1;
      if (!v16 || v16 == 5)
      {
        goto LABEL_10;
      }
    }

    if (v16 == 3)
    {
      v27 = 1;
      if (!v19 || v19 == 5)
      {
        goto LABEL_10;
      }
    }

    if (v19 == 3 && (v16 == 7 || v16 == 2))
    {
      if (!objc_msgSend_isRegexString(v11, v28, v29, v30, v31))
      {
        goto LABEL_92;
      }

      v48 = objc_msgSend_asStringValue(v11, v44, v45, v46, v47);
      v54 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v49, a5, v13, 1, a7);
      if (*a7)
      {
        goto LABEL_47;
      }

      v55 = objc_msgSend_asString(v48, v50, v51, v52, v53);
      isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v48, v56, v57, v58, v59);
      v62 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v61, v55, isCaseSensitiveRegex, 1, a7);

      if (!*a7)
      {
        v66 = objc_msgSend_containsMatchInString_(v62, v63, v54, v64, v65);

        goto LABEL_33;
      }

      goto LABEL_46;
    }

    if (v16 == 3 && (v19 == 7 || v19 == 2))
    {
      if (!objc_msgSend_isRegexString(v12, v28, v29, v30, v31))
      {
        goto LABEL_84;
      }

      v48 = objc_msgSend_asStringValue(v12, v68, v69, v70, v71);
      v54 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v11, v72, a5, v13, 0, a7);
      if (*a7)
      {
LABEL_47:

LABEL_48:
        goto LABEL_15;
      }

      v77 = objc_msgSend_asString(v48, v73, v74, v75, v76);
      v82 = objc_msgSend_isCaseSensitiveRegex(v48, v78, v79, v80, v81);
      v62 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v83, v77, v82, 1, a7);

      if (*a7)
      {
LABEL_46:

        goto LABEL_47;
      }

      v149 = objc_msgSend_containsMatchInString_(v62, v84, v54, v85, v86);

LABEL_83:
      if (v149)
      {
        goto LABEL_15;
      }

LABEL_84:
      v27 = -1;
      goto LABEL_10;
    }

    IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v11, v28, a5, v30, v31);
    v91 = objc_msgSend_valueIsEmptyWithContext_(v12, v88, a5, v89, v90);
    if (v19 == 5)
    {
      v96 = IsEmptyWithContext;
    }

    else
    {
      v96 = 0;
    }

    if (v96 == 1)
    {
      v97 = objc_msgSend_zero(TSCENumberValue, v92, v93, v94, v95);
      v99 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v98, a5, v13, 1, a7);
      v102 = objc_msgSend_compare_outError_(v97, v100, v99, a7, v101);

      if (*a7)
      {
        v27 = 0;
      }

      else
      {
        v27 = v102;
      }

      goto LABEL_10;
    }

    v103 = v91;
    v104 = objc_msgSend_valueIsEmptyWithContext_(v12, v92, a5, v94, v95);
    if (v16 == 5)
    {
      v109 = v104;
    }

    else
    {
      v109 = 0;
    }

    if (v109 == 1)
    {
      v110 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v105, a5, v13, 0, a7);
      v115 = objc_msgSend_zero(TSCENumberValue, v111, v112, v113, v114);
      v118 = objc_msgSend_compare_outError_(v110, v116, v115, a7, v117);

      if (*a7)
      {
        v27 = 0;
      }

      else
      {
        v27 = v118;
      }

      goto LABEL_10;
    }

    if (v19 == 7)
    {
      v119 = IsEmptyWithContext;
    }

    else
    {
      v119 = 0;
    }

    v180 = v119;
    if (v119 == 1)
    {
      v179 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v105, a5, v13, 1, a7);
      if (!objc_msgSend_length(v179, v120, v121, v122, v123))
      {

        goto LABEL_15;
      }

      v178 = v16 == 7;
      if ((v103 & v178) == 0)
      {

        goto LABEL_75;
      }
    }

    else
    {
      v178 = v16 == 7;
      if ((v103 & v178) != 1)
      {
        goto LABEL_75;
      }
    }

    v177 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v11, v105, a5, v13, 0, a7);
    v176 = objc_msgSend_length(v177, v124, v125, v126, v127);

    if (v180)
    {
    }

    if (!v176)
    {
      goto LABEL_15;
    }

LABEL_75:
    if (*a7)
    {
      goto LABEL_15;
    }

    if (v16 == 5 && v19 == 7)
    {
      if (!objc_msgSend_isRegexString(v12, v105, v106, v107, v108))
      {
        goto LABEL_84;
      }

      v48 = objc_msgSend_asStringValue(v12, v128, v129, v130, v131);
      v136 = objc_msgSend_asString(v48, v132, v133, v134, v135);
      v141 = objc_msgSend_isCaseSensitiveRegex(v48, v137, v138, v139, v140);
      v143 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v142, v136, v141, 1, a7);

      if (!*a7)
      {
        v145 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v11, v144, a5, v13, 0, a7);
        v149 = objc_msgSend_containsMatchInString_(v143, v146, v145, v147, v148);

        goto LABEL_83;
      }
    }

    else
    {
      if (v19 != 5 || !v178)
      {
        if (((v178 | IsEmptyWithContext) & 1) != 0 && (v19 == 7) | v103 & 1)
        {
          v38 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v11, v105, a5, v13, 0, a7);
          v43 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v167, a5, v13, 1, a7);
          v67 = objc_msgSend_localizedCompare_toString_(v32, v168, v38, v43, v169);
        }

        else
        {
          v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v105, a5, v13, 0, a7);
          v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v170, a5, v13, 1, a7);
          if (*a7)
          {
            goto LABEL_19;
          }

          v67 = objc_msgSend_stringBasedCompare_locale_outError_(v38, v171, v43, v32, a7);
        }

        goto LABEL_38;
      }

      if (!objc_msgSend_isRegexString(v11, v105, v106, v107, v108))
      {
        goto LABEL_92;
      }

      v48 = objc_msgSend_asStringValue(v11, v151, v152, v153, v154);
      v159 = objc_msgSend_asString(v48, v155, v156, v157, v158);
      v164 = objc_msgSend_isCaseSensitiveRegex(v48, v160, v161, v162, v163);
      v143 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v165, v159, v164, 1, a7);

      if (!*a7)
      {
        v172 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v166, a5, v13, 1, a7);
        v66 = objc_msgSend_containsMatchInString_(v143, v173, v172, v174, v175);

LABEL_33:
        if (v66)
        {
          goto LABEL_15;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_48;
  }

  v27 = 0;
LABEL_11:

  return v27;
}

+ (int64_t)compareValuesLeft:(id)a3 right:(id)a4 context:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v11 = a4;
  if (a6)
  {
    *a6 = 0;
  }

  v12 = objc_msgSend_compareValuesWithContextLeft_right_context_functionSpec_outError_(TSCEValue, v10, v9, v11, a5, 0, a6);

  return v12;
}

+ (int64_t)compareValuesForLookupLeft:(id)a3 right:(id)a4 context:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v14 = objc_msgSend_deepType_(v9, v11, a5, v12, v13);
  v18 = objc_msgSend_deepType_(v10, v15, a5, v16, v17);
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v9, v19, a5, v20, v21);
  if (v14)
  {
    v26 = IsEmptyWithContext;
  }

  else
  {
    v26 = 1;
  }

  v27 = objc_msgSend_valueIsEmptyWithContext_(v10, v23, a5, v24, v25);
  if (v18)
  {
    v31 = v27;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31 ^ 1;
  if (((v26 ^ 1) & 1) == 0 && (v32 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (((v26 ^ 1 | v31) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (((v26 | v32) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v14 == 5 && v18 != 5)
  {
    goto LABEL_14;
  }

  if (v14 != 5 && v18 == 5)
  {
LABEL_17:
    v33 = 1;
    goto LABEL_18;
  }

  if (v14 == 5 && v18 == 5)
  {
    v165 = 0;
    v35 = objc_msgSend_asNumber_outError_(v9, v28, a5, &v165, v30);
    v36 = v165;
    v164 = v36;
    v162 = objc_msgSend_asNumber_outError_(v10, v37, a5, &v164, v38);
    v39 = v164;

    if (v39)
    {
      v33 = 0;
      v44 = v39;
      goto LABEL_23;
    }

    v53 = objc_msgSend_locale(a5, v40, v41, v42, v43);
    v163 = 0;
    v33 = objc_msgSend_stringBasedCompare_locale_outError_(v35, v54, v162, v53, &v163);
    v44 = v163;

    if (!v44)
    {
      goto LABEL_24;
    }

    if (objc_msgSend_errorType(v44, v55, v56, v57, v58) != 68)
    {
LABEL_23:
      v45 = v44;
      *a6 = v44;

LABEL_24:
LABEL_25:

      goto LABEL_18;
    }

    if (objc_msgSend_hasUnits(v35, v59, v60, v61, v62) && objc_msgSend_hasUnits(v162, v63, v64, v65, v66))
    {
      v67 = objc_msgSend_dimension(v35, v63, v64, v65, v66);
      v72 = objc_msgSend_dimension(v162, v68, v69, v70, v71);
      if (!(v67 | v72))
      {
        v76 = MEMORY[0x277D81150];
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v74, v75);
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v79, v80);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v82, v77, v81, 1701, 0, "TSCEInvalidComparisonError should not be returned when both numbers are durations");
LABEL_39:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
LABEL_52:

        v88 = 0;
        v87 = 0;
        goto LABEL_53;
      }

      if (!v67 && v72 == 4)
      {
LABEL_66:
        v33 = 1;
        goto LABEL_24;
      }

      if (v67 != 4 || v72)
      {
        v156 = MEMORY[0x277D81150];
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v74, v75);
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v158, v159);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v156, v160, v77, v81, 1707, 0, "TSCEInvalidComparisonError should not be returned when both numbers are currencies");
        goto LABEL_39;
      }
    }

    else
    {
      if (objc_msgSend_hasUnits(v35, v63, v64, v65, v66) && (objc_msgSend_hasUnits(v162, v89, v90, v91, v92) & 1) == 0)
      {
        if (objc_msgSend_dimension(v35, v89, v90, v91, v92))
        {
          v145 = MEMORY[0x277D81150];
          v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v143, v144);
          v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v148, v149);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v151, v146, v150, 1710, 0, "Dimension here should be duration, TSCEInvalidComparisonError should not be returned if it's a currency");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
        }

        goto LABEL_66;
      }

      if ((objc_msgSend_hasUnits(v35, v89, v90, v91, v92) & 1) != 0 || !objc_msgSend_hasUnits(v162, v93, v94, v95, v96))
      {
        v161 = MEMORY[0x277D81150];
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v95, v96);
        v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v114, v115);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v161, v117, v112, v116, 1716, 0, "TSCEInvalidComparisonError should not be returned when both numbers have no units");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120, v121);
        goto LABEL_52;
      }

      if (objc_msgSend_dimension(v162, v93, v97, v95, v96))
      {
        v101 = MEMORY[0x277D81150];
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v99, v100);
        v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v104, v105);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v107, v102, v106, 1713, 0, "Dimension here should be duration, TSCEInvalidComparisonError should not be returned if it's a currency");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110, v111);
      }
    }

    v33 = -1;
    goto LABEL_24;
  }

  if (v14 == 3 && v18 != 3)
  {
    goto LABEL_14;
  }

  if (v14 != 3 && v18 == 3)
  {
    goto LABEL_17;
  }

  if (v14 == 3 && v18 == 3)
  {
    v35 = objc_msgSend_asDate_outError_(v9, v28, a5, a6, v30);
    v48 = objc_msgSend_asDate_outError_(v10, v46, a5, a6, v47);
    v52 = objc_msgSend_compare_(v35, v49, v48, v50, v51);
LABEL_56:
    v33 = v52;

    goto LABEL_25;
  }

  v87 = v14 == 7;
  if (v14 == 7 && v18 != 7)
  {
LABEL_14:
    v33 = -1;
    goto LABEL_18;
  }

  v88 = v18 == 7;
  if (v14 != 7 && v18 == 7)
  {
    goto LABEL_17;
  }

LABEL_53:
  if (v87 && v88)
  {
    v35 = objc_msgSend_asString_outError_(v9, v28, a5, a6, v30);
    v48 = objc_msgSend_asString_outError_(v10, v122, a5, a6, v123);
    v52 = objc_msgSend_caseInsensitiveCompare_(v35, v124, v48, v125, v126);
    goto LABEL_56;
  }

  if (v14 == 2 && v18 == 2)
  {
    v127 = objc_msgSend_asBoolean_outError_(v9, v28, a5, a6, v30);
    v130 = objc_msgSend_asBoolean_outError_(v10, v128, a5, a6, v129);
    if ((v127 ^ 1 | v130))
    {
      v33 = (((v127 ^ 1) & v130) << 63) >> 63;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v131 = MEMORY[0x277D81150];
  v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v29, v30);
  v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v134, v135);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v137, v132, v136, 1753, 0, "We should never reach here unless you pass in nodes with unsupported types, leftType: %d rightType: %d", v14, v18);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v139, v140, v141);
LABEL_9:
  v33 = 0;
LABEL_18:

  return v33;
}

+ (BOOL)valuesAreEqualLeft:(id)a3 right:(id)a4 context:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v9, v11, a5, v12, v13);
  v21 = objc_msgSend_valueIsEmptyWithContext_(v10, v15, a5, v16, v17);
  if (IsEmptyWithContext & v21)
  {
    isEqualToString = 1;
    goto LABEL_69;
  }

  v23 = objc_msgSend_deepType_(v10, v18, a5, v19, v20);
  v27 = v23;
  if (IsEmptyWithContext)
  {
    isEqualToString = 0;
    v28 = 0;
    if (v23 <= 6u)
    {
      if (v23 == 2)
      {
        v146 = 0;
        v52 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v10, v24, a5, 0, 0, &v146);
        v28 = v146;
        isEqualToString = v52 ^ 1;
        goto LABEL_39;
      }

      if (v23 == 5)
      {
        v148 = 0;
        v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v24, a5, 0, 0, &v148);
        v30 = v148;
        v35 = objc_msgSend_zero(TSCENumberValue, v31, v32, v33, v34);
        v147 = v30;
        isEqualToString = objc_msgSend_eq_outError_(v29, v36, v35, &v147, v37);
        v28 = v147;

LABEL_38:
LABEL_39:
        if (v28)
        {
          if (a6)
          {
            v56 = v28;
            isEqualToString = 0;
            *a6 = v28;
          }

          else
          {
            isEqualToString = 0;
          }
        }

        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (v23 == 7)
    {
      v145 = 0;
      v29 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v10, v24, a5, 0, 0, &v145);
      v28 = v145;
      isEqualToString = objc_msgSend_isEqualToString_(v29, v53, &stru_2834BADA0, v54, v55);
      goto LABEL_38;
    }

    if (v23 != 9)
    {
LABEL_53:

      goto LABEL_69;
    }

    if (a6)
    {
      goto LABEL_34;
    }

    goto LABEL_51;
  }

  v38 = objc_msgSend_deepType_(v9, v24, a5, v25, v26);
  v40 = v38;
  if (v21)
  {
    isEqualToString = 0;
    v41 = 0;
    if (v38 <= 6u)
    {
      if (v38 == 2)
      {
        v142 = 0;
        v89 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v9, v24, a5, 0, 0, &v142);
        v41 = v142;
        isEqualToString = v89 ^ 1;
        goto LABEL_57;
      }

      if (v38 == 5)
      {
        v144 = 0;
        v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v24, a5, 0, 0, &v144);
        v43 = v144;
        v48 = objc_msgSend_zero(TSCENumberValue, v44, v45, v46, v47);
        v143 = v43;
        isEqualToString = objc_msgSend_eq_outError_(v42, v49, v48, &v143, v50);
        v41 = v143;

LABEL_56:
LABEL_57:
        if (v41)
        {
          if (a6)
          {
            v93 = v41;
            isEqualToString = 0;
            *a6 = v41;
          }

          else
          {
            isEqualToString = 0;
          }
        }

        goto LABEL_68;
      }

      goto LABEL_68;
    }

    if (v38 == 7)
    {
      v141 = 0;
      v42 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v24, a5, 0, 0, &v141);
      v41 = v141;
      isEqualToString = objc_msgSend_isEqualToString_(v42, v90, &stru_2834BADA0, v91, v92);
      goto LABEL_56;
    }

    if (v38 != 9)
    {
LABEL_68:

      goto LABEL_69;
    }

    if (!a6)
    {
      goto LABEL_51;
    }

    goto LABEL_26;
  }

  if (v38 == 9 && (objc_msgSend_isGridValue(v9, v24, v39, v25, v26) & 1) != 0 || v27 == 9 && objc_msgSend_isGridValue(v10, v24, v39, v25, v26))
  {
    if (!a6)
    {
      goto LABEL_51;
    }

    v51 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v24, v39, v25, v26);
LABEL_35:
    isEqualToString = 0;
    *a6 = v51;
    goto LABEL_69;
  }

  if (v40 == 9 && objc_msgSend_isReferenceValue(v9, v24, v39, v25, v26))
  {
    if (!a6)
    {
      goto LABEL_51;
    }

LABEL_26:
    v51 = objc_msgSend_errorWithContext_(v9, v24, a5, v25, v26);
    goto LABEL_35;
  }

  if (v27 == 9 && objc_msgSend_isReferenceValue(v10, v24, v39, v25, v26))
  {
    if (a6)
    {
LABEL_34:
      v51 = objc_msgSend_errorWithContext_(v10, v24, a5, v25, v26);
      goto LABEL_35;
    }

LABEL_51:
    isEqualToString = 0;
    goto LABEL_69;
  }

  if ((objc_msgSend_isRegexString(v9, v24, v39, v25, v26) & 1) == 0)
  {
    isRegexString = objc_msgSend_isRegexString(v10, v57, v58, v59, v60);
    v62 = v40 == v27 ? 1 : isRegexString;
    if ((v62 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (v40 == 7 && v27 == 7)
  {
    v63 = objc_msgSend_isRegexString(v9, v57, v58, v59, v60);
    v72 = objc_msgSend_isRegexString(v10, v64, v65, v66, v67);
    if ((v63 & v72) == 1)
    {
      v73 = objc_msgSend_asStringValue(v9, v68, v69, v70, v71);
      v78 = objc_msgSend_asStringValue(v10, v74, v75, v76, v77);
      isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v73, v79, v80, v81, v82);
      v88 = objc_msgSend_isCaseSensitiveRegex(v78, v84, v85, v86, v87);

      if (isCaseSensitiveRegex != v88)
      {
        goto LABEL_51;
      }
    }

    if (v63 == v72)
    {
      v41 = objc_msgSend_asString_outError_(v9, v68, a5, a6, v71);
      v102 = objc_msgSend_asString_outError_(v10, v100, a5, a6, v101);
      isEqualToString = objc_msgSend_caseInsensitiveCompare_(v41, v103, v102, v104, v105) == 0;

      goto LABEL_68;
    }

    if (objc_msgSend_isRegexString(v9, v68, v69, v70, v71))
    {
      v140 = 0;
      v98 = &v140;
      v99 = objc_msgSend_asString_outError_(v9, v96, a5, &v140, v97);
    }

    else
    {
      v139 = 0;
      v98 = &v139;
      v99 = objc_msgSend_asString_outError_(v10, v96, a5, &v139, v97);
    }

    v107 = v99;
    v108 = *v98;
    if (objc_msgSend_isRegexString(v9, v109, v110, v111, v112))
    {
      v137 = v108;
      v115 = &v137;
      v116 = objc_msgSend_asString_outError_(v10, v113, a5, &v137, v114);
    }

    else
    {
      v138 = v108;
      v115 = &v138;
      v116 = objc_msgSend_asString_outError_(v9, v113, a5, &v138, v114);
    }

    v117 = v116;
    v118 = *v115;

    if (objc_msgSend_isRegexString(v9, v119, v120, v121, v122))
    {
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v9, v123, v124, v125, v126);
    }

    else
    {
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v10, v123, v124, v125, v126);
    }

    v136 = v118;
    v129 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v128, v107, isCaseSensitiveRegexString, 1, &v136);
    v130 = v136;

    if (v130)
    {
      if (a6)
      {
        v134 = v130;
        isEqualToString = 0;
        *a6 = v130;
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = objc_msgSend_containsMatchInString_(v129, v131, v117, v132, v133);
    }
  }

  else
  {
    v135 = 0;
    v94 = objc_msgSend_compareValuesLeft_right_context_outError_(TSCEValue, v57, v9, v10, a5, &v135);
    v95 = v135;
    isEqualToString = v94 == 0;
    if (v95)
    {
      if (a6)
      {
        v95 = v95;
        isEqualToString = 0;
        *a6 = v95;
      }

      else
      {
        isEqualToString = 0;
      }
    }
  }

LABEL_69:

  return isEqualToString;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 20) = 0;
  *(self + 12) = *(self + 12) & 0xC080 | 0x421;
  *(self + 26) = *(self + 26) & 0xF8 | 1;
  *(self + 7) = -50266102;
  *(self + 32) = -3;
  *(self + 33) &= 0xE0u;
  *(self + 17) = 0;
  return self;
}

@end