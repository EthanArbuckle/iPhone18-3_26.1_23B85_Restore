@interface RTSignalGenerator
+ (CLLocationCoordinate2D)averageCoordinateOfCoordinate1:(CLLocationCoordinate2D)a3 coordinate2:(CLLocationCoordinate2D)a4;
+ (CLLocationCoordinate2D)coordinateAtDisplacement:(double)a3 fromCenterCoordinate:(CLLocationCoordinate2D)a4 atAngle:(double)a5;
+ (double)angleOfLineBetweenCoordinate1:(CLLocationCoordinate2D)a3 coordinate2:(CLLocationCoordinate2D)a4;
+ (double)anglePerpendicularToLineBetweenLocation1:(id)a3 location2:(id)a4;
+ (double)angleSweptFromStartAngle:(double)a3 ToEndAngle:(double)a4;
+ (double)arcDistanceForStartLocation:(id)a3 endLocation:(id)a4 centerLocation:(id)a5;
+ (double)minSpeedToFilterHyperParameter;
+ (double)perpendicularAngleForAngle:(double)a3;
+ (id)centerProducingArcBetweenLowerDistanceBound:(double)a3 upperDistanceBound:(double)a4 FromStartLocation:(id)a5 endLocation:(id)a6;
+ (id)centerProducingArcBetweenLowerDistanceBound:(double)a3 upperDistanceBound:(double)a4 fromStartLocation:(id)a5 endLocation:(id)a6 examiningLatLongDisplacement:(double)a7 fromIntersectingLocation:(id)a8 atAngle:(double)a9;
+ (id)locationBetweenLowerDistanceBound:(double)a3 upperDistanceBound:(double)a4 fromStartLocation:(id)a5 endLocation:(id)a6 betweenTargetLowLocation:(id)a7 targetHighLocation:(id)a8;
+ (id)necessaryCenterOfArcBetweenStartLocation:(id)a3 endLocation:(id)a4 minimumSpeed:(double)a5;
+ (void)injectSignalForSignalGeneratorOptions:(id)a3 locationManager:(id)a4 handler:(id)a5;
- (RTSignalGenerator)initWithSignalGeneratorOptions:(id)a3 locationManager:(id)a4 generatedLocations:(id)a5;
- (id)addGeneratedLocation:(id)a3 forceInject:(BOOL)a4;
- (id)generateLocations;
- (id)locationsForVisit:(id)a3;
- (id)transitionLocationsAlongArcBetweenStartLocation:(id)a3 endLocation:(id)a4 forCenterLocation:(id)a5;
- (id)transitionLocationsBetweenStartLocation:(id)a3 endLocation:(id)a4;
- (id)transitionLocationsBetweenStartLocation:(id)a3 endLocation:(id)a4 coordinateCalculationBlock:(id)a5;
- (unint64_t)locationCountInStoreWithError:(id *)a3;
@end

@implementation RTSignalGenerator

- (RTSignalGenerator)initWithSignalGeneratorOptions:(id)a3 locationManager:(id)a4 generatedLocations:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v16 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: signalGeneratorOptions";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_9;
  }

  if (!v10)
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
    objc_storeStrong(&v12->_signalGeneratorOptions, a3);
    objc_storeStrong(&v13->_locationManager, a4);
    v14 = [MEMORY[0x277CBEB18] arrayWithArray:v11];
    generatedLocations = v13->_generatedLocations;
    v13->_generatedLocations = v14;

    v13->_totalVisitLocationsGeneratedCount = 0;
    v13->_totalTransitionLocationsGeneratedCount = 0;
  }

  self = v13;
  v16 = self;
LABEL_10:

  return v16;
}

- (unint64_t)locationCountInStoreWithError:(id *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a3)
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
  v8 = [MEMORY[0x277CBEAA8] distantPast];
  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__RTSignalGenerator_locationCountInStoreWithError___block_invoke;
  v31[3] = &unk_2788C4528;
  v33 = &v35;
  v34 = v39;
  v10 = v6;
  v32 = v10;
  [(RTLocationManager *)locationManager fetchStoredLocationsCountFromDate:v8 toDate:v9 uncertainty:-1 limit:v31 handler:1.79769313e308];

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
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
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

  if (a3)
  {
    *a3 = *(*&v39[8] + 40);
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

+ (double)perpendicularAngleForAngle:(double)a3
{
  result = a3 + 1.57079633;
  if (result > 6.28318531)
  {
    return result + -6.28318531;
  }

  return result;
}

+ (double)anglePerpendicularToLineBetweenLocation1:(id)a3 location2:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  [v6 coordinate];
  v9 = v8;
  v11 = v10;

  [v5 coordinate];
  v13 = v12;
  v15 = v14;

  [v7 angleOfLineBetweenCoordinate1:v9 coordinate2:{v11, v13, v15}];
  v17 = v16;
  v18 = objc_opt_class();

  [v18 perpendicularAngleForAngle:v17];
  return result;
}

+ (double)angleOfLineBetweenCoordinate1:(CLLocationCoordinate2D)a3 coordinate2:(CLLocationCoordinate2D)a4
{
  v4 = a4.latitude - a3.latitude;
  v5 = a4.longitude - a3.longitude;
  if (a4.longitude - a3.longitude == 0.0)
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

+ (double)angleSweptFromStartAngle:(double)a3 ToEndAngle:(double)a4
{
  if (a4 <= a3)
  {
    a4 = a4 + 6.28318531;
  }

  return a4 - a3;
}

+ (double)arcDistanceForStartLocation:(id)a3 endLocation:(id)a4 centerLocation:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  [v7 coordinate];
  v13 = v12;
  v15 = v14;
  [v9 coordinate];
  [v11 angleOfLineBetweenCoordinate1:v13 coordinate2:{v15, v16, v17}];
  v19 = v18;
  v20 = objc_opt_class();
  [v7 coordinate];
  v22 = v21;
  v24 = v23;
  [v8 coordinate];
  v26 = v25;
  v28 = v27;

  [v20 angleOfLineBetweenCoordinate1:v22 coordinate2:{v24, v26, v28}];
  [v10 angleSweptFromStartAngle:v19 ToEndAngle:v29];
  v31 = v30;
  [v9 distanceFromLocation:v7];
  v33 = v32;

  return fabs(v31 * v33);
}

+ (CLLocationCoordinate2D)averageCoordinateOfCoordinate1:(CLLocationCoordinate2D)a3 coordinate2:(CLLocationCoordinate2D)a4
{
  v6 = CLLocationCoordinate2DMake((a3.latitude + a4.latitude) * 0.5, (a3.longitude + a4.longitude) * 0.5);
  longitude = v6.longitude;
  latitude = v6.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (CLLocationCoordinate2D)coordinateAtDisplacement:(double)a3 fromCenterCoordinate:(CLLocationCoordinate2D)a4 atAngle:(double)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = __sincos_stret(a5);

  v11 = CLLocationCoordinate2DMake(latitude + a3 * v8.__sinval, longitude + a3 * v8.__cosval);
  v10 = v11.longitude;
  v9 = v11.latitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

+ (id)locationBetweenLowerDistanceBound:(double)a3 upperDistanceBound:(double)a4 fromStartLocation:(id)a5 endLocation:(id)a6 betweenTargetLowLocation:(id)a7 targetHighLocation:(id)a8
{
  v66 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = v16;
  if (a3 <= 0.0)
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

  if (a4 <= 0.0)
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

  if (!v13)
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

  if (!v14)
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

  if (!v15)
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

  if (!v16)
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
  [v15 coordinate];
  [v18 averageCoordinateOfCoordinate1:v20 coordinate2:{v22, v23, v24}];
  v26 = v25;
  v28 = v27;
  v29 = objc_alloc(MEMORY[0x277CE41F8]);
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v31 = v30 * 1.5;
  v32 = MEMORY[0x277CBEAA8];
  v33 = [v13 timestamp];
  v34 = [v14 timestamp];
  v35 = [v32 dateBisectingDate1:v33 date2:v34];
  v36 = [v29 initWithCoordinate:v35 altitude:v26 horizontalAccuracy:v28 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v31}];

  [objc_opt_class() arcDistanceForStartLocation:v13 endLocation:v14 centerLocation:v36];
  if (v37 <= a3)
  {
    v53 = objc_opt_class();
    v54 = a3;
    v55 = a4;
    v56 = v13;
    v57 = v14;
    v58 = v36;
    v59 = v17;
  }

  else
  {
    v38 = v37;
    if (v37 < a4)
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
        v61 = [v14 timestamp];
        v43 = [v13 timestamp];
        [v61 timeIntervalSinceDate:v43];
        v44 = MEMORY[0x277CBEAA8];
        v46 = v38 / v45;
        v47 = [v13 timestamp];
        v48 = [v14 timestamp];
        v49 = [v44 dateBisectingDate1:v47 date2:v48];
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
    v54 = a3;
    v55 = a4;
    v56 = v13;
    v57 = v14;
    v58 = v15;
    v59 = v36;
  }

  v50 = [v53 locationBetweenLowerDistanceBound:v56 upperDistanceBound:v57 fromStartLocation:v58 endLocation:v59 betweenTargetLowLocation:v54 targetHighLocation:v55];
LABEL_30:

  return v50;
}

+ (id)centerProducingArcBetweenLowerDistanceBound:(double)a3 upperDistanceBound:(double)a4 fromStartLocation:(id)a5 endLocation:(id)a6 examiningLatLongDisplacement:(double)a7 fromIntersectingLocation:(id)a8 atAngle:(double)a9
{
  v65 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = v17;
  if (a3 <= 0.0)
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

  if (a4 <= 0.0)
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

  if (!v15)
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

  if (!v16)
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

  if (!v17)
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
  [v19 coordinateAtDisplacement:a7 fromCenterCoordinate:v20 atAngle:{v21, a9}];
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc(MEMORY[0x277CE41F8]);
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v28 = v27 * 1.5;
  v29 = MEMORY[0x277CBEAA8];
  v30 = [v15 timestamp];
  v31 = [v16 timestamp];
  v32 = [v29 dateBisectingDate1:v30 date2:v31];
  v33 = [v26 initWithCoordinate:v32 altitude:v23 horizontalAccuracy:v25 verticalAccuracy:0.0 course:10.0 speed:10.0 timestamp:{0.0, v28}];

  [objc_opt_class() arcDistanceForStartLocation:v15 endLocation:v16 centerLocation:v33];
  if (v34 > a3)
  {
    v35 = v34;
    if (v34 > a4)
    {
      if (a7 < 0.0)
      {
        v36 = objc_opt_class();
        v37 = a3;
        v38 = a4;
        v39 = v15;
        v40 = v16;
        v41 = v18;
        v42 = v33;
LABEL_44:
        v59 = [v36 locationBetweenLowerDistanceBound:v39 upperDistanceBound:v40 fromStartLocation:v41 endLocation:v42 betweenTargetLowLocation:v37 targetHighLocation:v38];
        goto LABEL_45;
      }

      v36 = objc_opt_class();
      if (a7 == 0.0)
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
      v51 = [v16 timestamp];
      v52 = [v15 timestamp];
      [v51 timeIntervalSinceDate:v52];
      v53 = MEMORY[0x277CBEAA8];
      v55 = v35 / v54;
      v56 = [v15 timestamp];
      v57 = [v16 timestamp];
      v58 = [v53 dateBisectingDate1:v56 date2:v57];
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

  if (a7 < 0.0)
  {
    v36 = objc_opt_class();
LABEL_27:
    v46 = a7 + a7;
    goto LABEL_39;
  }

  v36 = objc_opt_class();
  if (a7 != 0.0)
  {
    v37 = a3;
    v38 = a4;
    v39 = v15;
    v40 = v16;
    v41 = v33;
    v42 = v18;
    goto LABEL_44;
  }

  v46 = -0.1;
LABEL_39:
  v59 = [v36 centerProducingArcBetweenLowerDistanceBound:v15 upperDistanceBound:v16 fromStartLocation:v18 endLocation:a3 examiningLatLongDisplacement:a4 fromIntersectingLocation:v46 atAngle:a9];
LABEL_45:
  v44 = v59;
LABEL_22:

  return v44;
}

+ (id)centerProducingArcBetweenLowerDistanceBound:(double)a3 upperDistanceBound:(double)a4 FromStartLocation:(id)a5 endLocation:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (a3 <= 0.0)
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

  if (a4 <= a3)
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

  if (!v9)
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

  if (!v10)
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

  [v9 distanceFromLocation:v10];
  if (v12 < a3)
  {
    v13 = objc_opt_class();
    [v9 coordinate];
    v15 = v14;
    v17 = v16;
    [v11 coordinate];
    [v13 averageCoordinateOfCoordinate1:v15 coordinate2:{v17, v18, v19}];
    v22 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v20 longitude:v21];
    [objc_opt_class() anglePerpendicularToLineBetweenLocation1:v9 location2:v11];
    v24 = [objc_opt_class() centerProducingArcBetweenLowerDistanceBound:v9 upperDistanceBound:v11 fromStartLocation:v22 endLocation:a3 examiningLatLongDisplacement:a4 fromIntersectingLocation:0.0 atAngle:v23];

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

+ (id)necessaryCenterOfArcBetweenStartLocation:(id)a3 endLocation:(id)a4 minimumSpeed:(double)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
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

  if (!v8)
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

  if (a5 <= 0.0)
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

  [v8 distanceFromLocation:v7];
  v11 = v10;
  v12 = [v9 timestamp];
  v13 = [v7 timestamp];
  [v12 timeIntervalSinceDate:v13];
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

  if (v11 / v15 < a5)
  {
    v17 = [objc_opt_class() centerProducingArcBetweenLowerDistanceBound:v7 upperDistanceBound:v9 FromStartLocation:v15 * a5 endLocation:a5 * 1.3 * v15];
    goto LABEL_19;
  }

LABEL_18:
  v17 = 0;
LABEL_19:

  return v17;
}

- (id)addGeneratedLocation:(id)a3 forceInject:(BOOL)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 coordinate];
  [v6 coordinate];
  RTCommonIsCoordinateValid();
  if (v7 != 0.0)
  {
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__150;
    v48 = __Block_byref_object_dispose__150;
    v49 = 0;
    if (v6)
    {
      [(NSMutableArray *)self->_generatedLocations addObject:v6];
    }

    if (!a4 && [(NSMutableArray *)self->_generatedLocations count]!= 625)
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
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
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

- (id)transitionLocationsBetweenStartLocation:(id)a3 endLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
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

  if (!v7)
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
  v10 = [objc_opt_class() necessaryCenterOfArcBetweenStartLocation:v6 endLocation:v8 minimumSpeed:v9 * 1.5];
  if (v10)
  {
    v11 = v10;
    v12 = [(RTSignalGenerator *)self transitionLocationsAlongArcBetweenStartLocation:v6 endLocation:v8 forCenterLocation:v10];
  }

  else
  {
    v15 = [v8 timestamp];
    v16 = [v6 timestamp];
    [v15 timeIntervalSinceDate:v16];
    v18 = v17;

    v19 = v18 / 60.0;
    [v8 coordinate];
    v21 = v20;
    [v6 coordinate];
    v23 = v19;
    v24 = (v21 - v22) / v23;
    [v8 coordinate];
    v26 = v25;
    [v6 coordinate];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __73__RTSignalGenerator_transitionLocationsBetweenStartLocation_endLocation___block_invoke;
    v29[3] = &__block_descriptor_48_e63__CLLocationCoordinate2D_dd_32__0_CLLocationCoordinate2D_dd_8Q24l;
    *&v29[4] = v24;
    *&v29[5] = (v26 - v27) / v23;
    v28 = _Block_copy(v29);
    v12 = [(RTSignalGenerator *)self transitionLocationsBetweenStartLocation:v6 endLocation:v8 coordinateCalculationBlock:v28];

    v11 = 0;
  }

LABEL_9:

  return v12;
}

- (id)transitionLocationsAlongArcBetweenStartLocation:(id)a3 endLocation:(id)a4 forCenterLocation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 timestamp];
  v12 = [v10 timestamp];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13;

  v15 = v14 / 60.0;
  v16 = objc_opt_class();
  [v8 coordinate];
  v18 = v17;
  v20 = v19;
  [v10 coordinate];
  [v16 angleOfLineBetweenCoordinate1:v18 coordinate2:{v20, v21, v22}];
  v24 = v23;
  v25 = objc_opt_class();
  [v8 coordinate];
  v27 = v26;
  v29 = v28;
  [v9 coordinate];
  [v25 angleOfLineBetweenCoordinate1:v27 coordinate2:{v29, v30, v31}];
  [objc_opt_class() angleSweptFromStartAngle:v24 ToEndAngle:v32];
  v34 = v33 / v15;
  v35 = objc_opt_class();
  [v10 coordinate];
  v37 = v36;
  v39 = v38;
  [v8 coordinate];
  [v35 latLongDisplacementBetweenCoordinate1:v37 coordinate2:{v39, v40, v41}];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__RTSignalGenerator_transitionLocationsAlongArcBetweenStartLocation_endLocation_forCenterLocation___block_invoke;
  aBlock[3] = &unk_2788D0148;
  aBlock[4] = self;
  v48 = v8;
  v49 = v42;
  v50 = v24;
  v51 = v34;
  v43 = v8;
  v44 = _Block_copy(aBlock);
  v45 = [(RTSignalGenerator *)self transitionLocationsBetweenStartLocation:v10 endLocation:v9 coordinateCalculationBlock:v44];

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

- (id)transitionLocationsBetweenStartLocation:(id)a3 endLocation:(id)a4 coordinateCalculationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
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

  if (!v9)
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

  [v8 coordinate];
  v12 = v11;
  [v8 coordinate];
  v14 = CLLocationCoordinate2DMake(v12, v13);
  v15 = [v8 timestamp];
  v16 = [v15 dateByAddingTimeInterval:60.0];

  v34 = v8;
  v17 = v8;
  v18 = 1;
  while (1)
  {
    v19 = v10[2](v10, v18, v14.latitude, v14.longitude);
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

    v27 = [v9 timestamp];
    v28 = [v26 isBeforeDate:v27];

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

  v8 = v34;
LABEL_13:

  return v25;
}

- (id)locationsForVisit:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 exit];
    v6 = [v4 entry];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7 / 100.0;

    if (v8 < 30.0)
    {
      v8 = 30.0;
    }

    v47 = [v4 entry];
    while (1)
    {
      v9 = [v4 location];
      [v9 horizontalUncertainty];
      v11 = arc4random_uniform((v10 * 0.5));
      v12 = v11 * 0.000009;

      if ((arc4random() & 1) == 0)
      {
        v12 = -(v11 * 0.000009);
      }

      v13 = objc_alloc(MEMORY[0x277D01160]);
      v46 = [v4 location];
      [v46 latitude];
      v15 = v12 + v14;
      v16 = [v4 location];
      [v16 longitude];
      v18 = v12 + v17;
      v19 = [v4 location];
      [v19 horizontalUncertainty];
      v21 = v20;
      v22 = [v4 location];
      [v22 altitude];
      v24 = v23;
      v25 = [v4 location];
      [v25 verticalUncertainty];
      v27 = v26;
      v28 = [v4 location];
      v29 = [v28 referenceFrame];
      v30 = [v4 location];
      [v30 speed];
      v32 = v31;
      v33 = [v4 location];
      v34 = [v13 initWithLatitude:v47 longitude:v29 horizontalUncertainty:objc_msgSend(v33 altitude:"sourceAccuracy") verticalUncertainty:v15 date:v18 referenceFrame:v21 speed:v24 sourceAccuracy:{v27, v32}];

      v35 = [v4 location];
      v36 = [v35 sourceAccuracy] == 2;

      v37 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:v34 speed:v36 type:0.0];
      v38 = [(RTSignalGenerator *)self addGeneratedLocation:v37 forceInject:0];

      ++self->_totalVisitLocationsGeneratedCount;
      if (v38)
      {
        break;
      }

      v39 = [v47 dateByAddingTimeInterval:v8];

      v40 = [v4 exit];
      v41 = [v39 isOnOrBefore:v40];

      v47 = v39;
      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v43 = v38;

    v39 = v47;
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

+ (void)injectSignalForSignalGeneratorOptions:(id)a3 locationManager:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [[RTSignalGenerator alloc] initWithSignalGeneratorOptions:v7 locationManager:v8];
    v11 = [(RTSignalGenerator *)v10 generateLocations];
    v9[2](v9, v11);
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
  v4 = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions startLocation];
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v6 = [v3 initWithRTLocation:v4 speed:v5 * 1.5];

  v7 = objc_alloc(MEMORY[0x277CE41F8]);
  v8 = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions endLocation];
  [objc_opt_class() minSpeedToFilterHyperParameter];
  v10 = [v7 initWithRTLocation:v8 speed:v9 * 1.5];

  v11 = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions expectedVisits];
  v12 = [v11 count];

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
    v18 = [(RTSignalGeneratorOptions *)self->_signalGeneratorOptions expectedVisits];
    v19 = v14;
    v77 = [v18 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v77)
    {
      v72 = v14;
      v73 = v10;
      v20 = 0;
      v75 = *v82;
      v76 = self;
      v19 = v14;
      v74 = v18;
      while (2)
      {
        v21 = 0;
        v22 = v20;
        v80 = v19;
        do
        {
          if (*v82 != v75)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v81 + 1) + 8 * v21);
          v24 = objc_alloc(MEMORY[0x277CE41F8]);
          v78 = [v23 location];
          [v78 latitude];
          v26 = v25;
          v27 = [v23 location];
          [v27 longitude];
          v29 = CLLocationCoordinate2DMake(v26, v28);
          v30 = [v23 location];
          [v30 altitude];
          v32 = v31;
          v33 = [v23 location];
          [v33 horizontalUncertainty];
          v35 = v34;
          v36 = [v23 location];
          [v36 verticalUncertainty];
          v38 = v37;
          [objc_opt_class() minSpeedToFilterHyperParameter];
          v40 = v39 * 1.5;
          v41 = [v23 entry];
          v42 = [v24 initWithCoordinate:v41 altitude:v29.latitude horizontalAccuracy:v29.longitude verticalAccuracy:v32 course:v35 speed:v38 timestamp:{0.0, v40}];

          v79 = v42;
          v43 = [(RTSignalGenerator *)v76 transitionLocationsBetweenStartLocation:v80 endLocation:v42];
          if (v43 || ([(RTSignalGenerator *)v76 locationsForVisit:v23], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = v43;

            v14 = v72;
            v10 = v73;
            v17 = v80;
            goto LABEL_26;
          }

          v44 = objc_alloc(MEMORY[0x277CE41F8]);
          v45 = [v23 location];
          [v45 latitude];
          v47 = v46;
          v48 = [v23 location];
          [v48 longitude];
          v50 = CLLocationCoordinate2DMake(v47, v49);
          v51 = [v23 location];
          [v51 altitude];
          v53 = v52;
          v54 = [v23 location];
          [v54 horizontalUncertainty];
          v56 = v55;
          v57 = [v23 location];
          [v57 verticalUncertainty];
          v59 = v58;
          [objc_opt_class() minSpeedToFilterHyperParameter];
          v61 = v60 * 1.5;
          v62 = [v23 exit];
          v19 = [v44 initWithCoordinate:v62 altitude:v50.latitude horizontalAccuracy:v50.longitude verticalAccuracy:v53 course:v56 speed:v59 timestamp:{0.0, v61}];

          ++v21;
          v20 = v79;
          v22 = v79;
          v80 = v19;
          v18 = v74;
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
      self = v76;
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