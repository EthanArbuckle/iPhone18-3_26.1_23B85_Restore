@interface RTLearnedTransition
+ (id)createWithLearnedLocationOfInterestTransitionMO:(id)o;
+ (id)createWithLearnedTransitionMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RTLearnedTransition)initWithIdentifier:(id)identifier startDate:(id)date stopDate:(id)stopDate visitIdentifierOrigin:(id)origin visitIdentifierDestination:(id)destination creationDate:(id)creationDate expirationDate:(id)expirationDate predominantMotionActivityType:(unint64_t)self0;
- (id)managedObjectWithContext:(id)context;
- (unint64_t)hash;
- (void)updateManagedObject:(id)object;
@end

@implementation RTLearnedTransition

- (RTLearnedTransition)initWithIdentifier:(id)identifier startDate:(id)date stopDate:(id)stopDate visitIdentifierOrigin:(id)origin visitIdentifierDestination:(id)destination creationDate:(id)creationDate expirationDate:(id)expirationDate predominantMotionActivityType:(unint64_t)self0
{
  v59 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  stopDateCopy = stopDate;
  originCopy = origin;
  destinationCopy = destination;
  creationDateCopy = creationDate;
  expirationDateCopy = expirationDate;
  if (identifierCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
      v53 = 1024;
      LODWORD(v54) = 34;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (dateCopy)
    {
LABEL_3:
      if (stopDateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
    v53 = 1024;
    LODWORD(v54) = 35;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
  }

  if (stopDateCopy)
  {
LABEL_4:
    if (originCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
    v53 = 1024;
    LODWORD(v54) = 36;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stopDate (in %s:%d)", buf, 0x12u);
  }

  if (originCopy)
  {
LABEL_5:
    if (destinationCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
    v53 = 1024;
    LODWORD(v54) = 37;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifierOrigin (in %s:%d)", buf, 0x12u);
  }

  if (destinationCopy)
  {
LABEL_6:
    if (creationDateCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
    v53 = 1024;
    LODWORD(v54) = 38;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifierDestination (in %s:%d)", buf, 0x12u);
  }

  if (creationDateCopy)
  {
LABEL_7:
    if (expirationDateCopy)
    {
      goto LABEL_8;
    }

LABEL_35:
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
      v53 = 1024;
      LODWORD(v54) = 40;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationDate (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_37;
  }

LABEL_32:
  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
    v53 = 1024;
    LODWORD(v54) = 39;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: creationDate (in %s:%d)", buf, 0x12u);
  }

  if (!expirationDateCopy)
  {
    goto LABEL_35;
  }

LABEL_8:
  selfCopy = 0;
  if (identifierCopy && dateCopy && stopDateCopy && originCopy && destinationCopy && creationDateCopy)
  {
    if ([dateCopy compare:stopDateCopy] == 1)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        stringFromDate = [dateCopy stringFromDate];
        stringFromDate2 = [stopDateCopy stringFromDate];
        *buf = 138413058;
        v52 = stringFromDate;
        v53 = 2112;
        v55 = 2080;
        v54 = stringFromDate2;
        v26 = stringFromDate2;
        v56 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
        v57 = 1024;
        v58 = 56;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "start, %@, postdates stop, %@ (in %s:%d)", buf, 0x26u);
      }

LABEL_37:

      selfCopy = 0;
      goto LABEL_41;
    }

    v50.receiver = self;
    v50.super_class = RTLearnedTransition;
    v33 = [(RTLearnedTransition *)&v50 init];
    if (v33)
    {
      v34 = [identifierCopy copy];
      identifier = v33->_identifier;
      v33->_identifier = v34;

      v36 = [dateCopy copy];
      startDate = v33->_startDate;
      v33->_startDate = v36;

      v38 = [stopDateCopy copy];
      stopDate = v33->_stopDate;
      v33->_stopDate = v38;

      v40 = [originCopy copy];
      visitIdentifierOrigin = v33->_visitIdentifierOrigin;
      v33->_visitIdentifierOrigin = v40;

      v42 = [destinationCopy copy];
      visitIdentifierDestination = v33->_visitIdentifierDestination;
      v33->_visitIdentifierDestination = v42;

      v44 = [creationDateCopy copy];
      creationDate = v33->_creationDate;
      v33->_creationDate = v44;

      v46 = [expirationDateCopy copy];
      expirationDate = v33->_expirationDate;
      v33->_expirationDate = v46;

      v33->_predominantMotionActivityType = type;
    }

    self = v33;
    selfCopy = self;
  }

LABEL_41:

  return selfCopy;
}

- (NSString)description
{
  v15 = MEMORY[0x277CCACA8];
  identifier = [(RTLearnedTransition *)self identifier];
  uUIDString = [identifier UUIDString];
  startDate = [(RTLearnedTransition *)self startDate];
  stringFromDate = [startDate stringFromDate];
  stopDate = [(RTLearnedTransition *)self stopDate];
  stringFromDate2 = [stopDate stringFromDate];
  visitIdentifierOrigin = [(RTLearnedTransition *)self visitIdentifierOrigin];
  uUIDString2 = [visitIdentifierOrigin UUIDString];
  visitIdentifierDestination = [(RTLearnedTransition *)self visitIdentifierDestination];
  uUIDString3 = [visitIdentifierDestination UUIDString];
  creationDate = [(RTLearnedTransition *)self creationDate];
  stringFromDate3 = [creationDate stringFromDate];
  expirationDate = [(RTLearnedTransition *)self expirationDate];
  stringFromDate4 = [expirationDate stringFromDate];
  v10 = [MEMORY[0x277D011B8] motionActivityTypeToString:{-[RTLearnedTransition predominantMotionActivityType](self, "predominantMotionActivityType")}];
  v16 = [v15 stringWithFormat:@"identifier, %@, startDate, %@, stopDate, %@, visitIdentifierOrigin, %@, visitIdentifierDestination, %@, creationDate, %@, expirationDate, %@, predominantMotionActivityType, %@", uUIDString, stringFromDate, stringFromDate2, uUIDString2, uUIDString3, stringFromDate3, stringFromDate4, v10];

  return v16;
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
        identifier = [(RTLearnedTransition *)self identifier];
        if (identifier || ([(RTLearnedTransition *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTLearnedTransition *)self identifier];
          identifier3 = [(RTLearnedTransition *)v8 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            expirationDate = [(RTLearnedTransition *)self expirationDate];
            if (expirationDate || ([(RTLearnedTransition *)v8 expirationDate], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              expirationDate2 = [(RTLearnedTransition *)self expirationDate];
              expirationDate3 = [(RTLearnedTransition *)v8 expirationDate];
              v16 = [expirationDate2 isEqual:expirationDate3];

              if (expirationDate)
              {
LABEL_18:

                creationDate = [(RTLearnedTransition *)self creationDate];
                if (creationDate || ([(RTLearnedTransition *)v8 creationDate], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  creationDate2 = [(RTLearnedTransition *)self creationDate];
                  creationDate3 = [(RTLearnedTransition *)v8 creationDate];
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
  identifier = [(RTLearnedTransition *)self identifier];
  v4 = [identifier hash];
  expirationDate = [(RTLearnedTransition *)self expirationDate];
  v6 = [expirationDate hash] ^ v4;
  creationDate = [(RTLearnedTransition *)self creationDate];
  v8 = [creationDate hash];

  return v6 ^ v8;
}

+ (id)createWithManagedObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedTransitionMO:objectCopy];
LABEL_6:
      v5 = v4;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedLocationOfInterestTransitionMO:objectCopy];
      goto LABEL_6;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = objectCopy;
      v10 = 2080;
      v11 = "+[RTLearnedTransition(RTCoreDataTransformable) createWithManagedObject:]";
      v12 = 1024;
      v13 = 39;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLearnedTransition+CoreDataTransformable (in %s:%d)", &v8, 0x1Cu);
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

+ (id)createWithLearnedTransitionMO:(id)o
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

    v26 = 0;
    v19 = "Invalid parameter not satisfying: learnedTransitionMO";
    v20 = &v26;
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
    v19 = "Invalid parameter not satisfying: learnedTransitionMO.identifier";
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
  v9 = [RTLearnedTransition alloc];
  identifier2 = [v4 identifier];
  startDate = [v4 startDate];
  stopDate = [v4 stopDate];
  origin = [v4 origin];
  identifier3 = [origin identifier];
  destination = [v4 destination];
  identifier4 = [destination identifier];
  creationDate = [v4 creationDate];
  distantPast = creationDate;
  if (!creationDate)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  expirationDate = [v4 expirationDate];
  predominantMotionActivityType = [v4 predominantMotionActivityType];
  v18 = -[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:](v9, "initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:", identifier2, startDate, stopDate, identifier3, identifier4, distantPast, expirationDate, [predominantMotionActivityType integerValue]);

  if (!creationDate)
  {
  }

LABEL_16:

  return v18;
}

+ (id)createWithLearnedLocationOfInterestTransitionMO:(id)o
{
  oCopy = o;
  v4 = oCopy;
  if (!oCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v21 = 0;
    v17 = "Invalid parameter not satisfying: learnedLocationOfInterestTransitionMO";
    v18 = &v21;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_7;
  }

  identifier = [oCopy identifier];

  if (identifier)
  {
    v6 = [RTLearnedTransition alloc];
    identifier2 = [v4 identifier];
    startDate = [v4 startDate];
    stopDate = [v4 stopDate];
    visitIdentifierOrigin = [v4 visitIdentifierOrigin];
    visitIdentifierDestination = [v4 visitIdentifierDestination];
    creationDate = [v4 creationDate];
    expirationDate = [v4 expirationDate];
    predominantMotionActivityType = [v4 predominantMotionActivityType];
    v15 = -[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:](v6, "initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:", identifier2, startDate, stopDate, visitIdentifierOrigin, visitIdentifierDestination, creationDate, expirationDate, [predominantMotionActivityType integerValue]);

    goto LABEL_8;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v17 = "Invalid parameter not satisfying: learnedLocationOfInterestTransitionMO.identifier";
    v18 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTLearnedTransitionMO managedObjectWithTransition:self inManagedObjectContext:context];
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
  v5 = [RTLearnedTransitionMO managedObjectWithTransition:self managedObject:objectCopy inManagedObjectContext:managedObjectContext];
}

@end