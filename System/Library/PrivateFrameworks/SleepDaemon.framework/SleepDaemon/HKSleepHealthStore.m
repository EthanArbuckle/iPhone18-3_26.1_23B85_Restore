@interface HKSleepHealthStore
@end

@implementation HKSleepHealthStore

void __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke(id *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v65 = objc_opt_class();
    v4 = v65;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] saving sessions", buf, 0xCu);
  }

  v5 = [a1[4] healthStore];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = objc_opt_class();
    *buf = 138543362;
    v65 = v8;
    v9 = v8;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] checking auth status", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v11 = [v5 authorizationStatusForType:v10];

  if (v11 == 1)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v44 = a1[4];
      v45 = objc_opt_class();
      *buf = 138543362;
      v65 = v45;
      v46 = v45;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] doesn't have write access for HKCategoryTypeIdentifierSleepAnalysis", buf, 0xCu);
    }

    v13 = a1[5];
    v14 = [MEMORY[0x277CCA9B8] na_genericError];
    [v13 finishWithError:v14];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = a1[6];
    v16 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v60;
      v47 = *v60;
      v48 = a1;
      do
      {
        v19 = 0;
        v49 = v17;
        do
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v51 = v19;
          v20 = *(*(&v59 + 1) + 8 * v19);
          v21 = HKSPLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = a1[4];
            v23 = objc_opt_class();
            *buf = 138543618;
            v65 = v23;
            v66 = 2112;
            v67 = v20;
            v24 = v23;
            _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing session: %@", buf, 0x16u);
          }

          v25 = [v20 interval];

          v26 = HKSPLogForCategory();
          v27 = v26;
          if (v25)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v28 = a1[4];
              v29 = objc_opt_class();
              *buf = 138543362;
              v65 = v29;
              v30 = v29;
              _os_log_impl(&dword_269B11000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating HealthKit samples", buf, 0xCu);
            }

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v27 = [v20 sleepIntervals];
            v31 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v56;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v56 != v33)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v35 = *(*(&v55 + 1) + 8 * i);
                  v36 = MEMORY[0x277CCD0B0];
                  v37 = [v20 metadata];
                  v38 = [v36 hdsp_categorySampleForSleepSessionInterval:v35 metadata:v37];

                  [v15 na_safeAddObject:v38];
                }

                v32 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
              }

              while (v32);
              v18 = v47;
              a1 = v48;
              v17 = v49;
            }
          }

          else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v39 = a1[4];
            v40 = objc_opt_class();
            *buf = 138543618;
            v65 = v40;
            v66 = 2112;
            v67 = v20;
            v41 = v40;
            _os_log_error_impl(&dword_269B11000, v27, OS_LOG_TYPE_ERROR, "[%{public}@] skipping session due to missing bedtime or wake time: %@", buf, 0x16u);
          }

          v19 = v51 + 1;
        }

        while (v51 + 1 != v17);
        v17 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v17);
    }

    v42 = a1[4];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke_296;
    v52[3] = &unk_279C7C850;
    v52[4] = v42;
    v53 = v15;
    v54 = a1[5];
    v14 = v15;
    [v42 saveSleepTrackingSamples:v14 completion:v52];
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke_296(void *a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPLogForCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = objc_opt_class();
      v10 = a1[5];
      v11 = v9;
      v17 = 138543618;
      v18 = v9;
      v19 = 2048;
      v20 = [v10 count];
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished saving %lu samples", &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v15 = a1[4];
    v17 = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v5;
    v16 = v18;
    _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] saving samples to HealthKit failed with error: %{public}@", &v17, 0x16u);
  }

  v12 = a1[6];
  v13 = NAEmptyResult();
  [v12 finishWithResult:v13 error:v5];

  v14 = *MEMORY[0x277D85DE8];
}

@end