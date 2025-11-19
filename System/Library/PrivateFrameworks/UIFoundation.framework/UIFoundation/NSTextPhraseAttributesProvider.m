@interface NSTextPhraseAttributesProvider
@end

@implementation NSTextPhraseAttributesProvider

void __64__NSTextPhraseAttributesProvider_RippleFade_generateDelayValues__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "length")}];
  v6 = *(a1 + 32);
  v7 = [v14 string];
  [v6 appendString:v7];

  [*(a1 + 32) appendString:@": ["];
  if ([v14 length])
  {
    v8 = 0;
    do
    {
      v9 = [v14 length];
      v10 = (v8 / v9 * (v8 / v9) * 0.25 * 60.0);
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu ", v10];
      [v11 appendString:v12];

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      [v5 setObject:v13 atIndexedSubscript:v8];

      ++v8;
    }

    while (v8 < [v14 length]);
  }

  [*(a1 + 40) setObject:v5 atIndexedSubscript:a3];
  [*(a1 + 32) appendString:@"]\n"];
}

@end