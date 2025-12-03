@interface CACTextEditingProvider
- (BOOL)isNextPreviousResolverSpokenCommandEmojiBased;
- (BOOL)shouldInsertInterWordSpaces;
- (CACTextEditingProvider)initWithSpokenCommand:(id)command axElement:(id)element;
- (CGRect)rectForRange:(_NSRange)range;
- (_NSRange)_rangeFromPreviousTextInsertionForAXElement:(id)element;
- (id)_nBestListFromPreviousTextInsertionForAXElement:(id)element;
- (id)emojisMatchingTextInStrings:(id)strings;
- (id)localeForTextOperations;
- (id)markerRangeForLineAtTextMarker:(id)marker;
- (id)textMarkerRangeFromPreviousTextInsertion;
- (int)searchGranularity;
- (int)statusOfEmojisFoundInString:(id)string;
- (void)handleCorrectionRequestWithStrings:(id)strings;
- (void)handleErrorIdentifier:(id)identifier withObjects:(id)objects;
- (void)handleSearchResultsWithRecognizedCommandParameters:(id)parameters variantOverrides:(id)overrides;
- (void)handleTextDisambiguationWithPhraseMatchResults:(id)results actionBlock:(id)block;
- (void)insertAttributedString:(id)string;
- (void)insertString:(id)string;
- (void)registerInsertedStringCategoryIdentifer:(id)identifer;
@end

@implementation CACTextEditingProvider

- (CACTextEditingProvider)initWithSpokenCommand:(id)command axElement:(id)element
{
  commandCopy = command;
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = CACTextEditingProvider;
  v9 = [(CACTextEditingProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spokenCommand, command);
    objc_storeStrong(&v10->_axElement, element);
    v11 = objc_opt_new();
    textEditingEngine = v10->_textEditingEngine;
    v10->_textEditingEngine = v11;

    [(SRCSTextEditing *)v10->_textEditingEngine setProvider:v10];
    [(SRCSTextEditing *)v10->_textEditingEngine setDelayAfterSelectionBeforeExecutingAction:0.125];
  }

  return v10;
}

- (CGRect)rectForRange:(_NSRange)range
{
  [(AXElement *)self->_axElement rectForRange:range.location, range.length];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)markerRangeForLineAtTextMarker:(id)marker
{
  v4 = -[AXElement lineRangeForPosition:](self->_axElement, "lineRangeForPosition:", [marker index]);

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
  isNextPreviousResolverSpokenCommandEmojiBased = [v2 isNextPreviousResolverSpokenCommandEmojiBased];

  return isNextPreviousResolverSpokenCommandEmojiBased;
}

- (id)emojisMatchingTextInStrings:(id)strings
{
  v19 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = stringsCopy;
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
          [array addObjectsFromArray:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

- (int)statusOfEmojisFoundInString:(id)string
{
  stringCopy = string;
  v4 = +[CACEmojiManager sharedManager];
  v5 = [v4 countOfEmojisInString:stringCopy];

  return v5 > 0;
}

- (BOOL)shouldInsertInterWordSpaces
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v2 dictationRecognizerMode];

  if ((dictationRecognizerMode - 4) > 0xFFFFFFFD)
  {
    return 0;
  }

  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  doesCurrentLanguageSupportInterWordSpaces = [v4 doesCurrentLanguageSupportInterWordSpaces];

  return doesCurrentLanguageSupportInterWordSpaces;
}

- (void)handleTextDisambiguationWithPhraseMatchResults:(id)results actionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  blockCopy = block;
  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = resultsCopy;
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

        markerRange = [*(*(&v32 + 1) + 8 * v13) markerRange];
        [v8 addObject:markerRange];

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
  v18 = blockCopy;
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

- (void)handleSearchResultsWithRecognizedCommandParameters:(id)parameters variantOverrides:(id)overrides
{
  if (parameters)
  {
    v4 = [CACSpokenCommand attributedStringFromRecognizedCommandParameters:parameters variantOverrides:overrides];
    [CACSpokenCommand displayRecognizedMessageUsingAttributedString:v4];
  }
}

- (void)handleErrorIdentifier:(id)identifier withObjects:(id)objects
{
  objectsCopy = objects;
  if ([identifier isEqualToString:@"ErrorMessage.TextNotFound"])
  {
    firstObject = [objectsCopy firstObject];

    if (firstObject)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.TextNotFound"];
      firstObject2 = [objectsCopy firstObject];
      v9 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, firstObject2];

      v10 = +[CACDisplayManager sharedManager];
      [v10 displayMessageString:v9 type:1];
    }
  }
}

- (void)handleCorrectionRequestWithStrings:(id)strings
{
  stringsCopy = strings;
  selectionTextMarkerRange = [(CACTextEditingProvider *)self selectionTextMarkerRange];
  v6 = [(CACTextEditingProvider *)self stringForTextMarkerRange:selectionTextMarkerRange];
  v7 = [v6 length];

  if (!v7)
  {
    textEditingEngine = [(CACTextEditingProvider *)self textEditingEngine];
    [textEditingEngine selectCurrentWord];
  }

  v9 = +[CACDisplayManager sharedManager];
  [v9 showCorrectionsForElement:self->_axElement nBestStrings:stringsCopy];
}

- (id)localeForTextOperations
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  activeLocale = [mEMORY[0x277D79890] activeLocale];

  return activeLocale;
}

- (void)insertString:(id)string
{
  stringCopy = string;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v4 insertDictatedString:stringCopy];
}

- (void)insertAttributedString:(id)string
{
  stringCopy = string;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v4 insertDictatedAttributedString:stringCopy];
}

- (void)registerInsertedStringCategoryIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  stagedTextInsertionSpecifier = [v5 stagedTextInsertionSpecifier];
  [stagedTextInsertionSpecifier setInsertedCategoryID:identiferCopy];
}

- (_NSRange)_rangeFromPreviousTextInsertionForAXElement:(id)element
{
  elementCopy = element;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  previousTextInsertionSpecifier = [v4 previousTextInsertionSpecifier];

  axElement = [previousTextInsertionSpecifier axElement];
  v7 = [elementCopy isEqual:axElement];

  if (v7)
  {
    insertedRange = [previousTextInsertionSpecifier insertedRange];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    insertedRange = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = insertedRange;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_nBestListFromPreviousTextInsertionForAXElement:(id)element
{
  v26 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  previousTextInsertionSpecifier = [v4 previousTextInsertionSpecifier];

  insertedCategoryID = [previousTextInsertionSpecifier insertedCategoryID];
  axElement = [previousTextInsertionSpecifier axElement];
  v8 = [elementCopy isEqual:axElement];

  if (v8)
  {
    v9 = insertedCategoryID == 0;
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
    recognizedParams = [previousTextInsertionSpecifier recognizedParams];
    v12 = [recognizedParams objectForKey:kCACCommandParameterTextSequence];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v10 = v13;
    if (v13)
    {
      v20 = elementCopy;
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
          v18 = [v17 isEqualToString:insertedCategoryID];

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
      elementCopy = v20;
    }
  }

  return v10;
}

@end