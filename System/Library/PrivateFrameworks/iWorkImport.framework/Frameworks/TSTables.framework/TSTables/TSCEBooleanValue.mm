@interface TSCEBooleanValue
+ (id)BOOLValue:(BOOL)value;
+ (id)BOOLValue:(BOOL)value format:(const TSCEFormat *)format;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCEBooleanValue)initWithBool:(BOOL)bool;
- (TSCEBooleanValue)initWithBool:(BOOL)bool format:(const TSCEFormat *)format;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumberWithLocale:(id)locale;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSCEBooleanValue

- (TSCEBooleanValue)initWithBool:(BOOL)bool
{
  boolCopy = bool;
  TSCEFormat::TSCEFormat(v8, 1);
  return objc_msgSend_initWithBool_format_(self, v5, boolCopy, v8, v6);
}

- (TSCEBooleanValue)initWithBool:(BOOL)bool format:(const TSCEFormat *)format
{
  v6.receiver = self;
  v6.super_class = TSCEBooleanValue;
  result = [(TSCEValue *)&v6 initWithTSCEFormat:format];
  if (result)
  {
    *(&result->super._rangeContextOverride + 1) = bool;
  }

  return result;
}

+ (id)BOOLValue:(BOOL)value
{
  valueCopy = value;
  v4 = [TSCEBooleanValue alloc];
  TSCEFormat::TSCEFormat(v9, 1);
  v7 = objc_msgSend_initWithBool_format_(v4, v5, valueCopy, v9, v6);

  return v7;
}

+ (id)BOOLValue:(BOOL)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEBooleanValue alloc];
  v9 = objc_msgSend_initWithBool_format_(v6, v7, valueCopy, format, v8);

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEBooleanValue;
  result = [(TSCEValue *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 49) = *(&self->super._rangeContextOverride + 1);
  }

  return result;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  if (objc_msgSend_asBool(self, a2, locale, v3, v4))
  {
    v5 = @"boo_TRUE";
  }

  else
  {
    v5 = @"boo_FALSE";
  }

  return v5;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (error)
  {
    if (!spec)
    {
      goto LABEL_6;
    }

LABEL_5:
    v20 = objc_msgSend_argumentSpecForIndex_(spec, a2, index, spec, *&index);
    v25 = objc_msgSend_argumentType(v20, v21, v22, v23, v24);

    if (v25 == 21)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asNumber:functionSpec:argumentIndex:outError:]", spec, *&index);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 84, 0, "outError pointer is required for this API");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  if (spec)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, a2, number, spec, *&index);
LABEL_7:
  TSUDecimal::operator=();
  v29 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v26, &v31, v27, v28);

  return v29;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 109, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v20 = objc_msgSend_locale(string, a2, string, spec, *&index);

  return objc_msgSend_asStringWithLocale_(self, v19, v20, v21, v22);
}

- (id)description
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(self, v7, v6, v8, v9);

  return v10;
}

- (id)asStringWithLocale:(id)locale
{
  if (!locale)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asStringWithLocale:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 119, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_format(self, a2, locale, v3, v4);
  if (v37._formatType == 1 && (objc_msgSend_format(self, v18, v19, v20, v21), TSCEFormat::BOOLeanFormat(&v36, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
  {
    objc_msgSend_format(self, v18, v19, v20, v21);
    v31 = TSCEFormat::BOOLeanFormat(&v37, v27, v28, v29, v30);
    v34 = objc_msgSend_stringFromBool_locale_(v31, v32, *(&self->super._rangeContextOverride + 1), locale, v33);
  }

  else
  {
    if (*(&self->super._rangeContextOverride + 1) == 1)
    {
      objc_msgSend_localizedTrueString(locale, v18, v19, v20, v21);
    }

    else
    {
      objc_msgSend_localizedFalseString(locale, v18, v19, v20, v21);
    }
    v34 = ;
  }

  return v34;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asRawString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 137, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  return objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, a2, string, spec, v7, error);
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asBoolean:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 147, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return *(&self->super._rangeContextOverride + 1);
}

- (id)asNumberWithLocale:(id)locale
{
  v4 = [TSCENumberValue alloc];
  objc_msgSend_asBool(self, v5, v6, v7, v8);
  TSUDecimal::operator=();
  v12 = objc_msgSend_initWithDecimal_(v4, v9, &v14, v10, v11);

  return v12;
}

@end