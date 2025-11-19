@interface NSArray
@end

@implementation NSArray

void __35__NSArray_QueryUtils__mapNonEmpty___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 length])
  {
    v3 = *(a1 + 32);
    v4 = (*(*(a1 + 40) + 16))();
    [v3 addObject:v4];
  }
}

@end