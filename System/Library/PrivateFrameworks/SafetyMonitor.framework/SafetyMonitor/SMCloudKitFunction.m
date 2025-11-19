@interface SMCloudKitFunction
- (SMCloudKitFunction)initWithEnvironment:(unint64_t)a3 version:(id)a4 queue:(id)a5;
- (void)requestSafetyCacheRecordFromZone:(id)a3 withToken:(id)a4 completion:(id)a5;
@end

@implementation SMCloudKitFunction

- (SMCloudKitFunction)initWithEnvironment:(unint64_t)a3 version:(id)a4 queue:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v19.receiver = self;
    v19.super_class = SMCloudKitFunction;
    v10 = [(SMCloudKitFunction *)&v19 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_queue, a5);
      v12 = @"d";
      if (a3 != 1)
      {
        v12 = 0;
      }

      if (!a3)
      {
        v12 = @"p";
      }

      if (!v8)
      {
        v8 = @"1.0";
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"SafetyMonitorServer", v12, v8];
      v14 = [[_TtC13SafetyMonitor23SMCloudKitFunctionSwift alloc] initWithServiceName:v13];
      swiftCKF = v11->_swiftCKF;
      v11->_swiftCKF = v14;
    }

    self = v11;
    v16 = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)requestSafetyCacheRecordFromZone:(id)a3 withToken:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    LOWORD(location[0]) = 0;
    v18 = "Invalid parameter not satisfying: zoneName";
LABEL_10:
    _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, v18, location, 2u);
    goto LABEL_7;
  }

  if (!v11)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(location[0]) = 0;
    v18 = "Invalid parameter not satisfying: completion";
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [(SMCloudKitFunction *)self swiftCKF];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke;
  v19[3] = &unk_279B64DC0;
  objc_copyWeak(v23, location);
  v20 = v9;
  v16 = v14;
  v21 = v16;
  v23[1] = a2;
  v22 = v12;
  [v15 requestSafetyCacheRecordFromZone:v20 token:v10 completion:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(location);
LABEL_8:
}

void __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke_17;
    block[3] = &unk_279B64D98;
    v20 = v8;
    v21 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v22 = v12;
    v25 = v13;
    v24 = *(a1 + 48);
    v23 = v7;
    v26 = a2;
    dispatch_async(v11, block);

    v14 = v20;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = NSStringFromSelector(*(a1 + 64));
      *buf = 138413570;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 1024;
      v34 = a2;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_26455D000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cloud kit function released before safety cache request completed,responseCode,%d,error,%@,record,%@", buf, 0x3Au);
    }
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
}

void __76__SMCloudKitFunction_requestSafetyCacheRecordFromZone_withToken_completion___block_invoke_17(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = NSStringFromSelector(*(a1 + 72));
      v20 = *(a1 + 32);
      *buf = 138413058;
      v54 = v17;
      v55 = 2112;
      v56 = v18;
      v57 = 2112;
      v58 = v19;
      v59 = 2112;
      v60 = v20;
      _os_log_error_impl(&dword_26455D000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning error thrown from server: %@", buf, 0x2Au);
    }

    v3 = *(a1 + 32);
    v4 = *(*(a1 + 64) + 16);
LABEL_11:
    v4();
    goto LABEL_12;
  }

  if (*(a1 + 56))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = NSStringFromSelector(*(a1 + 72));
        *buf = 138412802;
        v54 = v6;
        v55 = 2112;
        v56 = v7;
        v57 = 2112;
        v58 = v8;
        _os_log_impl(&dword_26455D000, v5, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning Safety Cache record", buf, 0x20u);
      }

      v9 = *(a1 + 56);
    }

    v4 = *(*(a1 + 64) + 16);
    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  if (v11 > 4)
  {
    if (v11 <= 6)
    {
      if (v11 == 5)
      {
        v24 = objc_alloc(MEMORY[0x277CCA9B8]);
        v43 = *MEMORY[0x277CCA450];
        v44 = @"Token missing from Access Data record";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v14 = v24;
        v15 = 5;
      }

      else
      {
        v16 = objc_alloc(MEMORY[0x277CCA9B8]);
        v41 = *MEMORY[0x277CCA450];
        v42 = @"Release time missing from Access Data record";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v14 = v16;
        v15 = 6;
      }

      goto LABEL_30;
    }

    if (v11 == 7)
    {
      v26 = objc_alloc(MEMORY[0x277CCA9B8]);
      v39 = *MEMORY[0x277CCA450];
      v40 = @"Zone not found";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v14 = v26;
      v15 = 7;
      goto LABEL_30;
    }

    if (v11 == 8)
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v37 = *MEMORY[0x277CCA450];
      v38 = @"Failed to initialize Record Transport with Safety Cache record";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v14 = v22;
      v15 = 8;
      goto LABEL_30;
    }

LABEL_34:
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized response code %d", *(a1 + 80)];
    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v35 = *MEMORY[0x277CCA450];
    v36 = v13;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v27 = [v29 initWithDomain:@"SafetyMonitorServerErrorDomain" code:1 userInfo:v30];

    goto LABEL_31;
  }

  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v47 = *MEMORY[0x277CCA450];
      v48 = @"Access Data record query failed";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v14 = v25;
      v15 = 3;
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v45 = *MEMORY[0x277CCA450];
      v46 = @"Safety Cache record query failed";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v14 = v21;
      v15 = 4;
    }

    goto LABEL_30;
  }

  if (v11 == 1)
  {
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v51 = *MEMORY[0x277CCA450];
    v52 = @"Unknown error";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v14 = v23;
    v15 = 1;
    goto LABEL_30;
  }

  if (v11 != 2)
  {
    goto LABEL_34;
  }

  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v49 = *MEMORY[0x277CCA450];
  v50 = @"Access denied";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v14 = v12;
  v15 = 2;
LABEL_30:
  v27 = [v14 initWithDomain:@"SafetyMonitorServerErrorDomain" code:v15 userInfo:v13];
LABEL_31:

  v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v33 = NSStringFromSelector(*(a1 + 72));
    v34 = *(a1 + 32);
    *buf = 138413058;
    v54 = v31;
    v55 = 2112;
    v56 = v32;
    v57 = 2112;
    v58 = v33;
    v59 = 2112;
    v60 = v34;
    _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,returning error from server: %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
}

@end