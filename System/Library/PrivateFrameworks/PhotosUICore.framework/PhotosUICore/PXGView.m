@interface PXGView
@end

@implementation PXGView

uint64_t __44__PXGView_PXFeed__feedHitTestResultsInRect___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __67__PXGView_PXFeed__feedHitTestResultAtPoint_ignoringOverlayContent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 leafSublayoutForSpriteIndex:a2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __51__PXGView_DebugUtilities__dumpAllViewsToDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 preferredFileNameForExportingDebugHierarchy];
  v6 = [v4 URLByAppendingPathComponent:v5];

  v15 = 0;
  v7 = [v3 exportDebugHierarchyToURL:v6 error:&v15];
  v8 = v15;
  v9 = *(a1 + 40);
  v10 = MEMORY[0x1E696AEC0];
  if (v7)
  {
    v11 = [v6 path];
    v12 = [v10 stringWithFormat:@"Dumped Tungsten hierarchy to %@", v11];
    [v9 addObject:v12];
  }

  else
  {
    v13 = objc_opt_class();
    v11 = NSStringFromClass(v13);
    v12 = [v8 localizedDescription];
    v14 = [v10 stringWithFormat:@"Failed to export Tungsten hierarchy of <%@: %p>: %@", v11, v3, v12];
    [v9 addObject:v14];

    v8 = v14;
  }
}

void __42__PXGView_DebugUtilities__allDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  v3 = *(a1 + 32);
  v4 = [v5 description];
  [v3 appendString:v4];
}

void __55__PXGView_DebugUtilities__enumerateAllViewsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end