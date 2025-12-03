@interface PXVideoTrimQueueController
+ (BOOL)areVideoSourcesStreamShareSources:(id)sources;
@end

@implementation PXVideoTrimQueueController

+ (BOOL)areVideoSourcesStreamShareSources:(id)sources
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sourcesCopy = sources;
  v4 = [sourcesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [sourcesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

@end