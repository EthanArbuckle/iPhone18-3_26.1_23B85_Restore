@interface PBFDataStoreArchivalUtilities
+ (BOOL)transformDataStoreAtURL:(id)l options:(id)options error:(id *)error;
+ (id)fileManager;
@end

@implementation PBFDataStoreArchivalUtilities

+ (id)fileManager
{
  if (fileManager_onceToken_108 != -1)
  {
    +[PBFDataStoreArchivalUtilities fileManager];
  }

  v3 = fileManager_fileManager_107;

  return v3;
}

void __44__PBFDataStoreArchivalUtilities_fileManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = fileManager_fileManager_107;
  fileManager_fileManager_107 = v0;
}

+ (BOOL)transformDataStoreAtURL:(id)l options:(id)options error:(id *)error
{
  v93 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v50 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForVersionDataStoreURL:l];
  stripScreenshots = [optionsCopy stripScreenshots];
  stripDescriptors = [optionsCopy stripDescriptors];
  stripContentsOfConfigurations = [optionsCopy stripContentsOfConfigurations];
  v49 = optionsCopy;
  reapNonLatestEntries = [optionsCopy reapNonLatestEntries];
  fileManager = [self fileManager];
  if ((stripScreenshots & 1) == 0 && (stripDescriptors & 1) == 0 && (stripContentsOfConfigurations & 1) == 0 && !reapNonLatestEntries)
  {
    goto LABEL_54;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v50, 0);
  v58 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (!v58)
  {
    goto LABEL_53;
  }

  v57 = *v83;
  v52 = stripDescriptors;
  v53 = stripScreenshots;
  v56 = stripContentsOfConfigurations;
  v51 = reapNonLatestEntries;
  while (2)
  {
    v13 = 0;
    do
    {
      if (*v83 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v61 = *(*(&v82 + 1) + 8 * v13);
      setupEnvironmentIfNecessary = [v61 setupEnvironmentIfNecessary];
      if (setupEnvironmentIfNecessary)
      {
        v41 = setupEnvironmentIfNecessary;
        v42 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA470];
        v91[0] = @"PBFPosterExtensionStoreCoordinator could not be setup; cannot archive something we cannot read.";
        v44 = *MEMORY[0x277CCA748];
        v90[0] = v43;
        v90[1] = v44;
        containerURL = [v61 containerURL];
        v90[2] = *MEMORY[0x277CCA7E8];
        v91[1] = containerURL;
        v91[2] = v41;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
        v38 = [v42 pbf_generalErrorWithCode:7 userInfo:v46];

        v39 = v38 == 0;
        if (error && v38)
        {
          v47 = v38;
          v39 = 0;
          *error = v38;
        }

        goto LABEL_55;
      }

      if (reapNonLatestEntries)
      {
        [v61 reapEverythingExceptLatestVersion];
        if (!stripDescriptors)
        {
LABEL_13:
          if (!stripContentsOfConfigurations)
          {
            goto LABEL_14;
          }

          goto LABEL_27;
        }
      }

      else if (!stripDescriptors)
      {
        goto LABEL_13;
      }

      v15 = stripScreenshots;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v16 = [v61 dynamicDescriptorStoreCoordinatorsWithError:0];
      v17 = [v16 copy];

      v18 = [v17 countByEnumeratingWithState:&v78 objects:v89 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v79;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v79 != v20)
            {
              objc_enumerationMutation(v17);
            }

            posterUUID = [*(*(&v78 + 1) + 8 * i) posterUUID];
            [v61 teardownDynamicDescriptorStoreCoordinatorForPosterUUID:posterUUID error:0];
          }

          v19 = [v17 countByEnumeratingWithState:&v78 objects:v89 count:16];
        }

        while (v19);
      }

      [v61 teardownAllStaticDescriptorStoreCoordinators];
      stripScreenshots = v15;
      stripContentsOfConfigurations = v56;
      if (!v56)
      {
LABEL_14:
        if (!stripScreenshots)
        {
          goto LABEL_16;
        }

LABEL_15:
        [v61 enumerateDescriptorStoreCoordinators:&__block_literal_global_116];
        [v61 enumerateConfigurationStoreCoordinators:&__block_literal_global_118];
        goto LABEL_16;
      }

LABEL_27:
      v55 = v13;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v59 = [v61 configurationStoreCoordinatorsWithError:0];
      v62 = [v59 countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (v62)
      {
        v60 = *v75;
        do
        {
          v23 = 0;
          do
          {
            if (*v75 != v60)
            {
              objc_enumerationMutation(v59);
            }

            v63 = v23;
            v24 = *(*(&v74 + 1) + 8 * v23);
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            allPosterPaths = [v24 allPosterPaths];
            v25 = [allPosterPaths countByEnumeratingWithState:&v70 objects:v87 count:16];
            if (v25)
            {
              v26 = v25;
              v65 = *v71;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v71 != v65)
                  {
                    objc_enumerationMutation(allPosterPaths);
                  }

                  v28 = *(*(&v70 + 1) + 8 * j);
                  contentsURL = [v28 contentsURL];
                  v30 = [MEMORY[0x277D3EDE8] expectedConfigurationFilesForPath:v28];
                  v31 = [fileManager enumeratorAtURL:contentsURL includingPropertiesForKeys:0 options:1 errorHandler:0];
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v32 = [v31 countByEnumeratingWithState:&v66 objects:v86 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v67;
                    do
                    {
                      for (k = 0; k != v33; ++k)
                      {
                        if (*v67 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v66 + 1) + 8 * k);
                        if (([v30 containsObject:v36] & 1) == 0)
                        {
                          [fileManager removeItemAtURL:v36 error:0];
                        }
                      }

                      v33 = [v31 countByEnumeratingWithState:&v66 objects:v86 count:16];
                    }

                    while (v33);
                  }
                }

                v26 = [allPosterPaths countByEnumeratingWithState:&v70 objects:v87 count:16];
              }

              while (v26);
            }

            v23 = v63 + 1;
          }

          while (v63 + 1 != v62);
          v62 = [v59 countByEnumeratingWithState:&v74 objects:v88 count:16];
        }

        while (v62);
      }

      stripDescriptors = v52;
      stripScreenshots = v53;
      stripContentsOfConfigurations = v56;
      reapNonLatestEntries = v51;
      v13 = v55;
      if (v53)
      {
        goto LABEL_15;
      }

LABEL_16:
      [v61 invalidate];
      ++v13;
    }

    while (v13 != v58);
    v37 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    v58 = v37;
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_53:

LABEL_54:
  v38 = 0;
  v39 = 1;
LABEL_55:

  return v39;
}

@end