@interface TIMecabraEnvironment
+ (id)getWordFrom:(void *)a3 atIndex:(unint64_t)a4 forSurface:(BOOL)a5;
+ (id)loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer:(id)a3 inputModes:(id)a4 onQueue:(id)a5 oldMobileAssetChangeListener:(id)a6;
+ (id)loadMobileAssetContentsWhenMobileAssetChangesForMecabra:(__Mecabra *)a3 inputModes:(id)a4 onQueue:(id)a5 oldMobileAssetChangeListener:(id)a6;
+ (int)maxNumberOfDrawSamples;
+ (void)loadMobileAssetContentsForInputModes:(id)a3 assetContentTypes:(id)a4 inMecabra:(__Mecabra *)a5 onQueue:(id)a6;
+ (void)loadMobileAssetContentsForInputModes:(id)a3 assetContentTypes:(id)a4 onQueue:(id)a5 withCompletionBlock:(id)a6;
+ (void)loadMobileAssetContentsForInputModes:(id)a3 inMecabra:(__Mecabra *)a4 onQueue:(id)a5;
+ (void)loadMobileAssetContentsForInputModes:(id)a3 onQueue:(id)a4 withCompletionBlock:(id)a5;
+ (void)removeMobileAssetListener:(id)a3;
- (BOOL)addNewCandidatesIfNecessary:(int64_t)a3;
- (BOOL)analyzeInput:(id)a3 options:(unint64_t)a4;
- (BOOL)analyzeString:(id)a3 options:(unint64_t)a4;
- (BOOL)documentContextIsEmpty;
- (BOOL)predictionAnalyzeWithOptions:(unint64_t)a3 maxNumberOfCandidates:(unint64_t)a4;
- (NSArray)contextCandidateSurfaces;
- (NSArray)inlineCandidateSurfaces;
- (NSArray)rightCandidateSurfaces;
- (NSDictionary)environmentDebuggingInformation;
- (NSMutableArray)candidatesLeftOfCaret;
- (NSMutableArray)candidatesRightOfCaret;
- (NSMutableArray)candidatesToDelete;
- (NSString)leftDocumentContext;
- (NSString)rightDocumentContext;
- (TIKeyboardLayout)baseLayout;
- (_NSRange)leftDocumentContextCorrespondingToCandidatesRange;
- (_NSRange)rightDocumentContextCorrespondingToCandidatesRange;
- (id)_longestWubiCodeForCharacter:(id)a3;
- (id)_wubiCodeForWord:(id)a3;
- (id)contactNameWubiCodePairsForFirstName:(id)a3 lastName:(id)a4;
- (id)findSupplementalLexiconCandidatesSurroundingCursor;
- (id)readingForWubiWord:(id)a3;
- (id)wubiAnnotationForCandidate:(id)a3;
- (int)textContentType;
- (unint64_t)candidateIndex;
- (void)acceptInlineCandidates;
- (void)addCandidateWithString:(id)a3 toArray:(id)a4;
- (void)addPunctuationCandidateToContext:(id)a3;
- (void)addStringCandidateToContextInternal:(id)a3;
- (void)adjustEnvironment:(int64_t)a3;
- (void)analyzeCandidateContextWithSplit:(BOOL)a3;
- (void)commitPredictionCandidate:(void *)a3;
- (void)compareDocumentAndEnvironmentCandidates;
- (void)completelyCommitInlineCandidate:(void *)a3;
- (void)createNewCandidatesFromDocumentContext;
- (void)declareEndOfSentence;
- (void)insertCandidateWithString:(id)a3 intoArray:(id)a4 atIndex:(unint64_t)a5;
- (void)partiallyCommitInlineCandidate:(void *)a3;
- (void)reset;
- (void)revertInlineCandidate;
- (void)revertLearningOfCandidateIfNecessary;
- (void)setAppContext:(id)a3;
- (void)setCandidateIndex:(int64_t)a3;
- (void)setGeometryModel:(void *)a3 modelData:(__CFArray *)a4;
- (void)setKeyboardLayout:(id)a3;
- (void)setLeftDocumentContext:(id)a3;
- (void)setLeftDocumentContextInternal:(id)a3;
- (void)setRightDocumentContext:(id)a3;
- (void)updateCursorPosition;
@end

@implementation TIMecabraEnvironment

- (_NSRange)rightDocumentContextCorrespondingToCandidatesRange
{
  length = self->_rightDocumentContextCorrespondingToCandidatesRange.length;
  location = self->_rightDocumentContextCorrespondingToCandidatesRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)leftDocumentContextCorrespondingToCandidatesRange
{
  length = self->_leftDocumentContextCorrespondingToCandidatesRange.length;
  location = self->_leftDocumentContextCorrespondingToCandidatesRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSArray)rightCandidateSurfaces
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v4 = [v3 environmentCandidates];

  v5 = MEMORY[0x277CBEB98];
  v6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v7 = [v6 contextCandidates];
  v8 = [v5 setWithArray:v7];

  v9 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (([v8 containsObject:{*(*(&v18 + 1) + 8 * i), v18}] & 1) == 0)
        {
          v15 = MecabraCandidateGetSurface();
          if (v15)
          {
            [v9 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSArray)inlineCandidateSurfaces
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v3 = [v2 inlineCandidates];
  v4 = [v3 mecabraCandidateSurfaces];

  return v4;
}

- (NSArray)contextCandidateSurfaces
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v3 = [v2 contextCandidateStrings];

  return v3;
}

- (NSDictionary)environmentDebuggingInformation
{
  v33[8] = *MEMORY[0x277D85DE8];
  v32[0] = @"TIMecabraEnvironmentCandidateIndex";
  v3 = MEMORY[0x277CCABB0];
  v31 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v30 = [v3 numberWithUnsignedInteger:{objc_msgSend(v31, "candidateIndex")}];
  v33[0] = v30;
  v32[1] = @"TIMecabraEnvironmentPositionWithinCandidate";
  v4 = MEMORY[0x277CCABB0];
  v29 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v5 = [v4 numberWithUnsignedInteger:{objc_msgSend(v29, "candidateInternalIndex")}];
  v33[1] = v5;
  v32[2] = @"TIMecabraEnvironmentContextCandidateSurfaces";
  v6 = [(TIMecabraEnvironment *)self contextCandidateSurfaces];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v33[2] = v9;
  v32[3] = @"TIMecabraEnvironmentInlineCandidateSurfaces";
  v10 = [(TIMecabraEnvironment *)self inlineCandidateSurfaces];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v33[3] = v12;
  v32[4] = @"TIMecabraEnvironmentRightCandidateSurfaces";
  v13 = [(TIMecabraEnvironment *)self rightCandidateSurfaces];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v8;
  }

  v33[4] = v15;
  v32[5] = @"TIMecabraEnvironmentLeftContext";
  v16 = [(TIMecabraEnvironment *)self leftDocumentContext];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_283FDFAF8;
  }

  v33[5] = v18;
  v32[6] = @"TIMecabraEnvironmentRightContext";
  v19 = [(TIMecabraEnvironment *)self rightDocumentContext];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_283FDFAF8;
  }

  v33[6] = v21;
  v32[7] = @"TIMecabraEnvironmentTemporaryCandidates";
  v22 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v23 = [v22 temporaryCandidates];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v8;
  }

  v33[7] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:8];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)reset
{
  [(TIMecabraEnvironment *)self setLeftDocumentContext:&stru_283FDFAF8];
  [(TIMecabraEnvironment *)self setRightDocumentContext:&stru_283FDFAF8];
  v3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v3 clearAll];

  [(TIMecabraEnvironment *)self setCanSuggestSupplementalItems:1];
}

- (id)findSupplementalLexiconCandidatesSurroundingCursor
{
  if ([(TIMecabraEnvironment *)self canSuggestSupplementalItems])
  {
    v3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v4 = [v3 findSupplementalLexiconCandidatesSurroundingCursor];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)declareEndOfSentence
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v2 declareEndOfSentence];
}

- (void)addPunctuationCandidateToContext:(id)a3
{
  [(TIMecabraEnvironment *)self addStringCandidateToContextInternal:a3];
  v4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v4 declareEndOfSentence];
}

- (void)revertInlineCandidate
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v2 revertInlineCandidate];
}

- (void)completelyCommitInlineCandidate:(void *)a3
{
  v5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v6 = [v5 candidateInternalIndex];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TIMecabraEnvironment *)self adjustEnvironment:4];
  }

  v7 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v7 completelyCommitInlineCandidate:a3];

  v10 = MecabraCandidateGetSurface();
  if ([v10 length] && MecabraCandidateGetType() == 6)
  {
    v8 = [(TIMecabraEnvironment *)self leftDocumentContext];
    v9 = [v8 stringByAppendingString:v10];
    [(TIMecabraEnvironment *)self setLeftDocumentContextInternal:v9];
  }
}

- (void)partiallyCommitInlineCandidate:(void *)a3
{
  v5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v6 = [v5 candidateInternalIndex];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TIMecabraEnvironment *)self adjustEnvironment:4];
  }

  v7 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v7 partiallyCommitInlineCandidate:a3];
}

- (void)acceptInlineCandidates
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v2 acceptInlineCandidates];
}

- (id)readingForWubiWord:(id)a3
{
  v4 = a3;
  if ([v4 _containsIdeographicCharacters])
  {
    v5 = [(TIMecabraEnvironment *)self _wubiCodeForWord:v4];
    if ([v5 length] == 4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactNameWubiCodePairsForFirstName:(id)a3 lastName:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  if ([v7 _containsIdeographicCharacters])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ([v6 _containsIdeographicCharacters])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = 0;
  if (v9 | v11)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    if (v9 && v11)
    {
      v14 = [v11 stringByAppendingString:v9];
      [v13 addObject:v14];
    }

    if ([v9 _graphemeCount] >= 2)
    {
      [v13 addObject:v9];
    }

    if ([v11 _graphemeCount] >= 2)
    {
      [v13 addObject:v11];
    }

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(v13, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          v21 = [(TIMecabraEnvironment *)self _wubiCodeForWord:v20, v24];
          if ([v21 length] == 4)
          {
            [v12 addObject:v20];
            [v12 addObject:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_wubiCodeForWord:(id)a3
{
  v4 = a3;
  v5 = [v4 _graphemeCount];
  if (v5 == 3)
  {
    v13 = [v4 _graphemeAtIndex:0];
    v7 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v13];

    v14 = [v4 _graphemeAtIndex:1];
    v9 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v14];

    v15 = [v4 _graphemeAtIndex:2];
    v10 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v15];

    if ([v7 length] && objc_msgSend(v9, "length") && objc_msgSend(v10, "length") > 1)
    {
      v11 = [v7 substringToIndex:1];
      v16 = [v9 substringToIndex:1];
      v17 = [v11 stringByAppendingString:v16];
      v18 = [v10 substringToIndex:2];
      v12 = [v17 stringByAppendingString:v18];

      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (v5 == 2)
  {
    v6 = [v4 _firstGrapheme];
    v7 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v6];

    v8 = [v4 _lastGrapheme];
    v9 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v8];

    if ([v7 length] >= 2 && objc_msgSend(v9, "length") >= 2)
    {
      v10 = [v7 substringToIndex:2];
      v11 = [v9 substringToIndex:2];
      v12 = [v10 stringByAppendingString:v11];
LABEL_10:

      goto LABEL_20;
    }

LABEL_18:

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (v5 < 4)
  {
    goto LABEL_19;
  }

  v19 = [v4 _graphemeAtIndex:0];
  v20 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v19];

  v21 = 1;
  v22 = [v4 _graphemeAtIndex:1];
  v23 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v22];

  v24 = [v4 _graphemeAtIndex:2];
  v25 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v24];

  v12 = [v4 _lastGrapheme];
  v26 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v12];

  if ([v20 length])
  {
    if ([v23 length] && objc_msgSend(v25, "length") && objc_msgSend(v26, "length"))
    {
      v33 = [v20 substringToIndex:1];
      v32 = [v23 substringToIndex:1];
      v27 = [v33 stringByAppendingString:v32];
      v28 = [v25 substringToIndex:1];
      v29 = [v27 stringByAppendingString:v28];
      v30 = [v26 substringToIndex:1];
      v12 = [v29 stringByAppendingString:v30];

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  if (v21)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v12;
}

- (id)_longestWubiCodeForCharacter:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TIMecabraEnvironment *)self mecabra];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = MecabraCreateWubixingCodesFromSurface();
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      v12 = [v11 length];
      if (v12 > [v8 length])
      {
        v13 = v11;

        v8 = v13;
      }

      if ([v8 length] == 4)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)wubiAnnotationForCandidate:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TIMecabraEnvironment *)self mecabra];
  WubixingCodesFromSurface = MecabraCreateWubixingCodesFromSurface();
  if ([WubixingCodesFromSurface count] <= 1 || (objc_msgSend(WubixingCodesFromSurface, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7 > 2))
  {
    v17 = [WubixingCodesFromSurface firstObject];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [WubixingCodesFromSurface subarrayWithRange:{1, objc_msgSend(WubixingCodesFromSurface, "count") - 1}];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v23;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = [v14 length];
        if (v15 > [v11 length])
        {
          v16 = v14;

          v11 = v16;
        }

        if ([v11 length] == 4)
        {
          break;
        }

        if (v10 == ++v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [WubixingCodesFromSurface objectAtIndexedSubscript:0];
    v17 = [v18 stringWithFormat:@"%@, %@", v19, v11];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)setAppContext:(id)a3
{
  v4 = a3;
  v5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v5 setAppContext:v4];
}

- (void)addStringCandidateToContextInternal:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v5 = [v4 createMecabraCandidateFromString:v6];

    [(TIMecabraEnvironment *)self completelyCommitInlineCandidate:v5];
  }
}

- (void)setKeyboardLayout:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__454;
  v12 = __Block_byref_object_dispose__455;
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v13 = [v4 array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TIMecabraEnvironment_setKeyboardLayout___block_invoke;
  v7[3] = &unk_27872F328;
  v7[4] = &v8;
  [v5 enumerateKeysUsingBlock:v7];

  v6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v6 setKeyboardLayout:v9[5]];

  _Block_object_dispose(&v8, 8);
}

void __42__TIMecabraEnvironment_setKeyboardLayout___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  }

  else
  {
    v3 = &stru_283FDFAF8;
  }

  v5 = v3;
  if ([(__CFString *)v3 length]== 1)
  {
    [(__CFString *)v5 _firstChar];
    LayoutKey = MecabraCreateLayoutKey();
    [*(*(*(a1 + 32) + 8) + 40) addObject:LayoutKey];
    CFRelease(LayoutKey);
  }
}

- (void)setGeometryModel:(void *)a3 modelData:(__CFArray *)a4
{
  if (a4)
  {
    v6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [v6 setGeometryModel:a3 modelData:a4];
  }
}

- (void)commitPredictionCandidate:(void *)a3
{
  v4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v4 commitPredictionCandidate:a3];
}

- (BOOL)predictionAnalyzeWithOptions:(unint64_t)a3 maxNumberOfCandidates:(unint64_t)a4
{
  [(TIMecabraEnvironment *)self adjustEnvironment:0];
  v7 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  LOBYTE(a4) = [v7 predictionCandidatesWithOptions:a3 maxNumberOfCandidates:a4];

  return a4;
}

- (BOOL)analyzeInput:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  LOBYTE(a4) = [v7 analyzeInput:v6 options:a4];

  return a4;
}

- (BOOL)analyzeString:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  LOBYTE(a4) = [v7 analyzeString:v6 options:a4];

  return a4;
}

- (TIKeyboardLayout)baseLayout
{
  v2 = self;
  v54 = *MEMORY[0x277D85DE8];
  baseLayout = self->_baseLayout;
  if (!baseLayout)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [(TIMecabraEnvironment *)v2 mecabraLanguage];
    if ((v5 - 1) >= 2)
    {
      if (v5 != 4)
      {
LABEL_30:

        baseLayout = v2->_baseLayout;
        goto LABEL_31;
      }

      v6 = @"continuous_path_base_layout_ko";
    }

    else
    {
      v6 = @"continuous_path_base_layout";
    }

    v7 = [v4 pathForResource:v6 ofType:@"plist"];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7];
      if (v9)
      {
        v49 = 0;
        v50 = 0;
        v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:&v50 error:&v49];
        v11 = v49;
        if (v11)
        {
          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v12 = TIOSLogFacility();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error loading continuous_path_base_layout.plist : %@", "-[TIMecabraEnvironment baseLayout]", v11];
            *buf = 138412290;
            v52 = v13;
            _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        else
        {
          v15 = objc_alloc(MEMORY[0x277D6F400]);
          v16 = [v10 objectForKeyedSubscript:@"keys"];
          v17 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];
          v18 = v2->_baseLayout;
          v2->_baseLayout = v17;

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = v10;
          v12 = [v10 objectForKeyedSubscript:@"keys"];
          v19 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v19)
          {
            v20 = v19;
            v41 = v9;
            v42 = v8;
            v43 = v4;
            v21 = *v46;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v46 != v21)
                {
                  objc_enumerationMutation(v12);
                }

                v23 = *(*(&v45 + 1) + 8 * i);
                v24 = [v23 objectForKeyedSubscript:@"string"];
                if ([v24 length] == 1)
                {
                  v25 = [v23 objectForKeyedSubscript:@"frame"];
                  [v25 objectForKeyedSubscript:@"x"];
                  v27 = v26 = v2;
                  [v27 floatValue];
                  v29 = v28;

                  v30 = [v25 objectForKeyedSubscript:@"y"];
                  [v30 floatValue];
                  v32 = v31;

                  v33 = [v25 objectForKeyedSubscript:@"width"];
                  [v33 floatValue];
                  v35 = v34;

                  v36 = [v25 objectForKeyedSubscript:@"height"];
                  [v36 floatValue];
                  v38 = v37;

                  v2 = v26;
                  [(TIKeyboardLayout *)v26->_baseLayout addKeyWithExactString:v24 frame:v29, v32, v35, v38];
                }
              }

              v20 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v20);
            v8 = v42;
            v4 = v43;
            v9 = v41;
          }

          v10 = v44;
        }
      }

      else
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v11 = TIOSLogFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error loading continuous_path_base_layout.plist", "-[TIMecabraEnvironment baseLayout]"];
          *buf = 138412290;
          v52 = v14;
          _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_30;
  }

LABEL_31:
  v39 = *MEMORY[0x277D85DE8];

  return baseLayout;
}

- (void)adjustEnvironment:(int64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v6 = [v5 environmentCandidates];
  v7 = [v6 count];

  v8 = [(TIMecabraEnvironment *)self documentContextIsEmpty];
  if (v7)
  {
    v9 = !v8;
    if (a3 == 2)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      v10 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
      [v10 declareEndOfSentence];
LABEL_18:

      goto LABEL_19;
    }

    [(TIMecabraEnvironment *)self compareDocumentAndEnvironmentCandidates];
    [(TIMecabraEnvironment *)self analyzeCandidateContextWithSplit:((a3 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0];
    if ([(TIMecabraEnvironment *)self addNewCandidatesIfNecessary:a3])
    {
      v11 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
      v12 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
      v10 = [v11 arrayByAddingObjectsFromArray:v12];

      v13 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
      v14 = [v13 environmentCandidates];
      [v14 removeAllObjects];

      v15 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
      v16 = [v15 environmentCandidates];
      [v16 setArray:v10];

      goto LABEL_18;
    }

    v17 = [(TIMecabraEnvironment *)self candidatesToDelete];
    v18 = [v17 count];

    if (v18)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [(TIMecabraEnvironment *)self candidatesToDelete];
      v19 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v10);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            v24 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
            v25 = [v24 environmentCandidates];
            [v25 removeObjectIdenticalTo:v23];
          }

          v20 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v20);
      }

      goto LABEL_18;
    }

LABEL_19:
    [(TIMecabraEnvironment *)self compareDocumentAndEnvironmentCandidates];
    [(TIMecabraEnvironment *)self updateCursorPosition];
    v26 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [v26 syncEnvironmentAndContextCandidates];

    goto LABEL_20;
  }

  if (!v8)
  {
    [(TIMecabraEnvironment *)self createNewCandidatesFromDocumentContext];
    goto LABEL_19;
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)compareDocumentAndEnvironmentCandidates
{
  v3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v4 = [v3 environmentCandidateStrings];
  v34 = [v4 componentsJoinedByString:&stru_283FDFAF8];

  v5 = [(TIMecabraEnvironment *)self leftDocumentContext];
  v6 = v5;
  if (self->_mecabraLanguage == 4)
  {
    v7 = [v5 normalizeSmartQuotedStringOnlySingleQuote];

    v6 = v7;
  }

  v8 = [v6 longestCommonSubstring:v34 backwards:0];
  if (![v8 length])
  {
    v9 = [(TIMecabraEnvironment *)self leftDocumentContext];
    v10 = v9;
    v11 = v9 ? v9 : &stru_283FDFAF8;
    v12 = [v34 rangeOfString:v11];
    v14 = v13;

    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v12 + v14 <= [v34 length])
    {
      v15 = [v34 substringWithRange:{v12, v14}];

      v8 = v15;
    }
  }

  [(TIMecabraEnvironment *)self setLeftDocumentContextCorrespondingToCandidates:v8];
  v16 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_283FDFAF8;
  }

  v19 = [v34 rangeOfString:v18 options:2];
  [(TIMecabraEnvironment *)self setLeftDocumentContextCorrespondingToCandidatesRange:v19, v20];

  if ([(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v22 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange];
    [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange];
    v21 = v23 + v22;
  }

  v24 = [(TIMecabraEnvironment *)self rightDocumentContext];
  v25 = v24;
  if (self->_mecabraLanguage == 4)
  {
    v26 = [v24 normalizeSmartQuotedStringOnlySingleQuote];

    v25 = v26;
  }

  v27 = [v34 substringFromIndex:v21];
  v28 = [v27 longestCommonSubstring:v25 backwards:1];
  [(TIMecabraEnvironment *)self setRightDocumentContextCorrespondingToCandidates:v28];

  v29 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = &stru_283FDFAF8;
  }

  v32 = [v34 rangeOfString:v31 options:4];
  [(TIMecabraEnvironment *)self setRightDocumentContextCorrespondingToCandidatesRange:v32, v33];
}

- (BOOL)addNewCandidatesIfNecessary:(int64_t)a3
{
  if (a3 == 4)
  {
LABEL_12:
    v18 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
    v19 = [v18 mecabraCandidateSurfaces];
    v9 = [v19 componentsJoinedByString:&stru_283FDFAF8];

    v20 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
    if ([v20 length])
    {
      v21 = [(__CFString *)v9 length];

      if (!v21)
      {
        v17 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        goto LABEL_28;
      }
    }

    else
    {
    }

    if (self->_mecabraLanguage != 4)
    {
      goto LABEL_18;
    }

    v22 = @" ";
    v23 = [(__CFString *)v9 stringByAppendingString:@" "];
    v24 = [(TIMecabraEnvironment *)self leftDocumentContext];
    v25 = [v24 normalizeSmartQuotedStringOnlySingleQuote];
    v26 = [v23 isEqualToString:v25];

    if ((v26 & 1) == 0)
    {
LABEL_18:
      v17 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
      v27 = [(__CFString *)v17 rangeOfString:v9];
      v29 = v28;

      LOBYTE(v17) = 0;
      if (v27 != 0x7FFFFFFFFFFFFFFFLL && v29 != 0x7FFFFFFFFFFFFFFFLL && v29)
      {
        v30 = v27 + v29;
        v31 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        v32 = [v31 length];

        v17 = (v32 - v30);
        if (v32 != v30)
        {
          v33 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
          v17 = [v33 substringWithRange:{v30, v17}];
        }

        v34 = [(TIMecabraEnvironment *)self leftDocumentContext];
        v35 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        v36 = [v34 TI_hasTruePrefix:v35];

        if ((v36 & 1) == 0)
        {
LABEL_28:
          v22 = v17;
          if (!v17)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v37 = [(TIMecabraEnvironment *)self leftDocumentContext];
        v38 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        v22 = [v37 substringFromIndex:{objc_msgSend(v38, "length")}];

        if (v22)
        {
          v39 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
          v40 = [v39 lastObject];

          if (v40 && MecabraCandidateGetType() == 5)
          {
            v41 = MecabraCandidateGetSurface();
            v42 = [v41 stringByAppendingString:v22];

            v43 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
            [v43 removeObject:v40];

            v22 = v42;
          }

          goto LABEL_29;
        }

        LOBYTE(v17) = 0;
      }

LABEL_30:
      v44 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
      v45 = [v44 mecabraCandidateSurfaces];
      v15 = [v45 componentsJoinedByString:&stru_283FDFAF8];

      v46 = [(__CFString *)v15 length];
      v47 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
      v48 = v47;
      if (v46)
      {
        v49 = [v47 rangeOfString:v15];
        v51 = v50;

        v52 = 0;
        if (v49 && v49 != 0x7FFFFFFFFFFFFFFFLL && v51 != 0x7FFFFFFFFFFFFFFFLL && v51)
        {
          v53 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
          v52 = [v53 substringWithRange:{0, v49}];
        }

        v54 = [(TIMecabraEnvironment *)self rightDocumentContext];
        v55 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
        v56 = [v54 TI_hasTrueSuffix:v55];

        if (v56)
        {
          v57 = [(TIMecabraEnvironment *)self rightDocumentContext];
          v58 = [(TIMecabraEnvironment *)self rightDocumentContext];
          v59 = [v58 length];
          v60 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
          v61 = [v57 substringToIndex:{v59 - objc_msgSend(v60, "length")}];

          if (!v61)
          {
            goto LABEL_47;
          }

          v62 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
          v63 = [v62 firstObject];

          if (v63 && MecabraCandidateGetType() == 5)
          {
            v64 = MecabraCandidateGetSurface();
            if (v64)
            {
              v65 = [v61 stringByAppendingString:v64];

              v66 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
              [v66 removeObject:v63];

              v61 = v65;
            }
          }

LABEL_46:
          v17 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
          [(TIMecabraEnvironment *)self insertCandidateWithString:v61 intoArray:v17 atIndex:0];

          LOBYTE(v17) = 1;
          goto LABEL_47;
        }
      }

      else
      {
        v67 = [v47 length];

        if (!v67)
        {
          goto LABEL_47;
        }

        v52 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
      }

      v61 = v52;
      if (!v52)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_29:
    v17 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
    [(TIMecabraEnvironment *)self addCandidateWithString:v22 toArray:v17];

    LOBYTE(v17) = 1;
    goto LABEL_30;
  }

  v4 = [(TIMecabraEnvironment *)self leftDocumentContext];
  v5 = [(TIMecabraEnvironment *)self rightDocumentContext];
  v6 = [v4 stringByAppendingString:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_283FDFAF8;
  }

  v9 = v8;

  v10 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v11 = [v10 environmentCandidateStrings];
  v12 = [v11 componentsJoinedByString:&stru_283FDFAF8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_283FDFAF8;
  }

  v15 = v14;

  if ([(__CFString *)v9 rangeOfString:v15]== 0x7FFFFFFFFFFFFFFFLL || (v16 = [(__CFString *)v9 length], v16 != [(__CFString *)v15 length]))
  {

    goto LABEL_12;
  }

  LOBYTE(v17) = 0;
LABEL_47:

  return v17;
}

- (void)createNewCandidatesFromDocumentContext
{
  v3 = [(TIMecabraEnvironment *)self leftDocumentContext];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(TIMecabraEnvironment *)self leftDocumentContext];
    v6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v7 = [v6 environmentCandidates];
    [(TIMecabraEnvironment *)self addCandidateWithString:v5 toArray:v7];
  }

  v8 = [(TIMecabraEnvironment *)self rightDocumentContext];
  v9 = [v8 length];

  if (v9)
  {
    v12 = [(TIMecabraEnvironment *)self rightDocumentContext];
    v10 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v11 = [v10 environmentCandidates];
    [(TIMecabraEnvironment *)self addCandidateWithString:v12 toArray:v11];
  }
}

- (void)insertCandidateWithString:(id)a3 intoArray:(id)a4 atIndex:(unint64_t)a5
{
  v11 = a4;
  v8 = a3;
  v9 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v10 = [v9 createMecabraCandidateFromString:v8];

  if (v10)
  {
    [v11 insertObject:v10 atIndex:a5];
  }
}

- (void)addCandidateWithString:(id)a3 toArray:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v8 = [v7 createMecabraCandidateFromString:v6];

  if (v8)
  {
    [v9 addObject:v8];
  }
}

- (void)revertLearningOfCandidateIfNecessary
{
  v3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v4 = [v3 candidateIndex];

  v5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v6 = [v5 environmentCandidateStrings];
  v7 = [v6 count];

  if (v4 >= v7)
  {
    v8 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v9 = [v8 environmentCandidateStrings];
    v4 = [v9 count] - 1;
  }

  v10 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v11 = [v10 environmentCandidates];
  v12 = [v11 objectAtIndexedSubscript:v4];

  v13 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v13 revertLearningForCandidate:v12];
}

- (void)analyzeCandidateContextWithSplit:(BOOL)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [(TIMecabraEnvironment *)self candidatesToDelete];
  [v5 removeAllObjects];

  v6 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
  [v6 removeAllObjects];

  v7 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
  [v7 removeAllObjects];

  v8 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange];
  v10 = v9;
  v35 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidatesRange];
  v12 = v11;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v37 = self;
  v13 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v14 = [v13 environmentCandidates];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v39;
    v34 = v8 + v10;
    v19 = v8 + v10 != v35 || a3;
    v32 = v12 + v10 + v8;
    v33 = v35 + v12;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        v21 = v17;
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        v23 = MecabraCandidateGetSurface();
        v17 += [v23 length];
        if (v19)
        {
          v25 = v8 <= v21 && v34 >= v17;
          v27 = v35 <= v21 && v33 >= v17;
          if (!v25 && !v27)
          {
LABEL_30:
            v29 = [(TIMecabraEnvironment *)v37 candidatesToDelete];
            goto LABEL_31;
          }

          if (v25)
          {
            v28 = [(TIMecabraEnvironment *)v37 candidatesLeftOfCaret];
            [v28 addObject:v22];
          }

          if (v27)
          {
            v29 = [(TIMecabraEnvironment *)v37 candidatesRightOfCaret];
LABEL_31:
            v30 = v29;
            [v29 addObject:{v22, v32}];
          }
        }

        else if (v8 > v21 || v32 < v17)
        {
          goto LABEL_30;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)updateCursorPosition
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v4 = [v3 environmentCandidateStrings];

  v5 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
  v6 = [(TIMecabraEnvironment *)self leftDocumentContext];
  v7 = [v6 length];

  if (!v7)
  {
    v17 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [v17 setCandidateIndex:0x7FFFFFFFFFFFFFFFLL];

    v18 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [v18 setCandidateInternalIndex:0x7FFFFFFFFFFFFFFFLL];

    goto LABEL_17;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v27;
  v25 = v4;
  while (2)
  {
    v14 = 0;
    v24 = v11 + v10;
    do
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v26 + 1) + 8 * v14);
      v16 = [v15 length] + v12;
      if (v16 == [v5 length])
      {
        v19 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
        [v19 setCandidateIndex:v11];

        v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
        v22 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
        [v22 setCandidateInternalIndex:v20];

        v4 = v25;
        goto LABEL_16;
      }

      if (v16 > [v5 length])
      {
        v21 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
        [v21 setCandidateIndex:v11];

        v20 = [v5 length] - v12;
        goto LABEL_15;
      }

      v12 += [v15 length];
      ++v11;
      ++v14;
    }

    while (v10 != v14);
    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v11 = v24;
    v4 = v25;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)documentContextIsEmpty
{
  v3 = [(TIMecabraEnvironment *)self leftDocumentContext];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TIMecabraEnvironment *)self rightDocumentContext];
    v4 = [v5 length] == 0;
  }

  return v4;
}

- (void)setCandidateIndex:(int64_t)a3
{
  v4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [v4 setCandidateIndex:a3];
}

- (unint64_t)candidateIndex
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v3 = [v2 candidateIndex];

  return v3;
}

- (NSMutableArray)candidatesToDelete
{
  candidatesToDelete = self->_candidatesToDelete;
  if (!candidatesToDelete)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_candidatesToDelete;
    self->_candidatesToDelete = v4;

    candidatesToDelete = self->_candidatesToDelete;
  }

  return candidatesToDelete;
}

- (NSMutableArray)candidatesRightOfCaret
{
  candidatesRightOfCaret = self->_candidatesRightOfCaret;
  if (!candidatesRightOfCaret)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_candidatesRightOfCaret;
    self->_candidatesRightOfCaret = v4;

    candidatesRightOfCaret = self->_candidatesRightOfCaret;
  }

  return candidatesRightOfCaret;
}

- (NSMutableArray)candidatesLeftOfCaret
{
  candidatesLeftOfCaret = self->_candidatesLeftOfCaret;
  if (!candidatesLeftOfCaret)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_candidatesLeftOfCaret;
    self->_candidatesLeftOfCaret = v4;

    candidatesLeftOfCaret = self->_candidatesLeftOfCaret;
  }

  return candidatesLeftOfCaret;
}

- (int)textContentType
{
  v2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v3 = [v2 textContentType];

  return v3;
}

- (void)setRightDocumentContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_283FDFAF8;
  }

  v8 = v5;
  if (![(NSString *)self->_rightDocumentContext isEqualToString:?])
  {
    v6 = [(__CFString *)v8 copy];
    rightDocumentContext = self->_rightDocumentContext;
    self->_rightDocumentContext = v6;
  }
}

- (void)setLeftDocumentContextInternal:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_283FDFAF8;
  }

  leftDocumentContext = self->_leftDocumentContext;
  p_leftDocumentContext = &self->_leftDocumentContext;
  if (leftDocumentContext != v5)
  {
    objc_storeStrong(p_leftDocumentContext, v5);
  }

  MEMORY[0x2821F96F8]();
}

- (void)setLeftDocumentContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_283FDFAF8;
  }

  v8 = v5;
  if (![(NSString *)self->_leftDocumentContext isEqualToString:?])
  {
    v6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v7 = [v6 contextString:v8 forRightContext:0];

    [(TIMecabraEnvironment *)self setLeftDocumentContextInternal:v7];
  }
}

- (NSString)rightDocumentContext
{
  rightDocumentContext = self->_rightDocumentContext;
  if (!rightDocumentContext)
  {
    self->_rightDocumentContext = &stru_283FDFAF8;
    rightDocumentContext = &stru_283FDFAF8;
  }

  return rightDocumentContext;
}

- (NSString)leftDocumentContext
{
  leftDocumentContext = self->_leftDocumentContext;
  if (!leftDocumentContext)
  {
    self->_leftDocumentContext = &stru_283FDFAF8;
    leftDocumentContext = &stru_283FDFAF8;
  }

  return leftDocumentContext;
}

+ (id)getWordFrom:(void *)a3 atIndex:(unint64_t)a4 forSurface:(BOOL)a5
{
  if (!a3)
  {
    v11 = &stru_283FDFAF8;

    return v11;
  }

  v6 = a5;
  if (MecabraCandidateGetWordCount() <= a4)
  {
    v11 = &stru_283FDFAF8;
    goto LABEL_15;
  }

  v8 = 0;
  v9 = a4;
  while (v6)
  {
    WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex();
    if (!v9)
    {
      Surface = MecabraCandidateGetSurface();
      goto LABEL_14;
    }

LABEL_8:
    v8 += WordLengthAtIndex;
    --v9;
  }

  WordLengthAtIndex = MecabraCandidateGetWordReadingLengthAtIndex();
  if (v9)
  {
    goto LABEL_8;
  }

  Surface = MecabraCandidateGetAnalysisString();
LABEL_14:
  v11 = [Surface substringWithRange:{v8, WordLengthAtIndex}];
LABEL_15:

  return v11;
}

+ (void)loadMobileAssetContentsForInputModes:(id)a3 assetContentTypes:(id)a4 onQueue:(id)a5 withCompletionBlock:(id)a6
{
  v92 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v60 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v10)
  {
    v55 = v11;
    v56 = v10;
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v69 = [MEMORY[0x277CBEB58] set];
    v68 = [MEMORY[0x277CBEB38] dictionary];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v57 = v9;
    obj = v9;
    v61 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v61)
    {
      v59 = *v84;
      v14 = *MEMORY[0x277D03FF8];
      do
      {
        v15 = 0;
        do
        {
          if (*v84 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v62 = v15;
          v65 = *(*(&v83 + 1) + 8 * v15);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v63 = v60;
          v66 = [v63 countByEnumeratingWithState:&v79 objects:v90 count:16];
          if (v66)
          {
            v64 = *v80;
            do
            {
              v16 = 0;
              do
              {
                if (*v80 != v64)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = v16;
                v17 = *(*(&v79 + 1) + 8 * v16);
                v18 = [v65 normalizedIdentifier];
                v19 = [v18 hasPrefix:@"zh"];

                v20 = +[TIAssetManager sharedAssetManager];
                v21 = [v20 ddsAssetContentItemsWithContentType:v17 inputMode:v65 filteredWithRegion:v19];

                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v22 = v21;
                v23 = [v22 countByEnumeratingWithState:&v75 objects:v89 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v76;
                  do
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v76 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(*(&v75 + 1) + 8 * i);
                      v28 = [v27 contents];
                      v29 = [v28 objectForKeyedSubscript:v14];

                      if ([v29 count])
                      {
                        v30 = [v27 type];
                        v31 = [v30 isEqualToString:@"LanguageModel"];

                        if (v31)
                        {
                          v32 = [v68 objectForKeyedSubscript:v29];

                          if (!v32)
                          {
                            v33 = [MEMORY[0x277CBEB18] array];
                            [v68 setObject:v33 forKeyedSubscript:v29];
                          }

                          v34 = v68;
                        }

                        else
                        {
                          v38 = [v13 objectForKeyedSubscript:v29];

                          if (!v38)
                          {
                            v39 = [MEMORY[0x277CBEB18] array];
                            [v13 setObject:v39 forKeyedSubscript:v29];
                          }

                          v34 = v13;
                        }

                        v37 = [v34 objectForKeyedSubscript:v29];
                        v40 = [v27 path];
                        v41 = [v40 path];
                        [v37 addObject:v41];
                      }

                      else
                      {
                        v35 = [v27 path];
                        v36 = [v35 URLByDeletingLastPathComponent];
                        v37 = [v36 URLByDeletingLastPathComponent];

                        [v69 addObject:v37];
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v75 objects:v89 count:16];
                  }

                  while (v24);
                }

                v16 = v67 + 1;
              }

              while (v67 + 1 != v66);
              v66 = [v63 countByEnumeratingWithState:&v79 objects:v90 count:16];
            }

            while (v66);
          }

          v15 = v62 + 1;
        }

        while (v62 + 1 != v61);
        v61 = [obj countByEnumeratingWithState:&v83 objects:v91 count:16];
      }

      while (v61);
    }

    v42 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s DDS regionalAsset (%@)", "+[TIMecabraEnvironment loadMobileAssetContentsForInputModes:assetContentTypes:onQueue:withCompletionBlock:]", v13];
      *buf = 138412290;
      v88 = v43;
      _os_log_impl(&dword_22CA55000, v42, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v44 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s DDS nonRegionalAsset (%@)", "+[TIMecabraEnvironment loadMobileAssetContentsForInputModes:assetContentTypes:onQueue:withCompletionBlock:]", v69];
      *buf = 138412290;
      v88 = v45;
      _os_log_impl(&dword_22CA55000, v44, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v46 = v13;
    v47 = v69;
    v48 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s sending to mecabra : regional assets %@ : non regional assets %@", "+[TIMecabraEnvironment loadMobileAssetContentsForInputModes:assetContentTypes:onQueue:withCompletionBlock:]", v46, v47];
      *buf = 138412290;
      v88 = v54;
      _os_log_debug_impl(&dword_22CA55000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __107__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_assetContentTypes_onQueue_withCompletionBlock___block_invoke;
    v70[3] = &unk_278732940;
    v71 = v46;
    v72 = v68;
    v73 = v47;
    v12 = v55;
    v74 = v55;
    v49 = v47;
    v50 = v68;
    v51 = v46;
    v52 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v70];
    v10 = v56;
    [v56 addOperation:v52];

    v9 = v57;
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __107__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_assetContentTypes_onQueue_withCompletionBlock___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [*(a1 + 32) allKeys];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v36[0] = *MEMORY[0x277D82A40];
        v9 = [v8 description];
        v37[0] = v9;
        v36[1] = *MEMORY[0x277D82A38];
        v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v37[1] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
        [v2 addObject:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v5);
  }

  v24 = v2;

  v12 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [*(a1 + 40) allKeys];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v33[0] = *MEMORY[0x277D82A40];
        v19 = [v18 description];
        v34[0] = v19;
        v33[1] = *MEMORY[0x277D82A38];
        v20 = [*(a1 + 40) objectForKeyedSubscript:v18];
        v34[1] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
        [v12 addObject:v21];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v15);
  }

  v22 = [*(a1 + 48) allObjects];
  (*(*(a1 + 56) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)loadMobileAssetContentsForInputModes:(id)a3 assetContentTypes:(id)a4 inMecabra:(__Mecabra *)a5 onQueue:(id)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_assetContentTypes_inMecabra_onQueue___block_invoke;
  v6[3] = &__block_descriptor_40_e41_v32__0__NSArray_8__NSArray_16__NSArray_24l;
  v6[4] = a5;
  [TIMecabraEnvironment loadMobileAssetContentsForInputModes:a3 assetContentTypes:a4 onQueue:a6 withCompletionBlock:v6];
}

void __97__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_assetContentTypes_inMecabra_onQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v10 = a4;
  v7 = a3;
  MecabraSetAssetDataItemsForType();
  v8 = *(a1 + 32);
  MecabraSetAssetDataItemsForType();

  v9 = *(a1 + 32);
  MecabraSetAssetDataItemsForType();
}

+ (void)loadMobileAssetContentsForInputModes:(id)a3 onQueue:(id)a4 withCompletionBlock:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = @"Lexicon";
  v15 = @"LexiconDelta";
  v16 = @"LanguageModel";
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v14 count:3];
  [a1 loadMobileAssetContentsForInputModes:v11 assetContentTypes:v12 onQueue:v10 withCompletionBlock:{v9, v14, v15, v16, v17}];

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)loadMobileAssetContentsForInputModes:(id)a3 inMecabra:(__Mecabra *)a4 onQueue:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_inMecabra_onQueue___block_invoke;
  v5[3] = &__block_descriptor_40_e41_v32__0__NSArray_8__NSArray_16__NSArray_24l;
  v5[4] = a4;
  [TIMecabraEnvironment loadMobileAssetContentsForInputModes:a3 onQueue:a5 withCompletionBlock:v5];
}

void __79__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_inMecabra_onQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v10 = a4;
  v7 = a3;
  MecabraSetAssetDataItemsForType();
  v8 = *(a1 + 32);
  MecabraSetAssetDataItemsForType();

  v9 = *(a1 + 32);
  MecabraSetAssetDataItemsForType();
}

+ (void)removeMobileAssetListener:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCAB98];
    v4 = a3;
    v5 = [v3 defaultCenter];
    [v5 removeObserver:v4];

    v6 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACC8] callStackSymbols];
      v10 = [v8 stringWithFormat:@"%s %@", "+[TIMecabraEnvironment removeMobileAssetListener:]", v9];
      *buf = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer:(id)a3 inputModes:(id)a4 onQueue:(id)a5 oldMobileAssetChangeListener:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke;
  aBlock[3] = &unk_27872F0D8;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  v16 = a6;
  v17 = _Block_copy(aBlock);
  v17[2](v17, 0);
  [a1 removeMobileAssetListener:v16];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = +[TIAssetManager sharedAssetManager];
  v20 = [MEMORY[0x277CCABD8] mainQueue];
  v21 = [v18 addObserverForName:@"TIAssetsDidChangeNotification" object:v19 queue:v20 usingBlock:v17];

  return v21;
}

void __133__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = a1[5];
    v3 = a1[6];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __133__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke_2;
    v4[3] = &unk_27872F0B0;
    v5 = v1;
    [TIMecabraEnvironment loadMobileAssetContentsForInputModes:v2 onQueue:v3 withCompletionBlock:v4];
  }
}

void __133__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) performSelector:sel_updateMecabraWithRegionalOTAAssets_nonRegionalOTAAssets_ withObject:v7 withObject:v5];
  }
}

+ (id)loadMobileAssetContentsWhenMobileAssetChangesForMecabra:(__Mecabra *)a3 inputModes:(id)a4 onQueue:(id)a5 oldMobileAssetChangeListener:(id)a6
{
  v10 = a4;
  v11 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForMecabra_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke;
  aBlock[3] = &unk_27872F088;
  v23 = v11;
  v24 = a3;
  v22 = v10;
  v12 = v11;
  v13 = v10;
  v14 = a6;
  v15 = _Block_copy(aBlock);
  v15[2](v15, 0);
  [a1 removeMobileAssetListener:v14];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = +[TIAssetManager sharedAssetManager];
  v18 = [MEMORY[0x277CCABD8] mainQueue];
  v19 = [v16 addObserverForName:@"TIAssetsDidChangeNotification" object:v17 queue:v18 usingBlock:v15];

  return v19;
}

void *__128__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForMecabra_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke(void *result)
{
  v1 = result[6];
  if (v1)
  {
    v2 = result[4];
    v3 = result[5];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __128__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForMecabra_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke_2;
    v4[3] = &__block_descriptor_40_e41_v32__0__NSArray_8__NSArray_16__NSArray_24l;
    v4[4] = v1;
    return [TIMecabraEnvironment loadMobileAssetContentsForInputModes:v2 onQueue:v3 withCompletionBlock:v4];
  }

  return result;
}

void __128__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForMecabra_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v10 = a4;
  v7 = a3;
  MecabraSetAssetDataItemsForType();
  v8 = *(a1 + 32);
  MecabraSetAssetDataItemsForType();

  v9 = *(a1 + 32);
  MecabraSetAssetDataItemsForType();
}

+ (int)maxNumberOfDrawSamples
{
  if (maxNumberOfDrawSamples_onceToken != -1)
  {
    dispatch_once(&maxNumberOfDrawSamples_onceToken, &__block_literal_global_519);
  }

  if (maxNumberOfDrawSamples_maxNumberOfDrawSamples)
  {
    return 400;
  }

  else
  {
    return 600;
  }
}

void __46__TIMecabraEnvironment_maxNumberOfDrawSamples__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    Length = CFStringGetLength(v0);
    do
    {
      v3 = Length;
      if (Length-- < 1)
      {
        v5 = v1;
        goto LABEL_10;
      }
    }

    while (CFStringGetCharacterAtIndex(v1, Length) - 58 < 0xFFFFFFF6);
    v7.location = 0;
    v7.length = v3;
    v5 = CFStringCreateWithSubstring(0, v1, v7);
    CFRelease(v1);
    if (!v5)
    {
      return;
    }

    if ([&unk_28400B8B0 containsObject:v5])
    {
      maxNumberOfDrawSamples_maxNumberOfDrawSamples = 1;
    }

LABEL_10:

    CFRelease(v5);
  }
}

@end