@interface PXPlacesMapThumbnailRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator;
- (PXPlacesMapThumbnailRenderer)init;
- (PXPlacesMapThumbnailRenderer)initWithTraitCollection:(id)collection informationDelegate:(id)delegate popoverImageType:(int64_t)type popoverImageOptions:(unint64_t)options countLabelStyle:(int64_t)style thumbnailLocationCurator:(id)curator;
- (UIEdgeInsets)minimumEdgeInsets;
- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)viewForAnnotation:(id)annotation andMapView:(id)view;
- (void)imageForGeotaggable:(id)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion;
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

- (void)imageForGeotaggable:(id)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion
{
  allowedCopy = allowed;
  height = size.height;
  width = size.width;
  geotaggableCopy = geotaggable;
  completionCopy = completion;
  informationDelegate = [(PXPlacesMapThumbnailRenderer *)self informationDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    informationDelegate2 = [(PXPlacesMapThumbnailRenderer *)self informationDelegate];
    [informationDelegate2 imageForGeotaggable:geotaggableCopy ofSize:allowedCopy networkAccessAllowed:completionCopy andCompletion:{width, height}];
  }
}

- (id)viewForAnnotation:(id)annotation andMapView:(id)view
{
  annotationCopy = annotation;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:v9];

  if (v10)
  {
    [(PXPlacesMapThumbnailAnnotationView *)v10 setAnnotation:annotationCopy];
  }

  else
  {
    pipelineComponentProvider = [(PXPlacesMapThumbnailRenderer *)self pipelineComponentProvider];
    imageCache = [pipelineComponentProvider imageCache];

    v13 = [PXPlacesMapThumbnailAnnotationView alloc];
    extendedTraitCollection = [(PXPlacesMapThumbnailRenderer *)self extendedTraitCollection];
    v10 = [(PXPlacesMapThumbnailAnnotationView *)v13 initWithAnnotation:annotationCopy reuseIdentifier:v9 extendedTraitCollection:extendedTraitCollection imageCache:imageCache countLabelStyle:[(PXPlacesMapThumbnailRenderer *)self countLabelStyle]];
  }

  thumbnailLocationCurator = [(PXPlacesMapThumbnailRenderer *)self thumbnailLocationCurator];
  [(PXPlacesMapThumbnailAnnotationView *)v10 setThumbnailLocationCurator:thumbnailLocationCurator];

  return v10;
}

- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  geotaggablesCopy = geotaggables;
  v8 = objc_alloc_init(PXPlacesMapPointAnnotation);
  [(PXPlacesMapPointAnnotation *)v8 setCoordinate:latitude, longitude];
  [(PXPlacesMapPointAnnotation *)v8 setGeotaggables:geotaggablesCopy];

  pipelineComponentProvider = [(PXPlacesMapThumbnailRenderer *)self pipelineComponentProvider];
  renderer = [pipelineComponentProvider renderer];
  [(PXPlacesMapPointAnnotation *)v8 setRenderer:renderer];

  pipelineComponentProvider2 = [(PXPlacesMapThumbnailRenderer *)self pipelineComponentProvider];
  selectionHandler = [pipelineComponentProvider2 selectionHandler];
  [(PXPlacesMapPointAnnotation *)v8 setSelectionHandler:selectionHandler];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapThumbnailRenderer.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXPlacesMapThumbnailRenderer init]"}];

  abort();
}

- (PXPlacesMapThumbnailRenderer)initWithTraitCollection:(id)collection informationDelegate:(id)delegate popoverImageType:(int64_t)type popoverImageOptions:(unint64_t)options countLabelStyle:(int64_t)style thumbnailLocationCurator:(id)curator
{
  collectionCopy = collection;
  delegateCopy = delegate;
  curatorCopy = curator;
  v21.receiver = self;
  v21.super_class = PXPlacesMapThumbnailRenderer;
  v18 = [(PXPlacesMapThumbnailRenderer *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_extendedTraitCollection, collection);
    objc_storeStrong(&v19->_informationDelegate, delegate);
    v19->_popoverImageType = type;
    v19->_imageOptions = options;
    v19->_countLabelStyle = style;
    objc_storeWeak(&v19->_thumbnailLocationCurator, curatorCopy);
  }

  return v19;
}

@end