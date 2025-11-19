@interface TSTCellRangeControlSpec
+ (BOOL)legalRangeControlMinimum:(double)a3 maximum:(double)a4 increment:(double)a5;
+ (double)defaultCellValueForInteractionType:(unsigned int)a3;
+ (id)cellSpecFromTSKFormat:(id)a3;
+ (id)defaultRangeControlSpecOfType:(unsigned int)a3;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)sliderSpecWithMinimum:(double)a3 maximum:(double)a4 increment:(double)a5;
+ (id)stepperSpecWithMinimum:(double)a3 maximum:(double)a4 increment:(double)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateFormatAndValue:(id)a3;
- (TSTCellRangeControlSpec)initWithInteractionType:(unsigned int)a3 minimum:(double)a4 maximum:(double)a5 increment:(double)a6;
- (double)recomputedValueFromValue:(double)a3 changed:(BOOL *)a4;
- (double)valueFromString:(id)a3 locale:(id)a4;
- (id)tskStepperSliderFormatWithDisplayFormatType:(unsigned int)a3;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTCellRangeControlSpec

- (TSTCellRangeControlSpec)initWithInteractionType:(unsigned int)a3 minimum:(double)a4 maximum:(double)a5 increment:(double)a6
{
  v42.receiver = self;
  v42.super_class = TSTCellRangeControlSpec;
  v14 = [(TSTCellSpec *)&v42 init];
  if (v14)
  {
    if (a3 - 4 >= 3)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCellRangeControlSpec initWithInteractionType:minimum:maximum:increment:]", v12, v13);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeControlSpec.mm", v18, v19);
      v21 = sub_22139EA64(a3);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v16, v20, 60, 0, "Illegal interaction type:%@", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    if ((objc_msgSend_legalRangeControlMinimum_maximum_increment_(TSTCellRangeControlSpec, v10, v11, v12, v13, a4, a5, a6) & 1) == 0)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCellRangeControlSpec initWithInteractionType:minimum:maximum:increment:]", v28, v29);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeControlSpec.mm", v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 61, 0, "Illegal parameters: %f, %f, %f", *&a4, *&a5, *&a6);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    }

    v14->_interactionType = a3;
    v14->_minimum = a4;
    v14->_maximum = a5;
    v14->_increment = a6;
  }

  return v14;
}

+ (BOOL)legalRangeControlMinimum:(double)a3 maximum:(double)a4 increment:(double)a5
{
  TSUDecimal::operator=();
  TSUDecimal::reinterpretDoubleAsDecimal(&v9);
  TSUDecimal::operator=();
  TSUDecimal::reinterpretDoubleAsDecimal(&v8);
  TSUDecimal::operator=();
  TSUDecimal::reinterpretDoubleAsDecimal(&v7);
  v5 = TSUDecimal::operator<();
  if (v5)
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=())
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v10 = v8;
      TSUDecimal::operator-=();
      LOBYTE(v5) = TSUDecimal::operator<=();
    }
  }

  return v5;
}

+ (double)defaultCellValueForInteractionType:(unsigned int)a3
{
  result = 50.0;
  if (a3 != 5)
  {
    result = 0.0;
  }

  if (a3 == 4)
  {
    return 1.0;
  }

  return result;
}

+ (id)defaultRangeControlSpecOfType:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [TSTCellRangeControlSpec alloc];
  if (v3 == 6)
  {
    v8 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v4, v5, 6, v6, v7, 0.0, 5.0, 1.0);
  }

  else
  {
    v8 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v4, v5, v3, v6, v7, 1.0, 100.0, 1.0);
  }

  return v8;
}

+ (id)stepperSpecWithMinimum:(double)a3 maximum:(double)a4 increment:(double)a5
{
  v8 = [TSTCellRangeControlSpec alloc];
  v12 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v8, v9, 4, v10, v11, a3, a4, a5);

  return v12;
}

+ (id)sliderSpecWithMinimum:(double)a3 maximum:(double)a4 increment:(double)a5
{
  v8 = [TSTCellRangeControlSpec alloc];
  v12 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v8, v9, 5, v10, v11, a3, a4, a5);

  return v12;
}

- (unint64_t)hash
{
  v3 = TSUHash();
  v4 = TSUHash() ^ v3;
  return v4 ^ TSUHash() ^ self->_interactionType;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5 && (interactionType = self->_interactionType, interactionType == objc_msgSend_interactionType(v5, v6, v7, v8, v9)) && (minimum = self->_minimum, objc_msgSend_minimum(v10, v12, v13, v14, v15), minimum == v21) && (maximum = self->_maximum, objc_msgSend_maximum(v10, v17, v18, v19, v20), maximum == v27))
  {
    increment = self->_increment;
    objc_msgSend_increment(v10, v23, v24, v25, v26);
    v28 = increment == v31;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (double)recomputedValueFromValue:(double)a3 changed:(BOOL *)a4
{
  TSUFormatRecomputedControlValueFromLimits();
  if (a4)
  {
    v8 = result != a3;
    if (vabdd_f64(a3, result) < self->_increment / 1000.0)
    {
      v8 = 0;
    }

    *a4 = v8;
  }

  return result;
}

- (double)valueFromString:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0.0;
  v12 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v8, v9, v10, v11);
  v16 = objc_msgSend_stringByTrimmingCharactersInSet_(v6, v13, v12, v14, v15);

  if (objc_msgSend_numberValueFromString_locale_outDoubleValue_(MEMORY[0x277D81290], v17, v16, v7, &v24))
  {
    objc_msgSend_recomputedValueFromValue_changed_(self, v18, 0, v19, v20, v24);
    v22 = v21;
  }

  else
  {
    v22 = 1.79769313e308;
  }

  return v22;
}

- (BOOL)validateFormatAndValue:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_getCurrentFormat(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_formatType(v9, v10, v11, v12, v13);

  if (objc_msgSend_interactionType(self, v15, v16, v17, v18) == 6 && v14 != 267)
  {
LABEL_3:
    v23 = 0;
    goto LABEL_11;
  }

  if (objc_msgSend_interactionType(self, v19, v20, v21, v22) != 5 && objc_msgSend_interactionType(self, v24, v25, v26, v27) != 4 || (v23 = 0, (v14 - 256) <= 0xD) && ((1 << v14) & 0x204F) != 0)
  {
    if (objc_msgSend_valueType(v4, v24, v25, v26, v27) == 2 || objc_msgSend_valueType(v4, v28, v29, v30, v31) == 10)
    {
      v38 = 0;
      v37._decimal.w[0] = objc_msgSend_numberOrCurrencyDecimalValue(v4, v28, v29, v30, v31);
      v37._decimal.w[1] = v32;
      TSUDecimal::doubleValue(&v37);
      objc_msgSend_recomputedValueFromValue_changed_(self, v33, &v38, v34, v35);
      v23 = v38 ^ 1;
      goto LABEL_11;
    }

    goto LABEL_3;
  }

LABEL_11:

  return v23 & 1;
}

+ (id)cellSpecFromTSKFormat:(id)a3
{
  v3 = a3;
  v12 = objc_msgSend_asStepperSliderFormat(v3, v4, v5, v6, v7);
  if (v12)
  {
    v13 = [TSTCellRangeControlSpec alloc];
    if (objc_msgSend_formatType(v12, v14, v15, v16, v17) == 264)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    objc_msgSend_minimum(v12, v18, v19, v20, v21);
    v24 = v23;
    objc_msgSend_maximum(v12, v25, v26, v27, v28);
    v30 = v29;
    objc_msgSend_increment(v12, v31, v32, v33, v34);
    v43 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v13, v35, v22, v36, v37, v24, v30, v38);
    if (v43)
    {
      v43[5] = objc_msgSend_displayFormatType(v12, v39, v40, v41, v42);
    }
  }

  else if (objc_msgSend_formatType(v3, v8, v9, v10, v11) == 267)
  {
    v43 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v44, 6, v45, v46);
  }

  else
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "+[TSTCellRangeControlSpec cellSpecFromTSKFormat:]", v45, v46);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeControlSpec.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 241, 0, "TSTCellRangeControlSpec can only be created from TSKFormats for Stepper, Slider, and Rating.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    v43 = 0;
  }

  return v43;
}

- (id)tskStepperSliderFormatWithDisplayFormatType:(unsigned int)a3
{
  v3 = *&a3;
  v5 = objc_alloc(MEMORY[0x277D806D8]);
  if (objc_msgSend_interactionType(self, v6, v7, v8, v9) == 4)
  {
    v14 = 264;
  }

  else
  {
    v14 = 265;
  }

  objc_msgSend_minimum(self, v10, v11, v12, v13);
  v16 = v15;
  objc_msgSend_maximum(self, v17, v18, v19, v20);
  v22 = v21;
  objc_msgSend_increment(self, v23, v24, v25, v26);
  v30 = objc_msgSend_initWithFormatType_minimum_maximum_increment_displayFormatType_(v5, v27, v14, v3, v28, v16, v22, v29);

  return v30;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSTCellRangeControlSpec alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5, v8);

  return v9;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v7 = objc_msgSend_interactionType(self, a2, a3, a4, v4);
  v8 = *(a3 + 4);
  *(a3 + 16) = v7;
  *(a3 + 5) = *&self->_minimum;
  *(a3 + 6) = *&self->_maximum;
  increment = self->_increment;
  *(a3 + 4) = v8 | 0x3C;
  *(a3 + 7) = increment;
}

@end