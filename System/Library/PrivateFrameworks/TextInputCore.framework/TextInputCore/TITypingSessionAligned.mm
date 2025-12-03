@interface TITypingSessionAligned
+ (id)alignedEntryForWord:(id)word;
+ (id)alignedPathTouchesForWord:(id)word;
+ (id)completeStringFromWordEntry:(id)entry leadingInputs:(id)inputs trailingInputs:(id)trailingInputs followsContinuousPath:(BOOL)path;
+ (id)resolveBackspacesInKeyboardInputs:(id)inputs;
- (BOOL)compareForConfidenceContextA:(id)a contextB:(id)b;
- (BOOL)isNewLineScenarioWithCurrentWord:(id)word andPreviousWord:(id)previousWord;
- (TITypingSessionAligned)initWithCoder:(id)coder;
- (TITypingSessionAligned)initWithSession:(id)session;
- (id)restrictedAlignedSessionWithWordLimit:(unint64_t)limit;
- (id)textToAppendForEntry:(id)entry sessionIndx:(unint64_t)indx;
- (void)computeAlignedWordsFromSession:(id)session;
- (void)encodeWithCoder:(id)coder;
- (void)getAlignedTextAndConfidence;
@end

@implementation TITypingSessionAligned

- (BOOL)isNewLineScenarioWithCurrentWord:(id)word andPreviousWord:(id)previousWord
{
  previousWordCopy = previousWord;
  wordCopy = word;
  acceptedCandidate = [wordCopy acceptedCandidate];
  isContinuousPathConversion = [acceptedCandidate isContinuousPathConversion];

  startsWithNewLine = [wordCopy startsWithNewLine];
  endsWithNewLine = isContinuousPathConversion ^ 1 | startsWithNewLine;
  if ((isContinuousPathConversion & 1) == 0 && (startsWithNewLine & 1) == 0)
  {
    endsWithNewLine = [previousWordCopy endsWithNewLine];
  }

  return endsWithNewLine & 1;
}

- (void)computeAlignedWordsFromSession:(id)session
{
  v305 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  userActionHistory = [sessionCopy userActionHistory];
  v5 = [userActionHistory count];

  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    context = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(TIDocumentWordsAligned);
    userActionHistory2 = [sessionCopy userActionHistory];
    v8 = [userActionHistory2 count];

    userActionHistory3 = [sessionCopy userActionHistory];
    firstObject = [userActionHistory3 firstObject];
    documentState = [firstObject documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v253 = [contextBeforeInput stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    string = [MEMORY[0x277CCAB68] string];
    v255 = sessionCopy;
    v271 = v6;
    v261 = v8;
    if (v8)
    {
      v14 = 0;
      v264 = 0;
      v15 = 0;
      isContinuousPathConversion2 = 0;
      v270 = 0;
      v262 = 0;
      v269 = 0;
      v16 = 0;
      while (1)
      {
        v17 = v14;
        userActionHistory4 = [sessionCopy userActionHistory];
        v14 = [userActionHistory4 objectAtIndexedSubscript:v16];

        if ([v14 actionType] == 10)
        {
          if (v16)
          {
            goto LABEL_177;
          }

          keyboardState = [v14 keyboardState];
          emojiSearchMode = [keyboardState emojiSearchMode];

          if ((emojiSearchMode & 1) == 0)
          {
            originalWordEntries = [v14 originalWordEntries];
            [sessionCopy setOriginalWords:originalWordEntries];

            v298 = 0u;
            v299 = 0u;
            v296 = 0u;
            v297 = 0u;
            originalWords = [sessionCopy originalWords];
            v40 = [originalWords countByEnumeratingWithState:&v296 objects:v304 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = v14;
              v43 = *v297;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v297 != v43)
                  {
                    objc_enumerationMutation(originalWords);
                  }

                  [(TIDocumentWordsAligned *)v6 pushWordToDocument:*(*(&v296 + 1) + 8 * i)];
                }

                v41 = [originalWords countByEnumeratingWithState:&v296 objects:v304 count:16];
              }

              while (v41);
              v14 = v42;
            }

            v16 = 0;
            goto LABEL_176;
          }

          v262 = 0;
          v16 = 0;
          goto LABEL_178;
        }

        v263 = v16;
        if ([v14 actionType])
        {
          if ([v14 actionType] == 1 && -[TIDocumentWordsAligned wordsCount](v6, "wordsCount"))
          {
            v21 = v14;
            v22 = v14;
            documentState2 = [v22 documentState];
            contextAfterInput = [documentState2 contextAfterInput];
            v25 = [contextAfterInput length];

            documentState3 = [v22 documentState];
            contextBeforeInput2 = [documentState3 contextBeforeInput];
            if (v25)
            {
              v28 = [(TIDocumentWordsAligned *)v6 wordsFromContext:contextBeforeInput2];

              v282 = 0u;
              v283 = 0u;
              v280 = 0u;
              v281 = 0u;
              lastObject = v28;
              v30 = [lastObject countByEnumeratingWithState:&v280 objects:v300 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v281;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v281 != v32)
                    {
                      objc_enumerationMutation(lastObject);
                    }

                    v34 = *(*(&v280 + 1) + 8 * j);
                    editedEntry = [v34 editedEntry];

                    if (editedEntry)
                    {
                      [v34 setWordAlignmentConf:1];
                    }
                  }

                  v31 = [lastObject countByEnumeratingWithState:&v280 objects:v300 count:16];
                }

                while (v31);
                v36 = lastObject;
                sessionCopy = v255;
              }

              else
              {
                v36 = lastObject;
              }

LABEL_172:
              v14 = v21;
LABEL_173:

LABEL_174:
              originalWords = v14;
              goto LABEL_175;
            }

            v36 = [(TIDocumentWordsAligned *)v6 deleteWordsUpToContext:contextBeforeInput2];

            inDocumentWordsStack = [(TIDocumentWordsAligned *)v6 inDocumentWordsStack];
            lastObject = [inDocumentWordsStack lastObject];

            if ([v36 count])
            {
              firstObject2 = [v36 firstObject];
              v59 = firstObject2;
              if (firstObject2)
              {
                if ([firstObject2 followsContinuousPath])
                {
                  if (lastObject)
                  {
                    v60 = 2;
                    goto LABEL_170;
                  }
                }

                else if (lastObject)
                {
                  documentState4 = [v22 documentState];
                  contextBeforeInput3 = [documentState4 contextBeforeInput];
                  if ([contextBeforeInput3 endsInWhitespace])
                  {
                    v60 = 2;
                  }

                  else
                  {
                    documentState5 = [v22 documentState];
                    contextBeforeInput4 = [documentState5 contextBeforeInput];
                    if ([contextBeforeInput4 endsInPunctuation])
                    {
                      v60 = 2;
                    }

                    else
                    {
                      v60 = 1;
                    }
                  }

                  v6 = v271;
LABEL_170:
                  [lastObject setUnfinishedWordEntryTreatment:v60];
                }
              }

              goto LABEL_172;
            }

            allKeyboardInputs = [v22 allKeyboardInputs];
            if ([allKeyboardInputs count] != 1)
            {

              isContinuousPathConversion2 = 1;
              goto LABEL_172;
            }

            allKeyboardInputs2 = [v22 allKeyboardInputs];
            firstObject3 = [allKeyboardInputs2 firstObject];
            isBackspace = [firstObject3 isBackspace];

            isContinuousPathConversion2 = 1;
            if (isBackspace)
            {
              v14 = v21;
              if (lastObject)
              {
                allKeyboardInputs3 = [lastObject allKeyboardInputs];
                if ([allKeyboardInputs3 count])
                {
                  allKeyboardInputs4 = [lastObject allKeyboardInputs];
                  lastObject2 = [allKeyboardInputs4 lastObject];
                  string2 = [lastObject2 string];
                  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                  v127 = [string2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
                  v275 = [v127 length];

                  isContinuousPathConversion2 = 1;
                  if (!v275)
                  {
                    [lastObject setUnfinishedWordEntryTreatment:1];
                  }

                  goto LABEL_222;
                }

                isContinuousPathConversion2 = 1;
              }

              v6 = v271;
              goto LABEL_173;
            }

LABEL_222:
            v6 = v271;
            goto LABEL_172;
          }

          if ([v14 actionType] == 2)
          {
            originalWords = v14;
            if ([originalWords isSelection])
            {
              if ([v264 actionType] == 2)
              {
                v36 = v269;
                v270 = 1;
                v269 = v264;
                goto LABEL_174;
              }

              v270 = 1;
LABEL_175:
              v16 = v263;
            }

LABEL_176:

LABEL_177:
            v262 = 0;
LABEL_178:
            v214 = v14;

            v264 = v214;
            goto LABEL_179;
          }

          goto LABEL_28;
        }

        v38 = v14;

        v15 = v38;
        if ([v38 cancelled])
        {
          [v38 setDeleted:1];
LABEL_28:
          v262 = 0;
          goto LABEL_179;
        }

        [v38 setFollowsContinuousPath:v262 & 1];
        acceptedCandidate = [v38 acceptedCandidate];
        isContinuousPathConversion = [acceptedCandidate isContinuousPathConversion];

        acceptedString = [v15 acceptedString];
        v262 = isContinuousPathConversion;
        if (([acceptedString isEqualToString:&stru_283FDFAF8] & 1) == 0)
        {
          break;
        }

        candidateContainsEmoji = [v15 candidateContainsEmoji];

        if (candidateContainsEmoji)
        {
          goto LABEL_55;
        }

LABEL_43:
        v51 = v14;
        allKeyboardInputs5 = [v15 allKeyboardInputs];
        acceptedString = [allKeyboardInputs5 lastObject];

        acceptedCandidate2 = [acceptedString acceptedCandidate];
        candidate = [acceptedCandidate2 candidate];
        lastWord = [(TIDocumentWordsAligned *)v6 lastWord];
        v56 = [candidate isEqualToString:lastWord];

        if (!v56)
        {
          v14 = v51;
          goto LABEL_54;
        }

        v15 = v15;

        v264 = v15;
        v14 = v51;
        v16 = v263;
LABEL_179:
        ++v16;
        v215 = v15;
        if (v16 == v261)
        {
          goto LABEL_233;
        }
      }

      acceptedString2 = [v15 acceptedString];
      if ([acceptedString2 isEqualToString:@" "])
      {
        candidateContainsEmoji2 = [v15 candidateContainsEmoji];

        if (candidateContainsEmoji2)
        {
          goto LABEL_55;
        }

        goto LABEL_43;
      }

LABEL_54:
LABEL_55:
      v257 = v14;
      allKeyboardInputs6 = [v15 allKeyboardInputs];
      if ([allKeyboardInputs6 count])
      {
        allKeyboardInputs7 = [v15 allKeyboardInputs];
        firstObject4 = [allKeyboardInputs7 firstObject];
        isBackspace2 = [firstObject4 isBackspace];

        if (isBackspace2)
        {
          isContinuousPathConversion2 = 1;
LABEL_60:
          acceptedString3 = [v15 acceptedString];
          whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v67 = [acceptedString3 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet2];

          acceptedCandidate3 = [v15 acceptedCandidate];
          input = [acceptedCandidate3 input];
          whitespaceAndNewlineCharacterSet3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v71 = [input componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet3];

          v260 = v67;
          v72 = [v67 count];
          v259 = v71;
          v73 = [v71 count];
          inDocumentWordsStack2 = [(TIDocumentWordsAligned *)v6 inDocumentWordsStack];
          v75 = [inDocumentWordsStack2 count];

          v14 = v257;
          v268 = v15;
          if (v72 >= 2 && v72 == v73)
          {
            documentContextBeforeInput = [v15 documentContextBeforeInput];
            v77 = [(TIDocumentWordsAligned *)v6 wordsForContext:documentContextBeforeInput];
            if ([v77 count])
            {
              v78 = documentContextBeforeInput;
              inDocumentWordsStack3 = [(TIDocumentWordsAligned *)v6 inDocumentWordsStack];
              v80 = [v77 objectAtIndexedSubscript:0];
              v81 = [inDocumentWordsStack3 indexOfObject:v80];

              if ((v81 & 0x8000000000000000) == 0)
              {
                v82 = v72 - 1;
                if (v81 + v72 - 1 <= v75)
                {
                  obj = v77;
                  v83 = 0;
                  if (v82 >= v72)
                  {
                    v82 = v72;
                  }

                  v272 = v82;
                  v84 = v78;
                  while (1)
                  {
                    inDocumentWordsStack4 = [(TIDocumentWordsAligned *)v271 inDocumentWordsStack];
                    v86 = [inDocumentWordsStack4 objectAtIndexedSubscript:v81];

                    v87 = [v260 objectAtIndexedSubscript:v83];
                    v88 = [v259 objectAtIndexedSubscript:v83];
                    acceptedCandidate4 = [v86 acceptedCandidate];
                    candidate2 = [acceptedCandidate4 candidate];
                    v274 = v88;
                    if ([v87 isEqualToString:candidate2])
                    {
                      acceptedCandidate5 = [v86 acceptedCandidate];
                      input2 = [acceptedCandidate5 input];
                      v93 = [v88 isEqualToString:input2];

                      v15 = v268;
                      if (v93)
                      {
                        goto LABEL_73;
                      }
                    }

                    else
                    {
                    }

                    [(TIDocumentWordsAligned *)v271 removeFromContextMap:v86];
                    acceptedCandidate6 = [v15 acceptedCandidate];
                    acceptedCandidate7 = [v86 acceptedCandidate];
                    input3 = [acceptedCandidate7 input];
                    v97 = [acceptedCandidate6 candidateByReplacingWithCandidate:v87 input:input3];
                    [v86 setAcceptedCandidate:v97];

                    acceptedCandidate8 = [v86 acceptedCandidate];
                    candidate3 = [acceptedCandidate8 candidate];
                    [v86 setAcceptedString:candidate3];

                    v100 = MEMORY[0x277D6F350];
                    documentState6 = [v86 documentState];
                    selectedText = [documentState6 selectedText];
                    documentState7 = [v86 documentState];
                    contextAfterInput2 = [documentState7 contextAfterInput];
                    v105 = [v100 documentStateWithContextBefore:v84 selectedText:selectedText contextAfter:contextAfterInput2];
                    [v86 setDocumentState:v105];

                    v15 = v268;
                    [v86 setWordEntryType:{objc_msgSend(v86, "wordEntryType") | 1}];
                    [v86 setIsRetrocorrection:1];
                    [(TIDocumentWordsAligned *)v271 addToContextMap:v86];
LABEL_73:
                    v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v84, v87];

                    ++v83;
                    ++v81;

                    v84 = v106;
                    if (v272 == v83)
                    {
                      acceptedCandidate9 = [v15 acceptedCandidate];
                      lastObject3 = [v260 lastObject];
                      lastObject4 = [v259 lastObject];
                      v110 = [acceptedCandidate9 candidateByReplacingWithCandidate:lastObject3 input:lastObject4];
                      [v15 setAcceptedCandidate:v110];

                      acceptedCandidate10 = [v15 acceptedCandidate];
                      candidate4 = [acceptedCandidate10 candidate];
                      [v15 setAcceptedString:candidate4];

                      v113 = MEMORY[0x277D6F350];
                      documentState8 = [v15 documentState];
                      selectedText2 = [documentState8 selectedText];
                      documentState9 = [v15 documentState];
                      contextAfterInput3 = [documentState9 contextAfterInput];
                      v118 = [v113 documentStateWithContextBefore:v106 selectedText:selectedText2 contextAfter:contextAfterInput3];
                      [v15 setDocumentState:v118];

                      sessionCopy = v255;
                      v6 = v271;
                      v14 = v257;
                      v77 = obj;
                      goto LABEL_83;
                    }
                  }
                }
              }

              v106 = v78;
              v14 = v257;
            }

            else
            {
              v106 = documentContextBeforeInput;
            }

LABEL_83:
          }

          documentState10 = [v15 documentState];
          contextBeforeInput5 = [documentState10 contextBeforeInput];
          v130 = contextBeforeInput5;
          v131 = &stru_283FDFAF8;
          if (contextBeforeInput5)
          {
            v131 = contextBeforeInput5;
          }

          v132 = v131;

          whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v254 = v132;
          v134 = [(__CFString *)v132 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
          v135 = [(TIDocumentWordsAligned *)v6 wordsForContext:v134];

          obja = v135;
          if (![v135 count] && (objc_msgSend(v264, "actionType") != 2 || !-[TIDocumentWordsAligned wordsCount](v6, "wordsCount")))
          {
            [v15 setWordAlignmentConf:3];
            v16 = v263;
            if (v263)
            {
              v146 = [(TIDocumentWordsAligned *)v6 description];
              if ([v253 length])
              {
                v254 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v146, v254];

                v146 = v254;
              }

              whitespaceAndNewlineCharacterSet4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v212 = [(__CFString *)v254 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet4];

              if (v212 && ([v146 isEqualToString:v212] & 1) == 0)
              {
                [v15 setWordAlignmentConf:2];
              }

              v14 = v257;
              v16 = v263;
            }

            [(TIDocumentWordsAligned *)v6 pushWordToDocument:v15];
            v202 = 1;
            goto LABEL_229;
          }

          v16 = v263;
          if ([v264 actionType] == 2 || objc_msgSend(v264, "actionType") == 10)
          {
            v136 = v264;
            v278 = v136;
            if (![v136 extendsPriorWord])
            {
              [v15 setWordAlignmentConf:1];
              if ([obja count])
              {
                v148 = [obja objectAtIndexedSubscript:0];
                -[TIDocumentWordsAligned insertWord:atIndex:](v6, "insertWord:atIndex:", v15, [v148 sessionIndex]);
              }

              goto LABEL_147;
            }

            documentState11 = [v15 documentState];

            if (documentState11)
            {
              acceptedCandidate11 = [v15 acceptedCandidate];
              if (([acceptedCandidate11 isContinuousPathConversion] & 1) == 0)
              {
                allKeyboardInputs8 = [v15 allKeyboardInputs];
                v140 = [allKeyboardInputs8 count];

                if (!v140)
                {
                  lastObject5 = [obja lastObject];
                  acceptedCandidate12 = [lastObject5 acceptedCandidate];
                  candidate5 = [acceptedCandidate12 candidate];
                  acceptedString4 = [v15 acceptedString];
                  v145 = [candidate5 isEqualToString:acceptedString4];

                  if (v145)
                  {

LABEL_185:
                    v202 = 0;
                    v6 = v271;
LABEL_228:
                    v16 = v263;
LABEL_229:
                    v201 = v254;
LABEL_230:

                    if ((v202 & 1) == 0)
                    {
                      goto LABEL_179;
                    }

                    goto LABEL_178;
                  }

                  acceptedCandidate13 = [v15 acceptedCandidate];
                  input4 = [acceptedCandidate13 input];
                  acceptedCandidate14 = [lastObject5 acceptedCandidate];
                  candidate6 = [acceptedCandidate14 candidate];
                  v220 = [input4 isEqualToString:candidate6];

                  if ((v220 & 1) == 0)
                  {
                    goto LABEL_185;
                  }

                  v6 = v271;
                }

                goto LABEL_109;
              }
            }

            else
            {
              documentState12 = [v136 documentState];
              acceptedCandidate11 = [documentState12 contextBeforeInput];

              if ([v136 inWordRange] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v155 = [acceptedCandidate11 substringToIndex:{objc_msgSend(v136, "inWordRange")}];

                acceptedCandidate11 = v155;
              }

              v156 = [(TIDocumentWordsAligned *)v6 wordsForContext:acceptedCandidate11];

              obja = v156;
            }

LABEL_109:
            if ([obja count])
            {
              v294 = 0u;
              v295 = 0u;
              v292 = 0u;
              v293 = 0u;
              v157 = obja;
              obja = v157;
              v276 = [v157 countByEnumeratingWithState:&v292 objects:v303 count:16];
              if (!v276)
              {
                goto LABEL_143;
              }

              v273 = *v293;
              while (1)
              {
                v158 = 0;
                v159 = v278;
                do
                {
                  if (*v293 != v273)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v160 = *(*(&v292 + 1) + 8 * v158);
                  documentState13 = [v160 documentState];
                  contextBeforeInput6 = [documentState13 contextBeforeInput];

                  if (contextBeforeInput6)
                  {
                    v163 = contextBeforeInput6;
                  }

                  else
                  {
                    v163 = &stru_283FDFAF8;
                  }

                  v164 = MEMORY[0x277CCACA8];
                  acceptedString5 = [v160 acceptedString];
                  v165 = [v164 stringWithFormat:@"%@%@", v163, acceptedString5];

                  inWord = [v159 inWord];
                  acceptedString6 = [v160 acceptedString];
                  v169 = [inWord isEqualToString:acceptedString6];

                  if (v169)
                  {
                    documentState14 = [v159 documentState];
                    contextBeforeInput7 = [documentState14 contextBeforeInput];

                    documentState15 = [v159 documentState];
                    contextAfterInput4 = [documentState15 contextAfterInput];

                    if (contextAfterInput4)
                    {
                      documentState16 = [v159 documentState];
                      contextBeforeInput8 = [documentState16 contextBeforeInput];
                      documentState17 = [v159 documentState];
                      contextAfterInput5 = [documentState17 contextAfterInput];
                      v178 = [contextBeforeInput8 stringByAppendingString:contextAfterInput5];

                      v159 = v278;
                      contextBeforeInput7 = v178;
                      v6 = v271;
                    }

                    if ([v159 inWordRange] == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_140;
                    }

                    inWordRange = [v159 inWordRange];
                    v180 = v159;
                    v181 = inWordRange;
                    [v180 inWordRange];
                    v183 = v182 + v181;
                    if (v182 + v181 <= [contextBeforeInput7 length])
                    {
                      v184 = [contextBeforeInput7 substringToIndex:v183];
                      v159 = v278;
                      if ([v184 isEqualToString:v165])
                      {
                        [v160 addUserEdit:v268];
                        [v160 setEditActionType:{objc_msgSend(v278, "actionType")}];
                        [v160 setEditActionExtendsPriorWord:{objc_msgSend(v278, "extendsPriorWord")}];
                        [v160 setWordAlignmentConf:3];
                      }

                      goto LABEL_140;
                    }

                    goto LABEL_139;
                  }

                  if ((v270 & 1) == 0)
                  {
                    goto LABEL_131;
                  }

                  inWord2 = [v269 inWord];
                  acceptedString7 = [v160 acceptedString];
                  if ([inWord2 isEqualToString:acceptedString7])
                  {
                  }

                  else
                  {
                    v187 = [v268 wordEntryType] & 0xC0;

                    if (!v187)
                    {
LABEL_131:
                      documentState18 = [v268 documentState];
                      contextAfterInput6 = [documentState18 contextAfterInput];
                      if (contextAfterInput6)
                      {
                      }

                      else
                      {
                        lastWord2 = [(TIDocumentWordsAligned *)v6 lastWord];
                        acceptedCandidate15 = [v160 acceptedCandidate];
                        candidate7 = [acceptedCandidate15 candidate];
                        v193 = [lastWord2 isEqualToString:candidate7];

                        if (v193)
                        {
                          v6 = v271;
                          v159 = v278;
                          goto LABEL_141;
                        }
                      }

                      [string appendString:@"<BOS>"];
                      documentState19 = [v268 documentState];
                      contextBeforeInput9 = [documentState19 contextBeforeInput];
                      v196 = contextBeforeInput9;
                      if (contextBeforeInput9)
                      {
                        v197 = contextBeforeInput9;
                      }

                      else
                      {
                        v197 = &stru_283FDFAF8;
                      }

                      contextBeforeInput7 = [string stringByAppendingString:v197];

                      v198 = [MEMORY[0x277D6F350] documentStateWithContextBefore:contextBeforeInput7 selectedText:0 contextAfter:0];
                      [v268 setDocumentState:v198];

                      v6 = v271;
                      [(TIDocumentWordsAligned *)v271 pushWordToDocument:v268];
LABEL_139:
                      v159 = v278;
                      goto LABEL_140;
                    }
                  }

                  [v160 addUserEdit:v268];
                  v159 = v278;
                  [v160 setEditActionType:{objc_msgSend(v278, "actionType")}];
                  [v160 setEditActionExtendsPriorWord:{objc_msgSend(v278, "extendsPriorWord")}];
                  [v160 setWordAlignmentConf:3];
                  v270 = 0;
                  contextBeforeInput7 = v269;
                  v269 = 0;
LABEL_140:

LABEL_141:
                  ++v158;
                }

                while (v276 != v158);
                v157 = obja;
                v276 = [obja countByEnumeratingWithState:&v292 objects:v303 count:16];
                if (!v276)
                {
LABEL_143:

                  sessionCopy = v255;
                  v14 = v257;
                  v16 = v263;
                  v15 = v268;
                  goto LABEL_147;
                }
              }
            }

            documentState20 = [v15 documentState];
            contextAfterInput7 = [documentState20 contextAfterInput];

            if (!contextAfterInput7)
            {
              [(TIDocumentWordsAligned *)v6 pushWordToDocument:v15];
            }

            v16 = v263;
LABEL_147:
            v201 = v254;

            v202 = 1;
            goto LABEL_230;
          }

          if ((([v135 count] != 0) & isContinuousPathConversion2) != 1)
          {
            documentState21 = [v15 documentState];
            contextAfterInput8 = [documentState21 contextAfterInput];
            v207 = [contextAfterInput8 length];

            if (!v207)
            {
              if ([v264 actionType] || !-[TITypingSessionAligned isNewLineScenarioWithCurrentWord:andPreviousWord:](self, "isNewLineScenarioWithCurrentWord:andPreviousWord:", v15, v264))
              {
                documentState22 = [v15 documentState];
                contextBeforeInput10 = [documentState22 contextBeforeInput];
                v210 = [(TIDocumentWordsAligned *)v6 deleteWordsUpToContext:contextBeforeInput10];
              }

              [(TIDocumentWordsAligned *)v6 pushWordToDocument:v15];
            }

            v202 = 1;
            goto LABEL_228;
          }

          firstObject5 = [v135 firstObject];
          documentState23 = [v15 documentState];
          contextAfterInput9 = [documentState23 contextAfterInput];
          if (contextAfterInput9)
          {
            contextBeforeInput11 = contextAfterInput9;
            v153 = 0;
          }

          else
          {
            if ([v264 actionType])
            {
            }

            else
            {
              v221 = [(TITypingSessionAligned *)self isNewLineScenarioWithCurrentWord:v15 andPreviousWord:v264];

              if (v221)
              {
                v153 = 0;
                goto LABEL_190;
              }
            }

            documentState23 = [v15 documentState];
            contextBeforeInput11 = [documentState23 contextBeforeInput];
            v153 = [(TIDocumentWordsAligned *)v6 deleteWordsUpToContext:contextBeforeInput11];
          }

LABEL_190:
          v290 = 0u;
          v291 = 0u;
          v288 = 0u;
          v289 = 0u;
          allKeyboardInputs9 = [v15 allKeyboardInputs];
          v223 = [allKeyboardInputs9 countByEnumeratingWithState:&v288 objects:v302 count:16];
          if (v223)
          {
            v224 = v223;
            v225 = *v289;
            while (2)
            {
              for (k = 0; k != v224; ++k)
              {
                if (*v289 != v225)
                {
                  objc_enumerationMutation(allKeyboardInputs9);
                }

                if ([*(*(&v288 + 1) + 8 * k) isBackspace])
                {
                  v227 = 1;
                  goto LABEL_200;
                }
              }

              v224 = [allKeyboardInputs9 countByEnumeratingWithState:&v288 objects:v302 count:16];
              if (v224)
              {
                continue;
              }

              break;
            }

            v227 = 0;
LABEL_200:
            sessionCopy = v255;
          }

          else
          {
            v227 = 0;
          }

          acceptedCandidate16 = [v15 acceptedCandidate];
          v6 = v271;
          isContinuousPathConversion2 = [acceptedCandidate16 isContinuousPathConversion];
          if (isContinuousPathConversion2)
          {
            v229 = v15;
          }

          else
          {
            if (v227)
            {
            }

            else
            {
              actionType = [v264 actionType];

              if (actionType != 1)
              {
                isContinuousPathConversion2 = 1;
                v229 = v15;
LABEL_226:
                [(TIDocumentWordsAligned *)v6 pushWordToDocument:v229];
                goto LABEL_227;
              }
            }

            [firstObject5 addUserEdit:v15];
            editedEntry2 = [firstObject5 editedEntry];
            [editedEntry2 setExtendsPriorWord:1];

            [firstObject5 setEditActionType:{objc_msgSend(v264, "actionType")}];
            v232 = (objc_opt_respondsToSelector() & 1) != 0 && [v264 performSelector:sel_extendsPriorWord] != 0;
            [firstObject5 setEditActionExtendsPriorWord:v232];
            if (![v153 count])
            {
              isContinuousPathConversion2 = 0;
              v6 = v271;
LABEL_227:

              v202 = 1;
              v14 = v257;
              goto LABEL_228;
            }

            [firstObject5 setDeleted:0];
            v286 = 0u;
            v287 = 0u;
            v284 = 0u;
            v285 = 0u;
            acceptedCandidate16 = [firstObject5 allEdits];
            v233 = [acceptedCandidate16 countByEnumeratingWithState:&v284 objects:v301 count:16];
            if (v233)
            {
              v234 = v233;
              v235 = *v285;
              do
              {
                for (m = 0; m != v234; ++m)
                {
                  if (*v285 != v235)
                  {
                    objc_enumerationMutation(acceptedCandidate16);
                  }

                  [*(*(&v284 + 1) + 8 * m) setDeleted:0];
                }

                v234 = [acceptedCandidate16 countByEnumeratingWithState:&v284 objects:v301 count:16];
              }

              while (v234);
              v229 = firstObject5;
              sessionCopy = v255;
            }

            else
            {
              v229 = firstObject5;
            }

            v6 = v271;
          }

          goto LABEL_226;
        }
      }

      else
      {
      }

      isContinuousPathConversion2 |= [v264 actionType] == 1;
      goto LABEL_60;
    }

    v269 = 0;
    v215 = 0;
    v264 = 0;
    v14 = 0;
LABEL_233:
    v237 = v14;
    wordsCount = [(TIDocumentWordsAligned *)v6 wordsCount];
    [(TITypingSessionAligned *)self setFirstCPEntryIndex:-1];
    v239 = v215;
    if (wordsCount >= 1)
    {
      v240 = 0;
      v241 = wordsCount & 0x7FFFFFFF;
      do
      {
        inDocumentWordsStack5 = [(TIDocumentWordsAligned *)v271 inDocumentWordsStack];
        v243 = [inDocumentWordsStack5 objectAtIndexedSubscript:v240];

        if ([v243 origin] != 1 || (objc_msgSend(v243, "allEdits"), v244 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v244, "firstObject"), v245 = objc_claimAutoreleasedReturnValue(), v243, v244, (v243 = v245) != 0))
        {
          v246 = [TITypingSessionAligned alignedEntryForWord:v243];
          completeString = [v246 completeString];
          v248 = [completeString length];

          if (v248)
          {
            [(NSArray *)array addObject:v246];
            if ([v246 isContinuousPathConversion])
            {
              if ([(TITypingSessionAligned *)self firstCPEntryIndex]== -1)
              {
                [(TITypingSessionAligned *)self setFirstCPEntryIndex:v240];
                [(TITypingSessionAligned *)self setContainsCPEntries:1];
              }
            }
          }
        }

        ++v240;
      }

      while (v241 != v240);
    }

    objc_autoreleasePoolPop(context);
    alignedEntries = self->_alignedEntries;
    self->_alignedEntries = array;

    sessionCopy = v255;
  }

  v250 = *MEMORY[0x277D85DE8];
}

- (id)textToAppendForEntry:(id)entry sessionIndx:(unint64_t)indx
{
  entryCopy = entry;
  v6 = entryCopy;
  if (!indx)
  {
    goto LABEL_4;
  }

  originalWord = [entryCopy originalWord];
  if ([originalWord isPunctuationEntryFollowingAWord])
  {
    originalWord2 = [v6 originalWord];
    acceptedString = [originalWord2 acceptedString];
    v10 = [acceptedString length];

    if (v10 <= 1)
    {
LABEL_4:
      expectedString = [v6 expectedString];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = MEMORY[0x277CCACA8];
  expectedString2 = [v6 expectedString];
  expectedString = [v12 stringWithFormat:@" %@", expectedString2];

LABEL_7:

  return expectedString;
}

- (void)getAlignedTextAndConfidence
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8322;
  v25 = __Block_byref_object_dispose__8323;
  v26 = &stru_283FDFAF8;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  alignedEntries = [(TITypingSessionAligned *)self alignedEntries];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke;
  v18[3] = &unk_2787309C8;
  v18[4] = self;
  v18[5] = &v21;
  v18[6] = v19;
  [alignedEntries enumerateObjectsUsingBlock:v18];

  objc_storeStrong(&self->_alignedText, v22[5]);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8322;
  v16 = __Block_byref_object_dispose__8323;
  v17 = &stru_283FDFAF8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke_2;
  aBlock[3] = &unk_2787309F0;
  aBlock[4] = &v12;
  v4 = _Block_copy(aBlock);
  alignedEntries2 = [(TITypingSessionAligned *)self alignedEntries];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke_3;
  v9[3] = &unk_278730A18;
  v10 = v4;
  v6 = v4;
  [alignedEntries2 enumerateObjectsUsingBlock:v9];

  objc_storeStrong(&self->_completeText, v13[5]);
  alignedEntries3 = [(TITypingSessionAligned *)self alignedEntries];
  lastObject = [alignedEntries3 lastObject];

  self->_success = [lastObject inSessionAlignmentConfidence] == 3;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
}

void __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a2;
  v6 = [v27 originalWord];
  v7 = [v6 documentContextBeforeInput];

  if ([*(a1 + 32) compareForConfidenceContextA:*(*(*(a1 + 40) + 8) + 40) contextB:v7])
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  [v27 setInSessionAlignmentConfidence:v8];
  v9 = [v27 expectedString];
  v10 = [v9 length];

  v11 = v27;
  if (v10)
  {
    v12 = [v27 expectedString];
    v13 = [v12 endsInPunctuation];

    if (a3)
    {
      v14 = [v27 originalWord];
      v15 = [v14 isPunctuationEntryFollowingAWord];
      v16 = v15;
      if (v15)
      {
        v12 = [v27 originalWord];
        v3 = [v12 acceptedString];
        if ([v3 length] < 2)
        {
          goto LABEL_10;
        }
      }

      v17 = [v27 expectedString];
      if ((([v17 length] == 1) & v13) != 0)
      {

        if ((v16 & 1) == 0)
        {
LABEL_11:

          goto LABEL_15;
        }

LABEL_10:

        goto LABEL_11;
      }

      v18 = [v27 originalWord];
      v19 = [v18 acceptedCandidate];
      v20 = [v19 isMecabraCandidate];

      if (v16)
      {
      }

      if ((v20 & 1) == 0)
      {
        v21 = @" %@";
        goto LABEL_16;
      }
    }

LABEL_15:
    v21 = @"%@";
LABEL_16:
    v22 = *(*(*(a1 + 40) + 8) + 40);
    v23 = [v27 expectedString];
    v24 = [v22 stringByAppendingFormat:v21, v23];
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v11 = v27;
  }

  if ([v11 inSessionAlignmentConfidence] != 3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 56), *(*(*(a1 + 40) + 8) + 40));
  }
}

void __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 originalWord];
  v4 = [v3 keyboardState];
  v5 = [v4 emojiSearchMode];

  if ((v5 & 1) == 0)
  {
    v6 = [v19 originalWord];
    v7 = [v6 editedEntry];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v19 originalWord];
    }

    v10 = v9;

    if ([v10 isPeriodFromDoubleSpaceEntry] && objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "endsInWhitespace"))
    {
      v11 = [*(*(*(a1 + 32) + 8) + 40) substringToIndex:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "length") - 1}];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = *(*(*(a1 + 32) + 8) + 40);
    v15 = [v19 completeString];
    v16 = [v14 stringByAppendingString:v15];
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

- (BOOL)compareForConfidenceContextA:(id)a contextB:(id)b
{
  aCopy = a;
  bCopy = b;
  if ([aCopy length] || objc_msgSend(bCopy, "length"))
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [aCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [bCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    whitespaceAndNewlineCharacterSet3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v8 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet3];

    whitespaceAndNewlineCharacterSet4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v10 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet4];

    if ([v12 count])
    {
      v23 = v10;
      v24 = v8;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v16;
        if ([v14 count] <= v16)
        {
          goto LABEL_16;
        }

        v19 = [v12 objectAtIndexedSubscript:v15];
        v20 = [v14 objectAtIndexedSubscript:v16];
        if (([v19 isEqualToString:&stru_283FDFAF8] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @" "))
        {
          ++v17;
        }

        else
        {
          if (([v20 isEqualToString:&stru_283FDFAF8] & 1) == 0 && !objc_msgSend(v20, "isEqualToString:", @" "))
          {
            if (([v19 isEqualToString:v20] & 1) == 0)
            {

              v21 = 0;
              v10 = v23;
              v8 = v24;
              goto LABEL_21;
            }

            ++v17;
          }

          ++v16;
        }

        v15 = v17;
        if ([v12 count] <= v17)
        {
          v18 = v16;
LABEL_16:
          v10 = v23;
          v8 = v24;
          goto LABEL_18;
        }
      }
    }

    v18 = 0;
    v15 = 0;
LABEL_18:
    v21 = [v12 count] <= v15 && objc_msgSend(v14, "count") <= v18;
LABEL_21:
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

- (TITypingSessionAligned)initWithSession:(id)session
{
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = TITypingSessionAligned;
  v5 = [(TITypingSessionAligned *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(TITypingSessionAligned *)v5 computeAlignedWordsFromSession:sessionCopy];
    layouts = [sessionCopy layouts];
    layouts = v6->_layouts;
    v6->_layouts = layouts;

    locale = [sessionCopy locale];
    locale = v6->_locale;
    v6->_locale = locale;

    [(TITypingSessionAligned *)v6 getAlignedTextAndConfidence];
  }

  return v6;
}

- (id)restrictedAlignedSessionWithWordLimit:(unint64_t)limit
{
  alignedEntries = [(TITypingSessionAligned *)self alignedEntries];
  v6 = [alignedEntries count];

  if (v6 <= limit)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_alloc_init(TITypingSessionAligned);
    alignedEntries2 = [(TITypingSessionAligned *)self alignedEntries];
    v9 = [alignedEntries2 subarrayWithRange:{0, limit}];
    [(TITypingSessionAligned *)selfCopy setAlignedEntries:v9];

    alignedText = [(TITypingSessionAligned *)self alignedText];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [alignedText componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    v13 = [v12 count];
    if (v13 >= limit)
    {
      limitCopy = limit;
    }

    else
    {
      limitCopy = v13;
    }

    v15 = [v12 subarrayWithRange:{0, limitCopy}];
    layouts = [(TITypingSessionAligned *)self layouts];
    layouts = selfCopy->_layouts;
    selfCopy->_layouts = layouts;

    v18 = [v15 componentsJoinedByString:@" "];
    alignedText = selfCopy->_alignedText;
    selfCopy->_alignedText = v18;

    locale = [(TITypingSessionAligned *)self locale];
    locale = selfCopy->_locale;
    selfCopy->_locale = locale;

    selfCopy->_success = [(TITypingSessionAligned *)self success];
    alignedText2 = [(TITypingSessionAligned *)selfCopy alignedText];
    v23 = [alignedText2 length];
    highConfAlignedSubSegment = [(TITypingSessionAligned *)self highConfAlignedSubSegment];
    if (v23 >= [highConfAlignedSubSegment length])
    {
      [(TITypingSessionAligned *)self highConfAlignedSubSegment];
    }

    else
    {
      [(TITypingSessionAligned *)selfCopy alignedText];
    }
    v25 = ;
    highConfAlignedSubSegment = selfCopy->_highConfAlignedSubSegment;
    selfCopy->_highConfAlignedSubSegment = v25;

    containsCPEntries = [(TITypingSessionAligned *)self firstCPEntryIndex]< limit && [(TITypingSessionAligned *)self containsCPEntries];
    selfCopy->_containsCPEntries = containsCPEntries;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  alignedEntries = self->_alignedEntries;
  coderCopy = coder;
  [coderCopy encodeObject:alignedEntries forKey:@"alignedEntries"];
  [coderCopy encodeObject:self->_alignedText forKey:@"alignedText"];
  [coderCopy encodeObject:self->_highConfAlignedSubSegment forKey:@"highConfAlignedSubSegment"];
  [coderCopy encodeBool:self->_success forKey:@"success"];
  [coderCopy encodeObject:self->_layouts forKey:@"layouts"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
  [coderCopy encodeBool:self->_containsCPEntries forKey:@"containsCPEntries"];
}

- (TITypingSessionAligned)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TITypingSessionAligned;
  v5 = [(TITypingSessionAligned *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"alignedEntries"];
    alignedEntries = v5->_alignedEntries;
    v5->_alignedEntries = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alignedText"];
    alignedText = v5->_alignedText;
    v5->_alignedText = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highConfAlignedSubSegment"];
    highConfAlignedSubSegment = v5->_highConfAlignedSubSegment;
    v5->_highConfAlignedSubSegment = v13;

    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"layouts"];
    layouts = v5->_layouts;
    v5->_layouts = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v20;

    v5->_containsCPEntries = [coderCopy decodeBoolForKey:@"containsCPEntries"];
  }

  return v5;
}

+ (id)resolveBackspacesInKeyboardInputs:(id)inputs
{
  v20 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = inputsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        lastObject = [array lastObject];
        if (lastObject && [v10 isBackspace] && (objc_msgSend(lastObject, "isBackspace") & 1) == 0)
        {
          [array removeLastObject];
        }

        else
        {
          [array addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v7 = v12;
    }

    while (v12);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)completeStringFromWordEntry:(id)entry leadingInputs:(id)inputs trailingInputs:(id)trailingInputs followsContinuousPath:(BOOL)path
{
  pathCopy = path;
  v59 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  inputsCopy = inputs;
  trailingInputsCopy = trailingInputs;
  acceptedCandidate = [entryCopy acceptedCandidate];
  if ([entryCopy isPeriodFromDoubleSpaceEntry])
  {
    v13 = @". ";
    goto LABEL_54;
  }

  v47 = inputsCopy;
  v48 = pathCopy;
  if (!inputsCopy)
  {
    v18 = &stru_283FDFAF8;
    goto LABEL_20;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = inputsCopy;
  v15 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v15)
  {
    v18 = &stru_283FDFAF8;
    goto LABEL_19;
  }

  v16 = v15;
  v17 = *v54;
  v18 = &stru_283FDFAF8;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v54 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v53 + 1) + 8 * i);
      if ([v20 isBackspace])
      {
        if (![(__CFString *)v18 length])
        {
          continue;
        }

        v21 = [(__CFString *)v18 substringToIndex:[(__CFString *)v18 length]- 1];
      }

      else
      {
        string = [v20 string];
        v21 = [(__CFString *)v18 stringByAppendingString:string];

        v18 = string;
      }

      v18 = v21;
    }

    v16 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v16);
LABEL_19:

  pathCopy = v48;
LABEL_20:
  candidate = [acceptedCandidate candidate];
  v24 = candidate;
  if (candidate)
  {
    v25 = candidate;
  }

  else
  {
    v25 = &stru_283FDFAF8;
  }

  v26 = v25;

  if ([(__CFString *)v26 endsInPunctuation])
  {
    v27 = [(__CFString *)v26 substringToIndex:[(__CFString *)v26 length]- 1];

    v26 = v27;
  }

  if ([acceptedCandidate isContinuousPathConversion])
  {
    if ([(__CFString *)v18 length])
    {
      v28 = [(__CFString *)v26 characterAtIndex:0];
      if (v28 == [(__CFString *)v18 characterAtIndex:[(__CFString *)v18 length]- 1])
      {
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v30 = [whitespaceCharacterSet characterIsMember:v28];

        if (v30)
        {
          v31 = [(__CFString *)v26 substringFromIndex:1];

          v26 = v31;
        }
      }
    }
  }

  if (!-[__CFString length](v18, "length") && pathCopy && ([acceptedCandidate isMecabraCandidate] & 1) == 0)
  {
    if ([(__CFString *)v26 length])
    {
      v32 = [(__CFString *)v26 characterAtIndex:0];
      whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      LOBYTE(v32) = [whitespaceCharacterSet2 characterIsMember:v32];

      if ((v32 & 1) == 0)
      {
        v34 = [(__CFString *)v18 stringByAppendingString:@" "];

        v18 = v34;
      }
    }
  }

  v13 = [(__CFString *)v18 stringByAppendingString:v26];

  if (trailingInputsCopy)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v46 = trailingInputsCopy;
    v35 = trailingInputsCopy;
    v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v50;
      do
      {
        v39 = 0;
        v40 = v13;
        do
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(v35);
          }

          string2 = [*(*(&v49 + 1) + 8 * v39) string];
          v13 = [(__CFString *)v40 stringByAppendingString:string2];

          ++v39;
          v40 = v13;
        }

        while (v37 != v39);
        v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v37);
    }

    trailingInputsCopy = v46;
    LOBYTE(pathCopy) = v48;
  }

  if ([entryCopy unfinishedWordEntryTreatment] != 1 || pathCopy)
  {
    if ([entryCopy unfinishedWordEntryTreatment] == 2 && (-[__CFString endsInWhitespace](v13, "endsInWhitespace") & 1) == 0)
    {
      v42 = [(__CFString *)v13 stringByAppendingString:@" "];
LABEL_52:
      v43 = v42;

      v13 = v43;
    }
  }

  else if ([(__CFString *)v13 endsInWhitespace])
  {
    v42 = [(__CFString *)v13 substringToIndex:[(__CFString *)v13 length]- 1];
    goto LABEL_52;
  }

  inputsCopy = v47;
LABEL_54:

  v44 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)alignedPathTouchesForWord:(id)word
{
  wordCopy = word;
  v4 = objc_alloc_init(TIWordEntryAligned);
  array = [MEMORY[0x277CBEB18] array];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__8322;
  v27[4] = __Block_byref_object_dispose__8323;
  v28 = 0;
  allTouches = [wordCopy allTouches];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__TITypingSessionAligned_alignedPathTouchesForWord___block_invoke;
  v24[3] = &unk_278730A90;
  v26 = v27;
  v7 = array;
  v25 = v7;
  [allTouches enumerateObjectsUsingBlock:v24];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__TITypingSessionAligned_alignedPathTouchesForWord___block_invoke_2;
  v18[3] = &unk_278730AB8;
  v18[4] = v23;
  v18[5] = &v19;
  [v7 enumerateObjectsUsingBlock:v18];
  v8 = v20[3];
  if (v8 < [v7 count])
  {
    v9 = [v7 objectAtIndexedSubscript:v20[3]];
    [(TIWordEntryAligned *)v4 setAlignedTouches:v9];
  }

  [(TIWordEntryAligned *)v4 setIsContinuousPathConversion:1];
  editedEntry = [wordCopy editedEntry];
  v11 = editedEntry;
  if (editedEntry)
  {
    v12 = editedEntry;
  }

  else
  {
    v12 = wordCopy;
  }

  v13 = v12;

  acceptedString = [v13 acceptedString];
  [(TIWordEntryAligned *)v4 setExpectedString:acceptedString];

  allKeyboardInputs = [wordCopy allKeyboardInputs];
  v16 = +[TITypingSessionAligned completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:](TITypingSessionAligned, "completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:", v13, allKeyboardInputs, 0, [v13 followsContinuousPath]);
  [(TIWordEntryAligned *)v4 setCompleteString:v16];

  [(TIWordEntryAligned *)v4 setOriginalWord:wordCopy];
  [wordCopy setOriginalWordInAlignment:1];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v27, 8);

  return v4;
}

void __52__TITypingSessionAligned_alignedPathTouchesForWord___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 stage])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
  if (([v8 stage] == 2 || objc_msgSend(v8, "stage") == 3 || objc_msgSend(v8, "stage") == 4) && *(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) addObject:?];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __52__TITypingSessionAligned_alignedPathTouchesForWord___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 count] > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 count];
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

+ (id)alignedEntryForWord:(id)word
{
  wordCopy = word;
  acceptedCandidate = [wordCopy acceptedCandidate];
  isContinuousPathConversion = [acceptedCandidate isContinuousPathConversion];

  if (isContinuousPathConversion)
  {
    v6 = [TITypingSessionAligned alignedPathTouchesForWord:wordCopy];
    goto LABEL_32;
  }

  v6 = objc_alloc_init(TIWordEntryAligned);
  allKeyboardInputs = [wordCopy allKeyboardInputs];
  v8 = [TITypingSessionAligned resolveBackspacesInKeyboardInputs:allKeyboardInputs];

  inputTriggeredTextAccepted = [wordCopy inputTriggeredTextAccepted];

  if (inputTriggeredTextAccepted)
  {
    inputTriggeredTextAccepted2 = [wordCopy inputTriggeredTextAccepted];
    [v8 removeObject:inputTriggeredTextAccepted2];
  }

  editedEntry = [wordCopy editedEntry];

  if (editedEntry)
  {
    if ([wordCopy editActionType] == 2 && (objc_msgSend(wordCopy, "editActionExtendsPriorWord") & 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      editedEntry = [wordCopy editedEntry];
      if (([editedEntry extendsPriorWord] & 1) == 0)
      {

LABEL_25:
        editedEntry2 = [wordCopy editedEntry];
        acceptedString = [editedEntry2 acceptedString];
        [(TIWordEntryAligned *)v6 setExpectedString:acceptedString];

        goto LABEL_26;
      }

      v12 = 1;
    }

    editedEntry3 = [wordCopy editedEntry];
    allKeyboardInputs2 = [editedEntry3 allKeyboardInputs];
    v15 = [allKeyboardInputs2 count];

    if (v12)
    {
    }

    if (v15)
    {
      editedEntry4 = [wordCopy editedEntry];
      allKeyboardInputs3 = [editedEntry4 allKeyboardInputs];
      v18 = [allKeyboardInputs3 count];

      if (v18)
      {
        v19 = 0;
        do
        {
          editedEntry5 = [wordCopy editedEntry];
          allKeyboardInputs4 = [editedEntry5 allKeyboardInputs];
          v22 = [allKeyboardInputs4 objectAtIndexedSubscript:v19];

          editedEntry6 = [wordCopy editedEntry];
          inputTriggeredTextAccepted3 = [editedEntry6 inputTriggeredTextAccepted];

          if (v22 != inputTriggeredTextAccepted3)
          {
            if ([v22 isBackspace])
            {
              if ([v8 count])
              {
                [v8 removeLastObject];
              }
            }

            else
            {
              [v8 addObject:v22];
            }
          }

          ++v19;
          editedEntry7 = [wordCopy editedEntry];
          allKeyboardInputs5 = [editedEntry7 allKeyboardInputs];
          v27 = [allKeyboardInputs5 count];
        }

        while (v27 > v19);
      }
    }

    goto LABEL_25;
  }

  editedEntry2 = [wordCopy acceptedString];
  [(TIWordEntryAligned *)v6 setExpectedString:editedEntry2];
LABEL_26:

  [(TIWordEntryAligned *)v6 setAlignedKeyboardInputs:v8];
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = -1;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = -1;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __46__TITypingSessionAligned_alignedEntryForWord___block_invoke;
  v50[3] = &unk_278730A40;
  v50[4] = v53;
  v50[5] = v51;
  [v8 enumerateObjectsUsingBlock:v50];
  v30 = objc_opt_new();
  v31 = objc_opt_new();
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = __46__TITypingSessionAligned_alignedEntryForWord___block_invoke_2;
  v45 = &unk_278730A68;
  v48 = v53;
  v49 = v51;
  v46 = v30;
  v32 = v31;
  v47 = v32;
  v33 = v30;
  [v8 enumerateObjectsUsingBlock:&v42];
  editedEntry8 = [wordCopy editedEntry];
  v35 = editedEntry8;
  if (editedEntry8)
  {
    v36 = editedEntry8;
  }

  else
  {
    v36 = wordCopy;
  }

  v37 = v36;

  inputTriggeredTextAccepted4 = [v37 inputTriggeredTextAccepted];

  if (inputTriggeredTextAccepted4)
  {
    inputTriggeredTextAccepted5 = [v37 inputTriggeredTextAccepted];
    [v32 addObject:inputTriggeredTextAccepted5];
  }

  v40 = +[TITypingSessionAligned completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:](TITypingSessionAligned, "completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:", v37, v33, v32, [v37 followsContinuousPath]);
  [(TIWordEntryAligned *)v6 setCompleteString:v40];

  [(TIWordEntryAligned *)v6 setOriginalWord:wordCopy];
  [wordCopy setOriginalWordInAlignment:1];

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);

LABEL_32:

  return v6;
}

void __46__TITypingSessionAligned_alignedEntryForWord___block_invoke(uint64_t a1, void *a2, int a3)
{
  v20 = a2;
  v5 = [v20 string];
  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  if (![v7 length])
  {
    goto LABEL_10;
  }

  v8 = [v20 string];
  v9 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];
  if (![v10 length])
  {
LABEL_9:

LABEL_10:
    v15 = v20;
    goto LABEL_11;
  }

  v19 = a1;
  v11 = [v20 string];
  v12 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];
  if (![v13 length])
  {

    goto LABEL_9;
  }

  v17 = a3;
  v14 = [v20 string];
  v18 = [v14 _containsEmoji];

  v15 = v20;
  if ((v18 & 1) == 0)
  {
    v16 = *(*(v19 + 32) + 8);
    if (*(v16 + 24) == -1)
    {
      *(v16 + 24) = v17;
    }

    *(*(*(v19 + 40) + 8) + 24) = v17 + 1;
  }

LABEL_11:
}

uint64_t __46__TITypingSessionAligned_alignedEntryForWord___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = v7 == -1 || v7 > a3;
  v10 = v5;
  if (v8)
  {
    v5 = [*(a1 + 32) addObject:v5];
    v6 = v10;
  }

  if (*(*(*(a1 + 56) + 8) + 24) <= a3)
  {
    v5 = [*(a1 + 40) addObject:v10];
    v6 = v10;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

@end