@interface TSCEStringCellValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCellValue:(id)a3;
- (TSCEStringCellValue)initWithArchive:(const void *)a3 locale:(id)a4;
- (TSCEStringCellValue)initWithString:(id)a3 locale:(id)a4;
- (TSCEStringCellValue)initWithStringValue:(id)a3 locale:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)a3;
- (void)encodeToArchive:(void *)a3;
- (void)setPopulatedCustomFormat:(id)a3;
@end

@implementation TSCEStringCellValue

- (TSCEStringCellValue)initWithString:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = TSCEStringCellValue;
  v11 = [(TSCECellValue *)&v29 initWithLocale:v7];
  if (v11)
  {
    if (!v6)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEStringCellValue initWithString:locale:]", v9, v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringCellValue.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 28, 0, "Creating a TSCEStringCellValue with a nil string.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v11->super._valueType = 7;
    TSCEFormat::TSCEFormat(v28, 260);
    v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v23, v6, v28, v24);
    stringValue = v11->_stringValue;
    v11->_stringValue = v25;
  }

  return v11;
}

- (TSCEStringCellValue)initWithStringValue:(id)a3 locale:(id)a4
{
  v6 = a3;
  v34.receiver = self;
  v34.super_class = TSCEStringCellValue;
  v7 = [(TSCECellValue *)&v34 initWithLocale:a4];
  v12 = v7;
  if (v7)
  {
    v7->super._valueType = 7;
    if (v6)
    {
      objc_msgSend_format(v6, v8, v9, v10, v11);
      if (LODWORD(v33[0].super_class))
      {
LABEL_7:
        v17 = objc_msgSend_asRawString(v6, v13, v14, v15, v16);
        isRegex = objc_msgSend_isRegex(v6, v18, v19, v20, v21);
        isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v6, v23, v24, v25, v26);
        v29 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v28, v17, v33, isRegex, isCaseSensitiveRegex, 0);
        stringValue = v12->_stringValue;
        v12->_stringValue = v29;

        goto LABEL_8;
      }
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    TSCEFormat::TSCEFormat(v32, 260);
    TSCEFormat::operator=(v33, v32);
    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

- (id)tsceValue
{
  stringValue = self->_stringValue;
  if (stringValue)
  {
    v6 = stringValue;
  }

  else
  {
    v6 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3, v4);
  }

  return v6;
}

- (id)format
{
  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_format(stringValue, a2, v2, v3, v4);
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
    v10 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v7, 260, 0, v8);
  }

  v11 = v10;

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEStringCellValue alloc];
  stringValue = self->_stringValue;
  v10 = objc_msgSend_locale(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithStringValue_locale_(v4, v11, stringValue, v10, v12);

  return v13;
}

- (BOOL)isEqualToCellValue:(id)a3
{
  v4 = a3;
  if (objc_msgSend_valueType(v4, v5, v6, v7, v8) != 7)
  {
    LOBYTE(v19) = 0;
    goto LABEL_16;
  }

  v17 = objc_msgSend_stringValue(v4, v9, v10, v11, v12);
  stringValue = self->_stringValue;
  if (!stringValue)
  {
    memset(&v53, 0, sizeof(v53));
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(&v52, 0, sizeof(v52));
    goto LABEL_8;
  }

  objc_msgSend_format(stringValue, v13, v14, v15, v16);
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_msgSend_format(v17, v13, v14, v15, v16);
LABEL_8:
  if (TSCEFormat::isEqualNotCountingExplicitness(&v53, &v52, v14, v15, v16))
  {
    v24 = objc_msgSend_asRawString(self->_stringValue, v20, v21, v22, v23);
    v29 = objc_msgSend_asRawString(v17, v25, v26, v27, v28);
    if ((objc_msgSend_isEqualToString_(v24, v30, v29, v31, v32) & 1) != 0 && (isRegex = objc_msgSend_isRegex(self->_stringValue, v33, v34, v35, v36), isRegex == objc_msgSend_isRegex(v17, v38, v39, v40, v41)))
    {
      isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(self->_stringValue, v42, v43, v44, v45);
      v19 = isCaseSensitiveRegex ^ objc_msgSend_isCaseSensitiveRegex(v17, v47, v48, v49, v50) ^ 1;
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

LABEL_16:
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSCEStringCellValue;
  return [(TSCECellValue *)&v4 isEqual:a3];
}

- (int64_t)compareToCellValue:(id)a3
{
  v8 = a3;
  v9 = v8[8];
  if (v9 > 7)
  {
    goto LABEL_6;
  }

  v10 = 1;
  if (((1 << v9) & 0x2D) == 0)
  {
    if (v9 == 7)
    {
      v12 = objc_msgSend_stringValue(self, v4, v5, v6, v7);
      v17 = objc_msgSend_asRawString(v12, v13, v14, v15, v16);
      v22 = objc_msgSend_stringValue(v8, v18, v19, v20, v21);
      v27 = objc_msgSend_asRawString(v22, v23, v24, v25, v26);
      v10 = objc_msgSend_compare_(v17, v28, v27, v29, v30);

      goto LABEL_3;
    }

LABEL_6:
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEStringCellValue compareToCellValue:]", v6, v7);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringCellValue.mm", v34, v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 117, 0, "Unexpected value type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v10 = 1;
  }

LABEL_3:

  return v10;
}

- (TSCEStringCellValue)initWithArchive:(const void *)a3 locale:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = TSCEStringCellValue;
  v7 = [(TSCECellValue *)&v26 initWithLocale:v6];
  v11 = v7;
  if (v7)
  {
    v7->super._valueType = 7;
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
    if ((v13 & 8) != 0)
    {
      v14 = *(a3 + 41);
    }

    else if ((v13 & 4) != 0)
    {
      v14 = *(a3 + 40) ^ 1;
    }

    else
    {
      v14 = 0;
    }

    TSCEFormat::TSCEFormat(&v25, v12, v14 & 1);
    v15 = *(a3 + 42);
    v16 = *(a3 + 43);
    v20 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v17, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL, v18, v19);
    v22 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v21, v20, &v25, v15, v16, 0);
    stringValue = v11->_stringValue;
    v11->_stringValue = v22;
  }

  return v11;
}

- (void)encodeToArchive:(void *)a3
{
  v7 = objc_msgSend_asRawString(self->_stringValue, a2, a3, v3, v4);
  v12 = objc_msgSend_tsp_protobufString(v7, v8, v9, v10, v11);
  if (v12)
  {
    sub_221184204(a3, v12);
  }

  else
  {
    sub_221184204(a3, "");
    v17 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEStringCellValue encodeToArchive:]", v19, v20);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringCellValue.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v26, v21, v25, 164, 0, "Avoid using nil to mean empty string in a TSCEStringValue, string is: %@", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v33 = objc_msgSend_format(self, v13, v14, v15, v16);
  *(a3 + 4) |= 2u;
  v34 = *(a3 + 4);
  if (!v34)
  {
    v35 = *(a3 + 1);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA02D0](v35);
    *(a3 + 4) = v34;
  }

  objc_msgSend_encodeToArchive_archivingCustomFormats_(v33, v31, v34, 1, v32);

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_format(stringValue, v36, v37, v38, v39);
    v41 = v48 == 1;
  }

  else
  {
    v41 = 0;
  }

  *(a3 + 4) |= 8u;
  *(a3 + 41) = v41;
  isRegex = objc_msgSend_isRegex(self->_stringValue, v36, v37, v38, v39);
  *(a3 + 4) |= 0x10u;
  *(a3 + 42) = isRegex;
  isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(self->_stringValue, v43, v44, v45, v46);
  *(a3 + 4) |= 0x20u;
  *(a3 + 43) = isCaseSensitiveRegex;
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
    v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v17, 260, v16, v18);
  }

  v19 = objc_msgSend_format(self, v10, v11, v12, v13);

  if (v14 != v19)
  {
    v24 = objc_msgSend_asRawString(self->_stringValue, v20, v21, v22, v23);
    TSCEFormat::TSCEFormat(&v38, v14, 0);
    isRegex = objc_msgSend_isRegex(self->_stringValue, v25, v26, v27, v28);
    isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(self->_stringValue, v30, v31, v32, v33);
    v36 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v35, v24, &v38, isRegex, isCaseSensitiveRegex, 0);
    stringValue = self->_stringValue;
    self->_stringValue = v36;
  }
}

@end