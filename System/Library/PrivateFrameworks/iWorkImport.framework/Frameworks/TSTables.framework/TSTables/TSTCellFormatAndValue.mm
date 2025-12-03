@interface TSTCellFormatAndValue
+ (id)cellDiffProperties;
+ (id)formatAndValueFromCell:(id)cell applySpareFormatOnly:(unsigned int)only;
+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats;
+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content;
+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats suppressApplyingValue:(BOOL)value;
+ (id)formatAndValueFromRichTextCell:(id)cell updatingStorageWithBlock:(id)block;
- (BOOL)hasStringContentMatchingCell:(id)cell;
- (NSString)stringValue;
- (TSUDecimal)numberOrCurrencyDecimalValue;
- (TSWPStorage)richTextOrErrorTextStorageValue;
- (id)cellValueWithLocale:(id)locale;
- (id)copyForApplyingNoContentWithSuppressApplyValue:(BOOL)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content suppressApplyValue:(BOOL)value applySpareFormatOnly:(unsigned int)only;
- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (id)p_copyStorage:(id)storage;
- (id)p_formatForFormatType:(unsigned __int8)type;
- (void)applyToCell:(id)cell;
- (void)saveToPropertyCommandMessage:(Message *)message archiver:(id)archiver;
@end

@implementation TSTCellFormatAndValue

- (NSString)stringValue
{
  if (*(self + 8) != 3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellFormatAndValue stringValue]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 96, 0, "Getting a non-string value as string from a TSTCellFormatAndValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  objValue = self->_objValue;

  return objValue;
}

- (TSWPStorage)richTextOrErrorTextStorageValue
{
  if ((*(self + 8) & 0xFE) != 8)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellFormatAndValue richTextOrErrorTextStorageValue]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 102, 0, "Getting a non-rich-text/non-formula-error value as rich text from a TSTCellFormatAndValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  objValue = self->_objValue;

  return objValue;
}

+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats
{
  formatsCopy = formats;
  cellCopy = cell;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initFromCell_useAllSpareFormats_(v6, v7, cellCopy, formatsCopy, v8);

  return v9;
}

+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content
{
  contentCopy = content;
  formatsCopy = formats;
  cellCopy = cell;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initFromCell_useAllSpareFormats_forceNoContent_suppressApplyValue_applySpareFormatOnly_(v8, v9, cellCopy, formatsCopy, contentCopy, 0, 0);

  return v10;
}

+ (id)formatAndValueFromCell:(id)cell useAllSpareFormats:(BOOL)formats suppressApplyingValue:(BOOL)value
{
  valueCopy = value;
  formatsCopy = formats;
  cellCopy = cell;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initFromCell_useAllSpareFormats_forceNoContent_suppressApplyValue_applySpareFormatOnly_(v8, v9, cellCopy, formatsCopy, 0, valueCopy, 0);

  return v10;
}

+ (id)formatAndValueFromRichTextCell:(id)cell updatingStorageWithBlock:(id)block
{
  cellCopy = cell;
  blockCopy = block;
  if (objc_msgSend_valueType(cellCopy, v7, v8, v9, v10) != 9)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSTCellFormatAndValue formatAndValueFromRichTextCell:updatingStorageWithBlock:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 121, 0, "expected rich text cell when creating format and value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_copy(cellCopy, v11, v12, v13, v14);
  v31 = objc_msgSend_richTextValue(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_context(v31, v32, v33, v34, v35);
  v40 = objc_msgSend_copyWithContext_(v31, v37, v36, v38, v39);

  blockCopy[2](blockCopy, v40);
  objc_msgSend_setParentInfo_(v40, v41, 0, v42, v43);
  objc_msgSend_setRichTextValue_(v26, v44, v40, v45, v46);
  v49 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v47, v26, 0, v48);

  return v49;
}

+ (id)formatAndValueFromCell:(id)cell applySpareFormatOnly:(unsigned int)only
{
  v4 = *&only;
  cellCopy = cell;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initFromCell_useAllSpareFormats_forceNoContent_suppressApplyValue_applySpareFormatOnly_(v6, v7, cellCopy, 0, 0, 0, v4);

  return v8;
}

- (id)initFromCell:(id)cell useAllSpareFormats:(BOOL)formats forceNoContent:(BOOL)content suppressApplyValue:(BOOL)value applySpareFormatOnly:(unsigned int)only
{
  valueCopy = value;
  contentCopy = content;
  formatsCopy = formats;
  cellCopy = cell;
  v100.receiver = self;
  v100.super_class = TSTCellFormatAndValue;
  v13 = [(TSTCellFormatAndValue *)&v100 init];
  v18 = v13;
  v19 = v13;
  if (v13)
  {
    v13->_suppressApplyValue = valueCopy;
    v13->_spareFormatType = 0;
    if (only)
    {
      if (formatsCopy)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellFormatAndValue initFromCell:useAllSpareFormats:forceNoContent:suppressApplyValue:applySpareFormatOnly:]", v16, v17);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 157, 0, "useAllSpareFormats and spareFormatOnly are mutually exclusive!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      }

      else
      {
        v13->_applySpareFormatOnly = 1;
        v13->_spareFormatType = only;
      }
    }

    if (v19->_applySpareFormatOnly || contentCopy || valueCopy)
    {
      *(v19 + 8) = 0;
      goto LABEL_33;
    }

    v31 = objc_msgSend_valueType(cellCopy, v14, v15, v16, v17);
    *(v19 + 8) = v31;
    if (v31 <= 5)
    {
      if (v31 > 3)
      {
        if (v31 == 4)
        {
          v34 = MEMORY[0x277D81150];
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellFormatAndValue initFromCell:useAllSpareFormats:forceNoContent:suppressApplyValue:applySpareFormatOnly:]", v16, v17);
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v37, v38);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v35, v39, 185, 0, "deprecated cell value type found");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
          goto LABEL_33;
        }

        v33 = objc_msgSend_dateValue(cellCopy, v14, v15, v16, v17);
      }

      else
      {
        if (v31 == 2)
        {
          v32 = objc_msgSend_numberDecimalValue(cellCopy, v14, v15, v16, v17);
LABEL_25:
          v19->_decimalValue._decimal.w[0] = v32;
          v19->_decimalValue._decimal.w[1] = v14;
          goto LABEL_33;
        }

        if (v31 != 3)
        {
          goto LABEL_33;
        }

        v33 = objc_msgSend_stringValue(cellCopy, v14, v15, v16, v17);
      }
    }

    else
    {
      if (v31 <= 7)
      {
        if (v31 == 6)
        {
          v19->_BOOLValue = objc_msgSend_BOOLValue(cellCopy, v14, v15, v16, v17);
        }

        else
        {
          objc_msgSend_durationTimeIntervalValue(cellCopy, v14, v15, v16, v17);
          TSUDecimal::operator=();
        }

        goto LABEL_33;
      }

      if (v31 != 8)
      {
        if (v31 != 9)
        {
          if (v31 != 10)
          {
            goto LABEL_33;
          }

          v32 = objc_msgSend_currencyDecimalValue(cellCopy, v14, v15, v16, v17);
          goto LABEL_25;
        }

        v46 = objc_msgSend_richTextValue(cellCopy, v14, v15, v16, v17);
        v50 = objc_msgSend_p_copyStorage_(v19, v47, v46, v48, v49);
        objc_msgSend_setParentInfo_(v50, v51, 0, v52, v53);
        objc_storeStrong(&v18->_objValue, v50);
        v58 = objc_msgSend_richTextStorageForLayout(cellCopy, v54, v55, v56, v57);
        if (v58 != v46)
        {
          objc_storeStrong(&v18->_formattedRichTextStorage, v58);
        }

LABEL_33:
        if (*(v19 + 8))
        {
          v59 = objc_msgSend_formattedValue(cellCopy, v14, v15, v16, v17);
          formattedValue = v19->_formattedValue;
          v19->_formattedValue = v59;
        }

        v19->_useAllSpareFormats = formatsCopy;
        v19->_explicitFlags = objc_msgSend_explicitFormatFlags(cellCopy, v14, v15, v16, v17);
        if (v19->_applySpareFormatOnly)
        {
          IsExplicit = 0;
        }

        else if (!contentCopy || (IsExplicit = objc_msgSend_currentFormatIsExplicit(cellCopy, v61, v62, v63, v64)) != 0)
        {
          IsExplicit = objc_msgSend_cellFormatKind(cellCopy, v61, v62, v63, v64);
        }

        v19->_cellFormatKind = IsExplicit;
        if (v19->_useAllSpareFormats)
        {
          v66 = objc_msgSend_numberFormat(cellCopy, v61, v62, v63, v64);
          numberFormat = v19->_numberFormat;
          v19->_numberFormat = v66;

          v72 = objc_msgSend_currencyFormat(cellCopy, v68, v69, v70, v71);
          currencyFormat = v19->_currencyFormat;
          v19->_currencyFormat = v72;

          v78 = objc_msgSend_dateFormat(cellCopy, v74, v75, v76, v77);
          dateFormat = v19->_dateFormat;
          v19->_dateFormat = v78;

          v84 = objc_msgSend_durationFormat(cellCopy, v80, v81, v82, v83);
          durationFormat = v19->_durationFormat;
          v19->_durationFormat = v84;

          v90 = objc_msgSend_textFormat(cellCopy, v86, v87, v88, v89);
          textFormat = v19->_textFormat;
          v19->_textFormat = v90;

          v96 = objc_msgSend_BOOLeanFormat(cellCopy, v92, v93, v94, v95);
        }

        else
        {
          if (v19->_applySpareFormatOnly)
          {
            IsExplicit = sub_22121E75C(v19->_spareFormatType);
          }

          if (IsExplicit <= 3)
          {
            switch(IsExplicit)
            {
              case 1:
                v96 = objc_msgSend_numberFormat(cellCopy, v61, v62, v63, v64);
                v97 = 80;
                break;
              case 2:
                v96 = objc_msgSend_currencyFormat(cellCopy, v61, v62, v63, v64);
                v97 = 88;
                break;
              case 3:
                v96 = objc_msgSend_dateFormat(cellCopy, v61, v62, v63, v64);
                v97 = 96;
                break;
              default:
                goto LABEL_44;
            }

            goto LABEL_43;
          }

          if (IsExplicit == 4)
          {
            v96 = objc_msgSend_durationFormat(cellCopy, v61, v62, v63, v64);
            v97 = 104;
            goto LABEL_43;
          }

          if (IsExplicit == 5)
          {
            v96 = objc_msgSend_textFormat(cellCopy, v61, v62, v63, v64);
            v97 = 120;
            goto LABEL_43;
          }

          if (IsExplicit != 6)
          {
            goto LABEL_44;
          }

          v96 = objc_msgSend_BOOLeanFormat(cellCopy, v61, v62, v63, v64);
        }

        v97 = 112;
LABEL_43:
        v98 = *(&v19->super.isa + v97);
        *(&v19->super.isa + v97) = v96;

        goto LABEL_44;
      }

      v33 = objc_msgSend_formulaSyntaxError(cellCopy, v14, v15, v16, v17);
    }

    objValue = v19->_objValue;
    v19->_objValue = v33;

    goto LABEL_33;
  }

LABEL_44:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTCellFormatAndValue);
  v9 = v4;
  *(v4 + 8) = *(self + 8);
  v4->_useAllSpareFormats = self->_useAllSpareFormats;
  v4->_suppressApplyValue = self->_suppressApplyValue;
  v4->_spareFormatType = self->_spareFormatType;
  v4->_applySpareFormatOnly = self->_applySpareFormatOnly;
  v10 = *(self + 8);
  if (v10 <= 5)
  {
    if (*(self + 8) > 3u)
    {
      if (v10 == 4)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellFormatAndValue copyWithZone:]", v7, v8);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 297, 0, "deprecated cell value type found");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
        goto LABEL_23;
      }

      if (v10 == 5)
      {
        v11 = objc_msgSend_dateValue(self, v5, v6, v7, v8);
        v16 = objc_msgSend_copy(v11, v17, v18, v19, v20);
        goto LABEL_21;
      }
    }

    else
    {
      if (v10 == 2)
      {
LABEL_16:
        v4->_decimalValue = self->_decimalValue;
        goto LABEL_23;
      }

      if (v10 == 3)
      {
        v11 = objc_msgSend_stringValue(self, v5, v6, v7, v8);
        v16 = objc_msgSend_copy(v11, v12, v13, v14, v15);
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (*(self + 8) > 7u)
    {
      if (v10 == 8)
      {
        v11 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7, v8);
        v36 = objc_msgSend_richTextOrErrorTextStorageValue(self, v32, v33, v34, v35);
        v41 = objc_msgSend_context(v36, v37, v38, v39, v40);
        v45 = objc_msgSend_copyWithContext_(v11, v42, v41, v43, v44);
        objValue = v9->_objValue;
        v9->_objValue = v45;

LABEL_22:
        goto LABEL_23;
      }

      if (v10 != 9)
      {
        if (v10 != 10)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      v11 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7, v8);
      v16 = objc_msgSend_p_copyStorage_(v9, v47, v11, v48, v49);
LABEL_21:
      v50 = v9->_objValue;
      v9->_objValue = v16;

      goto LABEL_22;
    }

    if (v10 == 6)
    {
      v4->_BOOLValue = self->_BOOLValue;
      goto LABEL_23;
    }

    if (v10 == 7)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
  v51 = objc_msgSend_copy(self->_formattedValue, v5, v6, v7, v8);
  formattedValue = v9->_formattedValue;
  v9->_formattedValue = v51;

  formattedRichTextStorage = self->_formattedRichTextStorage;
  v58 = objc_msgSend_context(formattedRichTextStorage, v54, v55, v56, v57);
  v62 = objc_msgSend_copyWithContext_(formattedRichTextStorage, v59, v58, v60, v61);
  v63 = v9->_formattedRichTextStorage;
  v9->_formattedRichTextStorage = v62;

  v9->_explicitFlags = self->_explicitFlags;
  v9->_cellFormatKind = self->_cellFormatKind;
  v68 = objc_msgSend_copy(self->_numberFormat, v64, v65, v66, v67);
  numberFormat = v9->_numberFormat;
  v9->_numberFormat = v68;

  v74 = objc_msgSend_copy(self->_currencyFormat, v70, v71, v72, v73);
  currencyFormat = v9->_currencyFormat;
  v9->_currencyFormat = v74;

  v80 = objc_msgSend_copy(self->_dateFormat, v76, v77, v78, v79);
  dateFormat = v9->_dateFormat;
  v9->_dateFormat = v80;

  v86 = objc_msgSend_copy(self->_durationFormat, v82, v83, v84, v85);
  durationFormat = v9->_durationFormat;
  v9->_durationFormat = v86;

  v92 = objc_msgSend_copy(self->_BOOLeanFormat, v88, v89, v90, v91);
  BOOLeanFormat = v9->_BOOLeanFormat;
  v9->_BOOLeanFormat = v92;

  v98 = objc_msgSend_copy(self->_textFormat, v94, v95, v96, v97);
  textFormat = v9->_textFormat;
  v9->_textFormat = v98;

  return v9;
}

- (id)copyForApplyingNoContentWithSuppressApplyValue:(BOOL)value
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = v5;
  *(v5 + 10) = value;
  *(v5 + 8) = 0;
  *(v5 + 9) = self->_useAllSpareFormats;
  *(v5 + 36) = self->_explicitFlags;
  *(v5 + 74) = self->_cellFormatKind;
  *(v5 + 11) = self->_applySpareFormatOnly;
  *(v5 + 3) = self->_spareFormatType;
  numberFormat = self->_numberFormat;
  if (numberFormat)
  {
    objc_storeStrong(v5 + 10, numberFormat);
  }

  currencyFormat = self->_currencyFormat;
  if (currencyFormat)
  {
    objc_storeStrong(v6 + 11, currencyFormat);
  }

  dateFormat = self->_dateFormat;
  if (dateFormat)
  {
    objc_storeStrong(v6 + 12, dateFormat);
  }

  durationFormat = self->_durationFormat;
  if (durationFormat)
  {
    objc_storeStrong(v6 + 13, durationFormat);
  }

  BOOLeanFormat = self->_BOOLeanFormat;
  if (BOOLeanFormat)
  {
    objc_storeStrong(v6 + 14, BOOLeanFormat);
  }

  textFormat = self->_textFormat;
  if (textFormat)
  {
    objc_storeStrong(v6 + 15, textFormat);
  }

  return v6;
}

- (id)p_copyStorage:(id)storage
{
  storageCopy = storage;
  v8 = objc_msgSend_context(storageCopy, v4, v5, v6, v7);
  v12 = objc_msgSend_copyWithContext_(storageCopy, v9, v8, v10, v11);

  v17 = objc_msgSend_parentInfo(storageCopy, v13, v14, v15, v16);
  objc_msgSend_setParentInfo_(v12, v18, v17, v19, v20);

  return v12;
}

- (TSUDecimal)numberOrCurrencyDecimalValue
{
  if ((*(self + 8) | 8) != 0xA)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellFormatAndValue numberOrCurrencyDecimalValue]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 384, 0, "Getting a non-double value as double from a TSTCellFormatAndValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  v16 = self->_decimalValue._decimal.w[0];
  v17 = self->_decimalValue._decimal.w[1];
  result._decimal.w[1] = v17;
  result._decimal.w[0] = v16;
  return result;
}

- (BOOL)hasStringContentMatchingCell:(id)cell
{
  cellCopy = cell;
  v9 = *(self + 8);
  if (v9 == 3)
  {
    v15 = objc_msgSend_stringValue(self, v4, v5, v6, v7);
  }

  else if (v9 == 9)
  {
    v10 = objc_msgSend_richTextOrErrorTextStorageValue(self, v4, v5, v6, v7);
    v15 = objc_msgSend_stringValue(v10, v11, v12, v13, v14);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCellFormatAndValue hasStringContentMatchingCell:]", v6, v7);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v23, v24);
    v29 = objc_msgSend_stringForCellValueType_(TSTCell, v26, *(self + 8), v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v30, v21, v25, 410, 0, "no string content comparison implemented for value type %@", v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v15 = 0;
  }

  v35 = objc_msgSend_valueType(cellCopy, v16, v17, v18, v19);
  if (objc_msgSend_hasFormula(cellCopy, v36, v37, v38, v39))
  {
    goto LABEL_11;
  }

  if (v35 == 9)
  {
    v50 = objc_msgSend_richTextValue(cellCopy, v40, v41, v42, v43);
    v47 = objc_msgSend_string(v50, v51, v52, v53, v54);

    if (v15)
    {
      goto LABEL_10;
    }

LABEL_15:
    v48 = 0;
    goto LABEL_13;
  }

  if (v35 != 3)
  {
LABEL_11:
    v47 = 0;
    v48 = 0;
    goto LABEL_12;
  }

  v47 = objc_msgSend_stringValue(cellCopy, v40, v41, v42, v43);
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_10:
  v48 = objc_msgSend_compare_(v15, v44, v47, v45, v46) == 0;
LABEL_12:

LABEL_13:
  return v48;
}

- (id)cellValueWithLocale:(id)locale
{
  localeCopy = locale;
  v9 = objc_msgSend_getCurrentFormat(self, v5, v6, v7, v8);
  TSCEFormat::TSCEFormat(&v81, v9, 0);
  v14 = objc_msgSend_valueType(self, v10, v11, v12, v13);
  v19 = 0;
  if (v14 > 5)
  {
    if (v14 <= 7)
    {
      if (v14 != 6)
      {
        v46 = objc_msgSend_asDurationFormat(v9, v15, v16, v17, v18);
        TSUDecimal::doubleValue(&self->_decimalValue);
        v51 = objc_msgSend_durationUnitLargestWithTimeInterval_(v46, v47, v48, v49, v50);
        v52 = sub_221387C78(v51);

        v23 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v53, &self->_decimalValue, &v81, v52);
        v54 = [TSCENumberCellValue alloc];
        v27 = objc_msgSend_initWithNumberValue_locale_(v54, v55, v23, localeCopy, v56);
        goto LABEL_24;
      }

      v57 = [TSCEBooleanCellValue alloc];
      v45 = objc_msgSend_initWithBoolean_locale_(v57, v58, self->_BOOLValue, localeCopy, v59);
LABEL_19:
      v19 = v45;
      goto LABEL_25;
    }

    if (v14 != 8)
    {
      if (v14 == 9)
      {
        v66 = objc_msgSend_richTextOrErrorTextStorageValue(self, v15, v16, v17, v18);
        v71 = objc_msgSend_stringValue(v66, v67, v68, v69, v70);
        v23 = objc_msgSend_stringValue_format_(TSCEStringValue, v72, v71, &v81, v73);

        v74 = [TSCEStringCellValue alloc];
        v27 = objc_msgSend_initWithStringValue_locale_(v74, v75, v23, localeCopy, v76);
      }

      else
      {
        if (v14 != 10)
        {
          goto LABEL_25;
        }

        if (v81._formatType == 257)
        {
          v28 = objc_msgSend_asCurrencyFormat(v9, v15, v16, v17, v18);
          v33 = objc_msgSend_currencyCode(v28, v29, v30, v31, v32);

          v37 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v34, v33, v35, v36);
        }

        else
        {
          v37 = 0;
        }

        v23 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v15, &self->_decimalValue, &v81, v37);
        v77 = [TSCENumberCellValue alloc];
        v27 = objc_msgSend_initWithNumberValue_locale_(v77, v78, v23, localeCopy, v79);
      }

      goto LABEL_24;
    }

LABEL_15:
    v41 = [TSCENilCellValue alloc];
    v45 = objc_msgSend_initWithLocale_(v41, v42, localeCopy, v43, v44);
    goto LABEL_19;
  }

  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 != 2)
      {
        goto LABEL_25;
      }

      v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v15, &self->_decimalValue, &v81, v18);
      v38 = [TSCENumberCellValue alloc];
      v27 = objc_msgSend_initWithNumberValue_locale_(v38, v39, v23, localeCopy, v40);
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if (v14 == 3)
  {
    v60 = objc_msgSend_stringValue(self, v15, v16, v17, v18);
    v23 = objc_msgSend_stringValue_format_(TSCEStringValue, v61, v60, &v81, v62);

    v63 = [TSCEStringCellValue alloc];
    v27 = objc_msgSend_initWithStringValue_locale_(v63, v64, v23, localeCopy, v65);
    goto LABEL_24;
  }

  if (v14 == 4)
  {
    goto LABEL_15;
  }

  v20 = objc_msgSend_dateValue(self, v15, v16, v17, v18);
  v23 = objc_msgSend_dateValue_format_(TSCEDateValue, v21, v20, &v81, v22);

  v24 = [TSCEDateCellValue alloc];
  v27 = objc_msgSend_initWithDateValue_locale_(v24, v25, v23, localeCopy, v26);
LABEL_24:
  v19 = v27;

LABEL_25:

  return v19;
}

- (void)applyToCell:(id)cell
{
  cellCopy = cell;
  v116 = cellCopy;
  if (self->_applySpareFormatOnly)
  {
    v9 = objc_msgSend_formatType(cellCopy, v5, v6, v7, v8);
    if (objc_msgSend_formatType_isSameCellFormatKindAs_(TSTCell, v10, self->_spareFormatType, v9, v11))
    {
      goto LABEL_58;
    }

    v12 = sub_22121E75C(self->_spareFormatType);
    v16 = objc_msgSend_p_formatForFormatType_(self, v13, v12, v14, v15);
    objc_msgSend_setFormat_isExplicit_(v116, v17, v16, 1, v18);
    goto LABEL_57;
  }

  if (!self->_suppressApplyValue)
  {
    objc_msgSend_clearValue(cellCopy, v5, v6, v7, v8);
    v19 = *(self + 8);
    if (v19 <= 5)
    {
      if (*(self + 8) > 3u)
      {
        if (v19 == 4)
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellFormatAndValue applyToCell:]", v7, v8);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v34, v35);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 525, 0, "deprecated cell value type found");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
          goto LABEL_28;
        }

        if (v19 != 5)
        {
          goto LABEL_28;
        }

        v20 = objc_msgSend_dateValue(self, v5, v6, v7, v8);
        objc_msgSend_setDateValue_(v116, v24, v20, v25, v26);
      }

      else
      {
        if (v19 == 2)
        {
          objc_msgSend_setNumberDecimalValue_(v116, v5, self->_decimalValue._decimal.w[0], self->_decimalValue._decimal.w[1], v8);
          goto LABEL_28;
        }

        if (v19 != 3)
        {
          goto LABEL_28;
        }

        v20 = objc_msgSend_stringValue(self, v5, v6, v7, v8);
        objc_msgSend_setStringValue_(v116, v21, v20, v22, v23);
      }

      goto LABEL_27;
    }

    if (*(self + 8) > 7u)
    {
      if (v19 == 8)
      {
        if (!self->_objValue)
        {
          goto LABEL_28;
        }

        v20 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7, v8);
        objc_msgSend_setFormulaSyntaxError_(v116, v42, v20, v43, v44);
      }

      else
      {
        if (v19 != 9)
        {
          if (v19 == 10)
          {
            objc_msgSend_setCurrencyDecimalValue_(v116, v5, self->_decimalValue._decimal.w[0], self->_decimalValue._decimal.w[1], v8);
          }

          goto LABEL_28;
        }

        v45 = objc_msgSend_richTextOrErrorTextStorageValue(self, v5, v6, v7, v8);
        v20 = objc_msgSend_p_copyStorage_(self, v46, v45, v47, v48);

        objc_msgSend_setRichTextValue_(v116, v49, v20, v50, v51);
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v19 == 6)
    {
      objc_msgSend_setBoolValue_(v116, v5, self->_BOOLValue, v7, v8);
    }

    else if (v19 == 7)
    {
      TSUDecimal::doubleValue(&self->_decimalValue);
      objc_msgSend_setDurationTimeIntervalValue_(v116, v27, v28, v29, v30);
    }
  }

LABEL_28:
  v16 = objc_msgSend_currentFormat(v116, v5, v6, v7, v8);
  if (self->_useAllSpareFormats)
  {
    numberFormat = self->_numberFormat;
    if (numberFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v116, v52, numberFormat, 0, v54);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v116, v52, 256, v53, v54);
    }

    currencyFormat = self->_currencyFormat;
    if (currencyFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v116, v56, currencyFormat, 0, v58);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v116, v56, 257, v57, v58);
    }

    dateFormat = self->_dateFormat;
    if (dateFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v116, v67, dateFormat, 0, v69);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v116, v67, 261, v68, v69);
    }

    durationFormat = self->_durationFormat;
    if (durationFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v116, v71, durationFormat, 0, v73);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v116, v71, 268, v72, v73);
    }

    textFormat = self->_textFormat;
    if (textFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v116, v75, textFormat, 0, v77);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v116, v75, 260, v76, v77);
    }

    BOOLeanFormat = self->_BOOLeanFormat;
    if (BOOLeanFormat)
    {
      objc_msgSend_setFormat_isExplicit_(v116, v79, BOOLeanFormat, 0, v81);
    }

    else
    {
      objc_msgSend_clearFormatOfType_(v116, v79, 1, v80, v81);
    }

    objc_msgSend_suggestCellFormatKind_(v116, v83, self->_cellFormatKind, v84, v85);
    objc_msgSend_setExplicitFormatFlags_(v116, v86, self->_explicitFlags, v87, v88);
  }

  else
  {
    v59 = objc_msgSend_p_formatForFormatType_(self, v52, self->_cellFormatKind, v53, v54);
    objc_msgSend_setCurrentFormat_flags_(v116, v60, v59, self->_explicitFlags, v61);
  }

  if (self->_suppressApplyValue)
  {
    v89 = objc_msgSend_valueType(v116, v62, v63, v64, v65);
    v93 = objc_msgSend_cellFormatKindForValueType_(TSTCell, v90, v89, v91, v92);
    cellFormatKind = self->_cellFormatKind;
    if (v93 == 1 && cellFormatKind == 2)
    {
      v98 = objc_msgSend_numberDecimalValue(v116, v94, v93, v95, v96);
      objc_msgSend_setCurrencyDecimalValue_roundToDoublePrecision_(v116, v99, v98, v99, 0);
      v103 = objc_msgSend_p_formatForFormatType_(self, v100, self->_cellFormatKind, v101, v102);
      objc_msgSend_setCurrentFormat_flags_(v116, v104, v103, self->_explicitFlags, v105);
    }

    else
    {
      if (v93 != 2 || cellFormatKind != 1)
      {
        if (v93)
        {
          v113 = objc_msgSend_formatOfCellFormatKind_isExplicit_(v116, v94, v93, 0, v96);

          if (!v113)
          {
            objc_msgSend_setCurrentFormat_isExplicit_(v116, v114, v16, 0, v115);
          }
        }

        goto LABEL_57;
      }

      v106 = objc_msgSend_currencyDecimalValue(v116, v94, v93, v95, v96);
      objc_msgSend_setNumberDecimalValue_roundToDoublePrecision_(v116, v107, v106, v107, 0);
      v103 = objc_msgSend_p_formatForFormatType_(self, v108, self->_cellFormatKind, v109, v110);
      objc_msgSend_setCurrentFormat_flags_(v116, v111, v103, self->_explicitFlags, v112);
    }
  }

LABEL_57:

LABEL_58:
}

+ (id)cellDiffProperties
{
  if (qword_27CFB5468 != -1)
  {
    sub_2216F7728();
  }

  v3 = qword_27CFB5460;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  setPropertyMapCopy = setPropertyMap;
  v17 = objc_msgSend_objectForProperty_(map, v11, 907, v12, v13);
  if (v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellFormatAndValue objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:]", v15, v16);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 633, 0, "shouldn't remove the value and format from a cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_setObject_forProperty_(setPropertyMapCopy, v14, self, 907, v16);
  v32 = objc_msgSend_objectForProperty_(inMapCopy, v29, 907, v30, v31);

  return v32;
}

- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v65.receiver = self;
  v65.super_class = TSTCellFormatAndValue;
  v7 = [(TSTCellFormatAndValue *)&v65 init];
  v12 = v7;
  if (!v7)
  {
    goto LABEL_45;
  }

  v13 = 0;
  var0 = message[7].var0;
  if (var0 <= 4)
  {
    if (var0 > 2)
    {
      if (var0 != 3)
      {
        *(v7 + 8) = 5;
        v16 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v8, v9, v10, v11, *&message[6].var1.var0);
        goto LABEL_14;
      }

      v13 = 4;
    }

    else
    {
      if (var0 == 1)
      {
        v15 = 2;
        goto LABEL_19;
      }

      if (var0 == 2)
      {
        *(v7 + 8) = 3;
        v16 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, message[1].var1.var0 & 0xFFFFFFFFFFFFFFFELL, v10, v11);
LABEL_14:
        v17 = v12[3]._decimal.w[0];
        v12[3]._decimal.w[0] = v16;
        goto LABEL_15;
      }
    }

LABEL_23:
    *(v7 + 8) = v13;
    goto LABEL_29;
  }

  if (var0 <= 6)
  {
    if (var0 == 5)
    {
      *(v7 + 8) = 6;
      v7->_BOOLValue = BYTE4(message[7].var1.var0);
      goto LABEL_29;
    }

    v15 = 7;
LABEL_19:
    *(v7 + 8) = v15;
    if ((BYTE2(message[1].var0) & 4) != 0)
    {
      TSUDecimal::TSUDecimal(&v64);
      v12[2] = v64;
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::reinterpretDoubleAsDecimal(v12 + 2);
    }

    goto LABEL_29;
  }

  switch(var0)
  {
    case 7:
      *(v7 + 8) = 8;
      if ((message[1].var0 & 4) == 0)
      {
        goto LABEL_29;
      }

      v18 = message[2].var1.var0;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_22130FEA0;
      v62[3] = &unk_27845E090;
      v63 = v7;
      v19 = unarchiverCopy;
      v20 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v21, v18, v20, 0, v62);

      v17 = v63;
      break;
    case 8:
      *(v7 + 8) = 9;
      if ((message[1].var0 & 4) == 0)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellFormatAndValue initFromPropertyCommandMessage:unarchiver:]", v10, v11);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v25, v26);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 691, 0, "rich text cells should have a rich text payload");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
        goto LABEL_29;
      }

      v54 = message[2].var1.var0;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = sub_22130FEAC;
      v60[3] = &unk_27845E090;
      v61 = v7;
      v55 = unarchiverCopy;
      v56 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v55, v57, v54, v56, 0, v60);

      v17 = v61;
      break;
    case 9:
      v15 = 10;
      goto LABEL_19;
    default:
      goto LABEL_23;
  }

LABEL_15:

LABEL_29:
  v33 = message[1].var0;
  if ((v33 & 2) != 0)
  {
    v34 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, message[2].var0 & 0xFFFFFFFFFFFFFFFELL, v10, v11);
    v35 = v12[3]._decimal.w[1];
    v12[3]._decimal.w[1] = v34;

    v33 = message[1].var0;
  }

  if ((v33 & 0x200) != 0)
  {
    v36 = message[6].var0;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_22130FEB8;
    v58[3] = &unk_27845E090;
    v59 = v12;
    v37 = unarchiverCopy;
    v38 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v36, v38, 0, v58);

    v33 = message[1].var0;
  }

  v40 = message[7].var1.var0;
  LOWORD(v12[4]._decimal.w[1]) = HIDWORD(message[7].var0);
  BYTE1(v12->_decimal.w[1]) = BYTE5(message[7].var1.var0);
  BYTE2(v12[4]._decimal.w[1]) = v40;
  BYTE3(v12->_decimal.w[1]) = BYTE6(message[7].var1.var0);
  HIDWORD(v12->_decimal.w[1]) = HIBYTE(message[7].var1.var0);
  BYTE2(v12->_decimal.w[1]) = message[9].var0;
  if ((v33 & 8) != 0)
  {
    v41 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[3].var0, v10, v11);
    v42 = v12[5]._decimal.w[0];
    v12[5]._decimal.w[0] = v41;

    v33 = message[1].var0;
  }

  if ((v33 & 0x10) != 0)
  {
    v43 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[3].var1.var0, v10, v11);
    v44 = v12[5]._decimal.w[1];
    v12[5]._decimal.w[1] = v43;

    v33 = message[1].var0;
  }

  if ((v33 & 0x20) != 0)
  {
    v45 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[4].var0, v10, v11);
    v46 = v12[6]._decimal.w[0];
    v12[6]._decimal.w[0] = v45;

    v33 = message[1].var0;
  }

  if ((v33 & 0x40) != 0)
  {
    v47 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[4].var1.var0, v10, v11);
    v48 = v12[6]._decimal.w[1];
    v12[6]._decimal.w[1] = v47;

    v33 = message[1].var0;
  }

  if ((v33 & 0x80) != 0)
  {
    v49 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[5].var0, v10, v11);
    v50 = v12[7]._decimal.w[1];
    v12[7]._decimal.w[1] = v49;

    v33 = message[1].var0;
  }

  if ((v33 & 0x100) != 0)
  {
    v51 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, message[5].var1.var0, v10, v11);
    v52 = v12[7]._decimal.w[0];
    v12[7]._decimal.w[0] = v51;
  }

LABEL_45:

  return v12;
}

- (void)saveToPropertyCommandMessage:(Message *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  if (*(self + 8) - 2 < 9)
  {
    v11 = (*(self + 8) - 2) + 1;
  }

  else
  {
    v11 = 0;
  }

  var0 = message[1].var0;
  LODWORD(message[1].var0) = var0 | 0x800;
  LODWORD(message[7].var0) = v11;
  v13 = *(self + 8);
  if (v13 > 6)
  {
    if (v13 - 8 >= 2)
    {
      if (v13 != 7 && v13 != 10)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }

    if (!self->_objValue)
    {
      goto LABEL_29;
    }

    v27 = objc_msgSend_richTextOrErrorTextStorageValue(self, v6, v7, v8, v9);
    LODWORD(message[1].var0) |= 4u;
    v28 = message[2].var1.var0;
    if (!v28)
    {
      v29 = message->var1.var0;
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0390](v29);
      message[2].var1.var0 = v28;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v25, v27, v28, v26);
LABEL_28:

    goto LABEL_29;
  }

  if (*(self + 8) <= 4u)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        v14 = objc_msgSend_stringValue(self, v6, v7, v8, v9);
        v19 = objc_msgSend_tsp_protobufString(v14, v15, v16, v17, v18);

        if (v19)
        {
          LODWORD(message[1].var0) |= 1u;
          sub_22108CCD0(__p, v19);
          google::protobuf::internal::ArenaStringPtr::Set();
          if (v72 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else if (self->_objValue)
        {
          v60 = MEMORY[0x277D81150];
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellFormatAndValue saveToPropertyCommandMessage:archiver:]", v8, v9);
          v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormatAndValue.mm", v63, v64);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v65, 757, 0, "Non-nil string resulted in NULL protobufString: '%@'", self->_objValue);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
        }
      }

      goto LABEL_29;
    }

LABEL_17:
    v21 = TSUDecimal::low(&self->_decimalValue);
    LODWORD(message[1].var0) |= 0x40000u;
    message[8].var0 = v21;
    v22 = TSUDecimal::high(&self->_decimalValue);
    LODWORD(message[1].var0) |= 0x80000u;
    message[8].var1.var0 = v22;
    TSUDecimal::doubleValue(&self->_decimalValue);
    LODWORD(message[1].var0) |= 0x400u;
    message[6].var1.var0 = v23;
    goto LABEL_29;
  }

  if (v13 == 5)
  {
    v27 = objc_msgSend_dateValue(self, v6, v7, v8, v9);
    objc_msgSend_timeIntervalSinceReferenceDate(v27, v30, v31, v32, v33);
    LODWORD(message[1].var0) |= 0x400u;
    message[6].var1.var0 = v34;
    goto LABEL_28;
  }

  if (v13 == 6)
  {
    BOOLValue = self->_BOOLValue;
    LODWORD(message[1].var0) = var0 | 0x4800;
    BYTE4(message[7].var1.var0) = BOOLValue;
  }

LABEL_29:
  formattedValue = self->_formattedValue;
  if (formattedValue)
  {
    v36 = objc_msgSend_tsp_protobufString(formattedValue, v6, v7, v8, v9);
    LODWORD(message[1].var0) |= 2u;
    sub_22108CCD0(__p, v36);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v72 < 0)
    {
      operator delete(__p[0]);
    }
  }

  formattedRichTextStorage = self->_formattedRichTextStorage;
  v38 = message[1].var0;
  if (formattedRichTextStorage)
  {
    LODWORD(message[1].var0) = v38 | 0x200;
    v39 = message[6].var0;
    if (!v39)
    {
      v40 = message->var1.var0;
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = MEMORY[0x223DA0390](v40);
      message[6].var0 = v39;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, formattedRichTextStorage, v39, v9);
    v38 = message[1].var0;
  }

  BYTE5(message[7].var1.var0) = self->_useAllSpareFormats;
  HIDWORD(message[7].var0) = self->_explicitFlags;
  LODWORD(message[7].var1.var0) = self->_cellFormatKind;
  BYTE6(message[7].var1.var0) = self->_applySpareFormatOnly;
  HIBYTE(message[7].var1.var0) = self->_spareFormatType != 0;
  suppressApplyValue = self->_suppressApplyValue;
  LODWORD(message[1].var0) = v38 | 0x13B000;
  LOBYTE(message[9].var0) = suppressApplyValue;
  numberFormat = self->_numberFormat;
  if (numberFormat)
  {
    LODWORD(message[1].var0) = v38 | 0x13B008;
    v43 = message[3].var0;
    if (!v43)
    {
      v44 = message->var1.var0;
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x223DA02D0](v44);
      message[3].var0 = v43;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(numberFormat, v6, v43, 1, v9);
  }

  currencyFormat = self->_currencyFormat;
  if (currencyFormat)
  {
    LODWORD(message[1].var0) |= 0x10u;
    v46 = message[3].var1.var0;
    if (!v46)
    {
      v47 = message->var1.var0;
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      v46 = MEMORY[0x223DA02D0](v47);
      message[3].var1.var0 = v46;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(currencyFormat, v6, v46, 1, v9);
  }

  dateFormat = self->_dateFormat;
  if (dateFormat)
  {
    LODWORD(message[1].var0) |= 0x20u;
    v49 = message[4].var0;
    if (!v49)
    {
      v50 = message->var1.var0;
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = MEMORY[0x223DA02D0](v50);
      message[4].var0 = v49;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(dateFormat, v6, v49, 1, v9);
  }

  durationFormat = self->_durationFormat;
  if (durationFormat)
  {
    LODWORD(message[1].var0) |= 0x40u;
    v52 = message[4].var1.var0;
    if (!v52)
    {
      v53 = message->var1.var0;
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x223DA02D0](v53);
      message[4].var1.var0 = v52;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(durationFormat, v6, v52, 1, v9);
  }

  BOOLeanFormat = self->_BOOLeanFormat;
  if (BOOLeanFormat)
  {
    LODWORD(message[1].var0) |= 0x100u;
    v55 = message[5].var1.var0;
    if (!v55)
    {
      v56 = message->var1.var0;
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x223DA02D0](v56);
      message[5].var1.var0 = v55;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(BOOLeanFormat, v6, v55, 1, v9);
  }

  textFormat = self->_textFormat;
  if (textFormat)
  {
    LODWORD(message[1].var0) |= 0x80u;
    v58 = message[5].var0;
    if (!v58)
    {
      v59 = message->var1.var0;
      if (v59)
      {
        v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
      }

      v58 = MEMORY[0x223DA02D0](v59);
      message[5].var0 = v58;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(textFormat, v6, v58, 1, v9);
  }
}

- (id)p_formatForFormatType:(unsigned __int8)type
{
  if ((type - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.isa + qword_2217E13A0[(type - 1)]);
  }

  return v4;
}

@end