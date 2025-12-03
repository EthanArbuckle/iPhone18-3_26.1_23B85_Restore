@interface TSDBezierPath
+ (CGRect)p_pathToBounds:(Path *)bounds;
+ (TSDBezierPath)bezierPathWithCGPath:(CGPath *)path;
+ (TSDBezierPath)bezierPathWithConvexHullOfPoints:(CGPoint *)points count:(unint64_t)count;
+ (TSDBezierPath)bezierPathWithOvalInRect:(CGRect)rect;
+ (TSDBezierPath)bezierPathWithRect:(CGRect)rect;
+ (TSDBezierPath)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius;
+ (TSDBezierPath)bezierPathWithStart:(CGPoint)start end:(CGPoint)end;
+ (id)appendBezierPaths:(id)paths;
+ (id)bezierPath;
+ (id)excludeBezierPaths:(id)paths;
+ (id)exteriorOfBezierPath:(id)path;
+ (id)outlineBezierPath:(id)path withThreshold:(double)threshold;
+ (id)outsideEdgeOfBezierPath:(id)path;
+ (id)p_BOOLeanWithBezierPaths:(id)paths operation:(int)operation;
+ (id)p_pathToBezier:(Path *)bezier;
+ (id)smoothBezierPath:(id)path withThreshold:(double)threshold;
+ (id)tracedPathForImage:(CGImage *)image alphaThreshold:(double)threshold pointSpacing:(double)spacing;
+ (id)tracedPathForInstantAlphaBinaryBitmap:(id)bitmap pointSpacing:(double)spacing;
+ (void)clipRect:(CGRect)rect;
+ (void)fillRect:(CGRect)rect;
+ (void)initialize;
+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
+ (void)strokeRect:(CGRect)rect;
- (BOOL)containsClosePathElement;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)intersectsRect:(CGRect)rect hasFill:(BOOL)fill;
- (BOOL)isCircular;
- (BOOL)isClockwise;
- (BOOL)isCompound;
- (BOOL)isDiamond;
- (BOOL)isEffectivelyClosed;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFlat;
- (BOOL)isLineSegment;
- (BOOL)isOpen;
- (BOOL)isRectangular;
- (BOOL)isTriangular;
- (BOOL)pointOnPath:(CGPoint)path tolerance:(double)tolerance;
- (CGPoint)currentPoint;
- (CGPoint)gradientAt:(double)at fromElement:(int64_t)element;
- (CGPoint)gradientAt:(float)at;
- (CGPoint)myGradientAt:(float)at;
- (CGPoint)myGradientAt:(float)at fromElement:(int64_t)element;
- (CGPoint)nearestAngleOnPathToLine:(CGPoint)line[2];
- (CGPoint)nearestPointOnPathToLine:(CGPoint)line[2];
- (CGPoint)pointAlongPathAtPercentage:(double)percentage;
- (CGPoint)pointAt:(double)at fromElement:(int64_t)element;
- (CGPoint)rawGradientAt:(float)at fromElement:(int64_t)element;
- (CGPoint)roundPoint:(CGPoint)point inContext:(CGContext *)context strokeWidth:(int)width;
- (CGPoint)transformedCoordinate:(CGPoint)coordinate withPressure:(id)pressure;
- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate betweenElement:(int64_t)element andElement:(int64_t)andElement withPressure:(id)pressure getElement:(int64_t *)getElement getPercentage:(float *)percentage;
- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate inElement:(int64_t)element withPressure:(id)pressure;
- (CGRect)_addMitersFromSegments:(id)segments toRect:(CGRect)rect;
- (CGRect)bounds;
- (CGRect)boundsIncludingStroke;
- (CGRect)boundsIncludingStrokeWidth:(double)width joinStyle:(unint64_t)style capStyle:(unint64_t)capStyle miterLimit:(double)limit needsToExtendJoins:(BOOL)joins;
- (CGRect)boundsIncludingTSDStroke:(id)stroke;
- (CGRect)controlPointBounds;
- (TSDBezierPath)init;
- (TSDBezierPath)initWithCString:(const char *)string;
- (TSDBezierPath)initWithCoder:(id)coder;
- (const)cString;
- (double)calculateLengthOfElement:(int64_t)element;
- (double)curvatureAt:(double)at fromElement:(int)element;
- (double)distanceToPoint:(CGPoint)point elementIndex:(unint64_t *)index tValue:(double *)value threshold:(double)threshold;
- (double)length;
- (double)lengthOfElement:(int64_t)element;
- (double)lengthToElement:(int64_t)element;
- (double)yValueFromXValue:(double)value elementIndex:(int64_t *)index parametricValue:(double *)parametricValue;
- (float)curvatureAt:(float)at;
- (float)elementPercentageFromElement:(int)element forOverallPercentage:(float)percentage;
- (id)_copyFlattenedPath;
- (id)aliasedPathInContext:(CGContext *)context effectiveStrokeWidth:(float)width;
- (id)bezierPathByFittingCurve;
- (id)bezierPathByFittingCurve:(id)curve;
- (id)bezierPathByFlatteningPath;
- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness;
- (id)bezierPathByOffsettingPath:(double)path joinStyle:(unint64_t)style withThreshold:(double)threshold;
- (id)bezierPathByRemovingRedundantElements;
- (id)bezierPathByReversingPath;
- (id)chisel;
- (id)copyFromSegment:(int)segment t:(float)t toSegment:(int)toSegment t:(float)a6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)intersectBezierPath:(id)path;
- (id)p_aliasedPathInContext:(CGContext *)context viewScale:(float)scale effectiveStrokeWidth:(float)width;
- (id)p_beziersFromSegmentIntersections:(id)intersections;
- (id)p_copyWithPointsInRange:(_NSRange)range countingSubpaths:(unint64_t *)subpaths;
- (id)p_elementCountForSubpaths;
- (id)p_pathAsSegments;
- (id)pathBySplittingAtPointOnPath:(CGPoint)path;
- (id)pathByWobblingByUpTo:(double)to subdivisions:(unint64_t)subdivisions;
- (id)pathSplitAtSubpathBoundariesWithSoftElementLimit:(unint64_t)limit hardElementLimit:(unint64_t)elementLimit;
- (id)subtractBezierPath:(id)path;
- (id)uniteWithBezierPath:(id)path;
- (int64_t)elementPercentage:(double *)percentage forOverallPercentage:(double)overallPercentage startingElementIndex:(int64_t)index lengthToStartingElement:(double)element;
- (int64_t)elementPercentage:(float *)percentage forOverallPercentage:(float)overallPercentage;
- (unint64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points;
- (unint64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points;
- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point;
- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2;
- (void)_appendToPath:(id)path;
- (void)_deviceClosePath;
- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)_deviceMoveToPoint:(CGPoint)point;
- (void)_doPath;
- (void)addClip;
- (void)addIntersectionsWithLine:(CGPoint)line[2] to:(id)to;
- (void)addIntersectionsWithPath:(id)path to:(id)to allIntersections:(BOOL)intersections reversed:(BOOL)reversed;
- (void)addPathToContext:(CGContext *)context;
- (void)alignBoundsToOrigin;
- (void)appendBezierPath:(id)path;
- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment t:(double)t toSegment:(int64_t)toSegment t:(double)a7 withoutMove:(BOOL)move;
- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment toSegment:(int64_t)toSegment;
- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(int)type startNewPath:(BOOL)path;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(int)sign startNewPath:(BOOL)path;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect;
- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count;
- (void)appendBezierPathWithRect:(CGRect)rect;
- (void)calculateLengths;
- (void)clearStroke:(CGContext *)stroke;
- (void)copyPathAttributesTo:(id)to;
- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fill;
- (void)flattenIntoPath:(id)path flatness:(double)flatness;
- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase;
- (void)getStartPoint:(CGPoint *)point andEndPoint:(CGPoint *)endPoint;
- (void)lineToPoint:(CGPoint)point;
- (void)recursiveSubdivideOntoPath:(id)path into:(id)into;
- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into;
- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling into:(id)into;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)relativeLineToPoint:(CGPoint)point;
- (void)relativeMoveToPoint:(CGPoint)point;
- (void)removeAllPoints;
- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index;
- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase;
- (void)stroke;
- (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint;
- (void)takeAttributesFromStroke:(id)stroke;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation TSDBezierPath

- (void)getStartPoint:(CGPoint *)point andEndPoint:(CGPoint *)endPoint
{
  v10[2] = *MEMORY[0x277D85DE8];
  [(TSDBezierPath *)self elementAtIndex:0 associatedPoints:point];
  v7 = [(TSDBezierPath *)self elementAtIndex:[(TSDBezierPath *)self elementCount]- 1 associatedPoints:v9];
  pointCopy = v9;
  if (v7 == 2)
  {
    pointCopy = v10;
  }

  if (v7 == 3)
  {
    pointCopy = point;
  }

  *endPoint = *pointCopy;
}

- (void)addIntersectionsWithPath:(id)path to:(id)to allIntersections:(BOOL)intersections reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v38 = *MEMORY[0x277D85DE8];
  v30 = [to count];
  selfCopy = self;
  elementCount = [(TSDBezierPath *)self elementCount];
  elementCount2 = [path elementCount];
  if (elementCount < 2)
  {
    return;
  }

  v12 = elementCount2;
  if (elementCount2 < 2)
  {
    return;
  }

  if (reversedCopy)
  {
    v13 = elementCount - 1;
  }

  else
  {
    v13 = 0;
  }

  if (reversedCopy)
  {
    v14 = -1;
  }

  else
  {
    v14 = elementCount;
  }

  v32 = v14;
  if (reversedCopy)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  while (2)
  {
    v16 = [(TSDBezierPath *)selfCopy elementAtIndex:v13 allPoints:v35];
    if (!v16)
    {
      goto LABEL_29;
    }

    v17 = v16;
    v18 = 0;
    do
    {
      v19 = [path elementAtIndex:v18 allPoints:v34];
      if (!v19)
      {
        goto LABEL_26;
      }

      if (v17 != 2)
      {
        if (v19 != 2)
        {
          lineIntersectsLine(v35[0].f64, v34, v13, v18, to);
          goto LABEL_26;
        }

        v25 = v34;
        v26 = v35;
        v27 = v18;
        v28 = v13;
        v29 = 1;
LABEL_24:
        curveIntersectLine(v25->f64, v26->f64, v27, v28, v29, to);
        goto LABEL_26;
      }

      if (v19 != 2)
      {
        v25 = v35;
        v26 = v34;
        v27 = v13;
        v28 = v18;
        v29 = 0;
        goto LABEL_24;
      }

      v20 = [to count];
      v37[0] = v35[0];
      v37[1] = v35[1];
      v37[2] = v35[2];
      v37[3] = v35[3];
      v36[0] = v34[0];
      v36[1] = v34[1];
      v36[2] = v34[2];
      v36[3] = v34[3];
      curveIntersectCurveR(v37, v36, v13, v18, 0, to, 1.0, 0.0, 1.0, 0.0);
      v21 = [to count];
      if (v20 < v21)
      {
        v22 = v21;
        do
        {
          v23 = [to objectAtIndex:v20];
          [v23 t];
          [v23 setPoint:{TSDPointOnCurve(v35, v24)}];
          ++v20;
        }

        while (v22 != v20);
      }

LABEL_26:
      ++v18;
    }

    while (v18 != v12);
    if (intersections || v30 >= [to count])
    {
LABEL_29:
      v13 += v15;
      if (v13 == v32)
      {
        return;
      }

      continue;
    }

    break;
  }
}

- (void)addIntersectionsWithLine:(CGPoint)line[2] to:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CBF348];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    for (i = 0; v8 != i; ++i)
    {
      v10 = [(TSDBezierPath *)self elementAtIndex:i associatedPoints:v14, v12, v13];
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          curveIntersectLine(&v13, &line->x, i, -1, 0, to);
          v11 = v14[2];
          goto LABEL_13;
        }

        if (v10 == 3)
        {
          v14[0] = v12;
          goto LABEL_10;
        }
      }

      else
      {
        if (v10)
        {
          if (v10 != 1)
          {
            continue;
          }

LABEL_10:
          lineIntersectsLine(&v13, &line->x, i, -1, to);
          v11 = v14[0];
LABEL_13:
          v13 = v11;
          continue;
        }

        v12 = v14[0];
        v13 = v14[0];
      }
    }
  }
}

- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment toSegment:(int64_t)toSegment
{
  v16 = *MEMORY[0x277D85DE8];
  if (segment < toSegment)
  {
    segmentCopy = segment;
    do
    {
      v9 = [path elementAtIndex:segmentCopy associatedPoints:&v10];
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          [(TSDBezierPath *)self curveToPoint:v14 controlPoint1:v15 controlPoint2:v10, v11, v12, v13];
        }

        else if (v9 == 3)
        {
          [(TSDBezierPath *)self closePath];
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          [(TSDBezierPath *)self lineToPoint:v10, v11];
        }
      }

      else
      {
        [(TSDBezierPath *)self moveToPoint:v10, v11];
      }

      ++segmentCopy;
    }

    while (toSegment != segmentCopy);
  }
}

- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment t:(double)t toSegment:(int64_t)toSegment t:(double)a7 withoutMove:(BOOL)move
{
  v40 = *MEMORY[0x277D85DE8];
  elementCount = [path elementCount];
  v14 = elementCount;
  v16 = segment < 1 || elementCount <= segment;
  if (v16)
  {
    segmentCopy = -1;
  }

  else
  {
    segmentCopy = segment;
  }

  if (toSegment <= 0)
  {
    toSegment = elementCount + 1;
  }

  if (segmentCopy == toSegment)
  {
    if (a7 < t || segmentCopy >= elementCount)
    {
      LOBYTE(v16) = 1;
    }

    if (!v16)
    {
      v19 = [path elementAtIndex:segmentCopy allPoints:{&v36, t, a7}];
      if (v19 == 3)
      {
LABEL_22:
        if (!move)
        {
          [(TSDBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, t), v36, 1.0 - t)];
        }

        goto LABEL_64;
      }

      if (v19 != 2)
      {
        if (v19 != 1)
        {
          return;
        }

        goto LABEL_22;
      }

      TSDCurveBetween(&v36, &v28, t, a7);
      if (!move)
      {
        [(TSDBezierPath *)self moveToPoint:v28, v29];
      }

      goto LABEL_66;
    }

    return;
  }

  if (!v16)
  {
    v20 = [path elementAtIndex:segment allPoints:&v36];
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        if (v20 != 3)
        {
          goto LABEL_41;
        }

LABEL_31:
        if (!move)
        {
          [(TSDBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, t), v36, 1.0 - t)];
        }

        [(TSDBezierPath *)self lineToPoint:*&v37];
        goto LABEL_41;
      }

      TSDCurveBetween(&v36, &v28, t, 1.0);
      if (!move)
      {
        [(TSDBezierPath *)self moveToPoint:v28, v29];
      }

      [(TSDBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33];
    }

    else
    {
      if (v20)
      {
        if (v20 != 1)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }

      if (!move)
      {
        [(TSDBezierPath *)self moveToPoint:*&v36];
      }
    }
  }

LABEL_41:
  if (toSegment >= v14)
  {
    toSegmentCopy = v14;
  }

  else
  {
    toSegmentCopy = toSegment;
  }

  v22 = segmentCopy + 1;
  if (v22 < toSegmentCopy)
  {
    v23 = 0;
    while (1)
    {
      v24 = [path elementAtIndex:v22 associatedPoints:&v36];
      if (v24 <= 1)
      {
        break;
      }

      if (v24 == 2)
      {
        [(TSDBezierPath *)self curveToPoint:v38 controlPoint1:v39 controlPoint2:*&v36, *&v37];
        goto LABEL_58;
      }

      if (v24 == 3)
      {
        if ((v23 & 1) == 0)
        {
          [(TSDBezierPath *)self lineToPoint:*&v36];
          v23 = 0;
          goto LABEL_58;
        }

        [(TSDBezierPath *)self closePath];
        goto LABEL_55;
      }

LABEL_58:
      if (toSegmentCopy == ++v22)
      {
        goto LABEL_59;
      }
    }

    if (v24)
    {
      if (v24 == 1)
      {
        [(TSDBezierPath *)self lineToPoint:*&v36];
      }

      goto LABEL_58;
    }

    [(TSDBezierPath *)self moveToPoint:*&v36];
LABEL_55:
    v23 = 1;
    goto LABEL_58;
  }

LABEL_59:
  if (toSegment >= 1 && toSegment < v14)
  {
    v25 = [path elementAtIndex:toSegment allPoints:&v36];
    if (v25 == 3)
    {
LABEL_64:
      [(TSDBezierPath *)self lineToPoint:vmlaq_n_f64(vmulq_n_f64(v37, a7), v36, 1.0 - a7)];
      return;
    }

    if (v25 != 2)
    {
      if (v25 != 1)
      {
        return;
      }

      goto LABEL_64;
    }

    TSDCurveBetween(&v36, &v28, 0.0, a7);
LABEL_66:
    [(TSDBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33];
  }
}

- (id)copyFromSegment:(int)segment t:(float)t toSegment:(int)toSegment t:(float)a6
{
  v11 = objc_alloc_init(objc_opt_class());
  [v11 appendBezierPath:self fromSegment:segment t:toSegment toSegment:0 t:t withoutMove:a6];
  [v11 setWindingRule:{-[TSDBezierPath windingRule](self, "windingRule")}];
  [v11 setLineCapStyle:{-[TSDBezierPath lineCapStyle](self, "lineCapStyle")}];
  [v11 setLineJoinStyle:{-[TSDBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(TSDBezierPath *)self lineWidth];
  [v11 setLineWidth:?];
  return v11;
}

- (CGPoint)nearestPointOnPathToLine:(CGPoint)line[2]
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v25 = *MEMORY[0x277CBF348];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    v9 = 0;
    v10 = 3.4028e38;
    while (1)
    {
      v11 = [(TSDBezierPath *)self elementAtIndex:v9 associatedPoints:v27];
      if (v11 == 2)
      {
        break;
      }

      if (v11 == 3)
      {
        v12 = v25;
LABEL_9:
        v27[0] = v12;
        v11 = 2;
      }

      x = line[1].x;
      y = line[1].y;
      v16 = y - line->y;
      v17 = x - line->x;
      v18 = v17 * v17 + v16 * v16;
      v19 = (1.0 / sqrtf(v18));
      *&y = *(v27 + 1) * -(v17 * v19) + v16 * v19 * *v27 - (y * -(v17 * v19) + v16 * v19 * x);
      v20 = fabsf(*&y);
      if (v10 > v20)
      {
        v10 = v20;
        v6 = *(v27 + 1);
        v5 = *v27;
      }

      v26 = v27[0];
      if (!v11)
      {
        v25 = v27[0];
      }

      if (v8 == ++v9)
      {
        goto LABEL_15;
      }
    }

    v23 = 0.0;
    v24 = 0.0;
    TSDNearestPointOnCurveToLine(&v26, &line->x, &v23);
    if (v13 < v10)
    {
      v10 = v13;
      v6 = v24;
      v5 = v23;
    }

    v12 = v27[2];
    goto LABEL_9;
  }

LABEL_15:
  v21 = v5;
  v22 = v6;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)nearestAngleOnPathToLine:(CGPoint)line[2]
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  x = line[1].x;
  y = line[1].y;
  v9 = line->x;
  v33 = *MEMORY[0x277CBF348];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v11 = elementCount;
    v12 = TSDSubtractPoints(x, y, v9);
    v14 = TSDNormalizePoint(v12, v13);
    v16 = v15;
    v17 = 0;
    v18 = -2.0;
    do
    {
      v19 = [(TSDBezierPath *)self elementAtIndex:v17 associatedPoints:v35];
      v20 = v19;
      if (v19 == 2)
      {
        v31 = 0.0;
        v32 = 0.0;
        nearestAngleOnCurveToLine(&v34, &line->x, &v31);
        v22 = v21;
        if (v18 < v22)
        {
          v18 = v22;
          v6 = v32;
          v5 = v31;
        }

        v35[0] = v35[2];
      }

      else if (v19 == 3)
      {
        v35[0] = v33;
        v20 = 2;
      }

      v23 = v35[0];
      v24 = TSDSubtractPoints(*v35, *(v35 + 1), line->x);
      v26 = TSDNormalizePoint(v24, v25);
      v28 = TSDDotPoints(v14, v16, v26, v27);
      if (v18 < v28)
      {
        v18 = v28;
        v6 = *(&v23 + 1);
        v5 = *&v23;
      }

      v34 = v35[0];
      if (!v20)
      {
        v33 = v35[0];
      }

      ++v17;
    }

    while (v11 != v17);
  }

  v29 = v5;
  v30 = v6;
  result.y = v30;
  result.x = v29;
  return result;
}

- (int64_t)elementPercentage:(float *)percentage forOverallPercentage:(float)overallPercentage
{
  [(TSDBezierPath *)self length];
  v8 = v7;
  if (overallPercentage < 0.0)
  {
    v9 = 0;
    do
    {
      [(TSDBezierPath *)self lengthOfElement:++v9];
    }

    while (v10 == 0.0);
    [(TSDBezierPath *)self lengthOfElement:v9];
    v12 = (v8 * overallPercentage) / v11;
LABEL_12:
    v19 = v12;
    goto LABEL_13;
  }

  v13 = v8 * overallPercentage;
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount < 2)
  {
LABEL_9:
    v9 = elementCount;
    do
    {
      [(TSDBezierPath *)self lengthOfElement:--v9];
    }

    while (v17 == 0.0);
    [(TSDBezierPath *)self lengthOfElement:v9];
    v12 = v13 / v18 + 1.0;
    goto LABEL_12;
  }

  v9 = 1;
  while (1)
  {
    [(TSDBezierPath *)self lengthOfElement:v9];
    v16 = v15;
    v13 = v13 - v16;
    if (v13 < 0.0)
    {
      break;
    }

    if (elementCount == ++v9)
    {
      goto LABEL_9;
    }
  }

  v19 = (v13 + v16) / v16;
LABEL_13:
  *percentage = v19;
  return v9;
}

- (int64_t)elementPercentage:(double *)percentage forOverallPercentage:(double)overallPercentage startingElementIndex:(int64_t)index lengthToStartingElement:(double)element
{
  [(TSDBezierPath *)self length];
  if (v11 <= 0.0 || (v12 = v11, [(TSDBezierPath *)self elementCount]<= 0))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Distortion) elementPercentage:forOverallPercentage:startingElementIndex:lengthToStartingElement:]"];
    [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPathDistortion.m"), 1335, @"Can't calculate a percentage of a path with no length or elements."}];
    index = 0;
    v22 = 0.0;
  }

  else
  {
    v13 = v12 * overallPercentage;
    if (overallPercentage <= 0.0)
    {
      if ([(TSDBezierPath *)self elementCount]< 1)
      {
        index = 0;
      }

      else
      {
        index = 0;
        do
        {
          [(TSDBezierPath *)self lengthOfElement:index];
          if (v24 > 0.0)
          {
            break;
          }

          ++index;
        }

        while (index < [(TSDBezierPath *)self elementCount]);
      }

      [(TSDBezierPath *)self lengthOfElement:index];
      v22 = v13 / v25;
    }

    else
    {
      v14 = v13 - element;
      elementCount = [(TSDBezierPath *)self elementCount];
      if (elementCount <= index)
      {
        do
        {
LABEL_7:
          if (elementCount-- < 1)
          {
            break;
          }

          [(TSDBezierPath *)self lengthOfElement:elementCount];
        }

        while (v18 <= 0.0);
        [(TSDBezierPath *)self lengthOfElement:elementCount];
        v19 = v14 + v16;
        index = elementCount;
      }

      else
      {
        while (1)
        {
          [(TSDBezierPath *)self lengthOfElement:index];
          v14 = v14 - v16;
          if (v14 < 0.0)
          {
            break;
          }

          if (elementCount == ++index)
          {
            goto LABEL_7;
          }
        }

        v19 = v16 + v14;
      }

      v22 = v19 / v16;
    }
  }

  *percentage = v22;
  return index;
}

- (CGPoint)pointAt:(double)at fromElement:(int64_t)element
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = *MEMORY[0x277CBF348];
  v6 = [(TSDBezierPath *)self elementAtIndex:element allPoints:&v29];
  if (v6 <= 1)
  {
    if (!v6)
    {
      v9 = v29;
      goto LABEL_16;
    }

    _ZF = v6 == 1;
    goto LABEL_6;
  }

  if (v6 != 2)
  {
    _ZF = v6 == 3;
LABEL_6:
    v9 = v27;
    if (!_ZF)
    {
      goto LABEL_16;
    }

    atCopy = 1.0 - at;
    v11 = v29;
    v12 = vmulq_n_f64(v30, at);
    goto LABEL_9;
  }

  atCopy = at;
  if (at < 0.0)
  {
    *&v7 = at;
    [(TSDBezierPath *)self rawGradientAt:element fromElement:v7];
    v15 = TSDMultiplyPointScalar(v13, v14, at);
    v17 = v29.f64[1];
    v16 = v29.f64[0];
LABEL_15:
    v9.f64[0] = TSDAddPoints(v16, v17, v15);
    v9.f64[1] = v21;
    goto LABEL_16;
  }

  v18 = 1.0;
  if (at > 1.0)
  {
    *&v18 = at;
    [(TSDBezierPath *)self rawGradientAt:element fromElement:v18];
    v15 = TSDMultiplyPointScalar(v19, v20, at + -1.0);
    v17 = v32.f64[1];
    v16 = v32.f64[0];
    goto LABEL_15;
  }

  __asm { FMOV            V3.2D, #3.0 }

  v12 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(v30, _Q3), at), 1.0 - at), 1.0 - at), vmulq_n_f64(vmulq_n_f64(v29, 1.0 - at), 1.0 - at), 1.0 - at), vmulq_n_f64(vmulq_n_f64(vmulq_f64(v31, _Q3), at), at), 1.0 - at);
  v11 = vmulq_n_f64(vmulq_n_f64(v32, at), at);
LABEL_9:
  v9 = vmlaq_n_f64(v12, v11, atCopy);
LABEL_16:
  v22 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v22;
  return result;
}

- (CGPoint)gradientAt:(double)at fromElement:(int64_t)element
{
  *&at = at;
  [(TSDBezierPath *)self rawGradientAt:element fromElement:at];
  v6 = v4 * v4 + v5 * v5;
  v7 = (1.0 / sqrtf(v6));
  v8 = v5 * v7;
  v9 = v4 * v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)gradientAt:(float)at
{
  v7 = 0.0;
  v4 = [(TSDBezierPath *)self elementPercentage:&v7 forOverallPercentage:?];
  [(TSDBezierPath *)self gradientAt:v4 fromElement:v7];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)transformedCoordinate:(CGPoint)coordinate withPressure:(id)pressure
{
  y = coordinate.y;
  x = coordinate.x;
  v23 = 0.0;
  *&coordinate.x = coordinate.x;
  v8 = [(TSDBezierPath *)self elementPercentage:&v23 forOverallPercentage:coordinate.x];
  [(TSDBezierPath *)self pointAt:v8 fromElement:v23];
  v10 = v9;
  v12 = v11;
  [(TSDBezierPath *)self gradientAt:v8 fromElement:v23];
  v14 = v13;
  v16 = v15;
  [(TSDBezierPath *)self lineWidth];
  v18 = v17;
  if (pressure)
  {
    [pressure pressureAt:x];
  }

  else
  {
    v19 = 1.0;
  }

  v20 = y * (v18 * v19);
  v21 = v10 - v16 * v20;
  v22 = v12 + v14 * v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate inElement:(int64_t)element withPressure:(id)pressure
{
  y = coordinate.y;
  x = coordinate.x;
  *&coordinate.x = coordinate.x;
  [(TSDBezierPath *)self elementPercentageFromElement:coordinate.x forOverallPercentage:?];
  v11 = v10;
  [(TSDBezierPath *)self pointAt:element fromElement:v10];
  v13 = v12;
  v15 = v14;
  [(TSDBezierPath *)self gradientAt:element fromElement:v11];
  v17 = v16;
  v19 = v18;
  [(TSDBezierPath *)self lineWidth];
  v21 = v20;
  if (pressure)
  {
    [pressure pressureAt:x];
  }

  else
  {
    v22 = 1.0;
  }

  v23 = y * (v21 * v22);
  v24 = v13 - v19 * v23;
  v25 = v15 + v17 * v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate betweenElement:(int64_t)element andElement:(int64_t)andElement withPressure:(id)pressure getElement:(int64_t *)getElement getPercentage:(float *)percentage
{
  y = coordinate.y;
  x = coordinate.x;
  v34 = 0.0;
  v16 = coordinate.x;
  *&coordinate.x = v16;
  v17 = [(TSDBezierPath *)self elementPercentage:&v34 forOverallPercentage:coordinate.x];
  if (v17 >= element)
  {
    if (v17 <= andElement)
    {
      v19 = v34;
      element = v17;
    }

    else
    {
      *&v18 = v16;
      [(TSDBezierPath *)self elementPercentageFromElement:andElement forOverallPercentage:v18];
      v34 = v19;
      element = andElement;
    }
  }

  else
  {
    *&v18 = v16;
    [(TSDBezierPath *)self elementPercentageFromElement:element forOverallPercentage:v18];
    v34 = v19;
  }

  [(TSDBezierPath *)self pointAt:element fromElement:v19];
  v21 = v20;
  v23 = v22;
  [(TSDBezierPath *)self gradientAt:element fromElement:v34];
  v25 = v24;
  v27 = v26;
  [(TSDBezierPath *)self lineWidth];
  v29 = v28;
  if (pressure)
  {
    [pressure pressureAt:x];
  }

  else
  {
    v30 = 1.0;
  }

  v31 = y * (v29 * v30);
  v32 = v21 - v27 * v31;
  v33 = v23 + v25 * v31;
  *getElement = element;
  *percentage = v34;
  result.y = v33;
  result.x = v32;
  return result;
}

- (float)elementPercentageFromElement:(int)element forOverallPercentage:(float)percentage
{
  [(TSDBezierPath *)self length];
  v8 = v7;
  if (element < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      [(TSDBezierPath *)self lengthOfElement:v9];
      v10 = v11 + v10;
      ++v9;
    }

    while (element != v9);
  }

  v12 = v8 * percentage;
  v13 = (v12 - v10);
  [(TSDBezierPath *)self lengthOfElement:element];
  return v13 / v14;
}

- (CGPoint)rawGradientAt:(float)at fromElement:(int64_t)element
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277CBF348];
  v5 = [(TSDBezierPath *)self elementAtIndex:element allPoints:&v16];
  if (v5 <= 1)
  {
    if (!v5)
    {
      NSLog(@"GA can't handle move to");
      v7 = v15;
      goto LABEL_15;
    }

    _ZF = v5 == 1;
    goto LABEL_6;
  }

  if (v5 != 2)
  {
    _ZF = v5 == 3;
LABEL_6:
    v7 = v15;
    if (_ZF)
    {
      v7 = vsubq_f64(v17, v16);
    }

    goto LABEL_15;
  }

  atCopy = 0.01;
  if (at >= 0.01)
  {
    atCopy = at;
  }

  if (atCopy > 0.99)
  {
    atCopy = 0.99;
  }

  __asm
  {
    FMOV            V4.2D, #-3.0
    FMOV            V5.2D, #3.0
  }

  v7 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(v17, _Q5), (((atCopy * -4.0) + 1.0) + ((atCopy * 3.0) * atCopy))), vmulq_n_f64(vmulq_f64(v16, _Q4), (atCopy + -1.0)), (atCopy + -1.0)), vmulq_n_f64(vmulq_f64(v18, _Q5), atCopy), ((atCopy * -3.0) + 2.0)), vmulq_n_f64(vmulq_f64(v19, _Q5), atCopy), atCopy);
LABEL_15:
  v14 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v14;
  return result;
}

- (CGPoint)myGradientAt:(float)at
{
  v15 = 0;
  v4 = [(TSDBezierPath *)self elementPercentage:&v15 forOverallPercentage:?];
  LODWORD(v5) = v15;
  [(TSDBezierPath *)self rawGradientAt:v4 fromElement:v5];
  v7 = v6;
  v9 = v8;
  [(TSDBezierPath *)self length];
  v11 = v10;
  [(TSDBezierPath *)self lengthOfElement:v4];
  v13 = TSDMultiplyPointScalar(v7, v9, v11 / v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)myGradientAt:(float)at fromElement:(int64_t)element
{
  [TSDBezierPath rawGradientAt:"rawGradientAt:fromElement:" fromElement:?];
  v7 = v6;
  v9 = v8;
  [(TSDBezierPath *)self length];
  v11 = v10;
  [(TSDBezierPath *)self lengthOfElement:element];

  v13 = TSDMultiplyPointScalar(v7, v9, v11 / v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (float)curvatureAt:(float)at
{
  v8 = 0.0;
  v4 = [(TSDBezierPath *)self elementPercentage:&v8 forOverallPercentage:?];
  [(TSDBezierPath *)self curvatureAt:v4 fromElement:v8];
  v6 = v5;
  result = 0.5;
  if (v6 <= 0.5)
  {
    result = -0.5;
    if (v6 >= -0.5)
    {
      return v6;
    }
  }

  return result;
}

- (double)curvatureAt:(double)at fromElement:(int)element
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(TSDBezierPath *)self elementAtIndex:element allPoints:&v13];
  if (v5 == 2)
  {
    atCopy = 0.01;
    if (at >= 0.01)
    {
      atCopy = at;
    }

    if (atCopy > 0.99)
    {
      atCopy = 0.99;
    }

    v8 = (atCopy * (atCopy * (v19 - v17) + (1.0 - atCopy) * (v17 - v15)) + (1.0 - atCopy) * (atCopy * (v17 - v15) + (1.0 - atCopy) * (v15 - v13))) * 3.0;
    v9 = (atCopy * (atCopy * (v20 - v18) + (1.0 - atCopy) * (v18 - v16)) + (1.0 - atCopy) * (atCopy * (v18 - v16) + (1.0 - atCopy) * (v16 - v14))) * 3.0;
    v10 = v8 * ((atCopy * (v20 - v18 - (v18 - v16)) + (1.0 - atCopy) * (v18 - v16 - (v16 - v14))) * 6.0) - v9 * ((atCopy * (v19 - v17 - (v17 - v15)) + (1.0 - atCopy) * (v17 - v15 - (v15 - v13))) * 6.0);
    return (v10 / pow(v9 * v9 + v8 * v8, 1.5));
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      NSLog(@"CA can't handle move to");
    }
  }

  return v6;
}

- (void)recursiveSubdivideOntoPath:(id)path into:(id)into
{
  v7 = [path elementCount] - 1;

  [(TSDBezierPath *)self recursiveSubdivideOntoPath:path withScaling:0 inElementRange:v7 into:into, 0.0, 1.0];
}

- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling into:(id)into
{
  var1 = scaling.var1;
  var0 = scaling.var0;
  v10 = [path elementCount] - 1;

  [(TSDBezierPath *)self recursiveSubdivideOntoPath:path withScaling:0 inElementRange:v10 into:into, var0, var1];
}

- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into
{
  length = range.length;
  location = range.location;
  v86 = *MEMORY[0x277D85DE8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [TSDPathCut alloc];
  [path lengthToElement:location];
  v14 = v13;
  [path length];
  v16 = [(TSDPathCut *)v12 initWithSegment:location atT:v14 / v15 withSkew:0.0];
  [v11 addObject:v16];

  [path miterLimit];
  v18 = location + length;
  v19 = location + 1;
  if (v19 >= v18)
  {
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_16:
    v49 = [TSDPathCut alloc];
    [path lengthToElement:1];
    v51 = v50;
    [path length];
    v53 = [(TSDPathCut *)v49 initWithSegment:0 atT:v51 / v52 withSkew:0.0];
    [v11 addObject:v53];
  }

  else
  {
    v76 = v17 * 0.995;
    v20 = length - 1;
    do
    {
      v21 = v19 + 1;
      [path lengthOfElement:v19 + 1];
      if (v17 >= 0.1)
      {
        [path lengthOfElement:v19];
        if (v17 >= 0.1)
        {
          [path gradientAt:v19 fromElement:1.0];
          v24 = TSDNormalizePoint(v22, v23);
          v26 = v25;
          [path gradientAt:v19 + 1 fromElement:0.0];
          v29 = TSDNormalizePoint(v27, v28);
          v31 = v30;
          v32 = TSDDotPoints(v24, v26, v29, v30);
          v17 = v32;
          if (v32 < 0.99)
          {
            [path lengthToElement:{v19 + 1, v17}];
            v77 = v33;
            [path length];
            v35 = v34;
            v36 = 0.0;
            if (v21 < v18)
            {
              v37 = TSDMultiplyPointScalar(v29, v31, -1.0);
              v38 = TSDAddPoints(v24, v26, v37);
              v40 = v39;
              v41 = -TSDDotPoints(v24, v26, v38, v39);
              v42 = TSDRotatePoint90Degrees(0, v24, v26);
              v44 = v41 / TSDDotPoints(v38, v40, v42, v43);
              v45 = fmin(fmax(-v32, -1.0), 1.0);
              v46 = acosf(v45);
              if (1.0 / sinf(v46 * 0.5) <= v76)
              {
                v36 = v44;
              }

              else
              {
                v36 = 0.0;
              }
            }

            v47 = v77 / v35;
            v48 = [[TSDPathCut alloc] initWithSegment:v19 atT:v47 withSkew:v36];
            [v11 addObject:v48];
          }
        }
      }

      v19 = v21;
      --v20;
    }

    while (v20);
LABEL_14:
    while (1)
    {
      [path lengthOfElement:{v18, v17}];
      if (v17 >= 0.1)
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_16;
      }
    }

    v54 = [TSDPathCut alloc];
    [path lengthToElement:v18 + 1];
    v56 = v55;
    [path length];
    v58 = [(TSDPathCut *)v54 initWithSegment:v18 atT:v56 / v57 withSkew:0.0];
    [v11 addObject:v58];

    v80 = *MEMORY[0x277CBF348];
    elementCount = [(TSDBezierPath *)self elementCount];
    if (elementCount)
    {
      v60 = elementCount;
      v61 = 0;
      v62 = 0;
      do
      {
        v63 = [(TSDBezierPath *)self elementAtIndex:v61 associatedPoints:&v82];
        v64 = v63 == 0;
        if (v63)
        {
          v65 = v63;
          if (v63 == 2)
          {
            v82.f64[0] = scaling.var0 + v82.f64[0] * scaling.var1;
            v83 = scaling.var0 + v83 * scaling.var1;
            v85.f64[0] = scaling.var0 + v85.f64[0] * scaling.var1;
            v78 = v85;
            recursiveSubdivideCurveSplit(&v81, path, 0, into, v62, v11);
            v81 = v78;
          }

          else
          {
            if (v63 == 3)
            {
              v82 = v80;
              v66 = v80;
            }

            else
            {
              v66.f64[0] = scaling.var0 + v82.f64[0] * scaling.var1;
              v82.f64[0] = v66.f64[0];
            }

            v67 = v81;
            v68 = TSDSubtractPoints(v66.f64[0], v82.f64[1], v81.f64[0]);
            v70 = v69;
            v85 = v82;
            v71 = TSDMultiplyPointScalar(v68, v69, 0.33);
            v82.f64[0] = TSDAddPoints(v67.f64[0], v67.f64[1], v71);
            v82.f64[1] = v72;
            v73 = TSDMultiplyPointScalar(v68, v70, 0.66);
            v83 = TSDAddPoints(v67.f64[0], v67.f64[1], v73);
            v84 = v74;
            v79 = v85;
            recursiveSubdivideCurveSplit(&v81, path, 0, into, v62, v11);
            v81 = v79;
            if (v65 == 3)
            {
              [into closePath];
            }
          }
        }

        else
        {
          v82.f64[0] = scaling.var0 + v82.f64[0] * scaling.var1;
          v80 = v82;
          v81 = v82;
        }

        ++v61;
        v62 = v64;
      }

      while (v60 != v61);
    }
  }
}

- (id)chisel
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = +[TSDBezierPath bezierPath];
  [(TSDBezierPath *)self lineWidth];
  v5 = v4 * 0.5;
  elementCount = [(TSDBezierPath *)self elementCount];
  if (!elementCount)
  {
    v9 = 1;
    v51 = -1;
    goto LABEL_58;
  }

  v7 = elementCount;
  v8 = 0;
  v9 = 1;
  v10 = 9.0;
  do
  {
    v11 = v9;
    v12 = [(TSDBezierPath *)self elementAtIndex:v8 allPoints:&v106];
    v9 = v12 == 0;
    if (!v12)
    {
      goto LABEL_54;
    }

    v13 = v12;
    [(TSDBezierPath *)self rawGradientAt:v8 fromElement:0.0];
    if (v14 <= 0.0)
    {
      v15 = -v5;
    }

    else
    {
      v15 = v5;
    }

    if (v13 == 2)
    {
      v16 = v106.f64[0];
      v17 = v107;
      v18 = v109;
      v19 = v111;
      v20 = (((v17 * v10) + (v16 * -3.0)) + (v18 * -9.0)) + (v19 * 3.0);
      v21 = ((v17 * -12.0) + (v16 * 6.0)) + (v18 * 6.0);
      v22 = (v17 * 3.0) + (v16 * -3.0);
      v23 = (v22 * (v20 * -4.0)) + (v21 * v21);
      if (v23 <= 0.0)
      {
        v36 = v15;
        v37 = v106.f64[1] + v15;
        if (v11)
        {
          [v3 moveToPoint:{v106.f64[0], v37}];
        }

        else
        {
          [v3 lineToPoint:{v106.f64[0], v37}];
        }

        v38 = v111;
        v39 = v112 + v36;
        v40 = v107;
        v41 = v108 + v36;
        v42 = v109;
        v43 = v110;
        goto LABEL_53;
      }

      v24 = sqrtf(v23);
      v25 = (-v21 - v24) / (v20 + v20);
      v26 = (v24 - v21) / (v20 + v20);
      if (v26 >= v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      if (v26 < v25)
      {
        v25 = v26;
      }

      v28 = fabsf(v20);
      v29 = -v22 / v21;
      if (v28 <= 0.001)
      {
        v30 = 10.0;
      }

      else
      {
        v30 = v27;
      }

      if (v28 <= 0.001)
      {
        v25 = v29;
      }

      v31 = 0.0;
      if (v25 > 0.0 && v25 < 1.0)
      {
        v31 = v25;
        TSDCurveBetween(&v106, &v98, 0.0, v25);
        v33 = v15;
        v34 = v99 + v33;
        if (v11)
        {
          [v3 moveToPoint:{v98, v34}];
        }

        else
        {
          [v3 lineToPoint:{v98, v34}];
        }

        [v3 curveToPoint:v104 controlPoint1:v105 + v33 controlPoint2:{v100, v101 + v33, v102, v103 + v33}];
        v44 = v31 + 0.01;
        *&v44 = v31 + 0.01;
        [(TSDBezierPath *)self rawGradientAt:v8 fromElement:v44];
        v11 = 0;
        if (v45 <= 0.0)
        {
          v15 = -v5;
        }

        else
        {
          v15 = v5;
        }
      }

      if (v30 > 0.0 && v30 < 1.0)
      {
        v47 = v30;
        TSDCurveBetween(&v106, &v98, v31, v47);
        v48 = v99 + v15;
        if (v11)
        {
          [v3 moveToPoint:{v98, v48}];
        }

        else
        {
          [v3 lineToPoint:{v98, v48}];
        }

        [v3 curveToPoint:v104 controlPoint1:v105 + v15 controlPoint2:{v100, v101 + v15, v102, v103 + v15}];
        v49 = v47 + 0.01;
        *&v49 = v47 + 0.01;
        [(TSDBezierPath *)self rawGradientAt:v8 fromElement:v49];
        if (v50 <= 0.0)
        {
          v15 = -v5;
        }

        else
        {
          v15 = v5;
        }

        TSDCurveBetween(&v106, &v98, v47, 1.0);
      }

      else
      {
        TSDCurveBetween(&v106, &v98, v31, 1.0);
        if (v11)
        {
          v36 = v15;
          [v3 moveToPoint:{v98, v99 + v15}];
          v10 = 9.0;
LABEL_52:
          v38 = v104;
          v39 = v105 + v36;
          v40 = v100;
          v41 = v101 + v36;
          v42 = v102;
          v43 = v103;
LABEL_53:
          [v3 curveToPoint:v38 controlPoint1:v39 controlPoint2:{v40, v41, v42, v43 + v36}];
          goto LABEL_54;
        }
      }

      v10 = 9.0;
      v36 = v15;
      [v3 lineToPoint:{v98, v99 + v15}];
      goto LABEL_52;
    }

    v35 = v106.f64[1] + v15;
    if (v11)
    {
      [v3 moveToPoint:{v106.f64[0], v35}];
    }

    else
    {
      [v3 lineToPoint:{v106.f64[0], v35}];
    }

    [v3 lineToPoint:{v107, v108 + v15}];
LABEL_54:
    ++v8;
  }

  while (v7 != v8);
  v51 = v7 - 1;
  if (v51)
  {
LABEL_58:
    if (*MEMORY[0x277CBF348] >= 0.0)
    {
      v52 = -v5;
    }

    else
    {
      v52 = v5;
    }

    v53 = v52;
    v54 = 9.0;
    do
    {
      v55 = [(TSDBezierPath *)self elementAtIndex:v51 allPoints:&v106];
      v57 = v55 == 0;
      if (v55)
      {
        v58 = v55;
        LODWORD(v56) = 1.0;
        [(TSDBezierPath *)self rawGradientAt:v51 fromElement:v56];
        if (v59 >= 0.0)
        {
          v60 = -v5;
        }

        else
        {
          v60 = v5;
        }

        if (v58 == 2)
        {
          v61 = v106.f64[0];
          v62 = v107;
          v63 = v109;
          v64 = v111;
          v65 = (((v62 * v54) + (v61 * -3.0)) + (v63 * -9.0)) + (v64 * 3.0);
          v66 = ((v62 * -12.0) + (v61 * 6.0)) + (v63 * 6.0);
          v67 = (v62 * 3.0) + (v61 * -3.0);
          v68 = (v67 * (v65 * -4.0)) + (v66 * v66);
          if (v68 <= 0.0)
          {
            v83 = v60;
            if (v9)
            {
              [v3 moveToPoint:?];
            }

            else
            {
              [v3 lineToPoint:?];
            }

            v84 = v106.f64[0];
            v85 = v106.f64[1] + v83;
            v86 = v109;
            v87 = v110 + v83;
            v88 = v107;
            v89 = v108;
          }

          else
          {
            v69 = sqrtf(v68);
            v70 = (-v66 - v69) / (v65 + v65);
            v71 = (v69 - v66) / (v65 + v65);
            if (v71 <= v70)
            {
              v72 = v71;
            }

            else
            {
              v72 = v70;
            }

            if (v71 > v70)
            {
              v70 = v71;
            }

            v73 = fabsf(v65);
            v74 = -v67 / v66;
            if (v73 <= 0.001)
            {
              v75 = 10.0;
            }

            else
            {
              v75 = v72;
            }

            if (v73 <= 0.001)
            {
              v70 = v74;
            }

            v76 = 1.0;
            if (v70 > 0.0 && v70 < 1.0)
            {
              v76 = v70;
              TSDCurveBetween(&v106, &v98, v70, 1.0);
              v78 = v60;
              v79 = v105 + v78;
              if (v9)
              {
                [v3 moveToPoint:{v104, v79}];
              }

              else
              {
                [v3 lineToPoint:{v104, v79}];
              }

              [v3 curveToPoint:v98 controlPoint1:v99 + v78 controlPoint2:{v102, v103 + v78, v100, v101 + v78}];
              v90 = v76 + -0.01;
              *&v90 = v76 + -0.01;
              [(TSDBezierPath *)self rawGradientAt:v51 fromElement:v90];
              v9 = 0;
              if (v91 >= 0.0)
              {
                v60 = -v5;
              }

              else
              {
                v60 = v5;
              }
            }

            if (v75 > 0.0 && v75 < 1.0)
            {
              v93 = v75;
              TSDCurveBetween(&v106, &v98, v93, v76);
              v94 = v105 + v60;
              if (v9)
              {
                [v3 moveToPoint:{v104, v94}];
              }

              else
              {
                [v3 lineToPoint:{v104, v94}];
              }

              [v3 curveToPoint:v98 controlPoint1:v99 + v60 controlPoint2:{v102, v103 + v60, v100, v101 + v60}];
              v95 = v93 + -0.01;
              *&v95 = v93 + -0.01;
              [(TSDBezierPath *)self rawGradientAt:v51 fromElement:v95];
              if (v96 >= 0.0)
              {
                v60 = -v5;
              }

              else
              {
                v60 = v5;
              }

              TSDCurveBetween(&v106, &v98, 0.0, v93);
            }

            else
            {
              TSDCurveBetween(&v106, &v98, 0.0, v76);
              if (v9)
              {
                v83 = v60;
                [v3 moveToPoint:{v104, v105 + v60}];
                v54 = 9.0;
                goto LABEL_113;
              }
            }

            v54 = 9.0;
            v83 = v60;
            [v3 lineToPoint:{v104, v105 + v60}];
LABEL_113:
            v84 = v98;
            v85 = v99 + v83;
            v86 = v102;
            v87 = v103 + v83;
            v88 = v100;
            v89 = v101;
          }

          [v3 curveToPoint:v84 controlPoint1:v85 controlPoint2:{v86, v87, v88, v89 + v83}];
          goto LABEL_115;
        }

        v82 = v108 + v60;
        if (v9)
        {
          [v3 moveToPoint:{v107, v82}];
        }

        else
        {
          [v3 lineToPoint:{v107, v82}];
        }

        v80 = v106.f64[0];
        v81 = v106.f64[1] + v60;
      }

      else
      {
        v80 = v106.f64[0];
        v81 = v106.f64[1] - v53;
      }

      [v3 lineToPoint:{v80, v81}];
LABEL_115:
      v9 = v57;
      --v51;
    }

    while (v51);
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [TSDBezierPath setVersion:524];
  }
}

+ (id)bezierPath
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (TSDBezierPath)bezierPathWithStart:(CGPoint)start end:(CGPoint)end
{
  y = end.y;
  x = end.x;
  v6 = start.y;
  v7 = start.x;
  bezierPath = [self bezierPath];
  [(TSDBezierPath *)bezierPath moveToPoint:v7, v6];
  [(TSDBezierPath *)bezierPath lineToPoint:x, y];
  return bezierPath;
}

+ (TSDBezierPath)bezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [(TSDBezierPath *)bezierPath appendBezierPathWithRect:x, y, width, height];
  return bezierPath;
}

+ (TSDBezierPath)bezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [(TSDBezierPath *)bezierPath appendBezierPathWithOvalInRect:x, y, width, height];
  return bezierPath;
}

+ (TSDBezierPath)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius
{
  v4 = TSDCreateRoundRectPathForRectWithRadius(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, radius);
  v5 = [TSDBezierPath bezierPathWithCGPath:v4];
  CGPathRelease(v4);
  return v5;
}

- (void)copyPathAttributesTo:(id)to
{
  [to setWindingRule:{-[TSDBezierPath windingRule](self, "windingRule")}];
  [to setLineCapStyle:{-[TSDBezierPath lineCapStyle](self, "lineCapStyle")}];
  [to setLineJoinStyle:{-[TSDBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(TSDBezierPath *)self lineWidth];
  [to setLineWidth:?];
  [(TSDBezierPath *)self miterLimit];
  [to setMiterLimit:?];
  [(TSDBezierPath *)self flatness];
  [to setFlatness:?];
  if (self->sfr_dashedLinePattern)
  {
    sfr_dashedLinePhase = self->sfr_dashedLinePhase;

    [to setLineDash:sfr_dashedLinePhase count:? phase:?];
  }
}

+ (TSDBezierPath)bezierPathWithCGPath:(CGPath *)path
{
  bezierPath = [self bezierPath];
  CGPathApply(path, bezierPath, pBuildBezierPath);
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
      CGContextSetLineCap(CurrentContext, sfrdefaultLineCapStyle);
      CGContextSetLineJoin(CurrentContext, sfrdefaultLineJoinStyle);
      _SFRSetLineWidth(CurrentContext, *&sfrdefaultLineWidth);
      CGContextSetMiterLimit(CurrentContext, *&sfrdefaultMiterLimit);
      CGContextBeginPath(CurrentContext);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MinX = CGRectGetMinX(v17);
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      MinY = CGRectGetMinY(v18);
      CGContextMoveToPoint(CurrentContext, MinX, MinY);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MaxX = CGRectGetMaxX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v11 = CGRectGetMinY(v20);
      CGContextAddLineToPoint(CurrentContext, MaxX, v11);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v12 = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MaxY = CGRectGetMaxY(v22);
      CGContextAddLineToPoint(CurrentContext, v12, MaxY);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v14 = CGRectGetMinX(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = CGRectGetMaxY(v24);
      CGContextAddLineToPoint(CurrentContext, v14, v15);
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

      CGContextClipToRect(CurrentContext, *&v8);
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
  CGContextSetLineCap(CurrentContext, sfrdefaultLineCapStyle);
  CGContextSetLineJoin(CurrentContext, sfrdefaultLineJoinStyle);
  _SFRSetLineWidth(CurrentContext, *&sfrdefaultLineWidth);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7, v6);
  CGContextAddLineToPoint(CurrentContext, x, y);
  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (TSDBezierPath)init
{
  v6.receiver = self;
  v6.super_class = TSDBezierPath;
  result = [(TSDBezierPath *)&v6 init];
  sfr_bpFlags = result->sfr_bpFlags;
  *&result->sfr_elementCount = 0u;
  *&result->sfr_head = 0u;
  result->sfr_extraSegmentCount = 0;
  result->sfr_extraSegmentMax = 0;
  result->sfr_totalLength = 0.0;
  result->sfr_lastSubpathIndex = -1;
  result->sfr_extraSegments = 0;
  v4 = (((8 * sfrdefaultWindingRule) | (sfrdefaultLineCapStyle << 6)) | 5 | *&sfr_bpFlags & 0xFFFFF800 | (16 * (sfrdefaultLineJoinStyle & 0xF)));
  *&result->sfr_lineWidth = sfrdefaultLineWidth;
  v5 = *&sfrdefaultFlatness;
  *&result->sfr_miterLimit = sfrdefaultMiterLimit;
  result->sfr_flatness = v5;
  result->sfr_dashedLinePattern = 0;
  result->sfr_dashedLineCount = 0;
  result->sfr_dashedLinePhase = 0.0;
  result->sfr_bpFlags = v4;
  return result;
}

- (void)dealloc
{
  v3 = [(TSDBezierPath *)self zone];
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
  v7.super_class = TSDBezierPath;
  [(TSDBezierPath *)&v7 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 appendBezierPath:self];
  [v4 setWindingRule:{-[TSDBezierPath windingRule](self, "windingRule")}];
  [v4 setLineCapStyle:{-[TSDBezierPath lineCapStyle](self, "lineCapStyle")}];
  [v4 setLineJoinStyle:{-[TSDBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(TSDBezierPath *)self lineWidth];
  [v4 setLineWidth:?];
  [(TSDBezierPath *)self miterLimit];
  [v4 setMiterLimit:?];
  [(TSDBezierPath *)self flatness];
  [v4 setFlatness:?];
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    [v4 setLineDash:sfr_dashedLinePattern count:self->sfr_dashedLineCount phase:self->sfr_dashedLinePhase];
  }

  return v4;
}

- (void)lineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(TSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
  }

  [(TSDBezierPath *)self _deviceLineToPoint:x, y];
}

- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  if ([(TSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for curve"];
  }

  [(TSDBezierPath *)self _deviceCurveToPoint:v10 controlPoint1:v9 controlPoint2:v8, v7, x, y];
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

  self->sfr_bpFlags = (*&sfr_bpFlags | 1);
}

- (void)relativeMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(TSDBezierPath *)self _deviceMoveToPoint:v7, v9];
}

- (void)relativeLineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(TSDBezierPath *)self _deviceLineToPoint:v7, v9];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  [(TSDBezierPath *)self currentPoint];
  v13 = v8 + v12;
  v15 = v7 + v14;
  v16 = x + v12;
  v17 = y + v14;
  v18 = v10 + v12;
  v19 = v9 + v14;

  [(TSDBezierPath *)self _deviceCurveToPoint:v18 controlPoint1:v19 controlPoint2:v13, v15, v16, v17];
}

- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase
{
  p_sfr_dashedLinePattern = &self->sfr_dashedLinePattern;
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (dash)
  {
    dashCopy = dash;
    v11 = [(TSDBezierPath *)self zone];
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
    NSZoneFree([(TSDBezierPath *)self zone], self->sfr_dashedLinePattern);
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

- (void)_doPath
{
  if (!self->sfr_path && ![(TSDBezierPath *)self isEmpty])
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
        v8 = *sfr_head & 0xF;
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            CGPathAddCurveToPoint(Mutable, 0, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
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
            CGPathAddLineToPoint(Mutable, 0, *&sfr_head[2], *&sfr_head[4]);
          }
        }

        else
        {
          CGPathMoveToPoint(Mutable, 0, *&sfr_head[2], *&sfr_head[4]);
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
  CGContextSetLineCap(CurrentContext, [(TSDBezierPath *)self lineCapStyle]);
  CGContextSetLineJoin(CurrentContext, [(TSDBezierPath *)self lineJoinStyle]);
  _SFRSetLineWidth(CurrentContext, self->sfr_lineWidth);
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
    v7 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v9 = *sfr_head & 0xF;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v9 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
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

    while (sfr_head < v7);
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

  if ([(TSDBezierPath *)self windingRule])
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

  if ([(TSDBezierPath *)self windingRule])
  {
    CGContextEOClip(CurrentContext);
  }

  else
  {
    CGContextClip(CurrentContext);
  }

  CGContextBeginPath(CurrentContext);
}

- (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint
{
  pointCopy = point;
  point.x = endPoint.x;
  *&v7 = endPoint.y;
  y = point1.y;
  v11 = vsubq_f64(point1, pointCopy);
  v12 = point2.y;
  pointCopy2 = point;
  v39 = v7;
  v13 = endPoint.y;
  v14 = vsubq_f64(point2, point1);
  v15 = vsubq_f64(v14, v11);
  v16 = vsubq_f64(vsubq_f64(point, point2), v14);
  v17 = vzip2q_s64(v15, v16);
  v18 = vzip1q_s64(v15, v16);
  v19 = vmlaq_f64(vmulq_f64(v17, v17), v18, v18);
  if (v19.f64[0] <= v19.f64[1])
  {
    v19.f64[0] = v19.f64[1];
  }

  v20 = flatness * flatness;
  v21 = v19.f64[0] * 9.0 * 0.0625;
  if (v21 > v20)
  {
    v22 = vsubq_f64(v16, v15);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v29 = vmulq_f64(v22, _Q6);
    v30 = vmlaq_f64(v22, _Q5, vaddq_f64(v11, v15));
    v31 = vmulq_f64(vaddq_f64(v15, v22), _Q6);
    v32 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v36 = v32;
      v29 = vmulq_f64(v29, _Q2);
      v31 = vsubq_f64(vmulq_f64(v31, _Q3), v29);
      v30 = vsubq_f64(vmulq_f64(v30, _Q4), vmulq_f64(v31, _Q4));
      v32 *= 2;
      v21 = v21 * 0.0625;
    }

    while (v21 > v20 && v32 <= 0x10000);
    if (v32 >= 2)
    {
      v37 = (2 * v36) | 1;
      do
      {
        v42 = v29;
        v43 = vaddq_f64(pointCopy, v30);
        v40 = vaddq_f64(v29, v31);
        v41 = vaddq_f64(v30, v31);
        [(TSDBezierPath *)self lineToPoint:*&v43, pointCopy2, v39];
        v31 = v40;
        v30 = v41;
        v29 = v42;
        pointCopy = v43;
        --v37;
      }

      while (v37 > 2);
    }
  }

  [(TSDBezierPath *)self lineToPoint:pointCopy2.x, *&v39];
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
          [path subdivideBezierWithFlatness:flatness startPoint:*&sfr_head[-4] controlPoint1:*&sfr_head[-2] controlPoint2:*sfr_extraSegments endPoint:{sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]}];
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

- (id)bezierPathByFlatteningPath
{
  if ((*&self->sfr_bpFlags & 4) != 0)
  {
    v3 = [(TSDBezierPath *)self copy];
  }

  else
  {
    v3 = objc_alloc_init(objc_opt_class());
    [(TSDBezierPath *)self flattenIntoPath:v3 flatness:*&sfrdefaultFlatness];
  }

  return v3;
}

- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness
{
  if ([(TSDBezierPath *)self isFlat])
  {
    v5 = [(TSDBezierPath *)self copy];
  }

  else
  {
    v5 = objc_alloc_init(objc_opt_class());
    [(TSDBezierPath *)self flattenIntoPath:v5 flatness:flatness];
  }

  return v5;
}

- (id)_copyFlattenedPath
{
  v3 = objc_alloc_init(objc_opt_class());
  [(TSDBezierPath *)self flattenIntoPath:v3 flatness:*&sfrdefaultFlatness];
  return v3;
}

- (id)bezierPathByReversingPath
{
  if (self->sfr_elementCount <= 1)
  {
    v3 = [(TSDBezierPath *)self copy];
    goto LABEL_31;
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
      v9 = v8;
      v10 = *&sfr_head[6] & 0xFLL;
      if (!v10 || &sfr_head[12] >= v6)
      {
        break;
      }

LABEL_30:
      v8 = v9 + 6;
      sfr_head = v9;
      if (&v9[6] >= v6)
      {
        goto LABEL_31;
      }
    }

    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = sfr_head;
    }

    [v3 moveToPoint:{*&v12[2], *&v12[4]}];
    v13 = 0;
    for (i = &v12[-2]; ; i -= 3)
    {
      v15 = i[1] & 0xFLL;
      if ((i[1] & 0xFu) <= 1)
      {
        if (v15 == 1)
        {
          if ((v13 & 1) == 0 || (*(i - 2) & 0xF) != 0)
          {
            [v3 lineToPoint:{*(i - 1), *i}];
            continue;
          }

LABEL_24:
          [v3 closePath];
LABEL_25:
          v13 = 1;
          continue;
        }

        if (!v15)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 != 3)
          {
            continue;
          }

          [v3 lineToPoint:{*(i - 1), *i}];
          goto LABEL_25;
        }

        v16 = &sfr_extraSegments[32 * (*(i + 1) >> 4)];
        [v3 curveToPoint:*(i - 1) controlPoint1:*i controlPoint2:{v16[2], v16[3], *v16, v16[1]}];
        if (v13)
        {
          if ((*(i - 2) & 0xF) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        v13 = 0;
      }
    }
  }

LABEL_31:

  return v3;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    do
    {
      *&sfr_head[2] = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, *&sfr_head[4]), *&transform->a, *&sfr_head[2]));
      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  sfr_extraSegments = self->sfr_extraSegments;
  if (sfr_extraSegments)
  {
    sfr_extraSegmentCount = self->sfr_extraSegmentCount;
    if (sfr_extraSegmentCount >= 1)
    {
      v9 = &sfr_extraSegments[4 * sfr_extraSegmentCount];
      do
      {
        *sfr_extraSegments = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[1]), *&transform->a, *sfr_extraSegments));
        *(sfr_extraSegments + 1) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[3]), *&transform->a, sfr_extraSegments[2]));
        sfr_extraSegments += 4;
      }

      while (sfr_extraSegments < v9);
    }
  }

  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 1u;
}

- (BOOL)isTriangular
{
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v4 = elementCount;
    v5 = elementCount - 1;
    if ([(TSDBezierPath *)self elementAtIndex:elementCount - 1])
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

  isFlat = [(TSDBezierPath *)self isFlat];
  result = 0;
  if (isFlat && (v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = 1;
    while ([(TSDBezierPath *)self elementAtIndex:v9]== 1)
    {
      if (v6 == ++v9)
      {
        v10 = v6 - 1;
        goto LABEL_13;
      }
    }

    v10 = v9 - 1;
LABEL_13:
    if ([(TSDBezierPath *)self elementAtIndex:v6 - 1]== 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10;
    }

    result = 0;
    if (v6 == v11 + 1)
    {
      if (v10 != 3)
      {
        return 1;
      }

      v15 = 0.0;
      v16 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      [(TSDBezierPath *)self elementAtIndex:0 associatedPoints:&v15];
      [(TSDBezierPath *)self elementAtIndex:3 associatedPoints:&v13];
      if (v15 == v13 && v16 == v14)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isDiamond
{
  elementCount = [(TSDBezierPath *)self elementCount];
  if (!elementCount)
  {
    [(TSDBezierPath *)self isFlat];
    return 0;
  }

  v4 = elementCount;
  v5 = elementCount - 1;
  if (![(TSDBezierPath *)self elementAtIndex:elementCount - 1])
  {
    v4 = v5;
  }

  isFlat = [(TSDBezierPath *)self isFlat];
  result = 0;
  if (isFlat && v4 == 5)
  {
    v8 = -5;
    v9 = 4;
    while ([(TSDBezierPath *)self elementAtIndex:v8 + 6]== 1)
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
    v10 = [(TSDBezierPath *)self elementAtIndex:4];
    if (v9 != 3 || v10 == 3)
    {
      [(TSDBezierPath *)self bounds];
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
        [(TSDBezierPath *)self elementAtIndex:v16 associatedPoints:&v20, v19];
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
  LODWORD(elementCount) = [(TSDBezierPath *)self isFlat];
  if (elementCount)
  {
    elementCount = [(TSDBezierPath *)self elementCount];
    if (elementCount)
    {
      v4 = elementCount;
      v5 = elementCount - 1;
      if ([(TSDBezierPath *)self elementAtIndex:elementCount - 1])
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
        while ([(TSDBezierPath *)self elementAtIndex:v9]== 1)
        {
          if (v6 == ++v9)
          {
            v10 = v6 - 1;
            goto LABEL_19;
          }
        }

        v10 = v9 - 1;
LABEL_19:
        v11 = [(TSDBezierPath *)self elementAtIndex:v6 - 1];
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
          [(TSDBezierPath *)self bounds];
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
            [(TSDBezierPath *)self elementAtIndex:v20 associatedPoints:v21];
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
        bezierPathByRemovingRedundantElements = [(TSDBezierPath *)self bezierPathByRemovingRedundantElements];
        elementCount2 = [bezierPathByRemovingRedundantElements elementCount];
        if (elementCount2 >= [(TSDBezierPath *)self elementCount])
        {
LABEL_7:
          LOBYTE(elementCount) = 0;
          return elementCount;
        }

        LOBYTE(elementCount) = [bezierPathByRemovingRedundantElements isRectangular];
      }
    }
  }

  return elementCount;
}

- (BOOL)isCircular
{
  v25[5] = *MEMORY[0x277D85DE8];
  [(TSDBezierPath *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v12 = elementCount;
    v13 = 0;
    v14 = 0;
    v15 = v4 + v8 * 0.5;
    v16 = v6 + v10 * 0.5;
    while (1)
    {
      v17 = [(TSDBezierPath *)self elementAtIndex:v13 associatedPoints:v24, *&v23];
      if (v17 == 2)
      {
        if (fabs(TSDPointLength((v25[2] - v15) / v8, (v25[3] - v16) / v10) + -0.5) > 0.0001)
        {
          return v14;
        }

        v19 = TSDPointOnCurve(&v23, 0.5);
        v21 = TSDPointLength((v19 - v15) / v8, (v20 - v16) / v10);
        v18 = v25;
        if (fabs(v21 + -0.5) > 0.0001)
        {
          return v14;
        }
      }

      else
      {
        v18 = v24;
        if (v17 == 1)
        {
          return v14;
        }
      }

      v23 = *v18;
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
  if ([(TSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
  }

  v3 = &self->sfr_head[6 * self->sfr_elementCount];
  v4 = *&v3[-4];
  v5 = *&v3[-2];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)controlPointBounds
{
  if ([(TSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for control point bounds"];
  }

  sfr_bpFlags = self->sfr_bpFlags;
  if (*&sfr_bpFlags)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    v9 = *&sfr_head[2];
    if (sfr_elementCount < 2)
    {
      v4 = *&sfr_head[2];
    }

    else
    {
      v10 = &sfr_head[6 * sfr_elementCount];
      v11 = sfr_head + 6;
      v4 = v9;
      do
      {
        if ((*v11 & 0xF) != 3 && ((*v11 & 0xF) != 0 || &v11[6] < v10))
        {
          v13 = *&v11[2];
          v4 = vbslq_s8(vcgtq_f64(v13, v4), v4, v13);
          v9 = vbslq_s8(vcgtq_f64(v9, v13), v9, v13);
        }

        v11 += 6;
      }

      while (v11 < v10);
    }

    sfr_extraSegments = self->sfr_extraSegments;
    if (sfr_extraSegments)
    {
      sfr_extraSegmentCount = self->sfr_extraSegmentCount;
      if (sfr_extraSegmentCount >= 1)
      {
        v16 = &sfr_extraSegments[2 * sfr_extraSegmentCount];
        do
        {
          v17 = *sfr_extraSegments;
          v18 = sfr_extraSegments[1];
          sfr_extraSegments += 2;
          v19 = vbslq_s8(vcgtq_f64(v17, v4), v4, v17);
          v20 = vbslq_s8(vcgtq_f64(v9, v17), v9, v17);
          v4 = vbslq_s8(vcgtq_f64(v18, v19), v19, v18);
          v9 = vbslq_s8(vcgtq_f64(v20, v18), v20, v18);
        }

        while (sfr_extraSegments < v16);
      }
    }

    self->sfr_controlPointBounds.origin = v4;
    size = vsubq_f64(v9, v4);
    self->sfr_controlPointBounds.size = size;
    self->sfr_bpFlags = (*&sfr_bpFlags & 0xFFFFFFFE);
    y = v4.y;
  }

  else
  {
    v4.x = self->sfr_controlPointBounds.origin.x;
    y = self->sfr_controlPointBounds.origin.y;
    size = self->sfr_controlPointBounds.size;
  }

  v21 = size.f64[1];
  result.size.width = size.f64[0];
  result.origin.x = v4.x;
  result.size.height = v21;
  result.origin.y = y;
  return result;
}

- (CGRect)bounds
{
  if ((*&self->sfr_bpFlags & 4) != 0)
  {
    [(TSDBezierPath *)self controlPointBounds];
  }

  else
  {
    [(TSDBezierPath *)self _doPath];
    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      return CGPathGetPathBoundingBox(sfr_path);
    }

    else
    {
      return **&MEMORY[0x277CBF3A0];
    }
  }

  return result;
}

- (BOOL)isFlat
{
  elementCount = [(TSDBezierPath *)self elementCount];
  if (!elementCount)
  {
    return 1;
  }

  v4 = elementCount;
  if ([(TSDBezierPath *)self elementAtIndex:0]== 2)
  {
    return 0;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (v4 == v6)
    {
      break;
    }

    v8 = [(TSDBezierPath *)self elementAtIndex:v6];
    v6 = v7 + 1;
  }

  while (v8 != 2);
  return v7 >= v4;
}

- (BOOL)isClockwise
{
  v17 = *MEMORY[0x277D85DE8];
  elementCount = [(TSDBezierPath *)self elementCount];
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
      v12 = [(TSDBezierPath *)self elementAtIndex:v5 associatedPoints:&v15];
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          NSLog(@"Warning: Path should be flat. Illegal TSDCurveToBezierPathElement.");
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
          if (v7 != v15 || v8 != v16)
          {
            v9 = v7 * v16 - v8 * v15 + v9;
          }

          v6 = 1;
          v7 = v15;
          v8 = v16;
        }
      }

      else
      {
        v11 = v15;
        v10 = v16;
        v7 = v15;
        v8 = v16;
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

- (double)calculateLengthOfElement:(int64_t)element
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (element)
  {
    v4 = [(TSDBezierPath *)self elementAtIndex:element allPoints:&v9];
    switch(v4)
    {
      case 3uLL:
        goto LABEL_5;
      case 2uLL:
        v8 = 0.0;
        addifclose(&v9, &v8);
        return v8;
      case 1uLL:
LABEL_5:
        v5 = (v10 - v12) * (v10 - v12) + (v9 - v11) * (v9 - v11);
        return sqrtf(v5);
    }
  }

  return v3;
}

- (void)calculateLengths
{
  self->sfr_totalLength = 0.0;
  elementCount = [(TSDBezierPath *)self elementCount];
  self->sfr_elementLength = NSZoneRealloc([(TSDBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
  if (elementCount >= 1)
  {
    for (i = 0; i != elementCount; ++i)
    {
      [(TSDBezierPath *)self calculateLengthOfElement:i];
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
    [(TSDBezierPath *)self calculateLengths];
  }

  return self->sfr_totalLength;
}

- (double)lengthOfElement:(int64_t)element
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(TSDBezierPath *)self calculateLengths];
  }

  return self->sfr_elementLength[element];
}

- (double)lengthToElement:(int64_t)element
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(TSDBezierPath *)self calculateLengths];
  }

  if (self->sfr_elementCount < element)
  {
    [(TSDBezierPath *)a2 lengthToElement:?];
  }

  if (element < 1)
  {
    return 0.0;
  }

  sfr_elementLength = self->sfr_elementLength;
  result = 0.0;
  do
  {
    v8 = *sfr_elementLength++;
    result = result + v8;
    --element;
  }

  while (element);
  return result;
}

- (unint64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%@: index (%ld) beyond bounds (%ld)", NSStringFromSelector(a2), index, self->sfr_elementCount}];
  }

  v7 = &self->sfr_head[6 * index];
  if (points)
  {
    if ((*v7 & 0xFLL) == 2)
    {
      v8 = (self->sfr_extraSegments + 32 * (*v7 >> 4));
      *points = *v8;
      points[1] = v8[1];
      points += 2;
    }

    *points = *&v7[2];
  }

  return *v7 & 0xFLL;
}

- (unint64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%@: index (%ld) beyond bounds (%ld)", NSStringFromSelector(a2), index, self->sfr_elementCount}];
  }

  v7 = &self->sfr_head[6 * index];
  if (points)
  {
    v8 = *v7;
    if ((*v7 & 0xFLL) != 0)
    {
      *points = *&v7[-4];
      v8 = *v7;
    }

    if ((v8 & 0xF) != 0)
    {
      if ((v8 & 0xF) == 2)
      {
        v9 = (self->sfr_extraSegments + 32 * (v8 >> 4));
        points[1] = *v9;
        points[2] = v9[1];
        points += 3;
      }

      else
      {
        ++points;
      }
    }

    *points = *&v7[2];
  }

  return *v7 & 0xFLL;
}

- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"%@: index (%ld) beyond bounds (%ld)", NSStringFromSelector(a2), index, self->sfr_elementCount}];
  }

  v7 = &self->sfr_head[6 * index];
  if ((*v7 & 0xFLL) == 2)
  {
    v8 = (self->sfr_extraSegments + 32 * (*v7 >> 4));
    *v8 = *points;
    v9 = points[1];
    points += 2;
    v8[1] = v9;
  }

  *&v7[2] = *points;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 1u;
}

- (void)_appendToPath:(id)path
{
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
          [path curveToPoint:*&sfr_head[2] controlPoint1:*&sfr_head[4] controlPoint2:{*sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3]}];
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          [path closePath];
        }
      }

      else if (v8)
      {
        if (v8 == 1)
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

    while (sfr_head < v6);
  }
}

- (void)appendBezierPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {

    [path _appendToPath:self];
  }

  else
  {
    elementCount = [path elementCount];
    if (elementCount >= 1)
    {
      v7 = elementCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [path elementAtIndex:i associatedPoints:&v10];
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            [(TSDBezierPath *)self curveToPoint:v14 controlPoint1:v15 controlPoint2:v10, v11, v12, v13];
          }

          else if (v9 == 3)
          {
            [(TSDBezierPath *)self closePath];
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            [(TSDBezierPath *)self lineToPoint:v10, v11];
          }
        }

        else
        {
          [(TSDBezierPath *)self moveToPoint:v10, v11];
        }
      }
    }
  }
}

- (void)appendBezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDBezierPath *)self moveToPoint:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MaxX = CGRectGetMaxX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(TSDBezierPath *)self lineToPoint:MaxX, CGRectGetMinY(v13)];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMaxX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [(TSDBezierPath *)self lineToPoint:v9, CGRectGetMaxY(v15)];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(TSDBezierPath *)self lineToPoint:MinX, CGRectGetMaxY(v17)];

  [(TSDBezierPath *)self closePath];
}

- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count
{
  if (count >= 1)
  {
    if ([(TSDBezierPath *)self isEmpty]|| (*&self->sfr_bpFlags & 0x300) == 0x100)
    {
      [(TSDBezierPath *)self moveToPoint:points->x, points->y];
    }

    else
    {
      [(TSDBezierPath *)self lineToPoint:points->x, points->y];
    }

    v7 = count - 1;
    if (v7)
    {
      p_y = &points[1].y;
      do
      {
        [(TSDBezierPath *)self lineToPoint:*(p_y - 1), *p_y];
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
  v8 = objc_alloc_init(TSDBezierPath);
  [(TSDBezierPath *)v8 appendBezierPathWithArcWithCenter:*MEMORY[0x277CBF348] radius:*(MEMORY[0x277CBF348] + 8) startAngle:1.0 endAngle:-45.0, 315.0];
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
  [(TSDBezierPath *)v8 transformUsingAffineTransform:&v15];
  [(TSDBezierPath *)self appendBezierPath:v8];
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

  [(TSDBezierPath *)self _deviceCurveToPoint:x + radius * v18.__cosval controlPoint1:y + radius * v18.__sinval controlPoint2:v16, v17, x + radius * v18.__cosval + v15 * v18.__sinval, y + radius * v18.__sinval - v15 * v18.__cosval];
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  y = center.y;
  x = center.x;
  if (__fpclassifyd(angle) < 3 || __fpclassifyd(endAngle) <= 2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@: illegal angle argument", NSStringFromSelector(a2)}];
  }

  v15 = angle * 3.14159265 / 180.0;
  v16 = endAngle * 3.14159265;
  v17 = __sincos_stret(v15);
  v18 = x + radius * v17.__cosval;
  v19 = y + radius * v17.__sinval;
  if ([(TSDBezierPath *)self isEmpty])
  {
    [(TSDBezierPath *)self _deviceMoveToPoint:v18, v19];
  }

  else
  {
    [(TSDBezierPath *)self _deviceLineToPoint:v18, v19];
  }

  v20 = v16 / 180.0;
  if (clockwise)
  {
      ;
    }

    v21 = v15 - v20;
    if (v15 - v20 > 1.57079633)
    {
      do
      {
        v22 = v15 + -1.57079633;
        [(TSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v15, v15 + -1.57079633];
        v21 = v22 - v20;
        v15 = v15 + -1.57079633;
      }

      while (v22 - v20 > 1.57079633);
      goto LABEL_19;
    }

LABEL_18:
    v22 = v15;
    goto LABEL_19;
  }

    ;
  }

  v21 = v20 - v15;
  if (v20 - v15 <= 1.57079633)
  {
    goto LABEL_18;
  }

  do
  {
    v22 = v15 + 1.57079633;
    [(TSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v15, v15 + 1.57079633];
    v21 = v20 - v22;
    v15 = v15 + 1.57079633;
  }

  while (v20 - v22 > 1.57079633);
LABEL_19:
  if (v21 > 0.0)
  {

    [(TSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v22, v20];
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
  [(TSDBezierPath *)self currentPoint];
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
  [(TSDBezierPath *)self appendBezierPathWithArcWithCenter:vmovn_s64(vmvnq_s8(vcgtq_f64(v29 radius:v36))).i8[4] & 1 startAngle:vaddq_f64(v24 endAngle:vaddq_f64(*&v38.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v38.c, radiusCopy), *&v38.a, v25))), radius, (v17 + v23) * 180.0 / 3.14159265, (v17 + v19) * 180.0 / 3.14159265];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((containsPoint__doWindingRule & 1) == 0)
  {
    containsPoint__doWindingRule = 1;
  }

  [(TSDBezierPath *)self _doPath];
  sfr_path = self->sfr_path;
  if (!sfr_path)
  {
    return 0;
  }

  v7 = [(TSDBezierPath *)self windingRule]== 1;
  v8 = x;
  v9 = y;

  return CGPathContainsPoint(sfr_path, 0, *&v8, v7);
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    windingRule = [(TSDBezierPath *)self windingRule];
    lineCapStyle = [(TSDBezierPath *)self lineCapStyle];
    lineJoinStyle = [(TSDBezierPath *)self lineJoinStyle];
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v11 = &sfr_head[6 * sfr_elementCount];
      sfr_extraSegments = self->sfr_extraSegments;
      v13 = 9 * (sfr_elementCount + 2 * self->sfr_extraSegmentCount);
      v14 = NSZoneMalloc([(TSDBezierPath *)self zone], v13);
      v15 = v14;
      do
      {
        v16 = *sfr_head;
        if ((*sfr_head & 0xFLL) == 2)
        {
          *v15 = 2;
          *(v15 + 1) = vrev32_s8(vcvt_f32_f64(*sfr_extraSegments));
          v15[9] = 2;
          *(v15 + 10) = vrev32_s8(vcvt_f32_f64(sfr_extraSegments[1]));
          v15 += 18;
          sfr_extraSegments += 2;
          v16 = *sfr_head;
        }

        *v15 = v16 & 0xF;
        *(v15 + 1) = vrev32_s8(vcvt_f32_f64(*&sfr_head[2]));
        v15 += 9;
        sfr_head += 6;
      }

      while (sfr_head < v11);
      [coder encodeBytes:v14 length:v13 forKey:@"TSDSegments"];
      NSZoneFree([(TSDBezierPath *)self zone], v14);
    }

    if (windingRule)
    {
      *&v8 = windingRule;
      [coder encodeFloat:@"TSDWindingRule" forKey:v8];
    }

    if (lineCapStyle)
    {
      *&v8 = lineCapStyle;
      [coder encodeFloat:@"TSDCapStyle" forKey:v8];
    }

    if (lineJoinStyle)
    {
      *&v8 = lineJoinStyle;
      [coder encodeFloat:@"TSDJoinStyle" forKey:v8];
    }

    if (self->sfr_lineWidth != 1.0)
    {
      [coder encodeDouble:@"TSDLineWidth" forKey:?];
    }

    if (self->sfr_miterLimit != 10.0)
    {
      [coder encodeDouble:@"TSDMiterLimit" forKey:?];
    }

    if (self->sfr_flatness != 0.6)
    {
      [coder encodeDouble:@"TSDFlatness" forKey:?];
    }

    if (self->sfr_dashedLineCount)
    {
      [coder encodeDouble:@"TSDDashPhase" forKey:self->sfr_dashedLinePhase];
      v17 = 4 * self->sfr_dashedLineCount;
      v18 = NSZoneMalloc([(TSDBezierPath *)self zone], v17);
      v19 = v18;
      sfr_dashedLineCount = self->sfr_dashedLineCount;
      if (sfr_dashedLineCount >= 1)
      {
        sfr_dashedLinePattern = self->sfr_dashedLinePattern;
        v22 = v18;
        do
        {
          v23 = *sfr_dashedLinePattern++;
          *&v24 = v23;
          *v22++ = bswap32(v24);
          --sfr_dashedLineCount;
        }

        while (sfr_dashedLineCount);
      }

      [coder encodeBytes:v18 length:v17 forKey:@"TSDDashPatterns"];
      v25 = [(TSDBezierPath *)self zone];

      NSZoneFree(v25, v19);
    }
  }

  else
  {
    v53 = (self->sfr_elementCount + 2 * self->sfr_extraSegmentCount);
    windingRule2 = [(TSDBezierPath *)self windingRule];
    lineCapStyle2 = [(TSDBezierPath *)self lineCapStyle];
    lineJoinStyle2 = [(TSDBezierPath *)self lineJoinStyle];
    sfr_lineWidth = self->sfr_lineWidth;
    sfr_flatness = self->sfr_flatness;
    sfr_miterLimit = self->sfr_miterLimit;
    v48 = sfr_miterLimit;
    v49 = sfr_lineWidth;
    v29 = sfr_flatness;
    v46 = self->sfr_dashedLineCount;
    v47 = v29;
    [coder encodeValueOfObjCType:"i" at:&v53];
    v30 = self->sfr_elementCount;
    if (v30 >= 1)
    {
      v31 = self->sfr_head;
      v32 = &v31[6 * v30];
      v33 = self->sfr_extraSegments;
      do
      {
        v45 = *v31 & 0xF;
        if (v45 == 2)
        {
          v34 = *v33;
          v35 = v33[1];
          v43 = v35;
          v44 = v34;
          [coder encodeValuesOfObjCTypes:{"cff", &v45, &v44, &v43}];
          v36 = v33[2];
          v37 = v33[3];
          v43 = v37;
          v44 = v36;
          [coder encodeValuesOfObjCTypes:{"cff", &v45, &v44, &v43}];
          v33 += 4;
        }

        v38 = *&v31[2];
        v39 = *&v31[4];
        v43 = v39;
        v44 = v38;
        [coder encodeValuesOfObjCTypes:{"cff", &v45, &v44, &v43}];
        v31 += 6;
      }

      while (v31 < v32);
    }

    [coder encodeValuesOfObjCTypes:{"iiifffi", &windingRule2, &lineCapStyle2, &lineJoinStyle2, &v49, &v48, &v47, &v46}];
    if (self->sfr_dashedLineCount)
    {
      sfr_dashedLinePhase = self->sfr_dashedLinePhase;
      v44 = sfr_dashedLinePhase;
      [coder encodeValueOfObjCType:"f" at:&v44];
      if (self->sfr_dashedLineCount >= 1)
      {
        v41 = 0;
        do
        {
          v42 = self->sfr_dashedLinePattern[v41];
          v44 = v42;
          [coder encodeValueOfObjCType:"f" at:&v44];
          ++v41;
        }

        while (v41 < self->sfr_dashedLineCount);
      }
    }
  }
}

- (TSDBezierPath)initWithCoder:(id)coder
{
  v4 = [(TSDBezierPath *)self init];
  if (![coder allowsKeyedCoding])
  {
    LODWORD(v48) = 0;
    v47 = 0;
    v46 = 0.0;
    v44 = 0;
    v45 = 0;
    v13 = [coder versionForClassName:@"TSDBezierPath"];
    [coder decodeValueOfObjCType:"i" at:&v48];
    if (v48)
    {
      v14 = 0;
      do
      {
        [coder decodeValuesOfObjCTypes:{"cff", &v47, &v46, &v45 + 4}];
        v15 = v46;
        v16 = *(&v45 + 1);
        if (v47 > 1u)
        {
          if (v47 == 2)
          {
            [coder decodeValuesOfObjCTypes:{"cff", &v47, &v46, &v45 + 4}];
            v17 = v46;
            v18 = *(&v45 + 1);
            [coder decodeValuesOfObjCTypes:{"cff", &v47, &v46, &v45 + 4}];
            v14 += 2;
            [(TSDBezierPath *)v4 curveToPoint:v46 controlPoint1:*(&v45 + 1) controlPoint2:v15, v16, v17, v18];
          }

          else if (v47 == 3)
          {
            [(TSDBezierPath *)v4 closePath];
          }
        }

        else if (v47)
        {
          if (v47 == 1)
          {
            [(TSDBezierPath *)v4 lineToPoint:v46, *(&v45 + 1)];
          }
        }

        else
        {
          [(TSDBezierPath *)v4 moveToPoint:v46, *(&v45 + 1)];
        }

        ++v14;
      }

      while (v14 < v48);
    }

    if (v13 > 523)
    {
      sfr_lineWidth = v4->sfr_lineWidth;
      sfr_flatness = v4->sfr_flatness;
      sfr_miterLimit = v4->sfr_miterLimit;
      v42 = sfr_miterLimit;
      v43 = sfr_lineWidth;
      v22 = sfr_flatness;
      sfr_dashedLineCount = v4->sfr_dashedLineCount;
      v41 = v22;
      [coder decodeValuesOfObjCTypes:{"iiifffi", &v45, &v44, &v44 + 4, &v43, &v42, &v41, &sfr_dashedLineCount}];
      [(TSDBezierPath *)v4 setWindingRule:v45];
      [(TSDBezierPath *)v4 setLineCapStyle:v44];
      [(TSDBezierPath *)v4 setLineJoinStyle:HIDWORD(v44)];
      v4->sfr_lineWidth = v43;
      v23 = v41;
      v4->sfr_miterLimit = v42;
      v4->sfr_flatness = v23;
      v24 = sfr_dashedLineCount;
      v4->sfr_dashedLineCount = sfr_dashedLineCount;
      if (v24)
      {
        v39 = 0.0;
        [coder decodeValueOfObjCType:"f" at:&v39];
        v4->sfr_dashedLinePhase = v39;
        v4->sfr_dashedLinePattern = NSZoneMalloc([(TSDBezierPath *)v4 zone], 8 * v4->sfr_dashedLineCount);
        if (v4->sfr_dashedLineCount)
        {
          v25 = 0;
          do
          {
            [coder decodeValueOfObjCType:"f" at:&v39];
            v4->sfr_dashedLinePattern[v25++] = v39;
          }

          while (v25 < v4->sfr_dashedLineCount);
        }
      }
    }

    else
    {
      v43 = 0.0;
      LOBYTE(v42) = 0;
      [coder decodeValuesOfObjCTypes:{"iiifc", &v45, &v44, &v44 + 4, &v43, &v42}];
      v4->sfr_lineWidth = v43;
      [(TSDBezierPath *)v4 setWindingRule:v45];
      [(TSDBezierPath *)v4 setLineCapStyle:v44];
      [(TSDBezierPath *)v4 setLineJoinStyle:HIDWORD(v44)];
    }

    return v4;
  }

  v48 = 0;
  v5 = [coder decodeBytesForKey:@"TSDSegments" returnedLength:&v48];
  if (!v5 || v48 <= 0)
  {
    goto LABEL_45;
  }

  v6 = v5 + v48;
  while (v5 + 1 <= v6)
  {
    v7 = v5->u8[0];
    if (v5 + 5 > v6)
    {
      break;
    }

    v8 = (v5 + 9);
    if (&v5[1] + 1 > v6)
    {
      break;
    }

    v9 = COERCE_FLOAT(bswap32(*(v5->u32 + 1)));
    v10 = COERCE_FLOAT(bswap32(*(&v5->u32[1] + 1)));
    if (v5->u8[0] > 1u)
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          [(TSDBezierPath *)v4 closePath];
        }

        goto LABEL_20;
      }

      v8 = (v5 + 14);
      if (&v5[1] + 6 <= v6)
      {
        if (&v5[2] + 2 <= v6)
        {
          v8 = (v5 + 19);
          v11 = (v5 + 23);
          if (&v5[2] + 7 <= v6)
          {
            v12 = (v5 + 27);
            if (&v5[3] + 3 <= v6)
            {
              [(TSDBezierPath *)v4 curveToPoint:vcvtq_f64_f32(vrev32_s8(*v8)) controlPoint1:v9 controlPoint2:v10, COERCE_FLOAT(bswap32(*(v5[1].u32 + 2))), COERCE_FLOAT(bswap32(*(&v5[1].u32[1] + 2)))];
              v8 = v12;
            }

            else
            {
              NSLog(@"ERROR: TSDBezierPath VALIDATE_NEW_BYTE_OFFSET_OF_TYPE_FOR_LIMIT. attempt to read to byte offset outside limit ");
              v8 = v11;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
        v8 = (v5 + 10);
      }

      NSLog(@"ERROR: TSDBezierPath VALIDATE_NEW_BYTE_OFFSET_OF_TYPE_FOR_LIMIT. attempt to read to byte offset outside limit ");
    }

    else if (v5->i8[0])
    {
      [(TSDBezierPath *)v4 lineToPoint:v9, v10];
    }

    else
    {
      [(TSDBezierPath *)v4 moveToPoint:v9, v10];
    }

LABEL_20:
    v5 = v8;
    if (v8 >= v6)
    {
      goto LABEL_45;
    }
  }

  NSLog(@"ERROR: TSDBezierPath VALIDATE_NEW_BYTE_OFFSET_OF_TYPE_FOR_LIMIT. attempt to read to byte offset outside limit ");
LABEL_45:
  -[TSDBezierPath setWindingRule:](v4, "setWindingRule:", [coder decodeInt32ForKey:@"TSDWindingRule"]);
  -[TSDBezierPath setLineCapStyle:](v4, "setLineCapStyle:", [coder decodeInt32ForKey:@"TSDCapStyle"]);
  -[TSDBezierPath setLineJoinStyle:](v4, "setLineJoinStyle:", [coder decodeInt32ForKey:@"TSDJoinStyle"]);
  v26 = [coder containsValueForKey:@"TSDLineWidth"];
  v27 = 1.0;
  if (v26)
  {
    [coder decodeDoubleForKey:{@"TSDLineWidth", 1.0}];
  }

  v4->sfr_lineWidth = v27;
  v28 = [coder containsValueForKey:@"TSDMiterLimit"];
  v29 = 10.0;
  if (v28)
  {
    [coder decodeDoubleForKey:{@"TSDMiterLimit", 10.0}];
  }

  v4->sfr_miterLimit = v29;
  if ([coder containsValueForKey:@"TSDFlatness"])
  {
    [coder decodeDoubleForKey:@"TSDFlatness"];
  }

  else
  {
    v30 = 0x3FE3333333333333;
  }

  *&v4->sfr_flatness = v30;
  v31 = [coder decodeBytesForKey:@"TSDDashPatterns" returnedLength:&v48];
  if (v31)
  {
    v32 = v48;
    if (v48)
    {
      v33 = v31;
      v4->sfr_dashedLineCount = v48 >> 2;
      [coder decodeDoubleForKey:@"TSDDashPhase"];
      v4->sfr_dashedLinePhase = v34;
      v35 = NSZoneMalloc([(TSDBezierPath *)v4 zone], 8 * v4->sfr_dashedLineCount);
      v4->sfr_dashedLinePattern = v35;
      if (v32 >= 1)
      {
        v36 = v33 + v32;
        while (1)
        {
          v37 = v33 + 1;
          if ((v33 + 1) > v36)
          {
            break;
          }

          *v35++ = COERCE_FLOAT(bswap32(*v33++));
          if (v37 >= v36)
          {
            return v4;
          }
        }

        NSLog(@"ERROR: TSDBezierPath VALIDATE_NEW_BYTE_OFFSET_OF_TYPE_FOR_LIMIT. attempt to read to byte offset outside limit ");
      }
    }
  }

  return v4;
}

- (const)cString
{
  *&v18[255] = *MEMORY[0x277D85DE8];
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
      v8 = &v17;
      v9 = 256;
    }

    else
    {
      v17 = 32;
      v8 = v18;
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

    [data appendBytes:&v17 length:&v8[v11] - &v17];
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
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath cString]"];
  [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"), 2252, @"Unhandled path element type"}];
LABEL_21:
  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath cString]"];
  [currentHandler2 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"), 2261, @"buffer too small for path element string"}];
LABEL_22:
  v17 = 0;
  [data appendBytes:&v17 length:1];
  return [data bytes];
}

- (TSDBezierPath)initWithCString:(const char *)string
{
  v4 = [(TSDBezierPath *)self init];
  v5 = v4;
  if (string)
  {
    if (v4)
    {
      if (*string)
      {
        v29 = 0;
        v28 = 0;
        if (sscanf(string, " %c%n", &v29, &v28) >= 1)
        {
          do
          {
            v6 = &string[v28];
            v28 = 0;
            v26 = 0;
            v27 = 0;
            v25 = 0;
            if (v29 > 0x62u)
            {
              if (v29 <= 0x6Cu)
              {
                if (v29 == 99)
                {
LABEL_27:
                  if (sscanf(v6, " %g %g %g %g %g %g%n", &v26 + 4, &v26, &v25 + 4, &v25, &v27 + 4, &v27, &v28) != 6)
                  {
                    currentHandler = [MEMORY[0x277D6C290] currentHandler];
                    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath initWithCString:]"];
                    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"];
                    v14 = currentHandler;
                    v15 = v21;
                    v16 = 2326;
                    v17 = @"Could not read bezier curve-to elmt";
                    goto LABEL_36;
                  }

                  [(TSDBezierPath *)v5 curveToPoint:*(&v27 + 1) controlPoint1:*&v27 controlPoint2:*(&v26 + 1), *&v26, *(&v25 + 1), *&v25];
                  goto LABEL_37;
                }

                if (v29 == 101)
                {
                  goto LABEL_37;
                }

                if (v29 != 108)
                {
                  goto LABEL_35;
                }

                goto LABEL_15;
              }

              if (v29 == 122)
              {
                goto LABEL_26;
              }

              if (v29 == 113)
              {
LABEL_29:
                v7 = sscanf(v6, " %g %g %g %g%n", &v27 + 4, &v27, &v26 + 4, &v26, &v28);
                currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
                v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath initWithCString:]"];
                v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"];
                if (v7 == 4)
                {
                  [currentHandler2 handleFailureInFunction:v9 file:v10 lineNumber:2313 description:@"kCGPathElementAddQuadCurveToPoint not supported yet"];
                  [(TSDBezierPath *)v5 lineToPoint:*(&v27 + 1), *&v27];
                }

                else
                {
                  [currentHandler2 handleFailureInFunction:v9 file:v10 lineNumber:2317 description:@"Could not read bezier quad curve-to elmt"];
                }

                goto LABEL_37;
              }

              if (v29 != 109)
              {
LABEL_35:
                currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath initWithCString:]"];
                v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"];
                v14 = currentHandler3;
                v15 = v23;
                v16 = 2338;
                v17 = @"Bezier path string contained unknown elmt.";
                goto LABEL_36;
              }
            }

            else
            {
              if (v29 <= 0x4Cu)
              {
                if (v29 == 67)
                {
                  goto LABEL_27;
                }

                if (v29 == 69)
                {
                  goto LABEL_37;
                }

                if (v29 != 76)
                {
                  goto LABEL_35;
                }

LABEL_15:
                if (sscanf(v6, " %g %g%n", &v27 + 4, &v27, &v28) != 2)
                {
                  currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
                  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath initWithCString:]"];
                  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"];
                  v14 = currentHandler4;
                  v15 = v12;
                  v16 = 2307;
                  v17 = @"Could not read bezier line path elmt";
LABEL_36:
                  [v14 handleFailureInFunction:v15 file:v13 lineNumber:v16 description:v17];
                  goto LABEL_37;
                }

                [(TSDBezierPath *)v5 lineToPoint:*(&v27 + 1), *&v27];
                goto LABEL_37;
              }

              if (v29 != 77)
              {
                if (v29 == 81)
                {
                  goto LABEL_29;
                }

                if (v29 != 90)
                {
                  goto LABEL_35;
                }

LABEL_26:
                [(TSDBezierPath *)v5 closePath];
                goto LABEL_37;
              }
            }

            if (sscanf(v6, " %g %g%n", &v27 + 4, &v27, &v28) != 2)
            {
              currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath initWithCString:]"];
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"];
              v14 = currentHandler5;
              v15 = v19;
              v16 = 2298;
              v17 = @"Could not read bezier movement elmt";
              goto LABEL_36;
            }

            [(TSDBezierPath *)v5 moveToPoint:*(&v27 + 1), *&v27];
LABEL_37:
            string = &v6[v28];
          }

          while (sscanf(string, " %c%n", &v29, &v28) > 0);
        }
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
    v9 = NSZoneRealloc([(TSDBezierPath *)self zone], self->sfr_head, 24 * self->sfr_elementMax);
    if (v9)
    {
      self->sfr_head = v9;
    }

    else
    {
      NSLog(@"ERROR: TSDBezierPath _addPathSegment. sfr_head could not NSZoneRealloc. No memory");
    }

    if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
    {
      v10 = NSZoneRealloc([(TSDBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
      if (v10)
      {
        self->sfr_elementLength = v10;
      }

      else
      {
        NSLog(@"ERROR: TSDBezierPath _addPathSegment. sfr_elementLength could not NSZoneRealloc. No memory");
      }
    }
  }

  *&self->sfr_head[6 * self->sfr_elementCount] = *&self->sfr_head[6 * self->sfr_elementCount] & 0xFFFFFFFFFFFFFFF0 | segment & 0xF;
  *&self->sfr_head[6 * self->sfr_elementCount] &= 0xFuLL;
  v11 = self->sfr_elementCount;
  v12 = &self->sfr_head[6 * v11];
  *&v12[2] = x;
  *&v12[4] = y;
  self->sfr_elementCount = v11 + 1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  sfr_bpFlags = self->sfr_bpFlags;
  self->sfr_bpFlags = (*&sfr_bpFlags | 1);
  if (segment != 2 && (*&sfr_bpFlags & 0x400) != 0)
  {
    [(TSDBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v15;
    self->sfr_totalLength = v15 + self->sfr_totalLength;
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

  [(TSDBezierPath *)self _addPathSegment:0 point:point.x, point.y];
  sfr_elementCount = self->sfr_elementCount;
LABEL_7:
  self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x200);
  self->sfr_lastSubpathIndex = sfr_elementCount - 1;
}

- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  [(TSDBezierPath *)self _addPathSegment:2 point:point.x, point.y];
  sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  if (sfr_extraSegmentCount == self->sfr_extraSegmentMax)
  {
    self->sfr_extraSegmentMax = 2 * sfr_extraSegmentCount + 10;
    v11 = NSZoneRealloc([(TSDBezierPath *)self zone], self->sfr_extraSegments, 32 * self->sfr_extraSegmentMax);
    if (v11)
    {
      self->sfr_extraSegments = v11;
    }

    else
    {
      NSLog(@"ERROR: TSDBezierPath _deviceCurveToPoint sfr_extraSegments could not NSZoneRealloc. No memory");
    }
  }

  v12 = self->sfr_extraSegmentCount;
  v13 = (self->sfr_extraSegments + 32 * v12);
  *v13 = v8;
  v13[1] = v7;
  v13[2] = x;
  v13[3] = y;
  self->sfr_extraSegmentCount = v12 + 1;
  v14 = &self->sfr_head[6 * self->sfr_elementCount];
  *&v14[-6] = *&v14[-6] & 0xFLL | (16 * v12);
  LODWORD(v14) = self->sfr_bpFlags;
  self->sfr_bpFlags = (v14 & 0xFFFFFCFB | 0x200);
  if ((v14 & 0x400) != 0)
  {
    [(TSDBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v15;
    self->sfr_totalLength = v15 + self->sfr_totalLength;
  }
}

- (void)_deviceClosePath
{
  if ((*&self->sfr_bpFlags & 0x300) == 0x200)
  {
    sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    if (sfr_lastSubpathIndex < 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(TSDBezierPathDevicePrimitives) _deviceClosePath]"];
      [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"), 2475, @"Invalid parameter not satisfying: %s", "sfr_lastSubpathIndex >= 0"}];
      sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    }

    [(TSDBezierPath *)self _addPathSegment:3 point:*&self->sfr_head[6 * sfr_lastSubpathIndex + 2], *&self->sfr_head[6 * sfr_lastSubpathIndex + 4]];
    v6 = &self->sfr_head[6 * self->sfr_lastSubpathIndex];
    [(TSDBezierPath *)self _addPathSegment:0 point:*&v6[2], *&v6[4]];
    self->sfr_lastSubpathIndex = self->sfr_elementCount - 1;
    self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x100);
  }
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"TSDBezierPath <%p>", self];
  if (![(TSDBezierPath *)self isEmpty])
  {
    [(TSDBezierPath *)self bounds];
    [string appendFormat:@"\n  Bounds: %@", NSStringFromCGRect(v17)];
    [(TSDBezierPath *)self controlPointBounds];
    [string appendFormat:@"\n  Control point bounds: %@", NSStringFromCGRect(v18)];
    elementCount = [(TSDBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v5 = elementCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(TSDBezierPath *)self elementAtIndex:i associatedPoints:v13];
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

- (double)yValueFromXValue:(double)value elementIndex:(int64_t *)index parametricValue:(double *)parametricValue
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  v12 = 1;
  if ([(TSDBezierPath *)self elementCount]< 2)
  {
    v13 = v11;
    v14 = v10;
  }

  else
  {
    do
    {
      v13 = v11;
      v14 = v10;
      v15 = [(TSDBezierPath *)self elementAtIndex:v12 associatedPoints:&v47];
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v11 = v51;
          v10 = v52;
        }

        else if (v15 == 3)
        {
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        }
      }

      else if (v15)
      {
        if (v15 == 1)
        {
          v11 = v47;
          v10 = v48;
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        }
      }

      else
      {
        v11 = v47;
        v10 = v48;
      }

      if (v13 <= value && v11 >= value)
      {
        break;
      }

      ++v12;
    }

    while (v12 < [(TSDBezierPath *)self elementCount]);
  }

  if (v13 == v11)
  {
    if (v13 != value)
    {
      [TSDBezierPath(Additions) yValueFromXValue:a2 elementIndex:self parametricValue:?];
    }

    if (v14 != v10)
    {
      [TSDBezierPath(Additions) yValueFromXValue:a2 elementIndex:self parametricValue:?];
    }
  }

  else if (v13 >= value)
  {
    if (index)
    {
      *index = v12 - 1;
    }

    if (parametricValue)
    {
      *parametricValue = 0.0;
    }

    return v14;
  }

  else if (v11 <= value)
  {
    if (index)
    {
      if ([(TSDBezierPath *)self elementCount]<= v12)
      {
        v12 = [(TSDBezierPath *)self elementCount]- 1;
      }

      *index = v12;
    }

    if (parametricValue)
    {
      *parametricValue = 1.0;
    }
  }

  else
  {
    if (index)
    {
      if ([(TSDBezierPath *)self elementCount]<= v12)
      {
        v12 = [(TSDBezierPath *)self elementCount]- 1;
      }

      *index = v12;
    }

    v16 = v48;
    v17 = v50;
    v18 = v11 + v47 * 3.0 - v13 + v49 * -3.0;
    v19 = (v47 * -6.0 + v13 * 3.0 + v49 * 3.0) / v18;
    v20 = (v47 * 3.0 + v13 * -3.0) / v18;
    v21 = (v13 - value) / v18;
    v22 = v21 + v19 * (v19 * (v19 + v19)) / 27.0 + v19 * v20 / -3.0;
    v23 = v22 * v22 * 0.25;
    v24 = (v20 + v19 * v19 / -3.0) * ((v20 + v19 * v19 / -3.0) * (v20 + v19 * v19 / -3.0)) / 27.0 + v23;
    if (v24 <= 0.0)
    {
      if (v24 == 0.0)
      {
        if (v21 >= 0.0)
        {
          v32 = -pow(v21, 0.333333333);
        }

        else
        {
          v32 = pow(fabs(v21), 0.333333333);
        }
      }

      else
      {
        v33 = sqrt(v23 - v24);
        v34 = pow(v33, 0.333333333);
        v35 = acos(-v22 / (v33 + v33));
        v36 = __sincos_stret(v35 / 3.0);
        v37 = v19 / -3.0;
        v32 = v19 / -3.0 + (v34 + v34) * v36.__cosval;
        if (v32 < 0.0 || v32 > 1.0)
        {
          v32 = v37 + -v34 * (v36.__cosval + v36.__sinval * 1.73205081);
          if (v32 < 0.0 || v32 > 1.0)
          {
            v32 = v37 - v34 * (v36.__cosval - v36.__sinval * 1.73205081);
            if (v32 < 0.0 || v32 > 1.0)
            {
              currentHandler = [MEMORY[0x277D6C290] currentHandler];
              v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) yValueFromXValue:elementIndex:parametricValue:]"];
              [currentHandler handleFailureInFunction:v42 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 192, @"No valid roots!"}];
              v32 = 0.0;
            }
          }
        }
      }
    }

    else
    {
      v25 = v22 * -0.5;
      v45 = v50;
      v46 = v48;
      v26 = sqrt(v24);
      v27 = v22 * -0.5 + v26;
      v28 = pow(fabs(v27), 0.333333333);
      if (v27 <= 0.0)
      {
        v28 = -v28;
      }

      v44 = v28;
      v29 = v25 - v26;
      v30 = vabdd_f64(v25, v26);
      v16 = v46;
      v31 = pow(v30, 0.333333333);
      if (v29 <= 0.0)
      {
        v31 = -v31;
      }

      v17 = v45;
      v32 = v44 + v31 + v19 / -3.0;
    }

    if (parametricValue)
    {
      *parametricValue = v32;
    }

    return v14 + (v16 * -6.0 + v14 * 3.0 + v17 * 3.0) * (v32 * v32) + v32 * (v32 * v32) * (v10 + v16 * 3.0 - v14 + v17 * -3.0) + v32 * (v16 * 3.0 + v14 * -3.0);
  }

  return v10;
}

- (id)pathBySplittingAtPointOnPath:(CGPoint)path
{
  v86 = *MEMORY[0x277D85DE8];
  v78 = 0.0;
  v79 = 0;
  [(TSDBezierPath *)self yValueFromXValue:&v79 elementIndex:&v78 parametricValue:path.x, path.y];
  v6 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  v7 = +[TSDBezierPath bezierPath];
  if ([(TSDBezierPath *)self elementCount]>= 1)
  {
    for (i = 0; i < [(TSDBezierPath *)self elementCount]; ++i)
    {
      v9 = [(TSDBezierPath *)self elementAtIndex:i associatedPoints:&v80];
      if (i == v79)
      {
        v10 = v80;
        v11 = v81;
        v12 = v82;
        v13 = v83;
        v14 = v85;
        v76 = v85;
        v77 = v84;
        v15 = TSDSubtractPoints(v80, v81, v6);
        v16 = v78;
        v18 = TSDMultiplyPointScalar(v15, v17, v78);
        v19 = TSDAddPoints(v6, v5, v18);
        v72 = v20;
        v73 = v19;
        v21 = TSDSubtractPoints(v12, v13, v10);
        v22 = v16;
        v24 = TSDMultiplyPointScalar(v21, v23, v16);
        v25 = TSDAddPoints(v10, v11, v24);
        v27 = v26;
        v71 = v26;
        v28 = TSDSubtractPoints(v77, v14, v12);
        v30 = TSDMultiplyPointScalar(v28, v29, v22);
        v31 = TSDAddPoints(v12, v13, v30);
        v74 = v32;
        v75 = v31;
        v33 = v32;
        v34 = TSDSubtractPoints(v25, v27, v73);
        v36 = TSDMultiplyPointScalar(v34, v35, v22);
        v37 = TSDAddPoints(v73, v72, v36);
        v39 = v38;
        v40 = TSDSubtractPoints(v31, v33, v25);
        v42 = TSDMultiplyPointScalar(v40, v41, v22);
        v43 = TSDAddPoints(v25, v71, v42);
        v45 = v44;
        v46 = TSDSubtractPoints(v43, v44, v37);
        v48 = TSDMultiplyPointScalar(v46, v47, v22);
        v49 = TSDAddPoints(v37, v39, v48);
        v51 = v50;
        v52 = TSDSubtractPoints(v37, v39, v49);
        v54 = v53;
        v55 = TSDSubtractPoints(v43, v45, v49);
        v57 = TSDMultiplyPointScalar(v55, v56, -1.0);
        v58 = TSDAddPoints(v52, v54, v57);
        v60 = TSDMultiplyPointScalar(v58, v59, 0.5);
        v62 = v61;
        v63 = TSDAddPoints(v49, v51, v60);
        v65 = v64;
        v66 = TSDMultiplyPointScalar(v60, v62, -1.0);
        v67 = TSDAddPoints(v49, v51, v66);
        v69 = v68;
        [v7 curveToPoint:v49 controlPoint1:v51 controlPoint2:{v73, v72, v63, v65}];
        v5 = v76;
        v6 = v77;
        [v7 curveToPoint:v77 controlPoint1:v76 controlPoint2:{v67, v69, v75, v74}];
      }

      else
      {
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            [v7 curveToPoint:v84 controlPoint1:v85 controlPoint2:{v80, v81, v82, v83}];
            v6 = v84;
            v5 = v85;
          }

          else if (v9 == 3)
          {
            [v7 closePath];
            [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
          }

          continue;
        }

        if (!v9)
        {
          [v7 moveToPoint:{v80, v81}];
          goto LABEL_13;
        }

        if (v9 == 1)
        {
          [v7 lineToPoint:{v80, v81}];
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
LABEL_13:
          v6 = v80;
          v5 = v81;
        }
      }
    }
  }

  return v7;
}

- (void)alignBoundsToOrigin
{
  if ([(TSDBezierPath *)self elementCount]>= 1)
  {
    [(TSDBezierPath *)self bounds];
    v4 = v3;
    v6 = v5;
    if (!TSDNearlyEqualPoints(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v3, v5))
    {
      CGAffineTransformMakeTranslation(&v7, -v4, -v6);
      [(TSDBezierPath *)self transformUsingAffineTransform:&v7];
    }
  }
}

- (BOOL)isCompound
{
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = elementCount;
    v5 = 0;
    v6 = 0;
    do
    {
      if (![(TSDBezierPath *)self elementAtIndex:v5])
      {
        ++v6;
      }

      ++v5;
    }

    while (v4 != v5);
    v7 = v6 - ([(TSDBezierPath *)self elementAtIndex:v4 - 1]== 0);
  }

  return v7 > 1;
}

- (void)takeAttributesFromStroke:(id)stroke
{
  supportsWidth = [stroke supportsWidth];
  v6 = 0.0;
  if (supportsWidth)
  {
    [stroke width];
  }

  [(TSDBezierPath *)self setLineWidth:v6];
  if ([stroke supportsLineOptions])
  {
    [stroke miterLimit];
    [(TSDBezierPath *)self setMiterLimit:?];
    -[TSDBezierPath setLineCapStyle:](self, "setLineCapStyle:", [stroke cap]);
    join = [stroke join];
  }

  else
  {
    join = 1;
  }

  [(TSDBezierPath *)self setLineJoinStyle:join];
}

- (CGRect)_addMitersFromSegments:(id)segments toRect:(CGRect)rect
{
  v6 = [segments count];
  [(TSDBezierPath *)self lineWidth];
  v8 = v7;
  [(TSDBezierPath *)self miterLimit];
  v10 = v9;
  v11 = [segments objectAtIndex:0];
  if (v6 >= 2)
  {
    v12 = v11;
    v13 = v8;
    v14 = v10;
    v58 = v14;
    v59 = v13;
    v57 = v13;
    for (i = 1; i != v6; ++i)
    {
      v16 = v12;
      v12 = [segments objectAtIndex:i];
      [v16 inPoint];
      v18 = v17;
      v20 = v19;
      [v16 toPoint];
      v22 = v21;
      v24 = v23;
      [v12 outPoint];
      v26 = v25;
      v28 = v27;
      v29 = TSDSubtractPoints(v18, v20, v22);
      v31 = v30;
      v32 = TSDSubtractPoints(v26, v28, v22);
      v34 = v33;
      v35 = TSDAngleFromDelta(v32, v33);
      v36 = v35 - TSDAngleFromDelta(v29, v31);
      v37 = fabsf(v36);
      if (v37 > 3.14159265)
      {
        v38 = 6.28318531 - v37;
        v37 = v38;
      }

      v39 = v37;
      v40 = sin(v37 * 0.5);
      if (vabdd_f64(3.14159265, v39) > 0.001)
      {
        v41 = v57 / v40;
        v42 = fabsf(v41);
        if ((v42 / v59) < v58)
        {
          v43 = sqrt(v31 * v31 + v29 * v29);
          v44 = sqrt(v34 * v34 + v32 * v32);
          v45 = TSDAveragePoints(v29 / v43, v31 / v43, v32 / v44);
          v46 = -v45;
          *&v45 = sqrt(v47 * v47 + v45 * v45);
          v48 = TSDAddPoints(v22, v24, v42 * 0.5 * (v46 / *&v45));
          rect.origin.x = TSDGrowRectToPoint(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v48, v49);
          rect.origin.y = v50;
          rect.size.width = v51;
          rect.size.height = v52;
        }
      }
    }
  }

  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)boundsIncludingStrokeWidth:(double)width joinStyle:(unint64_t)style capStyle:(unint64_t)capStyle miterLimit:(double)limit needsToExtendJoins:(BOOL)joins
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (width == 0.0)
  {
    [(TSDBezierPath *)self bounds:style];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
    goto LABEL_12;
  }

  joinsCopy = joins;
  CopyByStrokingPath = CGPathCreateCopyByStrokingPath([(TSDBezierPath *)self CGPath], 0, width, capStyle, style, limit);
  PathBoundingBox = CGPathGetPathBoundingBox(CopyByStrokingPath);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  CGPathRelease(CopyByStrokingPath);
  if (joinsCopy)
  {
    elementCount = [(TSDBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v20 = elementCount;
      v21 = 0;
      v22 = sqrt(width * 0.5 * width);
      while (1)
      {
        v23 = [(TSDBezierPath *)self elementAtIndex:v21 associatedPoints:&v30];
        if (v23 < 2)
        {
          break;
        }

        if (v23 == 2)
        {
          v24 = *&v31[3];
          v25 = v32;
          goto LABEL_10;
        }

LABEL_11:
        if (v20 == ++v21)
        {
          goto LABEL_12;
        }
      }

      v24 = v30;
      v25 = v31;
LABEL_10:
      v37.origin.x = v24 - v22;
      v37.origin.y = *v25 - v22;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v37.size.width = v22 + v22;
      v37.size.height = v22 + v22;
      v35 = CGRectUnion(v34, v37);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      goto LABEL_11;
    }
  }

LABEL_12:
  v26 = x;
  v27 = y;
  widthCopy = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = widthCopy;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)boundsIncludingStroke
{
  [(TSDBezierPath *)self lineWidth];
  v4 = v3;
  lineJoinStyle = [(TSDBezierPath *)self lineJoinStyle];
  lineCapStyle = [(TSDBezierPath *)self lineCapStyle];
  [(TSDBezierPath *)self miterLimit];

  [(TSDBezierPath *)self boundsIncludingStrokeWidth:lineJoinStyle joinStyle:lineCapStyle capStyle:0 miterLimit:v4 needsToExtendJoins:v7];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)boundsIncludingTSDStroke:(id)stroke
{
  [(TSDBezierPath *)self bounds];
  if (TSDNearlyEqualSizes(v5, v6, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)) || [(TSDBezierPath *)self isEmpty])
  {
    goto LABEL_21;
  }

  if ([stroke isFrame])
  {
    [(TSDBezierPath *)self bounds];
    [stroke coverageRect:?];
  }

  else
  {
    v11 = 0.0;
    if ([stroke supportsWidth])
    {
      [stroke width];
      v11 = v12;
    }

    if ([stroke supportsLineOptions])
    {
      join = [stroke join];
      v14 = [stroke cap];
      [stroke miterLimit];
    }

    else
    {
      join = +[TSDBezierPath defaultLineJoinStyle];
      v14 = +[TSDBezierPath defaultLineCapStyle];
      +[TSDBezierPath defaultMiterLimit];
    }

    v16 = v15;
    v17 = [objc_msgSend(stroke "pattern")];
    needsToExtendJoinsForBoundsCalculation = [stroke needsToExtendJoinsForBoundsCalculation];
    v19 = !v17 || v14 == 0;
    v20 = !v19;
    v21 = (needsToExtendJoinsForBoundsCalculation & 1) != 0 || v20;
    [(TSDBezierPath *)self boundsIncludingStrokeWidth:join joinStyle:v14 capStyle:v21 miterLimit:v11 needsToExtendJoins:v16];
  }

  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  if (CGRectIsNull(*&v7))
  {
LABEL_21:
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)pointOnPath:(CGPoint)path tolerance:(double)tolerance
{
  v4 = tolerance * 0.5;
  [(TSDBezierPath *)self distanceToPoint:0 elementIndex:0 tValue:path.x threshold:path.y, tolerance * 0.5];
  return v5 < v4;
}

- (double)distanceToPoint:(CGPoint)point elementIndex:(unint64_t *)index tValue:(double *)value threshold:(double)threshold
{
  y = point.y;
  x = point.x;
  v29 = *MEMORY[0x277D85DE8];
  elementCount = [(TSDBezierPath *)self elementCount];
  v13 = 0;
  v26 = *MEMORY[0x277CBF348];
  v14 = 0.0;
  v15 = 1.79769313e308;
  if (elementCount)
  {
    v16 = threshold * threshold;
    if (threshold * threshold < 1.79769313e308)
    {
      v17 = elementCount;
      v13 = 0;
      v15 = 1.79769313e308;
      v18 = 1;
      while (1)
      {
        v19 = [(TSDBezierPath *)self elementAtIndex:v18 - 1 allPoints:&v27, *&v26];
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v21 = TSDNearestPointOnCurveToPoint(&v27, x, y, 1.0);
            v22 = TSDPointOnCurve(&v27, v21);
            goto LABEL_14;
          }

          if (v19 == 3)
          {
            v28 = v26;
LABEL_11:
            TSDNearestPointOnLineToPoint(v27.f64, x, y);
            v21 = v20;
            v22 = TSDMixPoints(v27.f64[0], v27.f64[1], v28.f64[0], v28.f64[1], v20);
LABEL_14:
            v24 = TSDDistanceSquared(v22, v23, x, y);
            if (v24 < v15)
            {
              v14 = v21;
              v13 = v18 - 1;
              v15 = v24;
            }
          }
        }

        else if (v19)
        {
          if (v19 == 1)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v26 = v27;
        }

        if (v18 < v17)
        {
          ++v18;
          if (v15 > v16)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  if (index)
  {
    *index = v13;
  }

  if (value)
  {
    *value = v14;
  }

  return sqrt(v15);
}

- (CGPoint)pointAlongPathAtPercentage:(double)percentage
{
  v30 = *MEMORY[0x277D85DE8];
  bezierPathByFlatteningPath = [(TSDBezierPath *)self bezierPathByFlatteningPath];
  elementCount = [bezierPathByFlatteningPath elementCount];
  if (elementCount > 0)
  {
    v5 = elementCount;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = [bezierPathByFlatteningPath elementAtIndex:v6 associatedPoints:&v28];
      switch(v12)
      {
        case 3:
          v7 = TSDDistance(v11, v10, v8, v9) + v7;
          break;
        case 1:
          v13 = v28;
          v14 = v29;
          v7 = TSDDistance(v11, v10, v28, v29) + v7;
          v11 = v13;
          v10 = v14;
          break;
        case 0:
          v11 = v28;
          v10 = v29;
          v9 = v29;
          v8 = v28;
          break;
      }

      ++v6;
    }

    while (v5 != v6);
    TSUClamp();
    v15 = 0;
    *&v16 = v16 * v7;
    v27 = *&v16;
    v17 = 0.0;
    while (1)
    {
      v18 = [bezierPathByFlatteningPath elementAtIndex:v15 associatedPoints:&v28];
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = v28;
        }

        else
        {
          v19 = v8;
        }

        if (v18 == 1)
        {
          v20 = v29;
        }

        else
        {
          v20 = v9;
        }

        v21 = TSDDistance(v11, v10, v19, v20);
        if ((v17 + v21) >= v27)
        {
          v24 = TSDSubtractPoints(v19, v20, v11);
          v26 = v24;
          if (v21 > 0.0)
          {
            v26 = TSDMultiplyPointScalar(v24, v25, ((v27 - v17) / v21));
          }

          v22 = TSDAddPoints(v11, v10, v26);
          goto LABEL_28;
        }

        v17 = v17 + v21;
        v11 = v19;
        v10 = v20;
      }

      else
      {
        v11 = v28;
        v10 = v29;
        v9 = v29;
        v8 = v28;
      }

      if (v5 == ++v15)
      {
        goto LABEL_24;
      }
    }
  }

  TSUClamp();
LABEL_24:
  v22 = *MEMORY[0x277CBF348];
  v23 = *(MEMORY[0x277CBF348] + 8);
LABEL_28:
  result.y = v23;
  result.x = v22;
  return result;
}

- (BOOL)isEffectivelyClosed
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(TSDBezierPath *)self containsClosePathElement])
  {
    return 1;
  }

  if ([(TSDBezierPath *)self elementCount]< 2 || [(TSDBezierPath *)self elementAtIndex:0 associatedPoints:&v10])
  {
    return 0;
  }

  v4 = [(TSDBezierPath *)self elementAtIndex:[(TSDBezierPath *)self elementCount]- 1 associatedPoints:v9];
  if (v4 < 2)
  {
    v5 = v10;
    v6 = v11;
    v7 = *v9;
    v8 = *&v9[1];
  }

  else
  {
    if (v4 != 2)
    {
      return v4 == 3;
    }

    v5 = v10;
    v6 = v11;
    v7 = *&v9[4];
    v8 = *&v9[5];
  }

  return v6 == v8 && v5 == v7;
}

- (BOOL)containsClosePathElement
{
  elementCount = [(TSDBezierPath *)self elementCount];
  v4 = elementCount - 2;
  if (elementCount < 2)
  {
    return 0;
  }

  v5 = 1;
  do
  {
    v6 = v4;
    result = [(TSDBezierPath *)self elementAtIndex:v5]== 3;
    if (result)
    {
      break;
    }

    v4 = v6 - 1;
    ++v5;
  }

  while (v6);
  return result;
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(int)type startNewPath:(BOOL)path
{
  pathCopy = path;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v43 = *MEMORY[0x277D85DE8];
  MidX = CGRectGetMidX(bounds);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v15 = CGRectGetWidth(v45) * 0.5;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v16 = CGRectGetHeight(v46) * 0.5;
  if (type == 1)
  {
    TSDEllipseParametricAngleWithPolarAngle(angle, v15, v16);
    angleCopy = v19;
    TSDEllipseParametricAngleWithPolarAngle(angle + swingAngle, v15, v16);
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

  v21 = +[TSDBezierPath bezierPath];
  [v21 appendBezierPathWithArcWithCenter:angleCopy > v17 radius:*MEMORY[0x277CBF348] startAngle:*(MEMORY[0x277CBF348] + 8) endAngle:1.0 clockwise:{angleCopy, v17}];
  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeScale(&t1, v15, v16);
  CGAffineTransformMakeTranslation(&t2, MidX, MidY);
  CGAffineTransformConcat(&v41, &t1, &t2);
  t1 = v41;
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
          [(TSDBezierPath *)self curveToPoint:t1.tx controlPoint1:t1.ty controlPoint2:t1.a, t1.b, t1.c, t1.d];
          continue;
        }

        if (v25 == 3)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"];
          v29 = currentHandler;
          v30 = v34;
          v31 = 811;
          v32 = @"The arc shouldn't contain close_subpath elements";
          goto LABEL_18;
        }
      }

      else
      {
        if (!v25)
        {
          if (i)
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
            [currentHandler2 handleFailureInFunction:v36 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 794, @"Only the first element of the arc should be a moveto"}];
          }

          if (pathCopy)
          {
            [(TSDBezierPath *)self moveToPoint:t1.a, t1.b];
          }

          else
          {
            [(TSDBezierPath *)self lineToPoint:t1.a, t1.b];
          }

          continue;
        }

        if (v25 == 1)
        {
          currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"];
          v29 = currentHandler3;
          v30 = v27;
          v31 = 805;
          v32 = @"The arc shouldn't contain lineto elements";
LABEL_18:
          [v29 handleFailureInFunction:v30 file:v28 lineNumber:v31 description:v32];
        }
      }
    }
  }
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(int)sign startNewPath:(BOOL)path
{
  pathCopy = path;
  y = radialVector.y;
  x = radialVector.x;
  v10 = vector.y;
  v11 = vector.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v14 = bounds.origin.y;
  v15 = bounds.origin.x;
  MidX = CGRectGetMidX(bounds);
  v26.origin.x = v15;
  v26.origin.y = v14;
  v24 = height;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  v19 = atan2(v10 - MidY, v11 - MidX) * 180.0 / 3.14159265;
  v20 = atan2(y - MidY, x - MidX) * 180.0 / 3.14159265;
  if (sign)
  {
    if (sign == 1)
    {
        ;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) appendBezierPathWithArcWithEllipseBounds:startRadialVector:endRadialVector:angleSign:startNewPath:]"];
      [currentHandler handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 842, @"Unexpected angle sign"}];
    }
  }

  else
  {
      ;
    }
  }

  [(TSDBezierPath *)self appendBezierPathWithArcWithEllipseBounds:1 startAngle:pathCopy swingAngle:v15 angleType:v14 startNewPath:width, v24, v19, v20 - v19];
}

- (id)bezierPathByRemovingRedundantElements
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = +[TSDBezierPath bezierPath];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v7 = elementCount;
    v8 = 0;
    v9 = 0;
    v10 = v5;
    v11 = v4;
    v12 = v5;
    v13 = v4;
    do
    {
      v14 = [(TSDBezierPath *)self elementAtIndex:v8 associatedPoints:&v25];
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          [v3 curveToPoint:v29 controlPoint1:v30 controlPoint2:{v25, v26, v27, v28}];
          v9 = 0;
          v13 = v11;
          v12 = v10;
          v11 = v29;
          v10 = v30;
          goto LABEL_23;
        }

        if (v14 == 3)
        {
          [v3 closePath];
          v9 = 0;
LABEL_19:
          v13 = v11;
          v12 = v10;
          v11 = v4;
          v10 = v5;
        }
      }

      else
      {
        if (!v14)
        {
          [v3 moveToPoint:{v25, v26}];
          v9 = 0;
          v4 = v25;
          v5 = v26;
          goto LABEL_19;
        }

        if (v14 == 1)
        {
          v16 = v25;
          v15 = v26;
          if (v11 == v25 && v10 == v26)
          {
LABEL_14:
            v11 = v13;
            v10 = v12;
          }

          else
          {
            if ((v9 & 1) != 0 && TSDCollinearPoints(v13, v12, v11, v10, v25, v26))
            {
              v18 = TSDSubtractPoints(v11, v10, v13);
              v23 = v19;
              v24 = v18;
              v20 = TSDSubtractPoints(v16, v15, v13);
              if (TSDDotPoints(v24, v23, v20, v21) > 0.0)
              {
                [v3 setAssociatedPoints:&v25 atIndex:{objc_msgSend(v3, "elementCount") - 1}];
                v9 = 1;
                goto LABEL_14;
              }
            }

            [v3 lineToPoint:{v16, v15}];
            v9 = 1;
          }

          v13 = v11;
          v12 = v10;
          v11 = v25;
          v10 = v26;
        }
      }

LABEL_23:
      ++v8;
    }

    while (v7 != v8);
  }

  return v3;
}

- (id)p_copyWithPointsInRange:(_NSRange)range countingSubpaths:(unint64_t *)subpaths
{
  length = range.length;
  location = range.location;
  v16 = *MEMORY[0x277D85DE8];
  v8 = +[TSDBezierPath bezierPath];
  if (location < location + length)
  {
    v9 = 0;
    v10 = MEMORY[0x277D6C3C0];
    while (1)
    {
      v13 = *v10;
      *v14 = v13;
      *&v14[16] = v13;
      v15 = v13;
      v11 = [(TSDBezierPath *)self elementAtIndex:location allPoints:&v13];
      if (v9)
      {
        break;
      }

      ++*subpaths;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          [v8 moveToPoint:v13];
LABEL_23:
          [v8 curveToPoint:v15 controlPoint1:*v14 controlPoint2:{*&v14[8], *&v14[24]}];
          goto LABEL_24;
        }

        if (v11 == 3)
        {
          [v8 moveToPoint:v13];
LABEL_19:
          [v8 closePath];
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_21;
        }

        if (v11 == 1)
        {
          [v8 moveToPoint:v13];
LABEL_12:
          [v8 lineToPoint:*v14];
        }
      }

LABEL_24:
      ++location;
      v9 = 1;
      if (!--length)
      {
        return v8;
      }
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        goto LABEL_23;
      }

      if (v11 != 3)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (!v11)
    {
      ++*subpaths;
LABEL_21:
      [v8 moveToPoint:v13];
      goto LABEL_24;
    }

    if (v11 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  return v8;
}

- (id)pathSplitAtSubpathBoundariesWithSoftElementLimit:(unint64_t)limit hardElementLimit:(unint64_t)elementLimit
{
  v29[1] = *MEMORY[0x277D85DE8];
  if ([(TSDBezierPath *)self elementCount]< 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 975, @"elementCount (%zd) should be positive.", -[TSDBezierPath elementCount](self, "elementCount"), v27}];
    return MEMORY[0x277CBEBF8];
  }

  elementCount = [(TSDBezierPath *)self elementCount];
  if (limit > elementLimit)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]"];
    [currentHandler2 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 982, @"softElementLimit (%zu) should be less than or equal to hardElementLimit (%zu).", limit, elementLimit}];
    return MEMORY[0x277CBEBF8];
  }

  if (limit <= 1)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBezierPath(Additions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]"];
    [currentHandler3 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 987, @"Unable to split a path with subpaths less than 2 elements at a time.", v26, v27}];
    return MEMORY[0x277CBEBF8];
  }

  if (!elementCount)
  {
    return MEMORY[0x277CBEBF8];
  }

  if (elementCount <= limit)
  {
    v29[0] = [(TSDBezierPath *)self copy];
    return [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  }

  array = [MEMORY[0x277CBEB18] array];
  p_elementCountForSubpaths = [(TSDBezierPath *)self p_elementCountForSubpaths];
  v16 = [p_elementCountForSubpaths count];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = v20++;
      v22 = [objc_msgSend(p_elementCountForSubpaths objectAtIndexedSubscript:{v21), "unsignedIntegerValue"}];
      if (v22 + v19 <= limit)
      {
        break;
      }

      v23 = v22;
      if (v19)
      {
        [array addObject:{-[TSDBezierPath copyWithPointsInRange:](self, "copyWithPointsInRange:", v18, v19)}];
        v18 += v19;
      }

      if (v23 <= elementLimit)
      {
        goto LABEL_24;
      }

      elementLimitCopy = elementLimit;
      do
      {
        if (v23 >= elementLimitCopy)
        {
          v25 = elementLimitCopy;
        }

        else
        {
          v25 = v23;
        }

        [array addObject:{-[TSDBezierPath copyWithPointsInRange:](self, "copyWithPointsInRange:", v18, v25)}];
        v18 += v25;
        elementLimitCopy = elementLimit - 1;
        v23 -= v25;
      }

      while (v23);
LABEL_27:
      v19 = v23;
      if (v20 == v17)
      {
        return array;
      }
    }

    v23 = v22 + v19;
LABEL_24:
    if (v20 == v17 && v23)
    {
      [array addObject:{-[TSDBezierPath copyWithPointsInRange:](self, "copyWithPointsInRange:", v18, v23)}];
    }

    goto LABEL_27;
  }

  return array;
}

- (id)p_elementCountForSubpaths
{
  array = [MEMORY[0x277CBEB18] array];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v5 = 0;
    v6 = -elementCount;
    v7 = 1;
    do
    {
      if (!(v6 + v7) || ![(TSDBezierPath *)self elementAtIndex:v7])
      {
        [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v7 - v5)}];
        v5 = v7;
      }

      ++v7;
    }

    while (v6 + v7 != 1);
  }

  return array;
}

- (id)p_pathAsSegments
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    v9 = [(TSDBezierPath *)self elementAtIndex:0 associatedPoints:v33];
    if (v8 >= 2)
    {
      v10 = v9;
      if (!v9)
      {
        v4 = *(v33 + 1);
        v3 = *v33;
      }

      for (i = 1; v8 != i; ++i)
      {
        v12 = v10;
        v13 = [(TSDBezierPath *)self elementAtIndex:i associatedPoints:&v30];
        v10 = v13;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            if (v12 < 2)
            {
              v19 = *(v33 + 1);
              v18 = *v33;
              goto LABEL_33;
            }

            if (v12 == 2)
            {
              v19 = *(&v34 + 1);
              v18 = *&v34;
LABEL_33:
              v22 = *(&v30 + 1);
              v21 = *&v30;
              v24 = *(&v31 + 1);
              v23 = *&v31;
              v26 = *(&v32 + 1);
              v25 = *&v32;
LABEL_34:
              v28 = [TSDBezierSegment segmentFromPoint:v18 outPoint:v19 inPoint:v21 toPoint:v22, v23, v24, v25, v26];
              if (([v28 bogusSegment] & 1) == 0)
              {
                [array2 addObject:v28];
              }
            }
          }

          else if (v13 == 3)
          {
            if (v12 < 2)
            {
              v17 = *(v33 + 1);
              v16 = *v33;
              goto LABEL_26;
            }

            if (v12 == 2)
            {
              v17 = *(&v34 + 1);
              v16 = *&v34;
LABEL_26:
              if (!TSDNearlyEqualPoints(v16, v17, v3, v4))
              {
                v27 = [TSDBezierSegment segmentFromPoint:v16 outPoint:v17 inPoint:v16 toPoint:v17, v3, v4, v3, v4];
                if (([v27 bogusSegment] & 1) == 0)
                {
                  [array2 addObject:v27];
                }
              }
            }

            if ([array2 count])
            {
              [array2 addObject:{objc_msgSend(array2, "objectAtIndex:", 0)}];
              [array addObject:array2];
              array2 = [MEMORY[0x277CBEB18] array];
            }
          }
        }

        else
        {
          if (!v13)
          {
            if ([array2 count])
            {
              [array addObject:array2];
              array2 = [MEMORY[0x277CBEB18] array];
            }

            v4 = *(&v30 + 1);
            v3 = *&v30;
            goto LABEL_36;
          }

          if (v13 == 1)
          {
            if (v12 >= 2)
            {
              if (v12 != 2)
              {
                goto LABEL_36;
              }

              v15 = *(&v34 + 1);
              v14 = *&v34;
            }

            else
            {
              v15 = *(v33 + 1);
              v14 = *v33;
            }

            v20 = v30;
            if (!TSDNearlyEqualPoints(v14, v15, *&v30, *(&v30 + 1)))
            {
              v18 = v14;
              v19 = v15;
              v21 = v14;
              v22 = v15;
              *&v24 = v20 >> 64;
              *&v23 = v20;
              *&v26 = v20 >> 64;
              *&v25 = v20;
              goto LABEL_34;
            }
          }
        }

LABEL_36:
        v33[0] = v30;
        v33[1] = v31;
        v34 = v32;
      }
    }

    if ([array2 count])
    {
      [array addObject:array2];
    }
  }

  return array;
}

- (id)p_beziersFromSegmentIntersections:(id)intersections
{
  v5 = [intersections count];
  [(TSDBezierPath *)self lineWidth];
  v7 = v6;
  [(TSDBezierPath *)self miterLimit];
  v9 = v8;
  array = [MEMORY[0x277CBEB18] array];
  lineJoinStyle = [(TSDBezierPath *)self lineJoinStyle];
  v12 = [intersections objectAtIndex:0];
  if (v5 >= 2)
  {
    v13 = v12;
    v14 = v7;
    v15 = v9;
    v85 = v15;
    v86 = v14;
    v84 = v14;
    v90 = (v14 * 0.5);
    v16 = 1;
    v17 = MEMORY[0x277CBF348];
    do
    {
      v18 = [intersections objectAtIndex:v16];
      [v13 inPoint];
      v20 = v19;
      v22 = v21;
      [v13 toPoint];
      v24 = v23;
      v26 = v25;
      [v18 outPoint];
      v28 = v27;
      v30 = v29;
      v94 = v22;
      v95 = v20;
      v31 = TSDSubtractPoints(v20, v22, v24);
      v33 = v32;
      v35 = *v17;
      v34 = v17[1];
      v36 = TSDDistance(v31, v32, *v17, v34);
      v37 = TSDMultiplyPointScalar(v31, v33, (1.0 / v36));
      v39 = v38;
      v92 = v30;
      v93 = v28;
      v40 = v30;
      v41 = v39;
      v42 = TSDSubtractPoints(v28, v40, v24);
      v44 = v43;
      v91 = v34;
      v45 = v34;
      v46 = v24;
      v47 = TSDDistance(v42, v43, v35, v45);
      v48 = TSDMultiplyPointScalar(v42, v44, (1.0 / v47));
      v50 = v49;
      v97 = TSDAddPoints(v24, v26, v37);
      v99 = v51;
      v96 = TSDAddPoints(v24, v26, v48);
      v98 = v52;
      v53 = acos(v41 * v50 + v48 * v37);
      v54 = v53;
      v55 = sin(v53 * 0.5);
      if (lineJoinStyle == 2)
      {
        v56 = 0;
      }

      else
      {
        v56 = 0;
        if (vabdd_f64(3.14159265, v54) > 0.001)
        {
          v57 = v84 / v55;
          v58 = fabsf(v57);
          if ((v58 / v86) < v85)
          {
            v59 = TSDAveragePoints(v37, v41, v48);
            v61 = TSDMultiplyPointScalar(v59, v60, -1.0);
            v88 = v62;
            v89 = (v58 * 0.5);
            v63 = v61;
            v64 = TSDDistance(v61, v62, v35, v91);
            v87 = TSDMultiplyPointScalar(v63, v88, v89 / v64);
            v56 = 1;
          }
        }
      }

      v65 = v95 * v26 - v94 * v46 + 0.0;
      v66 = v46 * v92 - v26 * v93 + v65;
      v67 = v93 * v94 - v92 * v95 + v66;
      v68 = v67 < 0.0;
      v69 = v67 >= 0.0;
      v70 = TSDMultiplyPointScalar(v37, v41, v90);
      v72 = TSDRotatePoint90Degrees(v69, v70, v71);
      v73 = TSDAddPoints(v97, v99, v72);
      v75 = v74;
      v76 = TSDMultiplyPointScalar(v48, v50, v90);
      v78 = TSDRotatePoint90Degrees(v68, v76, v77);
      v79 = TSDAddPoints(v96, v98, v78);
      v81 = v80;
      v82 = +[TSDBezierPath bezierPath];
      [v82 moveToPoint:{v73, v75}];
      if (v56)
      {
        [v82 lineToPoint:{TSDAddPoints(v46, v26, v87)}];
      }

      [v82 lineToPoint:{v79, v81}];
      [v82 lineToPoint:{v96, v98}];
      [v82 lineToPoint:{v97, v99}];
      [v82 closePath];
      [array addObject:v82];
      ++v16;
      v13 = v18;
    }

    while (v5 != v16);
  }

  return array;
}

- (id)bezierPathByOffsettingPath:(double)path joinStyle:(unint64_t)style withThreshold:(double)threshold
{
  selfCopy = self;
  if (path == 0.0)
  {
    return selfCopy;
  }

  if (![(TSDBezierPath *)self isRectangular])
  {
    v10 = [(TSDBezierPath *)selfCopy copy];
    [v10 setLineWidth:fabs(path + path)];
    [v10 setLineJoinStyle:style];
    v11 = [TSDBezierPath outlineBezierPath:v10 withThreshold:threshold];
    if (path <= 0.0)
    {
      v12 = [v10 subtractBezierPath:v11];
    }

    else
    {
      v12 = [v10 uniteWithBezierPath:v11];
    }

    selfCopy = v12;

    return selfCopy;
  }

  [(TSDBezierPath *)selfCopy bounds];
  v15 = CGRectInset(v14, -path, -path);
  if (path > 0.0 && style == 1)
  {

    return [TSDBezierPath bezierPathWithRoundedRect:v15.origin.x cornerRadius:v15.origin.y, v15.size.width, v15.size.height, path];
  }

  else
  {

    return [TSDBezierPath bezierPathWithRect:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  }
}

- (id)uniteWithBezierPath:(id)path
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{self, path, 0}];

  return [TSDBezierPath uniteBezierPaths:v3];
}

- (id)subtractBezierPath:(id)path
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{self, path, 0}];

  return [TSDBezierPath subtractBezierPaths:v3];
}

- (id)intersectBezierPath:(id)path
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{self, path, 0}];

  return [TSDBezierPath intersectBezierPaths:v3];
}

- (BOOL)isEqual:(id)equal
{
  v16[5] = *MEMORY[0x277D85DE8];
  if (self == equal)
  {
LABEL_16:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    elementCount = [(TSDBezierPath *)self elementCount];
    if (elementCount != [equal elementCount])
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (elementCount >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = [(TSDBezierPath *)self elementAtIndex:v7 associatedPoints:&v15];
        if (v8 != [equal elementAtIndex:v7 associatedPoints:&v13])
        {
          goto LABEL_17;
        }

        if (v8 >= 2)
        {
          if (v8 == 2)
          {
            v9 = 3;
            v10 = v16;
            v11 = &v14;
            while (TSDNearlyEqualPoints(*(v10 - 1), *v10, *(v11 - 1), *v11))
            {
              v11 += 2;
              v10 += 2;
              if (!--v9)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_17;
          }
        }

        else if (!TSDNearlyEqualPoints(v15, v16[0], v13, v14))
        {
          goto LABEL_17;
        }

LABEL_14:
        ++v7;
        LOBYTE(v5) = 1;
        if (v7 == elementCount)
        {
          return v5;
        }
      }
    }

    goto LABEL_16;
  }

  return v5;
}

- (void)clearStroke:(CGContext *)stroke
{
  CGContextSaveGState(stroke);
  [(TSDBezierPath *)self flatness];
  CGContextSetFlatness(stroke, v5);
  CGContextBeginPath(stroke);
  [(TSDBezierPath *)self addPathToContext:stroke];
  [(TSDBezierPath *)self lineWidth];
  CGContextSetLineWidth(stroke, v6);
  CGContextReplacePathWithStrokedPath(stroke);
  CGContextClip(stroke);
  CGContextBeginPath(stroke);
  [(TSDBezierPath *)self lineWidth];
  v8 = v7;
  [(TSDBezierPath *)self bounds];
  v11 = CGRectInset(v10, -(v8 + 10.0), -(v8 + 10.0));
  CGContextClearRect(stroke, v11);

  CGContextRestoreGState(stroke);
}

- (id)pathByWobblingByUpTo:(double)to subdivisions:(unint64_t)subdivisions
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = [(TSDBezierPath *)self copy];
  [v7 removeAllPoints];
  v45 = *(MEMORY[0x277CBF348] + 8);
  v46 = *MEMORY[0x277CBF348];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v9 = elementCount;
    v10 = 0;
    toCopy = to;
    v12 = toCopy;
    do
    {
      v13 = [(TSDBezierPath *)self elementAtIndex:v10 associatedPoints:&v47];
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v39 = v51;
          v40 = v52;
          TSURandom();
          v42 = v39 + (v41 + -0.5) * v12;
          TSURandom();
          [v7 curveToPoint:v42 controlPoint1:v40 + (v43 + -0.5) * v12 controlPoint2:{v47, v48, v49, v50}];
        }

        else if (v13 == 3)
        {
          v16 = v45;
          v15 = v46;
          v47 = v46;
          v48 = v45;
          v14 = 1;
LABEL_10:
          v17 = 0;
          v18 = 1;
          do
          {
            [v7 currentPoint];
            v20 = v19;
            v22 = v21;
            v23 = TSDSubtractPoints(v15, v16, v19);
            v25 = v24;
            v26 = 1.0;
            v27 = subdivisions - v17;
            if (v27)
            {
              TSURandom();
              *&v28 = v28 + 0.5;
              v26 = fminf((1.0 / v27) * *&v28, 1.0);
            }

            v29 = v20 + v23 * v26;
            v30 = v22 + v25 * v26;
            TSURandom();
            v32 = v29 + (v31 + -0.5) * v12;
            TSURandom();
            [v7 lineToPoint:{v32, v30 + (v33 + -0.5) * v12}];
            v17 = v18++;
          }

          while (v17 <= subdivisions);
          if (v14)
          {
            [v7 closePath];
          }
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          v14 = 0;
          v15 = v47;
          v16 = v48;
          goto LABEL_10;
        }
      }

      else
      {
        v34 = v47;
        v35 = v48;
        TSURandom();
        v37 = v34 + (v36 + -0.5) * v12;
        TSURandom();
        v45 = v35 + (v38 + -0.5) * v12;
        v46 = v37;
        [v7 moveToPoint:v37];
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return v7;
}

- (BOOL)isOpen
{
  v17 = *MEMORY[0x277D85DE8];
  elementCount = [(TSDBezierPath *)self elementCount];
  v5 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  if (elementCount < 1)
  {
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    return v4 != v10 || v5 != v9;
  }

  else
  {
    v6 = elementCount;
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      v11 = [(TSDBezierPath *)self elementAtIndex:v7 associatedPoints:&v13];
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v9 = v15;
          v10 = v16;
        }

        else if (v11 == 3)
        {
          return 0;
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          v9 = v13;
          v10 = v14;
        }
      }

      else
      {
        v9 = v13;
        v10 = v14;
        if (!v8)
        {
          v5 = v13;
          v4 = v14;
        }

        ++v8;
      }

      ++v7;
    }

    while (v6 != v7);
    if (v8 <= 1)
    {
      return v4 != v10 || v5 != v9;
    }

    return 0;
  }
}

- (BOOL)isLineSegment
{
  v16 = *MEMORY[0x277D85DE8];
  result = 0;
  if ([(TSDBezierPath *)self elementCount]== 2 && ![(TSDBezierPath *)self elementAtIndex:0])
  {
    v4 = [(TSDBezierPath *)self elementAtIndex:1];
    if (v4 == 1)
    {
      return 1;
    }

    if (v4 == 2)
    {
      [(TSDBezierPath *)self elementAtIndex:0 associatedPoints:v9];
      [(TSDBezierPath *)self elementAtIndex:1 associatedPoints:&v10];
      v5 = v10;
      v6 = v11;
      v7 = v12;
      v8 = v13;
      if (TSDNearlyCollinearPoints(v9[0], v9[1], v10, v11, v12, v13) && TSDNearlyCollinearPoints(v5, v6, v7, v8, v14, v15))
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)intersectsRect:(CGRect)rect hasFill:(BOOL)fill
{
  fillCopy = fill;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v42 = *MEMORY[0x277D85DE8];
  if ([(TSDBezierPath *)self elementCount]< 2)
  {
LABEL_2:
    LOBYTE(v10) = 0;
    return v10;
  }

  [(TSDBezierPath *)self bounds];
  v10 = TSDIntersectsRect(v11, v12, v13, v14, x, y, width, height);
  if (!v10)
  {
    return v10;
  }

  if (!fillCopy)
  {
LABEL_8:
    bezierPathByFlatteningPath = [(TSDBezierPath *)self bezierPathByFlatteningPath];
    v20 = *MEMORY[0x277CBF348];
    v21 = *(MEMORY[0x277CBF348] + 8);
    elementCount = [bezierPathByFlatteningPath elementCount];
    if (elementCount >= 1)
    {
      v23 = elementCount;
      v24 = 0;
      v25 = v21;
      v26 = v20;
      do
      {
        v27 = [bezierPathByFlatteningPath elementAtIndex:v24 associatedPoints:&v34];
        switch(v27)
        {
          case 3:
            if (TSDLineIntersectsRect(v26, v25, v20, v21, x, y, width, height))
            {
              goto LABEL_19;
            }

            break;
          case 1:
            v32 = v21;
            v33 = v20;
            v28 = v34;
            v29 = v35;
            v30 = TSDLineIntersectsRect(v26, v25, v34, v35, x, y, width, height);
            v26 = v28;
            v25 = v29;
            v21 = v32;
            v20 = v33;
            if (v30)
            {
              goto LABEL_19;
            }

            break;
          case 0:
            v26 = v34;
            v25 = v35;
            v20 = v34;
            v21 = v35;
            break;
        }

        ++v24;
      }

      while (v23 != v24);
    }

    goto LABEL_2;
  }

  v34 = x;
  v35 = y;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v36 = MaxX;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v16 = CGRectGetMaxX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v38 = v16;
  MaxY = CGRectGetMaxY(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v18 = 0;
  v40 = MinX;
  v41 = CGRectGetMaxY(v48);
  while (![(TSDBezierPath *)self containsPoint:*(&v34 + v18), *(&v34 + v18 + 8)])
  {
    v18 += 16;
    if (v18 == 64)
    {
      goto LABEL_8;
    }
  }

LABEL_19:
  LOBYTE(v10) = 1;
  return v10;
}

- (void)addPathToContext:(CGContext *)context
{
  v15 = *MEMORY[0x277D85DE8];
  elementCount = [(TSDBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v6 = elementCount;
    for (i = 0; i != v6; ++i)
    {
      v8 = [(TSDBezierPath *)self elementAtIndex:i associatedPoints:&v9];
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(context, v9, v10, v11, v12, v13, v14);
        }

        else if (v8 == 3)
        {
          CGContextClosePath(context);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(context, v9, v10);
        }
      }

      else
      {
        CGContextMoveToPoint(context, v9, v10);
      }
    }
  }
}

- (CGPoint)roundPoint:(CGPoint)point inContext:(CGContext *)context strokeWidth:(int)width
{
  widthCopy = width;
  v7 = CGContextConvertPointToDeviceSpace(context, point);
  v8 = TSDRoundedPoint();
  if (widthCopy)
  {
    x = v7.x;
    if (v8 <= x)
    {
      v12 = 0.5;
    }

    else
    {
      v12 = -0.5;
    }

    v8 = v8 + v12;
    y = v7.y;
    if (v9 <= y)
    {
      v13 = 0.5;
    }

    else
    {
      v13 = -0.5;
    }

    v9 = v9 + v13;
  }

  v16 = CGContextConvertPointToUserSpace(context, *&v8);
  v15 = v16.y;
  v14 = v16.x;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)p_aliasedPathInContext:(CGContext *)context viewScale:(float)scale effectiveStrokeWidth:(float)width
{
  v75 = *MEMORY[0x277D85DE8];
  elementCount = [(TSDBezierPath *)self elementCount];
  TSURound();
  if (!elementCount)
  {
    return self;
  }

  v66 = v10;
  if (vabds_f32(v10, width) > 0.1)
  {
    return self;
  }

  if (context)
  {
    memset(&v72, 0, sizeof(v72));
    CGContextGetUserSpaceToDeviceSpaceTransform(&v72, context);
    v74 = v72;
    if (TSDIsTransformAxisAligned(&v74.a))
    {
      v65 = fabs(v72.a) < fabs(v72.b);
      goto LABEL_9;
    }

    return self;
  }

  v65 = 0;
LABEL_9:
  v11 = +[TSDBezierPath bezierPath];
  if (elementCount >= 1)
  {
    v13 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v14 = 0;
    scaleCopy = scale;
    v15 = (1.0 / scale);
    do
    {
      v16 = [(TSDBezierPath *)self elementAtIndex:v13 associatedPoints:&v72.c];
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          a = v72.a;
          b = v72.b;
          c = v72.c;
          d = v72.d;
          if (TSDNearlyEqualPoints(v72.a, v72.b, v72.c, v72.d) && TSDNearlyEqualPoints(a, b, v72.tx, v72.ty) && TSDNearlyEqualPoints(a, b, *&v73, *(&v73 + 1)))
          {
            goto LABEL_52;
          }

          [v11 currentPoint];
          v36 = TSDSubtractPoints(v34, v35, v72.a);
          v72.c = TSDAddPoints(c, d, v36);
          v72.d = v37;
          [v11 curveToPoint:v73 controlPoint1:v72.c controlPoint2:{v37, v72.tx, v72.ty}];
          v14 = 0;
          v70 = 0;
          p_c = &v73;
          goto LABEL_51;
        }

        if (v16 == 3)
        {
          [(TSDBezierPath *)self elementAtIndex:v69 associatedPoints:&v72.c];
          v17 = 1;
LABEL_18:
          v19 = v72.a;
          v18 = v72.b;
          v21 = v72.c;
          v20 = v72.d;
          v22 = fabs(TSDSubtractPoints(v72.a, v72.b, v72.c));
          v24 = fabs(v23);
          v25 = v24 > v22 + v15 * -0.01 && v22 < v15;
          v26 = v22 > v24 + v15 * -0.01 && v24 < v15;
          if (v26 || v25)
          {
            if (v26 && v25)
            {
              if ((v17 & (HIDWORD(v68) | v68)) == 1)
              {
                [v11 elementAtIndex:v67 associatedPoints:&v72.c];
              }

              else if ([v11 elementAtIndex:objc_msgSend(v11 associatedPoints:{"elementCount") - 1, &v72.c}] == 2)
              {
                *&v72.c = v73;
              }

              v71 = *&v72.c;
              y = v72.d;
              x = v72.c;
            }

            else
            {
              if (context)
              {
                v76.x = v19;
                v76.y = v18;
                *&v39 = *&CGContextConvertPointToDeviceSpace(context, v76);
                *&v40 = *&CGContextConvertPointToDeviceSpace(context, *&v72.c);
              }

              else
              {
                v39 = TSDMultiplyPointScalar(v19, v18, scaleCopy);
                v40 = TSDMultiplyPointScalar(v21, v20, scaleCopy);
              }

              v47 = v40;
              if (vabdd_f64(v39, v40) < 0.1)
              {
                v47 = v39;
              }

              if (v65)
              {
                v48 = v25;
              }

              else
              {
                v48 = v26;
              }

              if (v66)
              {
                if (v65)
                {
                  v50 = v26;
                }

                else
                {
                  v50 = v25;
                }

                v49 = v39 + 0.5;
                if (v50)
                {
                  v47 = v47 + 0.5;
                  HIDWORD(v68) |= v14;
                  LOBYTE(v70) = 1;
                }

                else
                {
                  if ((v70 & 1) == 0)
                  {
                    v49 = v39;
                  }

                  if ((v17 & HIDWORD(v68)) != 0)
                  {
                    v47 = v47 + 0.5;
                  }
                }

                if (v48)
                {
                  LODWORD(v68) = v14 | v68;
                  BYTE4(v70) = 1;
                }
              }

              else
              {
                v49 = v39;
              }

              v51 = TSDAliasRoundedPoint(v49);
              v53 = v52;
              v55 = TSDAliasRoundedPoint(v47);
              v56 = v54;
              v71.x = v55;
              v71.y = v54;
              if (v70)
              {
                v51 = v51 + -0.5;
                v55 = v55 + -0.5;
                v71.x = v55;
              }

              if ((v70 & 0x100000000) != 0)
              {
                v53 = v53 + -0.5;
                v56 = v54 + -0.5;
                v71.y = v54 + -0.5;
              }

              if (context)
              {
                v77.x = v51;
                v77.y = v53;
                v57 = CGContextConvertPointToUserSpace(context, v77);
                x = v57.x;
                y = v57.y;
                v60 = CGContextConvertPointToUserSpace(context, v71);
                v59 = v60.y;
                v58 = v60.x;
              }

              else
              {
                x = TSDMultiplyPointScalar(v51, v53, v15);
                y = v61;
                v58 = TSDMultiplyPointScalar(v55, v56, v15);
              }

              v71.x = v58;
              v71.y = v59;
              if (v26)
              {
                if ((v14 & 1) == 0)
                {
                  [v11 currentPoint];
                  x = v62;
                }

                if (v13 + 1 < elementCount && [(TSDBezierPath *)self elementAtIndex:?])
                {
                  v71.x = v72.c;
                }
              }

              else if (v25)
              {
                if ((v14 & 1) == 0)
                {
                  [v11 currentPoint];
                  y = v63;
                }

                if (v13 + 1 < elementCount && [(TSDBezierPath *)self elementAtIndex:?])
                {
                  v71.y = v72.d;
                }
              }
            }

            if ([v11 elementAtIndex:objc_msgSend(v11 associatedPoints:{"elementCount") - 1, &v74}] == 2)
            {
              v43 = *&v74.c;
              v44 = TSDSubtractPoints(x, y, v74.tx);
              v74.c = TSDAddPoints(*&v43, *(&v43 + 1), v44);
              v74.d = v45;
              v74.tx = x;
              p_ty = &v74.ty;
            }

            else
            {
              v74.a = x;
              p_ty = &v74.b;
            }

            *p_ty = y;
            [v11 setAssociatedPoints:&v74 atIndex:{objc_msgSend(v11, "elementCount") - 1}];
            if (v17)
            {
              [v11 setAssociatedPoints:&v71 atIndex:v67];
              v27 = v11;
              goto LABEL_46;
            }

            v29 = v71.y;
            v28 = v71.x;
            v27 = v11;
LABEL_48:
            [v27 lineToPoint:{v28, v29}];
          }

          else
          {
            v27 = v11;
            if (!v17)
            {
              v28 = v21;
              v29 = v20;
              goto LABEL_48;
            }

LABEL_46:
            [v27 closePath];
          }

          v14 = 0;
LABEL_50:
          p_c = &v72.c;
LABEL_51:
          *&v72.a = *p_c;
        }
      }

      else
      {
        if (!v16)
        {
          [v11 moveToPoint:{v72.c, v72.d}];
          v69 = v13;
          v70 = 0;
          v67 = [v11 elementCount] - 1;
          v68 = 0;
          v14 = 1;
          goto LABEL_50;
        }

        if (v16 == 1)
        {
          v17 = 0;
          goto LABEL_18;
        }
      }

LABEL_52:
      ++v13;
    }

    while (elementCount != v13);
  }

  return v11;
}

- (id)aliasedPathInContext:(CGContext *)context effectiveStrokeWidth:(float)width
{
  *&v4 = width;
  LODWORD(v5) = 1.0;
  return [(TSDBezierPath *)self p_aliasedPathInContext:context viewScale:v5 effectiveStrokeWidth:v4];
}

+ (TSDBezierPath)bezierPathWithConvexHullOfPoints:(CGPoint *)points count:(unint64_t)count
{
  v6 = +[TSDBezierPath bezierPath];
  v7 = v6;
  x = points->x;
  y = points->y;
  if (count)
  {
    p_y = &points->y;
    countCopy = count;
    do
    {
      if (*(p_y - 1) < x)
      {
        y = *p_y;
        x = *(p_y - 1);
      }

      p_y += 2;
      --countCopy;
    }

    while (countCopy);
  }

  [(TSDBezierPath *)v6 moveToPoint:x, y];
  v12 = x;
  v13 = y;
  do
  {
    v14 = points->x;
    v15 = points->y;
    v16 = &points->y;
    for (i = count; i; --i)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      if (v18 != v12 || v19 != v13)
      {
        v21 = v14 == v12 && v15 == v13;
        if (v21 || (v22 = (v15 - v13) * (v18 - v12), v23 = (v14 - v12) * (v19 - v13), v22 < v23) && vabdd_f64(v22, v23) >= 0.01)
        {
          v14 = *(v16 - 1);
          v15 = *v16;
        }
      }

      v16 += 2;
    }

    [(TSDBezierPath *)v7 lineToPoint:v14, v15];
    v24 = v14 == x && v15 == y;
    v12 = v14;
    v13 = v15;
  }

  while (!v24);
  [(TSDBezierPath *)v7 lineToPoint:x, y];
  [(TSDBezierPath *)v7 closePath];
  return v7;
}

- (id)bezierPathByFittingCurve
{
  v3 = +[TSDCurveFitter curveFitter];

  return [(TSDBezierPath *)self bezierPathByFittingCurve:v3];
}

- (id)bezierPathByFittingCurve:(id)curve
{
  v18 = *MEMORY[0x277D85DE8];
  bezierPathByFlatteningPath = [(TSDBezierPath *)self bezierPathByFlatteningPath];
  elementCount = [bezierPathByFlatteningPath elementCount];
  if (!elementCount)
  {
    return bezierPathByFlatteningPath;
  }

  v6 = elementCount;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if ([bezierPathByFlatteningPath isRectangular])
  {
    return bezierPathByFlatteningPath;
  }

  v10 = malloc_type_calloc(v6, 0x10uLL, 0x1000040451B5BE8uLL);
  v9 = +[TSDBezierPath bezierPath];
  if (v6 >= 1)
  {
    v11 = 0;
    for (i = 0; i != v6; ++i)
    {
      v13 = [bezierPathByFlatteningPath elementAtIndex:i associatedPoints:&v17];
      switch(v13)
      {
        case 3:
          if (v11 >= 2)
          {
            v14 = &v10[2 * v11];
            *v14 = v7;
            v14[1] = v8;
            v15 = [curve bezierPathFittingPointArray:v10 count:(v11 + 1)];
            [v15 closePath];
            [v9 appendBezierPath:v15];
          }

          v11 = 0;
          break;
        case 1:
          *&v10[2 * v11++] = v17;
          break;
        case 0:
          if (v11 >= 2)
          {
            [v9 appendBezierPath:{objc_msgSend(curve, "bezierPathFittingPointArray:count:", v10, v11)}];
          }

          v8 = *(&v17 + 1);
          v7 = v17;
          *v10 = v17;
          v10[1] = v8;
          v11 = 1;
          break;
      }
    }

    if (v11 >= 2)
    {
      [v9 appendBezierPath:{objc_msgSend(curve, "bezierPathFittingPointArray:count:", v10, v11)}];
    }
  }

  free(v10);
  return v9;
}

+ (id)excludeBezierPaths:(id)paths
{
  v4 = [TSDBezierPath p_BOOLeanWithBezierPaths:paths operation:0];
  v5 = [TSDBezierPath p_BOOLeanWithBezierPaths:paths operation:1];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{v4, v5, 0}];

  return [TSDBezierPath p_BOOLeanWithBezierPaths:v6 operation:2];
}

+ (id)appendBezierPaths:(id)paths
{
  v4 = +[TSDBezierPath bezierPath];
  objectEnumerator = [paths objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [v4 appendBezierPath:nextObject2];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return v4;
}

+ (id)outlineBezierPath:(id)path withThreshold:(double)threshold
{
  [path lineWidth];
  if (v6 != 0.0)
  {
    [self p_bezierToPath:path];
    [path lineJoinStyle];
    [path lineCapStyle];
    operator new();
  }

  return path;
}

+ (id)outsideEdgeOfBezierPath:(id)path
{
  v4 = *MEMORY[0x277D85DE8];
  [TSDBezierPath p_bezierToPath:?];
  operator new();
}

+ (id)exteriorOfBezierPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  elementCount = [path elementCount];
  v5 = 0;
  v6 = elementCount - 1;
  if (elementCount >= 1)
  {
    v7 = 0;
    v8 = -elementCount;
    v9 = 1;
    v10 = 1;
    while (1)
    {
      if (v8 + v9 && [path elementAtIndex:v9])
      {
        goto LABEL_20;
      }

      if (v10)
      {
        if (!v5)
        {
          v5 = +[TSDBezierPath bezierPath];
        }

        [v5 appendBezierPath:path fromSegment:v7 toSegment:v9];
      }

      if (v9 < v6)
      {
        break;
      }

      v10 = 0;
LABEL_20:
      ++v9;
      if (v8 + v9 == 1)
      {
        goto LABEL_21;
      }
    }

    [path elementAtIndex:v9 associatedPoints:v15];
    if ([v5 containsPoint:{v15[0], v15[1]}])
    {
      v11 = [path elementAtIndex:v9 + 1 associatedPoints:&v16];
      if (v11 == 2)
      {
        v12 = *&v17[3];
        v13 = v18;
      }

      else
      {
        if (v11 != 1)
        {
          v10 = 0;
          goto LABEL_19;
        }

        v12 = v16;
        v13 = v17;
      }

      v10 = [v5 containsPoint:{v12, *v13}] ^ 1;
    }

    else
    {
      v10 = 1;
    }

LABEL_19:
    v7 = v9;
    goto LABEL_20;
  }

LABEL_21:
  if (v5)
  {
    return v5;
  }

  else
  {
    return path;
  }
}

+ (id)smoothBezierPath:(id)path withThreshold:(double)threshold
{
  v6 = [self p_bezierToPath:path];
  thresholdCopy = threshold;
  Path::Coalesce(v6, thresholdCopy);
  v8 = [self p_pathToBezier:v6];
  if (v6)
  {
    Path::~Path(v6);
    MEMORY[0x26D6A9A30]();
  }

  return v8;
}

+ (id)p_pathToBezier:(Path *)bezier
{
  v4 = +[TSDBezierPath bezierPath];
  var2 = bezier->var2;
  if (var2 >= 1)
  {
    v7 = 0;
    v9 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v10 = 44 * var2;
    v11 = vdupq_n_s64(0xBFD5555555555555);
    while (1)
    {
      var3 = bezier->var3;
      v13 = *(var3 + v7);
      if (v13 > 1)
      {
        break;
      }

      if (!v13)
      {
        v43 = (var3 + v7);
        *v11.i64 = v43[4];
        v51 = v11;
        v14 = v43[5];
        [v4 moveToPoint:?];
        goto LABEL_34;
      }

      v14 = v8;
      *v11.i64 = v9;
      if (v13 == 1)
      {
        v15 = (var3 + v7);
        *v11.i64 = v15[4];
        v51 = v11;
        v14 = v15[5];
        [v4 lineToPoint:?];
LABEL_34:
        v11 = v51;
      }

LABEL_35:
      v7 += 44;
      v9 = *v11.i64;
      v8 = v14;
      if (v10 == v7)
      {
        return v4;
      }
    }

    if (v13 == 2)
    {
      v51 = vcvtq_f64_f32(*(var3 + v7 + 16));
      v14 = v51.f64[1];
      [v4 curveToPoint:? controlPoint1:? controlPoint2:?];
      goto LABEL_34;
    }

    if (v13 != 4)
    {
      if (v13 == 5)
      {
        [v4 closePath];
      }

      v14 = v8;
      *v11.i64 = v9;
      goto LABEL_35;
    }

    v16 = (var3 + v7);
    v5.f64[0] = v16[4];
    v14 = v16[5];
    v50 = v16[6];
    v47 = v16[7];
    v17 = *(v16 + 36);
    v18 = *(v16 + 37);
    v51 = v5;
    v19 = v5.f64[0] - v9;
    v20 = __sincos_stret(v16[8]);
    v21 = TSDDotPoints(v19, v14 - v8, v20.__cosval, v20.__sinval) / v50;
    v22 = TSDCrossPoints(v19, v14 - v8, v20.__cosval, v20.__sinval) / v47;
    v23 = TSDDotPoints(v21, v22, v21, v22);
    v24 = 0.0;
    if (v23 < 4.0)
    {
      v25 = sqrt(1.0 / v23 + -0.25);
      v24 = v25;
    }

    v26 = v22 * v24;
    v27 = -(v21 * v24);
    v28 = -(v22 * v24 - v21 * -0.5);
    v29 = 3.14159265;
    v30 = 3.14159265;
    if (v28 > -1.0)
    {
      v30 = 0.0;
      if (v28 < 1.0)
      {
        v46 = -(v27 - v22 * -0.5);
        v31 = acos(v28);
        v29 = 3.14159265;
        v30 = v31;
        v27 = -(v21 * v24);
        if (v46 < 0.0)
        {
          v30 = 6.28318531 - v31;
        }
      }
    }

    v48 = v30;
    v32 = v21 * 0.5 - v22 * v24;
    if (v32 > -1.0)
    {
      v29 = 0.0;
      if (v32 < 1.0)
      {
        v33 = v22 * 0.5 - v24 * -v21;
        v34 = v27;
        v35 = acos(v32);
        v27 = v34;
        v29 = v35;
        if (v33 < 0.0)
        {
          v29 = 6.28318531 - v35;
        }
      }
    }

    v36 = v29;
    v37 = v27 * v47;
    v49 = TSDDotPoints(v26 * v50, v27 * v47, v20.__cosval, -v20.__sinval);
    v38 = TSDCrossPoints(v26 * v50, v37, v20.__cosval, -v20.__sinval);
    if (v18)
    {
      v39 = v48;
      if (!v17)
      {
LABEL_25:
        v40 = v51.f64[0];
        v42 = v49;
        v41 = v50;
LABEL_33:
        [v4 appendBezierPathWithArcWithCenter:v18 radius:v42 + (v9 + v40) * 0.5 startAngle:v38 + (v8 + v14) * 0.5 endAngle:v41 clockwise:{v39 * 180.0 / 3.14159265, v36 * 180.0 / 3.14159265}];
        goto LABEL_34;
      }
    }

    else
    {
      v39 = v48;
      if (v17)
      {
        goto LABEL_25;
      }
    }

    v42 = -v49;
    v38 = -v38;
    v44 = v39 + 3.14159265;
    v39 = v36 + 3.14159265;
    if (v44 >= 6.28318531)
    {
      v36 = v44 + -6.28318531;
    }

    else
    {
      v36 = v44;
    }

    v40 = v51.f64[0];
    v41 = v50;
    if (v39 >= 6.28318531)
    {
      v39 = v39 + -6.28318531;
    }

    goto LABEL_33;
  }

  return v4;
}

+ (CGRect)p_pathToBounds:(Path *)bounds
{
  var8 = bounds->var8;
  if (var8 >= 1)
  {
    v8 = (bounds->var11 + 8);
    v9 = 1;
    do
    {
      if (v9)
      {
        v5 = 0.0;
        v3 = *(v8 - 1);
        v4 = *v8;
        v6 = 0.0;
      }

      else
      {
        v3 = TSDGrowRectToPoint(v3, v4, v5, v6, *(v8 - 1), *v8);
      }

      v9 = 0;
      v8 += 3;
      --var8;
    }

    while (var8);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (id)p_BOOLeanWithBezierPaths:(id)paths operation:(int)operation
{
  v6 = [paths count];
  if (v6 >> 31)
  {
    +[TSDBezierPath(LivarotPrivate) p_BOOLeanWithBezierPaths:operation:];
    return 0;
  }

  else
  {
    v7 = v6;
    if (v6 == 1)
    {

      return [paths lastObject];
    }

    else
    {
      if (v6)
      {
        v9 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
        v10 = 0;
        do
        {
          v9[v10] = [self p_bezierToPath:{objc_msgSend(paths, "objectAtIndex:", v10)}];
          ++v10;
        }

        while (v7 != v10);
        operator new();
      }

      return +[TSDBezierPath bezierPath];
    }
  }
}

+ (id)tracedPathForImage:(CGImage *)image alphaThreshold:(double)threshold pointSpacing:(double)spacing
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = +[TSDBezierPath bezierPath];
  AlphaInfo = CGImageGetAlphaInfo(image);
  if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
  {
    [v8 appendBezierPathWithRect:TSDRectWithSize()];
  }

  else
  {
    v10 = fminf(Width, 1024.0) / Width;
    v11 = fminf(Height, 1024.0) / Height;
    if (v11 < v10)
    {
      v10 = v11;
    }

    v45 = v10;
    v44 = v10;
    v12 = ceil(Height * v10);
    v13 = ceil(Width * v10) + 2.0;
    v14 = v13;
    v15 = v12 + 2.0;
    v16 = malloc_type_calloc(((v12 + 2.0) * v13), 1uLL, 0x100004077774924uLL);
    v17 = CGBitmapContextCreate(v16, v14, v15, 8uLL, v14, 0, 7u);
    CGContextSetBlendMode(v17, kCGBlendModeCopy);
    v60.size.width = v13 + -2.0;
    v60.size.height = v15 + -2.0;
    v60.origin.x = 1.0;
    v60.origin.y = 1.0;
    CGContextDrawImage(v17, v60, image);
    CGContextFlush(v17);
    CGContextRelease(v17);
    TSUClamp();
    v19 = v15 + -1.0;
    if (v19 <= 1.0)
    {
      v57 = 0;
      v58 = 0;
      v56 = &v57;
      __p = 0;
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v20 = (v18 * 255.0);
      v21 = v13 + -1.0;
      v22 = 1.0;
      do
      {
        if (v21 > 1.0)
        {
          v23 = &v16[v22 * v14 + 1];
          v24 = 2;
          do
          {
            *v23 = *v23 >= v20;
            ++v23;
            v25 = v24++;
          }

          while (v21 > v25);
        }

        v22 = v22 + 1.0;
      }

      while (v22 < v19);
      v57 = 0;
      v58 = 0;
      v56 = &v57;
      v26 = 1.0;
      do
      {
        if (v21 > 1.0)
        {
          v27 = &v16[v26 * v14];
          v28 = *v27;
          v29 = 1.0;
          do
          {
            v30 = v28;
            v28 = v27[v29];
            if (v30 != 1 && v28 == 1)
            {
              v48.a = v29 + 0.5;
              v48.b = v26 + 0.5;
              std::__tree<CGPoint>::__emplace_unique_key_args<CGPoint,CGPoint>(&v56, &v48.a);
            }

            v29 = v29 + 1.0;
          }

          while (v29 < v21);
        }

        v26 = v26 + 1.0;
      }

      while (v26 < v19);
      __p = 0;
      v54 = 0;
      v55 = 0;
      while (v58)
      {
        v52 = *(v56 + 2);
        std::__tree<CGPoint>::__erase_unique<CGPoint>(&v56, &v52);
        v54 = __p;
        v51 = v52;
        v32 = TSDFlooredPoint(*&v52);
        if (v16[(v31 - 1.0) * v14 + (v32 - 1.0)])
        {
          v33 = v31 + 1.0;
        }

        else
        {
          v33 = v31;
        }

        *&v48.c = 8;
        v48.a = v32 + -1.0;
        v48.b = v33 + -1.0;
        std::vector<TSDPathPoint>::push_back[abi:nn200100](&__p, &v48);
        v34 = v33;
        v35 = v32;
        do
        {
          v59.x = v35;
          v59.y = v34;
          nextPivotAndBlackVectors(v51, v59, &v50, &v49);
          v36 = vaddq_f64(v51, v50);
          v37 = v36.f64[1];
          v47 = v36.f64[0];
          v38 = TSDFlooredPoint(v36.f64[0]);
          if (v16[v39 * v14 + v38])
          {
            v51 = __PAIR128__(*&v37, *&v47);
            std::__tree<CGPoint>::__erase_unique<CGPoint>(&v56, &v51);
          }

          else
          {
            x = v49.x;
            y = v49.y;
            v42 = directionForVector(v49);
            v35 = v35 + x;
            v34 = v34 + y;
            v48.a = v35 + -1.0;
            v48.b = v34 + -1.0;
            *&v48.c = v42;
            if (v54 != __p && *(v54 - 2) == v42)
            {
              v54 -= 24;
            }

            std::vector<TSDPathPoint>::push_back[abi:nn200100](&__p, &v48);
          }
        }

        while (v32 != v35 || v33 != v34);
        if (0xAAAAAAAAAAAAAAABLL * ((v54 - __p) >> 3) >= 2)
        {
          buildSimplifiedPathFromPoints(v8, &__p, spacing);
        }
      }
    }

    free(v16);
    if (v45 != 1.0)
    {
      CGAffineTransformMakeScale(&v48, 1.0 / v44, 1.0 / v44);
      [v8 transformUsingAffineTransform:&v48];
    }

    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v56, v57);
  }

  if ([v8 elementCount] <= 0)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

+ (id)tracedPathForInstantAlphaBinaryBitmap:(id)bitmap pointSpacing:(double)spacing
{
  v6 = *(bitmap + 1);
  v7 = *(bitmap + 2);
  v8 = +[TSDBezierPath bezierPath];
  v45 = 0;
  v46 = 0;
  v44 = &v45;
  if ((v7 + 1) <= 1)
  {
    __p = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_51;
  }

  v9 = 1.0;
  do
  {
    if ((v6 + 1) >= 2)
    {
      v10 = 0;
      v11 = v9;
      v12 = 1.0;
      do
      {
        if (v12 >= 1)
        {
          v13 = 0;
          if (v11 < 1 || *(bitmap + 1) < v12)
          {
            goto LABEL_10;
          }

          if (*(bitmap + 2) >= v11)
          {
            v14 = (0x80uLL >> ((v12 - 1) & 7)) & *(*(bitmap + 4) + *(bitmap + 3) * (v9 - 1) + ((v12 - 1) >> 3));
            v13 = v14 == 0;
            if (v14)
            {
              v15 = 1;
            }

            else
            {
              v15 = v10 == v13;
            }

            if (!v15)
            {
              *&v47 = v12 + 0.5;
              *(&v47 + 1) = v9 + 0.5;
              std::__tree<CGPoint>::__emplace_unique_key_args<CGPoint,CGPoint>(&v44, &v47);
              v13 = 1;
            }

            goto LABEL_10;
          }
        }

        v13 = 0;
LABEL_10:
        v12 = v12 + 1.0;
        v10 = v13;
      }

      while (v12 < (v6 + 1));
    }

    v9 = v9 + 1.0;
  }

  while (v9 < (v7 + 1));
  __p = 0;
  v42 = 0;
  v43 = 0;
  while (v46)
  {
    v40 = *(v44 + 2);
    std::__tree<CGPoint>::__erase_unique<CGPoint>(&v44, &v40.x);
    v42 = __p;
    v39 = v40;
    v17 = TSDFlooredPoint(v40.x);
    v18 = v16;
    v19 = (v17 - 1.0);
    if (v19 >= 1)
    {
      v20 = (v16 - 1.0);
      v21 = v20 < 1 || *(bitmap + 1) < v19;
      if (!v21 && *(bitmap + 2) >= v20 && ((*(*(bitmap + 4) + *(bitmap + 3) * (v20 - 1) + ((v19 - 1) >> 3)) << ((v19 - 1) & 7)) & 0x80) == 0)
      {
        v18 = v16 + 1.0;
      }
    }

    v48 = 8;
    *&v47 = v17 + -1.0;
    *(&v47 + 1) = v18 + -1.0;
    std::vector<TSDPathPoint>::push_back[abi:nn200100](&__p, &v47);
    v22 = v18;
    v23 = v17;
    do
    {
      v49.x = v23;
      v49.y = v22;
      nextPivotAndBlackVectors(v39, v49, &v38, &v37);
      v24 = vaddq_f64(v39, v38);
      v25 = v24.f64[1];
      v36 = v24;
      v26 = TSDFlooredPoint(v24.f64[0]);
      if (v26 < 1 || ((v28 = v27, v27 >= 1) ? (v29 = *(bitmap + 1) < v26) : (v29 = 1), v29 || *(bitmap + 2) < v28 || ((*(*(bitmap + 4) + *(bitmap + 3) * (v28 - 1) + ((v26 - 1) >> 3)) << ((v26 - 1) & 7)) & 0x80) != 0))
      {
        x = v37.x;
        y = v37.y;
        v32 = directionForVector(v37);
        v23 = v23 + x;
        v22 = v22 + y;
        *&v47 = v23 + -1.0;
        *(&v47 + 1) = v22 + -1.0;
        v48 = v32;
        if (v42 != __p && *(v42 - 2) == v32)
        {
          v42 -= 24;
        }

        std::vector<TSDPathPoint>::push_back[abi:nn200100](&__p, &v47);
      }

      else
      {
        v39.x = v36.f64[0];
        v39.y = v25;
        std::__tree<CGPoint>::__erase_unique<CGPoint>(&v44, &v39.x);
      }
    }

    while (v17 != v23 || v18 != v22);
    if (0xAAAAAAAAAAAAAAABLL * ((v42 - __p) >> 3) >= 2)
    {
      buildSimplifiedPathFromPoints(v8, &__p, spacing);
    }
  }

LABEL_51:
  elementCount = [v8 elementCount];
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (elementCount <= 0)
  {
    v8 = 0;
  }

  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v44, v45);
  return v8;
}

@end