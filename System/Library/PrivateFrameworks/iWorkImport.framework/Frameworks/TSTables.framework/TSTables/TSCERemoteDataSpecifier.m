@interface TSCERemoteDataSpecifier
+ (id)specifierFromArchive:(const void *)a3;
+ (id)specifierWithFunctionIndex:(unsigned __int16)a3 symbol:(id)a4 attribute:(int64_t)a5;
+ (id)specifierWithFunctionIndex:(unsigned __int16)a3 symbol:(id)a4 attribute:(int64_t)a5 year:(int64_t)a6 month:(int64_t)a7 day:(int64_t)a8;
- (BOOL)hasDateEqualToDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)functionName;
- (TSCERemoteDataSpecifier)initWithFunctionIndex:(unsigned __int16)a3 symbol:(id)a4 attribute:(int64_t)a5 year:(int64_t)a6 month:(int64_t)a7 day:(int64_t)a8;
- (TSCEValue)invalidAttributeErrorValue;
- (TSCEValue)invalidSymbolErrorValue;
- (double)p_timeInterval;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromArchive:(const void *)a3;
- (id)specifierByChangingAttributeTo:(int64_t)a3;
- (void)encodeToArchive:(void *)a3;
@end

@implementation TSCERemoteDataSpecifier

+ (id)specifierWithFunctionIndex:(unsigned __int16)a3 symbol:(id)a4 attribute:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v8, v9, v6, v7, a5, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);

  return v10;
}

+ (id)specifierWithFunctionIndex:(unsigned __int16)a3 symbol:(id)a4 attribute:(int64_t)a5 year:(int64_t)a6 month:(int64_t)a7 day:(int64_t)a8
{
  v12 = a3;
  v13 = a4;
  v14 = objc_alloc(objc_opt_class());
  v16 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v14, v15, v12, v13, a5, a6, a7, a8);

  return v16;
}

- (TSCERemoteDataSpecifier)initWithFunctionIndex:(unsigned __int16)a3 symbol:(id)a4 attribute:(int64_t)a5 year:(int64_t)a6 month:(int64_t)a7 day:(int64_t)a8
{
  v14 = a4;
  v49.receiver = self;
  v49.super_class = TSCERemoteDataSpecifier;
  v15 = [(TSCERemoteDataSpecifier *)&v49 init];
  v20 = v15;
  if (v15)
  {
    v15->_functionIndex = a3;
    v21 = objc_msgSend_copy(v14, v16, v17, v18, v19);
    symbol = v20->_symbol;
    v20->_symbol = v21;

    v20->_attribute = a5;
    v20->_year = a6;
    v20->_month = a7;
    v20->_day = a8;
    if (a6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_isCold(v20, v23, v24, v25, v26))
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCERemoteDataSpecifier initWithFunctionIndex:symbol:attribute:year:month:day:]", v29, v30);
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v34, v35);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 88, 0, "How does a cold specifier not have a date?");
LABEL_7:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
      }
    }

    else if ((objc_msgSend_isCold(v20, v23, v24, v25, v26) & 1) == 0)
    {
      v38 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCERemoteDataSpecifier initWithFunctionIndex:symbol:attribute:year:month:day:]", v29, v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v32, v36, 86, 0, "How does a hot specifier have a date?");
      goto LABEL_7;
    }

    v47 = v20->_symbol;
    v20->_hashVal = (v20->_attribute << 40) | ((10000 * LODWORD(v20->_year) + 100 * LODWORD(v20->_month) + LODWORD(v20->_day)) << 48) | (LOBYTE(v20->_functionIndex) << 32);
    v20->_hashVal |= objc_msgSend_hash(v47, v27, v28, v29, v30);
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  functionIndex = self->_functionIndex;
  symbol = self->_symbol;
  attribute = self->_attribute;
  year = self->_year;
  month = self->_month;
  day = self->_day;

  return objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v4, v5, functionIndex, symbol, attribute, year, month, day);
}

- (id)specifierByChangingAttributeTo:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v5, v6, self->_functionIndex, self->_symbol, a3, self->_year, self->_month, self->_day);

  return v7;
}

+ (id)specifierFromArchive:(const void *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initFromArchive_(v4, v5, a3, v6, v7);

  return v8;
}

- (id)initFromArchive:(const void *)a3
{
  v7 = *(a3 + 8);
  v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL, v3, v4);
  v13 = *(a3 + 9);
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if ((*(a3 + 16) & 8) != 0)
  {
    v16 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v8, v9, v10, v11, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, *(a3 + 5));
    v21 = objc_msgSend_gregorianCalendar(TSCECalendar, v17, v18, v19, v20);
    objc_msgSend_extractComponentsFromDate_year_month_day_(v21, v22, v16, &v27, &v26, &v25);

    v14 = v26;
    v15 = v27;
  }

  v23 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(self, v8, v7, v12, v13, v15, v14);

  return v23;
}

- (void)encodeToArchive:(void *)a3
{
  v7 = objc_msgSend_functionIndex(self, a2, a3, v3, v4);
  *(a3 + 4) |= 2u;
  *(a3 + 8) = v7;
  v12 = objc_msgSend_symbol(self, v8, v9, v10, v11);
  v17 = objc_msgSend_tsp_protobufString(v12, v13, v14, v15, v16);
  sub_2213CE784(a3, v17);

  v22 = objc_msgSend_attribute(self, v18, v19, v20, v21);
  if (v22 >= 0x100000000)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSCERemoteDataSpecifier encodeToArchive:]", v25, v26);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 140, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    LODWORD(v22) = -1;
  }

  else if (v22 < 0)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSCERemoteDataSpecifier encodeToArchive:]", v25, v26);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v46, v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 140, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    LODWORD(v22) = 0;
  }

  *(a3 + 4) |= 4u;
  *(a3 + 9) = v22;
  if (objc_msgSend_isCold(self, v23, v24, v25, v26))
  {
    objc_msgSend_p_timeInterval(self, v27, v28, v29, v30);
    *(a3 + 4) |= 8u;
    *(a3 + 5) = v31;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5 && v5[7] == self->_hashVal && *(v5 + 4) == self->_functionIndex && v5[3] == self->_attribute && v5[4] == self->_year && v5[5] == self->_month && v5[6] == self->_day)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v5[2], v6, self->_symbol, v7, v8);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)hasDateEqualToDate:(id)a3
{
  v8 = a3;
  year = self->_year;
  if (v8)
  {
    if (year == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }
  }

  else if (year != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v10 = objc_msgSend_gregorianCalendar(TSCECalendar, v4, v5, v6, v7);
  objc_msgSend_extractComponentsFromDate_year_month_day_(v10, v11, v8, &v16, &v15, &v14);
  if (v16 != self->_year || v15 != self->_month)
  {
    goto LABEL_8;
  }

  v12 = v14 == self->_day;
LABEL_9:

  return v12;
}

- (double)p_timeInterval
{
  v5 = 0.0;
  if (self->_year != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = objc_msgSend_gregorianCalendar(TSCECalendar, a2, v2, v3, v4);
    v9 = objc_msgSend_dateWithYear_month_day_(v7, v8, self->_year, self->_month, self->_day);
    objc_msgSend_timeIntervalSinceReferenceDate(v9, v10, v11, v12, v13);
    v5 = v14;
  }

  return v5;
}

- (TSCEValue)invalidAttributeErrorValue
{
  v5 = objc_msgSend_functionIndex(self, a2, v2, v3, v4);
  if (v5 > 299)
  {
    if (v5 == 300)
    {
      v10 = objc_msgSend_invalidLiveCurrencyAttributeError(TSCEError, v6, v7, v8, v9);
      v14 = objc_msgSend_errorValue_(TSCEErrorValue, v22, v10, v23, v24);
      goto LABEL_11;
    }

    if (v5 == 301)
    {
      v10 = objc_msgSend_invalidHistoricalCurrencyAttributeError(TSCEError, v6, v7, v8, v9);
      v14 = objc_msgSend_errorValue_(TSCEErrorValue, v15, v10, v16, v17);
      goto LABEL_11;
    }

LABEL_8:
    v18 = objc_msgSend_errorValue_(TSCEErrorValue, v6, 0, v8, v9);
    goto LABEL_12;
  }

  if (v5 == 298)
  {
    v10 = objc_msgSend_invalidLiveStockAttributeError(TSCEError, v6, v7, v8, v9);
    v14 = objc_msgSend_errorValue_(TSCEErrorValue, v19, v10, v20, v21);
    goto LABEL_11;
  }

  if (v5 != 299)
  {
    goto LABEL_8;
  }

  v10 = objc_msgSend_invalidHistoricalStockAttributeError(TSCEError, v6, v7, v8, v9);
  v14 = objc_msgSend_errorValue_(TSCEErrorValue, v11, v10, v12, v13);
LABEL_11:
  v18 = v14;

LABEL_12:

  return v18;
}

- (TSCEValue)invalidSymbolErrorValue
{
  v6 = objc_msgSend_functionIndex(self, a2, v2, v3, v4);
  if (v6 > 299)
  {
    if (v6 == 301 || v6 == 300)
    {
      v12 = objc_msgSend_invalidCurrencyPairError(TSCEError, v7, v8, v9, v10);
      v11 = objc_msgSend_errorValue_(TSCEErrorValue, v20, v12, v21, v22);
      goto LABEL_10;
    }

LABEL_7:
    v11 = objc_msgSend_errorValue_(TSCEErrorValue, v7, 0, v9, v10);
    goto LABEL_11;
  }

  if (v6 != 298 && v6 != 299)
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_symbol(self, v7, v8, v9, v10);
  v16 = objc_msgSend_invalidStockCodeError_(TSCEError, v13, v12, v14, v15);
  v11 = objc_msgSend_errorValue_(TSCEErrorValue, v17, v16, v18, v19);

LABEL_10:
LABEL_11:

  return v11;
}

- (id)description
{
  year = self->_year;
  if (year == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = &stru_2834BADA0;
  }

  else
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @" [%04zd/%02zd/%02zd]", v3, v4, year, self->_month, self->_day);
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_functionName(self, a2, v2, v3, v4);
  v14 = objc_msgSend_symbol(self, v10, v11, v12, v13);
  v19 = objc_msgSend_attribute(self, v15, v16, v17, v18);
  v20 = sub_221219B30(v19);
  v24 = objc_msgSend_stringWithFormat_(v8, v21, @"<%@ %@ %@%@>", v22, v23, v9, v14, v20, v7);

  return v24;
}

- (NSString)functionName
{
  v5 = objc_msgSend_functionIndex(self, a2, v2, v3, v4);
  v9 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v6, v5, v7, v8);
  v14 = objc_msgSend_functionName(v9, v10, v11, v12, v13);

  return v14;
}

@end