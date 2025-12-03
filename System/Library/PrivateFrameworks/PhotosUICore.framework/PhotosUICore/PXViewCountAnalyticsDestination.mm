@interface PXViewCountAnalyticsDestination
- (void)processEvent:(id)event;
@end

@implementation PXViewCountAnalyticsDestination

- (void)processEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  if ([name isEqualToString:@"com.apple.photos.CPAnalytics.incrementAssetViewCount"])
  {
    v7 = [eventCopy propertyForKey:*MEMORY[0x1E6991E18]];
    photoLibrary = [v7 photoLibrary];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __48__PXViewCountAnalyticsDestination_processEvent___block_invoke;
    v26[3] = &unk_1E774C648;
    v9 = &v27;
    v27 = v7;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __48__PXViewCountAnalyticsDestination_processEvent___block_invoke_2;
    v25[3] = &unk_1E7741CE0;
    v25[4] = self;
    v25[5] = a2;
    v10 = v7;
    v11 = v26;
    v12 = v25;
LABEL_5:
    [photoLibrary performChanges:v11 completionHandler:{v12, v14, v15, v16, v17, selfCopy, v19, v20, v21, v22, v23}];

    goto LABEL_6;
  }

  if ([name isEqualToString:@"com.apple.photos.CPAnalytics.incrementMemoryViewCount"])
  {
    v13 = [eventCopy propertyForKey:*MEMORY[0x1E6991E08]];
    photoLibrary = [v13 photoLibrary];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __48__PXViewCountAnalyticsDestination_processEvent___block_invoke_189;
    v23 = &unk_1E774C648;
    v9 = &v24;
    v24 = v13;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __48__PXViewCountAnalyticsDestination_processEvent___block_invoke_2_192;
    v17 = &unk_1E7741CE0;
    selfCopy = self;
    v19 = a2;
    v10 = v13;
    v11 = &v20;
    v12 = &v14;
    goto LABEL_5;
  }

LABEL_6:
}

void __48__PXViewCountAnalyticsDestination_processEvent___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  [v1 incrementViewCount];
}

void __48__PXViewCountAnalyticsDestination_processEvent___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    PXAssertGetLog();
  }
}

void __48__PXViewCountAnalyticsDestination_processEvent___block_invoke_189(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  v1 = [MEMORY[0x1E695DF00] date];
  [v2 setLastMoviePlayedDate:v1];
  [v2 setLastViewedDate:v1];
  [v2 incrementPlayCount];
}

void __48__PXViewCountAnalyticsDestination_processEvent___block_invoke_2_192(uint64_t a1, char a2, void *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    PXAssertGetLog();
  }
}

@end