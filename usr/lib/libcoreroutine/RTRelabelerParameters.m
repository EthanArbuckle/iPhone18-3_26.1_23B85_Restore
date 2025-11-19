@interface RTRelabelerParameters
- (RTRelabelerParameters)initWithBaseCount:(double)a3 clippingRadius:(double)a4 confidenceEqualityEpsilon:(double)a5 confidenceThreshold:(double)a6 contextCandidateAmountThreshold:(unint64_t)a7 contextDistanceThreshold:(double)a8 minimumConfidenceRatio:(double)a9 minimumNumberPOIs:(unint64_t)a10 passthroughThreshold:(double)a11 placeholderWeight:(double)a12 revGeoConfidence:(double)a13 sigma:(double)a14 weekThreshold:(unint64_t)a15;
- (RTRelabelerParameters)initWithDefaultsManager:(id)a3;
@end

@implementation RTRelabelerParameters

- (RTRelabelerParameters)initWithBaseCount:(double)a3 clippingRadius:(double)a4 confidenceEqualityEpsilon:(double)a5 confidenceThreshold:(double)a6 contextCandidateAmountThreshold:(unint64_t)a7 contextDistanceThreshold:(double)a8 minimumConfidenceRatio:(double)a9 minimumNumberPOIs:(unint64_t)a10 passthroughThreshold:(double)a11 placeholderWeight:(double)a12 revGeoConfidence:(double)a13 sigma:(double)a14 weekThreshold:(unint64_t)a15
{
  if (a3 <= 0.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: baseCount > 0";
      goto LABEL_22;
    }

LABEL_23:

    v29 = 0;
    goto LABEL_24;
  }

  if (a4 <= 0.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: clippingRadius > 0";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: RTCommonValidConfidence(confidenceEqualityEpsilon)";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: RTCommonValidConfidence(confidenceThreshold)";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!a7)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: contextCandidateAmountThreshold > 0";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a8 <= 0.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: contextDistanceThreshold > 0";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (a9 < 0.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: minimumConfidenceRatio >= 0";
LABEL_22:
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (!a10)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: minimumNumberPOIs > 0";
    goto LABEL_22;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: RTCommonValidConfidence(passthroughThreshold)";
    goto LABEL_22;
  }

  if (a12 <= 1.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: placeholderWeight > 1";
    goto LABEL_22;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: RTCommonValidConfidence(revGeoConfidence)";
    goto LABEL_22;
  }

  if (a14 <= 0.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: sigma > 0";
    goto LABEL_22;
  }

  if (!a15)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: weekThreshold > 0";
    goto LABEL_22;
  }

  v31 = (a10 - 1);
  if ((1.0 - a6) * a12 / (v31 + a12) > a6)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: confidenceThreshold >= nonRevGeoThreshold";
    goto LABEL_22;
  }

  v33 = log(v31 * a13);
  v34 = v33 - log(a13 * -2.0 + 1.0);
  if (a4 * a4 * 0.5 * pow(a14, -2.0) > v34)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: constraint <= upperBound";
    goto LABEL_22;
  }

  v35.receiver = self;
  v35.super_class = RTRelabelerParameters;
  v32 = [(RTRelabelerParameters *)&v35 init];
  if (v32)
  {
    v32->_baseCount = a3;
    v32->_clippingRadius = a4;
    v32->_confidenceEqualityEpsilon = a5;
    v32->_confidenceThreshold = a6;
    v32->_contextCandidateAmountThreshold = a7;
    v32->_contextDistanceThreshold = a8;
    v32->_minimumConfidenceRatio = a9;
    v32->_minimumNumberPOIs = a10;
    v32->_passthroughThreshold = a11;
    v32->_placeholderWeight = a12;
    v32->_revGeoConfidence = a13;
    v32->_sigma = a14;
    v32->_weekThreshold = a15;
  }

  self = v32;
  v29 = self;
LABEL_24:

  return v29;
}

- (RTRelabelerParameters)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"RTDefaultsRelabelerBaseCount"];
    objc_opt_class();
    v7 = 0.5;
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v7 = v8;
    }

    v9 = [v5 objectForKey:@"RTDefaultsRelabelerClippingRadius"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
    }

    else
    {
      *&v10 = 106.184;
    }

    v46 = *&v10;
    v13 = [v5 objectForKey:@"RTDefaultsRelabelerConfidenceEqualityEpsilon"];
    objc_opt_class();
    v49 = v9;
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
    }

    else
    {
      *&v14 = 0.01;
    }

    v45 = *&v14;
    v15 = [v5 objectForKey:@"RTDefaultsRelabelerConfidenceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 doubleValue];
      v17 = v16;
    }

    else
    {
      v17 = 0.225;
    }

    v18 = [v5 objectForKey:@"RTDefaultsRelabelerContextCandidateAmountThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [v18 unsignedIntegerValue];
    }

    else
    {
      v43 = 5;
    }

    v19 = [v5 objectForKey:@"RTDefaultsRelabelerContextDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      v21 = v20;
    }

    else
    {
      v21 = 250.0;
    }

    v22 = [v5 objectForKey:@"RTDefaultsRelabelerMinimumConfidenceRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 doubleValue];
      v24 = v23;
    }

    else
    {
      v24 = 1.15;
    }

    v25 = [v5 objectForKey:@"RTDefaultsRelabelerMinimumNumberPois"];
    objc_opt_class();
    v50 = v6;
    if (objc_opt_isKindOfClass())
    {
      v42 = [v25 unsignedIntegerValue];
    }

    else
    {
      v42 = 6;
    }

    v26 = [v5 objectForKey:@"RTDefaultsRelabelerPassthroughThreshold"];
    objc_opt_class();
    v48 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v26 doubleValue];
      v28 = v27;
    }

    else
    {
      v28 = 0.8;
    }

    v47 = v15;
    v29 = [v5 objectForKey:@"RTDefaultsRelabelerPlaceholderWeight"];
    objc_opt_class();
    v30 = 1.25;
    if (objc_opt_isKindOfClass())
    {
      [v29 doubleValue];
      v30 = v31;
    }

    v44 = v19;
    v32 = [v5 objectForKey:@"RTDefaultsRelabelerRevGeoConfidence"];
    objc_opt_class();
    v33 = v18;
    if (objc_opt_isKindOfClass())
    {
      [v32 doubleValue];
      v35 = v34;
    }

    else
    {
      v35 = 0x3FCCCCCCCCCCCCCDLL;
    }

    v36 = [v5 objectForKey:@"RTDefaultsRelabelerSigma"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v36 doubleValue];
      v38 = v37;
    }

    else
    {
      v38 = 0x405630E560418937;
    }

    v39 = [v5 objectForKey:@"RTDefaultsRelabelerWeekThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 unsignedIntegerValue];
    }

    else
    {
      v40 = 4838400;
    }

    self = [(RTRelabelerParameters *)self initWithBaseCount:v43 clippingRadius:v42 confidenceEqualityEpsilon:v40 confidenceThreshold:v7 contextCandidateAmountThreshold:v46 contextDistanceThreshold:v45 minimumConfidenceRatio:v17 minimumNumberPOIs:v21 passthroughThreshold:v24 placeholderWeight:v28 revGeoConfidence:v30 sigma:v35 weekThreshold:v38];

    v12 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

@end