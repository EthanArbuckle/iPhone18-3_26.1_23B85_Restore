@interface TRIExperimentCovariates
- (TRIExperimentCovariates)initWithExperimentRecord:(id)a3;
- (id)dictionary;
- (id)tri_contextValueWithName:(id)a3;
- (unint64_t)_isExperimentActivated:(id)a3;
@end

@implementation TRIExperimentCovariates

- (TRIExperimentCovariates)initWithExperimentRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIExperimentCovariates;
  v6 = [(TRIExperimentCovariates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentRecord, a3);
  }

  return v7;
}

- (id)tri_contextValueWithName:(id)a3
{
  v4 = a3;
  v5 = [(TRIExperimentCovariates *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"The experiment covariates do not contain the key %@", v4];
    v10 = [v8 exceptionWithName:@"KeyNotFoundException" reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v6;
}

- (id)dictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  dictionary = v2->_dictionary;
  if (!dictionary)
  {
    v10 = @"IsActivated";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TRIExperimentCovariates _isExperimentActivated:](v2, "_isExperimentActivated:", v2->_experimentRecord)}];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = v2->_dictionary;
    v2->_dictionary = v5;

    dictionary = v2->_dictionary;
  }

  v7 = dictionary;
  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)_isExperimentActivated:(id)a3
{
  v3 = a3;
  v4 = [v3 status] == 1 || objc_msgSend(v3, "status") == 3;

  return v4;
}

@end