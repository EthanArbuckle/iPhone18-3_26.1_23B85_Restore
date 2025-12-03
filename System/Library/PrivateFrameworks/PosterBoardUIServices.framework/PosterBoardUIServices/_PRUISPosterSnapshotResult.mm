@interface _PRUISPosterSnapshotResult
- (UIImage)backgroundLayerImage;
- (UIImage)compositeLayerImage;
- (UIImage)floatingLayerImage;
- (UIImage)foregroundLayerImage;
- (_PRUISPosterSnapshotResult)initWithRequest:(id)request snapshotBundle:(id)bundle executeTime:(double)time;
- (_PRUISPosterSnapshotResult)initWithSnapshotBundle:(id)bundle;
- (_PRUISPosterSnapshotResult)initWithSnapshotterResult:(id)result;
@end

@implementation _PRUISPosterSnapshotResult

- (_PRUISPosterSnapshotResult)initWithRequest:(id)request snapshotBundle:(id)bundle executeTime:(double)time
{
  requestCopy = request;
  v10 = [(_PRUISPosterSnapshotResult *)self initWithSnapshotBundle:bundle];
  v11 = v10;
  if (v10)
  {
    [(_PRUISPosterSnapshotResult *)v10 setExecutionTime:time];
    objc_storeStrong(&v11->_request, request);
  }

  return v11;
}

- (_PRUISPosterSnapshotResult)initWithSnapshotterResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = _PRUISPosterSnapshotResult;
  v6 = [(_PRUISPosterSnapshotResult *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotterResult, result);
    request = [resultCopy request];
    request = v7->_request;
    v7->_request = request;

    snapshotBundle = [resultCopy snapshotBundle];
    [(_PRUISPosterSnapshotResult *)v7 setSnapshotBundle:snapshotBundle];

    [resultCopy executionTime];
    [(_PRUISPosterSnapshotResult *)v7 setExecutionTime:?];
  }

  return v7;
}

- (_PRUISPosterSnapshotResult)initWithSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  v8.receiver = self;
  v8.super_class = _PRUISPosterSnapshotResult;
  v5 = [(_PRUISPosterSnapshotResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_PRUISPosterSnapshotResult *)v5 setSnapshotBundle:bundleCopy];
  }

  return v6;
}

- (UIImage)foregroundLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  foregroundSnapshot = [snapshotBundle foregroundSnapshot];

  return foregroundSnapshot;
}

- (UIImage)backgroundLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  backgroundSnapshot = [snapshotBundle backgroundSnapshot];

  return backgroundSnapshot;
}

- (UIImage)floatingLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  floatingSnapshot = [snapshotBundle floatingSnapshot];

  return floatingSnapshot;
}

- (UIImage)compositeLayerImage
{
  snapshotBundle = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  compositeSnapshot = [snapshotBundle compositeSnapshot];

  return compositeSnapshot;
}

@end