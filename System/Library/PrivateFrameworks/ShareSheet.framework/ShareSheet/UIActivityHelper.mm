@interface UIActivityHelper
@end

@implementation UIActivityHelper

void __53___UIActivityHelper_activityTypeForBundleIdentifier___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.MobileSMS";
  v2[1] = @"com.apple.mobilemail";
  v3[0] = @"com.apple.UIKit.activity.Message";
  v3[1] = @"com.apple.UIKit.activity.Mail";
  v2[2] = @"com.apple.telephonyutilities.callservicesd";
  v3[2] = @"com.apple.UIKit.activity.SharePlay";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = activityTypeForBundleIdentifier__activityTypesForIdentifiers;
  activityTypeForBundleIdentifier__activityTypesForIdentifiers = v0;
}

void __55___UIActivityHelper_transportImageForBundleIdentifier___block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = objc_alloc_init(UISharePlayActivity);
  v1 = [(UISharePlayActivity *)v0 activityImage];

  if (v1)
  {
    [v4 setObject:v1 forKey:@"com.apple.telephonyutilities.callservicesd"];
  }

  v2 = [v4 copy];
  v3 = transportImageForBundleIdentifier__transportImagesForIdentifiers;
  transportImageForBundleIdentifier__transportImagesForIdentifiers = v2;
}

void __66___UIActivityHelper_preheatAvailableActivitiesForMatchingContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _backgroundPreheatBlock];
  if (v3)
  {
    v4 = v3;
    dispatch_async(*(a1 + 32), v3);
    v3 = v4;
  }
}

void __66___UIActivityHelper_orderedAvailableActivitiesForMatchingContext___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = +[_UIActivityHelper builtinActivityClasses];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass())
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = 48;
  if (v4 | v10)
  {
    v11 = 40;
  }

  v12 = *(a1 + v11);
  v13 = [*(a1 + 56) collaborationItems];
  v14 = [v13 firstObject];

  v15 = [*(a1 + 56) collaborationType];
  v16 = [*(a1 + 56) collaborationIsPostShare];
  if (_canPerformActivityWithItems(v3, v12, *(a1 + 64), v14, v15, v16))
  {
    [*(a1 + 72) addObject:v3];
    v17 = [v3 activityType];
    v18 = [v17 isEqualToString:@"com.apple.UIKit.activity.Print"];

    if (v18)
    {
      v25 = v3;
      v19 = _UIActivityGetPrintingBasedActivities();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v26 + 1) + 8 * j);
            _setIsContentManagedIfResctrictableActivity(v24, *(a1 + 80));
            if (([*(a1 + 56) shouldExcludeActivity:v24] & 1) == 0 && _canPerformActivityWithItems(v24, v12, *(a1 + 64), v14, v15, v16))
            {
              [*(a1 + 72) addObject:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v21);
      }

      v3 = v25;
    }
  }
}

@end