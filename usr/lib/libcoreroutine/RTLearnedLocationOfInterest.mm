@interface RTLearnedLocationOfInterest
+ (id)createWithLearnedLocationOfInterestMO:(id)o includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions;
+ (id)createWithLearnedLocationOfInterestVisitMO:(id)o;
+ (id)createWithManagedObject:(id)object;
+ (id)createWithManagedObject:(id)object includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RTLearnedLocationOfInterest)initWithIdentifier:(id)identifier location:(id)location place:(id)place visits:(id)visits transitions:(id)transitions;
- (RTLearnedLocationOfInterest)initWithLocationOfInterest:(id)interest creationDate:(id)date;
- (double)dwellTime;
- (id)filterWithDateInterval:(id)interval;
- (id)managedObjectWithContext:(id)context;
- (unint64_t)hash;
- (void)updateManagedObject:(id)object;
@end

@implementation RTLearnedLocationOfInterest

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
      v5 = [objc_opt_class() createWithLearnedLocationOfInterestMO:v4 includeVisits:1 includeTransitions:1];
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

+ (id)createWithManagedObject:(id)object includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  visitsCopy = visits;
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      v9 = [objc_opt_class() createWithLearnedLocationOfInterestMO:v8 includeVisits:visitsCopy includeTransitions:transitionsCopy];

      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objectCopy;
      v9 = [objc_opt_class() createWithLearnedLocationOfInterestVisitMO:v10];

      goto LABEL_10;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = objectCopy;
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

+ (id)createWithLearnedLocationOfInterestMO:(id)o includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  visitsCopy = visits;
  v126 = *MEMORY[0x277D85DE8];
  oCopy = o;
  identifier = [oCopy identifier];

  if (!identifier)
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

  placeIdentifier = [oCopy placeIdentifier];

  if (!placeIdentifier)
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

  v100 = visitsCopy;
  v99 = transitionsCopy;
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
  locationLatitude = [oCopy locationLatitude];
  [locationLatitude doubleValue];
  v16 = v15;
  [oCopy locationLongitude];
  v17 = v98 = oCopy;
  [v17 doubleValue];
  v19 = v18;
  locationHorizontalUncertainty = [v98 locationHorizontalUncertainty];
  [locationHorizontalUncertainty doubleValue];
  v22 = v21;
  locationAltitude = [v98 locationAltitude];
  [locationAltitude doubleValue];
  v25 = v24;
  locationVerticalUncertainty = [v98 locationVerticalUncertainty];
  [locationVerticalUncertainty doubleValue];
  v28 = v27;
  locationReferenceFrame = [v98 locationReferenceFrame];
  intValue = [locationReferenceFrame intValue];
  locationSourceAccuracy = [v98 locationSourceAccuracy];
  v32 = [v14 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v16 date:v19 referenceFrame:v22 speed:v25 sourceAccuracy:{v28, 0.0}];
  dataPointCount = [v98 dataPointCount];
  unsignedIntegerValue = [dataPointCount unsignedIntegerValue];
  confidence = [v98 confidence];
  [confidence doubleValue];
  v96 = [(RTLearnedLocation *)v95 initWithLocation:v32 dataPointCount:unsignedIntegerValue confidence:?];

  oCopy = v98;
  v36 = [RTLearnedPlace createWithManagedObject:v98];
  v103 = 0;
  v94 = v36;
  if (v100)
  {
    v37 = MEMORY[0x277CBEB18];
    visits = [v98 visits];
    v103 = [v37 arrayWithCapacity:{objc_msgSend(visits, "count")}];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    visits2 = [v98 visits];
    v40 = [visits2 countByEnumeratingWithState:&v108 objects:v125 count:16];
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
          objc_enumerationMutation(visits2);
        }

        v44 = *(*(&v108 + 1) + 8 * i);
        entryDate = [v44 entryDate];
        if (entryDate)
        {
          v46 = entryDate;
          exitDate = [v44 exitDate];
          if (exitDate)
          {
            v48 = exitDate;
            entryDate2 = [v44 entryDate];
            exitDate2 = [v44 exitDate];
            v51 = [entryDate2 compare:exitDate2];

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
          identifier2 = [v44 identifier];
          entryDate3 = [v44 entryDate];
          stringFromDate = [entryDate3 stringFromDate];
          exitDate3 = [v44 exitDate];
          stringFromDate2 = [exitDate3 stringFromDate];
          *buf = 138740995;
          v116 = identifier2;
          v117 = 2112;
          v118 = stringFromDate;
          v119 = 2112;
          v120 = stringFromDate2;
          v121 = 2080;
          v122 = "+[RTLearnedLocationOfInterest(RTCoreDataTransformable) createWithLearnedLocationOfInterestMO:includeVisits:includeTransitions:]";
          v123 = 1024;
          v124 = 116;
          _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
        }

LABEL_20:
      }

      v41 = [visits2 countByEnumeratingWithState:&v108 objects:v125 count:16];
      if (!v41)
      {
LABEL_22:

        v58 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
        v114 = v58;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
        [v103 sortUsingDescriptors:v59];

        oCopy = v98;
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
  transitions = [oCopy transitions];
  v101 = [v60 arrayWithCapacity:{objc_msgSend(transitions, "count")}];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  transitions2 = [oCopy transitions];
  v63 = [transitions2 countByEnumeratingWithState:&v104 objects:v113 count:16];
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
        objc_enumerationMutation(transitions2);
      }

      v67 = *(*(&v104 + 1) + 8 * j);
      startDate = [v67 startDate];
      if (startDate)
      {
        v69 = startDate;
        stopDate = [v67 stopDate];
        if (stopDate)
        {
          v71 = stopDate;
          startDate2 = [v67 startDate];
          stopDate2 = [v67 stopDate];
          v74 = [startDate2 compare:stopDate2];

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
        identifier3 = [v67 identifier];
        startDate3 = [v67 startDate];
        stringFromDate3 = [startDate3 stringFromDate];
        stopDate3 = [v67 stopDate];
        stringFromDate4 = [stopDate3 stringFromDate];
        *buf = 138413314;
        v116 = identifier3;
        v117 = 2112;
        v118 = stringFromDate3;
        v119 = 2112;
        v120 = stringFromDate4;
        v121 = 2080;
        v122 = "+[RTLearnedLocationOfInterest(RTCoreDataTransformable) createWithLearnedLocationOfInterestMO:includeVisits:includeTransitions:]";
        v123 = 1024;
        v124 = 142;
        _os_log_error_impl(&dword_2304B3000, v75, OS_LOG_TYPE_ERROR, "location of interest transition, %@, has one or more malformed dates, start, %@, stop, %@ (in %s:%d)", buf, 0x30u);
      }

LABEL_37:
    }

    v64 = [transitions2 countByEnumeratingWithState:&v104 objects:v113 count:16];
  }

  while (v64);
LABEL_39:

  v81 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v112 = v81;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
  v83 = v101;
  [v101 sortUsingDescriptors:v82];

  v84 = v97;
  oCopy = v98;
  v36 = v94;
  v85 = v96;
LABEL_45:
  v88 = [RTLearnedLocationOfInterest alloc];
  identifier4 = [oCopy identifier];
  v87 = [(RTLearnedLocationOfInterest *)v88 initWithIdentifier:identifier4 location:v85 place:v36 visits:v103 transitions:v83];

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

+ (id)createWithLearnedLocationOfInterestVisitMO:(id)o
{
  v44[1] = *MEMORY[0x277D85DE8];
  oCopy = o;
  v4 = oCopy;
  if (!oCopy)
  {
    locationOfInterest = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(locationOfInterest, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v35 = 0;
      goto LABEL_23;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: visitMO";
LABEL_27:
    _os_log_error_impl(&dword_2304B3000, locationOfInterest, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_10;
  }

  identifier = [oCopy identifier];

  if (!identifier)
  {
    locationOfInterest = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(locationOfInterest, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v36 = "Invalid parameter not satisfying: visitMO.identifier";
    goto LABEL_27;
  }

  locationOfInterest = [v4 locationOfInterest];
  identifier2 = [locationOfInterest identifier];

  if (identifier2)
  {
    v38 = [RTLearnedLocation alloc];
    v8 = objc_alloc(MEMORY[0x277D01160]);
    locationLatitude = [locationOfInterest locationLatitude];
    [locationLatitude doubleValue];
    v10 = v9;
    locationLongitude = [locationOfInterest locationLongitude];
    [locationLongitude doubleValue];
    v12 = v11;
    locationHorizontalUncertainty = [locationOfInterest locationHorizontalUncertainty];
    [locationHorizontalUncertainty doubleValue];
    v14 = v13;
    locationAltitude = [locationOfInterest locationAltitude];
    [locationAltitude doubleValue];
    v17 = v16;
    locationVerticalUncertainty = [locationOfInterest locationVerticalUncertainty];
    [locationVerticalUncertainty doubleValue];
    v20 = v19;
    locationReferenceFrame = [locationOfInterest locationReferenceFrame];
    intValue = [locationReferenceFrame intValue];
    locationSourceAccuracy = [locationOfInterest locationSourceAccuracy];
    v24 = [v8 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v10 date:v12 referenceFrame:v14 speed:v17 sourceAccuracy:{v20, 0.0}];
    dataPointCount = [locationOfInterest dataPointCount];
    unsignedIntegerValue = [dataPointCount unsignedIntegerValue];
    confidence = [locationOfInterest confidence];
    [confidence doubleValue];
    v39 = [(RTLearnedLocation *)v38 initWithLocation:v24 dataPointCount:unsignedIntegerValue confidence:?];

    v28 = [RTLearnedPlace createWithManagedObject:locationOfInterest];
    if (v28)
    {
      v29 = [RTLearnedVisit createWithManagedObject:v4];
      if (v29)
      {
        v30 = [RTLearnedLocationOfInterest alloc];
        identifier3 = [locationOfInterest identifier];
        v44[0] = v29;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
        v33 = v30;
        v34 = v39;
        v35 = [(RTLearnedLocationOfInterest *)v33 initWithIdentifier:identifier3 location:v39 place:v28 visits:v32 transitions:0];
      }

      else
      {
        identifier3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(identifier3, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, identifier3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
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

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTLearnedLocationOfInterestMO managedObjectWithLocationOfInterest:self inManagedObjectContext:context];
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
  v5 = [RTLearnedLocationOfInterestMO managedObjectWithLocationOfInterest:self managedObject:objectCopy inManagedObjectContext:managedObjectContext];
}

- (RTLearnedLocationOfInterest)initWithLocationOfInterest:(id)interest creationDate:(id)date
{
  v41 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  dateCopy = date;
  v33 = [[RTLearnedLocation alloc] initWithLocationOfInterest:interestCopy];
  mapItem = [interestCopy mapItem];
  v7 = MEMORY[0x277CBEB18];
  visits = [interestCopy visits];
  v35 = [v7 arrayWithCapacity:{objc_msgSend(visits, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [interestCopy visits];
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
        visits2 = [interestCopy visits];
        v16 = [visits2 count] > 1;

        exitDate = [v14 exitDate];
        v18 = [exitDate dateByAddingTimeInterval:dbl_230AFE560[v16]];

        if (!v11 || [v11 compare:v18] == -1)
        {
          v19 = v18;

          v11 = v19;
        }

        v20 = [[RTLearnedVisit alloc] initWithVisit:v14 locationOfInterest:interestCopy creationDate:dateCopy expirationDate:v18];
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

  v21 = [dateCopy dateByAddingTimeInterval:4838400.0];
  v22 = [RTLearnedPlace alloc];
  identifier = [interestCopy identifier];
  v24 = +[RTLearnedPlace placeTypeFromType:](RTLearnedPlace, "placeTypeFromType:", [interestCopy type]);
  v25 = +[RTLearnedPlace placeTypeSourceFromTypeSource:](RTLearnedPlace, "placeTypeSourceFromTypeSource:", [interestCopy typeSource]);
  customLabel = [interestCopy customLabel];
  v27 = [(RTLearnedPlace *)v22 initWithIdentifier:identifier type:v24 typeSource:v25 mapItem:mapItem customLabel:customLabel creationDate:dateCopy expirationDate:v21];

  identifier2 = [interestCopy identifier];
  v29 = [(RTLearnedLocationOfInterest *)self initWithIdentifier:identifier2 location:v33 place:v27 visits:v35 transitions:MEMORY[0x277CBEBF8]];

  return v29;
}

- (RTLearnedLocationOfInterest)initWithIdentifier:(id)identifier location:(id)location place:(id)place visits:(id)visits transitions:(id)transitions
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  locationCopy = location;
  placeCopy = place;
  visitsCopy = visits;
  transitionsCopy = transitions;
  if (identifierCopy)
  {
    if (locationCopy)
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

    if (placeCopy)
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

  if (!locationCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (placeCopy)
  {
LABEL_4:
    selfCopy = 0;
    if (identifierCopy && locationCopy)
    {
      v25.receiver = self;
      v25.super_class = RTLearnedLocationOfInterest;
      v17 = [(RTLearnedLocationOfInterest *)&v25 init];
      if (v17)
      {
        v18 = [identifierCopy copy];
        identifier = v17->_identifier;
        v17->_identifier = v18;

        objc_storeStrong(&v17->_location, location);
        objc_storeStrong(&v17->_place, place);
        objc_storeStrong(&v17->_visits, visits);
        objc_storeStrong(&v17->_transitions, transitions);
      }

      self = v17;
      selfCopy = self;
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

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (id)filterWithDateInterval:(id)interval
{
  v78 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (intervalCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    selfCopy = self;
    visits = [(RTLearnedLocationOfInterest *)self visits];
    v5 = [visits countByEnumeratingWithState:&v62 objects:v77 count:16];
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
          objc_enumerationMutation(visits);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        entryDate = [v9 entryDate];
        if (entryDate)
        {
          v11 = entryDate;
          exitDate = [v9 exitDate];
          if (exitDate)
          {
            v13 = exitDate;
            exitDate2 = [v9 exitDate];
            entryDate2 = [v9 entryDate];
            v16 = [exitDate2 isOnOrBefore:entryDate2];

            if (!v16)
            {
              v17 = objc_alloc(MEMORY[0x277CCA970]);
              entryDate3 = [v9 entryDate];
              exitDate3 = [v9 exitDate];
              v20 = [v17 initWithStartDate:entryDate3 endDate:exitDate3];

              if ([v20 intersectsDateInterval:intervalCopy])
              {
                [array addObject:v9];
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
          identifier = [v9 identifier];
          entryDate4 = [v9 entryDate];
          stringFromDate = [entryDate4 stringFromDate];
          exitDate4 = [v9 exitDate];
          stringFromDate2 = [exitDate4 stringFromDate];
          *buf = 138740995;
          v68 = identifier;
          v69 = 2112;
          v70 = stringFromDate;
          v71 = 2112;
          v72 = stringFromDate2;
          v73 = 2080;
          v74 = "[RTLearnedLocationOfInterest filterWithDateInterval:]";
          v75 = 1024;
          v76 = 66;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
        }

LABEL_15:
      }

      v6 = [visits countByEnumeratingWithState:&v62 objects:v77 count:16];
      if (!v6)
      {
LABEL_17:

        array2 = [MEMORY[0x277CBEB18] array];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        transitions = [(RTLearnedLocationOfInterest *)selfCopy transitions];
        v27 = [transitions countByEnumeratingWithState:&v58 objects:v66 count:16];
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
              objc_enumerationMutation(transitions);
            }

            v31 = *(*(&v58 + 1) + 8 * j);
            startDate = [v31 startDate];
            if (startDate)
            {
              v33 = startDate;
              stopDate = [v31 stopDate];
              if (stopDate)
              {
                v35 = stopDate;
                stopDate2 = [v31 stopDate];
                startDate2 = [v31 startDate];
                v38 = [stopDate2 isOnOrBefore:startDate2];

                if (!v38)
                {
                  v39 = objc_alloc(MEMORY[0x277CCA970]);
                  startDate3 = [v31 startDate];
                  stopDate3 = [v31 stopDate];
                  v42 = [v39 initWithStartDate:startDate3 endDate:stopDate3];

                  if ([v42 intersectsDateInterval:intervalCopy])
                  {
                    [array2 addObject:v31];
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
              identifier2 = [v31 identifier];
              startDate4 = [v31 startDate];
              stringFromDate3 = [startDate4 stringFromDate];
              stopDate4 = [v31 stopDate];
              stringFromDate4 = [stopDate4 stringFromDate];
              *buf = 138413314;
              v68 = identifier2;
              v69 = 2112;
              v70 = stringFromDate3;
              v71 = 2112;
              v72 = stringFromDate4;
              v73 = 2080;
              v74 = "[RTLearnedLocationOfInterest filterWithDateInterval:]";
              v75 = 1024;
              v76 = 88;
              _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "location of interest transition, %@, has one or more malformed dates, start, %@, stop, %@ (in %s:%d)", buf, 0x30u);
            }

LABEL_30:
          }

          v28 = [transitions countByEnumeratingWithState:&v58 objects:v66 count:16];
          if (!v28)
          {
LABEL_32:

            v48 = [RTLearnedLocationOfInterest alloc];
            identifier3 = [(RTLearnedLocationOfInterest *)selfCopy identifier];
            location = [(RTLearnedLocationOfInterest *)selfCopy location];
            place = [(RTLearnedLocationOfInterest *)selfCopy place];
            selfCopy2 = [(RTLearnedLocationOfInterest *)v48 initWithIdentifier:identifier3 location:location place:place visits:array transitions:array2];

            goto LABEL_34;
          }
        }
      }
    }
  }

  selfCopy2 = self;
LABEL_34:

  return selfCopy2;
}

- (double)dwellTime
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  visits = [(RTLearnedLocationOfInterest *)self visits];
  v3 = [visits countByEnumeratingWithState:&v26 objects:v40 count:16];
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
          objc_enumerationMutation(visits);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        entryDate = [v9 entryDate];
        if (entryDate)
        {
          v11 = entryDate;
          exitDate = [v9 exitDate];
          if (exitDate)
          {
            v13 = exitDate;
            exitDate2 = [v9 exitDate];
            entryDate2 = [v9 entryDate];
            v16 = [exitDate2 isOnOrBefore:entryDate2];

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
          identifier = [v9 identifier];
          entryDate3 = [v9 entryDate];
          stringFromDate = [entryDate3 stringFromDate];
          exitDate3 = [v9 exitDate];
          stringFromDate2 = [exitDate3 stringFromDate];
          *buf = v25;
          v31 = identifier;
          v32 = 2112;
          v33 = stringFromDate;
          v34 = 2112;
          v35 = stringFromDate2;
          v36 = 2080;
          v37 = "[RTLearnedLocationOfInterest dwellTime]";
          v38 = 1024;
          v39 = 119;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "location of interest visit, %{sensitive}@, has one or more malformed dates, entry, %@, exit, %@ (in %s:%d)", buf, 0x30u);
        }
      }

      v5 = [visits countByEnumeratingWithState:&v26 objects:v40 count:16];
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
  identifier = [(RTLearnedLocationOfInterest *)self identifier];
  uUIDString = [identifier UUIDString];
  location = [(RTLearnedLocationOfInterest *)self location];
  place = [(RTLearnedLocationOfInterest *)self place];
  visits = [(RTLearnedLocationOfInterest *)self visits];
  v9 = [visits count];
  transitions = [(RTLearnedLocationOfInterest *)self transitions];
  v11 = [v3 stringWithFormat:@"identifier, %@, location, %@, place, %@, visits, %lu, transitions, %lu", uUIDString, location, place, v9, objc_msgSend(transitions, "count")];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(RTLearnedLocationOfInterest *)self identifier];
        if (identifier || ([(RTLearnedLocationOfInterest *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTLearnedLocationOfInterest *)self identifier];
          identifier3 = [(RTLearnedLocationOfInterest *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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
  identifier = [(RTLearnedLocationOfInterest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end