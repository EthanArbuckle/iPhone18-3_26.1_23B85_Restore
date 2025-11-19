@interface TSDScalarPathSource
+ (id)chevronWithScalar:(double)a3 naturalSize:(CGSize)a4;
+ (id)pathSourceWithType:(int)a3 scalar:(double)a4 naturalSize:(CGSize)a5;
+ (id)regularPolygonWithScalar:(double)a3 naturalSize:(CGSize)a4;
+ (id)roundedRectangleWithScalar:(double)a3 naturalSize:(CGSize)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRectangular;
- (CGPath)newFeedbackPathForKnob:(unint64_t)a3;
- (CGPath)p_newChevronPath;
- (CGPath)p_newRegularPolygonPath;
- (CGPath)p_newRoundedRectPath;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)p_getControlKnobPointForChevron;
- (CGPoint)p_getControlKnobPointForRegularPolygon;
- (CGPoint)p_getControlKnobPointForRoundedRect;
- (CGSize)naturalSize;
- (CGSize)scaleFactorForInscribedRectangle;
- (TSDScalarPathSource)initWithType:(int)a3 scalar:(double)a4 naturalSize:(CGSize)a5;
- (double)maxScalar;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getFeedbackStringForKnob:(unint64_t)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)valueForSetSelector:(SEL)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (unint64_t)hash;
- (void)p_setControlKnobPointForChevron:(CGPoint)a3;
- (void)p_setControlKnobPointForRegularPolygon:(CGPoint)a3;
- (void)p_setControlKnobPointForRoundedRect:(CGPoint)a3;
- (void)scaleToNaturalSize:(CGSize)a3;
- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4;
- (void)setScalarValue:(id)a3;
@end

@implementation TSDScalarPathSource

+ (id)roundedRectangleWithScalar:(double)a3 naturalSize:(CGSize)a4
{
  v4 = [[TSDScalarPathSource alloc] initWithType:0 scalar:a3 naturalSize:a4.width, a4.height];

  return v4;
}

+ (id)regularPolygonWithScalar:(double)a3 naturalSize:(CGSize)a4
{
  v4 = [[TSDScalarPathSource alloc] initWithType:1 scalar:a3 naturalSize:a4.width, a4.height];

  return v4;
}

+ (id)chevronWithScalar:(double)a3 naturalSize:(CGSize)a4
{
  v4 = [[TSDScalarPathSource alloc] initWithType:2 scalar:a3 naturalSize:a4.width, a4.height];

  return v4;
}

+ (id)pathSourceWithType:(int)a3 scalar:(double)a4 naturalSize:(CGSize)a5
{
  v5 = [[TSDScalarPathSource alloc] initWithType:*&a3 scalar:a4 naturalSize:a5.width, a5.height];

  return v5;
}

- (TSDScalarPathSource)initWithType:(int)a3 scalar:(double)a4 naturalSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = *&a3;
  v12.receiver = self;
  v12.super_class = TSDScalarPathSource;
  v9 = [(TSDScalarPathSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(TSDScalarPathSource *)v9 setType:v8];
    [(TSDScalarPathSource *)v10 setScalar:a4];
    [(TSDScalarPathSource *)v10 setNaturalSize:width, height];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TSDScalarPathSource;
  v4 = [(TSDPathSource *)&v6 copyWithZone:a3];
  [v4 setType:{-[TSDScalarPathSource type](self, "type")}];
  [(TSDScalarPathSource *)self scalar];
  [v4 setScalar:?];
  [(TSDScalarPathSource *)self naturalSize];
  [v4 setNaturalSize:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v22 = v6;
    v23 = v5;
    v24 = v3;
    v25 = v4;
    v21.receiver = self;
    v21.super_class = TSDScalarPathSource;
    v9 = [(TSDPathSource *)&v21 isEqual:?];
    if (v9)
    {
      v10 = [(TSDScalarPathSource *)self type];
      if (v10 == [a3 type] && (-[TSDScalarPathSource scalar](self, "scalar"), v12 = v11, objc_msgSend(a3, "scalar"), vabdd_f64(v12, v13) < 0.00999999978))
      {
        [(TSDScalarPathSource *)self naturalSize];
        v15 = v14;
        v17 = v16;
        [a3 naturalSize];
        LOBYTE(v9) = v17 == v19 && v15 == v18;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [(NSString *)v3 hash];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = TSDScalarPathSource;
  v3 = [-[TSDScalarPathSource description](&v5 description)];
  [v3 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"; type=%d; scalar=%f; natural size=%@", *(&self->super.mVerticalFlip + 3), *&self->mType, NSStringFromCGSize(*&self->mScalar))}];
  return v3;
}

- (void)scaleToNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (![(TSDScalarPathSource *)self type])
  {
    [(TSDPathSource *)self uniformScaleForScalingToNaturalSize:width, height];
    *&self->mType = v6 * *&self->mType;
  }

  self->mScalar = width;
  self->mNaturalSize.width = height;
}

- (void)setScalarValue:(id)a3
{
  [a3 floatValue];
  v5 = v4;

  [(TSDScalarPathSource *)self setScalar:v5];
}

- (double)maxScalar
{
  v3 = [(TSDScalarPathSource *)self type];
  if (v3 == 2)
  {
    [(TSDScalarPathSource *)self naturalSize];
    return v11 / v12;
  }

  else if (v3 == 1)
  {
    return 100.0;
  }

  else
  {
    result = 0.0;
    if (!v3)
    {
      [(TSDScalarPathSource *)self naturalSize];
      v6 = v5;
      v7 = *MEMORY[0x277CBF348];
      v8 = *(MEMORY[0x277CBF348] + 8);
      v10 = TSDDistance(*MEMORY[0x277CBF348], v8, 0.0, v9) * 0.5;
      result = TSDDistance(v7, v8, v6, 0.0) * 0.5;
      if (v10 < result)
      {
        return v10;
      }
    }
  }

  return result;
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v4 = [(TSDScalarPathSource *)self type];
  if (v4 == 2)
  {
    [(TSDScalarPathSource *)self p_getControlKnobPointForChevron];
  }

  else if (v4 == 1)
  {
    [(TSDScalarPathSource *)self p_getControlKnobPointForRegularPolygon];
  }

  else if (v4)
  {
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    [(TSDScalarPathSource *)self p_getControlKnobPointForRoundedRect];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(TSDScalarPathSource *)self type];
  switch(v7)
  {
    case 2:

      [(TSDScalarPathSource *)self p_setControlKnobPointForChevron:x, y];
      break;
    case 1:

      [(TSDScalarPathSource *)self p_setControlKnobPointForRegularPolygon:x, y];
      break;
    case 0:

      [(TSDScalarPathSource *)self p_setControlKnobPointForRoundedRect:x, y];
      break;
  }
}

- (id)getFeedbackStringForKnob:(unint64_t)a3
{
  v4 = [(TSDScalarPathSource *)self type];
  if (!v4)
  {
    v5 = @"Radius: %d pt";
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = @"Sides: %d";
LABEL_5:
    v6 = MEMORY[0x277CCACA8];
    v7 = [TSDBundle() localizedStringForKey:v5 value:&stru_287D36338 table:@"TSDrawables"];
    [(TSDScalarPathSource *)self scalar];
    return [v6 stringWithFormat:v7, v8];
  }

  return &stru_287D36338;
}

- (CGPath)newFeedbackPathForKnob:(unint64_t)a3
{
  if ([(TSDScalarPathSource *)self type]!= 1)
  {
    return 0;
  }

  [-[TSDPathSource bezierPath](self "bezierPath")];
  v5 = v4;
  v7 = v6;
  Mutable = CGPathCreateMutable();
  [(TSDScalarPathSource *)self naturalSize];
  v10 = -(v5 - v9 * 0.15);
  [(TSDScalarPathSource *)self naturalSize];
  v12 = -(v7 - v11 * 0.15);
  [(TSDScalarPathSource *)self naturalSize];
  v14 = v13 * 0.7;
  [(TSDScalarPathSource *)self naturalSize];
  v17.size.height = v15 * 0.7;
  v17.origin.x = v10;
  v17.origin.y = v12;
  v17.size.width = v14;
  CGPathAddEllipseInRect(Mutable, 0, v17);
  return Mutable;
}

- (id)valueForSetSelector:(SEL)a3
{
  if (sel_setScalarValue_ == a3)
  {
    v4 = MEMORY[0x277CCABB0];
    [(TSDScalarPathSource *)self scalar];
    *&v5 = v5;

    return [v4 numberWithFloat:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSDScalarPathSource;
    return [(TSDPathSource *)&v6 valueForSetSelector:?];
  }
}

- (id)bezierPathWithoutFlips
{
  v3 = [(TSDScalarPathSource *)self type];
  if (v3 == 2)
  {
    v4 = [(TSDScalarPathSource *)self p_newChevronPath];
  }

  else if (v3 == 1)
  {
    v4 = [(TSDScalarPathSource *)self p_newRegularPolygonPath];
  }

  else
  {
    if (v3)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [(TSDScalarPathSource *)self p_newRoundedRectPath];
  }

  v5 = v4;
LABEL_9:
  v6 = [TSDBezierPath bezierPathWithCGPath:v5];
  CGPathRelease(v5);
  return v6;
}

- (BOOL)isRectangular
{
  if ([(TSDScalarPathSource *)self type])
  {
    return 0;
  }

  [(TSDScalarPathSource *)self scalar];
  return v4 == 0.0;
}

- (CGSize)scaleFactorForInscribedRectangle
{
  v3 = 1.0;
  if ([(TSDScalarPathSource *)self type])
  {
    v4 = 1.0;
  }

  else
  {
    [(TSDScalarPathSource *)self naturalSize];
    v6 = v5;
    v8 = v7;
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    [(TSDScalarPathSource *)self scalar];
    v12 = v11;
    v13 = TSDDistance(v9, v10, 0.0, v8) * 0.5;
    v14 = TSDDistance(v9, v10, v6, 0.0) * 0.5;
    if (v13 < v14)
    {
      v14 = v13;
    }

    if (v12 < v14)
    {
      [(TSDScalarPathSource *)self scalar];
    }

    v15 = v14;
    v4 = 1.0;
    if (v15 != 0.0)
    {
      v16 = (v15 + v15);
      v3 = (v6 - v16) / v6;
      v4 = (v8 - v16) / v8;
    }
  }

  v17 = v3;
  result.height = v4;
  result.width = v17;
  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TSDScalarPathSource_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __44__TSDScalarPathSource_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDScalarPathSource mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDScalarPathSource.m"), 398, @"nil object after cast"}];
  }

  v5 = [*(a1 + 40) type];
  if (v5 != [v2 type])
  {
    return 1;
  }

  [*(a1 + 40) naturalSize];
  v7 = v6;
  v9 = v8;
  [v2 naturalSize];
  if (TSDNearlyEqualSizes(v7, v9, v10, v11))
  {
    [*(a1 + 40) scalar];
    v13 = v12;
    [v2 scalar];
    if (vabdd_f64(v13, v14) < 0.00999999978)
    {
      return 4;
    }
  }

  if ([*(a1 + 40) type] != 1)
  {
    return 3;
  }

  [*(a1 + 40) scalar];
  v17 = v16;
  [v2 scalar];
  if (vabdd_f64(v17, v18) <= 2.0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__TSDScalarPathSource_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

TSDScalarPathSource *__56__TSDScalarPathSource_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [*(a1 + 40) scalar];
  [v2 scalar];
  TSUMix();
  v4 = v3;
  [*(a1 + 40) naturalSize];
  v6 = v5;
  v8 = v7;
  [v2 naturalSize];
  v11 = TSDMixSizes(v6, v8, v9, v10, *(a1 + 48));
  v13 = v12;
  v14 = [*(a1 + 40) type];

  return [TSDScalarPathSource pathSourceWithType:v14 scalar:v4 naturalSize:v11, v13];
}

- (CGPath)p_newRoundedRectPath
{
  [(TSDScalarPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  [(TSDScalarPathSource *)self scalar];
  v10 = v9;
  v11 = TSDDistance(v7, v8, 0.0, v6) * 0.5;
  v12 = TSDDistance(v7, v8, v4, 0.0) * 0.5;
  if (v11 < v12)
  {
    v12 = v11;
  }

  if (v10 < v12)
  {
    [(TSDScalarPathSource *)self scalar];
  }

  v13 = v12;
  v14 = TSDRectWithSize();

  return TSDCreateRoundRectPathForRectWithRadius(v14, v15, v16, v17, v13);
}

- (CGPath)p_newRegularPolygonPath
{
  Mutable = CGPathCreateMutable();
  [(TSDScalarPathSource *)self scalar];
  if (v4 >= 3.0)
  {
    [(TSDScalarPathSource *)self scalar];
    v5 = v6;
  }

  else
  {
    v5 = 3;
  }

  [(TSDScalarPathSource *)self naturalSize];
  v8 = v7 * 0.5;
  v17 = 0.0;
  v18 = 0.0;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeScale(&m, 1.0, v9 / v7);
  v10 = v8;
  v14 = m;
  CGAffineTransformTranslate(&v15, &v14, v10, v10);
  m = v15;
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = 6.28318531 / v5;
      TSDOriginRotate(&v17, v10, (v12 * i) + -1.57079633);
      if (i)
      {
        CGPathAddLineToPoint(Mutable, &m, v17, v18);
      }

      else
      {
        CGPathMoveToPoint(Mutable, &m, v17, v18);
      }
    }
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)p_newChevronPath
{
  Mutable = CGPathCreateMutable();
  [(TSDScalarPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  [(TSDScalarPathSource *)self scalar];
  TSUClamp();
  v9 = v8;
  if (v9 == 0.0)
  {
    v15.origin.x = TSDRectWithSize();
    CGPathAddRect(Mutable, 0, v15);
  }

  else
  {
    v10 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
    v12 = v9;
    v13 = v5 - v9;
    CGPathMoveToPoint(Mutable, 0, *MEMORY[0x277CBF348], v11);
    CGPathAddLineToPoint(Mutable, 0, v13, 0.0);
    CGPathAddLineToPoint(Mutable, 0, v5, v7 * 0.5);
    CGPathAddLineToPoint(Mutable, 0, v13, v7);
    CGPathAddLineToPoint(Mutable, 0, 0.0, v7);
    CGPathAddLineToPoint(Mutable, 0, v12, v7 * 0.5);
    CGPathAddLineToPoint(Mutable, 0, v10, v11);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (void)p_setControlKnobPointForRoundedRect:(CGPoint)a3
{
  [(TSDScalarPathSource *)self naturalSize];
  v5 = v4;
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  TSDDistance(*MEMORY[0x277CBF348], v7, 0.0, v8);
  TSDDistance(v6, v7, v5, 0.0);
  TSUClamp();

  [(TSDScalarPathSource *)self setScalar:?];
}

- (CGPoint)p_getControlKnobPointForRoundedRect
{
  [(TSDScalarPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  [(TSDScalarPathSource *)self scalar];
  TSDDistance(v7, v8, 0.0, v6);
  TSDDistance(v7, v8, v4, 0.0);
  TSUClamp();
  *&v9 = v9;
  v10 = *&v9;
  v11 = 0.0;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)p_setControlKnobPointForRegularPolygon:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSDScalarPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  if ([(TSDPathSource *)self hasVerticalFlip])
  {
    v10 = v9 - y;
  }

  else
  {
    v10 = y;
  }

  v11 = x - v7 * 0.5;
  v12 = v7 / v9 * (v10 - v9 * 0.5);
  v13 = -v11;
  v14 = TSDPointLength(v11, v12);
  v15 = acos(v13 / v14);
  if (v12 > 0.0)
  {
    v15 = 6.28318531 - v15;
  }

  v16 = v15 / 6.28318531 + -0.25;
  if (v16 < 0.0)
  {
    v16 = v16 + 1.0;
  }

  if ((v16 * 9.0 + 3.5) <= 11)
  {
    v17 = (v16 * 9.0 + 3.5);
  }

  else
  {
    v17 = 3;
  }

  [(TSDScalarPathSource *)self scalar];
  if (v18 != 3 || v17 == 4)
  {
    [(TSDScalarPathSource *)self scalar];
    if (v19 != 11 || v17 == 10)
    {

      [(TSDScalarPathSource *)self setScalar:v17];
    }
  }
}

- (CGPoint)p_getControlKnobPointForRegularPolygon
{
  [(TSDScalarPathSource *)self scalar];
  v3 = 0.0;
  if (v4 >= 3.0)
  {
    [(TSDScalarPathSource *)self scalar];
    v3 = (v5 - 3);
  }

  [(TSDScalarPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  v10 = v6 * 0.5;
  v14 = 0.0;
  v15 = 0.0;
  TSDOriginRotate(&v14, v6 * 0.5 * 0.7, ((v3 / 9.0) + -0.25) * 6.28318531);
  v14 = v10 + v14;
  v15 = v9 * 0.5 + v9 / v7 * v15;
  v11 = [(TSDPathSource *)self hasVerticalFlip];
  v12 = v14;
  v13 = v15;
  if (v11)
  {
    v13 = v9 - v15;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (void)p_setControlKnobPointForChevron:(CGPoint)a3
{
  [(TSDScalarPathSource *)self naturalSize];
  v5 = v4;
  TSUClamp();
  v7 = v6 / v5;

  [(TSDScalarPathSource *)self setScalar:v7];
}

- (CGPoint)p_getControlKnobPointForChevron
{
  [(TSDScalarPathSource *)self naturalSize];
  v4 = v3;
  [(TSDScalarPathSource *)self scalar];
  TSUClamp();
  *&v5 = v5;
  v6 = *&v5;
  v7 = v4 * 0.5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)naturalSize
{
  mScalar = self->mScalar;
  width = self->mNaturalSize.width;
  result.height = width;
  result.width = mScalar;
  return result;
}

@end