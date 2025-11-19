@interface _WBSWKApplicationManifestExtrasUtilities
+ (id)applicationCategoryTypeForCategories:(id)a3;
@end

@implementation _WBSWKApplicationManifestExtrasUtilities

+ (id)applicationCategoryTypeForCategories:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:@"WebAppCategories" withExtension:@"plist"];

  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end