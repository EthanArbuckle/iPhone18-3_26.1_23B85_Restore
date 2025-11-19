@interface RTLearnedVisit
+ (id)createWithLearnedLocationOfInterestVisitMO:(id)a3;
+ (id)createWithLearnedVisitMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RTLearnedVisit)initWithIdentifier:(id)a3 location:(id)a4 entryDate:(id)a5 exitDate:(id)a6 creationDate:(id)a7 expirationDate:(id)a8 placeConfidence:(double)a9 placeSource:(unint64_t)a10;
- (RTLearnedVisit)initWithVisit:(id)a3 locationOfInterest:(id)a4 creationDate:(id)a5 expirationDate:(id)a6;
- (id)managedObjectWithContext:(id)a3;
- (unint64_t)hash;
- (void)updateManagedObject:(id)a3;
@end

@implementation RTLearnedVisit

- (RTLearnedVisit)initWithVisit:(id)a3 locationOfInterest:(id)a4 creationDate:(id)a5 expirationDate:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
  }

  v13 = [RTLearnedLocation alloc];
  v14 = [v10 location];
  v15 = [(RTLearnedLocation *)v13 initWithLocation:v14 dataPointCount:30 type:1];
  v16 = [v10 entryDate];
  v17 = [v10 exitDate];
  [v10 locationOfInterestConfidence];
  v19 = v18;
  v20 = [v10 locationOfInterestSource];

  v21 = [(RTLearnedVisit *)self initWithIdentifier:v12 location:v15 entryDate:v16 exitDate:v17 creationDate:v9 expirationDate:v8 placeConfidence:v19 placeSource:v20];
  if (!v11)
  {
  }

  return v21;
}

+ (id)createWithManagedObject:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [objc_opt_class() createWithLearnedVisitMO:v4];
LABEL_6:
      v6 = v5;

      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [objc_opt_class() createWithLearnedLocationOfInterestVisitMO:v4];
      goto LABEL_6;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v3;
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

+ (id)createWithLearnedVisitMO:(id)a3
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

    v50 = 0;
    v42 = "Invalid parameter not satisfying: learnedVisitMO";
    v43 = &v50;
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v42, v43, 2u);
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
    v42 = "Invalid parameter not satisfying: learnedVisitMO.identifier";
    v43 = buf;
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

    v41 = 0;
    goto LABEL_16;
  }

LABEL_7:
  v47 = [RTLearnedLocation alloc];
  v9 = objc_alloc(MEMORY[0x277D01160]);
  v46 = [v4 locationLatitude];
  [v46 doubleValue];
  v11 = v10;
  v45 = [v4 locationLongitude];
  [v45 doubleValue];
  v13 = v12;
  v14 = [v4 locationHorizontalUncertainty];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v4 locationAltitude];
  [v17 doubleValue];
  v19 = v18;
  v20 = [v4 locationVerticalUncertainty];
  [v20 doubleValue];
  v22 = v21;
  v23 = [v4 locationReferenceFrame];
  v24 = [v23 intValue];
  v25 = [v4 locationSourceAccuracy];
  v26 = [v9 initWithLatitude:0 longitude:v24 horizontalUncertainty:objc_msgSend(v25 altitude:"intValue") verticalUncertainty:v11 date:v13 referenceFrame:v16 speed:v19 sourceAccuracy:{v22, 0.0}];
  v27 = [v4 dataPointCount];
  v28 = [v27 unsignedIntegerValue];
  v29 = [v4 confidence];
  [v29 doubleValue];
  v48 = [(RTLearnedLocation *)v47 initWithLocation:v26 dataPointCount:v28 confidence:?];

  v30 = [RTLearnedVisit alloc];
  v31 = [v4 identifier];
  v32 = [v4 entryDate];
  v33 = [v4 exitDate];
  v34 = [v4 creationDate];
  v35 = v34;
  if (!v34)
  {
    v35 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v36 = [v4 expirationDate];
  v37 = [v4 placeConfidence];
  [v37 doubleValue];
  v39 = v38;
  v40 = [v4 placeSource];
  v41 = -[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:](v30, "initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:", v31, v48, v32, v33, v35, v36, v39, [v40 unsignedIntegerValue]);

  if (!v34)
  {
  }

LABEL_16:

  return v41;
}

+ (id)createWithLearnedLocationOfInterestVisitMO:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  v5 = [v3 identifier];

  if (!v5)
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
  v7 = [v4 locationLatitude];
  [v7 doubleValue];
  v9 = v8;
  v10 = [v4 locationLongitude];
  [v10 doubleValue];
  v12 = v11;
  v13 = [v4 locationHorizontalUncertainty];
  [v13 doubleValue];
  v15 = v14;
  v16 = [v4 locationAltitude];
  [v16 doubleValue];
  v18 = v17;
  v19 = [v4 locationVerticalUncertainty];
  [v19 doubleValue];
  v21 = v20;
  v22 = [v4 locationReferenceFrame];
  v23 = [v22 intValue];
  v24 = [v4 locationSourceAccuracy];
  v25 = [v6 initWithLatitude:0 longitude:v23 horizontalUncertainty:objc_msgSend(v24 altitude:"intValue") verticalUncertainty:v9 date:v12 referenceFrame:v15 speed:v18 sourceAccuracy:{v21, 0.0}];

  v26 = [RTLearnedLocation alloc];
  v27 = [v4 dataPointCount];
  v28 = [v27 unsignedIntegerValue];
  v29 = [v4 confidence];
  [v29 doubleValue];
  v46 = v25;
  v47 = [(RTLearnedLocation *)v26 initWithLocation:v25 dataPointCount:v28 confidence:?];

  v30 = [RTLearnedVisit alloc];
  v31 = [v4 identifier];
  v32 = [v4 entryDate];
  v33 = [v4 exitDate];
  v34 = [v4 creationDate];
  v35 = v34;
  if (!v34)
  {
    v35 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v36 = [v4 expirationDate];
  v37 = [v4 locationOfInterestConfidence];
  [v37 doubleValue];
  v39 = v38;
  v40 = [v4 locationOfInterestSource];
  v41 = -[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:](v30, "initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:", v31, v47, v32, v33, v35, v36, v39, [v40 unsignedIntegerValue]);

  if (!v34)
  {
  }

LABEL_12:

  return v41;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTLearnedVisitMO managedObjectWithVisit:self inManagedObjectContext:a3];
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
  v5 = [RTLearnedVisitMO managedObjectWithVisit:self finerGranularityInferredMapItem:0 place:0 managedObject:v6 inManagedObjectContext:v4];
}

- (RTLearnedVisit)initWithIdentifier:(id)a3 location:(id)a4 entryDate:(id)a5 exitDate:(id)a6 creationDate:(id)a7 expirationDate:(id)a8 placeConfidence:(double)a9 placeSource:(unint64_t)a10
{
  v55 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (v17)
  {
    if (v18)
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

    if (v18)
    {
LABEL_3:
      if (v19)
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

  if (v19)
  {
LABEL_4:
    if (v20)
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

  if (v20)
  {
LABEL_5:
    if (v21)
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

  if (v21)
  {
LABEL_6:
    if (v22)
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

  if (!v22)
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
  if (a9 < 0.0 || a9 > 1.0)
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

  v30 = 0;
  if (v17 && v18 && v19 && v20 && v21 && v22)
  {
    if ([v19 compare:v20] == 1)
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v44 = [v19 stringFromDate];
        v45 = [v20 stringFromDate];
        *buf = 138413058;
        v48 = v44;
        v49 = 2112;
        v51 = 2080;
        v50 = v45;
        v52 = "[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:]";
        v53 = 1024;
        v54 = 75;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "entry, %@, postdates exit, %@ (in %s:%d)", buf, 0x26u);
      }

      v30 = 0;
    }

    else
    {
      v30 = 0;
      if (a9 >= 0.0 && a9 <= 1.0)
      {
        v46.receiver = self;
        v46.super_class = RTLearnedVisit;
        v32 = [(RTLearnedVisit *)&v46 init];
        if (v32)
        {
          v33 = [v17 copy];
          identifier = v32->_identifier;
          v32->_identifier = v33;

          objc_storeStrong(&v32->_location, a4);
          v35 = [v19 copy];
          entryDate = v32->_entryDate;
          v32->_entryDate = v35;

          v37 = [v20 copy];
          exitDate = v32->_exitDate;
          v32->_exitDate = v37;

          v39 = [v21 copy];
          creationDate = v32->_creationDate;
          v32->_creationDate = v39;

          v41 = [v22 copy];
          expirationDate = v32->_expirationDate;
          v32->_expirationDate = v41;

          v32->_placeConfidence = a9;
          v32->_placeSource = a10;
        }

        self = v32;
        v30 = self;
      }
    }
  }

  return v30;
}

- (NSString)description
{
  v17 = MEMORY[0x277CCACA8];
  v19 = [(RTLearnedVisit *)self identifier];
  v15 = [v19 UUIDString];
  v3 = [(RTLearnedVisit *)self location];
  v18 = [(RTLearnedVisit *)self entryDate];
  v4 = [v18 stringFromDate];
  v16 = [(RTLearnedVisit *)self exitDate];
  v5 = [v16 stringFromDate];
  v6 = [(RTLearnedVisit *)self creationDate];
  v7 = [v6 stringFromDate];
  v8 = [(RTLearnedVisit *)self expirationDate];
  v9 = [v8 stringFromDate];
  [(RTLearnedVisit *)self placeConfidence];
  v11 = v10;
  v12 = [MEMORY[0x277D011A0] sourceToString:{-[RTLearnedVisit placeSource](self, "placeSource")}];
  v13 = [v17 stringWithFormat:@"identifier, %@, location, %@, entryDate, %@, exitDate, %@, creationDate, %@, expirationDate, %@, placeConfidence, %.3f, placeSource, %@", v15, v3, v4, v5, v7, v9, v11, v12];

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
        v9 = [(RTLearnedVisit *)self identifier];
        if (v9 || ([(RTLearnedVisit *)v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v4 = [(RTLearnedVisit *)self identifier];
          v10 = [(RTLearnedVisit *)v8 identifier];
          v11 = [v4 isEqual:v10];

          if (v9)
          {
LABEL_12:

            v13 = [(RTLearnedVisit *)self expirationDate];
            if (v13 || ([(RTLearnedVisit *)v8 expirationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v14 = [(RTLearnedVisit *)self expirationDate];
              v15 = [(RTLearnedVisit *)v8 expirationDate];
              v16 = [v14 isEqual:v15];

              if (v13)
              {
LABEL_18:

                v17 = [(RTLearnedVisit *)self creationDate];
                if (v17 || ([(RTLearnedVisit *)v8 creationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v18 = [(RTLearnedVisit *)self creationDate];
                  v19 = [(RTLearnedVisit *)v8 creationDate];
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
  v3 = [(RTLearnedVisit *)self identifier];
  v4 = [v3 hash];
  v5 = [(RTLearnedVisit *)self expirationDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(RTLearnedVisit *)self creationDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end