@interface TRIExperimentCovariates
- (TRIExperimentCovariates)initWithExperimentRecord:(id)record;
- (id)dictionary;
- (id)tri_contextValueWithName:(id)name;
- (unint64_t)_isExperimentActivated:(id)activated;
@end

@implementation TRIExperimentCovariates

- (TRIExperimentCovariates)initWithExperimentRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = TRIExperimentCovariates;
  v6 = [(TRIExperimentCovariates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentRecord, record);
  }

  return v7;
}

- (id)tri_contextValueWithName:(id)name
{
  nameCopy = name;
  dictionary = [(TRIExperimentCovariates *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The experiment covariates do not contain the key %@", nameCopy];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:nameCopy userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)dictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionary = selfCopy->_dictionary;
  if (!dictionary)
  {
    v10 = @"IsActivated";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TRIExperimentCovariates _isExperimentActivated:](selfCopy, "_isExperimentActivated:", selfCopy->_experimentRecord)}];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = selfCopy->_dictionary;
    selfCopy->_dictionary = v5;

    dictionary = selfCopy->_dictionary;
  }

  v7 = dictionary;
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)_isExperimentActivated:(id)activated
{
  activatedCopy = activated;
  v4 = [activatedCopy status] == 1 || objc_msgSend(activatedCopy, "status") == 3;

  return v4;
}

@end