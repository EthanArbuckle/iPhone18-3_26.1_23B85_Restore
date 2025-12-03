@interface PLRevGeoMapItemAdditionalPlaceInfo
- (BOOL)isEqual:(id)equal;
- (PLRevGeoMapItemAdditionalPlaceInfo)initWithCoder:(id)coder;
- (PLRevGeoMapItemAdditionalPlaceInfo)initWithName:(id)name placeType:(id)type dominantOrderType:(unint64_t)orderType areaInSquareMeters:(double)meters;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLRevGeoMapItemAdditionalPlaceInfo

- (PLRevGeoMapItemAdditionalPlaceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeType"];
  v7 = [coderCopy decodeIntegerForKey:@"dominantOrderType"];
  [coderCopy decodeDoubleForKey:@"area"];
  v9 = v8;

  v10 = [(PLRevGeoMapItemAdditionalPlaceInfo *)self initWithName:v5 placeType:v6 dominantOrderType:v7 areaInSquareMeters:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_placeType forKey:@"placeType"];
  [coderCopy encodeInteger:self->_dominantOrderType forKey:@"dominantOrderType"];
  [coderCopy encodeDouble:@"area" forKey:self->_areaInSquareMeters];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      dominantOrderType = self->_dominantOrderType;
      if (dominantOrderType == [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 dominantOrderType]&& (areaInSquareMeters = self->_areaInSquareMeters, [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 areaInSquareMeters], areaInSquareMeters == v10) && (name = self->_name, [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 name], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(name) = [(NSString *)name isEqualToString:v12], v12, name))
      {
        placeType = self->_placeType;
        placeType = [(PLRevGeoMapItemAdditionalPlaceInfo *)v7 placeType];
        v6 = [(NSNumber *)placeType isEqualToNumber:placeType];
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

- (PLRevGeoMapItemAdditionalPlaceInfo)initWithName:(id)name placeType:(id)type dominantOrderType:(unint64_t)orderType areaInSquareMeters:(double)meters
{
  nameCopy = name;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = PLRevGeoMapItemAdditionalPlaceInfo;
  v13 = [(PLRevGeoMapItemAdditionalPlaceInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v14->_placeType, type);
    v14->_dominantOrderType = orderType;
    v14->_areaInSquareMeters = meters;
  }

  return v14;
}

@end