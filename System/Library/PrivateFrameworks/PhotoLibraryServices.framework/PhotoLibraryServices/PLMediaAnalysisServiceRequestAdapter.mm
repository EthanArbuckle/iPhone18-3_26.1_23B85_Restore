@interface PLMediaAnalysisServiceRequestAdapter
+ (BOOL)mediaAnalysisIsBridgeVersionCompatible;
+ (id)currentCaptionGenerationVersion;
+ (id)currentMediaAnalysisImageVersion;
+ (id)currentMediaAnalysisVersion;
+ (id)currentOCRAlgorithmVersion;
+ (id)currentStickerConfidenceAlgorithmVersion;
+ (id)currentUnifiedEmbeddingVersion;
+ (id)currentVaAnalysisAlgorithmVersion;
+ (id)currentVaLocationAnalysisAlgorithmVersion;
+ (id)currentVisualSearchAlgorithmVersion;
+ (id)fetchImagePriority1MCEnableDateWithPhotoLibraryURL:(id)l;
+ (id)fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)l;
+ (id)mediaAnalysisCollectionThemeResultsKey;
+ (id)mediaAnalysisEmbeddingChangedVersion;
+ (id)mediaAnalysisFaceResultsKey;
+ (id)mediaAnalysisMiCaImageCaptionResultsKey;
+ (id)mediaAnalysisMiCaVideoCaptionResultsKey;
+ (id)mediaAnalysisMovieHighlightResultsKey;
+ (id)mediaAnalysisQualityKey;
+ (id)mediaAnalysisResultAttributesKey;
+ (id)mediaAnalysisResultCollectionThemeAttributeKey;
+ (id)mediaAnalysisResultCollectionThemeVersionAttributeKey;
+ (id)mediaAnalysisResultDurationKey;
+ (id)mediaAnalysisResultImageCaptionTextAttributeKey;
+ (id)mediaAnalysisResultPersonIDAttributeKey;
+ (id)mediaAnalysisResultStartKey;
+ (id)mediaAnalysisResultVideoCaptionPreferenceAttributeKey;
+ (id)mediaAnalysisResultVideoCaptionTextAttributeKey;
+ (id)mediaAnalysisResultsKey;
+ (id)mediaAnalysisVideoCaptionPreferenceResultsKey;
+ (id)mediaAnalyzerOptionCaptionWithHighlight;
+ (id)mediaAnalyzerOptionHighlightContexts;
+ (id)mediaAnalyzerOptionPersonIDWithHighlight;
+ (id)mediaAnalyzerOptionSearchQueryString;
+ (id)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l error:(id *)error;
+ (id)requestVUIndexURLForPhotoLibraryURL:(id)l error:(id *)error;
+ (int)queryImagePriority1MCEnableDate:(id *)date photoLibraryURL:(id)l error:(id *)error;
+ (int)queryProgressDetail:(id *)detail forPhotoLibraryURL:(id)l andTaskID:(unint64_t)d;
+ (int)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l completionHandler:(id)handler;
+ (int)queryVUIndexLastFullModeClusterDate:(id *)date photoLibraryURL:(id)l error:(id *)error;
+ (int)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)l completionHandler:(id)handler;
+ (int)requestVideoSafetyAnalysisForAssetWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestAssetCaptionsOfTypes:(unint64_t)types forAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestAssetHighlightCaptionsForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestClusterCacheValidationWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestCollectionThemeForAssetLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (int64_t)requestCollectionThemeVersionWithOptions:(id)options andCompletionHandler:(id)handler;
+ (int64_t)requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestMovieCurationForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestPersonPromoterStatusWithAdvancedFlag:(BOOL)flag photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestPetsAnalysisForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestQuickFaceIdentificationForPhotoLibraryURL:(id)l withOptions:(id)options andCompletionHandler:(id)handler;
+ (int64_t)requestRebuildPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestReclusterFacesWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestResetFaceClassificationModelForPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestResetFaceClusteringStateWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestResetPersons:(id)persons photoLibraryURL:(id)l completionHandler:(id)handler;
+ (int64_t)requestSceneProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (int64_t)requestSuggestedPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler;
+ (int64_t)requestVIPModelFilepathForPhotoLibraryURL:(id)l forModelType:(unint64_t)type andCompletionHandler:(id)handler;
+ (int64_t)requestVideoCaptionPreferenceForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (void)cancelRequest:(int64_t)request;
@end

@implementation PLMediaAnalysisServiceRequestAdapter

+ (id)currentUnifiedEmbeddingVersion
{
  v2 = MEMORY[0x1E696AD98];
  getUnifiedEmbeddingVersion = [getVCPMediaAnalyzerClass() getUnifiedEmbeddingVersion];

  return [v2 numberWithUnsignedInteger:getUnifiedEmbeddingVersion];
}

+ (id)currentVaLocationAnalysisAlgorithmVersion
{
  v2 = MEMORY[0x1E696AD98];
  getVCPPhotosPECProcessingVersion();

  return [v2 numberWithInt:v3];
}

+ (id)currentVaAnalysisAlgorithmVersion
{
  v2 = MEMORY[0x1E696AD98];
  getVCPPhotosPECProcessingVersion();

  return [v2 numberWithInt:v3];
}

+ (id)currentStickerConfidenceAlgorithmVersion
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getVCPPhotosVisualSearchProcessingVersionSymbolLoc_ptr;
  v11 = getVCPPhotosVisualSearchProcessingVersionSymbolLoc_ptr;
  if (!getVCPPhotosVisualSearchProcessingVersionSymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "VCPPhotosVisualSearchProcessingVersion");
    getVCPPhotosVisualSearchProcessingVersionSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithShort:(v2() >> 16)];

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int32_t getVCPPhotosVisualSearchProcessingVersion(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)currentOCRAlgorithmVersion
{
  v2 = MEMORY[0x1E696AD98];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getVCPPhotosOCRProcessingVersionSymbolLoc_ptr;
  v12 = getVCPPhotosOCRProcessingVersionSymbolLoc_ptr;
  if (!getVCPPhotosOCRProcessingVersionSymbolLoc_ptr)
  {
    v4 = MediaAnalysisLibrary_44795();
    v10[3] = dlsym(v4, "VCPPhotosOCRProcessingVersion");
    getVCPPhotosOCRProcessingVersionSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v5 = [v2 numberWithInt:*v3];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getVCPPhotosOCRProcessingVersion(void)"];
    [currentHandler handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)currentVisualSearchAlgorithmVersion
{
  v2 = MEMORY[0x1E696AD98];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getVCPPhotosVisualSearchAlgorithmVersionSymbolLoc_ptr;
  v12 = getVCPPhotosVisualSearchAlgorithmVersionSymbolLoc_ptr;
  if (!getVCPPhotosVisualSearchAlgorithmVersionSymbolLoc_ptr)
  {
    v4 = MediaAnalysisLibrary_44795();
    v10[3] = dlsym(v4, "VCPPhotosVisualSearchAlgorithmVersion");
    getVCPPhotosVisualSearchAlgorithmVersionSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v5 = [v2 numberWithInt:v3()];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int32_t getVCPPhotosVisualSearchAlgorithmVersion(void)"];
    [currentHandler handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:52 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)currentCaptionGenerationVersion
{
  v2 = MEMORY[0x1E696AD98];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getVCPPhotosCaptionProcessingVersionSymbolLoc_ptr;
  v12 = getVCPPhotosCaptionProcessingVersionSymbolLoc_ptr;
  if (!getVCPPhotosCaptionProcessingVersionSymbolLoc_ptr)
  {
    v4 = MediaAnalysisLibrary_44795();
    v10[3] = dlsym(v4, "VCPPhotosCaptionProcessingVersion");
    getVCPPhotosCaptionProcessingVersionSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v5 = [v2 numberWithInt:*v3];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getVCPPhotosCaptionProcessingVersion(void)"];
    [currentHandler handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)currentMediaAnalysisImageVersion
{
  v2 = MEMORY[0x1E696AD98];
  getMediaAnalysisVersion();

  return [v2 numberWithInt:v3];
}

+ (id)mediaAnalysisEmbeddingChangedVersion
{
  v2 = MEMORY[0x1E696AD98];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr_44823;
  v12 = getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr_44823;
  if (!getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr_44823)
  {
    v4 = MediaAnalysisLibrary_44795();
    v10[3] = dlsym(v4, "MediaAnalysisEmbeddingChangedVersion");
    getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr_44823 = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v3)
  {
    v5 = [v2 numberWithInt:*v3];

    return v5;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getMediaAnalysisEmbeddingChangedVersion(void)"];
    [currentHandler handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)currentMediaAnalysisVersion
{
  v2 = MEMORY[0x1E696AD98];
  getMediaAnalysisVersion();

  return [v2 numberWithInt:v3];
}

+ (int)queryProgressDetail:(id *)detail forPhotoLibraryURL:(id)l andTaskID:(unint64_t)d
{
  lCopy = l;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v9 = [objc_opt_class() queryProgressDetail:detail forPhotoLibraryURL:lCopy andTaskID:d];
  }

  else
  {
    v9 = -10000;
  }

  return v9;
}

+ (int64_t)requestQuickFaceIdentificationForPhotoLibraryURL:(id)l withOptions:(id)options andCompletionHandler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__PLMediaAnalysisServiceRequestAdapter_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = handlerCopy;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults BOOLForKey:@"DisableQuickFaceAnalysisRequests"];

  if (v13)
  {
    v14 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Not running Quick Face Analysis since default is set to disable", v18, 2u);
    }

    v15 = v11[2](v11);
  }

  else
  {
    sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
    if (objc_opt_respondsToSelector())
    {
      v15 = [sharedAnalysisService requestQuickFaceIdentificationForPhotoLibraryURL:lCopy withOptions:optionsCopy andCompletionHandler:v10];
    }

    else
    {
      v15 = v11[2](v11);
    }
  }

  return v15;
}

uint64_t __122__PLMediaAnalysisServiceRequestAdapter_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 0);
  }

  return -1;
}

+ (void)cancelRequest:(int64_t)request
{
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    [sharedAnalysisService cancelRequest:request];
  }
}

+ (int)queryImagePriority1MCEnableDate:(id *)date photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  if (date)
  {
    service = [getMADServiceClass() service];
    if (objc_opt_respondsToSelector())
    {
      v9 = [service queryImagePriority1MCEnableDate:date photoLibraryURL:lCopy error:error];
    }

    else
    {
      [MEMORY[0x1E695DF00] distantPast];
      *date = v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchImagePriority1MCEnableDateWithPhotoLibraryURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  lCopy = l;
  distantPast = [v3 distantPast];
  v17 = 0;
  v18 = distantPast;
  v6 = [PLMediaAnalysisServiceRequestAdapter queryImagePriority1MCEnableDate:&v18 photoLibraryURL:lCopy error:&v17];

  v7 = v18;
  v8 = v17;
  v9 = v8;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "+[PLMediaAnalysisServiceRequestAdapter(VisualUnderstandingRequests) fetchImagePriority1MCEnableDateWithPhotoLibraryURL:]";
      v21 = 1024;
      v22 = v6;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%s: Error fetching date when MC processing was ready. Return code: %d Error: %@", buf, 0x1Cu);
    }

LABEL_8:
    v12 = 0;
    goto LABEL_11;
  }

  distantPast2 = [MEMORY[0x1E695DF00] distantPast];

  if (v7 == distantPast2)
  {
    distantPast3 = [MEMORY[0x1E695DF00] distantPast];

    if (v7 == distantPast3)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "+[PLMediaAnalysisServiceRequestAdapter(VisualUnderstandingRequests) fetchImagePriority1MCEnableDateWithPhotoLibraryURL:]";
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%s: Date when MC processing was ready not found.", buf, 0xCu);
      }
    }

    goto LABEL_8;
  }

  v12 = v7;
LABEL_11:

  return v12;
}

+ (int)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__44949;
  v21 = __Block_byref_object_dispose__44950;
  service = [getMADServiceClass() service];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __142__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL_completionHandler___block_invoke;
  v14 = &unk_1E756CAC0;
  v7 = handlerCopy;
  v15 = v7;
  v16 = &v17;
  v8 = _Block_copy(&v11);
  v9 = [v18[5] queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:lCopy completionHandler:{v8, v11, v12, v13, v14}];

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __142__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (int)queryVUIndexLastFullModeClusterDate:(id *)date photoLibraryURL:(id)l error:(id *)error
{
  if (!date)
  {
    return 0;
  }

  lCopy = l;
  service = [getMADServiceClass() service];
  LODWORD(error) = [service queryVUIndexLastFullModeClusterDate:date photoLibraryURL:lCopy error:error];

  return error;
}

+ (id)fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  lCopy = l;
  distantPast = [v3 distantPast];
  v17 = 0;
  v18 = distantPast;
  v6 = [PLMediaAnalysisServiceRequestAdapter queryVUIndexLastFullModeClusterDate:&v18 photoLibraryURL:lCopy error:&v17];

  v7 = v18;
  v8 = v17;
  v9 = v8;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "+[PLMediaAnalysisServiceRequestAdapter(VisualUnderstandingRequests) fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL:]";
      v21 = 1024;
      v22 = v6;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%s: Error fetching VU index last cluster date. Return code: %d Error: %@", buf, 0x1Cu);
    }

LABEL_8:
    v12 = 0;
    goto LABEL_11;
  }

  distantPast2 = [MEMORY[0x1E695DF00] distantPast];

  if (v7 == distantPast2)
  {
    distantPast3 = [MEMORY[0x1E695DF00] distantPast];

    if (v7 == distantPast3)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "+[PLMediaAnalysisServiceRequestAdapter(VisualUnderstandingRequests) fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL:]";
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%s: VU index last cluster date not found.", buf, 0xCu);
      }
    }

    goto LABEL_8;
  }

  v12 = v7;
LABEL_11:

  return v12;
}

+ (int)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__44949;
  v22 = __Block_byref_object_dispose__44950;
  service = [getMADServiceClass() service];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __133__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke;
  v15 = &unk_1E756CA98;
  v9 = handlerCopy;
  v16 = v9;
  v17 = &v18;
  v10 = _Block_copy(&v12);
  LODWORD(type) = [v19[5] queryVUIndexAssetCountForType:type photoLibraryURL:lCopy completionHandler:{v10, v12, v13, v14, v15}];

  _Block_object_dispose(&v18, 8);
  return type;
}

void __133__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (id)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  service = [getMADServiceClass() service];
  v15 = 0;
  v9 = [service queryVUIndexAssetCountForType:type photoLibraryURL:lCopy error:&v15];

  v10 = v15;
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  }

  return v13;
}

+ (id)requestVUIndexURLForPhotoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  service = [getMADServiceClass() service];
  v7 = [service requestVUIndexURLForPhotoLibraryURL:lCopy error:error];

  return v7;
}

+ (int)requestVideoSafetyAnalysisForAssetWithLocalIdentifier:(id)identifier photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v13 = getMADVideoSafetyClassificationRequestClass_softClass;
  v24 = getMADVideoSafetyClassificationRequestClass_softClass;
  if (!getMADVideoSafetyClassificationRequestClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getMADVideoSafetyClassificationRequestClass_block_invoke;
    v20[3] = &unk_1E7577EA0;
    v20[4] = &v21;
    __getMADVideoSafetyClassificationRequestClass_block_invoke(v20);
    v13 = v22[3];
  }

  v14 = v13;
  _Block_object_dispose(&v21, 8);
  v15 = objc_alloc_init(v13);
  service = [getMADServiceClass() service];
  v25[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v18 = [service performRequests:v17 assetLocalIdentifier:identifierCopy photoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v18;
}

+ (int64_t)requestPetsAnalysisForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  if (options)
  {
    completionHandlerCopy = completionHandler;
    handlerCopy = handler;
    assetsCopy = assets;
    v13 = [options mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695DF90];
    completionHandlerCopy2 = completionHandler;
    handlerCopy2 = handler;
    assetsCopy2 = assets;
    v13 = objc_alloc_init(v14);
  }

  v18 = v13;
  v19 = getVCPMediaAnalysisService_AllowOnDemandOption();
  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v19];

  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v21 = [sharedAnalysisService requestAnalysisTypes:0x20000 forAssets:assets withOptions:v18 progressHandler:handler andCompletionHandler:completionHandler];

  return v21;
}

+ (int64_t)requestResetPersons:(id)persons photoLibraryURL:(id)l completionHandler:(id)handler
{
  personsCopy = persons;
  lCopy = l;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestResetPersons_photoLibraryURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = handlerCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [sharedAnalysisService requestResetPersons:personsCopy forPhotoLibraryURL:lCopy completionHandler:v10];
  }

  else
  {
    v13 = v11[2](v11);
  }

  return v13;
}

uint64_t __128__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestResetPersons_photoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 1, 0);
  }

  return -1;
}

+ (int64_t)requestPersonPromoterStatusWithAdvancedFlag:(BOOL)flag photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  flagCopy = flag;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __168__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v12 = completionHandlerCopy;
  v18 = v12;
  v13 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v15 = [sharedAnalysisService requestPersonPromoterStatusWithAdvancedFlag:flagCopy photoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:v12];
  }

  else
  {
    v15 = v13[2](v13);
  }

  return v15;
}

uint64_t __168__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, MEMORY[0x1E695E0F8], 0);
  }

  return -1;
}

+ (int64_t)requestResetFaceClassificationModelForPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __162__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = completionHandlerCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [sharedAnalysisService requestResetFaceClassificationModelForPhotoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:v10];
  }

  else
  {
    v13 = v11[2](v11);
  }

  return v13;
}

uint64_t __162__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 1, 0);
  }

  return -1;
}

+ (int64_t)requestProcessingTypes:(unint64_t)types forAssetsWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  lCopy = l;
  identifiersCopy = identifiers;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  LODWORD(types) = [sharedAnalysisService requestProcessingTypes:types forAssetsWithLocalIdentifiers:identifiersCopy fromPhotoLibraryWithURL:lCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return types;
}

+ (int64_t)requestSceneProcessingForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  optionsCopy = options;
  assetsCopy = assets;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v14 = [sharedAnalysisService requestSceneProcessingForAssets:assetsCopy withOptions:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v14;
}

+ (int64_t)requestVIPModelFilepathForPhotoLibraryURL:(id)l forModelType:(unint64_t)type andCompletionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  LODWORD(type) = [sharedAnalysisService requestVIPModelFilepathForPhotoLibraryURL:lCopy forModelType:type completionHandler:handlerCopy];

  return type;
}

+ (int64_t)requestMovieCurationForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  if (options)
  {
    completionHandlerCopy = completionHandler;
    handlerCopy = handler;
    assetsCopy = assets;
    v13 = [options mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695DF90];
    completionHandlerCopy2 = completionHandler;
    handlerCopy2 = handler;
    assetsCopy2 = assets;
    v13 = objc_alloc_init(v14);
  }

  v18 = v13;
  v19 = getVCPMediaAnalysisService_AllowOnDemandOption();
  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v19];

  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v21 = [sharedAnalysisService requestAnalysisTypes:0x40000 forAssets:assets withOptions:v18 progressHandler:handler andCompletionHandler:completionHandler];

  return v21;
}

+ (BOOL)mediaAnalysisIsBridgeVersionCompatible
{
  VCPMediaAnalyzerClass = getVCPMediaAnalyzerClass();

  return [VCPMediaAnalyzerClass isBridgeVersionCompatible];
}

+ (id)mediaAnalysisResultCollectionThemeVersionAttributeKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultCollectionThemeVersionAttributeKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultCollectionThemeVersionAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultCollectionThemeVersionAttributeKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultCollectionThemeVersionAttributeKey");
    getMediaAnalysisResultCollectionThemeVersionAttributeKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultCollectionThemeVersionAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:74 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultCollectionThemeAttributeKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultCollectionThemeAttributeKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultCollectionThemeAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultCollectionThemeAttributeKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultCollectionThemeAttributeKey");
    getMediaAnalysisResultCollectionThemeAttributeKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultCollectionThemeAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:73 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisCollectionThemeResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisCollectionThemeResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisCollectionThemeResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisCollectionThemeResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisCollectionThemeResultsKey");
    getMediaAnalysisCollectionThemeResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisCollectionThemeResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:72 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestCollectionThemeVersionWithOptions:(id)options andCompletionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v8 = [sharedAnalysisService requestCollectionThemeVersionWithOptions:optionsCopy andCompletionHandler:handlerCopy];

  return v8;
}

+ (int64_t)requestCollectionThemeForAssetLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l withOptions:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  optionsCopy = options;
  lCopy = l;
  identifiersCopy = identifiers;
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v17 = [sharedAnalysisService requestCollectionThemeForAssetsWithLocalIdentifiers:identifiersCopy fromPhotoLibraryWithURL:lCopy withOptions:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v17;
}

+ (int64_t)requestRebuildPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __154__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v13 = completionHandlerCopy;
  v19 = v13;
  v14 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v16 = [sharedAnalysisService requestRebuildPersonsWithLocalIdentifiers:identifiersCopy photoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:v13];
  }

  else
  {
    v16 = v14[2](v14);
  }

  return v16;
}

uint64_t __154__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 1, 0);
  }

  return -1;
}

+ (int64_t)requestReclusterFacesWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = completionHandlerCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [sharedAnalysisService requestReclusterFacesWithPhotoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:v10];
  }

  else
  {
    v13 = v11[2](v11);
  }

  return v13;
}

uint64_t __137__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 1, 0);
  }

  return -1;
}

+ (int64_t)requestResetFaceClusteringStateWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = completionHandlerCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [sharedAnalysisService requestResetFaceClusteringStateWithPhotoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:v10];
  }

  else
  {
    v13 = v11[2](v11);
  }

  return v13;
}

uint64_t __147__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 1, 0);
  }

  return -1;
}

+ (int64_t)requestClusterCacheValidationWithPhotoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = completionHandlerCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [sharedAnalysisService requestClusterCacheValidationWithPhotoLibraryURL:lCopy progressHandler:handlerCopy completionHandler:v10];
  }

  else
  {
    v13 = v11[2](v11);
  }

  return v13;
}

uint64_t __145__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, MEMORY[0x1E695E0F8], 0);
  }

  return -1;
}

+ (int64_t)requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler
{
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v13 = completionHandlerCopy;
  v19 = v13;
  v14 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v16 = [sharedAnalysisService requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:identifiersCopy photoLibraryURL:lCopy progessHandler:handlerCopy completionHandler:v13];
  }

  else
  {
    v16 = v14[2](v14);
  }

  return v16;
}

uint64_t __175__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, MEMORY[0x1E695E0F0], 0);
  }

  return -1;
}

+ (int64_t)requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler
{
  updateCopy = update;
  identifiersCopy = identifiers;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __176__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v15 = completionHandlerCopy;
  v21 = v15;
  v16 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v18 = [sharedAnalysisService requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:identifiersCopy forceUpdate:updateCopy photoLibraryURL:lCopy progessHandler:handlerCopy completionHandler:v15];
  }

  else
  {
    v18 = v16[2](v16);
  }

  return v18;
}

uint64_t __176__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 1, 0);
  }

  return -1;
}

+ (int64_t)requestSuggestedPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions photoLibraryURL:(id)l progessHandler:(id)handler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __226__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v19 = completionHandlerCopy;
  v25 = v19;
  v20 = _Block_copy(aBlock);
  sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v22 = [sharedAnalysisService requestSuggestedPersonsForPersonWithLocalIdentifier:identifierCopy toBeConfirmedPersonSuggestions:suggestionsCopy toBeRejectedPersonSuggestions:personSuggestionsCopy photoLibraryURL:lCopy progessHandler:handlerCopy completionHandler:v19];
  }

  else
  {
    v22 = v20[2](v20);
  }

  return v22;
}

uint64_t __226__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, MEMORY[0x1E695E0F0], 0);
  }

  return -1;
}

+ (id)mediaAnalyzerOptionPersonIDWithHighlight
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getVCPMediaAnalyzerOption_PersonIDWithHighlightSymbolLoc_ptr;
  v11 = getVCPMediaAnalyzerOption_PersonIDWithHighlightSymbolLoc_ptr;
  if (!getVCPMediaAnalyzerOption_PersonIDWithHighlightSymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "VCPMediaAnalyzerOption_PersonIDWithHighlight");
    getVCPMediaAnalyzerOption_PersonIDWithHighlightSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_PersonIDWithHighlight(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:46 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalyzerOptionCaptionWithHighlight
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getVCPMediaAnalyzerOption_CaptionWithHighlightSymbolLoc_ptr;
  v11 = getVCPMediaAnalyzerOption_CaptionWithHighlightSymbolLoc_ptr;
  if (!getVCPMediaAnalyzerOption_CaptionWithHighlightSymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "VCPMediaAnalyzerOption_CaptionWithHighlight");
    getVCPMediaAnalyzerOption_CaptionWithHighlightSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_CaptionWithHighlight(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:45 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalyzerOptionHighlightContexts
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getVCPMediaAnalyzerOption_HighlightContextsSymbolLoc_ptr;
  v11 = getVCPMediaAnalyzerOption_HighlightContextsSymbolLoc_ptr;
  if (!getVCPMediaAnalyzerOption_HighlightContextsSymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "VCPMediaAnalyzerOption_HighlightContexts");
    getVCPMediaAnalyzerOption_HighlightContextsSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_HighlightContexts(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:44 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalyzerOptionSearchQueryString
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getVCPMediaAnalyzerOption_SearchQueryStringSymbolLoc_ptr;
  v11 = getVCPMediaAnalyzerOption_SearchQueryStringSymbolLoc_ptr;
  if (!getVCPMediaAnalyzerOption_SearchQueryStringSymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "VCPMediaAnalyzerOption_SearchQueryString");
    getVCPMediaAnalyzerOption_SearchQueryStringSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_SearchQueryString(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultsKey");
    getMediaAnalysisResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:64 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisQualityKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisQualityKeySymbolLoc_ptr;
  v11 = getMediaAnalysisQualityKeySymbolLoc_ptr;
  if (!getMediaAnalysisQualityKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisQualityKey");
    getMediaAnalysisQualityKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisQualityKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultDurationKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultDurationKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultDurationKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultDurationKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultDurationKey");
    getMediaAnalysisResultDurationKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultDurationKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:62 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultStartKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultStartKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultStartKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultStartKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultStartKey");
    getMediaAnalysisResultStartKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultStartKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:61 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisMovieHighlightResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisMovieHighlightResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisMovieHighlightResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisMovieHighlightResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisMovieHighlightResultsKey");
    getMediaAnalysisMovieHighlightResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisMovieHighlightResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestAssetHighlightCaptionsForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  optionsCopy = options;
  assetsCopy = assets;
  sharedMediaAnalyzer = [getVCPMediaAnalyzerClass() sharedMediaAnalyzer];
  v14 = [sharedMediaAnalyzer requestAnalysis:0x40000 forAssets:assetsCopy withOptions:optionsCopy andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v14;
}

+ (id)mediaAnalysisResultPersonIDAttributeKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultPersonIDAttributeKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultPersonIDAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultPersonIDAttributeKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultPersonIDAttributeKey");
    getMediaAnalysisResultPersonIDAttributeKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultPersonIDAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:70 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisFaceResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisFaceResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisFaceResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisFaceResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisFaceResultsKey");
    getMediaAnalysisFaceResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisFaceResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:69 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultVideoCaptionTextAttributeKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultVideoCaptionTextAttributeKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultVideoCaptionTextAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultVideoCaptionTextAttributeKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultVideoCaptionTextAttributeKey");
    getMediaAnalysisResultVideoCaptionTextAttributeKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultVideoCaptionTextAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:68 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisMiCaVideoCaptionResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisMiCaVideoCaptionResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisMiCaVideoCaptionResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisMiCaVideoCaptionResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisMiCaVideoCaptionResultsKey");
    getMediaAnalysisMiCaVideoCaptionResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisMiCaVideoCaptionResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultImageCaptionTextAttributeKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultImageCaptionTextAttributeKey");
    getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultImageCaptionTextAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:67 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultAttributesKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultAttributesKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultAttributesKey");
    getMediaAnalysisResultAttributesKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultAttributesKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisMiCaImageCaptionResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisMiCaImageCaptionResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisMiCaImageCaptionResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisMiCaImageCaptionResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisMiCaImageCaptionResultsKey");
    getMediaAnalysisMiCaImageCaptionResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisMiCaImageCaptionResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:55 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisResultVideoCaptionPreferenceAttributeKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisResultVideoCaptionPreferenceAttributeKeySymbolLoc_ptr;
  v11 = getMediaAnalysisResultVideoCaptionPreferenceAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultVideoCaptionPreferenceAttributeKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisResultVideoCaptionPreferenceAttributeKey");
    getMediaAnalysisResultVideoCaptionPreferenceAttributeKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultVideoCaptionPreferenceAttributeKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:58 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)mediaAnalysisVideoCaptionPreferenceResultsKey
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMediaAnalysisVideoCaptionPreferenceResultsKeySymbolLoc_ptr;
  v11 = getMediaAnalysisVideoCaptionPreferenceResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisVideoCaptionPreferenceResultsKeySymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary_44795();
    v9[3] = dlsym(v3, "MediaAnalysisVideoCaptionPreferenceResultsKey");
    getMediaAnalysisVideoCaptionPreferenceResultsKeySymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisVideoCaptionPreferenceResultsKey(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestVideoCaptionPreferenceForAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (optionsCopy)
  {
    v14 = [optionsCopy mutableCopy];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v15 = v14;
  v16 = getVCPMediaAnalysisService_AllowOnDemandOption();
  v17 = MEMORY[0x1E695E110];
  [v15 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v16];

  v18 = getVCPMediaAnalysisService_AllowStreamingOption();
  [v15 setObject:v17 forKeyedSubscript:v18];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v19 = getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr;
  v29 = getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr;
  if (!getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr)
  {
    v20 = MediaAnalysisLibrary_44795();
    v27[3] = dlsym(v20, "VCPMediaAnalysisService_InProcessOption");
    getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr = v27[3];
    v19 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v19)
  {
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v19];
    mediaAnalysisTypeCaptionVideo = [self mediaAnalysisTypeCaptionVideo];
    if (mediaAnalysisTypeCaptionVideo)
    {
      sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
      mediaAnalysisTypeCaptionVideo = [sharedAnalysisService requestAnalysisTypes:mediaAnalysisTypeCaptionVideo forAssets:assetsCopy withOptions:v15 progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
    }

    else
    {
      (*(completionHandlerCopy + 2))(completionHandlerCopy, MEMORY[0x1E695E0F8], 0);
    }

    return mediaAnalysisTypeCaptionVideo;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_InProcessOption(void)"];
    [currentHandler handleFailureInFunction:v25 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestAssetCaptionsOfTypes:(unint64_t)types forAssets:(id)assets withOptions:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  typesCopy = types;
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (optionsCopy)
  {
    v16 = [optionsCopy mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = v16;
  v18 = getVCPMediaAnalysisService_AllowOnDemandOption();
  v19 = MEMORY[0x1E695E118];
  [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v18];

  v20 = getVCPMediaAnalysisService_AllowStreamingOption();
  [v17 setObject:v19 forKeyedSubscript:v20];

  if (typesCopy)
  {
    mediaAnalysisTypeCaptionImage = [self mediaAnalysisTypeCaptionImage];
    if ((typesCopy & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  mediaAnalysisTypeCaptionImage = 0;
  if ((typesCopy & 2) != 0)
  {
LABEL_8:
    mediaAnalysisTypeCaptionImage |= [self mediaAnalysisTypeCaptionVideo];
  }

LABEL_9:
  if (mediaAnalysisTypeCaptionImage)
  {
    sharedAnalysisService = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
    v23 = [sharedAnalysisService requestAnalysisTypes:mediaAnalysisTypeCaptionImage forAssets:assetsCopy withOptions:v17 progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  }

  else
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, MEMORY[0x1E695E0F8], 0);
    v23 = 0;
  }

  return v23;
}

@end