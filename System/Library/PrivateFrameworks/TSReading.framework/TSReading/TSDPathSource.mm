@interface TSDPathSource
+ (id)pathSourceForShapeType:(int)a3 naturalSize:(CGSize)a4;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)pathFlipTransform;
- (CGSize)naturalSize;
- (double)uniformScaleForScalingToNaturalSize:(CGSize)a3;
- (id)bezierPath;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (void)setNaturalSize:(CGSize)a3;
@end

@implementation TSDPathSource

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 setHasHorizontalFlip:{-[TSDPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
    [v4 setHasVerticalFlip:{-[TSDPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v6 = [(TSDPathSource *)self hasHorizontalFlip];
  if (v6 != [a3 hasHorizontalFlip])
  {
    return 0;
  }

  v8 = [(TSDPathSource *)self hasVerticalFlip];
  return v8 ^ [a3 hasVerticalFlip] ^ 1;
}

- (id)bezierPath
{
  v3 = [(TSDPathSource *)self bezierPathWithoutFlips];
  if (self)
  {
    [(TSDPathSource *)self pathFlipTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [v3 transformUsingAffineTransform:v5];
  return v3;
}

- (CGSize)naturalSize
{
  [objc_msgSend(MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Concrete subclass %@ must implement -naturalSize.", objc_opt_class()), 0), "raise"}];
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setNaturalSize:(CGSize)a3
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Concrete subclass %@ must implement -setNaturalSize:.", objc_opt_class()), 0}];

  [v3 raise];
}

- (double)uniformScaleForScalingToNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TSDPathSource *)self naturalSize];
  v7 = 1.0;
  if (v5 <= 1.0 || v6 <= 1.0)
  {
    return v7;
  }

  v9 = width / v5;
  v10 = height / v6;
  if (v9 >= 1.0 || v10 >= 1.0)
  {
    v12 = v10 <= 1.0 || v9 <= 1.0;
    v13 = fmin(v9, v10);
    if (!v12)
    {
      return v13;
    }

    return v7;
  }

  return fmax(v9, v10);
}

- (CGAffineTransform)pathFlipTransform
{
  v5 = MEMORY[0x277CBF2C0];
  v24 = *(MEMORY[0x277CBF2C0] + 16);
  v25 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v24;
  v23 = *(v5 + 32);
  *&retstr->tx = v23;
  v6 = [(TSDPathSource *)self hasHorizontalFlip];
  result = [(TSDPathSource *)self hasVerticalFlip];
  v8 = result;
  if (v6 || result)
  {
    if (v6)
    {
      v9 = -1.0;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
    [(TSDPathSource *)self naturalSize];
    v13 = v12;
    v15 = v14;
    v28.origin.x = v10;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    MidX = CGRectGetMidX(v28);
    v29.origin.x = v10;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    MidY = CGRectGetMidY(v29);
    *&v27.a = v25;
    *&v27.c = v24;
    *&v27.tx = v23;
    CGAffineTransformTranslate(retstr, &v27, MidX, MidY);
    if (v8)
    {
      v18 = -1.0;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = *&retstr->c;
    *&v26.a = *&retstr->a;
    *&v26.c = v19;
    *&v26.tx = *&retstr->tx;
    CGAffineTransformScale(&v27, &v26, v9, v18);
    v20 = *&v27.c;
    *&retstr->a = *&v27.a;
    *&retstr->c = v20;
    *&retstr->tx = *&v27.tx;
    v21 = *&retstr->c;
    *&v26.a = *&retstr->a;
    *&v26.c = v21;
    *&v26.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v27, &v26, -MidX, -MidY);
    v22 = *&v27.c;
    *&retstr->a = *&v27.a;
    *&retstr->c = v22;
    *&retstr->tx = *&v27.tx;
  }

  return result;
}

+ (id)pathSourceForShapeType:(int)a3 naturalSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a4.height / 100.0;
  switch(a3)
  {
    case 0:
    case 3:
      v10 = [TSDBezierPathSource pathSourceWithBezierPath:[TSDBezierPath bezierPathWithRect:0.0, 0.0, 100.0, 100.0]];
      [(TSDBezierPathSource *)v10 setNaturalSize:width, height];
      goto LABEL_17;
    case 1:
    case 15:
    case 16:
      v8 = [TSDBezierPath bezierPathWithStart:*MEMORY[0x277CBF348] end:*(MEMORY[0x277CBF348] + 8), sqrt(width * width + a4.height * a4.height), 0.0];
      goto LABEL_30;
    case 2:
    case 18:
    case 19:
      v9 = [TSDConnectionLinePathSource pathSourceAtAngleOfSize:a3 == 18 forType:width, a4.height];
      v10 = v9;
      if (a3 == 2)
      {
        [(TSDBezierPathSource *)v9 bend];
      }

      goto LABEL_17;
    case 4:

      return [TSDScalarPathSource roundedRectangleWithScalar:15.0 naturalSize:width, a4.height];
    case 5:
      v16 = [TSDBezierPath bezierPathWithOvalInRect:0.0, 0.0, width, a4.height];
      v11 = v16;
      goto LABEL_29;
    case 6:
      v11 = +[TSDBezierPath bezierPath];
      [(TSDBezierPath *)v11 moveToPoint:width * 0.5, 0.0];
      [(TSDBezierPath *)v11 lineToPoint:width, height];
      v12 = 0.0;
      v13 = v11;
      goto LABEL_23;
    case 7:
      v11 = +[TSDBezierPath bezierPath];
      [(TSDBezierPath *)v11 moveToPoint:0.0, 0.0];
      [(TSDBezierPath *)v11 lineToPoint:0.0, width];
      v13 = v11;
      v12 = width;
LABEL_23:
      v17 = height;
      goto LABEL_28;
    case 8:
      v19 = v7 * 64.0;

      return [TSDPointPathSource rightSingleArrowWithPoint:v19 naturalSize:0.34, width, a4.height];
    case 9:
      v15 = v7 * 44.0;

      return [TSDPointPathSource doubleArrowWithPoint:v15 naturalSize:0.34, width, a4.height];
    case 10:
      v11 = +[TSDBezierPath bezierPath];
      [(TSDBezierPath *)v11 moveToPoint:0.0, height * 0.5];
      [(TSDBezierPath *)v11 lineToPoint:width * 0.5, height];
      [(TSDBezierPath *)v11 lineToPoint:width, height * 0.5];
      v17 = 0.0;
      v13 = v11;
      v12 = width * 0.5;
LABEL_28:
      [(TSDBezierPath *)v13 lineToPoint:v12, v17];
      v16 = v11;
LABEL_29:
      [(TSDBezierPath *)v16 closePath];
      v8 = v11;
LABEL_30:

      result = [TSDBezierPathSource pathSourceWithBezierPath:v8];
      break;
    case 11:

      result = [TSDCalloutPathSource quoteBubbleWithTailPosition:v7 tailSize:v7 * 96.0 naturalSize:v7 * 10.0, width, a4.height * 0.8];
      break;
    case 12:

      result = [TSDCalloutPathSource calloutWithCornerRadius:5.0 tailPosition:v7 * -20.0 tailSize:v7 * 50.0 naturalSize:v7 * 10.0, width, a4.height];
      break;
    case 13:

      result = [TSDScalarPathSource regularPolygonWithScalar:5.0 naturalSize:width, a4.height];
      break;
    case 14:

      result = [TSDPointPathSource starWithPoint:5.0 naturalSize:0.382, width, a4.height];
      break;
    case 17:
      v18 = objc_alloc_init(TSDEditableBezierPathSource);
      [(TSDEditableBezierPathSource *)v18 addNode:[TSDBezierNode bezierNodeWithPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)]];

      result = v18;
      break;
    default:
      v10 = 0;
LABEL_17:
      result = v10;
      break;
  }

  return result;
}

uint64_t __38__TSDPathSource_mixingTypeWithObject___block_invoke()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDPathSource mixingTypeWithObject:]_block_invoke"];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPathSource.m"), 271, @"Called on superclass!"}];
  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDPathSource mixedObjectWithFraction:ofObject:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPathSource.m"), 280, @"Called on superclass!"}];
  return 0;
}

@end