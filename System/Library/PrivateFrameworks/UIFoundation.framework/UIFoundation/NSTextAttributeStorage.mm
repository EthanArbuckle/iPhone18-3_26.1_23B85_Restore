@interface NSTextAttributeStorage
@end

@implementation NSTextAttributeStorage

uint64_t __59___NSTextAttributeStorage_setAttribute_value_forTextRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8[0] = a2;
  v8[1] = a3;
  return [v5 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)}];
}

id __59___NSTextAttributeStorage_setAttribute_value_forTextRange___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(a3 "location")];
  if (result == -1)
  {
    if ([*(*(*(a1 + 64) + 8) + 40) compare:{objc_msgSend(a3, "location")}] == -1 && *(a1 + 40))
    {
      v9 = -[NSTextRange initWithLocation:endLocation:]([NSTextRange alloc], "initWithLocation:endLocation:", *(*(*(a1 + 64) + 8) + 40), [a3 location]);
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19[0] = v11;
      (*(v10 + 16))(v10, v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1]);
    }

    v12 = [*(a1 + 32) textRangeByIntersectingWithTextRange:a3];
    v13 = [a2 objectForKeyedSubscript:*(a1 + 48)];
    v14 = *(a1 + 40);
    if (v14 != v13 && ([v14 isEqual:?] & 1) == 0)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a2];
      v16 = v15;
      v17 = *(a1 + 40);
      if (v17)
      {
        [v15 setObject:v17 forKeyedSubscript:*(a1 + 48)];
      }

      else
      {
        [v15 removeObjectForKey:*(a1 + 48)];
      }

      (*(*(a1 + 56) + 16))();
    }

    result = [v12 endLocation];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __71___NSTextAttributeStorage__attributesInTextRange_areEqualToAttributes___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a3 containsRange:a1[4]];
  if (result)
  {
    result = [a2 isEqualToDictionary:a1[5]];
  }

  *(*(a1[6] + 8) + 24) = result;
  *a4 = 1;
  return result;
}

uint64_t __71___NSTextAttributeStorage__attributesInTextRange_areEqualToAttributes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [objc_msgSend(*(a1 + 32) "endLocation")];
  *(*(*(a1 + 40) + 8) + 24) = result != 1;
  *a4 = 1;
  return result;
}

@end