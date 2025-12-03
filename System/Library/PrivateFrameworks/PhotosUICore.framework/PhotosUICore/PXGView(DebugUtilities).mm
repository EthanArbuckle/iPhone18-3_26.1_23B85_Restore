@interface PXGView(DebugUtilities)
+ (id)allDescriptions;
+ (id)dumpAllViews;
+ (id)dumpAllViewsToDirectory:()DebugUtilities;
@end

@implementation PXGView(DebugUtilities)

+ (id)dumpAllViews
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v2 = [off_1E7721708 dumpAllViewsToDirectory:temporaryDirectory];

  return v2;
}

+ (id)dumpAllViewsToDirectory:()DebugUtilities
{
  v3 = a3;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PXGView_DebugUtilities__dumpAllViewsToDirectory___block_invoke;
  v10[3] = &unk_1E77362D8;
  v11 = v3;
  v5 = v4;
  v12 = v5;
  v6 = v3;
  [off_1E7721708 enumerateAllViewsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

+ (id)allDescriptions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PXGView_DebugUtilities__allDescriptions__block_invoke;
  v5[3] = &unk_1E77362B0;
  v3 = v2;
  v6 = v3;
  [self enumerateAllViewsUsingBlock:v5];

  return v3;
}

@end