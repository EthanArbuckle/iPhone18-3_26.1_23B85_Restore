@interface WBSSafariScribbleFeedbackSyncEngine
- (WBSSafariScribbleFeedbackSyncEngine)init;
- (void)syncScribbleFeedbackUp:(id)up withCompletion:(id)completion;
@end

@implementation WBSSafariScribbleFeedbackSyncEngine

- (WBSSafariScribbleFeedbackSyncEngine)init
{
  v7.receiver = self;
  v7.super_class = WBSSafariScribbleFeedbackSyncEngine;
  v2 = [(WBSSafariScribbleFeedbackSyncEngine *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WBSSafariScribbleFeedbackSyncEngine.internalQueue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)syncScribbleFeedbackUp:(id)up withCompletion:(id)completion
{
  upCopy = up;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WBSSafariScribbleFeedbackSyncEngine_syncScribbleFeedbackUp_withCompletion___block_invoke;
  v11[3] = &unk_1E7FB6F08;
  v12 = upCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = upCopy;
  dispatch_async(internalQueue, v11);
}

void __77__WBSSafariScribbleFeedbackSyncEngine_syncScribbleFeedbackUp_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C8A08] sharedProxy];
  [v2 syncScribbleFeedbackUp:*(a1 + 32) withCompletion:*(a1 + 40)];
}

@end