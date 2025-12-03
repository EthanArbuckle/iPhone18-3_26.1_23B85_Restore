@interface PXStoryExportFullSizePlayerAspectRatio
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (id)adjustedForOrientation:(id)orientation;
- (unint64_t)hash;
@end

@implementation PXStoryExportFullSizePlayerAspectRatio

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = PXStoryExportFullSizePlayerAspectRatio;
  v3 = [(PXStoryExportAspectRatio *)&v9 hash];
  [(PXStoryExportFullSizePlayerAspectRatio *)self size];
  v6 = v3 ^ (2 * v4) ^ (4 * v5);
  [(PXStoryExportFullSizePlayerAspectRatio *)self scale];
  return v6 ^ (8 * v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(PXStoryExportFullSizePlayerAspectRatio *)self size];
      [(PXStoryExportFullSizePlayerAspectRatio *)v5 size];
      PXSizeApproximatelyEqualToSize();
    }

    v6 = 0;
  }

  return v6;
}

- (id)adjustedForOrientation:(id)orientation
{
  orientationCopy = orientation;
  orientation = [(PXStoryExportAspectRatio *)self orientation];
  v6 = [orientation isEqual:orientationCopy];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    v8 = [objc_opt_class() pickableAspectRatiosForOrientation:orientationCopy fullSizePlayerAspect:0];
    selfCopy = [v8 firstObject];
  }

  return selfCopy;
}

@end