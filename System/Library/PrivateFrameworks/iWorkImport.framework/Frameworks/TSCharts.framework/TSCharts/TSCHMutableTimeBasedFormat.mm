@interface TSCHMutableTimeBasedFormat
- (id)copyWithZone:(_NSZone *)zone;
- (void)p_setDateFormat:(id)format timeFormat:(id)timeFormat;
- (void)remapCustomFormatKeysWithOldToNewKeyMap:(id)map;
- (void)setDateFormat:(id)format;
- (void)setDateTimeFormatString:(id)string;
- (void)setDurationStyle:(id)style;
- (void)setDurationStyleValue:(unsigned __int8)value;
- (void)setDurationUnitLargest:(id)largest;
- (void)setDurationUnitLargestValue:(unsigned __int8)value;
- (void)setDurationUnitSmallest:(id)smallest;
- (void)setDurationUnitSmallestValue:(unsigned __int8)value;
- (void)setDurationUnitsAutomatic:(id)automatic;
- (void)setDurationUnitsAutomaticValue:(BOOL)value;
- (void)setTimeFormat:(id)format;
- (void)updateAfterPasteForDocumentRoot:(id)root pasteboardCustomFormatList:(id)list;
- (void)updateCustomFormatKey:(id)key;
- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)root;
@end

@implementation TSCHMutableTimeBasedFormat

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCHTimeBasedFormat alloc];
  v9 = objc_msgSend_format(self, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithTSKFormat_(v4, v10, v11, v12, v13, v9);

  return v14;
}

- (void)setDateTimeFormatString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCHMutableTimeBasedFormat setDateTimeFormatString:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 283, 0, "invalid nil value for '%{public}s'", "dateTimeFormatString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_alloc(MEMORY[0x277D80658]);
  v28 = objc_msgSend_initWithFormatString_(v23, v24, v25, v26, v27, stringCopy);
  objc_msgSend_setFormat_(self, v29, v30, v31, v32, v28);
}

- (void)p_setDateFormat:(id)format timeFormat:(id)timeFormat
{
  formatCopy = format;
  timeFormatCopy = timeFormat;
  v12 = objc_msgSend_dateTimeFormatString(self, v7, v8, v9, v10);
  v16 = formatCopy;
  if (!formatCopy)
  {
    v16 = objc_msgSend_datePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v11, v13, v14, v15, v12);
  }

  v28 = v16;
  if (!timeFormatCopy)
  {
    timeFormatCopy = objc_msgSend_timePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v11, v13, v14, v15, v12);
    v16 = v28;
  }

  v21 = &stru_288528678;
  if (objc_msgSend_length(v16, v11, v13, v14, v15) && objc_msgSend_length(timeFormatCopy, v17, v18, v19, v20))
  {
    v21 = @" ";
  }

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, v18, v19, v20, @"%@%@%@", v28, v21, timeFormatCopy);
  objc_msgSend_setDateTimeFormatString_(self, v23, v24, v25, v26, v22);
}

- (void)setDateFormat:(id)format
{
  formatCopy = format;
  if (objc_msgSend_formatType(self, v4, v5, v6, v7) != 261)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDateFormat:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 308, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!formatCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDateFormat:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 309, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  objc_msgSend_p_setDateFormat_timeFormat_(self, v8, v9, v10, v11, formatCopy, 0);
}

- (void)setTimeFormat:(id)format
{
  formatCopy = format;
  if (objc_msgSend_formatType(self, v4, v5, v6, v7) != 261)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setTimeFormat:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 314, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!formatCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setTimeFormat:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 315, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  objc_msgSend_p_setDateFormat_timeFormat_(self, v8, v9, v10, v11, 0, formatCopy);
}

- (void)setDurationUnitsAutomaticValue:(BOOL)value
{
  if (objc_msgSend_formatType(self, a2, v3, v4, v5) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitsAutomaticValue:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 320, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_format(self, v8, v9, v10, v11);
  v38 = objc_msgSend_copy(v33, v34, v35, v36, v37);

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_276189698;
  v47[3] = &unk_27A6B6638;
  valueCopy = value;
  v42 = objc_msgSend_formatByUpdatingIfDurationFormatWithBlock_(v38, v39, COERCE_DOUBLE(3221225472), v40, v41, v47);
  objc_msgSend_setFormat_(self, v43, v44, v45, v46, v42);
}

- (void)setDurationUnitSmallestValue:(unsigned __int8)value
{
  if (objc_msgSend_formatType(self, a2, v3, v4, v5) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitSmallestValue:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 330, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_format(self, v8, v9, v10, v11);
  v38 = objc_msgSend_copy(v33, v34, v35, v36, v37);

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_27618986C;
  v47[3] = &unk_27A6B6638;
  valueCopy = value;
  v42 = objc_msgSend_formatByUpdatingIfDurationFormatWithBlock_(v38, v39, COERCE_DOUBLE(3221225472), v40, v41, v47);
  objc_msgSend_setFormat_(self, v43, v44, v45, v46, v42);
}

- (void)setDurationUnitLargestValue:(unsigned __int8)value
{
  if (objc_msgSend_formatType(self, a2, v3, v4, v5) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitLargestValue:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 340, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_format(self, v8, v9, v10, v11);
  v38 = objc_msgSend_copy(v33, v34, v35, v36, v37);

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_276189A40;
  v47[3] = &unk_27A6B6638;
  valueCopy = value;
  v42 = objc_msgSend_formatByUpdatingIfDurationFormatWithBlock_(v38, v39, COERCE_DOUBLE(3221225472), v40, v41, v47);
  objc_msgSend_setFormat_(self, v43, v44, v45, v46, v42);
}

- (void)setDurationStyleValue:(unsigned __int8)value
{
  if (objc_msgSend_formatType(self, a2, v3, v4, v5) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationStyleValue:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 350, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = objc_msgSend_format(self, v8, v9, v10, v11);
  v38 = objc_msgSend_copy(v33, v34, v35, v36, v37);

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_276189C14;
  v47[3] = &unk_27A6B6638;
  valueCopy = value;
  v42 = objc_msgSend_formatByUpdatingIfDurationFormatWithBlock_(v38, v39, COERCE_DOUBLE(3221225472), v40, v41, v47);
  objc_msgSend_setFormat_(self, v43, v44, v45, v46, v42);
}

- (void)setDurationUnitsAutomatic:(id)automatic
{
  automaticCopy = automatic;
  if (objc_msgSend_formatType(self, v4, v5, v6, v7) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitsAutomatic:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 360, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!automaticCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitsAutomatic:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 361, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_BOOLValue(automaticCopy, v8, v9, v10, v11);
  objc_msgSend_setDurationUnitsAutomaticValue_(self, v49, v50, v51, v52, v48);
}

- (void)setDurationUnitSmallest:(id)smallest
{
  smallestCopy = smallest;
  if (objc_msgSend_formatType(self, v4, v5, v6, v7) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitSmallest:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 367, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!smallestCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitSmallest:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 368, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_unsignedIntegerValue(smallestCopy, v8, v9, v10, v11);
  objc_msgSend_setDurationUnitSmallestValue_(self, v49, v50, v51, v52, v48);
}

- (void)setDurationUnitLargest:(id)largest
{
  largestCopy = largest;
  if (objc_msgSend_formatType(self, v4, v5, v6, v7) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitLargest:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 374, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!largestCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationUnitLargest:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 375, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_unsignedIntegerValue(largestCopy, v8, v9, v10, v11);
  objc_msgSend_setDurationUnitLargestValue_(self, v49, v50, v51, v52, v48);
}

- (void)setDurationStyle:(id)style
{
  styleCopy = style;
  if (objc_msgSend_formatType(self, v4, v5, v6, v7) != 268)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationStyle:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v23 = objc_msgSend_format(self, v19, v20, v21, v22);
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v26, v27, v28, v13, v18, 381, 0, "invalid format type %@ should be %@", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (!styleCopy)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHMutableTimeBasedFormat setDurationStyle:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 382, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }

  v48 = objc_msgSend_unsignedIntegerValue(styleCopy, v8, v9, v10, v11);
  objc_msgSend_setDurationStyleValue_(self, v49, v50, v51, v52, v48);
}

- (void)updateCustomFormatKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_customFormat(self, v4, v5, v6, v7);
  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x277D80650]);
    v18 = objc_msgSend_formatType(v9, v14, v15, v16, v17);
    v23 = objc_msgSend_customFormat(v9, v19, v20, v21, v22);
    v28 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v13, v24, v25, v26, v27, v18, keyCopy, v23);
    objc_msgSend_setFormat_(self, v29, v30, v31, v32, v28);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHMutableTimeBasedFormat(TSCHCustomFormatUpdateSupport) updateCustomFormatKey:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 1207, 0, "invalid nil value for '%{public}s'", "customFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  }
}

- (void)updateAfterPasteForDocumentRoot:(id)root pasteboardCustomFormatList:(id)list
{
  rootCopy = root;
  listCopy = list;
  if (objc_msgSend_isCustom(self, v7, v8, v9, v10))
  {
    v16 = objc_msgSend_customFormatListKey(self, v11, v12, v13, v14);
    if (v16)
    {
      v21 = objc_msgSend_customFormatForKey_documentRoot_fromPasteboardCustomFormatList_(TSCHNumberFormat, v15, v17, v18, v19, v16, rootCopy, listCopy);
      if (v21)
      {
        v25 = objc_msgSend_customFormatList(rootCopy, v20, v22, v23, v24);
        v30 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(v25, v26, v27, v28, v29, v21, v16, 1);

        objc_msgSend_updateCustomFormatKey_(self, v31, v32, v33, v34, v30);
      }
    }
  }
}

- (void)remapCustomFormatKeysWithOldToNewKeyMap:(id)map
{
  mapCopy = map;
  if (objc_msgSend_isCustom(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_customFormatListKey(self, v8, v9, v10, v11);
    if (v12)
    {
      objc_opt_class();
      v17 = objc_msgSend_objectForKeyedSubscript_(mapCopy, v13, v14, v15, v16, v12);
      v18 = TSUCheckedDynamicCast();

      if (v18)
      {
        objc_msgSend_updateCustomFormatKey_(self, v19, v20, v21, v22, v18);
      }
    }
  }
}

- (void)upgradePreU2_0CustomFormatsForDocumentRoot:(id)root
{
  rootCopy = root;
  v8 = objc_msgSend_format(self, v4, v5, v6, v7);
  v13 = objc_msgSend_asLegacyCustomFormat(v8, v9, v10, v11, v12);

  if (v13)
  {
    v18 = objc_msgSend_customFormatList(rootCopy, v14, v15, v16, v17);
    v23 = objc_msgSend_legacyID(v13, v19, v20, v21, v22);
    v28 = objc_msgSend_upgradedCustomFormatKeyForLegacyID_(v18, v24, v25, v26, v27, v23);
    v29 = MEMORY[0x277D80650];
    v34 = objc_msgSend_formatType(v13, v30, v31, v32, v33);
    v39 = objc_msgSend_unpopulatedCustomFormatWrapperWithFormatType_customFormatKey_(v29, v35, v36, v37, v38, v34, v28);
    objc_msgSend_setFormat_(self, v40, v41, v42, v43, v39);
  }
}

@end