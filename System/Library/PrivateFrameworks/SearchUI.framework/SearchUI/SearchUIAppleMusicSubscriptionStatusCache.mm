@interface SearchUIAppleMusicSubscriptionStatusCache
- (void)computeObjectForKey:(id)key completionHandler:(id)handler;
@end

@implementation SearchUIAppleMusicSubscriptionStatusCache

- (void)computeObjectForKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__SearchUIAppleMusicSubscriptionStatusCache_computeObjectForKey_completionHandler___block_invoke;
  v6[3] = &unk_1E85B4560;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [SearchUIMusicUtilities canPlayAppleMusicWithCompletionHandler:v6];
}

void __83__SearchUIAppleMusicSubscriptionStatusCache_computeObjectForKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  (*(v2 + 16))(v2, v3);
}

@end