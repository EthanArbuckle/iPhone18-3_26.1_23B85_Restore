@interface HDRPOxygenSaturationAnalyzer
- (HDRPOxygenSaturationAnalyzer)initWithProfile:(id)a3 oxygenSaturationFeatureStatusProvider:(id)a4 oxygenSaturationCompanionAnalysisFeatureStatusProvider:(id)a5 unitTestDelegate:(id)a6;
- (id)_bloodOxygenSampleWithBloodOxygenMeasurement:(void *)a3 unprocessedSample:;
- (id)_dataTypeDetailsRoomUrlWithSample:(uint64_t)a1;
- (id)_heartRateSampleWithBloodOxygenMeasurement:(uint64_t)a1;
- (uint64_t)_deleteUnprocessedSample:(uint64_t)a3 error:;
- (uint64_t)_shouldAnalyzeSamples;
- (void)_analyzeSample:(void *)a3@<X2> transaction:(void *)a4@<X3> error:(void *)a5@<X8>;
- (void)_analyzeUnprocessedSamples;
- (void)_bloodOxygenAnalysisWithUnprocessedSample:(void *)a3@<X8>;
- (void)_insertAnalyzedSamplesWithBloodOxygenAnalysis:(void *)a3@<X2> unprocessedSample:(void *)a4@<X3> provenance:(void *)a5@<X4> error:(void *)a6@<X8>;
- (void)_insertUnsuccessfulAnalysisSampleWithUnprocessedSample:(void *)a3@<X2> provenance:(void *)a4@<X3> analyticsPayload:(uint64_t)a5@<X4> error:(uint64_t)a6@<X8>;
- (void)_postMultipleMixedResultsNotification;
- (void)_postMultipleSuccessfullResultsNotification:(uint64_t)a1;
- (void)_postNotificationWithTitle:(void *)a3 body:(void *)a4 categoryIdentifier:(void *)a5 subtitle:(uint64_t)a6 domain:(void *)a7 url:(void *)a8 completion:;
- (void)_postSingleSuccessfulResultNotification:(uint64_t)a1;
- (void)_postSingleUnsuccessfulMeasurementNotification:(uint64_t)a1;
- (void)_sendAnalyticEventsForAnalysisSummaryIfNeeded:(uint64_t)a1;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
- (void)profileDidBecomeReady:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation HDRPOxygenSaturationAnalyzer

- (HDRPOxygenSaturationAnalyzer)initWithProfile:(id)a3 oxygenSaturationFeatureStatusProvider:(id)a4 oxygenSaturationCompanionAnalysisFeatureStatusProvider:(id)a5 unitTestDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = HDRPOxygenSaturationAnalyzer;
  v14 = [(HDRPOxygenSaturationAnalyzer *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    objc_storeStrong(&v15->_oxygenSaturationStatusProvider, a4);
    objc_storeStrong(&v15->_oxygenSaturationCompanionAnalysisStatusProvider, a5);
    objc_storeStrong(&v15->_unitTestDelegate, a6);
    v16 = objc_alloc(MEMORY[0x277D10800]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 initWithProfile:v10 debugIdentifier:v18 delegate:v15];
    protectedDataOperation = v15->_protectedDataOperation;
    v15->_protectedDataOperation = v19;

    v21 = [MEMORY[0x277CCDAD8] unprocessedBloodOxygenDataType];
    unprocessedSampleType = v15->_unprocessedSampleType;
    v15->_unprocessedSampleType = v21;

    [(HDProtectedDataOperation *)v15->_protectedDataOperation requestWorkWithPriority:2 error:0];
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    [WeakRetained registerProfileReadyObserver:v15 queue:0];
  }

  return v15;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  [v4 addObserver:self forDataType:self->_unprocessedSampleType];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  protectedDataOperation = self->_protectedDataOperation;
  v9 = 0;
  v6 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:1 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(HDRPOxygenSaturationAnalyzer *)self samplesAdded:v7 anchor:v8];
    }
  }
}

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  shouldAnalyze = [(HDRPOxygenSaturationAnalyzer *)self _shouldAnalyzeSamples];
  if (shouldAnalyze)
  {
    [(HDRPOxygenSaturationAnalyzer *)self _analyzeUnprocessedSamples];
    __move_assignment_8_8_t0w24_s24_s32_s40_s48(&v29, buf);
    _HKInitializeLogging();
    v15 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v12;
      v16 = v11;
      v17 = v10;
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v29 + 1)];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
      *buf = 138544130;
      v34 = self;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&dword_262086000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Blood Oxygen Analysis is complete. %@ sample(s) processed, of them %@ is/are user initiated, and of those %@ is/are unsuccessful measurements", buf, 0x2Au);

      v10 = v17;
      v11 = v16;
      v12 = v26;
    }

    if (*(&v29 + 1) == 1)
    {
      if (v30 == 1 && v31)
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postSingleUnsuccessfulMeasurementNotification:v31];
      }

      else if (!v30 && *(&v30 + 1))
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postSingleSuccessfulResultNotification:?];
      }
    }

    else if (*(&v29 + 1) >= 2)
    {
      if (v30)
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postMultipleMixedResultsNotification];
      }

      else
      {
        [(HDRPOxygenSaturationAnalyzer *)self _postMultipleSuccessfullResultsNotification:?];
      }
    }

    __copy_constructor_8_8_t0w24_s24_s32_s40_s48(v28, &v29);
    if (self)
    {
      [(HDRPOxygenSaturationAnalyzer *)self _sendAnalyticEventsForAnalysisSummaryIfNeeded:v28];
    }

    else
    {
      __destructor_8_s24_s32_s40_s48(v28);
    }
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = self;
      _os_log_impl(&dword_262086000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping analysis", buf, 0xCu);
    }
  }

  v22 = [MEMORY[0x277CCDD30] sharedBehavior];
  v23 = [v22 isAppleInternalInstall];

  if (v23)
  {
    unitTestDelegate = self->_unitTestDelegate;
    __copy_constructor_8_8_t0w24_s24_s32_s40_s48(v27, &v29);
    if (unitTestDelegate)
    {
      [(HDRPOxygenSaturationAnalyzerUnitTestDelegate *)unitTestDelegate _unitTest_didRunAnalysis:shouldAnalyze summary:v27];
    }

    else
    {
      __destructor_8_s24_s32_s40_s48(v27);
    }
  }

  v13[2](v13);
  __destructor_8_s24_s32_s40_s48(&v29);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_analyzeUnprocessedSamples
{
  v60 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    while (*(v17 + 24) == 1)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = MEMORY[0x277D105E0];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v6 = [WeakRetained database];
      v15 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__HDRPOxygenSaturationAnalyzer__analyzeUnprocessedSamples__block_invoke;
      v14[3] = &unk_279B0E320;
      v14[4] = a1;
      v14[5] = &v16;
      v14[6] = &v52;
      v14[7] = &v38;
      v14[8] = &v48;
      v14[9] = &v26;
      v14[10] = &v20;
      v14[11] = &v44;
      v14[12] = &v32;
      v7 = [v4 performWriteTransactionWithHealthDatabase:v6 error:&v15 block:v14];
      v8 = v15;

      if ((v7 & 1) == 0)
      {
        *(v17 + 24) = 0;
        if (v8)
        {
          _HKInitializeLogging();
          v9 = HKLogRespiratoryCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = [v8 localizedDescription];
            *buf = 138543618;
            v57 = a1;
            v58 = 2112;
            v59 = v10;
            _os_log_error_impl(&dword_262086000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to analyze with error: %@", buf, 0x16u);
          }
        }
      }

      objc_autoreleasePoolPop(v3);
    }

    v11 = v49[3];
    *a2 = v53[3];
    a2[1] = v11;
    a2[2] = v45[3];
    a2[3] = v39[5];
    a2[4] = v33[5];
    a2[5] = v27[5];
    a2[6] = v21[5];
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
  }

  else
  {
    a2[6] = 0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_sendAnalyticEventsForAnalysisSummaryIfNeeded:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3 && [v3 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v4 = *(a2 + 40);
      v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v5)
      {
        v6 = *v21;
        do
        {
          v7 = 0;
          do
          {
            if (*v21 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v20 + 1) + 8 * v7);
            AnalyticsSendEvent();
            ++v7;
          }

          while (v5 != v7);
          v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v5);
      }
    }

    v9 = *(a2 + 48);
    if (v9 && [v9 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = *(a2 + 48);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            AnalyticsSendEvent();
            ++v13;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }

  __destructor_8_s24_s32_s40_s48(a2);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HDRPOxygenSaturationAnalyzer__analyzeUnprocessedSamples__block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D10848];
  v7 = a1[4];
  v8 = *(v7 + 48);
  WeakRetained = objc_loadWeakRetained((v7 + 8));
  v34 = 0;
  v10 = [v6 mostRecentSampleWithType:v8 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v34];
  v11 = v34;

  if (v10)
  {
    v31 = 0;
    obj = 0;
    v33 = 0;
    [(HDRPOxygenSaturationAnalyzer *)a1[4] _analyzeSample:v10 transaction:v5 error:a3, &v31];
    if (!v31 || ([(HDRPOxygenSaturationAnalyzer *)a1[4] _deleteUnprocessedSample:v10 error:a3]& 1) == 0)
    {
      v16 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v12 = obj;
    if (!obj)
    {
      goto LABEL_31;
    }

    ++*(*(a1[6] + 8) + 24);
    if (BYTE1(v31) == 1)
    {
      v13 = [v12 metadata];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCDFC0]];

      if ([v14 integerValue] == 1)
      {
        if (v33)
        {
          v15 = 10;
LABEL_29:
          [*(*(a1[v15] + 8) + 40) addObject:?];
          goto LABEL_30;
        }

        goto LABEL_30;
      }

      v26 = *(a1[7] + 8);
      if (*(v26 + 40))
      {
        v27 = [v12 endDate];
        v28 = [*(*(a1[7] + 8) + 40) endDate];
        v29 = [v27 hk_isAfterDate:v28];

        if (!v29)
        {
          goto LABEL_27;
        }

        v26 = *(a1[7] + 8);
      }

      objc_storeStrong((v26 + 40), v12);
LABEL_27:
      ++*(*(a1[8] + 8) + 24);
      if (v33)
      {
        v15 = 9;
        goto LABEL_29;
      }

LABEL_30:

      goto LABEL_31;
    }

    ++*(*(a1[11] + 8) + 24);
    ++*(*(a1[8] + 8) + 24);
    v18 = *(a1[12] + 8);
    if (*(v18 + 40))
    {
      v19 = [v12 endDate];
      v20 = [*(*(a1[12] + 8) + 40) endDate];
      v21 = [v19 hk_isAfterDate:v20];

      if (!v21)
      {
        goto LABEL_19;
      }

      v18 = *(a1[12] + 8);
    }

    objc_storeStrong((v18 + 40), v12);
LABEL_19:
    v22 = v33;
    if (v33)
    {
      v23 = [v12 metadata];
      v14 = [v23 objectForKeyedSubscript:*MEMORY[0x277CCDFC0]];

      v24 = [v14 integerValue];
      v25 = 9;
      if (v24 == 1)
      {
        v25 = 10;
      }

      [*(*(a1[v25] + 8) + 40) addObject:v22];
      goto LABEL_30;
    }

LABEL_31:
    v16 = 1;
    goto LABEL_32;
  }

  *(*(a1[5] + 8) + 24) = 0;
  if (v11)
  {
    if (a3)
    {
      v17 = v11;
      v16 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_33:

  return v16;
}

- (void)_analyzeSample:(void *)a3@<X2> transaction:(void *)a4@<X3> error:(void *)a5@<X8>
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = [v9 payload];

    if (v11)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      [(HDRPOxygenSaturationAnalyzer *)a1 _bloodOxygenAnalysisWithUnprocessedSample:v9, &v29];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v13 = [WeakRetained deviceManager];
      v14 = [v9 device];
      v28 = 0;
      v15 = [v13 deviceEntityForDevice:v14 error:&v28];
      v16 = v28;

      if (v15)
      {
        v17 = objc_loadWeakRetained((a1 + 8));
        v18 = [v17 dataProvenanceManager];
        v19 = [v18 defaultLocalDataProvenanceWithDeviceEntity:v15];

        if (v29)
        {
          v25 = v29;
          v26 = v30;
          v27 = v31;
          [(HDRPOxygenSaturationAnalyzer *)a1 _insertAnalyzedSamplesWithBloodOxygenAnalysis:v9 unprocessedSample:v19 provenance:a4 error:a5];
        }

        else
        {
          v23 = [v9 metadata];
          v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277CCDFC0]];

          if ([v24 integerValue] == 1)
          {
            *a5 = 1;
            a5[1] = 0;
            a5[2] = v31;
          }

          else
          {
            [(HDRPOxygenSaturationAnalyzer *)a1 _insertUnsuccessfulAnalysisSampleWithUnprocessedSample:v9 provenance:v19 analyticsPayload:v31 error:a4, a5];
          }
        }
      }

      else
      {
        v20 = v16;
        v21 = v20;
        if (v20)
        {
          if (a4)
          {
            v22 = v20;
            *a4 = v21;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
      }
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      *a5 = 1;
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

- (void)_bloodOxygenAnalysisWithUnprocessedSample:(void *)a3@<X8>
{
  v5 = a2;
  v13 = v5;
  if (a1)
  {
    v6 = [v5 metadata];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCC478]];

    if (v7)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [MEMORY[0x277CCDAB0] pascalUnitWithMetricPrefix:9];
      [v7 doubleValueForUnit:v9];
      v10 = [v8 numberWithDouble:?];
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x277D0FC68];
    v12 = [v13 payload];
    [v11 analyzeBloodOxygenFromRawData:v12 withPressureInKilopascals:v10];
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

- (void)_insertUnsuccessfulAnalysisSampleWithUnprocessedSample:(void *)a3@<X2> provenance:(void *)a4@<X3> analyticsPayload:(uint64_t)a5@<X4> error:(uint64_t)a6@<X8>
{
  v27[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  if (a1)
  {
    v12 = MEMORY[0x277CCD0C0];
    v13 = a3;
    v14 = a2;
    v15 = [v12 alloc];
    v16 = [v15 initWithIdentifier:*MEMORY[0x277CCBAE0]];
    v17 = MEMORY[0x277CCD0B0];
    v18 = [v14 startDate];
    v19 = [v14 endDate];

    v20 = [v17 categorySampleWithType:v16 value:0 startDate:v18 endDate:v19];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v22 = [WeakRetained dataManager];
    v27[0] = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v24 = [v20 endDate];
    [v24 timeIntervalSinceReferenceDate];
    v25 = [v22 insertDataObjects:v23 withProvenance:v13 creationDate:0 skipInsertionFilter:1 updateSourceOrder:1 resolveAssociations:a5 error:?];

    if (v25)
    {
      *a6 = 1;
      *(a6 + 8) = v20;
      *(a6 + 16) = v11;
    }

    else
    {
      *a6 = 0;
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
    }
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_insertAnalyzedSamplesWithBloodOxygenAnalysis:(void *)a3@<X2> unprocessedSample:(void *)a4@<X3> provenance:(void *)a5@<X4> error:(void *)a6@<X8>
{
  v37[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v32 = a4;
  v33 = a2;
  v28 = v10;
  if (!a1)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    goto LABEL_14;
  }

  v29 = a6;
  v11 = [(HDRPOxygenSaturationAnalyzer *)a1 _bloodOxygenSampleWithBloodOxygenMeasurement:v10 unprocessedSample:?];
  v12 = [(HDRPOxygenSaturationAnalyzer *)a1 _heartRateSampleWithBloodOxygenMeasurement:?];
  v13 = v12;
  if (v12)
  {
    v37[0] = v11;
    v37[1] = v12;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:{2, v10}];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v15 = [WeakRetained associationManager];
    v16 = [v13 UUID];
    v36 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v18 = [v11 UUID];
    v34 = 0;
    v19 = [v15 associateObjectUUIDs:v17 objectUUID:v18 error:&v34];
    v20 = v34;

    if ((v19 & 1) == 0)
    {
      v21 = v20;
      v20 = v21;
      if (v21)
      {
        if (a5)
        {
          v22 = v21;
          *a5 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v35 = v11;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:{1, v10}];
    v20 = 0;
  }

  v23 = objc_loadWeakRetained((a1 + 8));
  v24 = [v23 dataManager];
  v25 = [v11 endDate];
  [v25 timeIntervalSinceReferenceDate];
  v26 = [v24 insertDataObjects:v31 withProvenance:v32 creationDate:0 skipInsertionFilter:1 updateSourceOrder:1 resolveAssociations:a5 error:?];

  if ((v26 & 1) == 0)
  {
LABEL_12:
    *v29 = 0;
    v29[1] = 0;
    v29[2] = 0;
    goto LABEL_13;
  }

  *v29 = 257;
  v29[1] = v11;
  v29[2] = v33[2];
LABEL_13:

LABEL_14:
  v27 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_shouldAnalyzeSamples
{
  v1 = a1;
  v38 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 32);
    v35 = 0;
    v3 = [v2 featureStatusWithError:&v35];
    v4 = v35;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
      v6 = [v5 areAllRequirementsSatisfied];

      if (v6)
      {

        v7 = *(v1 + 24);
        v34 = 0;
        v8 = [v7 featureStatusWithError:&v34];
        v4 = v34;
        if (v8)
        {
          if (([v8 isOnboardingRecordPresent]& 1) == 0)
          {
            _HKInitializeLogging();
            v12 = HKLogRespiratoryCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v37 = v1;
              OUTLINED_FUNCTION_1_0();
              _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
            }

            goto LABEL_22;
          }

          v9 = *MEMORY[0x277CCBDF8];
          v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCBDF8]];
          v11 = [v10 areAllRequirementsSatisfied];

          _HKInitializeLogging();
          v12 = HKLogRespiratoryCategory();
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            if (v13)
            {
              *buf = 138543362;
              v37 = v1;
              OUTLINED_FUNCTION_1_0();
              _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
            }

            v1 = 1;
            goto LABEL_23;
          }

          if (v13)
          {
            v20 = [v8 objectForKeyedSubscript:v9];
            v26 = [v20 unsatisfiedRequirementIdentifiers];
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_1_0();
            _os_log_impl(v27, v28, v29, v30, v31, 0x16u);

            goto LABEL_21;
          }
        }

        else
        {
          _HKInitializeLogging();
          v12 = HKLogRespiratoryCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v20 = [v4 localizedDescription];
            OUTLINED_FUNCTION_0_1();
            _os_log_error_impl(&dword_262086000, v12, OS_LOG_TYPE_ERROR, "[%{public}@ Failed to get Oxygen Saturation feature status with error: %@]", buf, 0x16u);
LABEL_21:
          }
        }

LABEL_22:
        v1 = 0;
LABEL_23:

        goto LABEL_24;
      }

      _HKInitializeLogging();
      v8 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v1;
        _os_log_impl(&dword_262086000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Companion Analysis feature is not onboarded", buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v19 = [v4 localizedDescription];
        OUTLINED_FUNCTION_0_1();
        _os_log_error_impl(&dword_262086000, v8, OS_LOG_TYPE_ERROR, "[%{public}@ Failed to get companion analysis feature status with error: %@]", buf, 0x16u);
      }
    }

    v1 = 0;
LABEL_24:
  }

  v32 = *MEMORY[0x277D85DE8];
  return v1;
}

- (void)_postSingleUnsuccessfulMeasurementNotification:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    objc_opt_class();
    v10 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    v4 = [v10 localizedStringForKey:@"UNSUCCESSFUL_MEASUREMENT_NOTIFICATION_TITLE" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNSUCCESSFUL_MEASUREMENT_NOTIFICATION_BODY" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v7 = [v3 UUID];

    v8 = [v7 UUIDString];
    v9 = HKRPOxygenSaturationUnsuccessfulAnalysisEventSampleDetailsLink(v8);
    [(HDRPOxygenSaturationAnalyzer *)a1 _postNotificationWithTitle:v4 body:v6 categoryIdentifier:@"com.apple.private.health.respiratory.phoneonly" subtitle:0 domain:14 url:v9 completion:&__block_literal_global_349];
  }
}

- (void)_postSingleSuccessfulResultNotification:(uint64_t)a1
{
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_3(a1, a2);
    objc_opt_class();
    v19 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    OUTLINED_FUNCTION_5();
    v7 = [v6 localizedStringForKey:? value:? table:?];
    v8 = *(v4 + 3992);
    v9 = [*(v3 + 2264) bundleForClass:objc_opt_class()];
    OUTLINED_FUNCTION_5();
    v11 = [v10 localizedStringForKey:? value:? table:?];
    v12 = [(HDRPOxygenSaturationAnalyzer *)v2 _dataTypeDetailsRoomUrlWithSample:v5];

    OUTLINED_FUNCTION_2_0(v13, v14, v15, @"com.apple.private.health.respiratory.phoneonly", v16, v17, v18, &__block_literal_global_335);
  }
}

- (void)_postMultipleSuccessfullResultsNotification:(uint64_t)a1
{
  if (a1)
  {
    v5 = OUTLINED_FUNCTION_3(a1, a2);
    objc_opt_class();
    v19 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    OUTLINED_FUNCTION_5();
    v7 = [v6 localizedStringForKey:? value:? table:?];
    v8 = *(v4 + 3992);
    v9 = [*(v3 + 2264) bundleForClass:objc_opt_class()];
    OUTLINED_FUNCTION_5();
    v11 = [v10 localizedStringForKey:? value:? table:?];
    v12 = [(HDRPOxygenSaturationAnalyzer *)v2 _dataTypeDetailsRoomUrlWithSample:v5];

    OUTLINED_FUNCTION_2_0(v13, v14, v15, @"com.apple.private.health.respiratory.phoneonly", v16, v17, v18, &__block_literal_global_0);
  }
}

- (void)_postMultipleMixedResultsNotification
{
  if (a1)
  {
    objc_opt_class();
    v6 = [OUTLINED_FUNCTION_4() bundleForClass:?];
    v2 = [v6 localizedStringForKey:@"MULTIPLE_RESULTS_AVAILABLE_NOTIFICATION_TITLE" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"MULTIPLE_RESULTS_AVAILABLE_NOTIFICATION_BODY" value:&stru_28749CD18 table:@"Localizable-Windbreaker"];
    v5 = HKRPOxygenSaturationShowAllDataRoomLink();
    [(HDRPOxygenSaturationAnalyzer *)a1 _postNotificationWithTitle:v2 body:v4 categoryIdentifier:@"com.apple.private.health.respiratory.phoneonly" subtitle:0 domain:14 url:v5 completion:&__block_literal_global_327];
  }
}

- (uint64_t)_deleteUnprocessedSample:(uint64_t)a3 error:
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = MEMORY[0x277D10688];
    v6 = a2;
    v7 = objc_alloc_init(v5);
    [v7 setGenerateDeletedObjects:0];
    [v7 setFailIfNotFound:0];
    [v7 setNotifyObservers:0];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v9 = [WeakRetained dataManager];
    v10 = [v6 UUID];

    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 deleteObjectsWithUUIDCollection:v11 configuration:v7 error:a3];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_dataTypeDetailsRoomUrlWithSample:(uint64_t)a1
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = MEMORY[0x277CCACE0];
    v3 = a2;
    v4 = [v2 alloc];
    v5 = HKRPOxygenSaturationDataTypeRoomLink();
    v6 = [v4 initWithURL:v5 resolvingAgainstBaseURL:0];

    v7 = [v6 queryItems];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v11 = v10;

    v12 = MEMORY[0x277CCABB0];
    v13 = [v3 endDate];

    [v13 timeIntervalSinceReferenceDate];
    v15 = [v12 numberWithInteger:v14];

    v16 = MEMORY[0x277CCAD18];
    v17 = [v15 stringValue];
    v18 = [v16 queryItemWithName:@"date" value:v17];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v11 addObjectsFromArray:v19];

    [v6 setQueryItems:v11];
    v20 = [v6 URL];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_postNotificationWithTitle:(void *)a3 body:(void *)a4 categoryIdentifier:(void *)a5 subtitle:(uint64_t)a6 domain:(void *)a7 url:(void *)a8 completion:
{
  v30 = a3;
  v15 = a5;
  v16 = a7;
  if (a1)
  {
    v17 = MEMORY[0x277CE1F60];
    v18 = a8;
    v19 = a4;
    v20 = a2;
    v21 = objc_alloc_init(v17);
    [v21 setTitle:v20];

    if (v15)
    {
      [v21 setSubtitle:v15];
    }

    [v21 setBody:v30];
    [v21 setCategoryIdentifier:v19];

    v22 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
    [v21 setSound:v22];

    v23 = [MEMORY[0x277CBEB38] dictionary];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x277CCE4D0]];

    if (v16)
    {
      v25 = [v16 absoluteString];
      [v23 setObject:v25 forKeyedSubscript:*MEMORY[0x277CCE4E0]];
    }

    [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCE4D8]];
    [v21 setUserInfo:v23];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v27 = [WeakRetained notificationManager];
    v28 = [MEMORY[0x277CCAD78] UUID];
    v29 = [v28 UUIDString];
    [v27 postNotificationWithIdentifier:v29 content:v21 trigger:0 completion:v18];
  }
}

- (id)_bloodOxygenSampleWithBloodOxygenMeasurement:(void *)a3 unprocessedSample:
{
  if (a1)
  {
    v4 = MEMORY[0x277CCDAB0];
    v5 = a3;
    v6 = a2;
    v7 = [v4 percentUnit];
    v8 = MEMORY[0x277CCD7E8];
    [v6 oxygenSaturationPercentage];
    v10 = [v8 quantityWithUnit:v7 doubleValue:v9 / 100.0];
    v11 = MEMORY[0x277CCD800];
    v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
    v13 = [v6 date];
    v14 = [v6 date];

    v15 = [v5 device];
    v16 = [v5 metadata];

    v17 = [v11 quantitySampleWithType:v12 quantity:v10 startDate:v13 endDate:v14 device:v15 metadata:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_heartRateSampleWithBloodOxygenMeasurement:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && ([v3 averageHeartRate], v5 > 0.0))
  {
    v6 = [MEMORY[0x277CCDAB0] countUnit];
    v7 = [MEMORY[0x277CCDAB0] minuteUnit];
    v8 = [v6 unitDividedByUnit:v7];

    v9 = MEMORY[0x277CCD7E8];
    [v4 averageHeartRate];
    v11 = [v9 quantityWithUnit:v8 doubleValue:v10];
    v12 = MEMORY[0x277CCD800];
    v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v14 = [v4 date];
    v15 = [v4 date];
    v16 = [v12 quantitySampleWithType:v13 quantity:v11 startDate:v14 endDate:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)samplesAdded:(NSObject *)a3 anchor:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_262086000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to request protected data operation work error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end