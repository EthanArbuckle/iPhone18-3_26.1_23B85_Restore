@interface TIMecabraEnvironment
+ (id)getWordFrom:(void *)from atIndex:(unint64_t)index forSurface:(BOOL)surface;
+ (id)loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer:(id)recognizer inputModes:(id)modes onQueue:(id)queue oldMobileAssetChangeListener:(id)listener;
+ (id)loadMobileAssetContentsWhenMobileAssetChangesForMecabra:(__Mecabra *)mecabra inputModes:(id)modes onQueue:(id)queue oldMobileAssetChangeListener:(id)listener;
+ (int)maxNumberOfDrawSamples;
+ (void)loadMobileAssetContentsForInputModes:(id)modes assetContentTypes:(id)types inMecabra:(__Mecabra *)mecabra onQueue:(id)queue;
+ (void)loadMobileAssetContentsForInputModes:(id)modes assetContentTypes:(id)types onQueue:(id)queue withCompletionBlock:(id)block;
+ (void)loadMobileAssetContentsForInputModes:(id)modes inMecabra:(__Mecabra *)mecabra onQueue:(id)queue;
+ (void)loadMobileAssetContentsForInputModes:(id)modes onQueue:(id)queue withCompletionBlock:(id)block;
+ (void)removeMobileAssetListener:(id)listener;
- (BOOL)addNewCandidatesIfNecessary:(int64_t)necessary;
- (BOOL)analyzeInput:(id)input options:(unint64_t)options;
- (BOOL)analyzeString:(id)string options:(unint64_t)options;
- (BOOL)documentContextIsEmpty;
- (BOOL)predictionAnalyzeWithOptions:(unint64_t)options maxNumberOfCandidates:(unint64_t)candidates;
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
- (id)_longestWubiCodeForCharacter:(id)character;
- (id)_wubiCodeForWord:(id)word;
- (id)contactNameWubiCodePairsForFirstName:(id)name lastName:(id)lastName;
- (id)findSupplementalLexiconCandidatesSurroundingCursor;
- (id)readingForWubiWord:(id)word;
- (id)wubiAnnotationForCandidate:(id)candidate;
- (int)textContentType;
- (unint64_t)candidateIndex;
- (void)acceptInlineCandidates;
- (void)addCandidateWithString:(id)string toArray:(id)array;
- (void)addPunctuationCandidateToContext:(id)context;
- (void)addStringCandidateToContextInternal:(id)internal;
- (void)adjustEnvironment:(int64_t)environment;
- (void)analyzeCandidateContextWithSplit:(BOOL)split;
- (void)commitPredictionCandidate:(void *)candidate;
- (void)compareDocumentAndEnvironmentCandidates;
- (void)completelyCommitInlineCandidate:(void *)candidate;
- (void)createNewCandidatesFromDocumentContext;
- (void)declareEndOfSentence;
- (void)insertCandidateWithString:(id)string intoArray:(id)array atIndex:(unint64_t)index;
- (void)partiallyCommitInlineCandidate:(void *)candidate;
- (void)reset;
- (void)revertInlineCandidate;
- (void)revertLearningOfCandidateIfNecessary;
- (void)setAppContext:(id)context;
- (void)setCandidateIndex:(int64_t)index;
- (void)setGeometryModel:(void *)model modelData:(__CFArray *)data;
- (void)setKeyboardLayout:(id)layout;
- (void)setLeftDocumentContext:(id)context;
- (void)setLeftDocumentContextInternal:(id)internal;
- (void)setRightDocumentContext:(id)context;
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
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidates = [mecabraContextWrapper environmentCandidates];

  v5 = MEMORY[0x277CBEB98];
  mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  contextCandidates = [mecabraContextWrapper2 contextCandidates];
  v8 = [v5 setWithArray:contextCandidates];

  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = environmentCandidates;
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
            [array addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (NSArray)inlineCandidateSurfaces
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  inlineCandidates = [mecabraContextWrapper inlineCandidates];
  mecabraCandidateSurfaces = [inlineCandidates mecabraCandidateSurfaces];

  return mecabraCandidateSurfaces;
}

- (NSArray)contextCandidateSurfaces
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  contextCandidateStrings = [mecabraContextWrapper contextCandidateStrings];

  return contextCandidateStrings;
}

- (NSDictionary)environmentDebuggingInformation
{
  v33[8] = *MEMORY[0x277D85DE8];
  v32[0] = @"TIMecabraEnvironmentCandidateIndex";
  v3 = MEMORY[0x277CCABB0];
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v30 = [v3 numberWithUnsignedInteger:{objc_msgSend(mecabraContextWrapper, "candidateIndex")}];
  v33[0] = v30;
  v32[1] = @"TIMecabraEnvironmentPositionWithinCandidate";
  v4 = MEMORY[0x277CCABB0];
  mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v5 = [v4 numberWithUnsignedInteger:{objc_msgSend(mecabraContextWrapper2, "candidateInternalIndex")}];
  v33[1] = v5;
  v32[2] = @"TIMecabraEnvironmentContextCandidateSurfaces";
  contextCandidateSurfaces = [(TIMecabraEnvironment *)self contextCandidateSurfaces];
  v7 = contextCandidateSurfaces;
  v8 = MEMORY[0x277CBEBF8];
  if (contextCandidateSurfaces)
  {
    v9 = contextCandidateSurfaces;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v33[2] = v9;
  v32[3] = @"TIMecabraEnvironmentInlineCandidateSurfaces";
  inlineCandidateSurfaces = [(TIMecabraEnvironment *)self inlineCandidateSurfaces];
  v11 = inlineCandidateSurfaces;
  if (inlineCandidateSurfaces)
  {
    v12 = inlineCandidateSurfaces;
  }

  else
  {
    v12 = v8;
  }

  v33[3] = v12;
  v32[4] = @"TIMecabraEnvironmentRightCandidateSurfaces";
  rightCandidateSurfaces = [(TIMecabraEnvironment *)self rightCandidateSurfaces];
  v14 = rightCandidateSurfaces;
  if (rightCandidateSurfaces)
  {
    v15 = rightCandidateSurfaces;
  }

  else
  {
    v15 = v8;
  }

  v33[4] = v15;
  v32[5] = @"TIMecabraEnvironmentLeftContext";
  leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
  v17 = leftDocumentContext;
  if (leftDocumentContext)
  {
    v18 = leftDocumentContext;
  }

  else
  {
    v18 = &stru_283FDFAF8;
  }

  v33[5] = v18;
  v32[6] = @"TIMecabraEnvironmentRightContext";
  rightDocumentContext = [(TIMecabraEnvironment *)self rightDocumentContext];
  v20 = rightDocumentContext;
  if (rightDocumentContext)
  {
    v21 = rightDocumentContext;
  }

  else
  {
    v21 = &stru_283FDFAF8;
  }

  v33[6] = v21;
  v32[7] = @"TIMecabraEnvironmentTemporaryCandidates";
  mecabraContextWrapper3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  temporaryCandidates = [mecabraContextWrapper3 temporaryCandidates];
  v24 = temporaryCandidates;
  if (temporaryCandidates)
  {
    v25 = temporaryCandidates;
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
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper clearAll];

  [(TIMecabraEnvironment *)self setCanSuggestSupplementalItems:1];
}

- (id)findSupplementalLexiconCandidatesSurroundingCursor
{
  if ([(TIMecabraEnvironment *)self canSuggestSupplementalItems])
  {
    mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    findSupplementalLexiconCandidatesSurroundingCursor = [mecabraContextWrapper findSupplementalLexiconCandidatesSurroundingCursor];
  }

  else
  {
    findSupplementalLexiconCandidatesSurroundingCursor = MEMORY[0x277CBEBF8];
  }

  return findSupplementalLexiconCandidatesSurroundingCursor;
}

- (void)declareEndOfSentence
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper declareEndOfSentence];
}

- (void)addPunctuationCandidateToContext:(id)context
{
  [(TIMecabraEnvironment *)self addStringCandidateToContextInternal:context];
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper declareEndOfSentence];
}

- (void)revertInlineCandidate
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper revertInlineCandidate];
}

- (void)completelyCommitInlineCandidate:(void *)candidate
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  candidateInternalIndex = [mecabraContextWrapper candidateInternalIndex];

  if (candidateInternalIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TIMecabraEnvironment *)self adjustEnvironment:4];
  }

  mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper2 completelyCommitInlineCandidate:candidate];

  v10 = MecabraCandidateGetSurface();
  if ([v10 length] && MecabraCandidateGetType() == 6)
  {
    leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
    v9 = [leftDocumentContext stringByAppendingString:v10];
    [(TIMecabraEnvironment *)self setLeftDocumentContextInternal:v9];
  }
}

- (void)partiallyCommitInlineCandidate:(void *)candidate
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  candidateInternalIndex = [mecabraContextWrapper candidateInternalIndex];

  if (candidateInternalIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(TIMecabraEnvironment *)self adjustEnvironment:4];
  }

  mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper2 partiallyCommitInlineCandidate:candidate];
}

- (void)acceptInlineCandidates
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper acceptInlineCandidates];
}

- (id)readingForWubiWord:(id)word
{
  wordCopy = word;
  if ([wordCopy _containsIdeographicCharacters])
  {
    v5 = [(TIMecabraEnvironment *)self _wubiCodeForWord:wordCopy];
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

- (id)contactNameWubiCodePairsForFirstName:(id)name lastName:(id)lastName
{
  v29 = *MEMORY[0x277D85DE8];
  lastNameCopy = lastName;
  nameCopy = name;
  if ([nameCopy _containsIdeographicCharacters])
  {
    v8 = nameCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ([lastNameCopy _containsIdeographicCharacters])
  {
    v10 = lastNameCopy;
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

- (id)_wubiCodeForWord:(id)word
{
  wordCopy = word;
  _graphemeCount = [wordCopy _graphemeCount];
  if (_graphemeCount == 3)
  {
    v13 = [wordCopy _graphemeAtIndex:0];
    v7 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v13];

    v14 = [wordCopy _graphemeAtIndex:1];
    v9 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v14];

    v15 = [wordCopy _graphemeAtIndex:2];
    v10 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v15];

    if ([v7 length] && objc_msgSend(v9, "length") && objc_msgSend(v10, "length") > 1)
    {
      v11 = [v7 substringToIndex:1];
      v16 = [v9 substringToIndex:1];
      v17 = [v11 stringByAppendingString:v16];
      v18 = [v10 substringToIndex:2];
      _lastGrapheme2 = [v17 stringByAppendingString:v18];

      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (_graphemeCount == 2)
  {
    _firstGrapheme = [wordCopy _firstGrapheme];
    v7 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:_firstGrapheme];

    _lastGrapheme = [wordCopy _lastGrapheme];
    v9 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:_lastGrapheme];

    if ([v7 length] >= 2 && objc_msgSend(v9, "length") >= 2)
    {
      v10 = [v7 substringToIndex:2];
      v11 = [v9 substringToIndex:2];
      _lastGrapheme2 = [v10 stringByAppendingString:v11];
LABEL_10:

      goto LABEL_20;
    }

LABEL_18:

LABEL_19:
    _lastGrapheme2 = 0;
    goto LABEL_20;
  }

  if (_graphemeCount < 4)
  {
    goto LABEL_19;
  }

  v19 = [wordCopy _graphemeAtIndex:0];
  v20 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v19];

  v21 = 1;
  v22 = [wordCopy _graphemeAtIndex:1];
  v23 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v22];

  v24 = [wordCopy _graphemeAtIndex:2];
  v25 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:v24];

  _lastGrapheme2 = [wordCopy _lastGrapheme];
  v26 = [(TIMecabraEnvironment *)self _longestWubiCodeForCharacter:_lastGrapheme2];

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
      _lastGrapheme2 = [v29 stringByAppendingString:v30];

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

  return _lastGrapheme2;
}

- (id)_longestWubiCodeForCharacter:(id)character
{
  v21 = *MEMORY[0x277D85DE8];
  characterCopy = character;
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

- (id)wubiAnnotationForCandidate:(id)candidate
{
  v27 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  [(TIMecabraEnvironment *)self mecabra];
  WubixingCodesFromSurface = MecabraCreateWubixingCodesFromSurface();
  if ([WubixingCodesFromSurface count] <= 1 || (objc_msgSend(WubixingCodesFromSurface, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7 > 2))
  {
    firstObject = [WubixingCodesFromSurface firstObject];
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
    firstObject = [v18 stringWithFormat:@"%@, %@", v19, v11];
  }

  v20 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)setAppContext:(id)context
{
  contextCopy = context;
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper setAppContext:contextCopy];
}

- (void)addStringCandidateToContextInternal:(id)internal
{
  internalCopy = internal;
  if ([internalCopy length])
  {
    mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v5 = [mecabraContextWrapper createMecabraCandidateFromString:internalCopy];

    [(TIMecabraEnvironment *)self completelyCommitInlineCandidate:v5];
  }
}

- (void)setKeyboardLayout:(id)layout
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__454;
  v12 = __Block_byref_object_dispose__455;
  v4 = MEMORY[0x277CBEB18];
  layoutCopy = layout;
  array = [v4 array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TIMecabraEnvironment_setKeyboardLayout___block_invoke;
  v7[3] = &unk_27872F328;
  v7[4] = &v8;
  [layoutCopy enumerateKeysUsingBlock:v7];

  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper setKeyboardLayout:v9[5]];

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

- (void)setGeometryModel:(void *)model modelData:(__CFArray *)data
{
  if (data)
  {
    mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [mecabraContextWrapper setGeometryModel:model modelData:data];
  }
}

- (void)commitPredictionCandidate:(void *)candidate
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper commitPredictionCandidate:candidate];
}

- (BOOL)predictionAnalyzeWithOptions:(unint64_t)options maxNumberOfCandidates:(unint64_t)candidates
{
  [(TIMecabraEnvironment *)self adjustEnvironment:0];
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  LOBYTE(candidates) = [mecabraContextWrapper predictionCandidatesWithOptions:options maxNumberOfCandidates:candidates];

  return candidates;
}

- (BOOL)analyzeInput:(id)input options:(unint64_t)options
{
  inputCopy = input;
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  LOBYTE(options) = [mecabraContextWrapper analyzeInput:inputCopy options:options];

  return options;
}

- (BOOL)analyzeString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  LOBYTE(options) = [mecabraContextWrapper analyzeString:stringCopy options:options];

  return options;
}

- (TIKeyboardLayout)baseLayout
{
  selfCopy = self;
  v54 = *MEMORY[0x277D85DE8];
  baseLayout = self->_baseLayout;
  if (!baseLayout)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    mecabraLanguage = [(TIMecabraEnvironment *)selfCopy mecabraLanguage];
    if ((mecabraLanguage - 1) >= 2)
    {
      if (mecabraLanguage != 4)
      {
LABEL_30:

        baseLayout = selfCopy->_baseLayout;
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
          v18 = selfCopy->_baseLayout;
          selfCopy->_baseLayout = v17;

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
                  v27 = v26 = selfCopy;
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

                  selfCopy = v26;
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

- (void)adjustEnvironment:(int64_t)environment
{
  v33 = *MEMORY[0x277D85DE8];
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidates = [mecabraContextWrapper environmentCandidates];
  v7 = [environmentCandidates count];

  documentContextIsEmpty = [(TIMecabraEnvironment *)self documentContextIsEmpty];
  if (v7)
  {
    v9 = !documentContextIsEmpty;
    if (environment == 2)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
      [mecabraContextWrapper2 declareEndOfSentence];
LABEL_18:

      goto LABEL_19;
    }

    [(TIMecabraEnvironment *)self compareDocumentAndEnvironmentCandidates];
    [(TIMecabraEnvironment *)self analyzeCandidateContextWithSplit:((environment - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0];
    if ([(TIMecabraEnvironment *)self addNewCandidatesIfNecessary:environment])
    {
      candidatesLeftOfCaret = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
      candidatesRightOfCaret = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
      mecabraContextWrapper2 = [candidatesLeftOfCaret arrayByAddingObjectsFromArray:candidatesRightOfCaret];

      mecabraContextWrapper3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
      environmentCandidates2 = [mecabraContextWrapper3 environmentCandidates];
      [environmentCandidates2 removeAllObjects];

      mecabraContextWrapper4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
      environmentCandidates3 = [mecabraContextWrapper4 environmentCandidates];
      [environmentCandidates3 setArray:mecabraContextWrapper2];

      goto LABEL_18;
    }

    candidatesToDelete = [(TIMecabraEnvironment *)self candidatesToDelete];
    v18 = [candidatesToDelete count];

    if (v18)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      mecabraContextWrapper2 = [(TIMecabraEnvironment *)self candidatesToDelete];
      v19 = [mecabraContextWrapper2 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(mecabraContextWrapper2);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            mecabraContextWrapper5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
            environmentCandidates4 = [mecabraContextWrapper5 environmentCandidates];
            [environmentCandidates4 removeObjectIdenticalTo:v23];
          }

          v20 = [mecabraContextWrapper2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v20);
      }

      goto LABEL_18;
    }

LABEL_19:
    [(TIMecabraEnvironment *)self compareDocumentAndEnvironmentCandidates];
    [(TIMecabraEnvironment *)self updateCursorPosition];
    mecabraContextWrapper6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [mecabraContextWrapper6 syncEnvironmentAndContextCandidates];

    goto LABEL_20;
  }

  if (!documentContextIsEmpty)
  {
    [(TIMecabraEnvironment *)self createNewCandidatesFromDocumentContext];
    goto LABEL_19;
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)compareDocumentAndEnvironmentCandidates
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidateStrings = [mecabraContextWrapper environmentCandidateStrings];
  v34 = [environmentCandidateStrings componentsJoinedByString:&stru_283FDFAF8];

  leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
  v6 = leftDocumentContext;
  if (self->_mecabraLanguage == 4)
  {
    normalizeSmartQuotedStringOnlySingleQuote = [leftDocumentContext normalizeSmartQuotedStringOnlySingleQuote];

    v6 = normalizeSmartQuotedStringOnlySingleQuote;
  }

  v8 = [v6 longestCommonSubstring:v34 backwards:0];
  if (![v8 length])
  {
    leftDocumentContext2 = [(TIMecabraEnvironment *)self leftDocumentContext];
    v10 = leftDocumentContext2;
    v11 = leftDocumentContext2 ? leftDocumentContext2 : &stru_283FDFAF8;
    v12 = [v34 rangeOfString:v11];
    v14 = v13;

    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v12 + v14 <= [v34 length])
    {
      v15 = [v34 substringWithRange:{v12, v14}];

      v8 = v15;
    }
  }

  [(TIMecabraEnvironment *)self setLeftDocumentContextCorrespondingToCandidates:v8];
  leftDocumentContextCorrespondingToCandidates = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
  v17 = leftDocumentContextCorrespondingToCandidates;
  if (leftDocumentContextCorrespondingToCandidates)
  {
    v18 = leftDocumentContextCorrespondingToCandidates;
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
    leftDocumentContextCorrespondingToCandidatesRange = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange];
    [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange];
    v21 = v23 + leftDocumentContextCorrespondingToCandidatesRange;
  }

  rightDocumentContext = [(TIMecabraEnvironment *)self rightDocumentContext];
  v25 = rightDocumentContext;
  if (self->_mecabraLanguage == 4)
  {
    normalizeSmartQuotedStringOnlySingleQuote2 = [rightDocumentContext normalizeSmartQuotedStringOnlySingleQuote];

    v25 = normalizeSmartQuotedStringOnlySingleQuote2;
  }

  v27 = [v34 substringFromIndex:v21];
  v28 = [v27 longestCommonSubstring:v25 backwards:1];
  [(TIMecabraEnvironment *)self setRightDocumentContextCorrespondingToCandidates:v28];

  rightDocumentContextCorrespondingToCandidates = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
  v30 = rightDocumentContextCorrespondingToCandidates;
  if (rightDocumentContextCorrespondingToCandidates)
  {
    v31 = rightDocumentContextCorrespondingToCandidates;
  }

  else
  {
    v31 = &stru_283FDFAF8;
  }

  v32 = [v34 rangeOfString:v31 options:4];
  [(TIMecabraEnvironment *)self setRightDocumentContextCorrespondingToCandidatesRange:v32, v33];
}

- (BOOL)addNewCandidatesIfNecessary:(int64_t)necessary
{
  if (necessary == 4)
  {
LABEL_12:
    candidatesLeftOfCaret = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
    mecabraCandidateSurfaces = [candidatesLeftOfCaret mecabraCandidateSurfaces];
    v9 = [mecabraCandidateSurfaces componentsJoinedByString:&stru_283FDFAF8];

    leftDocumentContextCorrespondingToCandidates = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
    if ([leftDocumentContextCorrespondingToCandidates length])
    {
      v21 = [(__CFString *)v9 length];

      if (!v21)
      {
        leftDocumentContextCorrespondingToCandidates2 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
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
    leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
    normalizeSmartQuotedStringOnlySingleQuote = [leftDocumentContext normalizeSmartQuotedStringOnlySingleQuote];
    v26 = [v23 isEqualToString:normalizeSmartQuotedStringOnlySingleQuote];

    if ((v26 & 1) == 0)
    {
LABEL_18:
      leftDocumentContextCorrespondingToCandidates2 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
      v27 = [(__CFString *)leftDocumentContextCorrespondingToCandidates2 rangeOfString:v9];
      v29 = v28;

      LOBYTE(leftDocumentContextCorrespondingToCandidates2) = 0;
      if (v27 != 0x7FFFFFFFFFFFFFFFLL && v29 != 0x7FFFFFFFFFFFFFFFLL && v29)
      {
        v30 = v27 + v29;
        leftDocumentContextCorrespondingToCandidates3 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        v32 = [leftDocumentContextCorrespondingToCandidates3 length];

        leftDocumentContextCorrespondingToCandidates2 = (v32 - v30);
        if (v32 != v30)
        {
          leftDocumentContextCorrespondingToCandidates4 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
          leftDocumentContextCorrespondingToCandidates2 = [leftDocumentContextCorrespondingToCandidates4 substringWithRange:{v30, leftDocumentContextCorrespondingToCandidates2}];
        }

        leftDocumentContext2 = [(TIMecabraEnvironment *)self leftDocumentContext];
        leftDocumentContextCorrespondingToCandidates5 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        v36 = [leftDocumentContext2 TI_hasTruePrefix:leftDocumentContextCorrespondingToCandidates5];

        if ((v36 & 1) == 0)
        {
LABEL_28:
          v22 = leftDocumentContextCorrespondingToCandidates2;
          if (!leftDocumentContextCorrespondingToCandidates2)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        leftDocumentContext3 = [(TIMecabraEnvironment *)self leftDocumentContext];
        leftDocumentContextCorrespondingToCandidates6 = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
        v22 = [leftDocumentContext3 substringFromIndex:{objc_msgSend(leftDocumentContextCorrespondingToCandidates6, "length")}];

        if (v22)
        {
          candidatesLeftOfCaret2 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
          lastObject = [candidatesLeftOfCaret2 lastObject];

          if (lastObject && MecabraCandidateGetType() == 5)
          {
            v41 = MecabraCandidateGetSurface();
            v42 = [v41 stringByAppendingString:v22];

            candidatesLeftOfCaret3 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
            [candidatesLeftOfCaret3 removeObject:lastObject];

            v22 = v42;
          }

          goto LABEL_29;
        }

        LOBYTE(leftDocumentContextCorrespondingToCandidates2) = 0;
      }

LABEL_30:
      candidatesRightOfCaret = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
      mecabraCandidateSurfaces2 = [candidatesRightOfCaret mecabraCandidateSurfaces];
      v15 = [mecabraCandidateSurfaces2 componentsJoinedByString:&stru_283FDFAF8];

      v46 = [(__CFString *)v15 length];
      rightDocumentContextCorrespondingToCandidates = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
      v48 = rightDocumentContextCorrespondingToCandidates;
      if (v46)
      {
        v49 = [rightDocumentContextCorrespondingToCandidates rangeOfString:v15];
        v51 = v50;

        rightDocumentContextCorrespondingToCandidates5 = 0;
        if (v49 && v49 != 0x7FFFFFFFFFFFFFFFLL && v51 != 0x7FFFFFFFFFFFFFFFLL && v51)
        {
          rightDocumentContextCorrespondingToCandidates2 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
          rightDocumentContextCorrespondingToCandidates5 = [rightDocumentContextCorrespondingToCandidates2 substringWithRange:{0, v49}];
        }

        rightDocumentContext = [(TIMecabraEnvironment *)self rightDocumentContext];
        rightDocumentContextCorrespondingToCandidates3 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
        v56 = [rightDocumentContext TI_hasTrueSuffix:rightDocumentContextCorrespondingToCandidates3];

        if (v56)
        {
          rightDocumentContext2 = [(TIMecabraEnvironment *)self rightDocumentContext];
          rightDocumentContext3 = [(TIMecabraEnvironment *)self rightDocumentContext];
          v59 = [rightDocumentContext3 length];
          rightDocumentContextCorrespondingToCandidates4 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
          v61 = [rightDocumentContext2 substringToIndex:{v59 - objc_msgSend(rightDocumentContextCorrespondingToCandidates4, "length")}];

          if (!v61)
          {
            goto LABEL_47;
          }

          candidatesRightOfCaret2 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
          firstObject = [candidatesRightOfCaret2 firstObject];

          if (firstObject && MecabraCandidateGetType() == 5)
          {
            v64 = MecabraCandidateGetSurface();
            if (v64)
            {
              v65 = [v61 stringByAppendingString:v64];

              candidatesRightOfCaret3 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
              [candidatesRightOfCaret3 removeObject:firstObject];

              v61 = v65;
            }
          }

LABEL_46:
          leftDocumentContextCorrespondingToCandidates2 = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
          [(TIMecabraEnvironment *)self insertCandidateWithString:v61 intoArray:leftDocumentContextCorrespondingToCandidates2 atIndex:0];

          LOBYTE(leftDocumentContextCorrespondingToCandidates2) = 1;
          goto LABEL_47;
        }
      }

      else
      {
        v67 = [rightDocumentContextCorrespondingToCandidates length];

        if (!v67)
        {
          goto LABEL_47;
        }

        rightDocumentContextCorrespondingToCandidates5 = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidates];
      }

      v61 = rightDocumentContextCorrespondingToCandidates5;
      if (!rightDocumentContextCorrespondingToCandidates5)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_29:
    leftDocumentContextCorrespondingToCandidates2 = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
    [(TIMecabraEnvironment *)self addCandidateWithString:v22 toArray:leftDocumentContextCorrespondingToCandidates2];

    LOBYTE(leftDocumentContextCorrespondingToCandidates2) = 1;
    goto LABEL_30;
  }

  leftDocumentContext4 = [(TIMecabraEnvironment *)self leftDocumentContext];
  rightDocumentContext4 = [(TIMecabraEnvironment *)self rightDocumentContext];
  v6 = [leftDocumentContext4 stringByAppendingString:rightDocumentContext4];
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

  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidateStrings = [mecabraContextWrapper environmentCandidateStrings];
  v12 = [environmentCandidateStrings componentsJoinedByString:&stru_283FDFAF8];
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

  LOBYTE(leftDocumentContextCorrespondingToCandidates2) = 0;
LABEL_47:

  return leftDocumentContextCorrespondingToCandidates2;
}

- (void)createNewCandidatesFromDocumentContext
{
  leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
  v4 = [leftDocumentContext length];

  if (v4)
  {
    leftDocumentContext2 = [(TIMecabraEnvironment *)self leftDocumentContext];
    mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    environmentCandidates = [mecabraContextWrapper environmentCandidates];
    [(TIMecabraEnvironment *)self addCandidateWithString:leftDocumentContext2 toArray:environmentCandidates];
  }

  rightDocumentContext = [(TIMecabraEnvironment *)self rightDocumentContext];
  v9 = [rightDocumentContext length];

  if (v9)
  {
    rightDocumentContext2 = [(TIMecabraEnvironment *)self rightDocumentContext];
    mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    environmentCandidates2 = [mecabraContextWrapper2 environmentCandidates];
    [(TIMecabraEnvironment *)self addCandidateWithString:rightDocumentContext2 toArray:environmentCandidates2];
  }
}

- (void)insertCandidateWithString:(id)string intoArray:(id)array atIndex:(unint64_t)index
{
  arrayCopy = array;
  stringCopy = string;
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v10 = [mecabraContextWrapper createMecabraCandidateFromString:stringCopy];

  if (v10)
  {
    [arrayCopy insertObject:v10 atIndex:index];
  }
}

- (void)addCandidateWithString:(id)string toArray:(id)array
{
  arrayCopy = array;
  stringCopy = string;
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  v8 = [mecabraContextWrapper createMecabraCandidateFromString:stringCopy];

  if (v8)
  {
    [arrayCopy addObject:v8];
  }
}

- (void)revertLearningOfCandidateIfNecessary
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  candidateIndex = [mecabraContextWrapper candidateIndex];

  mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidateStrings = [mecabraContextWrapper2 environmentCandidateStrings];
  v7 = [environmentCandidateStrings count];

  if (candidateIndex >= v7)
  {
    mecabraContextWrapper3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    environmentCandidateStrings2 = [mecabraContextWrapper3 environmentCandidateStrings];
    candidateIndex = [environmentCandidateStrings2 count] - 1;
  }

  mecabraContextWrapper4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidates = [mecabraContextWrapper4 environmentCandidates];
  v12 = [environmentCandidates objectAtIndexedSubscript:candidateIndex];

  mecabraContextWrapper5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper5 revertLearningForCandidate:v12];
}

- (void)analyzeCandidateContextWithSplit:(BOOL)split
{
  v43 = *MEMORY[0x277D85DE8];
  candidatesToDelete = [(TIMecabraEnvironment *)self candidatesToDelete];
  [candidatesToDelete removeAllObjects];

  candidatesLeftOfCaret = [(TIMecabraEnvironment *)self candidatesLeftOfCaret];
  [candidatesLeftOfCaret removeAllObjects];

  candidatesRightOfCaret = [(TIMecabraEnvironment *)self candidatesRightOfCaret];
  [candidatesRightOfCaret removeAllObjects];

  leftDocumentContextCorrespondingToCandidatesRange = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidatesRange];
  v10 = v9;
  rightDocumentContextCorrespondingToCandidatesRange = [(TIMecabraEnvironment *)self rightDocumentContextCorrespondingToCandidatesRange];
  v12 = v11;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidates = [mecabraContextWrapper environmentCandidates];

  obj = environmentCandidates;
  v15 = [environmentCandidates countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v39;
    v34 = leftDocumentContextCorrespondingToCandidatesRange + v10;
    v19 = leftDocumentContextCorrespondingToCandidatesRange + v10 != rightDocumentContextCorrespondingToCandidatesRange || split;
    v32 = v12 + v10 + leftDocumentContextCorrespondingToCandidatesRange;
    v33 = rightDocumentContextCorrespondingToCandidatesRange + v12;
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
          v25 = leftDocumentContextCorrespondingToCandidatesRange <= v21 && v34 >= v17;
          v27 = rightDocumentContextCorrespondingToCandidatesRange <= v21 && v33 >= v17;
          if (!v25 && !v27)
          {
LABEL_30:
            candidatesToDelete2 = [(TIMecabraEnvironment *)selfCopy candidatesToDelete];
            goto LABEL_31;
          }

          if (v25)
          {
            candidatesLeftOfCaret2 = [(TIMecabraEnvironment *)selfCopy candidatesLeftOfCaret];
            [candidatesLeftOfCaret2 addObject:v22];
          }

          if (v27)
          {
            candidatesToDelete2 = [(TIMecabraEnvironment *)selfCopy candidatesRightOfCaret];
LABEL_31:
            v30 = candidatesToDelete2;
            [candidatesToDelete2 addObject:{v22, v32}];
          }
        }

        else if (leftDocumentContextCorrespondingToCandidatesRange > v21 || v32 < v17)
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
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  environmentCandidateStrings = [mecabraContextWrapper environmentCandidateStrings];

  leftDocumentContextCorrespondingToCandidates = [(TIMecabraEnvironment *)self leftDocumentContextCorrespondingToCandidates];
  leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
  v7 = [leftDocumentContext length];

  if (!v7)
  {
    mecabraContextWrapper2 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [mecabraContextWrapper2 setCandidateIndex:0x7FFFFFFFFFFFFFFFLL];

    mecabraContextWrapper3 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    [mecabraContextWrapper3 setCandidateInternalIndex:0x7FFFFFFFFFFFFFFFLL];

    goto LABEL_17;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = environmentCandidateStrings;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v27;
  v25 = environmentCandidateStrings;
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
      if (v16 == [leftDocumentContextCorrespondingToCandidates length])
      {
        mecabraContextWrapper4 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
        [mecabraContextWrapper4 setCandidateIndex:v11];

        v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
        mecabraContextWrapper5 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
        [mecabraContextWrapper5 setCandidateInternalIndex:v20];

        environmentCandidateStrings = v25;
        goto LABEL_16;
      }

      if (v16 > [leftDocumentContextCorrespondingToCandidates length])
      {
        mecabraContextWrapper6 = [(TIMecabraEnvironment *)self mecabraContextWrapper];
        [mecabraContextWrapper6 setCandidateIndex:v11];

        v20 = [leftDocumentContextCorrespondingToCandidates length] - v12;
        goto LABEL_15;
      }

      v12 += [v15 length];
      ++v11;
      ++v14;
    }

    while (v10 != v14);
    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v11 = v24;
    environmentCandidateStrings = v25;
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
  leftDocumentContext = [(TIMecabraEnvironment *)self leftDocumentContext];
  if ([leftDocumentContext length])
  {
    v4 = 0;
  }

  else
  {
    rightDocumentContext = [(TIMecabraEnvironment *)self rightDocumentContext];
    v4 = [rightDocumentContext length] == 0;
  }

  return v4;
}

- (void)setCandidateIndex:(int64_t)index
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  [mecabraContextWrapper setCandidateIndex:index];
}

- (unint64_t)candidateIndex
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  candidateIndex = [mecabraContextWrapper candidateIndex];

  return candidateIndex;
}

- (NSMutableArray)candidatesToDelete
{
  candidatesToDelete = self->_candidatesToDelete;
  if (!candidatesToDelete)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_candidatesToDelete;
    self->_candidatesToDelete = array;

    candidatesToDelete = self->_candidatesToDelete;
  }

  return candidatesToDelete;
}

- (NSMutableArray)candidatesRightOfCaret
{
  candidatesRightOfCaret = self->_candidatesRightOfCaret;
  if (!candidatesRightOfCaret)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_candidatesRightOfCaret;
    self->_candidatesRightOfCaret = array;

    candidatesRightOfCaret = self->_candidatesRightOfCaret;
  }

  return candidatesRightOfCaret;
}

- (NSMutableArray)candidatesLeftOfCaret
{
  candidatesLeftOfCaret = self->_candidatesLeftOfCaret;
  if (!candidatesLeftOfCaret)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_candidatesLeftOfCaret;
    self->_candidatesLeftOfCaret = array;

    candidatesLeftOfCaret = self->_candidatesLeftOfCaret;
  }

  return candidatesLeftOfCaret;
}

- (int)textContentType
{
  mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
  textContentType = [mecabraContextWrapper textContentType];

  return textContentType;
}

- (void)setRightDocumentContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = contextCopy;
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

- (void)setLeftDocumentContextInternal:(id)internal
{
  internalCopy = internal;
  if (internalCopy)
  {
    v5 = internalCopy;
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

- (void)setLeftDocumentContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v5 = contextCopy;
  }

  else
  {
    v5 = &stru_283FDFAF8;
  }

  v8 = v5;
  if (![(NSString *)self->_leftDocumentContext isEqualToString:?])
  {
    mecabraContextWrapper = [(TIMecabraEnvironment *)self mecabraContextWrapper];
    v7 = [mecabraContextWrapper contextString:v8 forRightContext:0];

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

+ (id)getWordFrom:(void *)from atIndex:(unint64_t)index forSurface:(BOOL)surface
{
  if (!from)
  {
    v11 = &stru_283FDFAF8;

    return v11;
  }

  surfaceCopy = surface;
  if (MecabraCandidateGetWordCount() <= index)
  {
    v11 = &stru_283FDFAF8;
    goto LABEL_15;
  }

  v8 = 0;
  indexCopy = index;
  while (surfaceCopy)
  {
    WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex();
    if (!indexCopy)
    {
      Surface = MecabraCandidateGetSurface();
      goto LABEL_14;
    }

LABEL_8:
    v8 += WordLengthAtIndex;
    --indexCopy;
  }

  WordLengthAtIndex = MecabraCandidateGetWordReadingLengthAtIndex();
  if (indexCopy)
  {
    goto LABEL_8;
  }

  Surface = MecabraCandidateGetAnalysisString();
LABEL_14:
  v11 = [Surface substringWithRange:{v8, WordLengthAtIndex}];
LABEL_15:

  return v11;
}

+ (void)loadMobileAssetContentsForInputModes:(id)modes assetContentTypes:(id)types onQueue:(id)queue withCompletionBlock:(id)block
{
  v92 = *MEMORY[0x277D85DE8];
  modesCopy = modes;
  typesCopy = types;
  queueCopy = queue;
  blockCopy = block;
  v12 = blockCopy;
  if (queueCopy)
  {
    v55 = blockCopy;
    v56 = queueCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v69 = [MEMORY[0x277CBEB58] set];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v57 = modesCopy;
    obj = modesCopy;
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
          v63 = typesCopy;
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
                normalizedIdentifier = [v65 normalizedIdentifier];
                v19 = [normalizedIdentifier hasPrefix:@"zh"];

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
                      contents = [v27 contents];
                      v29 = [contents objectForKeyedSubscript:v14];

                      if ([v29 count])
                      {
                        type = [v27 type];
                        v31 = [type isEqualToString:@"LanguageModel"];

                        if (v31)
                        {
                          v32 = [dictionary2 objectForKeyedSubscript:v29];

                          if (!v32)
                          {
                            array = [MEMORY[0x277CBEB18] array];
                            [dictionary2 setObject:array forKeyedSubscript:v29];
                          }

                          v34 = dictionary2;
                        }

                        else
                        {
                          v38 = [dictionary objectForKeyedSubscript:v29];

                          if (!v38)
                          {
                            array2 = [MEMORY[0x277CBEB18] array];
                            [dictionary setObject:array2 forKeyedSubscript:v29];
                          }

                          v34 = dictionary;
                        }

                        v36URLByDeletingLastPathComponent = [v34 objectForKeyedSubscript:v29];
                        path = [v27 path];
                        v40Path = [path path];
                        [v36URLByDeletingLastPathComponent addObject:v40Path];
                      }

                      else
                      {
                        path2 = [v27 path];
                        uRLByDeletingLastPathComponent = [path2 URLByDeletingLastPathComponent];
                        v36URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

                        [v69 addObject:v36URLByDeletingLastPathComponent];
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
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s DDS regionalAsset (%@)", "+[TIMecabraEnvironment loadMobileAssetContentsForInputModes:assetContentTypes:onQueue:withCompletionBlock:]", dictionary];
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

    v46 = dictionary;
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
    v72 = dictionary2;
    v73 = v47;
    v12 = v55;
    v74 = v55;
    v49 = v47;
    v50 = dictionary2;
    v51 = v46;
    v52 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v70];
    queueCopy = v56;
    [v56 addOperation:v52];

    modesCopy = v57;
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

+ (void)loadMobileAssetContentsForInputModes:(id)modes assetContentTypes:(id)types inMecabra:(__Mecabra *)mecabra onQueue:(id)queue
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_assetContentTypes_inMecabra_onQueue___block_invoke;
  v6[3] = &__block_descriptor_40_e41_v32__0__NSArray_8__NSArray_16__NSArray_24l;
  v6[4] = mecabra;
  [TIMecabraEnvironment loadMobileAssetContentsForInputModes:modes assetContentTypes:types onQueue:queue withCompletionBlock:v6];
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

+ (void)loadMobileAssetContentsForInputModes:(id)modes onQueue:(id)queue withCompletionBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = @"Lexicon";
  v15 = @"LexiconDelta";
  v16 = @"LanguageModel";
  v8 = MEMORY[0x277CBEA60];
  blockCopy = block;
  queueCopy = queue;
  modesCopy = modes;
  v12 = [v8 arrayWithObjects:&v14 count:3];
  [self loadMobileAssetContentsForInputModes:modesCopy assetContentTypes:v12 onQueue:queueCopy withCompletionBlock:{blockCopy, v14, v15, v16, v17}];

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)loadMobileAssetContentsForInputModes:(id)modes inMecabra:(__Mecabra *)mecabra onQueue:(id)queue
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__TIMecabraEnvironment_loadMobileAssetContentsForInputModes_inMecabra_onQueue___block_invoke;
  v5[3] = &__block_descriptor_40_e41_v32__0__NSArray_8__NSArray_16__NSArray_24l;
  v5[4] = mecabra;
  [TIMecabraEnvironment loadMobileAssetContentsForInputModes:modes onQueue:queue withCompletionBlock:v5];
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

+ (void)removeMobileAssetListener:(id)listener
{
  v13 = *MEMORY[0x277D85DE8];
  if (listener)
  {
    v3 = MEMORY[0x277CCAB98];
    listenerCopy = listener;
    defaultCenter = [v3 defaultCenter];
    [defaultCenter removeObserver:listenerCopy];

    v6 = TIAssetsOSLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = MEMORY[0x277CCACA8];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v10 = [v8 stringWithFormat:@"%s %@", "+[TIMecabraEnvironment removeMobileAssetListener:]", callStackSymbols];
      *buf = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer:(id)recognizer inputModes:(id)modes onQueue:(id)queue oldMobileAssetChangeListener:(id)listener
{
  recognizerCopy = recognizer;
  modesCopy = modes;
  queueCopy = queue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke;
  aBlock[3] = &unk_27872F0D8;
  v24 = recognizerCopy;
  v25 = modesCopy;
  v26 = queueCopy;
  v13 = queueCopy;
  v14 = modesCopy;
  v15 = recognizerCopy;
  listenerCopy = listener;
  v17 = _Block_copy(aBlock);
  v17[2](v17, 0);
  [self removeMobileAssetListener:listenerCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = +[TIAssetManager sharedAssetManager];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v21 = [defaultCenter addObserverForName:@"TIAssetsDidChangeNotification" object:v19 queue:mainQueue usingBlock:v17];

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

+ (id)loadMobileAssetContentsWhenMobileAssetChangesForMecabra:(__Mecabra *)mecabra inputModes:(id)modes onQueue:(id)queue oldMobileAssetChangeListener:(id)listener
{
  modesCopy = modes;
  queueCopy = queue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__TIMecabraEnvironment_loadMobileAssetContentsWhenMobileAssetChangesForMecabra_inputModes_onQueue_oldMobileAssetChangeListener___block_invoke;
  aBlock[3] = &unk_27872F088;
  v23 = queueCopy;
  mecabraCopy = mecabra;
  v22 = modesCopy;
  v12 = queueCopy;
  v13 = modesCopy;
  listenerCopy = listener;
  v15 = _Block_copy(aBlock);
  v15[2](v15, 0);
  [self removeMobileAssetListener:listenerCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = +[TIAssetManager sharedAssetManager];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v19 = [defaultCenter addObserverForName:@"TIAssetsDidChangeNotification" object:v17 queue:mainQueue usingBlock:v15];

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