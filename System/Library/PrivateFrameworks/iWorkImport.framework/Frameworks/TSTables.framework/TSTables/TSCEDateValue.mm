@interface TSCEDateValue
+ (TSCEDateValue)dateValueWithDays:(double)days;
+ (id)dateValue:(id)value;
+ (id)dateValue:(id)value format:(const TSCEFormat *)format;
- (TSCEDateValue)init;
- (TSCEDateValue)initWithDate:(id)date;
- (TSCEDateValue)initWithDate:(id)date format:(const TSCEFormat *)format;
- (TSCEDateValue)initWithDays:(double)days;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)array;
@end

@implementation TSCEDateValue

- (TSCEDateValue)init
{
  v3.receiver = self;
  v3.super_class = TSCEDateValue;
  return [(TSCEValue *)&v3 init];
}

- (TSCEDateValue)initWithDate:(id)date
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1057;
  v9 = 1;
  v10 = -50266102;
  v11 = 253;
  return objc_msgSend_initWithDate_format_(self, a2, date, &v5, v3);
}

- (TSCEDateValue)initWithDate:(id)date format:(const TSCEFormat *)format
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = TSCEDateValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, date);
  }

  return v9;
}

- (TSCEDateValue)initWithDays:(double)days
{
  v13.receiver = self;
  v13.super_class = TSCEDateValue;
  v4 = [(TSCEValue *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    v10 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, v8, v9, days * 86400.0);
    date = v4->_date;
    v4->_date = v10;
  }

  return v4;
}

+ (id)dateValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEDateValue alloc];
  v8 = objc_msgSend_initWithDate_(v4, v5, valueCopy, v6, v7);

  return v8;
}

+ (id)dateValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEDateValue alloc];
  v9 = objc_msgSend_initWithDate_format_(v6, v7, valueCopy, format, v8);

  return v9;
}

+ (TSCEDateValue)dateValueWithDays:(double)days
{
  v4 = [TSCEDateValue alloc];
  v9 = objc_msgSend_initWithDays_(v4, v5, v6, v7, v8, days);

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEDateValue;
  v4 = [(TSCEValue *)&v12 copyWithZone:zone];
  v9 = objc_msgSend_copy(self->_date, v5, v6, v7, v8);
  v10 = v4[7];
  v4[7] = v9;

  return v4;
}

- (id)description
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(self, v7, v6, v8, v9);

  return v10;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v6 = objc_msgSend_date(self, a2, locale, v3, v4);
  v10 = objc_msgSend_dateValue_(TSCEDateValue, v7, v6, v8, v9);

  v14 = objc_msgSend_asStringWithLocale_(v10, v11, locale, v12, v13);
  v18 = objc_msgSend_stringByAppendingString_(@"dat_", v15, v14, v16, v17);

  return v18;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDateValue asDate:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 101, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  date = self->_date;

  return date;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDateValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 109, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v20 = objc_msgSend_locale(string, a2, string, spec, *&index);

  return objc_msgSend_asStringWithLocale_(self, v19, v20, v21, v22);
}

- (id)asStringWithLocale:(id)locale
{
  if (!locale)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDateValue asStringWithLocale:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 117, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_format(self, a2, locale, v3, v4);
  if (v88._formatType == 261)
  {
    objc_msgSend_format(self, v18, v19, v20, v21);
    v26 = TSCEFormat::dateTimeFormat(&v88, v22, v23, v24, v25);
    v31 = objc_msgSend_formatString(v26, v27, v28, v29, v30);
    v32 = TSUDateFormatterStringFromDateWithFormat();
    goto LABEL_5;
  }

  objc_msgSend_format(self, v18, v19, v20, v21);
  if (v88._formatType == 272)
  {
    objc_msgSend_format(self, v34, v35, v36, v37);
    v26 = TSCEFormat::customFormat(&v88, v38, v39, v40, v41);
    v46 = objc_msgSend_customFormat(v26, v42, v43, v44, v45);
    v51 = objc_msgSend_defaultFormatData(v46, v47, v48, v49, v50);

    if (!v51)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSCEDateValue asStringWithLocale:]", v54, v55);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v59, v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 128, 0, "invalid nil value for '%{public}s'", "dateFormat.customFormat.defaultFormatData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
    }

    v67 = objc_msgSend_customFormat(v26, v52, v53, v54, v55);
    v72 = objc_msgSend_defaultFormatData(v67, v68, v69, v70, v71);

    if (v72)
    {
      v31 = objc_msgSend_customFormat(v26, v73, v74, v75, v76);
      v81 = objc_msgSend_defaultFormatData(v31, v77, v78, v79, v80);
      v86 = objc_msgSend_formatString(v81, v82, v83, v84, v85);
      v33 = TSUDateFormatterStringFromDateWithFormat();

      goto LABEL_11;
    }

    v31 = objc_msgSend_defaultDateTimeFormatForLocale_(MEMORY[0x277D811A0], v73, locale, v75, v76);
    v32 = TSUDateFormatterStringFromDateWithFormat();
LABEL_5:
    v33 = v32;
LABEL_11:

    goto LABEL_13;
  }

  v26 = objc_msgSend_defaultDateTimeFormatForLocale_(MEMORY[0x277D811A0], v34, locale, v36, v37);
  v33 = TSUDateFormatterStringFromDateWithFormat();
LABEL_13:

  return v33;
}

- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)array
{
  objc_msgSend_format(self, a2, array, v3, v4);
  if (v22._formatType == 261)
  {
    objc_msgSend_format(self, v7, v8, v9, v10);
    v15 = TSCEFormat::dateTimeFormat(&v22, v11, v12, v13, v14);
    date = self->_date;
    v21 = objc_msgSend_formatString(v15, v17, v18, v19, v20);
    TSCEASTDateElement::appendDateElement(array, date, v21, 0, 0);
  }

  else
  {
    TSCEASTDateElement::appendDateElement(array, self->_date, 0, 0, 0);
  }
}

@end