@interface PLPrimaryResourceDataStoreVideoRecipe
- (BOOL)isMarkedFullSize;
- (PLPrimaryResourceDataStoreVideoRecipe)initWithRecipeID:(unsigned int)a3;
- (id)_mediaConversionServiceOptionsForAsset:(id)a3 conversionServiceOptions:(id)a4 adjustmentData:(id)a5 largeAdjustmentData:(id)a6 isHighPriority:(BOOL)a7 reason:(id)a8;
- (id)chooseIngredientsFrom:(id)a3 version:(unsigned int)a4;
- (id)codecFourCharCodeName;
- (id)expectedFileURLForVersion:(unsigned int)a3 asset:(id)a4;
- (id)supportedVersionsForLocalResourceGeneration;
- (id)uti;
- (void)_generateAndStoreUsingMediaConversionServicesForAsset:(id)a3 version:(unsigned int)a4 conversionClient:(id)a5 conversionServiceOptions:(id)a6 isHighPriority:(BOOL)a7 progress:(id *)a8 reason:(id)a9 completion:(id)a10;
- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6;
@end

@implementation PLPrimaryResourceDataStoreVideoRecipe

- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v11 version];
  v16 = [v11 videoConversionServiceClient];
  v14 = [v11 conversionServiceOptions];
  v15 = [v11 reason];

  [(PLPrimaryResourceDataStoreVideoRecipe *)self _generateAndStoreUsingMediaConversionServicesForAsset:v12 version:v13 conversionClient:v16 conversionServiceOptions:v14 isHighPriority:0 progress:a5 reason:v15 completion:v10];
}

- (id)expectedFileURLForVersion:(unsigned int)a3 asset:(id)a4
{
  v5 = a4;
  v6 = v5;
  recipeID = self->_recipeID;
  if (recipeID == 131272 || recipeID == 0x20000)
  {
    v8 = [v5 pathForFullsizeRenderVideoFile];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)_generateAndStoreUsingMediaConversionServicesForAsset:(id)a3 version:(unsigned int)a4 conversionClient:(id)a5 conversionServiceOptions:(id)a6 isHighPriority:(BOOL)a7 progress:(id *)a8 reason:(id)a9 completion:(id)a10
{
  v82 = a7;
  v12 = *&a4;
  v121[3] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v91 = a6;
  v88 = a9;
  v85 = a10;
  v16 = [(PLPrimaryResourceDataStoreVideoRecipe *)self supportedVersionsForLocalResourceGeneration];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  v18 = [v16 containsObject:v17];

  v95 = v14;
  v89 = v15;
  if ((v18 & 1) == 0)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v120[0] = *MEMORY[0x1E696A578];
    v23 = NSStringFromPLErrorCode();
    v121[0] = v23;
    v121[1] = self;
    v120[1] = @"recipe";
    v120[2] = @"version";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    v121[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:3];
    v26 = [v21 errorWithDomain:v22 code:47004 userInfo:v25];
    v84 = 0;
    v87 = 0;
    v93 = 0;
LABEL_14:

    v27 = 0;
    v20 = 0;
    v28 = 0;
    goto LABEL_15;
  }

  v19 = [(PLPrimaryResourceDataStoreVideoRecipe *)self chooseIngredientsFrom:v14 version:v12];
  v20 = [v19 objectForKeyedSubscript:@"Video"];
  if (v12 == 2 || v12 == 3 && [v14 hasAdjustments])
  {
    v93 = [v19 objectForKeyedSubscript:@"Adjustment"];
    v87 = [v19 objectForKeyedSubscript:@"LargeAdjustment"];
  }

  else
  {
    v87 = 0;
    v93 = 0;
  }

  if ([v14 isPhotoIris])
  {
    v27 = [v19 objectForKeyedSubscript:@"VideoComplement"];
  }

  else
  {
    v27 = 0;
  }

  v84 = v19;
  if (!(v20 | v27))
  {
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E69BFF48];
    v118[0] = *MEMORY[0x1E696A578];
    v23 = NSStringFromPLErrorCode();
    v119[0] = v23;
    v119[1] = self;
    v118[1] = @"recipe";
    v118[2] = @"version";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    v119[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:3];
    v26 = [v29 errorWithDomain:v30 code:47003 userInfo:v25];
    goto LABEL_14;
  }

  v26 = 0;
  v28 = 1;
LABEL_15:
  v31 = [(PLPrimaryResourceDataStoreVideoRecipe *)self uti];
  v86 = v20;
  v32 = [v20 dataStoreKey];
  v33 = [v95 assetID];
  *(&v94 + 1) = [v32 fileURLForAssetID:v33];

  v34 = [v27 dataStoreKey];
  v35 = [v95 assetID];
  *&v94 = [v34 fileURLForAssetID:v35];

  v36 = [(PLPrimaryResourceDataStoreVideoRecipe *)self expectedFileURLForVersion:v12 asset:v95];
  v90 = v31;
  v92 = v36;
  v83 = v27;
  if (v31 && v94 != 0 && v36)
  {
    v37 = v26;
    v38 = v89;
  }

  else
  {
    v39 = PLBackendGetLog();
    v40 = v26;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v111 = v31;
      v112 = 2112;
      v113 = *(&v94 + 1);
      v114 = 2112;
      v115 = v94;
      v116 = 2112;
      v117 = v92;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Unable to generate local resources, targetUTI = %@, sourceURLVideo = %@, sourceURLVideoComplement = %@, destURL = %@", buf, 0x2Au);
    }

    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v108[0] = *MEMORY[0x1E696A578];
    v43 = NSStringFromPLErrorCode();
    v109[0] = v43;
    v109[1] = self;
    v108[1] = @"recipe";
    v108[2] = @"version";
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    v109[2] = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:3];
    v46 = [v41 errorWithDomain:v42 code:47006 userInfo:v45];

    v28 = 0;
    v37 = v46;
    v38 = v89;
  }

  v47 = v95;
  v48 = [v95 hasAdjustments];
  if (v12 == 2)
  {
    if (v48)
    {
      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_recipeID];
      v50 = [&unk_1F0FC0060 containsObject:v49];

      if (v50)
      {
        if (!v93)
        {
          v51 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E69BFF48];
          v53 = *MEMORY[0x1E696A578];
          v106[0] = *MEMORY[0x1E696A578];
          v54 = NSStringFromPLErrorCode();
          v107[0] = v54;
          v107[1] = self;
          v106[1] = @"recipe";
          v106[2] = @"version";
          v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
          v107[2] = v55;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
          v57 = v56 = v38;
          v58 = [v51 errorWithDomain:v52 code:47015 userInfo:v57];

          v38 = v56;
          v37 = v58;
          if (v56)
          {
            v59 = v91;
            v60 = v85;
LABEL_36:
            v68 = v83;
            v47 = v95;
LABEL_38:
            v61 = [MEMORY[0x1E695DFD8] set];
            v63 = [MEMORY[0x1E695DFB8] orderedSet];
            (v60)[2](v60, 0, v37, v61, v63, 0);
            goto LABEL_48;
          }

LABEL_35:
          v59 = v91;
          v60 = v85;
          v65 = MEMORY[0x1E696ABC0];
          v104 = v53;
          v105 = @"conversionClient is nil";
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v67 = [v65 errorWithDomain:v52 code:47001 userInfo:v66];

          v37 = v67;
          goto LABEL_36;
        }
      }
    }
  }

  if (!v38)
  {
    v52 = *MEMORY[0x1E69BFF48];
    v53 = *MEMORY[0x1E696A578];
    goto LABEL_35;
  }

  v59 = v91;
  if (!v28)
  {
    v60 = v85;
    v68 = v83;
    goto LABEL_38;
  }

  v61 = objc_opt_new();
  v62 = *(&v94 + 1);
  if (!v86)
  {
    v62 = v94;
  }

  v63 = v62;
  if (v63)
  {
    v64 = *MEMORY[0x1E69AE8B8];
    [v61 setResourceURL:v63 forRole:*MEMORY[0x1E69AE8B8]];
  }

  else
  {
    v69 = PLBackendGetLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v111 = self;
      _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_ERROR, "Unable to retrieve sourceURL for recipe: %@", buf, 0xCu);
    }

    v64 = *MEMORY[0x1E69AE8B8];
  }

  v70 = objc_opt_new();
  [v70 setResourceURL:v92 forRole:v64];
  v71 = [(PLPrimaryResourceDataStoreVideoRecipe *)self _mediaConversionServiceOptionsForAsset:v95 conversionServiceOptions:v91 adjustmentData:v93 largeAdjustmentData:v87 isHighPriority:v82 reason:v88];
  if (v71)
  {
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __187__PLPrimaryResourceDataStoreVideoRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke;
    v96[3] = &unk_1E7574B98;
    v97 = v95;
    v101 = v12;
    v98 = v92;
    v99 = self;
    v60 = v85;
    v100 = v85;
    v38 = v89;
    *a8 = [v89 convertVideoAtSourceURLCollection:v61 toDestinationURLCollection:v70 options:v71 completionHandler:v96];

    v72 = v97;
  }

  else
  {
    v73 = PLBackendGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "Failed to run the conversion service because options were nil.", buf, 2u);
    }

    v74 = MEMORY[0x1E696ABC0];
    v75 = *MEMORY[0x1E69BFF48];
    v102[0] = *MEMORY[0x1E696A578];
    v76 = NSStringFromPLErrorCode();
    v103[0] = v76;
    v103[1] = self;
    v102[1] = @"recipe";
    v102[2] = @"version";
    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    v103[2] = v77;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
    v79 = [v74 errorWithDomain:v75 code:47007 userInfo:v78];

    v72 = [MEMORY[0x1E695DFD8] set];
    v80 = [MEMORY[0x1E695DFB8] orderedSet];
    v60 = v85;
    (*(v85 + 2))(v85, 0, v79, v72, v80, 0);

    v37 = v79;
    v38 = v89;
    v47 = v95;
    v71 = 0;
  }

  v68 = v83;
  v59 = v91;
LABEL_48:
}

void __187__PLPrimaryResourceDataStoreVideoRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = +[PLConcurrencyLimiter sharedLimiter];
  v8 = [*(a1 + 32) managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __187__PLPrimaryResourceDataStoreVideoRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_2;
  v13[3] = &unk_1E7574B70;
  v19 = a2;
  v14 = *(a1 + 40);
  v20 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15 = v9;
  v16 = v10;
  v17 = v6;
  v18 = v11;
  v12 = v6;
  [v7 asyncPerformOnContext:v8 identifyingBlock:0 block:v13];
}

void __187__PLPrimaryResourceDataStoreVideoRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 32) path];
    v5 = *(a1 + 80);
    v6 = [*(a1 + 40) width];
    v7 = [*(a1 + 40) height];
    v8 = *(a1 + 48);
    LOWORD(v19) = [*(a1 + 40) kind];
    v9 = [PLResourceInstaller generateValidatedExternalImageResourceOfType:1 forFilePath:v4 requireFileToBePresent:1 version:v5 basedOnFullSizeWidth:v6 andHeight:v7 recipe:v8 assetKind:v19 error:0];

    if (v9)
    {
      v10 = [*(a1 + 40) assetID];
      v11 = [v10 libraryID];
      v12 = PLDataStoreForClassIDAndLibraryID(0, v11);

      v13 = *(a1 + 40);
      v20 = 0;
      v21 = 0;
      LODWORD(v10) = [v12 storeExternalResource:v9 forAsset:v13 options:0 error:&v21 resultingResource:&v20];
      v14 = v21;
      v15 = v20;
      if (v10)
      {
        [v2 addObject:*(a1 + 48)];
        v16 = 0;
      }

      else
      {
        v16 = [*(a1 + 48) recipeErrorWithCode:47009 version:*(a1 + 80) underlyingError:v14 debugDescription:0];
      }
    }

    else
    {
      v16 = [*(a1 + 48) recipeErrorWithCode:47010 version:*(a1 + 80) underlyingError:0 debugDescription:0];
    }
  }

  else
  {
    v16 = [*(a1 + 48) recipeErrorWithCode:47007 version:*(a1 + 80) underlyingError:*(a1 + 56) debugDescription:0];
  }

  v17 = *(a1 + 64);
  v18 = [*(a1 + 40) managedObjectContext];
  (*(v17 + 16))(v17, v18, v16, v2, v3, 0);
}

- (id)_mediaConversionServiceOptionsForAsset:(id)a3 conversionServiceOptions:(id)a4 adjustmentData:(id)a5 largeAdjustmentData:(id)a6 isHighPriority:(BOOL)a7 reason:(id)a8
{
  v9 = a7;
  v50 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = v18;
  if (v14)
  {
    [v18 addEntriesFromDictionary:v14];
  }

  [v19 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69AE980]];
  recipeID = self->_recipeID;
  if (recipeID - 0x20000 <= 9)
  {
    if (((1 << self->_recipeID) & 0x2A8) != 0)
    {
      goto LABEL_10;
    }

    if (recipeID == 0x20000)
    {
      goto LABEL_17;
    }
  }

  if (recipeID - 131272 > 8)
  {
    goto LABEL_7;
  }

  if (((1 << (recipeID + 56)) & 0x1A8) != 0)
  {
LABEL_10:
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = NSStringFromSelector(a2);
    [v21 raise:v22 format:{@"%@ not yet implemented for recipe: %@", v23, self}];
LABEL_11:

LABEL_12:
    v24 = v19;
    goto LABEL_13;
  }

  if (recipeID != 131272)
  {
LABEL_7:
    if (recipeID != 131475)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_17:
  v26 = [v15 adjustmentDictionary];
  v23 = v26;
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = [v26 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
  v43 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
  v28 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
  if (([v28 isEqual:@"com.apple.photos"] & 1) == 0)
  {
    v37 = PLBackendGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = self;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "This adjustment data cannot be processed by Photos. Recipe: %@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (v9)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
  [v19 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69AE950]];

  [v19 setObject:&unk_1F0FBE140 forKeyedSubscript:*MEMORY[0x1E69AE990]];
  if (v27)
  {
    v31 = *MEMORY[0x1E69AE8D0];
    v46[0] = *MEMORY[0x1E69AE8C8];
    v46[1] = v31;
    v47[0] = v27;
    v47[1] = v28;
    v46[2] = *MEMORY[0x1E69AE8D8];
    v32 = v43;
    v47[2] = v43;
    v33 = MEMORY[0x1E695DF20];
    v34 = v47;
    v35 = v46;
LABEL_24:
    v36 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:3];
    [v19 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69AE918]];

    goto LABEL_11;
  }

  if (v16)
  {
    v38 = MEMORY[0x1E695DEF0];
    v42 = [v16 fileURL];
    v39 = [v42 path];
    v27 = [v38 dataWithContentsOfFile:v39];

    if (v27)
    {
      v40 = *MEMORY[0x1E69AE8D0];
      v44[0] = *MEMORY[0x1E69AE8C8];
      v44[1] = v40;
      v45[0] = v27;
      v45[1] = v28;
      v44[2] = *MEMORY[0x1E69AE8D8];
      v32 = v43;
      v45[2] = v43;
      v33 = MEMORY[0x1E695DF20];
      v34 = v45;
      v35 = v44;
      goto LABEL_24;
    }

    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = self;
      v41 = "Adjustment datablob could not be retrieved for recipe: %@";
      goto LABEL_36;
    }
  }

  else
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = self;
      v41 = "Cannot retrieve any adjustment data for recipe: %@";
LABEL_36:
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
    }
  }

LABEL_28:

  v24 = 0;
LABEL_13:

  return v24;
}

- (id)chooseIngredientsFrom:(id)a3 version:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PLPrimaryResourceDataStoreVideoRecipe *)self supportedVersionsForLocalResourceGeneration];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    recipeID = self->_recipeID;
    if (recipeID == 131272 || recipeID == 0x20000)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [(PLResourceRecipe *)self populateAdjustedRecipeIngredients:v11 asset:v6 version:v4];
    }

    else
    {
      v11 = 0;
    }

    if ([v11 count])
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isMarkedFullSize
{
  result = 0;
  recipeID = self->_recipeID;
  if (recipeID > 131271)
  {
    v5 = recipeID == 131280;
    v6 = 200;
  }

  else
  {
    v5 = recipeID == 0x20000;
    v6 = 3;
  }

  v7 = v6 | 0x20000;
  if (v5 || recipeID == v7)
  {
    return 1;
  }

  return result;
}

- (id)supportedVersionsForLocalResourceGeneration
{
  recipeID = self->_recipeID;
  if (recipeID == 131272 || recipeID == 0x20000)
  {
    return &unk_1F0FC0048;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)uti
{
  v2 = 0;
  recipeID = self->_recipeID;
  v4 = MEMORY[0x1E6982EC8];
  if (recipeID > 131080)
  {
    if ((recipeID - 131272) <= 8 && ((1 << (recipeID + 56)) & 0x1A9) != 0)
    {
      goto LABEL_17;
    }

    if (recipeID != 131081)
    {
      if (recipeID != 131475)
      {
        goto LABEL_19;
      }

LABEL_17:
      v4 = MEMORY[0x1E6982F80];
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (recipeID > 131076)
  {
    if (recipeID == 131077)
    {
      goto LABEL_17;
    }

    v6 = 7;
  }

  else
  {
    if (recipeID == 0x20000)
    {
      goto LABEL_17;
    }

    v6 = 3;
  }

  if (recipeID == (v6 | 0x20000))
  {
LABEL_18:
    v2 = [*v4 identifier];
  }

LABEL_19:
  v7 = [PLUniformTypeIdentifier utiWithIdentifier:v2];

  return v7;
}

- (id)codecFourCharCodeName
{
  recipeID = self->_recipeID;
  if (recipeID - 0x20000 > 9)
  {
    goto LABEL_2;
  }

  if (((1 << self->_recipeID) & 0x289) != 0)
  {
LABEL_10:
    v4 = +[PLCodec H264fourCharCode];
    goto LABEL_11;
  }

  if (recipeID != 131077)
  {
LABEL_2:
    if (recipeID - 131272 <= 8 && ((1 << (recipeID + 56)) & 0x1A9) != 0)
    {
      goto LABEL_10;
    }

    if (recipeID != 131475)
    {
      v4 = 0;
      goto LABEL_11;
    }
  }

  v4 = +[PLCodec HEVCfourCharCode];
LABEL_11:

  return v4;
}

- (PLPrimaryResourceDataStoreVideoRecipe)initWithRecipeID:(unsigned int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreVideoRecipe;
  v5 = [(PLPrimaryResourceDataStoreVideoRecipe *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() classFromRecipeID:v3];
    if (v6 != objc_opt_class())
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v5 file:@"PLPrimaryResourceDataStoreVideoRecipe.m" lineNumber:48 description:@"wrong recipe class passed to recipe initializer."];
    }

    v5->_recipeID = v3;
  }

  return v5;
}

@end