@interface AddToAllBackdropViews
@end

@implementation AddToAllBackdropViews

void ___AddToAllBackdropViews_block_invoke(uint64_t a1)
{
  v2 = _AllBackdropViews();
  [v2 addObject:*(a1 + 32)];
}

@end