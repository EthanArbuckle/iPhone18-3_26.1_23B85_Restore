@interface UINavigationBarItemStack
@end

@implementation UINavigationBarItemStack

void __42___UINavigationBarItemStack_iterateItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 item];
  (*(v4 + 16))(v4, v5, a3);
}

@end