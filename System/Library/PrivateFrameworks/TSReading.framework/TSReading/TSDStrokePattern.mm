@interface TSDStrokePattern
+ (id)dashPatternWithSpacing:(double)spacing;
+ (id)emptyPattern;
+ (id)longDashPattern;
+ (id)mediumDashPattern;
+ (id)roundDashPattern;
+ (id)roundDashPatternWithSpacing:(double)spacing;
+ (id)shortDashPattern;
+ (id)solidPattern;
+ (id)strokePatternWithPattern:(const double *)pattern count:(unint64_t)count phase:(double)phase;
- (BOOL)isEqual:(id)equal;
- (TSDStrokePattern)initWithPatternType:(int64_t)type pattern:(const double *)pattern count:(unint64_t)count phase:(double)phase;
- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)width withinAvailableLength:(double)length;
- (id)description;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)p_patternString;
- (id)p_typeString;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
- (void)applyToShapeRenderable:(id)renderable;
- (void)i_applyToContext:(CGContext *)context lineWidth:(double)width capStyle:(unint64_t *)style;
- (void)p_applyToShapeRenderable:(id)renderable lineWidth:(double)width;
@end

@implementation TSDStrokePattern

- (TSDStrokePattern)initWithPatternType:(int64_t)type pattern:(const double *)pattern count:(unint64_t)count phase:(double)phase
{
  v13.receiver = self;
  v13.super_class = TSDStrokePattern;
  v9 = [(TSDStrokePattern *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v9->_count = count;
    if (pattern)
    {
      countCopy = 6;
      if (count < 6)
      {
        countCopy = count;
      }

      memcpy(v9->_pattern, pattern, 8 * countCopy);
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

+ (id)roundDashPatternWithSpacing:(double)spacing
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0x3F50624DD2F1A9FCLL;
  *&v5[1] = spacing;
  v3 = [TSDStrokePattern strokePatternWithPattern:v5 count:2 phase:0.0];

  return v3;
}

+ (id)dashPatternWithSpacing:(double)spacing
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = spacing;
  *&v5[1] = spacing;
  v3 = [TSDStrokePattern strokePatternWithPattern:v5 count:2 phase:0.0];

  return v3;
}

+ (id)strokePatternWithPattern:(const double *)pattern count:(unint64_t)count phase:(double)phase
{
  v5 = [[TSDStrokePattern alloc] initWithPattern:pattern count:count phase:phase];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!equalCopy)
  {
    goto LABEL_10;
  }

  if (equalCopy == self)
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
    pattern = [v5 pattern];
    v11 = 6;
  }

  else
  {
    v11 = [(TSDStrokePattern *)self count];
    pattern = [v5 pattern];
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
    v19 = *pattern++;
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
  p_patternString = [(TSDStrokePattern *)self p_patternString];
  p_typeString = [(TSDStrokePattern *)self p_typeString];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ (%p) pattern: %@ count: %ld phase: %f type: %@", v7, self, p_patternString, self->_count, *&self->_phase, p_typeString];

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

- (void)i_applyToContext:(CGContext *)context lineWidth:(double)width capStyle:(unint64_t *)style
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  *lengths = 0u;
  pattern = [(TSDStrokePattern *)self pattern];
  count = self->_count;
  if (count)
  {
    v11 = lengths;
    do
    {
      v12 = *pattern++;
      *v11++ = v12 * width;
      --count;
    }

    while (count);
  }

  phase = self->_phase;
  if ([(TSDStrokePattern *)self isRoundDash])
  {
    memset(&v17, 0, sizeof(v17));
    CGContextGetCTM(&v17, context);
    v16 = v17;
    v14 = TSDTransformScale(&v16.a);
    if (style && *style == 1 && v14 * width <= 2.0)
    {
      lengths[0] = width;
      *style = 0;
      v15 = 0.0;
    }

    else
    {
      lengths[1] = lengths[1] + width;
      v15 = 0.5;
    }
  }

  else
  {
    v15 = phase * width;
  }

  CGContextSetLineDash(context, v15, lengths, self->_count);
}

- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)width withinAvailableLength:(double)length
{
  if ([(TSDStrokePattern *)self count]== 2)
  {
    v7 = *[(TSDStrokePattern *)self pattern]* width;
    v8 = [(TSDStrokePattern *)self pattern][8] * width;
    [(TSDStrokePattern *)self phase];
    v10 = v9 * width;
    isRoundDash = [(TSDStrokePattern *)self isRoundDash];
    if (isRoundDash)
    {
      v12 = v7 + width;
    }

    else
    {
      v12 = v7;
    }

    v13 = 0.5;
    if (!isRoundDash)
    {
      v13 = v10;
    }

    v14 = length - (v8 + v12 - v13);
    v15 = v8 + v12;
    v16 = fmodf(v14, v15);
    v17 = v16;
    if (v16 > 0.0 && v16 < 5.0 && v12 > v17)
    {
      length = length - v17;
      if ([(TSDStrokePattern *)self isRoundDash])
      {
        return length + v8 * -0.5;
      }
    }
  }

  return length;
}

- (void)applyToShapeRenderable:(id)renderable
{
  renderableCopy = renderable;
  v8 = renderableCopy;
  if (!renderableCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStrokePattern applyToShapeRenderable:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:342 description:{@"invalid nil value for '%s'", "shapeRenderable"}];

    renderableCopy = 0;
  }

  [renderableCopy lineWidth];
  [(TSDStrokePattern *)self p_applyToShapeRenderable:v8 lineWidth:?];
}

- (void)p_applyToShapeRenderable:(id)renderable lineWidth:(double)width
{
  renderableCopy = renderable;
  if ([(TSDStrokePattern *)self patternType]== 1)
  {
    [renderableCopy setLineDashPattern:0];
  }

  else if (![(TSDStrokePattern *)self patternType])
  {
    [renderableCopy setLineDashPhase:self->_phase * width];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pattern = [(TSDStrokePattern *)self pattern];
    if (self->_count)
    {
      v8 = pattern;
      v9 = 0;
      do
      {
        v10 = v8[v9] * width;
        if (v9 == 1 && [(TSDStrokePattern *)self isRoundDash])
        {
          [renderableCopy setLineDashPhase:0.5];
          v10 = v10 + width;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
        [v6 addObject:v11];

        ++v9;
      }

      while (v9 < self->_count);
    }

    [renderableCopy setLineDashPattern:v6];
  }
}

- (int64_t)mixingTypeWithObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStrokePattern mixingTypeWithObject:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:377 description:@"nil object after cast"];
  }

  patternType = [(TSDStrokePattern *)self patternType];
  if (patternType == [v5 patternType] && (v10 = -[TSDStrokePattern count](self, "count"), v10 == objc_msgSend(v5, "count")) && (v11 = -[TSDStrokePattern isDash](self, "isDash"), v11 == objc_msgSend(v5, "isDash")) && (v12 = -[TSDStrokePattern isRoundDash](self, "isRoundDash"), v12 == objc_msgSend(v5, "isRoundDash")))
  {
    v13 = 5;
  }

  else
  {
    v13 = TSDMixingTypeBestFromMixingTypes(5, 2);
  }

  return v13;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v19[6] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    if ([(TSDStrokePattern *)self count])
    {
      v8 = 0;
      do
      {
        *&v19[v8] = TSDMixFloats(-[TSDStrokePattern pattern](self, "pattern")[8 * v8], *([v7 pattern] + 8 * v8), fraction);
        ++v8;
      }

      while (v8 < [(TSDStrokePattern *)self count]);
    }

    v9 = [(TSDStrokePattern *)self count];
    [(TSDStrokePattern *)self phase];
    v11 = v10;
    [v7 phase];
    v13 = [TSDStrokePattern strokePatternWithPattern:v19 count:v9 phase:TSDMixFloats(v11, v12, fraction)];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStrokePattern mixedObjectWithFraction:ofObject:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStroke.m"];
    [currentHandler handleFailureInFunction:v15 file:v16 lineNumber:393 description:@"nil object after cast"];

    v13 = +[TSDStrokePattern emptyPattern];
  }

  v17 = v13;

  return v17;
}

@end