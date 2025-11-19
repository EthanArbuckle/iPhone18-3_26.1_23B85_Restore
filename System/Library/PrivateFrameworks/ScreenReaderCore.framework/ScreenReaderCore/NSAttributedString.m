@interface NSAttributedString
@end

@implementation NSAttributedString

void __94__NSAttributedString_SCRCAttributedStringExtras__scrcSplitBasedOnMultipleAttributesWithLimit___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [*(a1 + 32) attributedSubstringFromRange:?];
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
  }

  *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
  if ([*(a1 + 40) count] >= (*(a1 + 56) - 1))
  {
    *a5 = 1;
  }
}

void __82__NSAttributedString_SCRCAttributedStringExtras__scrcSplitBasedOnAttribute_limit___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [*(a1 + 32) attributedSubstringFromRange:?];
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
  }

  *(*(*(a1 + 48) + 8) + 24) = a3 + a4;
  if ([*(a1 + 40) count] >= (*(a1 + 56) - 1))
  {
    *a5 = 1;
  }
}

void __82__NSAttributedString_SCRCAttributedStringExtras__scrcIndexSetForAttributes_limit___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = *(a1 + 32);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82__NSAttributedString_SCRCAttributedStringExtras__scrcIndexSetForAttributes_limit___block_invoke_2;
  v15 = &unk_279B71700;
  v11 = v9;
  v16 = v11;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v20 = a3;
  v21 = a4;
  [v10 enumerateKeysAndObjectsUsingBlock:&v12];
  if ([*(a1 + 48) count] >= (*(a1 + 56) - 1))
  {
    *a5 = 1;
  }
}

void __82__NSAttributedString_SCRCAttributedStringExtras__scrcIndexSetForAttributes_limit___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v17];
  v7 = [*(a1 + 40) objectForKey:v17];
  v8 = [v7 integerValue];

  if (v6)
  {
    v9 = *(a1 + 72) + *(a1 + 64);
    v10 = [MEMORY[0x277CBEB68] null];
    v11 = v10;
    if (v10 == v5)
    {
    }

    else
    {
      v12 = [v5 isEqual:v6];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    v15 = [*(a1 + 32) objectForKeyedSubscript:v17];
    [*(a1 + 56) setObject:v15 forKeyedSubscript:v17];

    [*(a1 + 48) addIndex:*(a1 + 64)];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB68] null];

    if (v13 == v5)
    {
      goto LABEL_10;
    }

    [*(a1 + 48) addIndex:v8];
    v14 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 56) setObject:v14 forKeyedSubscript:v17];

    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_9:
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [*(a1 + 40) setObject:v16 forKeyedSubscript:v17];

LABEL_10:
}

@end