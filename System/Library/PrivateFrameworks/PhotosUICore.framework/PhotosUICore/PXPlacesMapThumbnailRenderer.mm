@interface PXPlacesMapThumbnailRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator;
- (PXPlacesMapThumbnailRenderer)init;
- (PXPlacesMapThumbnailRenderer)initWithTraitCollection:(id)a3 informationDelegate:(id)a4 popoverImageType:(int64_t)a5 popoverImageOptions:(unint64_t)a6 countLabelStyle:(int64_t)a7 thumbnailLocationCurator:(id)a8;
- (UIEdgeInsets)minimumEdgeInsets;
- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4;
- (id)viewForAnnotation:(id)a3 andMapView:(id)a4;
- (void)imageForGeotaggable:(id)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6;
@end

@implementation PXPlacesMapThumbnailRenderer

- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailLocationCurator);

  return WeakRetained;
}

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->pipelineComponentProvider);

  return WeakRetained;
}

- (void)imageForGeotaggable:(id)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v11 = a6;
  v12 = [(PXPlacesMapThumbnailRenderer *)self informationDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(PXPlacesMapThumbnailRenderer *)self informationDelegate];
    [v14 imageForGeotaggable:v15 ofSize:v7 networkAccessAllowed:v11 andCompletion:{width, height}];
  }
}

- (id)viewForAnnotation:(id)a3 andMapView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableAnnotationViewWithIdentifier:v9];

  if (v10)
  {
    [(PXPlacesMapThumbnailAnnotationView *)v10 setAnnotation:v6];
  }

  else
  {
    v11 = [(PXPlacesMapThumbnailRenderer *)self pipelineComponentProvider];
    v12 = [v11 imageCache];

    v13 = [PXPlacesMapThumbnailAnnotationView alloc];
    v14 = [(PXPlacesMapThumbnailRenderer *)self extendedTraitCollection];
    v10 = [(PXPlacesMapThumbnailAnnotationView *)v13 initWithAnnotation:v6 reuseIdentifier:v9 extendedTraitCollection:v14 imageCache:v12 countLabelStyle:[(PXPlacesMapThumbnailRenderer *)self countLabelStyle]];
  }

  v15 = [(PXPlacesMapThumbnailRenderer *)self thumbnailLocationCurator];
  [(PXPlacesMapThumbnailAnnotationView *)v10 setThumbnailLocationCurator:v15];

  return v10;
}

- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v8 = objc_alloc_init(PXPlacesMapPointAnnotation);
  [(PXPlacesMapPointAnnotation *)v8 setCoordinate:latitude, longitude];
  [(PXPlacesMapPointAnnotation *)v8 setGeotaggables:v7];

  v9 = [(PXPlacesMapThumbnailRenderer *)self pipelineComponentProvider];
  v10 = [v9 renderer];
  [(PXPlacesMapPointAnnotation *)v8 setRenderer:v10];

  v11 = [(PXPlacesMapThumbnailRenderer *)self pipelineComponentProvider];
  v12 = [v11 selectionHandler];
  [(PXPlacesMapPointAnnotation *)v8 setSelectionHandler:v12];

  return v8;
}

- (UIEdgeInsets)minimumEdgeInsets
{
  v3 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v3 backgroundImageSizeForType:2 usingTraitCollection:self->_extendedTraitCollection];
  v5 = v4;
  v7 = v6;

  v8 = v7 + 20.0;
  v9 = v5 * 0.5 + 20.0;
  v10 = 20.0;
  v11 = v9;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (PXPlacesMapThumbnailRenderer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailRenderer.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXPlacesMapThumbnailRenderer init]"}];

  abort();
}

- (PXPlacesMapThumbnailRenderer)initWithTraitCollection:(id)a3 informationDelegate:(id)a4 popoverImageType:(int64_t)a5 popoverImageOptions:(unint64_t)a6 countLabelStyle:(int64_t)a7 thumbnailLocationCurator:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = PXPlacesMapThumbnailRenderer;
  v18 = [(PXPlacesMapThumbnailRenderer *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_extendedTraitCollection, a3);
    objc_storeStrong(&v19->_informationDelegate, a4);
    v19->_popoverImageType = a5;
    v19->_imageOptions = a6;
    v19->_countLabelStyle = a7;
    objc_storeWeak(&v19->_thumbnailLocationCurator, v17);
  }

  return v19;
}

@end