@interface USSensitivityAnalyzer
+ (BOOL)_isAnalysisEnabled:(id)a3;
+ (BOOL)_isNudityDetectionEnabled:(id)a3;
+ (BOOL)_isNudityDetectionEnabledForAnyOfServices:(id)a3 scanningPolicy:(id)a4;
+ (BOOL)_isNudityDetectionEnabledForApplication:(id)a3 scanningPolicy:(id)a4;
+ (BOOL)_isNudityDetectionEnabledForService:(id)a3 scanningPolicy:(id)a4;
+ (BOOL)isAnalysisEnabled;
+ (BOOL)isCommunicationSafetyEnabled;
+ (BOOL)isNudityDetectionEnabled;
+ (BOOL)isNudityDetectionEnabledForAnyOfServices:(id)a3;
+ (BOOL)isNudityDetectionEnabledForService:(id)a3;
+ (id)subscribeForAnalysisEnabledChanges:(id)a3;
- (USSensitivityAnalyzer)init;
- (USSensitivityAnalyzer)initWithQueue:(id)a3 madService:(id)a4;
- (void)analyzeImageFile:(id)a3 completionHandler:(id)a4;
- (void)analyzeImageWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 completionHandler:(id)a5;
- (void)analyzeVideoFile:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (void)analyzeVideoWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation USSensitivityAnalyzer

+ (BOOL)isCommunicationSafetyEnabled
{
  v2 = a1;
  v3 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(v2) = [v2 _isCommunicationSafetyEnabled:v3];

  return v2;
}

+ (BOOL)isNudityDetectionEnabled
{
  v2 = a1;
  v3 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(v2) = [v2 _isNudityDetectionEnabled:v3];

  return v2;
}

- (USSensitivityAnalyzer)init
{
  v3 = dispatch_queue_create("com.apple.UserSafety.USSensitivityAnalyzer", 0);
  v4 = [(USSensitivityAnalyzer *)self initWithQueue:v3];

  return v4;
}

- (USSensitivityAnalyzer)initWithQueue:(id)a3 madService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = USSensitivityAnalyzer;
  v9 = [(USSensitivityAnalyzer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_madService, a4);
      v11 = [objc_alloc(MEMORY[0x277CDC618]) initWithQueue:v7 madService:v8];
    }

    else
    {
      v12 = objc_opt_new();
      madService = v10->_madService;
      v10->_madService = v12;

      v11 = [objc_alloc(MEMORY[0x277CDC618]) initWithQueue:v7];
    }

    scsAnalyzer = v10->_scsAnalyzer;
    v10->_scsAnalyzer = v11;
  }

  return v10;
}

- (void)analyzeImageFile:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  scsAnalyzer = self->_scsAnalyzer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__USSensitivityAnalyzer_analyzeImageFile_completionHandler___block_invoke;
  v9[3] = &unk_279E15F38;
  v10 = v6;
  v8 = v6;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeImageFile:a3 completionHandler:v9];
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

- (void)analyzeVideoFile:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  scsAnalyzer = self->_scsAnalyzer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__USSensitivityAnalyzer_analyzeVideoFile_progressHandler_completionHandler___block_invoke;
  v17[3] = &unk_279E15F60;
  v18 = v8;
  v19 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__USSensitivityAnalyzer_analyzeVideoFile_progressHandler_completionHandler___block_invoke_2;
  v15[3] = &unk_279E15F38;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
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

- (void)analyzeImageWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  scsAnalyzer = self->_scsAnalyzer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__USSensitivityAnalyzer_analyzeImageWithLocalIdentifier_fromPhotoLibraryWithURL_completionHandler___block_invoke;
  v11[3] = &unk_279E15F38;
  v12 = v8;
  v10 = v8;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeImageWithLocalIdentifier:a3 fromPhotoLibraryWithURL:a4 completionHandler:v11];
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

- (void)analyzeVideoWithLocalIdentifier:(id)a3 fromPhotoLibraryWithURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  scsAnalyzer = self->_scsAnalyzer;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __115__USSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke;
  v19[3] = &unk_279E15F60;
  v20 = v10;
  v21 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __115__USSensitivityAnalyzer_analyzeVideoWithLocalIdentifier_fromPhotoLibraryWithURL_progressHandler_completionHandler___block_invoke_2;
  v17[3] = &unk_279E15F38;
  v18 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  [(SCSensitivityAnalyzer *)scsAnalyzer analyzeVideoWithLocalIdentifier:v15 fromPhotoLibraryWithURL:a4 progressHandler:v19 completionHandler:v17];
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
  v2 = a1;
  v3 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(v2) = [v2 _isAnalysisEnabled:v3];

  return v2;
}

+ (BOOL)isNudityDetectionEnabledForService:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(a1) = [a1 _isNudityDetectionEnabledForService:v4 scanningPolicy:v5];

  return a1;
}

+ (BOOL)isNudityDetectionEnabledForAnyOfServices:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "settingsReaderClass")];
  LOBYTE(a1) = [a1 _isNudityDetectionEnabledForAnyOfServices:v4 scanningPolicy:v5];

  return a1;
}

+ (id)subscribeForAnalysisEnabledChanges:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CDC618];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__USSensitivityAnalyzer_subscribeForAnalysisEnabledChanges___block_invoke;
  v9[3] = &unk_279E15F88;
  v10 = v3;
  v5 = v3;
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

+ (BOOL)_isAnalysisEnabled:(id)a3
{
  v4 = a3;
  if ([a1 _isCommunicationSafetyEnabled:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 _isNudityDetectionEnabled:v4];
  }

  return v5;
}

+ (BOOL)_isNudityDetectionEnabled:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "entitlementsReaderClass")];
  if (v5)
  {
    v6 = [a1 _isNudityDetectionEnabledForAnyOfServices:v5 scanningPolicy:v4];
  }

  else
  {
    v7 = [objc_msgSend(a1 "entitlementsReaderClass")];
    v6 = [a1 _isNudityDetectionEnabledForApplication:v7 scanningPolicy:v4];
  }

  return v6;
}

+ (BOOL)_isNudityDetectionEnabledForAnyOfServices:(id)a3 scanningPolicy:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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

        if ([a1 _isNudityDetectionEnabledForService:*(*(&v16 + 1) + 8 * i) scanningPolicy:{v7, v16}])
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

+ (BOOL)_isNudityDetectionEnabledForService:(id)a3 scanningPolicy:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 policy] == 1)
  {
    v7 = [v6 services];
    v8 = [v7 containsObject:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isNudityDetectionEnabledForApplication:(id)a3 scanningPolicy:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 policy] == 1)
  {
    v7 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v5];
    v8 = [v6 applications];
    v9 = [v8 containsObject:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end