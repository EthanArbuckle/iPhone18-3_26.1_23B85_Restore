@interface RTSignalGenerator
+ (CLLocationCoordinate2D)averageCoordinateOfCoordinate1:(CLLocationCoordinate2D)coordinate1 coordinate2:(CLLocationCoordinate2D)coordinate2;
+ (CLLocationCoordinate2D)coordinateAtDisplacement:(double)displacement fromCenterCoordinate:(CLLocationCoordinate2D)coordinate atAngle:(double)angle;
+ (double)angleOfLineBetweenCoordinate1:(CLLocationCoordinate2D)coordinate1 coordinate2:(CLLocationCoordinate2D)coordinate2;
+ (double)anglePerpendicularToLineBetweenLocation1:(id)location1 location2:(id)location2;
+ (double)angleSweptFromStartAngle:(double)angle ToEndAngle:(double)endAngle;
+ (double)arcDistanceForStartLocation:(id)location endLocation:(id)endLocation centerLocation:(id)centerLocation;
+ (double)minSpeedToFilterHyperParameter;
+ (double)perpendicularAngleForAngle:(double)angle;
+ (id)centerProducingArcBetweenLowerDistanceBound:(double)bound upperDistanceBound:(double)distanceBound FromStartLocation:(id)location endLocation:(id)endLocation;
+ (id)centerProducingArcBetweenLowerDistanceBound:(double)bound upperDistanceBound:(double)distanceBound fromStartLocation:(id)location endLocation:(id)endLocation examiningLatLongDisplacement:(double)displacement fromIntersectingLocation:(id)intersectingLocation atAngle:(double)angle;
+ (id)locationBetweenLowerDistanceBound:(double)bound upperDistanceBound:(double)distanceBound fromStartLocation:(id)location endLocation:(id)endLocation betweenTargetLowLocation:(id)lowLocation targetHighLocation:(id)highLocation;
+ (id)necessaryCenterOfArcBetweenStartLocation:(id)location endLocation:(id)endLocation minimumSpeed:(double)speed;
+ (void)injectSignalForSignalGeneratorOptions:(id)options locationManager:(id)manager handler:(id)handler;
- (RTSignalGenerator)initWithSignalGeneratorOptions:(id)options locationManager:(id)manager generatedLocations:(id)locations;
- (id)addGeneratedLocation:(id)location forceInject:(BOOL)inject;
- (id)generateLocations;
- (id)locationsForVisit:(id)visit;
- (id)transitionLocationsAlongArcBetweenStartLocation:(id)location endLocation:(id)endLocation forCenterLocation:(id)centerLocation;
- (id)transitionLocationsBetweenStartLocation:(id)location endLocation:(id)endLocation;
- (id)transitionLocationsBetweenStartLocation:(id)location endLocation:(id)endLocation coordinateCalculationBlock:(id)block;
- (unint64_t)locationCountInStoreWithError:(id *)error;
@end

@implementation RTSignalGenerator

- (RTSignalGenerator)initWithSignalGeneratorOptions:(id)options locationManager:(id)manager generatedLocations:(id)locations
{
  optionsCopy = options;
  managerCopy = manager;
  locationsCopy = locations;
  if (!optionsCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: signalGeneratorOptions";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_9;
  }

  if (!managerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = RTSignalGenerator;
  v12 = [(RTSignalGenerator *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_signalGeneratorOptions, options);
    objc_storeStrong(&v13->_locationManager, manager);
    v14 = [MEMORY[0x277CBEB18] arrayWithArray:locationsCopy];
    generatedLocations = v13->_generatedLocations;
    v13->_generatedLocations = v14;

    v13->_totalVisitLocationsGeneratedCount = 0;
    v13->_totalTransitionLocationsGeneratedCount = 0;
  }

  self = v13;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (unint64_t)locationCountInStoreWithError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315394;
      *&v39[4] = "[RTSignalGenerator locationCountInStoreWithError:]";
      *&v39[12] = 1024;
      *&v39[14] = 74;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError (in %s:%d)", v39, 0x12u);
    }
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  *v39 = 0;
  *&v39[8] = v39;
  *&v39[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__150;
  v41 = __Block_byref_object_dispose__150;
  v42 = 0;
  v6 = dispatch_semaphore_create(0);
  locationManager = self->_locationManager;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__RTSignalGenerator_locationCountInStoreWithError___block_invoke;
  v31[3] = &unk_2788C4528;
  v33 = &v35;
  v34 = v39;
  v10 = v6;
  v32 = v10;
  [(RTLocationManager *)locationManager fetchStoredLocationsCountFromDate:distantPast toDate:distantFuture uncertainty:-1 limit:v31 handler:1.79769313e308];

  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_123];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
    firstObject = [v20 firstObject];

    [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v43 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;

      v27 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 1;
LABEL_12:

  v28 = v25;
  if ((v27 & 1) == 0)
  {
    objc_storeStrong((*&v39[8] + 40), v25);
  }

  if (error)
  {
    *error = *(*&v39[8] + 40);
  }

  v29 = v36[3];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v35, 8);
  return v29;
}

void __51__RTSignalGenerator_locationCountInStoreWithError___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (double)minSpeedToFilterHyperParameter
{
  v2 = hyperParameter;
  if (!hyperParameter)
  {
    v3 = objc_opt_new();
    v4 = hyperParameter;
    hyperParameter = v3;

    v2 = hyperParameter;
  }

  [v2 minSpeedToFilter];
  return result;
}

+ (double)perpendicularAngleForAngle:(double)angle
{
  result = angle + 1.57079633;
  if (result > 6.28318531)
  {
    return result + -6.28318531;
  }

  return result;
}

+ (double)anglePerpendicularToLineBetweenLocation1:(id)location1 location2:(id)location2
{
  location2Copy = location2;
  location1Copy = location1;
  v7 = objc_opt_class();
  [location1Copy coordinate];
  v9 = v8;
  v11 = v10;

  [location2Copy coordinate];
  v13 = v12;
  v15 = v14;

  [v7 angleOfLineBetweenCoordinate1:v9 coordinate2:{v11, v13, v15}];
  v17 = v16;
  v18 = objc_opt_class();

  [v18 perpendicularAngleForAngle:v17];
  return result;
}

+ (double)angleOfLineBetweenCoordinate1:(CLLocationCoordinate2D)coordinate1 coordinate2:(CLLocationCoordinate2D)coordinate2
{
  v4 = coordinate2.latitude - coordinate1.latitude;
  v5 = coordinate2.longitude - coordinate1.longitude;
  if (coordinate2.longitude - coordinate1.longitude == 0.0)
  {
    if (v4 <= 0.0)
    {
      result = 4.71238898;
      if (v4 == 0.0)
      {
        return 0.0;
      }
    }

    else
    {
      return 1.57079633;
    }
  }

  else
  {
    if (v4 != 0.0)
    {
      result = atan(v4 / v5);
      if ((v5 >= 0.0 || v4 >= 0.0) && v5 >= 0.0)
      {
        if (v4 >= 0.0)
        {
          return result;
        }

        v7 = 6.28318531;
      }

      else
      {
        v7 = 3.14159265;
      }

      return result + v7;
    }

    result = 3.14159265;
    if (v5 >= 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

+ (double)angleSweptFromStartAngle:(double)angle ToEndAngle:(double)endAngle
{
  if (endAngle <= angle)
  {
    endAngle = endAngle + 6.28318531;
  }

  return endAngle - angle;
}

+ (double)arcDistanceForStartLocation:(id)location endLocation:(id)endLocation centerLocation:(id)centerLocation
{
  centerLocationCopy = centerLocation;
  endLocationCopy = endLocation;
  locationCopy = location;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  [centerLocationCopy coordinate];
  v13 = v12;
  v15 = v14;
  [locationCopy coordinate];
  [v11 angleOfLineBetweenCoordinate1:v13 coordinate2:{v15, v16, v17}];
  v19 = v18;
  v20 = objc_opt_class();
  [centerLocationCopy coordinate];
  v22 = v21;
  v24 = v23;
  [endLocationCopy coordinate];
  v26 = v25;
  v28 = v27;

  [v20 angleOfLineBetweenCoordinate1:v22 coordinate2:{v24, v26, v28}];
  [v10 angleSweptFromStartAngle:v19 ToEndAngle:v29];
  v31 = v30;
  [locationCopy distanceFromLocation:centerLocationCopy];
  v33 = v32;

  return fabs(v31 * v33);
}

+ (CLLocationCoordinate2D)averageCoordinateOfCoordinate1:(CLLocationCoordinate2D)coordinate1 coordinate2:(CLLocationCoordinate2D)coordinate2
{
  v6 = CLLocationCoordinate2DMake((coordinate1.latitude + coordinate2.latitude) * 0.5, (coordinate1.longitude + coordinate2.longitude) * 0.5);
  longitude = v6.longitude;
  latitude = v6.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (CLLocationCoordinate2D)coordinateAtDisplacement:(double)displacement fromCenterCoordinate:(CLLocationCoordinate2D)coordinate atAngle:(double)angle
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v8 = __sincos_stret(angle);

  v11 = CLLocationCoordinate2DMake(latitude + displacement * v8.__sinval, longitude + displacement * v8.__cosval);
  v10 = v11.longitude;
  v9 = v11.latitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

+ (id)locationBetweenLowerDistanceBound:(double)bound upperDistanceBound:(double)distanceBound fromStartLocation:(id)location endLocation:(id)endLocation betweenTargetLowLocation:(id)lowLocation targetHighLocation:(id)highLocation
{
  v66 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  endLocationCopy = endLocation;
  lowLocationCopy = lowLocation;
  highLocationCopy = highLocation;
  v17 = highLocationCopy;
  if (bound <= 0.0)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: lowerDistanceBound > 0";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, v51, buf, 2u);
    goto LABEL_29;
  }

  if (distanceBound <= 0.0)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: upperDistanceBound > 0";
    goto LABEL_28;
  }

  if (!locationCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: startLocation";
    goto LABEL_28;
  }

  if (!endLocationCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: endLocation";
    goto LABEL_28;
  }

  if (!lowLocationCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v51 = "Invalid parameter not satisfying: targetLowLocation";
    goto LABEL_28;
  }

  if (!highLocationCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v51 = "Invalid parameter not satisfying: targetHighLocation";
      goto LABEL_28;
    }

LABEL_29:
    v50 = 0;
    goto LABEL_30;
  }

  v18 = objc_opt_class();
  [v17 coordinate];
  v20 = v19;
  v22 = v21;
  [lowLocationCopy coordinate];
  [v18 averageCoordinateOfCoordinate1:v20 coordinate2:{v22, v23, v24}];
  v26 = v25;
  v28 = v27;
  v29 = objc_alloc(MEMORY[0x277CE41F8]);
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v31 = v30 * 1.5;
  v32 = MEMORY[0x277CBEAA8];
  timestamp = [locationCopy timestamp];
  timestamp2 = [endLocationCopy timestamp];
  v35 = [v32 dateBisectingDate1:timestamp date2:timestamp2];
  v36 = [v29 initWithCoordinate:v35 altitude:v26 horizontalAccuracy:v28 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v31}];

  [objc_opt_class() arcDistanceForStartLocation:locationCopy endLocation:endLocationCopy centerLocation:v36];
  if (v37 <= bound)
  {
    v53 = objc_opt_class();
    boundCopy2 = bound;
    distanceBoundCopy2 = distanceBound;
    v56 = locationCopy;
    v57 = endLocationCopy;
    v58 = v36;
    v59 = v17;
  }

  else
  {
    v38 = v37;
    if (v37 < distanceBound)
    {
      RTCommonIsCoordinateValid();
      if (v39 == 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134545921;
          v63 = v26;
          v64 = 2053;
          v65 = v28;
          _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "Invalid Coords: %{sensitive}lf, %{sensitive}lf", buf, 0x16u);
        }
      }

      RTCommonIsCoordinateValid();
      if (v41 != 0.0)
      {
        v42 = objc_alloc(MEMORY[0x277CE41F8]);
        timestamp3 = [endLocationCopy timestamp];
        timestamp4 = [locationCopy timestamp];
        [timestamp3 timeIntervalSinceDate:timestamp4];
        v44 = MEMORY[0x277CBEAA8];
        v46 = v38 / v45;
        timestamp5 = [locationCopy timestamp];
        timestamp6 = [endLocationCopy timestamp];
        v49 = [v44 dateBisectingDate1:timestamp5 date2:timestamp6];
        v50 = [v42 initWithCoordinate:v49 altitude:v26 horizontalAccuracy:v28 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v46}];

        goto LABEL_30;
      }

      v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTCommonIsCoordinateValid(midCoordinate.latitude, midCoordinate.longitude)", buf, 2u);
      }

      goto LABEL_29;
    }

    v53 = objc_opt_class();
    boundCopy2 = bound;
    distanceBoundCopy2 = distanceBound;
    v56 = locationCopy;
    v57 = endLocationCopy;
    v58 = lowLocationCopy;
    v59 = v36;
  }

  v50 = [v53 locationBetweenLowerDistanceBound:v56 upperDistanceBound:v57 fromStartLocation:v58 endLocation:v59 betweenTargetLowLocation:boundCopy2 targetHighLocation:distanceBoundCopy2];
LABEL_30:

  return v50;
}

+ (id)centerProducingArcBetweenLowerDistanceBound:(double)bound upperDistanceBound:(double)distanceBound fromStartLocation:(id)location endLocation:(id)endLocation examiningLatLongDisplacement:(double)displacement fromIntersectingLocation:(id)intersectingLocation atAngle:(double)angle
{
  v65 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  endLocationCopy = endLocation;
  intersectingLocationCopy = intersectingLocation;
  v18 = intersectingLocationCopy;
  if (bound <= 0.0)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v61) = 0;
    v43 = "Invalid parameter not satisfying: lowerDistanceBound > 0";
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, v43, &v61, 2u);
    goto LABEL_21;
  }

  if (distanceBound <= 0.0)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v61) = 0;
    v43 = "Invalid parameter not satisfying: upperDistanceBound > 0";
    goto LABEL_20;
  }

  if (!locationCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v61) = 0;
    v43 = "Invalid parameter not satisfying: startLocation";
    goto LABEL_20;
  }

  if (!endLocationCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v61) = 0;
    v43 = "Invalid parameter not satisfying: endLocation";
    goto LABEL_20;
  }

  if (!intersectingLocationCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v61) = 0;
    v43 = "Invalid parameter not satisfying: intersectingLocation";
    goto LABEL_20;
  }

  v19 = objc_opt_class();
  [v18 coordinate];
  [v19 coordinateAtDisplacement:displacement fromCenterCoordinate:v20 atAngle:{v21, angle}];
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc(MEMORY[0x277CE41F8]);
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v28 = v27 * 1.5;
  v29 = MEMORY[0x277CBEAA8];
  timestamp = [locationCopy timestamp];
  timestamp2 = [endLocationCopy timestamp];
  v32 = [v29 dateBisectingDate1:timestamp date2:timestamp2];
  v33 = [v26 initWithCoordinate:v32 altitude:v23 horizontalAccuracy:v25 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v28}];

  [objc_opt_class() arcDistanceForStartLocation:locationCopy endLocation:endLocationCopy centerLocation:v33];
  if (v34 > bound)
  {
    v35 = v34;
    if (v34 > distanceBound)
    {
      if (displacement < 0.0)
      {
        v36 = objc_opt_class();
        boundCopy2 = bound;
        distanceBoundCopy2 = distanceBound;
        v39 = locationCopy;
        v40 = endLocationCopy;
        v41 = v18;
        v42 = v33;
LABEL_44:
        v59 = [v36 locationBetweenLowerDistanceBound:v39 upperDistanceBound:v40 fromStartLocation:v41 endLocation:v42 betweenTargetLowLocation:boundCopy2 targetHighLocation:distanceBoundCopy2];
        goto LABEL_45;
      }

      v36 = objc_opt_class();
      if (displacement == 0.0)
      {
        v46 = 0.1;
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    RTCommonIsCoordinateValid();
    if (v47 == 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v61 = 134545921;
        v62 = v23;
        v63 = 2053;
        v64 = v25;
        _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "Invalid Coords: %{sensitive}lf, %{sensitive}lf", &v61, 0x16u);
      }
    }

    RTCommonIsCoordinateValid();
    if (v49 != 0.0)
    {
      v50 = objc_alloc(MEMORY[0x277CE41F8]);
      timestamp3 = [endLocationCopy timestamp];
      timestamp4 = [locationCopy timestamp];
      [timestamp3 timeIntervalSinceDate:timestamp4];
      v53 = MEMORY[0x277CBEAA8];
      v55 = v35 / v54;
      timestamp5 = [locationCopy timestamp];
      timestamp6 = [endLocationCopy timestamp];
      v58 = [v53 dateBisectingDate1:timestamp5 date2:timestamp6];
      v44 = [v50 initWithCoordinate:v58 altitude:v23 horizontalAccuracy:v25 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v55}];

      goto LABEL_22;
    }

    v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v61) = 0;
      _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTCommonIsCoordinateValid(candidateTargetCoordinate.latitude, candidateTargetCoordinate.longitude)", &v61, 2u);
    }

LABEL_21:
    v44 = 0;
    goto LABEL_22;
  }

  if (displacement < 0.0)
  {
    v36 = objc_opt_class();
LABEL_27:
    v46 = displacement + displacement;
    goto LABEL_39;
  }

  v36 = objc_opt_class();
  if (displacement != 0.0)
  {
    boundCopy2 = bound;
    distanceBoundCopy2 = distanceBound;
    v39 = locationCopy;
    v40 = endLocationCopy;
    v41 = v33;
    v42 = v18;
    goto LABEL_44;
  }

  v46 = -0.1;
LABEL_39:
  v59 = [v36 centerProducingArcBetweenLowerDistanceBound:locationCopy upperDistanceBound:endLocationCopy fromStartLocation:v18 endLocation:bound examiningLatLongDisplacement:distanceBound fromIntersectingLocation:v46 atAngle:angle];
LABEL_45:
  v44 = v59;
LABEL_22:

  return v44;
}

+ (id)centerProducingArcBetweenLowerDistanceBound:(double)bound upperDistanceBound:(double)distanceBound FromStartLocation:(id)location endLocation:(id)endLocation
{
  locationCopy = location;
  endLocationCopy = endLocation;
  v11 = endLocationCopy;
  if (bound <= 0.0)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v33 = 0;
    v26 = "Invalid parameter not satisfying: lowerDistanceBound > 0";
    v27 = &v33;
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
    goto LABEL_18;
  }

  if (distanceBound <= bound)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v32 = 0;
    v26 = "Invalid parameter not satisfying: upperDistanceBound > lowerDistanceBound";
    v27 = &v32;
    goto LABEL_17;
  }

  if (!locationCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v31 = 0;
    v26 = "Invalid parameter not satisfying: startLocation";
    v27 = &v31;
    goto LABEL_17;
  }

  if (!endLocationCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v30 = 0;
    v26 = "Invalid parameter not satisfying: endLocation";
    v27 = &v30;
    goto LABEL_17;
  }

  [locationCopy distanceFromLocation:endLocationCopy];
  if (v12 < bound)
  {
    v13 = objc_opt_class();
    [locationCopy coordinate];
    v15 = v14;
    v17 = v16;
    [v11 coordinate];
    [v13 averageCoordinateOfCoordinate1:v15 coordinate2:{v17, v18, v19}];
    v22 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v20 longitude:v21];
    [objc_opt_class() anglePerpendicularToLineBetweenLocation1:locationCopy location2:v11];
    v24 = [objc_opt_class() centerProducingArcBetweenLowerDistanceBound:locationCopy upperDistanceBound:v11 fromStartLocation:v22 endLocation:bound examiningLatLongDisplacement:distanceBound fromIntersectingLocation:0.0 atAngle:v23];

    goto LABEL_19;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = 0;
    v26 = "Invalid parameter not satisfying: lowerDistanceBound > distance";
    v27 = &v29;
    goto LABEL_17;
  }

LABEL_18:

  v24 = 0;
LABEL_19:

  return v24;
}

+ (id)necessaryCenterOfArcBetweenStartLocation:(id)location endLocation:(id)endLocation minimumSpeed:(double)speed
{
  v25 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  endLocationCopy = endLocation;
  v9 = endLocationCopy;
  if (!locationCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LOWORD(v21) = 0;
    v19 = "Invalid parameter not satisfying: startLocation";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, &v21, 2u);
    goto LABEL_17;
  }

  if (!endLocationCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LOWORD(v21) = 0;
    v19 = "Invalid parameter not satisfying: endLocation";
    goto LABEL_16;
  }

  if (speed <= 0.0)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v19 = "Invalid parameter not satisfying: minimumSpeed > 0";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  [endLocationCopy distanceFromLocation:locationCopy];
  v11 = v10;
  timestamp = [v9 timestamp];
  timestamp2 = [locationCopy timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v15 = v14;

  if (v15 <= 0.0)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "+[RTSignalGenerator necessaryCenterOfArcBetweenStartLocation:endLocation:minimumSpeed:]";
      v23 = 1024;
      v24 = 408;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "endLocation must be strictly after startLocaton (in %s:%d)", &v21, 0x12u);
    }
  }

  if (v11 / v15 < speed)
  {
    v17 = [objc_opt_class() centerProducingArcBetweenLowerDistanceBound:locationCopy upperDistanceBound:v9 FromStartLocation:v15 * speed endLocation:speed * 1.3 * v15];
    goto LABEL_19;
  }

LABEL_18:
  v17 = 0;
LABEL_19:

  return v17;
}

- (id)addGeneratedLocation:(id)location forceInject:(BOOL)inject
{
  v52 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  [locationCopy coordinate];
  [locationCopy coordinate];
  RTCommonIsCoordinateValid();
  if (v7 != 0.0)
  {
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__150;
    v48 = __Block_byref_object_dispose__150;
    v49 = 0;
    if (locationCopy)
    {
      [(NSMutableArray *)self->_generatedLocations addObject:locationCopy];
    }

    if (!inject && [(NSMutableArray *)self->_generatedLocations count]!= 625)
    {
      goto LABEL_22;
    }

    v8 = (v45 + 40);
    obj = *(v45 + 5);
    v9 = [(RTSignalGenerator *)self locationCountInStoreWithError:&obj];
    objc_storeStrong(v8, obj);
    v10 = dispatch_semaphore_create(0);
    locationManager = self->_locationManager;
    generatedLocations = self->_generatedLocations;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __54__RTSignalGenerator_addGeneratedLocation_forceInject___block_invoke;
    v40[3] = &unk_2788C4618;
    v42 = buf;
    v13 = v10;
    v41 = v13;
    [(RTLocationManager *)locationManager injectLocations:generatedLocations handler:v40];
    v14 = v13;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v38 = [MEMORY[0x277CBEAA8] now];
      [v38 timeIntervalSinceDate:v15];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_123];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
      firstObject = [v22 firstObject];

      [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *v51 = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v51, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      *v51 = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
LABEL_16:

        v32 = v27;
        if (!v29)
        {
          objc_storeStrong(v45 + 5, v27);
        }

        v33 = -10;
        do
        {
          v34 = (v45 + 40);
          v39 = *(v45 + 5);
          v35 = [(RTSignalGenerator *)self locationCountInStoreWithError:&v39];
          objc_storeStrong(v34, v39);
          usleep(0x2710u);
          v36 = __CFADD__(v33++, 1);
        }

        while (!v36 && v35 < [(NSMutableArray *)self->_generatedLocations count]+ v9);
        [(NSMutableArray *)self->_generatedLocations removeAllObjects];

LABEL_22:
        v31 = *(v45 + 5);
        _Block_object_dispose(buf, 8);

        goto LABEL_23;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
    goto LABEL_16;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTCommonIsCoordinateValid(location.coordinate.latitude, location.coordinate.longitude)", buf, 2u);
  }

  v31 = 0;
LABEL_23:

  return v31;
}

void __54__RTSignalGenerator_addGeneratedLocation_forceInject___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)transitionLocationsBetweenStartLocation:(id)location endLocation:(id)endLocation
{
  locationCopy = location;
  endLocationCopy = endLocation;
  v8 = endLocationCopy;
  if (!locationCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: startLocation";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_8;
  }

  if (!endLocationCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: endLocation";
    goto LABEL_14;
  }

  [objc_opt_class() minSpeedToFilterHyperParameter];
  v10 = [objc_opt_class() necessaryCenterOfArcBetweenStartLocation:locationCopy endLocation:v8 minimumSpeed:v9 * 1.5];
  if (v10)
  {
    v11 = v10;
    v12 = [(RTSignalGenerator *)self transitionLocationsAlongArcBetweenStartLocation:locationCopy endLocation:v8 forCenterLocation:v10];
  }

  else
  {
    timestamp = [v8 timestamp];
    timestamp2 = [locationCopy timestamp];
    [timestamp timeIntervalSinceDate:timestamp2];
    v18 = v17;

    v19 = v18 / 60.0;
    [v8 coordinate];
    v21 = v20;
    [locationCopy coordinate];
    v23 = v19;
    v24 = (v21 - v22) / v23;
    [v8 coordinate];
    v26 = v25;
    [locationCopy coordinate];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __73__RTSignalGenerator_transitionLocationsBetweenStartLocation_endLocation___block_invoke;
    v29[3] = &__block_descriptor_48_e63__CLLocationCoordinate2D_dd_32__0_CLLocationCoordinate2D_dd_8Q24l;
    *&v29[4] = v24;
    *&v29[5] = (v26 - v27) / v23;
    v28 = _Block_copy(v29);
    v12 = [(RTSignalGenerator *)self transitionLocationsBetweenStartLocation:locationCopy endLocation:v8 coordinateCalculationBlock:v28];

    v11 = 0;
  }

LABEL_9:

  return v12;
}

- (id)transitionLocationsAlongArcBetweenStartLocation:(id)location endLocation:(id)endLocation forCenterLocation:(id)centerLocation
{
  centerLocationCopy = centerLocation;
  endLocationCopy = endLocation;
  locationCopy = location;
  timestamp = [endLocationCopy timestamp];
  timestamp2 = [locationCopy timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v14 = v13;

  v15 = v14 / 60.0;
  v16 = objc_opt_class();
  [centerLocationCopy coordinate];
  v18 = v17;
  v20 = v19;
  [locationCopy coordinate];
  [v16 angleOfLineBetweenCoordinate1:v18 coordinate2:{v20, v21, v22}];
  v24 = v23;
  v25 = objc_opt_class();
  [centerLocationCopy coordinate];
  v27 = v26;
  v29 = v28;
  [endLocationCopy coordinate];
  [v25 angleOfLineBetweenCoordinate1:v27 coordinate2:{v29, v30, v31}];
  [objc_opt_class() angleSweptFromStartAngle:v24 ToEndAngle:v32];
  v34 = v33 / v15;
  v35 = objc_opt_class();
  [locationCopy coordinate];
  v37 = v36;
  v39 = v38;
  [centerLocationCopy coordinate];
  [v35 latLongDisplacementBetweenCoordinate1:v37 coordinate2:{v39, v40, v41}];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__RTSignalGenerator_transitionLocationsAlongArcBetweenStartLocation_endLocation_forCenterLocation___block_invoke;
  aBlock[3] = &unk_2788D0148;
  aBlock[4] = self;
  v48 = centerLocationCopy;
  v49 = v42;
  v50 = v24;
  v51 = v34;
  v43 = centerLocationCopy;
  v44 = _Block_copy(aBlock);
  v45 = [(RTSignalGenerator *)self transitionLocationsBetweenStartLocation:locationCopy endLocation:endLocationCopy coordinateCalculationBlock:v44];

  return v45;
}

uint64_t __99__RTSignalGenerator_transitionLocationsAlongArcBetweenStartLocation_endLocation_forCenterLocation___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_class();
  v5 = *(a1 + 48);
  [*(a1 + 40) coordinate];
  v8 = *(a1 + 56) + a2 * *(a1 + 64);

  return [v4 coordinateAtDisplacement:v5 fromCenterCoordinate:v6 atAngle:{v7, v8}];
}

- (id)transitionLocationsBetweenStartLocation:(id)location endLocation:(id)endLocation coordinateCalculationBlock:(id)block
{
  locationCopy = location;
  endLocationCopy = endLocation;
  blockCopy = block;
  if (!locationCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      v25 = 0;
      goto LABEL_13;
    }

    v36 = 0;
    v30 = "Invalid parameter not satisfying: startLocation";
    v31 = &v36;
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v30, v31, 2u);
    goto LABEL_10;
  }

  if (!endLocationCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: endLocation";
    v31 = buf;
    goto LABEL_17;
  }

  [locationCopy coordinate];
  v12 = v11;
  [locationCopy coordinate];
  v14 = CLLocationCoordinate2DMake(v12, v13);
  timestamp = [locationCopy timestamp];
  v16 = [timestamp dateByAddingTimeInterval:60.0];

  v34 = locationCopy;
  v17 = locationCopy;
  v18 = 1;
  while (1)
  {
    v19 = blockCopy[2](blockCopy, v18, v14.latitude, v14.longitude);
    v21 = v20;
    v22 = [objc_alloc(MEMORY[0x277CE41F8]) initWithCoordinate:v16 altitude:v19 horizontalAccuracy:v20 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, 0.0}];
    [v22 distanceFromLocation:v17];
    v24 = [objc_alloc(MEMORY[0x277CE41F8]) initWithCoordinate:v16 altitude:v19 horizontalAccuracy:v21 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v23 / 60.0}];
    v25 = [(RTSignalGenerator *)self addGeneratedLocation:v24 forceInject:0];

    ++self->_totalTransitionLocationsGeneratedCount;
    if (v25)
    {
      break;
    }

    ++v18;
    v26 = [v16 dateByAddingTimeInterval:60.0];

    timestamp2 = [endLocationCopy timestamp];
    v28 = [v26 isBeforeDate:timestamp2];

    v16 = v26;
    v17 = v22;
    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v32 = v25;

  v22 = v17;
  v26 = v16;
LABEL_12:

  locationCopy = v34;
LABEL_13:

  return v25;
}

- (id)locationsForVisit:(id)visit
{
  visitCopy = visit;
  v4 = visitCopy;
  if (visitCopy)
  {
    exit = [visitCopy exit];
    entry = [v4 entry];
    [exit timeIntervalSinceDate:entry];
    v8 = v7 / 100.0;

    if (v8 < 30.0)
    {
      v8 = 30.0;
    }

    entry2 = [v4 entry];
    while (1)
    {
      location = [v4 location];
      [location horizontalUncertainty];
      v11 = arc4random_uniform((v10 * 0.5));
      v12 = v11 * 0.000009;

      if ((arc4random() & 1) == 0)
      {
        v12 = -(v11 * 0.000009);
      }

      v13 = objc_alloc(MEMORY[0x277D01160]);
      location2 = [v4 location];
      [location2 latitude];
      v15 = v12 + v14;
      location3 = [v4 location];
      [location3 longitude];
      v18 = v12 + v17;
      location4 = [v4 location];
      [location4 horizontalUncertainty];
      v21 = v20;
      location5 = [v4 location];
      [location5 altitude];
      v24 = v23;
      location6 = [v4 location];
      [location6 verticalUncertainty];
      v27 = v26;
      location7 = [v4 location];
      referenceFrame = [location7 referenceFrame];
      location8 = [v4 location];
      [location8 speed];
      v32 = v31;
      location9 = [v4 location];
      v34 = [v13 initWithLatitude:entry2 longitude:referenceFrame horizontalUncertainty:objc_msgSend(location9 altitude:"sourceAccuracy") verticalUncertainty:v15 date:v18 referenceFrame:v21 speed:v24 sourceAccuracy:{v27, v32}];

      location10 = [v4 location];
      v36 = [location10 sourceAccuracy] == 2;

      v37 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:v34 speed:v36 type:0.0];
      v38 = [(RTSignalGenerator *)self addGeneratedLocation:v37 forceInject:0];

      ++self->_totalVisitLocationsGeneratedCount;
      if (v38)
      {
        break;
      }

      v39 = [entry2 dateByAddingTimeInterval:v8];

      exit2 = [v4 exit];
      v41 = [v39 isOnOrBefore:exit2];

      entry2 = v39;
      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v43 = v38;

    v39 = entry2;
LABEL_14:
  }

  else
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
    }

    v38 = 0;
  }

  return v38;
}

+ (void)injectSignalForSignalGeneratorOptions:(id)options locationManager:(id)manager handler:(id)handler
{
  optionsCopy = options;
  managerCopy = manager;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = [[RTSignalGenerator alloc] initWithSignalGeneratorOptions:optionsCopy locationManager:managerCopy];
    generateLocations = [(RTSignalGenerator *)v10 generateLocations];
    handlerCopy[2](handlerCopy, generateLocations);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v13, 2u);
    }
  }
}

- (id)generateLocations
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CE41F8]);
  startLocation = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions startLocation];
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v6 = [v3 initWithRTLocation:startLocation speed:v5 * 1.5];

  v7 = objc_alloc(MEMORY[0x277CE41F8]);
  endLocation = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions endLocation];
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v10 = [v7 initWithRTLocation:endLocation speed:v9 * 1.5];

  expectedVisits = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions expectedVisits];
  v12 = [expectedVisits count];

  if (!v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v86 = "[RTSignalGenerator generateLocations]";
      v87 = 1024;
      LODWORD(v88) = 625;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _signalGeneratorOptions.expectedVisits.count (in %s:%d)", buf, 0x12u);
    }
  }

  v14 = v6;
  v15 = [(RTSignalGenerator *)self addGeneratedLocation:v14 forceInject:0];
  ++self->_totalTransitionLocationsGeneratedCount;
  if (v15)
  {
    v16 = v15;
    v17 = v14;
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    expectedVisits2 = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions expectedVisits];
    v19 = v14;
    v77 = [expectedVisits2 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v77)
    {
      v72 = v14;
      v73 = v10;
      v20 = 0;
      v75 = *v82;
      selfCopy = self;
      v19 = v14;
      v74 = expectedVisits2;
      while (2)
      {
        v21 = 0;
        v22 = v20;
        v80 = v19;
        do
        {
          if (*v82 != v75)
          {
            objc_enumerationMutation(expectedVisits2);
          }

          v23 = *(*(&v81 + 1) + 8 * v21);
          v24 = objc_alloc(MEMORY[0x277CE41F8]);
          location = [v23 location];
          [location latitude];
          v26 = v25;
          location2 = [v23 location];
          [location2 longitude];
          v29 = CLLocationCoordinate2DMake(v26, v28);
          location3 = [v23 location];
          [location3 altitude];
          v32 = v31;
          location4 = [v23 location];
          [location4 horizontalUncertainty];
          v35 = v34;
          location5 = [v23 location];
          [location5 verticalUncertainty];
          v38 = v37;
          [objc_opt_class() minSpeedToFilterHyperParameter];
          v40 = v39 * 1.5;
          entry = [v23 entry];
          v42 = [v24 initWithCoordinate:entry altitude:v29.latitude horizontalAccuracy:v29.longitude verticalAccuracy:v32 course:v35 speed:v38 timestamp:{0.0, v40}];

          v79 = v42;
          v43 = [(RTSignalGenerator *)selfCopy transitionLocationsBetweenStartLocation:v80 endLocation:v42];
          if (v43 || ([(RTSignalGenerator *)selfCopy locationsForVisit:v23], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = v43;

            v14 = v72;
            v10 = v73;
            v17 = v80;
            goto LABEL_26;
          }

          v44 = objc_alloc(MEMORY[0x277CE41F8]);
          location6 = [v23 location];
          [location6 latitude];
          v47 = v46;
          location7 = [v23 location];
          [location7 longitude];
          v50 = CLLocationCoordinate2DMake(v47, v49);
          location8 = [v23 location];
          [location8 altitude];
          v53 = v52;
          location9 = [v23 location];
          [location9 horizontalUncertainty];
          v56 = v55;
          location10 = [v23 location];
          [location10 verticalUncertainty];
          v59 = v58;
          [objc_opt_class() minSpeedToFilterHyperParameter];
          v61 = v60 * 1.5;
          exit = [v23 exit];
          v19 = [v44 initWithCoordinate:exit altitude:v50.latitude horizontalAccuracy:v50.longitude verticalAccuracy:v53 course:v56 speed:v59 timestamp:{0.0, v61}];

          ++v21;
          v20 = v79;
          v22 = v79;
          v80 = v19;
          expectedVisits2 = v74;
        }

        while (v77 != v21);
        v77 = [v74 countByEnumeratingWithState:&v81 objects:v89 count:16];
        if (v77)
        {
          continue;
        }

        break;
      }

      v14 = v72;
      v10 = v73;
      self = selfCopy;
    }

    v63 = v10;
    v64 = v19;
    v65 = [(RTSignalGenerator *)self transitionLocationsBetweenStartLocation:v19 endLocation:v63];
    if (v65)
    {
      v66 = v65;
    }

    else
    {
      v67 = [(RTSignalGenerator *)self addGeneratedLocation:v63 forceInject:1];
      ++self->_totalTransitionLocationsGeneratedCount;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v68 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          totalVisitLocationsGeneratedCount = self->_totalVisitLocationsGeneratedCount;
          totalTransitionLocationsGeneratedCount = self->_totalTransitionLocationsGeneratedCount;
          *buf = 134218240;
          v86 = totalVisitLocationsGeneratedCount;
          v87 = 2048;
          v88 = totalTransitionLocationsGeneratedCount;
          _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, "RTSignalGenerator Produced %lu visit locations && %lu transition locations", buf, 0x16u);
        }
      }

      v66 = v67;
    }

    v16 = v66;

    v17 = v64;
  }

LABEL_26:

  return v16;
}

@end