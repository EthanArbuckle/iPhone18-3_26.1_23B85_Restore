@interface NSAttributedString
@end

@implementation NSAttributedString

uint64_t __60__NSAttributedString_VK__vk_attributedSubstringFromVKRange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [a2 nsRange];
  v9 = [v6 vk_attributedSubstringFromRange:{v7, v8}];
  [v5 appendAttributedString:v9];

  result = [*(a1 + 48) count];
  if (result != a3 - 1)
  {
    v11 = *(a1 + 32);

    return [v11 vk_appendString:@"\n"];
  }

  return result;
}

void __82__NSAttributedString_VK__vk_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = a2;
  v15.location = v11;
  v15.length = v12;
  v16.location = a3;
  v16.length = a4;
  v14 = NSIntersectionRange(v15, v16);
  (*(v9 + 16))(v9, v13, v14.location, v14.length, a5);

  *(*(*(a1 + 40) + 8) + 40) += *(*(*(a1 + 40) + 8) + 32) - (a3 + a4);
  *(*(*(a1 + 40) + 8) + 32) = a3 + a4;
}

@end