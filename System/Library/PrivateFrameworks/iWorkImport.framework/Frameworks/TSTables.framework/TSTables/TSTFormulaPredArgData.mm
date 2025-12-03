@interface TSTFormulaPredArgData
+ (id)getPredArgDataFromCell:(id)cell;
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (NSDate)date;
- (NSNumber)number;
- (NSString)string;
- (TSCENumberValue)duration;
- (TSTFormulaPredArgData)init;
- (TSTFormulaPredArgData)initWithBool:(BOOL)bool;
- (TSTFormulaPredArgData)initWithDate:(id)date;
- (TSTFormulaPredArgData)initWithDouble:(double)double;
- (TSTFormulaPredArgData)initWithDuration:(double)duration units:(unsigned __int8)units;
- (TSTFormulaPredArgData)initWithNumber:(id)number;
- (TSTFormulaPredArgData)initWithString:(id)string;
- (double)doubleValue;
- (double)durationValue;
- (id)initFromArchive:(const void *)archive;
- (unint64_t)hash;
- (unsigned)durationUnits;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTFormulaPredArgData

- (TSTFormulaPredArgData)init
{
  v3.receiver = self;
  v3.super_class = TSTFormulaPredArgData;
  result = [(TSTFormulaPredArgData *)&v3 init];
  if (result)
  {
    result->_dataType = 0;
  }

  return result;
}

- (TSTFormulaPredArgData)initWithBool:(BOOL)bool
{
  v6.receiver = self;
  v6.super_class = TSTFormulaPredArgData;
  v3 = [(TSTFormulaPredArgData *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_dataType = 6;
    TSUDecimal::operator=();
  }

  return v4;
}

- (TSTFormulaPredArgData)initWithDouble:(double)double
{
  v6.receiver = self;
  v6.super_class = TSTFormulaPredArgData;
  v3 = [(TSTFormulaPredArgData *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_dataType = 1;
    TSUDecimal::operator=();
  }

  return v4;
}

- (TSTFormulaPredArgData)initWithNumber:(id)number
{
  numberCopy = number;
  v9 = numberCopy;
  if (numberCopy)
  {
    objc_msgSend_doubleValue(numberCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_initWithDouble_(self, v10, v11, v12, v13);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TSTFormulaPredArgData;
    v15 = [(TSTFormulaPredArgData *)&v17 init];
    v14 = v15;
    if (v15)
    {
      v15->_dataType = 0;
    }
  }

  return v14;
}

- (TSTFormulaPredArgData)initWithDate:(id)date
{
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = TSTFormulaPredArgData;
  v5 = [(TSTFormulaPredArgData *)&v19 init];
  v10 = v5;
  if (v5)
  {
    if (dateCopy)
    {
      v5->_dataType = 2;
      objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v6, v7, v8, v9);
      TSUDecimal::operator=();
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      *&v10->_year = vnegq_f64(v11);
      v10->_day = 0x7FFFFFFFFFFFFFFFLL;
      v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
      objc_msgSend_extractComponentsFromDate_year_month_day_(v16, v17, dateCopy, &v10->_year, &v10->_month, &v10->_day);
    }

    else
    {
      v5->_dataType = 0;
    }
  }

  return v10;
}

- (TSTFormulaPredArgData)initWithString:(id)string
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = TSTFormulaPredArgData;
  v5 = [(TSTFormulaPredArgData *)&v14 init];
  v10 = v5;
  if (v5)
  {
    v5->_dataType = 3;
    v11 = objc_msgSend_copy(stringCopy, v6, v7, v8, v9);
    string = v10->_string;
    v10->_string = v11;
  }

  return v10;
}

- (TSTFormulaPredArgData)initWithDuration:(double)duration units:(unsigned __int8)units
{
  v8.receiver = self;
  v8.super_class = TSTFormulaPredArgData;
  v5 = [(TSTFormulaPredArgData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_dataType = 5;
    TSUDecimal::operator=();
    v6->_units = units;
  }

  return v6;
}

+ (id)getPredArgDataFromCell:(id)cell
{
  cellCopy = cell;
  v8 = objc_msgSend_valueType(cellCopy, v4, v5, v6, v7);
  if (v8 > 5)
  {
    if (v8 <= 8)
    {
      if (v8 == 6)
      {
        v65 = [TSTFormulaPredArgData alloc];
        v70 = objc_msgSend_BOOLValue(cellCopy, v66, v67, v68, v69);
        v32 = objc_msgSend_initWithBool_(v65, v71, v70, v72, v73);
        goto LABEL_21;
      }

      if (v8 == 7)
      {
        v13 = objc_msgSend_durationFormat(cellCopy, v9, v10, v11, v12);
        v18 = objc_msgSend_asDurationFormat(v13, v14, v15, v16, v17);
        v23 = objc_msgSend_durationUnitLargest(v18, v19, v20, v21, v22);

        v24 = [TSTFormulaPredArgData alloc];
        objc_msgSend_durationTimeIntervalValue(cellCopy, v25, v26, v27, v28);
        v32 = objc_msgSend_initWithDuration_units_(v24, v29, v23, v30, v31);
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (v8 != 9)
    {
      if (v8 == 10)
      {
LABEL_15:
        v43 = [TSTFormulaPredArgData alloc];
        objc_msgSend_underlyingDoubleValue(cellCopy, v44, v45, v46, v47);
        v32 = objc_msgSend_initWithDouble_(v43, v48, v49, v50, v51);
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_16:
    v52 = [TSTFormulaPredArgData alloc];
    v38 = objc_msgSend_formattedValue(cellCopy, v53, v54, v55, v56);
    v42 = objc_msgSend_initWithString_(v52, v57, v38, v58, v59);
LABEL_17:
    v60 = v42;

    if (v60)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v61 = [TSTFormulaPredArgData alloc];
    v32 = objc_msgSend_initWithString_(v61, v62, &stru_2834BADA0, v63, v64);
LABEL_21:
    v60 = v32;
    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v8 == 3)
  {
    goto LABEL_16;
  }

  if (v8 == 5)
  {
    v33 = [TSTFormulaPredArgData alloc];
    v38 = objc_msgSend_dateValue(cellCopy, v34, v35, v36, v37);
    v42 = objc_msgSend_initWithDate_(v33, v39, v38, v40, v41);
    goto LABEL_17;
  }

LABEL_22:
  v74 = MEMORY[0x277D81150];
  v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSTFormulaPredArgData getPredArgDataFromCell:]", v11, v12);
  v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v77, v78);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 169, 0, "invalid nil value for '%{public}s'", "predArgData");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
  v60 = 0;
LABEL_23:

  return v60;
}

- (id)initFromArchive:(const void *)archive
{
  v25.receiver = self;
  v25.super_class = TSTFormulaPredArgData;
  v4 = [(TSTFormulaPredArgData *)&v25 init];
  v8 = v4;
  if (v4)
  {
    v9 = *(archive + 4);
    if (v9)
    {
      v4->_dataType = 3;
      v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v5, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v6, v7);
      string = v8->_string;
      v8->_string = v10;
    }

    else
    {
      if ((~v9 & 0xC) == 0)
      {
        v4->_dataType = 1;
        TSUDecimal::TSUDecimal(&v24);
LABEL_11:
        v8->_decimal = v24;
        return v8;
      }

      if ((v9 & 2) != 0)
      {
        v4->_dataType = 1;
        TSUDecimal::operator=();
        goto LABEL_11;
      }

      if ((v9 & 0x10) != 0)
      {
        v4->_dataType = 2;
        TSUDecimal::operator=();
        v8->_decimal = v24;
        v17 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v13, v14, v15, v16, *(archive + 7));
        v22 = objc_msgSend_gregorianCalendar(TSCECalendar, v18, v19, v20, v21);
        objc_msgSend_extractComponentsFromDate_year_month_day_(v22, v23, v17, &v8->_year, &v8->_month, &v8->_day);
      }

      else if ((~v9 & 0x60) != 0)
      {
        if ((v9 & 0x80) != 0)
        {
          v4->_dataType = 6;
          TSUDecimal::operator=();
        }

        else
        {
          v4->_dataType = 0;
        }
      }

      else
      {
        v4->_dataType = 5;
        TSUDecimal::operator=();
        v8->_decimal = v24;
        v8->_units = *(archive + 18);
      }
    }
  }

  return v8;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  dataType = self->_dataType;
  if (dataType <= 2)
  {
    if (dataType == 1)
    {
      TSUDecimal::doubleValue(&self->_decimal);
      *(archive + 4) |= 2u;
      *(archive + 4) = v23;
      v24 = TSUDecimal::high(&self->_decimal);
      *(archive + 4) |= 8u;
      *(archive + 6) = v24;
      v25 = TSUDecimal::low(&self->_decimal);
      *(archive + 4) |= 4u;
      *(archive + 5) = v25;
    }

    else if (dataType == 2)
    {
      TSUDecimal::doubleValue(&self->_decimal);
      *(archive + 4) |= 0x10u;
      *(archive + 7) = v12;
    }
  }

  else
  {
    switch(dataType)
    {
      case 3u:
        string = self->_string;
        if (!string)
        {
          string = &stru_2834BADA0;
        }

        v14 = string;
        v19 = objc_msgSend_tsp_protobufString(v14, v15, v16, v17, v18);
        sub_2212BD3C8(archive, v19);

        break;
      case 5u:
        TSUDecimal::doubleValue(&self->_decimal);
        v20 = *(archive + 4);
        *(archive + 4) = v20 | 0x20;
        *(archive + 8) = v21;
        units = self->_units;
        *(archive + 4) = v20 | 0x60;
        *(archive + 18) = units;
        break;
      case 6u:
        v11 = objc_msgSend_BOOLValue(self, v6, v7, v8, v9);
        *(archive + 4) |= 0x80u;
        *(archive + 76) = v11;
        break;
    }
  }
}

- (NSString)string
{
  if (self->_dataType != 3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData string]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 238, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  string = self->_string;

  return string;
}

- (NSDate)date
{
  if (self->_dataType)
  {
    if (self->_dataType != 2)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData date]", v2, v3);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 246, 0, "Wrong data type for call: %d", self->_dataType);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
    }

    v16 = MEMORY[0x277CBEAA8];
    TSUDecimal::doubleValue(&self->_decimal);
    v21 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (NSNumber)number
{
  if (self->_dataType)
  {
    if (self->_dataType != 1)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData number]", v2, v3);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 255, 0, "Wrong data type for call: %d", self->_dataType);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
    }

    v16 = MEMORY[0x277CCABB0];
    TSUDecimal::doubleValue(&self->_decimal);
    v21 = objc_msgSend_numberWithDouble_(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (double)doubleValue
{
  if (self->_dataType != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData doubleValue]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 261, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
    if (self->_dataType != 1)
    {
      return 0.0;
    }
  }

  TSUDecimal::doubleValue(&self->_decimal);
  return result;
}

- (BOOL)BOOLValue
{
  if (self->_dataType != 6)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData BOOLValue]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 266, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  return TSUDecimal::isZero(&self->_decimal) ^ 1;
}

- (double)durationValue
{
  if (self->_dataType != 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData durationValue]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 271, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  TSUDecimal::doubleValue(&self->_decimal);
  return result;
}

- (unsigned)durationUnits
{
  if (self->_dataType != 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData durationUnits]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 276, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  return self->_units;
}

- (TSCENumberValue)duration
{
  if (self->_dataType != 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData duration]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 281, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  v16 = [TSCENumberValue alloc];
  TSUDecimal::doubleValue(&self->_decimal);
  TSUDecimal::operator=();
  v17 = sub_221387C78(self->_units);
  v20 = objc_msgSend_initWithDecimal_baseUnit_(v16, v18, v22, v17, v19);

  return v20;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_dataType(self, a2, v2, v3, v4);
  v11 = objc_msgSend_dataType(self, v7, v8, v9, v10);
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v16 = objc_msgSend_number(self, v12, v13, v14, v15);
      v21 = objc_msgSend_hash(v16, v27, v28, v29, v30);
    }

    else
    {
      if (v11 != 2)
      {
        return v6;
      }

      v16 = objc_msgSend_date(self, v12, v13, v14, v15);
      v21 = objc_msgSend_hash(v16, v17, v18, v19, v20);
    }

LABEL_12:
    v6 += v21;

    return v6;
  }

  switch(v11)
  {
    case 3:
      v16 = objc_msgSend_string(self, v12, v13, v14, v15);
      v21 = objc_msgSend_hash(v16, v22, v23, v24, v25);
      goto LABEL_12;
    case 5:
      objc_msgSend_durationValue(self, v12, v13, v14, v15);
      v6 += (v26 * 100.0);
      break;
    case 6:
      v6 += objc_msgSend_BOOLValue(self, v12, v13, v14, v15);
      break;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9 = equalCopy;
  LOBYTE(v10) = self == equalCopy;
  if (!equalCopy || self == equalCopy)
  {
    goto LABEL_18;
  }

  v11 = objc_msgSend_dataType(self, v5, v6, v7, v8);
  if (v11 != objc_msgSend_dataType(v9, v12, v13, v14, v15))
  {
LABEL_15:
    LOBYTE(v10) = 0;
    goto LABEL_18;
  }

  v20 = objc_msgSend_dataType(self, v16, v17, v18, v19);
  LOBYTE(v10) = 1;
  if (v20 <= 2)
  {
    if (v20 == 1)
    {
      v30 = objc_msgSend_number(self, v21, v22, v23, v24);
      v35 = objc_msgSend_number(v9, v63, v64, v65, v66);
      isEqual = objc_msgSend_isEqual_(v30, v67, v35, v68, v69);
    }

    else
    {
      if (v20 != 2)
      {
        goto LABEL_18;
      }

      v30 = objc_msgSend_date(self, v21, v22, v23, v24);
      v35 = objc_msgSend_date(v9, v31, v32, v33, v34);
      isEqual = objc_msgSend_isEqual_(v30, v36, v35, v37, v38);
    }

LABEL_17:
    LOBYTE(v10) = isEqual;

    goto LABEL_18;
  }

  switch(v20)
  {
    case 3:
      v30 = objc_msgSend_string(self, v21, v22, v23, v24);
      v35 = objc_msgSend_string(v9, v40, v41, v42, v43);
      isEqual = objc_msgSend_isEqual_(v30, v44, v35, v45, v46);
      goto LABEL_17;
    case 5:
      objc_msgSend_durationValue(self, v21, v22, v23, v24);
      v48 = v47;
      objc_msgSend_durationValue(v9, v49, v50, v51, v52);
      if (v48 == v57)
      {
        v58 = objc_msgSend_durationUnits(self, v53, v54, v55, v56);
        LOBYTE(v10) = v58 == objc_msgSend_durationUnits(v9, v59, v60, v61, v62);
        break;
      }

      goto LABEL_15;
    case 6:
      v25 = objc_msgSend_BOOLValue(self, v21, v22, v23, v24);
      v10 = v25 ^ objc_msgSend_BOOLValue(v9, v26, v27, v28, v29) ^ 1;
      break;
  }

LABEL_18:

  return v10;
}

@end