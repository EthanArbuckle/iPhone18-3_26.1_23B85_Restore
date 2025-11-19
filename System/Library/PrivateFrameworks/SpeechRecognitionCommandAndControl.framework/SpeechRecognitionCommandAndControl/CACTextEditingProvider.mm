@interface CACTextEditingProvider
- (BOOL)isNextPreviousResolverSpokenCommandEmojiBased;
- (BOOL)shouldInsertInterWordSpaces;
- (CACTextEditingProvider)initWithSpokenCommand:(id)a3 axElement:(id)a4;
- (CGRect)rectForRange:(_NSRange)a3;
- (_NSRange)_rangeFromPreviousTextInsertionForAXElement:(id)a3;
- (id)_nBestListFromPreviousTextInsertionForAXElement:(id)a3;
- (id)emojisMatchingTextInStrings:(id)a3;
- (id)localeForTextOperations;
- (id)markerRangeForLineAtTextMarker:(id)a3;
- (id)textMarkerRangeFromPreviousTextInsertion;
- (int)searchGranularity;
- (int)statusOfEmojisFoundInString:(id)a3;
- (void)handleCorrectionRequestWithStrings:(id)a3;
- (void)handleErrorIdentifier:(id)a3 withObjects:(id)a4;
- (void)handleSearchResultsWithRecognizedCommandParameters:(id)a3 variantOverrides:(id)a4;
- (void)handleTextDisambiguationWithPhraseMatchResults:(id)a3 actionBlock:(id)a4;
- (void)insertAttributedString:(id)a3;
- (void)insertString:(id)a3;
- (void)registerInsertedStringCategoryIdentifer:(id)a3;
@end

@implementation CACTextEditingProvider

- (CACTextEditingProvider)initWithSpokenCommand:(id)a3 axElement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CACTextEditingProvider;
  v9 = [(CACTextEditingProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spokenCommand, a3);
    objc_storeStrong(&v10->_axElement, a4);
    v11 = objc_opt_new();
    textEditingEngine = v10->_textEditingEngine;
    v10->_textEditingEngine = v11;

    [(SRCSTextEditing *)v10->_textEditingEngine setProvider:v10];
    [(SRCSTextEditing *)v10->_textEditingEngine setDelayAfterSelectionBeforeExecutingAction:0.125];
  }

  return v10;
}

- (CGRect)rectForRange:(_NSRange)a3
{
  [(AXElement *)self->_axElement rectForRange:a3.location, a3.length];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)markerRangeForLineAtTextMarker:(id)a3
{
  v4 = -[AXElement lineRangeForPosition:](self->_axElement, "lineRangeForPosition:", [a3 index]);

  return [CACTextMarkerRange markerRangeWithNSRange:v4, v3];
}

- (id)textMarkerRangeFromPreviousTextInsertion
{
  v3 = [(CACTextEditingProvider *)self _rangeFromPreviousTextInsertionForAXElement:self->_axElement];

  return [CACTextMarkerRange markerRangeWithNSRange:v3, v2];
}

- (int)searchGranularity
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = 2 * ([v2 dictationRecognizerMode] == 3);

  return v3;
}

- (BOOL)isNextPreviousResolverSpokenCommandEmojiBased
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 isNextPreviousResolverSpokenCommandEmojiBased];

  return v3;
}

- (id)emojisMatchingTextInStrings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = +[CACEmojiManager sharedManager];
        v12 = [v11 emojisForText:v10 skinToneFilter:1];

        if ([v12 count])
        {
          [v4 addObjectsFromArray:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int)statusOfEmojisFoundInString:(id)a3
{
  v3 = a3;
  v4 = +[CACEmojiManager sharedManager];
  v5 = [v4 countOfEmojisInString:v3];

  return v5 > 0;
}

- (BOOL)shouldInsertInterWordSpaces
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 dictationRecognizerMode];

  if ((v3 - 4) > 0xFFFFFFFD)
  {
    return 0;
  }

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v5 = [v4 doesCurrentLanguageSupportInterWordSpaces];

  return v5;
}

- (void)handleTextDisambiguationWithPhraseMatchResults:(id)a3 actionBlock:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v32 + 1) + 8 * v13) markerRange];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v15 = [CACDisambiguationHandler alloc];
  v16 = [CACLabeledElementsCollection labeledElementsFromTextMarkerRanges:v8 axElement:self->_axElement];
  v17 = [(CACDisambiguationHandler *)v15 initWithLabeledElements:v16];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__CACTextEditingProvider_handleTextDisambiguationWithPhraseMatchResults_actionBlock___block_invoke;
  v30[3] = &unk_279CEC098;
  v18 = v7;
  v30[4] = self;
  v31 = v18;
  [(CACDisambiguationHandler *)v17 setChosenLabeledElementHandler:v30];
  v19 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v19 setDisambiguationHandler:v17];

  v20 = +[CACDisplayManager sharedManager];
  [v20 startShowingTransientOverlayForType:@"NumberedElements"];

  v21 = +[CACPreferences sharedPreferences];
  if (([v21 userHintsFeatures] & 2) == 0)
  {
    goto LABEL_14;
  }

  v22 = +[CACUserHintsManager sharedManager];
  v23 = [v22 shouldDisplayUserHintAfterRegisteringIdentifier:@"DisambiguationPrompt"];

  if (v23)
  {
    v24 = +[CACPreferences sharedPreferences];
    if ([v24 isEnabledForCommandIdentifier:@"System.OverlayChooseLabelWithoutPrefix"])
    {
      v21 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.DisambiguationPrompt"];
    }

    else
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.DisambiguationPromptWithCommandAsArgument"];
      v27 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v28 = [v27 primaryStringForCommandIdentifier:@"System.OverlayChooseLabel"];
      v21 = [v25 stringWithValidatedFormat:v26 validFormatSpecifiers:@"%@" error:0, v28];
    }

    v29 = +[CACDisplayManager sharedManager];
    [v29 displayMessageString:v21 type:0 announcementCompletion:&__block_literal_global_25];

LABEL_14:
  }
}

void __85__CACTextEditingProvider_handleTextDisambiguationWithPhraseMatchResults_actionBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 textMarkerRange];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) stringForTextMarkerRange:v5];
  (*(v3 + 16))(v3, v5, v4);
}

void __85__CACTextEditingProvider_handleTextDisambiguationWithPhraseMatchResults_actionBlock___block_invoke_2()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 speakVoiceOverDescriptionForActiveOverlayIfNeeded];
}

- (void)handleSearchResultsWithRecognizedCommandParameters:(id)a3 variantOverrides:(id)a4
{
  if (a3)
  {
    v4 = [CACSpokenCommand attributedStringFromRecognizedCommandParameters:a3 variantOverrides:a4];
    [CACSpokenCommand displayRecognizedMessageUsingAttributedString:v4];
  }
}

- (void)handleErrorIdentifier:(id)a3 withObjects:(id)a4
{
  v11 = a4;
  if ([a3 isEqualToString:@"ErrorMessage.TextNotFound"])
  {
    v5 = [v11 firstObject];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.TextNotFound"];
      v8 = [v11 firstObject];
      v9 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v8];

      v10 = +[CACDisplayManager sharedManager];
      [v10 displayMessageString:v9 type:1];
    }
  }
}

- (void)handleCorrectionRequestWithStrings:(id)a3
{
  v4 = a3;
  v5 = [(CACTextEditingProvider *)self selectionTextMarkerRange];
  v6 = [(CACTextEditingProvider *)self stringForTextMarkerRange:v5];
  v7 = [v6 length];

  if (!v7)
  {
    v8 = [(CACTextEditingProvider *)self textEditingEngine];
    [v8 selectCurrentWord];
  }

  v9 = +[CACDisplayManager sharedManager];
  [v9 showCorrectionsForElement:self->_axElement nBestStrings:v4];
}

- (id)localeForTextOperations
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 activeLocale];

  return v3;
}

- (void)insertString:(id)a3
{
  v3 = a3;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v4 insertDictatedString:v3];
}

- (void)insertAttributedString:(id)a3
{
  v3 = a3;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v4 insertDictatedAttributedString:v3];
}

- (void)registerInsertedStringCategoryIdentifer:(id)a3
{
  v3 = a3;
  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v5 stagedTextInsertionSpecifier];
  [v4 setInsertedCategoryID:v3];
}

- (_NSRange)_rangeFromPreviousTextInsertionForAXElement:(id)a3
{
  v3 = a3;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v5 = [v4 previousTextInsertionSpecifier];

  v6 = [v5 axElement];
  v7 = [v3 isEqual:v6];

  if (v7)
  {
    v8 = [v5 insertedRange];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_nBestListFromPreviousTextInsertionForAXElement:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v5 = [v4 previousTextInsertionSpecifier];

  v6 = [v5 insertedCategoryID];
  v7 = [v5 axElement];
  v8 = [v3 isEqual:v7];

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v5 recognizedParams];
    v12 = [v11 objectForKey:kCACCommandParameterTextSequence];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v10 = v13;
    if (v13)
    {
      v20 = v3;
      v14 = *v22;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [v16 objectForKey:kCACCommandParameterBuiltInIdentifier];
          v18 = [v17 isEqualToString:v6];

          if (v18)
          {
            v10 = [v16 objectForKey:kCACCommandParameterTextVariants];
            goto LABEL_17;
          }

          v15 = v15 + 1;
        }

        while (v10 != v15);
        v10 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_17:
      v3 = v20;
    }
  }

  return v10;
}

@end