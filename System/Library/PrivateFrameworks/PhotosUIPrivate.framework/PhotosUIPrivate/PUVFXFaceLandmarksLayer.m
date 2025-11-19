@interface PUVFXFaceLandmarksLayer
- (CGPath)_createEnclosingSquarePathFromPath:(CGPath *)a3;
- (CGPath)_createPathForLandmarkRegion:(id)a3;
- (PUVFXFaceLandmarksLayer)initWithFaceLandmarks:(id)a3 denormalizePoint:(id)a4;
- (void)_drawFaceLandmarks:(id)a3;
@end

@implementation PUVFXFaceLandmarksLayer

- (CGPath)_createEnclosingSquarePathFromPath:(CGPath *)a3
{
  PathBoundingBox = CGPathGetPathBoundingBox(a3);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  if (PathBoundingBox.size.width >= PathBoundingBox.size.height)
  {
    v7 = PathBoundingBox.size.width;
  }

  else
  {
    v7 = PathBoundingBox.size.height;
  }

  MidX = CGRectGetMidX(PathBoundingBox);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetMidY(v16) - v7 * 0.5;
  v11 = v7;
  v12 = v7;

  v10 = MidX - v7 * 0.5;
  return CGPathCreateWithRect(*(&v9 - 1), 0);
}

- (CGPath)_createPathForLandmarkRegion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 pointCount])
  {
    v6 = [v5 normalizedPoints];
    Mutable = CGPathCreateMutable();
    if ([v5 pointCount])
    {
      v8 = 0;
      v9 = (v6 + 8);
      do
      {
        (*(self->_denormalizePoint + 2))(*(v9 - 1), *v9);
        if (v8)
        {
          CGPathAddLineToPoint(Mutable, 0, v10, v11);
        }

        else
        {
          CGPathMoveToPoint(Mutable, 0, v10, v11);
        }

        ++v8;
        v9 += 2;
      }

      while (v8 < [v5 pointCount]);
    }

    if ([v5 pointsClassification] == 2)
    {
      CGPathCloseSubpath(Mutable);
    }
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (void)_drawFaceLandmarks:(id)a3
{
  v11 = a3;
  Mutable = CGPathCreateMutable();
  v5 = [v11 leftEye];
  v6 = [(PUVFXFaceLandmarksLayer *)self _createPathForLandmarkRegion:v5];

  if (v6)
  {
    v7 = [(PUVFXFaceLandmarksLayer *)self _createEnclosingSquarePathFromPath:v6];
    CGPathAddPath(Mutable, 0, v6);
    CGPathAddPath(Mutable, 0, v7);
    CGPathRelease(v7);
  }

  CGPathRelease(v6);
  v8 = [v11 rightEye];
  v9 = [(PUVFXFaceLandmarksLayer *)self _createPathForLandmarkRegion:v8];

  if (v9)
  {
    v10 = [(PUVFXFaceLandmarksLayer *)self _createEnclosingSquarePathFromPath:v9];
    CGPathAddPath(Mutable, 0, v9);
    CGPathAddPath(Mutable, 0, v10);
    CGPathRelease(v10);
  }

  CGPathRelease(v9);
  [(PUVFXFaceLandmarksLayer *)self setPath:Mutable];
  CGPathRelease(Mutable);
}

- (PUVFXFaceLandmarksLayer)initWithFaceLandmarks:(id)a3 denormalizePoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PUVFXFaceLandmarksLayer;
  v8 = [(PUVFXFaceLandmarksLayer *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(v7);
    denormalizePoint = v8->_denormalizePoint;
    v8->_denormalizePoint = v9;

    [(PUVFXFaceLandmarksLayer *)v8 setLineCap:*MEMORY[0x1E6979E78]];
    [(PUVFXFaceLandmarksLayer *)v8 setLineJoin:*MEMORY[0x1E6979E98]];
    [(PUVFXFaceLandmarksLayer *)v8 setFillColor:0];
    [(PUVFXFaceLandmarksLayer *)v8 _drawFaceLandmarks:v6];
  }

  return v8;
}

@end