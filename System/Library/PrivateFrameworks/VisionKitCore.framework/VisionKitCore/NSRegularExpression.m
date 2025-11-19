@interface NSRegularExpression
@end

@implementation NSRegularExpression

void __55__NSRegularExpression_VK__vk_rangesForMatchesInString___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  v7 = [VKTextRange alloc];
  v8 = [v11 range];
  v10 = [(VKTextRange *)v7 initWithRange:v8, v9];
  [v3 addObject:v10];
}

@end