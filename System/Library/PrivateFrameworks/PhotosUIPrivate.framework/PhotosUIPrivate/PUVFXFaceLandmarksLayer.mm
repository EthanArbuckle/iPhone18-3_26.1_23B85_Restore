@interface PUVFXFaceLandmarksLayer
- (CGPath)_createEnclosingSquarePathFromPath:(CGPath *)path;
- (CGPath)_createPathForLandmarkRegion:(id)region;
- (PUVFXFaceLandmarksLayer)initWithFaceLandmarks:(id)landmarks denormalizePoint:(id)point;
- (void)_drawFaceLandmarks:(id)landmarks;
@end

@implementation PUVFXFaceLandmarksLayer

- (CGPath)_createEnclosingSquarePathFromPath:(CGPath *)path
{
  PathBoundingBox = CGPathGetPathBoundingBox(path);
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

- (CGPath)_createPathForLandmarkRegion:(id)region
{
  regionCopy = region;
  v5 = regionCopy;
  if (regionCopy && [regionCopy pointCount])
  {
    normalizedPoints = [v5 normalizedPoints];
    Mutable = CGPathCreateMutable();
    if ([v5 pointCount])
    {
      v8 = 0;
      v9 = (normalizedPoints + 8);
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

- (void)_drawFaceLandmarks:(id)landmarks
{
  landmarksCopy = landmarks;
  Mutable = CGPathCreateMutable();
  leftEye = [landmarksCopy leftEye];
  v6 = [(PUVFXFaceLandmarksLayer *)self _createPathForLandmarkRegion:leftEye];

  if (v6)
  {
    v7 = [(PUVFXFaceLandmarksLayer *)self _createEnclosingSquarePathFromPath:v6];
    CGPathAddPath(Mutable, 0, v6);
    CGPathAddPath(Mutable, 0, v7);
    CGPathRelease(v7);
  }

  CGPathRelease(v6);
  rightEye = [landmarksCopy rightEye];
  v9 = [(PUVFXFaceLandmarksLayer *)self _createPathForLandmarkRegion:rightEye];

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

- (PUVFXFaceLandmarksLayer)initWithFaceLandmarks:(id)landmarks denormalizePoint:(id)point
{
  landmarksCopy = landmarks;
  pointCopy = point;
  v12.receiver = self;
  v12.super_class = PUVFXFaceLandmarksLayer;
  v8 = [(PUVFXFaceLandmarksLayer *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(pointCopy);
    denormalizePoint = v8->_denormalizePoint;
    v8->_denormalizePoint = v9;

    [(PUVFXFaceLandmarksLayer *)v8 setLineCap:*MEMORY[0x1E6979E78]];
    [(PUVFXFaceLandmarksLayer *)v8 setLineJoin:*MEMORY[0x1E6979E98]];
    [(PUVFXFaceLandmarksLayer *)v8 setFillColor:0];
    [(PUVFXFaceLandmarksLayer *)v8 _drawFaceLandmarks:landmarksCopy];
  }

  return v8;
}

@end