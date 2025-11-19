@interface VCIntentDefinitionManager
+ (id)allBundleIdentifiers;
+ (id)appInfoForBundleID:(id)a3;
+ (id)intentDefinitionBundleURLForBundleID:(id)a3;
+ (id)intentDefinitionURLsForBundleID:(id)a3;
+ (id)intentDefinitionURLsForBundleID:(id)a3 inDirectory:(id)a4;
@end

@implementation VCIntentDefinitionManager

+ (id)allBundleIdentifiers
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = WFSyncedDefinitionDirectoryURL();
  v22[0] = v2;
  v3 = WFBundledDefinitionDirectoryURL();
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v5 = [v4 if_flatMap:&__block_literal_global_7024];
  v6 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 wf_fileIsDirectory])
        {
          v13 = [v12 lastPathComponent];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v6 allObjects];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void *__49__VCIntentDefinitionManager_allBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:&v12];
  v5 = v12;

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6 && ([v5 vc_isFileNotFound] & 1) == 0)
  {
    v7 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "+[VCIntentDefinitionManager allBundleIdentifiers]_block_invoke";
      v15 = 2114;
      v16 = v2;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to enumerate search directory %{public}@ for synced application data: %{public}@", buf, 0x20u);
    }
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)appInfoForBundleID:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFSyncedDefinitionDirectoryURL();
  v33 = v3;
  v5 = WFDefinitionDirectoryURLsForBundleIdentifier();

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v38;
    v10 = @"AppInfo.appinfo";
    v11 = 0x277CCA000uLL;
    *&v7 = 136315906;
    v31 = v7;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [*(*(&v37 + 1) + 8 * v12) URLByAppendingPathComponent:{v10, v31}];
      v14 = [*(v11 + 2560) defaultManager];
      v15 = [v13 path];
      v16 = [v14 isReadableFileAtPath:v15];

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      v36 = 0;
      v18 = [v17 initWithContentsOfURL:v13 options:0 error:&v36];
      v19 = v36;
      v20 = v19;
      if (v18)
      {
        v21 = v8;
        v22 = v9;
        v23 = v11;
        v24 = v10;
        v35 = 0;
        v25 = [MEMORY[0x277CD3A68] appInfoWithData:v18 error:&v35];
        v26 = v35;
        if (v26)
        {
          v32 = v25;
          v27 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v42 = "+[VCIntentDefinitionManager appInfoForBundleID:]";
            v43 = 2114;
            v44 = v18;
            v45 = 2114;
            v46 = v33;
            v47 = 2114;
            v48 = v13;
            v49 = 2114;
            v50 = v26;
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Failed to create INAppInfo from data: %{public}@, bundleID: %{public}@, appInfoURL: %{public}@: %{public}@", buf, 0x34u);
          }

          v25 = v32;
        }

        if (v25)
        {

          goto LABEL_26;
        }

        v10 = v24;
        v11 = v23;
        v9 = v22;
        v8 = v21;
        goto LABEL_21;
      }

      if (([v19 vc_isFileNotFound]& 1) != 0)
      {
        goto LABEL_21;
      }

      if (v20)
      {
        v28 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = v31;
          v42 = "+[VCIntentDefinitionManager appInfoForBundleID:]";
          v43 = 2114;
          v44 = v33;
          v45 = 2114;
          v46 = v13;
          v47 = 2114;
          v48 = v20;
          _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_ERROR, "%s Failed to load INAppInfo data for %{public}@ at %{public}@: %{public}@", buf, 0x2Au);
        }

LABEL_21:
      }

      if (v8 == ++v12)
      {
        v8 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    v20 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "+[VCIntentDefinitionManager appInfoForBundleID:]";
      v43 = 2114;
      v44 = v33;
      v45 = 2114;
      v46 = v13;
      _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Failed to load INAppInfo data for %{public}@ at %{public}@. App Info URL is not readable.", buf, 0x20u);
    }

    goto LABEL_21;
  }

LABEL_24:
  v25 = 0;
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)intentDefinitionBundleURLForBundleID:(id)a3
{
  v53[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFSyncedDefinitionDirectoryURL();
  v53[0] = v4;
  v5 = WFBundledDefinitionDirectoryURL();
  v53[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v6;
  v33 = [v7 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v33)
  {
    v9 = *v42;
    v10 = 0x277CCA000uLL;
    *&v8 = 136315650;
    v31 = v8;
    v34 = v7;
    v32 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = [*(v10 + 2560) defaultManager];
        v40 = 0;
        v14 = [v13 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:&v40];
        v15 = v40;

        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15 == 0;
        }

        if (!v16 && ([v15 vc_isFileNotFound] & 1) == 0)
        {
          v17 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v31;
            v47 = "+[VCIntentDefinitionManager intentDefinitionBundleURLForBundleID:]";
            v48 = 2114;
            v49 = v12;
            v50 = 2114;
            v51 = v15;
            _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to enumerate search directory %{public}@ for synced application data: %{public}@", buf, 0x20u);
          }
        }

        v35 = v15;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v37;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v36 + 1) + 8 * i);
              v24 = [v23 lastPathComponent];
              v25 = v3;
              v26 = v25;
              if (v24 == v25)
              {

LABEL_31:
                v28 = v23;

                v7 = v34;
                goto LABEL_33;
              }

              if (v3 && v24)
              {
                v27 = [v24 isEqualToString:v25];

                if (v27)
                {
                  goto LABEL_31;
                }
              }

              else
              {
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        ++v11;
        v7 = v34;
        v9 = v32;
        v10 = 0x277CCA000;
      }

      while (v11 != v33);
      v28 = 0;
      v33 = [v34 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v33);
  }

  else
  {
    v28 = 0;
  }

LABEL_33:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)intentDefinitionURLsForBundleID:(id)a3 inDirectory:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v35 = v7;
  if (!v7)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v29 = v28 = v8;
    [v29 handleFailureInMethod:a2 object:a1 file:@"VCIntentDefinitionManager.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];

    v8 = v28;
  }

  if (!v8)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"VCIntentDefinitionManager.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"searchDirectory"}];

    v8 = 0;
  }

  WFDefinitionDirectoryURLsForBundleIdentifier();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v34)
  {
    v31 = v8;
    v33 = *v45;
    v9 = *MEMORY[0x277CBE868];
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v49 = v9;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __73__VCIntentDefinitionManager_intentDefinitionURLsForBundleID_inDirectory___block_invoke;
        v42[3] = &unk_278900080;
        v43 = v35;
        v14 = [v12 enumeratorAtURL:v11 includingPropertiesForKeys:v13 options:4 errorHandler:v42];

        if (v14)
        {
          v36 = i;
          v15 = objc_opt_new();
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v16 = v14;
          v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v39;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v39 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v38 + 1) + 8 * j);
                v37 = 0;
                [v21 getResourceValue:&v37 forKey:v9 error:0];
                v22 = v37;
                if (([v22 BOOLValue] & 1) == 0)
                {
                  v23 = [v21 pathExtension];
                  if (v23 == @"intentdefinition" || (v24 = v23) != 0 && (v25 = [(__CFString *)v23 isEqualToString:@"intentdefinition"], v24, v24, v25))
                  {
                    [v15 addObject:v21];
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
            }

            while (v18);
          }

          if ([v15 count])
          {

            goto LABEL_29;
          }

          i = v36;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_29:
    v8 = v31;
  }

  else
  {
    v15 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __73__VCIntentDefinitionManager_intentDefinitionURLsForBundleID_inDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 vc_isFileNotFound] & 1) == 0)
  {
    v9 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v13 = 136315906;
      v14 = "+[VCIntentDefinitionManager intentDefinitionURLsForBundleID:inDirectory:]_block_invoke";
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to enumerate intent definition files for %{public}@ in search directory %{public}@: %{public}@", &v13, 0x2Au);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)intentDefinitionURLsForBundleID:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"VCIntentDefinitionManager.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];
  }

  v6 = WFSyncedDefinitionDirectoryURL();
  v23[0] = v6;
  v7 = WFBundledDefinitionDirectoryURL();
  v23[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [a1 intentDefinitionURLsForBundleID:v5 inDirectory:*(*(&v18 + 1) + 8 * v13)];
      if ([v14 count])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end