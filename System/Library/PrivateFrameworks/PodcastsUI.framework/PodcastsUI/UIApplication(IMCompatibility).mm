@interface UIApplication(IMCompatibility)
+ (id)applicationCacheDirectory;
+ (id)applicationDocumentsDirectory;
@end

@implementation UIApplication(IMCompatibility)

+ (id)applicationCacheDirectory
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v0 lastObject];

  return lastObject;
}

+ (id)applicationDocumentsDirectory
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  lastObject = [v0 lastObject];

  return lastObject;
}

@end