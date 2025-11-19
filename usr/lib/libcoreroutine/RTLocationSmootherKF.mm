@interface RTLocationSmootherKF
- (RTLocationSmootherKF)init;
- (double)getRefAlt:(id)a3;
- (id)buildLocationWithEstimationState:(id)a3 originalLocation:(id)a4;
- (id)smoothLocations:(id)a3;
@end

@implementation RTLocationSmootherKF

- (RTLocationSmootherKF)init
{
  v6.receiver = self;
  v6.super_class = RTLocationSmootherKF;
  v2 = [(RTLocationSmootherKF *)&v6 init];
  if (v2)
  {
    v3 = [[RTFixedSizeQueue alloc] initWithCapacity:20];
    states = v2->states;
    v2->states = v3;
  }

  return v2;
}

- (id)smoothLocations:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 count])
  {
    v64 = v5;
    if ([(RTFixedSizeQueue *)self->states count])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v4 firstObject];
      [v7 coordinate];
      self->refLat = v8;

      v9 = [v4 firstObject];
      [v9 coordinate];
      self->refLon = v10;

      v11 = [v4 firstObject];
      [(RTLocationSmootherKF *)self getRefAlt:v11];
      self->refAlt = v12;

      states = self->states;
      v14 = objc_opt_new();
      v15 = [(RTFixedSizeQueue *)states enqueueObject:v14];

      v16 = [v4 firstObject];
      v17 = [v16 copy];
      [v5 addObject:v17];

      v6 = 1;
    }

    if (v6 < [v4 count])
    {
      v19 = MEMORY[0x277D86220];
      *&v18 = 134219777;
      v63 = v18;
      do
      {
        v20 = [(RTFixedSizeQueue *)self->states lastObject];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138740227;
            v66 = v20;
            v67 = 2048;
            v68 = v6;
            _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "RTLocationSmootherKF, state, %{sensitive}@, i, %lu", buf, 0x16u);
          }
        }

        [v20 estimateWithIndex:0];
        v23 = v22;
        [v20 estimateWithIndex:1];
        v25 = v24;
        v26 = [v4 objectAtIndexedSubscript:v6];
        [v26 coordinate];
        [v26 coordinate];
        RTCommonConvertGeodeticToLocalFrame();
        v27 = [v26 timestamp];
        [v27 timeIntervalSinceReferenceDate];
        v29 = v28;
        [v20 timestamp];
        v31 = v29 - v30;

        v32 = [v26 timestamp];
        [v32 timeIntervalSinceReferenceDate];
        [v20 setTimestamp:?];

        if (v31 * 0.565685425 * (v31 * 0.565685425) >= 10.0)
        {
          v33 = v31 * 0.565685425 * (v31 * 0.565685425);
        }

        else
        {
          v33 = 10.0;
        }

        if (((v6 - 1) % 100 - 91) <= 0xFFFFFFFFFFFFFFAELL && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [v26 coordinate];
            v54 = v53;
            [v26 coordinate];
            v56 = v55;
            [v26 horizontalAccuracy];
            *buf = v63;
            v66 = v6 - 1;
            v67 = 2053;
            v68 = v54;
            v69 = 2053;
            v70 = v56;
            v71 = 2048;
            v72 = v57;
            v73 = 2048;
            v74 = v31;
            v75 = 2048;
            v76 = 0;
            v77 = 2048;
            v78 = 0;
            v79 = 2048;
            v80 = v33;
            _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, "RTLocationSmootherKF, input, %lu, lat, %{sensitive}f, lng, %{sensitive}f, hacc, %f, timeInterval, %f, obsX, %f, obsY, %f, qk, %f", buf, 0x52u);
          }
        }

        [v20 updateMotionX:0.0 motionY:0.0 dt:v31 error:v33];
        [v20 errorProWithIndex:0];
        v36 = v35;
        [v20 errorProWithIndex:1];
        v38 = v37;
        [v26 horizontalAccuracy];
        v40 = v39;
        [v26 horizontalAccuracy];
        [v20 updateObservationX:0.0 observationY:0.0 sigmaX:v40 sigmaY:v41];
        v42 = [(RTFixedSizeQueue *)self->states count];
        if ((v42 - 2) >= 0)
        {
          v43 = v42 - 1;
          do
          {
            v44 = [(RTFixedSizeQueue *)self->states objectAtIndex:--v43];
            if (v44)
            {
              [v26 horizontalAccuracy];
              v46 = v45;
              [v26 horizontalAccuracy];
              [v44 updatePostObservationDeltaX:0.0 - v23 observationDeltaY:0.0 - v25 errProX:v36 errProY:v38 sigmaX:v46 sigmaY:v47];
            }
          }

          while (v43 > 0);
        }

        v48 = [v20 copy];
        [v48 increaseIndex];
        v49 = [(RTFixedSizeQueue *)self->states enqueueObject:v48];
        v50 = v49;
        if (v49)
        {
          v51 = [v4 objectAtIndex:{objc_msgSend(v49, "i")}];
          v52 = [(RTLocationSmootherKF *)self buildLocationWithEstimationState:v50 originalLocation:v51];
          [v64 addObject:v52];
        }

        ++v6;
      }

      while (v6 < [v4 count]);
    }

    v5 = v64;
    if ([(RTFixedSizeQueue *)self->states count]>= 2)
    {
      do
      {
        v58 = [(RTFixedSizeQueue *)self->states dequeueObject];
        v59 = [v4 objectAtIndex:{objc_msgSend(v58, "i")}];
        v60 = [(RTLocationSmootherKF *)self buildLocationWithEstimationState:v58 originalLocation:v59];
        [v64 addObject:v60];
      }

      while ([(RTFixedSizeQueue *)self->states count]> 1);
    }

    v61 = [(RTFixedSizeQueue *)self->states lastObject];
    [v61 resetIndex];
  }

  return v5;
}

- (double)getRefAlt:(id)a3
{
  v3 = a3;
  [v3 verticalAccuracy];
  v4 = 0.0;
  if (v5 > 0.0)
  {
    [v3 altitude];
    v4 = v6;
  }

  return v4;
}

- (id)buildLocationWithEstimationState:(id)a3 originalLocation:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 estimateWithIndex:0];
  v8 = v7;
  [v5 estimateWithIndex:1];
  v10 = v9;
  [v5 estimatedAccuracy];
  v12 = v11;
  RTCommonConvertLocalFrameToGeodetic();
  v28 = 0u;
  memset(v29, 0, 28);
  v27 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *&v24[32] = 0u;
  *v24 = 0;
  v13 = objc_opt_new();
  v14 = v13;
  if (v13)
  {
    [v13 clientLocation];
  }

  else
  {
    v28 = 0u;
    memset(v29, 0, 28);
    v27 = 0u;
    v25 = 0u;
    memset(v26, 0, sizeof(v26));
    *&v24[32] = 0u;
    *v24 = 0;
  }

  v15 = [v6 timestamp];
  [v15 timeIntervalSinceReferenceDate];
  *(v26 + 12) = v16;

  LODWORD(v27) = [v6 type];
  *&v24[20] = v12;
  *&v24[4] = 0;
  *&v24[12] = 0;
  [v6 altitude];
  *&v24[28] = v17;
  if (__ROR8__(0x8F5C28F5C28F5C29 * [v5 i] + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v5 i];
      [v6 altitude];
      *buf = 134219779;
      *&buf[4] = v22;
      *&buf[12] = 2117;
      *&buf[14] = v5;
      *&buf[22] = 2053;
      *&buf[24] = v8;
      *v31 = 2053;
      *&v31[2] = v10;
      *&v31[10] = 2048;
      *&v31[12] = v12;
      *&v31[20] = 2053;
      *&v31[22] = 0;
      *&v31[30] = 2053;
      *v32 = 0;
      *&v32[8] = 2053;
      *&v32[10] = v23;
      _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "RTLocationSmootherKF, %lu, estimated location, %{sensitive}@, xEst, %{sensitive}f, yEst, %{sensitive}f, errPro, %f, latEst, %{sensitive}f, lngEst, %{sensitive}f, alt, %{sensitive}f", buf, 0x52u);
    }
  }

  v19 = objc_alloc(MEMORY[0x277CE41F8]);
  v33 = v27;
  v34 = v28;
  v35[0] = v29[0];
  *(v35 + 12) = *(v29 + 12);
  *v31 = *&v24[32];
  *&v31[16] = v25;
  *v32 = v26[0];
  *&v32[16] = v26[1];
  *buf = *v24;
  *&buf[16] = *&v24[16];
  v20 = [v19 initWithClientLocation:buf];

  return v20;
}

@end