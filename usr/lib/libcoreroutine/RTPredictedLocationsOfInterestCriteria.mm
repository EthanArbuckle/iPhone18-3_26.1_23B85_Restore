@interface RTPredictedLocationsOfInterestCriteria
- (BOOL)evaluatePredictedLocationOfInterest:(id)interest;
- (RTPredictedLocationsOfInterestCriteria)initWithDistanceCalculator:(id)calculator;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RTPredictedLocationsOfInterestCriteria

- (RTPredictedLocationsOfInterestCriteria)initWithDistanceCalculator:(id)calculator
{
  calculatorCopy = calculator;
  v9.receiver = self;
  v9.super_class = RTPredictedLocationsOfInterestCriteria;
  v6 = [(RTPredictedLocationsOfInterestCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_distanceCalculator, calculator);
    v7->_windowDuration = INFINITY;
    *&v7->_minimumDistance = xmmword_230B01180;
    v7->_minimumConfidence = 0.0;
  }

  return v7;
}

- (BOOL)evaluatePredictedLocationOfInterest:(id)interest
{
  v47 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  if (self->_referenceDate)
  {
    goto LABEL_5;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v42 = "[RTPredictedLocationsOfInterestCriteria evaluatePredictedLocationOfInterest:]";
    v43 = 1024;
    LODWORD(v44) = 48;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _referenceDate (in %s:%d)", buf, 0x12u);
  }

  if (self->_referenceDate)
  {
LABEL_5:
    if (interestCopy)
    {
      locationOfInterest = [interestCopy locationOfInterest];
      if (!locationOfInterest)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "[RTPredictedLocationsOfInterestCriteria evaluatePredictedLocationOfInterest:]";
          v43 = 1024;
          LODWORD(v44) = 59;
          _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest (in %s:%d)", buf, 0x12u);
        }

        goto LABEL_45;
      }

      if (!self->_referenceLocation || (*&self->_minimumDistance & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 && (*&self->_maximumDistance & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_10:
        nextEntryTime = [interestCopy nextEntryTime];
        v8 = nextEntryTime;
        if (nextEntryTime)
        {
          [nextEntryTime timeIntervalSinceDate:self->_referenceDate];
          if (v9 < 0.0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                stringFromDate = [v8 stringFromDate];
                stringFromDate2 = [(NSDate *)self->_referenceDate stringFromDate];
                *buf = 138412803;
                v42 = stringFromDate;
                v43 = 2112;
                v44 = *&stringFromDate2;
                v45 = 2117;
                v46 = interestCopy;
                v13 = "predicted location of interest failed reference date check, nextEntryDate, %@, referenceDate, %@, ploi, %{sensitive}@";
LABEL_32:
                _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, v13, buf, 0x20u);

LABEL_43:
                goto LABEL_44;
              }

              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if (v9 > self->_windowDuration)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                stringFromDate = [v8 stringFromDate];
                stringFromDate2 = [(NSDate *)self->_referenceDate stringFromDate];
                *buf = 138412803;
                v42 = stringFromDate;
                v43 = 2112;
                v44 = *&stringFromDate2;
                v45 = 2117;
                v46 = interestCopy;
                v13 = "predicted location of interest failed interval check, nextEntryDate, %@, referenceDate, %@, ploi, %{sensitive}@";
                goto LABEL_32;
              }

LABEL_44:
            }

LABEL_45:
            v14 = 0;
            goto LABEL_46;
          }
        }

        v14 = 1;
LABEL_46:

        goto LABEL_47;
      }

      if (self->_distanceCalculator)
      {
        goto LABEL_24;
      }

      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "[RTPredictedLocationsOfInterestCriteria evaluatePredictedLocationOfInterest:]";
        v43 = 1024;
        LODWORD(v44) = 68;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _distanceCalculator (in %s:%d)", buf, 0x12u);
      }

      if (self->_distanceCalculator)
      {
LABEL_24:
        v16 = objc_alloc(MEMORY[0x277D01160]);
        location = [locationOfInterest location];
        [location latitude];
        v19 = v18;
        location2 = [locationOfInterest location];
        [location2 longitude];
        v22 = v21;
        location3 = [locationOfInterest location];
        [location3 horizontalUncertainty];
        v25 = v24;
        location4 = [locationOfInterest location];
        [location4 altitude];
        v28 = v27;
        location5 = [locationOfInterest location];
        [location5 verticalUncertainty];
        v8 = [v16 initWithLatitude:0 longitude:0 horizontalUncertainty:v19 altitude:v22 verticalUncertainty:v25 date:v28 referenceFrame:v30 speed:0.0];

        distanceCalculator = self->_distanceCalculator;
        referenceLocation = self->_referenceLocation;
        v40 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:referenceLocation toLocation:v8 error:&v40];
        v34 = v33;
        v10 = v40;
        if (v10)
        {
          stringFromDate = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
          if (os_log_type_enabled(stringFromDate, OS_LOG_TYPE_ERROR))
          {
            v35 = self->_referenceLocation;
            *buf = 138412803;
            v42 = v10;
            v43 = 2117;
            v44 = *&v35;
            v45 = 2117;
            v46 = v8;
            _os_log_error_impl(&dword_2304B3000, stringFromDate, OS_LOG_TYPE_ERROR, "encountered error while computing distance, error, %@, location, %{sensitive}@, otherLocation, %{sensitive}@", buf, 0x20u);
          }

          goto LABEL_43;
        }

        if (v34 >= self->_minimumDistance)
        {
          if (v34 <= self->_maximumDistance)
          {

            goto LABEL_10;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_44;
          }

          stringFromDate = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
          if (!os_log_type_enabled(stringFromDate, OS_LOG_TYPE_INFO))
          {
            goto LABEL_43;
          }

          maximumDistance = self->_maximumDistance;
          *buf = 134218499;
          v42 = *&v34;
          v43 = 2048;
          v44 = maximumDistance;
          v45 = 2117;
          v46 = interestCopy;
          v37 = "predicted location of interest failed minimum distance check, distance, %f, maximumDistance, %f, ploi, %{sensitive}@";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_44;
          }

          stringFromDate = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
          if (!os_log_type_enabled(stringFromDate, OS_LOG_TYPE_INFO))
          {
            goto LABEL_43;
          }

          minimumDistance = self->_minimumDistance;
          *buf = 134218499;
          v42 = *&v34;
          v43 = 2048;
          v44 = minimumDistance;
          v45 = 2117;
          v46 = interestCopy;
          v37 = "predicted location of interest failed minimum distance check, distance, %f, minimumDistance, %f, ploi, %{sensitive}@";
        }

        _os_log_impl(&dword_2304B3000, stringFromDate, OS_LOG_TYPE_INFO, v37, buf, 0x20u);
        goto LABEL_43;
      }
    }

    else
    {
      locationOfInterest = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(locationOfInterest, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "[RTPredictedLocationsOfInterestCriteria evaluatePredictedLocationOfInterest:]";
        v43 = 1024;
        LODWORD(v44) = 53;
        _os_log_error_impl(&dword_2304B3000, locationOfInterest, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedLocationOfInterest (in %s:%d)", buf, 0x12u);
      }
    }

    v14 = 0;
LABEL_47:

    goto LABEL_48;
  }

  v14 = 0;
LABEL_48:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithDistanceCalculator:self->_distanceCalculator];
  if (v4)
  {
    referenceDate = [(RTPredictedLocationsOfInterestCriteria *)self referenceDate];
    [v4 setReferenceDate:referenceDate];

    [(RTPredictedLocationsOfInterestCriteria *)self windowDuration];
    [v4 setWindowDuration:?];
    referenceLocation = [(RTPredictedLocationsOfInterestCriteria *)self referenceLocation];
    [v4 setReferenceLocation:referenceLocation];

    [(RTPredictedLocationsOfInterestCriteria *)self minimumDistance];
    [v4 setMinimumDistance:?];
    [(RTPredictedLocationsOfInterestCriteria *)self maximumDistance];
    [v4 setMaximumDistance:?];
    [(RTPredictedLocationsOfInterestCriteria *)self minimumConfidence];
    [v4 setMinimumConfidence:?];
    clientIdentifier = [(RTPredictedLocationsOfInterestCriteria *)self clientIdentifier];
    [v4 setClientIdentifier:clientIdentifier];
  }

  return v4;
}

@end