@interface CACEmojiManager
+ (id)sharedManager;
+ (void)resetSharedManager;
- (BOOL)isEmoji:(id)emoji;
- (CACEmojiManager)initWithLocaleIdentifier:(id)identifier;
- (id)emojiStringsFromEmojiTokens:(id)tokens skinToneFilter:(int)filter;
- (id)emojiTokenUsingPrefixApproachForText:(id)text skinToneFilter:(int)filter;
- (id)emojisForText:(id)text skinToneFilter:(int)filter;
- (id)relatedEmojisForEmoji:(id)emoji skinToneFilter:(int)filter;
- (id)stringByReplacingEmojisWithDescriptions:(id)descriptions;
- (int64_t)countOfEmojisInString:(id)string;
- (void)enumerateEmojisInText:(id)text skinToneFilter:(int)filter usingBlock:(id)block;
- (void)willInsertStringPotentiallyContainingEmojis:(id)emojis;
@end

@implementation CACEmojiManager

+ (id)sharedManager
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sSharedEmojiManager)
  {
    v3 = +[CACPreferences sharedPreferences];
    bestLocaleIdentifier = [v3 bestLocaleIdentifier];

    v5 = [[CACEmojiManager alloc] initWithLocaleIdentifier:bestLocaleIdentifier];
    v6 = sSharedEmojiManager;
    sSharedEmojiManager = v5;
  }

  objc_sync_exit(v2);

  v7 = sSharedEmojiManager;

  return v7;
}

+ (void)resetSharedManager
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = sSharedEmojiManager;
  sSharedEmojiManager = 0;

  objc_sync_exit(obj);
}

- (CACEmojiManager)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6 = [identifierCopy copy];
  }

  else
  {
    v6 = @"en-US";
  }

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = &v6->isa;

  v14.receiver = self;
  v14.super_class = CACEmojiManager;
  v8 = [(CACEmojiManager *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D072F8] emojiLocaleDataWithLocaleIdentifier:v8->_localeIdentifier];
    emojiLocaleData = v8->_emojiLocaleData;
    v8->_emojiLocaleData = v9;

    v11 = objc_alloc_init(MEMORY[0x277D07300]);
    emojiPreferences = v8->_emojiPreferences;
    v8->_emojiPreferences = v11;

    [(EMFEmojiPreferences *)v8->_emojiPreferences readEmojiDefaults];
  }

  return v8;
}

- (void)enumerateEmojisInText:(id)text skinToneFilter:(int)filter usingBlock:(id)block
{
  v6 = *&filter;
  textCopy = text;
  blockCopy = block;
  if (blockCopy)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    emojiLocaleData = self->_emojiLocaleData;
    v11 = [textCopy length];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __67__CACEmojiManager_enumerateEmojisInText_skinToneFilter_usingBlock___block_invoke;
    v17 = &unk_279CEB828;
    v20 = &v22;
    selfCopy = self;
    v21 = v6;
    v12 = blockCopy;
    v19 = v12;
    [(EMFEmojiLocaleData *)emojiLocaleData enumerateSearchResultsInText:textCopy range:0 options:v11 searchType:17 usingBlock:1, &v14];
    if ((v23[3] & 1) == 0)
    {
      selfCopy = [(CACEmojiManager *)self emojiTokenUsingPrefixApproachForText:textCopy skinToneFilter:v6, v14, v15, v16, v17, selfCopy];
      if (selfCopy)
      {
        (*(v12 + 2))(v12, selfCopy, 0, [textCopy length]);
      }
    }

    _Block_object_dispose(&v22, 8);
  }
}

void __67__CACEmojiManager_enumerateEmojisInText_skinToneFilter_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v3 = [*(a1 + 32) emojiStringsFromEmojiTokens:a2 skinToneFilter:*(a1 + 56)];
  (*(*(a1 + 40) + 16))();
}

- (id)emojisForText:(id)text skinToneFilter:(int)filter
{
  v67 = *MEMORY[0x277D85DE8];
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  emojiLocaleData = self->_emojiLocaleData;
  v8 = [textCopy length];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __48__CACEmojiManager_emojisForText_skinToneFilter___block_invoke;
  v61[3] = &unk_279CEB850;
  v9 = array;
  v62 = v9;
  v38 = textCopy;
  [(EMFEmojiLocaleData *)emojiLocaleData enumerateSearchResultsInText:textCopy range:0 options:v8 searchType:17 usingBlock:1, v61];
  array2 = [MEMORY[0x277CBEB18] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = v9;
  v43 = [v11 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v43)
  {
    v39 = v11;
    v40 = *v58;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v58 != v40)
        {
          objc_enumerationMutation(v11);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        if ([v11 count] <= 1)
        {
          filterCopy = 1;
        }

        else
        {
          filterCopy = filter;
        }

        v15 = [(CACEmojiManager *)selfCopy emojiStringsFromEmojiTokens:v13 skinToneFilter:filterCopy];
        if ([array2 count])
        {
          v44 = i;
          v16 = [array2 count];
          if (v16)
          {
            for (j = 0; j != v16; ++j)
            {
              v18 = [array2 objectAtIndex:j];
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v19 = v15;
              v20 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v50;
                do
                {
                  for (k = 0; k != v21; ++k)
                  {
                    if (*v50 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = [v18 stringByAppendingString:*(*(&v49 + 1) + 8 * k)];
                    [array2 addObject:v24];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
                }

                while (v21);
              }
            }
          }

          [array2 removeObjectsInRange:{0, v16}];
          v11 = v39;
          i = v44;
        }

        else
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v25 = v15;
          v26 = [v25 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v54;
            do
            {
              for (m = 0; m != v27; ++m)
              {
                if (*v54 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [array2 addObject:*(*(&v53 + 1) + 8 * m)];
              }

              v27 = [v25 countByEnumeratingWithState:&v53 objects:v65 count:16];
            }

            while (v27);
          }
        }
      }

      v43 = [v11 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v43);
  }

  v30 = [(CACEmojiManager *)selfCopy emojiTokenUsingPrefixApproachForText:v38 skinToneFilter:0];
  v31 = v30;
  if (v30)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = [v30 countByEnumeratingWithState:&v45 objects:v63 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v46;
      do
      {
        for (n = 0; n != v33; ++n)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v45 + 1) + 8 * n);
          if (([array2 containsObject:v36] & 1) == 0)
          {
            [array2 addObject:v36];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v45 objects:v63 count:16];
      }

      while (v33);
    }
  }

  return array2;
}

- (id)stringByReplacingEmojisWithDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:descriptionsCopy];
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(descriptionsCopy, "length")}];
  v6 = [descriptionsCopy length];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__CACEmojiManager_stringByReplacingEmojisWithDescriptions___block_invoke;
  v15[3] = &unk_279CEB878;
  v7 = v5;
  v16 = v7;
  [descriptionsCopy enumerateSubstringsInRange:0 options:v6 usingBlock:{258, v15}];
  v8 = [v7 length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CACEmojiManager_stringByReplacingEmojisWithDescriptions___block_invoke_2;
  v12[3] = &unk_279CEB8A0;
  v12[4] = self;
  v9 = descriptionsCopy;
  v13 = v9;
  v14 = &v17;
  [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v12}];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __59__CACEmojiManager_stringByReplacingEmojisWithDescriptions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  if ([*(a1 + 32) isEmoji:?])
  {
    v7 = MEMORY[0x277D07318];
    v8 = [*(a1 + 32) emojiLocaleData];
    v9 = [v7 emojiTokenWithString:v14 localeData:v8];

    v10 = [v9 nameForType:2];
    v11 = [*(*(*(a1 + 48) + 8) + 40) stringByReplacingCharactersInRange:objc_msgSend(*(a1 + 40) withString:{"length") - (a3 + a4), a4, v10}];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)relatedEmojisForEmoji:(id)emoji skinToneFilter:(int)filter
{
  v4 = *&filter;
  v6 = [(CACEmojiManager *)self stringByReplacingEmojisWithDescriptions:emoji];
  v7 = [(CACEmojiManager *)self emojisForText:v6 skinToneFilter:v4];

  return v7;
}

- (id)emojiTokenUsingPrefixApproachForText:(id)text skinToneFilter:(int)filter
{
  v4 = *&filter;
  v23 = *MEMORY[0x277D85DE8];
  v6 = [(EMFEmojiLocaleData *)self->_emojiLocaleData emojiTokensForText:text phoneticReading:0 options:17 searchType:1 includePrefixMatches:1];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          copyWithoutModifiers = [*(*(&v18 + 1) + 8 * i) copyWithoutModifiers];
          [v8 addObject:copyWithoutModifiers];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    allObjects = [v8 allObjects];
    v16 = [(CACEmojiManager *)self emojiStringsFromEmojiTokens:allObjects skinToneFilter:v4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)emojiStringsFromEmojiTokens:(id)tokens skinToneFilter:(int)filter
{
  v35 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = tokensCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    v23 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        if (![v12 supportsSkinToneVariants])
        {
LABEL_17:
          string = [v12 string];
          [v6 addObject:string];
          goto LABEL_18;
        }

        if (filter)
        {
          if (filter != 1)
          {
            goto LABEL_17;
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          string = [v12 skinToneVariants];
          v14 = [string countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(string);
                }

                string2 = [*(*(&v25 + 1) + 8 * i) string];
                [v6 addObject:string2];
              }

              v15 = [string countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v15);
            v7 = v23;
          }
        }

        else
        {
          emojiPreferences = [(CACEmojiManager *)self emojiPreferences];
          string = [emojiPreferences lastUsedVariantEmojiForEmoji:v12];

          v13String = [string string];
          [v6 addObject:v13String];
        }

LABEL_18:

        ++v11;
      }

      while (v11 != v9);
      v21 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      v9 = v21;
    }

    while (v21);
  }

  return v6;
}

- (void)willInsertStringPotentiallyContainingEmojis:(id)emojis
{
  emojisCopy = emojis;
  v5 = [emojisCopy length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CACEmojiManager_willInsertStringPotentiallyContainingEmojis___block_invoke;
  v7[3] = &unk_279CEB878;
  v7[4] = self;
  [emojisCopy enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v7}];

  emojiPreferences = [(CACEmojiManager *)self emojiPreferences];
  [emojiPreferences writeEmojiDefaults];
}

void __63__CACEmojiManager_willInsertStringPotentiallyContainingEmojis___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) isEmoji:?])
  {
    v3 = MEMORY[0x277D07318];
    v4 = [*(a1 + 32) emojiLocaleData];
    v5 = [v3 emojiTokenWithString:v7 localeData:v4];

    v6 = [*(a1 + 32) emojiPreferences];
    [v6 didUseEmoji:v5];
  }
}

- (BOOL)isEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = [emojiCopy characterAtIndex:0];
  if ((v4 & 0xFC00) == 0xD800)
  {
    v5 = ([emojiCopy characterAtIndex:1] + (v4 << 10) - 56732672) >> 9 >= 0x15;
  }

  else
  {
    v5 = (v4 - 8448) >= 0x6C0;
  }

  v6 = !v5;

  return v6;
}

- (int64_t)countOfEmojisInString:(id)string
{
  stringCopy = string;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [stringCopy length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CACEmojiManager_countOfEmojisInString___block_invoke;
  v8[3] = &unk_279CEB8C8;
  v8[4] = self;
  v8[5] = &v9;
  [stringCopy enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v8}];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __41__CACEmojiManager_countOfEmojisInString___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isEmoji:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

@end