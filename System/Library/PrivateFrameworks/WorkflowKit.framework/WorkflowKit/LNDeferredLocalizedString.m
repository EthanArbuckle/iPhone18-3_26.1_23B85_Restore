@interface LNDeferredLocalizedString
@end

@implementation LNDeferredLocalizedString

void __82__LNDeferredLocalizedString_Workflow__wf_getLocalizedStringWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 print];
  v6 = [v7 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

@end