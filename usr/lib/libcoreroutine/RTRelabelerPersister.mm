@interface RTRelabelerPersister
+ (id)locationFromAggregateVisits:(id)visits;
- (BOOL)associateNonPlaceholderRelabeledInferredMapItem:(id)item oldCandidate:(id)candidate error:(id *)error;
- (BOOL)associatePlaceholderRelabeledInferredMapItem:(id)item oldCandidate:(id)candidate error:(id *)error;
- (BOOL)cleanUpCombinedPairs:(id)pairs context:(id)context error:(id *)error;
- (BOOL)cleanUpWithError:(id *)error;
- (BOOL)combineEarlierVisitMO:(id)o withLaterVisitMO:(id)mO error:(id *)error;
- (BOOL)combineOverlappingRevGeoLOIsStabilized:(BOOL *)stabilized error:(id *)error;
- (BOOL)combineSequentialVisitsWithError:(id *)error;
- (BOOL)consolidateVisitsToLoisWithKnownPlaceTypesWithError:(id *)error;
- (BOOL)dedupeLOIsWithError:(id *)error;
- (BOOL)fixUnconcreteLOIs:(id *)is;
- (BOOL)iterativelyCollapseOverlappingRevGeoLOIsWithError:(id *)error;
- (BOOL)moveVisitMOs:(id)os toLOIMO:(id)o error:(id *)error;
- (BOOL)performBlock:(id)block error:(id *)error;
- (BOOL)resnapVisitsWithError:(id *)error;
- (BOOL)restoreToOldCandidate:(id)candidate error:(id *)error;
- (BOOL)restoreVisit:(id)visit transitions:(id)transitions toOldCandidate:(id)candidate error:(id *)error;
- (BOOL)saveWithError:(id *)error;
- (BOOL)unassociateOldCandidate:(id)candidate error:(id *)error;
- (BOOL)unconcreteLOIMO:(id)o;
- (BOOL)untrustedVisitMO:(id)o;
- (BOOL)useRelabeledInferredMapItem:(id)item oldCandidate:(id)candidate associate:(BOOL)associate error:(id *)error;
- (BOOL)uuidConflicts:(id)conflicts context:(id)context error:(id *)error;
- (RTRelabelerPersister)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedPlaceParameters:(id)parameters metrics:(id)metrics persistenceManager:(id)persistenceManager relabelerParameters:(id)relabelerParameters reverseGeocodeProvider:(id)provider;
- (RTRelabelerPersister)initWithDistanceCalculator:(id)calculator learnedPlaceParameters:(id)parameters locationShifter:(id)shifter metrics:(id)metrics persistenceManager:(id)manager relabelerParameters:(id)relabelerParameters relabelerPersisterParameters:(id)persisterParameters reverseGeocodeProvider:(id)self0;
- (double)scoreLOIMO:(id)o;
- (double)scoreVisitMO:(id)o;
- (id)connectedComponentForLoiMO:(id)o encounteredIdentifiers:(id)identifiers error:(id *)error;
- (id)dedupableLOIsNearLocation:(id)location mapItem:(id)item error:(id *)error;
- (id)fetchClosestUnconcreteLocationOfInterestMOToLocation:(id)location withinDistance:(double)distance distanceCalculator:(id)calculator error:(id *)error;
- (id)fetchLearnedLocationOfInterestVisitMOForIdentifier:(id)identifier error:(id *)error;
- (id)fetchLearnedPlaceMOforMapItemIdentifier:(id)identifier error:(id *)error;
- (id)fetchLocationOfInterestMOforMapItemIdentifier:(id)identifier error:(id *)error;
- (id)fetchNearbyLocationOfInterestMOsAroundLocation:(id)location withinDistance:(double)distance error:(id *)error;
- (id)fetchOverlappingUnconcreteLocationOfInterestMOsForLOIMO:(id)o distanceCalculator:(id)calculator unusableIdentifiers:(id)identifiers error:(id *)error;
- (id)fetchRevGeoLearnedPlaceInVicinityOfLocation:(id)location error:(id *)error;
- (id)fetchTransitionMOsEndingAtVisitIdentifier:(id)identifier error:(id *)error;
- (id)fetchTransitionMOsOriginatingFromVisitIdentifier:(id)identifier error:(id *)error;
- (id)filteredVisitMOs:(id)os referenceMapItem:(id)item referencePlaceType:(unint64_t)type error:(id *)error;
- (id)learnedPlaceForVisit:(id)visit creationDate:(id)date expirationDate:(id)expirationDate context:(id)context error:(id *)error;
- (id)loiToMoveToFromConnectedComponent:(id)component;
- (id)rollLOIIdentifier:(id)identifier context:(id)context error:(id *)error;
- (id)rollUUIDGivenUUID:(id)d;
- (void)logLocalStoreWithReason:(id)reason;
@end

@implementation RTRelabelerPersister

- (RTRelabelerPersister)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator learnedPlaceParameters:(id)parameters metrics:(id)metrics persistenceManager:(id)persistenceManager relabelerParameters:(id)relabelerParameters reverseGeocodeProvider:(id)provider
{
  managerCopy = manager;
  calculatorCopy = calculator;
  parametersCopy = parameters;
  metricsCopy = metrics;
  persistenceManagerCopy = persistenceManager;
  relabelerParametersCopy = relabelerParameters;
  providerCopy = provider;
  if (managerCopy)
  {
    v22 = [[RTRelabelerPersisterParameters alloc] initWithDefaultsManager:managerCopy];
    v23 = objc_opt_new();
    self = [(RTRelabelerPersister *)self initWithDistanceCalculator:calculatorCopy learnedPlaceParameters:parametersCopy locationShifter:v23 metrics:metricsCopy persistenceManager:persistenceManagerCopy relabelerParameters:relabelerParametersCopy relabelerPersisterParameters:v22 reverseGeocodeProvider:providerCopy];

    selfCopy = self;
  }

  else
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTRelabelerPersister)initWithDistanceCalculator:(id)calculator learnedPlaceParameters:(id)parameters locationShifter:(id)shifter metrics:(id)metrics persistenceManager:(id)manager relabelerParameters:(id)relabelerParameters relabelerPersisterParameters:(id)persisterParameters reverseGeocodeProvider:(id)self0
{
  v50 = *MEMORY[0x277D85DE8];
  calculatorCopy = calculator;
  parametersCopy = parameters;
  parametersCopy2 = parameters;
  shifterCopy = shifter;
  shifterCopy2 = shifter;
  obj = metrics;
  metricsCopy = metrics;
  managerCopy = manager;
  relabelerParametersCopy = relabelerParameters;
  persisterParametersCopy = persisterParameters;
  providerCopy = provider;
  v43 = calculatorCopy;
  v40 = providerCopy;
  if (!calculatorCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", buf, 2u);
    }

    selfCopy = 0;
    v22 = managerCopy;
    goto LABEL_22;
  }

  if (!parametersCopy2)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v22 = managerCopy;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedPlaceParameters", buf, 2u);
    }

    selfCopy = 0;
LABEL_22:
    v24 = relabelerParametersCopy;
    v23 = metricsCopy;
    goto LABEL_39;
  }

  v22 = managerCopy;
  if (shifterCopy2)
  {
    v24 = relabelerParametersCopy;
    v23 = metricsCopy;
    if (metricsCopy)
    {
      if (v22)
      {
        if (relabelerParametersCopy)
        {
          if (persisterParametersCopy)
          {
            if (providerCopy)
            {
              v45.receiver = self;
              v45.super_class = RTRelabelerPersister;
              self = [(RTRelabelerPersister *)&v45 init];
              if (!self)
              {
LABEL_15:
                self = self;
                selfCopy = self;
                goto LABEL_39;
              }

              managedObjectContext = [v22 managedObjectContext];
              context = self->_context;
              self->_context = managedObjectContext;

              if (self->_context)
              {
                objc_storeStrong(&self->_distanceCalculator, calculator);
                objc_storeStrong(&self->_metrics, obj);
                objc_storeStrong(&self->_learnedPlaceParameters, parametersCopy);
                objc_storeStrong(&self->_locationShifter, shifterCopy);
                dictionary = [MEMORY[0x277CBEB38] dictionary];
                loiIdentifierToUnconcreteMap = self->_loiIdentifierToUnconcreteMap;
                self->_loiIdentifierToUnconcreteMap = dictionary;

                objc_storeStrong(&self->_relabelerParameters, relabelerParameters);
                objc_storeStrong(&self->_relabelerPersisterParameters, persisterParameters);
                objc_storeStrong(&self->_reverseGeocodeProvider, provider);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v29 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138740227;
                    v47 = parametersCopy2;
                    v48 = 2117;
                    v49 = persisterParametersCopy;
                    _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "created relabelerPersister with learnedPlaceParameters, %{sensitive}@, relabelerPersisterParameters, %{sensitive}@", buf, 0x16u);
                  }
                }

                goto LABEL_15;
              }

LABEL_38:
              selfCopy = 0;
              goto LABEL_39;
            }

            v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v35 = "Invalid parameter not satisfying: reverseGeocodeProvider";
              goto LABEL_36;
            }

LABEL_37:

            goto LABEL_38;
          }

          v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          *buf = 0;
          v35 = "Invalid parameter not satisfying: relabelerPersisterParameters";
        }

        else
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          *buf = 0;
          v35 = "Invalid parameter not satisfying: relabelerParameters";
        }
      }

      else
      {
        v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v35 = "Invalid parameter not satisfying: persistenceManager";
      }
    }

    else
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 0;
      v35 = "Invalid parameter not satisfying: metrics";
    }

LABEL_36:
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    goto LABEL_37;
  }

  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  v24 = relabelerParametersCopy;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationShifter", buf, 2u);
  }

  selfCopy = 0;
  v23 = metricsCopy;
LABEL_39:

  return selfCopy;
}

+ (id)locationFromAggregateVisits:(id)visits
{
  visitsCopy = visits;
  v4 = [[_RTMap alloc] initWithInput:visitsCopy];

  v5 = [(_RTMap *)v4 withBlock:&__block_literal_global_86];

  v6 = [[RTLearnedLocation alloc] initWithLearnedVisits:v5];

  return v6;
}

- (BOOL)unconcreteLOIMO:(id)o
{
  v31 = *MEMORY[0x277D85DE8];
  oCopy = o;
  if (oCopy)
  {
    loiIdentifierToUnconcreteMap = [(RTRelabelerPersister *)self loiIdentifierToUnconcreteMap];
    identifier = [oCopy identifier];
    v7 = [loiIdentifierToUnconcreteMap objectForKeyedSubscript:identifier];

    if (v7)
    {
      loiIdentifierToUnconcreteMap2 = [(RTRelabelerPersister *)self loiIdentifierToUnconcreteMap];
      identifier2 = [oCopy identifier];
      v10 = [loiIdentifierToUnconcreteMap2 objectForKeyedSubscript:identifier2];
      LOBYTE(v11) = [v10 BOOLValue];
    }

    else
    {
      visits = [oCopy visits];
      v11 = [visits count] != 0;

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      visits2 = [oCopy visits];
      v15 = [visits2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(visits2);
            }

            locationOfInterestSource = [*(*(&v25 + 1) + 8 * i) locationOfInterestSource];
            unsignedIntegerValue = [locationOfInterestSource unsignedIntegerValue];

            if (unsignedIntegerValue)
            {
              v11 = 0;
              goto LABEL_17;
            }
          }

          v16 = [visits2 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v21 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      loiIdentifierToUnconcreteMap3 = [(RTRelabelerPersister *)self loiIdentifierToUnconcreteMap];
      identifier3 = [oCopy identifier];
      [loiIdentifierToUnconcreteMap3 setObject:v21 forKeyedSubscript:identifier3];
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiMO", buf, 2u);
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)fetchNearbyLocationOfInterestMOsAroundLocation:(id)location withinDistance:(double)distance error:(id *)error
{
  v95[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v10 = locationCopy;
  if (error)
  {
    if (!locationCopy)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v94 = *MEMORY[0x277CCA450];
      v95[0] = @"requires a non-nil location";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
      v14 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v91 = v16;
        v92 = 2112;
        v93 = v14;
        goto LABEL_37;
      }

LABEL_10:

      v21 = v14;
      v17 = 0;
      *error = v14;
      goto LABEL_33;
    }

    if (distance < 0.0)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v88 = *MEMORY[0x277CCA450];
      v89 = @"requries a non-negative distance";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v14 = [v11 errorWithDomain:v12 code:7 userInfo:v13];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v91 = v16;
        v92 = 2112;
        v93 = v14;
LABEL_37:
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count > 0", @"visits"];
    v87 = v22;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];

    v23 = +[RTLearnedLocationOfInterestMO fetchRequest];
    locationShifter = [(RTRelabelerPersister *)self locationShifter];
    v85 = 0;
    v25 = [v23 setupBoundingBoxFetchRequestForLocation:v10 distance:1 entityCanBeLocationShifted:locationShifter locationShifter:0 resultExpansionPredicates:v14 resultFilteringPredicates:&v85 error:distance];
    v26 = v85;

    if (v25)
    {
      selfCopy = self;
      [v23 setReturnsObjectsAsFaults:1];
      [v23 setFetchBatchSize:1];
      v84 = 0;
      v27 = [v23 execute:&v84];
      v28 = v84;
      v70 = v28;
      if (v28)
      {
        v29 = MEMORY[0x277CCA9B8];
        userInfo = [v28 userInfo];
        v31 = [v29 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo];

        v32 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v91 = v23;
          v92 = 2112;
          v93 = v31;
          _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "nearby fetch request, %@, error, %@", buf, 0x16u);
        }

        v33 = v31;
        v17 = 0;
        *error = v31;
      }

      else
      {
        v67 = v26;
        v68 = v23;
        errorCopy = error;
        v69 = v14;
        v71 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v66 = v27;
        obj = v27;
        v75 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
        if (v75)
        {
          v73 = *v81;
          v74 = v10;
LABEL_19:
          v35 = 0;
          while (1)
          {
            if (*v81 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v80 + 1) + 8 * v35);
            context = objc_autoreleasePoolPush();
            v37 = objc_alloc(MEMORY[0x277D01160]);
            locationLatitude = [v36 locationLatitude];
            [locationLatitude doubleValue];
            v39 = v38;
            locationLongitude = [v36 locationLongitude];
            [locationLongitude doubleValue];
            v42 = v41;
            locationHorizontalUncertainty = [v36 locationHorizontalUncertainty];
            [locationHorizontalUncertainty doubleValue];
            v45 = v44;
            locationAltitude = [v36 locationAltitude];
            [locationAltitude doubleValue];
            v48 = v47;
            locationVerticalUncertainty = [v36 locationVerticalUncertainty];
            [locationVerticalUncertainty doubleValue];
            v51 = v50;
            locationReferenceFrame = [v36 locationReferenceFrame];
            intValue = [locationReferenceFrame intValue];
            locationSourceAccuracy = [v36 locationSourceAccuracy];
            v55 = [v37 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v39 date:v42 referenceFrame:v45 speed:v48 sourceAccuracy:{v51, 0.0}];

            distanceCalculator = [(RTRelabelerPersister *)selfCopy distanceCalculator];
            v79 = 0;
            v10 = v74;
            [distanceCalculator distanceFromLocation:v55 toLocation:v74 error:&v79];
            v58 = v57;
            v59 = v79;

            if (v59)
            {
              break;
            }

            if (v58 <= distance)
            {
              [v71 addObject:v36];
            }

            objc_autoreleasePoolPop(context);
            if (v75 == ++v35)
            {
              v75 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
              if (v75)
              {
                goto LABEL_19;
              }

              goto LABEL_27;
            }
          }

          v60 = MEMORY[0x277CCA9B8];
          userInfo2 = [v59 userInfo];
          v62 = [v60 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:1 userInfo:userInfo2];

          objc_autoreleasePoolPop(context);
          if (!v62)
          {
            goto LABEL_30;
          }

          v63 = v62;
          *errorCopy = v62;

          v17 = 0;
          v23 = v68;
          v14 = v69;
          v27 = v66;
          v26 = v67;
          v31 = v71;
        }

        else
        {
LABEL_27:

LABEL_30:
          v31 = v71;
          v17 = v31;
          v23 = v68;
          v14 = v69;
          v27 = v66;
          v26 = v67;
        }
      }
    }

    else
    {
      v34 = v26;
      v17 = 0;
      *error = v26;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v17 = 0;
  }

LABEL_33:

  return v17;
}

- (id)fetchClosestUnconcreteLocationOfInterestMOToLocation:(id)location withinDistance:(double)distance distanceCalculator:(id)calculator error:(id *)error
{
  v91[1] = *MEMORY[0x277D85DE8];
  v73 = COERCE_DOUBLE(location);
  calculatorCopy = calculator;
  v12 = calculatorCopy;
  if (error)
  {
    aSelector = a2;
    errorCopy = error;
    if (calculatorCopy)
    {
      v80 = 0;
      v13 = [(RTRelabelerPersister *)self fetchNearbyLocationOfInterestMOsAroundLocation:*&v73 withinDistance:&v80 error:distance];
      v14 = v80;
      v15 = v14;
      if (v14)
      {
        v16 = v14;
        v17 = 0;
        *error = v15;
      }

      else
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        obj = v13;
        v23 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
        if (v23)
        {
          v24 = v23;
          v71 = 0;
          v25 = *v77;
          v26 = 1.79769313e308;
          v68 = v13;
          v69 = v12;
          v66 = *v77;
          selfCopy = self;
          while (2)
          {
            v27 = 0;
            v70 = v24;
            do
            {
              if (*v77 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v76 + 1) + 8 * v27);
              if ([(RTRelabelerPersister *)self unconcreteLOIMO:v28])
              {
                v29 = objc_alloc(MEMORY[0x277D01160]);
                locationLatitude = [v28 locationLatitude];
                [locationLatitude doubleValue];
                v31 = v30;
                locationLongitude = [v28 locationLongitude];
                [locationLongitude doubleValue];
                v34 = v33;
                locationHorizontalUncertainty = [v28 locationHorizontalUncertainty];
                [locationHorizontalUncertainty doubleValue];
                v37 = v36;
                locationAltitude = [v28 locationAltitude];
                [locationAltitude doubleValue];
                v40 = v39;
                locationVerticalUncertainty = [v28 locationVerticalUncertainty];
                [locationVerticalUncertainty doubleValue];
                v43 = v42;
                locationReferenceFrame = [v28 locationReferenceFrame];
                intValue = [locationReferenceFrame intValue];
                locationSourceAccuracy = [v28 locationSourceAccuracy];
                v47 = [v29 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v31 date:v34 referenceFrame:v37 speed:v40 sourceAccuracy:{v43, 0.0}];

                v12 = v69;
                v75 = 0;
                [v69 distanceFromLocation:v47 toLocation:*&v73 error:&v75];
                v49 = v48;
                v50 = v75;
                if (v50)
                {
                  v52 = v50;
                  v53 = MEMORY[0x277CCA9B8];
                  userInfo = [v50 userInfo];
                  v55 = [v53 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:1 userInfo:userInfo];

                  v56 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v63 = NSStringFromSelector(aSelector);
                    *buf = 138413059;
                    v82 = v63;
                    v83 = 2117;
                    v84 = v47;
                    v85 = 2117;
                    distanceCopy = v73;
                    v87 = 2112;
                    v88 = v55;
                    _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, distance from location %{sensitive}@, to location %{sensitive}@, error, %@", buf, 0x2Au);
                  }

                  v57 = v55;
                  *errorCopy = v55;

                  v17 = 0;
                  v15 = 0;
                  v13 = v68;
                  v58 = v71;
                  goto LABEL_33;
                }

                if (v49 < v26)
                {
                  v51 = v28;

                  v26 = v49;
                  v71 = v51;
                }

                v13 = v68;
                v25 = v66;
                v24 = v70;

                self = selfCopy;
              }

              ++v27;
            }

            while (v24 != v27);
            v24 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v71 = 0;
        }

        v15 = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v59 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            identifier = [v71 identifier];
            *buf = 138412803;
            v82 = identifier;
            v83 = 2117;
            v84 = *&v73;
            v85 = 2048;
            distanceCopy = distance;
            _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "fetched closest unconcrete, identifier, %@, location, %{sensitive}@, distance, %.3f", buf, 0x20u);
          }
        }

        v58 = v71;
        v17 = v58;
LABEL_33:
      }
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v90 = *MEMORY[0x277CCA450];
      v91[0] = @"requires a non-nil distance calculator";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:&v90 count:1];
      v15 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

      v21 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v62 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v82 = v62;
        v83 = 2112;
        v84 = v15;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v22 = v15;
      v17 = 0;
      *errorCopy = v15;
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)fetchOverlappingUnconcreteLocationOfInterestMOsForLOIMO:(id)o distanceCalculator:(id)calculator unusableIdentifiers:(id)identifiers error:(id *)error
{
  v134[1] = *MEMORY[0x277D85DE8];
  oCopy = o;
  calculatorCopy = calculator;
  identifiersCopy = identifiers;
  v13 = identifiersCopy;
  if (!error)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v39 = 0;
    goto LABEL_44;
  }

  if (!oCopy)
  {
    v40 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277D01448];
    v133 = *MEMORY[0x277CCA450];
    v134[0] = @"requires a non-nil loiMO";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:&v133 count:1];
    v34 = [v40 errorWithDomain:v41 code:7 userInfo:v42];

    v43 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    NSStringFromSelector(a2);
    v45 = v44 = v34;
    *buf = 138412546;
    v121 = v45;
    v122 = 2112;
    v123 = v44;
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

    v34 = v44;
    goto LABEL_17;
  }

  if (!identifiersCopy)
  {
    v46 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277D01448];
    v131 = *MEMORY[0x277CCA450];
    v132 = @"requires a non-nil unusable identifiers set";
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
    v34 = [v46 errorWithDomain:v47 code:7 userInfo:v48];

    v43 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    NSStringFromSelector(a2);
    v45 = v44 = v34;
    *buf = 138412546;
    v121 = v45;
    v122 = 2112;
    v123 = v44;
    goto LABEL_16;
  }

  if (!calculatorCopy)
  {
    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277D01448];
    v129 = *MEMORY[0x277CCA450];
    v130 = @"requires a non-nil distance calculator";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
    v34 = [v49 errorWithDomain:v50 code:7 userInfo:v51];

    v43 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      v45 = v44 = v34;
      *buf = 138412546;
      v121 = v45;
      v122 = 2112;
      v123 = v44;
      goto LABEL_16;
    }

LABEL_17:

    v52 = v34;
    v39 = 0;
    *error = v34;
    goto LABEL_44;
  }

  aSelector = a2;
  errorCopy = error;
  v107 = identifiersCopy;
  v108 = calculatorCopy;
  v14 = objc_alloc(MEMORY[0x277D01160]);
  locationLatitude = [oCopy locationLatitude];
  [locationLatitude doubleValue];
  v17 = v16;
  locationLongitude = [oCopy locationLongitude];
  [locationLongitude doubleValue];
  v20 = v19;
  locationHorizontalUncertainty = [oCopy locationHorizontalUncertainty];
  [locationHorizontalUncertainty doubleValue];
  v23 = v22;
  locationAltitude = [oCopy locationAltitude];
  [locationAltitude doubleValue];
  v26 = v25;
  locationVerticalUncertainty = [oCopy locationVerticalUncertainty];
  [locationVerticalUncertainty doubleValue];
  v29 = v28;
  locationReferenceFrame = [oCopy locationReferenceFrame];
  intValue = [locationReferenceFrame intValue];
  locationSourceAccuracy = [oCopy locationSourceAccuracy];
  v33 = [v14 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v17 date:v20 referenceFrame:v23 speed:v26 sourceAccuracy:{v29, 0.0}];

  v34 = v33;
  relabelerPersisterParameters = [(RTRelabelerPersister *)self relabelerPersisterParameters];
  [relabelerPersisterParameters unconcreteLOICollapseDistanceThreshold];
  v119 = 0;
  v36 = [(RTRelabelerPersister *)self fetchNearbyLocationOfInterestMOsAroundLocation:v33 withinDistance:&v119 error:?];
  v37 = v119;

  if (v37)
  {
    v38 = v37;
    v39 = 0;
    *errorCopy = v37;
    v13 = v107;
    calculatorCopy = v108;
  }

  else
  {
    v106 = v33;
    array = [MEMORY[0x277CBEB18] array];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v101 = v36;
    obj = v36;
    v53 = [obj countByEnumeratingWithState:&v115 objects:v128 count:16];
    v13 = v107;
    if (v53)
    {
      v54 = v53;
      selfCopy2 = self;
      v56 = *v116;
      v105 = oCopy;
      while (2)
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v116 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v115 + 1) + 8 * i);
          identifier = [v58 identifier];
          identifier2 = [oCopy identifier];
          v61 = [identifier isEqual:identifier2];

          if ((v61 & 1) == 0)
          {
            identifier3 = [v58 identifier];
            v63 = [v13 member:identifier3];

            if (!v63)
            {
              if ([(RTRelabelerPersister *)selfCopy2 unconcreteLOIMO:v58])
              {
                v64 = objc_alloc(MEMORY[0x277D01160]);
                locationLatitude2 = [v58 locationLatitude];
                [locationLatitude2 doubleValue];
                v66 = v65;
                locationLongitude2 = [v58 locationLongitude];
                [locationLongitude2 doubleValue];
                v68 = v67;
                locationHorizontalUncertainty2 = [v58 locationHorizontalUncertainty];
                [locationHorizontalUncertainty2 doubleValue];
                v70 = v69;
                locationAltitude2 = [v58 locationAltitude];
                [locationAltitude2 doubleValue];
                v73 = v72;
                locationVerticalUncertainty2 = [v58 locationVerticalUncertainty];
                [locationVerticalUncertainty2 doubleValue];
                v76 = v75;
                locationReferenceFrame2 = [v58 locationReferenceFrame];
                intValue2 = [locationReferenceFrame2 intValue];
                locationSourceAccuracy2 = [v58 locationSourceAccuracy];
                v80 = [v64 initWithLatitude:0 longitude:intValue2 horizontalUncertainty:objc_msgSend(locationSourceAccuracy2 altitude:"intValue") verticalUncertainty:v66 date:v68 referenceFrame:v70 speed:v73 sourceAccuracy:{v76, 0.0}];

                v114 = 0;
                [v108 distanceFromLocation:v80 toLocation:v106 error:&v114];
                v82 = v81;
                v83 = v114;
                if (v83)
                {
                  v93 = v83;
                  v94 = MEMORY[0x277CCA9B8];
                  userInfo = [v83 userInfo];
                  v96 = [v94 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:1 userInfo:userInfo];

                  v97 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                  v36 = v101;
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                  {
                    v100 = NSStringFromSelector(aSelector);
                    *buf = 138413059;
                    v121 = v100;
                    v122 = 2117;
                    v123 = v80;
                    v124 = 2117;
                    v125 = v106;
                    v126 = 2112;
                    v127 = v96;
                    _os_log_error_impl(&dword_2304B3000, v97, OS_LOG_TYPE_ERROR, "%@, distance from location %{sensitive}@, to location %{sensitive}@, error, %@", buf, 0x2Au);
                  }

                  v98 = v96;
                  *errorCopy = v96;

                  v39 = 0;
                  oCopy = v105;
                  v34 = v106;
                  v13 = v107;
                  calculatorCopy = v108;
                  v37 = 0;
                  v88 = array;
                  goto LABEL_42;
                }

                [v80 horizontalUncertainty];
                v85 = v82 - v84;
                [v106 horizontalUncertainty];
                if (v85 < v86)
                {
                  [array addObject:v58];
                }

                oCopy = v105;
                v13 = v107;
                selfCopy2 = self;
              }
            }
          }
        }

        v54 = [obj countByEnumeratingWithState:&v115 objects:v128 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }
    }

    v87 = oCopy;

    v88 = array;
    v89 = [[_RTMap alloc] initWithInput:array];
    obj = [(_RTMap *)v89 withBlock:&__block_literal_global_244];

    calculatorCopy = v108;
    v34 = v106;
    v37 = 0;
    v36 = v101;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v90 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        v91 = [obj count];
        identifier4 = [v87 identifier];
        *buf = 134218242;
        v121 = v91;
        v122 = 2112;
        v123 = identifier4;
        _os_log_impl(&dword_2304B3000, v90, OS_LOG_TYPE_INFO, "fetched %lu overlapping LOI MOs, initial identifier, %@", buf, 0x16u);

        v34 = v106;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      [obj enumerateObjectsUsingBlock:&__block_literal_global_248];
    }

    v39 = array;
    oCopy = v87;
LABEL_42:
  }

LABEL_44:

  return v39;
}

void __125__RTRelabelerPersister_fetchOverlappingUnconcreteLocationOfInterestMOsForLOIMO_distanceCalculator_unusableIdentifiers_error___block_invoke_245(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "overlapping identifier, %@", &v4, 0xCu);
    }
  }
}

- (id)fetchLearnedLocationOfInterestVisitMOForIdentifier:(id)identifier error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (error)
  {
    if (identifierCopy)
    {
      v8 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", v7];
      [v8 setPredicate:v9];

      [v8 setFetchLimit:1];
      [v8 setReturnsObjectsAsFaults:0];
      v29 = 0;
      v10 = [v8 execute:&v29];
      v11 = v29;
      firstObject = [v10 firstObject];

      if (v11)
      {
        v13 = MEMORY[0x277CCA9B8];
        userInfo = [v11 userInfo];
        v15 = [v13 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo];

        v16 = v15;
        *error = v15;
      }

      else
      {
        if (firstObject)
        {
          v17 = firstObject;
          goto LABEL_14;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"candidate visit was not found for identifier, %@", v7];
        v24 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        v31 = v15;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v26 = [v24 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:3 userInfo:v25];

        v27 = v26;
        *error = v26;
      }

      v17 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"requires a non-nil identifier";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v8 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

    v21 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v28;
      v34 = 2112;
      v35 = v8;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v22 = v8;
    v17 = 0;
    *error = v8;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v17 = 0;
  }

LABEL_15:

  return v17;
}

- (id)fetchTransitionMOsOriginatingFromVisitIdentifier:(id)identifier error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (error)
  {
    if (identifierCopy)
    {
      v8 = +[RTLearnedLocationOfInterestTransitionMO fetchRequest];
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"visitIdentifierOrigin", v7];
      [v8 setPredicate:v9];

      v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
      v28 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      [v8 setSortDescriptors:v11];

      [v8 setReturnsObjectsAsFaults:0];
      v27 = 0;
      v12 = [v8 execute:&v27];
      v13 = v27;
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x277CCA9B8];
        userInfo = [v13 userInfo];
        v17 = [v15 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo];

        v18 = v17;
        *error = v17;

        v19 = 0;
      }

      else
      {
        v19 = v12;
      }
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v33 = *MEMORY[0x277CCA450];
      v34[0] = @"requires a non-nil identifier";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v8 = [v20 errorWithDomain:v21 code:7 userInfo:v22];

      v23 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412546;
        v30 = v26;
        v31 = 2112;
        v32 = v8;
        _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v24 = v8;
      v19 = 0;
      *error = v8;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)fetchTransitionMOsEndingAtVisitIdentifier:(id)identifier error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (error)
  {
    if (identifierCopy)
    {
      v8 = +[RTLearnedLocationOfInterestTransitionMO fetchRequest];
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"visitIdentifierDestination", v7];
      [v8 setPredicate:v9];

      v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
      v28 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      [v8 setSortDescriptors:v11];

      [v8 setReturnsObjectsAsFaults:0];
      v27 = 0;
      v12 = [v8 execute:&v27];
      v13 = v27;
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x277CCA9B8];
        userInfo = [v13 userInfo];
        v17 = [v15 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo];

        v18 = v17;
        *error = v17;

        v19 = 0;
      }

      else
      {
        v19 = v12;
      }
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v33 = *MEMORY[0x277CCA450];
      v34[0] = @"requires a non-nil identifier";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v8 = [v20 errorWithDomain:v21 code:7 userInfo:v22];

      v23 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412546;
        v30 = v26;
        v31 = 2112;
        v32 = v8;
        _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v24 = v8;
      v19 = 0;
      *error = v8;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (id)fetchLocationOfInterestMOforMapItemIdentifier:(id)identifier error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (error)
  {
    if (identifierCopy)
    {
      v8 = +[RTLearnedLocationOfInterestMO fetchRequest];
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"placeMapItemIdentifier", v7];
      [v8 setPredicate:v9];

      [v8 setFetchLimit:1];
      [v8 setReturnsObjectsAsFaults:0];
      v32 = 0;
      v10 = [v8 execute:&v32];
      v11 = v32;
      firstObject = [v10 firstObject];

      if (v11)
      {
        v13 = MEMORY[0x277CCA9B8];
        userInfo = [v11 userInfo];
        v15 = [v13 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo];

        v16 = v15;
        *error = v15;
      }

      else
      {
        if (firstObject)
        {
          v17 = firstObject;
          goto LABEL_14;
        }

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"LOI for mapItem identifier, %@, not found", v7];
        v25 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA450];
        v34 = v24;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v27 = [v25 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:4 userInfo:v26];

        v28 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = NSStringFromSelector(a2);
          *buf = 138412546;
          v36 = v31;
          v37 = 2112;
          v38 = v27;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v29 = v27;
        *error = v27;
      }

      v17 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"requires a non-nil identifier";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v8 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

    v21 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 138412546;
      v36 = v30;
      v37 = 2112;
      v38 = v8;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v22 = v8;
    v17 = 0;
    *error = v8;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v17 = 0;
  }

LABEL_15:

  return v17;
}

- (id)fetchLearnedPlaceMOforMapItemIdentifier:(id)identifier error:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (error)
  {
    if (identifierCopy)
    {
      v8 = +[RTLearnedLocationOfInterestMO fetchRequest];
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"placeMapItemIdentifier", v7];
      [v8 setPredicate:v9];

      [v8 setFetchLimit:1];
      [v8 setReturnsObjectsAsFaults:0];
      v50 = 0;
      v10 = [v8 execute:&v50];
      v11 = v50;
      firstObject = [v10 firstObject];

      if (v11)
      {
        v13 = MEMORY[0x277CCA9B8];
        userInfo = [v11 userInfo];
        v15 = [v13 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo];

        v16 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v42 = NSStringFromSelector(a2);
          *buf = 138412546;
          v54 = v42;
          v55 = 2112;
          v56 = v15;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, fetchLOIError, %@", buf, 0x16u);
        }

        v17 = v15;
        v18 = 0;
        *error = v15;
        goto LABEL_21;
      }

      v15 = +[RTLearnedPlaceMO fetchRequest];
      v24 = MEMORY[0x277CCAC30];
      placeIdentifier = [firstObject placeIdentifier];
      v26 = [v24 predicateWithFormat:@"%K == %@", @"identifier", placeIdentifier];
      [v15 setPredicate:v26];

      v49 = 0;
      v27 = [v15 execute:&v49];
      v28 = v49;
      firstObject2 = [v27 firstObject];

      if (v28)
      {
        v47 = firstObject2;
        v48 = v28;
        v30 = MEMORY[0x277CCA9B8];
        userInfo2 = [v28 userInfo];
        v32 = [v30 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:userInfo2];

        v33 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v44 = NSStringFromSelector(a2);
          *buf = 138412546;
          v54 = v44;
          v55 = 2112;
          v56 = v32;
          _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, fetchPlaceError, %@", buf, 0x16u);
        }

        v34 = v32;
        *error = v32;
      }

      else
      {
        if (firstObject2)
        {
          v18 = firstObject2;
          goto LABEL_20;
        }

        v47 = 0;
        v48 = 0;
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"learnedPlaceMO was nil for identifier, %@", v7];
        v37 = MEMORY[0x277CCA9B8];
        v51 = *MEMORY[0x277CCA450];
        v52 = v36;
        v46 = v36;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v39 = [v37 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:5 userInfo:v38];

        v40 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v45 = NSStringFromSelector(a2);
          *buf = 138412546;
          v54 = v45;
          v55 = 2112;
          v56 = v39;
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, learnedPlaceMOError, %@", buf, 0x16u);
        }

        v41 = v39;
        *error = v39;
      }

      v18 = 0;
      firstObject2 = v47;
      v28 = v48;
LABEL_20:

LABEL_21:
      goto LABEL_22;
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D01448];
    v57 = *MEMORY[0x277CCA450];
    v58[0] = @"requires a non-nil identifier";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v8 = [v19 errorWithDomain:v20 code:7 userInfo:v21];

    v22 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(a2);
      *buf = 138412546;
      v54 = v43;
      v55 = 2112;
      v56 = v8;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v23 = v8;
    v18 = 0;
    *error = v8;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v18 = 0;
  }

LABEL_22:

  return v18;
}

- (id)fetchRevGeoLearnedPlaceInVicinityOfLocation:(id)location error:(id *)error
{
  v74[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (locationCopy)
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %lu) != 0", @"mapItemSource", 1];
    v74[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];

    v9 = +[RTMapItemMO fetchRequest];
    relabelerPersisterParameters = [(RTRelabelerPersister *)self relabelerPersisterParameters];
    [relabelerPersisterParameters reverseGeocodePlaceFetchDistanceThreshold];
    v12 = v11;
    locationShifter = [(RTRelabelerPersister *)self locationShifter];
    v68 = 0;
    v14 = [v9 setupBoundingBoxFetchRequestForLocation:locationCopy distance:1 entityCanBeLocationShifted:locationShifter locationShifter:0 resultExpansionPredicates:v8 resultFilteringPredicates:&v68 error:v12];
    v15 = v68;

    if ((v14 & 1) == 0)
    {
      if (error)
      {
        v22 = v15;
        v20 = 0;
        *error = v15;
      }

      else
      {
        v20 = 0;
      }

LABEL_35:

      goto LABEL_36;
    }

    v67 = 0;
    v16 = [v9 execute:&v67];
    v17 = v67;
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v20 = 0;
        *error = v18;
      }

      else
      {
        v20 = 0;
      }

LABEL_34:

      goto LABEL_35;
    }

    v54 = v16;
    v55 = v15;
    v56 = v9;
    v57 = v8;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v16;
    v23 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (!v23)
    {
      v59 = 0;
      goto LABEL_33;
    }

    v24 = v23;
    v59 = 0;
    v61 = *v64;
    v25 = 1.79769313e308;
LABEL_15:
    v26 = 0;
    while (1)
    {
      if (*v64 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v63 + 1) + 8 * v26);
      place = [v27 place];

      if (!place)
      {
        goto LABEL_27;
      }

      v29 = objc_alloc(MEMORY[0x277D01160]);
      latitude = [v27 latitude];
      [latitude doubleValue];
      v32 = v31;
      longitude = [v27 longitude];
      [longitude doubleValue];
      v35 = v34;
      [v27 uncertainty];
      selfCopy = self;
      v38 = v37 = locationCopy;
      [v38 doubleValue];
      v40 = v39;
      referenceFrame = [v27 referenceFrame];
      v42 = [v29 initWithLatitude:0 longitude:objc_msgSend(referenceFrame horizontalUncertainty:"intValue") date:v32 referenceFrame:{v35, v40}];

      locationCopy = v37;
      self = selfCopy;

      distanceCalculator = [(RTRelabelerPersister *)selfCopy distanceCalculator];
      v62 = 0;
      [distanceCalculator distanceFromLocation:v42 toLocation:locationCopy error:&v62];
      v45 = v44;
      v46 = v62;

      if (v46)
      {
        place2 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(place2, OS_LOG_TYPE_ERROR))
        {
          v48 = NSStringFromSelector(a2);
          *buf = 138412546;
          v70 = v48;
          v71 = 2112;
          v72 = v46;
          _os_log_error_impl(&dword_2304B3000, place2, OS_LOG_TYPE_ERROR, "%@, distance error, %@", buf, 0x16u);
        }
      }

      else
      {
        relabelerPersisterParameters2 = [(RTRelabelerPersister *)selfCopy relabelerPersisterParameters];
        [relabelerPersisterParameters2 reverseGeocodePlaceFetchDistanceThreshold];
        v51 = v50;

        if (v45 > v51 || v45 >= v25)
        {
          goto LABEL_26;
        }

        place2 = [v27 place];
        v52 = [RTLearnedPlace createWithManagedObject:place2];

        v59 = v52;
        v25 = v45;
      }

LABEL_26:
LABEL_27:
      if (v24 == ++v26)
      {
        v24 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (!v24)
        {
LABEL_33:

          v9 = v56;
          v8 = v57;
          v16 = v54;
          v15 = v55;
          v18 = 0;
          v20 = v59;
          goto LABEL_34;
        }

        goto LABEL_15;
      }
    }
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"location");
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_36:

  return v20;
}

- (id)learnedPlaceForVisit:(id)visit creationDate:(id)date expirationDate:(id)expirationDate context:(id)context error:(id *)error
{
  v97[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  contextCopy = context;
  v17 = contextCopy;
  if (!error)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_26;
  }

  if (contextCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        identifier = [visitCopy identifier];
        *buf = 138412290;
        v93 = identifier;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "rev geo query for visit identifier, %@", buf, 0xCu);
      }
    }

    if (visitCopy)
    {
      if (dateCopy)
      {
        if (expirationDateCopy)
        {
          aSelector = a2;
          location = [visitCopy location];
          v20Location = [location location];
          v83 = 0;
          v22 = [(RTRelabelerPersister *)self fetchRevGeoLearnedPlaceInVicinityOfLocation:v20Location error:&v83];
          v23 = v83;

          if (v23)
          {
            v24 = v23;
            v25 = 0;
            *error = v23;
LABEL_40:

            goto LABEL_27;
          }

          if (v22)
          {
            v25 = v22;
            goto LABEL_40;
          }

          v42 = objc_alloc(MEMORY[0x277D011E0]);
          relabelerPersisterParameters = [(RTRelabelerPersister *)self relabelerPersisterParameters];
          [relabelerPersisterParameters reverseGeocodeLeewayDistance];
          v44 = v43;
          location2 = [visitCopy location];
          v77Location = [location2 location];
          entryDate = [visitCopy entryDate];
          exitDate = [visitCopy exitDate];
          v48 = [v42 initWithinDistance:v77Location location:entryDate startDate:exitDate endDate:v44];

          reverseGeocodeProvider = self->_reverseGeocodeProvider;
          v82 = 0;
          v80 = v48;
          v50 = [(RTMapItemProviderReverseGeocode *)reverseGeocodeProvider mapItemsWithOptions:v48 error:&v82];
          v51 = v82;
          firstObject = [v50 firstObject];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v93 = firstObject;
              v94 = 2112;
              v95 = v51;
              _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "rev geo query result, %@, error, %@", buf, 0x16u);
            }
          }

          v76 = firstObject;
          v78 = v51;
          if (v51)
          {
            v54 = MEMORY[0x277CCA9B8];
            userInfo = [(RTLearnedPlace *)v51 userInfo];
            v56 = [v54 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:6 userInfo:userInfo];

            v57 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v68 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v93 = v68;
            v94 = 2112;
            v95 = v56;
            v69 = "%@, rev geo error, %@";
          }

          else
          {
            if (firstObject)
            {
              v59 = firstObject;
              v60 = [RTLearnedPlace alloc];
              uUID = [MEMORY[0x277CCAD78] UUID];
              mapItem = [v59 mapItem];
              v63 = [(RTLearnedPlace *)v60 initWithIdentifier:uUID type:0 typeSource:0 mapItem:mapItem customLabel:0 creationDate:dateCopy expirationDate:expirationDateCopy];

              if (v63)
              {
                v64 = [(RTLearnedPlace *)v63 managedObjectWithContext:v17];
                metrics = [(RTRelabelerPersister *)self metrics];
                [metrics tallyKey:@"numberOfPlaceholderNotCollapsedRevGeoQuery"];

                v56 = v63;
                v25 = v56;
              }

              else
              {
                v70 = MEMORY[0x277CCA9B8];
                v84 = *MEMORY[0x277CCA450];
                v85 = @"learned place was nil";
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
                v72 = [v70 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:0 userInfo:v71];

                v73 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  v75 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v93 = v75;
                  v94 = 2112;
                  v95 = v72;
                  _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
                }

                v74 = v72;
                *error = v72;

                v56 = 0;
                v25 = 0;
              }

              goto LABEL_39;
            }

            v66 = MEMORY[0x277CCA9B8];
            v86 = *MEMORY[0x277CCA450];
            v87 = @"could not get a rev geo map item";
            v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            v56 = [v66 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:6 userInfo:v67];

            v57 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
LABEL_38:

              v58 = v56;
              v25 = 0;
              *error = v56;
LABEL_39:
              v23 = 0;
              v22 = 0;

              goto LABEL_40;
            }

            v68 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v93 = v68;
            v94 = 2112;
            v95 = v56;
            v69 = "%@, error, %@";
          }

          _os_log_error_impl(&dword_2304B3000, v57, OS_LOG_TYPE_ERROR, v69, buf, 0x16u);

          goto LABEL_38;
        }

        v37 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277D01448];
        v88 = *MEMORY[0x277CCA450];
        v89 = @"requires a non-nil expirationDate";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v31 = [v37 errorWithDomain:v38 code:7 userInfo:v39];

        v32 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        v33 = NSStringFromSelector(a2);
        *buf = 138412546;
        v93 = v33;
        v94 = 2112;
        v95 = v31;
        goto LABEL_24;
      }

      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277D01448];
      v90 = *MEMORY[0x277CCA450];
      v91 = @"requires a non-nil creationDate";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v31 = [v34 errorWithDomain:v35 code:7 userInfo:v36];

      v32 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(a2);
        *buf = 138412546;
        v93 = v33;
        v94 = 2112;
        v95 = v31;
        goto LABEL_24;
      }
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277D01448];
      v96 = *MEMORY[0x277CCA450];
      v97[0] = @"requires a non-nil visit";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
      v31 = [v28 errorWithDomain:v29 code:7 userInfo:v30];

      v32 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(a2);
        *buf = 138412546;
        v93 = v33;
        v94 = 2112;
        v95 = v31;
LABEL_24:
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }
    }

LABEL_25:

    v40 = v31;
    *error = v31;

LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

  _RTErrorInvalidParameterCreate(@"context");
  *error = v25 = 0;
LABEL_27:

  return v25;
}

- (BOOL)restoreVisit:(id)visit transitions:(id)transitions toOldCandidate:(id)candidate error:(id *)error
{
  v54[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  transitionsCopy = transitions;
  candidateCopy = candidate;
  v14 = candidateCopy;
  if (error)
  {
    if (visitCopy)
    {
      if (candidateCopy)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            identifier = [visitCopy identifier];
            secondObject = [v14 secondObject];
            identifier2 = [secondObject identifier];
            *buf = 138412546;
            v50 = identifier;
            v51 = 2112;
            v52 = identifier2;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "restoring visit identifier, %@, to old map item identifier, %@", buf, 0x16u);
          }
        }

        secondObject2 = [v14 secondObject];
        identifier3 = [secondObject2 identifier];
        v45 = 0;
        v21 = [(RTRelabelerPersister *)self fetchLocationOfInterestMOforMapItemIdentifier:identifier3 error:&v45];
        v22 = v45;

        v23 = v22 == 0;
        if (v22)
        {
          v24 = v22;
          *error = v22;
        }

        else
        {
          [visitCopy setLocationOfInterest:v21];
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v34 = transitionsCopy;
          v35 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v42;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v42 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                [*(*(&v41 + 1) + 8 * i) setLocationOfInterest:{v21, v41}];
              }

              v36 = [v34 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v36);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v50 = visitCopy;
              _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "successfully restored visit, %{sensitive}@", buf, 0xCu);
            }
          }
        }

        goto LABEL_29;
      }

      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277D01448];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"requires a non-nil oldCandidate";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v22 = [v30 errorWithDomain:v31 code:7 userInfo:v32];

      v28 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        v33 = v22;
        v23 = 0;
        *error = v22;
        goto LABEL_29;
      }

      v29 = NSStringFromSelector(a2);
      *buf = 138412546;
      v50 = v29;
      v51 = 2112;
      v52 = v22;
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277D01448];
      v53 = *MEMORY[0x277CCA450];
      v54[0] = @"requires a non-nil visit";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v22 = [v25 errorWithDomain:v26 code:7 userInfo:v27];

      v28 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v29 = NSStringFromSelector(a2);
      *buf = 138412546;
      v50 = v29;
      v51 = 2112;
      v52 = v22;
    }

    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

    goto LABEL_16;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v23 = 0;
LABEL_29:

  return v23;
}

- (BOOL)restoreToOldCandidate:(id)candidate error:(id *)error
{
  candidateCopy = candidate;
  v8 = candidateCopy;
  if (error)
  {
    if (candidateCopy)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__RTRelabelerPersister_restoreToOldCandidate_error___block_invoke;
      aBlock[3] = &unk_2788CD838;
      objc_copyWeak(v18, location);
      v18[1] = a2;
      v17 = v8;
      v9 = _Block_copy(aBlock);
      v15 = 0;
      [(RTRelabelerPersister *)self performBlock:v9 error:&v15];
      v10 = v15;
      v11 = v10 == 0;
      if (v10)
      {
        v10 = v10;
        *error = v10;
      }

      objc_destroyWeak(v18);
      objc_destroyWeak(location);
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: oldCandidate", location, 2u);
      }

      _RTErrorInvalidParameterCreate(@"oldCandidate");
      *error = v11 = 0;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", location, 2u);
    }

    v11 = 0;
  }

  return v11;
}

void __52__RTRelabelerPersister_restoreToOldCandidate_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v6 = [*(a1 + 32) firstObject];
      v7 = [v6 identifier];
      v8 = [WeakRetained fetchLearnedLocationOfInterestVisitMOForIdentifier:v7 error:a3];

      if (!*a3)
      {
        v9 = [*(a1 + 32) firstObject];
        v10 = [v9 identifier];
        v11 = [WeakRetained fetchTransitionMOsEndingAtVisitIdentifier:v10 error:a3];

        if (!*a3)
        {
          [WeakRetained restoreVisit:v8 transitions:v11 toOldCandidate:*(a1 + 32) error:a3];
        }
      }
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"swelf is nil";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v8 = [v12 errorWithDomain:v13 code:0 userInfo:v14];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(*(a1 + 48));
        v18 = 138412546;
        v19 = v17;
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, error, %@", &v18, 0x16u);
      }

      v16 = v8;
      *a3 = v8;
    }
  }
}

- (BOOL)performBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if (error)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__101;
    v23 = __Block_byref_object_dispose__101;
    v24 = 0;
    objc_initWeak(&location, self);
    context = [(RTRelabelerPersister *)self context];

    if (context)
    {
      context2 = [(RTRelabelerPersister *)self context];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__RTRelabelerPersister_performBlock_error___block_invoke;
      v14[3] = &unk_2788CD860;
      objc_copyWeak(v17, &location);
      v17[1] = a2;
      v16 = buf;
      v15 = blockCopy;
      [context2 performBlockAndWait:v14];

      v10 = *(v20 + 5);
      v11 = v10 == 0;
      if (v10)
      {
        *error = v10;
      }

      objc_destroyWeak(v17);
    }

    else
    {
      v11 = 0;
    }

    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

void __43__RTRelabelerPersister_performBlock_error___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained context];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    (*(v4 + 16))(v4, v5, &obj);
    objc_storeStrong((v6 + 40), obj);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"swelf is nil";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v10 = [v7 errorWithDomain:v8 code:0 userInfo:v9];

    v11 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v12 = *(*(a1 + 40) + 8);
    v5 = *(v12 + 40);
    *(v12 + 40) = v10;
  }
}

- (BOOL)untrustedVisitMO:(id)o
{
  oCopy = o;
  locationOfInterestSource = [oCopy locationOfInterestSource];
  v6 = ([locationOfInterestSource unsignedIntegerValue] & 0x3FDFDE) == 0;

  locationOfInterestConfidence = [oCopy locationOfInterestConfidence];

  [locationOfInterestConfidence doubleValue];
  v9 = v8;
  relabelerParameters = [(RTRelabelerPersister *)self relabelerParameters];
  [relabelerParameters passthroughThreshold];
  v12 = v11;

  return v9 < v12 && v6;
}

- (double)scoreVisitMO:(id)o
{
  oCopy = o;
  if (oCopy)
  {
    if ([(RTRelabelerPersister *)self untrustedVisitMO:oCopy])
    {
      learnedPlaceParameters = [(RTRelabelerPersister *)self learnedPlaceParameters];
      [learnedPlaceParameters revGeoConfidence];
    }

    else
    {
      locationOfInterestSource = [oCopy locationOfInterestSource];
      unsignedIntegerValue = [locationOfInterestSource unsignedIntegerValue];

      if ((unsignedIntegerValue & 0x2000) != 0)
      {
        learnedPlaceParameters = [oCopy locationOfInterestConfidence];
        [learnedPlaceParameters doubleValue];
      }

      else
      {
        learnedPlaceParameters = [(RTRelabelerPersister *)self learnedPlaceParameters];
        [learnedPlaceParameters nonRevGeoConfidence];
      }
    }

    v8 = v6;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitMO", v12, 2u);
    }

    v8 = -1.79769313e308;
  }

  return v8;
}

- (double)scoreLOIMO:(id)o
{
  v18 = *MEMORY[0x277D85DE8];
  if (!o)
  {
    visits = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(visits, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, visits, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiMO", buf, 2u);
    }

    goto LABEL_14;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  visits = [o visits];
  v5 = [visits countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (!v5)
  {
LABEL_14:
    v8 = -1.79769313e308;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = *v13;
  v8 = -1.79769313e308;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(visits);
      }

      [(RTRelabelerPersister *)self scoreVisitMO:*(*(&v12 + 1) + 8 * i)];
      if (v10 > v8)
      {
        v8 = v10;
      }
    }

    v6 = [visits countByEnumeratingWithState:&v12 objects:v17 count:16];
  }

  while (v6);
LABEL_15:

  return v8;
}

- (BOOL)resnapVisitsWithError:(id *)error
{
  if (error)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "resnapping learned places", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__RTRelabelerPersister_resnapVisitsWithError___block_invoke;
    aBlock[3] = &unk_2788CD888;
    objc_copyWeak(v15, buf);
    v15[1] = a2;
    v7 = _Block_copy(aBlock);
    v13 = 0;
    [(RTRelabelerPersister *)self performBlock:v7 error:&v13];
    v8 = v13;
    v9 = v8 == 0;
    if (v8)
    {
      [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v8];
      [(RTRelabelerPersisterMetrics *)self->_metrics setErrorKey:@"resnappingErroredOut"];
      v10 = v8;
      *error = v8;
    }

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    return 0;
  }

  return v9;
}

void __46__RTRelabelerPersister_resnapVisitsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v158[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    goto LABEL_81;
  }

  v113 = a3;
  v114 = v5;
  v110 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v157 = *MEMORY[0x277CCA450];
    v158[0] = @"swelf is nil";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:&v157 count:1];
    v18 = [v15 errorWithDomain:v16 code:0 userInfo:v17];

    v19 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v106 = NSStringFromSelector(*(v110 + 40));
      *buf = 138412546;
      v154 = v106;
      v155 = 2112;
      v156 = *&v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v20 = v18;
    *v113 = v18;
    goto LABEL_80;
  }

  v7 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  [v7 setFetchBatchSize:10];
  [v7 setReturnsObjectsAsFaults:0];
  v149 = 0;
  v111 = v7;
  v8 = [v7 execute:&v149];
  v9 = v149;
  v112 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [v9 userInfo];
    v12 = [v10 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:v11];

    v13 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v105 = NSStringFromSelector(*(v110 + 40));
      *buf = 138412546;
      v154 = v105;
      v155 = 2112;
      v156 = *&v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, fetch visit MOs error, %@", buf, 0x16u);
    }

    v14 = v12;
    *v113 = v12;
    goto LABEL_79;
  }

  v21 = [MEMORY[0x277CBEB38] dictionary];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v22 = v8;
  v120 = [v22 countByEnumeratingWithState:&v145 objects:v152 count:16];
  if (!v120)
  {

    goto LABEL_77;
  }

  v121 = 0;
  v119 = *v146;
  *&v23 = 138412546;
  v108 = v23;
  v115 = v8;
  v125 = WeakRetained;
  v128 = v21;
  v118 = v22;
  do
  {
    v24 = 0;
    do
    {
      if (*v146 != v119)
      {
        objc_enumerationMutation(v22);
      }

      v25 = *(*(&v145 + 1) + 8 * v24);
      v123 = objc_autoreleasePoolPush();
      v122 = v24;
      if (![WeakRetained untrustedVisitMO:v25])
      {
        goto LABEL_65;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v25 identifier];
          *buf = 138412290;
          v154 = v27;
          _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "resnapping visit identifier, %@", buf, 0xCu);
        }
      }

      v28 = [v25 identifier];
      v144 = 0;
      v117 = [WeakRetained fetchTransitionMOsEndingAtVisitIdentifier:v28 error:&v144];
      v29 = v144;

      if (v29)
      {
        v104 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v107 = NSStringFromSelector(*(v110 + 40));
          *buf = v108;
          v154 = v107;
          v155 = 2112;
          v156 = *&v29;
          _os_log_error_impl(&dword_2304B3000, v104, OS_LOG_TYPE_ERROR, "%@, fetch transition MOs error, %@", buf, 0x16u);

          v8 = v115;
        }

LABEL_74:
        objc_autoreleasePoolPop(v123);
        v121 = v29;
        v22 = v118;
        goto LABEL_75;
      }

      v132 = objc_alloc(MEMORY[0x277D01160]);
      v30 = [v25 locationLatitude];
      [v30 doubleValue];
      v32 = v31;
      v33 = [v25 locationLongitude];
      [v33 doubleValue];
      v35 = v34;
      v36 = [v25 locationHorizontalUncertainty];
      [v36 doubleValue];
      v38 = v37;
      v39 = [v25 locationAltitude];
      [v39 doubleValue];
      v41 = v40;
      v42 = [v25 locationVerticalUncertainty];
      [v42 doubleValue];
      v44 = v43;
      v45 = [v25 locationReferenceFrame];
      v46 = [v45 intValue];
      v47 = [v25 locationSourceAccuracy];
      v48 = [v132 initWithLatitude:0 longitude:v46 horizontalUncertainty:objc_msgSend(v47 altitude:"intValue") verticalUncertainty:v32 date:v35 referenceFrame:v38 speed:v41 sourceAccuracy:{v44, 0.0}];

      v49 = [WeakRetained learnedPlaceParameters];
      [v49 maxDistanceThreshold];
      v143 = 0;
      v129 = v48;
      v50 = [WeakRetained fetchNearbyLocationOfInterestMOsAroundLocation:v48 withinDistance:&v143 error:?];
      v51 = v143;

      v116 = v50;
      if (v51)
      {
        v29 = v51;
        v52 = 0;
        v53 = v121;
        v8 = v115;
        v21 = v128;
        goto LABEL_64;
      }

      v109 = v25;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v54 = v50;
      v21 = v128;
      v127 = [v54 countByEnumeratingWithState:&v139 objects:v151 count:16];
      if (!v127)
      {

        v53 = 0;
        v29 = v121;
        v52 = v121 == 0;
LABEL_62:
        v8 = v115;
        goto LABEL_63;
      }

      v53 = 0;
      v126 = *v140;
      v55 = -1.79769313e308;
      v56 = 1.79769313e308;
      obj = v54;
      while (2)
      {
        v57 = 0;
        do
        {
          v133 = v53;
          if (*v140 != v126)
          {
            objc_enumerationMutation(obj);
          }

          v130 = v57;
          v58 = *(*(&v139 + 1) + 8 * v57);
          context = objc_autoreleasePoolPush();
          v59 = objc_alloc(MEMORY[0x277D01160]);
          v60 = [v58 mapItem];
          v61 = [v60 latitude];
          [v61 doubleValue];
          v63 = v62;
          v64 = [v58 mapItem];
          v65 = [v64 longitude];
          [v65 doubleValue];
          v67 = v66;
          v68 = [v58 mapItem];
          v69 = [v68 uncertainty];
          [v69 doubleValue];
          v71 = v70;
          v72 = [v58 mapItem];
          v73 = [v72 referenceFrame];
          v74 = [v59 initWithLatitude:0 longitude:objc_msgSend(v73 horizontalUncertainty:"intValue") date:v63 referenceFrame:{v67, v71}];

          WeakRetained = v125;
          v75 = [v125 distanceCalculator];
          v138 = 0;
          [v75 distanceFromLocation:v74 toLocation:v129 error:&v138];
          v77 = v76;
          v78 = v138;

          if (v78)
          {
            v88 = MEMORY[0x277CCA9B8];
            v89 = [v78 userInfo];
            v29 = [v88 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:1 userInfo:v89];

            v90 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            v21 = v128;
            v53 = v133;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v102 = NSStringFromSelector(*(v110 + 40));
              *buf = v108;
              v154 = v102;
              v155 = 2112;
              v156 = *&v29;
              _os_log_error_impl(&dword_2304B3000, v90, OS_LOG_TYPE_ERROR, "%@, distance error, %@", buf, 0x16u);

              WeakRetained = v125;
            }

            objc_autoreleasePoolPop(context);
            v8 = v115;
            v87 = obj;
            goto LABEL_42;
          }

          v79 = [v58 identifier];
          v21 = v128;
          v80 = [v128 objectForKeyedSubscript:v79];

          v53 = v133;
          if (v80)
          {
            v81 = [v58 identifier];
            v82 = [v128 objectForKeyedSubscript:v81];
            [v82 doubleValue];
            v84 = v83;
          }

          else
          {
            [v125 scoreLOIMO:v58];
            v84 = v85;
            v81 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            v82 = [v58 identifier];
            [v128 setObject:v81 forKeyedSubscript:v82];
          }

          if (v84 > v55 || v84 == v55 && v77 < v56)
          {
            v86 = v58;

            v56 = v77;
            v55 = v84;
            v53 = v86;
          }

          objc_autoreleasePoolPop(context);
          v57 = v130 + 1;
        }

        while (v127 != v130 + 1);
        v87 = obj;
        v127 = [obj countByEnumeratingWithState:&v139 objects:v151 count:16];
        if (v127)
        {
          continue;
        }

        break;
      }

      v29 = v121;
      v8 = v115;
LABEL_42:

      if (!v29)
      {
        if (!v53)
        {
          v29 = 0;
          v52 = 1;
          goto LABEL_63;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v91 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            v92 = [v53 identifier];
            *buf = v108;
            v154 = v92;
            v155 = 2048;
            v156 = v55;
            _os_log_impl(&dword_2304B3000, v91, OS_LOG_TYPE_INFO, "resnapped to loi identifier, %@, score, %.3f", buf, 0x16u);
          }
        }

        v93 = [v109 locationOfInterestConfidence];
        [v93 doubleValue];
        v95 = v94;

        if (v55 > v95)
        {
          [v109 setLocationOfInterestSource:&unk_28459E820];
        }

        [v109 setLocationOfInterest:v53];
        if (v55 > 0.0)
        {
          v96 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
          [v109 setLocationOfInterestConfidence:v96];
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v97 = v117;
        v98 = [v97 countByEnumeratingWithState:&v134 objects:v150 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v135;
          do
          {
            for (i = 0; i != v99; ++i)
            {
              if (*v135 != v100)
              {
                objc_enumerationMutation(v97);
              }

              [*(*(&v134 + 1) + 8 * i) setLocationOfInterest:v53];
            }

            v99 = [v97 countByEnumeratingWithState:&v134 objects:v150 count:16];
          }

          while (v99);
        }

        v29 = 0;
        v52 = 1;
        goto LABEL_62;
      }

      v52 = 0;
LABEL_63:
      v51 = 0;
LABEL_64:

      v121 = v29;
      if (!v52)
      {
        goto LABEL_74;
      }

LABEL_65:
      objc_autoreleasePoolPop(v123);
      v24 = v122 + 1;
      v22 = v118;
    }

    while (v122 + 1 != v120);
    v103 = [v118 countByEnumeratingWithState:&v145 objects:v152 count:16];
    v120 = v103;
  }

  while (v103);
LABEL_75:

  if (v121)
  {
    *v113 = v121;
    goto LABEL_78;
  }

LABEL_77:
  [v114 save:{v113, v108}];
  v121 = 0;
LABEL_78:

  v12 = v121;
LABEL_79:

  v18 = v112;
LABEL_80:

  v5 = v114;
LABEL_81:
}

- (BOOL)unassociateOldCandidate:(id)candidate error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  v8 = candidateCopy;
  if (error)
  {
    if (candidateCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          firstObject = [v8 firstObject];
          identifier = [firstObject identifier];
          secondObject = [v8 secondObject];
          identifier2 = [secondObject identifier];
          *buf = 138412546;
          v26 = identifier;
          v27 = 2112;
          v28 = identifier2;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "unassociating oldCandidate visit identifier, %@, oldCandidate mapItem identifier, %@", buf, 0x16u);
        }
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__RTRelabelerPersister_unassociateOldCandidate_error___block_invoke;
      aBlock[3] = &unk_2788CD838;
      objc_copyWeak(v24, buf);
      v24[1] = a2;
      v23 = v8;
      v14 = _Block_copy(aBlock);
      v21 = 0;
      [(RTRelabelerPersister *)self performBlock:v14 error:&v21];
      v15 = v21;
      v16 = v15 == 0;
      if (v15)
      {
        [(RTRelabelerPersisterMetrics *)self->_metrics tallyKey:@"numberUnassociatedError"];
        [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v15];
        v17 = v15;
        *error = v15;
      }

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: oldCandidate", buf, 2u);
      }

      _RTErrorInvalidParameterCreate(@"oldCandidate");
      *error = v16 = 0;
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

void __54__RTRelabelerPersister_unassociateOldCandidate_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v6 = [*(a1 + 32) firstObject];
      v7 = [v6 identifier];
      v33 = 0;
      v8 = [WeakRetained fetchLearnedLocationOfInterestVisitMOForIdentifier:v7 error:&v33];
      v9 = v33;

      if (v9)
      {
        v10 = v9;
        *a3 = v9;
      }

      else
      {
        v16 = [*(a1 + 32) firstObject];
        v17 = [v16 identifier];
        v32 = 0;
        v18 = [WeakRetained fetchTransitionMOsEndingAtVisitIdentifier:v17 error:&v32];
        v19 = v32;

        if (v19)
        {
          v20 = v19;
          *a3 = v19;
        }

        else
        {
          [v8 setLocationOfInterest:0];
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v21 = v18;
          v22 = [v21 countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v29;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v29 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                [*(*(&v28 + 1) + 8 * i) setLocationOfInterest:{0, v28}];
              }

              v23 = [v21 countByEnumeratingWithState:&v28 objects:v34 count:16];
            }

            while (v23);
          }

          v26 = [WeakRetained metrics];
          [v26 tallyKey:@"numberUnassociated"];
        }
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v39 = *MEMORY[0x277CCA450];
      v40[0] = @"swelf is nil";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v9 = [v11 errorWithDomain:v12 code:0 userInfo:v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v36 = v27;
        v37 = 2112;
        v38 = v9;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v15 = v9;
      *a3 = v9;
    }
  }
}

- (BOOL)associateNonPlaceholderRelabeledInferredMapItem:(id)item oldCandidate:(id)candidate error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  candidateCopy = candidate;
  if (error)
  {
    if (itemCopy)
    {
      mapItem = [itemCopy mapItem];

      if (mapItem)
      {
        if (candidateCopy)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v12 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              firstObject = [candidateCopy firstObject];
              identifier = [firstObject identifier];
              secondObject = [candidateCopy secondObject];
              identifier2 = [secondObject identifier];
              *buf = 138740483;
              v33 = itemCopy;
              v34 = 2112;
              v35 = identifier;
              v36 = 2112;
              v37 = identifier2;
              _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "associating non placeholder relabeledInferredMapItem %{sensitive}@, oldCandidate visit identifier, %@, oldCandidate mapItem identifier, %@", buf, 0x20u);
            }
          }

          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __91__RTRelabelerPersister_associateNonPlaceholderRelabeledInferredMapItem_oldCandidate_error___block_invoke;
          aBlock[3] = &unk_2788CD8B0;
          objc_copyWeak(v31, buf);
          v31[1] = a2;
          v29 = candidateCopy;
          v30 = itemCopy;
          v17 = _Block_copy(aBlock);
          v27 = 0;
          [(RTRelabelerPersister *)self performBlock:v17 error:&v27];
          v18 = v27;
          v19 = v18 == 0;
          if (v18)
          {
            [(RTRelabelerPersisterMetrics *)self->_metrics tallyKey:@"numberOfNonPlaceholderError"];
            [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v18];
            v20 = v18;
            *error = v18;
          }

          objc_destroyWeak(v31);
          objc_destroyWeak(buf);
          goto LABEL_25;
        }

        v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: oldCandidate", buf, 2u);
        }

        v23 = _RTErrorInvalidParameterCreate(@"oldCandidate");
      }

      else
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeledInferredMapItem.mapItem", buf, 2u);
        }

        v23 = _RTErrorInvalidParameterCreate(@"relabeledInferredMapItem.mapItem");
      }
    }

    else
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeledInferredMapItem", buf, 2u);
      }

      v23 = _RTErrorInvalidParameterCreate(@"relabeledInferredMapItem");
    }

    v19 = 0;
    *error = v23;
    goto LABEL_25;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v19 = 0;
LABEL_25:

  return v19;
}

void __91__RTRelabelerPersister_associateNonPlaceholderRelabeledInferredMapItem_oldCandidate_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v59[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v6 = [*(a1 + 32) firstObject];
      v7 = [v6 identifier];
      v52 = 0;
      v8 = [WeakRetained fetchLearnedLocationOfInterestVisitMOForIdentifier:v7 error:&v52];
      v9 = v52;

      if (v9)
      {
        v10 = v9;
        *a3 = v9;
      }

      else
      {
        v16 = [*(a1 + 32) firstObject];
        v17 = [v16 identifier];
        v51 = 0;
        v18 = [WeakRetained fetchTransitionMOsEndingAtVisitIdentifier:v17 error:&v51];
        v19 = v51;

        if (v19)
        {
          v20 = v19;
          *a3 = v19;
        }

        else
        {
          v44 = v18;
          v21 = [*(a1 + 40) mapItem];
          v22 = [v21 identifier];
          v50 = 0;
          v23 = [WeakRetained fetchLocationOfInterestMOforMapItemIdentifier:v22 error:&v50];
          v24 = v50;

          if (v24)
          {
            v25 = v24;
            *a3 = v24;
          }

          else
          {
            v26 = [*(a1 + 32) secondObject];
            v27 = [v26 identifier];
            v49 = 0;
            v43 = [WeakRetained fetchLocationOfInterestMOforMapItemIdentifier:v27 error:&v49];
            v24 = v49;

            if (v24)
            {
              v28 = v24;
              *a3 = v24;
            }

            else
            {
              v30 = [v43 identifier];
              v31 = [v23 identifier];
              v32 = [v30 isEqual:v31];

              v33 = [WeakRetained metrics];
              v34 = v33;
              if (v32)
              {
                v35 = @"numberOfNonPlaceholderSame";
              }

              else
              {
                v35 = @"numberOfNonPlaceholderDifferent";
              }

              [v33 tallyKey:{v35, v43}];

              [v8 setLocationOfInterest:v23];
              v36 = MEMORY[0x277CCABB0];
              [*(a1 + 40) confidence];
              v37 = [v36 numberWithDouble:?];
              [v8 setLocationOfInterestConfidence:v37];

              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v38 = v44;
              v39 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v46;
                do
                {
                  for (i = 0; i != v40; ++i)
                  {
                    if (*v46 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    [*(*(&v45 + 1) + 8 * i) setLocationOfInterest:v23];
                  }

                  v40 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
                }

                while (v40);
              }
            }
          }

          v18 = v44;
        }
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v58 = *MEMORY[0x277CCA450];
      v59[0] = @"swelf is nil";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      v9 = [v11 errorWithDomain:v12 code:0 userInfo:v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v55 = v29;
        v56 = 2112;
        v57 = v9;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v15 = v9;
      *a3 = v9;
    }
  }
}

- (id)rollLOIIdentifier:(id)identifier context:(id)context error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v10 = contextCopy;
  if (!error)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v20 = 0;
    goto LABEL_22;
  }

  if (!identifierCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiIdentifier", buf, 2u);
    }

    v23 = @"loiIdentifier";
    goto LABEL_18;
  }

  if (!contextCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v23 = @"context";
LABEL_18:
    _RTErrorInvalidParameterCreate(v23);
    *error = v20 = 0;
    goto LABEL_22;
  }

  v11 = [(RTRelabelerPersister *)self rollUUIDGivenUUID:identifierCopy];
  v12 = 100;
  while (1)
  {
    v27 = 0;
    v13 = [(RTRelabelerPersister *)self uuidConflicts:v11 context:v10 error:&v27];
    v14 = v27;
    v15 = v14;
    if (!v13)
    {
      v11 = v11;
      v20 = v11;
      goto LABEL_21;
    }

    if (v14)
    {
      break;
    }

    v16 = [(RTRelabelerPersister *)self rollUUIDGivenUUID:v11];

    v11 = v16;
    if (!--v12)
    {
      v17 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"could not roll LOI identifier without exceeding max limit";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v15 = [v17 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:0 userInfo:v18];

      v19 = v15;
      v20 = 0;
      *error = v15;
      v11 = v16;
      goto LABEL_21;
    }
  }

  v25 = v14;
  v20 = 0;
  *error = v15;
LABEL_21:

LABEL_22:

  return v20;
}

- (id)rollUUIDGivenUUID:(id)d
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v8[0] = 0;
    v8[1] = 0;
    [d getUUIDBytes:v8];
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:16];
    CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), v7);
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v7];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)uuidConflicts:(id)conflicts context:(id)context error:(id *)error
{
  conflictsCopy = conflicts;
  contextCopy = context;
  v9 = contextCopy;
  if (!error)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_16;
  }

  if (!conflictsCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid", v22, 2u);
    }

    v17 = @"uuid";
    goto LABEL_15;
  }

  if (!contextCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v21, 2u);
    }

    v17 = @"context";
LABEL_15:
    *error = _RTErrorInvalidParameterCreate(v17);
LABEL_16:
    v14 = 1;
    goto LABEL_19;
  }

  v10 = +[RTLearnedLocationOfInterestMO fetchRequest];
  conflictsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", conflictsCopy];
  [v10 setPredicate:conflictsCopy];

  v20 = 0;
  v12 = [v9 countForFetchRequest:v10 error:&v20];
  v13 = v20;
  if (v13)
  {
    v13 = v13;
    *error = v13;
    v14 = 1;
  }

  else
  {
    v14 = v12 != 0;
  }

LABEL_19:
  return v14;
}

- (BOOL)associatePlaceholderRelabeledInferredMapItem:(id)item oldCandidate:(id)candidate error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  candidateCopy = candidate;
  if (error)
  {
    if (!itemCopy)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeledInferredMapItem", buf, 2u);
      }

      v13 = _RTErrorInvalidParameterCreate(@"relabeledInferredMapItem");
      goto LABEL_13;
    }

    mapItem = [itemCopy mapItem];

    if (mapItem)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !relabeledInferredMapItem.mapItem", buf, 2u);
      }

      v13 = _RTErrorInvalidParameterCreate(@"!relabeledInferredMapItem.mapItem");
LABEL_13:
      v15 = 0;
      *error = v13;
      goto LABEL_14;
    }

    if (!candidateCopy)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: oldCandidate", buf, 2u);
      }

      v13 = _RTErrorInvalidParameterCreate(@"oldCandidate");
      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        firstObject = [candidateCopy firstObject];
        identifier = [firstObject identifier];
        secondObject = [candidateCopy secondObject];
        identifier2 = [secondObject identifier];
        *buf = 138740483;
        v33 = itemCopy;
        v34 = 2112;
        v35 = identifier;
        v36 = 2112;
        v37 = identifier2;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "associating placeholder relabeledInferredMapItem %{sensitive}@, oldCandidate visit identifier, %@, oldCandidate mapItem identifier, %@", buf, 0x20u);
      }
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__RTRelabelerPersister_associatePlaceholderRelabeledInferredMapItem_oldCandidate_error___block_invoke;
    aBlock[3] = &unk_2788CD8B0;
    objc_copyWeak(v31, buf);
    v31[1] = a2;
    v29 = candidateCopy;
    v30 = itemCopy;
    v23 = _Block_copy(aBlock);
    v27 = 0;
    [(RTRelabelerPersister *)self performBlock:v23 error:&v27];
    v24 = v27;
    v15 = v24 == 0;
    if (v24)
    {
      [(RTRelabelerPersisterMetrics *)self->_metrics tallyKey:@"numberOfPlaceholderError"];
      [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v24];
      v25 = v24;
      *error = v24;
    }

    objc_destroyWeak(v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v15 = 0;
  }

LABEL_14:

  return v15;
}

void __88__RTRelabelerPersister_associatePlaceholderRelabeledInferredMapItem_oldCandidate_error___block_invoke(uint64_t a1, void *a2, RTLearnedLocationOfInterest **a3)
{
  v138[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = [*(a1 + 32) firstObject];
    v8 = [v7 identifier];
    v131 = 0;
    v9 = [WeakRetained fetchLearnedLocationOfInterestVisitMOForIdentifier:v8 error:&v131];
    v10 = v131;

    if (v10)
    {
      v11 = v10;
      *a3 = v10;
      goto LABEL_18;
    }

    v16 = [*(a1 + 32) firstObject];
    v17 = [v16 identifier];
    v130 = 0;
    v18 = [WeakRetained fetchTransitionMOsEndingAtVisitIdentifier:v17 error:&v130];
    v19 = v130;

    if (v19)
    {
      v20 = v19;
      *a3 = v19;
LABEL_17:

      v10 = 0;
      goto LABEL_18;
    }

    v111 = a3;
    v113 = v5;
    v114 = v18;
    v21 = [*(a1 + 32) firstObject];
    v22 = [v21 location];
    v23 = [v22 location];
    v24 = [WeakRetained relabelerPersisterParameters];
    [v24 placeholderCollapseDistanceThreshold];
    v26 = v25;
    v27 = [WeakRetained distanceCalculator];
    v129 = 0;
    v28 = [WeakRetained fetchClosestUnconcreteLocationOfInterestMOToLocation:v23 withinDistance:v27 distanceCalculator:&v129 error:v26];
    v29 = v129;

    v112 = v29;
    if (v29)
    {
      v30 = [WeakRetained metrics];
      [v30 tallyError:v29];

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"error in %@, %@", @"unconcrete loi fetch", v29];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v64 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v134 = v64;
        v135 = 2112;
        v136 = v31;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@,%@", buf, 0x16u);
      }

      v33 = *(a1 + 32);
      v128 = 0;
      v18 = v114;
      [WeakRetained restoreVisit:v9 transitions:v114 toOldCandidate:v33 error:&v128];
      v34 = v128;
      if (!v34)
      {
        v35 = [WeakRetained metrics];
        [v35 tallyKey:@"numberOfPlaceholderUnintendedRestored"];
      }

      v36 = v34;
      *v111 = v34;

      goto LABEL_14;
    }

    if (v28)
    {
      v37 = v28;
      v38 = [WeakRetained metrics];
      [v38 tallyKey:@"numberOfPlaceholderCollapsed"];

      v18 = v114;
LABEL_21:
      [v9 setLocationOfInterest:v37];
      v39 = MEMORY[0x277CCABB0];
      [*(a1 + 40) confidence];
      v40 = [v39 numberWithDouble:?];
      [v9 setLocationOfInterestConfidence:v40];

      [v9 setLocationOfInterestSource:&unk_28459E838];
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v31 = v18;
      v41 = [(RTLearnedLocationOfInterest *)v31 countByEnumeratingWithState:&v115 objects:v132 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v116;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v116 != v43)
            {
              objc_enumerationMutation(v31);
            }

            [*(*(&v115 + 1) + 8 * i) setLocationOfInterest:v37];
          }

          v42 = [(RTLearnedLocationOfInterest *)v31 countByEnumeratingWithState:&v115 objects:v132 count:16];
        }

        while (v42);
        v18 = v114;
      }

      goto LABEL_15;
    }

    v45 = *(a1 + 32);
    v46 = [WeakRetained relabelerParameters];
    [v46 passthroughThreshold];
    v47 = [RTRelabeler placeholderCandidate:v45 knownPlaceTypeThreshold:?];

    v48 = *(a1 + 32);
    if (v47)
    {
      v127 = 0;
      v18 = v114;
      [WeakRetained restoreVisit:v9 transitions:v114 toOldCandidate:v48 error:&v127];
      v31 = v127;
      if (!v31)
      {
        v49 = MEMORY[0x277CCABB0];
        [*(a1 + 40) confidence];
        v50 = [v49 numberWithDouble:?];
        [v9 setLocationOfInterestConfidence:v50];

        [v9 setLocationOfInterestSource:&unk_28459E838];
        v51 = [WeakRetained metrics];
        [v51 tallyKey:@"numberOfPlaceholderIntendedRestored"];
      }

      v52 = v31;
      v37 = 0;
      *v111 = v31;
      goto LABEL_15;
    }

    v53 = [*(a1 + 32) secondObject];
    v54 = [v53 identifier];
    v126 = 0;
    v55 = [WeakRetained fetchLearnedPlaceMOforMapItemIdentifier:v54 error:&v126];
    v31 = v126;

    if (v31)
    {
      v56 = [WeakRetained metrics];
      [v56 tallyError:v31];

      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"error in %@, %@", @"learned place fetch", v31];
      v58 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 56));
        v97 = v96 = v57;
        *buf = 138412546;
        v134 = v97;
        v135 = 2112;
        v136 = v96;
        _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@,%@", buf, 0x16u);

        v57 = v96;
      }

      v28 = 0;

      v59 = *(a1 + 32);
      v125 = 0;
      v18 = v114;
      [WeakRetained restoreVisit:v9 transitions:v114 toOldCandidate:v59 error:&v125];
      v60 = v125;
      if (!v60)
      {
        [WeakRetained metrics];
        v62 = v61 = v57;
        [v62 tallyKey:@"numberOfPlaceholderUnintendedRestored"];

        v57 = v61;
      }

      v63 = v60;
      *v111 = v60;
    }

    else
    {
      v65 = [*(a1 + 32) firstObject];
      v66 = [v55 creationDate];
      v67 = [v55 expirationDate];
      v124 = 0;
      v110 = [WeakRetained learnedPlaceForVisit:v65 creationDate:v66 expirationDate:v67 context:v113 error:&v124];
      v31 = v124;

      if (!v31)
      {
        v76 = [*(a1 + 32) secondObject];
        v77 = [v76 identifier];
        v122 = 0;
        v78 = [WeakRetained fetchLocationOfInterestMOforMapItemIdentifier:v77 error:&v122];
        v79 = v122;

        v107 = v79;
        v108 = v78;
        if (v79)
        {
          v80 = [WeakRetained metrics];
          [v80 tallyError:v79];

          v109 = [MEMORY[0x277CCACA8] stringWithFormat:@"error in %@, %@", @"old LOI lookup", v79];
          v81 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          v18 = v114;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v103 = NSStringFromSelector(*(a1 + 56));
            *buf = 138412546;
            v134 = v103;
            v135 = 2112;
            v136 = v109;
            _os_log_error_impl(&dword_2304B3000, v81, OS_LOG_TYPE_ERROR, "%@,%@", buf, 0x16u);
          }

          v28 = 0;

          v82 = *(a1 + 32);
          v121 = 0;
          [WeakRetained restoreVisit:v9 transitions:v114 toOldCandidate:v82 error:&v121];
          v83 = v121;
          if (!v83)
          {
            v84 = [WeakRetained metrics];
            [v84 tallyKey:@"numberOfPlaceholderUnintendedRestored"];
          }

          v85 = v83;
          v37 = 0;
          v86 = 0;
          *v111 = v83;
        }

        else
        {
          v28 = 0;
          v87 = [v78 identifier];
          v120 = 0;
          v83 = [WeakRetained rollLOIIdentifier:v87 context:v113 error:&v120];
          v88 = v120;

          v86 = v88 == 0;
          v109 = v88;
          if (v88)
          {
            v89 = [WeakRetained metrics];
            [v89 tallyError:v88];

            v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"error in %@, %@", @"rolling identifier", v88];
            v91 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
            v18 = v114;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(*(a1 + 56));
              v104 = v106 = v90;
              *buf = 138412546;
              v134 = v104;
              v135 = 2112;
              v136 = v106;
              _os_log_error_impl(&dword_2304B3000, v91, OS_LOG_TYPE_ERROR, "%@,%@", buf, 0x16u);

              v90 = v106;
            }

            v92 = *(a1 + 32);
            v119 = 0;
            [WeakRetained restoreVisit:v9 transitions:v114 toOldCandidate:v92 error:&v119];
            v93 = v119;
            if (!v93)
            {
              [WeakRetained metrics];
              v94 = v105 = v90;
              [v94 tallyKey:@"numberOfPlaceholderUnintendedRestored"];

              v90 = v105;
            }

            v95 = v93;
            *v111 = v93;

            v37 = 0;
          }

          else
          {
            v98 = [RTLearnedLocationOfInterest alloc];
            v99 = [*(a1 + 32) firstObject];
            v100 = [v99 location];
            v90 = [(RTLearnedLocationOfInterest *)v98 initWithIdentifier:v83 location:v100 place:v110 visits:0 transitions:0];

            v37 = [(RTLearnedLocationOfInterest *)v90 managedObjectWithContext:v113];
            v18 = v114;
          }
        }

        if (!v86)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      v68 = [WeakRetained metrics];
      [v68 tallyError:v31];

      v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"error in %@, %@", @"learned place lookup", v31];
      v70 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 56));
        v102 = v101 = v69;
        *buf = 138412546;
        v134 = v102;
        v135 = 2112;
        v136 = v101;
        _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "%@,%@", buf, 0x16u);

        v69 = v101;
      }

      v28 = 0;

      v71 = *(a1 + 32);
      v123 = 0;
      v18 = v114;
      [WeakRetained restoreVisit:v9 transitions:v114 toOldCandidate:v71 error:&v123];
      v72 = v123;
      if (!v72)
      {
        [WeakRetained metrics];
        v74 = v73 = v69;
        [v74 tallyKey:@"numberOfPlaceholderUnintendedRestored"];

        v69 = v73;
      }

      v75 = v72;
      *v111 = v72;
    }

LABEL_14:
    v37 = 0;
LABEL_15:

LABEL_16:
    v19 = 0;
    v5 = v113;
    goto LABEL_17;
  }

  v12 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277D01448];
  v137 = *MEMORY[0x277CCA450];
  v138[0] = @"strongified welf not retained";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:&v137 count:1];
  v10 = [v12 errorWithDomain:v13 code:0 userInfo:v14];

  v9 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412546;
    v134 = v15;
    v135 = 2112;
    v136 = v10;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
  }

LABEL_18:
}

- (BOOL)useRelabeledInferredMapItem:(id)item oldCandidate:(id)candidate associate:(BOOL)associate error:(id *)error
{
  associateCopy = associate;
  v41 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  candidateCopy = candidate;
  v12 = candidateCopy;
  if (error)
  {
    if (itemCopy)
    {
      if (candidateCopy)
      {
        if (associateCopy)
        {
          mapItem = [itemCopy mapItem];

          if (mapItem)
          {
            v29 = 0;
            v14 = &v29;
            [(RTRelabelerPersister *)self associateNonPlaceholderRelabeledInferredMapItem:itemCopy oldCandidate:v12 error:&v29];
          }

          else
          {
            v28 = 0;
            v14 = &v28;
            [(RTRelabelerPersister *)self associatePlaceholderRelabeledInferredMapItem:itemCopy oldCandidate:v12 error:&v28];
          }
        }

        else
        {
          v30 = 0;
          v14 = &v30;
          [(RTRelabelerPersister *)self unassociateOldCandidate:candidateCopy error:&v30];
        }

        v20 = *v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            firstObject = [v12 firstObject];
            identifier = [firstObject identifier];
            secondObject = [v12 secondObject];
            identifier2 = [secondObject identifier];
            *buf = 138740995;
            v32 = itemCopy;
            v33 = 2112;
            v34 = identifier;
            v35 = 2112;
            v36 = identifier2;
            v37 = 2048;
            v38 = associateCopy;
            v39 = 2112;
            v40 = v20;
            _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "used relabelInferredMapItem, %{sensitive}@, oldCandidate visit identifier, %@, oldCandidate map item identifier, %@, associate, %lu, error, %@", buf, 0x34u);
          }
        }

        v16 = v20 == 0;
        if (v20)
        {
          v22 = v20;
          *error = v20;
        }

        goto LABEL_26;
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: oldCandidate", buf, 2u);
      }

      v18 = @"oldCandidate";
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: relabeledInferredMapItem", buf, 2u);
      }

      v18 = @"relabeledInferredMapItem";
    }

    _RTErrorInvalidParameterCreate(v18);
    *error = v16 = 0;
    goto LABEL_26;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (BOOL)combineOverlappingRevGeoLOIsStabilized:(BOOL *)stabilized error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  if (error)
  {
    if (stabilized)
    {
      *v20 = 0;
      v21 = v20;
      v22 = 0x2020000000;
      v23 = 1;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__RTRelabelerPersister_combineOverlappingRevGeoLOIsStabilized_error___block_invoke;
      aBlock[3] = &unk_2788CD8D8;
      objc_copyWeak(v18, &location);
      v18[1] = a2;
      aBlock[4] = self;
      aBlock[5] = v20;
      v8 = _Block_copy(aBlock);
      v16 = 0;
      [(RTRelabelerPersister *)self performBlock:v8 error:&v16];
      v9 = v16;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v9;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "relabeling combined with error, %@", buf, 0xCu);
        }
      }

      v11 = v9 == 0;
      if (v9)
      {
        [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v9];
        [(RTRelabelerPersisterMetrics *)self->_metrics setErrorKey:@"combineErroredOut"];
        v12 = v9;
        *error = v9;
      }

      else
      {
        *stabilized = v21[24];
      }

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
      _Block_object_dispose(v20, 8);
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stabilized", v20, 2u);
      }

      _RTErrorInvalidParameterCreate(@"stabilized");
      *error = v11 = 0;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v20, 2u);
    }

    return 0;
  }

  return v11;
}

void __69__RTRelabelerPersister_combineOverlappingRevGeoLOIsStabilized_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v137[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v104 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (!WeakRetained)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277D01448];
      v136 = *MEMORY[0x277CCA450];
      v137[0] = @"swelf is nil";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:&v136 count:1];
      v6 = [v22 errorWithDomain:v23 code:0 userInfo:v24];

      v25 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v83 = NSStringFromSelector(*(v104 + 56));
        *buf = 138412546;
        v133 = v83;
        v134 = 2112;
        v135 = v6;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v26 = v6;
      *a3 = v6;
      goto LABEL_79;
    }

    if ([v5 save:a3])
    {
      v6 = +[RTLearnedLocationOfInterestMO fetchRequest];
      v7 = MEMORY[0x277CCA9C0];
      v8 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"visits"];
      v131 = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
      v10 = [v7 expressionForFunction:@"count:" arguments:v9];

      v11 = objc_alloc_init(MEMORY[0x277CBE410]);
      [v11 setName:@"visitCount"];
      v95 = v10;
      [v11 setExpression:v10];
      [v11 setExpressionResultType:200];
      v130[0] = @"identifier";
      v130[1] = @"placeCreationDate";
      v94 = v11;
      v130[2] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:3];
      [v6 setPropertiesToFetch:v12];

      [v6 setResultType:2];
      [v6 setReturnsObjectsAsFaults:1];
      [v6 setFetchBatchSize:1];
      v124 = 0;
      v13 = [v5 executeFetchRequest:v6 error:&v124];
      v14 = v124;
      v15 = v14;
      if (v14)
      {
        v16 = v13;
        v17 = MEMORY[0x277CCA9B8];
        v18 = [v14 userInfo];
        v19 = [v17 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:v18];

        v20 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v84 = NSStringFromSelector(*(v104 + 56));
          *buf = 138412546;
          v133 = v84;
          v134 = 2112;
          v135 = v19;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v21 = v19;
        *a3 = v19;
        goto LABEL_78;
      }

      v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"visitCount" ascending:0];
      v129[0] = v27;
      v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"placeCreationDate" ascending:1];
      v129[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];
      v30 = [v13 sortedArrayUsingDescriptors:v29];

      v19 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v30, "count")}];
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v16 = v30;
      v31 = [v16 countByEnumeratingWithState:&v120 objects:v128 count:16];
      v32 = v16;
      v99 = v31;
      if (!v31)
      {
        goto LABEL_76;
      }

      v96 = 0;
      v98 = *v121;
      v33 = v104;
      v34 = 0x2788C1000uLL;
      v88 = a3;
      v89 = v5;
      v87 = v6;
      v93 = v16;
      v103 = v19;
LABEL_13:
      v35 = 0;
      while (1)
      {
        if (*v121 != v98)
        {
          objc_enumerationMutation(v16);
        }

        v100 = v35;
        v36 = *(*(&v120 + 1) + 8 * v35);
        context = objc_autoreleasePoolPush();
        v37 = [v36 objectForKeyedSubscript:@"identifier"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v133 = v37;
            _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "collapsing loi identifier, %@", buf, 0xCu);
          }
        }

        v39 = [v19 member:v37];

        if (!v39)
        {
          break;
        }

        v40 = v37;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "already processed", buf, 2u);
          }

LABEL_40:
        }

        objc_autoreleasePoolPop(context);
LABEL_42:
        v35 = v100 + 1;
        if (v100 + 1 == v99)
        {
          v78 = [v16 countByEnumeratingWithState:&v120 objects:v128 count:16];
          v99 = v78;
          if (v78)
          {
            goto LABEL_13;
          }

LABEL_74:

          if (v96)
          {
            v32 = v96;
            *a3 = v32;
LABEL_76:
          }

          v15 = 0;
LABEL_78:

LABEL_79:
          goto LABEL_80;
        }
      }

      v42 = [*(v34 + 2080) fetchRequest];
      [v42 setReturnsObjectsAsFaults:0];
      [v42 setFetchLimit:1];
      v97 = v37;
      v86 = v37;
      v41 = v42;
      v43 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", v86];
      [v41 setPredicate:v43];

      v119 = 0;
      v44 = [v41 execute:&v119];
      v45 = v119;
      v46 = [v44 firstObject];

      if (v45)
      {
        v79 = MEMORY[0x277CCA9B8];
        v80 = [v45 userInfo];
        v81 = [v79 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:v80];

        v82 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(*(v104 + 56));
          v85 = v92 = v41;
          *buf = 138412546;
          v133 = v85;
          v134 = 2112;
          v135 = v81;
          _os_log_error_impl(&dword_2304B3000, v82, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

          v41 = v92;
        }

        objc_autoreleasePoolPop(context);
        v96 = v81;
        goto LABEL_74;
      }

      if (v46)
      {
        if ([*(v33 + 32) unconcreteLOIMO:v46])
        {
          v47 = [WeakRetained distanceCalculator];
          v118 = 0;
          v48 = [WeakRetained fetchOverlappingUnconcreteLocationOfInterestMOsForLOIMO:v46 distanceCalculator:v47 unusableIdentifiers:v19 error:&v118];
          v49 = v118;

          if (v49)
          {
            v50 = v49;
            v51 = v96;
            v96 = v50;
            v52 = v97;
          }

          else
          {
            v91 = v41;
            v52 = v97;
            [v19 addObject:v97];
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            obj = v48;
            v56 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
            if (v56)
            {
              v57 = v56;
              v90 = v48;
              v58 = *v115;
              do
              {
                for (i = 0; i != v57; ++i)
                {
                  if (*v115 != v58)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v60 = *(*(&v114 + 1) + 8 * i);
                  v61 = objc_autoreleasePoolPush();
                  v110 = 0u;
                  v111 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v62 = [v60 visits];
                  v63 = [v62 set];
                  v64 = [v63 allObjects];

                  v65 = [v64 countByEnumeratingWithState:&v110 objects:v126 count:16];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = *v111;
                    do
                    {
                      for (j = 0; j != v66; ++j)
                      {
                        if (*v111 != v67)
                        {
                          objc_enumerationMutation(v64);
                        }

                        [*(*(&v110 + 1) + 8 * j) setLocationOfInterest:v46];
                      }

                      v66 = [v64 countByEnumeratingWithState:&v110 objects:v126 count:16];
                    }

                    while (v66);
                  }

                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v69 = [v60 transitions];
                  v70 = [v69 allObjects];

                  v71 = [v70 countByEnumeratingWithState:&v106 objects:v125 count:16];
                  if (v71)
                  {
                    v72 = v71;
                    v73 = *v107;
                    do
                    {
                      for (k = 0; k != v72; ++k)
                      {
                        if (*v107 != v73)
                        {
                          objc_enumerationMutation(v70);
                        }

                        [*(*(&v106 + 1) + 8 * k) setLocationOfInterest:v46];
                      }

                      v72 = [v70 countByEnumeratingWithState:&v106 objects:v125 count:16];
                    }

                    while (v72);
                  }

                  v75 = [v60 identifier];
                  [v103 addObject:v75];

                  v76 = [WeakRetained metrics];
                  [v76 tallyKey:@"numberOfLOIsCollapsed"];

                  v33 = v104;
                  *(*(*(v104 + 40) + 8) + 24) = 0;
                  objc_autoreleasePoolPop(v61);
                }

                v57 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
              }

              while (v57);
              a3 = v88;
              v5 = v89;
              v6 = v87;
              v19 = v103;
              v52 = v97;
              v49 = 0;
              v41 = v91;
              v48 = v90;
            }

            v51 = obj;
          }

          objc_autoreleasePoolPop(context);
          v77 = v49;
          v16 = v93;
          v34 = 0x2788C1000;
          if (v77)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v54 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "not an unconcrete loi", buf, 2u);
          }
        }

        v55 = [v46 identifier];
        [v19 addObject:v55];

        v40 = v97;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "was deleted", buf, 2u);
          }
        }

        v40 = v97;
        [v19 addObject:v97];
      }

      v34 = 0x2788C1000;
      goto LABEL_40;
    }

LABEL_80:
  }
}

- (BOOL)cleanUpWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (error)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__RTRelabelerPersister_cleanUpWithError___block_invoke;
    aBlock[3] = &unk_2788CD888;
    objc_copyWeak(v15, &location);
    v15[1] = a2;
    v6 = _Block_copy(aBlock);
    v13 = 0;
    [(RTRelabelerPersister *)self performBlock:v6 error:&v13];
    v7 = v13;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "relabeling cleaned up with error, %@", buf, 0xCu);
      }
    }

    v9 = v7 == 0;
    if (v7)
    {
      [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v7];
      [(RTRelabelerPersisterMetrics *)self->_metrics setErrorKey:@"cleanUpErroredOut"];
      v10 = v7;
      *error = v7;
    }

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    return 0;
  }

  return v9;
}

void __41__RTRelabelerPersister_cleanUpWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v92[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v64 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v91 = *MEMORY[0x277CCA450];
      v92[0] = @"swelf is nil";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
      v19 = [v16 errorWithDomain:v17 code:0 userInfo:v18];

      v20 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v60 = NSStringFromSelector(*(v64 + 40));
        *buf = 138412546;
        v88 = v60;
        v89 = 2112;
        v90 = v19;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v21 = v19;
      *a3 = v19;
      v7 = v19;
LABEL_41:

      goto LABEL_42;
    }

    v7 = +[RTLearnedLocationOfInterestMO fetchRequest];
    [v7 setReturnsObjectsAsFaults:1];
    [v7 setFetchBatchSize:1];
    v82 = 0;
    v8 = [v7 execute:&v82];
    v9 = v82;
    v63 = v9;
    if (v9)
    {
      v10 = v7;
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v9 userInfo];
      v13 = [v11 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:2 userInfo:v12];

      v14 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v59 = NSStringFromSelector(*(v64 + 40));
        *buf = 138412546;
        v88 = v59;
        v89 = 2112;
        v90 = v13;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v15 = v13;
      *a3 = v13;
      v7 = v10;
LABEL_40:

      goto LABEL_41;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v13 = v8;
    v22 = [v13 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (!v22)
    {
      goto LABEL_40;
    }

    v23 = v22;
    v61 = v8;
    v62 = v7;
    v24 = *v79;
    v65 = *MEMORY[0x277CCA450];
    v66 = *v79;
    v67 = v13;
LABEL_12:
    v25 = 0;
    v68 = v23;
    while (1)
    {
      if (*v79 != v24)
      {
        objc_enumerationMutation(v13);
      }

      v26 = *(*(&v78 + 1) + 8 * v25);
      v27 = [v26 visits];
      if ([v27 count])
      {
      }

      else
      {
        v28 = [v26 transitions];
        v29 = [v28 count];

        if (!v29)
        {
          v55 = [v26 placeType];
          v56 = [v55 unsignedIntegerValue];

          if (!v56)
          {
            v57 = [WeakRetained metrics];
            [v57 tallyKey:@"numberOfLOIsCleanedUp"];

            [v5 deleteObject:v26];
          }

          goto LABEL_37;
        }
      }

      v30 = [v26 visits];
      v31 = [v30 count];

      if (v31)
      {
        v32 = [v26 visits];
        [v32 array];
        v34 = v33 = v26;
        v35 = [RTRelabelerPersister locationFromAggregateVisits:v34];

        [v33 updateWithLearnedLocation:v35];
      }

      else
      {
        v36 = MEMORY[0x277CCACA8];
        v37 = [v26 identifier];
        v38 = [v36 stringWithFormat:@"LOI found with zero visits and non zero transitions, identifier, %@", v37];

        v39 = MEMORY[0x277CCA9B8];
        v84 = v65;
        v85 = v38;
        v70 = v38;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v41 = [v39 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:7 userInfo:v40];

        v42 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v58 = NSStringFromSelector(*(v64 + 40));
          *buf = 138412546;
          v88 = v58;
          v89 = 2112;
          v90 = v41;
          _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v72 = v25;

        if (v41)
        {
          v43 = [WeakRetained metrics];
          [v43 tallyError:v41];
        }

        v69 = v41;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v71 = v26;
        v44 = [v26 transitions];
        v45 = [v44 allObjects];

        v46 = [v45 countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v75;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v75 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v74 + 1) + 8 * i);
              v51 = [v50 visitIdentifierDestination];
              v73 = 0;
              v52 = [WeakRetained fetchLearnedLocationOfInterestVisitMOForIdentifier:v51 error:&v73];
              v53 = v73;

              if (v53)
              {
                [v5 deleteObject:v50];
                v54 = [WeakRetained metrics];
                [v54 tallyError:v53];
              }

              else
              {
                v54 = [v52 locationOfInterest];
                [v50 setLocationOfInterest:v54];
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v74 objects:v83 count:16];
          }

          while (v47);
        }

        [v5 deleteObject:v71];
        v24 = v66;
        v13 = v67;
        v23 = v68;
        v25 = v72;
      }

LABEL_37:
      if (++v25 == v23)
      {
        v23 = [v13 countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (!v23)
        {
          v8 = v61;
          v7 = v62;
          goto LABEL_40;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_42:
}

- (BOOL)iterativelyCollapseOverlappingRevGeoLOIsWithError:(id *)error
{
  if (error)
  {
    v16 = 0;
    [(RTRelabelerPersister *)self cleanUpWithError:&v16];
    v5 = v16;
    if (v5)
    {
LABEL_3:
      v6 = v5;
      v7 = 0;
      *error = v5;
    }

    else
    {
      buf[0] = 0;
      v8 = -1;
      while (1)
      {
        relabelerPersisterParameters = [(RTRelabelerPersister *)self relabelerPersisterParameters];
        maxCollapseIterations = [relabelerPersisterParameters maxCollapseIterations];

        if (++v8 >= maxCollapseIterations)
        {
LABEL_12:
          v6 = 0;
          v7 = 1;
          goto LABEL_14;
        }

        v15 = 0;
        [(RTRelabelerPersister *)self combineOverlappingRevGeoLOIsStabilized:buf error:&v15];
        v11 = v15;
        if (v11)
        {
          break;
        }

        v14 = 0;
        [(RTRelabelerPersister *)self cleanUpWithError:&v14];
        v5 = v14;
        if (v5)
        {
          goto LABEL_3;
        }

        [(RTRelabelerPersisterMetrics *)self->_metrics tallyKey:@"numberOfCombineIterations"];
        if (buf[0] == 1)
        {
          goto LABEL_12;
        }
      }

      v12 = v11;
      *error = v12;

      v7 = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (BOOL)moveVisitMOs:(id)os toLOIMO:(id)o error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  osCopy = os;
  oCopy = o;
  v10 = oCopy;
  if (!error)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_29;
  }

  if (!osCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_33:

      _RTErrorInvalidParameterCreate(@"visitMOs");
      *error = v27 = 0;
      goto LABEL_34;
    }

    *buf = 0;
LABEL_36:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitMOs", buf, 2u);
    goto LABEL_33;
  }

  if (!oCopy)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiMO", buf, 2u);
    }

    *error = _RTErrorInvalidParameterCreate(@"loiMO");
LABEL_29:

    v27 = 0;
    goto LABEL_34;
  }

  v11 = [MEMORY[0x277CBEA60] arrayWithArray:osCopy];

  if (!v11)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 0;
    goto LABEL_36;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    errorCopy = error;
    obj = v12;
    v15 = *v41;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        identifier = [v17 identifier];
        v39 = 0;
        v20 = [(RTRelabelerPersister *)self fetchTransitionMOsEndingAtVisitIdentifier:identifier error:&v39];
        v21 = v39;

        if (v21)
        {

          objc_autoreleasePoolPop(v18);
          v12 = obj;

          v31 = v21;
          v27 = 0;
          *errorCopy = v21;
          goto LABEL_31;
        }

        [v17 setLocationOfInterest:v10];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v36;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [*(*(&v35 + 1) + 8 * j) setLocationOfInterest:{v10, errorCopy}];
            }

            v24 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v24);
        }

        objc_autoreleasePoolPop(v18);
      }

      v12 = obj;
      v14 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
  v21 = v12;
LABEL_31:

LABEL_34:
  return v27;
}

- (id)dedupableLOIsNearLocation:(id)location mapItem:(id)item error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  itemCopy = item;
  v10 = itemCopy;
  if (error)
  {
    if (locationCopy)
    {
      if (itemCopy)
      {
        v36 = 0;
        v11 = [(RTRelabelerPersister *)self fetchNearbyLocationOfInterestMOsAroundLocation:locationCopy withinDistance:&v36 error:1000.0];
        v12 = v36;
        v13 = v12;
        if (v12)
        {
          v14 = v12;
          v31 = 0;
          *error = v13;
        }

        else
        {
          v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v30 = v11;
          v19 = v11;
          v20 = [v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v33;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v33 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v32 + 1) + 8 * i);
                v25 = objc_autoreleasePoolPush();
                v26 = MEMORY[0x277D011A0];
                mapItem = [v24 mapItem];
                v28 = [v26 createWithManagedObject:mapItem];

                if (v28 && [v28 isEqual:v10])
                {
                  [v31 addObject:v24];
                }

                objc_autoreleasePoolPop(v25);
              }

              v21 = [v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
            }

            while (v21);
          }

          v11 = v30;
          v13 = 0;
        }

        goto LABEL_28;
      }

      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", buf, 2u);
      }

      v17 = @"mapItem";
    }

    else
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
      }

      v17 = @"location";
    }

    _RTErrorInvalidParameterCreate(v17);
    *error = v31 = 0;
    goto LABEL_28;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v31 = 0;
LABEL_28:

  return v31;
}

- (id)connectedComponentForLoiMO:(id)o encounteredIdentifiers:(id)identifiers error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  oCopy = o;
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (error)
  {
    if (oCopy)
    {
      if (identifiersCopy)
      {
        identifier = [oCopy identifier];

        if (identifier)
        {
          errorCopy = error;
          v11 = [MEMORY[0x277CBEB18] arrayWithObject:oCopy];
          v12 = [MEMORY[0x277CBEB18] arrayWithObject:oCopy];
          v58 = oCopy;
          identifier2 = [oCopy identifier];
          [v9 addObject:identifier2];

          v60 = 0;
          do
          {
            if (![v12 count])
            {
              break;
            }

            v66 = objc_autoreleasePoolPush();
            firstObject = [v12 firstObject];
            v67 = objc_alloc(MEMORY[0x277D01160]);
            locationLatitude = [firstObject locationLatitude];
            [locationLatitude doubleValue];
            v16 = v15;
            locationLongitude = [firstObject locationLongitude];
            [locationLongitude doubleValue];
            v18 = v17;
            locationHorizontalUncertainty = [firstObject locationHorizontalUncertainty];
            [locationHorizontalUncertainty doubleValue];
            v21 = v20;
            locationAltitude = [firstObject locationAltitude];
            [locationAltitude doubleValue];
            v24 = v23;
            locationVerticalUncertainty = [firstObject locationVerticalUncertainty];
            [locationVerticalUncertainty doubleValue];
            v27 = v26;
            locationReferenceFrame = [firstObject locationReferenceFrame];
            intValue = [locationReferenceFrame intValue];
            locationSourceAccuracy = [firstObject locationSourceAccuracy];
            v68 = [v67 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v16 date:v18 referenceFrame:v21 speed:v24 sourceAccuracy:{v27, 0.0}];

            v31 = MEMORY[0x277D011A0];
            mapItem = [firstObject mapItem];
            v33 = [v31 createWithManagedObject:mapItem];

            v34 = v68;
            if (v68 && v33)
            {
              v73 = 0;
              v35 = [(RTRelabelerPersister *)self dedupableLOIsNearLocation:v68 mapItem:v33 error:&v73];
              v36 = v73;
              v37 = v36;
              v38 = v36 != 0;
              if (v36)
              {
                v39 = v36;

                v60 = v39;
              }

              else
              {
                v59 = v35;
                v63 = v33;
                v65 = firstObject;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v40 = v35;
                v41 = [v40 countByEnumeratingWithState:&v69 objects:v75 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v70;
                  do
                  {
                    for (i = 0; i != v42; ++i)
                    {
                      if (*v70 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v69 + 1) + 8 * i);
                      identifier3 = [v45 identifier];

                      if (identifier3)
                      {
                        identifier4 = [v45 identifier];
                        v48 = [v9 member:identifier4];

                        if (!v48)
                        {
                          identifier5 = [v45 identifier];
                          [v9 addObject:identifier5];

                          [v11 addObject:v45];
                          [v12 addObject:v45];
                        }
                      }
                    }

                    v42 = [v40 countByEnumeratingWithState:&v69 objects:v75 count:16];
                  }

                  while (v42);
                }

                [v12 removeObjectAtIndex:0];
                v33 = v63;
                firstObject = v65;
                v34 = v68;
                v38 = 0;
                v37 = 0;
                v35 = v59;
              }
            }

            else
            {
              [v12 removeObjectAtIndex:0];
              v38 = 0;
            }

            objc_autoreleasePoolPop(v66);
          }

          while (!v38);
          if (v60)
          {
            v50 = v60;
            v51 = 0;
            *errorCopy = v60;
          }

          else
          {
            v51 = v11;
          }

          oCopy = v58;
        }

        else
        {
          v51 = [MEMORY[0x277CBEA60] arrayWithObject:oCopy];
        }

        goto LABEL_40;
      }

      v55 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encounteredIdentifiers", buf, 2u);
      }

      v54 = @"encounteredIdentifiers";
    }

    else
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loiMO", buf, 2u);
      }

      v54 = @"loiMO";
    }

    _RTErrorInvalidParameterCreate(v54);
    *error = v51 = 0;
    goto LABEL_40;
  }

  v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v51 = 0;
LABEL_40:

  return v51;
}

- (id)loiToMoveToFromConnectedComponent:(id)component
{
  v31 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v4 = componentCopy;
  if (!componentCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: connectedComponent", buf, 2u);
    }

    goto LABEL_22;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [componentCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v5)
  {
LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v26;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v25 + 1) + 8 * i);
      if (v7)
      {
        mapItem = [*(*(&v25 + 1) + 8 * i) mapItem];
        mapItemSource = [mapItem mapItemSource];
        v13 = [mapItemSource unsignedIntegerValue] & 0x3FDFDE;

        mapItem2 = [v7 mapItem];
        mapItemSource2 = [mapItem2 mapItemSource];
        v16 = [mapItemSource2 unsignedIntegerValue] & 0x3FDFDE;

        if (v13)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17 || (v13 != 0) == (v16 != 0) && ([v7 visits], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), objc_msgSend(v10, "visits"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v18, v19 < v21))
        {
          v22 = v10;

          v7 = v22;
        }
      }

      else
      {
        v7 = v10;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v6);
LABEL_23:

  return v7;
}

- (BOOL)dedupeLOIsWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (error)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__RTRelabelerPersister_dedupeLOIsWithError___block_invoke;
    aBlock[3] = &unk_2788CD888;
    objc_copyWeak(v16, &location);
    v16[1] = a2;
    v6 = _Block_copy(aBlock);
    v14 = 0;
    [(RTRelabelerPersister *)self performBlock:v6 error:&v14];
    v7 = v14;
    v8 = v7 == 0;
    if (v7)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v7;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, error in deduping, %@", buf, 0x16u);
      }

      v10 = v7;
      *error = v7;
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    return 0;
  }

  return v8;
}

void __44__RTRelabelerPersister_dedupeLOIsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v76[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
      [v7 setReturnsObjectsAsFaults:1];
      [v7 setFetchBatchSize:1];
      v68 = 0;
      v8 = [v7 execute:&v68];
      v9 = v68;
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        *a3 = v10;
      }

      else
      {
        v54 = [MEMORY[0x277CBEB58] set];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v55 = v8;
        v17 = [v55 countByEnumeratingWithState:&v64 objects:v70 count:16];
        if (v17)
        {
          v52 = v17;
          v49 = v5;
          v50 = *v65;
          v56 = WeakRetained;
          v47 = v7;
          v48 = a3;
          v46 = v8;
          while (2)
          {
            v18 = 0;
            v19 = v54;
            v20 = v55;
            v21 = v50;
            v22 = v52;
            do
            {
              if (*v65 != v21)
              {
                objc_enumerationMutation(v20);
              }

              v23 = *(*(&v64 + 1) + 8 * v18);
              v24 = objc_autoreleasePoolPush();
              v25 = [v23 identifier];

              if (v25)
              {
                v26 = [v23 identifier];
                v27 = [v19 member:v26];

                if (!v27)
                {
                  context = v24;
                  v63 = 0;
                  v28 = [WeakRetained connectedComponentForLoiMO:v23 encounteredIdentifiers:v19 error:&v63];
                  v29 = v63;
                  if (v29)
                  {
                    v42 = v29;
                    v8 = v46;
LABEL_32:

                    objc_autoreleasePoolPop(context);
                    a3 = v48;
                    v5 = v49;
                    v7 = v47;
                    v10 = 0;
                    goto LABEL_34;
                  }

                  v30 = [WeakRetained loiToMoveToFromConnectedComponent:v28];
                  if (v30)
                  {
                    v61 = 0u;
                    v62 = 0u;
                    v59 = 0u;
                    v60 = 0u;
                    v51 = v28;
                    obj = v28;
                    v31 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
                    if (v31)
                    {
                      v32 = v31;
                      v33 = *v60;
                      while (2)
                      {
                        for (i = 0; i != v32; ++i)
                        {
                          if (*v60 != v33)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v35 = *(*(&v59 + 1) + 8 * i);
                          v36 = objc_autoreleasePoolPush();
                          v37 = [v35 identifier];
                          v38 = [v30 identifier];
                          v39 = [v37 isEqual:v38];

                          if ((v39 & 1) == 0)
                          {
                            v40 = [v35 visits];
                            v41 = [v40 array];
                            v58 = 0;
                            [v56 moveVisitMOs:v41 toLOIMO:v30 error:&v58];
                            v42 = v58;

                            if (v42)
                            {
                              objc_autoreleasePoolPop(v36);

                              WeakRetained = v56;
                              v8 = v46;
                              v28 = v51;
                              goto LABEL_32;
                            }
                          }

                          objc_autoreleasePoolPop(v36);
                        }

                        v32 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
                        if (v32)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    WeakRetained = v56;
                    v19 = v54;
                    v21 = v50;
                    v28 = v51;
                  }

                  v20 = v55;
                  v22 = v52;
                  v24 = context;
                }
              }

              objc_autoreleasePoolPop(v24);
              ++v18;
            }

            while (v18 != v22);
            v43 = [v20 countByEnumeratingWithState:&v64 objects:v70 count:16];
            v42 = 0;
            a3 = v48;
            v5 = v49;
            v8 = v46;
            v7 = v47;
            v10 = 0;
            v52 = v43;
            if (v43)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v42 = 0;
        }

LABEL_34:

        v44 = v42;
        *a3 = v42;
      }
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v75 = *MEMORY[0x277CCA450];
      v76[0] = @"swelf is nil";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
      v7 = [v12 errorWithDomain:v13 code:0 userInfo:v14];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v45 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v72 = v45;
        v73 = 2112;
        v74 = v7;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v16 = v7;
      *a3 = v7;
    }
  }
}

- (BOOL)combineEarlierVisitMO:(id)o withLaterVisitMO:(id)mO error:(id *)error
{
  v49[2] = *MEMORY[0x277D85DE8];
  oCopy = o;
  mOCopy = mO;
  v9 = mOCopy;
  if (error)
  {
    if (oCopy)
    {
      if (mOCopy)
      {
        entryDate = [oCopy entryDate];
        [v9 setEntryDate:entryDate];

        expirationDate = [oCopy expirationDate];
        expirationDate2 = [v9 expirationDate];
        if ([expirationDate isAfterDate:expirationDate2])
        {
          v13 = oCopy;
        }

        else
        {
          v13 = v9;
        }

        expirationDate3 = [v13 expirationDate];
        [v9 setExpirationDate:expirationDate3];

        v15 = MEMORY[0x277CCABB0];
        locationOfInterestConfidence = [oCopy locationOfInterestConfidence];
        [locationOfInterestConfidence doubleValue];
        v18 = v17;

        locationOfInterestConfidence2 = [v9 locationOfInterestConfidence];
        [locationOfInterestConfidence2 doubleValue];
        v21 = v20;

        if (v18 >= v21)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        v23 = [v15 numberWithDouble:v22];
        [v9 setLocationOfInterestConfidence:v23];

        v24 = MEMORY[0x277CCABB0];
        locationOfInterestSource = [oCopy locationOfInterestSource];
        unsignedIntegerValue = [locationOfInterestSource unsignedIntegerValue];
        locationOfInterestSource2 = [v9 locationOfInterestSource];
        v28 = [v24 numberWithUnsignedInteger:{objc_msgSend(locationOfInterestSource2, "unsignedIntegerValue") | unsignedIntegerValue}];
        [v9 setLocationOfInterestSource:v28];

        v29 = objc_opt_class();
        v49[0] = oCopy;
        v49[1] = v9;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
        v31 = [v29 locationFromAggregateVisits:v30];

        v32 = MEMORY[0x277CCABB0];
        location = [v31 location];
        [location latitude];
        v34 = [v32 numberWithDouble:?];
        [v9 setLocationLatitude:v34];

        v35 = MEMORY[0x277CCABB0];
        location2 = [v31 location];
        [location2 longitude];
        v37 = [v35 numberWithDouble:?];
        [v9 setLocationLongitude:v37];

        v38 = MEMORY[0x277CCABB0];
        location3 = [v31 location];
        [location3 horizontalUncertainty];
        v40 = [v38 numberWithDouble:?];
        [v9 setLocationHorizontalUncertainty:v40];

        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "dataPointCount")}];
        [v9 setDataPointCount:v41];

        v42 = 1;
        goto LABEL_21;
      }

      v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v48 = 0;
        _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: laterVisitMO", v48, 2u);
      }

      v45 = @"laterVisitMO";
    }

    else
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v48 = 0;
        _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: earlierVisitMO", v48, 2u);
      }

      v45 = @"earlierVisitMO";
    }

    _RTErrorInvalidParameterCreate(v45);
    *error = v42 = 0;
    goto LABEL_21;
  }

  v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *v48 = 0;
    _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v48, 2u);
  }

  v42 = 0;
LABEL_21:

  return v42;
}

- (BOOL)cleanUpCombinedPairs:(id)pairs context:(id)context error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  pairsCopy = pairs;
  contextCopy = context;
  v9 = contextCopy;
  errorCopy = error;
  if (!error)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v33 = 0;
    goto LABEL_45;
  }

  if (!pairsCopy)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: combinedPairs", buf, 2u);
    }

    v36 = @"combinedPairs";
    goto LABEL_40;
  }

  if (!contextCopy)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v36 = @"context";
LABEL_40:
    _RTErrorInvalidParameterCreate(v36);
    *error = v33 = 0;
    goto LABEL_45;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = pairsCopy;
  v44 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v44)
  {
    v43 = *v58;
    v40 = pairsCopy;
    while (2)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v57 + 1) + 8 * i);
        firstObject = [v11 firstObject];
        secondObject = [v11 secondObject];
        identifier = [firstObject identifier];
        v56 = 0;
        v15 = [(RTRelabelerPersister *)self fetchTransitionMOsEndingAtVisitIdentifier:identifier error:&v56];
        v16 = v56;

        if (v16)
        {
          v38 = v16;
          *errorCopy = v16;

LABEL_43:
          v33 = 0;
          pairsCopy = v40;
          goto LABEL_44;
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v53;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v53 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v52 + 1) + 8 * j);
              identifier2 = [secondObject identifier];
              [v22 setVisitIdentifierDestination:identifier2];
            }

            v19 = [v17 countByEnumeratingWithState:&v52 objects:v63 count:16];
          }

          while (v19);
        }

        identifier3 = [firstObject identifier];
        v51 = 0;
        v25 = [(RTRelabelerPersister *)self fetchTransitionMOsOriginatingFromVisitIdentifier:identifier3 error:&v51];
        v26 = v51;

        if (v26)
        {
          v27 = v26;
          *errorCopy = v26;
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v41 = v25;
          v28 = v25;
          v29 = [v28 countByEnumeratingWithState:&v47 objects:v62 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v48;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v48 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                [v9 deleteObject:*(*(&v47 + 1) + 8 * k)];
              }

              v30 = [v28 countByEnumeratingWithState:&v47 objects:v62 count:16];
            }

            while (v30);
          }

          [v9 deleteObject:firstObject];
          v25 = v41;
        }

        if (v26)
        {
          goto LABEL_43;
        }
      }

      v33 = 1;
      pairsCopy = v40;
      v44 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 1;
  }

LABEL_44:

LABEL_45:
  return v33;
}

- (BOOL)combineSequentialVisitsWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (error)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__RTRelabelerPersister_combineSequentialVisitsWithError___block_invoke;
    aBlock[3] = &unk_2788CD888;
    objc_copyWeak(v15, &location);
    v15[1] = a2;
    v6 = _Block_copy(aBlock);
    v13 = 0;
    [(RTRelabelerPersister *)self performBlock:v6 error:&v13];
    v7 = v13;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "relabeling merged sequential visits with error, %@", buf, 0xCu);
      }
    }

    v9 = v7 == 0;
    if (v7)
    {
      [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v7];
      [(RTRelabelerPersisterMetrics *)self->_metrics setErrorKey:@"mergingSequentialVisitsErroredOut"];
      v10 = v7;
      *error = v7;
    }

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    return 0;
  }

  return v9;
}

void __57__RTRelabelerPersister_combineSequentialVisitsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v84[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v56 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = +[RTLearnedLocationOfInterestMO fetchRequest];
      [v7 setReturnsObjectsAsFaults:1];
      [v7 setFetchBatchSize:1];
      v73 = 0;
      v54 = v7;
      v8 = [v7 execute:&v73];
      v9 = v73;
      if (v9)
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v51 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412546;
          v80 = v51;
          v81 = 2112;
          v82 = v9;
          _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v11 = v9;
        *v56 = v9;
      }

      else
      {
        v53 = v5;
        v20 = [MEMORY[0x277CBEB18] array];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        obj = v8;
        v60 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v60)
        {
          v59 = *v70;
          v55 = *MEMORY[0x277CCA450];
          v58 = v8;
          v63 = v20;
          while (2)
          {
            v21 = 0;
            do
            {
              if (*v70 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v61 = v21;
              v22 = *(*(&v69 + 1) + 8 * v21);
              context = objc_autoreleasePoolPush();
              v23 = [v22 visits];
              v24 = [v23 array];
              v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
              v77 = v25;
              v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
              v27 = [v24 sortedArrayUsingDescriptors:v26];

              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v28 = v27;
              v29 = [v28 countByEnumeratingWithState:&v65 objects:v76 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = 0;
                v32 = *v66;
                while (2)
                {
                  v33 = 0;
                  v34 = v31;
                  do
                  {
                    if (*v66 != v32)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v31 = *(*(&v65 + 1) + 8 * v33);
                    if (v34)
                    {
                      v35 = [*(*(&v65 + 1) + 8 * v33) entryDate];
                      v36 = [v34 exitDate];
                      [v35 timeIntervalSinceDate:v36];
                      v38 = v37;
                      v39 = [WeakRetained relabelerPersisterParameters];
                      [v39 visitAdjacencyMergeThreshold];
                      v41 = v40 * 60.0;

                      if (v38 < v41)
                      {
                        v64 = 0;
                        [WeakRetained combineEarlierVisitMO:v34 withLaterVisitMO:v31 error:&v64];
                        v42 = v64;
                        if (v42)
                        {
                          v47 = v42;
                          goto LABEL_33;
                        }

                        v43 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:v34 secondObject:v31];
                        if (!v43)
                        {
                          v48 = MEMORY[0x277CCA9B8];
                          v74 = v55;
                          v75 = @"combinedPair was nil";
                          v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                          v47 = [v48 errorWithDomain:@"RTRelabelerPersisterErrorDomain" code:0 userInfo:v49];

                          goto LABEL_33;
                        }

                        v44 = v43;
                        [v63 addObject:v43];
                      }

                      v45 = v31;
                    }

                    else
                    {
                      v46 = v31;
                    }

                    ++v33;
                    v34 = v31;
                  }

                  while (v30 != v33);
                  v30 = [v28 countByEnumeratingWithState:&v65 objects:v76 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }

                v47 = 0;
                v34 = v31;
LABEL_33:

                v9 = 0;
                v8 = v58;
              }

              else
              {
                v47 = 0;
              }

              v20 = v63;

              objc_autoreleasePoolPop(context);
              if (v47)
              {

                v50 = v47;
                *v56 = v47;

                v5 = v53;
                goto LABEL_39;
              }

              v21 = v61 + 1;
            }

            while (v61 + 1 != v60);
            v60 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
            if (v60)
            {
              continue;
            }

            break;
          }
        }

        v5 = v53;
        [WeakRetained cleanUpCombinedPairs:v20 context:v53 error:v56];
LABEL_39:
      }

      v19 = v54;
    }

    else
    {
      v12 = v5;
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D01448];
      v83 = *MEMORY[0x277CCA450];
      v84[0] = @"swelf is nil";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:&v83 count:1];
      v16 = [v13 errorWithDomain:v14 code:0 userInfo:v15];

      v17 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v52 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v80 = v52;
        v81 = 2112;
        v82 = v16;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v18 = v16;
      *v56 = v16;
      v19 = v16;
      v5 = v12;
    }
  }
}

- (BOOL)fixUnconcreteLOIs:(id *)is
{
  v20 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__RTRelabelerPersister_fixUnconcreteLOIs___block_invoke;
  aBlock[3] = &unk_2788CD888;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  v6 = _Block_copy(aBlock);
  v12 = 0;
  [(RTRelabelerPersister *)self performBlock:v6 error:&v12];
  v7 = v12;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, fixing unconcrete with error, %@", buf, 0x16u);
    }
  }

  if (v7)
  {
    [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v7];
    [(RTRelabelerPersisterMetrics *)self->_metrics setErrorKey:@"fixingUnconcreteErroredOut"];
    if (is)
    {
      v10 = v7;
      *is = v7;
    }
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  return v7 == 0;
}

void __42__RTRelabelerPersister_fixUnconcreteLOIs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v47[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = +[RTLearnedLocationOfInterestMO fetchRequest];
      [v6 setReturnsObjectsAsFaults:1];
      [v6 setFetchBatchSize:1];
      v39 = 0;
      v7 = [v6 execute:&v39];
      v8 = v39;
      if (v8)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v27 = NSStringFromSelector(*(a1 + 40));
          *buf = 138412546;
          v43 = v27;
          v44 = 2112;
          v45 = v8;
          _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
        }

        v10 = v8;
        *a3 = v8;
      }

      else
      {
        v29 = v7;
        v30 = v6;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v16 = v7;
        v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v36;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v36 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v35 + 1) + 8 * i);
              if ([WeakRetained unconcreteLOIMO:v21])
              {
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v22 = [v21 visits];
                v23 = [v22 countByEnumeratingWithState:&v31 objects:v40 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v32;
                  do
                  {
                    for (j = 0; j != v24; ++j)
                    {
                      if (*v32 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      [*(*(&v31 + 1) + 8 * j) setLocationOfInterestSource:&unk_28459E850];
                    }

                    v24 = [v22 countByEnumeratingWithState:&v31 objects:v40 count:16];
                  }

                  while (v24);
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
          }

          while (v18);
        }

        v7 = v29;
        v6 = v30;
        v8 = 0;
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v46 = *MEMORY[0x277CCA450];
      v47[0] = @"swelf is nil";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v6 = [v11 errorWithDomain:v12 code:0 userInfo:v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v43 = v28;
        v44 = 2112;
        v45 = v6;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v15 = v6;
      *a3 = v6;
    }
  }
}

- (id)filteredVisitMOs:(id)os referenceMapItem:(id)item referencePlaceType:(unint64_t)type error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  osCopy = os;
  itemCopy = item;
  v12 = itemCopy;
  if (!error)
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v63 = 0;
    goto LABEL_34;
  }

  if (!osCopy)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitMOs", buf, 2u);
    }

    v66 = @"visitMOs";
    goto LABEL_33;
  }

  if (!itemCopy)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v68, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceMapItem", buf, 2u);
    }

    v66 = @"referenceMapItem";
LABEL_33:
    _RTErrorInvalidParameterCreate(v66);
    *error = v63 = 0;
    goto LABEL_34;
  }

  errorCopy = error;
  v13 = objc_alloc(MEMORY[0x277D01160]);
  latitude = [v12 latitude];
  [latitude doubleValue];
  v16 = v15;
  longitude = [v12 longitude];
  [longitude doubleValue];
  v19 = v18;
  uncertainty = [v12 uncertainty];
  [uncertainty doubleValue];
  v22 = v21;
  v73 = v12;
  referenceFrame = [v12 referenceFrame];
  v79 = [v13 initWithLatitude:0 longitude:objc_msgSend(referenceFrame horizontalUncertainty:"intValue") date:v16 referenceFrame:{v19, v22}];

  v75 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(osCopy, "count")}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v71 = osCopy;
  obj = osCopy;
  v78 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v78)
  {
    v76 = *v84;
    selfCopy = self;
    v72 = type & 0xFFFFFFFFFFFFFFFELL;
LABEL_6:
    v24 = 0;
    while (1)
    {
      if (*v84 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v80 = v24;
      v25 = *(*(&v83 + 1) + 8 * v24);
      context = objc_autoreleasePoolPush();
      v26 = objc_alloc(MEMORY[0x277D01160]);
      locationLatitude = [v25 locationLatitude];
      [locationLatitude doubleValue];
      v29 = v28;
      locationLongitude = [v25 locationLongitude];
      [locationLongitude doubleValue];
      v32 = v31;
      locationHorizontalUncertainty = [v25 locationHorizontalUncertainty];
      [locationHorizontalUncertainty doubleValue];
      v35 = v34;
      locationAltitude = [v25 locationAltitude];
      [locationAltitude doubleValue];
      v38 = v37;
      locationVerticalUncertainty = [v25 locationVerticalUncertainty];
      [locationVerticalUncertainty doubleValue];
      v41 = v40;
      locationReferenceFrame = [v25 locationReferenceFrame];
      intValue = [locationReferenceFrame intValue];
      locationSourceAccuracy = [v25 locationSourceAccuracy];
      v45 = [v26 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v29 date:v32 referenceFrame:v35 speed:v38 sourceAccuracy:{v41, 0.0}];

      distanceCalculator = [(RTRelabelerPersister *)selfCopy distanceCalculator];
      v82 = 0;
      [distanceCalculator distanceFromLocation:v45 toLocation:v79 error:&v82];
      v48 = v47;
      v49 = v82;

      if (v49)
      {

        objc_autoreleasePoolPop(context);
        v67 = v49;
        *errorCopy = v49;

        v63 = 0;
        v12 = v73;
        v62 = v75;
        goto LABEL_29;
      }

      learnedPlaceParameters = [(RTRelabelerPersister *)selfCopy learnedPlaceParameters];
      [learnedPlaceParameters softDistanceThreshold];
      v52 = v51;

      if (v48 >= v52)
      {
        learnedPlaceParameters2 = [(RTRelabelerPersister *)selfCopy learnedPlaceParameters];
        [learnedPlaceParameters2 softDistanceThreshold];
        if (v48 <= v54)
        {
          goto LABEL_18;
        }

        learnedPlaceParameters3 = [(RTRelabelerPersister *)selfCopy learnedPlaceParameters];
        [learnedPlaceParameters3 softDistanceThreshold];
        if (v48 >= v56 + v56)
        {

LABEL_18:
          goto LABEL_19;
        }

        locationOfInterest = [v25 locationOfInterest];
        mapItem = [locationOfInterest mapItem];
        name = [mapItem name];
        name2 = [v73 name];
        v61 = [name isEqualToString:name2];

        if (v72 != 2 || !v61)
        {
          goto LABEL_19;
        }
      }

      [v75 addObject:v25];
LABEL_19:

      objc_autoreleasePoolPop(context);
      v24 = v80 + 1;
      if (v78 == v80 + 1)
      {
        v78 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
        if (v78)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v62 = v75;
  v63 = v75;
  v12 = v73;
LABEL_29:

  osCopy = v71;
LABEL_34:

  return v63;
}

- (BOOL)consolidateVisitsToLoisWithKnownPlaceTypesWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  if (error)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__RTRelabelerPersister_consolidateVisitsToLoisWithKnownPlaceTypesWithError___block_invoke;
    aBlock[3] = &unk_2788CD888;
    objc_copyWeak(v17, &location);
    v17[1] = a2;
    v6 = _Block_copy(aBlock);
    v15 = 0;
    [(RTRelabelerPersister *)self performBlock:v6 error:&v15];
    v7 = v15;
    v8 = v7 == 0;
    if (v7)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v20 = v14;
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, collapseError, %@", buf, 0x16u);
      }

      v10 = v7;
      *error = v7;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "relabeling collapsed known place LOIs successfully", buf, 2u);
      }
    }

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    return 0;
  }

  return v8;
}

void __76__RTRelabelerPersister_consolidateVisitsToLoisWithKnownPlaceTypesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v91[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v59 = a3;
      v60 = v5;
      v69 = [MEMORY[0x277CBEB18] array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v7 = [&unk_2845A1310 countByEnumeratingWithState:&v79 objects:v85 count:16];
      v66 = WeakRetained;
      if (v7)
      {
        v8 = v7;
        v9 = *v80;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v80 != v9)
            {
              objc_enumerationMutation(&unk_2845A1310);
            }

            v11 = *(*(&v79 + 1) + 8 * i);
            v12 = +[RTLearnedLocationOfInterestMO fetchRequest];
            v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"placeType", v11];
            [v12 setPredicate:v13];

            v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"placeType" ascending:0];
            v84 = v14;
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
            [v12 setSortDescriptors:v15];

            v78 = 0;
            v16 = [v12 execute:&v78];
            v17 = v78;
            if (v17)
            {
              v51 = v17;
              *a3 = v17;

              WeakRetained = v66;
              goto LABEL_33;
            }

            [v69 addObjectsFromArray:v16];
          }

          v8 = [&unk_2845A1310 countByEnumeratingWithState:&v79 objects:v85 count:16];
          WeakRetained = v66;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v69;
      v64 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      v12 = 0;
      if (v64)
      {
        v63 = *v75;
LABEL_13:
        v18 = 0;
        while (1)
        {
          if (*v75 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v67 = v18;
          v19 = *(*(&v74 + 1) + 8 * v18);
          context = objc_autoreleasePoolPush();
          v20 = objc_alloc(MEMORY[0x277D01160]);
          v21 = [v19 mapItem];
          v22 = [v21 latitude];
          [v22 doubleValue];
          v24 = v23;
          v25 = [v19 mapItem];
          v26 = [v25 longitude];
          [v26 doubleValue];
          v28 = v27;
          v29 = [v19 mapItem];
          v30 = [v29 uncertainty];
          [v30 doubleValue];
          v32 = v31;
          v65 = v19;
          v33 = [v19 mapItem];
          v34 = [v33 referenceFrame];
          v35 = [v20 initWithLatitude:0 longitude:objc_msgSend(v34 horizontalUncertainty:"intValue") date:v24 referenceFrame:{v28, v32}];

          v36 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
          WeakRetained = v66;
          v37 = [v66 learnedPlaceParameters];
          [v37 softDistanceThreshold];
          v73 = 0;
          LOBYTE(v21) = [v36 setupBoundingBoxFetchRequestForLocation:v35 distance:0 entityCanBeLocationShifted:0 locationShifter:0 resultExpansionPredicates:0 resultFilteringPredicates:&v73 error:?];
          v38 = v73;

          if (v21)
          {
            v62 = v35;
            [v36 setFetchBatchSize:10];
            v72 = 0;
            v39 = [v36 execute:&v72];
            v40 = v72;
            v41 = v40;
            if (v40)
            {
              v42 = 0;
              v43 = v12;
              v12 = v40;
              v44 = v39;
            }

            else
            {
              v45 = [v65 mapItem];
              v46 = [v65 placeType];
              v47 = [v46 integerValue];
              v71 = 0;
              v44 = [v66 filteredVisitMOs:v39 referenceMapItem:v45 referencePlaceType:v47 error:&v71];
              v43 = v71;

              if (v43)
              {
                v42 = 0;
                v48 = v12;
                v12 = v43;
                WeakRetained = v66;
              }

              else
              {
                v70 = 0;
                [v66 moveVisitMOs:v44 toLOIMO:v65 error:&v70];
                v49 = v70;
                if (v49)
                {
                  v48 = v49;

                  v42 = 0;
                  v12 = v48;
                }

                else
                {
                  v48 = 0;
                  v42 = 1;
                }

                WeakRetained = v66;
              }
            }

            v35 = v62;
          }

          else
          {
            v42 = 0;
            v41 = v12;
            v12 = v38;
          }

          objc_autoreleasePoolPop(context);
          if (!v42)
          {
            break;
          }

          v18 = v67 + 1;
          if (v64 == v67 + 1)
          {
            v64 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
            if (v64)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }

      v50 = v12;
      *v59 = v12;
LABEL_33:

      v5 = v60;
      v52 = v69;
    }

    else
    {
      v53 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277D01448];
      v90 = *MEMORY[0x277CCA450];
      v91[0] = @"swelf is nil";
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:&v90 count:1];
      v52 = [v53 errorWithDomain:v54 code:0 userInfo:v55];

      v56 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v58 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v87 = v58;
        v88 = 2112;
        v89 = v52;
        _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v57 = v52;
      *a3 = v52;
    }
  }
}

- (BOOL)saveWithError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  [(RTRelabelerPersister *)self performBlock:&__block_literal_global_434 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, save error, %@", buf, 0x16u);
    }

    [(RTRelabelerPersisterMetrics *)self->_metrics tallyError:v6];
    [(RTRelabelerPersisterMetrics *)self->_metrics setErrorKey:@"saveErroredOut"];
    if (error)
    {
      v8 = v6;
      *error = v6;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "relabeling saved successfully", buf, 2u);
    }
  }

  return v6 == 0;
}

void __38__RTRelabelerPersister_saveWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = 0;
  [a2 save:&v5];
  v4 = v5;
  *a3 = v4;
}

- (void)logLocalStoreWithReason:(id)reason
{
  reasonCopy = reason;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__RTRelabelerPersister_logLocalStoreWithReason___block_invoke;
  aBlock[3] = &unk_2788CD920;
  v9 = reasonCopy;
  v5 = reasonCopy;
  v6 = _Block_copy(aBlock);
  v7 = 0;
  [(RTRelabelerPersister *)self performBlock:v6 error:&v7];
}

void __48__RTRelabelerPersister_logLocalStoreWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v61 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "start logging local store with reason, %@", buf, 0xCu);
    }
  }

  v8 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
  [v8 setReturnsObjectsAsFaults:1];
  [v8 setFetchBatchSize:5];
  v57 = 0;
  v9 = [v8 execute:&v57];
  v10 = v57;
  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityRelabeling);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v10;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "log locations error, %@", buf, 0xCu);
    }

    v12 = v10;
    *a3 = v10;
  }

  else
  {
    v35 = v9;
    v36 = a1;
    v37 = v8;
    v38 = v5;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v9;
    v42 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v42)
    {
      v39 = 0;
      v41 = *v54;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = 0;
        do
        {
          if (*v54 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [RTLearnedLocationOfInterest createWithManagedObject:*(*(&v53 + 1) + 8 * v14)];
          v43 = v14;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 134218243;
              v61 = ++v39;
              v62 = 2117;
              v63 = v15;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "locationOfInterest %lu, %{sensitive}@", buf, 0x16u);
            }
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v44 = v15;
          v17 = [v15 visits];
          v18 = [v17 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = 0;
            v21 = *v50;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v50 != v21)
                {
                  objc_enumerationMutation(v17);
                }

                v23 = *(*(&v49 + 1) + 8 * i);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                {
                  v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    ++v20;
                    *buf = 134218243;
                    v61 = v20;
                    v62 = 2117;
                    v63 = v23;
                    _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "visit %lu, %{sensitive}@", buf, 0x16u);
                  }
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v19);
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v25 = [v44 transitions];
          v26 = [v25 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v46;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v31 = *(*(&v45 + 1) + 8 * j);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                {
                  v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    ++v28;
                    *buf = 134218243;
                    v61 = v28;
                    v62 = 2117;
                    v63 = v31;
                    _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "transition %lu, %{sensitive}@", buf, 0x16u);
                  }
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v45 objects:v58 count:16];
            }

            while (v27);
          }

          v14 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v42);
    }

    v8 = v37;
    v5 = v38;
    v10 = 0;
    v9 = v35;
    if (*(v36 + 32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = *(v36 + 32);
        *buf = 138412290;
        v61 = v34;
        _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "end logging local store with reason, %@", buf, 0xCu);
      }
    }
  }
}

@end