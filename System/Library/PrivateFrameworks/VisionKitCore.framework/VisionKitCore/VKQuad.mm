@interface VKQuad
+ (CATransform3D)transformToConvertLayer:(SEL)layer intoQuad:(id)quad frame:(id)frame;
+ (CGPoint)vertexCentroidFromQuads:(id)quads;
+ (id)quadFromCGRect:(CGRect)rect;
+ (id)quadFromUnionOfQuads:(id)quads baselineAngle:(double)angle;
- (BOOL)containsIntersectingLines;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)intersectsQuad:(id)quad;
- (BOOL)isCompletelyInsideRect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)rotationTransformAndBoundingBox:(SEL)box;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (CGPoint)vertexCentroid;
- (CGRect)boundingBox;
- (CGRect)minimumBoundingRectWithoutRotation;
- (NSArray)allPoints;
- (NSString)summaryDescription;
- (UIBezierPath)path;
- (VKQuad)initWithBottomLeft:(CGPoint)left bottomRight:(CGPoint)right topLeft:(CGPoint)topLeft topRight:(CGPoint)topRight;
- (VKQuad)initWithCRNormalizedQuad:(id)quad;
- (VKQuad)initWithCoder:(id)coder;
- (VKQuad)initWithDictionary:(id)dictionary;
- (VKQuad)initWithPoints:(id)points;
- (VKQuad)initWithRect:(CGRect)rect;
- (VKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight;
- (VKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (VKQuad)quadByAdjustingOrientation;
- (VKQuadSideLength)sideLength;
- (double)area;
- (double)averagedAngleFromBottomAndTopEdges;
- (double)distanceFromLine:(CGPoint *)line toPoint:(CGPoint)point;
- (double)maxHeight;
- (double)mininumDistanceToPoint:(CGPoint)point;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)intersectionOfLineFrom:(CGPoint)from to:(CGPoint)to withLineFrom:(CGPoint)lineFrom to:(CGPoint)a6;
- (id)normalizedQuadByConvertingFromView:(id)view toView:(id)toView toViewSize:(CGSize)size;
- (id)normalizedQuadFromView:(id)view;
- (id)quadByConvertingFromNormalizedRectToView:(id)view contentsRect:(CGRect)rect;
- (id)quadByConvertingFromView:(id)view toView:(id)toView isNormalized:(BOOL)normalized;
- (id)quadByFlippingPointsWithSourceFrame:(CGRect)frame;
- (id)quadFromAddingPoint:(CGPoint)point;
- (id)quadFromRotatingAroundCentroidWithAngle:(double)angle;
- (id)quadFromRotatingAroundOriginWithAngle:(double)angle;
- (id)quadFromSubtractingPoint:(CGPoint)point;
- (id)quadFromUnionWithQuad:(id)quad;
- (id)quadMultipliedBySize:(CGSize)size;
- (id)subquadFromRect:(CGRect)rect;
- (void)calcluateBoundingBox;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VKQuad

+ (CATransform3D)transformToConvertLayer:(SEL)layer intoQuad:(id)quad frame:(id)frame
{
  v45[8] = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  quadCopy = quad;
  [frameCopy topLeft];
  v45[0] = v11;
  v45[1] = v12;
  [frameCopy topRight];
  v45[2] = v13;
  v45[3] = v14;
  [frameCopy bottomRight];
  v45[4] = v15;
  v45[5] = v16;
  [frameCopy bottomLeft];
  v18 = v17;
  v20 = v19;

  v45[6] = v18;
  v45[7] = v20;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  [quadCopy bounds];
  v22 = v21;
  v24 = v23;
  [quadCopy anchorPoint];
  [quadCopy frame];
  v28 = v27;
  v30 = v29;
  [quadCopy anchorPoint];
  v32 = v31;
  v34 = v33;
  [quadCopy bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = VKMPointFromNormalizedRect(v32, v34, v36, v38, v40);
  a6->origin.x = VKMMultiplyPointScalar(v41, v42, -1.0);
  a6->origin.y = v43;
  a6->size.width = v28;
  a6->size.height = v30;
  return result;
}

- (VKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight
{
  y = bottomRight.y;
  x = bottomRight.x;
  v8 = bottomLeft.y;
  v9 = bottomLeft.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  result = [(VKQuad *)self init];
  if (result)
  {
    result->_bottomLeft.x = v9;
    result->_bottomLeft.y = v8;
    result->_bottomRight.x = x;
    result->_bottomRight.y = y;
    result->_topLeft.x = v13;
    result->_topLeft.y = v12;
    result->_topRight.x = v11;
    result->_topRight.y = v10;
  }

  return result;
}

- (VKQuad)initWithBottomLeft:(CGPoint)left bottomRight:(CGPoint)right topLeft:(CGPoint)topLeft topRight:(CGPoint)topRight
{
  y = topRight.y;
  x = topRight.x;
  v8 = topLeft.y;
  v9 = topLeft.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  result = [(VKQuad *)self init];
  if (result)
  {
    result->_bottomLeft.x = v13;
    result->_bottomLeft.y = v12;
    result->_bottomRight.x = v11;
    result->_bottomRight.y = v10;
    result->_topLeft.x = v9;
    result->_topLeft.y = v8;
    result->_topRight.x = x;
    result->_topRight.y = y;
  }

  return result;
}

- (VKQuad)initWithTopLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v8 = bottomRight.y;
  v9 = bottomRight.x;
  v10 = right.y;
  v11 = right.x;
  v12 = left.y;
  v13 = left.x;
  result = [(VKQuad *)self init];
  if (result)
  {
    result->_bottomLeft.x = x;
    result->_bottomLeft.y = y;
    result->_bottomRight.x = v9;
    result->_bottomRight.y = v8;
    result->_topLeft.x = v13;
    result->_topLeft.y = v12;
    result->_topRight.x = v11;
    result->_topRight.y = v10;
  }

  return result;
}

- (VKQuad)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v8 = CGRectGetMaxY(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v9 = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMinY(v24);

  return [(VKQuad *)self initWithBottomLeft:MinX bottomRight:MaxY topLeft:MaxX topRight:v8, v9, MinY, v11, v12];
}

- (VKQuad)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"BL_X"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"BL_Y"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"BR_X"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [dictionaryCopy objectForKeyedSubscript:@"BR_Y"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"TL_X"];
  [v17 doubleValue];
  v19 = v18;
  v20 = [dictionaryCopy objectForKeyedSubscript:@"TL_Y"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [dictionaryCopy objectForKeyedSubscript:@"TR_X"];
  [v23 doubleValue];
  v25 = v24;
  v26 = [dictionaryCopy objectForKeyedSubscript:@"TR_Y"];

  [v26 doubleValue];
  v28 = v27;

  return [(VKQuad *)self initWithBottomLeft:v7 bottomRight:v10 topLeft:v13 topRight:v16, v19, v22, v25, v28];
}

- (VKQuad)initWithPoints:(id)points
{
  pointsCopy = points;
  if ([pointsCopy count] == 4)
  {
    v5 = [pointsCopy objectAtIndexedSubscript:0];
    [v5 vk_pointValue];
    v7 = v6;
    v9 = v8;

    v10 = [pointsCopy objectAtIndexedSubscript:1];
    [v10 vk_pointValue];
    v12 = v11;
    v14 = v13;

    v15 = [pointsCopy objectAtIndexedSubscript:2];
    [v15 vk_pointValue];
    v17 = v16;
    v19 = v18;

    v20 = [pointsCopy objectAtIndexedSubscript:3];
    [v20 vk_pointValue];
    v22 = v21;
    v24 = v23;

    self = [(VKQuad *)self initWithBottomLeft:v17 bottomRight:v19 topLeft:v22 topRight:v24, v7, v9, v12, v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)quadFromCGRect:(CGRect)rect
{
  v3 = [[self alloc] initWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  return v3;
}

- (VKQuad)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"BL_X"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"BL_Y"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"BR_X"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"BR_Y"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"TL_X"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"TL_Y"];
  v16 = v15;
  [coderCopy decodeDoubleForKey:@"TR_X"];
  v18 = v17;
  [coderCopy decodeDoubleForKey:@"TR_Y"];
  v20 = [(VKQuad *)self initWithBottomLeft:v6 bottomRight:v8 topLeft:v10 topRight:v12, v14, v16, v18, v19];
  v21 = [coderCopy decodeIntegerForKey:@"LD"];

  [(VKQuad *)v20 setLayoutDirection:v21];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(VKQuad *)self bottomLeft];
  [coderCopy encodeDouble:@"BL_X" forKey:?];
  [(VKQuad *)self bottomLeft];
  [coderCopy encodeDouble:@"BL_Y" forKey:v4];
  [(VKQuad *)self bottomRight];
  [coderCopy encodeDouble:@"BR_X" forKey:?];
  [(VKQuad *)self bottomRight];
  [coderCopy encodeDouble:@"BR_Y" forKey:v5];
  [(VKQuad *)self topLeft];
  [coderCopy encodeDouble:@"TL_X" forKey:?];
  [(VKQuad *)self topLeft];
  [coderCopy encodeDouble:@"TL_Y" forKey:v6];
  [(VKQuad *)self topRight];
  [coderCopy encodeDouble:@"TR_X" forKey:?];
  [(VKQuad *)self topRight];
  [coderCopy encodeDouble:@"TR_Y" forKey:v7];
  [coderCopy encodeInteger:-[VKQuad layoutDirection](self forKey:{"layoutDirection"), @"LD"}];
}

- (id)dictionaryRepresentation
{
  v15[9] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_bottomLeft.x, @"BL_X"}];
  v15[0] = v3;
  v14[1] = @"BL_Y";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bottomLeft.y];
  v15[1] = v4;
  v14[2] = @"BR_X";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bottomRight.x];
  v15[2] = v5;
  v14[3] = @"BR_Y";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bottomRight.y];
  v15[3] = v6;
  v14[4] = @"TL_X";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_topLeft.x];
  v15[4] = v7;
  v14[5] = @"TL_Y";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_topLeft.y];
  v15[5] = v8;
  v14[6] = @"TR_X";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_topRight.x];
  v15[6] = v9;
  v14[7] = @"TR_Y";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_topRight.y];
  v15[7] = v10;
  v14[8] = @"LD";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_layoutDirection];
  v15[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

- (CGRect)boundingBox
{
  if (CGRectEqualToRect(*MEMORY[0x1E695F058], self->_boundingBox))
  {
    [(VKQuad *)self calcluateBoundingBox];
  }

  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)calcluateBoundingBox
{
  v3 = VKMRectWithPoints(self->_bottomLeft.x, self->_bottomLeft.y, self->_topLeft.x);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14.origin.x = VKMRectWithPoints(self->_bottomRight.x, self->_bottomRight.y, self->_topRight.x);
  v14.origin.y = v10;
  v14.size.width = v11;
  v14.size.height = v12;
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  self->_boundingBox = CGRectUnion(v13, v14);
}

- (double)area
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  v25 = self->_topRight.x;
  v23 = x;
  v24 = self->_topRight.y;
  v4 = self->_bottomRight.x;
  v5 = self->_bottomRight.y;
  v21 = self->_bottomLeft.y;
  v22 = self->_bottomLeft.x;
  [(VKQuad *)self sideLength];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = VKMAngleBetweenPoints(x, y, v22, v21, v4, v5);
  v15 = v14 + VKMAngleBetweenPoints(v4, v5, v25, v24, v23, y);
  v16 = (v9 + v11 + v13 + v7) * 0.5;
  v17 = (v16 - v11) * ((v16 - v13) * (v16 - v7));
  v18 = v16 - v9;
  v19 = cos(v15 * 0.5);
  return sqrt(v9 * (v11 * -(v13 * v7)) * (v19 * v19) + v17 * v18);
}

- (NSString)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  [(VKQuad *)self topLeft];
  v5 = v4;
  [(VKQuad *)self topLeft];
  v7 = v6;
  [(VKQuad *)self topRight];
  v9 = v8;
  [(VKQuad *)self topRight];
  v11 = v10;
  [(VKQuad *)self bottomLeft];
  v13 = v12;
  [(VKQuad *)self bottomLeft];
  v15 = v14;
  [(VKQuad *)self bottomRight];
  v17 = v16;
  [(VKQuad *)self bottomRight];
  return [v3 stringWithFormat:@"TL:%.2f %.2f TR:%.2f %.2f BL:%.2f %.2f BR:%.2f %.2f", v5, v7, v9, v11, v13, v15, v17, v18];
}

- (NSArray)allPoints
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696B098];
  [(VKQuad *)self topLeft];
  v4 = [v3 vk_valueWithPoint:?];
  v13[0] = v4;
  v5 = MEMORY[0x1E696B098];
  [(VKQuad *)self topRight];
  v6 = [v5 vk_valueWithPoint:?];
  v13[1] = v6;
  v7 = MEMORY[0x1E696B098];
  [(VKQuad *)self bottomLeft];
  v8 = [v7 vk_valueWithPoint:?];
  v13[2] = v8;
  v9 = MEMORY[0x1E696B098];
  [(VKQuad *)self bottomRight];
  v10 = [v9 vk_valueWithPoint:?];
  v13[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];

  return v11;
}

- (BOOL)containsIntersectingLines
{
  [(VKQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(VKQuad *)self topRight];
  v8 = v7;
  v10 = v9;
  [(VKQuad *)self bottomLeft];
  v12 = v11;
  v14 = v13;
  [(VKQuad *)self bottomRight];
  v17 = [(VKQuad *)self intersectionOfLineFrom:v4 to:v6 withLineFrom:v8 to:v10, v12, v14, v15, v16];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    [(VKQuad *)self topRight];
    v20 = v19;
    v22 = v21;
    [(VKQuad *)self bottomRight];
    v24 = v23;
    v26 = v25;
    [(VKQuad *)self topLeft];
    v28 = v27;
    v30 = v29;
    [(VKQuad *)self bottomLeft];
    v33 = [(VKQuad *)self intersectionOfLineFrom:v20 to:v22 withLineFrom:v24 to:v26, v28, v30, v31, v32];
    v18 = v33 != 0;
  }

  return v18;
}

- (VKQuadSideLength)sideLength
{
  [(VKQuad *)self bottomLeft];
  v4 = v3;
  v6 = v5;
  [(VKQuad *)self topLeft];
  v9 = VKMDistance(v4, v6, v7, v8);
  [(VKQuad *)self bottomRight];
  v11 = v10;
  v13 = v12;
  [(VKQuad *)self topRight];
  v16 = VKMDistance(v11, v13, v14, v15);
  [(VKQuad *)self topLeft];
  v18 = v17;
  v20 = v19;
  [(VKQuad *)self topRight];
  v23 = VKMDistance(v18, v20, v21, v22);
  [(VKQuad *)self bottomLeft];
  v25 = v24;
  v27 = v26;
  [(VKQuad *)self bottomRight];
  v30 = VKMDistance(v25, v27, v28, v29);
  v31 = v9;
  v32 = v16;
  v33 = v23;
  result.bottom = v30;
  result.top = v33;
  result.right = v32;
  result.left = v31;
  return result;
}

- (double)maxHeight
{
  [(VKQuad *)self sideLength];
  if (result < v3)
  {
    return v3;
  }

  return result;
}

- (id)intersectionOfLineFrom:(CGPoint)from to:(CGPoint)to withLineFrom:(CGPoint)lineFrom to:(CGPoint)a6
{
  v8 = to.x - from.x;
  v9 = a6.y - lineFrom.y;
  v10 = to.y - from.y;
  v11 = a6.x - lineFrom.x;
  v12 = v8 * (a6.y - lineFrom.y) - v10 * (a6.x - lineFrom.x);
  v13 = 0;
  if (v12 != 0.0 && ((v15 = lineFrom.x - from.x, v16 = lineFrom.y - from.y, v17 = ((lineFrom.x - from.x) * v9 - v16 * v11) / v12, v17 >= 0.0) ? (v18 = v17 <= 1.0) : (v18 = 0), v18 && ((v19 = (v15 * v10 - v16 * v8) / v12, v19 >= 0.0) ? (v20 = v19 <= 1.0) : (v20 = 0), v20)))
  {
    v13 = [MEMORY[0x1E696B098] vk_valueWithPoint:{from.x + v17 * v8, from.y + v17 * v10, v6}];
  }

  return v13;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v23 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (VKMPointIsFinite(point.x, point.y))
  {
    v7 = 0;
    topLeft = self->_topLeft;
    bottomRight = self->_bottomRight;
    bottomLeft = self->_bottomLeft;
    v22 = topLeft;
    topRight = self->_topRight;
    v20 = bottomRight;
    v18 = topLeft;
    v11 = topLeft.y;
    v10 = topLeft.x;
    p_y = &topRight.y;
    for (i = 1; i != 5; ++i)
    {
      v14 = v10;
      v15 = v11;
      v10 = *(p_y - 1);
      v11 = *p_y;
      [(VKQuad *)self pointInsideValueForStartPoint:v14 endPoint:v15 testPoint:v10, *p_y, x, y, v18, topRight, v20, bottomLeft, v22];
      if (v16 != 0.0)
      {
        if (v16 > 0.0)
        {
          if (v7 < 0)
          {
            return v6;
          }

          ++v7;
        }

        if (v16 < 0.0)
        {
          if (v7 > 0)
          {
            return v6;
          }

          --v7;
        }
      }

      v6 = i > 3;
      p_y += 2;
    }
  }

  return v6;
}

- (BOOL)intersectsQuad:(id)quad
{
  v53[8] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  selfCopy = self;
  v6 = quadCopy;
  [(VKQuad *)selfCopy boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 boundingBox];
  v55.origin.x = v15;
  v55.origin.y = v16;
  v55.size.width = v17;
  v55.size.height = v18;
  v54.origin.x = v8;
  v54.origin.y = v10;
  v54.size.width = v12;
  v54.size.height = v14;
  if (CGRectIntersectsRect(v54, v55))
  {
    [(VKQuad *)selfCopy topLeft];
    v53[0] = v19;
    v53[1] = v20;
    [(VKQuad *)selfCopy topRight];
    v53[2] = v21;
    v53[3] = v22;
    [(VKQuad *)selfCopy bottomRight];
    v53[4] = v23;
    v53[5] = v24;
    [(VKQuad *)selfCopy bottomLeft];
    v53[6] = v25;
    v53[7] = v26;
    [v6 topLeft];
    v52[0] = v27;
    v52[1] = v28;
    [v6 topRight];
    v52[2] = v29;
    v52[3] = v30;
    [v6 bottomRight];
    v52[4] = v31;
    v52[5] = v32;
    [v6 bottomLeft];
    v33 = 0;
    v52[6] = v34;
    v52[7] = v35;
    v45 = selfCopy;
    do
    {
      if (-[VKQuad containsPoint:](selfCopy, "containsPoint:", *&v52[v33], *&v52[v33 + 1], v45) || ([v6 containsPoint:{*&v53[v33], *&v53[v33 + 1]}] & 1) != 0)
      {
        v46 = 1;
        goto LABEL_15;
      }

      v33 += 2;
    }

    while (v33 != 8);
    v36 = 0;
    v46 = 0;
    do
    {
      v37 = v36++;
      v38 = v52;
      v39 = 1;
      while (v39 != 5)
      {
        v40 = *v38++;
        v41 = *&v52[2 * (v39 & 3)];
        v50[0] = v40;
        v50[1] = v41;
        v42 = *&v53[2 * (v36 & 3)];
        v51[0] = *&v53[2 * v37];
        v51[1] = v42;
        v48 = 0;
        v49 = 0;
        v47[0] = 0.0;
        v47[1] = 0.0;
        ++v39;
        if (VKMIntersectionOfLines(v51, v50, &v49, &v48, v47, 0, 0))
        {
          v46 = 1;
          break;
        }
      }
    }

    while (v36 != 4);
LABEL_15:
    selfCopy = v45;
    v43 = v46;
  }

  else
  {
    v43 = 0;
  }

  return v43 & 1;
}

- (BOOL)isCompletelyInsideRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKQuad *)self topLeft];
  v24.x = v8;
  v24.y = v9;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectContainsPoint(v27, v24))
  {
    return 0;
  }

  [(VKQuad *)self topRight];
  v25.x = v10;
  v25.y = v11;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  if (!CGRectContainsPoint(v28, v25))
  {
    return 0;
  }

  [(VKQuad *)self bottomLeft];
  v26.x = v12;
  v26.y = v13;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  if (!CGRectContainsPoint(v29, v26))
  {
    return 0;
  }

  [(VKQuad *)self bottomRight];
  v15 = v14;
  v17 = v16;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;

  return CGRectContainsPoint(*&v18, *&v15);
}

- (VKQuad)quadByAdjustingOrientation
{
  v73[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696B098];
  [(VKQuad *)self topLeft];
  v4 = [v3 vk_valueWithPoint:?];
  v73[0] = v4;
  v5 = MEMORY[0x1E696B098];
  [(VKQuad *)self topRight];
  v6 = [v5 vk_valueWithPoint:?];
  v73[1] = v6;
  v7 = MEMORY[0x1E696B098];
  [(VKQuad *)self bottomLeft];
  v8 = [v7 vk_valueWithPoint:?];
  v73[2] = v8;
  v9 = MEMORY[0x1E696B098];
  [(VKQuad *)self bottomRight];
  v10 = [v9 vk_valueWithPoint:?];
  v73[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];

  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_34];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 pointValue];
  v15 = v14;
  v72 = v14;

  v16 = [v12 objectAtIndexedSubscript:1];
  [v16 pointValue];
  v18 = v17;

  v19 = 2;
  v20 = [v12 objectAtIndexedSubscript:2];
  [v20 pointValue];
  v22 = v21;

  v23 = [v12 objectAtIndexedSubscript:3];
  [v23 pointValue];
  v25 = v24;

  if (v25 >= v22)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (v25 >= v22)
  {
    v19 = 3;
  }

  v27 = [v12 objectAtIndexedSubscript:{v15 >= v18, *&v18}];
  [v27 pointValue];
  v71 = v28;
  v30 = v29;

  v31 = [v12 objectAtIndexedSubscript:v26];
  [v31 pointValue];
  v33 = v32;
  v35 = v34;

  v36 = [v12 objectAtIndexedSubscript:v15 < v18];
  [v36 pointValue];
  v38 = v37;
  v40 = v39;

  v41 = [v12 objectAtIndexedSubscript:v19];
  [v41 pointValue];
  v43 = v42;
  v45 = v44;

  v46 = [[VKQuad alloc] initWithTopLeft:v71 topRight:v30 bottomLeft:v33 bottomRight:v35, v38, v40, v43, v45];
  v47 = v46;
  if (v22 < v72 && v22 < v70 && [(VKQuad *)v46 containsIntersectingLines])
  {
    v48 = [v12 objectAtIndexedSubscript:2];
    [v48 pointValue];
    v50 = v49;
    v52 = v51;

    v53 = [v12 objectAtIndexedSubscript:3];
    [v53 pointValue];
    v55 = v54;
    v57 = v56;

    v58 = [v12 objectAtIndexedSubscript:0];
    [v58 pointValue];
    v60 = v59;
    v62 = v61;

    v63 = [v12 objectAtIndexedSubscript:1];
    [v63 pointValue];
    v65 = v64;
    v67 = v66;

    v68 = [[VKQuad alloc] initWithTopLeft:v50 topRight:v52 bottomLeft:v55 bottomRight:v57, v60, v62, v65, v67];
    v47 = v68;
  }

  return v47;
}

uint64_t __36__VKQuad_quadByAdjustingOrientation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 pointValue];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 pointValue];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)quadByFlippingPointsWithSourceFrame:(CGRect)frame
{
  [(VKQuad *)self topLeft];
  VKMFlipPoint();
  v18 = v5;
  v19 = v4;
  [(VKQuad *)self topRight];
  VKMFlipPoint();
  v7 = v6;
  v9 = v8;
  [(VKQuad *)self bottomRight];
  VKMFlipPoint();
  v11 = v10;
  v13 = v12;
  [(VKQuad *)self bottomLeft];
  VKMFlipPoint();
  v16 = [[VKQuad alloc] initWithBottomLeft:v14 bottomRight:v15 topLeft:v11 topRight:v13, v19, v18, v7, v9];

  return v16;
}

- (double)averagedAngleFromBottomAndTopEdges
{
  [(VKQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(VKQuad *)self topRight];
  v9 = VKMSlopeOfLine(v4, v6, v7, v8);
  v10 = atan(v9);
  [(VKQuad *)self bottomLeft];
  v12 = v11;
  v14 = v13;
  [(VKQuad *)self bottomRight];
  v17 = VKMSlopeOfLine(v12, v14, v15, v16);
  return (v10 + atan(v17)) * 0.5;
}

- (CGRect)minimumBoundingRectWithoutRotation
{
  [(VKQuad *)self sideLength];
  v4 = v3;
  v6 = v5;
  [(VKQuad *)self vertexCentroid];
  if (v6 >= v4)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  v10 = VKMRectWithCenterAndSize(v7, v8, v9);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (([(VKQuad *)self topLeft], v7 = v6, v9 = v8, [(VKQuad *)v5 topLeft], v7 == v11) ? (v12 = v9 == v10) : (v12 = 0), v12))
  {
    [(VKQuad *)self topRight];
    v16 = v15;
    v18 = v17;
    [(VKQuad *)v5 topRight];
    v13 = 0;
    if (v16 == v20 && v18 == v19)
    {
      [(VKQuad *)self bottomRight];
      v22 = v21;
      v24 = v23;
      [(VKQuad *)v5 bottomRight];
      v13 = 0;
      if (v22 == v26 && v24 == v25)
      {
        [(VKQuad *)self bottomLeft];
        v28 = v27;
        v30 = v29;
        [(VKQuad *)v5 bottomLeft];
        v13 = 0;
        if (v28 == v32 && v30 == v31)
        {
          layoutDirection = [(VKQuad *)self layoutDirection];
          v13 = layoutDirection == [(VKQuad *)v5 layoutDirection];
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(VKQuad *)self topLeft];
  v5 = v4;
  v7 = v6;
  [(VKQuad *)self topRight];
  v9 = v8;
  v11 = v10;
  [(VKQuad *)self bottomRight];
  v13 = v12;
  v15 = v14;
  [(VKQuad *)self bottomLeft];
  v18 = [[VKQuad alloc] initWithBottomLeft:v16 bottomRight:v17 topLeft:v13 topRight:v15, v5, v7, v9, v11];
  [(VKQuad *)v18 setLayoutDirection:[(VKQuad *)self layoutDirection]];
  return v18;
}

- (UIBezierPath)path
{
  path = self->_path;
  if (!path)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC728]);
    v5 = self->_path;
    self->_path = v4;

    v6 = self->_path;
    [(VKQuad *)self topLeft];
    [(UIBezierPath *)v6 moveToPoint:?];
    v7 = self->_path;
    [(VKQuad *)self topRight];
    [(UIBezierPath *)v7 vk_addLineToPoint:?];
    v8 = self->_path;
    [(VKQuad *)self bottomRight];
    [(UIBezierPath *)v8 vk_addLineToPoint:?];
    v9 = self->_path;
    [(VKQuad *)self bottomLeft];
    [(UIBezierPath *)v9 vk_addLineToPoint:?];
    v10 = self->_path;
    [(VKQuad *)self topLeft];
    [(UIBezierPath *)v10 vk_addLineToPoint:?];
    [(UIBezierPath *)self->_path closePath];
    path = self->_path;
  }

  return path;
}

- (id)quadByConvertingFromView:(id)view toView:(id)toView isNormalized:(BOOL)normalized
{
  normalizedCopy = normalized;
  viewCopy = view;
  toViewCopy = toView;
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  selfCopy = self;
  vk_isFlipped = [viewCopy vk_isFlipped];
  if (vk_isFlipped != [toViewCopy vk_isFlipped])
  {
    v18 = [(VKQuad *)selfCopy copy];

    if (normalizedCopy)
    {
      v19 = 0.0;
      v20 = 0.0;
      v21 = 1.0;
      v22 = 1.0;
    }

    else
    {
      [viewCopy bounds];
    }

    selfCopy = [v18 quadByFlippingPointsWithSourceFrame:{v19, v20, v21, v22}];
  }

  [(VKQuad *)selfCopy topLeft];
  if (normalizedCopy)
  {
    [viewCopy convertPoint:0 toView:{VKMPointFromNormalizedRect(v23, v24, v11, v13, v15)}];
    v71 = v26;
    v72 = v25;
    [(VKQuad *)selfCopy topRight];
    [viewCopy convertPoint:0 toView:{VKMPointFromNormalizedRect(v27, v28, v11, v13, v15)}];
    v30 = v29;
    v32 = v31;
    [(VKQuad *)selfCopy bottomRight];
    [viewCopy convertPoint:0 toView:{VKMPointFromNormalizedRect(v33, v34, v11, v13, v15)}];
    v36 = v35;
    v38 = v37;
    [(VKQuad *)selfCopy bottomLeft];
    v39 = v15;
    v41 = v71;
    v40 = v72;
    v44 = VKMPointFromNormalizedRect(v42, v43, v11, v13, v39);
  }

  else
  {
    [viewCopy convertPoint:0 toView:?];
    v40 = v45;
    v41 = v46;
    [(VKQuad *)selfCopy topRight];
    [viewCopy convertPoint:0 toView:?];
    v30 = v47;
    v32 = v48;
    [(VKQuad *)selfCopy bottomRight];
    [viewCopy convertPoint:0 toView:?];
    v36 = v49;
    v38 = v50;
    [(VKQuad *)selfCopy bottomLeft];
  }

  [viewCopy convertPoint:0 toView:v44];
  v52 = v51;
  v54 = v53;
  [toViewCopy convertPoint:0 fromView:{v40, v41}];
  v56 = v55;
  v58 = v57;
  [toViewCopy convertPoint:0 fromView:{v30, v32}];
  v60 = v59;
  v62 = v61;
  [toViewCopy convertPoint:0 fromView:{v36, v38}];
  v64 = v63;
  v66 = v65;
  [toViewCopy convertPoint:0 fromView:{v52, v54}];
  v69 = [[VKQuad alloc] initWithBottomLeft:v67 bottomRight:v68 topLeft:v64 topRight:v66, v56, v58, v60, v62];

  return v69;
}

- (id)quadByConvertingFromNormalizedRectToView:(id)view contentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [view bounds];
  VKMRectFromNormalizedSubrect(v9, v10, v11, v12, x, y, width, height);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(VKQuad *)self topLeft];
  v21 = VKMPointFromNormalizedRect(v19, v20, v14, v16, v18);
  v39 = v22;
  v40 = v21;
  [(VKQuad *)self topRight];
  v25 = VKMPointFromNormalizedRect(v23, v24, v14, v16, v18);
  v27 = v26;
  [(VKQuad *)self bottomRight];
  v30 = VKMPointFromNormalizedRect(v28, v29, v14, v16, v18);
  v32 = v31;
  [(VKQuad *)self bottomLeft];
  v35 = VKMPointFromNormalizedRect(v33, v34, v14, v16, v18);
  v37 = [[VKQuad alloc] initWithBottomLeft:v35 bottomRight:v36 topLeft:v30 topRight:v32, v40, v39, v25, v27];

  return v37;
}

- (id)normalizedQuadByConvertingFromView:(id)view toView:(id)toView toViewSize:(CGSize)size
{
  width = size.width;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  toViewCopy = toView;
  viewCopy = view;
  [(VKQuad *)self topLeft];
  [viewCopy convertPoint:toViewCopy toView:?];
  v13 = v12;
  v15 = v14;
  [(VKQuad *)self topRight];
  [viewCopy convertPoint:toViewCopy toView:?];
  v17 = v16;
  v19 = v18;
  [(VKQuad *)self bottomRight];
  [viewCopy convertPoint:toViewCopy toView:?];
  v40 = v21;
  v41 = v20;
  [(VKQuad *)self bottomLeft];
  [viewCopy convertPoint:toViewCopy toView:?];
  v36 = v23;
  v37 = v22;

  v24 = VKMNormalizedPointInRect(v13, v15, v8, v9, width);
  v38 = v25;
  v39 = v24;
  v26 = VKMNormalizedPointInRect(v17, v19, v8, v9, width);
  v28 = v27;
  v29 = VKMNormalizedPointInRect(v41, v40, v8, v9, width);
  v31 = v30;
  v32 = VKMNormalizedPointInRect(v37, v36, v8, v9, width);
  v34 = [[VKQuad alloc] initWithBottomLeft:v32 bottomRight:v33 topLeft:v29 topRight:v31, v39, v38, v26, v28];

  return v34;
}

- (id)normalizedQuadFromView:(id)view
{
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(VKQuad *)self topLeft];
  v12 = VKMNormalizedPointInRect(v10, v11, v5, v7, v9);
  v30 = v13;
  v31 = v12;
  [(VKQuad *)self topRight];
  v16 = VKMNormalizedPointInRect(v14, v15, v5, v7, v9);
  v18 = v17;
  [(VKQuad *)self bottomRight];
  v21 = VKMNormalizedPointInRect(v19, v20, v5, v7, v9);
  v23 = v22;
  [(VKQuad *)self bottomLeft];
  v26 = VKMNormalizedPointInRect(v24, v25, v5, v7, v9);
  v28 = [[VKQuad alloc] initWithBottomLeft:v26 bottomRight:v27 topLeft:v21 topRight:v23, v31, v30, v16, v18];

  return v28;
}

- (id)subquadFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (VKMSizeIsEmptyOrHasNanOrInf(rect.size.width, rect.size.height))
  {
    v8 = objc_alloc_init(VKQuad);
  }

  else
  {
    v9 = [(VKQuad *)self copy];
    v10 = [v9 quadFromSubtractingPoint:{x, y}];

    v8 = [v10 quadMultipliedBySize:{1.0 / width, 1.0 / height}];
  }

  return v8;
}

- (id)quadFromAddingPoint:(CGPoint)point
{
  x = point.x;
  [(VKQuad *)self topLeft];
  v7 = VKMAddPoints(v5, v6, x);
  v9 = v8;
  [(VKQuad *)self topRight];
  v12 = VKMAddPoints(v10, v11, x);
  v14 = v13;
  [(VKQuad *)self bottomRight];
  v17 = VKMAddPoints(v15, v16, x);
  v19 = v18;
  [(VKQuad *)self bottomLeft];
  v22 = VKMAddPoints(v20, v21, x);
  v24 = [[VKQuad alloc] initWithBottomLeft:v22 bottomRight:v23 topLeft:v17 topRight:v19, v7, v9, v12, v14];

  return v24;
}

- (id)quadFromSubtractingPoint:(CGPoint)point
{
  x = point.x;
  [(VKQuad *)self topLeft];
  v7 = VKMSubtractPoints(v5, v6, x);
  v9 = v8;
  [(VKQuad *)self topRight];
  v12 = VKMSubtractPoints(v10, v11, x);
  v14 = v13;
  [(VKQuad *)self bottomRight];
  v17 = VKMSubtractPoints(v15, v16, x);
  v19 = v18;
  [(VKQuad *)self bottomLeft];
  v22 = VKMSubtractPoints(v20, v21, x);
  v24 = [[VKQuad alloc] initWithBottomLeft:v22 bottomRight:v23 topLeft:v17 topRight:v19, v7, v9, v12, v14];

  return v24;
}

- (id)quadMultipliedBySize:(CGSize)size
{
  width = size.width;
  [(VKQuad *)self topLeft];
  v7 = VKMMultiplyPointBySize(v5, v6, width);
  v9 = v8;
  [(VKQuad *)self topRight];
  v12 = VKMMultiplyPointBySize(v10, v11, width);
  v14 = v13;
  [(VKQuad *)self bottomRight];
  v17 = VKMMultiplyPointBySize(v15, v16, width);
  v19 = v18;
  [(VKQuad *)self bottomLeft];
  v22 = VKMMultiplyPointBySize(v20, v21, width);
  v24 = [[VKQuad alloc] initWithBottomLeft:v22 bottomRight:v23 topLeft:v17 topRight:v19, v7, v9, v12, v14];

  return v24;
}

- (CGPoint)vertexCentroid
{
  [(VKQuad *)self topLeft];
  v4 = v3;
  v6 = v5;
  [(VKQuad *)self topRight];
  v8 = v7;
  v10 = v9;
  [(VKQuad *)self bottomLeft];
  v12 = v11;
  v14 = v13;
  [(VKQuad *)self bottomRight];

  v16 = VKMVertexCentroidOfQuad(v4, v6, v8, v10, v12, v14, v15);
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)quadFromUnionWithQuad:(id)quad
{
  quadCopy = quad;
  quadByAdjustingOrientation = [(VKQuad *)self quadByAdjustingOrientation];
  quadByAdjustingOrientation2 = [quadCopy quadByAdjustingOrientation];

  [quadByAdjustingOrientation2 topLeft];
  v8 = v7;
  [quadByAdjustingOrientation topLeft];
  if (v8 >= v9)
  {
    v8 = v9;
  }

  [quadByAdjustingOrientation2 topLeft];
  v11 = v10;
  [quadByAdjustingOrientation topLeft];
  if (v11 >= v12)
  {
    v11 = v12;
  }

  [quadByAdjustingOrientation2 topRight];
  v14 = v13;
  [quadByAdjustingOrientation topRight];
  if (v14 < v15)
  {
    v14 = v15;
  }

  [quadByAdjustingOrientation2 topRight];
  v17 = v16;
  [quadByAdjustingOrientation topRight];
  if (v17 >= v18)
  {
    v17 = v18;
  }

  [quadByAdjustingOrientation2 bottomRight];
  v20 = v19;
  [quadByAdjustingOrientation bottomRight];
  if (v20 < v21)
  {
    v20 = v21;
  }

  [quadByAdjustingOrientation2 bottomRight];
  v23 = v22;
  [quadByAdjustingOrientation bottomRight];
  if (v23 < v24)
  {
    v23 = v24;
  }

  [quadByAdjustingOrientation2 bottomLeft];
  v26 = v25;
  [quadByAdjustingOrientation bottomLeft];
  if (v26 >= v27)
  {
    v26 = v27;
  }

  [quadByAdjustingOrientation2 bottomLeft];
  v29 = v28;
  [quadByAdjustingOrientation bottomLeft];
  if (v29 < v30)
  {
    v29 = v30;
  }

  v31 = [[VKQuad alloc] initWithBottomLeft:v26 bottomRight:v29 topLeft:v20 topRight:v23, v8, v11, v14, v17];

  return v31;
}

+ (id)quadFromUnionOfQuads:(id)quads baselineAngle:(double)angle
{
  v21 = *MEMORY[0x1E69E9840];
  quadsCopy = quads;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [quadsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(quadsCopy);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) quadFromRotatingAroundOriginWithAngle:-angle];
        v12 = v11;
        if (v8)
        {
          v13 = [v8 quadFromUnionWithQuad:v11];

          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      v7 = [quadsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v14 = [v8 quadFromRotatingAroundOriginWithAngle:angle];

  return v14;
}

+ (CGPoint)vertexCentroidFromQuads:(id)quads
{
  quadsCopy = quads;
  if ([quadsCopy count])
  {
    firstObject = [quadsCopy firstObject];
    [firstObject vertexCentroid];
    v6 = v5;
    v8 = v7;

    if ([quadsCopy count] >= 2)
    {
      if ([quadsCopy count] >= 2)
      {
        v9 = 1;
        do
        {
          v10 = [quadsCopy objectAtIndexedSubscript:v9];
          [v10 vertexCentroid];
          v6 = VKMAddPoints(v6, v8, v11);
          v8 = v12;

          ++v9;
        }

        while ([quadsCopy count] > v9);
      }

      v6 = VKMMultiplyPointScalar(v6, v8, 1.0 / [quadsCopy count]);
      v8 = v13;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v14 = v6;
  v15 = v8;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)quadFromRotatingAroundCentroidWithAngle:(double)angle
{
  [(VKQuad *)self vertexCentroid];
  v6 = v5;
  v8 = v7;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, -v5, -v7);
  CGAffineTransformMakeRotation(&t2, angle);
  t1 = v18;
  CGAffineTransformConcat(&v17, &t1, &t2);
  v18 = v17;
  CGAffineTransformMakeTranslation(&t2, v6, v8);
  t1 = v18;
  CGAffineTransformConcat(&v17, &t1, &t2);
  v18 = v17;
  allPoints = [(VKQuad *)self allPoints];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__VKQuad_quadFromRotatingAroundCentroidWithAngle___block_invoke;
  v13[3] = &__block_descriptor_80_e23__32__0__NSValue_8q16q24l;
  v14 = v18;
  v10 = [allPoints vk_map:v13];

  v11 = [[VKQuad alloc] initWithPoints:v10];

  return v11;
}

uint64_t __50__VKQuad_quadFromRotatingAroundCentroidWithAngle___block_invoke(float64x2_t *a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  [a2 pointValue];
  v6 = vaddq_f64(a1[4], vmlaq_n_f64(vmulq_n_f64(a1[3], v4), a1[2], v5));

  return [v3 vk_valueWithPoint:*&v6];
}

- (id)quadFromRotatingAroundOriginWithAngle:(double)angle
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeRotation(&v10, angle);
  allPoints = [(VKQuad *)self allPoints];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__VKQuad_quadFromRotatingAroundOriginWithAngle___block_invoke;
  v8[3] = &__block_descriptor_80_e23__32__0__NSValue_8q16q24l;
  v9 = v10;
  v5 = [allPoints vk_map:v8];

  v6 = [[VKQuad alloc] initWithPoints:v5];

  return v6;
}

uint64_t __48__VKQuad_quadFromRotatingAroundOriginWithAngle___block_invoke(float64x2_t *a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  [a2 pointValue];
  v6 = vaddq_f64(a1[4], vmlaq_n_f64(vmulq_n_f64(a1[3], v4), a1[2], v5));

  return [v3 vk_valueWithPoint:*&v6];
}

- (CGAffineTransform)rotationTransformAndBoundingBox:(SEL)box
{
  [(VKQuad *)self topLeft];
  v8 = v7;
  v10 = v9;
  [(VKQuad *)self bottomLeft];
  v12 = VKMAveragePoints(v8, v10, v11);
  v14 = v13;
  [(VKQuad *)self topRight];
  v16 = v15;
  v18 = v17;
  [(VKQuad *)self bottomRight];
  v20 = VKMAveragePoints(v16, v18, v19);
  if (v12 == v20)
  {
    VKMSubtractPoints(v20, v21, v12);
    v22 = dbl_1B44286F0[v23 > 0.0];
  }

  else
  {
    v22 = VKMAngleOfLine(v12, v14, v20, v21);
  }

  v24 = [(VKQuad *)self quadFromRotatingAroundCentroidWithAngle:-v22];
  [v24 boundingBox];
  a4->origin.x = v25;
  a4->origin.y = v26;
  a4->size.width = v27;
  a4->size.height = v28;

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;

  return CGAffineTransformMakeRotation(retstr, v22);
}

- (double)mininumDistanceToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v32 = *MEMORY[0x1E69E9840];
  v6 = [(VKQuad *)self containsPoint:?];
  result = 0.0;
  if (!v6)
  {
    [(VKQuad *)self topLeft];
    v28 = v8;
    v29 = v9;
    [(VKQuad *)self topRight];
    v30 = v10;
    v31 = v11;
    [(VKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    v13 = fmin(v12, INFINITY);
    [(VKQuad *)self topRight];
    v28 = v14;
    v29 = v15;
    [(VKQuad *)self bottomRight];
    v30 = v16;
    v31 = v17;
    [(VKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    if (v18 < v13)
    {
      v13 = v18;
    }

    [(VKQuad *)self bottomRight];
    v28 = v19;
    v29 = v20;
    [(VKQuad *)self bottomLeft];
    v30 = v21;
    v31 = v22;
    [(VKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    if (v23 < v13)
    {
      v13 = v23;
    }

    [(VKQuad *)self bottomLeft];
    v28 = v24;
    v29 = v25;
    [(VKQuad *)self topLeft];
    v30 = v26;
    v31 = v27;
    [(VKQuad *)self distanceFromLine:&v28 toPoint:x, y];
    if (result >= v13)
    {
      return v13;
    }
  }

  return result;
}

- (double)distanceFromLine:(CGPoint *)line toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = VKMNearestPointOnLineSegmentToPoint(&line->x, point.x, point.y);

  return VKMDistance(v6, v7, x, y);
}

- (CGPoint)topLeft
{
  x = self->_topLeft.x;
  y = self->_topLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topRight
{
  x = self->_topRight.x;
  y = self->_topRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomLeft
{
  x = self->_bottomLeft.x;
  y = self->_bottomLeft.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomRight
{
  x = self->_bottomRight.x;
  y = self->_bottomRight.y;
  result.y = y;
  result.x = x;
  return result;
}

- (VKQuad)initWithCRNormalizedQuad:(id)quad
{
  quadCopy = quad;
  [quadCopy bottomLeft];
  v6 = v5;
  v8 = v7;
  [quadCopy bottomRight];
  v10 = v9;
  v12 = v11;
  [quadCopy topLeft];
  v14 = v13;
  v16 = v15;
  [quadCopy topRight];
  v18 = v17;
  v20 = v19;

  return [(VKQuad *)self initWithBottomLeft:v6 bottomRight:v8 topLeft:v10 topRight:v12, v14, v16, v18, v20];
}

@end