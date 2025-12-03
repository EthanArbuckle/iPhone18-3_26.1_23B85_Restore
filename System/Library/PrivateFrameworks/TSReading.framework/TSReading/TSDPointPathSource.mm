@interface TSDPointPathSource
+ (id)pathSourceWithType:(int)type point:(CGPoint)point naturalSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_isRightFacingArrow;
- (CGPath)newFeedbackPathForKnob:(unint64_t)knob;
- (CGPath)p_newArrowPath;
- (CGPath)p_newPlusPath;
- (CGPath)p_newStarPath;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)maxPointValue;
- (CGPoint)minPointValue;
- (CGPoint)p_getControlKnobPointForArrow;
- (CGPoint)p_getControlKnobPointForPlus;
- (CGPoint)p_getControlKnobPointForStarInnerRadius;
- (CGPoint)p_getControlKnobPointForStarPoints;
- (CGPoint)point;
- (CGSize)naturalSize;
- (CGSize)scaleFactorForInscribedRectangle;
- (TSDPointPathSource)initWithType:(int)type point:(CGPoint)point naturalSize:(CGSize)size;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getFeedbackStringForKnob:(unint64_t)knob;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)valueForSetSelector:(SEL)selector;
- (int64_t)mixingTypeWithObject:(id)object;
- (unint64_t)hash;
- (unint64_t)numberOfControlKnobs;
- (void)p_setControlKnobPointForArrow:(CGPoint)arrow;
- (void)p_setControlKnobPointForPlus:(CGPoint)plus;
- (void)p_setControlKnobPointForStarInnerRadius:(CGPoint)radius;
- (void)p_setControlKnobPointForStarPoints:(CGPoint)points;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
- (void)setPointValue:(id)value;
@end

@implementation TSDPointPathSource

+ (id)pathSourceWithType:(int)type point:(CGPoint)point naturalSize:(CGSize)size
{
  v5 = [[self alloc] initWithType:*&type point:point.x naturalSize:{point.y, size.width, size.height}];

  return v5;
}

- (TSDPointPathSource)initWithType:(int)type point:(CGPoint)point naturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = point.y;
  x = point.x;
  v9 = *&type;
  v13.receiver = self;
  v13.super_class = TSDPointPathSource;
  v10 = [(TSDPointPathSource *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(TSDPointPathSource *)v10 setType:v9];
    [(TSDPointPathSource *)v11 setPoint:x, y];
    [(TSDPointPathSource *)v11 setNaturalSize:width, height];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSDPointPathSource;
  v4 = [(TSDPathSource *)&v6 copyWithZone:zone];
  [v4 setType:{-[TSDPointPathSource type](self, "type")}];
  [(TSDPointPathSource *)self point];
  [v4 setPoint:?];
  [(TSDPointPathSource *)self naturalSize];
  [v4 setNaturalSize:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v25 = v6;
    v26 = v5;
    v27 = v3;
    v28 = v4;
    v24.receiver = self;
    v24.super_class = TSDPointPathSource;
    v9 = [(TSDPathSource *)&v24 isEqual:?];
    if (v9)
    {
      type = [(TSDPointPathSource *)self type];
      if (type == [equal type])
      {
        [(TSDPointPathSource *)self point];
        v12 = v11;
        v14 = v13;
        [equal point];
        LOBYTE(v9) = 0;
        if (v12 == v16 && v14 == v15)
        {
          [(TSDPointPathSource *)self naturalSize];
          v18 = v17;
          v20 = v19;
          [equal naturalSize];
          LOBYTE(v9) = v20 == v22 && v18 == v21;
        }
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
  v8.receiver = self;
  v8.super_class = TSDPointPathSource;
  v3 = [-[TSDPointPathSource description](&v8 description)];
  v4 = MEMORY[0x277CCACA8];
  type = [(TSDPointPathSource *)self type];
  [(TSDPointPathSource *)self point];
  v6 = NSStringFromCGPoint(v9);
  [(TSDPointPathSource *)self naturalSize];
  [v3 appendString:{objc_msgSend(v4, "stringWithFormat:", @"; type=%d; point=%@; natural size=%@", type, v6, NSStringFromCGSize(v10))}];
  return v3;
}

- (CGPoint)minPointValue
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  type = [(TSDPointPathSource *)self type];
  if (type == 100)
  {
    v5 = 0.1;
  }

  else
  {
    v5 = v3;
  }

  v6 = 3.0;
  if (type != 100)
  {
    v6 = v2;
  }

  result.y = v5;
  result.x = v6;
  return result;
}

- (CGPoint)maxPointValue
{
  v4 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  type = [(TSDPointPathSource *)self type];
  if (type > 99)
  {
    if (type == 100)
    {
      v3 = 1.0;
      v4 = 100.0;
    }

    else if (type == 200)
    {
      [(TSDPointPathSource *)self naturalSize];
      v4 = v7 * 0.5;
      v3 = v8 * 0.5;
    }
  }

  else if (type >= 2)
  {
    if (type == 10)
    {
      [(TSDPointPathSource *)self naturalSize];
      v3 = 0.5;
      v4 = v9 * 0.5;
    }
  }

  else
  {
    [(TSDPointPathSource *)self naturalSize];
    v4 = v6;
    v3 = 0.5;
  }

  v10 = v4;
  v11 = v3;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  type = [(TSDPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0 || type == 200)
  {
    [(TSDPathSource *)self uniformScaleForScalingToNaturalSize:width, height];
    *&self->mType = v7 * *&self->mType;
  }

  self->mPoint.y = width;
  self->mNaturalSize.width = height;
}

- (void)setPointValue:(id)value
{
  [value CGPointValue];

  [(TSDPointPathSource *)self setPoint:?];
}

- (unint64_t)numberOfControlKnobs
{
  if ([(TSDPointPathSource *)self type]== 100)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  type = [(TSDPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {
    [(TSDPointPathSource *)self p_getControlKnobPointForArrow];
  }

  else if (type == 100)
  {
    if (position == 12)
    {
      [(TSDPointPathSource *)self p_getControlKnobPointForStarPoints];
    }

    else
    {
      [(TSDPointPathSource *)self p_getControlKnobPointForStarInnerRadius];
    }
  }

  else if (type == 200)
  {
    [(TSDPointPathSource *)self p_getControlKnobPointForPlus];
  }

  else
  {
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  type = [(TSDPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {

    [(TSDPointPathSource *)self p_setControlKnobPointForArrow:x, y];
  }

  else if (type == 100)
  {
    if (position == 12)
    {

      [(TSDPointPathSource *)self p_setControlKnobPointForStarPoints:x, y];
    }

    else
    {

      [(TSDPointPathSource *)self p_setControlKnobPointForStarInnerRadius:x, y];
    }
  }

  else if (type == 200)
  {

    [(TSDPointPathSource *)self p_setControlKnobPointForPlus:x, y];
  }
}

- (id)getFeedbackStringForKnob:(unint64_t)knob
{
  if ([(TSDPointPathSource *)self type]!= 100)
  {
    return &stru_287D36338;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = TSDBundle();
  if (knob == 12)
  {
    v7 = [v6 localizedStringForKey:@"Points: %d" value:&stru_287D36338 table:@"TSDrawables"];
    [(TSDPointPathSource *)self point];
  }

  else
  {
    v7 = [v6 localizedStringForKey:@"Radius: %d%%" value:&stru_287D36338 table:@"TSDrawables"];
    [(TSDPointPathSource *)self point];
    v8 = v10 * 100.0;
  }

  return [v5 stringWithFormat:v7, v8];
}

- (CGPath)newFeedbackPathForKnob:(unint64_t)knob
{
  type = [(TSDPointPathSource *)self type];
  Mutable = 0;
  if (knob == 12 && type == 100)
  {
    [-[TSDPathSource bezierPath](self "bezierPath")];
    v8 = v7;
    v10 = v9;
    Mutable = CGPathCreateMutable();
    [(TSDPointPathSource *)self naturalSize];
    v12 = -(v8 - v11 * 0.15);
    [(TSDPointPathSource *)self naturalSize];
    v14 = -(v10 - v13 * 0.15);
    [(TSDPointPathSource *)self naturalSize];
    v16 = v15 * 0.7;
    [(TSDPointPathSource *)self naturalSize];
    v19.size.height = v17 * 0.7;
    v19.origin.x = v12;
    v19.origin.y = v14;
    v19.size.width = v16;
    CGPathAddEllipseInRect(Mutable, 0, v19);
  }

  return Mutable;
}

- (id)valueForSetSelector:(SEL)selector
{
  if (sel_setPointValue_ == selector)
  {
    v4 = MEMORY[0x277CCAE60];
    [(TSDPointPathSource *)self point];

    return [v4 valueWithCGPoint:?];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDPointPathSource;
    return [(TSDPathSource *)&v5 valueForSetSelector:?];
  }
}

- (id)bezierPathWithoutFlips
{
  type = [(TSDPointPathSource *)self type];
  if (type <= 0xA && ((1 << type) & 0x403) != 0)
  {
    p_newArrowPath = [(TSDPointPathSource *)self p_newArrowPath];
  }

  else if (type == 100)
  {
    p_newArrowPath = [(TSDPointPathSource *)self p_newStarPath];
  }

  else
  {
    if (type != 200)
    {
      v5 = 0;
      goto LABEL_9;
    }

    p_newArrowPath = [(TSDPointPathSource *)self p_newPlusPath];
  }

  v5 = p_newArrowPath;
LABEL_9:
  v6 = [TSDBezierPath bezierPathWithCGPath:v5];
  CGPathRelease(v5);
  return v6;
}

- (CGSize)scaleFactorForInscribedRectangle
{
  v28[6] = *MEMORY[0x277D85DE8];
  type = [(TSDPointPathSource *)self type];
  v4 = 1.0;
  if (type > 0xA)
  {
    v6 = 1.0;
  }

  else
  {
    v5 = type;
    v6 = 1.0;
    if (((1 << type) & 0x403) != 0)
    {
      [(TSDPointPathSource *)self naturalSize:1.0];
      v8 = v7;
      v10 = v9;
      v11 = MEMORY[0x277CBF3A8];
      v12 = *(MEMORY[0x277CBF3A8] + 8);
      [(TSDPointPathSource *)self point];
      if (v5 == 1)
      {
        TSUClamp();
        v15 = v8 - v18;
        v16 = v10 * 0.5;
        TSUClamp();
      }

      else
      {
        if (v5 == 10)
        {
          v13 = v8 * 0.5;
          TSUClamp();
          v15 = v14;
          v16 = v10 * 0.5;
          TSUClamp();
          goto LABEL_13;
        }

        TSUClamp();
        v15 = v19;
        v16 = v10 * 0.5;
        TSUClamp();
        if (v5 >= 2)
        {
          v13 = v8 * 0.5;
LABEL_13:
          v22 = 0;
          v21 = *v11;
          v23 = v10 + v17 * -2.0;
          v28[0] = v8 + v15 * -2.0 * (v23 / v10);
          v28[1] = v23;
          v28[2] = v15 * 0.5;
          v28[3] = v16;
          v24 = v16;
          *&v23 = v23;
          v28[4] = v13;
          v28[5] = fminf(v24, *&v23);
          v25 = 0.0;
          do
          {
            v27 = v28[v22];
            v26 = v28[v22 + 1];
            if (v26 * v27 >= v25)
            {
              v21 = v28[v22];
              v12 = v28[v22 + 1];
              v25 = v26 * v27;
            }

            v22 += 2;
          }

          while (v22 != 6);
          goto LABEL_17;
        }
      }

      v20 = v10 + v17 * -2.0;
      v21 = v15 + v12 / v10 * (v8 - v15);
      if (v20 * v21 > v16 * ((v8 - v15) * 0.5))
      {
        v12 = v20;
      }

      else
      {
        v21 = (v8 - v15) * 0.5;
        v12 = v16;
      }

LABEL_17:
      v4 = v21 / v8;
      v6 = v12 / v10;
    }
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__TSDPointPathSource_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __43__TSDPointPathSource_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDPointPathSource mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPointPathSource.m"), 477, @"nil object after cast"}];
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
    [*(a1 + 40) point];
    v13 = v12;
    v15 = v14;
    [v2 point];
    if (TSDNearlyEqualPoints(v13, v15, v16, v17))
    {
      return 4;
    }
  }

  if ([*(a1 + 40) type] != 100)
  {
    return 3;
  }

  [*(a1 + 40) point];
  v20 = v19;
  [v2 point];
  if (vabdd_f64(v20, v21) <= 2.0)
  {
    return 2;
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
  v5[2] = __55__TSDPointPathSource_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDPointPathSource *__55__TSDPointPathSource_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [*(a1 + 40) point];
  v4 = v3;
  v6 = v5;
  [v2 point];
  TSDMixPoints(v4, v6, v7, v8, *(a1 + 48));
  v9 = TSDRoundedPoint();
  v11 = v10;
  [*(a1 + 40) naturalSize];
  v13 = v12;
  v15 = v14;
  [v2 naturalSize];
  v18 = TSDMixSizes(v13, v15, v16, v17, *(a1 + 48));
  v20 = v19;
  v21 = [*(a1 + 40) type];

  return [TSDPointPathSource pathSourceWithType:v21 point:v9 naturalSize:v11, v18, v20];
}

- (CGPath)p_newArrowPath
{
  Mutable = CGPathCreateMutable();
  [(TSDPointPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277CBF348];
  [(TSDPointPathSource *)self point];
  [(TSDPointPathSource *)self naturalSize];
  if (*(&self->super.mVerticalFlip + 3) == 1)
  {
    TSUClamp();
    v11 = v5 - v9;
  }

  else
  {
    TSUClamp();
    v11 = v10;
  }

  v13 = *v8;
  v12 = v8[1];
  TSUClamp();
  v15 = v14;
  v16 = *(&self->super.mVerticalFlip + 3);
  if (v16 == 10)
  {
    v17 = v7 - v14;
    CGPathMoveToPoint(Mutable, 0, v11, v7 - v14);
    v46.origin.x = v13;
    v46.origin.y = v12;
    v46.size.width = v5;
    v46.size.height = v7;
    MaxY = CGRectGetMaxY(v46);
    CGPathAddLineToPoint(Mutable, 0, v11, MaxY);
    v47.origin.x = v13;
    v47.origin.y = v12;
    v47.size.width = v5;
    v47.size.height = v7;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = v13;
    v48.origin.y = v12;
    v48.size.width = v5;
    v48.size.height = v7;
    MidY = CGRectGetMidY(v48);
    CGPathAddLineToPoint(Mutable, 0, MinX, MidY);
    CGPathAddLineToPoint(Mutable, 0, v11, 0.0);
    CGPathAddLineToPoint(Mutable, 0, v11, v15);
    v31 = v5 - v11;
    CGPathAddLineToPoint(Mutable, 0, v31, v15);
    CGPathAddLineToPoint(Mutable, 0, v31, 0.0);
    v49.origin.x = v13;
    v49.origin.y = v12;
    v49.size.width = v5;
    v49.size.height = v7;
    MaxX = CGRectGetMaxX(v49);
    v50.origin.x = v13;
    v50.origin.y = v12;
    v50.size.width = v5;
    v50.size.height = v7;
    v33 = CGRectGetMidY(v50);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v33);
    v51.origin.x = v13;
    v51.origin.y = v12;
    v51.size.width = v5;
    v51.size.height = v7;
    v34 = CGRectGetMaxY(v51);
    CGPathAddLineToPoint(Mutable, 0, v31, v34);
    v27 = Mutable;
    v22 = v31;
  }

  else
  {
    if (v16 == 1)
    {
      v17 = v7 - v14;
      CGPathMoveToPoint(Mutable, 0, v11, v7 - v14);
      v41.origin.x = v13;
      v41.origin.y = v12;
      v41.size.width = v5;
      v41.size.height = v7;
      v23 = CGRectGetMaxY(v41);
      CGPathAddLineToPoint(Mutable, 0, v11, v23);
      v42.origin.x = v13;
      v42.origin.y = v12;
      v42.size.width = v5;
      v42.size.height = v7;
      v24 = CGRectGetMaxX(v42);
      v43.origin.x = v13;
      v43.origin.y = v12;
      v43.size.width = v5;
      v43.size.height = v7;
      v25 = CGRectGetMidY(v43);
      CGPathAddLineToPoint(Mutable, 0, v24, v25);
      CGPathAddLineToPoint(Mutable, 0, v11, 0.0);
      CGPathAddLineToPoint(Mutable, 0, v11, v15);
      v44.origin.x = v13;
      v44.origin.y = v12;
      v44.size.width = v5;
      v44.size.height = v7;
      v26 = CGRectGetMinX(v44);
      CGPathAddLineToPoint(Mutable, 0, v26, v15);
      v45.origin.x = v13;
      v45.origin.y = v12;
      v45.size.width = v5;
      v45.size.height = v7;
      v22 = CGRectGetMinX(v45);
    }

    else
    {
      if (v16)
      {
        return Mutable;
      }

      v17 = v7 - v14;
      CGPathMoveToPoint(Mutable, 0, v11, v7 - v14);
      v36.origin.x = v13;
      v36.origin.y = v12;
      v36.size.width = v5;
      v36.size.height = v7;
      v18 = CGRectGetMaxY(v36);
      CGPathAddLineToPoint(Mutable, 0, v11, v18);
      v37.origin.x = v13;
      v37.origin.y = v12;
      v37.size.width = v5;
      v37.size.height = v7;
      v19 = CGRectGetMinX(v37);
      v38.origin.x = v13;
      v38.origin.y = v12;
      v38.size.width = v5;
      v38.size.height = v7;
      v20 = CGRectGetMidY(v38);
      CGPathAddLineToPoint(Mutable, 0, v19, v20);
      CGPathAddLineToPoint(Mutable, 0, v11, 0.0);
      CGPathAddLineToPoint(Mutable, 0, v11, v15);
      v39.origin.x = v13;
      v39.origin.y = v12;
      v39.size.width = v5;
      v39.size.height = v7;
      v21 = CGRectGetMaxX(v39);
      CGPathAddLineToPoint(Mutable, 0, v21, v15);
      v40.origin.x = v13;
      v40.origin.y = v12;
      v40.size.width = v5;
      v40.size.height = v7;
      v22 = CGRectGetMaxX(v40);
    }

    v27 = Mutable;
  }

  CGPathAddLineToPoint(v27, 0, v22, v17);
  if (vabdd_f64(v15, v17) > 0.01)
  {
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPath)p_newStarPath
{
  Mutable = CGPathCreateMutable();
  [(TSDPointPathSource *)self point];
  if (v4 >= 3.0)
  {
    [(TSDPointPathSource *)self point];
    v5 = 2 * v6;
  }

  else
  {
    v5 = 6;
  }

  [(TSDPointPathSource *)self naturalSize];
  v8 = v7;
  v10 = v9;
  v11 = v7 * 0.5;
  [(TSDPointPathSource *)self point];
  v13 = v12;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeScale(&m, 1.0, v10 / v8);
  v19 = m;
  CGAffineTransformTranslate(&v20, &v19, v11, v11);
  m = v20;
  if (v5 >= 1)
  {
    v14 = 0;
    v15 = v13 * v11;
    v16 = 0.0;
    while (1)
    {
      v20.a = 0.0;
      v20.b = 0.0;
      v17 = 6.28318531 / v5 * v16 + -1.57079633;
      if (v14)
      {
        break;
      }

      TSDOriginRotate(&v20.a, v11, v17);
      if (v14)
      {
        goto LABEL_10;
      }

      CGPathMoveToPoint(Mutable, &m, v20.a, v20.b);
LABEL_11:
      v16 = v16 + 1.0;
      if (v5 == ++v14)
      {
        goto LABEL_12;
      }
    }

    TSDOriginRotate(&v20.a, v15, v17);
LABEL_10:
    CGPathAddLineToPoint(Mutable, &m, v20.a, v20.b);
    goto LABEL_11;
  }

LABEL_12:
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)p_newPlusPath
{
  Mutable = CGPathCreateMutable();
  [(TSDPointPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  [(TSDPointPathSource *)self point];
  TSUClamp();
  v9 = v8;
  TSUClamp();
  v11 = v10;
  CGPathMoveToPoint(Mutable, 0, v9, 0.0);
  CGPathAddLineToPoint(Mutable, 0, v5 - v9, 0.0);
  CGPathAddLineToPoint(Mutable, 0, v5 - v9, v11);
  CGPathAddLineToPoint(Mutable, 0, v5, v11);
  CGPathAddLineToPoint(Mutable, 0, v5, v7 - v11);
  CGPathAddLineToPoint(Mutable, 0, v5 - v9, v7 - v11);
  CGPathAddLineToPoint(Mutable, 0, v5 - v9, v7);
  CGPathAddLineToPoint(Mutable, 0, v9, v7);
  CGPathAddLineToPoint(Mutable, 0, v9, v7 - v11);
  CGPathAddLineToPoint(Mutable, 0, 0.0, v7 - v11);
  CGPathAddLineToPoint(Mutable, 0, 0.0, v11);
  CGPathAddLineToPoint(Mutable, 0, v9, v11);
  CGPathAddLineToPoint(Mutable, 0, v9, 0.0);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (void)p_setControlKnobPointForArrow:(CGPoint)arrow
{
  [(TSDPointPathSource *)self naturalSize];
  v5 = v4;
  TSUClamp();
  v7 = v6;
  if ([(TSDPointPathSource *)self p_isRightFacingArrow])
  {
    v7 = v5 - v7;
  }

  TSUClamp();
  *&self->mType = v7;
  self->mPoint.x = v8;
}

- (CGPoint)p_getControlKnobPointForArrow
{
  [(TSDPointPathSource *)self naturalSize];
  [(TSDPointPathSource *)self p_isRightFacingArrow];
  TSUClamp();
  v4 = v3;
  TSUClamp();
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)p_setControlKnobPointForStarPoints:(CGPoint)points
{
  y = points.y;
  x = points.x;
  [(TSDPointPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  hasVerticalFlip = [(TSDPathSource *)self hasVerticalFlip];
  v11 = v9 - y;
  if (!hasVerticalFlip)
  {
    v11 = y;
  }

  v12 = x - v7 * 0.5;
  v13 = v7 / v9 * (v11 - v9 * 0.5);
  v14 = TSDPointLength(v12, v13);
  v15 = acos(-v12 / v14);
  if (v13 > 0.0)
  {
    v15 = 6.28318531 - v15;
  }

  v16 = v15 / 6.28318531 + -0.25;
  if (v16 < 0.0)
  {
    v16 = v16 + 1.0;
  }

  v17 = (v16 * 18.0 + 3.5);
  if (v17 > 20)
  {
    v17 = 3;
  }

  v18 = *&self->mType;
  if ((v18 != 3 || v17 == 4) && (v18 != 20 || v17 == 19))
  {
    *&self->mType = v17;
  }
}

- (CGPoint)p_getControlKnobPointForStarPoints
{
  v3 = *&self->mType;
  [(TSDPointPathSource *)self naturalSize];
  v5 = v4;
  v7 = v6;
  v8 = v4 * 0.5;
  v14 = 0.0;
  v15 = 0.0;
  v9 = v4 * 0.5 * 0.7;
  v10 = (((v3 - 3) / 18.0) + -0.25) * 6.28318531;
  if (v3 < 3.0)
  {
    v10 = -1.57079633;
  }

  TSDOriginRotate(&v14, v9, v10);
  v14 = v8 + v14;
  v15 = v7 * 0.5 + v7 / v5 * v15;
  hasVerticalFlip = [(TSDPathSource *)self hasVerticalFlip];
  v12 = v14;
  v13 = v15;
  if (hasVerticalFlip)
  {
    v13 = v7 - v15;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (void)p_setControlKnobPointForStarInnerRadius:(CGPoint)radius
{
  y = radius.y;
  x = radius.x;
  [(TSDPointPathSource *)self naturalSize];
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

  TSDPointLength(x - v7 * 0.5, v7 / v9 * (v10 - v9 * 0.5));
  p_mType = &self->mType;
  v12 = *p_mType;
  TSUClamp();
  *p_mType = v12;
  *(p_mType + 1) = v13;
}

- (CGPoint)p_getControlKnobPointForStarInnerRadius
{
  p_mType = &self->mType;
  v4 = *&self->mType;
  [(TSDPointPathSource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  v9 = v5 * 0.5;
  v10 = *(p_mType + 1) * (v5 * 0.5);
  v15 = 0.0;
  v16 = 0.0;
  v11 = 3.14159265 / v4 + -1.57079633;
  if (v4 < 3.0)
  {
    v11 = -0.523598776;
  }

  TSDOriginRotate(&v15, v10, v11);
  v15 = v9 + v15;
  v16 = v8 * 0.5 + v8 / v6 * v16;
  hasVerticalFlip = [(TSDPathSource *)self hasVerticalFlip];
  v13 = v15;
  v14 = v16;
  if (hasVerticalFlip)
  {
    v14 = v8 - v16;
  }

  result.y = v14;
  result.x = v13;
  return result;
}

- (void)p_setControlKnobPointForPlus:(CGPoint)plus
{
  [(TSDPointPathSource *)self naturalSize];
  TSUClamp();
  v5 = v4;
  TSUClamp();
  *&self->mType = v5;
  self->mPoint.x = v6;
}

- (CGPoint)p_getControlKnobPointForPlus
{
  [(TSDPointPathSource *)self naturalSize];
  v4 = (v3 - *&self->mType) * 0.5;
  v6 = (v5 - self->mPoint.x) * 0.5;
  result.y = v6;
  result.x = v4;
  return result;
}

- (BOOL)p_isRightFacingArrow
{
  if (*(&self->super.mVerticalFlip + 3) == 1)
  {
    return ![(TSDPathSource *)self hasHorizontalFlip:v2];
  }

  else
  {
    return 0;
  }
}

- (CGPoint)point
{
  objc_copyStruct(v4, &self->mType, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGSize)naturalSize
{
  objc_copyStruct(v4, &self->mPoint.y, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end