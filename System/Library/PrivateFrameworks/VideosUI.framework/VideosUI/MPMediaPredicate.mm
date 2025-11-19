@interface MPMediaPredicate
@end

@implementation MPMediaPredicate

void __62__MPMediaPredicate_VideosUI__vui_isLocalPredicate_comparison___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) adamID];
  if ([v5 length])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "integerValue")}];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

@end