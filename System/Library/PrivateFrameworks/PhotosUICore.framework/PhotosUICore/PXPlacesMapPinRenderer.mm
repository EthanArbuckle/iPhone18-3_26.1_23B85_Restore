@interface PXPlacesMapPinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)viewForAnnotation:(id)annotation andMapView:(id)view;
@end

@implementation PXPlacesMapPinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->pipelineComponentProvider);

  return WeakRetained;
}

- (id)viewForAnnotation:(id)annotation andMapView:(id)view
{
  annotationCopy = annotation;
  viewCopy = view;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:v8];

  if (v9)
  {
    [v9 setAnnotation:annotationCopy];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696F2F0]) initWithAnnotation:annotationCopy reuseIdentifier:v8];
  }

  return v9;
}

- (id)annotationForGeotaggables:(id)geotaggables initialCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  geotaggablesCopy = geotaggables;
  v8 = objc_alloc_init(PXPlacesMapPointAnnotation);
  [(PXPlacesMapPointAnnotation *)v8 setCoordinate:latitude, longitude];
  pipelineComponentProvider = [(PXPlacesMapPinRenderer *)self pipelineComponentProvider];
  renderer = [pipelineComponentProvider renderer];
  [(PXPlacesMapPointAnnotation *)v8 setRenderer:renderer];

  pipelineComponentProvider2 = [(PXPlacesMapPinRenderer *)self pipelineComponentProvider];
  selectionHandler = [pipelineComponentProvider2 selectionHandler];
  [(PXPlacesMapPointAnnotation *)v8 setSelectionHandler:selectionHandler];

  [(PXPlacesMapPointAnnotation *)v8 setGeotaggables:geotaggablesCopy];

  return v8;
}

- (UIEdgeInsets)minimumEdgeInsets
{
  v2 = 20.0;
  v3 = 10.0;
  v4 = 5.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end