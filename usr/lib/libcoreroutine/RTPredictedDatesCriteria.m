@interface RTPredictedDatesCriteria
- (BOOL)evaluatePredictedDate:(id)a3;
- (RTPredictedDatesCriteria)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RTPredictedDatesCriteria

- (RTPredictedDatesCriteria)init
{
  v3.receiver = self;
  v3.super_class = RTPredictedDatesCriteria;
  result = [(RTPredictedDatesCriteria *)&v3 init];
  if (result)
  {
    result->_windowDuration = INFINITY;
    result->_minimumConfidence = 0.0;
  }

  return result;
}

- (BOOL)evaluatePredictedDate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_referenceLocation)
  {
    goto LABEL_36;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315394;
    v20 = "[RTPredictedDatesCriteria evaluatePredictedDate:]";
    v21 = 1024;
    LODWORD(v22) = 169;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _referenceLocation (in %s:%d)", &v19, 0x12u);
  }

  if (self->_referenceLocation)
  {
LABEL_36:
    if (self->_referenceDate)
    {
      goto LABEL_9;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[RTPredictedDatesCriteria evaluatePredictedDate:]";
      v21 = 1024;
      LODWORD(v22) = 174;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: _referenceDate (in %s:%d)", &v19, 0x12u);
    }

    if (self->_referenceDate)
    {
LABEL_9:
      if (!v4)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315394;
          v20 = "[RTPredictedDatesCriteria evaluatePredictedDate:]";
          v21 = 1024;
          LODWORD(v22) = 179;
          _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedDate (in %s:%d)", &v19, 0x12u);
        }

        goto LABEL_26;
      }

      v7 = [v4 date];
      v8 = v7;
      if (!v7)
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315394;
          v20 = "[RTPredictedDatesCriteria evaluatePredictedDate:]";
          v21 = 1024;
          LODWORD(v22) = 185;
          _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v19, 0x12u);
        }

        goto LABEL_25;
      }

      [v7 timeIntervalSinceDate:self->_referenceDate];
      if (v9 >= 0.0)
      {
        if (v9 <= self->_windowDuration)
        {
          [v4 confidence];
          v17 = v16;
          if (v16 >= self->_minimumConfidence)
          {
            v14 = 1;
            goto LABEL_27;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              minimumConfidence = self->_minimumConfidence;
              v19 = 134218498;
              v20 = *&v17;
              v21 = 2048;
              v22 = minimumConfidence;
              v23 = 2112;
              v24 = v4;
              _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "predicted date failed minimum confidence check, confidence, %f, minimumConfidence, %f, predicted date, %@", &v19, 0x20u);
            }

            goto LABEL_25;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [v8 stringFromDate];
            v12 = [(NSDate *)self->_referenceDate stringFromDate];
            v19 = 138412802;
            v20 = v11;
            v21 = 2112;
            v22 = *&v12;
            v23 = 2112;
            v24 = v4;
            v13 = "predicted date failed interval check, nextEntryDate, %@, referenceDate, %@, predicted date, %@";
            goto LABEL_24;
          }

LABEL_25:
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityDeviceLocationPredictor);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v8 stringFromDate];
          v12 = [(NSDate *)self->_referenceDate stringFromDate];
          v19 = 138412802;
          v20 = v11;
          v21 = 2112;
          v22 = *&v12;
          v23 = 2112;
          v24 = v4;
          v13 = "predicted date failed reference date check, nextEntryDate, %@, referenceDate, %@, predicted date, %@";
LABEL_24:
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, v13, &v19, 0x20u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }

LABEL_26:
      v14 = 0;
LABEL_27:

      goto LABEL_28;
    }
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(RTPredictedDatesCriteria *)self referenceDate];
    [v4 setReferenceDate:v5];

    [(RTPredictedDatesCriteria *)self windowDuration];
    [v4 setWindowDuration:?];
    v6 = [(RTPredictedDatesCriteria *)self referenceLocation];
    [v4 setReferenceLocation:v6];

    [(RTPredictedDatesCriteria *)self minimumConfidence];
    [v4 setMinimumConfidence:?];
  }

  return v4;
}

@end