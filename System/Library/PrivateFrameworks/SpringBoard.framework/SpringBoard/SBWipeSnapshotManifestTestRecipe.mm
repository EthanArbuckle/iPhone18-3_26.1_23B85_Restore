@interface SBWipeSnapshotManifestTestRecipe
- (void)handleVolumeIncrease;
@end

@implementation SBWipeSnapshotManifestTestRecipe

- (void)handleVolumeIncrease
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v35 + 1) + 8 * i) application];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v5);
  }

  if (![v2 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v10 = [v9 recentAppLayouts];

    v11 = [v10 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * j);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __56__SBWipeSnapshotManifestTestRecipe_handleVolumeIncrease__block_invoke;
          v29[3] = &unk_2783AE1C8;
          v30 = v2;
          [v15 enumerate:v29];
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v12);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v2;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * k);
        v22 = SBLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v21 bundleIdentifier];
          *buf = 138543362;
          v40 = v23;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "[%{public}@] Wiping snapshot manifest...", buf, 0xCu);
        }

        v24 = [v21 _snapshotManifest];
        [v24 deleteAllSnapshots];

        [v21 _reingestStaticDefaultImagesInSnapshotManifest];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v18);
  }
}

void __56__SBWipeSnapshotManifestTestRecipe_handleVolumeIncrease__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if (![v10 type])
  {
    v6 = *(a1 + 32);
    v7 = +[SBApplicationController sharedInstance];
    v8 = [v10 bundleIdentifier];
    v9 = [v7 applicationWithBundleIdentifier:v8];
    [v6 addObject:v9];

    *a4 = 1;
  }
}

@end