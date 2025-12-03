@interface PHAPrivateFederatedLearningFacade
- (PHAPrivateFederatedLearningFacade)initWithPhotosLibrary:(id)library graphManagerProgress:(id)progress;
- (void)runPFLWithAttachments:(id)attachments recipeUserInfo:(id)info resultBlock:(id)block;
@end

@implementation PHAPrivateFederatedLearningFacade

- (void)runPFLWithAttachments:(id)attachments recipeUserInfo:(id)info resultBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  attachmentsCopy = attachments;
  systemPhotoLibrary = [(PHAPrivateFederatedLearningFacade *)self systemPhotoLibrary];
  graphManager = [(PHAPrivateFederatedLearningFacade *)self graphManager];
  v25 = 0;
  v13 = [PHAPrivateFederatedLearningRecipeDecoder decodeRecipeUserInfo:infoCopy attachmentURLs:attachmentsCopy photoLibrary:systemPhotoLibrary graphManager:graphManager decodingError:&v25];

  v14 = v25;
  options = [v13 options];
  learningFramework = [options learningFramework];
  LODWORD(infoCopy) = [learningFramework isEqualToString:@"coreML"];

  if (infoCopy)
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

  dataPackage = [v19 dataPackage];
  trainingMetrics = [v19 trainingMetrics];
  blockCopy[2](blockCopy, dataPackage, trainingMetrics, v20);
}

- (PHAPrivateFederatedLearningFacade)initWithPhotosLibrary:(id)library graphManagerProgress:(id)progress
{
  libraryCopy = library;
  progressCopy = progress;
  v16.receiver = self;
  v16.super_class = PHAPrivateFederatedLearningFacade;
  v8 = [(PHAPrivateFederatedLearningFacade *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF6EC0]);
    [(PHAPrivateFederatedLearningFacade *)v8 setAnalytics:v9];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    analytics = [(PHAPrivateFederatedLearningFacade *)v8 analytics];
    [analytics setupWithConfigurationFilename:@"CPAnalyticsConfig-photoanalysisd" inBundle:v10];

    analytics2 = [(PHAPrivateFederatedLearningFacade *)v8 analytics];
    [analytics2 setupSystemPropertyProvidersForLibrary:libraryCopy];

    analytics3 = [(PHAPrivateFederatedLearningFacade *)v8 analytics];
    [analytics3 activateEventQueue];

    v14 = [objc_alloc(MEMORY[0x277D3BA40]) initWithPhotoLibrary:libraryCopy analytics:v8->_analytics progressBlock:progressCopy];
    [(PHAPrivateFederatedLearningFacade *)v8 setGraphManager:v14];

    [(PHAPrivateFederatedLearningFacade *)v8 setSystemPhotoLibrary:libraryCopy];
  }

  return v8;
}

@end