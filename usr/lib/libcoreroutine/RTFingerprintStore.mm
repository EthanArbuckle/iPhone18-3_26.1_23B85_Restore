@interface RTFingerprintStore
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (void)_appendWiFiAccessPointsToLastFingerprint:(id)fingerprint handler:(id)handler;
- (void)_fetchFingerprintsBetweenStartDate:(id)date endDate:(id)endDate filteredBySettledState:(unint64_t)state handler:(id)handler;
- (void)_fetchWifiAccessPointsForFingerprint:(id)fingerprint fetchLimit:(unint64_t)limit handler:(id)handler;
- (void)appendWiFiAccessPointsToLastFingerprint:(id)fingerprint handler:(id)handler;
- (void)clearWithHandler:(id)handler;
- (void)fetchFingerprintsBetweenStartDate:(id)date endDate:(id)endDate filteredBySettledState:(unint64_t)state handler:(id)handler;
- (void)fetchWifiAccessPointsForFingerprint:(id)fingerprint fetchLimit:(unint64_t)limit handler:(id)handler;
- (void)purgePredating:(id)predating handler:(id)handler;
@end

@implementation RTFingerprintStore

- (void)appendWiFiAccessPointsToLastFingerprint:(id)fingerprint handler:(id)handler
{
  fingerprintCopy = fingerprint;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTFingerprintStore_appendWiFiAccessPointsToLastFingerprint_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = fingerprintCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = fingerprintCopy;
  dispatch_async(queue, block);
}

- (void)fetchFingerprintsBetweenStartDate:(id)date endDate:(id)endDate filteredBySettledState:(unint64_t)state handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__RTFingerprintStore_fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = dateCopy;
  v20 = handlerCopy;
  stateCopy = state;
  v19 = endDateCopy;
  v14 = handlerCopy;
  v15 = endDateCopy;
  v16 = dateCopy;
  dispatch_async(queue, block);
}

- (void)fetchWifiAccessPointsForFingerprint:(id)fingerprint fetchLimit:(unint64_t)limit handler:(id)handler
{
  fingerprintCopy = fingerprint;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__RTFingerprintStore_fetchWifiAccessPointsForFingerprint_fetchLimit_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = fingerprintCopy;
  v15 = handlerCopy;
  limitCopy = limit;
  v11 = handlerCopy;
  v12 = fingerprintCopy;
  dispatch_async(queue, v13);
}

- (void)clearWithHandler:(id)handler
{
  v6[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [(RTStore *)self removeAll:v5 handler:handlerCopy];
}

- (void)purgePredating:(id)predating handler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"start";
  handlerCopy = handler;
  predatingCopy = predating;
  v10 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(RTStore *)self purgePredating:predatingCopy predicateMappings:v9 handler:handlerCopy];
}

- (void)_appendWiFiAccessPointsToLastFingerprint:(id)fingerprint handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  handlerCopy = handler;
  if (fingerprintCopy)
  {
    if ([fingerprintCopy count])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__RTFingerprintStore__appendWiFiAccessPointsToLastFingerprint_handler___block_invoke;
      aBlock[3] = &unk_2788C5138;
      v9 = handlerCopy;
      v18 = v9;
      v17 = fingerprintCopy;
      v19 = a2;
      v10 = _Block_copy(aBlock);
      [(RTStore *)self _performBlock:v10 contextType:2 errorHandler:v9];
    }

    else if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v15);
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

- (void)_fetchFingerprintsBetweenStartDate:(id)date endDate:(id)endDate filteredBySettledState:(unint64_t)state handler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy)
    {
      if (endDateCopy)
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

      if (endDateCopy)
      {
LABEL_13:
        if (state >= 3)
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

        if (dateCopy)
        {
          if (endDateCopy)
          {
            if ([dateCopy isOnOrBefore:endDateCopy])
            {
              if (state < 3)
              {
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 3221225472;
                aBlock[2] = __96__RTFingerprintStore__fetchFingerprintsBetweenStartDate_endDate_filteredBySettledState_handler___block_invoke;
                aBlock[3] = &unk_2788C4910;
                v28 = dateCopy;
                v29 = endDateCopy;
                stateCopy = state;
                v17 = handlerCopy;
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

        (*(handlerCopy + 2))(handlerCopy, 0, v13);
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

- (void)_fetchWifiAccessPointsForFingerprint:(id)fingerprint fetchLimit:(unint64_t)limit handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (fingerprintCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__RTFingerprintStore__fetchWifiAccessPointsForFingerprint_fetchLimit_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v20 = fingerprintCopy;
      limitCopy = limit;
      v10 = handlerCopy;
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

      (*(handlerCopy + 2))(handlerCopy, 0, v12);
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

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D01448];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"RTFingerprintStore doesn't support enumeration";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:7 userInfo:v8];

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return 0;
}

@end