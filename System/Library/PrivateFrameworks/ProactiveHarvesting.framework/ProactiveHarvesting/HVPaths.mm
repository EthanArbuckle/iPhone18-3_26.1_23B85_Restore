@interface HVPaths
+ (id)topDirectoryCreateIfNeeded:(BOOL)a3;
@end

@implementation HVPaths

+ (id)topDirectoryCreateIfNeeded:(BOOL)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__HVPaths_topDirectoryCreateIfNeeded___block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a3;
  if (topDirectoryCreateIfNeeded___pasOnceToken17 != -1)
  {
    dispatch_once(&topDirectoryCreateIfNeeded___pasOnceToken17, v5);
  }

  v3 = topDirectoryCreateIfNeeded___pasExprOnceResult;

  return v3;
}

void __38__HVPaths_topDirectoryCreateIfNeeded___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) topDirectoryWithName:@"Suggestions/Harvesting" createIfNeeded:*(a1 + 40)];
  v4 = topDirectoryCreateIfNeeded___pasExprOnceResult;
  topDirectoryCreateIfNeeded___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

@end