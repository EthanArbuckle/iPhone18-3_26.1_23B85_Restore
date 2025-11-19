@interface CRLineWrapper
+ (id)joiningDelimiterForLine:(id)a3;
+ (id)joiningDelimiterForLine:(id)a3 useLineSeparatorAsLineBreak:(BOOL)a4;
- (BOOL)_shouldInsertLineBreakForResult:(id)a3 parameters:(id)a4 context:(id)a5 reason:(id *)a6;
- (BOOL)_shouldInsertLineBreakForResult:(id)a3 withOverwrappingCorrection:(BOOL)a4 parameters:(id)a5 context:(id)a6 reason:(id *)a7;
- (BOOL)_validateGroups:(id)a3;
- (CRLineWrapper)initWithConfiguration:(id)a3;
- (id)_allLinesInGroups:(id)a3 groupMapping:(id *)a4;
- (id)paragraphsByUpdatingLineWrappingTypesInGroups:(id)a3 useHandwritingConfig:(BOOL)a4;
- (unint64_t)_lineWrappingTypeForResult:(id)a3 parameters:(id)a4 strictParameters:(id)a5 context:(id)a6 reason:(id *)a7;
- (void)predictLineWrappingTypesForAllLinesInGroups:(id)a3 useHandwritingConfig:(BOOL)a4;
@end

@implementation CRLineWrapper

+ (id)joiningDelimiterForLine:(id)a3 useLineSeparatorAsLineBreak:(BOOL)a4
{
  swift_unknownObjectRetain();
  sub_1B412A874(a3, a4);
  swift_unknownObjectRelease();
  v6 = sub_1B429FB88();

  return v6;
}

+ (id)joiningDelimiterForLine:(id)a3
{
  swift_getObjCClassMetadata();
  v3 = swift_unknownObjectRetain();
  sub_1B4129D84(v3);
  swift_unknownObjectRelease();
  v4 = sub_1B429FB88();

  return v4;
}

- (id)paragraphsByUpdatingLineWrappingTypesInGroups:(id)a3 useHandwritingConfig:(BOOL)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D10);
  v6 = sub_1B429FDF8();
  v7 = self;
  sub_1B4129E64(v6, a4);

  v8 = sub_1B429FDE8();

  return v8;
}

- (CRLineWrapper)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRLineWrapper;
  v6 = [(CRLineWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7->_debugLineWrapping = [v8 BOOLForKey:@"com.apple.CoreRecognition.DebugLineWrapping"];
  }

  return v7;
}

- (unint64_t)_lineWrappingTypeForResult:(id)a3 parameters:(id)a4 strictParameters:(id)a5 context:(id)a6 reason:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(CRLineWrapper *)self _shouldInsertLineBreakForResult:v12 withOverwrappingCorrection:1 parameters:v13 context:v15 reason:a7])
  {
    v16 = 1;
  }

  else
  {
    if (!v14 || ![(CRLineWrapper *)self _shouldInsertLineBreakForResult:v12 withOverwrappingCorrection:1 parameters:v14 context:v15 reason:a7])
    {
      if ([v12 isHyphenatedPrefixOfWord])
      {
        v17 = @"hyphenatedPrefixOfWord";
        v16 = 4;
      }

      else
      {
        v18 = [v15 text];
        v19 = [v18 _crEndsWithHyphen];

        if (v19)
        {
          v17 = @"endsWithHyphen";
        }

        else
        {
          if ([v12 shouldAllowWhitespaceDelimiter])
          {
            v16 = 2;
            goto LABEL_15;
          }

          v17 = @"wrapWithNoDelimiter";
        }

        v16 = 3;
      }

      *a7 = v17;
      goto LABEL_15;
    }

    v16 = 5;
  }

LABEL_15:

  return v16;
}

- (BOOL)_validateGroups:(id)a3
{
  v4 = a3;
  if (![(CRLineWrappingConfiguration *)self->_configuration mergeOversegmentedTokens])
  {
    goto LABEL_7;
  }

  v5 = [v4 firstObject];
  if (v5 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "removeSubregion is not implemented although mergeOversegmentedTokens is enabled.", buf, 2u);
    }

    goto LABEL_13;
  }

  v6 = [v5 subregions];
  v7 = [v6 firstObject];

  if (v7 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = CROSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_FAULT, "mergeWithLine is not implemented although mergeOversegmentedTokens is enabled.", v11, 2u);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v8 = 1;
LABEL_14:

  return v8;
}

- (void)predictLineWrappingTypesForAllLinesInGroups:(id)a3 useHandwritingConfig:(BOOL)a4
{
  v95 = *MEMORY[0x1E69E9840];
  v46 = a3;
  if (![(CRLineWrapper *)self _validateGroups:?])
  {
    goto LABEL_35;
  }

  v80 = 0;
  v5 = [(CRLineWrapper *)self _allLinesInGroups:v46 groupMapping:&v80];
  v51 = v80;
  v52 = v5;
  if (![v5 count])
  {
    goto LABEL_34;
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__9;
  v78 = __Block_byref_object_dispose__9;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__9;
  v72 = __Block_byref_object_dispose__9;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__9;
  v66 = __Block_byref_object_dispose__9;
  v67 = 0;
  v6 = objc_alloc_init(CRLineWrappingContextCache);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__CRLineWrapper_predictLineWrappingTypesForAllLinesInGroups_useHandwritingConfig___block_invoke;
  aBlock[3] = &unk_1E7BC2D90;
  v61 = a4;
  v58 = &v68;
  v59 = &v62;
  v60 = &v74;
  v44 = v6;
  v57 = v44;
  v49 = _Block_copy(aBlock);
  v7 = [v5 firstObject];
  for (i = 1; i - 1 < ([v52 count] - 1); ++i)
  {
    v9 = [v52 objectAtIndexedSubscript:i];
    v10 = [(CRWrappingEvaluationResult *)v7 uuid];
    v54 = [v51 objectForKeyedSubscript:v10];

    v11 = [v9 uuid];
    v53 = [v51 objectForKeyedSubscript:v11];

    if (v54 == v53 || ([v54 canWrapToNextGroup] & 1) != 0)
    {
      v12 = v75[5];
      if (!v12 || ([v12 active] & 1) == 0)
      {
        v49[2](v49, v7);
      }

      v13 = [CRWrappingEvaluationResult alloc];
      v14 = v75[5];
      v15 = [(CRWrappingEvaluationResult *)v7 boundingQuad];
      [v15 normalizationSize];
      v16 = [(CRWrappingEvaluationResult *)v13 initWithTextFeature:v9 context:v14 imageSize:v69[5] parameters:?];

      if ([(CRWrappingEvaluationResult *)v7 lineWrappingType])
      {
        if (self->_debugLineWrapping)
        {
          v17 = CROSLogForCategory(4);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v52 count];
            v19 = [(CRWrappingEvaluationResult *)v7 lineWrappingType];
            loga = [(CRWrappingEvaluationResult *)v7 text];
            v20 = [v9 text];
            v21 = [(CRWrappingEvaluationResult *)v7 locale];
            v22 = [v21 description];
            *buf = 134219267;
            v82 = i;
            v83 = 2048;
            v84 = v18;
            v85 = 2048;
            v86 = v19;
            v87 = 2117;
            v88 = loga;
            v89 = 2117;
            v90 = v20;
            v91 = 2112;
            v92 = v22;
            _os_log_impl(&dword_1B40D2000, v17, OS_LOG_TYPE_DEBUG, "#%lu/%lu wrap=%lu (unchanged): |%{sensitive}@|%{sensitive}@| (%@)", buf, 0x3Eu);
          }

          goto LABEL_23;
        }
      }

      else
      {
        v30 = v69[5];
        v31 = v63[5];
        v32 = v75[5];
        v55 = 0;
        v33 = [(CRLineWrapper *)self _lineWrappingTypeForResult:v16 parameters:v30 strictParameters:v31 context:v32 reason:&v55];
        v17 = v55;
        [(CRWrappingEvaluationResult *)v7 setLineWrappingType:v33];
        if (self->_debugLineWrapping)
        {
          log = CROSLogForCategory(4);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v34 = [v52 count];
            v35 = [(CRWrappingEvaluationResult *)v7 text];
            v45 = [v9 text];
            v36 = [(CRWrappingEvaluationResult *)v7 locale];
            v37 = [v36 localeIdentifier];
            *buf = 134219523;
            v82 = i;
            v83 = 2048;
            v84 = v34;
            v85 = 2048;
            v86 = v33;
            v87 = 2117;
            v88 = v35;
            v89 = 2117;
            v90 = v45;
            v91 = 2112;
            v92 = v37;
            v93 = 2112;
            v94 = v17;
            _os_log_impl(&dword_1B40D2000, log, OS_LOG_TYPE_DEBUG, "#%lu/%lu wrap=%lu: |%{sensitive}@|%{sensitive}@| (%@) reason=%@", buf, 0x48u);
          }
        }

LABEL_23:
      }

      if ([(CRWrappingEvaluationResult *)v7 lineWrappingType]== 1)
      {
        [v75[5] resetContext];
        goto LABEL_30;
      }

      [v75[5] addResult:v16 mergeOversegmentation:{-[CRLineWrappingConfiguration mergeOversegmentedTokens](self->_configuration, "mergeOversegmentedTokens")}];
      if ([(CRWrappingEvaluationResult *)v16 isOversegmented]&& [(CRLineWrappingConfiguration *)self->_configuration mergeOversegmentedTokens])
      {
        [(CRWrappingEvaluationResult *)v7 setLineWrappingType:0];
        v38 = [v9 uuid];
        v39 = [v51 objectForKeyedSubscript:v38];
        v40 = objc_opt_respondsToSelector();

        if ((v40 & 1) == 0)
        {
          goto LABEL_32;
        }

        v41 = [v9 uuid];
        v42 = [v51 objectForKeyedSubscript:v41];
        [v42 removeSubregion:v9];
      }

      else
      {
LABEL_30:
        v41 = v7;
        v7 = v9;
      }

      goto LABEL_32;
    }

    [(CRWrappingEvaluationResult *)v7 setLineWrappingType:1];
    if (self->_debugLineWrapping)
    {
      v23 = CROSLogForCategory(4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v52 count];
        v25 = [(CRWrappingEvaluationResult *)v7 lineWrappingType];
        v26 = [(CRWrappingEvaluationResult *)v7 text];
        v27 = [v9 text];
        v28 = [(CRWrappingEvaluationResult *)v7 locale];
        v29 = [v28 localeIdentifier];
        *buf = 134219523;
        v82 = i;
        v83 = 2048;
        v84 = v24;
        v85 = 2048;
        v86 = v25;
        v87 = 2117;
        v88 = v26;
        v89 = 2117;
        v90 = v27;
        v91 = 2112;
        v92 = v29;
        v93 = 2112;
        v94 = @"blockBoundary";
        _os_log_impl(&dword_1B40D2000, v23, OS_LOG_TYPE_DEBUG, "#%lu/%lu wrap=%lu: |%{sensitive}@|%{sensitive}@| (%@) reason=%@", buf, 0x48u);
      }
    }

    [v75[5] resetContext];
    v16 = v7;
    v7 = v9;
LABEL_32:
  }

  v43 = [v52 lastObject];
  [v43 setLineWrappingType:1];

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
LABEL_34:

LABEL_35:
}

void __82__CRLineWrapper_predictLineWrappingTypesForAllLinesInGroups_useHandwritingConfig___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 locale];
  v4 = [v3 languageIdentifier];

  v5 = [[CRLineWrappingParameters alloc] initWithLocale:v4 useStrictConfig:0 useHandwritingConfig:*(a1 + 64)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [[CRLineWrappingParameters alloc] initWithLocale:v4 useStrictConfig:1];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) contextForLocale:v4];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [CRWrappingEvaluationResult alloc];
  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = [v18 boundingQuad];
  [v16 normalizationSize];
  v17 = [(CRWrappingEvaluationResult *)v14 initWithTextFeature:v18 context:v15 imageSize:*(*(*(a1 + 40) + 8) + 40) parameters:?];

  [*(*(*(a1 + 56) + 8) + 40) startWithResult:v17 contextSize:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "lmContextSize")}];
}

- (BOOL)_shouldInsertLineBreakForResult:(id)a3 parameters:(id)a4 context:(id)a5 reason:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 featureInTest];
  v12 = [v10 lastFeature];
  v13 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v11 confidenceScore];
    v13 = v14;
  }

  v15 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v12 confidenceScore];
    v15 = v16;
  }

  v17 = [v8 textBasedEvaluation];
  if ([v8 matchingLocales])
  {
    [v9 confidenceThreshold];
    if (v13 < v18)
    {
      v19 = @"confidenceLow";
      goto LABEL_11;
    }

    [v9 contextConfidenceThreshold];
    if (v15 < v25)
    {
      v19 = @"contextConfidenceLow";
      goto LABEL_11;
    }

    if ([v8 similarHeights] && (objc_msgSend(v8, "similarAngles") & 1) != 0)
    {
      if (([v8 isOversegmented] & 1) != 0 || (objc_msgSend(v8, "widthGrowth"), v27 = v26, objc_msgSend(v9, "widthGrowthLimit"), v27 < v28) || (v29 = objc_msgSend(v8, "tokenCountDiff"), v29 < objc_msgSend(v9, "tokenCountIncreaseLimit")))
      {
        if ([v8 isOversegmented] & 1) != 0 || (objc_msgSend(v8, "leadingAligned") & 1) != 0 || (objc_msgSend(v8, "centerAligned") & 1) != 0 || (objc_msgSend(v8, "continuesToNewColumn"))
        {
          if ([v8 excessiveVerticalDistance])
          {
            v19 = @"excessiveVerticalDistance";
          }

          else
          {
            if (v17 > [v9 noWrappingEvaluationThreshold])
            {
              v34 = [v8 continuesToNewColumn];
              if (v17 == 10)
              {
                v35 = v34;
              }

              else
              {
                v35 = 0;
              }

              if (v35 == 1)
              {
                v32 = 0;
                v36 = @"textEvaluationWithNewColumn";
              }

              else
              {
                if (([v8 continuesToNewColumn] & 1) == 0 && v17 >= objc_msgSend(v9, "wrappingEvaluationThreshold"))
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"textEvaluationWithoutNewColumn:%ld", v17];
                  *a6 = v32 = 0;
                  goto LABEL_29;
                }

                if ([v10 isClassifierAvailable])
                {
                  *a6 = @"classifier";
                  [v9 probabilityThreshold];
                  v32 = [v10 classifierShouldInsertLineBreakForEvaluationResult:v8 threshold:1 useThresholdOverride:?];
                  goto LABEL_29;
                }

                [v8 lmScore];
                v41 = v40;
                [v9 lmScoreThreshold];
                if (v41 <= v42 || v17 < 3)
                {
                  if (v41 <= 0.0)
                  {
                    v19 = @"LMUnknown";
                  }

                  else
                  {
                    [v8 eosLMScore];
                    v44 = v43;
                    if (v43 > 0.0 && v41 > v43)
                    {
                      *a6 = @"LMScoreRatio";
                      [v9 lmScoreEOSMinRatio];
                      v32 = v41 / v44 <= v45;
                      goto LABEL_29;
                    }

                    v19 = @"LMScoreEOS";
                  }

                  goto LABEL_11;
                }

                v32 = 0;
                v36 = @"LMScore";
              }

              *a6 = v36;
              goto LABEL_29;
            }

            v19 = @"textEvaluation";
          }

LABEL_11:
          *a6 = v19;
          goto LABEL_28;
        }

        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textAlignment:%d%d%d%d", objc_msgSend(v8, "isOversegmented"), objc_msgSend(v8, "leadingAligned"), objc_msgSend(v8, "centerAligned"), objc_msgSend(v8, "continuesToNewColumn")];
      }

      else
      {
        v37 = MEMORY[0x1E696AEC0];
        [v8 widthGrowth];
        v39 = [v37 stringWithFormat:@"widthGrowthAndTokenCount:%4.2f, %ld", v38, objc_msgSend(v8, "tokenCountDiff")];
      }

      v31 = v39;
    }

    else
    {
      if ([v8 similarHeights])
      {
        v30 = @"geometryAngle";
      }

      else
      {
        v30 = @"geometryHeight";
      }

      v31 = v30;
    }

    *a6 = v31;
    goto LABEL_28;
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = [v12 locale];
  v22 = [v21 localeIdentifier];
  v23 = [v11 locale];
  v24 = [v23 localeIdentifier];
  *a6 = [v20 stringWithFormat:@"localeMismatch:%@:%@", v22, v24];

LABEL_28:
  v32 = 1;
LABEL_29:

  return v32;
}

- (BOOL)_shouldInsertLineBreakForResult:(id)a3 withOverwrappingCorrection:(BOOL)a4 parameters:(id)a5 context:(id)a6 reason:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [(CRLineWrapper *)self _shouldInsertLineBreakForResult:v12 parameters:v13 context:v14 reason:a7];
  if (!v15 && a4)
  {
    if ([v14 classifierShouldCorrectOverwrappingWithEvaluation:objc_msgSend(v12 correctionMode:{"textBasedEvaluation"), objc_msgSend(v13, "correctionMode")}] && (objc_msgSend(v13, "probabilityThreshold"), objc_msgSend(v14, "classifierShouldInsertLineBreakForEvaluationResult:threshold:useThresholdOverride:", v12, 0)))
    {
      *a7 = [*a7 stringByAppendingString:@"+overwrappingCorrected"];
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_allLinesInGroups:(id)a3 groupMapping:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v18;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v20 = *v27;
    do
    {
      v21 = v6;
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v8 subregions];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              v14 = [v13 uuid];
              [v5 setObject:v8 forKeyedSubscript:v14];

              [v4 addObject:v13];
            }

            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  if ([v5 count])
  {
    *a4 = [v5 copy];
  }

  v15 = [v4 copy];

  return v15;
}

@end