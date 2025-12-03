@interface PLInternalResource
+ (BOOL)batchResetFileIDInManagedObjectContext:(id)context error:(id *)error;
+ (BOOL)deleteObsoleteResourcesInManagedObjectContext:(id)context error:(id *)error;
+ (BOOL)supportsTrashedStateForResourceIdentity:(id)identity;
+ (id)_obsoleteResourceRecipesWithCPLOff;
+ (id)insertResourceForAssetObjectID:(id)d resourceIdentity:(id)identity inManagedObjectContext:(id)context;
+ (id)listOfSyncedProperties;
+ (id)nonOriginalCPLResourceTypes;
+ (id)originalCPLResourceTypes;
+ (id)originalCPLResourceTypesForAsset;
+ (id)originalCPLResourceTypesForMaster;
+ (id)predicateForAllFullSizeResourcesLocallyAvailable;
+ (id)predicateForAllOriginalResourcesLocallyAvailable;
+ (id)predicateForImageResourcePixelsLessOrEqual:(int64_t)equal;
+ (id)predicateForOriginalsToDownload;
+ (id)predicateForPurgeableOriginalResources;
+ (id)predicateForSyndicationResourcesRequiringBackgroundDownloadImmediately:(BOOL)immediately;
+ (id)predicateForSyndicationResourcesRequiringSanitization;
+ (id)prefetchResourcePredicateForCPLResourceType:(unint64_t)type isAssetResource:(BOOL)resource maxRetry:(unint64_t)retry excludeDynamicResources:(BOOL)resources additionalResourcePredicates:(id)predicates;
+ (id)purgeablePushedPredicateForCPLResourceTypes:(id)types urgency:(int64_t)urgency;
+ (id)resourceForManagedAsset:(id)asset sharedStreamsType:(unsigned int)type managedObjectContext:(id)context error:(id *)error;
+ (signed)plTrashedStateForCPLExpungedState:(unint64_t)state;
+ (unint64_t)bytesForAllResourcesInLibrary:(id)library;
+ (unint64_t)bytesNeededToDownloadOriginalResourcesInLibrary:(id)library;
+ (unint64_t)cplExpungedStateForTrashedState:(signed __int16)state;
+ (void)resetCloudResourcesStateForCloudInManagedObjectContext:(id)context hardReset:(BOOL)reset;
+ (void)resetPrefetchStateForResourcesWithVersion:(unsigned int)version cplType:(unint64_t)type assetUuids:(id)uuids inLibrary:(id)library;
+ (void)triggerBackgroundDownloadFailureForResources:(id)resources cloudPhotoLibraryManager:(id)manager;
- (BOOL)_colorSpaceIsNativeForDisplay;
- (BOOL)copyPurgeabilityFromFileURL:(id)l;
- (BOOL)isAdjustedFullSizeRenderResource;
- (BOOL)isCPLAssetResource;
- (BOOL)isCPLMasterResource;
- (BOOL)isCPLOriginalResourceAssetHasAdjustments:(BOOL)adjustments;
- (BOOL)isEquivalentToFingerprint:(id)fingerprint andStableHash:(id)hash fingerprintContext:(id)context;
- (BOOL)isInCloud;
- (BOOL)isOriginalResource;
- (BOOL)isPlayableVideo;
- (BOOL)isSyncableChange;
- (BOOL)isValidForJournalPersistence;
- (BOOL)repairResourceValidationErrors:(id)errors managedObjectContext:(id)context;
- (BOOL)shouldPersistTrashedState;
- (BOOL)supportsTrashedState;
- (NSString)cloudUUIDForDeletion;
- (NSString)debugDescription;
- (PLAssetID)assetID;
- (PLInternalResourceSidecarRepresentation)sidecarRepresentation;
- (PLResourceDataStore)dataStore;
- (PLResourceDataStoreKey)dataStoreKey;
- (PLUniformTypeIdentifier)uniformTypeIdentifier;
- (float)scale;
- (id)_avAssetProxyIfTypeIsFullSizeOrOriginal;
- (id)_libraryID;
- (id)cplFileURL;
- (id)cplResourceForFileURL:(id)l createDirectoryIfNeeded:(BOOL)needed;
- (id)cplResourceForTimeRange:(id *)range;
- (id)cplResourceIncludeFile:(BOOL)file createDirectoryIfNeeded:(BOOL)needed;
- (id)expectedFileURL;
- (id)expungeableResourceStateRepresentation;
- (id)fileURL;
- (id)makeResourceLocallyAvailableWithOptions:(id)options completion:(id)completion;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)photosCTLDescription;
- (id)photosCTLJSONDict;
- (id)purgeIfPossibleReturningError:(id *)error;
- (id)redactedDescription;
- (id)referenceMediaFileURL;
- (id)scopedIdentifier;
- (id)singleLineDescription;
- (id)validateForAssetID:(id)d resourceIdentity:(id)identity;
- (id)validatedExternalResourceRepresentationUsingFileURL:(id)l;
- (int)qualitySortValue;
- (int64_t)orientedHeight;
- (int64_t)orientedWidth;
- (unint64_t)cplType;
- (unsigned)orientation;
- (void)_markComputeResourceAsNotLocallyAvailableIfNeeded;
- (void)applyTrashedState:(signed __int16)state;
- (void)applyTrashedState:(signed __int16)state trashedDate:(id)date;
- (void)clearRequiresSanitizationFlag;
- (void)deleteResource;
- (void)ensureInitialValuesForSyndication;
- (void)markAsNotLocallyAvailable;
- (void)markAsNotLocallyAvailableAfterPurge;
- (void)persistTrashedStateToFilesystem;
- (void)prepareForDeletion;
- (void)resetPrefetchState;
- (void)setCloudAttributesWithExternalResource:(id)resource;
- (void)setDataLength:(int64_t)length;
- (void)setFingerprint:(id)fingerprint;
- (void)setLocalAvailability:(signed __int16)availability;
- (void)setResourceIdentity:(id)identity managedObjectContext:(id)context;
- (void)setSyndicationLocalAvailabilityWithAvailable:(BOOL)available additionalFlags:(unsigned __int16)flags;
- (void)setUniformTypeIdentifier:(id)identifier;
- (void)transitional_reconsiderLocalAvailabilityBasedOnExistingLocationOfCPLResourceAtFilePath:(id)path;
- (void)willSave;
@end

@implementation PLInternalResource

- (NSString)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:0];
  asset = [(PLInternalResource *)self asset];
  uuid = [asset uuid];
  [(PLDescriptionBuilder *)v3 appendName:@"assetUUID" object:uuid];

  objectID = [(PLInternalResource *)self objectID];
  [(PLDescriptionBuilder *)v3 appendName:@"objectID" object:objectID];

  resourceType = [(PLInternalResource *)self resourceType];
  if (resourceType > 0x1F)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_1E75663B0[resourceType];
  }

  v9 = v8;
  [(PLDescriptionBuilder *)v3 appendName:@"resourceType" object:v9];

  version = [(PLInternalResource *)self version];
  if (version > 2)
  {
    v11 = @"cur";
  }

  else
  {
    v11 = off_1E75664B0[version];
  }

  v12 = v11;
  [(PLDescriptionBuilder *)v3 appendName:@"version" object:v12];

  dataStore = [(PLInternalResource *)self dataStore];
  name = [dataStore name];
  v15 = [name stringByAppendingFormat:@" (%ld)", -[PLInternalResource dataStoreClassID](self, "dataStoreClassID")];

  [(PLDescriptionBuilder *)v3 appendName:@"dataStore" object:v15];
  dataStoreSubtype = [(PLInternalResource *)self dataStoreSubtype];
  v17 = [dataStore descriptionForSubtype:dataStoreSubtype];
  v18 = [v17 stringByAppendingFormat:@" (%ld)", dataStoreSubtype];

  [(PLDescriptionBuilder *)v3 appendName:@"dataStoreSubtype" object:v18];
  if ([(PLInternalResource *)self recipeID])
  {
    v19 = [PLResourceRecipe recipeFromID:[(PLInternalResource *)self recipeID]];
    v20 = [v19 description];
    [(PLDescriptionBuilder *)v3 appendName:@"recipeID" object:v20];
  }

  dataStoreKey = [(PLInternalResource *)self dataStoreKey];

  if (dataStoreKey)
  {
    dataStoreKey2 = [(PLInternalResource *)self dataStoreKey];
    asset2 = [(PLInternalResource *)self asset];
    assetID = [asset2 assetID];
    v25 = [dataStoreKey2 descriptionForAssetID:assetID];
    [(PLDescriptionBuilder *)v3 appendName:@"dataStoreKey" object:v25];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLInternalResource dataLength](self, "dataLength")}];
  [(PLDescriptionBuilder *)v3 appendName:@"dataLength" object:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLInternalResource fileID](self, "fileID")}];
  [(PLDescriptionBuilder *)v3 appendName:@"fileID" object:v27];

  LODWORD(v27) = [(PLInternalResource *)self dataStoreClassID];
  localAvailability = [(PLInternalResource *)self localAvailability];
  if (v27 == 3)
  {
    PLSyndicationResourceLocalAvailabilityDescription(localAvailability);
  }

  else
  {
    PLResourceLocalAvailabilityName(localAvailability);
  }
  v29 = ;
  [(PLDescriptionBuilder *)v3 appendName:@"localAvailability" object:v29];

  v30 = PLResourceLocalAvailabilityTargetName([(PLInternalResource *)self localAvailabilityTarget]);
  [(PLDescriptionBuilder *)v3 appendName:@"localAvailabilityTarget" object:v30];

  remoteAvailability = [(PLInternalResource *)self remoteAvailability];
  if (remoteAvailability == 1)
  {
    v32 = @"available";
  }

  else
  {
    v32 = @"missing";
  }

  if (!remoteAvailability)
  {
    v32 = @"unavailable";
  }

  v33 = v32;
  [(PLDescriptionBuilder *)v3 appendName:@"remoteAvailability" object:v33];

  remoteAvailabilityTarget = [(PLInternalResource *)self remoteAvailabilityTarget];
  if (remoteAvailabilityTarget == 1)
  {
    v35 = @"available";
  }

  else
  {
    v35 = @"missing";
  }

  if (!remoteAvailabilityTarget)
  {
    v35 = @"unavailable";
  }

  v36 = v35;
  [(PLDescriptionBuilder *)v3 appendName:@"remoteAvailabilityTarget" object:v36];

  [(PLDescriptionBuilder *)v3 appendName:@"isDerivative" BOOLValue:[(PLInternalResource *)self isDerivative]];
  [(PLDescriptionBuilder *)v3 appendName:@"unorientedWidth" integerValue:[(PLInternalResource *)self unorientedWidth]];
  [(PLDescriptionBuilder *)v3 appendName:@"unorientedHeight" integerValue:[(PLInternalResource *)self unorientedHeight]];
  [(PLDescriptionBuilder *)v3 appendName:@"orientation" integerValue:[(PLInternalResource *)self orientation]];
  [(PLDescriptionBuilder *)v3 appendName:@"qualitySortValue" integerValue:[(PLInternalResource *)self qualitySortValue]];
  fingerprint = [(PLInternalResource *)self fingerprint];
  [(PLDescriptionBuilder *)v3 appendName:@"fingerprint" object:fingerprint];

  stableHash = [(PLInternalResource *)self stableHash];
  [(PLDescriptionBuilder *)v3 appendName:@"stableHash" object:stableHash];

  uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];
  [(PLDescriptionBuilder *)v3 appendName:@"uniformTypeIdentifier" object:identifier];

  codecFourCharCodeName = [(PLInternalResource *)self codecFourCharCodeName];
  [(PLDescriptionBuilder *)v3 appendName:@"codecFourCharCodeName" object:codecFourCharCodeName];

  sidecarIndex = [(PLInternalResource *)self sidecarIndex];
  [(PLDescriptionBuilder *)v3 appendName:@"sidecarIndex" object:sidecarIndex];

  ptpTrashedState = [(PLInternalResource *)self ptpTrashedState];
  v44 = @"trashed";
  if ((ptpTrashedState & 1) == 0)
  {
    v44 = @"untrashed";
  }

  v45 = v44;
  [(PLDescriptionBuilder *)v3 appendName:@"ptpTrashedState" object:v45];

  v46 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{-[PLInternalResource cplType](self, "cplType")}];
  [(PLDescriptionBuilder *)v3 appendName:@"cplType" object:v46];

  if ([(PLInternalResource *)self cloudLocalState])
  {
    [(PLDescriptionBuilder *)v3 appendName:@"cloudLocalState" integerValue:[(PLInternalResource *)self cloudLocalState]];
  }

  cloudMasterDateCreated = [(PLInternalResource *)self cloudMasterDateCreated];

  if (cloudMasterDateCreated)
  {
    cloudMasterDateCreated2 = [(PLInternalResource *)self cloudMasterDateCreated];
    [(PLDescriptionBuilder *)v3 appendName:@"cloudMasterDateCreated" object:cloudMasterDateCreated2];
  }

  cloudLastPrefetchDate = [(PLInternalResource *)self cloudLastPrefetchDate];
  [cloudLastPrefetchDate timeIntervalSinceReferenceDate];
  v51 = v50;

  if (v51 > 0.0)
  {
    cloudLastPrefetchDate2 = [(PLInternalResource *)self cloudLastPrefetchDate];
    [(PLDescriptionBuilder *)v3 appendName:@"cloudLastPrefetchDate" object:cloudLastPrefetchDate2];
  }

  cloudLastOnDemandDownloadDate = [(PLInternalResource *)self cloudLastOnDemandDownloadDate];

  if (cloudLastOnDemandDownloadDate)
  {
    cloudLastOnDemandDownloadDate2 = [(PLInternalResource *)self cloudLastOnDemandDownloadDate];
    [(PLDescriptionBuilder *)v3 appendName:@"cloudLastOnDemandDownloadDate" object:cloudLastOnDemandDownloadDate2];
  }

  uniformTypeIdentifier2 = [(PLInternalResource *)self uniformTypeIdentifier];
  conformsToMovie = [uniformTypeIdentifier2 conformsToMovie];

  if (conformsToMovie)
  {
    dataStore2 = [(PLInternalResource *)self dataStore];
    v58 = [dataStore2 videoResource:self matchesOrExceedsQualityLevel:0];

    if (v58)
    {
      v59 = @"high";
    }

    else
    {
      dataStore3 = [(PLInternalResource *)self dataStore];
      v61 = [dataStore3 videoResource:self matchesOrExceedsQualityLevel:1];

      if (v61)
      {
        v59 = @"large";
      }

      else
      {
        dataStore4 = [(PLInternalResource *)self dataStore];
        v63 = [dataStore4 videoResource:self matchesOrExceedsQualityLevel:2];

        if (v63)
        {
          v59 = @"med";
        }

        else
        {
          dataStore5 = [(PLInternalResource *)self dataStore];
          v65 = [dataStore5 videoResource:self matchesOrExceedsQualityLevel:3];

          if (v65)
          {
            v59 = @"low";
          }

          else
          {
            v59 = @"none";
          }
        }
      }
    }

    [(PLDescriptionBuilder *)v3 appendName:@"video-quality-level" object:v59];
  }

  if ([(PLInternalResource *)self trashedState])
  {
    [(PLDescriptionBuilder *)v3 appendName:@"trashedState" integerValue:[(PLInternalResource *)self trashedState]];
    trashedDate = [(PLInternalResource *)self trashedDate];
    [(PLDescriptionBuilder *)v3 appendName:@"trashedDate" object:trashedDate];
  }

  build = [(PLDescriptionBuilder *)v3 build];

  return build;
}

- (id)redactedDescription
{
  objectID = [(PLInternalResource *)self objectID];
  v3 = [objectID description];

  return v3;
}

- (id)singleLineDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  asset = [(PLInternalResource *)self asset];
  uuid = [asset uuid];
  [v6 appendFormat:@" assetUUID: %@", uuid];

  resourceType = [(PLInternalResource *)self resourceType];
  if (resourceType > 0x1F)
  {
    v10 = @"invalid";
  }

  else
  {
    v10 = off_1E75663B0[resourceType];
  }

  v11 = v10;
  [v6 appendFormat:@" type: %@", v11];

  v12 = [PLResourceRecipe recipeFromID:[(PLInternalResource *)self recipeID]];
  v13 = [v12 description];
  [v6 appendFormat:@" recipeID: %@", v13];

  version = [(PLInternalResource *)self version];
  if (version > 2)
  {
    v15 = @"cur";
  }

  else
  {
    v15 = off_1E75664B0[version];
  }

  v16 = v15;
  [v6 appendFormat:@" ver: %@", v16];

  dataStore = [(PLInternalResource *)self dataStore];
  v18 = [dataStore descriptionForSubtype:{-[PLInternalResource dataStoreSubtype](self, "dataStoreSubtype")}];
  [v6 appendFormat:@" subtype: %@", v18];

  [v6 appendFormat:@" size: (%ld, %ld)", -[PLInternalResource unorientedWidth](self, "unorientedWidth"), -[PLInternalResource unorientedHeight](self, "unorientedHeight")];
  uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];
  [v6 appendFormat:@" uti: %@", identifier];

  localAvailability = [(PLInternalResource *)self localAvailability];
  v22 = @"N";
  if (localAvailability == 1)
  {
    v22 = @"Y";
  }

  [v6 appendFormat:@" local: %@", v22];
  dataStoreKey = [(PLInternalResource *)self dataStoreKey];
  asset2 = [(PLInternalResource *)self asset];
  assetID = [asset2 assetID];
  v26 = [dataStoreKey fileURLForAssetID:assetID];

  if (v26)
  {
    v27 = [MEMORY[0x1E69BF238] redactedDescriptionForFileURL:v26];
    [v6 appendFormat:@" url: %@", v27];
  }

  return v6;
}

- (id)photosCTLJSONDict
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  codecFourCharCodeName = [(PLInternalResource *)self codecFourCharCodeName];

  if (codecFourCharCodeName)
  {
    codecFourCharCodeName2 = [(PLInternalResource *)self codecFourCharCodeName];
  }

  else
  {
    codecFourCharCodeName2 = @"none";
  }

  uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
  v7 = uniformTypeIdentifier;
  if (uniformTypeIdentifier)
  {
    identifier = [uniformTypeIdentifier identifier];
  }

  else
  {
    identifier = @"none";
  }

  objectID = [(PLInternalResource *)self objectID];
  v10 = [objectID description];
  [v3 setObject:v10 forKeyedSubscript:@"objectID"];

  asset = [(PLInternalResource *)self asset];

  if (asset)
  {
    asset2 = [(PLInternalResource *)self asset];
    uuid = [asset2 uuid];
    [v3 setObject:uuid forKeyedSubscript:@"asset"];
  }

  [v3 setObject:identifier forKeyedSubscript:@"uti"];
  v14 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLInternalResource dataStoreClassID](self, "dataStoreClassID")}];
  [v3 setObject:v14 forKeyedSubscript:@"store"];

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLInternalResource dataStoreSubtype](self, "dataStoreSubtype")}];
  [v3 setObject:v15 forKeyedSubscript:@"subtype"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLInternalResource version](self, "version")}];
  [v3 setObject:v16 forKeyedSubscript:@"version"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLInternalResource recipeID](self, "recipeID")}];
  [v3 setObject:v17 forKeyedSubscript:@"recipe"];

  [v3 setObject:codecFourCharCodeName2 forKeyedSubscript:@"codec"];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLInternalResource orientation](self, "orientation")}];
  [v3 setObject:v18 forKeyedSubscript:@"orientation"];

  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLInternalResource unorientedWidth](self, "unorientedWidth")}];
  [v3 setObject:v19 forKeyedSubscript:@"unorientedWidth"];

  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLInternalResource unorientedHeight](self, "unorientedHeight")}];
  [v3 setObject:v20 forKeyedSubscript:@"unorientedHeight"];

  v21 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLInternalResource localAvailability](self, "localAvailability")}];
  [v3 setObject:v21 forKeyedSubscript:@"localAvailability"];

  v22 = [MEMORY[0x1E696AD98] numberWithShort:{-[PLInternalResource remoteAvailability](self, "remoteAvailability")}];
  [v3 setObject:v22 forKeyedSubscript:@"remoteAvailability"];

  dataStoreKey = [(PLInternalResource *)self dataStoreKey];
  asset3 = [(PLInternalResource *)self asset];
  assetID = [asset3 assetID];
  v26 = [dataStoreKey descriptionForAssetID:assetID];
  [v3 setObject:v26 forKeyedSubscript:@"dataStoreKey"];

  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLInternalResource ptpTrashedState](self, "ptpTrashedState")}];
  [v3 setObject:v27 forKeyedSubscript:@"ptpTrashedState"];

  sidecarIndex = [(PLInternalResource *)self sidecarIndex];

  if (sidecarIndex)
  {
    sidecarIndex2 = [(PLInternalResource *)self sidecarIndex];
    [v3 setObject:sidecarIndex2 forKeyedSubscript:@"sidecarIndex"];
  }

  return v3;
}

- (id)photosCTLDescription
{
  asset = [(PLInternalResource *)self asset];
  uuid = [asset uuid];

  localAvailability = [(PLInternalResource *)self localAvailability];
  v5 = @"NO";
  if (localAvailability >= 0)
  {
    v5 = @"YES";
  }

  v29 = v5;
  dataStoreSubtype = [(PLInternalResource *)self dataStoreSubtype];
  orientation = [(PLInternalResource *)self orientation];
  unorientedWidth = [(PLInternalResource *)self unorientedWidth];
  unorientedHeight = [(PLInternalResource *)self unorientedHeight];
  v8 = [PLResourceRecipe recipeFromID:[(PLInternalResource *)self recipeID]];
  v28 = v8;
  if (v8)
  {
    v27 = [v8 description];
  }

  else
  {
    v27 = @"none";
  }

  codecFourCharCodeName = [(PLInternalResource *)self codecFourCharCodeName];

  if (codecFourCharCodeName)
  {
    codecFourCharCodeName2 = [(PLInternalResource *)self codecFourCharCodeName];
  }

  else
  {
    codecFourCharCodeName2 = @"none";
  }

  uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
  v11 = uniformTypeIdentifier;
  if (uniformTypeIdentifier)
  {
    identifier = [uniformTypeIdentifier identifier];
  }

  else
  {
    identifier = @"none";
  }

  dataStoreKey = [(PLInternalResource *)self dataStoreKey];
  assetID = [(PLInternalResource *)self assetID];
  v15 = [dataStoreKey descriptionForAssetID:assetID];

  v16 = MEMORY[0x1E696AEC0];
  dataStoreClassID = [(PLInternalResource *)self dataStoreClassID];
  version = [(PLInternalResource *)self version];
  if (version > 2)
  {
    v19 = @"cur";
  }

  else
  {
    v19 = off_1E75664B0[version];
  }

  v20 = dataStoreClassID;
  v21 = v19;
  v22 = [v16 stringWithFormat:@"asset: %@, store: %ld, subtype: %ld, version: %@, recipe: %@, uti: %@, codec: %@, orient: %d, size: (%ld, %ld), l-avail: %@, qual: %ld, key: %@", uuid, v20, dataStoreSubtype, v21, v27, identifier, codecFourCharCodeName2, orientation, unorientedWidth, unorientedHeight, v29, -[PLInternalResource qualitySortValue](self, "qualitySortValue"), v15];

  return v22;
}

- (int)qualitySortValue
{
  asset = [(PLInternalResource *)self asset];
  [asset unorientedSize];
  v5 = v4;
  v7 = v6;

  compactUTI = [(PLInternalResource *)self compactUTI];
  v9 = [PLUniformTypeIdentifier utiWithCompactRepresentation:compactUTI conformanceHint:[(PLInternalResource *)self utiConformanceHint]];

  isLosslessEncoding = [v9 isLosslessEncoding];
  v11 = PLIsResourceMarkedFullSizeFromRecipeID([(PLInternalResource *)self recipeID]);
  unorientedWidth = [(PLInternalResource *)self unorientedWidth];
  unorientedHeight = [(PLInternalResource *)self unorientedHeight];
  v14 = isLosslessEncoding | 2;
  if (!v11)
  {
    v14 = isLosslessEncoding;
  }

  v15 = v14 | ((fmin(sqrt((unorientedHeight * unorientedWidth)) / sqrt((v7 * v5)), 1.0) * 32767.0) << 16);

  return v15;
}

- (id)makeResourceLocallyAvailableWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dataStore = [(PLInternalResource *)self dataStore];

  if (!dataStore)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInternalResource.m" lineNumber:1043 description:{@"Invalid parameter not satisfying: %@", @"self.dataStore"}];
  }

  dataStore2 = [(PLInternalResource *)self dataStore];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PLInternalResource_makeResourceLocallyAvailableWithOptions_completion___block_invoke;
  v15[3] = &unk_1E7565778;
  v16 = completionCopy;
  v17 = a2;
  v15[4] = self;
  v11 = completionCopy;
  v12 = [dataStore2 requestLocalAvailabilityChange:1 forResource:self options:optionsCopy completion:v15];

  return v12;
}

void __73__PLInternalResource_makeResourceLocallyAvailableWithOptions_completion___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = v6;
  if (v10)
  {
    v8 = *(a1[5] + 16);
  }

  else
  {
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a1[6] object:a1[4] file:@"PLInternalResource.m" lineNumber:1047 description:{@"Invalid parameter not satisfying: %@", @"fileURL != nil"}];
    }

    v8 = *(a1[5] + 16);
  }

  v8();
}

- (id)purgeIfPossibleReturningError:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  fileURL = [(PLInternalResource *)self fileURL];
  v6 = fileURL;
  if (!fileURL)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v36 = *MEMORY[0x1E696A278];
    v37 = @"Resource has no file URL (unavailable)";
    v18 = MEMORY[0x1E695DF20];
    v19 = &v37;
    v20 = &v36;
    goto LABEL_27;
  }

  path = [fileURL path];
  v35 = 0;
  v8 = [PLCacheDeleteSupport isPurgeableFile:path outIsPhotoType:0 outUrgencyLevel:0 error:&v35];
  v9 = v35;

  if (!v8)
  {
    if (v9)
    {
      if ((PLIsErrorFileNotFound() & 1) == 0)
      {
        v21 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = PLResourceIdentityShortDescription(self);
          *buf = 138543874;
          v39 = v22;
          v40 = 2112;
          v41 = v6;
          v42 = 2112;
          v43 = v9;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Unable check purgeable flags requesting make unavailable on resource: %{public}@ with URL: %@, error: %@", buf, 0x20u);
        }
      }

LABEL_28:
      v15 = 0;
      if (!error)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v27 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = PLResourceIdentityShortDescription(self);
      *buf = 138543618;
      v39 = v28;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Non-derivative resource is not marked as purgeable on purgeability check, resource: %{public}@, URL: %@", buf, 0x16u);
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v44 = *MEMORY[0x1E696A278];
    v45[0] = @"Purgeable flags not set on resource";
    v18 = MEMORY[0x1E695DF20];
    v19 = v45;
    v20 = &v44;
LABEL_27:
    v29 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v9 = [v16 errorWithDomain:v17 code:47019 userInfo:v29];

    goto LABEL_28;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v34 = v9;
  v11 = [defaultManager removeItemAtURL:v6 error:&v34];
  v12 = v34;

  if (v11)
  {
    v13 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PLResourceIdentityShortDescription(self);
      *buf = 138543618;
      v39 = v14;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Resource purged via explicit purge request: %{public}@, URL %@", buf, 0x16u);
    }

    [(PLInternalResource *)self markAsNotLocallyAvailableAfterPurge];
    v15 = 1;
  }

  else
  {
    if ((PLIsErrorFileNotFound() & 1) == 0)
    {
      v23 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = PLResourceIdentityShortDescription(self);
        *buf = 138543874;
        v39 = v24;
        v40 = 2112;
        v41 = v6;
        v42 = 2112;
        v43 = v12;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to remove file for resource: %{public}@, URL: %@, error: %@", buf, 0x20u);
      }
    }

    if (PLIsErrorFileNotFound())
    {
      v25 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = PLResourceIdentityShortDescription(self);
        *buf = 138543618;
        v39 = v26;
        v40 = 2112;
        v41 = v6;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Resource was marked as locally available but file missing from disk, marking as not locally available, resource: %{public}@, URL: %@", buf, 0x16u);
      }

      [(PLInternalResource *)self markAsNotLocallyAvailable];
    }

    v15 = 0;
  }

  v9 = v12;
  if (error)
  {
LABEL_29:
    v30 = v9;
    *error = v9;
  }

LABEL_30:
  if (v15)
  {
    v31 = v6;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  return v31;
}

- (void)deleteResource
{
  managedObjectContext = [(PLInternalResource *)self managedObjectContext];

  if (!managedObjectContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInternalResource.m" lineNumber:907 description:@"deleteResource requires a managedObjectContext."];
  }

  managedObjectContext2 = [(PLInternalResource *)self managedObjectContext];
  [managedObjectContext2 deleteObject:self];

  [(PLInternalResource *)self setAsset:0];
}

- (void)markAsNotLocallyAvailableAfterPurge
{
  [(PLInternalResource *)self markAsNotLocallyAvailable];
  v3 = [MEMORY[0x1E695DF00] now];
  [(PLInternalResource *)self setCloudPrunedAt:v3];
}

- (void)markAsNotLocallyAvailable
{
  localAvailability = [(PLInternalResource *)self localAvailability];
  dataStoreKey = [(PLInternalResource *)self dataStoreKey];
  if ([(PLInternalResource *)self dataStoreClassID]== 3)
  {
    [(PLInternalResource *)self setSyndicationLocalAvailabilityWithAvailable:0];
  }

  else
  {
    [(PLInternalResource *)self setLocalAvailability:0xFFFFFFFFLL];
  }

  [(PLInternalResource *)self setDataStoreKeyData:0];
  [(PLInternalResource *)self setFileID:-1];
  [(PLInternalResource *)self _markComputeResourceAsNotLocallyAvailableIfNeeded];
  if ((localAvailability & 0x80000000) == 0)
  {
    asset = [(PLInternalResource *)self asset];
    if (asset)
    {
      v5 = asset;
      asset2 = [(PLInternalResource *)self asset];
      isDeleted = [asset2 isDeleted];

      if ((isDeleted & 1) == 0)
      {
        asset3 = [(PLInternalResource *)self asset];
        [asset3 recalculateImageRequestHintsForResource:self afterLocalAvailabilityChangeFrom:localAvailability previousDataStoreKey:dataStoreKey];
      }
    }
  }
}

- (void)_markComputeResourceAsNotLocallyAvailableIfNeeded
{
  if ([(PLInternalResource *)self resourceType]== 14)
  {
    v3 = [(PLInternalResource *)self recipeID]- 327695;
    if (v3 <= 6 && ((1 << v3) & 0x55) != 0)
    {
      asset = [(PLInternalResource *)self asset];
      if (asset)
      {
        v5 = asset;
        asset2 = [(PLInternalResource *)self asset];
        isDeleted = [asset2 isDeleted];

        if ((isDeleted & 1) == 0)
        {
          asset3 = [(PLInternalResource *)self asset];
          additionalAttributes = [asset3 additionalAttributes];
          [additionalAttributes resetNonSyncViewPresentation];
        }
      }
    }
  }
}

- (BOOL)isAdjustedFullSizeRenderResource
{
  if ([(PLInternalResource *)self version]!= 2)
  {
    return 0;
  }

  if ([(PLInternalResource *)self cplType]== 2 || [(PLInternalResource *)self cplType]== 16)
  {
    return 1;
  }

  return [(PLInternalResource *)self cplType]== 19;
}

- (id)expectedFileURL
{
  dataStore = [(PLInternalResource *)self dataStore];
  asset = [(PLInternalResource *)self asset];
  v5 = [dataStore expectedFileURLForResource:self asset:asset];

  return v5;
}

- (id)fileURL
{
  asset = [(PLInternalResource *)self asset];
  assetID = [asset assetID];

  if (assetID)
  {
    dataStoreKey = [(PLInternalResource *)self dataStoreKey];
    v6 = [dataStoreKey fileURLForAssetID:assetID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setResourceIdentity:(id)identity managedObjectContext:(id)context
{
  identityCopy = identity;
  -[PLInternalResource setResourceType:](self, "setResourceType:", [identityCopy resourceType]);
  -[PLInternalResource setVersion:](self, "setVersion:", [identityCopy version]);
  -[PLInternalResource setRecipeID:](self, "setRecipeID:", [identityCopy recipeID]);
  uniformTypeIdentifier = [identityCopy uniformTypeIdentifier];

  [(PLInternalResource *)self setUniformTypeIdentifier:uniformTypeIdentifier];
}

- (BOOL)repairResourceValidationErrors:(id)errors managedObjectContext:(id)context
{
  v100[1] = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v6 = +[PLResourceModelValidationError allPossibleErrorCodes];
  if (![errorsCopy count])
  {
    v7 = v6;

    errorsCopy = v7;
  }

  v8 = [errorsCopy mutableCopy];
  if (![v8 count])
  {
    v77 = 0;
    goto LABEL_73;
  }

  v81 = v6;
  v82 = errorsCopy;
  v84 = 0;
  *&v9 = 138543618;
  v79 = v9;
  do
  {
    anyObject = [v8 anyObject];
    integerValue = [anyObject integerValue];
    if (integerValue == 1 || integerValue == 3)
    {
      asset = [(PLInternalResource *)self asset];

      if (!asset)
      {
        v19 = PLImageManagerGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          objectID = [(PLInternalResource *)self objectID];
          *buf = 138543362;
          v92 = objectID;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[RM]: Repair: Unable to repair resource with objectID: %{public}@, no asset is set.", buf, 0xCu);
        }

        goto LABEL_66;
      }

      fileURL = [(PLInternalResource *)self fileURL];
      v15 = [(PLInternalResource *)self validatedExternalResourceRepresentationUsingFileURL:fileURL];

      asset2 = [(PLInternalResource *)self asset];
      master = [asset2 master];

      if (master)
      {
        isCPLResource = [(PLInternalResource *)self isCPLResource];
        v19 = MEMORY[0x1E695E0F0];
        if (!isCPLResource)
        {
          goto LABEL_33;
        }

        asset3 = [(PLInternalResource *)self asset];
        asset4 = [asset3 pathForCPLResourceType:-[PLInternalResource cplType](self adjusted:{"cplType"), -[PLInternalResource isAdjustedResource](self, "isAdjustedResource")}];

        if (asset4)
        {
          v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:asset4 isDirectory:0];
          [v15 setFileURL:v22];
        }

        else
        {
          [v15 setFileURL:0];
        }

        v100[0] = v15;
        v31 = MEMORY[0x1E695DEC8];
        v32 = v100;
      }

      else
      {
        if ([(PLInternalResource *)self dataStoreClassID]!= 3)
        {
          asset4 = [(PLInternalResource *)self asset];
          v34 = [PLResourceInstaller externalResourcesForExistingAsset:asset4 referencedResourceURLs:0];
LABEL_32:
          v19 = v34;

LABEL_33:
          v35 = MEMORY[0x1E696AE18];
          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 3221225472;
          v89[2] = __74__PLInternalResource_repairResourceValidationErrors_managedObjectContext___block_invoke;
          v89[3] = &unk_1E7565750;
          v36 = v15;
          v90 = v36;
          v37 = [v35 predicateWithBlock:v89];
          v38 = [v19 filteredArrayUsingPredicate:v37];
          firstObject = [v38 firstObject];

          if (firstObject)
          {
            v85 = v36;
            v40 = [v36 isEqualToValidatedExternalResource:firstObject];
            if ([(PLInternalResource *)self isLocallyAvailable])
            {
              defaultManager = [MEMORY[0x1E696AC08] defaultManager];
              buf[0] = 0;
              [firstObject fileURL];
              v42 = v8;
              selfCopy = self;
              v44 = v19;
              v46 = v45 = firstObject;
              path = [v46 path];
              v48 = [defaultManager fileExistsAtPath:path isDirectory:buf];
              v49 = v48 | buf[0];

              firstObject = v45;
              v19 = v44;
              self = selfCopy;
              v8 = v42;
            }

            else
            {
              v49 = 1;
            }

            v61 = v40 & v49;
            v62 = PLImageManagerGetLog();
            v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
            if (v61)
            {
              v36 = v85;
              if (v63)
              {
                objectID2 = [(PLInternalResource *)self objectID];
                *buf = 138543362;
                v92 = objectID2;
                _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "[RM]: Repair: Unable to repair resource with objectID: %{public}@, could not produce any changes vs stored resource.", buf, 0xCu);
              }
            }

            else
            {
              v36 = v85;
              if (v63)
              {
                objectID3 = [(PLInternalResource *)self objectID];
                *buf = 138544130;
                v92 = objectID3;
                v93 = 2114;
                v94 = v82;
                v95 = 2112;
                v96 = firstObject;
                v97 = 2112;
                selfCopy2 = self;
                _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "[RM]: Repair: Storing corrections to objectID: %{public}@ for error codes: %{public}@, using external resource: %@, on target resource: %@.", buf, 0x2Au);
              }

              dataStore = [(PLInternalResource *)self dataStore];
              asset5 = [(PLInternalResource *)self asset];
              v87 = 0;
              v88 = 0;
              v68 = firstObject;
              v69 = [dataStore storeExternalResource:firstObject forAsset:asset5 options:0 error:&v88 resultingResource:&v87];
              v70 = v88;
              v83 = v87;

              if (v69)
              {
                v84 = 1;
              }

              else
              {
                v71 = PLImageManagerGetLog();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  objectID4 = [(PLInternalResource *)self objectID];
                  code = [v70 code];
                  domain = [v70 domain];
                  *buf = 138544130;
                  v92 = objectID4;
                  v93 = 2112;
                  v94 = v70;
                  v95 = 2048;
                  v96 = code;
                  v97 = 2114;
                  selfCopy2 = domain;
                  _os_log_impl(&dword_19BF1F000, v71, OS_LOG_TYPE_ERROR, "[RM]: Repair: Unable to repair resource with objectID: %{public}@, cannot store changes. error: %@, code: %ld, domain: %{public}@", buf, 0x2Au);
                }
              }

              firstObject = v68;
            }

            goto LABEL_65;
          }

          fileURL2 = [(PLInternalResource *)self fileURL];

          if (fileURL2)
          {
            v86 = 0;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            fileURL3 = [(PLInternalResource *)self fileURL];
            path2 = [fileURL3 path];
            v54 = [defaultManager2 fileExistsAtPath:path2 isDirectory:&v86];

            if (!v54)
            {
              v55 = PLImageManagerGetLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                fileURL4 = [(PLInternalResource *)self fileURL];
                path3 = [fileURL4 path];
                objectID5 = [(PLInternalResource *)self objectID];
                *buf = 138412802;
                v92 = path3;
                v93 = 2114;
                v94 = objectID5;
                v95 = 2114;
                v96 = v82;
                v59 = v55;
                v60 = "[RM]: Repair: File not locally available at path: '%@' for resource objectID: %{public}@ for error codes: %{public}@, marking as not locally available.";
                goto LABEL_58;
              }

LABEL_59:
              firstObject = 0;

              [(PLInternalResource *)self markAsNotLocallyAvailable];
              goto LABEL_60;
            }

            if (v86 == 1)
            {
              v55 = PLImageManagerGetLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                fileURL4 = [(PLInternalResource *)self fileURL];
                path3 = [fileURL4 path];
                objectID5 = [(PLInternalResource *)self objectID];
                *buf = 138412802;
                v92 = path3;
                v93 = 2114;
                v94 = objectID5;
                v95 = 2114;
                v96 = v82;
                v59 = v55;
                v60 = "[RM]: Repair: Unexpectedly found directory at resource path: '%@' for resource objectID: %{public}@ for error codes: %{public}@, marking as not locally available.";
LABEL_58:
                _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, v60, buf, 0x20u);

                goto LABEL_59;
              }

              goto LABEL_59;
            }

            firstObject = 0;
            if (v84)
            {
              goto LABEL_60;
            }
          }

          else if (v84)
          {
LABEL_60:
            v84 = 1;
LABEL_65:

LABEL_66:
            [v8 removeObject:&unk_1F0FBABA0];
            [v8 removeObject:&unk_1F0FBABB8];
            goto LABEL_67;
          }

          v74 = PLImageManagerGetLog();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            objectID6 = [(PLInternalResource *)self objectID];
            *buf = v79;
            v92 = objectID6;
            v93 = 2114;
            v94 = v82;
            _os_log_impl(&dword_19BF1F000, v74, OS_LOG_TYPE_DEFAULT, "[RM]: Repair: Cannot find external resource match to correct for resource objectID: %{public}@ for error codes: %{public}@, no corrections made.", buf, 0x16u);
          }

          v84 = 0;
          goto LABEL_65;
        }

        asset6 = [(PLInternalResource *)self asset];
        resourceType = [(PLInternalResource *)self resourceType];
        version = [(PLInternalResource *)self version];
        recipeID = [(PLInternalResource *)self recipeID];
        uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
        identifier = [uniformTypeIdentifier identifier];
        asset4 = [asset6 syndicationResourceURLForResourceType:resourceType version:version recipeID:recipeID utiString:identifier error:0];

        if (asset4)
        {
          [v15 setFileURL:asset4];
        }

        v99 = v15;
        v31 = MEMORY[0x1E695DEC8];
        v32 = &v99;
      }

      v34 = [v31 arrayWithObjects:v32 count:1];
      goto LABEL_32;
    }

    if (integerValue == 5)
    {
      if (([(PLInternalResource *)self localAvailability]& 0x80000000) != 0 && ([(PLInternalResource *)self dataStoreKeyData], v33 = objc_claimAutoreleasedReturnValue(), v33, v33))
      {
        v84 = 1;
        [(PLInternalResource *)self setLocalAvailability:1];
      }

      else if ([(PLInternalResource *)self isLocallyAvailable])
      {
        dataStoreKeyData = [(PLInternalResource *)self dataStoreKeyData];

        if (!dataStoreKeyData)
        {
          [(PLInternalResource *)self setLocalAvailability:0xFFFFFFFFLL];
          v84 = 1;
        }
      }
    }

LABEL_67:
    [v8 removeObject:anyObject];
  }

  while ([v8 count]);
  if (v84)
  {
    asset7 = [(PLInternalResource *)self asset];
    [asset7 recalculateImageRequestHints];

    v77 = 1;
  }

  else
  {
    v77 = 0;
  }

  errorsCopy = v82;
  v6 = v81;
LABEL_73:

  return v77;
}

- (id)validatedExternalResourceRepresentationUsingFileURL:(id)l
{
  lCopy = l;
  if ([(PLInternalResource *)self isCPLResource])
  {
    v5 = [[PLValidatedExternalCloudResource alloc] initWithInternalResource:self];
  }

  else
  {
    v5 = objc_alloc_init(PLValidatedExternalResource);
  }

  v6 = v5;
  [(PLValidatedExternalResource *)v5 setVersion:[(PLInternalResource *)self version]];
  [(PLValidatedExternalResource *)v6 setResourceType:[(PLInternalResource *)self resourceType]];
  [(PLValidatedExternalResource *)v6 setRecipeID:[(PLInternalResource *)self recipeID]];
  uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
  [(PLValidatedExternalResource *)v6 setUniformTypeIdentifier:uniformTypeIdentifier];

  [(PLValidatedExternalResource *)v6 setFileURL:lCopy];
  [(PLValidatedExternalResource *)v6 setDataLength:[(PLInternalResource *)self dataLength]];
  [(PLValidatedExternalResource *)v6 setUnorientedWidth:[(PLInternalResource *)self unorientedWidth]];
  [(PLValidatedExternalResource *)v6 setUnorientedHeight:[(PLInternalResource *)self unorientedHeight]];
  codecFourCharCodeName = [(PLInternalResource *)self codecFourCharCodeName];
  [(PLValidatedExternalResource *)v6 setCodecFourCharCode:codecFourCharCodeName];

  [(PLValidatedExternalResource *)v6 setPtpTrashedState:[(PLInternalResource *)self ptpTrashedState]];
  sidecarIndex = [(PLInternalResource *)self sidecarIndex];
  [(PLValidatedExternalResource *)v6 setSidecarIndex:sidecarIndex];

  [(PLValidatedExternalResource *)v6 setTrashedState:[(PLInternalResource *)self trashedState]];
  trashedDate = [(PLInternalResource *)self trashedDate];
  [(PLValidatedExternalResource *)v6 setTrashedDate:trashedDate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
    [(PLValidatedExternalCloudResource *)v11 setCplType:[(PLInternalResource *)self cplType]];
    [(PLValidatedExternalCloudResource *)v11 setRemoteAvailability:[(PLInternalResource *)self remoteAvailability]];
  }

  return v6;
}

- (PLInternalResourceSidecarRepresentation)sidecarRepresentation
{
  sidecarRepresentation = self->_sidecarRepresentation;
  if (!sidecarRepresentation)
  {
    v4 = [[PLInternalResourceSidecarRepresentation alloc] initWithResource:self];
    v5 = self->_sidecarRepresentation;
    self->_sidecarRepresentation = v4;

    sidecarRepresentation = self->_sidecarRepresentation;
  }

  return sidecarRepresentation;
}

- (BOOL)isInCloud
{
  dataStoreClassID = [(PLInternalResource *)self dataStoreClassID];
  if ((dataStoreClassID - 2) >= 2)
  {
    if (dataStoreClassID)
    {
      return 0;
    }

    dataStore = [(PLInternalResource *)self dataStore];
    if ([dataStore dataStoreSubtypeIsDownloadable:{-[PLInternalResource dataStoreSubtype](self, "dataStoreSubtype")}])
    {
      fingerprint = [(PLInternalResource *)self fingerprint];
      v5 = fingerprint != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    dataStore = [(PLInternalResource *)self dataStore];
    v5 = [dataStore dataStoreSubtypeIsDownloadable:{-[PLInternalResource dataStoreSubtype](self, "dataStoreSubtype")}];
  }

  return v5;
}

- (void)setLocalAvailability:(signed __int16)availability
{
  availabilityCopy = availability;
  [(PLInternalResource *)self willAccessValueForKey:@"localAvailability"];
  v5 = [(PLInternalResource *)self primitiveValueForKey:@"localAvailability"];
  shortValue = [v5 shortValue];

  [(PLInternalResource *)self didAccessValueForKey:@"localAvailability"];
  if (shortValue != availabilityCopy)
  {
    [(PLInternalResource *)self willChangeValueForKey:@"localAvailability"];
    v7 = [MEMORY[0x1E696AD98] numberWithShort:availabilityCopy];
    [(PLInternalResource *)self setPrimitiveValue:v7 forKey:@"localAvailability"];

    [(PLInternalResource *)self didChangeValueForKey:@"localAvailability"];
    if (([(PLInternalResource *)self isDeleted]& 1) == 0)
    {
      asset = [(PLInternalResource *)self asset];

      if (asset)
      {
        if (availabilityCopy >= 1 && shortValue < 0)
        {
          asset2 = [(PLInternalResource *)self asset];
          [asset2 reconsiderLocalAvailabilityTargetsForResourceGeneratableByAvailabilityWorker];
        }
      }
    }
  }
}

- (BOOL)isPlayableVideo
{
  if (!-[PLInternalResource isLocallyAvailable](self, "isLocallyAvailable") || (v3 = objc_alloc(MEMORY[0x1E69C0718]), -[PLInternalResource fileURL](self, "fileURL"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v3 initWithAVURL:v4 options:12 timeZoneLookup:0], v4, !v5) || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(v5, "isPlayable")), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    if (-[PLInternalResource resourceType](self, "resourceType") != 1 || (v7 = objc_alloc(MEMORY[0x1E69C0718]), -[PLInternalResource _avAssetProxyIfTypeIsFullSizeOrOriginal](self, "_avAssetProxyIfTypeIsFullSizeOrOriginal"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 initWithAVAsset:v8 options:12 timeZoneLookup:0], v8, !v9) || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend(v9, "isPlayable")), v6 = objc_claimAutoreleasedReturnValue(), v9, !v6))
    {
      codecFourCharCodeName = [(PLInternalResource *)self codecFourCharCodeName];

      if (!codecFourCharCodeName || (v11 = MEMORY[0x1E696AD98], -[PLInternalResource codecFourCharCodeName](self, "codecFourCharCodeName"), v12 = objc_claimAutoreleasedReturnValue(), [v11 numberWithBool:{+[PLCodec isPlayableFourCharCodecName:](PLCodec, "isPlayableFourCharCodecName:", v12)}], v6 = objc_claimAutoreleasedReturnValue(), v12, !v6))
      {
        uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
        isPlayableVideo = [uniformTypeIdentifier isPlayableVideo];

        v6 = [MEMORY[0x1E696AD98] numberWithBool:isPlayableVideo];
      }
    }
  }

  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (float)scale
{
  asset = [(PLInternalResource *)self asset];
  [asset unorientedSize];
  v5 = v4;
  v7 = v6;

  v8 = v5 * v7;
  result = 0.0;
  if (v8 > 0.0)
  {
    unorientedWidth = [(PLInternalResource *)self unorientedWidth];
    unorientedHeight = [(PLInternalResource *)self unorientedHeight];
    v12 = v8;
    return (unorientedHeight * unorientedWidth) / v12;
  }

  return result;
}

- (int64_t)orientedHeight
{
  unorientedWidth = [(PLInternalResource *)self unorientedWidth];
  unorientedHeight = [(PLInternalResource *)self unorientedHeight];
  if ([(PLInternalResource *)self orientation]- 5 >= 4)
  {
    v5 = unorientedHeight;
  }

  else
  {
    v5 = unorientedWidth;
  }

  return v5;
}

- (int64_t)orientedWidth
{
  unorientedWidth = [(PLInternalResource *)self unorientedWidth];
  unorientedHeight = [(PLInternalResource *)self unorientedHeight];
  if ([(PLInternalResource *)self orientation]- 5 >= 4)
  {
    v5 = unorientedWidth;
  }

  else
  {
    v5 = unorientedHeight;
  }

  return v5;
}

- (unsigned)orientation
{
  resourceType = [(PLInternalResource *)self resourceType];
  recipeID = [(PLInternalResource *)self recipeID];
  version = [(PLInternalResource *)self version];
  asset = [(PLInternalResource *)self asset];
  orientation = [asset orientation];
  asset2 = [(PLInternalResource *)self asset];
  originalOrientation = [asset2 originalOrientation];
  asset3 = [(PLInternalResource *)self asset];
  v11 = PLResourceOrientationFromResourceInfo(resourceType, recipeID, version, orientation, originalOrientation, [asset3 hasAdjustments]);

  return v11;
}

- (PLAssetID)assetID
{
  asset = [(PLInternalResource *)self asset];
  assetID = [asset assetID];

  return assetID;
}

- (PLResourceDataStoreKey)dataStoreKey
{
  dataStoreKeyData = [(PLInternalResource *)self dataStoreKeyData];
  v4 = dataStoreKeyData;
  if (dataStoreKeyData)
  {
    bytes = [dataStoreKeyData bytes];
    dataStore = [(PLInternalResource *)self dataStore];
    v7 = [dataStore keyFromKeyStruct:bytes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PLResourceDataStore)dataStore
{
  dataStoreClassID = [(PLInternalResource *)self dataStoreClassID];
  _libraryID = [(PLInternalResource *)self _libraryID];
  v5 = PLDataStoreForClassIDAndLibraryID(dataStoreClassID, _libraryID);

  return v5;
}

- (BOOL)isOriginalResource
{
  selfCopy = self;
  if ([(PLInternalResource *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLInternalResource *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (void)setFingerprint:(id)fingerprint
{
  v10 = *MEMORY[0x1E69E9840];
  fingerprintCopy = fingerprint;
  [(PLInternalResource *)self willAccessValueForKey:@"fingerprint"];
  v5 = [(PLInternalResource *)self primitiveValueForKey:@"fingerprint"];
  [(PLInternalResource *)self didAccessValueForKey:@"fingerprint"];
  if (([v5 isEqualToString:fingerprintCopy] & 1) == 0)
  {
    if (!fingerprintCopy && v5)
    {
      v6 = PLImageManagerGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(PLInternalResource *)self objectID];
        v8 = 138412290;
        v9 = objectID;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Erasing existing fingerprint on resource: %@", &v8, 0xCu);
      }
    }

    [(PLInternalResource *)self willChangeValueForKey:@"fingerprint"];
    [(PLInternalResource *)self setPrimitiveValue:fingerprintCopy forKey:@"fingerprint"];
    [(PLInternalResource *)self didChangeValueForKey:@"fingerprint"];
  }
}

- (void)setUniformTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
  v5 = [uniformTypeIdentifier isEqualToUniformTypeIdentifier:identifierCopy];

  v6 = identifierCopy;
  if ((v5 & 1) == 0)
  {
    if (identifierCopy)
    {
      compactRepresentation = [identifierCopy compactRepresentation];
      [(PLInternalResource *)self setCompactUTI:compactRepresentation];

      conformanceHint = [identifierCopy conformanceHint];
    }

    else
    {
      [(PLInternalResource *)self setCompactUTI:0];
      conformanceHint = 0;
    }

    [(PLInternalResource *)self setUtiConformanceHint:conformanceHint];
    v6 = identifierCopy;
  }
}

- (PLUniformTypeIdentifier)uniformTypeIdentifier
{
  compactUTI = [(PLInternalResource *)self compactUTI];

  if (compactUTI)
  {
    compactUTI2 = [(PLInternalResource *)self compactUTI];
    v5 = [PLUniformTypeIdentifier utiWithCompactRepresentation:compactUTI2 conformanceHint:[(PLInternalResource *)self utiConformanceHint]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)validateForAssetID:(id)d resourceIdentity:(id)identity
{
  dCopy = d;
  dataStoreKeyData = [(PLInternalResource *)self dataStoreKeyData];

  if ([(PLInternalResource *)self isLocallyAvailable]&& !dataStoreKeyData || (v7 = [(PLInternalResource *)self localAvailability], v8 = MEMORY[0x1E695E0F0], v7 < 0) && dataStoreKeyData)
  {
    v9 = [PLResourceModelValidationError localAvailabilityInconsistencyErrorForResource:self];
    v8 = [MEMORY[0x1E695E0F0] arrayByAddingObject:v9];
  }

  if (![(PLInternalResource *)self dataStoreClassID]&& ![(PLInternalResource *)self isCPLResource]&& ![(PLInternalResource *)self isDerivative]&& ([(PLInternalResource *)self localAvailability]& 0x80000000) != 0)
  {
    v10 = [PLResourceModelValidationError unexpectedLocalResourceError:self];
    v11 = [v8 arrayByAddingObject:v10];

    v8 = v11;
  }

  dataStoreKey = [(PLInternalResource *)self dataStoreKey];
  v13 = [dataStoreKey validateForAssetID:dCopy resourceIdentity:self];

  v14 = [v8 arrayByAddingObjectsFromArray:v13];

  return v14;
}

- (NSString)cloudUUIDForDeletion
{
  cloudDeleteAssetUUIDWithResourceType = [(PLInternalResource *)self cloudDeleteAssetUUIDWithResourceType];

  if (!cloudDeleteAssetUUIDWithResourceType)
  {
    v4 = MEMORY[0x1E696AEC0];
    asset = [(PLInternalResource *)self asset];
    uuid = [asset uuid];
    v7 = [v4 stringWithFormat:@"%@%s%tu", uuid, "-@-", -[PLInternalResource cplType](self, "cplType")];

    [(PLInternalResource *)self setCloudDeleteAssetUUIDWithResourceType:v7];
  }

  return [(PLInternalResource *)self cloudDeleteAssetUUIDWithResourceType];
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLInternalResource;
  [(PLManagedObject *)&v10 willSave];
  managedObjectContext = [(PLInternalResource *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PLInternalResource *)self isDeleted]& 1) == 0)
  {
    if ([(PLInternalResource *)self isInserted])
    {
      [(PLInternalResource *)self persistTrashedStateToFilesystem];
    }

    else if ([(PLInternalResource *)self shouldPersistTrashedState])
    {
      fileURL = [(PLInternalResource *)self fileURL];
      if (fileURL)
      {
        changedValues = [(PLInternalResource *)self changedValues];
        v6 = [changedValues objectForKeyedSubscript:@"trashedState"];

        if (v6)
        {
          v7 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:fileURL];
          isTrashedOrExpunged = [(PLInternalResource *)self isTrashedOrExpunged];
          v9 = *MEMORY[0x1E69BFE58];
          if (isTrashedOrExpunged)
          {
            [v7 setUInt16:1 forKey:v9];
          }

          else
          {
            [v7 setData:0 forKey:v9];
          }

          [v7 persist];
        }
      }
    }
  }
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = PLInternalResource;
  [(PLInternalResource *)&v6 prepareForDeletion];
  asset = [(PLInternalResource *)self asset];

  if (asset)
  {
    [(PLInternalResource *)self markAsNotLocallyAvailable];
    cloudUUIDForDeletion = [(PLInternalResource *)self cloudUUIDForDeletion];
    [(PLInternalResource *)self setCloudDeleteAssetUUIDWithResourceType:cloudUUIDForDeletion];
  }

  managedObjectContext = [(PLInternalResource *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0 && -[PLInternalResource supportsTrashedState](self, "supportsTrashedState"))
  {
    [managedObjectContext recordCloudDeletionForObject:self];
  }
}

- (void)persistTrashedStateToFilesystem
{
  if ([(PLInternalResource *)self shouldPersistTrashedState])
  {
    fileURL = [(PLInternalResource *)self fileURL];
    isTrashedOrExpunged = [(PLInternalResource *)self isTrashedOrExpunged];
    v4 = fileURL;
    if (fileURL && isTrashedOrExpunged)
    {
      v5 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:fileURL];
      [v5 setUInt16:1 forKey:*MEMORY[0x1E69BFE58]];
      [v5 persist];

      v4 = fileURL;
    }
  }
}

- (BOOL)shouldPersistTrashedState
{
  if (![(PLInternalResource *)self supportsTrashedState])
  {
    return 0;
  }

  fileSystemBookmark = [(PLInternalResource *)self fileSystemBookmark];
  v4 = fileSystemBookmark == 0;

  return v4;
}

- (void)applyTrashedState:(signed __int16)state trashedDate:(id)date
{
  stateCopy = state;
  v28 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (![(PLInternalResource *)self supportsTrashedState])
  {
    asset = PLBackendGetLog();
    if (os_log_type_enabled(asset, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v27 = stateCopy;
      *&v27[4] = 2048;
      *&v27[6] = [(PLInternalResource *)self dataStoreSubtype];
      _os_log_impl(&dword_19BF1F000, asset, OS_LOG_TYPE_INFO, "Unexpected resource type for trash state: %d, with CPL resource type: %lld, ignoring", buf, 0x12u);
    }

    goto LABEL_30;
  }

  asset = [(PLInternalResource *)self asset];
  if (stateCopy == 2)
  {
    if ([(PLInternalResource *)self trashedState]== 1)
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(PLInternalResource *)self objectID];
        asset2 = [(PLInternalResource *)self asset];
        uuid = [asset2 uuid];
        *buf = 138543618;
        *v27 = objectID;
        *&v27[8] = 2114;
        *&v27[10] = uuid;
        v17 = "Expunging already trashed resource %{public}@ on asset %{public}@";
LABEL_20:
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
      }
    }

    else
    {
      if ([(PLInternalResource *)self trashedState])
      {
        goto LABEL_22;
      }

      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(PLInternalResource *)self objectID];
        asset2 = [(PLInternalResource *)self asset];
        uuid = [asset2 uuid];
        *buf = 138543618;
        *v27 = objectID;
        *&v27[8] = 2114;
        *&v27[10] = uuid;
        v17 = "Expunging resource, skipping trash state on resource %{public}@ on asset %{public}@";
        goto LABEL_20;
      }
    }

LABEL_22:
    [(PLInternalResource *)self setTrashedState:2];
    fileURL = [(PLInternalResource *)self fileURL];
    [(PLInternalResource *)self deleteResource];
    if (!fileURL)
    {
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        objectID2 = [(PLInternalResource *)self objectID];
        asset3 = [(PLInternalResource *)self asset];
        uuid2 = [asset3 uuid];
        *buf = 138543618;
        *v27 = objectID2;
        *&v27[8] = 2114;
        *&v27[10] = uuid2;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Cannot delete resource file for resource: %{public}@ on asset: %{public}@ because fileURL is nil.", buf, 0x16u);
      }

      goto LABEL_28;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v25 = 0;
    v19 = [defaultManager removeItemAtURL:fileURL error:&v25];
    v20 = v25;
    if ((v19 & 1) == 0)
    {
      v24 = PLIsErrorFileNotFound();

      if (v24)
      {
        goto LABEL_28;
      }

      defaultManager = PLBackendGetLog();
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v27 = fileURL;
        *&v27[8] = 2112;
        *&v27[10] = v20;
        _os_log_impl(&dword_19BF1F000, defaultManager, OS_LOG_TYPE_ERROR, "Cannot delete resource file: %@, %@", buf, 0x16u);
      }
    }

LABEL_28:
    [asset reevaluateCameraProcessingAdjustmentState];
    goto LABEL_29;
  }

  if (stateCopy == 1)
  {
    if (![(PLInternalResource *)self trashedState])
    {
      [(PLInternalResource *)self setTrashedState:1];
      [(PLInternalResource *)self setTrashedDate:dateCopy];
      fileURL = PLBackendGetLog();
      if (os_log_type_enabled(fileURL, OS_LOG_TYPE_DEFAULT))
      {
        objectID3 = [(PLInternalResource *)self objectID];
        asset4 = [(PLInternalResource *)self asset];
        uuid3 = [asset4 uuid];
        *buf = 138543618;
        *v27 = objectID3;
        *&v27[8] = 2114;
        *&v27[10] = uuid3;
        v12 = "Trashed resource %{public}@ on asset %{public}@";
        goto LABEL_13;
      }

LABEL_29:
    }
  }

  else if (!stateCopy && [(PLInternalResource *)self trashedState]== 1)
  {
    [(PLInternalResource *)self setTrashedState:0];
    [(PLInternalResource *)self setTrashedDate:0];
    fileURL = PLBackendGetLog();
    if (os_log_type_enabled(fileURL, OS_LOG_TYPE_DEFAULT))
    {
      objectID3 = [(PLInternalResource *)self objectID];
      asset4 = [(PLInternalResource *)self asset];
      uuid3 = [asset4 uuid];
      *buf = 138543618;
      *v27 = objectID3;
      *&v27[8] = 2114;
      *&v27[10] = uuid3;
      v12 = "Untrashed resource %{public}@ on asset %{public}@";
LABEL_13:
      _os_log_impl(&dword_19BF1F000, fileURL, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)applyTrashedState:(signed __int16)state
{
  stateCopy = state;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
  [(PLInternalResource *)self applyTrashedState:stateCopy trashedDate:v5];
}

- (BOOL)supportsTrashedState
{
  v3 = objc_opt_class();

  return [v3 supportsTrashedStateForResourceIdentity:self];
}

- (BOOL)isSyncableChange
{
  v14 = *MEMORY[0x1E69E9840];
  changedValues = [(PLInternalResource *)self changedValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[PLInternalResource listOfSyncedProperties];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [changedValues objectForKey:*(*(&v9 + 1) + 8 * i)];

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_avAssetProxyIfTypeIsFullSizeOrOriginal
{
  cplType = [(PLInternalResource *)self cplType];
  if (cplType == 16)
  {
    asset = [(PLInternalResource *)self asset];
    hasAdjustments = [asset hasAdjustments];

    if (hasAdjustments)
    {
      asset2 = [(PLInternalResource *)self asset];
      v5 = [asset2 avAssetProxyForFullSizeAllowReadFromFile:0];
      goto LABEL_6;
    }
  }

  else if (cplType == 1)
  {
    asset2 = [(PLInternalResource *)self asset];
    v5 = [asset2 avAssetProxyForOriginalAllowReadFromFile:0];
LABEL_6:
    v8 = v5;

    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)_colorSpaceIsNativeForDisplay
{
  isDerivative = [(PLInternalResource *)self isDerivative];
  if (isDerivative)
  {
    v4 = [PLResourceRecipe recipeFromID:[(PLInternalResource *)self recipeID]];
    colorSpaceIsNativeForDisplay = [v4 colorSpaceIsNativeForDisplay];

    LOBYTE(isDerivative) = colorSpaceIsNativeForDisplay;
  }

  return isDerivative;
}

- (id)_libraryID
{
  managedObjectContext = [(PLInternalResource *)self managedObjectContext];
  pathManager = [managedObjectContext pathManager];

  if (!pathManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInternalResource.m" lineNumber:140 description:@"Unexpected nil pathManager on managed object context."];
  }

  v6 = PLLibraryIDFromPathManager();

  return v6;
}

+ (BOOL)batchResetFileIDInManagedObjectContext:(id)context error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D560];
  contextCopy = context;
  v8 = [v6 alloc];
  entityName = [self entityName];
  v10 = [v8 initWithEntityName:entityName];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %lld", @"fileID", -1];
  [v10 setPredicate:v11];
  [v10 setResultType:2];
  v22 = @"fileID";
  v23[0] = &unk_1F0FBAC30;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  [v10 setPropertiesToUpdate:v12];

  v19 = 0;
  v13 = [contextCopy executeRequest:v10 error:&v19];

  v14 = v19;
  if (v14)
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_9;
    }

    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to batch reset fileID for internal resources: %@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_9;
    }

    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      result = [v13 result];
      *buf = 138412290;
      v21 = result;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Batch reset fileID for %@ internal resources", buf, 0xCu);
    }
  }

LABEL_9:
  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  return v14 == 0;
}

+ (BOOL)deleteObsoleteResourcesInManagedObjectContext:(id)context error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  fetchRequest = [self fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  _obsoleteResourceRecipesWithCPLOff = [self _obsoleteResourceRecipesWithCPLOff];
  v10 = [v8 predicateWithFormat:@"%K in %@ AND %K == %d", @"recipeID", _obsoleteResourceRecipesWithCPLOff, @"dataStoreClassID", 0];

  [fetchRequest setPredicate:v10];
  v21 = 0;
  v11 = [contextCopy executeFetchRequest:fetchRequest error:&v21];
  v12 = v21;
  v13 = PLBackendGetLog();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 count];
      _obsoleteResourceRecipesWithCPLOff2 = [self _obsoleteResourceRecipesWithCPLOff];
      *buf = 134218242;
      v23 = v15;
      v24 = 2112;
      v25 = _obsoleteResourceRecipesWithCPLOff2;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Deleting obsolete resources, deleting %ld resources with the following recipe IDs: %@", buf, 0x16u);
    }

    v17 = 1;
    v18 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v11 shouldRefreshAfterSave:1 withBlock:&__block_literal_global_111];

    if (!v18)
    {
      v12 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "+[PLInternalResource deleteObsoleteResourcesInManagedObjectContext:error:]";
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "%s: Error saving resource deletes: %@", buf, 0x16u);
    }

    v12 = v18;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "+[PLInternalResource deleteObsoleteResourcesInManagedObjectContext:error:]";
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "%s: Error fetching resources: %@", buf, 0x16u);
  }

  v17 = 0;
  if (error)
  {
LABEL_11:
    v19 = v12;
    *error = v12;
  }

LABEL_12:

  return v17;
}

void __74__PLInternalResource_deleteObsoleteResourcesInManagedObjectContext_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 fileURL];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = PLIsErrorFileNotFound();

      if (v7)
      {
        goto LABEL_6;
      }

      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v3;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Could not delete obsolete resource at URL: %@", buf, 0xCu);
      }
    }

LABEL_6:
    [v2 deleteResource];

    goto LABEL_7;
  }

  [v2 deleteResource];
LABEL_7:
}

+ (id)_obsoleteResourceRecipesWithCPLOff
{
  if (_obsoleteResourceRecipesWithCPLOff_onceToken != -1)
  {
    dispatch_once(&_obsoleteResourceRecipesWithCPLOff_onceToken, &__block_literal_global_3853);
  }

  v3 = _obsoleteResourceRecipesWithCPLOff_recipes;

  return v3;
}

void __56__PLInternalResource__obsoleteResourceRecipesWithCPLOff__block_invoke()
{
  v0 = _obsoleteResourceRecipesWithCPLOff_recipes;
  _obsoleteResourceRecipesWithCPLOff_recipes = &unk_1F0FBF328;
}

+ (id)insertResourceForAssetObjectID:(id)d resourceIdentity:(id)identity inManagedObjectContext:(id)context
{
  dCopy = d;
  identityCopy = identity;
  contextCopy = context;
  if (dCopy)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInternalResource.m" lineNumber:596 description:{@"Invalid parameter not satisfying: %@", @"assetObjectID"}];

    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLInternalResource.m" lineNumber:597 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

LABEL_3:
  v12 = [self insertInManagedObjectContext:contextCopy];
  v13 = [contextCopy objectWithID:dCopy];
  [v12 setAsset:v13];
  [v12 setResourceIdentity:identityCopy managedObjectContext:contextCopy];

  return v12;
}

+ (BOOL)supportsTrashedStateForResourceIdentity:(id)identity
{
  identityCopy = identity;
  v4 = ([identityCopy resourceType] & 0xFFFFFFFE) == 0xA && objc_msgSend(identityCopy, "version") == 0;

  return v4;
}

+ (id)listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = listOfSyncedProperties_result;

  return v2;
}

void __44__PLInternalResource_listOfSyncedProperties__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"trashedDate", @"trashedState", 0}];
  v1 = listOfSyncedProperties_result;
  listOfSyncedProperties_result = v0;
}

- (void)clearRequiresSanitizationFlag
{
  v3 = [(PLInternalResource *)self localAvailability]& 0xFFFFFFFDLL;

  [(PLInternalResource *)self setLocalAvailability:v3];
}

- (void)setSyndicationLocalAvailabilityWithAvailable:(BOOL)available additionalFlags:(unsigned __int16)flags
{
  availableCopy = available;
  v13 = *MEMORY[0x1E69E9840];
  localAvailability = [(PLInternalResource *)self localAvailability];
  if (availableCopy)
  {
    v8 = ((localAvailability | flags) & 0x7FF8) + 1;
  }

  else
  {
    v8 = (localAvailability | flags) & 0x7FFE | 0xFFFF8000;
  }

  if (localAvailability != v8)
  {
    [(PLInternalResource *)self setLocalAvailability:v8];
    v9 = PLSyndicationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = PLSyndicationResourceLocalAvailabilityDescription(v8);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "[resource] setting syndication local availability to %@", &v11, 0xCu);
    }
  }
}

- (void)ensureInitialValuesForSyndication
{
  [(PLInternalResource *)self setDataStoreClassID:3];
  resourceType = [(PLInternalResource *)self resourceType];
  recipeID = [(PLInternalResource *)self recipeID];
  v5 = 18;
  if (recipeID)
  {
    v5 = 0;
  }

  v6 = recipeID == 0;
  v7 = 4 * (recipeID == 65741);
  if (!recipeID)
  {
    v7 = 1;
  }

  if (resourceType)
  {
    v7 = 0;
  }

  if (resourceType != 1)
  {
    v6 = v7;
  }

  if (resourceType == 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  [(PLInternalResource *)self setDataStoreSubtype:v8];

  [(PLInternalResource *)self setLocalAvailability:4294934528];
}

+ (id)predicateForSyndicationResourcesRequiringBackgroundDownloadImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v17[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  date = [MEMORY[0x1E695DF00] date];
  v6 = date;
  if (immediatelyCopy)
  {
    v7 = @"%K < %@";
  }

  else
  {
    v7 = @"%K >= %@";
  }

  v8 = [v4 predicateWithFormat:v7, @"cloudLastPrefetchDate", date];

  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 3];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreSubtype", 4, v10];
  v17[1] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %d", @"localAvailability", 1];
  v17[2] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"cloudPrunedAt"];
  v17[3] = v13;
  v17[4] = v8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v15 = [v9 andPredicateWithSubpredicates:v14];

  return v15;
}

+ (id)predicateForSyndicationResourcesRequiringSanitization
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 3];
  v8[0] = v3;
  4294934530 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"localAvailability", 4294934530];
  v8[1] = 4294934530;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)referenceMediaFileURL
{
  dataStoreKey = [(PLInternalResource *)self dataStoreKey];
  if (dataStoreKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = dataStoreKey;
    asset = [(PLInternalResource *)self asset];
    assetID = [asset assetID];
    managedObjectContext = [(PLInternalResource *)self managedObjectContext];
    v8 = [v4 fileURLForAssetID:assetID inContext:managedObjectContext];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEquivalentToFingerprint:(id)fingerprint andStableHash:(id)hash fingerprintContext:(id)context
{
  fingerprintCopy = fingerprint;
  hashCopy = hash;
  contextCopy = context;
  fingerprint = [(PLInternalResource *)self fingerprint];

  if (!fingerprint)
  {
    v14 = 0;
    goto LABEL_14;
  }

  fingerprint2 = [(PLInternalResource *)self fingerprint];
  v13 = [fingerprint2 isEqualToString:fingerprintCopy];

  if ((v13 & 1) == 0)
  {
    fingerprint3 = [(PLInternalResource *)self fingerprint];
    v16 = [contextCopy fingerprintSchemeForFingerprint:fingerprint3];

    v17 = [contextCopy fingerprintSchemeForFingerprint:fingerprintCopy];
    if ([v16 isCompatibleWithFingerprintScheme:v17])
    {
      v14 = 0;
LABEL_13:

      goto LABEL_14;
    }

    if (hashCopy)
    {
      fingerprint4 = [(PLInternalResource *)self fingerprint];
      stableHash = hashCopy;
      v20 = fingerprint4;
    }

    else
    {
      stableHash = [(PLInternalResource *)self stableHash];
      if (!stableHash)
      {
        fileURL = [(PLInternalResource *)self fileURL];
        if (fileURL)
        {
          v23 = [v17 fingerPrintForFileAtURL:fileURL error:0];
          v14 = [v23 isEqualToString:fingerprintCopy];
        }

        else
        {
          v14 = 0;
        }

        fingerprint4 = 0;
        goto LABEL_12;
      }

      fingerprint4 = stableHash;
      v20 = fingerprintCopy;
    }

    v14 = [stableHash isEqualToString:v20];
LABEL_12:

    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:

  return v14;
}

- (id)scopedIdentifier
{
  asset = [(PLInternalResource *)self asset];
  if ([(PLInternalResource *)self isCPLMasterResource])
  {
    master = [asset master];
    scopedIdentifier = [master scopedIdentifier];
  }

  else if (asset)
  {
    scopedIdentifier = [asset scopedIdentifier];
  }

  else
  {
    scopedIdentifier = 0;
  }

  return scopedIdentifier;
}

- (void)setDataLength:(int64_t)length
{
  if (length)
  {
    [(PLInternalResource *)self managedObjectOriginal_setDataLength:?];
  }
}

- (BOOL)copyPurgeabilityFromFileURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v17 = -1;
  path = [lCopy path];
  v6 = [PLCacheDeleteSupport isPurgeableFile:path outIsPhotoType:0 outUrgencyLevel:&v17 error:0];

  v7 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [lCopy path];
      *buf = 67109378;
      *v19 = v6;
      *&v19[4] = 2112;
      *&v19[6] = path2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "source file purgeable:%d at %@", buf, 0x12u);
    }
  }

  if (v6)
  {
    v16 = 0;
    cplFileURL = [(PLInternalResource *)self cplFileURL];
    v11 = [PLCacheDeleteSupport markPurgeableForFileAtURL:cplFileURL withUrgency:v17 outInode:&v16];

    if (v11)
    {
      [(PLInternalResource *)self setFileID:v16];
      if ((*v7 & 1) == 0)
      {
        v12 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          fileURL = [(PLInternalResource *)self fileURL];
          path3 = [fileURL path];
          *buf = 138412546;
          *v19 = path3;
          *&v19[8] = 2048;
          *&v19[10] = v16;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "updated purgeable file at %@ to inode %lld", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (void)resetPrefetchState
{
  if ([(PLInternalResource *)self cloudPrefetchCount])
  {
    [(PLInternalResource *)self setCloudPrefetchCount:0];
  }

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  cloudLastPrefetchDate = [(PLInternalResource *)self cloudLastPrefetchDate];
  v4 = [cloudLastPrefetchDate isEqualToDate:v6];

  if ((v4 & 1) == 0)
  {
    [(PLInternalResource *)self setCloudLastPrefetchDate:v6];
  }

  cloudPrunedAt = [(PLInternalResource *)self cloudPrunedAt];

  if (cloudPrunedAt)
  {
    [(PLInternalResource *)self setCloudPrunedAt:0];
  }
}

- (id)cplFileURL
{
  fileURL = [(PLInternalResource *)self fileURL];
  if (!fileURL)
  {
    if ([(PLInternalResource *)self isCPLResource])
    {
      asset = [(PLInternalResource *)self asset];
      v5 = [asset pathForCPLResourceType:-[PLInternalResource dataStoreSubtype](self adjusted:{"dataStoreSubtype"), -[PLInternalResource isAdjustedResource](self, "isAdjustedResource")}];

      if (v5)
      {
        fileURL = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
      }

      else
      {
        fileURL = 0;
      }
    }

    else
    {
      fileURL = 0;
    }
  }

  return fileURL;
}

- (void)transitional_reconsiderLocalAvailabilityBasedOnExistingLocationOfCPLResourceAtFilePath:(id)path
{
  pathCopy = path;
  if (![(PLInternalResource *)self dataStoreClassID])
  {
    asset = [(PLInternalResource *)self asset];

    if (asset)
    {
      localAvailability = [(PLInternalResource *)self localAvailability];
      dataStoreKey = [(PLInternalResource *)self dataStoreKey];
      dataStore = [(PLInternalResource *)self dataStore];
      [dataStore transitional_reconsiderLocalAvailabilityBasedOnExistingLocationOfCPLResource:self givenFilePath:pathCopy];
      localAvailability2 = [(PLInternalResource *)self localAvailability];
      if ((localAvailability & 0x80000000) != 0)
      {
        if (localAvailability2 < 0)
        {
          goto LABEL_9;
        }
      }

      else if ((localAvailability2 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      asset2 = [(PLInternalResource *)self asset];
      [asset2 recalculateImageRequestHintsForResource:self afterLocalAvailabilityChangeFrom:localAvailability previousDataStoreKey:dataStoreKey];

LABEL_8:
      if (localAvailability > 0)
      {
LABEL_11:

        goto LABEL_12;
      }

LABEL_9:
      if ([(PLInternalResource *)self isLocallyAvailable])
      {
        [(PLInternalResource *)self persistTrashedStateToFilesystem];
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (id)cplResourceForFileURL:(id)l createDirectoryIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([(PLInternalResource *)self isCPLResource])
  {
    fingerprint = [(PLInternalResource *)self fingerprint];

    if (fingerprint)
    {
      if (lCopy && neededCopy)
      {
        uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
        path = [uRLByDeletingLastPathComponent path];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v24 = 0;
        v11 = [defaultManager createDirectoryIfNeededAtPath:path error:&v24];
        v12 = v24;

        if ((v11 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v13 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            singleLineDescription = [(PLInternalResource *)self singleLineDescription];
            *buf = 138412546;
            v26 = singleLineDescription;
            v27 = 2112;
            v28 = v12;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to create directory for resource %@: %@.", buf, 0x16u);
          }
        }
      }

      v15 = [objc_alloc(MEMORY[0x1E6994B98]) initWithFileURL:lCopy];
      [v15 setFileSize:[(PLInternalResource *)self dataLength]];
      [v15 setImageDimensions:[(PLInternalResource *)self unorientedWidth], [(PLInternalResource *)self unorientedHeight]];
      [v15 setAvailable:[(PLInternalResource *)self remoteAvailability]== 1];
      uniformTypeIdentifier = [(PLInternalResource *)self uniformTypeIdentifier];
      identifier = [uniformTypeIdentifier identifier];
      [v15 setFileUTI:identifier];

      fingerprint2 = [(PLInternalResource *)self fingerprint];
      [v15 setFingerPrint:fingerprint2];

      stableHash = [(PLInternalResource *)self stableHash];
      [v15 setStableHash:stableHash];

      scopedIdentifier = [(PLInternalResource *)self scopedIdentifier];
      v21 = [objc_alloc(MEMORY[0x1E6994B90]) initWithResourceIdentity:v15 itemScopedIdentifier:scopedIdentifier resourceType:{-[PLInternalResource dataStoreSubtype](self, "dataStoreSubtype")}];

LABEL_16:
      goto LABEL_18;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v15 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        singleLineDescription2 = [(PLInternalResource *)self singleLineDescription];
        *buf = 138412290;
        v26 = singleLineDescription2;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Resource %@ has no fingerprint", buf, 0xCu);
      }

      v21 = 0;
      goto LABEL_16;
    }
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (id)cplResourceIncludeFile:(BOOL)file createDirectoryIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if (file)
  {
    cplFileURL = [(PLInternalResource *)self cplFileURL];
  }

  else
  {
    cplFileURL = 0;
  }

  v7 = [(PLInternalResource *)self cplResourceForFileURL:cplFileURL createDirectoryIfNeeded:neededCopy];

  return v7;
}

- (id)cplResourceForTimeRange:(id *)range
{
  pathManager = [(PLManagedObject *)self pathManager];
  fingerprint = [(PLInternalResource *)self fingerprint];
  asset = [(PLInternalResource *)self asset];
  uuid = [asset uuid];
  v9 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v9;
  v13[2] = *&range->var1.var1;
  v10 = [pathManager URLForPartialVideoWithResourceFingerprint:fingerprint assetUUID:uuid timeRange:v13];

  v11 = [(PLInternalResource *)self cplResourceForFileURL:v10 createDirectoryIfNeeded:1];

  return v11;
}

- (id)expungeableResourceStateRepresentation
{
  if ([(PLInternalResource *)self supportsTrashedState])
  {
    v3 = objc_alloc_init(MEMORY[0x1E6994AB8]);
    [v3 setResourceType:{-[PLInternalResource cplType](self, "cplType")}];
    [v3 setExpungedState:{+[PLInternalResource cplExpungedStateForTrashedState:](PLInternalResource, "cplExpungedStateForTrashedState:", -[PLInternalResource trashedState](self, "trashedState"))}];
    trashedDate = [(PLInternalResource *)self trashedDate];
    [v3 setExpungedDate:trashedDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCPLOriginalResourceAssetHasAdjustments:(BOOL)adjustments
{
  adjustmentsCopy = adjustments;
  isCPLMasterResource = [(PLInternalResource *)self isCPLMasterResource];
  if (isCPLMasterResource)
  {
    originalCPLResourceTypesForMaster = [objc_opt_class() originalCPLResourceTypesForMaster];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLInternalResource cplType](self, "cplType")}];
    if ([originalCPLResourceTypesForMaster containsObject:v4])
    {
      v8 = 1;
      goto LABEL_9;
    }
  }

  if (!adjustmentsCopy || ![(PLInternalResource *)self isCPLAssetResource])
  {
    v8 = 0;
    result = 0;
    if (!isCPLMasterResource)
    {
      return result;
    }

    goto LABEL_9;
  }

  originalCPLResourceTypesForAsset = [objc_opt_class() originalCPLResourceTypesForAsset];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLInternalResource cplType](self, "cplType")}];
  v8 = [originalCPLResourceTypesForAsset containsObject:v10];

  result = v8;
  if (isCPLMasterResource)
  {
LABEL_9:

    return v8;
  }

  return result;
}

- (BOOL)isCPLAssetResource
{
  isAdjustedResource = [(PLInternalResource *)self isAdjustedResource];
  if (isAdjustedResource)
  {

    LOBYTE(isAdjustedResource) = [(PLInternalResource *)self isCPLResource];
  }

  return isAdjustedResource;
}

- (BOOL)isCPLMasterResource
{
  if ([(PLInternalResource *)self version])
  {
    return 0;
  }

  return [(PLInternalResource *)self isCPLResource];
}

- (unint64_t)cplType
{
  if ([(PLInternalResource *)self dataStoreClassID])
  {
    return 0;
  }

  return [(PLInternalResource *)self dataStoreSubtype];
}

- (void)setCloudAttributesWithExternalResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy cloudLocalState])
  {
    -[PLInternalResource setCloudLocalState:](self, "setCloudLocalState:", [resourceCopy cloudLocalState]);
  }

  masterDateCreated = [resourceCopy masterDateCreated];

  if (masterDateCreated)
  {
    masterDateCreated2 = [resourceCopy masterDateCreated];
    [(PLInternalResource *)self setCloudMasterDateCreated:masterDateCreated2];
  }

  if ([resourceCopy prefetchCount] >= 1)
  {
    -[PLInternalResource setCloudPrefetchCount:](self, "setCloudPrefetchCount:", [resourceCopy prefetchCount]);
  }

  prunedAt = [resourceCopy prunedAt];

  if (prunedAt)
  {
    prunedAt2 = [resourceCopy prunedAt];
    [(PLInternalResource *)self setCloudPrunedAt:prunedAt2];
  }

  lastOnDemandDownloadDate = [resourceCopy lastOnDemandDownloadDate];

  if (lastOnDemandDownloadDate)
  {
    lastOnDemandDownloadDate2 = [resourceCopy lastOnDemandDownloadDate];
    [(PLInternalResource *)self setCloudLastOnDemandDownloadDate:lastOnDemandDownloadDate2];
  }

  lastPrefetchDate = [resourceCopy lastPrefetchDate];

  if (lastPrefetchDate)
  {
    lastPrefetchDate2 = [resourceCopy lastPrefetchDate];
    [(PLInternalResource *)self setCloudLastPrefetchDate:lastPrefetchDate2];
  }

  if ([resourceCopy sourceCplType])
  {
    -[PLInternalResource setCloudSourceType:](self, "setCloudSourceType:", [resourceCopy sourceCplType]);
  }

  fingerprint = [resourceCopy fingerprint];

  if (fingerprint)
  {
    fingerprint2 = [resourceCopy fingerprint];
    [(PLInternalResource *)self setFingerprint:fingerprint2];

    stableHash = [resourceCopy stableHash];
    [(PLInternalResource *)self setStableHash:stableHash];
  }
}

+ (void)triggerBackgroundDownloadFailureForResources:(id)resources cloudPhotoLibraryManager:(id)manager
{
  v25 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  managerCopy = manager;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [resourcesCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    v11 = MEMORY[0x1E6994D48];
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if ((*v11 & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            singleLineDescription = [v13 singleLineDescription];
            *buf = v17;
            v23 = singleLineDescription;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Triggering failure for resource %@ download, detecting change/delete", buf, 0xCu);
          }
        }

        v16 = [v13 cplResourceIncludeFile:{0, v17}];
        [managerCopy libraryManager:0 backgroundDownloadDidFailForResource:v16];

        ++v12;
      }

      while (v9 != v12);
      v9 = [resourcesCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }
}

+ (id)purgeablePushedPredicateForCPLResourceTypes:(id)types urgency:(int64_t)urgency
{
  v20[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  typesCopy = types;
  v7 = [v5 predicateWithFormat:@"%K > %@ AND %K >= %@ AND fingerprint != NULL", @"localAvailability", &unk_1F0FBD4C8, @"remoteAvailability", &unk_1F0FBD4E0];
  typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K in %@", @"dataStoreClassID", 0, @"dataStoreSubtype", typesCopy];

  if (urgency)
  {
    v9 = MEMORY[0x1E696AB28];
    v19[0] = v7;
    v19[1] = typesCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v10 = [date dateByAddingTimeInterval:-86400.0];

    date2 = [MEMORY[0x1E695DF00] date];
    v14 = [date2 dateByAddingTimeInterval:-259200.0];

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dateCreated <= %@ AND cloudLastOnDemandDownloadDate <= %@", v10, v14];
    v16 = MEMORY[0x1E696AB28];
    v20[0] = v7;
    v20[1] = typesCopy;
    v20[2] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v11 = [v16 andPredicateWithSubpredicates:v17];
  }

  return v11;
}

+ (id)predicateForPurgeableOriginalResources
{
  v2 = MEMORY[0x1E696AE18];
  originalCPLResourceTypes = [self originalCPLResourceTypes];
  v4 = [v2 predicateWithFormat:@"dataStoreClassID == %d AND dataStoreSubtype IN %@ AND localAvailability == %d AND remoteAvailability == %d", 0, originalCPLResourceTypes, 1, 1];

  return v4;
}

+ (id)predicateForOriginalsToDownload
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %ul AND %K <= %d AND %K >= %d AND %K == %d", @"dataStoreClassID", 0, @"dataStoreSubtype", 1, @"localAvailability", 0xFFFFFFFFLL, @"remoteAvailability", 1, @"asset.trashedState", 0];
  v9[0] = v3;
  v4 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:"maskForMomentSharedAsset") keyPathPrefix:{1, @"asset"}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:"maskForCollectionShareAsset") keyPathPrefix:{1, @"asset"}];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v2 andPredicateWithSubpredicates:v6];

  return v7;
}

+ (id)predicateForImageResourcePixelsLessOrEqual:(int64_t)equal
{
  v11[4] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v5 = *MEMORY[0x1E69874A0];
  v11[0] = identifier;
  v11[1] = v5;
  v6 = *MEMORY[0x1E6987470];
  v11[2] = *MEMORY[0x1E69874A8];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v8 = [PLUniformTypeIdentifierIntegratedLookup compactRepresentationsForIdentifiers:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"unorientedWidth * unorientedHeight <= %d AND compactUTI IN %@", equal, v8];

  return v9;
}

+ (id)prefetchResourcePredicateForCPLResourceType:(unint64_t)type isAssetResource:(BOOL)resource maxRetry:(unint64_t)retry excludeDynamicResources:(BOOL)resources additionalResourcePredicates:(id)predicates
{
  resourcesCopy = resources;
  v33[2] = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  date = [MEMORY[0x1E695DF00] date];
  v13 = [date dateByAddingTimeInterval:-86400.0];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dataStoreClassID == %d AND dataStoreSubtype == %d AND localAvailability == %d AND remoteAvailability == %d AND cloudPrefetchCount <= %d AND cloudLastPrefetchDate <= %@ AND fingerprint != NULL", 0, type, 0xFFFFFFFFLL, 1, retry, v13];
  if (resource)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(version == %d OR version == %d)", 2, 1];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"version == %d", 0, v30];
  }
  v15 = ;
  v16 = MEMORY[0x1E696AB28];
  v33[0] = v14;
  v33[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  if (resourcesCopy)
  {
    v19 = MEMORY[0x1E696AB28];
    v20 = [MEMORY[0x1E6994B90] predicateMatchingDynamicFingerprintForKey:@"fingerprint"];
    v21 = [v19 notPredicateWithSubpredicate:v20];

    v22 = MEMORY[0x1E696AB28];
    v32[0] = v18;
    v32[1] = v21;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v24 = [v22 andPredicateWithSubpredicates:v23];

    v18 = v24;
  }

  if ([predicatesCopy count])
  {
    v25 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:predicatesCopy];
    v26 = MEMORY[0x1E696AB28];
    v31[0] = v18;
    v31[1] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v28 = [v26 andPredicateWithSubpredicates:v27];

    v18 = v28;
  }

  return v18;
}

+ (id)predicateForAllFullSizeResourcesLocallyAvailable
{
  v2 = MEMORY[0x1E696AE18];
  originalCPLResourceTypesForAsset = [self originalCPLResourceTypesForAsset];
  v4 = [v2 predicateWithFormat:@"(SUBQUERY(modernResources, $r, $r.dataStoreClassID == %d AND ($r.dataStoreSubtype IN %@) AND $r.localAvailability == %d AND ($r.version == %d OR $r.version == %d)).@count == 0)", 0, originalCPLResourceTypesForAsset, 0xFFFFFFFFLL, 2, 1];

  return v4;
}

+ (id)predicateForAllOriginalResourcesLocallyAvailable
{
  v2 = MEMORY[0x1E696AE18];
  originalCPLResourceTypesForMaster = [self originalCPLResourceTypesForMaster];
  v4 = [v2 predicateWithFormat:@"(SUBQUERY(modernResources, $r, $r.dataStoreClassID == %d AND ($r.dataStoreSubtype IN %@) AND $r.localAvailability == %d AND $r.version == %d).@count == 0)", 0, originalCPLResourceTypesForMaster, 0xFFFFFFFFLL, 0];

  return v4;
}

+ (unint64_t)bytesNeededToDownloadOriginalResourcesInLibrary:(id)library
{
  libraryCopy = library;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PLInternalResource_CPL__bytesNeededToDownloadOriginalResourcesInLibrary___block_invoke;
  v8[3] = &unk_1E7576208;
  selfCopy = self;
  v5 = libraryCopy;
  v9 = v5;
  v10 = &v12;
  [v5 performTransactionAndWait:v8];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __75__PLInternalResource_CPL__bytesNeededToDownloadOriginalResourcesInLibrary___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 48) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dataStoreClassID == %d AND dataStoreSubtype == %d AND localAvailability <= %d", 0, 1, 0xFFFFFFFFLL];
  [v4 setPredicate:v5];
  [v4 setFetchBatchSize:100];
  v6 = [*(a1 + 32) managedObjectContext];
  v27 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v27];
  v8 = v27;
  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = v10;
    v20 = v8;
    v21 = v6;
    v22 = v5;
    v12 = *v24;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        *(*(*(a1 + 40) + 8) + 24) += [v14 dataLength];
        v16 = [v14 asset];
        if ([v16 hasAdjustments])
        {
          if ([v16 isPhoto])
          {
            v17 = 2;
          }

          else
          {
            if ([v16 isDefaultAdjustedSlomo])
            {
              goto LABEL_14;
            }

            v17 = 16;
          }

          v18 = [v16 assetResourceForCPLType:v17];
          if (v18)
          {
            v19 = v18;
            *(*(*(a1 + 40) + 8) + 24) += [v18 dataLength];
          }
        }

LABEL_14:

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (!v11)
      {
        v6 = v21;
        v5 = v22;
        v8 = v20;
        goto LABEL_20;
      }
    }
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching Cloud Resources for non-local original size estimate: %@", buf, 0xCu);
    }

LABEL_20:
  }
}

+ (unint64_t)bytesForAllResourcesInLibrary:(id)library
{
  libraryCopy = library;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PLInternalResource_CPL__bytesForAllResourcesInLibrary___block_invoke;
  v9[3] = &unk_1E7576590;
  selfCopy = self;
  v6 = libraryCopy;
  v10 = v6;
  v11 = &v14;
  v13 = a2;
  [v6 performTransactionAndWait:v9];
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

void __57__PLInternalResource_CPL__bytesForAllResourcesInLibrary___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 48) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dataStoreClassID == %d", 0];
  [v4 setPredicate:v5];
  v6 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v6 setName:@"totalResourceSize"];
  v7 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"@sum.dataLength"];
  [v6 setExpression:v7];

  [v6 setExpressionResultType:300];
  v31[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v4 setPropertiesToFetch:v8];

  [v4 setResultType:2];
  v9 = [*(a1 + 32) managedObjectContext];
  v25 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v25];
  v11 = v25;
  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v19 = v9;
      v20 = v5;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v21 + 1) + 8 * i) objectForKeyedSubscript:@"totalResourceSize"];
          *(*(*(a1 + 40) + 8) + 24) += [v17 longLongValue];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v14);
      v9 = v19;
      v5 = v20;
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v12 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v27 = v18;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "%@ failed to calculate totalResourceSize %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
}

+ (void)resetPrefetchStateForResourcesWithVersion:(unsigned int)version cplType:(unint64_t)type assetUuids:(id)uuids inLibrary:(id)library
{
  uuidsCopy = uuids;
  libraryCopy = library;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__PLInternalResource_CPL__resetPrefetchStateForResourcesWithVersion_cplType_assetUuids_inLibrary___block_invoke;
  v14[3] = &unk_1E756F1E0;
  selfCopy = self;
  typeCopy = type;
  versionCopy = version;
  v15 = uuidsCopy;
  v16 = libraryCopy;
  v12 = libraryCopy;
  v13 = uuidsCopy;
  [v12 performTransactionAndWait:v14];
}

void __98__PLInternalResource_CPL__resetPrefetchStateForResourcesWithVersion_cplType_assetUuids_inLibrary___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 48) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(dataStoreClassID) == %d AND noindex:(version) == %d AND noindex:(dataStoreSubtype) == %d AND asset.uuid IN %@", 0, *(a1 + 56), *(a1 + 64), *(a1 + 32)];
  [v4 setPredicate:v5];
  [v4 setFetchBatchSize:100];
  v6 = [*(a1 + 40) managedObjectContext];
  v24 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v24];
  v8 = v24;
  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = v8;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          [v14 resetPrefetchState];
          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
      v8 = v19;
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 64);
      v18 = *(a1 + 56);
      *buf = 138413058;
      v27 = v16;
      v28 = 1024;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching Cloud Resources for %@-%d-%ld: %@", buf, 0x26u);
    }

    goto LABEL_13;
  }

LABEL_14:
}

+ (void)resetCloudResourcesStateForCloudInManagedObjectContext:(id)context hardReset:(BOOL)reset
{
  resetCopy = reset;
  v57 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_autoreleasePoolPush();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"soft";
      if (resetCopy)
      {
        v9 = @"hard";
      }

      *buf = 138412290;
      v56 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Resetting (%@) all cpl resources", buf, 0xCu);
    }
  }

  v47 = v7;
  if (resetCopy)
  {
    v10 = MEMORY[0x1E695D5E0];
    entityName = [self entityName];
    v12 = [v10 fetchRequestWithEntityName:entityName];

    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K != %d AND %K <= %d AND %K == nil AND %K == %d", @"dataStoreClassID", 0, @"dataStoreSubtype", 0, @"localAvailability", 0xFFFFFFFFLL, @"fileSystemBookmark", @"cloudLocalState", 3];
    [v12 setPredicate:?];
    v45 = v12;
    v13 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v12];
    [v13 setResultType:2];
    v50 = 0;
    v46 = contextCopy;
    v14 = [contextCopy executeRequest:v13 error:&v50];
    v15 = v50;
    if (v15)
    {
      if (*MEMORY[0x1E6994D48])
      {
        goto LABEL_20;
      }

      v16 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to batch delete non-local Resources: Error: %@", buf, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x1E6994D48])
      {
        goto LABEL_20;
      }

      v16 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        result = [(__CFString *)v14 result];
        *buf = 138412290;
        v56 = result;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Batch deleted %@ non-local Resources", buf, 0xCu);
      }
    }

LABEL_20:
    v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K != %d", @"dataStoreClassID", 0, @"dataStoreSubtype", 0];
    v33 = objc_alloc(MEMORY[0x1E695D560]);
    entityName2 = [self entityName];
    v35 = [v33 initWithEntityName:entityName2];

    [v35 setResultType:2];
    [v35 setPredicate:v31];
    v53[0] = @"remoteAvailability";
    v53[1] = @"cloudLocalState";
    v54[0] = &unk_1F0FBD480;
    v54[1] = &unk_1F0FBD480;
    v53[2] = @"cloudPrefetchCount";
    v53[3] = @"cloudLastPrefetchDate";
    v54[2] = &unk_1F0FBD498;
    v54[3] = v29;
    v53[4] = @"cloudMasterDateCreated";
    null = [MEMORY[0x1E695DFB0] null];
    v54[4] = null;
    v53[5] = @"cloudPrunedAt";
    null2 = [MEMORY[0x1E695DFB0] null];
    v54[5] = null2;
    v53[6] = @"cloudLastOnDemandDownloadDate";
    null3 = [MEMORY[0x1E695DFB0] null];
    v53[7] = @"cloudSourceType";
    v54[6] = null3;
    v54[7] = &unk_1F0FBD4B0;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:8];
    [v35 setPropertiesToUpdate:v39];

    v49 = v15;
    v40 = [v46 executeRequest:v35 error:&v49];
    v22 = v49;

    if (v22)
    {
      v26 = v44;
      v21 = v45;
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v41 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v56 = v22;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to batch update cpl resources: Error: %@", buf, 0xCu);
        }

LABEL_31:
      }
    }

    else
    {
      v26 = v44;
      v21 = v45;
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v41 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          result2 = [v40 result];
          *buf = 138412290;
          v56 = result2;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Batch updated %@ cpl resources", buf, 0xCu);

          v22 = 0;
        }

        goto LABEL_31;
      }
    }

    v23 = v46;
LABEL_33:

    v7 = v47;
    goto LABEL_34;
  }

  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  v51[0] = @"cloudPrefetchCount";
  v51[1] = @"cloudLastPrefetchDate";
  v52[0] = &unk_1F0FBD498;
  v52[1] = v17;
  v51[2] = @"cloudPrunedAt";
  null4 = [MEMORY[0x1E695DFB0] null];
  v52[2] = null4;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v21 = [v18 initWithDictionary:v20];

  v22 = v17;
  v23 = contextCopy;

  v24 = MEMORY[0x1E696AE18];
  null5 = [MEMORY[0x1E695DFB0] null];
  v26 = [v24 predicateWithFormat:@"%K == %d AND %K != %d AND (%K != 0 OR %K != %@ OR %K != %@)", @"dataStoreClassID", 0, @"dataStoreSubtype", 0, @"cloudPrefetchCount", @"cloudLastPrefetchDate", v22, @"cloudPrunedAt", null5];

  v27 = objc_alloc(MEMORY[0x1E695D560]);
  v28 = +[PLInternalResource entityName];
  v13 = [v27 initWithEntityName:v28];

  [v13 setResultType:2];
  [v13 setPredicate:v26];
  [v13 setPropertiesToUpdate:v21];
  v48 = 0;
  v29 = [contextCopy executeRequest:v13 error:&v48];
  v30 = v48;
  if (!v30)
  {
    if (*MEMORY[0x1E6994D48])
    {
      v14 = 0;
      goto LABEL_34;
    }

    v31 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      result3 = [v29 result];
      *buf = 138412290;
      v56 = result3;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Batch updated %@ cpl attributes", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_33;
  }

  v14 = v30;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v31 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v14;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to batch update cpl attributes: Error: %@", buf, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_34:

  objc_autoreleasePoolPop(v7);
}

+ (signed)plTrashedStateForCPLExpungedState:(unint64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

+ (unint64_t)cplExpungedStateForTrashedState:(signed __int16)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

+ (id)nonOriginalCPLResourceTypes
{
  if (nonOriginalCPLResourceTypes_onceToken != -1)
  {
    dispatch_once(&nonOriginalCPLResourceTypes_onceToken, &__block_literal_global_60_63898);
  }

  v3 = nonOriginalCPLResourceTypes_resourceTypes;

  return v3;
}

uint64_t __54__PLInternalResource_CPL__nonOriginalCPLResourceTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = nonOriginalCPLResourceTypes_resourceTypes;
  nonOriginalCPLResourceTypes_resourceTypes = v0;

  v2 = MEMORY[0x1E6994B90];

  return [v2 enumerateResourceTypesWithBlock:&__block_literal_global_64];
}

void __54__PLInternalResource_CPL__nonOriginalCPLResourceTypes__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = +[PLInternalResource originalCPLResourceTypes];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    v6 = nonOriginalCPLResourceTypes_resourceTypes;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v6 addObject:v7];
  }
}

+ (id)originalCPLResourceTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLInternalResource_CPL__originalCPLResourceTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (originalCPLResourceTypes_onceToken != -1)
  {
    dispatch_once(&originalCPLResourceTypes_onceToken, block);
  }

  v2 = originalCPLResourceTypes_resourceTypes;

  return v2;
}

void __51__PLInternalResource_CPL__originalCPLResourceTypes__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) originalCPLResourceTypesForMaster];
  [v2 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) originalCPLResourceTypesForAsset];
  [v2 addObjectsFromArray:v4];

  v5 = originalCPLResourceTypes_resourceTypes;
  originalCPLResourceTypes_resourceTypes = v2;
}

+ (id)originalCPLResourceTypesForAsset
{
  if (originalCPLResourceTypesForAsset_onceToken != -1)
  {
    dispatch_once(&originalCPLResourceTypesForAsset_onceToken, &__block_literal_global_38_63901);
  }

  v3 = originalCPLResourceTypesForAsset_resourceTypes;

  return v3;
}

void __59__PLInternalResource_CPL__originalCPLResourceTypesForAsset__block_invoke()
{
  v0 = originalCPLResourceTypesForAsset_resourceTypes;
  originalCPLResourceTypesForAsset_resourceTypes = &unk_1F0FBFDA8;
}

+ (id)originalCPLResourceTypesForMaster
{
  if (originalCPLResourceTypesForMaster_onceToken != -1)
  {
    dispatch_once(&originalCPLResourceTypesForMaster_onceToken, &__block_literal_global_63912);
  }

  v3 = originalCPLResourceTypesForMaster_resourceTypes;

  return v3;
}

void __60__PLInternalResource_CPL__originalCPLResourceTypesForMaster__block_invoke()
{
  v0 = originalCPLResourceTypesForMaster_resourceTypes;
  originalCPLResourceTypesForMaster_resourceTypes = &unk_1F0FBFD90;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLInternalResource *)self isValidForJournalPersistence])
  {
    asset = [(PLInternalResource *)self asset];
    if ([asset isValidForJournalPersistence])
    {
      v6 = [[PLAssetJournalEntryPayload alloc] initWithInternalResource:self filesystemBookmark:0 changedKeys:keysCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadID
{
  asset = [(PLInternalResource *)self asset];
  uuid = [asset uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  recipeID = [(PLInternalResource *)self recipeID];

  return [PLAssetJournalEntryPayloadResource isValidForPersistenceWithRecipeID:recipeID];
}

+ (id)resourceForManagedAsset:(id)asset sharedStreamsType:(unsigned int)type managedObjectContext:(id)context error:(id *)error
{
  v7 = *&type;
  v9 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v11 = [v9 predicateWithFormat:@"%K == %@ AND %K == %d", @"asset", asset, @"dataStoreSubtype", v7];
  fetchRequest = [objc_opt_class() fetchRequest];
  [fetchRequest setPredicate:v11];
  v13 = [contextCopy executeFetchRequest:fetchRequest error:error];

  firstObject = [v13 firstObject];

  return firstObject;
}

@end