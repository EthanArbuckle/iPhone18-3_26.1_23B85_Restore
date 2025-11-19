@interface PXPlacesMapPointAnnotation
- (CLLocationCoordinate2D)coordinate;
- (PXPlacesMapAnnotationRenderer)renderer;
- (PXPlacesMapSelectionHandler)selectionHandler;
@end

@implementation PXPlacesMapPointAnnotation

- (PXPlacesMapSelectionHandler)selectionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->selectionHandler);

  return WeakRetained;
}

- (PXPlacesMapAnnotationRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->renderer);

  return WeakRetained;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->coordinate.latitude;
  longitude = self->coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end