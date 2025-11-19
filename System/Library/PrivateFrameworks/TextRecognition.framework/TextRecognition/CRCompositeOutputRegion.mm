@interface CRCompositeOutputRegion
- (CRCompositeOutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4;
- (CRCompositeOutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)a3;
- (CRCompositeOutputRegion)outputRegionWithContentsOfQuad:(id)a3;
- (void)setShouldComputeBoundsFromChildren:(BOOL)a3;
@end

@implementation CRCompositeOutputRegion

- (CRCompositeOutputRegion)outputRegionWithContentsOfQuad:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRCompositeOutputRegion;
  v3 = [(CROutputRegion *)&v5 outputRegionWithContentsOfQuad:a3];
  [v3 setShouldComputeBoundsFromChildren:1];

  return v3;
}

- (CRCompositeOutputRegion)outputRegionWithContentsBetweenStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4
{
  v6.receiver = self;
  v6.super_class = CRCompositeOutputRegion;
  v4 = [(CROutputRegion *)&v6 outputRegionWithContentsBetweenStartPoint:a3.x endPoint:a3.y, a4.x, a4.y];
  [v4 setShouldComputeBoundsFromChildren:1];

  return v4;
}

- (CRCompositeOutputRegion)outputRegionWithContentsOfCharacterRange:(_NSRange)a3
{
  v9.receiver = self;
  v9.super_class = CRCompositeOutputRegion;
  v3 = [(CROutputRegion *)&v9 outputRegionWithContentsOfCharacterRange:a3.location, a3.length];
  v4 = [v3 boundingQuad];
  if (!v4 || (v5 = v4, [v3 children], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7))
  {
    [v3 setShouldComputeBoundsFromChildren:1];
  }

  return v3;
}

- (void)setShouldComputeBoundsFromChildren:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CRCompositeOutputRegion;
  [(CROutputRegion *)&v5 setShouldComputeBoundsFromChildren:?];
  if (v3)
  {
    [(CROutputRegion *)self setBoundingQuad:0];
  }
}

@end