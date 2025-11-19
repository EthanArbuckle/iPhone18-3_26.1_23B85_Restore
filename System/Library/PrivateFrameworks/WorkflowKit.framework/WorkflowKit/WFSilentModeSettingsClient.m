@interface WFSilentModeSettingsClient
+ (BOOL)canRunIntent;
+ (id)publisher;
+ (id)reversalArbiter;
+ (id)reversePublisher;
+ (void)createClientWithCompletionHandler:(id)a3;
+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)a3;
+ (void)getBookmarkForFirstEventAfterBookmark:(id)a3 completionHandler:(id)a4;
+ (void)getReversalStateWithBookmark:(id)a3 completionHandler:(id)a4;
- (void)getStateWithCompletionHandler:(id)a3;
@end

@implementation WFSilentModeSettingsClient

- (void)getStateWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (+[WFSilentModeSettingsClient canRunIntent])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E0948]);
    v3[2](v3, [v4 silentModeActive], 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFSettingsClientErrorDomain" code:4 userInfo:0];
    (v3)[2](v3, 0, v4);
  }
}

+ (void)getReversalStateWithBookmark:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 reversalArbiter];
  v9 = [v7 biomeBookmark];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WFSilentModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke;
  v11[3] = &unk_1E8372F10;
  v12 = v6;
  v10 = v6;
  [v8 getReversalStateWithBookmark:v9 completionHandler:v11];
}

void __77__WFSilentModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 starting];
    v4 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

+ (void)getBookmarkForFirstEventAfterBookmark:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 reversalArbiter];
  v9 = [v7 biomeBookmark];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WFSilentModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke;
  v11[3] = &unk_1E8372EE8;
  v12 = v6;
  v10 = v6;
  [v8 getBookmarkForFirstEventAfterBookmark:v9 completionHandler:v11];
}

void __86__WFSilentModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [[WFSettingsClientBookmark alloc] initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 reversalArbiter];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WFSilentModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8372EE8;
  v8 = v4;
  v6 = v4;
  [v5 getBookmarkForCurrentStateWithCompletionHandler:v7];
}

void __78__WFSilentModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [[WFSettingsClientBookmark alloc] initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (id)reversalArbiter
{
  v3 = [WFSettingsClientBiomeReversalArbiter alloc];
  v4 = [a1 publisher];
  v5 = [a1 reversePublisher];
  v6 = [(WFSettingsClientBiomeReversalArbiter *)v3 initWithPublisher:v4 reversePublisher:v5];

  return v6;
}

+ (id)reversePublisher
{
  v2 = BiomeLibrary();
  v3 = [v2 Device];
  v4 = [v3 SilentMode];
  v5 = +[WFSettingsClientBiomeReversalArbiter reversePublisherOptions];
  v6 = [v4 publisherWithOptions:v5];

  return v6;
}

+ (id)publisher
{
  v2 = BiomeLibrary();
  v3 = [v2 Device];
  v4 = [v3 SilentMode];
  v5 = [v4 publisher];

  return v5;
}

+ (BOOL)canRunIntent
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 hasCapability:*MEMORY[0x1E69E1030]];

  return v3;
}

+ (void)createClientWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (+[WFSilentModeSettingsClient canRunIntent])
  {
    v4 = objc_opt_new();
    v3[2](v3, v4, 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFSettingsClientErrorDomain" code:4 userInfo:0];
    (v3)[2](v3, 0, v4);
  }
}

@end