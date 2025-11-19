@interface PLAdditionalAssetAttributes
+ (BOOL)shouldPersistImportedByDisplayName:(id)a3;
+ (id)descriptionForDestinationAssetCopyState:(signed __int16)a3;
+ (id)listOfSyncedProperties;
+ (id)newExtraDurationDataFromStillDisplayTime:(id *)a3 videoDuration:(id *)a4;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:(id)a3 noindex:(BOOL)a4;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestFaceVersionWithNoindex:(BOOL)a3;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestSceneVersionWithNoindex:(BOOL)a3;
+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToSceneVersion:(id)a3 noindex:(BOOL)a4;
+ (id)predicateToIncludeOnlyAllowedForAnalysisWithNoindex:(BOOL)a3;
+ (void)fromExtraDurationData:(id)a3 getStillDisplayTime:(id *)a4 videoDuration:(id *)a5;
- (BOOL)containsDuplicateDetectorPerceptualProcessingState:(unsigned __int16)a3;
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
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (signed)viewPresentation;
- (void)_updateInferredTimeZoneOffsetWithChangedValues:(id)a3;
- (void)addDuplicateDetectorPerceptualProcessingStates:(unsigned __int16)a3 removeProcessingStates:(unsigned __int16)a4;
- (void)appendLibraryScopeAssetContributorsToUpdate:(id)a3;
- (void)correctOriginalOrientationIfRequired;
- (void)recalculatehasPeopleSceneMidOrGreaterConfidence;
- (void)removeCloudRecoveryStateFlag:(unint64_t)a3;
- (void)resetNonSyncViewPresentation;
- (void)setCloudRecoveryStateFlag:(unint64_t)a3;
- (void)setDuplicateMatchingData:(id)a3 duplicateMatchingAlternateData:(id)a4 processingSucceeded:(BOOL)a5;
- (void)setLongDescription:(id)a3;
- (void)setMediaMetadataData:(id)a3;
- (void)setMontage:(id)a3;
- (void)setSceneprintWithData:(id)a3;
- (void)setShiftedLocation:(id)a3;
- (void)setShiftedLocationIsValid:(BOOL)a3;
- (void)setSourceAssetForDuplicationCPLScopedIdentifier:(id)a3;
- (void)truncatedOriginalCheckChangedValues:(id)a3;
- (void)updateAllowedForAnalysis;
- (void)willSave;
@end

@implementation PLAdditionalAssetAttributes

+ (void)fromExtraDurationData:(id)a3 getStillDisplayTime:(id *)a4 videoDuration:(id *)a5
{
  v7 = a3;
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v10 = v8;
  v11 = v9;
  if ([v7 length] >= 0x30)
  {
    [v7 getBytes:&v8 length:48];
  }

  if (a4)
  {
    *&a4->var0 = v8;
    a4->var3 = v9;
  }

  if (a5)
  {
    *&a5->var0 = v10;
    a5->var3 = v11;
  }
}

+ (id)newExtraDurationDataFromStillDisplayTime:(id *)a3 videoDuration:(id *)a4
{
  v5[0] = *a3;
  v5[1] = *a4;
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

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLAdditionalAssetAttributes *)self asset];
  if ([v5 isValidForJournalPersistence])
  {
    v6 = [[PLAssetJournalEntryPayload alloc] initWithAdditionalAssetAttributes:self changedKeys:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadID
{
  v2 = [(PLAdditionalAssetAttributes *)self asset];
  v3 = [v2 uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

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
  v4 = [v3 unsignedShortValue];

  [(PLAdditionalAssetAttributes *)self didAccessValueForKey:@"viewPresentation"];
  return v4;
}

- (id)allSceneClassifications
{
  v3 = [(PLAdditionalAssetAttributes *)self sceneClassifications];
  v4 = [(PLAdditionalAssetAttributes *)self temporalSceneClassifications];
  v5 = [v4 allObjects];
  v6 = [v3 setByAddingObjectsFromArray:v5];

  return v6;
}

- (BOOL)containsDuplicateDetectorPerceptualProcessingState:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(PLAdditionalAssetAttributes *)self duplicateDetectorPerceptualProcessingState];
  if (v3)
  {
    return (v3 & ~v4) == 0;
  }

  else
  {
    return v4 == 0;
  }
}

- (void)addDuplicateDetectorPerceptualProcessingStates:(unsigned __int16)a3 removeProcessingStates:(unsigned __int16)a4
{
  v5 = ([(PLAdditionalAssetAttributes *)self duplicateDetectorPerceptualProcessingState]| a3) & ~a4;
  if (v5 != [(PLAdditionalAssetAttributes *)self duplicateDetectorPerceptualProcessingState])
  {

    [(PLAdditionalAssetAttributes *)self setDuplicateDetectorPerceptualProcessingState:v5];
  }
}

- (void)appendLibraryScopeAssetContributorsToUpdate:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(PLAdditionalAssetAttributes *)self libraryScopeAssetContributorsToUpdate];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v6 = [v7 allObjects];
    [v5 addObjectsFromArray:v6];

    [(PLAdditionalAssetAttributes *)self setLibraryScopeAssetContributorsToUpdate:v5];
  }
}

- (void)setShiftedLocationIsValid:(BOOL)a3
{
  v3 = a3;
  [(PLAdditionalAssetAttributes *)self willChangeValueForKey:@"shiftedLocationIsValid"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(PLAdditionalAssetAttributes *)self setPrimitiveValue:v5 forKey:@"shiftedLocationIsValid"];

  [(PLAdditionalAssetAttributes *)self didChangeValueForKey:@"shiftedLocationIsValid"];
  if (!v3)
  {
    v6 = [(PLAdditionalAssetAttributes *)self asset];
    v13 = [v6 location];

    if (v13)
    {
      [v13 coordinate];
      v8 = v7;
      v10 = v9;
    }

    else
    {
      v8 = *MEMORY[0x1E6985CC0];
      v10 = *(MEMORY[0x1E6985CC0] + 8);
    }

    v11 = [(PLAdditionalAssetAttributes *)self asset];
    [v11 setLatitude:v8];

    v12 = [(PLAdditionalAssetAttributes *)self asset];
    [v12 setLongitude:v10];
  }
}

- (CLLocation)shiftedLocation
{
  [(PLAdditionalAssetAttributes *)self willAccessValueForKey:@"shiftedLocation"];
  v3 = [(PLAdditionalAssetAttributes *)self _cachedShiftedLocation];
  [(PLAdditionalAssetAttributes *)self didAccessValueForKey:@"shiftedLocation"];
  if (!v3)
  {
    v4 = [(PLAdditionalAssetAttributes *)self shiftedLocationData];
    v3 = [PLManagedAsset newLocationFromLocationData:v4 timestampIfMissing:0];
    if (v3)
    {
      [(PLAdditionalAssetAttributes *)self willChangeValueForKey:@"shiftedLocation"];
      [(PLAdditionalAssetAttributes *)self _setCachedShiftedLocation:v3];
      [(PLAdditionalAssetAttributes *)self didChangeValueForKey:@"shiftedLocation"];
    }
  }

  return v3;
}

- (void)updateAllowedForAnalysis
{
  v5 = [(PLAdditionalAssetAttributes *)self asset];
  v3 = [v5 calculateAllowedForAnalysis];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(PLManagedObject *)self pl_safeSetValue:v4 forKey:@"allowedForAnalysis" valueDidChangeHandler:0];
}

- (void)setMontage:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PLAdditionalAssetAttributes_setMontage___block_invoke;
  v3[3] = &unk_1E75732D0;
  v3[4] = self;
  [(PLManagedObject *)self pl_safeSetValue:a3 forKey:@"montage" valueDidChangeHandler:v3];
}

- (void)setShiftedLocation:(id)a3
{
  v15 = a3;
  [(PLAdditionalAssetAttributes *)self willChangeValueForKey:@"shiftedLocation"];
  [(PLAdditionalAssetAttributes *)self _setCachedShiftedLocation:v15];
  [(PLAdditionalAssetAttributes *)self didChangeValueForKey:@"shiftedLocation"];
  v4 = [PLManagedAsset newLocationDataFromLocation:v15];
  [(PLAdditionalAssetAttributes *)self setShiftedLocationData:v4];
  if (v4)
  {
    [v15 coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(PLAdditionalAssetAttributes *)self asset];
    v10 = [v9 location];

    if (v10)
    {
      [v10 coordinate];
      v6 = v11;
      v8 = v12;
    }

    else
    {
      v6 = *MEMORY[0x1E6985CC0];
      v8 = *(MEMORY[0x1E6985CC0] + 8);
    }
  }

  v13 = [(PLAdditionalAssetAttributes *)self asset];
  [v13 setLatitude:v6];

  v14 = [(PLAdditionalAssetAttributes *)self asset];
  [v14 setLongitude:v8];
}

- (void)recalculatehasPeopleSceneMidOrGreaterConfidence
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(PLAdditionalAssetAttributes *)self sceneClassifications];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_89;
  }

  v4 = [(PLAdditionalAssetAttributes *)self asset];
  v5 = [v4 isDeleted];

  if ((v5 & 1) == 0)
  {
    v101 = v3;
    v6 = [(PLAdditionalAssetAttributes *)self changedValues];
    v7 = [(PLAdditionalAssetAttributes *)self isSyncableChange];
    v8 = [(PLAdditionalAssetAttributes *)self isUserInterfaceChange];
    v9 = [(PLAdditionalAssetAttributes *)self asset];
    v10 = [v9 changedValues];
    v11 = [v10 objectForKeyedSubscript:@"modificationDate"];
    if (v11 || !v7 && !v8)
    {
    }

    else
    {
      v12 = [(PLAdditionalAssetAttributes *)self asset];
      v13 = [v12 isFinderSyncedAsset];

      if (v13)
      {
LABEL_9:
        v102 = [v6 objectForKeyedSubscript:@"placeAnnotationData"];

        v100 = [v6 objectForKeyedSubscript:@"publicGlobalUUID"];

        v14 = [v6 objectForKeyedSubscript:@"title"];

        [v6 objectForKeyedSubscript:@"accessibilityDescription"];
        v91 = v90 = v14;
        v98 = v14 | v91;

        v15 = [v6 objectForKeyedSubscript:@"timeZoneName"];

        v93 = [v6 objectForKeyedSubscript:@"timeZoneOffset"];

        v16 = [v6 objectForKeyedSubscript:@"importedBy"];

        v17 = [v6 objectForKeyedSubscript:@"spatialOverCaptureGroupIdentifier"];

        v18 = [v6 objectForKeyedSubscript:@"syndicationIdentifier"];

        v19 = [v6 objectForKeyedSubscript:@"libraryScopeAssetContributorsToUpdate"];

        v20 = [v6 objectForKeyedSubscript:@"syndicationHistory"];

        v21 = [v6 objectForKeyedSubscript:@"sceneAnalysisIsFromPreview"];

        v22 = [v6 objectForKeyedSubscript:@"viewPresentation"];

        v92 = v15;
        v23 = v15 | v102;
        v24 = v19;
        v94 = v17;
        v95 = v18;
        v25 = v16;
        v26 = v16 | v17 | v18;
        v27 = v6;
        v28 = v98 | v23 | v26;
        v96 = v20;
        v97 = v21;
        v99 = v22;
        v29 = (v28 | v24 | v20 | v21 | v22) != 0;
        v30 = [v6 objectForKeyedSubscript:@"sceneClassifications"];

        if (([(PLAdditionalAssetAttributes *)self isInserted]& 1) != 0 || v30)
        {
          v31 = [(PLAdditionalAssetAttributes *)self asset];
          [v31 recalculateIsDetectedScreenshot];

          [(PLAdditionalAssetAttributes *)self recalculatehasPeopleSceneMidOrGreaterConfidence];
        }

        v3 = v101;
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
          v33 = [(PLAdditionalAssetAttributes *)self asset];
          v34 = [v33 isValidTypeForPersistence];

          if (v34)
          {
            if (v29)
            {
              v35 = [(PLAdditionalAssetAttributes *)self asset];
              v36 = [v35 persistedFileSystemAttributesFileURL];

              if (v36)
              {
                v37 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:v36];
                if (v90)
                {
                  [(PLAdditionalAssetAttributes *)self title];
                  v39 = v38 = v37;
                  [v38 setString:v39 forKey:*MEMORY[0x1E69BFE50]];

                  v37 = v38;
                }

                if (v91)
                {
                  v40 = [(PLAdditionalAssetAttributes *)self accessibilityDescription];
                  [v37 setString:v40 forKey:*MEMORY[0x1E69BFD00]];
                }

                if (v92)
                {
                  v41 = [(PLAdditionalAssetAttributes *)self timeZoneName];
                  [v37 setString:v41 forKey:*MEMORY[0x1E69BFE40]];
                }

                if (v93)
                {
                  v42 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
                  v43 = [v42 intValue];
                  [v37 setInt32:v43 forKey:*MEMORY[0x1E69BFE48]];
                }

                if (v102)
                {
                  v44 = [(PLAdditionalAssetAttributes *)self placeAnnotationData];
                  [v37 setData:v44 forKey:*MEMORY[0x1E69BFE00]];
                }

                if (v25 && [(PLAdditionalAssetAttributes *)self importedBy])
                {
                  v45 = [(PLAdditionalAssetAttributes *)self importedBy];
                  [v37 setUInt16:v45 forKey:*MEMORY[0x1E69BFDA0]];
                }

                if (v94)
                {
                  v46 = [(PLAdditionalAssetAttributes *)self spatialOverCaptureGroupIdentifier];
                  [v37 setString:v46 forKey:*MEMORY[0x1E69BFE28]];
                }

                if (v95)
                {
                  v47 = [(PLAdditionalAssetAttributes *)self syndicationIdentifier];
                  [v37 setString:v47 forKey:*MEMORY[0x1E69BFE38]];
                }

                if (v24)
                {
                  v48 = v36;
                  v49 = MEMORY[0x1E696ACC8];
                  v50 = [(PLAdditionalAssetAttributes *)self libraryScopeAssetContributorsToUpdate];
                  v103 = 0;
                  v51 = [v49 archivedDataWithRootObject:v50 requiringSecureCoding:1 error:&v103];
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

                  v36 = v48;
                }

                if (v96)
                {
                  v54 = [(PLAdditionalAssetAttributes *)self syndicationHistory];
                  [v37 setUInt16:v54 forKey:*MEMORY[0x1E69BFE30]];
                }

                if (v97)
                {
                  v55 = [(PLAdditionalAssetAttributes *)self sceneAnalysisIsFromPreview];
                  [v37 setUInt16:v55 forKey:*MEMORY[0x1E69BFE20]];
                }

                if (v99)
                {
                  v56 = [(PLAdditionalAssetAttributes *)self viewPresentation];
                  [v37 setUInt16:v56 forKey:*MEMORY[0x1E69BFE78]];
                }

                [v37 persist];
              }
            }

            if (v100)
            {
              v57 = [v101 delayedSaveActions];
              v58 = [(PLAdditionalAssetAttributes *)self asset];
              [v57 recordAssetForFileSystemPersistencyUpdate:v58];
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
          v59 = [v101 delayedSaveActions];
          [v59 recordAdditionalAssetAttributesForMomentUpdate:self];
        }

        v60 = [v27 objectForKeyedSubscript:{@"originalOrientation", v90}];

        if (v60)
        {
          [(PLAdditionalAssetAttributes *)self correctOriginalOrientationIfRequired];
        }

        v61 = [v27 objectForKeyedSubscript:@"keywords"];

        if (v61)
        {
          v62 = [(PLAdditionalAssetAttributes *)self keywords];
          v63 = [v62 count] != 0;

          v64 = [(PLAdditionalAssetAttributes *)self asset];
          [v64 setKeywordBadgeAttribute:v63];
        }

        v65 = [v27 objectForKeyedSubscript:@"originalResourceChoice"];

        if (v65)
        {
          v66 = [(PLAdditionalAssetAttributes *)self asset];
          [v66 recalculateRAWBadgeAttribute];
        }

        if ([PLDuplicateAsset isDuplicateAssetSortChangedObject:self])
        {
          v67 = [(PLAdditionalAssetAttributes *)self asset];
          v68 = [v67 duplicateAlbum];

          [v68 sortAssets];
        }

        v69 = [v27 objectForKeyedSubscript:@"sceneAnalysisVersion"];
        if (v69)
        {
          v70 = v69;
          v71 = [(PLAdditionalAssetAttributes *)self asset];
          if ([v71 duplicateAssetVisibilityState])
          {
            v72 = [(PLAdditionalAssetAttributes *)self asset];
            v73 = [v72 isValidForPerceptualProcessing];

            if (!v73)
            {
              goto LABEL_77;
            }

            v105 = @"sceneAnalysisVersion";
            v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
            v70 = [(PLAdditionalAssetAttributes *)self committedValuesForKeys:v74];

            v75 = [v70 objectForKeyedSubscript:@"sceneAnalysisVersion"];
            v76 = [v75 shortValue];

            v77 = [v27 objectForKeyedSubscript:@"sceneAnalysisVersion"];
            v78 = [v77 shortValue];

            v79 = v76 != v78 || v78 == 0;
            if (v76 && v79)
            {
              v80 = [(PLAdditionalAssetAttributes *)self asset];
              [v80 removeFromDuplicateAlbum];
            }

            v71 = [(PLAdditionalAssetAttributes *)self asset];
            v81 = [v71 uuid];
            v82 = [(PLManagedObject *)self photoLibrary];
            [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:v81 requiresMetadataProcessing:0 library:v82];
          }
        }

LABEL_77:
        v83 = [v27 objectForKeyedSubscript:@"originalStableHash"];

        if (v83)
        {
          v84 = [(PLAdditionalAssetAttributes *)self asset];
          v85 = [v84 uuid];

          if (v85)
          {
            v86 = [(PLManagedObject *)self photoLibrary];
            [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:v85 requiresMetadataProcessing:1 library:v86];
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

        v89 = [(PLAdditionalAssetAttributes *)self asset];
        [v89 recalculateIsRecentlySaved];

        goto LABEL_86;
      }

      v9 = [(PLAdditionalAssetAttributes *)self asset];
      v10 = [MEMORY[0x1E695DF00] date];
      [v9 setModificationDate:v10];
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
  v3 = [(PLAdditionalAssetAttributes *)self asset];
  v4 = [v3 extendedAttributes];
  v5 = [v4 orientation];
  v6 = [v5 shortValue];

  LODWORD(v4) = [PLManagedAsset correctedOrientation:v6];
  v7 = [(PLAdditionalAssetAttributes *)self originalOrientation];
  v8 = [v7 shortValue];

  v9 = [PLManagedAsset correctedOrientation:v8];
  if (v4 == v6)
  {
    if (v8 == v6)
    {
      return;
    }

    v10 = v6;
  }

  else
  {
    v10 = v9;
    if (v9 == v8)
    {
      return;
    }
  }

  v11 = [MEMORY[0x1E696AD98] numberWithShort:v10];
  [(PLAdditionalAssetAttributes *)self setOriginalOrientation:v11];
}

- (void)_updateInferredTimeZoneOffsetWithChangedValues:(id)a3
{
  v20 = a3;
  v4 = [(PLAdditionalAssetAttributes *)self isUpdated];
  v5 = v20;
  if (v4)
  {
    v6 = [v20 objectForKeyedSubscript:@"timeZoneOffset"];
    v5 = v20;
    if (v6)
    {
      v7 = v6;
      v8 = [v20 objectForKeyedSubscript:@"inferredTimeZoneOffset"];
      if (v8)
      {

LABEL_5:
        v5 = v20;
        goto LABEL_6;
      }

      v9 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];

      v5 = v20;
      if (v9)
      {
        v10 = [(PLAdditionalAssetAttributes *)self asset];
        v7 = [v10 metadataFromMediaPropertiesOrOriginalResource];

        v11 = [v7 timeZoneOffset];
        v12 = [v11 integerValue];
        v13 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
        v14 = [v13 integerValue];

        v15 = [(PLAdditionalAssetAttributes *)self inferredTimeZoneOffset];
        v16 = v15;
        if (v12 == v14)
        {

          if (v16)
          {
            [(PLAdditionalAssetAttributes *)self setInferredTimeZoneOffset:0];
          }
        }

        else
        {
          v17 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
          v18 = [v16 isEqualToNumber:v17];

          if ((v18 & 1) == 0)
          {
            v19 = [(PLAdditionalAssetAttributes *)self timeZoneOffset];
            [(PLAdditionalAssetAttributes *)self setInferredTimeZoneOffset:v19];
          }
        }

        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

- (void)truncatedOriginalCheckChangedValues:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"originalFilesize"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    if (v7 <= 0x10000 && (v7 & 0xFFF) == 0)
    {
      v9 = [(PLAdditionalAssetAttributes *)self asset];
      v10 = [v9 addedDate];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-60.0];
      if (([v9 importedBy] - 1) <= 1u && objc_msgSend(v10, "compare:", v11) == 1)
      {
        v12 = [v9 pathForOriginalFile];
        v13 = PLBackendGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v18 = v6;
          v19 = 2112;
          v20 = v12;
          v21 = 2112;
          v22 = self;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "rdar://39848396: truncated original originalFilesize=%@ path=%@ %@", buf, 0x20u);
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [v4 objectForKeyedSubscript:@"originalFilename"];
        v16 = [v14 stringWithFormat:@"Captured truncated original with originalFilesize=%@ originalFilename=%@ path=%@. See rdar://39848396.", v6, v15, v12];

        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Data Loss Issue Detected!" message:@"Please file a Radar for critical truncated original issue." radarTitle:@"TTR Photos Framework: captured truncated original" radarDescription:v16];
      }
    }
  }
}

- (BOOL)isUserInterfaceChange
{
  v2 = [(PLAdditionalAssetAttributes *)self changedValues];
  v3 = [v2 objectForKeyedSubscript:@"variationSuggestionStates"];

  if (v3 || ([v2 objectForKeyedSubscript:@"reverseLocationData"], v4 = objc_claimAutoreleasedReturnValue(), v4, v4) || (objc_msgSend(v2, "objectForKeyedSubscript:", @"reverseLocationDataIsValid"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || (objc_msgSend(v2, "objectForKeyedSubscript:", @"destinationAssetCopyState"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v9 = [v2 objectForKeyedSubscript:@"lastViewedDate"];
    v7 = v9 != 0;
  }

  return v7;
}

- (BOOL)isSyncableChange
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PLAdditionalAssetAttributes *)self asset];
  v4 = [v3 savedAssetTypeIsSupportedForUpload];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PLAdditionalAssetAttributes *)self changedValues];
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

      v11 = [v5 objectForKey:*(*(&v16 + 1) + 8 * v10)];

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

    v13 = [(PLAdditionalAssetAttributes *)self asset];
    v14 = [v13 isPlaceholderAsset];

    if (v14)
    {
      v5 = [(PLAdditionalAssetAttributes *)self asset];
      v12 = [PLManagedAsset validShareForPlaceholderAsset:v5];
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
  v2 = [(PLAdditionalAssetAttributes *)self asset];
  v3 = [v2 supportsCloudUpload];

  return v3;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:(id)a3 noindex:(BOOL)a4
{
  v4 = a4;
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 1;
  }

  if (v4)
  {
    v9 = @"noindex:(%K) >= %d";
  }

  else
  {
    v9 = @"%K >= %d";
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:v9, @"faceAnalysisVersion", v8];
  v11 = MEMORY[0x1E696AB28];
  v12 = [a1 predicateToIncludeOnlyAllowedForAnalysisWithNoindex:v4];
  v16[0] = v12;
  v16[1] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  return v14;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestFaceVersionWithNoindex:(BOOL)a3
{
  v3 = a3;
  v5 = +[PLMediaAnalysisServiceRequestAdapter currentFaceVersion];
  v6 = [a1 predicateToIncludeOnlyAllowedForAnalysisAndProcessedToFaceVersion:v5 noindex:v3];

  return v6;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToSceneVersion:(id)a3 noindex:(BOOL)a4
{
  v4 = a4;
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intValue];
  }

  else
  {
    v8 = 1;
  }

  if (v4)
  {
    v9 = @"noindex:(%K) >= %d";
  }

  else
  {
    v9 = @"%K >= %d";
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:v9, @"sceneAnalysisVersion", v8];
  v11 = MEMORY[0x1E696AB28];
  v12 = [a1 predicateToIncludeOnlyAllowedForAnalysisWithNoindex:v4];
  v16[0] = v12;
  v16[1] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  return v14;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisAndProcessedToLatestSceneVersionWithNoindex:(BOOL)a3
{
  v3 = a3;
  v5 = +[PLMediaAnalysisServiceRequestAdapter currentSceneVersion];
  v6 = [a1 predicateToIncludeOnlyAllowedForAnalysisAndProcessedToSceneVersion:v5 noindex:v3];

  return v6;
}

+ (id)predicateToIncludeOnlyAllowedForAnalysisWithNoindex:(BOOL)a3
{
  if (a3)
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

+ (BOOL)shouldPersistImportedByDisplayName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 hasPrefix:@"com.apple."] ^ 1;
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
  v3 = [(PLAdditionalAssetAttributes *)self asset];
  v4 = [v3 pathForSpatialOverCaptureContentFile];

  if (!v4)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
  v7 = [(PLAdditionalAssetAttributes *)self asset];
  v8 = [v7 isVideo];

  v9 = objc_alloc(MEMORY[0x1E69C0718]);
  if (!v8)
  {
    v11 = [v9 initWithImageURL:v6 contentType:0 timeZoneLookup:0];
    v14 = [v11 spatialOverCaptureIdentifier];
    [v5 setSpatialOverCaptureGroupIdentifier:v14];

    v15 = [v11 livePhotoPairingIdentifier];
    [v5 setSpatialOverCaptureLivePhotoPairingIdentifier:v15];

    if (v11)
    {
      goto LABEL_7;
    }

LABEL_8:
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v4;
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
  v12 = [v10 spatialOverCaptureIdentifier];
  [v5 setSpatialOverCaptureGroupIdentifier:v12];

LABEL_7:
  v13 = v5;
LABEL_11:

LABEL_12:

  return v13;
}

- (void)setSourceAssetForDuplicationCPLScopedIdentifier:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 identifier];
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationIdentifier:v5];

    v6 = [v7 scopeIdentifier];
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationScopeIdentifier:v6];
  }

  else
  {
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationIdentifier:0];
    [(PLAdditionalAssetAttributes *)self setSourceAssetForDuplicationScopeIdentifier:0];
  }
}

- (CPLScopedIdentifier)sourceAssetForDuplicationCPLScopedIdentifier
{
  v3 = [(PLAdditionalAssetAttributes *)self sourceAssetForDuplicationIdentifier];
  v4 = [(PLAdditionalAssetAttributes *)self sourceAssetForDuplicationScopeIdentifier];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v4 identifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasDuplicateMatchingData
{
  v3 = [(PLAdditionalAssetAttributes *)self sceneprint];
  v4 = [v3 duplicateMatchingData];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PLAdditionalAssetAttributes *)self sceneprint];
    v7 = [v6 duplicateMatchingAlternateData];
    v5 = v7 != 0;
  }

  return v5;
}

- (void)setDuplicateMatchingData:(id)a3 duplicateMatchingAlternateData:(id)a4 processingSucceeded:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = [(PLAdditionalAssetAttributes *)self sceneprint];
  if (!v9)
  {
    v10 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    v9 = [PLSceneprint insertInCurrentManagedObjectContext:v10 withAdditionalAssetAttributes:self];
  }

  [v9 setDuplicateMatchingData:v11 duplicateMatchingAlternateData:v8];
  [(PLAdditionalAssetAttributes *)self addDuplicateDetectorPerceptualProcessingStates:v5 ^ 1 removeProcessingStates:v5];
}

- (void)setSceneprintWithData:(id)a3
{
  v6 = a3;
  v4 = [(PLAdditionalAssetAttributes *)self sceneprint];
  if (!v4)
  {
    v5 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    v4 = [PLSceneprint insertInCurrentManagedObjectContext:v5 withAdditionalAssetAttributes:self];
  }

  [v4 setData:v6];
}

- (void)setMediaMetadataData:(id)a3
{
  v13 = a3;
  v4 = [(PLAdditionalAssetAttributes *)self asset];
  v5 = [v4 hasAdjustments];

  v6 = [(PLAdditionalAssetAttributes *)self mediaMetadata];

  if (!v6 && v5)
  {
    v7 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    v8 = [(PLManagedObject *)PLCloudMasterMediaMetadata insertInManagedObjectContext:v7];
    [(PLAdditionalAssetAttributes *)self setMediaMetadata:v8];
  }

  if (v13)
  {
    v9 = [(PLAdditionalAssetAttributes *)self mediaMetadata];

    if (!v9)
    {
      v10 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
      v11 = [(PLManagedObject *)PLCloudMasterMediaMetadata insertInManagedObjectContext:v10];
      [(PLAdditionalAssetAttributes *)self setMediaMetadata:v11];
    }

    v12 = [(PLAdditionalAssetAttributes *)self mediaMetadata];
    [v12 setValue:v13 forKey:@"data"];
    goto LABEL_10;
  }

  if (v5)
  {
    v12 = [(PLAdditionalAssetAttributes *)self mediaMetadata];
    [v12 setData:0];
LABEL_10:

    goto LABEL_11;
  }

  [(PLAdditionalAssetAttributes *)self setMediaMetadata:0];
LABEL_11:
}

- (NSData)mediaMetadataData
{
  v2 = [(PLAdditionalAssetAttributes *)self mediaMetadata];
  v3 = [v2 valueForKey:@"data"];

  return v3;
}

- (void)setLongDescription:(id)a3
{
  v10 = a3;
  v4 = [v10 length];
  v5 = [(PLAdditionalAssetAttributes *)self assetDescription];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v7 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
      v8 = +[PLAssetDescription entityName];
      v6 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, v7, 0);

      if (v6)
      {
        [(PLAdditionalAssetAttributes *)self setAssetDescription:v6];
      }
    }

    [v6 setLongDescription:v10];
  }

  else
  {

    if (!v6)
    {
      goto LABEL_10;
    }

    v6 = [(PLAdditionalAssetAttributes *)self managedObjectContext];
    v9 = [(PLAdditionalAssetAttributes *)self assetDescription];
    [v6 deleteObject:v9];
  }

LABEL_10:
}

- (NSString)longDescription
{
  v2 = [(PLAdditionalAssetAttributes *)self assetDescription];
  v3 = [v2 longDescription];

  return v3;
}

- (void)removeCloudRecoveryStateFlag:(unint64_t)a3
{
  v4 = [(PLAdditionalAssetAttributes *)self cloudRecoveryState]& ~a3;

  [(PLAdditionalAssetAttributes *)self setCloudRecoveryState:v4];
}

- (void)setCloudRecoveryStateFlag:(unint64_t)a3
{
  v4 = [(PLAdditionalAssetAttributes *)self cloudRecoveryState]| a3;

  [(PLAdditionalAssetAttributes *)self setCloudRecoveryState:v4];
}

+ (id)descriptionForDestinationAssetCopyState:(signed __int16)a3
{
  if ((a3 + 1) > 3u)
  {
    return &stru_1F0F06D80;
  }

  else
  {
    return off_1E75732F0[(a3 + 1)];
  }
}

@end