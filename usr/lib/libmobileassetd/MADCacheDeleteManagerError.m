@interface MADCacheDeleteManagerError
+ (id)buildError:(int64_t)a3 fromOperation:(id)a4 underlyingError:(id)a5 withDescription:(id)a6;
+ (id)summaryForCode:(int64_t)a3 fromOperation:(id)a4;
+ (void)mapCacheDeleteManagerErrorIndications;
@end

@implementation MADCacheDeleteManagerError

+ (id)summaryForCode:(int64_t)a3 fromOperation:(id)a4
{
  if (a3 > 3)
  {
    v4 = @"MADCacheDeleteManagerError";
  }

  else
  {
    v4 = *(&off_4B50F0 + a3);
  }

  return [NSString stringWithFormat:@"%@:%@(%lld)", a4, v4, a3];
}

+ (void)mapCacheDeleteManagerErrorIndications
{
  if (mapCacheDeleteManagerErrorIndications_errorInfoOnce != -1)
  {
    +[MADCacheDeleteManagerError mapCacheDeleteManagerErrorIndications];
  }
}

void __67__MADCacheDeleteManagerError_mapCacheDeleteManagerErrorIndications__block_invoke(id a1)
{
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError" withCode:0 codeName:@"SUCCESS"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError" withCode:1 codeName:@"FileSystemError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError" withCode:2 codeName:@"CacheDeleteError"];

  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError" withCode:3 codeName:@"CacheDeleteNotSupported"];
}

+ (id)buildError:(int64_t)a3 fromOperation:(id)a4 underlyingError:(id)a5 withDescription:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = [MADCacheDeleteManagerError summaryForCode:a3 fromOperation:v11];

  v14 = [NSString alloc];
  if (v10)
  {
    v15 = [v14 initWithFormat:@"[%@] %@", v13, v10];
  }

  else
  {
    v15 = [v14 initWithFormat:@"[%@]", v13, v19];
  }

  v16 = v15;
  if (v15)
  {
    [v12 setObject:v15 forKey:NSLocalizedDescriptionKey];
  }

  if (v9)
  {
    [v12 setObject:v9 forKey:NSUnderlyingErrorKey];
  }

  v17 = [NSError errorWithDomain:@"com.apple.MobileAssetError" code:a3 userInfo:v12];

  return v17;
}

@end