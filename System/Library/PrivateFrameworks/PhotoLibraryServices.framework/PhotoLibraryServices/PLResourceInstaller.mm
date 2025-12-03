@interface PLResourceInstaller
+ (BOOL)_installInternalResourcesForExistingAsset:(id)asset assumeNoExistingResources:(BOOL)resources referencedResourceURLs:(id)ls includeLegacyCloudResources:(BOOL)cloudResources outResourcesStoreCount:(unint64_t *)count error:(id *)error;
+ (BOOL)createInternalResourcesForExistingAssetsWithNoExistingResourcesInStore:(id)store migrator:(id)migrator;
+ (BOOL)installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:(id)context migrator:(id)migrator;
+ (BOOL)installSupplementalResourceForExistingFileAtURL:(id)l ptpTrashedState:(int64_t)state index:(id)index forAsset:(id)asset imageOrientation:(id)orientation resultingResource:(id *)resource error:(id *)error;
+ (BOOL)reconsiderSavedAssetTypeInStore:(id)store migrator:(id)migrator;
+ (BOOL)recoverSupplementalResourcesForAsset:(id)asset usingSidecarFinder:(id)finder outResourcesStoreCount:(unint64_t *)count error:(id *)error;
+ (BOOL)removeLegacyCloudResourcesInStore:(id)store migrator:(id)migrator;
+ (BOOL)resetImageRequestHintsInContext:(id)context allowOneTimeThumbRebuild:(BOOL)rebuild;
+ (BOOL)resetInternalResourcesInStore:(id)store resetUTIs:(BOOL)is resetCodecs:(BOOL)codecs resetMasters:(BOOL)masters migrator:(id)migrator;
+ (id)_speculativePathForPenultimateFullsizeRenderImageFileForAsset:(id)asset;
+ (id)_storeValidatedLocalExternalResource:(id)resource forAsset:(id)asset;
+ (id)_validatedExternalResourceAtPath:(id)path recipe:(id)recipe type:(unsigned int)type version:(unsigned int)version identifier:(id)identifier;
+ (id)_validatedExternalResourceForComputeResourceAtPath:(id)path recipe:(id)recipe;
+ (id)_validatedExternalResourceForComputeResourceWithRecipe:(id)recipe;
+ (id)_validatedExternalResourceFromSupplementalFileURL:(id)l withUTI:(id)i ptpTrashedState:(int64_t)state index:(id)index asset:(id)asset;
+ (id)_validatedExternalResourceIfPresentForAudioOrUnknownAsset:(id)asset;
+ (id)_validatedExternalResourcesFromLocalImageOrVideoAsset:(id)asset referencedResourceURLs:(id)ls;
+ (id)_validatedExternalResourcesFromSharedStreamAsset:(id)asset;
+ (id)externalResourcesForExistingAsset:(id)asset referencedResourceURLs:(id)ls;
+ (id)generateAdjustedFullSizeRenderResourceForFilePath:(id)path requireFileToBePresent:(BOOL)present basedOnFullSizeWidth:(int64_t)width andHeight:(int64_t)height;
+ (id)generateExternalResourceFromCPLResource:(id)resource asset:(id)asset fromAdjustedSet:(BOOL)set;
+ (id)generateExternalResourceFromCPLResource:(id)resource cloudMaster:(id)master masterResources:(id)resources;
+ (id)generateValidatedExternalImageResourceOfType:(unsigned int)type forFilePath:(id)path requireFileToBePresent:(BOOL)present version:(unsigned int)version basedOnFullSizeWidth:(int64_t)width andHeight:(int64_t)height recipe:(id)recipe assetKind:(signed __int16)self0 error:(id *)self1;
+ (id)generateValidatedExternalOtherResourceOfType:(unsigned int)type forFilePath:(id)path uti:(id)uti requireFileToBePresent:(BOOL)present version:(unsigned int)version;
+ (id)generateVideoResourcesFromVideoAsset:(id)asset referencedVideoPath:(id)path;
+ (id)generatedValidatedExternalSyndicationResourceOfType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d fileURL:(id)l requireFileToBePresent:(BOOL)present uniformTypeIdentifier:(id)identifier;
+ (id)onDemand_installAdjustedDeferredFullSizeVideoComplementResourceForAsset:(id)asset;
+ (id)onDemand_installAdjustedFullSizeRenderResourceAtFilePath:(id)path forAsset:(id)asset;
+ (id)onDemand_installAdjustedFullSizeVideoComplementResourceIfPresentForAsset:(id)asset;
+ (id)onDemand_installEmptyComputeResourceWithRecipe:(id)recipe forAsset:(id)asset error:(id *)error;
+ (id)onDemand_installExistingAdjustedResourceAtFilePath:(id)path withType:(unsigned int)type recipe:(id)recipe forAsset:(id)asset error:(id *)error;
+ (id)onDemand_installExistingAdjustmentSuggestionResourceAtFilePath:(id)path recipe:(id)recipe forAsset:(id)asset;
+ (id)onDemand_installExistingAlchemistV2ResourceAtFilePath:(id)path recipe:(id)recipe forAsset:(id)asset;
+ (id)onDemand_installExistingComputeResourceAtFilePath:(id)path recipe:(id)recipe forAsset:(id)asset;
+ (id)onDemand_installLocalVideoKeyFrameForAsset:(id)asset;
+ (id)onDemand_installOriginalAdjustmentResourceIfPresentForAsset:(id)asset;
+ (id)onDemand_installOriginalResourceForSyndicationAsset:(id)asset;
+ (id)onDemand_installOriginalSOCImagePresentForAsset:(id)asset referencedResourceURLs:(id)ls;
+ (id)onDemand_installOriginalSOCVideoComplementPresentForAsset:(id)asset referencedResourceURLs:(id)ls;
+ (id)onDemand_installOriginalSOCVideoPresentForAsset:(id)asset referencedResourceURLs:(id)ls;
+ (id)onDemand_installOriginalVideoComplementForSyndicationAsset:(id)asset contentType:(id)type;
+ (id)onDemand_installOriginalVideoComplementResourceIfPresentForAsset:(id)asset;
+ (id)onDemand_installPrimaryImageResourceWithRecipe:(id)recipe version:(unsigned int)version forAsset:(id)asset requireFileToBePresent:(BOOL)present;
+ (id)onDemand_installResourceWithResourceIdentity:(id)identity forAsset:(id)asset;
+ (id)validatedExternalResourceForLocalVideoIfPresentAtPath:(id)path context:(id)context;
+ (id)validatedExternalResourceFromExternalResourceCloudAttributes:(id)attributes cplType:(unint64_t)type assetType:(signed __int16)assetType uti:(id)uti resourceWidth:(unint64_t)width resourceHeight:(unint64_t)height resourceFingerprint:(id)fingerprint resourceStableHash:(id)self0 resourceSize:(unint64_t)self1 isAvailable:(BOOL)self2 fromAdjustedSet:(BOOL)self3 resourceURL:(id)self4 cloudMaster:(id)self5 isForMigration:(BOOL)self6 context:(id)self7;
+ (unint64_t)_getURLDataLength:(id)length;
+ (unint64_t)derivativeCPLTypeFromRecipeID:(unsigned int)d version:(unsigned int)version;
+ (unint64_t)nonDerivativeCPLTypeFromResourceType:(unsigned int)type version:(unsigned int)version uniformTypeIdentifier:(id)identifier;
+ (unsigned)recipeIDFromCPLResourceType:(unint64_t)type assetType:(signed __int16)assetType fromAdjustedSet:(BOOL)set;
+ (unsigned)resourceTypeFromCPLType:(unint64_t)type assetType:(signed __int16)assetType;
+ (unsigned)resourceVersionFromCPLType:(unint64_t)type fromAdjustedSet:(BOOL)set;
+ (void)_applyCodecToNonDerivativeExternalResource:(id)resource fromCloudMaster:(id)master;
+ (void)_applyColorSpaceAndCodecUsingFileToExternalResource:(id)resource managedObjectContext:(id)context;
+ (void)_applyImageIOMetadataToExternalResource:(id)resource fromFileURL:(id)l fileExists:(BOOL)exists assumedWidth:(int64_t)width assumedHeight:(int64_t)height recipe:(id)recipe assetKind:(signed __int16)kind;
+ (void)_recipeAndDerivativeStateFromCPLResourceType:(unint64_t)type fromAdjustedSet:(BOOL)set assetType:(signed __int16)assetType recipeID:(unsigned int *)d;
@end

@implementation PLResourceInstaller

+ (id)generateExternalResourceFromCPLResource:(id)resource asset:(id)asset fromAdjustedSet:(BOOL)set
{
  setCopy = set;
  resourceCopy = resource;
  assetCopy = asset;
  v11 = assetCopy;
  if (resourceCopy)
  {
    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v12 = objc_alloc_init(PLValidatedExternalCloudResource);
  master = [v11 master];
  creationDate = [master creationDate];
  v44 = v12;
  [(PLValidatedExternalCloudResource *)v12 setMasterDateCreated:creationDate];

  identity = [resourceCopy identity];
  [identity imageDimensions];
  v17 = v16;
  v19 = v18;
  fileUTI = [identity fileUTI];
  if (!fileUTI)
  {
    v21 = MEMORY[0x1E69C08F0];
    fileURL = [identity fileURL];
    pathExtension = [fileURL pathExtension];
    v24 = [v21 resourceModelTypeForFilenameExtension:pathExtension];
    fileUTI = [v24 identifier];
  }

  v25 = [v11 pathForCPLResourceType:objc_msgSend(resourceCopy adjusted:{"resourceType"), setCopy}];
  selfCopy = self;
  v45 = setCopy;
  v43 = fileUTI;
  v41 = v25;
  if (v25)
  {
    v42 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25 isDirectory:0];
  }

  else
  {
    v42 = 0;
  }

  resourceType = [resourceCopy resourceType];
  kind = [v11 kind];
  fingerPrint = [identity fingerPrint];
  stableHash = [identity stableHash];
  fileSize = [identity fileSize];
  isAvailable = [identity isAvailable];
  master2 = [v11 master];
  [v11 managedObjectContext];
  v32 = v40 = resourceCopy;
  LOBYTE(v38) = 0;
  BYTE1(v37) = v45;
  LOBYTE(v37) = isAvailable;
  v33 = [selfCopy validatedExternalResourceFromExternalResourceCloudAttributes:v44 cplType:resourceType assetType:kind uti:v43 resourceWidth:v17 resourceHeight:v19 resourceFingerprint:fingerPrint resourceStableHash:stableHash resourceSize:fileSize isAvailable:v37 fromAdjustedSet:v42 resourceURL:master2 cloudMaster:v38 isForMigration:v32 context:?];

  return v33;
}

+ (id)generateExternalResourceFromCPLResource:(id)resource cloudMaster:(id)master masterResources:(id)resources
{
  v63 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  masterCopy = master;
  resourcesCopy = resources;
  if (resourceCopy)
  {
    if (masterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:568 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (masterCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:569 description:{@"Invalid parameter not satisfying: %@", @"cloudMaster"}];

LABEL_3:
  selfCopy = self;
  v12 = objc_alloc_init(PLValidatedExternalCloudResource);
  creationDate = [masterCopy creationDate];
  [(PLValidatedExternalCloudResource *)v12 setMasterDateCreated:creationDate];

  v56 = v12;
  [(PLValidatedExternalCloudResource *)v12 setCloudLocalState:3];
  uniformTypeIdentifier = [masterCopy uniformTypeIdentifier];
  if (uniformTypeIdentifier)
  {
    identifier = uniformTypeIdentifier;
LABEL_6:
    v20 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];
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
  originalFilename = [masterCopy originalFilename];
  pathExtension = [originalFilename pathExtension];
  v19 = [v16 resourceModelTypeForFilenameExtension:pathExtension];
  identifier = [v19 identifier];

  if (identifier)
  {
    goto LABEL_6;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  identifier = resourcesCopy;
  v36 = [identifier countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v36)
  {
    goto LABEL_33;
  }

  v37 = v36;
  v38 = masterCopy;
  v39 = *v59;
LABEL_21:
  v40 = 0;
  while (1)
  {
    if (*v59 != v39)
    {
      objc_enumerationMutation(identifier);
    }

    v41 = *(*(&v58 + 1) + 8 * v40);
    if ([v41 resourceType] == 1)
    {
      break;
    }

    if (v37 == ++v40)
    {
      v37 = [identifier countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v37)
      {
        goto LABEL_21;
      }

      v55 = 0;
      masterCopy = v38;
      goto LABEL_15;
    }
  }

  identity = [v41 identity];
  fileUTI = [identity fileUTI];

  if (fileUTI)
  {

    identifier = fileUTI;
    masterCopy = v38;
    goto LABEL_6;
  }

  identity2 = [v41 identity];
  fileURL = [identity2 fileURL];
  pathExtension2 = [fileURL pathExtension];

  masterCopy = v38;
  if (!pathExtension2)
  {
LABEL_33:
    v55 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v47 = [MEMORY[0x1E69C08F0] resourceModelTypeForFilenameExtension:pathExtension2];
  identifier2 = [v47 identifier];

  if (identifier2)
  {
    identifier = identifier2;
    goto LABEL_6;
  }

  v55 = 0;
LABEL_16:
  identity3 = [resourceCopy identity];
  [identity3 imageDimensions];
  v24 = v23;
  v26 = v25;
  resourceType = [resourceCopy resourceType];
  fileUTI2 = [identity3 fileUTI];
  v54 = resourceCopy;
  fingerPrint = [identity3 fingerPrint];
  stableHash = [identity3 stableHash];
  fileSize = [identity3 fileSize];
  isAvailable = [identity3 isAvailable];
  [masterCopy managedObjectContext];
  v33 = v32 = masterCopy;
  LOBYTE(v52) = 0;
  LOWORD(v51) = isAvailable;
  v34 = [selfCopy validatedExternalResourceFromExternalResourceCloudAttributes:v56 cplType:resourceType assetType:v55 uti:fileUTI2 resourceWidth:v24 resourceHeight:v26 resourceFingerprint:fingerPrint resourceStableHash:stableHash resourceSize:fileSize isAvailable:v51 fromAdjustedSet:0 resourceURL:v32 cloudMaster:v52 isForMigration:v33 context:?];

  return v34;
}

+ (unsigned)resourceVersionFromCPLType:(unint64_t)type fromAdjustedSet:(BOOL)set
{
  setCopy = set;
  v5 = [self _isPenultimateVersionFromCPLType:type];
  if (setCopy)
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

+ (id)validatedExternalResourceFromExternalResourceCloudAttributes:(id)attributes cplType:(unint64_t)type assetType:(signed __int16)assetType uti:(id)uti resourceWidth:(unint64_t)width resourceHeight:(unint64_t)height resourceFingerprint:(id)fingerprint resourceStableHash:(id)self0 resourceSize:(unint64_t)self1 isAvailable:(BOOL)self2 fromAdjustedSet:(BOOL)self3 resourceURL:(id)self4 cloudMaster:(id)self5 isForMigration:(BOOL)self6 context:(id)self7
{
  assetTypeCopy = assetType;
  attributesCopy = attributes;
  utiCopy = uti;
  fingerprintCopy = fingerprint;
  hashCopy = hash;
  lCopy = l;
  masterCopy = master;
  contextCopy = context;
  if (!attributesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"externalResourceCloudAttributes"}];
  }

  v27 = attributesCopy;
  [v27 setVersion:{objc_msgSend(objc_opt_class(), "resourceVersionFromCPLType:fromAdjustedSet:", type, set)}];
  [v27 setResourceType:{objc_msgSend(objc_opt_class(), "resourceTypeFromCPLType:assetType:", type, assetTypeCopy)}];
  [v27 setCplType:type];
  if (utiCopy)
  {
    [PLUniformTypeIdentifier utiWithIdentifier:utiCopy];
    v28 = utiCopy;
    v29 = lCopy;
    v30 = hashCopy;
    v31 = fingerprintCopy;
    v32 = contextCopy;
    v34 = v33 = masterCopy;
    [v27 setUniformTypeIdentifier:v34];

    masterCopy = v33;
    contextCopy = v32;
    fingerprintCopy = v31;
    hashCopy = v30;
    lCopy = v29;
    utiCopy = v28;
  }

  v45 = 0;
  [self _recipeAndDerivativeStateFromCPLResourceType:type fromAdjustedSet:set assetType:assetTypeCopy recipeID:&v45];
  [v27 setRecipeID:v45];
  [v27 setUnorientedWidth:width];
  [v27 setUnorientedHeight:height];
  [v27 setFileURL:lCopy];
  [v27 setFingerprint:fingerprintCopy];
  [v27 setStableHash:hashCopy];
  [v27 setDataLength:size];
  [v27 setRemoteAvailability:available];
  if ([v27 hasRecipe])
  {
    if (migration)
    {
      if ([v27 hasRecipe])
      {
        v35 = [PLResourceRecipe recipeFromID:v45];
        [v35 codecFourCharCodeName];
        v36 = contextCopy;
        v38 = v37 = masterCopy;
        [v27 setCodecFourCharCode:v38];

        masterCopy = v37;
        contextCopy = v36;
      }
    }

    else
    {
      [self _applyColorSpaceAndCodecUsingFileToExternalResource:v27 managedObjectContext:contextCopy];
    }
  }

  else
  {
    [self _applyCodecToNonDerivativeExternalResource:v27 fromCloudMaster:masterCopy];
  }

  return v27;
}

+ (void)_applyCodecToNonDerivativeExternalResource:(id)resource fromCloudMaster:(id)master
{
  resourceCopy = resource;
  masterCopy = master;
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
  v7 = masterCopy;
  v19 = v7;
  v8 = _Block_copy(&v15);
  if ([resourceCopy resourceType] == 1)
  {
    v8[2](v8);
    v9 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v22[5]];
    plVideoCodecFourCharCodeString = [v9 plVideoCodecFourCharCodeString];
    if (plVideoCodecFourCharCodeString)
    {
      [resourceCopy setCodecFourCharCode:plVideoCodecFourCharCodeString];
    }
  }

  else
  {
    if ([resourceCopy resourceType] != 3)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x1E69C08F0];
    uniformTypeIdentifier = [v7 uniformTypeIdentifier];
    v13 = [v11 typeWithIdentifier:uniformTypeIdentifier];
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
    [resourceCopy setCodecFourCharCode:v9];
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

+ (void)_applyColorSpaceAndCodecUsingFileToExternalResource:(id)resource managedObjectContext:(id)context
{
  resourceCopy = resource;
  fileURL = [resourceCopy fileURL];
  if (fileURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [fileURL path];
    v7 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if (v7)
    {
      if ([resourceCopy resourceType] == 1 || objc_msgSend(resourceCopy, "resourceType") == 3)
      {
        v8 = [MEMORY[0x1E6987E28] assetWithURL:fileURL];
        plVideoCodecFourCharCodeString = [v8 plVideoCodecFourCharCodeString];
        if (plVideoCodecFourCharCodeString)
        {
          [resourceCopy setCodecFourCharCode:plVideoCodecFourCharCodeString];
        }
      }
    }
  }
}

+ (unsigned)resourceTypeFromCPLType:(unint64_t)type assetType:(signed __int16)assetType
{
  result = 31;
  switch(type)
  {
    case 1uLL:
      if (assetType >= 3)
      {
        assetTypeCopy = 31;
      }

      else
      {
        assetTypeCopy = assetType;
      }

      result = assetTypeCopy;
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
      if (assetType)
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
      if (type == 1000)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:420 description:@"Unexpected CPL type: CPLResourceTypeAdjustmentOriginalResource"];

        result = 31;
      }

      break;
  }

  return result;
}

+ (void)_recipeAndDerivativeStateFromCPLResourceType:(unint64_t)type fromAdjustedSet:(BOOL)set assetType:(signed __int16)assetType recipeID:(unsigned int *)d
{
  assetTypeCopy = assetType;
  setCopy = set;
  if (!d)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"outRecipeID"}];
  }

  *d = [objc_opt_class() recipeIDFromCPLResourceType:type assetType:assetTypeCopy fromAdjustedSet:setCopy];
}

+ (unsigned)recipeIDFromCPLResourceType:(unint64_t)type assetType:(signed __int16)assetType fromAdjustedSet:(BOOL)set
{
  result = 0;
  if (type <= 9)
  {
    if (assetType)
    {
      v7 = 131079;
    }

    else
    {
      v7 = 131275;
    }

    v8 = 131277;
    if (assetType)
    {
      v8 = 131081;
    }

    if (type != 7)
    {
      v8 = 0;
    }

    if (type == 6)
    {
      v8 = v7;
    }

    if (type == 5)
    {
      v9 = 65743;
    }

    else
    {
      v9 = v8;
    }

    v10 = 65938;
    if (!set)
    {
      v10 = 65737;
    }

    v11 = 65741;
    if (type != 4)
    {
      v11 = 0;
    }

    if (type == 3)
    {
      v11 = 65739;
    }

    if (type == 2)
    {
      v11 = v10;
    }

    if (type <= 4)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  if (type <= 20)
  {
    if (type != 10)
    {
      if (set)
      {
        v12 = 0x20000;
      }

      else
      {
        v12 = 131075;
      }

      v13 = 131272;
      if (type != 19)
      {
        v13 = 0;
      }

      if (type == 16)
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

  if (type > 27)
  {
    if (type == 28)
    {
      return 131475;
    }

    if (type == 1000)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:292 description:@"Unexpected CPL type: CPLResourceTypeAdjustmentOriginalResource"];

      return 0;
    }

    return result;
  }

  if (type == 21)
  {
    return 131077;
  }

  if (type == 27)
  {
    return 327683;
  }

  return result;
}

+ (unint64_t)nonDerivativeCPLTypeFromResourceType:(unsigned int)type version:(unsigned int)version uniformTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (version == 2)
  {
    if (type >= 8)
    {
      goto LABEL_22;
    }

    v12 = &unk_19C60B160;
    goto LABEL_16;
  }

  if (version == 1)
  {
    if (type >= 4)
    {
      goto LABEL_22;
    }

    v12 = &unk_19C60B1A0;
LABEL_16:
    v11 = v12[type];
    goto LABEL_23;
  }

  if (version)
  {
    goto LABEL_22;
  }

  if (type <= 3)
  {
    v9 = 8;
    v10 = 18;
    if (type != 3)
    {
      v10 = 0;
    }

    if (type != 2)
    {
      v9 = v10;
    }

    if (type >= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_23;
  }

  if (type <= 9)
  {
    if (type == 4)
    {
      v11 = 17;
      goto LABEL_23;
    }

    if (type == 5)
    {
      identifier = [identifierCopy identifier];
      supplementalResourceXMPType = [MEMORY[0x1E69C08F0] supplementalResourceXMPType];
      identifier2 = [supplementalResourceXMPType identifier];
      v16 = [identifier isEqualToString:identifier2];

      if (v16)
      {
        v11 = 9;
      }

      else
      {
        identifier3 = [v8 identifier];
        supplementalResourceAAEType = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
        identifier4 = [supplementalResourceAAEType identifier];
        v22 = [identifier3 isEqualToString:identifier4];

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
  if (type != 11)
  {
    v18 = 0;
  }

  if (type == 10)
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

+ (unint64_t)derivativeCPLTypeFromRecipeID:(unsigned int)d version:(unsigned int)version
{
  v8 = [PLResourceRecipe recipeFromID:?];
  isDerivative = [v8 isDerivative];

  if ((isDerivative & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller+CPL.m" lineNumber:50 description:@"only derivative recipes support mapping to CPL type."];
  }

  if (d <= 131078)
  {
    if (d > 65742)
    {
      switch(d)
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
      switch(d)
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

  if (d <= 131276)
  {
    if (d == 131079)
    {
      return 6;
    }

    if (d != 131081)
    {
      if (d != 131275)
      {
        return 0;
      }

      return 6;
    }

    return 7;
  }

  if (d == 131277)
  {
    return 7;
  }

  if (d == 131475)
  {
    return 28;
  }

  if (d != 327683)
  {
    return 0;
  }

  v11 = 27;
  if (version != 2)
  {
    v11 = 0;
  }

  if (version)
  {
    return v11;
  }

  else
  {
    return 10;
  }
}

+ (id)generatedValidatedExternalSyndicationResourceOfType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d fileURL:(id)l requireFileToBePresent:(BOOL)present uniformTypeIdentifier:(id)identifier
{
  presentCopy = present;
  v10 = *&d;
  v11 = *&version;
  v12 = *&type;
  lCopy = l;
  identifierCopy = identifier;
  v16 = objc_alloc_init(PLSyndicationValidatedExternalResource);
  [(PLValidatedExternalResource *)v16 setResourceType:v12];
  [(PLValidatedExternalResource *)v16 setVersion:v11];
  [(PLValidatedExternalResource *)v16 setRecipeID:v10];
  [(PLValidatedExternalResource *)v16 setUniformTypeIdentifier:identifierCopy];

  if (lCopy && (-[PLValidatedExternalResource setFileURL:](v16, "setFileURL:", lCopy), (v17 = [self _getURLDataLength:lCopy]) != 0))
  {
    [(PLValidatedExternalResource *)v16 setDataLength:v17];
  }

  else if (presentCopy)
  {

    v16 = 0;
  }

  return v16;
}

+ (id)generateValidatedExternalOtherResourceOfType:(unsigned int)type forFilePath:(id)path uti:(id)uti requireFileToBePresent:(BOOL)present version:(unsigned int)version
{
  v7 = *&version;
  presentCopy = present;
  v10 = *&type;
  pathCopy = path;
  utiCopy = uti;
  if (pathCopy)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    v15 = [self _getURLDataLength:v14];
    v16 = v15 != 0;
    if (!presentCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v15 = 0;
    if (!presentCopy)
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
  [(PLValidatedExternalResource *)v17 setUniformTypeIdentifier:utiCopy];
  [(PLValidatedExternalResource *)v17 setDataLength:v15];
  [(PLValidatedExternalResource *)v17 setFileURL:v14];
LABEL_8:

  return v17;
}

+ (id)generateValidatedExternalImageResourceOfType:(unsigned int)type forFilePath:(id)path requireFileToBePresent:(BOOL)present version:(unsigned int)version basedOnFullSizeWidth:(int64_t)width andHeight:(int64_t)height recipe:(id)recipe assetKind:(signed __int16)self0 error:(id *)self1
{
  v11 = *&version;
  presentCopy = present;
  v13 = *&type;
  v32[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  recipeCopy = recipe;
  if (pathCopy)
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    v18 = [self _getURLDataLength:v17];
    v19 = v18 != 0;
    if (!presentCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    if (!presentCopy)
    {
LABEL_9:
      v26 = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)v26 setResourceType:v13];
      [(PLValidatedExternalResource *)v26 setVersion:v11];
      -[PLValidatedExternalResource setRecipeID:](v26, "setRecipeID:", [recipeCopy recipeID]);
      if (v19)
      {
        [(PLValidatedExternalResource *)v26 setFileURL:v17];
        [(PLValidatedExternalResource *)v26 setDataLength:v18];
      }

      LOWORD(v28) = kind;
      [objc_opt_class() _applyImageIOMetadataToExternalResource:v26 fromFileURL:v17 fileExists:v19 assumedWidth:width assumedHeight:height recipe:recipeCopy assetKind:v28];
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
  pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"file does not exist at path: %@", pathCopy];
  v32[0] = pathCopy;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v24 = [v20 errorWithDomain:v21 code:4 userInfo:v23];

  if (error)
  {
    v25 = v24;
    *error = v24;
  }

  v26 = 0;
LABEL_12:

  return v26;
}

+ (id)externalResourcesForExistingAsset:(id)asset referencedResourceURLs:(id)ls
{
  assetCopy = asset;
  lsCopy = ls;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:1480 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  array = [MEMORY[0x1E695DF70] array];
  if ([assetCopy isCloudSharedAsset])
  {
    v10 = [self _validatedExternalResourcesFromSharedStreamAsset:assetCopy];
LABEL_8:
    v11 = v10;
    [array addObjectsFromArray:v10];
    goto LABEL_9;
  }

  if (![assetCopy kind] || objc_msgSend(assetCopy, "kind") == 1)
  {
    v10 = [self _validatedExternalResourcesFromLocalImageOrVideoAsset:assetCopy referencedResourceURLs:lsCopy];
    goto LABEL_8;
  }

  v11 = [self _validatedExternalResourceIfPresentForAudioOrUnknownAsset:assetCopy];
  if (v11)
  {
    [array addObject:v11];
  }

LABEL_9:

  return array;
}

+ (BOOL)installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:(id)context migrator:(id)migrator
{
  v43[6] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  migratorCopy = migrator;
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
  v19 = migratorCopy;
  v38 = v19;
  v20 = v17;
  v39 = v20;
  v21 = contextCopy;
  v40 = v21;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __119__PLResourceInstaller_installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext_migrator___block_invoke_2;
  v34[3] = &unk_1E756C570;
  selfCopy = self;
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

+ (BOOL)removeLegacyCloudResourcesInStore:(id)store migrator:(id)migrator
{
  v4 = [migrator managedObjectContextForMigrationInStore:store name:"+[PLResourceInstaller removeLegacyCloudResourcesInStore:migrator:]" concurrencyType:*MEMORY[0x1E695D708]];
  v5 = +[PLCloudResource entityName];
  v6 = [PLModelMigrator executeBatchDeleteWithEntityName:v5 predicate:0 managedObjectContext:v4 error:0];

  return v6;
}

+ (BOOL)createInternalResourcesForExistingAssetsWithNoExistingResourcesInStore:(id)store migrator:(id)migrator
{
  v6 = *MEMORY[0x1E695D708];
  migratorCopy = migrator;
  v8 = [migratorCopy managedObjectContextForMigrationInStore:store name:"+[PLResourceInstaller createInternalResourcesForExistingAssetsWithNoExistingResourcesInStore:migrator:]" concurrencyType:v6];
  LOBYTE(self) = [self installInternalResourcesForExistingAssetsWithNoExistingResourcesInManagedObjectContext:v8 migrator:migratorCopy];

  return self;
}

+ (BOOL)resetInternalResourcesInStore:(id)store resetUTIs:(BOOL)is resetCodecs:(BOOL)codecs resetMasters:(BOOL)masters migrator:(id)migrator
{
  storeCopy = store;
  migratorCopy = migrator;
  v13 = objc_autoreleasePoolPush();
  v14 = [migratorCopy managedObjectContextForMigrationInStore:storeCopy name:"+[PLResourceInstaller resetInternalResourcesInStore:resetUTIs:resetCodecs:resetMasters:migrator:]" concurrencyType:*MEMORY[0x1E695D708]];
  if (is)
  {
    _predicateForUnrecoverableResources = 0;
  }

  else
  {
    _predicateForUnrecoverableResources = [self _predicateForUnrecoverableResources];
  }

  v16 = +[PLInternalResource entityName];
  v17 = [PLModelMigrator executeBatchDeleteWithEntityName:v16 predicate:_predicateForUnrecoverableResources managedObjectContext:v14 error:0];

  v18 = !masters;
  LOBYTE(v19) = !masters && v17;
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

+ (BOOL)reconsiderSavedAssetTypeInStore:(id)store migrator:(id)migrator
{
  v35[2] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  migratorCopy = migrator;
  if ([migratorCopy isCloudPhotoLibraryEnabled])
  {
    v7 = 1;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"PhotoData", @"CPLAssets"];
    v9 = [migratorCopy managedObjectContextForMigrationInStore:storeCopy name:"+[PLResourceInstaller reconsiderSavedAssetTypeInStore:migrator:]" concurrencyType:*MEMORY[0x1E695D708]];
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
        result = [v22 result];
        *buf = 138412290;
        v32 = result;
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

+ (BOOL)resetImageRequestHintsInContext:(id)context allowOneTimeThumbRebuild:(BOOL)rebuild
{
  v43[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
  pathManager = [contextCopy pathManager];
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  transactionAuthor = [contextCopy transactionAuthor];
  v14 = [PLEnumerateAndSaveController alloc];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke;
  v32[3] = &unk_1E756C520;
  v15 = v10;
  v33 = v15;
  v16 = persistentStoreCoordinator;
  v34 = v16;
  v17 = transactionAuthor;
  v35 = v17;
  v18 = pathManager;
  v36 = v18;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__PLResourceInstaller_resetImageRequestHintsInContext_allowOneTimeThumbRebuild___block_invoke_3;
  v30[3] = &unk_1E756C548;
  rebuildCopy = rebuild;
  v30[4] = &v37;
  v19 = [(PLEnumerateAndSaveController *)v14 initWithName:v15 fetchRequest:v8 context:contextCopy options:5 generateContextBlock:v32 didFetchObjectIDsBlock:0 processResultBlock:v30];
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

+ (id)_validatedExternalResourcesFromSharedStreamAsset:(id)asset
{
  assetCopy = asset;
  assetID = [assetCopy assetID];
  libraryID = [assetID libraryID];
  v6 = PLDataStoreForClassIDAndLibraryID(2, libraryID);

  v7 = [v6 requiredExternalResourcesForMigratingOrImportingAsset:assetCopy];

  return v7;
}

+ (id)generateVideoResourcesFromVideoAsset:(id)asset referencedVideoPath:(id)path
{
  assetCopy = asset;
  pathCopy = path;
  array = [MEMORY[0x1E695DF70] array];
  managedObjectContext = [assetCopy managedObjectContext];
  v10 = pathCopy;
  pathForOriginalFile = v10;
  if (!v10)
  {
    pathForOriginalFile = [assetCopy pathForOriginalFile];
  }

  v12 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForOriginalFile context:managedObjectContext];
  v13 = v12;
  if (v12)
  {
    [v12 setResourceType:1];
    [v13 setVersion:0];
    [array addObject:v13];
  }

  pathForNonAdjustedLargeVideoFile = [assetCopy pathForNonAdjustedLargeVideoFile];
  v15 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForNonAdjustedLargeVideoFile context:managedObjectContext];
  v16 = v15;
  if (v15)
  {
    [v15 setResourceType:1];
    [v16 setVersion:0];
    [v16 setRecipeID:131077];
    [array addObject:v16];
  }

  pathForNonAdjustedMediumVideoFile = [assetCopy pathForNonAdjustedMediumVideoFile];
  v18 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForNonAdjustedMediumVideoFile context:managedObjectContext];
  v19 = v18;
  if (v18)
  {
    [v18 setResourceType:1];
    [v19 setVersion:0];
    [v19 setRecipeID:131079];
    [array addObject:v19];
  }

  pathForNonAdjustedMediumHDRVideoFile = [assetCopy pathForNonAdjustedMediumHDRVideoFile];
  v21 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForNonAdjustedMediumHDRVideoFile context:managedObjectContext];
  v22 = v21;
  if (v21)
  {
    [v21 setResourceType:1];
    [v22 setVersion:0];
    [v22 setRecipeID:131475];
    [array addObject:v22];
  }

  pathForNonAdjustedSmallVideoFile = [assetCopy pathForNonAdjustedSmallVideoFile];
  v24 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForNonAdjustedSmallVideoFile context:managedObjectContext];
  v25 = v24;
  if (v24)
  {
    [v24 setResourceType:1];
    [v25 setVersion:0];
    [v25 setRecipeID:131081];
    [array addObject:v25];
  }

  if ([assetCopy hasAdjustments] && (objc_msgSend(assetCopy, "isDefaultAdjustedSlomo") & 1) == 0)
  {
    hasUnrenderedAsyncAdjustments = [assetCopy hasUnrenderedAsyncAdjustments];
    pathForFullsizeRenderVideoFile = [assetCopy pathForFullsizeRenderVideoFile];
    v28 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForFullsizeRenderVideoFile context:managedObjectContext];
    if (!v28 && hasUnrenderedAsyncAdjustments)
    {
      v29 = [PLResourceRecipe recipeFromID:0x20000];
      v28 = objc_alloc_init(PLValidatedExternalResource);
      codecFourCharCodeName = [v29 codecFourCharCodeName];
      [(PLValidatedExternalResource *)v28 setCodecFourCharCode:codecFourCharCodeName];

      v31 = [v29 uti];
      [(PLValidatedExternalResource *)v28 setUniformTypeIdentifier:v31];
    }

    if (v28)
    {
      [(PLValidatedExternalResource *)v28 setResourceType:1];
      [(PLValidatedExternalResource *)v28 setVersion:2];
      [(PLValidatedExternalResource *)v28 setRecipeID:0x20000];
      [array addObject:v28];
    }

    pathForPenultimateFullsizeRenderVideoFile = [assetCopy pathForPenultimateFullsizeRenderVideoFile];
    v33 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForPenultimateFullsizeRenderVideoFile context:managedObjectContext];
    v34 = v33;
    if (v33)
    {
      [v33 setResourceType:1];
      [v34 setVersion:1];
      [array addObject:v34];
    }

    pathForAdjustedLargeVideoFile = [assetCopy pathForAdjustedLargeVideoFile];
    v36 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForAdjustedLargeVideoFile context:managedObjectContext];
    v37 = v36;
    if (v36)
    {
      [v36 setResourceType:1];
      [v37 setVersion:2];
      [v37 setRecipeID:131077];
      [array addObject:v37];
    }

    pathForAdjustedMediumVideoFile = [assetCopy pathForAdjustedMediumVideoFile];
    v39 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForAdjustedMediumVideoFile context:managedObjectContext];
    v40 = v39;
    if (v39)
    {
      [v39 setResourceType:1];
      [v40 setVersion:2];
      [v40 setRecipeID:131079];
      [array addObject:v40];
    }

    pathForAdjustedMediumHDRVideoFile = [assetCopy pathForAdjustedMediumHDRVideoFile];
    v42 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForAdjustedMediumHDRVideoFile context:managedObjectContext];
    v43 = v42;
    if (v42)
    {
      [v42 setResourceType:1];
      [v43 setVersion:2];
      [v43 setRecipeID:131475];
      [array addObject:v43];
    }

    pathForAdjustedSmallVideoFile = [assetCopy pathForAdjustedSmallVideoFile];
    v45 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForAdjustedSmallVideoFile context:managedObjectContext];
    v46 = v45;
    if (v45)
    {
      [v45 setResourceType:1];
      [v46 setVersion:2];
      [v46 setRecipeID:131081];
      [array addObject:v46];
    }
  }

  return array;
}

+ (id)validatedExternalResourceForLocalVideoIfPresentAtPath:(id)path context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  if (pathCopy)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [self _getURLDataLength:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E6987E28] assetWithURL:v8];
    if (v11)
    {
      v12 = objc_alloc_init(PLValidatedExternalResource);
      plVideoCodecFourCharCodeString = [v11 plVideoCodecFourCharCodeString];
      if (plVideoCodecFourCharCodeString)
      {
        [(PLValidatedExternalResource *)v12 setCodecFourCharCode:plVideoCodecFourCharCodeString];
      }

      [PLManagedAsset dimensionsForAVAsset:v11];
      v15 = v14;
      [(PLValidatedExternalResource *)v12 setUnorientedWidth:v16];
      [(PLValidatedExternalResource *)v12 setUnorientedHeight:v15];
      [(PLValidatedExternalResource *)v12 setFileURL:v8];
      [(PLValidatedExternalResource *)v12 setDataLength:v10];
      v17 = MEMORY[0x1E69C08F0];
      pathExtension = [pathCopy pathExtension];
      v19 = [v17 resourceModelTypeForFilenameExtension:pathExtension];
      identifier = [v19 identifier];

      if (identifier)
      {
        v21 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];
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

+ (id)_storeValidatedLocalExternalResource:(id)resource forAsset:(id)asset
{
  v20[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v20[0] = resourceCopy;
  v6 = MEMORY[0x1E695DEC8];
  assetCopy = asset;
  v8 = [v6 arrayWithObjects:v20 count:1];
  v17 = 0;
  v9 = [PLResourceDataStoreManager storeExternalResources:v8 forAsset:assetCopy forLifecycleEvent:2 error:&v17];

  v10 = v17;
  if (v9)
  {
    anyObject = [v9 anyObject];
    v12 = [MEMORY[0x1E69BF2D0] successWithResult:anyObject];
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

+ (id)_validatedExternalResourcesFromLocalImageOrVideoAsset:(id)asset referencedResourceURLs:(id)ls
{
  assetCopy = asset;
  lsCopy = ls;
  array = [MEMORY[0x1E695DF70] array];
  managedObjectContext = [assetCopy managedObjectContext];
  hasAdjustments = [assetCopy hasAdjustments];
  width = [assetCopy width];
  height = [assetCopy height];
  if (![assetCopy kind])
  {
    mainFileURL = [lsCopy objectForKeyedSubscript:&unk_1F0FBC808];
    if (!mainFileURL)
    {
      mainFileURL = [assetCopy mainFileURL];
    }

    v10 = [self _getURLDataLength:mainFileURL];
    if (v10)
    {
      v11 = v10;
      pathForDeferredProcessingPreviewFile = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)pathForDeferredProcessingPreviewFile setResourceType:0];
      [(PLValidatedExternalResource *)pathForDeferredProcessingPreviewFile setVersion:0];
      [(PLValidatedExternalResource *)pathForDeferredProcessingPreviewFile setFileURL:mainFileURL];
      [(PLValidatedExternalResource *)pathForDeferredProcessingPreviewFile setDataLength:v11];
      originalUniformTypeIdentifier = [assetCopy originalUniformTypeIdentifier];
      v14 = [PLUniformTypeIdentifier utiWithIdentifier:originalUniformTypeIdentifier];

      [(PLValidatedExternalResource *)pathForDeferredProcessingPreviewFile setUniformTypeIdentifier:v14];
      -[PLValidatedExternalResource setUnorientedWidth:](pathForDeferredProcessingPreviewFile, "setUnorientedWidth:", [assetCopy originalWidth]);
      -[PLValidatedExternalResource setUnorientedHeight:](pathForDeferredProcessingPreviewFile, "setUnorientedHeight:", [assetCopy originalHeight]);
      [array addObject:pathForDeferredProcessingPreviewFile];
    }

    else
    {
      additionalAttributes = [assetCopy additionalAttributes];
      deferredPhotoIdentifier = [additionalAttributes deferredPhotoIdentifier];
      if (deferredPhotoIdentifier)
      {
        v91 = [assetCopy deferredProcessingNeeded] == 1 || objc_msgSend(assetCopy, "deferredProcessingNeeded") == 5;
      }

      else
      {
        v91 = 0;
      }

      deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
      if (!v91 && deferredProcessingNeeded != 10)
      {
        goto LABEL_8;
      }

      pathForDeferredProcessingPreviewFile = [assetCopy pathForDeferredProcessingPreviewFile];
      if (!pathForDeferredProcessingPreviewFile)
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
      originalWidth = [assetCopy originalWidth];
      originalHeight = [assetCopy originalHeight];
      LOWORD(v101) = [assetCopy kind];
      v14 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForDeferredProcessingPreviewFile requireFileToBePresent:1 version:0 basedOnFullSizeWidth:originalWidth andHeight:originalHeight recipe:v98 assetKind:v101 error:0];
      if (v14)
      {
        [array addObject:v14];
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  if (([assetCopy cameraProcessingAdjustmentState] & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([assetCopy kind])
  {
    if ([assetCopy kind] != 1)
    {
      goto LABEL_21;
    }

    v15 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC7D8];
    path = [v15 path];

    if (!path)
    {
      path = [assetCopy pathForSpatialOverCaptureContentFile];
    }

    v17 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:path context:managedObjectContext];
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

  if ([assetCopy deferredProcessingNeeded] == 1 || objc_msgSend(assetCopy, "deferredProcessingNeeded") == 6)
  {
    path = [PLResourceRecipe recipeFromID:65946];
    pathForSpatialOverCaptureContentFile = [assetCopy pathForSpatialOverCaptureContentFile];
    originalHeight2 = [assetCopy originalHeight];
    originalWidth2 = [assetCopy originalWidth];
    LOWORD(v101) = [assetCopy kind];
    v18 = [self generateValidatedExternalImageResourceOfType:10 forFilePath:pathForSpatialOverCaptureContentFile requireFileToBePresent:0 version:0 basedOnFullSizeWidth:originalHeight2 andHeight:originalWidth2 recipe:path assetKind:v101 error:0];

    if (!v18)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:
    [array addObject:v18];
    goto LABEL_20;
  }

  v92 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC7D8];
  path = [v92 path];

  if (path)
  {
LABEL_84:
    originalWidth3 = [assetCopy originalWidth];
    originalHeight3 = [assetCopy originalHeight];
    LOWORD(v101) = [assetCopy kind];
    v18 = [self generateValidatedExternalImageResourceOfType:10 forFilePath:path requireFileToBePresent:1 version:0 basedOnFullSizeWidth:originalWidth3 andHeight:originalHeight3 recipe:0 assetKind:v101 error:0];
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  pathForSpatialOverCaptureContentFile2 = [assetCopy pathForSpatialOverCaptureContentFile];
  if (pathForSpatialOverCaptureContentFile2)
  {
    path = pathForSpatialOverCaptureContentFile2;
    goto LABEL_84;
  }

LABEL_21:
  v22 = [PLResourceRecipe recipeFromID:65737];
  pathForNonAdjustedFullsizeImageFile = [assetCopy pathForNonAdjustedFullsizeImageFile];
  originalWidth4 = [assetCopy originalWidth];
  originalHeight4 = [assetCopy originalHeight];
  LOWORD(v101) = [assetCopy kind];
  v26 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForNonAdjustedFullsizeImageFile requireFileToBePresent:1 version:0 basedOnFullSizeWidth:originalWidth4 andHeight:originalHeight4 recipe:v22 assetKind:v101 error:0];

  if (v26)
  {
    [array addObject:v26];
  }

  v27 = [PLResourceRecipe recipeFromID:65741];
  pathForNonAdjustedLargeThumbnailFile = [assetCopy pathForNonAdjustedLargeThumbnailFile];
  originalWidth5 = [assetCopy originalWidth];
  originalHeight5 = [assetCopy originalHeight];
  LOWORD(v102) = [assetCopy kind];
  v31 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForNonAdjustedLargeThumbnailFile requireFileToBePresent:1 version:0 basedOnFullSizeWidth:originalWidth5 andHeight:originalHeight5 recipe:v27 assetKind:v102 error:0];

  v32 = array;
  if (v31)
  {
    [array addObject:v31];
  }

  if ([assetCopy kindSubtype] == 2)
  {
    v33 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC820];
    path2 = [v33 path];

    if (!path2)
    {
      path2 = [assetCopy pathForVideoComplementFile];
    }

    v35 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:path2 context:managedObjectContext];
    v36 = v35;
    if (v35)
    {
      [v35 setResourceType:3];
      [v36 setVersion:0];
      [array addObject:v36];
    }

    if ([assetCopy cameraProcessingAdjustmentState])
    {
      v37 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC7F0];
      path3 = [v37 path];

      if (!path3)
      {
        path3 = [assetCopy pathForVideoComplementSpatialOverCaptureContentFile];
      }

      v39 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:path3 context:managedObjectContext];
      v40 = v39;
      if (v39)
      {
        [v39 setResourceType:11];
        [v40 setVersion:0];
        [v40 setTrashedStateFromURL];
        [array addObject:v40];
      }
    }
  }

  if (hasAdjustments)
  {
    v41 = [PLResourceRecipe recipeFromID:65937];
    pathForSubstandardFullsizeRenderImageFile = [assetCopy pathForSubstandardFullsizeRenderImageFile];
    LOWORD(v103) = [assetCopy kind];
    v43 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForSubstandardFullsizeRenderImageFile requireFileToBePresent:1 version:2 basedOnFullSizeWidth:width andHeight:height recipe:v41 assetKind:v103 error:0];

    if (v43)
    {
      [array addObject:v43];
    }

    if ([assetCopy hasUnrenderedAsyncAdjustments])
    {
      v44 = [PLResourceRecipe recipeFromID:65941];
      pathForAsyncAdjustedRenderPreviewImageFile = [assetCopy pathForAsyncAdjustedRenderPreviewImageFile];
      LOWORD(v104) = [assetCopy kind];
      v46 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForAsyncAdjustedRenderPreviewImageFile requireFileToBePresent:1 version:2 basedOnFullSizeWidth:width andHeight:height recipe:v44 assetKind:v104 error:0];

      v32 = array;
      if (v46)
      {
        [array addObject:v46];
      }
    }

    v47 = !v43 && ![assetCopy hasUnrenderedAsyncAdjustments] || objc_msgSend(assetCopy, "kind") != 0;
    pathForAdjustedFullsizeImageFile = [assetCopy pathForAdjustedFullsizeImageFile];
    v49 = [self generateAdjustedFullSizeRenderResourceForFilePath:pathForAdjustedFullsizeImageFile requireFileToBePresent:v47 basedOnFullSizeWidth:width andHeight:height];

    if (v49)
    {
      [v32 addObject:v49];
    }

    v50 = [self _speculativePathForPenultimateFullsizeRenderImageFileForAsset:assetCopy];
    LOWORD(v104) = [assetCopy kind];
    v51 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:v50 requireFileToBePresent:1 version:1 basedOnFullSizeWidth:width andHeight:height recipe:0 assetKind:v104 error:0];

    if (v51)
    {
      [v32 addObject:v51];
    }

    v52 = [PLResourceRecipe recipeFromID:65741];
    pathForAdjustedLargeThumbnailFile = [assetCopy pathForAdjustedLargeThumbnailFile];
    LOWORD(v105) = [assetCopy kind];
    v54 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForAdjustedLargeThumbnailFile requireFileToBePresent:1 version:2 basedOnFullSizeWidth:width andHeight:height recipe:v52 assetKind:v105 error:0];

    if (v54)
    {
      [v32 addObject:v54];
    }

    identifier = [*MEMORY[0x1E6982D60] identifier];
    v56 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];

    pathForAdjustmentSecondaryDataFile = [assetCopy pathForAdjustmentSecondaryDataFile];
    v58 = [self generateValidatedExternalOtherResourceOfType:7 forFilePath:pathForAdjustmentSecondaryDataFile uti:v56 requireFileToBePresent:1 version:2];

    if (v58)
    {
      [v32 addObject:v58];
    }

    if ([assetCopy kindSubtype] == 2)
    {
      hasUnrenderedAsyncAdjustments = [assetCopy hasUnrenderedAsyncAdjustments];
      pathForFullsizeRenderVideoFile = [assetCopy pathForFullsizeRenderVideoFile];
      v61 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForFullsizeRenderVideoFile context:managedObjectContext];
      if (!v61 && hasUnrenderedAsyncAdjustments)
      {
        v62 = [PLResourceRecipe recipeFromID:131272];
        v61 = objc_alloc_init(PLValidatedExternalResource);
        codecFourCharCodeName = [v62 codecFourCharCodeName];
        [(PLValidatedExternalResource *)v61 setCodecFourCharCode:codecFourCharCodeName];

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

      pathForPenultimateFullsizeRenderVideoFile = [assetCopy pathForPenultimateFullsizeRenderVideoFile];
      v66 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForPenultimateFullsizeRenderVideoFile context:managedObjectContext];
      v67 = v66;
      if (v66)
      {
        [v66 setResourceType:3];
        [v67 setVersion:1];
        [v32 addObject:v67];
      }
    }
  }

  if ([assetCopy kind] == 1)
  {
    v68 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC838];
    path4 = [v68 path];
    v70 = [self generateVideoResourcesFromVideoAsset:assetCopy referencedVideoPath:path4];
    [v32 addObjectsFromArray:v70];

    v71 = [PLResourceRecipe recipeFromID:65948];
    pathForTransientVideoPosterFramePreview = [assetCopy pathForTransientVideoPosterFramePreview];
    width2 = [assetCopy width];
    height2 = [assetCopy height];
    LOWORD(v103) = [assetCopy kind];
    v75 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathForTransientVideoPosterFramePreview requireFileToBePresent:1 version:2 basedOnFullSizeWidth:width2 andHeight:height2 recipe:v71 assetKind:v103 error:0];

    if (v75)
    {
      [v32 addObject:v75];
    }
  }

  v76 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC850];
  path5 = [v76 path];

  if (!path5)
  {
    path5 = [assetCopy pathForOriginalAdjustmentFile];
  }

  supplementalResourceAAEType = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
  identifier2 = [supplementalResourceAAEType identifier];
  v80 = [PLUniformTypeIdentifier utiWithIdentifier:identifier2];

  v81 = [self generateValidatedExternalOtherResourceOfType:5 forFilePath:path5 uti:v80 requireFileToBePresent:1 version:0];
  v82 = v81;
  if (v81)
  {
    [v81 setRecipeID:0];
    [v32 addObject:v82];
  }

  pathForXMPFile = [assetCopy pathForXMPFile];
  v84 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForXMPFile];
  supplementalResourceXMPType = [MEMORY[0x1E69C08F0] supplementalResourceXMPType];
  identifier3 = [supplementalResourceXMPType identifier];
  v87 = [self _validatedExternalResourceFromSupplementalFileURL:v84 withUTI:identifier3 ptpTrashedState:0 index:0 asset:assetCopy];

  if (v87)
  {
    [v82 setRecipeID:0];
    [array addObject:v87];
  }

  return array;
}

+ (id)_speculativePathForPenultimateFullsizeRenderImageFileForAsset:(id)asset
{
  assetCopy = asset;
  v4 = [assetCopy pathForPenultimateFullsizeRenderImageFileWithUTI:@"public.heic"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    pathForPenultimateFullsizeRenderImageFile = v4;
  }

  else
  {
    pathForPenultimateFullsizeRenderImageFile = [assetCopy pathForPenultimateFullsizeRenderImageFile];
  }

  v8 = pathForPenultimateFullsizeRenderImageFile;

  return v8;
}

+ (id)generateAdjustedFullSizeRenderResourceForFilePath:(id)path requireFileToBePresent:(BOOL)present basedOnFullSizeWidth:(int64_t)width andHeight:(int64_t)height
{
  presentCopy = present;
  pathCopy = path;
  v11 = [PLResourceRecipe recipeFromID:65938];
  LOWORD(v14) = 0;
  v12 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:pathCopy requireFileToBePresent:presentCopy version:2 basedOnFullSizeWidth:width andHeight:height recipe:v11 assetKind:v14 error:0];

  return v12;
}

+ (id)onDemand_installResourceWithResourceIdentity:(id)identity forAsset:(id)asset
{
  identityCopy = identity;
  assetCopy = asset;
  if (assetCopy)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"nonPersistedResource"}];

LABEL_3:
  v9 = objc_alloc_init(PLValidatedExternalResource);
  if (v9)
  {
    recipeID = [identityCopy recipeID];
    v11 = [PLResourceRecipe recipeFromID:recipeID];
    -[PLValidatedExternalResource setResourceType:](v9, "setResourceType:", [identityCopy resourceType]);
    -[PLValidatedExternalResource setVersion:](v9, "setVersion:", [identityCopy version]);
    [(PLValidatedExternalResource *)v9 setRecipeID:recipeID];
    codecFourCharCodeName = [v11 codecFourCharCodeName];
    [(PLValidatedExternalResource *)v9 setCodecFourCharCode:codecFourCharCodeName];

    v13 = [v11 uti];
    [(PLValidatedExternalResource *)v9 setUniformTypeIdentifier:v13];

    assetID = [assetCopy assetID];
    libraryID = [assetID libraryID];
    v16 = [PLResourceDataStoreManager storeForExternalResource:v9 inLibraryWithID:libraryID];

    if (v16)
    {
      v21 = 0;
      [v16 storeExternalResource:v9 forAsset:assetCopy options:0 error:0 resultingResource:&v21];
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

+ (id)onDemand_installExistingAdjustmentSuggestionResourceAtFilePath:(id)path recipe:(id)recipe forAsset:(id)asset
{
  assetCopy = asset;
  v9 = *MEMORY[0x1E6982E00];
  recipeCopy = recipe;
  pathCopy = path;
  identifier = [v9 identifier];
  v13 = [self _validatedExternalResourceAtPath:pathCopy recipe:recipeCopy type:15 version:3 identifier:identifier];

  if ([v13 isSuccess])
  {
    result = [v13 result];
    [self _storeValidatedLocalExternalResource:result forAsset:assetCopy];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    result = [v13 error];
    [v15 failureWithError:result];
  }
  v16 = ;

  return v16;
}

+ (id)onDemand_installExistingAlchemistV2ResourceAtFilePath:(id)path recipe:(id)recipe forAsset:(id)asset
{
  assetCopy = asset;
  v9 = *MEMORY[0x1E6983148];
  recipeCopy = recipe;
  pathCopy = path;
  identifier = [v9 identifier];
  v13 = [self _validatedExternalResourceAtPath:pathCopy recipe:recipeCopy type:14 version:3 identifier:identifier];

  if ([v13 isSuccess])
  {
    result = [v13 result];
    [self _storeValidatedLocalExternalResource:result forAsset:assetCopy];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    result = [v13 error];
    [v15 failureWithError:result];
  }
  v16 = ;

  return v16;
}

+ (id)onDemand_installExistingComputeResourceAtFilePath:(id)path recipe:(id)recipe forAsset:(id)asset
{
  assetCopy = asset;
  v9 = *MEMORY[0x1E6982D60];
  recipeCopy = recipe;
  pathCopy = path;
  identifier = [v9 identifier];
  v13 = [self _validatedExternalResourceAtPath:pathCopy recipe:recipeCopy type:14 version:3 identifier:identifier];

  if ([v13 isSuccess])
  {
    result = [v13 result];
    [self _storeValidatedLocalExternalResource:result forAsset:assetCopy];
  }

  else
  {
    v15 = MEMORY[0x1E69BF2D0];
    result = [v13 error];
    [v15 failureWithError:result];
  }
  v16 = ;

  return v16;
}

+ (id)onDemand_installEmptyComputeResourceWithRecipe:(id)recipe forAsset:(id)asset error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v9 = [self _validatedExternalResourceForComputeResourceWithRecipe:recipe];
  v10 = v9;
  if (v9)
  {
    v23[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = 0;
    v12 = [PLResourceDataStoreManager storeExternalResources:v11 forAsset:assetCopy forLifecycleEvent:2 error:&v20];
    v13 = v20;

    if (v12)
    {
      anyObject = [v12 anyObject];
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

      anyObject = 0;
    }

    if (error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    anyObject = 0;
    if (error)
    {
LABEL_10:
      v18 = v13;
      *error = v13;
    }
  }

  return anyObject;
}

+ (id)onDemand_installExistingAdjustedResourceAtFilePath:(id)path withType:(unsigned int)type recipe:(id)recipe forAsset:(id)asset error:(id *)error
{
  v10 = *&type;
  v36[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  recipeCopy = recipe;
  assetCopy = asset;
  v16 = assetCopy;
  if (!pathCopy)
  {
    anyObject = 0;
    goto LABEL_16;
  }

  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  width = [v16 width];
  height = [v16 height];
  v33 = 0;
  LOWORD(v31) = [v16 kind];
  v19 = [self generateValidatedExternalImageResourceOfType:v10 forFilePath:pathCopy requireFileToBePresent:1 version:2 basedOnFullSizeWidth:width andHeight:height recipe:recipeCopy assetKind:v31 error:&v33];
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
      anyObject = [v22 anyObject];
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

      anyObject = 0;
    }

    v20 = v23;
    if (!error)
    {
      goto LABEL_15;
    }
  }

  else
  {
    anyObject = 0;
    if (!error)
    {
      goto LABEL_15;
    }
  }

  v28 = v20;
  *error = v20;
LABEL_15:

LABEL_16:

  return anyObject;
}

+ (id)onDemand_installOriginalVideoComplementForSyndicationAsset:(id)asset contentType:(id)type
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  typeCopy = type;
  additionalAttributes = [assetCopy additionalAttributes];
  syndicationIdentifier = [additionalAttributes syndicationIdentifier];

  if (!syndicationIdentifier)
  {
    v10 = PLBackendGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    uuid = [assetCopy uuid];
    *buf = 138543362;
    v26 = uuid;
    v12 = "Cannot install syndication resource on asset that is missing syndication identifier, uuid: %{public}@";
LABEL_10:
    v13 = v10;
    v14 = 12;
    goto LABEL_11;
  }

  if ([assetCopy bundleScope] != 3)
  {
    v10 = PLBackendGetLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    uuid = [assetCopy uuid];
    *buf = 138543362;
    v26 = uuid;
    v12 = "Cannot install syndication resource on asset that is not in syndication bundle scope, uuid: %{public}@";
    goto LABEL_10;
  }

  if ([assetCopy kind] - 1 <= 2)
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uuid = [assetCopy uuid];
      *buf = 138543618;
      v26 = uuid;
      v27 = 2050;
      kind = [assetCopy kind];
      v12 = "Only images can be live photos, cannot install syndication video complement, uuid: %{public}@, type: %{public}ld";
      v13 = v10;
      v14 = 22;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }

LABEL_12:
    anyObject = 0;
    goto LABEL_13;
  }

  v17 = MEMORY[0x1E695DFF8];
  pathForVideoComplementFile = [assetCopy pathForVideoComplementFile];
  v19 = [v17 fileURLWithPath:pathForVideoComplementFile];
  identifier = [typeCopy identifier];
  v21 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];
  v10 = [self generatedValidatedExternalSyndicationResourceOfType:3 version:0 recipeID:0 fileURL:v19 requireFileToBePresent:0 uniformTypeIdentifier:v21];

  v24 = v10;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v23 = [PLResourceDataStoreManager storeExternalResources:v22 forAsset:assetCopy forLifecycleEvent:0 error:0];

  anyObject = [v23 anyObject];

LABEL_13:

  return anyObject;
}

+ (id)onDemand_installOriginalResourceForSyndicationAsset:(id)asset
{
  v22 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  additionalAttributes = [assetCopy additionalAttributes];
  syndicationIdentifier = [additionalAttributes syndicationIdentifier];

  if (!syndicationIdentifier)
  {
    v12 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    uuid = [assetCopy uuid];
    *buf = 138543362;
    v21 = uuid;
    v17 = "[sync] cannot install resource on asset missing syndication identifier, uuid: %{public}@";
LABEL_12:
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);

    goto LABEL_13;
  }

  if ([assetCopy bundleScope] != 3)
  {
    v12 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    uuid = [assetCopy uuid];
    *buf = 138543362;
    v21 = uuid;
    v17 = "[sync] cannot install resource on asset that is not in syndication bundle scope, uuid: %{public}@";
    goto LABEL_12;
  }

  kind = [assetCopy kind];
  if (kind != 3)
  {
    if (kind == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = kind == 1;
    }

    mainFileURL = [assetCopy mainFileURL];
    uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
    v11 = [PLUniformTypeIdentifier utiWithIdentifier:uniformTypeIdentifier];
    v12 = [self generatedValidatedExternalSyndicationResourceOfType:v8 version:0 recipeID:0 fileURL:mainFileURL requireFileToBePresent:0 uniformTypeIdentifier:v11];

    v19 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v14 = [PLResourceDataStoreManager storeExternalResources:v13 forAsset:assetCopy forLifecycleEvent:0 error:0];

    anyObject = [v14 anyObject];

    goto LABEL_14;
  }

  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    uuid = [assetCopy uuid];
    *buf = 138543362;
    v21 = uuid;
    v17 = "[sync] cannot install resource on asset with unknown type, uuid: %{public}@";
    goto LABEL_12;
  }

LABEL_13:
  anyObject = 0;
LABEL_14:

  return anyObject;
}

+ (id)onDemand_installLocalVideoKeyFrameForAsset:(id)asset
{
  v15[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = [PLResourceRecipe recipeFromID:65749];
  width = [assetCopy width];
  height = [assetCopy height];
  LOWORD(v14) = [assetCopy kind];
  v8 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:0 requireFileToBePresent:0 version:3 basedOnFullSizeWidth:width andHeight:height recipe:v5 assetKind:v14 error:0];
  v9 = +[PLUniformTypeIdentifier jpegUniformTypeIdentifier];
  [v8 setUniformTypeIdentifier:v9];

  v15[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v11 = [PLResourceDataStoreManager storeExternalResources:v10 forAsset:assetCopy forLifecycleEvent:2 error:0];

  anyObject = [v11 anyObject];

  return anyObject;
}

+ (id)onDemand_installOriginalSOCVideoComplementPresentForAsset:(id)asset referencedResourceURLs:(id)ls
{
  assetCopy = asset;
  lsCopy = ls;
  managedObjectContext = [assetCopy managedObjectContext];
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v10 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC7F0];
  path = [v10 path];

  if (!path)
  {
    path = [assetCopy pathForVideoComplementSpatialOverCaptureContentFile];
  }

  v12 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:path context:managedObjectContext];
  v13 = v12;
  if (v12)
  {
    [v12 setResourceType:11];
    [v13 setVersion:0];
    [v13 setTrashedStateFromURL];
    assetID = [assetCopy assetID];
    libraryID = [assetID libraryID];
    v16 = [PLResourceDataStoreManager storeForExternalResource:v13 inLibraryWithID:libraryID];

    if (v16)
    {
      v20 = 0;
      [v16 storeExternalResource:v13 forAsset:assetCopy options:0 error:0 resultingResource:&v20];
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

+ (id)onDemand_installOriginalSOCVideoPresentForAsset:(id)asset referencedResourceURLs:(id)ls
{
  assetCopy = asset;
  lsCopy = ls;
  managedObjectContext = [assetCopy managedObjectContext];
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v10 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC7D8];
  path = [v10 path];

  if (path || ([assetCopy pathForSpatialOverCaptureContentFile], (path = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:path context:managedObjectContext];
    v13 = v12;
    if (v12)
    {
      [v12 setResourceType:10];
      [v13 setVersion:0];
      [v13 setTrashedStateFromURL];
      assetID = [assetCopy assetID];
      libraryID = [assetID libraryID];
      v16 = [PLResourceDataStoreManager storeForExternalResource:v13 inLibraryWithID:libraryID];

      if (v16)
      {
        v20 = 0;
        [v16 storeExternalResource:v13 forAsset:assetCopy options:0 error:0 resultingResource:&v20];
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

+ (id)onDemand_installOriginalSOCImagePresentForAsset:(id)asset referencedResourceURLs:(id)ls
{
  assetCopy = asset;
  lsCopy = ls;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:522 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [lsCopy objectForKeyedSubscript:&unk_1F0FBC7D8];
  path = [v9 path];

  if (path || ([assetCopy pathForSpatialOverCaptureContentFile], (path = objc_claimAutoreleasedReturnValue()) != 0))
  {
    originalWidth = [assetCopy originalWidth];
    originalHeight = [assetCopy originalHeight];
    LOWORD(v20) = [assetCopy kind];
    v13 = [self generateValidatedExternalImageResourceOfType:10 forFilePath:path requireFileToBePresent:1 version:0 basedOnFullSizeWidth:originalWidth andHeight:originalHeight recipe:0 assetKind:v20 error:0];
    if (v13)
    {
      assetID = [assetCopy assetID];
      libraryID = [assetID libraryID];
      v16 = [PLResourceDataStoreManager storeForExternalResource:v13 inLibraryWithID:libraryID];

      if (v16)
      {
        v21 = 0;
        [v16 storeExternalResource:v13 forAsset:assetCopy options:0 error:0 resultingResource:&v21];
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

+ (id)onDemand_installOriginalAdjustmentResourceIfPresentForAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  pathForOriginalAdjustmentFile = [assetCopy pathForOriginalAdjustmentFile];
  supplementalResourceAAEType = [MEMORY[0x1E69C08F0] supplementalResourceAAEType];
  identifier = [supplementalResourceAAEType identifier];
  v9 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];

  v10 = [self generateValidatedExternalOtherResourceOfType:5 forFilePath:pathForOriginalAdjustmentFile uti:v9 requireFileToBePresent:1 version:0];
  v11 = v10;
  if (v10)
  {
    [v10 setRecipeID:0];
    assetID = [assetCopy assetID];
    libraryID = [assetID libraryID];
    v14 = [PLResourceDataStoreManager storeForExternalResource:v11 inLibraryWithID:libraryID];

    if (v14)
    {
      v18 = 0;
      [v14 storeExternalResource:v11 forAsset:assetCopy options:0 error:0 resultingResource:&v18];
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

+ (id)onDemand_installAdjustedDeferredFullSizeVideoComplementResourceForAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = objc_alloc_init(PLValidatedExternalResource);
  if (v6)
  {
    v7 = [PLResourceRecipe recipeFromID:131272];
    [(PLValidatedExternalResource *)v6 setResourceType:3];
    [(PLValidatedExternalResource *)v6 setVersion:2];
    [(PLValidatedExternalResource *)v6 setRecipeID:131272];
    codecFourCharCodeName = [v7 codecFourCharCodeName];
    [(PLValidatedExternalResource *)v6 setCodecFourCharCode:codecFourCharCodeName];

    v9 = [v7 uti];
    [(PLValidatedExternalResource *)v6 setUniformTypeIdentifier:v9];

    assetID = [assetCopy assetID];
    libraryID = [assetID libraryID];
    v12 = [PLResourceDataStoreManager storeForExternalResource:v6 inLibraryWithID:libraryID];

    if (v12)
    {
      v16 = 0;
      [v12 storeExternalResource:v6 forAsset:assetCopy options:0 error:0 resultingResource:&v16];
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

+ (id)onDemand_installAdjustedFullSizeVideoComplementResourceIfPresentForAsset:(id)asset
{
  assetCopy = asset;
  managedObjectContext = [assetCopy managedObjectContext];
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:454 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  pathForFullsizeRenderVideoFile = [assetCopy pathForFullsizeRenderVideoFile];
  v8 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForFullsizeRenderVideoFile context:managedObjectContext];
  v9 = v8;
  if (v8)
  {
    [v8 setResourceType:3];
    [v9 setVersion:2];
    [v9 setRecipeID:131272];
    assetID = [assetCopy assetID];
    libraryID = [assetID libraryID];
    v12 = [PLResourceDataStoreManager storeForExternalResource:v9 inLibraryWithID:libraryID];

    if (v12)
    {
      v16 = 0;
      [v12 storeExternalResource:v9 forAsset:assetCopy options:0 error:0 resultingResource:&v16];
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

+ (id)onDemand_installOriginalVideoComplementResourceIfPresentForAsset:(id)asset
{
  assetCopy = asset;
  managedObjectContext = [assetCopy managedObjectContext];
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  pathForVideoComplementFile = [assetCopy pathForVideoComplementFile];
  v8 = [self validatedExternalResourceForLocalVideoIfPresentAtPath:pathForVideoComplementFile context:managedObjectContext];
  v9 = v8;
  if (v8)
  {
    [v8 setResourceType:3];
    [v9 setVersion:0];
    assetID = [assetCopy assetID];
    libraryID = [assetID libraryID];
    v12 = [PLResourceDataStoreManager storeForExternalResource:v9 inLibraryWithID:libraryID];

    if (v12)
    {
      v16 = 0;
      [v12 storeExternalResource:v9 forAsset:assetCopy options:0 error:0 resultingResource:&v16];
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

+ (id)onDemand_installAdjustedFullSizeRenderResourceAtFilePath:(id)path forAsset:(id)asset
{
  pathCopy = path;
  assetCopy = asset;
  v9 = assetCopy;
  if (pathCopy)
  {
    if (!assetCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
    }

    v10 = [self generateAdjustedFullSizeRenderResourceForFilePath:pathCopy requireFileToBePresent:0 basedOnFullSizeWidth:objc_msgSend(v9 andHeight:{"width"), objc_msgSend(v9, "height")}];
    if (v10)
    {
      assetID = [v9 assetID];
      libraryID = [assetID libraryID];
      v13 = [PLResourceDataStoreManager storeForExternalResource:v10 inLibraryWithID:libraryID];

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

+ (id)onDemand_installPrimaryImageResourceWithRecipe:(id)recipe version:(unsigned int)version forAsset:(id)asset requireFileToBePresent:(BOOL)present
{
  presentCopy = present;
  v8 = *&version;
  v36 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  assetCopy = asset;
  if (!recipeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"recipe"}];
  }

  v13 = [recipeCopy expectedFileURLForVersion:v8 asset:assetCopy];
  v14 = v13;
  if (v13)
  {
    path = [v13 path];
    width = [assetCopy width];
    height = [assetCopy height];
    LOWORD(v28) = [assetCopy kind];
    v18 = [self generateValidatedExternalImageResourceOfType:0 forFilePath:path requireFileToBePresent:presentCopy version:v8 basedOnFullSizeWidth:width andHeight:height recipe:recipeCopy assetKind:v28 error:0];

    if (v18)
    {
      assetID = [assetCopy assetID];
      libraryID = [assetID libraryID];
      v21 = [PLResourceDataStoreManager storeForExternalResource:v18 inLibraryWithID:libraryID];

      if (v21)
      {
        v29 = 0;
        [v21 storeExternalResource:v18 forAsset:assetCopy options:0 error:0 resultingResource:&v29];
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
      uuid = [assetCopy uuid];
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
      v31 = uuid;
      v32 = 2114;
      v33 = recipeCopy;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to resolve expected file url for asset %{public}@, recipe: %{public}@, version: %{public}@", buf, 0x20u);
    }
  }

  v22 = 0;
LABEL_15:

  return v22;
}

+ (void)_applyImageIOMetadataToExternalResource:(id)resource fromFileURL:(id)l fileExists:(BOOL)exists assumedWidth:(int64_t)width assumedHeight:(int64_t)height recipe:(id)recipe assetKind:(signed __int16)kind
{
  existsCopy = exists;
  v41[2] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  lCopy = l;
  recipeCopy = recipe;
  v17 = 0x1E69C0000uLL;
  if (lCopy && existsCopy && (v18 = CGImageSourceCreateWithURL(lCopy, 0)) != 0)
  {
    v19 = v18;
    identifier = CGImageSourceGetType(v18);
    v21 = *MEMORY[0x1E696E0E0];
    v40[0] = *MEMORY[0x1E696E0A8];
    v40[1] = v21;
    v41[0] = MEMORY[0x1E695E110];
    v41[1] = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v23 = CGImageSourceCopyPropertiesAtIndex(v19, 0, v22);
    if (v23)
    {
      v24 = [MEMORY[0x1E69C08F0] typeWithIdentifier:identifier];
      v25 = [v24 conformsToType:*MEMORY[0x1E6982F88]];

      v26 = [(__CFDictionary *)v23 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
      [resourceCopy setUnorientedWidth:{objc_msgSend(v26, "integerValue")}];

      v27 = [(__CFDictionary *)v23 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
      [resourceCopy setUnorientedHeight:{objc_msgSend(v27, "integerValue")}];

      if (v25)
      {
        v28 = PLExifPixelXDimensionFromImageProperties(v23);
        integerValue = [v28 integerValue];

        v30 = PLExifPixelYDimensionFromImageProperties(v23);
        integerValue2 = [v30 integerValue];

        v17 = 0x1E69C0000;
        if (integerValue > [resourceCopy unorientedWidth] && integerValue2 > objc_msgSend(resourceCopy, "unorientedHeight"))
        {
          [resourceCopy setUnorientedWidth:integerValue];
          [resourceCopy setUnorientedHeight:integerValue2];
        }
      }
    }

    CFRelease(v19);

    if (identifier)
    {
      goto LABEL_18;
    }
  }

  else if (recipeCopy)
  {
    v32 = [recipeCopy expectedSizeFromWidth:width height:height];
    v33 = v32;
    if (v32)
    {
      v34 = MEMORY[0x19EAED7D0](v32);
      v36 = v35;
      [resourceCopy setUnorientedWidth:v34];
      height = v36;
    }

    else
    {
      [resourceCopy setUnorientedWidth:width];
    }

    [resourceCopy setUnorientedHeight:height];
  }

  else
  {
    [resourceCopy setUnorientedWidth:width];
    [resourceCopy setUnorientedHeight:height];
  }

  pathExtension = [(__CFURL *)lCopy pathExtension];
  v38 = [*(v17 + 2288) resourceModelTypeForFilenameExtension:pathExtension];
  identifier = [v38 identifier];

  if (!identifier)
  {
    v39 = [recipeCopy uti];
    goto LABEL_20;
  }

LABEL_18:
  v39 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];

LABEL_20:
  [resourceCopy setUniformTypeIdentifier:v39];
}

+ (BOOL)_installInternalResourcesForExistingAsset:(id)asset assumeNoExistingResources:(BOOL)resources referencedResourceURLs:(id)ls includeLegacyCloudResources:(BOOL)cloudResources outResourcesStoreCount:(unint64_t *)count error:(id *)error
{
  cloudResourcesCopy = cloudResources;
  resourcesCopy = resources;
  assetCopy = asset;
  lsCopy = ls;
  v15 = PLImageManagerGetLog();
  v16 = os_signpost_id_make_with_pointer(v15, assetCopy);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ResourceModel", "InstallResources", buf, 2u);
  }

  if (cloudResourcesCopy && ([assetCopy master], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = [PLCloudResource validatedExternalResourcesUsingLegacyCloudResourcesFromAssetWithCloudMaster:assetCopy];
  }

  else
  {
    v20 = [self externalResourcesForExistingAsset:assetCopy referencedResourceURLs:lsCopy];
  }

  v21 = v20;
  if (resourcesCopy)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v31 = 0;
  v23 = [PLResourceDataStoreManager storeExternalResources:v20 forAsset:assetCopy forLifecycleEvent:v22 error:&v31];
  v24 = v31;
  v25 = v18;
  v26 = v25;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v16, "ResourceModel", "InstallResources", v30, 2u);
  }

  if (count)
  {
    *count = [v23 count];
  }

  if (error && v24)
  {
    v27 = v24;
    *error = v24;
  }

  return v24 == 0;
}

+ (BOOL)installSupplementalResourceForExistingFileAtURL:(id)l ptpTrashedState:(int64_t)state index:(id)index forAsset:(id)asset imageOrientation:(id)orientation resultingResource:(id *)resource error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  assetCopy = asset;
  v16 = MEMORY[0x1E69C08F0];
  indexCopy = index;
  pathExtension = [lCopy pathExtension];
  v19 = [v16 resourceModelTypeForFilenameExtension:pathExtension];
  identifier = [v19 identifier];

  v21 = [self _validatedExternalResourceFromSupplementalFileURL:lCopy withUTI:identifier ptpTrashedState:state index:indexCopy asset:assetCopy];

  if (!v21)
  {
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate a supplemental resource from fileURL: %@", lCopy];
    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E69BFF70];
    v31 = *MEMORY[0x1E696A578];
    v32 = lCopy;
    anyObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v24 = [v26 errorWithDomain:v27 code:1 userInfo:anyObject];
    goto LABEL_5;
  }

  v33[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v30 = 0;
  lCopy = [PLResourceDataStoreManager storeExternalResources:v22 forAsset:assetCopy forLifecycleEvent:2 error:&v30];
  v24 = v30;

  if (resource)
  {
    anyObject = [lCopy anyObject];
    *resource = anyObject;
LABEL_5:
  }

  if (error && v24)
  {
    v28 = v24;
    *error = v24;
  }

  return v24 == 0;
}

+ (BOOL)recoverSupplementalResourcesForAsset:(id)asset usingSidecarFinder:(id)finder outResourcesStoreCount:(unint64_t *)count error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  finderCopy = finder;
  if (!finderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"finder"}];
  }

  v11 = PLImageManagerGetLog();
  v12 = os_signpost_id_make_with_pointer(v11, assetCopy);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ResourceModel", "RecoverSupplementalResources", buf, 2u);
  }

  if (([assetCopy isPhotoIris] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69BF328], "maskForRecoverSupplementalResourcesForAsset"), objc_msgSend(assetCopy, "savedAssetType"), (PLValidatedSavedAssetTypeApplies() & 1) == 0) && (!objc_msgSend(assetCopy, "isCloudPhotoLibraryAsset") || (objc_msgSend(assetCopy, "master"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30)))
  {
    v15 = 1;
  }

  else
  {
    v39 = v12 - 1;
    countCopy = count;
    spid = v12;
    mainFileURL = [assetCopy mainFileURL];
    uRLByDeletingLastPathComponent = [mainFileURL URLByDeletingLastPathComponent];

    filename = [assetCopy filename];
    managedObjectContext = [assetCopy managedObjectContext];
    v15 = 1;
    v41 = finderCopy;
    v38 = uRLByDeletingLastPathComponent;
    v20 = [finderCopy collectSidecarURLsForAssetFilename:filename inDirectory:uRLByDeletingLastPathComponent context:managedObjectContext removeWhenDone:1];

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
          additionalAttributes = [assetCopy additionalAttributes];
          originalOrientation = [additionalAttributes originalOrientation];
          v44 = 0;
          LODWORD(v26) = [self installSupplementalResourceForExistingFileAtURL:v26 ptpTrashedState:0 index:0 forAsset:assetCopy imageOrientation:originalOrientation resultingResource:0 error:&v44];

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

    if (countCopy)
    {
      *countCopy = v23;
    }

    finderCopy = v41;
  }

  return v15;
}

+ (id)_validatedExternalResourceAtPath:(id)path recipe:(id)recipe type:(unsigned int)type version:(unsigned int)version identifier:(id)identifier
{
  v8 = *&version;
  v9 = *&type;
  v38[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  recipeCopy = recipe;
  identifierCopy = identifier;
  if (pathCopy)
  {
    v34 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v34];

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

      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"file %@ at path: %@", v27, pathCopy];
      v28 = MEMORY[0x1E69BF2D0];
      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E69BFF48];
      v37 = *MEMORY[0x1E696A278];
      v38[0] = pathCopy;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v32 = [v29 errorWithDomain:v30 code:47001 userInfo:v31];
      v21 = [v28 failureWithError:v32];
    }

    else
    {
      pathCopy = objc_alloc_init(PLValidatedExternalResource);
      [(PLValidatedExternalResource *)pathCopy setVersion:v8];
      -[PLValidatedExternalResource setRecipeID:](pathCopy, "setRecipeID:", [recipeCopy recipeID]);
      v18 = [PLUniformTypeIdentifier utiWithIdentifier:identifierCopy];
      [(PLValidatedExternalResource *)pathCopy setUniformTypeIdentifier:v18];

      [(PLValidatedExternalResource *)pathCopy setResourceType:v9];
      v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
      [(PLValidatedExternalResource *)pathCopy setFileURL:v19];

      fileURL = [(PLValidatedExternalResource *)pathCopy fileURL];
      -[PLValidatedExternalResource setDataLength:](pathCopy, "setDataLength:", [self _getURLDataLength:fileURL]);

      v21 = [MEMORY[0x1E69BF2D0] successWithResult:pathCopy];
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

+ (id)_validatedExternalResourceForComputeResourceWithRecipe:(id)recipe
{
  recipeCopy = recipe;
  v4 = [recipeCopy uti];
  v5 = v4;
  if (!v4 || [v4 isDynamic])
  {
    identifier = [*MEMORY[0x1E6982D60] identifier];
    v7 = [PLUniformTypeIdentifier utiWithIdentifier:identifier];

    v5 = v7;
  }

  v8 = objc_alloc_init(PLValidatedExternalResource);
  [(PLValidatedExternalResource *)v8 setVersion:3];
  recipeID = [recipeCopy recipeID];

  [(PLValidatedExternalResource *)v8 setRecipeID:recipeID];
  [(PLValidatedExternalResource *)v8 setUniformTypeIdentifier:v5];
  [(PLValidatedExternalResource *)v8 setResourceType:14];

  return v8;
}

+ (id)_validatedExternalResourceForComputeResourceAtPath:(id)path recipe:(id)recipe
{
  pathCopy = path;
  recipeCopy = recipe;
  if (pathCopy && (v13 = 0, [MEMORY[0x1E696AC08] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:isDirectory:", pathCopy, &v13), v8, v9) && (v13 & 1) == 0)
  {
    v10 = [self _validatedExternalResourceForComputeResourceWithRecipe:recipeCopy];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    [v10 setFileURL:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_validatedExternalResourceIfPresentForAudioOrUnknownAsset:(id)asset
{
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLResourceInstaller.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
  mainFileURL = [assetCopy mainFileURL];
  v8 = mainFileURL;
  v9 = 0;
  if (uniformTypeIdentifier && mainFileURL)
  {
    if ([self _getURLDataLength:mainFileURL])
    {
      v10 = [PLUniformTypeIdentifier utiWithIdentifier:uniformTypeIdentifier];
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
          uuid = [assetCopy uuid];
          *buf = 138543874;
          v18 = uuid;
          v19 = 2048;
          kind = [assetCopy kind];
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

+ (id)_validatedExternalResourceFromSupplementalFileURL:(id)l withUTI:(id)i ptpTrashedState:(int64_t)state index:(id)index asset:(id)asset
{
  lCopy = l;
  indexCopy = index;
  assetCopy = asset;
  v14 = 0;
  if (lCopy && i)
  {
    v15 = [PLUniformTypeIdentifier utiWithIdentifier:i];
    if ([v15 conformsToImage])
    {
      path = [lCopy path];
      width = [assetCopy width];
      height = [assetCopy height];
      LOWORD(v25) = [assetCopy kind];
      v14 = [self generateValidatedExternalImageResourceOfType:4 forFilePath:path requireFileToBePresent:1 version:0 basedOnFullSizeWidth:width andHeight:height recipe:0 assetKind:v25 error:0];
    }

    else
    {
      v19 = MEMORY[0x1E69BF238];
      path2 = [lCopy path];
      v21 = [v19 fileLengthForFilePath:path2];

      if (v21 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = objc_alloc_init(PLValidatedExternalResource);
        [(PLValidatedExternalResource *)v14 setVersion:0];
        [(PLValidatedExternalResource *)v14 setRecipeID:0];
        [(PLValidatedExternalResource *)v14 setFileURL:lCopy];
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

    [(PLValidatedExternalResource *)v14 setSidecarIndex:indexCopy];
  }

  return v14;
}

+ (unint64_t)_getURLDataLength:(id)length
{
  result = length;
  if (length)
  {
    v4 = 0;
    if ([length getResourceValue:&v4 forKey:*MEMORY[0x1E695DB50] error:0])
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