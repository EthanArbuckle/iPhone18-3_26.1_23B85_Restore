@interface UICompoundObjectMap
@end

@implementation UICompoundObjectMap

void __77___UICompoundObjectMap_addEntriesFromCompoundObjectMap_keepingCurrentValues___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (*(a1 + 40) != 1 || ([*(a1 + 32) valueForObject:v10 andProperty:v7], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    [*(a1 + 32) setValue:v8 forObject:v10 andProperty:v7];
  }
}

void __40___UICompoundObjectMap_performWithEach___block_invoke(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = a2[1];
  }

  v3 = a2;
  (*(v2 + 16))(v2);
}

void __32___UICompoundObjectMap_deepCopy__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [a4 copy];
  [v6 setValue:v9 forObject:v8 andProperty:v7];
}

@end