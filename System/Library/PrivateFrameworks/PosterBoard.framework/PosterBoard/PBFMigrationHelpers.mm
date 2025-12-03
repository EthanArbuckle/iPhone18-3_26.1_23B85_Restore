@interface PBFMigrationHelpers
+ (void)updateConfiguredPropertiesForDataStoreURL:(id)l extensionToDescriptorMap:(id)map migrationKey:(id)key reason:(id)reason match:(id)match update:(id)update;
@end

@implementation PBFMigrationHelpers

+ (void)updateConfiguredPropertiesForDataStoreURL:(id)l extensionToDescriptorMap:(id)map migrationKey:(id)key reason:(id)reason match:(id)match update:(id)update
{
  mapCopy = map;
  keyCopy = key;
  reasonCopy = reason;
  matchCopy = match;
  updateCopy = update;
  v18 = MEMORY[0x277CBEBC0];
  lCopy = l;
  v20 = [v18 pbf_dataStoreExtensionContainerURLForBaseURL:lCopy version:{+[PBFPosterExtensionDataStore dataStoreVersion](PBFPosterExtensionDataStore, "dataStoreVersion")}];

  v21 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v20, 0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __123__PBFMigrationHelpers_updateConfiguredPropertiesForDataStoreURL_extensionToDescriptorMap_migrationKey_reason_match_update___block_invoke;
  v27[3] = &unk_2782C9428;
  v28 = mapCopy;
  v29 = keyCopy;
  v30 = reasonCopy;
  v31 = matchCopy;
  v32 = updateCopy;
  v22 = updateCopy;
  v23 = reasonCopy;
  v24 = matchCopy;
  v25 = keyCopy;
  v26 = mapCopy;
  [v21 enumerateObjectsUsingBlock:v27];
}

void __123__PBFMigrationHelpers_updateConfiguredPropertiesForDataStoreURL_extensionToDescriptorMap_migrationKey_reason_match_update___block_invoke(void *a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 extensionIdentifier];
  v6 = [v4 objectForKey:v5];

  if (a1[4])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = [v3 setupEnvironmentIfNecessary];
    v9 = [v3 providerInfoObjectForKey:a1[5]];

    if (!v9)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v34 = v3;
      obj = [v3 configurationStoreCoordinatorsWithError:0];
      v40 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v40)
      {
        v10 = *v44;
        v11 = 0x277D3E000uLL;
        v37 = *v44;
        v38 = a1;
        v35 = v6;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v44 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v43 + 1) + 8 * i);
            if (a1[4])
            {
              if ([v6 count])
              {
                v14 = [v13 descriptorIdentifier];
                v15 = [v6 containsObject:v14];

                if (!v15)
                {
                  continue;
                }
              }
            }

            v16 = [v13 pathOfLatestVersion];
            v17 = [*(v11 + 3552) modelObjectCacheForPath:v16];
            v18 = [v17 configuredProperties];
            if ((*(a1[7] + 16))())
            {
              v19 = PBFLogMigration();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                [v13 extensionIdentifier];
                v20 = v36 = v18;
                v21 = [v13 descriptorIdentifier];
                v22 = v38[6];
                v23 = [v17 identity];
                v24 = [v23 posterUUID];
                *buf = 138413058;
                v48 = v20;
                v49 = 2112;
                v50 = v21;
                v51 = 2112;
                v52 = v22;
                a1 = v38;
                v53 = 2112;
                v54 = v24;
                _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "Config for extension: %@ descriptor:%@ needs update for %@ UUID:%@", buf, 0x2Au);

                v6 = v35;
                v18 = v36;
              }

              v25 = [v16 contentsURL];
              v42 = 0;
              v26 = [v13 addNewVersionWithContents:v25 error:&v42];
              v27 = v42;

              if (v26)
              {
                if (v27)
                {
                  v28 = PBFLogMigration();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = a1[6];
                    *buf = 138412546;
                    v48 = v29;
                    v49 = 2112;
                    v50 = v27;
                    _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "%@ migration error creating new version of configuration: %@", buf, 0x16u);
                  }
                }

                else
                {
                  v28 = [v13 pathOfLatestVersion];
                  v30 = (*(a1[8] + 16))();
                  v41 = 0;
                  [MEMORY[0x277D3EDE8] storeConfiguredPropertiesForPath:v28 configuredProperties:v30 error:&v41];
                  v31 = v41;
                  if (v31)
                  {
                    v32 = PBFLogMigration();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      v33 = v38[6];
                      *buf = 138412546;
                      v48 = v33;
                      v49 = 2112;
                      v50 = v31;
                      _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "%@ migration error storing updated configuredProperties: %@", buf, 0x16u);
                    }
                  }

                  a1 = v38;
                }
              }

              v10 = v37;
              v11 = 0x277D3E000;
            }
          }

          v40 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v40);
      }

      v3 = v34;
      [v34 providerInfoSetObject:MEMORY[0x277CBEC38] forKey:a1[5]];
    }

    [v3 invalidate];
  }
}

@end