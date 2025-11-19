@interface TSCHCustomDataFormatter
+ (id)dataFormatterWithCustomFormat:(id)a3 customFormatListKey:(id)a4 formatType:(unsigned int)a5;
- (BOOL)isCompatibleWithDataFormatter:(id)a3;
- (TSCHCustomDataFormatter)initWithCustomFormat:(id)a3 customFormatListKey:(id)a4 formatType:(unsigned int)a5;
- (id)chartFormattedInspectorStringForValue:(id)a3 locale:(id)a4;
- (id)chartFormattedStringForValue:(id)a3 locale:(id)a4;
- (id)convertToPersistableStyleObject;
- (id)convertToSupportedClientFormatObjectWithLocale:(id)a3;
- (id)p_stringForValue:(id)a3 locale:(id)a4;
@end

@implementation TSCHCustomDataFormatter

+ (id)dataFormatterWithCustomFormat:(id)a3 customFormatListKey:(id)a4 formatType:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v15 = objc_msgSend_initWithCustomFormat_customFormatListKey_formatType_(v10, v11, v12, v13, v14, v9, v8, v5);

  return v15;
}

- (TSCHCustomDataFormatter)initWithCustomFormat:(id)a3 customFormatListKey:(id)a4 formatType:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TSCHCustomDataFormatter;
  v11 = [(TSCHCustomDataFormatter *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_customFormat, a3);
    objc_storeStrong(&v12->_customFormatListKey, a4);
    v12->_formatType = a5;
  }

  return v12;
}

- (id)p_stringForValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    if (self->_formatType == 272)
    {
      v12 = objc_msgSend_NSDateConvertedFromGridValue_(TSCHChartGridValue, v7, v9, v10, v11, v6);
      v17 = objc_msgSend_customFormat(self, v13, v14, v15, v16);
      v22 = objc_msgSend_defaultFormatData(v17, v18, v19, v20, v21);

      v27 = objc_msgSend_formatString(v22, v23, v24, v25, v26);
      v28 = TSUDateFormatterStringFromDateWithFormat();
    }

    else
    {
      v12 = objc_msgSend_customFormat(self, v7, v9, v10, v11);
      objc_msgSend_doubleValue(v6, v44, v45, v46, v47);
      v28 = objc_msgSend_formattedBodyStringForDoubleValue_customFormatListKey_formatType_locale_(v12, v48, v49, v50, v51, self->_customFormatListKey, self->_formatType, v8);
    }
  }

  else
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHCustomDataFormatter p_stringForValue:locale:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDataFormatter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 115, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    v28 = &stru_288528678;
  }

  return v28;
}

- (id)chartFormattedStringForValue:(id)a3 locale:(id)a4
{
  if (a3)
  {
    v8 = objc_msgSend_p_stringForValue_locale_(self, a2, v5, v6, v7, a3, a4);
  }

  else
  {
    v8 = &stru_288528678;
  }

  return v8;
}

- (id)chartFormattedInspectorStringForValue:(id)a3 locale:(id)a4
{
  if (a3)
  {
    v7 = objc_msgSend_p_stringForValue_locale_(self, a2, v4, v5, v6, a3, a4);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHCustomDataFormatter chartFormattedInspectorStringForValue:locale:]", a4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDataFormatter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 137, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v7 = &stru_288528678;
  }

  return v7;
}

- (BOOL)isCompatibleWithDataFormatter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v10 = objc_msgSend_customFormat(self, v6, v7, v8, v9);
  v15 = objc_msgSend_customFormat(v5, v11, v12, v13, v14);
  LOBYTE(v4) = v10 == v15;

  return v4;
}

- (id)convertToPersistableStyleObject
{
  v5 = objc_msgSend_unpopulatedCustomFormatWrapperWithFormatType_customFormatKey_(MEMORY[0x277D80650], a2, v2, v3, v4, self->_formatType, self->_customFormatListKey);
  v6 = [TSCHTimeBasedFormat alloc];
  v11 = objc_msgSend_initWithTSKFormat_(v6, v7, v8, v9, v10, v5);

  return v11;
}

- (id)convertToSupportedClientFormatObjectWithLocale:(id)a3
{
  v5 = a3;
  if (self->_formatType != 272)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHCustomDataFormatter convertToSupportedClientFormatObjectWithLocale:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDataFormatter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 152, 0, "Expected a custom date format.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v25 = objc_msgSend_defaultDateFormat_(TSCHMutableTimeBasedFormat, v4, v6, v7, v8, v5);
  if (self->_formatType == 272)
  {
    v29 = objc_msgSend_customFormat(self, v24, v26, v27, v28);
    v34 = objc_msgSend_defaultFormatData(v29, v30, v31, v32, v33);

    if (v34)
    {
      v35 = objc_msgSend_formatString(v34, v24, v26, v27, v28);
      objc_msgSend_setDateTimeFormatString_(v25, v36, v37, v38, v39, v35);
    }
  }

  v40 = objc_msgSend_copy(v25, v24, v26, v27, v28);

  return v40;
}

@end