@interface PXStoryExportFullSizePlayerAspectRatio
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (id)adjustedForOrientation:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(PXStoryExportFullSizePlayerAspectRatio *)self size];
      [(PXStoryExportFullSizePlayerAspectRatio *)v5 size];
      PXSizeApproximatelyEqualToSize();
    }

    v6 = 0;
  }

  return v6;
}

- (id)adjustedForOrientation:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryExportAspectRatio *)self orientation];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v8 = [objc_opt_class() pickableAspectRatiosForOrientation:v4 fullSizePlayerAspect:0];
    v7 = [v8 firstObject];
  }

  return v7;
}

@end