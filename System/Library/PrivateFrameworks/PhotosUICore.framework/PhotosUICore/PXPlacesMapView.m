@interface PXPlacesMapView
+ ($3BFE36E7F21C9C4470F2C816F6078BCC)MKMapRectForCoordinateRegion:(id *)a3;
+ ($3BFE36E7F21C9C4470F2C816F6078BCC)canonicalMapRect:(id)result;
+ ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectForNearbyQueriesFromRect:(id)a3 atScale:(double)a4 targetViewSize:(CGSize)a5;
+ (PXPlacesMapView)mapViewWithMarkedLocation:(id)a3 regionRadius:(double)a4 frame:(CGRect)a5;
- ($3BFE36E7F21C9C4470F2C816F6078BCC)ppt_cityMapRect;
- (PXPlacesMapView)initWithCoder:(id)a3;
- (PXPlacesMapView)initWithFrame:(CGRect)a3;
- (PXPlacesMapViewDelegate)mapViewDelegate;
- (double)_px_zoomLevel;
- (double)_sampleMapDistanceFromViewPoint:(CGPoint)a3 toViewPoint:(CGPoint)a4;
- (double)pitch;
- (id)currentViewPort;
- (id)currentViewPortWithThumbnailOverscan;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)ppt_visibleMapRectBlockForQueue:(id)a3 delay:(double)a4;
- (int64_t)panningGestureMinimumNumberOfTouches;
- (void)_commonInit;
- (void)awakeFromNib;
- (void)deselectAllAnnotationsAnimated:(BOOL)a3;
- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishLoadingMap:(id)a3;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)mapViewWillStartLocatingUser:(id)a3;
- (void)ppt_performPlacesScrollTest:(id)a3 iterations:(int64_t)a4 screenDelta:(int64_t)a5 delay:(double)a6 completion:(id)a7;
- (void)ppt_performPlacesZoomTest:(id)a3 iterations:(int64_t)a4 delay:(double)a5 completion:(id)a6;
- (void)setDelegate:(id)a3;
- (void)setPanningGestureMinimumNumberOfTouches:(int64_t)a3;
- (void)setPitch:(double)a3;
- (void)setPreferredConfiguration:(id)a3;
@end

@implementation PXPlacesMapView

- (PXPlacesMapViewDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (void)ppt_performPlacesZoomTest:(id)a3 iterations:(int64_t)a4 delay:(double)a5 completion:(id)a6
{
  v9 = a6;
  [(PXPlacesMapView *)self ppt_cityMapRect];
  [(PXPlacesMapView *)self setVisibleMapRect:0 animated:?];
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v11 = dispatch_queue_create("scrollQueue", v10);

  v12 = [(PXPlacesMapView *)self ppt_visibleMapRectBlockForQueue:v11 delay:a5];
  if (a4 >= 1)
  {
    do
    {
      [(PXPlacesMapView *)self visibleMapRect];
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      v32 = MKMapRectOffset(v31, v31.size.width / -3.0, 0.0);
      v33 = MKMapRectInset(v32, width / 3.0, height / 3.0);
      v23 = v33.origin.y;
      v24 = v33.origin.x;
      v21 = v33.size.height;
      v22 = v33.size.width;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = MKMapRectInset(v33, width / 3.0, height / 3.0);
      v27 = v34.origin.y;
      v28 = v34.origin.x;
      v25 = v34.size.height;
      v26 = v34.size.width;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v35 = MKMapRectOffset(v34, width / 3.0, 0.0);
      v36 = MKMapRectInset(v35, width / 3.0, height / 3.0);
      v17 = v36.origin.x;
      v18 = v36.origin.y;
      v19 = v36.size.width;
      v20 = v36.size.height;
      v12[2](v12, v24, v23, v22, v21);
      v12[2](v12, x, y, width, height);
      v12[2](v12, v28, v27, v26, v25);
      v12[2](v12, x, y, width, height);
      v12[2](v12, v17, v18, v19, v20);
      v12[2](v12, x, y, width, height);
      --a4;
    }

    while (a4);
  }

  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PXPlacesMapView_ppt_performPlacesZoomTest_iterations_delay_completion___block_invoke;
    block[3] = &unk_1E774C250;
    v30 = v9;
    dispatch_async(v11, block);
  }
}

void __73__PXPlacesMapView_ppt_performPlacesZoomTest_iterations_delay_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXPlacesMapView_ppt_performPlacesZoomTest_iterations_delay_completion___block_invoke_2;
  block[3] = &unk_1E774C250;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)ppt_performPlacesScrollTest:(id)a3 iterations:(int64_t)a4 screenDelta:(int64_t)a5 delay:(double)a6 completion:(id)a7
{
  v11 = a7;
  [(PXPlacesMapView *)self ppt_cityMapRect];
  [(PXPlacesMapView *)self setVisibleMapRect:0 animated:?];
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v13 = dispatch_queue_create("scrollQueue", v12);

  v14 = [(PXPlacesMapView *)self ppt_visibleMapRectBlockForQueue:v13 delay:a6];
  if (a4 >= 1)
  {
    v23 = a5;
    v24 = -a5;
    do
    {
      [(PXPlacesMapView *)self visibleMapRect];
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      v40 = MKMapRectOffset(v39, 0.0, v39.size.height * v24);
      v35 = v40.origin.y;
      v36 = v40.origin.x;
      v33 = v40.size.height;
      v34 = v40.size.width;
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v41 = MKMapRectOffset(v40, 0.0, height * v23);
      v31 = v41.origin.y;
      v32 = v41.origin.x;
      v29 = v41.size.height;
      v30 = v41.size.width;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v42 = MKMapRectOffset(v41, width * v24, 0.0);
      v27 = v42.origin.y;
      v28 = v42.origin.x;
      v25 = v42.size.height;
      v26 = v42.size.width;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v43 = MKMapRectOffset(v42, width * v23, 0.0);
      v19 = v43.origin.x;
      v20 = v43.origin.y;
      v21 = v43.size.width;
      v22 = v43.size.height;
      v14[2](v14, v36, v35, v34, v33);
      v14[2](v14, v32, v31, v30, v29);
      v14[2](v14, x, y, width, height);
      v14[2](v14, v28, v27, v26, v25);
      v14[2](v14, v19, v20, v21, v22);
      v14[2](v14, x, y, width, height);
      --a4;
    }

    while (a4);
  }

  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__PXPlacesMapView_ppt_performPlacesScrollTest_iterations_screenDelta_delay_completion___block_invoke;
    block[3] = &unk_1E774C250;
    v38 = v11;
    dispatch_async(v13, block);
  }
}

void __87__PXPlacesMapView_ppt_performPlacesScrollTest_iterations_screenDelta_delay_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PXPlacesMapView_ppt_performPlacesScrollTest_iterations_screenDelta_delay_completion___block_invoke_2;
  block[3] = &unk_1E774C250;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)ppt_visibleMapRectBlockForQueue:(id)a3 delay:(double)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PXPlacesMapView_ppt_visibleMapRectBlockForQueue_delay___block_invoke;
  aBlock[3] = &unk_1E7739F08;
  v11 = v6;
  v12 = self;
  v13 = a4;
  v7 = v6;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __57__PXPlacesMapView_ppt_visibleMapRectBlockForQueue_delay___block_invoke(void *a1, double a2, double a3, double a4, double a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PXPlacesMapView_ppt_visibleMapRectBlockForQueue_delay___block_invoke_2;
  v6[3] = &unk_1E7739EE0;
  v5 = a1[4];
  v6[4] = a1[5];
  *&v6[5] = a2;
  *&v6[6] = a3;
  *&v6[7] = a4;
  *&v6[8] = a5;
  v6[9] = a1[6];
  dispatch_async(v5, v6);
}

uint64_t __57__PXPlacesMapView_ppt_visibleMapRectBlockForQueue_delay___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXPlacesMapView_ppt_visibleMapRectBlockForQueue_delay___block_invoke_3;
  block[3] = &unk_1E7747168;
  block[4] = *(a1 + 32);
  v2 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return usleep((*(a1 + 72) * 1000000.0));
}

- ($3BFE36E7F21C9C4470F2C816F6078BCC)ppt_cityMapRect
{
  v2 = 42852201.5;
  v3 = 103675449.0;
  v4 = 133435.2;
  v5 = 181471.8;
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (void)mapView:(id)a3 canEnter3DModeDidChange:(BOOL)a4
{
  v5 = [(PXPlacesMapView *)self observable:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXPlacesMapView_mapView_canEnter3DModeDidChange___block_invoke;
  v6[3] = &unk_1E774C5F8;
  v6[4] = self;
  [v5 performChanges:v6];
}

void __51__PXPlacesMapView_mapView_canEnter3DModeDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observable];
  [v1 signalChange:8];
}

- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4
{
  v5 = [(PXPlacesMapView *)self observable:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PXPlacesMapView_mapView_didBecomePitched___block_invoke;
  v6[3] = &unk_1E774C5F8;
  v6[4] = self;
  [v5 performChanges:v6];
}

void __44__PXPlacesMapView_mapView_didBecomePitched___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observable];
  [v1 signalChange:4];
}

- (void)mapViewWillStartLocatingUser:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapView *)self mapViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PXPlacesMapView *)self mapViewDelegate];
    [v7 mapViewWillStartLocatingUser:v4];
  }

  v8 = [(PXPlacesMapView *)self observable];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PXPlacesMapView_mapViewWillStartLocatingUser___block_invoke;
  v9[3] = &unk_1E774C5F8;
  v9[4] = self;
  [v8 performChanges:v9];
}

void __48__PXPlacesMapView_mapViewWillStartLocatingUser___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observable];
  [v1 signalChange:32];
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v4 = a4;
  v6 = [(PXPlacesMapView *)self mapViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PXPlacesMapView *)self mapViewDelegate];
    [v8 mapViewDidFinishRenderingMap:self fullyRendered:v4];
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PXPlacesMapView *)self mapViewDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXPlacesMapView *)self mapViewDelegate];
    [v9 mapView:v10 didSelectAnnotationView:v6];
  }
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  v8 = a4;
  v5 = [(PXPlacesMapView *)self mapViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PXPlacesMapView *)self mapViewDelegate];
    [v7 mapView:self didAddAnnotationViews:v8];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = [(PXPlacesMapView *)self mapViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PXPlacesMapView *)self mapViewDelegate];
    [v8 mapView:self regionDidChangeAnimated:v4];
  }

  v9 = [(PXPlacesMapView *)self observable];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PXPlacesMapView_mapView_regionDidChangeAnimated___block_invoke;
  v10[3] = &unk_1E774C5F8;
  v10[4] = self;
  [v9 performChanges:v10];
}

void __51__PXPlacesMapView_mapView_regionDidChangeAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observable];
  [v1 signalChange:1];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(PXPlacesMapView *)self mapViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PXPlacesMapView *)self mapViewDelegate];
    v9 = [v8 mapView:self viewForAnnotation:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)mapViewDidFinishLoadingMap:(id)a3
{
  v4 = [(PXPlacesMapView *)self observable];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXPlacesMapView_mapViewDidFinishLoadingMap___block_invoke;
  v5[3] = &unk_1E774C5F8;
  v5[4] = self;
  [v4 performChanges:v5];
}

void __46__PXPlacesMapView_mapViewDidFinishLoadingMap___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observable];
  [v1 signalChange:16];
}

- (double)_px_zoomLevel
{
  [(PXPlacesMapView *)self region];
  v4 = v3;
  [(PXPlacesMapView *)self bounds];
  result = 20.0 - log2(v4 * 85445659.4 * 3.14159265 / (v5 * 180.0));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)_sampleMapDistanceFromViewPoint:(CGPoint)a3 toViewPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(PXPlacesMapView *)self convertPoint:self toCoordinateFromView:a3.x, a3.y];
  v7 = MKMapPointForCoordinate(v10);
  [(PXPlacesMapView *)self convertPoint:self toCoordinateFromView:x, y];
  v8 = MKMapPointForCoordinate(v11);
  return sqrt((v7.x - v8.x) * (v7.x - v8.x) + (v7.y - v8.y) * (v7.y - v8.y));
}

- (void)deselectAllAnnotationsAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(PXPlacesMapView *)self selectedAnnotations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(PXPlacesMapView *)self viewForAnnotation:v10];
        [v11 setSelected:0 animated:0];

        [(PXPlacesMapView *)self deselectAnnotation:v10 animated:v3];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)currentViewPortWithThumbnailOverscan
{
  v3 = [(PXPlacesMapView *)self currentViewPort];
  [v3 mapRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PXPlacesMapView *)self frame];
  v13 = v12 * 0.5;
  [(PXPlacesMapView *)self frame];
  v15 = v14 * 0.5;
  [v3 scale];
  v17 = v16 * v13;
  [v3 scale];
  [v3 setMapRect:{v5 - v17, v7 - v18 * v15, v9 + v17 * 2.0, v11 + v18 * v15 * 2.0}];

  return v3;
}

- (id)currentViewPort
{
  [(PXPlacesMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(PXPlacesMapView *)self camera];
  [v7 heading];
  v9 = v8;

  v10 = [(PXPlacesMapView *)self camera];
  [v10 pitch];
  v12 = v11;

  v13 = [PXPlacesMapViewPort alloc];
  [(PXPlacesMapView *)self visibleMapRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PXPlacesMapView *)self _px_zoomLevel];
  v23 = [(PXPlacesMapViewPort *)v13 initWithMapRect:v15 andViewSize:v17 zoomLevel:v19 pitch:v21, v4, v6, v22, v12];
  if (v9 == 0.0)
  {
    v29 = -1.0;
  }

  else
  {
    v24 = v4 * 0.5 + -5.0 + 5.0;
    v25 = v6 * 0.5 + -5.0 + 5.0;
    [(PXPlacesMapView *)self _radiansFromDegrees:v9];
    v27 = v26;
    memset(&v42, 0, sizeof(v42));
    CGAffineTransformMakeTranslation(&v42, v24, v25);
    memset(&v41, 0, sizeof(v41));
    CGAffineTransformMakeRotation(&v41, v27);
    v39 = v42;
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformInvert(&t1, &v39);
    v37 = v41;
    CGAffineTransformConcat(&v39, &t1, &v37);
    t1 = v42;
    CGAffineTransformConcat(&v40, &v39, &t1);
    [(PXPlacesMapView *)self _sampleMapDistanceFromViewPoint:v40.tx + (v25 + -5.0) * v40.c + v40.a * (v24 + -5.0) toViewPoint:v40.ty + (v25 + -5.0) * v40.d + v40.b * (v24 + -5.0), v40.tx + (v25 + -5.0) * v40.c + v40.a * (v24 + 5.0), v40.ty + (v25 + -5.0) * v40.d + v40.b * (v24 + 5.0)];
    v29 = v28;
  }

  if (v12 > 45.0)
  {
    [(PXPlacesMapView *)self _sampleMapDistanceFromViewPoint:v4 * 0.5 toViewPoint:v6 * 0.5 + -5.0, v4 * 0.5, v6 * 0.5 + 5.0];
    v31 = v30;
    [(PXPlacesMapView *)self _radiansFromDegrees:v12];
    v29 = v31 * cos(v32);
  }

  if (v29 != -1.0)
  {
    [(PXPlacesMapViewPort *)v23 scale];
    v34 = v29 / 10.0;
    if (v29 / 10.0 <= currentScale)
    {
      currentScale = self->_currentScale;
      if (v34 >= currentScale)
      {
        currentScale = v29 / 10.0;
      }

      else if (vabdd_f64(currentScale, v34) / currentScale * 100.0 < 80.0)
      {
        currentScale = v29 / 10.0;
      }
    }

    [(PXPlacesMapViewPort *)v23 setScale:currentScale, v34];
  }

  [(PXPlacesMapViewPort *)v23 scale];
  self->_currentScale = v35;

  return v23;
}

- (void)setDelegate:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXPlacesMapView.m" lineNumber:110 description:@"Do not set this delegate. Use mapViewDelegate instead."];
}

- (int64_t)panningGestureMinimumNumberOfTouches
{
  v2 = [(PXPlacesMapView *)self _panningGestureRecognizer];
  v3 = [v2 minimumNumberOfTouches];

  return v3;
}

- (void)setPanningGestureMinimumNumberOfTouches:(int64_t)a3
{
  v4 = [(PXPlacesMapView *)self _panningGestureRecognizer];
  [v4 setMinimumNumberOfTouches:a3];
}

- (void)setPitch:(double)a3
{
  v5 = [(PXPlacesMapView *)self camera];
  v6 = [v5 copy];

  [v6 setPitch:a3];
  [(PXPlacesMapView *)self setCamera:v6 animated:1];
}

- (double)pitch
{
  v2 = [(PXPlacesMapView *)self camera];
  [v2 pitch];
  v4 = v3;

  return v4;
}

- (void)setPreferredConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapView *)self preferredConfiguration];

  v8.receiver = self;
  v8.super_class = PXPlacesMapView;
  [(PXPlacesMapView *)&v8 setPreferredConfiguration:v4];

  if (v5 != v4)
  {
    v6 = [(PXPlacesMapView *)self observable];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXPlacesMapView_setPreferredConfiguration___block_invoke;
    v7[3] = &unk_1E774C5F8;
    v7[4] = self;
    [v6 performChanges:v7];
  }
}

void __45__PXPlacesMapView_setPreferredConfiguration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) observable];
  [v1 signalChange:2];
}

- (void)_commonInit
{
  [(PXPlacesMapView *)self setUserInteractionEnabled:1];
  v3 = objc_alloc_init(MEMORY[0x1E696F3A8]);
  [(PXPlacesMapView *)self setPreferredConfiguration:v3];

  v6.receiver = self;
  v6.super_class = PXPlacesMapView;
  [(PXPlacesMapView *)&v6 setDelegate:self];
  v4 = objc_alloc_init(off_1E77217D8);
  observable = self->_observable;
  self->_observable = v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = PXPlacesMapView;
  [(PXPlacesMapView *)&v3 awakeFromNib];
  [(PXPlacesMapView *)self _commonInit];
}

- (PXPlacesMapView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXPlacesMapView;
  v3 = [(PXPlacesMapView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXPlacesMapView *)v3 _commonInit];
  }

  return v4;
}

- (PXPlacesMapView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXPlacesMapView;
  v3 = [(PXPlacesMapView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXPlacesMapView *)v3 _commonInit];
  }

  return v4;
}

+ (PXPlacesMapView)mapViewWithMarkedLocation:(id)a3 regionRadius:(double)a4 frame:(CGRect)a5
{
  if (a3)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v10 = MEMORY[0x1E696F348];
    v11 = a3;
    v12 = objc_alloc_init(v10);
    [v11 coordinate];
    [v12 setCoordinate:?];
    v13 = [objc_alloc(MEMORY[0x1E696F2C0]) initWithFrame:{x, y, width, height}];
    [v11 coordinate];
    v15 = v14;
    v17 = v16;

    MEMORY[0x1A590B350](v15, v17, a4 + a4, a4 + a4);
    [v13 setRegion:?];
    [v13 setMapType:0];
    [v13 addAnnotation:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ ($3BFE36E7F21C9C4470F2C816F6078BCC)canonicalMapRect:(id)result
{
  var1 = result.var0.var1;
  v4 = *(MEMORY[0x1E696F0D8] + 16);
  if (result.var0.var0 >= 0.0)
  {
    if (result.var0.var0 > v4)
    {
      result.var0.var0 = result.var0.var0 - v4;
    }
  }

  else
  {
    result.var0.var0 = result.var0.var0 + v4;
  }

  var0 = 0.0;
  v6 = 0.0;
  if (var1 >= 0.0)
  {
    v6 = var1;
    if (var1 > *(MEMORY[0x1E696F0D8] + 24))
    {
      v6 = *(MEMORY[0x1E696F0D8] + 24);
    }
  }

  if (result.var1.var0 >= 0.0)
  {
    var0 = result.var1.var0;
    if (result.var1.var0 > v4)
    {
      var0 = *(MEMORY[0x1E696F0D8] + 16);
    }
  }

  v7 = 0.0;
  if (result.var1.var1 >= 0.0)
  {
    v8 = *(MEMORY[0x1E696F0D8] + 24);
    v7 = result.var1.var1;
    if (result.var1.var1 + v6 > v8)
    {
      v7 = v8 - v6;
    }
  }

  v9 = var0;
  v10 = v7;
  result.var1.var1 = v10;
  result.var1.var0 = v9;
  result.var0.var1 = v6;
  return result;
}

+ ($3BFE36E7F21C9C4470F2C816F6078BCC)mapRectForNearbyQueriesFromRect:(id)a3 atScale:(double)a4 targetViewSize:(CGSize)a5
{
  [a1 canonicalMapRect:{a3.var0.var0 + a3.var1.var0 * 0.5 - a5.width * a4 * 0.5, a3.var0.var1 + a3.var1.var1 * 0.5 - a5.height * a4 * 0.5, a5.width * a4, a5.height * a4}];
  result.var1.var1 = v8;
  result.var1.var0 = v7;
  result.var0.var1 = v6;
  result.var0.var0 = v5;
  return result;
}

+ ($3BFE36E7F21C9C4470F2C816F6078BCC)MKMapRectForCoordinateRegion:(id *)a3
{
  v7 = v4;
  v8 = v3;
  v9 = v5 * 0.5;
  v10 = v6 * 0.5;
  v19 = CLLocationCoordinate2DMake(v3 + v5 * 0.5, v4 - v6 * 0.5);
  v11 = MKMapPointForCoordinate(v19);
  v20 = CLLocationCoordinate2DMake(v8 - v9, v7 + v10);
  v12 = MKMapPointForCoordinate(v20);
  if (v11.x >= v12.x)
  {
    x = v12.x;
  }

  else
  {
    x = v11.x;
  }

  if (v11.y >= v12.y)
  {
    y = v12.y;
  }

  else
  {
    y = v11.y;
  }

  v15 = -(v11.x - v12.x);
  if (v11.x - v12.x >= 0.0)
  {
    v15 = v11.x - v12.x;
  }

  if (v11.y - v12.y >= 0.0)
  {
    v16 = v11.y - v12.y;
  }

  else
  {
    v16 = -(v11.y - v12.y);
  }

  v17 = x;
  v18 = y;
  result.var1.var1 = v16;
  result.var1.var0 = v15;
  result.var0.var1 = v18;
  result.var0.var0 = v17;
  return result;
}

@end