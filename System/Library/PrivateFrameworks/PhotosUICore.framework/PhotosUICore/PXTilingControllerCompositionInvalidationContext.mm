@interface PXTilingControllerCompositionInvalidationContext
+ (id)defaultAnimationOptionsForTilingController:(id)controller withInvalidationContexts:(id)contexts;
@end

@implementation PXTilingControllerCompositionInvalidationContext

+ (id)defaultAnimationOptionsForTilingController:(id)controller withInvalidationContexts:(id)contexts
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contextsCopy = contexts;
  v7 = [contextsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(contextsCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        originatingTilingController = [v11 originatingTilingController];

        if (originatingTilingController != controllerCopy)
        {
          animationOptions = [v11 animationOptions];
          if (animationOptions)
          {
            v14 = animationOptions;
            goto LABEL_12;
          }
        }
      }

      v8 = [contextsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end