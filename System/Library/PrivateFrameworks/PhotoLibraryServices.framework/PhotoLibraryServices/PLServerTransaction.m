@interface PLServerTransaction
@end

@implementation PLServerTransaction

uint64_t __49___PLServerTransaction_completeTransactionScope___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) count];
  [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
  [*(a1 + 32) _updateChangeScopesDescriptionSnapshot];
  result = [*(*(a1 + 32) + 112) count];
  if (result != v2)
  {
    v4 = *(a1 + 32);
    v5 = v4[14];

    return [v4 persistTransactionScopes:v5];
  }

  return result;
}

void __36___PLServerTransaction_changeScopes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

unint64_t __45___PLServerTransaction__enqueueChangeScopes___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = [*(*(a1 + 40) + 112) count];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(a1 + 40) + 112) addObject:{*(*(&v9 + 1) + 8 * v8), v9}];
          [*(a1 + 40) _updateChangeScopesDescriptionSnapshot];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    result = [*(*(a1 + 40) + 112) count];
    if (result > v3)
    {
      return [*(a1 + 40) persistTransactionScopes:*(*(a1 + 40) + 112)];
    }
  }

  return result;
}

@end