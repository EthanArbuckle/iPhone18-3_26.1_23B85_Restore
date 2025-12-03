@interface PXAnnotatedLocation
- (CLLocationCoordinate2D)coordinate;
- (PXAnnotatedLocation)initWithCoordinate:(CLLocationCoordinate2D)coordinate placeAnnotation:(id)annotation;
- (PXAnnotatedLocation)initWithLatitude:(double)latitude longitude:(double)longitude placeAnnotation:(id)annotation;
- (PXAnnotatedLocation)initWithLocation:(id)location placeAnnotation:(id)annotation;
@end

@implementation PXAnnotatedLocation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PXAnnotatedLocation)initWithLocation:(id)location placeAnnotation:(id)annotation
{
  locationCopy = location;
  annotationCopy = annotation;
  if (!locationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAnnotatedLocation.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"location"}];
  }

  v16.receiver = self;
  v16.super_class = PXAnnotatedLocation;
  v10 = [(PXAnnotatedLocation *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_location, location);
    objc_storeStrong(&v11->_placeAnnotation, annotation);
    [locationCopy coordinate];
    v11->_coordinate.latitude = v12;
    v11->_coordinate.longitude = v13;
  }

  return v11;
}

- (PXAnnotatedLocation)initWithCoordinate:(CLLocationCoordinate2D)coordinate placeAnnotation:(id)annotation
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = MEMORY[0x1E6985C40];
  annotationCopy = annotation;
  v9 = [[v7 alloc] initWithLatitude:latitude longitude:longitude];
  v10 = [(PXAnnotatedLocation *)self initWithLocation:v9 placeAnnotation:annotationCopy];

  return v10;
}

- (PXAnnotatedLocation)initWithLatitude:(double)latitude longitude:(double)longitude placeAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v9 = CLLocationCoordinate2DMake(latitude, longitude);
  v10 = [(PXAnnotatedLocation *)self initWithCoordinate:annotationCopy placeAnnotation:v9.latitude, v9.longitude];

  return v10;
}

@end