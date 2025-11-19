@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __92__NSMutableAttributedString_ReminderKitAdditions__rem_replaceTTREMHashtag_withTTREMHashtag___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:0];
  v9 = objc_opt_class();
  v10 = [v16 objectForKeyedSubscript:@"_TTREMHashtag"];
  v11 = REMDynamicCast(v9, v10);

  v12 = [v11 objectIdentifier];
  v13 = [*(a1 + 40) objectIdentifier];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    v15 = *(*(a1 + 48) + 8);
    *(v15 + 32) = a3;
    *(v15 + 40) = a4;
    *a5 = 1;
  }
}

void __96__NSMutableAttributedString_REMCRMergeableStringDocument_Styling__rem_setFontHint_isOn_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v15 = v7;
  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:TTAttributeNameFontHints];
  v11 = [v10 intValue];

  v12 = *(a1 + 40);
  v13 = v11;
  if (v12)
  {
    if (*(a1 + 48) == 1)
    {
      v13 = v11 | 1;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }
  }

  if ((v12 & 2) != 0)
  {
    if (*(a1 + 48) == 1)
    {
      v13 |= 2u;
    }

    else
    {
      v13 &= ~2u;
    }
  }

  if (v13 != v11)
  {
    if (v13)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v9 setObject:v14 forKey:TTAttributeNameFontHints];
    }

    else
    {
      [v9 removeObjectForKey:TTAttributeNameFontHints];
    }

    [*(a1 + 32) setAttributes:v9 range:{a3, a4}];
  }
}

void __92__NSMutableAttributedString_REMCRMergeableStringDocument_Styling__rem_setUnderline_inRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = [v13 objectForKeyedSubscript:TTAttributeNameUnderline];
  v8 = [v7 BOOLValue];

  v9 = *(a1 + 40);
  if (v9 != v8)
  {
    if (v9)
    {
      if (v13)
      {
        v10 = [v13 mutableCopy];
      }

      else
      {
        v10 = [MEMORY[0x1E695DF90] dictionary];
      }

      v11 = v10;
      v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v11 setObject:v12 forKey:TTAttributeNameUnderline];

      [*(a1 + 32) setAttributes:v11 range:{a3, a4}];
    }

    else
    {
      [*(a1 + 32) removeAttribute:TTAttributeNameUnderline range:{a3, a4}];
    }
  }
}

@end