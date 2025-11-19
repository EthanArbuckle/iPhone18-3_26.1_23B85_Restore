@interface TIWordSearchChinesePhonetic
+ (id)pinyinCharacterSetWithTones;
- (id)candidatesCacheKeyForOperation:(id)a3;
- (id)uncachedCandidatesForOperation:(id)a3;
- (int)mecabraInputMethodType;
- (unsigned)nameReadingPairGenerationMode;
- (void)clearCacheForInputString:(id)a3 keyboardInput:(id)a4 unambiguousSyllableCount:(unint64_t)a5 selectedDisambiguationCandidateIndex:(unint64_t)a6;
- (void)dealloc;
- (void)setCustomDialectLanguageModel:(id)a3;
- (void)updateFuzzyPinyinSettings;
- (void)updateMecabraState;
- (void)updateShuangpinTypeWithReanalysisMode:(BOOL)a3;
@end

@implementation TIWordSearchChinesePhonetic

- (id)uncachedCandidatesForOperation:(id)a3
{
  v150 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D6FF00]);
  v6 = v4;
  v7 = [v6 inputString];
  v8 = [v6 segmentBreakIndex];
  v9 = [v6 target];
  v124 = [v6 geometryModelData];
  v132 = v6;
  v122 = [v6 unambiguousSyllableCount];
  context = objc_autoreleasePoolPush();
  v10 = [objc_opt_class() pinyinCharacterSetWithTones];
  v11 = [v7 rangeOfCharacterFromSet:v10];

  obj = arc4random();
  v128 = v11;
  if ([v7 length] || (objc_msgSend(v132, "keyboardInput"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v7 substringFromIndex:v8];
      v14 = [v7 substringToIndex:v8];

      v7 = v14;
    }

    v125 = v13;
    v15 = self;
    v16 = [(TIWordSearch *)self addFacemarkCandidatesToResultSet:v5 forInput:v7];
    v17 = v9;
    if (v16)
    {
      v18 = 0;
      v19 = 0;
LABEL_13:

      v21 = v7;
      v22 = 0;
      v23 = 1;
      v127 = v21;
LABEL_14:
      v9 = v17;
LABEL_15:
      self = v15;
      goto LABEL_16;
    }

    v19 = [TIKeyboardInputManagerChinese GB18030CandidateFromString:v7];
    if ([v19 length])
    {
      v20 = 0;
      v18 = v19;
LABEL_12:
      [v5 addSyntheticMecabraCandidateWithSurface:v18 input:v7];
      v18 = v20;
      goto LABEL_13;
    }

    v18 = [TIKeyboardInputManagerChinese unicodeCandidateFromString:v7];
    if ([v18 length])
    {
      v20 = v18;
      goto LABEL_12;
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v40 = -[TIWordSearchChinesePhonetic mecabraAnalysisOptionsWithAutocorrectionEnabled:firstSyllableLocked:reanalysisMode:hardwareKeyboardMode:predictionEnabled:](v15, "mecabraAnalysisOptionsWithAutocorrectionEnabled:firstSyllableLocked:reanalysisMode:hardwareKeyboardMode:predictionEnabled:", 0, v122 != 0, [v132 reanalysisMode], objc_msgSend(v132, "hardwareKeyboardMode"), objc_msgSend(v132, "predictionEnabled"));
    v41 = [v132 logger];
    [v41 markTime:2];

    v42 = [v132 keyboardInput];

    if (v42)
    {
      kdebug_trace();
      v43 = kac_get_log();
      v44 = os_signpost_id_make_with_pointer(v43, obj);
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v45 = v44;
        if (os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_26D460000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v45, "kbdCPMecabraCandidates", " enableTelemetry=YES ", buf, 2u);
        }
      }

      v46 = [v132 keyboardInput];
      v47 = [v46 asSearchString];

      v48 = [(TIWordSearch *)v15 mecabraEnvironment];
      v49 = [v132 keyboardInput];
      v50 = [v48 analyzeInput:v49 options:v40];

      v51 = v47;
    }

    else
    {
      v113 = [(TIWordSearch *)v15 mecabraEnvironment];
      [v113 setGeometryModel:v17 modelData:v124];

      v114 = [(TIWordSearch *)v15 mecabraEnvironment];
      v50 = [v114 analyzeString:v7 options:v40];

      v51 = v7;
    }

    v21 = v51;
    if ((v50 & 1) == 0)
    {
      v16 = 0;
      v22 = 0;
      v23 = 1;
      v127 = v51;
      goto LABEL_14;
    }

    v36 = v125;
  }

  else
  {
    v35 = v7;
    v21 = v35;
    v36 = 0;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v125 = 0;
      v16 = 0;
      v22 = 0;
      v23 = 1;
      v127 = v35;
      goto LABEL_16;
    }

    v15 = self;
    v17 = v9;
  }

  v125 = v36;
  v22 = 0;
  if (([v132 isCancelled] & 1) == 0)
  {
    v52 = 0;
    v127 = v21;
    while (1)
    {
      while (1)
      {
        [(TIWordSearch *)v15 mecabra];
        NextCandidate = MecabraGetNextCandidate();
        if (!NextCandidate)
        {
          goto LABEL_45;
        }

        v54 = NextCandidate;
        if (MecabraCandidateGetType() != 6)
        {
          break;
        }

        [v5 addMecabraProactiveCandidate:v54 triggerSourceType:0];
        if ([v132 isCancelled])
        {
          goto LABEL_45;
        }
      }

      v55 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v54];
      [v5 addMecabraCandidate:v55 mecabraCandidateRef:v54];
      if (v52)
      {
        goto LABEL_62;
      }

      if (-[TIWordSearchChinesePhonetic tenKeyPinyinEnabled](v15, "tenKeyPinyinEnabled") && [v21 length])
      {
        v56 = [MEMORY[0x277D6F448] convertedInputFromMecabraCandidate:v54];

        v57 = [v56 length];
        v58 = [v21 length];
        if (v58 > v57)
        {
          v59 = [TIKeyboardInputManagerChinesePhonetic stringFallBackForTenKeyInput:v21 range:v57, v58 - v57];
          v60 = v59;
          if (v57)
          {
            v61 = [v56 stringByAppendingString:v59];
          }

          else
          {
            v61 = v59;
          }

          v127 = v61;

LABEL_62:
          v52 = 1;
          if (!v22)
          {
            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v52 = 1;
        v127 = v56;
        if (!v22)
        {
LABEL_70:
          v62 = [v55 candidate];
          v22 = [v62 compare:v127] == 0;

          goto LABEL_71;
        }
      }

      else
      {
        v52 = 0;
        if (!v22)
        {
          goto LABEL_70;
        }
      }

LABEL_63:
      v22 = 1;
LABEL_71:

      if ([v132 isCancelled])
      {
        goto LABEL_45;
      }
    }
  }

  v127 = v21;
LABEL_45:
  v37 = [v5 proactiveTriggers];
  v38 = [v37 count];

  if (v38)
  {
    v9 = v17;
    if (!TICanLogMessageAtLevel())
    {
      v23 = 0;
      v16 = 0;
      goto LABEL_15;
    }

    v39 = TIOSLogFacility();
    self = v15;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v115 = MEMORY[0x277CCACA8];
      v116 = [v5 proactiveTriggers];
      v117 = [v115 stringWithFormat:@"%s ProactiveQuickType:TI: Mecabra found conversion proactive triggers: %@", "-[TIWordSearchChinesePhonetic uncachedCandidatesForOperation:]", v116];
      *buf = 138412290;
      v149 = v117;
      _os_log_debug_impl(&dword_26D460000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v23 = 0;
    v16 = 0;
  }

  else
  {
    v23 = 0;
    v16 = 0;
    v9 = v17;
    self = v15;
  }

LABEL_16:
  v24 = [v132 keyboardInput];

  if (v24)
  {
    kdebug_trace();
    v25 = kac_get_log();
    v26 = os_signpost_id_make_with_pointer(v25, obj);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26D460000, v25, OS_SIGNPOST_INTERVAL_END, v27, "kbdCPMecabraCandidates", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  v28 = v132;
  v29 = [v132 logger];
  [v29 markTime:3];

  v126 = [v5 candidates];
  v30 = [v126 count];
  if (-[TIWordSearchChinesePhonetic tenKeyPinyinEnabled](self, "tenKeyPinyinEnabled") && !v30 && [v21 length])
  {
    v31 = +[TIKeyboardInputManagerChinesePhonetic stringFallBackForTenKeyInput:range:](TIKeyboardInputManagerChinesePhonetic, "stringFallBackForTenKeyInput:range:", v21, 0, [v21 length]);

    v127 = v31;
  }

  if (([v132 isCancelled] & 1) == 0)
  {
    if (!v22)
    {
      if (-[TIWordSearchChinesePhonetic mecabraInputMethodType](self, "mecabraInputMethodType") == 5 && [v21 length] <= 4 && objc_msgSend(v21, "length"))
      {
        if (v30 >= 6)
        {
          v32 = 6;
        }

        else
        {
          v32 = v30;
        }

        if (v30 < 7)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0;
          while (1)
          {
            v34 = v33;
            v33 = [v126 objectAtIndex:v32];

            if (![v33 isEmojiCandidate])
            {
              break;
            }

            if (v30 == ++v32)
            {
              v32 = v30;
              break;
            }
          }
        }

        [v5 insertSyntheticMecabraCandidateWithSurface:v127 input:v127 atIndex:v32];

        v28 = v132;
      }

      else if ([v127 length])
      {
        [v5 addSyntheticMecabraCandidateWithSurface:v127 input:v127];
      }
    }

    v63 = v128 != 0x7FFFFFFFFFFFFFFFLL || v16;
    if ((v63 & 1) == 0)
    {
      v64 = [v127 _stringByConvertingFromHalfWidthToFullWidth];
      if (([v21 isEqualToString:v64] & 1) == 0)
      {
        [v5 addSyntheticMecabraCandidateWithSurface:v64 input:v127 isExtension:1];
      }
    }
  }

  if (([v28 isCancelled] & 1) == 0 && -[TIWordSearchChinesePhonetic tenKeyPinyinEnabled](self, "tenKeyPinyinEnabled") && ((v23 | objc_msgSend(v28, "reanalysisMode")) & 1) == 0)
  {
    if (([v28 regenerateDisambiguationCandidates] & 1) != 0 || (objc_msgSend(v28, "disambiguationCandidates"), v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "count"), v65, !v66))
    {
      v121 = v21;
      if (v122)
      {
        v118 = v9;
        v119 = v5;
        v120 = self;
        [(TIWordSearch *)self mecabra];
        SyllableSequences = MecabraCreateSyllableSequences();
        v129 = [MEMORY[0x277CBEB58] set];
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        obja = SyllableSequences;
        v69 = [obja countByEnumeratingWithState:&v137 objects:v146 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v138;
          do
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v138 != v71)
              {
                objc_enumerationMutation(obja);
              }

              v73 = [*(*(&v137 + 1) + 8 * i) componentsSeparatedByString:@"' "];
              v74 = [v73 count];
              if (v74 > [v28 unambiguousSyllableCount])
              {
                v75 = [v73 objectAtIndexedSubscript:{objc_msgSend(v28, "unambiguousSyllableCount")}];
                v76 = [v75 componentsSeparatedByString:@" "];
                v77 = [v76 firstObject];
                v78 = [v77 isEqualToString:@""]);

                if (v78)
                {
                  v79 = [v76 subarrayWithRange:{1, objc_msgSend(v76, "count") - 1}];

                  v76 = v79;
                }

                v80 = [v76 firstObject];
                if ([v80 hasPrefix:{@"(", "hasSuffix:", @")"}])
                {
                  v81 = [v80 substringWithRange:{1, objc_msgSend(v80, "length") - 2}];

                  v80 = v81;
                }

                if (v80 && ([v80 isEqualToString:@"Mixed"] & 1) == 0)
                {
                  [v129 addObject:v80];
                }

                v28 = v132;
              }
            }

            v70 = [obja countByEnumeratingWithState:&v137 objects:v146 count:16];
          }

          while (v70);
        }

        v82 = [v129 allObjects];
        v83 = [v82 sortedArrayUsingComparator:&__block_literal_global_67];

        v84 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v83, "count")}];
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v85 = v83;
        v86 = [v85 countByEnumeratingWithState:&v133 objects:v145 count:16];
        v9 = v118;
        v21 = v121;
        if (v86)
        {
          v87 = v86;
          v88 = *v134;
          do
          {
            for (j = 0; j != v87; ++j)
            {
              if (*v134 != v88)
              {
                objc_enumerationMutation(v85);
              }

              v90 = [MEMORY[0x277D6F468] candidateWithPinyinSyllable:*(*(&v133 + 1) + 8 * j)];
              [v84 addObject:v90];
            }

            v87 = [v85 countByEnumeratingWithState:&v133 objects:v145 count:16];
          }

          while (v87);
        }

        if ([v84 count])
        {
          v5 = v119;
          [v119 setDisambiguationCandidates:v84];
        }

        else
        {
          v101 = [v132 disambiguationCandidates];
          v5 = v119;
          [v119 setDisambiguationCandidates:v101];

          [v119 setSelectedDisambiguationCandidateIndex:{objc_msgSend(v132, "selectedDisambiguationCandidateIndex")}];
        }

        self = v120;

        v28 = v132;
      }

      else
      {
        v91 = self;
        v92 = v5;
        v93 = [MEMORY[0x277CBEB18] array];
        v94 = v91;
        [(TIWordSearch *)v91 mecabra];
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v95 = MecabraCreatePinyinSyllableArray();
        v96 = [v95 countByEnumeratingWithState:&v141 objects:v147 count:16];
        if (v96)
        {
          v97 = v96;
          v98 = *v142;
          do
          {
            for (k = 0; k != v97; ++k)
            {
              if (*v142 != v98)
              {
                objc_enumerationMutation(v95);
              }

              v100 = [MEMORY[0x277D6F468] candidateWithPinyinSyllable:*(*(&v141 + 1) + 8 * k)];
              [v93 addObject:v100];
            }

            v97 = [v95 countByEnumeratingWithState:&v141 objects:v147 count:16];
          }

          while (v97);
        }

        v5 = v92;
        [v92 setDisambiguationCandidates:v93];

        v28 = v132;
        self = v94;
        v21 = v121;
      }
    }

    else
    {
      v67 = [v28 disambiguationCandidates];
      [v5 setDisambiguationCandidates:v67];

      [v5 setSelectedDisambiguationCandidateIndex:{objc_msgSend(v28, "selectedDisambiguationCandidateIndex")}];
    }
  }

  if ([v125 length])
  {
    v102 = -[TIWordSearchChinesePhonetic mecabraAnalysisOptionsWithAutocorrectionEnabled:firstSyllableLocked:reanalysisMode:hardwareKeyboardMode:predictionEnabled:](self, "mecabraAnalysisOptionsWithAutocorrectionEnabled:firstSyllableLocked:reanalysisMode:hardwareKeyboardMode:predictionEnabled:", 0, v122 != 0, [v28 reanalysisMode], objc_msgSend(v28, "hardwareKeyboardMode"), 0);
    v103 = [v28 logger];
    [v103 markTime:2];

    v104 = [(TIWordSearch *)self mecabraEnvironment];
    LODWORD(v102) = [v104 analyzeString:v125 options:v102];

    if (v102)
    {
      while (([v28 isCancelled] & 1) == 0)
      {
        [(TIWordSearch *)self mecabra];
        v105 = MecabraGetNextCandidate();
        if (!v105)
        {
          break;
        }

        v106 = v105;
        if (MecabraCandidateGetType() != 6)
        {
          v107 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v106];
          [v28 setCandidateAfterSegmentBreak:v107];
          [v5 setCandidateAfterSegmentBreak:v107];
          v108 = [v5 candidateRefsDictionary];
          v109 = [v107 mecabraCandidatePointerValue];
          [v108 setObject:v106 forKey:v109];

          v28 = v132;
          break;
        }
      }
    }

    v110 = [v28 logger];
    [v110 markTime:3];
  }

  objc_autoreleasePoolPop(context);
  v111 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __62__TIWordSearchChinesePhonetic_uncachedCandidatesForOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 length];
  if (v6 == [v4 length])
  {
    v7 = [v5 compare:v4];
  }

  else
  {
    v8 = [v5 length];

    if (v8 > [v4 length])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)candidatesCacheKeyForOperation:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedDisambiguationCandidateIndex] == 0x7FFFFFFFFFFFFFFFLL;
  v5 = [v3 inputString];
  v6 = [v3 keyboardInput];
  v7 = [v3 unambiguousSyllableCount];
  v8 = [v3 reanalysisMode];
  v9 = [v3 predictionEnabled];
  v10 = [v3 segmentBreakIndex];

  v11 = GetCacheKey(v5, v6, v4, v7, v8, v9, v10);

  return v11;
}

- (void)clearCacheForInputString:(id)a3 keyboardInput:(id)a4 unambiguousSyllableCount:(unint64_t)a5 selectedDisambiguationCandidateIndex:(unint64_t)a6
{
  v9 = a6 == 0x7FFFFFFFFFFFFFFFLL;
  v10 = a4;
  v11 = a3;
  v13 = [(TIWordSearch *)self candidatesCache];
  v12 = GetCacheKey(v11, v10, v9, a5, 0, 0, 0x7FFFFFFFFFFFFFFFLL);

  [v13 removeObjectForKey:v12];
}

- (unsigned)nameReadingPairGenerationMode
{
  v2 = [(TIWordSearch *)self inputMode];
  v3 = [v2 variant];
  v4 = [v3 isEqualToString:@"Zhuyin"];

  if (v4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)dealloc
{
  [(TIWordSearch *)self completeOperationsInQueue];
  v3.receiver = self;
  v3.super_class = TIWordSearchChinesePhonetic;
  [(TIWordSearch *)&v3 dealloc];
}

- (int)mecabraInputMethodType
{
  v2 = [(TIWordSearch *)self inputMode];
  v3 = [v2 normalizedIdentifier];

  if ([v3 isEqualToString:@"zh_Hans-Pinyin"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"zh_Hans-Shuangpin") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"zh_Hans"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"zh_Hant-Pinyin"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"zh_Hant-Shuangpin") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"zh_Hant"))
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"zh_Hant-Zhuyin"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"yue_Hant-Phonetic"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateShuangpinTypeWithReanalysisMode:(BOOL)a3
{
  v5 = [(TIWordSearch *)self inputMode];
  v10 = [v5 normalizedIdentifier];

  if (([v10 isEqualToString:@"zh_Hans-Shuangpin"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"zh_Hant-Shuangpin"))
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277D6F470] sharedPreferencesController];
      v8 = [v7 valueForPreferenceKey:*MEMORY[0x277D6FA70]];

      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = [v8 integerValue];
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 != [(TIWordSearchChinesePhonetic *)self shuangpinType])
    {
      [(TIWordSearchChinesePhonetic *)self setShuangpinType:v6];
      v9 = [(TIWordSearch *)self mecabraEnvironment];
      [v9 setShuangpinType:v6];
    }
  }
}

- (void)setCustomDialectLanguageModel:(id)a3
{
  v7 = a3;
  if (-[TIWordSearch mecabra](self, "mecabra") && [v7 hasSuffix:@"Chinese.lm"])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v5, *MEMORY[0x277D82A38], 0}];
    [v4 addObject:v6];
    [(TIWordSearch *)self mecabra];
    MecabraSetAssetDataItemsForType();
  }
}

- (void)updateFuzzyPinyinSettings
{
  v3 = [(TIWordSearch *)self inputMode];
  v20 = [v3 normalizedIdentifier];

  if (([v20 isEqualToString:@"zh_Hans-Pinyin"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"zh_Hans-Shuangpin") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"zh_Hant-Pinyin") & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"zh_Hant-Shuangpin"))
  {
    v4 = [MEMORY[0x277D6F470] sharedPreferencesController];
    v5 = [v4 valueForKey:100];

    v6 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinEnabled];
    if (v5 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (v7 == [v5 BOOLValue])
      {
        v9 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinPairs];
        if (v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v8 = [v5 BOOLValue];
        v9 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinPairs];
        if (v8)
        {
LABEL_21:
          v14 = [MEMORY[0x277D6F470] sharedPreferencesController];
          v15 = [v14 valueForKey:102];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinPairs];
            v17 = [v15 isEqualToArray:v16];

            if (v17)
            {
              goto LABEL_26;
            }

            v18 = [v15 copy];
          }

          else
          {
            v18 = [MEMORY[0x277D6F338] defaultFuzzyPinyinPairs];
          }

          v19 = v18;

          v9 = v19;
LABEL_26:

          v10 = 1;
          v11 = 1;
          if (![(TIWordSearchChinesePhonetic *)self fuzzyPinyinEnabled])
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
      v9 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinPairs];
    }

    v10 = 0;
    v11 = 0;
    if ([(TIWordSearchChinesePhonetic *)self fuzzyPinyinEnabled])
    {
      goto LABEL_13;
    }

LABEL_12:
    v12 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinPairs];

    v11 = v10;
    if (v12 == v9)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_13:
    [(TIWordSearchChinesePhonetic *)self setFuzzyPinyinPairs:v9];
    [(TIWordSearchChinesePhonetic *)self setFuzzyPinyinEnabled:v11];
    [(TIWordSearch *)self mecabra];
    if ([(TIWordSearchChinesePhonetic *)self fuzzyPinyinEnabled])
    {
      v13 = [(TIWordSearchChinesePhonetic *)self fuzzyPinyinPairs];
      MecabraSetFuzzyPinyinPairs();
    }

    else
    {
      MecabraSetFuzzyPinyinPairs();
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchChinesePhonetic;
  [(TIWordSearch *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateUserWordEntries];
  [(TIWordSearch *)self updateDictionaryPaths];
}

+ (id)pinyinCharacterSetWithTones
{
  if (+[TIWordSearchChinesePhonetic pinyinCharacterSetWithTones]::__onceToken != -1)
  {
    dispatch_once(&+[TIWordSearchChinesePhonetic pinyinCharacterSetWithTones]::__onceToken, &__block_literal_global_899);
  }

  v3 = +[TIWordSearchChinesePhonetic pinyinCharacterSetWithTones]::__pinyinCharsWithTones;

  return v3;
}

uint64_t __58__TIWordSearchChinesePhonetic_pinyinCharacterSetWithTones__block_invoke()
{
  +[TIWordSearchChinesePhonetic pinyinCharacterSetWithTones]::__pinyinCharsWithTones = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"āáǎàēéěèìǐíīōòǒóūúǔùüǖǘǚǜĀÁǍÀĒÉĚÈÌǏÍĪÒǑÓŌÙǓÚŪǛǙǗǕÜ"];

  return MEMORY[0x2821F96F8]();
}

@end