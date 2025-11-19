@interface TIReporter
+ (id)detailedResultFileURLForTrial:(unint64_t)a3 withOptions:(id)a4;
+ (id)fileURLForTrial:(unint64_t)a3 withOptions:(id)a4;
+ (id)languageForOptions:(id)a3;
+ (id)textCorpusForOptions:(id)a3;
- (BOOL)shouldConcatenateTokensAtBoundaryError;
- (NSString)language;
- (NSString)localeIdentifierForLanguage;
- (NSString)textCorpus;
- (TIReporter)initWithBuildVersion:(id)a3;
- (id)alignedTypingSequenceForResult:(id)a3 keystrokeSegmentationMode:(unint64_t)a4;
- (id)alignedTypingSequenceForTransliteratedResult:(id)a3;
- (id)reportForTrial:(unint64_t)a3;
- (id)resultsForTrial:(unint64_t)a3;
- (id)summaryForTrial:(unint64_t)a3 dumpResultsToFile:(id)a4;
- (id)summaryOfAutocorrectionResultsFor:(id)a3 withBlock:(id)a4;
- (void)beginLogTrial;
- (void)collectAggdStatisticsForResult:(id)a3;
- (void)logResult:(id)a3;
@end

@implementation TIReporter

- (id)summaryOfAutocorrectionResultsFor:(id)a3 withBlock:(id)a4
{
  v158[24] = *MEMORY[0x277D85DE8];
  v89 = a3;
  v86 = a4;
  v88 = [MEMORY[0x277CBEB38] dictionary];
  v153 = 0;
  v154 = &v153;
  v155 = 0x2020000000;
  v156 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x2020000000;
  v152 = 0;
  v145 = 0;
  v146 = &v145;
  v147 = 0x2020000000;
  v148 = 0;
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  v132 = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 0;
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v128 = 0;
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v6 = objc_opt_new();
  v7 = [(TIReporter *)self options];
  v8 = [v7 objectForKey:@"MAX_PREDICTIONS_REPORTED"];
  v9 = v8;
  if (!v8)
  {
    v8 = @"0";
  }

  v10 = [(__CFString *)v8 intValue]> 0;

  v11 = [(TIReporter *)self options];
  v12 = [v11 objectForKey:@"MAX_INLINE_COMPLETIONS_REPORTED"];
  v13 = v12;
  if (!v12)
  {
    v12 = @"0";
  }

  v14 = [(__CFString *)v12 intValue]> 0;

  v15 = [(TIReporter *)self options];
  v16 = [v15 objectForKey:@"REPORT_AGGD_STATISTICS"];
  v17 = v16;
  if (!v16)
  {
    v16 = @"0";
  }

  v18 = [(__CFString *)v16 BOOLValue];

  v19 = [(TIReporter *)self options];
  v20 = [v19 objectForKey:@"LOG_DOCUMENT_CONTEXT"];
  v21 = v20;
  if (!v20)
  {
    v20 = MEMORY[0x277CBEC28];
  }

  v22 = [v20 BOOLValue];

  v23 = [(TIReporter *)self options];
  v24 = [v23 objectForKey:@"PREFERS_TRANSLITERATION"];
  v25 = v24;
  if (!v24)
  {
    v24 = @"0";
  }

  self->_isTransliterating = [(__CFString *)v24 BOOLValue];

  v26 = [(TIReporter *)self options];
  v27 = [v26 objectForKey:@"KEYSTROKE_SEGMENTATION_MODE"];

  if (v27)
  {
    v28 = [(TIReporter *)self options];
    v29 = [v28 objectForKey:@"KEYSTROKE_SEGMENTATION_MODE"];

    v30 = [v29 lowercaseString];
    v31 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v32 = [v30 stringByTrimmingCharactersInSet:v31];

    if ([v32 isEqualToString:@"none"])
    {
      v33 = 0;
    }

    else if ([v32 isEqualToString:@"typinglog"])
    {
      v33 = 1;
    }

    else if ([v32 isEqualToString:@"alignment"])
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
  }

  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __58__TIReporter_summaryOfAutocorrectionResultsFor_withBlock___block_invoke;
  v93[3] = &unk_279DA0BA0;
  v108 = 0;
  v96 = &v137;
  v93[4] = self;
  v97 = &v133;
  v98 = &v129;
  v99 = &v149;
  v100 = &v153;
  v101 = &v141;
  v102 = &v145;
  v107 = v33;
  v103 = &v125;
  v109 = v10;
  v110 = v22;
  v111 = v14;
  v34 = v6;
  v94 = v34;
  v104 = &v121;
  v105 = &v117;
  v106 = &v113;
  v112 = v18;
  v73 = v86;
  v95 = v73;
  [v89 enumerateResultsWithBlock:v93];
  fputc(10, *MEMORY[0x277D85DF8]);
  v35 = v134[3];
  v36 = v150[3];
  v37 = 1.0;
  if (v35 > v36)
  {
    v38 = v130[3];
    v37 = 0.0;
    v39 = __OFSUB__(v35, v38);
    v40 = v35 - v38;
    if (!((v40 < 0) ^ v39 | (v40 == 0)))
    {
      v37 = v40 / (v35 - v36);
    }
  }

  v41 = v154[3];
  v42 = v41;
  if (v41 < 1)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = v146[3] / v42;
  }

  if (v36 < 1)
  {
    v44 = 1.0;
  }

  else
  {
    v44 = v142[3] / v36;
  }

  v45 = 0.0;
  v46 = 0.0;
  if (v35 >= 1)
  {
    v46 = v126[3] / v35;
  }

  if (v41 >= 1)
  {
    v45 = v122[3] / v42;
  }

  v47 = v114[3];
  if (v47 < 1)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v118[3] / v47;
  }

  v49 = [MEMORY[0x277CBEB38] dictionary];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __58__TIReporter_summaryOfAutocorrectionResultsFor_withBlock___block_invoke_2;
  v90[3] = &unk_279DA0BC8;
  v91 = v34;
  v74 = v49;
  v92 = v74;
  v72 = v91;
  [v91 enumerateObjectsUsingBlock:v90];
  v157[0] = @"Language";
  v87 = [(TIReporter *)self language];
  v50 = v87;
  if (!v87)
  {
    v50 = &stru_287EC4808;
  }

  v158[0] = v50;
  v157[1] = @"TextCorpus";
  v85 = [(TIReporter *)self textCorpus];
  v51 = v85;
  if (!v85)
  {
    v51 = &stru_287EC4808;
  }

  v158[1] = v51;
  v157[2] = @"BuildVersion";
  v84 = [(TIReporter *)self buildVersion];
  v52 = v84;
  if (!v84)
  {
    v52 = &stru_287EC4808;
  }

  v158[2] = v52;
  v157[3] = @"Options";
  v53 = [(TIReporter *)self options];
  v83 = v53;
  v54 = MEMORY[0x277CBEC10];
  if (v53)
  {
    v54 = v53;
  }

  v158[3] = v54;
  v157[4] = @"KeystrokeCount";
  v82 = [MEMORY[0x277CCABB0] numberWithInteger:v138[3]];
  v158[4] = v82;
  v157[5] = @"CharacterCount";
  v81 = [MEMORY[0x277CCABB0] numberWithInteger:v134[3]];
  v158[5] = v81;
  v157[6] = @"DeleteCount";
  v80 = [MEMORY[0x277CCABB0] numberWithInteger:v126[3]];
  v158[6] = v80;
  v157[7] = @"DeleteRatio";
  *&v55 = v46;
  v79 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
  v158[7] = v79;
  v157[8] = @"InsertedCharacterCount";
  v78 = [MEMORY[0x277CCABB0] numberWithInteger:v130[3]];
  v158[8] = v78;
  v158[9] = MEMORY[0x277CBEBF8];
  v157[9] = @"Results";
  v157[10] = @"KeystrokeSavingsRatio";
  *&v56 = v37;
  v77 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  v158[10] = v77;
  v157[11] = @"WordCount";
  v76 = [MEMORY[0x277CCABB0] numberWithInteger:v154[3]];
  v158[11] = v76;
  v157[12] = @"WordErrorCount";
  v75 = [MEMORY[0x277CCABB0] numberWithInteger:v154[3] - v146[3]];
  v158[12] = v75;
  v157[13] = @"WordAccuracy";
  *&v57 = v43;
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
  v158[13] = v58;
  v157[14] = @"SeparatorCount";
  v59 = [MEMORY[0x277CCABB0] numberWithInteger:v150[3]];
  v158[14] = v59;
  v157[15] = @"SeparatorErrorCount";
  v60 = [MEMORY[0x277CCABB0] numberWithInteger:v150[3] - v142[3]];
  v158[15] = v60;
  v157[16] = @"SeparatorAccuracy";
  *&v61 = v44;
  v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
  v158[16] = v62;
  v158[17] = @"1.14";
  v157[17] = @"ActVersion";
  v157[18] = @"TotalRevisionCount";
  v63 = [MEMORY[0x277CCABB0] numberWithInteger:v122[3]];
  v158[18] = v63;
  v157[19] = @"TotalRevisionRate";
  *&v64 = v45;
  v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
  v158[19] = v65;
  v157[20] = @"TotalBadAutocorrectionCount";
  v66 = [MEMORY[0x277CCABB0] numberWithInteger:v118[3]];
  v158[20] = v66;
  v158[21] = v74;
  v157[21] = @"AutocorrectionTypeCounts";
  v157[22] = @"TotalAutocorrectionCount";
  v67 = [MEMORY[0x277CCABB0] numberWithInteger:v114[3]];
  v158[22] = v67;
  v157[23] = @"AutoCorrectionRevisionRate";
  *&v68 = v48;
  v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  v158[23] = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:24];
  [v88 addEntriesFromDictionary:v70];

  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v133, 8);
  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(&v141, 8);
  _Block_object_dispose(&v145, 8);
  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v153, 8);

  return v88;
}

void __58__TIReporter_summaryOfAutocorrectionResultsFor_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v210 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  fprintf(*MEMORY[0x277D85DF8], "Processing result %lu\r", *(a1 + 152) + 1);
  v156 = [v3 intendedTransliteration];

  v5 = [v3 numberOfTouches];
  *(*(*(a1 + 56) + 8) + 24) += [v5 integerValue];

  v6 = [*(a1 + 32) localeIdentifierForLanguage];
  context = v4;
  v148 = v3;
  if ([v6 isEqualToString:@"ko_KR"])
  {
    v7 = [v3 intended];
    v8 = [v7 componentsJoinedByString:&stru_287EC4808];
    v9 = [TITesterUtils decomposeHangulSequence:v8];
  }

  else
  {
    v7 = [v3 intended];
    v9 = [v7 componentsJoinedByString:&stru_287EC4808];
  }

  v146 = v9;
  *(*(*(a1 + 64) + 8) + 24) += [v9 length];
  v149 = [MEMORY[0x277CCACA8] string];
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v10 = [v3 inserted];
  v11 = [v10 countByEnumeratingWithState:&v196 objects:v209 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v197;
    do
    {
      v14 = 0;
      v15 = v149;
      do
      {
        if (*v197 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v196 + 1) + 8 * v14) componentsJoinedByString:&stru_287EC4808];
        v17 = [v15 stringByAppendingString:v16];

        ++v14;
        v15 = v17;
      }

      while (v12 != v14);
      v149 = v17;
      v12 = [v10 countByEnumeratingWithState:&v196 objects:v209 count:16];
    }

    while (v12);
  }

  v18 = [v149 stringByReplacingOccurrencesOfString:@"\\b" withString:@"\b"];
  v19 = [v18 stringByReplacingOccurrencesOfString:@"\\B" withString:@"\b"];
  *(*(*(a1 + 72) + 8) + 24) += [v19 length];

  [v148 intended];
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  obj = v195 = 0u;
  v20 = [obj countByEnumeratingWithState:&v192 objects:v208 count:16];
  v21 = 0x277CCA000uLL;
  if (!v20)
  {
    v164 = 0;
    v166 = 0;
    goto LABEL_25;
  }

  v22 = v20;
  v164 = 0;
  v166 = 0;
  v23 = *v193;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v193 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v192 + 1) + 8 * i);
      v26 = [*(v21 + 2304) whitespaceAndNewlineCharacterSet];
      v27 = [v25 stringByTrimmingCharactersInSet:v26];
      if ([v27 length])
      {
        v28 = [*(v21 + 2304) punctuationCharacterSet];
        v29 = [v25 stringByTrimmingCharactersInSet:v28];
        v30 = [v29 length];

        if (v30)
        {
          ++*(*(*(a1 + 88) + 8) + 24);
          ++v164;
          goto LABEL_21;
        }
      }

      else
      {
      }

      *(*(*(a1 + 80) + 8) + 24) += [v25 length];
      v166 += [v25 length];
LABEL_21:
      v21 = 0x277CCA000;
    }

    v22 = [obj countByEnumeratingWithState:&v192 objects:v208 count:16];
  }

  while (v22);
LABEL_25:
  v31 = *(a1 + 32);
  v32 = v148;
  if (v156)
  {
    [v31 alignedTypingSequenceForTransliteratedResult:v148];
  }

  else
  {
    [v31 alignedTypingSequenceForResult:v148 keystrokeSegmentationMode:*(a1 + 144)];
  }
  v33 = ;
  v34 = v149;
  if (!v33)
  {
    goto LABEL_113;
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v139 = v33;
  v35 = v33;
  v36 = [v35 countByEnumeratingWithState:&v188 objects:v207 count:16];
  v150 = v35;
  if (!v36)
  {
    v152 = 0;
    v154 = 0;
    goto LABEL_46;
  }

  v37 = v36;
  v152 = 0;
  v154 = 0;
  v38 = *v189;
  while (2)
  {
    v39 = 0;
    v162 = v37;
    while (2)
    {
      if (*v189 != v38)
      {
        objc_enumerationMutation(v35);
      }

      v40 = *(*(&v188 + 1) + 8 * v39);
      v41 = [v40 source];
      v42 = [v40 target];
      if ([v41 length] && objc_msgSend(v42, "isEqualToString:", v41))
      {
        v43 = v38;
        v44 = [*(v21 + 2304) whitespaceAndNewlineCharacterSet];
        v45 = [v41 stringByTrimmingCharactersInSet:v44];
        if ([v45 length])
        {
          v46 = [*(v21 + 2304) punctuationCharacterSet];
          v47 = [v41 stringByTrimmingCharactersInSet:v46];
          v48 = [v47 length];

          v21 = 0x277CCA000;
          v35 = v150;

          if (v48)
          {
            ++*(*(*(a1 + 104) + 8) + 24);
            ++v152;
            goto LABEL_41;
          }
        }

        else
        {
        }

        *(*(*(a1 + 96) + 8) + 24) += [v41 length];
        v154 += [v41 length];
LABEL_41:
        v38 = v43;
        v37 = v162;
      }

      if (v37 != ++v39)
      {
        continue;
      }

      break;
    }

    v37 = [v35 countByEnumeratingWithState:&v188 objects:v207 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_46:

  v49 = [*(a1 + 32) localeIdentifierForLanguage];
  if ([v49 isEqualToString:@"ko_KR"])
  {
    v50 = [v148 intended];
    v51 = [v50 componentsJoinedByString:&stru_287EC4808];
    v52 = [TITesterUtils decomposeHangulSequence:v51];
  }

  else
  {
    v50 = [v148 intended];
    v52 = [v50 componentsJoinedByString:&stru_287EC4808];
  }

  v53 = [v52 length];
  v54 = [v52 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  v137 = v53;
  if (v156)
  {
    v145 = v54;
    v55 = [v148 intendedTransliteration];
    v144 = [v55 componentsJoinedByString:&stru_287EC4808];
  }

  else
  {
    v144 = v54;
    v145 = &stru_287EC4808;
  }

  v56 = [v148 input];
  v57 = [v56 componentsJoinedByString:&stru_287EC4808];

  v143 = [v57 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  v163 = [MEMORY[0x277CCAB68] string];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v157 = [v148 touched];
  v58 = [v157 countByEnumeratingWithState:&v184 objects:v206 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = 0;
    v61 = *v185;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v185 != v61)
        {
          objc_enumerationMutation(v157);
        }

        v63 = *(*(&v184 + 1) + 8 * j);
        v64 = [v63 componentsJoinedByString:&stru_287EC4808];
        [v163 appendString:v64];

        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v65 = v63;
        v66 = [v65 countByEnumeratingWithState:&v180 objects:v205 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v181;
          do
          {
            for (k = 0; k != v67; ++k)
            {
              if (*v181 != v68)
              {
                objc_enumerationMutation(v65);
              }

              if ([*(*(&v180 + 1) + 8 * k) isEqualToString:@"<Delete>"])
              {
                ++v60;
                ++*(*(*(a1 + 112) + 8) + 24);
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v180 objects:v205 count:16];
          }

          while (v67);
        }
      }

      v59 = [v157 countByEnumeratingWithState:&v184 objects:v206 count:16];
    }

    while (v59);
  }

  else
  {
    v60 = 0;
  }

  v142 = [v163 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v70 = [MEMORY[0x277CCAB68] string];
  v71 = v148;
  v72 = [v148 touchEvents];
  v73 = [v72 count];

  v74 = 0x277CCA000uLL;
  if (v73)
  {
    v75 = 0;
    do
    {
      v76 = [v71 touchEvents];
      v77 = [v76 objectAtIndexedSubscript:v75];

      v78 = [*(v74 + 2992) numberWithInt:v75];
      v79 = [v71 pathsForWords];
      v80 = [v79 objectForKey:v78];

      v158 = v77;
      if (v80)
      {
        v81 = [v71 pathsForWords];
        v82 = [v81 objectForKeyedSubscript:v78];

        v83 = [v82 toJsonDictionary];
        [v70 appendFormat:@"<CP; %@ >", v83];
      }

      else
      {
        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v82 = v77;
        v84 = [v82 countByEnumeratingWithState:&v176 objects:v204 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = *v177;
          do
          {
            for (m = 0; m != v85; ++m)
            {
              if (*v177 != v86)
              {
                objc_enumerationMutation(v82);
              }

              v88 = [*(*(&v176 + 1) + 8 * m) shortDescription];
              [v70 appendString:v88];
            }

            v85 = [v82 countByEnumeratingWithState:&v176 objects:v204 count:16];
          }

          while (v85);
          v71 = v148;
          v74 = 0x277CCA000;
        }
      }

      ++v75;
      v89 = [v71 touchEvents];
      v90 = [v89 count];
    }

    while (v90 > v75);
  }

  v91 = [MEMORY[0x277CCACA8] string];
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v159 = [v71 inserted];
  v92 = [v159 countByEnumeratingWithState:&v172 objects:v203 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v173;
    do
    {
      v95 = 0;
      v96 = v91;
      do
      {
        if (*v173 != v94)
        {
          objc_enumerationMutation(v159);
        }

        v97 = [*(*(&v172 + 1) + 8 * v95) componentsJoinedByString:&stru_287EC4808];
        v91 = [v96 stringByAppendingString:v97];

        ++v95;
        v96 = v91;
      }

      while (v93 != v95);
      v93 = [v159 countByEnumeratingWithState:&v172 objects:v203 count:16];
    }

    while (v93);
  }

  v98 = [v91 stringByReplacingOccurrencesOfString:@"\\b" withString:@"\b"];
  v99 = [v98 stringByReplacingOccurrencesOfString:@"\\B" withString:@"\b"];
  v100 = [v99 length];

  v141 = [v91 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  v101 = [v148 corrected];
  v102 = [v101 componentsJoinedByString:&stru_287EC4808];

  v140 = [v102 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  TIPlistFormattedAlignedTypingSequence(v150, *(a1 + 156), *(a1 + 157), *(a1 + 158));
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v160 = v171 = 0u;
  v103 = [v160 countByEnumeratingWithState:&v168 objects:v202 count:16];
  v136 = v100;
  if (v103)
  {
    v104 = v103;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = *v169;
    do
    {
      for (n = 0; n != v104; ++n)
      {
        if (*v169 != v108)
        {
          objc_enumerationMutation(v160);
        }

        v110 = [*(*(&v168 + 1) + 8 * n) objectForKeyedSubscript:@"autocorrectionType"];
        v105 += TIAutoCorrectionTypeCorrectedIsNotIntended(v110);
        v106 += TIAutoCorrectionTypeCorrectedIsNotIntendedAndInserted(v110);
        v107 += TIAutoCorrectionTypeCorrectedIsNotInserted(v110);
        [*(a1 + 40) addObject:v110];
      }

      v104 = [v160 countByEnumeratingWithState:&v168 objects:v202 count:16];
    }

    while (v104);
  }

  else
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
  }

  *(*(*(a1 + 120) + 8) + 24) += v105;
  *(*(*(a1 + 128) + 8) + 24) += v106;
  *(*(*(a1 + 136) + 8) + 24) += v107;
  v133 = MEMORY[0x277CBEB38];
  v200[0] = @"Seed";
  v32 = v148;
  v151 = [v148 seed];
  v201[0] = v151;
  v200[1] = @"CorpusId";
  v111 = [v148 corpusId];
  v135 = v111;
  v112 = &stru_287EC4808;
  if (v111)
  {
    v112 = v111;
  }

  v201[1] = v112;
  v200[2] = @"Metadata";
  v113 = [v148 sourceMetadata];
  v134 = v113;
  v114 = MEMORY[0x277CBEC10];
  if (v113)
  {
    v114 = v113;
  }

  v201[2] = v114;
  v201[3] = v144;
  v200[3] = @"Intended";
  v200[4] = @"Input";
  v201[4] = v143;
  v201[5] = v142;
  v200[5] = @"Touched";
  v200[6] = @"TouchPoints";
  v201[6] = v70;
  v201[7] = v141;
  v200[7] = @"Inserted";
  v200[8] = @"Corrected";
  v201[8] = v140;
  v201[9] = v145;
  v200[9] = @"IntendedTransliteration";
  v200[10] = @"WordCount";
  v132 = [MEMORY[0x277CCABB0] numberWithInteger:v164];
  v201[10] = v132;
  v200[11] = @"WordErrorCount";
  v165 = [MEMORY[0x277CCABB0] numberWithInteger:v164 - v152];
  v201[11] = v165;
  v200[12] = @"SeparatorCount";
  v153 = [MEMORY[0x277CCABB0] numberWithInteger:v166];
  v201[12] = v153;
  v200[13] = @"SeparatorErrorCount";
  v167 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v166 - v154];
  v201[13] = v167;
  v200[14] = @"KeystrokeCount";
  v155 = [v148 numberOfTouches];
  v201[14] = v155;
  v200[15] = @"CharacterCount";
  v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v137];
  v201[15] = v138;
  v200[16] = @"DeleteCount";
  v115 = [MEMORY[0x277CCABB0] numberWithInteger:v60];
  v201[16] = v115;
  v200[17] = @"InsertedCharacterCount";
  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v136];
  v201[17] = v116;
  v201[18] = v160;
  v200[18] = @"Alignment";
  v200[19] = @"incorrectCount";
  v117 = [MEMORY[0x277CCABB0] numberWithInteger:v105];
  v201[19] = v117;
  v200[20] = @"badAutocorrectionCount";
  v118 = [MEMORY[0x277CCABB0] numberWithInteger:v106];
  v201[20] = v118;
  v200[21] = @"autocorrectionCount";
  v119 = [MEMORY[0x277CCABB0] numberWithInteger:v107];
  v201[21] = v119;
  v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:22];
  v121 = [v133 dictionaryWithDictionary:v120];

  v122 = [v148 debugData];

  if (v122)
  {
    v123 = [v148 debugData];
    [v121 setObject:v123 forKey:@"DebugData"];
  }

  if (*(a1 + 159) == 1)
  {
    v124 = [v148 aggdStatistics];

    if (v124)
    {
      v125 = [v148 aggdStatistics];
      [v121 setObject:v125 forKey:@"AggdStatistics"];
    }
  }

  v126 = [v148 typologyLogURL];

  if (v126)
  {
    v127 = [v148 typologyLogURL];
    v128 = [v127 path];
    [v121 setObject:v128 forKey:@"typologyLogPath"];
  }

  v129 = [v148 typologyTraceLogURL];

  if (v129)
  {
    v130 = [v148 typologyTraceLogURL];
    v131 = [v130 path];
    [v121 setObject:v131 forKey:@"typologyTraceLogPath"];
  }

  (*(*(a1 + 48) + 16))();

  v34 = v149;
  v33 = v139;
LABEL_113:

  objc_autoreleasePoolPop(context);
}

void __58__TIReporter_summaryOfAutocorrectionResultsFor_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 countForObject:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v4];
}

- (id)summaryForTrial:(unint64_t)a3 dumpResultsToFile:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(TIReporter *)self resultLoggers];
  v8 = [v7 objectAtIndex:a3];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v9 = [v6 URLByDeletingLastPathComponent];
  v10 = v34;
  if (*(v34 + 24) != 1)
  {
    v13 = 0;
    *(v34 + 24) = 0;
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v32 = 0;
  v12 = [v11 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v32];
  v13 = v32;
  *(v34 + 24) = v12;

  v10 = v34;
  if ((v34[3] & 1) == 0)
  {
LABEL_7:
    *(v10 + 24) = 0;
    goto LABEL_8;
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v6 path];
  v16 = [MEMORY[0x277CBEA90] data];
  v39 = *MEMORY[0x277CCA1B0];
  v40[0] = *MEMORY[0x277CCA1B8];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v18 = [v14 createFileAtPath:v15 contents:v16 attributes:v17];
  *(v34 + 24) = v18;

  if (v34[3])
  {
    v19 = [MEMORY[0x277CBEB78] outputStreamWithURL:v6 append:1];
    [v19 open];
    v20 = [v19 streamError];

    if (v20)
    {
      v21 = [v6 path];
      NSLog(&cfstr_ErrorOpeningTh.isa, v21, v20);
      v22 = MEMORY[0x277CBEC10];
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__TIReporter_summaryForTrial_dumpResultsToFile___block_invoke;
      v27[3] = &unk_279DA0B78;
      v31 = &v33;
      v24 = v19;
      v28 = v24;
      v29 = v6;
      v30 = 0;
      v22 = [(TIReporter *)self summaryOfAutocorrectionResultsFor:v8 withBlock:v27];
      [v24 close];
      v37 = @"TrialIndex";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v38 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v22 addEntriesFromDictionary:v26];

      v21 = v28;
    }

    goto LABEL_9;
  }

LABEL_8:
  v20 = v13;
  v19 = [v6 path];
  NSLog(&cfstr_ErrorCreatingT.isa, v19, v13);
  v22 = MEMORY[0x277CBEC10];
LABEL_9:

  _Block_object_dispose(&v33, 8);

  return v22;
}

void __48__TIReporter_summaryForTrial_dumpResultsToFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] writeJSONObject:v3 toStream:v4 options:0 error:&v11];
    v6 = v11;
    v7 = [@"\n" dataUsingEncoding:4];
    [*(a1 + 32) write:objc_msgSend(v7 maxLength:{"bytes"), objc_msgSend(v7, "length")}];
    if (v6)
    {
      v8 = [*(a1 + 40) path];
      NSLog(&cfstr_ErrorSerializi_0.isa, v3, v8, *(a1 + 48));
    }

    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    *(*(*(a1 + 56) + 8) + 24) = v10;
  }
}

- (id)reportForTrial:(unint64_t)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = [(TIReporter *)self resultLoggers];
  v6 = [v5 objectAtIndex:a3];

  v7 = [MEMORY[0x277CBEB18] array];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __29__TIReporter_reportForTrial___block_invoke;
  v16 = &unk_279DA0B50;
  v17 = v7;
  v8 = v7;
  v9 = [(TIReporter *)self summaryOfAutocorrectionResultsFor:v6 withBlock:&v13];
  [v9 setObject:v8 forKeyedSubscript:{@"Results", v13, v14, v15, v16}];
  v18 = @"TrialIndex";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [v9 addEntriesFromDictionary:v11];

  return v9;
}

- (id)alignedTypingSequenceForTransliteratedResult:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 intended];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = objc_alloc_init(TIAlignedTyping);
      v9 = [v3 intendedTransliteration];
      v10 = [v9 objectAtIndex:v7];
      [(TIAlignedTokens *)v8 setSource:v10];

      v11 = [v3 intended];
      v12 = [v11 objectAtIndex:v7];
      [(TIAlignedTokens *)v8 setSourceTransliteration:v12];

      v13 = [v3 touched];
      v14 = [v13 objectAtIndex:v7];
      [(TIAlignedTyping *)v8 setTouched:v14];

      v15 = [v3 inserted];
      v16 = [v15 objectAtIndex:v7];
      [(TIAlignedTyping *)v8 setInserted:v16];

      v17 = [v3 corrected];
      v18 = [v17 objectAtIndex:v7];
      [(TIAlignedTokens *)v8 setTarget:v18];

      v19 = [v3 predicted];
      v20 = [v19 objectAtIndex:v7];
      [(TIAlignedTyping *)v8 setPredicted:v20];

      v21 = [v3 inlineCompletions];
      v22 = [v21 objectAtIndex:v7];
      [(TIAlignedTyping *)v8 setInlineCompletions:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v24 = [v3 pathsForWords];
      v25 = [v24 objectForKey:v23];

      if (v25)
      {
        v26 = [v3 pathsForWords];
        v27 = [v26 objectForKeyedSubscript:v23];

        [(TIAlignedTyping *)v8 setPath:v27];
      }

      [v4 addObject:v8];

      ++v7;
      v28 = [v3 intended];
      v29 = [v28 count];
    }

    while (v7 < v29);
  }

  return v4;
}

- (id)alignedTypingSequenceForResult:(id)a3 keystrokeSegmentationMode:(unint64_t)a4
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 intended];
  v8 = TICharSequenceForTokenSequence(v7);

  v9 = [v6 corrected];
  v10 = TICharSequenceForTokenSequence(v9);

  v11 = MEMORY[0x277CBEAF8];
  v12 = [(TIReporter *)self language];
  v13 = [v11 localeWithLocaleIdentifier:v12];

  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __71__TIReporter_alignedTypingSequenceForResult_keystrokeSegmentationMode___block_invoke;
  v123[3] = &unk_279DA0B28;
  v14 = v13;
  v124 = v14;
  v15 = MEMORY[0x26D6C0D70](v123);
  v16 = TIOptimalSequenceAlignment(v8, v10, v15);
  v17 = [v6 intended];
  v88 = [v6 corrected];
  TITokenAlignmentForKeyAlignment(v16, v8, v10, v17, v88);
  v94 = v93 = v6;
  v91 = v14;
  v92 = v8;
  v89 = v16;
  v90 = v15;
  if (a4 == 2)
  {
    v86 = self;
    v87 = v10;
    v27 = [MEMORY[0x277CBEB18] array];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v28 = [v6 inserted];
    v29 = [v28 countByEnumeratingWithState:&v119 objects:v129 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v120;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v120 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [v27 addObjectsFromArray:*(*(&v119 + 1) + 8 * i)];
        }

        v30 = [v28 countByEnumeratingWithState:&v119 objects:v129 count:16];
      }

      while (v30);
    }

    v33 = TICharSequenceForTokenSequence(v27);
    v34 = TIOptimalSequenceAlignment(v8, v33, v15);
    v83 = &v81;
    v84 = v33;
    v85 = v34;
    v102 = (&v81 - ((16 * [v17 count] + 31) & 0xFFFFFFFFFFFFFFF0));
    TITargetKeyRangesForSourceTokens(v34, v8, v84, v17, v84, v102);
    v35 = [MEMORY[0x277CBEB18] array];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v36 = [v6 touched];
    v37 = [v36 countByEnumeratingWithState:&v115 objects:v128 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v116;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v116 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [v35 addObjectsFromArray:*(*(&v115 + 1) + 8 * j)];
        }

        v38 = [v36 countByEnumeratingWithState:&v115 objects:v128 count:16];
      }

      while (v38);
    }

    v41 = [MEMORY[0x277CBEB18] array];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v42 = [v6 predicted];
    v43 = [v42 countByEnumeratingWithState:&v111 objects:v127 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v112;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v112 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [v41 addObjectsFromArray:*(*(&v111 + 1) + 8 * k)];
        }

        v44 = [v42 countByEnumeratingWithState:&v111 objects:v127 count:16];
      }

      while (v44);
    }

    v96 = v17;

    v47 = [MEMORY[0x277CBEB18] array];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v48 = [v6 inlineCompletions];
    v49 = [v48 countByEnumeratingWithState:&v107 objects:v126 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v108;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v108 != v51)
          {
            objc_enumerationMutation(v48);
          }

          [v47 addObjectsFromArray:*(*(&v107 + 1) + 8 * m)];
        }

        v50 = [v48 countByEnumeratingWithState:&v107 objects:v126 count:16];
      }

      while (v50);
    }

    v53 = [MEMORY[0x277CBEB18] array];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v54 = [v93 documentStates];
    v55 = [v54 countByEnumeratingWithState:&v103 objects:v125 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v104;
      do
      {
        for (n = 0; n != v56; ++n)
        {
          if (*v104 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [v53 addObjectsFromArray:*(*(&v103 + 1) + 8 * n)];
        }

        v56 = [v54 countByEnumeratingWithState:&v103 objects:v125 count:16];
      }

      while (v56);
    }

    v101 = [MEMORY[0x277CBEB18] array];
    v100 = [MEMORY[0x277CBEB18] array];
    v99 = [MEMORY[0x277CBEB18] array];
    v98 = [MEMORY[0x277CBEB18] array];
    v97 = [MEMORY[0x277CBEB18] array];
    v17 = v96;
    if ([v96 count])
    {
      v59 = 0;
      v60 = v102 + 1;
      v95 = v27;
      do
      {
        v61 = *(v60 - 1);
        if (v61 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v62 = MEMORY[0x277CBEBF8];
          [v101 addObject:MEMORY[0x277CBEBF8]];
          [v100 addObject:v62];
          [v99 addObject:v62];
          [v97 addObject:v62];
          [v98 addObject:v62];
        }

        else
        {
          v102 = *v60;
          v63 = [v27 subarrayWithRange:v61];
          [v101 addObject:v63];

          v64 = [v35 subarrayWithRange:{v61, v102}];
          [v100 addObject:v64];

          v65 = v102;
          v66 = [v41 subarrayWithRange:{v61, v102}];
          [v99 addObject:v66];

          v67 = [v47 subarrayWithRange:{v61, v65}];
          [v98 addObject:v67];

          v68 = v65;
          v27 = v95;
          v17 = v96;
          v69 = [v53 subarrayWithRange:{v61, v68}];
          [v97 addObject:v69];
        }

        ++v59;
        v60 += 2;
      }

      while (v59 < [v17 count]);
    }

    v102 = [v101 copy];
    v96 = [v100 copy];
    v82 = [v99 copy];
    v70 = v98;
    v81 = [v98 copy];
    v71 = v97;
    v26 = [v97 copy];

    v72 = v84;
    v18 = v102;

    v23 = v81;
    v24 = v82;
    v25 = v96;
    self = v86;
    v10 = v87;
  }

  else if (a4 == 1)
  {
    v18 = [v6 inserted];
    v19 = [v6 touched];
    v20 = [v6 predicted];
    v21 = [v6 inlineCompletions];
    v22 = [v6 documentStates];
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = v22;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
    v23 = MEMORY[0x277CBEBF8];
    v24 = MEMORY[0x277CBEBF8];
    v25 = MEMORY[0x277CBEBF8];
    v18 = MEMORY[0x277CBEBF8];
  }

  v73 = v18;
  v74 = v25;
  v75 = v24;
  v76 = v23;
  v77 = TIAlignedTypingSequenceForAlignedTokenSequence(v94, v18, v25, v24, v23, v26);
  if (v77 && [(TIReporter *)self shouldConcatenateTokensAtBoundaryError])
  {
    TIConcatenateAlignedTypingAtBoundaryErrors(v77);
    v79 = v78 = v17;

    v77 = v79;
    v17 = v78;
  }

  return v77;
}

BOOL __71__TIReporter_alignedTypingSequenceForResult_keystrokeSegmentationMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 compare:v5 options:129 range:0 locale:{objc_msgSend(v6, "length"), *(a1 + 32)}];

  return v7 == 0;
}

- (BOOL)shouldConcatenateTokensAtBoundaryError
{
  v2 = [(TIReporter *)self localeIdentifierForLanguage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TIReporter_shouldConcatenateTokensAtBoundaryError__block_invoke;
  v7[3] = &unk_279DA0B00;
  v8 = v2;
  v3 = v2;
  v4 = [&unk_287ED4AC0 indexesOfObjectsPassingTest:v7];
  v5 = [v4 count] == 0;

  return v5;
}

- (id)resultsForTrial:(unint64_t)a3
{
  v4 = [(TIReporter *)self resultLoggers];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 allResults];

  return v6;
}

- (void)collectAggdStatisticsForResult:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CCAAB0];
  v7 = [__aggdReportMock toDictionary];
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:0 error:0];
  v9 = [v3 unarchivedObjectOfClass:v5 fromData:v8 error:0];
  [v4 setAggdStatistics:v9];

  v10 = __aggdReportMock;

  [v10 clear];
}

- (void)logResult:(id)a3
{
  v9 = a3;
  v4 = [(TIReporter *)self options];
  v5 = [v4 objectForKey:@"REPORT_AGGD_STATISTICS"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [(TIReporter *)self collectAggdStatisticsForResult:v9];
  }

  v7 = [(TIReporter *)self resultLoggers];
  v8 = [v7 lastObject];

  [v8 addResult:v9];
}

- (void)beginLogTrial
{
  v3 = [(TIReporter *)self options];
  v4 = [v3 valueForKey:@"USE_PARTFILE"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(TIReporter *)self options];
    v7 = [v6 valueForKey:@"PARTFILE_FLUSH_THRESHOLD"];

    v8 = objc_opt_class();
    v9 = [(NSMutableArray *)self->_resultLoggers count];
    v10 = [(TIReporter *)self options];
    v11 = [v8 fileURLForTrial:v9 withOptions:v10];

    v14 = [[TISerializingResultLogger alloc] initWithOutputURL:v11 flushThreshold:v7];
  }

  else
  {
    v14 = objc_alloc_init(TIInMemoryResultLogger);
  }

  [(NSMutableArray *)self->_resultLoggers addObject:v14];
  v12 = *MEMORY[0x277D85DF8];
  v13 = [(TISerializingResultLogger *)v14 description];
  fprintf(v12, "The following result logger will be used for this trial %s\n", [v13 cStringUsingEncoding:4]);
}

- (NSString)textCorpus
{
  v3 = objc_opt_class();
  v4 = [(TIReporter *)self options];
  v5 = [v3 textCorpusForOptions:v4];

  return v5;
}

- (NSString)localeIdentifierForLanguage
{
  v2 = [(TIReporter *)self language];
  v3 = [v2 rangeOfString:@"-"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 substringToIndex:v3];

    v2 = v4;
  }

  if ([v2 hasPrefix:@"zh"])
  {
    v5 = [v2 rangeOfString:@"_"];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@"-" options:0 range:{v5, v6}];

      v2 = v7;
    }
  }

  return v2;
}

- (NSString)language
{
  v3 = objc_opt_class();
  v4 = [(TIReporter *)self options];
  v5 = [v3 languageForOptions:v4];

  return v5;
}

- (TIReporter)initWithBuildVersion:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TIReporter;
  v6 = [(TIReporter *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resultLoggers = v6->_resultLoggers;
    v6->_resultLoggers = v7;

    objc_storeStrong(&v6->_buildVersion, a3);
  }

  return v6;
}

+ (id)detailedResultFileURLForTrial:(unint64_t)a3 withOptions:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() languageForOptions:v5];
  v7 = [objc_opt_class() textCorpusForOptions:v5];
  v8 = [v5 valueForKey:@"OUTPATH"];

  v9 = @"./";
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"test-typer-%@-%@-trial%03lu-detailed-results.jsonl", v6, v7, a3];
  v12 = [(__CFString *)v10 stringByAppendingPathComponent:v11];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];

  return v13;
}

+ (id)fileURLForTrial:(unint64_t)a3 withOptions:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() languageForOptions:v5];
  v7 = [objc_opt_class() textCorpusForOptions:v5];
  v8 = [v5 valueForKey:@"OUTPATH"];

  v9 = @"./";
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"test-typer-%@-%@-trial%03lu.json", v6, v7, a3];
  v12 = [(__CFString *)v10 stringByAppendingPathComponent:v11];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];

  return v13;
}

+ (id)textCorpusForOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"TEXT"];
  if (v4 || ([v3 valueForKey:@"CANDIDATE_SENTENCES"], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "valueForKey:", @"CANDIDATE_PHRASES"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v10 = [v3 valueForKey:@"TESTCASE"];
    v5 = [v10 lastPathComponent];
  }

  v6 = [v5 lastPathComponent];

  v7 = [v6 rangeOfString:@"." options:4];
  if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v6 substringToIndex:v7];

    v6 = v8;
  }

  return v6;
}

+ (id)languageForOptions:(id)a3
{
  v3 = [a3 objectForKey:@"KEYBOARD_LANGUAGE"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_287EC4808;
  }

  v6 = v5;

  return v5;
}

@end