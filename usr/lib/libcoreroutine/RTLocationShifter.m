@interface RTLocationShifter
- (RTLocationShifter)init;
- (id)shiftedLocation:(id)a3 allowNetwork:(BOOL)a4 error:(id *)a5;
- (void)shiftCoordinate:(CLLocationCoordinate2D)a3 accuracy:(double)a4 handler:(id)a5;
- (void)shiftLocation:(id)a3 handler:(id)a4;
@end

@implementation RTLocationShifter

- (RTLocationShifter)init
{
  v6.receiver = self;
  v6.super_class = RTLocationShifter;
  v2 = [(RTLocationShifter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    geoLocationShifter = v2->_geoLocationShifter;
    v2->_geoLocationShifter = v3;
  }

  return v2;
}

- (void)shiftLocation:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 referenceFrame] == 2)
    {
      v7[2](v7, v6, 0);
    }

    else
    {
      [v6 latitude];
      v10 = v9;
      [v6 longitude];
      v12 = CLLocationCoordinate2DMake(v10, v11);
      [v6 horizontalUncertainty];
      v14 = v13;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __43__RTLocationShifter_shiftLocation_handler___block_invoke;
      v15[3] = &unk_2788C84D0;
      v16 = v6;
      v17 = v7;
      [(RTLocationShifter *)self shiftCoordinate:v15 accuracy:v12.latitude handler:v12.longitude, v14];
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTLocationShifter shiftLocation:handler:]";
      v20 = 1024;
      v21 = 38;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __43__RTLocationShifter_shiftLocation_handler___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v12 = a2;
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D01160]);
    v11 = [*(a1 + 32) date];
    v9 = [v10 initWithLatitude:v11 longitude:2 horizontalUncertainty:a3 date:a4 referenceFrame:a5];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)shiftedLocation:(id)a3 allowNetwork:(BOOL)a4 error:(id *)a5
{
  v75[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 referenceFrame] == 2)
  {
    v9 = v8;
  }

  else if (a4)
  {
    [v8 latitude];
    v11 = v10;
    [v8 longitude];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    v59 = 0.0;
    *&v60 = COERCE_DOUBLE(&v59);
    v61 = 0x3010000000;
    v63 = 0;
    v64 = 0;
    v62 = &unk_230BF6D75;
    v55 = 0.0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    *&v69 = 0;
    *(&v69 + 1) = &v69;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__39;
    v72 = __Block_byref_object_dispose__39;
    v73 = 0;
    v14 = dispatch_semaphore_create(0);
    [v8 horizontalUncertainty];
    v16 = v15;
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __56__RTLocationShifter_shiftedLocation_allowNetwork_error___block_invoke;
    v50 = &unk_2788C84F8;
    v52 = &v59;
    v53 = &v55;
    v54 = &v69;
    v17 = v14;
    v51 = v17;
    [(RTLocationShifter *)self shiftCoordinate:&v47 accuracy:v13.latitude handler:v13.longitude, v16];
    v18 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v17, v18))
    {
      v19 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA450];
      v68 = @"Timed-out attempting to shift coordinate";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:{1, v47, v48, v49, v50}];
      v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v20];

      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v46 = [v21 localizedDescription];
        *buf = 138412290;
        v66 = v46;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (a5)
      {
        v23 = v21;
        *a5 = v21;
      }

      v9 = v8;
    }

    else
    {
      if (a5)
      {
        *a5 = *(*(&v69 + 1) + 40);
      }

      if (*(*(&v69 + 1) + 40))
      {
        v9 = v8;
      }

      else
      {
        v40 = objc_alloc(MEMORY[0x277D01160]);
        v41 = v60[4];
        v42 = v60[5];
        v43 = v56[3];
        v44 = [v8 date];
        v9 = [v40 initWithLatitude:v44 longitude:2 horizontalUncertainty:v41 date:v42 referenceFrame:v43];
      }
    }

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
  }

  else
  {
    v59 = 0.0;
    *&v60 = 0.0;
    v55 = 0.0;
    [v8 latitude];
    v25 = v24;
    [v8 longitude];
    v27 = v26;
    geoLocationShifter = self->_geoLocationShifter;
    [v8 horizontalUncertainty];
    if (([(GEOLocationShifter *)geoLocationShifter shiftCoordinate:&v59 accuracy:&v55 shiftedCoordinate:v25 shiftedAccuracy:v27, v29]& 1) != 0)
    {
      v30 = objc_alloc(MEMORY[0x277D01160]);
      v31 = v59;
      v32 = *&v60;
      v33 = v55;
      v34 = [v8 date];
      v35 = [v30 initWithLatitude:v34 longitude:2 horizontalUncertainty:v31 date:v32 referenceFrame:v33];
    }

    else
    {
      v36 = MEMORY[0x277CCA9B8];
      v74 = *MEMORY[0x277CCA450];
      v75[0] = @"Unable to shift without network allowed";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
      v34 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v37];

      v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v69) = 138412290;
        *(&v69 + 4) = v34;
        _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@", &v69, 0xCu);
      }

      if (a5)
      {
        v39 = v34;
        *a5 = v34;
      }

      v35 = v8;
    }

    v9 = v35;
  }

  return v9;
}

void __56__RTLocationShifter_shiftedLocation_allowNetwork_error___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(*(*(a1 + 48) + 8) + 24) = a5;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v8 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)shiftCoordinate:(CLLocationCoordinate2D)a3 accuracy:(double)a4 handler:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v27 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (v9)
  {
    if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{latitude, longitude}])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__RTLocationShifter_shiftCoordinate_accuracy_handler___block_invoke;
      aBlock[3] = &unk_2788C8520;
      v10 = v9;
      v22 = v10;
      v11 = _Block_copy(aBlock);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__RTLocationShifter_shiftCoordinate_accuracy_handler___block_invoke_2;
      v16[3] = &unk_2788C8548;
      v17 = v10;
      v18 = latitude;
      v19 = longitude;
      v20 = a4;
      v12 = _Block_copy(v16);
      geoLocationShifter = self->_geoLocationShifter;
      v14 = dispatch_get_global_queue(0, 0);
      [(GEOLocationShifter *)geoLocationShifter shiftCoordinate:v11 accuracy:0 withCompletionHandler:v12 mustGoToNetworkCallback:v14 errorHandler:latitude callbackQueue:longitude, a4];
    }

    else
    {
      (*(v9 + 2))(v9, 0, latitude, longitude, a4);
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTLocationShifter shiftCoordinate:accuracy:handler:]";
      v25 = 1024;
      v26 = 144;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

uint64_t __54__RTLocationShifter_shiftCoordinate_accuracy_handler___block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v5 = *(a1 + 32);
  v8 = CLLocationCoordinate2DMake(a2, a3);
  v7.n128_f64[0] = v8.longitude;
  v6.n128_f64[0] = v8.latitude;
  v9 = *(v5 + 16);
  v10.n128_f64[0] = a4;

  return v9(v5, 0, v6, v7, v10);
}

@end