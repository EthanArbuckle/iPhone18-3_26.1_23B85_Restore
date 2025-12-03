@interface MADCacheDeleteManagerError
+ (id)buildError:(int64_t)error fromOperation:(id)operation underlyingError:(id)underlyingError withDescription:(id)description;
+ (id)summaryForCode:(int64_t)code fromOperation:(id)operation;
+ (void)mapCacheDeleteManagerErrorIndications;
@end

@implementation MADCacheDeleteManagerError

+ (id)summaryForCode:(int64_t)code fromOperation:(id)operation
{
  if (code > 3)
  {
    v4 = @"MADCacheDeleteManagerError";
  }

  else
  {
    v4 = *(&off_4B50F0 + code);
  }

  return [NSString stringWithFormat:@"%@:%@(%lld)", operation, v4, code];
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

+ (id)buildError:(int64_t)error fromOperation:(id)operation underlyingError:(id)underlyingError withDescription:(id)description
{
  underlyingErrorCopy = underlyingError;
  descriptionCopy = description;
  operationCopy = operation;
  v12 = objc_opt_new();
  v13 = [MADCacheDeleteManagerError summaryForCode:error fromOperation:operationCopy];

  v14 = [NSString alloc];
  if (descriptionCopy)
  {
    descriptionCopy = [v14 initWithFormat:@"[%@] %@", v13, descriptionCopy];
  }

  else
  {
    descriptionCopy = [v14 initWithFormat:@"[%@]", v13, v19];
  }

  v16 = descriptionCopy;
  if (descriptionCopy)
  {
    [v12 setObject:descriptionCopy forKey:NSLocalizedDescriptionKey];
  }

  if (underlyingErrorCopy)
  {
    [v12 setObject:underlyingErrorCopy forKey:NSUnderlyingErrorKey];
  }

  v17 = [NSError errorWithDomain:@"com.apple.MobileAssetError" code:error userInfo:v12];

  return v17;
}

@end