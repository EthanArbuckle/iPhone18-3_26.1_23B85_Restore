@interface RTLearnedTransition
+ (id)createWithLearnedLocationOfInterestTransitionMO:(id)a3;
+ (id)createWithLearnedTransitionMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RTLearnedTransition)initWithIdentifier:(id)a3 startDate:(id)a4 stopDate:(id)a5 visitIdentifierOrigin:(id)a6 visitIdentifierDestination:(id)a7 creationDate:(id)a8 expirationDate:(id)a9 predominantMotionActivityType:(unint64_t)a10;
- (id)managedObjectWithContext:(id)a3;
- (unint64_t)hash;
- (void)updateManagedObject:(id)a3;
@end

@implementation RTLearnedTransition

- (RTLearnedTransition)initWithIdentifier:(id)a3 startDate:(id)a4 stopDate:(id)a5 visitIdentifierOrigin:(id)a6 visitIdentifierDestination:(id)a7 creationDate:(id)a8 expirationDate:(id)a9 predominantMotionActivityType:(unint64_t)a10
{
  v59 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v16)
  {
    if (v17)
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

    if (v17)
    {
LABEL_3:
      if (v18)
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

  if (v18)
  {
LABEL_4:
    if (v19)
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

  if (v19)
  {
LABEL_5:
    if (v20)
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

  if (v20)
  {
LABEL_6:
    if (v21)
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

  if (v21)
  {
LABEL_7:
    if (v22)
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

  if (!v22)
  {
    goto LABEL_35;
  }

LABEL_8:
  v23 = 0;
  if (v16 && v17 && v18 && v19 && v20 && v21)
  {
    if ([v17 compare:v18] == 1)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v49 = [v17 stringFromDate];
        v25 = [v18 stringFromDate];
        *buf = 138413058;
        v52 = v49;
        v53 = 2112;
        v55 = 2080;
        v54 = v25;
        v26 = v25;
        v56 = "[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:]";
        v57 = 1024;
        v58 = 56;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "start, %@, postdates stop, %@ (in %s:%d)", buf, 0x26u);
      }

LABEL_37:

      v23 = 0;
      goto LABEL_41;
    }

    v50.receiver = self;
    v50.super_class = RTLearnedTransition;
    v33 = [(RTLearnedTransition *)&v50 init];
    if (v33)
    {
      v34 = [v16 copy];
      identifier = v33->_identifier;
      v33->_identifier = v34;

      v36 = [v17 copy];
      startDate = v33->_startDate;
      v33->_startDate = v36;

      v38 = [v18 copy];
      stopDate = v33->_stopDate;
      v33->_stopDate = v38;

      v40 = [v19 copy];
      visitIdentifierOrigin = v33->_visitIdentifierOrigin;
      v33->_visitIdentifierOrigin = v40;

      v42 = [v20 copy];
      visitIdentifierDestination = v33->_visitIdentifierDestination;
      v33->_visitIdentifierDestination = v42;

      v44 = [v21 copy];
      creationDate = v33->_creationDate;
      v33->_creationDate = v44;

      v46 = [v22 copy];
      expirationDate = v33->_expirationDate;
      v33->_expirationDate = v46;

      v33->_predominantMotionActivityType = a10;
    }

    self = v33;
    v23 = self;
  }

LABEL_41:

  return v23;
}

- (NSString)description
{
  v15 = MEMORY[0x277CCACA8];
  v20 = [(RTLearnedTransition *)self identifier];
  v14 = [v20 UUIDString];
  v19 = [(RTLearnedTransition *)self startDate];
  v13 = [v19 stringFromDate];
  v18 = [(RTLearnedTransition *)self stopDate];
  v12 = [v18 stringFromDate];
  v17 = [(RTLearnedTransition *)self visitIdentifierOrigin];
  v3 = [v17 UUIDString];
  v4 = [(RTLearnedTransition *)self visitIdentifierDestination];
  v5 = [v4 UUIDString];
  v6 = [(RTLearnedTransition *)self creationDate];
  v7 = [v6 stringFromDate];
  v8 = [(RTLearnedTransition *)self expirationDate];
  v9 = [v8 stringFromDate];
  v10 = [MEMORY[0x277D011B8] motionActivityTypeToString:{-[RTLearnedTransition predominantMotionActivityType](self, "predominantMotionActivityType")}];
  v16 = [v15 stringWithFormat:@"identifier, %@, startDate, %@, stopDate, %@, visitIdentifierOrigin, %@, visitIdentifierDestination, %@, creationDate, %@, expirationDate, %@, predominantMotionActivityType, %@", v14, v13, v12, v3, v5, v7, v9, v10];

  return v16;
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
        v9 = [(RTLearnedTransition *)self identifier];
        if (v9 || ([(RTLearnedTransition *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v4 = [(RTLearnedTransition *)self identifier];
          v10 = [(RTLearnedTransition *)v8 identifier];
          v11 = [v4 isEqual:v10];

          if (v9)
          {
LABEL_12:

            v13 = [(RTLearnedTransition *)self expirationDate];
            if (v13 || ([(RTLearnedTransition *)v8 expirationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v14 = [(RTLearnedTransition *)self expirationDate];
              v15 = [(RTLearnedTransition *)v8 expirationDate];
              v16 = [v14 isEqual:v15];

              if (v13)
              {
LABEL_18:

                v17 = [(RTLearnedTransition *)self creationDate];
                if (v17 || ([(RTLearnedTransition *)v8 creationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v18 = [(RTLearnedTransition *)self creationDate];
                  v19 = [(RTLearnedTransition *)v8 creationDate];
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
  v3 = [(RTLearnedTransition *)self identifier];
  v4 = [v3 hash];
  v5 = [(RTLearnedTransition *)self expirationDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(RTLearnedTransition *)self creationDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

+ (id)createWithManagedObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedTransitionMO:v3];
LABEL_6:
      v5 = v4;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedLocationOfInterestTransitionMO:v3];
      goto LABEL_6;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = v3;
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

+ (id)createWithLearnedTransitionMO:(id)a3
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

    v26 = 0;
    v19 = "Invalid parameter not satisfying: learnedTransitionMO";
    v20 = &v26;
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
    v19 = "Invalid parameter not satisfying: learnedTransitionMO.identifier";
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
  v9 = [RTLearnedTransition alloc];
  v24 = [v4 identifier];
  v23 = [v4 startDate];
  v22 = [v4 stopDate];
  v10 = [v4 origin];
  v11 = [v10 identifier];
  v12 = [v4 destination];
  v13 = [v12 identifier];
  v14 = [v4 creationDate];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = [v4 expirationDate];
  v17 = [v4 predominantMotionActivityType];
  v18 = -[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:](v9, "initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:", v24, v23, v22, v11, v13, v15, v16, [v17 integerValue]);

  if (!v14)
  {
  }

LABEL_16:

  return v18;
}

+ (id)createWithLearnedLocationOfInterestTransitionMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  v5 = [v3 identifier];

  if (v5)
  {
    v6 = [RTLearnedTransition alloc];
    v7 = [v4 identifier];
    v8 = [v4 startDate];
    v9 = [v4 stopDate];
    v10 = [v4 visitIdentifierOrigin];
    v11 = [v4 visitIdentifierDestination];
    v12 = [v4 creationDate];
    v13 = [v4 expirationDate];
    v14 = [v4 predominantMotionActivityType];
    v15 = -[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:](v6, "initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:", v7, v8, v9, v10, v11, v12, v13, [v14 integerValue]);

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

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTLearnedTransitionMO managedObjectWithTransition:self inManagedObjectContext:a3];
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
  v5 = [RTLearnedTransitionMO managedObjectWithTransition:self managedObject:v6 inManagedObjectContext:v4];
}

@end