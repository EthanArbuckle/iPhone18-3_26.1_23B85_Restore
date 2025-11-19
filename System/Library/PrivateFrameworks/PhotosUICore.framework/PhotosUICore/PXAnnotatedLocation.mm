@interface PXAnnotatedLocation
- (CLLocationCoordinate2D)coordinate;
- (PXAnnotatedLocation)initWithCoordinate:(CLLocationCoordinate2D)a3 placeAnnotation:(id)a4;
- (PXAnnotatedLocation)initWithLatitude:(double)a3 longitude:(double)a4 placeAnnotation:(id)a5;
- (PXAnnotatedLocation)initWithLocation:(id)a3 placeAnnotation:(id)a4;
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

- (PXAnnotatedLocation)initWithLocation:(id)a3 placeAnnotation:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXAnnotatedLocation.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"location"}];
  }

  v16.receiver = self;
  v16.super_class = PXAnnotatedLocation;
  v10 = [(PXAnnotatedLocation *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_location, a3);
    objc_storeStrong(&v11->_placeAnnotation, a4);
    [v8 coordinate];
    v11->_coordinate.latitude = v12;
    v11->_coordinate.longitude = v13;
  }

  return v11;
}

- (PXAnnotatedLocation)initWithCoordinate:(CLLocationCoordinate2D)a3 placeAnnotation:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = MEMORY[0x1E6985C40];
  v8 = a4;
  v9 = [[v7 alloc] initWithLatitude:latitude longitude:longitude];
  v10 = [(PXAnnotatedLocation *)self initWithLocation:v9 placeAnnotation:v8];

  return v10;
}

- (PXAnnotatedLocation)initWithLatitude:(double)a3 longitude:(double)a4 placeAnnotation:(id)a5
{
  v8 = a5;
  v9 = CLLocationCoordinate2DMake(a3, a4);
  v10 = [(PXAnnotatedLocation *)self initWithCoordinate:v8 placeAnnotation:v9.latitude, v9.longitude];

  return v10;
}

@end