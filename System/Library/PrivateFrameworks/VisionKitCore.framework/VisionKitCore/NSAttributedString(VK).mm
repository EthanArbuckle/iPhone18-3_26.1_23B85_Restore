@interface NSAttributedString(VK)
- (id)vk_attributedStringByReplacingCharactersInSet:()VK withString:;
- (id)vk_attributedStringByReplacingNewlineCharactersWithWhiteSpace;
- (id)vk_attributedSubstringFromVKRange:()VK;
- (void)vk_enumerateClampedAttribute:()VK inRange:options:usingBlock:;
- (void)vk_enumerateUnclampedAttribute:()VK inRange:options:usingBlock:;
@end

@implementation NSAttributedString(VK)

- (id)vk_attributedSubstringFromVKRange:()VK
{
  v4 = a3;
  if ([v4 isEmpty])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  else
  {
    if ([v4 containsMultipleRanges])
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD40]);
      rangeArray = [v4 rangeArray];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__NSAttributedString_VK__vk_attributedSubstringFromVKRange___block_invoke;
      v14[3] = &unk_1E7BE7780;
      v15 = v6;
      selfCopy = self;
      v17 = rangeArray;
      v8 = rangeArray;
      v9 = v6;
      [v8 enumerateObjectsUsingBlock:v14];
      v10 = [v9 copy];

      goto LABEL_7;
    }

    nsRange = [v4 nsRange];
    v5 = [self vk_attributedSubstringFromRange:{nsRange, v12}];
  }

  v10 = v5;
LABEL_7:

  return v10;
}

- (void)vk_enumerateClampedAttribute:()VK inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3010000000;
  v18[3] = &unk_1B44420A2;
  v18[4] = a4;
  v18[5] = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__NSAttributedString_VK__vk_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke;
  v15[3] = &unk_1E7BE77A8;
  v14 = v13;
  v16 = v14;
  v17 = v18;
  [self enumerateAttribute:v12 inRange:a4 options:a5 usingBlock:{a6, v15}];

  _Block_object_dispose(v18, 8);
}

- (void)vk_enumerateUnclampedAttribute:()VK inRange:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  if (a5)
  {
    v14 = a4 + ((a5 - 1) & (a6 << 62 >> 63));
    v23 = 0;
    v15 = [self length];
    while (1)
    {
      v21 = 0;
      v22 = 0;
      if ((a6 & 0x100000) != 0)
      {
        [self attribute:v12 atIndex:v14 effectiveRange:&v21];
      }

      else
      {
        [self attribute:v12 atIndex:v14 longestEffectiveRange:&v21 inRange:{0, v15}];
      }
      v16 = ;
      v13[2](v13, v16, v21, v22, &v23);
      if (v23)
      {
        break;
      }

      if ((a6 & 2) != 0)
      {
        if (v21 <= a4)
        {
          break;
        }

        v14 = v21 - 1;
      }

      else
      {
        v17 = [self length];
        v18 = v17 - v15 + v21 + v22;
        v19 = a5 - v15 + v17;
        v20 = v17 == v15;
        if (v17 == v15)
        {
          v14 = v22 + v21;
        }

        else
        {
          v15 = v17;
          v14 = v18;
        }

        if (!v20)
        {
          a5 = v19;
        }

        if (v14 >= a5 + a4)
        {
          break;
        }
      }
    }
  }
}

- (id)vk_attributedStringByReplacingNewlineCharactersWithWhiteSpace
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v3 = [self vk_attributedStringByReplacingCharactersInSet:newlineCharacterSet withString:@" "];

  return v3;
}

- (id)vk_attributedStringByReplacingCharactersInSet:()VK withString:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  string = [selfCopy string];
  v10 = [string rangeOfCharacterFromSet:v6];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [selfCopy mutableCopy];
    string2 = [v11 string];
    v13 = [string2 rangeOfCharacterFromSet:v6];
    v15 = v14;

    while (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 replaceCharactersInRange:v13 withString:{v15, v7}];
      string3 = [v11 string];
      v17 = [string3 length] - v13;

      string4 = [v11 string];
      v13 = [string4 rangeOfCharacterFromSet:v6 options:2 range:{v13, v17}];
      v15 = v19;
    }

    if (v11)
    {
      v20 = [v11 copy];

      selfCopy = v20;
    }
  }

  return selfCopy;
}

@end