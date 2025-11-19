@interface PHAPrivateFederatedLearningFacade
- (PHAPrivateFederatedLearningFacade)initWithPhotosLibrary:(id)a3 graphManagerProgress:(id)a4;
- (void)runPFLWithAttachments:(id)a3 recipeUserInfo:(id)a4 resultBlock:(id)a5;
@end

@implementation PHAPrivateFederatedLearningFacade

- (void)runPFLWithAttachments:(id)a3 recipeUserInfo:(id)a4 resultBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PHAPrivateFederatedLearningFacade *)self systemPhotoLibrary];
  v12 = [(PHAPrivateFederatedLearningFacade *)self graphManager];
  v25 = 0;
  v13 = [PHAPrivateFederatedLearningRecipeDecoder decodeRecipeUserInfo:v9 attachmentURLs:v10 photoLibrary:v11 graphManager:v12 decodingError:&v25];

  v14 = v25;
  v15 = [v13 options];
  v16 = [v15 learningFramework];
  LODWORD(v9) = [v16 isEqualToString:@"coreML"];

  if (v9)
  {
    v24 = v14;
    v17 = &v24;
    v18 = [v13 runCoreMLModelWithError:&v24];
  }

  else
  {
    v23 = v14;
    v17 = &v23;
    v18 = [v13 runWithError:&v23];
  }

  v19 = v18;
  v20 = *v17;

  v21 = [v19 dataPackage];
  v22 = [v19 trainingMetrics];
  v8[2](v8, v21, v22, v20);
}

- (PHAPrivateFederatedLearningFacade)initWithPhotosLibrary:(id)a3 graphManagerProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHAPrivateFederatedLearningFacade;
  v8 = [(PHAPrivateFederatedLearningFacade *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF6EC0]);
    [(PHAPrivateFederatedLearningFacade *)v8 setAnalytics:v9];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [(PHAPrivateFederatedLearningFacade *)v8 analytics];
    [v11 setupWithConfigurationFilename:@"CPAnalyticsConfig-photoanalysisd" inBundle:v10];

    v12 = [(PHAPrivateFederatedLearningFacade *)v8 analytics];
    [v12 setupSystemPropertyProvidersForLibrary:v6];

    v13 = [(PHAPrivateFederatedLearningFacade *)v8 analytics];
    [v13 activateEventQueue];

    v14 = [objc_alloc(MEMORY[0x277D3BA40]) initWithPhotoLibrary:v6 analytics:v8->_analytics progressBlock:v7];
    [(PHAPrivateFederatedLearningFacade *)v8 setGraphManager:v14];

    [(PHAPrivateFederatedLearningFacade *)v8 setSystemPhotoLibrary:v6];
  }

  return v8;
}

@end