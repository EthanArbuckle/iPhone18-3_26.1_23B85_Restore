@interface NSRegularExpression(VK)
+ (id)vk_regexForSearchStrings:()VK;
- (id)vk_rangesForMatchesInString:()VK;
@end

@implementation NSRegularExpression(VK)

+ (id)vk_regexForSearchStrings:()VK
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    objc_msgSend(v4, "appendString:", @"(");
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E696AE70] escapedPatternForString:*(*(&v14 + 1) + 8 * i)];
          [v4 appendString:v10];

          [v4 appendString:@"|"];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if ([v4 length])
    {
      [v4 replaceCharactersInRange:objc_msgSend(v4 withString:{"length") - 1, 1, &stru_1F2C04538}];
    }

    [v4 appendString:@""]);
    v13 = 0;
    v11 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v4 options:1 error:&v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)vk_rangesForMatchesInString:()VK
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__25;
  v17 = __Block_byref_object_dispose__25;
  v18 = 0;
  if ([v4 length])
  {
    vk_range = [v4 vk_range];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__NSRegularExpression_VK__vk_rangesForMatchesInString___block_invoke;
    v12[3] = &unk_1E7BE6AB0;
    v12[4] = &v13;
    [self enumerateMatchesInString:v4 options:0 range:vk_range usingBlock:{v6, v12}];
  }

  v7 = [v14[5] copy];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);

  return v10;
}

@end