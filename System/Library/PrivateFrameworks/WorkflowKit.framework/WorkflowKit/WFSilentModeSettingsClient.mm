@interface WFSilentModeSettingsClient
+ (BOOL)canRunIntent;
+ (id)publisher;
+ (id)reversalArbiter;
+ (id)reversePublisher;
+ (void)createClientWithCompletionHandler:(id)handler;
+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler;
+ (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler;
+ (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler;
- (void)getStateWithCompletionHandler:(id)handler;
@end

@implementation WFSilentModeSettingsClient

- (void)getStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[WFSilentModeSettingsClient canRunIntent])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E0948]);
    handlerCopy[2](handlerCopy, [v4 silentModeActive], 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFSettingsClientErrorDomain" code:4 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v4);
  }
}

+ (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkCopy = bookmark;
  reversalArbiter = [self reversalArbiter];
  biomeBookmark = [bookmarkCopy biomeBookmark];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WFSilentModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke;
  v11[3] = &unk_1E8372F10;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [reversalArbiter getReversalStateWithBookmark:biomeBookmark completionHandler:v11];
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

+ (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkCopy = bookmark;
  reversalArbiter = [self reversalArbiter];
  biomeBookmark = [bookmarkCopy biomeBookmark];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__WFSilentModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke;
  v11[3] = &unk_1E8372EE8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [reversalArbiter getBookmarkForFirstEventAfterBookmark:biomeBookmark completionHandler:v11];
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

+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  reversalArbiter = [self reversalArbiter];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WFSilentModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8372EE8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [reversalArbiter getBookmarkForCurrentStateWithCompletionHandler:v7];
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
  publisher = [self publisher];
  reversePublisher = [self reversePublisher];
  v6 = [(WFSettingsClientBiomeReversalArbiter *)v3 initWithPublisher:publisher reversePublisher:reversePublisher];

  return v6;
}

+ (id)reversePublisher
{
  v2 = BiomeLibrary();
  device = [v2 Device];
  silentMode = [device SilentMode];
  v5 = +[WFSettingsClientBiomeReversalArbiter reversePublisherOptions];
  v6 = [silentMode publisherWithOptions:v5];

  return v6;
}

+ (id)publisher
{
  v2 = BiomeLibrary();
  device = [v2 Device];
  silentMode = [device SilentMode];
  publisher = [silentMode publisher];

  return publisher;
}

+ (BOOL)canRunIntent
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [currentDevice hasCapability:*MEMORY[0x1E69E1030]];

  return v3;
}

+ (void)createClientWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[WFSilentModeSettingsClient canRunIntent])
  {
    v4 = objc_opt_new();
    handlerCopy[2](handlerCopy, v4, 0);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFSettingsClientErrorDomain" code:4 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v4);
  }
}

@end