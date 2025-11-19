@interface WBSTopHitCompletionMatch
- (WBSTopHitCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)a3 userInput:(id)a4 forQueryID:(int64_t)a5 shouldPreload:(BOOL)a6;
@end

@implementation WBSTopHitCompletionMatch

- (WBSTopHitCompletionMatch)initWithBookmarkAndHistoryCompletionMatch:(void *)a3 userInput:(id)a4 forQueryID:(int64_t)a5 shouldPreload:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = WBSTopHitCompletionMatch;
  v7 = [(WBSBookmarkAndHistoryCompletionMatch *)&v11 initWithBookmarkAndHistoryCompletionMatch:a3 userInput:a4 forQueryID:a5];
  v8 = v7;
  if (v7)
  {
    *(&v7->super._isSynthesized + 1) = a6;
    v9 = v7;
  }

  return v8;
}

@end