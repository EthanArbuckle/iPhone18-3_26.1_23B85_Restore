@interface PLResourceInstaller
+ (BOOL)_installInternalResourcesForExistingAsset:(id)a3 assumeNoExistingResources:(BOOL)a4 referencedResourceURLs:(id)a5 includeLegacyCloudResources:(BOOL)a6 outResourcesStoreCount:(unint64_t *)a7 error:(id *)a8;
+ (BOOL)createInternalResourcesForExistingAssetsWithNoExistingResourcesInStore:(id)a3 migrator:(id)a4;
+ (BOOL)installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:(id)a3 migrator:(id)a4;
+ (BOOL)installSupplementalResourceForExistingFileAtURL:(id)a3 ptpTrashedState:(int64_t)a4 index:(id)a5 forAsset:(id)a6 imageOrientation:(id)a7 resultingResource:(id *)a8 error:(id *)a9;
+ (BOOL)reconsiderSavedAssetTypeInStore:(id)a3 migrator:(id)a4;
+ (BOOL)recoverSupplementalResourcesForAsset:(id)a3 usingSidecarFinder:(id)a4 outResourcesStoreCount:(unint64_t *)a5 error:(id *)a6;
+ (BOOL)removeLegacyCloudResourcesInStore:(id)a3 migrator:(id)a4;
+ (BOOL)resetImageRequestHintsInContext:(id)a3 allowOneTimeThumbRebuild:(BOOL)a4;
+ (BOOL)resetInternalResourcesInStore:(id)a3 resetUTIs:(BOOL)a4 resetCodecs:(BOOL)a5 resetMasters:(BOOL)a6 migrator:(id)a7;
+ (id)_speculativePathForPenultimateFullsizeRenderImageFileForAsset:(id)a3;
+ (id)_storeValidatedLocalExternalResource:(id)a3 forAsset:(id)a4;
+ (id)_validatedExternalResourceAtPath:(id)a3 recipe:(id)a4 type:(unsigned int)a5 version:(unsigned int)a6 identifier:(id)a7;
+ (id)_validatedExternalResourceForComputeResourceAtPath:(id)a3 recipe:(id)a4;
+ (id)_validatedExternalResourceForComputeResourceWithRecipe:(id)a3;
+ (id)_validatedExternalResourceFromSupplementalFileURL:(id)a3 withUTI:(id)a4 ptpTrashedState:(int64_t)a5 index:(id)a6 asset:(id)a7;
+ (id)_validatedExternalResourceIfPresentForAudioOrUnknownAsset:(id)a3;
+ (id)_validatedExternalResourcesFromLocalImageOrVideoAsset:(id)a3 referencedResourceURLs:(id)a4;
+ (id)_validatedExternalResourcesFromSharedStreamAsset:(id)a3;
+ (id)externalResourcesForExistingAsset:(id)a3 referencedResourceURLs:(id)a4;
+ (id)generateAdjustedFullSizeRenderResourceForFilePath:(id)a3 requireFileToBePresent:(BOOL)a4 basedOnFullSizeWidth:(int64_t)a5 andHeight:(int64_t)a6;
+ (id)generateExternalResourceFromCPLResource:(id)a3 asset:(id)a4 fromAdjustedSet:(BOOL)a5;
+ (id)generateExternalResourceFromCPLResource:(id)a3 cloudMaster:(id)a4 masterResources:(id)a5;
+ (id)generateValidatedExternalImageResourceOfType:(unsigned int)a3 forFilePath:(id)a4 requireFileToBePresent:(BOOL)a5 version:(unsigned int)a6 basedOnFullSizeWidth:(int64_t)a7 andHeight:(int64_t)a8 recipe:(id)a9 assetKind:(signed __int16)a10 error:(id *)a11;
+ (id)generateValidatedExternalOtherResourceOfType:(unsigned int)a3 forFilePath:(id)a4 uti:(id)a5 requireFileToBePresent:(BOOL)a6 version:(unsigned int)a7;
+ (id)generateVideoResourcesFromVideoAsset:(id)a3 referencedVideoPath:(id)a4;
+ (id)generatedValidatedExternalSyndicationResourceOfType:(unsigned int)a3 version:(unsigned int)a4 recipeID:(unsigned int)a5 fileURL:(id)a6 requireFileToBePresent:(BOOL)a7 uniformTypeIdentifier:(id)a8;
+ (id)onDemand_installAdjustedDeferredFullSizeVideoComplementResourceForAsset:(id)a3;
+ (id)onDemand_installAdjustedFullSizeRenderResourceAtFilePath:(id)a3 forAsset:(id)a4;
+ (id)onDemand_installAdjustedFullSizeVideoComplementResourceIfPresentForAsset:(id)a3;
+ (id)onDemand_installEmptyComputeResourceWithRecipe:(id)a3 forAsset:(id)a4 error:(id *)a5;
+ (id)onDemand_installExistingAdjustedResourceAtFilePath:(id)a3 withType:(unsigned int)a4 recipe:(id)a5 forAsset:(id)a6 error:(id *)a7;
+ (id)onDemand_installExistingAdjustmentSuggestionResourceAtFilePath:(id)a3 recipe:(id)a4 forAsset:(id)a5;
+ (id)onDemand_installExistingAlchemistV2ResourceAtFilePath:(id)a3 recipe:(id)a4 forAsset:(id)a5;
+ (id)onDemand_installExistingComputeResourceAtFilePath:(id)a3 recipe:(id)a4 forAsset:(id)a5;
+ (id)onDemand_installLocalVideoKeyFrameForAsset:(id)a3;
+ (id)onDemand_installOriginalAdjustmentResourceIfPresentForAsset:(id)a3;
+ (id)onDemand_installOriginalResourceForSyndicationAsset:(id)a3;
+ (id)onDemand_installOriginalSOCImagePresentForAsset:(id)a3 referencedResourceURLs:(id)a4;
+ (id)onDemand_installOriginalSOCVideoComplementPresentForAsset:(id)a3 referencedResourceURLs:(id)a4;
+ (id)onDemand_installOriginalSOCVideoPresentForAsset:(id)a3 referencedResourceURLs:(id)a4;
+ (id)onDemand_installOriginalVideoComplementForSyndicationAsset:(id)a3 contentType:(id)a4;
+ (id)onDemand_installOriginalVideoComplementResourceIfPresentForAsset:(id)a3;
+ (id)onDemand_installPrimaryImageResourceWithRecipe:(id)a3 version:(unsigned int)a4 forAsset:(id)a5 requireFileToBePresent:(BOOL)a6;
+ (id)onDemand_installResourceWithResourceIdentity:(id)a3 forAsset:(id)a4;
+ (id)validatedExternalResourceForLocalVideoIfPresentAtPath:(id)a3 context:(id)a4;
+ (id)validatedExternalResourceFromExternalResourceCloudAttributes:(id)a3 cplType:(unint64_t)a4 assetType:(signed __int16)a5 uti:(id)a6 resourceWidth:(unint64_t)a7 resourceHeight:(unint64_t)a8 resourceFingerprint:(id)a9 resourceStableHash:(id)a10 resourceSize:(unint64_t)a11 isAvailable:(BOOL)a12 fromAdjustedSet:(BOOL)a13 resourceURL:(id)a14 cloudMaster:(id)a15 isForMigration:(BOOL)a16 context:(id)a17;
+ (unint64_t)_getURLDataLength:(id)a3;
+ (unint64_t)derivativeCPLTypeFromRecipeID:(unsigned int)a3 version:(unsigned int)a4;
+ (unint64_t)nonDerivativeCPLTypeFromResourceType:(unsigned int)a3 version:(unsigned int)a4 uniformTypeIdentifier:(id)a5;
+ (unsigned)recipeIDFromCPLResourceType:(unint64_t)a3 assetType:(signed __int16)a4 fromAdjustedSet:(BOOL)a5;
+ (unsigned)resourceTypeFromCPLType:(unint64_t)a3 assetType:(signed __int16)a4;
+ (unsigned)resourceVersionFromCPLType:(unint64_t)a3 fromAdjustedSet:(BOOL)a4;
+ (void)_applyCodecToNonDerivativeExternalResource:(id)a3 fromCloudMaster:(id)a4;
+ (void)_applyColorSpaceAndCodecUsingFileToExternalResource:(id)a3 managedObjectContext:(id)a4;
+ (void)_applyImageIOMetadataToExternalResource:(id)a3 fromFileURL:(id)a4 fileExists:(BOOL)a5 assumedWidth:(int64_t)a6 assumedHeight:(int64_t)a7 recipe:(id)a8 assetKind:(signed __int16)a9;
+ (void)_recipeAndDerivativeStateFromCPLResourceType:(unint64_t)a3 fromAdjustedSet:(BOOL)a4 assetType:(signed __int16)a5 recipeID:(unsigned int *)a6;
@end

@implementation PLResourceInstaller

+ (id)generateExternalResourceFromCPLResource:(id)a3 asset:(id)a4 fromAdjustedSet:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v12 = objc_alloc_init(PLValidatedExternalCloudResource);
  v13 = [v11 master];
  v14 = [v13 creationDate];
  v44 = v12;
  [(PLValidatedExternalCloudResource *)v12 setMasterDateCreated:v14];

  v15 = [v9 identity];
  [v15 imageDimensions];
  v17 = v16;
  v19 = v18;
  v20 = [v15 fileUTI];
  if (!v20)
  {
    v21 = MEMORY[0x1E69C08F0];
    v22 = [v15 fileURL];
    v23 = [v22 pathExtension];
    v24 = [v21 resourceModelTypeForFilenameExtension:v23];
    v20 = [v24 identifier];
  }

  v25 = [v11 pathForCPLResourceType:objc_msgSend(v9 adjusted:{"resourceType"), v5}];
  v46 = a1;
  v45 = v5;
  v43 = v20;
  v41 = v25;
  if (v25)
  {
    v42 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25 isDirectory:0];
  }

  else
  {
    v42 = 0;
  }

  v39 = [v9 resourceType];
  v26 = [v11 kind];
  v27 = [v15 fingerPrint];
  v28 = [v15 stableHash];
  v29 = [v15 fileSize];
  v30 = [v15 isAvailable];
  v31 = [v11 master];
  [v11 managedObjectContext];
  v32 = v40 = v9;
  LOBYTE(v38) = 0;
  BYTE1(v37) = v45;
  LOBYTE(v37) = v30;
  v33 = [v46 validatedExternalResourceFromExternalResourceCloudAttributes:v44 cplType:v39 assetType:v26 uti:v43 resourceWidth:v17 resourceHeight:v19 resourceFingerprint:v27 resourceStableHash:v28 resourceSize:v29 isAvailable:v37 fromAdjustedSet:v42 resourceURL:v31 cloudMaster:v38 isForMigration:v32 context:?];

  return v33;
}

+ (id)generateExternalResourceFromCPLResource:(id)a3 cloudMaster:(id)a4 masterResources:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:568 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v50 = [MEMORY[0x1E696AAA8] currentHandler];
  [v50 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:569 description:{@"Invalid parameter not satisfying: %@", @"cloudMaster"}];

LABEL_3:
  v57 = a1;
  v12 = objc_alloc_init(PLValidatedExternalCloudResource);
  v13 = [v10 creationDate];
  [(PLValidatedExternalCloudResource *)v12 setMasterDateCreated:v13];

  v56 = v12;
  [(PLValidatedExternalCloudResource *)v12 setCloudLocalState:3];
  v14 = [v10 uniformTypeIdentifier];
  if (v14)
  {
    v15 = v14;
LABEL_6:
    v20 = [PLUniformTypeIdentifier utiWithIdentifier:v15];
    if ([v20 conformsToImage])
    {
      v55 = 0;
    }

    else
    {
      if ([v20 conformsToMovie])
      {
        v21 = 1;
      }

      else if ([v20 conformsToAudio])
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }

      v55 = v21;
    }

    goto LABEL_15;
  }

  v16 = MEMORY[0x1E69C08F0];
  v17 = [v10 originalFilename];
  v18 = [v17 pathExtension];
  v19 = [v16 resourceModelTypeForFilenameExtension:v18];
  v15 = [v19 identifier];

  if (v15)
  {
    goto LABEL_6;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v11;
  v36 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v36)
  {
    goto LABEL_33;
  }

  v37 = v36;
  v38 = v10;
  v39 = *v59;
LABEL_21:
  v40 = 0;
  while (1)
  {
    if (*v59 != v39)
    {
      objc_enumerationMutation(v15);
    }

    v41 = *(*(&v58 + 1) + 8 * v40);
    if ([v41 resourceType] == 1)
    {
      break;
    }

    if (v37 == ++v40)
    {
      v37 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v37)
      {
        goto LABEL_21;
      }

      v55 = 0;
      v10 = v38;
      goto LABEL_15;
    }
  }

  v42 = [v41 identity];
  v43 = [v42 fileUTI];

  if (v43)
  {

    v15 = v43;
    v10 = v38;
    goto LABEL_6;
  }

  v44 = [v41 identity];
  v45 = [v44 fileURL];
  v46 = [v45 pathExtension];

  v10 = v38;
  if (!v46)
  {
LABEL_33:
    v55 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v47 = [MEMORY[0x1E69C08F0] resourceModelTypeForFilenameExtension:v46];
  v48 = [v47 identifier];

  if (v48)
  {
    v15 = v48;
    goto LABEL_6;
  }

  v55 = 0;
LABEL_16:
  v22 = [v9 identity];
  [v22 imageDimensions];
  v24 = v23;
  v26 = v25;
  v53 = [v9 resourceType];
  v27 = [v22 fileUTI];
  v54 = v9;
  v28 = [v22 fingerPrint];
  v29 = [v22 stableHash];
  v30 = [v22 fileSize];
  v31 = [v22 isAvailable];
  [v10 managedObjectContext];
  v33 = v32 = v10;
  LOBYTE(v52) = 0;
  LOWORD(v51) = v31;
  v34 = [v57 validatedExternalResourceFromExternalResourceCloudAttributes:v56 cplType:v53 assetType:v55 uti:v27 resourceWidth:v24 resourceHeight:v26 resourceFingerprint:v28 resourceStableHash:v29 resourceSize:v30 isAvailable:v51 fromAdjustedSet:0 resourceURL:v32 cloudMaster:v52 isForMigration:v33 context:?];

  return v34;
}

+ (unsigned)resourceVersionFromCPLType:(unint64_t)a3 fromAdjustedSet:(BOOL)a4
{
  v4 = a4;
  v5 = [a1 _isPenultimateVersionFromCPLType:a3];
  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

+ (id)validatedExternalResourceFromExternalResourceCloudAttributes:(id)a3 cplType:(unint64_t)a4 assetType:(signed __int16)a5 uti:(id)a6 resourceWidth:(unint64_t)a7 resourceHeight:(unint64_t)a8 resourceFingerprint:(id)a9 resourceStableHash:(id)a10 resourceSize:(unint64_t)a11 isAvailable:(BOOL)a12 fromAdjustedSet:(BOOL)a13 resourceURL:(id)a14 cloudMaster:(id)a15 isForMigration:(BOOL)a16 context:(id)a17
{
  v44 = a5;
  v20 = a3;
  v21 = a6;
  v22 = a9;
  v23 = a10;
  v24 = a14;
  v25 = a15;
  v26 = a17;
  if (!v20)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"externalResourceCloudAttributes"}];
  }

  v27 = v20;
  [v27 setVersion:{objc_msgSend(objc_opt_class(), "resourceVersionFromCPLType:fromAdjustedSet:", a4, a13)}];
  [v27 setResourceType:{objc_msgSend(objc_opt_class(), "resourceTypeFromCPLType:assetType:", a4, v44)}];
  [v27 setCplType:a4];
  if (v21)
  {
    [PLUniformTypeIdentifier utiWithIdentifier:v21];
    v28 = v21;
    v29 = v24;
    v30 = v23;
    v31 = v22;
    v32 = v26;
    v34 = v33 = v25;
    [v27 setUniformTypeIdentifier:v34];

    v25 = v33;
    v26 = v32;
    v22 = v31;
    v23 = v30;
    v24 = v29;
    v21 = v28;
  }

  v45 = 0;
  [a1 _recipeAndDerivativeStateFromCPLResourceType:a4 fromAdjustedSet:a13 assetType:v44 recipeID:&v45];
  [v27 setRecipeID:v45];
  [v27 setUnorientedWidth:a7];
  [v27 setUnorientedHeight:a8];
  [v27 setFileURL:v24];
  [v27 setFingerprint:v22];
  [v27 setStableHash:v23];
  [v27 setDataLength:a11];
  [v27 setRemoteAvailability:a12];
  if ([v27 hasRecipe])
  {
    if (a16)
    {
      if ([v27 hasRecipe])
      {
        v35 = [PLResourceRecipe recipeFromID:v45];
        [v35 codecFourCharCodeName];
        v36 = v26;
        v38 = v37 = v25;
        [v27 setCodecFourCharCode:v38];

        v25 = v37;
        v26 = v36;
      }
    }

    else
    {
      [a1 _applyColorSpaceAndCodecUsingFileToExternalResource:v27 managedObjectContext:v26];
    }
  }

  else
  {
    [a1 _applyCodecToNonDerivativeExternalResource:v27 fromCloudMaster:v25];
  }

  return v27;
}

+ (void)_applyCodecToNonDerivativeExternalResource:(id)a3 fromCloudMaster:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2596;
  v25 = __Block_byref_object_dispose__2597;
  v26 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __87__PLResourceInstaller_CPL___applyCodecToNonDerivativeExternalResource_fromCloudMaster___block_invoke;
  v18 = &unk_1E7578910;
  v20 = &v21;
  v7 = v6;
  v19 = v7;
  v8 = _Block_copy(&v15);
  if ([v5 resourceType] == 1)
  {
    v8[2](v8);
    v9 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v22[5]];
    v10 = [v9 plVideoCodecFourCharCodeString];
    if (v10)
    {
      [v5 setCodecFourCharCode:v10];
    }
  }

  else
  {
    if ([v5 resourceType] != 3)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x1E69C08F0];
    v12 = [v7 uniformTypeIdentifier];
    v13 = [v11 typeWithIdentifier:v12];
    v14 = [v13 conformsToType:*MEMORY[0x1E6982E00]];

    if (v14)
    {
      +[PLCodec HEVCfourCharCode];
    }

    else
    {
      +[PLCodec H264fourCharCode];
    }
    v9 = ;
    [v5 setCodecFourCharCode:v9];
  }

LABEL_10:
  _Block_object_dispose(&v21, 8);
}

void __87__PLResourceInstaller_CPL___applyCodecToNonDerivativeExternalResource_fromCloudMaster___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9[5] = v1;
    v9[6] = v2;
    v4 = [*(a1 + 32) mediaMetadata];
    v5 = [v4 valueForKey:@"data"];

    if (v5)
    {
      v9[0] = 0;
      v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:v9];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

+ (void)_applyColorSpaceAndCodecUsingFileToExternalResource:(id)a3 managedObjectContext:(id)a4
{
  v10 = a3;
  v4 = [v10 fileURL];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:0];

    if (v7)
    {
      if ([v10 resourceType] == 1 || objc_msgSend(v10, "resourceType") == 3)
      {
        v8 = [MEMORY[0x1E6987E28] assetWithURL:v4];
        v9 = [v8 plVideoCodecFourCharCodeString];
        if (v9)
        {
          [v10 setCodecFourCharCode:v9];
        }
      }
    }
  }
}

+ (unsigned)resourceTypeFromCPLType:(unint64_t)a3 assetType:(signed __int16)a4
{
  result = 31;
  switch(a3)
  {
    case 1uLL:
      if (a4 >= 3)
      {
        v8 = 31;
      }

      else
      {
        v8 = a4;
      }

      result = v8;
      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 0xFuLL:
      result = 0;
      break;
    case 6uLL:
    case 7uLL:
    case 0x10uLL:
    case 0x15uLL:
    case 0x19uLL:
    case 0x1CuLL:
      if (a4)
      {
        result = 1;
      }

      else
      {
        result = 3;
      }

      break;
    case 8uLL:
      result = 2;
      break;
    case 9uLL:
    case 0x16uLL:
      result = 5;
      break;
    case 0xAuLL:
    case 0x1BuLL:
      result = 9;
      break;
    case 0xBuLL:
    case 0xCuLL:
      return result;
    case 0xDuLL:
      result = 6;
      break;
    case 0xEuLL:
      result = 7;
      break;
    case 0x11uLL:
      result = 4;
      break;
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
      result = 3;
      break;
    case 0x17uLL:
      result = 10;
      break;
    case 0x18uLL:
      result = 11;
      break;
    case 0x1AuLL:
      result = 13;
      break;
    default:
      if (a3 == 1000)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:420 description:@"Unexpected CPL type: CPLResourceTypeAdjustmentOriginalResource"];

        result = 31;
      }

      break;
  }

  return result;
}

+ (void)_recipeAndDerivativeStateFromCPLResourceType:(unint64_t)a3 fromAdjustedSet:(BOOL)a4 assetType:(signed __int16)a5 recipeID:(unsigned int *)a6
{
  v7 = a5;
  v8 = a4;
  if (!a6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"outRecipeID"}];
  }

  *a6 = [objc_opt_class() recipeIDFromCPLResourceType:a3 assetType:v7 fromAdjustedSet:v8];
}

+ (unsigned)recipeIDFromCPLResourceType:(unint64_t)a3 assetType:(signed __int16)a4 fromAdjustedSet:(BOOL)a5
{
  result = 0;
  if (a3 <= 9)
  {
    if (a4)
    {
      v7 = 131079;
    }

    else
    {
      v7 = 131275;
    }

    v8 = 131277;
    if (a4)
    {
      v8 = 131081;
    }

    if (a3 != 7)
    {
      v8 = 0;
    }

    if (a3 == 6)
    {
      v8 = v7;
    }

    if (a3 == 5)
    {
      v9 = 65743;
    }

    else
    {
      v9 = v8;
    }

    v10 = 65938;
    if (!a5)
    {
      v10 = 65737;
    }

    v11 = 65741;
    if (a3 != 4)
    {
      v11 = 0;
    }

    if (a3 == 3)
    {
      v11 = 65739;
    }

    if (a3 == 2)
    {
      v11 = v10;
    }

    if (a3 <= 4)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  if (a3 <= 20)
  {
    if (a3 != 10)
    {
      if (a5)
      {
        v12 = 0x20000;
      }

      else
      {
        v12 = 131075;
      }

      v13 = 131272;
      if (a3 != 19)
      {
        v13 = 0;
      }

      if (a3 == 16)
      {
        return v12;
      }

      else
      {
        return v13;
      }
    }

    return 327683;
  }

  if (a3 > 27)
  {
    if (a3 == 28)
    {
      return 131475;
    }

    if (a3 == 1000)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:292 description:@"Unexpected CPL type: CPLResourceTypeAdjustmentOriginalResource"];

      return 0;
    }

    return result;
  }

  if (a3 == 21)
  {
    return 131077;
  }

  if (a3 == 27)
  {
    return 327683;
  }

  return result;
}

+ (unint64_t)nonDerivativeCPLTypeFromResourceType:(unsigned int)a3 version:(unsigned int)a4 uniformTypeIdentifier:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 == 2)
  {
    if (a3 >= 8)
    {
      goto LABEL_22;
    }

    v12 = &unk_19C60B160;
    goto LABEL_16;
  }

  if (a4 == 1)
  {
    if (a3 >= 4)
    {
      goto LABEL_22;
    }

    v12 = &unk_19C60B1A0;
LABEL_16:
    v11 = v12[a3];
    goto LABEL_23;
  }

  if (a4)
  {
    goto LABEL_22;
  }

  if (a3 <= 3)
  {
    v9 = 8;
    v10 = 18;
    if (a3 != 3)
    {
      v10 = 0;
    }

    if (a3 != 2)
    {
      v9 = v10;
    }

    if (a3 >= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_23;
  }

  if (a3 <= 9)
  {
    if (a3 == 4)
    {
      v11 = 17;
      goto LABEL_23;
    }

    if (a3 == 5)
    {
      v13 = [v7 identifier];
      v14 = [MEMORY[0x1E69C08F0] supplementalResourceXMPType];
      v15 = [v14 identifier];
      v16 = [v13 isEqualToString:v15];

      if (v16)
      {
        v11 = 9;
      }

      else
      {
        v19 = [v8 identifier];
        v20 = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
        v21 = [v20 identifier];
        v22 = [v19 isEqualToString:v21];

        if (v22)
        {
          v11 = 22;
        }

        else
        {
          v11 = 0;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v18 = 24;
  if (a3 != 11)
  {
    v18 = 0;
  }

  if (a3 == 10)
  {
    v11 = 23;
  }

  else
  {
    v11 = v18;
  }

LABEL_23:

  return v11;
}

+ (unint64_t)derivativeCPLTypeFromRecipeID:(unsigned int)a3 version:(unsigned int)a4
{
  v8 = [PLResourceRecipe recipeFromID:?];
  v9 = [v8 isDerivative];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller+CPL.m" lineNumber:50 description:@"only derivative recipes support mapping to CPL type."];
  }

  if (a3 <= 131078)
  {
    if (a3 > 65742)
    {
      switch(a3)
      {
        case 0x100CFu:
          return 5;
        case 0x20003u:
          return 16;
        case 0x20005u:
          return 21;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x100C9u:
          return 2;
        case 0x100CBu:
          return 3;
        case 0x100CDu:
          return 4;
      }
    }

    return 0;
  }

  if (a3 <= 131276)
  {
    if (a3 == 131079)
    {
      return 6;
    }

    if (a3 != 131081)
    {
      if (a3 != 131275)
      {
        return 0;
      }

      return 6;
    }

    return 7;
  }

  if (a3 == 131277)
  {
    return 7;
  }

  if (a3 == 131475)
  {
    return 28;
  }

  if (a3 != 327683)
  {
    return 0;
  }

  v11 = 27;
  if (a4 != 2)
  {
    v11 = 0;
  }

  if (a4)
  {
    return v11;
  }

  else
  {
    return 10;
  }
}

+ (id)generatedValidatedExternalSyndicationResourceOfType:(unsigned int)a3 version:(unsigned int)a4 recipeID:(unsigned int)a5 fileURL:(id)a6 requireFileToBePresent:(BOOL)a7 uniformTypeIdentifier:(id)a8
{
  v9 = a7;
  v10 = *&a5;
  v11 = *&a4;
  v12 = *&a3;
  v14 = a6;
  v15 = a8;
  v16 = objc_alloc_init(PLSyndicationValidatedExternalResource);
  [(PLValidatedExternalResource *)v16 setResourceType:v12];
  [(PLValidatedExternalResource *)v16 setVersion:v11];
  [(PLValidatedExternalResource *)v16 setRecipeID:v10];
  [(PLValidatedExternalResource *)v16 setUniformTypeIdentifier:v15];

  if (v14 && (-[PLValidatedExternalResource setFileURL:](v16, "setFileURL:", v14), (v17 = [a1 _getURLDataLength:v14]) != 0))
  {
    [(PLValidatedExternalResource *)v16 setDataLength:v17];
  }

  else if (v9)
  {

    v16 = 0;
  }

  return v16;
}

+ (id)generateValidatedExternalOtherResourceOfType:(unsigned int)a3 forFilePath:(id)a4 uti:(id)a5 requireFileToBePresent:(BOOL)a6 version:(unsigned int)a7
{
  v7 = *&a7;
  v8 = a6;
  v10 = *&a3;
  v12 = a4;
  v13 = a5;
  if (v12)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
    v15 = [a1 _getURLDataLength:v14];
    v16 = v15 != 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v15 = 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (!v16)
  {
    v17 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v17 = objc_alloc_init(PLValidatedExternalResource);
  [(PLValidatedExternalResource *)v17 setResourceType:v10];
  [(PLValidatedExternalResource *)v17 setVersion:v7];
  [(PLValidatedExternalResource *)v17 setUniformTypeIdentifier:v13];
  [(PLValidatedExternalResource *)v17 setDataLength:v15];
  [(PLValidatedExternalResource *)v17 setFileURL:v14];
LABEL_8:

  return v17;
}

+ (id)generateValidatedExternalImageResourceOfType:(unsigned int)a3 forFilePath:(id)a4 requireFileToBePresent:(BOOL)a5 version:(unsigned int)a6 basedOnFullSizeWidth:(int64_t)a7 andHeight:(int64_t)a8 recipe:(id)a9 assetKind:(signed __int16)a10 error:(id *)a11
{
  v11 = *&a6;
  v12 = a5;
  v13 = *&a3;
  v32[1] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a9;
  if (v15)
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:0];
    v18 = [a1 _getURLDataLength:v17];
    v19 = v18 != 0;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    if (!v12)
    {
LABEL_9:
      v26 = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)v26 setResourceType:v13];
      [(PLValidatedExternalResource *)v26 setVersion:v11];
      -[PLValidatedExternalResource setRecipeID:](v26, "setRecipeID:", [v16 recipeID]);
      if (v19)
      {
        [(PLValidatedExternalResource *)v26 setFileURL:v17];
        [(PLValidatedExternalResource *)v26 setDataLength:v18];
      }

      LOWORD(v28) = a10;
      [objc_opt_class() _applyImageIOMetadataToExternalResource:v26 fromFileURL:v17 fileExists:v19 assumedWidth:a7 assumedHeight:a8 recipe:v16 assetKind:v28];
      [(PLValidatedExternalResource *)v26 setTrashedStateFromURL];
      goto LABEL_12;
    }
  }

  if (v19)
  {
    goto LABEL_9;
  }

  v20 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A250];
  v31 = *MEMORY[0x1E696A278];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"file does not exist at path: %@", v15];
  v32[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v24 = [v20 errorWithDomain:v21 code:4 userInfo:v23];

  if (a11)
  {
    v25 = v24;
    *a11 = v24;
  }

  v26 = 0;
LABEL_12:

  return v26;
}

+ (id)externalResourcesForExistingAsset:(id)a3 referencedResourceURLs:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:1480 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [MEMORY[0x1E695DF70] array];
  if ([v7 isCloudSharedAsset])
  {
    v10 = [a1 _validatedExternalResourcesFromSharedStreamAsset:v7];
LABEL_8:
    v11 = v10;
    [v9 addObjectsFromArray:v10];
    goto LABEL_9;
  }

  if (![v7 kind] || objc_msgSend(v7, "kind") == 1)
  {
    v10 = [a1 _validatedExternalResourcesFromLocalImageOrVideoAsset:v7 referencedResourceURLs:v8];
    goto LABEL_8;
  }

  v11 = [a1 _validatedExternalResourceIfPresentForAudioOrUnknownAsset:v7];
  if (v11)
  {
    [v9 addObject:v11];
  }

LABEL_9:

  return v9;
}

+ (BOOL)installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:(id)a3 migrator:(id)a4
{
  v43[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLImageManagerGetLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  v32 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LibraryMigration", "", buf, 2u);
  }

  spid = v9;

  context = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v43[0] = @"modernResources";
  v43[1] = @"additionalAttributes";
  v43[2] = @"master";
  v43[3] = @"master.resources";
  v43[4] = @"master.mediaMetadata";
  v43[5] = @"resources";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
  [v14 setRelationshipKeyPathsForPrefetching:v15];

  v16 = objc_alloc_init(PLSidecarFinder);
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLResourceInstaller installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:migrator:]"];
  v18 = [PLEnumerateAndSaveController alloc];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __119__PLResourceInstaller_installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext_migrator___block_invoke;
  v37[3] = &unk_1E7574590;
  v19 = v7;
  v38 = v19;
  v20 = v17;
  v39 = v20;
  v21 = v6;
  v40 = v21;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __119__PLResourceInstaller_installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext_migrator___block_invoke_2;
  v34[3] = &unk_1E756C570;
  v36 = a1;
  v22 = v16;
  v35 = v22;
  v23 = [(PLEnumerateAndSaveController *)v18 initWithName:v20 fetchRequest:v14 context:v21 options:5 generateContextBlock:v37 didFetchObjectIDsBlock:0 processResultBlock:v34];
  v33 = 0;
  v24 = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&v33];
  v25 = v33;
  if (!v24)
  {
    v26 = PLMigrationGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v25;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Failed to finish batch processing to migrate resources with error: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
  v27 = v11;
  v28 = v27;
  if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, spid, "LibraryMigration", "", buf, 2u);
  }

  return v24;
}

id __119__PLResourceInstaller_installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext_migrator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UTF8String];
  v4 = [*(a1 + 48) persistentStoreCoordinator];
  v5 = [v2 managedObjectContextForMigrationWithName:v3 persistentStoreCoordinator:v4 concurrencyType:1];

  v6 = [*(a1 + 48) transactionAuthor];
  [v5 setTransactionAuthor:v6];

  return v5;
}

void __119__PLResourceInstaller_installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext_migrator___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0;
  v19 = 0;
  v7 = *(a1 + 40);
  v17 = 0;
  v8 = [v7 _installInternalResourcesForExistingAsset:v6 assumeNoExistingResources:1 referencedResourceURLs:0 includeLegacyCloudResources:1 outResourcesStoreCount:&v19 error:&v17];
  v9 = v17;
  if (!v8 || (v11 = *(a1 + 32), v10 = *(a1 + 40), v16 = v9, v12 = [v10 recoverSupplementalResourcesForAsset:v6 usingSidecarFinder:v11 outResourcesStoreCount:&v18 error:&v16], v13 = v16, v9, v9 = v13, (v12 & 1) == 0))
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v6 uuid];
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error creating internal resources for asset during migration for UUID: %@, reason: %@", buf, 0x16u);
    }

    *a4 = 1;
  }
}

+ (BOOL)removeLegacyCloudResourcesInStore:(id)a3 migrator:(id)a4
{
  v4 = [a4 managedObjectContextForMigrationInStore:a3 name:"+[PLResourceInstaller removeLegacyCloudResourcesInStore:migrator:]" concurrencyType:*MEMORY[0x1E695D708]];
  v5 = +[PLCloudResource entityName];
  v6 = [PLModelMigrator executeBatchDeleteWithEntityName:v5 predicate:0 managedObjectContext:v4 error:0];

  return v6;
}

+ (BOOL)createInternalResourcesForExistingAssetsWithNoExistingResourcesInStore:(id)a3 migrator:(id)a4
{
  v6 = *MEMORY[0x1E695D708];
  v7 = a4;
  v8 = [v7 managedObjectContextForMigrationInStore:a3 name:"+[PLResourceInstaller createInternalResourcesForExistingAssetsWithNoExistingResourcesInStore:migrator:]" concurrencyType:v6];
  LOBYTE(a1) = [a1 installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:v8 migrator:v7];

  return a1;
}

+ (BOOL)resetInternalResourcesInStore:(id)a3 resetUTIs:(BOOL)a4 resetCodecs:(BOOL)a5 resetMasters:(BOOL)a6 migrator:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = objc_autoreleasePoolPush();
  v14 = [v12 managedObjectContextForMigrationInStore:v11 name:"+[PLResourceInstaller resetInternalResourcesInStore:resetUTIs:resetCodecs:resetMasters:migrator:]" concurrencyType:*MEMORY[0x1E695D708]];
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = [a1 _predicateForUnrecoverableResources];
  }

  v16 = +[PLInternalResource entityName];
  v17 = [PLModelMigrator executeBatchDeleteWithEntityName:v16 predicate:v15 managedObjectContext:v14 error:0];

  v18 = !a6;
  LOBYTE(v19) = !a6 && v17;
  if (!v18 && v17)
  {
    v20 = +[PLCloudResource entityName];
    v19 = [PLModelMigrator executeBatchDeleteWithEntityName:v20 predicate:0 managedObjectContext:v14 error:0];

    if (v19)
    {
      v21 = +[PLCloudMaster entityName];
      LOBYTE(v19) = [PLModelMigrator executeBatchDeleteWithEntityName:v21 predicate:0 managedObjectContext:v14 error:0];
    }
  }

  objc_autoreleasePoolPop(v13);
  return v19;
}

+ (BOOL)reconsiderSavedAssetTypeInStore:(id)a3 migrator:(id)a4
{
  v35[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 isCloudPhotoLibraryEnabled])
  {
    v7 = 1;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"PhotoData", @"CPLAssets"];
    v9 = [v6 managedObjectContextForMigrationInStore:v5 name:"+[PLResourceInstaller reconsiderSavedAssetTypeInStore:migrator:]" concurrencyType:*MEMORY[0x1E695D708]];
    v10 = MEMORY[0x1E695D560];
    v11 = +[PLManagedAsset entityName];
    v12 = [v10 batchUpdateRequestWithEntityName:v11];

    v13 = MEMORY[0x1E696AB28];
    v14 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCameraAsset"), 1}];
    v35[0] = v14;
    v15 = MEMORY[0x1E696AE18];
    v28 = v8;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@*", v8];
    v17 = [v15 predicateWithFormat:@"%K LIKE %@", @"directory", v16];
    v35[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v19 = [v13 andPredicateWithSubpredicates:v18];

    [v12 setPredicate:v19];
    v33 = @"savedAssetType";
    v20 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(MEMORY[0x1E69BF328], "savedAssetTypeForCloudPhotoLibraryAsset")}];
    v34 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v12 setPropertiesToUpdate:v21];

    [v12 setResultType:2];
    v30 = 0;
    v22 = [v9 executeRequest:v12 error:&v30];
    v23 = v30;
    v7 = v22 != 0;
    v24 = PLMigrationGetLog();
    v25 = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v22 result];
        *buf = 138412290;
        v32 = v26;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Fixing savedAssetType successful with result %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v23;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Batch update request failed, reconsidering savedAssetType, error: %@", buf, 0xCu);
    }

    [v9 reset];
    objc_autoreleasePoolPop(context);
  }

  return v7;
}

+ (BOOL)resetImageRequestHintsInContext:(id)a3 allowOneTimeThumbRebuild:(BOOL)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v43[0] = @"modernResources";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v37 = 0;
  v38 = &v37;
  v39 = 0x3020000000;
  v40 = 0;
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLResourceInstaller resetImageRequestHintsInContext:allowOneTimeThumbRebuild:]"];
  v11 = [v5 pathManager];
  v12 = [v5 persistentStoreCoordinator];
  v13 = [v5 transactionAuthor];
  v14 = [PLEnumerateAndSaveController alloc];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke;
  v32[3] = &unk_1E756C520;
  v15 = v10;
  v33 = v15;
  v16 = v12;
  v34 = v16;
  v17 = v13;
  v35 = v17;
  v18 = v11;
  v36 = v18;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke_3;
  v30[3] = &unk_1E756C548;
  v31 = a4;
  v30[4] = &v37;
  v19 = [(PLEnumerateAndSaveController *)v14 initWithName:v15 fetchRequest:v8 context:v5 options:5 generateContextBlock:v32 didFetchObjectIDsBlock:0 processResultBlock:v30];
  v29 = 0;
  v20 = [(PLEnumerateAndSaveController *)v19 processObjectsWithError:&v29];
  v21 = v29;
  if (v20)
  {
    v22 = PLMigrationGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = atomic_load(v38 + 10);
      *buf = 134217984;
      v42 = v23;
      v24 = "Reset %ld asset image request hints.";
      v25 = v22;
      v26 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v25, v26, v24, buf, 0xCu);
    }
  }

  else
  {
    v22 = PLMigrationGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v21;
      v24 = "Error resetting image request hints, %@";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  _Block_object_dispose(&v37, 8);
  objc_autoreleasePoolPop(context);

  return v20;
}

id __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  [v2 setName:*(a1 + 32)];
  [v2 setPersistentStoreCoordinator:*(a1 + 40)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke_2;
  v7[3] = &unk_1E75761B8;
  v3 = v2;
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v3 performBlockAndWait:v7];
  v4 = v10;
  v5 = v3;

  return v3;
}

void __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 40) == 1)
  {
    [v4 setThumbnailIndex:4294967293];
    v4 = v5;
  }

  [v4 setImageRequestHints:0];
  [v5 recalculateImageRequestHints];
  atomic_fetch_add((*(*(a1 + 32) + 8) + 40), 1u);
}

void __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransactionAuthor:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) userInfo];
  [v3 setObject:v2 forKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
}

+ (id)_validatedExternalResourcesFromSharedStreamAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 assetID];
  v5 = [v4 libraryID];
  v6 = PLDataStoreForClassIDAndLibraryID(2, v5);

  v7 = [v6 requiredExternalResourcesForMigratingOrImportingAsset:v3];

  return v7;
}

+ (id)generateVideoResourcesFromVideoAsset:(id)a3 referencedVideoPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v6 managedObjectContext];
  v10 = v7;
  v11 = v10;
  if (!v10)
  {
    v11 = [v6 pathForOriginalFile];
  }

  v12 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v11 context:v9];
  v13 = v12;
  if (v12)
  {
    [v12 setResourceType:1];
    [v13 setVersion:0];
    [v8 addObject:v13];
  }

  v14 = [v6 pathForNonAdjustedLargeVideoFile];
  v15 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v14 context:v9];
  v16 = v15;
  if (v15)
  {
    [v15 setResourceType:1];
    [v16 setVersion:0];
    [v16 setRecipeID:131077];
    [v8 addObject:v16];
  }

  v17 = [v6 pathForNonAdjustedMediumVideoFile];
  v18 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v17 context:v9];
  v19 = v18;
  if (v18)
  {
    [v18 setResourceType:1];
    [v19 setVersion:0];
    [v19 setRecipeID:131079];
    [v8 addObject:v19];
  }

  v20 = [v6 pathForNonAdjustedMediumHDRVideoFile];
  v21 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v20 context:v9];
  v22 = v21;
  if (v21)
  {
    [v21 setResourceType:1];
    [v22 setVersion:0];
    [v22 setRecipeID:131475];
    [v8 addObject:v22];
  }

  v23 = [v6 pathForNonAdjustedSmallVideoFile];
  v24 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v23 context:v9];
  v25 = v24;
  if (v24)
  {
    [v24 setResourceType:1];
    [v25 setVersion:0];
    [v25 setRecipeID:131081];
    [v8 addObject:v25];
  }

  if ([v6 hasAdjustments] && (objc_msgSend(v6, "isDefaultAdjustedSlomo") & 1) == 0)
  {
    v26 = [v6 hasUnrenderedAsyncAdjustments];
    v27 = [v6 pathForFullsizeRenderVideoFile];
    v28 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v27 context:v9];
    if (!v28 && v26)
    {
      v29 = [PLResourceRecipe recipeFromID:0x20000];
      v28 = objc_alloc_init(PLValidatedExternalResource);
      v30 = [v29 codecFourCharCodeName];
      [(PLValidatedExternalResource *)v28 setCodecFourCharCode:v30];

      v31 = [v29 uti];
      [(PLValidatedExternalResource *)v28 setUniformTypeIdentifier:v31];
    }

    if (v28)
    {
      [(PLValidatedExternalResource *)v28 setResourceType:1];
      [(PLValidatedExternalResource *)v28 setVersion:2];
      [(PLValidatedExternalResource *)v28 setRecipeID:0x20000];
      [v8 addObject:v28];
    }

    v32 = [v6 pathForPenultimateFullsizeRenderVideoFile];
    v33 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v32 context:v9];
    v34 = v33;
    if (v33)
    {
      [v33 setResourceType:1];
      [v34 setVersion:1];
      [v8 addObject:v34];
    }

    v35 = [v6 pathForAdjustedLargeVideoFile];
    v36 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v35 context:v9];
    v37 = v36;
    if (v36)
    {
      [v36 setResourceType:1];
      [v37 setVersion:2];
      [v37 setRecipeID:131077];
      [v8 addObject:v37];
    }

    v38 = [v6 pathForAdjustedMediumVideoFile];
    v39 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v38 context:v9];
    v40 = v39;
    if (v39)
    {
      [v39 setResourceType:1];
      [v40 setVersion:2];
      [v40 setRecipeID:131079];
      [v8 addObject:v40];
    }

    v41 = [v6 pathForAdjustedMediumHDRVideoFile];
    v42 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v41 context:v9];
    v43 = v42;
    if (v42)
    {
      [v42 setResourceType:1];
      [v43 setVersion:2];
      [v43 setRecipeID:131475];
      [v8 addObject:v43];
    }

    v44 = [v6 pathForAdjustedSmallVideoFile];
    v45 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v44 context:v9];
    v46 = v45;
    if (v45)
    {
      [v45 setResourceType:1];
      [v46 setVersion:2];
      [v46 setRecipeID:131081];
      [v8 addObject:v46];
    }
  }

  return v8;
}

+ (id)validatedExternalResourceForLocalVideoIfPresentAtPath:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 _getURLDataLength:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E6987E28] assetWithURL:v8];
    if (v11)
    {
      v12 = objc_alloc_init(PLValidatedExternalResource);
      v13 = [v11 plVideoCodecFourCharCodeString];
      if (v13)
      {
        [(PLValidatedExternalResource *)v12 setCodecFourCharCode:v13];
      }

      [PLManagedAsset dimensionsForAVAsset:v11];
      v15 = v14;
      [(PLValidatedExternalResource *)v12 setUnorientedWidth:v16];
      [(PLValidatedExternalResource *)v12 setUnorientedHeight:v15];
      [(PLValidatedExternalResource *)v12 setFileURL:v8];
      [(PLValidatedExternalResource *)v12 setDataLength:v10];
      v17 = MEMORY[0x1E69C08F0];
      v18 = [v6 pathExtension];
      v19 = [v17 resourceModelTypeForFilenameExtension:v18];
      v20 = [v19 identifier];

      if (v20)
      {
        v21 = [PLUniformTypeIdentifier utiWithIdentifier:v20];
        [(PLValidatedExternalResource *)v12 setUniformTypeIdentifier:v21];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_storeValidatedLocalExternalResource:(id)a3 forAsset:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v20[0] = v5;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = [v6 arrayWithObjects:v20 count:1];
  v17 = 0;
  v9 = [PLResourceDataStoreManager storeExternalResources:v8 forAsset:v7 forLifecycleEvent:2 error:&v17];

  v10 = v17;
  if (v9)
  {
    v11 = [v9 anyObject];
    v12 = [MEMORY[0x1E69BF2D0] successWithResult:v11];
  }

  else
  {
    if (!v10)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF70];
      v18 = *MEMORY[0x1E696A278];
      v19 = @"resource was not stored";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v10 = [v13 errorWithDomain:v14 code:1 userInfo:v15];
    }

    v12 = [MEMORY[0x1E69BF2D0] failureWithError:v10];
  }

  return v12;
}

+ (id)_validatedExternalResourcesFromLocalImageOrVideoAsset:(id)a3 referencedResourceURLs:(id)a4
{
  v6 = a3;
  v109 = a4;
  v108 = [MEMORY[0x1E695DF70] array];
  v107 = [v6 managedObjectContext];
  v106 = [v6 hasAdjustments];
  v7 = [v6 width];
  v8 = [v6 height];
  if (![v6 kind])
  {
    v9 = [v109 objectForKeyedSubscript:&unk_1F0FBC808];
    if (!v9)
    {
      v9 = [v6 mainFileURL];
    }

    v10 = [a1 _getURLDataLength:v9];
    if (v10)
    {
      v11 = v10;
      v12 = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)v12 setResourceType:0];
      [(PLValidatedExternalResource *)v12 setVersion:0];
      [(PLValidatedExternalResource *)v12 setFileURL:v9];
      [(PLValidatedExternalResource *)v12 setDataLength:v11];
      v13 = [v6 originalUniformTypeIdentifier];
      v14 = [PLUniformTypeIdentifier utiWithIdentifier:v13];

      [(PLValidatedExternalResource *)v12 setUniformTypeIdentifier:v14];
      -[PLValidatedExternalResource setUnorientedWidth:](v12, "setUnorientedWidth:", [v6 originalWidth]);
      -[PLValidatedExternalResource setUnorientedHeight:](v12, "setUnorientedHeight:", [v6 originalHeight]);
      [v108 addObject:v12];
    }

    else
    {
      v89 = [v6 additionalAttributes];
      v90 = [v89 deferredPhotoIdentifier];
      if (v90)
      {
        v91 = [v6 deferredProcessingNeeded] == 1 || objc_msgSend(v6, "deferredProcessingNeeded") == 5;
      }

      else
      {
        v91 = 0;
      }

      v96 = [v6 deferredProcessingNeeded];
      if (!v91 && v96 != 10)
      {
        goto LABEL_8;
      }

      v12 = [v6 pathForDeferredProcessingPreviewFile];
      if (!v12)
      {
LABEL_7:

LABEL_8:
        goto LABEL_9;
      }

      if (v91)
      {
        v97 = 202;
      }

      else
      {
        v97 = 210;
      }

      v98 = [PLResourceRecipe recipeFromID:(v97 + 65741)];
      v99 = [v6 originalWidth];
      v100 = [v6 originalHeight];
      LOWORD(v101) = [v6 kind];
      v14 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v12 requireFileToBePresent:1 version:0 basedOnFullSizeWidth:v99 andHeight:v100 recipe:v98 assetKind:v101 error:0];
      if (v14)
      {
        [v108 addObject:v14];
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  if (([v6 cameraProcessingAdjustmentState] & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([v6 kind])
  {
    if ([v6 kind] != 1)
    {
      goto LABEL_21;
    }

    v15 = [v109 objectForKeyedSubscript:&unk_1F0FBC7D8];
    v16 = [v15 path];

    if (!v16)
    {
      v16 = [v6 pathForSpatialOverCaptureContentFile];
    }

    v17 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v16 context:v107];
    v18 = v17;
    if (!v17)
    {
      goto LABEL_20;
    }

    [v17 setResourceType:10];
    [v18 setVersion:0];
    [v18 setTrashedStateFromURL];
    goto LABEL_19;
  }

  if ([v6 deferredProcessingNeeded] == 1 || objc_msgSend(v6, "deferredProcessingNeeded") == 6)
  {
    v16 = [PLResourceRecipe recipeFromID:65946];
    v19 = [v6 pathForSpatialOverCaptureContentFile];
    v20 = [v6 originalHeight];
    v21 = [v6 originalWidth];
    LOWORD(v101) = [v6 kind];
    v18 = [a1 generateValidatedExternalImageResourceOfType:10 forFilePath:v19 requireFileToBePresent:0 version:0 basedOnFullSizeWidth:v20 andHeight:v21 recipe:v16 assetKind:v101 error:0];

    if (!v18)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    [v108 addObject:v18];
    goto LABEL_20;
  }

  v92 = [v109 objectForKeyedSubscript:&unk_1F0FBC7D8];
  v16 = [v92 path];

  if (v16)
  {
LABEL_84:
    v94 = [v6 originalWidth];
    v95 = [v6 originalHeight];
    LOWORD(v101) = [v6 kind];
    v18 = [a1 generateValidatedExternalImageResourceOfType:10 forFilePath:v16 requireFileToBePresent:1 version:0 basedOnFullSizeWidth:v94 andHeight:v95 recipe:0 assetKind:v101 error:0];
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v93 = [v6 pathForSpatialOverCaptureContentFile];
  if (v93)
  {
    v16 = v93;
    goto LABEL_84;
  }

LABEL_21:
  v22 = [PLResourceRecipe recipeFromID:65737];
  v23 = [v6 pathForNonAdjustedFullsizeImageFile];
  v24 = [v6 originalWidth];
  v25 = [v6 originalHeight];
  LOWORD(v101) = [v6 kind];
  v26 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v23 requireFileToBePresent:1 version:0 basedOnFullSizeWidth:v24 andHeight:v25 recipe:v22 assetKind:v101 error:0];

  if (v26)
  {
    [v108 addObject:v26];
  }

  v27 = [PLResourceRecipe recipeFromID:65741];
  v28 = [v6 pathForNonAdjustedLargeThumbnailFile];
  v29 = [v6 originalWidth];
  v30 = [v6 originalHeight];
  LOWORD(v102) = [v6 kind];
  v31 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v28 requireFileToBePresent:1 version:0 basedOnFullSizeWidth:v29 andHeight:v30 recipe:v27 assetKind:v102 error:0];

  v32 = v108;
  if (v31)
  {
    [v108 addObject:v31];
  }

  if ([v6 kindSubtype] == 2)
  {
    v33 = [v109 objectForKeyedSubscript:&unk_1F0FBC820];
    v34 = [v33 path];

    if (!v34)
    {
      v34 = [v6 pathForVideoComplementFile];
    }

    v35 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v34 context:v107];
    v36 = v35;
    if (v35)
    {
      [v35 setResourceType:3];
      [v36 setVersion:0];
      [v108 addObject:v36];
    }

    if ([v6 cameraProcessingAdjustmentState])
    {
      v37 = [v109 objectForKeyedSubscript:&unk_1F0FBC7F0];
      v38 = [v37 path];

      if (!v38)
      {
        v38 = [v6 pathForVideoComplementSpatialOverCaptureContentFile];
      }

      v39 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v38 context:v107];
      v40 = v39;
      if (v39)
      {
        [v39 setResourceType:11];
        [v40 setVersion:0];
        [v40 setTrashedStateFromURL];
        [v108 addObject:v40];
      }
    }
  }

  if (v106)
  {
    v41 = [PLResourceRecipe recipeFromID:65937];
    v42 = [v6 pathForSubstandardFullsizeRenderImageFile];
    LOWORD(v103) = [v6 kind];
    v43 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v42 requireFileToBePresent:1 version:2 basedOnFullSizeWidth:v7 andHeight:v8 recipe:v41 assetKind:v103 error:0];

    if (v43)
    {
      [v108 addObject:v43];
    }

    if ([v6 hasUnrenderedAsyncAdjustments])
    {
      v44 = [PLResourceRecipe recipeFromID:65941];
      v45 = [v6 pathForAsyncAdjustedRenderPreviewImageFile];
      LOWORD(v104) = [v6 kind];
      v46 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v45 requireFileToBePresent:1 version:2 basedOnFullSizeWidth:v7 andHeight:v8 recipe:v44 assetKind:v104 error:0];

      v32 = v108;
      if (v46)
      {
        [v108 addObject:v46];
      }
    }

    v47 = !v43 && ![v6 hasUnrenderedAsyncAdjustments] || objc_msgSend(v6, "kind") != 0;
    v48 = [v6 pathForAdjustedFullsizeImageFile];
    v49 = [a1 generateAdjustedFullSizeRenderResourceForFilePath:v48 requireFileToBePresent:v47 basedOnFullSizeWidth:v7 andHeight:v8];

    if (v49)
    {
      [v32 addObject:v49];
    }

    v50 = [a1 _speculativePathForPenultimateFullsizeRenderImageFileForAsset:v6];
    LOWORD(v104) = [v6 kind];
    v51 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v50 requireFileToBePresent:1 version:1 basedOnFullSizeWidth:v7 andHeight:v8 recipe:0 assetKind:v104 error:0];

    if (v51)
    {
      [v32 addObject:v51];
    }

    v52 = [PLResourceRecipe recipeFromID:65741];
    v53 = [v6 pathForAdjustedLargeThumbnailFile];
    LOWORD(v105) = [v6 kind];
    v54 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v53 requireFileToBePresent:1 version:2 basedOnFullSizeWidth:v7 andHeight:v8 recipe:v52 assetKind:v105 error:0];

    if (v54)
    {
      [v32 addObject:v54];
    }

    v55 = [*MEMORY[0x1E6982D60] identifier];
    v56 = [PLUniformTypeIdentifier utiWithIdentifier:v55];

    v57 = [v6 pathForAdjustmentSecondaryDataFile];
    v58 = [a1 generateValidatedExternalOtherResourceOfType:7 forFilePath:v57 uti:v56 requireFileToBePresent:1 version:2];

    if (v58)
    {
      [v32 addObject:v58];
    }

    if ([v6 kindSubtype] == 2)
    {
      v59 = [v6 hasUnrenderedAsyncAdjustments];
      v60 = [v6 pathForFullsizeRenderVideoFile];
      v61 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v60 context:v107];
      if (!v61 && v59)
      {
        v62 = [PLResourceRecipe recipeFromID:131272];
        v61 = objc_alloc_init(PLValidatedExternalResource);
        v63 = [v62 codecFourCharCodeName];
        [(PLValidatedExternalResource *)v61 setCodecFourCharCode:v63];

        v64 = [v62 uti];
        [(PLValidatedExternalResource *)v61 setUniformTypeIdentifier:v64];
      }

      if (v61)
      {
        [(PLValidatedExternalResource *)v61 setResourceType:3];
        [(PLValidatedExternalResource *)v61 setVersion:2];
        [(PLValidatedExternalResource *)v61 setRecipeID:131272];
        [v32 addObject:v61];
      }

      v65 = [v6 pathForPenultimateFullsizeRenderVideoFile];
      v66 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v65 context:v107];
      v67 = v66;
      if (v66)
      {
        [v66 setResourceType:3];
        [v67 setVersion:1];
        [v32 addObject:v67];
      }
    }
  }

  if ([v6 kind] == 1)
  {
    v68 = [v109 objectForKeyedSubscript:&unk_1F0FBC838];
    v69 = [v68 path];
    v70 = [a1 generateVideoResourcesFromVideoAsset:v6 referencedVideoPath:v69];
    [v32 addObjectsFromArray:v70];

    v71 = [PLResourceRecipe recipeFromID:65948];
    v72 = [v6 pathForTransientVideoPosterFramePreview];
    v73 = [v6 width];
    v74 = [v6 height];
    LOWORD(v103) = [v6 kind];
    v75 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v72 requireFileToBePresent:1 version:2 basedOnFullSizeWidth:v73 andHeight:v74 recipe:v71 assetKind:v103 error:0];

    if (v75)
    {
      [v32 addObject:v75];
    }
  }

  v76 = [v109 objectForKeyedSubscript:&unk_1F0FBC850];
  v77 = [v76 path];

  if (!v77)
  {
    v77 = [v6 pathForOriginalAdjustmentFile];
  }

  v78 = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
  v79 = [v78 identifier];
  v80 = [PLUniformTypeIdentifier utiWithIdentifier:v79];

  v81 = [a1 generateValidatedExternalOtherResourceOfType:5 forFilePath:v77 uti:v80 requireFileToBePresent:1 version:0];
  v82 = v81;
  if (v81)
  {
    [v81 setRecipeID:0];
    [v32 addObject:v82];
  }

  v83 = [v6 pathForXMPFile];
  v84 = [MEMORY[0x1E695DFF8] fileURLWithPath:v83];
  v85 = [MEMORY[0x1E69C08F0] supplementalResourceXMPType];
  v86 = [v85 identifier];
  v87 = [a1 _validatedExternalResourceFromSupplementalFileURL:v84 withUTI:v86 ptpTrashedState:0 index:0 asset:v6];

  if (v87)
  {
    [v82 setRecipeID:0];
    [v108 addObject:v87];
  }

  return v108;
}

+ (id)_speculativePathForPenultimateFullsizeRenderImageFileForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 pathForPenultimateFullsizeRenderImageFileWithUTI:@"public.heic"];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [v3 pathForPenultimateFullsizeRenderImageFile];
  }

  v8 = v7;

  return v8;
}

+ (id)generateAdjustedFullSizeRenderResourceForFilePath:(id)a3 requireFileToBePresent:(BOOL)a4 basedOnFullSizeWidth:(int64_t)a5 andHeight:(int64_t)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [PLResourceRecipe recipeFromID:65938];
  LOWORD(v14) = 0;
  v12 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v10 requireFileToBePresent:v8 version:2 basedOnFullSizeWidth:a5 andHeight:a6 recipe:v11 assetKind:v14 error:0];

  return v12;
}

+ (id)onDemand_installResourceWithResourceIdentity:(id)a3 forAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"nonPersistedResource"}];

LABEL_3:
  v9 = objc_alloc_init(PLValidatedExternalResource);
  if (v9)
  {
    v10 = [v7 recipeID];
    v11 = [PLResourceRecipe recipeFromID:v10];
    -[PLValidatedExternalResource setResourceType:](v9, "setResourceType:", [v7 resourceType]);
    -[PLValidatedExternalResource setVersion:](v9, "setVersion:", [v7 version]);
    [(PLValidatedExternalResource *)v9 setRecipeID:v10];
    v12 = [v11 codecFourCharCodeName];
    [(PLValidatedExternalResource *)v9 setCodecFourCharCode:v12];

    v13 = [v11 uti];
    [(PLValidatedExternalResource *)v9 setUniformTypeIdentifier:v13];

    v14 = [v8 assetID];
    v15 = [v14 libraryID];
    v16 = [PLResourceDataStoreManager storeForExternalResource:v9 inLibraryWithID:v15];

    if (v16)
    {
      v21 = 0;
      [v16 storeExternalResource:v9 forAsset:v8 options:0 error:0 resultingResource:&v21];
      v17 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)onDemand_installExistingAdjustmentSuggestionResourceAtFilePath:(id)a3 recipe:(id)a4 forAsset:(id)a5
{
  v8 = a5;
  v9 = *MEMORY[0x1E6982E00];
  v10 = a4;
  v11 = a3;
  v12 = [v9 identifier];
  v13 = [a1 _validatedExternalResourceAtPath:v11 recipe:v10 type:15 version:3 identifier:v12];

  if ([v13 isSuccess])
  {
    v14 = [v13 result];
    [a1 _storeValidatedLocalExternalResource:v14 forAsset:v8];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    v14 = [v13 error];
    [v15 failureWithError:v14];
  }
  v16 = ;

  return v16;
}

+ (id)onDemand_installExistingAlchemistV2ResourceAtFilePath:(id)a3 recipe:(id)a4 forAsset:(id)a5
{
  v8 = a5;
  v9 = *MEMORY[0x1E6983148];
  v10 = a4;
  v11 = a3;
  v12 = [v9 identifier];
  v13 = [a1 _validatedExternalResourceAtPath:v11 recipe:v10 type:14 version:3 identifier:v12];

  if ([v13 isSuccess])
  {
    v14 = [v13 result];
    [a1 _storeValidatedLocalExternalResource:v14 forAsset:v8];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    v14 = [v13 error];
    [v15 failureWithError:v14];
  }
  v16 = ;

  return v16;
}

+ (id)onDemand_installExistingComputeResourceAtFilePath:(id)a3 recipe:(id)a4 forAsset:(id)a5
{
  v8 = a5;
  v9 = *MEMORY[0x1E6982D60];
  v10 = a4;
  v11 = a3;
  v12 = [v9 identifier];
  v13 = [a1 _validatedExternalResourceAtPath:v11 recipe:v10 type:14 version:3 identifier:v12];

  if ([v13 isSuccess])
  {
    v14 = [v13 result];
    [a1 _storeValidatedLocalExternalResource:v14 forAsset:v8];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    v14 = [v13 error];
    [v15 failureWithError:v14];
  }
  v16 = ;

  return v16;
}

+ (id)onDemand_installEmptyComputeResourceWithRecipe:(id)a3 forAsset:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a1 _validatedExternalResourceForComputeResourceWithRecipe:a3];
  v10 = v9;
  if (v9)
  {
    v23[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = 0;
    v12 = [PLResourceDataStoreManager storeExternalResources:v11 forAsset:v8 forLifecycleEvent:2 error:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = [v12 anyObject];
    }

    else
    {
      if (!v13)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E69BFF70];
        v21 = *MEMORY[0x1E696A278];
        v22 = @"resource was not stored";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v13 = [v15 errorWithDomain:v16 code:1 userInfo:v17];
      }

      v14 = 0;
    }

    if (a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (a5)
    {
LABEL_10:
      v18 = v13;
      *a5 = v13;
    }
  }

  return v14;
}

+ (id)onDemand_installExistingAdjustedResourceAtFilePath:(id)a3 withType:(unsigned int)a4 recipe:(id)a5 forAsset:(id)a6 error:(id *)a7
{
  v10 = *&a4;
  v36[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!v13)
  {
    v24 = 0;
    goto LABEL_16;
  }

  if (!v15)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v17 = [v16 width];
  v18 = [v16 height];
  v33 = 0;
  LOWORD(v31) = [v16 kind];
  v19 = [a1 generateValidatedExternalImageResourceOfType:v10 forFilePath:v13 requireFileToBePresent:1 version:2 basedOnFullSizeWidth:v17 andHeight:v18 recipe:v14 assetKind:v31 error:&v33];
  v20 = v33;
  if (v19)
  {
    v36[0] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v32 = v20;
    v22 = [PLResourceDataStoreManager storeExternalResources:v21 forAsset:v16 forLifecycleEvent:2 error:&v32];
    v23 = v32;

    if (v22)
    {
      v24 = [v22 anyObject];
    }

    else
    {
      if (!v23)
      {
        v25 = MEMORY[0x1E696ABC0];
        v26 = *MEMORY[0x1E69BFF70];
        v34 = *MEMORY[0x1E696A278];
        v35 = @"resource was not stored";
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v23 = [v25 errorWithDomain:v26 code:1 userInfo:v27];
      }

      v24 = 0;
    }

    v20 = v23;
    if (!a7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = 0;
    if (!a7)
    {
      goto LABEL_15;
    }
  }

  v28 = v20;
  *a7 = v20;
LABEL_15:

LABEL_16:

  return v24;
}

+ (id)onDemand_installOriginalVideoComplementForSyndicationAsset:(id)a3 contentType:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 additionalAttributes];
  v9 = [v8 syndicationIdentifier];

  if (!v9)
  {
    v10 = PLBackendGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = [v6 uuid];
    *buf = 138543362;
    v26 = v11;
    v12 = "Cannot install syndication resource on asset that is missing syndication identifier, uuid: %{public}@";
LABEL_10:
    v13 = v10;
    v14 = 12;
    goto LABEL_11;
  }

  if ([v6 bundleScope] != 3)
  {
    v10 = PLBackendGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = [v6 uuid];
    *buf = 138543362;
    v26 = v11;
    v12 = "Cannot install syndication resource on asset that is not in syndication bundle scope, uuid: %{public}@";
    goto LABEL_10;
  }

  if ([v6 kind] - 1 <= 2)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 uuid];
      *buf = 138543618;
      v26 = v11;
      v27 = 2050;
      v28 = [v6 kind];
      v12 = "Only images can be live photos, cannot install syndication video complement, uuid: %{public}@, type: %{public}ld";
      v13 = v10;
      v14 = 22;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v17 = MEMORY[0x1E695DFF8];
  v18 = [v6 pathForVideoComplementFile];
  v19 = [v17 fileURLWithPath:v18];
  v20 = [v7 identifier];
  v21 = [PLUniformTypeIdentifier utiWithIdentifier:v20];
  v10 = [a1 generatedValidatedExternalSyndicationResourceOfType:3 version:0 recipeID:0 fileURL:v19 requireFileToBePresent:0 uniformTypeIdentifier:v21];

  v24 = v10;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v23 = [PLResourceDataStoreManager storeExternalResources:v22 forAsset:v6 forLifecycleEvent:0 error:0];

  v15 = [v23 anyObject];

LABEL_13:

  return v15;
}

+ (id)onDemand_installOriginalResourceForSyndicationAsset:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 additionalAttributes];
  v6 = [v5 syndicationIdentifier];

  if (!v6)
  {
    v12 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = [v4 uuid];
    *buf = 138543362;
    v21 = v16;
    v17 = "[sync] cannot install resource on asset missing syndication identifier, uuid: %{public}@";
LABEL_12:
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);

    goto LABEL_13;
  }

  if ([v4 bundleScope] != 3)
  {
    v12 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = [v4 uuid];
    *buf = 138543362;
    v21 = v16;
    v17 = "[sync] cannot install resource on asset that is not in syndication bundle scope, uuid: %{public}@";
    goto LABEL_12;
  }

  v7 = [v4 kind];
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 == 1;
    }

    v9 = [v4 mainFileURL];
    v10 = [v4 uniformTypeIdentifier];
    v11 = [PLUniformTypeIdentifier utiWithIdentifier:v10];
    v12 = [a1 generatedValidatedExternalSyndicationResourceOfType:v8 version:0 recipeID:0 fileURL:v9 requireFileToBePresent:0 uniformTypeIdentifier:v11];

    v19 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v14 = [PLResourceDataStoreManager storeExternalResources:v13 forAsset:v4 forLifecycleEvent:0 error:0];

    v15 = [v14 anyObject];

    goto LABEL_14;
  }

  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = [v4 uuid];
    *buf = 138543362;
    v21 = v16;
    v17 = "[sync] cannot install resource on asset with unknown type, uuid: %{public}@";
    goto LABEL_12;
  }

LABEL_13:
  v15 = 0;
LABEL_14:

  return v15;
}

+ (id)onDemand_installLocalVideoKeyFrameForAsset:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PLResourceRecipe recipeFromID:65749];
  v6 = [v4 width];
  v7 = [v4 height];
  LOWORD(v14) = [v4 kind];
  v8 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:0 requireFileToBePresent:0 version:3 basedOnFullSizeWidth:v6 andHeight:v7 recipe:v5 assetKind:v14 error:0];
  v9 = +[PLUniformTypeIdentifier jpegUniformTypeIdentifier];
  [v8 setUniformTypeIdentifier:v9];

  v15[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v11 = [PLResourceDataStoreManager storeExternalResources:v10 forAsset:v4 forLifecycleEvent:2 error:0];

  v12 = [v11 anyObject];

  return v12;
}

+ (id)onDemand_installOriginalSOCVideoComplementPresentForAsset:(id)a3 referencedResourceURLs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 managedObjectContext];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v10 = [v8 objectForKeyedSubscript:&unk_1F0FBC7F0];
  v11 = [v10 path];

  if (!v11)
  {
    v11 = [v7 pathForVideoComplementSpatialOverCaptureContentFile];
  }

  v12 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v11 context:v9];
  v13 = v12;
  if (v12)
  {
    [v12 setResourceType:11];
    [v13 setVersion:0];
    [v13 setTrashedStateFromURL];
    v14 = [v7 assetID];
    v15 = [v14 libraryID];
    v16 = [PLResourceDataStoreManager storeForExternalResource:v13 inLibraryWithID:v15];

    if (v16)
    {
      v20 = 0;
      [v16 storeExternalResource:v13 forAsset:v7 options:0 error:0 resultingResource:&v20];
      v17 = v20;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)onDemand_installOriginalSOCVideoPresentForAsset:(id)a3 referencedResourceURLs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 managedObjectContext];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v10 = [v8 objectForKeyedSubscript:&unk_1F0FBC7D8];
  v11 = [v10 path];

  if (v11 || ([v7 pathForSpatialOverCaptureContentFile], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v11 context:v9];
    v13 = v12;
    if (v12)
    {
      [v12 setResourceType:10];
      [v13 setVersion:0];
      [v13 setTrashedStateFromURL];
      v14 = [v7 assetID];
      v15 = [v14 libraryID];
      v16 = [PLResourceDataStoreManager storeForExternalResource:v13 inLibraryWithID:v15];

      if (v16)
      {
        v20 = 0;
        [v16 storeExternalResource:v13 forAsset:v7 options:0 error:0 resultingResource:&v20];
        v17 = v20;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)onDemand_installOriginalSOCImagePresentForAsset:(id)a3 referencedResourceURLs:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:522 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [v8 objectForKeyedSubscript:&unk_1F0FBC7D8];
  v10 = [v9 path];

  if (v10 || ([v7 pathForSpatialOverCaptureContentFile], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [v7 originalWidth];
    v12 = [v7 originalHeight];
    LOWORD(v20) = [v7 kind];
    v13 = [a1 generateValidatedExternalImageResourceOfType:10 forFilePath:v10 requireFileToBePresent:1 version:0 basedOnFullSizeWidth:v11 andHeight:v12 recipe:0 assetKind:v20 error:0];
    if (v13)
    {
      v14 = [v7 assetID];
      v15 = [v14 libraryID];
      v16 = [PLResourceDataStoreManager storeForExternalResource:v13 inLibraryWithID:v15];

      if (v16)
      {
        v21 = 0;
        [v16 storeExternalResource:v13 forAsset:v7 options:0 error:0 resultingResource:&v21];
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)onDemand_installOriginalAdjustmentResourceIfPresentForAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = [v5 pathForOriginalAdjustmentFile];
  v7 = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
  v8 = [v7 identifier];
  v9 = [PLUniformTypeIdentifier utiWithIdentifier:v8];

  v10 = [a1 generateValidatedExternalOtherResourceOfType:5 forFilePath:v6 uti:v9 requireFileToBePresent:1 version:0];
  v11 = v10;
  if (v10)
  {
    [v10 setRecipeID:0];
    v12 = [v5 assetID];
    v13 = [v12 libraryID];
    v14 = [PLResourceDataStoreManager storeForExternalResource:v11 inLibraryWithID:v13];

    if (v14)
    {
      v18 = 0;
      [v14 storeExternalResource:v11 forAsset:v5 options:0 error:0 resultingResource:&v18];
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)onDemand_installAdjustedDeferredFullSizeVideoComplementResourceForAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = objc_alloc_init(PLValidatedExternalResource);
  if (v6)
  {
    v7 = [PLResourceRecipe recipeFromID:131272];
    [(PLValidatedExternalResource *)v6 setResourceType:3];
    [(PLValidatedExternalResource *)v6 setVersion:2];
    [(PLValidatedExternalResource *)v6 setRecipeID:131272];
    v8 = [v7 codecFourCharCodeName];
    [(PLValidatedExternalResource *)v6 setCodecFourCharCode:v8];

    v9 = [v7 uti];
    [(PLValidatedExternalResource *)v6 setUniformTypeIdentifier:v9];

    v10 = [v5 assetID];
    v11 = [v10 libraryID];
    v12 = [PLResourceDataStoreManager storeForExternalResource:v6 inLibraryWithID:v11];

    if (v12)
    {
      v16 = 0;
      [v12 storeExternalResource:v6 forAsset:v5 options:0 error:0 resultingResource:&v16];
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)onDemand_installAdjustedFullSizeVideoComplementResourceIfPresentForAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 managedObjectContext];
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:454 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v7 = [v5 pathForFullsizeRenderVideoFile];
  v8 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v7 context:v6];
  v9 = v8;
  if (v8)
  {
    [v8 setResourceType:3];
    [v9 setVersion:2];
    [v9 setRecipeID:131272];
    v10 = [v5 assetID];
    v11 = [v10 libraryID];
    v12 = [PLResourceDataStoreManager storeForExternalResource:v9 inLibraryWithID:v11];

    if (v12)
    {
      v16 = 0;
      [v12 storeExternalResource:v9 forAsset:v5 options:0 error:0 resultingResource:&v16];
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)onDemand_installOriginalVideoComplementResourceIfPresentForAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 managedObjectContext];
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v7 = [v5 pathForVideoComplementFile];
  v8 = [a1 validatedExternalResourceForLocalVideoIfPresentAtPath:v7 context:v6];
  v9 = v8;
  if (v8)
  {
    [v8 setResourceType:3];
    [v9 setVersion:0];
    v10 = [v5 assetID];
    v11 = [v10 libraryID];
    v12 = [PLResourceDataStoreManager storeForExternalResource:v9 inLibraryWithID:v11];

    if (v12)
    {
      v16 = 0;
      [v12 storeExternalResource:v9 forAsset:v5 options:0 error:0 resultingResource:&v16];
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)onDemand_installAdjustedFullSizeRenderResourceAtFilePath:(id)a3 forAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
    }

    v10 = [a1 generateAdjustedFullSizeRenderResourceForFilePath:v7 requireFileToBePresent:0 basedOnFullSizeWidth:objc_msgSend(v9 andHeight:{"width"), objc_msgSend(v9, "height")}];
    if (v10)
    {
      v11 = [v9 assetID];
      v12 = [v11 libraryID];
      v13 = [PLResourceDataStoreManager storeForExternalResource:v10 inLibraryWithID:v12];

      if (v13)
      {
        v17 = 0;
        [v13 storeExternalResource:v10 forAsset:v9 options:0 error:0 resultingResource:&v17];
        v14 = v17;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)onDemand_installPrimaryImageResourceWithRecipe:(id)a3 version:(unsigned int)a4 forAsset:(id)a5 requireFileToBePresent:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  v36 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"recipe"}];
  }

  v13 = [v11 expectedFileURLForVersion:v8 asset:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 path];
    v16 = [v12 width];
    v17 = [v12 height];
    LOWORD(v28) = [v12 kind];
    v18 = [a1 generateValidatedExternalImageResourceOfType:0 forFilePath:v15 requireFileToBePresent:v6 version:v8 basedOnFullSizeWidth:v16 andHeight:v17 recipe:v11 assetKind:v28 error:0];

    if (v18)
    {
      v19 = [v12 assetID];
      v20 = [v19 libraryID];
      v21 = [PLResourceDataStoreManager storeForExternalResource:v18 inLibraryWithID:v20];

      if (v21)
      {
        v29 = 0;
        [v21 storeExternalResource:v18 forAsset:v12 options:0 error:0 resultingResource:&v29];
        v22 = v29;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = [v12 uuid];
      if (v8 > 2)
      {
        v24 = @"cur";
      }

      else
      {
        v24 = off_1E75664B0[v8];
      }

      v25 = v24;
      *buf = 138543874;
      v31 = v23;
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to resolve expected file url for asset %{public}@, recipe: %{public}@, version: %{public}@", buf, 0x20u);
    }
  }

  v22 = 0;
LABEL_15:

  return v22;
}

+ (void)_applyImageIOMetadataToExternalResource:(id)a3 fromFileURL:(id)a4 fileExists:(BOOL)a5 assumedWidth:(int64_t)a6 assumedHeight:(int64_t)a7 recipe:(id)a8 assetKind:(signed __int16)a9
{
  v12 = a5;
  v41[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = 0x1E69C0000uLL;
  if (v15 && v12 && (v18 = CGImageSourceCreateWithURL(v15, 0)) != 0)
  {
    v19 = v18;
    v20 = CGImageSourceGetType(v18);
    v21 = *MEMORY[0x1E696E0E0];
    v40[0] = *MEMORY[0x1E696E0A8];
    v40[1] = v21;
    v41[0] = MEMORY[0x1E695E110];
    v41[1] = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v23 = CGImageSourceCopyPropertiesAtIndex(v19, 0, v22);
    if (v23)
    {
      v24 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v20];
      v25 = [v24 conformsToType:*MEMORY[0x1E6982F88]];

      v26 = [(__CFDictionary *)v23 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
      [v14 setUnorientedWidth:{objc_msgSend(v26, "integerValue")}];

      v27 = [(__CFDictionary *)v23 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
      [v14 setUnorientedHeight:{objc_msgSend(v27, "integerValue")}];

      if (v25)
      {
        v28 = PLExifPixelXDimensionFromImageProperties(v23);
        v29 = [v28 integerValue];

        v30 = PLExifPixelYDimensionFromImageProperties(v23);
        v31 = [v30 integerValue];

        v17 = 0x1E69C0000;
        if (v29 > [v14 unorientedWidth] && v31 > objc_msgSend(v14, "unorientedHeight"))
        {
          [v14 setUnorientedWidth:v29];
          [v14 setUnorientedHeight:v31];
        }
      }
    }

    CFRelease(v19);

    if (v20)
    {
      goto LABEL_18;
    }
  }

  else if (v16)
  {
    v32 = [v16 expectedSizeFromWidth:a6 height:a7];
    v33 = v32;
    if (v32)
    {
      v34 = MEMORY[0x19EAED7D0](v32);
      v36 = v35;
      [v14 setUnorientedWidth:v34];
      a7 = v36;
    }

    else
    {
      [v14 setUnorientedWidth:a6];
    }

    [v14 setUnorientedHeight:a7];
  }

  else
  {
    [v14 setUnorientedWidth:a6];
    [v14 setUnorientedHeight:a7];
  }

  v37 = [(__CFURL *)v15 pathExtension];
  v38 = [*(v17 + 2288) resourceModelTypeForFilenameExtension:v37];
  v20 = [v38 identifier];

  if (!v20)
  {
    v39 = [v16 uti];
    goto LABEL_20;
  }

LABEL_18:
  v39 = [PLUniformTypeIdentifier utiWithIdentifier:v20];

LABEL_20:
  [v14 setUniformTypeIdentifier:v39];
}

+ (BOOL)_installInternalResourcesForExistingAsset:(id)a3 assumeNoExistingResources:(BOOL)a4 referencedResourceURLs:(id)a5 includeLegacyCloudResources:(BOOL)a6 outResourcesStoreCount:(unint64_t *)a7 error:(id *)a8
{
  v9 = a6;
  v11 = a4;
  v13 = a3;
  v14 = a5;
  v15 = PLImageManagerGetLog();
  v16 = os_signpost_id_make_with_pointer(v15, v13);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ResourceModel", "InstallResources", buf, 2u);
  }

  if (v9 && ([v13 master], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = [PLCloudResource validatedExternalResourcesUsingLegacyCloudResourcesFromAssetWithCloudMaster:v13];
  }

  else
  {
    v20 = [a1 externalResourcesForExistingAsset:v13 referencedResourceURLs:v14];
  }

  v21 = v20;
  if (v11)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v31 = 0;
  v23 = [PLResourceDataStoreManager storeExternalResources:v20 forAsset:v13 forLifecycleEvent:v22 error:&v31];
  v24 = v31;
  v25 = v18;
  v26 = v25;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v16, "ResourceModel", "InstallResources", v30, 2u);
  }

  if (a7)
  {
    *a7 = [v23 count];
  }

  if (a8 && v24)
  {
    v27 = v24;
    *a8 = v24;
  }

  return v24 == 0;
}

+ (BOOL)installSupplementalResourceForExistingFileAtURL:(id)a3 ptpTrashedState:(int64_t)a4 index:(id)a5 forAsset:(id)a6 imageOrientation:(id)a7 resultingResource:(id *)a8 error:(id *)a9
{
  v33[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a6;
  v16 = MEMORY[0x1E69C08F0];
  v17 = a5;
  v18 = [v14 pathExtension];
  v19 = [v16 resourceModelTypeForFilenameExtension:v18];
  v20 = [v19 identifier];

  v21 = [a1 _validatedExternalResourceFromSupplementalFileURL:v14 withUTI:v20 ptpTrashedState:a4 index:v17 asset:v15];

  if (!v21)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate a supplemental resource from fileURL: %@", v14];
    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E69BFF70];
    v31 = *MEMORY[0x1E696A578];
    v32 = v23;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v24 = [v26 errorWithDomain:v27 code:1 userInfo:v25];
    goto LABEL_5;
  }

  v33[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v30 = 0;
  v23 = [PLResourceDataStoreManager storeExternalResources:v22 forAsset:v15 forLifecycleEvent:2 error:&v30];
  v24 = v30;

  if (a8)
  {
    v25 = [v23 anyObject];
    *a8 = v25;
LABEL_5:
  }

  if (a9 && v24)
  {
    v28 = v24;
    *a9 = v24;
  }

  return v24 == 0;
}

+ (BOOL)recoverSupplementalResourcesForAsset:(id)a3 usingSidecarFinder:(id)a4 outResourcesStoreCount:(unint64_t *)a5 error:(id *)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"finder"}];
  }

  v11 = PLImageManagerGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, v9);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ResourceModel", "RecoverSupplementalResources", buf, 2u);
  }

  if (([v9 isPhotoIris] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69BF328], "maskForRecoverSupplementalResourcesForAsset"), objc_msgSend(v9, "savedAssetType"), (PLValidatedSavedAssetTypeApplies() & 1) == 0) && (!objc_msgSend(v9, "isCloudPhotoLibraryAsset") || (objc_msgSend(v9, "master"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30)))
  {
    v15 = 1;
  }

  else
  {
    v39 = v12 - 1;
    v40 = a5;
    spid = v12;
    v16 = [v9 mainFileURL];
    v17 = [v16 URLByDeletingLastPathComponent];

    v18 = [v9 filename];
    v19 = [v9 managedObjectContext];
    v15 = 1;
    v41 = v10;
    v38 = v17;
    v20 = [v10 collectSidecarURLsForAssetFilename:v18 inDirectory:v17 context:v19 removeWhenDone:1];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v20;
    v21 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v36 = v14;
      v23 = 0;
      v24 = *v46;
      while (2)
      {
        v25 = 0;
        v37 = v23 + v22;
        do
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v45 + 1) + 8 * v25);
          v27 = objc_autoreleasePoolPush();
          v28 = [v9 additionalAttributes];
          v29 = [v28 originalOrientation];
          v44 = 0;
          LODWORD(v26) = [a1 installSupplementalResourceForExistingFileAtURL:v26 ptpTrashedState:0 index:0 forAsset:v9 imageOrientation:v29 resultingResource:0 error:&v44];

          objc_autoreleasePoolPop(v27);
          if (!v26)
          {
            v15 = 0;
            goto LABEL_22;
          }

          ++v23;
          ++v25;
        }

        while (v22 != v25);
        v22 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        v23 = v37;
        if (v22)
        {
          continue;
        }

        break;
      }

      v15 = 1;
LABEL_22:
      v14 = v36;
    }

    else
    {
      v23 = 0;
    }

    v31 = v14;
    v32 = v31;
    if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_END, spid, "ResourceModel", "RecoverSupplementalResources", buf, 2u);
    }

    if (v40)
    {
      *v40 = v23;
    }

    v10 = v41;
  }

  return v15;
}

+ (id)_validatedExternalResourceAtPath:(id)a3 recipe:(id)a4 type:(unsigned int)a5 version:(unsigned int)a6 identifier:(id)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v38[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12)
  {
    v34 = 0;
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v15 fileExistsAtPath:v12 isDirectory:&v34];

    if (!v16 || (v34 & 1) != 0)
    {
      if ((v16 | v34))
      {
        v27 = @"is directory";
      }

      else
      {
        v27 = @"does not exist";
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"file %@ at path: %@", v27, v12];
      v28 = MEMORY[0x1E69BF2D0];
      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E69BFF48];
      v37 = *MEMORY[0x1E696A278];
      v38[0] = v17;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v32 = [v29 errorWithDomain:v30 code:47001 userInfo:v31];
      v21 = [v28 failureWithError:v32];
    }

    else
    {
      v17 = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)v17 setVersion:v8];
      -[PLValidatedExternalResource setRecipeID:](v17, "setRecipeID:", [v13 recipeID]);
      v18 = [PLUniformTypeIdentifier utiWithIdentifier:v14];
      [(PLValidatedExternalResource *)v17 setUniformTypeIdentifier:v18];

      [(PLValidatedExternalResource *)v17 setResourceType:v9];
      v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
      [(PLValidatedExternalResource *)v17 setFileURL:v19];

      v20 = [(PLValidatedExternalResource *)v17 fileURL];
      -[PLValidatedExternalResource setDataLength:](v17, "setDataLength:", [a1 _getURLDataLength:v20]);

      v21 = [MEMORY[0x1E69BF2D0] successWithResult:v17];
    }
  }

  else
  {
    v22 = MEMORY[0x1E69BF2D0];
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E69BFF48];
    v35 = *MEMORY[0x1E696A278];
    v36 = @"nil path";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v26 = [v23 errorWithDomain:v24 code:47006 userInfo:v25];
    v21 = [v22 failureWithError:v26];
  }

  return v21;
}

+ (id)_validatedExternalResourceForComputeResourceWithRecipe:(id)a3
{
  v3 = a3;
  v4 = [v3 uti];
  v5 = v4;
  if (!v4 || [v4 isDynamic])
  {
    v6 = [*MEMORY[0x1E6982D60] identifier];
    v7 = [PLUniformTypeIdentifier utiWithIdentifier:v6];

    v5 = v7;
  }

  v8 = objc_alloc_init(PLValidatedExternalResource);
  [(PLValidatedExternalResource *)v8 setVersion:3];
  v9 = [v3 recipeID];

  [(PLValidatedExternalResource *)v8 setRecipeID:v9];
  [(PLValidatedExternalResource *)v8 setUniformTypeIdentifier:v5];
  [(PLValidatedExternalResource *)v8 setResourceType:14];

  return v8;
}

+ (id)_validatedExternalResourceForComputeResourceAtPath:(id)a3 recipe:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v13 = 0, [MEMORY[0x1E696AC08] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:isDirectory:", v6, &v13), v8, v9) && (v13 & 1) == 0)
  {
    v10 = [a1 _validatedExternalResourceForComputeResourceWithRecipe:v7];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
    [v10 setFileURL:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_validatedExternalResourceIfPresentForAudioOrUnknownAsset:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLResourceInstaller.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = [v5 uniformTypeIdentifier];
  v7 = [v5 mainFileURL];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([a1 _getURLDataLength:v7])
    {
      v10 = [PLUniformTypeIdentifier utiWithIdentifier:v6];
      v9 = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)v9 setVersion:0];
      [(PLValidatedExternalResource *)v9 setRecipeID:0];
      [(PLValidatedExternalResource *)v9 setFileURL:v8];
      [(PLValidatedExternalResource *)v9 setUniformTypeIdentifier:v10];
      if ([v10 conformsToAudio])
      {
        v11 = v9;
        v12 = 2;
      }

      else
      {
        v13 = PLMigrationGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v5 uuid];
          *buf = 138543874;
          v18 = v14;
          v19 = 2048;
          v20 = [v5 kind];
          v21 = 2114;
          v22 = v8;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Inserting resource with PLResourceTypeUnknown on asset uuid: %{public}@, kind: %ld, from URL: %{public}@", buf, 0x20u);
        }

        v11 = v9;
        v12 = 31;
      }

      [(PLValidatedExternalResource *)v11 setResourceType:v12];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_validatedExternalResourceFromSupplementalFileURL:(id)a3 withUTI:(id)a4 ptpTrashedState:(int64_t)a5 index:(id)a6 asset:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = 0;
  if (v11 && a4)
  {
    v15 = [PLUniformTypeIdentifier utiWithIdentifier:a4];
    if ([v15 conformsToImage])
    {
      v16 = [v11 path];
      v17 = [v13 width];
      v18 = [v13 height];
      LOWORD(v25) = [v13 kind];
      v14 = [a1 generateValidatedExternalImageResourceOfType:4 forFilePath:v16 requireFileToBePresent:1 version:0 basedOnFullSizeWidth:v17 andHeight:v18 recipe:0 assetKind:v25 error:0];
    }

    else
    {
      v19 = MEMORY[0x1E69BF238];
      v20 = [v11 path];
      v21 = [v19 fileLengthForFilePath:v20];

      if (v21 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = objc_alloc_init(PLValidatedExternalResource);
        [(PLValidatedExternalResource *)v14 setVersion:0];
        [(PLValidatedExternalResource *)v14 setRecipeID:0];
        [(PLValidatedExternalResource *)v14 setFileURL:v11];
        [(PLValidatedExternalResource *)v14 setDataLength:v21];
        [(PLValidatedExternalResource *)v14 setUniformTypeIdentifier:v15];
        if ([v15 conformsToAudio])
        {
          v22 = v14;
          v23 = 2;
        }

        else
        {
          v22 = v14;
          v23 = 5;
        }

        [(PLValidatedExternalResource *)v22 setResourceType:v23];
      }
    }

    [(PLValidatedExternalResource *)v14 setSidecarIndex:v12];
  }

  return v14;
}

+ (unint64_t)_getURLDataLength:(id)a3
{
  result = a3;
  if (a3)
  {
    v4 = 0;
    if ([a3 getResourceValue:&v4 forKey:*MEMORY[0x1E695DB50] error:0])
    {
      return [v4 longLongValue];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end