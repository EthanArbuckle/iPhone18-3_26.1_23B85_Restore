@interface TIInputManagerHandwriting
- (BOOL)isDummyCandidate:(id)a3;
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
- (TIInputManagerHandwriting)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)addInputObject:(id)a3;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)didAcceptCandidate:(id)a3;
- (id)keyboardCandidateResultSetFromResults;
- (id)keyboardConfigurationLayoutTag;
- (id)markedTextForDefaultCandidate;
- (id)processCandidates:(id)a3 stickers:(id)a4;
- (int)mecabraLanguage;
- (unint64_t)predictionOptions:(BOOL)a3;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)cancelRecognition;
- (void)clearCandidateRefsDictionary;
- (void)clearInput;
- (void)clearObservers;
- (void)dealloc;
- (void)deleteFromInputWithContext:(id)a3;
- (void)initImplementation;
- (void)keyboardActivityDidTransition:(id)a3;
- (void)mainThreadUpdateCandidates:(id)a3;
- (void)suspend;
- (void)syncMarkedTextForKeyboardState:(id)a3 afterContextChange:(BOOL)a4;
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
    v5 = [(TIKeyboardInputManagerBase *)self inputMode];
    v6 = [(CIMCandidateData *)v4 initWithInputMode:v5];
    v7 = self->_candidateData;
    self->_candidateData = v6;

    candidateData = self->_candidateData;
  }

  return candidateData;
}

- (id)processCandidates:(id)a3 stickers:(id)a4
{
  v145 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v103 = a4;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v7 = v5;
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
  v114 = [MEMORY[0x277CBEB18] array];
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
        v24 = [v23 candidate];
        v25 = [v24 length];

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
            v30 = [(TIInputManagerHandwriting *)self wordSearch];
            v31 = [(TIInputManagerHandwriting *)self committedCandidates];
            v32 = [v30 generateConversionsForCandidate:v28 candidateContext:v31 stringContext:v104];

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
                v38 = [v37 candidate];
                v39 = [v107 containsObject:v38];

                if ((v39 & 1) == 0)
                {
                  v40 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
                  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
                  [v40 setObject:v36 forKeyedSubscript:v41];

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
                  v42 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, objc_msgSend(v103, "count")}];
                  [v117 insertObjects:v103 atIndexes:v42];
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
              v44 = [v103 mutableCopy];
            }

            v45 = v44;
            v46 = [v23 candidate];
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
                    v55 = [v115 input];
                    v56 = [v54 initWithCandidate:v53 forInput:v55];

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
                    [v114 addObject:v64];
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
            v66 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
            v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v28, "uniqueID")}];
            v68 = [v66 objectForKey:v67];

            if (v68)
            {
              v69 = [(TIInputManagerHandwriting *)self wordSearch];
              v141 = v68;
              [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
              v70 = v23;
              v72 = v71 = v21;
              v73 = [v69 generatePredictionsWithCandidateContext:v72 stringContext:v104 option:v102];

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
                    v82 = [v108 candidate];
                    v110 = [v82 stringByAppendingString:v80];

                    v83 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
                    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
                    [v83 setObject:v79 forKeyedSubscript:v84];

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
  [v117 addObjectsFromArray:v114];

  v86 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
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
      v93 = [v92 candidate];
      if ([v93 _graphemeCount] == 1)
      {
        if ([v93 rangeOfCharacterFromSet:v86] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v94 = [v93 _stringByConvertingFromHalfWidthToFullWidth];
          v95 = [v93 isEqualToString:v94];
          v96 = @"UI-Halfwidth";
          if ((v95 & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_105;
        }

        if ([v93 _containsFullwidthLettersAndNumbersOnly] && (objc_msgSend(v93, "_containsHiraganaOrKatakana") & 1) == 0)
        {
          v94 = [v93 _stringByConvertingFromFullWidthToHalfWidth];
          v97 = [v93 isEqualToString:v94];
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
  v2 = [(TIInputManagerHandwriting *)self wordSearch];
  v3 = [v2 mecabraLanguage];

  return v3;
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
  v3 = [(TIInputManagerHandwriting *)self keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 contextBeforeInput];

  if (*(&self->super.super.super.isa + *MEMORY[0x277D6FF28]))
  {
    v6 = [(TIInputManagerHandwriting *)self externalStringToInternal:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [TIKeyboardInputManagerChinese shouldEnableHalfWidthPunctuationForDocumentContext:v5 composedText:v6];

  return v7;
}

- (BOOL)suppressPlaceholderCandidate
{
  v2 = [(TIInputManagerHandwriting *)self inputString];
  v3 = [v2 isEqualToString:@"　"];

  return v3;
}

- (void)deleteFromInputWithContext:(id)a3
{
  v31 = a3;
  [(TIInputManagerHandwriting *)self setCandidates:0];
  [(TIInputManagerHandwriting *)self resetCompletionStates];
  v4 = [(TIInputManagerHandwriting *)self committedCandidates];
  [v4 removeAllObjects];

  if (![(TIInputManagerHandwriting *)self inputIndex])
  {
    [v31 deleteBackward:1];
    goto LABEL_25;
  }

  v5 = [(TIInputManagerHandwriting *)self userDrawing];

  if (v5)
  {
    v6 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB70]];
    TIStatisticScalarIncrement();
  }

  [(TIInputManagerHandwriting *)self setCandidates:0];
  [(TIInputManagerHandwriting *)self cancelRecognition];
  v7 = [(TIInputManagerHandwriting *)self userDrawing];
  v8 = [RecognizeDrawingOperation drawingWithStrokes:v7];

  v9 = [(TIInputManagerHandwriting *)self recognizer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = [(TIInputManagerHandwriting *)self recognizer];
  if (isKindOfClass)
  {
    v12 = [(TIInputManagerHandwriting *)self keyboardState];
    v13 = [(TIInputManagerHandwriting *)self historyForRecognition];
    v14 = [RecognizeDrawingOperation textRecognitionResultsForDrawing:v8 withRecognizer:v11 keyboardState:v12 history:v13 shouldCancel:0];

    [v14 lastTokenStrokeIndexes];
  }

  else
  {
    v15 = [(TIInputManagerHandwriting *)self historyForRecognition];
    v16 = [RecognizeDrawingOperation recognitionResultsForDrawing:v8 withRecognizer:v11 history:v15 shouldCancel:0];

    v14 = [(TIInputManagerHandwriting *)self recognizer];
    [v14 strokeIndexesForLastCharacter];
  }
  v17 = ;

  v18 = [(TIInputManagerHandwriting *)self userDrawing];
  v19 = [v18 numberOfStrokes];

  v20 = [v17 lastIndex];
  if ([v17 count])
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 == 0;
  }

  v22 = !v21;
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    while (1)
    {
      v23 = [(TIInputManagerHandwriting *)self userDrawing];
      v24 = [v23 numberOfStrokes];

      if (v20 >= v24)
      {
        break;
      }

      v25 = [(TIInputManagerHandwriting *)self userDrawing];
      [v25 removeStrokeAtIndex:v20];

      v20 = [v17 indexLessThanIndex:v20];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }
    }

    v22 = 1;
  }

LABEL_19:
  v26 = [(TIInputManagerHandwriting *)self inputString];
  v27 = [v26 hasSuffix:*MEMORY[0x277D6FF50]];

  if (!v27)
  {
    if (v22)
    {
      v28 = [MEMORY[0x277CCAA78] indexSetWithIndex:0x7FFFFFFFLL];
      [v31 deleteHandwritingStrokes:v28];
      [(TIInputManagerHandwriting *)self clearInput];

      goto LABEL_24;
    }

    [v31 deleteHandwritingStrokes:v17];
    v29 = [(TIInputManagerHandwriting *)self userDrawing];
    v30 = [v29 numberOfStrokes];

    if (v30)
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
  v3 = [(TIInputManagerHandwriting *)self shouldLookForCompletionCandidates];
  if (!v3)
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
  v5 = [MEMORY[0x277CCAB68] string];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v6 = [(TIInputManagerHandwriting *)self committedCandidates];
  v7 = [v6 countByEnumeratingWithState:&v59 objects:v64 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v59 + 1) + 8 * v10);
        [v5 appendString:MecabraCandidateGetSurface()];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v8);
  }

  v12 = -[TIInputManagerHandwriting contextBeforeWithDesiredLength:](self, "contextBeforeWithDesiredLength:", [v5 length] + 10);
  v13 = [(TIInputManagerHandwriting *)self committedCandidates];
  if ([v13 count] && objc_msgSend(v5, "length"))
  {
    v14 = [v12 hasSuffix:v5];

    if (v14)
    {
      goto LABEL_14;
    }

    v13 = [(TIInputManagerHandwriting *)self committedCandidates];
    [v13 removeAllObjects];
  }

LABEL_14:
  v15 = [(TIInputManagerHandwriting *)self committedCandidates];
  v16 = [v15 count];

  v43 = v4;
  if (!v16)
  {
    v17 = v4;
    goto LABEL_21;
  }

  if ([v5 length] && objc_msgSend(v12, "hasSuffix:", v5))
  {
    v17 = [v12 substringToIndex:{objc_msgSend(v12, "length") - objc_msgSend(v5, "length")}];
LABEL_21:
    v18 = v17;
    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:
  v19 = [MEMORY[0x277CCAB68] string];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v20 = [(TIInputManagerHandwriting *)self committedCandidates];
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v55 + 1) + 8 * v24);
        [v19 appendString:MecabraCandidateGetSurface()];
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v22);
  }

  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [MEMORY[0x277CBEB18] array];
  v28 = [[GeneratePredictionsOperation alloc] initWithInputManager:self predictionOptions:[(TIInputManagerHandwriting *)self predictionOptions:0] prefixContext:v18];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __68__TIInputManagerHandwriting_updateCompletionCandidatesIfAppropriate__block_invoke;
  v51[3] = &unk_279D9D7E0;
  v51[4] = self;
  v29 = v26;
  v52 = v29;
  v30 = v28;
  v53 = v30;
  v31 = v27;
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
  v39 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  [v39 addOperation:v38];

LABEL_30:
  v40 = *MEMORY[0x277D85DE8];
  return !v3;
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
    v4 = [(TIInputManagerHandwriting *)self userDrawing];
    if (v4)
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

- (unint64_t)predictionOptions:(BOOL)a3
{
  if (a3)
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

  v6 = [(TIInputManagerHandwriting *)self keyboardState];
  v7 = [v6 candidateSelectionPredictionEnabled];

  if (v7)
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
  v2 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
  [v2 removeAllObjects];
}

- (id)didAcceptCandidate:(id)a3
{
  v4 = a3;
  v5 = [v4 proactiveTrigger];

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
  if ([v4 isResponseKitCandidate])
  {
    v8 = MEMORY[0x277D46BB8];
    v9 = *MEMORY[0x277D46BE8];
    v10 = [(TIKeyboardInputManagerBase *)self inputMode];
    v11 = [v10 normalizedIdentifier];
    TIInputModeGetBaseLanguage();
    v69 = isKindOfClass;
    v12 = v7;
    v14 = v13 = v5;
    [v8 incrementAggdKeyForCategory:0 forAction:v9 withLanguageID:v14];

    v15 = MEMORY[0x277D46BB8];
    v16 = [v4 responseKitCategory];
    v17 = [(TIKeyboardInputManagerBase *)self inputMode];
    v18 = [v17 normalizedIdentifier];
    v19 = TIInputModeGetBaseLanguage();
    [v15 incrementAggdKeyForCategory:v16 forAction:v9 withLanguageID:v19];

    v5 = v13;
    v7 = v12;
    isKindOfClass = v69;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  if (![(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
  {
    goto LABEL_11;
  }

  v20 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
  v21 = [v4 proactiveTrigger];
  v22 = [v21 attributes];
  v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D6FD88]];
  v24 = [v20 objectForKeyedSubscript:v23];

  if (v24)
  {
    v25 = [v4 candidate];
    MecabraCandidateSetDisplayString();

    v26 = [(TIInputManagerHandwriting *)self wordSearch];
    [v26 acceptCandidate:v24];

    v27 = [(TIInputManagerHandwriting *)self committedCandidates];
    [v27 addObject:v24];

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
    v29 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
    v30 = [v4 mecabraCandidatePointerValue];
    v31 = [v29 objectForKeyedSubscript:v30];

    if (v31)
    {
      v32 = [(TIInputManagerHandwriting *)self wordSearch];
      [v32 acceptCandidate:v31];

      v33 = [(TIInputManagerHandwriting *)self committedCandidates];
      [v33 addObject:v31];

      v28 = 1;
    }
  }

LABEL_15:
  if ((v7 & 1) != 0 && [(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
  {
    v34 = v4;
    if ([v34 uniqueID])
    {
      v35 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v34, "uniqueID")}];
      v37 = [v35 objectForKeyedSubscript:v36];

      if (v37)
      {
        v38 = [(TIInputManagerHandwriting *)self wordSearch];
        [v38 acceptCandidate:v37];

        v39 = [(TIInputManagerHandwriting *)self committedCandidates];
        [v39 addObject:v37];

        v28 = 1;
      }
    }

    if ([v34 completionUniqueID])
    {
      if ([(TIInputManagerHandwriting *)self shouldLearnAcceptedCandidate])
      {
        v40 = [(TIInputManagerHandwriting *)self candidateRefsDictionary];
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v34, "completionUniqueID")}];
        v42 = [v40 objectForKeyedSubscript:v41];

        if (v42)
        {
          v43 = [(TIInputManagerHandwriting *)self wordSearch];
          [v43 acceptCandidate:v42];

          v44 = [(TIInputManagerHandwriting *)self committedCandidates];
          [v44 addObject:v42];

          goto LABEL_27;
        }
      }
    }
  }

  if (v28)
  {
    goto LABEL_28;
  }

  v34 = [(TIInputManagerHandwriting *)self committedCandidates];
  [v34 removeAllObjects];
LABEL_27:

LABEL_28:
  v45 = [(TIInputManagerHandwriting *)self committedCandidates];
  v46 = [v45 count];

  if (v46 >= 0xB)
  {
    v47 = [(TIInputManagerHandwriting *)self committedCandidates];
    v48 = [(TIInputManagerHandwriting *)self committedCandidates];
    [v47 removeObjectsInRange:{0, objc_msgSend(v48, "count") - 10}];
  }

  v49 = [v4 candidate];
  v50 = [(TIInputManagerHandwriting *)self userDrawing];

  if (v50)
  {
    v51 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB78]];
    v52 = [(TIInputManagerHandwriting *)self userDrawing];
    [v52 totalNumberOfPoints];
    TIStatisticDistributionPushValue();

    v53 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB80]];
    v54 = [(TIInputManagerHandwriting *)self userDrawing];
    [v54 numberOfStrokes];
    TIStatisticDistributionPushValue();
  }

  if ([(TIInputManagerHandwriting *)self isInCompletionMode])
  {
    v55 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:*MEMORY[0x277D6FB68]];
    TIStatisticScalarIncrement();
  }

  v56 = MEMORY[0x277CCACA8];
  v57 = *MEMORY[0x277D6FB60];
  v58 = [(TIInputManagerHandwriting *)self candidates];
  v59 = [v56 stringWithFormat:@"%@.%lu", v57, objc_msgSend(v58, "indexOfObject:", v4)];

  v60 = [(TIInputManagerHandwriting *)self usageTrackingKeyForStatistic:v59];
  TIStatisticScalarIncrement();

  if ([v4 isAddress])
  {
    v61 = [(TIInputManagerHandwriting *)self keyboardState];
    v62 = [v61 documentState];
    v63 = [v62 contextBeforeInput];
    if ([v63 length])
    {
      v64 = [v49 _firstGrapheme];
      v65 = [v64 _containsCJScripts];

      if (v65)
      {
        goto LABEL_40;
      }

      [@" " stringByAppendingString:v49];
      v49 = v61 = v49;
    }

    else
    {
    }
  }

LABEL_40:
  if (v5)
  {
    v66 = v49;
  }

  else
  {
    v66 = 0;
  }

  v67 = v66;

  return v66;
}

- (void)mainThreadUpdateCandidates:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isCancelled] & 1) == 0)
  {
    v5 = [(TIInputManagerHandwriting *)self userDrawing];

    if (v5)
    {
      v6 = MEMORY[0x277CBEB18];
      v7 = [v4 candidates];
      v30 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = v4;
      v8 = [v4 candidates];
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v31 + 1) + 8 * v12) mecabraHandwritingCandidate];
            if (v13)
            {
              v14 = [objc_alloc(MEMORY[0x277D6F368]) initWithCandidate:MecabraCandidateGetSurface() forInput:0 uniqueID:v13 completionUniqueID:0];
              [(TIInputManagerHandwriting *)self candidateRefsDictionary];
              v16 = v15 = self;
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
              [v16 setObject:v13 forKey:v17];

              self = v15;
              [v30 addObject:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v10);
      }

      v4 = v29;
      v18 = [v29 stickers];
      v19 = [(TIInputManagerHandwriting *)self processCandidates:v30 stickers:v18];
      [(TIInputManagerHandwriting *)self setCandidates:v19];

      [(TIInputManagerHandwriting *)self resetCompletionStates];
      v20 = [(TIInputManagerHandwriting *)self candidates];

      if (v20)
      {
        v21 = [(TIInputManagerHandwriting *)self candidates];
        v22 = [(TIInputManagerHandwriting *)self proactiveTriggers];
        v23 = [(TIInputManagerHandwriting *)self candidateResultSetFromCandidates:v21 proactiveTriggers:v22];
      }

      else
      {
        v24 = MEMORY[0x277CBEA60];
        v25 = [MEMORY[0x277CBEB68] null];
        v26 = [v24 arrayWithObject:v25];
        [(TIInputManagerHandwriting *)self setCandidates:v26];

        v23 = [MEMORY[0x277D6F3D0] dummySet];
      }

      v27 = [(TIInputManagerHandwriting *)self markedTextForDefaultCandidate];
      [(TIInputManagerHandwriting *)self setInput:v27];

      [(TIInputManagerHandwriting *)self setMarkedText];
      [(TIInputManagerHandwriting *)self closeCandidateGenerationContextWithResults:v23];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateCandidates
{
  [(TIInputManagerHandwriting *)self cancelRecognition];
  v3 = [(TIInputManagerHandwriting *)self showingFacemarks];
  if (!v3)
  {
    v4 = [(TIInputManagerHandwriting *)self userDrawing];

    if (v4)
    {
      v5 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
      v6 = [RecognizeDrawingOperation alloc];
      v7 = [(TIInputManagerHandwriting *)self userDrawing];
      v8 = [(TIInputManagerHandwriting *)self historyForRecognition];
      v9 = [(RecognizeDrawingOperation *)v6 initWithInputManager:self strokes:v7 history:v8];
      [v5 addOperation:v9];
    }
  }

  return v3;
}

- (id)addInputObject:(id)a3
{
  v4 = a3;
  [(TIInputManagerHandwriting *)self cancelRecognition];
  [(TIInputManagerHandwriting *)self setUserDrawing:v4];

  [(TIInputManagerHandwriting *)self resetCompletionStates];
  v5 = [(TIInputManagerHandwriting *)self userDrawing];
  v6 = [v5 numberOfStrokes];

  if (!v6)
  {
    [(TIInputManagerHandwriting *)self clearInput];
  }

  return &stru_287EBF4E8;
}

- (void)cancelRecognition
{
  v3 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
  v4 = [v3 operations];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TIInputManagerHandwriting_cancelRecognition__block_invoke;
  v5[3] = &unk_279D9D7B8;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
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

- (void)addInput:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 object];

  if (v8)
  {
    v9 = [v6 object];
    v10 = [(TIInputManagerHandwriting *)self addInputObject:v9];
    [v6 setString:v10];
  }

  v11 = [v6 string];
  [(TIInputManagerHandwriting *)self setShowingFacemarks:0];
  v12 = [v11 isEqualToString:@"☻"];
  v13 = [(TIInputManagerHandwriting *)self candidates];
  v14 = v13;
  if (!v12)
  {
    if (v13 && !self->_showingCompletionCandidates)
    {
      v20 = [v11 length];

      if (v20)
      {
        [(TIInputManagerHandwriting *)self acceptCurrentCandidateWithContext:v7];
        [(TIInputManagerHandwriting *)self setCandidates:0];
        goto LABEL_17;
      }
    }

    else
    {
    }

    v17 = [(TIInputManagerHandwriting *)self candidates];
    if (v17)
    {
      showingCompletionCandidates = self->_showingCompletionCandidates;

      if (!showingCompletionCandidates)
      {
LABEL_13:
        v19 = [(TIInputManagerHandwriting *)self markedTextForDefaultCandidate];

        [(TIInputManagerHandwriting *)self setInput:v19];
        [(TIInputManagerHandwriting *)self setMarkedText];
        v11 = v19;
        goto LABEL_18;
      }
    }

    else if (![(TIInputManagerHandwriting *)self inputCount])
    {
      v21 = [(TIInputManagerHandwriting *)self userDrawing];
      if ([v21 numberOfStrokes])
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
    [v7 insertText:v11];
    goto LABEL_18;
  }

  if (v13)
  {
    v15 = self->_showingCompletionCandidates;

    if (!v15)
    {
      [(TIInputManagerHandwriting *)self acceptCurrentCandidateWithContext:v7];
      [(TIInputManagerHandwriting *)self setCandidates:0];
    }
  }

  v16 = [(TIInputManagerHandwriting *)self facemarkCandidates];
  [(TIInputManagerHandwriting *)self setCandidates:v16];

  self->_showingCompletionCandidates = 0;
  [(TIInputManagerHandwriting *)self setShowingFacemarks:1];
  [v6 setString:*MEMORY[0x277D6FF50]];
  v23.receiver = self;
  v23.super_class = TIInputManagerHandwriting;
  [(TIInputManagerHandwriting *)&v23 addInput:v6 withContext:v7];
LABEL_18:
}

- (void)syncMarkedTextForKeyboardState:(id)a3 afterContextChange:(BOOL)a4
{
  if (a4)
  {
    v5 = [a3 inputForMarkedText];
    v6 = [v5 length];

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
    v6 = [(TIKeyboardInputManagerBase *)self inputMode];
    v7 = [v6 languageWithRegion];
    v8 = [v5 initWithLocaleIdentifier:v7];

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
          v16 = [*(*(&v21 + 1) + 8 * i) string];
          v17 = [v15 candidateWithCandidate:v16 forInput:v13];
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
  v2 = [(TIInputManagerHandwriting *)self defaultCandidate];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 candidate];
  }

  else
  {
    v4 = @"　";
  }

  return v4;
}

- (BOOL)isDummyCandidate:(id)a3
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a3;
  v5 = [v3 null];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)defaultCandidate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(TIInputManagerHandwriting *)self candidates];
  if (![v3 count])
  {

    goto LABEL_14;
  }

  v4 = [(TIInputManagerHandwriting *)self inputCount];

  if (!v4)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_19;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(TIInputManagerHandwriting *)self candidates];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      if (!-[TIInputManagerHandwriting isDummyCandidate:](self, "isDummyCandidate:", v10) && ![v10 isExtensionCandidate])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  v12 = [(TIInputManagerHandwriting *)self candidates];
  v13 = [v12 objectAtIndex:0];

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
  v3 = [(TIInputManagerHandwriting *)self proactiveTriggers];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [MEMORY[0x277D6FEC0] sharedInstance];
    v5 = [v4 usePQT2Flow];

    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = [(TIInputManagerHandwriting *)self keyboardState];
  v7 = [v6 secureCandidateRenderTraits];
  [v7 setDisableHideMyEmail:1];

  v8 = [(TIInputManagerHandwriting *)self keyboardState];
  v9 = [v8 secureCandidateRenderTraits];

  [v9 singleCellWidth];
  if (v10 > 0.0 && ([v9 singleCellHeight], v11 > 0.0) || (objc_msgSend(v9, "cellWidthOptions"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [(TIInputManagerHandwriting *)self candidateHandlerForOpenRequest];
    v14 = [v13 asynchronous];

    v15 = [(TIInputManagerHandwriting *)self proactiveTriggers];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__TIInputManagerHandwriting_keyboardCandidateResultSetFromResults__block_invoke;
    v24[3] = &unk_279D9D788;
    v25 = v14;
    v24[4] = self;
    v24[5] = &v26;
    [(TIInputManagerHandwriting *)self generateAndRenderProactiveSuggestionsWithTriggers:v15 withAdditionalPredictions:0 withInput:&stru_287EBF4E8 async:v14 completionHandler:v24];
  }

  else
  {
    if (!TICanLogMessageAtLevel())
    {
      goto LABEL_9;
    }

    v15 = TIOSLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Not generating proactive candidates - invalid secure candidate width or height trait", "-[TIInputManagerHandwriting keyboardCandidateResultSetFromResults]"];
      *buf = 138412290;
      v33 = v23;
      _os_log_debug_impl(&dword_26D460000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

LABEL_9:
LABEL_10:
  if ([v27[5] count])
  {
    v16 = MEMORY[0x277D6F3D0];
    v17 = v27[5];
    v18 = [(TIInputManagerHandwriting *)self proactiveTriggers];
    v19 = [v16 setWithCandidates:v17 proactiveTriggers:v18];
  }

  else
  {
    v18 = [(TIInputManagerHandwriting *)self candidates];
    v20 = [(TIInputManagerHandwriting *)self proactiveTriggers];
    v19 = [(TIInputManagerHandwriting *)self candidateResultSetFromCandidates:v18 proactiveTriggers:v20];
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
    v3 = 0;
    goto LABEL_10;
  }

  v4 = [(TIInputManagerHandwriting *)self userDrawing];
  if (v4)
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
    v3 = [(TIInputManagerHandwriting *)self keyboardCandidateResultSetFromResults];
    goto LABEL_10;
  }

LABEL_9:
  v3 = [MEMORY[0x277D6F3D0] dummySet];
LABEL_10:

  return v3;
}

- (BOOL)shouldCommitInputString
{
  if (self->_showingCompletionCandidates)
  {
    return 1;
  }

  v3 = [(TIInputManagerHandwriting *)self keyboardState];
  v4 = [v3 hardwareKeyboardMode];

  return v4;
}

- (void)updateDictionaryPaths
{
  if ([(TIInputManagerHandwriting *)self shouldUpdateDictionaryPaths])
  {
    v3 = [(TIInputManagerHandwriting *)self recognizerProvider];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__TIInputManagerHandwriting_updateDictionaryPaths__block_invoke;
    v4[3] = &unk_279D9D760;
    v4[4] = self;
    [v3 provideRecognizerToBlock:v4];
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
  v4 = [(TIInputManagerHandwriting *)self recognizerProvider];
  v5 = [MEMORY[0x277D6FEF0] sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TIInputManagerHandwriting_updateUserWordEntries__block_invoke;
  v10[3] = &unk_279D9D738;
  v6 = v4;
  v11 = v6;
  v7 = [v5 addObserver:v10];
  userDictionaryObserver = self->_userDictionaryObserver;
  self->_userDictionaryObserver = v7;

  if (v3)
  {
    v9 = [MEMORY[0x277D6FEF0] sharedInstance];
    [v9 removeObserver:v3];
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
  v4 = [(TIInputManagerHandwriting *)self recognizerProvider];
  v5 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TIInputManagerHandwriting:updateAddressBook - adding observer", "-[TIInputManagerHandwriting updateAddressBook]"];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_26D460000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D6FED8] sharedInstance];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __46__TIInputManagerHandwriting_updateAddressBook__block_invoke;
  v18 = &unk_279D9D710;
  v8 = v4;
  v19 = v8;
  v9 = [v7 addContactObserver:&v15];
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

    v13 = [MEMORY[0x277D6FED8] sharedInstance];
    [v13 removeContactObserver:v3];
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
  v3 = [(TIInputManagerHandwriting *)self committedCandidates];
  [v3 removeAllObjects];

  v4.receiver = self;
  v4.super_class = TIInputManagerHandwriting;
  [(TIKeyboardInputManagerBase *)&v4 suspend];
}

- (void)keyboardActivityDidTransition:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ([a3 toState] == 3)
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

    v5 = [(TIInputManagerHandwriting *)self recognizerProvider];
    [v5 unloadRecognizer];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (RecognizerProvider)recognizerProvider
{
  recognizerProvider = self->_recognizerProvider;
  if (!recognizerProvider)
  {
    v4 = [RecognizerProvider alloc];
    v5 = [(TIInputManagerHandwriting *)self recognitionLanguage];
    v6 = [(RecognizerProvider *)v4 initWithRecognitionLanguage:v5 mode:[(TIInputManagerHandwriting *)self recognitionMode]];
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
  v2 = [(TIInputManagerHandwriting *)self recognizerProvider];
  v3 = [v2 recognizer];

  return v3;
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

    v5 = [MEMORY[0x277D6FED8] sharedInstance];
    [v5 removeContactObserver:self->_contactObserver];
  }

  if (self->_userDictionaryObserver)
  {
    v6 = [MEMORY[0x277D6FEF0] sharedInstance];
    [v6 removeObserver:self->_userDictionaryObserver];
  }

  if (self->_dictionaryUpdateObserver)
  {
    [MEMORY[0x277D6FEB0] removeMobileAssetListener:?];
    dictionaryUpdateObserver = self->_dictionaryUpdateObserver;
    self->_dictionaryUpdateObserver = 0;
  }

  [(RecognizerProvider *)self->_recognizerProvider setRecognizerDidLoadBlock:0];
  v8 = [MEMORY[0x277D6FE50] sharedController];
  [v8 removeActivityObserver:self];

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

- (TIInputManagerHandwriting)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = TIInputManagerHandwriting;
  v7 = [(TIInputManagerHandwriting *)&v18 initWithConfig:v6 keyboardState:a4];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    candidateRefsDictionary = v7->_candidateRefsDictionary;
    v7->_candidateRefsDictionary = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    committedCandidates = v7->_committedCandidates;
    v7->_committedCandidates = v10;

    v12 = [MEMORY[0x277D6FF08] sharedWordSearchController];
    v13 = [v6 inputMode];
    v14 = [v12 wordSearchForInputMode:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_wordSearch, v14);
    }

    v15 = [(TIInputManagerHandwriting *)v7 recognizer];
    v16 = [MEMORY[0x277D6FE50] sharedController];
    [v16 addActivityObserver:v7];
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

    v5 = [MEMORY[0x277D6FED8] sharedInstance];
    [v5 removeContactObserver:self->_contactObserver];

    contactObserver = self->_contactObserver;
    self->_contactObserver = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end