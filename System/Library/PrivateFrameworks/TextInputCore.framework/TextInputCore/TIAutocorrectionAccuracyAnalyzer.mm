@interface TIAutocorrectionAccuracyAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)analyzeWordEntryAligned:(id)aligned;
- (TIAutocorrectionAccuracyAnalyzer)init;
- (void)registerEventSpec;
@end

@implementation TIAutocorrectionAccuracyAnalyzer

- (void)registerEventSpec
{
  v111 = *MEMORY[0x277D85DE8];
  v95 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"outcome"];
  v102[0] = v95;
  v93 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"alignmentConfidence"];
  v102[1] = v93;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v91 = TIFeatureUsageAllowedValues();
  v89 = [v2 stringFieldSpecWithName:v3 allowedValues:v91];
  v102[2] = v89;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v87 = TIFeatureUsageAllowedValues();
  v85 = [v4 stringFieldSpecWithName:v5 allowedValues:v87];
  v102[3] = v85;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v83 = TIFeatureUsageAllowedValues();
  v81 = [v6 stringFieldSpecWithName:v7 allowedValues:v83];
  v102[4] = v81;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v79 = TIFeatureUsageAllowedValues();
  v77 = [v8 stringFieldSpecWithName:v9 allowedValues:v79];
  v102[5] = v77;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v75 = TIFeatureUsageAllowedValues();
  v73 = [v10 stringFieldSpecWithName:v11 allowedValues:v75];
  v102[6] = v73;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v71 = TITypingSpeedAllowedValues();
  v69 = [v12 stringFieldSpecWithName:v13 allowedValues:v71];
  v102[7] = v69;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringTypingEngine;
  v67 = TITypingEngineAllowedValues();
  v65 = [v14 stringFieldSpecWithName:v15 allowedValues:v67];
  v102[8] = v65;
  v16 = MEMORY[0x277D6F308];
  v17 = kFeatureStringAssetAvailabilityStatus;
  v18 = TIAssetAvailabilityStatusAllowedValues();
  v19 = [v16 stringFieldSpecWithName:v17 allowedValues:v18];
  v102[9] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v102[10] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v102[11] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v102[12] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v102[13] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v102[14] = v24;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v102[15] = v25;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v102[16] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:17];

  v62 = v27;
  v101[0] = v27;
  v28 = fieldNameSuffices();
  array = [MEMORY[0x277CBEB18] array];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v28;
  v68 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v68)
  {
    v64 = *v98;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v98 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v97 + 1) + 8 * i);
        v31 = MEMORY[0x277D6F308];
        v96 = [@"sourceBitset" stringByAppendingString:v30];
        v94 = [v31 integerFieldSpecWithName:v96 minValue:&unk_28400BCE8 maxValue:0 significantDigits:0];
        *&v103 = v94;
        v32 = MEMORY[0x277D6F308];
        v92 = [@"length" stringByAppendingString:v30];
        v90 = [v32 integerFieldSpecWithName:v92 minValue:&unk_28400BCE8 maxValue:0 significantDigits:0];
        *(&v103 + 1) = v90;
        v33 = MEMORY[0x277D6F308];
        v88 = [@"capitalization" stringByAppendingString:v30];
        v86 = [v33 stringFieldSpecWithName:v88];
        *&v104 = v86;
        v34 = MEMORY[0x277D6F308];
        v84 = [@"diacritics" stringByAppendingString:v30];
        v82 = [v34 BOOLeanFieldSpecWithName:v84];
        *(&v104 + 1) = v82;
        v35 = MEMORY[0x277D6F308];
        v80 = [@"punctuation" stringByAppendingString:v30];
        v78 = [v35 BOOLeanFieldSpecWithName:v80];
        *&v105 = v78;
        v36 = MEMORY[0x277D6F308];
        v76 = [@"multiword" stringByAppendingString:v30];
        v74 = [v36 BOOLeanFieldSpecWithName:v76];
        *(&v105 + 1) = v74;
        v37 = MEMORY[0x277D6F308];
        v72 = [@"geometryScore" stringByAppendingString:v30];
        v70 = [v37 integerFieldSpecWithName:v72 minValue:0 maxValue:0 significantDigits:0];
        *&v106 = v70;
        v38 = MEMORY[0x277D6F308];
        v39 = [@"languageModelScore" stringByAppendingString:v30];
        v40 = [v38 integerFieldSpecWithName:v39 minValue:0 maxValue:0 significantDigits:0];
        *(&v106 + 1) = v40;
        v41 = MEMORY[0x277D6F308];
        v42 = [@"language" stringByAppendingString:v30];
        v43 = [v41 stringFieldSpecWithName:v42];
        v107 = v43;
        v44 = MEMORY[0x277D6F308];
        v45 = [@"localUsageCount" stringByAppendingString:v30];
        v46 = [v44 integerFieldSpecWithName:v45 minValue:0 maxValue:0 significantDigits:0];
        v108 = v46;
        v47 = MEMORY[0x277D6F308];
        v48 = [@"localPenaltyCount" stringByAppendingString:v30];
        v49 = [v47 integerFieldSpecWithName:v48 minValue:0 maxValue:0 significantDigits:0];
        v109 = v49;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:11];
        [array addObjectsFromArray:v50];
      }

      v68 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v68);
  }

  v101[1] = array;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
  array2 = [MEMORY[0x277CBEB18] array];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v53 = v51;
  v54 = [v53 countByEnumeratingWithState:&v103 objects:v110 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v104;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v104 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [array2 addObjectsFromArray:*(*(&v103 + 1) + 8 * j)];
      }

      v55 = [v53 countByEnumeratingWithState:&v103 objects:v110 count:16];
    }

    while (v55);
  }

  v58 = [array2 copy];
  v59 = [MEMORY[0x277D6F300] eventSpecWithName:@"autocorrectionAccuracy" inputModeRequired:0 fieldSpecs:v58];
  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v59];

  v61 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeWordEntryAligned:(id)aligned
{
  v152 = *MEMORY[0x277D85DE8];
  alignedCopy = aligned;
  originalWord = [alignedCopy originalWord];
  keyboardState = [originalWord keyboardState];

  v7 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_currentSession sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_currentSession sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v12 = [(TIKBAnalyticsMetricsContext *)v7 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

  v13 = v12;
  v14 = objc_alloc(MEMORY[0x277CBEAF8]);
  inputLanguageAndRegion = [v13 inputLanguageAndRegion];
  v16 = [v14 initWithLocaleIdentifier:inputLanguageAndRegion];

  if (v16)
  {
    v125 = keyboardState;
    v17 = alignedCopy;
    v126 = v16;
    v128 = v17;
    originalWord2 = [v17 originalWord];
    candidatesOffered = [originalWord2 candidatesOffered];
    lastObject = [candidatesOffered lastObject];

    corrections = [lastObject corrections];
    autocorrection = [corrections autocorrection];

    input = [autocorrection input];
    candidate = [autocorrection candidate];
    v130 = originalWord2;
    acceptedString = [originalWord2 acceptedString];
    v26 = [acceptedString stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    v124 = v16;
    if ([input isEqualToString:candidate])
    {
      v27 = 0;
    }

    else if ([v26 isEqualToString:candidate])
    {
      if (([v130 wordEntryType] & 4) != 0)
      {
        v27 = @"selectedAutocorrection";
      }

      else
      {
        editedEntry = [v130 editedEntry];
        if (editedEntry)
        {
          v101 = editedEntry;
          acceptedString2 = [editedEntry acceptedString];
          v122 = acceptedString2;
          if ([acceptedString2 isEqualToString:input])
          {
            v27 = @"revisedToInput";
          }

          else if ([acceptedString2 isEqualToString:v26])
          {
            v27 = @"revisedBackToAutocorrection";
          }

          else
          {
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            objb = [lastObject predictions];
            v120 = [objb countByEnumeratingWithState:&v144 objects:buf count:16];
            if (v120)
            {
              v109 = v13;
              v112 = alignedCopy;
              v115 = *v145;
              v27 = @"revisedToAlternate";
LABEL_60:
              v93 = 0;
              while (1)
              {
                if (*v145 != v115)
                {
                  objc_enumerationMutation(objb);
                }

                candidate2 = [*(*(&v144 + 1) + 8 * v93) candidate];
                v95 = [v122 isEqualToString:candidate2];

                if (v95)
                {
                  break;
                }

                if (v120 == ++v93)
                {
                  v120 = [objb countByEnumeratingWithState:&v144 objects:buf count:16];
                  if (v120)
                  {
                    goto LABEL_60;
                  }

                  v27 = @"revisedToNew";
                  break;
                }
              }

              v13 = v109;
              alignedCopy = v112;
              v16 = v124;
            }

            else
            {
              v27 = @"revisedToNew";
            }
          }

          editedEntry = v101;
        }

        else
        {
          v27 = @"acceptedAutocorrection";
        }
      }
    }

    else if ([v26 isEqualToString:input])
    {
      if (([v130 wordEntryType] & 4) != 0)
      {
        v27 = @"selectedInput";
      }

      else
      {
        v27 = @"rejectedAutocorrection";
      }
    }

    else
    {
      v27 = @"selectedAlternate";
    }

    v28 = v130;
    v29 = v27;
    v30 = v29;
    if (v29)
    {
      v149[0] = v29;
      v148[0] = @"outcome";
      v148[1] = @"alignmentConfidence";
      v31 = v128;
      inSessionAlignmentConfidence = [v128 inSessionAlignmentConfidence];
      v121 = v30;
      if (alignmentConfidence_onceToken != -1)
      {
        dispatch_once(&alignmentConfidence_onceToken, &__block_literal_global_21666);
      }

      v33 = alignmentConfidence_map;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:inSessionAlignmentConfidence];
      v35 = [v33 objectForKeyedSubscript:v34];

      v149[1] = v35;
      v148[2] = kFeatureStringTypingEngine;
      acceptedCandidate = [v130 acceptedCandidate];
      [acceptedCandidate typingEngine];
      v37 = TIKeyboardCandidateTypingEngineTypeToString();
      v149[2] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:3];

      candidatesOffered2 = [v130 candidatesOffered];
      lastObject2 = [candidatesOffered2 lastObject];

      corrections2 = [lastObject2 corrections];
      autocorrection2 = [corrections2 autocorrection];

      v43 = autocorrection2;
      selfCopy = self;
      v118 = lastObject2;
      if ([autocorrection2 isAutocorrection])
      {
        v107 = v13;
        v110 = alignedCopy;
        predictions = [lastObject2 predictions];
        v113 = autocorrection2;
        input2 = [autocorrection2 input];
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v46 = predictions;
        v47 = [v46 countByEnumeratingWithState:&v136 objects:buf count:16];
        obj = v38;
        if (v47)
        {
          v48 = v47;
          v49 = *v137;
LABEL_10:
          v50 = 0;
          while (1)
          {
            if (*v137 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v136 + 1) + 8 * v50);
            candidate3 = [v51 candidate];
            if (candidate3)
            {
              v53 = candidate3;
              candidate4 = [v51 candidate];
              v55 = [candidate4 isEqualToString:input2];

              if (v55)
              {
                break;
              }
            }

            if (v48 == ++v50)
            {
              v48 = [v46 countByEnumeratingWithState:&v136 objects:buf count:16];
              if (v48)
              {
                goto LABEL_10;
              }

              goto LABEL_17;
            }
          }

          v56 = v126;
          v62 = payloadForCandidate(v51, @"_input", v126);

          if (v62)
          {
            goto LABEL_33;
          }
        }

        else
        {
LABEL_17:

          v56 = v126;
        }

        v62 = payloadForText(input2, @"_input", v56);
LABEL_33:
        v63 = payloadForCandidate(v113, @"_autocorrection", v56);
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v64 = v46;
        v65 = [v64 countByEnumeratingWithState:&v132 objects:&v144 count:16];
        if (v65)
        {
          v66 = v65;
          v99 = v63;
          v102 = v62;
          v67 = *v133;
          while (2)
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v133 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = *(*(&v132 + 1) + 8 * i);
              candidate5 = [v69 candidate];
              if (candidate5)
              {
                v71 = candidate5;
                candidate6 = [v69 candidate];
                v73 = [candidate6 isEqualToString:input2];

                if ((v73 & 1) == 0)
                {
                  v56 = v126;
                  v74 = payloadForCandidate(v69, @"_alternate", v126);
                  v63 = v99;
                  v62 = v102;
                  goto LABEL_45;
                }
              }
            }

            v66 = [v64 countByEnumeratingWithState:&v132 objects:&v144 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }

          v56 = v126;
          v63 = v99;
          v62 = v102;
        }

        v74 = MEMORY[0x277CBEC10];
LABEL_45:

        v143[0] = v62;
        v143[1] = v63;
        v143[2] = v74;
        v38 = obj;
        v143[3] = obj;
        v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:4];
        v61 = mergeDicts(v75);

        v13 = v107;
        alignedCopy = v110;
        v30 = v121;
        v16 = v124;
        v31 = v128;
        v28 = v130;
        v43 = v113;
      }

      else
      {
        v61 = 0;
        v56 = v126;
        v30 = v121;
      }

      v57 = v61;
      self = selfCopy;
    }

    else
    {
      v57 = 0;
      v56 = v126;
      v31 = v128;
    }

    if (v57)
    {
      v141[0] = kFeatureKeyboardUsage;
      featureUsageMetricsCache = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v129 = [featureUsageMetricsCache featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v13];
      v142[0] = v129;
      v141[1] = kFeatureContinuousPathUsage;
      featureUsageMetricsCache2 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v123 = [featureUsageMetricsCache2 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v13];
      v142[1] = v123;
      v141[2] = kFeatureAutocorrectionUsage;
      featureUsageMetricsCache3 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v114 = [featureUsageMetricsCache3 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v13];
      v142[2] = v114;
      v141[3] = kFeatureCandidateBarUsage;
      featureUsageMetricsCache4 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v108 = [featureUsageMetricsCache4 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v13];
      v142[3] = v108;
      v141[4] = kFeatureMultilingualUsage;
      obja = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v103 = [obja featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v13];
      v142[4] = v103;
      v141[5] = kFeatureStringTypingSpeed;
      featureUsageMetricsCache5 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v98 = [featureUsageMetricsCache5 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v13];
      v142[5] = v98;
      v141[6] = kFeatureStringAssetAvailabilityStatus;
      sessionParams3 = [(TITypingSession *)self->_currentSession sessionParams];
      assetAvailabilityStatus = [sessionParams3 assetAvailabilityStatus];
      v77 = @"Installed";
      if (!assetAvailabilityStatus)
      {
        v77 = @"Unavailable";
      }

      v97 = v77;
      v142[6] = v97;
      v141[7] = kFeatureStringKeyboardLanguage;
      inputLanguage = [v13 inputLanguage];
      v142[7] = inputLanguage;
      v141[8] = kFeatureStringKeyboardRegion;
      inputRegion = [v13 inputRegion];
      v142[8] = inputRegion;
      v141[9] = kFeatureStringKeyboardVariant;
      inputVariant = [v13 inputVariant];
      v142[9] = inputVariant;
      v141[10] = kFeatureStringKeyboardSecondaryLanguage;
      secondaryLanguage = [v13 secondaryLanguage];
      v142[10] = secondaryLanguage;
      v141[11] = kFeatureStringKeyboardSecondaryRegion;
      secondaryRegion = [v13 secondaryRegion];
      v142[11] = secondaryRegion;
      v141[12] = kFeatureStringKeyboardLayout;
      [v13 layoutName];
      v84 = v83 = alignedCopy;
      v142[12] = v84;
      v141[13] = kFeatureStringKeyboardType;
      +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [v13 keyboardType]);
      v86 = v85 = v57;
      v142[13] = v86;
      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:14];

      v57 = v85;
      alignedCopy = v83;

      v140[0] = v96;
      v140[1] = v85;
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:2];
      v88 = mergeDicts(v87);

      v16 = v124;
      mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
      testingParameters2 = [v13 testingParameters];
      [mEMORY[0x277D6F318] dispatchEventWithName:@"autocorrectionAccuracy" payload:v88 testingParameters:testingParameters2 allowSparsePayload:1];
    }

    keyboardState = v125;
  }

  else
  {
    v57 = IXADefaultLogFacility();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Input context has no locale", "-[TIAutocorrectionAccuracyAnalyzer analyzeWordEntryAligned:]"];
      *buf = 138412290;
      v151 = v58;
      _os_log_error_impl(&dword_22CA55000, v57, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v91 = *MEMORY[0x277D85DE8];
  return v16 != 0;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  objc_storeStrong(&self->_currentSession, session);
  if (confidence)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    alignedEntries = [alignedSessionCopy alignedEntries];
    v12 = [alignedEntries countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(alignedEntries);
          }

          if (![(TIAutocorrectionAccuracyAnalyzer *)self analyzeWordEntryAligned:*(*(&v19 + 1) + 8 * i)])
          {
            v16 = 0;
            goto LABEL_12;
          }
        }

        v13 = [alignedEntries countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (TIAutocorrectionAccuracyAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TIAutocorrectionAccuracyAnalyzer;
  v2 = [(TIAutocorrectionAccuracyAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TIAutocorrectionAccuracyAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end