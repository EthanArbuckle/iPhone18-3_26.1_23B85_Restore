@interface TRIExperimentHistorySysdiagnoseProvider
+ (id)defaultProvider;
- (id)_allHistoryRecordsWithError:(id *)a3;
- (id)initIncompleteProvider;
- (id)sysdiagnoseLinesWithError:(id *)a3;
@end

@implementation TRIExperimentHistorySysdiagnoseProvider

- (id)initIncompleteProvider
{
  v3.receiver = self;
  v3.super_class = TRIExperimentHistorySysdiagnoseProvider;
  return [(TRIExperimentHistorySysdiagnoseProvider *)&v3 init];
}

+ (id)defaultProvider
{
  v2 = [[TRIExperimentHistorySysdiagnoseProvider alloc] initIncompleteProvider];
  objc_initWeak(&location, v2);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __58__TRIExperimentHistorySysdiagnoseProvider_defaultProvider__block_invoke;
  v9 = &unk_27885EAB0;
  objc_copyWeak(&v10, &location);
  v3 = MEMORY[0x2318F2490](&v6);
  v4 = [TRIAllocationStatus syncProxyWithErrorHandler:v3, v6, v7, v8, v9];
  [v2 setSyncStatusProvider:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v2;
}

void __58__TRIExperimentHistorySysdiagnoseProvider_defaultProvider__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setXpcError:v5];
  }
}

- (id)sysdiagnoseLinesWithError:(id *)a3
{
  v3 = [(TRIExperimentHistorySysdiagnoseProvider *)self _allHistoryRecordsWithError:a3];
  if (v3)
  {
    v4 = [TRISysdiagnoseOutputFormatter formatRecords:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_allHistoryRecordsWithError:(id *)a3
{
  v5 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:0 error:a3];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v6 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:2 error:a3];
  if (v6)
  {
    v7 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:3 error:a3];
    if (!v7)
    {
      v10 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = [(TRIExperimentHistorySysdiagnoseProvider *)self _experimentHistoryRecordsForEnvironment:4 error:a3];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = [(TRIExperimentHistorySysdiagnoseProvider *)self xpcError];

    if (!v9)
    {
      v11 = objc_opt_new();
      [v11 addObjectsFromArray:v5];
      [v11 addObjectsFromArray:v6];
      [v11 addObjectsFromArray:v7];
      [v11 addObjectsFromArray:v8];
      v10 = [v11 copy];

      goto LABEL_13;
    }

    if (a3)
    {
      [(TRIExperimentHistorySysdiagnoseProvider *)self xpcError];
      *a3 = v10 = 0;
    }

    else
    {
LABEL_11:
      v10 = 0;
    }

LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

LABEL_16:

  return v10;
}

void __89__TRIExperimentHistorySysdiagnoseProvider__experimentHistoryRecordsForEnvironment_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a5);
    v8 = 0;
  }

  else
  {
    v8 = [a3 copy];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end