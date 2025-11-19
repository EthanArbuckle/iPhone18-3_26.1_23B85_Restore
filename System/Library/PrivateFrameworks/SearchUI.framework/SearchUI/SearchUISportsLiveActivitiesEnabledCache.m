@interface SearchUISportsLiveActivitiesEnabledCache
- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4;
@end

@implementation SearchUISportsLiveActivitiesEnabledCache

- (void)computeObjectForKey:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__SearchUISportsLiveActivitiesEnabledCache_computeObjectForKey_completionHandler___block_invoke;
  v6[3] = &unk_1E85B2F88;
  v7 = v4;
  v5 = v4;
  [_TtC8SearchUI26SearchUISportsKitUtilities liveActivitiesEnabledWithCompletionBlock:v6];
}

void __82__SearchUISportsLiveActivitiesEnabledCache_computeObjectForKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  (*(v2 + 16))(v2, v3);
}

@end