@interface TIRevisionHistory
+ (id)documentStateTrimmedToSentenceForState:(id)a3;
- (BOOL)isSelectionContainedByToken:(_TIRevisionHistoryTokenIterator)a3;
- (BOOL)isWordToken:(_TIRevisionHistoryTokenIterator)a3;
- (BOOL)matchesContextAfterSelection:(id)a3;
- (BOOL)matchesContextBeforeSelection:(id)a3;
- (BOOL)matchesDocumentState:(id)a3;
- (BOOL)matchesSelectedText:(id)a3;
- (BOOL)originalIterator:(_TIRevisionHistoryTokenIterator)a3 matchesRevisedDocumentRange:(_NSRange)a4 andTokenID:(TITokenID)a5;
- (BOOL)shouldValidateOriginalIterator:(_TIRevisionHistoryTokenIterator)a3 withRevisedDocumentRange:(_NSRange)a4 forRevision:(id)a5;
- (BOOL)validateTokenizationForRevisedDocumentRange:(_NSRange)a3 andTokenID:(TITokenID)a4 forRevision:(id)a5;
- (TIRevisionHistory)init;
- (TIRevisionHistory)initWithLocale:(id)a3;
- (_NSRange)deletionRangeToObtainDocumentState:(id)a3;
- (_NSRange)documentRangeOfTokenAtIterator:(_TIRevisionHistoryTokenIterator)a3;
- (_NSRange)inputRangeForReplacement:(id)a3;
- (_NSRange)selectedRange;
- (_NSRange)selectedTokenRangeWithIterator:(_TIRevisionHistoryTokenIterator)a3;
- (_TIRevisionHistoryTokenIterator)currentTokenIterator;
- (_TIRevisionHistoryTokenIterator)iteratorUpperBoundForSelectionStart;
- (_TIRevisionHistoryTokenIterator)nextTokenIterator:(_TIRevisionHistoryTokenIterator)a3;
- (_TIRevisionHistoryTokenIterator)popSelectedTextFromTokenizer;
- (_TIRevisionHistoryTokenIterator)previousTokenIterator:(_TIRevisionHistoryTokenIterator)a3;
- (_TIRevisionHistoryTokenIterator)resetTokenAtIterator:(_TIRevisionHistoryTokenIterator)a3 withRange:(_NSRange)a4 fromDocumentLocation:(unint64_t)a5;
- (id)contextForTokenAtIndex:(unint64_t)a3;
- (id)currentUserTyping;
- (id)currentWord;
- (id)documentState;
- (id)nonEmptyTokensInRange:(_NSRange)a3;
- (id)tokenAtIterator:(_TIRevisionHistoryTokenIterator)a3;
- (id)wordTokenContainingSelection;
- (unint64_t)tokenizeDocumentTextInRange:(_NSRange)a3 withTokenHandler:(id)a4;
- (void)acceptCurrentSentence;
- (void)acceptText:(id)a3 isAutocorrection:(BOOL)a4 isAutoshifted:(BOOL)a5;
- (void)acceptTokensInRange:(_NSRange)a3;
- (void)addRevisedTokenString:(id)a3 withTokenID:(TITokenID)a4 inDocumentRange:(_NSRange)a5 toRevision:(id)a6;
- (void)adjustTokenOffsetAfterDeletedTokenRange:(_NSRange)a3 withDeletedCharacterCount:(unint64_t)a4;
- (void)annotateTokensCreatedFromDocumentState;
- (void)collectPFLTelemetryForTokenAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)deleteBackward;
- (void)enumerateSentenceStemUsingBlock:(id)a3;
- (void)enumerateSentenceStemUsingIteratorBlock:(id)a3;
- (void)handleRevisedTokenString:(id)a3 withTokenID:(TITokenID)a4 forRevision:(id)a5;
- (void)insertText:(id)a3;
- (void)mergeTokenizationsForRevision:(id)a3;
- (void)migrateUserTypingFromDeletedTokens:(id)a3 toInsertedTokens:(id)a4 withUsageLearningMask:(unsigned int)a5 usageTrackingMask:(unsigned int)a6;
- (void)pushSelectedTextToTokenizerForRevision:(id)a3;
- (void)rejectToken:(id)a3 contextTokens:(id)a4 negativeLearningHint:(int)a5 withRevisedToken:(id)a6;
- (void)replaceSelectionWithText:(id)a3 latinInputString:(id)a4 negativeLearningHint:(int)a5 selectedTokenReplacementHandler:(id)a6;
- (void)resetToDocumentState:(id)a3;
- (void)syncToDocumentState:(id)a3;
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
    v7 = [(TIRevisionHistory *)self tokenization];
    if (v5 >= [v7 count])
    {
      break;
    }

    v8 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:v5, v6];
    v9 = [(TIRevisionHistory *)self selectedRange];

    if (v8 > v9)
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
  v3 = [(TIRevisionHistory *)self currentTokenIterator];
  v5 = v4;
  v6 = [(TIRevisionHistory *)self tokenization];
  if (v3 >= [v6 count])
  {
    v10 = 0;
    v8 = v3;
LABEL_7:

    v13 = v10;
  }

  else
  {
    v7 = 0;
    v8 = v3;
    while (1)
    {
      v13 = v7;
      v9 = [v7 tokenID];

      if (HIDWORD(v9) == 2)
      {
        break;
      }

      v10 = [(TIRevisionHistory *)self tokenAtIterator:v8, v5];

      v8 = [(TIRevisionHistory *)self nextTokenIterator:v8, v5];
      v5 = v11;
      v6 = [(TIRevisionHistory *)self tokenization];
      v12 = [v6 count];
      v7 = v10;
      if (v8 >= v12)
      {
        goto LABEL_7;
      }
    }
  }

  [(TIRevisionHistory *)self acceptTokensInRange:v3, v8 - v3];
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
          v7 = [v6 tokenInputString];
          v8 = [v7 length];

          if (v8)
          {
            v9 = [(TIRevisionHistory *)self delegate];
            v10 = [v6 tokenInputString];
            [v6 setTokenID:{objc_msgSend(v9, "findTokenIDForWord:contextTokens:tokenLookupMode:", v10, v3, 37)}];
          }
        }

        v11 = [v6 tokenInputString];
        if ([v11 length])
        {
          v12 = [(TIRevisionHistory *)self autocorrectionHistory];
          v13 = [v6 tokenInputString];
          v14 = [v12 objectForKey:v13];
        }

        else
        {
          v14 = 0;
        }

        v15 = [v14 candidate];
        v16 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v17 = [v15 stringByTrimmingCharactersInSet:v16];

        v18 = [v6 tokenInputString];
        LODWORD(v16) = [v17 hasPrefix:v18];

        if (v16)
        {
          v19 = [v14 input];
          [v6 setUserTyping:v19];

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
          v21 = [(TIRevisionHistory *)self recentAutocorrections];
          v22 = [v6 tokenInputString];
          [v21 objectForKeyedSubscript:v22];
          v23 = v14;
          v24 = i;
          v25 = v17;
          v26 = self;
          v27 = v3;
          v29 = v28 = v4;
          v34 = [v29 isAutocorrection];

          v4 = v28;
          v3 = v27;
          self = v26;
          v17 = v25;
          i = v24;
          v14 = v23;

          if (v34)
          {
            [v6 setUsageLearningMask:{objc_msgSend(v6, "usageLearningMask") | 4}];
          }
        }

        v30 = [v6 tokenID];
        v31 = [v6 tokenInputString];
        [(TIContextTokens *)v3 appendToken:v30 string:v31];
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)currentWord
{
  v2 = [(TIRevisionHistory *)self wordTokenContainingSelection];
  v3 = [v2 tokenInputString];

  return v3;
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
  v2 = [(TIRevisionHistory *)self wordTokenContainingSelection];
  v3 = [v2 userTyping];

  return v3;
}

- (void)enumerateSentenceStemUsingBlock:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = [(TIRevisionHistory *)self selectedRange];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TIRevisionHistory_enumerateSentenceStemUsingBlock___block_invoke;
  v6[3] = &unk_278730E10;
  v7 = v4;
  v8 = v9;
  v6[4] = self;
  v5 = v4;
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

- (void)syncToDocumentState:(id)a3
{
  v8 = a3;
  if (![(TIRevisionHistory *)self matchesDocumentState:?])
  {
    if (!-[TIRevisionHistory isDeletingBackwards](self, "isDeletingBackwards") || (v4 = -[TIRevisionHistory deletionRangeToObtainDocumentState:](self, "deletionRangeToObtainDocumentState:", v8), v4 == 0x7FFFFFFFFFFFFFFFLL) || !v5 || (-[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", v4, v5), -[TIRevisionHistory replaceSelectionWithText:latinInputString:negativeLearningHint:selectedTokenReplacementHandler:](self, "replaceSelectionWithText:latinInputString:negativeLearningHint:selectedTokenReplacementHandler:", &stru_283FDFAF8, 0, 2, 0), -[TIRevisionHistory selectedRange](self, "selectedRange") == 0) && ([v8 contextBeforeInput], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
    {
      [(TIRevisionHistory *)self setIsDeletingBackwards:0];
      [(TIRevisionHistory *)self acceptCurrentSentence];
      [(TIRevisionHistory *)self resetToDocumentState:v8];
    }
  }
}

- (BOOL)matchesDocumentState:(id)a3
{
  v4 = a3;
  v5 = [v4 contextBeforeInput];
  v6 = [(TIRevisionHistory *)self matchesContextBeforeSelection:v5];

  if (v6 && ([v4 selectedText], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[TIRevisionHistory matchesSelectedText:](self, "matchesSelectedText:", v7), v7, v8))
  {
    v9 = [v4 contextAfterInput];
    v10 = [(TIRevisionHistory *)self matchesContextAfterSelection:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)matchesContextAfterSelection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    v7 = [(TIRevisionHistory *)self documentText];
    v8 = [v7 length];
    v9 = [(TIRevisionHistory *)self selectedRange];
    v11 = v8 - (v10 + v9);

    if (v6 != v11)
    {
      v19 = 0;
      goto LABEL_10;
    }

    v12 = [(TIRevisionHistory *)self documentText];
    v13 = [(TIRevisionHistory *)self selectedRange];
    v15 = [v12 compare:v5 options:2 range:{v13 + v14, objc_msgSend(v5, "length")}] == 0;
  }

  else
  {
    v16 = [(TIRevisionHistory *)self selectedRange];
    v18 = v16 + v17;
    v12 = [(TIRevisionHistory *)self documentText];
    v15 = v18 == [v12 length];
  }

  v19 = v15;

LABEL_10:
  return v19;
}

- (BOOL)matchesSelectedText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    [(TIRevisionHistory *)self selectedRange];
    if (v6 == v7)
    {
      v8 = [(TIRevisionHistory *)self documentText];
      v9 = [(TIRevisionHistory *)self selectedRange];
      v11 = [v8 compare:v5 options:2 range:{v9, v10}] == 0;
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

- (BOOL)matchesContextBeforeSelection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    if (v6 == [(TIRevisionHistory *)self selectedRange])
    {
      v7 = [(TIRevisionHistory *)self documentText];
      v8 = [v7 compare:v5 options:2 range:{0, -[TIRevisionHistory selectedRange](self, "selectedRange")}] == 0;
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

- (void)acceptText:(id)a3 isAutocorrection:(BOOL)a4 isAutoshifted:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  [(TIRevisionHistory *)self setIsDeletingBackwards:0];
  v9 = [(TIRevisionHistory *)self inputRangeForReplacement:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TIRevisionHistory *)self setSelectedRange:v9, v10];
    if (v5)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | [v8 isAutocorrection];
    if (v6)
    {
      v13 = v12 | 4;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v8 candidate];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = &stru_283FDFAF8;
    }

    v16 = [v8 latinCandidate];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__TIRevisionHistory_acceptText_isAutocorrection_isAutoshifted___block_invoke;
    v17[3] = &unk_278730DE8;
    v17[4] = self;
    v19 = v13;
    v18 = v8;
    [(TIRevisionHistory *)self replaceSelectionWithText:v15 latinInputString:v16 negativeLearningHint:0 selectedTokenReplacementHandler:v17];
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

- (_NSRange)inputRangeForReplacement:(id)a3
{
  v4 = a3;
  [(TIRevisionHistory *)self selectedRange];
  if (v5)
  {
    v6 = [(TIRevisionHistory *)self documentText];
    v7 = [v4 input];
    v8 = [(TIRevisionHistory *)self selectedRange];
    v10 = [v6 compare:v7 options:2 range:{v8, v9}];

    if (v10)
    {
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = [(TIRevisionHistory *)self selectedRange];
      v11 = v15;
    }
  }

  else
  {
    v13 = [v4 input];
    v14 = [v13 length];

    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 <= [(TIRevisionHistory *)self selectedRange])
    {
      v16 = [(TIRevisionHistory *)self selectedRange]- v14;
      v17 = [(TIRevisionHistory *)self documentText];
      v18 = [v4 input];
      v19 = [v17 compare:v18 options:2 range:{v16, v14}];

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
        v12 = v16;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v20 = v12;
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
    v4 = [(TIRevisionHistory *)self documentText];
    v5 = [v4 _rangeOfBackwardDeletionClusterAtIndex:{-[TIRevisionHistory selectedRange](self, "selectedRange") - 1}];
    [(TIRevisionHistory *)self setSelectedRange:v5, v6];
  }

  [(TIRevisionHistory *)self replaceSelectionWithText:&stru_283FDFAF8 latinInputString:0 negativeLearningHint:2 selectedTokenReplacementHandler:0];
}

- (void)insertText:(id)a3
{
  v6 = a3;
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

  [(TIRevisionHistory *)self replaceSelectionWithText:v6 latinInputString:0 negativeLearningHint:v5 selectedTokenReplacementHandler:0];
}

- (_NSRange)deletionRangeToObtainDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(TIRevisionHistory *)self documentState];
  v6 = [TIRevisionHistory documentStateTrimmedToSentenceForState:v5];

  v7 = [TIRevisionHistory documentStateTrimmedToSentenceForState:v4];

  v8 = [v6 selectedText];
  if ([v8 length])
  {
    goto LABEL_10;
  }

  v9 = [v7 selectedText];
  if ([v9 length])
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v10 = [v6 contextBeforeInput];
  v11 = [v10 length];
  v12 = [v7 contextBeforeInput];
  if (v11 <= [v12 length])
  {

    goto LABEL_9;
  }

  v13 = [v6 contextAfterInput];
  v52 = v10;
  v54 = [v13 length];
  if (v54 || ([v7 contextAfterInput], v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "length")))
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v6 contextAfterInput];
    v16 = [v7 contextAfterInput];
    v17 = v14;
    v18 = v15;
    v49 = v16;
    if (![v17 _string:v15 matchesString:?])
    {
      v31 = 0;
      v32 = v47;
LABEL_36:

      goto LABEL_39;
    }

    v45 = v15;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v34 = [v7 contextBeforeInput];
  if ([v34 length])
  {
    v44 = v13;
    [v6 contextBeforeInput];
    v35 = v43 = v19;
    v36 = [v7 contextBeforeInput];
    v31 = [v35 hasPrefix:v36];

    if (v43)
    {
      v13 = v44;
LABEL_35:
      v18 = v45;
      v32 = v47;
      goto LABEL_36;
    }

    v13 = v44;
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
    v37 = [v6 contextBeforeInput];
    v38 = [v37 length];
    v39 = [v7 contextBeforeInput];
    v27 = v38 - [v39 length];

    v28 = [(TIRevisionHistory *)self selectedRange]- v27;
    goto LABEL_24;
  }

LABEL_11:
  v20 = [v7 contextBeforeInput];
  if ([v20 length])
  {
    v21 = [v6 contextBeforeInput];
    if ([v21 length] >= 0xC)
    {
LABEL_21:

      goto LABEL_22;
    }

    v22 = [v6 contextBeforeInput];
    if (![v22 length])
    {
LABEL_20:

      goto LABEL_21;
    }

    v23 = [v7 contextBeforeInput];
    v24 = [v6 contextBeforeInput];
    if ([v23 isEqualToString:v24])
    {
LABEL_19:

      goto LABEL_20;
    }

    v25 = [v6 selectedText];
    if ([v25 length])
    {
LABEL_18:

      goto LABEL_19;
    }

    v26 = [v7 selectedText];
    if ([v26 length])
    {

      goto LABEL_18;
    }

    v53 = [v6 contextAfterInput];
    v48 = [v53 length];
    if (v48 || ([v7 contextAfterInput], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "length")))
    {
      v50 = MEMORY[0x277CCACA8];
      v55 = [v6 contextAfterInput];
      [v7 contextAfterInput];
      v33 = v46 = v26;
      v51 = [v50 _string:v55 matchesString:v33];

      v26 = v46;
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
      v40 = [(TIRevisionHistory *)self selectedRange];
      v41 = [v6 contextBeforeInput];
      v28 = v40 - [v41 length];

      v42 = [v6 contextBeforeInput];
      v27 = [v42 length];

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
  v3 = [(TIRevisionHistory *)self documentText];
  v4 = [v3 substringToIndex:{-[TIRevisionHistory selectedRange](self, "selectedRange")}];

  [(TIRevisionHistory *)self selectedRange];
  if (v5)
  {
    v6 = [(TIRevisionHistory *)self documentText];
    v7 = [(TIRevisionHistory *)self selectedRange];
    v9 = [v6 substringWithRange:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(TIRevisionHistory *)self documentText];
  v11 = [(TIRevisionHistory *)self selectedRange];
  v13 = [v10 substringFromIndex:v11 + v12];

  v14 = [objc_alloc(MEMORY[0x277D6F350]) initWithContextBefore:v4 markedText:0 selectedText:v9 contextAfter:v13 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v14;
}

- (BOOL)isWordToken:(_TIRevisionHistoryTokenIterator)a3
{
  tokenIndex = a3.tokenIndex;
  v4 = [(TIRevisionHistory *)self tokenization:a3.tokenIndex];
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

- (BOOL)isSelectionContainedByToken:(_TIRevisionHistoryTokenIterator)a3
{
  v4 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:a3.tokenIndex, a3.documentLocation];
  v6 = v5;
  if (v4 > [(TIRevisionHistory *)self selectedRange])
  {
    return 0;
  }

  v8 = [(TIRevisionHistory *)self selectedRange];
  return v8 + v9 <= v4 + v6;
}

- (void)enumerateSentenceStemUsingIteratorBlock:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(TIRevisionHistory *)self iteratorUpperBoundForSelectionStart];
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    do
    {
      v7 = [(TIRevisionHistory *)self previousTokenIterator:v7, v8];
      v8 = v10;
      v11 = [(TIRevisionHistory *)self tokenAtIterator:v7, v10];
      v4[2](v4, v7, v8, &v12);
      if ([v11 tokenID] >> 32 == 1)
      {
        v12 |= ++v9 > 2;
      }
    }

    while ((v12 & 1) == 0 && v7);
  }
}

- (void)resetToDocumentState:(id)a3
{
  v27 = a3;
  [(TIRevisionHistory *)self setDocumentText:&stru_283FDFAF8];
  [(TIRevisionHistory *)self setSelectedRange:0, 0];
  v4 = [(TIRevisionHistory *)self tokenization];
  [v4 removeAllObjects];

  [(TIRevisionHistory *)self tokenizer];
  LMStreamTokenizerReset();
  [(TIRevisionHistory *)self setCurrentTokenIterator:0, 0];
  [(TIRevisionHistory *)self setLastRejectedToken:0];
  v5 = [[TITokenizationRevision alloc] initWithTokenIterator:0, 0];
  v6 = [v27 contextBeforeInput];

  if (v6)
  {
    v7 = [(TIRevisionHistory *)self documentText];
    v8 = [v27 contextBeforeInput];
    v9 = [v7 stringByAppendingString:v8];
    [(TIRevisionHistory *)self setDocumentText:v9];

    v10 = [v27 contextBeforeInput];
    -[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", 0, [v10 length]);

    [(TIRevisionHistory *)self pushSelectedTextToTokenizerForRevision:v5];
  }

  v11 = [v27 selectedText];

  if (v11)
  {
    v12 = [(TIRevisionHistory *)self documentText];
    v13 = [v27 selectedText];
    v14 = [v12 stringByAppendingString:v13];
    [(TIRevisionHistory *)self setDocumentText:v14];

    v15 = [(TIRevisionHistory *)self selectedRange];
    v17 = v16;
    v18 = [v27 selectedText];
    -[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", v15 + v17, [v18 length]);

    [(TIRevisionHistory *)self pushSelectedTextToTokenizerForRevision:v5];
  }

  else
  {
    v19 = [(TIRevisionHistory *)self selectedRange];
    [(TIRevisionHistory *)self setSelectedRange:v19 + v20, 0];
  }

  v21 = [v27 contextAfterInput];

  if (v21)
  {
    v22 = [(TIRevisionHistory *)self documentText];
    v23 = [v27 contextAfterInput];
    v24 = [v22 stringByAppendingString:v23];
    [(TIRevisionHistory *)self setDocumentText:v24];
  }

  [(TIRevisionHistory *)self mergeTokenizationsForRevision:v5];
  v25 = [(TIRevisionHistory *)self tokenization];
  v26 = [(TITokenizationRevision *)v5 branchTokens];
  [v25 setArray:v26];

  [(TIRevisionHistory *)self annotateTokensCreatedFromDocumentState];
}

- (void)replaceSelectionWithText:(id)a3 latinInputString:(id)a4 negativeLearningHint:(int)a5 selectedTokenReplacementHandler:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(TIRevisionHistory *)self popSelectedTextFromTokenizer];
  v14 = v13;
  v15 = [[TITokenizationRevision alloc] initWithTokenIterator:v12, v13];
  v44 = v14;
  v16 = [(TIRevisionHistory *)self selectedTokenRangeWithIterator:v12, v14];
  [(TITokenizationRevision *)v15 setOriginalSelectedTokenRange:v16, v17];
  [(TIRevisionHistory *)self selectedRange];
  v19 = v18;
  v20 = [(TIRevisionHistory *)self documentText];
  v21 = [(TIRevisionHistory *)self selectedRange];
  v23 = [v20 stringByReplacingCharactersInRange:v21 withString:{v22, v9}];
  [(TIRevisionHistory *)self setDocumentText:v23];

  v48 = v9;
  -[TIRevisionHistory setSelectedRange:](self, "setSelectedRange:", -[TIRevisionHistory selectedRange](self, "selectedRange"), [v9 length]);
  v24 = [(TITokenizationRevision *)v15 originalSelectedTokenRange];
  [(TIRevisionHistory *)self adjustTokenOffsetAfterDeletedTokenRange:v24 withDeletedCharacterCount:v25, v19];
  [(TIRevisionHistory *)self pushSelectedTextToTokenizerForRevision:v15];
  [(TIRevisionHistory *)self mergeTokenizationsForRevision:v15];
  v26 = [(TITokenizationRevision *)v15 branchedTokenIndex];
  v27 = [(TITokenizationRevision *)v15 mergedTokenIndex];
  v28 = v27 - [(TITokenizationRevision *)v15 branchedTokenIndex];
  [(TIRevisionHistory *)self rejectTokensInRange:v26 negativeLearningHint:v28 newRevision:a5, v15];
  v47 = v11;
  if (v11)
  {
    v29 = [(TITokenizationRevision *)v15 originalSelectedTokenRange];
    v45 = [(TIRevisionHistory *)self nonEmptyTokensInRange:v29, v30];
  }

  else
  {
    v45 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = [(TITokenizationRevision *)v15 branchTokens];
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
          objc_enumerationMutation(v31);
        }

        [*(*(&v49 + 1) + 8 * i) setTokenLatinInputString:v10];
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v33);
  }

  v36 = [(TIRevisionHistory *)self tokenization];
  v37 = [(TITokenizationRevision *)v15 branchTokens];
  [v36 replaceObjectsInRange:v26 withObjectsFromArray:{v28, v37}];

  if (v47)
  {
    v38 = [(TIRevisionHistory *)self selectedTokenRangeWithIterator:v12, v44];
    v40 = [(TIRevisionHistory *)self nonEmptyTokensInRange:v38, v39];
    (v47)[2](v47, v45, v40);
  }

  [(TIRevisionHistory *)self acceptTokensInRange:v12, [(TIRevisionHistory *)self currentTokenIterator]- v12];
  v41 = [(TIRevisionHistory *)self selectedRange];
  [(TIRevisionHistory *)self setSelectedRange:v41 + v42, 0];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)mergeTokenizationsForRevision:(id)a3
{
  v4 = a3;
  v5 = [(TIRevisionHistory *)self documentText];
  v6 = [v5 copy];

  v7 = [v6 stringByAppendingString:@"\n"];
  [(TIRevisionHistory *)self setDocumentText:v7];

  v8 = [(TIRevisionHistory *)self selectedRange];
  v10 = v9;
  v11 = [(TIRevisionHistory *)self documentText];
  v12 = [v11 length];
  v13 = [(TIRevisionHistory *)self selectedRange];
  v15 = v12 - (v14 + v13);

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51__TIRevisionHistory_mergeTokenizationsForRevision___block_invoke;
  v21 = &unk_278730D50;
  v22 = self;
  v16 = v4;
  v23 = v16;
  [(TIRevisionHistory *)self tokenizeDocumentTextInRange:v8 + v10 withTokenHandler:v15, &v18];
  if ([v16 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 setBranchedTokenIndex:{objc_msgSend(v16, "originalIterator")}];
  }

  if ([v16 mergedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [(TIRevisionHistory *)self tokenization];
    [v16 setMergedTokenIndex:{objc_msgSend(v17, "count")}];
  }

  [(TIRevisionHistory *)self setDocumentText:v6];
  [(TIRevisionHistory *)self tokenizer];
  LMStreamTokenizerPopBytes();
}

- (void)pushSelectedTextToTokenizerForRevision:(id)a3
{
  v4 = a3;
  v5 = [(TIRevisionHistory *)self selectedRange];
  v7 = v6;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__TIRevisionHistory_pushSelectedTextToTokenizerForRevision___block_invoke;
  v16 = &unk_278730D50;
  v17 = self;
  v8 = v4;
  v18 = v8;
  [(TIRevisionHistory *)self tokenizeDocumentTextInRange:v5 withTokenHandler:v7, &v13];
  if ([v8 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v8 originalIterator];
  }

  else
  {
    v9 = [v8 branchedTokenIndex];
  }

  v10 = v9;
  v11 = [v8 branchTokens];
  v12 = [v11 count];

  -[TIRevisionHistory setCurrentTokenIterator:](self, "setCurrentTokenIterator:", v12 + v10, [v8 revisedDocumentLocation]);
}

- (void)handleRevisedTokenString:(id)a3 withTokenID:(TITokenID)a4 forRevision:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(TIRevisionHistory *)self documentText];
  v11 = [v10 _rangeOfString:v8 fromLocation:{objc_msgSend(v9, "revisedDocumentLocation")}];
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
      v16 = [v9 revisedDocumentLocation];
      v17 = [(TIRevisionHistory *)self documentText];
      v18 = [(TIRevisionHistory *)self selectedRange];
      [(TIRevisionHistory *)self selectedRange];
      v20 = [v21 stringWithFormat:@"%s ERROR: Unexpected token %@ for location %lu in %@, with selected range (%lu, %lu)", "-[TIRevisionHistory handleRevisedTokenString:withTokenID:forRevision:]", v8, v16, v17, v18, v19];
      *buf = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (![(TIRevisionHistory *)self validateTokenizationForRevisedDocumentRange:v11 andTokenID:v13 forRevision:a4, v9])
  {
    [(TIRevisionHistory *)self addRevisedTokenString:v8 withTokenID:a4 inDocumentRange:v11 toRevision:v13, v9];
  }

  [v9 setRevisedDocumentLocation:v11 + v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addRevisedTokenString:(id)a3 withTokenID:(TITokenID)a4 inDocumentRange:(_NSRange)a5 toRevision:(id)a6
{
  location = a5.location;
  v9 = a6;
  v10 = a3;
  v12 = objc_alloc_init(TIRevisionHistoryToken);
  [(TIRevisionHistoryToken *)v12 setTokenInputString:v10];
  [(TIRevisionHistoryToken *)v12 setTokenID:a4];
  -[TIRevisionHistoryToken setOffset:](v12, "setOffset:", location - [v9 revisedDocumentLocation]);
  [(TIRevisionHistoryToken *)v12 setUserTyping:v10];

  v11 = [v9 branchTokens];

  [v11 addObject:v12];
}

- (BOOL)validateTokenizationForRevisedDocumentRange:(_NSRange)a3 andTokenID:(TITokenID)a4 forRevision:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v10 = [v9 originalIterator];
  v12 = v11;
  if (![(TIRevisionHistory *)self shouldValidateOriginalIterator:v10 withRevisedDocumentRange:v11 forRevision:location, length, v9])
  {
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    v13 = [v9 originalSelectedTokenRange];
    v15 = v10 < v13 || v10 - v13 >= v14;
    v16 = !v15;
    if (v15 && [(TIRevisionHistory *)self originalIterator:v10 matchesRevisedDocumentRange:v12 andTokenID:location, length, a4])
    {
      break;
    }

    [v9 setMergedTokenIndex:0x7FFFFFFFFFFFFFFFLL];
    if ([v9 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 setBranchedTokenIndex:v10];
    }

    if (v16)
    {
      ++v10;
LABEL_16:
      [v9 setOriginalIterator:{v10, v12}];
      goto LABEL_17;
    }

    v17 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:v10, v12];
    v10 = [(TIRevisionHistory *)self nextTokenIterator:v10, v12];
    v12 = v18;
    if (v17 < location + length)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (![(TIRevisionHistory *)self shouldValidateOriginalIterator:v10 withRevisedDocumentRange:v12 forRevision:location, length, v9])
    {
      goto LABEL_18;
    }
  }

  v21 = -[TIRevisionHistory resetTokenAtIterator:withRange:fromDocumentLocation:](self, "resetTokenAtIterator:withRange:fromDocumentLocation:", v10, v12, location, length, [v9 revisedDocumentLocation]);
  v23 = v22;
  if ([v9 mergedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [v9 originalSelectedTokenRange];
    if (v21 >= v24 + v25)
    {
      if (length)
      {
        [v9 setMergedTokenIndex:v21];
        if ([v9 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 setBranchedTokenIndex:{objc_msgSend(v9, "mergedTokenIndex")}];
        }
      }
    }
  }

  v26 = [(TIRevisionHistory *)self nextTokenIterator:v21, v23];
  [v9 setOriginalIterator:{v26, v27}];
  v19 = 1;
LABEL_19:

  return v19;
}

- (_TIRevisionHistoryTokenIterator)resetTokenAtIterator:(_TIRevisionHistoryTokenIterator)a3 withRange:(_NSRange)a4 fromDocumentLocation:(unint64_t)a5
{
  location = a4.location;
  tokenIndex = a3.tokenIndex;
  v8 = [(TIRevisionHistory *)self tokenAtIterator:a3.tokenIndex, a3.documentLocation, a4.location, a4.length];
  [v8 setOffset:location - a5];

  v9 = tokenIndex;
  v10 = a5;
  result.documentLocation = v10;
  result.tokenIndex = v9;
  return result;
}

- (BOOL)shouldValidateOriginalIterator:(_TIRevisionHistoryTokenIterator)a3 withRevisedDocumentRange:(_NSRange)a4 forRevision:(id)a5
{
  location = a4.location;
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v9 = a5;
  v10 = [v9 originalSelectedTokenRange];
  if (tokenIndex >= v10 && tokenIndex - v10 < v11)
  {
    v13 = 1;
    goto LABEL_12;
  }

  if ([v9 branchedTokenIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (documentLocation > location)
    {
      v13 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v16 = [(TIRevisionHistory *)self tokenization];
    v13 = tokenIndex < [v16 count];

    goto LABEL_12;
  }

  v14 = [(TIRevisionHistory *)self selectedRange];
  v13 = 0;
  if (location >= v14 + v15 && documentLocation <= location)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v13;
}

- (BOOL)originalIterator:(_TIRevisionHistoryTokenIterator)a3 matchesRevisedDocumentRange:(_NSRange)a4 andTokenID:(TITokenID)a5
{
  length = a4.length;
  location = a4.location;
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v11 = [(TIRevisionHistory *)self tokenization];
  v12 = [v11 count];

  if (tokenIndex >= v12)
  {
    return 0;
  }

  v13 = [(TIRevisionHistory *)self tokenization];
  v14 = [v13 objectAtIndex:tokenIndex];

  if ((!HIDWORD(*&a5) || [v14 tokenID] == a5) && objc_msgSend(v14, "offset") + documentLocation == location)
  {
    v15 = [v14 tokenInputString];
    v16 = [v15 length] == length;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)adjustTokenOffsetAfterDeletedTokenRange:(_NSRange)a3 withDeletedCharacterCount:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8 = a3.location + a3.length;
  v9 = [(TIRevisionHistory *)self tokenization];
  v10 = [v9 count];

  if (v8 < v10)
  {
    for (i = 0; length; --length)
    {
      v12 = [(TIRevisionHistory *)self tokenization];
      v13 = [v12 objectAtIndex:location];

      v14 = [v13 offset];
      v15 = [v13 tokenInputString];
      i += v14 + [v15 length];

      ++location;
    }

    v16 = [(TIRevisionHistory *)self tokenization];
    v19 = [v16 objectAtIndex:v8];

    v17 = [v19 offset];
    [(TIRevisionHistory *)self selectedRange];
    [v19 setOffset:i - a4 + v17 + v18];
  }
}

- (unint64_t)tokenizeDocumentTextInRange:(_NSRange)a3 withTokenHandler:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(TIRevisionHistory *)self documentText];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__TIRevisionHistory_tokenizeDocumentTextInRange_withTokenHandler___block_invoke;
  v12[3] = &unk_278730D28;
  v12[4] = self;
  v13 = v7;
  v14 = &v15;
  v9 = v7;
  [v8 enumerateSubstringsInRange:location options:length usingBlock:{514, v12}];

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
  v17 = 0;
  v18 = 0;
  v16 = "";
  v17 = [(TIRevisionHistory *)self currentTokenIterator];
  v18 = v3;
  if ([(TIRevisionHistory *)self selectedRange])
  {
    v4 = [(TIRevisionHistory *)self documentText];
    v5 = [(TIRevisionHistory *)self selectedRange];
    v7 = [v4 _UTF8SizeOfRange:{v5, v6}];

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

- (id)nonEmptyTokensInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3.length]; length; --length)
  {
    v7 = [(TIRevisionHistory *)self tokenization];
    v8 = [v7 objectAtIndex:location];

    v9 = [v8 tokenInputString];
    v10 = [v9 length];

    if (v10)
    {
      [i addObject:v8];
    }

    ++location;
  }

  return i;
}

- (_NSRange)selectedTokenRangeWithIterator:(_TIRevisionHistoryTokenIterator)a3
{
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v6 = [(TIRevisionHistory *)self tokenization];
  if (tokenIndex >= [v6 count])
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
      v9 = [(TIRevisionHistory *)self selectedRange];
      v11 = v9 + v10;

      if (documentLocation >= v11)
      {
        break;
      }

      v12 = [(TIRevisionHistory *)self documentRangeOfTokenAtIterator:tokenIndex, documentLocation];
      v14 = v12;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL || (v15 = 0x7FFFFFFFFFFFFFFFLL, v12 + v13 > [(TIRevisionHistory *)self selectedRange]) && (v8 = tokenIndex, tokenIndex != 0x7FFFFFFFFFFFFFFFLL))
      {
        v16 = [(TIRevisionHistory *)self selectedRange];
        if (v14 < v16 + v17)
        {
          ++v7;
        }

        v15 = v8;
      }

      tokenIndex = [(TIRevisionHistory *)self nextTokenIterator:tokenIndex, documentLocation];
      documentLocation = v18;
      v6 = [(TIRevisionHistory *)self tokenization];
      v8 = v15;
      if (tokenIndex >= [v6 count])
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

- (_TIRevisionHistoryTokenIterator)previousTokenIterator:(_TIRevisionHistoryTokenIterator)a3
{
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v5 = [(TIRevisionHistory *)self tokenization];
  v6 = [v5 objectAtIndex:--tokenIndex];

  v7 = [v6 offset];
  v8 = [v6 tokenInputString];
  v9 = [v8 length];

  v10 = documentLocation - v7 - v9;
  v11 = tokenIndex;
  result.documentLocation = v10;
  result.tokenIndex = v11;
  return result;
}

- (_TIRevisionHistoryTokenIterator)nextTokenIterator:(_TIRevisionHistoryTokenIterator)a3
{
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v5 = [(TIRevisionHistory *)self tokenization];
  v6 = [v5 objectAtIndex:tokenIndex];

  v7 = [v6 offset];
  v8 = [v6 tokenInputString];
  v9 = [v8 length];

  v10 = tokenIndex + 1;
  v11 = v7 + documentLocation + v9;
  result.documentLocation = v11;
  result.tokenIndex = v10;
  return result;
}

- (_NSRange)documentRangeOfTokenAtIterator:(_TIRevisionHistoryTokenIterator)a3
{
  documentLocation = a3.documentLocation;
  tokenIndex = a3.tokenIndex;
  v5 = [(TIRevisionHistory *)self tokenization];
  v6 = [v5 objectAtIndex:tokenIndex];

  v7 = [v6 offset];
  v8 = [v6 tokenInputString];
  v9 = [v8 length];

  v10 = v7 + documentLocation;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)tokenAtIterator:(_TIRevisionHistoryTokenIterator)a3
{
  tokenIndex = a3.tokenIndex;
  v4 = [(TIRevisionHistory *)self tokenization:a3.tokenIndex];
  v5 = [v4 objectAtIndex:tokenIndex];

  return v5;
}

- (void)collectPFLTelemetryForTokenAtIndex:(unint64_t)a3
{
  v5 = [(TIRevisionHistory *)self tokenization];
  v15 = [v5 objectAtIndex:a3];

  v6 = [v15 tokenID];
  v7 = v15;
  if (HIDWORD(v6) == 2)
  {
    v6 = [v15 isAccepted];
    v7 = v15;
    if ((v6 & 1) == 0)
    {
      v8 = [(TIRevisionHistory *)self tokenization];
      v9 = [v8 count];

      v10 = 0;
      do
      {
        if (a3 >= v9)
        {
          break;
        }

        ++v10;
        v11 = [(TIRevisionHistory *)self tokenization];
        v12 = [v11 objectAtIndex:a3];

        v13 = [v12 tokenID];
        --a3;
      }

      while (HIDWORD(v13) != 1);
      v7 = v15;
      if (v10 >= 5)
      {
        v14 = [(TIRevisionHistory *)self delegate];
        [v14 incrementUsageTrackingKeyForAppWithIsSentence:1];

        v7 = v15;
      }
    }
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)migrateUserTypingFromDeletedTokens:(id)a3 toInsertedTokens:(id)a4 withUsageLearningMask:(unsigned int)a5 usageTrackingMask:(unsigned int)a6
{
  v31 = a5;
  v32 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v7 objectAtIndex:v8];
      if (v8 >= [v32 count])
      {
        v10 = 0;
      }

      else
      {
        v10 = [v32 objectAtIndex:v8];
      }

      v11 = [v10 userTyping];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = &stru_283FDFAF8;
      }

      [v9 setUserTyping:v13];

      v14 = [v7 lastObject];
      if (v9 != v14)
      {
        goto LABEL_18;
      }

      v15 = [v7 count];
      v16 = [v32 count];

      if (v15 < v16)
      {
        break;
      }

LABEL_19:
      [v9 setUsageLearningMask:{objc_msgSend(v10, "usageLearningMask")}];
      [v9 setUsageTrackingMask:{objc_msgSend(v10, "usageTrackingMask")}];
      v24 = [v9 tokenInputString];
      v25 = [v9 userTyping];
      v26 = [v24 isEqualToString:v25];

      if ((v26 & 1) == 0)
      {
        [v9 setUsageLearningMask:{objc_msgSend(v9, "usageLearningMask") | v31 & 5}];
      }

      if (!v8)
      {
        if ((v31 & 2) != 0)
        {
          [v9 setUsageLearningMask:{objc_msgSend(v9, "usageLearningMask") | 2}];
        }

        v27 = [v9 tokenInputString];
        v28 = [v10 tokenInputString];
        v29 = [v27 isEqualToString:v28];

        if ((v29 & 1) == 0)
        {
          [v9 setUsageTrackingMask:a6];
        }
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_27;
      }
    }

    v17 = objc_alloc(MEMORY[0x277CCAB68]);
    v18 = [v10 userTyping];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_283FDFAF8;
    }

    v14 = [v17 initWithString:v20];

    for (i = v8 + 1; i < [v32 count]; ++i)
    {
      v22 = [v32 objectAtIndex:i];
      v23 = [v22 userTyping];
      [v14 appendFormat:@" %@", v23];
    }

    [v9 setUserTyping:v14];
LABEL_18:

    goto LABEL_19;
  }

LABEL_27:
}

- (void)acceptTokensInRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v6 = [(TIRevisionHistory *)self contextForTokenAtIndex:?];
    v41 = *MEMORY[0x277D6FBE0];
    v42 = *MEMORY[0x277D6FBD8];
    v45 = v6;
    while (1)
    {
      v7 = [(TIRevisionHistory *)self tokenization];
      v8 = [v7 objectAtIndex:location];

      if ([v8 tokenID] >> 32)
      {
        v10 = 0;
      }

      else
      {
        v9 = [v8 tokenInputString];
        v10 = [v9 length];

        if (v10)
        {
          v50 = 0;
          v11 = [(TIRevisionHistory *)self delegate];
          v12 = [v8 tokenInputString];
          v49 = 0;
          v13 = [v11 findTokenIDForWord:v12 contextTokens:v6 tokenLookupMode:22 surfaceFormPtr:&v49 hasCaseInsensitiveStaticVariant:&v50];
          v14 = v49;

          v15 = v50;
          if (HIDWORD(v13) || ([v8 isAccepted] & 1) != 0)
          {
            [v8 setTokenID:v13];
          }

          else
          {
            v47 = v15;
            v29 = [(TIRevisionHistory *)self delegate];
            v30 = [v8 tokenInputString];
            v48 = v14;
            v31 = [v29 addWord:v30 contextTokens:v6 surfaceFormPtr:&v48];
            v32 = v48;

            [v8 setTokenID:v31];
            v33 = [(TIRevisionHistory *)self lastRejectedToken];
            if (v33)
            {
              v34 = v33;
              v44 = v32;
              v35 = [(TIRevisionHistory *)self lastRejectedToken];
              v36 = [v35 tokenInputString];
              v37 = [v8 tokenInputString];
              v38 = [v36 isEqualToString:v37];
              v39 = v50;

              if ((v38 & 1) == 0)
              {
                v15 = v47;
                if ((v39 & 1) == 0)
                {
                  v40 = [(TIRevisionHistory *)self delegate];
                  [v40 incrementUsageTrackingKey:v41];
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
            v18 = [v8 tokenInputString];
            [v8 setTokenDictionaryString:v18];
          }

          v19 = [(TIRevisionHistory *)self lastRejectedToken];
          if (v19)
          {
            v20 = v19;
            v21 = [(TIRevisionHistory *)self lastRejectedToken];
            v22 = [v21 tokenInputString];
            [v8 tokenInputString];
            v23 = v14;
            v25 = v24 = v15;
            v46 = [v22 isEqualToString:v25];
            v43 = v50;

            v15 = v24;
            v14 = v23;

            if ((v46 & 1) == 0 && (v43 & 1) == 0)
            {
              v26 = [(TIRevisionHistory *)self delegate];
              [v26 incrementUsageTrackingKey:v42];
            }
          }

          v10 = v15 ^ 1u;

          v6 = v45;
        }
      }

      [(TIRevisionHistory *)self collectPFLTelemetryForTokenAtIndex:location];
      [(TIRevisionHistory *)self acceptToken:v8 contextTokens:v6 saveToDifferentialPrivacy:v10];
      v27 = [v8 tokenID];
      v28 = [v8 tokenInputString];
      [v6 appendToken:v27 string:v28];

      ++location;
      if (!--length)
      {

        return;
      }
    }
  }
}

- (id)contextForTokenAtIndex:(unint64_t)a3
{
  v5 = objc_alloc_init(TIContextTokens);
  if (a3)
  {
    v6 = 0;
    v7 = a3 - 1;
    while (1)
    {
      v8 = [(TIRevisionHistory *)self tokenization];
      v9 = [v8 objectAtIndex:v7];

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

  if (v7 < a3)
  {
    do
    {
      v10 = [(TIRevisionHistory *)self tokenization];
      v11 = [v10 objectAtIndex:v7];

      v12 = [v11 tokenID];
      v13 = [v11 tokenInputString];
      [(TIContextTokens *)v5 appendToken:v12 string:v13];

      ++v7;
    }

    while (a3 != v7);
  }

  v14 = [(TIRevisionHistory *)self delegate];
  [v14 fillReversedConversationHistoryInContext:v5];

  return v5;
}

- (void)rejectToken:(id)a3 contextTokens:(id)a4 negativeLearningHint:(int)a5 withRevisedToken:(id)a6
{
  v27 = a3;
  v10 = a4;
  v11 = a6;
  if ([v27 isAccepted])
  {
    v12 = [v27 tokenInputString];
    v13 = [v11 tokenInputString];
    if (![v12 isEqualToString:v13])
    {
      v14 = [v27 tokenInputString];
      if ([v14 length])
      {
        v15 = [v27 tokenInputString];
        v16 = [v15 _containsSymbolsAndPunctuationOnly];

        if (v16)
        {
LABEL_13:
          v21 = [(TIRevisionHistory *)self delegate];
          if ([v21 isStringBasedModel])
          {
            [v27 tokenInputString];
          }

          else
          {
            [v27 tokenDictionaryString];
          }
          v19 = ;

          v22 = [v27 tokenLatinInputString];
          if (v22)
          {
            v20 = [v27 tokenLatinInputString];
          }

          else
          {
            v20 = &stru_283FDFAF8;
          }

          v23 = [(TIRevisionHistory *)self delegate];
          [v23 decrementLanguageModelCount:v19 latinInputString:v20 tokenID:objc_msgSend(v27 contextTokens:{"tokenID"), v10}];

          if (a5 && ([v27 tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000)
          {
            v24 = [(TIRevisionHistory *)self delegate];
            v25 = [v27 tokenInputString];
            [v24 softLearningRegisterDeleted:v25];
          }

          [v27 setAccepted:0];
          if ([v27 tokenID] >> 32 == 1)
          {
            [(TIRevisionHistory *)self setShouldReportRevisionToDP:0];
          }

          else
          {
            v26 = [(TIRevisionHistory *)self lastRejectedToken];

            if (v26)
            {
              [(TIRevisionHistory *)self setShouldReportRevisionToDP:0];
            }

            if (([v27 tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000)
            {
              [(TIRevisionHistory *)self setLastRejectedToken:v27];
            }
          }

          goto LABEL_28;
        }

        v17 = [(TIRevisionHistory *)self delegate];
        [v17 incrementUsageTrackingKey:*MEMORY[0x277D6FBE8]];

        v12 = [(TIRevisionHistory *)self delegate];
        [v12 incrementUsageTrackingKeyForAutocorrectionStatistic:*MEMORY[0x277D6FAD0] autocorrectionTypes:{objc_msgSend(v27, "usageTrackingMask")}];
LABEL_12:

        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v18 = [v27 usageLearningMask];
  if (a5 && (v18 & 4) != 0 && ([v27 tokenID] - 0x1F400000000) < 0xFFFFFE0D00000000)
  {
    v19 = [(TIRevisionHistory *)self delegate];
    v20 = [v27 tokenInputString];
    [v19 softLearningRegisterDeleted:v20];
LABEL_28:
  }
}

- (TIRevisionHistory)initWithLocale:(id)a3
{
  v4 = a3;
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
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(TIRevisionHistory *)self initWithLocale:v3];

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

+ (id)documentStateTrimmedToSentenceForState:(id)a3
{
  v3 = a3;
  v4 = [v3 contextBeforeInput];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_283FDFAF8;
  }

  v7 = [v3 selectedText];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  v10 = [(__CFString *)v6 stringByAppendingString:v9];
  v11 = [v3 contextAfterInput];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_283FDFAF8;
  }

  v14 = [v10 stringByAppendingString:v13];

  v15 = [v3 contextBeforeInput];
  v16 = [v15 length];
  v17 = [v3 selectedText];
  v18 = [v17 length];

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
  v23 = [v3 selectedText];

  v24 = [v21 documentStateWithContextBefore:v22 selectedText:v23 contextAfter:v33[5]];

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