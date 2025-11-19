@interface _PRUISPosterSnapshotResult
- (UIImage)backgroundLayerImage;
- (UIImage)compositeLayerImage;
- (UIImage)floatingLayerImage;
- (UIImage)foregroundLayerImage;
- (_PRUISPosterSnapshotResult)initWithRequest:(id)a3 snapshotBundle:(id)a4 executeTime:(double)a5;
- (_PRUISPosterSnapshotResult)initWithSnapshotBundle:(id)a3;
- (_PRUISPosterSnapshotResult)initWithSnapshotterResult:(id)a3;
@end

@implementation _PRUISPosterSnapshotResult

- (_PRUISPosterSnapshotResult)initWithRequest:(id)a3 snapshotBundle:(id)a4 executeTime:(double)a5
{
  v9 = a3;
  v10 = [(_PRUISPosterSnapshotResult *)self initWithSnapshotBundle:a4];
  v11 = v10;
  if (v10)
  {
    [(_PRUISPosterSnapshotResult *)v10 setExecutionTime:a5];
    objc_storeStrong(&v11->_request, a3);
  }

  return v11;
}

- (_PRUISPosterSnapshotResult)initWithSnapshotterResult:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _PRUISPosterSnapshotResult;
  v6 = [(_PRUISPosterSnapshotResult *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotterResult, a3);
    v8 = [v5 request];
    request = v7->_request;
    v7->_request = v8;

    v10 = [v5 snapshotBundle];
    [(_PRUISPosterSnapshotResult *)v7 setSnapshotBundle:v10];

    [v5 executionTime];
    [(_PRUISPosterSnapshotResult *)v7 setExecutionTime:?];
  }

  return v7;
}

- (_PRUISPosterSnapshotResult)initWithSnapshotBundle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PRUISPosterSnapshotResult;
  v5 = [(_PRUISPosterSnapshotResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_PRUISPosterSnapshotResult *)v5 setSnapshotBundle:v4];
  }

  return v6;
}

- (UIImage)foregroundLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  v3 = [v2 foregroundSnapshot];

  return v3;
}

- (UIImage)backgroundLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  v3 = [v2 backgroundSnapshot];

  return v3;
}

- (UIImage)floatingLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  v3 = [v2 floatingSnapshot];

  return v3;
}

- (UIImage)compositeLayerImage
{
  v2 = [(_PRUISPosterSnapshotResult *)self snapshotBundle];
  v3 = [v2 compositeSnapshot];

  return v3;
}

@end