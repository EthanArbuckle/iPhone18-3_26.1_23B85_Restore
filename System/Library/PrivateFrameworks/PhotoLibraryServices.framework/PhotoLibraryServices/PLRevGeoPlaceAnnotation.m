@interface PLRevGeoPlaceAnnotation
- (PLRevGeoPlaceAnnotation)init;
- (PLRevGeoPlaceAnnotation)initWithData:(id)a3;
- (id)description;
@end

@implementation PLRevGeoPlaceAnnotation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLRevGeoPlaceAnnotation placeLevel](self, "placeLevel")}];
  v5 = [(PLRevGeoPlaceAnnotation *)self placeName];
  v6 = [v3 stringWithFormat:@"place type: %@, place string: %@", v4, v5];

  return v6;
}

- (PLRevGeoPlaceAnnotation)initWithData:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:0];
    v5 = [v4 objectForKeyedSubscript:@"level"];
    v6 = v5;
    if (v5)
    {
      self->_placeLevel = [v5 intValue];
    }

    v7 = [v4 objectForKeyedSubscript:@"name"];
    placeName = self->_placeName;
    self->_placeName = v7;

    v9 = self;
  }

  else
  {
    v9 = [(PLRevGeoPlaceAnnotation *)self init];
  }

  return v9;
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