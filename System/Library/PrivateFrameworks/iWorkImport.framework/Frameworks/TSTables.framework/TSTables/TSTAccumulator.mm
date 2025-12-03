@interface TSTAccumulator
- (TSCEValue)countAValue;
- (TSCEValue)countRowsValue;
- (TSCEValue)countValue;
- (TSCEValue)maxValue;
- (TSCEValue)minValue;
- (TSCEValue)productValue;
- (TSCEValue)rangeValue;
- (TSCEValue)totalValue;
- (TSTAccumulator)initWithArchive:(const void *)archive;
- (TSTAccumulator)initWithLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countBlankValue;
- (id)p_averageValueWithA:(BOOL)a;
- (id)valueForType:(unsigned __int8)type;
- (void)accumulate:(id)accumulate;
- (void)accumulateValue:(id)value;
- (void)clear;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTAccumulator

- (TSTAccumulator)initWithLocale:(id)locale
{
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = TSTAccumulator;
  v6 = [(TSTAccumulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
    objc_msgSend_clear(v7, v8, v9, v10, v11);
  }

  return v7;
}

- (void)clear
{
  *&self->_durationCount = 0u;
  *&self->_BOOLCount = 0u;
  v3 = objc_opt_new();
  firstDateSeen = self->_firstDateSeen;
  self->_firstDateSeen = v3;

  self->_totalSecsSinceReferenceDate = 0.0;
  self->_secondsToAdd = 0.0;
  v9 = objc_msgSend_nilValue(TSCENilValue, v5, v6, v7, v8);
  minValue = self->_minValue;
  self->_minValue = v9;

  v15 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13, v14);
  maxValue = self->_maxValue;
  self->_maxValue = v15;

  v21 = objc_msgSend_unitlessZero(TSCENumberValue, v17, v18, v19, v20);
  productValue = self->_productValue;
  self->_productValue = v21;

  v27 = objc_msgSend_unitlessZero(TSCENumberValue, v23, v24, v25, v26);
  numberTotalValue = self->_numberTotalValue;
  self->_numberTotalValue = v27;

  self->_isCircularReference = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTAccumulator alloc];
  v8 = objc_msgSend_initWithLocale_(v4, v5, self->_locale, v6, v7);
  *(v8 + 8) = self->_BOOLCount;
  *(v8 + 12) = self->_BOOLTrueCount;
  *(v8 + 16) = self->_numberCount;
  *(v8 + 20) = self->_dateCount;
  *(v8 + 24) = self->_durationCount;
  *(v8 + 28) = self->_stringCount;
  *(v8 + 32) = self->_errorCount;
  *(v8 + 36) = self->_noContentCount;
  objc_storeStrong((v8 + 40), self->_minValue);
  objc_storeStrong((v8 + 48), self->_maxValue);
  v13 = objc_msgSend_copy(self->_productValue, v9, v10, v11, v12);
  v14 = *(v8 + 56);
  *(v8 + 56) = v13;

  v19 = objc_msgSend_copy(self->_numberTotalValue, v15, v16, v17, v18);
  v20 = *(v8 + 64);
  *(v8 + 64) = v19;

  objc_storeStrong((v8 + 72), self->_firstDateSeen);
  *(v8 + 88) = self->_secondsToAdd;
  *(v8 + 80) = self->_totalSecsSinceReferenceDate;
  *(v8 + 104) = self->_isCircularReference;
  return v8;
}

- (TSTAccumulator)initWithArchive:(const void *)archive
{
  v92.receiver = self;
  v92.super_class = TSTAccumulator;
  v4 = [(TSTAccumulator *)&v92 init];
  v9 = v4;
  if (v4)
  {
    objc_msgSend_clear(v4, v5, v6, v7, v8);
    v14 = *(archive + 4);
    if ((v14 & 0x20) != 0)
    {
      v9->_BOOLCount = *(archive + 16);
      v14 = *(archive + 4);
      if ((v14 & 0x400) != 0)
      {
        v9->_BOOLTrueCount = *(archive + 21);
        v14 = *(archive + 4);
      }
    }

    if ((v14 & 0x40) != 0)
    {
      v9->_numberCount = *(archive + 17);
      v14 = *(archive + 4);
      if ((v14 & 0x80) == 0)
      {
LABEL_7:
        if ((v14 & 0x100) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((v14 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    v9->_dateCount = *(archive + 18);
    v14 = *(archive + 4);
    if ((v14 & 0x100) == 0)
    {
LABEL_8:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9->_durationCount = *(archive + 19);
    v14 = *(archive + 4);
    if ((v14 & 0x200) == 0)
    {
LABEL_9:
      if ((v14 & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v9->_stringCount = *(archive + 20);
    v14 = *(archive + 4);
    if ((v14 & 0x2000) == 0)
    {
LABEL_10:
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v9->_errorCount = *(archive + 26);
    v14 = *(archive + 4);
    if ((v14 & 0x8000) == 0)
    {
LABEL_11:
      if ((v14 & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_20:
    v9->_noContentCount = *(archive + 28);
    if ((*(archive + 4) & 0x4000) == 0)
    {
LABEL_13:
      locale = v9->_locale;
      if (locale)
      {
        v16 = locale;
      }

      else
      {
        v16 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v10, v11, v12, v13);
      }

      v19 = v16;
      if (*(archive + 3))
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v17, *(archive + 3), v16, v18);
      }

      else
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v17, &TSCE::_CellValueArchive_default_instance_, v16, v18);
      }
      v22 = ;
      if (*(archive + 4))
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v20, *(archive + 4), v19, v21);
      }

      else
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v20, &TSCE::_CellValueArchive_default_instance_, v19, v21);
      }
      v23 = ;
      v90 = v23;
      v28 = objc_msgSend_tsceValue(v22, v24, v25, v26, v27);
      minValue = v9->_minValue;
      v9->_minValue = v28;

      v34 = objc_msgSend_tsceValue(v23, v30, v31, v32, v33);
      maxValue = v9->_maxValue;
      v9->_maxValue = v34;

      if (*(archive + 5))
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v36, *(archive + 5), v19, v37);
      }

      else
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v36, &TSCE::_CellValueArchive_default_instance_, v19, v37);
      }
      v38 = ;
      v43 = objc_msgSend_tsceValue(v38, v39, v40, v41, v42);
      v48 = objc_msgSend_number(v43, v44, v45, v46, v47);
      numberTotalValue = v9->_numberTotalValue;
      v9->_numberTotalValue = v48;

      v52 = *(archive + 4);
      if ((v52 & 8) != 0)
      {
        v89 = v22;
        v53 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v50, *(archive + 6), v19, v51);
        v58 = objc_msgSend_tsceValue(v53, v54, v55, v56, v57);
        v63 = objc_msgSend_date(v58, v59, v60, v61, v62);
        v68 = objc_msgSend_tsceValue(v53, v64, v65, v66, v67);
        v73 = v68;
        if (v68)
        {
          objc_msgSend_format(v68, v69, v70, v71, v72);
        }

        else
        {
          memset(v91, 0, sizeof(v91));
        }

        v74 = objc_msgSend_dateValue_format_(TSCEDateValue, v69, v63, v91, v72);
        firstDateSeen = v9->_firstDateSeen;
        v9->_firstDateSeen = v74;

        v52 = *(archive + 4);
        v22 = v89;
        v23 = v90;
      }

      if ((v52 & 0x800) != 0)
      {
        v9->_totalSecsSinceReferenceDate = *(archive + 11);
        if ((v52 & 0x1000) == 0)
        {
LABEL_39:
          if ((v52 & 0x10) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      else if ((v52 & 0x1000) == 0)
      {
        goto LABEL_39;
      }

      v9->_secondsToAdd = *(archive + 12);
      if ((v52 & 0x10) == 0)
      {
LABEL_44:

        return v9;
      }

LABEL_43:
      v76 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v50, *(archive + 7), v19, v51);
      v81 = objc_msgSend_tsceValue(v76, v77, v78, v79, v80);
      v86 = objc_msgSend_number(v81, v82, v83, v84, v85);
      productValue = v9->_productValue;
      v9->_productValue = v86;

      v23 = v90;
      goto LABEL_44;
    }

LABEL_12:
    v9->_isCircularReference = *(archive + 108);
    goto LABEL_13;
  }

  return v9;
}

- (void)saveToArchive:(void *)archive
{
  BOOLCount = self->_BOOLCount;
  if (BOOLCount)
  {
    v6 = *(archive + 4);
    *(archive + 4) = v6 | 0x20;
    *(archive + 16) = BOOLCount;
    BOOLTrueCount = self->_BOOLTrueCount;
    *(archive + 4) = v6 | 0x420;
    *(archive + 21) = BOOLTrueCount;
  }

  numberCount = self->_numberCount;
  if (numberCount)
  {
    *(archive + 4) |= 0x40u;
    *(archive + 17) = numberCount;
  }

  dateCount = self->_dateCount;
  if (dateCount)
  {
    *(archive + 4) |= 0x80u;
    *(archive + 18) = dateCount;
  }

  durationCount = self->_durationCount;
  if (durationCount)
  {
    *(archive + 4) |= 0x100u;
    *(archive + 19) = durationCount;
  }

  stringCount = self->_stringCount;
  if (stringCount)
  {
    *(archive + 4) |= 0x200u;
    *(archive + 20) = stringCount;
  }

  errorCount = self->_errorCount;
  if (errorCount)
  {
    *(archive + 4) |= 0x2000u;
    *(archive + 26) = errorCount;
  }

  noContentCount = self->_noContentCount;
  if (noContentCount)
  {
    *(archive + 4) |= 0x8000u;
    *(archive + 28) = noContentCount;
  }

  if (self->_isCircularReference)
  {
    *(archive + 4) |= 0x4000u;
    *(archive + 108) = 1;
  }

  v14 = objc_autoreleasePoolPush();
  v20 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v15, self->_minValue, self->_locale, v16);
  *(archive + 4) |= 1u;
  v21 = *(archive + 3);
  if (!v21)
  {
    v22 = *(archive + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v22);
    *(archive + 3) = v21;
  }

  objc_msgSend_encodeCellValueToArchive_(v20, v17, v21, v18, v19);
  v28 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v23, self->_maxValue, self->_locale, v24);
  *(archive + 4) |= 2u;
  v29 = *(archive + 4);
  if (!v29)
  {
    v30 = *(archive + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v30);
    *(archive + 4) = v29;
  }

  objc_msgSend_encodeCellValueToArchive_(v28, v25, v29, v26, v27);
  v36 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v31, self->_numberTotalValue, self->_locale, v32);
  *(archive + 4) |= 4u;
  v37 = *(archive + 5);
  if (!v37)
  {
    v38 = *(archive + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v38);
    *(archive + 5) = v37;
  }

  objc_msgSend_encodeCellValueToArchive_(v36, v33, v37, v34, v35);
  v43 = objc_msgSend_date(self->_firstDateSeen, v39, v40, v41, v42);

  if (v43)
  {
    v49 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v44, self->_firstDateSeen, self->_locale, v45);
    *(archive + 4) |= 8u;
    v50 = *(archive + 6);
    if (!v50)
    {
      v51 = *(archive + 1);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v51);
      *(archive + 6) = v50;
    }

    objc_msgSend_encodeCellValueToArchive_(v49, v46, v50, v47, v48);
  }

  totalSecsSinceReferenceDate = self->_totalSecsSinceReferenceDate;
  if (totalSecsSinceReferenceDate != 0.0)
  {
    *(archive + 4) |= 0x800u;
    *(archive + 11) = totalSecsSinceReferenceDate;
  }

  secondsToAdd = self->_secondsToAdd;
  if (secondsToAdd != 0.0)
  {
    *(archive + 4) |= 0x1000u;
    *(archive + 12) = secondsToAdd;
  }

  v57 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v44, self->_productValue, self->_locale, v45);
  *(archive + 4) |= 0x10u;
  v58 = *(archive + 7);
  if (!v58)
  {
    v59 = *(archive + 1);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v59);
    *(archive + 7) = v58;
  }

  objc_msgSend_encodeCellValueToArchive_(v57, v54, v58, v55, v56);

  objc_autoreleasePoolPop(v14);
}

- (void)accumulateValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_isNil(valueCopy, v6, v7, v8, v9))
  {
    goto LABEL_6;
  }

  v14 = objc_msgSend_countA(self, v10, v11, v12, v13);
  v21 = objc_msgSend_nativeType(valueCopy, v15, v16, v17, v18);
  if (v14)
  {
    v22 = objc_msgSend_minValue_locale_(self->_minValue, v19, valueCopy, self->_locale, v20);
    minValue = self->_minValue;
    self->_minValue = v22;

    v26 = objc_msgSend_maxValue_locale_(self->_maxValue, v24, valueCopy, self->_locale, v25);
  }

  else
  {
    objc_storeStrong(&self->_minValue, value);
    v26 = valueCopy;
  }

  maxValue = self->_maxValue;
  self->_maxValue = v26;

  if (objc_msgSend_isNil(valueCopy, v28, v29, v30, v31))
  {
    goto LABEL_6;
  }

  if (v21 > 4u)
  {
    switch(v21)
    {
      case 5u:
        v41 = objc_msgSend_number(valueCopy, v32, v33, v34, v35);
        p_durationCount = &self->_durationCount;
        if (self->_numberCount + self->_durationCount)
        {
          v73 = objc_msgSend_add_nothrow_(self->_numberTotalValue, v68, v41, v69, v70);
          numberTotalValue = self->_numberTotalValue;
          self->_numberTotalValue = v73;

          v72 = objc_msgSend_multiply_context_(self->_productValue, v75, v41, 0, v76);
        }

        else
        {
          objc_storeStrong(&self->_numberTotalValue, v41);
          v72 = v41;
        }

        productValue = self->_productValue;
        self->_productValue = v72;

        if (objc_msgSend_isDuration(v41, v78, v79, v80, v81))
        {
          objc_msgSend_rawTimeIntervalValue(v41, v82, v83, v84, v85);
        }

        else
        {
          objc_msgSend_rawTimeIntervalValue(v41, v82, v83, v84, v85);
          p_durationCount = &self->_numberCount;
        }

        self->_secondsToAdd = v86 + self->_secondsToAdd;
        ++*p_durationCount;
        break;
      case 7u:
        ++self->_stringCount;
        goto LABEL_7;
      case 9u:
        ++self->_errorCount;
        v36 = objc_msgSend_asErrorValue(valueCopy, v32, v33, v34, v35);
        v41 = v36;
        if (v36)
        {
          v42 = objc_msgSend_error(v36, v37, v38, v39, v40);
          if (objc_msgSend_isCircularReferenceError(v42, v43, v44, v45, v46))
          {
            self->_isCircularReference = 1;
          }
        }

        break;
      default:
        goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (v21 == 2)
  {
    ++self->_BOOLCount;
    if (objc_msgSend_asBoolean(valueCopy, v32, v33, v34, v35))
    {
      ++self->_BOOLTrueCount;
    }
  }

  else
  {
    if (v21 != 3)
    {
LABEL_6:
      ++self->_noContentCount;
      goto LABEL_7;
    }

    v47 = objc_msgSend_date(self->_firstDateSeen, v32, v33, v34, v35);

    if (v47)
    {
      v52 = objc_msgSend_date(valueCopy, v48, v49, v50, v51);
      objc_msgSend_timeIntervalSinceReferenceDate(v52, v53, v54, v55, v56);
      self->_totalSecsSinceReferenceDate = v57 + self->_totalSecsSinceReferenceDate;
      v66 = objc_msgSend_date(self->_firstDateSeen, v58, v59, v60, v61);
      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
        objc_msgSend_format(firstDateSeen, v62, v63, v64, v65);
      }

      else
      {
        memset(&v108, 0, sizeof(v108));
      }

      if (valueCopy)
      {
        objc_msgSend_format(valueCopy, v62, v63, v64, v65);
      }

      else
      {
        memset(&v107, 0, sizeof(v107));
      }

      TSCEFormat::formatByMergingWithFormat(&v108, &v107, v63, v64, v65, v109);
      v94 = objc_msgSend_dateValue_format_(TSCEDateValue, v92, v66, v109, v93);
      v95 = self->_firstDateSeen;
      self->_firstDateSeen = v94;
    }

    else
    {
      v91 = objc_msgSend_date(valueCopy, v48, v49, v50, v51);
      if (valueCopy)
      {
        objc_msgSend_format(valueCopy, v87, v88, v89, v90);
      }

      else
      {
        memset(v109, 0, sizeof(v109));
      }

      v96 = objc_msgSend_dateValue_format_(TSCEDateValue, v87, v91, v109, v90);
      v97 = self->_firstDateSeen;
      self->_firstDateSeen = v96;

      v52 = objc_msgSend_date(self->_firstDateSeen, v98, v99, v100, v101);
      objc_msgSend_timeIntervalSinceReferenceDate(v52, v102, v103, v104, v105);
      self->_totalSecsSinceReferenceDate = v106;
    }

    ++self->_dateCount;
  }

LABEL_7:
}

- (void)accumulate:(id)accumulate
{
  accumulateCopy = accumulate;
  v9 = accumulateCopy;
  if (self->_isCircularReference)
  {
    v10 = 1;
  }

  else if (accumulateCopy)
  {
    v10 = accumulateCopy[104];
  }

  else
  {
    v10 = 0;
  }

  self->_isCircularReference = v10 & 1;
  if (objc_msgSend_countA(accumulateCopy, v5, v6, v7, v8))
  {
    v15 = objc_msgSend_countA(self, v11, v12, v13, v14);
    self->_BOOLCount += objc_msgSend_BOOLCount(v9, v16, v17, v18, v19);
    self->_BOOLTrueCount += objc_msgSend_BOOLTrueCount(v9, v20, v21, v22, v23);
    self->_numberCount += objc_msgSend_numberCount(v9, v24, v25, v26, v27);
    self->_dateCount += objc_msgSend_dateCount(v9, v28, v29, v30, v31);
    self->_durationCount += objc_msgSend_durationCount(v9, v32, v33, v34, v35);
    self->_stringCount += objc_msgSend_stringCount(v9, v36, v37, v38, v39);
    self->_errorCount += objc_msgSend_errorCount(v9, v40, v41, v42, v43);
    self->_noContentCount += objc_msgSend_noContentCount(v9, v44, v45, v46, v47);
    if (v15)
    {
      minValue = self->_minValue;
      v53 = objc_msgSend_minValue(v9, v48, v49, v50, v51);
      v56 = objc_msgSend_minValue_locale_(minValue, v54, v53, self->_locale, v55);
      v57 = self->_minValue;
      self->_minValue = v56;

      maxValue = self->_maxValue;
      v63 = objc_msgSend_maxValue(v9, v59, v60, v61, v62);
      v66 = objc_msgSend_maxValue_locale_(maxValue, v64, v63, self->_locale, v65);
      v67 = self->_maxValue;
      self->_maxValue = v66;

      p_firstDateSeen = &self->_firstDateSeen;
      v73 = objc_msgSend_date(self->_firstDateSeen, v69, v70, v71, v72);

      v77 = *(v9 + 9);
      if (v73)
      {
        v78 = objc_msgSend_date(*(v9 + 9), v77, v74, v75, v76);

        if (v78)
        {
          v87 = objc_msgSend_date(*(v9 + 9), v79, v80, v81, v82);
          if (*p_firstDateSeen)
          {
            objc_msgSend_format(*p_firstDateSeen, v83, v84, v85, v86);
          }

          else
          {
            memset(&v109, 0, sizeof(v109));
          }

          v96 = *(v9 + 9);
          if (v96)
          {
            objc_msgSend_format(v96, v83, v84, v85, v86);
          }

          else
          {
            memset(&v108, 0, sizeof(v108));
          }

          TSCEFormat::formatByMergingWithFormat(&v109, &v108, v84, v85, v86, v110);
          v99 = objc_msgSend_dateValue_format_(TSCEDateValue, v97, v87, v110, v98);
          v100 = *p_firstDateSeen;
          *p_firstDateSeen = v99;
        }
      }

      else
      {
        objc_storeStrong(&self->_firstDateSeen, v77);
      }

      secondsToAdd = self->_secondsToAdd;
      self->_totalSecsSinceReferenceDate = *(v9 + 10) + self->_totalSecsSinceReferenceDate;
      self->_secondsToAdd = *(v9 + 11) + secondsToAdd;
      v102 = objc_msgSend_add_nothrow_(self->_numberTotalValue, v79, *(v9 + 8), v81, v82, *&v108._tskFormat, *&v108._durationFormat, v109._tskFormat, *&v109._formatType, *&v109._durationFormat, *&v109._numberFormat.decimalPlaces);
      numberTotalValue = self->_numberTotalValue;
      self->_numberTotalValue = v102;

      v106 = objc_msgSend_multiply_context_(self->_productValue, v104, *(v9 + 7), 0, v105);
      productValue = self->_productValue;
      self->_productValue = v106;
    }

    else
    {
      v88 = objc_msgSend_minValue(v9, v48, v49, v50, v51);
      v89 = self->_minValue;
      self->_minValue = v88;

      v94 = objc_msgSend_maxValue(v9, v90, v91, v92, v93);
      v95 = self->_maxValue;
      self->_maxValue = v94;

      objc_storeStrong(&self->_firstDateSeen, *(v9 + 9));
      self->_totalSecsSinceReferenceDate = *(v9 + 10);
      self->_secondsToAdd = *(v9 + 11);
      objc_storeStrong(&self->_numberTotalValue, *(v9 + 8));
      objc_storeStrong(&self->_productValue, *(v9 + 7));
    }
  }
}

- (TSCEValue)totalValue
{
  if (self->_durationCount)
  {
    if (self->_dateCount == 1)
    {
      v6 = objc_msgSend_date(self->_firstDateSeen, a2, v2, v3, v4);
      v11 = objc_msgSend_dateByAddingTimeInterval_(v6, v7, v8, v9, v10, self->_secondsToAdd);

      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
        objc_msgSend_format(firstDateSeen, v12, v13, v14, v15);
      }

      else
      {
        memset(v39, 0, sizeof(v39));
      }

      v34 = objc_msgSend_dateValue_format_(TSCEDateValue, v12, v11, v39, v15);

      goto LABEL_16;
    }

    if (self->_numberCount)
    {
      v21 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, 168, v3, v4);
      v26 = objc_msgSend_functionName(v21, v22, v23, v24, v25);
      v30 = objc_msgSend_sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName_(TSCEError, v27, v26, v28, v29);

      v34 = objc_msgSend_errorValue_(TSCEErrorValue, v31, v30, v32, v33);

LABEL_10:
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (self->_numberCount)
  {
    goto LABEL_14;
  }

  if (self->_BOOLCount)
  {
    TSUDecimal::operator=();
    v20 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v17, v39, v18, v19);
    goto LABEL_15;
  }

  if (self->_stringCount)
  {
LABEL_14:
    v20 = self->_numberTotalValue;
    goto LABEL_15;
  }

  if (self->_dateCount)
  {
    v21 = objc_msgSend_invalidDateManipulationError(TSCEError, a2, v2, v3, v4);
    v34 = objc_msgSend_errorValue_(TSCEErrorValue, v36, v21, v37, v38);
    goto LABEL_10;
  }

  v20 = objc_msgSend_unitlessZero(TSCENumberValue, a2, v2, v3, v4);
LABEL_15:
  v34 = v20;
LABEL_16:

  return v34;
}

- (TSCEValue)countAValue
{
  objc_msgSend_countA(self, a2, v2, v3, v4);
  TSUDecimal::operator=();
  v8 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v5, &v10, v6, v7);

  return v8;
}

- (TSCEValue)countValue
{
  objc_msgSend_countOfNumberDateDurationOrBool(self, a2, v2, v3, v4);
  TSUDecimal::operator=();
  v8 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v5, &v10, v6, v7);

  return v8;
}

- (TSCEValue)countRowsValue
{
  objc_msgSend_countRows(self, a2, v2, v3, v4);
  TSUDecimal::operator=();
  v8 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v5, &v10, v6, v7);

  return v8;
}

- (id)p_averageValueWithA:(BOOL)a
{
  aCopy = a;
  if (a)
  {
    v7 = objc_msgSend_countA(self, a2, a, v3, v4);
  }

  else
  {
    v7 = objc_msgSend_countOfNumberDateDurationOrBool(self, a2, a, v3, v4);
  }

  v12 = v7;
  if (!v7)
  {
    goto LABEL_26;
  }

  dateCount = self->_dateCount;
  if (dateCount)
  {
    if (dateCount == 1)
    {
      secondsToAdd = self->_secondsToAdd;
      v15 = objc_msgSend_date(self->_firstDateSeen, v8, v9, v10, v11);
      v20 = objc_msgSend_dateByAddingTimeInterval_(v15, v16, v17, v18, v19, secondsToAdd / v12);

      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
LABEL_8:
        objc_msgSend_format(firstDateSeen, v21, v22, v23, v24);
LABEL_21:
        v39 = objc_msgSend_dateValue_format_(TSCEDateValue, v21, v20, &v118, v24);
        goto LABEL_34;
      }
    }

    else
    {
      v20 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v8, v9, v10, v11, (self->_totalSecsSinceReferenceDate + self->_secondsToAdd) / v7);
      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
        goto LABEL_8;
      }
    }

    memset(&v118, 0, sizeof(v118));
    goto LABEL_21;
  }

  numberCount = self->_numberCount;
  if (self->_durationCount)
  {
    if (numberCount)
    {
      if (aCopy)
      {
        objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v8, 16, v10, v11);
      }

      else
      {
        objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v8, 15, v10, v11);
      }
      v27 = ;
      v32 = objc_msgSend_functionName(v27, v28, v29, v30, v31);
      v20 = objc_msgSend_sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName_(TSCEError, v33, v32, v34, v35);

      v39 = 0;
      goto LABEL_32;
    }

    numberTotalValue = self->_numberTotalValue;
    TSUDecimal::operator=();
    v68 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v65, &v118, v66, v67);
    v117 = 0;
    v47 = objc_msgSend_divide_outError_(numberTotalValue, v69, v68, &v117, v70);
    v20 = v117;

    v71 = [TSCENumberValue alloc];
    v80 = objc_msgSend_rawDecimalValue(v47, v72, v73, v74, v75);
    v81 = self->_numberTotalValue;
    if (v81)
    {
      objc_msgSend_format(v81, v76, v77, v78, v79);
      v86 = objc_msgSend_unit(self->_numberTotalValue, v82, v83, v84, v85);
    }

    else
    {
      memset(&v118, 0, sizeof(v118));
      v86 = objc_msgSend_unit(0, v76, v77, v78, v79);
    }

    v110 = objc_msgSend_initWithDecimal_format_baseUnit_(v71, v87, v80, &v118, v86);
    goto LABEL_31;
  }

  if (numberCount)
  {
    v40 = self->_numberTotalValue;
    TSUDecimal::operator=();
    v44 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, &v118, v42, v43);
    v116 = 0;
    v47 = objc_msgSend_divide_outError_(v40, v45, v44, &v116, v46);
    v20 = v116;

    v48 = [TSCENumberValue alloc];
    v114 = objc_msgSend_decimalRepresentation(v47, v49, v50, v51, v52);
    v115 = v53;
    v57 = self->_numberTotalValue;
    if (v57)
    {
      objc_msgSend_format(v57, v53, v54, v55, v56);
      v62 = objc_msgSend_unit(self->_numberTotalValue, v58, v59, v60, v61);
    }

    else
    {
      memset(&v118, 0, sizeof(v118));
      v62 = objc_msgSend_unit(0, v53, v54, v55, v56);
    }

    v110 = objc_msgSend_initWithDecimal_format_baseUnit_(v48, v63, &v114, &v118, v62);
LABEL_31:
    v39 = v110;

    goto LABEL_32;
  }

  if (!self->_BOOLCount)
  {
LABEL_26:
    v39 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v8, v9, v10, v11);
    goto LABEL_35;
  }

  TSUDecimal::operator=();
  v91 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v88, &v118, v89, v90);
  TSUDecimal::operator=();
  v95 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v92, &v118, v93, v94);
  v113 = 0;
  v98 = objc_msgSend_divide_outError_(v91, v96, v95, &v113, v97);
  v20 = v113;

  v99 = objc_alloc(MEMORY[0x277D806A0]);
  v101 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v99, v100, 258, 2, 0, 0);
  v102 = [TSCENumberValue alloc];
  v114 = objc_msgSend_decimalRepresentation(v98, v103, v104, v105, v106);
  v115 = v107;
  TSCEFormat::TSCEFormat(&v118, v101, 0);
  v39 = objc_msgSend_initWithDecimal_format_(v102, v108, &v114, &v118, v109);

LABEL_32:
  if (!v20)
  {
    goto LABEL_35;
  }

  v111 = objc_msgSend_errorValue_(TSCEErrorValue, v36, v20, v37, v38);

  v39 = v111;
LABEL_34:

LABEL_35:

  return v39;
}

- (TSCEValue)minValue
{
  v6 = objc_msgSend_countA(self, a2, v2, v3, v4);
  v11 = self->_minValue;
  if (!v6)
  {
    v12 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v7, v8, v9, v10);

    v11 = v12;
  }

  return v11;
}

- (TSCEValue)maxValue
{
  v6 = objc_msgSend_countA(self, a2, v2, v3, v4);
  v11 = self->_maxValue;
  if (!v6)
  {
    v12 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v7, v8, v9, v10);

    v11 = v12;
  }

  return v11;
}

- (TSCEValue)rangeValue
{
  if (objc_msgSend_countA(self, a2, v2, v3, v4))
  {
    if (objc_msgSend_nativeType(self->_minValue, v6, v7, v8, v9) == 7)
    {
      minValue = self->_minValue;
      v15 = objc_msgSend_locale(self, v10, v11, v12, v13);
      v19 = objc_msgSend_asStringWithLocale_(minValue, v16, v15, v17, v18);

      maxValue = self->_maxValue;
      v25 = objc_msgSend_locale(self, v21, v22, v23, v24);
      v29 = objc_msgSend_asStringWithLocale_(maxValue, v26, v25, v27, v28);

      v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%@…%@", v31, v32, v19, v29);
      v37 = objc_msgSend_stringValue_(TSCEStringValue, v34, v33, v35, v36);

      goto LABEL_7;
    }

    v38 = sub_22121E128(self->_maxValue, self->_minValue, self->_locale);
  }

  else
  {
    v38 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v6, v7, v8, v9);
  }

  v37 = v38;
LABEL_7:

  return v37;
}

- (TSCEValue)productValue
{
  v5 = objc_msgSend_copy(self->_productValue, a2, v2, v3, v4);

  return v5;
}

- (id)countBlankValue
{
  TSUDecimal::operator=();
  v5 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v2, &v7, v3, v4);

  return v5;
}

- (id)valueForType:(unsigned __int8)type
{
  typeCopy = type;
  if (objc_msgSend_isCircularReference(self, a2, type, v3, v4))
  {
    v11 = objc_msgSend_circularReferenceError(TSCEError, v7, v8, v9, v10);
    v15 = objc_msgSend_errorValue_(TSCEErrorValue, v12, v11, v13, v14);

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    v32 = objc_msgSend_nilValue(TSCENilValue, v16, v17, v18, v19);
  }

  else
  {
    if (objc_msgSend_countRows(self, v7, v8, v9, v10))
    {
      switch(typeCopy)
      {
        case 0:
          goto LABEL_11;
        case 1:
          v45 = objc_msgSend_countAValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 2:
          v45 = objc_msgSend_totalValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 3:
          v45 = objc_msgSend_avgAValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 4:
          v45 = objc_msgSend_minValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 5:
          v45 = objc_msgSend_maxValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 6:
        case 23:
        case 24:
        case 25:
          goto LABEL_13;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          goto LABEL_10;
        case 13:
          v45 = objc_msgSend_countValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 14:
        case 16:
        case 19:
        case 20:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTAccumulator valueForType:]", v18, v19);
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAccumulator.mm", v23, v24);
          v26 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v21, v25, 626, 0, "%@ does not handle TSCEAggType_StDev/_VAR/_CountDistinct request - a higher level should have handled that", v26);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
          goto LABEL_13;
        case 15:
          v45 = objc_msgSend_countRowsValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 17:
          v45 = objc_msgSend_countBlankValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 18:
          v45 = objc_msgSend_avgValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 21:
          v45 = objc_msgSend_productValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        case 22:
          v45 = objc_msgSend_rangeValue(self, v16, v17, v18, v19);
          goto LABEL_12;
        default:
          if (typeCopy != 240 && typeCopy != 255)
          {
            goto LABEL_13;
          }

LABEL_10:
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTAccumulator valueForType:]", v18, v19);
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAccumulator.mm", v36, v37);
          v39 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v34, v38, 637, 0, "%@ does not handle TSCEAggType_GroupValue/_BodyRows/_Indirect request - a higher level should have handled that", v39);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
LABEL_11:
          v45 = objc_msgSend_nilValue(TSCENilValue, v16, v17, v18, v19);
LABEL_12:
          v15 = v45;
          if (!v45)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
      }
    }

    v32 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v16, v17, v18, v19);
  }

  v15 = v32;
LABEL_15:

  return v15;
}

@end