@interface TSCHTimeBasedFormat
+ (id)defaultDateFormat:(id)a3;
+ (id)defaultDurationFormat:(id)a3;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)timeBasedFormatWithTSKFormat:(id)a3;
- (BOOL)durationUnitsAutomaticValue;
- (BOOL)isCompatibleWithDataFormatter:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSNumber)durationStyle;
- (NSNumber)durationUnitLargest;
- (NSNumber)durationUnitSmallest;
- (NSNumber)durationUnitsAutomatic;
- (NSSet)selectedDateFormats;
- (NSSet)selectedDurationStyles;
- (NSSet)selectedTimeFormats;
- (NSString)dateFormat;
- (NSString)dateTimeFormatString;
- (NSString)timeFormat;
- (TSCHTimeBasedFormat)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCHTimeBasedFormat)initWithTSKFormat:(id)a3;
- (id)chartFormattedStringForValue:(id)a3 locale:(id)a4;
- (id)customFormat;
- (id)customFormatKey;
- (id)dataFormatterForDocumentRoot:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unsigned)durationStyleValue;
- (unsigned)durationUnitLargestValue;
- (unsigned)durationUnitSmallestValue;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHTimeBasedFormat

+ (id)defaultDateFormat:(id)a3
{
  v7 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, v3, v4, v5, 261, a3);
  v12 = objc_msgSend_timeBasedFormatWithTSKFormat_(a1, v8, v9, v10, v11, v7);

  return v12;
}

+ (id)defaultDurationFormat:(id)a3
{
  v7 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, v3, v4, v5, 268, a3);
  v12 = objc_msgSend_timeBasedFormatWithTSKFormat_(a1, v8, v9, v10, v11, v7);

  return v12;
}

+ (id)timeBasedFormatWithTSKFormat:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v10 = objc_msgSend_initWithTSKFormat_(v5, v6, v7, v8, v9, v4);

  return v10;
}

- (TSCHTimeBasedFormat)initWithTSKFormat:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = TSCHTimeBasedFormat;
  v5 = [(TSCHTimeBasedFormat *)&v43 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_formatType(v4, v7, v8, v9, v10);
    if ((objc_msgSend_supportsFormatType_(v6, v12, v13, v14, v15, v11) & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHTimeBasedFormat initWithTSKFormat:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
      objc_msgSend_formatType(v4, v27, v28, v29, v30);
      v31 = NSStringForTSUFormatType();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v32, v33, v34, v35, v21, v26, 126, 0, "Unexpected format type %@", v31);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }

    v40 = objc_msgSend_copy(v4, v16, v17, v18, v19);
    format = v5->_format;
    v5->_format = v40;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSCHMutableTimeBasedFormat alloc];
  v9 = objc_msgSend_format(self, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithTSKFormat_(v4, v10, v11, v12, v13, v9);

  return v14;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_format(self, a2, v2, v3, v4);
  v10 = objc_msgSend_hash(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUSpecificCast();
  if (v6 || (objc_opt_class(), TSUSpecificCast(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = objc_msgSend_format(self, v5, v7, v8, v9);
    v15 = objc_msgSend_asCustomFormatWrapper(v10, v11, v12, v13, v14);

    v20 = objc_msgSend_format(v6, v16, v17, v18, v19);
    v25 = objc_msgSend_asCustomFormatWrapper(v20, v21, v22, v23, v24);

    if (v15 && v25)
    {
      isEqual = objc_msgSend_referencesSameCustomFormat_(v15, v26, v27, v28, v29, v25);
    }

    else
    {
      v31 = objc_msgSend_format(self, v26, v27, v28, v29);
      v36 = objc_msgSend_format(v6, v32, v33, v34, v35);
      v37 = v31;
      v39 = v36;
      if (v37 | v39)
      {
        isEqual = objc_msgSend_isEqual_(v37, v38, v40, v41, v42, v39);
      }

      else
      {
        isEqual = 1;
      }
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (NSString)dateTimeFormatString
{
  v5 = objc_msgSend_dateTimeFormat(self, a2, v2, v3, v4);
  v10 = objc_msgSend_formatString(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)durationUnitsAutomaticValue
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationUnitsAutomaticValue]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 187, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_durationFormat(self, v6, v7, v8, v9);
  v36 = objc_msgSend_useAutomaticUnits(v31, v32, v33, v34, v35);

  return v36;
}

- (unsigned)durationUnitSmallestValue
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationUnitSmallestValue]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 192, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_durationFormat(self, v6, v7, v8, v9);
  v36 = objc_msgSend_durationUnitSmallest(v31, v32, v33, v34, v35);

  return v36;
}

- (unsigned)durationUnitLargestValue
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationUnitLargestValue]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 197, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_durationFormat(self, v6, v7, v8, v9);
  v36 = objc_msgSend_durationUnitLargest(v31, v32, v33, v34, v35);

  return v36;
}

- (unsigned)durationStyleValue
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationStyleValue]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 202, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_durationFormat(self, v6, v7, v8, v9);
  v36 = objc_msgSend_durationStyle(v31, v32, v33, v34, v35);

  return v36;
}

- (NSSet)selectedDateFormats
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_dateFormat(self, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithObject_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (NSSet)selectedTimeFormats
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_timeFormat(self, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithObject_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (NSString)dateFormat
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 261)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat dateFormat]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 221, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_dateTimeFormatString(self, v6, v7, v8, v9);
  v36 = objc_msgSend_datePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v32, v33, v34, v35, v31);

  return v36;
}

- (NSString)timeFormat
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 261)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat timeFormat]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 227, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_dateTimeFormatString(self, v6, v7, v8, v9);
  v36 = objc_msgSend_timePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v32, v33, v34, v35, v31);

  return v36;
}

- (NSNumber)durationUnitsAutomatic
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationUnitsAutomatic]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 235, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = MEMORY[0x277CCABB0];
  v33 = objc_msgSend_durationUnitsAutomaticValue(self, v6, v7, v8, v9);

  return objc_msgSend_numberWithBool_(v31, v32, v34, v35, v36, v33);
}

- (NSNumber)durationUnitSmallest
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationUnitSmallest]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 240, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = MEMORY[0x277CCABB0];
  objc_msgSend_durationUnitSmallestValue(self, v6, v7, v8, v9);

  return MEMORY[0x2821F9670](v31, sel_numberWithUnsignedChar_, v32, v33, v34);
}

- (NSNumber)durationUnitLargest
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationUnitLargest]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 245, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = MEMORY[0x277CCABB0];
  objc_msgSend_durationUnitLargestValue(self, v6, v7, v8, v9);

  return MEMORY[0x2821F9670](v31, sel_numberWithUnsignedChar_, v32, v33, v34);
}

- (NSNumber)durationStyle
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 268)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHTimeBasedFormat durationStyle]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTimeBasedFormat.mm");
    v21 = objc_msgSend_format(self, v17, v18, v19, v20);
    v22 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v23, v24, v25, v26, v11, v16, 250, 0, "invalid format type %@ should be %@", v21, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = MEMORY[0x277CCABB0];
  objc_msgSend_durationStyleValue(self, v6, v7, v8, v9);

  return MEMORY[0x2821F9670](v31, sel_numberWithUnsignedChar_, v32, v33, v34);
}

- (NSSet)selectedDurationStyles
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_durationStyle(self, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithObject_(v5, v7, v8, v9, v10, v6);

  return v11;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v9, v10, v11, a3, v6);

  return v12;
}

- (TSCHTimeBasedFormat)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v8 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], a2, v4, v5, v6, a3, a4);
  v13 = objc_msgSend_initWithTSKFormat_(self, v9, v10, v11, v12, v8);

  return v13;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v8 = objc_msgSend_format(self, a2, v4, v5, v6, a3, a4);
  sub_2762A7F8C(v8, a3);
}

- (id)chartFormattedStringForValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHTimeBasedFormat(TSCHDataFormatterAdapter) chartFormattedStringForValue:locale:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDataFormatter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 24, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    v38 = &stru_288528678;
    goto LABEL_16;
  }

  if (objc_msgSend_isDate(self, v7, v9, v10, v11))
  {
    v16 = objc_msgSend_NSDateConvertedFromGridValue_(TSCHChartGridValue, v12, v13, v14, v15, v6);
    v21 = objc_msgSend_dateTimeFormatString(self, v17, v18, v19, v20);
    v22 = TSUDateFormatterStringFromDateWithFormat();

LABEL_13:
    goto LABEL_14;
  }

  if (!objc_msgSend_isDuration(self, v12, v13, v14, v15))
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHTimeBasedFormat(TSCHDataFormatterAdapter) chartFormattedStringForValue:locale:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDataFormatter.m");
    objc_msgSend_formatType(self, v60, v61, v62, v63);
    v64 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v65, v66, v67, v68, v54, v59, 47, 0, "Unexpected format type %@", v64);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    v22 = &stru_288528678;
LABEL_14:
    v52 = v22;
    v38 = v52;
    goto LABEL_15;
  }

  objc_msgSend_doubleValue(v6, v39, v40, v41, v42);
  v44 = v43;
  if (!objc_msgSend_durationUnitsAutomaticValue(self, v45, v43, v46, v47))
  {
    objc_msgSend_durationUnits(self, v48, v49, v50, v51);
LABEL_12:
    objc_msgSend_durationStyleValue(self, v73, v74, v75, v76);
    v16 = TSUDurationFormatterFormatFromDurationUnits();
    v22 = TSUDurationUnroundedFormatterStringFromTimeIntervalWithFormat();
    goto LABEL_13;
  }

  if (v44 != 0.0 && vabdd_f64(0.0, v44) >= fabs(v44 * 1.0e-10))
  {
    TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
    TSUDurationFormatterMaxDurationUnitInUnits();
    TSUDurationFormatterMinDurationUnitInUnits();
    goto LABEL_12;
  }

  v38 = @"0";
  v52 = &stru_288528678;
LABEL_15:

LABEL_16:

  return v38;
}

- (BOOL)isCompatibleWithDataFormatter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (isDuration = objc_msgSend_isDuration(self, v6, v7, v8, v9), isDuration == objc_msgSend_isDuration(v5, v11, v12, v13, v14)))
  {
    isDate = objc_msgSend_isDate(self, v15, v16, v17, v18);
    v19 = isDate ^ objc_msgSend_isDate(v5, v21, v22, v23, v24) ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (id)dataFormatterForDocumentRoot:(id)a3
{
  v4 = a3;
  v5 = self;
  if (objc_msgSend_isCustom(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_customFormatListKey(v5, v10, v11, v12, v13);
    v19 = objc_msgSend_customFormatList(v4, v15, v16, v17, v18);
    v24 = objc_msgSend_customFormatForKey_(v19, v20, v21, v22, v23, v14);
    v29 = objc_msgSend_formatType(v24, v25, v26, v27, v28);
    v34 = objc_msgSend_dataFormatterWithCustomFormat_customFormatListKey_formatType_(TSCHCustomDataFormatter, v30, v31, v32, v33, v24, v14, v29);

    v5 = v34;
  }

  return v5;
}

- (id)customFormat
{
  v6 = objc_msgSend_format(self, a2, v2, v3, v4);
  v11 = objc_msgSend_asCustomFormatWrapper(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_format(self, v12, v13, v14, v15);
  v21 = objc_msgSend_asLegacyCustomFormat(v16, v17, v18, v19, v20);

  if (((v11 | v21) == 0) == objc_msgSend_isCustom(self, v22, v23, v24, v25))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHTimeBasedFormat(TSCHCustomFormatSupport) customFormat]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    isCustom = objc_msgSend_isCustom(self, v37, v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 1184, 0, "Custom format type and object mismatch: isCustom %ld, object %@, legacy %@", isCustom, v11, v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  if (objc_msgSend_isCustom(self, v26, v27, v28, v29))
  {
    v50 = v11;
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

- (id)customFormatKey
{
  v5 = objc_msgSend_customFormat(self, a2, v2, v3, v4);
  v10 = objc_msgSend_customFormatKey(v5, v6, v7, v8, v9);

  return v10;
}

@end