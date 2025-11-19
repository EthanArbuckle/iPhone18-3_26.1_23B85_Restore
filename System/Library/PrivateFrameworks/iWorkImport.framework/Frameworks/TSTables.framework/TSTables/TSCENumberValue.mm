@interface TSCENumberValue
+ (id)makeDurationWithWeeks:(double)a3 days:(double)a4 hours:(double)a5 minutes:(double)a6 seconds:(double)a7 milliseconds:(double)a8;
+ (id)numberWithDecimal:(const TSUDecimal *)a3;
+ (id)numberWithDecimal:(const TSUDecimal *)a3 baseUnit:(unsigned __int16)a4;
+ (id)numberWithDecimal:(const TSUDecimal *)a3 format:(const TSCEFormat *)a4;
+ (id)numberWithDecimal:(const TSUDecimal *)a3 format:(const TSCEFormat *)a4 baseUnit:(unsigned __int16)a5;
+ (id)unitlessZero;
+ (id)zero;
- (BOOL)areCurrenciesMatched:(id)a3;
- (BOOL)asBoolean;
- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (BOOL)dimensionsMatchModuloCurrency:(id)a3;
- (BOOL)eq:(id)a3 outError:(id *)a4;
- (BOOL)ge:(id)a3;
- (BOOL)isDuration;
- (BOOL)isUnitlessZero;
- (BOOL)le:(id)a3;
- (BOOL)ne:(id)a3 outError:(id *)a4;
- (TSCENumberValue)init;
- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)a3 baseUnit:(unsigned __int16)a4 isUnitlessZero:(BOOL)a5;
- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)a3 format:(const TSCEFormat *)a4 baseUnit:(unsigned __int16)a5 isUnitlessZero:(BOOL)a6;
- (TSUDecimal)decimalRepresentation;
- (TSUDecimal)p_transformDurationNumberWithDecimal:(const TSUDecimal *)a3;
- (double)doubleRepresentation;
- (id)abs;
- (id)acos;
- (id)acosh;
- (id)add:(id)a3 functionSpec:(id)a4 outError:(id *)a5;
- (id)add_nothrow:(id)a3;
- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6;
- (id)asStringWithLocale:(id)a3;
- (id)asin;
- (id)asinh;
- (id)atan;
- (id)atan2:(id)a3 outError:(id *)a4;
- (id)atanh;
- (id)besselj:(id)a3;
- (id)bessely:(id)a3;
- (id)canonicalKeyStringForLocale:(id)a3;
- (id)ceil;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cos;
- (id)cosh;
- (id)decrement;
- (id)description;
- (id)divide:(id)a3 outError:(id *)a4;
- (id)erf;
- (id)erfc;
- (id)errorForDuration:(id)a3 argumentIndex:(int)a4;
- (id)exp;
- (id)floor;
- (id)increment;
- (id)lgamma;
- (id)log;
- (id)log10;
- (id)max:(id)a3;
- (id)min:(id)a3;
- (id)mod:(id)a3;
- (id)multiply:(id)a3 context:(id)a4;
- (id)negate;
- (id)numberWithDecimal:(const TSUDecimal *)a3;
- (id)percent;
- (id)power:(id)a3 outError:(id *)a4;
- (id)round;
- (id)sin;
- (id)sinh;
- (id)sqrt;
- (id)subtract:(id)a3 functionSpec:(id)a4 outError:(id *)a5;
- (id)tan;
- (id)tanh;
- (id)trunc;
- (id)variantWithDecimal:(const TSUDecimal *)a3;
- (int64_t)compare:(id)a3 outError:(id *)a4;
- (int64_t)stringBasedCompare:(id)a3 locale:(id)a4 outError:(id *)a5;
- (unint64_t)hash;
@end

@implementation TSCENumberValue

- (TSCENumberValue)init
{
  v4.receiver = self;
  v4.super_class = TSCENumberValue;
  v2 = [(TSCEValue *)&v4 init];
  if (v2)
  {
    TSUDecimal::operator=();
    v2->_baseUnit = 0;
    v2->_isUnitlessZero = 0;
  }

  return v2;
}

- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)a3 baseUnit:(unsigned __int16)a4 isUnitlessZero:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (a5)
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator==() & 1) == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue initWithDecimal:baseUnit:isUnitlessZero:]", v9, v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 55, 0, "can't make a unitless zero with a number other than zero!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    }

    if (v6)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue initWithDecimal:baseUnit:isUnitlessZero:]", v9, v10);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 56, 0, "can't make a unitless zero with a unit!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1057;
  v38 = 1;
  v39 = -50266102;
  v40 = 253;
  return objc_msgSend_initWithDecimal_format_baseUnit_isUnitlessZero_(self, a2, a3, &v34, v6, v5);
}

- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)a3 format:(const TSCEFormat *)a4 baseUnit:(unsigned __int16)a5 isUnitlessZero:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = TSCENumberValue;
  result = [(TSCEValue *)&v10 initWithTSCEFormat:a4];
  if (result)
  {
    result->_decimal = *a3;
    result->_baseUnit = a5;
    result->_isUnitlessZero = a6;
  }

  return result;
}

- (BOOL)isUnitlessZero
{
  isUnitlessZero = self->_isUnitlessZero;
  if (!isUnitlessZero)
  {
    if (self->_baseUnit)
    {
      return 0;
    }

    else if (TSUDecimal::isZero(&self->_decimal))
    {
      isUnitlessZero = 1;
      self->_isUnitlessZero = 1;
    }

    else
    {
      return self->_isUnitlessZero;
    }
  }

  return isUnitlessZero;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TSCENumberValue;
  result = [(TSCEValue *)&v5 copyWithZone:0];
  *(result + 4) = self->_decimal;
  *(result + 40) = self->_baseUnit;
  *(result + 82) = self->_isUnitlessZero;
  return result;
}

- (unint64_t)hash
{
  if (self->_isUnitlessZero)
  {
    return 0;
  }

  TSUDecimal::doubleValue(&self->_decimal);
  if (v3 == 0.0)
  {
    return 0;
  }

  else
  {
    return *&v3;
  }
}

- (id)canonicalKeyStringForLocale:(id)a3
{
  if (objc_msgSend_isDuration(self, a2, a3, v3, v4))
  {
    objc_msgSend_rawTimeIntervalValue(self, v7, v8, v9, v10);
    v11 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v15 = objc_msgSend_initWithDecimal_(v11, v12, v39, v13, v14);
    v19 = objc_msgSend_asStringWithLocale_(v15, v16, a3, v17, v18);
    objc_msgSend_stringByAppendingString_(@"dur_", v20, v19, v21, v22);
  }

  else
  {
    v23 = [TSCENumberValue alloc];
    v39[0] = objc_msgSend_decimalRepresentation(self, v24, v25, v26, v27);
    v39[1] = v28;
    v15 = objc_msgSend_initWithDecimal_(v23, v28, v39, v29, v30);
    v19 = objc_msgSend_asStringWithLocale_(v15, v31, a3, v32, v33);
    objc_msgSend_stringByAppendingString_(@"num_", v34, v19, v35, v36);
  }
  v37 = ;

  return v37;
}

- (id)asNumber:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asNumber:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 135, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return self;
}

- (id)asStringWithLocale:(id)a3
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asStringWithLocale:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 140, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_format(self, a2, a3, v3, v4);
  v22 = 0.0;
  if ((TSUDecimal::isZero(&self->_decimal) & 1) == 0)
  {
    TSUDecimal::doubleValue(&self->_decimal);
    v22 = v23;
  }

  if ((v53._formatType & 0xFFFFFFFC) == 0x100)
  {
    if (!objc_msgSend_hasUnits(self, v18, v19, v20, v21) || objc_msgSend_dimension(self, v18, v19, v20, v21) == 4)
    {
LABEL_13:
      objc_msgSend_format(self, v18, v19, v20, v21);
      v29 = TSCEFormat::tskFormat(&v53, v25, v26, v27, v28);
      v33 = objc_msgSend_stringFromDouble_locale_(v29, v30, a3, v31, v32, v22);
      goto LABEL_14;
    }
  }

  else if (v53._formatType - 262 <= 0xC && ((1 << (LOBYTE(v53._formatType) - 6)) & 0x11A1) != 0)
  {
    goto LABEL_13;
  }

  if (objc_msgSend_isDuration(self, v18, v19, v20, v21))
  {
    objc_msgSend_rawTimeIntervalValue(self, v36, v37, v38, v39);
    if (v53._formatType == 268)
    {
      objc_msgSend_format(self, v40, v41, v42, v43);
      if (TSCEFormat::durationFormat(&v53, v45, v46, v47, v48))
      {
        TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
        TSUDurationFormatterMaxDurationUnitInUnits();
        TSUDurationFormatterMinDurationUnitInUnits();
      }

      v29 = TSUDurationFormatterFormatFromDurationUnits();
      v33 = TSUDurationFormatterStringFromTimeIntervalWithFormat();
    }

    else
    {
      v52 = sub_221387C00(v44);
      sub_221387CBC(v52);
      TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
      v29 = TSUDurationFormatterFormatFromDurationUnits();
      v33 = TSUDurationFormatterStringFromTimeIntervalWithFormat();
    }
  }

  else
  {
    v29 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v36, 256, a3, v39);
    v33 = objc_msgSend_stringFromDouble_locale_(v29, v49, a3, v50, v51, v22);
  }

LABEL_14:
  v34 = v33;

  return v34;
}

- (id)asString:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  if (!a6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asString:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 193, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v20 = objc_msgSend_locale(a3, a2, a3, a4, *&a5);

  return objc_msgSend_asStringWithLocale_(self, v19, v20, v21, v22);
}

- (BOOL)asBoolean:(id)a3 functionSpec:(id)a4 argumentIndex:(int)a5 outError:(id *)a6
{
  v7 = *&a5;
  if (!a6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asBoolean:functionSpec:argumentIndex:outError:]", a4, *&a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 202, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (objc_msgSend_hasUnits(self, a2, a3, a4, *&a5) && objc_msgSend_dimension(self, v22, v23, v24, v25) != 4)
  {
    *a6 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v26, self, a3, a4, v7);
  }

  return TSUDecimal::isZero(&self->_decimal) ^ 1;
}

- (BOOL)asBoolean
{
  if (objc_msgSend_hasUnits(self, a2, v2, v3, v4) && objc_msgSend_dimension(self, v6, v7, v8, v9) != 4)
  {
    return 0;
  }

  else
  {
    return TSUDecimal::isZero(&self->_decimal) ^ 1;
  }
}

- (BOOL)isDuration
{
  hasUnits = objc_msgSend_hasUnits(self, a2, v2, v3, v4);
  if (hasUnits)
  {
    LOBYTE(hasUnits) = objc_msgSend_dimension(self, v7, v8, v9, v10) == 0;
  }

  return hasUnits;
}

- (TSUDecimal)p_transformDurationNumberWithDecimal:(const TSUDecimal *)a3
{
  v6 = *a3;
  baseUnit = self->_baseUnit;
  if (baseUnit <= 3)
  {
    if (baseUnit != 2 && baseUnit != 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    TSUDecimal::operator=();
    TSUDecimal::operator*=();
    goto LABEL_9;
  }

  if (baseUnit == 4 || baseUnit == 5)
  {
    goto LABEL_8;
  }

  if (baseUnit == 7)
  {
    TSUDecimal::operator=();
    TSUDecimal::operator/=();
  }

LABEL_9:
  v5 = v6._decimal.w[1];
  v4 = v6._decimal.w[0];
  result._decimal.w[1] = v5;
  result._decimal.w[0] = v4;
  return result;
}

- (id)variantWithDecimal:(const TSUDecimal *)a3
{
  if (objc_msgSend_hasUnits(self, a2, a3, v3, v4))
  {
    v27[0] = objc_msgSend_p_transformDurationNumberWithDecimal_(self, v7, a3, v8, v9);
    v27[1] = v10;
    v11 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v12, v13, v14, v15);
    v17 = objc_msgSend_initWithDecimal_format_baseUnit_(v11, v16, v27, v26, self->_baseUnit);
  }

  else
  {
    v18 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v19, v20, v21, v22);
    v17 = objc_msgSend_initWithDecimal_format_(v18, v23, a3, v26, v24);
  }

  return v17;
}

- (id)numberWithDecimal:(const TSUDecimal *)a3
{
  v5 = [TSCENumberValue alloc];
  objc_msgSend_format(self, v6, v7, v8, v9);
  v11 = objc_msgSend_initWithDecimal_format_baseUnit_(v5, v10, a3, &v13, self->_baseUnit);

  return v11;
}

- (BOOL)eq:(id)a3 outError:(id *)a4
{
  v10 = a3;
  if (!a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue eq:outError:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 285, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (objc_msgSend_hasUnits(self, v6, v7, v8, v9))
  {
    if (objc_msgSend_hasUnits(v10, v22, v23, v24, v25))
    {
      v30 = objc_msgSend_dimension(self, v26, v27, v28, v29);
      if (v30 == objc_msgSend_dimension(v10, v31, v32, v33, v34))
      {
        if (v30 == 4)
        {
          v39 = objc_msgSend_unit(self, v35, v36, v37, v38);
          if (v39 != objc_msgSend_unit(v10, v40, v41, v42, v43))
          {
            objc_msgSend_invalidCurrencyComparisonError(TSCEError, v44, v45, v46, v47);
            *a4 = v62 = 0;
            goto LABEL_17;
          }
        }

        isZero = TSUDecimal::operator==();
        goto LABEL_13;
      }

LABEL_16:
      v62 = 0;
      goto LABEL_17;
    }

    isZero = objc_msgSend_eq_outError_(v10, v26, self, a4, v29);
LABEL_13:
    v62 = isZero;
    goto LABEL_17;
  }

  if (objc_msgSend_hasUnits(v10, v22, v23, v24, v25) && objc_msgSend_dimension(v10, v49, v50, v51, v52) != 4)
  {
    if (!TSUDecimal::isZero(&self->_decimal))
    {
      goto LABEL_16;
    }

    v70._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v63, v64, v65, v66);
    v70._decimal.w[1] = v67;
    isZero = TSUDecimal::isZero(&v70);
    goto LABEL_13;
  }

  v70._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v49, v50, v51, v52);
  v70._decimal.w[1] = v53;
  TSUDecimal::doubleValue(&v70);
  v55 = v54;
  v69._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v56, v57, v58, v59);
  v69._decimal.w[1] = v60;
  TSUDecimal::doubleValue(&v69);
  v62 = v55 == v61;
LABEL_17:

  return v62;
}

- (BOOL)ne:(id)a3 outError:(id *)a4
{
  v10 = a3;
  if (!a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue ne:outError:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 317, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (objc_msgSend_hasUnits(self, v6, v7, v8, v9))
  {
    LODWORD(self) = objc_msgSend_eq_outError_(self, v22, v10, a4, v25) ^ 1;
  }

  else if (objc_msgSend_hasUnits(v10, v22, v23, v24, v25))
  {
    LOBYTE(self) = 1;
  }

  else
  {
    v41._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v26, v27, v28, v29);
    v41._decimal.w[1] = v30;
    TSUDecimal::doubleValue(&v41);
    v32 = v31;
    v40._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v33, v34, v35, v36);
    v40._decimal.w[1] = v37;
    TSUDecimal::doubleValue(&v40);
    LOBYTE(self) = v32 != v38;
  }

  return self;
}

- (BOOL)ge:(id)a3
{
  v4 = a3;
  objc_msgSend_decimalRepresentation(self, v5, v6, v7, v8);
  objc_msgSend_decimalRepresentation(v4, v9, v10, v11, v12);
  if (TSUDecimal::operator<=())
  {
    v13 = TSUDecimal::operator==();
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)le:(id)a3
{
  v4 = a3;
  objc_msgSend_decimalRepresentation(self, v5, v6, v7, v8);
  objc_msgSend_decimalRepresentation(v4, v9, v10, v11, v12);
  LOBYTE(self) = TSUDecimal::operator<=();

  return self;
}

- (int64_t)stringBasedCompare:(id)a3 locale:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v13 = a4;
  if (!a5)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCENumberValue stringBasedCompare:locale:outError:]", v11, v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 360, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  if (!objc_msgSend_hasUnits(v8, v9, v10, v11, v12) || (objc_msgSend_hasUnits(self, v25, v26, v27, v28) & 1) != 0)
  {
    v30 = self;
    if (!objc_msgSend_hasUnits(v30, v31, v32, v33, v34) || (objc_msgSend_isUnitlessZero(v8, v35, v36, v37, v38) & 1) != 0)
    {
      goto LABEL_7;
    }

    v47 = objc_msgSend_dimension(v30, v39, v40, v41, v42);
    hasUnits = objc_msgSend_hasUnits(v8, v48, v49, v50, v51);
    v57 = v47 == 4 ? hasUnits : 1;
    if ((v57 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (objc_msgSend_hasUnits(v8, v53, v54, v55, v56) && v47 == objc_msgSend_dimension(v8, v58, v59, v60, v61))
    {
      if (v47 != 4 || v30->_baseUnit == LOWORD(v8[5]._decimal.w[0]))
      {
LABEL_7:
        v43 = sub_2213EF280(&v30->_decimal, v8 + 4, v13);
LABEL_8:

        goto LABEL_14;
      }

      v62 = objc_msgSend_invalidCurrencyComparisonError(TSCEError, v58, v59, v60, v61);
    }

    else
    {
      v62 = objc_msgSend_invalidComparisonError(TSCEError, v58, v59, v60, v61);
    }

    v43 = 0;
    *a5 = v62;
    goto LABEL_8;
  }

  v44 = objc_msgSend_stringBasedCompare_locale_outError_(v8, v29, self, v13, a5);
  v45 = -1;
  if (v44 != 1)
  {
    v45 = v44;
  }

  if (v44 == -1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v45;
  }

LABEL_14:

  return v43;
}

- (int64_t)compare:(id)a3 outError:(id *)a4
{
  v9 = a3;
  if (!a4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue compare:outError:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 417, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = self;
  v22 = v9;
  if (objc_msgSend_hasUnits(v22, v23, v24, v25, v26) && (objc_msgSend_hasUnits(v21, v27, v28, v29, v30) & 1) == 0)
  {

    v33 = v21;
    v31 = 1;
    v32 = v22;
    hasUnits = objc_msgSend_hasUnits(v22, v39, v40, v41, v42);
  }

  else
  {
    v31 = 0;
    v32 = v21;
    v33 = v22;
    hasUnits = objc_msgSend_hasUnits(v21, v27, v28, v29, v30);
  }

  if (!hasUnits)
  {
    v77._decimal.w[0] = objc_msgSend_decimalRepresentation(v33, v35, v36, v37, v38);
    v77._decimal.w[1] = v69;
    TSUDecimal::doubleValue(&v77);
    v71 = v70;
    TSUDecimal::doubleValue(v32 + 4);
    if (v72 == v71)
    {
      goto LABEL_27;
    }

    TSUDecimal::doubleValue(v32 + 4);
    if (v73 >= v71)
    {
      v74 = 1;
    }

    else
    {
      v74 = -1;
    }

    if (v31)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v43 = objc_msgSend_dimension(v32, v35, v36, v37, v38);
  v48 = objc_msgSend_hasUnits(v33, v44, v45, v46, v47);
  if (v43 == 4)
  {
    v53 = v48;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    if ((objc_msgSend_hasUnits(v33, v49, v50, v51, v52) & 1) != 0 && v43 == objc_msgSend_dimension(v33, v54, v55, v56, v57))
    {
      if (v43 != 4)
      {
        if (v43)
        {
          v58 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSCENumberValue compare:outError:]", v56, v57);
          v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v61, v62);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 452, 0, "Support for non-duration, non-currency unit comparisons is not implemented.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
        }

        goto LABEL_26;
      }

      if (v21->_baseUnit == v33[40])
      {
        goto LABEL_26;
      }

      v75 = objc_msgSend_invalidCurrencyComparisonError(TSCEError, v54, v55, v56, v57);
    }

    else
    {
      v75 = objc_msgSend_invalidComparisonError(TSCEError, v54, v55, v56, v57);
    }

    v74 = 0;
    *a4 = v75;
    goto LABEL_37;
  }

LABEL_26:
  if (TSUDecimal::operator==())
  {
LABEL_27:
    v74 = 0;
    if (!v31)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (TSUDecimal::operator<())
  {
    v74 = -1;
  }

  else
  {
    v74 = 1;
  }

  if (v31)
  {
LABEL_33:
    if (v74 == -1)
    {
      v74 = 1;
    }

    else if (v74 == 1)
    {
      v74 = -1;
    }
  }

LABEL_37:

  return v74;
}

- (id)add:(id)a3 functionSpec:(id)a4 outError:(id *)a5
{
  v12 = a3;
  if (!a5)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCENumberValue add:functionSpec:outError:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 489, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (objc_msgSend_isUnitlessZero(v12, v8, v9, v10, v11))
  {
    v28 = self;
LABEL_14:
    v67 = v28;
    goto LABEL_15;
  }

  if (objc_msgSend_isUnitlessZero(self, v24, v25, v26, v27))
  {
    v28 = v12;
    goto LABEL_14;
  }

  if (!objc_msgSend_hasUnits(self, v29, v30, v31, v32) || !objc_msgSend_hasUnits(v12, v33, v34, v35, v36) || (v37 = objc_msgSend_dimension(self, v33, v34, v35, v36), v37 != objc_msgSend_dimension(v12, v38, v39, v40, v41)))
  {
    v56 = objc_msgSend_decimalRepresentation(self, v33, v34, v35, v36);
    v58 = v57;
    v91 = objc_msgSend_decimalRepresentation(v12, v57, v59, v60, v61);
    v92 = v62;
    v94._decimal.w[0] = v56;
    v94._decimal.w[1] = v58;
    TSUDecimal::operator+=();
    v93[0] = v56;
    v93[1] = v58;
    v63 = [TSCENumberValue alloc];
    v28 = objc_msgSend_initWithDecimal_(v63, v64, v93, v65, v66, v91, v92);
    goto LABEL_14;
  }

  if (objc_msgSend_dimension(self, v33, v34, v35, v36) == 4 && (v46 = objc_msgSend_unit(self, v42, v43, v44, v45), v46 != objc_msgSend_unit(v12, v47, v48, v49, v50)))
  {
    v69 = objc_msgSend_functionName(a4, v51, v52, v53, v54);
    v55 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v70, v69, v71, v72);
  }

  else
  {
    v55 = 0;
  }

  TSUDecimal::operator=();
  v77 = objc_msgSend_rawDecimalValue(v12, v73, v74, v75, v76);
  TSUDecimal::add(&self->_decimal, v77, &v94);
  LODWORD(self) = objc_msgSend_unit(self, v78, v79, v80, v81);
  v86 = objc_msgSend_unit(v12, v82, v83, v84, v85);
  if (self >= v86)
  {
    self = v86;
  }

  else
  {
    self = self;
  }

  if (v55)
  {
    v87 = v55;
    *a5 = v55;
  }

  v88 = [TSCENumberValue alloc];
  v67 = objc_msgSend_initWithDecimal_baseUnit_(v88, v89, &v94, self, v90);

LABEL_15:

  return v67;
}

- (id)add_nothrow:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isUnitlessZero(v4, v5, v6, v7, v8))
  {
    v13 = self;
  }

  else if (objc_msgSend_isUnitlessZero(self, v9, v10, v11, v12))
  {
    v13 = v4;
  }

  else if (objc_msgSend_hasUnits(self, v14, v15, v16, v17) && objc_msgSend_hasUnits(v4, v18, v19, v20, v21) && (v22 = objc_msgSend_dimension(self, v18, v19, v20, v21), v22 == objc_msgSend_dimension(v4, v23, v24, v25, v26)))
  {
    v35 = objc_msgSend_rawDecimalValue(self, v18, v19, v20, v21);
    objc_msgSend_rawDecimalValue(v4, v27, v28, v29, v30);
    v73[0] = *v35;
    TSUDecimal::operator+=();
    v74 = v73[0];
    LODWORD(v35) = objc_msgSend_unit(self, v31, v32, v33, v34);
    v40 = objc_msgSend_unit(v4, v36, v37, v38, v39);
    if (v35 >= v40)
    {
      v35 = v40;
    }

    else
    {
      v35 = v35;
    }

    v41 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v42, v43, v44, v45);
    if (v4)
    {
      objc_msgSend_format(v4, v46, v47, v48, v49);
    }

    else
    {
      memset(&v71, 0, sizeof(v71));
    }

    TSCEFormat::formatByMergingWithFormat(&v72, &v71, v47, v48, v49, v73);
    v13 = objc_msgSend_initWithDecimal_format_baseUnit_(v41, v70, &v74, v73, v35);
  }

  else
  {
    v50 = objc_msgSend_decimalRepresentation(self, v18, v19, v20, v21);
    v52 = v51;
    v72._tskFormat = objc_msgSend_decimalRepresentation(v4, v51, v53, v54, v55);
    *&v72._formatType = v56;
    *&v73[0] = v50;
    *(&v73[0] + 1) = v52;
    TSUDecimal::operator+=();
    v74 = v73[0];
    v57 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v58, v59, v60, v61);
    if (v4)
    {
      objc_msgSend_format(v4, v62, v63, v64, v65);
    }

    else
    {
      memset(&v71, 0, sizeof(v71));
    }

    TSCEFormat::formatByMergingWithFormat(&v72, &v71, v63, v64, v65, v73);
    v13 = objc_msgSend_initWithDecimal_format_(v57, v66, &v74, v73, v67);
  }

  v68 = v13;

  return v68;
}

- (id)subtract:(id)a3 functionSpec:(id)a4 outError:(id *)a5
{
  v12 = a3;
  if (!a5)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCENumberValue subtract:functionSpec:outError:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 540, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (objc_msgSend_isUnitlessZero(v12, v8, v9, v10, v11))
  {
    v28 = self;
LABEL_14:
    v63 = v28;
    goto LABEL_15;
  }

  if (objc_msgSend_isUnitlessZero(self, v24, v25, v26, v27))
  {
    v28 = objc_msgSend_negate(v12, v29, v30, v31, v32);
    goto LABEL_14;
  }

  if (!objc_msgSend_hasUnits(self, v29, v30, v31, v32) || !objc_msgSend_hasUnits(v12, v33, v34, v35, v36) || (v37 = objc_msgSend_dimension(self, v33, v34, v35, v36), v37 != objc_msgSend_dimension(v12, v38, v39, v40, v41)))
  {
    v52 = objc_msgSend_decimalRepresentation(self, v33, v34, v35, v36);
    v54 = v53;
    v87 = objc_msgSend_decimalRepresentation(v12, v53, v55, v56, v57);
    v88 = v58;
    *&v90 = v52;
    *(&v90 + 1) = v54;
    TSUDecimal::operator-=();
    v89 = v90;
    v59 = [TSCENumberValue alloc];
    v28 = objc_msgSend_initWithDecimal_(v59, v60, &v89, v61, v62, v87, v88);
    goto LABEL_14;
  }

  if (objc_msgSend_dimension(self, v33, v34, v35, v36) == 4 && (v46 = objc_msgSend_unit(self, v42, v43, v44, v45), v46 != objc_msgSend_unit(v12, v47, v48, v49, v50)))
  {
    v65 = objc_msgSend_functionName(a4, v42, v43, v44, v45);
    v51 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v66, v65, v67, v68);
  }

  else
  {
    v51 = 0;
  }

  v69 = objc_msgSend_rawDecimalValue(self, v42, v43, v44, v45);
  objc_msgSend_rawDecimalValue(v12, v70, v71, v72, v73);
  v90 = *v69;
  TSUDecimal::operator-=();
  v89 = v90;
  LODWORD(self) = objc_msgSend_unit(self, v74, v75, v76, v77);
  v82 = objc_msgSend_unit(v12, v78, v79, v80, v81);
  if (self >= v82)
  {
    self = v82;
  }

  else
  {
    self = self;
  }

  if (v51)
  {
    v83 = v51;
    *a5 = v51;
  }

  v84 = [TSCENumberValue alloc];
  v63 = objc_msgSend_initWithDecimal_baseUnit_(v84, v85, &v89, self, v86);

LABEL_15:

  return v63;
}

- (id)multiply:(id)a3 context:(id)a4
{
  v6 = a3;
  v79[0] = objc_msgSend_decimalRepresentation(v6, v7, v8, v9, v10);
  v79[1] = v11;
  if ((objc_msgSend_hasUnits(self, v11, v12, v13, v14) & 1) == 0)
  {
    decimal._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v15, v16, v17, v18);
    decimal._decimal.w[1] = v59;
    TSUDecimal::operator*=();
    v78 = decimal;
    v63 = objc_msgSend_variantWithDecimal_(v6, v60, &v78, v61, v62);
LABEL_16:
    v58 = v63;
    goto LABEL_17;
  }

  v19 = objc_msgSend_dimension(self, v15, v16, v17, v18);
  hasUnits = objc_msgSend_hasUnits(v6, v20, v21, v22, v23);
  if (v19 == 4)
  {
    v29 = 0;
  }

  else
  {
    v29 = hasUnits;
  }

  if (v29 != 1 || objc_msgSend_dimension(v6, v25, v26, v27, v28) != v19)
  {
    if (objc_msgSend_hasUnits(v6, v25, v26, v27, v28))
    {
      decimal._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v64, v65, v66, v67);
      decimal._decimal.w[1] = v68;
      TSUDecimal::operator*=();
      v78 = decimal;
      v69 = [TSCENumberValue alloc];
      v63 = objc_msgSend_initWithDecimal_(v69, v70, &v78, v71, v72);
    }

    else
    {
      decimal = self->_decimal;
      TSUDecimal::operator*=();
      v78 = decimal;
      v73 = [TSCENumberValue alloc];
      v63 = objc_msgSend_initWithDecimal_baseUnit_(v73, v74, &v78, self->_baseUnit, v75);
    }

    goto LABEL_16;
  }

  if (a4)
  {
    objc_msgSend_reportAutomaticUnitConversionWarningInContext_(TSCEWarning, v25, a4, v27, v28);
  }

  v30 = objc_msgSend_unit(v6, v25, v26, v27, v28);
  v35 = objc_msgSend_unit(self, v31, v32, v33, v34);
  TSUDecimal::operator=();
  v41 = objc_msgSend_convertInNumber_outNumber_fromUnit_toUnit_(TSCEUnitRegistry, v36, v79, &v78, (v30 << 16) | 9, (v35 << 16) | 9);
  if (v41)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSCENumberValue multiply:context:]", v39, v40);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 593, 0, "Can't handle an error here, no easy way to return it: %@", v41);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

  decimal._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v37, v38, v39, v40);
  decimal._decimal.w[1] = v53;
  TSUDecimal::operator*=();
  v77 = decimal;
  v54 = [TSCENumberValue alloc];
  v58 = objc_msgSend_initWithDecimal_(v54, v55, &v77, v56, v57);

LABEL_17:

  return v58;
}

- (id)divide:(id)a3 outError:(id *)a4
{
  v10 = a3;
  if (!a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue divide:outError:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 610, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (!objc_msgSend_hasUnits(self, v6, v7, v8, v9))
  {
    v72._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v22, v23, v24, v25);
    v72._decimal.w[1] = v44;
    if (TSUDecimal::isZero(&v72))
    {
LABEL_12:
      v43 = objc_msgSend_divideByZeroError(TSCEError, v45, v46, v47, v48);
      v50 = 0;
      if (!v43)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v73._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v45, v46, v47, v48);
    v73._decimal.w[1] = v53;
    TSUDecimal::operator/=();
    v71 = v73;
    v57 = objc_msgSend_variantWithDecimal_(self, v54, &v71, v55, v56);
LABEL_19:
    v50 = v57;
    v43 = 0;
    goto LABEL_14;
  }

  if (!objc_msgSend_hasUnits(v10, v22, v23, v24, v25))
  {
    v72._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v26, v27, v28, v29);
    v72._decimal.w[1] = v49;
    if (TSUDecimal::isZero(&v72))
    {
      goto LABEL_12;
    }

    v73 = *objc_msgSend_rawDecimalValue(self, v45, v46, v47, v48);
    TSUDecimal::operator/=();
    v71 = v73;
    v58 = [TSCENumberValue alloc];
    v63 = objc_msgSend_unit(self, v59, v60, v61, v62, v71);
    v57 = objc_msgSend_initWithDecimal_baseUnit_(v58, v64, &v71, v63, v65);
    goto LABEL_19;
  }

  TSUDecimal::operator=();
  if (objc_msgSend_dimension(self, v30, v31, v32, v33) || objc_msgSend_dimension(v10, v34, v35, v36, v37))
  {
    v71._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v34, v35, v36, v37);
    v71._decimal.w[1] = v38;
    if (TSUDecimal::isZero(&v71))
    {
LABEL_8:
      v43 = objc_msgSend_divideByZeroError(TSCEError, v39, v40, v41, v42);
      goto LABEL_22;
    }

    v73._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v39, v40, v41, v42);
    v73._decimal.w[1] = v66;
    TSUDecimal::operator/=();
  }

  else
  {
    v71 = *objc_msgSend_rawDecimalValue(v10, v34, v35, v36, v37);
    if (TSUDecimal::isZero(&v71))
    {
      goto LABEL_8;
    }

    v73 = *objc_msgSend_rawDecimalValue(self, v39, v40, v41, v42);
    TSUDecimal::operator/=();
  }

  v43 = 0;
  v72 = v73;
LABEL_22:
  v67 = [TSCENumberValue alloc];
  v50 = objc_msgSend_initWithDecimal_(v67, v68, &v72, v69, v70);
  if (v43)
  {
LABEL_13:
    v51 = v43;
    *a4 = v43;
  }

LABEL_14:

  return v50;
}

- (id)power:(id)a3 outError:(id *)a4
{
  v10 = a3;
  if (!a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue power:outError:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 663, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v46._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v6, v7, v8, v9);
  v46._decimal.w[1] = v22;
  TSUDecimal::doubleValue(&v46);
  v24 = v23;
  v46._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v25, v26, v27, v28);
  v46._decimal.w[1] = v29;
  TSUDecimal::doubleValue(&v46);
  v31 = v30;
  v36 = pow(v30, v24);
  if (v31 != 0.0)
  {
    goto LABEL_10;
  }

  if (v24 == 0.0)
  {
    v37 = objc_msgSend_zeroToPowerOfZeroError(TSCEError, v32, v33, v34, v35, v36);
  }

  else
  {
    if (v24 >= 0.0)
    {
      goto LABEL_10;
    }

    v37 = objc_msgSend_divideByZeroError(TSCEError, v32, v33, v34, v35, v36);
  }

  if (v37)
  {
    v38 = v37;
    *a4 = v38;
    v39 = v38;
    goto LABEL_11;
  }

LABEL_10:
  v39 = 0;
LABEL_11:
  v40 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v44 = objc_msgSend_initWithDecimal_(v40, v41, &v46, v42, v43);

  return v44;
}

- (id)percent
{
  if (objc_msgSend_hasUnits(self, a2, v2, v3, v4))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue percent]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 686, 0, "Should never call percent on a unit value!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_decimalRepresentation(self, v6, v7, v8, v9);
  v23 = v22;
  TSUDecimal::operator=();
  v29[0] = v21;
  v29[1] = v23;
  TSUDecimal::operator/=();
  v27 = objc_msgSend_variantWithDecimal_(self, v24, v29, v25, v26);

  return v27;
}

- (id)negate
{
  if (TSUDecimal::isZero(&self->_decimal))
  {
    v7 = self;
  }

  else
  {
    v13._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v3, v4, v5, v6);
    v13._decimal.w[1] = v8;
    TSUDecimal::negate(&v13);
    v7 = objc_msgSend_variantWithDecimal_(self, v9, &v13, v10, v11);
  }

  return v7;
}

- (id)increment
{
  v6 = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v8 = v7;
  TSUDecimal::operator=();
  v14[0] = v6;
  v14[1] = v8;
  TSUDecimal::operator+=();
  v12 = objc_msgSend_variantWithDecimal_(self, v9, v14, v10, v11);

  return v12;
}

- (id)decrement
{
  v6 = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v8 = v7;
  TSUDecimal::operator=();
  v14[0] = v6;
  v14[1] = v8;
  TSUDecimal::operator-=();
  v12 = objc_msgSend_variantWithDecimal_(self, v9, v14, v10, v11);

  return v12;
}

- (id)abs
{
  v12._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v12._decimal.w[1] = v6;
  TSUDecimal::abs(&v12);
  v10 = objc_msgSend_variantWithDecimal_(self, v7, &v12, v8, v9);

  return v10;
}

- (id)acos
{
  TSUDecimal::doubleValue(&self->_decimal);
  acos(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)acosh
{
  TSUDecimal::doubleValue(&self->_decimal);
  acosh(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)asin
{
  TSUDecimal::doubleValue(&self->_decimal);
  asin(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)asinh
{
  TSUDecimal::doubleValue(&self->_decimal);
  asinh(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)atan
{
  TSUDecimal::doubleValue(&self->_decimal);
  atan(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)atan2:(id)a3 outError:(id *)a4
{
  v10 = a3;
  if (!a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue atan2:outError:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 744, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v40._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v6, v7, v8, v9);
  v40._decimal.w[1] = v22;
  TSUDecimal::doubleValue(&v40);
  v24 = v23;
  isZero = TSUDecimal::isZero(&self->_decimal);
  if (v24 == 0.0)
  {
    v30 = isZero;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == 1)
  {
    v31 = objc_msgSend_divideByZeroError(TSCEError, v26, v27, v28, v29);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      *a4 = v32;
    }
  }

  else
  {
    TSUDecimal::doubleValue(&self->_decimal);
    atan2(v34, v24);
    v32 = 0;
  }

  TSUDecimal::operator=();
  v38 = objc_msgSend_variantWithDecimal_(self, v35, &v40, v36, v37);

  return v38;
}

- (id)atanh
{
  TSUDecimal::doubleValue(&self->_decimal);
  atanh(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)besselj:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_integer(v4, v5, v6, v7, v8);
  TSUDecimal::doubleValue(&self->_decimal);
  jn(v9, v10);
  TSUDecimal::operator=();
  v14 = objc_msgSend_variantWithDecimal_(self, v11, &v16, v12, v13);

  return v14;
}

- (id)bessely:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_integer(v4, v5, v6, v7, v8);
  TSUDecimal::doubleValue(&self->_decimal);
  yn(v9, v10);
  TSUDecimal::operator=();
  v14 = objc_msgSend_variantWithDecimal_(self, v11, &v16, v12, v13);

  return v14;
}

- (id)ceil
{
  v12._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v12._decimal.w[1] = v6;
  TSUDecimal::ceiling(&v12);
  v10 = objc_msgSend_variantWithDecimal_(self, v7, &v12, v8, v9);

  return v10;
}

- (id)cos
{
  TSUDecimal::doubleValue(&self->_decimal);
  cos(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)cosh
{
  TSUDecimal::doubleValue(&self->_decimal);
  cosh(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)erf
{
  TSUDecimal::doubleValue(&self->_decimal);
  erf(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)erfc
{
  TSUDecimal::doubleValue(&self->_decimal);
  erfc(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)exp
{
  TSUDecimal::doubleValue(&self->_decimal);
  exp(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)floor
{
  v12._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v12._decimal.w[1] = v6;
  TSUDecimal::floor(&v12);
  v10 = objc_msgSend_variantWithDecimal_(self, v7, &v12, v8, v9);

  return v10;
}

- (id)lgamma
{
  v13._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v13._decimal.w[1] = v6;
  TSUDecimal::doubleValue(&v13);
  lgamma(v7);
  TSUDecimal::operator=();
  v11 = objc_msgSend_variantWithDecimal_(self, v8, &v13, v9, v10);

  return v11;
}

- (id)log
{
  TSUDecimal::doubleValue(&self->_decimal);
  log(v2);
  v3 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v7 = objc_msgSend_initWithDecimal_(v3, v4, &v9, v5, v6);

  return v7;
}

- (id)log10
{
  TSUDecimal::doubleValue(&self->_decimal);
  log10(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)max:(id)a3
{
  v4 = a3;
  objc_msgSend_rawDecimalValue(self, v5, v6, v7, v8);
  objc_msgSend_rawDecimalValue(v4, v9, v10, v11, v12);
  if (TSUDecimal::operator<=())
  {
    self = v4;
  }

  v13 = self;

  return self;
}

- (id)min:(id)a3
{
  v4 = a3;
  objc_msgSend_rawDecimalValue(self, v5, v6, v7, v8);
  objc_msgSend_rawDecimalValue(v4, v9, v10, v11, v12);
  if (!TSUDecimal::operator<())
  {
    self = v4;
  }

  v13 = self;

  return self;
}

- (id)mod:(id)a3
{
  v4 = a3;
  TSUDecimal::operator=();
  TSUDecimal::mod(&self->_decimal, v4 + 4, &v10);
  v8 = objc_msgSend_numberWithDecimal_(self, v5, &v10, v6, v7);

  return v8;
}

- (id)round
{
  decimal = self->_decimal;
  TSUDecimal::round(&decimal);
  v6 = objc_msgSend_variantWithDecimal_(self, v3, &decimal, v4, v5);

  return v6;
}

- (id)sin
{
  TSUDecimal::doubleValue(&self->_decimal);
  sin(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)sinh
{
  TSUDecimal::doubleValue(&self->_decimal);
  sinh(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)sqrt
{
  v12._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v12._decimal.w[1] = v5;
  TSUDecimal::doubleValue(&v12);
  v6 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v10 = objc_msgSend_initWithDecimal_(v6, v7, &v12, v8, v9);

  return v10;
}

- (id)tan
{
  TSUDecimal::doubleValue(&self->_decimal);
  tan(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)tanh
{
  TSUDecimal::doubleValue(&self->_decimal);
  tanh(v3);
  TSUDecimal::operator=();
  v7 = objc_msgSend_variantWithDecimal_(self, v4, &v9, v5, v6);

  return v7;
}

- (id)trunc
{
  v12._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v12._decimal.w[1] = v6;
  TSUDecimal::trunc(&v12);
  v10 = objc_msgSend_variantWithDecimal_(self, v7, &v12, v8, v9);

  return v10;
}

- (BOOL)dimensionsMatchModuloCurrency:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_hasUnits(self, v5, v6, v7, v8) & 1) == 0 && (objc_msgSend_hasUnits(v4, v9, v10, v11, v12) & 1) == 0 || (objc_msgSend_hasUnits(self, v9, v10, v11, v12) & 1) == 0 && objc_msgSend_dimension(v4, v13, v14, v15, v16) == 4)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_hasUnits(self, v13, v14, v15, v16))
  {
LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

  v25 = objc_msgSend_dimension(self, v17, v18, v19, v20);
  if (v25 == 4 && (objc_msgSend_hasUnits(v4, v21, v22, v23, v24) & 1) == 0)
  {
LABEL_10:
    v30 = 1;
    goto LABEL_12;
  }

  if (!objc_msgSend_hasUnits(v4, v21, v22, v23, v24))
  {
    goto LABEL_11;
  }

  v30 = v25 == objc_msgSend_dimension(v4, v26, v27, v28, v29);
LABEL_12:

  return v30;
}

- (BOOL)areCurrenciesMatched:(id)a3
{
  v4 = a3;
  v35 = 1;
  if (objc_msgSend_hasUnits(self, v5, v6, v7, v8))
  {
    if (objc_msgSend_hasUnits(v4, v9, v10, v11, v12))
    {
      v17 = objc_msgSend_dimension(self, v13, v14, v15, v16);
      if (v17 == objc_msgSend_dimension(v4, v18, v19, v20, v21) && objc_msgSend_dimension(self, v22, v23, v24, v25) == 4)
      {
        v30 = objc_msgSend_unit(self, v26, v27, v28, v29);
        if (v30 != objc_msgSend_unit(v4, v31, v32, v33, v34))
        {
          v35 = 0;
        }
      }
    }
  }

  return v35;
}

- (id)errorForDuration:(id)a3 argumentIndex:(int)a4
{
  if (objc_msgSend_isDuration(self, a2, a3, *&a4, v4))
  {
    v11 = objc_msgSend_functionName(a3, v7, v8, v9, v10);
    v14 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v12, v11, (a4 + 1), v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSUDecimal)decimalRepresentation
{
  decimal = self->_decimal;
  baseUnit = self->_baseUnit;
  if (baseUnit <= 3)
  {
    if (baseUnit != 2 && baseUnit != 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    TSUDecimal::operator=();
    TSUDecimal::operator/=();
    goto LABEL_9;
  }

  if (baseUnit == 4 || baseUnit == 5)
  {
    goto LABEL_8;
  }

  if (baseUnit == 7)
  {
    TSUDecimal::operator=();
    TSUDecimal::operator*=();
  }

LABEL_9:
  TSUDecimal::operator=();
  if (TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
  }

  v4 = decimal._decimal.w[1];
  v3 = decimal._decimal.w[0];
  result._decimal.w[1] = v4;
  result._decimal.w[0] = v3;
  return result;
}

- (double)doubleRepresentation
{
  v7._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3, v4);
  v7._decimal.w[1] = v5;
  TSUDecimal::doubleValue(&v7);
  if (result == 0.0)
  {
    return 0.0;
  }

  return result;
}

- (id)description
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3, v4);
  v10 = objc_msgSend_asStringWithLocale_(self, v7, v6, v8, v9);

  return v10;
}

+ (id)makeDurationWithWeeks:(double)a3 days:(double)a4 hours:(double)a5 minutes:(double)a6 seconds:(double)a7 milliseconds:(double)a8
{
  if (a8 != 0.0 && a7 == 0.0)
  {
    v9 = 7;
  }

  else
  {
    v9 = 6;
  }

  if (a6 != 0.0)
  {
    v9 = 5;
  }

  if (a5 != 0.0)
  {
    v9 = 4;
  }

  if (a4 != 0.0)
  {
    v9 = 3;
  }

  if (a3 == 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  v11 = sub_221387CBC(v10);
  TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
  v12 = objc_alloc(MEMORY[0x277D80678]);
  v13 = TSUDurationFormatterMinDurationUnitInUnits();
  v15 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v12, v14, 0, v13, v11, 1);
  v16 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  TSCEFormat::TSCEFormat(&v20, v15, 0);
  v18 = objc_msgSend_initWithDecimal_format_baseUnit_(v16, v17, v21, &v20, v10);

  return v18;
}

+ (id)zero
{
  v2 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v6 = objc_msgSend_initWithDecimal_(v2, v3, &v8, v4, v5);

  return v6;
}

+ (id)numberWithDecimal:(const TSUDecimal *)a3
{
  v4 = [TSCENumberValue alloc];
  v8 = objc_msgSend_initWithDecimal_(v4, v5, a3, v6, v7);

  return v8;
}

+ (id)numberWithDecimal:(const TSUDecimal *)a3 format:(const TSCEFormat *)a4
{
  v6 = [TSCENumberValue alloc];
  v9 = objc_msgSend_initWithDecimal_format_(v6, v7, a3, a4, v8);

  return v9;
}

+ (id)numberWithDecimal:(const TSUDecimal *)a3 baseUnit:(unsigned __int16)a4
{
  v4 = a4;
  v6 = [TSCENumberValue alloc];
  v9 = objc_msgSend_initWithDecimal_baseUnit_(v6, v7, a3, v4, v8);

  return v9;
}

+ (id)numberWithDecimal:(const TSUDecimal *)a3 format:(const TSCEFormat *)a4 baseUnit:(unsigned __int16)a5
{
  v5 = a5;
  v8 = [TSCENumberValue alloc];
  v10 = objc_msgSend_initWithDecimal_format_baseUnit_(v8, v9, a3, a4, v5);

  return v10;
}

+ (id)unitlessZero
{
  v2 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  isUnitlessZero = objc_msgSend_initWithDecimal_baseUnit_isUnitlessZero_(v2, v3, &v6, 0, 1);

  return isUnitlessZero;
}

@end