@interface TSWPLineSpacing
+ (id)instanceWithArchive:(const Message *)a3 unarchiver:(id)a4;
+ (id)lineSpacing;
- (BOOL)isEqual:(id)a3;
- (TSWPLineSpacing)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSWPLineSpacing)initWithLocalizationDictionary:(id)a3;
- (TSWPLineSpacing)initWithMode:(int)a3 amount:(double)a4 baselineRule:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSWPLineSpacing

+ (id)lineSpacing
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSWPLineSpacing)initWithMode:(int)a3 amount:(double)a4 baselineRule:(double)a5
{
  v10.receiver = self;
  v10.super_class = TSWPLineSpacing;
  result = [(TSWPLineSpacing *)&v10 init];
  if (result)
  {
    result->_mode = a3;
    if (a3 == 2 && a4 <= 0.0)
    {
      v9 = 1.0;
    }

    else
    {
      if (a3 || a4 >= 0.100000001)
      {
        result->_amount = a4;
        goto LABEL_10;
      }

      v9 = 0.100000001;
    }

    result->_amount = v9;
LABEL_10:
    result->_baselineRule = a5;
  }

  return result;
}

- (TSWPLineSpacing)initWithLocalizationDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"mode");
  v7 = TSUCheckedDynamicCast();

  objc_opt_class();
  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"amount");
  v10 = TSUCheckedDynamicCast();

  objc_opt_class();
  v12 = objc_msgSend_objectForKeyedSubscript_(v4, v11, @"baseline-rule");
  v13 = TSUDynamicCast();

  if (!v7)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPLineSpacing initWithLocalizationDictionary:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineSpacing.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 64, 0, "invalid nil value for '%{public}s'", "modeValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    if (v10)
    {
LABEL_7:

      v40 = 0;
      goto LABEL_10;
    }

LABEL_6:
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPLineSpacing initWithLocalizationDictionary:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineSpacing.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 65, 0, "invalid nil value for '%{public}s'", "amountValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v16 = objc_msgSend_intValue(v7, v14, v15);
  objc_msgSend_tsu_CGFloatValue(v10, v17, v18);
  if (v13)
  {
    v22 = v21;
    objc_msgSend_tsu_CGFloatValue(v13, v19, v20);
    v25 = objc_msgSend_initWithMode_amount_baselineRule_(self, v23, v16, v22, v24);
  }

  else
  {
    v25 = objc_msgSend_initWithMode_amount_(self, v19, v16);
  }

  v40 = v25;
LABEL_10:

  return v40;
}

+ (id)instanceWithArchive:(const Message *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSWPLineSpacing alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5);

  return v8;
}

- (TSWPLineSpacing)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v4 = *(a3 + 4);
  v5 = *(a3 + 7);
  if ((v4 & 2) == 0)
  {
    v5 = 1.0;
  }

  v6 = *(a3 + 8);
  if ((v4 & 4) == 0)
  {
    v6 = 0.800000012;
  }

  return objc_msgSend_initWithMode_amount_baselineRule_(self, a2, (v4 << 31 >> 31) & *(a3 + 6), a4, v5, v6);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  mode = self->_mode;
  if (mode)
  {
    *(a3 + 4) |= 1u;
    *(a3 + 6) = mode;
  }

  amount = self->_amount;
  v10 = amount;
  if (v10 != 1.0)
  {
    if ((*&amount & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (amount > 0.0 && amount > 3.40282347e38)
      {
        v43 = v6;
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPLineSpacing saveToArchive:archiver:]");
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineSpacing.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 91, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
        v20 = 2139095039;
      }

      else
      {
        if (amount >= 0.0 || amount >= -3.40282347e38)
        {
          goto LABEL_9;
        }

        v43 = v6;
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPLineSpacing saveToArchive:archiver:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineSpacing.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 91, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
        v20 = -8388609;
      }

      v10 = *&v20;
      v6 = v43;
    }

LABEL_9:
    *(a3 + 4) |= 2u;
    *(a3 + 7) = v10;
  }

  baselineRule = self->_baselineRule;
  v12 = baselineRule;
  if (v12 == 0.8)
  {
    goto LABEL_17;
  }

  if ((*&baselineRule & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (baselineRule > 0.0 && baselineRule > 3.40282347e38)
    {
      v44 = v6;
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPLineSpacing saveToArchive:archiver:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineSpacing.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 93, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      v28 = 2139095039;
    }

    else
    {
      if (baselineRule >= 0.0 || baselineRule >= -3.40282347e38)
      {
        goto LABEL_16;
      }

      v44 = v6;
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPLineSpacing saveToArchive:archiver:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLineSpacing.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 93, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
      v28 = -8388609;
    }

    v12 = *&v28;
    v6 = v44;
  }

LABEL_16:
  *(a3 + 4) |= 4u;
  *(a3 + 8) = v12;
LABEL_17:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  mode = self->_mode;
  amount = self->_amount;
  baselineRule = self->_baselineRule;

  return objc_msgSend_initWithMode_amount_baselineRule_(v7, v8, mode, amount, baselineRule);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5 && self->_mode == *(v5 + 8) && ((amount = self->_amount, v7 = *(v5 + 16), amount == v7) || vabdd_f64(amount, v7) < fabs(v7 * 0.000000999999997)))
  {
    baselineRule = self->_baselineRule;
    v9 = *(v5 + 24);
    v10 = baselineRule == v9 || vabdd_f64(baselineRule, v9) < fabs(v9 * 0.000000999999997);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: mode=%lu amount=%f; baselineRule=%f>", v5, self->_mode, *&self->_amount, *&self->_baselineRule);;

  return v7;
}

@end