@interface CACCorrectionPresentationManager
- (id)currentlyDisplayedCorrections;
- (void)_showCorrectionsForElement:(id)element fromString:(id)string withAlternatives:(id)alternatives withEmojis:(id)emojis portraitUpRect:(CGRect)rect;
- (void)correctionsPresentationViewController:(id)controller didSelectItemWithText:(id)text;
- (void)dismissCorrectionsPresentationViewController:(id)controller;
- (void)handleAXNotificationData:(void *)data;
- (void)hideIfNeededForElements:(id)elements;
- (void)showCorrectionsForElement:(id)element nBestStrings:(id)strings;
@end

@implementation CACCorrectionPresentationManager

- (void)_showCorrectionsForElement:(id)element fromString:(id)string withAlternatives:(id)alternatives withEmojis:(id)emojis portraitUpRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  stringCopy = string;
  alternativesCopy = alternatives;
  emojisCopy = emojis;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __117__CACCorrectionPresentationManager__showCorrectionsForElement_fromString_withAlternatives_withEmojis_portraitUpRect___block_invoke;
  v28[3] = &unk_279CEBDE0;
  v28[4] = self;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__CACCorrectionPresentationManager__showCorrectionsForElement_fromString_withAlternatives_withEmojis_portraitUpRect___block_invoke_2;
  v20[3] = &unk_279CECB68;
  v21 = stringCopy;
  v22 = alternativesCopy;
  v23 = emojisCopy;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v17 = emojisCopy;
  v18 = alternativesCopy;
  v19 = stringCopy;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:v28 updateHandler:v20];
}

id __117__CACCorrectionPresentationManager__showCorrectionsForElement_fromString_withAlternatives_withEmojis_portraitUpRect___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setDelegate:*(a1 + 32)];

  return v2;
}

void __117__CACCorrectionPresentationManager__showCorrectionsForElement_fromString_withAlternatives_withEmojis_portraitUpRect___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setText:v3];
  [v4 setAlternatives:*(a1 + 40)];
  [v4 setEmojis:*(a1 + 48)];
  [v4 setPortraitUpSourceRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

- (void)showCorrectionsForElement:(id)element nBestStrings:(id)strings
{
  v114 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  stringsCopy = strings;
  [(CACCorrectionPresentationManager *)self setElement:elementCopy];
  if (showCorrectionsForElement_nBestStrings__textCheckerInialize != -1)
  {
    [CACCorrectionPresentationManager showCorrectionsForElement:nBestStrings:];
  }

  selectedTextRange = [elementCopy selectedTextRange];
  [elementCopy rectForRange:{selectedTextRange, v9}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  cacTextSelectionCACTextMarkerRange = [elementCopy cacTextSelectionCACTextMarkerRange];
  v19 = [elementCopy cacStringForCACTextMarkerRange:cacTextSelectionCACTextMarkerRange];

  array = [MEMORY[0x277CBEA60] array];
  v98 = objc_opt_new();
  if ([v19 length])
  {
    v21 = [v19 characterAtIndex:0];
    if ([v19 length] == 1 && ((v21 - 32) < 0x5Fu || (v22 = v21 - 8216, v22 <= 5) && ((1 << v22) & 0x33) != 0))
    {
      alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
      v24 = [alphanumericCharacterSet characterIsMember:v21];

      if (v24)
      {
        if ((v21 - 48) > 9u)
        {
          uppercaseString = [v19 uppercaseString];
          v78 = v19;
          v79 = [v19 isEqualToString:uppercaseString];

          v80 = 65;
          do
          {
            while (v79)
            {
              v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v80];
              [v98 addObject:v81];

              v80 = (v80 + 1);
              if (v80 == 91)
              {
                v19 = v78;
                lowercaseString = [v78 lowercaseString];
                goto LABEL_68;
              }
            }

            v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", (v80 + 32)];
            [v98 addObject:v82];

            v80 = (v80 + 1);
          }

          while (v80 != 91);
          v19 = v78;
          lowercaseString = [v78 uppercaseString];
LABEL_68:
          v84 = lowercaseString;
          [v98 addObject:lowercaseString];

          v85 = 0;
          do
          {
            v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v85];
            [v98 addObject:v86];

            v85 = (v85 + 1);
          }

          while (v85 != 10);
        }

        else
        {
          v25 = 0;
          do
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v25];
            [v98 addObject:v26];

            v25 = (v25 + 1);
          }

          while (v25 != 10);
          v27 = 65;
          do
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v27];
            [v98 addObject:v28];

            v27 = (v27 + 1);
          }

          while (v27 != 91);
        }
      }

      else
      {
        v69 = 33;
        do
        {
          v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v69];
          [v98 addObject:v70];

          v69 = (v69 + 1);
        }

        while (v69 != 48);
        v71 = 58;
        do
        {
          v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v71];
          [v98 addObject:v72];

          v71 = (v71 + 1);
        }

        while (v71 != 65);
        v73 = 91;
        do
        {
          v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v73];
          [v98 addObject:v74];

          v73 = (v73 + 1);
        }

        while (v73 != 97);
        v75 = 123;
        do
        {
          v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v75];
          [v98 addObject:v76];

          v75 = (v75 + 1);
        }

        while (v75 != 127);
        [v98 addObject:@"“"];
        [v98 addObject:@"”"];
        [v98 addObject:@"‘"];
        [v98 addObject:@"’"];
      }
    }

    else
    {
      v30 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      leadingTextForCurrentSelection = [v30 leadingTextForCurrentSelection];

      v31 = +[CACSpeechSystem speechSystem];
      recognitionLocaleIdentifier = [v31 recognitionLocaleIdentifier];

      v88 = [CACCorrectionUtilities emojiSuggestionsForString:v19];

      v96 = recognitionLocaleIdentifier;
      v33 = [CACCorrectionUtilities alternativesForString:v19 languageIdentifier:recognitionLocaleIdentifier];
      v34 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      LODWORD(recognitionLocaleIdentifier) = [v34 dictationRecognizerMode];

      v92 = elementCopy;
      v93 = v33;
      v89 = v19;
      selfCopy = self;
      if ((recognitionLocaleIdentifier - 4) > 0xFFFFFFFD)
      {
        doesCurrentLanguageSupportInterWordSpaces = 0;
      }

      else
      {
        v35 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        doesCurrentLanguageSupportInterWordSpaces = [v35 doesCurrentLanguageSupportInterWordSpaces];
      }

      v37 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
      v38 = objc_opt_new();
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = v37;
      v39 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v108;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v108 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v107 + 1) + 8 * i);
            v44 = +[VCVocabularyObjC textKey];
            v45 = [v43 objectForKey:v44];
            [v38 addObject:v45];
          }

          v40 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
        }

        while (v40);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v91 = stringsCopy;
      v46 = stringsCopy;
      v47 = [v46 countByEnumeratingWithState:&v103 objects:v112 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v104;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v104 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:*(*(&v103 + 1) + 8 * j)];
            if (doesCurrentLanguageSupportInterWordSpaces)
            {
              v52 = [v38 copy];
              [v51 adjustCapsAndSpacingUsingLeadingText:leadingTextForCurrentSelection localeIdentifier:v96 vocabularyEntries:v52 spellingGuessesBlock:&__block_literal_global_313];
            }

            string = [v51 string];
            v54 = [v98 containsObject:string];

            if ((v54 & 1) == 0)
            {
              string2 = [v51 string];
              [v98 addObject:string2];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v103 objects:v112 count:16];
        }

        while (v48);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v94 = v93;
      v56 = [v94 countByEnumeratingWithState:&v99 objects:v111 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v100;
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v100 != v58)
            {
              objc_enumerationMutation(v94);
            }

            v60 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:*(*(&v99 + 1) + 8 * k)];
            if (doesCurrentLanguageSupportInterWordSpaces)
            {
              v61 = [v38 copy];
              [v60 adjustCapsAndSpacingUsingLeadingText:leadingTextForCurrentSelection localeIdentifier:v96 vocabularyEntries:v61 spellingGuessesBlock:&__block_literal_global_315];
            }

            stringByReplacingNewLinesWithSymbols = [v60 stringByReplacingNewLinesWithSymbols];
            v63 = [stringByReplacingNewLinesWithSymbols mutableCopy];

            string3 = [v63 string];
            v65 = [v98 containsObject:string3];

            if ((v65 & 1) == 0)
            {
              string4 = [v63 string];
              [v98 addObject:string4];
            }
          }

          v57 = [v94 countByEnumeratingWithState:&v99 objects:v111 count:16];
        }

        while (v57);
      }

      v19 = v89;
      if ([v98 count] >= 0x10)
      {
        [v98 removeObjectsInRange:{15, objc_msgSend(v98, "count") - 15}];
      }

      v67 = v88;
      stringsCopy = v91;
      elementCopy = v92;
      self = selfCopy;
      if ([v88 count] >= 0xD)
      {
        v68 = [v88 subarrayWithRange:{0, 12}];

        v67 = v68;
      }

      array = v67;
    }

    stringByReplacingNewLinesWithSymbols2 = [v19 stringByReplacingNewLinesWithSymbols];

    v29 = v98;
    [(CACCorrectionPresentationManager *)self _showCorrectionsForElement:elementCopy fromString:stringByReplacingNewLinesWithSymbols2 withAlternatives:v98 withEmojis:array portraitUpRect:v11, v13, v15, v17];
    v19 = stringByReplacingNewLinesWithSymbols2;
  }

  else
  {
    v29 = v98;
  }
}

uint64_t __75__CACCorrectionPresentationManager_showCorrectionsForElement_nBestStrings___block_invoke()
{
  showCorrectionsForElement_nBestStrings__sChecker = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)hideIfNeededForElements:(id)elements
{
  elementsCopy = elements;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  element = [(CACCorrectionPresentationManager *)selfCopy element];
  if (element)
  {
    viewController = [(CACSimpleContentViewManager *)selfCopy viewController];

    if (viewController)
    {
      element2 = [(CACCorrectionPresentationManager *)selfCopy element];
      if (([elementsCopy containsObject:element2] & 1) == 0)
      {
        v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        focusedElement = [v9 focusedElement];
        v11 = [element2 isEqual:focusedElement];

        if ((v11 & 1) == 0)
        {
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __60__CACCorrectionPresentationManager_hideIfNeededForElements___block_invoke;
          v12[3] = &unk_279CEB2D0;
          v12[4] = selfCopy;
          [(CACSimpleContentViewManager *)selfCopy hideAnimated:0 completion:v12];
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)currentlyDisplayedCorrections
{
  array = [MEMORY[0x277CBEB18] array];
  viewController = [(CACSimpleContentViewManager *)self viewController];
  v5 = viewController;
  if (viewController)
  {
    alternatives = [viewController alternatives];
    v7 = [alternatives count];

    if (v7)
    {
      alternatives2 = [v5 alternatives];
      [array addObjectsFromArray:alternatives2];
    }

    emojis = [v5 emojis];
    v10 = [emojis count];

    if (v10)
    {
      emojis2 = [v5 emojis];
      [array addObjectsFromArray:emojis2];
    }
  }

  return array;
}

- (void)correctionsPresentationViewController:(id)controller didSelectItemWithText:(id)text
{
  controllerCopy = controller;
  textCopy = text;
  if (textCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[CACEmojiManager sharedManager];
      [v8 willInsertStringPotentiallyContainingEmojis:textCopy];

      element = [(CACCorrectionPresentationManager *)self element];
      [element insertText:textCopy asUndoableAction:1];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __96__CACCorrectionPresentationManager_correctionsPresentationViewController_didSelectItemWithText___block_invoke;
      v10[3] = &unk_279CEB2D0;
      v10[4] = self;
      [(CACSimpleContentViewManager *)self hideAnimated:1 completion:v10];
    }
  }
}

- (void)dismissCorrectionsPresentationViewController:(id)controller
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__CACCorrectionPresentationManager_dismissCorrectionsPresentationViewController___block_invoke;
  v3[3] = &unk_279CEB2D0;
  v3[4] = self;
  [(CACSimpleContentViewManager *)self hideAnimated:1 completion:v3];
}

- (void)handleAXNotificationData:(void *)data
{
  dataCopy = data;
  if (dataCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    element = [(CACCorrectionPresentationManager *)self element];
    [element insertText:dataCopy asUndoableAction:1];
  }

  else
  {
    element = CACLogAccessibility();
    if (os_log_type_enabled(element, OS_LOG_TYPE_ERROR))
    {
      [(CACCorrectionPresentationManager *)dataCopy handleAXNotificationData:element];
    }
  }
}

- (void)handleAXNotificationData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Unexpected data from corrections: %{private}@", &v2, 0xCu);
}

@end