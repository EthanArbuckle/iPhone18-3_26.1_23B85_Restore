@interface PXSharedLibrarySendAnalyticsForUserAction
@end

@implementation PXSharedLibrarySendAnalyticsForUserAction

void ___PXSharedLibrarySendAnalyticsForUserAction_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  v5 = *(a1 + 32);
  v10[0] = @"action";
  v10[1] = @"suggestedBy";
  v11[0] = v5;
  v11[1] = a2;
  v10[2] = @"assetsCount";
  v11[2] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 sendEvent:@"com.apple.photos.sharedlibrary.userActionOnAssets" withPayload:v9];
}

@end