@interface TIKeyboardInputManagerChinesePhonetic
+ (id)ambiguousAndPinyinCharacterSet;
+ (id)ambiguousDefaults;
+ (id)ambiguousPinyinSet;
+ (id)directlyCommittedCharacterSetForEmptyInline;
+ (id)stringFallBackForTenKeyInput:(id)a3 range:(_NSRange)a4;
- (BOOL)_shouldCommitInputDirectly:(id)a3;
- (BOOL)canStartSentenceAfterString:(id)a3;
- (BOOL)generateReanalysisCandidatesIfAppropriate;
- (BOOL)handleDirectlyCommitForInput:(id)a3 withContext:(id)a4;
- (BOOL)hasExtensionEmojiCandidates;
- (BOOL)hasLockedSyllable;
- (BOOL)inputContinuesGB18030OrUnicodeLookupKey:(id)a3;
- (BOOL)isPhraseBoundarySet;
- (BOOL)isSpecialInput:(id)a3;
- (BOOL)shouldDelayUpdateComposedText;
- (BOOL)supportsNumberKeySelection;
- (BOOL)updateCandidatesByWaitingForResults:(BOOL)a3;
- (BOOL)usesGeometryModelData;
- (NSString)convertedInput;
- (NSString)inputStringForSearch;
- (NSString)internalInputString;
- (NSString)unconvertedInput;
- (TIKeyboardCandidate)candidateForInlineTextSegmentation;
- (TIKeyboardInputManagerChinesePhonetic)initWithConfig:(id)a3 keyboardState:(id)a4;
- (_NSRange)analysisStringRange;
- (id)SegmentedPinyin:(id)a3 inputMethodType:(int)a4;
- (id)composedTextForSelectedCandidate:(id)a3 remainingInput:(id)a4;
- (id)defaultCandidate;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)externalStringToInternal:(id)a3;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)internalStringToExternal:(id)a3;
- (id)keyboardBehaviors;
- (id)keyboardConfigurationLayoutTag;
- (id)newInputManagerState;
- (id)remapInput:(id)a3 isFacemarkInput:(BOOL *)a4;
- (id)searchStringForMarkedText;
- (id)segmentedInputFromString:(id)a3;
- (id)sortingMethods;
- (id)stringByPrependingConvertedCandidateTextToString:(id)a3;
- (id)stringByRemovingSyllableSeparatorsFromString:(id)a3;
- (id)stringByStrippingConvertedCandidateTextFromString:(id)a3;
- (id)uncommittedText;
- (unint64_t)internalInputCount;
- (unint64_t)internalInputIndex;
- (unint64_t)predictionOptions;
- (unsigned)externalIndexToInternal:(unsigned int)a3 shouldBoundToInputCount:(BOOL)a4;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (unsigned)internalIndexToExternal:(unsigned int)a3;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)addInputToInternal:(id)a3;
- (void)autocommitHeadSegmentWithContext:(id)a3;
- (void)clearDynamicDictionary;
- (void)clearInput;
- (void)clearPinyinSyllableSelection;
- (void)dealloc;
- (void)didDeleteCandidates:(id)a3;
- (void)handleAcceptedPinyinDisambiguationCandidate:(id)a3 keyboardState:(id)a4;
- (void)inputLocationChanged;
- (void)lastAcceptedCandidateCorrected;
- (void)resume;
- (void)revertLastDisambiguation;
- (void)setInput:(id)a3;
- (void)setPhraseBoundary:(unint64_t)a3;
- (void)shiftPinyinSyllableSelection;
- (void)storeLanguageModelDynamicDataIncludingCache;
- (void)suspend;
- (void)syncToLayoutState:(id)a3;
- (void)updateComposedText;
- (void)wordSearchEngineDidFindCandidates:(id)a3 forOperation:(id)a4;
- (void)wordSearchEngineDidFindPredictionCandidates:(id)a3;
@end

@implementation TIKeyboardInputManagerChinesePhonetic

- (void)autocommitHeadSegmentWithContext:(id)a3
{
  v4 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v4 cancel];

  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
    v11 = [v5 firstObject];

    v6 = objc_alloc(MEMORY[0x277D6FE00]);
    v7 = [v11 surface];
    v8 = [v11 reading];
    v9 = [v6 initWithCandidateText:v7 convertedInput:v8];

    v10 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v10 composeNew:v9];
  }
}

- (BOOL)usesGeometryModelData
{
  v2 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  v3 = [v2 hardwareKeyboardMode];

  return v3 ^ 1;
}

- (BOOL)generateReanalysisCandidatesIfAppropriate
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 selectedText];

  v6 = [(TIKeyboardInputManagerChinese *)self language];
  v7 = [v5 _stringByTranscribingFromLanguage:v6];

  if ([(TIKeyboardInputManagerChinesePhonetic *)self inputMethodType]== 5)
  {
    v8 = @"Latin-Bopomofo";
  }

  else
  {
    v8 = *MEMORY[0x277CBF108];
  }

  v9 = [v7 _stringByApplyingTransform:v8];

  v10 = [TIWordSearchChinesePhoneticOperationGetCandidates alloc];
  v11 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v12 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  v13 = [v12 hardwareKeyboardMode];
  v14 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  LOBYTE(v20) = v13;
  BYTE2(v19) = 1;
  LOWORD(v19) = 257;
  v15 = [TIWordSearchChinesePhoneticOperationGetCandidates initWithWordSearch:v10 inputString:"initWithWordSearch:inputString:keyboardInput:segmentBreakIndex:disambiguationCandidates:unambiguousSyllableCount:selectedDisambiguationCandidateIndex:regenerateDisambiguationCandidates:predictionEnabled:reanalysisMode:target:action:geometryModelData:hardwareKeyboardMode:logger:" keyboardInput:v11 segmentBreakIndex:v9 disambiguationCandidates:0 unambiguousSyllableCount:0x7FFFFFFFFFFFFFFFLL selectedDisambiguationCandidateIndex:0 regenerateDisambiguationCandidates:0 predictionEnabled:0x7FFFFFFFFFFFFFFFLL reanalysisMode:v19 target:self action:sel_wordSearchEngineDidFindCandidates_forOperation_ geometryModelData:0 hardwareKeyboardMode:v20 logger:v14];

  v16 = [(TIWordSearchOperationGetCandidates *)v15 results];

  if (v16)
  {
    v17 = [(TIWordSearchOperationGetCandidates *)v15 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v17];
  }

  else
  {
    v17 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v17 performOperationAsync:v15];
  }

  return v16 != 0;
}

- (id)composedTextForSelectedCandidate:(id)a3 remainingInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isInAmbiguousMode)
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self filterCandidatesUsingInputIndex])
    {
      v8 = [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable];
      v9 = *MEMORY[0x277D6FF28];
      if (v8 || (v10 = *(&self->super.super.super.super.super.super.isa + v9), -[TIKeyboardInputManagerChinesePhonetic composedTextBeforeFirstSyllableLocked](self, "composedTextBeforeFirstSyllableLocked"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = [v10 isEqualToString:v11], v11, (v10 & 1) == 0))
      {
        v29 = *(&self->super.super.super.super.super.super.isa + v9);
        goto LABEL_27;
      }
    }
  }

  v12 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v6];
  if (self->_isInAmbiguousMode && v12 == 0)
  {
    v29 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]);
LABEL_27:
    v38 = v29;
    v15 = v7;
    goto LABEL_39;
  }

  v14 = v12;
  v15 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:v7];

  v16 = [v6 input];
  v17 = v16;
  v18 = &stru_287EBF4E8;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [(__CFString *)v19 length];
  v21 = [v15 length];
  v22 = v21;
  if (self->_isInAmbiguousMode)
  {
    if (v21 < v20 || !v21)
    {
      goto LABEL_37;
    }

    v23 = MEMORY[0x277D6F448];
    v24 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
    v25 = [v23 displayReadingFromMecabraCandidate:v14 syllableSeparator:v24];

    v26 = v22 - v20;
    if (v26)
    {
      v28 = [MEMORY[0x277CCAB68] string];
      if ([v25 length])
      {
        [v28 appendString:v25];
      }

      v40 = [objc_opt_class() stringFallBackForTenKeyInput:v15 range:{v20, v26}];
      [v28 appendString:v40];
    }

    else
    {
      v27 = [v25 length] ? v25 : 0;
      v28 = v27;
    }

    if (!v28)
    {
LABEL_37:
      v28 = [objc_opt_class() stringFallBackForTenKeyInput:v15 range:{0, objc_msgSend(v15, "length")}];
    }

    goto LABEL_38;
  }

  v30 = MEMORY[0x277D6F448];
  v31 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v32 = [v30 displayReadingFromMecabraCandidate:v14 syllableSeparator:v31];

  if (v14 && ([v15 hasPrefix:v19] & 1) != 0)
  {
    if (v6)
    {
      v28 = v32;
      if (v22 > v20)
      {
        v33 = [(TIKeyboardInputManagerChinesePhonetic *)self segmentedInputFromString:v15];
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 1;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = [v33 length];
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x2020000000;
        v53[3] = 0;
        v34 = [v33 length];
        v42 = MEMORY[0x277D85DD0];
        v43 = 3221225472;
        v44 = __89__TIKeyboardInputManagerChinesePhonetic_composedTextForSelectedCandidate_remainingInput___block_invoke;
        v45 = &unk_279D9D5F0;
        v52 = v20;
        v49 = v53;
        v50 = &v54;
        v35 = v33;
        v46 = v35;
        v47 = self;
        v48 = v19;
        v51 = &v58;
        [v35 enumerateSubstringsInRange:0 options:v34 usingBlock:{514, &v42}];
        if (*(v59 + 24) == 1)
        {
          v36 = [v35 substringFromIndex:{v55[3], v42, v43, v44, v45, v46, v47}];
          v37 = [v28 stringByAppendingString:v36];

          v28 = v36;
        }

        else
        {
          v37 = 0;
        }

        _Block_object_dispose(v53, 8);
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);

        v28 = v37;
      }

      if (v28)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {

    v6 = 0;
  }

  v39 = [(TIKeyboardInputManagerChinesePhonetic *)self segmentedInputFromString:v15, v42, v43, v44, v45];
  if (!v39)
  {
    v39 = v15;
  }

  v28 = v39;
LABEL_32:

LABEL_38:
  v38 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v28, v42, v43, v44, v45];

LABEL_39:

  return v38;
}

- (BOOL)hasLockedSyllable
{
  v2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)segmentedInputFromString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCAB68] string];
    v23 = 0;
    v24 = &v23;
    v25 = 0x4012000000;
    v26 = __Block_byref_object_copy__507;
    v27 = __Block_byref_object_dispose__508;
    v28 = &unk_26D4823EB;
    v29 = xmmword_26D480950;
    v6 = [v4 length];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __66__TIKeyboardInputManagerChinesePhonetic_segmentedInputFromString___block_invoke;
    v18 = &unk_279D9D5A0;
    v19 = self;
    v7 = v4;
    v20 = v7;
    v22 = &v23;
    v8 = v5;
    v21 = v8;
    [v7 enumerateSubstringsInRange:0 options:v6 usingBlock:{514, &v15}];
    if (v24[6] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v8 length])
      {
        v9 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
        [v8 appendString:v9];
      }

      v10 = [v7 substringWithRange:{v24[6], v24[7]}];
      v11 = [(TIKeyboardInputManagerChinesePhonetic *)self SegmentedPinyin:v10 inputMethodType:[(TIKeyboardInputManagerChinesePhonetic *)self inputMethodType]];
      [v8 appendString:v11];
    }

    v12 = v21;
    v13 = v8;

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = v4;
  }

  return v13;
}

void __66__TIKeyboardInputManagerChinesePhonetic_segmentedInputFromString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  if (a4 == 1 && ([*(a1 + 32) validCharacterSetForSegmentation], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "characterIsMember:", objc_msgSend(*(a1 + 40), "characterAtIndex:", a3)), v7, v8))
  {
    v9 = *(*(a1 + 56) + 8);
    if (*(v9 + 48) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v9 + 48) = a3;
      *(v9 + 56) = 1;
    }

    else
    {
      ++*(v9 + 56);
    }
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 48) != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([*(a1 + 48) length])
      {
        v10 = *(a1 + 48);
        v11 = [*(a1 + 32) syllableSeparator];
        [v10 appendString:v11];
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v14 = [*(a1 + 40) substringWithRange:{*(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
      v15 = [v12 SegmentedPinyin:v14 inputMethodType:{objc_msgSend(*(a1 + 32), "inputMethodType")}];
      [v13 appendString:v15];

      *(*(*(a1 + 56) + 8) + 48) = 0x7FFFFFFFFFFFFFFFLL;
    }

    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) substringWithRange:{a3, a4}];
    [v16 appendString:v17];
  }
}

- (id)SegmentedPinyin:(id)a3 inputMethodType:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    if (a4 == 13)
    {
      v8 = [MEMORY[0x277CCAB68] string];
      v9 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
      v10 = v9;
      if (v9)
      {
        v11 = [v9 count];
        if (v11 >= 1)
        {
          v12 = v11;
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = [v10 objectAtIndexedSubscript:v13];
            v16 = [v15 intValue];

            v17 = [v7 substringWithRange:{v14, v16}];
            [v8 appendString:v17];
            if (++v13 < v12)
            {
              v18 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
              [v8 appendString:v18];

              v14 += v16;
            }
          }

          while (v12 != v13);
        }
      }
    }

    else
    {
      v8 = [MEMORY[0x277CCAB68] string];
      MecabraSyllablesCreateWithString();
      SyllableCount = MecabraSyllablesGetSyllableCount();
      if (SyllableCount)
      {
        v20 = SyllableCount;
        for (i = 0; i != v20; ++i)
        {
          v22 = MecabraSyllablesGetSyllableAtIndex();
          if ([v22 length])
          {
            if ([v8 length])
            {
              v23 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
              [v8 appendString:v23];
            }

            [v8 appendString:v22];
          }
        }
      }

      MecabraSyllablesRelease();
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (TIKeyboardCandidate)candidateForInlineTextSegmentation
{
  if (self->_isInAmbiguousMode)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v3 = [v4 currentCandidate];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v3 = 0;
  }

  v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v6 = [v5 candidates];

  if (!v3)
  {
    if ([v6 count])
    {
      v3 = [v6 objectAtIndex:0];
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v3 isEqual:v7];

  if (v8)
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)isPhraseBoundarySet
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v4 = [v3 inputs];
    v5 = [v4 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v8 = v7;
    if (isKindOfClass)
    {
      v9 = [v7 inputs];
      v10 = [v9 firstObject];

      v11 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
      v12 = [v10 externalSuffix:v11];
      v13 = [v12 length] != 0;
    }

    else
    {
      v15 = [v7 asInlineText];

      v16 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v17 = [v16 asInlineTextCursorIndex];

      v13 = v17 < [v15 length];
    }
  }

  else
  {
    v14 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    return v14 != [(TIKeyboardInputManagerChinesePhonetic *)self internalInputCount];
  }

  return v13;
}

- (BOOL)shouldDelayUpdateComposedText
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinesePhonetic;
  return [(TIKeyboardInputManagerMecabra *)&v5 shouldDelayUpdateComposedText]|| self->_isInAmbiguousMode;
}

- (void)updateComposedText
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v15 = [v3 asInlineText];
  }

  else
  {
    v15 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  }

  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
  if (v4)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v6 = [v5 candidates];
    v7 = [v6 firstObject];

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      v8 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      if (![v8 hasKindOf:objc_opt_class()])
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = [v7 input];

      if (v9)
      {
        v8 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v10 = [v8 asCommittedText];
        v11 = [v7 input];
        v12 = [v10 stringByAppendingString:v11];

        v15 = v12;
        goto LABEL_9;
      }
    }

LABEL_10:
    v13 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextForSelectedCandidate:v4 remainingInput:v15];

    goto LABEL_17;
  }

  if (!self->_isInAmbiguousMode)
  {
    v14 = v15;
    goto LABEL_18;
  }

  if (self->_lockingPinyinSyllableSelection)
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self composedTextBeforeFirstSyllableLocked];
  }

  else
  {
    [objc_opt_class() stringFallBackForTenKeyInput:v15 range:{0, objc_msgSend(v15, "length")}];
  }
  v13 = ;
  v7 = v15;
LABEL_17:

  v14 = v13;
LABEL_18:
  v16 = v14;
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]) setString:v14];
}

- (void)wordSearchEngineDidFindPredictionCandidates:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v4 wordSearchEngineDidFindPredictionCandidates:a3];
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self logInputString];
  }
}

- (void)wordSearchEngineDidFindCandidates:(id)a3 forOperation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  [v8 markTime:4];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__TIKeyboardInputManagerChinesePhonetic_wordSearchEngineDidFindCandidates_forOperation___block_invoke;
  v10[3] = &unk_279D9D620;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  v9 = v6;
  [(TIKeyboardInputManagerMecabra *)self addStickers:v7 withCompletionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __88__TIKeyboardInputManagerChinesePhonetic_wordSearchEngineDidFindCandidates_forOperation___block_invoke(uint64_t a1, void *a2)
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_73;
  }

  v6 = [WeakRetained composingInput];
  v7 = [v6 composingInput];

  v8 = arc4random();
  v9 = 0x277D6F000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    kdebug_trace();
    v10 = kac_get_log();
    v11 = os_signpost_id_make_with_pointer(v10, v8);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26D460000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "kbdCPMecabraSetMarkedText", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  [v5 setWordSearchCandidateResultSet:v3];
  [v5 updateComposedText];
  [v5 setMarkedText];
  if (_os_feature_enabled_impl())
  {
    v13 = [v3 candidates];
    v14 = [v13 firstObject];
    v15 = [v5 segmentsFromCandidate:v14 phraseBoundary:0];
    [v5 setSegments:v15];
  }

  v16 = [v5 wordSearchCandidateResultSet];
  v17 = [v5 rawInputString];
  [v5 updateProactiveCandidatesForCandidateResultSet:v16 withInput:v17];

  v18 = [v5 wordSearchCandidateResultSet];
  v19 = [v5 candidateResultSetFromWordSearchCandidateResultSet:v18];

  v20 = *(a1 + 32);
  v21 = [v20 keyboardInput];
  v104 = v8;
  v105 = v19;
  if (([v21 hasDrawInput] & 1) != 0 && (objc_msgSend(v20, "lastAcceptCandidateInput"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    v24 = v3;
    v25 = [v20 lastAcceptCandidateInput];
    v26 = [v25 remainingMecabraInputs];
    if ([v26 count])
    {

      v3 = v24;
      v19 = v105;
    }

    else
    {
      v59 = [v20 lastAcceptCandidateInput];
      v60 = [v59 remainingInputString];
      v103 = [v60 length];

      v9 = 0x277D6F000;
      v3 = v24;
      v19 = v105;
      if (!v103)
      {
        v61 = [v20 keyboardInput];
        v62 = [v61 asInlineText];
        [v105 setCommittedText:v62];

        v63 = [v5 composingInput];
        [v63 removeAllInputs];

        v64 = [v5 keyboardState];
        v65 = [v64 documentState];
        v66 = [v65 documentStateAfterUnmarkingText];
        v67 = [v5 keyboardState];
        [v67 setDocumentState:v66];

        v19 = v105;
        v9 = 0x277D6F000;

        [v5 updateComposedText];
        [v5 setMarkedText];
      }
    }
  }

  else
  {
  }

  if ([v5 isTypologyEnabled])
  {
    v27 = [v5 keyboardState];
    v28 = [v27 documentState];
    v29 = [v28 selectedText];
    v30 = [v29 length];

    v19 = v105;
    v9 = 0x277D6F000uLL;

    if (!v30)
    {
      [v5 logInputString];
    }
  }

  v31 = [v20 keyboardInput];
  v32 = [v31 composingInput];

  v33 = [v20 keyboardInput];
  v34 = [v33 inputs];
  if ([v34 count] != 1)
  {
    goto LABEL_21;
  }

  v35 = *(v9 + 3600);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [v32 isComplete])
  {
    v37 = [v3 candidates];
    v33 = [v37 firstObject];

    v38 = [v33 candidate];
    v39 = [v38 _graphemeCount];

    v34 = [v5 typingSessionMonitor];
    v40 = [v5 keyboardState];
    v41 = v39;
    v9 = 0x277D6F000uLL;
    [v34 addDrawInputWithSyllableCount:v41 keyboardState:v40];

LABEL_21:
  }

  v42 = *(v9 + 3600);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = *(v9 + 3600);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [v5 composingInput];
      v45 = [v44 inputs];
      v46 = [v45 count];
      v47 = [v20 keyboardInput];
      v48 = [v47 inputs];
      v102 = v3;
      v49 = [v48 count];

      v9 = 0x277D6F000;
      v50 = v46 == v49;
      v19 = v105;
      v3 = v102;
      if (v50)
      {
        v51 = v7;
        v52 = v32;
        v53 = [v20 keyboardInput];
        v54 = [v53 totalDrawSamples];

        if ([MEMORY[0x277D6FEB0] maxNumberOfDrawSamples] >= v54)
        {
LABEL_44:

          v9 = 0x277D6F000uLL;
          goto LABEL_45;
        }

        v101 = v52;
        v55 = [v5 composingInput];
        v56 = [v55 inputs];
        v57 = [v5 convertInputsToSyntheticInputUptoCount:{objc_msgSend(v56, "count")}];

        v58 = objc_alloc(MEMORY[0x277D6FE10]);
        if (v51)
        {
          [v51 keyboardLayout];
          [v51 rescaleKeyboardLayout];
        }

        else
        {
          v110 = 0;
          *buf = 0;
        }

        v68 = [v58 initWithKeyboardLayout:buf rescaleKeyboardLayout:&v110 shouldResample:{objc_msgSend(v5, "shouldResample")}];
        if (v110)
        {
          WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v110);
        }

        if (*buf)
        {
          WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(*buf);
        }

        v69 = [v101 inputs];
        LODWORD(v70) = [v69 count];

        v71 = [v51 inputs];
        v72 = [v71 count];

        if (v72 > v70)
        {
          v70 = v70;
          do
          {
            v73 = [v51 inputs];
            v74 = [v73 objectAtIndexedSubscript:v70];
            [v68 composeNew:v74];

            ++v70;
            v75 = [v51 inputs];
            v76 = [v75 count];
          }

          while (v76 > v70);
        }

        v77 = [v68 inputs];
        if (![v77 count])
        {
          v78 = [v51 inputs];
          v79 = [v78 count];

          if (!v79)
          {
LABEL_43:
            v81 = [v5 composingInput];
            [v81 composeNew:v68];

            v52 = v101;
            v3 = v102;
            goto LABEL_44;
          }

          v77 = [v51 inputs];
          v80 = [v77 lastObject];
          [v68 composeNew:v80];
        }

        goto LABEL_43;
      }
    }
  }

LABEL_45:
  v82 = *(v9 + 3600);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_61:
    if ([v5 closeCandidateGenerationContextWithResults:v19])
    {
      v92 = 0;
    }

    else
    {
      v92 = v19;
    }

    [v5 setMostRecentCandidateResultSetPendingDisplay:v92];
    goto LABEL_65;
  }

  if (![v7 isComplete])
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v87 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
    v84 = [v87 operations];

    v88 = [v84 countByEnumeratingWithState:&v106 objects:v112 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v107;
      while (2)
      {
        for (i = 0; i != v89; ++i)
        {
          if (*v107 != v90)
          {
            objc_enumerationMutation(v84);
          }

          if ([*(*(&v106 + 1) + 8 * i) isMemberOfClass:objc_opt_class()])
          {
            v19 = v105;
            [v105 setInputManagerHasPendingCandidatesUpdate:1];
            v9 = 0x277D6F000uLL;
            goto LABEL_60;
          }
        }

        v89 = [v84 countByEnumeratingWithState:&v106 objects:v112 count:16];
        if (v89)
        {
          continue;
        }

        break;
      }

      v9 = 0x277D6F000;
      v19 = v105;
    }

    goto LABEL_60;
  }

  v83 = [v20 keyboardInput];
  v84 = [v83 composingInput];

  v85 = *(v9 + 3600);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_60:

    goto LABEL_61;
  }

  v86 = [v84 isComplete];

  if (v86)
  {
    goto LABEL_61;
  }

LABEL_65:
  v93 = *(v9 + 3600);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    kdebug_trace();
    v94 = kac_get_log();
    v95 = os_signpost_id_make_with_pointer(v94, v104);
    if (v95 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v96 = v95;
      if (os_signpost_enabled(v94))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26D460000, v94, OS_SIGNPOST_INTERVAL_END, v96, "kbdCPMecabraSetMarkedText", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  v97 = [v5 logger];

  if (v97)
  {
    v98 = [v5 logger];
    v99 = [v5 internalInputString];
    [v98 endLoggingForInput:v99 atFinalTimeMark:5];
  }

LABEL_73:
  v100 = *MEMORY[0x277D85DE8];
}

- (id)stringByPrependingConvertedCandidateTextToString:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v6 = [v5 asCommittedText];
  }

  else
  {
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
  }

  v7 = [v6 stringByAppendingString:v4];

  return v7;
}

- (id)stringByStrippingConvertedCandidateTextFromString:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v6 = [v5 asCommittedText];

    v7 = [v4 length];
    if (v7 <= [v6 length])
    {
      v8 = &stru_287EBF4E8;
    }

    else
    {
      v8 = [v4 substringFromIndex:{objc_msgSend(v6, "length")}];
    }
  }

  else
  {
    v9 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    v10 = [v9 convertedLength];

    if (v10 <= [v4 length])
    {
      v8 = [v4 substringFromIndex:v10];
    }

    else
    {
      v8 = &stru_287EBF4E8;
    }
  }

  return v8;
}

- (NSString)convertedInput
{
  v2 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  v3 = [v2 convertedCandidateText];

  return v3;
}

- (NSString)unconvertedInput
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:v3];

  return v4;
}

- (NSString)inputStringForSearch
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v4 = [v3 asSearchString];
  }

  else
  {
    v3 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    v7 = [v6 convertedLength];

    if (-[TIKeyboardInputManagerChinesePhonetic filterCandidatesUsingInputIndex](self, "filterCandidatesUsingInputIndex") && v5 > v7 && v5 < [v3 length])
    {
      v8 = [v3 substringToIndex:v5];

      v3 = v8;
    }

    v9 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:v3];
    if ([v9 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = v3;
    }

    v4 = v10;
  }

  return v4;
}

- (_NSRange)analysisStringRange
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v4 = [v3 length];

  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  v6 = v4;
  if ([v5 convertedLength] < v4)
  {
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    v6 = [v7 convertedLength];
  }

  if ([(TIKeyboardInputManagerChinesePhonetic *)self filterCandidatesUsingInputIndex])
  {
    v8 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    if (v8 >= v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v8;
    }

    if (v8 > v6)
    {
      v4 = v9;
    }
  }

  v10 = v4 - v6;
  v11 = v6;
  result.length = v10;
  result.location = v11;
  return result;
}

- (BOOL)updateCandidatesByWaitingForResults:(BOOL)a3
{
  v3 = a3;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
  if ([v5 length] || -[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "inputs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9))
  {
    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v6 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self pinyinSyllableCandidates];
    v33 = v5;
    v32 = v34 = v6;
    if ([v32 count])
    {
      v31 = [(TIKeyboardInputManagerChinesePhonetic *)self selectedPinyinSyllableCandidateIndex];
    }

    else
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30 = [TIWordSearchChinesePhoneticOperationGetCandidates alloc];
    v29 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    v11 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v12 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v13 = [v12 count];
    v14 = [(TIKeyboardInputManagerChinesePhonetic *)self shouldAdvanceSyllableSelection];
    if (v3)
    {
      v15 = 0;
    }

    else
    {
      v15 = self;
    }

    if (v3)
    {
      v16 = 0;
    }

    else
    {
      v16 = sel_wordSearchEngineDidFindCandidates_forOperation_;
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v17 = v28 = v3;
    v18 = [v17 hardwareKeyboardMode];
    v19 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
    LOBYTE(v27) = v18;
    v26 = v16;
    *(&v25 + 1) = 1;
    LOBYTE(v25) = v14;
    v5 = v33;
    v20 = [TIWordSearchChinesePhoneticOperationGetCandidates initWithWordSearch:v30 inputString:"initWithWordSearch:inputString:keyboardInput:segmentBreakIndex:disambiguationCandidates:unambiguousSyllableCount:selectedDisambiguationCandidateIndex:regenerateDisambiguationCandidates:predictionEnabled:reanalysisMode:target:action:geometryModelData:hardwareKeyboardMode:logger:" keyboardInput:v29 segmentBreakIndex:v33 disambiguationCandidates:v11 unambiguousSyllableCount:0x7FFFFFFFFFFFFFFFLL selectedDisambiguationCandidateIndex:v32 regenerateDisambiguationCandidates:v13 predictionEnabled:v31 reanalysisMode:v25 target:v15 action:v26 geometryModelData:v34 hardwareKeyboardMode:v27 logger:v19];

    v21 = [(TIWordSearchOperationGetCandidates *)v20 results];

    if (!v21)
    {
      v22 = [(TIKeyboardInputManagerChinese *)self wordSearch];
      [v22 performOperationAsync:v20];

      if (!v28)
      {
        v10 = 0;
        goto LABEL_21;
      }

      [(TIWordSearchChinesePhoneticOperationGetCandidates *)v20 waitUntilFinished];
    }

    v23 = [(TIWordSearchOperationGetCandidates *)v20 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v23];

    [(TIKeyboardInputManagerChinesePhonetic *)self updateComposedText];
    v10 = 1;
LABEL_21:

    goto LABEL_22;
  }

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  v10 = 1;
LABEL_22:

  return v10;
}

- (void)clearDynamicDictionary
{
  v2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v2 clearLearningDictionary];
}

- (void)lastAcceptedCandidateCorrected
{
  v2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v2 lastAcceptedCandidateCorrected];
}

- (id)didAcceptCandidate:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 candidate];
  v6 = [v5 length];

  v7 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v7 cancel];

  v8 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v8 clearCache];

  if (!v6)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_80;
  }

  v9 = [v4 input];
  if ([v9 length])
  {
    [v4 input];
  }

  else
  {
    [v4 candidate];
  }
  v12 = ;

  v13 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
  v14 = [v4 input];
  v15 = [v4 candidate];
  if ([v14 isEqualToString:v15])
  {
    v16 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v17 = [v16 documentState];
    v18 = [v17 markedText];
    v19 = [v12 isEqualToString:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v12 length];
  v21 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v22 = [v21 length];
  v121 = v13;
  v23 = v22 - [v13 length];

  v24 = ![(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  if (v20 < v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if ((v24 & 1) == 0 && (v19 & 1) == 0)
  {
    v26 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v25 = [v26 hasRemainingComposingInput];
  }

  v122 = v19;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:v4 partial:v25];
    v27 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v27 mecabra];
    v28 = MecabraGetDebuggingLog();

    v29 = [v28 description];
    [(TIKeyboardInputManagerChinesePhonetic *)self logToTypologyRecorderWithString:v29];

    [(TIKeyboardInputManagerChinesePhonetic *)self logToTypologyRecorderWithString:@"\n\n"];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v31 = [v4 proactiveTrigger];

  v32 = [v4 customInfoType];
  v33 = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  if ((isKindOfClass & 1) == 0 && !v31 && (v32 & 0x1000) == 0 || (-[TIKeyboardInputManagerChinesePhonetic conversionHistory](self, "conversionHistory"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 isValid] | v33, v34, (v35 & 1) == 0))
  {
    if (v33)
    {
      v49 = 0;
      v37 = 0;
      v11 = 0;
      v50 = v121;
      v10 = v122;
      if (!v25)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    v51 = [v4 input];
    v52 = [v51 length];

    v50 = v121;
    v10 = v122;
    if (v122)
    {
      v53 = [v4 candidate];
      v49 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:v53];

      goto LABEL_77;
    }

    if ((v52 != 0) | isKindOfClass & 1 || v31)
    {
      v49 = [v4 candidate];
      if (v25)
      {
        goto LABEL_40;
      }

      v59 = 0;
    }

    else
    {
      v54 = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
      v55 = [v121 length];
      v56 = [v4 candidate];
      if (v55 >= v54)
      {
        v57 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v98 = [v57 length];
        if (v98 <= [v12 length])
        {
          [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:&stru_287EBF4E8];
        }

        else
        {
          v99 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
          v100 = [v99 substringFromIndex:{objc_msgSend(v12, "length")}];
          [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v100];
        }

        v59 = 0;
        v10 = 0;
        goto LABEL_75;
      }

      v49 = [v121 stringByAppendingString:v56];

      if (v25)
      {
        v10 = 0;
LABEL_40:
        v57 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v58 = [v57 substringFromIndex:{objc_msgSend(v12, "length") + objc_msgSend(v121, "length")}];
        [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v58];

        v59 = 1;
        v56 = v49;
LABEL_75:

        v49 = v56;
        goto LABEL_76;
      }

      v59 = 0;
      v10 = 0;
    }

LABEL_76:
    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:v25];
    LOBYTE(v25) = v59;
    v50 = v121;
LABEL_77:
    v101 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v101 commitSurface:v49];

    v102 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [v102 clear];

    [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
    v37 = 0;
    v11 = v49;
    if (v25)
    {
LABEL_78:
      [(TIKeyboardInputManagerMecabra *)self savePartialGeometryData];
      v11 = v49;
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  v119 = v12;
  v36 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v4];
  v37 = [MEMORY[0x277D6F448] convertedInputFromMecabraCandidate:v36];
  if (v36 && MecabraCandidateIsFuzzyMatchCandidate())
  {
    v38 = *MEMORY[0x277D6FB18];
    v39 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v40 = [v39 inputMode];
    v41 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();
  }

  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable])
  {
    v42 = *MEMORY[0x277D6FB20];
    v43 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v44 = [v43 inputMode];
    v45 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();
  }

  v46 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v47 = v46;
  if (v36)
  {
    [v46 performAccept:v36 isPartial:v25];

    v48 = v36;
  }

  else
  {
    v60 = [v4 candidate];
    [v47 commitSurface:v60];

    v48 = [MEMORY[0x277CBEB68] null];
  }

  v120 = v48;
  v10 = v122;
  if (self->_isInAmbiguousMode)
  {
    v61 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
    v62 = [v61 count];

    v63 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v50 = v121;
    if (v62 >= [v63 count])
    {
      v64 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
      v62 = [v64 count];
    }

    v65 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v66 = [v65 subarrayWithRange:{0, v62}];

    v67 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    v68 = [v67 subarrayWithRange:{0, v62}];

    v69 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [v69 addCandidate:v4 candidateRef:v120 replacedAmbiguousPinyinSyllables:v66 replacementUnambiguousPinyinSyllables:v68 convertedInput:v37];

    for (; v62; --v62)
    {
      [(TIKeyboardInputManagerChinesePhonetic *)self shiftPinyinSyllableSelection];
    }

    v10 = v122;
  }

  else
  {
    v66 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [v66 addCandidate:v4 candidateRef:v120 replacedAmbiguousPinyinSyllables:0 replacementUnambiguousPinyinSyllables:0 convertedInput:v37];
    v50 = v121;
  }

  v12 = v119;
  if (v33)
  {
LABEL_66:
    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:v25];

    v49 = 0;
    v11 = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v25)
  {
    v70 = [v50 length];
    v71 = [v119 length] + v70;
    v72 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v73 = [v72 length];

    if (v71 > v73)
    {
      if (TICanLogMessageAtLevel())
      {
        v74 = TIOSLogFacility();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Warning: internalInputString index is out of bounds with new candidateInputText", "-[TIKeyboardInputManagerChinesePhonetic didAcceptCandidate:]"];
          *buf = 138412290;
          v124 = v116;
          _os_log_debug_impl(&dword_26D460000, v74, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      v75 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v71 = [v75 length];
    }

    v76 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v77 = [v76 substringFromIndex:v71];
    v78 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v77];
    [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v78];

    v79 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    v118 = [v79 lastConvertedCandidate];

    v80 = [v50 length];
    v81 = [v119 length] + v80;
    v82 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v83 = [v82 count];

    if (v81 < v83)
    {
      v84 = [v50 length];
      v85 = [v119 length];
      v86 = [v4 candidate];
      v87 = [v86 length];

      v88 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v89 = [v88 subarrayWithRange:{v84, v85}];
      [v118 setGeometryData:v89];

      v90 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v117 = v85;
      [v90 removeObjectsInRange:{v84, v85}];

      if (v87)
      {
        v91 = v87;
        do
        {
          [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:v84];
          --v91;
        }

        while (v91);
      }

      v50 = v121;
      if (([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled]& 1) != 0)
      {
        v92 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
        v93 = [v92 count];

        if (v81 < v93)
        {
          v94 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          v95 = [v94 subarrayWithRange:{v84, v117}];
          [v118 setTouchData:v95];

          v96 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          [v96 removeObjectsInRange:{v84, v117}];

          for (; v87; --v87)
          {
            [(TIKeyboardInputManagerMecabra *)self insertDummyTouchDataAtIndex:v84];
          }
        }
      }
    }

    v12 = v119;
    v10 = v122;
    goto LABEL_66;
  }

  v11 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
  v97 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [v97 clear];

  [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:0];

LABEL_79:
LABEL_80:
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    goto LABEL_87;
  }

  if (v10)
  {
    v103 = [v4 candidate];
    v104 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:v103];

    v105 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v105 removeAllInputs];

    v106 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v106 commitSurface:v104];
    v11 = v104;
LABEL_83:

    goto LABEL_87;
  }

  v107 = [(TIKeyboardInputManagerMecabra *)self processAcceptedCandidate:v4];

  v108 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v109 = [v108 hasDrawInput];

  if (v109)
  {
    v110 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateResultSetByWaitingForResults:1];
    v111 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v112 = [v111 hasRemainingComposingInput];

    if ((v112 & 1) == 0)
    {
      v115 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v11 = [v115 asCommittedText];

      v106 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v106 removeAllInputs];
      goto LABEL_83;
    }
  }

  v11 = v107;
LABEL_87:

  v113 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)canStartSentenceAfterString:(id)a3
{
  v4 = a3;
  if ([v4 length] && (v10.receiver = self, v10.super_class = TIKeyboardInputManagerChinesePhonetic, !-[TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:](&v10, sel_canStartSentenceAfterString_, v4)))
  {
    v6 = [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters;
    if (![TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters)
    {
      v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"。？！"];
      v8 = [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters;
      [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters = v7;

      v6 = [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters;
    }

    v5 = [v4 rangeOfCharacterFromSet:v6 options:1 range:{objc_msgSend(v4, "length") - 1, 1}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)handleAcceptedPinyinDisambiguationCandidate:(id)a3 keyboardState:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 label];
  v7 = [v6 length];

  if (v7)
  {
    if (![(TIKeyboardInputManagerChinesePhonetic *)self shouldAdvanceSyllableSelection])
    {
      [(TIKeyboardInputManagerChinesePhonetic *)self revertLastDisambiguation];
    }

    v8 = v5;
    -[TIKeyboardInputManagerChinesePhonetic setShouldAdvanceSyllableSelection:](self, "setShouldAdvanceSyllableSelection:", [v8 isGeneratedByChoosePinyin] ^ 1);
    [v8 setGeneratedByChoosePinyin:0];
    v9 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v9 cancel];

    [(TIKeyboardInputManagerChinesePhonetic *)self setComposedTextBeforeFirstSyllableLocked:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28])];
    v10 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v11 = [v10 disambiguationCandidates];

    v52 = [v11 indexOfObject:v8];
    if (v52 == 0x7FFFFFFFFFFFFFFFLL)
    {

      v53 = 0;
    }

    else
    {
      v53 = v11;
    }

    self->_lockingPinyinSyllableSelection = 1;
    v12 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
        v17 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
        v18 = [v16 rangeOfString:@"'" options:0 range:{v14, objc_msgSend(v17, "length") - v14}];

        v19 = v18 + 1;
        v20 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
        v21 = [v20 length];

        if (v18 + 1 > v21)
        {
          break;
        }

        ++v15;
        v22 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
        v23 = [v22 count];

        v14 = v18 + 1;
        if (v15 >= v23)
        {
          goto LABEL_14;
        }
      }

      [(TIKeyboardInputManagerChinesePhonetic *)self revertLastDisambiguation];
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

LABEL_14:
    v24 = [v8 label];
    v25 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v26 = [v25 length];

    v27 = [objc_opt_class() ambiguousAndPinyinCharacterSet];
    v28 = [v24 rangeOfCharacterFromSet:v27];

    v29 = [objc_opt_class() ambiguousAndPinyinCharacterSet];
    v30 = v29;
    v54 = v8;
    if (v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [v29 invertedSet];

      v30 = v31;
    }

    v32 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v33 = [v32 rangeOfCharacterFromSet:v30 options:0 range:{v19, v26 - v19}];

    if (v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = v26;
    }

    else
    {
      v34 = v33;
    }

    v35 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v36 = v24;
    v37 = [v36 length];
    v38 = v37 + v19;
    v39 = v36;
    if (([v36 hasSuffix:@"'"] & 1) == 0)
    {
      v39 = v36;
      if (v38 < v34)
      {
        v39 = v36;
        if ([v35 rangeOfString:@"'" options:2 range:{v37 + v19, 1}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = [v36 stringByAppendingString:@"'"];
        }
      }
    }

    v55 = v5;
    v51 = v30;
    if (v34 >= v38)
    {
      v40 = [v35 substringWithRange:{v19, v37}];
      v41 = [v35 stringByReplacingCharactersInRange:v19 withString:{v37, v39}];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v57 = "[TIKeyboardInputManagerChinesePhonetic handleAcceptedPinyinDisambiguationCandidate:keyboardState:]";
        v58 = 2048;
        v59 = v19;
        v60 = 2048;
        v61 = v37;
        v62 = 2048;
        v63 = v34;
        _os_log_fault_impl(&dword_26D460000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: disambiguation candidate(location=%ld, length=%ld) is longer than input(length=%ld). Please file to 'TextInput | Input Managers'", buf, 0x2Au);
      }

      v40 = v36;
      v41 = v35;
    }

    v42 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v41];

    v43 = [v53 copy];
    [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
    v44 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    [v44 addObject:v40];

    v45 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    [v45 addObject:v39];

    [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:v52];
    [(TIKeyboardInputManagerChinesePhonetic *)self setPinyinSyllableCandidates:v43];
    v46 = objc_alloc_init(MEMORY[0x277D6F3E8]);
    v47 = objc_alloc(MEMORY[0x277D6FE70]);
    v48 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v49 = [v47 initWithKeyboardState:v48];

    [v46 setString:v42];
    [(TIKeyboardInputManagerChinesePhonetic *)self addInput:v46 withContext:v49];
    self->_lockingPinyinSyllableSelection = 0;

    v5 = v55;
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  self->_acceptingCandidate = 1;
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self handleAcceptedPinyinDisambiguationCandidate:v7 keyboardState:v6];

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManagerChinesePhonetic;
    v8 = [(TIKeyboardInputManagerMecabra *)&v10 handleAcceptedCandidate:v7 keyboardState:v6];
  }

  self->_acceptingCandidate = 0;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];

  return v8;
}

- (id)defaultCandidate
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    v3 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v4 = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
    if (v4)
    {
      v5 = v4;
      if (v4 <= [(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
      {
        if ([v3 length] >= v5)
        {
          v8 = [v3 substringToIndex:v5];

          v3 = v8;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerChinesePhonetic shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection")}];
          v15 = 136315394;
          v16 = "[TIKeyboardInputManagerChinesePhonetic defaultCandidate]";
          v17 = 2112;
          v18 = v6;
          _os_log_fault_impl(&dword_26D460000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s  Tried to take a substring to index outside of string bounds. ShouldSkipCandidateSelection is %@.", &v15, 0x16u);
        }
      }
    }

    v9 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:v3];
    if ([v9 length])
    {
      v10 = v9;

      v3 = v10;
    }

    v11 = objc_alloc(MEMORY[0x277D6F3D8]);
    v12 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:v3];
    v7 = [v11 initWithCandidate:v12];
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F3B0]);

  return v2;
}

- (id)sortingMethods
{
  v8[2] = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    v3 = &unk_287EC3A00;
  }

  else if ([(TIKeyboardInputManagerChinese *)self hasIdeographicCandidates])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self hasExtensionEmojiCandidates]&& ![(TIKeyboardInputManagerChinesePhonetic *)self shouldOmitEmojiCandidates])
    {
      v3 = &unk_287EC3A30;
    }

    else if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
    {
      v3 = &unk_287EC3A60;
    }

    else
    {
      v4 = [(TIKeyboardInputManagerChinesePhonetic *)self phoneticSortingMethod];
      v5 = v4;
      if (v4)
      {
        v8[0] = &unk_287EC3B70;
        v8[1] = v4;
        v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
      }

      else
      {
        v3 = &unk_287EC3A48;
      }
    }
  }

  else
  {
    v3 = &unk_287EC3A18;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasExtensionEmojiCandidates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 candidates];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__TIKeyboardInputManagerChinesePhonetic_hasExtensionEmojiCandidates__block_invoke;
  v5[3] = &unk_279D9D578;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __68__TIKeyboardInputManagerChinesePhonetic_hasExtensionEmojiCandidates__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isEmojiCandidate] && objc_msgSend(v6, "isExtensionCandidate"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (unint64_t)predictionOptions
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  result = [(TIKeyboardInputManagerChinese *)&v4 predictionOptions];
  if (self->_isInAmbiguousMode)
  {
    result |= 0x40uLL;
  }

  return result;
}

- (void)setPhraseBoundary:(unint64_t)a3
{
  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    if (v5)
    {
    }

    else
    {
      v6 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextBeforeFirstSyllableLocked];
      v7 = [v6 isEqualToString:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28])];

      if (v7)
      {
        return;
      }
    }
  }

  [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  v8 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v8 cancel];

  v9 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v9 clearCache];

  v10 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [v10 setInputChangedSinceLastConversion:1];

  [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:0];
  [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:0];
  v11 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  v12 = [v11 documentState];
  [v12 selectedRangeInMarkedText];
  v14 = v13 + a3;

  [(TIKeyboardInputManagerChinesePhonetic *)self setInputIndex:v14];
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:[(TIKeyboardInputManagerChinesePhonetic *)self isPhraseBoundarySet]];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v15 = [(TIKeyboardInputManagerChinesePhonetic *)self externalIndexToInternal:v14 shouldBoundToInputCount:0];
    v16 = [(TIKeyboardInputManagerMecabra *)self _convertInputsToSyntheticInputWithOffset:v14];
    [(TIKeyboardInputManagerMecabra *)self _replaceComposingInputWithSyntheticInput:v16 internalIndex:v15];
  }
}

- (void)inputLocationChanged
{
  v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v3 cancel];

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [v4 clear];

  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v5 inputLocationChanged];
}

- (void)clearInput
{
  v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v3 cancel];

  v4 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v4 clearCache];

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:0];
  if (!self->_acceptingCandidate)
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [v5 clear];
  }

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v6 clearInput];
}

- (void)resume
{
  v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v3 mecabra];
  MecabraPreheatResources();

  if ([TIKeyboardInputManagerChinesePhonetic resume]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerChinesePhonetic resume]::onceToken, &__block_literal_global_166);
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 resume];
}

void __47__TIKeyboardInputManagerChinesePhonetic_resume__block_invoke()
{
  v0 = _TIQueueBackground();
  TIDispatchAsync();
}

- (id)deleteFromInput:(unint64_t *)a3
{
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable];
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
    {
      v127.receiver = self;
      v127.super_class = TIKeyboardInputManagerChinesePhonetic;
      v21 = [(TIKeyboardInputManagerChinese *)&v127 deleteFromInput:a3];
      goto LABEL_73;
    }

    v22 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v23 = [v22 isEqualToString:*MEMORY[0x277D6FF50]];

    if (v23)
    {
      goto LABEL_10;
    }

    v24 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v24 cancel];

    v25 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    v26 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    v27 = [v26 convertedLength];

    if (v25 < v27)
    {
      v28 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      [v28 invalidate];
    }

    v29 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v30 = [v29 documentState];
    v17 = [v30 markedText];

    if (v25 == v27)
    {
      v31 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      v32 = [v31 shouldRevertConvertedCandidateOnDeletionFromMarkedText:v17];

      if ((v32 & 1) == 0)
      {
        v33 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        [v33 invalidate];
      }
    }

    v34 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    i = [v34 documentState];

    [i selectedRangeInMarkedText];
    v37 = v36;
    if (!v36)
    {
      v38 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      v39 = [v38 shouldRevertConvertedCandidateOnDeletionFromMarkedText:v17];

      if (v39)
      {
        v121 = i;
        v40 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        v41 = [v40 lastConvertedCandidate];

        v42 = [v41 candidate];
        v43 = [v42 input];

        v44 = [v41 convertedInput];
        if ([v44 length])
        {
          v45 = [v43 length];
          if (v45 == [v44 length])
          {
            v119 = v17;
            v46 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
            v47 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
            [v47 didRevertLastConvertedCandidate];

            v48 = [v41 revertedInput];
            v49 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v48];
            v117 = v46;
            v50 = [v49 stringByAppendingString:v46];

            v116 = v50;
            [(TIKeyboardInputManagerChinesePhonetic *)self setInput:v50];
            v51 = [v41 candidate];
            v52 = [v51 candidate];
            v53 = [v52 length];

            v54 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
            v115 = v53;
            v55 = [v54 length] + v53;

            v56 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            v57 = [v56 count];

            if (v55 <= v57)
            {
              v58 = v43;
              v59 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
              v60 = [v59 length];

              v61 = [v44 length];
              v62 = [v41 geometryData];
              v63 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
              v64 = v63;
              if (v62)
              {
                [v63 replaceObjectsInRange:v60 withObjectsFromArray:{v115, v62, v62}];
              }

              else
              {
                [v63 removeObjectsInRange:{v60, v115, 0}];

                if (v61)
                {
                  v97 = v61;
                  do
                  {
                    [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:v60];
                    --v97;
                  }

                  while (v97);
                }
              }

              v43 = v58;
              if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
              {
                v98 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                v99 = [v98 count];

                if (v55 <= v99)
                {
                  v100 = [v41 touchData];
                  v101 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                  v102 = v101;
                  if (v100)
                  {
                    [v101 replaceObjectsInRange:v60 withObjectsFromArray:{v115, v100}];
                  }

                  else
                  {
                    [v101 removeObjectsInRange:{v60, v115}];

                    for (; v61; --v61)
                    {
                      [(TIKeyboardInputManagerMecabra *)self insertDummyTouchDataAtIndex:v60];
                    }
                  }
                }
              }
            }

            v103 = [v41 replacedAmbiguousPinyinSyllables];
            v104 = [v103 count];

            if (v104)
            {
              v105 = [v41 replacedAmbiguousPinyinSyllables];
              v106 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
              v107 = [v105 arrayByAddingObjectsFromArray:v106];
              v108 = [v107 mutableCopy];
              [(TIKeyboardInputManagerChinesePhonetic *)self setReplacedAmbiguousPinyinSyllables:v108];

              v109 = [v41 replacementUnambiguousPinyinSyllables];
              v110 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              v111 = [v109 arrayByAddingObjectsFromArray:v110];
              v112 = [v111 mutableCopy];
              [(TIKeyboardInputManagerChinesePhonetic *)self setReplacementUnambiguousPinyinSyllables:v112];
            }

            v17 = v119;
            if (a3)
            {
              *a3 = 0;
            }

            i = v121;
            goto LABEL_70;
          }
        }

        i = v121;
      }
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self revertLastDisambiguation];
    if (v5)
    {
LABEL_70:

LABEL_71:
      goto LABEL_72;
    }

    v65 = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
    v66 = *MEMORY[0x277D6FF28];
    v67 = [*(&self->super.super.super.super.super.super.isa + v66) length];
    if (!v65 || v67 < v65)
    {
LABEL_52:
      if (![(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
      {
        [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
        [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
        v96 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        [v96 clear];
      }

      goto LABEL_70;
    }

    if (v37 <= 1)
    {
      v68 = 1;
    }

    else
    {
      v68 = v37;
    }

    v120 = v17;
    v122 = i;
    if (v37 || v65 < 2)
    {
      v118 = v68;
LABEL_39:
      v78 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v79 = [v78 length];
      v80 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v81 = v68;
      if (v68 >= [v80 length])
      {
        v82 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v81 = [v82 length];
      }

      v83 = v79 - v81;

      v84 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v85 = [v84 length];

      if (v85 > v83)
      {
        v86 = *MEMORY[0x277D6FF30];
        do
        {
          TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.isa + v86));
          v87 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
          v88 = [v87 length];
        }

        while (v88 > v83);
      }

      if (v25 >= v68)
      {
        v89 = v25 - v68;
      }

      else
      {
        v89 = 0;
      }

      for (i = v122; v68; --v68)
      {
        v90 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        v91 = [v90 count];

        if (v89 < v91)
        {
          v92 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          [v92 removeObjectAtIndex:v89];
        }
      }

      v93 = [*(&self->super.super.super.super.super.super.isa + v66) substringToIndex:v65 - v118];
      v94 = [*(&self->super.super.super.super.super.super.isa + v66) substringFromIndex:v65];
      v95 = [v93 stringByAppendingString:v94];

      [*(&self->super.super.super.super.super.super.isa + v66) setString:v95];
      v17 = v120;
      goto LABEL_52;
    }

    v69 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x2020000000;
    v126[3] = 0;
    v70 = *(&self->super.super.super.super.super.super.isa + v66);
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __57__TIKeyboardInputManagerChinesePhonetic_deleteFromInput___block_invoke;
    v123[3] = &unk_279D9D490;
    v71 = v69;
    v124 = v71;
    v125 = v126;
    [v70 enumerateSubstringsInRange:0 options:v65 usingBlock:{258, v123}];
    if ([v71 count] != 1)
    {
      v74 = [v71 count];
      v73 = v68;
      if (v74 != 2)
      {
        goto LABEL_38;
      }

      v75 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
      v76 = [v71 indexOfObject:v75];

      if (v76 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v71 removeObjectAtIndex:v76];
        v77 = [v71 firstObject];
        v68 = [v77 length];

        v73 = v68 + 1;
        goto LABEL_38;
      }
    }

    v72 = [v71 firstObject];
    v68 = [v72 length];

    v73 = v68;
LABEL_38:
    v118 = v73;

    _Block_object_dispose(v126, 8);
    goto LABEL_39;
  }

  v6 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v6 cancel];

  v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v8 = [v7 asInlineText];
  v9 = [v8 isEqualToString:*MEMORY[0x277D6FF50]];

  if (!v9)
  {
    v10 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v11 = [v10 composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(TIKeyboardInputManagerChinese *)self wordSearch];
      [v13 revertInlineCandidate];
    }

    v14 = objc_alloc(MEMORY[0x277D6FE08]);
    v15 = [(TIKeyboardInputManagerMecabra *)self previouslyDeletedTypeInput];
    v16 = [(TIKeyboardInputManagerMecabra *)self previouslyProcessedDeleteInput];
    v17 = [v14 initWithDeletedText:0 deleteBySyllable:v15 == 0 shouldDeleteAcceptCandidateInput:v16 == 0];

    v18 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v18 composeNew:v17];

    [(TIKeyboardInputManagerMecabra *)self processDeleteInputs];
    [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:v17];
    TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]));
    v19 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v20 = [v19 composingInput];

    if (!v20)
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    goto LABEL_71;
  }

LABEL_10:
  [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
LABEL_72:
  v21 = 0;
LABEL_73:

  return v21;
}

uint64_t __57__TIKeyboardInputManagerChinesePhonetic_deleteFromInput___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) addObject:a2];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24) + 1;
  *(v10 + 24) = v11;
  if (v11 == 2)
  {
    *a7 = 1;
  }

  return result;
}

- (id)uncommittedText
{
  v3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v4 = [v3 candidates];
  v5 = [v4 firstObject];

  v6 = [v5 input];
  v7 = v6;
  v8 = &stru_287EBF4E8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextForSelectedCandidate:v5 remainingInput:v9];
  if ([v10 length])
  {
    v11 = v10;

    v9 = v11;
  }

  return v9;
}

- (unint64_t)internalInputIndex
{
  if (-[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hasKindOf:objc_opt_class()], v3, v4))
  {

    return [(TIKeyboardInputManagerMecabra *)self inputIndexWithDrawInput];
  }

  else
  {
    v6 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 96);
    if (!v7)
    {
      return 0;
    }

    v8 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v9 = [v8 length];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__TIKeyboardInputManagerChinesePhonetic_internalInputIndex__block_invoke;
    v11[3] = &unk_279D9D548;
    v11[4] = &v13;
    v11[5] = v12;
    v11[6] = v7;
    [v8 enumerateSubstringsInRange:0 options:v9 usingBlock:{514, v11}];
    v10 = v14[3];
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);

    return v10;
  }
}

void *__59__TIKeyboardInputManagerChinesePhonetic_internalInputIndex__block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(result[4] + 8) + 24) += a4;
  v7 = *(result[5] + 8);
  v8 = *(v7 + 24) + 1;
  *(v7 + 24) = v8;
  if (v8 >= result[6])
  {
    *a7 = 1;
  }

  return result;
}

- (unint64_t)internalInputCount
{
  v2 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v3 = [v2 length];

  return v3;
}

- (id)inputString
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinesePhonetic;
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)&v7 inputString];
  if ([v3 length])
  {
    v4 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 candidate];

      v3 = v5;
    }
  }

  return v3;
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 candidate];
      v7 = [v6 length];

      if (v7)
      {
        v8 = [v5 candidate];
        v9 = [v8 length];

        return v9;
      }
    }
  }

  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v10 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v11 = [v10 hasKindOf:objc_opt_class()];

    if (v11)
    {
      v12 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    }

    else
    {
      v14 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v12 = [v14 asInlineTextCursorIndex];
    }

    v13 = [(TIKeyboardInputManagerChinesePhonetic *)self internalIndexToExternal:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerChinesePhonetic;
    v13 = [(TIKeyboardInputManagerChinesePhonetic *)&v16 inputIndex];
  }

  v9 = v13;
  if (([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection]& 1) == 0 && v9 >= [(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    return [(TIKeyboardInputManagerChinesePhonetic *)self inputCount];
  }

  return v9;
}

- (unsigned)inputCount
{
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerChinesePhonetic;
    return [(TIKeyboardInputManagerChinesePhonetic *)&v6 inputCount];
  }

  else
  {
    v4 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v3 = [v4 length];
  }

  return v3;
}

- (void)setInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v5 cancel];

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v8 setInput:v4];

  if (self->_isInAmbiguousMode)
  {
    v6 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]);
    v7 = [objc_opt_class() stringFallBackForTenKeyInput:v6 range:{0, objc_msgSend(v6, "length")}];
    [v6 setString:v7];
  }

  else
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  }

  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
}

- (void)addInputToInternal:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]))
  {
    v6 = [v4 length];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__TIKeyboardInputManagerChinesePhonetic_addInputToInternal___block_invoke;
    v7[3] = &unk_279D9D520;
    v7[4] = self;
    v8 = v5;
    [v8 enumerateSubstringsInRange:0 options:v6 usingBlock:{514, v7}];
  }
}

- (BOOL)handleDirectlyCommitForInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    goto LABEL_8;
  }

  if ([(TIKeyboardInputManagerChinesePhonetic *)self _shouldCommitInputDirectly:v6])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
    {
      v8 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
      v9 = [v8 keyboardType];

      if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 3 || [(TIKeyboardInputManagerChinesePhonetic *)self isPhraseBoundarySet])
      {
        goto LABEL_6;
      }

      v12 = [(TIKeyboardInputManagerChinese *)self firstCandidate];
      if (v12)
      {
        v13 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        v14 = [v13 convertedLength];
        v15 = [v12 input];
        v16 = [v15 length] + v14;
        if (v16 >= [(TIKeyboardInputManagerChinesePhonetic *)self internalInputCount])
        {
          v17 = [v6 isEqualToString:@"'"];

          if ((v17 & 1) == 0)
          {
            [(TIKeyboardInputManagerChinese *)self acceptFirstCandidateWithContext:v7];
            v10 = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v10 = 0;
LABEL_15:

      goto LABEL_9;
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self acceptCurrentCandidateWithContext:v7];
LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

LABEL_6:
  v10 = 0;
LABEL_9:

  return v10;
}

- (id)remapInput:(id)a3 isFacemarkInput:(BOOL *)a4
{
  v6 = a3;
  *a4 = 0;
  if ([v6 isEqualToString:@"☻"])
  {
    v7 = *MEMORY[0x277D6FF50];

    *a4 = 1;
    v6 = v7;
  }

  else if ([(TIKeyboardInputManagerChinese *)self isFacemarkInput:v6])
  {
    *a4 = 1;
  }

  else
  {
    v8 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:v6];

    v6 = v8;
  }

  return v6;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  if (![(TIKeyboardInputManagerChinese *)self handlePairedPunctuationInput:v6 context:v7])
  {
    v8 = [v6 string];
    [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
    v9 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v10 = [v9 shouldSkipCandidateSelection];

    if (v10)
    {
      v11 = [v6 string];
      v12 = [v11 length];

      if (v12)
      {
        v80.receiver = self;
        v80.super_class = TIKeyboardInputManagerChinesePhonetic;
        [(TIKeyboardInputManagerChinesePhonetic *)&v80 addInput:v6 withContext:v7];
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = v8;
    }

    else
    {
      v89[0] = 0;
      v14 = [(TIKeyboardInputManagerChinesePhonetic *)self remapInput:v8 isFacemarkInput:v89];

      if ([v6 isMultitap])
      {
        v86 = 1;
        v15 = [(TIKeyboardInputManagerChinesePhonetic *)self deleteFromInput:&v86];
        [v7 deleteBackward:v86];
      }

      v13 = [(TIKeyboardInputManagerChinesePhonetic *)self handleDirectlyCommitForInput:v14 withContext:v7];
      if (!v13)
      {
        if ((v89[0] & 1) != 0 || [(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates]|| ([(TIKeyboardInputManagerChinesePhonetic *)self internalInputString], v16 = objc_claimAutoreleasedReturnValue(), v17 = [(TIKeyboardInputManagerChinese *)self isFacemarkInput:v16], v16, v17))
        {
          if (self->_isCandidateSelected)
          {
            [(TIKeyboardInputManagerChinesePhonetic *)self acceptCurrentCandidateWithContext:v7];
          }

          else if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
          {
            [(TIKeyboardInputManagerChinese *)self acceptFirstCandidateWithContext:v7];
          }
        }

        v18 = [(TIKeyboardInputManagerChinese *)self wordSearch];
        [v18 cancel];

        if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldReplaceCharacterOfInputStringBeforeCursorForInput:v14])
        {
          v86 = 1;
          v19 = [(TIKeyboardInputManagerChinesePhonetic *)self deleteFromInput:&v86];
        }

        if ([v14 length] == 1 && (objc_msgSend(v14, "isEqualToString:", @"'") & 1) == 0)
        {
          v20 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
            v23 = [v22 componentsJoinedByString:&stru_287EBF4E8];
            v24 = [v23 length];

            v25 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
            v26 = [v25 length];

            if (v24 == v26)
            {
              v27 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              v28 = [v27 lastObject];
              [v28 stringByAppendingString:@"'"];
              v30 = v29 = v13;

              v31 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              [v31 removeLastObject];

              v32 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              [v32 addObject:v30];

              [(TIKeyboardInputManagerChinesePhonetic *)self addInputToInternal:@"'"];
              v13 = v29;
            }
          }
        }

        [(TIKeyboardInputManagerChinesePhonetic *)self addInputToInternal:v14];
        if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
        {
          v33 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
          v34 = v33[24];
          v35 = TIInputManager::keys_for_input(v33);
          if (v35)
          {
            v36 = v35;
            v37 = *v35;
            v38 = v35[2];
            v87 = 0;
            v88 = 0;
            v86 = v37;
            if (v38)
            {
              v39 = malloc_type_malloc(8 * v38, 0x2004093837F09uLL);
              v87 = v39;
              v88 = v38;
              if (v39)
              {
                if (*v36)
                {
                  v40 = v36[1];
                  v41 = 8 * *v36;
                  do
                  {
                    v42 = *v40;
                    *v39 = *v40;
                    if (v42)
                    {
                      atomic_fetch_add(v42, 1u);
                    }

                    ++v39;
                    ++v40;
                    v41 -= 8;
                  }

                  while (v41);
                }
              }
            }
          }

          else
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
          }

          v78 = v13;
          v79 = v14;
          v77 = asMCNearbyKeys();
          if (v86)
          {
            v43 = v87;
            v44 = 8 * v86;
            do
            {
              v45 = *v43;
              if (*v43)
              {
                v46 = atomic_load(v45);
                if (v46 == 1)
                {
                  v47 = *(v45 + 8);
                  if (v47)
                  {
                    WTF::RefCounted<TI::Favonius::Key>::deref(v47);
                  }

                  MEMORY[0x26D6BFC20](v45, 0x1020C40DF844C36);
                }

                else
                {
                  atomic_fetch_add(v45, 0xFFFFFFFF);
                }
              }

              ++v43;
              v44 -= 8;
            }

            while (v44);
            v86 = 0;
          }

          v48 = v87;
          v87 = 0;
          v88 = 0;
          free(v48);
          v75 = objc_alloc(MEMORY[0x277D6FE18]);
          v76 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          v49 = [v76 layoutState];
          v50 = [v49 userInterfaceIdiom];
          v51 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          v52 = [v51 splitKeyboardMode];
          v53 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          v54 = [v53 floatingKeyboardMode];
          v55 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          v56 = [v75 initWithUserInterfaceIdiom:v50 isSplitKeyboard:v52 isFloatingKeyboard:v54 isHardwareKeyboard:{objc_msgSend(v55, "hardwareKeyboardMode")}];

          v14 = v79;
          v57 = [v79 length];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __62__TIKeyboardInputManagerChinesePhonetic_addInput_withContext___block_invoke;
          v81[3] = &unk_279D9D4F8;
          v82 = v6;
          v83 = self;
          v84 = v77;
          v85 = v56;
          v58 = v56;
          v59 = v77;
          [v79 enumerateSubstringsInRange:0 options:v57 usingBlock:{2, v81}];
          [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:0];
          [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:0];

          v13 = v78;
        }

        if (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]))
        {
          if (_os_feature_enabled_impl())
          {
            v60 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
            v61 = [v60 count];
            v62 = [objc_opt_class() maxNumberOfUncommittedSegments];

            if (v61 > v62)
            {
              [(TIKeyboardInputManagerChinesePhonetic *)self autocommitHeadSegmentWithContext:v7];
            }
          }

          v63 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
          v64 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
          v65 = [v64 convertedLength];

          if (v63 <= v65)
          {
            v66 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
            [v66 invalidate];
          }

          [(TIKeyboardInputManagerChinesePhonetic *)self updateComposedText];
        }
      }

      if (![(TIKeyboardInputManagerChinesePhonetic *)self skipSetMarkedTextDuringInput])
      {
        if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
        {
          [(TIKeyboardInputManagerChinesePhonetic *)self setMarkedText];
        }

        else if ([v14 length])
        {
          [v7 insertText:v14];
        }
      }
    }

    if (!self->_acceptingCandidate && !self->_lockingPinyinSyllableSelection)
    {
      v67 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      [v67 setInputChangedSinceLastConversion:1];
    }

    if ([(TIKeyboardInputManagerChinesePhonetic *)self usesGeometryModelData])
    {
      v68 = [(TIKeyboardInputManagerChinesePhonetic *)self pinyinSyllableCandidates];
      if ([v68 count])
      {
        v69 = [(TIKeyboardInputManagerChinesePhonetic *)self selectedPinyinSyllableCandidateIndex];
      }

      else
      {
        v69 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v70 = [(TIKeyboardInputManagerChinese *)self wordSearch];
      v71 = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
      v72 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v73 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
      [v70 clearCacheForInputString:v71 keyboardInput:v72 unambiguousSyllableCount:objc_msgSend(v73 selectedDisambiguationCandidateIndex:{"count"), v69}];
    }

    if (([v6 isFlick] & 1) == 0 && (objc_msgSend(v6, "isMultitap") & 1) == 0)
    {
      v74 = [v6 inputManagerHint];
      [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:v74];
    }

    if (((v13 | [(TIKeyboardInputManagerMecabra *)self usesComposingInput]) & 1) == 0)
    {
      [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:v6 atIndex:[(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex]];
    }
  }
}

void __62__TIKeyboardInputManagerChinesePhonetic_addInput_withContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 touchEvent];
    [v5 location];
    v7 = v6;
    v9 = v8;

    if ([*(a1 + 40) shouldRescaleTouchPoints])
    {
      v11 = *MEMORY[0x277CBF348];
      v10 = *(MEMORY[0x277CBF348] + 8);
      if (v7 != *MEMORY[0x277CBF348] || v9 != v10)
      {
        [*(a1 + 40) currentCharacterKeysLayoutFrame];
        [*(a1 + 40) baseCharacterKeysLayoutFrame];
        TI_GET_SCALED_POINT();
        v11 = v13;
        v10 = v14;
      }
    }

    else
    {
      v10 = v9;
      v11 = v7;
    }

    v16 = [objc_alloc(MEMORY[0x277D6FE28]) initWithCharacters:v4 point:*(a1 + 48) nearbyKeys:*(a1 + 56) sourceKeyboardState:{v11, v10}];

    v15 = [*(a1 + 40) composingInput];
    [v15 composeNew:v16];
  }
}

- (BOOL)_shouldCommitInputDirectly:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isSpecialInput:v4]|| [(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v4])
  {
    goto LABEL_3;
  }

  v7 = [(TIKeyboardInputManagerChinesePhonetic *)self inputCount];
  if (!v7)
  {
    v11 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    if ([v11 convertedLength])
    {
      v12 = [v4 length];

      if (v12 > 1)
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinese *)self isAlphabeticPlane])
  {
    v5 = 1;
  }

  else
  {
    if (GetDirectlyCommittedNumbersAndPunctuationSet(void)::__onceToken != -1)
    {
      dispatch_once(&GetDirectlyCommittedNumbersAndPunctuationSet(void)::__onceToken, &__block_literal_global_447);
    }

    v8 = [v4 rangeOfCharacterFromSet:GetDirectlyCommittedNumbersAndPunctuationSet(void)::__directNumbersAndPunctuationSet];
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    v5 = v9;
    if (!v7 && v8)
    {
      v10 = [objc_opt_class() directlyCommittedCharacterSetForEmptyInline];
      v5 = [v4 rangeOfCharacterFromSet:v10] == 0;
    }
  }

LABEL_4:

  return v5;
}

- (BOOL)isSpecialInput:(id)a3
{
  v4 = a3;
  v5 = ![v4 length] || objc_msgSend(v4, "length") > 2 || -[TIKeyboardInputManagerChinese isFacemarkInput:](self, "isFacemarkInput:", v4) || -[TIKeyboardInputManagerChinesePhonetic inputContinuesGB18030OrUnicodeLookupKey:](self, "inputContinuesGB18030OrUnicodeLookupKey:", v4);

  return v5;
}

- (BOOL)inputContinuesGB18030OrUnicodeLookupKey:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isInAmbiguousMode)
  {
    v5 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v22[0] = @"|g|";
    v22[1] = @"|u|";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, 0}];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 rangeOfString:v4];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v11 substringToIndex:v12];
            if (![v13 length])
            {

LABEL_15:
              v5 = 1;
              goto LABEL_16;
            }

            v14 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              goto LABEL_15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_16:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  [v5 beginLogging];

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerChinesePhonetic;
  v6 = [(TIKeyboardInputManagerMecabra *)&v9 handleKeyboardInput:v4];

  v7 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  [v7 markTime:1];

  return v6;
}

- (id)keyboardConfigurationLayoutTag
{
  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    v3 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v4 = [(TIKeyboardInputManagerChinese *)self isFacemarkInput:v3];

    if (v4)
    {
      v5 = [(TIKeyboardInputManagerChinese *)self shouldEnableHalfWidthPunctuationForCurrentInputContext];
      v6 = kDisambiguationLayoutTag;
      if (v5)
      {
        v6 = kHalfWidthPunctuationLayoutTag;
      }
    }

    else
    {
      v6 = kSeparatorLayoutTag;
    }
  }

  else if ([(TIKeyboardInputManagerChinese *)self shouldEnableHalfWidthPunctuationForCurrentInputContext])
  {
    v6 = kHalfWidthPunctuationLayoutTag;
  }

  else
  {
    v6 = &kDefaultLayoutTag;
  }

  v7 = *v6;

  return v7;
}

- (void)syncToLayoutState:(id)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinesePhonetic;
  v4 = a3;
  [(TIKeyboardInputManagerChinese *)&v8 syncToLayoutState:v4];
  v5 = [v4 softwareLayout];

  self->_isInAmbiguousMode = [v5 hasPrefix:@"Pinyin10"];
  isInAmbiguousMode = self->_isInAmbiguousMode;
  v7 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v7 setTenKeyPinyinEnabled:isInAmbiguousMode];
}

- (unsigned)externalIndexToInternal:(unsigned int)a3 shouldBoundToInputCount:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = *MEMORY[0x277D6FF28];
  v8 = *(&self->super.super.super.super.super.super.isa + v7);
  if (v8)
  {
    if ([v8 length] >= a3)
    {
      v9 = v5;
    }

    else
    {
      v9 = [*(&self->super.super.super.super.super.super.isa + v7) length];
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v10 = *(&self->super.super.super.super.super.super.isa + v7);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__TIKeyboardInputManagerChinesePhonetic_externalIndexToInternal_shouldBoundToInputCount___block_invoke;
    v14[3] = &unk_279D9D490;
    v14[4] = self;
    v14[5] = &v15;
    [v10 enumerateSubstringsInRange:0 options:v9 usingBlock:{514, v14}];
    v5 = *(v16 + 6);
    _Block_object_dispose(&v15, 8);
  }

  v11 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
  if (v11)
  {
    v12 = -858993459 * ((*(v11 + 16) - *(v11 + 8)) >> 3);
    if (v5 < v12)
    {
      v12 = v5;
    }

    if (v4)
    {
      return v12;
    }
  }

  return v5;
}

- (unsigned)internalIndexToExternal:(unsigned int)a3
{
  v5 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self internalStringToExternal:v7];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a3;
  v8 = [v6 length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__TIKeyboardInputManagerChinesePhonetic_internalIndexToExternal___block_invoke;
  v12[3] = &unk_279D9D468;
  v14 = self;
  v15 = &v16;
  v13 = v6;
  v9 = v6;
  [v9 enumerateSubstringsInRange:0 options:v8 usingBlock:{514, v12}];
  v10 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (id)internalStringToExternal:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerChinesePhonetic;
    v5 = [(TIKeyboardInputManager_mul *)&v16 internalStringToExternal:v4];
LABEL_5:
    v9 = v5;

    goto LABEL_15;
  }

  v6 = *MEMORY[0x277D6FF28];
  v7 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:*(&self->super.super.super.super.super.super.isa + v6)];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    v5 = *(&self->super.super.super.super.super.super.isa + v6);
    goto LABEL_5;
  }

  v10 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v9 = v4;
  if ([(__CFString *)v4 isEqualToString:v10])
  {
    v9 = v4;
    if ([(__CFString *)v4 length])
    {
      v11 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
      if (v11)
      {
        v12 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v9 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextForSelectedCandidate:v11 remainingInput:v12];
      }

      else
      {
        v9 = v4;
        if (!self->_isInAmbiguousMode)
        {
LABEL_13:

          goto LABEL_14;
        }

        v9 = [objc_opt_class() stringFallBackForTenKeyInput:v10 range:{0, objc_msgSend(v10, "length")}];
        v12 = v4;
      }

      goto LABEL_13;
    }
  }

LABEL_14:

LABEL_15:
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &stru_287EBF4E8;
  }

  v14 = v13;

  return v13;
}

- (id)externalStringToInternal:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerChinesePhonetic;
    v5 = [(TIKeyboardInputManager_mul *)&v8 externalStringToInternal:v4];
  }

  else
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:v4];
  }

  v6 = v5;

  return v6;
}

- (id)stringByRemovingSyllableSeparatorsFromString:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v6 = [v4 stringByReplacingOccurrencesOfString:v5 withString:&stru_287EBF4E8];

  return v6;
}

- (id)searchStringForMarkedText
{
  if (self->_isInAmbiguousMode)
  {
    v3 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v4 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerChinesePhonetic;
    v4 = [(TIKeyboardInputManagerChinese *)&v6 searchStringForMarkedText];
  }

  return v4;
}

- (NSString)internalInputString
{
  v14[4] = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v4 = [v3 hasKindOf:objc_opt_class()];

    if (v4)
    {
      v5 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
      v6 = v5;
      if (!v5)
      {
        v13 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v10 = [v13 asInlineText];

        goto LABEL_9;
      }

      v7 = [v5 input];
    }

    else
    {
      v6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v7 = [v6 asInlineText];
    }

    v10 = v7;
LABEL_9:

    goto LABEL_11;
  }

  v8 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
  if (v8)
  {
    TIInputManager::input_string(v14, v8);
    v10 = KB::ns_string(v14, v9);
    KB::String::~String(v14);
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)revertLastDisambiguation
{
  if ([(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self isPhraseBoundarySet])
    {
      v3 = [(TIKeyboardInputManagerChinesePhonetic *)self externalIndexToInternal:[(TIKeyboardInputManagerChinesePhonetic *)self inputIndex]];
    }

    else
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v20 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v4 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v5 = [v4 lastObject];

    v6 = [v5 length];
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    [v7 removeLastObject];

    v8 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    v9 = [v8 lastObject];

    v10 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    [v10 removeLastObject];

    [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
    v11 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    v12 = [v11 componentsJoinedByString:&stru_287EBF4E8];
    v13 = [v12 length];
    v14 = [v9 length];

    v15 = v20;
    if (v14 + v13 <= [v20 length])
    {
      v15 = [v20 stringByReplacingCharactersInRange:v13 withString:{v14, v5}];
    }

    v16 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v15];
    [(TIKeyboardInputManagerChinesePhonetic *)self setInput:v16];

    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      v18 = v3 - [v17 convertedLength];

      v19 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
      if (v18 > v6)
      {
        [v9 hasSuffix:@"'"];
      }

      TIInputManager::set_input_index(v19);
    }
  }
}

- (void)shiftPinyinSyllableSelection
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    [v5 removeObjectAtIndex:0];

    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    [v6 removeObjectAtIndex:0];

    [(TIKeyboardInputManagerChinesePhonetic *)self setPinyinSyllableCandidates:0];

    [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)clearPinyinSyllableSelection
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
  [v3 removeAllObjects];

  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
  [v4 removeAllObjects];

  [(TIKeyboardInputManagerChinesePhonetic *)self setPinyinSyllableCandidates:0];

  [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)storeLanguageModelDynamicDataIncludingCache
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 storeLanguageModelDynamicDataIncludingCache];
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
  {
    v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v3 mecabra];
    MecabraFlushDynamicData();
  }
}

- (id)newInputManagerState
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  v2 = [(TIKeyboardInputManagerChinesePhonetic *)&v4 newInputManagerState];
  if (GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::onceToken != -1)
  {
    dispatch_once(&GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::onceToken, &__block_literal_global_444);
  }

  [v2 setInputsPreventingAcceptSelectedCandidate:GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::__inputsPreventingAcceptCurrentCandidateIfSelectedSet];
  return v2;
}

- (void)didDeleteCandidates:(id)a3
{
  v4 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v4 clearCache];

  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [v5 clear];
}

- (void)suspend
{
  v3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v3 clearCache];

  [(TIMecabraIMLogger *)self->_logger writeLogToFile];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 suspend];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 dealloc];
}

- (BOOL)supportsNumberKeySelection
{
  v2 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v3 = [v2 length] != 0;

  return v3;
}

- (TIKeyboardInputManagerChinesePhonetic)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerChinesePhonetic;
  v4 = [(TIKeyboardInputManagerChinese *)&v17 initWithConfig:a3 keyboardState:a4];
  v5 = v4;
  if (v4)
  {
    v4->_isCandidateSelected = 0;
    v6 = [MEMORY[0x277CBEB18] array];
    replacedAmbiguousPinyinSyllables = v5->_replacedAmbiguousPinyinSyllables;
    v5->_replacedAmbiguousPinyinSyllables = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    replacementUnambiguousPinyinSyllables = v5->_replacementUnambiguousPinyinSyllables;
    v5->_replacementUnambiguousPinyinSyllables = v8;

    v5->_selectedPinyinSyllableCandidateIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_shouldAdvanceSyllableSelection = 1;
    v10 = objc_alloc_init(TIConversionHistory);
    conversionHistory = v5->_conversionHistory;
    v5->_conversionHistory = v10;

    segments = v5->_segments;
    v5->_segments = MEMORY[0x277CBEBF8];

    if ([MEMORY[0x277D6FEB8] isLoggingEnabled])
    {
      v13 = objc_alloc_init(MEMORY[0x277D6FEB8]);
      logger = v5->_logger;
      v5->_logger = v13;

      NSLog(&cfstr_TimecabraimLog.isa);
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v5 selector:sel_didDeleteCandidates_ name:@"MecabraDatabaseDeletedAllElementsNotification" object:0];
  }

  return v5;
}

+ (id)stringFallBackForTenKeyInput:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = MEMORY[0x277CCAB68];
  v8 = a3;
  v9 = [v7 string];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__TIKeyboardInputManagerChinesePhonetic_stringFallBackForTenKeyInput_range___block_invoke;
  v12[3] = &unk_279D9D5C8;
  v14 = a1;
  v10 = v9;
  v13 = v10;
  [v8 enumerateSubstringsInRange:location options:length usingBlock:{2, v12}];

  return v10;
}

void __76__TIKeyboardInputManagerChinesePhonetic_stringFallBackForTenKeyInput_range___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 ambiguousDefaults];
  v7 = [v5 objectForKey:v4];

  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

  [*(a1 + 32) appendString:v6];
}

+ (id)directlyCommittedCharacterSetForEmptyInline
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__TIKeyboardInputManagerChinesePhonetic_directlyCommittedCharacterSetForEmptyInline__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__onceToken, block);
  }

  v2 = +[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__committedCharacterSetForEmptyInline;

  return v2;
}

void __84__TIKeyboardInputManagerChinesePhonetic_directlyCommittedCharacterSetForEmptyInline__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCAB50] letterCharacterSet];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() ambiguousPinyinSet];
  [v6 formUnionWithCharacterSet:v3];

  v4 = [v6 invertedSet];
  v5 = +[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__committedCharacterSetForEmptyInline;
  +[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__committedCharacterSetForEmptyInline = v4;
}

+ (id)ambiguousDefaults
{
  v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults;
  if (!+[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"a", @"➋", @"d", @"➌", @"g", @"➍", @"j", @"➎", @"m", @"➏", @"p", @"➐", @"t", @"➑", @"w", @"➒", 0}];
    v4 = +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults;
    +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults = v3;

    v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults;
  }

  return v2;
}

+ (id)ambiguousAndPinyinCharacterSet
{
  if (+[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__onceToken, &__block_literal_global_560);
  }

  v3 = +[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__ambiguousAndPinyinCharacterSet;

  return v3;
}

uint64_t __71__TIKeyboardInputManagerChinesePhonetic_ambiguousAndPinyinCharacterSet__block_invoke()
{
  +[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__ambiguousAndPinyinCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"➋➌➍➎➏➐➑➒abcdefghijklmnopqrstuvwxyz'"];

  return MEMORY[0x2821F96F8]();
}

+ (id)ambiguousPinyinSet
{
  v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet;
  if (!+[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet)
  {
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"➋➌➍➎➏➐➑➒"];
    v4 = +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet;
    +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet = v3;

    v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet;
  }

  return v2;
}

@end