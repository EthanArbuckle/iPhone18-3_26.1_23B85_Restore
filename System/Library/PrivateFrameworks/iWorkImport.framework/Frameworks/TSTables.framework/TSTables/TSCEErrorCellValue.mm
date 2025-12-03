@interface TSCEErrorCellValue
- (BOOL)isEqualToCellValue:(id)value;
- (TSCEErrorCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCEErrorCellValue)initWithErrorValue:(id)value locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)tsceValue;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSCEErrorCellValue

- (TSCEErrorCellValue)initWithErrorValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v16.receiver = self;
  v16.super_class = TSCEErrorCellValue;
  v8 = [(TSCECellValue *)&v16 initWithLocale:localeCopy];
  v8->super._valueType = 9;
  v13 = objc_msgSend_copy(valueCopy, v9, v10, v11, v12);
  errorValue = v8->_errorValue;
  v8->_errorValue = v13;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEErrorCellValue alloc];
  errorValue = self->_errorValue;
  v10 = objc_msgSend_locale(self, v6, v7, v8, v9);
  v13 = objc_msgSend_initWithErrorValue_locale_(v4, v11, errorValue, v10, v12);

  return v13;
}

- (id)tsceValue
{
  errorValue = self->_errorValue;
  if (errorValue)
  {
    v6 = errorValue;
  }

  else
  {
    v6 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3, v4);
  }

  return v6;
}

- (id)description
{
  v5 = objc_msgSend_error(self->_errorValue, a2, v2, v3, v4);
  v6 = MEMORY[0x277CCACA8];
  v11 = objc_msgSend_errorType(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_errorTypeKey(v5, v12, v13, v14, v15);
  v20 = objc_msgSend_stringWithFormat_(v6, v17, @"TSCEErrorValue (type %d %@)", v18, v19, v11, v16);

  return v20;
}

- (BOOL)isEqualToCellValue:(id)value
{
  v107 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v99 = valueCopy;
  if (valueCopy && objc_msgSend_valueType(valueCopy, v5, v6, v7, v8) == 9)
  {
    v13 = objc_msgSend_error(self->_errorValue, v9, v10, v11, v12);
    v18 = objc_msgSend_errorDictionary(v13, v14, v15, v16, v17);

    v23 = objc_msgSend_errorValue(v99, v19, v20, v21, v22);
    v28 = objc_msgSend_error(v23, v24, v25, v26, v27);
    v101 = objc_msgSend_errorDictionary(v28, v29, v30, v31, v32);

    v33 = MEMORY[0x277CBEB98];
    v38 = objc_msgSend_allKeys(v18, v34, v35, v36, v37);
    v42 = objc_msgSend_setWithArray_(v33, v39, v38, v40, v41);
    v47 = objc_msgSend_allKeys(v101, v43, v44, v45, v46);
    v51 = objc_msgSend_setByAddingObjectsFromArray_(v42, v48, v47, v49, v50);

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v51;
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v102, v106, 16);
    if (v53)
    {
      v54 = *v103;
      while (2)
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v103 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v102 + 1) + 8 * i);
          objc_opt_class();
          v60 = objc_msgSend_objectForKeyedSubscript_(v18, v57, v56, v58, v59);
          v61 = TSUDynamicCast();
          v62 = v61 == 0;

          if (v62 || (objc_opt_class(), objc_msgSend_objectForKeyedSubscript_(v18, v63, v56, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v101, v68, v56, v69, v70), v71 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v67, v72, v71, v73, v74), v71, v67, v66, (isEqualToString & 1) != 0))
          {
            objc_opt_class();
            v79 = objc_msgSend_objectForKeyedSubscript_(v18, v76, v56, v77, v78);
            v80 = TSUDynamicCast();
            v81 = v80 == 0;

            if (v81)
            {
              continue;
            }

            objc_opt_class();
            v86 = objc_msgSend_objectForKeyedSubscript_(v101, v83, v56, v84, v85);
            v87 = TSUDynamicCast();

            if (v87)
            {
              objc_opt_class();
              v91 = objc_msgSend_objectForKeyedSubscript_(v18, v88, v56, v89, v90);
              v92 = TSUDynamicCast();
              isEqualToNumber = objc_msgSend_isEqualToNumber_(v92, v93, v87, v94, v95);

              if (isEqualToNumber)
              {
                continue;
              }
            }
          }

          v97 = 0;
          goto LABEL_19;
        }

        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v102, v106, 16);
        v97 = 1;
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v97 = 1;
    }

LABEL_19:
  }

  else
  {
    v97 = 0;
  }

  return v97;
}

- (TSCEErrorCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  localeCopy = locale;
  v28.receiver = self;
  v28.super_class = TSCEErrorCellValue;
  v7 = [(TSCECellValue *)&v28 initWithLocale:localeCopy];
  v11 = v7;
  if (v7)
  {
    v7->super._valueType = 9;
    v12 = *(archive + 8);
    v17 = objc_msgSend_errorForErrorType_(TSCEError, v8, v12, v9, v10);
    if (v12 == 116)
    {
      if ((*(archive + 16) & 8) == 0)
      {
LABEL_10:
        v25 = objc_msgSend_errorValue_(TSCEErrorValue, v13, v17, v15, v16);
        errorValue = v11->_errorValue;
        v11->_errorValue = v25;

        goto LABEL_11;
      }

      v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v13, v14, v15, v16, *(archive + 5));
      objc_msgSend_setDateAsTimeInterval_(v17, v22, v18, v23, v24);
    }

    else
    {
      if (v12 != 117 && v12 != 120 || (*(archive + 16) & 1) == 0)
      {
        goto LABEL_10;
      }

      v18 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v13, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v15, v16);
      objc_msgSend_setExtraInfoString_(v17, v19, v18, v20, v21);
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)encodeToArchive:(void *)archive
{
  v6 = objc_msgSend_error(self->_errorValue, a2, archive, v3, v4);
  v11 = objc_msgSend_errorType(v6, v7, v8, v9, v10);
  *(archive + 4) |= 2u;
  *(archive + 8) = v11;
  if (v11 == 116)
  {
    v25 = objc_msgSend_dateAsTimeInterval(v6, v12, v13, v14, v15);
    v21 = v25;
    if (v25)
    {
      objc_msgSend_doubleValue(v25, v26, v27, v28, v29);
      *(archive + 4) |= 8u;
      *(archive + 5) = v30;
    }

    goto LABEL_15;
  }

  if (v11 == 117 || v11 == 120)
  {
    v16 = objc_msgSend_extraInfoString(v6, v12, v13, v14, v15);
    v21 = v16;
    if (v16)
    {
      v22 = objc_msgSend_tsp_protobufString(v16, v17, v18, v19, v20);
      v23 = strlen(v22);
      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_22108CD88();
      }

      v24 = v23;
      if (v23 >= 0x17)
      {
        operator new();
      }

      v32 = v23;
      if (v23)
      {
        memmove(&__dst, v22, v23);
      }

      *(&__dst + v24) = 0;
      *(archive + 4) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v32 < 0)
      {
        operator delete(__dst);
      }
    }

LABEL_15:
  }
}

@end