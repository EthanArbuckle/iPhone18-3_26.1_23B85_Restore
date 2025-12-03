@interface TGITextGenerationInferenceDataSource
- (id)createInferenceRunnerWithQueue:(id)queue executionUUID:(id)d operation:(id)operation session:(id)session;
- (shared_ptr<TGITextGenerationInferenceModelInterface>)createModelWithConfiguration:(id)configuration;
@end

@implementation TGITextGenerationInferenceDataSource

- (shared_ptr<TGITextGenerationInferenceModelInterface>)createModelWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    [configurationCopy modelConfiguration];
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    *__p = 0u;
    *v5 = 0u;
    *v6 = 0u;
  }

  TGITextGenerationInferenceModel::createWithConfiguration(v5, v4);
}

- (id)createInferenceRunnerWithQueue:(id)queue executionUUID:(id)d operation:(id)operation session:(id)session
{
  queueCopy = queue;
  dCopy = d;
  operationCopy = operation;
  sessionCopy = session;
  v13 = [[TGITextGenerationInferenceRunner alloc] initWithQueue:queueCopy executionUUID:dCopy operation:operationCopy session:sessionCopy];

  return v13;
}

@end