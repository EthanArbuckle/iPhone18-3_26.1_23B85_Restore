@interface TIInputManagerHandwriting
- (BOOL)isDummyCandidate:(id)candidate;
- (BOOL)shouldCommitInputString;
- (BOOL)shouldEnableHalfWidthPunctuationForCurrentInputContext;
- (BOOL)shouldLookForCompletionCandidates;
- (BOOL)suppressPlaceholderCandidate;
- (BOOL)updateCandidates;
- (BOOL)updateCompletionCandidatesIfAppropriate;
- (CHRecognizer)recognizer;
- (CIMCandidateData)candidateData;
- (NSArray)facemarkCandidates;
- (RecognizerProvider)recognizerProvider;
- (TIInputManagerHandwriting)initWithConfig:(id)config keyboardState:(id)state;
- (id)addInputObject:(id)object;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)didAcceptCandidate:(id)candidate;
- (id)keyboardCandidateResultSetFromResults;
- (id)keyboardConfigurationLayoutTag;
- (id)markedTextForDefaultCandidate;
- (id)processCandidates:(id)candidates stickers:(id)stickers;
- (int)mecabraLanguage;
- (unint64_t)predictionOptions:(BOOL)options;
- (void)addInput:(id)input withContext:(id)context;
- (void)cancelRecognition;
- (void)clearCandidateRefsDictionary;
- (void)clearInput;
- (void)clearObservers;
- (void)dealloc;
- (void)deleteFromInputWithContext:(id)context;
- (void)initImplementation;
- (void)keyboardActivityDidTransition:(id)transition;
- (void)mainThreadUpdateCandidates:(id)candidates;
- (void)suspend;
- (void)syncMarkedTextForKeyboardState:(id)state afterContextChange:(BOOL)change;
- (void)updateAddressBook;
- (void)updateDictionaryPaths;
- (void)updateUserWordEntries;
@end

@implementation TIInputManagerHandwriting

- (CIMCandidateData)candidateData
{
  candidateData = self->_candidateData;
  if (!candidateData)
  {
    v4 = [CIMCandidateData alloc];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    v6 = [(CIMCandidateData *)v4 initWithInputMode:inputMode];
    v7 = self->_candidateData;
    self->_candidateData = v6;

    candidateData = self->_candidateData;
  }

  return candidateData;
}

- (id)processCandidates:(id)candidates stickers:(id)stickers
{
  v145 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stickersCopy = stickers;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v7 = candidatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v135 objects:v144 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v136;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v136 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v135 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v135 objects:v144 count:16];
    }

    while (v9);
  }

  v101 = v7;

  v13 = MEMORY[0x277CBEB58];
  v14 = [v6 valueForKey:@"candidate"];
  v107 = [v13 setWithArray:v14];

  if ([(TIInputManagerHandwriting *)self shouldOmitEmojiCandidates])
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  v16 = [(TIInputManagerHandwriting *)self contextBeforeWithDesiredLength:10];
  v17 = v16;
  v18 = &stru_287EBF4E8;
  if (v16)
  {
    v18 = v16;
  }

  v104 = v18;

  v102 = [(TIInputManagerHandwriting *)self predictionOptions:1];
  [(TIInputManagerHandwriting *)self mecabraLanguage];
  v118 = v15;
  v19 = [MEMORY[0x277CBEB58] setWithCapacity:2 * v15];
  array = [MEMORY[0x277CBEB18] array];
  v117 = v6;
  v20 = [v6 count];
  if (v20)
  {
    v21 = v20;
    v105 = 0;
    v106 = 0;
    v22 = 0;
    v116 = v19;
    while (1)
    {
      v23 = [v117 objectAtIndex:v22];
      if (([v23 isExtensionCandidate] & 1) == 0)
      {
        candidate = [v23 candidate];
        v25 = [candidate length];

        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v23;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          v28 = v27;
          v29 = 1;
          v108 = v27;
          v115 = v23;
          if (!v22 && v27)
          {
            wordSearch = [(TIInputManagerHandwriting *)self wordSearch];
            committedCandidates = [(TIInputManagerHandwriting *)self committedCandidates];
            v32 = [wordSearch generateConversionsForCandidate:v28 candidateContext:committedCandidates stringContext:v104];

            if ([v32 count])
            {
              v33 = v21;
              v34 = 0;
              v22 = 0;
              v35 = 0;
              do
              {
                v36 = [v32 objectAtIndexedSubscript:v34];

                v37 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v36];
                candidate2 = [v37 candidate];
                v39 = [v107 containsObject:candidate2];

                if ((v39 & 1) == 0)
                {
                  candidateRefsDictionary = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
                  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
                  [candidateRefsDictionary setObject:v36 forKeyedSubscript:v41];

                  [v117 insertObject:v37 atIndex:++v22];
                  ++v33;
                  v35 = 1;
                }

                ++v34;
              }

              while ([v32 count] > v34);
              if (v35)
              {
                v21 = v33;
                v23 = v115;
                if ([v32 count])
                {
                  v42 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, objc_msgSend(stickersCopy, "count")}];
                  [v117 insertObjects:stickersCopy atIndexes:v42];
                }

                v29 = 0;
              }

              else
              {
                v29 = 1;
                v21 = v33;
                v23 = v115;
              }

              v28 = v108;
            }

            else
            {
              v22 = 0;
              v29 = 1;
            }
          }

          if (v29 && v106 < v118)
          {
            v43 = v21;
            v112 = v29;
            if (v22)
            {
              v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            else
            {
              v44 = [stickersCopy mutableCopy];
            }

            v45 = v44;
            candidate3 = [v23 candidate];
            v47 = MecabraCopyEmojiCharacterArrayForString();

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v48 = v47;
            v49 = [v48 countByEnumeratingWithState:&v131 objects:v143 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v132;
              do
              {
                for (j = 0; j != v50; ++j)
                {
                  if (*v132 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v53 = *(*(&v131 + 1) + 8 * j);
                  if (([v19 containsObject:v53] & 1) == 0)
                  {
                    v54 = objc_alloc(MEMORY[0x277D6F3D8]);
                    input = [v115 input];
                    v56 = [v54 initWithCandidate:v53 forInput:input];

                    v19 = v116;
                    [v45 addObject:v56];
                    [v116 addObject:v53];
                  }
                }

                v50 = [v48 countByEnumeratingWithState:&v131 objects:v143 count:16];
              }

              while (v50);
            }

            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v57 = v45;
            v58 = [v57 countByEnumeratingWithState:&v127 objects:v142 count:16];
            if (v58)
            {
              v59 = v58;
              v60 = 0;
              v61 = *v128;
              do
              {
                v62 = 0;
                v63 = v60 + 1;
                do
                {
                  if (*v128 != v61)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v64 = *(*(&v127 + 1) + 8 * v62);
                  if (v63 <= v118)
                  {
                    [v117 insertObject:v64 atIndex:++v22];
                    ++v43;
                  }

                  else
                  {
                    [array addObject:v64];
                  }

                  ++v62;
                  ++v63;
                }

                while (v59 != v62);
                v60 += v59;
                v59 = [v57 countByEnumeratingWithState:&v127 objects:v142 count:16];
              }

              while (v59);

              if (v60)
              {
                ++v106;
              }

              v19 = v116;
            }

            else
            {
            }

            v23 = v115;
            v29 = v112;

            v21 = v43;
            v28 = v108;
          }

          if (v28)
          {
            v65 = v29;
          }

          else
          {
            v65 = 0;
          }

          if (v65 == 1)
          {
            candidateRefsDictionary2 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
            v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v28, "uniqueID")}];
            v68 = [candidateRefsDictionary2 objectForKey:v67];

            if (v68)
            {
              wordSearch2 = [(TIInputManagerHandwriting *)self wordSearch];
              v141 = v68;
              [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
              v70 = v23;
              v72 = v71 = v21;
              v73 = [wordSearch2 generatePredictionsWithCandidateContext:v72 stringContext:v104 option:v102];

              v21 = v71;
              v23 = v70;
              v28 = v108;
            }

            else
            {
              v73 = 0;
            }

            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v74 = v73;
            v75 = [v74 countByEnumeratingWithState:&v123 objects:v140 count:16];
            if (v75)
            {
              v76 = v75;
              v111 = 0;
              v113 = v21;
              v77 = *v124;
              while (2)
              {
                for (k = 0; k != v76; ++k)
                {
                  if (*v124 != v77)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v79 = *(*(&v123 + 1) + 8 * k);
                  v80 = MecabraCandidateGetSurface();
                  if (v80 && MecabraCandidateGetType() != 6)
                  {
                    v81 = v74;
                    candidate4 = [v108 candidate];
                    v110 = [candidate4 stringByAppendingString:v80];

                    candidateRefsDictionary3 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
                    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
                    [candidateRefsDictionary3 setObject:v79 forKeyedSubscript:v84];

                    v85 = [objc_alloc(MEMORY[0x277D6F368]) initWithCandidate:v110 forInput:0 uniqueID:objc_msgSend(v108 completionUniqueID:{"uniqueID"), v79}];
                    [v117 insertObject:v85 atIndex:++v22];
                    ++v113;

                    if (v111)
                    {

                      v74 = v81;
                      ++v105;
                      v21 = v113;
                      v19 = v116;
                      goto LABEL_88;
                    }

                    v111 = 1;
                    v19 = v116;
                    v74 = v81;
                  }
                }

                v76 = [v74 countByEnumeratingWithState:&v123 objects:v140 count:16];
                if (v76)
                {
                  continue;
                }

                break;
              }

              if (v111)
              {
                ++v105;
              }

              v21 = v113;
LABEL_88:
              v23 = v115;
              v28 = v108;
            }

            else
            {
            }
          }

          if (v106 >= v118 || v105 > 1)
          {
            break;
          }
        }
      }

      if (++v22 >= v21)
      {
        goto LABEL_96;
      }
    }
  }

LABEL_96:
  [v117 addObjectsFromArray:array];

  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v87 = v117;
  v88 = [v87 countByEnumeratingWithState:&v119 objects:v139 count:16];
  if (!v88)
  {
    goto LABEL_113;
  }

  v89 = v88;
  v90 = *v120;
  do
  {
    v91 = 0;
    do
    {
      if (*v120 != v90)
      {
        objc_enumerationMutation(v87);
      }

      v92 = *(*(&v119 + 1) + 8 * v91);
      candidate5 = [v92 candidate];
      if ([candidate5 _graphemeCount] == 1)
      {
        if ([candidate5 rangeOfCharacterFromSet:alphanumericCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
        {
          _stringByConvertingFromHalfWidthToFullWidth = [candidate5 _stringByConvertingFromHalfWidthToFullWidth];
          v95 = [candidate5 isEqualToString:_stringByConvertingFromHalfWidthToFullWidth];
          v96 = @"UI-Halfwidth";
          if ((v95 & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_105;
        }

        if ([candidate5 _containsFullwidthLettersAndNumbersOnly] && (objc_msgSend(candidate5, "_containsHiraganaOrKatakana") & 1) == 0)
        {
          _stringByConvertingFromHalfWidthToFullWidth = [candidate5 _stringByConvertingFromFullWidthToHalfWidth];
          v97 = [candidate5 isEqualToString:_stringByConvertingFromHalfWidthToFullWidth];
          v96 = @"UI-Fullwidth";
          if (v97)
          {
            goto LABEL_105;
          }

LABEL_104:
          [v92 setAnnotationText:v96];
LABEL_105:
        }
      }

      ++v91;
    }

    while (v89 != v91);
    v98 = [v87 countByEnumeratingWithState:&v119 objects:v139 count:16];
    v89 = v98;
  }

  while (v98);
LABEL_113:

  v99 = *MEMORY[0x277D85DE8];

  return v87;
}

- (int)mecabraLanguage
{
  wordSearch = [(TIInputManagerHandwriting *)self wordSearch];
  mecabraLanguage = [wordSearch mecabraLanguage];

  return mecabraLanguage;
}

- (id)keyboardConfigurationLayoutTag
{
  if ([(TIInputManagerHandwriting *)self shouldEnableHalfWidthPunctuationForCurrentInputContext])
  {
    v2 = @"HalfWidthPunctuation";
  }

  else
  {
    v2 = @"Default";
  }

  return v2;
}

- (BOOL)shouldEnableHalfWidthPunctuationForCurrentInputContext
{
  keyboardState = [(TIInputManagerHandwriting *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if (*(&self->super.super.super.isa + *MEMORY[0x277D6FF28]))
  {
    v6 = [(TIInputManagerHandwriting *)self externalStringToInternal:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [TIKeyboardInputManagerChinese shouldEnableHalfWidthPunctuationForDocumentContext:contextBeforeInput composedText:v6];

  return v7;
}

- (BOOL)suppressPlaceholderCandidate
{
  inputString = [(TIInputManagerHandwriting *)self inputString];
  v3 = [inputString isEqualToString:@"　"];

  return v3;
}

- (void)deleteFromInputWithContext:(id)context
{
  contextCopy = context;
  [(TIInputManagerHandwriting *)self setCandidates:0];
  [(TIInputManagerHandwriting *)self resetCompletionStates];
  committedCandidates = [(TIInputManagerHandwriting *)self committedCandidates];
  [committedCandidates removeAllObjects];

  if (![(TIInputManagerHandwriting *)self inputIndex])
  {
    [contextCopy deleteBackward:1];
    goto LABEL_25;
  }

  userDrawing = [(TIInputManagerHandwriting *)self userDrawing];

  if (userDrawing)
  {
    v6 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB70]];
    TIStatisticScalarIncrement();
  }

  [(TIInputManagerHandwriting *)self setCandidates:0];
  [(TIInputManagerHandwriting *)self cancelRecognition];
  userDrawing2 = [(TIInputManagerHandwriting *)self userDrawing];
  v8 = [RecognizeDrawingOperation drawingWithStrokes:userDrawing2];

  recognizer = [(TIInputManagerHandwriting *)self recognizer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  recognizer2 = [(TIInputManagerHandwriting *)self recognizer];
  if (isKindOfClass)
  {
    keyboardState = [(TIInputManagerHandwriting *)self keyboardState];
    historyForRecognition = [(TIInputManagerHandwriting *)self historyForRecognition];
    recognizer3 = [RecognizeDrawingOperation textRecognitionResultsForDrawing:v8 withRecognizer:recognizer2 keyboardState:keyboardState history:historyForRecognition shouldCancel:0];

    [recognizer3 lastTokenStrokeIndexes];
  }

  else
  {
    historyForRecognition2 = [(TIInputManagerHandwriting *)self historyForRecognition];
    v16 = [RecognizeDrawingOperation recognitionResultsForDrawing:v8 withRecognizer:recognizer2 history:historyForRecognition2 shouldCancel:0];

    recognizer3 = [(TIInputManagerHandwriting *)self recognizer];
    [recognizer3 strokeIndexesForLastCharacter];
  }
  v17 = ;

  userDrawing3 = [(TIInputManagerHandwriting *)self userDrawing];
  numberOfStrokes = [userDrawing3 numberOfStrokes];

  lastIndex = [v17 lastIndex];
  if ([v17 count])
  {
    v21 = 1;
  }

  else
  {
    v21 = numberOfStrokes == 0;
  }

  v22 = !v21;
  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    while (1)
    {
      userDrawing4 = [(TIInputManagerHandwriting *)self userDrawing];
      numberOfStrokes2 = [userDrawing4 numberOfStrokes];

      if (lastIndex >= numberOfStrokes2)
      {
        break;
      }

      userDrawing5 = [(TIInputManagerHandwriting *)self userDrawing];
      [userDrawing5 removeStrokeAtIndex:lastIndex];

      lastIndex = [v17 indexLessThanIndex:lastIndex];
      if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }
    }

    v22 = 1;
  }

LABEL_19:
  inputString = [(TIInputManagerHandwriting *)self inputString];
  v27 = [inputString hasSuffix:*MEMORY[0x277D6FF50]];

  if (!v27)
  {
    if (v22)
    {
      v28 = [MEMORY[0x277CCAA78] indexSetWithIndex:0x7FFFFFFFLL];
      [contextCopy deleteHandwritingStrokes:v28];
      [(TIInputManagerHandwriting *)self clearInput];

      goto LABEL_24;
    }

    [contextCopy deleteHandwritingStrokes:v17];
    userDrawing6 = [(TIInputManagerHandwriting *)self userDrawing];
    numberOfStrokes3 = [userDrawing6 numberOfStrokes];

    if (numberOfStrokes3)
    {
      goto LABEL_24;
    }
  }

  [(TIInputManagerHandwriting *)self clearInput];
LABEL_24:

LABEL_25:
}

- (void)clearInput
{
  [(TIInputManagerHandwriting *)self setUserDrawing:0];
  [(TIInputManagerHandwriting *)self setCandidates:0];
  [(TIInputManagerHandwriting *)self clearCandidateRefsDictionary];
  [(TIInputManagerHandwriting *)self cancelRecognition];
  v3.receiver = self;
  v3.super_class = TIInputManagerHandwriting;
  [(TIInputManagerHandwriting *)&v3 clearInput];
}

- (BOOL)updateCompletionCandidatesIfAppropriate
{
  v65 = *MEMORY[0x277D85DE8];
  shouldLookForCompletionCandidates = [(TIInputManagerHandwriting *)self shouldLookForCompletionCandidates];
  if (!shouldLookForCompletionCandidates)
  {
    [(TIInputManagerHandwriting *)self resetCompletionStates];
    [(TIInputManagerHandwriting *)self setCandidates:MEMORY[0x277CBEBF8]];
    goto LABEL_30;
  }

  [(TIInputManagerHandwriting *)self setCandidates:0];
  self->_showingCompletionCandidates = 0;
  [(TIInputManagerHandwriting *)self clearCandidateRefsDictionary];
  v4 = [(TIInputManagerHandwriting *)self contextBeforeWithDesiredLength:10];
  [(TIInputManagerHandwriting *)self setIsInCompletionMode:1];
  string = [MEMORY[0x277CCAB68] string];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  committedCandidates = [(TIInputManagerHandwriting *)self committedCandidates];
  v7 = [committedCandidates countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v60;
    do
    {
      v10 = 0;
      do
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(committedCandidates);
        }

        v11 = *(*(&v59 + 1) + 8 * v10);
        [string appendString:MecabraCandidateGetSurface()];
        ++v10;
      }

      while (v8 != v10);
      v8 = [committedCandidates countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v8);
  }

  v12 = -[TIInputManagerHandwriting contextBeforeWithDesiredLength:](self, "contextBeforeWithDesiredLength:", [string length] + 10);
  committedCandidates2 = [(TIInputManagerHandwriting *)self committedCandidates];
  if ([committedCandidates2 count] && objc_msgSend(string, "length"))
  {
    v14 = [v12 hasSuffix:string];

    if (v14)
    {
      goto LABEL_14;
    }

    committedCandidates2 = [(TIInputManagerHandwriting *)self committedCandidates];
    [committedCandidates2 removeAllObjects];
  }

LABEL_14:
  committedCandidates3 = [(TIInputManagerHandwriting *)self committedCandidates];
  v16 = [committedCandidates3 count];

  v43 = v4;
  if (!v16)
  {
    v17 = v4;
    goto LABEL_21;
  }

  if ([string length] && objc_msgSend(v12, "hasSuffix:", string))
  {
    v17 = [v12 substringToIndex:{objc_msgSend(v12, "length") - objc_msgSend(string, "length")}];
LABEL_21:
    v18 = v17;
    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:
  string2 = [MEMORY[0x277CCAB68] string];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  committedCandidates4 = [(TIInputManagerHandwriting *)self committedCandidates];
  v21 = [committedCandidates4 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      v24 = 0;
      do
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(committedCandidates4);
        }

        v25 = *(*(&v55 + 1) + 8 * v24);
        [string2 appendString:MecabraCandidateGetSurface()];
        ++v24;
      }

      while (v22 != v24);
      v22 = [committedCandidates4 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v22);
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v28 = [[GeneratePredictionsOperation alloc] initWithInputManager:self predictionOptions:[(TIInputManagerHandwriting *)self predictionOptions:0] prefixContext:v18];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke;
  v51[3] = &unk_279D9D7E0;
  v51[4] = self;
  v29 = array;
  v52 = v29;
  v30 = v28;
  v53 = v30;
  v31 = array2;
  v54 = v31;
  v32 = MEMORY[0x26D6BFFC0](v51);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_2;
  v47[3] = &unk_279D9D8A8;
  v47[4] = self;
  v48 = v29;
  v49 = v31;
  v50 = v32;
  v33 = v31;
  v34 = v29;
  v35 = v32;
  v36 = MEMORY[0x26D6BFFC0](v47);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_7;
  v44[3] = &unk_279D9D8D0;
  v45 = v30;
  v46 = v36;
  v37 = v36;
  v38 = v30;
  [(GeneratePredictionsOperation *)v38 setCompletionBlock:v44];
  mEMORY[0x277D6FEF8] = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  [mEMORY[0x277D6FEF8] addOperation:v38];

LABEL_30:
  v40 = *MEMORY[0x277D85DE8];
  return !shouldLookForCompletionCandidates;
}

void __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke(id *a1)
{
  v2 = [a1[4] keyboardState];
  v3 = [v2 documentState];
  if ([v3 documentIsEmpty])
  {
  }

  else
  {
    v4 = _os_feature_enabled_impl();

    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = MEMORY[0x277D6FEC0];
  v6 = [a1[4] keyboardState];
  v7 = [v6 textInputTraits];
  v8 = [v7 textContentType];
  v9 = [a1[4] keyboardState];
  v10 = [v9 documentState];
  v11 = [v10 contextBeforeInput];
  v12 = [a1[4] keyboardState];
  v13 = [v5 proactiveTriggerForTextContentType:v8 withContextBeforeInput:v11 autofillMode:{objc_msgSend(v12, "autofillMode")}];

  if (v13)
  {
    [a1[5] addObject:v13];
  }

LABEL_7:
  v14 = [a1[4] candidateRefsDictionary];
  v15 = [a1[6] candidateRefsDictionary];
  [v14 addEntriesFromDictionary:v15];

  v16 = [a1[6] proactiveTriggers];

  if (v16)
  {
    v17 = a1[5];
    v18 = [a1[6] proactiveTriggers];
    [v17 addObjectsFromArray:v18];
  }

  [a1[4] setProactiveTriggers:a1[5]];
  v19 = [a1[6] candidates];

  if (v19)
  {
    v20 = a1[7];
    v21 = [a1[6] candidates];
    [v20 addObjectsFromArray:v21];
  }

  v22 = [a1[6] stickers];

  if (v22)
  {
    v23 = a1[7];
    v24 = [a1[6] stickers];
    [v23 addObjectsFromArray:v24];
  }

  [a1[4] setCandidates:a1[7]];
  if ([a1[7] count])
  {
    *(a1[4] + 576) = 1;
  }

  v25 = a1[4];
  v26 = [v25 keyboardCandidateResultSetFromResults];
  [v25 closeCandidateGenerationContextWithResults:v26];
}

void __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_2(id *a1)
{
  v2 = [a1[4] keyboardState];
  v3 = [v2 documentState];
  if (![v3 documentIsEmpty])
  {
    goto LABEL_6;
  }

  v4 = [a1[4] keyboardState];
  v5 = [v4 responseContext];
  if (!v5)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [MEMORY[0x277D6FEC0] sharedInstance];
  v8 = [v7 usePQT2Flow];

  if ((v8 & 1) == 0)
  {
    v9 = [a1[4] keyboardState];
    v10 = [v9 clientIdentifier];

    v11 = [a1[4] keyboardState];
    v12 = [v11 recipientIdentifier];

    v13 = [a1[4] keyboardState];
    [v13 shiftState];

    v14 = [a1[4] inputMode];
    v15 = [v14 languageWithRegion];

    v16 = [a1[4] keyboardState];
    v17 = [v16 responseContext];

    v18 = handwritingResponseKitBackgroundQueue();
    v19 = a1[7];
    v29 = v10;
    v30 = v12;
    v31 = v15;
    v20 = a1[5];
    v21 = a1[4];
    v28 = v20;
    *&v22 = a1[6];
    *(&v22 + 1) = v19;
    v32 = v22;
    v23 = v15;
    v24 = v17;
    v25 = v12;
    v26 = v10;
    TIDispatchAsync();

    return;
  }

LABEL_7:
  v27 = *(a1[7] + 2);

  v27();
}

void __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_8;
  v3[3] = &unk_279D9D8D0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 addOperationWithBlock:v3];
}

uint64_t __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setCompletionBlock:0];
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_3(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_4;
  block[3] = &unk_279D9D808;
  v20 = v21;
  v19 = *(a1 + 88);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
  v3 = [objc_alloc(MEMORY[0x277D6FE88]) initWithClientIdentifier:*(a1 + 32) andRecipientContactInfo:*(a1 + 40)];
  if (*(a1 + 96) == 2)
  {
    v4 = 512;
  }

  else
  {
    v4 = 640;
  }

  v5 = [MEMORY[0x277D46BD8] sharedManager];
  v6 = *(a1 + 48);
  v7 = [v3 identifierForResponseKit];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_5;
  v14[3] = &unk_279D9D858;
  v17 = v21;
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *(a1 + 72);
  v13 = v9;
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  [v5 responsesForMessage:v6 maximumResponses:10 forContext:v7 withLanguage:v8 options:v4 completionBlock:v14];

  _Block_object_dispose(v21, 8);
}

uint64_t __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_4(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v8;
  v9 = v3;
  TIDispatchAsync();
}

uint64_t __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke_6(uint64_t result)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(*(result + 72) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(result + 32);
    v3 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v3)
    {
      goto LABEL_16;
    }

    v4 = v3;
    v5 = *v37;
    v35 = *MEMORY[0x277D46C00];
    v32 = *MEMORY[0x277D46BF0];
    v6 = MEMORY[0x277D23050];
    v7 = 0x277D6F000uLL;
    v31 = *v37;
    while (1)
    {
      v8 = 0;
      v33 = v4;
      do
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = [v9 attributes];

        if (v10)
        {
          v11 = [v9 attributes];
          v12 = [v11 objectForKey:*v6];

          v13 = [v9 attributes];
          if ([v12 isEqualToString:v35])
          {
            v14 = [MEMORY[0x277D6FED0] rewriteMoneyAttributes:v13];

            v13 = v14;
          }

          v15 = [objc_alloc(*(v7 + 3784)) initWithSourceType:1 attributes:v13];
          [*(v2 + 40) addObject:v15];
        }

        else
        {
          v16 = [v9 string];

          if (!v16)
          {
            goto LABEL_14;
          }

          v17 = objc_alloc(MEMORY[0x277D6F448]);
          v18 = [v9 string];
          v19 = [v9 category];
          v12 = [v17 initWithResponseKitString:v18 responseKitCategory:v19 mecabraCandidatePointerValue:0];

          [v12 setTypingEngine:6];
          v20 = MEMORY[0x277D46BB8];
          v21 = [*(v2 + 48) inputMode];
          v22 = [v21 normalizedIdentifier];
          v23 = TIInputModeGetBaseLanguage();
          [v20 incrementAggdKeyForCategory:0 forAction:v32 withLanguageID:v23];

          v24 = MEMORY[0x277D46BB8];
          v25 = [v9 category];
          v26 = [*(v2 + 48) inputMode];
          v27 = [v26 normalizedIdentifier];
          v28 = TIInputModeGetBaseLanguage();
          v29 = v24;
          v5 = v31;
          v7 = 0x277D6F000;
          [v29 incrementAggdKeyForCategory:v25 forAction:v32 withLanguageID:v28];

          v4 = v33;
          [*(v2 + 56) addObject:v12];
        }

LABEL_14:
        ++v8;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v4)
      {
LABEL_16:

        result = (*(*(v2 + 64) + 16))();
        break;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldLookForCompletionCandidates
{
  if ([(TIInputManagerHandwriting *)self inputCount])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    userDrawing = [(TIInputManagerHandwriting *)self userDrawing];
    if (userDrawing)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = ![(TIInputManagerHandwriting *)self showingFacemarks];
    }
  }

  return v3;
}

- (unint64_t)predictionOptions:(BOOL)options
{
  if (options)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  if ([(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 | 4;
  }

  keyboardState = [(TIInputManagerHandwriting *)self keyboardState];
  candidateSelectionPredictionEnabled = [keyboardState candidateSelectionPredictionEnabled];

  if (candidateSelectionPredictionEnabled)
  {
    return v5;
  }

  else
  {
    return v5 | 0x20;
  }
}

- (void)clearCandidateRefsDictionary
{
  candidateRefsDictionary = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
  [candidateRefsDictionary removeAllObjects];
}

- (id)didAcceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  proactiveTrigger = [candidateCopy proactiveTrigger];

  if ([(TIInputManagerHandwriting *)self isInCompletionMode])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if ([candidateCopy isResponseKitCandidate])
  {
    v8 = MEMORY[0x277D46BB8];
    v9 = *MEMORY[0x277D46BE8];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    TIInputModeGetBaseLanguage();
    v69 = isKindOfClass;
    v12 = v7;
    v14 = v13 = proactiveTrigger;
    [v8 incrementAggdKeyForCategory:0 forAction:v9 withLanguageID:v14];

    v15 = MEMORY[0x277D46BB8];
    responseKitCategory = [candidateCopy responseKitCategory];
    inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier2 = [inputMode2 normalizedIdentifier];
    v19 = TIInputModeGetBaseLanguage();
    [v15 incrementAggdKeyForCategory:responseKitCategory forAction:v9 withLanguageID:v19];

    proactiveTrigger = v13;
    v7 = v12;
    isKindOfClass = v69;
  }

  if (!proactiveTrigger)
  {
    goto LABEL_11;
  }

  if (![(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
  {
    goto LABEL_11;
  }

  candidateRefsDictionary = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
  proactiveTrigger2 = [candidateCopy proactiveTrigger];
  attributes = [proactiveTrigger2 attributes];
  v23 = [attributes objectForKeyedSubscript:*MEMORY[0x277D6FD88]];
  v24 = [candidateRefsDictionary objectForKeyedSubscript:v23];

  if (v24)
  {
    candidate = [candidateCopy candidate];
    MecabraCandidateSetDisplayString();

    wordSearch = [(TIInputManagerHandwriting *)self wordSearch];
    [wordSearch acceptCandidate:v24];

    committedCandidates = [(TIInputManagerHandwriting *)self committedCandidates];
    [committedCandidates addObject:v24];

    v28 = 1;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
    v28 = 0;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
  {
    candidateRefsDictionary2 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
    v31 = [candidateRefsDictionary2 objectForKeyedSubscript:mecabraCandidatePointerValue];

    if (v31)
    {
      wordSearch2 = [(TIInputManagerHandwriting *)self wordSearch];
      [wordSearch2 acceptCandidate:v31];

      committedCandidates2 = [(TIInputManagerHandwriting *)self committedCandidates];
      [committedCandidates2 addObject:v31];

      v28 = 1;
    }
  }

LABEL_15:
  if ((v7 & 1) != 0 && [(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
  {
    committedCandidates5 = candidateCopy;
    if ([committedCandidates5 uniqueID])
    {
      candidateRefsDictionary3 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(committedCandidates5, "uniqueID")}];
      v37 = [candidateRefsDictionary3 objectForKeyedSubscript:v36];

      if (v37)
      {
        wordSearch3 = [(TIInputManagerHandwriting *)self wordSearch];
        [wordSearch3 acceptCandidate:v37];

        committedCandidates3 = [(TIInputManagerHandwriting *)self committedCandidates];
        [committedCandidates3 addObject:v37];

        v28 = 1;
      }
    }

    if ([committedCandidates5 completionUniqueID])
    {
      if ([(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
      {
        candidateRefsDictionary4 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(committedCandidates5, "completionUniqueID")}];
        v42 = [candidateRefsDictionary4 objectForKeyedSubscript:v41];

        if (v42)
        {
          wordSearch4 = [(TIInputManagerHandwriting *)self wordSearch];
          [wordSearch4 acceptCandidate:v42];

          committedCandidates4 = [(TIInputManagerHandwriting *)self committedCandidates];
          [committedCandidates4 addObject:v42];

          goto LABEL_27;
        }
      }
    }
  }

  if (v28)
  {
    goto LABEL_28;
  }

  committedCandidates5 = [(TIInputManagerHandwriting *)self committedCandidates];
  [committedCandidates5 removeAllObjects];
LABEL_27:

LABEL_28:
  committedCandidates6 = [(TIInputManagerHandwriting *)self committedCandidates];
  v46 = [committedCandidates6 count];

  if (v46 >= 0xB)
  {
    committedCandidates7 = [(TIInputManagerHandwriting *)self committedCandidates];
    committedCandidates8 = [(TIInputManagerHandwriting *)self committedCandidates];
    [committedCandidates7 removeObjectsInRange:{0, objc_msgSend(committedCandidates8, "count") - 10}];
  }

  candidate2 = [candidateCopy candidate];
  userDrawing = [(TIInputManagerHandwriting *)self userDrawing];

  if (userDrawing)
  {
    v51 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB78]];
    userDrawing2 = [(TIInputManagerHandwriting *)self userDrawing];
    [userDrawing2 totalNumberOfPoints];
    TIStatisticDistributionPushValue();

    v53 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB80]];
    userDrawing3 = [(TIInputManagerHandwriting *)self userDrawing];
    [userDrawing3 numberOfStrokes];
    TIStatisticDistributionPushValue();
  }

  if ([(TIInputManagerHandwriting *)self isInCompletionMode])
  {
    v55 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB68]];
    TIStatisticScalarIncrement();
  }

  v56 = MEMORY[0x277CCACA8];
  v57 = *MEMORY[0x277D6FB60];
  candidates = [(TIInputManagerHandwriting *)self candidates];
  v59 = [v56 stringWithFormat:@"%@.%lu", v57, objc_msgSend(candidates, "indexOfObject:", candidateCopy)];

  v60 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:v59];
  TIStatisticScalarIncrement();

  if ([candidateCopy isAddress])
  {
    keyboardState = [(TIInputManagerHandwriting *)self keyboardState];
    documentState = [keyboardState documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    if ([contextBeforeInput length])
    {
      _firstGrapheme = [candidate2 _firstGrapheme];
      _containsCJScripts = [_firstGrapheme _containsCJScripts];

      if (_containsCJScripts)
      {
        goto LABEL_40;
      }

      [@" " stringByAppendingString:candidate2];
      candidate2 = keyboardState = candidate2;
    }

    else
    {
    }
  }

LABEL_40:
  if (proactiveTrigger)
  {
    v66 = candidate2;
  }

  else
  {
    v66 = 0;
  }

  v67 = v66;

  return v66;
}

- (void)mainThreadUpdateCandidates:(id)candidates
{
  v36 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  if (([candidatesCopy isCancelled] & 1) == 0)
  {
    userDrawing = [(TIInputManagerHandwriting *)self userDrawing];

    if (userDrawing)
    {
      v6 = MEMORY[0x277CBEB18];
      candidates = [candidatesCopy candidates];
      v30 = [v6 arrayWithCapacity:{objc_msgSend(candidates, "count")}];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = candidatesCopy;
      candidates2 = [candidatesCopy candidates];
      v9 = [candidates2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          v12 = 0;
          do
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(candidates2);
            }

            mecabraHandwritingCandidate = [*(*(&v31 + 1) + 8 * v12) mecabraHandwritingCandidate];
            if (mecabraHandwritingCandidate)
            {
              v14 = [objc_alloc(MEMORY[0x277D6F368]) initWithCandidate:MecabraCandidateGetSurface() forInput:0 uniqueID:mecabraHandwritingCandidate completionUniqueID:0];
              [(TIInputManagerHandwriting *)self candidateRefsDictionary];
              v16 = v15 = self;
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mecabraHandwritingCandidate];
              [v16 setObject:mecabraHandwritingCandidate forKey:v17];

              self = v15;
              [v30 addObject:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [candidates2 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v10);
      }

      candidatesCopy = v29;
      stickers = [v29 stickers];
      v19 = [(TIInputManagerHandwriting *)self processCandidates:v30 stickers:stickers];
      [(TIInputManagerHandwriting *)self setCandidates:v19];

      [(TIInputManagerHandwriting *)self resetCompletionStates];
      candidates3 = [(TIInputManagerHandwriting *)self candidates];

      if (candidates3)
      {
        candidates4 = [(TIInputManagerHandwriting *)self candidates];
        proactiveTriggers = [(TIInputManagerHandwriting *)self proactiveTriggers];
        dummySet = [(TIInputManagerHandwriting *)self candidateResultSetFromCandidates:candidates4 proactiveTriggers:proactiveTriggers];
      }

      else
      {
        v24 = MEMORY[0x277CBEA60];
        null = [MEMORY[0x277CBEB68] null];
        v26 = [v24 arrayWithObject:null];
        [(TIInputManagerHandwriting *)self setCandidates:v26];

        dummySet = [MEMORY[0x277D6F3D0] dummySet];
      }

      markedTextForDefaultCandidate = [(TIInputManagerHandwriting *)self markedTextForDefaultCandidate];
      [(TIInputManagerHandwriting *)self setInput:markedTextForDefaultCandidate];

      [(TIInputManagerHandwriting *)self setMarkedText];
      [(TIInputManagerHandwriting *)self closeCandidateGenerationContextWithResults:dummySet];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateCandidates
{
  [(TIInputManagerHandwriting *)self cancelRecognition];
  showingFacemarks = [(TIInputManagerHandwriting *)self showingFacemarks];
  if (!showingFacemarks)
  {
    userDrawing = [(TIInputManagerHandwriting *)self userDrawing];

    if (userDrawing)
    {
      mEMORY[0x277D6FEF8] = [MEMORY[0x277D6FEF8] sharedOperationQueue];
      v6 = [RecognizeDrawingOperation alloc];
      userDrawing2 = [(TIInputManagerHandwriting *)self userDrawing];
      historyForRecognition = [(TIInputManagerHandwriting *)self historyForRecognition];
      v9 = [(RecognizeDrawingOperation *)v6 initWithInputManager:self strokes:userDrawing2 history:historyForRecognition];
      [mEMORY[0x277D6FEF8] addOperation:v9];
    }
  }

  return showingFacemarks;
}

- (id)addInputObject:(id)object
{
  objectCopy = object;
  [(TIInputManagerHandwriting *)self cancelRecognition];
  [(TIInputManagerHandwriting *)self setUserDrawing:objectCopy];

  [(TIInputManagerHandwriting *)self resetCompletionStates];
  userDrawing = [(TIInputManagerHandwriting *)self userDrawing];
  numberOfStrokes = [userDrawing numberOfStrokes];

  if (!numberOfStrokes)
  {
    [(TIInputManagerHandwriting *)self clearInput];
  }

  return &stru_287EBF4E8;
}

- (void)cancelRecognition
{
  mEMORY[0x277D6FEF8] = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  operations = [mEMORY[0x277D6FEF8] operations];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TIInputManagerHandwriting_cancelRecognition__block_invoke;
  v5[3] = &unk_279D9D7B8;
  v5[4] = self;
  [operations enumerateObjectsUsingBlock:v5];
}

void __46__TIInputManagerHandwriting_cancelRecognition__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v9;
    v4 = [v3 manager];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      [v3 cancel];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
    v7 = [v6 inputManager];
    v8 = *(a1 + 32);

    if (v7 == v8)
    {
      [v6 cancel];
    }
  }
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  object = [inputCopy object];

  if (object)
  {
    object2 = [inputCopy object];
    v10 = [(TIInputManagerHandwriting *)self addInputObject:object2];
    [inputCopy setString:v10];
  }

  string = [inputCopy string];
  [(TIInputManagerHandwriting *)self setShowingFacemarks:0];
  v12 = [string isEqualToString:@"☻"];
  candidates = [(TIInputManagerHandwriting *)self candidates];
  v14 = candidates;
  if (!v12)
  {
    if (candidates && !self->_showingCompletionCandidates)
    {
      v20 = [string length];

      if (v20)
      {
        [(TIInputManagerHandwriting *)self acceptCurrentCandidateWithContext:contextCopy];
        [(TIInputManagerHandwriting *)self setCandidates:0];
        goto LABEL_17;
      }
    }

    else
    {
    }

    candidates2 = [(TIInputManagerHandwriting *)self candidates];
    if (candidates2)
    {
      showingCompletionCandidates = self->_showingCompletionCandidates;

      if (!showingCompletionCandidates)
      {
LABEL_13:
        markedTextForDefaultCandidate = [(TIInputManagerHandwriting *)self markedTextForDefaultCandidate];

        [(TIInputManagerHandwriting *)self setInput:markedTextForDefaultCandidate];
        [(TIInputManagerHandwriting *)self setMarkedText];
        string = markedTextForDefaultCandidate;
        goto LABEL_18;
      }
    }

    else if (![(TIInputManagerHandwriting *)self inputCount])
    {
      userDrawing = [(TIInputManagerHandwriting *)self userDrawing];
      if ([userDrawing numberOfStrokes])
      {
        v22 = self->_showingCompletionCandidates;

        if (!v22)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

LABEL_17:
    [contextCopy insertText:string];
    goto LABEL_18;
  }

  if (candidates)
  {
    v15 = self->_showingCompletionCandidates;

    if (!v15)
    {
      [(TIInputManagerHandwriting *)self acceptCurrentCandidateWithContext:contextCopy];
      [(TIInputManagerHandwriting *)self setCandidates:0];
    }
  }

  facemarkCandidates = [(TIInputManagerHandwriting *)self facemarkCandidates];
  [(TIInputManagerHandwriting *)self setCandidates:facemarkCandidates];

  self->_showingCompletionCandidates = 0;
  [(TIInputManagerHandwriting *)self setShowingFacemarks:1];
  [inputCopy setString:*MEMORY[0x277D6FF50]];
  v23.receiver = self;
  v23.super_class = TIInputManagerHandwriting;
  [(TIInputManagerHandwriting *)&v23 addInput:inputCopy withContext:contextCopy];
LABEL_18:
}

- (void)syncMarkedTextForKeyboardState:(id)state afterContextChange:(BOOL)change
{
  if (change)
  {
    inputForMarkedText = [state inputForMarkedText];
    v6 = [inputForMarkedText length];

    if (!v6)
    {

      [(TIInputManagerHandwriting *)self clearInput];
    }
  }
}

- (NSArray)facemarkCandidates
{
  v26 = *MEMORY[0x277D85DE8];
  facemarkCandidates = self->_facemarkCandidates;
  if (!facemarkCandidates)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc(MEMORY[0x277CBEAF8]);
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v5 initWithLocaleIdentifier:languageWithRegion];

    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [MEMORY[0x277D82A30] copyFacemarkCandidatesForLocale:v8];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      v13 = *MEMORY[0x277D6FF50];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = MEMORY[0x277D6F3D8];
          string = [*(*(&v21 + 1) + 8 * i) string];
          v17 = [v15 candidateWithCandidate:string forInput:v13];
          [(NSArray *)v4 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v18 = self->_facemarkCandidates;
    self->_facemarkCandidates = v4;

    facemarkCandidates = self->_facemarkCandidates;
  }

  v19 = *MEMORY[0x277D85DE8];

  return facemarkCandidates;
}

- (id)markedTextForDefaultCandidate
{
  defaultCandidate = [(TIInputManagerHandwriting *)self defaultCandidate];
  v3 = defaultCandidate;
  if (defaultCandidate)
  {
    candidate = [defaultCandidate candidate];
  }

  else
  {
    candidate = @"　";
  }

  return candidate;
}

- (BOOL)isDummyCandidate:(id)candidate
{
  v3 = MEMORY[0x277CBEB68];
  candidateCopy = candidate;
  null = [v3 null];
  v6 = [candidateCopy isEqual:null];

  return v6;
}

- (id)defaultCandidate
{
  v21 = *MEMORY[0x277D85DE8];
  candidates = [(TIInputManagerHandwriting *)self candidates];
  if (![candidates count])
  {

    goto LABEL_14;
  }

  inputCount = [(TIInputManagerHandwriting *)self inputCount];

  if (!inputCount)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_19;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  candidates2 = [(TIInputManagerHandwriting *)self candidates];
  v6 = [candidates2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(candidates2);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (!-[TIInputManagerHandwriting isDummyCandidate:](self, "isDummyCandidate:", v10) && ![v10 isExtensionCandidate])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [candidates2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_12:
  }

  candidates3 = [(TIInputManagerHandwriting *)self candidates];
  v13 = [candidates3 objectAtIndex:0];

  v11 = 0;
  if (![(TIInputManagerHandwriting *)self isDummyCandidate:v13])
  {
    v11 = v13;
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)keyboardCandidateResultSetFromResults
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__787;
  v30 = __Block_byref_object_dispose__788;
  v31 = 0;
  proactiveTriggers = [(TIInputManagerHandwriting *)self proactiveTriggers];
  if ([proactiveTriggers count])
  {
  }

  else
  {
    mEMORY[0x277D6FEC0] = [MEMORY[0x277D6FEC0] sharedInstance];
    usePQT2Flow = [mEMORY[0x277D6FEC0] usePQT2Flow];

    if (!usePQT2Flow)
    {
      goto LABEL_10;
    }
  }

  keyboardState = [(TIInputManagerHandwriting *)self keyboardState];
  secureCandidateRenderTraits = [keyboardState secureCandidateRenderTraits];
  [secureCandidateRenderTraits setDisableHideMyEmail:1];

  keyboardState2 = [(TIInputManagerHandwriting *)self keyboardState];
  secureCandidateRenderTraits2 = [keyboardState2 secureCandidateRenderTraits];

  [secureCandidateRenderTraits2 singleCellWidth];
  if (v10 > 0.0 && ([secureCandidateRenderTraits2 singleCellHeight], v11 > 0.0) || (objc_msgSend(secureCandidateRenderTraits2, "cellWidthOptions"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    candidateHandlerForOpenRequest = [(TIInputManagerHandwriting *)self candidateHandlerForOpenRequest];
    asynchronous = [candidateHandlerForOpenRequest asynchronous];

    proactiveTriggers2 = [(TIInputManagerHandwriting *)self proactiveTriggers];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__TIInputManagerHandwriting_keyboardCandidateResultSetFromResults__block_invoke;
    v24[3] = &unk_279D9D788;
    v25 = asynchronous;
    v24[4] = self;
    v24[5] = &v26;
    [(TIInputManagerHandwriting *)self generateAndRenderProactiveSuggestionsWithTriggers:proactiveTriggers2 withAdditionalPredictions:0 withInput:&stru_287EBF4E8 async:asynchronous completionHandler:v24];
  }

  else
  {
    if (!TICanLogMessageAtLevel())
    {
      goto LABEL_9;
    }

    proactiveTriggers2 = TIOSLogFacility();
    if (os_log_type_enabled(proactiveTriggers2, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Not generating proactive candidates - invalid secure candidate width or height trait", "-[TIInputManagerHandwriting keyboardCandidateResultSetFromResults]"];
      *buf = 138412290;
      v33 = v23;
      _os_log_debug_impl(&dword_26D460000, proactiveTriggers2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

LABEL_9:
LABEL_10:
  if ([v27[5] count])
  {
    v16 = MEMORY[0x277D6F3D0];
    v17 = v27[5];
    proactiveTriggers3 = [(TIInputManagerHandwriting *)self proactiveTriggers];
    v19 = [v16 setWithCandidates:v17 proactiveTriggers:proactiveTriggers3];
  }

  else
  {
    proactiveTriggers3 = [(TIInputManagerHandwriting *)self candidates];
    proactiveTriggers4 = [(TIInputManagerHandwriting *)self proactiveTriggers];
    v19 = [(TIInputManagerHandwriting *)self candidateResultSetFromCandidates:proactiveTriggers3 proactiveTriggers:proactiveTriggers4];
  }

  _Block_object_dispose(&v26, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

void __66__TIInputManagerHandwriting_keyboardCandidateResultSetFromResults__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(a1 + 48) == 1 && [*(*(*(a1 + 40) + 8) + 40) count])
  {
    v5 = MEMORY[0x277D6F3D0];
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [*(a1 + 32) proactiveTriggers];
    v8 = [v5 setWithCandidates:v6 proactiveTriggers:v7];

    [*(a1 + 32) pushCandidateGenerationContextWithResults:v8];
  }

  if (TICanLogMessageAtLevel())
  {
    v9 = TIOSLogFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Generated proactive candidates: %@", "-[TIInputManagerHandwriting keyboardCandidateResultSetFromResults]_block_invoke", *(*(*(a1 + 40) + 8) + 40)];
      *buf = 138412290;
      v13 = v11;
      _os_log_debug_impl(&dword_26D460000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)candidateResultSet
{
  if (([(TIInputManagerHandwriting *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    keyboardCandidateResultSetFromResults = 0;
    goto LABEL_10;
  }

  userDrawing = [(TIInputManagerHandwriting *)self userDrawing];
  if (userDrawing)
  {
  }

  else if (![(TIInputManagerHandwriting *)self showingFacemarks])
  {
    if ([(TIInputManagerHandwriting *)self updateCompletionCandidatesIfAppropriate])
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ([(TIInputManagerHandwriting *)self updateCandidates])
  {
LABEL_7:
    keyboardCandidateResultSetFromResults = [(TIInputManagerHandwriting *)self keyboardCandidateResultSetFromResults];
    goto LABEL_10;
  }

LABEL_9:
  keyboardCandidateResultSetFromResults = [MEMORY[0x277D6F3D0] dummySet];
LABEL_10:

  return keyboardCandidateResultSetFromResults;
}

- (BOOL)shouldCommitInputString
{
  if (self->_showingCompletionCandidates)
  {
    return 1;
  }

  keyboardState = [(TIInputManagerHandwriting *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  return hardwareKeyboardMode;
}

- (void)updateDictionaryPaths
{
  if ([(TIInputManagerHandwriting *)self shouldUpdateDictionaryPaths])
  {
    recognizerProvider = [(TIInputManagerHandwriting *)self recognizerProvider];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__TIInputManagerHandwriting_updateDictionaryPaths__block_invoke;
    v4[3] = &unk_279D9D760;
    v4[4] = self;
    [recognizerProvider provideRecognizerToBlock:v4];
  }
}

void __50__TIInputManagerHandwriting_updateDictionaryPaths__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D6FEB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 inputMode];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  v9 = [v3 loadMobileAssetContentsWhenMobileAssetChangesForCHRecognizer:v5 inputModes:v7 onQueue:v8 oldMobileAssetChangeListener:*(*(a1 + 32) + 600)];

  v10 = *(a1 + 32);
  v11 = *(v10 + 600);
  *(v10 + 600) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateUserWordEntries
{
  v3 = self->_userDictionaryObserver;
  recognizerProvider = [(TIInputManagerHandwriting *)self recognizerProvider];
  mEMORY[0x277D6FEF0] = [MEMORY[0x277D6FEF0] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TIInputManagerHandwriting_updateUserWordEntries__block_invoke;
  v10[3] = &unk_279D9D738;
  v6 = recognizerProvider;
  v11 = v6;
  v7 = [mEMORY[0x277D6FEF0] addObserver:v10];
  userDictionaryObserver = self->_userDictionaryObserver;
  self->_userDictionaryObserver = v7;

  if (v3)
  {
    mEMORY[0x277D6FEF0]2 = [MEMORY[0x277D6FEF0] sharedInstance];
    [mEMORY[0x277D6FEF0]2 removeObserver:v3];
  }
}

void __50__TIInputManagerHandwriting_updateUserWordEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TIInputManagerHandwriting_updateUserWordEntries__block_invoke_2;
  v6[3] = &unk_279D9D6E8;
  v7 = v3;
  v5 = v3;
  [v4 provideRecognizerToBlock:v6];
}

void __50__TIInputManagerHandwriting_updateUserWordEntries__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 updateUserDictionaryLexicon:*(a1 + 32)];
  }
}

- (void)updateAddressBook
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x26D6BFFC0](self->_contactObserver, a2);
  recognizerProvider = [(TIInputManagerHandwriting *)self recognizerProvider];
  v5 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TIInputManagerHandwriting:updateAddressBook - adding observer", "-[TIInputManagerHandwriting updateAddressBook]"];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_26D460000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  mEMORY[0x277D6FED8] = [MEMORY[0x277D6FED8] sharedInstance];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __46__TIInputManagerHandwriting_updateAddressBook__block_invoke;
  v18 = &unk_279D9D710;
  v8 = recognizerProvider;
  v19 = v8;
  v9 = [mEMORY[0x277D6FED8] addContactObserver:&v15];
  contactObserver = self->_contactObserver;
  self->_contactObserver = v9;

  if (v3)
  {
    v11 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TIInputManagerHandwriting:updateAddressBook - removing observer", "-[TIInputManagerHandwriting updateAddressBook]", v15, v16, v17, v18];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_26D460000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    mEMORY[0x277D6FED8]2 = [MEMORY[0x277D6FED8] sharedInstance];
    [mEMORY[0x277D6FED8]2 removeContactObserver:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __46__TIInputManagerHandwriting_updateAddressBook__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TIInputManagerHandwriting:updateAddressBook - processing %ld contacts", "-[TIInputManagerHandwriting updateAddressBook]_block_invoke", objc_msgSend(v3, "count")];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_26D460000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v6 = TICreateNameReadingPairsFromContactCollection();
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__TIInputManagerHandwriting_updateAddressBook__block_invoke_207;
  v10[3] = &unk_279D9D6E8;
  v11 = v6;
  v8 = v6;
  [v7 provideRecognizerToBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__TIInputManagerHandwriting_updateAddressBook__block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 updateAddressBookLexicon:*(a1 + 32)];
  }
}

- (void)suspend
{
  committedCandidates = [(TIInputManagerHandwriting *)self committedCandidates];
  [committedCandidates removeAllObjects];

  v4.receiver = self;
  v4.super_class = TIInputManagerHandwriting;
  [(TIKeyboardInputManagerBase *)&v4 suspend];
}

- (void)keyboardActivityDidTransition:(id)transition
{
  v10 = *MEMORY[0x277D85DE8];
  if ([transition toState] == 3)
  {
    if (TICanLogMessageAtLevel())
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s releasing CHRecognizer due to kbd inactivity", "-[TIInputManagerHandwriting keyboardActivityDidTransition:]"];
        *buf = 138412290;
        v9 = v7;
        _os_log_debug_impl(&dword_26D460000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    recognizerProvider = [(TIInputManagerHandwriting *)self recognizerProvider];
    [recognizerProvider unloadRecognizer];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (RecognizerProvider)recognizerProvider
{
  recognizerProvider = self->_recognizerProvider;
  if (!recognizerProvider)
  {
    v4 = [RecognizerProvider alloc];
    recognitionLanguage = [(TIInputManagerHandwriting *)self recognitionLanguage];
    v6 = [(RecognizerProvider *)v4 initWithRecognitionLanguage:recognitionLanguage mode:[(TIInputManagerHandwriting *)self recognitionMode]];
    v7 = self->_recognizerProvider;
    self->_recognizerProvider = v6;

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_recognizerProvider);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__TIInputManagerHandwriting_recognizerProvider__block_invoke;
    v9[3] = &unk_279D9D6C0;
    objc_copyWeak(&v10, &location);
    objc_copyWeak(&v11, &from);
    [(RecognizerProvider *)self->_recognizerProvider setRecognizerDidLoadBlock:v9];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    recognizerProvider = self->_recognizerProvider;
  }

  return recognizerProvider;
}

void __47__TIInputManagerHandwriting_recognizerProvider__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained updateAddressBook];

    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 updateUserWordEntries];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 updateDictionaryPaths];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [MEMORY[0x277CCABD8] mainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__TIInputManagerHandwriting_recognizerProvider__block_invoke_2;
    v8[3] = &unk_279D9D698;
    v9 = v4;
    v6 = v4;
    objc_copyWeak(&v10, (a1 + 32));
    [v5 addOperationWithBlock:v8];

    objc_destroyWeak(&v10);
  }
}

void __47__TIInputManagerHandwriting_recognizerProvider__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) recognizerDidLoadBlock];

  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained updateAddressBook];

    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 updateUserWordEntries];

    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 updateDictionaryPaths];
  }
}

- (CHRecognizer)recognizer
{
  recognizerProvider = [(TIInputManagerHandwriting *)self recognizerProvider];
  recognizer = [recognizerProvider recognizer];

  return recognizer;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_contactObserver)
  {
    v3 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TIInputManagerHandwriting:delloc - removing observer", "-[TIInputManagerHandwriting dealloc]"];
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_26D460000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    mEMORY[0x277D6FED8] = [MEMORY[0x277D6FED8] sharedInstance];
    [mEMORY[0x277D6FED8] removeContactObserver:self->_contactObserver];
  }

  if (self->_userDictionaryObserver)
  {
    mEMORY[0x277D6FEF0] = [MEMORY[0x277D6FEF0] sharedInstance];
    [mEMORY[0x277D6FEF0] removeObserver:self->_userDictionaryObserver];
  }

  if (self->_dictionaryUpdateObserver)
  {
    [MEMORY[0x277D6FEB0] removeMobileAssetListener:?];
    dictionaryUpdateObserver = self->_dictionaryUpdateObserver;
    self->_dictionaryUpdateObserver = 0;
  }

  [(RecognizerProvider *)self->_recognizerProvider setRecognizerDidLoadBlock:0];
  mEMORY[0x277D6FE50] = [MEMORY[0x277D6FE50] sharedController];
  [mEMORY[0x277D6FE50] removeActivityObserver:self];

  v10.receiver = self;
  v10.super_class = TIInputManagerHandwriting;
  [(TIInputManagerHandwriting *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x277D6FF30]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x277D6FF30]);
}

- (TIInputManagerHandwriting)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  v18.receiver = self;
  v18.super_class = TIInputManagerHandwriting;
  v7 = [(TIInputManagerHandwriting *)&v18 initWithConfig:configCopy keyboardState:state];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    candidateRefsDictionary = v7->_candidateRefsDictionary;
    v7->_candidateRefsDictionary = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    committedCandidates = v7->_committedCandidates;
    v7->_committedCandidates = v10;

    mEMORY[0x277D6FF08] = [MEMORY[0x277D6FF08] sharedWordSearchController];
    inputMode = [configCopy inputMode];
    v14 = [mEMORY[0x277D6FF08] wordSearchForInputMode:inputMode];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_wordSearch, v14);
    }

    recognizer = [(TIInputManagerHandwriting *)v7 recognizer];
    mEMORY[0x277D6FE50] = [MEMORY[0x277D6FE50] sharedController];
    [mEMORY[0x277D6FE50] addActivityObserver:v7];
  }

  return v7;
}

- (void)clearObservers
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_contactObserver)
  {
    v3 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TIInputManagerHandwriting:clearObservers - removing observer", "-[TIInputManagerHandwriting(TestingSupport) clearObservers]"];
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_26D460000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    mEMORY[0x277D6FED8] = [MEMORY[0x277D6FED8] sharedInstance];
    [mEMORY[0x277D6FED8] removeContactObserver:self->_contactObserver];

    contactObserver = self->_contactObserver;
    self->_contactObserver = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end