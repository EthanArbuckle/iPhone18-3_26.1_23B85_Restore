@interface PXStoryRecipeEnumerator
@end

@implementation PXStoryRecipeEnumerator

id __34___PXStoryRecipeEnumerator__flush__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 localIdentifier];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = a1 + 40;
    v8 = *(a1 + 40);
    v9 = *(v10 + 8);
    v11 = [v4 error];
    [v7 handleFailureInMethod:v9 object:v8 file:@"PFStoryRecipe+PXStory+PhotoKit.m" lineNumber:280 description:{@"Error mapping cloud identifier (%@) to local identifier: %@", v3, v11}];
  }

  return v5;
}

void __34___PXStoryRecipeEnumerator__flush__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v7 localIdentifier];
  v11 = [v6 objectForKeyedSubscript:v8];

  v9 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v11];
  v10 = [*(a1 + 40) block];
  (v10)[2](v10, v9, v7, a4);
}

id __34___PXStoryRecipeEnumerator__flush__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6978738];
  v3 = a2;
  v4 = [[v2 alloc] initWithStringValue:v3];

  return v4;
}

@end