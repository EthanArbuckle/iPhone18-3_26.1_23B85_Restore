@interface TSDStrokePattern
+ (id)dashPatternWithSpacing:(double)a3;
+ (id)emptyPattern;
+ (id)longDashPattern;
+ (id)mediumDashPattern;
+ (id)roundDashPattern;
+ (id)roundDashPatternWithSpacing:(double)a3;
+ (id)shortDashPattern;
+ (id)solidPattern;
+ (id)strokePatternWithPattern:(const double *)a3 count:(unint64_t)a4 phase:(double)a5;
- (BOOL)isDash;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRoundDash;
- (TSDStrokePattern)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDStrokePattern)initWithPatternType:(int64_t)a3 pattern:(const double *)a4 count:(unint64_t)a5 phase:(double)a6;
- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)a3 withinAvailableLength:(double)a4;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)p_patternString;
- (id)p_typeString;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)i_applyToContext:(CGContext *)a3 lineWidth:(double)a4 capStyle:(unint64_t *)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDStrokePattern

- (TSDStrokePattern)initWithPatternType:(int64_t)a3 pattern:(const double *)a4 count:(unint64_t)a5 phase:(double)a6
{
  v21.receiver = self;
  v21.super_class = TSDStrokePattern;
  v9 = [(TSDStrokePattern *)&v21 init];
  v11 = v9;
  if (v9)
  {
    v9->_type = a3;
    if (a5 >= 7)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDStrokePattern initWithPatternType:pattern:count:phase:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 58, 0, "Pattern should have no more than TSD_MAX_STROKE_PATTERN (%d) elements", 6);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = 6;
    if (a5 < 6)
    {
      v19 = a5;
    }

    v11->_count = v19;
    if (a4)
    {
      memcpy(v11->_pattern, a4, 8 * v19);
    }
  }

  return v11;
}

+ (id)solidPattern
{
  if (qword_280A4C0E0 != -1)
  {
    sub_276808474();
  }

  v3 = qword_280A4C0E8;

  return v3;
}

+ (id)emptyPattern
{
  if (qword_280A4C0F0 != -1)
  {
    sub_276808488();
  }

  v3 = qword_280A4C0F8;

  return v3;
}

+ (id)shortDashPattern
{
  if (qword_280A4C100 != -1)
  {
    sub_27680849C();
  }

  v3 = qword_280A4C108;

  return v3;
}

+ (id)mediumDashPattern
{
  if (qword_280A4C110 != -1)
  {
    sub_2768084B0();
  }

  v3 = qword_280A4C118;

  return v3;
}

+ (id)longDashPattern
{
  if (qword_280A4C120 != -1)
  {
    sub_2768084C4();
  }

  v3 = qword_280A4C128;

  return v3;
}

+ (id)roundDashPattern
{
  if (qword_280A4C130 != -1)
  {
    sub_2768084D8();
  }

  v3 = qword_280A4C138;

  return v3;
}

+ (id)roundDashPatternWithSpacing:(double)a3
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x3F50624DD2F1A9FCLL;
  *&v5[1] = a3;
  v3 = objc_msgSend_strokePatternWithPattern_count_phase_(TSDStrokePattern, a2, v5, 2, 0.0);

  return v3;
}

+ (id)dashPatternWithSpacing:(double)a3
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = a3;
  *&v5[1] = a3;
  v3 = objc_msgSend_strokePatternWithPattern_count_phase_(TSDStrokePattern, a2, v5, 2, 0.0);

  return v3;
}

+ (id)strokePatternWithPattern:(const double *)a3 count:(unint64_t)a4 phase:(double)a5
{
  v8 = [TSDStrokePattern alloc];
  v10 = objc_msgSend_initWithPattern_count_phase_(v8, v9, a3, a4, a5);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v4)
  {
    goto LABEL_22;
  }

  if (v4 == self)
  {
LABEL_23:
    LOBYTE(v37) = 1;
    goto LABEL_24;
  }

  if (objc_msgSend_patternType(self, v5, v6) && (v10 = objc_msgSend_patternType(self, v8, v9), v10 != objc_msgSend_patternType(v7, v11, v12)) || (objc_msgSend_phase(self, v8, v9), v14 = v13, objc_msgSend_phase(v7, v15, v16), v14 != v19) && vabdd_f64(v14, v19) >= 0.00999999978 || (v20 = objc_msgSend_count(self, v17, v18), v20 != objc_msgSend_count(v7, v21, v22)))
  {
LABEL_22:
    LOBYTE(v37) = 0;
    goto LABEL_24;
  }

  v25 = objc_msgSend_count(self, v23, v24);
  v28 = v25;
  if (v25 >= 6)
  {
    v29 = 6;
  }

  else
  {
    v29 = v25;
  }

  v30 = objc_msgSend_pattern(v7, v26, v27);
  if (!v28)
  {
    goto LABEL_23;
  }

  pattern = self->_pattern;
  v32 = v29 - 1;
  do
  {
    v33 = *pattern++;
    v34 = v33;
    v35 = *v30++;
    v36 = v34 == v35;
    v37 = vabdd_f64(v34, v35) < 0.00999999978 || v36;
    v39 = v32-- != 0;
  }

  while (v37 && v39);
LABEL_24:

  return v37;
}

- (unint64_t)hash
{
  TSUHash();

  return TSUHashWithSeed();
}

- (id)description
{
  v4 = objc_msgSend_p_patternString(self, a2, v2);
  v7 = objc_msgSend_p_typeString(self, v5, v6);
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v12 = objc_msgSend_stringWithFormat_(v8, v11, @"%@ (%p) pattern: %@ count: %ld phase: %f type: %@", v10, self, v4, self->_count, *&self->_phase, v7);

  return v12;
}

- (id)p_patternString
{
  if (self->_count)
  {
    v3 = 0;
    v4 = @"none";
    pattern = self->_pattern;
    do
    {
      if (v3)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@, %f", v4, *&pattern[v3]);
      }

      else
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%f", *pattern, v8);
      }
      v6 = ;

      ++v3;
      v4 = v6;
    }

    while (v3 < self->_count);
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

- (id)p_typeString
{
  type = self->_type;
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_27A6CC4D8[type];
  }
}

- (BOOL)isDash
{
  if (self->_count != 2)
  {
    return 0;
  }

  v2 = self->_pattern[0];
  v3 = self->_pattern[1];
  if (v2 != v3 && vabdd_f64(v2, v3) >= 0.0001)
  {
    return 0;
  }

  if (fabs(v2 + -0.001) >= 0.0001)
  {
    return v2 != 0.001;
  }

  return 0;
}

- (BOOL)isRoundDash
{
  if (self->_count != 2)
  {
    return 0;
  }

  result = 0;
  v4 = self->_pattern[0];
  v5 = self->_pattern[1];
  if (v4 != v5 && vabdd_f64(v4, v5) >= 0.0001)
  {
    return fabs(v4 + -0.001) < 0.0001 || v4 == 0.001;
  }

  return result;
}

- (void)i_applyToContext:(CGContext *)a3 lineWidth:(double)a4 capStyle:(unint64_t *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  *lengths = 0u;
  v9 = objc_msgSend_pattern(self, a2, a3);
  count = self->_count;
  if (count)
  {
    v13 = lengths;
    do
    {
      v14 = *v9++;
      *v13++ = v14 * a4;
      --count;
    }

    while (count);
  }

  phase = self->_phase;
  if (objc_msgSend_isRoundDash(self, v10, v11))
  {
    memset(&v18, 0, sizeof(v18));
    CGContextGetCTM(&v18, a3);
    TSUTransformScale();
    if (a5 && *a5 == 1 && v16 * a4 <= 2.0)
    {
      lengths[0] = a4;
      *a5 = 0;
      v17 = 0.0;
    }

    else
    {
      lengths[1] = lengths[1] + a4;
      v17 = 0.5;
    }
  }

  else
  {
    v17 = phase * a4;
  }

  CGContextSetLineDash(a3, v17, lengths, self->_count);
}

- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)a3 withinAvailableLength:(double)a4
{
  if (objc_msgSend_count(self, a2, v4) == 2)
  {
    v10 = *objc_msgSend_pattern(self, v8, v9) * a3;
    v13 = *(objc_msgSend_pattern(self, v11, v12) + 8) * a3;
    objc_msgSend_phase(self, v14, v15);
    v17 = v16 * a3;
    isRoundDash = objc_msgSend_isRoundDash(self, v18, v19);
    if (isRoundDash)
    {
      v21 = v10 + a3;
    }

    else
    {
      v21 = v10;
    }

    v22 = 0.5;
    if (!isRoundDash)
    {
      v22 = v17;
    }

    v23 = a4 - (v13 + v21 - v22);
    v24 = v13 + v21;
    v27 = fmodf(v23, v24);
    v28 = v27;
    if (v27 > 0.0 && v27 < 5.0 && v21 > v28)
    {
      a4 = a4 - v28;
      if (objc_msgSend_isRoundDash(self, v25, v26))
      {
        return a4 + v13 * -0.5;
      }
    }
  }

  return a4;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDStrokePattern mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 373, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_patternType(self, v7, v8);
  if (v16 == objc_msgSend_patternType(v6, v17, v18) && (v21 = objc_msgSend_count(self, v19, v20), v21 == objc_msgSend_count(v6, v22, v23)) && (isDash = objc_msgSend_isDash(self, v24, v25), isDash == objc_msgSend_isDash(v6, v27, v28)) && (isRoundDash = objc_msgSend_isRoundDash(self, v29, v30), isRoundDash == objc_msgSend_isRoundDash(v6, v32, v33)))
  {
    v34 = 5;
  }

  else
  {
    v34 = TSDMixingTypeBestFromMixingTypes(5, 2);
  }

  return v34;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v35[6] = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    if (objc_msgSend_count(self, v6, v7))
    {
      v11 = 0;
      do
      {
        objc_msgSend_pattern(self, v9, v10);
        objc_msgSend_pattern(v8, v12, v13);
        TSUMixFloats();
        v35[v11++] = v14;
      }

      while (v11 < objc_msgSend_count(self, v15, v16));
    }

    v17 = objc_msgSend_count(self, v9, v10);
    objc_msgSend_phase(self, v18, v19);
    objc_msgSend_phase(v8, v20, v21);
    TSUMixFloats();
    v23 = objc_msgSend_strokePatternWithPattern_count_phase_(TSDStrokePattern, v22, v35, v17);
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDStrokePattern mixedObjectWithFraction:ofObject:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStroke.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 389, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v23 = objc_msgSend_emptyPattern(TSDStrokePattern, v31, v32);
  }

  v33 = v23;

  return v33;
}

- (TSDStrokePattern)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = *(a3 + 10);
  v7 = malloc_type_calloc(6uLL, 8uLL, 0x100004000313F17uLL);
  v9 = v7;
  LODWORD(v10) = *(a3 + 6);
  if (v10 >= 1)
  {
    v11 = *(a3 + 4);
    if (v10 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v10;
    }

    v12 = v7;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
      --v10;
    }

    while (v10);
  }

  v14 = 1;
  if (v6 != 1)
  {
    v14 = 2;
  }

  if (v6)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a3 + 12);
  if (v16 >= 6)
  {
    v17 = objc_msgSend_initWithPatternType_pattern_count_phase_(self, v8, v15, v7, 6, *(a3 + 11));
  }

  else
  {
    v17 = objc_msgSend_initWithPatternType_pattern_count_phase_(self, v8, v15, v7, v16, *(a3 + 11));
  }

  v18 = v17;
  free(v9);
  return v18;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  for (i = 0; i != 48; i += 8)
  {
    v7 = *(objc_msgSend_pattern(self, a2, a3, a4) + i);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_7:
      v8 = v7;
      goto LABEL_8;
    }

    if (v7 > 0.0 && v7 > 3.40282347e38)
    {
      v38 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDStrokePattern(PersistenceAdditions) saveToArchive:archiver:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStrokePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v14, v11, v13, 59, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      v17 = 2139095039;
    }

    else
    {
      if (v7 >= 0.0 || v7 >= -3.40282347e38)
      {
        goto LABEL_7;
      }

      v39 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDStrokePattern(PersistenceAdditions) saveToArchive:archiver:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStrokePersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v21, v18, v20, 59, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      v17 = -8388609;
    }

    v8 = *&v17;
LABEL_8:
    v9 = *(a3 + 6);
    if (v9 == *(a3 + 7))
    {
      v10 = v9 + 1;
      sub_2766C3850(a3 + 6, v9 + 1);
      *(*(a3 + 4) + 4 * v9) = v8;
    }

    else
    {
      *(*(a3 + 4) + 4 * v9) = v8;
      v10 = v9 + 1;
    }

    *(a3 + 6) = v10;
  }

  v24 = objc_msgSend_count(self, a2, a3);
  if (HIDWORD(v24))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSDStrokePattern(PersistenceAdditions) saveToArchive:archiver:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDStrokePersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 63, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    LODWORD(v24) = -1;
  }

  *(a3 + 4) |= 4u;
  *(a3 + 12) = v24;
  objc_msgSend_phase(self, v25, v26);
  *&v27 = v27;
  *(a3 + 4) |= 2u;
  *(a3 + 11) = LODWORD(v27);
  v30 = objc_msgSend_patternType(self, v28, v29);
  if (v30 < 3)
  {
    *(a3 + 4) |= 1u;
    *(a3 + 10) = v30;
  }
}

@end