@interface TSCENumberCellValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCellValue:(id)a3;
- (TSCENumberCellValue)initWithArchive:(const void *)a3 locale:(id)a4;
- (TSCENumberCellValue)initWithDecimal:(const TSUDecimal *)a3 locale:(id)a4;
- (TSCENumberCellValue)initWithDouble:(double)a3 locale:(id)a4;
- (TSCENumberCellValue)initWithNumberValue:(id)a3 locale:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)a3;
- (void)encodeToArchive:(void *)a3;
- (void)setPopulatedCustomFormat:(id)a3;
@end

@implementation TSCENumberCellValue

- (TSCENumberCellValue)initWithDouble:(double)a3 locale:(id)a4
{
  v5 = a4;
  v19.receiver = self;
  v19.super_class = TSCENumberCellValue;
  v6 = [(TSCECellValue *)&v19 initWithLocale:v5];
  v7 = v6;
  if (v6)
  {
    v6->super._valueType = 5;
    v8 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v11 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v9, 256, v5, v10);
    TSCEFormat::TSCEFormat(&v17, v11, 0);
    v14 = objc_msgSend_initWithDecimal_format_(v8, v12, v18, &v17, v13);
    numberValue = v7->_numberValue;
    v7->_numberValue = v14;
  }

  return v7;
}

- (TSCENumberCellValue)initWithDecimal:(const TSUDecimal *)a3 locale:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = TSCENumberCellValue;
  v7 = [(TSCECellValue *)&v19 initWithLocale:v6];
  v8 = v7;
  if (v7)
  {
    v7->super._valueType = 5;
    v9 = [TSCENumberValue alloc];
    v12 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v10, 256, v6, v11);
    TSCEFormat::TSCEFormat(&v18, v12, 0);
    v15 = objc_msgSend_initWithDecimal_format_(v9, v13, a3, &v18, v14);
    numberValue = v8->_numberValue;
    v8->_numberValue = v15;
  }

  return v8;
}

- (TSCENumberCellValue)initWithNumberValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = TSCENumberCellValue;
  v8 = [(TSCECellValue *)&v31 initWithLocale:v7];
  v13 = v8;
  if (v8)
  {
    v8->super._valueType = 5;
    if (!v6)
    {
      v6 = objc_msgSend_zero(TSCENumberValue, v9, v10, v11, v12);
    }

    v14 = [TSCENumberValue alloc];
    v23 = objc_msgSend_rawDecimalValue(v6, v15, v16, v17, v18);
    if (v6)
    {
      objc_msgSend_format(v6, v19, v20, v21, v22);
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v24 = objc_msgSend_unit(v6, v19, v20, v21, v22, v29, v30);
    v26 = objc_msgSend_initWithDecimal_format_baseUnit_(v14, v25, v23, &v29, v24);
    numberValue = v13->_numberValue;
    v13->_numberValue = v26;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCENumberCellValue alloc];
  numberValue = self->_numberValue;
  v10 = objc_msgSend_locale(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithNumberValue_locale_(v4, v11, numberValue, v10, v12);

  return v13;
}

- (id)tsceValue
{
  numberValue = self->_numberValue;
  if (numberValue)
  {
    v6 = numberValue;
  }

  else
  {
    v6 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3, v4);
  }

  return v6;
}

- (id)format
{
  numberValue = self->_numberValue;
  if (numberValue)
  {
    objc_msgSend_format(numberValue, a2, v2, v3, v4);
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  v7 = TSCEFormat::tskFormat(&v19, a2, v2, v3, v4);
  v12 = v7;
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v14 = MEMORY[0x277D80680];
    v15 = objc_msgSend_locale(self, v8, v9, v10, v11);
    v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v14, v16, 256, v15, v17);
  }

  return v13;
}

- (id)displayString
{
  numberValue = self->_numberValue;
  v6 = objc_msgSend_locale(self, a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(numberValue, v7, v6, v8, v9);

  return v10;
}

- (BOOL)isEqualToCellValue:(id)a3
{
  v4 = a3;
  if (objc_msgSend_valueType(v4, v5, v6, v7, v8) == 5)
  {
    v13 = objc_msgSend_numberValue(v4, v9, v10, v11, v12);
    v18 = objc_msgSend_unit(self->_numberValue, v14, v15, v16, v17);
    if (v18 != objc_msgSend_unit(v13, v19, v20, v21, v22) || (v27 = objc_msgSend_rawDecimalValue(self->_numberValue, v23, v24, v25, v26), v32 = objc_msgSend_rawDecimalValue(v13, v28, v29, v30, v31), objc_msgSend_locale(self, v33, v34, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), LOBYTE(v27) = TSUDecimal::floatingPointEqual(v27, v32, v37, v38), v37, (v27 & 1) == 0))
    {
      isEqualNotCountingExplicitness = 0;
LABEL_12:

      goto LABEL_13;
    }

    numberValue = self->_numberValue;
    if (numberValue)
    {
      objc_msgSend_format(numberValue, v39, v40, v41, v42);
      if (v13)
      {
LABEL_6:
        objc_msgSend_format(v13, v39, v40, v41, v42);
LABEL_11:
        isEqualNotCountingExplicitness = TSCEFormat::isEqualNotCountingExplicitness(&v47, &v46, v40, v41, v42);
        goto LABEL_12;
      }
    }

    else
    {
      memset(&v47, 0, sizeof(v47));
      if (v13)
      {
        goto LABEL_6;
      }
    }

    memset(&v46, 0, sizeof(v46));
    goto LABEL_11;
  }

  isEqualNotCountingExplicitness = 0;
LABEL_13:

  return isEqualNotCountingExplicitness;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSCENumberCellValue;
  return [(TSCECellValue *)&v4 isEqual:a3];
}

- (int64_t)compareToCellValue:(id)a3
{
  v8 = a3;
  v9 = v8[8];
  if (v9 <= 2)
  {
    if (v8[8])
    {
      v12 = v9 == 2;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v9 == 3 || v9 == 7)
  {
    v11 = -1;
    goto LABEL_19;
  }

  if (v9 != 5)
  {
LABEL_17:
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCENumberCellValue compareToCellValue:]", v6, v7);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 138, 0, "Unexpected value type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
LABEL_18:
    v11 = 1;
    goto LABEL_19;
  }

  v13 = objc_msgSend_numberValue(self, v4, v5, v6, v7);
  v18 = objc_msgSend_numberValue(v8, v14, v15, v16, v17);
  v48 = 0;
  v11 = objc_msgSend_compare_outError_(v13, v19, v18, &v48, v20);
  v21 = v48;

  if (v21)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCENumberCellValue compareToCellValue:]", v23, v24);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 127, 0, "Unhandled error here, BUT, this code is apparently dead-code");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

LABEL_19:
  return v11;
}

- (TSCENumberCellValue)initWithArchive:(const void *)a3 locale:(id)a4
{
  v6 = a4;
  v58.receiver = self;
  v58.super_class = TSCENumberCellValue;
  v7 = [(TSCECellValue *)&v58 initWithLocale:v6];
  v11 = v7;
  if (v7)
  {
    v7->super._valueType = 5;
    if (*(a3 + 4))
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, *(a3 + 4), v9, v10);
    }

    else
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, MEMORY[0x277D80740], v9, v10);
    }
    v12 = ;
    v13 = *(a3 + 4);
    if ((v13 & 0x20) != 0)
    {
      v14 = *(a3 + 53);
    }

    else if ((v13 & 0x10) != 0)
    {
      v14 = *(a3 + 52) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    TSCEFormat::TSCEFormat(&v57, v12, v14 & 1);
    TSUDecimal::operator=();
    if ((*(a3 + 16) & 0x40) != 0)
    {
      TSUDecimal::TSUDecimal(&v55);
      v56 = v55;
    }

    else
    {
      TSUDecimal::operator=();
      v56 = v55;
      TSUDecimal::reinterpretDoubleAsDecimal(&v56);
    }

    v19 = *(a3 + 4);
    if (v19)
    {
      v24 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v15, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL, v17, v18);
      v28 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v25, v24, v26, v27);
      v29 = [TSCENumberValue alloc];
      v31 = objc_msgSend_initWithDecimal_format_baseUnit_(v29, v30, &v56, &v57, v28);
      numberValue = v11->_numberValue;
      v11->_numberValue = v31;
    }

    else
    {
      if ((v19 & 8) != 0)
      {
        if (objc_msgSend_formatType(v12, v15, v16, v17, v18) == 268 && (*(a3 + 12) == 6 || (objc_msgSend_asDurationFormat(v12, v33, v34, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_useAutomaticUnits(v37, v38, v39, v40, v41), v37, v42)))
        {
          v43 = objc_msgSend_asDurationFormat(v12, v33, v34, v35, v36);
          TSUDecimal::doubleValue(&v56);
          v48 = objc_msgSend_durationUnitLargestWithTimeInterval_(v43, v44, v45, v46, v47);
          v49 = sub_221387C78(v48);

          v50 = [TSCENumberValue alloc];
          v23 = objc_msgSend_initWithDecimal_format_baseUnit_(v50, v51, &v56, &v57, v49);
        }

        else
        {
          v52 = [TSCENumberValue alloc];
          v23 = objc_msgSend_initWithDecimal_format_baseUnit_(v52, v53, &v56, &v57, *(a3 + 24));
        }
      }

      else
      {
        v20 = [TSCENumberValue alloc];
        v23 = objc_msgSend_initWithDecimal_format_(v20, v21, &v56, &v57, v22);
      }

      v24 = v11->_numberValue;
      v11->_numberValue = v23;
    }
  }

  return v11;
}

- (void)setPopulatedCustomFormat:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasUnits(self->_numberValue, v5, v6, v7, v8) && objc_msgSend_dimension(self->_numberValue, v9, v10, v11, v12) != 4)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCENumberCellValue setPopulatedCustomFormat:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 198, 0, "Custom formats are only legal for bare numbers and currencies.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (v4)
  {
    v24 = objc_msgSend_format(self, v9, v10, v11, v12);

    if (v24 != v4)
    {
      v25 = v4;
      goto LABEL_13;
    }
  }

  else
  {
    if (objc_msgSend_hasUnits(self->_numberValue, v9, v10, v11, v12) && objc_msgSend_dimension(self->_numberValue, v26, v27, v28, v29) == 4)
    {
      v30 = objc_msgSend_unit(self->_numberValue, v26, v27, v28, v29);
      v34 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v31, v30, v32, v33);
      v25 = objc_msgSend_defaultCurrencyFormatWithCurrencyCode_(MEMORY[0x277D80640], v35, v34, v36, v37);

      if (!v25)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ((objc_msgSend_hasUnits(self->_numberValue, v26, v27, v28, v29) & 1) == 0)
    {
      v25 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v38, 256, 0, v39);
      if (v25)
      {
LABEL_13:
        v40 = [TSCENumberValue alloc];
        v45 = objc_msgSend_rawDecimalValue(self->_numberValue, v41, v42, v43, v44);
        TSCEFormat::TSCEFormat(&v54, v25, 0);
        v50 = objc_msgSend_unit(self->_numberValue, v46, v47, v48, v49);
        v52 = objc_msgSend_initWithDecimal_format_baseUnit_(v40, v51, v45, &v54, v50);
        numberValue = self->_numberValue;
        self->_numberValue = v52;
      }
    }
  }

LABEL_14:
}

- (void)encodeToArchive:(void *)a3
{
  objc_msgSend_rawDoubleValue(self->_numberValue, a2, a3, v3, v4);
  *(a3 + 4) |= 4u;
  *(a3 + 5) = v7;
  v61 = *objc_msgSend_rawDecimalValue(self->_numberValue, v8, v9, v10, v11);
  v12 = TSUDecimal::low(&v61);
  *(a3 + 4) |= 0x40u;
  *(a3 + 7) = v12;
  v13 = TSUDecimal::high(&v61);
  *(a3 + 4) |= 0x80u;
  *(a3 + 8) = v13;
  v18 = objc_msgSend_unit(self->_numberValue, v14, v15, v16, v17);
  *(a3 + 4) |= 8u;
  *(a3 + 12) = v18;
  if (objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v19, v18, v20, v21) == 4)
  {
    v26 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v22, v18, v24, v25);
    v31 = v26;
    if (v26)
    {
      v32 = objc_msgSend_tsp_protobufString(v26, v27, v28, v29, v30);
      sub_2213D0BD4(a3, v32);
    }

    else
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCENumberCellValue encodeToArchive:]", v29, v30);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v36, v37);
      v43 = objc_msgSend_locale(self->super._locale, v39, v40, v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v44, v34, v38, 240, 0, "Expected a currency code for unit %d, locale:%@", v18, v43);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }
  }

  v51 = objc_msgSend_format(self, v22, v23, v24, v25);
  *(a3 + 4) |= 2u;
  v52 = *(a3 + 4);
  if (!v52)
  {
    v53 = *(a3 + 1);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x223DA02D0](v53);
    *(a3 + 4) = v52;
  }

  objc_msgSend_encodeToArchive_archivingCustomFormats_(v51, v49, v52, 1, v50);

  numberValue = self->_numberValue;
  if (numberValue)
  {
    objc_msgSend_format(numberValue, v54, v55, v56, v57);
    v59 = v60 == 1;
  }

  else
  {
    v59 = 0;
  }

  *(a3 + 4) |= 0x20u;
  *(a3 + 53) = v59;
}

@end