@interface PLCloudPhotoLibraryError
+ (id)createErrorWithType:(int64_t)type withDebugMessage:(id)message;
+ (id)userMessageForErrorType:(int64_t)type;
@end

@implementation PLCloudPhotoLibraryError

+ (id)createErrorWithType:(int64_t)type withDebugMessage:(id)message
{
  messageCopy = message;
  v6 = [PLCloudPhotoLibraryError userMessageForErrorType:type];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:v6 forKey:*MEMORY[0x1E696A578]];
  if (messageCopy)
  {
    [dictionary setValue:messageCopy forKey:*MEMORY[0x1E696A278]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLCloudPhotoLibraryErrorDomain" code:type userInfo:dictionary];

  return v8;
}

+ (id)userMessageForErrorType:(int64_t)type
{
  v4 = PLServicesLocalizedFrameworkStringForAssetsd();

  return v4;
}

@end