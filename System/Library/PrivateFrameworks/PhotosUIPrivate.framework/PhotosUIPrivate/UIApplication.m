@interface UIApplication
@end

@implementation UIApplication

uint64_t __48__UIApplication_PhotosUI__pu_prepareCPAnalytics__block_invoke()
{
  v0 = MEMORY[0x1E6991F28];
  v1 = [MEMORY[0x1E696AAE8] pu_PhotosUIFrameworkBundle];
  [v0 updateWithConfigurationFilename:@"CPAnalyticsConfig-PhotosUI" inBundle:v1];

  return MEMORY[0x1EEE2D1B8]();
}

void __62__UIApplication_PhotosUI__pu_startedAnimationSubTest_forTest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) stringByAppendingString:@"-Latency"];
  [v2 finishedSubTest:v3 forTest:*(a1 + 48)];

  [*(a1 + 32) startedSubTest:@"Animation" forTest:*(a1 + 48) withMetrics:&unk_1F2B7D9B8];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) stringByAppendingString:@"-Animation"];
  [v4 startedSubTest:v5 forTest:*(a1 + 48) withMetrics:&unk_1F2B7D9D0];
}

void __46__UIApplication_PhotosUI__ppt_testDefinitions__block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 userInterfaceIdiom] == 1)
  {
    v1 = @"~ipad";
  }

  else
  {
    v1 = @"~iphone";
  }

  v2 = v1;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = v2;
  v21[0] = v2;
  v21[1] = @"~iphone";
  v21[2] = @"~ipad";
  v21[3] = &stru_1F2AC6818;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AAE8] mainBundle];
        v10 = [v9 bundlePath];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"testDefinitions%@.plist", v8];
        v12 = [v10 stringByAppendingPathComponent:v11];

        v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v12];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:0];
          v15 = ppt_testDefinitions_testDefinitions;
          ppt_testDefinitions_testDefinitions = v14;

          if (ppt_testDefinitions_testDefinitions)
          {

            goto LABEL_15;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void __77__UIApplication_Debugging___pu_debugSearchViewControllerHierarchyUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

uint64_t __63__UIApplication_Debugging__pu_debugCurrentPhotosViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end