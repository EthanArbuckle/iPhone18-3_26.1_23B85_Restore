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
+ (id)fetchImagePriority1MCEnableDateWithPhotoLibraryURL:(id)a3;
+ (id)fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)a3;
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
+ (id)queryVUIndexAssetCountForType:(int64_t)a3 photoLibraryURL:(id)a4 error:(id *)a5;
+ (id)requestVUIndexURLForPhotoLibraryURL:(id)a3 error:(id *)a4;
+ (int)queryImagePriority1MCEnableDate:(id *)a3 photoLibraryURL:(id)a4 error:(id *)a5;
+ (int)queryProgressDetail:(id *)a3 forPhotoLibraryURL:(id)a4 andTaskID:(unint64_t)a5;
+ (int)queryVUIndexAssetCountForType:(int64_t)a3 photoLibraryURL:(id)a4 completionHandler:(id)a5;
+ (int)queryVUIndexLastFullModeClusterDate:(id *)a3 photoLibraryURL:(id)a4 error:(id *)a5;
+ (int)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)a3 completionHandler:(id)a4;
+ (int)requestVideoSafetyAnalysisForAssetWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestAssetCaptionsOfTypes:(unint64_t)a3 forAssets:(id)a4 withOptions:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
+ (int64_t)requestAssetHighlightCaptionsForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestClusterCacheValidationWithPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
+ (int64_t)requestCollectionThemeForAssetLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withOptions:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7;
+ (int64_t)requestCollectionThemeVersionWithOptions:(id)a3 andCompletionHandler:(id)a4;
+ (int64_t)requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)a3 photoLibraryURL:(id)a4 progessHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestMovieCurationForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestPersonPromoterStatusWithAdvancedFlag:(BOOL)a3 photoLibraryURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestPetsAnalysisForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestProcessingTypes:(unint64_t)a3 forAssetsWithLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
+ (int64_t)requestQuickFaceIdentificationForPhotoLibraryURL:(id)a3 withOptions:(id)a4 andCompletionHandler:(id)a5;
+ (int64_t)requestRebuildPersonsWithLocalIdentifiers:(id)a3 photoLibraryURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (int64_t)requestReclusterFacesWithPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
+ (int64_t)requestResetFaceClassificationModelForPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
+ (int64_t)requestResetFaceClusteringStateWithPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
+ (int64_t)requestResetPersons:(id)a3 photoLibraryURL:(id)a4 completionHandler:(id)a5;
+ (int64_t)requestSceneProcessingForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
+ (int64_t)requestSuggestedPersonsForPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 photoLibraryURL:(id)a6 progessHandler:(id)a7 completionHandler:(id)a8;
+ (int64_t)requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:(id)a3 forceUpdate:(BOOL)a4 photoLibraryURL:(id)a5 progessHandler:(id)a6 completionHandler:(id)a7;
+ (int64_t)requestVIPModelFilepathForPhotoLibraryURL:(id)a3 forModelType:(unint64_t)a4 andCompletionHandler:(id)a5;
+ (int64_t)requestVideoCaptionPreferenceForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
+ (void)cancelRequest:(int64_t)a3;
@end

@implementation PLMediaAnalysisServiceRequestAdapter

+ (id)currentUnifiedEmbeddingVersion
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [getVCPMediaAnalyzerClass() getUnifiedEmbeddingVersion];

  return [v2 numberWithUnsignedInteger:v3];
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int32_t getVCPPhotosVisualSearchProcessingVersion(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:53 description:{@"%s", dlerror()}];

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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getVCPPhotosOCRProcessingVersion(void)"];
    [v7 handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:49 description:{@"%s", dlerror()}];

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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int32_t getVCPPhotosVisualSearchAlgorithmVersion(void)"];
    [v7 handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:52 description:{@"%s", dlerror()}];

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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getVCPPhotosCaptionProcessingVersion(void)"];
    [v7 handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:51 description:{@"%s", dlerror()}];

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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getMediaAnalysisEmbeddingChangedVersion(void)"];
    [v7 handleFailureInFunction:v8 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:48 description:{@"%s", dlerror()}];

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

+ (int)queryProgressDetail:(id *)a3 forPhotoLibraryURL:(id)a4 andTaskID:(unint64_t)a5
{
  v7 = a4;
  v8 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v9 = [objc_opt_class() queryProgressDetail:a3 forPhotoLibraryURL:v7 andTaskID:a5];
  }

  else
  {
    v9 = -10000;
  }

  return v9;
}

+ (int64_t)requestQuickFaceIdentificationForPhotoLibraryURL:(id)a3 withOptions:(id)a4 andCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__PLMediaAnalysisServiceRequestAdapter_requestQuickFaceIdentificationForPhotoLibraryURL_withOptions_andCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = v9;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [v12 BOOLForKey:@"DisableQuickFaceAnalysisRequests"];

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
    v16 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v16 requestQuickFaceIdentificationForPhotoLibraryURL:v7 withOptions:v8 andCompletionHandler:v10];
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

+ (void)cancelRequest:(int64_t)a3
{
  v4 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    [v4 cancelRequest:a3];
  }
}

+ (int)queryImagePriority1MCEnableDate:(id *)a3 photoLibraryURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (a3)
  {
    v8 = [getMADServiceClass() service];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 queryImagePriority1MCEnableDate:a3 photoLibraryURL:v7 error:a5];
    }

    else
    {
      [MEMORY[0x1E695DF00] distantPast];
      *a3 = v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchImagePriority1MCEnableDateWithPhotoLibraryURL:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 distantPast];
  v17 = 0;
  v18 = v5;
  v6 = [PLMediaAnalysisServiceRequestAdapter queryImagePriority1MCEnableDate:&v18 photoLibraryURL:v4 error:&v17];

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

  v13 = [MEMORY[0x1E695DF00] distantPast];

  if (v7 == v13)
  {
    v15 = [MEMORY[0x1E695DF00] distantPast];

    if (v7 == v15)
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

+ (int)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__44949;
  v21 = __Block_byref_object_dispose__44950;
  v22 = [getMADServiceClass() service];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __142__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL_completionHandler___block_invoke;
  v14 = &unk_1E756CAC0;
  v7 = v6;
  v15 = v7;
  v16 = &v17;
  v8 = _Block_copy(&v11);
  v9 = [v18[5] queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:v5 completionHandler:{v8, v11, v12, v13, v14}];

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

+ (int)queryVUIndexLastFullModeClusterDate:(id *)a3 photoLibraryURL:(id)a4 error:(id *)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = a4;
  v8 = [getMADServiceClass() service];
  LODWORD(a5) = [v8 queryVUIndexLastFullModeClusterDate:a3 photoLibraryURL:v7 error:a5];

  return a5;
}

+ (id)fetchVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 distantPast];
  v17 = 0;
  v18 = v5;
  v6 = [PLMediaAnalysisServiceRequestAdapter queryVUIndexLastFullModeClusterDate:&v18 photoLibraryURL:v4 error:&v17];

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

  v13 = [MEMORY[0x1E695DF00] distantPast];

  if (v7 == v13)
  {
    v15 = [MEMORY[0x1E695DF00] distantPast];

    if (v7 == v15)
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

+ (int)queryVUIndexAssetCountForType:(int64_t)a3 photoLibraryURL:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__44949;
  v22 = __Block_byref_object_dispose__44950;
  v23 = [getMADServiceClass() service];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __133__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke;
  v15 = &unk_1E756CA98;
  v9 = v8;
  v16 = v9;
  v17 = &v18;
  v10 = _Block_copy(&v12);
  LODWORD(a3) = [v19[5] queryVUIndexAssetCountForType:a3 photoLibraryURL:v7 completionHandler:{v10, v12, v13, v14, v15}];

  _Block_object_dispose(&v18, 8);
  return a3;
}

void __133__PLMediaAnalysisServiceRequestAdapter_VisualUnderstandingRequests__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (id)queryVUIndexAssetCountForType:(int64_t)a3 photoLibraryURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [getMADServiceClass() service];
  v15 = 0;
  v9 = [v8 queryVUIndexAssetCountForType:a3 photoLibraryURL:v7 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v10)
  {
    if (a5)
    {
      v12 = v10;
      v13 = 0;
      *a5 = v11;
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

+ (id)requestVUIndexURLForPhotoLibraryURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [getMADServiceClass() service];
  v7 = [v6 requestVUIndexURLForPhotoLibraryURL:v5 error:a4];

  return v7;
}

+ (int)requestVideoSafetyAnalysisForAssetWithLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
  v16 = [getMADServiceClass() service];
  v25[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v18 = [v16 performRequests:v17 assetLocalIdentifier:v9 photoLibraryURL:v10 progressHandler:v11 completionHandler:v12];

  return v18;
}

+ (int64_t)requestPetsAnalysisForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  if (a4)
  {
    v10 = a6;
    v11 = a5;
    v12 = a3;
    v13 = [a4 mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695DF90];
    v15 = a6;
    v16 = a5;
    v17 = a3;
    v13 = objc_alloc_init(v14);
  }

  v18 = v13;
  v19 = getVCPMediaAnalysisService_AllowOnDemandOption();
  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v19];

  v20 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v21 = [v20 requestAnalysisTypes:0x20000 forAssets:a3 withOptions:v18 progressHandler:a5 andCompletionHandler:a6];

  return v21;
}

+ (int64_t)requestResetPersons:(id)a3 photoLibraryURL:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestResetPersons_photoLibraryURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = v9;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 requestResetPersons:v7 forPhotoLibraryURL:v8 completionHandler:v10];
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

+ (int64_t)requestPersonPromoterStatusWithAdvancedFlag:(BOOL)a3 photoLibraryURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __168__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestPersonPromoterStatusWithAdvancedFlag_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v12 = v11;
  v18 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 requestPersonPromoterStatusWithAdvancedFlag:v8 photoLibraryURL:v9 progressHandler:v10 completionHandler:v12];
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

+ (int64_t)requestResetFaceClassificationModelForPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __162__PLMediaAnalysisServiceRequestAdapter_PersonBuilderAndPromoterRequests__requestResetFaceClassificationModelForPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = v9;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 requestResetFaceClassificationModelForPhotoLibraryURL:v7 progressHandler:v8 completionHandler:v10];
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

+ (int64_t)requestProcessingTypes:(unint64_t)a3 forAssetsWithLocalIdentifiers:(id)a4 fromPhotoLibraryWithURL:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  LODWORD(a3) = [v15 requestProcessingTypes:a3 forAssetsWithLocalIdentifiers:v14 fromPhotoLibraryWithURL:v13 progressHandler:v12 completionHandler:v11];

  return a3;
}

+ (int64_t)requestSceneProcessingForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v14 = [v13 requestSceneProcessingForAssets:v12 withOptions:v11 progressHandler:v10 andCompletionHandler:v9];

  return v14;
}

+ (int64_t)requestVIPModelFilepathForPhotoLibraryURL:(id)a3 forModelType:(unint64_t)a4 andCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  LODWORD(a4) = [v9 requestVIPModelFilepathForPhotoLibraryURL:v8 forModelType:a4 completionHandler:v7];

  return a4;
}

+ (int64_t)requestMovieCurationForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  if (a4)
  {
    v10 = a6;
    v11 = a5;
    v12 = a3;
    v13 = [a4 mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x1E695DF90];
    v15 = a6;
    v16 = a5;
    v17 = a3;
    v13 = objc_alloc_init(v14);
  }

  v18 = v13;
  v19 = getVCPMediaAnalysisService_AllowOnDemandOption();
  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v19];

  v20 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v21 = [v20 requestAnalysisTypes:0x40000 forAssets:a3 withOptions:v18 progressHandler:a5 andCompletionHandler:a6];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultCollectionThemeVersionAttributeKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:74 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultCollectionThemeAttributeKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:73 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisCollectionThemeResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:72 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestCollectionThemeVersionWithOptions:(id)a3 andCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v8 = [v7 requestCollectionThemeVersionWithOptions:v6 andCompletionHandler:v5];

  return v8;
}

+ (int64_t)requestCollectionThemeForAssetLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withOptions:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  v17 = [v16 requestCollectionThemeForAssetsWithLocalIdentifiers:v15 fromPhotoLibraryWithURL:v14 withOptions:v13 progressHandler:v12 andCompletionHandler:v11];

  return v17;
}

+ (int64_t)requestRebuildPersonsWithLocalIdentifiers:(id)a3 photoLibraryURL:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __154__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestRebuildPersonsWithLocalIdentifiers_photoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v13 = v12;
  v19 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 requestRebuildPersonsWithLocalIdentifiers:v9 photoLibraryURL:v10 progressHandler:v11 completionHandler:v13];
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

+ (int64_t)requestReclusterFacesWithPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestReclusterFacesWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = v9;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 requestReclusterFacesWithPhotoLibraryURL:v7 progressHandler:v8 completionHandler:v10];
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

+ (int64_t)requestResetFaceClusteringStateWithPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestResetFaceClusteringStateWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = v9;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 requestResetFaceClusteringStateWithPhotoLibraryURL:v7 progressHandler:v8 completionHandler:v10];
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

+ (int64_t)requestClusterCacheValidationWithPhotoLibraryURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __145__PLMediaAnalysisServiceRequestAdapter_InternalToolRequests__requestClusterCacheValidationWithPhotoLibraryURL_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v10 = v9;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 requestClusterCacheValidationWithPhotoLibraryURL:v7 progressHandler:v8 completionHandler:v10];
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

+ (int64_t)requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)a3 photoLibraryURL:(id)a4 progessHandler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v13 = v12;
  v19 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 requestFaceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:v9 photoLibraryURL:v10 progessHandler:v11 completionHandler:v13];
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

+ (int64_t)requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:(id)a3 forceUpdate:(BOOL)a4 photoLibraryURL:(id)a5 progessHandler:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __176__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestUpdateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v15 = v14;
  v21 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v18 = [v17 requestUpdateKeyFacesOfPersonsWithLocalIdentifiers:v11 forceUpdate:v10 photoLibraryURL:v12 progessHandler:v13 completionHandler:v15];
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

+ (int64_t)requestSuggestedPersonsForPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 photoLibraryURL:(id)a6 progessHandler:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __226__PLMediaAnalysisServiceRequestAdapter_FaceSuggestionRequests__requestSuggestedPersonsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_photoLibraryURL_progessHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E756CA70;
  v19 = v18;
  v25 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
  if (objc_opt_respondsToSelector())
  {
    v22 = [v21 requestSuggestedPersonsForPersonWithLocalIdentifier:v13 toBeConfirmedPersonSuggestions:v14 toBeRejectedPersonSuggestions:v15 photoLibraryURL:v16 progessHandler:v17 completionHandler:v19];
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_PersonIDWithHighlight(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:46 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_CaptionWithHighlight(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:45 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_HighlightContexts(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:44 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalyzerOption_SearchQueryString(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:43 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:64 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisQualityKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:63 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultDurationKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:62 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultStartKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:61 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisMovieHighlightResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:60 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestAssetHighlightCaptionsForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [getVCPMediaAnalyzerClass() sharedMediaAnalyzer];
  v14 = [v13 requestAnalysis:0x40000 forAssets:v12 withOptions:v11 andProgressHandler:v10 andCompletionHandler:v9];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultPersonIDAttributeKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:70 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisFaceResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:69 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultVideoCaptionTextAttributeKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:68 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisMiCaVideoCaptionResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:56 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultImageCaptionTextAttributeKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:67 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultAttributesKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:59 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisMiCaImageCaptionResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:55 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisResultVideoCaptionPreferenceAttributeKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:58 description:{@"%s", dlerror()}];

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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMediaAnalysisVideoCaptionPreferenceResultsKey(void)"];
    [v6 handleFailureInFunction:v7 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestVideoCaptionPreferenceForAssets:(id)a3 withOptions:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [v11 mutableCopy];
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
    v21 = [a1 mediaAnalysisTypeCaptionVideo];
    if (v21)
    {
      v22 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
      v21 = [v22 requestAnalysisTypes:v21 forAssets:v10 withOptions:v15 progressHandler:v12 andCompletionHandler:v13];
    }

    else
    {
      (*(v13 + 2))(v13, MEMORY[0x1E695E0F8], 0);
    }

    return v21;
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getVCPMediaAnalysisService_InProcessOption(void)"];
    [v24 handleFailureInFunction:v25 file:@"PLMediaAnalysisServiceRequestAdapter.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (int64_t)requestAssetCaptionsOfTypes:(unint64_t)a3 forAssets:(id)a4 withOptions:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v10 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13)
  {
    v16 = [v13 mutableCopy];
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

  if (v10)
  {
    v21 = [a1 mediaAnalysisTypeCaptionImage];
    if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v21 = 0;
  if ((v10 & 2) != 0)
  {
LABEL_8:
    v21 |= [a1 mediaAnalysisTypeCaptionVideo];
  }

LABEL_9:
  if (v21)
  {
    v22 = [getVCPMediaAnalysisServiceClass_44829() sharedAnalysisService];
    v23 = [v22 requestAnalysisTypes:v21 forAssets:v12 withOptions:v17 progressHandler:v14 andCompletionHandler:v15];
  }

  else
  {
    (*(v15 + 2))(v15, MEMORY[0x1E695E0F8], 0);
    v23 = 0;
  }

  return v23;
}

@end