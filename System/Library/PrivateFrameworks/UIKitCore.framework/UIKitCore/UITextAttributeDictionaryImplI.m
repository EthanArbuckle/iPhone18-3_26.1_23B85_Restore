@interface UITextAttributeDictionaryImplI
@end

@implementation UITextAttributeDictionaryImplI

void __46___UITextAttributeDictionaryImplI_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  key = a2;
  v5 = a3;
  if (!CFDictionaryContainsKey(*(*(a1 + 32) + 16), key))
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"က00%@က00", key];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

@end