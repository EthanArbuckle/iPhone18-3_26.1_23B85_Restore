@interface RTLearnedVisit
+ (id)createWithLearnedLocationOfInterestVisitMO:(id)o;
+ (id)createWithLearnedVisitMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RTLearnedVisit)initWithIdentifier:(id)identifier location:(id)location entryDate:(id)date exitDate:(id)exitDate creationDate:(id)creationDate expirationDate:(id)expirationDate placeConfidence:(double)confidence placeSource:(unint64_t)self0;
- (RTLearnedVisit)initWithVisit:(id)visit locationOfInterest:(id)interest creationDate:(id)date expirationDate:(id)expirationDate;
- (id)managedObjectWithContext:(id)context;
- (unint64_t)hash;
- (void)updateManagedObject:(id)object;
@end

@implementation RTLearnedVisit

- (RTLearnedVisit)initWithVisit:(id)visit locationOfInterest:(id)interest creationDate:(id)date expirationDate:(id)expirationDate
{
  expirationDateCopy = expirationDate;
  dateCopy = date;
  visitCopy = visit;
  identifier = [visitCopy identifier];
  uUID = identifier;
  if (!identifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v13 = [RTLearnedLocation alloc];
  location = [visitCopy location];
  v15 = [(RTLearnedLocation *)v13 initWithLocation:location dataPointCount:30 type:1];
  entryDate = [visitCopy entryDate];
  exitDate = [visitCopy exitDate];
  [visitCopy locationOfInterestConfidence];
  v19 = v18;
  locationOfInterestSource = [visitCopy locationOfInterestSource];

  v21 = [(RTLearnedVisit *)self initWithIdentifier:uUID location:v15 entryDate:entryDate exitDate:exitDate creationDate:dateCopy expirationDate:expirationDateCopy placeConfidence:v19 placeSource:locationOfInterestSource];
  if (!identifier)
  {
  }

  return v21;
}

+ (id)createWithManagedObject:(id)object
{
  v15 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objectCopy;
      v5 = [objc_opt_class() createWithLearnedVisitMO:v4];
LABEL_6:
      v6 = v5;

      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objectCopy;
      v5 = [objc_opt_class() createWithLearnedLocationOfInterestVisitMO:v4];
      goto LABEL_6;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = objectCopy;
      v11 = 2080;
      v12 = "+[RTLearnedVisit(RTCoreDataTransformable) createWithManagedObject:]";
      v13 = 1024;
      v14 = 40;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLearnedVisit+CoreDataTransformable (in %s:%d)", &v9, 0x1Cu);
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

+ (id)createWithLearnedVisitMO:(id)o
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

    v50 = 0;
    v42 = "Invalid parameter not satisfying: learnedVisitMO";
    v43 = &v50;
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, managedObjectContext2, OS_LOG_TYPE_ERROR, v42, v43, 2u);
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
    v42 = "Invalid parameter not satisfying: learnedVisitMO.identifier";
    v43 = buf;
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

    v41 = 0;
    goto LABEL_16;
  }

LABEL_7:
  v47 = [RTLearnedLocation alloc];
  v9 = objc_alloc(MEMORY[0x277D01160]);
  locationLatitude = [v4 locationLatitude];
  [locationLatitude doubleValue];
  v11 = v10;
  locationLongitude = [v4 locationLongitude];
  [locationLongitude doubleValue];
  v13 = v12;
  locationHorizontalUncertainty = [v4 locationHorizontalUncertainty];
  [locationHorizontalUncertainty doubleValue];
  v16 = v15;
  locationAltitude = [v4 locationAltitude];
  [locationAltitude doubleValue];
  v19 = v18;
  locationVerticalUncertainty = [v4 locationVerticalUncertainty];
  [locationVerticalUncertainty doubleValue];
  v22 = v21;
  locationReferenceFrame = [v4 locationReferenceFrame];
  intValue = [locationReferenceFrame intValue];
  locationSourceAccuracy = [v4 locationSourceAccuracy];
  v26 = [v9 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v11 date:v13 referenceFrame:v16 speed:v19 sourceAccuracy:{v22, 0.0}];
  dataPointCount = [v4 dataPointCount];
  unsignedIntegerValue = [dataPointCount unsignedIntegerValue];
  confidence = [v4 confidence];
  [confidence doubleValue];
  v48 = [(RTLearnedLocation *)v47 initWithLocation:v26 dataPointCount:unsignedIntegerValue confidence:?];

  v30 = [RTLearnedVisit alloc];
  identifier2 = [v4 identifier];
  entryDate = [v4 entryDate];
  exitDate = [v4 exitDate];
  creationDate = [v4 creationDate];
  distantPast = creationDate;
  if (!creationDate)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  expirationDate = [v4 expirationDate];
  placeConfidence = [v4 placeConfidence];
  [placeConfidence doubleValue];
  v39 = v38;
  placeSource = [v4 placeSource];
  v41 = -[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:](v30, "initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:", identifier2, v48, entryDate, exitDate, distantPast, expirationDate, v39, [placeSource unsignedIntegerValue]);

  if (!creationDate)
  {
  }

LABEL_16:

  return v41;
}

+ (id)createWithLearnedLocationOfInterestVisitMO:(id)o
{
  oCopy = o;
  v4 = oCopy;
  if (!oCopy)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      v41 = 0;
      goto LABEL_12;
    }

    v49 = 0;
    v43 = "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO";
    v44 = &v49;
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, v43, v44, 2u);
    goto LABEL_11;
  }

  identifier = [oCopy identifier];

  if (!identifier)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO.identifier";
    v44 = buf;
    goto LABEL_16;
  }

  v6 = objc_alloc(MEMORY[0x277D01160]);
  locationLatitude = [v4 locationLatitude];
  [locationLatitude doubleValue];
  v9 = v8;
  locationLongitude = [v4 locationLongitude];
  [locationLongitude doubleValue];
  v12 = v11;
  locationHorizontalUncertainty = [v4 locationHorizontalUncertainty];
  [locationHorizontalUncertainty doubleValue];
  v15 = v14;
  locationAltitude = [v4 locationAltitude];
  [locationAltitude doubleValue];
  v18 = v17;
  locationVerticalUncertainty = [v4 locationVerticalUncertainty];
  [locationVerticalUncertainty doubleValue];
  v21 = v20;
  locationReferenceFrame = [v4 locationReferenceFrame];
  intValue = [locationReferenceFrame intValue];
  locationSourceAccuracy = [v4 locationSourceAccuracy];
  v25 = [v6 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v9 date:v12 referenceFrame:v15 speed:v18 sourceAccuracy:{v21, 0.0}];

  v26 = [RTLearnedLocation alloc];
  dataPointCount = [v4 dataPointCount];
  unsignedIntegerValue = [dataPointCount unsignedIntegerValue];
  confidence = [v4 confidence];
  [confidence doubleValue];
  v46 = v25;
  v47 = [(RTLearnedLocation *)v26 initWithLocation:v25 dataPointCount:unsignedIntegerValue confidence:?];

  v30 = [RTLearnedVisit alloc];
  identifier2 = [v4 identifier];
  entryDate = [v4 entryDate];
  exitDate = [v4 exitDate];
  creationDate = [v4 creationDate];
  distantPast = creationDate;
  if (!creationDate)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  expirationDate = [v4 expirationDate];
  locationOfInterestConfidence = [v4 locationOfInterestConfidence];
  [locationOfInterestConfidence doubleValue];
  v39 = v38;
  locationOfInterestSource = [v4 locationOfInterestSource];
  v41 = -[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:](v30, "initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:", identifier2, v47, entryDate, exitDate, distantPast, expirationDate, v39, [locationOfInterestSource unsignedIntegerValue]);

  if (!creationDate)
  {
  }

LABEL_12:

  return v41;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTLearnedVisitMO managedObjectWithVisit:self inManagedObjectContext:context];
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
  v5 = [RTLearnedVisitMO managedObjectWithVisit:self finerGranularityInferredMapItem:0 place:0 managedObject:objectCopy inManagedObjectContext:managedObjectContext];
}

- (RTLearnedVisit)initWithIdentifier:(id)identifier location:(id)location entryDate:(id)date exitDate:(id)exitDate creationDate:(id)creationDate expirationDate:(id)expirationDate placeConfidence:(double)confidence placeSource:(unint64_t)self0
{
  v55 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  locationCopy = location;
  dateCopy = date;
  exitDateCopy = exitDate;
  creationDateCopy = creationDate;
  expirationDateCopy = expirationDate;
  if (identifierCopy)
  {
    if (locationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
      v49 = 1024;
      LODWORD(v50) = 53;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (locationCopy)
    {
LABEL_3:
      if (dateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
    v49 = 1024;
    LODWORD(v50) = 54;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", buf, 0x12u);
  }

  if (dateCopy)
  {
LABEL_4:
    if (exitDateCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
    v49 = 1024;
    LODWORD(v50) = 55;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entryDate (in %s:%d)", buf, 0x12u);
  }

  if (exitDateCopy)
  {
LABEL_5:
    if (creationDateCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
    v49 = 1024;
    LODWORD(v50) = 56;
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: exitDate (in %s:%d)", buf, 0x12u);
  }

  if (creationDateCopy)
  {
LABEL_6:
    if (expirationDateCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
    v49 = 1024;
    LODWORD(v50) = 57;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: creationDate (in %s:%d)", buf, 0x12u);
  }

  if (!expirationDateCopy)
  {
LABEL_23:
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
      v49 = 1024;
      LODWORD(v50) = 58;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationDate (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_26:
  if (confidence < 0.0 || confidence > 1.0)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
      v49 = 1024;
      LODWORD(v50) = 60;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: kRTLearnedVisitPlaceConfidenceMin <= placeConfidence && placeConfidence <= kRTLearnedVisitPlaceConfidenceMax (in %s:%d)", buf, 0x12u);
    }
  }

  selfCopy = 0;
  if (identifierCopy && locationCopy && dateCopy && exitDateCopy && creationDateCopy && expirationDateCopy)
  {
    if ([dateCopy compare:exitDateCopy] == 1)
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        stringFromDate = [dateCopy stringFromDate];
        stringFromDate2 = [exitDateCopy stringFromDate];
        *buf = 138413058;
        v48 = stringFromDate;
        v49 = 2112;
        v51 = 2080;
        v50 = stringFromDate2;
        v52 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
        v53 = 1024;
        v54 = 75;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "entry, %@, postdates exit, %@ (in %s:%d)", buf, 0x26u);
      }

      selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
      if (confidence >= 0.0 && confidence <= 1.0)
      {
        v46.receiver = self;
        v46.super_class = RTLearnedVisit;
        v32 = [(RTLearnedVisit *)&v46 init];
        if (v32)
        {
          v33 = [identifierCopy copy];
          identifier = v32->_identifier;
          v32->_identifier = v33;

          objc_storeStrong(&v32->_location, location);
          v35 = [dateCopy copy];
          entryDate = v32->_entryDate;
          v32->_entryDate = v35;

          v37 = [exitDateCopy copy];
          exitDate = v32->_exitDate;
          v32->_exitDate = v37;

          v39 = [creationDateCopy copy];
          creationDate = v32->_creationDate;
          v32->_creationDate = v39;

          v41 = [expirationDateCopy copy];
          expirationDate = v32->_expirationDate;
          v32->_expirationDate = v41;

          v32->_placeConfidence = confidence;
          v32->_placeSource = source;
        }

        self = v32;
        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

- (NSString)description
{
  v17 = MEMORY[0x277CCACA8];
  identifier = [(RTLearnedVisit *)self identifier];
  uUIDString = [identifier UUIDString];
  location = [(RTLearnedVisit *)self location];
  entryDate = [(RTLearnedVisit *)self entryDate];
  stringFromDate = [entryDate stringFromDate];
  exitDate = [(RTLearnedVisit *)self exitDate];
  stringFromDate2 = [exitDate stringFromDate];
  creationDate = [(RTLearnedVisit *)self creationDate];
  stringFromDate3 = [creationDate stringFromDate];
  expirationDate = [(RTLearnedVisit *)self expirationDate];
  stringFromDate4 = [expirationDate stringFromDate];
  [(RTLearnedVisit *)self placeConfidence];
  v11 = v10;
  v12 = [MEMORY[0x277D011A0] sourceToString:{-[RTLearnedVisit placeSource](self, "placeSource")}];
  v13 = [v17 stringWithFormat:@"identifier, %@, location, %@, entryDate, %@, exitDate, %@, creationDate, %@, expirationDate, %@, placeConfidence, %.3f, placeSource, %@", uUIDString, location, stringFromDate, stringFromDate2, stringFromDate3, stringFromDate4, v11, v12];

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
        identifier = [(RTLearnedVisit *)self identifier];
        if (identifier || ([(RTLearnedVisit *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTLearnedVisit *)self identifier];
          identifier3 = [(RTLearnedVisit *)v8 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            expirationDate = [(RTLearnedVisit *)self expirationDate];
            if (expirationDate || ([(RTLearnedVisit *)v8 expirationDate], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              expirationDate2 = [(RTLearnedVisit *)self expirationDate];
              expirationDate3 = [(RTLearnedVisit *)v8 expirationDate];
              v16 = [expirationDate2 isEqual:expirationDate3];

              if (expirationDate)
              {
LABEL_18:

                creationDate = [(RTLearnedVisit *)self creationDate];
                if (creationDate || ([(RTLearnedVisit *)v8 creationDate], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  creationDate2 = [(RTLearnedVisit *)self creationDate];
                  creationDate3 = [(RTLearnedVisit *)v8 creationDate];
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
  identifier = [(RTLearnedVisit *)self identifier];
  v4 = [identifier hash];
  expirationDate = [(RTLearnedVisit *)self expirationDate];
  v6 = [expirationDate hash] ^ v4;
  creationDate = [(RTLearnedVisit *)self creationDate];
  v8 = [creationDate hash];

  return v6 ^ v8;
}

@end