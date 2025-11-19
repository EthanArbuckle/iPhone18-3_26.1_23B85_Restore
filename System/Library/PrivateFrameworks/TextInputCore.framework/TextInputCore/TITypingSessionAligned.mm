@interface TITypingSessionAligned
+ (id)alignedEntryForWord:(id)a3;
+ (id)alignedPathTouchesForWord:(id)a3;
+ (id)completeStringFromWordEntry:(id)a3 leadingInputs:(id)a4 trailingInputs:(id)a5 followsContinuousPath:(BOOL)a6;
+ (id)resolveBackspacesInKeyboardInputs:(id)a3;
- (BOOL)compareForConfidenceContextA:(id)a3 contextB:(id)a4;
- (BOOL)isNewLineScenarioWithCurrentWord:(id)a3 andPreviousWord:(id)a4;
- (TITypingSessionAligned)initWithCoder:(id)a3;
- (TITypingSessionAligned)initWithSession:(id)a3;
- (id)restrictedAlignedSessionWithWordLimit:(unint64_t)a3;
- (id)textToAppendForEntry:(id)a3 sessionIndx:(unint64_t)a4;
- (void)computeAlignedWordsFromSession:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getAlignedTextAndConfidence;
@end

@implementation TITypingSessionAligned

- (BOOL)isNewLineScenarioWithCurrentWord:(id)a3 andPreviousWord:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 acceptedCandidate];
  v8 = [v7 isContinuousPathConversion];

  v9 = [v6 startsWithNewLine];
  v10 = v8 ^ 1 | v9;
  if ((v8 & 1) == 0 && (v9 & 1) == 0)
  {
    v10 = [v5 endsWithNewLine];
  }

  return v10 & 1;
}

- (void)computeAlignedWordsFromSession:(id)a3
{
  v305 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 userActionHistory];
  v5 = [v4 count];

  if (v5)
  {
    v252 = [MEMORY[0x277CBEB18] array];
    context = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(TIDocumentWordsAligned);
    v7 = [v3 userActionHistory];
    v8 = [v7 count];

    v9 = [v3 userActionHistory];
    v10 = [v9 firstObject];
    v11 = [v10 documentState];
    v12 = [v11 contextBeforeInput];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v253 = [v12 stringByTrimmingCharactersInSet:v13];

    v265 = [MEMORY[0x277CCAB68] string];
    v255 = v3;
    v271 = v6;
    v261 = v8;
    if (v8)
    {
      v14 = 0;
      v264 = 0;
      v15 = 0;
      v256 = 0;
      v270 = 0;
      v262 = 0;
      v269 = 0;
      v16 = 0;
      while (1)
      {
        v17 = v14;
        v18 = [v3 userActionHistory];
        v14 = [v18 objectAtIndexedSubscript:v16];

        if ([v14 actionType] == 10)
        {
          if (v16)
          {
            goto LABEL_177;
          }

          v19 = [v14 keyboardState];
          v20 = [v19 emojiSearchMode];

          if ((v20 & 1) == 0)
          {
            v39 = [v14 originalWordEntries];
            [v3 setOriginalWords:v39];

            v298 = 0u;
            v299 = 0u;
            v296 = 0u;
            v297 = 0u;
            v37 = [v3 originalWords];
            v40 = [v37 countByEnumeratingWithState:&v296 objects:v304 count:16];
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
                    objc_enumerationMutation(v37);
                  }

                  [(TIDocumentWordsAligned *)v6 pushWordToDocument:*(*(&v296 + 1) + 8 * i)];
                }

                v41 = [v37 countByEnumeratingWithState:&v296 objects:v304 count:16];
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
            v23 = [v22 documentState];
            v24 = [v23 contextAfterInput];
            v25 = [v24 length];

            v26 = [v22 documentState];
            v27 = [v26 contextBeforeInput];
            if (v25)
            {
              v28 = [(TIDocumentWordsAligned *)v6 wordsFromContext:v27];

              v282 = 0u;
              v283 = 0u;
              v280 = 0u;
              v281 = 0u;
              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v280 objects:v300 count:16];
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
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v280 + 1) + 8 * j);
                    v35 = [v34 editedEntry];

                    if (v35)
                    {
                      [v34 setWordAlignmentConf:1];
                    }
                  }

                  v31 = [v29 countByEnumeratingWithState:&v280 objects:v300 count:16];
                }

                while (v31);
                v36 = v29;
                v3 = v255;
              }

              else
              {
                v36 = v29;
              }

LABEL_172:
              v14 = v21;
LABEL_173:

LABEL_174:
              v37 = v14;
              goto LABEL_175;
            }

            v36 = [(TIDocumentWordsAligned *)v6 deleteWordsUpToContext:v27];

            v57 = [(TIDocumentWordsAligned *)v6 inDocumentWordsStack];
            v29 = [v57 lastObject];

            if ([v36 count])
            {
              v58 = [v36 firstObject];
              v59 = v58;
              if (v58)
              {
                if ([v58 followsContinuousPath])
                {
                  if (v29)
                  {
                    v60 = 2;
                    goto LABEL_170;
                  }
                }

                else if (v29)
                {
                  v203 = [v22 documentState];
                  v204 = [v203 contextBeforeInput];
                  if ([v204 endsInWhitespace])
                  {
                    v60 = 2;
                  }

                  else
                  {
                    v279 = [v22 documentState];
                    v213 = [v279 contextBeforeInput];
                    if ([v213 endsInPunctuation])
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
                  [v29 setUnfinishedWordEntryTreatment:v60];
                }
              }

              goto LABEL_172;
            }

            v119 = [v22 allKeyboardInputs];
            if ([v119 count] != 1)
            {

              v256 = 1;
              goto LABEL_172;
            }

            v120 = [v22 allKeyboardInputs];
            v121 = [v120 firstObject];
            v122 = [v121 isBackspace];

            v256 = 1;
            if (v122)
            {
              v14 = v21;
              if (v29)
              {
                v123 = [v29 allKeyboardInputs];
                if ([v123 count])
                {
                  v277 = [v29 allKeyboardInputs];
                  v124 = [v277 lastObject];
                  v125 = [v124 string];
                  v126 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                  v127 = [v125 stringByTrimmingCharactersInSet:v126];
                  v275 = [v127 length];

                  v256 = 1;
                  if (!v275)
                  {
                    [v29 setUnfinishedWordEntryTreatment:1];
                  }

                  goto LABEL_222;
                }

                v256 = 1;
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
            v37 = v14;
            if ([v37 isSelection])
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
        v45 = [v38 acceptedCandidate];
        v46 = [v45 isContinuousPathConversion];

        v47 = [v15 acceptedString];
        v262 = v46;
        if (([v47 isEqualToString:&stru_283FDFAF8] & 1) == 0)
        {
          break;
        }

        v48 = [v15 candidateContainsEmoji];

        if (v48)
        {
          goto LABEL_55;
        }

LABEL_43:
        v51 = v14;
        v52 = [v15 allKeyboardInputs];
        v47 = [v52 lastObject];

        v53 = [v47 acceptedCandidate];
        v54 = [v53 candidate];
        v55 = [(TIDocumentWordsAligned *)v6 lastWord];
        v56 = [v54 isEqualToString:v55];

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

      v49 = [v15 acceptedString];
      if ([v49 isEqualToString:@" "])
      {
        v50 = [v15 candidateContainsEmoji];

        if (v50)
        {
          goto LABEL_55;
        }

        goto LABEL_43;
      }

LABEL_54:
LABEL_55:
      v257 = v14;
      v61 = [v15 allKeyboardInputs];
      if ([v61 count])
      {
        v62 = [v15 allKeyboardInputs];
        v63 = [v62 firstObject];
        v64 = [v63 isBackspace];

        if (v64)
        {
          v256 = 1;
LABEL_60:
          v65 = [v15 acceptedString];
          v66 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v67 = [v65 componentsSeparatedByCharactersInSet:v66];

          v68 = [v15 acceptedCandidate];
          v69 = [v68 input];
          v70 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v71 = [v69 componentsSeparatedByCharactersInSet:v70];

          v260 = v67;
          v72 = [v67 count];
          v259 = v71;
          v73 = [v71 count];
          v74 = [(TIDocumentWordsAligned *)v6 inDocumentWordsStack];
          v75 = [v74 count];

          v14 = v257;
          v268 = v15;
          if (v72 >= 2 && v72 == v73)
          {
            v76 = [v15 documentContextBeforeInput];
            v77 = [(TIDocumentWordsAligned *)v6 wordsForContext:v76];
            if ([v77 count])
            {
              v78 = v76;
              v79 = [(TIDocumentWordsAligned *)v6 inDocumentWordsStack];
              v80 = [v77 objectAtIndexedSubscript:0];
              v81 = [v79 indexOfObject:v80];

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
                    v85 = [(TIDocumentWordsAligned *)v271 inDocumentWordsStack];
                    v86 = [v85 objectAtIndexedSubscript:v81];

                    v87 = [v260 objectAtIndexedSubscript:v83];
                    v88 = [v259 objectAtIndexedSubscript:v83];
                    v89 = [v86 acceptedCandidate];
                    v90 = [v89 candidate];
                    v274 = v88;
                    if ([v87 isEqualToString:v90])
                    {
                      v91 = [v86 acceptedCandidate];
                      v92 = [v91 input];
                      v93 = [v88 isEqualToString:v92];

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
                    v94 = [v15 acceptedCandidate];
                    v95 = [v86 acceptedCandidate];
                    v96 = [v95 input];
                    v97 = [v94 candidateByReplacingWithCandidate:v87 input:v96];
                    [v86 setAcceptedCandidate:v97];

                    v98 = [v86 acceptedCandidate];
                    v99 = [v98 candidate];
                    [v86 setAcceptedString:v99];

                    v100 = MEMORY[0x277D6F350];
                    v101 = [v86 documentState];
                    v102 = [v101 selectedText];
                    v103 = [v86 documentState];
                    v104 = [v103 contextAfterInput];
                    v105 = [v100 documentStateWithContextBefore:v84 selectedText:v102 contextAfter:v104];
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
                      v107 = [v15 acceptedCandidate];
                      v108 = [v260 lastObject];
                      v109 = [v259 lastObject];
                      v110 = [v107 candidateByReplacingWithCandidate:v108 input:v109];
                      [v15 setAcceptedCandidate:v110];

                      v111 = [v15 acceptedCandidate];
                      v112 = [v111 candidate];
                      [v15 setAcceptedString:v112];

                      v113 = MEMORY[0x277D6F350];
                      v114 = [v15 documentState];
                      v115 = [v114 selectedText];
                      v116 = [v15 documentState];
                      v117 = [v116 contextAfterInput];
                      v118 = [v113 documentStateWithContextBefore:v106 selectedText:v115 contextAfter:v117];
                      [v15 setDocumentState:v118];

                      v3 = v255;
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
              v106 = v76;
            }

LABEL_83:
          }

          v128 = [v15 documentState];
          v129 = [v128 contextBeforeInput];
          v130 = v129;
          v131 = &stru_283FDFAF8;
          if (v129)
          {
            v131 = v129;
          }

          v132 = v131;

          v133 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v254 = v132;
          v134 = [(__CFString *)v132 stringByTrimmingCharactersInSet:v133];
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
                v147 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v146, v254];

                v146 = v147;
              }

              v211 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v212 = [(__CFString *)v254 stringByTrimmingCharactersInSet:v211];

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

            v137 = [v15 documentState];

            if (v137)
            {
              v138 = [v15 acceptedCandidate];
              if (([v138 isContinuousPathConversion] & 1) == 0)
              {
                v139 = [v15 allKeyboardInputs];
                v140 = [v139 count];

                if (!v140)
                {
                  v141 = [obja lastObject];
                  v142 = [v141 acceptedCandidate];
                  v143 = [v142 candidate];
                  v144 = [v15 acceptedString];
                  v145 = [v143 isEqualToString:v144];

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

                  v216 = [v15 acceptedCandidate];
                  v217 = [v216 input];
                  v218 = [v141 acceptedCandidate];
                  v219 = [v218 candidate];
                  v220 = [v217 isEqualToString:v219];

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
              v154 = [v136 documentState];
              v138 = [v154 contextBeforeInput];

              if ([v136 inWordRange] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v155 = [v138 substringToIndex:{objc_msgSend(v136, "inWordRange")}];

                v138 = v155;
              }

              v156 = [(TIDocumentWordsAligned *)v6 wordsForContext:v138];

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
                  v161 = [v160 documentState];
                  v162 = [v161 contextBeforeInput];

                  if (v162)
                  {
                    v163 = v162;
                  }

                  else
                  {
                    v163 = &stru_283FDFAF8;
                  }

                  v164 = MEMORY[0x277CCACA8];
                  v165 = [v160 acceptedString];
                  v166 = [v164 stringWithFormat:@"%@%@", v163, v165];

                  v167 = [v159 inWord];
                  v168 = [v160 acceptedString];
                  v169 = [v167 isEqualToString:v168];

                  if (v169)
                  {
                    v170 = [v159 documentState];
                    v171 = [v170 contextBeforeInput];

                    v172 = [v159 documentState];
                    v173 = [v172 contextAfterInput];

                    if (v173)
                    {
                      v174 = [v159 documentState];
                      v175 = [v174 contextBeforeInput];
                      v176 = [v159 documentState];
                      v177 = [v176 contextAfterInput];
                      v178 = [v175 stringByAppendingString:v177];

                      v159 = v278;
                      v171 = v178;
                      v6 = v271;
                    }

                    if ([v159 inWordRange] == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_140;
                    }

                    v179 = [v159 inWordRange];
                    v180 = v159;
                    v181 = v179;
                    [v180 inWordRange];
                    v183 = v182 + v181;
                    if (v182 + v181 <= [v171 length])
                    {
                      v184 = [v171 substringToIndex:v183];
                      v159 = v278;
                      if ([v184 isEqualToString:v166])
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

                  v185 = [v269 inWord];
                  v186 = [v160 acceptedString];
                  if ([v185 isEqualToString:v186])
                  {
                  }

                  else
                  {
                    v187 = [v268 wordEntryType] & 0xC0;

                    if (!v187)
                    {
LABEL_131:
                      v188 = [v268 documentState];
                      v189 = [v188 contextAfterInput];
                      if (v189)
                      {
                      }

                      else
                      {
                        v190 = [(TIDocumentWordsAligned *)v6 lastWord];
                        v191 = [v160 acceptedCandidate];
                        v192 = [v191 candidate];
                        v193 = [v190 isEqualToString:v192];

                        if (v193)
                        {
                          v6 = v271;
                          v159 = v278;
                          goto LABEL_141;
                        }
                      }

                      [v265 appendString:@"<BOS>"];
                      v194 = [v268 documentState];
                      v195 = [v194 contextBeforeInput];
                      v196 = v195;
                      if (v195)
                      {
                        v197 = v195;
                      }

                      else
                      {
                        v197 = &stru_283FDFAF8;
                      }

                      v171 = [v265 stringByAppendingString:v197];

                      v198 = [MEMORY[0x277D6F350] documentStateWithContextBefore:v171 selectedText:0 contextAfter:0];
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
                  v171 = v269;
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

                  v3 = v255;
                  v14 = v257;
                  v16 = v263;
                  v15 = v268;
                  goto LABEL_147;
                }
              }
            }

            v199 = [v15 documentState];
            v200 = [v199 contextAfterInput];

            if (!v200)
            {
              [(TIDocumentWordsAligned *)v6 pushWordToDocument:v15];
            }

            v16 = v263;
LABEL_147:
            v201 = v254;

            v202 = 1;
            goto LABEL_230;
          }

          if ((([v135 count] != 0) & v256) != 1)
          {
            v205 = [v15 documentState];
            v206 = [v205 contextAfterInput];
            v207 = [v206 length];

            if (!v207)
            {
              if ([v264 actionType] || !-[TITypingSessionAligned isNewLineScenarioWithCurrentWord:andPreviousWord:](self, "isNewLineScenarioWithCurrentWord:andPreviousWord:", v15, v264))
              {
                v208 = [v15 documentState];
                v209 = [v208 contextBeforeInput];
                v210 = [(TIDocumentWordsAligned *)v6 deleteWordsUpToContext:v209];
              }

              [(TIDocumentWordsAligned *)v6 pushWordToDocument:v15];
            }

            v202 = 1;
            goto LABEL_228;
          }

          v149 = [v135 firstObject];
          v150 = [v15 documentState];
          v151 = [v150 contextAfterInput];
          if (v151)
          {
            v152 = v151;
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

            v150 = [v15 documentState];
            v152 = [v150 contextBeforeInput];
            v153 = [(TIDocumentWordsAligned *)v6 deleteWordsUpToContext:v152];
          }

LABEL_190:
          v290 = 0u;
          v291 = 0u;
          v288 = 0u;
          v289 = 0u;
          v222 = [v15 allKeyboardInputs];
          v223 = [v222 countByEnumeratingWithState:&v288 objects:v302 count:16];
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
                  objc_enumerationMutation(v222);
                }

                if ([*(*(&v288 + 1) + 8 * k) isBackspace])
                {
                  v227 = 1;
                  goto LABEL_200;
                }
              }

              v224 = [v222 countByEnumeratingWithState:&v288 objects:v302 count:16];
              if (v224)
              {
                continue;
              }

              break;
            }

            v227 = 0;
LABEL_200:
            v3 = v255;
          }

          else
          {
            v227 = 0;
          }

          v228 = [v15 acceptedCandidate];
          v6 = v271;
          v256 = [v228 isContinuousPathConversion];
          if (v256)
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
              v230 = [v264 actionType];

              if (v230 != 1)
              {
                v256 = 1;
                v229 = v15;
LABEL_226:
                [(TIDocumentWordsAligned *)v6 pushWordToDocument:v229];
                goto LABEL_227;
              }
            }

            [v149 addUserEdit:v15];
            v231 = [v149 editedEntry];
            [v231 setExtendsPriorWord:1];

            [v149 setEditActionType:{objc_msgSend(v264, "actionType")}];
            v232 = (objc_opt_respondsToSelector() & 1) != 0 && [v264 performSelector:sel_extendsPriorWord] != 0;
            [v149 setEditActionExtendsPriorWord:v232];
            if (![v153 count])
            {
              v256 = 0;
              v6 = v271;
LABEL_227:

              v202 = 1;
              v14 = v257;
              goto LABEL_228;
            }

            [v149 setDeleted:0];
            v286 = 0u;
            v287 = 0u;
            v284 = 0u;
            v285 = 0u;
            v228 = [v149 allEdits];
            v233 = [v228 countByEnumeratingWithState:&v284 objects:v301 count:16];
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
                    objc_enumerationMutation(v228);
                  }

                  [*(*(&v284 + 1) + 8 * m) setDeleted:0];
                }

                v234 = [v228 countByEnumeratingWithState:&v284 objects:v301 count:16];
              }

              while (v234);
              v229 = v149;
              v3 = v255;
            }

            else
            {
              v229 = v149;
            }

            v6 = v271;
          }

          goto LABEL_226;
        }
      }

      else
      {
      }

      v256 |= [v264 actionType] == 1;
      goto LABEL_60;
    }

    v269 = 0;
    v215 = 0;
    v264 = 0;
    v14 = 0;
LABEL_233:
    v237 = v14;
    v238 = [(TIDocumentWordsAligned *)v6 wordsCount];
    [(TITypingSessionAligned *)self setFirstCPEntryIndex:-1];
    v239 = v215;
    if (v238 >= 1)
    {
      v240 = 0;
      v241 = v238 & 0x7FFFFFFF;
      do
      {
        v242 = [(TIDocumentWordsAligned *)v271 inDocumentWordsStack];
        v243 = [v242 objectAtIndexedSubscript:v240];

        if ([v243 origin] != 1 || (objc_msgSend(v243, "allEdits"), v244 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v244, "firstObject"), v245 = objc_claimAutoreleasedReturnValue(), v243, v244, (v243 = v245) != 0))
        {
          v246 = [TITypingSessionAligned alignedEntryForWord:v243];
          v247 = [v246 completeString];
          v248 = [v247 length];

          if (v248)
          {
            [(NSArray *)v252 addObject:v246];
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
    self->_alignedEntries = v252;

    v3 = v255;
  }

  v250 = *MEMORY[0x277D85DE8];
}

- (id)textToAppendForEntry:(id)a3 sessionIndx:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (!a4)
  {
    goto LABEL_4;
  }

  v7 = [v5 originalWord];
  if ([v7 isPunctuationEntryFollowingAWord])
  {
    v8 = [v6 originalWord];
    v9 = [v8 acceptedString];
    v10 = [v9 length];

    if (v10 <= 1)
    {
LABEL_4:
      v11 = [v6 expectedString];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v6 expectedString];
  v11 = [v12 stringWithFormat:@" %@", v13];

LABEL_7:

  return v11;
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
  v3 = [(TITypingSessionAligned *)self alignedEntries];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke;
  v18[3] = &unk_2787309C8;
  v18[4] = self;
  v18[5] = &v21;
  v18[6] = v19;
  [v3 enumerateObjectsUsingBlock:v18];

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
  v5 = [(TITypingSessionAligned *)self alignedEntries];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__TITypingSessionAligned_getAlignedTextAndConfidence__block_invoke_3;
  v9[3] = &unk_278730A18;
  v10 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v9];

  objc_storeStrong(&self->_completeText, v13[5]);
  v7 = [(TITypingSessionAligned *)self alignedEntries];
  v8 = [v7 lastObject];

  self->_success = [v8 inSessionAlignmentConfidence] == 3;
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

- (BOOL)compareForConfidenceContextA:(id)a3 contextB:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v5 stringByTrimmingCharactersInSet:v7];

    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [v6 stringByTrimmingCharactersInSet:v9];

    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v8 componentsSeparatedByCharactersInSet:v11];

    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [v10 componentsSeparatedByCharactersInSet:v13];

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

- (TITypingSessionAligned)initWithSession:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TITypingSessionAligned;
  v5 = [(TITypingSessionAligned *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(TITypingSessionAligned *)v5 computeAlignedWordsFromSession:v4];
    v7 = [v4 layouts];
    layouts = v6->_layouts;
    v6->_layouts = v7;

    v9 = [v4 locale];
    locale = v6->_locale;
    v6->_locale = v9;

    [(TITypingSessionAligned *)v6 getAlignedTextAndConfidence];
  }

  return v6;
}

- (id)restrictedAlignedSessionWithWordLimit:(unint64_t)a3
{
  v5 = [(TITypingSessionAligned *)self alignedEntries];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v7 = self;
  }

  else
  {
    v7 = objc_alloc_init(TITypingSessionAligned);
    v8 = [(TITypingSessionAligned *)self alignedEntries];
    v9 = [v8 subarrayWithRange:{0, a3}];
    [(TITypingSessionAligned *)v7 setAlignedEntries:v9];

    v10 = [(TITypingSessionAligned *)self alignedText];
    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v10 componentsSeparatedByCharactersInSet:v11];

    v13 = [v12 count];
    if (v13 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 subarrayWithRange:{0, v14}];
    v16 = [(TITypingSessionAligned *)self layouts];
    layouts = v7->_layouts;
    v7->_layouts = v16;

    v18 = [v15 componentsJoinedByString:@" "];
    alignedText = v7->_alignedText;
    v7->_alignedText = v18;

    v20 = [(TITypingSessionAligned *)self locale];
    locale = v7->_locale;
    v7->_locale = v20;

    v7->_success = [(TITypingSessionAligned *)self success];
    v22 = [(TITypingSessionAligned *)v7 alignedText];
    v23 = [v22 length];
    v24 = [(TITypingSessionAligned *)self highConfAlignedSubSegment];
    if (v23 >= [v24 length])
    {
      [(TITypingSessionAligned *)self highConfAlignedSubSegment];
    }

    else
    {
      [(TITypingSessionAligned *)v7 alignedText];
    }
    v25 = ;
    highConfAlignedSubSegment = v7->_highConfAlignedSubSegment;
    v7->_highConfAlignedSubSegment = v25;

    v27 = [(TITypingSessionAligned *)self firstCPEntryIndex]< a3 && [(TITypingSessionAligned *)self containsCPEntries];
    v7->_containsCPEntries = v27;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  alignedEntries = self->_alignedEntries;
  v5 = a3;
  [v5 encodeObject:alignedEntries forKey:@"alignedEntries"];
  [v5 encodeObject:self->_alignedText forKey:@"alignedText"];
  [v5 encodeObject:self->_highConfAlignedSubSegment forKey:@"highConfAlignedSubSegment"];
  [v5 encodeBool:self->_success forKey:@"success"];
  [v5 encodeObject:self->_layouts forKey:@"layouts"];
  [v5 encodeObject:self->_locale forKey:@"locale"];
  [v5 encodeBool:self->_containsCPEntries forKey:@"containsCPEntries"];
}

- (TITypingSessionAligned)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TITypingSessionAligned;
  v5 = [(TITypingSessionAligned *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"alignedEntries"];
    alignedEntries = v5->_alignedEntries;
    v5->_alignedEntries = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alignedText"];
    alignedText = v5->_alignedText;
    v5->_alignedText = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"highConfAlignedSubSegment"];
    highConfAlignedSubSegment = v5->_highConfAlignedSubSegment;
    v5->_highConfAlignedSubSegment = v13;

    v5->_success = [v4 decodeBoolForKey:@"success"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"layouts"];
    layouts = v5->_layouts;
    v5->_layouts = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v20;

    v5->_containsCPEntries = [v4 decodeBoolForKey:@"containsCPEntries"];
  }

  return v5;
}

+ (id)resolveBackspacesInKeyboardInputs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v4 lastObject];
        if (v11 && [v10 isBackspace] && (objc_msgSend(v11, "isBackspace") & 1) == 0)
        {
          [v4 removeLastObject];
        }

        else
        {
          [v4 addObject:v10];
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

  return v4;
}

+ (id)completeStringFromWordEntry:(id)a3 leadingInputs:(id)a4 trailingInputs:(id)a5 followsContinuousPath:(BOOL)a6
{
  v6 = a6;
  v59 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 acceptedCandidate];
  if ([v9 isPeriodFromDoubleSpaceEntry])
  {
    v13 = @". ";
    goto LABEL_54;
  }

  v47 = v10;
  v48 = v6;
  if (!v10)
  {
    v18 = &stru_283FDFAF8;
    goto LABEL_20;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = v10;
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
        v22 = [v20 string];
        v21 = [(__CFString *)v18 stringByAppendingString:v22];

        v18 = v22;
      }

      v18 = v21;
    }

    v16 = [v14 countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v16);
LABEL_19:

  v6 = v48;
LABEL_20:
  v23 = [v12 candidate];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
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

  if ([v12 isContinuousPathConversion])
  {
    if ([(__CFString *)v18 length])
    {
      v28 = [(__CFString *)v26 characterAtIndex:0];
      if (v28 == [(__CFString *)v18 characterAtIndex:[(__CFString *)v18 length]- 1])
      {
        v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v30 = [v29 characterIsMember:v28];

        if (v30)
        {
          v31 = [(__CFString *)v26 substringFromIndex:1];

          v26 = v31;
        }
      }
    }
  }

  if (!-[__CFString length](v18, "length") && v6 && ([v12 isMecabraCandidate] & 1) == 0)
  {
    if ([(__CFString *)v26 length])
    {
      v32 = [(__CFString *)v26 characterAtIndex:0];
      v33 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      LOBYTE(v32) = [v33 characterIsMember:v32];

      if ((v32 & 1) == 0)
      {
        v34 = [(__CFString *)v18 stringByAppendingString:@" "];

        v18 = v34;
      }
    }
  }

  v13 = [(__CFString *)v18 stringByAppendingString:v26];

  if (v11)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v46 = v11;
    v35 = v11;
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

          v41 = [*(*(&v49 + 1) + 8 * v39) string];
          v13 = [(__CFString *)v40 stringByAppendingString:v41];

          ++v39;
          v40 = v13;
        }

        while (v37 != v39);
        v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v37);
    }

    v11 = v46;
    LOBYTE(v6) = v48;
  }

  if ([v9 unfinishedWordEntryTreatment] != 1 || v6)
  {
    if ([v9 unfinishedWordEntryTreatment] == 2 && (-[__CFString endsInWhitespace](v13, "endsInWhitespace") & 1) == 0)
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

  v10 = v47;
LABEL_54:

  v44 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)alignedPathTouchesForWord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TIWordEntryAligned);
  v5 = [MEMORY[0x277CBEB18] array];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__8322;
  v27[4] = __Block_byref_object_dispose__8323;
  v28 = 0;
  v6 = [v3 allTouches];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__TITypingSessionAligned_alignedPathTouchesForWord___block_invoke;
  v24[3] = &unk_278730A90;
  v26 = v27;
  v7 = v5;
  v25 = v7;
  [v6 enumerateObjectsUsingBlock:v24];

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
  v10 = [v3 editedEntry];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v3;
  }

  v13 = v12;

  v14 = [v13 acceptedString];
  [(TIWordEntryAligned *)v4 setExpectedString:v14];

  v15 = [v3 allKeyboardInputs];
  v16 = +[TITypingSessionAligned completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:](TITypingSessionAligned, "completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:", v13, v15, 0, [v13 followsContinuousPath]);
  [(TIWordEntryAligned *)v4 setCompleteString:v16];

  [(TIWordEntryAligned *)v4 setOriginalWord:v3];
  [v3 setOriginalWordInAlignment:1];

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

+ (id)alignedEntryForWord:(id)a3
{
  v3 = a3;
  v4 = [v3 acceptedCandidate];
  v5 = [v4 isContinuousPathConversion];

  if (v5)
  {
    v6 = [TITypingSessionAligned alignedPathTouchesForWord:v3];
    goto LABEL_32;
  }

  v6 = objc_alloc_init(TIWordEntryAligned);
  v7 = [v3 allKeyboardInputs];
  v8 = [TITypingSessionAligned resolveBackspacesInKeyboardInputs:v7];

  v9 = [v3 inputTriggeredTextAccepted];

  if (v9)
  {
    v10 = [v3 inputTriggeredTextAccepted];
    [v8 removeObject:v10];
  }

  v11 = [v3 editedEntry];

  if (v11)
  {
    if ([v3 editActionType] == 2 && (objc_msgSend(v3, "editActionExtendsPriorWord") & 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      v11 = [v3 editedEntry];
      if (([v11 extendsPriorWord] & 1) == 0)
      {

LABEL_25:
        v28 = [v3 editedEntry];
        v29 = [v28 acceptedString];
        [(TIWordEntryAligned *)v6 setExpectedString:v29];

        goto LABEL_26;
      }

      v12 = 1;
    }

    v13 = [v3 editedEntry];
    v14 = [v13 allKeyboardInputs];
    v15 = [v14 count];

    if (v12)
    {
    }

    if (v15)
    {
      v16 = [v3 editedEntry];
      v17 = [v16 allKeyboardInputs];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = [v3 editedEntry];
          v21 = [v20 allKeyboardInputs];
          v22 = [v21 objectAtIndexedSubscript:v19];

          v23 = [v3 editedEntry];
          v24 = [v23 inputTriggeredTextAccepted];

          if (v22 != v24)
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
          v25 = [v3 editedEntry];
          v26 = [v25 allKeyboardInputs];
          v27 = [v26 count];
        }

        while (v27 > v19);
      }
    }

    goto LABEL_25;
  }

  v28 = [v3 acceptedString];
  [(TIWordEntryAligned *)v6 setExpectedString:v28];
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
  v34 = [v3 editedEntry];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v3;
  }

  v37 = v36;

  v38 = [v37 inputTriggeredTextAccepted];

  if (v38)
  {
    v39 = [v37 inputTriggeredTextAccepted];
    [v32 addObject:v39];
  }

  v40 = +[TITypingSessionAligned completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:](TITypingSessionAligned, "completeStringFromWordEntry:leadingInputs:trailingInputs:followsContinuousPath:", v37, v33, v32, [v37 followsContinuousPath]);
  [(TIWordEntryAligned *)v6 setCompleteString:v40];

  [(TIWordEntryAligned *)v6 setOriginalWord:v3];
  [v3 setOriginalWordInAlignment:1];

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