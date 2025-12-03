@interface CRCompositeOutputRegion
- (CRCompositeOutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (CRCompositeOutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)range;
- (CRCompositeOutputRegion)outputRegionWithContentsOfQuad:(id)quad;
- (void)setShouldComputeBoundsFromChildren:(BOOL)children;
@end

@implementation CRCompositeOutputRegion

- (CRCompositeOutputRegion)outputRegionWithContentsOfQuad:(id)quad
{
  v5.receiver = self;
  v5.super_class = CRCompositeOutputRegion;
  v3 = [(CROutputRegion *)&v5 outputRegionWithContentsOfQuad:quad];
  [v3 setShouldComputeBoundsFromChildren:1];

  return v3;
}

- (CRCompositeOutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  v6.receiver = self;
  v6.super_class = CRCompositeOutputRegion;
  v4 = [(CROutputRegion *)&v6 outputRegionWithContentsBetweenStartPoint:point.x endPoint:point.y, endPoint.x, endPoint.y];
  [v4 setShouldComputeBoundsFromChildren:1];

  return v4;
}

- (CRCompositeOutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)range
{
  v9.receiver = self;
  v9.super_class = CRCompositeOutputRegion;
  v3 = [(CROutputRegion *)&v9 outputRegionWithContentsOfCharacterRange:range.location, range.length];
  boundingQuad = [v3 boundingQuad];
  if (!boundingQuad || (v5 = boundingQuad, [v3 children], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    [v3 setShouldComputeBoundsFromChildren:1];
  }

  return v3;
}

- (void)setShouldComputeBoundsFromChildren:(BOOL)children
{
  childrenCopy = children;
  v5.receiver = self;
  v5.super_class = CRCompositeOutputRegion;
  [(CROutputRegion *)&v5 setShouldComputeBoundsFromChildren:?];
  if (childrenCopy)
  {
    [(CROutputRegion *)self setBoundingQuad:0];
  }
}

@end