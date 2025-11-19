@interface TRIExperimentDependentSystemCovariates
- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)a3 baseSystemCovariates:(id)a4 clientExperiment:(id)a5 experimentEndDate:(id)a6;
- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)a3 baseSystemCovariates:(id)a4 clientExperiment:(id)a5 systemConfiguration:(id)a6;
- (id)dictionary;
- (id)objectForKey:(id)a3;
- (id)tri_checkAIUseCaseEnabled:(id)a3;
- (id)tri_contextValueWithName:(id)a3;
@end

@implementation TRIExperimentDependentSystemCovariates

- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)a3 baseSystemCovariates:(id)a4 clientExperiment:(id)a5 experimentEndDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = TRIExperimentDependentSystemCovariates;
  v14 = [(TRIExperimentDependentSystemCovariates *)&v18 init];
  if (v14)
  {
    v15 = [[TRISystemConfiguration alloc] initWithPaths:v10];
    sysConfig = v14->_sysConfig;
    v14->_sysConfig = v15;

    objc_storeStrong(&v14->_clientExperiment, a5);
    objc_storeStrong(&v14->_baseSystemCovariates, a4);
    objc_storeStrong(&v14->_experimentEndDate, a6);
  }

  return v14;
}

- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)a3 baseSystemCovariates:(id)a4 clientExperiment:(id)a5 systemConfiguration:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = TRIExperimentDependentSystemCovariates;
  v13 = [(TRIExperimentDependentSystemCovariates *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sysConfig, a6);
    objc_storeStrong(&v14->_clientExperiment, a5);
    objc_storeStrong(&v14->_baseSystemCovariates, a4);
    v15 = [(TRIClientExperiment *)v14->_clientExperiment endDate];
    v16 = [v15 date];
    experimentEndDate = v14->_experimentEndDate;
    v14->_experimentEndDate = v16;
  }

  return v14;
}

- (id)tri_contextValueWithName:(id)a3
{
  v4 = a3;
  v5 = [(TRIExperimentDependentSystemCovariates *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The system covariates do not contain the key %@", v4];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)dictionary
{
  v3 = [(TRISystemCovariateProviding *)self->_baseSystemCovariates dictionary];
  v4 = [v3 mutableCopy];

  v5 = [(TRISystemConfiguration *)self->_sysConfig siriDeviceAggregationIdRotationDate];
  if (v5)
  {
    v6 = [(NSDate *)self->_experimentEndDate compare:v5]== NSOrderedAscending;
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v4 setObject:v7 forKeyedSubscript:@"SiriAggregationIdRotationIsOutsideExperiment"];

  v8 = [v4 copy];

  return v8;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(TRIExperimentDependentSystemCovariates *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)tri_checkAIUseCaseEnabled:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 isEqualToString:&stru_287FA0430])
  {
    v5 = objc_alloc_init(TRIXPCCovariateFetcher);
    v11 = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v8 = [(TRIXPCCovariateFetcher *)v5 appleIntelligenceStateWithUseCaseIdentifiers:v7];

    if (v8)
    {
      v6 = &unk_287FC4C00;
    }

    else
    {
      v6 = &unk_287FC4C18;
    }
  }

  else
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_error_impl(&dword_26F567000, &v5->super, OS_LOG_TYPE_ERROR, "Invalid useCaseId: %@", buf, 0xCu);
    }

    v6 = &unk_287FC4C00;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end