@interface NSCreateClippingAttributesForExclusionPaths
@end

@implementation NSCreateClippingAttributesForExclusionPaths

void ____NSCreateClippingAttributesForExclusionPaths_block_invoke(uint64_t a1, void *a2)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6965A00];
  keys[0] = *MEMORY[0x1E69659F8];
  keys[1] = v4;
  v9 = 0;
  values = [a2 CGPath];
  if ([a2 usesEvenOddFillRule])
  {
    v5 = 1;
  }

  else
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:1];
      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    v9 = v6;
    v5 = 2;
  }

  v7 = CFDictionaryCreate(0, keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFArrayAppendValue(*(a1 + 40), v7);
  if (v7)
  {
    CFRelease(v7);
  }
}

@end