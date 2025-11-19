@interface NSString
@end

@implementation NSString

void __54__NSString_VK__vk_whitespaceAndNewlineCoalescedString__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[\r\n\\s]+" options:0 error:0];
  v1 = vk_whitespaceAndNewlineCoalescedString_regex;
  vk_whitespaceAndNewlineCoalescedString_regex = v0;
}

void __44__NSString_VK__vk_uniqueWordsWithMinLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if ([v9 isEqualToString:*MEMORY[0x1E696A568]] && objc_msgSend(v9, "length") >= *(a1 + 48))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) substringWithRange:{a3, a4}];
    [v7 addObject:v8];
  }
}

uint64_t __44__NSString_VK__vk_uniqueWordsWithMinLength___block_invoke_249(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) appendString:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 appendString:@" "];
}

void __40__NSString_VK__vk_substringWithVKRange___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = [a2 nsRange];
  v9 = [v6 vk_substringWithRange:{v7, v8}];
  [v5 appendString:v9];

  if (a1[6] - 1 != a3)
  {
    v10 = a1[4];

    [v10 appendString:@"\n"];
  }
}

void __58__NSString_VK__vk_stringByReplacingCharactersInStringMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v12 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v12;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = MEMORY[0x1E696B098];
  v9 = [v3 range];
  v11 = [v8 valueWithRange:{v9, v10}];
  [v4 addObject:v11];
}

unint64_t __38__NSString_VK__vk_lengthOfLongestLine__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 length];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

@end