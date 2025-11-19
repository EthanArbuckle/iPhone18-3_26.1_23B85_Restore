@interface NSAttributedString
@end

@implementation NSAttributedString

void __72__NSAttributedString_TIExtras___ti_attributedStringByKeepingAttributes___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__NSAttributedString_TIExtras___ti_attributedStringByKeepingAttributes___block_invoke_2;
  v4[3] = &unk_1E6F4BA90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __72__NSAttributedString_TIExtras___ti_attributedStringByKeepingAttributes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) removeAttribute:v3 range:{*(a1 + 48), *(a1 + 56)}];
  }
}

void __65__NSAttributedString_TIExtras___ti_attributedStringWithIterator___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__NSAttributedString_TIExtras___ti_attributedStringWithIterator___block_invoke_2;
  v8[3] = &unk_1E6F4BA40;
  v10 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = a3;
  v12 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v8];
}

void __65__NSAttributedString_TIExtras___ti_attributedStringWithIterator___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = v5;
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, v7);

    v7 = v9;
  }

  [*(a1 + 32) removeAttribute:v5 range:{*(a1 + 48), *(a1 + 56)}];
  if (v7)
  {
    [*(a1 + 32) addAttributes:v7 range:{*(a1 + 48), *(a1 + 56)}];
  }
}

@end