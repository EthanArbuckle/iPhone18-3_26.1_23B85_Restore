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
- (BOOL)isEqual:(id)a3;
- (TSDStrokePattern)initWithPatternType:(int64_t)a3 pattern:(const double *)a4 count:(unint64_t)a5 phase:(double)a6;
- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)a3 withinAvailableLength:(double)a4;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)p_patternString;
- (id)p_typeString;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)applyToShapeRenderable:(id)a3;
- (void)i_applyToContext:(CGContext *)a3 lineWidth:(double)a4 capStyle:(unint64_t *)a5;
- (void)p_applyToShapeRenderable:(id)a3 lineWidth:(double)a4;
@end

@implementation TSDStrokePattern

- (TSDStrokePattern)initWithPatternType:(int64_t)a3 pattern:(const double *)a4 count:(unint64_t)a5 phase:(double)a6
{
  v13.receiver = self;
  v13.super_class = TSDStrokePattern;
  v9 = [(TSDStrokePattern *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v9->_count = a5;
    if (a4)
    {
      v11 = 6;
      if (a5 < 6)
      {
        v11 = a5;
      }

      memcpy(v9->_pattern, a4, 8 * v11);
    }
  }

  return v10;
}

+ (id)solidPattern
{
  if (solidPattern_pred != -1)
  {
    +[TSDStrokePattern solidPattern];
  }

  v3 = solidPattern_sPattern;

  return v3;
}

uint64_t __32__TSDStrokePattern_solidPattern__block_invoke()
{
  solidPattern_sPattern = [[TSDStrokePattern alloc] initWithPatternType:1 pattern:0 count:0 phase:0.0];

  return MEMORY[0x2821F96F8]();
}

+ (id)emptyPattern
{
  if (emptyPattern_pred != -1)
  {
    +[TSDStrokePattern emptyPattern];
  }

  v3 = emptyPattern_sPattern;

  return v3;
}

uint64_t __32__TSDStrokePattern_emptyPattern__block_invoke()
{
  emptyPattern_sPattern = [[TSDStrokePattern alloc] initWithPatternType:2 pattern:0 count:0 phase:0.0];

  return MEMORY[0x2821F96F8]();
}

+ (id)shortDashPattern
{
  if (shortDashPattern_pred != -1)
  {
    +[TSDStrokePattern shortDashPattern];
  }

  v3 = shortDashPattern_sPattern;

  return v3;
}

uint64_t __36__TSDStrokePattern_shortDashPattern__block_invoke()
{
  shortDashPattern_sPattern = [[TSDStrokePattern alloc] initWithPattern:&shortDashPattern_pattern1 count:2 phase:0.0];

  return MEMORY[0x2821F96F8]();
}

+ (id)mediumDashPattern
{
  if (mediumDashPattern_pred != -1)
  {
    +[TSDStrokePattern mediumDashPattern];
  }

  v3 = mediumDashPattern_sPattern;

  return v3;
}

uint64_t __37__TSDStrokePattern_mediumDashPattern__block_invoke()
{
  mediumDashPattern_sPattern = [[TSDStrokePattern alloc] initWithPattern:&mediumDashPattern_pattern3 count:2 phase:0.0];

  return MEMORY[0x2821F96F8]();
}

+ (id)longDashPattern
{
  if (longDashPattern_pred != -1)
  {
    +[TSDStrokePattern longDashPattern];
  }

  v3 = longDashPattern_sPattern;

  return v3;
}

uint64_t __35__TSDStrokePattern_longDashPattern__block_invoke()
{
  longDashPattern_sPattern = [[TSDStrokePattern alloc] initWithPattern:&longDashPattern_pattern6 count:2 phase:0.0];

  return MEMORY[0x2821F96F8]();
}

+ (id)roundDashPattern
{
  if (roundDashPattern_pred != -1)
  {
    +[TSDStrokePattern roundDashPattern];
  }

  v3 = roundDashPattern_sPattern;

  return v3;
}

uint64_t __36__TSDStrokePattern_roundDashPattern__block_invoke()
{
  roundDashPattern_sPattern = [[TSDStrokePattern alloc] initWithPattern:&roundDashPattern_roundPattern count:2 phase:0.0];

  return MEMORY[0x2821F96F8]();
}

+ (id)roundDashPatternWithSpacing:(double)a3
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x3F50624DD2F1A9FCLL;
  *&v5[1] = a3;
  v3 = [TSDStrokePattern strokePatternWithPattern:v5 count:2 phase:0.0];

  return v3;
}

+ (id)dashPatternWithSpacing:(double)a3
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = a3;
  *&v5[1] = a3;
  v3 = [TSDStrokePattern strokePatternWithPattern:v5 count:2 phase:0.0];

  return v3;
}

+ (id)strokePatternWithPattern:(const double *)a3 count:(unint64_t)a4 phase:(double)a5
{
  v5 = [[TSDStrokePattern alloc] initWithPattern:a3 count:a4 phase:a5];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == self)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_11;
  }

  if (-[TSDStrokePattern patternType](self, "patternType") && (v6 = -[TSDStrokePattern patternType](self, "patternType"), v6 != [v5 patternType]) || (-[TSDStrokePattern phase](self, "phase"), v8 = v7, objc_msgSend(v5, "phase"), vabdd_f64(v8, v9) >= 0.00999999978) || (v10 = -[TSDStrokePattern count](self, "count"), v10 != objc_msgSend(v5, "count")))
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  if ([(TSDStrokePattern *)self count]>= 6)
  {
    v12 = [v5 pattern];
    v11 = 6;
  }

  else
  {
    v11 = [(TSDStrokePattern *)self count];
    v12 = [v5 pattern];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  pattern = self->_pattern;
  v16 = v11 - 1;
  do
  {
    v17 = *pattern++;
    v18 = v17;
    v19 = *v12++;
    v20 = vabdd_f64(v18, v19);
    v22 = v16-- != 0;
    v13 = v20 < 0.00999999978;
  }

  while (v20 < 0.00999999978 && v22);
LABEL_11:

  return v13;
}

- (unint64_t)hash
{
  TSUHash();

  return TSUHashWithSeed();
}

- (id)description
{
  v3 = [(TSDStrokePattern *)self p_patternString];
  v4 = [(TSDStrokePattern *)self p_typeString];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ (%p) pattern: %@ count: %ld phase: %f type: %@", v7, self, v3, self->_count, *&self->_phase, v4];

  return v8;
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
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %f", v4, *&pattern[v3]];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *pattern, v8];
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
    return off_279D487E0[type];
  }
}

- (void)i_applyToContext:(CGContext *)a3 lineWidth:(double)a4 capStyle:(unint64_t *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  *lengths = 0u;
  v9 = [(TSDStrokePattern *)self pattern];
  count = self->_count;
  if (count)
  {
    v11 = lengths;
    do
    {
      v12 = *v9++;
      *v11++ = v12 * a4;
      --count;
    }

    while (count);
  }

  phase = self->_phase;
  if ([(TSDStrokePattern *)self isRoundDash])
  {
    memset(&v17, 0, sizeof(v17));
    CGContextGetCTM(&v17, a3);
    v16 = v17;
    v14 = TSDTransformScale(&v16.a);
    if (a5 && *a5 == 1 && v14 * a4 <= 2.0)
    {
      lengths[0] = a4;
      *a5 = 0;
      v15 = 0.0;
    }

    else
    {
      lengths[1] = lengths[1] + a4;
      v15 = 0.5;
    }
  }

  else
  {
    v15 = phase * a4;
  }

  CGContextSetLineDash(a3, v15, lengths, self->_count);
}

- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)a3 withinAvailableLength:(double)a4
{
  if ([(TSDStrokePattern *)self count]== 2)
  {
    v7 = *[(TSDStrokePattern *)self pattern]* a3;
    v8 = [(TSDStrokePattern *)self pattern][8] * a3;
    [(TSDStrokePattern *)self phase];
    v10 = v9 * a3;
    v11 = [(TSDStrokePattern *)self isRoundDash];
    if (v11)
    {
      v12 = v7 + a3;
    }

    else
    {
      v12 = v7;
    }

    v13 = 0.5;
    if (!v11)
    {
      v13 = v10;
    }

    v14 = a4 - (v8 + v12 - v13);
    v15 = v8 + v12;
    v16 = fmodf(v14, v15);
    v17 = v16;
    if (v16 > 0.0 && v16 < 5.0 && v12 > v17)
    {
      a4 = a4 - v17;
      if ([(TSDStrokePattern *)self isRoundDash])
      {
        return a4 + v8 * -0.5;
      }
    }
  }

  return a4;
}

- (void)applyToShapeRenderable:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStrokePattern applyToShapeRenderable:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:342 description:{@"invalid nil value for '%s'", "shapeRenderable"}];

    v4 = 0;
  }

  [v4 lineWidth];
  [(TSDStrokePattern *)self p_applyToShapeRenderable:v8 lineWidth:?];
}

- (void)p_applyToShapeRenderable:(id)a3 lineWidth:(double)a4
{
  v12 = a3;
  if ([(TSDStrokePattern *)self patternType]== 1)
  {
    [v12 setLineDashPattern:0];
  }

  else if (![(TSDStrokePattern *)self patternType])
  {
    [v12 setLineDashPhase:self->_phase * a4];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [(TSDStrokePattern *)self pattern];
    if (self->_count)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = v8[v9] * a4;
        if (v9 == 1 && [(TSDStrokePattern *)self isRoundDash])
        {
          [v12 setLineDashPhase:0.5];
          v10 = v10 + a4;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
        [v6 addObject:v11];

        ++v9;
      }

      while (v9 < self->_count);
    }

    [v12 setLineDashPattern:v6];
  }
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStrokePattern mixingTypeWithObject:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:377 description:@"nil object after cast"];
  }

  v9 = [(TSDStrokePattern *)self patternType];
  if (v9 == [v5 patternType] && (v10 = -[TSDStrokePattern count](self, "count"), v10 == objc_msgSend(v5, "count")) && (v11 = -[TSDStrokePattern isDash](self, "isDash"), v11 == objc_msgSend(v5, "isDash")) && (v12 = -[TSDStrokePattern isRoundDash](self, "isRoundDash"), v12 == objc_msgSend(v5, "isRoundDash")))
  {
    v13 = 5;
  }

  else
  {
    v13 = TSDMixingTypeBestFromMixingTypes(5, 2);
  }

  return v13;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v19[6] = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    if ([(TSDStrokePattern *)self count])
    {
      v8 = 0;
      do
      {
        *&v19[v8] = TSDMixFloats(-[TSDStrokePattern pattern](self, "pattern")[8 * v8], *([v7 pattern] + 8 * v8), a3);
        ++v8;
      }

      while (v8 < [(TSDStrokePattern *)self count]);
    }

    v9 = [(TSDStrokePattern *)self count];
    [(TSDStrokePattern *)self phase];
    v11 = v10;
    [v7 phase];
    v13 = [TSDStrokePattern strokePatternWithPattern:v19 count:v9 phase:TSDMixFloats(v11, v12, a3)];
  }

  else
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStrokePattern mixedObjectWithFraction:ofObject:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:393 description:@"nil object after cast"];

    v13 = +[TSDStrokePattern emptyPattern];
  }

  v17 = v13;

  return v17;
}

@end