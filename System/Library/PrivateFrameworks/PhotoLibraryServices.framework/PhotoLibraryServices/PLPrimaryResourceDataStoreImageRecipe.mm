@interface PLPrimaryResourceDataStoreImageRecipe
+ (CGSize)scaleOriginalSize:(CGSize)result toLongSideTarget:(double)target;
+ (CGSize)scaleOriginalSize:(CGSize)result toShortSideTarget:(double)target maxLongSideLength:(double)length;
- (BOOL)_storeResourceWithType:(unsigned int)type version:(unsigned int)version asset:(id)asset destURL:(id)l error:(id *)error;
- (BOOL)isMarkedFullSize;
- (PLPrimaryResourceDataStoreImageRecipe)initWithRecipeID:(unsigned int)d;
- (id)_mediaConversionServiceOptionsForAsset:(id)asset url:(id)url conversionServiceOptions:(id)options adjustmentData:(id)data largeAdjustmentData:(id)adjustmentData isHighPriority:(BOOL)priority reason:(id)reason;
- (id)_resourceGenerationAffectsRecipesForLibraryID:(id)d;
- (id)chooseIngredientsFrom:(id)from version:(unsigned int)version;
- (id)colorSpaceGivenSourceColorSpace:(id)space inContext:(id)context;
- (id)expectedFileURLForVersion:(unsigned int)version asset:(id)asset;
- (id)expectedSizeFromWidth:(int64_t)width height:(int64_t)height;
- (id)maxPixelCountForAssetWidth:(int64_t)width height:(int64_t)height;
- (id)supportedVersionsForLocalResourceGeneration;
- (void)_generateAndStoreUsingMediaConversionServicesForAsset:(id)asset version:(unsigned int)version conversionClient:(id)client videoConversionClient:(id)conversionClient conversionServiceOptions:(id)options isHighPriority:(BOOL)priority progress:(id *)progress reason:(id)self0 completion:(id)self1;
- (void)generateAndStoreForAsset:(id)asset options:(id)options progress:(id *)progress completion:(id)completion;
@end

@implementation PLPrimaryResourceDataStoreImageRecipe

- (id)expectedSizeFromWidth:(int64_t)width height:(int64_t)height
{
  if ([(PLPrimaryResourceDataStoreImageRecipe *)self recipeID]== 65747)
  {
    PFScaleFactorForMaximumPixelCount();
    v4 = DCIM_NSValueFromCGSize();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)generateAndStoreForAsset:(id)asset options:(id)options progress:(id *)progress completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  assetCopy = asset;
  version = [optionsCopy version];
  imageConversionServiceClient = [optionsCopy imageConversionServiceClient];
  videoConversionServiceClient = [optionsCopy videoConversionServiceClient];
  conversionServiceOptions = [optionsCopy conversionServiceOptions];
  reason = [optionsCopy reason];

  [(PLPrimaryResourceDataStoreImageRecipe *)self _generateAndStoreUsingMediaConversionServicesForAsset:assetCopy version:version conversionClient:imageConversionServiceClient videoConversionClient:videoConversionServiceClient conversionServiceOptions:conversionServiceOptions isHighPriority:0 progress:progress reason:reason completion:completionCopy];
}

- (id)expectedFileURLForVersion:(unsigned int)version asset:(id)asset
{
  assetCopy = asset;
  v7 = assetCopy;
  v8 = 0;
  recipeID = self->_recipeID;
  if (recipeID <= 65748)
  {
    if (recipeID == 65737)
    {
      pathForNonAdjustedFullsizeImageFile = [assetCopy pathForNonAdjustedFullsizeImageFile];
    }

    else
    {
      v10 = 0;
      if (recipeID != 65741)
      {
        goto LABEL_18;
      }

      if (version == 2)
      {
        [assetCopy pathForAdjustedLargeThumbnailFile];
      }

      else
      {
        [assetCopy pathForNonAdjustedLargeThumbnailFile];
      }
      pathForNonAdjustedFullsizeImageFile = ;
    }
  }

  else if (recipeID == 65749)
  {
    pathForNonAdjustedFullsizeImageFile = [assetCopy pathForLocalVideoKeyFrame];
  }

  else if (recipeID == 65938)
  {
    pathForNonAdjustedFullsizeImageFile = [assetCopy pathForAdjustedFullsizeImageFile];
  }

  else
  {
    v10 = 0;
    if (recipeID != 66137)
    {
      goto LABEL_18;
    }

    pathForNonAdjustedFullsizeImageFile = [assetCopy pathForAlchemistImage];
  }

  v8 = pathForNonAdjustedFullsizeImageFile;
  if (pathForNonAdjustedFullsizeImageFile)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForNonAdjustedFullsizeImageFile isDirectory:0];
  }

  else
  {
    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (id)chooseIngredientsFrom:(id)from version:(unsigned int)version
{
  v4 = *&version;
  v51 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  supportedVersionsForLocalResourceGeneration = [(PLPrimaryResourceDataStoreImageRecipe *)self supportedVersionsForLocalResourceGeneration];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v9 = [supportedVersionsForLocalResourceGeneration containsObject:v8];

  if (v9)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    recipeID = self->_recipeID;
    if (recipeID > 65746)
    {
      if (recipeID != 65747)
      {
        if (recipeID == 65938)
        {
          [(PLResourceRecipe *)self populateAdjustedRecipeIngredients:dictionary asset:fromCopy version:v4];
        }

        goto LABEL_53;
      }

      syndicationOriginalResource2 = -[PLPrimaryResourceDataStoreImageRecipe maxPixelCountForAssetWidth:height:](self, "maxPixelCountForAssetWidth:height:", [fromCopy width], objc_msgSend(fromCopy, "height"));
      if (!syndicationOriginalResource2)
      {
        goto LABEL_52;
      }

      if ([fromCopy isVideo] && objc_msgSend(fromCopy, "isVideoKeyFrameSet") && objc_msgSend(fromCopy, "isLocalVideoKeyFrameValid"))
      {
        v21 = PLBackendGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Media analysis video detected, choosing local video key frame for 1K generation", buf, 2u);
        }

        localVideoKeyFrameResource = [fromCopy localVideoKeyFrameResource];
        if (([localVideoKeyFrameResource isLocallyAvailable] & 1) == 0)
        {

          localVideoKeyFrameResource2 = 0;
          goto LABEL_51;
        }

        localVideoKeyFrameResource2 = [fromCopy localVideoKeyFrameResource];
      }

      else
      {
        v23 = PLBackendGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Choosing source image for 1K generation", buf, 2u);
        }

        v24 = [fromCopy resourcesSortedByQualityWithOptions:1];
        v25 = MEMORY[0x1E696AE18];
        v39 = MEMORY[0x1E69E9820];
        v40 = 3221225472;
        v41 = __71__PLPrimaryResourceDataStoreImageRecipe_chooseIngredientsFrom_version___block_invoke_103;
        v42 = &unk_1E7564E70;
        v43 = syndicationOriginalResource2;
        v44 = fromCopy;
        selfCopy = self;
        v26 = [v25 predicateWithBlock:&v39];
        v27 = [v24 filteredArrayUsingPredicate:{v26, v39, v40, v41, v42}];
        localVideoKeyFrameResource2 = [v27 firstObject];

        localVideoKeyFrameResource = v43;
      }

      if (localVideoKeyFrameResource2)
      {
        [dictionary setObject:localVideoKeyFrameResource2 forKeyedSubscript:@"Image"];
      }

      goto LABEL_51;
    }

    if (recipeID == 65737)
    {
      isRAWPlusJPEGWithRAWOnTop = [fromCopy isRAWPlusJPEGWithRAWOnTop];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __71__PLPrimaryResourceDataStoreImageRecipe_chooseIngredientsFrom_version___block_invoke;
      v46[3] = &__block_descriptor_40_e28_B16__0__PLInternalResource_8l;
      if (isRAWPlusJPEGWithRAWOnTop)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      v47 = v18;
      v48 = v4;
      syndicationOriginalResource2 = [fromCopy firstPersistedResourceMatching:v46];
      localVideoKeyFrameResource2 = PLBackendGetLog();
      v20 = os_log_type_enabled(localVideoKeyFrameResource2, OS_LOG_TYPE_DEBUG);
      if (!syndicationOriginalResource2)
      {
        if (!v20)
        {
LABEL_51:

          goto LABEL_52;
        }

        *buf = 0;
        v28 = "Resource generation failed to find image for primary image recipe";
        v29 = localVideoKeyFrameResource2;
        v30 = OS_LOG_TYPE_DEBUG;
        v31 = 2;
LABEL_50:
        _os_log_impl(&dword_19BF1F000, v29, v30, v28, buf, v31);
        goto LABEL_51;
      }

      if (v20)
      {
        *buf = 138412290;
        v50 = syndicationOriginalResource2;
        _os_log_impl(&dword_19BF1F000, localVideoKeyFrameResource2, OS_LOG_TYPE_DEBUG, "Resource generation selected image resource for primary image recipe: %@", buf, 0xCu);
      }
    }

    else
    {
      if (recipeID != 65741 || [fromCopy bundleScope] != 3)
      {
        goto LABEL_53;
      }

      if ([fromCopy kind])
      {
        if ([fromCopy kind] == 1)
        {
          syndicationOriginalResource = [fromCopy syndicationOriginalResource];
          isLocallyAvailable = [syndicationOriginalResource isLocallyAvailable];

          if (isLocallyAvailable)
          {
            syndicationOriginalResource2 = [fromCopy syndicationOriginalResource];
            v15 = @"Video";
LABEL_22:
            [dictionary setObject:syndicationOriginalResource2 forKeyedSubscript:v15];
LABEL_52:

            goto LABEL_53;
          }

          syndicationOriginalResource2 = PLSyndicationGetLog();
          if (!os_log_type_enabled(syndicationOriginalResource2, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_52;
          }

          localVideoKeyFrameResource2 = [fromCopy uuid];
          *buf = 138543362;
          v50 = localVideoKeyFrameResource2;
          v28 = "[resource.recipe] syndication video (%{public}@) missing local video resource for derivative generation";
          goto LABEL_49;
        }

LABEL_53:
        if ([dictionary count])
        {
          v37 = dictionary;
        }

        else
        {
          v37 = 0;
        }

        v16 = v37;

        goto LABEL_57;
      }

      isPhotoIris = [fromCopy isPhotoIris];
      syndicationOriginalResource3 = [fromCopy syndicationOriginalResource];
      isLocallyAvailable2 = [syndicationOriginalResource3 isLocallyAvailable];

      if (isPhotoIris)
      {
        syndicationOriginalResource4 = [fromCopy syndicationOriginalResource];
        syndicationOriginalResource2 = syndicationOriginalResource4;
        if (!isLocallyAvailable2)
        {
          isLocallyAvailable3 = [syndicationOriginalResource4 isLocallyAvailable];

          if (isLocallyAvailable3)
          {
            goto LABEL_53;
          }

          syndicationOriginalResource2 = PLSyndicationGetLog();
          if (!os_log_type_enabled(syndicationOriginalResource2, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_52;
          }

          localVideoKeyFrameResource2 = [fromCopy uuid];
          *buf = 138543362;
          v50 = localVideoKeyFrameResource2;
          v28 = "[resource.recipe] syndication live photo (%{public}@) missing local image resource for derivative generation";
LABEL_49:
          v29 = syndicationOriginalResource2;
          v30 = OS_LOG_TYPE_ERROR;
          v31 = 12;
          goto LABEL_50;
        }
      }

      else
      {
        if (!isLocallyAvailable2)
        {
          syndicationOriginalResource2 = PLSyndicationGetLog();
          if (!os_log_type_enabled(syndicationOriginalResource2, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_52;
          }

          localVideoKeyFrameResource2 = [fromCopy uuid];
          *buf = 138543362;
          v50 = localVideoKeyFrameResource2;
          v28 = "[resource.recipe] syndication photo (%{public}@) missing local image resource for derivative generation";
          goto LABEL_49;
        }

        syndicationOriginalResource2 = [fromCopy syndicationOriginalResource];
      }
    }

    v15 = @"Image";
    goto LABEL_22;
  }

  v16 = 0;
LABEL_57:

  return v16;
}

uint64_t __71__PLPrimaryResourceDataStoreImageRecipe_chooseIngredientsFrom_version___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocallyAvailable] && objc_msgSend(v3, "resourceType") == *(a1 + 32) && objc_msgSend(v3, "version") == *(a1 + 36))
  {
    v4 = [v3 isDerivative] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __71__PLPrimaryResourceDataStoreImageRecipe_chooseIngredientsFrom_version___block_invoke_103(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unorientedWidth];
  v5 = [v3 unorientedHeight];
  v6 = [a1[4] longLongValue];
  if ([a1[5] hasAdjustments])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = ![a1[5] isRAWPlusJPEGWithRAWOnTop] || (objc_msgSend(v3, "isDerivative") & 1) != 0 || objc_msgSend(v3, "resourceType") != 0;
  if ([v3 localAvailability] < 1 || objc_msgSend(v3, "resourceType") || objc_msgSend(v3, "version") != v7)
  {
    v13 = 0;
  }

  else
  {
    v9 = v5 * v4;
    v10 = [v3 recipeID];
    v12 = v10 != [a1[6] recipeID] && v9 > v6;
    v13 = v12 & v8;
  }

  return v13;
}

- (id)supportedVersionsForLocalResourceGeneration
{
  recipeID = self->_recipeID;
  switch(recipeID)
  {
    case 0x10192u:
      return &unk_1F0FBF238;
    case 0x100CDu:
      return &unk_1F0FBF250;
    case 0x100C9u:
      return &unk_1F0FBF220;
  }

  return MEMORY[0x1E695E0F0];
}

- (id)maxPixelCountForAssetWidth:(int64_t)width height:(int64_t)height
{
  width = 0;
  recipeID = self->_recipeID;
  if (recipeID > 65748)
  {
    if (recipeID != 65749 && recipeID != 65944 && recipeID != 65938)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  switch(recipeID)
  {
    case 65737:
LABEL_14:
      width = [MEMORY[0x1E696AD98] numberWithLongLong:height * width];
      break;
    case 65741:
      width = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E6994B90], "maxPixelSizeForResourceType:", 4, height)}];
      break;
    case 65747:
      width = &unk_1F0FBA900;
      break;
  }

LABEL_15:

  return width;
}

- (id)colorSpaceGivenSourceColorSpace:(id)space inContext:(id)context
{
  spaceCopy = space;
  contextCopy = context;
  recipeID = self->_recipeID;
  if (recipeID - 65937 <= 0xE && ((1 << (recipeID + 111)) & 0x4AD3) != 0)
  {
    goto LABEL_8;
  }

  if (recipeID - 65737 <= 0xC)
  {
    if (((1 << (recipeID + 55)) & 0x1455) != 0)
    {
LABEL_8:
      v10 = spaceCopy;
LABEL_9:
      v11 = v10;
      goto LABEL_10;
    }

    if (recipeID == 65745)
    {
      v10 = +[PLColorSpace commonColorSpace_sRGB];
      goto LABEL_9;
    }
  }

  if (recipeID == 66137)
  {
    goto LABEL_8;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)isMarkedFullSize
{
  result = 0;
  recipeID = self->_recipeID;
  if (recipeID <= 65937)
  {
    v5 = recipeID == 65737;
    v6 = 213;
  }

  else
  {
    v5 = recipeID == 65938 || recipeID == 66137;
    v6 = 408;
  }

  v7 = v6 | 0x10000;
  if (v5 || recipeID == v7)
  {
    return 1;
  }

  return result;
}

- (PLPrimaryResourceDataStoreImageRecipe)initWithRecipeID:(unsigned int)d
{
  v3 = *&d;
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreImageRecipe;
  v5 = [(PLPrimaryResourceDataStoreImageRecipe *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() classFromRecipeID:v3];
    if (v6 != objc_opt_class())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"PLPrimaryResourceDataStoreImageRecipe.m" lineNumber:489 description:@"wrong recipe class passed to recipe initializer."];
    }

    v5->_recipeID = v3;
  }

  return v5;
}

- (void)_generateAndStoreUsingMediaConversionServicesForAsset:(id)asset version:(unsigned int)version conversionClient:(id)client videoConversionClient:(id)conversionClient conversionServiceOptions:(id)options isHighPriority:(BOOL)priority progress:(id *)progress reason:(id)self0 completion:(id)self1
{
  priorityCopy = priority;
  v14 = *&version;
  v112[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  clientCopy = client;
  conversionClientCopy = conversionClient;
  optionsCopy = options;
  reasonCopy = reason;
  completionCopy = completion;
  assetID = [assetCopy assetID];
  libraryID = [assetID libraryID];

  supportedVersionsForLocalResourceGeneration = [(PLPrimaryResourceDataStoreImageRecipe *)self supportedVersionsForLocalResourceGeneration];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  LODWORD(client) = [supportedVersionsForLocalResourceGeneration containsObject:v20];

  if (!client)
  {
    v24 = optionsCopy;
    v21 = 0;
    v85 = 0;
    v88 = 0;
    v89 = 0;
    v25 = 47004;
LABEL_11:
    v78 = v21;
    v26 = [(PLResourceRecipe *)self recipeErrorWithCode:v25 version:v14 underlyingError:0 debugDescription:0];
    v23 = 0;
    v22 = 0;
    v27 = 0;
    goto LABEL_12;
  }

  v21 = [(PLPrimaryResourceDataStoreImageRecipe *)self chooseIngredientsFrom:assetCopy version:v14];
  v22 = [v21 objectForKeyedSubscript:@"Image"];
  v89 = [v21 objectForKeyedSubscript:@"VideoComplement"];
  v23 = [v21 objectForKeyedSubscript:@"Video"];
  if (v14 == 2 || v14 == 3 && [assetCopy hasAdjustments])
  {
    v88 = [v21 objectForKeyedSubscript:@"Adjustment"];
    v85 = [v21 objectForKeyedSubscript:@"LargeAdjustment"];
  }

  else
  {
    v85 = 0;
    v88 = 0;
  }

  if (!(v22 | v23))
  {
    v24 = optionsCopy;
    v25 = 47003;
    goto LABEL_11;
  }

  v78 = v21;
  v24 = optionsCopy;
  v26 = 0;
  v27 = 1;
LABEL_12:
  v28 = [(PLPrimaryResourceDataStoreImageRecipe *)self uti];
  v77 = v22;
  dataStoreKey = [v22 dataStoreKey];
  assetID2 = [assetCopy assetID];
  v90 = [dataStoreKey fileURLForAssetID:assetID2];

  dataStoreKey2 = [v89 dataStoreKey];
  assetID3 = [assetCopy assetID];
  v82 = [dataStoreKey2 fileURLForAssetID:assetID3];

  v76 = v23;
  dataStoreKey3 = [v23 dataStoreKey];
  assetID4 = [assetCopy assetID];
  v35 = [dataStoreKey3 fileURLForAssetID:assetID4];

  v36 = [(PLPrimaryResourceDataStoreImageRecipe *)self expectedFileURLForVersion:v14 asset:assetCopy];
  v75 = v28;
  v83 = v36;
  if (!v28 || !(v90 | v35) || !v36)
  {
    v37 = [(PLResourceRecipe *)self recipeErrorWithCode:47006 version:v14 underlyingError:0 debugDescription:0];

    v27 = 0;
    v26 = v37;
  }

  hasAdjustments = [assetCopy hasAdjustments];
  v87 = v35;
  if (v14 == 2)
  {
    if (hasAdjustments)
    {
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_recipeID];
      v40 = [&unk_1F0FBF208 containsObject:v39];

      if (v40)
      {
        if (!v88)
        {
          v41 = [(PLResourceRecipe *)self recipeErrorWithCode:47015 version:2 underlyingError:0 debugDescription:0];

          v26 = v41;
          v42 = clientCopy;
          if (!clientCopy)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }
    }
  }

  v42 = clientCopy;
  if (!clientCopy)
  {
LABEL_33:
    v60 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E69BFF48];
    v111 = *MEMORY[0x1E696A578];
    v112[0] = @"conversionClient is nil";
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:&v111 count:1];
    v63 = [v60 errorWithDomain:v61 code:47001 userInfo:v62];

    v26 = v63;
    goto LABEL_34;
  }

  if (v27)
  {
    managedObjectContext = [assetCopy managedObjectContext];
    v44 = v24;
    v45 = [(PLPrimaryResourceDataStoreImageRecipe *)self _mediaConversionServiceOptionsForAsset:assetCopy url:v90 conversionServiceOptions:v24 adjustmentData:v88 largeAdjustmentData:v85 isHighPriority:priorityCopy reason:reasonCopy];
    orderedSet2 = v45;
    if (!v45)
    {
      v65 = PLBackendGetLog();
      v64 = v76;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Failed to run the conversion service because options were nil.", buf, 2u);
      }

      v66 = [(PLResourceRecipe *)self recipeErrorWithCode:47007 version:v14 underlyingError:0 debugDescription:0];

      v67 = [MEMORY[0x1E695DFD8] set];
      orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
      v55 = completionCopy;
      (*(completionCopy + 2))(completionCopy, 0, v66, v67, orderedSet, 0);

      v58 = v67;
      v26 = v66;
      v59 = conversionClientCopy;
      goto LABEL_42;
    }

    v71 = managedObjectContext;
    v47 = [v45 objectForKeyedSubscript:*MEMORY[0x1E69AE988]];
    bOOLValue = [v47 BOOLValue];

    v49 = v90;
    v74 = bOOLValue;
    if (!bOOLValue || v90)
    {
      if (v87)
      {
        managedObjectContext = v71;
        if (!v90)
        {
          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 3221225472;
          v103[2] = __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke;
          v103[3] = &unk_1E7564DF8;
          v104 = assetCopy;
          v109 = completionCopy;
          selfCopy = self;
          v55 = completionCopy;
          v110 = v14;
          v106 = v71;
          v107 = v83;
          v108 = libraryID;
          v59 = conversionClientCopy;
          [conversionClientCopy extractStillImageFromVideoAtSourceURL:v87 toDestinationURL:v107 options:orderedSet2 completionHandler:v103];

          v90 = 0;
          v58 = v104;
LABEL_41:
          v64 = v76;
LABEL_42:

          goto LABEL_43;
        }

LABEL_29:
        v72 = v44;
        v50 = objc_opt_new();
        v90 = v49;
        v69 = *MEMORY[0x1E69AE8B8];
        [v50 setResourceURL:v49 forRole:?];
        if (v74 && v82)
        {
          [v50 setResourceURL:v82 forRole:*MEMORY[0x1E69AE8C0]];
        }

        [assetCopy pathManager];
        v51 = v70 = v50;
        pathExtension = [v83 pathExtension];
        v53 = [v51 temporaryRenderContentURLForInternalRendersWithExtension:pathExtension];

        v54 = objc_opt_new();
        [v54 setResourceURL:v53 forRole:v69 deleteOnDeallocation:1];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_2;
        v92[3] = &unk_1E7564E48;
        v93 = managedObjectContext;
        v100 = completionCopy;
        v101 = v14;
        selfCopy2 = self;
        v95 = v54;
        v55 = completionCopy;
        v96 = v83;
        v97 = v53;
        v98 = assetCopy;
        v99 = libraryID;
        v102 = v74;
        v56 = v53;
        v57 = v54;
        v42 = clientCopy;
        [clientCopy convertImageAtSourceURLCollection:v70 toDestinationURLCollection:v57 options:orderedSet2 completionHandler:v92];

        v58 = v70;
        v59 = conversionClientCopy;
        v44 = v72;
        goto LABEL_41;
      }
    }

    else
    {
      v49 = v87;
      v87 = 0;
    }

    managedObjectContext = v71;
    goto LABEL_29;
  }

LABEL_34:
  managedObjectContext = [MEMORY[0x1E695DFD8] set];
  orderedSet2 = [MEMORY[0x1E695DFB8] orderedSet];
  v55 = completionCopy;
  (*(completionCopy + 2))(completionCopy, 0, v26, managedObjectContext, orderedSet2, 0);
  v59 = conversionClientCopy;
  v44 = v24;
  v64 = v76;
LABEL_43:
}

void __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) managedObjectContext];

  if (v7)
  {
    v8 = +[PLConcurrencyLimiter sharedLimiter];
    v9 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_66;
    v17[3] = &unk_1E7564DD0;
    v24 = a2;
    v25 = *(a1 + 80);
    v16 = *(a1 + 32);
    v10 = v16.i64[0];
    v18 = vextq_s8(v16, v16, 8uLL);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = v6;
    v23 = *(a1 + 72);
    v22 = *(a1 + 48);
    [v8 asyncPerformOnContext:v9 identifyingBlock:0 block:v17];
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "asset managed object context is nil, cannot complete storing generated resource", buf, 2u);
    }

    v12 = *(a1 + 72);
    v13 = [*(a1 + 40) recipeErrorWithCode:47001 version:*(a1 + 80) underlyingError:0 debugDescription:@"asset managed object context is nil"];
    v14 = [MEMORY[0x1E695DFD8] set];
    v15 = [MEMORY[0x1E695DFB8] orderedSet];
    (*(v12 + 16))(v12, 0, v13, v14, v15, 0);
  }
}

void __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 32))
  {
    v9 = +[PLConcurrencyLimiter sharedLimiter];
    v10 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_71;
    v18[3] = &unk_1E7564E20;
    v19 = *(a1 + 48);
    v29 = a2;
    v11 = v8;
    v12 = *(a1 + 40);
    v20 = v11;
    v21 = v12;
    v30 = *(a1 + 96);
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v25 = *(a1 + 80);
    v31 = *(a1 + 100);
    v26 = v7;
    v28 = *(a1 + 88);
    v27 = *(a1 + 32);
    [v9 asyncPerformOnContext:v10 identifyingBlock:0 block:v18];

    v13 = v19;
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "asset managed object context is nil, cannot complete storing generated resource", buf, 2u);
    }

    v15 = *(a1 + 88);
    v13 = [*(a1 + 40) recipeErrorWithCode:47001 version:*(a1 + 96) underlyingError:0 debugDescription:@"asset managed object context is nil"];
    v16 = [MEMORY[0x1E695DFD8] set];
    v17 = [MEMORY[0x1E695DFB8] orderedSet];
    (*(v15 + 16))(v15, 0, v13, v16, v17, 0);
  }
}

void __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_71(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  if (*(a1 + 112) == 1)
  {
    v4 = [*(a1 + 56) path];
    v5 = [v4 stringByDeletingLastPathComponent];

    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v63 = 0;
    v7 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v63];
    v8 = v63;

    if ((v7 & 1) == 0)
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v65 = v5;
        v66 = 2112;
        v67 = v8;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "_generateAndStoreUsingMediaConversionServicesForAsset finished but failed to ensure dest dir exists %@ with error: %@", buf, 0x16u);
      }

      v17 = [*(a1 + 48) recipeErrorWithCode:47007 version:*(a1 + 120) underlyingError:v8 debugDescription:0];

      goto LABEL_13;
    }

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v62 = 0;
    v12 = [v9 moveItemAtURL:v10 toURL:v11 error:&v62];
    v13 = v62;

    if (v12)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [*(a1 + 64) path];
        v16 = [*(a1 + 56) path];
        *buf = 138412546;
        v65 = v15;
        v66 = 2112;
        v67 = v16;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "_generateAndStoreUsingMediaConversionServicesForAsset moved render from temporary path %@ to dest path %@", buf, 0x16u);
      }

      v17 = 0;
LABEL_30:
      v43 = v17;
      v44 = *(a1 + 120);
      v45 = *(a1 + 72);
      v46 = *(a1 + 48);
      v47 = *(a1 + 56);
      v58 = v17;
      v48 = [v46 _storeResourceWithType:0 version:v44 asset:v45 destURL:v47 error:&v58];
      v17 = v58;

      if (v48)
      {
        [v2 addObject:*(a1 + 48)];
        v49 = [*(a1 + 48) _resourceGenerationAffectsRecipesForLibraryID:*(a1 + 80)];
        [v3 unionOrderedSet:v49];

        if (*(a1 + 124) == 1)
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v50 = *MEMORY[0x1E69AE8E0];
          v51 = [*(a1 + 88) objectForKeyedSubscript:*MEMORY[0x1E69AE8E0]];
          v52 = v51;
          if (v50 && v51)
          {
            [v20 setObject:v51 forKey:v50];
          }

          v53 = *MEMORY[0x1E69AE8E8];
          v54 = [*(a1 + 88) objectForKeyedSubscript:*MEMORY[0x1E69AE8E8]];
          v55 = v54;
          if (v53 && v54)
          {
            [v20 setObject:v54 forKey:v53];
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v56 = PLBackendGetLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "_generateAndStoreUsingMediaConversionServicesForAsset store resource failed", buf, 2u);
        }

        v57 = [*(a1 + 48) recipeErrorWithCode:47007 version:*(a1 + 120) underlyingError:0 debugDescription:@"Store failed"];

        v20 = 0;
        v17 = v57;
      }

      goto LABEL_43;
    }

    v22 = PLIsErrorOrUnderlyingErrorFileExists();
    if (!v22)
    {
      v34 = PLBackendGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [*(a1 + 64) path];
        v36 = [*(a1 + 56) path];
        *buf = 138412802;
        v65 = v35;
        v66 = 2112;
        v67 = v36;
        v68 = 2112;
        v69 = v13;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "_generateAndStoreUsingMediaConversionServicesForAsset finished but failed to move render from temporary path %@ to dest path %@ with error: %@", buf, 0x20u);
      }

      v17 = [*(a1 + 48) recipeErrorWithCode:47007 version:*(a1 + 120) underlyingError:v13 debugDescription:0];
LABEL_25:
      v37 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = *(a1 + 64);
      v59 = 0;
      v39 = [v37 removeItemAtURL:v38 error:&v59];
      v40 = v59;

      if ((v39 & 1) == 0)
      {
        v41 = PLBackendGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = [*(a1 + 64) path];
          *buf = 138412546;
          v65 = v42;
          v66 = 2112;
          v67 = v13;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "_generateAndStoreUsingMediaConversionServicesForAsset failed to remove file at temporary path %@ with error: %@", buf, 0x16u);
        }
      }

      if (v22)
      {
        goto LABEL_30;
      }

LABEL_13:
      v20 = 0;
      goto LABEL_43;
    }

    v23 = *(a1 + 56);
    v61 = 0;
    v24 = *MEMORY[0x1E695DB50];
    v60 = 0;
    v25 = [v23 getResourceValue:&v61 forKey:v24 error:&v60];
    v26 = v61;
    v27 = v60;
    v28 = PLBackendGetLog();
    v29 = v28;
    if (v25)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = [*(a1 + 56) path];
        *buf = 138412546;
        v65 = v30;
        v66 = 2112;
        v67 = v27;
        v31 = "_generateAndStoreUsingMediaConversionServicesForAsset finished but file already exists at dest path %@, error retrieving file size: %@";
        v32 = v29;
        v33 = OS_LOG_TYPE_ERROR;
LABEL_23:
        _os_log_impl(&dword_19BF1F000, v32, v33, v31, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = [*(a1 + 56) path];
      *buf = 138543618;
      v65 = v26;
      v66 = 2112;
      v67 = v30;
      v31 = "_generateAndStoreUsingMediaConversionServicesForAsset finished but file of size %{public}@ already exists at dest path %@";
      v32 = v29;
      v33 = OS_LOG_TYPE_INFO;
      goto LABEL_23;
    }

    v17 = 0;
    goto LABEL_25;
  }

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 40);
    *buf = 138412290;
    v65 = v19;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "conversion job failed with error: %@", buf, 0xCu);
  }

  v17 = [*(a1 + 48) recipeErrorWithCode:47007 version:*(a1 + 120) underlyingError:*(a1 + 40) debugDescription:0];
  v20 = 0;
LABEL_43:
  (*(*(a1 + 104) + 16))();
}

void __209__PLPrimaryResourceDataStoreImageRecipe__generateAndStoreUsingMediaConversionServicesForAsset_version_conversionClient_videoConversionClient_conversionServiceOptions_isHighPriority_progress_reason_completion___block_invoke_66(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = *(a1 + 32);
  v5 = *(a1 + 96);
  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11 = 0;
    v8 = [v4 _storeResourceWithType:0 version:v5 asset:v6 destURL:v7 error:&v11];
    v9 = v11;
    if (v8)
    {
      [v2 addObject:*(a1 + 32)];
      v10 = [*(a1 + 32) _resourceGenerationAffectsRecipesForLibraryID:*(a1 + 56)];
      [v3 unionOrderedSet:v10];
    }
  }

  else
  {
    v9 = [v4 recipeErrorWithCode:47007 version:v5 underlyingError:*(a1 + 64) debugDescription:0];
  }

  (*(*(a1 + 80) + 16))();
}

- (BOOL)_storeResourceWithType:(unsigned int)type version:(unsigned int)version asset:(id)asset destURL:(id)l error:(id *)error
{
  v9 = *&version;
  v10 = *&type;
  assetCopy = asset;
  path = [l path];
  width = [assetCopy width];
  height = [assetCopy height];
  LOWORD(v28) = [assetCopy kind];
  v16 = [PLResourceInstaller generateValidatedExternalImageResourceOfType:v10 forFilePath:path requireFileToBePresent:1 version:v9 basedOnFullSizeWidth:width andHeight:height recipe:self assetKind:v28 error:0];

  if (!v16)
  {
    v19 = [(PLResourceRecipe *)self recipeErrorWithCode:47010 version:v9 underlyingError:0 debugDescription:0];
    LOBYTE(v20) = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([assetCopy bundleScope] == 3)
  {
    v17 = [(PLValidatedExternalResource *)PLSyndicationValidatedExternalResource resourceWithExternalResource:v16];

    v18 = 3;
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  assetID = [assetCopy assetID];
  libraryID = [assetID libraryID];
  v23 = PLDataStoreForClassIDAndLibraryID(v18, libraryID);

  v29 = 0;
  v30 = 0;
  v20 = [v23 storeExternalResource:v16 forAsset:assetCopy options:0 error:&v30 resultingResource:&v29];
  v24 = v30;
  v25 = v29;
  if (v20)
  {
    [assetCopy recalculateImageRequestHints];
    v19 = 0;
  }

  else
  {
    v19 = [(PLResourceRecipe *)self recipeErrorWithCode:47009 version:v9 underlyingError:v24 debugDescription:0];
  }

  if (error)
  {
LABEL_11:
    v26 = v19;
    *error = v19;
  }

LABEL_12:

  return v20;
}

- (id)_mediaConversionServiceOptionsForAsset:(id)asset url:(id)url conversionServiceOptions:(id)options adjustmentData:(id)data largeAdjustmentData:(id)adjustmentData isHighPriority:(BOOL)priority reason:(id)reason
{
  priorityCopy = priority;
  v81 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  urlCopy = url;
  optionsCopy = options;
  dataCopy = data;
  adjustmentDataCopy = adjustmentData;
  v19 = MEMORY[0x1E695DF90];
  reasonCopy = reason;
  dictionary = [v19 dictionary];
  v22 = dictionary;
  if (optionsCopy)
  {
    [dictionary addEntriesFromDictionary:optionsCopy];
  }

  [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE920]];
  [v22 setObject:reasonCopy forKeyedSubscript:*MEMORY[0x1E69AE980]];

  uniformTypeIdentifier = [(PLPrimaryResourceDataStoreImageRecipe *)assetCopy uniformTypeIdentifier];
  if (!uniformTypeIdentifier)
  {
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = assetCopy;
      v79 = 2112;
      v80 = urlCopy;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Unable to determine type identifier for asset %{public}@, URL = %@", buf, 0x16u);
    }
  }

  if (urlCopy && [(PLPrimaryResourceDataStoreImageRecipe *)assetCopy isRAW]&& (PLSyndicationAssetRequiresBlastDoorToAccessOriginals(assetCopy) & 1) == 0)
  {
    v68 = dataCopy;
    v25 = MEMORY[0x1E69C0708];
    metadataFromMediaPropertiesOrOriginalResource = [(PLPrimaryResourceDataStoreImageRecipe *)assetCopy metadataFromMediaPropertiesOrOriginalResource];
    v72 = 0;
    v27 = [v25 hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:urlCopy metadata:metadataFromMediaPropertiesOrOriginalResource error:&v72];
    v28 = v72;

    if (v27)
    {
      if ([v27 BOOLValue])
      {
        [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE998]];
      }
    }

    else
    {
      v29 = PLBackendGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy3 = urlCopy;
        v79 = 2112;
        v80 = v28;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to query image properties of input URL %@. Error: %@", buf, 0x16u);
      }
    }

    dataCopy = v68;
  }

  recipeID = self->_recipeID;
  if (recipeID <= 65936)
  {
    if ((recipeID - 65739) <= 0xA)
    {
      if (((1 << (recipeID + 53)) & 0x451) != 0)
      {
        goto LABEL_28;
      }

      if (recipeID == 65741)
      {
        [v22 setObject:&unk_1F0FBA8B8 forKeyedSubscript:*MEMORY[0x1E69AE930]];
        if (priorityCopy)
        {
          v51 = 4;
        }

        else
        {
          v51 = 2;
        }

        v52 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
        [v22 setObject:v52 forKeyedSubscript:*MEMORY[0x1E69AE950]];

        standardPolicy = [MEMORY[0x1E69C06E0] standardPolicy];
        [v22 setObject:standardPolicy forKeyedSubscript:*MEMORY[0x1E69AE968]];

        v54 = [(PLPrimaryResourceDataStoreImageRecipe *)self maxPixelCountForAssetWidth:[(PLPrimaryResourceDataStoreImageRecipe *)assetCopy width] height:[(PLPrimaryResourceDataStoreImageRecipe *)assetCopy height]];
        [v22 setObject:v54 forKeyedSubscript:*MEMORY[0x1E69AE960]];

        goto LABEL_30;
      }

      if (recipeID == 65747)
      {
        [v22 setObject:&unk_1F0FBA8B8 forKeyedSubscript:*MEMORY[0x1E69AE930]];
        v46 = MEMORY[0x1E695DF30];
        v47 = *MEMORY[0x1E695D930];
        NSStringFromSelector(a2);
        v40 = v39 = dataCopy;
        [v46 raise:v47 format:{@"%@ not supported for generation on this platform for recipe: %@", v40, self}];
        goto LABEL_29;
      }
    }

    if (recipeID == 65737)
    {
      [v22 setObject:&unk_1F0FBA8B8 forKeyedSubscript:*MEMORY[0x1E69AE930]];
      if (priorityCopy)
      {
        v48 = 4;
      }

      else
      {
        v48 = 2;
      }

      v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
      [v22 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69AE950]];

      standardPolicy2 = [MEMORY[0x1E69C06D0] standardPolicy];
      [v22 setObject:standardPolicy2 forKeyedSubscript:*MEMORY[0x1E69AE968]];

      [v22 setObject:&unk_1F0FC03D8 forKeyedSubscript:*MEMORY[0x1E69AE990]];
    }

    goto LABEL_30;
  }

  if ((recipeID - 65937) > 0xE)
  {
    goto LABEL_39;
  }

  if (((1 << (recipeID + 111)) & 0x4AD1) == 0)
  {
    if (recipeID == 65938)
    {
      adjustmentDictionary = [dataCopy adjustmentDictionary];
      v32 = adjustmentDictionary;
      if (!adjustmentDictionary)
      {
        v35 = 0;
        v67 = 0;
        v65 = 0;
        goto LABEL_51;
      }

      v33 = [adjustmentDictionary objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
      v67 = [v32 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
      v66 = [v32 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
      if (([v66 isEqual:@"com.apple.photos"] & 1) == 0)
      {
        v58 = PLBackendGetLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "This adjustment data cannot be processed by Photos. Recipe: %@", buf, 0xCu);
        }

        goto LABEL_60;
      }

      if (v33)
      {
        v34 = *MEMORY[0x1E69AE8D0];
        v75[0] = *MEMORY[0x1E69AE8C8];
        v75[1] = v34;
        v65 = v33;
        v35 = v66;
        v76[0] = v33;
        v76[1] = v66;
        v75[2] = *MEMORY[0x1E69AE8D8];
        v76[2] = v67;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];
LABEL_25:
        [v22 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69AE918]];

LABEL_51:
        if (priorityCopy)
        {
          v55 = 4;
        }

        else
        {
          v55 = 2;
        }

        v56 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
        [v22 setObject:v56 forKeyedSubscript:*MEMORY[0x1E69AE950]];

        if (![(PLPrimaryResourceDataStoreImageRecipe *)assetCopy kind])
        {
          [v22 setObject:&unk_1F0FBA8D0 forKeyedSubscript:*MEMORY[0x1E69AE990]];
          standardPolicy3 = [MEMORY[0x1E69C06C0] standardPolicy];
          [v22 setObject:standardPolicy3 forKeyedSubscript:*MEMORY[0x1E69AE968]];
        }

        goto LABEL_30;
      }

      if (adjustmentDataCopy)
      {
        v69 = dataCopy;
        v59 = MEMORY[0x1E695DEF0];
        fileURL = [adjustmentDataCopy fileURL];
        path = [fileURL path];
        v62 = [v59 dataWithContentsOfFile:path];

        if (v62)
        {
          v63 = *MEMORY[0x1E69AE8D0];
          v73[0] = *MEMORY[0x1E69AE8C8];
          v73[1] = v63;
          v65 = v62;
          v35 = v66;
          v74[0] = v62;
          v74[1] = v66;
          v73[2] = *MEMORY[0x1E69AE8D8];
          v74[2] = v67;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
          dataCopy = v69;
          goto LABEL_25;
        }

        v33 = PLBackendGetLog();
        dataCopy = v69;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy3 = self;
          v64 = "AdjustmentDataBlob could not be retrieved for recipe: %@";
          goto LABEL_68;
        }
      }

      else
      {
        v33 = PLBackendGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy3 = self;
          v64 = "Cannot retrieve any adjustment data for recipe: %@";
LABEL_68:
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, v64, buf, 0xCu);
        }
      }

LABEL_60:

      v44 = 0;
      goto LABEL_33;
    }

LABEL_39:
    if (recipeID != 66137)
    {
      goto LABEL_30;
    }
  }

LABEL_28:
  v37 = MEMORY[0x1E695DF30];
  v38 = *MEMORY[0x1E695D930];
  NSStringFromSelector(a2);
  v40 = v39 = dataCopy;
  [v37 raise:v38 format:{@"%@ not yet implemented for recipe: %@", v40, self}];
LABEL_29:

  dataCopy = v39;
LABEL_30:
  v41 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69AE988]];
  bOOLValue = [v41 BOOLValue];

  if (bOOLValue)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLPrimaryResourceDataStoreImageRecipe isPhoto](assetCopy, "isPhoto")}];
    [v22 setObject:v43 forKeyedSubscript:*MEMORY[0x1E69AE928]];
  }

  v44 = v22;
LABEL_33:

  return v44;
}

- (id)_resourceGenerationAffectsRecipesForLibraryID:(id)d
{
  dCopy = d;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  recipeID = self->_recipeID;
  v7 = recipeID - 65937 > 0xE || ((1 << (recipeID + 111)) & 0x4AD3) == 0;
  if (!v7 || ((v8 = recipeID - 65737, v9 = v8 > 8, v10 = (1 << v8) & 0x155, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11))
  {
    v12 = [PLResourceGenerator fileAndTableBackedThumbnailManagerRecipesForLibraryID:dCopy];
    [orderedSet unionOrderedSet:v12];
  }

  return orderedSet;
}

+ (CGSize)scaleOriginalSize:(CGSize)result toLongSideTarget:(double)target
{
  if (result.width >= result.height)
  {
    width = result.width;
  }

  else
  {
    width = result.height;
  }

  if (width > target)
  {
    v5 = target / width;
    result.width = result.width * v5;
    result.height = result.height * v5;
  }

  return result;
}

+ (CGSize)scaleOriginalSize:(CGSize)result toShortSideTarget:(double)target maxLongSideLength:(double)length
{
  if (result.width >= result.height)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (height > target)
  {
    v6 = target / height;
    result.width = round(result.width * v6);
    result.height = round(result.height * v6);
  }

  if (length != 0.0)
  {
    if (result.width >= result.height)
    {
      width = result.width;
    }

    else
    {
      width = result.height;
    }

    if (width > length)
    {
      v8 = length / width;
      result.width = round(result.width * v8);
      result.height = round(result.height * v8);
    }
  }

  return result;
}

@end