@interface SiriSharedUIUtilities
+ ($8D19A3D7F6B32A57CF9B882F3E1C418F)filterTranscriptItemsForRFPluginContent:(id)content;
+ (BOOL)applicationBundleIdentifierIsThirdParty:(id)party;
+ (BOOL)contentDiffersBetweenItems:(id)items andItems:(id)andItems;
+ (BOOL)emojiIsValid:(__EmojiTokenWrapper *)valid;
+ (BOOL)reportConcernButtonEnabled;
+ (BOOL)stringIsBlank:(id)blank;
+ (BOOL)utteranceViewEligibleForLightEffects:(id)effects;
+ (id)_emojisToNotInclude;
+ (id)_ineligibleDialogCategoriesForLightEffects;
+ (id)cardFromSnippet:(id)snippet;
+ (id)filterTranscriptItemsForSAEDialogBoxContent:(id)content;
+ (id)getAceObjectForSACardSnippetFromTranscriptItems:(id)items;
+ (id)substringRangesContainingEmojiInString:(id)string;
+ (int64_t)orbViewModeForSiriSessionState:(int64_t)state;
+ (int64_t)orbViewModeForSiriSessionState:(int64_t)state isAttending:(BOOL)attending;
@end

@implementation SiriSharedUIUtilities

+ (id)substringRangesContainingEmojiInString:(id)string
{
  stringCopy = string;
  if (CEMStringContainsEmoji())
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__0;
    v10 = __Block_byref_object_dispose__0;
    array = [MEMORY[0x277CBEB18] array];
    [stringCopy length];
    CEMEnumerateEmojiTokensInStringWithBlock();
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

void __64__SiriSharedUIUtilities_substringRangesContainingEmojiInString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 == 0x7FFFFFFFFFFFFFFFLL || a3 == 0x7FFFFFFFFFFFFFFFLL;
  if (!v4 && [*(a1 + 40) emojiIsValid:a2])
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    [v8 addObject:v9];
  }
}

+ (BOOL)emojiIsValid:(__EmojiTokenWrapper *)valid
{
  v4 = CEMEmojiTokenGetString();
  _emojisToNotInclude = [self _emojisToNotInclude];
  v6 = [_emojisToNotInclude containsObject:v4];

  return v6 ^ 1;
}

+ (id)_emojisToNotInclude
{
  if (_emojisToNotInclude_onceToken != -1)
  {
    +[SiriSharedUIUtilities _emojisToNotInclude];
  }

  v3 = _emojisToNotInclude_emojis;

  return v3;
}

uint64_t __44__SiriSharedUIUtilities__emojisToNotInclude__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_282F90F30];
  v1 = _emojisToNotInclude_emojis;
  _emojisToNotInclude_emojis = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (int64_t)orbViewModeForSiriSessionState:(int64_t)state
{
  if (state < 4)
  {
    return qword_21E4E4B20[state];
  }

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [(SiriSharedUIUtilities *)v5 orbViewModeForSiriSessionState:state];
  }

  return 0;
}

+ (int64_t)orbViewModeForSiriSessionState:(int64_t)state isAttending:(BOOL)attending
{
  stateCopy = state;
  if ((state - 1) >= 2)
  {
    if (state != 3 && state)
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [SiriSharedUIUtilities orbViewModeForSiriSessionState:v5 isAttending:stateCopy];
      }

      return 0;
    }

    else if (attending)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return stateCopy;
}

+ (BOOL)applicationBundleIdentifierIsThirdParty:(id)party
{
  partyCopy = party;
  v4 = partyCopy;
  v5 = partyCopy && (![partyCopy hasPrefix:@"com.apple."] || objc_msgSend(v4, "isEqualToString:", @"com.apple.siri.Caviar"));

  return v5;
}

+ ($8D19A3D7F6B32A57CF9B882F3E1C418F)filterTranscriptItemsForRFPluginContent:(id)content
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = content;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v22 = 0;
    v5 = *v25;
    v6 = *MEMORY[0x277D47C70];
    v7 = *MEMORY[0x277D47C50];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        aceObject = [v9 aceObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          aceObject2 = [v9 aceObject];
          v13 = [aceObject2 copy];

          itemType = [v13 itemType];
          v15 = [itemType isEqualToString:v6];
          if (v3)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            v3 = v13;
          }

          itemType2 = [v13 itemType];
          v18 = [itemType2 isEqualToString:v7];

          if (v18)
          {
            v19 = v13;

            v22 = v19;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  else
  {
    v22 = 0;
  }

  v20 = v3;
  v21 = v22;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

+ (BOOL)reportConcernButtonEnabled
{
  v2 = AFDeviceSupportsSystemAssistantExperience();
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];
    v4 = [v3 BOOLForKey:@"reportConcernButtonEnabled"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)utteranceViewEligibleForLightEffects:(id)effects
{
  effectsCopy = effects;
  dialogCategory = [effectsCopy dialogCategory];

  v8 = 1;
  if (dialogCategory)
  {
    dialogCategory2 = [effectsCopy dialogCategory];
    _ineligibleDialogCategoriesForLightEffects = [objc_opt_class() _ineligibleDialogCategoriesForLightEffects];
    v7 = [_ineligibleDialogCategoriesForLightEffects containsObject:dialogCategory2];

    if (v7)
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)_ineligibleDialogCategoriesForLightEffects
{
  if (_ineligibleDialogCategoriesForLightEffects_onceToken != -1)
  {
    +[SiriSharedUIUtilities _ineligibleDialogCategoriesForLightEffects];
  }

  v3 = _ineligibleDialogCategoriesForLightEffects_ineligibleCategories;

  return v3;
}

uint64_t __67__SiriSharedUIUtilities__ineligibleDialogCategoriesForLightEffects__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_282F90F48];
  v1 = _ineligibleDialogCategoriesForLightEffects_ineligibleCategories;
  _ineligibleDialogCategoriesForLightEffects_ineligibleCategories = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)cardFromSnippet:(id)snippet
{
  snippetCopy = snippet;
  siriui_card_compact = [snippetCopy siriui_card_compact];
  backingCard = [siriui_card_compact backingCard];
  cardSections = [backingCard cardSections];
  if (cardSections)
  {
    [snippetCopy siriui_card_compact];
  }

  else
  {
    [snippetCopy siriui_card];
  }
  v7 = ;

  backingCard2 = [v7 backingCard];

  return backingCard2;
}

+ (BOOL)contentDiffersBetweenItems:(id)items andItems:(id)andItems
{
  itemsCopy = items;
  andItemsCopy = andItems;
  v7 = [itemsCopy count];
  if (v7 == [andItemsCopy count])
  {
    if ([itemsCopy count])
    {
      v8 = 0;
      v28 = andItemsCopy;
      v29 = itemsCopy;
      while (1)
      {
        v9 = [itemsCopy objectAtIndex:v8];
        aceObject = [v9 aceObject];

        v11 = [andItemsCopy objectAtIndex:v8];
        aceObject2 = [v11 aceObject];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          goto LABEL_13;
        }

        v13 = aceObject;
        v14 = aceObject2;
        sash = [v13 sash];
        applicationBundleIdentifier = [sash applicationBundleIdentifier];
        sash2 = [v14 sash];
        applicationBundleIdentifier2 = [sash2 applicationBundleIdentifier];
        if (![applicationBundleIdentifier isEqualToString:applicationBundleIdentifier2])
        {
          break;
        }

        v30 = v8;
        sash3 = [v13 sash];
        title = [sash3 title];
        sash4 = [v14 sash];
        title2 = [sash4 title];
        v31 = [title isEqualToString:title2];

        if (!v31)
        {
          goto LABEL_16;
        }

        v23 = [objc_opt_class() cardFromSnippet:v13];
        v24 = [objc_opt_class() cardFromSnippet:v14];
        v25 = [v23 afui_hasContentEqualTo:v24];

        andItemsCopy = v28;
        itemsCopy = v29;
        if (v25)
        {
          v8 = v30 + 1;
          if ([v29 count] > (v30 + 1))
          {
            continue;
          }
        }

        v26 = v25 ^ 1;
        goto LABEL_14;
      }

LABEL_16:
      v26 = 1;
      andItemsCopy = v28;
      itemsCopy = v29;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
LABEL_13:
    v26 = 1;
  }

LABEL_14:

  return v26;
}

+ (id)filterTranscriptItemsForSAEDialogBoxContent:(id)content
{
  v61 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = content;
  v3 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (!v3)
  {
    goto LABEL_39;
  }

  v5 = v3;
  v6 = *v52;
  *&v4 = 136315394;
  v35 = v4;
  v37 = *v52;
  do
  {
    v7 = 0;
    v38 = v5;
    do
    {
      if (*v52 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v51 + 1) + 8 * v7);
      aceObject = [v8 aceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_37;
      }

      v39 = v8;
      aceObject2 = [v8 aceObject];
      v11 = [SiriSharedUIUtilities cardFromSnippet:?];
      v44 = [v11 copy];
      v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v45 = v11;
      cardSections = [v11 cardSections];
      v14 = [cardSections countByEnumeratingWithState:&v47 objects:v59 count:16];
      v42 = v14 != 0;
      if (v14)
      {
        v15 = v14;
        v41 = v7;
        v16 = 0;
        v17 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(cardSections);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            shouldShowInSmartDialog = [v19 shouldShowInSmartDialog];
            objc_opt_class();
            v21 = objc_opt_isKindOfClass();
            if (shouldShowInSmartDialog)
            {
              if (v21)
              {
                cardSections2 = [v19 cardSections];
                [v12 addObjectsFromArray:cardSections2];
              }

              else
              {
                [v12 addObject:v19];
              }

              v16 = 1;
            }

            else if (v21)
            {
              v23 = v19;
              cardSections3 = [v23 cardSections];
              v25 = [cardSections3 count];

              if (v25)
              {
                cardSections4 = [v23 cardSections];
                v27 = [cardSections4 objectAtIndexedSubscript:0];

                if ([v27 shouldShowInSmartDialog])
                {
                  cardSections5 = [v23 cardSections];
                  [v12 addObjectsFromArray:cardSections5];

                  v16 = 1;
                }
              }
            }

            else
            {
              [v46 addObject:v19];
            }
          }

          v15 = [cardSections countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v15);

        if ((v16 & 1) == 0)
        {
          v33 = 0;
          v6 = v37;
          v5 = v38;
          v7 = v41;
          v30 = aceObject2;
          goto LABEL_36;
        }

        v29 = *MEMORY[0x277CEF098];
        v6 = v37;
        v7 = v41;
        v30 = aceObject2;
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = v35;
          v56 = "+[SiriSharedUIUtilities filterTranscriptItemsForSAEDialogBoxContent:]";
          v57 = 2112;
          v58 = v46;
          _os_log_impl(&dword_21E3EB000, v29, OS_LOG_TYPE_DEFAULT, "%s #dialogbox found card content for dialog box: %@", buf, 0x16u);
        }

        [v45 setCardSections:v46];
        cardSections = [aceObject2 copy];
        v31 = [objc_alloc(MEMORY[0x277D4C728]) initWithFacade:v45];
        data = [v31 data];
        [cardSections setCardData:data];

        if ([v46 count])
        {
          [v45 setCardSections:v46];
        }

        else
        {
          [v39 setViewController:0];
        }

        v5 = v38;
        [v44 setCardSections:v12];
        v36 = v44;
      }

      else
      {
        v30 = aceObject2;
      }

      v33 = v42;
LABEL_36:

      if (v33)
      {
        goto LABEL_40;
      }

LABEL_37:
      ++v7;
    }

    while (v7 != v5);
    v5 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  }

  while (v5);
LABEL_39:
  v36 = 0;
LABEL_40:

  return v36;
}

+ (id)getAceObjectForSACardSnippetFromTranscriptItems:(id)items
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  itemsCopy = items;
  v27 = [itemsCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v27)
  {
    aceObject3 = 0;
    goto LABEL_28;
  }

  v4 = *v33;
  v23 = *v33;
  v24 = itemsCopy;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v33 != v4)
      {
        objc_enumerationMutation(itemsCopy);
      }

      v6 = *(*(&v32 + 1) + 8 * i);
      aceObject = [v6 aceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        continue;
      }

      aceObject2 = [v6 aceObject];
      v9 = [SiriSharedUIUtilities cardFromSnippet:?];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = v9;
      cardSections = [v9 cardSections];
      v11 = [cardSections countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(cardSections);
          }

          v15 = *(*(&v28 + 1) + 8 * j);
          if ([v15 shouldShowInSmartDialog])
          {
            aceObject3 = [v6 aceObject];
LABEL_27:

            itemsCopy = v24;
            goto LABEL_28;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            cardSections2 = [v16 cardSections];
            v18 = [cardSections2 count];

            if (v18)
            {
              cardSections3 = [v16 cardSections];
              v20 = [cardSections3 objectAtIndexedSubscript:0];

              if ([v20 shouldShowInSmartDialog])
              {
                aceObject3 = [v6 aceObject];

                goto LABEL_27;
              }
            }
          }
        }

        v12 = [cardSections countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_20:

      v4 = v23;
      itemsCopy = v24;
    }

    aceObject3 = 0;
    v27 = [itemsCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v27);
LABEL_28:

  return aceObject3;
}

+ (BOOL)stringIsBlank:(id)blank
{
  if (!blank)
  {
    return 1;
  }

  v3 = MEMORY[0x277CCA900];
  blankCopy = blank;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [blankCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 length] == 0;
  return v7;
}

+ (void)orbViewModeForSiriSessionState:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21E3EB000, v6, v7, "%s unhandled siri session state: %@. Falling back to SUICOrbViewModeOff", v8, v9, v10, v11, 2u);
}

+ (void)orbViewModeForSiriSessionState:(void *)a1 isAttending:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_21E3EB000, v6, v7, "%s unhandled siri session state: %@. Falling back to SUICOrbViewModeOff", v8, v9, v10, v11, 2u);
}

@end