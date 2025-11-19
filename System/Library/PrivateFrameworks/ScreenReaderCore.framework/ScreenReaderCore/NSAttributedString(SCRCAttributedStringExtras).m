@interface NSAttributedString(SCRCAttributedStringExtras)
- (id)scrcIndexSetForAttributes:()SCRCAttributedStringExtras limit:;
- (id)scrcSplitBasedOnAttribute:()SCRCAttributedStringExtras limit:;
- (id)scrcSplitBasedOnMultipleAttributesWithLimit:()SCRCAttributedStringExtras;
@end

@implementation NSAttributedString(SCRCAttributedStringExtras)

- (id)scrcSplitBasedOnMultipleAttributesWithLimit:()SCRCAttributedStringExtras
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [a1 length];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __94__NSAttributedString_SCRCAttributedStringExtras__scrcSplitBasedOnMultipleAttributesWithLimit___block_invoke;
  v19 = &unk_279B716B0;
  v20 = a1;
  v7 = v5;
  v21 = v7;
  v22 = &v24;
  v23 = a3;
  [a1 enumerateAttributesInRange:0 options:v6 usingBlock:{0, &v16}];
  if (v25[3] < v6 && [v7 count] == a3 - 1)
  {
    v8 = v25[3];
    v9 = [a1 length];
    v10 = [a1 attributedSubstringFromRange:{v8, v9 - v25[3]}];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      [v7 addObject:v12];
    }
  }

  v13 = v21;
  v14 = v7;

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)scrcSplitBasedOnAttribute:()SCRCAttributedStringExtras limit:
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [a1 length];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __82__NSAttributedString_SCRCAttributedStringExtras__scrcSplitBasedOnAttribute_limit___block_invoke;
  v21 = &unk_279B716D8;
  v22 = a1;
  v9 = v7;
  v23 = v9;
  v24 = &v26;
  v25 = a4;
  [a1 enumerateAttribute:v6 inRange:0 options:v8 usingBlock:{0, &v18}];
  if (v27[3] < v8 && [v9 count] == a4 - 1)
  {
    v10 = v27[3];
    v11 = [a1 length];
    v12 = [a1 attributedSubstringFromRange:{v10, v11 - v27[3]}];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 mutableCopy];
      [v14 removeAttribute:v6 range:{0, objc_msgSend(v14, "length")}];
      [v9 addObject:v14];
    }
  }

  v15 = v23;
  v16 = v9;

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (id)scrcIndexSetForAttributes:()SCRCAttributedStringExtras limit:
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 length];
  v8 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndex:0];
  [v8 addIndex:v7];
  if (v7 >= 2)
  {
    v23 = a4;
    v24 = a1;
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [MEMORY[0x277CBEB68] null];
          [v10 setObject:v17 forKeyedSubscript:v16];

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
          [v9 setObject:v18 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__NSAttributedString_SCRCAttributedStringExtras__scrcIndexSetForAttributes_limit___block_invoke;
    v26[3] = &unk_279B71728;
    v27 = v10;
    v28 = v9;
    v29 = v8;
    v30 = v23;
    v19 = v9;
    v20 = v10;
    [v24 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v26}];

    v6 = v25;
  }

  v21 = [v8 copy];

  return v21;
}

@end