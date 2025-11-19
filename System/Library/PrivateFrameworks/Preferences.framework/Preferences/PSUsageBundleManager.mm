@interface PSUsageBundleManager
- (id)allUsageBundleApps;
- (void)_loadUsageBundlesWithHandler:(id)a3;
- (void)vendUsageBundleAppsWithHandler:(id)a3;
@end

@implementation PSUsageBundleManager

- (void)_loadUsageBundlesWithHandler:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = self;
  storageReporters = self->_storageReporters;
  if (!storageReporters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_storageReporters;
    self->_storageReporters = v6;

    storageReporters = self->_storageReporters;
  }

  [(NSMutableArray *)storageReporters removeAllObjects];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v42 = [&unk_1EFE65F28 countByEnumeratingWithState:&v62 objects:v72 count:16];
  v10 = 0;
  if (v42)
  {
    v41 = *v63;
    *&v9 = 138412546;
    v40 = v9;
LABEL_5:
    v11 = 0;
    v12 = v10;
    while (1)
    {
      if (*v63 != v41)
      {
        objc_enumerationMutation(&unk_1EFE65F28);
      }

      v13 = *(*(&v62 + 1) + 8 * v11);
      v15 = v14 = v13;
      v16 = [v15 stringByAppendingPathComponent:@"UsageBundles"];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = v12;
      v48 = v16;
      v17 = [v43 contentsOfDirectoryAtPath:v16 error:&v57];
      v10 = v57;

      obj = v17;
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v18)
      {
        v19 = v18;
        v44 = v11;
        v45 = v10;
        v20 = *v59;
        v21 = v48;
        v47 = *v59;
        do
        {
          v22 = 0;
          v49 = v19;
          do
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [v21 stringByAppendingPathComponent:{*(*(&v58 + 1) + 8 * v22), v40}];
            v24 = _PSLoggingFacility();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v67 = v23;
              _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "Loading usage bundle %@", buf, 0xCu);
            }

            v25 = [v23 pathExtension];
            v26 = [v25 isEqualToString:@"bundle"];

            if (v26)
            {
              v52 = v23;
              v51 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:v23];
              v27 = objc_alloc_init([v51 principalClass]);
              v28 = [v27 usageBundleApps];
              if ([v28 count])
              {
                [(NSMutableArray *)v46->_storageReporters addObject:v27];
              }

              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v53 objects:v70 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v54;
                while (2)
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v54 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v53 + 1) + 8 * i);
                    [v34 setUsageBundleStorageReporter:v27];
                    v35 = [v34 bundleIdentifier];
                    [(NSDictionary *)v8 setValue:v34 forKey:v35];

                    if (v4 && (v4[2](v4, v34) & 1) == 0)
                    {

                      v36 = 0;
                      v8 = 0;
                      goto LABEL_30;
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v53 objects:v70 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }

                v36 = 1;
LABEL_30:
                v20 = v47;
                v21 = v48;
              }

              else
              {
                v36 = 1;
              }

              v19 = v49;
              if (!v36)
              {
                goto LABEL_36;
              }
            }

            else
            {
            }

            ++v22;
          }

          while (v22 != v19);
          v19 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v19);
        v36 = 1;
LABEL_36:
        v11 = v44;
        v10 = v45;
      }

      else
      {
        v36 = 1;
      }

      if (v10)
      {
        v37 = _PSLoggingFacility();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v40;
          v67 = v48;
          v68 = 2112;
          v69 = v10;
          _os_log_impl(&dword_18B008000, v37, OS_LOG_TYPE_DEFAULT, "Error loading usage bundles from %@: %@", buf, 0x16u);
        }
      }

      if (!v36)
      {
        break;
      }

      ++v11;
      v12 = v10;
      if (v11 == v42)
      {
        v42 = [&unk_1EFE65F28 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v42)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  bundleMap = v46->_bundleMap;
  v46->_bundleMap = v8;
  v39 = v8;
}

- (id)allUsageBundleApps
{
  bundleMap = self->_bundleMap;
  if (!bundleMap)
  {
    [(PSUsageBundleManager *)self _loadUsageBundlesWithHandler:0];
    bundleMap = self->_bundleMap;
  }

  return [(NSDictionary *)bundleMap allValues];
}

- (void)vendUsageBundleAppsWithHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  bundleMap = self->_bundleMap;
  if (bundleMap)
  {
    if (v4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(NSDictionary *)bundleMap allValues];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    [(PSUsageBundleManager *)self _loadUsageBundlesWithHandler:v4];
  }
}

@end