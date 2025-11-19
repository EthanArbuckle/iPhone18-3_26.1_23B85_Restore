@interface ASRSchemaASRRecognitionMetrics
- (ASRSchemaASRRecognitionMetrics)initWithDictionary:(id)a3;
- (ASRSchemaASRRecognitionMetrics)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)pauseReasonAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)pausedAudioDurationsInNsAtIndex:(unint64_t)a3;
- (void)addLanguageModelInterpolationWeights:(id)a3;
- (void)addPauseReason:(int)a3;
- (void)addPausedAudioDurationsInNs:(unint64_t)a3;
- (void)setHasAppleNeuralEngineCpuTimeInNs:(BOOL)a3;
- (void)setHasAudioDurationInNs:(BOOL)a3;
- (void)setHasAverageActiveTokensPerFrame:(BOOL)a3;
- (void)setHasContinuousListeningEnabled:(BOOL)a3;
- (void)setHasCpuInstructionsInMillionsPerSecond:(BOOL)a3;
- (void)setHasCpuRealTimeFactor:(BOOL)a3;
- (void)setHasEagerCustomerPerceivedLatencyInNs:(BOOL)a3;
- (void)setHasEagerEnabled:(BOOL)a3;
- (void)setHasInverseTextNormalizationDurationForFinalResultInNs:(BOOL)a3;
- (void)setHasInverseTextNormalizationDurationInNs:(BOOL)a3;
- (void)setHasNumIngestedNeuralContextualBiasingEmbeddings:(BOOL)a3;
- (void)setHasNumLanguageModelEnrollmentDataStreams:(BOOL)a3;
- (void)setHasNumberOfInverseTextNormalizationRuns:(BOOL)a3;
- (void)setHasNumberOfSecondaryPassRuns:(BOOL)a3;
- (void)setHasPageInsWaitTimeInNs:(BOOL)a3;
- (void)setHasPersonalizedLanguageModelWeight:(BOOL)a3;
- (void)setHasRecognitionDurationInNs:(BOOL)a3;
- (void)setHasRecognitionHardware:(BOOL)a3;
- (void)setHasSignalToNoiseRatioInDecibels:(BOOL)a3;
- (void)setHasUtteranceConcatenationEnabled:(BOOL)a3;
- (void)setHasUtteranceDetectionEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRRecognitionMetrics

- (ASRSchemaASRRecognitionMetrics)initWithDictionary:(id)a3
{
  v108 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v104.receiver = self;
  v104.super_class = ASRSchemaASRRecognitionMetrics;
  v5 = [(ASRSchemaASRRecognitionMetrics *)&v104 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"personalizedLanguageModelAgeInNs"];
    objc_opt_class();
    v91 = v6;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setPersonalizedLanguageModelAgeInNs:](v5, "setPersonalizedLanguageModelAgeInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"personalizedLanguageModelWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(ASRSchemaASRRecognitionMetrics *)v5 setPersonalizedLanguageModelWeight:?];
    }

    v72 = v7;
    v8 = [v4 objectForKeyedSubscript:@"recognizerComponents"];
    objc_opt_class();
    v90 = v8;
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRRecognizerComponents alloc] initWithDictionary:v8];
      [(ASRSchemaASRRecognitionMetrics *)v5 setRecognizerComponents:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"averageActiveTokensPerFrame"];
    objc_opt_class();
    v89 = v10;
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(ASRSchemaASRRecognitionMetrics *)v5 setAverageActiveTokensPerFrame:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"languageModelInterpolationWeights"];
    objc_opt_class();
    v88 = v11;
    if (objc_opt_isKindOfClass())
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v100 objects:v107 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v101;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v101 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v100 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[ASRSchemaASRInterpolationWeightBundle alloc] initWithDictionary:v17];
              [(ASRSchemaASRRecognitionMetrics *)v5 addLanguageModelInterpolationWeights:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v100 objects:v107 count:16];
        }

        while (v14);
      }
    }

    v19 = [v4 objectForKeyedSubscript:@"signalToNoiseRatioInDecibels"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(ASRSchemaASRRecognitionMetrics *)v5 setSignalToNoiseRatioInDecibels:?];
    }

    v20 = [v4 objectForKeyedSubscript:@"recognitionDurationInNs"];
    objc_opt_class();
    v87 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setRecognitionDurationInNs:](v5, "setRecognitionDurationInNs:", [v20 unsignedLongLongValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"audioDurationInNs"];
    objc_opt_class();
    v86 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setAudioDurationInNs:](v5, "setAudioDurationInNs:", [v21 unsignedLongLongValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"eagerEnabled"];
    objc_opt_class();
    v85 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setEagerEnabled:](v5, "setEagerEnabled:", [v22 BOOLValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"utteranceDetectionEnabled"];
    objc_opt_class();
    v84 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setUtteranceDetectionEnabled:](v5, "setUtteranceDetectionEnabled:", [v23 BOOLValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"utteranceConcatenationEnabled"];
    objc_opt_class();
    v83 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setUtteranceConcatenationEnabled:](v5, "setUtteranceConcatenationEnabled:", [v24 BOOLValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"continuousListeningEnabled"];
    objc_opt_class();
    v82 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setContinuousListeningEnabled:](v5, "setContinuousListeningEnabled:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"eagerCustomerPerceivedLatencyInNs"];
    objc_opt_class();
    v81 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setEagerCustomerPerceivedLatencyInNs:](v5, "setEagerCustomerPerceivedLatencyInNs:", [v26 unsignedLongLongValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"cpuRealTimeFactor"];
    objc_opt_class();
    v80 = v27;
    if (objc_opt_isKindOfClass())
    {
      [v27 floatValue];
      [(ASRSchemaASRRecognitionMetrics *)v5 setCpuRealTimeFactor:?];
    }

    v28 = [v4 objectForKeyedSubscript:@"numLanguageModelEnrollmentDataStreams"];
    objc_opt_class();
    v79 = v28;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setNumLanguageModelEnrollmentDataStreams:](v5, "setNumLanguageModelEnrollmentDataStreams:", [v28 unsignedIntValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"phoneticMatchDecoderName"];
    objc_opt_class();
    v78 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(ASRSchemaASRRecognitionMetrics *)v5 setPhoneticMatchDecoderName:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"inverseTextNormalizationDurationInNs"];
    objc_opt_class();
    v77 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setInverseTextNormalizationDurationInNs:](v5, "setInverseTextNormalizationDurationInNs:", [v31 unsignedLongLongValue]);
    }

    v32 = [v4 objectForKeyedSubscript:@"emojiMetrics"];
    objc_opt_class();
    v76 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[ASRSchemaASREmojiMetrics alloc] initWithDictionary:v32];
      [(ASRSchemaASRRecognitionMetrics *)v5 setEmojiMetrics:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"pausedAudioDurationsInNs"];
    objc_opt_class();
    v71 = v19;
    if (objc_opt_isKindOfClass())
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v35 = v34;
      v36 = v34;
      v37 = [v36 countByEnumeratingWithState:&v96 objects:v106 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v97;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v97 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v96 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRRecognitionMetrics addPausedAudioDurationsInNs:](v5, "addPausedAudioDurationsInNs:", [v41 unsignedLongLongValue]);
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v96 objects:v106 count:16];
        }

        while (v38);
      }

      v19 = v71;
      v34 = v35;
    }

    v42 = [v4 objectForKeyedSubscript:@"inverseTextNormalizationDurationForFinalResultInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setInverseTextNormalizationDurationForFinalResultInNs:](v5, "setInverseTextNormalizationDurationForFinalResultInNs:", [v42 unsignedLongLongValue]);
    }

    v43 = [v4 objectForKeyedSubscript:@"numberOfInverseTextNormalizationRuns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setNumberOfInverseTextNormalizationRuns:](v5, "setNumberOfInverseTextNormalizationRuns:", [v43 unsignedIntValue]);
    }

    v44 = [v4 objectForKeyedSubscript:@"secondaryPassDurationInNs"];
    objc_opt_class();
    v75 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setSecondaryPassDurationInNs:](v5, "setSecondaryPassDurationInNs:", [v44 unsignedLongLongValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"numberOfSecondaryPassRuns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setNumberOfSecondaryPassRuns:](v5, "setNumberOfSecondaryPassRuns:", [v45 unsignedIntValue]);
    }

    v69 = v45;
    v46 = [v4 objectForKeyedSubscript:@"cpuInstructionsInMillionsPerSecond"];
    objc_opt_class();
    v74 = v46;
    v47 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setCpuInstructionsInMillionsPerSecond:](v5, "setCpuInstructionsInMillionsPerSecond:", [v74 unsignedLongLongValue]);
    }

    v48 = [v4 objectForKeyedSubscript:@"appleNeuralEngineCpuTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setAppleNeuralEngineCpuTimeInNs:](v5, "setAppleNeuralEngineCpuTimeInNs:", [v48 unsignedLongLongValue]);
    }

    v49 = [v4 objectForKeyedSubscript:@"pageInsWaitTimeInNs"];
    objc_opt_class();
    v73 = v49;
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setPageInsWaitTimeInNs:](v5, "setPageInsWaitTimeInNs:", [v49 unsignedLongLongValue]);
    }

    v50 = [v4 objectForKeyedSubscript:@"recognitionHardware"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setRecognitionHardware:](v5, "setRecognitionHardware:", [v50 intValue]);
    }

    v68 = v50;
    v70 = v43;
    v51 = [v4 objectForKeyedSubscript:@"numIngestedNeuralContextualBiasingEmbeddings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRRecognitionMetrics setNumIngestedNeuralContextualBiasingEmbeddings:](v5, "setNumIngestedNeuralContextualBiasingEmbeddings:", [v51 unsignedIntValue]);
    }

    v67 = v51;
    v52 = [v4 objectForKeyedSubscript:@"pauseReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = v48;
      v65 = v42;
      v66 = v34;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v53 = v52;
      v54 = [v53 countByEnumeratingWithState:&v92 objects:v105 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v93;
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (*v93 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v92 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRRecognitionMetrics addPauseReason:](v5, "addPauseReason:", [v58 intValue]);
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v92 objects:v105 count:16];
        }

        while (v55);
      }

      v47 = v71;
      v42 = v65;
      v34 = v66;
      v48 = v64;
    }

    v59 = [v4 objectForKeyedSubscript:{@"rescoringDeliberationResult", v64, v65, v66}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = v48;
      v61 = [[ASRSchemaASRRescoringDeliberationResult alloc] initWithDictionary:v59];
      [(ASRSchemaASRRecognitionMetrics *)v5 setRescoringDeliberationResult:v61];

      v48 = v60;
    }

    v62 = v5;
  }

  return v5;
}

- (ASRSchemaASRRecognitionMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRRecognitionMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRRecognitionMetrics *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  if ((*(&self->_has + 2) & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics appleNeuralEngineCpuTimeInNs](self, "appleNeuralEngineCpuTimeInNs")}];
    [v3 setObject:v5 forKeyedSubscript:@"appleNeuralEngineCpuTimeInNs"];
  }

  v6 = *p_has;
  if ((*p_has & 0x20) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics audioDurationInNs](self, "audioDurationInNs")}];
    [v3 setObject:v13 forKeyedSubscript:@"audioDurationInNs"];

    v6 = *p_has;
    if ((*p_has & 4) == 0)
    {
LABEL_5:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_5;
  }

  v14 = MEMORY[0x1E696AD98];
  [(ASRSchemaASRRecognitionMetrics *)self averageActiveTokensPerFrame];
  v15 = [v14 numberWithFloat:?];
  [v3 setObject:v15 forKeyedSubscript:@"averageActiveTokensPerFrame"];

  if ((*p_has & 0x200) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRRecognitionMetrics continuousListeningEnabled](self, "continuousListeningEnabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"continuousListeningEnabled"];
  }

LABEL_7:
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics cpuInstructionsInMillionsPerSecond](self, "cpuInstructionsInMillionsPerSecond")}];
    [v3 setObject:v8 forKeyedSubscript:@"cpuInstructionsInMillionsPerSecond"];
  }

  v9 = *p_has;
  if ((*p_has & 0x800) != 0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRRecognitionMetrics *)self cpuRealTimeFactor];
    v17 = [v16 numberWithFloat:?];
    [v3 setObject:v17 forKeyedSubscript:@"cpuRealTimeFactor"];

    v9 = *p_has;
    if ((*p_has & 0x400) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*p_has & 0x400) == 0)
  {
    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics eagerCustomerPerceivedLatencyInNs](self, "eagerCustomerPerceivedLatencyInNs")}];
  [v3 setObject:v18 forKeyedSubscript:@"eagerCustomerPerceivedLatencyInNs"];

  if ((*p_has & 0x40) != 0)
  {
LABEL_12:
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRRecognitionMetrics eagerEnabled](self, "eagerEnabled")}];
    [v3 setObject:v10 forKeyedSubscript:@"eagerEnabled"];
  }

LABEL_13:
  if (self->_emojiMetrics)
  {
    v11 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"emojiMetrics"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"emojiMetrics"];
    }
  }

  v20 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics inverseTextNormalizationDurationForFinalResultInNs](self, "inverseTextNormalizationDurationForFinalResultInNs")}];
    [v3 setObject:v21 forKeyedSubscript:@"inverseTextNormalizationDurationForFinalResultInNs"];

    v20 = *p_has;
  }

  if ((v20 & 0x2000) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics inverseTextNormalizationDurationInNs](self, "inverseTextNormalizationDurationInNs")}];
    [v3 setObject:v22 forKeyedSubscript:@"inverseTextNormalizationDurationInNs"];
  }

  if ([(NSArray *)self->_languageModelInterpolationWeights count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v24 = self->_languageModelInterpolationWeights;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v67;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v67 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v66 + 1) + 8 * i) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"languageModelInterpolationWeights"];
    p_has = &self->_has;
  }

  if ((*(p_has + 2) & 0x40) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRRecognitionMetrics numIngestedNeuralContextualBiasingEmbeddings](self, "numIngestedNeuralContextualBiasingEmbeddings")}];
    [v3 setObject:v31 forKeyedSubscript:@"numIngestedNeuralContextualBiasingEmbeddings"];
  }

  v32 = *p_has;
  if ((*p_has & 0x1000) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRRecognitionMetrics numLanguageModelEnrollmentDataStreams](self, "numLanguageModelEnrollmentDataStreams")}];
    [v3 setObject:v33 forKeyedSubscript:@"numLanguageModelEnrollmentDataStreams"];

    v32 = *p_has;
  }

  if (v32 < 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRRecognitionMetrics numberOfInverseTextNormalizationRuns](self, "numberOfInverseTextNormalizationRuns")}];
    [v3 setObject:v34 forKeyedSubscript:@"numberOfInverseTextNormalizationRuns"];
  }

  v35 = *(p_has + 2);
  if ((v35 & 2) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSchemaASRRecognitionMetrics numberOfSecondaryPassRuns](self, "numberOfSecondaryPassRuns")}];
    [v3 setObject:v36 forKeyedSubscript:@"numberOfSecondaryPassRuns"];

    v35 = *(p_has + 2);
  }

  if ((v35 & 0x10) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics pageInsWaitTimeInNs](self, "pageInsWaitTimeInNs")}];
    [v3 setObject:v37 forKeyedSubscript:@"pageInsWaitTimeInNs"];
  }

  if ([(NSArray *)self->_pauseReasons count])
  {
    v38 = [(ASRSchemaASRRecognitionMetrics *)self pauseReasons];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"pauseReason"];
  }

  if ([(NSArray *)self->_pausedAudioDurationsInNs count])
  {
    v40 = [(ASRSchemaASRRecognitionMetrics *)self pausedAudioDurationsInNs];
    v41 = [v40 copy];
    [v3 setObject:v41 forKeyedSubscript:@"pausedAudioDurationsInNs"];
  }

  v42 = *p_has;
  if (*p_has)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics personalizedLanguageModelAgeInNs](self, "personalizedLanguageModelAgeInNs")}];
    [v3 setObject:v43 forKeyedSubscript:@"personalizedLanguageModelAgeInNs"];

    v42 = *p_has;
  }

  if ((v42 & 2) != 0)
  {
    v44 = MEMORY[0x1E696AD98];
    [(ASRSchemaASRRecognitionMetrics *)self personalizedLanguageModelWeight];
    v45 = [v44 numberWithFloat:?];
    [v3 setObject:v45 forKeyedSubscript:@"personalizedLanguageModelWeight"];
  }

  if (self->_phoneticMatchDecoderName)
  {
    v46 = [(ASRSchemaASRRecognitionMetrics *)self phoneticMatchDecoderName];
    v47 = [v46 copy];
    [v3 setObject:v47 forKeyedSubscript:@"phoneticMatchDecoderName"];
  }

  if ((*p_has & 0x10) != 0)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics recognitionDurationInNs](self, "recognitionDurationInNs")}];
    [v3 setObject:v48 forKeyedSubscript:@"recognitionDurationInNs"];
  }

  if ((*(p_has + 2) & 0x20) != 0)
  {
    v49 = [(ASRSchemaASRRecognitionMetrics *)self recognitionHardware];
    v50 = @"ASRSPEECHRECOGNITIONHARDWARE_UNKNOWN";
    if (v49 == 1)
    {
      v50 = @"ASRSPEECHRECOGNITIONHARDWARE_CPU";
    }

    if (v49 == 2)
    {
      v51 = @"ASRSPEECHRECOGNITIONHARDWARE_APPLE_NEURAL_ENGINE";
    }

    else
    {
      v51 = v50;
    }

    [v3 setObject:v51 forKeyedSubscript:@"recognitionHardware"];
  }

  if (self->_recognizerComponents)
  {
    v52 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"recognizerComponents"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"recognizerComponents"];
    }
  }

  if (self->_rescoringDeliberationResult)
  {
    v55 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"rescoringDeliberationResult"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"rescoringDeliberationResult"];
    }
  }

  if (*(p_has + 2))
  {
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ASRSchemaASRRecognitionMetrics secondaryPassDurationInNs](self, "secondaryPassDurationInNs")}];
    [v3 setObject:v58 forKeyedSubscript:@"secondaryPassDurationInNs"];
  }

  v59 = *p_has;
  if ((*p_has & 8) == 0)
  {
    if ((*p_has & 0x100) == 0)
    {
      goto LABEL_83;
    }

LABEL_87:
    v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRRecognitionMetrics utteranceConcatenationEnabled](self, "utteranceConcatenationEnabled")}];
    [v3 setObject:v65 forKeyedSubscript:@"utteranceConcatenationEnabled"];

    if ((*p_has & 0x80) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v63 = MEMORY[0x1E696AD98];
  [(ASRSchemaASRRecognitionMetrics *)self signalToNoiseRatioInDecibels];
  v64 = [v63 numberWithFloat:?];
  [v3 setObject:v64 forKeyedSubscript:@"signalToNoiseRatioInDecibels"];

  v59 = *p_has;
  if ((*p_has & 0x100) != 0)
  {
    goto LABEL_87;
  }

LABEL_83:
  if ((v59 & 0x80) != 0)
  {
LABEL_84:
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRRecognitionMetrics utteranceDetectionEnabled](self, "utteranceDetectionEnabled")}];
    [v3 setObject:v60 forKeyedSubscript:@"utteranceDetectionEnabled"];
  }

LABEL_85:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v61 = v3;

  return v3;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if ((has & 1) == 0)
  {
    v60 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v60 = 2654435761u * self->_personalizedLanguageModelAgeInNs;
  if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  personalizedLanguageModelWeight = self->_personalizedLanguageModelWeight;
  if (personalizedLanguageModelWeight >= 0.0)
  {
    v8 = personalizedLanguageModelWeight;
  }

  else
  {
    v8 = -personalizedLanguageModelWeight;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v3, v2).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_10:
  v59 = v11;
  v58 = [(ASRSchemaASRRecognizerComponents *)self->_recognizerComponents hash];
  if ((*p_has & 4) != 0)
  {
    averageActiveTokensPerFrame = self->_averageActiveTokensPerFrame;
    if (averageActiveTokensPerFrame >= 0.0)
    {
      v16 = averageActiveTokensPerFrame;
    }

    else
    {
      v16 = -averageActiveTokensPerFrame;
    }

    *v12.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v13, v12).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v14 += v17;
      }
    }

    else
    {
      v14 -= fabs(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  v57 = v14;
  v56 = [(NSArray *)self->_languageModelInterpolationWeights hash];
  v21 = *p_has;
  if ((*p_has & 8) != 0)
  {
    signalToNoiseRatioInDecibels = self->_signalToNoiseRatioInDecibels;
    if (signalToNoiseRatioInDecibels >= 0.0)
    {
      v24 = signalToNoiseRatioInDecibels;
    }

    else
    {
      v24 = -signalToNoiseRatioInDecibels;
    }

    *v19.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v19 = vbslq_s8(vnegq_f64(v26), v20, v19);
    v22 = 2654435761u * *v19.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v22 += v25;
      }
    }

    else
    {
      v22 -= fabs(v25);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((v21 & 0x10) != 0)
  {
    v55 = 2654435761u * self->_recognitionDurationInNs;
    if ((v21 & 0x20) != 0)
    {
LABEL_32:
      v54 = 2654435761u * self->_audioDurationInNs;
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v55 = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_32;
    }
  }

  v54 = 0;
  if ((v21 & 0x40) != 0)
  {
LABEL_33:
    v53 = 2654435761 * self->_eagerEnabled;
    if ((v21 & 0x80) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_45:
  v53 = 0;
  if ((v21 & 0x80) != 0)
  {
LABEL_34:
    v52 = 2654435761 * self->_utteranceDetectionEnabled;
    if ((*p_has & 0x100) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_47;
  }

LABEL_46:
  v52 = 0;
  if ((*p_has & 0x100) != 0)
  {
LABEL_35:
    v51 = 2654435761 * self->_utteranceConcatenationEnabled;
    if ((*p_has & 0x200) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

LABEL_47:
  v51 = 0;
  if ((*p_has & 0x200) != 0)
  {
LABEL_36:
    v50 = 2654435761 * self->_continuousListeningEnabled;
    if ((*p_has & 0x400) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_48:
  v50 = 0;
  if ((*p_has & 0x400) != 0)
  {
LABEL_37:
    v27 = 2654435761u * self->_eagerCustomerPerceivedLatencyInNs;
    if ((*p_has & 0x800) != 0)
    {
      goto LABEL_38;
    }

LABEL_50:
    v32 = 0;
    goto LABEL_51;
  }

LABEL_49:
  v27 = 0;
  if ((*p_has & 0x800) == 0)
  {
    goto LABEL_50;
  }

LABEL_38:
  cpuRealTimeFactor = self->_cpuRealTimeFactor;
  if (cpuRealTimeFactor >= 0.0)
  {
    v29 = cpuRealTimeFactor;
  }

  else
  {
    v29 = -cpuRealTimeFactor;
  }

  *v19.i64 = floor(v29 + 0.5);
  v30 = (v29 - *v19.i64) * 1.84467441e19;
  *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
  v31.f64[0] = NAN;
  v31.f64[1] = NAN;
  v32 = 2654435761u * *vbslq_s8(vnegq_f64(v31), v20, v19).i64;
  if (v30 >= 0.0)
  {
    if (v30 > 0.0)
    {
      v32 += v30;
    }
  }

  else
  {
    v32 -= fabs(v30);
  }

LABEL_51:
  if ((*p_has & 0x1000) != 0)
  {
    v33 = 2654435761 * self->_numLanguageModelEnrollmentDataStreams;
  }

  else
  {
    v33 = 0;
  }

  v34 = [(NSString *)self->_phoneticMatchDecoderName hash];
  if ((*p_has & 0x2000) != 0)
  {
    v35 = 2654435761u * self->_inverseTextNormalizationDurationInNs;
  }

  else
  {
    v35 = 0;
  }

  v36 = [(ASRSchemaASREmojiMetrics *)self->_emojiMetrics hash];
  v37 = [(NSArray *)self->_pausedAudioDurationsInNs hash];
  if ((*p_has & 0x4000) != 0)
  {
    v38 = 2654435761u * self->_inverseTextNormalizationDurationForFinalResultInNs;
    if ((*p_has & 0x8000) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v38 = 0;
    if ((*p_has & 0x8000) != 0)
    {
LABEL_59:
      v39 = 2654435761 * self->_numberOfInverseTextNormalizationRuns;
      goto LABEL_62;
    }
  }

  v39 = 0;
LABEL_62:
  if (*(p_has + 2))
  {
    v40 = 2654435761u * self->_secondaryPassDurationInNs;
    if ((*(p_has + 2) & 2) != 0)
    {
LABEL_64:
      v41 = 2654435761 * self->_numberOfSecondaryPassRuns;
      if ((*(p_has + 2) & 4) != 0)
      {
        goto LABEL_65;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v40 = 0;
    if ((*(p_has + 2) & 2) != 0)
    {
      goto LABEL_64;
    }
  }

  v41 = 0;
  if ((*(p_has + 2) & 4) != 0)
  {
LABEL_65:
    v42 = 2654435761u * self->_cpuInstructionsInMillionsPerSecond;
    if ((*(p_has + 2) & 8) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

LABEL_72:
  v42 = 0;
  if ((*(p_has + 2) & 8) != 0)
  {
LABEL_66:
    v43 = 2654435761u * self->_appleNeuralEngineCpuTimeInNs;
    if ((*(p_has + 2) & 0x10) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_74;
  }

LABEL_73:
  v43 = 0;
  if ((*(p_has + 2) & 0x10) != 0)
  {
LABEL_67:
    v44 = 2654435761u * self->_pageInsWaitTimeInNs;
    if ((*(p_has + 2) & 0x20) != 0)
    {
      goto LABEL_68;
    }

LABEL_75:
    v45 = 0;
    if ((*(p_has + 2) & 0x40) != 0)
    {
      goto LABEL_69;
    }

LABEL_76:
    v46 = 0;
    goto LABEL_77;
  }

LABEL_74:
  v44 = 0;
  if ((*(p_has + 2) & 0x20) == 0)
  {
    goto LABEL_75;
  }

LABEL_68:
  v45 = 2654435761 * self->_recognitionHardware;
  if ((*(p_has + 2) & 0x40) == 0)
  {
    goto LABEL_76;
  }

LABEL_69:
  v46 = 2654435761 * self->_numIngestedNeuralContextualBiasingEmbeddings;
LABEL_77:
  v47 = v59 ^ v60 ^ v57 ^ v58 ^ v56 ^ v22 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v27 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39;
  v48 = v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ [(NSArray *)self->_pauseReasons hash];
  return v47 ^ v48 ^ [(ASRSchemaASRRescoringDeliberationResult *)self->_rescoringDeliberationResult hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_123;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = v4 + 104;
  v8 = v4[104];
  if ((*&has & 1) != (v8 & 1))
  {
    goto LABEL_123;
  }

  if (*&has)
  {
    personalizedLanguageModelAgeInNs = self->_personalizedLanguageModelAgeInNs;
    if (personalizedLanguageModelAgeInNs != [v4 personalizedLanguageModelAgeInNs])
    {
      goto LABEL_123;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (*&has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_123;
  }

  if (v10)
  {
    personalizedLanguageModelWeight = self->_personalizedLanguageModelWeight;
    [v4 personalizedLanguageModelWeight];
    if (personalizedLanguageModelWeight != v12)
    {
      goto LABEL_123;
    }
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];
  v14 = [v4 recognizerComponents];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_122;
  }

  v15 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];
  if (v15)
  {
    v16 = v15;
    v17 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];
    v18 = [v4 recognizerComponents];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  v20 = (*p_has >> 2) & 1;
  if (v20 != ((*v7 >> 2) & 1))
  {
    goto LABEL_123;
  }

  if (v20)
  {
    averageActiveTokensPerFrame = self->_averageActiveTokensPerFrame;
    [v4 averageActiveTokensPerFrame];
    if (averageActiveTokensPerFrame != v22)
    {
      goto LABEL_123;
    }
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self languageModelInterpolationWeights];
  v14 = [v4 languageModelInterpolationWeights];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_122;
  }

  v23 = [(ASRSchemaASRRecognitionMetrics *)self languageModelInterpolationWeights];
  if (v23)
  {
    v24 = v23;
    v25 = [(ASRSchemaASRRecognitionMetrics *)self languageModelInterpolationWeights];
    v26 = [v4 languageModelInterpolationWeights];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  v28 = *p_has;
  v29 = (v28 >> 3) & 1;
  v30 = *v7;
  if (v29 != ((v30 >> 3) & 1))
  {
    goto LABEL_123;
  }

  if (v29)
  {
    signalToNoiseRatioInDecibels = self->_signalToNoiseRatioInDecibels;
    [v4 signalToNoiseRatioInDecibels];
    if (signalToNoiseRatioInDecibels != v32)
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v33 = (v28 >> 4) & 1;
  if (v33 != ((v30 >> 4) & 1))
  {
    goto LABEL_123;
  }

  if (v33)
  {
    recognitionDurationInNs = self->_recognitionDurationInNs;
    if (recognitionDurationInNs != [v4 recognitionDurationInNs])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v35 = (v28 >> 5) & 1;
  if (v35 != ((v30 >> 5) & 1))
  {
    goto LABEL_123;
  }

  if (v35)
  {
    audioDurationInNs = self->_audioDurationInNs;
    if (audioDurationInNs != [v4 audioDurationInNs])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v37 = (v28 >> 6) & 1;
  if (v37 != ((v30 >> 6) & 1))
  {
    goto LABEL_123;
  }

  if (v37)
  {
    eagerEnabled = self->_eagerEnabled;
    if (eagerEnabled != [v4 eagerEnabled])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v39 = (v28 >> 7) & 1;
  if (v39 != ((v30 >> 7) & 1))
  {
    goto LABEL_123;
  }

  if (v39)
  {
    utteranceDetectionEnabled = self->_utteranceDetectionEnabled;
    if (utteranceDetectionEnabled != [v4 utteranceDetectionEnabled])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v41 = (v28 >> 8) & 1;
  if (v41 != ((v30 >> 8) & 1))
  {
    goto LABEL_123;
  }

  if (v41)
  {
    utteranceConcatenationEnabled = self->_utteranceConcatenationEnabled;
    if (utteranceConcatenationEnabled != [v4 utteranceConcatenationEnabled])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v43 = (v28 >> 9) & 1;
  if (v43 != ((v30 >> 9) & 1))
  {
    goto LABEL_123;
  }

  if (v43)
  {
    continuousListeningEnabled = self->_continuousListeningEnabled;
    if (continuousListeningEnabled != [v4 continuousListeningEnabled])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v45 = (v28 >> 10) & 1;
  if (v45 != ((v30 >> 10) & 1))
  {
    goto LABEL_123;
  }

  if (v45)
  {
    eagerCustomerPerceivedLatencyInNs = self->_eagerCustomerPerceivedLatencyInNs;
    if (eagerCustomerPerceivedLatencyInNs != [v4 eagerCustomerPerceivedLatencyInNs])
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v47 = (v28 >> 11) & 1;
  if (v47 != ((v30 >> 11) & 1))
  {
    goto LABEL_123;
  }

  if (v47)
  {
    cpuRealTimeFactor = self->_cpuRealTimeFactor;
    [v4 cpuRealTimeFactor];
    if (cpuRealTimeFactor != v49)
    {
      goto LABEL_123;
    }

    v28 = *p_has;
    v30 = *v7;
  }

  v50 = (v28 >> 12) & 1;
  if (v50 != ((v30 >> 12) & 1))
  {
    goto LABEL_123;
  }

  if (v50)
  {
    numLanguageModelEnrollmentDataStreams = self->_numLanguageModelEnrollmentDataStreams;
    if (numLanguageModelEnrollmentDataStreams != [v4 numLanguageModelEnrollmentDataStreams])
    {
      goto LABEL_123;
    }
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self phoneticMatchDecoderName];
  v14 = [v4 phoneticMatchDecoderName];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_122;
  }

  v52 = [(ASRSchemaASRRecognitionMetrics *)self phoneticMatchDecoderName];
  if (v52)
  {
    v53 = v52;
    v54 = [(ASRSchemaASRRecognitionMetrics *)self phoneticMatchDecoderName];
    v55 = [v4 phoneticMatchDecoderName];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  v57 = (*p_has >> 13) & 1;
  if (v57 != ((*v7 >> 13) & 1))
  {
    goto LABEL_123;
  }

  if (v57)
  {
    inverseTextNormalizationDurationInNs = self->_inverseTextNormalizationDurationInNs;
    if (inverseTextNormalizationDurationInNs != [v4 inverseTextNormalizationDurationInNs])
    {
      goto LABEL_123;
    }
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];
  v14 = [v4 emojiMetrics];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_122;
  }

  v59 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];
  if (v59)
  {
    v60 = v59;
    v61 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];
    v62 = [v4 emojiMetrics];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self pausedAudioDurationsInNs];
  v14 = [v4 pausedAudioDurationsInNs];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_122;
  }

  v64 = [(ASRSchemaASRRecognitionMetrics *)self pausedAudioDurationsInNs];
  if (v64)
  {
    v65 = v64;
    v66 = [(ASRSchemaASRRecognitionMetrics *)self pausedAudioDurationsInNs];
    v67 = [v4 pausedAudioDurationsInNs];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  v69 = *p_has;
  v70 = (v69 >> 14) & 1;
  v71 = *v7;
  if (v70 != ((v71 >> 14) & 1))
  {
    goto LABEL_123;
  }

  if (v70)
  {
    inverseTextNormalizationDurationForFinalResultInNs = self->_inverseTextNormalizationDurationForFinalResultInNs;
    if (inverseTextNormalizationDurationForFinalResultInNs != [v4 inverseTextNormalizationDurationForFinalResultInNs])
    {
      goto LABEL_123;
    }

    v69 = *p_has;
    v71 = *v7;
  }

  if (((v71 ^ v69) & 0x8000) != 0)
  {
    goto LABEL_123;
  }

  if ((v69 & 0x8000) != 0)
  {
    numberOfInverseTextNormalizationRuns = self->_numberOfInverseTextNormalizationRuns;
    if (numberOfInverseTextNormalizationRuns != [v4 numberOfInverseTextNormalizationRuns])
    {
      goto LABEL_123;
    }
  }

  v74 = *(&self->_has + 2);
  v75 = *(v4 + 210);
  if ((v74 & 1) != (v75 & 1))
  {
    goto LABEL_123;
  }

  if (v74)
  {
    secondaryPassDurationInNs = self->_secondaryPassDurationInNs;
    if (secondaryPassDurationInNs != [v4 secondaryPassDurationInNs])
    {
      goto LABEL_123;
    }

    v74 = *(&self->_has + 2);
    v75 = *(v4 + 210);
  }

  v77 = (v74 >> 1) & 1;
  if (v77 != ((v75 >> 1) & 1))
  {
    goto LABEL_123;
  }

  if (v77)
  {
    numberOfSecondaryPassRuns = self->_numberOfSecondaryPassRuns;
    if (numberOfSecondaryPassRuns != [v4 numberOfSecondaryPassRuns])
    {
      goto LABEL_123;
    }

    v74 = *(&self->_has + 2);
    v75 = *(v4 + 210);
  }

  v79 = (v74 >> 2) & 1;
  if (v79 != ((v75 >> 2) & 1))
  {
    goto LABEL_123;
  }

  if (v79)
  {
    cpuInstructionsInMillionsPerSecond = self->_cpuInstructionsInMillionsPerSecond;
    if (cpuInstructionsInMillionsPerSecond != [v4 cpuInstructionsInMillionsPerSecond])
    {
      goto LABEL_123;
    }

    v74 = *(&self->_has + 2);
    v75 = *(v4 + 210);
  }

  v81 = (v74 >> 3) & 1;
  if (v81 != ((v75 >> 3) & 1))
  {
    goto LABEL_123;
  }

  if (v81)
  {
    appleNeuralEngineCpuTimeInNs = self->_appleNeuralEngineCpuTimeInNs;
    if (appleNeuralEngineCpuTimeInNs != [v4 appleNeuralEngineCpuTimeInNs])
    {
      goto LABEL_123;
    }

    v74 = *(&self->_has + 2);
    v75 = *(v4 + 210);
  }

  v83 = (v74 >> 4) & 1;
  if (v83 != ((v75 >> 4) & 1))
  {
    goto LABEL_123;
  }

  if (v83)
  {
    pageInsWaitTimeInNs = self->_pageInsWaitTimeInNs;
    if (pageInsWaitTimeInNs != [v4 pageInsWaitTimeInNs])
    {
      goto LABEL_123;
    }

    v74 = *(&self->_has + 2);
    v75 = *(v4 + 210);
  }

  v85 = (v74 >> 5) & 1;
  if (v85 != ((v75 >> 5) & 1))
  {
    goto LABEL_123;
  }

  if (v85)
  {
    recognitionHardware = self->_recognitionHardware;
    if (recognitionHardware != [v4 recognitionHardware])
    {
      goto LABEL_123;
    }

    v74 = *(&self->_has + 2);
    v75 = *(v4 + 210);
  }

  v87 = (v74 >> 6) & 1;
  if (v87 != ((v75 >> 6) & 1))
  {
    goto LABEL_123;
  }

  if (v87)
  {
    numIngestedNeuralContextualBiasingEmbeddings = self->_numIngestedNeuralContextualBiasingEmbeddings;
    if (numIngestedNeuralContextualBiasingEmbeddings != [v4 numIngestedNeuralContextualBiasingEmbeddings])
    {
      goto LABEL_123;
    }
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self pauseReasons];
  v14 = [v4 pauseReasons];
  if ((v13 != 0) == (v14 == 0))
  {
    goto LABEL_122;
  }

  v89 = [(ASRSchemaASRRecognitionMetrics *)self pauseReasons];
  if (v89)
  {
    v90 = v89;
    v91 = [(ASRSchemaASRRecognitionMetrics *)self pauseReasons];
    v92 = [v4 pauseReasons];
    v93 = [v91 isEqual:v92];

    if (!v93)
    {
      goto LABEL_123;
    }
  }

  else
  {
  }

  v13 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];
  v14 = [v4 rescoringDeliberationResult];
  if ((v13 != 0) == (v14 == 0))
  {
LABEL_122:

    goto LABEL_123;
  }

  v94 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];
  if (!v94)
  {

LABEL_126:
    v99 = 1;
    goto LABEL_124;
  }

  v95 = v94;
  v96 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];
  v97 = [v4 rescoringDeliberationResult];
  v98 = [v96 isEqual:v97];

  if (v98)
  {
    goto LABEL_126;
  }

LABEL_123:
  v99 = 0;
LABEL_124:

  return v99;
}

- (void)writeTo:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = *p_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v7 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];

  if (v7)
  {
    v8 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];
    PBDataWriterWriteSubmessage();
  }

  if ((*p_has & 4) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = self->_languageModelInterpolationWeights;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v11);
  }

  v14 = *p_has;
  if ((*p_has & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v14 = *p_has;
    if ((*p_has & 0x10) == 0)
    {
LABEL_18:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_64;
    }
  }

  else if ((v14 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_19:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_20:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_21:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_22:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_23:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteBOOLField();
  v14 = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_24:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteUint64Field();
  v14 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_25:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_70:
  PBDataWriterWriteFloatField();
  if ((*p_has & 0x1000) != 0)
  {
LABEL_26:
    PBDataWriterWriteUint32Field();
  }

LABEL_27:
  v15 = [(ASRSchemaASRRecognitionMetrics *)self phoneticMatchDecoderName];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ((*p_has & 0x2000) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v16 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];

  if (v16)
  {
    v17 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = self->_pausedAudioDurationsInNs;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v36 + 1) + 8 * j) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v20);
  }

  v23 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    PBDataWriterWriteUint64Field();
    v23 = *p_has;
  }

  if (v23 < 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v24 = *(&self->_has + 2);
  if (v24)
  {
    PBDataWriterWriteUint64Field();
    v24 = *(&self->_has + 2);
    if ((v24 & 2) == 0)
    {
LABEL_46:
      if ((v24 & 4) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_74;
    }
  }

  else if ((*(&self->_has + 2) & 2) == 0)
  {
    goto LABEL_46;
  }

  PBDataWriterWriteUint32Field();
  v24 = *(&self->_has + 2);
  if ((v24 & 4) == 0)
  {
LABEL_47:
    if ((v24 & 8) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteUint64Field();
  v24 = *(&self->_has + 2);
  if ((v24 & 8) == 0)
  {
LABEL_48:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteUint64Field();
  v24 = *(&self->_has + 2);
  if ((v24 & 0x10) == 0)
  {
LABEL_49:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteUint64Field();
  v24 = *(&self->_has + 2);
  if ((v24 & 0x20) == 0)
  {
LABEL_50:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_77:
  PBDataWriterWriteInt32Field();
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
LABEL_51:
    PBDataWriterWriteUint32Field();
  }

LABEL_52:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_pauseReasons;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v32 + 1) + 8 * k) intValue];
        PBDataWriterWriteInt32Field();
      }

      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v27);
  }

  v30 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];

  if (v30)
  {
    v31 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];
    PBDataWriterWriteSubmessage();
  }
}

- (int)pauseReasonAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_pauseReasons objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addPauseReason:(int)a3
{
  v3 = *&a3;
  pauseReasons = self->_pauseReasons;
  if (!pauseReasons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pauseReasons;
    self->_pauseReasons = v6;

    pauseReasons = self->_pauseReasons;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)pauseReasons addObject:v8];
}

- (void)setHasNumIngestedNeuralContextualBiasingEmbeddings:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xBF | v3;
}

- (void)setHasRecognitionHardware:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDF | v3;
}

- (void)setHasPageInsWaitTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEF | v3;
}

- (void)setHasAppleNeuralEngineCpuTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7 | v3;
}

- (void)setHasCpuInstructionsInMillionsPerSecond:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFB | v3;
}

- (void)setHasNumberOfSecondaryPassRuns:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFD | v3;
}

- (void)setHasNumberOfInverseTextNormalizationRuns:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasInverseTextNormalizationDurationForFinalResultInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (unint64_t)pausedAudioDurationsInNsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_pausedAudioDurationsInNs objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)addPausedAudioDurationsInNs:(unint64_t)a3
{
  pausedAudioDurationsInNs = self->_pausedAudioDurationsInNs;
  if (!pausedAudioDurationsInNs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pausedAudioDurationsInNs;
    self->_pausedAudioDurationsInNs = v6;

    pausedAudioDurationsInNs = self->_pausedAudioDurationsInNs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSArray *)pausedAudioDurationsInNs addObject:v8];
}

- (void)setHasInverseTextNormalizationDurationInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasNumLanguageModelEnrollmentDataStreams:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCpuRealTimeFactor:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasEagerCustomerPerceivedLatencyInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasContinuousListeningEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasUtteranceConcatenationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasUtteranceDetectionEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEagerEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAudioDurationInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRecognitionDurationInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSignalToNoiseRatioInDecibels:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)addLanguageModelInterpolationWeights:(id)a3
{
  v4 = a3;
  languageModelInterpolationWeights = self->_languageModelInterpolationWeights;
  v8 = v4;
  if (!languageModelInterpolationWeights)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_languageModelInterpolationWeights;
    self->_languageModelInterpolationWeights = v6;

    v4 = v8;
    languageModelInterpolationWeights = self->_languageModelInterpolationWeights;
  }

  [(NSArray *)languageModelInterpolationWeights addObject:v4];
}

- (void)setHasAverageActiveTokensPerFrame:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPersonalizedLanguageModelWeight:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ASRSchemaASRRecognitionMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRRecognitionMetrics *)self recognizerComponents];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRRecognitionMetrics *)self deleteRecognizerComponents];
  }

  v9 = [(ASRSchemaASRRecognitionMetrics *)self languageModelInterpolationWeights];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(ASRSchemaASRRecognitionMetrics *)self setLanguageModelInterpolationWeights:v10];

  v11 = [(ASRSchemaASRRecognitionMetrics *)self emojiMetrics];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(ASRSchemaASRRecognitionMetrics *)self deleteEmojiMetrics];
  }

  v14 = [(ASRSchemaASRRecognitionMetrics *)self rescoringDeliberationResult];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
  {
    [(ASRSchemaASRRecognitionMetrics *)self deleteRescoringDeliberationResult];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end