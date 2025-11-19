@interface TRIActiveEnvVarFactorsPublisher
- (TRIActiveEnvVarFactorsPublisher)initWithNamespacesProvider:(id)a3 factorRetriever:(id)a4 writer:(id)a5;
- (TRIActiveEnvVarFactorsPublisher)initWithServerContext:(id)a3;
- (void)publishLowLevelFactors;
@end

@implementation TRIActiveEnvVarFactorsPublisher

- (TRIActiveEnvVarFactorsPublisher)initWithNamespacesProvider:(id)a3 factorRetriever:(id)a4 writer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TRIActiveEnvVarFactorsPublisher;
  v12 = [(TRIActiveEnvVarFactorsPublisher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_namespacesProvider, a3);
    objc_storeStrong(&v13->_retriever, a4);
    objc_storeStrong(&v13->_writer, a5);
  }

  return v13;
}

- (TRIActiveEnvVarFactorsPublisher)initWithServerContext:(id)a3
{
  v4 = a3;
  v5 = [v4 experimentDatabase];
  v6 = objc_opt_new();
  v7 = [TRIActiveEnvVarFactorsWriter alloc];
  v8 = [v4 paths];

  v9 = [(TRIActiveEnvVarFactorsWriter *)v7 initWithPaths:v8];
  v10 = [(TRIActiveEnvVarFactorsPublisher *)self initWithNamespacesProvider:v5 factorRetriever:v6 writer:v9];

  return v10;
}

- (void)publishLowLevelFactors
{
  v4 = [[TRIActiveLaunchdDeliveredExperimentsReader alloc] initWithNamespacesProvider:self->_namespacesProvider factorLevelsRetriever:self->_retriever];
  v3 = [(TRIActiveLaunchdDeliveredExperimentsReader *)v4 allActiveExperiments];
  [(TRIActiveEnvVarFactorsWriter *)self->_writer writeExperiments:v3];
}

@end