@interface PUIPosterSnapshotBundleBuilder
- (BOOL)captureColorStatistics:(id)statistics error:(id *)error;
- (BOOL)captureSnapshot:(id)snapshot forLevelSet:(id)set error:(id *)error;
- (BOOL)captureSurface:(id)surface forLevelSet:(id)set error:(id *)error;
- (BOOL)captureSurface:(id)surface sceneSettings:(id)settings forLevelSet:(id)set persistenceScale:(double)scale error:(id *)error;
- (NSSet)capturedSnapshotLevelSets;
- (PUIPosterSnapshotBundleBuilder)initWithHardwareIdentifier:(id)identifier userInterfaceStyle:(int64_t)style interfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation;
- (PUIPosterSnapshotBundleBuilder)initWithSceneSettings:(id)settings snapshotDescriptor:(id)descriptor;
- (PUIPosterSnapshotBundleBuilder)initWithSnapshotBundle:(id)bundle;
- (id)_finalizedInfoPlistDictionaryWithSnapshotImageFormat:(id)format;
- (id)buildWithOutputURL:(id)l diskFormat:(id)format finalizedMutator:(id)mutator error:(id *)error;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)dealloc;
- (void)reset;
- (void)setAssetSizeIfNecessary:(CGSize)necessary;
- (void)setFileAttributes:(id)attributes;
- (void)setImage:(id)image forLevelSet:(id)set;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setURLResourceValues:(id)values;
- (void)updateWithPoster:(id)poster;
@end

@implementation PUIPosterSnapshotBundleBuilder

- (PUIPosterSnapshotBundleBuilder)initWithSceneSettings:(id)settings snapshotDescriptor:(id)descriptor
{
  settingsCopy = settings;
  descriptorCopy = descriptor;
  v9 = settingsCopy;
  NSClassFromString(&cfstr_Fbsscenesettin.isa);
  if (!v9)
  {
    [PUIPosterSnapshotBundleBuilder initWithSceneSettings:a2 snapshotDescriptor:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterSnapshotBundleBuilder initWithSceneSettings:a2 snapshotDescriptor:?];
  }

  displayConfiguration = [v9 displayConfiguration];
  pui_displayConfigurationIdentifier = [displayConfiguration pui_displayConfigurationIdentifier];
  v12 = -[PUIPosterSnapshotBundleBuilder initWithHardwareIdentifier:userInterfaceStyle:interfaceOrientation:deviceOrientation:](self, "initWithHardwareIdentifier:userInterfaceStyle:interfaceOrientation:deviceOrientation:", pui_displayConfigurationIdentifier, [v9 pui_userInterfaceStyle], objc_msgSend(v9, "interfaceOrientation"), objc_msgSend(v9, "pui_deviceOrientation"));
  if (v12)
  {
    pui_posterContents = [v9 pui_posterContents];
    if (pui_posterContents)
    {
      v14 = pui_posterContents;
      pui_posterContents2 = [v9 pui_posterContents];
      isServerPosterPath = [pui_posterContents2 isServerPosterPath];

      if (isServerPosterPath)
      {
        pui_posterContents3 = [v9 pui_posterContents];
        [(PUIPosterSnapshotBundleBuilder *)v12 updateWithPoster:pui_posterContents3];
      }
    }

    pui_previewIdentifier = [v9 pui_previewIdentifier];

    if (pui_previewIdentifier)
    {
      pui_previewIdentifier2 = [v9 pui_previewIdentifier];
      [(PUIPosterSnapshotBundleBuilder *)v12 setObject:pui_previewIdentifier2 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];
    }

    if ([v9 isUISubclass])
    {
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "accessibilityContrast")}];
    }

    else
    {
      v20 = &unk_1F1C92838;
    }

    [(PUIPosterSnapshotBundleBuilder *)v12 setObject:v20 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotAccessibilityContrast"];
    sceneDescriptor = [descriptorCopy sceneDescriptor];

    if (sceneDescriptor)
    {
      sceneDescriptor2 = [descriptorCopy sceneDescriptor];
      displayConfiguration2 = [sceneDescriptor2 displayConfiguration];
      [displayConfiguration2 pointScale];
      v25 = v24;

      v26 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [(PUIPosterSnapshotBundleBuilder *)v12 setObject:v26 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];
    }

    output = [descriptorCopy output];

    if (output)
    {
      output2 = [descriptorCopy output];
      [output2 persistenceScale];
      v30 = v29;

      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
      [(PUIPosterSnapshotBundleBuilder *)v12 setObject:v31 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];
    }

    pui_contentOcclusionRectangles = [v9 pui_contentOcclusionRectangles];
    v33 = pui_contentOcclusionRectangles;
    if (pui_contentOcclusionRectangles)
    {
      v34 = MEMORY[0x1E695DF90];
      allRects = [pui_contentOcclusionRectangles allRects];
      v36 = [v34 dictionaryWithCapacity:{objc_msgSend(allRects, "count")}];

      allRects2 = [v33 allRects];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __75__PUIPosterSnapshotBundleBuilder_initWithSceneSettings_snapshotDescriptor___block_invoke;
      v40[3] = &unk_1E7854980;
      v41 = v36;
      v38 = v36;
      [allRects2 enumerateKeysAndObjectsUsingBlock:v40];

      [(PUIPosterSnapshotBundleBuilder *)v12 setObject:v38 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyOcclusionRects"];
    }
  }

  return v12;
}

void __75__PUIPosterSnapshotBundleBuilder_initWithSceneSettings_snapshotDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 CGRectValue];
  v6 = NSStringFromCGRect(v8);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (PUIPosterSnapshotBundleBuilder)initWithSnapshotBundle:(id)bundle
{
  v25 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  NSClassFromString(&cfstr_Puipostersnaps_37.isa);
  if (!bundleCopy)
  {
    [PUIPosterSnapshotBundleBuilder initWithSnapshotBundle:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PUIPosterSnapshotBundleBuilder initWithSnapshotBundle:a2];
  }

  hardwareIdentifier = [bundleCopy hardwareIdentifier];
  v7 = -[PUIPosterSnapshotBundleBuilder initWithHardwareIdentifier:userInterfaceStyle:interfaceOrientation:deviceOrientation:](self, "initWithHardwareIdentifier:userInterfaceStyle:interfaceOrientation:deviceOrientation:", hardwareIdentifier, [bundleCopy userInterfaceStyle], objc_msgSend(bundleCopy, "interfaceOrientation"), objc_msgSend(bundleCopy, "deviceOrientation"));

  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    snapshotLevelSets = [bundleCopy snapshotLevelSets];
    v9 = [snapshotLevelSets countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(snapshotLevelSets);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [bundleCopy snapshotForLevelSet:v13];
          if (v14)
          {
            [(NSMutableDictionary *)v7->_levelToImage setObject:v14 forKeyedSubscript:v13];
          }
        }

        v10 = [snapshotLevelSets countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    colorStatistics = [bundleCopy colorStatistics];
    colorStatistics = v7->_colorStatistics;
    v7->_colorStatistics = colorStatistics;

    infoDictionary = [(PUIPosterSnapshotBundleBuilder *)v7 infoDictionary];
    infoDictionary2 = [bundleCopy infoDictionary];
    [infoDictionary addEntriesFromDictionary:infoDictionary2];
  }

  return v7;
}

- (PUIPosterSnapshotBundleBuilder)initWithHardwareIdentifier:(id)identifier userInterfaceStyle:(int64_t)style interfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = PUIPosterSnapshotBundleBuilder;
  v11 = [(PUIPosterSnapshotBundleBuilder *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    hardwareIdentifier = v11->_hardwareIdentifier;
    v11->_hardwareIdentifier = v12;

    v14 = objc_opt_new();
    infoDictionary = v11->_infoDictionary;
    v11->_infoDictionary = v14;

    v16 = objc_opt_new();
    levelToImage = v11->_levelToImage;
    v11->_levelToImage = v16;

    v11->_userInterfaceStyle = style;
    v11->_interfaceOrientation = orientation;
    v11->_deviceOrientation = deviceOrientation;
    [(PUIPosterSnapshotBundleBuilder *)v11 reset];
  }

  return v11;
}

- (void)dealloc
{
  [(PUIPosterSnapshotBundleBuilder *)self reset];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotBundleBuilder;
  [(PUIPosterSnapshotBundleBuilder *)&v3 dealloc];
}

- (void)updateWithPoster:(id)poster
{
  posterCopy = poster;
  serverIdentity = [posterCopy serverIdentity];

  if (serverIdentity)
  {
    serverIdentity2 = [posterCopy serverIdentity];
    posterUUID = [serverIdentity2 posterUUID];
    uUIDString = [posterUUID UUIDString];
    [(PUIPosterSnapshotBundleBuilder *)self setObject:uUIDString forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPosterUUID"];

    v8 = MEMORY[0x1E696AD98];
    serverIdentity3 = [posterCopy serverIdentity];
    v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(serverIdentity3, "version")}];
    [(PUIPosterSnapshotBundleBuilder *)self setObject:v10 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPosterVersion"];

    serverIdentity4 = [posterCopy serverIdentity];
    provider = [serverIdentity4 provider];
    [(PUIPosterSnapshotBundleBuilder *)self setObject:provider forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPosterProvider"];
  }
}

- (void)setURLResourceValues:(id)values
{
  if (values)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionaryWithObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695DB80]];
  }
  self->_URLResourceValues = ;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFileAttributes:(id)attributes
{
  if (attributes)
  {
    self->_fileAttributes = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  }

  else
  {
    PFFileProtectionNoneAttributes();
    v4 = [objc_claimAutoreleasedReturnValue() mutableCopy];
    fileAttributes = self->_fileAttributes;
    self->_fileAttributes = v4;
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)captureSnapshot:(id)snapshot forLevelSet:(id)set error:(id *)error
{
  snapshotCopy = snapshot;
  setCopy = set;
  if (!snapshotCopy)
  {
    [PUIPosterSnapshotBundleBuilder captureSnapshot:a2 forLevelSet:? error:?];
  }

  v10 = setCopy;
  if (!setCopy)
  {
    [PUIPosterSnapshotBundleBuilder captureSnapshot:a2 forLevelSet:? error:?];
  }

  v11 = objc_autoreleasePoolPush();
  if ([snapshotCopy capture] && (objc_msgSend(MEMORY[0x1E69DCAB8], "pui_imageFromSceneSnapshot:", snapshotCopy), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    [(NSMutableDictionary *)self->_levelToImage setObject:v12 forKey:v10];
    [v13 size];
    [(PUIPosterSnapshotBundleBuilder *)self setAssetSizeIfNecessary:?];
    v14 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];

    if (!v14)
    {
      v15 = MEMORY[0x1E696AD98];
      context = [snapshotCopy context];
      [context scale];
      v17 = [v15 numberWithDouble:?];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v17 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];
    }

    v18 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];

    if (!v18)
    {
      [(PUIPosterSnapshotBundleBuilder *)self setObject:&unk_1F1C92850 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];
    }

    v19 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];

    if (!v19)
    {
      v20 = MEMORY[0x1E696AD98];
      context2 = [snapshotCopy context];
      settings = [context2 settings];
      v23 = [v20 numberWithInteger:{objc_msgSend(settings, "pui_userInterfaceStyle")}];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v23 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];
    }

    v24 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];

    if (!v24)
    {
      context3 = [snapshotCopy context];
      settings2 = [context3 settings];
      pui_previewIdentifier = [settings2 pui_previewIdentifier];

      if (pui_previewIdentifier)
      {
        [(PUIPosterSnapshotBundleBuilder *)self setObject:pui_previewIdentifier forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];
      }
    }

    v28 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];

    if (!v28)
    {
      v29 = MEMORY[0x1E696AD98];
      context4 = [snapshotCopy context];
      settings3 = [context4 settings];
      v32 = [v29 numberWithInteger:{objc_msgSend(settings3, "pui_deviceOrientation")}];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v32 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];
    }

    v33 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];

    if (!v33)
    {
      v34 = MEMORY[0x1E696AD98];
      context5 = [snapshotCopy context];
      settings4 = [context5 settings];
      v37 = [v34 numberWithInteger:{objc_msgSend(settings4, "interfaceOrientation")}];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v37 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];
    }

    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v38;
}

- (BOOL)captureSurface:(id)surface sceneSettings:(id)settings forLevelSet:(id)set persistenceScale:(double)scale error:(id *)error
{
  settingsCopy = settings;
  setCopy = set;
  if (surface)
  {
    v13 = [MEMORY[0x1E69DCAB8] pui_imageWithIOSurface:surface];
    if (scale != 1.0)
    {
      v14 = [v13 pui_scaleImage:PFCurrentDeviceIsVirtualMachine() ^ 1 canUseIOSurface:scale];

      v13 = v14;
    }

    [(NSMutableDictionary *)self->_levelToImage setObject:v13 forKey:setCopy];
    [v13 size];
    [(PUIPosterSnapshotBundleBuilder *)self setAssetSizeIfNecessary:?];
    v15 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];

    if (!v15)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v16 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyPersistenceScale"];
    }

    if (settingsCopy)
    {
      v17 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];

      if (!v17)
      {
        v18 = MEMORY[0x1E696AD98];
        displayConfiguration = [settingsCopy displayConfiguration];
        [displayConfiguration pointScale];
        v20 = [v18 numberWithDouble:?];
        [(PUIPosterSnapshotBundleBuilder *)self setObject:v20 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];
      }

      v21 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];

      if (!v21)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(settingsCopy, "pui_userInterfaceStyle")}];
        [(PUIPosterSnapshotBundleBuilder *)self setObject:v22 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];
      }

      v23 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];

      if (!v23)
      {
        pui_previewIdentifier = [settingsCopy pui_previewIdentifier];
        if (pui_previewIdentifier)
        {
          [(PUIPosterSnapshotBundleBuilder *)self setObject:pui_previewIdentifier forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];
        }
      }

      v25 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];

      if (!v25)
      {
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(settingsCopy, "pui_deviceOrientation")}];
        [(PUIPosterSnapshotBundleBuilder *)self setObject:v26 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];
      }

      v27 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];

      if (!v27)
      {
        v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(settingsCopy, "interfaceOrientation")}];
        [(PUIPosterSnapshotBundleBuilder *)self setObject:v28 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];
      }
    }
  }

  return surface != 0;
}

- (BOOL)captureSurface:(id)surface forLevelSet:(id)set error:(id *)error
{
  surfaceCopy = surface;
  setCopy = set;
  if (!surfaceCopy)
  {
    [PUIPosterSnapshotBundleBuilder captureSurface:a2 forLevelSet:? error:?];
  }

  v10 = setCopy;
  if (!setCopy)
  {
    [PUIPosterSnapshotBundleBuilder captureSurface:a2 forLevelSet:? error:?];
  }

  v11 = objc_autoreleasePoolPush();
  if ([surfaceCopy capture] && (objc_msgSend(MEMORY[0x1E69DCAB8], "pui_imageFromSceneSnapshot:", surfaceCopy), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    [(NSMutableDictionary *)self->_levelToImage setObject:v12 forKey:v10];
    [v13 size];
    [(PUIPosterSnapshotBundleBuilder *)self setAssetSizeIfNecessary:?];
    v14 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];

    if (!v14)
    {
      v15 = MEMORY[0x1E696AD98];
      context = [surfaceCopy context];
      [context scale];
      v17 = [v15 numberWithDouble:?];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v17 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyScale"];
    }

    v18 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];

    if (!v18)
    {
      v19 = MEMORY[0x1E696AD98];
      context2 = [surfaceCopy context];
      settings = [context2 settings];
      v22 = [v19 numberWithInteger:{objc_msgSend(settings, "pui_userInterfaceStyle")}];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v22 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];
    }

    v23 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];

    if (!v23)
    {
      context3 = [surfaceCopy context];
      settings2 = [context3 settings];
      pui_previewIdentifier = [settings2 pui_previewIdentifier];

      if (pui_previewIdentifier)
      {
        [(PUIPosterSnapshotBundleBuilder *)self setObject:pui_previewIdentifier forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotDefinitionIdentifier"];
      }
    }

    v27 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];

    if (!v27)
    {
      v28 = MEMORY[0x1E696AD98];
      context4 = [surfaceCopy context];
      settings3 = [context4 settings];
      v31 = [v28 numberWithInteger:{objc_msgSend(settings3, "pui_deviceOrientation")}];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v31 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];
    }

    v32 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];

    if (!v32)
    {
      v33 = MEMORY[0x1E696AD98];
      context5 = [surfaceCopy context];
      settings4 = [context5 settings];
      v36 = [v33 numberWithInteger:{objc_msgSend(settings4, "interfaceOrientation")}];
      [(PUIPosterSnapshotBundleBuilder *)self setObject:v36 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];
    }

    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v37;
}

- (void)setImage:(id)image forLevelSet:(id)set
{
  levelToImage = self->_levelToImage;
  imageCopy = image;
  [(NSMutableDictionary *)levelToImage setObject:imageCopy forKey:set];
  [imageCopy size];
  v9 = v8;
  v11 = v10;

  [(PUIPosterSnapshotBundleBuilder *)self setAssetSizeIfNecessary:v9, v11];
}

- (BOOL)captureColorStatistics:(id)statistics error:(id *)error
{
  statisticsCopy = statistics;
  if (!statisticsCopy)
  {
    [PUIPosterSnapshotBundleBuilder captureColorStatistics:a2 error:?];
  }

  v7 = statisticsCopy;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 copy];
  colorStatistics = self->_colorStatistics;
  self->_colorStatistics = v9;

  objc_autoreleasePoolPop(v8);
  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_colorStatistics != 0];
  [(PUIPosterSnapshotBundleBuilder *)self setObject:v11 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyHasColorStatistics"];

  v12 = self->_colorStatistics != 0;
  return v12;
}

- (NSSet)capturedSnapshotLevelSets
{
  v2 = MEMORY[0x1E695DFD8];
  allKeys = [(NSMutableDictionary *)self->_levelToImage allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  infoDictionary = [(PUIPosterSnapshotBundleBuilder *)self infoDictionary];
  v6 = [infoDictionary objectForKey:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  infoDictionary = [(PUIPosterSnapshotBundleBuilder *)self infoDictionary];
  [infoDictionary setObject:objectCopy forKey:subscriptCopy];
}

- (void)setAssetSizeIfNecessary:(CGSize)necessary
{
  height = necessary.height;
  width = necessary.width;
  v6 = [(PUIPosterSnapshotBundleBuilder *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyAssetSize"];
  if (!v6 || __58__PUIPosterSnapshotBundleBuilder_setAssetSizeIfNecessary___block_invoke(v6, v6))
  {
    v9.width = width;
    v9.height = height;
    v7 = NSStringFromCGSize(v9);
    [(PUIPosterSnapshotBundleBuilder *)self setObject:v7 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeyAssetSize"];
  }

  MEMORY[0x1EEE66BB8]();
}

uint64_t __58__PUIPosterSnapshotBundleBuilder_setAssetSizeIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69DCAB8];
  v3 = a2;
  v4 = [v2 pui_fallbackSnapshotImage];
  [v4 size];
  v5 = NSStringFromCGSize(v8);

  v6 = [v3 isEqualToString:v5];
  return v6;
}

- (id)buildWithOutputURL:(id)l diskFormat:(id)format finalizedMutator:(id)mutator error:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  lCopy = l;
  formatCopy = format;
  mutatorCopy = mutator;
  v10 = MEMORY[0x1E695DFF8];
  v11 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v11 stringWithFormat:@"PUIPosterSnapshotBundleBuilder-%@", uUIDString];
  v71 = [v10 pf_temporaryDirectoryURLNamed:v14];

  v15 = objc_opt_new();
  if (![v15 createDirectoryAtURL:v71 withIntermediateDirectories:1 attributes:self->_fileAttributes error:error])
  {
    v20 = 0;
    goto LABEL_21;
  }

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __87__PUIPosterSnapshotBundleBuilder_buildWithOutputURL_diskFormat_finalizedMutator_error___block_invoke;
  v96[3] = &unk_1E78548A0;
  v16 = v15;
  v97 = v16;
  v17 = v71;
  v98 = v17;
  v67 = MEMORY[0x1AC5769F0](v96);
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__2;
  v94 = __Block_byref_object_dispose__2;
  v95 = 0;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __87__PUIPosterSnapshotBundleBuilder_buildWithOutputURL_diskFormat_finalizedMutator_error___block_invoke_119;
  v86[3] = &unk_1E7855040;
  v66 = v17;
  v87 = v66;
  v18 = v16;
  v88 = v18;
  v89 = &v90;
  PUIPosterSnapshotBundleComponentEnumerateDirectories(v86);
  v19 = v91[5];
  if (v19)
  {
    if (error)
    {
      *error = v19;
    }

    v67[2]();
    v20 = 0;
    goto LABEL_20;
  }

  if (formatCopy)
  {
    filenameExtension = [formatCopy filenameExtension];
  }

  else
  {
    filenameExtension = 0;
  }

  v61 = filenameExtension;
  v22 = [(PUIPosterSnapshotBundleBuilder *)self _finalizedInfoPlistDictionaryWithSnapshotImageFormat:?];
  v59 = v18;
  if (mutatorCopy)
  {
    v23 = mutatorCopy[2]();

    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = v91;
  obj = 0;
  v60 = v24;
  v65 = [MEMORY[0x1E696AE40] dataWithPropertyList:? format:? options:? error:?];
  objc_storeStrong(v25 + 5, 0);
  if (!v65 || v91[5])
  {
    if (error)
    {
      *error = v91[5];
    }

    v67[2]();
    goto LABEL_18;
  }

  v27 = PUIPosterSnapshotBundleURLForComponent(v66, 3);
  v28 = [v65 writeToURL:v27 options:0 error:error];

  if (v28)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    allKeys = [(NSMutableDictionary *)self->_levelToImage allKeys];
    v30 = [allKeys countByEnumeratingWithState:&v81 objects:v100 count:16];
    if (v30)
    {
      context = *v82;
      while (2)
      {
        v62 = v30;
        for (i = 0; i != v62; ++i)
        {
          if (*v82 != context)
          {
            objc_enumerationMutation(allKeys);
          }

          v32 = *(*(&v81 + 1) + 8 * i);
          v33 = [(NSMutableDictionary *)self->_levelToImage objectForKey:v32];
          v34 = objc_autoreleasePoolPush();
          v35 = [PUIImageEncoder alloc];
          v36 = PUIPosterSnapshotBundleURLForPosterLevelSet(v66, v32);
          v37 = [(PUIImageEncoder *)v35 initWithURL:v36 format:formatCopy];

          v80 = 0;
          v38 = [(PUIImageEncoder *)v37 saveUIImage:v33 error:&v80];
          v39 = v80;
          if (v38)
          {
            [v33 size];
            [(PUIPosterSnapshotBundleBuilder *)self setAssetSizeIfNecessary:?];
          }

          objc_autoreleasePoolPop(v34);
          if (v39)
          {
            if (error)
            {
              v46 = v39;
              *error = v39;
            }

            v67[2]();

            goto LABEL_65;
          }
        }

        v30 = [allKeys countByEnumeratingWithState:&v81 objects:v100 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    if (self->_colorStatistics)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = PUIPosterSnapshotBundleURLForComponent(v66, 4);
      colorStatistics = self->_colorStatistics;
      v79 = 0;
      v43 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:colorStatistics requiringSecureCoding:1 error:&v79];
      v44 = v79;
      v78 = v44;
      [v43 writeToURL:v41 options:0x10000000 error:&v78];
      allKeys = v78;

      if (allKeys)
      {
        if (error)
        {
          v45 = allKeys;
          *error = allKeys;
        }

        v67[2]();
      }

      objc_autoreleasePoolPop(v40);
      if (allKeys)
      {
        v20 = 0;
LABEL_67:

        goto LABEL_19;
      }
    }

    contexta = objc_autoreleasePoolPush();
    allKeys2 = [(NSMutableDictionary *)self->_URLResourceKeys allKeys];
    v48 = [v59 enumeratorAtURL:v66 includingPropertiesForKeys:allKeys2 options:0 errorHandler:0];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v50)
    {
      v51 = *v75;
      while (2)
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v75 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v74 + 1) + 8 * j);
          URLResourceValues = self->_URLResourceValues;
          v73 = 0;
          [v53 setResourceValues:URLResourceValues error:&v73];
          v55 = v73;
          if (v55)
          {
            v33 = v55;
            goto LABEL_57;
          }

          fileAttributes = self->_fileAttributes;
          path = [v53 path];
          v72 = 0;
          [v59 setAttributes:fileAttributes ofItemAtPath:path error:&v72];
          v33 = v72;

          if (v33)
          {
            goto LABEL_57;
          }
        }

        v50 = [v49 countByEnumeratingWithState:&v74 objects:v99 count:16];
        v33 = 0;
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v33 = 0;
    }

LABEL_57:

    objc_autoreleasePoolPop(contexta);
    if (v33)
    {
      if (error)
      {
        v58 = v33;
        *error = v33;
      }
    }

    else if ([v59 moveItemAtURL:v66 toURL:lCopy error:error])
    {
      v20 = [PUIPosterSnapshotBundle snapshotBundleAtURL:lCopy error:error];
      if (v20)
      {
        [(PUIPosterSnapshotBundleBuilder *)self reset];
      }

      allKeys = 0;
LABEL_66:

      goto LABEL_67;
    }

    v67[2]();
    allKeys = 0;
LABEL_65:
    v20 = 0;
    goto LABEL_66;
  }

LABEL_18:
  v20 = 0;
LABEL_19:

LABEL_20:
  _Block_object_dispose(&v90, 8);

LABEL_21:

  return v20;
}

void __87__PUIPosterSnapshotBundleBuilder_buildWithOutputURL_diskFormat_finalizedMutator_error___block_invoke_119(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = PUIPosterSnapshotBundleURLForComponent(*(a1 + 32), a2);
  v6 = *(a1 + 40);
  v7 = PFFileProtectionNoneAttributes();
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  LOBYTE(v6) = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if ((v6 & 1) == 0)
  {
    *a3 = 1;
  }
}

- (void)reset
{
  [(NSMutableDictionary *)self->_levelToImage removeAllObjects];
  v3 = objc_opt_new();
  infoDictionary = self->_infoDictionary;
  self->_infoDictionary = v3;

  v5 = objc_opt_new();
  levelToImage = self->_levelToImage;
  self->_levelToImage = v5;

  [(PUIPosterSnapshotBundleBuilder *)self setFileAttributes:0];
  [(PUIPosterSnapshotBundleBuilder *)self setURLResourceValues:0];
  colorStatistics = self->_colorStatistics;
  self->_colorStatistics = 0;
}

- (id)_finalizedInfoPlistDictionaryWithSnapshotImageFormat:(id)format
{
  formatCopy = format;
  v5 = MEMORY[0x1E695DF90];
  infoDictionary = [(PUIPosterSnapshotBundleBuilder *)self infoDictionary];
  v7 = [v5 dictionaryWithDictionary:infoDictionary];

  if (formatCopy)
  {
    [v7 setObject:formatCopy forKey:@"PUIPosterSnapshotBundleInfoKeySnapshotImageFormat"];
  }

  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    [v7 setObject:hardwareIdentifier forKey:@"PUIPosterSnapshotBundleInfoKeyHardwareIdentifier"];
  }

  v9 = PUIPosterSnapshotBundleSharedDateFormatter();
  date = [MEMORY[0x1E695DF00] date];
  v11 = [v9 stringFromDate:date];
  [v7 setObject:v11 forKey:@"PUIPosterSnapshotBundleInfoKeyDateCreated"];

  v12 = [v7 objectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch"];

  if (!v12)
  {
    [v7 setObject:&unk_1F1C92868 forKey:@"PUIPosterSnapshotBundleInfoKeySnapshotEpoch"];
  }

  [v7 setObject:&unk_1F1C92880 forKey:@"PUIPosterSnapshotBundleInfoKeySnapshotVersion"];
  [v7 setObject:&unk_1F1C92898 forKey:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleVersion"];
  allKeys = [(NSMutableDictionary *)self->_levelToImage allKeys];
  objectEnumerator = [allKeys objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v16 = allObjects;
  v17 = MEMORY[0x1E695E0F0];
  if (allObjects)
  {
    v17 = allObjects;
  }

  v18 = v17;

  v19 = [v18 bs_mapNoNulls:&__block_literal_global_134];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->_userInterfaceStyle];
  [v7 setObject:v20 forKey:@"PUIPosterSnapshotBundleInfoKeyUserInterfaceStyle"];

  [v7 setObject:v19 forKey:@"PUIPosterSnapshotBundleInfoKeySnapshotLevels"];
  v21 = [v7 objectForKey:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];

  if (!v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:self->_interfaceOrientation];
    [v7 setObject:v22 forKey:@"PUIPosterSnapshotBundleInfoKeyInterfaceOrientation"];
  }

  v23 = [v7 objectForKey:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];

  if (!v23)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceOrientation];
    [v7 setObject:v24 forKey:@"PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInt:self->_colorStatistics != 0];
  [v7 setObject:v25 forKey:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics"];

  v26 = [v7 objectForKey:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleUUID"];

  if (!v26)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v7 setObject:uUIDString forKey:@"PUIPosterSnapshotBundleInfoKeySnapshotBundleUUID"];
  }

  pf_bootInstanceIdentifier = [MEMORY[0x1E696AEC0] pf_bootInstanceIdentifier];
  if (pf_bootInstanceIdentifier)
  {
    [v7 setObject:pf_bootInstanceIdentifier forKey:@"PUIPosterSnapshotBundleInfoKeyBootSessionIdentifier"];
  }

  v30 = [v7 copy];

  return v30;
}

- (void)initWithSceneSettings:(char *)a1 snapshotDescriptor:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSceneSettings:(char *)a1 snapshotDescriptor:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSnapshotBundle:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PUIPosterSnapshotBundleClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSnapshotBundle:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)captureSnapshot:(char *)a1 forLevelSet:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"levelSet", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)captureSnapshot:(char *)a1 forLevelSet:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshot", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)captureSurface:(char *)a1 forLevelSet:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"levelSet", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)captureSurface:(char *)a1 forLevelSet:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshot", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)captureColorStatistics:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"colorStatistics", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end