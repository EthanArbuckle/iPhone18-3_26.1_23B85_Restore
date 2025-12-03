@interface SRCSTextEditing
+ (id)wordsFromString:(id)string;
+ (int64_t)doesArrayOfWords:(id)words containArrayOfArrayWords:(id)arrayWords;
- (SRCSTextEditing)init;
- (SRCSTextEditingProviderProtocol)provider;
- (_NSRange)_findRangeForEnumerationType:(int64_t)type atRelativeIncrement:(int64_t)increment fromPosition:(id)position options:(unint64_t)options;
- (_NSRange)_rangeOfWordBasedSearchString:(id)string inString:(id)inString withRange:(_NSRange)range forwardSearchDirection:(BOOL)direction;
- (_NSRange)rangeOfStrings:(id)strings referenceRange:(_NSRange)range ambiguityResolution:(id)resolution substringSearchGranularity:(int)granularity foundStringRef:(id *)ref;
- (id)_capitalizedStringFromString:(id)string;
- (id)_localizedPunctuationStringForIdentifier:(id)identifier;
- (id)_prunedStringsFromCandidateStrings:(id)strings;
- (id)_stringBySurroundingString:(id)string withPrefixString:(id)prefixString suffixString:(id)suffixString;
- (id)_strippedPhraseStringsFromStrings:(id)strings;
- (id)actOnRange:(id)range options:(id)options actionBlock:(id)block;
- (id)markerRangeForLineInDesiredBlock:(int)block markerRange:(id)range count:(unint64_t)count options:(int)options;
- (id)visiblePhraseMatchesFromStrings:(id)strings substringSearchGranularity:(int)granularity;
- (int64_t)_indexOfFirstPhraseMatchResultPairBeforeInsertion:(BOOL)insertion fromArray:(id)array;
- (unint64_t)characterLengthOfTextMarkerRange:(id)range;
- (void)_insertComponentsIndividuallyBySurroundingString:(id)string withPrefixString:(id)prefixString suffixString:(id)suffixString retainedProvider:(id)provider;
- (void)applyFormatWithCommandIdentifier:(id)identifier;
- (void)correctSelection;
- (void)deleteAll;
- (void)deleteCurrentCharacter;
- (void)deleteCurrentLine;
- (void)deleteCurrentParagraph;
- (void)deleteCurrentSentence;
- (void)deleteCurrentWord;
- (void)deleteNextCharacterWithCount:(int64_t)count;
- (void)deleteNextLineWithCount:(int64_t)count;
- (void)deleteNextParagraphWithCount:(int64_t)count;
- (void)deleteNextSentenceWithCount:(int64_t)count;
- (void)deleteNextWordWithCount:(int64_t)count;
- (void)deletePreviousCharacterWithCount:(int64_t)count;
- (void)deletePreviousLineWithCount:(int64_t)count;
- (void)deletePreviousParagraphWithCount:(int64_t)count;
- (void)deletePreviousSentenceWithCount:(int64_t)count;
- (void)deletePreviousWordWithCount:(int64_t)count;
- (void)deleteSelection;
- (void)extendSelectionBackwardCharactersWithCount:(int64_t)count;
- (void)extendSelectionBackwardLinesWithCount:(int64_t)count;
- (void)extendSelectionBackwardParagraphsWithCount:(int64_t)count;
- (void)extendSelectionBackwardSentencesWithCount:(int64_t)count;
- (void)extendSelectionBackwardWordsWithCount:(int64_t)count;
- (void)extendSelectionForwardCharactersWithCount:(int64_t)count;
- (void)extendSelectionForwardLinesWithCount:(int64_t)count;
- (void)extendSelectionForwardParagraphsWithCount:(int64_t)count;
- (void)extendSelectionForwardSentencesWithCount:(int64_t)count;
- (void)extendSelectionForwardWordsWithCount:(int64_t)count;
- (void)extendSelectionToBeginning;
- (void)extendSelectionToEnd;
- (void)moveBackwardCharactersWithCount:(int64_t)count;
- (void)moveBackwardLinesWithCount:(int64_t)count;
- (void)moveBackwardParagraphsWithCount:(int64_t)count;
- (void)moveBackwardSentencesWithCount:(int64_t)count;
- (void)moveBackwardWordsWithCount:(int64_t)count;
- (void)moveForwardCharactersWithCount:(int64_t)count;
- (void)moveForwardLinesWithCount:(int64_t)count;
- (void)moveForwardParagraphsWithCount:(int64_t)count;
- (void)moveForwardSentencesWithCount:(int64_t)count;
- (void)moveForwardWordsWithCount:(int64_t)count;
- (void)moveToEndOfLineWithCount:(int64_t)count;
- (void)moveToEndOfParagraphWithCount:(int64_t)count;
- (void)moveToEndOfSelection;
- (void)moveToEndOfSentenceWithCount:(int64_t)count;
- (void)moveToEndOfTextArea;
- (void)moveToEndOfWordWithCount:(int64_t)count;
- (void)moveToStartOfLineWithCount:(int64_t)count;
- (void)moveToStartOfParagraphWithCount:(int64_t)count;
- (void)moveToStartOfSelection;
- (void)moveToStartOfSentenceWithCount:(int64_t)count;
- (void)moveToStartOfTextArea;
- (void)moveToStartOfWordWithCount:(int64_t)count;
- (void)pasteboardCopy;
- (void)pasteboardCut;
- (void)pasteboardPaste;
- (void)selectAll;
- (void)selectCurrentCharacter;
- (void)selectCurrentLine;
- (void)selectCurrentParagraph;
- (void)selectCurrentSentence;
- (void)selectCurrentWord;
- (void)selectFromPhraseVariants:(id)variants insertionString:(id)string range:(id)range recognizedParameters:(id)parameters commandIdentifer:(id)identifer;
- (void)selectFromPhraseVariants:(id)variants throughPhraseVariants:(id)phraseVariants recognizedParameters:(id)parameters commandIdentifer:(id)identifer;
- (void)selectFromRange:(id)range insertionString:(id)string commandIdentifier:(id)identifier recognizedParamaters:(id)paramaters;
- (void)selectNextCharacterWithCount:(int64_t)count;
- (void)selectNextLineWithCount:(int64_t)count;
- (void)selectNextParagraphWithCount:(int64_t)count;
- (void)selectNextSentenceWithCount:(int64_t)count;
- (void)selectNextWordWithCount:(int64_t)count;
- (void)selectPreviousCharacterWithCount:(int64_t)count;
- (void)selectPreviousLineWithCount:(int64_t)count;
- (void)selectPreviousParagraphWithCount:(int64_t)count;
- (void)selectPreviousSentenceWithCount:(int64_t)count;
- (void)selectPreviousTextInsertion;
- (void)selectPreviousWordWithCount:(int64_t)count;
- (void)surroundSelectionWithPunctuationForCommandIdentifier:(id)identifier;
@end

@implementation SRCSTextEditing

- (void)selectCurrentCharacter
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:2 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v5];
  }
}

- (void)selectPreviousCharacterWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:2 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectNextCharacterWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:2 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectCurrentWord
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:3 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v5];
  }
}

- (void)selectPreviousWordWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:3 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectNextWordWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:3 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectCurrentSentence
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:4 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v5];
  }
}

- (void)selectNextSentenceWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:4 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectPreviousSentenceWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:4 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectCurrentParagraph
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:1 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v5];
  }
}

- (void)selectNextParagraphWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:1 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectPreviousParagraphWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:1 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectCurrentLine
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:0 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v5];
  }
}

- (void)selectNextLineWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:0 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)selectPreviousLineWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:0 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 setSelectionToTextMarkerRange:v7];
  }
}

- (void)extendSelectionToEnd
{
  provider = [(SRCSTextEditing *)self provider];
  provider2 = [(SRCSTextEditing *)self provider];
  textMarkerRangeClass = [provider2 textMarkerRangeClass];
  provider3 = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider3 selectionTextMarkerRange];
  startMarker = [selectionTextMarkerRange startMarker];
  provider4 = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker = [provider4 lastPositionTextMarker];
  v10 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:lastPositionTextMarker];
  [provider setSelectionToTextMarkerRange:v10];
}

- (void)extendSelectionToBeginning
{
  provider = [(SRCSTextEditing *)self provider];
  provider2 = [(SRCSTextEditing *)self provider];
  textMarkerRangeClass = [provider2 textMarkerRangeClass];
  provider3 = [(SRCSTextEditing *)self provider];
  firstPositionTextMarker = [provider3 firstPositionTextMarker];
  provider4 = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
  endMarker = [selectionTextMarkerRange endMarker];
  v10 = [textMarkerRangeClass markerRangeWithStartMarker:firstPositionTextMarker endMarker:endMarker];
  [provider setSelectionToTextMarkerRange:v10];
}

- (void)extendSelectionForwardCharactersWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:2 desiredBlock:0 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    startMarker = [selectionTextMarkerRange startMarker];
    endMarker = [v14 endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionBackwardCharactersWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:2 desiredBlock:2 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v14 startMarker];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    endMarker = [selectionTextMarkerRange endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionForwardWordsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:3 desiredBlock:0 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    startMarker = [selectionTextMarkerRange startMarker];
    endMarker = [v14 endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionBackwardWordsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:3 desiredBlock:2 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v14 startMarker];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    endMarker = [selectionTextMarkerRange endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionForwardSentencesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:4 desiredBlock:0 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    startMarker = [selectionTextMarkerRange startMarker];
    endMarker = [v14 endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionBackwardSentencesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:4 desiredBlock:2 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v14 startMarker];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    endMarker = [selectionTextMarkerRange endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionForwardParagraphsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:1 desiredBlock:0 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    startMarker = [selectionTextMarkerRange startMarker];
    endMarker = [v14 endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionBackwardParagraphsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:1 desiredBlock:2 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v14 startMarker];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    endMarker = [selectionTextMarkerRange endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionForwardLinesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:0 desiredBlock:0 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    startMarker = [selectionTextMarkerRange startMarker];
    endMarker = [v14 endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)extendSelectionBackwardLinesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v14 = [provider markerRangeForEnumerationType:0 desiredBlock:2 count:count options:4];

  if (v14)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v14 startMarker];
    provider4 = [(SRCSTextEditing *)self provider];
    selectionTextMarkerRange = [provider4 selectionTextMarkerRange];
    endMarker = [selectionTextMarkerRange endMarker];
    v13 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:endMarker];
    [provider2 setSelectionToTextMarkerRange:v13];
  }
}

- (void)selectFromPhraseVariants:(id)variants insertionString:(id)string range:(id)range recognizedParameters:(id)parameters commandIdentifer:(id)identifer
{
  v107[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  rangeCopy = range;
  parametersCopy = parameters;
  identiferCopy = identifer;
  v15 = [(SRCSTextEditing *)self _prunedStringsFromCandidateStrings:variants];
  v16 = [(SRCSTextEditing *)self _strippedPhraseStringsFromStrings:v15];

  provider = [(SRCSTextEditing *)self provider];
  searchGranularity = [provider searchGranularity];

  provider2 = [(SRCSTextEditing *)self provider];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = dictionary;
  if (parametersCopy)
  {
    [dictionary setObject:parametersCopy forKey:@"RecognizedParameters"];
  }

  v22 = stringCopy;
  v50 = provider2;
  if ([identiferCopy isEqualToString:@"Text.SelectPrevious"])
  {
    v46 = identiferCopy;
    if ([provider2 isNextPreviousResolverSpokenCommandEmojiBased])
    {
      searchGranularity = 1;
    }

    else
    {
      searchGranularity = searchGranularity;
    }

    v23 = v21;
    [v21 addEntriesFromDictionary:&unk_287C0D2E8];
    v24 = parametersCopy;
    if ([provider2 isNextPreviousResolverSpokenCommandEmojiBased] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v25 = rangeCopy;
      v26 = [provider2 emojisMatchingTextInStrings:v16];
      v27 = 1;
    }

    else
    {
      v25 = rangeCopy;
      v27 = 0;
      v26 = v16;
    }

    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke;
    v103[3] = &unk_279CF52C0;
    v104 = v50;
    rangeCopy = v25;
    firstObject = [(SRCSTextEditing *)self _actOnStrings:v26 range:v25 ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestBeforeSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v23 provider:v104 actionBlock:v103];
    if (v27)
    {
    }

    v35 = v104;
    parametersCopy = v24;
    identiferCopy = v46;
    v21 = v23;
    goto LABEL_29;
  }

  if ([identiferCopy isEqualToString:@"Text.SelectNext"])
  {
    v47 = identiferCopy;
    if ([provider2 isNextPreviousResolverSpokenCommandEmojiBased])
    {
      searchGranularity = 1;
    }

    else
    {
      searchGranularity = searchGranularity;
    }

    v28 = v21;
    [v21 addEntriesFromDictionary:&unk_287C0D310];
    v29 = parametersCopy;
    if ([provider2 isNextPreviousResolverSpokenCommandEmojiBased])
    {
      v30 = stringCopy;
      v31 = rangeCopy;
      if (objc_opt_respondsToSelector())
      {
        v32 = [provider2 emojisMatchingTextInStrings:v16];
        v33 = 1;
LABEL_26:
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_2;
        v101[3] = &unk_279CF52C0;
        v102 = v50;
        rangeCopy = v31;
        firstObject = [(SRCSTextEditing *)self _actOnStrings:v32 range:v31 ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestAfterSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v28 provider:v102 actionBlock:v101];
        if (v33)
        {
        }

        v35 = v102;
        parametersCopy = v29;
        identiferCopy = v47;
        v21 = v28;
        v22 = v30;
LABEL_29:

        provider2 = v50;
        if (firstObject)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v31 = rangeCopy;
      v30 = stringCopy;
    }

    v33 = 0;
    v32 = v16;
    goto LABEL_26;
  }

  if (![identiferCopy isEqualToString:@"Text.ChangePhrase"])
  {
    if ([identiferCopy isEqualToString:@"Text.InsertAfterPhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D338];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_5;
      v93[3] = &unk_279CF5360;
      v94 = provider2;
      selfCopy = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v94 actionBlock:v93];
      v35 = v94;
      goto LABEL_29;
    }

    v41 = v21;
    if ([identiferCopy isEqualToString:@"Text.InsertPhraseAfterPhrase"])
    {
      [provider2 registerInsertedStringCategoryIdentifer:kSRCSCommandParameterDictation2[0]];
      [v21 addEntriesFromDictionary:&unk_287C0D360];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_7;
      v89[3] = &unk_279CF5388;
      v90 = provider2;
      selfCopy2 = self;
      v92 = stringCopy;
      v42 = stringCopy;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v90 actionBlock:v89];

      v35 = v90;
LABEL_37:
      v22 = v42;
      goto LABEL_29;
    }

    if ([identiferCopy isEqualToString:@"Text.InsertBeforePhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D388];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_9;
      v86[3] = &unk_279CF5360;
      v87 = provider2;
      selfCopy3 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v87 actionBlock:v86];
      v35 = v87;
LABEL_40:
      v22 = stringCopy;
      goto LABEL_29;
    }

    if ([identiferCopy isEqualToString:@"Text.InsertPhraseBeforePhrase"])
    {
      [provider2 registerInsertedStringCategoryIdentifer:kSRCSCommandParameterDictation2[0]];
      [v21 addEntriesFromDictionary:&unk_287C0D3B0];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_11;
      v82[3] = &unk_279CF5388;
      v83 = provider2;
      selfCopy4 = self;
      v85 = stringCopy;
      v42 = stringCopy;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v83 actionBlock:v82];

      v35 = v83;
      goto LABEL_37;
    }

    if ([identiferCopy isEqualToString:@"Text.DeletePhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D3D8];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_13;
      v80[3] = &unk_279CF52C0;
      v81 = provider2;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v81 actionBlock:v80];
      v35 = v81;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.CapitalizePhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D400];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_15;
      v77[3] = &unk_279CF5360;
      v78 = provider2;
      selfCopy5 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v78 actionBlock:v77];
      v35 = v78;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.LowercasePhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D428];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_17;
      v74[3] = &unk_279CF5360;
      v75 = provider2;
      selfCopy6 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v75 actionBlock:v74];
      v35 = v75;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.UppercasePhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D450];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_19;
      v71[3] = &unk_279CF5360;
      v72 = provider2;
      selfCopy7 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v72 actionBlock:v71];
      v35 = v72;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.FormatItalicPhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D478];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_21;
      v68[3] = &unk_279CF5360;
      v69 = provider2;
      selfCopy8 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v69 actionBlock:v68];
      v35 = v69;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.CorrectPhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D4A0];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_23;
      v65[3] = &unk_279CF5360;
      v66 = provider2;
      selfCopy9 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v66 actionBlock:v65];
      v35 = v66;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.FormatBoldPhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D4C8];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_25;
      v62[3] = &unk_279CF5360;
      v63 = provider2;
      selfCopy10 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v63 actionBlock:v62];
      v35 = v63;
      goto LABEL_40;
    }

    if ([identiferCopy isEqualToString:@"Text.FormatUnderlinePhrase"])
    {
      [v21 addEntriesFromDictionary:&unk_287C0D4F0];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_27;
      v59[3] = &unk_279CF5360;
      v60 = provider2;
      selfCopy11 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v60 actionBlock:v59];
      v35 = v60;
      v22 = stringCopy;
      goto LABEL_29;
    }

    if (([identiferCopy isEqualToString:@"Text.PutDoubleQuotesAroundPhrase"] & 1) != 0 || (objc_msgSend(identiferCopy, "isEqualToString:", @"Text.PutDoubleCurlyQuotesAroundPhrase") & 1) != 0 || (objc_msgSend(identiferCopy, "isEqualToString:", @"Text.PutSingleQuotesAroundPhrase") & 1) != 0 || (objc_msgSend(identiferCopy, "isEqualToString:", @"Text.PutSingleCurlyQuotesAroundPhrase") & 1) != 0 || (objc_msgSend(identiferCopy, "isEqualToString:", @"Text.PutParenthesesAroundPhrase") & 1) != 0 || (objc_msgSend(identiferCopy, "isEqualToString:", @"Text.PutSquareBracketsAroundPhrase") & 1) != 0 || objc_msgSend(identiferCopy, "isEqualToString:", @"Text.PutCurlyBracesAroundPhrase"))
    {
      [v21 addEntriesFromDictionary:&unk_287C0D518];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_29;
      v55[3] = &unk_279CF5388;
      v56 = provider2;
      v57 = identiferCopy;
      selfCopy12 = self;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:0 options:v21 provider:v56 actionBlock:v55];

      v35 = v56;
      v43 = stringCopy;
LABEL_67:
      v22 = v43;
      goto LABEL_29;
    }

    if ([identiferCopy isEqualToString:@"Text.SelectEmojiWithPhrase"])
    {
      if (objc_opt_respondsToSelector())
      {
        v35 = [provider2 emojisMatchingTextInStrings:v16];
      }

      else
      {
        v35 = 0;
      }

      if (![v35 count])
      {
        firstObject = 0;
        v43 = stringCopy;
        goto LABEL_67;
      }

      [v21 addEntriesFromDictionary:&unk_287C0D540];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_31;
      v53[3] = &unk_279CF52C0;
      v54 = provider2;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v35 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:1 alwaysCallActionOnClosestMatch:1 options:v21 provider:v54 actionBlock:v53];
    }

    else
    {
      if ([v16 count])
      {
        v44 = [v16 objectAtIndex:0];
        v45 = [v44 isEqualToString:@"\n\n"];

        if (v45)
        {
          [(SRCSTextEditing *)self selectNextParagraphWithCount:1];
          firstObject = @"\n\n";
          provider2 = v50;
          v21 = v41;
          v22 = stringCopy;
          goto LABEL_32;
        }
      }

      v21 = v41;
      [v41 addEntriesFromDictionary:&unk_287C0D568];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_32;
      v51[3] = &unk_279CF52C0;
      v52 = v50;
      firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:searchGranularity alwaysCallActionOnClosestMatch:1 options:v41 provider:v52 actionBlock:v51];
      v35 = v52;
    }

    v22 = stringCopy;
    goto LABEL_29;
  }

  if (stringCopy)
  {
    v106[0] = @"ActionIdentifier";
    v106[1] = @"ReplacementString";
    v107[0] = @"AXSelectTextActivityFindAndSelect";
    v107[1] = stringCopy;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
    v48 = searchGranularity;
    v37 = v36 = v21;
    [v36 addEntriesFromDictionary:v37];

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_3;
    v96[3] = &unk_279CF5310;
    v97 = stringCopy;
    v98 = provider2;
    v99 = parametersCopy;
    selfCopy13 = self;
    v21 = v36;
    firstObject = [(SRCSTextEditing *)self _actOnStrings:v16 range:rangeCopy ambiguityResolution:@"AXSelectTextAmbiguityResolutionClosestToSelection" substringSearchGranularity:v48 alwaysCallActionOnClosestMatch:0 options:v36 provider:v98 actionBlock:v96];

    v35 = v97;
    goto LABEL_29;
  }

LABEL_30:
  firstObject = [v16 firstObject];

  if (firstObject)
  {
    firstObject2 = [v16 firstObject];
    v105 = firstObject2;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
    [provider2 handleErrorIdentifier:@"ErrorMessage.TextNotFound" withObjects:v39];

    firstObject = 0;
  }

LABEL_32:

  v40 = *MEMORY[0x277D85DE8];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 length] && objc_msgSend(*(a1 + 32), "length"))
  {
    [*(a1 + 40) registerInsertedStringCategoryIdentifer:kSRCSCommandParameterDictation[0]];
    [*(a1 + 40) setSelectionToTextMarkerRange:v5];
    v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:*(a1 + 32)];
    v8 = [*(a1 + 48) objectForKey:@"SRCSClientDictationRecognizerModeIsSwiftMode"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        v11 = [*(a1 + 40) swiftCodeToInsertAtMarker:v5 recognizedParameters:*(a1 + 48)];
        if (!v11)
        {
LABEL_16:

          goto LABEL_17;
        }

        v12 = v7;
        v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v11];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v13 = [*(a1 + 48) objectForKey:@"SRCSClientDictationRecognizerModeIsSpelling"];
      v14 = [v13 BOOLValue];

      if ((v14 & 1) == 0)
      {
        v15 = [*(a1 + 40) localeForTextOperations];
        v11 = [v6 lowercaseStringWithLocale:v15];

        v16 = [*(a1 + 40) localeForTextOperations];
        v12 = [v6 uppercaseStringWithLocale:v16];

        if (([v12 isEqualToString:v11] & 1) == 0)
        {
          if ([*(a1 + 32) length] < 2)
          {
            goto LABEL_11;
          }

          v17 = *(a1 + 32);
          v18 = [*(a1 + 40) localeForTextOperations];
          v19 = [v17 uppercaseStringWithLocale:v18];
          v20 = [v19 isEqualToString:*(a1 + 32)];

          if ((v20 & 1) == 0)
          {
LABEL_11:
            v21 = [v6 substringToIndex:1];
            v22 = [v12 substringToIndex:1];
            v23 = [v21 isEqualToString:v22];

            v24 = [v7 substringToIndex:1];
            v25 = [*(a1 + 40) localeForTextOperations];
            if (v23)
            {
              [v24 uppercaseStringWithLocale:v25];
            }

            else
            {
              [v24 lowercaseStringWithLocale:v25];
            }
            v26 = ;
            [v7 replaceCharactersInRange:0 withString:{1, v26}];
          }
        }

        goto LABEL_15;
      }
    }

LABEL_17:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_4;
    block[3] = &unk_279CF52E8;
    v29 = *(a1 + 40);
    v30 = v7;
    v31 = *(a1 + 56);
    v27 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [*(a1 + 48) delayAfterSelectionBeforeExecutingAction];

  return [v1 performSelector:sel_insertString_ withObject:v2 afterDelay:?];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setSelectionToTextMarkerRange:v3];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_6;
  v7[3] = &unk_279CF5338;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 textMarkerRangeClass];
  v6 = [*(a1 + 40) endMarker];
  v4 = [*(a1 + 40) endMarker];
  v5 = [v3 markerRangeWithStartMarker:v6 endMarker:v4];
  [v2 setSelectionToTextMarkerRange:v5];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_7(id *a1, uint64_t a2)
{
  [a1[4] setSelectionToTextMarkerRange:a2];
  [a1[5] delayAfterSelectionBeforeExecutingAction];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_8;
  block[3] = &unk_279CF52E8;
  v6 = *(a1 + 2);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = a1[6];
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) moveToEndOfSelection];
  v2 = *(a1 + 40);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![*(a1 + 40) shouldInsertInterWordSpaces])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 insertString:v5];
  }

  else
  {
    v3 = *(a1 + 40);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", *(a1 + 48)];
    [v3 insertString:v6];
  }
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setSelectionToTextMarkerRange:v3];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_10;
  v7[3] = &unk_279CF5338;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 textMarkerRangeClass];
  v6 = [*(a1 + 40) startMarker];
  v4 = [*(a1 + 40) startMarker];
  v5 = [v3 markerRangeWithStartMarker:v6 endMarker:v4];
  [v2 setSelectionToTextMarkerRange:v5];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_11(id *a1, uint64_t a2)
{
  [a1[4] setSelectionToTextMarkerRange:a2];
  [a1[5] delayAfterSelectionBeforeExecutingAction];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_12;
  block[3] = &unk_279CF52E8;
  v6 = *(a1 + 2);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = a1[6];
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) moveToStartOfSelection];
  v2 = *(a1 + 40);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![*(a1 + 40) shouldInsertInterWordSpaces])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 insertString:v5];
  }

  else
  {
    v3 = *(a1 + 40);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", *(a1 + 48)];
    [v3 insertString:v6];
  }
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setSelectionToTextMarkerRange:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_14;
  v5[3] = &unk_279CF5338;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_16;
  block[3] = &unk_279CF52E8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _capitalizedStringFromString:*(a1 + 48)];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  [v2 performSelector:sel_insertString_ withObject:v3 afterDelay:?];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_18;
  block[3] = &unk_279CF52E8;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v2 localeForTextOperations];
  v4 = [v3 lowercaseStringWithLocale:v5];
  [*(a1 + 48) delayAfterSelectionBeforeExecutingAction];
  [v2 performSelector:sel_insertString_ withObject:v4 afterDelay:?];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_20;
  block[3] = &unk_279CF52E8;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v2 localeForTextOperations];
  v4 = [v3 uppercaseStringWithLocale:v5];
  [*(a1 + 48) delayAfterSelectionBeforeExecutingAction];
  [v2 performSelector:sel_insertString_ withObject:v4 afterDelay:?];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_21(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_22;
  block[3] = &unk_279CF53B0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_23(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_24;
  block[3] = &unk_279CF53B0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_25(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_26;
  block[3] = &unk_279CF53B0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_27(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  [*(a1 + 40) delayAfterSelectionBeforeExecutingAction];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_28;
  block[3] = &unk_279CF53B0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setSelectionToTextMarkerRange:a2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_30;
  v9[3] = &unk_279CF53D8;
  v10 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_insertionString_range_recognizedParameters_commandIdentifer___block_invoke_30(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"Text.PutDoubleQuotesAroundPhrase"])
  {
    v2 = @"SurroundInPunctuation.StraightDoubleQuote.Closing";
    v3 = @"SurroundInPunctuation.StraightDoubleQuote.Opening";
  }

  else if ([*(a1 + 32) isEqualToString:@"Text.PutDoubleCurlyQuotesAroundPhrase"])
  {
    v2 = @"SurroundInPunctuation.CurlyDoubleQuote.Closing";
    v3 = @"SurroundInPunctuation.CurlyDoubleQuote.Opening";
  }

  else if ([*(a1 + 32) isEqualToString:@"Text.PutSingleQuotesAroundPhrase"])
  {
    v2 = @"SurroundInPunctuation.StraightSingleQuote.Closing";
    v3 = @"SurroundInPunctuation.StraightSingleQuote.Opening";
  }

  else if ([*(a1 + 32) isEqualToString:@"Text.PutSingleCurlyQuotesAroundPhrase"])
  {
    v2 = @"SurroundInPunctuation.CurlySingleQuote.Closing";
    v3 = @"SurroundInPunctuation.CurlySingleQuote.Opening";
  }

  else if ([*(a1 + 32) isEqualToString:@"Text.PutParenthesesAroundPhrase"])
  {
    v2 = @"SurroundInPunctuation.Parenthesis.Closing";
    v3 = @"SurroundInPunctuation.Parenthesis.Opening";
  }

  else if ([*(a1 + 32) isEqualToString:@"Text.PutSquareBracketsAroundPhrase"])
  {
    v2 = @"SurroundInPunctuation.SquareBracket.Closing";
    v3 = @"SurroundInPunctuation.SquareBracket.Opening";
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"Text.PutCurlyBracesAroundPhrase"])
    {
      return;
    }

    v2 = @"SurroundInPunctuation.CurlyBrace.Closing";
    v3 = @"SurroundInPunctuation.CurlyBrace.Opening";
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = [v5 _localizedPunctuationStringForIdentifier:v3];
  v7 = [*(a1 + 48) _localizedPunctuationStringForIdentifier:v2];
  v8 = [v5 _stringBySurroundingString:v6 withPrefixString:v9 suffixString:v7];
  [*(a1 + 48) delayAfterSelectionBeforeExecutingAction];
  [v4 performSelector:sel_insertString_ withObject:v8 afterDelay:?];
}

- (id)_prunedStringsFromCandidateStrings:(id)strings
{
  v20 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = stringsCopy;
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

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [SRCSTextEditing wordsFromString:v11, v15];
        if (![array2 count] || +[SRCSTextEditing doesArrayOfWords:containArrayOfArrayWords:](SRCSTextEditing, "doesArrayOfWords:containArrayOfArrayWords:", v12, array2) == 0x7FFFFFFFFFFFFFFFLL)
        {
          [array2 addObject:v12];
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (int64_t)_indexOfFirstPhraseMatchResultPairBeforeInsertion:(BOOL)insertion fromArray:(id)array
{
  insertionCopy = insertion;
  arrayCopy = array;
  v21 = [arrayCopy count];
  if (v21 >= 2)
  {
    v6 = 1;
    v20 = insertionCopy;
    do
    {
      v7 = v6 - 1;
      v8 = [arrayCopy objectAtIndex:v6 - 1];
      v9 = [arrayCopy objectAtIndex:v6];
      userInfo = [v8 userInfo];
      v11 = [userInfo objectForKey:@"Context"];
      v12 = v11;
      if (insertionCopy)
      {
        if (![v11 isEqualToString:@"Suffix"])
        {
          goto LABEL_10;
        }

        userInfo2 = [v9 userInfo];
        v14 = [userInfo2 objectForKey:@"Context"];
        v15 = [v14 isEqualToString:@"Prefix"];

        insertionCopy = v20;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (![v11 isEqualToString:@"Prefix"])
        {
LABEL_10:

          goto LABEL_11;
        }

        userInfo3 = [v9 userInfo];
        v17 = [userInfo3 objectForKey:@"Context"];
        v18 = [v17 isEqualToString:@"Suffix"];

        insertionCopy = v20;
        if (v18)
        {
LABEL_14:

          goto LABEL_13;
        }
      }

LABEL_11:

      ++v6;
    }

    while (v21 != v6);
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:

  return v7;
}

- (void)selectFromPhraseVariants:(id)variants throughPhraseVariants:(id)phraseVariants recognizedParameters:(id)parameters commandIdentifer:(id)identifer
{
  v184 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  phraseVariantsCopy = phraseVariants;
  parametersCopy = parameters;
  identiferCopy = identifer;
  provider = [(SRCSTextEditing *)self provider];
  searchGranularity = [provider searchGranularity];
  v119 = provider;
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  nsRange = [selectionTextMarkerRange nsRange];
  v18 = v17;

  v120 = identiferCopy;
  v121 = parametersCopy;
  if ([identiferCopy isEqualToString:@"Text.SelectPrevious"])
  {
    v19 = @"AXSelectTextAmbiguityResolutionClosestBeforeSelection";
  }

  else
  {
    v20 = [identiferCopy isEqualToString:@"Text.SelectNext"];
    nsRange += v18 >> (v20 ^ 1u);
    v19 = @"AXSelectTextAmbiguityResolutionClosestToSelection";
    if (v20)
    {
      v19 = @"AXSelectTextAmbiguityResolutionClosestAfterSelection";
    }
  }

  v117 = v19;
  v21 = [(SRCSTextEditing *)self _strippedPhraseStringsFromStrings:variantsCopy];
  v22 = [(SRCSTextEditing *)self orderedPhraseMatchesFromStrings:v21 forwardDirection:0 referenceLocation:nsRange substringSearchGranularity:searchGranularity];
  v125 = v21;
  v23 = [(SRCSTextEditing *)self orderedPhraseMatchesFromStrings:v21 forwardDirection:1 referenceLocation:nsRange substringSearchGranularity:searchGranularity];
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v175 objects:v183 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v176;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v176 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v175 + 1) + 8 * i) setUserInfo:&unk_287C0D590];
      }

      v26 = [v24 countByEnumeratingWithState:&v175 objects:v183 count:16];
    }

    while (v26);
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v29 = v23;
  v30 = [v29 countByEnumeratingWithState:&v171 objects:v182 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v172;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v172 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [*(*(&v171 + 1) + 8 * j) setUserInfo:&unk_287C0D5B8];
      }

      v31 = [v29 countByEnumeratingWithState:&v171 objects:v182 count:16];
    }

    while (v31);
  }

  v122 = variantsCopy;

  v34 = [(SRCSTextEditing *)self _strippedPhraseStringsFromStrings:phraseVariantsCopy];
  v35 = [(SRCSTextEditing *)self orderedPhraseMatchesFromStrings:v34 forwardDirection:0 referenceLocation:nsRange substringSearchGranularity:searchGranularity];
  v127 = v34;
  v36 = [(SRCSTextEditing *)self orderedPhraseMatchesFromStrings:v34 forwardDirection:1 referenceLocation:nsRange substringSearchGranularity:searchGranularity];
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v37 = v35;
  v38 = [v37 countByEnumeratingWithState:&v167 objects:v181 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v168;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v168 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(&v167 + 1) + 8 * k) setUserInfo:&unk_287C0D5E0];
      }

      v39 = [v37 countByEnumeratingWithState:&v167 objects:v181 count:16];
    }

    while (v39);
  }

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v42 = v36;
  v43 = [v42 countByEnumeratingWithState:&v163 objects:v180 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v164;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v164 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v163 + 1) + 8 * m) setUserInfo:&unk_287C0D608];
      }

      v44 = [v42 countByEnumeratingWithState:&v163 objects:v180 count:16];
    }

    while (v44);
  }

  v47 = objc_opt_new();
  if ([v24 count] && objc_msgSend(v37, "count"))
  {
    [v47 addObjectsFromArray:v24];
    [v47 addObjectsFromArray:v37];
    [v47 sortUsingComparator:&__block_literal_global_0];
  }

  v48 = objc_opt_new();
  v49 = v125;
  if ([v29 count] && objc_msgSend(v42, "count"))
  {
    [v48 addObjectsFromArray:v29];
    [v48 addObjectsFromArray:v42];
    [v48 sortUsingComparator:&__block_literal_global_263];
  }

  v124 = v48;
  v50 = v127;
  v123 = v47;
  if (![(__CFString *)v117 isEqualToString:@"AXSelectTextAmbiguityResolutionClosestBeforeSelection"])
  {
    if ([(__CFString *)v117 isEqualToString:@"AXSelectTextAmbiguityResolutionClosestAfterSelection"])
    {
      v66 = [(SRCSTextEditing *)self _indexOfFirstPhraseMatchResultPairBeforeInsertion:0 fromArray:v124];
      if (v66 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v67 = v66;
        v68 = [v124 objectAtIndex:v66];
        v69 = [v124 objectAtIndex:v67 + 1];
        markerRange = [v69 markerRange];
        nsRange2 = [markerRange nsRange];
        v73 = v72;

        location = [v68 location];
        v75 = nsRange2 + v73 - [v68 location];
        v149[0] = MEMORY[0x277D85DD0];
        v149[1] = 3221225472;
        v149[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_4;
        v149[3] = &unk_279CF5420;
        v150 = v119;
        v62 = v121;
        v151 = v121;
        v152 = v68;
        v153 = v69;
        v154 = location;
        v61 = v119;
        v49 = v125;
        v155 = v75;
        firstObject2 = v69;
        firstObject = v68;
        dispatch_async(MEMORY[0x277D85CD0], v149);

        v65 = v150;
        goto LABEL_71;
      }

LABEL_70:
      firstObject = [v49 firstObject];
      v179[0] = firstObject;
      firstObject2 = [v50 firstObject];
      v179[1] = firstObject2;
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
      v61 = v119;
      [v119 handleErrorIdentifier:@"ErrorMessage.TextThroughTextNotFound" withObjects:v65];
      v62 = v121;
      goto LABEL_71;
    }

    v76 = [(SRCSTextEditing *)self _indexOfFirstPhraseMatchResultPairBeforeInsertion:1 fromArray:v47];
    v118 = v76;
    if (v76 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v77 = -1;
    }

    else
    {
      v78 = [v47 objectAtIndex:v76];
      v77 = nsRange - [v78 location];
    }

    v79 = [(SRCSTextEditing *)self _indexOfFirstPhraseMatchResultPairBeforeInsertion:0 fromArray:v124];
    if (v79 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = -1;
    }

    else
    {
      v81 = [v124 objectAtIndex:v79];
      v80 = [v81 location] - nsRange;
    }

    v50 = v127;
    v82 = v77;
    if ([v24 count] && objc_msgSend(v42, "count"))
    {
      firstObject3 = [v24 firstObject];
      userInfo = [firstObject3 userInfo];
      v83 = [userInfo objectForKey:@"Context"];
      if ([v83 isEqualToString:@"Prefix"])
      {
        firstObject4 = [v42 firstObject];
        userInfo2 = [firstObject4 userInfo];
        v84 = [userInfo2 objectForKey:@"Context"];
        v113 = [v84 isEqualToString:@"Suffix"];

        v50 = v127;
        if (v113)
        {
          firstObject5 = [v24 firstObject];
          v86 = nsRange - [firstObject5 location];

          v50 = v127;
          if ((v86 & 0x8000000000000000) == 0 && (v82 == -1 || v86 < v82 || v80 == -1 || v86 < v80))
          {
            firstObject6 = [v24 firstObject];
            firstObject7 = [v42 firstObject];
            markerRange2 = [firstObject7 markerRange];
            nsRange3 = [markerRange2 nsRange];
            v92 = v91;

            location2 = [firstObject6 location];
            v94 = nsRange3 + v92 - [firstObject6 location];
            v142[0] = MEMORY[0x277D85DD0];
            v142[1] = 3221225472;
            v142[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_5;
            v142[3] = &unk_279CF5420;
            v143 = v119;
            v62 = v121;
            v144 = v121;
            v145 = firstObject6;
            v146 = firstObject7;
            v147 = location2;
            v61 = v119;
            v148 = v94;
            firstObject2 = firstObject7;
            firstObject = firstObject6;
            dispatch_async(MEMORY[0x277D85CD0], v142);

            v65 = v143;
            goto LABEL_67;
          }
        }
      }

      else
      {
      }
    }

    if (v82 < 0 || v80 != -1 && (v80 < 0 || v82 >= v80))
    {
      v49 = v125;
      if ((v80 & 0x8000000000000000) == 0)
      {
        v103 = [v124 objectAtIndex:v79];
        v104 = [v124 objectAtIndex:v79 + 1];
        markerRange3 = [v104 markerRange];
        nsRange4 = [markerRange3 nsRange];
        v108 = v107;

        location3 = [v103 location];
        v110 = nsRange4 + v108 - [v103 location];
        v128[0] = MEMORY[0x277D85DD0];
        v128[1] = 3221225472;
        v128[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_7;
        v128[3] = &unk_279CF5420;
        v129 = v119;
        v62 = v121;
        v130 = v121;
        v131 = v103;
        v132 = v104;
        v133 = location3;
        v61 = v119;
        v49 = v125;
        v134 = v110;
        firstObject2 = v104;
        firstObject = v103;
        dispatch_async(MEMORY[0x277D85CD0], v128);

        v65 = v129;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v95 = [v123 objectAtIndex:v118];
    v96 = [v123 objectAtIndex:v118 + 1];
    markerRange4 = [v95 markerRange];
    nsRange5 = [markerRange4 nsRange];
    v100 = v99;

    location4 = [v96 location];
    v102 = nsRange5 + v100 - [v96 location];
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_6;
    v135[3] = &unk_279CF5420;
    v136 = v119;
    v62 = v121;
    v137 = v121;
    v138 = v96;
    v139 = v95;
    v140 = location4;
    v61 = v119;
    v141 = v102;
    firstObject2 = v95;
    firstObject = v96;
    dispatch_async(MEMORY[0x277D85CD0], v135);

    v65 = v136;
LABEL_67:
    v49 = v125;
    goto LABEL_71;
  }

  v51 = [(SRCSTextEditing *)self _indexOfFirstPhraseMatchResultPairBeforeInsertion:1 fromArray:v47];
  if (v51 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_70;
  }

  v52 = v51;
  v53 = [v47 objectAtIndex:v51];
  v54 = [v47 objectAtIndex:v52 + 1];
  markerRange5 = [v53 markerRange];
  nsRange6 = [markerRange5 nsRange];
  v58 = v57;

  location5 = [v54 location];
  v60 = nsRange6 + v58 - [v54 location];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_3;
  block[3] = &unk_279CF5420;
  v61 = v119;
  v157 = v119;
  v62 = v121;
  v158 = v121;
  v159 = v54;
  v160 = v53;
  v161 = location5;
  v162 = v60;
  v49 = v125;
  firstObject2 = v53;
  firstObject = v54;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v65 = v157;
LABEL_71:

  v111 = *MEMORY[0x277D85DE8];
}

BOOL __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 location];
  v6 = [v4 location];

  return v5 < v6;
}

BOOL __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 location];
  v6 = [v4 location];

  return v5 > v6;
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_3(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) matchedString];
    if ([v5 length])
    {
      v12[0] = kSRCSCommandParameterDictation[0];
      v6 = [*(a1 + 48) matchedString];
      v13[0] = v6;
      v12[1] = kSRCSCommandParameterDictation2[0];
      v7 = [*(a1 + 56) matchedString];
      v13[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:v8];
    }

    else
    {
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:0];
    }
  }

  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v9 "textMarkerRangeClass")];
  [v9 setSelectionToTextMarkerRange:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_4(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) matchedString];
    if ([v5 length])
    {
      v12[0] = kSRCSCommandParameterDictation[0];
      v6 = [*(a1 + 48) matchedString];
      v13[0] = v6;
      v12[1] = kSRCSCommandParameterDictation2[0];
      v7 = [*(a1 + 56) matchedString];
      v13[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:v8];
    }

    else
    {
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:0];
    }
  }

  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v9 "textMarkerRangeClass")];
  [v9 setSelectionToTextMarkerRange:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_5(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) matchedString];
    if ([v5 length])
    {
      v12[0] = kSRCSCommandParameterDictation[0];
      v6 = [*(a1 + 48) matchedString];
      v13[0] = v6;
      v12[1] = kSRCSCommandParameterDictation2[0];
      v7 = [*(a1 + 56) matchedString];
      v13[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:v8];
    }

    else
    {
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:0];
    }
  }

  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v9 "textMarkerRangeClass")];
  [v9 setSelectionToTextMarkerRange:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_6(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) matchedString];
    if ([v5 length])
    {
      v12[0] = kSRCSCommandParameterDictation[0];
      v6 = [*(a1 + 48) matchedString];
      v13[0] = v6;
      v12[1] = kSRCSCommandParameterDictation2[0];
      v7 = [*(a1 + 56) matchedString];
      v13[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:v8];
    }

    else
    {
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:0];
    }
  }

  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v9 "textMarkerRangeClass")];
  [v9 setSelectionToTextMarkerRange:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __115__SRCSTextEditing_Selection__selectFromPhraseVariants_throughPhraseVariants_recognizedParameters_commandIdentifer___block_invoke_7(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) matchedString];
    if ([v5 length])
    {
      v12[0] = kSRCSCommandParameterDictation[0];
      v6 = [*(a1 + 48) matchedString];
      v13[0] = v6;
      v12[1] = kSRCSCommandParameterDictation2[0];
      v7 = [*(a1 + 56) matchedString];
      v13[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:v8];
    }

    else
    {
      [v3 handleSearchResultsWithRecognizedCommandParameters:v4 variantOverrides:0];
    }
  }

  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v9 "textMarkerRangeClass")];
  [v9 setSelectionToTextMarkerRange:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)selectFromRange:(id)range insertionString:(id)string commandIdentifier:(id)identifier recognizedParamaters:(id)paramaters
{
  if (range)
  {
    [(SRCSTextEditing *)self selectFromPhraseVariants:MEMORY[0x277CBEBF8] insertionString:string range:range recognizedParameters:paramaters commandIdentifer:identifier];
  }
}

- (void)selectAll
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  v5 = [provider stringForTextMarkerRange:selectionTextMarkerRange];

  if ([v5 length])
  {
    [(SRCSTextEditing *)self moveToStartOfTextArea];
    v6 = dispatch_time(0, 250000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__SRCSTextEditing_Selection__selectAll__block_invoke_2;
    v10[3] = &unk_279CF53B0;
    v7 = &v11;
    v11 = provider;
    v8 = provider;
    dispatch_after(v6, MEMORY[0x277D85CD0], v10);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SRCSTextEditing_Selection__selectAll__block_invoke;
    block[3] = &unk_279CF53B0;
    v7 = &v13;
    v13 = provider;
    v9 = provider;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)selectPreviousTextInsertion
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];

  if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange])
  {
    v5 = selectionTextMarkerRange;
  }

  else
  {
    provider2 = [(SRCSTextEditing *)self provider];
    textMarkerRangeFromPreviousTextInsertion = [provider2 textMarkerRangeFromPreviousTextInsertion];

    if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion])
    {
      provider3 = [(SRCSTextEditing *)self provider];
      [provider3 setSelectionToTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
    }

    v5 = textMarkerRangeFromPreviousTextInsertion;
  }
}

- (void)surroundSelectionWithPunctuationForCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  [provider setCompletionDeterminedManually:1];
  if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange])
  {
    v7 = 0;
  }

  else
  {
    textMarkerRangeFromPreviousTextInsertion = [provider textMarkerRangeFromPreviousTextInsertion];

    if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion])
    {
      [provider setSelectionToTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
      [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
      v7 = (v9 * 1000000000.0);
    }

    else
    {
      v7 = 0;
    }

    selectionTextMarkerRange = textMarkerRangeFromPreviousTextInsertion;
  }

  v10 = [provider stringForTextMarkerRange:selectionTextMarkerRange];
  if ([v10 length])
  {
    if ([identifierCopy isEqualToString:@"Text.PutDoubleQuotesAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke;
      v34[3] = &unk_279CF52E8;
      v12 = v35;
      v35[0] = provider;
      v35[1] = self;
      v13 = &v36;
      v36 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = v34;
LABEL_22:
      dispatch_after(v11, v14, v15);

      goto LABEL_23;
    }

    if ([identifierCopy isEqualToString:@"Text.PutDoubleCurlyQuotesAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_2;
      v31[3] = &unk_279CF52E8;
      v12 = v32;
      v32[0] = provider;
      v32[1] = self;
      v13 = &v33;
      v33 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = v31;
      goto LABEL_22;
    }

    if ([identifierCopy isEqualToString:@"Text.PutSingleQuotesAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_3;
      v28[3] = &unk_279CF52E8;
      v12 = v29;
      v29[0] = provider;
      v29[1] = self;
      v13 = &v30;
      v30 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = v28;
      goto LABEL_22;
    }

    if ([identifierCopy isEqualToString:@"Text.PutSingleCurlyQuotesAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_4;
      v25[3] = &unk_279CF52E8;
      v12 = v26;
      v26[0] = provider;
      v26[1] = self;
      v13 = &v27;
      v27 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = v25;
      goto LABEL_22;
    }

    if ([identifierCopy isEqualToString:@"Text.PutParenthesesAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_5;
      v22[3] = &unk_279CF52E8;
      v12 = v23;
      v23[0] = provider;
      v23[1] = self;
      v13 = &v24;
      v24 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = v22;
      goto LABEL_22;
    }

    if ([identifierCopy isEqualToString:@"Text.PutSquareBracketsAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_6;
      v19[3] = &unk_279CF52E8;
      v12 = v20;
      v20[0] = provider;
      v20[1] = self;
      v13 = &v21;
      v21 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = v19;
      goto LABEL_22;
    }

    if ([identifierCopy isEqualToString:@"Text.PutCurlyBracesAroundSelection"])
    {
      v11 = dispatch_time(0, v7);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_7;
      block[3] = &unk_279CF52E8;
      v12 = v17;
      v17[0] = provider;
      v17[1] = self;
      v13 = &v18;
      v18 = v10;
      v14 = MEMORY[0x277D85CD0];
      v15 = block;
      goto LABEL_22;
    }
  }

LABEL_23:
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) targetApplicationBundleIdentifier], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "hasPrefix:", @"com.microsoft."), v3, v4))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightDoubleQuote.Opening"];
    [v5 insertString:v6];

    [*(a1 + 32) insertString:*(a1 + 48)];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightDoubleQuote.Closing"];
    [v7 insertString:v8];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v8 = [v10 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightDoubleQuote.Opening"];
    v12 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightDoubleQuote.Closing"];
    v13 = [v10 _stringBySurroundingString:v11 withPrefixString:v8 suffixString:v12];
    [v9 insertString:v13];
  }

  v14 = *(a1 + 32);

  return [v14 setExecuting:0];
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v3 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.CurlyDoubleQuote.Opening"];
  v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.CurlyDoubleQuote.Closing"];
  v7 = [v3 _stringBySurroundingString:v4 withPrefixString:v5 suffixString:v6];
  [v2 insertString:v7];

  v8 = *(a1 + 32);

  return [v8 setExecuting:0];
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) targetApplicationBundleIdentifier], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "hasPrefix:", @"com.microsoft."), v3, v4))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightSingleQuote.Opening"];
    [v5 insertString:v6];

    [*(a1 + 32) insertString:*(a1 + 48)];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightSingleQuote.Closing"];
    [v7 insertString:v8];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v8 = [v10 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightSingleQuote.Opening"];
    v12 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.StraightSingleQuote.Closing"];
    v13 = [v10 _stringBySurroundingString:v11 withPrefixString:v8 suffixString:v12];
    [v9 insertString:v13];
  }

  v14 = *(a1 + 32);

  return [v14 setExecuting:0];
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v3 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.CurlySingleQuote.Opening"];
  v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.CurlySingleQuote.Closing"];
  v7 = [v3 _stringBySurroundingString:v4 withPrefixString:v5 suffixString:v6];
  [v2 insertString:v7];

  v8 = *(a1 + 32);

  return [v8 setExecuting:0];
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v3 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.Parenthesis.Opening"];
  v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.Parenthesis.Closing"];
  v7 = [v3 _stringBySurroundingString:v4 withPrefixString:v5 suffixString:v6];
  [v2 insertString:v7];

  v8 = *(a1 + 32);

  return [v8 setExecuting:0];
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v3 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.SquareBracket.Opening"];
  v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.SquareBracket.Closing"];
  v7 = [v3 _stringBySurroundingString:v4 withPrefixString:v5 suffixString:v6];
  [v2 insertString:v7];

  v8 = *(a1 + 32);

  return [v8 setExecuting:0];
}

uint64_t __83__SRCSTextEditing_Selection__surroundSelectionWithPunctuationForCommandIdentifier___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v3 _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.CurlyBrace.Opening"];
  v6 = [*(a1 + 40) _localizedPunctuationStringForIdentifier:@"SurroundInPunctuation.CurlyBrace.Closing"];
  v7 = [v3 _stringBySurroundingString:v4 withPrefixString:v5 suffixString:v6];
  [v2 insertString:v7];

  v8 = *(a1 + 32);

  return [v8 setExecuting:0];
}

- (void)applyFormatWithCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  [provider setCompletionDeterminedManually:1];
  if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange])
  {
    v7 = 0;
  }

  else
  {
    textMarkerRangeFromPreviousTextInsertion = [provider textMarkerRangeFromPreviousTextInsertion];

    if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion])
    {
      [provider setSelectionToTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
      [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
      v7 = (v9 * 1000000000.0);
    }

    else
    {
      v7 = 0;
    }

    selectionTextMarkerRange = textMarkerRangeFromPreviousTextInsertion;
  }

  v10 = [provider stringForTextMarkerRange:selectionTextMarkerRange];
  if ([v10 length])
  {
    if ([identifierCopy isEqualToString:@"Text.CapitalizeSelection"])
    {
      v11 = dispatch_time(0, v7);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke;
      block[3] = &unk_279CF52E8;
      v12 = v32;
      v32[0] = provider;
      v32[1] = self;
      v33 = v10;
      dispatch_after(v11, MEMORY[0x277D85CD0], block);
      v13 = v33;
    }

    else if ([identifierCopy isEqualToString:@"Text.LowercaseSelection"])
    {
      v14 = dispatch_time(0, v7);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_2;
      v28[3] = &unk_279CF5338;
      v12 = &v29;
      v29 = provider;
      v30 = v10;
      dispatch_after(v14, MEMORY[0x277D85CD0], v28);
      v13 = v30;
    }

    else
    {
      if (![identifierCopy isEqualToString:@"Text.UppercaseSelection"])
      {
        if ([identifierCopy isEqualToString:@"Text.FormatBold"])
        {
          v16 = dispatch_time(0, v7);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_4;
          v23[3] = &unk_279CF53B0;
          v12 = &v24;
          v24 = provider;
          v17 = MEMORY[0x277D85CD0];
          v18 = v23;
        }

        else if ([identifierCopy isEqualToString:@"Text.FormatItalic"])
        {
          v16 = dispatch_time(0, v7);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_5;
          v21[3] = &unk_279CF53B0;
          v12 = &v22;
          v22 = provider;
          v17 = MEMORY[0x277D85CD0];
          v18 = v21;
        }

        else
        {
          if (![identifierCopy isEqualToString:@"Text.FormatUnderline"])
          {
            goto LABEL_16;
          }

          v16 = dispatch_time(0, v7);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_6;
          v19[3] = &unk_279CF53B0;
          v12 = &v20;
          v20 = provider;
          v17 = MEMORY[0x277D85CD0];
          v18 = v19;
        }

        dispatch_after(v16, v17, v18);
        goto LABEL_15;
      }

      v15 = dispatch_time(0, v7);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_3;
      v25[3] = &unk_279CF5338;
      v12 = &v26;
      v26 = provider;
      v27 = v10;
      dispatch_after(v15, MEMORY[0x277D85CD0], v25);
      v13 = v27;
    }

LABEL_15:
  }

LABEL_16:
}

uint64_t __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _capitalizedStringFromString:*(a1 + 48)];
  [v2 insertString:v3];

  v4 = *(a1 + 32);

  return [v4 setExecuting:0];
}

uint64_t __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 localeForTextOperations];
  v5 = [v3 lowercaseStringWithLocale:v4];
  [v2 insertString:v5];

  v6 = *(a1 + 32);

  return [v6 setExecuting:0];
}

uint64_t __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 localeForTextOperations];
  v5 = [v3 uppercaseStringWithLocale:v4];
  [v2 insertString:v5];

  v6 = *(a1 + 32);

  return [v6 setExecuting:0];
}

uint64_t __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) formatSelectionBold];
  v2 = *(a1 + 32);

  return [v2 setExecuting:0];
}

uint64_t __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) formatSelectionItalics];
  v2 = *(a1 + 32);

  return [v2 setExecuting:0];
}

uint64_t __63__SRCSTextEditing_Selection__applyFormatWithCommandIdentifier___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) formatSelectionUnderline];
  v2 = *(a1 + 32);

  return [v2 setExecuting:0];
}

- (void)pasteboardPaste
{
  provider = [(SRCSTextEditing *)self provider];
  [provider performTextPaste];
}

- (void)pasteboardCopy
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange])
  {
    [provider performTextCopy];
    textMarkerRangeFromPreviousTextInsertion = selectionTextMarkerRange;
  }

  else
  {
    textMarkerRangeFromPreviousTextInsertion = [provider textMarkerRangeFromPreviousTextInsertion];

    if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion])
    {
      [provider setCompletionDeterminedManually:1];
      [provider setSelectionToTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
      [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
      v7 = dispatch_time(0, (v6 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__SRCSTextEditing_Selection__pasteboardCopy__block_invoke;
      block[3] = &unk_279CF53B0;
      v9 = provider;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [provider performTextCopy];
    }
  }
}

uint64_t __44__SRCSTextEditing_Selection__pasteboardCopy__block_invoke(uint64_t a1)
{
  [*(a1 + 32) performTextCopy];
  v2 = *(a1 + 32);

  return [v2 setExecuting:0];
}

- (void)pasteboardCut
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange])
  {
    [provider performTextCut];
    textMarkerRangeFromPreviousTextInsertion = selectionTextMarkerRange;
  }

  else
  {
    textMarkerRangeFromPreviousTextInsertion = [provider textMarkerRangeFromPreviousTextInsertion];

    if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion])
    {
      [provider setCompletionDeterminedManually:1];
      [provider setSelectionToTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
      [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
      v7 = dispatch_time(0, (v6 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__SRCSTextEditing_Selection__pasteboardCut__block_invoke;
      block[3] = &unk_279CF53B0;
      v9 = provider;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }

    else
    {
      [provider performTextCut];
    }
  }
}

uint64_t __43__SRCSTextEditing_Selection__pasteboardCut__block_invoke(uint64_t a1)
{
  [*(a1 + 32) performTextCut];
  v2 = *(a1 + 32);

  return [v2 setExecuting:0];
}

- (void)correctSelection
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];
  if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange])
  {
    [provider handleCorrectionRequestWithStrings:0];
    textMarkerRangeFromPreviousTextInsertion = selectionTextMarkerRange;
  }

  else
  {
    textMarkerRangeFromPreviousTextInsertion = [provider textMarkerRangeFromPreviousTextInsertion];

    if ([(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion])
    {
      [provider setCompletionDeterminedManually:1];
      [provider setSelectionToTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
      [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
      v7 = dispatch_time(0, (v6 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__SRCSTextEditing_Selection__correctSelection__block_invoke;
      block[3] = &unk_279CF53B0;
      v9 = provider;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __46__SRCSTextEditing_Selection__correctSelection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 nBestListFromPreviousTextInsertion];
  [v2 handleCorrectionRequestWithStrings:v3];

  v4 = *(a1 + 32);

  return [v4 setExecuting:0];
}

- (id)_strippedPhraseStringsFromStrings:(id)strings
{
  v32 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  array = [MEMORY[0x277CBEB18] array];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = stringsCopy;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [&unk_287C0D630 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = v9;
        v11 = 0;
        v12 = *v23;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(&unk_287C0D630);
            }

            v14 = *(*(&v22 + 1) + 8 * j);
            if ([v8 hasPrefix:v14])
            {
              v11 = [v14 length];
            }
          }

          v10 = [&unk_287C0D630 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v10);
        if (v11)
        {
          v15 = [v8 substringFromIndex:v11];
          v16 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
          [array addObject:v16];
        }

        else
        {
LABEL_17:
          v15 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
          [array addObject:v15];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_capitalizedStringFromString:(id)string
{
  v4 = MEMORY[0x277CCAB68];
  stringCopy = string;
  v6 = [v4 stringWithString:stringCopy];
  v7 = [stringCopy length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SRCSTextEditing_Selection___capitalizedStringFromString___block_invoke;
  v12[3] = &unk_279CF5448;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [stringCopy enumerateSubstringsInRange:0 options:v7 usingBlock:{3, v12}];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __59__SRCSTextEditing_Selection___capitalizedStringFromString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 provider];
  v10 = [v9 localeForTextOperations];
  v11 = [v8 capitalizedStringWithLocale:v10];

  [*(a1 + 40) replaceCharactersInRange:a3 withString:{a4, v11}];
}

- (id)_stringBySurroundingString:(id)string withPrefixString:(id)prefixString suffixString:(id)suffixString
{
  stringCopy = string;
  prefixStringCopy = prefixString;
  suffixStringCopy = suffixString;
  v10 = stringCopy;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v10 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
  v14 = v13;

  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 == 0;
  }

  if (v15 || v14 >= [v10 length])
  {
    v16 = &stru_287C0A5E8;
    v17 = v10;
  }

  else
  {
    v16 = [v10 substringWithRange:{v12, v14}];
    v17 = [v10 substringFromIndex:v14];
  }

  suffixStringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@", v16, prefixStringCopy, v17, suffixStringCopy];

  return suffixStringCopy;
}

- (void)_insertComponentsIndividuallyBySurroundingString:(id)string withPrefixString:(id)prefixString suffixString:(id)suffixString retainedProvider:(id)provider
{
  stringCopy = string;
  providerCopy = provider;
  v25 = stringCopy;
  v12 = MEMORY[0x277CCA900];
  suffixStringCopy = suffixString;
  prefixStringCopy = prefixString;
  whitespaceAndNewlineCharacterSet = [v12 whitespaceAndNewlineCharacterSet];
  v16 = [v25 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
  v18 = v17;

  if (v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 == 0;
  }

  if (v19 || v18 >= [v25 length])
  {
    v20 = &stru_287C0A5E8;
    v21 = v25;
  }

  else
  {
    v20 = [v25 substringWithRange:{v16, v18}];
    v21 = [v25 substringFromIndex:v18];
  }

  if ([(__CFString *)v20 length])
  {
    [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
    [providerCopy performSelector:sel_insertString_ withObject:v20 afterDelay:?];
  }

  [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
  [providerCopy performSelector:sel_insertString_ withObject:prefixStringCopy afterDelay:v22 + 0.01];

  [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
  [providerCopy performSelector:sel_insertString_ withObject:v21 afterDelay:v23 + 0.02];
  [(SRCSTextEditing *)self delayAfterSelectionBeforeExecutingAction];
  [providerCopy performSelector:sel_insertString_ withObject:suffixStringCopy afterDelay:v24 + 0.03];
}

- (id)_localizedPunctuationStringForIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCA8D8];
  identifierCopy = identifier;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:identifierCopy value:&stru_287C0A5E8 table:0];

  return v6;
}

- (SRCSTextEditing)init
{
  v3.receiver = self;
  v3.super_class = SRCSTextEditing;
  result = [(SRCSTextEditing *)&v3 init];
  if (result)
  {
    result->_delayAfterSelectionBeforeExecutingAction = 0.125;
  }

  return result;
}

- (unint64_t)characterLengthOfTextMarkerRange:(id)range
{
  rangeCopy = range;
  provider = [(SRCSTextEditing *)self provider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    startMarker = [rangeCopy startMarker];
    endMarker = [rangeCopy endMarker];
    v10 = [provider2 lengthFromMarker:startMarker toMarker:endMarker];
  }

  else
  {
    [rangeCopy nsRange];
    v10 = v11;
  }

  return v10;
}

- (SRCSTextEditingProviderProtocol)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)moveToStartOfTextArea
{
  provider = [(SRCSTextEditing *)self provider];
  provider2 = [(SRCSTextEditing *)self provider];
  textMarkerRangeClass = [provider2 textMarkerRangeClass];
  provider3 = [(SRCSTextEditing *)self provider];
  firstPositionTextMarker = [provider3 firstPositionTextMarker];
  provider4 = [(SRCSTextEditing *)self provider];
  firstPositionTextMarker2 = [provider4 firstPositionTextMarker];
  v9 = [textMarkerRangeClass markerRangeWithStartMarker:firstPositionTextMarker endMarker:firstPositionTextMarker2];
  [provider setSelectionToTextMarkerRange:v9];
}

- (void)moveToEndOfTextArea
{
  provider = [(SRCSTextEditing *)self provider];
  provider2 = [(SRCSTextEditing *)self provider];
  textMarkerRangeClass = [provider2 textMarkerRangeClass];
  provider3 = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker = [provider3 lastPositionTextMarker];
  provider4 = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker2 = [provider4 lastPositionTextMarker];
  v9 = [textMarkerRangeClass markerRangeWithStartMarker:lastPositionTextMarker endMarker:lastPositionTextMarker2];
  [provider setSelectionToTextMarkerRange:v9];
}

- (void)moveToStartOfSelection
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];

  if (selectionTextMarkerRange)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [selectionTextMarkerRange startMarker];
    startMarker2 = [selectionTextMarkerRange startMarker];
    v9 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v9];
  }
}

- (void)moveToEndOfSelection
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];

  if (selectionTextMarkerRange)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    endMarker = [selectionTextMarkerRange endMarker];
    endMarker2 = [selectionTextMarkerRange endMarker];
    v9 = [textMarkerRangeClass markerRangeWithStartMarker:endMarker endMarker:endMarker2];
    [provider2 setSelectionToTextMarkerRange:v9];
  }
}

- (void)moveToStartOfWordWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:3 desiredBlock:1 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToEndOfWordWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:3 desiredBlock:1 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    endMarker = [v12 endMarker];
    endMarker2 = [v12 endMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:endMarker endMarker:endMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToStartOfSentenceWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:4 desiredBlock:1 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToEndOfSentenceWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:4 desiredBlock:1 count:count options:1];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    endMarker = [v12 endMarker];
    endMarker2 = [v12 endMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:endMarker endMarker:endMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToStartOfParagraphWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:1 desiredBlock:1 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToEndOfParagraphWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:1 desiredBlock:1 count:count options:1];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    endMarker = [v12 endMarker];
    endMarker2 = [v12 endMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:endMarker endMarker:endMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToStartOfLineWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:0 desiredBlock:1 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveToEndOfLineWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:0 desiredBlock:1 count:count options:1];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    endMarker = [v12 endMarker];
    endMarker2 = [v12 endMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:endMarker endMarker:endMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveForwardCharactersWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v6 = provider;
  if (count > 0)
  {
    v7 = count + 1;
  }

  else
  {
    v7 = 2;
  }

  v18 = [provider markerRangeForEnumerationType:2 desiredBlock:0 count:v7 options:0];

  provider2 = [(SRCSTextEditing *)self provider];
  if (v18)
  {
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v18 startMarker];
    startMarker2 = [v18 startMarker];
    endMarker = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:endMarker];
    selectionTextMarkerRange = provider2;
  }

  else
  {
    selectionTextMarkerRange = [provider2 selectionTextMarkerRange];

    [selectionTextMarkerRange nsRange];
    if (!v15)
    {
      goto LABEL_9;
    }

    provider3 = [(SRCSTextEditing *)self provider];
    startMarker = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass2 = [startMarker textMarkerRangeClass];
    startMarker2 = [selectionTextMarkerRange endMarker];
    endMarker = [selectionTextMarkerRange endMarker];
    v17 = [textMarkerRangeClass2 markerRangeWithStartMarker:startMarker2 endMarker:endMarker];
    [provider3 setSelectionToTextMarkerRange:v17];
  }

LABEL_9:
}

- (void)moveBackwardCharactersWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v16 = [provider markerRangeForEnumerationType:2 desiredBlock:2 count:count options:0];

  provider2 = [(SRCSTextEditing *)self provider];
  if (v16)
  {
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v16 startMarker];
    startMarker2 = [v16 startMarker];
    startMarker3 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:startMarker3];
    selectionTextMarkerRange = provider2;
LABEL_6:

    goto LABEL_7;
  }

  selectionTextMarkerRange = [provider2 selectionTextMarkerRange];

  if (![selectionTextMarkerRange nsRange] && v13)
  {
    provider3 = [(SRCSTextEditing *)self provider];
    startMarker = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass2 = [startMarker textMarkerRangeClass];
    startMarker2 = [selectionTextMarkerRange startMarker];
    startMarker3 = [selectionTextMarkerRange startMarker];
    v15 = [textMarkerRangeClass2 markerRangeWithStartMarker:startMarker2 endMarker:startMarker3];
    [provider3 setSelectionToTextMarkerRange:v15];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)moveForwardWordsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v19 = [provider markerRangeForEnumerationType:3 desiredBlock:0 count:1 options:0];

  startMarker = [v19 startMarker];
  provider2 = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider2 selectionTextMarkerRange];
  endMarker = [selectionTextMarkerRange endMarker];
  v10 = [startMarker isEqual:endMarker];

  provider3 = [(SRCSTextEditing *)self provider];
  v12 = [provider3 markerRangeForEnumerationType:3 desiredBlock:0 count:count + v10 options:0];

  if (v12)
  {
    provider4 = [(SRCSTextEditing *)self provider];
    provider5 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider5 textMarkerRangeClass];
    startMarker2 = [v12 startMarker];
    startMarker3 = [v12 startMarker];
    v18 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker2 endMarker:startMarker3];
    [provider4 setSelectionToTextMarkerRange:v18];
  }
}

- (void)moveBackwardWordsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:3 desiredBlock:2 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveForwardSentencesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v19 = [provider markerRangeForEnumerationType:4 desiredBlock:0 count:1 options:0];

  startMarker = [v19 startMarker];
  provider2 = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider2 selectionTextMarkerRange];
  endMarker = [selectionTextMarkerRange endMarker];
  v10 = [startMarker isEqual:endMarker];

  provider3 = [(SRCSTextEditing *)self provider];
  v12 = [provider3 markerRangeForEnumerationType:4 desiredBlock:0 count:count + v10 options:0];

  if (v12)
  {
    provider4 = [(SRCSTextEditing *)self provider];
    provider5 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider5 textMarkerRangeClass];
    startMarker2 = [v12 startMarker];
    startMarker3 = [v12 startMarker];
    v18 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker2 endMarker:startMarker3];
    [provider4 setSelectionToTextMarkerRange:v18];
  }
}

- (void)moveBackwardSentencesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:4 desiredBlock:2 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveForwardParagraphsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v19 = [provider markerRangeForEnumerationType:1 desiredBlock:0 count:1 options:0];

  startMarker = [v19 startMarker];
  provider2 = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider2 selectionTextMarkerRange];
  endMarker = [selectionTextMarkerRange endMarker];
  v10 = [startMarker isEqual:endMarker];

  provider3 = [(SRCSTextEditing *)self provider];
  v12 = [provider3 markerRangeForEnumerationType:1 desiredBlock:0 count:count + v10 options:0];

  if (v12)
  {
    provider4 = [(SRCSTextEditing *)self provider];
    provider5 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider5 textMarkerRangeClass];
    startMarker2 = [v12 startMarker];
    startMarker3 = [v12 startMarker];
    v18 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker2 endMarker:startMarker3];
    [provider4 setSelectionToTextMarkerRange:v18];
  }
}

- (void)moveBackwardParagraphsWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:1 desiredBlock:2 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveForwardLinesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:0 desiredBlock:0 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)moveBackwardLinesWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v12 = [provider markerRangeForEnumerationType:0 desiredBlock:2 count:count options:0];

  if (v12)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    provider3 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider3 textMarkerRangeClass];
    startMarker = [v12 startMarker];
    startMarker2 = [v12 startMarker];
    v11 = [textMarkerRangeClass markerRangeWithStartMarker:startMarker endMarker:startMarker2];
    [provider2 setSelectionToTextMarkerRange:v11];
  }
}

- (void)deleteCurrentCharacter
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:2 desiredBlock:1 count:0 options:8];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v5];
  }
}

- (void)deletePreviousCharacterWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:2 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteNextCharacterWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:2 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteCurrentWord
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:3 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v5];
  }
}

- (void)deletePreviousWordWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:3 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteNextWordWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:3 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteCurrentSentence
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:4 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v5];
  }
}

- (void)deleteNextSentenceWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:4 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deletePreviousSentenceWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:4 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteCurrentParagraph
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:1 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v5];
  }
}

- (void)deleteNextParagraphWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:1 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deletePreviousParagraphWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:1 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteCurrentLine
{
  provider = [(SRCSTextEditing *)self provider];
  v5 = [provider markerRangeForEnumerationType:0 desiredBlock:1 count:1 options:0];

  if (v5)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v5];
  }
}

- (void)deleteNextLineWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:0 desiredBlock:0 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deletePreviousLineWithCount:(int64_t)count
{
  provider = [(SRCSTextEditing *)self provider];
  v7 = [provider markerRangeForEnumerationType:0 desiredBlock:2 count:count options:4];

  if (v7)
  {
    provider2 = [(SRCSTextEditing *)self provider];
    [provider2 deleteTextAtTextMarkerRange:v7];
  }
}

- (void)deleteAll
{
  provider = [(SRCSTextEditing *)self provider];
  textMarkerRangeClass = [provider textMarkerRangeClass];
  provider2 = [(SRCSTextEditing *)self provider];
  firstPositionTextMarker = [provider2 firstPositionTextMarker];
  provider3 = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker = [provider3 lastPositionTextMarker];
  v10 = [textMarkerRangeClass markerRangeWithStartMarker:firstPositionTextMarker endMarker:lastPositionTextMarker];

  if (v10)
  {
    provider4 = [(SRCSTextEditing *)self provider];
    [provider4 deleteTextAtTextMarkerRange:v10];
  }
}

- (void)deleteSelection
{
  provider = [(SRCSTextEditing *)self provider];
  selectionTextMarkerRange = [provider selectionTextMarkerRange];

  v5 = [(SRCSTextEditing *)self characterLengthOfTextMarkerRange:selectionTextMarkerRange];
  provider2 = [(SRCSTextEditing *)self provider];
  v7 = provider2;
  if (v5)
  {
    [provider2 deleteText];
    textMarkerRangeFromPreviousTextInsertion = selectionTextMarkerRange;
  }

  else
  {
    textMarkerRangeFromPreviousTextInsertion = [provider2 textMarkerRangeFromPreviousTextInsertion];

    v8 = [(SRCSTextEditing *)self characterLengthOfTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
    provider3 = [(SRCSTextEditing *)self provider];
    v7 = provider3;
    if (v8)
    {
      [provider3 deleteTextAtTextMarkerRange:textMarkerRangeFromPreviousTextInsertion];
    }

    else
    {
      [provider3 deleteText];
    }
  }
}

- (_NSRange)rangeOfStrings:(id)strings referenceRange:(_NSRange)range ambiguityResolution:(id)resolution substringSearchGranularity:(int)granularity foundStringRef:(id *)ref
{
  length = range.length;
  location = range.location;
  v83 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  resolutionCopy = resolution;
  if (![stringsCopy count])
  {
    goto LABEL_79;
  }

  v13 = [resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestToSelection"];
  v14 = length > 1;
  if ((v13 & v14) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = length;
  }

  if ((v13 & v14) != 0)
  {
    v16 = length >> 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + location;
  provider = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker = [provider lastPositionTextMarker];
  index = [lastPositionTextMarker index];

  selfCopy = self;
  v76 = v15;
  if (index >> 5 > 0xC34)
  {
    v17 += v15 >> 1;
    provider2 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass = [provider2 textMarkerRangeClass];
    if (v17 >> 4 > 0xC34)
    {
      v30 = v17 - 50000;
    }

    else
    {
      v30 = 0;
    }

    v28 = [textMarkerRangeClass markerRangeWithNSRange:{v30, 100000}];
  }

  else
  {
    provider2 = [(SRCSTextEditing *)self provider];
    textMarkerRangeClass2 = [provider2 textMarkerRangeClass];
    provider3 = [(SRCSTextEditing *)self provider];
    firstPositionTextMarker = [provider3 firstPositionTextMarker];
    [(SRCSTextEditing *)self provider];
    v26 = v25 = stringsCopy;
    lastPositionTextMarker2 = [v26 lastPositionTextMarker];
    v28 = [textMarkerRangeClass2 markerRangeWithStartMarker:firstPositionTextMarker endMarker:lastPositionTextMarker2];

    stringsCopy = v25;
    self = selfCopy;

    v15 = v76;
  }

  nsRange = [v28 nsRange];
  provider4 = [(SRCSTextEditing *)self provider];
  v32 = [provider4 stringForTextMarkerRange:v28];

  if (![v32 length])
  {

LABEL_79:
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_83;
  }

  v61 = v28;
  v62 = stringsCopy;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = stringsCopy;
  v77 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (!v77)
  {
    v72 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_81;
  }

  v73 = v17 - nsRange;
  v75 = *v79;
  v64 = v17 - nsRange + v15;
  v65 = v17 + (v15 >> 1);
  v70 = 0x7FFFFFFFFFFFFFFFLL;
  v71 = 0x7FFFFFFFFFFFFFFFLL;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v66 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v72 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v79 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v78 + 1) + 8 * i);
      v38 = [v37 length];
      if (v15 || (v39 = v38, ![resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestToSelection"]))
      {
        v42 = 0x7FFFFFFFFFFFFFFFLL;
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v73 >= v39)
        {
          v40 = v73 - v39;
        }

        else
        {
          v40 = 0;
        }

        if (v40 + 2 * v39 >= [v32 length])
        {
          v41 = [v32 length] - v40;
        }

        else
        {
          v41 = 2 * v39;
        }

        if (granularity)
        {
          v51 = [v32 rangeOfString:v37 options:1 range:{v40, v41}];
        }

        else
        {
          v51 = [(SRCSTextEditing *)selfCopy _rangeOfWordBasedSearchString:v37 inString:v32 withRange:v40 forwardSearchDirection:v41, 1];
        }

        v42 = v51;
        v43 = v52;
      }

      if (v42 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_63;
      }

      v42 = v33;
      if (([resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestToSelection"] & 1) != 0 || objc_msgSend(resolutionCopy, "isEqualToString:", @"AXSelectTextAmbiguityResolutionClosestBeforeSelection"))
      {
        if (granularity)
        {
          v44 = [v32 rangeOfString:v37 options:5 range:{0, v73}];
        }

        else
        {
          v44 = [(SRCSTextEditing *)selfCopy _rangeOfWordBasedSearchString:v37 inString:v32 withRange:0 forwardSearchDirection:v73, 0];
        }

        v34 = v44;
        v70 = v45;
      }

      if (([resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestToSelection"] & 1) != 0 || objc_msgSend(resolutionCopy, "isEqualToString:", @"AXSelectTextAmbiguityResolutionClosestAfterSelection"))
      {
        v46 = [v32 length];
        [v32 length];
        if (v64 <= v46)
        {
          v47 = v64;
        }

        else
        {
          v47 = v73;
        }

        v66 = v47;
        if (granularity)
        {
          v48 = [v32 rangeOfString:v37 options:1 range:?];
        }

        else
        {
          v48 = [SRCSTextEditing _rangeOfWordBasedSearchString:selfCopy inString:"_rangeOfWordBasedSearchString:inString:withRange:forwardSearchDirection:" withRange:v37 forwardSearchDirection:v32];
        }

        v42 = v48;
        v71 = v49;
      }

      if (![resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestToSelection"])
      {
        if ([resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestBeforeSelection"])
        {
          v33 = v42;
          v43 = v70;
          v42 = v34;
          v50 = v34;
        }

        else
        {
          v43 = v71;
          v33 = v42;
          v50 = v34;
          if (![resolutionCopy isEqualToString:@"AXSelectTextAmbiguityResolutionClosestAfterSelection"])
          {
            goto LABEL_75;
          }
        }

LABEL_51:
        if (v42 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_74;
        }

        goto LABEL_64;
      }

      v50 = 0x7FFFFFFFFFFFFFFFLL;
      v43 = v71;
      v33 = v42;
      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_51;
      }

      if (v42 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v66 - (v34 + v70) >= (v42 - v66))
        {
          v43 = v71;
        }

        else
        {
          v43 = v70;
        }

        if (v66 - (v34 + v70) < (v42 - v66))
        {
          v42 = v34;
        }

LABEL_63:
        v50 = v34;
        goto LABEL_64;
      }

      v50 = v34;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
      v42 = v34;
      v43 = v70;
LABEL_64:
      if (v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = v42 - v65 + (v43 >> 1);
        if (v54 < 0)
        {
          v54 = -v54;
        }

        v55 = v35 - v65 + (v72 >> 1);
        if (v55 < 0)
        {
          v55 = -v55;
        }

        if (v54 >= v55 || [(SRCSTextEditing *)selfCopy _range:v35 includesRange:?])
        {
LABEL_74:
          v34 = v50;
          goto LABEL_75;
        }
      }

      if (ref)
      {
        v53 = v37;
        *ref = v37;
      }

      v34 = v50;
      v72 = v43;
      v35 = v42;
LABEL_75:
      v15 = v76;
    }

    v77 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  }

  while (v77);
LABEL_81:

  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    stringsCopy = v62;
    v56 = v72;
LABEL_83:
    v57 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    stringsCopy = v62;
    v57 = v35 + nsRange;
    v56 = v72;
  }

  v58 = *MEMORY[0x277D85DE8];
  v59 = v57;
  v60 = v56;
  result.length = v60;
  result.location = v59;
  return result;
}

- (id)actOnRange:(id)range options:(id)options actionBlock:(id)block
{
  blockCopy = block;
  rangeCopy = range;
  provider = [(SRCSTextEditing *)self provider];
  v10 = [provider stringForTextMarkerRange:rangeCopy];

  blockCopy[2](blockCopy, rangeCopy, v10);

  return v10;
}

- (id)visiblePhraseMatchesFromStrings:(id)strings substringSearchGranularity:(int)granularity
{
  v44[1] = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v35 = objc_opt_new();
  provider = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker = [provider lastPositionTextMarker];
  [lastPositionTextMarker index];

  selfCopy = self;
  v34 = stringsCopy;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:stringsCopy];
  v36 = selfCopy;
  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndex:v10];
      v44[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
      v42 = 0;
      v13 = [(SRCSTextEditing *)selfCopy rangeOfStrings:v12 referenceRange:0 ambiguityResolution:0 substringSearchGranularity:@"AXSelectTextAmbiguityResolutionClosestAfterSelection" foundStringRef:granularity, &v42];
      v40 = v42;

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 removeObjectAtIndex:v10];
      }

      else
      {
        v37 = v11;
        lowercaseString = [v11 lowercaseString];
        v15 = [SRCSTextEditing wordsFromString:lowercaseString];

        v38 = v10 + 1;
        if (v10 + 1 < [v9 count])
        {
          v16 = v10 + 1;
          do
          {
            v17 = [v9 objectAtIndex:v16];
            v18 = [SRCSTextEditing wordsFromString:v17];
            v43 = v18;
            v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
            v20 = [SRCSTextEditing doesArrayOfWords:v15 containArrayOfArrayWords:v19];

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              ++v16;
            }

            else
            {
              [v9 removeObjectAtIndex:v16];
            }
          }

          while (v16 < [v9 count]);
        }

        selfCopy = v36;
        v11 = v37;
        v10 = v38;
      }
    }

    while (v10 < [v9 count]);
  }

  v41 = 0;
  v21 = [(SRCSTextEditing *)selfCopy rangeOfStrings:v9 referenceRange:0 ambiguityResolution:0 substringSearchGranularity:@"AXSelectTextAmbiguityResolutionClosestAfterSelection" foundStringRef:granularity, &v41];
  v23 = v22;
  for (i = v41; v21 != 0x7FFFFFFFFFFFFFFFLL; i = v41)
  {
    provider2 = [(SRCSTextEditing *)selfCopy provider];
    v26 = [provider2 isVisibleTextRange:{v21, v23}];

    if (v26)
    {
      v27 = [SRCSPhraseMatchResult alloc];
      provider3 = [(SRCSTextEditing *)selfCopy provider];
      v29 = [objc_msgSend(provider3 "textMarkerRangeClass")];
      v30 = [(SRCSPhraseMatchResult *)v27 initWithMarkerRange:v29 matchedString:i userInfo:0];
      [v35 addObject:v30];

      selfCopy = v36;
    }

    v41 = 0;
    v21 = [(SRCSTextEditing *)selfCopy rangeOfStrings:v9 referenceRange:v21 + v23 ambiguityResolution:0 substringSearchGranularity:@"AXSelectTextAmbiguityResolutionClosestAfterSelection" foundStringRef:granularity, &v41];
    v23 = v31;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v35;
}

- (_NSRange)_rangeOfWordBasedSearchString:(id)string inString:(id)inString withRange:(_NSRange)range forwardSearchDirection:(BOOL)direction
{
  directionCopy = direction;
  length = range.length;
  location = range.location;
  stringCopy = string;
  inStringCopy = inString;
  v13 = [stringCopy length];
  v35 = directionCopy;
  if (directionCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = 5;
  }

  v33 = v14;
  v15 = [inStringCopy rangeOfString:stringCopy options:? range:?];
  v17 = v16;
  provider = [(SRCSTextEditing *)self provider];
  v34 = stringCopy;
  if (objc_opt_respondsToSelector())
  {
    provider2 = [(SRCSTextEditing *)self provider];
    v20 = [provider2 statusOfEmojisFoundInString:stringCopy];

    if (v20)
    {
      v31 = v17;
      v32 = v15;
      goto LABEL_30;
    }
  }

  else
  {
  }

  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v21 = v15 >= v13 ? v15 - v13 : 0;
    v22 = length + location;
    v41 = 0;
    v42 = &v41;
    v23 = v15 + v17;
    v43 = 0x2020000000;
    v44 = 0;
    v24 = length + location - (v15 + v17) >= v13 ? v15 + v17 + v13 : length + location;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __99__SRCSTextEditing_Search___rangeOfWordBasedSearchString_inString_withRange_forwardSearchDirection___block_invoke;
    v36[3] = &unk_279CF5508;
    v36[6] = v15;
    v36[7] = v17;
    v36[4] = &v41;
    v36[5] = &v37;
    [inStringCopy enumerateSubstringsInRange:v21 options:v24 - v21 usingBlock:{3, v36, v31, v32}];
    if (*(v42 + 24) != 1)
    {
      goto LABEL_19;
    }

    if (v38[3])
    {
      v25 = 0;
      v31 = v17;
      v32 = v15;
    }

    else
    {
LABEL_19:
      v26 = v22 - v23;
      if (v22 < v23)
      {
        v26 = 0;
      }

      v27 = v15 - location;
      if (v15 < location)
      {
        v27 = 0;
      }

      if (v35)
      {
        location = v15 + v17;
        length = v26;
      }

      else
      {
        length = v27;
      }

      if (length)
      {
        v15 = [inStringCopy rangeOfString:v34 options:v33 range:{location, length}];
        v17 = v28;
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  while ((v25 & 1) != 0);
LABEL_30:

  v30 = v31;
  v29 = v32;
  result.length = v30;
  result.location = v29;
  return result;
}

void *__99__SRCSTextEditing_Search___rangeOfWordBasedSearchString_inString_withRange_forwardSearchDirection___block_invoke(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7)
{
  v7 = *(result[4] + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    *(v7 + 24) = a3 == result[6];
    v8 = *(*(result[4] + 8) + 24);
    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = *(result[5] + 8);
  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = a3 + a4 == result[7] + result[6];
    v8 = *(*(result[4] + 8) + 24);
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_5:
  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (*(*(result[5] + 8) + 24))
  {
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

LABEL_9:
  if (!v8 && a3 > result[6])
  {
    goto LABEL_11;
  }

  v10 = (*(*(result[5] + 8) + 24) & 1) == 0 && a3 > result[7] + result[6];
LABEL_15:
  *a7 = v10;
  return result;
}

+ (id)wordsFromString:(id)string
{
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = [SRCSSpokenCommandUtilities wordUnitStringTokenizerRefForLocaleIdentifier:0];
  if (v6)
  {
    v11.length = [(__CFString *)stringCopy length];
    v11.location = 0;
    CFStringTokenizerSetString(v6, stringCopy, v11);
    while (CFStringTokenizerAdvanceToNextToken(v6))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
      if (CurrentTokenRange.location != -1)
      {
        v8 = [(__CFString *)stringCopy substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
        [array addObject:v8];
      }
    }
  }

  objc_sync_exit(v5);

  return array;
}

+ (int64_t)doesArrayOfWords:(id)words containArrayOfArrayWords:(id)arrayWords
{
  v36 = *MEMORY[0x277D85DE8];
  wordsCopy = words;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = arrayWords;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v32;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = *v32;
    do
    {
      v11 = 0;
      v25 = v8;
      v28 = v7;
      do
      {
        v12 = v10;
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v11);
        v14 = [wordsCopy count];
        v15 = [v13 count];
        v16 = v14 - v15;
        if (v14 <= v15)
        {
          v10 = v12;
        }

        else
        {
          v17 = v15;
          v10 = v8;
          if (v15 >= 1)
          {
            v27 = v12;
            v18 = 0;
            v30 = v16 + 1;
            do
            {
              v19 = 0;
              while (1)
              {
                v20 = [wordsCopy objectAtIndexedSubscript:v18 + v19];
                v21 = [v13 objectAtIndexedSubscript:v19];
                v22 = [v20 isEqualToString:v21];

                if ((v22 & 1) == 0)
                {
                  break;
                }

                if (v17 == ++v19)
                {
                  v10 = v8;
                  goto LABEL_16;
                }
              }

              ++v18;
            }

            while (v18 != v30);
            v10 = v27;
LABEL_16:
            v9 = v26;
            v7 = v28;
          }
        }

        ++v8;
        ++v11;
      }

      while (v11 != v7);
      v8 = v25 + v7;
      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)markerRangeForLineInDesiredBlock:(int)block markerRange:(id)range count:(unint64_t)count options:(int)options
{
  optionsCopy = options;
  rangeCopy = range;
  v11 = rangeCopy;
  if (block)
  {
    if (block != 2)
    {
      if (block == 1)
      {
        provider = [(SRCSTextEditing *)self provider];
        startMarker = [v11 startMarker];
        v14 = [provider markerRangeForLineAtTextMarker:startMarker];

        if (optionsCopy)
        {
          provider2 = [(SRCSTextEditing *)self provider];
          provider6 = [provider2 stringForTextMarkerRange:v14];

          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          v18 = [provider6 rangeOfCharacterFromSet:newlineCharacterSet options:12];
          v20 = v19;

          if (v18 == 0x7FFFFFFFFFFFFFFFLL || ([v14 nsRange], v21 < v20))
          {
            v22 = 0;
LABEL_35:

            goto LABEL_36;
          }

          nsRange = [v14 nsRange];
          v55 = v54 - v20;
          provider3 = [(SRCSTextEditing *)self provider];
          v51 = [objc_msgSend(provider3 "textMarkerRangeClass")];
          v22 = 0;
LABEL_34:

          v14 = v51;
          goto LABEL_35;
        }

LABEL_27:
        v22 = 0;
        goto LABEL_36;
      }

LABEL_26:
      v14 = 0;
      goto LABEL_27;
    }

    nsRange2 = [rangeCopy nsRange];
    v14 = 0;
    if (count > 0x7FFFFFFFFFFFFFFELL)
    {
      v22 = 0;
    }

    else
    {
      v24 = nsRange2;
      v22 = 0;
      if (nsRange2 >= 1)
      {
        v56 = optionsCopy;
        v22 = 0;
        v14 = 0;
        v25 = 1;
        do
        {
          v26 = v14;
          provider4 = [(SRCSTextEditing *)self provider];
          provider5 = [(SRCSTextEditing *)self provider];
          v29 = [objc_msgSend(provider5 "textMarkerClass")];
          v14 = [provider4 markerRangeForLineAtTextMarker:v29];

          nsRange3 = [v14 nsRange];
          if (!v25)
          {
            v31 = v14;

            v22 = v31;
          }

          if ((count + v25) < 2)
          {
            break;
          }

          v24 = nsRange3 - 1;
          --v25;
        }

        while (v24 > 0);
        if (count >= 2 && (v56 & 4) != 0 && v22)
        {
          provider6 = [(SRCSTextEditing *)self provider];
          textMarkerRangeClass = [provider6 textMarkerRangeClass];
          provider3 = [v14 startMarker];
          v34 = v22;
LABEL_33:
          endMarker = [v34 endMarker];
          v51 = [textMarkerRangeClass markerRangeWithStartMarker:provider3 endMarker:endMarker];

          v14 = endMarker;
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    nsRange4 = [rangeCopy nsRange];
    if (count > 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_26;
    }

    v57 = optionsCopy;
    v22 = 0;
    v37 = 0;
    v38 = nsRange4 + v36 - (v36 > 1);
    v39 = 2;
    while (1)
    {
      provider7 = [(SRCSTextEditing *)self provider];
      lastPositionTextMarker = [provider7 lastPositionTextMarker];
      index = [lastPositionTextMarker index];

      if (v38 >= index)
      {
        break;
      }

      provider8 = [(SRCSTextEditing *)self provider];
      provider9 = [(SRCSTextEditing *)self provider];
      v45 = [objc_msgSend(provider9 "textMarkerClass")];
      v14 = [provider8 markerRangeForLineAtTextMarker:v45];

      nsRange5 = [v14 nsRange];
      v48 = v47;
      if (!--v39)
      {
        v49 = v14;

        v22 = v49;
      }

      v38 = v48 + nsRange5 + 1;
      v37 = v14;
      if ((count + v39) <= 1)
      {
        goto LABEL_29;
      }
    }

    v14 = v37;
LABEL_29:
    if (count >= 2 && (v57 & 4) != 0 && v22)
    {
      provider6 = [(SRCSTextEditing *)self provider];
      textMarkerRangeClass = [provider6 textMarkerRangeClass];
      provider3 = [v22 startMarker];
      v34 = v14;
      goto LABEL_33;
    }
  }

LABEL_36:

  return v14;
}

- (_NSRange)_findRangeForEnumerationType:(int64_t)type atRelativeIncrement:(int64_t)increment fromPosition:(id)position options:(unint64_t)options
{
  positionCopy = position;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3010000000;
  v86 = &unk_26B57B8E1;
  v87 = xmmword_26B544F20;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3010000000;
  v81 = &unk_26B57B8E1;
  v82 = xmmword_26B544F20;
  index = [positionCopy index];
  provider = [(SRCSTextEditing *)self provider];
  lastPositionTextMarker = [provider lastPositionTextMarker];
  index2 = [lastPositionTextMarker index];

  v14 = index2 - 1;
  if (index <= index2)
  {
    v15 = index;
  }

  else
  {
    v15 = index2 - 1;
  }

  v58 = positionCopy;
  switch(type)
  {
    case 2:
      v16 = 10;
      break;
    case 3:
      v16 = 25;
      break;
    case 4:
      v16 = 750;
      break;
    default:
      v18 = 0;
      goto LABEL_16;
  }

  if (increment >= 0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = 2 * increment * v16;
  }

  v18 = v17 + v15;
  if (increment > 0)
  {
    v16 *= 2 * increment;
  }

  v14 = v16 + v15;
LABEL_16:
  if (v14 < index2)
  {
    v19 = v14 + 1;
  }

  else
  {
    v19 = index2;
  }

  provider2 = [(SRCSTextEditing *)self provider];
  provider3 = [(SRCSTextEditing *)self provider];
  v22 = v18 & ~(v18 >> 63);
  v23 = v19 - v22;
  v24 = [objc_msgSend(provider3 "textMarkerRangeClass")];
  v25 = [provider2 stringForTextMarkerRange:v24];

  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  if (increment >= 0)
  {
    incrementCopy = increment;
  }

  else
  {
    incrementCopy = -increment;
  }

  v77[3] = incrementCopy;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __102__SRCSTextEditing_Enumeration___findRangeForEnumerationType_atRelativeIncrement_fromPosition_options___block_invoke;
  v59[3] = &unk_279CF5530;
  incrementCopy2 = increment;
  v67 = v15 - v22;
  v61 = v75;
  v62 = v77;
  typeCopy = type;
  v27 = v25;
  v60 = v27;
  v63 = &v83;
  v64 = &v71;
  v69 = v22;
  v70 = v23;
  v65 = &v78;
  [v27 enumerateSubstringsInRange:0 options:v23 usingBlock:{type | (increment >> 63 << 8), v59}];
  v28 = v84;
  v29 = v84[4];
  if (v29 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v79[4];
    if (v30 != 0x7FFFFFFFFFFFFFFFLL && type == 2 && v79[5] + v30 == index2 && increment >= 1 && (v72[3] & 1) == 0)
    {
      v84[4] = index2;
      v28[5] = 0;
    }

    goto LABEL_63;
  }

  switch(type)
  {
    case 1:
      if ((v57 & 1) == 0)
      {
        v44 = v29 - v22 + v84[5];
        if (v44 >= 0 && v44 < v23)
        {
          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          v46 = [v27 rangeOfCharacterFromSet:newlineCharacterSet options:0 range:{v44, 1}];
          v48 = v47;

          if (v46 != 0x7FFFFFFFFFFFFFFFLL && v46 == v44)
          {
            v37 = v84;
            v38 = v84[5] + v48;
            goto LABEL_49;
          }
        }
      }

      break;
    case 3:
      v39 = v29 - v22 + v84[5];
      if (v39 >= 0 && v23 > v39)
      {
        punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
        v41 = [v27 rangeOfCharacterFromSet:punctuationCharacterSet options:0 range:{v39, v23 - v39}];
        v43 = v42;

        if (v41 != 0x7FFFFFFFFFFFFFFFLL && v41 == v39)
        {
          v37 = v84;
          v38 = v84[5] + v43;
          goto LABEL_49;
        }
      }

      break;
    case 4:
      if (v57)
      {
        v31 = v84[5];
        if (v31)
        {
          newlineCharacterSet2 = [MEMORY[0x277CCA900] newlineCharacterSet];
          v33 = v29 - v22;
          v34 = [v27 rangeOfCharacterFromSet:newlineCharacterSet2 options:4 range:{v29 - v22, v31}];
          v36 = v35;

          if (v34 != 0x7FFFFFFFFFFFFFFFLL && v34 + v36 == v31 + v33)
          {
            v37 = v84;
            v38 = v84[5] - v36;
LABEL_49:
            v37[5] = v38;
          }
        }
      }

      break;
    default:
      if (type == 2 && (v72[3] & 1) == 0 && increment >= 1 && v84[5] + v29 == index2)
      {
        v84[4] = index2;
        v28[5] = 0;
      }

      break;
  }

  if ((v57 & 4) != 0)
  {
    v49 = v79[4];
    v28 = v84;
    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = v84[4];
      if (v50 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (increment < 0)
        {
          v84[5] = v49 - v50 + v79[5];
        }

        else if (increment)
        {
          v51 = v50 - v49 + v84[5];
          v84[4] = v49;
          v28[5] = v51;
        }
      }
    }
  }

  else
  {
    v28 = v84;
  }

LABEL_63:
  v52 = v28[4];
  v53 = v28[5];

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v77, 8);

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v83, 8);

  v54 = v52;
  v55 = v53;
  result.length = v55;
  result.location = v54;
  return result;
}

void __102__SRCSTextEditing_Enumeration___findRangeForEnumerationType_atRelativeIncrement_fromPosition_options___block_invoke(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v11 = a2;
  v12 = *(*(a1 + 40) + 8);
  if (*(v12 + 24))
  {
    goto LABEL_19;
  }

  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  if (v14 < 0)
  {
    if (a4 && v13 == a3 + a4)
    {
LABEL_17:
      *(v12 + 24) = 1;
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 24);
      v17 = v19 < 1;
      v20 = v19 - 1;
      if (!v17)
      {
        *(v18 + 24) = v20;
      }

      goto LABEL_19;
    }
  }

  else if (v13 == a3)
  {
    goto LABEL_17;
  }

  if (v13 < a3 || v13 > a3 + a4 || (v15 = *(a1 + 96), v15 == 2))
  {
    v16 = v14 < 0;
    if (v13 >= a3)
    {
      v16 = 1;
    }

    v17 = v13 > a3 && v14 <= -1;
    if (v17 || !v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v14 < 0)
    {
      v26 = 1;
      if (v13 == a3 + a4 - 1 && v15 == 4 && a4 >= 2)
      {
        v28 = v11;
        v27 = [*(a1 + 32) characterAtIndex:?] == 10;
        v11 = v28;
        v26 = !v27;
        v12 = *(*(a1 + 40) + 8);
      }
    }

    else
    {
      v26 = 1;
    }

    *(v12 + 24) = v26;
  }

LABEL_19:
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_39;
  }

  v21 = *(*(*(a1 + 48) + 8) + 24);
  if (!v21)
  {
    v25 = *(*(a1 + 56) + 8);
    if (*(v25 + 32) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v25 + 32) = *(a1 + 104) + a3;
      *(v25 + 40) = a4;
      if (!*(a1 + 80) && *(a1 + 88) == a3 + a4 && *(a1 + 96) != 1)
      {
        goto LABEL_38;
      }
    }

    else if (*(a1 + 80) || *(a1 + 88) == a3 || *(a1 + 96) == 1)
    {
      *(v25 + 32) = *(a1 + 104) + a3;
      *(v25 + 40) = a4;
    }

    *a7 = 1;
LABEL_38:
    *(*(*(a1 + 64) + 8) + 24) = 1;
    goto LABEL_39;
  }

  v22 = *(a1 + 80);
  if (v22 < 0)
  {
    v22 = -v22;
  }

  if (v21 == v22 - 1 && (v23 = *(*(a1 + 72) + 8), *(v23 + 32) == 0x7FFFFFFFFFFFFFFFLL))
  {
    v24 = *(a1 + 104) + a3;
  }

  else
  {
    v24 = *(a1 + 104) + a3;
    v23 = *(*(a1 + 56) + 8);
  }

  *(v23 + 32) = v24;
  *(v23 + 40) = a4;
  --*(*(*(a1 + 48) + 8) + 24);
LABEL_39:
}

@end