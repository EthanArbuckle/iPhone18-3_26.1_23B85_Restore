@interface TIKeyboardInputManagerMecabra
+ (id)dummyGeometryData;
+ (id)initializedClients;
+ (id)inputMethodWithChainedKeyboardInputManager:(id)a3;
+ (id)offlineLearningHandleForInputMode:(id)a3;
+ (void)removeDynamicDictionaryForInputMode:(id)a3;
- (BOOL)alreadyGeneratedCandidates;
- (BOOL)isProgressivelyPathing;
- (BOOL)shouldClearInputOnMarkedTextOutOfSync;
- (BOOL)shouldDelayUpdateComposedText;
- (BOOL)shouldInsertSpaceBeforePredictions;
- (BOOL)shouldUpdateLanguageModel;
- (BOOL)stringContainsActiveSupplementalLexiconSearchPrefix:(id)a3;
- (BOOL)stringEndsWord:(id)a3;
- (BOOL)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
- (BOOL)updateLanguageModelForKeyboardState;
- (BOOL)usesContinuousPath;
- (CGRect)baseCharacterKeysLayoutFrame;
- (CGRect)currentCharacterKeysLayoutFrame;
- (MCKeyboardInput)composingInput;
- (NSCharacterSet)validCharacterSetForAutocorrection;
- (NSMutableArray)geometryDataArray;
- (NSMutableArray)touchDataArray;
- (RefPtr<TI::Favonius::KeyboardLayout>)baseCharacterKeysLayout;
- (RefPtr<TI::Favonius::KeyboardLayout>)characterKeysLayoutFrom:(const void *)a3;
- (RefPtr<TI::Favonius::KeyboardLayout>)currentCharacterKeysLayout;
- (RefPtr<TI::Favonius::KeyboardLayout>)currentLayout;
- (TIKeyboardInputManagerMecabra)initWithConfig:(id)a3 keyboardState:(id)a4;
- (TIKeyboardInputManagerMecabra)initWithKeyboardInputManagerToChain:(id)a3;
- (_NSRange)analysisStringRange;
- (__Mecabra)mecabra;
- (id).cxx_construct;
- (id)_convertInputsToSyntheticInputUptoCount:(int)a3 cursorIndex:(id)a4;
- (id)_convertInputsToSyntheticInputWithOffset:(unint64_t)a3;
- (id)adaptationContextReadingForReanalysisString:(id)a3 fromRecentlyCommittedCandidates:(id)a4;
- (id)autocorrectionListFromWordSearchCandidateResultSet:(id)a3 emojiCandidates:(id)a4;
- (id)autocorrectionListWithCandidateCount:(unint64_t)a3;
- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)generateRefinementsForCandidate:(id)a3;
- (id)generateReplacementsForString:(id)a3 keyLayout:(id)a4;
- (id)geometryModelData;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputsToReject;
- (id)keyboardConfiguration;
- (id)lexiconLocaleOfCandidate:(void *)a3;
- (id)pathedWordSeparator;
- (id)processAcceptedCandidate:(id)a3;
- (id)segmentsFromCandidate:(id)a3 phraseBoundary:(BOOL)a4;
- (id)touchDataForPathIndex:(int64_t)a3;
- (int)mecabraTextContentTypeFromTITextContentType:(id)a3;
- (int64_t)performHitTestForTouchEvent:(id)a3 keyboardState:(id)a4;
- (pair<NSString)_supplementalItemIdentifiersInCurrentSelection;
- (unint64_t)inputIndexWithDrawInput;
- (void)_replaceComposingInputWithSyntheticInput:(id)a3 internalIndex:(unint64_t)a4;
- (void)addProactiveTriggers:(id)a3 withCompletionHandler:(id)a4;
- (void)addStickers:(id)a3 withCompletionHandler:(id)a4;
- (void)cancelComposition;
- (void)candidateRejected:(id)a3;
- (void)clearInput;
- (void)completeComposition;
- (void)composeTextWith:(id)a3;
- (void)dealloc;
- (void)deleteFromInputWithContext:(id)a3;
- (void)dropInputPrefix:(unsigned int)a3;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5;
- (void)handlePerformBackgroundMaintenanceNotification;
- (void)incrementUsageTrackingKeysForDeleteFromInput;
- (void)insertDummyGeometryDataAtIndex:(unint64_t)a3;
- (void)insertDummyTouchDataAtIndex:(unint64_t)a3;
- (void)keyLayoutWillChangeTo:(id)a3 from:(id)a4;
- (void)lastAcceptedCandidateCorrected;
- (void)logAllCandidates;
- (void)logCommittedCandidate:(id)a3 partial:(BOOL)a4;
- (void)logDocumentContext;
- (void)logInputString;
- (void)mecabraCandidateRefFromCandidate:(id)a3;
- (void)padGeometryForInput:(id)a3 atIndex:(unint64_t)a4;
- (void)processDeleteInputs;
- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6;
- (void)registerLearningForCompletion:(id)a3 fullCompletion:(id)a4 context:(id)a5 prefix:(id)a6 mode:(id)a7;
- (void)restoreGeometryForInput:(id)a3 atIndex:(unint64_t)a4;
- (void)resume;
- (void)saveGeometryForInput:(id)a3 atIndex:(unint64_t)a4;
- (void)savePartialGeometryData;
- (void)saveTouchDataForEvent:(id)a3 atIndex:(unint64_t)a4;
- (void)setKeyboardState:(id)a3;
- (void)setLanguageModelAdaptationContext;
- (void)setOriginalInput:(id)a3;
- (void)skipHitTestForTouchEvent:(id)a3 keyboardState:(id)a4;
- (void)storeLanguageModelDynamicDataIncludingCache;
- (void)suspend;
- (void)tearDown;
- (void)updateComposedText;
- (void)updateDocumentContext;
- (void)updateProactiveCandidatesForCandidateResultSet:(id)a3 withInput:(id)a4;
- (void)updateUsageStatisticsForCandidate:(id)a3 isPartial:(BOOL)a4;
@end

@implementation TIKeyboardInputManagerMecabra

- (id).cxx_construct
{
  *(self + 84) = 0;
  *(self + 85) = 0;
  *(self + 94) = 0;
  return self;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)currentLayout
{
  compositionCompletionHandler = self->_compositionCompletionHandler;
  *v2 = compositionCompletionHandler;
  if (compositionCompletionHandler)
  {
    atomic_fetch_add(compositionCompletionHandler, 1u);
  }

  return self;
}

- (void)processDeleteInputs
{
  v2 = self;
  v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [v3 inputs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0x27872D000uLL;
    v85 = v2;
    while (1)
    {
      v9 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
      v10 = [v9 inputs];
      v11 = [v10 objectAtIndexedSubscript:v6];

      v12 = *(v8 + 1168);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_24:

      v7 = (v7 + 1);
      v6 = v7;
      v33 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
      v34 = [v33 inputs];
      v35 = [v34 count];

      if (v35 <= v7)
      {
        return;
      }
    }

    v13 = v11;
    v14 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
    v15 = v14;
    v16 = (v7 - 1);
    if (v7 < 1)
    {
      [v14 removeInputAtIndex:v6];
      v18 = v15;
      goto LABEL_13;
    }

    v17 = [v14 inputs];
    v18 = [v17 objectAtIndexedSubscript:(v7 - 1)];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 shouldDeleteAcceptCandidateInput])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v32 = [(TIKeyboardInputManagerMecabra *)v2 convertInputsToSyntheticInputUptoCount:v7];
          LODWORD(v7) = 0;
          goto LABEL_23;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v18;
          v37 = [v36 syllables];
          v38 = [v37 mutableCopy];

          v39 = [v36 committedText];
          v87 = [v39 mutableCopy];

          v40 = v36;
          v88 = 0;
          v41 = [v36 syllableIndex:&v88];
          v84 = v38;
          v42 = [v38 count];
          v43 = v36;
          if (!v42 || v41 < 0)
          {
            v48 = [v13 deleteBySyllable];
            v45 = 0;
            v49 = 0;
            if (!v48)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v44 = v88;
            if (([v13 deleteBySyllable] & 1) == 0)
            {
              if ((v44 & 0x80000000) == 0)
              {
LABEL_46:
                v59 = [v84 objectAtIndexedSubscript:v41];
                v63 = v41;
                [v84 removeObjectAtIndex:v41];
                if (v88 > 0)
                {
                  v61 = [v59 substringWithRange:{(v88 - 1), 1}];
                  v64 = [v59 mutableCopy];
                  [v64 deleteCharactersInRange:{v88 - 1, 1}];
                  if ([v64 length])
                  {
                    [v84 insertObject:v64 atIndex:v63];
                  }

                  v49 = 0;
                  goto LABEL_53;
                }
              }

LABEL_56:
              v49 = 0;
              goto LABEL_57;
            }

            v45 = v44 >= 0;
            v40 = v36;
          }

          v83 = v45;
          v50 = [v40 inputs];
          v51 = [v50 count];

          if (v51)
          {
            v52 = [v43 inputs];
            v53 = [v52 count];

            v54 = v53 - 1;
            while ((v54 & 0x80000000) == 0)
            {
              v55 = [v43 inputs];
              v56 = [v55 objectAtIndexedSubscript:v54];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {

                if (v83)
                {
                  goto LABEL_41;
                }

                goto LABEL_51;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              --v54;
              if (isKindOfClass)
              {
                if (v83)
                {
                  goto LABEL_46;
                }

                goto LABEL_56;
              }
            }
          }

          if (v83)
          {
LABEL_41:
            v58 = v41;
            v59 = [v84 objectAtIndexedSubscript:v41];
            [v84 removeObjectAtIndex:v41];
            v60 = v88;
            if ([v59 length] <= v60)
            {
              v59 = v59;
              v49 = 1;
              v61 = v59;
            }

            else
            {
              v61 = [v59 substringToIndex:v88];
              v62 = [v59 substringFromIndex:v88];
              if ([v62 length])
              {
                [v84 insertObject:v62 atIndex:v58];
              }

              v49 = 1;
            }

LABEL_53:
            v40 = v43;

            if (v61)
            {
              goto LABEL_64;
            }

            goto LABEL_58;
          }

LABEL_51:
          v49 = 1;
LABEL_57:
          v40 = v43;
LABEL_58:
          if ([v87 length])
          {
            v65 = v40;
            v66 = [v40 cursorIndex];
            if (v66 >= [v87 length])
            {
              v67 = [v87 length];
            }

            else
            {
              v67 = [v65 cursorIndex];
            }

            v68 = [v87 rangeOfComposedCharacterSequenceAtIndex:v67 - 1];
            v70 = v69;
            v61 = [v87 substringWithRange:{v68, v69}];
            [v87 deleteCharactersInRange:{v68, v70}];
            v40 = v43;
          }

          else
          {
            v61 = 0;
          }

LABEL_64:
          v71 = [v40 syntheticInputWithCommittedText:v87 syllables:v84];
          v72 = v40;
          v73 = v71;
          v7 = [v71 syntheticInputWithCursorIndex:{objc_msgSend(v72, "cursorIndex") - objc_msgSend(v61, "length")}];

          [v7 setIncludeSuffixAsSearchString:1];
          v74 = -[MCDeleteInput initWithDeletedText:deleteBySyllable:shouldDeleteAcceptCandidateInput:]([MCDeleteInput alloc], "initWithDeletedText:deleteBySyllable:shouldDeleteAcceptCandidateInput:", v61, v49, [v13 shouldDeleteAcceptCandidateInput]);
          [v7 composeNew:v74];
          v75 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
          [v75 removeInputAtIndex:v6];

          v76 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
          [v76 removeInputAtIndex:v16];

          v77 = [v7 text];
          v78 = [v77 length];

          if (v78)
          {
            v79 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
            [v79 insertInput:v7 atIndex:v16];

            v80 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
            v81 = [v80 composingInput];

            if (!v81)
            {
              v82 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
              [v82 setComposingInput:v7];
            }
          }

          v18 = v43;
          LODWORD(v7) = 0;
          v8 = 0x27872D000;
          goto LABEL_23;
        }

        [(TIKeyboardInputManagerMecabra *)v2 composingInput];
        v47 = v46 = v18;
        [v47 removeInputAtIndex:v6];

        v18 = v46;
LABEL_13:
        LODWORD(v7) = v16;
LABEL_23:

        goto LABEL_24;
      }
    }

    v86 = v18;
    v19 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
    [v19 removeInputAtIndex:v6];

    v20 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
    [v20 removeInputAtIndex:(v7 - 1)];

    if (v7 <= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v7;
    }

    v7 = (v21 - 2);
    v22 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
    v23 = [v22 inputs];
    if ([v23 count] <= v7)
    {
    }

    else
    {
      v24 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
      v25 = [v24 inputs];
      [v25 objectAtIndexedSubscript:v7];
      v26 = v13;
      v28 = v27 = v8;
      objc_opt_class();
      v29 = objc_opt_isKindOfClass();

      v8 = v27;
      v13 = v26;

      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      v30 = [(TIKeyboardInputManagerMecabra *)v85 composingInput];
      v31 = [v30 inputs];
      v22 = [v31 objectAtIndexedSubscript:v7];

      [v22 setIncludeSuffixAsSearchString:1];
    }

LABEL_21:
    objc_opt_class();
    v18 = v86;
    v2 = v85;
    if (objc_opt_isKindOfClass())
    {
      [(TIKeyboardInputManagerMecabra *)v85 setPreviouslyDeletedTypeInput:v86];
    }

    goto LABEL_23;
  }
}

- (void)_replaceComposingInputWithSyntheticInput:(id)a3 internalIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v8 = [v6 text];
    v9 = v8;
    if (a4)
    {
      v10 = [v8 length];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __88__TIKeyboardInputManagerMecabra__replaceComposingInputWithSyntheticInput_internalIndex___block_invoke;
      v14[3] = &unk_27872F500;
      v14[5] = &v16;
      v14[6] = a4;
      v14[4] = v15;
      [v9 enumerateSubstringsInRange:0 options:v10 usingBlock:{514, v14}];
    }

    v11 = [v7 syntheticInputWithCursorIndex:v17[3]];

    [v11 setIncludeSuffixAsSearchString:0];
    v12 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v12 replaceInputAtIndex:0 with:v11];

    v13 = [(TIKeyboardInputManagerMecabra *)self previouslyDeletedTypeInput];

    if (!v13)
    {
      [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:v11];
    }

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v16, 8);
  }
}

void *__88__TIKeyboardInputManagerMecabra__replaceComposingInputWithSyntheticInput_internalIndex___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(result[4] + 8) + 24) >= result[6])
  {
    *(*(result[5] + 8) + 24) = a3 + a4;
    *a7 = 1;
  }

  return result;
}

- (id)_convertInputsToSyntheticInputWithOffset:(unint64_t)a3
{
  v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v6 = [v5 inputs];
  if ([v6 count] != 1)
  {

LABEL_5:
    v14 = [(TIKeyboardInputManager *)self keyboardState];
    v15 = [v14 documentState];
    v16 = [v15 markedText];
    v17 = [v16 length];

    v18 = [(TIKeyboardInputManager *)self keyboardState];
    v12 = [v18 documentState];
    v19 = [(__CFString *)v12 markedText];
    v11 = v19;
    if (v17 > a3)
    {

      if ([v11 length] <= a3)
      {
        v12 = &stru_283FDFAF8;
      }

      else
      {
        v12 = [v11 substringFromIndex:a3];
      }

      v26 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v27 = [v26 inputs];
      v28 = [v27 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_17;
      }

      v30 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v31 = [v30 inputs];
      v32 = [v31 firstObject];

      if (v32)
      {
        v33 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
        v34 = [v32 externalSuffix:v33];

        v35 = 0;
      }

      else
      {
LABEL_17:
        v35 = 1;
        v34 = &stru_283FDFAF8;
      }

      v36 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
      v37 = [v36 stringByAppendingString:v34];

      if ((v35 & 1) == 0 && (([(__CFString *)v12 isEqualToString:v34]& 1) != 0 || ([(__CFString *)v12 isEqualToString:v37]& 1) != 0))
      {
        v13 = 0;
      }

      else
      {
        v38 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v39 = [v38 inputs];
        v13 = -[TIKeyboardInputManagerMecabra convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [v39 count]);
      }

LABEL_24:
      goto LABEL_28;
    }

    if ([v19 length] == a3)
    {
      v20 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v21 = [v20 inputs];
      if ([v21 count] >= 2)
      {
        v22 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v23 = [v22 inputs];
        v24 = [v23 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v46 = [v25 hasKindOf:objc_opt_class()];

          if (v46)
          {
            v13 = 0;
            goto LABEL_30;
          }

          v41 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v42 = [v41 inputs];
          v11 = [v42 firstObject];

          v43 = [v11 cursorIndex];
          v44 = [v11 text];
          v45 = [v44 length];

          if (v43 >= v45)
          {
            v13 = 0;
            goto LABEL_29;
          }

          v12 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v34 = [(__CFString *)v12 inputs];
          v13 = [(TIKeyboardInputManagerMecabra *)self convertInputsToSyntheticInputUptoCount:[(__CFString *)v34 count]];
          goto LABEL_24;
        }
      }
    }

    v13 = 0;
    v11 = v18;
    goto LABEL_28;
  }

  v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v8 = [v7 inputs];
  v9 = [v8 firstObject];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v12 = [v11 inputs];
  v13 = [(__CFString *)v12 firstObject];
LABEL_28:

LABEL_29:
LABEL_30:

  return v13;
}

- (void)lastAcceptedCandidateCorrected
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v3)
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v4 lastAcceptedCandidateCorrected];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManagerBase *)&v5 lastAcceptedCandidateCorrected];
  }
}

- (void)registerLearningForCompletion:(id)a3 fullCompletion:(id)a4 context:(id)a5 prefix:(id)a6 mode:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v17)
  {
    v18 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v18 registerLearningForCompletion:v12 fullCompletion:v13 context:v14 prefix:v15 mode:v16];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v19 registerLearningForCompletion:v12 fullCompletion:v13 context:v14 prefix:v15 mode:v16];
  }
}

- (void)registerLearning:(id)a3 fullCandidate:(id)a4 keyboardState:(id)a5 mode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v14)
  {
    v15 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v15 registerLearning:v10 fullCandidate:v11 keyboardState:v12 mode:v13];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v16 registerLearning:v10 fullCandidate:v11 keyboardState:v12 mode:v13];
  }
}

- (void)candidateRejected:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v5)
  {
    v6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v6 candidateRejected:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v7 candidateRejected:v4];
  }
}

- (void)setOriginalInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v5)
  {
    v6 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v6 setOriginalInput:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v7 setOriginalInput:v4];
  }
}

- (void)skipHitTestForTouchEvent:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v8)
  {
    v9 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v9 skipHitTestForTouchEvent:v6 keyboardState:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v10 skipHitTestForTouchEvent:v6 keyboardState:v7];
  }
}

- (int64_t)performHitTestForTouchEvent:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v8)
  {
    v9 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v10 = [v9 performHitTestForTouchEvent:v6 keyboardState:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManagerMecabra;
    v10 = [(TIKeyboardInputManager *)&v12 performHitTestForTouchEvent:v6 keyboardState:v7];
  }

  return v10;
}

- (id)generateRefinementsForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 generateRefinementsForCandidate:v4];

  return v6;
}

- (id)generateReplacementsForString:(id)a3 keyLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v9 = [v8 generateReplacementsForString:v7 keyLayout:v6];

  return v9;
}

- (id)autocorrectionListFromWordSearchCandidateResultSet:(id)a3 emojiCandidates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 candidates];
  v10 = [v7 proactiveCandidates];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v7 proactiveCandidates];
    v13 = [v7 candidates];
    v14 = [v12 arrayByAddingObjectsFromArray:v13];

    v9 = v14;
  }

  v35 = v9;
  v15 = [v9 firstObject];
  v16 = [v15 input];
  v17 = [v16 length];
  if (v17)
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    if ([v4 autoCorrects])
    {
      if (![(TIKeyboardInputManager *)self shouldBlockAutocorrection:v15])
      {
        goto LABEL_8;
      }
    }
  }

  v18 = v8;
  v19 = [v15 input];
  v20 = [v15 candidate];
  if ([v19 isEqualToString:v20])
  {

    v8 = v18;
    if (!v17)
    {
LABEL_9:
      v21 = v7;

      goto LABEL_13;
    }

LABEL_8:

    goto LABEL_9;
  }

  v21 = v7;
  v22 = [v15 isContinuousPathConversion];

  if (v17)
  {
  }

  v8 = v18;
  if ((v22 & 1) == 0)
  {
    v29 = [(TIKeyboardInputManager_mul *)self typedStringForEmptyAutocorrection];
    v26 = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:v29];
    v23 = v35;
    v30 = v35;

    goto LABEL_24;
  }

LABEL_13:
  v23 = v35;
  if ([v15 isSupplementalItemCandidate])
  {
    v24 = MEMORY[0x277D6F3D8];
    v25 = [v15 input];
    v26 = [v24 candidateWithUnchangedInput:v25];

LABEL_15:
    v27 = v35;
LABEL_23:
    v30 = v27;
    goto LABEL_24;
  }

  v28 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  if ([v28 autoCorrects])
  {
  }

  else
  {
    v31 = [(TIKeyboardInputManager_mul *)self isUsingMultilingual];

    if (v31)
    {
      v26 = [(TIKeyboardInputManager *)self defaultCandidate];
      goto LABEL_15;
    }
  }

  v26 = v15;
  if ([v35 count] >= 2)
  {
    v27 = [v35 subarrayWithRange:{1, objc_msgSend(v35, "count") - 1}];
    goto LABEL_23;
  }

  v30 = MEMORY[0x277CBEBF8];
LABEL_24:
  if (([v26 isContinuousPathConversion] & 1) == 0)
  {
    [v26 setConfidence:2];
  }

  v32 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:v26 alternateCorrections:0];
  v33 = [MEMORY[0x277D6F328] listWithCorrections:v32 predictions:v30 emojiList:v8];

  return v33;
}

- (id)lexiconLocaleOfCandidate:(void *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v4 = 0;
  while (MecabraCandidateGetWordLengthAtIndex())
  {
    WordLocaleAtIndex = MecabraCandidateCreateWordLocaleAtIndex();
    if (!WordLocaleAtIndex)
    {
      goto LABEL_9;
    }

    v6 = WordLocaleAtIndex;
    v7 = MEMORY[0x2318BC170]();
    if ([v3 indexOfObject:v7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 addObject:v7];
    }

    ++v4;

    CFRelease(v6);
  }

  if ([v3 count])
  {
    v8 = [v3 componentsJoinedByString:@"/"];
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

- (id)autocorrectionListWithCandidateCount:(unint64_t)a3
{
  v116 = *MEMORY[0x277D85DE8];
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__267;
  v111 = __Block_byref_object_dispose__268;
  v112 = objc_alloc_init(TIWordSearchCandidateResultSet);
  TIInputManager::input_substring(self->super.super.m_impl + 4, 0, -858993459 * ((*(self->super.super.m_impl + 2) - *(self->super.super.m_impl + 1)) >> 3), &location);
  v5 = KB::ns_string(&location, v4);
  if (v115 && BYTE6(location) == 1)
  {
    free(v115);
  }

  v6 = [(TIKeyboardInputManager *)self inputString];
  if ([(TIKeyboardInputManager *)self shouldGeneratePredictionsForCurrentContext]&& ![(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v5])
  {

    v6 = &stru_283FDFAF8;
    v76 = 1;
    v85 = &stru_283FDFAF8;
    v87 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v85 = v5;
    v87 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
    v76 = 0;
  }

  v81 = v6;
  v7 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  if (([v7 autoCorrects] & 1) != 0 || -[TIKeyboardInputManager_mul isUsingMultilingual](self, "isUsingMultilingual"))
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  if ([v7 shouldLearnAcceptedCandidate])
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 | 0x80;
  }

  v10 = [(TIKeyboardInputManagerMecabra *)self additionalAnalysisOptions];
  objc_initWeak(&location, self);
  v11 = [(TIKeyboardInputManager *)self keyboardState];
  v12 = [v11 documentState];

  v13 = [v12 contextBeforeInput];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_283FDFAF8;
  }

  v83 = v15;

  v16 = [v12 contextAfterInput];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_283FDFAF8;
  }

  v19 = v18;

  v20 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v21 = [v20 composingInput];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = [v20 composingInput];
  }

  else
  {
    v79 = 0;
  }

  v22 = (v9 | v10);

  v89 = v12;
  if (![(TIKeyboardInputManagerMecabra *)self canTypeAndPathSimultaneously])
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v23 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v24 = [v23 inputs];

    v25 = [v24 countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v25)
    {
      v26 = v25;
      v75 = v19;
      v27 = *v104;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v104 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v103 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = objc_opt_new();

            [v30 composeNew:v29];
            v20 = v30;
            goto LABEL_35;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v103 objects:v113 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v19 = v75;
    }
  }

  v31 = [(TIKeyboardInputManagerMecabra *)self pathedWordSeparatorChar];
  v32 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  v33 = MEMORY[0x277CCA8C8];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __70__TIKeyboardInputManagerMecabra_autocorrectionListWithCandidateCount___block_invoke;
  v90[3] = &unk_27872F4D8;
  v34 = v7;
  v91 = v34;
  objc_copyWeak(v101, &location);
  v88 = v87;
  v92 = v88;
  v35 = v85;
  v93 = v35;
  v86 = v83;
  v94 = v86;
  v84 = v19;
  v95 = v84;
  v36 = v20;
  v96 = v36;
  v101[1] = v22;
  v37 = v79;
  v97 = v37;
  v98 = self;
  v100 = &v107;
  v38 = v81;
  v99 = v38;
  v102 = v31;
  v39 = [v33 blockOperationWithBlock:v90];
  [v32 performOperationAsync:v39];

  v40 = +[TIWordSearch sharedOperationQueue];
  [v40 waitUntilAllOperationsAreFinished];

  v41 = [v108[5] candidates];
  v42 = [v41 count];

  if (v42 || !v37)
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v108[5]];
    if (!v37)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v44 = [v43 totalDrawSamples];
    v45 = [(TIKeyboardInputManagerMecabra *)self maxDrawSamplesWithNoCandidatesResult];

    if (v44 > v45)
    {
      v46 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v46 removeAllInputs];

      v47 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v48 = [v47 candidates];
      v49 = [v48 firstObject];
      v50 = [v49 isContinuousPathConversion];

      if (v50)
      {
        v51 = [(TIKeyboardInputManagerMecabra *)self autocorrectionListWithCandidateCount:a3];
        v52 = v89;
        goto LABEL_52;
      }

      v53 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v54 = v108[5];
      v108[5] = v53;
    }
  }

  v55 = [v108[5] candidates];
  v56 = [v55 count];

  if (!v56)
  {
LABEL_47:
    v78 = v36;
    v80 = v38;
    v82 = v35;
    v57 = v34;
    v59 = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
    v65 = [(TIKeyboardInputManager *)self keyboardState];
    if (v76)
    {
      [v59 emojiAdornmentCandidatesForKeyboardState:v65];
    }

    else
    {
      [v59 emojiReplacementCandidatesForKeyboardState:v65];
    }
    v67 = ;
    goto LABEL_51;
  }

  v78 = v36;
  v80 = v38;
  v82 = v35;
  v57 = v34;
  v58 = [v108[5] candidates];
  v59 = [v58 objectAtIndexedSubscript:0];

  v60 = MEMORY[0x277CCACA8];
  v61 = [(TIKeyboardInputManager *)self keyboardState];
  v62 = [v61 documentState];
  v63 = [v62 contextBeforeInput];
  v64 = [v59 candidate];
  v65 = [v60 stringWithFormat:@"%@ %@", v63, v64];

  v66 = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
  v67 = [v66 emojiReplacementCandidatesForText:v65];

LABEL_51:
  v52 = v89;

  v51 = [(TIKeyboardInputManagerMecabra *)self autocorrectionListFromWordSearchCandidateResultSet:v108[5] emojiCandidates:v67];
  v68 = [(TIKeyboardInputManager *)self autocorrectionForCurrentStem];
  v69 = [v51 corrections];
  v70 = [v69 autocorrection];
  v71 = [v70 candidate];
  v72 = [(TIKeyboardInputManager *)self currentWordStem];
  [v68 setObject:v71 forKey:v72];

  v34 = v57;
  v38 = v80;
  v35 = v82;
  v36 = v78;
LABEL_52:

  objc_destroyWeak(v101);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v107, 8);
  v73 = *MEMORY[0x277D85DE8];

  return v51;
}

void __70__TIKeyboardInputManagerMecabra_autocorrectionListWithCandidateCount___block_invoke(uint64_t a1)
{
  v24 = [*(a1 + 32) mecabraEnvironment];
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  [v24 setGeometryModel:WeakRetained modelData:*(a1 + 40)];

  if (![*(a1 + 48) length])
  {
    [v24 setLeftDocumentContext:*(a1 + 56)];
    [v24 setRightDocumentContext:*(a1 + 64)];
    [v24 adjustEnvironmentDirectly:0];
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    if (![v24 analyzeString:*(a1 + 48) options:*(a1 + 120)])
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  if ([v24 analyzeInput:v3 options:*(a1 + 120)])
  {
LABEL_7:
    if (*(a1 + 80))
    {
      v4 = [*(a1 + 88) shouldInsertSpaceBeforePredictions];
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    while (1)
    {
      while (1)
      {
        [*(a1 + 32) mecabra];
        NextCandidate = MecabraGetNextCandidate();
        if (!NextCandidate)
        {

          goto LABEL_39;
        }

        v7 = NextCandidate;
        if (MecabraCandidateGetType() != 6)
        {
          break;
        }

        [*(*(*(a1 + 104) + 8) + 40) addMecabraProactiveCandidate:v7 triggerSourceType:0];
      }

      v8 = objc_alloc(MEMORY[0x277D6F448]);
      if (v5)
      {
        break;
      }

      if ([*(a1 + 88) inputSessionWantsStemWhenEditing])
      {
        v9 = [*(a1 + 88) inputStem];
        goto LABEL_18;
      }

      v11 = [v8 initWithMecabraCandidate:v7 input:*(a1 + 96)];
LABEL_19:
      [v11 setContinuousPathConversion:*(a1 + 80) != 0];
      if ([*(a1 + 88) isUsingMultilingual])
      {
        v12 = [*(a1 + 88) lexiconLocaleOfCandidate:v7];
        [v11 setLexiconLocale:v12];

        v13 = [*(a1 + 88) wordSeparator];
        v14 = [*(a1 + 88) keyboardFeatureSpecializationSecondary];
        v15 = [v14 wordSeparator];

        if (([v13 isEqualToString:v15] & 1) == 0)
        {
          v16 = [*(a1 + 88) wordSeparatorForCandidate:v11];
          [v11 setWordSeparator:v16];
        }
      }

      if (*(a1 + 80))
      {
        if (*(a1 + 128))
        {
          if (v4)
          {
            v17 = [MEMORY[0x277CCACA8] _stringWithUnichar:?];
            v18 = [v11 candidate];
            v19 = [v17 stringByAppendingString:v18];
          }

          else
          {
            v19 = [v11 candidate];
          }

          v20 = [v5 candidate];
          v21 = [v19 isEqualToString:v20];

          if ((v21 & 1) == 0)
          {
            v22 = [v11 candidateByReplacingWithCandidate:v19];

            [v22 setMecabraCandidatePointerValue:0];
            v7 = 0;
            v11 = v22;
          }
        }

        if (!v5)
        {
          v11 = v11;
          if ([*(a1 + 80) isCompleting])
          {
            v23 = 1;
          }

          else
          {
            v23 = [*(a1 + 80) isComplete];
          }

          [v11 setShouldAccept:v23];
          v5 = v11;
        }
      }

      [*(*(*(a1 + 104) + 8) + 40) addMecabraCandidate:v11 mecabraCandidateRef:v7];
    }

    v9 = [v5 candidate];
LABEL_18:
    v10 = v9;
    v11 = [v8 initWithMecabraCandidate:v7 input:v9];

    goto LABEL_19;
  }

LABEL_39:
  if (![*(a1 + 48) length])
  {
    [*(a1 + 32) insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet:*(*(*(a1 + 104) + 8) + 40)];
  }
}

- (BOOL)shouldInsertSpaceBeforePredictions
{
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 contextBeforeInput];

  if ([v5 length] && (objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "characterIsMember:", objc_msgSend(v5, "_lastLongCharacter")), v6, (v7 & 1) == 0))
  {
    v9 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v10 = [v9 characterIsMember:{objc_msgSend(v5, "_lastLongCharacter")}];

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [v5 _lastGrapheme];
    v12 = [(TIKeyboardInputManager *)self terminatorsPrecedingAutospace];
    v13 = [v12 characterSet];
    v14 = [v11 rangeOfCharacterFromSet:v13];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(TIKeyboardInputManager *)self stringEndsWithClosingQuote:v5];
    }

    else
    {
LABEL_7:
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([(TIKeyboardInputManagerMecabra *)self alreadyGeneratedCandidates]|| ![(TIKeyboardInputManagerMecabra *)self supportsCandidateGeneration])
  {
    v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v11 generateCandidatesWithKeyboardState:v9 candidateRange:location candidateHandler:{length, v10}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v12 generateCandidatesWithKeyboardState:v9 candidateRange:location candidateHandler:length, v10];
  }
}

- (BOOL)alreadyGeneratedCandidates
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if ([v3 alreadyGeneratedCandidates])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v4 = [v5 supportsCandidateGeneration];
  }

  return v4;
}

- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 candidateHandler:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (v11)
  {
    v12 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v12 generateAutocorrectionsWithKeyboardState:v9 candidateRange:location candidateHandler:{length, v10}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v13 generateAutocorrectionsWithKeyboardState:v9 candidateRange:location candidateHandler:length, v10];
  }
}

- (id)keyboardConfiguration
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v4 = [v3 keyboardConfiguration];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManagerMecabra;
    v6 = [(TIKeyboardInputManager_mul *)&v9 keyboardConfiguration];
  }

  v7 = v6;

  return v7;
}

- (void)updateProactiveCandidatesForCandidateResultSet:(id)a3 withInput:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 proactiveTriggers];
  if ([v8 count])
  {

    goto LABEL_3;
  }

  v19 = +[TIProactiveQuickTypeManager sharedInstance];
  if (([v19 usePQT2Flow] & 1) == 0)
  {

    goto LABEL_17;
  }

  v20 = [v7 length];

  if (!v20)
  {
LABEL_3:
    v9 = [(TIKeyboardInputManager *)self keyboardState];
    v8 = [v9 secureCandidateRenderTraits];

    v10 = [(TIKeyboardInputManager *)self keyboardState];
    v11 = [v10 secureCandidateRenderTraits];
    [v11 setDisableHideMyEmail:1];

    [v8 singleCellWidth];
    if (v12 > 0.0 && ([v8 singleCellHeight], v13 > 0.0) || (objc_msgSend(v8, "cellWidthOptions"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      v15 = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
      v16 = [v15 asynchronous];

      v17 = [v6 proactiveTriggers];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __90__TIKeyboardInputManagerMecabra_updateProactiveCandidatesForCandidateResultSet_withInput___block_invoke;
      v23[3] = &unk_27872F4B0;
      v26 = v16;
      v24 = v6;
      v25 = self;
      [(TIKeyboardInputManager *)self generateAndRenderProactiveSuggestionsWithTriggers:v17 withAdditionalPredictions:0 withInput:v7 async:v16 completionHandler:v23];

      v18 = v24;
    }

    else
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_17;
      }

      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Not generating proactive candidates - invalid secure candidate width or height trait", "-[TIKeyboardInputManagerMecabra updateProactiveCandidatesForCandidateResultSet:withInput:]"];
        *buf = 138412290;
        v28 = v21;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_17:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __90__TIKeyboardInputManagerMecabra_updateProactiveCandidatesForCandidateResultSet_withInput___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setProactiveCandidates:v3];
  if (*(a1 + 48) == 1 && [v3 count])
  {
    v4 = [*(a1 + 40) candidateResultSetFromWordSearchCandidateResultSet:*(a1 + 32)];
    [*(a1 + 40) pushCandidateGenerationContextWithResults:v4];
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [*(a1 + 32) proactiveCandidates];
      v9 = [v7 stringWithFormat:@"%s ProactiveQuickType:TI: Generated proactive candidates: %@", "-[TIKeyboardInputManagerMecabra updateProactiveCandidatesForCandidateResultSet:withInput:]_block_invoke", v8];
      *buf = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addProactiveTriggers:(id)a3 withCompletionHandler:(id)a4
{
  v44 = a3;
  v46 = a4;
  v6 = [(TIKeyboardInputManager *)self keyboardState];
  v7 = [v6 textInputTraits];
  v8 = [v7 textContentType];

  v9 = [(TIKeyboardInputManager *)self keyboardState];
  v10 = [v9 textInputTraits];
  v11 = [v10 textContentType];
  v12 = [(TIKeyboardInputManager *)self keyboardState];
  v13 = [v12 documentState];
  v14 = [v13 contextBeforeInput];
  v15 = [(TIKeyboardInputManager *)self keyboardState];
  v16 = +[TIProactiveQuickTypeManager proactiveTriggerForTextContentType:withContextBeforeInput:autofillMode:](TIProactiveQuickTypeManager, "proactiveTriggerForTextContentType:withContextBeforeInput:autofillMode:", v11, v14, [v15 autofillMode]);

  v17 = [(TIKeyboardInputManager *)self keyboardState];
  v18 = [v17 documentState];
  v19 = [v18 markedText];
  LOBYTE(v10) = [v19 length] != 0;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_27872F3E8;
  v20 = v8;
  v53 = v20;
  v21 = v44;
  v54 = v21;
  v22 = v16;
  v55 = v22;
  v57 = v10;
  v23 = v46;
  v56 = v23;
  v24 = _Block_copy(aBlock);
  v25 = [(TIKeyboardInputManager *)self keyboardState];
  v26 = [v25 documentState];
  LODWORD(v12) = [v26 documentIsEmpty];

  if (!v12)
  {
    v24[2](v24, 0);
    goto LABEL_10;
  }

  v27 = [(TIKeyboardInputManager *)self keyboardState];
  v28 = [v27 responseContext];
  if (!v28)
  {

    goto LABEL_9;
  }

  v29 = v28;
  v30 = +[TIProactiveQuickTypeManager sharedInstance];
  v31 = [v30 usePQT2Flow];

  if (v31)
  {
LABEL_9:
    v24[2](v24, 1);
    goto LABEL_10;
  }

  v32 = [(TIKeyboardInputManager *)self keyboardState];
  [v32 shiftState];

  v33 = [(TIKeyboardInputManagerBase *)self inputMode];
  v45 = [v33 languageWithRegion];

  v34 = [(TIKeyboardInputManager *)self keyboardState];
  v35 = [v34 clientIdentifier];

  v36 = [(TIKeyboardInputManager *)self keyboardState];
  v37 = [v36 recipientIdentifier];

  v38 = [(TIKeyboardInputManager *)self keyboardState];
  v39 = [v38 responseContext];

  if (chineseJapaneseResponseKitBackgroundQueue(void)::onceToken != -1)
  {
    dispatch_once(&chineseJapaneseResponseKitBackgroundQueue(void)::onceToken, &__block_literal_global_1797);
  }

  v43 = chineseJapaneseResponseKitBackgroundQueue(void)::_instance;
  v48 = v35;
  v49 = v39;
  v51 = v24;
  v50 = v21;
  v47 = v45;
  v40 = v39;
  v41 = v37;
  v42 = v35;
  TIDispatchAsync();

LABEL_10:
}

uint64_t __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [TIProactiveQuickTypeManager proactiveTriggerForTextContentType:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = [v3 attributes];
      [v5 addSyntheticMecabraProactiveCandidate:v6 triggerSourceType:2];
    }
  }

  if (_os_feature_enabled_impl() && *(a1 + 48) && (*(a1 + 64) & 1) == 0)
  {
    [*(a1 + 40) addProactiveTrigger:?];
  }

  result = *(a1 + 56);
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_3;
  block[3] = &unk_278731400;
  v19 = v20;
  v18 = *(a1 + 80);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
  v3 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:*(a1 + 32) andRecipientContactInfo:*(a1 + 40)];
  v4 = [MEMORY[0x277D46BD8] sharedManager];
  v5 = *(a1 + 48);
  v6 = [(TILanguageModelAdaptationContext *)v3 identifierForResponseKit];
  v7 = *(a1 + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_4;
  v12[3] = &unk_27872F460;
  v16 = v20;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  [v4 responsesForMessage:v5 maximumResponses:10 forContext:v6 withLanguage:v8 options:v7 completionBlock:v12];

  _Block_object_dispose(v20, 8);
}

uint64_t __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_3(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 48);
  v7 = v3;
  TIDispatchAsync();
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_6;
    v8[3] = &unk_27872F410;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    [v3 enumerateObjectsWithOptions:2 usingBlock:v8];
    (*(*(a1 + 56) + 16))(*(a1 + 56), 1, v6, v7);
  }
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attributes];

  if (v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v29 = MEMORY[0x277CCACA8];
        v30 = [v3 attributes];
        v31 = [v29 stringWithFormat:@"%s ResponseKit:Proactive:TI: received proactive trigger [%@]", "-[TIKeyboardInputManagerMecabra addProactiveTriggers:withCompletionHandler:]_block_invoke_6", v30];
        *buf = 138412290;
        v36 = v31;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = [v3 attributes];
    v7 = [v6 objectForKey:*MEMORY[0x277D23050]];

    v8 = [v3 attributes];
    if ([v7 isEqualToString:*MEMORY[0x277D46C00]])
    {
      v9 = [TIResponseKitManager rewriteMoneyAttributes:v8];

      v8 = v9;
    }

    [*(a1 + 32) addSyntheticMecabraProactiveCandidate:v8 triggerSourceType:1];

    goto LABEL_11;
  }

  v11 = [v3 string];

  if (v11)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v12 = TIOSLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v32 = MEMORY[0x277CCACA8];
        v33 = [v3 string];
        v34 = [v32 stringWithFormat:@"%s ResponseKit:Canned:TI: received canned response [%@]", "-[TIKeyboardInputManagerMecabra addProactiveTriggers:withCompletionHandler:]_block_invoke", v33];
        *buf = 138412290;
        v36 = v34;
        _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [*(a1 + 40) mecabra];
    v13 = [v3 string];
    CandidateFromContextString = MecabraCreateCandidateFromContextString();

    if (CandidateFromContextString)
    {
      v15 = objc_alloc(MEMORY[0x277D6F448]);
      v16 = [v3 string];
      v17 = [v3 category];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CandidateFromContextString];
      v7 = [v15 initWithResponseKitString:v16 responseKitCategory:v17 mecabraCandidatePointerValue:v18];

      [*(a1 + 32) insertMecabraCandidate:v7 mecabraCandidateRef:CandidateFromContextString atIndex:0];
      v19 = MEMORY[0x277D46BB8];
      v20 = *MEMORY[0x277D46BF0];
      v21 = [*(a1 + 40) inputMode];
      v22 = [v21 normalizedIdentifier];
      v23 = TIInputModeGetBaseLanguage();
      [v19 incrementAggdKeyForCategory:0 forAction:v20 withLanguageID:v23];

      v24 = MEMORY[0x277D46BB8];
      v25 = [v3 category];
      v26 = [*(a1 + 40) inputMode];
      v27 = [v26 normalizedIdentifier];
      v28 = TIInputModeGetBaseLanguage();
      [v24 incrementAggdKeyForCategory:v25 forAction:v20 withLanguageID:v28];

LABEL_11:
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addStickers:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIKeyboardInputManagerMecabra *)self pendingStickerTask];

  if (v8)
  {
    v9 = [(TIKeyboardInputManagerMecabra *)self pendingStickerTask];
    v10 = [v9 stickerCompletionHandler];
    v11 = [(TIKeyboardInputManagerMecabra *)self pendingStickerTask];
    v12 = [v11 candidateResultSet];
    (v10)[2](v10, v12);

    [(TIKeyboardInputManagerMecabra *)self setPendingStickerTask:0];
  }

  v13 = [v6 candidates];
  if (![v13 count])
  {
    goto LABEL_9;
  }

  v14 = [(TIKeyboardInputManager *)self keyboardState];
  if (([v14 imageSuggestionEnabled] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  v15 = [(TIKeyboardInputManager *)self shouldOfferStickers];

  if (!v15)
  {
LABEL_10:
    v7[2](v7, v6);
    goto LABEL_11;
  }

  v16 = [v6 candidates];
  v17 = [v16 firstObject];

  v18 = [(TIKeyboardInputManager *)self stickerCandidateGenerator];
  v19 = [v17 candidate];
  v20 = [v18 generateStickerQueriesForText:v19 tokenize:0];

  if ([v20 count])
  {
    v21 = objc_alloc_init(TIKeyboardInputManagerStickerTask);
    [(TIKeyboardInputManagerStickerTask *)v21 setCandidateResultSet:v6];
    [(TIKeyboardInputManagerStickerTask *)v21 setStickerCompletionHandler:v7];
    [(TIKeyboardInputManagerMecabra *)self setPendingStickerTask:v21];
    objc_initWeak(&location, self);
    v22 = [(TIKeyboardInputManager *)self keyboardState];
    v23 = [v22 secureCandidateRenderTraits];
    v27 = [(TIKeyboardInputManager *)self shouldGeneratePredictionsForCurrentContext];
    v24 = [(TIKeyboardInputManagerBase *)self inputMode];
    v25 = [v24 languageWithRegion];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__TIKeyboardInputManagerMecabra_addStickers_withCompletionHandler___block_invoke;
    v28[3] = &unk_27872F3C0;
    objc_copyWeak(&v33, &location);
    v29 = v21;
    v30 = v17;
    v31 = v6;
    v32 = v7;
    v26 = v21;
    [v18 generateStickerCandidatesForSearchableQueries:v20 withRenderTraits:v23 shouldAppend:v27 language:v25 completionHandler:v28];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v7[2](v7, v6);
  }

LABEL_11:
}

void __67__TIKeyboardInputManagerMecabra_addStickers_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained pendingStickerTask];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    [WeakRetained setPendingStickerTask:0];
    if ([v3 count])
    {
      v7 = +[TIAppAutofillManager sharedInstance];
      v8 = [v7 secureCandidateRenderer];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = v3;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v8 cachedCandidateForSecureCandidate:v14];
              v16 = [*(a1 + 40) input];
              [v15 setInput:v16];

              v17 = [*(a1 + 40) rawInput];
              [v15 setRawInput:v17];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      [*(a1 + 48) insertStickers:v9];
      v3 = v20;
    }

    v18 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (pair<NSString)_supplementalItemIdentifiersInCurrentSelection
{
  v4 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v5 = [(TIKeyboardInputManager *)self keyboardState];
  v6 = [v5 documentState];
  v7 = [v6 selectedText];
  v8 = [v7 length];

  if (v8)
  {
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    v11 = self;
    v12 = objc_opt_new();
    v13 = [(TIKeyboardInputManager *)v11 keyboardState];
    v14 = [v13 documentState];
    v15 = [v14 contextBeforeInput];

    if ([v15 length])
    {
      [v12 appendString:v15];
    }

    v16 = [(TIKeyboardInputManager *)v11 keyboardState];
    v17 = [v16 documentState];
    v18 = [v17 contextAfterInput];

    if ([v18 length])
    {
      [v12 appendString:v18];
    }

    if ([v12 length])
    {
      v42 = v4;
      v19 = objc_opt_new();
      v20 = [(TIKeyboardInputManager *)v11 keyboardState];
      v21 = [v20 documentState];
      v22 = [v21 contextBeforeInput];
      v23 = [v22 length];

      v44 = *(v11->super.super.m_impl + 17);
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v24 = [(TIKeyboardInputManager *)v11 currentCandidateGenerationContextSupplementalLexicons];
      v25 = [v24 activeLexicon];
      v26 = [v25 items];

      v45 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
      v27 = 0;
      if (v45)
      {
        v43 = *v53;
        v47 = v12;
        do
        {
          v28 = 0;
          do
          {
            if (*v53 != v43)
            {
              objc_enumerationMutation(v26);
            }

            v46 = v28;
            v29 = *(*(&v52 + 1) + 8 * v28);
            v30 = [v29 core_nonPhoneticRangesInString:v12 options:385 locale:v44];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v31 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v49;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v49 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = [*(*(&v48 + 1) + 8 * i) rangeValue];
                  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v37 = v35;
                    v38 = v35 == 0x7FFFFFFFFFFFFFFFLL || v35 >= v23;
                    if (!v38 && v35 + v36 >= v23)
                    {
                      if (!v27)
                      {
                        v27 = [v47 substringWithRange:{v35, v36}];
                      }

                      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "identifier", v37)}];
                      [v19 addObject:v40];
                    }
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v32);
            }

            v28 = v46 + 1;
            v12 = v47;
          }

          while (v46 + 1 != v45);
          v45 = [v26 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v45);
      }

      if ([v19 count])
      {
        *v42 = v27;
        v42[1] = v19;
      }

      else
      {
        *v42 = 0;
        v42[1] = 0;
      }
    }

    else
    {
      *v4 = 0;
      v4[1] = 0;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)segmentsFromCandidate:(id)a3 phraseBoundary:(BOOL)a4
{
  v26 = a4;
  v5 = a3;
  if ([(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v5])
  {
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v6 = [v5 input];
    v24 = v5;
    v27 = [v5 candidate];
    WordCount = MecabraCandidateGetWordCount();
    if (WordCount >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = WordCount;
      v25 = WordCount - 1;
      while (1)
      {
        NextPhraseBoundary = v10;
        if (v26)
        {
          NextPhraseBoundary = MecabraCandidateGetNextPhraseBoundary();
        }

        if (v11 == 1 && NextPhraseBoundary == -1)
        {
          break;
        }

        if (NextPhraseBoundary == -1)
        {
          v13 = v25;
        }

        else
        {
          v13 = NextPhraseBoundary;
        }

        if (v10 <= v13)
        {
          v15 = 0;
          v14 = 0;
          do
          {
            v15 += MecabraCandidateGetWordReadingLengthAtIndex();
            v14 += MecabraCandidateGetWordLengthAtIndex();
            ++v10;
          }

          while (v13 + 1 != v10);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v16 = v15 + v8;
        if ([v6 length] >= (v15 + v8))
        {
          v17 = [v6 substringWithRange:{v8, v15}];
        }

        else
        {
          v17 = v6;
        }

        v18 = v17;
        v19 = [v27 substringWithRange:{v9, v14}];
        v20 = objc_alloc_init(TIMecabraSegment);
        [(TIMecabraSegment *)v20 setReading:v18];
        [(TIMecabraSegment *)v20 setSurface:v19];
        [v28 addObject:v20];
        v9 += v14;

        v10 = v13 + 1;
        v8 = v16;
        if (v13 + 1 >= v11)
        {
          goto LABEL_22;
        }
      }

      v22 = objc_alloc_init(TIMecabraSegment);
      [(TIMecabraSegment *)v22 setReading:v6];
      [(TIMecabraSegment *)v22 setSurface:v27];
      [v28 addObject:v22];
    }

LABEL_22:
    v21 = [v28 copy];

    v5 = v24;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)mecabraCandidateRefFromCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 proactiveTrigger];

  if (!v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v8 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v12 = [v8 candidateRefsDictionary];
    v13 = [v4 mecabraCandidatePointerValue];
    v11 = [v12 objectForKey:v13];

    goto LABEL_7;
  }

  v6 = [v4 proactiveTrigger];
  v7 = [v6 attributes];
  v8 = [v7 objectForKey:*MEMORY[0x277D6FD88]];

  if (!v8)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v9 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v10 = [v9 candidateRefsDictionary];
  v11 = [v10 objectForKey:v8];

  if (v11)
  {
    v12 = [v4 candidate];
    MecabraCandidateSetDisplayString();
LABEL_7:
  }

LABEL_9:

LABEL_10:
  return v11;
}

- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)a3
{
  v4 = a3;
  v5 = [v4 candidates];
  v6 = [v4 proactiveCandidates];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 proactiveCandidates];
    v9 = [v4 candidates];
    v10 = [v8 arrayByAddingObjectsFromArray:v9];

    v5 = v10;
  }

  v11 = [v4 proactiveTriggers];
  v12 = [(TIKeyboardInputManager *)self candidateResultSetFromCandidates:v5 proactiveTriggers:v11];

  v13 = [v4 disambiguationCandidates];
  [v12 setDisambiguationCandidates:v13];

  [v12 setSelectedDisambiguationCandidateIndex:{objc_msgSend(v4, "selectedDisambiguationCandidateIndex")}];

  return v12;
}

- (void)deleteFromInputWithContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v10 deleteFromInputWithContext:a3];
  v7 = [(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput];
  if (v7)
  {
    v3 = [(TIKeyboardInputManager *)self keyboardState];
    v4 = [v3 documentState];
    v5 = [v4 markedText];
    if (![v5 length])
    {

LABEL_11:
      [(TIKeyboardInputManagerMecabra *)self updateDocumentContext];
      v3 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
      [v3 adjustEnvironmentOnAction:2];
      goto LABEL_12;
    }

    if ([(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput])
    {

LABEL_12:
      return;
    }
  }

  else if ([(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput])
  {
    return;
  }

  v8 = [(TIKeyboardInputManager *)self inputString];
  v9 = [v8 length];

  if (v7)
  {
  }

  if (!v9)
  {
    goto LABEL_11;
  }
}

- (void)updateDocumentContext
{
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v8 = [v3 documentState];

  if (v8)
  {
    v4 = [v8 contextBeforeInput];
    v5 = [v8 contextAfterInput];
    if (!v4)
    {
      v4 = &stru_283FDFAF8;
    }

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &stru_283FDFAF8;
    }

    v7 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [v7 setLeftDocumentContext:v4 rightDocumentContext:v6];
  }
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 handleKeyboardInput:v4];

  if (v6)
  {
    goto LABEL_23;
  }

  v7 = [(TIKeyboardInputManager *)self keyboardState];
  v8 = [v7 documentState];
  v9 = [v8 markedText];

  v10 = [v4 string];
  if (![v9 length] && objc_msgSend(v10, "length"))
  {
    v12 = [v10 characterAtIndex:0];
    v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    if (![v13 characterIsMember:v12] || !-[TIKeyboardInputManagerMecabra whiteSpaceEndsSentence](self, "whiteSpaceEndsSentence"))
    {
      v14 = [MEMORY[0x277CCA900] newlineCharacterSet];
      if (![v14 characterIsMember:v12])
      {
        v16 = [MEMORY[0x277CCA900] punctuationCharacterSet];
        if ([v16 characterIsMember:v12])
        {
          v17 = [(TIKeyboardInputManagerMecabra *)self apostropheEndsSentence];

          if (v17 || v12 != 39)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }

        if ([(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput])
        {
          [(TIKeyboardInputManagerMecabra *)self updateDocumentContext];
          v18 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
          [v18 adjustEnvironmentOnAction:1];

          [(TIKeyboardInputManagerMecabra *)self setHasCommittedPartialCandidate:0];
          [(TIKeyboardInputManagerMecabra *)self setHasBackspacedIntoInputString:0];
        }

        v11 = 0;
        goto LABEL_19;
      }
    }

LABEL_10:
    v15 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [v15 declareEndOfSentence];

    v11 = 1;
LABEL_19:
    [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:0];
    goto LABEL_20;
  }

  v11 = 0;
LABEL_20:
  v21.receiver = self;
  v21.super_class = TIKeyboardInputManagerMecabra;
  v6 = [(TIKeyboardInputManager_mul *)&v21 handleKeyboardInput:v4];
  if (v11)
  {
    v19 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [v19 clearLeftDocumentContext];
  }

LABEL_23:

  return v6;
}

- (BOOL)stringEndsWord:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    v5 = [(TIKeyboardInputManager *)&v7 stringEndsWord:v4];
  }

  return v5;
}

- (BOOL)stringContainsActiveSupplementalLexiconSearchPrefix:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManager *)self currentCandidateGenerationContextSupplementalLexicons];

  if (v5)
  {
    v6 = [(TIKeyboardInputManager *)self currentCandidateGenerationContextSupplementalLexicons];
    v7 = [v6 activeLexicon];
    v8 = v7;
    if (v7)
    {
      v12 = [v7 searchPrefixCharacter];
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v12 length:1];
      v10 = [v4 containsString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)incrementUsageTrackingKeysForDeleteFromInput
{
  v16.receiver = self;
  v16.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v16 incrementUsageTrackingKeysForDeleteFromInput];
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v4 = [v3 inputMode];

  v5 = [(TIKeyboardInputManager *)self keyboardState];
  v6 = [v5 documentState];
  v7 = [v6 markedText];
  v8 = [v7 length];

  if (v8)
  {
    if (![(TIKeyboardInputManagerMecabra *)self hasBackspacedIntoInputString])
    {
      v9 = *MEMORY[0x277D6FB30];
      v10 = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();

      [(TIKeyboardInputManagerMecabra *)self setHasBackspacedIntoInputString:1];
    }
  }

  else
  {
    v11 = [(TIKeyboardInputManagerMecabra *)self lastCommittedCandidateType];
    if (v11 == 1)
    {
      v12 = MEMORY[0x277D6FB28];
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_10;
      }

      v12 = MEMORY[0x277D6FB38];
    }

    v13 = *v12;
    if (v13)
    {
      v14 = v13;
      v15 = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();

      [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:0];
    }
  }

LABEL_10:
}

- (void)updateUsageStatisticsForCandidate:(id)a3 isPartial:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 input];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(TIKeyboardInputManager *)self keyboardState];
    v9 = [v8 inputMode];

    v10 = *MEMORY[0x277D6FB08];
    v11 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();

    if (![(TIKeyboardInputManagerMecabra *)self hasCommittedPartialCandidate])
    {
      v12 = *MEMORY[0x277D6FB40];
      v13 = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();

      if (v4)
      {
        [(TIKeyboardInputManagerMecabra *)self setHasCommittedPartialCandidate:1];
      }

      else
      {
        v14 = *MEMORY[0x277D6FB10];
        v15 = TIStatisticGetKeyForCandidateAccepted();
        TIStatisticScalarIncrement();
      }
    }
  }

  if (!v4)
  {
    if (v7)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:v16];
  }
}

- (BOOL)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v9 = [v8 syncToKeyboardState:v7 completionHandler:v6];

  return v9;
}

- (int)mecabraTextContentTypeFromTITextContentType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:*MEMORY[0x277D6FC90]])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC98]])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC70]])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC88]])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC60]])
    {
      v5 = 5;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCA0]])
    {
      v5 = 6;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCA8]])
    {
      v5 = 7;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC78]])
    {
      v5 = 8;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCB0]])
    {
      v5 = 9;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC80]])
    {
      v5 = 10;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC68]])
    {
      v5 = 11;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCC0]])
    {
      v5 = 12;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCC8]])
    {
      v5 = 13;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC28]])
    {
      v5 = 14;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC38]])
    {
      v5 = 15;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC30]])
    {
      v5 = 16;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCD0]])
    {
      v5 = 17;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC50]])
    {
      v5 = 18;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCB8]])
    {
      v5 = 19;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCD8]])
    {
      v5 = 20;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FC58]])
    {
      v5 = 21;
    }

    else if ([v4 isEqualToString:*MEMORY[0x277D6FCE0]])
    {
      v5 = 22;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLanguageModelAdaptationContext
{
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v4 = [v3 clientIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_283FDFAF8;
  }

  v16 = v6;

  v7 = [(TIKeyboardInputManager *)self keyboardState];
  v8 = [v7 recipientIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_283FDFAF8;
  }

  v11 = v10;

  v12 = [(TIKeyboardInputManagerMecabra *)self currentClientIdentifier];
  if (([(__CFString *)v16 isEqualToString:v12]& 1) == 0)
  {

    goto LABEL_11;
  }

  v13 = [(TIKeyboardInputManagerMecabra *)self currentRecipientIdentifier];
  v14 = [(__CFString *)v11 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
LABEL_11:
    v15 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [v15 setLanguageModelAdaptationContextWithClientIdentifier:v16 recipientIdentifier:v11];

    [(TIKeyboardInputManagerMecabra *)self setCurrentRecipientIdentifier:v11];
    [(TIKeyboardInputManagerMecabra *)self setCurrentClientIdentifier:v16];
  }
}

- (BOOL)updateLanguageModelForKeyboardState
{
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v4 = [v3 clientIdentifier];

  v5 = +[TIKeyboardInputManagerMecabra initializedClients];
  v6 = v5;
  if (v4)
  {
    if (([v5 containsObject:v4] & 1) == 0)
    {
      v7 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
      v8 = [v7 mecabra];

      if (v8)
      {
        v9 = +[TIWordSearch sharedOperationQueue];
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke;
        v16 = &unk_278731048;
        v18 = v8;
        v10 = v4;
        v17 = v10;
        v11 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v13];
        [v9 addOperation:{v11, v13, v14, v15, v16}];

        [v6 addObject:v10];
      }
    }
  }

  return 1;
}

void __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  MecabraGetLastOfflineAdaptationTime();
  v4 = v3;
  v5 = dispatch_time(0, 20000000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke_2;
  v6[3] = &unk_278731048;
  v7 = *(a1 + 32);
  v8 = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
}

void __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke_2(uint64_t a1)
{
  v3 = [[TILanguageModelOfflineLearningStrategyMecabraFavonius alloc] initWithClientIdentifier:*(a1 + 32)];
  v2 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  [v2 performLearningIfNecessaryWithStrategy:v3 lastAdaptationTime:*(a1 + 40)];
}

- (BOOL)shouldUpdateLanguageModel
{
  v2 = [(TIKeyboardInputManager *)self keyboardState];
  if ([v2 secureTextEntry])
  {
    v3 = 0;
  }

  else
  {
    v3 = TI_DEVICE_UNLOCKED_SINCE_BOOT();
  }

  return v3;
}

- (id)adaptationContextReadingForReanalysisString:(id)a3 fromRecentlyCommittedCandidates:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v5 = a4;
  if (![v5 count])
  {
    v14 = 0;
    goto LABEL_53;
  }

  v6 = [MEMORY[0x277CCAB68] string];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v67;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        if (!MecabraCandidateIsUserWordCandidate())
        {
          [v6 appendString:MecabraCandidateGetSurface()];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v9);
  }

  v13 = [v6 rangeOfString:v56 options:6];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
    goto LABEL_52;
  }

  v47 = v13;
  v48 = v5;
  v15 = [MEMORY[0x277CBEB18] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (!v17)
  {
    goto LABEL_45;
  }

  v18 = v17;
  v19 = *v63;
  v51 = v16;
  v52 = v6;
  v50 = *v63;
  while (2)
  {
    v20 = 0;
    v53 = v18;
    do
    {
      if (*v63 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v62 + 1) + 8 * v20);
      if (!MecabraCandidateIsUserWordCandidate())
      {
        v22 = MecabraCandidateGetAnalysisString();
        if (!v22)
        {
LABEL_42:

          goto LABEL_43;
        }

        v23 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
        if ([v23 count])
        {
          v24 = [v22 length];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v54 = v23;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v59;
            do
            {
              v30 = 0;
              v31 = v28;
              do
              {
                if (*v59 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v32 = [*(*(&v58 + 1) + 8 * v30) unsignedIntegerValue];
                v28 = v32 + v31;
                if (v24 >= v32 + v31)
                {
                  v33 = [v22 substringWithRange:{v31, v32}];
                  [v15 addObject:v33];
                }

                ++v30;
                v31 = v28;
              }

              while (v27 != v30);
              v27 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v27);
            v16 = v51;
            v6 = v52;
            v19 = v50;
LABEL_39:
            v18 = v53;
          }

          v23 = v54;
          goto LABEL_41;
        }

        v25 = MecabraCandidateGetSurface();
        if ([v56 isEqualToString:v25])
        {
          v22 = v22;
          v14 = v22;
          v5 = v48;
        }

        else
        {
          WordCount = MecabraCandidateGetWordCount();
          if (!WordCount)
          {
LABEL_41:

            goto LABEL_42;
          }

          v54 = v23;
          v49 = v20;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v55 = WordCount;
          while (1)
          {
            WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex();
            v39 = [v25 substringWithRange:{v35, WordLengthAtIndex}];
            WordDictionaryReadingLengthAtIndex = MecabraCandidateGetWordDictionaryReadingLengthAtIndex();
            if ([v56 isEqualToString:v39])
            {
              v40 = MecabraCandidateGetDictionaryReading();
              if (v40)
              {
                break;
              }
            }

            v35 += WordLengthAtIndex;
            v36 += WordDictionaryReadingLengthAtIndex;

            if (v55 == ++v37)
            {
              v16 = v51;
              v6 = v52;
              v20 = v49;
              v19 = v50;
              goto LABEL_39;
            }
          }

          v44 = v40;
          v14 = [v40 substringWithRange:{v36, WordDictionaryReadingLengthAtIndex}];

          v5 = v48;
          v16 = v51;
          v6 = v52;
          v23 = v54;
        }

        goto LABEL_50;
      }

LABEL_43:
      ++v20;
    }

    while (v20 != v18);
    v18 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_45:

  v41 = [v6 substringToIndex:v47];
  v42 = [v41 _graphemeCount];

  v43 = [v56 _graphemeCount];
  if ([v15 count] >= (v43 + v42))
  {
    v16 = [v15 subarrayWithRange:{v42, v43}];
    v14 = [v16 componentsJoinedByString:&stru_283FDFAF8];
    v5 = v48;
LABEL_50:
  }

  else
  {
    v14 = 0;
    v5 = v48;
  }

LABEL_52:
LABEL_53:

  v45 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)handlePerformBackgroundMaintenanceNotification
{
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  if (v2)
  {
    v6 = v2;
    v3 = [TIWordSearchOperationPerformMaintenance alloc];
    v4 = [v6 mecabraWrapper];
    v5 = [(TIWordSearchOperationPerformMaintenance *)v3 initWithMecabraWrapper:v4];

    [v6 performOperationAsync:v5 withBackgroundActivityAssertion:1];
    v2 = v6;
  }
}

- (id)inputsToReject
{
  v2 = [(TIKeyboardInputManager *)self rawInputString];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:@"\t"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pathedWordSeparator
{
  if ([(TIKeyboardInputManagerMecabra *)self pathedWordSeparatorChar])
  {
    v3 = [MEMORY[0x277CCACA8] _stringWithUnichar:{-[TIKeyboardInputManagerMecabra pathedWordSeparatorChar](self, "pathedWordSeparatorChar")}];
  }

  else
  {
    v3 = &stru_283FDFAF8;
  }

  return v3;
}

- (void)resume
{
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager_mul *)&v2 resume];
}

- (void)suspend
{
  v3 = [(TIKeyboardInputManager *)self config];
  v4 = [v3 isTesting];

  if ((v4 & 1) == 0)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [v5 saveLearningDictionary];
  }

  v6 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  [v6 resetMecabraEnvironment];

  [(TIKeyboardInputManagerMecabra *)self handlePerformBackgroundMaintenanceNotification];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager_mul *)&v7 suspend];
}

- (void)insertDummyTouchDataAtIndex:(unint64_t)a3
{
  v8 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  v5 = [objc_opt_class() dummyTouchData];
  v6 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  if ([v6 count] <= a3)
  {
    v7 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
    [v8 insertObject:v5 atIndex:{objc_msgSend(v7, "count")}];
  }

  else
  {
    [v8 insertObject:v5 atIndex:a3];
  }
}

- (void)insertDummyGeometryDataAtIndex:(unint64_t)a3
{
  v5 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  v4 = [objc_opt_class() dummyGeometryData];
  [v5 insertObject:v4 atIndex:a3];
}

- (void)storeLanguageModelDynamicDataIncludingCache
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v5 storeLanguageModelDynamicDataIncludingCache];
  v3 = [(TIKeyboardInputManager *)self rawInputString];
  v4 = [v3 length];

  if (v4)
  {
    [(TIKeyboardInputManagerMecabra *)self logInputString];
  }
}

- (void)logCommittedCandidate:(id)a3 partial:(BOOL)a4
{
  v4 = a4;
  v9 = [a3 candidate];
  v6 = [(TIKeyboardInputManager *)self rawInputString];
  if ([v9 length])
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted candidate:%@ partial:%@; input:%@\n\n", v9, v7, v6];;
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v8];
  }
}

- (void)logAllCandidates
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v4 = [v3 candidates];

  if ([v4 count])
  {
    v26 = self;
    v5 = [(TIKeyboardInputManager *)self inputString];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v28 = v6;
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [v11 input];
          if ([v12 length])
          {
            v13 = [v11 input];
            if ([v13 isEqualToString:v5])
            {
              v14 = [v11 candidate];
            }

            else
            {
              v15 = MEMORY[0x277CCACA8];
              v16 = [v11 input];
              [v11 candidate];
              v18 = v17 = v5;
              v19 = v15;
              v6 = v28;
              v14 = [v19 stringWithFormat:@"%@ -> %@", v16, v18];

              v5 = v17;
            }
          }

          else
          {
            v14 = [v11 candidate];
          }

          if (v14)
          {
            [v6 addObject:v14];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = [v6 componentsJoinedByString:@" "];;
    v22 = [v20 stringWithFormat:@"All candidates: %@\n\n", v21];

    if ([v22 length] >= 0xBB9)
    {
      v23 = [v22 substringToIndex:3000];
      v24 = [v23 stringByAppendingString:@"..."];

      v22 = v24;
    }

    v4 = v27;
    [(TIKeyboardInputManager *)v26 logToTypologyRecorderWithString:v22];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logDocumentContext
{
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  v10 = [v3 documentState];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v10 contextBeforeInput];
  v6 = [v4 stringWithFormat:@"Context Before Input: %@\n", v5];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [v10 contextAfterInput];
  v9 = [v7 stringWithFormat:@"Context After Input: %@\n", v8];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v9];
}

- (void)logInputString
{
  v3 = [(TIKeyboardInputManager *)self rawInputString];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(__CFString *)v3 length];
  v6 = @"(none)";
  if (v5)
  {
    v6 = v3;
  }

  v7 = [v4 stringWithFormat:@"Input String: %@\n", v6];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v10 = [v9 shortDescription];
  v11 = [v8 stringWithFormat:@"Keyboard Input: %@\n", v10];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v11];

  v12 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  v13 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v14 = [(__CFString *)v3 length];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__TIKeyboardInputManagerMecabra_logInputString__block_invoke;
  v23[3] = &unk_27872F378;
  if (v14 >= 0x14)
  {
    v15 = 20;
  }

  else
  {
    v15 = v14;
  }

  v24 = v13;
  v25 = v12;
  if (v14 <= 0x14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 - 20;
  }

  v26 = self;
  v27 = v28;
  v17 = v12;
  v18 = v13;
  [(__CFString *)v3 enumerateSubstringsInRange:v16 options:v15 usingBlock:2, v23];
  v19 = MEMORY[0x277CCACA8];
  v20 = [(TIKeyboardInputManagerBase *)self inputMode];
  v21 = [v20 normalizedIdentifier];
  v22 = [v19 stringWithFormat:@"Keyboard: %@\n", v21];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v22];

  [(TIKeyboardInputManagerMecabra *)self logDocumentContext];
  [(TIKeyboardInputManagerMecabra *)self logAllCandidates];

  _Block_object_dispose(v28, 8);
}

void __47__TIKeyboardInputManagerMecabra_logInputString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *&v48[164] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(*(*(a1 + 56) + 8) + 24);
  if (v10 >= [*(a1 + 32) count] || (v11 = *(*(*(a1 + 56) + 8) + 24), v11 >= objc_msgSend(*(a1 + 40), "count")))
  {
    *a7 = 1;
  }

  else
  {
    v12 = [*(a1 + 48) validCharacterSetForAutocorrection];
    v13 = [v12 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", 0)}];

    if (v13)
    {
      v14 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v15 = [v14 objectAtIndexedSubscript:2];
      [v15 doubleValue];
      v17 = v16;

      v18 = [v14 objectAtIndexedSubscript:5];
      [v18 doubleValue];
      v20 = v19;

      if (v17 == 0.0)
      {
        v17 = v20;
      }

      if ([v14 count] < 7)
      {
        v24 = &stru_283FDFAF8;
      }

      else
      {
        v21 = [v14 objectAtIndexedSubscript:6];
        v22 = [v21 integerValue];

        v23 = @"; flick";
        if (v22 == 1)
        {
          v23 = @"; multitap";
        }

        v24 = v23;
      }

      v28 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v29 = [v28 length];
      if (v29 < 0xA9)
      {
        v30 = v29;
        v46 = v24;
        [v28 getBytes:v47 length:v29];
        v31 = [MEMORY[0x277CBEB18] array];
        if (v30 >= 0x10)
        {
          v32 = (v30 >> 3) - 1;
          v33 = v48;
          do
          {
            v34 = *(v33 - 2);
            v35 = *v33;
            v33 += 2;
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C:%f", v34, v35];
            [v31 addObject:v36];

            --v32;
          }

          while (v32);
        }

        v44 = MEMORY[0x277CCACA8];
        v45 = *(a1 + 48);
        v43 = *(*(*(a1 + 56) + 8) + 24);
        v42 = [v31 componentsJoinedByString:{@", "}];
        v37 = [v14 objectAtIndexedSubscript:0];
        v38 = [v14 objectAtIndexedSubscript:1];
        v39 = [v14 objectAtIndexedSubscript:3];
        v40 = [v14 objectAtIndexedSubscript:4];
        v41 = [v44 stringWithFormat:@"%lu %@; %@; %@, %@; %@, %@; %.3f; %.3f%@\n", v43, v9, v42, v37, v38, v39, v40, v20 - v17, *&v20, v46];;
        [v45 logToTypologyRecorderWithString:v41];

        v24 = v46;
        *(*(*(a1 + 56) + 8) + 24) += [v9 length];
      }

      else
      {
        *a7 = 1;
      }
    }

    else
    {
      v26 = *(a1 + 48);
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %@\n", *(*(*(a1 + 56) + 8) + 24), v9];;
      [v26 logToTypologyRecorderWithString:v27];

      *(*(*(a1 + 56) + 8) + 24) += [v9 length];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)saveTouchDataForEvent:(id)a3 atIndex:(unint64_t)a4
{
  v16 = a3;
  v6 = [v16 touchEvent];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(TIKeyboardInputManager *)self keyboardState];
  if (([v7 hardwareKeyboardMode] & 1) != 0 || objc_msgSend(v16, "isPopupVariant"))
  {

LABEL_5:
    v8 = [objc_opt_class() dummyTouchData];
    goto LABEL_6;
  }

  v15 = [v16 isGesture];

  if (v15)
  {
    goto LABEL_5;
  }

  v8 = -[TIKeyboardInputManagerMecabra touchDataForPathIndex:](self, "touchDataForPathIndex:", [v6 pathIndex]);
LABEL_6:
  v9 = v8;
  if ([v16 isMultitap])
  {
    v10 = &unk_28400BC40;
  }

  else
  {
    if (![v16 isFlick])
    {
      goto LABEL_11;
    }

    v10 = &unk_28400BC58;
  }

  v11 = [v9 arrayByAddingObject:v10];

  v9 = v11;
LABEL_11:
  v12 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  v13 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  if ([v13 count] <= a4)
  {
    v14 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
    [v12 insertObject:v9 atIndex:{objc_msgSend(v14, "count")}];
  }

  else
  {
    [v12 insertObject:v9 atIndex:a4];
  }
}

- (id)touchDataForPathIndex:(int64_t)a3
{
  v30[6] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(TIKeyboardInputManagerMecabra *)self touchDownEvents];
  v6 = [v5 objectForKey:v4];

  v7 = [(TIKeyboardInputManagerMecabra *)self touchUpEvents];
  v8 = [v7 objectForKey:v4];

  if (v6)
  {
    [v6 location];
    v10 = v9;
    v12 = v11;
    [v6 timestamp];
    v14 = v13;
    if (v8)
    {
LABEL_3:
      [v8 location];
      v16 = v15;
      v18 = v17;
      [v8 timestamp];
      v20 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    v14 = 0.0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  v20 = 0.0;
LABEL_6:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v30[0] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v30[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v30[2] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v30[3] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v30[4] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  v30[5] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __66__TIKeyboardInputManagerMecabra_addInput_flags_point_firstDelete___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = a2;
  if (![v5 shouldRescaleTouchPoints])
  {
    goto LABEL_8;
  }

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if (v4 == *MEMORY[0x277CBF348] && v3 == v8)
  {
    goto LABEL_9;
  }

  [*(a1 + 32) currentCharacterKeysLayoutFrame];
  v11 = v10;
  v13 = v12;
  v29 = v14;
  v16 = v15;
  [*(a1 + 32) baseCharacterKeysLayoutFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v27 = v16;
  v32.origin.x = v11;
  v28 = v13;
  v32.origin.y = v13;
  *&v32.size.width = v29;
  v32.size.height = v16;
  v25 = v20;
  v33.origin.x = v18;
  v33.origin.y = v25;
  v33.size.width = v22;
  v33.size.height = v24;
  if (!CGRectEqualToRect(v32, v33))
  {
    v7 = v18 + (v4 - v11) / *&v29 * v22;
    v8 = v25 + (v3 - v28) / v27 * v24;
  }

  else
  {
LABEL_8:
    v7 = v4;
    v8 = v3;
  }

LABEL_9:
  v30 = [[MCTypeInput alloc] initWithCharacters:v6 point:*(a1 + 40) nearbyKeys:*(a1 + 48) sourceKeyboardState:v7, v8];

  v26 = [*(a1 + 32) composingInput];
  [v26 composeNew:v30];
}

- (CGRect)currentCharacterKeysLayoutFrame
{
  [(TIKeyboardInputManagerMecabra *)self currentCharacterKeysLayout];
  v2 = v10[15];
  v3 = v10[16];
  v4 = v10[17];
  v5 = v10[18];
  WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v10);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)currentCharacterKeysLayout
{
  v4 = v2;
  v5 = TIInputManager::favonius_layout(self->super.super.m_impl);
  if (self->_compositionCompletionHandler != *v5)
  {
    v6 = *TIInputManager::favonius_layout(self->super.super.m_impl);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    compositionCompletionHandler = self->_compositionCompletionHandler;
    self->_compositionCompletionHandler = v6;
    if (compositionCompletionHandler)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(compositionCompletionHandler);
    }

    [(TIKeyboardInputManagerMecabra *)self currentLayout];
    [(TIKeyboardInputManagerMecabra *)self characterKeysLayoutFrom:&v11];
    v8 = v12;
    v12 = 0;
    chainedKeyboardInputManager = self->chainedKeyboardInputManager;
    self->chainedKeyboardInputManager = v8;
    if (chainedKeyboardInputManager)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(chainedKeyboardInputManager);
      if (v12)
      {
        WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v12);
      }
    }

    v5 = v11;
    if (v11)
    {
      v5 = WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v11);
    }
  }

  v10 = self->chainedKeyboardInputManager;
  *v4 = v10;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  return v5;
}

- (CGRect)baseCharacterKeysLayoutFrame
{
  [(TIKeyboardInputManagerMecabra *)self baseCharacterKeysLayout];
  v2 = v10[15];
  v3 = v10[16];
  v4 = v10[17];
  v5 = v10[18];
  WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v10);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)baseCharacterKeysLayout
{
  v4 = v2;
  v5.m_ptr = [(TIKeyboardInputManagerMecabra *)self shouldRescaleTouchPoints];
  m_ptr = self->_currentCharacterKeysLayout.m_ptr;
  if (!m_ptr)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x4812000000;
    v10[3] = __Block_byref_object_copy__1847;
    v10[4] = __Block_byref_object_dispose__1848;
    v10[5] = "";
    memset(&v10[6], 0, 24);
    v7 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    v8 = [v7 baseLayout];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__TIKeyboardInputManagerMecabra_baseCharacterKeysLayout__block_invoke;
    v9[3] = &unk_27872F328;
    v9[4] = v10;
    [v8 enumerateKeysUsingBlock:v9];

    operator new();
  }

  *v4 = m_ptr;
  atomic_fetch_add(m_ptr, 1u);
  return v5;
}

void __56__TIKeyboardInputManagerMecabra_baseCharacterKeysLayout__block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  }

  else
  {
    v3 = &stru_283FDFAF8;
  }

  if ([(__CFString *)v3 length]== 1)
  {
    v4 = [(__CFString *)v3 _firstChar];
    v5 = [MEMORY[0x277CCA900] letterCharacterSet];
    LODWORD(v4) = [v5 characterIsMember:v4];

    if (v4)
    {
      KB::String::String(v7, a2);
      operator new();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (RefPtr<TI::Favonius::KeyboardLayout>)characterKeysLayoutFrom:(const void *)a3
{
  v4 = v3;
  v5 = *a3;
  if (*a3)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x4812000000;
    v12[3] = __Block_byref_object_copy__1847;
    v12[4] = __Block_byref_object_dispose__1848;
    v12[5] = "";
    memset(&v12[6], 0, 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __57__TIKeyboardInputManagerMecabra_characterKeysLayoutFrom___block_invoke;
    v10 = &unk_278731D18;
    v11 = v12;
    v6 = *(v5 + 8);
    for (i = *(v5 + 16); v6 != i; ++v6)
    {
      v9(v8, v6);
    }

    operator new();
  }

  *v4 = 0;
  return self;
}

void __57__TIKeyboardInputManagerMecabra_characterKeysLayoutFrom___block_invoke(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(*a2 + 12);
  if (!*(*a2 + 12))
  {
    KB::String::compute_length((v3 + 8));
    v4 = *(v3 + 12);
  }

  if (v4 == 1)
  {
    v5 = *a2;
    v6 = *(*a2 + 16);
    if (!v6)
    {
      v6 = *a2 + 24;
    }

    v20 = v6;
    v21 = 0;
    v22 = *(v5 + 8);
    v23 = 0;
    KB::String::iterator::initialize(&v20);
    v7 = v23;
    v8 = [MEMORY[0x277CCA900] letterCharacterSet];
    if ([v8 characterIsMember:v7])
    {

      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCA900] zhuyinCharacterSet];
    v10 = [v9 characterIsMember:v7];

    if (v10)
    {
LABEL_9:
      KB::String::String(&v20, (*a2 + 8));
      v11 = *a2;
      if (*(*a2 + 40) >= 0xFuLL)
      {
        v18 = *(*a2 + 40);
        operator new[]();
      }

      v19 = *(*a2 + 40);
      v12 = *(v11 + 64);
      v13 = *(v11 + 72);
      v14 = *(v11 + 80);
      v15 = *(v11 + 88);
      v16 = *(v11 + 62);
      operator new();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dropInputPrefix:(unsigned int)a3
{
  LODWORD(v3) = a3;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v8 dropInputPrefix:?];
  v5 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  if ([v5 count] <= v3)
  {
    v6 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v3 = [v6 count];
  }

  else
  {
    v3 = v3;
  }

  v7 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  [v7 removeObjectsInRange:{0, v3}];
}

- (void)clearInput
{
  v3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  [v3 removeAllObjects];

  if ([(TIKeyboardInputManager *)self isTypologyEnabled])
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
    [v4 removeAllObjects];
  }

  if (![(TIKeyboardInputManagerMecabra *)self preservesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v5 removeAllInputs];
  }

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager_mul *)&v6 clearInput];
}

- (id)processAcceptedCandidate:(id)a3
{
  v4 = a3;
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    goto LABEL_12;
  }

  [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
  v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v6 = [v5 hasRemainingComposingInput];

  if (!v6 || [v4 isContinuousPathConversion] && !objc_msgSend(v4, "isPartialCandidate"))
  {
    if (v4)
    {
      v24 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v23 = [v24 asInlineText];
    }

    else
    {
      v23 = 0;
    }

    v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v7 removeAllInputs];
    goto LABEL_20;
  }

  v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v8 = [v7 inputs];
  if ([v8 count] == 2)
  {
    v9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v10 = [v9 inputs];
    v11 = [v10 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v13 = [v12 inputs];
      v14 = [v13 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = [v4 isPartialCandidate];

        if (v40)
        {
          v15 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v16 = [v15 inputs];
          v7 = [v16 objectAtIndexedSubscript:0];

          v17 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v18 = [v17 inputs];
          v19 = [v18 objectAtIndexedSubscript:1];

          v20 = [v19 candidateText];
          if ([v20 length])
          {
            v21 = [v19 convertedInput];
            v22 = [v21 length];

            if (v22)
            {
              v23 = 0;
LABEL_47:

              goto LABEL_20;
            }

            v26 = [v7 committedText];
            v20 = [v26 mutableCopy];

            v27 = [v7 syllables];
            v28 = [v27 mutableCopy];

            if ([v20 length] && (objc_msgSend(v19, "candidateText"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v20, "rangeOfString:", v29), v29, v30))
            {
              v31 = [v19 candidateText];
              v23 = [v20 stringByAppendingString:v31];
            }

            else
            {
              v23 = [v19 candidateText];
            }

            v32 = [v23 length];
            if (v32 >= 1)
            {
              while ([v20 length])
              {
                [v20 deleteCharactersInRange:{0, 1}];
                v33 = __OFSUB__(v32--, 1);
                if ((v32 < 0) ^ v33 | (v32 == 0))
                {
                  goto LABEL_45;
                }
              }

LABEL_40:
              if ([v28 count])
              {
                v34 = [v28 firstObject];
                v35 = [v34 mutableCopy];

                [v28 removeObjectAtIndex:0];
                do
                {
                  if (![v35 length])
                  {

                    goto LABEL_40;
                  }

                  [v35 deleteCharactersInRange:{0, 1}];
                  v33 = __OFSUB__(v32--, 1);
                }

                while (!((v32 < 0) ^ v33 | (v32 == 0)));
                if ([v35 length])
                {
                  [v28 insertObject:v35 atIndex:0];
                }
              }
            }

LABEL_45:
            v36 = [v7 syntheticInputWithCommittedText:v20 syllables:v28];
            v37 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [v37 removeComposingInput];

            v38 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [v38 removeComposingInput];

            v39 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [v39 composeNew:v36];
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_47;
        }

LABEL_12:
        v23 = 0;
        goto LABEL_21;
      }
    }
  }

  v23 = 0;
LABEL_20:

LABEL_21:

  return v23;
}

- (id)didAcceptCandidate:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self processAcceptedCandidate:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerMecabra;
    v5 = [(TIKeyboardInputManager *)&v8 didAcceptCandidate:v4];
  }

  v6 = v5;

  return v6;
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isResponseKitCandidate])
  {
    v8 = MEMORY[0x277D46BB8];
    v9 = *MEMORY[0x277D46BE8];
    v10 = [(TIKeyboardInputManagerBase *)self inputMode];
    v11 = [v10 normalizedIdentifier];
    v12 = TIInputModeGetBaseLanguage();
    [v8 incrementAggdKeyForCategory:0 forAction:v9 withLanguageID:v12];

    v13 = MEMORY[0x277D46BB8];
    v14 = [v6 responseKitCategory];
    v15 = [(TIKeyboardInputManagerBase *)self inputMode];
    v16 = [v15 normalizedIdentifier];
    v17 = TIInputModeGetBaseLanguage();
    [v13 incrementAggdKeyForCategory:v14 forAction:v9 withLanguageID:v17];
  }

  v18 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v19 = [v18 handleAcceptedCandidate:v6 keyboardState:v7];

  if (!v19)
  {
    if ([v6 isAddress])
    {
      v20 = [(TIKeyboardInputManager *)self keyboardState];
      v21 = [v20 documentState];
      v22 = [v21 contextBeforeInput];
      if (![v22 length])
      {
LABEL_10:

        goto LABEL_11;
      }

      v23 = [v6 candidate];
      v24 = [v23 _firstGrapheme];
      if ([v24 _containsCJScripts])
      {

        goto LABEL_10;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [v6 candidate];
        v21 = [@" " stringByAppendingString:v20];
        [v6 candidateByReplacingWithCandidate:v21];
        v6 = v22 = v6;
        goto LABEL_10;
      }
    }

LABEL_11:
    if (!-[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") || ([v6 candidate], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, !v27))
    {
      v30 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v30 removeAllInputs];
LABEL_34:

      [(TIKeyboardInputManagerMecabra *)self setPreservesComposingInput:1];
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0x7FFFFFFFFFFFFFFFLL;
      v50 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v51 = [v50 candidates];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __71__TIKeyboardInputManagerMecabra_handleAcceptedCandidate_keyboardState___block_invoke;
      v65[3] = &unk_27872F300;
      v6 = v6;
      v67 = self;
      v68 = &v69;
      v66 = v6;
      [v51 enumerateObjectsUsingBlock:v65];

      v64.receiver = self;
      v64.super_class = TIKeyboardInputManagerMecabra;
      v19 = [(TIKeyboardInputManager *)&v64 handleAcceptedCandidate:v6 keyboardState:v7];
      if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
      {
        [(TIKeyboardInputManagerMecabra *)self updateComposedText];
        [(TIKeyboardInputManager *)self setMarkedText];
      }

      [(TIKeyboardInputManagerMecabra *)self setPreservesComposingInput:0];
      TIInputManager::sync_with_input_from_UI(self->super.super.m_impl);
      v52 = [v6 candidateByReplacingWithSourceMask:{-[TIKeyboardInputManager adjustedSourceMaskFromCandidate:](self, "adjustedSourceMaskFromCandidate:", v6)}];
      v53 = [(TIKeyboardInputManager *)self typingSessionMonitor];
      v54 = [(TIKeyboardInputManager *)self keyboardState];
      v55 = [v54 documentState];
      v56 = [(TIKeyboardInputManager *)self inputContext];
      v57 = [(TIKeyboardInputManager *)self inputStem];
      LOBYTE(v61) = 1;
      [v53 candidateAccepted:v52 withInput:0 documentState:v55 inputContext:v56 inputStem:v57 predictionBarHit:0 useCandidateSelection:v61 candidateIndex:v70[3] keyboardState:v7];

      _Block_object_dispose(&v69, 8);
      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v6];
      if (v28)
      {
        v29 = v28;
        v30 = [MEMORY[0x277D6F448] convertedInputFromMecabraCandidate:v28];
        if (![v30 length])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = [v6 input];

            v30 = v31;
            if (!v31)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v59 = [MEMORY[0x277D6F448] inputFromMecabraCandidate:v29];
            v60 = [(TIKeyboardInputManagerMecabra *)self convertInput:v59];

            v30 = v60;
            if (!v60)
            {
              goto LABEL_24;
            }
          }

LABEL_23:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v30 = [v6 input];
      }

      if (v30)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v30 = 0;
    }

LABEL_24:
    v32 = [v6 input];

    v30 = v32;
LABEL_25:
    v33 = [MCAcceptCandidateInput alloc];
    v34 = [v6 candidate];
    v35 = [(MCAcceptCandidateInput *)v33 initWithCandidateText:v34 convertedInput:v30];

    v36 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v37 = [v36 composingInput];
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();

    v39 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v40 = v39;
    if (v38)
    {
      v41 = [v39 composingInput];

      v42 = [v41 text];
      v40 = [v41 syntheticInputWithCursorIndex:{objc_msgSend(v42, "length")}];

      v43 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v43 replaceComposingInputWith:v40];
    }

    else
    {
      v43 = [v39 inputs];
      if ([v43 count] >= 2)
      {
        v44 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v63 = [v44 inputs];
        v45 = [v63 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(TIKeyboardInputManagerMecabra *)self composingInput];
          v47 = v46 = v44;
          v62 = [v47 hasDrawInput];

          if (v62)
          {
LABEL_33:
            v49 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [v49 composeNew:v35];

            [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:0];
            [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:0];

            goto LABEL_34;
          }

          v40 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v43 = [v40 inputs];
          v48 = -[TIKeyboardInputManagerMecabra convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [v43 count]);
        }

        else
        {
        }
      }
    }

    goto LABEL_33;
  }

LABEL_37:

  return v19;
}

void __71__TIKeyboardInputManagerMecabra_handleAcceptedCandidate_keyboardState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 candidate];
  v8 = [*(a1 + 32) candidate];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    v10 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [*(a1 + 40) composingInput];
      v12 = [v11 hasDrawInput];

      if (v12)
      {
        [*(a1 + 32) setContinuousPathConversion:1];
      }
    }

    *a4 = 1;
  }
}

- (unint64_t)inputIndexWithDrawInput
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    return 0;
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [v3 hasKindOf:objc_opt_class()];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TIKeyboardInputManager *)self inputString];
  v6 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v7 = [v5 stringByReplacingOccurrencesOfString:v6 withString:&stru_283FDFAF8];

  v8 = [v7 length];
  v9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v10 = [v9 inputs];
  v11 = [v10 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v13 = [v12 hasKindOf:objc_opt_class()];

    if ((v13 & 1) == 0)
    {
      v14 = v11;
      v15 = [v14 text];
      v16 = [v15 length];
      v17 = [v14 cursorIndex];

      if (v8 <= v16 - v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16 - v17;
      }

      v8 -= v18;
    }
  }

  return v8;
}

- (id)_convertInputsToSyntheticInputUptoCount:(int)a3 cursorIndex:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = -1;
  }

  v9 = [MCSyntheticInput alloc];
  v10 = [(MCSyntheticInput *)v9 initWithCommittedText:&stru_283FDFAF8 syllables:MEMORY[0x277CBEBF8]];
  v11 = objc_alloc_init(MCKeyboardInput);
  if (a3 >= 1)
  {
    do
    {
      v12 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v13 = [v12 inputs];
      v14 = [v13 firstObject];
      [(MCKeyboardInput *)v10 composeNew:v14];

      v15 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v16 = [v15 inputs];
      v17 = [v16 firstObject];
      [(MCKeyboardInput *)v11 composeNew:v17];

      v18 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v18 removeInputAtIndex:0];

      --a3;
    }

    while (a3);
  }

  v19 = [(MCKeyboardInput *)v11 asCommittedText];
  v20 = [(TIKeyboardInputManagerMecabra *)self uncommittedText];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [(MCKeyboardInput *)v11 asInlineText];
  }

  v23 = v22;

  v24 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v25 = [v24 length];

  if (v25)
  {
    v26 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
    v27 = [v23 componentsSeparatedByString:v26];
  }

  else
  {
    v27 = [MEMORY[0x277CBEB18] array];
    if ([v23 length])
    {
      v28 = 0;
      do
      {
        v29 = [v23 substringWithRange:{v28, 1}];
        [v27 addObject:v29];

        ++v28;
      }

      while ([v23 length] > v28);
    }
  }

  v30 = [(MCSyntheticInput *)v10 initWithCommittedText:v19 syllables:v27];
  v31 = v30;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v32 = [(MCSyntheticInput *)v30 syntheticInputWithCursorIndex:v8];

    v31 = v32;
  }

  v33 = [v31 text];
  v34 = [v33 length];

  if (v34)
  {
    v35 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [v35 insertInput:v31 atIndex:0];

    v36 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v37 = [v36 composingInput];

    if (!v37)
    {
      v38 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v38 setComposingInput:v31];
    }

    v39 = v31;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (void)updateComposedText
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v5 = [v3 asInlineText];

    v4 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v5];
    [(NSMutableString *)self->super.super.m_composedText setString:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v6 updateComposedText];
  }
}

- (void)savePartialGeometryData
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v4 = [v3 copy];
    [(TIKeyboardInputManagerMecabra *)self setClearedGeometryDataArray:v4];

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      v6 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
      v5 = [v6 copy];
      [(TIKeyboardInputManagerMecabra *)self setClearedTouchDataArray:v5];
    }
  }
}

- (void)padGeometryForInput:(id)a3 atIndex:(unint64_t)a4
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v6 = [(TIKeyboardInputManager *)self rawInputString];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(TIKeyboardInputManager *)self rawInputString];
      v9 = [v8 length];

      v10 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v11 = [v10 count];
      v12 = v9 - 1;

      if (v11 < v9 - 1)
      {
        do
        {
          v13 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          if (a4 - 1 >= [v13 count])
          {
            v14 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            -[TIKeyboardInputManagerMecabra insertDummyGeometryDataAtIndex:](self, "insertDummyGeometryDataAtIndex:", [v14 count]);
          }

          else
          {
            [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:a4 - 1];
          }

          v15 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v16 = [v15 count];
        }

        while (v16 < v12);
      }

      if ([(TIKeyboardInputManager *)self isTypologyEnabled])
      {
        v17 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
        v18 = [v17 count];

        if (v18 < v12)
        {
          v19 = a4 - 1;
          do
          {
            v20 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            if (v19 >= [v20 count])
            {
              v21 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
              -[TIKeyboardInputManagerMecabra insertDummyTouchDataAtIndex:](self, "insertDummyTouchDataAtIndex:", [v21 count]);
            }

            else
            {
              [(TIKeyboardInputManagerMecabra *)self insertDummyTouchDataAtIndex:v19];
            }

            v22 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            v23 = [v22 count];
          }

          while (v23 < v12);
        }
      }
    }
  }
}

- (void)restoreGeometryForInput:(id)a3 atIndex:(unint64_t)a4
{
  v34 = a3;
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v6 = [v34 string];
    v7 = [v6 length];

    v8 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v9 = [v8 count];

    if (v9 < a4)
    {
      v10 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];

      if (v10)
      {
        v11 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];
        v12 = [v11 count];

        if (v12 >= v7)
        {
          v13 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v14 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];
          v15 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];
          v16 = [v14 subarrayWithRange:{objc_msgSend(v15, "count") - v7, v7}];
          [v13 addObjectsFromArray:v16];
        }

        [(TIKeyboardInputManagerMecabra *)self setClearedGeometryDataArray:0];
      }
    }

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      v17 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
      v18 = [v17 count];

      if (v18 < a4)
      {
        v19 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];

        if (v19)
        {
          v20 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];
          v21 = [v20 count];

          if (v21 >= v7)
          {
            v22 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            v23 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];
            v24 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];
            v25 = [v23 subarrayWithRange:{objc_msgSend(v24, "count") - v7, v7}];
            [v22 addObjectsFromArray:v25];
          }

          [(TIKeyboardInputManagerMecabra *)self setClearedTouchDataArray:0];
        }
      }
    }

    [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:v34 atIndex:a4];
    v26 = [(TIKeyboardInputManager *)self rawInputString];
    v27 = [v26 length];

    v28 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v29 = [v28 count];

    if (v29 < v27)
    {
      v30 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      if (a4 - 1 >= [v30 count])
      {
        v31 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        -[TIKeyboardInputManagerMecabra insertDummyGeometryDataAtIndex:](self, "insertDummyGeometryDataAtIndex:", [v31 count]);
      }

      else
      {
        [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:a4 - 1];
      }
    }

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      v32 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
      v33 = [v32 count];

      if (v33 < v27)
      {
        [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:v34 atIndex:a4 - 1];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)saveGeometryForInput:(id)a3 atIndex:(unint64_t)a4
{
  v33[11] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v7 = (*(**(self->super.super.m_impl + 28) + 240))(*(self->super.super.m_impl + 28), (*(self->super.super.m_impl + 24) - 1));
    if (!v7)
    {
LABEL_6:
      [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:v6 atIndex:a4];
      goto LABEL_7;
    }

    v8 = v7;
    v9 = [(TIKeyboardInputManager *)self keyboardState];
    if (([v9 hardwareKeyboardMode] & 1) != 0 || objc_msgSend(v6, "isPopupVariant"))
    {

      goto LABEL_6;
    }

    v11 = [v6 isGesture];

    if (v11)
    {
      goto LABEL_6;
    }

    if (s_interface_idiom_is_pad)
    {
      v12 = -3.0;
    }

    else
    {
      v12 = -2.0;
    }

    v13 = [(TIKeyboardInputManagerMecabra *)self validCharacterSetForAutocorrection];
    v14 = [(TIKeyboardInputManagerMecabra *)self validUSetForAutocorrection];
    if (*v8)
    {
      v15 = v14;
      v16 = 0;
      v17 = v8[1];
      v18 = 8 * *v8;
      while (1)
      {
        if (*(*v17 + 32) < v12)
        {
          goto LABEL_28;
        }

        v19 = *(*v17 + 8);
        v20 = *(v19 + 16);
        if (!v20)
        {
          v20 = v19 + 24;
        }

        v29 = v20;
        v21 = *(v19 + 8);
        v30 = 0;
        v31 = v21;
        v32 = 0;
        KB::String::iterator::initialize(&v29);
        v22 = v32;
        if ([v13 characterIsMember:v32])
        {
          if (!v22)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_24;
          }

          v23 = MEMORY[0x2318BF290](v15, v22);
          if (!v22 || !v23)
          {
            goto LABEL_24;
          }
        }

        v24 = &v33[v16];
        *v24 = v22;
        *(v24 + 1) = *(*v17 + 32);
        if (++v16 == 10)
        {
          v16 = 10;
          goto LABEL_28;
        }

LABEL_24:
        v17 += 8;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_28;
        }
      }
    }

    v16 = 0;
LABEL_28:
    v25 = &v33[v16];
    *v25 = 0;
    *(v25 + 1) = 0;
    [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:v6 atIndex:a4];
    v26 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v27 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:8 * v16 + 8];
    v28 = a4 - 1;
    [v26 insertObject:v27 atIndex:v28];

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:v6 atIndex:v28];
    }
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)keyLayoutWillChangeTo:(id)a3 from:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v8 keyLayoutWillChangeTo:v6 from:a4];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput]&& ![(TIKeyboardInputManagerMecabra *)self shouldRescaleTouchPoints])
  {
    v7 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [v7 setKeyboardLayout:v6];
  }
}

- (NSCharacterSet)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__onceToken, &__block_literal_global_97);
  }

  v3 = [TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

uint64_t __67__TIKeyboardInputManagerMecabra_validCharacterSetForAutocorrection__block_invoke()
{
  [TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__validCharSet = [MEMORY[0x277CCA900] characterSetWithRange:{97, 26}];

  return MEMORY[0x2821F96F8]();
}

- (_NSRange)analysisStringRange
{
  v2 = [(TIKeyboardInputManager *)self rawInputString];
  v3 = [v2 length];

  v4 = 0;
  v5 = v3;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self analysisStringRange];
    v6 = v5;
    v7 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v8 = [v7 count];

    v3 = 0;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL && v6 && v4 < v8 && v4 + v6 <= v8)
    {
      v9 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v3 = [v9 subarrayWithRange:{v4, v6}];
    }
  }

  return v3;
}

- (NSMutableArray)geometryDataArray
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = 0;
  }

  else
  {
    composingKeyboardInputManager = self->_composingKeyboardInputManager;
    if (!composingKeyboardInputManager)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_composingKeyboardInputManager;
      self->_composingKeyboardInputManager = v5;

      composingKeyboardInputManager = self->_composingKeyboardInputManager;
    }

    v3 = composingKeyboardInputManager;
  }

  return v3;
}

- (NSMutableArray)touchDataArray
{
  composingInput = self->_composingInput;
  if (!composingInput)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_composingInput;
    self->_composingInput = v4;

    composingInput = self->_composingInput;
  }

  return composingInput;
}

- (__Mecabra)mecabra
{
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  v3 = [v2 mecabra];

  return v3;
}

- (BOOL)shouldClearInputOnMarkedTextOutOfSync
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    return 1;
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  if ([v3 hasDrawInput])
  {
    v4 = [(TIKeyboardInputManager *)self keyboardState];
    v5 = [v4 inputForMarkedText];
    v6 = [v5 length] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldDelayUpdateComposedText
{
  v3 = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  if (v3)
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v5 = [v4 hasDrawInput];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isProgressivelyPathing
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    return 0;
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [v3 composingInput];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isDrawing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)usesContinuousPath
{
  v3 = [(TIKeyboardInputManager *)self config];
  if ([v3 usesContinuousPath])
  {
    v4 = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  }

  else
  {
    v5 = [(TIKeyboardInputManager *)self config];
    if ([v5 usesContinuousPathForAccessibility])
    {
      v4 = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (MCKeyboardInput)composingInput
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    m_ptr = self->_baseCharacterKeysLayout.m_ptr;
  }

  else
  {
    m_ptr = 0;
  }

  return m_ptr;
}

- (void)setKeyboardState:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManager *)self keyboardState];
  v6 = [v5 canSuggestSupplementalItemsForCurrentSelection];

  v7 = [v4 canSuggestSupplementalItemsForCurrentSelection];
  if (v6 != v7)
  {
    v8 = v7;
    v9 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    v10 = [v9 mecabraEnvironment];

    v11 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    v12 = MEMORY[0x277CCA8C8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__TIKeyboardInputManagerMecabra_setKeyboardState___block_invoke;
    v16[3] = &unk_278730E80;
    v17 = v10;
    v18 = v8;
    v13 = v10;
    v14 = [v12 blockOperationWithBlock:v16];
    [v11 performOperationAsync:v14];
  }

  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v15 setKeyboardState:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v4 dealloc];
}

- (TIKeyboardInputManagerMecabra)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerMecabra;
  v4 = [(TIKeyboardInputManager_mul *)&v15 initWithConfig:a3 keyboardState:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_handlePerformBackgroundMaintenanceNotification name:@"TILanguageModelPerformBackgroundMaintenanceNotification" object:0];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    touchUpEvents = v4->_touchUpEvents;
    v4->_touchUpEvents = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    isa = v4[1].super.super.super.super.isa;
    v4[1].super.super.super.super.isa = v8;

    cancelledDrawInput = v4->_cancelledDrawInput;
    v4->_cancelledDrawInput = &stru_283FDFAF8;

    currentRecipientIdentifier = v4->_currentRecipientIdentifier;
    v4->_currentRecipientIdentifier = &stru_283FDFAF8;

    v12 = objc_opt_new();
    m_ptr = v4->_baseCharacterKeysLayout.m_ptr;
    v4->_baseCharacterKeysLayout.m_ptr = v12;
  }

  return v4;
}

+ (id)initializedClients
{
  if (+[TIKeyboardInputManagerMecabra initializedClients]::onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerMecabra initializedClients]::onceToken, &__block_literal_global_214);
  }

  v3 = +[TIKeyboardInputManagerMecabra initializedClients]::__initializedClients;

  return v3;
}

void __51__TIKeyboardInputManagerMecabra_initializedClients__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v1 = +[TIKeyboardInputManagerMecabra initializedClients]::__initializedClients;
  +[TIKeyboardInputManagerMecabra initializedClients]::__initializedClients = v0;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v3 = [v4 addObserverForName:@"TIKeyboardInputManagerDynamicDictionariesRemovedNotification" object:0 queue:v2 usingBlock:&__block_literal_global_219];
}

+ (id)offlineLearningHandleForInputMode:(id)a3
{
  v3 = a3;
  v4 = [[TILanguageModelOfflineLearningHandleMecabra alloc] initWithInputMode:v3];

  [(TILanguageModelOfflineLearningHandle *)v4 setValid:1];

  return v4;
}

+ (id)dummyGeometryData
{
  if (+[TIKeyboardInputManagerMecabra dummyGeometryData]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerMecabra dummyGeometryData]::__onceToken, &__block_literal_global_200);
  }

  v3 = +[TIKeyboardInputManagerMecabra dummyGeometryData]::__dummyData;

  return v3;
}

void __50__TIKeyboardInputManagerMecabra_dummyGeometryData__block_invoke()
{
  v2[0] = 0;
  v3 = 0;
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v2 length:8];
  v1 = +[TIKeyboardInputManagerMecabra dummyGeometryData]::__dummyData;
  +[TIKeyboardInputManagerMecabra dummyGeometryData]::__dummyData = v0;
}

+ (void)removeDynamicDictionaryForInputMode:(id)a3
{
  v9 = [TIInputMode inputModeWithIdentifier:a3];
  v3 = +[TIWordSearchController sharedWordSearchController];
  v4 = [v3 wordSearchForInputMode:v9];

  v5 = +[TIWordSearch sharedOperationQueue];
  v6 = [TIWordSearchOperationResetLearningDictionaries alloc];
  v7 = [v4 mecabraWrapper];
  v8 = [(TIWordSearchOperationResetLearningDictionaries *)v6 initWithMecabraWrapper:v7];
  [v5 addOperation:v8];
}

- (void)tearDown
{
  v3 = +[TIWordSearch sharedOperationQueue];
  [v3 waitUntilAllOperationsAreFinished];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v4 tearDown];
}

- (void)cancelComposition
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 136315394;
    *&v6[4] = "[TIKeyboardInputManagerMecabra(StackableInputManager) cancelComposition]";
    *&v6[12] = 2112;
    *&v6[14] = objc_opt_class();
    v5 = *&v6[14];
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  %@ was canceled", v6, 0x16u);
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self compositionCompletionHandler:*v6];

  if (v3)
  {
    [(TIKeyboardInputManagerMecabra *)self _completeComposition:0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)completeComposition
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 136315394;
    *&v6[4] = "[TIKeyboardInputManagerMecabra(StackableInputManager) completeComposition]";
    *&v6[12] = 2112;
    *&v6[14] = objc_opt_class();
    v5 = *&v6[14];
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  %@ was completed", v6, 0x16u);
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self compositionCompletionHandler:*v6];

  if (v3)
  {
    [(TIKeyboardInputManagerMecabra *)self _completeComposition:1];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)composeTextWith:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    *location = 136315650;
    *&location[4] = "[TIKeyboardInputManagerMecabra(StackableInputManager) composeTextWith:]";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = objc_opt_class();
    v9 = v16;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  %@ invokes %@", location, 0x20u);
  }

  [(TIKeyboardInputManagerMecabra *)self setComposingKeyboardInputManager:v4];
  objc_initWeak(location, self);
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__TIKeyboardInputManagerMecabra_StackableInputManager__composeTextWith___block_invoke;
  v10[3] = &unk_27872F528;
  objc_copyWeak(&v11, location);
  [v5 composeText:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(location);

  v6 = *MEMORY[0x277D85DE8];
}

void __72__TIKeyboardInputManagerMecabra_StackableInputManager__composeTextWith___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained commitComposition];
  }

  else
  {
    [WeakRetained abortComposition];
  }
}

- (TIKeyboardInputManagerMecabra)initWithKeyboardInputManagerToChain:(id)a3
{
  v5 = a3;
  v6 = [(TIKeyboardInputManager *)self initWithInputMode:0 keyboardState:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geometryDataArray, a3);
  }

  return v7;
}

+ (id)inputMethodWithChainedKeyboardInputManager:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKeyboardInputManagerToChain:v4];

  return v5;
}

@end