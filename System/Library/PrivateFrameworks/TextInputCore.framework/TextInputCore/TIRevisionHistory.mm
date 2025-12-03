@interface TIRevisionHistory
+ (id)documentStateTrimmedToSentenceForState:(id)state;
- (BOOL)isSelectionContainedByToken:(_TIRevisionHistoryTokenIterator)token;
- (BOOL)isWordToken:(_TIRevisionHistoryTokenIterator)token;
- (BOOL)matchesContextAfterSelection:(id)selection;
- (BOOL)matchesContextBeforeSelection:(id)selection;
- (BOOL)matchesDocumentState:(id)state;
- (BOOL)matchesSelectedText:(id)text;
- (BOOL)originalIterator:(_TIRevisionHistoryTokenIterator)iterator matchesRevisedDocumentRange:(_NSRange)range andTokenID:(TITokenID)d;
- (BOOL)shouldValidateOriginalIterator:(_TIRevisionHistoryTokenIterator)iterator withRevisedDocumentRange:(_NSRange)range forRevision:(id)revision;
- (BOOL)validateTokenizationForRevisedDocumentRange:(_NSRange)range andTokenID:(TITokenID)d forRevision:(id)revision;
- (TIRevisionHistory)init;
- (TIRevisionHistory)initWithLocale:(id)locale;
- (_NSRange)deletionRangeToObtainDocumentState:(id)state;
- (_NSRange)documentRangeOfTokenAtIterator:(_TIRevisionHistoryTokenIterator)iterator;
- (_NSRange)inputRangeForReplacement:(id)replacement;
- (_NSRange)selectedRange;
- (_NSRange)selectedTokenRangeWithIterator:(_TIRevisionHistoryTokenIterator)iterator;
- (_TIRevisionHistoryTokenIterator)currentTokenIterator;
- (_TIRevisionHistoryTokenIterator)iteratorUpperBoundForSelectionStart;
- (_TIRevisionHistoryTokenIterator)nextTokenIterator:(_TIRevisionHistoryTokenIterator)iterator;
- (_TIRevisionHistoryTokenIterator)popSelectedTextFromTokenizer;
- (_TIRevisionHistoryTokenIterator)previousTokenIterator:(_TIRevisionHistoryTokenIterator)iterator;
- (_TIRevisionHistoryTokenIterator)resetTokenAtIterator:(_TIRevisionHistoryTokenIterator)iterator withRange:(_NSRange)range fromDocumentLocation:(unint64_t)location;
- (id)contextForTokenAtIndex:(unint64_t)index;
- (id)currentUserTyping;
- (id)currentWord;
- (id)documentState;
- (id)nonEmptyTokensInRange:(_NSRange)range;
- (id)tokenAtIterator:(_TIRevisionHistoryTokenIterator)iterator;
- (id)wordTokenContainingSelection;
- (unint64_t)tokenizeDocumentTextInRange:(_NSRange)range withTokenHandler:(id)handler;
- (void)acceptCurrentSentence;
- (void)acceptText:(id)text isAutocorrection:(BOOL)autocorrection isAutoshifted:(BOOL)autoshifted;
- (void)acceptTokensInRange:(_NSRange)range;
- (void)addRevisedTokenString:(id)string withTokenID:(TITokenID)d inDocumentRange:(_NSRange)range toRevision:(id)revision;
- (void)adjustTokenOffsetAfterDeletedTokenRange:(_NSRange)range withDeletedCharacterCount:(unint64_t)count;
- (void)annotateTokensCreatedFromDocumentState;
- (void)collectPFLTelemetryForTokenAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)deleteBackward;
- (void)enumerateSentenceStemUsingBlock:(id)block;
- (void)enumerateSentenceStemUsingIteratorBlock:(id)block;
- (void)handleRevisedTokenString:(id)string withTokenID:(TITokenID)d forRevision:(id)revision;
- (void)insertText:(id)text;
- (void)mergeTokenizationsForRevision:(id)revision;
- (void)migrateUserTypingFromDeletedTokens:(id)tokens toInsertedTokens:(id)insertedTokens withUsageLearningMask:(unsigned int)mask usageTrackingMask:(unsigned int)trackingMask;
- (void)pushSelectedTextToTokenizerForRevision:(id)revision;
- (void)rejectToken:(id)token contextTokens:(id)tokens negativeLearningHint:(int)hint withRevisedToken:(id)revisedToken;
- (void)replaceSelectionWithText:(id)text latinInputString:(id)string negativeLearningHint:(int)hint selectedTokenReplacementHandler:(id)handler;
- (void)resetToDocumentState:(id)state;
- (void)syncToDocumentState:(id)state;
@end

@implementation TIRevisionHistory

- (_NSRange)selectedRange
{
  length = self->_selectedRange.length;
  location = self->_selectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_TIRevisionHistoryTokenIterator)iteratorUpperBoundForSelectionStart
{
  for (i = [(TIRevisionHistory *)self currentTokenIterator]; ; i = [(TIRevisionHistory *)self nextTokenIterator:v5, v6])
  {
    v5 = i;
    v6 = v4;
    tokenization = [(TIRevisionHistory *)self tokenization];
    if (v5 >= [tokenization count])
    {
      break;
    }

    v8 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:v5, v6];
    selectedRange = [(TIRevisionHistory *)self selectedRange];

    if (v8 > selectedRange)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  v10 = v5;
  v11 = v6;
  result.documentLocation = v11;
  result.tokenIndex = v10;
  return result;
}

- (_TIRevisionHistoryTokenIterator)currentTokenIterator
{
  documentLocation = self->_currentTokenIterator.documentLocation;
  tokenIndex = self->_currentTokenIterator.tokenIndex;
  result.documentLocation = documentLocation;
  result.tokenIndex = tokenIndex;
  return result;
}

- (void)acceptCurrentSentence
{
  [(TIRevisionHistory *)self setIsDeletingBackwards:0];
  currentTokenIterator = [(TIRevisionHistory *)self currentTokenIterator];
  v5 = v4;
  tokenization = [(TIRevisionHistory *)self tokenization];
  if (currentTokenIterator >= [tokenization count])
  {
    v10 = 0;
    v8 = currentTokenIterator;
LABEL_7:

    v13 = v10;
  }

  else
  {
    v7 = 0;
    v8 = currentTokenIterator;
    while (1)
    {
      v13 = v7;
      tokenID = [v7 tokenID];

      if (HIDWORD(tokenID) == 2)
      {
        break;
      }

      v10 = [(TIRevisionHistory *)self tokenAtIterator:v8, v5];

      v8 = [(TIRevisionHistory *)self nextTokenIterator:v8, v5];
      v5 = v11;
      tokenization = [(TIRevisionHistory *)self tokenization];
      v12 = [tokenization count];
      v7 = v10;
      if (v8 >= v12)
      {
        goto LABEL_7;
      }
    }
  }

  [(TIRevisionHistory *)self acceptTokensInRange:currentTokenIterator, v8 - currentTokenIterator];
}

- (void)annotateTokensCreatedFromDocumentState
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(TIContextTokens);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(TIRevisionHistory *)self tokenization];
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v35)
  {
    v4 = *v37;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        [v6 setAccepted:1];
        if (!([v6 tokenID] >> 32))
        {
          tokenInputString = [v6 tokenInputString];
          v8 = [tokenInputString length];

          if (v8)
          {
            delegate = [(TIRevisionHistory *)self delegate];
            tokenInputString2 = [v6 tokenInputString];
            [v6 setTokenID:{objc_msgSend(delegate, "findTokenIDForWord:contextTokens:tokenLookupMode:", tokenInputString2, v3, 37)}];
          }
        }

        tokenInputString3 = [v6 tokenInputString];
        if ([tokenInputString3 length])
        {
          autocorrectionHistory = [(TIRevisionHistory *)self autocorrectionHistory];
          tokenInputString4 = [v6 tokenInputString];
          v14 = [autocorrectionHistory objectForKey:tokenInputString4];
        }

        else
        {
          v14 = 0;
        }

        candidate = [v14 candidate];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v17 = [candidate stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        tokenInputString5 = [v6 tokenInputString];
        LODWORD(whitespaceAndNewlineCharacterSet) = [v17 hasPrefix:tokenInputString5];

        if (whitespaceAndNewlineCharacterSet)
        {
          input = [v14 input];
          [v6 setUserTyping:input];

          [v6 setUsageTrackingMask:{objc_msgSend(v14, "usageTrackingMask")}];
          if ([v14 isContinuousPathConversion])
          {
            v20 = 0x80000;
          }

          else
          {
            v20 = 0;
          }

          [v6 setUsageTrackingMask:{objc_msgSend(v6, "usageTrackingMask") | v20}];
        }

        if ([v14 isAutocorrection])
        {
          [v6 setUsageLearningMask:1];
          recentAutocorrections = [(TIRevisionHistory *)self recentAutocorrections];
          tokenInputString6 = [v6 tokenInputString];
          [recentAutocorrections objectForKeyedSubscript:tokenInputString6];
          v23 = v14;
          v24 = i;
          v25 = v17;
          selfCopy = self;
          v27 = v3;
          v29 = v28 = v4;
          isAutocorrection = [v29 isAutocorrection];

          v4 = v28;
          v3 = v27;
          self = selfCopy;
          v17 = v25;
          i = v24;
          v14 = v23;

          if (isAutocorrection)
          {
            [v6 setUsageLearningMask:{objc_msgSend(v6, "usageLearningMask") | 4}];
          }
        }

        tokenID = [v6 tokenID];
        tokenInputString7 = [v6 tokenInputString];
        [(TIContextTokens *)v3 appendToken:tokenID string:tokenInputString7];
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)currentWord
{
  wordTokenContainingSelection = [(TIRevisionHistory *)self wordTokenContainingSelection];
  tokenInputString = [wordTokenContainingSelection tokenInputString];

  return tokenInputString;
}

- (id)wordTokenContainingSelection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9897;
  v9 = __Block_byref_object_dispose__9898;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__TIRevisionHistory_wordTokenContainingSelection__block_invoke;
  v4[3] = &unk_278730D98;
  v4[4] = self;
  v4[5] = &v5;
  [(TIRevisionHistory *)self enumerateSentenceStemUsingIteratorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__TIRevisionHistory_wordTokenContainingSelection__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) isSelectionContainedByToken:{a2, a3}] && objc_msgSend(*(a1 + 32), "isWordToken:", a2, a3))
  {
    v8 = [*(a1 + 32) tokenAtIterator:{a2, a3}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (*(*(*(a1 + 40) + 8) + 40) || a3 < [*(a1 + 32) selectedRange])
  {
    *a4 = 1;
  }
}

- (id)currentUserTyping
{
  wordTokenContainingSelection = [(TIRevisionHistory *)self wordTokenContainingSelection];
  userTyping = [wordTokenContainingSelection userTyping];

  return userTyping;
}

- (void)enumerateSentenceStemUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = [(TIRevisionHistory *)self selectedRange];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TIRevisionHistory_enumerateSentenceStemUsingBlock___block_invoke;
  v6[3] = &unk_278730E10;
  v7 = blockCopy;
  v8 = v9;
  v6[4] = self;
  v5 = blockCopy;
  [(TIRevisionHistory *)self enumerateSentenceStemUsingIteratorBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __53__TIRevisionHistory_enumerateSentenceStemUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = [*(a1 + 32) tokenAtIterator:{a2, a3}];
  v8 = [*(a1 + 32) documentRangeOfTokenAtIterator:{a2, a3}];
  v10 = v8;
  v11 = v9;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 24);
  if (v13 <= v8 + v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13 - v8;
  }

  *(v12 + 24) = v8;
  v15 = *(a1 + 40);
  v16 = [v17 tokenInputString];
  (*(v15 + 16))(v15, v16, v10, v11, v10, v14, [v17 tokenID], a4);
}

- (void)syncToDocumentState:(id)state
{
  stateCopy = state;
  if (![(TIRevisionHistory *)self matchesDocumentState:?])
  {
    if (!-[TIRevisionHistory isDeletingBackwards](self, "isDeletingBackwards") || (v4 = -[TIRevisionHistory deletionRangeToObtainDocumentState:](self, "deletionRangeToObtainDocumentState:", stateCopy), v4 == 0x7FFFFFFFFFFFFFFFLL) || !v5 || (-[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", v4, v5), -[TIRevisionHistory replaceSelectionWithText:latinInputString:negativeLearningHint:selectedTokenReplacementHandler:](self, "replaceSelectionWithText:latinInputString:negativeLearningHint:selectedTokenReplacementHandler:", &stru_283FDFAF8, 0, 2, 0), -[TIRevisionHistory selectedRange](self, "selectedRange") == 0) && ([stateCopy contextBeforeInput], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
    {
      [(TIRevisionHistory *)self setIsDeletingBackwards:0];
      [(TIRevisionHistory *)self acceptCurrentSentence];
      [(TIRevisionHistory *)self resetToDocumentState:stateCopy];
    }
  }
}

- (BOOL)matchesDocumentState:(id)state
{
  stateCopy = state;
  contextBeforeInput = [stateCopy contextBeforeInput];
  v6 = [(TIRevisionHistory *)self matchesContextBeforeSelection:contextBeforeInput];

  if (v6 && ([stateCopy selectedText], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[TIRevisionHistory matchesSelectedText:](self, "matchesSelectedText:", v7), v7, v8))
  {
    contextAfterInput = [stateCopy contextAfterInput];
    v10 = [(TIRevisionHistory *)self matchesContextAfterSelection:contextAfterInput];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)matchesContextAfterSelection:(id)selection
{
  selectionCopy = selection;
  v5 = selectionCopy;
  if (selectionCopy)
  {
    v6 = [selectionCopy length];
    documentText = [(TIRevisionHistory *)self documentText];
    v8 = [documentText length];
    selectedRange = [(TIRevisionHistory *)self selectedRange];
    v11 = v8 - (v10 + selectedRange);

    if (v6 != v11)
    {
      v19 = 0;
      goto LABEL_10;
    }

    documentText2 = [(TIRevisionHistory *)self documentText];
    selectedRange2 = [(TIRevisionHistory *)self selectedRange];
    v15 = [documentText2 compare:v5 options:2 range:{selectedRange2 + v14, objc_msgSend(v5, "length")}] == 0;
  }

  else
  {
    selectedRange3 = [(TIRevisionHistory *)self selectedRange];
    v18 = selectedRange3 + v17;
    documentText2 = [(TIRevisionHistory *)self documentText];
    v15 = v18 == [documentText2 length];
  }

  v19 = v15;

LABEL_10:
  return v19;
}

- (BOOL)matchesSelectedText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v6 = [textCopy length];
    [(TIRevisionHistory *)self selectedRange];
    if (v6 == v7)
    {
      documentText = [(TIRevisionHistory *)self documentText];
      selectedRange = [(TIRevisionHistory *)self selectedRange];
      v11 = [documentText compare:v5 options:2 range:{selectedRange, v10}] == 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [(TIRevisionHistory *)self selectedRange];
    v11 = v12 == 0;
  }

  return v11;
}

- (BOOL)matchesContextBeforeSelection:(id)selection
{
  selectionCopy = selection;
  v5 = selectionCopy;
  if (selectionCopy)
  {
    v6 = [selectionCopy length];
    if (v6 == [(TIRevisionHistory *)self selectedRange])
    {
      documentText = [(TIRevisionHistory *)self documentText];
      v8 = [documentText compare:v5 options:2 range:{0, -[TIRevisionHistory selectedRange](self, "selectedRange")}] == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [(TIRevisionHistory *)self selectedRange]== 0;
  }

  return v8;
}

- (void)acceptText:(id)text isAutocorrection:(BOOL)autocorrection isAutoshifted:(BOOL)autoshifted
{
  autoshiftedCopy = autoshifted;
  autocorrectionCopy = autocorrection;
  textCopy = text;
  [(TIRevisionHistory *)self setIsDeletingBackwards:0];
  v9 = [(TIRevisionHistory *)self inputRangeForReplacement:textCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TIRevisionHistory *)self setSelectedRange:v9, v10];
    if (autoshiftedCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | [textCopy isAutocorrection];
    if (autocorrectionCopy)
    {
      v13 = v12 | 4;
    }

    else
    {
      v13 = v12;
    }

    candidate = [textCopy candidate];
    if (candidate)
    {
      v15 = candidate;
    }

    else
    {
      v15 = &stru_283FDFAF8;
    }

    latinCandidate = [textCopy latinCandidate];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__TIRevisionHistory_acceptText_isAutocorrection_isAutoshifted___block_invoke;
    v17[3] = &unk_278730DE8;
    v17[4] = self;
    v19 = v13;
    v18 = textCopy;
    [(TIRevisionHistory *)self replaceSelectionWithText:v15 latinInputString:latinCandidate negativeLearningHint:0 selectedTokenReplacementHandler:v17];
  }
}

void __63__TIRevisionHistory_acceptText_isAutocorrection_isAutoshifted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  [v5 migrateUserTypingFromDeletedTokens:v8 toInsertedTokens:v7 withUsageLearningMask:v4 usageTrackingMask:{objc_msgSend(v6, "usageTrackingMask")}];
}

- (_NSRange)inputRangeForReplacement:(id)replacement
{
  replacementCopy = replacement;
  [(TIRevisionHistory *)self selectedRange];
  if (v5)
  {
    documentText = [(TIRevisionHistory *)self documentText];
    input = [replacementCopy input];
    selectedRange = [(TIRevisionHistory *)self selectedRange];
    v10 = [documentText compare:input options:2 range:{selectedRange, v9}];

    if (v10)
    {
      v11 = 0;
      selectedRange2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      selectedRange2 = [(TIRevisionHistory *)self selectedRange];
      v11 = v15;
    }
  }

  else
  {
    input2 = [replacementCopy input];
    v14 = [input2 length];

    selectedRange2 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 <= [(TIRevisionHistory *)self selectedRange])
    {
      v16 = [(TIRevisionHistory *)self selectedRange]- v14;
      documentText2 = [(TIRevisionHistory *)self documentText];
      input3 = [replacementCopy input];
      v19 = [documentText2 compare:input3 options:2 range:{v16, v14}];

      if (v19)
      {
        v11 = 0;
      }

      else
      {
        v11 = v14;
      }

      if (!v19)
      {
        selectedRange2 = v16;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v20 = selectedRange2;
  v21 = v11;
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)deleteBackward
{
  [(TIRevisionHistory *)self setIsDeletingBackwards:1];
  [(TIRevisionHistory *)self selectedRange];
  if (!v3 && [(TIRevisionHistory *)self selectedRange])
  {
    documentText = [(TIRevisionHistory *)self documentText];
    v5 = [documentText _rangeOfBackwardDeletionClusterAtIndex:{-[TIRevisionHistory selectedRange](self, "selectedRange") - 1}];
    [(TIRevisionHistory *)self setSelectedRange:v5, v6];
  }

  [(TIRevisionHistory *)self replaceSelectionWithText:&stru_283FDFAF8 latinInputString:0 negativeLearningHint:2 selectedTokenReplacementHandler:0];
}

- (void)insertText:(id)text
{
  textCopy = text;
  [(TIRevisionHistory *)self setIsDeletingBackwards:0];
  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    v4 = adaptation_autocorrection_rejection_v2_override_for_trial;
  }

  else
  {
    v4 = _os_feature_enabled_impl();
  }

  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  [(TIRevisionHistory *)self replaceSelectionWithText:textCopy latinInputString:0 negativeLearningHint:v5 selectedTokenReplacementHandler:0];
}

- (_NSRange)deletionRangeToObtainDocumentState:(id)state
{
  stateCopy = state;
  documentState = [(TIRevisionHistory *)self documentState];
  v6 = [TIRevisionHistory documentStateTrimmedToSentenceForState:documentState];

  v7 = [TIRevisionHistory documentStateTrimmedToSentenceForState:stateCopy];

  selectedText = [v6 selectedText];
  if ([selectedText length])
  {
    goto LABEL_10;
  }

  selectedText2 = [v7 selectedText];
  if ([selectedText2 length])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  contextBeforeInput = [v6 contextBeforeInput];
  v11 = [contextBeforeInput length];
  contextBeforeInput2 = [v7 contextBeforeInput];
  if (v11 <= [contextBeforeInput2 length])
  {

    goto LABEL_9;
  }

  contextAfterInput = [v6 contextAfterInput];
  v52 = contextBeforeInput;
  v54 = [contextAfterInput length];
  if (v54 || ([v7 contextAfterInput], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "length")))
  {
    v14 = MEMORY[0x277CCACA8];
    contextAfterInput2 = [v6 contextAfterInput];
    contextAfterInput3 = [v7 contextAfterInput];
    v17 = v14;
    v18 = contextAfterInput2;
    v49 = contextAfterInput3;
    if (![v17 _string:contextAfterInput2 matchesString:?])
    {
      v31 = 0;
      v32 = v47;
LABEL_36:

      goto LABEL_39;
    }

    v45 = contextAfterInput2;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  contextBeforeInput3 = [v7 contextBeforeInput];
  if ([contextBeforeInput3 length])
  {
    v44 = contextAfterInput;
    [v6 contextBeforeInput];
    v35 = v43 = v19;
    contextBeforeInput4 = [v7 contextBeforeInput];
    v31 = [v35 hasPrefix:contextBeforeInput4];

    if (v43)
    {
      contextAfterInput = v44;
LABEL_35:
      v18 = v45;
      v32 = v47;
      goto LABEL_36;
    }

    contextAfterInput = v44;
  }

  else
  {

    v31 = 1;
    if (v19)
    {
      goto LABEL_35;
    }
  }

  v32 = v47;
LABEL_39:
  if (!v54)
  {
  }

  if (v31)
  {
    contextBeforeInput5 = [v6 contextBeforeInput];
    v38 = [contextBeforeInput5 length];
    contextBeforeInput6 = [v7 contextBeforeInput];
    v27 = v38 - [contextBeforeInput6 length];

    v28 = [(TIRevisionHistory *)self selectedRange]- v27;
    goto LABEL_24;
  }

LABEL_11:
  contextBeforeInput7 = [v7 contextBeforeInput];
  if ([contextBeforeInput7 length])
  {
    contextBeforeInput8 = [v6 contextBeforeInput];
    if ([contextBeforeInput8 length] >= 0xC)
    {
LABEL_21:

      goto LABEL_22;
    }

    contextBeforeInput9 = [v6 contextBeforeInput];
    if (![contextBeforeInput9 length])
    {
LABEL_20:

      goto LABEL_21;
    }

    contextBeforeInput10 = [v7 contextBeforeInput];
    contextBeforeInput11 = [v6 contextBeforeInput];
    if ([contextBeforeInput10 isEqualToString:contextBeforeInput11])
    {
LABEL_19:

      goto LABEL_20;
    }

    selectedText3 = [v6 selectedText];
    if ([selectedText3 length])
    {
LABEL_18:

      goto LABEL_19;
    }

    selectedText4 = [v7 selectedText];
    if ([selectedText4 length])
    {

      goto LABEL_18;
    }

    contextAfterInput4 = [v6 contextAfterInput];
    v48 = [contextAfterInput4 length];
    if (v48 || ([v7 contextAfterInput], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "length")))
    {
      v50 = MEMORY[0x277CCACA8];
      contextAfterInput5 = [v6 contextAfterInput];
      [v7 contextAfterInput];
      v33 = v46 = selectedText4;
      v51 = [v50 _string:contextAfterInput5 matchesString:v33];

      selectedText4 = v46;
      if (v48)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v51 = 1;
    }

LABEL_45:
    if (v51)
    {
      selectedRange = [(TIRevisionHistory *)self selectedRange];
      contextBeforeInput12 = [v6 contextBeforeInput];
      v28 = selectedRange - [contextBeforeInput12 length];

      contextBeforeInput13 = [v6 contextBeforeInput];
      v27 = [contextBeforeInput13 length];

      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_22:

LABEL_23:
  v27 = 0;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_24:

  v29 = v28;
  v30 = v27;
  result.length = v30;
  result.location = v29;
  return result;
}

- (id)documentState
{
  documentText = [(TIRevisionHistory *)self documentText];
  v4 = [documentText substringToIndex:{-[TIRevisionHistory selectedRange](self, "selectedRange")}];

  [(TIRevisionHistory *)self selectedRange];
  if (v5)
  {
    documentText2 = [(TIRevisionHistory *)self documentText];
    selectedRange = [(TIRevisionHistory *)self selectedRange];
    v9 = [documentText2 substringWithRange:{selectedRange, v8}];
  }

  else
  {
    v9 = 0;
  }

  documentText3 = [(TIRevisionHistory *)self documentText];
  selectedRange2 = [(TIRevisionHistory *)self selectedRange];
  v13 = [documentText3 substringFromIndex:selectedRange2 + v12];

  v14 = [objc_alloc(MEMORY[0x277D6F350]) initWithContextBefore:v4 markedText:0 selectedText:v9 contextAfter:v13 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v14;
}

- (BOOL)isWordToken:(_TIRevisionHistoryTokenIterator)token
{
  tokenIndex = token.tokenIndex;
  v4 = [(TIRevisionHistory *)self tokenization:token.tokenIndex];
  v5 = [v4 objectAtIndex:tokenIndex];

  if ([v5 tokenID] >> 32)
  {
    v6 = ([v5 tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isSelectionContainedByToken:(_TIRevisionHistoryTokenIterator)token
{
  v4 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:token.tokenIndex, token.documentLocation];
  v6 = v5;
  if (v4 > [(TIRevisionHistory *)self selectedRange])
  {
    return 0;
  }

  selectedRange = [(TIRevisionHistory *)self selectedRange];
  return selectedRange + v9 <= v4 + v6;
}

- (void)enumerateSentenceStemUsingIteratorBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  iteratorUpperBoundForSelectionStart = [(TIRevisionHistory *)self iteratorUpperBoundForSelectionStart];
  if (iteratorUpperBoundForSelectionStart)
  {
    v7 = iteratorUpperBoundForSelectionStart;
    v8 = v6;
    v9 = 0;
    do
    {
      v7 = [(TIRevisionHistory *)self previousTokenIterator:v7, v8];
      v8 = v10;
      v11 = [(TIRevisionHistory *)self tokenAtIterator:v7, v10];
      blockCopy[2](blockCopy, v7, v8, &v12);
      if ([v11 tokenID] >> 32 == 1)
      {
        v12 |= ++v9 > 2;
      }
    }

    while ((v12 & 1) == 0 && v7);
  }
}

- (void)resetToDocumentState:(id)state
{
  stateCopy = state;
  [(TIRevisionHistory *)self setDocumentText:&stru_283FDFAF8];
  [(TIRevisionHistory *)self setSelectedRange:0, 0];
  tokenization = [(TIRevisionHistory *)self tokenization];
  [tokenization removeAllObjects];

  [(TIRevisionHistory *)self tokenizer];
  LMStreamTokenizerReset();
  [(TIRevisionHistory *)self setCurrentTokenIterator:0, 0];
  [(TIRevisionHistory *)self setLastRejectedToken:0];
  v5 = [[TITokenizationRevision alloc] initWithTokenIterator:0, 0];
  contextBeforeInput = [stateCopy contextBeforeInput];

  if (contextBeforeInput)
  {
    documentText = [(TIRevisionHistory *)self documentText];
    contextBeforeInput2 = [stateCopy contextBeforeInput];
    v9 = [documentText stringByAppendingString:contextBeforeInput2];
    [(TIRevisionHistory *)self setDocumentText:v9];

    contextBeforeInput3 = [stateCopy contextBeforeInput];
    -[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", 0, [contextBeforeInput3 length]);

    [(TIRevisionHistory *)self pushSelectedTextToTokenizerForRevision:v5];
  }

  selectedText = [stateCopy selectedText];

  if (selectedText)
  {
    documentText2 = [(TIRevisionHistory *)self documentText];
    selectedText2 = [stateCopy selectedText];
    v14 = [documentText2 stringByAppendingString:selectedText2];
    [(TIRevisionHistory *)self setDocumentText:v14];

    selectedRange = [(TIRevisionHistory *)self selectedRange];
    v17 = v16;
    selectedText3 = [stateCopy selectedText];
    -[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", selectedRange + v17, [selectedText3 length]);

    [(TIRevisionHistory *)self pushSelectedTextToTokenizerForRevision:v5];
  }

  else
  {
    selectedRange2 = [(TIRevisionHistory *)self selectedRange];
    [(TIRevisionHistory *)self setSelectedRange:selectedRange2 + v20, 0];
  }

  contextAfterInput = [stateCopy contextAfterInput];

  if (contextAfterInput)
  {
    documentText3 = [(TIRevisionHistory *)self documentText];
    contextAfterInput2 = [stateCopy contextAfterInput];
    v24 = [documentText3 stringByAppendingString:contextAfterInput2];
    [(TIRevisionHistory *)self setDocumentText:v24];
  }

  [(TIRevisionHistory *)self mergeTokenizationsForRevision:v5];
  tokenization2 = [(TIRevisionHistory *)self tokenization];
  branchTokens = [(TITokenizationRevision *)v5 branchTokens];
  [tokenization2 setArray:branchTokens];

  [(TIRevisionHistory *)self annotateTokensCreatedFromDocumentState];
}

- (void)replaceSelectionWithText:(id)text latinInputString:(id)string negativeLearningHint:(int)hint selectedTokenReplacementHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  textCopy = text;
  stringCopy = string;
  handlerCopy = handler;
  popSelectedTextFromTokenizer = [(TIRevisionHistory *)self popSelectedTextFromTokenizer];
  v14 = v13;
  v15 = [[TITokenizationRevision alloc] initWithTokenIterator:popSelectedTextFromTokenizer, v13];
  v44 = v14;
  v16 = [(TIRevisionHistory *)self selectedTokenRangeWithIterator:popSelectedTextFromTokenizer, v14];
  [(TITokenizationRevision *)v15 setOriginalSelectedTokenRange:v16, v17];
  [(TIRevisionHistory *)self selectedRange];
  v19 = v18;
  documentText = [(TIRevisionHistory *)self documentText];
  selectedRange = [(TIRevisionHistory *)self selectedRange];
  v23 = [documentText stringByReplacingCharactersInRange:selectedRange withString:{v22, textCopy}];
  [(TIRevisionHistory *)self setDocumentText:v23];

  v48 = textCopy;
  -[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", -[TIRevisionHistory selectedRange](self, "selectedRange"), [textCopy length]);
  originalSelectedTokenRange = [(TITokenizationRevision *)v15 originalSelectedTokenRange];
  [(TIRevisionHistory *)self adjustTokenOffsetAfterDeletedTokenRange:originalSelectedTokenRange withDeletedCharacterCount:v25, v19];
  [(TIRevisionHistory *)self pushSelectedTextToTokenizerForRevision:v15];
  [(TIRevisionHistory *)self mergeTokenizationsForRevision:v15];
  branchedTokenIndex = [(TITokenizationRevision *)v15 branchedTokenIndex];
  mergedTokenIndex = [(TITokenizationRevision *)v15 mergedTokenIndex];
  v28 = mergedTokenIndex - [(TITokenizationRevision *)v15 branchedTokenIndex];
  [(TIRevisionHistory *)self rejectTokensInRange:branchedTokenIndex negativeLearningHint:v28 newRevision:hint, v15];
  v47 = handlerCopy;
  if (handlerCopy)
  {
    originalSelectedTokenRange2 = [(TITokenizationRevision *)v15 originalSelectedTokenRange];
    v45 = [(TIRevisionHistory *)self nonEmptyTokensInRange:originalSelectedTokenRange2, v30];
  }

  else
  {
    v45 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  branchTokens = [(TITokenizationRevision *)v15 branchTokens];
  v32 = [branchTokens countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(branchTokens);
        }

        [*(*(&v49 + 1) + 8 * i) setTokenLatinInputString:stringCopy];
      }

      v33 = [branchTokens countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v33);
  }

  tokenization = [(TIRevisionHistory *)self tokenization];
  branchTokens2 = [(TITokenizationRevision *)v15 branchTokens];
  [tokenization replaceObjectsInRange:branchedTokenIndex withObjectsFromArray:{v28, branchTokens2}];

  if (v47)
  {
    v38 = [(TIRevisionHistory *)self selectedTokenRangeWithIterator:popSelectedTextFromTokenizer, v44];
    v40 = [(TIRevisionHistory *)self nonEmptyTokensInRange:v38, v39];
    (v47)[2](v47, v45, v40);
  }

  [(TIRevisionHistory *)self acceptTokensInRange:popSelectedTextFromTokenizer, [(TIRevisionHistory *)self currentTokenIterator]- popSelectedTextFromTokenizer];
  selectedRange2 = [(TIRevisionHistory *)self selectedRange];
  [(TIRevisionHistory *)self setSelectedRange:selectedRange2 + v42, 0];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)mergeTokenizationsForRevision:(id)revision
{
  revisionCopy = revision;
  documentText = [(TIRevisionHistory *)self documentText];
  v6 = [documentText copy];

  v7 = [v6 stringByAppendingString:@"\n"];
  [(TIRevisionHistory *)self setDocumentText:v7];

  selectedRange = [(TIRevisionHistory *)self selectedRange];
  v10 = v9;
  documentText2 = [(TIRevisionHistory *)self documentText];
  v12 = [documentText2 length];
  selectedRange2 = [(TIRevisionHistory *)self selectedRange];
  v15 = v12 - (v14 + selectedRange2);

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51__TIRevisionHistory_mergeTokenizationsForRevision___block_invoke;
  v21 = &unk_278730D50;
  selfCopy = self;
  v16 = revisionCopy;
  v23 = v16;
  [(TIRevisionHistory *)self tokenizeDocumentTextInRange:selectedRange + v10 withTokenHandler:v15, &v18];
  if ([v16 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 setBranchedTokenIndex:{objc_msgSend(v16, "originalIterator")}];
  }

  if ([v16 mergedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    tokenization = [(TIRevisionHistory *)self tokenization];
    [v16 setMergedTokenIndex:{objc_msgSend(tokenization, "count")}];
  }

  [(TIRevisionHistory *)self setDocumentText:v6];
  [(TIRevisionHistory *)self tokenizer];
  LMStreamTokenizerPopBytes();
}

- (void)pushSelectedTextToTokenizerForRevision:(id)revision
{
  revisionCopy = revision;
  selectedRange = [(TIRevisionHistory *)self selectedRange];
  v7 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__TIRevisionHistory_pushSelectedTextToTokenizerForRevision___block_invoke;
  v16 = &unk_278730D50;
  selfCopy = self;
  v8 = revisionCopy;
  v18 = v8;
  [(TIRevisionHistory *)self tokenizeDocumentTextInRange:selectedRange withTokenHandler:v7, &v13];
  if ([v8 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    originalIterator = [v8 originalIterator];
  }

  else
  {
    originalIterator = [v8 branchedTokenIndex];
  }

  v10 = originalIterator;
  branchTokens = [v8 branchTokens];
  v12 = [branchTokens count];

  -[TIRevisionHistory setCurrentTokenIterator:](self, "setCurrentTokenIterator:", v12 + v10, [v8 revisedDocumentLocation]);
}

- (void)handleRevisedTokenString:(id)string withTokenID:(TITokenID)d forRevision:(id)revision
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  revisionCopy = revision;
  documentText = [(TIRevisionHistory *)self documentText];
  v11 = [documentText _rangeOfString:stringCopy fromLocation:{objc_msgSend(revisionCopy, "revisedDocumentLocation")}];
  v13 = v12;

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v14 = TIOSLogFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = MEMORY[0x277CCACA8];
      revisedDocumentLocation = [revisionCopy revisedDocumentLocation];
      documentText2 = [(TIRevisionHistory *)self documentText];
      selectedRange = [(TIRevisionHistory *)self selectedRange];
      [(TIRevisionHistory *)self selectedRange];
      v20 = [v21 stringWithFormat:@"%s ERROR: Unexpected token %@ for location %lu in %@, with selected range (%lu, %lu)", "-[TIRevisionHistory handleRevisedTokenString:withTokenID:forRevision:]", stringCopy, revisedDocumentLocation, documentText2, selectedRange, v19];
      *buf = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (![(TIRevisionHistory *)self validateTokenizationForRevisedDocumentRange:v11 andTokenID:v13 forRevision:d, revisionCopy])
  {
    [(TIRevisionHistory *)self addRevisedTokenString:stringCopy withTokenID:d inDocumentRange:v11 toRevision:v13, revisionCopy];
  }

  [revisionCopy setRevisedDocumentLocation:v11 + v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addRevisedTokenString:(id)string withTokenID:(TITokenID)d inDocumentRange:(_NSRange)range toRevision:(id)revision
{
  location = range.location;
  revisionCopy = revision;
  stringCopy = string;
  v12 = objc_alloc_init(TIRevisionHistoryToken);
  [(TIRevisionHistoryToken *)v12 setTokenInputString:stringCopy];
  [(TIRevisionHistoryToken *)v12 setTokenID:d];
  -[TIRevisionHistoryToken setOffset:](v12, "setOffset:", location - [revisionCopy revisedDocumentLocation]);
  [(TIRevisionHistoryToken *)v12 setUserTyping:stringCopy];

  branchTokens = [revisionCopy branchTokens];

  [branchTokens addObject:v12];
}

- (BOOL)validateTokenizationForRevisedDocumentRange:(_NSRange)range andTokenID:(TITokenID)d forRevision:(id)revision
{
  length = range.length;
  location = range.location;
  revisionCopy = revision;
  originalIterator = [revisionCopy originalIterator];
  v12 = v11;
  if (![(TIRevisionHistory *)self shouldValidateOriginalIterator:originalIterator withRevisedDocumentRange:v11 forRevision:location, length, revisionCopy])
  {
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    originalSelectedTokenRange = [revisionCopy originalSelectedTokenRange];
    v15 = originalIterator < originalSelectedTokenRange || originalIterator - originalSelectedTokenRange >= v14;
    v16 = !v15;
    if (v15 && [(TIRevisionHistory *)self originalIterator:originalIterator matchesRevisedDocumentRange:v12 andTokenID:location, length, d])
    {
      break;
    }

    [revisionCopy setMergedTokenIndex:0x7FFFFFFFFFFFFFFFLL];
    if ([revisionCopy branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [revisionCopy setBranchedTokenIndex:originalIterator];
    }

    if (v16)
    {
      ++originalIterator;
LABEL_16:
      [revisionCopy setOriginalIterator:{originalIterator, v12}];
      goto LABEL_17;
    }

    v17 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:originalIterator, v12];
    originalIterator = [(TIRevisionHistory *)self nextTokenIterator:originalIterator, v12];
    v12 = v18;
    if (v17 < location + length)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (![(TIRevisionHistory *)self shouldValidateOriginalIterator:originalIterator withRevisedDocumentRange:v12 forRevision:location, length, revisionCopy])
    {
      goto LABEL_18;
    }
  }

  v21 = -[TIRevisionHistory resetTokenAtIterator:withRange:fromDocumentLocation:](self, "resetTokenAtIterator:withRange:fromDocumentLocation:", originalIterator, v12, location, length, [revisionCopy revisedDocumentLocation]);
  v23 = v22;
  if ([revisionCopy mergedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    originalSelectedTokenRange2 = [revisionCopy originalSelectedTokenRange];
    if (v21 >= originalSelectedTokenRange2 + v25)
    {
      if (length)
      {
        [revisionCopy setMergedTokenIndex:v21];
        if ([revisionCopy branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [revisionCopy setBranchedTokenIndex:{objc_msgSend(revisionCopy, "mergedTokenIndex")}];
        }
      }
    }
  }

  v26 = [(TIRevisionHistory *)self nextTokenIterator:v21, v23];
  [revisionCopy setOriginalIterator:{v26, v27}];
  v19 = 1;
LABEL_19:

  return v19;
}

- (_TIRevisionHistoryTokenIterator)resetTokenAtIterator:(_TIRevisionHistoryTokenIterator)iterator withRange:(_NSRange)range fromDocumentLocation:(unint64_t)location
{
  location = range.location;
  tokenIndex = iterator.tokenIndex;
  v8 = [(TIRevisionHistory *)self tokenAtIterator:iterator.tokenIndex, iterator.documentLocation, range.location, range.length];
  [v8 setOffset:location - location];

  v9 = tokenIndex;
  locationCopy = location;
  result.documentLocation = locationCopy;
  result.tokenIndex = v9;
  return result;
}

- (BOOL)shouldValidateOriginalIterator:(_TIRevisionHistoryTokenIterator)iterator withRevisedDocumentRange:(_NSRange)range forRevision:(id)revision
{
  location = range.location;
  documentLocation = iterator.documentLocation;
  tokenIndex = iterator.tokenIndex;
  revisionCopy = revision;
  originalSelectedTokenRange = [revisionCopy originalSelectedTokenRange];
  if (tokenIndex >= originalSelectedTokenRange && tokenIndex - originalSelectedTokenRange < v11)
  {
    v13 = 1;
    goto LABEL_12;
  }

  if ([revisionCopy branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (documentLocation > location)
    {
      v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    tokenization = [(TIRevisionHistory *)self tokenization];
    v13 = tokenIndex < [tokenization count];

    goto LABEL_12;
  }

  selectedRange = [(TIRevisionHistory *)self selectedRange];
  v13 = 0;
  if (location >= selectedRange + v15 && documentLocation <= location)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v13;
}

- (BOOL)originalIterator:(_TIRevisionHistoryTokenIterator)iterator matchesRevisedDocumentRange:(_NSRange)range andTokenID:(TITokenID)d
{
  length = range.length;
  location = range.location;
  documentLocation = iterator.documentLocation;
  tokenIndex = iterator.tokenIndex;
  tokenization = [(TIRevisionHistory *)self tokenization];
  v12 = [tokenization count];

  if (tokenIndex >= v12)
  {
    return 0;
  }

  tokenization2 = [(TIRevisionHistory *)self tokenization];
  v14 = [tokenization2 objectAtIndex:tokenIndex];

  if ((!HIDWORD(*&d) || [v14 tokenID] == d) && objc_msgSend(v14, "offset") + documentLocation == location)
  {
    tokenInputString = [v14 tokenInputString];
    v16 = [tokenInputString length] == length;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)adjustTokenOffsetAfterDeletedTokenRange:(_NSRange)range withDeletedCharacterCount:(unint64_t)count
{
  length = range.length;
  location = range.location;
  v8 = range.location + range.length;
  tokenization = [(TIRevisionHistory *)self tokenization];
  v10 = [tokenization count];

  if (v8 < v10)
  {
    for (i = 0; length; --length)
    {
      tokenization2 = [(TIRevisionHistory *)self tokenization];
      v13 = [tokenization2 objectAtIndex:location];

      offset = [v13 offset];
      tokenInputString = [v13 tokenInputString];
      i += offset + [tokenInputString length];

      ++location;
    }

    tokenization3 = [(TIRevisionHistory *)self tokenization];
    v19 = [tokenization3 objectAtIndex:v8];

    offset2 = [v19 offset];
    [(TIRevisionHistory *)self selectedRange];
    [v19 setOffset:i - count + offset2 + v18];
  }
}

- (unint64_t)tokenizeDocumentTextInRange:(_NSRange)range withTokenHandler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  documentText = [(TIRevisionHistory *)self documentText];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__TIRevisionHistory_tokenizeDocumentTextInRange_withTokenHandler___block_invoke;
  v12[3] = &unk_278730D28;
  v12[4] = self;
  v13 = handlerCopy;
  v14 = &v15;
  v9 = handlerCopy;
  [documentText enumerateSubstringsInRange:location options:length usingBlock:{514, v12}];

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __66__TIRevisionHistory_tokenizeDocumentTextInRange_withTokenHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v11 = 4 * a4;
  v12 = v15 - ((4 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = 0;
  v13 = [*(a1 + 32) documentText];
  [v13 getBytes:v12 maxLength:v11 usedLength:v22 encoding:4 options:0 range:a3 remainingRange:{a4, 0}];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  [*(a1 + 32) tokenizer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__TIRevisionHistory_tokenizeDocumentTextInRange_withTokenHandler___block_invoke_2;
  v15[3] = &unk_278730D00;
  v17 = &v18;
  v16 = *(a1 + 40);
  LMStreamTokenizerPushBytes();
  *(*(*(a1 + 48) + 8) + 24) += v22[0];
  if ((v19[3] & 1) == 0)
  {
    *a7 = 1;
  }

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __66__TIRevisionHistory_tokenizeDocumentTextInRange_withTokenHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
  if ([v6 hasDoubleZWJ])
  {
    v4 = [v6 stringRemovingDoubleZWJ];

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
}

- (_TIRevisionHistoryTokenIterator)popSelectedTextFromTokenizer
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  currentTokenIterator = 0;
  v18 = 0;
  v16 = "";
  currentTokenIterator = [(TIRevisionHistory *)self currentTokenIterator];
  v18 = v3;
  if ([(TIRevisionHistory *)self selectedRange])
  {
    documentText = [(TIRevisionHistory *)self documentText];
    selectedRange = [(TIRevisionHistory *)self selectedRange];
    v7 = [documentText _UTF8SizeOfRange:{selectedRange, v6}];

    if (v7)
    {
      [(TIRevisionHistory *)self tokenizer];
      LMStreamTokenizerPopBytes();
    }
  }

  else
  {
    [(TIRevisionHistory *)self tokenizer];
    LMStreamTokenizerReset();
    v8 = v14;
    v14[4] = 0;
    v8[5] = 0;
  }

  v9 = v14[4];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  v11 = v9;
  v12 = v10;
  result.documentLocation = v12;
  result.tokenIndex = v11;
  return result;
}

uint64_t __49__TIRevisionHistory_popSelectedTextFromTokenizer__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v10 = v3;
    v11 = v2;
    v12 = v4;
    v13 = v5;
    v6 = a2;
    v7 = result;
    do
    {
      result = [*(v7 + 32) previousTokenIterator:{*(*(*(v7 + 40) + 8) + 32), *(*(*(v7 + 40) + 8) + 40), v10, v11, v12, v13}];
      v8 = *(*(v7 + 40) + 8);
      *(v8 + 32) = result;
      *(v8 + 40) = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

- (id)nonEmptyTokensInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:range.length]; length; --length)
  {
    tokenization = [(TIRevisionHistory *)self tokenization];
    v8 = [tokenization objectAtIndex:location];

    tokenInputString = [v8 tokenInputString];
    v10 = [tokenInputString length];

    if (v10)
    {
      [i addObject:v8];
    }

    ++location;
  }

  return i;
}

- (_NSRange)selectedTokenRangeWithIterator:(_TIRevisionHistoryTokenIterator)iterator
{
  documentLocation = iterator.documentLocation;
  tokenIndex = iterator.tokenIndex;
  tokenization = [(TIRevisionHistory *)self tokenization];
  if (tokenIndex >= [tokenization count])
  {
    v7 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:

    v8 = v15;
  }

  else
  {
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      selectedRange = [(TIRevisionHistory *)self selectedRange];
      v11 = selectedRange + v10;

      if (documentLocation >= v11)
      {
        break;
      }

      documentLocation = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:tokenIndex, documentLocation];
      v14 = documentLocation;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL || (v15 = 0x7FFFFFFFFFFFFFFFLL, documentLocation + v13 > [(TIRevisionHistory *)self selectedRange]) && (v8 = tokenIndex, tokenIndex != 0x7FFFFFFFFFFFFFFFLL))
      {
        selectedRange2 = [(TIRevisionHistory *)self selectedRange];
        if (v14 < selectedRange2 + v17)
        {
          ++v7;
        }

        v15 = v8;
      }

      tokenIndex = [(TIRevisionHistory *)self nextTokenIterator:tokenIndex, documentLocation];
      documentLocation = v18;
      tokenization = [(TIRevisionHistory *)self tokenization];
      v8 = v15;
      if (tokenIndex >= [tokenization count])
      {
        goto LABEL_13;
      }
    }
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = tokenIndex;
  }

  else
  {
    v19 = v8;
  }

  v20 = v7;
  result.length = v20;
  result.location = v19;
  return result;
}

- (_TIRevisionHistoryTokenIterator)previousTokenIterator:(_TIRevisionHistoryTokenIterator)iterator
{
  documentLocation = iterator.documentLocation;
  tokenIndex = iterator.tokenIndex;
  tokenization = [(TIRevisionHistory *)self tokenization];
  v6 = [tokenization objectAtIndex:--tokenIndex];

  offset = [v6 offset];
  tokenInputString = [v6 tokenInputString];
  v9 = [tokenInputString length];

  v10 = documentLocation - offset - v9;
  v11 = tokenIndex;
  result.documentLocation = v10;
  result.tokenIndex = v11;
  return result;
}

- (_TIRevisionHistoryTokenIterator)nextTokenIterator:(_TIRevisionHistoryTokenIterator)iterator
{
  documentLocation = iterator.documentLocation;
  tokenIndex = iterator.tokenIndex;
  tokenization = [(TIRevisionHistory *)self tokenization];
  v6 = [tokenization objectAtIndex:tokenIndex];

  offset = [v6 offset];
  tokenInputString = [v6 tokenInputString];
  v9 = [tokenInputString length];

  v10 = tokenIndex + 1;
  v11 = offset + documentLocation + v9;
  result.documentLocation = v11;
  result.tokenIndex = v10;
  return result;
}

- (_NSRange)documentRangeOfTokenAtIterator:(_TIRevisionHistoryTokenIterator)iterator
{
  documentLocation = iterator.documentLocation;
  tokenIndex = iterator.tokenIndex;
  tokenization = [(TIRevisionHistory *)self tokenization];
  v6 = [tokenization objectAtIndex:tokenIndex];

  offset = [v6 offset];
  tokenInputString = [v6 tokenInputString];
  v9 = [tokenInputString length];

  v10 = offset + documentLocation;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)tokenAtIterator:(_TIRevisionHistoryTokenIterator)iterator
{
  tokenIndex = iterator.tokenIndex;
  v4 = [(TIRevisionHistory *)self tokenization:iterator.tokenIndex];
  v5 = [v4 objectAtIndex:tokenIndex];

  return v5;
}

- (void)collectPFLTelemetryForTokenAtIndex:(unint64_t)index
{
  tokenization = [(TIRevisionHistory *)self tokenization];
  v15 = [tokenization objectAtIndex:index];

  tokenID = [v15 tokenID];
  v7 = v15;
  if (HIDWORD(tokenID) == 2)
  {
    tokenID = [v15 isAccepted];
    v7 = v15;
    if ((tokenID & 1) == 0)
    {
      tokenization2 = [(TIRevisionHistory *)self tokenization];
      v9 = [tokenization2 count];

      v10 = 0;
      do
      {
        if (index >= v9)
        {
          break;
        }

        ++v10;
        tokenization3 = [(TIRevisionHistory *)self tokenization];
        v12 = [tokenization3 objectAtIndex:index];

        tokenID2 = [v12 tokenID];
        --index;
      }

      while (HIDWORD(tokenID2) != 1);
      v7 = v15;
      if (v10 >= 5)
      {
        delegate = [(TIRevisionHistory *)self delegate];
        [delegate incrementUsageTrackingKeyForAppWithIsSentence:1];

        v7 = v15;
      }
    }
  }

  MEMORY[0x2821F96F8](tokenID, v7);
}

- (void)migrateUserTypingFromDeletedTokens:(id)tokens toInsertedTokens:(id)insertedTokens withUsageLearningMask:(unsigned int)mask usageTrackingMask:(unsigned int)trackingMask
{
  maskCopy = mask;
  tokensCopy = tokens;
  insertedTokensCopy = insertedTokens;
  if ([insertedTokensCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [insertedTokensCopy objectAtIndex:v8];
      if (v8 >= [tokensCopy count])
      {
        v10 = 0;
      }

      else
      {
        v10 = [tokensCopy objectAtIndex:v8];
      }

      userTyping = [v10 userTyping];
      v12 = userTyping;
      if (userTyping)
      {
        v13 = userTyping;
      }

      else
      {
        v13 = &stru_283FDFAF8;
      }

      [v9 setUserTyping:v13];

      lastObject = [insertedTokensCopy lastObject];
      if (v9 != lastObject)
      {
        goto LABEL_18;
      }

      v15 = [insertedTokensCopy count];
      v16 = [tokensCopy count];

      if (v15 < v16)
      {
        break;
      }

LABEL_19:
      [v9 setUsageLearningMask:{objc_msgSend(v10, "usageLearningMask")}];
      [v9 setUsageTrackingMask:{objc_msgSend(v10, "usageTrackingMask")}];
      tokenInputString = [v9 tokenInputString];
      userTyping2 = [v9 userTyping];
      v26 = [tokenInputString isEqualToString:userTyping2];

      if ((v26 & 1) == 0)
      {
        [v9 setUsageLearningMask:{objc_msgSend(v9, "usageLearningMask") | maskCopy & 5}];
      }

      if (!v8)
      {
        if ((maskCopy & 2) != 0)
        {
          [v9 setUsageLearningMask:{objc_msgSend(v9, "usageLearningMask") | 2}];
        }

        tokenInputString2 = [v9 tokenInputString];
        tokenInputString3 = [v10 tokenInputString];
        v29 = [tokenInputString2 isEqualToString:tokenInputString3];

        if ((v29 & 1) == 0)
        {
          [v9 setUsageTrackingMask:trackingMask];
        }
      }

      if (++v8 >= [insertedTokensCopy count])
      {
        goto LABEL_27;
      }
    }

    v17 = objc_alloc(MEMORY[0x277CCAB68]);
    userTyping3 = [v10 userTyping];
    v19 = userTyping3;
    if (userTyping3)
    {
      v20 = userTyping3;
    }

    else
    {
      v20 = &stru_283FDFAF8;
    }

    lastObject = [v17 initWithString:v20];

    for (i = v8 + 1; i < [tokensCopy count]; ++i)
    {
      v22 = [tokensCopy objectAtIndex:i];
      userTyping4 = [v22 userTyping];
      [lastObject appendFormat:@" %@", userTyping4];
    }

    [v9 setUserTyping:lastObject];
LABEL_18:

    goto LABEL_19;
  }

LABEL_27:
}

- (void)acceptTokensInRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v6 = [(TIRevisionHistory *)self contextForTokenAtIndex:?];
    v41 = *MEMORY[0x277D6FBE0];
    v42 = *MEMORY[0x277D6FBD8];
    v45 = v6;
    while (1)
    {
      tokenization = [(TIRevisionHistory *)self tokenization];
      v8 = [tokenization objectAtIndex:location];

      if ([v8 tokenID] >> 32)
      {
        v10 = 0;
      }

      else
      {
        tokenInputString = [v8 tokenInputString];
        v10 = [tokenInputString length];

        if (v10)
        {
          v50 = 0;
          delegate = [(TIRevisionHistory *)self delegate];
          tokenInputString2 = [v8 tokenInputString];
          v49 = 0;
          v13 = [delegate findTokenIDForWord:tokenInputString2 contextTokens:v6 tokenLookupMode:22 surfaceFormPtr:&v49 hasCaseInsensitiveStaticVariant:&v50];
          v14 = v49;

          v15 = v50;
          if (HIDWORD(v13) || ([v8 isAccepted] & 1) != 0)
          {
            [v8 setTokenID:v13];
          }

          else
          {
            v47 = v15;
            delegate2 = [(TIRevisionHistory *)self delegate];
            tokenInputString3 = [v8 tokenInputString];
            v48 = v14;
            v31 = [delegate2 addWord:tokenInputString3 contextTokens:v6 surfaceFormPtr:&v48];
            v32 = v48;

            [v8 setTokenID:v31];
            lastRejectedToken = [(TIRevisionHistory *)self lastRejectedToken];
            if (lastRejectedToken)
            {
              v34 = lastRejectedToken;
              v44 = v32;
              lastRejectedToken2 = [(TIRevisionHistory *)self lastRejectedToken];
              tokenInputString4 = [lastRejectedToken2 tokenInputString];
              tokenInputString5 = [v8 tokenInputString];
              v38 = [tokenInputString4 isEqualToString:tokenInputString5];
              v39 = v50;

              if ((v38 & 1) == 0)
              {
                v15 = v47;
                if ((v39 & 1) == 0)
                {
                  delegate3 = [(TIRevisionHistory *)self delegate];
                  [delegate3 incrementUsageTrackingKey:v41];
                }

                v14 = v44;
                goto LABEL_8;
              }

              v14 = v44;
            }

            else
            {
              v14 = v32;
            }

            v15 = v47;
          }

LABEL_8:
          if (v14 && ([v8 tokenDictionaryString], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "isEqualToString:", v16), v16, (v17 & 1) == 0))
          {
            [v8 setTokenDictionaryString:v14];
          }

          else
          {
            tokenInputString6 = [v8 tokenInputString];
            [v8 setTokenDictionaryString:tokenInputString6];
          }

          lastRejectedToken3 = [(TIRevisionHistory *)self lastRejectedToken];
          if (lastRejectedToken3)
          {
            v20 = lastRejectedToken3;
            lastRejectedToken4 = [(TIRevisionHistory *)self lastRejectedToken];
            tokenInputString7 = [lastRejectedToken4 tokenInputString];
            [v8 tokenInputString];
            v23 = v14;
            v25 = v24 = v15;
            v46 = [tokenInputString7 isEqualToString:v25];
            v43 = v50;

            v15 = v24;
            v14 = v23;

            if ((v46 & 1) == 0 && (v43 & 1) == 0)
            {
              delegate4 = [(TIRevisionHistory *)self delegate];
              [delegate4 incrementUsageTrackingKey:v42];
            }
          }

          v10 = v15 ^ 1u;

          v6 = v45;
        }
      }

      [(TIRevisionHistory *)self collectPFLTelemetryForTokenAtIndex:location];
      [(TIRevisionHistory *)self acceptToken:v8 contextTokens:v6 saveToDifferentialPrivacy:v10];
      tokenID = [v8 tokenID];
      tokenInputString8 = [v8 tokenInputString];
      [v6 appendToken:tokenID string:tokenInputString8];

      ++location;
      if (!--length)
      {

        return;
      }
    }
  }
}

- (id)contextForTokenAtIndex:(unint64_t)index
{
  v5 = objc_alloc_init(TIContextTokens);
  if (index)
  {
    v6 = 0;
    v7 = index - 1;
    while (1)
    {
      tokenization = [(TIRevisionHistory *)self tokenization];
      v9 = [tokenization objectAtIndex:v7];

      if ([v9 tokenID] >> 32 == 1 && ++v6 >= 3)
      {
        break;
      }

      if (--v7 == -1)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  if (v7 < index)
  {
    do
    {
      tokenization2 = [(TIRevisionHistory *)self tokenization];
      v11 = [tokenization2 objectAtIndex:v7];

      tokenID = [v11 tokenID];
      tokenInputString = [v11 tokenInputString];
      [(TIContextTokens *)v5 appendToken:tokenID string:tokenInputString];

      ++v7;
    }

    while (index != v7);
  }

  delegate = [(TIRevisionHistory *)self delegate];
  [delegate fillReversedConversationHistoryInContext:v5];

  return v5;
}

- (void)rejectToken:(id)token contextTokens:(id)tokens negativeLearningHint:(int)hint withRevisedToken:(id)revisedToken
{
  tokenCopy = token;
  tokensCopy = tokens;
  revisedTokenCopy = revisedToken;
  if ([tokenCopy isAccepted])
  {
    tokenInputString = [tokenCopy tokenInputString];
    tokenInputString2 = [revisedTokenCopy tokenInputString];
    if (![tokenInputString isEqualToString:tokenInputString2])
    {
      tokenInputString3 = [tokenCopy tokenInputString];
      if ([tokenInputString3 length])
      {
        tokenInputString4 = [tokenCopy tokenInputString];
        _containsSymbolsAndPunctuationOnly = [tokenInputString4 _containsSymbolsAndPunctuationOnly];

        if (_containsSymbolsAndPunctuationOnly)
        {
LABEL_13:
          delegate = [(TIRevisionHistory *)self delegate];
          if ([delegate isStringBasedModel])
          {
            [tokenCopy tokenInputString];
          }

          else
          {
            [tokenCopy tokenDictionaryString];
          }
          delegate5 = ;

          tokenLatinInputString = [tokenCopy tokenLatinInputString];
          if (tokenLatinInputString)
          {
            tokenLatinInputString2 = [tokenCopy tokenLatinInputString];
          }

          else
          {
            tokenLatinInputString2 = &stru_283FDFAF8;
          }

          delegate2 = [(TIRevisionHistory *)self delegate];
          [delegate2 decrementLanguageModelCount:delegate5 latinInputString:tokenLatinInputString2 tokenID:objc_msgSend(tokenCopy contextTokens:{"tokenID"), tokensCopy}];

          if (hint && ([tokenCopy tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000)
          {
            delegate3 = [(TIRevisionHistory *)self delegate];
            tokenInputString5 = [tokenCopy tokenInputString];
            [delegate3 softLearningRegisterDeleted:tokenInputString5];
          }

          [tokenCopy setAccepted:0];
          if ([tokenCopy tokenID] >> 32 == 1)
          {
            [(TIRevisionHistory *)self setShouldReportRevisionToDP:0];
          }

          else
          {
            lastRejectedToken = [(TIRevisionHistory *)self lastRejectedToken];

            if (lastRejectedToken)
            {
              [(TIRevisionHistory *)self setShouldReportRevisionToDP:0];
            }

            if (([tokenCopy tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000)
            {
              [(TIRevisionHistory *)self setLastRejectedToken:tokenCopy];
            }
          }

          goto LABEL_28;
        }

        delegate4 = [(TIRevisionHistory *)self delegate];
        [delegate4 incrementUsageTrackingKey:*MEMORY[0x277D6FBE8]];

        tokenInputString = [(TIRevisionHistory *)self delegate];
        [tokenInputString incrementUsageTrackingKeyForAutocorrectionStatistic:*MEMORY[0x277D6FAD0] autocorrectionTypes:{objc_msgSend(tokenCopy, "usageTrackingMask")}];
LABEL_12:

        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  usageLearningMask = [tokenCopy usageLearningMask];
  if (hint && (usageLearningMask & 4) != 0 && ([tokenCopy tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000)
  {
    delegate5 = [(TIRevisionHistory *)self delegate];
    tokenLatinInputString2 = [tokenCopy tokenInputString];
    [delegate5 softLearningRegisterDeleted:tokenLatinInputString2];
LABEL_28:
  }
}

- (TIRevisionHistory)initWithLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = TIRevisionHistory;
  v5 = [(TIRevisionHistory *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    documentText = v5->_documentText;
    v5->_documentText = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tokenization = v5->_tokenization;
    v5->_tokenization = v8;

    v10 = LMStreamTokenizerCreate();
    v5->_tokenizer = v10;
    v5->_shouldReportRevisionToDP = 1;
    if (!v10)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (TIRevisionHistory)init
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(TIRevisionHistory *)self initWithLocale:currentLocale];

  return v4;
}

- (void)dealloc
{
  if (self->_tokenizer)
  {
    LMStreamTokenizerRelease();
  }

  v3.receiver = self;
  v3.super_class = TIRevisionHistory;
  [(TIRevisionHistory *)&v3 dealloc];
}

+ (id)documentStateTrimmedToSentenceForState:(id)state
{
  stateCopy = state;
  contextBeforeInput = [stateCopy contextBeforeInput];
  v5 = contextBeforeInput;
  if (contextBeforeInput)
  {
    v6 = contextBeforeInput;
  }

  else
  {
    v6 = &stru_283FDFAF8;
  }

  selectedText = [stateCopy selectedText];
  v8 = selectedText;
  if (selectedText)
  {
    v9 = selectedText;
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  v10 = [(__CFString *)v6 stringByAppendingString:v9];
  contextAfterInput = [stateCopy contextAfterInput];
  v12 = contextAfterInput;
  if (contextAfterInput)
  {
    v13 = contextAfterInput;
  }

  else
  {
    v13 = &stru_283FDFAF8;
  }

  v14 = [v10 stringByAppendingString:v13];

  contextBeforeInput2 = [stateCopy contextBeforeInput];
  v16 = [contextBeforeInput2 length];
  selectedText2 = [stateCopy selectedText];
  v18 = [selectedText2 length];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__9897;
  v42 = __Block_byref_object_dispose__9898;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__9897;
  v36 = __Block_byref_object_dispose__9898;
  v37 = 0;
  v19 = [v14 length];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__TIRevisionHistory_documentStateTrimmedToSentenceForState___block_invoke;
  v26[3] = &unk_278730DC0;
  v30 = v16;
  v31 = v18;
  v27 = v14;
  v28 = &v38;
  v29 = &v32;
  v20 = v14;
  [v20 enumerateSubstringsInRange:0 options:v19 usingBlock:{4, v26}];
  v21 = MEMORY[0x277D6F350];
  v22 = v39[5];
  selectedText3 = [stateCopy selectedText];

  v24 = [v21 documentStateWithContextBefore:v22 selectedText:selectedText3 contextAfter:v33[5]];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v24;
}

void __60__TIRevisionHistory_documentStateTrimmedToSentenceForState___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = a2;
  v11 = *(a1 + 56);
  v12 = a3 + a4;
  if (v11 > a3 && v12 >= v11)
  {
    v14 = [*(a1 + 32) substringWithRange:{a3, v11 - a3}];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v11 = *(a1 + 56);
  }

  v17 = *(a1 + 64) + v11;
  if (a3 <= v17 && v12 > v17)
  {
    v19 = [*(a1 + 32) substringWithRange:{v17, v12 - v17}];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  if (a7 && a3 > *(a1 + 64) + *(a1 + 56))
  {
    *a7 = 1;
  }
}

@end