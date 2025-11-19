@interface TSCEDateCellValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCellValue:(id)a3;
- (TSCEDateCellValue)initWithArchive:(const void *)a3 locale:(id)a4;
- (TSCEDateCellValue)initWithDate:(id)a3 locale:(id)a4;
- (TSCEDateCellValue)initWithDateValue:(id)a3 locale:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)a3;
- (void)encodeToArchive:(void *)a3;
- (void)setPopulatedCustomFormat:(id)a3;
@end

@implementation TSCEDateCellValue

- (TSCEDateCellValue)initWithDate:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = TSCEDateCellValue;
  v8 = [(TSCECellValue *)&v16 initWithLocale:v7];
  v12 = v8;
  if (v8)
  {
    v8->super._valueType = 3;
    v13 = objc_msgSend_dateValue_(TSCEDateValue, v9, v6, v10, v11);
    dateValue = v12->_dateValue;
    v12->_dateValue = v13;
  }

  return v12;
}

- (TSCEDateCellValue)initWithDateValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = TSCEDateCellValue;
  v8 = [(TSCECellValue *)&v23 initWithLocale:v7];
  v13 = v8;
  if (v8)
  {
    v8->super._valueType = 3;
    v18 = objc_msgSend_date(v6, v9, v10, v11, v12);
    if (v6)
    {
      objc_msgSend_format(v6, v14, v15, v16, v17);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v19 = objc_msgSend_dateValue_format_(TSCEDateValue, v14, v18, v22, v17);
    dateValue = v13->_dateValue;
    v13->_dateValue = v19;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEDateCellValue alloc];
  dateValue = self->_dateValue;
  v10 = objc_msgSend_locale(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithDateValue_locale_(v4, v11, dateValue, v10, v12);

  return v13;
}

- (id)tsceValue
{
  dateValue = self->_dateValue;
  if (dateValue)
  {
    v6 = dateValue;
  }

  else
  {
    v6 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3, v4);
  }

  return v6;
}

- (id)format
{
  dateValue = self->_dateValue;
  if (dateValue)
  {
    objc_msgSend_format(dateValue, a2, v2, v3, v4);
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
    v13 = objc_msgSend_defaultFormatWithFormatType_locale_(v14, v16, 261, v15, v17);
  }

  return v13;
}

- (id)displayString
{
  dateValue = self->_dateValue;
  v6 = objc_msgSend_locale(self, a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(dateValue, v7, v6, v8, v9);

  return v10;
}

- (BOOL)isEqualToCellValue:(id)a3
{
  v4 = a3;
  if (objc_msgSend_valueType(v4, v5, v6, v7, v8) != 3)
  {
    isEqualToDate = 0;
    goto LABEL_12;
  }

  v17 = objc_msgSend_dateValue(v4, v9, v10, v11, v12);
  dateValue = self->_dateValue;
  if (!dateValue)
  {
    memset(&v35, 0, sizeof(v35));
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(&v34, 0, sizeof(v34));
    goto LABEL_8;
  }

  objc_msgSend_format(dateValue, v13, v14, v15, v16);
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_msgSend_format(v17, v13, v14, v15, v16);
LABEL_8:
  if (TSCEFormat::isEqualNotCountingExplicitness(&v35, &v34, v14, v15, v16))
  {
    v24 = objc_msgSend_asDate(self->_dateValue, v20, v21, v22, v23);
    v29 = objc_msgSend_asDate(v17, v25, v26, v27, v28);
    isEqualToDate = objc_msgSend_isEqualToDate_(v24, v30, v29, v31, v32);
  }

  else
  {
    isEqualToDate = 0;
  }

LABEL_12:
  return isEqualToDate;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSCEDateCellValue;
  return [(TSCECellValue *)&v4 isEqual:a3];
}

- (int64_t)compareToCellValue:(id)a3
{
  v8 = a3;
  v9 = v8[8];
  v10 = 1;
  if (v9 <= 2)
  {
    if (v8[8])
    {
      v30 = v9 == 2;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v9 == 7)
    {
      v10 = -1;
      goto LABEL_12;
    }

    if (v9 != 5)
    {
      if (v9 == 3)
      {
        v11 = objc_msgSend_dateValue(self, v4, v5, v6, v7);
        v16 = objc_msgSend_asDate(v11, v12, v13, v14, v15);
        v21 = objc_msgSend_dateValue(v8, v17, v18, v19, v20);
        v26 = objc_msgSend_asDate(v21, v22, v23, v24, v25);
        v10 = objc_msgSend_compare_(v16, v27, v26, v28, v29);

        goto LABEL_12;
      }

LABEL_10:
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEDateCellValue compareToCellValue:]", v6, v7);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateCellValue.mm", v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 115, 0, "Unexpected value type found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      v10 = 1;
    }
  }

LABEL_12:

  return v10;
}

- (TSCEDateCellValue)initWithArchive:(const void *)a3 locale:(id)a4
{
  v24.receiver = self;
  v24.super_class = TSCEDateCellValue;
  v5 = [(TSCECellValue *)&v24 initWithLocale:a4];
  v9 = v5;
  if (v5)
  {
    v5->super._valueType = 3;
    if (*(a3 + 3))
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a3 + 3), v7, v8);
    }

    else
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, MEMORY[0x277D80740], v7, v8);
    }
    v10 = ;
    v11 = *(a3 + 4);
    if ((v11 & 8) != 0)
    {
      v12 = *(a3 + 41);
    }

    else if ((v11 & 4) != 0)
    {
      v12 = *(a3 + 40) ^ 1;
    }

    else
    {
      v12 = 0;
    }

    TSCEFormat::TSCEFormat(&v23, v10, v12 & 1);
    v17 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v13, v14, v15, v16, *(a3 + 4));
    v20 = objc_msgSend_dateValue_format_(TSCEDateValue, v18, v17, &v23, v19);
    dateValue = v9->_dateValue;
    v9->_dateValue = v20;
  }

  return v9;
}

- (void)setPopulatedCustomFormat:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v15 = MEMORY[0x277D80680];
    v16 = objc_msgSend_locale(self, v5, v6, v7, v8);
    v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v17, 261, v16, v18);
  }

  v19 = objc_msgSend_format(self, v10, v11, v12, v13);

  if (v14 != v19)
  {
    v24 = objc_msgSend_asDate(self->_dateValue, v20, v21, v22, v23);
    TSCEFormat::TSCEFormat(&v29, v14, 0);
    v27 = objc_msgSend_dateValue_format_(TSCEDateValue, v25, v24, &v29, v26);
    dateValue = self->_dateValue;
    self->_dateValue = v27;
  }
}

- (void)encodeToArchive:(void *)a3
{
  v7 = objc_msgSend_asDate(self->_dateValue, a2, a3, v3, v4);
  objc_msgSend_timeIntervalSinceReferenceDate(v7, v8, v9, v10, v11);
  *(a3 + 4) |= 2u;
  *(a3 + 4) = v12;

  v19 = objc_msgSend_format(self, v13, v14, v15, v16);
  *(a3 + 4) |= 1u;
  v20 = *(a3 + 3);
  if (!v20)
  {
    v21 = *(a3 + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA02D0](v21);
    *(a3 + 3) = v20;
  }

  objc_msgSend_encodeToArchive_archivingCustomFormats_(v19, v17, v20, 1, v18);

  dateValue = self->_dateValue;
  if (dateValue)
  {
    objc_msgSend_format(dateValue, v22, v23, v24, v25);
    v27 = v28 == 1;
  }

  else
  {
    v27 = 0;
  }

  *(a3 + 4) |= 8u;
  *(a3 + 41) = v27;
}

@end