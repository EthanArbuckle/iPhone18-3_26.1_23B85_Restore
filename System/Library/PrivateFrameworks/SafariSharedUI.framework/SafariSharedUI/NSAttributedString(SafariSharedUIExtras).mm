@interface NSAttributedString(SafariSharedUIExtras)
+ (id)safari_attributedStringWithLinkText:()SafariSharedUIExtras linkUrl:extraTitle:;
- (id)safari_attributedStringByAppendingAttributedString:()SafariSharedUIExtras;
- (id)safari_attributedStringByReplacingAttributeName:()SafariSharedUIExtras withAttributes:;
- (uint64_t)safari_isEqualToAttributedString:()SafariSharedUIExtras;
@end

@implementation NSAttributedString(SafariSharedUIExtras)

+ (id)safari_attributedStringWithLinkText:()SafariSharedUIExtras linkUrl:extraTitle:
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  if (v9)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
    [v10 appendAttributedString:v12];

    [v10 appendAttributedString:v11];
  }

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v8)
  {
    v17 = *MEMORY[0x1E69DB670];
    v18[0] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v13 initWithString:v7 attributes:v14];
  [v10 appendAttributedString:v15];

  if (v8)
  {
  }

  [v10 appendAttributedString:v11];

  return v10;
}

- (id)safari_attributedStringByReplacingAttributeName:()SafariSharedUIExtras withAttributes:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 mutableCopy];
  v9 = [a1 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __107__NSAttributedString_SafariSharedUIExtras__safari_attributedStringByReplacingAttributeName_withAttributes___block_invoke;
  v16[3] = &unk_1E82863A8;
  v10 = v8;
  v17 = v10;
  v18 = v6;
  v19 = v7;
  v11 = v7;
  v12 = v6;
  [a1 enumerateAttribute:v12 inRange:0 options:v9 usingBlock:{0, v16}];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (id)safari_attributedStringByAppendingAttributedString:()SafariSharedUIExtras
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 appendAttributedString:v4];

  v6 = [v5 copy];

  return v6;
}

- (uint64_t)safari_isEqualToAttributedString:()SafariSharedUIExtras
{
  v4 = a3;
  v5 = [a1 string];
  v6 = [v4 string];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v8 = [a1 length];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__NSAttributedString_SafariSharedUIExtras__safari_isEqualToAttributedString___block_invoke;
    v11[3] = &unk_1E82863F0;
    v12 = v4;
    v13 = &v14;
    [a1 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v11}];
    v9 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

@end