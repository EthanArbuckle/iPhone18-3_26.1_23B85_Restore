@interface TSDCalloutPathSource
+ (id)calloutWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize;
+ (id)quoteBubbleWithTailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOval;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)p_adjustedCenterForPath:(id)path;
- (CGPoint)p_getControlKnobPointForRoundedRect;
- (CGPoint)p_tailPosition;
- (CGPoint)tailCenter;
- (CGPoint)tailKnobPosition;
- (CGPoint)tailSizeKnobPosition;
- (CGSize)naturalSize;
- (TSDCalloutPathSource)initWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize tailAtCenter:(BOOL)center;
- (double)maxTailSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getFeedbackStringForKnob:(unint64_t)knob;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)p_basePath;
- (id)p_buildPath;
- (id)valueForSetSelector:(SEL)selector;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
- (void)p_getTailPath:(id)path center:(CGPoint *)center tailSize:(double *)size intersections:(CGPoint)intersections[2];
- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
- (void)setCornerRadius:(double)radius;
- (void)setTailKnobPosition:(CGPoint)position;
- (void)setTailSize:(double)size;
- (void)setTailSizeKnobPosition:(CGPoint)position;
@end

@implementation TSDCalloutPathSource

- (TSDCalloutPathSource)initWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize tailAtCenter:(BOOL)center
{
  centerCopy = center;
  height = naturalSize.height;
  width = naturalSize.width;
  y = position.y;
  x = position.x;
  v17.receiver = self;
  v17.super_class = TSDCalloutPathSource;
  v14 = [(TSDCalloutPathSource *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(TSDCalloutPathSource *)v14 p_setNaturalSize:width, height];
    [(TSDCalloutPathSource *)v15 p_setCornerRadius:radius];
    [(TSDCalloutPathSource *)v15 p_setTailPosition:x, y];
    [(TSDCalloutPathSource *)v15 p_setTailSize:size];
    [(TSDCalloutPathSource *)v15 p_setTailAtCenter:centerCopy];
  }

  return v15;
}

+ (id)calloutWithCornerRadius:(double)radius tailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize
{
  v6 = [[self alloc] initWithCornerRadius:0 tailPosition:radius tailSize:position.x naturalSize:position.y tailAtCenter:{size, naturalSize.width, naturalSize.height}];

  return v6;
}

+ (id)quoteBubbleWithTailPosition:(CGPoint)position tailSize:(double)size naturalSize:(CGSize)naturalSize
{
  v5 = [[self alloc] initWithCornerRadius:1 tailPosition:naturalSize.width + 10.0 tailSize:position.x naturalSize:position.y tailAtCenter:{size, naturalSize.width, naturalSize.height}];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSDCalloutPathSource;
  v4 = [(TSDPathSource *)&v6 copyWithZone:zone];
  [v4 p_setNaturalSize:{self->mNaturalSize.width, self->mNaturalSize.height}];
  [v4 p_setCornerRadius:self->mCornerRadius];
  [v4 p_setTailPosition:{self->mTailPosition.x, self->mTailPosition.y}];
  [v4 p_setTailSize:self->mTailSize];
  [v4 p_setTailAtCenter:self->mIsTailAtCenter];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v20 = v6;
  v21 = v5;
  v22 = v3;
  v23 = v4;
  v19.receiver = self;
  v19.super_class = TSDCalloutPathSource;
  v9 = [(TSDPathSource *)&v19 isEqual:?];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    [equal naturalSize];
    v9 = TSDNearlyEqualSizes(self->mNaturalSize.width, self->mNaturalSize.height, v10, v11);
    if (!v9)
    {
      return v9;
    }

    mCornerRadius = self->mCornerRadius;
    [equal cornerRadius];
    if (vabdd_f64(mCornerRadius, v13) >= 0.00999999978)
    {
LABEL_9:
      LOBYTE(v9) = 0;
      return v9;
    }

    [equal p_tailPosition];
    v9 = TSDNearlyEqualPoints(self->mTailPosition.x, self->mTailPosition.y, v14, v15);
    if (v9)
    {
      mTailSize = self->mTailSize;
      [equal tailSize];
      LOBYTE(v9) = vabdd_f64(mTailSize, v17) < 0.00999999978;
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
  v8.receiver = self;
  v8.super_class = TSDCalloutPathSource;
  v3 = [-[TSDCalloutPathSource description](&v8 description)];
  mCornerRadius = self->mCornerRadius;
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromCGPoint(self->mTailPosition);
  [v3 appendString:{objc_msgSend(v5, "stringWithFormat:", @"; corner radius=%f; tail position=%@, tail size=%f natural size=%@", *&mCornerRadius, v6, *&self->mTailSize, NSStringFromCGSize(self->mNaturalSize))}];
  return v3;
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  switch(position)
  {
    case 0xEuLL:
      [(TSDCalloutPathSource *)self tailSizeKnobPosition];
      break;
    case 0xDuLL:
      [(TSDCalloutPathSource *)self p_getControlKnobPointForRoundedRect];
      break;
    case 0xCuLL:
      [(TSDCalloutPathSource *)self tailKnobPosition];
      break;
    default:
      v3 = *MEMORY[0x277CBF348];
      v4 = *(MEMORY[0x277CBF348] + 8);
      break;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  switch(position)
  {
    case 0xEuLL:
      [(TSDCalloutPathSource *)self setTailSizeKnobPosition:point.x, point.y];
      break;
    case 0xDuLL:
      [(TSDCalloutPathSource *)self p_setControlKnobPointForRoundedRect:point.x, point.y];
      break;
    case 0xCuLL:
      [(TSDCalloutPathSource *)self setTailKnobPosition:point.x, point.y];
      break;
  }
}

- (id)getFeedbackStringForKnob:(unint64_t)knob
{
  if (knob != 13)
  {
    return &stru_287D36338;
  }

  [(TSDCalloutPathSource *)self cornerRadius];
  v5 = v4;
  [(TSDCalloutPathSource *)self maxCornerRadius];
  if (v5 < v6)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSDBundle(), "localizedStringForKey:value:table:", @"Radius: %d pt", &stru_287D36338, @"TSDrawables", self->mCornerRadius];
  }

  v8 = TSDBundle();

  return [v8 localizedStringForKey:@"Oval" value:&stru_287D36338 table:@"TSDrawables"];
}

- (void)setCornerRadius:(double)radius
{
  [(TSDCalloutPathSource *)self p_setCornerRadius:radius];
  mCornerRadius = self->mCornerRadius;
  v5 = 0.0;
  if (mCornerRadius >= 0.0)
  {
    [(TSDCalloutPathSource *)self maxCornerRadius];
    if (mCornerRadius < v6)
    {
      return;
    }

    [(TSDCalloutPathSource *)self maxCornerRadius];
    v5 = v7 + 1.0;
  }

  self->mCornerRadius = v5;
}

- (BOOL)isOval
{
  mCornerRadius = self->mCornerRadius;
  [(TSDCalloutPathSource *)self maxCornerRadius];
  return mCornerRadius >= v3;
}

- (void)setTailSize:(double)size
{
  [(TSDCalloutPathSource *)self p_setTailSize:size];
  height = self->mNaturalSize.height;
  if (height <= self->mNaturalSize.width)
  {
    height = self->mNaturalSize.width;
  }

  mTailSize = self->mTailSize;
  if (mTailSize > height || (height = -height, mTailSize < height))
  {
    self->mTailSize = height;
  }
}

- (CGPoint)tailSizeKnobPosition
{
  v16 = *MEMORY[0x277D85DE8];
  [(TSDCalloutPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  [(TSDCalloutPathSource *)self p_getTailPath:[(TSDCalloutPathSource *)self p_basePath] center:0 tailSize:0 intersections:&v12];
  if (v12 + v13 >= v14 + v15)
  {
    v7 = v15;
  }

  else
  {
    v7 = v13;
  }

  if (v12 + v13 >= v14 + v15)
  {
    v8 = v14;
  }

  else
  {
    v8 = v12;
  }

  if ([(TSDPathSource *)self hasHorizontalFlip])
  {
    v9 = v4 - v8;
  }

  else
  {
    v9 = v8;
  }

  if ([(TSDPathSource *)self hasVerticalFlip])
  {
    v10 = v6 - v7;
  }

  else
  {
    v10 = v7;
  }

  v11 = v9;
  result.y = v10;
  result.x = v11;
  return result;
}

- (double)maxTailSize
{
  v34[4] = *MEMORY[0x277D85DE8];
  [(TSDCalloutPathSource *)self p_tailPosition];
  v4 = v3;
  v6 = v5;
  p_basePath = [(TSDCalloutPathSource *)self p_basePath];
  [(TSDCalloutPathSource *)self p_adjustedCenterForPath:p_basePath];
  v9 = v8;
  v11 = v10;
  v12 = TSDDistance(v4, v6, v8, v10);
  v34[0] = v4;
  v34[1] = v6;
  v34[2] = v9;
  v34[3] = v11;
  v27 = 0.0;
  v28 = 0.0;
  elementCount = [p_basePath elementCount];
  if (elementCount < 1)
  {
    v24 = 0.0;
    v25 = 0.0;
    return fmin(v25, -v24) * 0.899999976;
  }

  v14 = elementCount;
  v15 = TSDSubtractPoints(v9, v11, v4);
  v17 = TSDNormalizePoint(v15, v16);
  v19 = v18;
  for (i = 0; i != v14; ++i)
  {
    v21 = [p_basePath elementAtIndex:i allPoints:&v29];
    if (v21 == 2)
    {
      p_getMaxMinTailSize(v34, &v28, &v27, v29.f64[0], v29.f64[1], v17, v19, v4, v6, v12);
      p_getMaxMinTailSize(v34, &v28, &v27, v32, v33, v17, v19, v4, v6, v12);
      v22 = TSDPointOnCurve(&v29, 0.5);
    }

    else
    {
      if (v21 != 1)
      {
        continue;
      }

      p_getMaxMinTailSize(v34, &v28, &v27, v29.f64[0], v29.f64[1], v17, v19, v4, v6, v12);
      v22 = v30;
      v23 = v31;
    }

    p_getMaxMinTailSize(v34, &v28, &v27, v22, v23, v17, v19, v4, v6, v12);
  }

  v24 = v27;
  v25 = v28;
  return fmin(v25, -v24) * 0.899999976;
}

- (void)setTailSizeKnobPosition:(CGPoint)position
{
  x = position.x;
  v31 = *MEMORY[0x277D85DE8];
  [(TSDCalloutPathSource *)self naturalSize];
  v6 = v5;
  if ([(TSDPathSource *)self hasHorizontalFlip])
  {
    x = v6 - x;
  }

  [(TSDPathSource *)self hasVerticalFlip];
  v28 = 0.0;
  v29 = 0.0;
  [(TSDCalloutPathSource *)self p_getTailPath:[(TSDCalloutPathSource *)self p_basePath] center:&v28 tailSize:0 intersections:v30];
  [(TSDCalloutPathSource *)self p_tailPosition];
  v8 = v7;
  v10 = v9;
  v11 = TSDSubtractPoints(v7, v9, x);
  v13 = TSDNormalizePoint(v11, v12);
  v15 = v14;
  v16 = v28;
  v17 = v29;
  v18 = TSDSubtractPoints(v8, v10, v28);
  v20 = TSDNormalizePoint(v18, v19);
  v22 = v21;
  v27 = TSDDotPoints(v13, v15, v20, v21);
  v23 = TSDRotatePoint90Degrees(1, v20, v22);
  v25 = fabs(TSDDotPoints(v13, v15, v23, v24));
  v26 = v25 * (TSDDistance(v8, v10, v16, v17) / v27);
  if (fabs(v26) < 1.0)
  {
    v26 = 1.0;
  }

  self->mTailSize = v26;
}

- (void)setTailKnobPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(TSDCalloutPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  if ([(TSDPathSource *)self hasHorizontalFlip])
  {
    x = v7 - x;
  }

  if ([(TSDPathSource *)self hasVerticalFlip])
  {
    v10 = v9 - y;
  }

  else
  {
    v10 = y;
  }

  v11 = TSDMultiplyPointScalar(x, v10, 1.0);

  [(TSDCalloutPathSource *)self p_setTailPosition:v11];
}

- (CGPoint)tailKnobPosition
{
  x = self->mTailPosition.x;
  y = self->mTailPosition.y;
  [(TSDCalloutPathSource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  if ([(TSDPathSource *)self hasHorizontalFlip])
  {
    v9 = v6 - x;
  }

  else
  {
    v9 = x;
  }

  if ([(TSDPathSource *)self hasVerticalFlip])
  {
    v10 = v8 - y;
  }

  else
  {
    v10 = y;
  }

  v11 = v9;
  result.y = v10;
  result.x = v11;
  return result;
}

- (id)valueForSetSelector:(SEL)selector
{
  if (sel_setCornerRadiusValue_ == selector)
  {
    v4 = MEMORY[0x277CCABB0];
    [(TSDCalloutPathSource *)self cornerRadius];
  }

  else
  {
    if (sel_setTailPositionValue_ == selector)
    {
      v6 = MEMORY[0x277CCAE60];
      [(TSDCalloutPathSource *)self tailKnobPosition];
LABEL_13:

      return [v6 valueWithCGPoint:?];
    }

    if (sel_setTailSizeValue_ != selector)
    {
      if (sel_setTailSizeKnobPosition_ != selector)
      {
        v7.receiver = self;
        v7.super_class = TSDCalloutPathSource;
        return [(TSDPathSource *)&v7 valueForSetSelector:?];
      }

      v6 = MEMORY[0x277CCABB0];
      [(TSDCalloutPathSource *)self tailSizeKnobPosition];
      goto LABEL_13;
    }

    v4 = MEMORY[0x277CCABB0];
    [(TSDCalloutPathSource *)self tailSize];
  }

  *&v5 = v5;

  return [v4 numberWithFloat:v5];
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TSDPathSource *)self uniformScaleForScalingToNaturalSize:?];
  v7 = v6;
  [(TSDCalloutPathSource *)self naturalSize];
  v9 = v8;
  isOval = [(TSDCalloutPathSource *)self isOval];
  p_mTailPosition = &self->mTailPosition;
  v12 = *MEMORY[0x277CBF348];
  if (self->mTailPosition.x > v9 * 0.5)
  {
    v13 = width / v9 + -1.0;
    if (fabs(v13) > 0.001)
    {
      v12 = (width - v9) * ((width / v9 - v7) / v13);
    }
  }

  self->mTailSize = v7 * self->mTailSize;
  v14 = TSDMultiplyPointScalar(p_mTailPosition->x, self->mTailPosition.y, v7);
  p_mTailPosition->x = TSDAddPoints(v14, v15, v12);
  self->mTailPosition.y = v16;
  [(TSDCalloutPathSource *)self p_setNaturalSize:width, height];
  [(TSDCalloutPathSource *)self maxCornerRadius];
  if (isOval)
  {
    v18 = v17 + 1.0;
  }

  else
  {
    v18 = fmin(v17 + -0.001, v7 * self->mCornerRadius);
  }

  self->mCornerRadius = v18;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)tailCenter
{
  if (self->mIsTailAtCenter)
  {
    v3 = self->mNaturalSize.width * 0.5;
    v4 = self->mNaturalSize.height * 0.5;
  }

  else
  {
    [(TSDCalloutPathSource *)self p_tailPosition];
    v3 = v5;
    v7 = v6;
    [(TSDCalloutPathSource *)self cornerRadius];
    v4 = v8;
    if (v3 <= v8 || v3 >= self->mNaturalSize.width - v8)
    {
      if (v7 <= v8 || v7 >= self->mNaturalSize.height - v8)
      {
        v9 = v3 > v8;
        v3 = v8;
        if (v9)
        {
          v3 = self->mNaturalSize.width - v8;
        }

        if (v7 > v8)
        {
          v4 = self->mNaturalSize.height - v8;
        }
      }

      else
      {
        v3 = self->mNaturalSize.width * 0.5;
        v4 = v7;
      }
    }

    else
    {
      v4 = self->mNaturalSize.height * 0.5;
    }
  }

  v10 = v3;
  result.y = v4;
  result.x = v10;
  return result;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TSDCalloutPathSource_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __45__TSDCalloutPathSource_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCalloutPathSource mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCalloutPathSource.m"), 498, @"nil object after cast"}];
  }

  v5 = *(a1 + 40);
  if (v5[64] != v2[64])
  {
    return 1;
  }

  [v5 naturalSize];
  v7 = v6;
  v9 = v8;
  [v2 naturalSize];
  if (TSDNearlyEqualSizes(v7, v9, v10, v11) && ([*(a1 + 40) p_tailPosition], v13 = v12, v15 = v14, objc_msgSend(v2, "p_tailPosition"), TSDNearlyEqualPoints(v13, v15, v16, v17)) && (objc_msgSend(*(a1 + 40), "cornerRadius"), v19 = v18, objc_msgSend(v2, "cornerRadius"), vabdd_f64(v19, v20) < 0.00999999978) && (objc_msgSend(*(a1 + 40), "tailSize"), v22 = v21, objc_msgSend(v2, "tailSize"), vabdd_f64(v22, v23) < 0.00999999978))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TSDCalloutPathSource_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDCalloutPathSource *__57__TSDCalloutPathSource_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [TSDCalloutPathSource alloc];
  [*(a1 + 40) cornerRadius];
  [v2 cornerRadius];
  TSUMix();
  v5 = v4;
  [*(a1 + 40) p_tailPosition];
  v7 = v6;
  v9 = v8;
  [v2 p_tailPosition];
  v12 = TSDMixPoints(v7, v9, v10, v11, *(a1 + 48));
  v14 = v13;
  [*(a1 + 40) tailSize];
  [v2 tailSize];
  TSUMix();
  v16 = v15;
  [*(a1 + 40) naturalSize];
  v18 = v17;
  v20 = v19;
  [v2 naturalSize];
  v23 = TSDMixSizes(v18, v20, v21, v22, *(a1 + 48));
  v25 = [(TSDCalloutPathSource *)v3 initWithCornerRadius:*(*(a1 + 40) + 64) tailPosition:v5 tailSize:v12 naturalSize:v14 tailAtCenter:v16, v23, v24];

  return v25;
}

- (CGPoint)p_tailPosition
{
  x = self->mTailPosition.x;
  y = self->mTailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)p_adjustedCenterForPath:(id)path
{
  v16[4] = *MEMORY[0x277D85DE8];
  [(TSDCalloutPathSource *)self tailCenter];
  v6 = v5;
  v8 = v7;
  [(TSDCalloutPathSource *)self p_tailPosition];
  v16[0] = v9;
  v16[1] = v10;
  *&v16[2] = v6;
  *&v16[3] = v8;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [path addIntersectionsWithLine:v16 to:v11];
  if ([v11 count])
  {
    [objc_msgSend(v11 "lastObject")];
    v6 = v12;
    v8 = v13;
  }

  v14 = v6;
  v15 = v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)p_getTailPath:(id)path center:(CGPoint *)center tailSize:(double *)size intersections:(CGPoint)intersections[2]
{
  v87[4] = *MEMORY[0x277D85DE8];
  [(TSDCalloutPathSource *)self tailSize];
  v12 = v11;
  [(TSDCalloutPathSource *)self p_tailPosition];
  v14 = v13;
  v16 = v15;
  [(TSDCalloutPathSource *)self p_adjustedCenterForPath:path];
  v18 = v17;
  v20 = v19;
  [(TSDCalloutPathSource *)self maxTailSize];
  v22 = fmin(fabs(v12), v21);
  v23 = TSDSubtractPoints(v14, v16, v18);
  v25 = TSDNormalizePoint(v23, v24);
  v84 = v22;
  v27 = TSDMultiplyPointScalar(v25, v26, v22);
  v29 = TSDRotatePoint90Degrees(1, v27, v28);
  v87[0] = v14;
  v87[1] = v16;
  v30 = TSDAddPoints(v18, v20, v29);
  v32 = TSDSubtractPoints(v30, v31, v14);
  v34 = TSDMultiplyPointScalar(v32, v33, 20.0);
  v87[2] = TSDAddPoints(v14, v16, v34);
  v87[3] = v35;
  v86[0] = v14;
  v86[1] = v16;
  v85 = v20;
  v36 = TSDSubtractPoints(v18, v20, v29);
  v38 = TSDSubtractPoints(v36, v37, v14);
  v40 = TSDMultiplyPointScalar(v38, v39, 20.0);
  v86[2] = TSDAddPoints(v14, v16, v40);
  v86[3] = v41;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [path addIntersectionsWithLine:v87 to:v42];
  [path addIntersectionsWithLine:v86 to:v43];
  if ([v42 count])
  {
    [objc_msgSend(v42 objectAtIndex:{0), "point"}];
    v45 = v44;
    v47 = v46;
    [objc_msgSend(v42 "lastObject")];
    v49 = v48;
    v51 = v50;
    v52 = TSDDistance(v45, v47, v14, v16);
    v53 = TSDDistance(v49, v51, v14, v16);
    v54 = v52 < v53;
    if (v52 >= v53)
    {
      v55 = v51;
    }

    else
    {
      v55 = v47;
    }

    if (v54)
    {
      v56 = v45;
    }

    else
    {
      v56 = v49;
    }

    v57 = TSDSubtractPoints(v56, v55, v14);
    v59 = TSDNormalizePoint(v57, v58);
    v60 = TSDAddPoints(v56, v55, v59);
  }

  else
  {
    v60 = TSDPathNearestAngleOnPathToLine([path CGPath], v87);
  }

  v62 = v60;
  v63 = v61;
  if ([v43 count])
  {
    [objc_msgSend(v43 objectAtIndex:{0), "point"}];
    v83 = v62;
    v65 = v64;
    v67 = v66;
    [objc_msgSend(v43 "lastObject")];
    v69 = v68;
    v82 = v18;
    v71 = v70;
    v72 = TSDDistance(v65, v67, v14, v16);
    if (v72 >= TSDDistance(v69, v71, v14, v16))
    {
      v65 = v69;
    }

    else
    {
      v71 = v67;
    }

    v73 = TSDSubtractPoints(v65, v71, v14);
    v75 = TSDNormalizePoint(v73, v74);
    v76 = v65;
    v77 = v71;
    v18 = v82;
    v62 = v83;
    v78 = TSDAddPoints(v76, v77, v75);
  }

  else
  {
    v78 = TSDPathNearestAngleOnPathToLine([path CGPath], v86);
  }

  v80 = v78;
  v81 = v79;

  intersections->x = v62;
  intersections->y = v63;
  intersections[1].x = v80;
  intersections[1].y = v81;
  if (center)
  {
    center->x = v18;
    center->y = v85;
  }

  if (size)
  {
    *size = v84;
  }
}

- (id)p_basePath
{
  [(TSDCalloutPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  [(TSDCalloutPathSource *)self cornerRadius];
  v8 = v7;
  [(TSDCalloutPathSource *)self maxCornerRadius];
  v10 = v9;
  v11 = +[TSDBezierPath bezierPath];
  [(TSDCalloutPathSource *)self cornerRadius];
  v13 = v12;
  [(TSDCalloutPathSource *)self maxCornerRadius];
  if (v13 >= v14)
  {
    [v11 appendBezierPathWithOvalInRect:{-0.5, -0.5, 1.0, 1.0}];
    [v11 closePath];
    memset(&v30, 0, sizeof(v30));
    CGAffineTransformMakeScale(&v30, self->mNaturalSize.width, self->mNaturalSize.height);
    v28 = v30;
    CGAffineTransformTranslate(&v29, &v28, 0.5, 0.5);
    v30 = v29;
    v28 = v29;
    CGAffineTransformRotate(&v29, &v28, 0.785398163);
    v30 = v29;
    [v11 transformUsingAffineTransform:&v29];
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    v16 = *(MEMORY[0x277CBF348] + 8);
    v17 = fmin(v8, v10);
    v18 = TSDAddPoints(0.0, v6, 0.0);
    v20 = v19;
    [v11 moveToPoint:?];
    v21 = TSDAddPoints(v15, v16, v17);
    [v11 appendBezierPathWithArcFromPoint:v15 toPoint:v16 radius:{v21, v22, v17}];
    v23 = TSDSubtractPoints(v4, 0.0, 0.0);
    [v11 appendBezierPathWithArcFromPoint:v4 toPoint:0.0 radius:{v23, v24, v17}];
    v25 = TSDSubtractPoints(v4, v6, v17);
    [v11 appendBezierPathWithArcFromPoint:v4 toPoint:v6 radius:{v25, v26, v17}];
    [v11 appendBezierPathWithArcFromPoint:0.0 toPoint:v6 radius:{v18, v20, v17}];
    [v11 closePath];
  }

  return v11;
}

- (id)p_buildPath
{
  v11[4] = *MEMORY[0x277D85DE8];
  p_basePath = [(TSDCalloutPathSource *)self p_basePath];
  [(TSDCalloutPathSource *)self p_tailPosition];
  v5 = v4;
  v7 = v6;
  if (([p_basePath containsPoint:?] & 1) == 0)
  {
    [(TSDCalloutPathSource *)self p_getTailPath:p_basePath center:0 tailSize:0 intersections:v11];
    v8 = +[TSDBezierPath bezierPath];
    [v8 moveToPoint:{v11[0], v11[1]}];
    [v8 lineToPoint:{v5, v7}];
    [v8 lineToPoint:{v11[2], v11[3]}];
    v9 = +[TSDBezierPath uniteBezierPaths:](TSDBezierPath, "uniteBezierPaths:", [MEMORY[0x277CBEA60] arrayWithObjects:{p_basePath, v8, 0}]);
    if ([v9 elementCount])
    {
      return v9;
    }
  }

  return p_basePath;
}

- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect
{
  [(TSDCalloutPathSource *)self maxCornerRadius];
  TSUClamp();

  [(TSDCalloutPathSource *)self setCornerRadius:?];
}

- (CGPoint)p_getControlKnobPointForRoundedRect
{
  [(TSDCalloutPathSource *)self maxCornerRadius];
  TSUClamp();
  *&v2 = v2;
  v3 = *&v2;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

@end