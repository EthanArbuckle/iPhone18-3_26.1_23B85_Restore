@interface RemoveFromAllBackdropViews
@end

@implementation RemoveFromAllBackdropViews

void ___RemoveFromAllBackdropViews_block_invoke(uint64_t a1)
{
  v2 = _AllBackdropViews();
  [v2 removeObject:*(a1 + 32)];
}

@end