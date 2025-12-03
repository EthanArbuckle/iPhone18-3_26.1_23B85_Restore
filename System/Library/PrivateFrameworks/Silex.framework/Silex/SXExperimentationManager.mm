@interface SXExperimentationManager
- (SXExperimentationManager)initWithStore:(id)store;
- (id)getTreatmentGroupForExperiment:(id)experiment;
- (void)setupExperimentationForDocument:(id)document experimentationDelegate:(id)delegate;
@end

@implementation SXExperimentationManager

- (SXExperimentationManager)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SXExperimentationManager;
  v6 = [(SXExperimentationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (void)setupExperimentationForDocument:(id)document experimentationDelegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  delegateCopy = delegate;
  metadata = [documentCopy metadata];
  experiment = [metadata experiment];

  if (experiment)
  {
    expirationDate = [experiment expirationDate];

    if (expirationDate)
    {
      expirationDate2 = [experiment expirationDate];
      isExpired = [expirationDate2 isExpired];

      if (!isExpired)
      {
        v14 = [(SXExperimentationManager *)self getTreatmentGroupForExperiment:experiment];
        if (!v14)
        {
LABEL_13:

          goto LABEL_14;
        }

        v18 = SXExperimentationLog;
        if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          identifier = [experiment identifier];
          v21 = 138412546;
          v22 = identifier;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_INFO, "Starting experiment. experimentIdentifier=%@, treatmentGroup=%@", &v21, 0x16u);
        }

        identifier2 = [experiment identifier];
        [delegateCopy didStartExperimentForDocument:documentCopy experimentIdentifier:identifier2 treatmentGroup:v14];
LABEL_12:

        goto LABEL_13;
      }

      v13 = SXExperimentationLog;
      if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        identifier2 = [experiment identifier];
        expirationDate3 = [experiment expirationDate];
        v21 = 138412546;
        v22 = identifier2;
        v23 = 2112;
        v24 = expirationDate3;
        _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_INFO, "Not starting experiment, it has expired. experimentIdentifier=%@, expirationDate=%@", &v21, 0x16u);

        goto LABEL_12;
      }
    }

    else
    {
      v17 = SXExperimentationLog;
      if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
      {
        [SXExperimentationManager setupExperimentationForDocument:v17 experimentationDelegate:experiment];
      }
    }
  }

LABEL_14:
}

- (id)getTreatmentGroupForExperiment:(id)experiment
{
  v34 = *MEMORY[0x1E69E9840];
  experimentCopy = experiment;
  treatmentGroups = [experimentCopy treatmentGroups];
  v6 = [treatmentGroups count];

  if (!v6)
  {
    v14 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [(SXExperimentationManager *)v14 getTreatmentGroupForExperiment:experimentCopy];
    }

    goto LABEL_10;
  }

  expirationDate = [experimentCopy expirationDate];

  if (!expirationDate)
  {
    v15 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [SXExperimentationManager setupExperimentationForDocument:v15 experimentationDelegate:experimentCopy];
    }

    goto LABEL_10;
  }

  expirationDate2 = [experimentCopy expirationDate];
  isExpired = [expirationDate2 isExpired];

  if (isExpired)
  {
    v10 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      identifier = [experimentCopy identifier];
      expirationDate3 = [experimentCopy expirationDate];
      v30 = 138412546;
      v31 = identifier;
      v32 = 2112;
      v33 = expirationDate3;
      _os_log_impl(&dword_1D825C000, v11, OS_LOG_TYPE_INFO, "Not starting experiment, it has expired. experimentIdentifier=%@, expirationDate=%@", &v30, 0x16u);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  store = [(SXExperimentationManager *)self store];
  identifier2 = [experimentCopy identifier];
  v20 = [store treatmentGroupForExperimentIdentifier:identifier2];

  if (!v20)
  {
    treatmentGroups2 = [experimentCopy treatmentGroups];
    treatmentGroups3 = [experimentCopy treatmentGroups];
    v20 = [treatmentGroups2 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(treatmentGroups3, "count"))}];

    v26 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      identifier3 = [experimentCopy identifier];
      v30 = 138412546;
      v31 = identifier3;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_1D825C000, v27, OS_LOG_TYPE_INFO, "Selected experiment treatmentGroup. experimentIdentifier=%@, treatmentGroup=%@", &v30, 0x16u);
    }

    store2 = [(SXExperimentationManager *)self store];
    identifier4 = [experimentCopy identifier];
    expirationDate4 = [experimentCopy expirationDate];
    [store2 storeTreatmentGroup:v20 forExperimentIdentifier:identifier4 expiryDate:expirationDate4];

    goto LABEL_20;
  }

  v21 = SXExperimentationLog;
  if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
  {
    store2 = v21;
    identifier4 = [experimentCopy identifier];
    v30 = 138412546;
    v31 = identifier4;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_1D825C000, store2, OS_LOG_TYPE_INFO, "Found treatmentGroup in store. experimentIdentifier=%@, treatmentGroup=%@", &v30, 0x16u);
LABEL_20:
  }

  v16 = v20;

LABEL_11:

  return v16;
}

- (void)setupExperimentationForDocument:(void *)a1 experimentationDelegate:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_4(&dword_1D825C000, v5, v6, "Experiment found without valid expiration date. experimentIdentifier=%@", v7, v8, v9, v10, 2u);
}

- (void)getTreatmentGroupForExperiment:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_4(&dword_1D825C000, v5, v6, "No treatmentGroups for experiment. experimentIdentifier=%@", v7, v8, v9, v10, 2u);
}

@end