@interface PCMapLocation
+ (id)dictionaryFromArrayOfLocations:(id)locations;
+ (void)removeLocationsFromArray:(id)array withinDistance:(float)distance ofSameLocationsInDictionary:(id)dictionary;
- (BOOL)hasSamePositionAsLocation:(id)location tolerance:(float)tolerance;
- (BOOL)isEqualToLocation:(id)location;
- (NSString)locationName;
- (PCMapLocation)init;
- (PCMapLocation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)stringRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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
  name = [(PCMapLocation *)self name];
  countryName = [(PCMapLocation *)self countryName];
  [(PCMapLocation *)self latitude];
  v7 = v6;
  [(PCMapLocation *)self longitude];
  return [v3 stringWithFormat:@"[name = %@, countryName = %@, latitude = %f, longitude = %f, airportCode = %@, airportName = %@]", name, countryName, *&v7, v8, -[PCMapLocation airportCode](self, "airportCode"), -[PCMapLocation airportName](self, "airportName")];
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

- (BOOL)isEqualToLocation:(id)location
{
  [(PCMapLocation *)self latitude];
  v6 = v5;
  [location latitude];
  if (v6 != v7)
  {
    return 0;
  }

  [(PCMapLocation *)self longitude];
  v9 = v8;
  [location longitude];
  if (v9 != v10)
  {
    return 0;
  }

  name = [(PCMapLocation *)self name];
  name2 = [location name];

  return [(NSString *)name isEqualToString:name2];
}

- (BOOL)hasSamePositionAsLocation:(id)location tolerance:(float)tolerance
{
  [(PCMapLocation *)self latitude];
  v8 = v7;
  [location latitude];
  v10 = v8 - v9;
  [(PCMapLocation *)self longitude];
  v12 = v11;
  [location longitude];
  return sqrtf((v10 * v10) + ((v12 - v13) * (v12 - v13))) <= tolerance;
}

+ (id)dictionaryFromArrayOfLocations:(id)locations
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [locations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(locations);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [dictionary objectForKey:{objc_msgSend(v9, "name")}];
        if (v10)
        {
          [v10 addObject:v9];
        }

        else
        {
          array = [MEMORY[0x277CBEB18] array];
          [array addObject:v9];
          [dictionary setObject:array forKey:{objc_msgSend(v9, "name")}];
        }
      }

      v6 = [locations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return dictionary;
}

+ (void)removeLocationsFromArray:(id)array withinDistance:(float)distance ofSameLocationsInDictionary:(id)dictionary
{
  v37 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [array countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(array);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [dictionary objectForKey:{objc_msgSend(v11, "name")}];
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
                if (sqrtf((v21 * v21) + ((v23 - v24) * (v23 - v24))) < distance)
                {
                  [array addObject:v11];
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

      v8 = [array countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  [array removeObjectsInArray:array];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_name forKey:@"Name"];
  [coder encodeObject:self->_countryName forKey:@"CountryName"];
  locationName = self->_locationName;
  if (locationName)
  {
    [coder encodeObject:locationName forKey:@"LocationName"];
  }

  *&v5 = self->_latitude;
  [coder encodeFloat:@"Latitude" forKey:v5];
  *&v7 = self->_longitude;
  [coder encodeFloat:@"Longitude" forKey:v7];
  [coder encodeObject:self->_airportCode forKey:@"AirportCode"];
  airportName = self->_airportName;

  [coder encodeObject:airportName forKey:@"AirportNameKey"];
}

- (PCMapLocation)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PCMapLocation;
  v4 = [(PCMapLocation *)&v6 init];
  if (v4)
  {
    -[PCMapLocation setName:](v4, "setName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"Name"]);
    -[PCMapLocation setCountryName:](v4, "setCountryName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"CountryName"]);
    -[PCMapLocation setLocationName:](v4, "setLocationName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"LocationName"]);
    [coder decodeFloatForKey:@"Latitude"];
    [(PCMapLocation *)v4 setLatitude:?];
    [coder decodeFloatForKey:@"Longitude"];
    [(PCMapLocation *)v4 setLongitude:?];
    -[PCMapLocation setAirportCode:](v4, "setAirportCode:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"AirportCode"]);
    -[PCMapLocation setAirportName:](v4, "setAirportName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"AirportNameKey"]);
  }

  return v4;
}

@end