@interface WFRemoteQuarantinePolicyManager
+ (id)sharedManager;
- (BOOL)deleteAssetBundlesExceptAssetWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)persistAssetToDisk:(id)a3 error:(id *)a4;
- (BOOL)processAsset:(id)a3 error:(id *)a4;
- (WFRemoteQuarantinePolicyManager)init;
- (id)latestRemotePolicyAssetBundle;
- (id)localizedString:(id)a3;
- (id)policyAssetBundle;
- (id)policyString;
- (id)policyStringForBundleIfValid:(id)a3;
- (id)prepareDirectoryForAssetWithIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)policyVersion;
- (void)updatePolicyWithXPCActivity:(id)a3 completionHandler:(id)a4;
@end

@implementation WFRemoteQuarantinePolicyManager

- (id)prepareDirectoryForAssetWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = WFAssetDataDirectoryForIdentifier(v6);

  v9 = [v8 path];
  if ((![v7 fileExistsAtPath:v9] || objc_msgSend(v7, "removeItemAtURL:error:", v8, a4)) && objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v9, 1, 0, a4))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)deleteAssetBundlesExceptAssetWithIdentifier:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = WFAssetDataDirectoryForIdentifier(v5);
  v8 = [v7 URLByStandardizingPath];

  v9 = WFAssetsDirectory();
  v29 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:2 error:&v29];
  v11 = v29;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__WFRemoteQuarantinePolicyManager_deleteAssetBundlesExceptAssetWithIdentifier_error___block_invoke;
  v27[3] = &unk_1E8373590;
  v12 = v8;
  v28 = v12;
  v13 = [v10 if_objectsPassingTest:v27];

  if ([v13 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (![v6 removeItemAtURL:*(*(&v23 + 1) + 8 * i) error:{a4, v23}])
          {
            v19 = 0;
            goto LABEL_12;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_12:
  }

  else
  {
    if (a4)
    {
      v20 = v11;
      *a4 = v11;
    }

    v19 = v11 == 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __85__WFRemoteQuarantinePolicyManager_deleteAssetBundlesExceptAssetWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URLByStandardizingPath];
  v4 = [v3 pathExtension];
  if ([v4 isEqualToString:@"bundle"])
  {
    v5 = [v3 isEqual:*(a1 + 32)];

    v6 = v5 ^ 1u;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)persistAssetToDisk:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 assetDataFile];
  v9 = WFExtractArchiveFile();

  if (v9)
  {
    v10 = [v7 identifier];
    v11 = [v10 recordName];
    v12 = [(WFRemoteQuarantinePolicyManager *)self prepareDirectoryForAssetWithIdentifier:v11 error:a4];

    if (!v12)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"WFRemoteQuarantinePolicyManager.m" lineNumber:233 description:@"WFRemoteQuarantinePolicyManager cannot access the filesystem."];

      v27 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v52 = 0;
    if ([v9 count] == 1)
    {
      v14 = [v9 objectAtIndexedSubscript:0];
      v15 = [v14 fileURL];
      v16 = [v15 path];
      if ([v13 fileExistsAtPath:v16 isDirectory:&v52])
      {
        v17 = v52;

        if (v17 == 1)
        {
          v18 = [v9 objectAtIndexedSubscript:0];
          v19 = [v18 fileURL];

          [v13 enumeratorAtURL:v19 includingPropertiesForKeys:0 options:0 errorHandler:0];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = v51 = 0u;
          v20 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
          if (v20)
          {
            v21 = v20;
            v39 = v9;
            v41 = v7;
            v22 = *v49;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v49 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v48 + 1) + 8 * i);
                v25 = [v24 lastPathComponent];
                v26 = [v12 URLByAppendingPathComponent:v25];

                LODWORD(v24) = [v13 moveItemAtURL:v24 toURL:v26 error:a4];
                if (!v24)
                {
                  v27 = 0;
                  goto LABEL_31;
                }
              }

              v21 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

            v27 = 1;
LABEL_31:
            v9 = v39;
            v7 = v41;
          }

          else
          {
            v27 = 1;
          }

LABEL_34:
          goto LABEL_35;
        }
      }

      else
      {
      }
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = v9;
    v29 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v40 = v9;
      v42 = v7;
      v31 = *v45;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v19);
          }

          v33 = *(*(&v44 + 1) + 8 * j);
          v34 = [v33 filename];
          v35 = [v12 URLByAppendingPathComponent:v34];

          v36 = [v33 fileURL];
          LODWORD(v34) = [v13 moveItemAtURL:v36 toURL:v35 error:a4];

          if (!v34)
          {
            v27 = 0;
            goto LABEL_28;
          }
        }

        v30 = [v19 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

      v27 = 1;
LABEL_28:
      v9 = v40;
      v7 = v42;
    }

    else
    {
      v27 = 1;
    }

    goto LABEL_34;
  }

  v27 = 0;
LABEL_36:

  v37 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)processAsset:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([v7 compatibilityVersion] != 2)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFRemoteQuarantinePolicyManager.m" lineNumber:211 description:{@"Cannot process incompatible asset. Found version: %ld. Expected: %ld", objc_msgSend(v7, "compatibilityVersion"), 2}];
  }

  v8 = [(WFRemoteQuarantinePolicyManager *)self persistAssetToDisk:v7 error:a4];
  if (v8)
  {
    v9 = [v7 identifier];
    v10 = [v9 recordName];
    v17 = 0;
    v11 = [(WFRemoteQuarantinePolicyManager *)self deleteAssetBundlesExceptAssetWithIdentifier:v10 error:&v17];
    v12 = v17;

    if (!v11)
    {
      v13 = getWFGeneralLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[WFRemoteQuarantinePolicyManager processAsset:error:]";
        v20 = 2114;
        v21 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to clean-up older assets. Error: %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)updatePolicyWithXPCActivity:(id)a3 completionHandler:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E6996CA8];
  v8 = a3;
  v9 = [v7 sharedContext];
  v10 = [v9 applicationBundle];
  v11 = [v10 objectForInfoDictionaryKey:@"CFBundleIdentifier"];

  v12 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v13 = [v12 stringForKey:@"WFRemoteQuarantineConfiguration"];

  [v11 UTF8String];
  if ((os_variant_has_internal_content() & (v13 != 0)) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"default";
  }

  v15 = v14;
  v16 = [(WFRemoteQuarantinePolicyManager *)self latestRemotePolicyAssetBundle];
  v17 = [v16 objectForInfoDictionaryKey:@"ContentVersion"];
  v18 = objc_opt_class();
  v19 = WFEnforceClass_1042(v17, v18);
  v20 = [v19 unsignedIntegerValue];

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"compatibilityVersion = %ld AND contentVersion > %ld AND configuration = %@", 2, v20, v15];

  v22 = [WFCloudKitItemRequest alloc];
  v23 = [(WFRemoteQuarantinePolicyManager *)self container];
  v24 = [(WFRemoteQuarantinePolicyManager *)self database];
  v25 = [(WFCloudKitItemRequest *)v22 initWithContainer:v23 database:v24];

  [(WFCloudKitItemRequest *)v25 setXpcActivity:v8];
  v26 = objc_opt_class();
  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"contentVersion" ascending:0];
  v36[0] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __81__WFRemoteQuarantinePolicyManager_updatePolicyWithXPCActivity_completionHandler___block_invoke;
  v33[3] = &unk_1E8373568;
  v34 = v6;
  v35 = a2;
  v33[4] = self;
  v29 = v6;
  v30 = [(WFCloudKitItemRequest *)v25 fetchItemsWithPredicate:v21 itemType:v26 groupName:@"ConfigurationAssetQuery" properties:0 sortDescriptors:v28 resultsLimit:1 qualityOfService:17 completionHandler:v33];

  v31 = *MEMORY[0x1E69E9840];
}

void __81__WFRemoteQuarantinePolicyManager_updatePolicyWithXPCActivity_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__WFRemoteQuarantinePolicyManager_updatePolicyWithXPCActivity_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E83766E8;
  v18 = *(a1 + 40);
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v6)
  {
    (*(v7 + 2))(v7, 0, v6);
  }

  else if (v5 && [v5 count])
  {
    if ([v5 count] >= 2)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"WFRemoteQuarantinePolicyManager.m" lineNumber:197 description:{@"We should only be getting at most 1 asset, as defined in the request call."}];
    }

    v9 = [v5 lastObject];
    v10 = *(a1 + 32);
    v16 = 0;
    v11 = [v10 processAsset:v9 error:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = 1;
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = v12;
    }

    (v8)[2](v8, v13, v14);
  }

  else
  {
    v8[2](v8, 2, 0);
  }
}

void __81__WFRemoteQuarantinePolicyManager_updatePolicyWithXPCActivity_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  switch(a2)
  {
    case 0:
      v7 = getWFGeneralLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[WFRemoteQuarantinePolicyManager updatePolicyWithXPCActivity:completionHandler:]_block_invoke";
        v15 = 2114;
        v16 = v6;
        v8 = "%s Failed to refresh remote quarantine policy. Error: %{public}@";
        v9 = v7;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 22;
        goto LABEL_11;
      }

      goto LABEL_12;
    case 2:
      v7 = getWFGeneralLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[WFRemoteQuarantinePolicyManager updatePolicyWithXPCActivity:completionHandler:]_block_invoke";
        v8 = "%s Remote quarantine policy is up-to-date.";
        goto LABEL_8;
      }

LABEL_12:

      break;
    case 1:
      v7 = getWFGeneralLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[WFRemoteQuarantinePolicyManager updatePolicyWithXPCActivity:completionHandler:]_block_invoke_2";
        v8 = "%s Successfully refreshed remote quarantine policy.";
LABEL_8:
        v9 = v7;
        v10 = OS_LOG_TYPE_INFO;
        v11 = 12;
LABEL_11:
        _os_log_impl(&dword_1CA256000, v9, v10, v8, &v13, v11);
        goto LABEL_12;
      }

      goto LABEL_12;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v6, v5);

  v12 = *MEMORY[0x1E69E9840];
}

- (id)policyStringForBundleIfValid:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 objectForInfoDictionaryKey:@"CompatibilityVersion"];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_1042(v5, v6);
  v8 = [v7 unsignedIntegerValue];

  if (v8 == 2)
  {
    v9 = [v4 URLForResource:@"WFRemoteQuarantinePolicy" withExtension:@"js"];
    if (v9)
    {
      v16 = 0;
      v10 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v9 encoding:4 error:&v16];
      v11 = v16;
      if ([v10 length])
      {
        v12 = v10;
      }

      else
      {
        v13 = getWFGeneralLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = "[WFRemoteQuarantinePolicyManager policyStringForBundleIfValid:]";
          v19 = 2114;
          v20 = v9;
          v21 = 2114;
          v22 = v11;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to parse remote quarantine policy file %{public}@. Error: %{public}@", buf, 0x20u);
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)latestRemotePolicyAssetBundle
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = WFAssetsDirectory();
  v14 = 0;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:2 error:&v14];
  v6 = v14;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__WFRemoteQuarantinePolicyManager_latestRemotePolicyAssetBundle__block_invoke;
  v13[3] = &unk_1E8373520;
  v13[4] = self;
  v7 = [v5 if_compactMap:v13];
  if ([v7 count])
  {
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_204];
    v9 = [v8 lastObject];
LABEL_3:

    goto LABEL_7;
  }

  if (v6 && ([v6 vc_isFileNotFound] & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = WFAssetsDirectory();
      *buf = 136315650;
      v16 = "[WFRemoteQuarantinePolicyManager latestRemotePolicyAssetBundle]";
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Encountered an error while trying to access asset bundles directory (%{public}@). Error: %{public}@", buf, 0x20u);
    }

    v9 = 0;
    goto LABEL_3;
  }

  v9 = 0;
LABEL_7:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __64__WFRemoteQuarantinePolicyManager_latestRemotePolicyAssetBundle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"bundle"];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithURL:v3];
    v7 = [*(a1 + 32) policyStringForBundleIfValid:v6];
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __64__WFRemoteQuarantinePolicyManager_latestRemotePolicyAssetBundle__block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 objectForInfoDictionaryKey:@"ContentVersion"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_1042(v6, v7);
  v9 = [v8 unsignedIntegerValue];

  v10 = [v4 numberWithUnsignedInteger:v9];
  v11 = MEMORY[0x1E696AD98];
  v12 = [v5 objectForInfoDictionaryKey:@"ContentVersion"];

  v13 = objc_opt_class();
  v14 = WFEnforceClass_1042(v12, v13);
  v15 = [v14 unsignedIntegerValue];

  v16 = [v11 numberWithUnsignedInteger:v15];
  v17 = [v10 compare:v16];

  return v17;
}

- (id)policyAssetBundle
{
  v3 = [(WFRemoteQuarantinePolicyManager *)self latestRemotePolicyAssetBundle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFRemoteQuarantinePolicyManager *)self localPolicyBundle];
  }

  v6 = v5;

  return v6;
}

- (id)localizedString:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFRemoteQuarantinePolicyManager *)self policyAssetBundle];
  v6 = [v5 localizedStringForKey:v4 value:0 table:0];
  v7 = v6;
  if (![v6 length])
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[WFRemoteQuarantinePolicyManager localizedString:]";
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Warning: Can't find remote quarantine localized string for value '%{public}@'", &v12, 0x16u);
    }

    v7 = v4;
  }

  v9 = v7;

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)policyVersion
{
  v2 = [(WFRemoteQuarantinePolicyManager *)self policyAssetBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"ContentVersion"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1042(v3, v4);
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (id)policyString
{
  v3 = [(WFRemoteQuarantinePolicyManager *)self policyAssetBundle];
  v4 = [(WFRemoteQuarantinePolicyManager *)self policyStringForBundleIfValid:v3];

  return v4;
}

- (WFRemoteQuarantinePolicyManager)init
{
  v16.receiver = self;
  v16.super_class = WFRemoteQuarantinePolicyManager;
  v3 = [(WFRemoteQuarantinePolicyManager *)&v16 init];
  if (v3)
  {
    v4 = WFShortcutsCloudKitContainer();
    container = v3->_container;
    v3->_container = v4;

    v6 = [(CKContainer *)v3->_container publicCloudDatabase];
    database = v3->_database;
    v3->_database = v6;

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 URLForResource:@"RemoteQuarantineAsset" withExtension:@"bundle"];

    v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v9];
    localPolicyBundle = v3->_localPolicyBundle;
    v3->_localPolicyBundle = v10;

    v12 = [(WFRemoteQuarantinePolicyManager *)v3 policyStringForBundleIfValid:v3->_localPolicyBundle];

    if (!v12)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v3 file:@"WFRemoteQuarantinePolicyManager.m" lineNumber:64 description:{@"Local policy asset bundle %@ is not valid", @"com.apple.Shortcuts.RemoteQuarantineAsset"}];
    }

    v13 = v3;
  }

  return v3;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_1094);
  }

  v3 = sharedManager_policyManager;

  return v3;
}

void __48__WFRemoteQuarantinePolicyManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WFRemoteQuarantinePolicyManager);
  v1 = sharedManager_policyManager;
  sharedManager_policyManager = v0;
}

@end