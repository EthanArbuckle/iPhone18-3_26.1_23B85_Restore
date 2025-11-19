@interface UIApplication(IMCompatibility)
+ (id)applicationCacheDirectory;
+ (id)applicationDocumentsDirectory;
@end

@implementation UIApplication(IMCompatibility)

+ (id)applicationCacheDirectory
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 lastObject];

  return v1;
}

+ (id)applicationDocumentsDirectory
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = [v0 lastObject];

  return v1;
}

@end