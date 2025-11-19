@interface PASLRUCache
@end

@implementation PASLRUCache

uint64_t __32___PASLRUCache_removeAllObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2;
  [v2 removeAllObjects];
  v4 = v3[2];

  return [v4 removeAllObjects];
}

uint64_t __50___PASLRUCache_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2;
  v5 = [v3 copy];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = v4[2];
  v9 = [v8 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __35___PASLRUCache_removeObjectForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = *(a1 + 32);
  v5 = a2;
  [v3 setObject:0 forKeyedSubscript:v4];
  v6 = v5[2];

  v7 = *(a1 + 32);

  return [v6 removeObject:v7];
}

void __33___PASLRUCache_setObject_forKey___block_invoke(void *a1, uint64_t a2)
{
  v8 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = [v8 objectForKeyedSubscript:a1[4]];
  [v8 setObject:a1[5] forKeyedSubscript:a1[4]];
  v6 = a1[4];
  if (v5)
  {
    [v4 removeObject:v6];
    [v4 insertObject:a1[4] atIndex:0];
  }

  else
  {
    [v4 insertObject:v6 atIndex:0];
    if ([v4 count] > *(a1[6] + 16))
    {
      v7 = [v4 lastObject];
      [v8 removeObjectForKey:v7];

      [v4 removeLastObject];
    }
  }
}

void __29___PASLRUCache_objectForKey___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = [v8 objectForKeyedSubscript:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [v4 removeObject:*(a1 + 32)];
    [v4 insertObject:*(a1 + 32) atIndex:0];
  }
}

@end