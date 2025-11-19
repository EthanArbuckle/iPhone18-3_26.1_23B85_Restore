@interface PRUISPosterSnapshotResult
- (PRPosterSnapshotBundle)snapshotBundle;
- (PRUISPosterSnapshotBundle)posterSnapshotBundle;
- (PRUISPosterSnapshotResult)initWith_PRUISPosterSnapshotResult:(id)a3;
- (UIImage)backgroundLayerImage;
- (UIImage)compositeLayerImage;
- (UIImage)floatingLayerImage;
- (UIImage)foregroundLayerImage;
@end

@implementation PRUISPosterSnapshotResult

- (PRUISPosterSnapshotResult)initWith_PRUISPosterSnapshotResult:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PRUISPosterSnapshotResult;
    v6 = [(PRUISPosterSnapshotResult *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_underlyingResult, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PRPosterSnapshotBundle)snapshotBundle
{
  v2 = MEMORY[0x1E69C5330];
  v3 = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v4 = [v2 snapshotBundleWithPUIPosterSnapshotBundle:v3];

  return v4;
}

- (PRUISPosterSnapshotBundle)posterSnapshotBundle
{
  v2 = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v3 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:v2];

  return v3;
}

- (UIImage)floatingLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v3 = [v2 floatingSnapshot];

  return v3;
}

- (UIImage)foregroundLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v3 = [v2 foregroundSnapshot];

  return v3;
}

- (UIImage)backgroundLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v3 = [v2 backgroundSnapshot];

  return v3;
}

- (UIImage)compositeLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self->_underlyingResult snapshotBundle];
  v3 = [v2 compositeSnapshot];

  return v3;
}

@end