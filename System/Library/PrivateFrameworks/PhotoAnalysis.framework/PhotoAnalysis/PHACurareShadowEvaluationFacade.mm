@interface PHACurareShadowEvaluationFacade
- (PHACurareShadowEvaluationFacade)initWithPhotosLibrary:(id)library graphManagerProgress:(id)progress;
- (void)runPFLRecipeUserInfo:(id)info models:(id)models trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID resultBlock:(id)block;
@end

@implementation PHACurareShadowEvaluationFacade

- (void)runPFLRecipeUserInfo:(id)info models:(id)models trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID resultBlock:(id)block
{
  blockCopy = block;
  treatmentIDCopy = treatmentID;
  iDCopy = iD;
  dCopy = d;
  modelsCopy = models;
  infoCopy = info;
  systemPhotoLibrary = [(PHACurareShadowEvaluationFacade *)self systemPhotoLibrary];
  graphManager = [(PHACurareShadowEvaluationFacade *)self graphManager];
  v26 = 0;
  v22 = [PHACurareShadowEvaluationRecipeDecoder decodeRecipeUserInfo:infoCopy models:modelsCopy photoLibrary:systemPhotoLibrary graphManager:graphManager trialDeploymentID:dCopy trialExperimentID:iDCopy trialTreatmentID:treatmentIDCopy decodingError:&v26];

  v23 = v26;
  v25 = v23;
  [v22 runWithError:&v25];
  v24 = v25;

  blockCopy[2](blockCopy, v24);
}

- (PHACurareShadowEvaluationFacade)initWithPhotosLibrary:(id)library graphManagerProgress:(id)progress
{
  libraryCopy = library;
  progressCopy = progress;
  v16.receiver = self;
  v16.super_class = PHACurareShadowEvaluationFacade;
  v8 = [(PHACurareShadowEvaluationFacade *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF6EC0]);
    [(PHACurareShadowEvaluationFacade *)v8 setAnalytics:v9];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    analytics = [(PHACurareShadowEvaluationFacade *)v8 analytics];
    [analytics setupWithConfigurationFilename:@"CPAnalyticsConfig-photoanalysisd" inBundle:v10];

    analytics2 = [(PHACurareShadowEvaluationFacade *)v8 analytics];
    [analytics2 setupSystemPropertyProvidersForLibrary:libraryCopy];

    analytics3 = [(PHACurareShadowEvaluationFacade *)v8 analytics];
    [analytics3 activateEventQueue];

    v14 = [objc_alloc(MEMORY[0x277D3BA40]) initWithPhotoLibrary:libraryCopy analytics:v8->_analytics progressBlock:progressCopy];
    [(PHACurareShadowEvaluationFacade *)v8 setGraphManager:v14];

    [(PHACurareShadowEvaluationFacade *)v8 setSystemPhotoLibrary:libraryCopy];
  }

  return v8;
}

@end