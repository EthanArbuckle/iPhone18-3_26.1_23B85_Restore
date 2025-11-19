@interface NSAttributedString
@end

@implementation NSAttributedString

uint64_t __107__NSAttributedString_SafariSharedUIExtras__safari_attributedStringByReplacingAttributeName_withAttributes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) removeAttribute:*(a1 + 40) range:{a3, a4}];
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);

    return [v9 addAttributes:v10 range:{a3, a4}];
  }

  return result;
}

void __77__NSAttributedString_SafariSharedUIExtras__safari_isEqualToAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v18 = 0;
  v19 = 0;
  v10 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:&v18];
  if (a3 == v18 && a4 == v19)
  {
    v12 = *MEMORY[0x1E69DB5F8];
    v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
    v14 = [v9 objectForKeyedSubscript:v12];
    if (v13 | v14)
    {
      if ([v13 safari_isEqualToAttachment:v14])
      {
        v15 = [v9 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_27];
        v16 = [v10 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_27];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if ([v9 isEqual:v10])
    {
LABEL_12:

      goto LABEL_13;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a5 = 1;
    goto LABEL_12;
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *a5 = 1;
LABEL_13:
}

void *__77__NSAttributedString_SafariSharedUIExtras__safari_isEqualToAttributedString___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E69DB5F8];
  v3 = a2;
  if ([v3 isEqual:v2])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

@end