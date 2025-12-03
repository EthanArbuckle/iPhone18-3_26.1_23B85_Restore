@interface TSUBezierPath
+ (id)bezierPath;
+ (id)bezierPathWithCGPath:(CGPath *)path;
+ (id)bezierPathWithOvalInRect:(CGRect)rect;
+ (id)bezierPathWithRect:(CGRect)rect;
+ (id)bezierPathWithRoundedRect:(CGRect)rect upperRightRadius:(double)radius lowerRightRadius:(double)rightRadius lowerLeftRadius:(double)leftRadius upperLeftRadius:(double)upperLeftRadius useLegacyCorners:(BOOL)corners keepNoOpElements:(BOOL)elements;
+ (id)bezierPathWithStart:(CGPoint)start end:(CGPoint)end;
+ (void)clipRect:(CGRect)rect;
+ (void)fillRect:(CGRect)rect;
+ (void)initialize;
+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
+ (void)strokeRect:(CGRect)rect;
+ (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint addLineBlock:(id)block;
- (BOOL)containsClosePathElement;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isCircular;
- (BOOL)isClockwise;
- (BOOL)isDiamond;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRectangular;
- (BOOL)isTriangular;
- (CGPath)CGPath;
- (CGPoint)_checkPointForValidity:(CGPoint)validity;
- (CGPoint)currentPoint;
- (CGRect)bounds;
- (CGRect)controlPointBounds;
- (TSUBezierPath)init;
- (TSUBezierPath)initWithCString:(const char *)string;
- (const)cString;
- (double)calculateLengthOfElement:(int64_t)element;
- (double)length;
- (double)lengthOfElement:(int64_t)element;
- (double)lengthToElement:(int64_t)element;
- (id)_copyFlattenedPath;
- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness;
- (id)bezierPathByReversingPath;
- (id)copyWithPointsInRange:(_NSRange)range countingSubpaths:(unint64_t *)subpaths;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)p_bezierPathByRemovingRedundantElementAndSubregionsSmallerThanThreshold:(double)threshold;
- (int64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points;
- (int64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points;
- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point;
- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2;
- (void)_appendToPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible;
- (void)_deviceClosePath;
- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 elementLength:(double)length;
- (void)_deviceMoveToPoint:(CGPoint)point;
- (void)_doPath;
- (void)addClip;
- (void)appendBezierPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible;
- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(int)type startNewPath:(BOOL)path;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(int)sign startNewPath:(BOOL)path;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect;
- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count;
- (void)appendBezierPathWithRect:(CGRect)rect;
- (void)calculateLengths;
- (void)convertCloseElementsToLineElements;
- (void)copyPathAttributesTo:(id)to;
- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)curveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint;
- (void)dealloc;
- (void)fill;
- (void)flattenIntoPath:(id)path flatness:(double)flatness;
- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase;
- (void)iteratePathElementsWithBlock:(id)block;
- (void)lineToPoint:(CGPoint)point;
- (void)p_appendPointsInRange:(_NSRange)range fromBezierPath:(id)path countingSubpaths:(unint64_t *)subpaths;
- (void)p_subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint;
- (void)relativeLineToPoint:(CGPoint)point;
- (void)relativeMoveToPoint:(CGPoint)point;
- (void)removeAllPoints;
- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index;
- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase;
- (void)stroke;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation TSUBezierPath

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x2821F9670](TSUBezierPath, sel_setVersion_);
  }
}

+ (id)bezierPath
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)bezierPathWithStart:(CGPoint)start end:(CGPoint)end
{
  y = end.y;
  x = end.x;
  v6 = start.y;
  v7 = start.x;
  bezierPath = [self bezierPath];
  [bezierPath moveToPoint:{v7, v6}];
  [bezierPath lineToPoint:{x, y}];
  return bezierPath;
}

+ (id)bezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [bezierPath appendBezierPathWithRect:{x, y, width, height}];
  return bezierPath;
}

+ (id)bezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [bezierPath appendBezierPathWithOvalInRect:{x, y, width, height}];
  return bezierPath;
}

+ (id)bezierPathWithCGPath:(CGPath *)path
{
  bezierPath = [self bezierPath];
  CGPathApply(path, bezierPath, sub_2770682E0);
  if (bezierPath[22])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUBezierPath bezierPathWithCGPath:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 329, 0, "expected nil value for '%{public}s'", "result->sfr_path");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  bezierPath[22] = MEMORY[0x277CA57F0](path);
  return bezierPath;
}

+ (void)fillRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextFillRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      if (qword_280A63B88 == 2)
      {
        v8 = kCGLineCapSquare;
      }

      else
      {
        v8 = qword_280A63B88 == 1;
      }

      CGContextSetLineCap(CurrentContext, v8);
      if (qword_280A63B90 == 2)
      {
        v9 = kCGLineJoinBevel;
      }

      else
      {
        v9 = qword_280A63B90 == 1;
      }

      CGContextSetLineJoin(CurrentContext, v9);
      sub_277067F78(CurrentContext, *&qword_280A5C308);
      CGContextSetMiterLimit(CurrentContext, *&qword_280A5C310);
      CGContextBeginPath(CurrentContext);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MinX = CGRectGetMinX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MinY = CGRectGetMinY(v20);
      CGContextMoveToPoint(CurrentContext, MinX, MinY);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      MaxX = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v13 = CGRectGetMinY(v22);
      CGContextAddLineToPoint(CurrentContext, MaxX, v13);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v14 = CGRectGetMaxX(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      MaxY = CGRectGetMaxY(v24);
      CGContextAddLineToPoint(CurrentContext, v14, MaxY);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v16 = CGRectGetMinX(v25);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = CGRectGetMaxY(v26);
      CGContextAddLineToPoint(CurrentContext, v16, v17);
      CGContextClosePath(CurrentContext);
      CGContextStrokePath(CurrentContext);

      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (void)clipRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextClipToRectSafe(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v6 = point.y;
  v7 = point.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (qword_280A63B88 == 2)
  {
    v9 = kCGLineCapSquare;
  }

  else
  {
    v9 = qword_280A63B88 == 1;
  }

  CGContextSetLineCap(CurrentContext, v9);
  if (qword_280A63B90 == 2)
  {
    v10 = kCGLineJoinBevel;
  }

  else
  {
    v10 = qword_280A63B90 == 1;
  }

  CGContextSetLineJoin(CurrentContext, v10);
  sub_277067F78(CurrentContext, *&qword_280A5C308);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7, v6);
  CGContextAddLineToPoint(CurrentContext, x, y);
  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (TSUBezierPath)init
{
  v8.receiver = self;
  v8.super_class = TSUBezierPath;
  result = [(TSUBezierPath *)&v8 init];
  sfr_bpFlags = result->sfr_bpFlags;
  *&result->sfr_elementCount = 0u;
  *&result->sfr_head = 0u;
  result->sfr_extraSegmentCount = 0;
  result->sfr_extraSegmentMax = 0;
  result->sfr_totalLength = 0.0;
  result->sfr_lastSubpathIndex = -1;
  result->sfr_extraSegments = 0;
  v4 = (((8 * qword_280A63B98) | (qword_280A63B88 << 6)) | *&sfr_bpFlags & 0xFFFFF800 | (16 * (qword_280A63B90 & 0xF)) | 7);
  *&result->sfr_lineWidth = qword_280A5C308;
  v5 = *&qword_280A5C318;
  *&result->sfr_miterLimit = qword_280A5C310;
  result->sfr_flatness = v5;
  result->sfr_dashedLinePattern = 0;
  result->sfr_dashedLineCount = 0;
  result->sfr_dashedLinePhase = 0.0;
  result->sfr_bpFlags = v4;
  v7 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  result->sfr_bounds.size = v6;
  result->sfr_bounds.origin = v7;
  result->sfr_controlPointBounds.size = v6;
  result->sfr_controlPointBounds.origin = v7;
  return result;
}

- (void)dealloc
{
  v3 = [(TSUBezierPath *)self zone];
  NSZoneFree(v3, self->sfr_head);
  NSZoneFree(v3, self->sfr_elementLength);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    NSZoneFree(v3, sfr_dashedLinePattern);
  }

  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
  }

  sfr_extraSegments = self->sfr_extraSegments;
  if (sfr_extraSegments)
  {
    NSZoneFree(v3, sfr_extraSegments);
  }

  v7.receiver = self;
  v7.super_class = TSUBezierPath;
  [(TSUBezierPath *)&v7 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v18[5] = *MEMORY[0x277D85DE8];
  if (self == equal)
  {
LABEL_16:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = TSUCheckedDynamicCast(v6, equal);
    elementCount = [(TSUBezierPath *)self elementCount];
    if (elementCount != [v7 elementCount])
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (elementCount >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = [(TSUBezierPath *)self elementAtIndex:v9 associatedPoints:&v17];
        if (v10 != [v7 elementAtIndex:v9 associatedPoints:&v15])
        {
          goto LABEL_17;
        }

        if (v10 >= 2)
        {
          if (v10 == 2)
          {
            v11 = 3;
            v12 = v18;
            v13 = &v16;
            while (TSUNearlyEqualPoints(*(v12 - 1), *v12, *(v13 - 1), *v13))
            {
              v13 += 2;
              v12 += 2;
              if (!--v11)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_17;
          }
        }

        else if (!TSUNearlyEqualPoints(v17, v18[0], v15, v16))
        {
          goto LABEL_17;
        }

LABEL_14:
        ++v9;
        LOBYTE(v5) = 1;
        if (v9 == elementCount)
        {
          return v5;
        }
      }
    }

    goto LABEL_16;
  }

  return v5;
}

- (void)copyPathAttributesTo:(id)to
{
  [to setWindingRule:{-[TSUBezierPath windingRule](self, "windingRule")}];
  [to setLineCapStyle:{-[TSUBezierPath lineCapStyle](self, "lineCapStyle")}];
  [to setLineJoinStyle:{-[TSUBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(TSUBezierPath *)self lineWidth];
  [to setLineWidth:?];
  [(TSUBezierPath *)self miterLimit];
  [to setMiterLimit:?];
  [(TSUBezierPath *)self flatness];
  [to setFlatness:?];
  if (self->sfr_dashedLinePattern)
  {
    sfr_dashedLinePhase = self->sfr_dashedLinePhase;

    [to setLineDash:sfr_dashedLinePhase count:? phase:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 8) = self->sfr_elementCount;
  *(v5 + 16) = self->sfr_elementMax;
  *(v5 + 40) = self->sfr_totalLength;
  *(v5 + 48) = self->sfr_lastSubpathIndex;
  *(v5 + 64) = self->sfr_lineWidth;
  size = self->sfr_bounds.size;
  *(v5 + 72) = self->sfr_bounds.origin;
  *(v5 + 88) = size;
  v8 = self->sfr_controlPointBounds.size;
  *(v5 + 104) = self->sfr_controlPointBounds.origin;
  *(v5 + 120) = v8;
  *(v5 + 136) = self->sfr_miterLimit;
  *(v5 + 144) = self->sfr_flatness;
  *(v5 + 184) = self->sfr_extraSegmentCount;
  *(v5 + 192) = self->sfr_extraSegmentMax;
  *(v5 + 200) = self->sfr_bpFlags;
  if (self->sfr_head)
  {
    if (*(v5 + 24))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath copyWithZone:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 583, 0, "expected nil value for '%{public}s'", "copiedPath->sfr_head");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v10 = NSZoneMalloc(zone, 24 * self->sfr_elementMax);
    v6[3] = v10;
    memcpy(v10, self->sfr_head, 24 * self->sfr_elementMax);
  }

  if (self->sfr_elementLength)
  {
    if (v6[4])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath copyWithZone:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 589, 0, "expected nil value for '%{public}s'", "copiedPath->sfr_elementLength");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v12 = NSZoneMalloc(zone, 8 * self->sfr_elementMax);
    v6[4] = v12;
    memcpy(v12, self->sfr_elementLength, 8 * self->sfr_elementMax);
  }

  if (self->sfr_extraSegments)
  {
    if (v6[7])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath copyWithZone:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 595, 0, "expected nil value for '%{public}s'", "copiedPath->sfr_extraSegments");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v14 = NSZoneMalloc(zone, 32 * self->sfr_extraSegmentMax);
    v6[7] = v14;
    memcpy(v14, self->sfr_extraSegments, 32 * self->sfr_extraSegmentMax);
  }

  if (v6[22])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath copyWithZone:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 600, 0, "expected nil value for '%{public}s'", "copiedPath->sfr_path");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v6[22] = MEMORY[0x277CA57F0](self->sfr_path);
  [v6 setLineDash:self->sfr_dashedLinePattern count:self->sfr_dashedLineCount phase:self->sfr_dashedLinePhase];
  return v6;
}

- (void)lineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  isEmpty = [(TSUBezierPath *)self isEmpty];
  if (isEmpty)
  {
    sub_2771130C0(isEmpty, v7, v8, v9, v10, v11, v12, v13);
  }

  [(TSUBezierPath *)self _deviceLineToPoint:x, y];
}

- (void)curveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint
{
  y = controlPoint.y;
  x = controlPoint.x;
  v6 = point.y;
  v7 = point.x;
  isEmpty = [(TSUBezierPath *)self isEmpty];
  if (isEmpty)
  {
    sub_277113138(isEmpty, v10, v11, v12, v13, v14, v15, v16);
  }

  [(TSUBezierPath *)self currentPoint];

  [(TSUBezierPath *)self _deviceCurveToPoint:v7 controlPoint1:v6 controlPoint2:v17 * 0.333333333 + x * 0.666666667 elementLength:v18 * 0.333333333 + y * 0.666666667, v7 * 0.333333333 + x * 0.666666667, v6 * 0.333333333 + y * 0.666666667, NAN];
}

- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  isEmpty = [(TSUBezierPath *)self isEmpty];
  if (isEmpty)
  {
    sub_2771131B0(isEmpty, v13, v14, v15, v16, v17, v18, v19);
  }

  [(TSUBezierPath *)self _deviceCurveToPoint:v10 controlPoint1:v9 controlPoint2:v8 elementLength:v7, x, y, NAN];
}

- (void)removeAllPoints
{
  sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF);
  self->sfr_bpFlags = sfr_bpFlags;
  self->sfr_elementCount = 0;
  self->sfr_extraSegmentCount = 0;
  self->sfr_lastSubpathIndex = -1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
    sfr_bpFlags = self->sfr_bpFlags;
  }

  self->sfr_bpFlags = (*&sfr_bpFlags | 3);
}

- (void)relativeMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSUBezierPath *)self currentPoint];
  v7 = TSUAddPoints(x, y, v6);

  [(TSUBezierPath *)self moveToPoint:v7];
}

- (void)relativeLineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSUBezierPath *)self currentPoint];
  v7 = TSUAddPoints(x, y, v6);

  [(TSUBezierPath *)self lineToPoint:v7];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint
{
  y = controlPoint.y;
  x = controlPoint.x;
  v6 = point.y;
  v7 = point.x;
  [(TSUBezierPath *)self currentPoint];
  v10 = v9;
  v11 = TSUAddPoints(v7, v6, v9);
  v13 = v12;
  v15 = TSUAddPoints(x, y, v10);

  [(TSUBezierPath *)self curveToPoint:v11 controlPoint:v13, v15, v14];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  [(TSUBezierPath *)self currentPoint];
  v13 = v12;
  v14 = TSUAddPoints(v10, v9, v12);
  v16 = v15;
  v17 = TSUAddPoints(v8, v7, v13);
  v19 = v18;
  v21 = TSUAddPoints(x, y, v13);

  [(TSUBezierPath *)self curveToPoint:v14 controlPoint1:v16 controlPoint2:v17, v19, v21, v20];
}

- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase
{
  p_sfr_dashedLinePattern = &self->sfr_dashedLinePattern;
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (dash)
  {
    dashCopy = dash;
    v11 = [(TSUBezierPath *)self zone];
    if (sfr_dashedLinePattern)
    {
      v12 = NSZoneRealloc(v11, *p_sfr_dashedLinePattern, 8 * count);
    }

    else
    {
      v12 = NSZoneMalloc(v11, 8 * count);
    }

    self->sfr_dashedLinePattern = v12;
    self->sfr_dashedLineCount = count;
    self->sfr_dashedLinePhase = phase;
    if (count >= 1)
    {
      do
      {
        v13 = *dashCopy++;
        *v12++ = v13;
        --count;
      }

      while (count);
    }
  }

  else if (sfr_dashedLinePattern)
  {
    NSZoneFree([(TSUBezierPath *)self zone], self->sfr_dashedLinePattern);
    *p_sfr_dashedLinePattern = 0;
    p_sfr_dashedLinePattern[1] = 0;
    p_sfr_dashedLinePattern[2] = 0;
  }
}

- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase
{
  if (count)
  {
    *count = self->sfr_dashedLineCount;
  }

  if (phase)
  {
    *phase = self->sfr_dashedLinePhase;
  }

  if (dash)
  {
    sfr_dashedLinePattern = self->sfr_dashedLinePattern;
    if (sfr_dashedLinePattern)
    {
      for (i = self->sfr_dashedLineCount; i; --i)
      {
        v7 = *sfr_dashedLinePattern++;
        *dash++ = v7;
      }
    }
  }
}

- (CGPoint)_checkPointForValidity:(CGPoint)validity
{
  y = validity.y;
  x = validity.x;
  if (![(TSUBezierPath *)self _isValid:?])
  {
    x = 0.0;
  }

  if ([(TSUBezierPath *)self _isValid:y])
  {
    v6 = y;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = x;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)_doPath
{
  if (!self->sfr_path && ![(TSUBezierPath *)self isEmpty])
  {
    Mutable = CGPathCreateMutable();
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v6 = &sfr_head[6 * sfr_elementCount];
      sfr_extraSegments = self->sfr_extraSegments;
      do
      {
        v8 = *sfr_head & 0xFLL;
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            [(TSUBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
            v14 = v13;
            v16 = v15;
            [(TSUBezierPath *)self _checkPointForValidity:*sfr_extraSegments, sfr_extraSegments[1]];
            v18 = v17;
            v20 = v19;
            [(TSUBezierPath *)self _checkPointForValidity:sfr_extraSegments[2], sfr_extraSegments[3]];
            CGPathAddCurveToPointSafe(Mutable, 0, v18, v20, v21, v22, v14, v16);
            sfr_extraSegments += 4;
          }

          else if (v8 == 3)
          {
            CGPathCloseSubpath(Mutable);
          }
        }

        else if (v8)
        {
          if (v8 == 1)
          {
            [(TSUBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
            CGPathAddLineToPointSafe(Mutable, 0, v9, v10);
          }
        }

        else
        {
          [(TSUBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
          CGPathMoveToPointSafe(Mutable, 0, v11, v12);
        }

        sfr_head += 6;
      }

      while (sfr_head < v6);
    }

    self->sfr_path = Mutable;
  }
}

- (void)stroke
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  lineCapStyle = [(TSUBezierPath *)self lineCapStyle];
  if (lineCapStyle == 2)
  {
    v5 = kCGLineCapSquare;
  }

  else
  {
    v5 = lineCapStyle == 1;
  }

  CGContextSetLineCap(CurrentContext, v5);
  lineJoinStyle = [(TSUBezierPath *)self lineJoinStyle];
  if (lineJoinStyle == 2)
  {
    v7 = kCGLineJoinBevel;
  }

  else
  {
    v7 = lineJoinStyle == 1;
  }

  CGContextSetLineJoin(CurrentContext, v7);
  sub_277067F78(CurrentContext, self->sfr_lineWidth);
  CGContextSetMiterLimit(CurrentContext, self->sfr_miterLimit);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    CGContextSetLineDash(CurrentContext, self->sfr_dashedLinePhase, sfr_dashedLinePattern, self->sfr_dashedLineCount);
  }

  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v11 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v13 = *sfr_head & 0xF;
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v13 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v11);
  }

  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (void)fill
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v8 = *sfr_head & 0xF;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  if ([(TSUBezierPath *)self windingRule])
  {
    CGContextEOFillPath(CurrentContext);
  }

  else
  {
    CGContextFillPath(CurrentContext);
  }

  CGContextRestoreGState(CurrentContext);
}

- (void)addClip
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  CGContextBeginPath(CurrentContext);
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v8 = *sfr_head & 0xF;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  if ([(TSUBezierPath *)self windingRule])
  {
    CGContextEOClip(CurrentContext);
  }

  else
  {
    CGContextClip(CurrentContext);
  }

  CGContextBeginPath(CurrentContext);
}

- (void)p_subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770699E4;
  v7[3] = &unk_27A701D70;
  v7[4] = self;
  [TSUBezierPath subdivideBezierWithFlatness:v7 startPoint:flatness controlPoint1:point.x controlPoint2:point.y endPoint:point1.x addLineBlock:point1.y, point2.x, point2.y, *&endPoint.x, *&endPoint.y];
}

+ (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint addLineBlock:(id)block
{
  pointCopy = point;
  point.x = endPoint.x;
  v8.n128_u64[0] = *&endPoint.y;
  y = point1.y;
  _Q2 = vsubq_f64(point1, pointCopy);
  v13 = point2.y;
  pointCopy2 = point;
  v39 = v8;
  v14 = endPoint.y;
  v15 = vsubq_f64(point2, point1);
  v16 = vsubq_f64(v15, _Q2);
  v17 = vsubq_f64(vsubq_f64(point, point2), v15);
  v18 = vzip2q_s64(v16, v17);
  v19 = vzip1q_s64(v16, v17);
  v20 = vmlaq_f64(vmulq_f64(v18, v18), v19, v19);
  if (v20.f64[0] <= v20.f64[1])
  {
    v20.f64[0] = v20.f64[1];
  }

  v21 = flatness * flatness;
  v22 = v20.f64[0] * 9.0 * 0.0625;
  if (v22 > v21)
  {
    v23 = vsubq_f64(v17, v16);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v30 = vmulq_f64(v23, _Q6);
    v31 = vmlaq_f64(v23, _Q5, vaddq_f64(_Q2, v16));
    v32 = vmulq_f64(vaddq_f64(v16, v23), _Q6);
    v33 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v30 = vmulq_f64(v30, _Q2);
      v32 = vsubq_f64(vmulq_f64(v32, _Q3), v30);
      v31 = vsubq_f64(vmulq_f64(v31, _Q4), vmulq_f64(v32, _Q4));
      v33 *= 2;
      v22 = v22 * 0.0625;
    }

    while (v22 > v21 && v33 <= 0x10000);
    if (v33 >= 2)
    {
      for (i = 1; i != v33; ++i)
      {
        v42 = v30;
        v43 = vaddq_f64(pointCopy, v31);
        v40 = vaddq_f64(v30, v32);
        v41 = vaddq_f64(v31, v32);
        (*(block + 2))(block, a2, v43.f64[0], v43.f64[1], i / v33);
        v32 = v40;
        v31 = v41;
        v30 = v42;
        pointCopy = v43;
      }
    }
  }

  v37 = *(block + 2);
  _Q2.n128_u64[0] = 1.0;

  v37(block, pointCopy2, v39, _Q2);
}

- (void)flattenIntoPath:(id)path flatness:(double)flatness
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v8 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          [path p_subdivideBezierWithFlatness:flatness startPoint:*&sfr_head[-4] controlPoint1:*&sfr_head[-2] controlPoint2:*sfr_extraSegments endPoint:{sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]}];
          sfr_extraSegments += 4;
        }

        else if (v10 == 3)
        {
          [path closePath];
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          [path lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [path moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
      }

      sfr_head += 6;
    }

    while (sfr_head < v8);
  }
}

- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness
{
  if ([(TSUBezierPath *)self isFlat])
  {
    v5 = [(TSUBezierPath *)self copy];
  }

  else
  {
    v5 = objc_alloc_init(objc_opt_class());
    [(TSUBezierPath *)self flattenIntoPath:v5 flatness:flatness];
  }

  return v5;
}

- (id)_copyFlattenedPath
{
  v3 = objc_alloc_init(objc_opt_class());
  [(TSUBezierPath *)self flattenIntoPath:v3];
  return v3;
}

- (id)bezierPathByReversingPath
{
  if (self->sfr_elementCount <= 1)
  {
    v3 = [(TSUBezierPath *)self copy];
    goto LABEL_29;
  }

  v3 = objc_alloc_init(objc_opt_class());
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 2)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    v8 = sfr_head + 6;
    while (1)
    {
      v9 = sfr_head;
      sfr_head = v8;
      v10 = *&v9[6] & 0xFLL;
      if (!v10 || &v9[12] >= v6)
      {
        v12 = v10 ? sfr_head : v9;
        [v3 moveToPoint:{*&v12[2], *&v12[4]}];
        v13 = *v12;
        if ((*v12 & 0xFLL) != 0)
        {
          break;
        }
      }

LABEL_28:
      v8 = sfr_head + 6;
      if (&sfr_head[6] >= v6)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = &v12[-2];
    while (1)
    {
      v16 = v13 & 0xF;
      if (v16 == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        [v3 curveToPoint:*(v15 - 1) controlPoint1:*v15 controlPoint2:{sfr_extraSegments[4 * (v13 >> 4) + 2], sfr_extraSegments[4 * (v13 >> 4) + 3], sfr_extraSegments[4 * (v13 >> 4)], sfr_extraSegments[4 * (v13 >> 4) + 1]}];
        if ((v14 & 1) == 0)
        {
          v14 = 0;
          goto LABEL_27;
        }

        if ((*(v15 - 2) & 0xF) == 0)
        {
LABEL_23:
          [v3 closePath];
        }

LABEL_25:
        v14 = 1;
        goto LABEL_27;
      }

      if (v16 == 1)
      {
        if ((v14 & 1) != 0 && (*(v15 - 2) & 0xF) == 0)
        {
          goto LABEL_23;
        }

        [v3 lineToPoint:{*(v15 - 1), *v15}];
      }

LABEL_27:
      v13 = *(v15 - 2);
      v15 -= 3;
      if ((v13 & 0xF) == 0)
      {
        goto LABEL_28;
      }
    }

    [v3 lineToPoint:{*(v15 - 1), *v15}];
    goto LABEL_25;
  }

LABEL_29:

  return v3;
}

- (id)p_bezierPathByRemovingRedundantElementAndSubregionsSmallerThanThreshold:(double)threshold
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = +[TSUBezierPath bezierPath];
  v6 = +[TSUBezierPath bezierPath];
  elementCount = [(TSUBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v8 = elementCount;
    v9 = 0;
    v10 = 0;
    v12 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
    v13 = *MEMORY[0x277CBF348];
    v14 = v11;
    v15 = *MEMORY[0x277CBF348];
    v16 = v11;
    do
    {
      v17 = [(TSUBezierPath *)self elementAtIndex:v9 associatedPoints:&v37, *&v34, *&v35];
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          [v6 curveToPoint:v41 controlPoint1:v42 controlPoint2:{v37, v38, v39, v40}];
          v10 = 0;
          v16 = v14;
          v15 = v13;
          v13 = v41;
          v14 = v42;
          goto LABEL_24;
        }

        if (v17 == 3)
        {
          [v6 closePath];
          if (threshold > 0.0)
          {
            [v6 bounds];
            v22 = v21;
            v24 = v23;
            if (fmaxf(v22, v24) > threshold)
            {
              [v5 appendBezierPath:v6];
            }

            v6 = +[TSUBezierPath bezierPath];
          }

          v10 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        if (!v17)
        {
          [v6 moveToPoint:{v37, v38}];
          v10 = 0;
          v12 = v37;
          v11 = v38;
LABEL_16:
          v16 = v14;
          v15 = v13;
          v14 = v11;
          v13 = v12;
          goto LABEL_24;
        }

        if (v17 == 1)
        {
          v36 = v11;
          thresholdCopy = threshold;
          v19 = v37;
          v20 = v38;
          if (TSUNearlyEqualPoints(v13, v14, v37, v38))
          {
            goto LABEL_7;
          }

          if ((v10 & 1) != 0 && sub_277086B54(v15, v16, v13, v14, v19, v20) && (v25 = TSUSubtractPoints(v13, v14, v15), v34 = v26, v35 = v25, v27 = TSUSubtractPoints(v19, v20, v15), TSUDotPoints(v35, v34, v27, v28) > 0.0))
          {
            [v6 setAssociatedPoints:&v37 atIndex:{objc_msgSend(v6, "elementCount") - 1}];
            v10 = 1;
LABEL_7:
            v14 = v16;
            v13 = v15;
          }

          else
          {
            [v6 lineToPoint:{v19, v20, *&v34, *&v35}];
            v10 = 1;
          }

          threshold = thresholdCopy;
          v16 = v14;
          v15 = v13;
          v11 = v36;
          v13 = v37;
          v14 = v38;
        }
      }

LABEL_24:
      ++v9;
    }

    while (v8 != v9);
  }

  if ([v5 isEmpty])
  {
    return v6;
  }

  if (([v6 isEmpty] & 1) == 0)
  {
    [v6 bounds];
    v30 = v29;
    v32 = v31;
    if (fmaxf(v30, v32) > threshold)
    {
      [v5 appendBezierPath:v6];
    }
  }

  return v5;
}

- (void)convertCloseElementsToLineElements
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    v4 = 0;
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    do
    {
      while ((*sfr_head & 0xFLL) == 3)
      {
        *sfr_head &= 0xFFFFFFFFFFFFFFF1;
        sfr_head += 6;
        v4 = 1;
        if (sfr_head >= v6)
        {
          goto LABEL_9;
        }
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
    if ((v4 & 1) == 0)
    {
      return;
    }

LABEL_9:
    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      CFRelease(sfr_path);
      self->sfr_path = 0;
    }
  }
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  if (TSUCGAffineTransformIsValid(transform))
  {
    v5 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v5;
    *&t1.tx = *&transform->tx;
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v19.a = *MEMORY[0x277CBF2C0];
    *&v19.c = v6;
    *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (!CGAffineTransformEqualToTransform(&t1, &v19))
    {
      sfr_elementCount = self->sfr_elementCount;
      if (sfr_elementCount >= 1)
      {
        sfr_head = self->sfr_head;
        v9 = &sfr_head[6 * sfr_elementCount];
        do
        {
          *&sfr_head[2] = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, *&sfr_head[4]), *&transform->a, *&sfr_head[2]));
          sfr_head += 6;
        }

        while (sfr_head < v9);
      }

      sfr_extraSegments = self->sfr_extraSegments;
      if (sfr_extraSegments)
      {
        sfr_extraSegmentCount = self->sfr_extraSegmentCount;
        if (sfr_extraSegmentCount >= 1)
        {
          v12 = &sfr_extraSegments[4 * sfr_extraSegmentCount];
          do
          {
            *sfr_extraSegments = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[1]), *&transform->a, *sfr_extraSegments));
            *(sfr_extraSegments + 1) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[3]), *&transform->a, sfr_extraSegments[2]));
            sfr_extraSegments += 4;
          }

          while (sfr_extraSegments < v12);
        }
      }

      sfr_path = self->sfr_path;
      if (sfr_path)
      {
        self->sfr_path = CGPathCreateCopyByTransformingPathSafe(self->sfr_path, transform);
        CFRelease(sfr_path);
      }

      v14 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v14;
      *&t1.tx = *&transform->tx;
      IsRectilinear = TSUAffineTransformIsRectilinear(&t1.a);
      sfr_bpFlags = self->sfr_bpFlags;
      if (IsRectilinear)
      {
        if ((*&sfr_bpFlags & 1) == 0)
        {
          sfr_controlPointBounds = self->sfr_controlPointBounds;
          v17 = *&transform->c;
          *&t1.a = *&transform->a;
          *&t1.c = v17;
          *&t1.tx = *&transform->tx;
          self->sfr_controlPointBounds = CGRectApplyAffineTransform(sfr_controlPointBounds, &t1);
        }

        if ((*&sfr_bpFlags & 2) == 0)
        {
          sfr_bounds = self->sfr_bounds;
          v18 = *&transform->c;
          *&t1.a = *&transform->a;
          *&t1.c = v18;
          *&t1.tx = *&transform->tx;
          self->sfr_bounds = CGRectApplyAffineTransform(sfr_bounds, &t1);
        }
      }

      else
      {
        self->sfr_bpFlags = (*&sfr_bpFlags | 3);
      }
    }
  }

  else
  {

    sub_27705E980();
  }
}

- (CGPath)CGPath
{
  [(TSUBezierPath *)self _doPath];
  result = self->sfr_path;
  if (result)
  {
    v4 = CGPathRetain(result);

    return CFAutorelease(v4);
  }

  return result;
}

- (BOOL)isTriangular
{
  elementCount = [(TSUBezierPath *)self elementCount];
  if (elementCount)
  {
    v4 = elementCount;
    v5 = elementCount - 1;
    if ([(TSUBezierPath *)self elementAtIndex:elementCount - 1])
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  isFlat = [(TSUBezierPath *)self isFlat];
  result = 0;
  if (isFlat && (v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = 1;
    while ([(TSUBezierPath *)self elementAtIndex:v9]== 1)
    {
      if (v6 == ++v9)
      {
        v10 = v6 - 1;
        goto LABEL_13;
      }
    }

    v10 = v9 - 1;
LABEL_13:
    if ([(TSUBezierPath *)self elementAtIndex:v6 - 1]== 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v6 != v11 + 1 || v10 > 3;
    result = 0;
    if (!v12)
    {
      if (v10 != 3)
      {
        return 1;
      }

      v16 = 0.0;
      v17 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      [(TSUBezierPath *)self elementAtIndex:0 associatedPoints:&v16];
      [(TSUBezierPath *)self elementAtIndex:3 associatedPoints:&v14];
      if (v16 == v14 && v17 == v15)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isDiamond
{
  elementCount = [(TSUBezierPath *)self elementCount];
  if (!elementCount)
  {
    [(TSUBezierPath *)self isFlat];
    return 0;
  }

  v4 = elementCount;
  v5 = elementCount - 1;
  if (![(TSUBezierPath *)self elementAtIndex:elementCount - 1])
  {
    v4 = v5;
  }

  isFlat = [(TSUBezierPath *)self isFlat];
  result = 0;
  if (isFlat && v4 == 5)
  {
    v8 = -5;
    v9 = 4;
    while ([(TSUBezierPath *)self elementAtIndex:v8 + 6]== 1)
    {
      if (++v8 == -1)
      {
        goto LABEL_13;
      }
    }

    if (v8 < 0xFFFFFFFFFFFFFFFELL)
    {
      return 0;
    }

    v9 = v8 + 5;
LABEL_13:
    v10 = [(TSUBezierPath *)self elementAtIndex:4];
    if (v9 != 3 || v10 == 3)
    {
      [(TSUBezierPath *)self bounds];
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
      MidX = CGRectGetMidX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v16 = 0;
      MidY = CGRectGetMidY(v22);
      v18 = v9 + 1;
      v19 = *MEMORY[0x277CBF348];
      while (1)
      {
        v20 = v19;
        [(TSUBezierPath *)self elementAtIndex:v16 associatedPoints:&v20, v19];
        if (vabdd_f64(MidX, *&v20) > 0.01 && vabdd_f64(MidY, *(&v20 + 1)) > 0.01)
        {
          break;
        }

        if (v18 == ++v16)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

- (BOOL)isRectangular
{
  v30[11] = *MEMORY[0x277D85DE8];
  LODWORD(elementCount) = [(TSUBezierPath *)self isFlat];
  if (elementCount)
  {
    elementCount = [(TSUBezierPath *)self elementCount];
    if (elementCount)
    {
      v4 = elementCount;
      v5 = elementCount - 1;
      if ([(TSUBezierPath *)self elementAtIndex:elementCount - 1])
      {
        v6 = v4;
      }

      else
      {
        v6 = v5;
      }

      if (v6 < 5)
      {
        goto LABEL_7;
      }

      if (v6 <= 6)
      {
        v9 = 1;
        while ([(TSUBezierPath *)self elementAtIndex:v9]== 1)
        {
          if (v6 == ++v9)
          {
            v10 = v6 - 1;
            goto LABEL_19;
          }
        }

        v10 = v9 - 1;
LABEL_19:
        v11 = [(TSUBezierPath *)self elementAtIndex:v6 - 1];
        LOBYTE(elementCount) = 0;
        if (v11 == 3)
        {
          v12 = v10 + 2;
        }

        else
        {
          v12 = v10 + 1;
        }

        if (v11 == 3)
        {
          v13 = v10 + 1;
        }

        else
        {
          v13 = v10;
        }

        if (v6 == v12 && v13 >= 4)
        {
          [(TSUBezierPath *)self bounds];
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
          MaxX = CGRectGetMaxX(v32);
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          MaxY = CGRectGetMaxY(v33);
          v20 = 0;
          v21 = v29;
          while (1)
          {
            [(TSUBezierPath *)self elementAtIndex:v20 associatedPoints:v21];
            if (vabdd_f64(x, *v21) >= 0.01 && vabdd_f64(MaxX, *v21) >= 0.01)
            {
              goto LABEL_7;
            }

            v22 = v21[1];
            if (vabdd_f64(y, v22) >= 0.01 && vabdd_f64(MaxY, v22) >= 0.01)
            {
              goto LABEL_7;
            }

            ++v20;
            v21 += 2;
            if (v20 > v10)
            {
              v23 = 0;
              v24 = v30;
              v25 = 1;
              while (1)
              {
                v26 = &v29[16 * (v25 % (v10 + 1))];
                v27 = vabdd_f64(*v26, *(v24 - 1));
                if (v27 > 0.01 != vabdd_f64(v26[1], *v24) <= 0.01 || v25 != 1 && ((v23 ^ (v27 > 0.01)) & 1) == 0)
                {
                  break;
                }

                ++v25;
                v24 += 2;
                v23 = v27 > 0.01;
                if (v25 == 5)
                {
                  LOBYTE(elementCount) = 1;
                  return elementCount;
                }
              }

              goto LABEL_7;
            }
          }
        }
      }

      else
      {
        bezierPathByRemovingRedundantElements = [(TSUBezierPath *)self bezierPathByRemovingRedundantElements];
        elementCount2 = [bezierPathByRemovingRedundantElements elementCount];
        if (elementCount2 >= [(TSUBezierPath *)self elementCount])
        {
LABEL_7:
          LOBYTE(elementCount) = 0;
          return elementCount;
        }

        LOBYTE(elementCount) = MEMORY[0x2821F9670](bezierPathByRemovingRedundantElements, sel_isRectangular);
      }
    }
  }

  return elementCount;
}

- (BOOL)isCircular
{
  v26[3] = *MEMORY[0x277D85DE8];
  [(TSUBezierPath *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  elementCount = [(TSUBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v12 = elementCount;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v4 + v8 * 0.5;
    v17 = v6 + v10 * 0.5;
    while (1)
    {
      v18 = [(TSUBezierPath *)self elementAtIndex:v13 associatedPoints:v25, *&v24];
      if (v18 == 2)
      {
        if (fabs(TSUPointLength((v26[0] - v16) / v8, (v26[1] - v17) / v10) + -0.5) > 0.0001)
        {
          return v14;
        }

        v20 = TSUPointOnCurve(&v24, 0.5);
        v22 = TSUPointLength((v20 - v16) / v8, (v21 - v17) / v10);
        v19 = v26;
        if (fabs(v22 + -0.5) > 0.0001)
        {
          return v14;
        }
      }

      else
      {
        if (v18 == 3)
        {
          if (v15 > 0)
          {
            return v14;
          }

          v15 = 1;
          goto LABEL_12;
        }

        v19 = v25;
        if (v18 == 1)
        {
          return v14;
        }
      }

      v24 = *v19;
LABEL_12:
      v14 = v12 <= ++v13;
      if (v12 == v13)
      {
        return v14;
      }
    }
  }

  return 1;
}

- (CGPoint)currentPoint
{
  isEmpty = [(TSUBezierPath *)self isEmpty];
  if (isEmpty)
  {
    sub_277113228(isEmpty, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = &self->sfr_head[6 * self->sfr_elementCount];
  v12 = *&v11[-4];
  v13 = *&v11[-2];
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)controlPointBounds
{
  isEmpty = [(TSUBezierPath *)self isEmpty];
  if (isEmpty)
  {
    sub_2771132A0(isEmpty, v4, v5, v6, v7, v8, v9, v10);
  }

  sfr_bpFlags = self->sfr_bpFlags;
  if (*&sfr_bpFlags)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    v17 = *&sfr_head[2];
    if (sfr_elementCount < 2)
    {
      v12 = *&sfr_head[2];
    }

    else
    {
      v18 = &sfr_head[6 * sfr_elementCount];
      v19 = sfr_head + 6;
      v12 = v17;
      do
      {
        v20 = *v19 & 0xFLL;
        if (v20 != 3 && (v20 || &v19[6] < v18))
        {
          v22 = *&v19[2];
          v12 = vbslq_s8(vcgtq_f64(v22, v12), v12, v22);
          v17 = vbslq_s8(vcgtq_f64(v22, v17), v22, v17);
        }

        v19 += 6;
      }

      while (v19 < v18);
    }

    sfr_extraSegments = self->sfr_extraSegments;
    if (sfr_extraSegments)
    {
      sfr_extraSegmentCount = self->sfr_extraSegmentCount;
      if (sfr_extraSegmentCount >= 1)
      {
        v25 = &sfr_extraSegments[2 * sfr_extraSegmentCount];
        do
        {
          v26 = *sfr_extraSegments;
          v27 = sfr_extraSegments[1];
          sfr_extraSegments += 2;
          v28 = vbslq_s8(vcgtq_f64(v26, v12), v12, v26);
          v29 = vbslq_s8(vcgtq_f64(v26, v17), v26, v17);
          v12 = vbslq_s8(vcgtq_f64(v27, v28), v28, v27);
          v17 = vbslq_s8(vcgtq_f64(v27, v29), v27, v29);
        }

        while (sfr_extraSegments < v25);
      }
    }

    self->sfr_controlPointBounds.origin = v12;
    size = vsubq_f64(v17, v12);
    self->sfr_controlPointBounds.size = size;
    self->sfr_bpFlags = (*&sfr_bpFlags & 0xFFFFFFFE);
    y = v12.y;
  }

  else
  {
    v12.x = self->sfr_controlPointBounds.origin.x;
    y = self->sfr_controlPointBounds.origin.y;
    size = self->sfr_controlPointBounds.size;
  }

  v30 = size.f64[1];
  result.size.width = size.f64[0];
  result.origin.x = v12.x;
  result.size.height = v30;
  result.origin.y = y;
  return result;
}

- (CGRect)bounds
{
  if ([(TSUBezierPath *)self isFlat])
  {
    [(TSUBezierPath *)self controlPointBounds];
  }

  else
  {
    if ((*&self->sfr_bpFlags & 2) != 0)
    {
      [(TSUBezierPath *)self _doPath];
      sfr_path = self->sfr_path;
      if (sfr_path)
      {
        self->sfr_bounds = CGPathGetPathBoundingBox(sfr_path);
      }

      else
      {
        v8 = *(MEMORY[0x277CBF3A0] + 16);
        self->sfr_bounds.origin = *MEMORY[0x277CBF3A0];
        self->sfr_bounds.size = v8;
      }

      *&self->sfr_bpFlags &= ~2u;
    }

    x = self->sfr_bounds.origin.x;
    y = self->sfr_bounds.origin.y;
    width = self->sfr_bounds.size.width;
    height = self->sfr_bounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isClockwise
{
  v18 = *MEMORY[0x277D85DE8];
  elementCount = [(TSUBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v4 = elementCount;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v9 = 0.0;
    v10 = v8;
    v11 = *MEMORY[0x277CBF348];
    do
    {
      v12 = [(TSUBezierPath *)self elementAtIndex:v5 associatedPoints:&v16];
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath isClockwise]"];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v14, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 1660, 0, "Path should be flat. Illegal TSUCurveToBezierPathElement.");
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        else if (v12 == 3)
        {
          if (v7 == v11 && v8 == v10)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            v9 = v7 * v10 - v8 * v11 + v9;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 1)
        {
          if (v7 != v16 || v8 != v17)
          {
            v9 = v7 * v17 - v8 * v16 + v9;
          }

          v6 = 1;
          v7 = v16;
          v8 = v17;
        }
      }

      else
      {
        v11 = v16;
        v10 = v17;
        v7 = v16;
        v8 = v17;
      }

      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      v9 = v7 * v10 - v8 * v11 + v9;
    }
  }

  return v9 >= 0.0;
}

- (BOOL)containsClosePathElement
{
  sfr_elementCount = self->sfr_elementCount;
  v3 = sfr_elementCount + 1;
  v4 = 24 * sfr_elementCount - 24;
  do
  {
    if (--v3 < 1)
    {
      break;
    }

    v5 = *(self->sfr_head + v4);
    v4 -= 24;
  }

  while ((v5 & 0xF) != 3);
  return v3 > 0;
}

- (double)calculateLengthOfElement:(int64_t)element
{
  v11 = *MEMORY[0x277D85DE8];
  sfr_elementCount = self->sfr_elementCount;
  if (element < 0 || sfr_elementCount <= element)
  {
    sub_277113318(element, sfr_elementCount, &self->sfr_elementCount);
  }

  if (!element)
  {
    return 0.0;
  }

  v7 = TSUPointNull;
  v8 = TSUPointNull;
  v9 = TSUPointNull;
  v10 = TSUPointNull;
  v4 = [(TSUBezierPath *)self elementAtIndex:element allPoints:&v7];
  if (v4 == 3)
  {
    return TSUDistance(*&v7, *(&v7 + 1), *&v8, *(&v8 + 1));
  }

  if (v4 == 2)
  {
    v6 = 0.0;
    sub_27706D1E4(&v7, &v6);
    return v6;
  }

  else
  {
    result = 0.0;
    if (v4 == 1)
    {
      return TSUDistance(*&v7, *(&v7 + 1), *&v8, *(&v8 + 1));
    }
  }

  return result;
}

- (void)calculateLengths
{
  self->sfr_totalLength = 0.0;
  elementCount = [(TSUBezierPath *)self elementCount];
  self->sfr_elementLength = NSZoneRealloc([(TSUBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
  if (elementCount >= 1)
  {
    for (i = 0; i != elementCount; ++i)
    {
      [(TSUBezierPath *)self calculateLengthOfElement:i];
      self->sfr_elementLength[i] = v5;
      self->sfr_totalLength = v5 + self->sfr_totalLength;
    }
  }

  *&self->sfr_bpFlags |= 0x400u;
}

- (double)length
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(TSUBezierPath *)self calculateLengths];
  }

  return self->sfr_totalLength;
}

- (double)lengthOfElement:(int64_t)element
{
  p_sfr_elementCount = &self->sfr_elementCount;
  sfr_elementCount = self->sfr_elementCount;
  if (element < 0 || sfr_elementCount <= element)
  {
    sub_2771133A4(element, sfr_elementCount, p_sfr_elementCount);
  }

  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(TSUBezierPath *)self calculateLengths];
  }

  return self->sfr_elementLength[element];
}

- (double)lengthToElement:(int64_t)element
{
  elementCopy = element;
  if (element < 0)
  {
    sub_277113430(element, a2, element, v3, v4, v5, v6, v7);
  }

  if (self->sfr_elementCount <= element)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath lengthToElement:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 1826, 0, "Given index (%zd) must not be greater than or equal to max element (%zd)", elementCopy, self->sfr_elementCount);
    +[TSUAssertionHandler logFullBacktrace];

    [(TSUBezierPath *)self length];
  }

  else
  {
    if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
    {
      [(TSUBezierPath *)self calculateLengths];
    }

    if (elementCopy)
    {
      sfr_elementLength = self->sfr_elementLength;
      result = 0.0;
      do
      {
        v12 = *sfr_elementLength++;
        result = result + v12;
        --elementCopy;
      }

      while (elementCopy);
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (int64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points
{
  sfr_elementCount = self->sfr_elementCount;
  if (index < 0 || sfr_elementCount <= index)
  {
    sub_2771134CC(index, sfr_elementCount, &self->sfr_elementCount, points);
  }

  v9 = &self->sfr_head[6 * index];
  if (points)
  {
    if ((*v9 & 0xFLL) == 2)
    {
      v10 = *v9 >> 4;
      sfr_extraSegmentCount = self->sfr_extraSegmentCount;
      if (v10 >= sfr_extraSegmentCount)
      {
        sub_277113558(index);
      }

      sfr_extraSegments = self->sfr_extraSegments;
      if (!sfr_extraSegments)
      {
        sub_2771135E4(self, sfr_extraSegmentCount, index, points, v4, v5, v6, v7);
      }

      v13 = &sfr_extraSegments[32 * v10];
      *points = *v13;
      points[1] = v13[1];
      points += 2;
    }

    *points = *&v9[2];
  }

  return *v9 & 0xFLL;
}

- (int64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points
{
  sfr_elementCount = self->sfr_elementCount;
  if (index < 0 || sfr_elementCount <= index)
  {
    sub_27711365C(index, sfr_elementCount, &self->sfr_elementCount, points);
  }

  v5 = &self->sfr_head[6 * index];
  if (points)
  {
    v6 = *v5;
    if ((*v5 & 0xFLL) != 0)
    {
      *points = *&v5[-4];
      v6 = *v5;
    }

    if ((v6 & 0xF) != 0)
    {
      if ((v6 & 0xF) == 2)
      {
        v7 = (self->sfr_extraSegments + 32 * (v6 >> 4));
        points[1] = *v7;
        points[2] = v7[1];
        points += 3;
      }

      else
      {
        ++points;
      }
    }

    *points = *&v5[2];
  }

  return *v5 & 0xFLL;
}

- (void)iteratePathElementsWithBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  elementCount = [(TSUBezierPath *)self elementCount];
  if (elementCount)
  {
    v6 = elementCount;
    v7 = 0;
    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      v10 = [(TSUBezierPath *)self elementAtIndex:v7 associatedPoints:&v20];
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v17 = *(block + 2);
          v11.n128_u64[0] = v24;
          v12.n128_u64[0] = v25;
          v13.n128_u64[0] = v20;
          v14.n128_u64[0] = v21;
          v15.n128_u64[0] = v22;
          v16.n128_u64[0] = v23;
          blockCopy4 = block;
          v19 = 2;
          goto LABEL_13;
        }

        if (v10 == 3)
        {
          v17 = *(block + 2);
          blockCopy4 = block;
          v19 = 3;
          v11.n128_u64[0] = v8;
          v12.n128_u64[0] = v9;
          goto LABEL_11;
        }
      }

      else
      {
        if (!v10)
        {
          v17 = *(block + 2);
          v11.n128_u64[0] = v20;
          v12.n128_u64[0] = v21;
          blockCopy4 = block;
          v19 = 0;
LABEL_11:
          v13.n128_u64[0] = v8;
          v14.n128_u64[0] = v9;
          v15.n128_u64[0] = v8;
          v16.n128_u64[0] = v9;
LABEL_13:
          v17(blockCopy4, v19, v11, v12, v13, v14, v15, v16);
          goto LABEL_14;
        }

        if (v10 == 1)
        {
          v17 = *(block + 2);
          v11.n128_u64[0] = v20;
          v12.n128_u64[0] = v21;
          blockCopy4 = block;
          v19 = 1;
          goto LABEL_11;
        }
      }

LABEL_14:
      ++v7;
    }

    while (v6 != v7);
  }
}

- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index
{
  sfr_elementCount = self->sfr_elementCount;
  if (index < 0 || sfr_elementCount <= index)
  {
    sub_2771136E8(index, sfr_elementCount, &self->sfr_elementCount);
  }

  v6 = &self->sfr_head[6 * index];
  if ((*v6 & 0xFLL) == 2)
  {
    v7 = (self->sfr_extraSegments + 32 * (*v6 >> 4));
    *v7 = *points;
    v8 = points[1];
    points += 2;
    v7[1] = v8;
  }

  *&v6[2] = *points;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 3u;
}

- (void)_appendToPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible
{
  sfr_head = self->sfr_head;
  sfr_elementCount = self->sfr_elementCount;
  sfr_extraSegments = self->sfr_extraSegments;
  v8 = possible && [path elementCount] > 0;
  if (sfr_elementCount >= 1)
  {
    v9 = &sfr_head[6 * sfr_elementCount];
    do
    {
      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          [path curveToPoint:*&sfr_head[2] controlPoint1:*&sfr_head[4] controlPoint2:{*sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3]}];
          sfr_extraSegments += 4;
        }

        else if (v10 == 3)
        {
          [path closePath];
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          [path lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        if (!v8)
        {
          [path moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }

        v8 = 0;
      }

      sfr_head += 6;
    }

    while (sfr_head < v9);
  }
}

- (void)appendBezierPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v19 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {

    MEMORY[0x2821F9670](path, sel__appendToPath_skippingInitialMoveIfPossible_);
  }

  else
  {
    v8 = possibleCopy && [(TSUBezierPath *)self elementCount]> 0;
    elementCount = [path elementCount];
    if (elementCount >= 1)
    {
      v10 = elementCount;
      for (i = 0; i != v10; ++i)
      {
        v12 = [path elementAtIndex:i associatedPoints:&v13];
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            [(TSUBezierPath *)self curveToPoint:v17 controlPoint1:v18 controlPoint2:v13, v14, v15, v16];
          }

          else if (v12 == 3)
          {
            [(TSUBezierPath *)self closePath];
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            [(TSUBezierPath *)self lineToPoint:v13, v14];
          }
        }

        else
        {
          if (!v8)
          {
            [(TSUBezierPath *)self moveToPoint:v13, v14];
          }

          v8 = 0;
        }
      }
    }
  }
}

- (void)p_appendPointsInRange:(_NSRange)range fromBezierPath:(id)path countingSubpaths:(unint64_t *)subpaths
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  v10 = range.location + range.length;
  if (range.location + range.length > [path elementCount])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath p_appendPointsInRange:fromBezierPath:countingSubpaths:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 2042, 0, "Point append range is out of range of available points.");
    +[TSUAssertionHandler logFullBacktrace];
  }

  if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
  {
    v12 = (*(path + 201) >> 2) & 1;
  }

  else
  {
    v12 = 0;
  }

  if (location < v10)
  {
    v25 = TSUPointNull;
    v13 = location;
    do
    {
      v26 = v25;
      v27 = v25;
      v28 = v25;
      v14 = [path elementAtIndex:v13 associatedPoints:{&v26, v25}];
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          isEmpty = [(TSUBezierPath *)self isEmpty];
          if (isEmpty)
          {
            sub_277113774(isEmpty, v16, v17, v18, v19, v20, v21, v22);
          }

          if (v13 > location)
          {
            v23 = v12;
          }

          else
          {
            v23 = 0;
          }

          if (v23 == 1)
          {
            v24 = *(*(path + 4) + 8 * v13);
          }

          else
          {
            v24 = NAN;
          }

          [(TSUBezierPath *)self _deviceCurveToPoint:v28 controlPoint1:v26 controlPoint2:v27 elementLength:v24];
        }

        else if (v14 == 3)
        {
          [(TSUBezierPath *)self closePath];
        }
      }

      else if (v14)
      {
        if (v14 == 1)
        {
          [(TSUBezierPath *)self lineToPoint:v26];
        }
      }

      else
      {
        ++*subpaths;
        [(TSUBezierPath *)self moveToPoint:v26];
      }

      ++v13;
      --length;
    }

    while (length);
  }
}

- (id)copyWithPointsInRange:(_NSRange)range countingSubpaths:(unint64_t *)subpaths
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(TSUBezierPath);
  v9 = v8;
  if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
  {
    [(TSUBezierPath *)v8 calculateLengths];
  }

  if (length)
  {
    v12[0] = TSUPointNull;
    v12[1] = TSUPointNull;
    v12[2] = TSUPointNull;
    v12[3] = TSUPointNull;
    v10 = [(TSUBezierPath *)self elementAtIndex:location allPoints:v12];
    if (v10)
    {
      ++*subpaths;
      if (v10 <= 3)
      {
        [(TSUBezierPath *)v9 moveToPoint:v12[0]];
      }
    }

    [(TSUBezierPath *)v9 p_appendPointsInRange:location fromBezierPath:length countingSubpaths:self, subpaths];
  }

  return v9;
}

- (void)appendBezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSUBezierPath *)self moveToPoint:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MaxX = CGRectGetMaxX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(TSUBezierPath *)self lineToPoint:MaxX, CGRectGetMinY(v13)];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMaxX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [(TSUBezierPath *)self lineToPoint:v9, CGRectGetMaxY(v15)];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(TSUBezierPath *)self lineToPoint:MinX, CGRectGetMaxY(v17)];

  [(TSUBezierPath *)self closePath];
}

- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count
{
  if (count >= 1)
  {
    if ([(TSUBezierPath *)self isEmpty]|| (*&self->sfr_bpFlags & 0x300) == 0x100)
    {
      [(TSUBezierPath *)self moveToPoint:points->x, points->y];
    }

    else
    {
      [(TSUBezierPath *)self lineToPoint:points->x, points->y];
    }

    v7 = count - 1;
    if (v7)
    {
      p_y = &points[1].y;
      do
      {
        [(TSUBezierPath *)self lineToPoint:*(p_y - 1), *p_y];
        p_y += 2;
        --v7;
      }

      while (v7);
    }
  }
}

- (void)appendBezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v13;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  v8 = objc_alloc_init(TSUBezierPath);
  [(TSUBezierPath *)v8 appendBezierPathWithArcWithCenter:*MEMORY[0x277CBF348] radius:*(MEMORY[0x277CBF348] + 8) startAngle:1.0 endAngle:-45.0, 315.0];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  *&v15.a = *&v16.a;
  *&v15.c = v13;
  *&v15.tx = *&v16.tx;
  CGAffineTransformTranslate(&v16, &v15, MidX, MidY);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetWidth(v19) * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetHeight(v20);
  v14 = v16;
  CGAffineTransformScale(&v15, &v14, v11, v12 * 0.5);
  v16 = v15;
  [(TSUBezierPath *)v8 transformUsingAffineTransform:&v15];
  [(TSUBezierPath *)self appendBezierPath:v8];
}

- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2
{
  y = center.y;
  x = center.x;
  v12 = __sincos_stret((angle2 - angle1) * 0.5);
  v13 = (1.0 - v12.__cosval) * 4.0 / (v12.__sinval * 3.0);
  v14 = __sincos_stret(angle1);
  v15 = v13 * radius;
  v16 = x + radius * v14.__cosval - v13 * radius * v14.__sinval;
  v17 = y + radius * v14.__sinval + v13 * radius * v14.__cosval;
  v18 = __sincos_stret(angle2);

  [(TSUBezierPath *)self _deviceCurveToPoint:x + radius * v18.__cosval controlPoint1:y + radius * v18.__sinval controlPoint2:v16 elementLength:v17, x + radius * v18.__cosval + v15 * v18.__sinval, y + radius * v18.__sinval - v15 * v18.__cosval, NAN];
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  y = center.y;
  x = center.x;
  v14 = __fpclassifyd(angle);
  if (v14 <= 2)
  {
    sub_2771137EC(angle, v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = __fpclassifyd(endAngle);
  if (v22 <= 2)
  {
    sub_277113874(endAngle, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v30 = angle * 3.14159265 / 180.0;
  v31 = endAngle * 3.14159265;
  v32 = __sincos_stret(v30);
  v33 = x + radius * v32.__cosval;
  v34 = y + radius * v32.__sinval;
  if ([(TSUBezierPath *)self isEmpty])
  {
    [(TSUBezierPath *)self _deviceMoveToPoint:v33, v34];
  }

  else
  {
    [(TSUBezierPath *)self _deviceLineToPoint:v33, v34];
  }

  v35 = v31 / 180.0;
  if (clockwise)
  {
      ;
    }

    v36 = v30 - v35;
    if (v30 - v35 > 1.57079633)
    {
      do
      {
        v37 = v30 + -1.57079633;
        [(TSUBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v30, v30 + -1.57079633];
        v36 = v37 - v35;
        v30 = v30 + -1.57079633;
      }

      while (v37 - v35 > 1.57079633);
      goto LABEL_18;
    }

LABEL_17:
    v37 = v30;
    goto LABEL_18;
  }

    ;
  }

  v36 = v35 - v30;
  if (v35 - v30 <= 1.57079633)
  {
    goto LABEL_17;
  }

  do
  {
    v37 = v30 + 1.57079633;
    [(TSUBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v30, v30 + 1.57079633];
    v36 = v35 - v37;
    v30 = v30 + 1.57079633;
  }

  while (v35 - v37 > 1.57079633);
LABEL_18:
  if (v36 > 0.0)
  {

    [(TSUBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v37, v35];
  }
}

- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius
{
  y = toPoint.y;
  x = toPoint.x;
  v8 = point.y;
  v9 = point.x;
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 8);
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  v31 = *(MEMORY[0x277CBF2C0] + 32);
  v32 = *(MEMORY[0x277CBF2C0] + 24);
  v30 = *(MEMORY[0x277CBF2C0] + 40);
  [(TSUBezierPath *)self currentPoint];
  v16 = v14 == v9 && v15 == v8;
  v33 = v15;
  v34 = v14;
  if (v16)
  {
    v35 = v9 - v14;
    v28 = v8 - v15;
    v17 = 0.0;
    radius = 0.0;
  }

  else
  {
    v28 = v8 - v15;
    v35 = v9 - v14;
    v17 = atan2(v8 - v15, v9 - v14);
  }

  v27 = v11;
  v37.a = v11;
  v37.b = v12;
  v37.c = v13;
  v37.d = v32;
  v37.tx = v31;
  v37.ty = v30;
  CGAffineTransformRotate(&v38, &v37, -v17);
  v36 = vaddq_f64(*&v38.tx, vmlaq_n_f64(vmulq_n_f64(*&v38.c, v28), *&v38.a, v35));
  v29 = vaddq_f64(*&v38.tx, vmlaq_n_f64(vmulq_n_f64(*&v38.c, y - v33), *&v38.a, x - v34));
  v18 = vmovn_s64(vceqq_f64(v36, v29));
  v19 = 0.0;
  v20 = 0.0;
  if ((v18.i32[0] & v18.i32[1] & 1) == 0)
  {
    v21 = vsubq_f64(v29, v36);
    v20 = 3.14159265 - fabs(atan2(v21.f64[1], v21.f64[0]));
  }

  v22 = sin(v20 * 0.5);
  if (v22 == 0.0)
  {
    v23 = 0.0;
    radiusCopy = v36.f64[1];
    v25 = v36.f64[0];
    radius = 0.0;
  }

  else
  {
    v25 = v36.f64[0] - radius * fabs(cos(v20 * 0.5) / v22);
    if (vmovn_s64(vcgtq_f64(v29, v36)).i32[1])
    {
      v19 = 1.57079633 - v20;
      v23 = -1.57079633;
      radiusCopy = radius;
    }

    else
    {
      radiusCopy = -radius;
      v19 = v20 + -1.57079633;
      v23 = 1.57079633;
    }
  }

  v37.a = v27;
  v37.b = v12;
  v37.c = v13;
  v37.d = v32;
  v37.tx = v31;
  v37.ty = v30;
  CGAffineTransformRotate(&v38, &v37, v17);
  v24.f64[0] = v34;
  v24.f64[1] = v33;
  [(TSUBezierPath *)self appendBezierPathWithArcWithCenter:vmovn_s64(vmvnq_s8(vcgtq_f64(v29 radius:v36))).i8[4] & 1 startAngle:vaddq_f64(v24 endAngle:vaddq_f64(*&v38.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v38.c, radiusCopy), *&v38.a, v25))), radius, (v17 + v23) * 180.0 / 3.14159265, (v17 + v19) * 180.0 / 3.14159265];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((byte_280A63BA0 & 1) == 0)
  {
    byte_280A63BA0 = 1;
  }

  [(TSUBezierPath *)self _doPath];
  sfr_path = self->sfr_path;
  if (!sfr_path)
  {
    return 0;
  }

  v7 = [(TSUBezierPath *)self windingRule]== 1;

  return CGPathContainsPointSafe(sfr_path, 0, v7, x, y);
}

- (const)cString
{
  *&v16[255] = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount < 1)
  {
    goto LABEL_22;
  }

  sfr_head = self->sfr_head;
  v6 = &sfr_head[6 * sfr_elementCount];
  sfr_extraSegments = self->sfr_extraSegments;
  while (1)
  {
    if (sfr_head == self->sfr_head)
    {
      v8 = &v15;
      v9 = 256;
    }

    else
    {
      v15 = 32;
      v8 = v16;
      v9 = 255;
    }

    v10 = *sfr_head & 0xF;
    if (v10 > 1)
    {
      break;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_20;
      }

      v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "L %f %f");
    }

    else
    {
      v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "M %f %f");
    }

LABEL_16:
    if (v11 < 1 || v11 >= v9)
    {
      goto LABEL_21;
    }

    [data appendBytes:&v15 length:&v8[v11] - &v15];
    sfr_head += 6;
    if (sfr_head >= v6)
    {
      goto LABEL_22;
    }
  }

  if (v10 == 2)
  {
    v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "C %f %f %f %f %f %f", *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
    sfr_extraSegments += 4;
    goto LABEL_16;
  }

  if (v10 == 3)
  {
    *v8 = 90;
    v11 = 1;
    goto LABEL_16;
  }

LABEL_20:
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath cString]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 2445, 0, "Unhandled path element type");
  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_21:
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath cString]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 2453, 0, "buffer too small for path element string");
  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_22:
  v15 = 0;
  [data appendBytes:&v15 length:1];
  return [data bytes];
}

- (TSUBezierPath)initWithCString:(const char *)string
{
  v4 = [(TSUBezierPath *)self init];
  v5 = v4;
  if (string && v4 && *string)
  {
    v38 = 0;
    v37 = 0;
    while (1)
    {
      v6 = v38;
      v7 = string[v38];
      if (v7 == 32)
      {
        v8 = &string[v38 + 1];
        do
        {
          ++v6;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9 == 32);
      }

      v38 = v6 + 1;
      if (v7 > 98)
      {
        if (v7 > 108)
        {
          if (v7 == 122)
          {
            goto LABEL_28;
          }

          if (v7 == 113)
          {
            goto LABEL_27;
          }

          if (v7 != 109)
          {
            goto LABEL_32;
          }

LABEL_26:
          sub_27706CB2C(string, &v38, &v37);
          v14 = v13;
          sub_27706CB2C(string, &v38, &v37);
          [(TSUBezierPath *)v5 moveToPoint:v14, v15];
          goto LABEL_33;
        }

        if (v7 == 99)
        {
          goto LABEL_30;
        }

        if (v7 != 101)
        {
          if (v7 != 108)
          {
            goto LABEL_32;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (v7 > 76)
        {
          if (v7 != 77)
          {
            if (v7 != 81)
            {
              if (v7 != 90)
              {
                goto LABEL_32;
              }

LABEL_28:
              [(TSUBezierPath *)v5 closePath];
              goto LABEL_33;
            }

LABEL_27:
            sub_27706CB2C(string, &v38, &v37);
            v17 = v16;
            sub_27706CB2C(string, &v38, &v37);
            v19 = v18;
            sub_27706CB2C(string, &v38, &v37);
            v21 = v20;
            sub_27706CB2C(string, &v38, &v37);
            [(TSUBezierPath *)v5 curveToPoint:v21 controlPoint:v22, v17, v19];
            goto LABEL_33;
          }

          goto LABEL_26;
        }

        if (v7 <= 68)
        {
          if (v7 != 67)
          {
            if (!v7)
            {
              return v5;
            }

LABEL_32:
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath initWithCString:]"];
            +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v34, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 2526, 0, "Bezier path string contained unknown elmt.");
            +[TSUAssertionHandler logBacktraceThrottled];
            v37 = 1;
            goto LABEL_33;
          }

LABEL_30:
          sub_27706CB2C(string, &v38, &v37);
          v24 = v23;
          sub_27706CB2C(string, &v38, &v37);
          v26 = v25;
          sub_27706CB2C(string, &v38, &v37);
          v28 = v27;
          sub_27706CB2C(string, &v38, &v37);
          v30 = v29;
          sub_27706CB2C(string, &v38, &v37);
          v32 = v31;
          sub_27706CB2C(string, &v38, &v37);
          [(TSUBezierPath *)v5 curveToPoint:v32 controlPoint1:v33 controlPoint2:v24, v26, v28, v30];
          goto LABEL_33;
        }

        if (v7 != 69)
        {
          if (v7 != 76)
          {
            goto LABEL_32;
          }

LABEL_18:
          sub_27706CB2C(string, &v38, &v37);
          v11 = v10;
          sub_27706CB2C(string, &v38, &v37);
          [(TSUBezierPath *)v5 lineToPoint:v11, v12];
        }
      }

LABEL_33:
      if (v37 == 1)
      {
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath initWithCString:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v35, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 2532, 0, "Something is wrong with this bezier path!");
        +[TSUAssertionHandler logBacktraceThrottled];
        return v5;
      }
    }
  }

  return v5;
}

- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount == self->sfr_elementMax)
  {
    self->sfr_elementMax = 2 * sfr_elementCount + 10;
    v9 = NSZoneRealloc([(TSUBezierPath *)self zone], self->sfr_head, 24 * self->sfr_elementMax);
    if (!v9)
    {
      sub_277113974(0, v10, v11, v12, v13, v14, v15, v16);
    }

    self->sfr_head = v9;
    if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
    {
      v17 = NSZoneRealloc([(TSUBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
      if (!v17)
      {
        sub_2771138FC(0, v18, v19, v20, v21, v22, v23, v24);
      }

      self->sfr_elementLength = v17;
    }
  }

  *&self->sfr_head[6 * self->sfr_elementCount] = *&self->sfr_head[6 * self->sfr_elementCount] & 0xFFFFFFFFFFFFFFF0 | segment & 0xF;
  *&self->sfr_head[6 * self->sfr_elementCount] &= 0xFuLL;
  v25 = self->sfr_elementCount;
  v26 = &self->sfr_head[6 * v25];
  *&v26[2] = x;
  *&v26[4] = y;
  self->sfr_elementCount = v25 + 1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  sfr_bpFlags = self->sfr_bpFlags;
  self->sfr_bpFlags = (*&sfr_bpFlags | 3);
  if (segment != 2 && (*&sfr_bpFlags & 0x400) != 0)
  {
    [(TSUBezierPath *)self calculateLengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v29;
    self->sfr_totalLength = v29 + self->sfr_totalLength;
  }
}

- (void)_deviceMoveToPoint:(CGPoint)point
{
  v4 = (*&self->sfr_bpFlags >> 8) & 3;
  if (v4 == 2)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    if ((*&sfr_head[6 * sfr_elementCount - 6] & 0xF) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v4 == 1)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
LABEL_6:
    *&sfr_head[6 * sfr_elementCount - 4] = point;
    goto LABEL_7;
  }

  [(TSUBezierPath *)self _addPathSegment:0 point:point.x, point.y];
  sfr_elementCount = self->sfr_elementCount;
LABEL_7:
  self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x200);
  self->sfr_lastSubpathIndex = sfr_elementCount - 1;
}

- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 elementLength:(double)length
{
  y = point2.y;
  x = point2.x;
  v9 = point1.y;
  v10 = point1.x;
  [(TSUBezierPath *)self _addPathSegment:2 point:point.x, point.y];
  sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  if (sfr_extraSegmentCount == self->sfr_extraSegmentMax)
  {
    self->sfr_extraSegmentMax = 2 * sfr_extraSegmentCount + 10;
    sfr_extraSegments = NSZoneRealloc([(TSUBezierPath *)self zone], self->sfr_extraSegments, 32 * self->sfr_extraSegmentMax);
    if (!sfr_extraSegments)
    {
      sub_2771139EC(0, v14, v15, v16, v17, v18, v19, v20);
    }

    self->sfr_extraSegments = sfr_extraSegments;
    sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  }

  else
  {
    sfr_extraSegments = self->sfr_extraSegments;
  }

  v21 = &sfr_extraSegments[32 * sfr_extraSegmentCount];
  *v21 = v10;
  v21[1] = v9;
  v21[2] = x;
  v21[3] = y;
  self->sfr_extraSegmentCount = sfr_extraSegmentCount + 1;
  v22 = &self->sfr_head[6 * self->sfr_elementCount];
  *&v22[-6] = *&v22[-6] & 0xFLL | (16 * sfr_extraSegmentCount);
  sfr_bpFlags = self->sfr_bpFlags;
  self->sfr_bpFlags = (*&sfr_bpFlags & 0xFFFFFCFB | 0x200);
  if ((*&sfr_bpFlags & 0x400) != 0)
  {
    if ((*&length & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      [(TSUBezierPath *)self calculateLengthOfElement:self->sfr_elementCount - 1];
      length = v24;
    }

    self->sfr_elementLength[self->sfr_elementCount - 1] = length;
    self->sfr_totalLength = length + self->sfr_totalLength;
  }
}

- (void)_deviceClosePath
{
  if ((*&self->sfr_bpFlags & 0x300) == 0x200)
  {
    sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    if (sfr_lastSubpathIndex < 0)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath(TSUBezierPathDevicePrimitives) _deviceClosePath]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 2712, 0, "Invalid parameter not satisfying: %{public}s", "sfr_lastSubpathIndex >= 0");
      +[TSUAssertionHandler logBacktraceThrottled];
      sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    }

    [(TSUBezierPath *)self _addPathSegment:3 point:*&self->sfr_head[6 * sfr_lastSubpathIndex + 2], *&self->sfr_head[6 * sfr_lastSubpathIndex + 4]];
    v5 = &self->sfr_head[6 * self->sfr_lastSubpathIndex];
    [(TSUBezierPath *)self _addPathSegment:0 point:*&v5[2], *&v5[4]];
    self->sfr_lastSubpathIndex = self->sfr_elementCount - 1;
    self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x100);
  }
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"TSUBezierPath <%p>", self];
  if (![(TSUBezierPath *)self isEmpty])
  {
    [(TSUBezierPath *)self bounds];
    [string appendFormat:@"\n  Bounds: %@", NSStringFromCGRect(v17)];
    [(TSUBezierPath *)self controlPointBounds];
    [string appendFormat:@"\n  Control point bounds: %@", NSStringFromCGRect(v18)];
    elementCount = [(TSUBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v5 = elementCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(TSUBezierPath *)self elementAtIndex:i associatedPoints:v13];
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            [string appendFormat:@"\n    %f %f %f %f %f %f curveto", v13[0], v13[1], v14, v15];
          }

          else if (v7 == 3)
          {
            [string appendString:@"\n    closepath"];
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            [string appendFormat:@"\n    %f %f lineto", v13[0], v9, v10, v11, v12];
          }
        }

        else
        {
          [string appendFormat:@"\n    %f %f moveto", v13[0], v9, v10, v11, v12];
        }
      }
    }
  }

  return string;
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(int)type startNewPath:(BOOL)path
{
  pathCopy = path;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v39 = *MEMORY[0x277D85DE8];
  MidX = CGRectGetMidX(bounds);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MidY = CGRectGetMidY(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v15 = CGRectGetWidth(v41) * 0.5;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v16 = CGRectGetHeight(v42) * 0.5;
  if (type == 1)
  {
    sub_27709ADF0(angle, v15, v16);
    angleCopy = v19;
    sub_27709ADF0(angle + swingAngle, v15, v16);
    v17 = v20;
  }

  else
  {
    if (type)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = angle + swingAngle;
    }

    if (type)
    {
      angleCopy = 0.0;
    }

    else
    {
      angleCopy = angle;
    }
  }

  v21 = +[TSUBezierPath bezierPath];
  [v21 appendBezierPathWithArcWithCenter:angleCopy > v17 radius:*MEMORY[0x277CBF348] startAngle:*(MEMORY[0x277CBF348] + 8) endAngle:1.0 clockwise:{angleCopy, v17}];
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformMakeScale(&t1, v15, v16);
  CGAffineTransformMakeTranslation(&t2, MidX, MidY);
  CGAffineTransformConcat(&v37, &t1, &t2);
  t1 = v37;
  [v21 transformUsingAffineTransform:&t1];
  elementCount = [v21 elementCount];
  if (elementCount >= 1)
  {
    v23 = elementCount;
    for (i = 0; v23 != i; ++i)
    {
      memset(&t1, 0, sizeof(t1));
      v25 = [v21 elementAtIndex:i associatedPoints:&t1];
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          [(TSUBezierPath *)self curveToPoint:t1.tx controlPoint1:t1.ty controlPoint2:t1.a, t1.b, t1.c, t1.d];
          continue;
        }

        if (v25 == 3)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPathAdditions.m"];
          v28 = v31;
          v29 = 118;
          v30 = "The arc shouldn't contain close_subpath elements";
          goto LABEL_18;
        }
      }

      else
      {
        if (!v25)
        {
          if (i)
          {
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
            +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v32, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPathAdditions.m"], 104, 0, "Only the first element of the arc should be a moveto");
            +[TSUAssertionHandler logBacktraceThrottled];
          }

          if (pathCopy)
          {
            [(TSUBezierPath *)self moveToPoint:t1.a, t1.b];
          }

          else
          {
            [(TSUBezierPath *)self lineToPoint:t1.a, t1.b];
          }

          continue;
        }

        if (v25 == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPathAdditions.m"];
          v28 = v26;
          v29 = 112;
          v30 = "The arc shouldn't contain lineto elements";
LABEL_18:
          [TSUAssertionHandler handleFailureInFunction:v28 file:v27 lineNumber:v29 isFatal:0 description:v30];
          +[TSUAssertionHandler logBacktraceThrottled];
        }
      }
    }
  }
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(int)sign startNewPath:(BOOL)path
{
  y = radialVector.y;
  x = radialVector.x;
  v9 = vector.y;
  v10 = vector.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v13 = bounds.origin.y;
  v14 = bounds.origin.x;
  MidX = CGRectGetMidX(bounds);
  v23.origin.x = v14;
  v23.origin.y = v13;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v18 = atan2(v9 - MidY, v10 - MidX) * 180.0 / 3.14159265;
  v19 = atan2(y - MidY, x - MidX) * 180.0 / 3.14159265;
  if (sign)
  {
    if (sign == 1)
    {
        ;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath(TSUAdditions) appendBezierPathWithArcWithEllipseBounds:startRadialVector:endRadialVector:angleSign:startNewPath:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v20, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPathAdditions.m"], 141, 0, "Unexpected angle sign");
      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }

  else
  {
      ;
    }
  }

  MEMORY[0x2821F9670](self, sel_appendBezierPathWithArcWithEllipseBounds_startAngle_swingAngle_angleType_startNewPath_);
}

+ (id)bezierPathWithRoundedRect:(CGRect)rect upperRightRadius:(double)radius lowerRightRadius:(double)rightRadius lowerLeftRadius:(double)leftRadius upperLeftRadius:(double)upperLeftRadius useLegacyCorners:(BOOL)corners keepNoOpElements:(BOOL)elements
{
  cornersCopy = corners;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = +[TSUBezierPath bezierPath];
  if (cornersCopy)
  {
    v30 = sub_2770B5508(radius, x, y, width, height, upperLeftRadius, rightRadius);
    v32 = sub_2770B5508(rightRadius, x, y, width, height, leftRadius, radius);
    v34 = sub_2770B5508(leftRadius, x, y, width, height, rightRadius, upperLeftRadius);
    v20 = sub_2770B5508(upperLeftRadius, x, y, width, height, radius, leftRadius);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    [v19 moveToPoint:{v20 + MinX, CGRectGetMinY(v38)}];
    sub_2770B5CB4(v19, 0, elements, x, y, width, height, v30);
    sub_2770B5CB4(v19, 1, elements, x, y, width, height, v32);
    sub_2770B5CB4(v19, 2, elements, x, y, width, height, v34);
    sub_2770B5CB4(v19, 3, elements, x, y, width, height, v20);
  }

  else
  {
    v31 = sub_2770B5508(radius, x, y, width, height, upperLeftRadius * 1.528665, rightRadius * 1.528665);
    v22 = radius * 1.528665;
    v33 = sub_2770B5508(rightRadius, x, y, width, height, leftRadius * 1.528665, v22);
    v35 = sub_2770B5508(leftRadius, x, y, width, height, rightRadius * 1.528665, upperLeftRadius * 1.528665);
    v23 = sub_2770B5508(upperLeftRadius, x, y, width, height, v22, leftRadius * 1.528665);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v24 = CGRectGetWidth(v39);
    v25 = v24 * 0.5;
    v26 = v24 - v31 * 1.528665;
    if (v25 >= v26)
    {
      v26 = v25;
    }

    if (v26 >= v23 * 1.528665)
    {
      v27 = v23 * 1.528665;
    }

    else
    {
      v27 = v26;
    }

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v28 = CGRectGetMinX(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    [v19 moveToPoint:{v28 + v27, CGRectGetMinY(v41)}];
    sub_2770B5670(v19, 0, elements, x, y, width, height, v31, v23, v33);
    sub_2770B5670(v19, 1, elements, x, y, width, height, v33, v35, v31);
    sub_2770B5670(v19, 2, elements, x, y, width, height, v35, v33, v23);
    sub_2770B5670(v19, 3, elements, x, y, width, height, v23, v31, v35);
  }

  [v19 closePath];

  return v19;
}

@end