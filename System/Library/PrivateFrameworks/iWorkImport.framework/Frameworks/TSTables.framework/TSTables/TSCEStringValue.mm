@interface TSCEStringValue
+ (id)stringValue:(id)value;
+ (id)stringValue:(id)value format:(const TSCEFormat *)format;
+ (id)stringValue:(id)value format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)string;
- (BOOL)asBoolean:(id)boolean;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCERichTextStorage)rawRichTextStorage;
- (TSCEStringValue)initWithString:(id)string;
- (TSCEStringValue)initWithString:(id)string format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)literalString;
- (id)asDate:(id)date;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumberWithLocale:(id)locale;
- (id)asNumberWithLocale:(id)locale outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEStringValue

+ (id)stringValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEStringValue alloc];
  v8 = objc_msgSend_initWithString_(v4, v5, valueCopy, v6, v7);

  return v8;
}

+ (id)stringValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEStringValue alloc];
  v9 = objc_msgSend_initWithString_format_(v6, v7, valueCopy, format, v8);

  return v9;
}

+ (id)stringValue:(id)value format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)string
{
  stringCopy = string;
  sensitiveRegexCopy = sensitiveRegex;
  regexCopy = regex;
  valueCopy = value;
  v12 = [TSCEStringValue alloc];
  isLiteralString = objc_msgSend_initWithString_format_isRegex_isCaseSensitiveRegex_isLiteralString_(v12, v13, valueCopy, format, regexCopy, sensitiveRegexCopy, stringCopy);

  return isLiteralString;
}

- (TSCEStringValue)initWithString:(id)string
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithString_format_isRegex_isCaseSensitiveRegex_isLiteralString_(self, a2, string, &v4, 0, 0, 0);
}

- (TSCEStringValue)initWithString:(id)string format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)literalString
{
  stringCopy = string;
  v21.receiver = self;
  v21.super_class = TSCEStringValue;
  v17 = [(TSCEValue *)&v21 initWithTSCEFormat:format];
  if (v17)
  {
    v18 = objc_msgSend_copy(stringCopy, v13, v14, v15, v16);
    string = v17->_string;
    v17->_string = v18;

    v17->_isRegex = regex;
    v17->_isCaseSensitiveRegex = sensitiveRegex;
    v17->_isLiteralString = literalString;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEStringValue;
  v8 = [(TSCEValue *)&v12 copyWithZone:zone];
  if (v8)
  {
    v9 = objc_msgSend_copy(self->_string, v4, v5, v6, v7);
    v10 = v8[7];
    v8[7] = v9;

    *(v8 + 64) = self->_isRegex;
    *(v8 + 65) = self->_isCaseSensitiveRegex;
    *(v8 + 66) = self->_isLiteralString;
  }

  return v8;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v6 = objc_msgSend_asRawString(self, a2, locale, v3, v4);
  v11 = objc_msgSend_locale(locale, v7, v8, v9, v10);
  v15 = objc_msgSend_lowercaseStringWithLocale_(v6, v12, v11, v13, v14);

  v19 = objc_msgSend_stringByAppendingString_(@"str_", v16, v15, v17, v18);

  return v19;
}

- (id)asNumberWithLocale:(id)locale outError:(id *)error
{
  v38 = -999;
  TSUDecimal::operator=();
  if (objc_msgSend_length(self->_string, v7, v8, v9, v10))
  {
    string = self->_string;
    v36 = 0;
    v15 = objc_msgSend_numberValueFromString_locale_outDecimalValue_outValueType_outCurrencyCode_(MEMORY[0x277D81290], v11, string, locale, v37, &v38, &v36);
    v16 = v36;
    if ((v15 & 1) == 0)
    {
      v35 = 0;
      v34 = 0;
      if (TSUDurationFormatterTimeIntervalFromString())
      {
        v34 = TSUDurationFormatterMaxDurationUnitInUnits();
        v18 = sub_221387C78(v34);
        v19 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v22 = objc_msgSend_initWithDecimal_baseUnit_(v19, v20, &v33, v18, v21);
        goto LABEL_11;
      }

      if (error)
      {
        *error = objc_msgSend_numberError(TSCEError, v11, v17, v12, v13);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  if (v38 == 1)
  {
    v23 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v11, v16, v12, v13);
    v24 = [TSCENumberValue alloc];
    v22 = objc_msgSend_initWithDecimal_baseUnit_(v24, v25, v37, v23, v26);
  }

  else
  {
    v27 = [TSCENumberValue alloc];
    v22 = objc_msgSend_initWithDecimal_(v27, v28, v37, v29, v30);
  }

LABEL_11:
  v31 = v22;

  return v31;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asNumber:functionSpec:argumentIndex:outError:]", spec, *&index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 136, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v54 = -999;
  TSUDecimal::operator=();
  v26 = objc_msgSend_locale(number, v22, v23, v24, v25);
  string = self->_string;
  v52 = 0;
  v29 = objc_msgSend_numberValueFromString_locale_outDecimalValue_outValueType_outCurrencyCode_(MEMORY[0x277D81290], v28, string, v26, v53, &v54, &v52);
  v33 = v52;
  if ((v29 & 1) == 0)
  {
    v51 = 0;
    v50 = 0;
    if (TSUDurationFormatterTimeIntervalFromString())
    {
      v50 = TSUDurationFormatterMaxDurationUnitInUnits();
      v34 = sub_221387C78(v50);
      v35 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v38 = objc_msgSend_initWithDecimal_baseUnit_(v35, v36, &v49, v34, v37);
      goto LABEL_11;
    }

    if (error)
    {
      *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v30, self, number, spec, v7);
    }
  }

  if (v54 == 1)
  {
    v39 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v30, v33, v31, v32);
    v40 = [TSCENumberValue alloc];
    v38 = objc_msgSend_initWithDecimal_baseUnit_(v40, v41, v53, v39, v42);
  }

  else
  {
    v43 = [TSCENumberValue alloc];
    v38 = objc_msgSend_initWithDecimal_(v43, v44, v53, v45, v46);
  }

LABEL_11:
  v47 = v38;

  return v47;
}

- (id)asDate:(id)date
{
  v3 = TSUCreateDateFromString();

  return v3;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asDate:functionSpec:argumentIndex:outError:]", spec, *&index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 174, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_locale(date, a2, date, spec, *&index);
  v27 = objc_msgSend_asDate_(self, v23, v22, v24, v25);
  if (!v27)
  {
    *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v26, self, date, spec, v7);
  }

  return v27;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 190, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return objc_msgSend_asString(self, a2, string, spec, *&index);
}

- (id)asString
{
  objc_msgSend_format(self, a2, v2, v3, v4);
  if (v63._formatType == 271)
  {
    objc_msgSend_format(self, v6, v7, v8, v9);
    v14 = TSCEFormat::customFormat(&v63, v10, v11, v12, v13);
    v19 = objc_msgSend_customFormat(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_defaultFormatData(v19, v20, v21, v22, v23);

    if (!v24)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCEStringValue asString]", v27, v28);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v32, v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v34, 199, 0, "invalid nil value for '%{public}s'", "customFormat.customFormat.defaultFormatData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }

    v40 = objc_msgSend_customFormat(v14, v25, v26, v27, v28);
    v45 = objc_msgSend_defaultFormatData(v40, v41, v42, v43, v44);

    if (v45)
    {
      v50 = objc_msgSend_customFormat(v14, v46, v47, v48, v49);
      v55 = objc_msgSend_defaultFormatData(v50, v51, v52, v53, v54);
      v60 = objc_msgSend_formatString(v55, v56, v57, v58, v59);
      v61 = TSUNumberFormatterStringFromStringWithCustomFormat();
    }

    else
    {
      v61 = self->_string;
    }
  }

  else
  {
    v61 = self->_string;
  }

  return v61;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asRawString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 224, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return objc_msgSend_asRawString(self, a2, string, spec, *&index);
}

- (BOOL)asBoolean:(id)boolean
{
  string = self->_string;
  v6 = objc_msgSend_falseString(boolean, a2, boolean, v3, v4);
  LOBYTE(string) = objc_msgSend_compare_options_(string, v7, v6, 1, v8) != 0;

  return string;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asBoolean:functionSpec:argumentIndex:outError:]", spec, *&index);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 244, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v20 = objc_msgSend_locale(boolean, a2, boolean, spec, *&index);

  return objc_msgSend_asBoolean_(self, v19, v20, v21, v22);
}

- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asStrictBoolean:functionSpec:argumentIndex:outError:]", spec, *&index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 254, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_locale(boolean, a2, boolean, spec, *&index);
  string = self->_string;
  v28 = objc_msgSend_falseString(v22, v24, v25, v26, v27);
  v31 = objc_msgSend_compare_options_(string, v29, v28, 1, v30);

  if (!v31)
  {
    return 0;
  }

  v36 = self->_string;
  v37 = objc_msgSend_trueString(v22, v32, v33, v34, v35);
  v40 = objc_msgSend_compare_options_(v36, v38, v37, 1, v39);

  if (!v40)
  {
    return 1;
  }

  v42 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v41, self, boolean, spec, v7);
  v43 = v42;
  result = 0;
  *error = v42;
  return result;
}

- (id)asNumberWithLocale:(id)locale
{
  v6 = 0;
  v4 = objc_msgSend_asNumberWithLocale_outError_(self, a2, locale, &v6, v3);

  return v4;
}

- (TSCERichTextStorage)rawRichTextStorage
{
  v8 = objc_msgSend_asRawString(self, a3, v3, v4, v5);
  sub_221077074(retstr);

  return result;
}

@end