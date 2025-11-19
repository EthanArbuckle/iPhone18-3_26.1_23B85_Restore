@interface HDSHReplaceSleepSamplesOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDSHReplaceSleepSamplesOperation)initWithCoder:(id)a3;
- (HDSHReplaceSleepSamplesOperation)initWithSleepSamplesToInsert:(id)a3 source:(id)a4 replacementInterval:(id)a5 accessibilityAssertion:(id)a6;
- (id)transactionContext;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSHReplaceSleepSamplesOperation

- (HDSHReplaceSleepSamplesOperation)initWithSleepSamplesToInsert:(id)a3 source:(id)a4 replacementInterval:(id)a5 accessibilityAssertion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HDSHReplaceSleepSamplesOperation;
  v14 = [(HDSHReplaceSleepSamplesOperation *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    sleepSamples = v14->_sleepSamples;
    v14->_sleepSamples = v15;

    objc_storeStrong(&v14->_source, a4);
    v17 = [v12 copy];
    replacementInterval = v14->_replacementInterval;
    v14->_replacementInterval = v17;

    objc_storeStrong(&v14->_accessibilityAssertion, a6);
  }

  return v14;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  if (!self)
  {
    goto LABEL_18;
  }

  v12 = MEMORY[0x277CCC320];
  if (self->_replacementInterval)
  {
    v13 = v10;
    v14 = [v13 sourceManager];
    source = self->_source;
    v79 = 0;
    [v14 sourceEntityForClientSource:source createOrUpdateIfNecessary:0 error:&v79];
    v17 = v16 = v12;
    v18 = v79;

    _HKInitializeLogging();
    v19 = *v16;
    if (v17)
    {
      v70 = v18;
      v71 = v13;
      v72 = a5;
      v74 = v11;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        replacementInterval = self->_replacementInterval;
        *buf = 138543874;
        v82 = v21;
        v83 = 2112;
        v84 = v17;
        v85 = 2112;
        v86 = replacementInterval;
        v23 = v21;
        _os_log_impl(&dword_269C02000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting sleep samples source: %@, dateInterval: %@", buf, 0x20u);
      }

      v24 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
      v25 = MEMORY[0x277D10B20];
      v26 = self->_replacementInterval;
      v27 = HDSampleEntityPredicateForDateInterval();
      v80[0] = v27;
      v28 = HDSampleEntityPredicateForDataType();
      v80[1] = v28;
      v29 = HDDataEntityPredicateForSourceEntity();
      v80[2] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
      v31 = [v25 predicateMatchingAllPredicates:v30];

      v78 = 0;
      v32 = v71;
      v33 = [v71 dataManager];
      v34 = [v33 deleteDataObjectsOfClass:objc_opt_class() predicate:v31 limit:*MEMORY[0x277D10C08] deletedSampleCount:&v78 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:v72];

      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        v37 = objc_opt_class();
        v38 = v78;
        v39 = MEMORY[0x277CCABB0];
        v69 = v37;
        v40 = [v39 numberWithBool:v34];
        *buf = 138543874;
        v82 = v37;
        v83 = 2048;
        v84 = v38;
        v32 = v71;
        v85 = 2112;
        v86 = v40;
        _os_log_impl(&dword_269C02000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Success deleting %ld samples: %@", buf, 0x20u);
      }

      a5 = v72;
      v11 = v74;
      v12 = MEMORY[0x277CCC320];
      if (v34)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v63 = v19;
        v64 = objc_opt_class();
        *buf = 138543618;
        v82 = v64;
        v83 = 2112;
        v84 = v18;
        v65 = v64;
        _os_log_error_impl(&dword_269C02000, v63, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve source entity for deletion: %@", buf, 0x16u);
      }
    }

LABEL_18:
    LOBYTE(v53) = 0;
    goto LABEL_23;
  }

LABEL_9:
  v41 = v10;
  v42 = [v41 sourceManager];
  v43 = self->_source;
  v80[0] = 0;
  v44 = [v42 sourceEntityForClientSource:v43 createOrUpdateIfNecessary:1 error:v80];
  v45 = v80[0];

  _HKInitializeLogging();
  v46 = *v12;
  if (v44)
  {
    v75 = v11;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      v48 = objc_opt_class();
      *buf = 138543618;
      v82 = v48;
      v83 = 2112;
      v84 = v44;
      v49 = v48;
      _os_log_impl(&dword_269C02000, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserting sleep samples for source: %@", buf, 0x16u);
    }

    v50 = [v41 dataProvenanceManager];
    v51 = [v50 localDataProvenanceForSourceEntity:v44 version:0 deviceEntity:0];

    v52 = [v41 dataManager];
    v53 = [v52 insertDataObjects:self->_sleepSamples withProvenance:v51 creationDate:0 skipInsertionFilter:a5 error:CFAbsoluteTimeGetCurrent()];

    _HKInitializeLogging();
    v54 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
      v56 = objc_opt_class();
      v73 = v45;
      v57 = MEMORY[0x277CCABB0];
      v58 = v56;
      v59 = [v57 numberWithBool:v53];
      *buf = 138543618;
      v82 = v56;
      v83 = 2112;
      v84 = v59;
      _os_log_impl(&dword_269C02000, v55, OS_LOG_TYPE_DEFAULT, "[%{public}@] Success inserting: %@", buf, 0x16u);

      v45 = v73;
    }

    v11 = v75;
  }

  else
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v66 = v46;
      v67 = objc_opt_class();
      *buf = 138543618;
      v82 = v67;
      v83 = 2112;
      v84 = v45;
      v68 = v67;
      _os_log_error_impl(&dword_269C02000, v66, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve source entity for insertion: %@", buf, 0x16u);
    }

    LOBYTE(v53) = 0;
  }

LABEL_23:
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __73__HDSHReplaceSleepSamplesOperation_performWithProfile_transaction_error___block_invoke;
  v76[3] = &unk_279C830B8;
  v76[4] = self;
  v77 = v10;
  v60 = v10;
  [v11 onCommit:v76 orRollback:0];

  v61 = *MEMORY[0x277D85DE8];
  return v53;
}

void __73__HDSHReplaceSleepSamplesOperation_performWithProfile_transaction_error___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  v5 = MEMORY[0x277CCC320];
  if (v2)
  {
    v6 = [v3 nanoSyncManager];

    if (v6)
    {
      _HKInitializeLogging();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        *buf = 138543362;
        *&buf[4] = objc_opt_class();
        v9 = *&buf[4];
        _os_log_impl(&dword_269C02000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] nano syncing health data", buf, 0xCu);
      }

      v10 = [v4 nanoSyncManager];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Sleep samples saved", v2];
      v12 = *(v2 + 40);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __64__HDSHReplaceSleepSamplesOperation__performNanoSyncWithProfile___block_invoke;
      v33 = &unk_279C83090;
      v34 = v2;
      [v10 syncHealthDataWithOptions:0 reason:v11 accessibilityAssertion:v12 completion:buf];
    }
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v14;
  if (v13)
  {
    v16 = [v14 cloudSyncManager];
    v31 = 0;
    v17 = [v16 canPerformCloudSyncWithError:&v31];
    v18 = v31;

    _HKInitializeLogging();
    v19 = *v5;
    v20 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v20)
      {
        v21 = v19;
        v22 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v22;
        v23 = v22;
        _os_log_impl(&dword_269C02000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] cloud syncing health data", buf, 0xCu);
      }

      v24 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
      v25 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v24];
      v26 = [v15 cloudSyncManager];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Sleep samples saved", v13];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __65__HDSHReplaceSleepSamplesOperation__performCloudSyncWithProfile___block_invoke;
      v33 = &unk_279C83090;
      v34 = v13;
      [v26 syncWithRequest:v25 reason:v27 completion:buf];
    }

    else
    {
      if (!v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      v24 = v19;
      v28 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      v29 = v28;
      _os_log_impl(&dword_269C02000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping cloud sync for sleep sample update: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:

  v30 = *MEMORY[0x277D85DE8];
}

void __64__HDSHReplaceSleepSamplesOperation__performNanoSyncWithProfile___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v5;
      v10 = v12;
      _os_log_error_impl(&dword_269C02000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] failed to nano sync health data with error: %{public}@", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__HDSHReplaceSleepSamplesOperation__performCloudSyncWithProfile___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v5;
      v10 = v12;
      _os_log_error_impl(&dword_269C02000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] failed to cloud sync health data with error: %{public}@", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)transactionContext
{
  v3 = [MEMORY[0x277D10788] contextForWritingProtectedData];
  v4 = [v3 contextWithAccessibilityAssertion:self->_accessibilityAssertion];

  return v4;
}

- (HDSHReplaceSleepSamplesOperation)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"sleep_samples"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"replacement_interval"];

  v11 = [(HDSHReplaceSleepSamplesOperation *)self initWithSleepSamplesToInsert:v8 source:v9 replacementInterval:v10 accessibilityAssertion:0];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDSHReplaceSleepSamplesOperation;
  v4 = a3;
  [(HDJournalableOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sleepSamples forKey:{@"sleep_samples", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_source forKey:@"source"];
  [v4 encodeObject:self->_replacementInterval forKey:@"replacement_interval"];
}

@end