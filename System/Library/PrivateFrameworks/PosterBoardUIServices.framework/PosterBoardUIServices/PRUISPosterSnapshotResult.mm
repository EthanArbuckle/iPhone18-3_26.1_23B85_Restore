@interface PRUISPosterSnapshotResult
- (PRPosterSnapshotBundle)snapshotBundle;
- (PRUISPosterSnapshotBundle)posterSnapshotBundle;
- (PRUISPosterSnapshotResult)initWith_PRUISPosterSnapshotResult:(id)result;
- (UIImage)backgroundLayerImage;
- (UIImage)compositeLayerImage;
- (UIImage)floatingLayerImage;
- (UIImage)foregroundLayerImage;
@end

@implementation PRUISPosterSnapshotResult

- (PRUISPosterSnapshotResult)initWith_PRUISPosterSnapshotResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v10.receiver = self;
    v10.super_class = PRUISPosterSnapshotResult;
    v6 = [(PRUISPosterSnapshotResult *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_underlyingResult, result);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PRPosterSnapshotBundle)snapshotBundle
{
  v2 = MEMORY[0x1E69C5330];
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v4 = [v2 snapshotBundleWithPUIPosterSnapshotBundle:snapshotBundle];

  return v4;
}

- (PRUISPosterSnapshotBundle)posterSnapshotBundle
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v3 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:snapshotBundle];

  return v3;
}

- (UIImage)floatingLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  floatingSnapshot = [snapshotBundle floatingSnapshot];

  return floatingSnapshot;
}

- (UIImage)foregroundLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  foregroundSnapshot = [snapshotBundle foregroundSnapshot];

  return foregroundSnapshot;
}

- (UIImage)backgroundLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  backgroundSnapshot = [snapshotBundle backgroundSnapshot];

  return backgroundSnapshot;
}

- (UIImage)compositeLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  compositeSnapshot = [snapshotBundle compositeSnapshot];

  return compositeSnapshot;
}

@end