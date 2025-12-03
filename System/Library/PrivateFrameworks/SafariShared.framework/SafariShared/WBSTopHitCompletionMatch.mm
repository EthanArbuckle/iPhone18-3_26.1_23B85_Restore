@interface WBSTopHitCompletionMatch
- (WBSTopHitCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)match userInput:(id)input forQueryID:(int64_t)d shouldPreload:(BOOL)preload;
@end

@implementation WBSTopHitCompletionMatch

- (WBSTopHitCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)match userInput:(id)input forQueryID:(int64_t)d shouldPreload:(BOOL)preload
{
  v11.receiver = self;
  v11.super_class = WBSTopHitCompletionMatch;
  v7 = [(WBSBookmarkAndHistoryCompletionMatch *)&v11 initWithBookmarkAndHistoryCompletionMatch:match userInput:input forQueryID:d];
  v8 = v7;
  if (v7)
  {
    *(&v7->super._isSynthesized + 1) = preload;
    v9 = v7;
  }

  return v8;
}

@end