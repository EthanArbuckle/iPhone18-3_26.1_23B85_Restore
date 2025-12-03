@interface WBSUserDefinedContentBlockerManager(ScribbleUtilities)
- (void)deleteAllContentBlockersWithCompletionHandler:()ScribbleUtilities;
- (void)getAllPaintingAvoidanceSelectorsThatApplyToHost:()ScribbleUtilities completionHandler:;
@end

@implementation WBSUserDefinedContentBlockerManager(ScribbleUtilities)

- (void)deleteAllContentBlockersWithCompletionHandler:()ScribbleUtilities
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __104__WBSUserDefinedContentBlockerManager_ScribbleUtilities__deleteAllContentBlockersWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8283998;
  v7 = v4;
  v5 = v4;
  [self resetDatabaseWithCompletionHandler:v6];
}

- (void)getAllPaintingAvoidanceSelectorsThatApplyToHost:()ScribbleUtilities completionHandler:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __124__WBSUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke;
  v8[3] = &unk_1E8286558;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [self contentBlockerForHost:a3 createIfNeeded:0 completionHandler:v8];
}

@end