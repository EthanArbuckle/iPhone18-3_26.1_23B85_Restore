@interface PXPlacesMapPinRenderer
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (UIEdgeInsets)minimumEdgeInsets;
- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4;
- (id)viewForAnnotation:(id)a3 andMapView:(id)a4;
@end

@implementation PXPlacesMapPinRenderer

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->pipelineComponentProvider);

  return WeakRetained;
}

- (id)viewForAnnotation:(id)a3 andMapView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 dequeueReusableAnnotationViewWithIdentifier:v8];

  if (v9)
  {
    [v9 setAnnotation:v5];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696F2F0]) initWithAnnotation:v5 reuseIdentifier:v8];
  }

  return v9;
}

- (id)annotationForGeotaggables:(id)a3 initialCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v8 = objc_alloc_init(PXPlacesMapPointAnnotation);
  [(PXPlacesMapPointAnnotation *)v8 setCoordinate:latitude, longitude];
  v9 = [(PXPlacesMapPinRenderer *)self pipelineComponentProvider];
  v10 = [v9 renderer];
  [(PXPlacesMapPointAnnotation *)v8 setRenderer:v10];

  v11 = [(PXPlacesMapPinRenderer *)self pipelineComponentProvider];
  v12 = [v11 selectionHandler];
  [(PXPlacesMapPointAnnotation *)v8 setSelectionHandler:v12];

  [(PXPlacesMapPointAnnotation *)v8 setGeotaggables:v7];

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