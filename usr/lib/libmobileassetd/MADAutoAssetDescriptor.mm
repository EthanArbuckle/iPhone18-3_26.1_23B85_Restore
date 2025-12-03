@interface MADAutoAssetDescriptor
+ (BOOL)doesMetatadaIndicateEmptyEntry:(id)entry;
+ (BOOL)isMorePreferredAssetFormat:(id)format comparedTo:(id)to;
+ (id)typeAndSpecifierKeyForAssetType:(id)type andAssetSpecifier:(id)specifier;
+ (int64_t)totalFilesystemSpaceForAutoAssetDescriptors:(id)descriptors;
- (BOOL)existsOnFilesystem;
- (BOOL)isBlankEntry;
- (BOOL)isEqualSelector:(id)selector;
- (BOOL)isPreSUStagingRequired;
- (BOOL)isRamped;
- (BOOL)wasBuiltForOSBuild:(id)build;
- (MADAutoAssetDescriptor)initWithCoder:(id)coder;
- (id)assetBuild;
- (id)description;
- (id)initBlankEntry;
- (id)initForAssetType:(id)type fromMetadata:(id)metadata fromBaseDescriptor:(id)descriptor substitutingAssetVersion:(id)version invalidReasons:(id *)reasons;
- (id)localContentURLOfAssetDescriptor;
- (id)newSummaryWithoutSelector;
- (id)selectorName;
- (id)selectorNameWithoutAssetType;
- (id)summary;
- (id)typeAndSpecifierKey;
- (int64_t)totalFilesystemSpace;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetDescriptor

- (id)initForAssetType:(id)type fromMetadata:(id)metadata fromBaseDescriptor:(id)descriptor substitutingAssetVersion:(id)version invalidReasons:(id *)reasons
{
  typeCopy = type;
  metadataCopy = metadata;
  descriptorCopy = descriptor;
  versionCopy = version;
  v67.receiver = self;
  v67.super_class = MADAutoAssetDescriptor;
  v17 = [(MADAutoAssetDescriptor *)&v67 init];
  if (!v17)
  {
    goto LABEL_33;
  }

  obj = metadata;
  v18 = [[NSMutableString alloc] initWithString:@"|INVALID_METADATA:"];
  objc_storeStrong(v17 + 3, type);
  v19 = *(v17 + 3);
  v20 = v19 != 0;
  if (!v19)
  {
    [v18 appendFormat:@"MISSING:%@|", @"assetType"];
  }

  v21 = getAssetIdFromDict(typeCopy, metadataCopy);
  v22 = *(v17 + 4);
  *(v17 + 4) = v21;

  if (*(v17 + 4))
  {
    if (descriptorCopy)
    {
LABEL_6:
      v17[13] = [descriptorCopy isOnFilesystem];
      v17[14] = [descriptorCopy neverBeenLocked];
      v17[15] = [descriptorCopy secureOperationInProgress];
      v17[16] = [descriptorCopy secureOperationEliminating];
      v17[17] = [descriptorCopy downloadUserInitiated];
      *(v17 + 13) = [descriptorCopy downloadedNetworkBytes];
      *(v17 + 14) = [descriptorCopy downloadedFilesystemBytes];
      patchedFromBaseSelector = [descriptorCopy patchedFromBaseSelector];
      v24 = *(v17 + 15);
      *(v17 + 15) = patchedFromBaseSelector;

      *(v17 + 16) = [descriptorCopy patchedFromBaseFilesystemBytes];
      v17[18] = [descriptorCopy patchingAttempted];
      v17[19] = [descriptorCopy stagedPriorToAvailable];
      stagedFromOSVersion = [descriptorCopy stagedFromOSVersion];
      v26 = *(v17 + 17);
      *(v17 + 17) = stagedFromOSVersion;

      stagedFromBuildVersion = [descriptorCopy stagedFromBuildVersion];
      v28 = *(v17 + 18);
      *(v17 + 18) = stagedFromBuildVersion;

      patchingAttemptError = [descriptorCopy patchingAttemptError];
      goto LABEL_9;
    }
  }

  else
  {
    [v18 appendString:@"FORMAT:assetId|"];
    v20 = 0;
    if (descriptorCopy)
    {
      goto LABEL_6;
    }
  }

  *(v17 + 13) = 256;
  v17[17] = 0;
  *(v17 + 13) = -1;
  *(v17 + 14) = -1;
  v30 = *(v17 + 15);
  *(v17 + 15) = 0;

  *(v17 + 9) = 0;
  v31 = *(v17 + 17);
  *(v17 + 16) = -1;
  *(v17 + 17) = 0;

  v32 = *(v17 + 18);
  *(v17 + 18) = 0;

  patchingAttemptError = 0;
LABEL_9:
  v33 = *(v17 + 19);
  *(v17 + 19) = patchingAttemptError;

  v34 = [metadataCopy safeBooleanForKey:@"_IsMAAutoAsset"];
  v17[8] = v34;
  if ((v34 & 1) == 0)
  {
    [v18 appendFormat:@"NOT:%@|", @"_IsMAAutoAsset"];
    v20 = 0;
  }

  *(v17 + 9) = 0;
  v35 = [metadataCopy safeStringForKey:@"AssetSpecifier"];
  v36 = *(v17 + 5);
  *(v17 + 5) = v35;

  if (*(v17 + 5))
  {
    if (versionCopy)
    {
LABEL_13:
      objc_storeStrong(v17 + 6, version);
      goto LABEL_17;
    }
  }

  else
  {
    [v18 appendFormat:@"MISSING:%@|", @"AssetSpecifier"];
    v20 = 0;
    if (versionCopy)
    {
      goto LABEL_13;
    }
  }

  v37 = [metadataCopy safeStringForKey:@"AssetVersion"];
  v38 = *(v17 + 6);
  *(v17 + 6) = v37;

  if (!*(v17 + 6))
  {
    [v18 appendFormat:@"MISSING:%@|", @"AssetVersion"];
    v20 = 0;
  }

LABEL_17:
  v39 = [metadataCopy safeStringForKey:@"AssetFormat"];
  v40 = *(v17 + 7);
  *(v17 + 7) = v39;

  if (!*(v17 + 7))
  {
    *(v17 + 7) = @"StreamingZip";
  }

  v41 = [metadataCopy safeStringForKey:@"Build"];
  v42 = *(v17 + 8);
  *(v17 + 8) = v41;

  v43 = [metadataCopy safeStringForKey:@"_MinOSVersion"];
  v44 = *(v17 + 9);
  *(v17 + 9) = v43;

  v45 = [metadataCopy safeStringForKey:@"_MaxOSVersion"];
  v46 = *(v17 + 10);
  *(v17 + 10) = v45;

  v47 = [metadataCopy safeObjectForKey:@"PrerequisiteAssetBuilds" ofClass:objc_opt_class()];
  v48 = *(v17 + 11);
  *(v17 + 11) = v47;

  v49 = *(v17 + 11);
  if (v49)
  {
    v58 = versionCopy;
    v59 = v17;
    v60 = metadataCopy;
    v61 = typeCopy;
    v17[12] = 1;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v50 = v49;
    v51 = [v50 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v64;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(v50);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v18 appendFormat:@"INVALID:%@:non-string|", @"PrerequisiteAssetBuilds"];
            v20 = 0;
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v52);
    }

    metadataCopy = v60;
    typeCopy = v61;
    versionCopy = v58;
    v17 = v59;
  }

  else
  {
    v17[12] = 0;
  }

  v17[11] = [metadataCopy safeBooleanForKey:@"_PreSoftwareUpdateAssetStaging"];
  objc_storeStrong(v17 + 12, obj);
  if (v20)
  {

LABEL_33:
    v55 = v17;
    goto LABEL_37;
  }

  if (reasons)
  {
    v56 = v18;
    *reasons = v18;
  }

  v55 = 0;
LABEL_37:

  return v55;
}

- (id)initBlankEntry
{
  v20.receiver = self;
  v20.super_class = MADAutoAssetDescriptor;
  v2 = [(MADAutoAssetDescriptor *)&v20 init];
  v3 = v2;
  if (v2)
  {
    assetType = v2->_assetType;
    v2->_assetType = @"Empty";

    assetId = v3->_assetId;
    v3->_assetId = @"Empty";

    v3->_isPatch = 0;
    *&v3->_isMAAutoAsset = 0;
    assetSpecifier = v3->_assetSpecifier;
    v3->_assetSpecifier = @"Empty";

    assetVersion = v3->_assetVersion;
    v3->_assetVersion = @"Empty";

    assetFormat = v3->_assetFormat;
    v3->_assetFormat = @"Empty";

    build = v3->_build;
    v3->_build = @"Empty";

    minOSVersion = v3->_minOSVersion;
    v3->_minOSVersion = @"Empty";

    maxOSVersion = v3->_maxOSVersion;
    v3->_maxOSVersion = @"Empty";

    prerequisiteAssetBuilds = v3->_prerequisiteAssetBuilds;
    v3->_prerequisiteAssetBuilds = 0;

    v21 = @"__Empty";
    v22 = @"Empty";
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    metadata = v3->_metadata;
    v3->_metadata = v13;

    *&v3->_isOnFilesystem = 256;
    v3->_downloadUserInitiated = 0;
    v3->_downloadedNetworkBytes = -1;
    v3->_downloadedFilesystemBytes = -1;
    patchedFromBaseSelector = v3->_patchedFromBaseSelector;
    v3->_patchedFromBaseSelector = 0;

    *&v3->_patchingAttempted = 0;
    stagedFromOSVersion = v3->_stagedFromOSVersion;
    v3->_patchedFromBaseFilesystemBytes = -1;
    v3->_stagedFromOSVersion = @"Empty";

    stagedFromBuildVersion = v3->_stagedFromBuildVersion;
    v3->_stagedFromBuildVersion = @"Empty";

    patchingAttemptError = v3->_patchingAttemptError;
    v3->_patchingAttemptError = 0;
  }

  return v3;
}

- (MADAutoAssetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = MADAutoAssetDescriptor;
  v5 = [(MADAutoAssetDescriptor *)&v41 init];
  if (v5)
  {
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v44 count:2];
    v40 = [NSSet setWithArray:v6];

    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v43[2] = objc_opt_class();
    v43[3] = objc_opt_class();
    v43[4] = objc_opt_class();
    v43[5] = objc_opt_class();
    v43[6] = objc_opt_class();
    v43[7] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v43 count:8];
    v8 = [NSSet setWithArray:v7];

    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v42[2] = objc_opt_class();
    v42[3] = objc_opt_class();
    v42[4] = objc_opt_class();
    v42[5] = objc_opt_class();
    v42[6] = objc_opt_class();
    v42[7] = objc_opt_class();
    v42[8] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v42 count:9];
    v10 = [NSSet setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetId = v5->_assetId;
    v5->_assetId = v13;

    v5->_isMAAutoAsset = [coderCopy decodeBoolForKey:@"_IsMAAutoAsset"];
    v5->_foundByLookupWithoutAssetVersion = [coderCopy decodeBoolForKey:@"foundByLookupWithoutAssetVersion"];
    v5->_foundAsPreInstalled = [coderCopy decodeBoolForKey:@"foundAsPreInstalled"];
    v5->_preSoftwareUpdateAssetStaging = [coderCopy decodeBoolForKey:@"_PreSoftwareUpdateAssetStaging"];
    v5->_isPatch = [coderCopy decodeBoolForKey:@"isPatch"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetSpecifier"];
    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetFormat"];
    assetFormat = v5->_assetFormat;
    v5->_assetFormat = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Build"];
    build = v5->_build;
    v5->_build = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_MinOSVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_MaxOSVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v25;

    v27 = [coderCopy decodeObjectOfClasses:v40 forKey:@"PrerequisiteAssetBuilds"];
    prerequisiteAssetBuilds = v5->_prerequisiteAssetBuilds;
    v5->_prerequisiteAssetBuilds = v27;

    v29 = [coderCopy decodeObjectOfClasses:v8 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v29;

    v5->_isOnFilesystem = [coderCopy decodeBoolForKey:@"isOnFilesystem"];
    v5->_neverBeenLocked = [coderCopy decodeBoolForKey:@"neverBeenLocked"];
    v5->_secureOperationInProgress = [coderCopy decodeBoolForKey:@"secureOperationInProgress"];
    v5->_secureOperationEliminating = [coderCopy decodeBoolForKey:@"secureOperationEliminating"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patchedFromBaseSelector"];
    patchedFromBaseSelector = v5->_patchedFromBaseSelector;
    v5->_patchedFromBaseSelector = v31;

    v5->_patchedFromBaseFilesystemBytes = [coderCopy decodeIntegerForKey:@"patchedFromBaseFilesystemBytes"];
    v5->_patchingAttempted = [coderCopy decodeBoolForKey:@"patchingAttempted"];
    v5->_stagedPriorToAvailable = [coderCopy decodeBoolForKey:@"stagedPriorToAvailable"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromOSVersion"];
    stagedFromOSVersion = v5->_stagedFromOSVersion;
    v5->_stagedFromOSVersion = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromBuildVersion"];
    stagedFromBuildVersion = v5->_stagedFromBuildVersion;
    v5->_stagedFromBuildVersion = v35;

    v37 = [coderCopy decodeObjectOfClasses:v10 forKey:@"patchingAttemptError"];
    patchingAttemptError = v5->_patchingAttemptError;
    v5->_patchingAttemptError = v37;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  [coderCopy encodeObject:assetType forKey:@"assetType"];

  assetId = [(MADAutoAssetDescriptor *)self assetId];
  [coderCopy encodeObject:assetId forKey:@"assetID"];

  [coderCopy encodeBool:-[MADAutoAssetDescriptor isMAAutoAsset](self forKey:{"isMAAutoAsset"), @"_IsMAAutoAsset"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor foundByLookupWithoutAssetVersion](self forKey:{"foundByLookupWithoutAssetVersion"), @"foundByLookupWithoutAssetVersion"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor foundAsPreInstalled](self forKey:{"foundAsPreInstalled"), @"foundAsPreInstalled"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor preSoftwareUpdateAssetStaging](self forKey:{"preSoftwareUpdateAssetStaging"), @"_PreSoftwareUpdateAssetStaging"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor isPatch](self forKey:{"isPatch"), @"isPatch"}];
  assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
  [coderCopy encodeObject:assetSpecifier forKey:@"AssetSpecifier"];

  assetVersion = [(MADAutoAssetDescriptor *)self assetVersion];
  [coderCopy encodeObject:assetVersion forKey:@"AssetVersion"];

  assetFormat = [(MADAutoAssetDescriptor *)self assetFormat];
  [coderCopy encodeObject:assetFormat forKey:@"AssetFormat"];

  build = [(MADAutoAssetDescriptor *)self build];
  [coderCopy encodeObject:build forKey:@"Build"];

  minOSVersion = [(MADAutoAssetDescriptor *)self minOSVersion];
  [coderCopy encodeObject:minOSVersion forKey:@"_MinOSVersion"];

  maxOSVersion = [(MADAutoAssetDescriptor *)self maxOSVersion];
  [coderCopy encodeObject:maxOSVersion forKey:@"_MaxOSVersion"];

  prerequisiteAssetBuilds = [(MADAutoAssetDescriptor *)self prerequisiteAssetBuilds];
  [coderCopy encodeObject:prerequisiteAssetBuilds forKey:@"PrerequisiteAssetBuilds"];

  metadata = [(MADAutoAssetDescriptor *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  [coderCopy encodeBool:-[MADAutoAssetDescriptor isOnFilesystem](self forKey:{"isOnFilesystem"), @"isOnFilesystem"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor secureOperationInProgress](self forKey:{"secureOperationInProgress"), @"secureOperationInProgress"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor secureOperationEliminating](self forKey:{"secureOperationEliminating"), @"secureOperationEliminating"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [coderCopy encodeInteger:-[MADAutoAssetDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MADAutoAssetDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  patchedFromBaseSelector = [(MADAutoAssetDescriptor *)self patchedFromBaseSelector];
  [coderCopy encodeObject:patchedFromBaseSelector forKey:@"patchedFromBaseSelector"];

  [coderCopy encodeInteger:-[MADAutoAssetDescriptor patchedFromBaseFilesystemBytes](self forKey:{"patchedFromBaseFilesystemBytes"), @"patchedFromBaseFilesystemBytes"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor patchingAttempted](self forKey:{"patchingAttempted"), @"patchingAttempted"}];
  [coderCopy encodeBool:-[MADAutoAssetDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
  stagedFromOSVersion = [(MADAutoAssetDescriptor *)self stagedFromOSVersion];
  [coderCopy encodeObject:stagedFromOSVersion forKey:@"stagedFromOSVersion"];

  stagedFromBuildVersion = [(MADAutoAssetDescriptor *)self stagedFromBuildVersion];
  [coderCopy encodeObject:stagedFromBuildVersion forKey:@"stagedFromBuildVersion"];

  patchingAttemptError = [(MADAutoAssetDescriptor *)self patchingAttemptError];
  [coderCopy encodeObject:patchingAttemptError forKey:@"patchingAttemptError"];
}

- (id)description
{
  prerequisiteAssetBuilds = [(MADAutoAssetDescriptor *)self prerequisiteAssetBuilds];

  if (prerequisiteAssetBuilds)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    prerequisiteAssetBuilds2 = [(MADAutoAssetDescriptor *)self prerequisiteAssetBuilds];
    v5 = [prerequisiteAssetBuilds2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(prerequisiteAssetBuilds2);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if (v7)
          {
            v11 = [[NSString alloc] initWithFormat:@"%@, %@", v7, v10];

            v7 = v11;
          }

          else
          {
            v7 = v10;
          }
        }

        v6 = [prerequisiteAssetBuilds2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = @"NONE";
  }

  summary = [(MADAutoAssetDescriptor *)self summary];
  metadata = [(MADAutoAssetDescriptor *)self metadata];
  safeSummary = [metadata safeSummary];
  v15 = [NSString stringWithFormat:@"[AutoAsset(%@)>>>\n[patch] prerequisistedBuilds: %@\n[metadata]       rawMetadata: %@\n<<<]", summary, v7, safeSummary];

  return v15;
}

- (id)summary
{
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
  assetVersion = [(MADAutoAssetDescriptor *)self assetVersion];
  newSummaryWithoutSelector = [(MADAutoAssetDescriptor *)self newSummaryWithoutSelector];
  v7 = [NSString stringWithFormat:@"[assetType:%@|specifier:%@|version:%@|%@]", assetType, assetSpecifier, assetVersion, newSummaryWithoutSelector];

  return v7;
}

- (id)newSummaryWithoutSelector
{
  v46 = [NSString alloc];
  assetId = [(MADAutoAssetDescriptor *)self assetId];
  stagedFromOSVersion2 = @"N";
  if ([(MADAutoAssetDescriptor *)self foundByLookupWithoutAssetVersion])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v43 = v5;
  if ([(MADAutoAssetDescriptor *)self foundAsPreInstalled])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v42 = v6;
  metadata = [(MADAutoAssetDescriptor *)self metadata];
  if (metadata)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v41 = v7;
  if ([(MADAutoAssetDescriptor *)self isPatch])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v40 = v8;
  if ([(MADAutoAssetDescriptor *)self isOnFilesystem])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v39 = v9;
  if ([(MADAutoAssetDescriptor *)self neverBeenLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v37 = v10;
  if ([(MADAutoAssetDescriptor *)self secureOperationInProgress])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v36 = v11;
  if ([(MADAutoAssetDescriptor *)self secureOperationEliminating])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v35 = v12;
  assetFormat = [(MADAutoAssetDescriptor *)self assetFormat];
  build = [(MADAutoAssetDescriptor *)self build];
  minOSVersion = [(MADAutoAssetDescriptor *)self minOSVersion];
  maxOSVersion = [(MADAutoAssetDescriptor *)self maxOSVersion];
  if ([(MADAutoAssetDescriptor *)self preSoftwareUpdateAssetStaging])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v34 = v16;
  if ([(MADAutoAssetDescriptor *)self downloadUserInitiated])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v33 = v17;
  downloadedNetworkBytes = [(MADAutoAssetDescriptor *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MADAutoAssetDescriptor *)self downloadedFilesystemBytes];
  patchedFromBaseSelector = [(MADAutoAssetDescriptor *)self patchedFromBaseSelector];
  v45 = build;
  if (patchedFromBaseSelector)
  {
    patchedFromBaseSelector2 = [(MADAutoAssetDescriptor *)self patchedFromBaseSelector];
    summary = [patchedFromBaseSelector2 summary];
  }

  else
  {
    summary = &stru_4BD3F0;
  }

  patchedFromBaseFilesystemBytes = [(MADAutoAssetDescriptor *)self patchedFromBaseFilesystemBytes];
  if ([(MADAutoAssetDescriptor *)self patchingAttempted])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v28 = v18;
  patchingAttemptError = [(MADAutoAssetDescriptor *)self patchingAttemptError];
  v50 = [MADAutoAssetClientRequest responseErrorSummary:?];
  if ([(MADAutoAssetDescriptor *)self isPreSUStagingRequired])
  {
    v19 = @"REQUIRED";
  }

  else
  {
    v19 = @"OPTIONAL";
  }

  if ([(MADAutoAssetDescriptor *)self stagedPriorToAvailable])
  {
    v20 = @"Y";
  }

  else
  {
    v20 = @"N";
  }

  stagedFromOSVersion = [(MADAutoAssetDescriptor *)self stagedFromOSVersion];
  v47 = assetId;
  if (stagedFromOSVersion)
  {
    stagedFromOSVersion2 = [(MADAutoAssetDescriptor *)self stagedFromOSVersion];
  }

  stagedFromBuildVersion = [(MADAutoAssetDescriptor *)self stagedFromBuildVersion];
  if (stagedFromBuildVersion)
  {
    stagedFromBuildVersion2 = [(MADAutoAssetDescriptor *)self stagedFromBuildVersion];
  }

  else
  {
    stagedFromBuildVersion2 = @"N";
  }

  if ([(MADAutoAssetDescriptor *)self isBlankEntry])
  {
    v24 = @"Y";
  }

  else
  {
    v24 = @"N";
  }

  v25 = [v46 initWithFormat:@"ID:%@|lookupWithoutAssetVersion:%@|preInstalled:%@|metadata:%@|patch:%@|filesystem:%@|neverBeenLocked:%@|(secureOperation)inProgress:%@, eliminating:%@|format:%@|build:%@|[OS]min:%@, max:%@|preStaging:%@|(downloaded)user:%@, network:%ld, filesystem:%ld|(patched)base:%@, baseBytes:%ld, attempted:%@, error:%@|(staged)required:%@, prior:%@, fromOSVersion:%@, fromBuild:%@|isBlankEntry:%@", v47, v43, v42, v41, v40, v39, v37, v36, v35, assetFormat, v45, minOSVersion, maxOSVersion, v34, v33, downloadedNetworkBytes, downloadedFilesystemBytes, summary, patchedFromBaseFilesystemBytes, v28, v50, v19, v20, stagedFromOSVersion2, stagedFromBuildVersion2, v24];
  if (stagedFromBuildVersion)
  {
  }

  if (stagedFromOSVersion)
  {
  }

  if (patchedFromBaseSelector)
  {
  }

  return v25;
}

- (BOOL)isBlankEntry
{
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  if ([SUCore stringIsEqual:assetType to:@"Empty"])
  {
    assetId = [(MADAutoAssetDescriptor *)self assetId];
    if ([SUCore stringIsEqual:assetId to:@"Empty"])
    {
      assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
      if ([SUCore stringIsEqual:assetSpecifier to:@"Empty"])
      {
        assetVersion = [(MADAutoAssetDescriptor *)self assetVersion];
        if ([SUCore stringIsEqual:assetVersion to:@"Empty"])
        {
          assetFormat = [(MADAutoAssetDescriptor *)self assetFormat];
          if ([SUCore stringIsEqual:assetFormat to:@"Empty"])
          {
            build = [(MADAutoAssetDescriptor *)self build];
            if ([SUCore stringIsEqual:build to:@"Empty"])
            {
              minOSVersion = [(MADAutoAssetDescriptor *)self minOSVersion];
              if ([SUCore stringIsEqual:minOSVersion to:@"Empty"])
              {
                maxOSVersion = [(MADAutoAssetDescriptor *)self maxOSVersion];
                v11 = [SUCore stringIsEqual:maxOSVersion to:@"Empty"];
              }

              else
              {
                v11 = 0;
              }
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)doesMetatadaIndicateEmptyEntry:(id)entry
{
  v3 = [entry safeStringForKey:@"__Empty"];
  if (v3)
  {
    v4 = [SUCore stringIsEqual:v3 to:@"Empty"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqualSelector:(id)selector
{
  selectorCopy = selector;
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  assetType2 = [selectorCopy assetType];
  if ([SUCore stringIsEqual:assetType to:assetType2])
  {
    assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
    assetSpecifier2 = [selectorCopy assetSpecifier];
    if ([SUCore stringIsEqual:assetSpecifier to:assetSpecifier2])
    {
      assetVersion = [(MADAutoAssetDescriptor *)self assetVersion];
      assetVersion2 = [selectorCopy assetVersion];
      v11 = [SUCore stringIsEqual:assetVersion to:assetVersion2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isRamped
{
  metadata = [(MADAutoAssetDescriptor *)self metadata];
  v3 = [metadata safeBooleanForKey:@"Ramp"];

  return v3;
}

- (BOOL)isPreSUStagingRequired
{
  metadata = [(MADAutoAssetDescriptor *)self metadata];
  v3 = [metadata safeStringForKey:@"_PreSoftwareUpdateAssetStagingPolicy"];

  LOBYTE(metadata) = [SUCore stringIsEqual:v3 to:@"Required"];
  return metadata;
}

- (BOOL)existsOnFilesystem
{
  localContentURLOfAssetDescriptor = [(MADAutoAssetDescriptor *)self localContentURLOfAssetDescriptor];
  if (localContentURLOfAssetDescriptor)
  {
    v3 = +[NSFileManager defaultManager];
    path = [localContentURLOfAssetDescriptor path];
    v5 = [v3 fileExistsAtPath:path];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wasBuiltForOSBuild:(id)build
{
  buildCopy = build;
  metadata = [(MADAutoAssetDescriptor *)self metadata];
  v6 = [metadata safeStringForKey:@"Build"];

  v7 = 0;
  if (buildCopy && v6)
  {
    v7 = [SUCore stringIsEqual:v6 to:buildCopy];
  }

  return v7;
}

- (id)assetBuild
{
  metadata = [(MADAutoAssetDescriptor *)self metadata];
  v3 = [metadata safeStringForKey:@"Build"];

  return v3;
}

- (id)typeAndSpecifierKey
{
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
  v5 = [MADAutoAssetDescriptor typeAndSpecifierKeyForAssetType:assetType andAssetSpecifier:assetSpecifier];

  return v5;
}

- (int64_t)totalFilesystemSpace
{
  if ([(MADAutoAssetDescriptor *)self downloadedFilesystemBytes]< 1)
  {
    if ([(MADAutoAssetDescriptor *)self downloadedNetworkBytes]< 1)
    {
      return 0;
    }

    else
    {

      return [(MADAutoAssetDescriptor *)self downloadedNetworkBytes];
    }
  }

  else
  {

    return [(MADAutoAssetDescriptor *)self downloadedFilesystemBytes];
  }
}

- (id)selectorName
{
  assetVersion = [(MADAutoAssetDescriptor *)self assetVersion];

  v4 = [NSString alloc];
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
  v7 = assetSpecifier;
  if (assetVersion)
  {
    assetVersion2 = [(MADAutoAssetDescriptor *)self assetVersion];
    v9 = [v4 initWithFormat:@"%@^%@^%@", assetType, v7, assetVersion2];
  }

  else
  {
    v9 = [v4 initWithFormat:@"%@^%@", assetType, assetSpecifier];
  }

  return v9;
}

- (id)selectorNameWithoutAssetType
{
  assetVersion = [(MADAutoAssetDescriptor *)self assetVersion];

  if (assetVersion)
  {
    v4 = [NSString alloc];
    assetSpecifier = [(MADAutoAssetDescriptor *)self assetSpecifier];
    assetVersion2 = [(MADAutoAssetDescriptor *)self assetVersion];
    assetSpecifier2 = [v4 initWithFormat:@"%@^%@", assetSpecifier, assetVersion2];
  }

  else
  {
    assetSpecifier2 = [(MADAutoAssetDescriptor *)self assetSpecifier];
  }

  return assetSpecifier2;
}

+ (id)typeAndSpecifierKeyForAssetType:(id)type andAssetSpecifier:(id)specifier
{
  specifierCopy = specifier;
  typeCopy = type;
  v7 = [NSString alloc];
  v8 = @"Empty";
  if (typeCopy)
  {
    v9 = typeCopy;
  }

  else
  {
    v9 = @"Empty";
  }

  if (specifierCopy)
  {
    v8 = specifierCopy;
  }

  v10 = [v7 initWithFormat:@"%@|%@", v9, v8];

  return v10;
}

+ (int64_t)totalFilesystemSpaceForAutoAssetDescriptors:(id)descriptors
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [descriptors allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) totalFilesystemSpace];
      }

      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localContentURLOfAssetDescriptor
{
  assetType = [(MADAutoAssetDescriptor *)self assetType];
  assetId = [(MADAutoAssetDescriptor *)self assetId];
  v5 = getAutoLocalUrlFromTypeAndIdWithPurpose(assetType, assetId, 2, @"auto");

  return v5;
}

+ (BOOL)isMorePreferredAssetFormat:(id)format comparedTo:(id)to
{
  formatCopy = format;
  toCopy = to;
  supportedAssetFormatsArray();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [SUCore stringIsEqual:toCopy to:v12, v16];
        if ((v13 & 1) != 0 || ([SUCore stringIsEqual:formatCopy to:v12]& 1) != 0)
        {
          v14 = v13 ^ 1;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

@end