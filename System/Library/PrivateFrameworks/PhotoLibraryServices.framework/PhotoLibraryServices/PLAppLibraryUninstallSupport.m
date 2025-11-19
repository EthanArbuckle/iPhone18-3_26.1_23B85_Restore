@interface PLAppLibraryUninstallSupport
- (BOOL)isApplicationMissingWithBundleIdentifier:(id)a3;
- (PLAppLibraryUninstallSupport)initWithLibraryBundleController:(id)a3;
- (id)_searchCriteriaWithApplicationBundleIdentifier:(id)a3;
- (id)scanForTombstonedLibrariesWithApplicationBundleIdentifier:(id)a3;
- (void)_removeAppPhotoLibrariesForApplication:(id)a3;
- (void)deleteAbandonedLibrariesForApplicationWithBundleIdentifier:(id)a3;
- (void)handleApplicationUninstalledNotification:(id)a3;
@end

@implementation PLAppLibraryUninstallSupport

- (void)deleteAbandonedLibrariesForApplicationWithBundleIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PLAppLibraryUninstallSupport *)self isApplicationMissingWithBundleIdentifier:v4])
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "[PLAppLibraryUninstallSupport deleteAbandonedLibrariesForApplicationWithBundleIdentifier:]";
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s looking for abandoned app libraries to remove for uninstalled app %@", buf, 0x16u);
    }

    [(PLAppLibraryUninstallSupport *)self _removeAppPhotoLibrariesForApplication:v4];
  }

  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v29 = "[PLAppLibraryUninstallSupport deleteAbandonedLibrariesForApplicationWithBundleIdentifier:]";
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s checking for tombstoned app libraries for %@", buf, 0x16u);
  }

  v21 = v4;
  v7 = [(PLAppLibraryUninstallSupport *)self scanForTombstonedLibrariesWithApplicationBundleIdentifier:v4];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v13 = [MEMORY[0x1E69BF238] removeItemAtURL:v12 error:&v22];
        v14 = v22;
        v15 = PLBackendGetLog();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (!v16)
          {
            goto LABEL_18;
          }

          v17 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v12];
          *buf = 138412290;
          v29 = v17;
          v18 = v15;
          v19 = "Deleting photo library tombstone from file system at %@";
          v20 = 12;
        }

        else
        {
          if (!v16)
          {
            goto LABEL_18;
          }

          v17 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v12];
          *buf = 138412546;
          v29 = v17;
          v30 = 2112;
          v31 = v14;
          v18 = v15;
          v19 = "Failed to delete photo library tombstone from file system at %@: %@";
          v20 = 22;
        }

        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, v19, buf, v20);

LABEL_18:
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }
}

- (id)scanForTombstonedLibrariesWithApplicationBundleIdentifier:(id)a3
{
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"PLAppLibraryUninstallSupport.m" lineNumber:189 description:{@"%@ can only be called from assetsd", v11}];
  }

  v6 = [(PLAppLibraryUninstallSupport *)self _searchCriteriaWithApplicationBundleIdentifier:v5];
  v7 = [[PLPhotoLibraryFinder alloc] initWithSearchCriteria:v6];
  v8 = [(PLPhotoLibraryFinder *)v7 findMatchingPhotoLibraryTombstoneURLs];

  return v8;
}

- (BOOL)isApplicationMissingWithBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0;
  v4 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:v3 error:&v12];
  v5 = v12;
  v6 = v5;
  if (!v4)
  {
    v8 = [v5 domain];
    if ([v8 isEqualToString:*MEMORY[0x1E696A768]])
    {
      v9 = [v6 code];

      if (v9 == -10814)
      {
        v10 = PLBackendGetLog();
        v7 = 1;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v14 = v3;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Application with bundle identifier %{public}@ is not found", buf, 0xCu);
        }

LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v3;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to validate application bundle for %{public}@: %@", buf, 0x16u);
    }

    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)_removeAppPhotoLibrariesForApplication:(id)a3
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v70 = [MEMORY[0x1E696AAA8] currentHandler];
    v71 = NSStringFromSelector(a2);
    [v70 handleFailureInMethod:a2 object:self file:@"PLAppLibraryUninstallSupport.m" lineNumber:89 description:{@"%@ can only be called from assetsd", v71}];
  }

  v79 = self;
  [(PLAppLibraryUninstallSupport *)self _searchCriteriaWithApplicationBundleIdentifier:v5];
  v76 = v96 = 0;
  v6 = [PLPhotoLibraryOpener findPhotoLibraryIdentifiersMatchingSearchCriteria:"findPhotoLibraryIdentifiersMatchingSearchCriteria:error:" error:?];
  v73 = 0;
  v7 = [MEMORY[0x1E695DFA8] set];
  v74 = v6;
  v75 = v5;
  if ([v6 count])
  {
    v8 = v7;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v93;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v93 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v92 + 1) + 8 * i);
          v15 = [v14 libraryURL];
          if (v15)
          {
            [v8 addObject:v15];
          }

          else
          {
            v16 = PLBackendGetLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
              v102 = 2112;
              v103 = v14;
              _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%{public}s Missing library URL found for identifier %@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v11);
    }

    v6 = v74;
    v5 = v75;
    v7 = v8;
  }

  if ([v5 isEqualToString:*MEMORY[0x1E69BFEC0]])
  {
    v17 = [v76 containerIdentifier];
    v18 = [PLPhotoLibraryFinder defaultLibraryURLForLibraryDomain:3 container:v17 uuid:@"00000000-0000-0000-0000-000000000001"];

    v19 = [MEMORY[0x1E69BF238] fileManager];
    v20 = [v18 path];
    v21 = [v19 fileExistsAtPath:v20 isDirectory:0];

    if (v21 && ([v7 containsObject:v18] & 1) == 0)
    {
      [v7 addObject:v18];
      v22 = PLBackendGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "%{public}s Adding default GP library URL, failed to find library identifier", buf, 0xCu);
      }
    }
  }

  if (![v7 count])
  {
    v65 = PLBackendGetLog();
    v32 = v65;
    if (v6)
    {
      v64 = v73;
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 136446466;
      v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
      v102 = 2112;
      v103 = v5;
      v66 = "%{public}s No libraries found for %@";
      v67 = v32;
      v68 = OS_LOG_TYPE_DEFAULT;
      v69 = 22;
    }

    else
    {
      v64 = v73;
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 136446722;
      v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
      v102 = 2112;
      v103 = v5;
      v104 = 2112;
      v105 = v73;
      v66 = "%{public}s Failed to find libraries for %@: %@";
      v67 = v32;
      v68 = OS_LOG_TYPE_ERROR;
      v69 = 32;
    }

    _os_log_impl(&dword_19BF1F000, v67, v68, v66, buf, v69);
    goto LABEL_73;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v72 = v7;
  v23 = v7;
  v24 = [v23 countByEnumeratingWithState:&v88 objects:v106 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v89;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v89 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v88 + 1) + 8 * j);
        v87 = 0;
        v29 = [PLPhotoLibraryOpener prepareLibraryForDeletionWithTombstone:1 libraryURL:v28 error:&v87];
        v30 = v87;
        if (!v29)
        {
          v31 = PLBackendGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
            v102 = 2112;
            v103 = v28;
            v104 = 2112;
            v105 = v30;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "%{public}s Error preparing library for deletion %@: %@", buf, 0x20u);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v88 objects:v106 count:16];
    }

    while (v25);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v83 objects:v99 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v84;
    v77 = *MEMORY[0x1E696A998];
    v78 = *MEMORY[0x1E69BFF48];
    v36 = v79;
    obj = v32;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v84 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v83 + 1) + 8 * k);
        v39 = [(PLPhotoLibraryBundleController *)v36->_libraryBundleController openBundleAtLibraryURL:v38];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 libraryServicesManager];
          v42 = v41;
          if (v41)
          {
            v82 = 0;
            v43 = [v41 disableiCPLForLibraryDeletionWithError:&v82];
            v44 = v82;
            v45 = v44;
            if (!v43)
            {
              v63 = PLBackendGetLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
                v102 = 2112;
                v103 = v38;
                v104 = 2112;
                v105 = v45;
                _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "%{public}s unable to prepare library for iCPL disable at URL: %@, error: %@", buf, 0x20u);
              }

              goto LABEL_62;
            }
          }

          libraryBundleController = v36->_libraryBundleController;
          v47 = MEMORY[0x1E696ABC0];
          v97 = v77;
          v98 = v38;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v49 = [v47 errorWithDomain:v78 code:46020 userInfo:v48];
          [(PLPhotoLibraryBundleController *)libraryBundleController shutdownBundle:v40 reason:v49];

          v36 = v79;
        }

        else
        {
          v42 = PLBackendGetLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
            v102 = 2112;
            v103 = v38;
            _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "%{public}s No bundle found for libraryURL: %@", buf, 0x16u);
          }
        }

        v50 = [MEMORY[0x1E69BF238] fileManager];
        v51 = [v38 path];
        v52 = [v50 fileExistsAtPath:v51];

        if (v52)
        {
          v53 = PLBackendGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v101 = v38;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Deleting photo library from file system at %@", buf, 0xCu);
          }

          v81 = 0;
          v54 = [PLPhotoLibraryOpener deleteLibraryFromFilesystemAtURL:v38 shouldWriteTombstone:1 error:&v81];
          v55 = v81;
          v56 = PLBackendGetLog();
          v57 = v56;
          if (v54)
          {
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v101 = v38;
              v58 = v57;
              v59 = OS_LOG_TYPE_DEFAULT;
              v60 = "_removeAppPhotoLibrariesForApplication deleted photo library bundle at URL: %@";
              v61 = 12;
              goto LABEL_57;
            }
          }

          else if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v101 = v38;
            v102 = 2112;
            v103 = v55;
            v58 = v57;
            v59 = OS_LOG_TYPE_ERROR;
            v60 = "_removeAppPhotoLibrariesForApplication failed to delete photo library bundle at URL: %@, error: %@";
            v61 = 22;
LABEL_57:
            _os_log_impl(&dword_19BF1F000, v58, v59, v60, buf, v61);
          }

          v62 = [MEMORY[0x1E69BF278] sharedBookmarkManager];
          [v62 removeSSBForLibraryURL:v38];

          goto LABEL_64;
        }

LABEL_62:
        v55 = PLBackendGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v101 = "[PLAppLibraryUninstallSupport _removeAppPhotoLibrariesForApplication:]";
          v102 = 2112;
          v103 = v38;
          _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s No photo library bundle exists at libraryURL %@", buf, 0x16u);
        }

LABEL_64:
      }

      v32 = obj;
      v34 = [obj countByEnumeratingWithState:&v83 objects:v99 count:16];
    }

    while (v34);
  }

  v6 = v74;
  v5 = v75;
  v7 = v72;
  v64 = v73;
LABEL_73:
}

- (id)_searchCriteriaWithApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PLPhotoLibrarySearchCriteria);
  v6 = [(PLAppLibraryUninstallSupport *)self internalTestOptions];

  if (v6)
  {
    v7 = [(PLAppLibraryUninstallSupport *)self internalTestOptions];
    [(PLPhotoLibrarySearchCriteria *)v5 setInternalTestOptions:v7];
  }

  [(PLPhotoLibrarySearchCriteria *)v5 setDomain:3];
  if ([(__CFString *)v4 isEqualToString:*MEMORY[0x1E69BFEC0]])
  {
    v8 = @"com.apple.GenerativePlayground";
  }

  else
  {
    v8 = v4;
  }

  [(PLPhotoLibrarySearchCriteria *)v5 setContainerIdentifier:v8];

  return v5;
}

- (void)handleApplicationUninstalledNotification:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Handling application uninstall event with %@", buf, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v7 = [objc_opt_class() applicationBundlesToValidateForUninstallCleanup];
  if ([v6 count])
  {
    v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];
    [v8 intersectSet:v7];

    v7 = v8;
  }

  if ([v7 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v16 = v6;
      v17 = v4;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([(PLAppLibraryUninstallSupport *)self isApplicationMissingWithBundleIdentifier:v14])
          {
            v15 = PLBackendGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v24 = v14;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Deleting application photo library for %{public}@", buf, 0xCu);
            }

            [(PLAppLibraryUninstallSupport *)self _removeAppPhotoLibrariesForApplication:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
      v6 = v16;
      v4 = v17;
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Skipping app validation, no recognzied app bundles for application uninstall event with %@", buf, 0xCu);
    }
  }
}

- (PLAppLibraryUninstallSupport)initWithLibraryBundleController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLAppLibraryUninstallSupport;
  v6 = [(PLAppLibraryUninstallSupport *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryBundleController, a3);
    v8 = v7;
  }

  return v7;
}

@end