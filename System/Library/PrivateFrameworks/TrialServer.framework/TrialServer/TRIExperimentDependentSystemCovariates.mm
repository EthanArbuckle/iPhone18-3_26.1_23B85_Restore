@interface TRIExperimentDependentSystemCovariates
- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)paths baseSystemCovariates:(id)covariates clientExperiment:(id)experiment experimentEndDate:(id)date;
- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)paths baseSystemCovariates:(id)covariates clientExperiment:(id)experiment systemConfiguration:(id)configuration;
- (id)dictionary;
- (id)objectForKey:(id)key;
- (id)tri_checkAIUseCaseEnabled:(id)enabled;
- (id)tri_contextValueWithName:(id)name;
@end

@implementation TRIExperimentDependentSystemCovariates

- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)paths baseSystemCovariates:(id)covariates clientExperiment:(id)experiment experimentEndDate:(id)date
{
  pathsCopy = paths;
  covariatesCopy = covariates;
  experimentCopy = experiment;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = TRIExperimentDependentSystemCovariates;
  v14 = [(TRIExperimentDependentSystemCovariates *)&v18 init];
  if (v14)
  {
    v15 = [[TRISystemConfiguration alloc] initWithPaths:pathsCopy];
    sysConfig = v14->_sysConfig;
    v14->_sysConfig = v15;

    objc_storeStrong(&v14->_clientExperiment, experiment);
    objc_storeStrong(&v14->_baseSystemCovariates, covariates);
    objc_storeStrong(&v14->_experimentEndDate, date);
  }

  return v14;
}

- (TRIExperimentDependentSystemCovariates)initWithPaths:(id)paths baseSystemCovariates:(id)covariates clientExperiment:(id)experiment systemConfiguration:(id)configuration
{
  covariatesCopy = covariates;
  experimentCopy = experiment;
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = TRIExperimentDependentSystemCovariates;
  v13 = [(TRIExperimentDependentSystemCovariates *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sysConfig, configuration);
    objc_storeStrong(&v14->_clientExperiment, experiment);
    objc_storeStrong(&v14->_baseSystemCovariates, covariates);
    endDate = [(TRIClientExperiment *)v14->_clientExperiment endDate];
    date = [endDate date];
    experimentEndDate = v14->_experimentEndDate;
    v14->_experimentEndDate = date;
  }

  return v14;
}

- (id)tri_contextValueWithName:(id)name
{
  nameCopy = name;
  dictionary = [(TRIExperimentDependentSystemCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The system covariates do not contain the key %@", nameCopy];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:nameCopy userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)dictionary
{
  dictionary = [(TRISystemCovariateProviding *)self->_baseSystemCovariates dictionary];
  v4 = [dictionary mutableCopy];

  siriDeviceAggregationIdRotationDate = [(TRISystemConfiguration *)self->_sysConfig siriDeviceAggregationIdRotationDate];
  if (siriDeviceAggregationIdRotationDate)
  {
    v6 = [(NSDate *)self->_experimentEndDate compare:siriDeviceAggregationIdRotationDate]== NSOrderedAscending;
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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(TRIExperimentDependentSystemCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)tri_checkAIUseCaseEnabled:(id)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v4 = enabledCopy;
  if (enabledCopy && ![enabledCopy isEqualToString:&stru_287FA0430])
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