@interface SXExperimentationManager
- (SXExperimentationManager)initWithStore:(id)a3;
- (id)getTreatmentGroupForExperiment:(id)a3;
- (void)setupExperimentationForDocument:(id)a3 experimentationDelegate:(id)a4;
@end

@implementation SXExperimentationManager

- (SXExperimentationManager)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXExperimentationManager;
  v6 = [(SXExperimentationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (void)setupExperimentationForDocument:(id)a3 experimentationDelegate:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 metadata];
  v9 = [v8 experiment];

  if (v9)
  {
    v10 = [v9 expirationDate];

    if (v10)
    {
      v11 = [v9 expirationDate];
      v12 = [v11 isExpired];

      if (!v12)
      {
        v14 = [(SXExperimentationManager *)self getTreatmentGroupForExperiment:v9];
        if (!v14)
        {
LABEL_13:

          goto LABEL_14;
        }

        v18 = SXExperimentationLog;
        if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          v20 = [v9 identifier];
          v21 = 138412546;
          v22 = v20;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&dword_1D825C000, v19, OS_LOG_TYPE_INFO, "Starting experiment. experimentIdentifier=%@, treatmentGroup=%@", &v21, 0x16u);
        }

        v15 = [v9 identifier];
        [v7 didStartExperimentForDocument:v6 experimentIdentifier:v15 treatmentGroup:v14];
LABEL_12:

        goto LABEL_13;
      }

      v13 = SXExperimentationLog;
      if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v15 = [v9 identifier];
        v16 = [v9 expirationDate];
        v21 = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_1D825C000, v14, OS_LOG_TYPE_INFO, "Not starting experiment, it has expired. experimentIdentifier=%@, expirationDate=%@", &v21, 0x16u);

        goto LABEL_12;
      }
    }

    else
    {
      v17 = SXExperimentationLog;
      if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
      {
        [SXExperimentationManager setupExperimentationForDocument:v17 experimentationDelegate:v9];
      }
    }
  }

LABEL_14:
}

- (id)getTreatmentGroupForExperiment:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 treatmentGroups];
  v6 = [v5 count];

  if (!v6)
  {
    v14 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [(SXExperimentationManager *)v14 getTreatmentGroupForExperiment:v4];
    }

    goto LABEL_10;
  }

  v7 = [v4 expirationDate];

  if (!v7)
  {
    v15 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_ERROR))
    {
      [SXExperimentationManager setupExperimentationForDocument:v15 experimentationDelegate:v4];
    }

    goto LABEL_10;
  }

  v8 = [v4 expirationDate];
  v9 = [v8 isExpired];

  if (v9)
  {
    v10 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v4 identifier];
      v13 = [v4 expirationDate];
      v30 = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1D825C000, v11, OS_LOG_TYPE_INFO, "Not starting experiment, it has expired. experimentIdentifier=%@, expirationDate=%@", &v30, 0x16u);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v18 = [(SXExperimentationManager *)self store];
  v19 = [v4 identifier];
  v20 = [v18 treatmentGroupForExperimentIdentifier:v19];

  if (!v20)
  {
    v24 = [v4 treatmentGroups];
    v25 = [v4 treatmentGroups];
    v20 = [v24 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v25, "count"))}];

    v26 = SXExperimentationLog;
    if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = [v4 identifier];
      v30 = 138412546;
      v31 = v28;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_1D825C000, v27, OS_LOG_TYPE_INFO, "Selected experiment treatmentGroup. experimentIdentifier=%@, treatmentGroup=%@", &v30, 0x16u);
    }

    v22 = [(SXExperimentationManager *)self store];
    v23 = [v4 identifier];
    v29 = [v4 expirationDate];
    [v22 storeTreatmentGroup:v20 forExperimentIdentifier:v23 expiryDate:v29];

    goto LABEL_20;
  }

  v21 = SXExperimentationLog;
  if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    v23 = [v4 identifier];
    v30 = 138412546;
    v31 = v23;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_1D825C000, v22, OS_LOG_TYPE_INFO, "Found treatmentGroup in store. experimentIdentifier=%@, treatmentGroup=%@", &v30, 0x16u);
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