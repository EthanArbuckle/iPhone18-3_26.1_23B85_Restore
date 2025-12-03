@interface RTLearnedPlace
+ (id)createWithLearnedLocationOfInterestMO:(id)o;
+ (id)createWithLearnedPlaceMO:(id)o;
+ (id)createWithManagedObject:(id)object;
+ (id)placeTypeSourceToString:(unint64_t)string;
+ (id)placeTypeToString:(unint64_t)string;
+ (unint64_t)placeTypeFromLocationOfInterestType:(int64_t)type;
+ (unint64_t)placeTypeFromType:(int64_t)type;
+ (unint64_t)placeTypeSourceFromTypeSource:(unint64_t)source;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RTLearnedPlace)initWithIdentifier:(id)identifier type:(unint64_t)type typeSource:(unint64_t)source mapItem:(id)item customLabel:(id)label creationDate:(id)date expirationDate:(id)expirationDate;
- (id)managedObjectWithContext:(id)context;
- (unint64_t)hash;
- (void)updateManagedObject:(id)object;
@end

@implementation RTLearnedPlace

+ (id)createWithManagedObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedPlaceMO:objectCopy];
LABEL_6:
      v5 = v4;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedLocationOfInterestMO:objectCopy];
      goto LABEL_6;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = objectCopy;
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

+ (id)createWithLearnedPlaceMO:(id)o
{
  oCopy = o;
  v4 = oCopy;
  if (!oCopy)
  {
    managedObjectContext2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v25 = 0;
    v19 = "Invalid parameter not satisfying: learnedPlaceMO";
    v20 = &v25;
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, managedObjectContext2, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_15;
  }

  identifier = [oCopy identifier];

  if (!identifier)
  {
    managedObjectContext2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: learnedPlaceMO.identifier";
    v20 = buf;
    goto LABEL_20;
  }

  managedObjectContext = [v4 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    managedObjectContext2 = [v4 managedObjectContext];
    if ((-[NSObject allowTombstones](managedObjectContext2, "allowTombstones") & 1) != 0 || ([v4 flags] & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_15:

    v18 = 0;
    goto LABEL_16;
  }

LABEL_7:
  v22 = [RTLearnedPlace alloc];
  identifier2 = [v4 identifier];
  type = [v4 type];
  unsignedIntegerValue = [type unsignedIntegerValue];
  typeSource = [v4 typeSource];
  unsignedIntegerValue2 = [typeSource unsignedIntegerValue];
  v13 = [MEMORY[0x277D011A0] createWithManagedObject:v4];
  customLabel = [v4 customLabel];
  creationDate = [v4 creationDate];
  distantPast = creationDate;
  if (!creationDate)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  expirationDate = [v4 expirationDate];
  v18 = [(RTLearnedPlace *)v22 initWithIdentifier:identifier2 type:unsignedIntegerValue typeSource:unsignedIntegerValue2 mapItem:v13 customLabel:customLabel creationDate:distantPast expirationDate:expirationDate];

  if (!creationDate)
  {
  }

LABEL_16:

  return v18;
}

+ (id)createWithLearnedLocationOfInterestMO:(id)o
{
  oCopy = o;
  v4 = oCopy;
  if (!oCopy)
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

  placeIdentifier = [oCopy placeIdentifier];

  if (placeIdentifier)
  {
    v6 = [RTLearnedPlace alloc];
    placeIdentifier2 = [v4 placeIdentifier];
    placeType = [v4 placeType];
    unsignedIntegerValue = [placeType unsignedIntegerValue];
    placeTypeSource = [v4 placeTypeSource];
    unsignedIntegerValue2 = [placeTypeSource unsignedIntegerValue];
    v10 = MEMORY[0x277D011A0];
    mapItem = [v4 mapItem];
    v12 = [v10 createWithManagedObject:mapItem];
    placeCustomLabel = [v4 placeCustomLabel];
    placeCreationDate = [v4 placeCreationDate];
    placeExpirationDate = [v4 placeExpirationDate];
    v16 = v6;
    v17 = placeIdentifier2;
    v18 = [(RTLearnedPlace *)v16 initWithIdentifier:placeIdentifier2 type:unsignedIntegerValue typeSource:unsignedIntegerValue2 mapItem:v12 customLabel:placeCustomLabel creationDate:placeCreationDate expirationDate:placeExpirationDate];

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

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTLearnedPlaceMO managedObjectWithPlace:self inManagedObjectContext:context];
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

- (void)updateManagedObject:(id)object
{
  objectCopy = object;
  managedObjectContext = [objectCopy managedObjectContext];
  v5 = [RTLearnedPlaceMO managedObjectWithPlace:self managedObject:objectCopy inManagedObjectContext:managedObjectContext];
}

+ (unint64_t)placeTypeFromType:(int64_t)type
{
  if (type < 4)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)placeTypeSourceFromTypeSource:(unint64_t)source
{
  if ((source & 0xE) != 0)
  {
    return ((source >> 2) & 0x1C | (2 * (source & 1))) + 1;
  }

  else
  {
    return (source >> 2) & 0x1C | (2 * (source & 1));
  }
}

+ (id)placeTypeToString:(unint64_t)string
{
  if (string > 4)
  {
    return 0;
  }

  else
  {
    return off_2788CDA08[string];
  }
}

+ (id)placeTypeSourceToString:(unint64_t)string
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
      stringCopy = string;
      v18 = "+[RTLearnedPlace placeTypeSourceToString:]";
      v19 = 1024;
      v20 = 67;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@ does not handle RTLearnedPlaceTypeSource, %lu (in %s:%d)", &v13, 0x26u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (!string)
  {
    v10 = @"Unknown";
    goto LABEL_19;
  }

  if (string)
  {
    [array addObject:@"Inferred"];
    if ((string & 2) == 0)
    {
LABEL_8:
      if ((string & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((string & 2) == 0)
  {
    goto LABEL_8;
  }

  [v8 addObject:@"MeCard"];
  if ((string & 4) == 0)
  {
LABEL_9:
    if ((string & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v8 addObject:@"User"];
  if ((string & 8) == 0)
  {
LABEL_10:
    if ((string & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v8 addObject:@"Fallback"];
  if ((string & 0x10) != 0)
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

+ (unint64_t)placeTypeFromLocationOfInterestType:(int64_t)type
{
  if (type < 4)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

- (RTLearnedPlace)initWithIdentifier:(id)identifier type:(unint64_t)type typeSource:(unint64_t)source mapItem:(id)item customLabel:(id)label creationDate:(id)date expirationDate:(id)expirationDate
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemCopy = item;
  labelCopy = label;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  if (identifierCopy)
  {
    if (dateCopy)
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

    if (expirationDateCopy)
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

  if (!dateCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (expirationDateCopy)
  {
LABEL_4:
    selfCopy = 0;
    if (identifierCopy && dateCopy)
    {
      v34.receiver = self;
      v34.super_class = RTLearnedPlace;
      v21 = [(RTLearnedPlace *)&v34 init];
      if (v21)
      {
        v22 = [identifierCopy copy];
        identifier = v21->_identifier;
        v21->_identifier = v22;

        v21->_type = type;
        v21->_typeSource = source;
        objc_storeStrong(&v21->_mapItem, item);
        v24 = [labelCopy copy];
        customLabel = v21->_customLabel;
        v21->_customLabel = v24;

        v26 = [dateCopy copy];
        creationDate = v21->_creationDate;
        v21->_creationDate = v26;

        v28 = [expirationDateCopy copy];
        expirationDate = v21->_expirationDate;
        v21->_expirationDate = v28;
      }

      self = v21;
      selfCopy = self;
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

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(RTLearnedPlace *)self identifier];
  uUIDString = [identifier UUIDString];
  v5 = [objc_opt_class() placeTypeToString:{-[RTLearnedPlace type](self, "type")}];
  v6 = [objc_opt_class() placeTypeSourceToString:{-[RTLearnedPlace typeSource](self, "typeSource")}];
  mapItem = [(RTLearnedPlace *)self mapItem];
  customLabel = [(RTLearnedPlace *)self customLabel];
  creationDate = [(RTLearnedPlace *)self creationDate];
  stringFromDate = [creationDate stringFromDate];
  expirationDate = [(RTLearnedPlace *)self expirationDate];
  stringFromDate2 = [expirationDate stringFromDate];
  v13 = [v3 stringWithFormat:@"identifier, %@, type, %@, typeSource, %@, mapItem, %@, customLabel, %@, creationDate, %@, expirationDate, %@", uUIDString, v5, v6, mapItem, customLabel, stringFromDate, stringFromDate2];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        identifier = [(RTLearnedPlace *)self identifier];
        if (identifier || ([(RTLearnedPlace *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTLearnedPlace *)self identifier];
          identifier3 = [(RTLearnedPlace *)v8 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            expirationDate = [(RTLearnedPlace *)self expirationDate];
            if (expirationDate || ([(RTLearnedPlace *)v8 expirationDate], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              expirationDate2 = [(RTLearnedPlace *)self expirationDate];
              expirationDate3 = [(RTLearnedPlace *)v8 expirationDate];
              v16 = [expirationDate2 isEqual:expirationDate3];

              if (expirationDate)
              {
LABEL_18:

                creationDate = [(RTLearnedPlace *)self creationDate];
                if (creationDate || ([(RTLearnedPlace *)v8 creationDate], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  creationDate2 = [(RTLearnedPlace *)self creationDate];
                  creationDate3 = [(RTLearnedPlace *)v8 creationDate];
                  v20 = [creationDate2 isEqual:creationDate3];

                  if (creationDate)
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
  identifier = [(RTLearnedPlace *)self identifier];
  v4 = [identifier hash];
  expirationDate = [(RTLearnedPlace *)self expirationDate];
  v6 = [expirationDate hash] ^ v4;
  creationDate = [(RTLearnedPlace *)self creationDate];
  v8 = [creationDate hash];

  return v6 ^ v8;
}

@end