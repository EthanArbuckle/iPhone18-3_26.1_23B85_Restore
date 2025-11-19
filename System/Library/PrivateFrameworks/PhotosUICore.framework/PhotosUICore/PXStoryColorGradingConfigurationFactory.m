@interface PXStoryColorGradingConfigurationFactory
+ (PXStoryColorGradingConfiguration)sharedConfiguration;
+ (id)newConfiguration;
@end

@implementation PXStoryColorGradingConfigurationFactory

+ (PXStoryColorGradingConfiguration)sharedConfiguration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PXStoryColorGradingConfigurationFactory_sharedConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedConfiguration_onceToken != -1)
  {
    dispatch_once(&sharedConfiguration_onceToken, block);
  }

  v2 = sharedConfiguration_sharedConfig;

  return v2;
}

void __62__PXStoryColorGradingConfigurationFactory_sharedConfiguration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) newConfiguration];
  v2 = sharedConfiguration_sharedConfig;
  sharedConfiguration_sharedConfig = v1;
}

+ (id)newConfiguration
{
  v25 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E69BF238] defaultSystemPhotoDataDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"Configuration"];
  v6 = [v5 stringByAppendingPathComponent:@"PXStoryColorGradeConfig"];
  v7 = [v6 stringByAppendingPathExtension:@"plist"];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v22 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v8 error:&v22];
  v10 = v22;
  if (v9)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_INFO, "PXStoryConcreteColorGradingRepository config file loaded from on-device file at %@", buf, 0xCu);
    }

    v12 = [v9 objectForKeyedSubscript:@"cubes"];
    if (!v12)
    {
      PXAssertGetLog();
    }

    v13 = [[PXStoryColorGradingConfiguration alloc] initWithCubeInfos:v12];
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PXStoryColorGradingConfigurationFactory_newConfiguration__block_invoke;
    block[3] = &unk_1E7745A10;
    v19 = @"PXStoryColorGradeConfig";
    v20 = a1;
    v21 = a2;
    if (newConfiguration_onceToken != -1)
    {
      dispatch_once(&newConfiguration_onceToken, block);
    }

    v14 = [newConfiguration_bundledGradeInfo objectForKeyedSubscript:@"cubes"];
    if (!v14)
    {
      PXAssertGetLog();
    }

    v13 = [[PXStoryColorGradingConfiguration alloc] initWithCubeInfos:v14];

    if (!v13)
    {
      v15 = PLStoryGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "PXStoryConcreteColorGradingRepository config fallback", buf, 2u);
      }

      v13 = objc_alloc_init(PXStoryColorGradingConfiguration);
    }
  }

  objc_autoreleasePoolPop(context);
  return v13;
}

void __59__PXStoryColorGradingConfigurationFactory_newConfiguration__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:*(a1 + 32) withExtension:@"plist"];

  if (!v3)
  {
    PXAssertGetLog();
  }

  v4 = PLStoryGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "PXStoryConcreteColorGradingRepository config file loaded from bundle at %@", buf, 0xCu);
  }

  v8 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v3 error:&v8];
  v6 = v8;
  v7 = newConfiguration_bundledGradeInfo;
  newConfiguration_bundledGradeInfo = v5;

  if (!newConfiguration_bundledGradeInfo)
  {
    PXAssertGetLog();
  }
}

@end