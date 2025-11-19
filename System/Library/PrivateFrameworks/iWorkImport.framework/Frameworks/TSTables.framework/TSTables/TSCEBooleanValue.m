@interface TSCEBooleanValue
+ (id)BOOLValue:(BOOL)a3;
+ (id)BOOLValue:(BOOL)a3 format:(const TSCEFormat *)a4;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCEBooleanValue)initWithBool:(BOOL)a3;
- (TSCEBooleanValue)initWithBool:(BOOL)a3 format:(const TSCEFormat *)a4;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asNumberWithLocale:(id)a3;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asStringWithLocale:(id)a3;
- (id)canonicalKeyStringForLocale:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TSCEBooleanValue

- (TSCEBooleanValue)initWithBool:(BOOL)a3
{
  v3 = a3;
  TSCEFormat::TSCEFormat(v8, 1);
  return objc_msgSend_initWithBool_format_(self, v5, v3, v8, v6);
}

- (TSCEBooleanValue)initWithBool:(BOOL)a3 format:(const TSCEFormat *)a4
{
  v6.receiver = self;
  v6.super_class = TSCEBooleanValue;
  result = [(TSCEValue *)&v6 initWithTSCEFormat:a4];
  if (result)
  {
    *(&result->super._rangeContextOverride + 1) = a3;
  }

  return result;
}

+ (id)BOOLValue:(BOOL)a3
{
  v3 = a3;
  v4 = [TSCEBooleanValue alloc];
  TSCEFormat::TSCEFormat(v9, 1);
  v7 = objc_msgSend_initWithBool_format_(v4, v5, v3, v9, v6);

  return v7;
}

+ (id)BOOLValue:(BOOL)a3 format:(const TSCEFormat *)a4
{
  v5 = a3;
  v6 = [TSCEBooleanValue alloc];
  v9 = objc_msgSend_initWithBool_format_(v6, v7, v5, a4, v8);

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TSCEBooleanValue;
  result = [(TSCEValue *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 49) = *(&self->super._rangeContextOverride + 1);
  }

  return result;
}

- (id)canonicalKeyStringForLocale:(id)a3
{
  if (objc_msgSend_asBool(self, a2, a3, v3, v4))
  {
    v5 = @"boo_TRUE";
  }

  else
  {
    v5 = @"boo_FALSE";
  }

  return v5;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (a6)
  {
    if (!a4)
    {
      goto LABEL_6;
    }

LABEL_5:
    v20 = objc_msgSend_argumentSpecForIndex_(a4, a2, a5, a4, *&a5);
    v25 = objc_msgSend_argumentType(v20, v21, v22, v23, v24);

    if (v25 == 21)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 84, 0, "outError pointer is required for this API");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  if (a4)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, a2, a3, a4, *&a5);
LABEL_7:
  TSUDecimal::operator=();
  v29 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v26, &v31, v27, v28);

  return v29;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 109, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v20 = objc_msgSend_locale(a3, a2, a3, a4, *&a5);

  return objc_msgSend_asStringWithLocale_(self, v19, v20, v21, v22);
}

- (id)description
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(self, v7, v6, v8, v9);

  return v10;
}

- (id)asStringWithLocale:(id)a3
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asStringWithLocale:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 119, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_format(self, a2, a3, v3, v4);
  if (v37._formatType == 1 && (objc_msgSend_format(self, v18, v19, v20, v21), TSCEFormat::BOOLeanFormat(&v36, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    objc_msgSend_format(self, v18, v19, v20, v21);
    v31 = TSCEFormat::BOOLeanFormat(&v37, v27, v28, v29, v30);
    v34 = objc_msgSend_stringFromBool_locale_(v31, v32, *(&self->super._rangeContextOverride + 1), a3, v33);
  }

  else
  {
    if (*(&self->super._rangeContextOverride + 1) == 1)
    {
      objc_msgSend_localizedTrueString(a3, v18, v19, v20, v21);
    }

    else
    {
      objc_msgSend_localizedFalseString(a3, v18, v19, v20, v21);
    }
    v34 = ;
  }

  return v34;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 137, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  return objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, a2, a3, a4, v7, a6);
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 147, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return *(&self->super._rangeContextOverride + 1);
}

- (id)asNumberWithLocale:(id)a3
{
  v4 = [TSCENumberValue alloc];
  objc_msgSend_asBool(self, v5, v6, v7, v8);
  TSUDecimal::operator=();
  v12 = objc_msgSend_initWithDecimal_(v4, v9, &v14, v10, v11);

  return v12;
}

@end