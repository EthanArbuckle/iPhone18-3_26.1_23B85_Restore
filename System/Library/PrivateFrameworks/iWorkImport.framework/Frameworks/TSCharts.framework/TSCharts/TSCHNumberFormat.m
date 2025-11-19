@interface TSCHNumberFormat
+ (TSCHNumberFormat)numberFormatWithFormatType:(unsigned int)a3 decimalPlaces:(unsigned int)a4 showThousandsSeparator:(BOOL)a5;
+ (TSCHNumberFormat)numberFormatWithTSKFormat:(id)a3 prefixString:(id)a4 suffixString:(id)a5;
+ (id)customFormatForKey:(id)a3 documentRoot:(id)a4 fromPasteboardCustomFormatList:(id)a5;
+ (id)defaultDecimalNumberFormat;
+ (id)defaultDecimalNumberFormatWithPrefixString:(id)a3 suffixString:(id)a4;
+ (id)defaultNumberFormatWithFormatType:(unsigned int)a3 locale:(id)a4;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (int)labelFormatTypeFromTSUFormatType:(unsigned int)a3;
+ (unsigned)TSUFormatTypeFromLabelFormatType:(int)a3;
- (BOOL)baseUseMinusSign;
- (BOOL)isCompatibleWithDataFormatter:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)showThousandsSeparator;
- (BOOL)supportsNumericProperties;
- (BOOL)useAccountingStyle;
- (NSString)currencyCode;
- (TSCHNumberFormat)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSCHNumberFormat)initWithNullableTSKFormat:(id)a3 prefixString:(id)a4 suffixString:(id)a5;
- (TSCHNumberFormat)initWithTSKFormat:(id)a3 prefixString:(id)a4 suffixString:(id)a5;
- (char)fractionAccuracy;
- (id)chartFormattedInspectorStringForValue:(id)a3 locale:(id)a4;
- (id)chartFormattedStringForValue:(id)a3 locale:(id)a4;
- (id)convertToSupportedClientFormatObjectWithLocale:(id)a3;
- (id)customFormat;
- (id)customFormatKey;
- (id)dataFormatterForDocumentRoot:(id)a3 pasteboardCustomFormatList:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)numberFormatByResettingToDefaultNegativeStyleIfAvailable;
- (id)p_formatTypeDescription;
- (id)p_formattedBodyStringForDouble:(double)a3 locale:(id)a4;
- (id)upgradedNumberFormatFromPreUFFOrUnity1_0;
- (int)valueType;
- (unint64_t)hash;
- (unsigned)base;
- (unsigned)basePlaces;
- (unsigned)decimalPlaces;
- (unsigned)decimalPlacesForNumberFormatter;
- (unsigned)negativeStyle;
- (unsigned)negativeStyleForNumberFormatter;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSCHNumberFormat

+ (id)defaultDecimalNumberFormatWithPrefixString:(id)a3 suffixString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_defaultDecimalNumberFormat(TSCHMutableNumberFormat, v7, v8, v9, v10);
  objc_msgSend_setPrefixString_(v11, v12, v13, v14, v15, v5);
  objc_msgSend_setSuffixString_(v11, v16, v17, v18, v19, v6);
  v24 = objc_msgSend_copy(v11, v20, v21, v22, v23);

  return v24;
}

- (id)upgradedNumberFormatFromPreUFFOrUnity1_0
{
  v2 = self;
  if (objc_msgSend_isCustom(v2, v3, v4, v5, v6))
  {
    v11 = objc_msgSend_format(v2, v7, v8, v9, v10);
    v16 = objc_msgSend_asLegacyCustomFormat(v11, v12, v13, v14, v15);
    if (objc_msgSend_legacyID(v16, v17, v18, v19, v20) == -1)
    {
    }

    else
    {
      v25 = objc_msgSend_format(v2, v21, v22, v23, v24);
      v30 = objc_msgSend_asCustomFormatWrapper(v25, v26, v27, v28, v29);
      v35 = objc_msgSend_customFormatKey(v30, v31, v32, v33, v34);
      isEqual = objc_msgSend_isEqual_(v35, v36, v37, v38, v39, @"66EB3F49-371A-4378-BDB5-5AE724B24066");

      if ((isEqual & 1) == 0)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "[TSCHNumberFormat(TSCHArchivingUtilities) upgradedNumberFormatFromPreUFFOrUnity1_0]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 577, 0, "Invalid custom format ID, expect from NumberFormat version 1.0");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
      }
    }

    v60 = objc_msgSend_prefixString(v2, v41, v42, v43, v44);
    v65 = objc_msgSend_suffixString(v2, v61, v62, v63, v64);
    v70 = objc_msgSend_defaultDecimalNumberFormatWithPrefixString_suffixString_(TSCHNumberFormat, v66, v67, v68, v69, v60, v65);

    v2 = v70;
  }

  return v2;
}

+ (id)customFormatForKey:(id)a3 documentRoot:(id)a4 fromPasteboardCustomFormatList:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = objc_msgSend_customFormatForKey_(v9, v10, v11, v12, v13, v7);
  if (!v15)
  {
    v19 = objc_msgSend_customFormatList(v8, v14, v16, v17, v18);
    v24 = objc_msgSend_customFormatForKey_(v19, v20, v21, v22, v23, v7);

    if (!v24)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "+[TSCHNumberFormat customFormatForKey:documentRoot:fromPasteboardCustomFormatList:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      v40 = objc_msgSend_customFormatList(v8, v36, v37, v38, v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v41, v42, v43, v44, v30, v35, 321, 0, "Custom format %@ not found in paste list %@ document list %@", v7, v9, v40);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }
  }

  return v15;
}

+ (int)labelFormatTypeFromTSUFormatType:(unsigned int)a3
{
  v6 = *&a3;
  if (a3 - 256 < 0x13 && ((0x5506Fu >> a3) & 1) != 0)
  {
    return dword_2764D6D44[a3 - 256];
  }

  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHNumberFormat labelFormatTypeFromTSUFormatType:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 426, 0, "Unsupported number format type: %d", v6);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  return 2;
}

+ (id)defaultDecimalNumberFormat
{
  v7 = objc_msgSend_defaultDecimalPlaces(a1, a2, v2, v3, v4);

  return objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(a1, v6, v8, v9, v10, 256, v7, 1);
}

+ (id)defaultNumberFormatWithFormatType:(unsigned int)a3 locale:(id)a4
{
  v8 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, v4, v5, v6, *&a3, a4);
  v13 = objc_msgSend_numberFormatWithTSKFormat_prefixString_suffixString_(a1, v9, v10, v11, v12, v8, 0, 0);

  return v13;
}

+ (TSCHNumberFormat)numberFormatWithFormatType:(unsigned int)a3 decimalPlaces:(unsigned int)a4 showThousandsSeparator:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = *&a3;
  v9 = [TSCHMutableNumberFormat alloc];
  v14 = objc_msgSend_initWithNullableTSKFormat_prefixString_suffixString_(v9, v10, v11, v12, v13, 0, 0, 0);
  objc_msgSend_setFormatType_(v14, v15, v16, v17, v18, v7);
  if (objc_msgSend_supportsNumericProperties(v14, v19, v20, v21, v22))
  {
    objc_msgSend_setDecimalPlaces_(v14, v23, v24, v25, v26, v6);
    objc_msgSend_setShowThousandsSeparator_(v14, v27, v28, v29, v30, v5);
  }

  else if (objc_msgSend_isFraction(v14, v23, v24, v25, v26))
  {
    v39 = objc_msgSend_defaultFractionAccuracy(a1, v35, v36, v37, v38);
    objc_msgSend_setFractionAccuracy_(v14, v40, v41, v42, v43, v39);
  }

  else
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "+[TSCHNumberFormat numberFormatWithFormatType:decimalPlaces:showThousandsSeparator:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    v51 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v52, v53, v54, v55, v45, v50, 453, 0, "unsupported type %@", v51);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
  }

  v60 = objc_msgSend_format(v14, v31, v32, v33, v34);
  v65 = objc_msgSend_prefixString(v14, v61, v62, v63, v64);
  v70 = objc_msgSend_suffixString(v14, v66, v67, v68, v69);
  v75 = objc_msgSend_numberFormatWithTSKFormat_prefixString_suffixString_(a1, v71, v72, v73, v74, v60, v65, v70);

  return v75;
}

+ (TSCHNumberFormat)numberFormatWithTSKFormat:(id)a3 prefixString:(id)a4 suffixString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 alloc];
  v16 = objc_msgSend_initWithTSKFormat_prefixString_suffixString_(v11, v12, v13, v14, v15, v8, v9, v10);

  return v16;
}

- (TSCHNumberFormat)initWithNullableTSKFormat:(id)a3 prefixString:(id)a4 suffixString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v64.receiver = self;
  v64.super_class = TSCHNumberFormat;
  v12 = [(TSCHNumberFormat *)&v64 init];
  if (v12)
  {
    if (v8)
    {
      v16 = objc_msgSend_formatType(v8, v11, v13, v14, v15);
      if ((v16 - 261) <= 0xB && ((1 << (v16 - 5)) & 0x881) != 0)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHNumberFormat initWithNullableTSKFormat:prefixString:suffixString:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 468, 0, "Attempted to use TSCHNumberFormat for a date/duration format");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
        v32 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v16 = 0;
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_2762F56F4;
    v62[3] = &unk_27A6B9688;
    v63 = v16;
    v33 = objc_msgSend_formatByUpdatingIfTSCHNumericFormatWithBlock_(v8, v11, v13, v14, v15, v62);
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = sub_2762F5720;
    v60 = &unk_27A6B96B0;
    v32 = v12;
    v61 = v32;
    v12 = objc_msgSend_formatByUpdatingIfCurrencyFormatWithBlock_(v33, v34, v35, v36, v37, &v57);

    v42 = objc_msgSend_copy(v12, v38, v39, v40, v41, v57, v58, v59, v60);
    format = v32->_format;
    v32->_format = v42;

    v48 = objc_msgSend_copy(v9, v44, v45, v46, v47);
    prefixString = v32->_prefixString;
    v32->_prefixString = v48;

    v54 = objc_msgSend_copy(v10, v50, v51, v52, v53);
    suffixString = v32->_suffixString;
    v32->_suffixString = v54;

    goto LABEL_9;
  }

  v32 = 0;
LABEL_10:

  return v32;
}

- (TSCHNumberFormat)initWithTSKFormat:(id)a3 prefixString:(id)a4 suffixString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (!v8)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHNumberFormat initWithTSKFormat:prefixString:suffixString:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 494, 0, "invalid nil value for '%{public}s'", "format");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_initWithNullableTSKFormat_prefixString_suffixString_(self, v10, v12, v13, v14, v8, v9, v11);

  return v30;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSCHMutableNumberFormat alloc];
  suffixString = self->_suffixString;
  format = self->_format;
  prefixString = self->_prefixString;

  return objc_msgSend_initWithTSKFormat_prefixString_suffixString_(v4, v5, v6, v7, v8, format, prefixString, suffixString);
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_format, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(self->_prefixString, v7, v8, v9, v10) + v6;
  return v11 + objc_msgSend_hash(self->_suffixString, v12, v13, v14, v15);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUSpecificCast();
  if (!v6)
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (!v6)
    {
      v56 = 0;
      goto LABEL_17;
    }
  }

  v10 = objc_msgSend_format(self, v5, v7, v8, v9);
  v15 = objc_msgSend_asCustomFormatWrapper(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_format(v6, v16, v17, v18, v19);
  v25 = objc_msgSend_asCustomFormatWrapper(v20, v21, v22, v23, v24);

  if (v15 && v25)
  {
    if (!objc_msgSend_referencesSameCustomFormat_(v15, v26, v27, v28, v29, v25))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v30 = v6[3];
    v31 = self->_format;
    v32 = v30;
    if (v31 | v32)
    {
      v37 = v32;
      isEqual = objc_msgSend_isEqual_(v31, v33, v34, v35, v36, v32);

      if ((isEqual & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v39 = v6[1];
  v40 = self->_prefixString;
  v41 = v39;
  if (!(v40 | v41) || (v46 = v41, v47 = objc_msgSend_isEqual_(v40, v42, v43, v44, v45, v41), v46, v40, v47))
  {
    suffixString = self->_suffixString;
    v49 = v6[2];
    v50 = suffixString;
    v52 = v49;
    if (v50 | v52)
    {
      v56 = objc_msgSend_isEqual_(v50, v51, v53, v54, v55, v52);
    }

    else
    {
      v56 = 1;
    }

    goto LABEL_16;
  }

LABEL_13:
  v56 = 0;
LABEL_16:

LABEL_17:
  return v56;
}

- (unsigned)decimalPlacesForNumberFormatter
{
  objc_msgSend_decimalPlaces(self, a2, v2, v3, v4);
  result = TSKFormatUtilitiesValidatedDecimalPlaces();
  if (result == 253)
  {
    return 252;
  }

  return result;
}

- (unsigned)negativeStyleForNumberFormatter
{
  v6 = objc_msgSend_negativeStyle(self, a2, v2, v3, v4);
  if ((objc_msgSend_isScientific(self, v7, v8, v9, v10) & (v6 > 1u)) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (id)numberFormatByResettingToDefaultNegativeStyleIfAvailable
{
  v2 = self;
  v3 = objc_opt_class();
  v8 = objc_msgSend_defaultNegativeNumberStyle(v3, v4, v5, v6, v7);
  if (objc_msgSend_supportsNumericProperties(v2, v9, v10, v11, v12) && objc_msgSend_negativeStyle(v2, v13, v14, v15, v16) == 1)
  {
    v21 = objc_msgSend_mutableCopy(v2, v17, v18, v19, v20);
    objc_msgSend_setNegativeStyle_(v21, v22, v23, v24, v25, v8);
    v30 = objc_msgSend_copy(v21, v26, v27, v28, v29);

    v2 = v30;
  }

  return v2;
}

- (BOOL)supportsNumericProperties
{
  v6 = objc_msgSend_asTSCHNumericFormat(self->_format, a2, v2, v3, v4);

  v7 = objc_opt_class();
  v12 = objc_msgSend_formatType(self, v8, v9, v10, v11);
  if ((v6 != 0) != objc_msgSend_supportsNumericPropertiesForFormatType_(v7, v13, v14, v15, v16, v12))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHNumberFormat supportsNumericProperties]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 561, 0, "Numerice properties support mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  return v6 != 0;
}

- (id)p_formatTypeDescription
{
  objc_msgSend_formatType(self, a2, v2, v3, v4);

  return NSStringForTSUFormatType();
}

- (int)valueType
{
  v5 = objc_msgSend_formatType(self, a2, v2, v3, v4);

  return MEMORY[0x2821EC138](v5);
}

- (unsigned)decimalPlaces
{
  v6 = objc_msgSend_asCurrencyFormat(self->_format, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_decimalPlaces(v6, v7, v8, v9, v10);
  }

  else
  {
    v13 = objc_msgSend_asNumberFormat(self->_format, v7, v8, v9, v10);
    v18 = v13;
    if (!v13)
    {
      return 253;
    }

    v12 = objc_msgSend_decimalPlaces(v13, v14, v15, v16, v17);
    v11 = v18;
  }

  return v12;
}

- (NSString)currencyCode
{
  v5 = objc_msgSend_asCurrencyFormat(self->_format, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_currencyCode(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = objc_opt_class();
    objc_msgSend_defaultCurrencyCode(v11, v12, v13, v14, v15);
  }
  v16 = ;

  return v16;
}

- (BOOL)useAccountingStyle
{
  v5 = objc_msgSend_asCurrencyFormat(self->_format, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_accountingStyle(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)negativeStyle
{
  v6 = objc_msgSend_asCurrencyFormat(self->_format, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_negativeStyle(v6, v7, v8, v9, v10);

    return v12;
  }

  v13 = objc_msgSend_asNumberFormat(self->_format, v7, v8, v9, v10);
  v18 = v13;
  if (v13)
  {
    v12 = objc_msgSend_negativeStyle(v13, v14, v15, v16, v17);

    return v12;
  }

  v20 = objc_opt_class();

  return objc_msgSend_defaultNegativeNumberStyle(v20, v21, v22, v23, v24);
}

- (BOOL)showThousandsSeparator
{
  v6 = objc_msgSend_asCurrencyFormat(self->_format, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_showThousandsSeparator(v6, v7, v8, v9, v10);

    return v12;
  }

  v13 = objc_msgSend_asNumberFormat(self->_format, v7, v8, v9, v10);
  v18 = v13;
  if (v13)
  {
    v12 = objc_msgSend_showThousandsSeparator(v13, v14, v15, v16, v17);

    return v12;
  }

  v20 = objc_opt_class();

  return objc_msgSend_defaultShowThousandsSeparator(v20, v21, v22, v23, v24);
}

- (char)fractionAccuracy
{
  v5 = objc_msgSend_asFractionFormat(self->_format, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_fractionAccuracy(v5, v6, v7, v8, v9);
  }

  else
  {
    v12 = objc_opt_class();
    v11 = objc_msgSend_defaultFractionAccuracy(v12, v13, v14, v15, v16);
  }

  v17 = v11;

  return v17;
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
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHNumberFormat customFormat]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    isCustom = objc_msgSend_isCustom(self, v37, v38, v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v43, v44, v45, v31, v36, 669, 0, "Custom format type and object mismatch: isCustom %ld, object %@, legacy %@", isCustom, v11, v21);

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

- (unsigned)base
{
  if ((objc_msgSend_isBase(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHNumberFormat base]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 679, 0, "only supported for base");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_asBaseFormat(self->_format, v6, v7, v8, v9);
  v30 = v25;
  if (v25)
  {
    v31 = objc_msgSend_base(v25, v26, v27, v28, v29);
  }

  else
  {
    v32 = objc_opt_class();
    v31 = objc_msgSend_defaultBase(v32, v33, v34, v35, v36);
  }

  v37 = v31;

  return v37;
}

- (unsigned)basePlaces
{
  if ((objc_msgSend_isBase(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHNumberFormat basePlaces]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 688, 0, "only supported for base");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_asBaseFormat(self->_format, v6, v7, v8, v9);
  v30 = v25;
  if (v25)
  {
    v31 = objc_msgSend_basePlaces(v25, v26, v27, v28, v29);
  }

  else
  {
    v32 = objc_opt_class();
    v31 = objc_msgSend_defaultBasePlaces(v32, v33, v34, v35, v36);
  }

  v37 = v31;

  return v37;
}

- (BOOL)baseUseMinusSign
{
  if ((objc_msgSend_isBase(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHNumberFormat baseUseMinusSign]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 697, 0, "only supported for base");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_asBaseFormat(self->_format, v6, v7, v8, v9);
  v30 = v25;
  if (v25)
  {
    v31 = objc_msgSend_baseUseMinusSign(v25, v26, v27, v28, v29);
  }

  else
  {
    v32 = objc_opt_class();
    v31 = objc_msgSend_defaultBaseUseMinusSign(v32, v33, v34, v35, v36);
  }

  v37 = v31;

  return v37;
}

+ (unsigned)TSUFormatTypeFromLabelFormatType:(int)a3
{
  v6 = *&a3;
  v7 = a3 - 2;
  if (a3 - 2) < 9 && ((0x1EFu >> v7))
  {
    return dword_2764D6D90[v7];
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHNumberFormat TSUFormatTypeFromLabelFormatType:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 737, 0, "Unsupported number format type: %d", v6);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return 256;
}

- (id)customFormatKey
{
  v5 = objc_msgSend_customFormat(self, a2, v2, v3, v4);
  v10 = objc_msgSend_customFormatKey(v5, v6, v7, v8, v9);

  return v10;
}

- (id)dataFormatterForDocumentRoot:(id)a3 pasteboardCustomFormatList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  if (objc_msgSend_isCustom(v8, v9, v10, v11, v12))
  {
    if (!v6)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHNumberFormat dataFormatterForDocumentRoot:pasteboardCustomFormatList:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 755, 0, "invalid nil value for '%{public}s'", "documentRoot");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v33 = objc_msgSend_customFormatListKey(v8, v13, v14, v15, v16);
    if (v33)
    {
      v37 = objc_msgSend_customFormatList(v6, v32, v34, v35, v36);
      v43 = objc_msgSend_customFormatForKey_(v37, v38, v39, v40, v41, v33);
      if (!v43)
      {
        v43 = objc_msgSend_customFormatForKey_(v7, v42, v44, v45, v46, v33);
      }

      if (objc_msgSend_formatType(v43, v42, v44, v45, v46) != 274 && objc_msgSend_formatType(v43, v47, v48, v49, v50) != 270)
      {
        v51 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "[TSCHNumberFormat dataFormatterForDocumentRoot:pasteboardCustomFormatList:]");
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
        objc_msgSend_formatType(v43, v58, v59, v60, v61);
        v62 = NSStringForTSUFormatType();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v63, v64, v65, v66, v52, v57, 764, 0, "TSCHNumberFormat custom format type not supported: %{public}@", v62);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
      }

      v71 = objc_msgSend_formatType(v43, v47, v48, v49, v50);
      v76 = objc_msgSend_dataFormatterWithCustomFormat_customFormatListKey_formatType_prefixString_suffixString_(TSCHPrefixSuffixCustomDataFormatter, v72, v73, v74, v75, v43, v33, v71, v8->_prefixString, v8->_suffixString);

      v8 = v76;
    }
  }

  return v8;
}

- (id)p_formattedBodyStringForDouble:(double)a3 locale:(id)a4
{
  v6 = a4;
  if (!objc_msgSend_isCustom(self, v7, v8, v9, v10))
  {
    if (objc_msgSend_isDate(self, v11, v12, v13, v14))
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCHNumberFormat p_formattedBodyStringForDouble:locale:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 788, 0, "This is a TSCHNumberFormat, which really shouldn't format dates");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
      v57 = objc_msgSend_dateValueWithDouble_(TSCHChartGridValue, v54, a3, v55, v56);
      v62 = objc_msgSend_NSDateFromGridValue_(TSCHChartGridValue, v58, v59, v60, v61, v57);
      v34 = objc_msgSend_stringFromDate_locale_(self->_format, v63, v64, v65, v66, v62, v6);
    }

    else
    {
      if (objc_msgSend_isDuration(self, v35, v36, v37, v38))
      {
        v71 = MEMORY[0x277D81150];
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "[TSCHNumberFormat p_formattedBodyStringForDouble:locale:]");
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v78, v79, v80, v81, v72, v77, 793, 0, "This is a TSCHNumberFormat, which really shouldn't format durations");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
        v34 = objc_msgSend_stringFromDurationTimeInterval_locale_(self->_format, v86, a3, v87, v88, v6);
        goto LABEL_9;
      }

      format = self->_format;
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = sub_2762F6EF8;
      v106[3] = &unk_27A6B96D8;
      v106[4] = self;
      v57 = objc_msgSend_formatByUpdatingIfTSCHNumericFormatWithBlock_(format, v67, COERCE_DOUBLE(3221225472), v69, v70, v106);
      v34 = objc_msgSend_stringFromDouble_locale_(v57, v90, a3, v91, v92, v6);
    }

    goto LABEL_9;
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHNumberFormat p_formattedBodyStringForDouble:locale:]");
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 786, 0, "Shouldn't get here with a cusom format. Did we forget to call dataFormatterForDocumentRoot:?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  v34 = &stru_288528678;
LABEL_9:
  objc_msgSend_formatType(self, v30, v31, v32, v33);
  v94 = TSWPGetDefaultParagraphDirectionForFormattedText();
  if (v94 != -1)
  {
    v98 = objc_msgSend_languageCode(v6, v93, v95, v96, v97);
    v99 = TSUHasBiDiLanguage();

    if ((v94 == 1) != v99)
    {
      if (v94 == 1)
      {
        objc_msgSend_stringByAppendingString_(@"\u200F", v100, v101, v102, v103, v34);
      }

      else
      {
        objc_msgSend_stringByAppendingString_(@"\u200E", v100, v101, v102, v103, v34);
      }
      v104 = ;

      v34 = v104;
    }
  }

  return v34;
}

- (id)chartFormattedStringForValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isCustom(self, v8, v9, v10, v11))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHNumberFormat chartFormattedStringForValue:locale:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 818, 0, "Use [TSCHNumberFormat dataFormatterForDocumentRoot:] to obtain correct formatter for custom format");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (v6)
  {
    objc_msgSend_doubleValue(v6, v12, v13, v14, v15);
    v36 = objc_msgSend_p_formattedBodyStringForDouble_locale_(self, v31, v32, v33, v34, v7);
    if (!v36)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v37, v38, v39, "[TSCHNumberFormat chartFormattedStringForValue:locale:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 828, 0, "invalid nil value for '%{public}s'", "bodyString");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    v55 = objc_msgSend_string(MEMORY[0x277CCAB68], v35, v37, v38, v39);
    v60 = v55;
    if (self->_prefixString)
    {
      objc_msgSend_appendString_(v55, v56, v57, v58, v59);
    }

    if (v36)
    {
      objc_msgSend_appendString_(v60, v56, v57, v58, v59, v36);
    }

    if (self->_suffixString)
    {
      objc_msgSend_appendString_(v60, v56, v57, v58, v59);
    }

    v61 = objc_msgSend_copy(v60, v56, v57, v58, v59);
  }

  else
  {
    v61 = &stru_288528678;
  }

  return v61;
}

- (id)chartFormattedInspectorStringForValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHNumberFormat chartFormattedInspectorStringForValue:locale:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 844, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (objc_msgSend_isCustom(self, v7, v9, v10, v11))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCHNumberFormat chartFormattedInspectorStringForValue:locale:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 845, 0, "Use [TSCHNumberFormat dataFormatterForDocumentRoot:] to obtain correct formatter for custom format");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  objc_msgSend_doubleValue(v6, v27, v28, v29, v30);
  v50 = objc_msgSend_p_formattedBodyStringForDouble_locale_(self, v46, v47, v48, v49, v8);

  return v50;
}

- (BOOL)isCompatibleWithDataFormatter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {
    v10 = objc_msgSend_formatType(self, v5, v7, v8, v9);
    v15 = v10 == objc_msgSend_formatType(v6, v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)convertToSupportedClientFormatObjectWithLocale:(id)a3
{
  if (objc_msgSend_isCustom(self, a2, v3, v4, v5, a3))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHNumberFormat convertToSupportedClientFormatObjectWithLocale:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 864, 0, "Should not be called on custom formats.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  return self;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v9, v10, v11, a3, v6);

  return v12;
}

- (TSCHNumberFormat)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v66.receiver = self;
  v66.super_class = TSCHNumberFormat;
  v6 = [(TSCHNumberFormat *)&v66 init:a3];
  if (v6)
  {
    v10 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v5, v7, v8, v9, a3);
    format = v6->_format;
    v6->_format = v10;

    if (!v6->_format)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHNumberFormat initWithArchive:unarchiver:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 882, 0, "invalid nil value for '%{public}s'", "_format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    if (google::protobuf::internal::ExtensionSet::Has((a3 + 16)))
    {
      v31 = MEMORY[0x277CCACA8];
      String = google::protobuf::internal::ExtensionSet::GetString();
      v37 = objc_msgSend_tsp_stringWithProtobufString_(v31, v33, v34, v35, v36, String);
      if (objc_msgSend_length(v37, v38, v39, v40, v41))
      {
        v46 = objc_msgSend_copy(v37, v42, v43, v44, v45);
        prefixString = v6->_prefixString;
        v6->_prefixString = v46;
      }
    }

    if (google::protobuf::internal::ExtensionSet::Has((a3 + 16)))
    {
      v48 = MEMORY[0x277CCACA8];
      v49 = google::protobuf::internal::ExtensionSet::GetString();
      v54 = objc_msgSend_tsp_stringWithProtobufString_(v48, v50, v51, v52, v53, v49);
      if (objc_msgSend_length(v54, v55, v56, v57, v58))
      {
        v63 = objc_msgSend_copy(v54, v59, v60, v61, v62);
        suffixString = v6->_suffixString;
        v6->_suffixString = v63;
      }
    }
  }

  return v6;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  sub_2762A7F8C(self->_format, a3);
  if (objc_msgSend_length(self->_prefixString, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_tsp_protobufString(self->_prefixString, v10, *&v11, v12, v13);
    sub_2762F3BA4(__p, v14);
    v15 = TSCH::ChartFormatStructExtensions::prefix;
    if (SHIBYTE(v28) < 0)
    {
      sub_2762FA4FC(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v30 = v28;
    }

    v16 = google::protobuf::internal::ExtensionSet::MutableString((a3 + 16), v15, 9, 0);
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v11 = __dst;
    *(v17 + 16) = v30;
    *v17 = v11;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (objc_msgSend_length(self->_suffixString, v10, *&v11, v12, v13))
  {
    v22 = objc_msgSend_tsp_protobufString(self->_suffixString, v18, v19, v20, v21);
    sub_2762F3BA4(__p, v22);
    v23 = TSCH::ChartFormatStructExtensions::suffix;
    if (SHIBYTE(v28) < 0)
    {
      sub_2762FA4FC(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v30 = v28;
    }

    v24 = google::protobuf::internal::ExtensionSet::MutableString((a3 + 16), v23, 9, 0);
    v25 = v24;
    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    v26 = __dst;
    *(v25 + 16) = v30;
    *v25 = v26;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

@end