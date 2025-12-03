@interface NSUserActivity(PhotosUICore)
+ (uint64_t)px_allowsDonationsForCurrentProcess;
+ (void)px_requestActivityWithActivityType:()PhotosUICore titleProvider:completionBlock:;
- (uint64_t)px_isCurrent;
- (void)px_setPersistentIdentifierFromAsset:()PhotosUICore;
- (void)px_setPersistentIdentifierFromAssetCollection:()PhotosUICore;
@end

@implementation NSUserActivity(PhotosUICore)

- (void)px_setPersistentIdentifierFromAssetCollection:()PhotosUICore
{
  v6 = a3;
  cloudGUID = [v6 cloudGUID];
  if (cloudGUID)
  {
    [self setPersistentIdentifier:cloudGUID];
  }

  else
  {
    uuid = [v6 uuid];
    [self setPersistentIdentifier:uuid];
  }
}

- (void)px_setPersistentIdentifierFromAsset:()PhotosUICore
{
  v6 = a3;
  cloudIdentifier = [v6 cloudIdentifier];
  if (cloudIdentifier)
  {
    [self setPersistentIdentifier:cloudIdentifier];
  }

  else
  {
    uuid = [v6 uuid];
    [self setPersistentIdentifier:uuid];
  }
}

- (uint64_t)px_isCurrent
{
  _uniqueIdentifier = [self _uniqueIdentifier];
  _currentUserActivityUUID = [MEMORY[0x1E69636A8] _currentUserActivityUUID];
  v3 = [_uniqueIdentifier isEqual:_currentUserActivityUUID];

  return v3;
}

+ (void)px_requestActivityWithActivityType:()PhotosUICore titleProvider:completionBlock:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (px_requestActivityWithActivityType_titleProvider_completionBlock__onceToken != -1)
  {
    dispatch_once(&px_requestActivityWithActivityType_titleProvider_completionBlock__onceToken, &__block_literal_global_208670);
  }

  v10 = px_requestActivityWithActivityType_titleProvider_completionBlock__queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__NSUserActivity_PhotosUICore__px_requestActivityWithActivityType_titleProvider_completionBlock___block_invoke_2;
  block[3] = &unk_1E7744FE0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(v10, block);
}

+ (uint64_t)px_allowsDonationsForCurrentProcess
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  v2 = [processName isEqualToString:@"Photos"];
  return v2;
}

@end