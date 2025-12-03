@interface PLIngestJobCameraMetadata
+ (BOOL)faceObservationIngestDisabled;
+ (BOOL)facePrintIngestDisabled;
- (PLIngestJobCameraMetadata)initWithCameraMetadataPath:(id)path;
- (void)_ingestCameraMetadata;
- (void)applyCameraMetadataToAsset:(id)asset;
- (void)deserializeCameraMetadata;
- (void)setCameraMetadata:(id)metadata;
@end

@implementation PLIngestJobCameraMetadata

- (void)applyCameraMetadataToAsset:(id)asset
{
  v74 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [(PLIngestJobCameraMetadata *)self deserializeCameraMetadata];
  saliencyObservation = [(PFCameraMetadata *)self->_cameraMetadata saliencyObservation];

  if (saliencyObservation)
  {
    if (!CGRectIsEmpty(self->_acceptableCropRect))
    {
      [assetCopy setPackedAcceptableCropRect:PLCombineToInt64()];
    }

    if (!CGRectIsEmpty(self->_preferredCropRect))
    {
      [assetCopy setPackedPreferredCropRect:PLCombineToInt64()];
    }
  }

  managedObjectContext = [assetCopy managedObjectContext];
  if (self->_imageAestheticsObservation)
  {
    computedAttributes = [assetCopy computedAttributes];
    if (!computedAttributes)
    {
      v7 = +[PLComputedAssetAttributes entityName];
      computedAttributes = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, managedObjectContext, 0);

      [assetCopy setComputedAttributes:computedAttributes];
      [computedAttributes setPropertiesFromImageAestheticsObservation:self->_imageAestheticsObservation];
    }

    [(VNImageAestheticsObservation *)self->_imageAestheticsObservation aestheticScore];
    [assetCopy setOverallAestheticScore:?];
  }

  if (self->_sceneprintData)
  {
    additionalAttributes = [assetCopy additionalAttributes];
    [additionalAttributes setSceneprintWithData:self->_sceneprintData];
  }

  junkImageClassificationObservations = self->_junkImageClassificationObservations;
  if (junkImageClassificationObservations)
  {
    v61 = assetCopy;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v10 = junkImageClassificationObservations;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v70;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v70 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v69 + 1) + 8 * i);
          [v15 confidence];
          if (v16 >= 0.01)
          {
            identifier = [v15 identifier];
            v18 = [PLSceneClassification PLJunkSceneClassificationIDForLabel:identifier];

            if (v18)
            {
              photoLibrary = [managedObjectContext photoLibrary];
              intValue = [v18 intValue];
              [v15 confidence];
              v22 = [PLSceneClassification insertIntoPhotoLibrary:photoLibrary asset:v61 sceneIdentifier:intValue confidence:0 packedBoundingBoxRect:0 startTime:0 duration:v21 classificationType:0.0 thumbnailIdentifier:0.0];
            }
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v12);
    }

    assetCopy = v61;
    additionalAttributes2 = [v61 additionalAttributes];
    [additionalAttributes2 setSceneAnalysisVersion:*MEMORY[0x1E69C0C38]];

    additionalAttributes3 = [v61 additionalAttributes];
    adjustmentTimestamp = [v61 adjustmentTimestamp];
    if (adjustmentTimestamp)
    {
      [additionalAttributes3 setSceneAnalysisTimestamp:adjustmentTimestamp];
    }

    else
    {
      dateCreated = [v61 dateCreated];
      [additionalAttributes3 setSceneAnalysisTimestamp:dateCreated];
    }

    v68 = 1;
    additionalAttributes4 = [v61 additionalAttributes];
    v28 = [MEMORY[0x1E695DEF0] dataWithBytes:&v68 length:1];
    [additionalAttributes4 setDistanceIdentity:v28];
  }

  smartCamInfo = self->_smartCamInfo;
  if (smartCamInfo)
  {
    v30 = [(NSDictionary *)smartCamInfo objectForKeyedSubscript:*MEMORY[0x1E69869E0]];
    v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E69911E8]];
    if (v31)
    {
      photoLibrary2 = [managedObjectContext photoLibrary];
      [v31 doubleValue];
      v33 = [PLSceneClassification insertIntoPhotoLibrary:"insertIntoPhotoLibrary:asset:sceneIdentifier:confidence:packedBoundingBoxRect:startTime:duration:classificationType:thumbnailIdentifier:" asset:photoLibrary2 sceneIdentifier:assetCopy confidence:2147482063 packedBoundingBoxRect:0 startTime:0 duration:0 classificationType:? thumbnailIdentifier:?];
    }

    v34 = [v30 objectForKeyedSubscript:*MEMORY[0x1E6991230]];

    if (v34)
    {
      photoLibrary3 = [managedObjectContext photoLibrary];
      [v34 doubleValue];
      v36 = [PLSceneClassification insertIntoPhotoLibrary:"insertIntoPhotoLibrary:asset:sceneIdentifier:confidence:packedBoundingBoxRect:startTime:duration:classificationType:thumbnailIdentifier:" asset:photoLibrary3 sceneIdentifier:assetCopy confidence:2147482079 packedBoundingBoxRect:0 startTime:0 duration:0 classificationType:? thumbnailIdentifier:?];
    }

    v37 = [v30 objectForKeyedSubscript:*MEMORY[0x1E6991218]];

    if (v37)
    {
      photoLibrary4 = [managedObjectContext photoLibrary];
      [v37 doubleValue];
      v39 = [PLSceneClassification insertIntoPhotoLibrary:"insertIntoPhotoLibrary:asset:sceneIdentifier:confidence:packedBoundingBoxRect:startTime:duration:classificationType:thumbnailIdentifier:" asset:photoLibrary4 sceneIdentifier:assetCopy confidence:2147482095 packedBoundingBoxRect:0 startTime:0 duration:0 classificationType:? thumbnailIdentifier:?];
    }

    v40 = [v30 objectForKeyedSubscript:*MEMORY[0x1E69911D8]];

    if (v40)
    {
      photoLibrary5 = [managedObjectContext photoLibrary];
      [v40 doubleValue];
      v42 = [PLSceneClassification insertIntoPhotoLibrary:"insertIntoPhotoLibrary:asset:sceneIdentifier:confidence:packedBoundingBoxRect:startTime:duration:classificationType:thumbnailIdentifier:" asset:photoLibrary5 sceneIdentifier:assetCopy confidence:2147482111 packedBoundingBoxRect:0 startTime:0 duration:0 classificationType:? thumbnailIdentifier:?];
    }

    v43 = [(NSDictionary *)self->_smartCamInfo objectForKeyedSubscript:*MEMORY[0x1E69869E8]];
    bOOLValue = [v43 BOOLValue];

    if (bOOLValue)
    {
      additionalAttributes5 = [assetCopy additionalAttributes];
      [additionalAttributes5 setSceneAnalysisIsFromPreview:1];
    }
  }

  sharedLibraryMode = self->_sharedLibraryMode;
  if (sharedLibraryMode > 3)
  {
    if (sharedLibraryMode == 4)
    {
      selfCopy2 = self;
      v49 = 3;
      v48 = 1;
      goto LABEL_49;
    }

    if (sharedLibraryMode == 5)
    {
      PLLibraryScopeAssetSetCameraRejectedState(1, assetCopy);
    }
  }

  else
  {
    if ((sharedLibraryMode - 1) < 2)
    {
      selfCopy2 = self;
      v48 = 0;
      v49 = 2;
LABEL_49:
      v50 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:managedObjectContext];
      v51 = v50;
      if (v50)
      {
        if (v48 && !MEMORY[0x19EAEE230]([v50 setCountOfAssetsAddedByCameraSmartSharing:{objc_msgSend(v50, "countOfAssetsAddedByCameraSmartSharing") + 1}]))
        {
          v49 = 2;
        }

        PLLibraryScopeAssetSetSuggestedByClientType(v49, assetCopy);
        PLLibraryScopeAssetSetAddToSharedZoneState(1, assetCopy);
        [assetCopy setLibraryScopeWithCurrentUserAsContributor:v51];
      }

      self = selfCopy2;
      goto LABEL_55;
    }

    if (sharedLibraryMode == 3)
    {
      PLLibraryScopeAssetSetUserManuallyRejectedState(1, assetCopy);
    }
  }

LABEL_55:
  faceObservations = [(PFCameraMetadata *)self->_cameraMetadata faceObservations];
  if ([faceObservations count] && (objc_msgSend(objc_opt_class(), "faceObservationIngestDisabled") & 1) == 0)
  {
    torsoprints = [(PFCameraMetadata *)self->_cameraMetadata torsoprints];
    v54 = [torsoprints count];
    v55 = assetCopy;
    if (v54 >= [faceObservations count])
    {
      facePrintIngestDisabled = [objc_opt_class() facePrintIngestDisabled];
      selfCopy4 = self;
      v57 = facePrintIngestDisabled ^ 1;
    }

    else
    {
      selfCopy4 = self;
      v57 = 0;
    }

    faceObservations2 = [(PFCameraMetadata *)selfCopy4->_cameraMetadata faceObservations];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __56__PLIngestJobCameraMetadata_applyCameraMetadataToAsset___block_invoke;
    v63[3] = &unk_1E7564D30;
    v64 = managedObjectContext;
    v67 = v57;
    v65 = v55;
    v66 = torsoprints;
    v60 = torsoprints;
    [faceObservations2 enumerateObjectsUsingBlock:v63];

    assetCopy = v55;
  }
}

void __56__PLIngestJobCameraMetadata_applyCameraMetadataToAsset___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [(PLManagedObject *)PLDetectedFace insertInManagedObjectContext:*(a1 + 32)];
  [v6 setAssetForFace:*(a1 + 40)];
  [v5 boundingBox];
  [v6 setCenterX:CGRectGetMidX(v28)];
  [v5 boundingBox];
  [v6 setCenterY:CGRectGetMidY(v29)];
  v7 = [v5 roll];
  [v7 doubleValue];
  [v6 setRoll:?];

  v8 = [v5 yaw];
  [v8 doubleValue];
  [v6 setPoseYaw:?];

  v9 = [*(a1 + 40) width];
  v10 = [*(a1 + 40) height];
  if (v9 && (v11 = v10) != 0)
  {
    [v5 boundingBox];
    v13 = v12 * v9;
    [v5 boundingBox];
    v15 = v14 * v11;
    if (v13 >= v15)
    {
      v15 = v13;
    }

    if (v9 <= v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = v9;
    }

    [v6 setSize:v15 / v16];
    [v6 setSourceWidth:v9];
    [v6 setSourceHeight:v11];
  }

  else
  {
    v17 = PLAssetImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 40) uuid];
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Facerect ingest failure: cannot compute size due to missing width/height for asset: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v19 = [*(a1 + 48) objectAtIndex:a3];
    v20 = [MEMORY[0x1E695DFB0] null];

    if (v19 != v20)
    {
      v24 = 0;
      v21 = [v19 serializeStateAndReturnError:&v24];
      v22 = v24;
      if (v21)
      {
        v23 = [(PLManagedObject *)PLDetectedFaceprint insertInManagedObjectContext:*(a1 + 32)];
        [v23 setFace:v6];
        [v23 setData:v21];
        -[NSObject setFaceprintVersion:](v23, "setFaceprintVersion:", [v19 requestRevision]);
        [v6 setFaceprint:v23];
        [v6 setAssetForFace:*(a1 + 40)];
        [v6 setFaceAlgorithmVersion:0];
      }

      else
      {
        v23 = PLAssetImportGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v22;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Faceprint ingest failure: failed to serialize faceprint with error %@", buf, 0xCu);
        }
      }
    }
  }

  [v6 fixAssetRelationshipsForFaceTorsoOrTemporal];
}

- (void)_ingestCameraMetadata
{
  v35 = *MEMORY[0x1E69E9840];
  saliencyObservation = [(PFCameraMetadata *)self->_cameraMetadata saliencyObservation];

  if (saliencyObservation)
  {
    saliencyObservation2 = [(PFCameraMetadata *)self->_cameraMetadata saliencyObservation];
    [saliencyObservation2 narrowedBoundingBox];
    self->_acceptableCropRect.origin.x = v5;
    self->_acceptableCropRect.origin.y = v6;
    self->_acceptableCropRect.size.width = v7;
    self->_acceptableCropRect.size.height = v8;

    saliencyObservation3 = [(PFCameraMetadata *)self->_cameraMetadata saliencyObservation];
    [saliencyObservation3 boundingBox];
    self->_preferredCropRect.origin.x = v10;
    self->_preferredCropRect.origin.y = v11;
    self->_preferredCropRect.size.width = v12;
    self->_preferredCropRect.size.height = v13;
  }

  imageAestheticsObservation = [(PFCameraMetadata *)self->_cameraMetadata imageAestheticsObservation];
  imageAestheticsObservation = self->_imageAestheticsObservation;
  self->_imageAestheticsObservation = imageAestheticsObservation;

  scenePrintObservation = [(PFCameraMetadata *)self->_cameraMetadata scenePrintObservation];
  sceneprints = [scenePrintObservation sceneprints];
  firstObject = [sceneprints firstObject];

  v30 = 0;
  v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:firstObject requiringSecureCoding:1 error:&v30];
  v20 = v30;
  sceneprintData = self->_sceneprintData;
  self->_sceneprintData = v19;

  if (!self->_sceneprintData)
  {
    v22 = PLAssetImportGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      lengthInBytes = [firstObject lengthInBytes];
      *buf = 134218242;
      v32 = lengthInBytes;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Error serializing sceneprintData (length=%lu): %@", buf, 0x16u);
    }
  }

  junkImageClassificationObservations = [(PFCameraMetadata *)self->_cameraMetadata junkImageClassificationObservations];
  junkImageClassificationObservations = self->_junkImageClassificationObservations;
  self->_junkImageClassificationObservations = junkImageClassificationObservations;

  smartCamInfo = [(PFCameraMetadata *)self->_cameraMetadata smartCamInfo];
  smartCamInfo = self->_smartCamInfo;
  self->_smartCamInfo = smartCamInfo;

  contactIDsInProximity = [(PFCameraMetadata *)self->_cameraMetadata contactIDsInProximity];
  contactIDsInProximity = self->_contactIDsInProximity;
  self->_contactIDsInProximity = contactIDsInProximity;

  self->_sharedLibraryMode = [(PFCameraMetadata *)self->_cameraMetadata sharedLibraryMode];
}

- (void)deserializeCameraMetadata
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_hasDeserializedMetadata)
  {
    cameraMetadataPath = self->_cameraMetadataPath;
    if (cameraMetadataPath)
    {
      v13 = 0;
      v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:cameraMetadataPath options:2 error:&v13];
      v5 = v13;
      if (v4)
      {
        v12 = 0;
        v6 = [MEMORY[0x1E69C0688] deserializedMetadataFromData:v4 error:&v12];
        v7 = v12;
        cameraMetadata = self->_cameraMetadata;
        self->_cameraMetadata = v6;

        if (self->_cameraMetadata)
        {
          [(PLIngestJobCameraMetadata *)self _ingestCameraMetadata];
        }

        else
        {
          v10 = PLAssetImportGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v4 length];
            *buf = 134218242;
            v15 = v11;
            v16 = 2112;
            v17 = v7;
            _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Error deserializing camera metadata (length=%lu): %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v7 = PLAssetImportGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_cameraMetadataPath;
          *buf = 138412546;
          v15 = v9;
          v16 = 2112;
          v17 = v5;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Error reading camera metadata at path: %@ error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = 0;
    }

    self->_hasDeserializedMetadata = 1;
  }
}

- (void)setCameraMetadata:(id)metadata
{
  objc_storeStrong(&self->_cameraMetadata, metadata);

  [(PLIngestJobCameraMetadata *)self _ingestCameraMetadata];
}

- (PLIngestJobCameraMetadata)initWithCameraMetadataPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = PLIngestJobCameraMetadata;
  v6 = [(PLIngestJobCameraMetadata *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraMetadataPath, path);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 16);
    v7->_preferredCropRect.origin = *MEMORY[0x1E695F058];
    v7->_preferredCropRect.size = v9;
    v7->_acceptableCropRect.origin = v8;
    v7->_acceptableCropRect.size = v9;
  }

  return v7;
}

+ (BOOL)facePrintIngestDisabled
{
  if (facePrintIngestDisabled_onceToken != -1)
  {
    dispatch_once(&facePrintIngestDisabled_onceToken, &__block_literal_global_183);
  }

  if (facePrintIngestDisabled_facePrintIngestDisabled == 1)
  {
    v2 = PLAssetImportGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "PLIngestJobCameraMetadata initialized with face print ingest disabled", v5, 2u);
    }

    v3 = facePrintIngestDisabled_facePrintIngestDisabled;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __52__PLIngestJobCameraMetadata_facePrintIngestDisabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  facePrintIngestDisabled_facePrintIngestDisabled = [v0 BOOLForKey:@"PLIngestJobCameraMetadataFacePrintIngestDisabled"];
}

+ (BOOL)faceObservationIngestDisabled
{
  if (faceObservationIngestDisabled_onceToken != -1)
  {
    dispatch_once(&faceObservationIngestDisabled_onceToken, &__block_literal_global_1615);
  }

  if (faceObservationIngestDisabled_faceObservationIngestDisabled == 1)
  {
    v2 = PLAssetImportGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "PLIngestJobCameraMetadata initialized with face observation ingest disabled", v5, 2u);
    }

    v3 = faceObservationIngestDisabled_faceObservationIngestDisabled;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __58__PLIngestJobCameraMetadata_faceObservationIngestDisabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  faceObservationIngestDisabled_faceObservationIngestDisabled = [v0 BOOLForKey:@"PLIngestJobCameraMetadataFaceObservationIngestDisabled"];
}

@end