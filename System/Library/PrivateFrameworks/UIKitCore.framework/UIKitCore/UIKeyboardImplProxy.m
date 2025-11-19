@interface UIKeyboardImplProxy
@end

@implementation UIKeyboardImplProxy

void __43___UIKeyboardImplProxy_processPayloadInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 processPayloadInfo:*(a1 + 40)];
}

void __57___UIKeyboardImplProxy_pushAutocorrections_requestToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pushAutocorrections:*(a1 + 40) requestToken:*(a1 + 48)];
}

void __60___UIKeyboardImplProxy_pushCandidateResultSet_requestToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pushCandidateResultSet:*(a1 + 40) requestToken:*(a1 + 48)];
}

@end