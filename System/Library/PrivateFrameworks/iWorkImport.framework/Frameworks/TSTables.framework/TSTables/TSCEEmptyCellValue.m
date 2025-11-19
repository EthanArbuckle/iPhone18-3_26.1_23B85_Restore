@interface TSCEEmptyCellValue
+ (id)emptyCellValue;
+ (id)emptyCellValueWithFormat:(const TSCEFormat *)a3;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (TSCEEmptyCellValue)init;
- (TSCEEmptyCellValue)initWithFormat:(const TSCEFormat *)a3;
- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
@end

@implementation TSCEEmptyCellValue

+ (id)emptyCellValue
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)emptyCellValueWithFormat:(const TSCEFormat *)a3
{
  v4 = [TSCEEmptyCellValue alloc];
  v8 = objc_msgSend_initWithFormat_(v4, v5, a3, v6, v7);

  return v8;
}

- (TSCEEmptyCellValue)init
{
  v3.receiver = self;
  v3.super_class = TSCEEmptyCellValue;
  return [(TSCEValue *)&v3 init];
}

- (TSCEEmptyCellValue)initWithFormat:(const TSCEFormat *)a3
{
  v4.receiver = self;
  v4.super_class = TSCEEmptyCellValue;
  return [(TSCEValue *)&v4 initWithTSCEFormat:a3];
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 56, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return objc_msgSend_unitlessZero(TSCENumberValue, a2, a3, a4, *&a5);
}

- (id)asDate:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asDate:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 67, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return 0;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 75, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_format(self, a2, a3, a4, *&a5);
  if (v44._formatType == 271)
  {
    objc_msgSend_format(self, v18, v19, v20, v21);
    v26 = TSCEFormat::customFormat(&v44, v22, v23, v24, v25);
    v31 = objc_msgSend_customFormat(v26, v27, v28, v29, v30);
    v36 = objc_msgSend_defaultFormatData(v31, v32, v33, v34, v35);
    v41 = objc_msgSend_formatString(v36, v37, v38, v39, v40);
    v42 = TSUNumberFormatterStringFromStringWithCustomFormat();
  }

  else
  {
    v42 = &stru_2834BADA0;
  }

  return v42;
}

- (id)asRawString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asRawString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 90, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return &stru_2834BADA0;
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 98, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return 0;
}

@end