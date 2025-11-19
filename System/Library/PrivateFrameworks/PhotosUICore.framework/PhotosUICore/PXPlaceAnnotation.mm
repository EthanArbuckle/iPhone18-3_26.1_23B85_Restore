@interface PXPlaceAnnotation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPlaceAnnotation:(id)a3;
- (NSData)data;
- (NSDictionary)dictionary;
- (NSString)placeLevelAsString;
- (PXPlaceAnnotation)initWithData:(id)a3;
- (PXPlaceAnnotation)initWithPlaceLevel:(id)a3 placeName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXPlaceAnnotation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(PXPlaceAnnotation *)self placeLevel];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(PXPlaceAnnotation *)self placeName];
    v8 = v4[2];
    v4[2] = v7;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(PXPlaceAnnotation *)self placeLevel];
  v4 = [v3 hash];
  v5 = [(PXPlaceAnnotation *)self placeName];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToPlaceAnnotation:(id)a3
{
  v4 = a3;
  v5 = v4;
  v16 = 1;
  if (v4 != self)
  {
    if (!v4 || (-[PXPlaceAnnotation placeName](v4, "placeName"), v6 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeName](self, "placeName"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 != v7) && (-[PXPlaceAnnotation placeName](v5, "placeName"), v8 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeName](self, "placeName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, !v10) || (-[PXPlaceAnnotation placeLevel](v5, "placeLevel"), v11 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeLevel](self, "placeLevel"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 != v12) && (-[PXPlaceAnnotation placeLevel](v5, "placeLevel"), v13 = objc_claimAutoreleasedReturnValue(), -[PXPlaceAnnotation placeLevel](self, "placeLevel"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToNumber:", v14), v14, v13, !v15))
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXPlaceAnnotation *)self isEqualToPlaceAnnotation:v5];
  }

  return v6;
}

- (NSDictionary)dictionary
{
  v3 = [(PXPlaceAnnotation *)self placeLevel];
  if (v3)
  {
  }

  else
  {
    v4 = [(PXPlaceAnnotation *)self placeName];

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v5 = [(PXPlaceAnnotation *)self placeLevel];

  if (v5)
  {
    v6 = [(PXPlaceAnnotation *)self placeLevel];
    [v4 setObject:v6 forKeyedSubscript:@"level"];
  }

  v7 = [(PXPlaceAnnotation *)self placeName];

  if (v7)
  {
    v8 = [(PXPlaceAnnotation *)self placeName];
    [v4 setObject:v8 forKeyedSubscript:@"name"];
  }

LABEL_8:

  return v4;
}

- (NSData)data
{
  v2 = [(PXPlaceAnnotation *)self dictionary];
  if (v2)
  {
    v5 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:100 options:0 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)placeLevelAsString
{
  v3 = [(PXPlaceAnnotation *)self placeLevel];

  if (v3)
  {
    v4 = [(PXPlaceAnnotation *)self placeLevel];
    v5 = [v4 integerValue];

    if (v5 >= 0x15)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v5];
    }

    else
    {
      v6 = off_1E7747D68[v5 & 0x1F];
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
  v4 = [(PXPlaceAnnotation *)self placeLevel];
  v5 = [(PXPlaceAnnotation *)self placeName];
  v6 = [v3 stringWithFormat:@"placeLevel: %@, placeName: %@", v4, v5];

  return v6;
}

- (PXPlaceAnnotation)initWithPlaceLevel:(id)a3 placeName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPlaceAnnotation;
  v9 = [(PXPlaceAnnotation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeLevel, a3);
    objc_storeStrong(&v10->_placeName, a4);
  }

  return v10;
}

- (PXPlaceAnnotation)initWithData:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PXPlaceAnnotation;
  v5 = [(PXPlaceAnnotation *)&v13 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
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