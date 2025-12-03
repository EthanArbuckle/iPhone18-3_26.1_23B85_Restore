@interface PLRevGeoPlaceAnnotation
- (PLRevGeoPlaceAnnotation)init;
- (PLRevGeoPlaceAnnotation)initWithData:(id)data;
- (id)description;
@end

@implementation PLRevGeoPlaceAnnotation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLRevGeoPlaceAnnotation placeLevel](self, "placeLevel")}];
  placeName = [(PLRevGeoPlaceAnnotation *)self placeName];
  v6 = [v3 stringWithFormat:@"place type: %@, place string: %@", v4, placeName];

  return v6;
}

- (PLRevGeoPlaceAnnotation)initWithData:(id)data
{
  if (data)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:0];
    v5 = [v4 objectForKeyedSubscript:@"level"];
    v6 = v5;
    if (v5)
    {
      self->_placeLevel = [v5 intValue];
    }

    v7 = [v4 objectForKeyedSubscript:@"name"];
    placeName = self->_placeName;
    self->_placeName = v7;

    selfCopy = self;
  }

  else
  {
    selfCopy = [(PLRevGeoPlaceAnnotation *)self init];
  }

  return selfCopy;
}

- (PLRevGeoPlaceAnnotation)init
{
  v3.receiver = self;
  v3.super_class = PLRevGeoPlaceAnnotation;
  result = [(PLRevGeoPlaceAnnotation *)&v3 init];
  if (result)
  {
    result->_placeLevel = 0;
  }

  return result;
}

@end