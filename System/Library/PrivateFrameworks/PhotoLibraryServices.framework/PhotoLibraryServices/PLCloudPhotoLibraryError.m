@interface PLCloudPhotoLibraryError
+ (id)createErrorWithType:(int64_t)a3 withDebugMessage:(id)a4;
+ (id)userMessageForErrorType:(int64_t)a3;
@end

@implementation PLCloudPhotoLibraryError

+ (id)createErrorWithType:(int64_t)a3 withDebugMessage:(id)a4
{
  v5 = a4;
  v6 = [PLCloudPhotoLibraryError userMessageForErrorType:a3];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setValue:v6 forKey:*MEMORY[0x1E696A578]];
  if (v5)
  {
    [v7 setValue:v5 forKey:*MEMORY[0x1E696A278]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:a3 userInfo:v7];

  return v8;
}

+ (id)userMessageForErrorType:(int64_t)a3
{
  v4 = PLServicesLocalizedFrameworkStringForAssetsd();

  return v4;
}

@end