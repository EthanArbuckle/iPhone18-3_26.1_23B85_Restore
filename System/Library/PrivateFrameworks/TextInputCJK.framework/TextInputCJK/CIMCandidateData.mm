@interface CIMCandidateData
+ (BOOL)shouldShowZhuyinSortingMethod;
+ (id)sortTitleFromSortingMethod:(int)a3;
- (CIMCandidateData)init;
- (CIMCandidateData)initWithInputMode:(id)a3;
- (id)candidateGroupsFromDictionary:(id)a3 sortedKeys:(id)a4;
- (id)candidatesSortedByEmoji:(id)a3;
- (id)candidatesSortedByFrequency:(id)a3 omittingEmoji:(BOOL)a4;
- (id)candidatesSortedByWubi:(id)a3 omittingEmoji:(BOOL)a4;
- (id)wordPropertyDictionaryForCandidates:(id)a3 isSimplified:(BOOL)a4;
- (void)clearCache;
- (void)sortCharactersByStrokeCount:(id)a3 wordPropertiesDictionary:(id)a4;
@end

@implementation CIMCandidateData

- (id)candidatesSortedByWubi:(id)a3 omittingEmoji:(BOOL)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [a3 _arrayByFilteringEmojiCandidates:v5];
  v7 = objc_alloc(MEMORY[0x277D6F3C8]);
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  v9 = [v7 initWithTitle:0 candidates:v8];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __71__CIMCandidateData_candidatesSortedByPinyinOrZhuyin_simplified_zhuyin___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 candidate];
  v6 = [v4 candidate];

  v7 = [v5 chinesePinyinCompare:v6];
  return v7;
}

uint64_t __71__CIMCandidateData_candidatesSortedByPinyinOrZhuyin_simplified_zhuyin___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 candidate];
  v6 = [v4 candidate];

  v7 = [v5 traditionalChineseZhuyinCompare:v6];
  return v7;
}

uint64_t __57__CIMCandidateData_candidatesSortedByStrokes_simplified___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 integerValue];
  v6 = [v4 integerValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (id)candidatesSortedByEmoji:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_197];
  v5 = [v3 objectsAtIndexes:v4];

  v6 = objc_alloc(MEMORY[0x277D6F3C8]);
  v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v5];
  v8 = [v6 initWithTitle:0 candidates:v7];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __44__CIMCandidateData_candidatesSortedByEmoji___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmojiCandidate])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isStickerCandidate];
  }

  return v3;
}

- (id)candidatesSortedByFrequency:(id)a3 omittingEmoji:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [a3 _sortedArrayByFrequency];
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  v8 = [v5 _arrayByFilteringEmojiCandidates:v7];
  v9 = objc_alloc(MEMORY[0x277D6F3C8]);
  v10 = [MEMORY[0x277CBEB70] orderedSetWithArray:v8];
  v11 = [v9 initWithTitle:0 candidates:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)candidateGroupsFromDictionary:(id)a3 sortedKeys:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v5 = a4;
  v23 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v24 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v25 objectForKey:v9];
        v11 = [MEMORY[0x277CBEB18] array];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [&unk_287EC39B8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(&unk_287EC39B8);
              }

              v16 = [v10 objectForKey:*(*(&v26 + 1) + 8 * j)];
              if ([v16 count])
              {
                [v11 addObjectsFromArray:v16];
              }
            }

            v13 = [&unk_287EC39B8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v13);
        }

        if ([v11 count])
        {
          v17 = objc_alloc(MEMORY[0x277D6F3C8]);
          v18 = [MEMORY[0x277CBEB70] orderedSetWithArray:v11];
          v19 = [v17 initWithTitle:v9 candidates:v18];

          [v23 addObject:v19];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)sortCharactersByStrokeCount:(id)a3 wordPropertiesDictionary:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v16 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v15 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [obj objectForKey:{*(*(&v24 + 1) + 8 * v7), v15}];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v8 objectForKey:*(*(&v20 + 1) + 8 * v12)];
              v18[0] = MEMORY[0x277D85DD0];
              v18[1] = 3221225472;
              v18[2] = __73__CIMCandidateData_sortCharactersByStrokeCount_wordPropertiesDictionary___block_invoke;
              v18[3] = &unk_279D9D340;
              v19 = v6;
              [v13 sortUsingComparator:v18];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v16);
      v16 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v16);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __73__CIMCandidateData_sortCharactersByStrokeCount_wordPropertiesDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 candidate];
  [v5 objectForKeyedSubscript:v7];

  v8 = *(a1 + 32);
  v9 = [v6 candidate];

  [v8 objectForKeyedSubscript:v9];
  v10 = [MecabraWordPropertiesGetProperty() integerValue];
  v11 = [MecabraWordPropertiesGetProperty() integerValue];
  if (v10 < v11)
  {
    return -1;
  }

  else
  {
    return v10 > v11;
  }
}

- (id)wordPropertyDictionaryForCandidates:(id)a3 isSimplified:(BOOL)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) label];
        v12 = MecabraWordPropertiesCreate();
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)clearCache
{
  v2 = [(CIMCandidateData *)self candidateInfoCache];
  [v2 removeAllObjects];
}

- (CIMCandidateData)initWithInputMode:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CIMCandidateData;
  v6 = [(CIMCandidateData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputMode, a3);
    [(CIMCandidateData *)v7 setSortingMethod:1];
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [(CIMCandidateData *)v7 setCandidateInfoCache:v8];
  }

  return v7;
}

- (CIMCandidateData)init
{
  v3.receiver = self;
  v3.super_class = CIMCandidateData;
  return [(CIMCandidateData *)&v3 init];
}

+ (BOOL)shouldShowZhuyinSortingMethod
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE690]];
  v4 = [v3 isEqualToString:@"TW"];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D6F380] sharedInputModeController];
    v7 = [v6 enabledInputModeIdentifiers];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = TIInputModeGetBaseLanguage();
          if ([v14 isEqualToString:{@"zh", v19}])
          {
            v15 = TIInputModeGetVariant();
            v16 = [v15 isEqualToString:@"Zhuyin"];

            if (v16)
            {

              v5 = 1;
              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_14:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)sortTitleFromSortingMethod:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_279D9D3A0[a3 - 1];
  }
}

@end