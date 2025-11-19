@interface RTLearnedLocationOfInterest
+ (id)createWithLearnedLocationOfInterestMO:(id)a3 includeVisits:(BOOL)a4 includeTransitions:(BOOL)a5;
+ (id)createWithLearnedLocationOfInterestVisitMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithManagedObject:(id)a3 includeVisits:(BOOL)a4 includeTransitions:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RTLearnedLocationOfInterest)initWithIdentifier:(id)a3 location:(id)a4 place:(id)a5 visits:(id)a6 transitions:(id)a7;
- (RTLearnedLocationOfInterest)initWithLocationOfInterest:(id)a3 creationDate:(id)a4;
- (double)dwellTime;
- (id)filterWithDateInterval:(id)a3;
- (id)managedObjectWithContext:(id)a3;
- (unint64_t)hash;
- (void)updateManagedObject:(id)a3;
@end

@implementation RTLearnedLocationOfInterest

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
      v5 = [objc_opt_class() createWithLearnedLocationOfInterestMO:v4 includeVisits:1 includeTransitions:1];
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
      v12 = "+[RTLearnedLocationOfInterest(RTCoreDataTransformable) createWithManagedObject:]";
      v13 = 1024;
      v14 = 52;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLearnedLocationOfInterest+CoreDataReadable (in %s:%d)", &v9, 0x1Cu);
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

+ (id)createWithManagedObject:(id)a3 includeVisits:(BOOL)a4 includeTransitions:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [objc_opt_class() createWithLearnedLocationOfInterestMO:v8 includeVisits:v6 includeTransitions:v5];

      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
      v9 = [objc_opt_class() createWithLearnedLocationOfInterestVisitMO:v10];

      goto LABEL_10;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 2080;
      v16 = "+[RTLearnedLocationOfInterest(RTCoreDataTransformable) createWithManagedObject:includeVisits:includeTransitions:]";
      v17 = 1024;
      v18 = 75;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLearnedLocationOfInterest+CoreDataReadable (in %s:%d)", &v13, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)createWithLearnedLocationOfInterestMO:(id)a3 includeVisits:(BOOL)a4 includeTransitions:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v126 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 identifier];

  if (!v8)
  {
    v85 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
LABEL_43:
      v87 = 0;
      goto LABEL_49;
    }

    *buf = 0;
    v86 = "Invalid parameter not satisfying: learnedLocationOfInterestMO.identifier";
LABEL_53:
    _os_log_error_impl(&dword_2304B3000, v85, OS_LOG_TYPE_ERROR, v86, buf, 2u);
    goto LABEL_43;
  }

  v9 = [v7 placeIdentifier];

  if (!v9)
  {
    v85 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v86 = "Invalid parameter not satisfying: learnedLocationOfInterestMO.placeIdentifier";
    goto LABEL_53;
  }

  v100 = v6;
  v99 = v5;
  v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  v11 = os_signpost_id_generate(v10);

  v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  v13 = v12;
  v97 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "createWithLearnedLocationOfInterestMO:includeVisits:includeTransitions", " enableTelemetry=YES ", buf, 2u);
  }

  spid = v11;

  v95 = [RTLearnedLocation alloc];
  v14 = objc_alloc(MEMORY[0x277D01160]);
  v102 = [v7 locationLatitude];
  [v102 doubleValue];
  v16 = v15;
  [v7 locationLongitude];
  v17 = v98 = v7;
  [v17 doubleValue];
  v19 = v18;
  v20 = [v98 locationHorizontalUncertainty];
  [v20 doubleValue];
  v22 = v21;
  v23 = [v98 locationAltitude];
  [v23 doubleValue];
  v25 = v24;
  v26 = [v98 locationVerticalUncertainty];
  [v26 doubleValue];
  v28 = v27;
  v29 = [v98 locationReferenceFrame];
  v30 = [v29 intValue];
  v31 = [v98 locationSourceAccuracy];
  v32 = [v14 initWithLatitude:0 longitude:v30 horizontalUncertainty:objc_msgSend(v31 altitude:"intValue") verticalUncertainty:v16 date:v19 referenceFrame:v22 speed:v25 sourceAccuracy:{v28, 0.0}];
  v33 = [v98 dataPointCount];
  v34 = [v33 unsignedIntegerValue];
  v35 = [v98 confidence];
  [v35 doubleValue];
  v96 = [(RTLearnedLocation *)v95 initWithLocation:v32 dataPointCount:v34 confidence:?];

  v7 = v98;
  v36 = [RTLearnedPlace createWithManagedObject:v98];
  v103 = 0;
  v94 = v36;
  if (v100)
  {
    v37 = MEMORY[0x277CBEB18];
    v38 = [v98 visits];
    v103 = [v37 arrayWithCapacity:{objc_msgSend(v38, "count")}];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v39 = [v98 visits];
    v40 = [v39 countByEnumeratingWithState:&v108 objects:v125 count:16];
    if (!v40)
    {
      goto LABEL_22;
    }

    v41 = v40;
    v42 = *v109;
    while (1)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v109 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v108 + 1) + 8 * i);
        v45 = [v44 entryDate];
        if (v45)
        {
          v46 = v45;
          v47 = [v44 exitDate];
          if (v47)
          {
            v48 = v47;
            v49 = [v44 entryDate];
            v50 = [v44 exitDate];
            v51 = [v49 compare:v50];

            if (v51 != 1)
            {
              v52 = [RTLearnedVisit createWithManagedObject:v44];
              if (v52)
              {
                [v103 addObject:v52];
              }

              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [v44 identifier];
          v54 = [v44 entryDate];
          v55 = [v54 stringFromDate];
          v56 = [v44 exitDate];
          v57 = [v56 stringFromDate];
          *buf = 138740995;
          v116 = v53;
          v117 = 2112;
          v118 = v55;
          v119 = 2112;
          v120 = v57;
          v121 = 2080;
          v122 = "+[RTLearnedLocationOfInterest(RTCoreDataTransformable) createWithLearnedLocationOfInterestMO:includeVisits:includeTransitions:]";
          v123 = 1024;
          v124 = 116;
          _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
        }

LABEL_20:
      }

      v41 = [v39 countByEnumeratingWithState:&v108 objects:v125 count:16];
      if (!v41)
      {
LABEL_22:

        v58 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
        v114 = v58;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
        [v103 sortUsingDescriptors:v59];

        v7 = v98;
        v36 = v94;
        break;
      }
    }
  }

  if (!v99)
  {
    v83 = 0;
    v85 = v96;
    v84 = v97;
    goto LABEL_45;
  }

  v60 = MEMORY[0x277CBEB18];
  v61 = [v7 transitions];
  v101 = [v60 arrayWithCapacity:{objc_msgSend(v61, "count")}];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v62 = [v7 transitions];
  v63 = [v62 countByEnumeratingWithState:&v104 objects:v113 count:16];
  if (!v63)
  {
    goto LABEL_39;
  }

  v64 = v63;
  v65 = *v105;
  do
  {
    for (j = 0; j != v64; ++j)
    {
      if (*v105 != v65)
      {
        objc_enumerationMutation(v62);
      }

      v67 = *(*(&v104 + 1) + 8 * j);
      v68 = [v67 startDate];
      if (v68)
      {
        v69 = v68;
        v70 = [v67 stopDate];
        if (v70)
        {
          v71 = v70;
          v72 = [v67 startDate];
          v73 = [v67 stopDate];
          v74 = [v72 compare:v73];

          if (v74 != 1)
          {
            v75 = [RTLearnedTransition createWithManagedObject:v67];
            if (v75)
            {
              [v101 addObject:v75];
            }

            goto LABEL_37;
          }
        }

        else
        {
        }
      }

      v75 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = [v67 identifier];
        v77 = [v67 startDate];
        v78 = [v77 stringFromDate];
        v79 = [v67 stopDate];
        v80 = [v79 stringFromDate];
        *buf = 138413314;
        v116 = v76;
        v117 = 2112;
        v118 = v78;
        v119 = 2112;
        v120 = v80;
        v121 = 2080;
        v122 = "+[RTLearnedLocationOfInterest(RTCoreDataTransformable) createWithLearnedLocationOfInterestMO:includeVisits:includeTransitions:]";
        v123 = 1024;
        v124 = 142;
        _os_log_error_impl(&dword_2304B3000, v75, OS_LOG_TYPE_ERROR, "location of interest transition, %@, has one or more malformed dates, start, %@, stop, %@ (in %s:%d)", buf, 0x30u);
      }

LABEL_37:
    }

    v64 = [v62 countByEnumeratingWithState:&v104 objects:v113 count:16];
  }

  while (v64);
LABEL_39:

  v81 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v112 = v81;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
  v83 = v101;
  [v101 sortUsingDescriptors:v82];

  v84 = v97;
  v7 = v98;
  v36 = v94;
  v85 = v96;
LABEL_45:
  v88 = [RTLearnedLocationOfInterest alloc];
  v89 = [v7 identifier];
  v87 = [(RTLearnedLocationOfInterest *)v88 initWithIdentifier:v89 location:v85 place:v36 visits:v103 transitions:v83];

  v90 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  v91 = v90;
  if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v91, OS_SIGNPOST_INTERVAL_END, spid, "createWithLearnedLocationOfInterestMO:includeVisits:includeTransitions", " enableTelemetry=YES ", buf, 2u);
  }

LABEL_49:

  return v87;
}

+ (id)createWithLearnedLocationOfInterestVisitMO:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v35 = 0;
      goto LABEL_23;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: visitMO";
LABEL_27:
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_10;
  }

  v5 = [v3 identifier];

  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: visitMO.identifier";
    goto LABEL_27;
  }

  v6 = [v4 locationOfInterest];
  v7 = [v6 identifier];

  if (v7)
  {
    v38 = [RTLearnedLocation alloc];
    v8 = objc_alloc(MEMORY[0x277D01160]);
    v42 = [v6 locationLatitude];
    [v42 doubleValue];
    v10 = v9;
    v41 = [v6 locationLongitude];
    [v41 doubleValue];
    v12 = v11;
    v40 = [v6 locationHorizontalUncertainty];
    [v40 doubleValue];
    v14 = v13;
    v15 = [v6 locationAltitude];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v6 locationVerticalUncertainty];
    [v18 doubleValue];
    v20 = v19;
    v21 = [v6 locationReferenceFrame];
    v22 = [v21 intValue];
    v23 = [v6 locationSourceAccuracy];
    v24 = [v8 initWithLatitude:0 longitude:v22 horizontalUncertainty:objc_msgSend(v23 altitude:"intValue") verticalUncertainty:v10 date:v12 referenceFrame:v14 speed:v17 sourceAccuracy:{v20, 0.0}];
    v25 = [v6 dataPointCount];
    v26 = [v25 unsignedIntegerValue];
    v27 = [v6 confidence];
    [v27 doubleValue];
    v39 = [(RTLearnedLocation *)v38 initWithLocation:v24 dataPointCount:v26 confidence:?];

    v28 = [RTLearnedPlace createWithManagedObject:v6];
    if (v28)
    {
      v29 = [RTLearnedVisit createWithManagedObject:v4];
      if (v29)
      {
        v30 = [RTLearnedLocationOfInterest alloc];
        v31 = [v6 identifier];
        v44[0] = v29;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
        v33 = v30;
        v34 = v39;
        v35 = [(RTLearnedLocationOfInterest *)v33 initWithIdentifier:v31 location:v39 place:v28 visits:v32 transitions:0];
      }

      else
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
        }

        v35 = 0;
        v34 = v39;
      }
    }

    else
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedPlace", buf, 2u);
      }

      v35 = 0;
      v34 = v39;
    }
  }

  else
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationOfInterestMO.identifier", buf, 2u);
    }

    v35 = 0;
  }

LABEL_23:

  return v35;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTLearnedLocationOfInterestMO managedObjectWithLocationOfInterest:self inManagedObjectContext:a3];
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
  v5 = [RTLearnedLocationOfInterestMO managedObjectWithLocationOfInterest:self managedObject:v6 inManagedObjectContext:v4];
}

- (RTLearnedLocationOfInterest)initWithLocationOfInterest:(id)a3 creationDate:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v33 = [[RTLearnedLocation alloc] initWithLocationOfInterest:v5];
  v32 = [v5 mapItem];
  v7 = MEMORY[0x277CBEB18];
  v8 = [v5 visits];
  v35 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v5 visits];
  v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [v5 visits];
        v16 = [v15 count] > 1;

        v17 = [v14 exitDate];
        v18 = [v17 dateByAddingTimeInterval:dbl_230AFE560[v16]];

        if (!v11 || [v11 compare:v18] == -1)
        {
          v19 = v18;

          v11 = v19;
        }

        v20 = [[RTLearnedVisit alloc] initWithVisit:v14 locationOfInterest:v5 creationDate:v6 expirationDate:v18];
        if (v20)
        {
          [v35 addObject:v20];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v21 = [v6 dateByAddingTimeInterval:4838400.0];
  v22 = [RTLearnedPlace alloc];
  v23 = [v5 identifier];
  v24 = +[RTLearnedPlace placeTypeFromType:](RTLearnedPlace, "placeTypeFromType:", [v5 type]);
  v25 = +[RTLearnedPlace placeTypeSourceFromTypeSource:](RTLearnedPlace, "placeTypeSourceFromTypeSource:", [v5 typeSource]);
  v26 = [v5 customLabel];
  v27 = [(RTLearnedPlace *)v22 initWithIdentifier:v23 type:v24 typeSource:v25 mapItem:v32 customLabel:v26 creationDate:v6 expirationDate:v21];

  v28 = [v5 identifier];
  v29 = [(RTLearnedLocationOfInterest *)self initWithIdentifier:v28 location:v33 place:v27 visits:v35 transitions:MEMORY[0x277CBEBF8]];

  return v29;
}

- (RTLearnedLocationOfInterest)initWithIdentifier:(id)a3 location:(id)a4 place:(id)a5 visits:(id)a6 transitions:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24 = a6;
  v15 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_12:
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTLearnedLocationOfInterest initWithIdentifier:location:place:visits:transitions:]";
      v28 = 1024;
      v29 = 31;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", buf, 0x12u);
    }

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "[RTLearnedLocationOfInterest initWithIdentifier:location:place:visits:transitions:]";
    v28 = 1024;
    v29 = 30;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
  }

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v14)
  {
LABEL_4:
    v16 = 0;
    if (v12 && v13)
    {
      v25.receiver = self;
      v25.super_class = RTLearnedLocationOfInterest;
      v17 = [(RTLearnedLocationOfInterest *)&v25 init];
      if (v17)
      {
        v18 = [v12 copy];
        identifier = v17->_identifier;
        v17->_identifier = v18;

        objc_storeStrong(&v17->_location, a4);
        objc_storeStrong(&v17->_place, a5);
        objc_storeStrong(&v17->_visits, a6);
        objc_storeStrong(&v17->_transitions, a7);
      }

      self = v17;
      v16 = self;
    }

    goto LABEL_18;
  }

LABEL_15:
  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "[RTLearnedLocationOfInterest initWithIdentifier:location:place:visits:transitions:]";
    v28 = 1024;
    v29 = 32;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place (in %s:%d)", buf, 0x12u);
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (id)filterWithDateInterval:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v57 = a3;
  if (v57)
  {
    v56 = [MEMORY[0x277CBEB18] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v54 = self;
    v4 = [(RTLearnedLocationOfInterest *)self visits];
    v5 = [v4 countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    v7 = *v63;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        v10 = [v9 entryDate];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 exitDate];
          if (v12)
          {
            v13 = v12;
            v14 = [v9 exitDate];
            v15 = [v9 entryDate];
            v16 = [v14 isOnOrBefore:v15];

            if (!v16)
            {
              v17 = objc_alloc(MEMORY[0x277CCA970]);
              v18 = [v9 entryDate];
              v19 = [v9 exitDate];
              v20 = [v17 initWithStartDate:v18 endDate:v19];

              if ([v20 intersectsDateInterval:v57])
              {
                [v56 addObject:v9];
              }

              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v9 identifier];
          v22 = [v9 entryDate];
          v23 = [v22 stringFromDate];
          v24 = [v9 exitDate];
          v25 = [v24 stringFromDate];
          *buf = 138740995;
          v68 = v21;
          v69 = 2112;
          v70 = v23;
          v71 = 2112;
          v72 = v25;
          v73 = 2080;
          v74 = "[RTLearnedLocationOfInterest filterWithDateInterval:]";
          v75 = 1024;
          v76 = 66;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
        }

LABEL_15:
      }

      v6 = [v4 countByEnumeratingWithState:&v62 objects:v77 count:16];
      if (!v6)
      {
LABEL_17:

        v55 = [MEMORY[0x277CBEB18] array];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v26 = [(RTLearnedLocationOfInterest *)v54 transitions];
        v27 = [v26 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (!v27)
        {
          goto LABEL_32;
        }

        v28 = v27;
        v29 = *v59;
        while (1)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v58 + 1) + 8 * j);
            v32 = [v31 startDate];
            if (v32)
            {
              v33 = v32;
              v34 = [v31 stopDate];
              if (v34)
              {
                v35 = v34;
                v36 = [v31 stopDate];
                v37 = [v31 startDate];
                v38 = [v36 isOnOrBefore:v37];

                if (!v38)
                {
                  v39 = objc_alloc(MEMORY[0x277CCA970]);
                  v40 = [v31 startDate];
                  v41 = [v31 stopDate];
                  v42 = [v39 initWithStartDate:v40 endDate:v41];

                  if ([v42 intersectsDateInterval:v57])
                  {
                    [v55 addObject:v31];
                  }

                  goto LABEL_30;
                }
              }

              else
              {
              }
            }

            v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = [v31 identifier];
              v44 = [v31 startDate];
              v45 = [v44 stringFromDate];
              v46 = [v31 stopDate];
              v47 = [v46 stringFromDate];
              *buf = 138413314;
              v68 = v43;
              v69 = 2112;
              v70 = v45;
              v71 = 2112;
              v72 = v47;
              v73 = 2080;
              v74 = "[RTLearnedLocationOfInterest filterWithDateInterval:]";
              v75 = 1024;
              v76 = 88;
              _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "location of interest transition, %@, has one or more malformed dates, start, %@, stop, %@ (in %s:%d)", buf, 0x30u);
            }

LABEL_30:
          }

          v28 = [v26 countByEnumeratingWithState:&v58 objects:v66 count:16];
          if (!v28)
          {
LABEL_32:

            v48 = [RTLearnedLocationOfInterest alloc];
            v49 = [(RTLearnedLocationOfInterest *)v54 identifier];
            v50 = [(RTLearnedLocationOfInterest *)v54 location];
            v51 = [(RTLearnedLocationOfInterest *)v54 place];
            v52 = [(RTLearnedLocationOfInterest *)v48 initWithIdentifier:v49 location:v50 place:v51 visits:v56 transitions:v55];

            goto LABEL_34;
          }
        }
      }
    }
  }

  v52 = self;
LABEL_34:

  return v52;
}

- (double)dwellTime
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [(RTLearnedLocationOfInterest *)self visits];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v27;
    v7 = 0.0;
    *&v4 = 138740995;
    v25 = v4;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 entryDate];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 exitDate];
          if (v12)
          {
            v13 = v12;
            v14 = [v9 exitDate];
            v15 = [v9 entryDate];
            v16 = [v14 isOnOrBefore:v15];

            if (!v16)
            {
              [v9 duration];
              v7 = v7 + v17;
              continue;
            }
          }

          else
          {
          }
        }

        v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v9 identifier];
          v20 = [v9 entryDate];
          v21 = [v20 stringFromDate];
          v22 = [v9 exitDate];
          v23 = [v22 stringFromDate];
          *buf = v25;
          v31 = v19;
          v32 = 2112;
          v33 = v21;
          v34 = 2112;
          v35 = v23;
          v36 = 2080;
          v37 = "[RTLearnedLocationOfInterest dwellTime]";
          v38 = 1024;
          v39 = 119;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v26 objects:v40 count:16];
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  v7 = 0.0;
LABEL_18:

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTLearnedLocationOfInterest *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(RTLearnedLocationOfInterest *)self location];
  v7 = [(RTLearnedLocationOfInterest *)self place];
  v8 = [(RTLearnedLocationOfInterest *)self visits];
  v9 = [v8 count];
  v10 = [(RTLearnedLocationOfInterest *)self transitions];
  v11 = [v3 stringWithFormat:@"identifier, %@, location, %@, place, %@, visits, %lu, transitions, %lu", v5, v6, v7, v9, objc_msgSend(v10, "count")];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(RTLearnedLocationOfInterest *)self identifier];
        if (v8 || ([(RTLearnedLocationOfInterest *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(RTLearnedLocationOfInterest *)self identifier];
          v10 = [(RTLearnedLocationOfInterest *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(RTLearnedLocationOfInterest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end