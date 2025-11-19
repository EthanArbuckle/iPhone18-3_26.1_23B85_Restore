@interface MADAutoAssetDescriptor
+ (BOOL)doesMetatadaIndicateEmptyEntry:(id)a3;
+ (BOOL)isMorePreferredAssetFormat:(id)a3 comparedTo:(id)a4;
+ (id)typeAndSpecifierKeyForAssetType:(id)a3 andAssetSpecifier:(id)a4;
+ (int64_t)totalFilesystemSpaceForAutoAssetDescriptors:(id)a3;
- (BOOL)existsOnFilesystem;
- (BOOL)isBlankEntry;
- (BOOL)isEqualSelector:(id)a3;
- (BOOL)isPreSUStagingRequired;
- (BOOL)isRamped;
- (BOOL)wasBuiltForOSBuild:(id)a3;
- (MADAutoAssetDescriptor)initWithCoder:(id)a3;
- (id)assetBuild;
- (id)description;
- (id)initBlankEntry;
- (id)initForAssetType:(id)a3 fromMetadata:(id)a4 fromBaseDescriptor:(id)a5 substitutingAssetVersion:(id)a6 invalidReasons:(id *)a7;
- (id)localContentURLOfAssetDescriptor;
- (id)newSummaryWithoutSelector;
- (id)selectorName;
- (id)selectorNameWithoutAssetType;
- (id)summary;
- (id)typeAndSpecifierKey;
- (int64_t)totalFilesystemSpace;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetDescriptor

- (id)initForAssetType:(id)a3 fromMetadata:(id)a4 fromBaseDescriptor:(id)a5 substitutingAssetVersion:(id)a6 invalidReasons:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v67.receiver = self;
  v67.super_class = MADAutoAssetDescriptor;
  v17 = [(MADAutoAssetDescriptor *)&v67 init];
  if (!v17)
  {
    goto LABEL_33;
  }

  obj = a4;
  v18 = [[NSMutableString alloc] initWithString:@"|INVALID_METADATA:"];
  objc_storeStrong(v17 + 3, a3);
  v19 = *(v17 + 3);
  v20 = v19 != 0;
  if (!v19)
  {
    [v18 appendFormat:@"MISSING:%@|", @"assetType"];
  }

  v21 = getAssetIdFromDict(v13, v14);
  v22 = *(v17 + 4);
  *(v17 + 4) = v21;

  if (*(v17 + 4))
  {
    if (v15)
    {
LABEL_6:
      v17[13] = [v15 isOnFilesystem];
      v17[14] = [v15 neverBeenLocked];
      v17[15] = [v15 secureOperationInProgress];
      v17[16] = [v15 secureOperationEliminating];
      v17[17] = [v15 downloadUserInitiated];
      *(v17 + 13) = [v15 downloadedNetworkBytes];
      *(v17 + 14) = [v15 downloadedFilesystemBytes];
      v23 = [v15 patchedFromBaseSelector];
      v24 = *(v17 + 15);
      *(v17 + 15) = v23;

      *(v17 + 16) = [v15 patchedFromBaseFilesystemBytes];
      v17[18] = [v15 patchingAttempted];
      v17[19] = [v15 stagedPriorToAvailable];
      v25 = [v15 stagedFromOSVersion];
      v26 = *(v17 + 17);
      *(v17 + 17) = v25;

      v27 = [v15 stagedFromBuildVersion];
      v28 = *(v17 + 18);
      *(v17 + 18) = v27;

      v29 = [v15 patchingAttemptError];
      goto LABEL_9;
    }
  }

  else
  {
    [v18 appendString:@"FORMAT:assetId|"];
    v20 = 0;
    if (v15)
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

  v29 = 0;
LABEL_9:
  v33 = *(v17 + 19);
  *(v17 + 19) = v29;

  v34 = [v14 safeBooleanForKey:@"_IsMAAutoAsset"];
  v17[8] = v34;
  if ((v34 & 1) == 0)
  {
    [v18 appendFormat:@"NOT:%@|", @"_IsMAAutoAsset"];
    v20 = 0;
  }

  *(v17 + 9) = 0;
  v35 = [v14 safeStringForKey:@"AssetSpecifier"];
  v36 = *(v17 + 5);
  *(v17 + 5) = v35;

  if (*(v17 + 5))
  {
    if (v16)
    {
LABEL_13:
      objc_storeStrong(v17 + 6, a6);
      goto LABEL_17;
    }
  }

  else
  {
    [v18 appendFormat:@"MISSING:%@|", @"AssetSpecifier"];
    v20 = 0;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  v37 = [v14 safeStringForKey:@"AssetVersion"];
  v38 = *(v17 + 6);
  *(v17 + 6) = v37;

  if (!*(v17 + 6))
  {
    [v18 appendFormat:@"MISSING:%@|", @"AssetVersion"];
    v20 = 0;
  }

LABEL_17:
  v39 = [v14 safeStringForKey:@"AssetFormat"];
  v40 = *(v17 + 7);
  *(v17 + 7) = v39;

  if (!*(v17 + 7))
  {
    *(v17 + 7) = @"StreamingZip";
  }

  v41 = [v14 safeStringForKey:@"Build"];
  v42 = *(v17 + 8);
  *(v17 + 8) = v41;

  v43 = [v14 safeStringForKey:@"_MinOSVersion"];
  v44 = *(v17 + 9);
  *(v17 + 9) = v43;

  v45 = [v14 safeStringForKey:@"_MaxOSVersion"];
  v46 = *(v17 + 10);
  *(v17 + 10) = v45;

  v47 = [v14 safeObjectForKey:@"PrerequisiteAssetBuilds" ofClass:objc_opt_class()];
  v48 = *(v17 + 11);
  *(v17 + 11) = v47;

  v49 = *(v17 + 11);
  if (v49)
  {
    v58 = v16;
    v59 = v17;
    v60 = v14;
    v61 = v13;
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

    v14 = v60;
    v13 = v61;
    v16 = v58;
    v17 = v59;
  }

  else
  {
    v17[12] = 0;
  }

  v17[11] = [v14 safeBooleanForKey:@"_PreSoftwareUpdateAssetStaging"];
  objc_storeStrong(v17 + 12, obj);
  if (v20)
  {

LABEL_33:
    v55 = v17;
    goto LABEL_37;
  }

  if (a7)
  {
    v56 = v18;
    *a7 = v18;
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

- (MADAutoAssetDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
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

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    assetId = v5->_assetId;
    v5->_assetId = v13;

    v5->_isMAAutoAsset = [v4 decodeBoolForKey:@"_IsMAAutoAsset"];
    v5->_foundByLookupWithoutAssetVersion = [v4 decodeBoolForKey:@"foundByLookupWithoutAssetVersion"];
    v5->_foundAsPreInstalled = [v4 decodeBoolForKey:@"foundAsPreInstalled"];
    v5->_preSoftwareUpdateAssetStaging = [v4 decodeBoolForKey:@"_PreSoftwareUpdateAssetStaging"];
    v5->_isPatch = [v4 decodeBoolForKey:@"isPatch"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetSpecifier"];
    assetSpecifier = v5->_assetSpecifier;
    v5->_assetSpecifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetFormat"];
    assetFormat = v5->_assetFormat;
    v5->_assetFormat = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Build"];
    build = v5->_build;
    v5->_build = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MinOSVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_MaxOSVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v25;

    v27 = [v4 decodeObjectOfClasses:v40 forKey:@"PrerequisiteAssetBuilds"];
    prerequisiteAssetBuilds = v5->_prerequisiteAssetBuilds;
    v5->_prerequisiteAssetBuilds = v27;

    v29 = [v4 decodeObjectOfClasses:v8 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v29;

    v5->_isOnFilesystem = [v4 decodeBoolForKey:@"isOnFilesystem"];
    v5->_neverBeenLocked = [v4 decodeBoolForKey:@"neverBeenLocked"];
    v5->_secureOperationInProgress = [v4 decodeBoolForKey:@"secureOperationInProgress"];
    v5->_secureOperationEliminating = [v4 decodeBoolForKey:@"secureOperationEliminating"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patchedFromBaseSelector"];
    patchedFromBaseSelector = v5->_patchedFromBaseSelector;
    v5->_patchedFromBaseSelector = v31;

    v5->_patchedFromBaseFilesystemBytes = [v4 decodeIntegerForKey:@"patchedFromBaseFilesystemBytes"];
    v5->_patchingAttempted = [v4 decodeBoolForKey:@"patchingAttempted"];
    v5->_stagedPriorToAvailable = [v4 decodeBoolForKey:@"stagedPriorToAvailable"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromOSVersion"];
    stagedFromOSVersion = v5->_stagedFromOSVersion;
    v5->_stagedFromOSVersion = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromBuildVersion"];
    stagedFromBuildVersion = v5->_stagedFromBuildVersion;
    v5->_stagedFromBuildVersion = v35;

    v37 = [v4 decodeObjectOfClasses:v10 forKey:@"patchingAttemptError"];
    patchingAttemptError = v5->_patchingAttemptError;
    v5->_patchingAttemptError = v37;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetDescriptor *)self assetType];
  [v4 encodeObject:v5 forKey:@"assetType"];

  v6 = [(MADAutoAssetDescriptor *)self assetId];
  [v4 encodeObject:v6 forKey:@"assetID"];

  [v4 encodeBool:-[MADAutoAssetDescriptor isMAAutoAsset](self forKey:{"isMAAutoAsset"), @"_IsMAAutoAsset"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor foundByLookupWithoutAssetVersion](self forKey:{"foundByLookupWithoutAssetVersion"), @"foundByLookupWithoutAssetVersion"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor foundAsPreInstalled](self forKey:{"foundAsPreInstalled"), @"foundAsPreInstalled"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor preSoftwareUpdateAssetStaging](self forKey:{"preSoftwareUpdateAssetStaging"), @"_PreSoftwareUpdateAssetStaging"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor isPatch](self forKey:{"isPatch"), @"isPatch"}];
  v7 = [(MADAutoAssetDescriptor *)self assetSpecifier];
  [v4 encodeObject:v7 forKey:@"AssetSpecifier"];

  v8 = [(MADAutoAssetDescriptor *)self assetVersion];
  [v4 encodeObject:v8 forKey:@"AssetVersion"];

  v9 = [(MADAutoAssetDescriptor *)self assetFormat];
  [v4 encodeObject:v9 forKey:@"AssetFormat"];

  v10 = [(MADAutoAssetDescriptor *)self build];
  [v4 encodeObject:v10 forKey:@"Build"];

  v11 = [(MADAutoAssetDescriptor *)self minOSVersion];
  [v4 encodeObject:v11 forKey:@"_MinOSVersion"];

  v12 = [(MADAutoAssetDescriptor *)self maxOSVersion];
  [v4 encodeObject:v12 forKey:@"_MaxOSVersion"];

  v13 = [(MADAutoAssetDescriptor *)self prerequisiteAssetBuilds];
  [v4 encodeObject:v13 forKey:@"PrerequisiteAssetBuilds"];

  v14 = [(MADAutoAssetDescriptor *)self metadata];
  [v4 encodeObject:v14 forKey:@"metadata"];

  [v4 encodeBool:-[MADAutoAssetDescriptor isOnFilesystem](self forKey:{"isOnFilesystem"), @"isOnFilesystem"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor secureOperationInProgress](self forKey:{"secureOperationInProgress"), @"secureOperationInProgress"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor secureOperationEliminating](self forKey:{"secureOperationEliminating"), @"secureOperationEliminating"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [v4 encodeInteger:-[MADAutoAssetDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v4 encodeInteger:-[MADAutoAssetDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  v15 = [(MADAutoAssetDescriptor *)self patchedFromBaseSelector];
  [v4 encodeObject:v15 forKey:@"patchedFromBaseSelector"];

  [v4 encodeInteger:-[MADAutoAssetDescriptor patchedFromBaseFilesystemBytes](self forKey:{"patchedFromBaseFilesystemBytes"), @"patchedFromBaseFilesystemBytes"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor patchingAttempted](self forKey:{"patchingAttempted"), @"patchingAttempted"}];
  [v4 encodeBool:-[MADAutoAssetDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
  v16 = [(MADAutoAssetDescriptor *)self stagedFromOSVersion];
  [v4 encodeObject:v16 forKey:@"stagedFromOSVersion"];

  v17 = [(MADAutoAssetDescriptor *)self stagedFromBuildVersion];
  [v4 encodeObject:v17 forKey:@"stagedFromBuildVersion"];

  v18 = [(MADAutoAssetDescriptor *)self patchingAttemptError];
  [v4 encodeObject:v18 forKey:@"patchingAttemptError"];
}

- (id)description
{
  v3 = [(MADAutoAssetDescriptor *)self prerequisiteAssetBuilds];

  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(MADAutoAssetDescriptor *)self prerequisiteAssetBuilds];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v4);
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

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

  v12 = [(MADAutoAssetDescriptor *)self summary];
  v13 = [(MADAutoAssetDescriptor *)self metadata];
  v14 = [v13 safeSummary];
  v15 = [NSString stringWithFormat:@"[AutoAsset(%@)>>>\n[patch] prerequisistedBuilds: %@\n[metadata]       rawMetadata: %@\n<<<]", v12, v7, v14];

  return v15;
}

- (id)summary
{
  v3 = [(MADAutoAssetDescriptor *)self assetType];
  v4 = [(MADAutoAssetDescriptor *)self assetSpecifier];
  v5 = [(MADAutoAssetDescriptor *)self assetVersion];
  v6 = [(MADAutoAssetDescriptor *)self newSummaryWithoutSelector];
  v7 = [NSString stringWithFormat:@"[assetType:%@|specifier:%@|version:%@|%@]", v3, v4, v5, v6];

  return v7;
}

- (id)newSummaryWithoutSelector
{
  v46 = [NSString alloc];
  v3 = [(MADAutoAssetDescriptor *)self assetId];
  v4 = @"N";
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
  v48 = [(MADAutoAssetDescriptor *)self metadata];
  if (v48)
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
  v13 = [(MADAutoAssetDescriptor *)self assetFormat];
  v14 = [(MADAutoAssetDescriptor *)self build];
  v44 = [(MADAutoAssetDescriptor *)self minOSVersion];
  v15 = [(MADAutoAssetDescriptor *)self maxOSVersion];
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
  v31 = [(MADAutoAssetDescriptor *)self downloadedNetworkBytes];
  v30 = [(MADAutoAssetDescriptor *)self downloadedFilesystemBytes];
  v38 = [(MADAutoAssetDescriptor *)self patchedFromBaseSelector];
  v45 = v14;
  if (v38)
  {
    v27 = [(MADAutoAssetDescriptor *)self patchedFromBaseSelector];
    v49 = [v27 summary];
  }

  else
  {
    v49 = &stru_4BD3F0;
  }

  v29 = [(MADAutoAssetDescriptor *)self patchedFromBaseFilesystemBytes];
  if ([(MADAutoAssetDescriptor *)self patchingAttempted])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v28 = v18;
  v32 = [(MADAutoAssetDescriptor *)self patchingAttemptError];
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

  v21 = [(MADAutoAssetDescriptor *)self stagedFromOSVersion];
  v47 = v3;
  if (v21)
  {
    v4 = [(MADAutoAssetDescriptor *)self stagedFromOSVersion];
  }

  v22 = [(MADAutoAssetDescriptor *)self stagedFromBuildVersion];
  if (v22)
  {
    v23 = [(MADAutoAssetDescriptor *)self stagedFromBuildVersion];
  }

  else
  {
    v23 = @"N";
  }

  if ([(MADAutoAssetDescriptor *)self isBlankEntry])
  {
    v24 = @"Y";
  }

  else
  {
    v24 = @"N";
  }

  v25 = [v46 initWithFormat:@"ID:%@|lookupWithoutAssetVersion:%@|preInstalled:%@|metadata:%@|patch:%@|filesystem:%@|neverBeenLocked:%@|(secureOperation)inProgress:%@, eliminating:%@|format:%@|build:%@|[OS]min:%@, max:%@|preStaging:%@|(downloaded)user:%@, network:%ld, filesystem:%ld|(patched)base:%@, baseBytes:%ld, attempted:%@, error:%@|(staged)required:%@, prior:%@, fromOSVersion:%@, fromBuild:%@|isBlankEntry:%@", v47, v43, v42, v41, v40, v39, v37, v36, v35, v13, v45, v44, v15, v34, v33, v31, v30, v49, v29, v28, v50, v19, v20, v4, v23, v24];
  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v38)
  {
  }

  return v25;
}

- (BOOL)isBlankEntry
{
  v3 = [(MADAutoAssetDescriptor *)self assetType];
  if ([SUCore stringIsEqual:v3 to:@"Empty"])
  {
    v4 = [(MADAutoAssetDescriptor *)self assetId];
    if ([SUCore stringIsEqual:v4 to:@"Empty"])
    {
      v5 = [(MADAutoAssetDescriptor *)self assetSpecifier];
      if ([SUCore stringIsEqual:v5 to:@"Empty"])
      {
        v6 = [(MADAutoAssetDescriptor *)self assetVersion];
        if ([SUCore stringIsEqual:v6 to:@"Empty"])
        {
          v7 = [(MADAutoAssetDescriptor *)self assetFormat];
          if ([SUCore stringIsEqual:v7 to:@"Empty"])
          {
            v8 = [(MADAutoAssetDescriptor *)self build];
            if ([SUCore stringIsEqual:v8 to:@"Empty"])
            {
              v9 = [(MADAutoAssetDescriptor *)self minOSVersion];
              if ([SUCore stringIsEqual:v9 to:@"Empty"])
              {
                v10 = [(MADAutoAssetDescriptor *)self maxOSVersion];
                v11 = [SUCore stringIsEqual:v10 to:@"Empty"];
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

+ (BOOL)doesMetatadaIndicateEmptyEntry:(id)a3
{
  v3 = [a3 safeStringForKey:@"__Empty"];
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

- (BOOL)isEqualSelector:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetDescriptor *)self assetType];
  v6 = [v4 assetType];
  if ([SUCore stringIsEqual:v5 to:v6])
  {
    v7 = [(MADAutoAssetDescriptor *)self assetSpecifier];
    v8 = [v4 assetSpecifier];
    if ([SUCore stringIsEqual:v7 to:v8])
    {
      v9 = [(MADAutoAssetDescriptor *)self assetVersion];
      v10 = [v4 assetVersion];
      v11 = [SUCore stringIsEqual:v9 to:v10];
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
  v2 = [(MADAutoAssetDescriptor *)self metadata];
  v3 = [v2 safeBooleanForKey:@"Ramp"];

  return v3;
}

- (BOOL)isPreSUStagingRequired
{
  v2 = [(MADAutoAssetDescriptor *)self metadata];
  v3 = [v2 safeStringForKey:@"_PreSoftwareUpdateAssetStagingPolicy"];

  LOBYTE(v2) = [SUCore stringIsEqual:v3 to:@"Required"];
  return v2;
}

- (BOOL)existsOnFilesystem
{
  v2 = [(MADAutoAssetDescriptor *)self localContentURLOfAssetDescriptor];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v2 path];
    v5 = [v3 fileExistsAtPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wasBuiltForOSBuild:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetDescriptor *)self metadata];
  v6 = [v5 safeStringForKey:@"Build"];

  v7 = 0;
  if (v4 && v6)
  {
    v7 = [SUCore stringIsEqual:v6 to:v4];
  }

  return v7;
}

- (id)assetBuild
{
  v2 = [(MADAutoAssetDescriptor *)self metadata];
  v3 = [v2 safeStringForKey:@"Build"];

  return v3;
}

- (id)typeAndSpecifierKey
{
  v3 = [(MADAutoAssetDescriptor *)self assetType];
  v4 = [(MADAutoAssetDescriptor *)self assetSpecifier];
  v5 = [MADAutoAssetDescriptor typeAndSpecifierKeyForAssetType:v3 andAssetSpecifier:v4];

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
  v3 = [(MADAutoAssetDescriptor *)self assetVersion];

  v4 = [NSString alloc];
  v5 = [(MADAutoAssetDescriptor *)self assetType];
  v6 = [(MADAutoAssetDescriptor *)self assetSpecifier];
  v7 = v6;
  if (v3)
  {
    v8 = [(MADAutoAssetDescriptor *)self assetVersion];
    v9 = [v4 initWithFormat:@"%@^%@^%@", v5, v7, v8];
  }

  else
  {
    v9 = [v4 initWithFormat:@"%@^%@", v5, v6];
  }

  return v9;
}

- (id)selectorNameWithoutAssetType
{
  v3 = [(MADAutoAssetDescriptor *)self assetVersion];

  if (v3)
  {
    v4 = [NSString alloc];
    v5 = [(MADAutoAssetDescriptor *)self assetSpecifier];
    v6 = [(MADAutoAssetDescriptor *)self assetVersion];
    v7 = [v4 initWithFormat:@"%@^%@", v5, v6];
  }

  else
  {
    v7 = [(MADAutoAssetDescriptor *)self assetSpecifier];
  }

  return v7;
}

+ (id)typeAndSpecifierKeyForAssetType:(id)a3 andAssetSpecifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSString alloc];
  v8 = @"Empty";
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"Empty";
  }

  if (v5)
  {
    v8 = v5;
  }

  v10 = [v7 initWithFormat:@"%@|%@", v9, v8];

  return v10;
}

+ (int64_t)totalFilesystemSpaceForAutoAssetDescriptors:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) totalFilesystemSpace];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(MADAutoAssetDescriptor *)self assetType];
  v4 = [(MADAutoAssetDescriptor *)self assetId];
  v5 = getAutoLocalUrlFromTypeAndIdWithPurpose(v3, v4, 2, @"auto");

  return v5;
}

+ (BOOL)isMorePreferredAssetFormat:(id)a3 comparedTo:(id)a4
{
  v5 = a3;
  v6 = a4;
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
        v13 = [SUCore stringIsEqual:v6 to:v12, v16];
        if ((v13 & 1) != 0 || ([SUCore stringIsEqual:v5 to:v12]& 1) != 0)
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