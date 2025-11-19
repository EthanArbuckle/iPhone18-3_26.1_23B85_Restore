@interface PHACurareShadowEvaluationFacade
- (PHACurareShadowEvaluationFacade)initWithPhotosLibrary:(id)a3 graphManagerProgress:(id)a4;
- (void)runPFLRecipeUserInfo:(id)a3 models:(id)a4 trialDeploymentID:(id)a5 trialExperimentID:(id)a6 trialTreatmentID:(id)a7 resultBlock:(id)a8;
@end

@implementation PHACurareShadowEvaluationFacade

- (void)runPFLRecipeUserInfo:(id)a3 models:(id)a4 trialDeploymentID:(id)a5 trialExperimentID:(id)a6 trialTreatmentID:(id)a7 resultBlock:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(PHACurareShadowEvaluationFacade *)self systemPhotoLibrary];
  v21 = [(PHACurareShadowEvaluationFacade *)self graphManager];
  v26 = 0;
  v22 = [PHACurareShadowEvaluationRecipeDecoder decodeRecipeUserInfo:v19 models:v18 photoLibrary:v20 graphManager:v21 trialDeploymentID:v17 trialExperimentID:v16 trialTreatmentID:v15 decodingError:&v26];

  v23 = v26;
  v25 = v23;
  [v22 runWithError:&v25];
  v24 = v25;

  v14[2](v14, v24);
}

- (PHACurareShadowEvaluationFacade)initWithPhotosLibrary:(id)a3 graphManagerProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHACurareShadowEvaluationFacade;
  v8 = [(PHACurareShadowEvaluationFacade *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF6EC0]);
    [(PHACurareShadowEvaluationFacade *)v8 setAnalytics:v9];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [(PHACurareShadowEvaluationFacade *)v8 analytics];
    [v11 setupWithConfigurationFilename:@"CPAnalyticsConfig-photoanalysisd" inBundle:v10];

    v12 = [(PHACurareShadowEvaluationFacade *)v8 analytics];
    [v12 setupSystemPropertyProvidersForLibrary:v6];

    v13 = [(PHACurareShadowEvaluationFacade *)v8 analytics];
    [v13 activateEventQueue];

    v14 = [objc_alloc(MEMORY[0x277D3BA40]) initWithPhotoLibrary:v6 analytics:v8->_analytics progressBlock:v7];
    [(PHACurareShadowEvaluationFacade *)v8 setGraphManager:v14];

    [(PHACurareShadowEvaluationFacade *)v8 setSystemPhotoLibrary:v6];
  }

  return v8;
}

@end