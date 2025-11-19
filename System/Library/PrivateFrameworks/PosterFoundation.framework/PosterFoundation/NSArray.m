@interface NSArray
@end

@implementation NSArray

void __70__NSArray_PosterFoundation__pf_eachRespondingToSelector_performBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end