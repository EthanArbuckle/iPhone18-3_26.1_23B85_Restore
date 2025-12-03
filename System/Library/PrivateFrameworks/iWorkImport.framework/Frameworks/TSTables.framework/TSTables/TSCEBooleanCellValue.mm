@interface TSCEBooleanCellValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCEBooleanCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCEBooleanCellValue)initWithBoolean:(BOOL)boolean locale:(id)locale;
- (TSCEBooleanCellValue)initWithBooleanValue:(id)value locale:(id)locale;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)value;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSCEBooleanCellValue

- (TSCEBooleanCellValue)initWithBoolean:(BOOL)boolean locale:(id)locale
{
  booleanCopy = boolean;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = TSCEBooleanCellValue;
  v7 = [(TSCECellValue *)&v15 initWithLocale:localeCopy];
  v11 = v7;
  if (v7)
  {
    v7->super._valueType = 2;
    v12 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v8, booleanCopy, v9, v10);
    BOOLeanValue = v11->_BOOLeanValue;
    v11->_BOOLeanValue = v12;
  }

  return v11;
}

- (TSCEBooleanCellValue)initWithBooleanValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v23.receiver = self;
  v23.super_class = TSCEBooleanCellValue;
  v8 = [(TSCECellValue *)&v23 initWithLocale:localeCopy];
  v13 = v8;
  if (v8)
  {
    v8->super._valueType = 2;
    v18 = objc_msgSend_asBool(valueCopy, v9, v10, v11, v12);
    if (valueCopy)
    {
      objc_msgSend_format(valueCopy, v14, v15, v16, v17);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v19 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v14, v18, v22, v17);
    BOOLeanValue = v13->_BOOLeanValue;
    v13->_BOOLeanValue = v19;
  }

  return v13;
}

- (id)format
{
  BOOLeanValue = self->_BOOLeanValue;
  if (BOOLeanValue)
  {
    objc_msgSend_format(BOOLeanValue, a2, v2, v3, v4);
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v6 = TSCEFormat::tskFormat(&v13, a2, v2, v3, v4);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v7, 1, 0, v8);
  }

  v11 = v10;

  return v11;
}

- (id)displayString
{
  BOOLeanValue = self->_BOOLeanValue;
  v6 = objc_msgSend_locale(self, a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(BOOLeanValue, v7, v6, v8, v9);

  return v10;
}

- (id)tsceValue
{
  BOOLeanValue = self->_BOOLeanValue;
  if (BOOLeanValue)
  {
    v6 = BOOLeanValue;
  }

  else
  {
    v6 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3, v4);
  }

  return v6;
}

- (BOOL)isEqualToCellValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_valueType(valueCopy, v5, v6, v7, v8) == 2)
  {
    v13 = objc_msgSend_BOOLeanValue(valueCopy, v9, v10, v11, v12);
    v18 = objc_msgSend_asBool(self->_BOOLeanValue, v14, v15, v16, v17);
    if (v18 != objc_msgSend_asBool(v13, v19, v20, v21, v22))
    {
      isEqualNotCountingExplicitness = 0;
LABEL_11:

      goto LABEL_12;
    }

    BOOLeanValue = self->_BOOLeanValue;
    if (BOOLeanValue)
    {
      objc_msgSend_format(BOOLeanValue, v23, v24, v25, v26);
      if (v13)
      {
LABEL_7:
        objc_msgSend_format(v13, v23, v24, v25, v26);
LABEL_10:
        isEqualNotCountingExplicitness = TSCEFormat::isEqualNotCountingExplicitness(&v31, &v30, v24, v25, v26);
        goto LABEL_11;
      }
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
      if (v13)
      {
        goto LABEL_7;
      }
    }

    memset(&v30, 0, sizeof(v30));
    goto LABEL_10;
  }

  isEqualNotCountingExplicitness = 0;
LABEL_12:

  return isEqualNotCountingExplicitness;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSCEBooleanCellValue;
  return [(TSCECellValue *)&v4 isEqual:equal];
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v9 = valueCopy[8];
  if (v9 <= 2)
  {
    if (!valueCopy[8])
    {
LABEL_19:
      v12 = 1;
      goto LABEL_20;
    }

    if (v9 != 2)
    {
LABEL_18:
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEBooleanCellValue compareToCellValue:]", v6, v7);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanCellValue.mm", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 121, 0, "Unexpected value type found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      goto LABEL_19;
    }

    v13 = objc_msgSend_asBool(self->_BOOLeanValue, v4, v5, v6, v7);
    v18 = objc_msgSend_BOOLeanValue(valueCopy, v14, v15, v16, v17);
    v23 = objc_msgSend_asBool(v18, v19, v20, v21, v22);

    v24 = 1;
    if (!v13)
    {
      v24 = -1;
    }

    if (v13 != v23)
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (v9 != 3 && v9 != 5 && v9 != 7)
    {
      goto LABEL_18;
    }

    v12 = -1;
  }

LABEL_20:

  return v12;
}

- (TSCEBooleanCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  v18.receiver = self;
  v18.super_class = TSCEBooleanCellValue;
  v5 = [(TSCECellValue *)&v18 initWithLocale:locale];
  v10 = v5;
  if (v5)
  {
    v5->super._valueType = 2;
    if (*(archive + 16))
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(archive + 3), v8, v9);
    }

    else
    {
      objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v6, v7, v8, v9);
    }
    v11 = ;
    TSCEFormat::TSCEFormat(&v17, v11, *(archive + 33) & ((*(archive + 4) & 4u) >> 2));
    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v12, *(archive + 32), &v17, v13);
    BOOLeanValue = v10->_BOOLeanValue;
    v10->_BOOLeanValue = v14;
  }

  return v10;
}

- (void)encodeToArchive:(void *)archive
{
  v7 = objc_msgSend_asBool(self->_BOOLeanValue, a2, archive, v3, v4);
  *(archive + 4) |= 2u;
  *(archive + 32) = v7;
  v15 = objc_msgSend_format(self, v8, v9, v10, v11);
  *(archive + 4) |= 1u;
  v16 = *(archive + 3);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA02D0](v17);
    *(archive + 3) = v16;
  }

  objc_msgSend_encodeToArchive_(v15, v12, v16, v13, v14);

  BOOLeanValue = self->_BOOLeanValue;
  if (BOOLeanValue)
  {
    objc_msgSend_format(BOOLeanValue, v18, v19, v20, v21);
    v23 = v24 == 1;
  }

  else
  {
    v23 = 0;
  }

  *(archive + 4) |= 4u;
  *(archive + 33) = v23;
}

@end