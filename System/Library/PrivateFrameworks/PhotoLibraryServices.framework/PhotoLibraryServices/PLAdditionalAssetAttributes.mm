@interface PLAdditionalAssetAttributes
+ (BOOL)shouldPersistImportedByDisplayName:(id)name;
+ (id)descriptionForDestinationAssetCopyState:(signed __int16)state;
+ (id)listOfSyncedProperties;
+ (id)newExtraDurationDataFromStillDisplayTime:(id *)time videoDuration:(id *)duration;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:(id)version noindex:(BOOL)noindex;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestFaceVersionWithNoindex:(BOOL)noindex;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestSceneVersionWithNoindex:(BOOL)noindex;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToSceneVersion:(id)version noindex:(BOOL)noindex;
+ (id)predicateToIncludeOnlyAllowedForAnalysisWithNoindex:(BOOL)noindex;
+ (void)fromExtraDurationData:(id)data getStillDisplayTime:(id *)time videoDuration:(id *)duration;
- (BOOL)containsDuplicateDetectorPerceptualProcessingState:(unsigned __int16)state;
- (BOOL)hasDuplicateMatchingData;
- (BOOL)isSyncableChange;
- (BOOL)isUserInterfaceChange;
- (BOOL)supportsCloudUpload;
- (CLLocation)shiftedLocation;
- (CPLScopedIdentifier)sourceAssetForDuplicationCPLScopedIdentifier;
- (NSData)mediaMetadataData;
- (NSString)longDescription;
- (PLSpatialOverCaptureInformation)spatialOverCaptureInformation;
- (id)allSceneClassifications;
- (id)duplicateSortPropertyNames;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (signed)viewPresentation;
- (void)_updateInferredTimeZoneOffsetWithChangedValues:(id)values;
- (void)addDuplicateDetectorPerceptualProcessingStates:(unsigned __int16)states removeProcessingStates:(unsigned __int16)processingStates;
- (void)appendLibraryScopeAssetContributorsToUpdate:(id)update;
- (void)correctOriginalOrientationIfRequired;
- (void)recalculatehasPeopleSceneMidOrGreaterConfidence;
- (void)removeCloudRecoveryStateFlag:(unint64_t)flag;
- (void)resetNonSyncViewPresentation;
- (void)setCloudRecoveryStateFlag:(unint64_t)flag;
- (void)setDuplicateMatchingData:(id)data duplicateMatchingAlternateData:(id)alternateData processingSucceeded:(BOOL)succeeded;
- (void)setLongDescription:(id)description;
- (void)setMediaMetadataData:(id)data;
- (void)setMontage:(id)montage;
- (void)setSceneprintWithData:(id)data;
- (void)setShiftedLocation:(id)location;
- (void)setShiftedLocationIsValid:(BOOL)valid;
- (void)setSourceAssetForDuplicationCPLScopedIdentifier:(id)identifier;
- (void)truncatedOriginalCheckChangedValues:(id)values;
- (void)updateAllowedForAnalysis;
- (void)willSave;
@end

@implementation PLAdditionalAssetAttributes

+ (void)fromExtraDurationData:(id)data getStillDisplayTime:(id *)time videoDuration:(id *)duration
{
  dataCopy = data;
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v10 = v8;
  v11 = v9;
  if ([dataCopy length] >= 0x30)
  {
    [dataCopy getBytes:&v8 length:48];
  }

  if (time)
  {
    *&time->var0 = v8;
    time->var3 = v9;
  }

  if (duration)
  {
    *&duration->var0 = v10;
    duration->var3 = v11;
  }
}

+ (id)newExtraDurationDataFromStillDisplayTime:(id *)time videoDuration:(id *)duration
{
  v5[0] = *time;
  v5[1] = *duration;
  return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 length:48];
}

- (id)duplicateSortPropertyNames
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"keywords";
  v4[1] = @"title";
  v4[2] = @"timeZoneOffset";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  asset = [(PLAdditionalAssetAttributes *)self asset];
  if ([asset isValidForJournalPersistence])
  {
    v6 = [[PLAssetJournalEntryPayload alloc] initWithAdditionalAssetAttributes:self changedKeys:keysCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadID
{
  asset = [(PLAdditionalAssetAttributes *)self asset];
  uuid = [asset uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

- (void)resetNonSyncViewPresentation
{
  if ([(PLAdditionalAssetAttributes *)self viewPresentation]>= 2)
  {

    [(PLAdditionalAssetAttributes *)self setViewPresentation:0];
  }
}

- (signed)viewPresentation
{
  [(PLAdditionalAssetAttributes *)self willAccessValueForKey:@"viewPresentation"];
  v3 = [(PLAdditionalAssetAttributes *)self primitiveValueForKey:@"viewPresentation"];
  unsignedShortValue = [v3 unsignedShortValue];

  [(PLAdditionalAssetAttributes *)self didAccessValueForKey:@"viewPresentation"];
  return unsignedShortValue;
}

- (id)allSceneClassifications
{
  sceneClassifications = [(PLAdditionalAssetAttributes *)self sceneClassifications];
  temporalSceneClassifications = [(PLAdditionalAssetAttributes *)self temporalSceneClassifications];
  allObjects = [temporalSceneClassifications allObjects];
  v6 = [sceneClassifications setByAddingObjectsFromArray:allObjects];

  return v6;
}

- (BOOL)containsDuplicateDetectorPerceptualProcessingState:(unsigned __int16)state
{
  stateCopy = state;
  duplicateDetectorPerceptualProcessingState = [(PLAdditionalAssetAttributes *)self duplicateDetectorPerceptualProcessingState];
  if (stateCopy)
  {
    return (stateCopy & ~duplicateDetectorPerceptualProcessingState) == 0;
  }

  else
  {
    return duplicateDetectorPerceptualProcessingState == 0;
  }
}

- (void)addDuplicateDetectorPerceptualProcessingStates:(unsigned __int16)states removeProcessingStates:(unsigned __int16)processingStates
{
  v5 = ([(PLAdditionalAssetAttributes *)self duplicateDetectorPerceptualProcessingState]| states) & ~processingStates;
  if (v5 != [(PLAdditionalAssetAttributes *)self duplicateDetectorPerceptualProcessingState])
  {

    [(PLAdditionalAssetAttributes *)self setDuplicateDetectorPerceptualProcessingState:v5];
  }
}

- (void)appendLibraryScopeAssetContributorsToUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy count])
  {
    libraryScopeAssetContributorsToUpdate = [(PLAdditionalAssetAttributes *)self libraryScopeAssetContributorsToUpdate];
    v5 = [libraryScopeAssetContributorsToUpdate mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    allObjects = [updateCopy allObjects];
    [v5 addObjectsFromArray:allObjects];

    [(PLAdditionalAssetAttributes *)self setLibraryScopeAssetContributorsToUpdate:v5];
  }
}

- (void)setShiftedLocationIsValid:(BOOL)valid
{
  validCopy = valid;
  [(PLAdditionalAssetAttributes *)self willChangeValueForKey:@"shiftedLocationIsValid"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:validCopy];
  [(PLAdditionalAssetAttributes *)self setPrimitiveValue:v5 forKey:@"shiftedLocationIsValid"];

  [(PLAdditionalAssetAttributes *)self didChangeValueForKey:@"shiftedLocationIsValid"];
  if (!validCopy)
  {
    asset = [(PLAdditionalAssetAttributes *)self asset];
    location = [asset location];

    if (location)
    {
      [location coordinate];
      v8 = v7;
      v10 = v9;
    }

    else
    {
      v8 = *MEMORY[0x1E6985CC0];
      v10 = *(MEMORY[0x1E6985CC0] + 8);
    }

    asset2 = [(PLAdditionalAssetAttributes *)self asset];
    [asset2 setLatitude:v8];

    asset3 = [(PLAdditionalAssetAttributes *)self asset];
    [asset3 setLongitude:v10];
  }
}

- (CLLocation)shiftedLocation
{
  [(PLAdditionalAssetAttributes *)self willAccessValueForKey:@"shiftedLocation"];
  _cachedShiftedLocation = [(PLAdditionalAssetAttributes *)self _cachedShiftedLocation];
  [(PLAdditionalAssetAttributes *)self didAccessValueForKey:@"shiftedLocation"];
  if (!_cachedShiftedLocation)
  {
    shiftedLocationData = [(PLAdditionalAssetAttributes *)self shiftedLocationData];
    _cachedShiftedLocation = [PLManagedAsset newLocationFromLocationData:shiftedLocationData timestampIfMissing:0];
    if (_cachedShiftedLocation)
    {
      [(PLAdditionalAssetAttributes *)self willChangeValueForKey:@"shiftedLocation"];
      [(PLAdditionalAssetAttributes *)self _setCachedShiftedLocation:_cachedShiftedLocation];
      [(PLAdditionalAssetAttributes *)self didChangeValueForKey:@"shiftedLocation"];
    }
  }

  return _cachedShiftedLocation;
}

- (void)updateAllowedForAnalysis
{
  asset = [(PLAdditionalAssetAttributes *)self asset];
  calculateAllowedForAnalysis = [asset calculateAllowedForAnalysis];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:calculateAllowedForAnalysis];
  [(PLManagedObject *)self pl_safeSetValue:v4 forKey:@"allowedForAnalysis" valueDidChangeHandler:0];
}

- (void)setMontage:(id)montage
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PLAdditionalAssetAttributes_setMontage___block_invoke;
  v3[3] = &unk_1E75732D0;
  v3[4] = self;
  [(PLManagedObject *)self pl_safeSetValue:montage forKey:@"montage" valueDidChangeHandler:v3];
}

- (void)setShiftedLocation:(id)location
{
  locationCopy = location;
  [(PLAdditionalAssetAttributes *)self willChangeValueForKey:@"shiftedLocation"];
  [(PLAdditionalAssetAttributes *)self _setCachedShiftedLocation:locationCopy];
  [(PLAdditionalAssetAttributes *)self didChangeValueForKey:@"shiftedLocation"];
  v4 = [PLManagedAsset newLocationDataFromLocation:locationCopy];
  [(PLAdditionalAssetAttributes *)self setShiftedLocationData:v4];
  if (v4)
  {
    [locationCopy coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    asset = [(PLAdditionalAssetAttributes *)self asset];
    location = [asset location];

    if (location)
    {
      [location coordinate];
      v6 = v11;
      v8 = v12;
    }

    else
    {
      v6 = *MEMORY[0x1E6985CC0];
      v8 = *(MEMORY[0x1E6985CC0] + 8);
    }
  }

  asset2 = [(PLAdditionalAssetAttributes *)self asset];
  [asset2 setLatitude:v6];

  asset3 = [(PLAdditionalAssetAttributes *)self asset];
  [asset3 setLongitude:v8];
}

- (void)recalculatehasPeopleSceneMidOrGreaterConfidence
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sceneClassifications = [(PLAdditionalAssetAttributes *)self sceneClassifications];
  v4 = [sceneClassifications countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(sceneClassifications);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 sceneIdentifier] == 881)
        {
          [v7 confidence];
          if (v8 >= 0.5)
          {
            v4 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [sceneClassifications countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [(PLManagedObject *)self pl_safeSetValue:v9 forKey:@"hasPeopleSceneMidOrGreaterConfidence" valueDidChangeHandler:0];
}

- (void)willSave
{
  v108 = *MEMORY[0x1E69E9840];
  v104.receiver = self;
  v104.super_class = PLAdditionalAssetAttributes;
  [(PLManagedObject *)&v104 willSave];
  managedObjectContext = [(PLAdditionalAssetAttributes *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_89;
  }

  asset = [(PLAdditionalAssetAttributes *)self asset];
  isDeleted = [asset isDeleted];

  if ((isDeleted & 1) == 0)
  {
    v101 = managedObjectContext;
    changedValues = [(PLAdditionalAssetAttributes *)self changedValues];
    isSyncableChange = [(PLAdditionalAssetAttributes *)self isSyncableChange];
    isUserInterfaceChange = [(PLAdditionalAssetAttributes *)self isUserInterfaceChange];
    asset2 = [(PLAdditionalAssetAttributes *)self asset];
    changedValues2 = [asset2 changedValues];
    v11 = [changedValues2 objectForKeyedSubscript:@"modificationDate"];
    if (v11 || !isSyncableChange && !isUserInterfaceChange)
    {
    }

    else
    {
      asset3 = [(PLAdditionalAssetAttributes *)self asset];
      isFinderSyncedAsset = [asset3 isFinderSyncedAsset];

      if (isFinderSyncedAsset)
      {
LABEL_9:
        v102 = [changedValues objectForKeyedSubscript:@"placeAnnotationData"];

        v100 = [changedValues objectForKeyedSubscript:@"publicGlobalUUID"];

        v14 = [changedValues objectForKeyedSubscript:@"title"];

        [changedValues objectForKeyedSubscript:@"accessibilityDescription"];
        v91 = v90 = v14;
        v98 = v14 | v91;

        v15 = [changedValues objectForKeyedSubscript:@"timeZoneName"];

        v93 = [changedValues objectForKeyedSubscript:@"timeZoneOffset"];

        v16 = [changedValues objectForKeyedSubscript:@"importedBy"];

        v17 = [changedValues objectForKeyedSubscript:@"spatialOverCaptureGroupIdentifier"];

        v18 = [changedValues objectForKeyedSubscript:@"syndicationIdentifier"];

        v19 = [changedValues objectForKeyedSubscript:@"libraryScopeAssetContributorsToUpdate"];

        v20 = [changedValues objectForKeyedSubscript:@"syndicationHistory"];

        v21 = [changedValues objectForKeyedSubscript:@"sceneAnalysisIsFromPreview"];

        v22 = [changedValues objectForKeyedSubscript:@"viewPresentation"];

        v92 = v15;
        v23 = v15 | v102;
        v24 = v19;
        v94 = v17;
        v95 = v18;
        v25 = v16;
        v26 = v16 | v17 | v18;
        v27 = changedValues;
        v28 = v98 | v23 | v26;
        v96 = v20;
        v97 = v21;
        v99 = v22;
        v29 = (v28 | v24 | v20 | v21 | v22) != 0;
        v30 = [changedValues objectForKeyedSubscript:@"sceneClassifications"];

        if (([(PLAdditionalAssetAttributes *)self isInserted]& 1) != 0 || v30)
        {
          asset4 = [(PLAdditionalAssetAttributes *)self asset];
          [asset4 recalculateIsDetectedScreenshot];

          [(PLAdditionalAssetAttributes *)self recalculatehasPeopleSceneMidOrGreaterConfidence];
        }

        managedObjectContext = v101;
        if (v100)
        {
          v32 = 1;
        }

        else
        {
          v32 = v29;
        }

        if (v32 == 1)
        {
          asset5 = [(PLAdditionalAssetAttributes *)self asset];
          isValidTypeForPersistence = [asset5 isValidTypeForPersistence];

          if (isValidTypeForPersistence)
          {
            if (v29)
            {
              asset6 = [(PLAdditionalAssetAttributes *)self asset];
              persistedFileSystemAttributesFileURL = [asset6 persistedFileSystemAttributesFileURL];

              if (persistedFileSystemAttributesFileURL)
              {
                v37 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:persistedFileSystemAttributesFileURL];
                if (v90)
                {
                  [(PLAdditionalAssetAttributes *)self title];
                  v39 = v38 = v37;
                  [v38 setString:v39 forKey:*MEMORY[0x1E69BFE50]];

                  v37 = v38;
                }

                if (v91)
                {
                  accessibilityDescription = [(PLAdditionalAssetAttributes *)self accessibilityDescription];
                  [v37 setString:accessibilityDescription forKey:*MEMORY[0x1E69BFD00]];
                }

                if (v92)
                {
                  timeZoneName = [(PLAdditionalAssetAttributes *)self timeZoneName];
                  [v37 setString:timeZoneName forKey:*MEMORY[0x1E69BFE40]];
                }

                if (v93)
                {
                  timeZoneOffset = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
                  intValue = [timeZoneOffset intValue];
                  [v37 setInt32:intValue forKey:*MEMORY[0x1E69BFE48]];
                }

                if (v102)
                {
                  placeAnnotationData = [(PLAdditionalAssetAttributes *)self placeAnnotationData];
                  [v37 setData:placeAnnotationData forKey:*MEMORY[0x1E69BFE00]];
                }

                if (v25 && [(PLAdditionalAssetAttributes *)self importedBy])
                {
                  importedBy = [(PLAdditionalAssetAttributes *)self importedBy];
                  [v37 setUInt16:importedBy forKey:*MEMORY[0x1E69BFDA0]];
                }

                if (v94)
                {
                  spatialOverCaptureGroupIdentifier = [(PLAdditionalAssetAttributes *)self spatialOverCaptureGroupIdentifier];
                  [v37 setString:spatialOverCaptureGroupIdentifier forKey:*MEMORY[0x1E69BFE28]];
                }

                if (v95)
                {
                  syndicationIdentifier = [(PLAdditionalAssetAttributes *)self syndicationIdentifier];
                  [v37 setString:syndicationIdentifier forKey:*MEMORY[0x1E69BFE38]];
                }

                if (v24)
                {
                  v48 = persistedFileSystemAttributesFileURL;
                  v49 = MEMORY[0x1E696ACC8];
                  libraryScopeAssetContributorsToUpdate = [(PLAdditionalAssetAttributes *)self libraryScopeAssetContributorsToUpdate];
                  v103 = 0;
                  v51 = [v49 archivedDataWithRootObject:libraryScopeAssetContributorsToUpdate requiringSecureCoding:1 error:&v103];
                  v52 = v103;

                  if (v52)
                  {
                    v53 = PLBackendGetLog();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v107 = v52;
                      _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "libraryScopeAssetContributorsToUpdate archiving failed: %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    [v37 setData:v51 forKey:*MEMORY[0x1E69BFDD0]];
                  }

                  persistedFileSystemAttributesFileURL = v48;
                }

                if (v96)
                {
                  syndicationHistory = [(PLAdditionalAssetAttributes *)self syndicationHistory];
                  [v37 setUInt16:syndicationHistory forKey:*MEMORY[0x1E69BFE30]];
                }

                if (v97)
                {
                  sceneAnalysisIsFromPreview = [(PLAdditionalAssetAttributes *)self sceneAnalysisIsFromPreview];
                  [v37 setUInt16:sceneAnalysisIsFromPreview forKey:*MEMORY[0x1E69BFE20]];
                }

                if (v99)
                {
                  viewPresentation = [(PLAdditionalAssetAttributes *)self viewPresentation];
                  [v37 setUInt16:viewPresentation forKey:*MEMORY[0x1E69BFE78]];
                }

                [v37 persist];
              }
            }

            if (v100)
            {
              delayedSaveActions = [v101 delayedSaveActions];
              asset7 = [(PLAdditionalAssetAttributes *)self asset];
              [delayedSaveActions recordAssetForFileSystemPersistencyUpdate:asset7];
            }
          }
        }

        if (MEMORY[0x19EAEE230]() && [(PLAdditionalAssetAttributes *)self isInserted])
        {
          [(PLAdditionalAssetAttributes *)self truncatedOriginalCheckChangedValues:v27];
        }

        if (PLPlatformMomentsSupported())
        {
          [(PLAdditionalAssetAttributes *)self _updateInferredTimeZoneOffsetWithChangedValues:v27];
          delayedSaveActions2 = [v101 delayedSaveActions];
          [delayedSaveActions2 recordAdditionalAssetAttributesForMomentUpdate:self];
        }

        v60 = [v27 objectForKeyedSubscript:{@"originalOrientation", v90}];

        if (v60)
        {
          [(PLAdditionalAssetAttributes *)self correctOriginalOrientationIfRequired];
        }

        v61 = [v27 objectForKeyedSubscript:@"keywords"];

        if (v61)
        {
          keywords = [(PLAdditionalAssetAttributes *)self keywords];
          v63 = [keywords count] != 0;

          asset8 = [(PLAdditionalAssetAttributes *)self asset];
          [asset8 setKeywordBadgeAttribute:v63];
        }

        v65 = [v27 objectForKeyedSubscript:@"originalResourceChoice"];

        if (v65)
        {
          asset9 = [(PLAdditionalAssetAttributes *)self asset];
          [asset9 recalculateRAWBadgeAttribute];
        }

        if ([PLDuplicateAsset isDuplicateAssetSortChangedObject:self])
        {
          asset10 = [(PLAdditionalAssetAttributes *)self asset];
          duplicateAlbum = [asset10 duplicateAlbum];

          [duplicateAlbum sortAssets];
        }

        v69 = [v27 objectForKeyedSubscript:@"sceneAnalysisVersion"];
        if (v69)
        {
          v70 = v69;
          asset11 = [(PLAdditionalAssetAttributes *)self asset];
          if ([asset11 duplicateAssetVisibilityState])
          {
            asset12 = [(PLAdditionalAssetAttributes *)self asset];
            isValidForPerceptualProcessing = [asset12 isValidForPerceptualProcessing];

            if (!isValidForPerceptualProcessing)
            {
              goto LABEL_77;
            }

            v105 = @"sceneAnalysisVersion";
            v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
            v70 = [(PLAdditionalAssetAttributes *)self committedValuesForKeys:v74];

            v75 = [v70 objectForKeyedSubscript:@"sceneAnalysisVersion"];
            shortValue = [v75 shortValue];

            v77 = [v27 objectForKeyedSubscript:@"sceneAnalysisVersion"];
            shortValue2 = [v77 shortValue];

            v79 = shortValue != shortValue2 || shortValue2 == 0;
            if (shortValue && v79)
            {
              asset13 = [(PLAdditionalAssetAttributes *)self asset];
              [asset13 removeFromDuplicateAlbum];
            }

            asset11 = [(PLAdditionalAssetAttributes *)self asset];
            uuid = [asset11 uuid];
            photoLibrary = [(PLManagedObject *)self photoLibrary];
            [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:uuid requiresMetadataProcessing:0 library:photoLibrary];
          }
        }

LABEL_77:
        v83 = [v27 objectForKeyedSubscript:@"originalStableHash"];

        if (v83)
        {
          asset14 = [(PLAdditionalAssetAttributes *)self asset];
          uuid2 = [asset14 uuid];

          if (uuid2)
          {
            photoLibrary2 = [(PLManagedObject *)self photoLibrary];
            [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:uuid2 requiresMetadataProcessing:1 library:photoLibrary2];
          }
        }

        if (([(PLAdditionalAssetAttributes *)self isInserted]& 1) == 0)
        {
          v87 = [v27 objectForKeyedSubscript:@"importedBy"];
          if (v87)
          {
          }

          else
          {
            v88 = [v27 objectForKeyedSubscript:@"importedByBundleIdentifier"];

            if (!v88)
            {
LABEL_86:

              goto LABEL_87;
            }
          }
        }

        asset15 = [(PLAdditionalAssetAttributes *)self asset];
        [asset15 recalculateIsRecentlySaved];

        goto LABEL_86;
      }

      asset2 = [(PLAdditionalAssetAttributes *)self asset];
      changedValues2 = [MEMORY[0x1E695DF00] date];
      [asset2 setModificationDate:changedValues2];
    }

    goto LABEL_9;
  }

LABEL_87:
  if (([(PLAdditionalAssetAttributes *)self isDeleted]& 1) == 0)
  {
    [PLDelayedSearchIndexUpdates recordAdditionalAssetAttributesIfNeeded:self];
  }

LABEL_89:
}

- (void)correctOriginalOrientationIfRequired
{
  asset = [(PLAdditionalAssetAttributes *)self asset];
  extendedAttributes = [asset extendedAttributes];
  orientation = [extendedAttributes orientation];
  shortValue = [orientation shortValue];

  LODWORD(extendedAttributes) = [PLManagedAsset correctedOrientation:shortValue];
  originalOrientation = [(PLAdditionalAssetAttributes *)self originalOrientation];
  shortValue2 = [originalOrientation shortValue];

  v9 = [PLManagedAsset correctedOrientation:shortValue2];
  if (extendedAttributes == shortValue)
  {
    if (shortValue2 == shortValue)
    {
      return;
    }

    v10 = shortValue;
  }

  else
  {
    v10 = v9;
    if (v9 == shortValue2)
    {
      return;
    }
  }

  v11 = [MEMORY[0x1E696AD98] numberWithShort:v10];
  [(PLAdditionalAssetAttributes *)self setOriginalOrientation:v11];
}

- (void)_updateInferredTimeZoneOffsetWithChangedValues:(id)values
{
  valuesCopy = values;
  isUpdated = [(PLAdditionalAssetAttributes *)self isUpdated];
  v5 = valuesCopy;
  if (isUpdated)
  {
    v6 = [valuesCopy objectForKeyedSubscript:@"timeZoneOffset"];
    v5 = valuesCopy;
    if (v6)
    {
      metadataFromMediaPropertiesOrOriginalResource = v6;
      v8 = [valuesCopy objectForKeyedSubscript:@"inferredTimeZoneOffset"];
      if (v8)
      {

LABEL_5:
        v5 = valuesCopy;
        goto LABEL_6;
      }

      timeZoneOffset = [(PLAdditionalAssetAttributes *)self timeZoneOffset];

      v5 = valuesCopy;
      if (timeZoneOffset)
      {
        asset = [(PLAdditionalAssetAttributes *)self asset];
        metadataFromMediaPropertiesOrOriginalResource = [asset metadataFromMediaPropertiesOrOriginalResource];

        timeZoneOffset2 = [metadataFromMediaPropertiesOrOriginalResource timeZoneOffset];
        integerValue = [timeZoneOffset2 integerValue];
        timeZoneOffset3 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
        integerValue2 = [timeZoneOffset3 integerValue];

        inferredTimeZoneOffset = [(PLAdditionalAssetAttributes *)self inferredTimeZoneOffset];
        v16 = inferredTimeZoneOffset;
        if (integerValue == integerValue2)
        {

          if (v16)
          {
            [(PLAdditionalAssetAttributes *)self setInferredTimeZoneOffset:0];
          }
        }

        else
        {
          timeZoneOffset4 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
          v18 = [v16 isEqualToNumber:timeZoneOffset4];

          if ((v18 & 1) == 0)
          {
            timeZoneOffset5 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
            [(PLAdditionalAssetAttributes *)self setInferredTimeZoneOffset:timeZoneOffset5];
          }
        }

        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

- (void)truncatedOriginalCheckChangedValues:(id)values
{
  v23 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v5 = [valuesCopy objectForKeyedSubscript:@"originalFilesize"];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (unsignedIntegerValue <= 0x10000 && (unsignedIntegerValue & 0xFFF) == 0)
    {
      asset = [(PLAdditionalAssetAttributes *)self asset];
      addedDate = [asset addedDate];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-60.0];
      if (([asset importedBy] - 1) <= 1u && objc_msgSend(addedDate, "compare:", v11) == 1)
      {
        pathForOriginalFile = [asset pathForOriginalFile];
        v13 = PLBackendGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v18 = v6;
          v19 = 2112;
          v20 = pathForOriginalFile;
          v21 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "rdar://39848396: truncated original originalFilesize=%@ path=%@ %@", buf, 0x20u);
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [valuesCopy objectForKeyedSubscript:@"originalFilename"];
        v16 = [v14 stringWithFormat:@"Captured truncated original with originalFilesize=%@ originalFilename=%@ path=%@. See rdar://39848396.", v6, v15, pathForOriginalFile];

        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Data Loss Issue Detected!" message:@"Please file a Radar for critical truncated original issue." radarTitle:@"TTR Photos Framework: captured truncated original" radarDescription:v16];
      }
    }
  }
}

- (BOOL)isUserInterfaceChange
{
  changedValues = [(PLAdditionalAssetAttributes *)self changedValues];
  v3 = [changedValues objectForKeyedSubscript:@"variationSuggestionStates"];

  if (v3 || ([changedValues objectForKeyedSubscript:@"reverseLocationData"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"reverseLocationDataIsValid"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"destinationAssetCopyState"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v9 = [changedValues objectForKeyedSubscript:@"lastViewedDate"];
    v7 = v9 != 0;
  }

  return v7;
}

- (BOOL)isSyncableChange
{
  v21 = *MEMORY[0x1E69E9840];
  asset = [(PLAdditionalAssetAttributes *)self asset];
  savedAssetTypeIsSupportedForUpload = [asset savedAssetTypeIsSupportedForUpload];

  if (!savedAssetTypeIsSupportedForUpload)
  {
    return 0;
  }

  changedValues = [(PLAdditionalAssetAttributes *)self changedValues];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[PLAdditionalAssetAttributes listOfSyncedProperties];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [changedValues objectForKey:*(*(&v16 + 1) + 8 * v10)];

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    asset2 = [(PLAdditionalAssetAttributes *)self asset];
    isPlaceholderAsset = [asset2 isPlaceholderAsset];

    if (isPlaceholderAsset)
    {
      changedValues = [(PLAdditionalAssetAttributes *)self asset];
      v12 = [PLManagedAsset validShareForPlaceholderAsset:changedValues];
      goto LABEL_14;
    }

    return 1;
  }

  else
  {
LABEL_10:

    v12 = 0;
LABEL_14:
  }

  return v12;
}

- (BOOL)supportsCloudUpload
{
  asset = [(PLAdditionalAssetAttributes *)self asset];
  supportsCloudUpload = [asset supportsCloudUpload];

  return supportsCloudUpload;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:(id)version noindex:(BOOL)noindex
{
  noindexCopy = noindex;
  v16[2] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v7 = versionCopy;
  if (versionCopy)
  {
    intValue = [versionCopy intValue];
  }

  else
  {
    intValue = 1;
  }

  if (noindexCopy)
  {
    v9 = @"noindex:(%K) >= %d";
  }

  else
  {
    v9 = @"%K >= %d";
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:v9, @"faceAnalysisVersion", intValue];
  v11 = MEMORY[0x1E696AB28];
  v12 = [self predicateToIncludeOnlyAllowedForAnalysisWithNoindex:noindexCopy];
  v16[0] = v12;
  v16[1] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  return v14;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestFaceVersionWithNoindex:(BOOL)noindex
{
  noindexCopy = noindex;
  v5 = +[PLMediaAnalysisServiceRequestAdapter currentFaceVersion];
  v6 = [self predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:v5 noindex:noindexCopy];

  return v6;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToSceneVersion:(id)version noindex:(BOOL)noindex
{
  noindexCopy = noindex;
  v16[2] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v7 = versionCopy;
  if (versionCopy)
  {
    intValue = [versionCopy intValue];
  }

  else
  {
    intValue = 1;
  }

  if (noindexCopy)
  {
    v9 = @"noindex:(%K) >= %d";
  }

  else
  {
    v9 = @"%K >= %d";
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:v9, @"sceneAnalysisVersion", intValue];
  v11 = MEMORY[0x1E696AB28];
  v12 = [self predicateToIncludeOnlyAllowedForAnalysisWithNoindex:noindexCopy];
  v16[0] = v12;
  v16[1] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  return v14;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestSceneVersionWithNoindex:(BOOL)noindex
{
  noindexCopy = noindex;
  v5 = +[PLMediaAnalysisServiceRequestAdapter currentSceneVersion];
  v6 = [self predicateToIncludeOnlyAllowedForAnalysisAndProcessedToSceneVersion:v5 noindex:noindexCopy];

  return v6;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisWithNoindex:(BOOL)noindex
{
  if (noindex)
  {
    v3 = @"noindex:(%K) == YES";
  }

  else
  {
    v3 = @"%K == YES";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"allowedForAnalysis"];

  return v4;
}

+ (BOOL)shouldPersistImportedByDisplayName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = [nameCopy hasPrefix:@"com.apple."] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = listOfSyncedProperties_result_87438;

  return v2;
}

void __53__PLAdditionalAssetAttributes_listOfSyncedProperties__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"title", @"accessibilityDescription", @"keywords", @"longDescription", @"personReferences", @"videoCpDurationTimescale", @"videoCpDisplayValue", @"videoCpDisplayTimescale", @"playCount", @"shareCount", @"viewCount", @"originatingAssetIdentifier", @"originalResourceChoice", @"assetDescription", @"syndicationIdentifier", @"syndicationHistory", @"timeZoneName", @"timeZoneOffset", @"viewPresentation", 0}];
  v1 = listOfSyncedProperties_result_87438;
  listOfSyncedProperties_result_87438 = v0;
}

- (PLSpatialOverCaptureInformation)spatialOverCaptureInformation
{
  v19 = *MEMORY[0x1E69E9840];
  asset = [(PLAdditionalAssetAttributes *)self asset];
  pathForSpatialOverCaptureContentFile = [asset pathForSpatialOverCaptureContentFile];

  if (!pathForSpatialOverCaptureContentFile)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForSpatialOverCaptureContentFile isDirectory:0];
  asset2 = [(PLAdditionalAssetAttributes *)self asset];
  isVideo = [asset2 isVideo];

  v9 = objc_alloc(MEMORY[0x1E69C0718]);
  if (!isVideo)
  {
    v11 = [v9 initWithImageURL:v6 contentType:0 timeZoneLookup:0];
    spatialOverCaptureIdentifier = [v11 spatialOverCaptureIdentifier];
    [v5 setSpatialOverCaptureGroupIdentifier:spatialOverCaptureIdentifier];

    livePhotoPairingIdentifier = [v11 livePhotoPairingIdentifier];
    [v5 setSpatialOverCaptureLivePhotoPairingIdentifier:livePhotoPairingIdentifier];

    if (v11)
    {
      goto LABEL_7;
    }

LABEL_8:
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = pathForSpatialOverCaptureContentFile;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to read metadata for %@", &v17, 0xCu);
    }

    v13 = 0;
    goto LABEL_11;
  }

  v10 = [v9 initWithAVURL:v6 timeZoneLookup:0];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  spatialOverCaptureIdentifier2 = [v10 spatialOverCaptureIdentifier];
  [v5 setSpatialOverCaptureGroupIdentifier:spatialOverCaptureIdentifier2];

LABEL_7:
  v13 = v5;
LABEL_11:

LABEL_12:

  return v13;
}

- (void)setSourceAssetForDuplicationCPLScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    identifier = [identifierCopy identifier];
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationIdentifier:identifier];

    scopeIdentifier = [v7 scopeIdentifier];
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationScopeIdentifier:scopeIdentifier];
  }

  else
  {
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationIdentifier:0];
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationScopeIdentifier:0];
  }
}

- (CPLScopedIdentifier)sourceAssetForDuplicationCPLScopedIdentifier
{
  sourceAssetForDuplicationIdentifier = [(PLAdditionalAssetAttributes *)self sourceAssetForDuplicationIdentifier];
  sourceAssetForDuplicationScopeIdentifier = [(PLAdditionalAssetAttributes *)self sourceAssetForDuplicationScopeIdentifier];
  if (sourceAssetForDuplicationIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:sourceAssetForDuplicationScopeIdentifier identifier:sourceAssetForDuplicationIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasDuplicateMatchingData
{
  sceneprint = [(PLAdditionalAssetAttributes *)self sceneprint];
  duplicateMatchingData = [sceneprint duplicateMatchingData];
  if (duplicateMatchingData)
  {
    v5 = 1;
  }

  else
  {
    sceneprint2 = [(PLAdditionalAssetAttributes *)self sceneprint];
    duplicateMatchingAlternateData = [sceneprint2 duplicateMatchingAlternateData];
    v5 = duplicateMatchingAlternateData != 0;
  }

  return v5;
}

- (void)setDuplicateMatchingData:(id)data duplicateMatchingAlternateData:(id)alternateData processingSucceeded:(BOOL)succeeded
{
  succeededCopy = succeeded;
  dataCopy = data;
  alternateDataCopy = alternateData;
  sceneprint = [(PLAdditionalAssetAttributes *)self sceneprint];
  if (!sceneprint)
  {
    managedObjectContext = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    sceneprint = [PLSceneprint insertInCurrentManagedObjectContext:managedObjectContext withAdditionalAssetAttributes:self];
  }

  [sceneprint setDuplicateMatchingData:dataCopy duplicateMatchingAlternateData:alternateDataCopy];
  [(PLAdditionalAssetAttributes *)self addDuplicateDetectorPerceptualProcessingStates:succeededCopy ^ 1 removeProcessingStates:succeededCopy];
}

- (void)setSceneprintWithData:(id)data
{
  dataCopy = data;
  sceneprint = [(PLAdditionalAssetAttributes *)self sceneprint];
  if (!sceneprint)
  {
    managedObjectContext = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    sceneprint = [PLSceneprint insertInCurrentManagedObjectContext:managedObjectContext withAdditionalAssetAttributes:self];
  }

  [sceneprint setData:dataCopy];
}

- (void)setMediaMetadataData:(id)data
{
  dataCopy = data;
  asset = [(PLAdditionalAssetAttributes *)self asset];
  hasAdjustments = [asset hasAdjustments];

  mediaMetadata = [(PLAdditionalAssetAttributes *)self mediaMetadata];

  if (!mediaMetadata && hasAdjustments)
  {
    managedObjectContext = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    v8 = [(PLManagedObject *)PLCloudMasterMediaMetadata insertInManagedObjectContext:managedObjectContext];
    [(PLAdditionalAssetAttributes *)self setMediaMetadata:v8];
  }

  if (dataCopy)
  {
    mediaMetadata2 = [(PLAdditionalAssetAttributes *)self mediaMetadata];

    if (!mediaMetadata2)
    {
      managedObjectContext2 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
      v11 = [(PLManagedObject *)PLCloudMasterMediaMetadata insertInManagedObjectContext:managedObjectContext2];
      [(PLAdditionalAssetAttributes *)self setMediaMetadata:v11];
    }

    mediaMetadata3 = [(PLAdditionalAssetAttributes *)self mediaMetadata];
    [mediaMetadata3 setValue:dataCopy forKey:@"data"];
    goto LABEL_10;
  }

  if (hasAdjustments)
  {
    mediaMetadata3 = [(PLAdditionalAssetAttributes *)self mediaMetadata];
    [mediaMetadata3 setData:0];
LABEL_10:

    goto LABEL_11;
  }

  [(PLAdditionalAssetAttributes *)self setMediaMetadata:0];
LABEL_11:
}

- (NSData)mediaMetadataData
{
  mediaMetadata = [(PLAdditionalAssetAttributes *)self mediaMetadata];
  v3 = [mediaMetadata valueForKey:@"data"];

  return v3;
}

- (void)setLongDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy length];
  assetDescription = [(PLAdditionalAssetAttributes *)self assetDescription];
  managedObjectContext2 = assetDescription;
  if (v4)
  {
    if (!assetDescription)
    {
      managedObjectContext = [(PLAdditionalAssetAttributes *)self managedObjectContext];
      v8 = +[PLAssetDescription entityName];
      managedObjectContext2 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, managedObjectContext, 0);

      if (managedObjectContext2)
      {
        [(PLAdditionalAssetAttributes *)self setAssetDescription:managedObjectContext2];
      }
    }

    [managedObjectContext2 setLongDescription:descriptionCopy];
  }

  else
  {

    if (!managedObjectContext2)
    {
      goto LABEL_10;
    }

    managedObjectContext2 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    assetDescription2 = [(PLAdditionalAssetAttributes *)self assetDescription];
    [managedObjectContext2 deleteObject:assetDescription2];
  }

LABEL_10:
}

- (NSString)longDescription
{
  assetDescription = [(PLAdditionalAssetAttributes *)self assetDescription];
  longDescription = [assetDescription longDescription];

  return longDescription;
}

- (void)removeCloudRecoveryStateFlag:(unint64_t)flag
{
  v4 = [(PLAdditionalAssetAttributes *)self cloudRecoveryState]& ~flag;

  [(PLAdditionalAssetAttributes *)self setCloudRecoveryState:v4];
}

- (void)setCloudRecoveryStateFlag:(unint64_t)flag
{
  v4 = [(PLAdditionalAssetAttributes *)self cloudRecoveryState]| flag;

  [(PLAdditionalAssetAttributes *)self setCloudRecoveryState:v4];
}

+ (id)descriptionForDestinationAssetCopyState:(signed __int16)state
{
  if ((state + 1) > 3u)
  {
    return &stru_1F0F06D80;
  }

  else
  {
    return off_1E75732F0[(state + 1)];
  }
}

@end