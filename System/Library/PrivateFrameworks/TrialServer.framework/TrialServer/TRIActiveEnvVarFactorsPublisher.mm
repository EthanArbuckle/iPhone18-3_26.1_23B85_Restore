@interface TRIActiveEnvVarFactorsPublisher
- (TRIActiveEnvVarFactorsPublisher)initWithNamespacesProvider:(id)provider factorRetriever:(id)retriever writer:(id)writer;
- (TRIActiveEnvVarFactorsPublisher)initWithServerContext:(id)context;
- (void)publishLowLevelFactors;
@end

@implementation TRIActiveEnvVarFactorsPublisher

- (TRIActiveEnvVarFactorsPublisher)initWithNamespacesProvider:(id)provider factorRetriever:(id)retriever writer:(id)writer
{
  providerCopy = provider;
  retrieverCopy = retriever;
  writerCopy = writer;
  v15.receiver = self;
  v15.super_class = TRIActiveEnvVarFactorsPublisher;
  v12 = [(TRIActiveEnvVarFactorsPublisher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_namespacesProvider, provider);
    objc_storeStrong(&v13->_retriever, retriever);
    objc_storeStrong(&v13->_writer, writer);
  }

  return v13;
}

- (TRIActiveEnvVarFactorsPublisher)initWithServerContext:(id)context
{
  contextCopy = context;
  experimentDatabase = [contextCopy experimentDatabase];
  v6 = objc_opt_new();
  v7 = [TRIActiveEnvVarFactorsWriter alloc];
  paths = [contextCopy paths];

  v9 = [(TRIActiveEnvVarFactorsWriter *)v7 initWithPaths:paths];
  v10 = [(TRIActiveEnvVarFactorsPublisher *)self initWithNamespacesProvider:experimentDatabase factorRetriever:v6 writer:v9];

  return v10;
}

- (void)publishLowLevelFactors
{
  v4 = [[TRIActiveLaunchdDeliveredExperimentsReader alloc] initWithNamespacesProvider:self->_namespacesProvider factorLevelsRetriever:self->_retriever];
  allActiveExperiments = [(TRIActiveLaunchdDeliveredExperimentsReader *)v4 allActiveExperiments];
  [(TRIActiveEnvVarFactorsWriter *)self->_writer writeExperiments:allActiveExperiments];
}

@end