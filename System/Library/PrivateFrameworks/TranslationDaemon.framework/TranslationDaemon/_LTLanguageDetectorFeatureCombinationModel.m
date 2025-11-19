@interface _LTLanguageDetectorFeatureCombinationModel
- (_LTLanguageDetectorFeatureCombinationModel)initWithConfig:(id)a3;
- (id)estimateLanguage:(id)a3 languageDetectionResults:(id)a4 partialSpeechResultConfidences:(id)a5 finalSpeechResults:(id)a6 modelVersions:(id)a7 isLowConfidencePair:(BOOL)a8;
- (id)estimateLanguage:(id)a3 languageDetectionResults:(id)a4 partialSpeechResultConfidences:(id)a5 finalSpeechResults:(id)a6 modelVersions:(id)a7 useFinalThresholds:(BOOL)a8 isLowConfidencePair:(BOOL)a9;
- (id)getAcousticLidConfidenceFromResult:(id)a3 locale:(id)a4;
- (id)getModelFeatures:(id)a3 canonicalPair:(id)a4 partialSpeechResultConfidences:(id)a5 finalSpeechResults:(id)a6 modelVersion:(id)a7;
@end

@implementation _LTLanguageDetectorFeatureCombinationModel

- (_LTLanguageDetectorFeatureCombinationModel)initWithConfig:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = _LTLanguageDetectorFeatureCombinationModel;
  v5 = [(_LTLanguageDetectorFeatureCombinationModel *)&v51 init];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v4];
    v9 = [v8 objectForKey:@"features"];
    v10 = [v8 objectForKey:@"compiledModelFile"];
    v11 = [v8 objectForKey:@"modelInput"];
    modelInput = v6->_modelInput;
    v6->_modelInput = v11;

    v13 = [v8 objectForKey:@"modelInputIsMatrix"];
    v14 = v13 == 0;

    if (v14)
    {
      v16 = _LTOSLogLID();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [_LTLanguageDetectorFeatureCombinationModel initWithConfig:];
      }

      v6->_modelInputIsMatrix = 0;
    }

    else
    {
      v15 = [v8 valueForKey:@"modelInputIsMatrix"];
      v6->_modelInputIsMatrix = [v15 BOOLValue];
    }

    v17 = [v8 objectForKey:@"modelOutput"];
    modelOutput = v6->_modelOutput;
    v6->_modelOutput = v17;

    v19 = [v8 objectForKey:@"LanguageLocaleToIdentifier"];
    languageLocaleToIdentifier = v6->_languageLocaleToIdentifier;
    v6->_languageLocaleToIdentifier = v19;

    if (v9 && v10 && v6->_modelInput && v6->_modelOutput)
    {
      v21 = [v8 objectForKey:@"missingFeatureValueDefault"];
      missingFeatureValueDefault = v6->_missingFeatureValueDefault;
      v6->_missingFeatureValueDefault = v21;

      if (!v6->_missingFeatureValueDefault)
      {
        v6->_missingFeatureValueDefault = &unk_2848680C8;

        v23 = _LTOSLogLID();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(_LTLanguageDetectorFeatureCombinationModel *)&v6->_missingFeatureValueDefault initWithConfig:v23];
        }
      }

      v24 = [v8 objectForKey:@"missingLanguageDetectionDefault"];
      missingLanguageDetectorDefault = v6->_missingLanguageDetectorDefault;
      v6->_missingLanguageDetectorDefault = v24;

      if (!v6->_missingLanguageDetectorDefault)
      {
        v6->_missingLanguageDetectorDefault = &unk_284868268;

        v26 = _LTOSLogLID();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(_LTLanguageDetectorFeatureCombinationModel *)&v6->_missingLanguageDetectorDefault initWithConfig:v26];
        }
      }

      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      features = v6->_features;
      v6->_features = v27;

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __61___LTLanguageDetectorFeatureCombinationModel_initWithConfig___block_invoke;
      v44[3] = &unk_2789B6CA0;
      v29 = v6;
      v45 = v29;
      v46 = &v47;
      [v9 enumerateObjectsUsingBlock:v44];
      if (v48[3])
      {
        v7 = 0;
      }

      else
      {
        v33 = [v4 URLByDeletingLastPathComponent];
        v34 = [v33 URLByAppendingPathComponent:v10];

        v43 = 0;
        v35 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v34 error:&v43];
        v36 = v43;
        v37 = v29[1];
        v29[1] = v35;

        if (v36 || !v29[1])
        {
          v38 = _LTOSLogLID();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v34 path];
            [(_LTLanguageDetectorFeatureCombinationModel *)v39 initWithConfig:buf, v38];
          }

          v7 = 0;
        }

        else
        {
          v40 = _LTOSLogLID();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = [v29[1] modelDescription];
            v42 = [v41 description];
            [(_LTLanguageDetectorFeatureCombinationModel *)v42 initWithConfig:buf, v40, v41];
          }

          v7 = v29;
        }
      }

      _Block_object_dispose(&v47, 8);
    }

    else
    {
      v30 = _LTOSLogLID();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [_LTLanguageDetectorFeatureCombinationModel initWithConfig:];
      }

      v7 = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)getAcousticLidConfidenceFromResult:(id)a3 locale:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = [a3 confidences];
    v8 = [v7 objectForKey:v6];

    missingLanguageDetectorDefault = v8;
    if (!v8)
    {
      missingLanguageDetectorDefault = self->_missingLanguageDetectorDefault;
    }

    v10 = missingLanguageDetectorDefault;
  }

  else
  {
    v10 = self->_missingLanguageDetectorDefault;
  }

  return v10;
}

- (id)getModelFeatures:(id)a3 canonicalPair:(id)a4 partialSpeechResultConfidences:(id)a5 finalSpeechResults:(id)a6 modelVersion:(id)a7
{
  v63[2] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v12 = a4;
  v44 = a5;
  v43 = a6;
  v41 = a7;
  LODWORD(a7) = self->_modelInputIsMatrix;
  v13 = objc_alloc(MEMORY[0x277CBFF48]);
  if (a7 == 1)
  {
    v63[0] = &unk_2848680E0;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_features, "count", v39, v41)}];
    v63[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
    v60 = 0;
    v16 = [v13 initWithShape:v15 dataType:65600 error:&v60];
    v17 = &v60;
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_features, "count", v39, v41)}];
    v62 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v59 = 0;
    v16 = [v13 initWithShape:v15 dataType:65600 error:&v59];
    v17 = &v59;
  }

  v18 = *v17;

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = [v12 sourceLocale];
    v21 = [v44 objectForKeyedSubscript:v20];

    v22 = [v12 targetLocale];
    v23 = [v44 objectForKeyedSubscript:v22];

    v24 = [v12 sourceLocale];
    v25 = [v43 objectForKeyedSubscript:v24];

    v26 = [v12 targetLocale];
    v27 = [v43 objectForKeyedSubscript:v26];

    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    features = self->_features;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __140___LTLanguageDetectorFeatureCombinationModel_getModelFeatures_canonicalPair_partialSpeechResultConfidences_finalSpeechResults_modelVersion___block_invoke;
    v45[3] = &unk_2789B6CC8;
    v45[4] = self;
    v29 = v25;
    v46 = v29;
    v30 = v16;
    v47 = v30;
    v54 = &v55;
    v31 = v27;
    v48 = v31;
    v49 = v40;
    v50 = v12;
    v32 = v21;
    v51 = v32;
    v33 = v23;
    v52 = v33;
    v53 = v42;
    [(NSMutableArray *)features enumerateObjectsUsingBlock:v45];
    if (v56[3])
    {
      v34 = _LTOSLogLID();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v30 description];
        [_LTLanguageDetectorFeatureCombinationModel getModelFeatures:v35 canonicalPair:v61 partialSpeechResultConfidences:v34 finalSpeechResults:? modelVersion:?];
      }

      v19 = v30;
    }

    else
    {
      v36 = _LTOSLogLID();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [_LTLanguageDetectorFeatureCombinationModel getModelFeatures:canonicalPair:partialSpeechResultConfidences:finalSpeechResults:modelVersion:];
      }

      v19 = 0;
    }

    _Block_object_dispose(&v55, 8);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)estimateLanguage:(id)a3 languageDetectionResults:(id)a4 partialSpeechResultConfidences:(id)a5 finalSpeechResults:(id)a6 modelVersions:(id)a7 useFinalThresholds:(BOOL)a8 isLowConfidencePair:(BOOL)a9
{
  v91 = a8;
  v122[1] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [a3 localePair];
  v19 = [v18 canonicalLocalePair];

  v20 = [v19 sourceLocale];
  v21 = [v17 objectForKeyedSubscript:v20];
  if (v21)
  {
    [v19 sourceLocale];
  }

  else
  {
    [v19 targetLocale];
  }
  v22 = ;
  v23 = [v17 objectForKeyedSubscript:v22];

  v24 = [v19 sourceLocale];
  v97 = _LTPreferencesLanguageDetectorFeatureCombinationThresholdVersionForASRDataPack(v24, v23);

  v25 = [v19 sourceLocale];
  v26 = [v16 objectForKeyedSubscript:v25];

  v27 = [v19 targetLocale];
  v28 = [v16 objectForKeyedSubscript:v27];

  if (v26 && ([v26 isFinal] & 1) != 0)
  {
    v89 = 1;
  }

  else if (v28)
  {
    v89 = [v28 isFinal];
  }

  else
  {
    v89 = 0;
  }

  v29 = [(_LTLanguageDetectorFeatureCombinationModel *)self getModelFeatures:v14 canonicalPair:v19 partialSpeechResultConfidences:v15 finalSpeechResults:v16 modelVersion:v23];
  if (v29)
  {
    v92 = v26;
    v30 = v17;
    v31 = v28;
    v95 = v14;
    v96 = v15;
    v32 = objc_alloc(MEMORY[0x277CBFED0]);
    modelInput = self->_modelInput;
    v122[0] = v29;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:&modelInput count:1];
    v98 = 0;
    v34 = [v32 initWithDictionary:v33 error:&v98];
    v35 = v98;

    v93 = v35;
    v94 = v34;
    if (v35)
    {
      v36 = _LTOSLogLID();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
      }

      v37 = 0;
      v14 = v95;
      v15 = v96;
      v28 = v31;
      v17 = v30;
      v26 = v92;
    }

    else
    {
      v88 = objc_alloc_init(MEMORY[0x277CBFF68]);
      v39 = [MLModel predictionFromFeatures:"predictionFromFeatures:options:error:" options:v34 error:?];
      v86 = v39;
      v87 = 0;
      if (v87)
      {
        v40 = _LTOSLogLID();
        v14 = v95;
        v15 = v96;
        v28 = v31;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
        }

        v37 = 0;
        v17 = v30;
        v26 = v92;
      }

      else
      {
        v41 = [v39 featureValueForName:self->_modelOutput];
        v15 = v96;
        v28 = v31;
        v85 = v41;
        if (!v41)
        {
          goto LABEL_33;
        }

        v42 = v41;
        v43 = [v41 multiArrayValue];
        if (!v43)
        {
          goto LABEL_33;
        }

        v44 = v43;
        v45 = [v42 multiArrayValue];
        v46 = [v45 count];

        v47 = v46 == 2;
        v15 = v96;
        if (v47)
        {
          v48 = [v42 multiArrayValue];
          v49 = [v48 objectAtIndexedSubscript:0];

          v50 = [v42 multiArrayValue];
          v84 = [v50 objectAtIndexedSubscript:1];

          v17 = v30;
          v83 = v49;
          if (v49 && v84 && ([v49 doubleValue], v51 != INFINITY))
          {
            [v49 doubleValue];
            v56 = _LTPreferencesLanguageDetectorFeatureCombinationModelThresholdsForLocale(v19, v97, v91);
            v57 = [v19 sourceLocale];
            [v49 doubleValue];
            v58 = v56;
            v26 = v92;
            if (v59 < v56)
            {
              v60 = [v19 targetLocale];

              v57 = v60;
            }

            v61 = objc_alloc(MEMORY[0x277CE1B38]);
            v62 = [v19 oppositeToLocale:v57];
            v63 = v57;
            v64 = v62;
            v82 = v63;
            v65 = [v61 initWithSourceLocale:? targetLocale:?];

            v81 = v65;
            v66 = _LTPreferencesLanguageDetectorFeatureCombinationModelConfidenceThresholdsForLocale(v65, v97, v91);
            v67 = v66;
            if (a9)
            {
              v80 = 0;
            }

            else
            {
              v68 = v66;
              [v49 doubleValue];
              v80 = vabdd_f64(v58, v69) >= v68;
            }

            v70 = [v19 sourceLocale];
            v119[0] = v70;
            v120[0] = v49;
            v71 = [v19 targetLocale];
            v119[1] = v71;
            v120[1] = v84;
            v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];

            v72 = _LTOSLogLID();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              log = v72;
              v73 = [v82 _ltLocaleIdentifier];
              v79 = [v90 objectForKeyedSubscript:v82];
              [v79 doubleValue];
              v75 = v74;
              v77 = [v19 sourceLocale];
              *buf = 138545666;
              v76 = @"1.0-";
              v100 = v97;
              v101 = 2114;
              if (v82 == v77)
              {
                v76 = &stru_284834138;
              }

              v102 = v23;
              v103 = 1024;
              v104 = v91;
              v105 = 1024;
              v106 = v89;
              v107 = 2114;
              v108 = v73;
              v109 = 2048;
              v110 = v75;
              v111 = 2114;
              v112 = v76;
              v113 = 2048;
              v114 = v58;
              v115 = 2048;
              v116 = v67;
              v117 = 1024;
              v118 = v80;
              _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Queried LID threshold version '%{public}@' for model version '%{public}@'; useFinalThresholds: %{BOOL}i; isFinalASR: %{BOOL}i; detected %{public}@, with score %f using discriminator threshold %{public}@%f and confidence offset %f (confident: %{BOOL}i)", buf, 0x5Au);
            }

            v37 = [objc_alloc(MEMORY[0x277CE1B08]) initWithConfidences:v90 isConfident:v80 dominantLanguage:v82 isFinal:1];

            v14 = v95;
            v15 = v96;
          }

          else
          {
            v52 = _LTOSLogLID();
            v14 = v95;
            v26 = v92;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
            }

            v37 = 0;
          }
        }

        else
        {
LABEL_33:
          v53 = _LTOSLogLID();
          v17 = v30;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
          }

          v37 = 0;
          v14 = v95;
          v26 = v92;
        }
      }
    }
  }

  else
  {
    v38 = _LTOSLogLID();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [_LTLanguageDetectorFeatureCombinationModel estimateLanguage:languageDetectionResults:partialSpeechResultConfidences:finalSpeechResults:modelVersions:useFinalThresholds:isLowConfidencePair:];
    }

    v37 = 0;
  }

  v54 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)estimateLanguage:(id)a3 languageDetectionResults:(id)a4 partialSpeechResultConfidences:(id)a5 finalSpeechResults:(id)a6 modelVersions:(id)a7 isLowConfidencePair:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v13 localePair];
  v19 = [v18 canonicalLocalePair];

  v20 = [v19 sourceLocale];
  v21 = [v16 objectForKeyedSubscript:v20];

  v22 = [v19 targetLocale];
  v23 = [v16 objectForKeyedSubscript:v22];

  if (v21 && ([v21 isFinal] & 1) != 0)
  {
    v24 = 1;
  }

  else if (v23)
  {
    v24 = [v23 isFinal];
  }

  else
  {
    v24 = 0;
  }

  LOBYTE(v27) = a8;
  v25 = [(_LTLanguageDetectorFeatureCombinationModel *)self estimateLanguage:v13 languageDetectionResults:v14 partialSpeechResultConfidences:v15 finalSpeechResults:v16 modelVersions:v17 useFinalThresholds:v24 isLowConfidencePair:v27];

  return v25;
}

- (void)initWithConfig:(uint64_t *)a1 .cold.2(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_9(a1, a2);
  [v2 floatValue];
  OUTLINED_FUNCTION_1_6(v5);
  OUTLINED_FUNCTION_6(&dword_232E53000, v4, v6, "Setting default value for missing feature value to %f", v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(uint64_t *)a1 .cold.3(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_9(a1, a2);
  [v2 floatValue];
  OUTLINED_FUNCTION_1_6(v5);
  OUTLINED_FUNCTION_6(&dword_232E53000, v4, v6, "Setting default value for missing language detector result to %f", v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(NSObject *)a3 .cold.4(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_6(&dword_232E53000, a3, a3, "CoreML model loaded: %@", a2);
}

- (void)initWithConfig:(os_log_t)log .cold.5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Unable to load CoreML model from path: %@", buf, 0xCu);
}

- (void)getModelFeatures:(NSObject *)a3 canonicalPair:partialSpeechResultConfidences:finalSpeechResults:modelVersion:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_6(&dword_232E53000, a3, a3, "Created CoreML features: %@", a2);
}

@end