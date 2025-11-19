@interface PSGInternalRequestHandler
- (PSGInternalRequestHandler)init;
- (id)_getWordBoundaryExperimentInfo:(id)a3;
- (id)_getZKWExperimentInfo:(id)a3;
- (id)_initWithExperimentResolver:(id)a3;
- (void)sysdiagnoseInformationWithCompletion:(id)a3;
@end

@implementation PSGInternalRequestHandler

- (void)sysdiagnoseInformationWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v17 = objc_opt_new();
  v4 = objc_opt_new();
  [(PSGInternalRequestHandler *)self _getPreferredLanguages];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v26[0] = @"WB";
        v10 = [(PSGInternalRequestHandler *)self _getWordBoundaryExperimentInfo:v9, v17];
        v26[1] = @"ZKW";
        v27[0] = v10;
        v11 = [(PSGInternalRequestHandler *)self _getZKWExperimentInfo:v9];
        v27[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        [v4 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  if (![v4 count])
  {
    [v4 setObject:@"No preferredLanguages" forKeyedSubscript:@"Error"];
  }

  [v18 setObject:v4 forKeyedSubscript:@"ExperimentInfo"];

  v21 = 0;
  v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v18 options:3 error:&v21];
  v14 = v21;
  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
    v19[2](v19, v15, v14);
  }

  else
  {
    v19[2](v19, 0, v14);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_getWordBoundaryExperimentInfo:(id)a3
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = [(PSGExperimentResolver *)self->_experimentResolver getWordBoundarySuggestionsExperimentConfig:a3 shouldDownloadAssets:0];
  v22[0] = @"treatment";
  v21 = [v3 treatmentName];
  v23[0] = v21;
  v22[1] = @"experiment-id";
  v4 = [v3 experimentIdentifiers];
  v5 = [v4 experimentId];
  v23[1] = v5;
  v22[2] = @"treatment-id";
  v6 = [v3 experimentIdentifiers];
  v7 = [v6 treatmentId];
  v23[2] = v7;
  v22[3] = @"ml-enabled";
  v8 = [v3 isMLModelEnabled];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v23[3] = v9;
  v22[4] = @"model-config";
  v10 = [v3 inferenceModelConfigPath];
  v11 = [v10 lastPathComponent];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"nil";
  }

  v23[4] = v13;
  v22[5] = @"model-file";
  v14 = [v3 espressoBinFilePath];
  v15 = [v14 lastPathComponent];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"nil";
  }

  v23[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_getZKWExperimentInfo:(id)a3
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = [(PSGExperimentResolver *)self->_experimentResolver getResponseSuggestionsExperimentConfig:a3 shouldDownloadAssets:0];
  v22[0] = @"treatment";
  v21 = [v3 treatmentName];
  v23[0] = v21;
  v22[1] = @"experiment-id";
  v4 = [v3 experimentIdentifiers];
  v5 = [v4 experimentId];
  v23[1] = v5;
  v22[2] = @"treatment-id";
  v6 = [v3 experimentIdentifiers];
  v7 = [v6 treatmentId];
  v23[2] = v7;
  v22[3] = @"ml-enabled";
  v8 = [v3 isMLModelEnabled];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v23[3] = v9;
  v22[4] = @"model-config";
  v10 = [v3 inferenceModelConfigPath];
  v11 = [v10 lastPathComponent];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"nil";
  }

  v23[4] = v13;
  v22[5] = @"model-file";
  v14 = [v3 espressoBinFilePath];
  v15 = [v14 lastPathComponent];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"nil";
  }

  v23[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_initWithExperimentResolver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSGInternalRequestHandler;
  v6 = [(PSGInternalRequestHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentResolver, a3);
  }

  return v7;
}

- (PSGInternalRequestHandler)init
{
  v3 = +[PSGExperimentResolver sharedInstance];
  v4 = [(PSGInternalRequestHandler *)self _initWithExperimentResolver:v3];

  return v4;
}

@end