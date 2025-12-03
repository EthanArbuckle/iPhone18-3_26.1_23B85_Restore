@interface NSURL(PBFAdditions)
+ (id)pbf_URLsMatchingFileName:()PBFAdditions beneathURL:error:;
+ (id)pbf_archivedDataStoreBaseURL;
+ (id)pbf_dataStoreExtensionContainerURLForBaseURL:()PBFAdditions version:;
+ (id)pbf_dataStoreSQLiteDatabaseURLForBaseURL:()PBFAdditions version:;
+ (id)pbf_dataStoreSQLiteDatabaseURLForDataStoreURL:()PBFAdditions;
+ (id)pbf_dataStoreURLForBaseURL:()PBFAdditions version:;
+ (id)pbf_galleryCacheURLForBaseURL:()PBFAdditions version:;
+ (id)pbf_switcherConfigurationOrderingURLForBaseURL:()PBFAdditions version:;
+ (id)pbf_switcherConfigurationOrderingURLForDataStoreURL:()PBFAdditions;
+ (id)pbf_switcherSelectedConfigurationURLForBaseURL:()PBFAdditions version:;
+ (id)pbf_switcherSelectedConfigurationURLForDataStoreURL:()PBFAdditions;
- (BOOL)pbf_isWithinScratchDirectory;
- (id)pbf_snapshotDefinitionForPosterSnapshotURL;
- (uint64_t)pbf_URLConformsToExpectedResourceValues:()PBFAdditions error:;
- (uint64_t)pbf_URLIsReachableAndConformToResourceValues:()PBFAdditions error:;
- (uint64_t)pbf_URLIsReachableAndConformsToAttributeValues:()PBFAdditions error:;
- (uint64_t)pbf_isLegacyPosterSnapshot;
- (uint64_t)pbf_isSnapshotBundle;
- (uint64_t)pbf_recursivelyUpdateFileAttributes:()PBFAdditions error:;
- (uint64_t)pbf_recursivelyUpdateResourceValues:()PBFAdditions error:;
- (uint64_t)pbf_recursivelyValidateContentsAreReachableAndConformToAttributeValues:()PBFAdditions URLsNotConformingToAttributes:error:;
- (uint64_t)pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues:()PBFAdditions URLsNotConformingToAttributes:error:;
- (uint64_t)pbf_updateFileAttributes:()PBFAdditions error:;
@end

@implementation NSURL(PBFAdditions)

- (uint64_t)pbf_isSnapshotBundle
{
  result = [self pbf_isDirectory];
  if (result)
  {
    lastPathComponent = [self lastPathComponent];
    v4 = [lastPathComponent containsString:@"SnapshotCache.cachedb"];

    return v4;
  }

  return result;
}

- (BOOL)pbf_isWithinScratchDirectory
{
  path = [self path];
  v2 = path;
  if (!path || (v3 = [path rangeOfString:@"/versions/"], v3 == 0x7FFFFFFFFFFFFFFFLL) || ((v5 = v3 + v4, v6 = objc_msgSend(v2, "rangeOfString:options:range:", @"/scratch/", 0, v5, objc_msgSend(v2, "length") - v5), v6 != 0x7FFFFFFFFFFFFFFFLL) ? (v7 = v6 == v5) : (v7 = 1), v7))
  {
    v12 = 0;
  }

  else
  {
    v9 = [v2 substringWithRange:{v5, v6 - v5}];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];
    v12 = [v9 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (uint64_t)pbf_isLegacyPosterSnapshot
{
  lastPathComponent = [self lastPathComponent];
  v3 = [lastPathComponent hasPrefix:@"RuntimeSnapshot"];
  if (([lastPathComponent hasPrefix:@"SNAPSHOT"] & 1) != 0 || v3)
  {
    pathExtension = [lastPathComponent pathExtension];
    defaultFormat = [MEMORY[0x277D3EF60] defaultFormat];
    filenameExtension = [defaultFormat filenameExtension];
    v8 = [pathExtension caseInsensitiveCompare:filenameExtension];

    if (v8)
    {
      v4 = 0;
    }

    else if ((v3 & 1) != 0 || ([self pbf_snapshotDefinitionForPosterSnapshotURL], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pbf_snapshotDefinitionForPosterSnapshotURL
{
  lastPathComponent = [self lastPathComponent];
  v2 = [lastPathComponent componentsSeparatedByString:@"-"];
  firstObject = [v2 firstObject];

  v4 = PBFSnapshotDefinitionForIdentifier(firstObject);

  return v4;
}

- (uint64_t)pbf_URLIsReachableAndConformsToAttributeValues:()PBFAdditions error:
{
  v6 = a3;
  if ([self checkResourceIsReachableAndReturnError:a4])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [self path];
    v21 = 0;
    v9 = [defaultManager attributesOfItemAtPath:path error:&v21];
    v10 = v21;

    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        v12 = 0;
        *a4 = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__NSURL_PBFAdditions__pbf_URLIsReachableAndConformsToAttributeValues_error___block_invoke;
      v14[3] = &unk_2782C7F30;
      v15 = v9;
      v16 = &v17;
      [v6 enumerateKeysAndObjectsUsingBlock:v14];
      v12 = *(v18 + 24) ^ 1;

      _Block_object_dispose(&v17, 8);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (uint64_t)pbf_URLConformsToExpectedResourceValues:()PBFAdditions error:
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    allKeys = [v6 allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = a4;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v6 objectForKeyedSubscript:v12];
          v22 = 0;
          v23 = 0;
          v14 = [self getResourceValue:&v23 forKey:v12 error:&v22];
          v15 = v23;
          v16 = v22;
          v17 = v16;
          if (v14)
          {
            if (([v13 isEqual:v15] & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else if (v16)
          {
            if (v21)
            {
              v19 = v16;
              *v21 = v17;
            }

LABEL_17:

            v18 = 0;
            goto LABEL_18;
          }
        }

        v9 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_18:
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (uint64_t)pbf_recursivelyValidateContentsAreReachableAndConformToAttributeValues:()PBFAdditions URLsNotConformingToAttributes:error:
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__5;
  v46 = __Block_byref_object_dispose__5;
  if (a4)
  {
    v47 = objc_opt_new();
    *a4 = v43[5];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v47 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __130__NSURL_PBFAdditions__pbf_recursivelyValidateContentsAreReachableAndConformToAttributeValues_URLsNotConformingToAttributes_error___block_invoke;
  aBlock[3] = &unk_2782C7F58;
  v41 = v10;
  aBlock[4] = &v42;
  v11 = _Block_copy(aBlock);
  if ([self checkResourceIsReachableAndReturnError:a5] & 1) != 0 && (objc_msgSend(self, "pbf_URLIsReachableAndConformsToAttributeValues:error:", v8, a5))
  {
    v39 = 0;
    v12 = *MEMORY[0x277CBE868];
    v13 = [self getResourceValue:&v39 forKey:*MEMORY[0x277CBE868] error:a5];
    v14 = v39;
    v15 = v14;
    if (v13)
    {
      if ([v14 BOOLValue])
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__5;
        v37 = __Block_byref_object_dispose__5;
        v38 = 0;
        v27 = [MEMORY[0x277CBEB58] setWithObject:v12];
        allKeys = [v8 allKeys];
        [v27 addObjectsFromArray:allKeys];

        allObjects = [v27 allObjects];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __130__NSURL_PBFAdditions__pbf_recursivelyValidateContentsAreReachableAndConformToAttributeValues_URLsNotConformingToAttributes_error___block_invoke_2;
        v32[3] = &unk_2782C7570;
        v32[4] = &v33;
        v18 = [defaultManager enumeratorAtURL:self includingPropertiesForKeys:allObjects options:0 errorHandler:v32];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v48 count:16];
        if (v20)
        {
          v21 = *v29;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v28 + 1) + 8 * i);
              v24 = v34[5];
              if (v24)
              {
                if (a5)
                {
                  *a5 = v24;
                }

LABEL_24:
                v11[2](v11, v23);
                v25 = 0;
                goto LABEL_25;
              }

              if (![*(*(&v28 + 1) + 8 * i) pbf_URLIsReachableAndConformsToAttributeValues:v8 error:a5])
              {
                goto LABEL_24;
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v28 objects:v48 count:16];
            v25 = 1;
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v25 = 1;
        }

LABEL_25:

        _Block_object_dispose(&v33, 8);
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      (v11)[2](v11, self);
      v25 = 0;
    }
  }

  else
  {
    (v11)[2](v11, self);
    v25 = 0;
  }

  _Block_object_dispose(&v42, 8);
  return v25;
}

- (uint64_t)pbf_recursivelyUpdateFileAttributes:()PBFAdditions error:
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__5;
  v21[4] = __Block_byref_object_dispose__5;
  v22 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__NSURL_PBFAdditions__pbf_recursivelyUpdateFileAttributes_error___block_invoke;
  v20[3] = &unk_2782C7570;
  v20[4] = v21;
  [defaultManager enumeratorAtURL:self includingPropertiesForKeys:0 options:1 errorHandler:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v8 = v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        path = [*(*(&v16 + 1) + 8 * v11) path];
        v13 = [defaultManager setAttributes:v6 ofItemAtPath:path error:a4];

        if ((v13 & 1) == 0)
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  _Block_object_dispose(v21, 8);
  return v14;
}

- (uint64_t)pbf_updateFileAttributes:()PBFAdditions error:
{
  v6 = MEMORY[0x277CCAA00];
  v7 = a3;
  defaultManager = [v6 defaultManager];
  path = [self path];
  v10 = [defaultManager setAttributes:v7 ofItemAtPath:path error:a4];

  return v10;
}

- (uint64_t)pbf_URLIsReachableAndConformToResourceValues:()PBFAdditions error:
{
  v6 = a3;
  if ([self checkResourceIsReachableAndReturnError:a4])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__NSURL_PBFAdditions__pbf_URLIsReachableAndConformToResourceValues_error___block_invoke;
    v11[3] = &unk_2782C7F80;
    v11[4] = self;
    v11[5] = &v16;
    v11[6] = &v12;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = *(v13 + 24);
    if (v7 == 1)
    {
      if (a4)
      {
        v8 = v17[5];
        if (v8)
        {
          *a4 = v8;
        }
      }
    }

    v9 = v7 ^ 1u;
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues:()PBFAdditions URLsNotConformingToAttributes:error:
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__5;
  v46 = __Block_byref_object_dispose__5;
  if (a4)
  {
    v47 = objc_opt_new();
    *a4 = v43[5];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v47 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__NSURL_PBFAdditions__pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues_URLsNotConformingToAttributes_error___block_invoke;
  aBlock[3] = &unk_2782C7F58;
  v41 = v10;
  aBlock[4] = &v42;
  v11 = _Block_copy(aBlock);
  if ([self checkResourceIsReachableAndReturnError:a5] & 1) != 0 && (objc_msgSend(self, "pbf_URLIsReachableAndConformToResourceValues:error:", v8, a5))
  {
    v39 = 0;
    v12 = *MEMORY[0x277CBE868];
    v13 = [self getResourceValue:&v39 forKey:*MEMORY[0x277CBE868] error:a5];
    v14 = v39;
    v15 = v14;
    if (v13)
    {
      if ([v14 BOOLValue])
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__5;
        v37 = __Block_byref_object_dispose__5;
        v38 = 0;
        v27 = [MEMORY[0x277CBEB58] setWithObject:v12];
        allKeys = [v8 allKeys];
        [v27 addObjectsFromArray:allKeys];

        allObjects = [v27 allObjects];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __129__NSURL_PBFAdditions__pbf_recursivelyValidateContentsAreReachableAndConformToResourceValues_URLsNotConformingToAttributes_error___block_invoke_2;
        v32[3] = &unk_2782C7570;
        v32[4] = &v33;
        v18 = [defaultManager enumeratorAtURL:self includingPropertiesForKeys:allObjects options:0 errorHandler:v32];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v48 count:16];
        if (v20)
        {
          v21 = *v29;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v29 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v28 + 1) + 8 * i);
              v24 = v34[5];
              if (v24)
              {
                if (a5)
                {
                  *a5 = v24;
                }

LABEL_24:
                v11[2](v11, v23);
                v25 = 0;
                goto LABEL_25;
              }

              if (![*(*(&v28 + 1) + 8 * i) pbf_URLIsReachableAndConformToResourceValues:v8 error:a5])
              {
                goto LABEL_24;
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v28 objects:v48 count:16];
            v25 = 1;
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v25 = 1;
        }

LABEL_25:

        _Block_object_dispose(&v33, 8);
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      (v11)[2](v11, self);
      v25 = 0;
    }
  }

  else
  {
    (v11)[2](v11, self);
    v25 = 0;
  }

  _Block_object_dispose(&v42, 8);
  return v25;
}

- (uint64_t)pbf_recursivelyUpdateResourceValues:()PBFAdditions error:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__5;
  v23[4] = __Block_byref_object_dispose__5;
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__NSURL_PBFAdditions__pbf_recursivelyUpdateResourceValues_error___block_invoke;
  v22[3] = &unk_2782C7570;
  v22[4] = v23;
  [defaultManager enumeratorAtURL:self includingPropertiesForKeys:0 options:0 errorHandler:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v17 = 0;
        v13 = [v12 setResourceValues:v6 error:&v17];
        v14 = v17;
        if ((v13 & 1) == 0)
        {
          if (a4)
          {
            v14 = v14;
            *a4 = v14;
          }

          v15 = 0;
          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  _Block_object_dispose(v23, 8);
  return v15;
}

+ (id)pbf_dataStoreURLForBaseURL:()PBFAdditions version:
{
  if (a4 > 2)
  {
    v10 = a3;
    v7 = [self pbf_dataStoreVersionContainingURLForBaseURL:v10];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    stringValue = [v6 stringValue];
    v8 = [v7 URLByAppendingPathComponent:stringValue isDirectory:1];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a3;
    v7 = [v5 stringWithFormat:@"PRDataStore_%lu", a4];
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];
  }

  return v8;
}

+ (id)pbf_dataStoreExtensionContainerURLForBaseURL:()PBFAdditions version:
{
  v2 = [self pbf_dataStoreURLForBaseURL:? version:?];
  v3 = [self pbf_dataStoreExtensionContainerURLForVersionDataStoreURL:v2];

  return v3;
}

+ (id)pbf_galleryCacheURLForBaseURL:()PBFAdditions version:
{
  v1 = [self pbf_dataStoreURLForBaseURL:? version:?];
  v2 = [v1 URLByAppendingPathComponent:@"GalleryCache" isDirectory:1];

  return v2;
}

+ (id)pbf_archivedDataStoreBaseURL
{
  if (pbf_archivedDataStoreBaseURL_onceToken != -1)
  {
    +[NSURL(PBFAdditions) pbf_archivedDataStoreBaseURL];
  }

  v1 = pbf_archivedDataStoreBaseURL_archivedDataStoreBaseURL;

  return v1;
}

+ (id)pbf_dataStoreSQLiteDatabaseURLForBaseURL:()PBFAdditions version:
{
  if (a4 >= 0x3C)
  {
    v6 = [self pbf_dataStoreURLForBaseURL:? version:?];
    v4 = [self pbf_dataStoreSQLiteDatabaseURLForDataStoreURL:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pbf_dataStoreSQLiteDatabaseURLForDataStoreURL:()PBFAdditions
{
  v3 = [a3 URLByAppendingPathComponent:@"PBFPosterExtensionDataStoreSQLiteDatabase"];
  v4 = [v3 URLByAppendingPathExtension:@"sqlite3"];

  return v4;
}

+ (id)pbf_switcherConfigurationOrderingURLForBaseURL:()PBFAdditions version:
{
  v2 = [self pbf_dataStoreURLForBaseURL:? version:?];
  v3 = [self pbf_switcherConfigurationOrderingURLForDataStoreURL:v2];

  return v3;
}

+ (id)pbf_switcherConfigurationOrderingURLForDataStoreURL:()PBFAdditions
{
  v3 = [a3 URLByAppendingPathComponent:@"SwitcherConfigurationOrdering" isDirectory:0];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

+ (id)pbf_switcherSelectedConfigurationURLForBaseURL:()PBFAdditions version:
{
  v2 = [self pbf_dataStoreURLForBaseURL:? version:?];
  v3 = [self pbf_switcherSelectedConfigurationURLForDataStoreURL:v2];

  return v3;
}

+ (id)pbf_switcherSelectedConfigurationURLForDataStoreURL:()PBFAdditions
{
  v3 = [a3 URLByAppendingPathComponent:@"SelectedConfigurationIdentifier" isDirectory:0];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

+ (id)pbf_URLsMatchingFileName:()PBFAdditions beneathURL:error:
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v24 = objc_opt_new();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = v6;
  uRLByStandardizingPath = [v6 URLByStandardizingPath];
  v9 = *MEMORY[0x277CBE868];
  v31[0] = *MEMORY[0x277CBE868];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v11 = [defaultManager enumeratorAtURL:uRLByStandardizingPath includingPropertiesForKeys:v10 options:16 errorHandler:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        [v17 getResourceValue:&v25 forKey:v9 error:0];
        v18 = v25;
        if (([v18 BOOLValue] & 1) == 0)
        {
          lastPathComponent = [v17 lastPathComponent];
          v20 = [lastPathComponent isEqualToString:v5];

          if (v20)
          {
            [v24 addObject:v17];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  if ([v24 count])
  {
    array = [v24 array];
  }

  else
  {
    array = 0;
  }

  return array;
}

@end