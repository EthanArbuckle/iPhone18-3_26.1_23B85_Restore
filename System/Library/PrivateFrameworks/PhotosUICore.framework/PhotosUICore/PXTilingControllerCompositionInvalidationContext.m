@interface PXTilingControllerCompositionInvalidationContext
+ (id)defaultAnimationOptionsForTilingController:(id)a3 withInvalidationContexts:(id)a4;
@end

@implementation PXTilingControllerCompositionInvalidationContext

+ (id)defaultAnimationOptionsForTilingController:(id)a3 withInvalidationContexts:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 originatingTilingController];

        if (v12 != v5)
        {
          v13 = [v11 animationOptions];
          if (v13)
          {
            v14 = v13;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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