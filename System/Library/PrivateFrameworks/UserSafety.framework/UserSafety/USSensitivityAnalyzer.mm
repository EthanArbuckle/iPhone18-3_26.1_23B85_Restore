@interface USSensitivityAnalyzer
+ (BOOL)_isAnalysisEnabled:(id)enabled;
+ (BOOL)_isNudityDetectionEnabled:(id)enabled;
+ (BOOL)_isNudityDetectionEnabledForAnyOfServices:(id)services scanningPolicy:(id)policy;
+ (BOOL)_isNudityDetectionEnabledForApplication:(id)application scanningPolicy:(id)policy;
+ (BOOL)_isNudityDetectionEnabledForService:(id)service scanningPolicy:(id)policy;
+ (BOOL)isAnalysisEnabled;
+ (BOOL)isCommunicationSafetyEnabled;
+ (BOOL)isNudityDetectionEnabled;
+ (BOOL)isNudityDetectionEnabledForAnyOfServices:(id)services;
+ (BOOL)isNudityDetectionEnabledForService:(id)service;
+ (id)subscribeForAnalysisEnabledChanges:(id)changes;
- (USSensitivityAnalyzer)init;
- (USSensitivityAnalyzer)initWithQueue:(id)queue madService:(id)service;
- (void)analyzeImageFile:(id)file completionHandler:(id)handler;
- (void)analyzeImageWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l completionHandler:(id)handler;
- (void)analyzeVideoFile:(id)file progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)analyzeVideoWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation USSensitivityAnalyzer

+ (BOOL)isCommunicationSafetyEnabled
{
  selfCopy = self;
  v3 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(selfCopy) = [selfCopy _isCommunicationSafetyEnabled:v3];

  return selfCopy;
}

+ (BOOL)isNudityDetectionEnabled
{
  selfCopy = self;
  v3 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(selfCopy) = [selfCopy _isNudityDetectionEnabled:v3];

  return selfCopy;
}

- (USSensitivityAnalyzer)init
{
  v3 = dispatch_queue_create("com.apple.UserSafety.USSensitivityAnalyzer", 0);
  v4 = [(USSensitivityAnalyzer *)self initWithQueue:v3];

  return v4;
}

- (USSensitivityAnalyzer)initWithQueue:(id)queue madService:(id)service
{
  queueCopy = queue;
  serviceCopy = service;
  v16.receiver = self;
  v16.super_class = USSensitivityAnalyzer;
  v9 = [(USSensitivityAnalyzer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    if (serviceCopy)
    {
      objc_storeStrong(&v10->_madService, service);
      v11 = [objc_alloc(MEMORY[0x277CDC618]) initWithQueue:queueCopy madService:serviceCopy];
    }

    else
    {
      v12 = objc_opt_new();
      madService = v10->_madService;
      v10->_madService = v12;

      v11 = [objc_alloc(MEMORY[0x277CDC618]) initWithQueue:queueCopy];
    }

    scsAnalyzer = v10->_scsAnalyzer;
    v10->_scsAnalyzer = v11;
  }

  return v10;
}

- (void)analyzeImageFile:(id)file completionHandler:(id)handler
{
  handlerCopy = handler;
  scsAnalyzer = self->_scsAnalyzer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__USSensitivityAnalyzer_analyzeImageFile_completionHandler___block_invoke;
  v9[3] = &unk_279E15F38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeImageFile:file completionHandler:v9];
}

void __60__USSensitivityAnalyzer_analyzeImageFile_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 isSensitive], v5);
  }
}

void __74__USSensitivityAnalyzer_analyzeCGImage_withOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 isSensitive], v5);
  }
}

- (void)analyzeVideoFile:(id)file progressHandler:(id)handler completionHandler:(id)completionHandler
{
  fileCopy = file;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  scsAnalyzer = self->_scsAnalyzer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__USSensitivityAnalyzer_analyzeVideoFile_progressHandler_completionHandler___block_invoke;
  v17[3] = &unk_279E15F60;
  v18 = fileCopy;
  v19 = handlerCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__USSensitivityAnalyzer_analyzeVideoFile_progressHandler_completionHandler___block_invoke_2;
  v15[3] = &unk_279E15F38;
  v16 = completionHandlerCopy;
  v12 = completionHandlerCopy;
  v13 = fileCopy;
  v14 = handlerCopy;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeVideoFile:v13 progressHandler:v17 completionHandler:v15];
}

uint64_t __76__USSensitivityAnalyzer_analyzeVideoFile_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __76__USSensitivityAnalyzer_analyzeVideoFile_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 isSensitive], v5);
  }
}

uint64_t __89__USSensitivityAnalyzer_analyzeVideoFile_useBlastdoor_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __89__USSensitivityAnalyzer_analyzeVideoFile_useBlastdoor_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 isSensitive], v5);
  }
}

- (void)analyzeImageWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  scsAnalyzer = self->_scsAnalyzer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__USSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_completionHandler___block_invoke;
  v11[3] = &unk_279E15F38;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeImageWithLocalIdentifier:identifier fromPhotoLibraryWithURL:l completionHandler:v11];
}

void __99__USSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 isSensitive], v5);
  }
}

- (void)analyzeVideoWithLocalIdentifier:(id)identifier fromPhotoLibraryWithURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  scsAnalyzer = self->_scsAnalyzer;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __115__USSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke;
  v19[3] = &unk_279E15F60;
  v20 = identifierCopy;
  v21 = handlerCopy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __115__USSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_2;
  v17[3] = &unk_279E15F38;
  v18 = completionHandlerCopy;
  v14 = completionHandlerCopy;
  v15 = identifierCopy;
  v16 = handlerCopy;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeVideoWithLocalIdentifier:v15 fromPhotoLibraryWithURL:l progressHandler:v19 completionHandler:v17];
}

uint64_t __115__USSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __115__USSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    (*(v3 + 16))(v3, [a2 isSensitive], v5);
  }
}

+ (BOOL)isAnalysisEnabled
{
  selfCopy = self;
  v3 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(selfCopy) = [selfCopy _isAnalysisEnabled:v3];

  return selfCopy;
}

+ (BOOL)isNudityDetectionEnabledForService:(id)service
{
  serviceCopy = service;
  v5 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(self) = [self _isNudityDetectionEnabledForService:serviceCopy scanningPolicy:v5];

  return self;
}

+ (BOOL)isNudityDetectionEnabledForAnyOfServices:(id)services
{
  servicesCopy = services;
  v5 = [objc_msgSend(self "settingsReaderClass")];
  LOBYTE(self) = [self _isNudityDetectionEnabledForAnyOfServices:servicesCopy scanningPolicy:v5];

  return self;
}

+ (id)subscribeForAnalysisEnabledChanges:(id)changes
{
  changesCopy = changes;
  v4 = MEMORY[0x277CDC618];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__USSensitivityAnalyzer_subscribeForAnalysisEnabledChanges___block_invoke;
  v9[3] = &unk_279E15F88;
  v10 = changesCopy;
  v5 = changesCopy;
  v6 = [v4 subscribeForAnalysisAvailabilityChanges:v9];
  v7 = [[USAnalysisEnablementSubscription alloc] initWithObserver:v6];

  return v7;
}

uint64_t __60__USSensitivityAnalyzer_subscribeForAnalysisEnabledChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 2, a2 == 1);
  }

  return result;
}

+ (BOOL)_isAnalysisEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([self _isCommunicationSafetyEnabled:enabledCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self _isNudityDetectionEnabled:enabledCopy];
  }

  return v5;
}

+ (BOOL)_isNudityDetectionEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [objc_msgSend(self "entitlementsReaderClass")];
  if (v5)
  {
    v6 = [self _isNudityDetectionEnabledForAnyOfServices:v5 scanningPolicy:enabledCopy];
  }

  else
  {
    v7 = [objc_msgSend(self "entitlementsReaderClass")];
    v6 = [self _isNudityDetectionEnabledForApplication:v7 scanningPolicy:enabledCopy];
  }

  return v6;
}

+ (BOOL)_isNudityDetectionEnabledForAnyOfServices:(id)services scanningPolicy:(id)policy
{
  v21 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  policyCopy = policy;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = servicesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([self _isNudityDetectionEnabledForService:*(*(&v16 + 1) + 8 * i) scanningPolicy:{policyCopy, v16}])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)_isNudityDetectionEnabledForService:(id)service scanningPolicy:(id)policy
{
  serviceCopy = service;
  policyCopy = policy;
  if ([policyCopy policy] == 1)
  {
    services = [policyCopy services];
    v8 = [services containsObject:serviceCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isNudityDetectionEnabledForApplication:(id)application scanningPolicy:(id)policy
{
  applicationCopy = application;
  policyCopy = policy;
  if ([policyCopy policy] == 1)
  {
    v7 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:applicationCopy];
    applications = [policyCopy applications];
    v9 = [applications containsObject:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end