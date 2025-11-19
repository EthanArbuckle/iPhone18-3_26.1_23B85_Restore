@interface SBSceneRelevancySettings
+ (id)settingsControllerModule;
+ (id)settingsFor3GBPhysicalMemory;
+ (id)settingsFor4GBPhysicalMemory;
+ (id)settingsFor6GBPhysicalMemory;
+ (id)settingsFor8GBPhysicalMemory;
- (void)_commonSetDefaultValues;
- (void)_configureDefaultValuesFor3GBPhysicalMemory;
- (void)_configureDefaultValuesFor4GBPhysicalMemory;
- (void)_configureDefaultValuesFor6GBPhysicalMemory;
- (void)_configureDefaultValuesFor8GBPhysicalMemory;
- (void)_configureForPhysicalMemoryConstraints;
@end

@implementation SBSceneRelevancySettings

+ (id)settingsControllerModule
{
  v57[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431E8];
  v3 = NSStringFromSelector(sel_highPriorityNonFocalRangeFirstZOrder);
  v4 = [v2 rowWithTitle:@"High Priority Non Focal Range First Z-Order" valueKeyPath:v3];
  v5 = [v4 between:0.0 and:100.0];
  v55 = [v5 precision:0];

  v6 = MEMORY[0x277D431E8];
  v7 = NSStringFromSelector(sel_mediumPriorityNonFocalRangeFirstZOrder);
  v8 = [v6 rowWithTitle:@"Medium Priority Non Focal Range First Z-Order" valueKeyPath:v7];
  v9 = [v8 between:0.0 and:100.0];
  v51 = [v9 precision:0];

  v10 = MEMORY[0x277D431E8];
  v11 = NSStringFromSelector(sel_lowPriorityNonFocalRangeFirstZOrder);
  v12 = [v10 rowWithTitle:@"Low Priority Non Focal Range First Z-Order" valueKeyPath:v11];
  v13 = [v12 between:0.0 and:100.0];
  v14 = [v13 precision:0];

  v15 = MEMORY[0x277D431E8];
  v16 = NSStringFromSelector(sel_maximumWindowsInForegroundJetsamBand);
  v17 = [v15 rowWithTitle:@"Maximum Windows In Foreground Jetsam Band" valueKeyPath:v16];
  v18 = [v17 between:0.0 and:20.0];
  v54 = [v18 precision:0];

  v19 = MEMORY[0x277D431E8];
  v20 = NSStringFromSelector(sel_numberOfTopMostWindowsToNeverFreeze);
  v21 = [v19 rowWithTitle:@"Number Of Top Most Windows To Never Freeze" valueKeyPath:v20];
  v22 = [v21 between:0.0 and:100.0];
  v50 = [v22 precision:0];

  v23 = MEMORY[0x277D431E8];
  v24 = NSStringFromSelector(sel_maximumNumberOfVisuallyOpaqueScenesOnStage);
  v25 = [v23 rowWithTitle:@"Maximum Number Of Visually Opaque Scenes On Stage" valueKeyPath:v24];
  v26 = [v25 between:2.0 and:80.0];
  v53 = [v26 precision:0];

  v27 = MEMORY[0x277D431E8];
  v28 = NSStringFromSelector(sel_numberOfFadingScenesOnStage);
  v29 = [v27 rowWithTitle:@"Number Of Fading Scenes On Stage" valueKeyPath:v28];
  v30 = [v29 between:0.0 and:8.0];
  v52 = [v30 precision:0];

  v31 = MEMORY[0x277D432A8];
  v32 = NSStringFromSelector(sel_preventFreezingUnoccludedScenes);
  v49 = [v31 rowWithTitle:@"Prevent Freezing Unoccluded Scenes" valueKeyPath:v32];

  v33 = MEMORY[0x277D432A8];
  v34 = NSStringFromSelector(sel_freezeFullyOccludedWindows);
  v48 = [v33 rowWithTitle:@"Freeze Fully Occluded Scenes" valueKeyPath:v34];

  v35 = MEMORY[0x277D432A8];
  v36 = NSStringFromSelector(sel_freezeAllWindowsBelowMaximizedWindow);
  v37 = [v35 rowWithTitle:@"Freeze All Windows Below Maximized Window" valueKeyPath:v36];

  v38 = MEMORY[0x277D432A8];
  v39 = NSStringFromSelector(sel_prefersProcessTaskSuspensionWhileSceneForegroundAndOccluded);
  v40 = [v38 rowWithTitle:@"Prefers task suspension for occluded foreground scenes" valueKeyPath:v39];

  v41 = MEMORY[0x277D43210];
  v57[0] = v55;
  v57[1] = v51;
  v57[2] = v14;
  v57[3] = v54;
  v57[4] = v50;
  v57[5] = v53;
  v57[6] = v52;
  v57[7] = v49;
  v57[8] = v48;
  v57[9] = v37;
  v57[10] = v40;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:11];
  v43 = [v41 sectionWithRows:v42];

  v44 = MEMORY[0x277D43210];
  v56 = v43;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v46 = [v44 moduleWithTitle:@"Scene Relevancy" contents:v45];

  return v46;
}

- (void)_configureForPhysicalMemoryConstraints
{
  v3 = vcvtd_n_f64_s64(MGGetSInt64Answer(), 0x1EuLL);
  if (v3 >= 4.0)
  {
    if (v3 < 6.0)
    {

      [(SBSceneRelevancySettings *)self _configureDefaultValuesFor4GBPhysicalMemory];
    }

    else if (v3 < 8.0)
    {

      [(SBSceneRelevancySettings *)self _configureDefaultValuesFor6GBPhysicalMemory];
    }

    else
    {

      [(SBSceneRelevancySettings *)self _configureDefaultValuesFor8GBPhysicalMemory];
    }
  }

  else
  {

    [(SBSceneRelevancySettings *)self _configureDefaultValuesFor3GBPhysicalMemory];
  }
}

- (void)_commonSetDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSceneRelevancySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSceneRelevancySettings *)self setHighPriorityNonFocalRangeFirstZOrder:1];
  [(SBSceneRelevancySettings *)self setMediumPriorityNonFocalRangeFirstZOrder:2];
  [(SBSceneRelevancySettings *)self setLowPriorityNonFocalRangeFirstZOrder:4];
  [(SBSceneRelevancySettings *)self setMaximumWindowsInForegroundJetsamBand:4];
  [(SBSceneRelevancySettings *)self setNumberOfTopMostWindowsToNeverFreeze:12];
  [(SBSceneRelevancySettings *)self setMaximumNumberOfVisuallyOpaqueScenesOnStage:12];
  [(SBSceneRelevancySettings *)self setNumberOfFadingScenesOnStage:3];
  [(SBSceneRelevancySettings *)self setPreventFreezingUnoccludedScenes:0];
  [(SBSceneRelevancySettings *)self setFreezeFullyOccludedWindows:0];
  [(SBSceneRelevancySettings *)self setFreezeAllWindowsBelowMaximizedWindow:1];
  [(SBSceneRelevancySettings *)self setPrefersProcessTaskSuspensionWhileSceneForegroundAndOccluded:1];
}

- (void)_configureDefaultValuesFor3GBPhysicalMemory
{
  [(SBSceneRelevancySettings *)self _commonSetDefaultValues];
  [(SBSceneRelevancySettings *)self setMaximumNumberOfVisuallyOpaqueScenesOnStage:3];
  [(SBSceneRelevancySettings *)self setNumberOfTopMostWindowsToNeverFreeze:3];

  [(SBSceneRelevancySettings *)self setNumberOfFadingScenesOnStage:3];
}

- (void)_configureDefaultValuesFor4GBPhysicalMemory
{
  [(SBSceneRelevancySettings *)self _commonSetDefaultValues];
  [(SBSceneRelevancySettings *)self setMaximumNumberOfVisuallyOpaqueScenesOnStage:4];
  [(SBSceneRelevancySettings *)self setNumberOfTopMostWindowsToNeverFreeze:4];

  [(SBSceneRelevancySettings *)self setNumberOfFadingScenesOnStage:3];
}

- (void)_configureDefaultValuesFor6GBPhysicalMemory
{
  [(SBSceneRelevancySettings *)self _commonSetDefaultValues];
  [(SBSceneRelevancySettings *)self setMaximumNumberOfVisuallyOpaqueScenesOnStage:8];
  [(SBSceneRelevancySettings *)self setNumberOfTopMostWindowsToNeverFreeze:8];

  [(SBSceneRelevancySettings *)self setNumberOfFadingScenesOnStage:3];
}

- (void)_configureDefaultValuesFor8GBPhysicalMemory
{
  [(SBSceneRelevancySettings *)self _commonSetDefaultValues];
  [(SBSceneRelevancySettings *)self setMaximumNumberOfVisuallyOpaqueScenesOnStage:12];
  [(SBSceneRelevancySettings *)self setNumberOfTopMostWindowsToNeverFreeze:12];

  [(SBSceneRelevancySettings *)self setNumberOfFadingScenesOnStage:3];
}

+ (id)settingsFor3GBPhysicalMemory
{
  v2 = objc_alloc_init(SBSceneRelevancySettings);
  [(SBSceneRelevancySettings *)v2 _configureDefaultValuesFor3GBPhysicalMemory];

  return v2;
}

+ (id)settingsFor4GBPhysicalMemory
{
  v2 = objc_alloc_init(SBSceneRelevancySettings);
  [(SBSceneRelevancySettings *)v2 _configureDefaultValuesFor4GBPhysicalMemory];

  return v2;
}

+ (id)settingsFor6GBPhysicalMemory
{
  v2 = objc_alloc_init(SBSceneRelevancySettings);
  [(SBSceneRelevancySettings *)v2 _configureDefaultValuesFor6GBPhysicalMemory];

  return v2;
}

+ (id)settingsFor8GBPhysicalMemory
{
  v2 = objc_alloc_init(SBSceneRelevancySettings);
  [(SBSceneRelevancySettings *)v2 _configureDefaultValuesFor8GBPhysicalMemory];

  return v2;
}

@end