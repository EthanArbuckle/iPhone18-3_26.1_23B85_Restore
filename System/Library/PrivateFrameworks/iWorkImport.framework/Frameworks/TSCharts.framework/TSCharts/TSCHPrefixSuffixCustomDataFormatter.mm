@interface TSCHPrefixSuffixCustomDataFormatter
+ (id)dataFormatterWithCustomFormat:(id)format customFormatListKey:(id)key formatType:(unsigned int)type prefixString:(id)string suffixString:(id)suffixString;
- (TSCHPrefixSuffixCustomDataFormatter)initWithCustomFormat:(id)format customFormatListKey:(id)key formatType:(unsigned int)type prefixString:(id)string suffixString:(id)suffixString;
- (id)chartFormattedStringForValue:(id)value locale:(id)locale;
- (id)convertToPersistableStyleObject;
- (id)convertToSupportedClientFormatObjectWithLocale:(id)locale;
- (id)p_formattedStringWithBodyString:(id)string;
@end

@implementation TSCHPrefixSuffixCustomDataFormatter

+ (id)dataFormatterWithCustomFormat:(id)format customFormatListKey:(id)key formatType:(unsigned int)type prefixString:(id)string suffixString:(id)suffixString
{
  v8 = *&type;
  suffixStringCopy = suffixString;
  stringCopy = string;
  keyCopy = key;
  formatCopy = format;
  v16 = [self alloc];
  v21 = objc_msgSend_initWithCustomFormat_customFormatListKey_formatType_prefixString_suffixString_(v16, v17, v18, v19, v20, formatCopy, keyCopy, v8, stringCopy, suffixStringCopy);

  return v21;
}

- (TSCHPrefixSuffixCustomDataFormatter)initWithCustomFormat:(id)format customFormatListKey:(id)key formatType:(unsigned int)type prefixString:(id)string suffixString:(id)suffixString
{
  v8 = *&type;
  stringCopy = string;
  suffixStringCopy = suffixString;
  v28.receiver = self;
  v28.super_class = TSCHPrefixSuffixCustomDataFormatter;
  v15 = [(TSCHCustomDataFormatter *)&v28 initWithCustomFormat:format customFormatListKey:key formatType:v8];
  if (v15)
  {
    v19 = objc_msgSend_copy(stringCopy, v14, v16, v17, v18);
    prefixString = v15->_prefixString;
    v15->_prefixString = v19;

    v25 = objc_msgSend_copy(suffixStringCopy, v21, v22, v23, v24);
    suffixString = v15->_suffixString;
    v15->_suffixString = v25;
  }

  return v15;
}

- (id)p_formattedStringWithBodyString:(id)string
{
  stringCopy = string;
  v9 = objc_msgSend_string(MEMORY[0x277CCAB68], v5, v6, v7, v8);
  v14 = v9;
  if (self->_prefixString)
  {
    objc_msgSend_appendString_(v9, v10, v11, v12, v13);
  }

  if (stringCopy)
  {
    objc_msgSend_appendString_(v14, v10, v11, v12, v13, stringCopy);
  }

  if (self->_suffixString)
  {
    objc_msgSend_appendString_(v14, v10, v11, v12, v13);
  }

  v15 = objc_msgSend_copy(v14, v10, v11, v12, v13);

  return v15;
}

- (id)chartFormattedStringForValue:(id)value locale:(id)locale
{
  v12.receiver = self;
  v12.super_class = TSCHPrefixSuffixCustomDataFormatter;
  v5 = [(TSCHCustomDataFormatter *)&v12 chartFormattedStringForValue:value locale:locale];
  v10 = objc_msgSend_p_formattedStringWithBodyString_(self, v6, v7, v8, v9, v5);

  return v10;
}

- (id)convertToPersistableStyleObject
{
  v6 = objc_msgSend_unpopulatedCustomFormatWrapperWithFormatType_customFormatKey_(MEMORY[0x277D80650], a2, v2, v3, v4, self->super._formatType, self->super._customFormatListKey);
  v7 = [TSCHNumberFormat alloc];
  v12 = objc_msgSend_initWithTSKFormat_prefixString_suffixString_(v7, v8, v9, v10, v11, v6, self->_prefixString, self->_suffixString);

  return v12;
}

- (id)convertToSupportedClientFormatObjectWithLocale:(id)locale
{
  localeCopy = locale;
  formatType = self->super._formatType;
  if (formatType != 270 && formatType != 274)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHPrefixSuffixCustomDataFormatter convertToSupportedClientFormatObjectWithLocale:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDataFormatter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 219, 0, "We should only get here for custom number formats.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_alloc(MEMORY[0x277D80650]);
  v26 = self->super._formatType;
  customFormatListKey = self->super._customFormatListKey;
  v32 = objc_msgSend_customFormat(self, v28, v29, v30, v31);
  v37 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v25, v33, v34, v35, v36, v26, customFormatListKey, v32);

  v38 = [TSCHNumberFormat alloc];
  v43 = objc_msgSend_initWithTSKFormat_prefixString_suffixString_(v38, v39, v40, v41, v42, v37, self->_prefixString, self->_suffixString);

  return v43;
}

@end