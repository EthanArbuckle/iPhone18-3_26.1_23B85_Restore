@interface NSReadAttributedStringFromURLOrDataCommon
@end

@implementation NSReadAttributedStringFromURLOrDataCommon

void ___NSReadAttributedStringFromURLOrDataCommon_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  if (![a3 objectForKeyedSubscript:@"DocumentType"])
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"DocumentType"];
    if (v5)
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = @"NSHTML";
    }

    [v9 setObject:v11 forKeyedSubscript:@"DocumentType"];
    v5 = [v10 copy];
  }

  *(*(*(a1 + 48) + 8) + 40) = [a2 mutableCopy];
  *(*(*(a1 + 56) + 8) + 40) = v5;
  *(*(*(a1 + 64) + 8) + 40) = a4;
  dispatch_semaphore_signal(*(a1 + 40));
  v12 = *(a1 + 40);

  dispatch_release(v12);
}

@end