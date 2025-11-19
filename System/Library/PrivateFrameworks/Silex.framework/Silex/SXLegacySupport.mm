@interface SXLegacySupport
+ (id)deprecatedComponentForType:(void *)a3 andVersion:;
+ (id)deprecatedComponents;
+ (id)deprecatedComponentsForVersion:(uint64_t)a1;
@end

@implementation SXLegacySupport

+ (id)deprecatedComponentForType:(void *)a3 andVersion:
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  [(SXLegacySupport *)v6 deprecatedComponentsForVersion:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(SXFullscreenCaption *)v11 text];
        v13 = [v12 isEqualToString:{v4, v15}];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

+ (id)deprecatedComponentsForVersion:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[SXLegacySupport deprecatedComponents];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SXLegacySupport_deprecatedComponentsForVersion___block_invoke;
  v10[3] = &unk_1E8501380;
  v11 = v2;
  v5 = v3;
  v12 = v5;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

+ (id)deprecatedComponents
{
  objc_opt_self();
  if (deprecatedComponents_onceToken != -1)
  {
    +[SXLegacySupport deprecatedComponents];
  }

  v0 = deprecatedComponents_deprecatedComponents;

  return v0;
}

void __50__SXLegacySupport_deprecatedComponentsForVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 compare:*(a1 + 32) options:64] == 1)
  {
    [*(a1 + 40) addObjectsFromArray:v5];
  }
}

void __39__SXLegacySupport_deprecatedComponents__block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"1.2";
  v0 = objc_opt_class();
  v1 = [SXDeprecatedComponent deprecatedComponentWithType:v0 withReplacementClassificationClass:?];
  v11[0] = v1;
  v2 = objc_opt_class();
  v3 = [SXDeprecatedComponent deprecatedComponentWithType:v2 withReplacementClassificationClass:?];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v12[1] = @"1.11";
  v13[0] = v4;
  v5 = objc_opt_class();
  v6 = [SXDeprecatedComponent deprecatedComponentWithType:v5 withReplacementClassificationClass:?];
  v10 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = deprecatedComponents_deprecatedComponents;
  deprecatedComponents_deprecatedComponents = v8;
}

@end