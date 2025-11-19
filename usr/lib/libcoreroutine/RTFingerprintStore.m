@interface RTFingerprintStore
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_appendWiFiAccessPointsToLastFingerprint:(id)a3 handler:(id)a4;
- (void)_fetchFingerprintsBetweenStartDate:(id)a3 endDate:(id)a4 filteredBySettledState:(unint64_t)a5 handler:(id)a6;
- (void)_fetchWifiAccessPointsForFingerprint:(id)a3 fetchLimit:(unint64_t)a4 handler:(id)a5;
- (void)appendWiFiAccessPointsToLastFingerprint:(id)a3 handler:(id)a4;
- (void)clearWithHandler:(id)a3;
- (void)fetchFingerprintsBetweenStartDate:(id)a3 endDate:(id)a4 filteredBySettledState:(unint64_t)a5 handler:(id)a6;
- (void)fetchWifiAccessPointsForFingerprint:(id)a3 fetchLimit:(unint64_t)a4 handler:(id)a5;
- (void)purgePredating:(id)a3 handler:(id)a4;
@end

@implementation RTFingerprintStore

- (void)appendWiFiAccessPointsToLastFingerprint:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTFingerprintStore_appendWiFiAccessPointsToLastFingerprint_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchFingerprintsBetweenStartDate:(id)a3 endDate:(id)a4 filteredBySettledState:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__RTFingerprintStore_fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)fetchWifiAccessPointsForFingerprint:(id)a3 fetchLimit:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__RTFingerprintStore_fetchWifiAccessPointsForFingerprint_fetchLimit_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)clearWithHandler:(id)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)purgePredating:(id)a3 handler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"start";
  v6 = a4;
  v7 = a3;
  v10 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(RTStore *)self purgePredating:v7 predicateMappings:v9 handler:v6];
}

- (void)_appendWiFiAccessPointsToLastFingerprint:(id)a3 handler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if ([v7 count])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__RTFingerprintStore__appendWiFiAccessPointsToLastFingerprint_handler___block_invoke;
      aBlock[3] = &unk_2788C5138;
      v9 = v8;
      v18 = v9;
      v17 = v7;
      v19 = a2;
      v10 = _Block_copy(aBlock);
      [(RTStore *)self _performBlock:v10 contextType:2 errorHandler:v9];
    }

    else if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTFingerprintStore _appendWiFiAccessPointsToLastFingerprint:handler:]";
      v24 = 1024;
      v25 = 95;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: accessPoints (in %s:%d)", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"requires a non-nil accessPoints.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:7 userInfo:v14];

    if (v8)
    {
      (*(v8 + 2))(v8, v15);
    }
  }
}

void __71__RTFingerprintStore__appendWiFiAccessPointsToLastFingerprint_handler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v36 = 0;
  v4 = [RTFingerprintMO fetchLastByStartDateInManagedObjectContext:v3 error:&v36];
  v5 = v36;
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 40);
LABEL_23:
    (*(v7 + 16))(v7, v6);
    goto LABEL_24;
  }

  if (v4)
  {
    v8 = [v4 wifiAccessPoints];
    v9 = [v8 count];
    v10 = [*(a1 + 32) count] + v9;

    if (v10 >= 0x5DD)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v25 = NSStringFromSelector(*(a1 + 48));
        v26 = [v4 wifiAccessPoints];
        v27 = [v26 count];
        v28 = [v4 wifiAccessPoints];
        v29 = [v28 count];
        v30 = [*(a1 + 32) count];
        *buf = 138412802;
        v39 = v25;
        v40 = 2048;
        v41 = v27;
        v42 = 2048;
        v43 = v30 + v29;
        _os_log_fault_impl(&dword_2304B3000, v11, OS_LOG_TYPE_FAULT, "%@, exceeds per-fingerprint limit, before, %lu, after, %lu", buf, 0x20u);
      }

      v6 = 0;
      goto LABEL_24;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = *(a1 + 32);
    v17 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [RTWiFiAccessPointMO managedObjectWithAccessPoint:*(*(&v32 + 1) + 8 * v20) inManagedObjectContext:v3];
          if (v21)
          {
            [v4 addWifiAccessPointsObject:v21];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D01108]);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v12 initWithIdentifier:v13 settledState:0 start:v14 accessPoints:*(a1 + 32)];

    v16 = [RTFingerprintMO managedObjectWithFingerprint:v15 inManagedObjectContext:v3];
  }

  v31 = 0;
  v22 = [v3 save:&v31];
  v6 = v31;
  if ((v22 & 1) == 0)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v39 = v24;
      v40 = 2112;
      v41 = v6;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_fetchFingerprintsBetweenStartDate:(id)a3 endDate:(id)a4 filteredBySettledState:(unint64_t)a5 handler:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[RTFingerprintStore _fetchFingerprintsBetweenStartDate:endDate:filteredBySettledState:handler:]";
        v42 = 1024;
        v43 = 174;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
      }

      if (v11)
      {
LABEL_13:
        if (a5 >= 3)
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v41 = "[RTFingerprintStore _fetchFingerprintsBetweenStartDate:endDate:filteredBySettledState:handler:]";
            v42 = 1024;
            v43 = 176;
            _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTScenarioTriggerSettledStateIsValid(settledState) (in %s:%d)", buf, 0x12u);
          }
        }

        if (v10)
        {
          if (v11)
          {
            if ([v10 isOnOrBefore:v11])
            {
              if (a5 < 3)
              {
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 3221225472;
                aBlock[2] = __96__RTFingerprintStore__fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke;
                aBlock[3] = &unk_2788C4910;
                v28 = v10;
                v29 = v11;
                v31 = a5;
                v17 = v12;
                v30 = v17;
                v18 = _Block_copy(aBlock);
                v25[0] = MEMORY[0x277D85DD0];
                v25[1] = 3221225472;
                v25[2] = __96__RTFingerprintStore__fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke_3;
                v25[3] = &unk_2788C48C0;
                v26 = v17;
                [(RTStore *)self _performBlock:v18 contextType:1 errorHandler:v25];

                v13 = v28;
                goto LABEL_27;
              }

              v19 = MEMORY[0x277CCA9B8];
              v20 = *MEMORY[0x277D01448];
              v32 = *MEMORY[0x277CCA450];
              v33 = @"requires a valid settledState.";
              v21 = MEMORY[0x277CBEAC0];
              v22 = &v33;
              v23 = &v32;
            }

            else
            {
              v19 = MEMORY[0x277CCA9B8];
              v20 = *MEMORY[0x277D01448];
              v34 = *MEMORY[0x277CCA450];
              v35 = @"requires startDate to be before or equal to endDate.";
              v21 = MEMORY[0x277CBEAC0];
              v22 = &v35;
              v23 = &v34;
            }
          }

          else
          {
            v19 = MEMORY[0x277CCA9B8];
            v20 = *MEMORY[0x277D01448];
            v36 = *MEMORY[0x277CCA450];
            v37 = @"requires a valid endDate.";
            v21 = MEMORY[0x277CBEAC0];
            v22 = &v37;
            v23 = &v36;
          }
        }

        else
        {
          v19 = MEMORY[0x277CCA9B8];
          v20 = *MEMORY[0x277D01448];
          v38 = *MEMORY[0x277CCA450];
          v39 = @"requires a valid startDate.";
          v21 = MEMORY[0x277CBEAC0];
          v22 = &v39;
          v23 = &v38;
        }

        v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
        v13 = [v19 errorWithDomain:v20 code:7 userInfo:v24];

        (*(v12 + 2))(v12, 0, v13);
        goto LABEL_27;
      }
    }

    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[RTFingerprintStore _fetchFingerprintsBetweenStartDate:endDate:filteredBySettledState:handler:]";
      v42 = 1024;
      v43 = 175;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_13;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_27:
}

void __96__RTFingerprintStore__fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[RTFingerprintMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = a1[4];
  v7 = a1[5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v9 = [v5 predicateWithFormat:@"(%K >= %@) AND (%K <= %@) AND (%K == %@)", @"start", v6, @"start", v7, @"settledState", v8];
  [v4 setPredicate:v9];

  [v4 setReturnsObjectsAsFaults:0];
  v14 = 0;
  v10 = [v3 executeFetchRequest:v4 error:&v14];

  v11 = v14;
  if (v11)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v12 = [[_RTMap alloc] initWithInput:v10];
    v13 = [(_RTMap *)v12 withBlock:&__block_literal_global_6];

    (*(a1[6] + 16))();
  }
}

- (void)_fetchWifiAccessPointsForFingerprint:(id)a3 fetchLimit:(unint64_t)a4 handler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__RTFingerprintStore__fetchWifiAccessPointsForFingerprint_fetchLimit_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v20 = v8;
      v22 = a4;
      v10 = v9;
      v21 = v10;
      v11 = _Block_copy(aBlock);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __78__RTFingerprintStore__fetchWifiAccessPointsForFingerprint_fetchLimit_handler___block_invoke_3;
      v17[3] = &unk_2788C48C0;
      v18 = v10;
      [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v17];

      v12 = v20;
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[RTFingerprintStore _fetchWifiAccessPointsForFingerprint:fetchLimit:handler:]";
        v27 = 1024;
        v28 = 248;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprint (in %s:%d)", buf, 0x12u);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"requires a valid fingerprint.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v12 = [v14 errorWithDomain:v15 code:7 userInfo:v16];

      (*(v9 + 2))(v9, 0, v12);
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __78__RTFingerprintStore__fetchWifiAccessPointsForFingerprint_fetchLimit_handler___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTWiFiAccessPointMO fetchRequest];
  v17[0] = @"wifiAccessPoints";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v4 setRelationshipKeyPathsForPrefetching:v5];

  v6 = MEMORY[0x277CCAC30];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 predicateWithFormat:@"%K.%K = %@", @"fingerprint", @"identifier", v7];
  [v4 setPredicate:v8];

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:*(a1 + 48)];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
  v16 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [v4 setSortDescriptors:v10];

  v15 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v15];

  v12 = v15;
  if (v12)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = [[_RTMap alloc] initWithInput:v11];
    v14 = [(_RTMap *)v13 withBlock:&__block_literal_global_57];

    (*(*(a1 + 40) + 16))();
  }
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"RTFingerprintStore doesn't support enumeration";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:7 userInfo:v8];

  if (a5)
  {
    v10 = v9;
    *a5 = v9;
  }

  return 0;
}

@end