@interface SPBucketSet
@end

@implementation SPBucketSet

const void *__28___SPBucketSet_valueForKey___block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(*(*(a1 + 32) + 8), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

CFIndex __34___SPBucketSet_removeValueForKey___block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(*(*(a1 + 32) + 8), *(a1 + 40));
  result = CFDictionaryGetCount(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = result;
  return result;
}

CFIndex __32___SPBucketSet_addValue_forKey___block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 8), *(a1 + 40));
  CFDictionarySetValue(*(*(a1 + 32) + 8), *(a1 + 40), &Value[*(a1 + 48)]);
  result = CFDictionaryGetCount(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = result;
  return result;
}

CFIndex __22___SPBucketSet_decay___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(*(*(a1 + 32) + 8));
  if (Count)
  {
    v3 = Count;
    v4 = *(a1 + 40);
    if (Count >= 3)
    {
      v4 = v4 / (Count - 1);
    }

    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = 8 * Count;
    v7 = (v14 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, 8 * Count);
    v8 = v7;
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(*(*(a1 + 32) + 8), v7, v7);
    if (v3 >= 1)
    {
      do
      {
        v9 = *(*(a1 + 32) + 8);
        v10 = *v7;
        v11 = *v8 - v5;
        *v8 = v11;
        if (v11 < 0)
        {
          CFDictionaryRemoveValue(v9, v10);
        }

        else
        {
          CFDictionarySetValue(v9, v10, v11);
        }

        ++v7;
        ++v8;
        --v3;
      }

      while (v3);
    }
  }

  result = CFDictionaryGetCount(*(*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = result;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

@end