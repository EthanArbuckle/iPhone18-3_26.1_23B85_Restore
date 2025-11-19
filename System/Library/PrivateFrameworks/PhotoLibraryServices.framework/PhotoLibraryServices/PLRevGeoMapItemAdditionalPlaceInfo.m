@interface PLRevGeoMapItemAdditionalPlaceInfo
- (BOOL)isEqual:(id)a3;
- (PLRevGeoMapItemAdditionalPlaceInfo)initWithCoder:(id)a3;
- (PLRevGeoMapItemAdditionalPlaceInfo)initWithName:(id)a3 placeType:(id)a4 dominantOrderType:(unint64_t)a5 areaInSquareMeters:(double)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLRevGeoMapItemAdditionalPlaceInfo

- (PLRevGeoMapItemAdditionalPlaceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeType"];
  v7 = [v4 decodeIntegerForKey:@"dominantOrderType"];
  [v4 decodeDoubleForKey:@"area"];
  v9 = v8;

  v10 = [(PLRevGeoMapItemAdditionalPlaceInfo *)self initWithName:v5 placeType:v6 dominantOrderType:v7 areaInSquareMeters:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_placeType forKey:@"placeType"];
  [v5 encodeInteger:self->_dominantOrderType forKey:@"dominantOrderType"];
  [v5 encodeDouble:@"area" forKey:self->_areaInSquareMeters];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      dominantOrderType = self->_dominantOrderType;
      if (dominantOrderType == [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 dominantOrderType]&& (areaInSquareMeters = self->_areaInSquareMeters, [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 areaInSquareMeters], areaInSquareMeters == v10) && (name = self->_name, [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 name], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(name) = [(NSString *)name isEqualToString:v12], v12, name))
      {
        placeType = self->_placeType;
        v14 = [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 placeType];
        v6 = [(NSNumber *)placeType isEqualToNumber:v14];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p name=%@ placeType=%@ dominantOrderType=%lu areaInSquareMeters%f>", v5, self, self->_name, self->_placeType, self->_dominantOrderType, *&self->_areaInSquareMeters];

  return v6;
}

- (PLRevGeoMapItemAdditionalPlaceInfo)initWithName:(id)a3 placeType:(id)a4 dominantOrderType:(unint64_t)a5 areaInSquareMeters:(double)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PLRevGeoMapItemAdditionalPlaceInfo;
  v13 = [(PLRevGeoMapItemAdditionalPlaceInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    objc_storeStrong(&v14->_placeType, a4);
    v14->_dominantOrderType = a5;
    v14->_areaInSquareMeters = a6;
  }

  return v14;
}

@end