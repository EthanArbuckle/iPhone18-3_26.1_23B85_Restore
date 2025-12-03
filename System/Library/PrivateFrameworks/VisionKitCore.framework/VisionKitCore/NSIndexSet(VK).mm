@interface NSIndexSet(VK)
+ (id)vk_indexSetWithNSNumberIndex:()VK;
- (__CFString)vk_indexString;
- (id)vk_rangeArray;
@end

@implementation NSIndexSet(VK)

+ (id)vk_indexSetWithNSNumberIndex:()VK
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(objc_opt_class()) initWithIndex:{objc_msgSend(v3, "unsignedIntValue")}];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  v5 = v4;

  return v5;
}

- (id)vk_rangeArray
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__NSIndexSet_VK__vk_rangeArray__block_invoke;
  v6[3] = &unk_1E7BE72B8;
  v7 = v2;
  v3 = v2;
  [self enumerateRangesUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

- (__CFString)vk_indexString
{
  v2 = [self count];
  if (v2)
  {
    if (v2 == 1)
    {
      firstIndex = [self firstIndex];
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%ld]", firstIndex];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v5 appendString:@"["];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __32__NSIndexSet_VK__vk_indexString__block_invoke;
      v9[3] = &unk_1E7BE4C80;
      v10 = v5;
      v6 = v5;
      [self enumerateIndexesUsingBlock:v9];
      v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
      v4 = [v6 stringByTrimmingCharactersInSet:v7];
    }
  }

  else
  {
    v4 = @"[]";
  }

  return v4;
}

@end