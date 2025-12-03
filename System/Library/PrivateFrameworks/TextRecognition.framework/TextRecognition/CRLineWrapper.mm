@interface CRLineWrapper
+ (id)joiningDelimiterForLine:(id)line;
+ (id)joiningDelimiterForLine:(id)line useLineSeparatorAsLineBreak:(BOOL)break;
- (BOOL)_shouldInsertLineBreakForResult:(id)result parameters:(id)parameters context:(id)context reason:(id *)reason;
- (BOOL)_shouldInsertLineBreakForResult:(id)result withOverwrappingCorrection:(BOOL)correction parameters:(id)parameters context:(id)context reason:(id *)reason;
- (BOOL)_validateGroups:(id)groups;
- (CRLineWrapper)initWithConfiguration:(id)configuration;
- (id)_allLinesInGroups:(id)groups groupMapping:(id *)mapping;
- (id)paragraphsByUpdatingLineWrappingTypesInGroups:(id)groups useHandwritingConfig:(BOOL)config;
- (unint64_t)_lineWrappingTypeForResult:(id)result parameters:(id)parameters strictParameters:(id)strictParameters context:(id)context reason:(id *)reason;
- (void)predictLineWrappingTypesForAllLinesInGroups:(id)groups useHandwritingConfig:(BOOL)config;
@end

@implementation CRLineWrapper

+ (id)joiningDelimiterForLine:(id)line useLineSeparatorAsLineBreak:(BOOL)break
{
  swift_unknownObjectRetain();
  sub_1B412A874(line, break);
  swift_unknownObjectRelease();
  v6 = sub_1B429FB88();

  return v6;
}

+ (id)joiningDelimiterForLine:(id)line
{
  swift_getObjCClassMetadata();
  v3 = swift_unknownObjectRetain();
  sub_1B4129D84(v3);
  swift_unknownObjectRelease();
  v4 = sub_1B429FB88();

  return v4;
}

- (id)paragraphsByUpdatingLineWrappingTypesInGroups:(id)groups useHandwritingConfig:(BOOL)config
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D10);
  v6 = sub_1B429FDF8();
  selfCopy = self;
  sub_1B4129E64(v6, config);

  v8 = sub_1B429FDE8();

  return v8;
}

- (CRLineWrapper)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CRLineWrapper;
  v6 = [(CRLineWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7->_debugLineWrapping = [standardUserDefaults BOOLForKey:@"com.apple.CoreRecognition.DebugLineWrapping"];
  }

  return v7;
}

- (unint64_t)_lineWrappingTypeForResult:(id)result parameters:(id)parameters strictParameters:(id)strictParameters context:(id)context reason:(id *)reason
{
  resultCopy = result;
  parametersCopy = parameters;
  strictParametersCopy = strictParameters;
  contextCopy = context;
  if ([(CRLineWrapper *)self _shouldInsertLineBreakForResult:resultCopy withOverwrappingCorrection:1 parameters:parametersCopy context:contextCopy reason:reason])
  {
    v16 = 1;
  }

  else
  {
    if (!strictParametersCopy || ![(CRLineWrapper *)self _shouldInsertLineBreakForResult:resultCopy withOverwrappingCorrection:1 parameters:strictParametersCopy context:contextCopy reason:reason])
    {
      if ([resultCopy isHyphenatedPrefixOfWord])
      {
        v17 = @"hyphenatedPrefixOfWord";
        v16 = 4;
      }

      else
      {
        text = [contextCopy text];
        _crEndsWithHyphen = [text _crEndsWithHyphen];

        if (_crEndsWithHyphen)
        {
          v17 = @"endsWithHyphen";
        }

        else
        {
          if ([resultCopy shouldAllowWhitespaceDelimiter])
          {
            v16 = 2;
            goto LABEL_15;
          }

          v17 = @"wrapWithNoDelimiter";
        }

        v16 = 3;
      }

      *reason = v17;
      goto LABEL_15;
    }

    v16 = 5;
  }

LABEL_15:

  return v16;
}

- (BOOL)_validateGroups:(id)groups
{
  groupsCopy = groups;
  if (![(CRLineWrappingConfiguration *)self->_configuration mergeOversegmentedTokens])
  {
    goto LABEL_7;
  }

  firstObject = [groupsCopy firstObject];
  if (firstObject && (objc_opt_respondsToSelector() & 1) == 0)
  {
    firstObject2 = CROSLogForCategory(0);
    if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, firstObject2, OS_LOG_TYPE_FAULT, "removeSubregion is not implemented although mergeOversegmentedTokens is enabled.", buf, 2u);
    }

    goto LABEL_13;
  }

  subregions = [firstObject subregions];
  firstObject2 = [subregions firstObject];

  if (firstObject2 && (objc_opt_respondsToSelector() & 1) == 0)
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

- (void)predictLineWrappingTypesForAllLinesInGroups:(id)groups useHandwritingConfig:(BOOL)config
{
  v95 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  if (![(CRLineWrapper *)self _validateGroups:?])
  {
    goto LABEL_35;
  }

  v80 = 0;
  v5 = [(CRLineWrapper *)self _allLinesInGroups:groupsCopy groupMapping:&v80];
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
  configCopy = config;
  v58 = &v68;
  v59 = &v62;
  v60 = &v74;
  v44 = v6;
  v57 = v44;
  v49 = _Block_copy(aBlock);
  firstObject = [v5 firstObject];
  for (i = 1; i - 1 < ([v52 count] - 1); ++i)
  {
    v9 = [v52 objectAtIndexedSubscript:i];
    uuid = [(CRWrappingEvaluationResult *)firstObject uuid];
    v54 = [v51 objectForKeyedSubscript:uuid];

    uuid2 = [v9 uuid];
    v53 = [v51 objectForKeyedSubscript:uuid2];

    if (v54 == v53 || ([v54 canWrapToNextGroup] & 1) != 0)
    {
      v12 = v75[5];
      if (!v12 || ([v12 active] & 1) == 0)
      {
        v49[2](v49, firstObject);
      }

      v13 = [CRWrappingEvaluationResult alloc];
      v14 = v75[5];
      boundingQuad = [(CRWrappingEvaluationResult *)firstObject boundingQuad];
      [boundingQuad normalizationSize];
      v16 = [(CRWrappingEvaluationResult *)v13 initWithTextFeature:v9 context:v14 imageSize:v69[5] parameters:?];

      if ([(CRWrappingEvaluationResult *)firstObject lineWrappingType])
      {
        if (self->_debugLineWrapping)
        {
          v17 = CROSLogForCategory(4);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v52 count];
            lineWrappingType = [(CRWrappingEvaluationResult *)firstObject lineWrappingType];
            loga = [(CRWrappingEvaluationResult *)firstObject text];
            text = [v9 text];
            locale = [(CRWrappingEvaluationResult *)firstObject locale];
            v22 = [locale description];
            *buf = 134219267;
            v82 = i;
            v83 = 2048;
            v84 = v18;
            v85 = 2048;
            v86 = lineWrappingType;
            v87 = 2117;
            v88 = loga;
            v89 = 2117;
            v90 = text;
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
        [(CRWrappingEvaluationResult *)firstObject setLineWrappingType:v33];
        if (self->_debugLineWrapping)
        {
          log = CROSLogForCategory(4);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v34 = [v52 count];
            text2 = [(CRWrappingEvaluationResult *)firstObject text];
            text3 = [v9 text];
            locale2 = [(CRWrappingEvaluationResult *)firstObject locale];
            localeIdentifier = [locale2 localeIdentifier];
            *buf = 134219523;
            v82 = i;
            v83 = 2048;
            v84 = v34;
            v85 = 2048;
            v86 = v33;
            v87 = 2117;
            v88 = text2;
            v89 = 2117;
            v90 = text3;
            v91 = 2112;
            v92 = localeIdentifier;
            v93 = 2112;
            v94 = v17;
            _os_log_impl(&dword_1B40D2000, log, OS_LOG_TYPE_DEBUG, "#%lu/%lu wrap=%lu: |%{sensitive}@|%{sensitive}@| (%@) reason=%@", buf, 0x48u);
          }
        }

LABEL_23:
      }

      if ([(CRWrappingEvaluationResult *)firstObject lineWrappingType]== 1)
      {
        [v75[5] resetContext];
        goto LABEL_30;
      }

      [v75[5] addResult:v16 mergeOversegmentation:{-[CRLineWrappingConfiguration mergeOversegmentedTokens](self->_configuration, "mergeOversegmentedTokens")}];
      if ([(CRWrappingEvaluationResult *)v16 isOversegmented]&& [(CRLineWrappingConfiguration *)self->_configuration mergeOversegmentedTokens])
      {
        [(CRWrappingEvaluationResult *)firstObject setLineWrappingType:0];
        uuid3 = [v9 uuid];
        v39 = [v51 objectForKeyedSubscript:uuid3];
        v40 = objc_opt_respondsToSelector();

        if ((v40 & 1) == 0)
        {
          goto LABEL_32;
        }

        uuid4 = [v9 uuid];
        v42 = [v51 objectForKeyedSubscript:uuid4];
        [v42 removeSubregion:v9];
      }

      else
      {
LABEL_30:
        uuid4 = firstObject;
        firstObject = v9;
      }

      goto LABEL_32;
    }

    [(CRWrappingEvaluationResult *)firstObject setLineWrappingType:1];
    if (self->_debugLineWrapping)
    {
      v23 = CROSLogForCategory(4);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v52 count];
        lineWrappingType2 = [(CRWrappingEvaluationResult *)firstObject lineWrappingType];
        text4 = [(CRWrappingEvaluationResult *)firstObject text];
        text5 = [v9 text];
        locale3 = [(CRWrappingEvaluationResult *)firstObject locale];
        localeIdentifier2 = [locale3 localeIdentifier];
        *buf = 134219523;
        v82 = i;
        v83 = 2048;
        v84 = v24;
        v85 = 2048;
        v86 = lineWrappingType2;
        v87 = 2117;
        v88 = text4;
        v89 = 2117;
        v90 = text5;
        v91 = 2112;
        v92 = localeIdentifier2;
        v93 = 2112;
        v94 = @"blockBoundary";
        _os_log_impl(&dword_1B40D2000, v23, OS_LOG_TYPE_DEBUG, "#%lu/%lu wrap=%lu: |%{sensitive}@|%{sensitive}@| (%@) reason=%@", buf, 0x48u);
      }
    }

    [v75[5] resetContext];
    v16 = firstObject;
    firstObject = v9;
LABEL_32:
  }

  lastObject = [v52 lastObject];
  [lastObject setLineWrappingType:1];

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

- (BOOL)_shouldInsertLineBreakForResult:(id)result parameters:(id)parameters context:(id)context reason:(id *)reason
{
  resultCopy = result;
  parametersCopy = parameters;
  contextCopy = context;
  featureInTest = [resultCopy featureInTest];
  lastFeature = [contextCopy lastFeature];
  v13 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [featureInTest confidenceScore];
    v13 = v14;
  }

  v15 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [lastFeature confidenceScore];
    v15 = v16;
  }

  textBasedEvaluation = [resultCopy textBasedEvaluation];
  if ([resultCopy matchingLocales])
  {
    [parametersCopy confidenceThreshold];
    if (v13 < v18)
    {
      v19 = @"confidenceLow";
      goto LABEL_11;
    }

    [parametersCopy contextConfidenceThreshold];
    if (v15 < v25)
    {
      v19 = @"contextConfidenceLow";
      goto LABEL_11;
    }

    if ([resultCopy similarHeights] && (objc_msgSend(resultCopy, "similarAngles") & 1) != 0)
    {
      if (([resultCopy isOversegmented] & 1) != 0 || (objc_msgSend(resultCopy, "widthGrowth"), v27 = v26, objc_msgSend(parametersCopy, "widthGrowthLimit"), v27 < v28) || (v29 = objc_msgSend(resultCopy, "tokenCountDiff"), v29 < objc_msgSend(parametersCopy, "tokenCountIncreaseLimit")))
      {
        if ([resultCopy isOversegmented] & 1) != 0 || (objc_msgSend(resultCopy, "leadingAligned") & 1) != 0 || (objc_msgSend(resultCopy, "centerAligned") & 1) != 0 || (objc_msgSend(resultCopy, "continuesToNewColumn"))
        {
          if ([resultCopy excessiveVerticalDistance])
          {
            v19 = @"excessiveVerticalDistance";
          }

          else
          {
            if (textBasedEvaluation > [parametersCopy noWrappingEvaluationThreshold])
            {
              continuesToNewColumn = [resultCopy continuesToNewColumn];
              if (textBasedEvaluation == 10)
              {
                v35 = continuesToNewColumn;
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
                if (([resultCopy continuesToNewColumn] & 1) == 0 && textBasedEvaluation >= objc_msgSend(parametersCopy, "wrappingEvaluationThreshold"))
                {
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"textEvaluationWithoutNewColumn:%ld", textBasedEvaluation];
                  *reason = v32 = 0;
                  goto LABEL_29;
                }

                if ([contextCopy isClassifierAvailable])
                {
                  *reason = @"classifier";
                  [parametersCopy probabilityThreshold];
                  v32 = [contextCopy classifierShouldInsertLineBreakForEvaluationResult:resultCopy threshold:1 useThresholdOverride:?];
                  goto LABEL_29;
                }

                [resultCopy lmScore];
                v41 = v40;
                [parametersCopy lmScoreThreshold];
                if (v41 <= v42 || textBasedEvaluation < 3)
                {
                  if (v41 <= 0.0)
                  {
                    v19 = @"LMUnknown";
                  }

                  else
                  {
                    [resultCopy eosLMScore];
                    v44 = v43;
                    if (v43 > 0.0 && v41 > v43)
                    {
                      *reason = @"LMScoreRatio";
                      [parametersCopy lmScoreEOSMinRatio];
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

              *reason = v36;
              goto LABEL_29;
            }

            v19 = @"textEvaluation";
          }

LABEL_11:
          *reason = v19;
          goto LABEL_28;
        }

        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textAlignment:%d%d%d%d", objc_msgSend(resultCopy, "isOversegmented"), objc_msgSend(resultCopy, "leadingAligned"), objc_msgSend(resultCopy, "centerAligned"), objc_msgSend(resultCopy, "continuesToNewColumn")];
      }

      else
      {
        v37 = MEMORY[0x1E696AEC0];
        [resultCopy widthGrowth];
        v39 = [v37 stringWithFormat:@"widthGrowthAndTokenCount:%4.2f, %ld", v38, objc_msgSend(resultCopy, "tokenCountDiff")];
      }

      v31 = v39;
    }

    else
    {
      if ([resultCopy similarHeights])
      {
        v30 = @"geometryAngle";
      }

      else
      {
        v30 = @"geometryHeight";
      }

      v31 = v30;
    }

    *reason = v31;
    goto LABEL_28;
  }

  v20 = MEMORY[0x1E696AEC0];
  locale = [lastFeature locale];
  localeIdentifier = [locale localeIdentifier];
  locale2 = [featureInTest locale];
  localeIdentifier2 = [locale2 localeIdentifier];
  *reason = [v20 stringWithFormat:@"localeMismatch:%@:%@", localeIdentifier, localeIdentifier2];

LABEL_28:
  v32 = 1;
LABEL_29:

  return v32;
}

- (BOOL)_shouldInsertLineBreakForResult:(id)result withOverwrappingCorrection:(BOOL)correction parameters:(id)parameters context:(id)context reason:(id *)reason
{
  resultCopy = result;
  parametersCopy = parameters;
  contextCopy = context;
  v15 = [(CRLineWrapper *)self _shouldInsertLineBreakForResult:resultCopy parameters:parametersCopy context:contextCopy reason:reason];
  if (!v15 && correction)
  {
    if ([contextCopy classifierShouldCorrectOverwrappingWithEvaluation:objc_msgSend(resultCopy correctionMode:{"textBasedEvaluation"), objc_msgSend(parametersCopy, "correctionMode")}] && (objc_msgSend(parametersCopy, "probabilityThreshold"), objc_msgSend(contextCopy, "classifierShouldInsertLineBreakForEvaluationResult:threshold:useThresholdOverride:", resultCopy, 0)))
    {
      *reason = [*reason stringByAppendingString:@"+overwrappingCorrected"];
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_allLinesInGroups:(id)groups groupMapping:(id *)mapping
{
  v32 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = groupsCopy;
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
        subregions = [v8 subregions];
        v10 = [subregions countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(subregions);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              uuid = [v13 uuid];
              [v5 setObject:v8 forKeyedSubscript:uuid];

              [v4 addObject:v13];
            }

            v10 = [subregions countByEnumeratingWithState:&v22 objects:v30 count:16];
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
    *mapping = [v5 copy];
  }

  v15 = [v4 copy];

  return v15;
}

@end