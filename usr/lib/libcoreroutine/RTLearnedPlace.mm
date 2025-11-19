@interface RTLearnedPlace
+ (id)createWithLearnedLocationOfInterestMO:(id)a3;
+ (id)createWithLearnedPlaceMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
+ (id)placeTypeSourceToString:(unint64_t)a3;
+ (id)placeTypeToString:(unint64_t)a3;
+ (unint64_t)placeTypeFromLocationOfInterestType:(int64_t)a3;
+ (unint64_t)placeTypeFromType:(int64_t)a3;
+ (unint64_t)placeTypeSourceFromTypeSource:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RTLearnedPlace)initWithIdentifier:(id)a3 type:(unint64_t)a4 typeSource:(unint64_t)a5 mapItem:(id)a6 customLabel:(id)a7 creationDate:(id)a8 expirationDate:(id)a9;
- (id)managedObjectWithContext:(id)a3;
- (unint64_t)hash;
- (void)updateManagedObject:(id)a3;
@end

@implementation RTLearnedPlace

+ (id)createWithManagedObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedPlaceMO:v3];
LABEL_6:
      v5 = v4;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedLocationOfInterestMO:v3];
      goto LABEL_6;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2080;
      v11 = "+[RTLearnedPlace(RTCoreDataTransformable) createWithManagedObject:]";
      v12 = 1024;
      v13 = 36;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLearnedPlace+CoreDataTransformable (in %s:%d)", &v8, 0x1Cu);
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

+ (id)createWithLearnedPlaceMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v25 = 0;
    v19 = "Invalid parameter not satisfying: learnedPlaceMO";
    v20 = &v25;
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_15;
  }

  v5 = [v3 identifier];

  if (!v5)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: learnedPlaceMO.identifier";
    v20 = buf;
    goto LABEL_20;
  }

  v6 = [v4 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 managedObjectContext];
    if ((-[NSObject allowTombstones](v8, "allowTombstones") & 1) != 0 || ([v4 flags] & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_15:

    v18 = 0;
    goto LABEL_16;
  }

LABEL_7:
  v22 = [RTLearnedPlace alloc];
  v23 = [v4 identifier];
  v9 = [v4 type];
  v10 = [v9 unsignedIntegerValue];
  v11 = [v4 typeSource];
  v12 = [v11 unsignedIntegerValue];
  v13 = [MEMORY[0x277D011A0] createWithManagedObject:v4];
  v14 = [v4 customLabel];
  v15 = [v4 creationDate];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v17 = [v4 expirationDate];
  v18 = [(RTLearnedPlace *)v22 initWithIdentifier:v23 type:v10 typeSource:v12 mapItem:v13 customLabel:v14 creationDate:v16 expirationDate:v17];

  if (!v15)
  {
  }

LABEL_16:

  return v18;
}

+ (id)createWithLearnedLocationOfInterestMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v26 = 0;
    v20 = "Invalid parameter not satisfying: learnedLocationOfInterestMO";
    v21 = &v26;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    goto LABEL_7;
  }

  v5 = [v3 placeIdentifier];

  if (v5)
  {
    v6 = [RTLearnedPlace alloc];
    v7 = [v4 placeIdentifier];
    v24 = [v4 placeType];
    v23 = [v24 unsignedIntegerValue];
    v8 = [v4 placeTypeSource];
    v9 = [v8 unsignedIntegerValue];
    v10 = MEMORY[0x277D011A0];
    v11 = [v4 mapItem];
    v12 = [v10 createWithManagedObject:v11];
    v13 = [v4 placeCustomLabel];
    v14 = [v4 placeCreationDate];
    v15 = [v4 placeExpirationDate];
    v16 = v6;
    v17 = v7;
    v18 = [(RTLearnedPlace *)v16 initWithIdentifier:v7 type:v23 typeSource:v9 mapItem:v12 customLabel:v13 creationDate:v14 expirationDate:v15];

    goto LABEL_8;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v20 = "Invalid parameter not satisfying: learnedLocationOfInterestMO.placeIdentifier";
    v21 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v18 = 0;
LABEL_8:

  return v18;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTLearnedPlaceMO managedObjectWithPlace:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)updateManagedObject:(id)a3
{
  v6 = a3;
  v4 = [v6 managedObjectContext];
  v5 = [RTLearnedPlaceMO managedObjectWithPlace:self managedObject:v6 inManagedObjectContext:v4];
}

+ (unint64_t)placeTypeFromType:(int64_t)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)placeTypeSourceFromTypeSource:(unint64_t)a3
{
  if ((a3 & 0xE) != 0)
  {
    return ((a3 >> 2) & 0x1C | (2 * (a3 & 1))) + 1;
  }

  else
  {
    return (a3 >> 2) & 0x1C | (2 * (a3 & 1));
  }
}

+ (id)placeTypeToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_2788CDA08[a3];
  }
}

+ (id)placeTypeSourceToString:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [RTLearnedPlace isTypeSourceValid:?];
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v12;
      v15 = 2048;
      v17 = 2080;
      v16 = a3;
      v18 = "+[RTLearnedPlace placeTypeSourceToString:]";
      v19 = 1024;
      v20 = 67;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@ does not handle RTLearnedPlaceTypeSource, %lu (in %s:%d)", &v13, 0x26u);
    }
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = v7;
  if (!a3)
  {
    v10 = @"Unknown";
    goto LABEL_19;
  }

  if (a3)
  {
    [v7 addObject:@"Inferred"];
    if ((a3 & 2) == 0)
    {
LABEL_8:
      if ((a3 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_8;
  }

  [v8 addObject:@"MeCard"];
  if ((a3 & 4) == 0)
  {
LABEL_9:
    if ((a3 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v8 addObject:@"User"];
  if ((a3 & 8) == 0)
  {
LABEL_10:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v8 addObject:@"Fallback"];
  if ((a3 & 0x10) != 0)
  {
LABEL_18:
    v10 = @"Maps";
LABEL_19:
    [v8 addObject:v10];
    if (v5)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_11:
  if (v5)
  {
LABEL_12:
    v9 = [v8 componentsJoinedByString:{@", "}];
    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
LABEL_21:

  return v9;
}

+ (unint64_t)placeTypeFromLocationOfInterestType:(int64_t)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (RTLearnedPlace)initWithIdentifier:(id)a3 type:(unint64_t)a4 typeSource:(unint64_t)a5 mapItem:(id)a6 customLabel:(id)a7 creationDate:(id)a8 expirationDate:(id)a9
{
  v39 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (v15)
  {
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_12:
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTLearnedPlace initWithIdentifier:type:typeSource:mapItem:customLabel:creationDate:expirationDate:]";
      v37 = 1024;
      v38 = 124;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: creationDate (in %s:%d)", buf, 0x12u);
    }

    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTLearnedPlace initWithIdentifier:type:typeSource:mapItem:customLabel:creationDate:expirationDate:]";
    v37 = 1024;
    v38 = 123;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
  }

  if (!v18)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v19)
  {
LABEL_4:
    v20 = 0;
    if (v15 && v18)
    {
      v34.receiver = self;
      v34.super_class = RTLearnedPlace;
      v21 = [(RTLearnedPlace *)&v34 init];
      if (v21)
      {
        v22 = [v15 copy];
        identifier = v21->_identifier;
        v21->_identifier = v22;

        v21->_type = a4;
        v21->_typeSource = a5;
        objc_storeStrong(&v21->_mapItem, a6);
        v24 = [v17 copy];
        customLabel = v21->_customLabel;
        v21->_customLabel = v24;

        v26 = [v18 copy];
        creationDate = v21->_creationDate;
        v21->_creationDate = v26;

        v28 = [v19 copy];
        expirationDate = v21->_expirationDate;
        v21->_expirationDate = v28;
      }

      self = v21;
      v20 = self;
    }

    goto LABEL_18;
  }

LABEL_15:
  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTLearnedPlace initWithIdentifier:type:typeSource:mapItem:customLabel:creationDate:expirationDate:]";
    v37 = 1024;
    v38 = 125;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationDate (in %s:%d)", buf, 0x12u);
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v15 = [(RTLearnedPlace *)self identifier];
  v4 = [v15 UUIDString];
  v5 = [objc_opt_class() placeTypeToString:{-[RTLearnedPlace type](self, "type")}];
  v6 = [objc_opt_class() placeTypeSourceToString:{-[RTLearnedPlace typeSource](self, "typeSource")}];
  v7 = [(RTLearnedPlace *)self mapItem];
  v8 = [(RTLearnedPlace *)self customLabel];
  v9 = [(RTLearnedPlace *)self creationDate];
  v10 = [v9 stringFromDate];
  v11 = [(RTLearnedPlace *)self expirationDate];
  v12 = [v11 stringFromDate];
  v13 = [v3 stringWithFormat:@"identifier, %@, type, %@, typeSource, %@, mapItem, %@, customLabel, %@, creationDate, %@, expirationDate, %@", v4, v5, v6, v7, v8, v10, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v9 = [(RTLearnedPlace *)self identifier];
        if (v9 || ([(RTLearnedPlace *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v4 = [(RTLearnedPlace *)self identifier];
          v10 = [(RTLearnedPlace *)v8 identifier];
          v11 = [v4 isEqual:v10];

          if (v9)
          {
LABEL_12:

            v13 = [(RTLearnedPlace *)self expirationDate];
            if (v13 || ([(RTLearnedPlace *)v8 expirationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v14 = [(RTLearnedPlace *)self expirationDate];
              v15 = [(RTLearnedPlace *)v8 expirationDate];
              v16 = [v14 isEqual:v15];

              if (v13)
              {
LABEL_18:

                v17 = [(RTLearnedPlace *)self creationDate];
                if (v17 || ([(RTLearnedPlace *)v8 creationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v18 = [(RTLearnedPlace *)self creationDate];
                  v19 = [(RTLearnedPlace *)v8 creationDate];
                  v20 = [v18 isEqual:v19];

                  if (v17)
                  {
LABEL_24:

                    v12 = v11 & v16 & v20;
                    goto LABEL_25;
                  }
                }

                else
                {
                  v20 = 1;
                }

                goto LABEL_24;
              }
            }

            else
            {
              v16 = 1;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v12 = 0;
  }

LABEL_25:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(RTLearnedPlace *)self identifier];
  v4 = [v3 hash];
  v5 = [(RTLearnedPlace *)self expirationDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(RTLearnedPlace *)self creationDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end