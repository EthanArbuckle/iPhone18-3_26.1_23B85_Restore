@interface PXPlaceAnnotation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPlaceAnnotation:(id)annotation;
- (NSData)data;
- (NSDictionary)dictionary;
- (NSString)placeLevelAsString;
- (PXPlaceAnnotation)initWithData:(id)data;
- (PXPlaceAnnotation)initWithPlaceLevel:(id)level placeName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXPlaceAnnotation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    placeLevel = [(PXPlaceAnnotation *)self placeLevel];
    v6 = v4[1];
    v4[1] = placeLevel;

    placeName = [(PXPlaceAnnotation *)self placeName];
    v8 = v4[2];
    v4[2] = placeName;
  }

  return v4;
}

- (unint64_t)hash
{
  placeLevel = [(PXPlaceAnnotation *)self placeLevel];
  v4 = [placeLevel hash];
  placeName = [(PXPlaceAnnotation *)self placeName];
  v6 = [placeName hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToPlaceAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = annotationCopy;
  v16 = 1;
  if (annotationCopy != self)
  {
    if (!annotationCopy || (-[PXPlaceAnnotation placeName](annotationCopy, "placeName"), v6 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeName](self, "placeName"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 != v7) && (-[PXPlaceAnnotation placeName](v5, "placeName"), v8 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeName](self, "placeName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, !v10) || (-[PXPlaceAnnotation placeLevel](v5, "placeLevel"), v11 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeLevel](self, "placeLevel"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 != v12) && (-[PXPlaceAnnotation placeLevel](v5, "placeLevel"), v13 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeLevel](self, "placeLevel"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToNumber:", v14), v14, v13, !v15))
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXPlaceAnnotation *)self isEqualToPlaceAnnotation:v5];
  }

  return v6;
}

- (NSDictionary)dictionary
{
  placeLevel = [(PXPlaceAnnotation *)self placeLevel];
  if (placeLevel)
  {
  }

  else
  {
    placeName = [(PXPlaceAnnotation *)self placeName];

    if (!placeName)
    {
      goto LABEL_8;
    }
  }

  placeName = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  placeLevel2 = [(PXPlaceAnnotation *)self placeLevel];

  if (placeLevel2)
  {
    placeLevel3 = [(PXPlaceAnnotation *)self placeLevel];
    [placeName setObject:placeLevel3 forKeyedSubscript:@"level"];
  }

  placeName2 = [(PXPlaceAnnotation *)self placeName];

  if (placeName2)
  {
    placeName3 = [(PXPlaceAnnotation *)self placeName];
    [placeName setObject:placeName3 forKeyedSubscript:@"name"];
  }

LABEL_8:

  return placeName;
}

- (NSData)data
{
  dictionary = [(PXPlaceAnnotation *)self dictionary];
  if (dictionary)
  {
    v5 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)placeLevelAsString
{
  placeLevel = [(PXPlaceAnnotation *)self placeLevel];

  if (placeLevel)
  {
    placeLevel2 = [(PXPlaceAnnotation *)self placeLevel];
    integerValue = [placeLevel2 integerValue];

    if (integerValue >= 0x15)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", integerValue];
    }

    else
    {
      v6 = off_1E7747D68[integerValue & 0x1F];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  placeLevel = [(PXPlaceAnnotation *)self placeLevel];
  placeName = [(PXPlaceAnnotation *)self placeName];
  v6 = [v3 stringWithFormat:@"placeLevel: %@, placeName: %@", placeLevel, placeName];

  return v6;
}

- (PXPlaceAnnotation)initWithPlaceLevel:(id)level placeName:(id)name
{
  levelCopy = level;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PXPlaceAnnotation;
  v9 = [(PXPlaceAnnotation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeLevel, level);
    objc_storeStrong(&v10->_placeName, name);
  }

  return v10;
}

- (PXPlaceAnnotation)initWithData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = PXPlaceAnnotation;
  v5 = [(PXPlaceAnnotation *)&v13 init];
  v6 = v5;
  if (dataCopy && v5)
  {
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:0];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 objectForKeyedSubscript:@"level"];
      placeLevel = v6->_placeLevel;
      v6->_placeLevel = v8;

      v10 = [v7 objectForKeyedSubscript:@"name"];
      placeName = v6->_placeName;
      v6->_placeName = v10;
    }

    else
    {
      placeName = v6;
      v6 = 0;
    }
  }

  return v6;
}

@end