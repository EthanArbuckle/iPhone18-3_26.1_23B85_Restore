@interface SUSoftwareUpdateAssetMatcher
+ (id)matcherForCurrentDeviceWithInfo:(id)info;
- (BOOL)_isDeviceEligibleForUpdate:(id)update;
- (BOOL)_isPossibleSoftwareUpdate:(id)update;
- (id)_copyMatchingAssetsAfterSortingAndFiltering:(id)filtering;
- (id)_createCleanOSVersionString:(id)string;
- (id)_createSortedAndFilteredAssetResults:(id)results usingFirstKey:(id)key secondKey:(id)secondKey;
- (id)_filterPatchesIfNecessary:(id)necessary;
- (id)_findMatchFromCandidates:(id)candidates error:(id *)error;
- (unint64_t)_getIndexOfHighestVersionedAsset:(id)asset usingFirstKey:(id)key secondKey:(id)secondKey;
- (void)_modifyMADownloadOptions:(id)options;
- (void)dealloc;
@end

@implementation SUSoftwareUpdateAssetMatcher

+ (id)matcherForCurrentDeviceWithInfo:(id)info
{
  info = [[SUSoftwareUpdateAssetMatcher alloc] initWithVersion:+[SUUtility currentProductVersion](SUUtility build:"currentProductVersion") productType:+[SUUtility currentProductBuild](SUUtility releaseType:"currentProductBuild") interestedStates:+[SUUtility currentProductType](SUUtility matcherInfo:"currentProductType"), +[SUUtility currentReleaseType], 0, info];

  return info;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSoftwareUpdateAssetMatcher;
  [(SUSoftwareUpdateAssetMatcher *)&v3 dealloc];
}

- (id)_findMatchFromCandidates:(id)candidates error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [candidates count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [candidates objectAtIndex:i];
      if ([(SUSoftwareUpdateAssetMatcher *)self _isPossibleSoftwareUpdate:v11])
      {
        if (self->_checkTatsu && ![(SUSoftwareUpdateAssetMatcher *)self _isDeviceEligibleForUpdate:v11])
        {
          SULogInfo(@"Ignoring SU match due to personalization eligibility check: %@", v12, v13, v14, v15, v16, v17, v18, v11);
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v19 = [(SUSoftwareUpdateAssetMatcher *)self _copyMatchingAssetsAfterSortingAndFiltering:v6];
  v20 = [v19 count];
  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_23;
  }

  if (v20 != 1)
  {
    array = [MEMORY[0x277CBEB18] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v24)
    {
      v32 = v24;
      v33 = *v39;
      do
      {
        v34 = 0;
        do
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v19);
          }

          [array addObject:{objc_msgSend(*(*(&v38 + 1) + 8 * v34++), "attributes")}];
        }

        while (v32 != v34);
        v32 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v32);
    }

    SULogInfo(@"Unable to find update due to ambiguous results: %@", v25, v26, v27, v28, v29, v30, v31, array);
LABEL_23:
    [SUUtility assignError:error withCode:3];
    v22 = 0;
    goto LABEL_24;
  }

  v22 = [v19 objectAtIndex:0];
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_modifyMADownloadOptions:(id)options
{
  if (MGGetBoolAnswer())
  {
    v5 = 60;
  }

  else
  {
    v5 = 30;
  }

  [options setTimeoutIntervalForResource:v5];
  [options setDiscretionary:0];
  [options setAllowsCellularAccess:1];
  [options setAllowsExpensiveAccess:1];
  if ([objc_msgSend(MEMORY[0x277D262A0] "sharedConnection")])
  {
    [options setSupervised:1];
    v6 = [(NSDictionary *)self->_matcherInfo objectForKey:@"RequestedPMV"];
    if (v6)
    {
      v14 = v6;
      SULogInfo(@"Requesting PMV %@", v7, v8, v9, v10, v11, v12, v13, v6);
      [options setRequestedProductVersion:v14];
    }

    v15 = [(NSDictionary *)self->_matcherInfo objectForKey:@"delayPeriod"];
    if (v15)
    {
      v16 = v15;
      if ([v15 longValue] >= 1 && objc_msgSend(v16, "longValue") <= 90)
      {
        longValue = [v16 longValue];
        SULogInfo(@"Requesting delay period %lu", v18, v19, v20, v21, v22, v23, v24, longValue);
        [options setDelayPeriod:{objc_msgSend(v16, "longValue")}];
      }
    }
  }

  v25 = [(NSDictionary *)self->_matcherInfo objectForKey:kSUScanTypeKey];
  if (v25)
  {
    v26 = v25;
    if (![options additionalServerParams])
    {
      [options setAdditionalServerParams:{objc_msgSend(MEMORY[0x277CBEB38], "dictionary")}];
    }

    [objc_msgSend(options "additionalServerParams")];
  }

  v27 = [(NSDictionary *)self->_matcherInfo objectForKey:kSUSessionIDKey];
  if (v27)
  {
    v28 = v27;
    if (![options additionalServerParams])
    {
      [options setAdditionalServerParams:{objc_msgSend(MEMORY[0x277CBEB38], "dictionary")}];
    }

    additionalServerParams = [options additionalServerParams];

    [additionalServerParams setSafeObject:v28 forKey:@"SessionId"];
  }
}

- (id)_createCleanOSVersionString:(id)string
{
  stringCopy = string;
  if ([string length] >= 4 && objc_msgSend(stringCopy, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) != 0x7FFFFFFFFFFFFFFFLL)
  {
    stringCopy = [stringCopy stringByReplacingCharactersInRange:0 withString:{4, &stru_287B45B60}];
    SULogInfo(@"9.9. replaced in currSecond. New version string: %@", v4, v5, v6, v7, v8, v9, v10, stringCopy);
  }

  return stringCopy;
}

- (unint64_t)_getIndexOfHighestVersionedAsset:(id)asset usingFirstKey:(id)key secondKey:(id)secondKey
{
  v18 = [asset count];
  if (v18)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v17 = 0;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [asset objectAtIndex:v7];
      v14 = v13;
      if (key && (v9 = [objc_msgSend(v13 "attributes")], !objc_msgSend(key, "compare:", @"OSVersion")))
      {
        v9 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v9];
        if (secondKey)
        {
LABEL_6:
          v8 = [objc_msgSend(v14 "attributes")];
          if (![secondKey compare:@"OSVersion"])
          {
            v8 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v8];
          }
        }
      }

      else if (secondKey)
      {
        goto LABEL_6;
      }

      if (!(v11 | v10) || (v9 == v11 || v11 && v9 && (CFStringCompare(v9, v11, 0x40uLL) & 0x8000000000000000) == 0) && (v8 == v10 || v10 && v8 && (CFStringCompare(v8, v10, 0x40uLL) & 0x8000000000000000) == 0))
      {
        v17 = v7;
        v11 = v9;
        v10 = v8;
      }

      objc_autoreleasePoolPop(v12);
      if (v18 == ++v7)
      {
        return v17;
      }
    }
  }

  return 0;
}

- (id)_createSortedAndFilteredAssetResults:(id)results usingFirstKey:(id)key secondKey:(id)secondKey
{
  v20 = [results objectAtIndex:{-[SUSoftwareUpdateAssetMatcher _getIndexOfHighestVersionedAsset:usingFirstKey:secondKey:](self, "_getIndexOfHighestVersionedAsset:usingFirstKey:secondKey:")}];
  v7 = [results count];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = v7;
  if (v7)
  {
    for (i = 0; v18 != i; ++i)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [results objectAtIndex:i];
      v21 = v10;
      if (key)
      {
        v11 = [objc_msgSend(v10 "attributes")];
        v12 = [objc_msgSend(v20 "attributes")];
        if (![key compare:@"OSVersion"])
        {
          v11 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v11];
          v12 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v12];
        }

        v10 = v21;
        if (secondKey)
        {
LABEL_7:
          v13 = [objc_msgSend(v10 "attributes")];
          v14 = [objc_msgSend(v20 "attributes")];
          if (![secondKey compare:@"OSVersion"])
          {
            v13 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v13];
            v14 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v14];
          }

          goto LABEL_11;
        }
      }

      else
      {
        v11 = 0;
        v12 = 0;
        if (secondKey)
        {
          goto LABEL_7;
        }
      }

      v13 = 0;
      v14 = 0;
LABEL_11:
      if ((v11 == v12 || v11 && v12 && CFStringCompare(v11, v12, 0x40uLL) == kCFCompareEqualTo) && (v13 == v14 || v13 && v14 && CFStringCompare(v13, v14, 0x40uLL) == kCFCompareEqualTo))
      {
        [v16 addObject:v21];
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  return v16;
}

- (id)_copyMatchingAssetsAfterSortingAndFiltering:(id)filtering
{
  filteringCopy = filtering;
  if (!filtering)
  {
    return filteringCopy;
  }

  if ([filtering count] <= 1)
  {

    return [filteringCopy copy];
  }

  v6 = [(SUSoftwareUpdateAssetMatcher *)self _createSortedAndFilteredAssetResults:[(SUSoftwareUpdateAssetMatcher *)self _filterPatchesIfNecessary:filteringCopy] usingFirstKey:@"Build" secondKey:@"OSVersion"];
  filteringCopy = v6;
  if (!v6 || [v6 count] < 2)
  {
    return filteringCopy;
  }

  v7 = filteringCopy;

  return [(SUSoftwareUpdateAssetMatcher *)self _createSortedAndFilteredAssetResults:filteringCopy usingFirstKey:@"PrerequisiteBuild" secondKey:@"PrerequisiteOSVersion"];
}

- (id)_filterPatchesIfNecessary:(id)necessary
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = +[SUState currentState];
  v19 = [necessary mutableCopy];
  if (!-[SUPreferences disableFullReplacementFallback](+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), "disableFullReplacementFallback") && [necessary count])
  {
    v4 = 0;
    do
    {
      v5 = [necessary objectAtIndex:v4];
      v6 = [objc_msgSend(v5 "attributes")];
      v7 = [objc_msgSend(v5 "attributes")];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      failedPatchDescriptors = [v20 failedPatchDescriptors];
      v9 = [failedPatchDescriptors countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(failedPatchDescriptors);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            productBuildVersion = [v13 productBuildVersion];
            if (productBuildVersion)
            {
              v15 = v6 == productBuildVersion;
            }

            else
            {
              v15 = 0;
            }

            if (v15 && v7 != 0)
            {
              [v19 removeObject:v13];
              goto LABEL_19;
            }
          }

          v10 = [failedPatchDescriptors countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }

LABEL_19:
      ++v4;
    }

    while ([necessary count] > v4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_isDeviceEligibleForUpdate:(id)update
{
  if (![objc_msgSend(update "attributes")])
  {
    return 1;
  }

  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v6 = MGCopyAnswer();
  v14 = v6;
  if (v3 && v4 && v5 && v6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v16 = Mutable;
    if (Mutable)
    {
      MEMORY[0x26D668090](Mutable, *MEMORY[0x277D82520], 1);
      v17 = *MEMORY[0x277D82510];
      CFBooleanGetValue(v14);
      AMAuthInstallSupportDictionarySetBoolean();
      CFDictionarySetValue(v16, *MEMORY[0x277D82508], v3);
      CFDictionarySetValue(v16, *MEMORY[0x277D82500], v4);
      CFDictionarySetValue(v16, *MEMORY[0x277D824F8], v5);
      v18 = AMAuthInstallCreate();
      v19 = AMAuthInstallApSetParameters();
      if (v19)
      {
        SULogInfo(@"Could not set AP fusings: %d", v20, v21, v22, v23, v24, v25, v26, v19);
LABEL_26:
        v28 = 0;
LABEL_27:
        CFRelease(v3);
        v27 = v28;
        v29 = v18;
        v30 = v16;
        if (!v4)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v32 = AMAuthInstallRequestAbbreviatedSendSync();
      if (v32)
      {
        SULogInfo(@"Personalization request failed: %d", v33, v34, v35, v36, v37, v38, v39, v32);
        goto LABEL_26;
      }

      if (!CFDictionaryContainsKey(0, @"@ServerVersion") || CFDictionaryGetCount(0) >= 2)
      {
        SULogInfo(@"Response from tatsu contains more than 1 key. Please file a bug.", v40, v41, v42, v43, v44, v45, v46, v54);
        SULogInfo(@"Tatsu response: %@", v47, v48, v49, v50, v51, v52, v53, 0);
      }

      SULogDebug(@"Tatsu response: %@", v40, v41, v42, v43, v44, v45, v46, 0);
    }

    else
    {
      v18 = 0;
    }

    v28 = 1;
    goto LABEL_27;
  }

  SULogInfo(@"Could not gather necessary information for personalization request", v7, v8, v9, v10, v11, v12, v13, v54);
  v28 = 0;
  v18 = 0;
  v16 = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  if (v3)
  {
    goto LABEL_27;
  }

  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

LABEL_13:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v27;
}

- (BOOL)_isPossibleSoftwareUpdate:(id)update
{
  v5 = [objc_msgSend(update "attributes")];
  if (!v5)
  {
    SULogDebug(@"Missing key %@ from asset map entry or type wasn't a string", v6, v7, v8, v9, v10, v11, v12, @"OSVersion");
LABEL_19:
    LOBYTE(v44) = 0;
    return v44;
  }

  v13 = [(SUSoftwareUpdateAssetMatcher *)self _createCleanOSVersionString:v5];
  v14 = [objc_msgSend(update "attributes")];
  if (!v14)
  {
    SULogDebug(@"Missing key %@ from asset map entry or type wasn't a string.", v15, v16, v17, v18, v19, v20, v21, @"Build");
    goto LABEL_19;
  }

  v22 = v14;
  v23 = [objc_msgSend(update "attributes")];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v48 = @"ReleaseType";
LABEL_17:
      v43 = @"Mistyped key %@ from asset map entry (expected string)";
      goto LABEL_18;
    }
  }

  v31 = [objc_msgSend(update "attributes")];
  if (!v31)
  {
    SULogDebug(@"Missing key %@ from asset map entry or type wasn't an array", v32, v33, v34, v35, v36, v37, v38, @"SupportedDevices");
    goto LABEL_19;
  }

  v39 = v31;
  v40 = @"PrerequisiteBuild";
  v41 = [objc_msgSend(update "attributes")];
  if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v40 = @"PrerequisiteOSVersion", (v42 = [objc_msgSend(update "attributes")]) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v48 = v40;
    goto LABEL_17;
  }

  if ((v41 != 0) != (v42 != 0))
  {
    v43 = @"Cannot have prerequisite version or build without it's sibling.";
LABEL_18:
    SULogDebug(v43, v24, fromBuild, v26, v27, v28, v29, v30, v48);
    goto LABEL_19;
  }

  if (!self->_fromVersion)
  {
    v43 = @"No version to search from";
    goto LABEL_18;
  }

  fromBuild = self->_fromBuild;
  if (!fromBuild)
  {
    v43 = @"No build to search from";
    goto LABEL_18;
  }

  if (!self->_fromProductType)
  {
    v43 = @"No product type to search for";
    goto LABEL_18;
  }

  v49 = [v22 compareNumerically:?];
  if (![(SUPreferences *)self->_preferences disableBuildNumberComparison])
  {
    if ([v13 compareNumerically:self->_fromVersion] == -1)
    {
      goto LABEL_19;
    }

    if (!([(SUPreferences *)self->_preferences allowSameBuildUpdates]? v49 != -1 : v49 == 1))
    {
      goto LABEL_19;
    }
  }

  v44 = [v39 containsObject:self->_fromProductType];
  if (!v44)
  {
    return v44;
  }

  if (v41 && [v41 compareNumerically:self->_fromBuild] || v42 && objc_msgSend(v42, "compareNumerically:", self->_fromVersion))
  {
    goto LABEL_19;
  }

  fromReleaseType = self->_fromReleaseType;
  if (fromReleaseType == v23)
  {
    goto LABEL_39;
  }

  LOBYTE(v44) = 0;
  if (v23 && fromReleaseType)
  {
    if ([(NSString *)self->_fromReleaseType compare:v23])
    {
      goto LABEL_19;
    }

LABEL_39:
    LOBYTE(v44) = 1;
  }

  return v44;
}

@end