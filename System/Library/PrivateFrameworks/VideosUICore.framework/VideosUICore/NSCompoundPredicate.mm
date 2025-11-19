@interface NSCompoundPredicate
@end

@implementation NSCompoundPredicate

void __78__NSCompoundPredicate_VideosUICore__vui_predicateWithSubpredicateFilterBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v7 = v4(v3, v5);

  v6 = v7;
  if (v7 != v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (v7)
  {
    [*(a1 + 32) addObject:v7];
    v6 = v7;
  }
}

@end