@interface NSArray
@end

@implementation NSArray

uint64_t __58__NSArray_TSUAdditions__tsu_arrayByTransformingWithBlock___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 addObject:v3];
  }

  return result;
}

uint64_t __46__NSArray_TSUAdditions__tsu_arrayByFlattening__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        }

        else
        {
          [a3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

@end