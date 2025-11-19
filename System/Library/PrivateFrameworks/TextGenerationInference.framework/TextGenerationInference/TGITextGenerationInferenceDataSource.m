@interface TGITextGenerationInferenceDataSource
- (id)createInferenceRunnerWithQueue:(id)a3 executionUUID:(id)a4 operation:(id)a5 session:(id)a6;
- (shared_ptr<TGITextGenerationInferenceModelInterface>)createModelWithConfiguration:(id)a3;
@end

@implementation TGITextGenerationInferenceDataSource

- (shared_ptr<TGITextGenerationInferenceModelInterface>)createModelWithConfiguration:(id)a3
{
  v3 = a3;
  if (v3)
  {
    [v3 modelConfiguration];
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

- (id)createInferenceRunnerWithQueue:(id)a3 executionUUID:(id)a4 operation:(id)a5 session:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[TGITextGenerationInferenceRunner alloc] initWithQueue:v9 executionUUID:v10 operation:v11 session:v12];

  return v13;
}

@end