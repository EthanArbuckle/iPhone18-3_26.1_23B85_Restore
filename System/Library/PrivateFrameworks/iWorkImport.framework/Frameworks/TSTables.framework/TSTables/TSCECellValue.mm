@interface TSCECellValue
+ (TSCECellValue)cellValueWithArchive:(const void *)a3 locale:(id)a4;
+ (id)newCellValueFromTSCEValue:(id)a3 withLocale:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCellValue:(id)a3;
- (TSCECellValue)initWithLocale:(id)a3;
- (id)canonicalKeyString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)a3;
- (unint64_t)hash;
- (void)encodeCellValueToArchive:(void *)a3;
- (void)updateWithCustomFormatList:(id)a3;
@end

@implementation TSCECellValue

- (TSCECellValue)initWithLocale:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCECellValue;
  v6 = [(TSCECellValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, a3);
  }

  return v7;
}

+ (id)newCellValueFromTSCEValue:(id)a3 withLocale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = objc_msgSend_nativeType(v5, v7, v8, v9, v10);
  if (v15 <= 4)
  {
    if (v15 == 2)
    {
      v46 = objc_msgSend_BOOLean(v5, v11, v12, v13, v14);
      if (v5)
      {
        objc_msgSend_format(v5, v42, v43, v44, v45);
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
      }

      v16 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v42, v46, &v71, v45);
      v55 = [TSCEBooleanCellValue alloc];
      v20 = objc_msgSend_initWithBooleanValue_locale_(v55, v56, v16, v6, v57);
      goto LABEL_22;
    }

    if (v15 == 3)
    {
      v25 = objc_msgSend_date(v5, v11, v12, v13, v14);
      if (v5)
      {
        objc_msgSend_format(v5, v21, v22, v23, v24);
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
      }

      v62 = objc_msgSend_dateValue_format_(TSCEDateValue, v21, v25, &v71, v24);

      v63 = [TSCEDateCellValue alloc];
      v51 = objc_msgSend_initWithDateValue_locale_(v63, v64, v62, v6, v65);

      if (!v51)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }

    goto LABEL_17;
  }

  if (v15 == 5)
  {
    v16 = objc_msgSend_asNumberValue(v5, v11, v12, v13, v14);
    v26 = [TSCENumberCellValue alloc];
    v20 = objc_msgSend_initWithNumberValue_locale_(v26, v27, v16, v6, v28);
    goto LABEL_22;
  }

  if (v15 == 7)
  {
    if (!objc_msgSend_isRichTextValue(v5, v11, v12, v13, v14))
    {
      v16 = objc_msgSend_asStringValue(v5, v29, v30, v31, v32);
      v52 = [TSCEStringCellValue alloc];
      v20 = objc_msgSend_initWithStringValue_locale_(v52, v53, v16, v6, v54);
      goto LABEL_22;
    }

    v16 = objc_msgSend_asRichTextValue(v5, v29, v30, v31, v32);
    v41 = objc_msgSend_asRawString(v16, v33, v34, v35, v36);
    if (v5)
    {
      objc_msgSend_format(v5, v37, v38, v39, v40);
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    v67 = objc_msgSend_stringValue_format_(TSCEStringValue, v37, v41, &v71, v40);

    v68 = [TSCEStringCellValue alloc];
    v51 = objc_msgSend_initWithStringValue_locale_(v68, v69, v67, v6, v70);

    goto LABEL_23;
  }

  if (v15 != 9)
  {
LABEL_17:
    v47 = [TSCENilCellValue alloc];
    v51 = objc_msgSend_initWithLocale_(v47, v48, v6, v49, v50);
    if (!v51)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v16 = objc_msgSend_asErrorValue(v5, v11, v12, v13, v14);
  if (v16)
  {
    v17 = [TSCEErrorCellValue alloc];
    v20 = objc_msgSend_initWithErrorValue_locale_(v17, v18, v16, v6, v19);
LABEL_22:
    v51 = v20;
    goto LABEL_23;
  }

  v51 = 0;
LABEL_23:

  if (!v51)
  {
LABEL_24:
    v58 = [TSCENilCellValue alloc];
    v51 = objc_msgSend_initWithLocale_(v58, v59, v6, v60, v61);
  }

LABEL_28:

  return v51;
}

- (id)tsceValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue tsceValue]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v5, v9, 103, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v24 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v23, v20, "[TSCECellValue tsceValue]");
  v26 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v25, *MEMORY[0x277CBE658], v24, 0);
  v27 = v26;

  objc_exception_throw(v26);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue copyWithZone:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v8, v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v13, v6, v10, 108, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v25 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v23, v24, v21, "[TSCECellValue copyWithZone:]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v26, *MEMORY[0x277CBE658], v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (id)displayString
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue displayString]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v8, v9);
  v11 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 113, 0, "Children of TSCECellValue should implement %@.", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return &stru_2834BADA0;
}

- (id)canonicalKeyString
{
  v6 = objc_msgSend_tsceValue(self, a2, v2, v3, v4);
  v11 = objc_msgSend_locale(self, v7, v8, v9, v10);
  v15 = objc_msgSend_canonicalKeyStringForLocale_(v6, v12, v11, v13, v14);

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"abstract_superclass_canonicalKeyString";
  }

  return v16;
}

- (id)format
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue format]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v8, v9);
  v11 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v10, 128, 0, "Children of TSCECellValue should implement %@.", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (BOOL)isEqualToCellValue:(id)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue isEqualToCellValue:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v9, v10);
  v12 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 133, 0, "Children of TSCECellValue should implement %@.", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  return 0;
}

- (unint64_t)hash
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue hash]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v7, v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v12, v5, v9, 138, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v24 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v23, v20, "[TSCECellValue hash]");
  v26 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v25, *MEMORY[0x277CBE658], v24, 0);
  v27 = v26;

  objc_exception_throw(v26);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToCellValue = objc_msgSend_isEqualToCellValue_(self, v5, v4, v6, v7);
  }

  else
  {
    isEqualToCellValue = 0;
  }

  return isEqualToCellValue;
}

- (int64_t)compareToCellValue:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCECellValue compareToCellValue:]", v6, v7);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v10, v11);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v15, v8, v12, 151, 0, "Abstract method not overridden by %{public}@", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v27 = objc_msgSend_stringWithFormat_(v21, v24, @"Abstract method not overridden by %@: %s", v25, v26, v23, "[TSCECellValue compareToCellValue:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

+ (TSCECellValue)cellValueWithArchive:(const void *)a3 locale:(id)a4
{
  v5 = a4;
  v6 = 0;
  v7 = *(a3 + 16);
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = [TSCEDateCellValue alloc];
        v11 = (a3 + 32);
        v12 = &TSCE::_DateCellValueArchive_default_instance_;
        break;
      case 4:
        v17 = [TSCENumberCellValue alloc];
        if (*(a3 + 5))
        {
          v16 = objc_msgSend_initWithArchive_locale_(v17, v18, *(a3 + 5), v5, v19);
        }

        else
        {
          v16 = objc_msgSend_initWithArchive_locale_(v17, v18, &TSCE::_NumberCellValueArchive_default_instance_, v5, v19);
        }

        goto LABEL_23;
      case 5:
        v8 = [TSCEStringCellValue alloc];
        v11 = (a3 + 48);
        v12 = &TSCE::_StringCellValueArchive_default_instance_;
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v7 == 1)
  {
    if ((*(a3 + 16) & 0x10) != 0)
    {
      v8 = [TSCEErrorCellValue alloc];
      v11 = (a3 + 56);
      v12 = &TSCE::_ErrorCellValueArchive_default_instance_;
LABEL_20:
      v24 = *v11;
      if (v24)
      {
        v16 = objc_msgSend_initWithArchive_locale_(v8, v9, v24, v5, v10);
      }

      else
      {
        v16 = objc_msgSend_initWithArchive_locale_(v8, v9, v12, v5, v10);
      }

      goto LABEL_23;
    }

    v20 = [TSCENilCellValue alloc];
    v16 = objc_msgSend_initWithLocale_(v20, v21, v5, v22, v23);
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_24;
    }

    v13 = [TSCEBooleanCellValue alloc];
    if (*(a3 + 3))
    {
      v16 = objc_msgSend_initWithArchive_locale_(v13, v14, *(a3 + 3), v5, v15);
    }

    else
    {
      v16 = objc_msgSend_initWithArchive_locale_(v13, v14, &TSCE::_BooleanCellValueArchive_default_instance_, v5, v15);
    }
  }

LABEL_23:
  v6 = v16;
LABEL_24:

  return v6;
}

- (void)updateWithCustomFormatList:(id)a3
{
  v8 = a3;
  valueType = self->_valueType;
  v10 = valueType > 7;
  v11 = (1 << valueType) & 0xA8;
  if (!v10 && v11 != 0)
  {
    v13 = objc_msgSend_tsceValue(self, v4, v5, v6, v7);
    v18 = v13;
    if (!v13)
    {
      goto LABEL_22;
    }

    objc_msgSend_format(v13, v14, v15, v16, v17);

    if ((v68 - 270) <= 4 && v68 != 273)
    {
      if (!v8)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCECellValue updateWithCustomFormatList:]", v21, v22);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v26, v27);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 208, 0, "invalid nil value for '%{public}s'", "customFormatList");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
      }

      v34 = objc_msgSend_format(self, v19, v20, v21, v22);
      v18 = objc_msgSend_asCustomFormatWrapper(v34, v35, v36, v37, v38);

      if (!v8 || !v18)
      {
        goto LABEL_22;
      }

      v43 = objc_msgSend_customFormatKey(v18, v39, v40, v41, v42);
      v51 = objc_msgSend_customFormat(v18, v44, v45, v46, v47);
      if (v43)
      {
        v52 = objc_msgSend_customFormatForKey_(v8, v48, v43, v49, v50);
        if (v52)
        {
          v53 = v43;
LABEL_18:
          v57 = objc_alloc(MEMORY[0x277D80650]);
          v62 = objc_msgSend_formatType(v18, v58, v59, v60, v61);
          v64 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v57, v63, v62, v53, v52);
          objc_msgSend_setPopulatedCustomFormat_(self, v65, v64, v66, v67);
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }
      }

      v53 = objc_msgSend_keyForCustomFormat_(v8, v48, v51, v49, v50);
      if (v53)
      {
        v52 = v51;
        if (v52)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v52 = 0;
      }

      v64 = 0;
      objc_msgSend_setPopulatedCustomFormat_(self, v54, 0, v55, v56);
      goto LABEL_21;
    }
  }

LABEL_23:
}

- (void)encodeCellValueToArchive:(void *)a3
{
  valueType = self->_valueType;
  if (valueType > 4)
  {
    switch(valueType)
    {
      case 5u:
        v13 = *(a3 + 4);
        *(a3 + 16) = 4;
        *(a3 + 4) = v13 | 0x24;
        v9 = *(a3 + 5);
        if (!v9)
        {
          v14 = *(a3 + 1);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NumberCellValueArchive>(v14);
          *(a3 + 5) = v9;
        }

        goto LABEL_32;
      case 7u:
        v29 = *(a3 + 4);
        *(a3 + 16) = 5;
        *(a3 + 4) = v29 | 0x28;
        v9 = *(a3 + 6);
        if (!v9)
        {
          v30 = *(a3 + 1);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StringCellValueArchive>(v30);
          *(a3 + 6) = v9;
        }

        goto LABEL_32;
      case 9u:
        v11 = *(a3 + 4);
        *(a3 + 16) = 1;
        *(a3 + 4) = v11 | 0x30;
        v9 = *(a3 + 7);
        if (!v9)
        {
          v12 = *(a3 + 1);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorCellValueArchive>(v12);
          *(a3 + 7) = v9;
        }

        goto LABEL_32;
    }
  }

  else
  {
    if (!self->_valueType)
    {
      *(a3 + 4) |= 0x20u;
      *(a3 + 16) = 1;
      return;
    }

    if (valueType == 2)
    {
      v27 = *(a3 + 4);
      *(a3 + 16) = 2;
      *(a3 + 4) = v27 | 0x21;
      v9 = *(a3 + 3);
      if (!v9)
      {
        v28 = *(a3 + 1);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::BooleanCellValueArchive>(v28);
        *(a3 + 3) = v9;
      }

      goto LABEL_32;
    }

    if (valueType == 3)
    {
      v8 = *(a3 + 4);
      *(a3 + 16) = 3;
      *(a3 + 4) = v8 | 0x22;
      v9 = *(a3 + 4);
      if (!v9)
      {
        v10 = *(a3 + 1);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DateCellValueArchive>(v10);
        *(a3 + 4) = v9;
      }

LABEL_32:

      objc_msgSend_encodeToArchive_(self, a2, v9, v3, v4);
      return;
    }
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue encodeCellValueToArchive:]", v3, v4);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v18, v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 296, 0, "Unexpected value type found in archiving in TSCECellValue");

  v26 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v26, v22, v23, v24, v25);
}

@end