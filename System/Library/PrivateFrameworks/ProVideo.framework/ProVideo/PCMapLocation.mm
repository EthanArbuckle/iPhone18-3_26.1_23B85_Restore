@interface PCMapLocation
+ (id)dictionaryFromArrayOfLocations:(id)a3;
+ (void)removeLocationsFromArray:(id)a3 withinDistance:(float)a4 ofSameLocationsInDictionary:(id)a5;
- (BOOL)hasSamePositionAsLocation:(id)a3 tolerance:(float)a4;
- (BOOL)isEqualToLocation:(id)a3;
- (NSString)locationName;
- (PCMapLocation)init;
- (PCMapLocation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stringRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCMapLocation

- (PCMapLocation)init
{
  v3.receiver = self;
  v3.super_class = PCMapLocation;
  result = [(PCMapLocation *)&v3 init];
  if (result)
  {
    *&result->_airportCode = 0u;
    *&result->_countryName = 0u;
    *&result->_latitude = 0u;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCMapLocation;
  [(PCMapLocation *)&v3 dealloc];
}

- (id)description
{
  v3 = [objc_msgSend(@"MapLocation:\n" stringByAppendingFormat:@"     name = %@\n", -[PCMapLocation name](self, "name")), "stringByAppendingFormat:", @"     countryName = %@\n", -[PCMapLocation countryName](self, "countryName")];
  [(PCMapLocation *)self latitude];
  v5 = [v3 stringByAppendingFormat:@"     latitude = %f\n", v4];
  [(PCMapLocation *)self longitude];
  return [objc_msgSend(objc_msgSend(v5 stringByAppendingFormat:@"     longitude = %f\n", v6), "stringByAppendingFormat:", @"     airportCode = %@\n", -[PCMapLocation airportCode](self, "airportCode")), "stringByAppendingFormat:", @"     airportName = %@\n", -[PCMapLocation airportName](self, "airportName")];
}

- (id)stringRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PCMapLocation *)self name];
  v5 = [(PCMapLocation *)self countryName];
  [(PCMapLocation *)self latitude];
  v7 = v6;
  [(PCMapLocation *)self longitude];
  return [v3 stringWithFormat:@"[name = %@, countryName = %@, latitude = %f, longitude = %f, airportCode = %@, airportName = %@]", v4, v5, *&v7, v8, -[PCMapLocation airportCode](self, "airportCode"), -[PCMapLocation airportName](self, "airportName")];
}

- (NSString)locationName
{
  if (self->_locationName)
  {
    return self->_locationName;
  }

  else
  {
    return [(PCMapLocation *)self countryName];
  }
}

- (BOOL)isEqualToLocation:(id)a3
{
  [(PCMapLocation *)self latitude];
  v6 = v5;
  [a3 latitude];
  if (v6 != v7)
  {
    return 0;
  }

  [(PCMapLocation *)self longitude];
  v9 = v8;
  [a3 longitude];
  if (v9 != v10)
  {
    return 0;
  }

  v11 = [(PCMapLocation *)self name];
  v12 = [a3 name];

  return [(NSString *)v11 isEqualToString:v12];
}

- (BOOL)hasSamePositionAsLocation:(id)a3 tolerance:(float)a4
{
  [(PCMapLocation *)self latitude];
  v8 = v7;
  [a3 latitude];
  v10 = v8 - v9;
  [(PCMapLocation *)self longitude];
  v12 = v11;
  [a3 longitude];
  return sqrtf((v10 * v10) + ((v12 - v13) * (v12 - v13))) <= a4;
}

+ (id)dictionaryFromArrayOfLocations:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKey:{objc_msgSend(v9, "name")}];
        if (v10)
        {
          [v10 addObject:v9];
        }

        else
        {
          v11 = [MEMORY[0x277CBEB18] array];
          [v11 addObject:v9];
          [v4 setObject:v11 forKey:{objc_msgSend(v9, "name")}];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (void)removeLocationsFromArray:(id)a3 withinDistance:(float)a4 ofSameLocationsInDictionary:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [a5 objectForKey:{objc_msgSend(v11, "name")}];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v27 + 1) + 8 * j);
              if (![v17 airportCode])
              {
                [v17 latitude];
                v19 = v18;
                [v11 latitude];
                v21 = v19 - v20;
                [v17 longitude];
                v23 = v22;
                [v11 longitude];
                if (sqrtf((v21 * v21) + ((v23 - v24) * (v23 - v24))) < a4)
                {
                  [v26 addObject:v11];
                  goto LABEL_17;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
        ;
      }

      v8 = [a3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  [a3 removeObjectsInArray:v26];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 setName:{-[PCMapLocation name](self, "name")}];
    [v4 setCountryName:{-[PCMapLocation countryName](self, "countryName")}];
    if ([(PCMapLocation *)self locationName])
    {
      [v4 setLocationName:{-[PCMapLocation locationName](self, "locationName")}];
    }

    [(PCMapLocation *)self latitude];
    [v4 setLatitude:?];
    [(PCMapLocation *)self longitude];
    [v4 setLongitude:?];
    [v4 setAirportCode:{-[PCMapLocation airportCode](self, "airportCode")}];
    [v4 setAirportName:{-[PCMapLocation airportName](self, "airportName")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name forKey:@"Name"];
  [a3 encodeObject:self->_countryName forKey:@"CountryName"];
  locationName = self->_locationName;
  if (locationName)
  {
    [a3 encodeObject:locationName forKey:@"LocationName"];
  }

  *&v5 = self->_latitude;
  [a3 encodeFloat:@"Latitude" forKey:v5];
  *&v7 = self->_longitude;
  [a3 encodeFloat:@"Longitude" forKey:v7];
  [a3 encodeObject:self->_airportCode forKey:@"AirportCode"];
  airportName = self->_airportName;

  [a3 encodeObject:airportName forKey:@"AirportNameKey"];
}

- (PCMapLocation)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PCMapLocation;
  v4 = [(PCMapLocation *)&v6 init];
  if (v4)
  {
    -[PCMapLocation setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"Name"]);
    -[PCMapLocation setCountryName:](v4, "setCountryName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"CountryName"]);
    -[PCMapLocation setLocationName:](v4, "setLocationName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"LocationName"]);
    [a3 decodeFloatForKey:@"Latitude"];
    [(PCMapLocation *)v4 setLatitude:?];
    [a3 decodeFloatForKey:@"Longitude"];
    [(PCMapLocation *)v4 setLongitude:?];
    -[PCMapLocation setAirportCode:](v4, "setAirportCode:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AirportCode"]);
    -[PCMapLocation setAirportName:](v4, "setAirportName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AirportNameKey"]);
  }

  return v4;
}

@end